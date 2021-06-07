import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec
import scala.collection.immutable
import scala.collection.concurrent.RestartException
import stainless.lang.StaticChecks._

object MutableLongMap {

  private final val IndexMask: Int = 0x3fffffff // = Integer.MAX_VALUE/8
  //Try next with 0x3FFFFFFF

  private final val MAX_ITER = 2048 // arbitrary

  /** A Map with keys of type Long and values of type Long
    * For now, key = Long.MaxValue s.t. k == -k is
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
  final case class LongMapLongV(
      private var mask: Int = IndexMask,
      private var extraKeys: Int = 0,
      private var zeroValue: Long = 0,
      private var minValue: Long = 0,
      private var _size: Int = 0,
      private var _keys: Array[Long] = Array.fill(IndexMask + 1)(0),
      private var _values: Array[Long] = Array.fill(IndexMask + 1)(0),
      val defaultEntry: Long => Long = (x => 0)
  ) {
    import LongMapLongV.validKeyInArray
    import LongMapLongV.arrayCountValidKeysTailRec
    import LongMapLongV.arrayContainsKeyTailRec
    import LongMapLongV.arrayScanForKey
    import LongMapLongV.arrayNoDuplicates
    import LongMapLongV.arraysEqualsFromTo
    import LongMapLongV.seekEntryOrOpenDecoupled
    import LongMapLongV.toIndex
    import LongMapLongV.lemmaArrayContainsFromImpliesContainsFromZero
    import LongMapLongV.arrayForallSeekEntryOrOpenFound
    import LongMapLongV.lemmaValidKeyAtIImpliesCountKeysIsOne
    import LongMapLongV.lemmaAddValidKeyIncreasesNumberOfValidKeysInArray
    import LongMapLongV.lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray
    import LongMapLongV.lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger
    import LongMapLongV.lemmaArrayNoDuplicateThenKeysContainedNotEqual
    import LongMapLongV.lemmaNoDuplicateFromThenFromBigger
    import LongMapLongV.lemmaPutNonValidKeyPreservesNoDuplicate
    import LongMapLongV.lemmaPutNewValidKeyPreservesNoDuplicate
    import LongMapLongV.seekEntryDecoupled
    import LongMapLongV.inRange
    import LongMapLongV.validMask
    import LongMapLongV.lemmaPutLongMinValuePreservesForallSeekEntryOrOpen
    import LongMapLongV.lemmaSeekEntryOrOpenFindsThenSeekEntryFinds
    import LongMapLongV.lemmaPutValidKeyPreservesForallSeekEntryOrOpen
    import LongMapLongV.lemmaArrayNoDuplicateRemoveOneThenNotContain

    @inlineOnce
    def valid: Boolean = {
      //class invariant
      simpleValid &&
      arrayCountValidKeysTailRec(_keys, 0, _keys.length) == _size &&
      arrayForallSeekEntryOrOpenFound(0)(_keys, mask) &&
      // I have to ensure that the _keys array has no duplicate
      arrayNoDuplicates(_keys, 0)
    }

    @inline
    def simpleValid: Boolean = {
      validMask(mask) &&
      _values.length == mask + 1 &&
      _keys.length == _values.length &&
      mask >= 0 &&
      _size >= 0 &&
      _size <= mask + 1 &&
      size >= _size &&
      extraKeys >= 0 &&
      extraKeys <= 3
    }

    @inline
    @pure
    def map: ListMapLongKey[Long] = {
      require(valid)
      getCurrentListMap(0)
    }

    @pure
    def size: Int = {
      _size + (extraKeys + 1) / 2
    }
    @pure
    def isEmpty: Boolean = {
      require(valid)
      _size == 0
    }.ensuring(_ => valid)
    @pure
    def isFull: Boolean = {
      require(valid)
      _size >= IndexMask
    }.ensuring(_ => valid)

    @pure
    def contains(key: Long): Boolean = {
      require(valid)
      // if (key == -key) (((key >>> 63).toInt + 1) & extraKeys) != 0
      if (key == 0) (extraKeys & 1) != 0
      else if (key == Long.MinValue) (extraKeys & 2) != 0
      else {
        val seekEntryRes = seekEntryDecoupled(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index)
            lemmaValidKeyInArrayIsInListMap(index)
            true
          }
          case _ => {
            if (getCurrentListMap(0).contains(key)) {
              lemmaKeyInListMapIsInArray(key)
              val i = arrayScanForKey(_keys, key, 0)
              lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
              lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(key, i, _keys, mask)
              check(false)
            }
            false
          }
        }
      }
    }.ensuring(res =>
      valid
        && (res == map.contains(key))
    )

    /** Retrieves the value associated with a key.
      *  If the key does not exist in the map, the `defaultEntry` for that key
      *  will be returned instead.
      *
      * @param key
      * @return
      */
    @pure
    def apply(key: Long): Long = {
      require(valid)
      if (key == -key) {
        // if ((((key >>> 63).toInt + 1) & extraKeys) == 0) defaultEntry(key)
        if (key == 0 && (extraKeys & 1) != 0) zeroValue
        else if (key == Long.MinValue && (extraKeys & 2) != 0) minValue
        else defaultEntry(key)
      } else {
        val seekEntryRes = seekEntryDecoupled(key)(_keys, mask)
        lemmaSeekEntryGivesInRangeIndex(key)
        seekEntryRes match {
          case Found(index) => {
            lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index)
            lemmaValidKeyInArrayIsInListMap(index)
            lemmaKeyInListMapThenSameValueInArray(key, index)
            _values(index)
          }
          case _ => defaultEntry(key)
        }
      }
    }.ensuring(res =>
      valid
        && (if (contains(key)) Some(res) == map.get(key)
            else res == defaultEntry(key))
    )

    /** Updates the map to include a new key-value pair. Return a boolean indicating if the update was successful.
      *
      *  This is the fastest way to add an entry to a `LongMap`.
      */
    def update(key: Long, v: Long): Boolean = {
      require(valid)

      if (key == -key) {
        if (key == 0) {
          zeroValue = v
          extraKeys |= 1
          true
        } else {
          minValue = v
          extraKeys |= 2
          true
        }

      } else {
        val seekEntryRes = seekEntryOrOpenDecoupled(key)(_keys, mask)
        seekEntryRes match {
          case Undefined() => {
            //the key is not in the array, it was not able to find an empty space, the map is maybe full
            if (getCurrentListMap(0).contains(key)) {
              lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
              check(false)
            } else {
              lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
            }
            false
          }
          case MissingVacant(index) => updateHelperNewKey(key, v, index)
          case MissingZero(index)   => updateHelperNewKey(key, v, index)
          case Found(index) => {
            if (getCurrentListMap(0).contains(key)) {
              lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
            } else {
              lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
              check(false)
            }

            _values(index) = v

            lemmaValidKeyInArrayIsInListMap(index)
            true
          }
        }
      }
    }.ensuring(res =>
      valid
        && (if (res) map.contains(key) else true)
    )

    /** Go through an helper function because this piece of code has to be called in 2 cases
      * of the pattern matching
      *
      * @return
      */
    def updateHelperNewKey(key: Long, v: Long, index: Int): Boolean = {
      require(valid)
      require(key != 0)
      require(key != Long.MinValue)
      require(seekEntryOrOpenDecoupled(key)(_keys, mask) == MissingZero(index) || seekEntryOrOpenDecoupled(key)(_keys, mask) == MissingVacant(index))
      if (getCurrentListMap(0).contains(key)) {
        lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
        check(false)
      } else {
        lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
        check(_keys(index) == 0 || _keys(index) == Long.MinValue)
      }
      val _oldSize = _size
      val _oldNKeys = arrayCountValidKeysTailRec(_keys, 0, _keys.length)
      assert(inRange(index, mask))
      if (arrayContainsKeyTailRec(_keys, key, 0)) {
        lemmaArrayContainsKeyThenInListMap(key, 0)
        check(false)
      }

      lemmaPutNewValidKeyPreservesNoDuplicate(_keys, key, index, 0, List())
      lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(_keys, index, key)
      lemmaPutValidKeyPreservesForallSeekEntryOrOpen(key, _keys, index)(mask)

      _keys(index) = key
      _size += 1

      lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index)
      lemmaValidKeyAtIImpliesCountKeysIsOne(_keys, index)

      _values(index) = v

      lemmaValidKeyInArrayIsInListMap(index)
      true

    }.ensuring(res => res && valid && map.contains(key)) 

    /** Removes the given key from the array
      *
      * @param key
      * @return
      */
    def substractOne(key: Long): Boolean = {
      require(valid)
      if (key == -key) {
        if (key == 0L) {
          extraKeys &= 0x2
          zeroValue = 0

          true
        } else {
          extraKeys &= 0x1
          minValue = 0

          true
        }
      } else {
        val seekEntryRes = seekEntryDecoupled(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            // _vacant += 1
            lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray(_keys, index, Long.MinValue)
            lemmaPutNonValidKeyPreservesNoDuplicate(_keys, Long.MinValue, index, 0, List())
            lemmaPutLongMinValuePreservesForallSeekEntryOrOpen(_keys, index)(mask)
            lemmaArrayNoDuplicateRemoveOneThenNotContain(_keys, index, key)
            _size -= 1
            _keys(index) = Long.MinValue
            _values(index) = 0

            if(getCurrentListMap(0).contains(key)){
              lemmaKeyInListMapIsInArray(key)
              check(false)
            }

            true
          }
          case _ => false
        }
      }
    }.ensuring(res => valid && (if(res) !map.contains(key) else true))


    //-------------------LEMMAS------------------------------------------------------------------------------------------------------------------------------

    //------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------
    //------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    @opaque
    @pure
    def lemmaInListMapThenSeekEntryFinds(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(k)
      assert(arrayContainsKeyTailRec(_keys, k, 0))
      assert(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      val i = arrayScanForKey(_keys, k, 0)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
      lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(k, i, _keys, mask)

    }.ensuring(_ =>
      valid &&
        (seekEntryDecoupled(k)(_keys, mask) match {
          case Found(index) => inRange(index, mask) && _keys(index) == k
          case _            => false
        })
    )

    @opaque
    @pure
    def lemmaNotInListMapThenSeekEntryFindsMissingBit(k: Long): Unit = {
      require(valid)
      require(validKeyInArray(k))
      require(!getCurrentListMap(0).contains(k))
      if (validKeyInArray(k)) {
        if (arrayContainsKeyTailRec(_keys, k, 0)) {
          val i = arrayScanForKey(_keys, k, 0)
          lemmaValidKeyInArrayIsInListMap(i)
          lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(k, i, _keys, mask)
          lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
          check(false)
        } else {
          seekEntryDecoupled(k)(_keys, mask) match {
            case Found(index) => {
              //found but not in array --> Contradiction
              lemmaValidKeyInArrayIsInListMap(index)
              check(false)
            }
            case _ => ()
          }
        }
      }

    }.ensuring(_ =>
      valid &&
        (seekEntryDecoupled(k)(_keys, mask) match {
          case MissingZero(_) => true
          case Undefined()    => true
          case _              => false
        })
    )

    @opaque
    @pure
    def lemmaInListMapThenSeekEntryOrOpenFindsIt(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(k)
      val i = arrayScanForKey(_keys, k, 0)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
      assert(arrayForallSeekEntryOrOpenFound(i)(_keys, mask))

    }.ensuring(_ =>
      valid &&
        (seekEntryOrOpenDecoupled(k)(_keys, mask) match {
          case Found(index) => inRange(index, mask) && _keys(index) == k
          case _            => false
        })
    )

    @opaque
    @pure
    def lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(k: Long): Unit = {
      require(valid)
      require(validKeyInArray(k))
      require(!getCurrentListMap(0).contains(k))

      val seekEntryRes = seekEntryOrOpenDecoupled(k)(_keys, mask)
      seekEntryRes match {
        case Found(index) => {
          assert(_keys(index) == k)
          assert(arrayContainsKeyTailRec(_keys, k, index))
          lemmaArrayContainsFromImpliesContainsFromZero(_keys, k, index)
          lemmaValidKeyInArrayIsInListMap(index)
          check(false)
        }
        case MissingZero(_) => {
          if (arrayContainsKeyTailRec(_keys, k, 0)) {
            val i = arrayScanForKey(_keys, k, 0)
            lemmaArrayContainsKeyThenInListMap(k, i)
            check(false)
          }
          check(!arrayContainsKeyTailRec(_keys, k, 0))
        }
        case MissingVacant(_) => {
          if (arrayContainsKeyTailRec(_keys, k, 0)) {
            val i = arrayScanForKey(_keys, k, 0)
            lemmaArrayContainsKeyThenInListMap(k, i)
            check(false)
          }
          check(!arrayContainsKeyTailRec(_keys, k, 0))
        }
        case Undefined() => ()
      }

    }.ensuring(_ => {
      val seekEntryRes = seekEntryOrOpenDecoupled(k)(_keys, mask)
      seekEntryRes match {
        case MissingZero(index)   => inRange(index, mask) && _keys(index) == 0 && !arrayContainsKeyTailRec(_keys, k, 0)
        case MissingVacant(index) => inRange(index, mask) && _keys(index) == Long.MinValue && !arrayContainsKeyTailRec(_keys, k, 0)
        case Undefined()          => true
        case _                    => false
      }
    })

    @opaque
    @pure
    def lemmaSeekEntryOrOpenReturnsValidIndex(k: Long): Unit = {
      require(valid)
      require(validKeyInArray(k))

    }.ensuring(_ =>
      seekEntryOrOpenDecoupled(k)(_keys, mask) match {
        case Undefined()          => true
        case Found(index)         => inRange(index, mask)
        case MissingVacant(index) => inRange(index, mask)
        case MissingZero(index)   => inRange(index, mask)
        case _                    => false
      }
    )

    @opaque
    @pure
    def lemmaSeekEntryGivesInRangeIndex(k: Long): Unit = {
      require(valid)
      require(validKeyInArray(k))

    }.ensuring(_ =>
      (seekEntryDecoupled(k)(_keys, mask) match {
        case Found(index) => inRange(index, mask)
        case _            => true
      })
    )

    //------------------END----------------------------------------------------------------------------------------------------------------------------------
    //------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------

  }

  abstract sealed class SeekEntryResult
  case class Found(index: Int) extends SeekEntryResult
  case class MissingZero(index: Int) extends SeekEntryResult
  case class MissingVacant(index: Int) extends SeekEntryResult
  case class Intermediate(undefined: Boolean, index: Int, x: Int) extends SeekEntryResult
  case class Undefined() extends SeekEntryResult

  object LongMapLongV {

    @pure
    @inline
    def validMask(mask: Int): Boolean = {
      (mask == 0x00000000 ||
        mask == 0x00000001 ||
        mask == 0x00000003 ||
        mask == 0x00000007 ||
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
        mask == 0x3fffffff ) && mask <= IndexMask //MAX is IndexMask

    }

    /** Checks if i is a valid index in the Array of values
      *
      * @param i
      * @return
      */
    @inline
    private def inRange(i: Int, mask: Int): Boolean = {
      // mask + 1 is the size of the Array
      i >= 0 && i < mask + 1
    }

    @pure
    def arrayForallSeekEntryOrOpenFound(i: Int)(implicit _keys: Array[Long], mask: Int): Boolean = {
      require(validMask(mask))
      require(_keys.length == mask + 1)
      require(i >= 0)
      require(i <= _keys.length)

      decreases(_keys.length - i)

      if (i >= _keys.length) true
      else if (validKeyInArray(_keys(i))) {
        assert(arrayContainsKeyTailRec(_keys, _keys(i), i))
        lemmaArrayContainsFromImpliesContainsFromZero(_keys, _keys(i), i)
        LongMapLongV.seekEntryOrOpenDecoupled(_keys(i))(_keys, mask) == Found(i) &&
        // arrayScanForKey(_keys, _keys(i), 0) == i &&
        arrayForallSeekEntryOrOpenFound(i + 1)
      } else arrayForallSeekEntryOrOpenFound(i + 1)
    }

    /** Compute the index in the array for a given key
      * with hashing and magic stuff
      *
      * @param k the key
      * @return
      */
    @pure
    private def toIndex(k: Long, mask: Int): Int = {
      require(mask >= 0)
      require(mask <= IndexMask)
      // Part of the MurmurHash3 32 bit finalizer
      val h = ((k ^ (k >>> 32)) & 0xffffffffL).toInt
      val x = (h ^ (h >>> 16)) * 0x85ebca6b
      (x ^ (x >>> 13)) & mask
    }.ensuring(res => res < mask + 1 && res >= 0)

    /** Given a key, seek for its index into the array
      * returns a tuple with (index, error_code)
      * the index is the index of the key if error_code == 0
      *
      * @param k the key
      * @return the index of the given key into the array
      */
    @pure
    def seekEntryDecoupled(k: Long)(implicit _keys: Array[Long], mask: Int): SeekEntryResult = {
      require(validMask(mask))
      require(_keys.length == mask + 1)
      require(validKeyInArray(k))
      decreases(1)
      // ORIGINAL IMPLEMENTATION ------- BEGINNING ------------------------------------
      // seekEntryTailRecDecoupled(k, 0, toIndex(k, mask))(_keys, mask)
      // ORIGINAL IMPLEMENTATION ------- END ------------------------------------------

      val intermediate = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, _keys, mask)
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
            assert(_keys(index) == Long.MinValue)
            assert(index >= 0 && index < mask + 1)
            val res = seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(k, _keys, mask)
            res match {
              case MissingVacant(index) => MissingZero(index)
              case _                    => res
            }
          }
        }
      }

    }.ensuring(res =>
      res match {
        case MissingVacant(index) => false //should never happen
        case Found(index)         => _keys(index) == k
        case MissingZero(_)       => true
        case Undefined()          => true
      }
    )

    /** Search the index of the given key. If the key is in the array, it finds its index (OK is returned).
      * If the key is not in the array, it finds either:
      *   - A free space with a 0 value (MissingBit is returned)
      *   - A freed space with a Long.MinValue value (MissingVacant is returned)
      *   - Nothing (EntryNotFound is returned as a second value)
      *
      * @param k
      * @return
      */
    @pure
    def seekEntryOrOpenDecoupled(k: Long)(implicit _keys: Array[Long], mask: Int): SeekEntryResult = {
      require(validMask(mask))
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(validKeyInArray(k))

      val intermediate = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, _keys, mask)
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
            assert(_keys(index) == Long.MinValue)
            assert(index >= 0 && index < mask + 1)
            val res = seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(k, _keys, mask)
            res
          }
        }
      }
    }.ensuring(res =>
      (
        res match {
          case Undefined()          => true
          case Found(index)         => _keys(index) == k
          case MissingZero(index)   => _keys(index) == 0
          case MissingVacant(index) => _keys(index) == Long.MinValue
          case _                    => false
        }
      )
    )

    @tailrec
    @pure
    private def seekKeyOrZeroOrLongMinValueTailRecDecoupled(x: Int, ee: Int)(implicit
        k: Long,
        _keys: Array[Long],
        mask: Int
    ): SeekEntryResult = {
      require(validMask(mask))
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(ee >= 0 && ee < mask + 1)
      require(x <= MAX_ITER && x >= 0)
      require(validKeyInArray(k))

      decreases(MAX_ITER - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) Intermediate(true, ee, x)
      else if (q == k || q + q == 0) Intermediate(false, ee, x)
      else
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    }.ensuring(res =>
      (res match {
        case Intermediate(undefined, index, resx) if (undefined)  => resx >= MAX_ITER
        case Intermediate(undefined, index, resx) if (!undefined) => resx < MAX_ITER && resx >= 0 && resx >= x && (_keys(index) == k || _keys(index) == 0 || _keys(index) == Long.MinValue)
        case _                                                    => false
      })
    )

    @tailrec
    @pure
    private def seekKeyOrZeroReturnVacantTailRecDecoupled(x: Int, ee: Int, vacantSpotIndex: Int)(implicit
        k: Long,
        _keys: Array[Long],
        mask: Int
    ): SeekEntryResult = {
      require(validMask(mask))
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(ee >= 0 && ee < mask + 1)
      require(x <= MAX_ITER && x >= 0)
      require(vacantSpotIndex >= 0 && vacantSpotIndex < mask + 1)
      require(_keys(vacantSpotIndex) == Long.MinValue)
      require(validKeyInArray(k))

      decreases(MAX_ITER + 1 - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) Undefined()
      else if (q == k) Found(ee)
      else if (q == 0) MissingVacant(vacantSpotIndex)
      else seekKeyOrZeroReturnVacantTailRecDecoupled(x + 1, (ee + 2 * (x + 1) * x - 3) & mask, vacantSpotIndex)

    }.ensuring(res =>
      res match {
        case Undefined()          => true
        case Found(index)         => _keys(index) == k
        case MissingVacant(index) => index == vacantSpotIndex && _keys(index) == Long.MinValue
        case _                    => false
      }
    )

    @pure
    def getCurrentListMap(from: Int): ListMapLongKey[Long] = {
      require(valid)
      require(from >= 0 && from <= _keys.length)

      val res = if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        (getCurrentListMapNoExtraKeys(from) + (0L, zeroValue)) + (Long.MinValue, minValue)
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        getCurrentListMapNoExtraKeys(from) + (0L, zeroValue)
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        getCurrentListMapNoExtraKeys(from) + (Long.MinValue, minValue)
      } else {
        getCurrentListMapNoExtraKeys(from)
      }
      if (from < _keys.length && validKeyInArray(_keys(from))) {
        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from), 0, zeroValue, _keys(from))
        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from), Long.MinValue, minValue, _keys(from))
        ListMapLongKeyLemmas.addApplyDifferent(getCurrentListMapNoExtraKeys(from), 0, zeroValue, _keys(from))
        ListMapLongKeyLemmas.addApplyDifferent(getCurrentListMapNoExtraKeys(from), Long.MinValue, minValue, _keys(from))
      }

      res

    }.ensuring(res =>
      valid &&
        (if (from < _keys.length && validKeyInArray(_keys(from))) res.contains(_keys(from)) && res(_keys(from)) == _values(from)
         else
           // else if (from < _keys.length) res == getCurrentListMap(from + 1) else
           true) &&
        (if ((extraKeys & 1) != 0) res.contains(0) && res(0) == zeroValue else !res.contains(0)) &&
        (if ((extraKeys & 2) != 0) res.contains(Long.MinValue) && res(Long.MinValue) == minValue else !res.contains(Long.MinValue))
    )

    @pure
    def getCurrentListMapNoExtraKeys(from: Int): ListMapLongKey[Long] = {
      require(valid && from >= 0 && from <= _keys.length)
      decreases(_keys.length + 1 - from)
      if (from >= _keys.length) {
        ListMapLongKey.empty[Long]
      } else if (validKeyInArray(_keys(from))) {
        ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(from + 1), _keys(from), _values(from), 0)

        getCurrentListMapNoExtraKeys(from + 1) + (_keys(from), _values(from))
      } else {
        getCurrentListMapNoExtraKeys(from + 1)
      }
    }.ensuring(res =>
      valid &&
        !res.contains(0) && !res.contains(Long.MinValue) &&
        (if (from < _keys.length && validKeyInArray(_keys(from)))
           res.contains(_keys(from)) && res(_keys(from)) == _values(from)
         else if (from < _keys.length) res == getCurrentListMapNoExtraKeys(from + 1)
         else res.isEmpty)
    )


    // LEMMAS -----------------–-----------------–-----------------–-----------------–-----------------–---------------

     //------------------EQUIVALENCE BETWEEN LISTMAP AND ARRAY------------------------------------------------------------------------------------------------
    //------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    def lemmaKeyInListMapThenSameValueInArray(k: Long, i: Int): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(inRange(i, mask))
      require(_keys(i) == k)

      if (k != 0 && k != Long.MinValue) {
        lemmaKeyInListMapIsInArray(k)
        lemmaListMapApplyFromThenApplyFromZero(k, _values(i), i)
      }
    }.ensuring(_ =>
      if (k == 0) (extraKeys & 1) != 0 && getCurrentListMap(0).apply(k) == zeroValue
      else if (k == Long.MinValue) (extraKeys & 2) != 0 && getCurrentListMap(0).apply(k) == minValue
      else
        arrayContainsKeyTailRec(_keys, k, 0) && getCurrentListMap(0).apply(k) == _values(i)
    )

    @opaque
    @pure
    def lemmaKeyInListMapIsInArray(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      lemmaListMapContainsThenArrayContainsFrom(k, 0)

    }.ensuring(_ => if (k != 0 && k != Long.MinValue) arrayContainsKeyTailRec(_keys, k, 0) else if (k == 0) (extraKeys & 1) != 0 else (extraKeys & 2) != 0)

    @opaque
    @pure
    def lemmaValidKeyInArrayIsInListMap(i: Int): Unit = {
      require(valid)
      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(_keys(i)))

      lemmaInListMapFromThenFromZero(i, i)

    }.ensuring(_ => valid && getCurrentListMap(0).contains(_keys(i)))

    @opaque
    @pure
    def lemmaArrayContainsKeyThenInListMap(k: Long, from: Int): Unit = {
      require(valid)
      require(validKeyInArray(k))
      require(from >= 0 && from < _keys.length)
      require(arrayContainsKeyTailRec(_keys, k, from))
      decreases(_keys.length - from)

      if (_keys(from) == k) {
        lemmaValidKeyInArrayIsInListMap(from)
      } else {
        lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne(k, from)
        lemmaArrayContainsKeyThenInListMap(k, from + 1)
      }

    }.ensuring(_ => valid && getCurrentListMap(0).contains(k))

    @opaque
    @pure
    def lemmaListMapApplyFromThenApplyFromZero(k: Long, v: Long, from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(getCurrentListMap(from).contains(k))
      require(getCurrentListMap(from).apply(k) == v)

      decreases(from)

      if (from > 0) {
        if (validKeyInArray(k)) {
          if (validKeyInArray(_keys(from - 1))) {
            lemmaListMapRecursiveValidKeyArray(from - 1)
            ListMapLongKeyLemmas.addStillContains(getCurrentListMap(from), _keys(from - 1), _values(from - 1), k)
            lemmaNoDuplicateFromThenFromBigger(_keys, 0, from - 1)
            lemmaListMapContainsThenArrayContainsFrom(k, from)
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(_keys, k, from - 1, Nil())
            ListMapLongKeyLemmas.addApplyDifferent(getCurrentListMap(from), _keys(from - 1), _values(from - 1), k)
          }
        }
        lemmaListMapApplyFromThenApplyFromZero(k, v, from - 1)
      }

    }.ensuring(_ => getCurrentListMap(0).contains(k) && getCurrentListMap(0).apply(k) == v)

    @opaque
    @pure
    def lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne(k: Long, from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(arrayContainsKeyTailRec(_keys, k, from))
      require(_keys(from) != k)

    }.ensuring(_ => arrayContainsKeyTailRec(_keys, k, from + 1))

    @opaque
    @pure
    def lemmaListMapRecursiveValidKeyArray(from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(validKeyInArray(_keys(from)))

      if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(getCurrentListMapNoExtraKeys(from + 1) + (0L, zeroValue), Long.MinValue, minValue, _keys(from), _values(from))
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(getCurrentListMapNoExtraKeys(from + 1), 0L, zeroValue, _keys(from), _values(from))
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(getCurrentListMapNoExtraKeys(from + 1), 0L, zeroValue, _keys(from), _values(from))
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(getCurrentListMapNoExtraKeys(from + 1), Long.MinValue, minValue, _keys(from), _values(from))
      }

    }.ensuring(_ => getCurrentListMap(from) == getCurrentListMap(from + 1) + (_keys(from), _values(from)))

    @opaque
    @inlineOnce
    @pure
    def lemmaInListMapAfterAddingDiffThenInBefore(k: Long, otherKey: Long, value: Long, lm: ListMapLongKey[Long]): Unit = {
      require((lm + (otherKey, value)).contains(k))
      require(k != otherKey)
      if (!lm.contains(k)) {
        ListMapLongKeyLemmas.addStillNotContains(lm, otherKey, value, k)
      }

    }.ensuring(_ => lm.contains(k))

    @opaque
    @pure
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin(k: Long, from: Int): Unit = {
      require(valid)
      require((extraKeys & 2) == 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(getCurrentListMap(from).contains(k) && _keys(from) != k)

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 1) != 0) {
          lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from + 1) + (_keys(from), _values(from)))
          lemmaInListMapAfterAddingDiffThenInBefore(k, _keys(from), _values(from), getCurrentListMapNoExtraKeys(from + 1))

          ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from + 1), 0L, zeroValue, k)

        } else {
          lemmaInListMapAfterAddingDiffThenInBefore(k, _keys(from), _values(from), getCurrentListMapNoExtraKeys(from + 1))
        }

      }

    }.ensuring(_ => valid && getCurrentListMap(from + 1).contains(k))

    @opaque
    @pure
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero(k: Long, from: Int): Unit = {
      require(valid)
      require((extraKeys & 1) == 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(getCurrentListMap(from).contains(k) && _keys(from) != k)

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 2) != 0) {

          lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, getCurrentListMapNoExtraKeys(from + 1) + (_keys(from), _values(from)))
          lemmaInListMapAfterAddingDiffThenInBefore(k, _keys(from), _values(from), getCurrentListMapNoExtraKeys(from + 1))

          ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from + 1), Long.MinValue, minValue, k)

        } else {
          lemmaInListMapAfterAddingDiffThenInBefore(k, _keys(from), _values(from), getCurrentListMapNoExtraKeys(from + 1))
        }
      }

    }.ensuring(_ => valid && getCurrentListMap(from + 1).contains(k))

    @opaque
    @pure
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys(k: Long, from: Int): Unit = {
      require(valid)
      require((extraKeys & 1) != 0 && (extraKeys & 2) != 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(getCurrentListMap(from).contains(k) && _keys(from) != k)

      if (validKeyInArray(_keys(from))) {
        lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, getCurrentListMapNoExtraKeys(from + 1) + (_keys(from), _values(from)) + (0L, zeroValue))
        lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from + 1) + (_keys(from), _values(from)))
        lemmaInListMapAfterAddingDiffThenInBefore(k, _keys(from), _values(from), getCurrentListMapNoExtraKeys(from + 1))

        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from + 1), 0L, zeroValue, k)
        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(from + 1) + (0L, zeroValue), Long.MinValue, minValue, k)
      }
    }.ensuring(_ => valid && getCurrentListMap(from + 1).contains(k))

    @opaque
    @pure
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFst(k: Long, from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(getCurrentListMap(from).contains(k) && _keys(from) != k)

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 1) == 0) {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero(k, from)
        } else if ((extraKeys & 2) == 0) {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin(k, from)
        } else {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys(k, from)
        }
      }

    }.ensuring(_ => valid && getCurrentListMap(from + 1).contains(k))

    @opaque
    @pure
    def lemmaInListMapFromThenFromZero(from: Int, i: Int): Unit = {
      require(
        valid && from >= 0 && from < _keys.length &&
          i >= from && i < _keys.length &&
          validKeyInArray(_keys(i)) && getCurrentListMap(from).contains(_keys(i))
      )
      lemmaInListMapFromThenInFromSmaller(from, 0, i)

    }.ensuring(_ => getCurrentListMap(0).contains(_keys(i)))

    @opaque
    @inlineOnce
    @pure
    def lemmaInListMapFromThenInFromSmaller(from: Int, newFrom: Int, i: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(newFrom >= 0 && newFrom <= from)
      require(i >= from && i < _keys.length)
      require(validKeyInArray(_keys(i)) && getCurrentListMap(from).contains(_keys(i)))

      decreases(from - newFrom)
      if (from > newFrom) {
        lemmaInListMapFromThenInFromMinusOne(from, i)
        lemmaInListMapFromThenInFromSmaller(from - 1, newFrom, i)
      }
    }.ensuring(_ => getCurrentListMap(newFrom).contains(_keys(i)))

    @opaque
    @pure
    def lemmaInListMapFromThenInFromMinusOne(from: Int, i: Int): Unit = {
      require(valid)
      require(from > 0 && from < _keys.length)
      require(i >= from && i < _keys.length)
      require(validKeyInArray(_keys(i)) && getCurrentListMap(from).contains(_keys(i)))

      val currentLMFrom: ListMapLongKey[Long] = getCurrentListMap(from)
      val currentLMFromMinusOne: ListMapLongKey[Long] = getCurrentListMap(from - 1)
      if (validKeyInArray(_keys(from - 1))) {
        lemmaListMapRecursiveValidKeyArray(from - 1)
        ListMapLongKeyLemmas.addStillContains(getCurrentListMap(from), _keys(from - 1), _values(from - 1), _keys(i))
      }
    }.ensuring(_ => getCurrentListMap(from - 1).contains(_keys(i)))

    @opaque
    @pure
    def lemmaListMapContainsThenArrayContainsFrom(k: Long, from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(getCurrentListMap(from).contains(k))

      decreases(_keys.length - from)
      val currentListMap: ListMapLongKey[Long] = getCurrentListMap(from)
      if (k != 0 && k != Long.MinValue) {
        if (from + 1 < _keys.length) {
          if (_keys(from) != k) {
            lemmaInListMapFromThenFromPlsOneIfNotEqToFst(k, from)
            lemmaListMapContainsThenArrayContainsFrom(k, from + 1)
          }
        } else {
          if (validKeyInArray(_keys(from))) {
            if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, (getCurrentListMapNoExtraKeys(from) + (0L, zeroValue)))
              lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from))
            } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from))
            } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, getCurrentListMapNoExtraKeys(from))
            }
            ListMapLongKeyLemmas.emptyContainsNothing[Long](k)
            if (k != _keys(from)) {
              ListMapLongKeyLemmas.addStillNotContains(ListMapLongKey.empty[Long], _keys(from), _values(from), k)
              check(false)
            }
          } else {
            ListMapLongKeyLemmas.emptyContainsNothing[Long](k)
            if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
              ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(from), 0L, zeroValue, k)
              ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(from), Long.MinValue, minValue, k)
              lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, (getCurrentListMapNoExtraKeys(from) + (0L, zeroValue)))
              lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from))
            } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
              ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(from), 0L, zeroValue, k)
              lemmaInListMapAfterAddingDiffThenInBefore(k, 0L, zeroValue, getCurrentListMapNoExtraKeys(from))
            } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
              ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(from), Long.MinValue, minValue, k)
              lemmaInListMapAfterAddingDiffThenInBefore(k, Long.MinValue, minValue, getCurrentListMapNoExtraKeys(from))
            }
            check(false)
          }
        }
      }
    }.ensuring(_ =>
      valid &&
        (if (k != 0 && k != Long.MinValue) arrayContainsKeyTailRec(_keys, k, from) else if (k == 0) (extraKeys & 1) != 0 else (extraKeys & 2) != 0)
    )

    //------------------END----------------------------------------------------------------------------------------------------------------------------------
    //------------------EQUIVALENCE BETWEEN LISTMAP AND ARRAY------------------------------------------------------------------------------------------------



    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(a: Array[Long], i: Int, j: Int, x: Int, index: Int, vacantIndex: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(vacantIndex >= 0 && vacantIndex < a.length)
      require(a(vacantIndex) == Long.MinValue)
      require(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantIndex)(a(j), a, mask) == Found(j))

      decreases(MAX_ITER - x)
      if (a(index) == a(j)) {
        check(
          seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantIndex)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantIndex)(
            a(j),
            a,
            mask
          )
        )
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(a, i, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, vacantIndex)
      }

    }.ensuring(_ =>
      seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantIndex)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantIndex)(
        a(j),
        a,
        mask
      )
    )

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(a: Array[Long], i: Int, j: Int, x: Int, index: Int, resX: Int, resIndex: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(resX >= 0 && resX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)

      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == Intermediate(false, resIndex, resX))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, resIndex, resX))

      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask)
      )

      decreases(MAX_ITER - x)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)

      check(seekEntryDecoupled(a(j))(a, mask) == Found(j))
      val newArray = a.updated(i, Long.MinValue)
      assert(a(j) == newArray(j))

      if (x == resX) {
        assert(index == resIndex)
        if (a(index) == a(j)) {
          assert(j == index)
          check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))
        } else {
          assert(a(index) == Long.MinValue)
          check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(a(j), a, mask))
          check(seekEntryOrOpenDecoupled(newArray(j))(newArray, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(newArray(j), newArray, mask))
          lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(a, i, j, x, index, index)
          check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))
        }
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(a, i, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, resX, resIndex)
      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))

    @opaque
    @pure
    def lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI(
        a: Array[Long],
        i: Int,
        j: Int,
        x: Int,
        index: Int,
        intermediateBeforeX: Int,
        intermediateBeforeIndex: Int,
        intermediateAfterX: Int,
        intermediateAfterIndex: Int,
        undefinedAfter: Boolean
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(intermediateBeforeX >= 0 && intermediateBeforeX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(intermediateBeforeIndex >= 0 && intermediateBeforeIndex < a.length)

      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == Intermediate(false, intermediateBeforeIndex, intermediateBeforeX))
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) ==
          Intermediate(undefinedAfter, intermediateAfterIndex, intermediateAfterX)
      )

      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, intermediateBeforeIndex, intermediateBeforeX))
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) ==
          Intermediate(undefinedAfter, intermediateAfterIndex, intermediateAfterX)
      )

      require(Intermediate(false, intermediateBeforeIndex, intermediateBeforeX) != Intermediate(undefinedAfter, intermediateAfterIndex, intermediateAfterX))

      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))

      if (a(index) == Long.MinValue) {
        check(false)
      } else if (a(index) == 0) {
        check(false)
      } else if (a(index) == a(j)) {
        check(false)
      } else if (a.updated(i, Long.MinValue).apply(index) == Long.MinValue) {
        check(a(index) != Long.MinValue)
        check(a(index) != 0)
        check(a(index) != a(j))
        check(index == intermediateAfterIndex)
        check(intermediateAfterIndex == i)
        check(intermediateAfterX < intermediateBeforeX)
      } else {
        lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          intermediateBeforeX,
          intermediateBeforeIndex,
          intermediateAfterX,
          intermediateAfterIndex,
          undefinedAfter
        )
      }

    }.ensuring(_ => !undefinedAfter && intermediateAfterIndex == i && intermediateAfterX < intermediateBeforeX)

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(a: Array[Long], i: Int, j: Int, x: Int, index: Int, vacantBefore: Int, vacantAfter: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0) //5
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask)) //10
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(vacantBefore >= 0 && vacantBefore < a.length)
      require(vacantAfter >= 0 && vacantAfter < a.length)
      require(a(vacantBefore) == Long.MinValue)
      require(a.updated(i, Long.MinValue).apply(vacantAfter) == Long.MinValue)
      require(vacantAfter == i)
      require(index >= 0 && index < a.length)
      require(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantBefore)(a(j), a, mask) == Found(j))

      decreases(MAX_ITER - x)

      if (a(index) == a(j)) {
        check(j == index)
        check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) == Found(j))
      } else {
        lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(a, i, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, vacantBefore, vacantAfter)
      }

    }.ensuring(_ => seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) == Found(j))

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(
        a: Array[Long],
        i: Int,
        j: Int,
        x: Int,
        index: Int,
        intermediateBeforeX: Int,
        intermediateBeforeIndex: Int,
        intermediateAfterX: Int,
        intermediateAfterIndex: Int
    )(implicit mask: Int): Unit = {

      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0) //5
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask)) //10
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(intermediateBeforeX >= 0 && intermediateBeforeX <= MAX_ITER)
      require(intermediateAfterX >= 0 && intermediateAfterX <= MAX_ITER)
      require(index >= 0 && index < a.length) //15
      require(intermediateBeforeIndex >= 0 && intermediateBeforeIndex < a.length)
      require(intermediateAfterIndex >= 0 && intermediateAfterIndex < a.length)

      require(intermediateAfterX < intermediateBeforeX)
      require(a.updated(i, Long.MinValue).apply(intermediateAfterIndex) == Long.MinValue)

      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == Intermediate(false, intermediateBeforeIndex, intermediateBeforeX)) //20
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, intermediateBeforeIndex, intermediateBeforeX))
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) ==
          Intermediate(false, intermediateAfterIndex, intermediateAfterX)
      )

      require(
        if (x <= intermediateAfterX)
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) ==
            seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask)
        else
          seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, intermediateAfterIndex)(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask) == seekEntryOrOpenDecoupled(
            a.updated(i, Long.MinValue).apply(j)
          )(a.updated(i, Long.MinValue), mask)
      )
      require(x <= intermediateBeforeX)
      require(intermediateAfterIndex == i)
      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))
      check(a(intermediateBeforeIndex) == Long.MinValue || a(intermediateBeforeIndex) == a(j))

      if (a(index) == a.updated(i, Long.MinValue).apply(index) && a(index) == a(j)) {
        check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))
      } else if (a(index) == Long.MinValue) {
        check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(a(j), a, mask))
        check(index == intermediateBeforeIndex)
        check(x == intermediateBeforeX)
        lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(a, i, j, x, index, intermediateBeforeIndex, intermediateAfterIndex)(mask)
      } else if (x == intermediateAfterX) {
        check(index == intermediateAfterIndex)
        check(a.updated(i, Long.MinValue).apply(index) == Long.MinValue)
        check(
          seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, intermediateAfterIndex)(
            a.updated(i, Long.MinValue).apply(j),
            a.updated(i, Long.MinValue),
            mask
          )
        )
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(a, i, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, intermediateBeforeX, intermediateBeforeIndex, intermediateAfterX, intermediateAfterIndex)
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(a, i, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, intermediateBeforeX, intermediateBeforeIndex, intermediateAfterX, intermediateAfterIndex)

      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2(a: Array[Long], i: Int, j: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      val intermediateBefore = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))
      intermediateBefore match {
        case Intermediate(undefined, intermediateBeforeIndex, intermediateBeforeX) => {
          if (undefined) {
            check(false)
          } else {
            if (
              seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) ==
                seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask)
            ) {
              lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(a, i, j, 0, toIndex(a(j), mask), intermediateBeforeX, intermediateBeforeIndex)(mask)
              check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))
            } else {
              val intermediateAfter = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, Long.MinValue).apply(j), mask))(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask)

              intermediateAfter match {
                case Intermediate(undefined, intermediateAfterIndex, intermediateAfterX) => {
                  lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI(a, i, j, 0, toIndex(a(j), mask), intermediateBeforeX, intermediateBeforeIndex, intermediateAfterX, intermediateAfterIndex, undefined)
                  check(!undefined)
                  check(intermediateAfterIndex == i)
                  check(a.updated(i, Long.MinValue).apply(intermediateAfterIndex) == Long.MinValue)
                  check(
                    seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask) ==
                      seekKeyOrZeroReturnVacantTailRecDecoupled(intermediateAfterX, intermediateAfterIndex, intermediateAfterIndex)(a(j), a.updated(i, Long.MinValue), mask)
                  )
                  lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(a, i, j, 0, toIndex(a(j), mask), intermediateBeforeX, intermediateBeforeIndex, intermediateAfterX, intermediateAfterIndex)(mask)

                }
                case _ => check(false)
              }
            }
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))
          }
        }
        case _ => check(false)
      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, Long.MinValue).apply(j))(a.updated(i, Long.MinValue), mask))

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex(a: Array[Long], i: Int, startIndex: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(startIndex >= 0)
      require(startIndex < a.length)
      require(validKeyInArray(a(i)))
      require(arrayNoDuplicates(a, 0))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      decreases(a.length - startIndex)

      assert(a(i) != 0 && a(i) != Long.MinValue)
      val newArray = a.updated(i, Long.MinValue)

      if (startIndex != i && validKeyInArray(a(startIndex))) {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2(a, i, startIndex)(mask)
        lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, startIndex)
      }
      if (startIndex < a.length - 1) {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex(a, i, startIndex + 1)
      }

    }.ensuring(_ => arrayForallSeekEntryOrOpenFound(startIndex)(a.updated(i, Long.MinValue), mask))

    @opaque
    @pure
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpen(a: Array[Long], i: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(a(i)))
      require(arrayNoDuplicates(a, 0))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      assert(a(i) != 0 && a(i) != Long.MinValue)
      lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex(a, i, 0)(mask)

    }.ensuring(_ => arrayForallSeekEntryOrOpenFound(0)(a.updated(i, Long.MinValue), mask))

    @opaque
    @pure
    def lemmaPutValidKeyPreservesSeekKeyOrZeroReturnVacantTailRecDecoupled(a: Array[Long], i: Int, k: Long, j: Int, x: Int, index: Int, vacantSpotIndex: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(index >= 0 && index < mask + 1)
      require(x <= MAX_ITER && x >= 0)
      require(vacantSpotIndex >= 0 && vacantSpotIndex < mask + 1)
      require(a(vacantSpotIndex) == Long.MinValue)
      require(a.updated(i, k).apply(vacantSpotIndex) == Long.MinValue)
      require(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a(j), a, mask) == Found(j))

      decreases(MAX_ITER - x)

      val resBefore = seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a(j), a, mask)

      if (x >= MAX_ITER) {
        check(false)
      } else if (a(index) == a(j)) {
        assert(index == j)

      } else if (a(index) == 0) {
        check(false)
      } else {
        assert(index != j)
        lemmaPutValidKeyPreservesSeekKeyOrZeroReturnVacantTailRecDecoupled(a, i, k, j, x + 1, (index + 2 * (x + 1) * x - 3) & mask, vacantSpotIndex)
        check(
          seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a(j), a, mask) ==
            seekKeyOrZeroReturnVacantTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask, vacantSpotIndex)(a(j), a, mask)
        )

        if (seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Undefined()) {
          check(false)
        }
        if (seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Found(index)) {
          check(a.updated(i, k).apply(index) == a(j))
          //TODO Use noDuplicate property
          val q = a(j)
          val newArray = a.updated(i, k)
          assert(q == a.updated(i, k).apply(j))
          assert(q == a.updated(i, k).apply(index))
          if (j < index) {
            check(arrayContainsKeyTailRec(newArray, q, j))
            check(arrayContainsKeyTailRec(newArray, q, index))
            lemmaArrayContainsFromImpliesContainsFromSmaller(newArray, q, index, j + 1)
            check(arrayContainsKeyTailRec(newArray, q, j + 1))
            check(arrayNoDuplicates(a, 0))
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, 0, List())
            check(arrayNoDuplicates(newArray, 0))
            lemmaNoDuplicateFromThenFromBigger(newArray, 0, j)
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(newArray, q, j, Nil())

            check(false)
          }
          if (index < j) {
            check(arrayContainsKeyTailRec(newArray, q, j))
            check(arrayContainsKeyTailRec(newArray, q, index))
            lemmaArrayContainsFromImpliesContainsFromSmaller(newArray, q, j, index + 1)
            check(arrayContainsKeyTailRec(newArray, q, index + 1))
            check(arrayNoDuplicates(a, 0))
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, 0, List())
            check(arrayNoDuplicates(newArray, 0))
            lemmaNoDuplicateFromThenFromBigger(newArray, 0, index)
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(newArray, q, index, Nil())

            check(false)
          }
          check(index == j)
          check(false)
        }
        if (seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a.updated(i, k).apply(j), a.updated(i, k), mask) == MissingVacant(vacantSpotIndex)) {
          check(a.updated(i, k).apply(index) == 0)
          check(false)
        }

      }

    }.ensuring(_ =>
      seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a(j), a, mask) ==
        seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantSpotIndex)(a.updated(i, k).apply(j), a.updated(i, k), mask)
    )

    @opaque
    @pure
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1(a: Array[Long], i: Int, k: Long, j: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, k).apply(j), mask))(a.updated(i, k).apply(j), a.updated(i, k), mask)
      )

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))

      val intermediateBefore = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask)
      val intermediateAfter = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, k).apply(j), mask))(a.updated(i, k).apply(j), a.updated(i, k), mask)
      assert(intermediateBefore == intermediateAfter)
      intermediateBefore match {
        case Intermediate(undefined, index, x) if (undefined) => {}
        case Intermediate(undefined, index, x) if (!undefined) => {
          if (a(index) == a(j)) {} else if (a(index) == 0) {
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == MissingZero(index))
            check(arrayForallSeekEntryOrOpenFound(0)(a, mask))
            lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
            check(false)
          } else {
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(a(j), a, mask))

            check(
              seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask) ==
                seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(a.updated(i, k).apply(j), a.updated(i, k), mask)
            )

            lemmaPutValidKeyPreservesSeekKeyOrZeroReturnVacantTailRecDecoupled(a, i, k, j, x, index, index)(mask)

          }
        }
      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask))

    @opaque
    @pure
    def lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledFoundKeyThenSameAfterChangingI(a: Array[Long], i: Int, k: Long, j: Int, index: Int, x: Int, resIndex: Int, resX: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(resX <= MAX_ITER)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)
      require(a(resIndex) == a(j))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, resIndex, resX))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask))

      decreases(MAX_ITER - x)
      if (a(index) == 0) {
        check(false)
      } else if (a(index) == Long.MinValue) {
        check(false)
      } else if (a(index) == a(j)) {
        check(index == resIndex)
      } else {
        lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledFoundKeyThenSameAfterChangingI(a, i, k, j, (index + 2 * (x + 1) * x - 3) & mask, x + 1, resIndex, resX)
      }

    }.ensuring(_ => seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Intermediate(false, resIndex, resX))

    @opaque
    @pure
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(a: Array[Long], i: Int, k: Long, j: Int, index: Int, x: Int, vacantBefore: Int, vacantAfter: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x <= MAX_ITER)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(vacantBefore == i)
      require(a(vacantBefore) == Long.MinValue)
      require(vacantAfter >= 0 && vacantAfter < a.length)
      require(a(vacantAfter) == Long.MinValue)
      require(vacantAfter != vacantBefore)
      require(seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, k).apply(j), a.updated(i, k), mask))
      require(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantBefore)(a(j), a, mask))
      require(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantBefore)(a(j), a, mask) == Found(j))

      decreases(MAX_ITER - x)

      if (a(index) == a(j)) {
        check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Found(index))
        check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Found(j))
      } else {
        lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(a, i, k, j, (index + 2 * (x + 1) * x - 3) & mask, x + 1, vacantBefore, vacantAfter)
        check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, k).apply(j), a.updated(i, k), mask) == Found(j))
      }

    }.ensuring(_ => seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantAfter)(a.updated(i, k).apply(j), a.updated(i, k), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, vacantBefore)(a(j), a, mask))

    @opaque
    @pure
    def lemmaPutValidKeyPreservesVacantIsAtI(a: Array[Long], i: Int, k: Long, j: Int, index: Int, x: Int, resIntermediateIndex: Int, resIntermediateX: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x <= MAX_ITER)
      require(x >= 0)
      require(resIntermediateX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIntermediateIndex >= 0 && resIntermediateIndex < a.length)
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == Intermediate(false, resIntermediateIndex, resIntermediateX))
      require(resIntermediateIndex == i)
      require(a(resIntermediateIndex) == Long.MinValue)
      require(
        if (x <= resIntermediateX)
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, resIntermediateIndex, resIntermediateX)
        else seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask) == Found(j)
      )
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, k).apply(j), mask))(a.updated(i, k).apply(j), a.updated(i, k), mask) ==
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, k).apply(j), a.updated(i, k), mask)
      )

      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))
      check(seekKeyOrZeroReturnVacantTailRecDecoupled(resIntermediateX, resIntermediateIndex, resIntermediateIndex)(a(j), a, mask) == Found(j))

      val intermediateAfter = seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, k).apply(j), a.updated(i, k), mask)
      intermediateAfter match {
        case Intermediate(undefined, indexIntermediateAfter, xIntermediateAfter) => {
          if (x < xIntermediateAfter) {
            lemmaPutValidKeyPreservesVacantIsAtI(a, i, k, j, (index + 2 * (x + 1) * x - 3) & mask, x + 1, resIntermediateIndex, resIntermediateX)
          } else {
            assert(x == xIntermediateAfter)
            assert(index == indexIntermediateAfter)
            assert(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask) == Found(j))
            if (a.updated(i, k).apply(index) == a.updated(i, k).apply(j)) {
              assert(!undefined)
              check(seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask) == Found(index))
            } else {
              if (a.updated(i, k).apply(index) == 0) {
                check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask))
                check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask) == MissingVacant(resIntermediateIndex))
                check(false)
              }
              check(a.updated(i, k).apply(index) == Long.MinValue)
              check(seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, index)(a.updated(i, k).apply(j), a.updated(i, k), mask))
              check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask))
              check(seekKeyOrZeroReturnVacantTailRecDecoupled(x, index, resIntermediateIndex)(a(j), a, mask) == Found(j))

              lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(a, i, k, j, index, x, resIntermediateIndex, index)
            }
          }
        }
        case _ => check(false)
      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask) == Found(j))

    @pure
    @opaque
    def lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledThenChangedAtReturnedIndex(a: Array[Long], i: Int, k: Long, j: Int, index: Int, x: Int, resIndex: Int, resX: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x <= resX)
      require(x >= 0)
      require(resX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) == Intermediate(false, resIndex, resX))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) == Intermediate(false, resIndex, resX))
      require(
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) != seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a.updated(i, k).apply(j), mask))(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      )
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a(j), a, mask) != seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(a.updated(i, k).apply(j), a.updated(i, k), mask))

      decreases(MAX_ITER - x)

      if (index == resIndex) {
        assert(x == resX)
        check(resIndex == i)
      } else {
        assert(index != i)
        lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledThenChangedAtReturnedIndex(a, i, k, j, (index + 2 * (x + 1) * x - 3) & mask, x + 1, resIndex, resX)
        check(resIndex == i)

      }
    }.ensuring(_ => resIndex == i)

    @opaque
    @pure
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2(a: Array[Long], i: Int, k: Long, j: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))
      val newArray = a.updated(i, k)

      if (
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(newArray.apply(j), mask))(newArray.apply(j), newArray, mask)
      ) {
        lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1(a, i, k, j)(mask)
        check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(newArray.apply(j))(newArray, mask))
      } else {
        val intermediateBefore = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(a(j), mask))(a(j), a, mask)
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined) => {
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Undefined())
            lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == Found(j))
            check(false)
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(newArray.apply(j))(newArray, mask))
          }
          case Intermediate(undefinedBefore, indexBefore, xBefore) if (!undefinedBefore) => {
            check(!undefinedBefore)
            check(xBefore < MAX_ITER)
            check(a(indexBefore) == a(j) || a(indexBefore) == 0 || a(indexBefore) == Long.MinValue)
            if (a(indexBefore) == a(j)) {
              lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledFoundKeyThenSameAfterChangingI(a, i, k, j, toIndex(a(j), mask), 0, indexBefore, xBefore)(mask)
              check(false)
            }
            check(a(indexBefore) == 0 || a(indexBefore) == Long.MinValue)
            if (a(indexBefore) == 0) {
              check(false)
            }
            check(a(indexBefore) == Long.MinValue)

            lemmaSeekKeyOrZeroOrLongMinValueTailRecDecoupledThenChangedAtReturnedIndex(a, i, k, j, toIndex(a(j), mask), 0, indexBefore, xBefore)(mask)
            lemmaPutValidKeyPreservesVacantIsAtI(a, i, k, j, toIndex(a(j), mask), 0, indexBefore, xBefore)(mask)
          }
          case _ => {
            check(false)
            check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(newArray.apply(j))(newArray, mask)) //OK
          }
        }
        check(seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(newArray.apply(j))(newArray, mask))

      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(a(j))(a, mask) == seekEntryOrOpenDecoupled(a.updated(i, k).apply(j))(a.updated(i, k), mask))

    @pure
    @opaque
    def lemmaPutValidKeyAtRightPlaceThenFindsHelper1(a: Array[Long], i: Int, k: Long, x: Int, index: Int, resIndex: Int, resX: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, a, mask) == Intermediate(false, resIndex, resX))
      require(a(resIndex) == 0)
      require(resIndex == i)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == Intermediate(false, resIndex, resX))

      decreases(MAX_ITER - x)
      assert(resX < MAX_ITER)
      assert(a(index) != k)
      if (x == resX) {
        if (resIndex != index) {
          if (a(index) == 0 || a(index) == Long.MinValue) {
            check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == Intermediate(false, index, resX))
            check(false)
          } else {
            check(
              seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) ==
                seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask)
            )
            seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask) match {
              case Intermediate(undefined, tempIndex, tempX) => assert(tempX >= x + 1)
              case _                                         => check(false)
            }
            check(false)
          }
        }
        check(index == resIndex)
        check(a(index) == 0)
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))
      } else {
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask))
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a.updated(i, k), mask))
        lemmaPutValidKeyAtRightPlaceThenFindsHelper1(a, i, k, x + 1, (index + 2 * (x + 1) * x - 3) & mask, resIndex, resX)
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))
      }

    }.ensuring(_ => seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))

    def lemmaPutValidKeyAtRightPlaceThenFindsHelper2(a: Array[Long], i: Int, k: Long, x: Int, index: Int, resIndex: Int, resX: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, a, mask) == Intermediate(false, resIndex, resX))
      require(a(resIndex) == Long.MinValue)
      require(resIndex == i)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == Intermediate(false, resIndex, resX))
      decreases(MAX_ITER - x)
      assert(resX < MAX_ITER)
      assert(a(index) != k)
      if (x == resX) {
        if (resIndex != index) {
          if (a(index) == 0 || a(index) == Long.MinValue) {
            check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == Intermediate(false, index, resX))
            check(false)
          } else {
            check(
              seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) ==
                seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask)
            )
            seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask) match {
              case Intermediate(undefined, tempIndex, tempX) => assert(tempX >= x + 1)
              case _                                         => check(false)
            }
            check(false)
          }
        }
        check(index == resIndex)
        check(a(index) == Long.MinValue)
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))
      } else {
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a, mask))
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (index + 2 * (x + 1) * x - 3) & mask)(k, a.updated(i, k), mask))
        lemmaPutValidKeyAtRightPlaceThenFindsHelper2(a, i, k, x + 1, (index + 2 * (x + 1) * x - 3) & mask, resIndex, resX)
        check(seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))
      }

    }.ensuring(_ => seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a.updated(i, k), mask) == seekKeyOrZeroOrLongMinValueTailRecDecoupled(x, index)(k, a, mask))

    @pure
    @opaque
    def lemmaPutValidKeyAtRightPlaceThenFinds(a: Array[Long], i: Int, k: Long)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      val intermediateBefore = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, a, mask)
      val intermediateAfter = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k, mask))(k, a.updated(i, k), mask)

      if (seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i)) {
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined)                 => check(false)
          case Intermediate(undefined, index, x) if (a(index) == Long.MinValue) => check(false)
          case Intermediate(undefined, index, x) if (a(index) == k)             => check(false)
          case Intermediate(undefined, index, x) => {
            check(a(index) == 0)
            check(index == i)
            lemmaPutValidKeyAtRightPlaceThenFindsHelper1(a, i, k, 0, toIndex(k, mask), index, x)(mask)
            check(intermediateAfter == Intermediate(false, index, x))
            check(intermediateAfter == intermediateBefore)
            check(a.updated(i, k).apply(index) == k)
            check(seekEntryOrOpenDecoupled(k)(a.updated(i, k), mask) == Found(i))
          }
          case _ => check(false)
        }
        check(intermediateAfter == intermediateBefore)
        check(seekEntryOrOpenDecoupled(k)(a.updated(i, k), mask) == Found(i))
      } else {
        assert(seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined) => check(false)
          case Intermediate(undefined, index, x) if (a(index) == Long.MinValue) => {
            check(index == i)
            lemmaPutValidKeyAtRightPlaceThenFindsHelper2(a, i, k, 0, toIndex(k, mask), index, x)(mask)
            check(seekEntryOrOpenDecoupled(k)(a.updated(i, k), mask) == Found(i))

          }
          case Intermediate(undefined, index, x) if (a(index) == k) => check(false)
          case Intermediate(undefined, index, x)                    => check(false)
          case _                                                    => check(false)
        }

        check(seekEntryOrOpenDecoupled(k)(a.updated(i, k), mask) == Found(i))
      }

    }.ensuring(_ => seekEntryOrOpenDecoupled(k)(a.updated(i, k), mask) == Found(i))

    @opaque
    @pure
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a: Array[Long], i: Int, k: Long, startIndex: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(startIndex >= 0)
      require(startIndex < a.length)
      require(validKeyInArray(k))
      require(arrayNoDuplicates(a, 0))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      decreases(a.length - startIndex)

      val newArray = a.updated(i, k)
      if (startIndex == i) {
        if (startIndex < a.length - 1) {
          lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
        }
        lemmaPutValidKeyAtRightPlaceThenFinds(a, i, k)(mask)
        check(seekEntryOrOpenDecoupled(k)(newArray, mask) == Found(i))
        check(arrayForallSeekEntryOrOpenFound(startIndex)(newArray, mask))
      } else {
        if (validKeyInArray(a(startIndex))) {
          lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, 0, Nil())
          lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2(a, i, k, startIndex)(mask)
          lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, startIndex)
          if (startIndex < a.length - 1) {
            lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
          }
          check(arrayForallSeekEntryOrOpenFound(startIndex)(newArray, mask))

        } else {
          if (startIndex < a.length - 1) {
            lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
          }
          check(arrayForallSeekEntryOrOpenFound(startIndex)(newArray, mask) == arrayForallSeekEntryOrOpenFound(startIndex + 1)(newArray, mask))
          check(arrayForallSeekEntryOrOpenFound(startIndex)(newArray, mask))
        }
        check(arrayForallSeekEntryOrOpenFound(startIndex)(newArray, mask))
      }
    }.ensuring(_ => arrayForallSeekEntryOrOpenFound(startIndex)(a.updated(i, k), mask))

    @opaque
    @pure
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpen(k: Long, a: Array[Long], i: Int)(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == MissingZero(i) || seekEntryOrOpenDecoupled(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))

      lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, 0)(mask)

    }.ensuring(_ => arrayForallSeekEntryOrOpenFound(0)(a.updated(i, k), mask))

    @opaque
    @pure
    def lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(k: Long, i: Int, a: Array[Long], mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(validKeyInArray(k))
      require(seekEntryOrOpenDecoupled(k)(a, mask) == Found(i))

    }.ensuring(_ =>
      (seekEntryDecoupled(k)(a, mask) match {
        case Found(index) => index == i
        case _            => false
      })
    )

    @opaque
    @pure
    def lemmaSeekEntryOrOpenMissThenSeekEntryMiss(k: Long, i: Int, a: Array[Long], mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(validKeyInArray(k))
      require(seekEntryOrOpenDecoupled(k)(a, mask) match {
        case Found(_) => false
        case _        => true
      })

    }.ensuring(_ =>
      seekEntryDecoupled(k)(a, mask) match {
        case Found(_) => false
        case _        => true
      }
    )

    // ARRAY UTILITY FUNCTIONS ----------------------------------------------------------------------------------------

    @inline
    @pure
    def validKeyInArray(l: Long): Boolean = {
      l != 0 && l != Long.MinValue
    }

    @tailrec
    @pure
    def arrayCountValidKeysTailRec(
        a: Array[Long],
        from: Int,
        to: Int
    ): Int = {
      require(from <= to && from >= 0 && to <= a.length)
      require(a.length < Integer.MAX_VALUE)

      decreases(a.length - from)
      if (from >= to) {
        0
      } else {
        if (validKeyInArray(a(from))) {
          1 + arrayCountValidKeysTailRec(a, from + 1, to)
        } else {
          arrayCountValidKeysTailRec(a, from + 1, to)
        }
      }
    }.ensuring(res => res >= 0 && res <= a.length - from)

    @tailrec
    @pure
    def arrayContainsKeyTailRec(a: Array[Long], k: Long, from: Int): Boolean = {
      require(from >= 0)
      require(from < a.length)
      require(a.length < Integer.MAX_VALUE)

      decreases(a.length - from)
      if (a(from) == k) {
        true
      } else if (from + 1 < a.length) {
        arrayContainsKeyTailRec(a, k, from + 1)
      } else {
        false
      }
    }

    @tailrec
    @pure
    def arrayScanForKey(a: Array[Long], k: Long, from: Int): Int = {
      require(from >= 0 && from < a.length && a.length < Integer.MAX_VALUE)
      require(arrayContainsKeyTailRec(a, k, from))
      decreases(a.length - from)

      if (a(from) == k) from
      else arrayScanForKey(a, k, from + 1)
    }.ensuring(res => res >= 0 && res < a.length && a(res) == k)

    @tailrec
    @pure
    def arrayNoDuplicates(a: Array[Long], from: Int, acc: List[Long] = Nil[Long]()): Boolean = {
      require(from >= 0 && from <= a.length)
      require(a.length < Integer.MAX_VALUE)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      decreases(a.length - from)

      if (from >= a.length) true
      else if (validKeyInArray(a(from)) && acc.contains(a(from))) false
      else if (validKeyInArray(a(from))) arrayNoDuplicates(a, from + 1, Cons(a(from), acc))
      else arrayNoDuplicates(a, from + 1, acc)
    }

    /** Return true iff the two arrays contain the same elements from the index "from" included to the index
      * "to" not included
      *
      * @param a1
      * @param a2
      * @param from
      * @param to
      * @return
      */
    @tailrec
    @pure
    def arraysEqualsFromTo(a1: Array[Long], a2: Array[Long], from: Int, to: Int): Boolean = {
      require(a1.length == a2.length && from >= 0 && from <= to && to <= a1.length && a1.length < Integer.MAX_VALUE)

      decreases(to + 1 - from)
      if (from >= to) {
        true
      } else if (a1(from) != a2(from)) {
        false
      } else {
        arraysEqualsFromTo(a1, a2, from + 1, to)
      }
    }

    // --------------------- ARRAY RELATED LEMMAS ------------------------------------------

    @pure
    @opaque
    def lemmaArrayNoDuplicateRemoveOneThenNotContain(a: Array[Long], i: Int, k: Long): Unit = {
      require(i >= 0)
      require(i < a.length)
      require(a.length < Integer.MAX_VALUE)
      require(arrayNoDuplicates(a, 0))
      require(validKeyInArray(k))
      require(a(i) == k)

      if(arrayContainsKeyTailRec(a.updated(i, Long.MinValue), k, 0)){
        val j = arrayScanForKey(a.updated(i, Long.MinValue), k, 0)
        assert(j != i)
        check(a.updated(i, Long.MinValue).apply(j) == k)
        if(j > i){
          check(arrayContainsKeyTailRec(a, k, j))
          lemmaNoDuplicateFromThenFromBigger(a, 0, i)
          lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, j, i+1)
          lemmaArrayNoDuplicateThenKeysContainedNotEqual(a, k, i, Nil())
          check(false)
        } else if(i > j) {
          check(arrayContainsKeyTailRec(a, k, i))
          lemmaNoDuplicateFromThenFromBigger(a, 0, j)
          lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, i, j+1)
          lemmaArrayNoDuplicateThenKeysContainedNotEqual(a, k, j, Nil())
          check(false)
        }

      }

    }.ensuring(_ => !arrayContainsKeyTailRec(a.updated(i, Long.MinValue), k, 0))

    @pure
    @opaque
    def lemmaArrayContainsFromImpliesContainsFromZero(
        a: Array[Long],
        k: Long,
        from: Int
    ): Unit = {
      require(from >= 0)
      require(from < a.length)
      require(a.length < Integer.MAX_VALUE)
      require(arrayContainsKeyTailRec(a, k, from))

      decreases(from)
      if (from > 0) {
        lemmaArrayContainsFromImpliesContainsFromZero(a, k, from - 1)
      }
    }.ensuring(_ => arrayContainsKeyTailRec(a, k, 0))

    @pure
    @opaque
    def lemmaArrayContainsFromImpliesContainsFromSmaller(
        a: Array[Long],
        k: Long,
        from: Int,
        newFrom: Int
    ): Unit = {
      require(from >= 0)
      require(from < a.length)
      require(newFrom >= 0)
      require(newFrom <= from)
      require(a.length < Integer.MAX_VALUE)
      require(arrayContainsKeyTailRec(a, k, from))

      decreases(from)
      if (from > newFrom) {
        lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, from - 1, newFrom)
      }
    }.ensuring(_ => arrayContainsKeyTailRec(a, k, newFrom))

    @opaque
    @pure
    def lemmaAddKeyNoContainsInAccStillNoDuplicate(a: Array[Long], k: Long, from: Int, acc: List[Long], newAcc: List[Long]): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(ListOps.noDuplicate(newAcc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(!arrayContainsKeyTailRec(a, k, from))
      require(!acc.contains(k))
      require(validKeyInArray(k))
      require(arrayNoDuplicates(a, from, acc))
      require(ListSpecs.subseq(acc, newAcc))
      require(newAcc.contains(k))
      require(newAcc - k == acc)
      require(!newAcc.contains(0) && !newAcc.contains(Long.MinValue))
      decreases(a.length - from)

      if (from + 1 < a.length) {
        if (validKeyInArray(a(from))) {
          lemmaAddKeyNoContainsInAccStillNoDuplicate(a, k, from + 1, a(from) :: acc, a(from) :: newAcc)
        } else {
          lemmaAddKeyNoContainsInAccStillNoDuplicate(a, k, from + 1, acc, newAcc)
        }
      }
    }.ensuring(_ => arrayNoDuplicates(a, from, newAcc))

    @opaque
    @pure
    def lemmaListMinusENotContainedEqualsList(e: Long, l: List[Long]): Unit = {
      require(!l.contains(e))
      decreases(l)

      l match {
        case head :: tl => lemmaListMinusENotContainedEqualsList(e, tl)
        case Nil()      =>
      }
    }.ensuring(_ => l - e == l)

    @opaque
    @pure
    def lemmaLMinusHeadEqualsTail(head: Long, tail: List[Long]): Unit = {
      require(!tail.contains(head))
      assert(!tail.content.contains(head))

      val l = head :: tail
      l match {
        case hd :: tl => lemmaListMinusENotContainedEqualsList(head, tl)
        case Nil()    => ()
      }

    }.ensuring(_ => (head :: tail) - head == tail)

    @opaque
    @pure
    def lemmaPutNewValidKeyPreservesNoDuplicate(a: Array[Long], k: Long, i: Int, from: Int, acc: List[Long]): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require((from > i && acc.contains(k)) || (from <= i && !acc.contains(k)))
      require(arrayNoDuplicates(a, 0))
      require(arrayNoDuplicates(a, from, acc))
      require(i >= 0 && i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKeyTailRec(a, k, 0))
      decreases(a.length - from)

      if (from + 1 < a.length) {
        if (from == i) {
          val newArray = a.updated(i, k)
          check(arrayContainsKeyTailRec(newArray, k, from))
          check(arrayNoDuplicates(newArray, from, acc) == arrayNoDuplicates(newArray, from + 1, k :: acc))

          if (arrayContainsKeyTailRec(a, k, from + 1)) {
            lemmaArrayContainsFromImpliesContainsFromZero(a, k, from)
            check(false)
          }
          if (validKeyInArray(a(from))) {
            lemmaListSubSeqRefl(acc)
            lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, a(from) :: acc, acc, from + 1)
          } else {}
          check(arrayNoDuplicates(a, from + 1, acc))
          lemmaListSubSeqRefl(acc)
          lemmaLMinusHeadEqualsTail(k, acc)
          lemmaAddKeyNoContainsInAccStillNoDuplicate(a, k, from + 1, acc, k :: acc)
          lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, from + 1, k :: acc)
          check(arrayNoDuplicates(a.updated(i, k), from, acc))
        } else {
          if (validKeyInArray(a(from))) {
            if (a(from) == k) {
              check(arrayContainsKeyTailRec(a, k, from))
              lemmaArrayContainsFromImpliesContainsFromZero(a, k, from)
              check(false)
            }
            assert(a(from) != k)
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, from + 1, a(from) :: acc)
          } else {
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, from + 1, acc)
          }
          check(arrayNoDuplicates(a.updated(i, k), from, acc))
        }

        check(arrayNoDuplicates(a.updated(i, k), from, acc))
      }
    }.ensuring(_ => arrayNoDuplicates(a.updated(i, k), from, acc))

    @opaque
    @pure
    def lemmaPutNonValidKeyPreservesNoDuplicate(a: Array[Long], l: Long, i: Int, from: Int, acc: List[Long]): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(arrayNoDuplicates(a, 0))
      require(arrayNoDuplicates(a, from, acc))
      require(i >= 0 && i < a.length)
      require(!validKeyInArray(l))
      decreases(a.length - from)

      if (from + 1 < a.length) {
        if (validKeyInArray(a(from))) {
          lemmaListSubSeqRefl(acc)
          lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, a(from) :: acc, acc, from + 1)
        }
        if (from == i) {
          lemmaPutNonValidKeyPreservesNoDuplicate(a, l, i, from + 1, acc)
        } else {
          if (validKeyInArray(a(from))) {
            lemmaPutNonValidKeyPreservesNoDuplicate(a, l, i, from + 1, a(from) :: acc)
          } else {
            lemmaPutNonValidKeyPreservesNoDuplicate(a, l, i, from + 1, acc)
          }
        }
      }
    }.ensuring(_ => arrayNoDuplicates(a.updated(i, l), from, acc))

    @opaque
    @pure
    def lemmaArrayNoDuplicateThenKeysContainedNotEqual(a: Array[Long], k: Long, from: Int, acc: List[Long]): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(validKeyInArray(k))
      require(from >= 0)
      require(from + 1 < a.length)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(arrayContainsKeyTailRec(a, k, from + 1))
      require(arrayNoDuplicates(a, from, acc))

      if (validKeyInArray(a(from))) {
        check(arrayNoDuplicates(a, from + 1, Cons(a(from), acc)))
        lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, acc, Nil(), from)
        // lemmaArrayNoDuplicateFromThenHeadNotInTail(a, from)
        check(arrayNoDuplicates(a, from + 1, Cons(a(from), Nil())))
        lemmaArrayNoDuplicateFromNotContainsKeysInAcc(a, from + 1, a(from), Cons(a(from), Nil()))
        check(!arrayContainsKeyTailRec(a, a(from), from + 1))
        check(a(from) != k)
      } else {
        check(a(from) != k)
      }

    }.ensuring(_ => a(from) != k)

    @opaque
    @pure
    def lemmaArrayNoDuplicateFromNotContainsKeysInAcc(a: Array[Long], from: Int, k: Long, acc: List[Long]): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(arrayNoDuplicates(a, from, acc))
      require(acc.contains(k))

      decreases(a.length - from)

      if (from != a.length - 1) {
        if (validKeyInArray(a(from))) {
          lemmaListSubSeqRefl(Cons(a(from), acc))
          ListSpecs.subseqTail(Cons(a(from), acc), Cons(a(from), acc))
          check(ListSpecs.subseq(acc, Cons(a(from), acc)))
          lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, Cons(a(from), acc), acc, from + 1)
        }
        lemmaArrayNoDuplicateFromNotContainsKeysInAcc(a, from + 1, k, acc)
      }

    }.ensuring(_ => !arrayContainsKeyTailRec(a, k, from))

    @opaque
    @pure
    def lemmaListSubSeqRefl(l: List[Long]): Unit = {
      decreases(l)
      l match {
        case head :: tl => {
          assert(head == head)
          lemmaListSubSeqRefl(tl)
        }
        case Nil() =>
      }

    }.ensuring(_ => ListSpecs.subseq(l, l))

    @opaque
    @pure
    def lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a: Array[Long], acc: List[Long], newAcc: List[Long], from: Int): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from <= a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(!newAcc.contains(0) && !newAcc.contains(Long.MinValue))
      require(ListSpecs.subseq(newAcc, acc))
      require({
        ListSpecs.noDuplicateSubseq(newAcc, acc)
        arrayNoDuplicates(a, from, acc)
      })
      decreases(a.length - from)

      if (from < a.length) {
        val k = a(from)
        if (validKeyInArray(k)) {
          if (!acc.contains(k)) {
            lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, Cons(k, acc), Cons(k, newAcc), from + 1)
            ListSpecs.noDuplicateSubseq(Cons(k, newAcc), Cons(k, acc))
          }
        } else {
          lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, acc, newAcc, from + 1)
        }
      }

    }.ensuring(_ => arrayNoDuplicates(a, from, newAcc))

    @opaque
    @pure
    def lemmaNoDuplicateFromThenFromBigger(a: Array[Long], from: Int, newFrom: Int): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from <= a.length)
      require(newFrom >= from && newFrom <= a.length)
      require(arrayNoDuplicates(a, from))

      decreases(newFrom - from)

      if (from != newFrom) {
        assert(from < a.length)
        if (newFrom != a.length) {
          if (validKeyInArray(a(from))) {
            lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, Cons(a(from), Nil()), Nil(), from + 1)
          }
          lemmaNoDuplicateFromThenFromBigger(a, from + 1, newFrom)
        }
      }

    }.ensuring(_ => arrayNoDuplicates(a, newFrom))

    @opaque
    @pure
    def lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a: Array[Long], mask: Int, from: Int, newFrom: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(from >= 0 && from <= a.length)
      require(newFrom >= from && newFrom <= a.length)
      require(arrayForallSeekEntryOrOpenFound(from)(a, mask))

      decreases(newFrom - from)

      if (from < newFrom) {
        lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, from + 1, newFrom)
      }
    }.ensuring(_ => arrayForallSeekEntryOrOpenFound(newFrom)(a, mask))

    @pure
    @opaque
    def lemmaCountingValidKeysAtTheEnd(a: Array[Long], from: Int, to: Int): Unit = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length)

      decreases(to - from)
      if (from + 1 < to) {
        lemmaCountingValidKeysAtTheEnd(a, from + 1, to)
      } else {
        // checks are needed
        check(from + 1 == to)
        check(
          if (validKeyInArray(a(to - 1)))
            arrayCountValidKeysTailRec(a, from, to - 1) + 1 == arrayCountValidKeysTailRec(a, from, to)
          else
            arrayCountValidKeysTailRec(a, from, to - 1) == arrayCountValidKeysTailRec(a, from, to)
        )
      }
    }.ensuring(_ =>
      if (validKeyInArray(a(to - 1)))
        arrayCountValidKeysTailRec(a, from, to - 1) + 1 == arrayCountValidKeysTailRec(a, from, to)
      else
        arrayCountValidKeysTailRec(a, from, to - 1) == arrayCountValidKeysTailRec(a, from, to)
    )

    @pure
    @opaque
    def lemmaKnownPivotPlusOneIsPivot(a: Array[Long], from: Int, to: Int, pivot: Int): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length && pivot >= from && pivot < to - 1 &&
          LongMapLongV.isPivot(a, from, to, pivot)
      )

      lemmaCountingValidKeysAtTheEnd(a, from, pivot + 1)

    }.ensuring(_ => LongMapLongV.isPivot(a, from, to, pivot + 1))

    @inline
    @pure
    def isPivot(a: Array[Long], from: Int, to: Int, pivot: Int): Boolean = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length && pivot >= from && pivot < to)
      arrayCountValidKeysTailRec(a, from, pivot) + arrayCountValidKeysTailRec(a, pivot, to) == arrayCountValidKeysTailRec(a, from, to)
    }

    @pure
    @opaque
    def lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(a: Array[Long], from: Int, to: Int, pivot: Int, knownPivot: Int): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to <= a.length &&
          pivot >= from && pivot < to &&
          knownPivot <= pivot && knownPivot >= from &&
          isPivot(a, from, to, knownPivot)
      )

      decreases(pivot - knownPivot)
      if (knownPivot != pivot) {
        lemmaKnownPivotPlusOneIsPivot(a, from, to, knownPivot)
        check(isPivot(a, from, to, knownPivot + 1))
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(a, from, to, pivot, knownPivot + 1)
        check(isPivot(a, from, to, pivot))
      }
      check(isPivot(a, from, to, pivot))
    }.ensuring(_ => isPivot(a, from, to, pivot))

    @pure
    @opaque
    def lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a: Array[Long], from: Int, to: Int, pivot: Int): Unit = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to <= a.length && pivot >= from && pivot <= to)

      if (pivot < to) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(a, from, to, pivot, from)
      } else {
        check(to == pivot) //it is needed
      }

    }.ensuring(_ => arrayCountValidKeysTailRec(a, from, pivot) + arrayCountValidKeysTailRec(a, pivot, to) == arrayCountValidKeysTailRec(a, from, to))

    @pure
    @opaque
    def lemmaRemoveValidKeyAndNumKeysToImpliesToALength(a: Array[Long], i: Int, k: Long, to: Int): Unit = {
      require(i >= 0 && i < a.length)
      require(validKeyInArray(a(i)))
      require(!validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(to >= 0 && to <= a.length && to > i)
      require((arrayCountValidKeysTailRec(a.updated(i, k), i + 1, to) == arrayCountValidKeysTailRec(a, i + 1, to)))
      decreases(a.length + 1 - to)

      if (to != a.length) {
        if (validKeyInArray(a(to))) {
          lemmaValidKeyIncreasesNumOfKeys(a, i + 1, to)
          lemmaValidKeyIncreasesNumOfKeys(a.updated(i, k), i + 1, to)
        } else {
          lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a, i + 1, to)
          lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a.updated(i, k), i + 1, to)
        }
        lemmaRemoveValidKeyAndNumKeysToImpliesToALength(a, i, k, to + 1)
      }
    }.ensuring(_ => arrayCountValidKeysTailRec(a.updated(i, k), i + 1, a.length) == arrayCountValidKeysTailRec(a, i + 1, a.length))

    @pure
    @opaque
    def lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(a: Array[Long], i: Int, k: Long, from: Int): Unit = {
      require(i >= 0 && i < a.length)
      require(validKeyInArray(a(i)))
      require(!validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0 && from <= a.length && i >= from)
      require((arrayCountValidKeysTailRec(a.updated(i, k), from, i + 1) == arrayCountValidKeysTailRec(a, from, i + 1) - 1))

      decreases(from)

      if (from > 0) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from - 1, i + 1, from)
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), from - 1, i + 1, from)

        check(arrayCountValidKeysTailRec(a, from - 1, from) + arrayCountValidKeysTailRec(a, from, i + 1) == arrayCountValidKeysTailRec(a, from - 1, i + 1)) //needed
        check(arrayCountValidKeysTailRec(a.updated(i, k), from - 1, from) + arrayCountValidKeysTailRec(a.updated(i, k), from, i + 1) == arrayCountValidKeysTailRec(a.updated(i, k), from - 1, i + 1)) //needed

        lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(a, i, k, from - 1)
      }

    }.ensuring(_ => {
      arrayCountValidKeysTailRec(a.updated(i, k), 0, i + 1) == arrayCountValidKeysTailRec(a, 0, i + 1) - 1
    })

    @pure
    @opaque
    def lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray(a: Array[Long], i: Int, k: Long): Unit = {
      require(i >= 0 && i < a.length && validKeyInArray(a(i)) && !validKeyInArray(k) && a.length < Integer.MAX_VALUE)

      lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(a, i, k, i)
      lemmaRemoveValidKeyAndNumKeysToImpliesToALength(a, i, k, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, 0, a.length, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), 0, a.length, i + 1)

    }.ensuring(_ => arrayCountValidKeysTailRec(a.updated(i, k), 0, a.length) == arrayCountValidKeysTailRec(a, 0, a.length) - 1)

    @pure
    @opaque
    def lemmaValidKeyIncreasesNumOfKeys(a: Array[Long], from: Int, to: Int): Unit = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to < a.length && validKeyInArray(a(to)))

      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from, to + 1, to)

    }.ensuring(_ => arrayCountValidKeysTailRec(a, from, to + 1) == arrayCountValidKeysTailRec(a, from, to) + 1)

    @pure
    @opaque
    def lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a: Array[Long], from: Int, to: Int): Unit = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to < a.length && !validKeyInArray(a(to)))

      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from, to + 1, to)

    }.ensuring(_ => arrayCountValidKeysTailRec(a, from, to + 1) == arrayCountValidKeysTailRec(a, from, to))

    @pure
    @opaque
    def lemmaAddValidKeyAndNumKeysToImpliesToALength(a: Array[Long], i: Int, k: Long, to: Int): Unit = {
      require(i >= 0 && i < a.length)
      require(!validKeyInArray(a(i)) && validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(to >= 0 && to <= a.length && to > i)
      require((arrayCountValidKeysTailRec(a.updated(i, k), i + 1, to) == arrayCountValidKeysTailRec(a, i + 1, to)))
      decreases(a.length + 1 - to)

      if (to != a.length) {
        if (validKeyInArray(a(to))) {
          lemmaValidKeyIncreasesNumOfKeys(a, i + 1, to)
          lemmaValidKeyIncreasesNumOfKeys(a.updated(i, k), i + 1, to)
        } else {
          lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a, i + 1, to)
          lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a.updated(i, k), i + 1, to)
        }
        lemmaAddValidKeyAndNumKeysToImpliesToALength(a, i, k, to + 1)
      }
    }.ensuring(_ => arrayCountValidKeysTailRec(a.updated(i, k), i + 1, a.length) == arrayCountValidKeysTailRec(a, i + 1, a.length))

    @pure
    @opaque
    def lemmaAddValidKeyAndNumKeysFromImpliesFromZero(a: Array[Long], i: Int, k: Long, from: Int): Unit = {
      require(i >= 0 && i < a.length)
      require(!validKeyInArray(a(i)))
      require(validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0 && from <= a.length && i >= from)
      require((arrayCountValidKeysTailRec(a.updated(i, k), from, i + 1) == arrayCountValidKeysTailRec(a, from, i + 1) + 1))

      decreases(from)

      if (from > 0) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from - 1, i + 1, from)
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), from - 1, i + 1, from)

        check(arrayCountValidKeysTailRec(a, from - 1, from) + arrayCountValidKeysTailRec(a, from, i + 1) == arrayCountValidKeysTailRec(a, from - 1, i + 1)) //needed
        check(arrayCountValidKeysTailRec(a.updated(i, k), from - 1, from) + arrayCountValidKeysTailRec(a.updated(i, k), from, i + 1) == arrayCountValidKeysTailRec(a.updated(i, k), from - 1, i + 1)) //needed

        lemmaAddValidKeyAndNumKeysFromImpliesFromZero(a, i, k, from - 1)
      }

    }.ensuring(_ => {
      arrayCountValidKeysTailRec(a.updated(i, k), 0, i + 1) == arrayCountValidKeysTailRec(a, 0, i + 1) + 1
    })

    @pure
    @opaque
    def lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(a: Array[Long], i: Int, k: Long): Unit = {
      require(i >= 0 && i < a.length && !validKeyInArray(a(i)) && validKeyInArray(k) && a.length < Integer.MAX_VALUE)

      lemmaAddValidKeyAndNumKeysFromImpliesFromZero(a, i, k, i)
      lemmaAddValidKeyAndNumKeysToImpliesToALength(a, i, k, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, 0, a.length, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), 0, a.length, i + 1)

    }.ensuring(_ => arrayCountValidKeysTailRec(a.updated(i, k), 0, a.length) == arrayCountValidKeysTailRec(a, 0, a.length) + 1)

    @pure
    @opaque
    def lemmaValidKeyAtIImpliesCountKeysIsOne(a: Array[Long], i: Int): Unit = {
      require(i >= 0 && i < a.length && validKeyInArray(a(i)) && a.length < Integer.MAX_VALUE)

    }.ensuring(_ => arrayCountValidKeysTailRec(a, i, i + 1) == 1)

    @pure
    @opaque
    def lemmaArrayEqualsFromToReflexivity(a: Array[Long], from: Int, to: Int): Unit = {
      require(from >= 0 && from < to && to <= a.length && a.length < Integer.MAX_VALUE)
      decreases(to - from)
      if (from + 1 < to) {
        lemmaArrayEqualsFromToReflexivity(a, from + 1, to)
      }
    }.ensuring(_ => arraysEqualsFromTo(a, a, from, to))

    @pure
    @opaque
    def lemmaValidKeyIndexImpliesArrayContainsKey(a: Array[Long], k: Long, i: Int): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(i >= 0 && i < a.length)
      require(a(i) == k)

      LongMapLongV.lemmaArrayContainsFromImpliesContainsFromZero(a, k, i)
    }.ensuring(_ => arrayContainsKeyTailRec(a, k, 0))

  }

}
