//> using jar /localhome/chassot/stainless/frontends/library/target/scala-2.13/classes
//> using sourceJar /localhome/chassot/stainless/frontends/dotty/target/scala-3.2.0/classes

/** Author: Samuel Chassot
  */
package ch.epfl.chassot

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.{ghost => ghostExpr, *}
import stainless.proof.check
import scala.annotation.tailrec
import stainless.lang.Cell

// import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below
import OptimisedChecks.* // Import to remove `ensuring` and `require` from the code for the benchmarks

object MutableLongMapOpti {
  import LongMapFixedSizeOpti.validMask

  /** Helper method to create a new empty LongMap
    *
    * @param defaultEntry
    * @return
    */
  def getEmptyLongMap[V](defaultEntry: Long => V): LongMapOpti[V] = {
    val m = 15
    LongMapOpti(Cell(LongMapFixedSizeOpti.getNewLongMapFixedSize(m, defaultEntry)))
  }

  /** Helper method to create a new empty LongMap with a given initial array size WARNING: UNSOUND!!! The given size must be a power of 2 <= 2^30
    *
    * @param defaultEntry
    * @return
    */
  def getEmptyLongMap[V](defaultEntry: Long => V, initialSize: Int): LongMapOpti[V] = {
    val m = initialSize - 1
    LongMapOpti(Cell(LongMapFixedSizeOpti.getNewLongMapFixedSize(m, defaultEntry)))
  }

  @mutable
  final case class LongMapOpti[V](
      val underlying: Cell[LongMapFixedSizeOpti[V]]
  ) {

    @pure
    def imbalanced(): Boolean = (2 * (underlying.v._size + underlying.v._vacant)) > underlying.v.mask || underlying.v._vacant > underlying.v._size

    @pure
    def size: Int = underlying.v.size

    @pure
    def isEmpty: Boolean = {
      underlying.v.isEmpty
    }
    
    @pure
    def contains(key: Long): Boolean = {
      underlying.v.contains(key)
    }

    @pure
    def apply(key: Long): V = {
      underlying.v.apply(key)
    } 

    def update(key: Long, v: V): Boolean = {
      val repacked = if (imbalanced()) {
        repack()
      } else {
        true
      }
      if (repacked) {
        underlying.v.update(key, v)
      } else {
        false
      }
    } 

    def remove(key: Long): Boolean = {
      underlying.v.remove(key)
    } 

    @pure
    def computeNewMask(oldMask: Int, s: Int): Int = {

      val newMask = if (s > (MAX_MASK >> 3)) {
        ((oldMask << 1) + 1) & MAX_MASK
      } else {

        var m = oldMask
        if (2 * s >= oldMask) m = ((m << 1) + 1) & MAX_MASK
        while (m > 8 && 8 * s < m) {
          decreases(m)
          m = m >>> 1
        }

        m
      }
      newMask
    } 

    @pure
    def completeComputeNewMask(oldMask: Int, _vacant: Int, _size: Int): Int = {
      if (_size > (MAX_MASK >> 3)) {
        ((oldMask << 1) + 1) & MAX_MASK
      } else {
      var m = oldMask
      if (2 * (_size + _vacant) >= oldMask && !(5 * _vacant > oldMask)) {
        m = ((m << 1) + 1) & MAX_MASK
      }
      while (m > 8 && 8 * _size < m) {
        decreases(m)
        m = m >>> 1
      }
      m
    }
    } 

    def repack(): Boolean = {

      val newMask: Int = completeComputeNewMask(underlying.v.mask, underlying.v._vacant, underlying.v._size)
      val newMapCell: Cell[LongMapFixedSizeOpti[V]] = Cell(LongMapFixedSizeOpti.getNewLongMapFixedSize(newMask, underlying.v.defaultEntry))
      val resExtraKeys = if ((underlying.v.extraKeys & 1) != 0 && (underlying.v.extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        val u1 = newMapCell.v.update(0L, underlying.v.zeroValue)
        val u2 = newMapCell.v.update(Long.MinValue, underlying.v.minValue)
        u1 && u2
      } else if ((underlying.v.extraKeys & 1) != 0 && (underlying.v.extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        newMapCell.v.update(0L, underlying.v.zeroValue)
      } else if ((underlying.v.extraKeys & 2) != 0 && (underlying.v.extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        newMapCell.v.update(Long.MinValue, underlying.v.minValue)
      } else {
        true
      }

      if (!resExtraKeys) {
        false
      } else {
        val repackFromRes = repackFrom(newMapCell.v, underlying.v._keys.length - 1)
        if (repackFromRes) {
          // Swap the current underyling with the new one
          swap(underlying, newMapCell)
          true
        } else {
          false
        }
      }
    }

    @tailrec
    def repackFrom(newMap: LongMapFixedSizeOpti[V], from: Int): Boolean = {
      val currentKey = underlying.v._keys(from)

      val currentValue = underlying.v._values(from).asInstanceOf[V]

      if (currentKey != 0 && currentKey != Long.MinValue) {

        // There is a key in the array, add it to the new map
        val res = newMap.update(currentKey, currentValue)

        if (res) {
          if (from > 0) {
            repackFrom(newMap, from - 1)
          } else {
            true
          }
        } else {
          false
        }

      } else {
        if (from > 0) {
          repackFrom(newMap, from - 1)
        } else {
          true
        }
      }

    } 

  }

  sealed trait ValueCell[V] {
    def get(defaultValue: V): V
  }

  case class ValueCellFull[V](v: V) extends ValueCell[V] {
    def get(defaultValue: V): V = v
  }

  case class EmptyCell[V]() extends ValueCell[V] {
    def get(defaultValue: V): V = defaultValue
  }

  def isFull[V](c: ValueCell[V]): Boolean = {
    c match {
      case ValueCellFull(_) => true
      case EmptyCell()      => false
    }
  }

  def extractCell[V](c: ValueCell[V]): V = {
    c match {
      case ValueCellFull(v) => v
    }
  }

  private final val MAX_MASK: Int = 0x3fffffff

  private final val MAX_ITER = 4096 // arbitrary

  /** A Map with keys of type Long and values of type Long mask must be a valid mask, i.e., 2^n - 1. The smallest possible mask is 0 and the biggest is 0x3fffffff _keys and _values must be initialized to an array of length mask + 1, containing all 0 values, i.e., Array.fill(mask + 1)(0) extraKeys must be initialized to 0 _size must be initialized to 0
    *
    * @param mask
    * @param extraKeys
    * @param zeroValue
    * @param minValue
    * @param _size
    * @param _keys
    * @param _values
    */
  @mutable
  final case class LongMapFixedSizeOpti[V](
      val defaultEntry: Long => V,
      val mask: Int,
      var extraKeys: Int,
      var zeroValue: V,
      var minValue: V,
      var _size: Int,
      val _keys: Array[Long],
      val _values: Array[AnyRef],
      var _vacant: Int
  ) {
    import LongMapFixedSizeOpti.seekEntryOrOpen
    import LongMapFixedSizeOpti.toIndex
    import LongMapFixedSizeOpti.seekEntry
    import LongMapFixedSizeOpti.inRange

    @pure
    def size: Int = {
      _size + (extraKeys + 1) / 2
    }

    @pure
    def imbalanced: Boolean =
      2 * _size > mask

    @pure
    def isEmpty: Boolean = {
      size == 0
    } 

    @pure
    def contains(key: Long): Boolean = {
      if (key == 0) (extraKeys & 1) != 0
      else if (key == Long.MinValue) (extraKeys & 2) != 0
      else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            true
          }
          case _ => {
            false
          }
        }
      }
    }

    /** Retrieves the value associated with a key. If the key does not exist in the map, the `defaultEntry` for that key is returned instead.
      *
      * @param key
      * @return
      */
    @pure
    def apply(key: Long): V = {
      if (key == -key) {
        if (key == 0 && (extraKeys & 1) != 0) zeroValue
        else if (key == Long.MinValue && (extraKeys & 2) != 0) minValue
        else defaultEntry(key)
      } else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            _values(index).asInstanceOf[V]
          }
          case _ => defaultEntry(key)
        }
      }
    }

    /** Updates the map to include a new key-value pair. Returns a boolean indicating if the update was successful. It is not successful if no free space is found (i.e., the map is full)
      *
      * This is the fastest way to add an entry to a `LongMap`.
      */
    def update(key: Long, v: V): Boolean = {
      if (key == -key) {
        if (key == 0) {
          zeroValue = v
          extraKeys |= 1
          true
        } else {
          val extraKeysBefore = extraKeys
          minValue = v
          extraKeys |= 2
          true
        }

      } else {
        val seekEntryRes = seekEntryOrOpen(key)(_keys, mask)
        seekEntryRes match {
          case Undefined() => {
            // the key is not in the array, it was not able to find an empty space, the map is maybe full
            false
          }
          case MissingVacant(index) => updateHelperNewKey(key, v, index)
          case MissingZero(index)   => updateHelperNewKey(key, v, index)
          case Found(index) => {
            _values(index) = v.asInstanceOf[AnyRef]
            true
          }
        }
      }
    }

    /** Removes the given key from the map. Returns true if the key was present and is removed, false if the key was not present
      *
      * @param key
      * @return
      */
    def remove(key: Long): Boolean = {
      if (key == -key) {
        if (key == 0L) {
          extraKeys &= 0x2
          zeroValue = defaultEntry(0L)

          true
        } else {
          extraKeys &= 0x1
          minValue = defaultEntry(Long.MinValue)

          true
        }
      } else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            _size -= 1
            _keys(index) = Long.MinValue
            _values(index) = null
            val tempVac = _vacant + 1
            if (tempVac > 0) {
              _vacant = tempVac 
            }

            true
          }
          case _ => false
        }
      }
    }

    /** Go through an helper function because this piece of code has to be called in 2 cases of the pattern matching
      *
      * @return
      */
    private def updateHelperNewKey(key: Long, v: V, index: Int): Boolean = {
      _keys(index) = key
      _size += 1
      _values(index) = v.asInstanceOf[AnyRef]
      true

    }



  }

  abstract sealed class SeekEntryResult
  case class Found(index: Int) extends SeekEntryResult
  case class MissingZero(index: Int) extends SeekEntryResult
  case class MissingVacant(index: Int) extends SeekEntryResult
  case class Intermediate(undefined: Boolean, index: Int, x: Int) extends SeekEntryResult
  case class Undefined() extends SeekEntryResult

  object LongMapFixedSizeOpti {

    def getNewLongMapFixedSize[V](mask: Int, defaultEntry: Long => V): LongMapFixedSizeOpti[V] = {
      val res = LongMapFixedSizeOpti[V](defaultEntry = defaultEntry, mask = mask, extraKeys = 0, zeroValue = defaultEntry(0L), minValue = defaultEntry(0L), _size = 0, _keys = new Array[Long](mask + 1), _values =new Array[AnyRef](mask + 1), _vacant = 0)
      res
    }

    @pure
    def validMask(mask: Int): Boolean = {
      (mask == 0x00000007 ||
        mask == 0x0000000f ||
        mask == 0x0000001f ||
        mask == 0x0000003f ||
        mask == 0x0000007f ||
        mask == 0x000000ff ||
        mask == 0x000001ff ||
        mask == 0x000003ff ||
        mask == 0x000007ff ||
        mask == 0x00000fff ||
        mask == 0x00001fff ||
        mask == 0x00003fff ||
        mask == 0x00007fff ||
        mask == 0x0000ffff ||
        mask == 0x0001ffff ||
        mask == 0x0003ffff ||
        mask == 0x0007ffff ||
        mask == 0x000fffff ||
        mask == 0x001fffff ||
        mask == 0x003fffff ||
        mask == 0x007fffff ||
        mask == 0x00ffffff ||
        mask == 0x01ffffff ||
        mask == 0x03ffffff ||
        mask == 0x07ffffff ||
        mask == 0x0fffffff ||
        mask == 0x1fffffff ||
        mask == 0x3fffffff) && mask <= MAX_MASK // MAX is MAX_MASK

    }

    /** Compute the index in the array for a given key with hashing and magic stuff
      *
      * @param k
      *   the key
      * @return
      */
    @pure
    private def toIndex(k: Long, mask: Int): Int = {
      // Part of the MurmurHash3 32 bit finalizer
      val h = ((k ^ (k >>> 32)) & 0xffffffffL).toInt
      val x = (h ^ (h >>> 16)) * 0x85ebca6b
      (x ^ (x >>> 13)) & mask
    }

    /** Checks if i is a valid index in the Array of values
      *
      * @param i
      * @return
      */
    private def inRange(i: Int, mask: Int): Boolean = {
      // mask + 1 is the size of the Array
      i >= 0 && i < mask + 1
    }

        /** Given a key, seek for its index into the array returns a corresponding instance of SeekEntryResult with the index if found
      *
      * @param k
      *   the key
      * @return
      *   the index of the given key into the array
      */
    @pure
    def seekEntry(k: Long)(implicit _keys: Array[Long], mask: Int): SeekEntryResult = {
      val intermediate =
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(k, _keys, mask)
      intermediate match {
        case Intermediate(undefined, index, x) if (undefined) => Undefined()
        case Intermediate(undefined, index, x) if (!undefined) => {
          val q = _keys(index)
          if (q == k) Found(index)
          else if (q == 0) MissingZero(index)
          else {
            // e is the index of Long.MinValue i.e. the spot of a key that was removed
            // we need to search from there until we see a zero. Maybe the key we're
            // searching was added after the removed one and is therefore after in the array.
            // If we find a zero before finding the key, we return the index of the Long.MinValue to
            // reuse the spot

            val res = seekKeyOrZeroReturnVacant(x, index, index)(k, _keys, mask)
            res match {
              case MissingVacant(index) => MissingZero(index)
              case _                    => res
            }
          }
        }
      }

    }

    /** Search the index of the given key. If the key is in the array, it finds its index (OK is returned). If the key is not in the array, it finds either:
      *   - A free space with a 0 value (MissingBit is returned)
      *   - A freed space with a Long.MinValue value (MissingVacant is returned)
      *   - Nothing (EntryNotFound is returned as a second value)
      *
      * @param k
      * @return
      */
    @pure
    def seekEntryOrOpen(k: Long)(implicit _keys: Array[Long], mask: Int): SeekEntryResult = {

      val intermediate =
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(k, _keys, mask)
      intermediate match {
        case Intermediate(undefined, index, x) if (undefined) => Undefined()
        case Intermediate(undefined, index, x) if (!undefined) => {
          val q = _keys(index)
          if (q == k) Found(index)
          else if (q == 0) MissingZero(index)
          else {
            // index is the index of Long.MinValue i.e. the spot of a key that was removed
            // we need to search from there until we see a zero. Maybe the key we're
            // searching was added after the removed one and is therefore after in the array.
            // If we find a zero before finding the key, we return the index of the Long.MinValue to
            // reuse the spot

            val res = seekKeyOrZeroReturnVacant(x, index, index)(k, _keys, mask)
            res
          }
        }
      }
    }

    @tailrec
    @pure
    private def seekKeyOrZeroOrLongMinValue(x: Int, ee: Int)(implicit
        k: Long,
        _keys: Array[Long],
        mask: Int
    ): SeekEntryResult = {
      val q = _keys(ee)
      if (x >= MAX_ITER) Intermediate(true, ee, x)
      else if (q == k || q + q == 0) Intermediate(false, ee, x)
      else
        seekKeyOrZeroOrLongMinValue(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    }

    @tailrec
    @pure
    private def seekKeyOrZeroReturnVacant(x: Int, ee: Int, vacantSpotIndex: Int)(implicit
        k: Long,
        _keys: Array[Long],
        mask: Int
    ): SeekEntryResult = {
      val q = _keys(ee)
      if (x >= MAX_ITER) Undefined()
      else if (q == k) Found(ee)
      else if (q == 0) MissingVacant(vacantSpotIndex)
      else
        seekKeyOrZeroReturnVacant(
          x + 1,
          (ee + 2 * (x + 1) * x - 3) & mask,
          vacantSpotIndex
        )

    } 
  }
}

