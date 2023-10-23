/** Author: Samuel Chassot
  */
package ch.epfl.chassot

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
import scala.annotation.tailrec
import stainless.lang.StaticChecks._
// import stainless.lang.StaticChecks.WhileDecorations
import StaticChecks._
import MutableLongMap.LongMapFixedSize.validMask

object MutableLongMap {
  object Cell {
    def apply[@mutable T](v: T): Cell[T] = new Cell(v, true)
  }

  case class Cell[@mutable T] private (var v: T, private var owned: Boolean) {
    def isOwned: Boolean = owned

    @extern
    def takeFrom(other: Cell[T]): Unit = {
      require(isOwned && other.owned)
      other.owned = false
      owned = true
      v = other.v
    } ensuring (_ => v == old(other).v && !other.owned && owned)
  }

  /** Helper method to create a new empty LongMap
    *
    * @param defaultEntry
    * @return
    */
  @extern
  def getEmptyLongMap[V](defaultEntry: Long => V): LongMap[V] = {
    val m = 127
    assert(validMask(m))
    val emptyMap = LongMapFixedSize.getNewLongMapFixedSize(m, defaultEntry)
    LongMap(Cell(emptyMap))
  } ensuring (res => res.valid && res.size == 0)

  @mutable
  final case class LongMap[V](
      var underlying: Cell[LongMapFixedSize[V]]
  ) {
    // @pure
    // def completeImbalanced: Boolean = (_size + _vacant) > 0.5 * mask || _vacant > _size

    @pure
    def imbalanced(): Boolean = (2 * underlying.v._size) > underlying.v.mask

    @pure
    def size: Int = underlying.v.size

    @pure
    def isEmpty: Boolean = {
      require(valid)
      underlying.v.isEmpty
    } ensuring (_ => valid)

    @pure
    def contains(key: Long): Boolean = {
      require(valid)
      underlying.v.contains(key)
    } ensuring (res => valid && (res == map.contains(key)))

    @pure
    def apply(key: Long): V = {
      require(valid)
      underlying.v.apply(key)
    } ensuring (res =>
      valid
        && (if (contains(key)) res == map.get(key).get
            else res == underlying.v.defaultEntry(key))
    )

    def update(key: Long, v: V): Boolean = {
      require(valid)
      // println(f"Update: $key -> $v")
      // println(f"Current mask = ${underlying.v.mask}")
      // println(f"Current size = ${underlying.v._size}")
      // println(f"Current imbalance = ${imbalanced()}")
      // println(f"Current array = ${underlying.v._keys.toList}")
      val repacked = if (imbalanced()) {
        // println(f"Update: repack initiated")
        repack()
      } else {
        true
      }
      if (repacked) {
        underlying.v.update(key, v)
      } else {
        false
      }
    } ensuring (res => valid && (if (res) map.contains(key) && (map == old(this).map + (key, v)) else map == old(this).map))

    def remove(key: Long): Boolean = {
      require(valid)
      underlying.v.remove(key)
    } ensuring (res => valid && (if (res) map == old(this).map - key else map == old(this).map))

    @pure
    def computeNewMask(oldMask: Int, s: Int): Int = {
      require(validMask(oldMask))
      require(s >= 0 && s <= oldMask + 1)

      val newMask = if (s > (MAX_MASK >> 3)) {
        ((oldMask << 1) + 1) & MAX_MASK
      } else {

        var m = oldMask
        if (2 * s >= oldMask) m = ((m << 1) + 1) & MAX_MASK
        while (m > 8 && 8 * s < m) {
          decreases(m)
          m = m >>> 1
        }

        assert(validMask(m))
        assert(s <= m + 1)
        m
      }
      newMask
    } ensuring (res => validMask(res) && (res == MAX_MASK || (2 * s <= res + 1)))

    // @pure
    // def completeComputeNewMask(oldMask: Int, _vacant: Int, _size: Int): Int = {
    //   require(validMask(oldMask))
    //   require(_size >= 0 && _size <= oldMask + 1)
    //   require(_vacant >= 0 && _vacant + _size <= oldMask + 1)
    //   require(_vacant == 0)
    //   // require(_size < 268435456) // Smallest size that can trigger a problem with a certain mask
    //   var m = oldMask
    //   if (2 * (_size + _vacant) >= oldMask && !(5 * _vacant > oldMask)) {
    //     m = ((m << 1) + 1) & MAX_MASK
    //   }
    //   while (m > 8 && 8 * _size < m) {
    //     decreases(m)
    //     m = m >>> 1
    //   }
    //   m
    // } ensuring (res => validMask(res) && _size <= res + 1)

    def repack(): Boolean = {
      require(valid)

      val res = repackHelper()
      if (res._1) {
        underlying.takeFrom(res._2)
      }
      res._1
    } ensuring (res => valid && map == old(this).map)

    def repackHelper(): (Boolean, Cell[LongMapFixedSize[V]]) = {
      require(valid)

      val newMask: Int = computeNewMask(underlying.v.mask, underlying.v._size)
      // println(f"NewMask = $newMask")
      val newMap = Cell(LongMapFixedSize.getNewLongMapFixedSize(newMask, underlying.v.defaultEntry))
      val resExtraKeys = if ((underlying.v.extraKeys & 1) != 0 && (underlying.v.extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        val u1 = newMap.v.update(0L, underlying.v.zeroValue)
        val u2 = newMap.v.update(Long.MinValue, underlying.v.minValue)
        u1 && u2
      } else if ((underlying.v.extraKeys & 1) != 0 && (underlying.v.extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        newMap.v.update(0L, underlying.v.zeroValue)
      } else if ((underlying.v.extraKeys & 2) != 0 && (underlying.v.extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        newMap.v.update(Long.MinValue, underlying.v.minValue)
      } else {
        true
      }

      if (!resExtraKeys) {
        (false, Cell(LongMapFixedSize.getNewLongMapFixedSize(newMask, underlying.v.defaultEntry)))
      } else {
        assert(LongMapFixedSize.validMask(underlying.v.mask))
        assert((underlying.v._keys.length - 1) >= 0)
        val repackFromRes = repackFrom(newMap.v, underlying.v._keys.length - 1)
        (repackFromRes, if repackFromRes then newMap else Cell(LongMapFixedSize.getNewLongMapFixedSize(newMask, underlying.v.defaultEntry)))
      }
    } ensuring (res => res._1 == false || res._2.isOwned && res._2.v.valid && res._2.v.map == old(this).map)

    @tailrec
    def repackFrom(newMap: LongMapFixedSize[V], from: Int): Boolean = {
      require(valid)
      require(from >= 0 && from < underlying.v._keys.length)
      require(newMap.valid)
      require(newMap.mask + 1 >= underlying.v._size)
      require(
        LongMapFixedSize.getCurrentListMap(
          underlying.v._keys,
          underlying.v._values,
          underlying.v.mask,
          underlying.v.extraKeys,
          underlying.v.zeroValue,
          underlying.v.minValue,
          from + 1,
          underlying.v.defaultEntry
        ) == newMap.map
      )
      decreases(from)
      val currentKey = underlying.v._keys(from)
      // println(f"RepackFrom: from = $from, key = $currentKey")

      val currentValue = underlying.v._values(from).get(underlying.v.defaultEntry(0L))

      @ghost val newMapListMapBefore = newMap.map

      if (currentKey != 0 && currentKey != Long.MinValue) {

        // There is a key in the array, add it to the new map
        val res = newMap.update(currentKey, currentValue)

        ghostExpr(if (newMapListMapBefore.contains(currentKey)) {
          LongMapFixedSize.lemmaListMapContainsThenArrayContainsFrom(
            underlying.v._keys,
            underlying.v._values,
            underlying.v.mask,
            underlying.v.extraKeys,
            underlying.v.zeroValue,
            underlying.v.minValue,
            currentKey,
            from + 1,
            underlying.v.defaultEntry
          )
          LongMapFixedSize.lemmaNoDuplicateFromThenFromBigger(underlying.v._keys, 0, from)
          LongMapFixedSize.lemmaArrayNoDuplicateFromNotContainsKeysInAcc(underlying.v._keys, from + 1, currentKey, List(currentKey))
          check(false)
        } else { () })

        assert(!newMapListMapBefore.contains(currentKey))
        assert(valid)
        if (res) {
          assert(newMap.map == newMapListMapBefore + (currentKey, currentValue))
          if (from > 0) {
            assert(newMap.map == newMapListMapBefore + (currentKey, currentValue))

            // val underlyingMapFromPOneNXtra = LongMapFixedSize.getCurrentListMapNoExtraKeys(underlying.v._keys,underlying.v._values,underlying.v.mask,underlying.v.extraKeys,underlying.v.zeroValue,underlying.v.minValue,from + 1,underlying.v.defaultEntry)
            assert(
              LongMapFixedSize.getCurrentListMapNoExtraKeys(
                underlying.v._keys,
                underlying.v._values,
                underlying.v.mask,
                underlying.v.extraKeys,
                underlying.v.zeroValue,
                underlying.v.minValue,
                from + 1,
                underlying.v.defaultEntry
              ) + (currentKey, currentValue) ==
                LongMapFixedSize.getCurrentListMapNoExtraKeys(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from,
                  underlying.v.defaultEntry
                )
            )
            ghostExpr(
              ListMapLongKeyLemmas.addCommutativeForDiffKeys(
                LongMapFixedSize.getCurrentListMapNoExtraKeys(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from + 1,
                  underlying.v.defaultEntry
                ),
                currentKey,
                currentValue,
                0L,
                underlying.v.zeroValue
              )
            )
            ghostExpr(
              ListMapLongKeyLemmas.addCommutativeForDiffKeys(
                LongMapFixedSize.getCurrentListMapNoExtraKeys(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from + 1,
                  underlying.v.defaultEntry
                ) + (0L, underlying.v.zeroValue),
                currentKey,
                currentValue,
                Long.MinValue,
                underlying.v.minValue
              )
            )

            assert(
              LongMapFixedSize.getCurrentListMap(
                underlying.v._keys,
                underlying.v._values,
                underlying.v.mask,
                underlying.v.extraKeys,
                underlying.v.zeroValue,
                underlying.v.minValue,
                from + 1,
                underlying.v.defaultEntry
              ) + (currentKey, currentValue) ==
                LongMapFixedSize.getCurrentListMap(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from,
                  underlying.v.defaultEntry
                )
            )
            repackFrom(newMap, from - 1)
          } else {

            // val underlyingMapFromPOneNXtra = LongMapFixedSize.getCurrentListMapNoExtraKeys(underlying.v._keys,underlying.v._values,underlying.v.mask,underlying.v.extraKeys,underlying.v.zeroValue,underlying.v.minValue,from + 1,underlying.v.defaultEntry)
            ghostExpr(
              ListMapLongKeyLemmas.addCommutativeForDiffKeys(
                LongMapFixedSize.getCurrentListMapNoExtraKeys(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from + 1,
                  underlying.v.defaultEntry
                ),
                currentKey,
                currentValue,
                0L,
                underlying.v.zeroValue
              )
            )
            ghostExpr(
              ListMapLongKeyLemmas.addCommutativeForDiffKeys(
                LongMapFixedSize.getCurrentListMapNoExtraKeys(
                  underlying.v._keys,
                  underlying.v._values,
                  underlying.v.mask,
                  underlying.v.extraKeys,
                  underlying.v.zeroValue,
                  underlying.v.minValue,
                  from + 1,
                  underlying.v.defaultEntry
                ) + (0L, underlying.v.zeroValue),
                currentKey,
                currentValue,
                Long.MinValue,
                underlying.v.minValue
              )
            )

            assert(newMap.valid && newMap.map == underlying.v.map)
            true
          }
        } else {
          false
        }

      } else {
        if (from > 0) {
          assert(newMap.map == newMapListMapBefore)
          repackFrom(newMap, from - 1)
        } else {
          assert(newMap.valid && newMap.map == underlying.v.map)
          true
        }
      }

    } ensuring (res => if (res) newMap.valid && newMap.map == underlying.v.map else true)

    // def repackWhile(newMap: LongMapFixedSize[V]): Boolean = {
    //   require(valid)
    //   require(newMap.valid)
    //   require(newMap.mask + 1 >= underlying.v._size)
    //   require(
    //      LongMapFixedSize.getCurrentListMap(
    //       underlying.v._keys,
    //       underlying.v._values,
    //       underlying.v.mask,
    //       underlying.v.extraKeys,
    //       underlying.v.zeroValue,
    //       underlying.v.minValue,
    //       underlying.v._keys.length,
    //       underlying.v.defaultEntry
    //     ) == newMap.map
    //   )
    //   var i = underlying.v._keys.length - 1
    //   (while (i >= 0) {
    //     decreases(i)
    //     assert(i>=0 && i < underlying.v._keys.length)
    //     assert(underlying.v._keys.length == underlying.v._values.length)

    //     @ghost val newMapListMapBefore = newMap.map


    //     val currentKey = underlying.v._keys(i)
    //     val currentValue = underlying.v._values(i).get(underlying.v.defaultEntry(0L))
    //     if (currentKey != 0 && currentKey != Long.MinValue) {
    //       // There is a key in the array, add it to the new map
    //       val res = newMap.update(currentKey, currentValue)
    //       ghostExpr(if (newMapListMapBefore.contains(currentKey)) {
    //         LongMapFixedSize.lemmaListMapContainsThenArrayContainsFrom(
    //           underlying.v._keys,
    //           underlying.v._values,
    //           underlying.v.mask,
    //           underlying.v.extraKeys,
    //           underlying.v.zeroValue,
    //           underlying.v.minValue,
    //           currentKey,
    //           i + 1,
    //           underlying.v.defaultEntry
    //         )
    //         LongMapFixedSize.lemmaNoDuplicateFromThenFromBigger(underlying.v._keys, 0, i)
    //         LongMapFixedSize.lemmaArrayNoDuplicateFromNotContainsKeysInAcc(underlying.v._keys, i + 1, currentKey, List(currentKey))
    //         check(false)
    //         } else { () })

    //       assert(!newMapListMapBefore.contains(currentKey))
    //       assert(valid)
    //       if (!res) {
    //         assert(if (false) newMap.valid && newMap.map == underlying.v.map else true)
    //         return false
    //       }
    //     }
    //     i = i - 1
    //   }).invariant(i >= -1 && i <= underlying.v._keys.length && 
    //       valid && newMap.valid &&
    //       LongMapFixedSize.getCurrentListMap(
    //         underlying.v._keys,
    //         underlying.v._values,
    //         underlying.v.mask,
    //         underlying.v.extraKeys,
    //         underlying.v.zeroValue,
    //         underlying.v.minValue,
    //         i + 1,
    //         underlying.v.defaultEntry
    //       ) == newMap.map
    //     )
    //   true

    // } ensuring (res => if (res) newMap.valid && newMap.map == underlying.v.map else true)

    @ghost
    def valid: Boolean = underlying.isOwned && underlying.v.valid

    @pure
    @ghost
    private def map: ListMapLongKey[V] = {
      require(valid)
      underlying.v.map
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
    require(isFull(c))
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
  final case class LongMapFixedSize[V](
      val defaultEntry: Long => V,
      val mask: Int,
      var extraKeys: Int,
      var zeroValue: V,
      var minValue: V,
      var _size: Int,
      val _keys: Array[Long],
      val _values: Array[ValueCell[V]]
  ) {
    import LongMapFixedSize.validKeyInArray
    import LongMapFixedSize.arrayCountValidKeys
    import LongMapFixedSize.arrayContainsKey
    import LongMapFixedSize.arrayScanForKey
    import LongMapFixedSize.arrayNoDuplicates
    import LongMapFixedSize.seekEntryOrOpen
    import LongMapFixedSize.toIndex
    import LongMapFixedSize.lemmaArrayContainsFromImpliesContainsFromZero
    import LongMapFixedSize.arrayForallSeekEntryOrOpenFound
    import LongMapFixedSize.lemmaValidKeyAtIImpliesCountKeysIsOne
    import LongMapFixedSize.lemmaAddValidKeyIncreasesNumberOfValidKeysInArray
    import LongMapFixedSize.lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray
    import LongMapFixedSize.lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger
    import LongMapFixedSize.lemmaArrayNoDuplicateThenKeysContainedNotEqual
    import LongMapFixedSize.lemmaNoDuplicateFromThenFromBigger
    import LongMapFixedSize.lemmaPutNonValidKeyPreservesNoDuplicate
    import LongMapFixedSize.lemmaPutNewValidKeyPreservesNoDuplicate
    import LongMapFixedSize.seekEntry
    import LongMapFixedSize.inRange
    import LongMapFixedSize.validMask
    import LongMapFixedSize.lemmaPutLongMinValuePreservesForallSeekEntryOrOpen
    import LongMapFixedSize.lemmaSeekEntryOrOpenFindsThenSeekEntryFinds
    import LongMapFixedSize.lemmaPutValidKeyPreservesForallSeekEntryOrOpen
    import LongMapFixedSize.lemmaArrayNoDuplicateRemoveOneThenNotContain
    import LongMapFixedSize.getCurrentListMap
    import LongMapFixedSize.lemmaKeyInListMapIsInArray
    import LongMapFixedSize.lemmaValidKeyInArrayIsInListMap
    import LongMapFixedSize.lemmaKeyInListMapThenSameValueInArray
    import LongMapFixedSize.lemmaArrayContainsKeyThenInListMap
    import LongMapFixedSize.lemmaSeekEntryGivesInRangeIndex
    import LongMapFixedSize.lemmaInListMapThenSeekEntryOrOpenFindsIt
    import LongMapFixedSize.lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing
    import LongMapFixedSize.lemmaAddValidKeyToArrayThenAddPairToListMap
    import LongMapFixedSize.lemmaChangeZeroKeyThenAddPairToListMap
    import LongMapFixedSize.lemmaChangeLongMinValueKeyThenAddPairToListMap
    import LongMapFixedSize.lemmaChangeValueExistingKeyToArrayThenAddPairToListMap
    import LongMapFixedSize.lemmaRemoveZeroKeyThenRemoveKeyFromListMap
    import LongMapFixedSize.lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap
    import LongMapFixedSize.lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap

    @pure
    def size: Int = {
      _size + (extraKeys + 1) / 2
    }

    @pure
    def imbalanced: Boolean =
      2 * _size > mask

    @pure
    def isEmpty: Boolean = {
      require(valid)
      size == 0
    } ensuring (_ => valid)

    @pure
    def contains(key: Long): Boolean = {
      require(valid)
      if (key == 0) (extraKeys & 1) != 0
      else if (key == Long.MinValue) (extraKeys & 2) != 0
      else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            ghostExpr(lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index))
            ghostExpr(
              lemmaValidKeyInArrayIsInListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                defaultEntry
              )
            )
            true
          }
          case _ => {
            ghostExpr(
              if (
                getCurrentListMap(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  0,
                  defaultEntry
                ).contains(
                  key
                )
              ) {
                lemmaKeyInListMapIsInArray(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
                val i = arrayScanForKey(_keys, key, 0)
                lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
                lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(key, i, _keys, mask)
                check(false)
              }
            )
            false
          }
        }
      }
    } ensuring (res => valid && (res == map.contains(key)))

    /** Retrieves the value associated with a key. If the key does not exist in the map, the `defaultEntry` for that key is returned instead.
      *
      * @param key
      * @return
      */
    @pure
    def apply(key: Long): V = {
      require(valid)
      if (key == -key) {
        if (key == 0 && (extraKeys & 1) != 0) zeroValue
        else if (key == Long.MinValue && (extraKeys & 2) != 0) minValue
        else defaultEntry(key)
      } else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        ghostExpr(lemmaSeekEntryGivesInRangeIndex(_keys, _values, mask, extraKeys, zeroValue, minValue, key))
        seekEntryRes match {
          case Found(index) => {
            ghostExpr(lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index))
            ghostExpr(
              lemmaValidKeyInArrayIsInListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                defaultEntry
              )
            )
            ghostExpr(
              lemmaKeyInListMapThenSameValueInArray(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                key,
                index,
                defaultEntry
              )
            )
            _values(index).get(defaultEntry(0L))
          }
          case _ => defaultEntry(key)
        }
      }
    } ensuring (res =>
      valid
        && (if (contains(key)) res == map.get(key).get
            else res == defaultEntry(key))
    )

    /** Updates the map to include a new key-value pair. Returns a boolean indicating if the update was successful. It is not successful if no free space is found (i.e., the map is full)
      *
      * This is the fastest way to add an entry to a `LongMap`.
      */
    def update(key: Long, v: V): Boolean = {
      require(valid)
      if (key == -key) {
        if (key == 0) {
          ghostExpr(
            lemmaChangeZeroKeyThenAddPairToListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              (extraKeys | 1),
              zeroValue,
              v,
              minValue,
              defaultEntry
            )
          )
          zeroValue = v
          extraKeys |= 1
          true
        } else {
          val extraKeysBefore = extraKeys
          ghostExpr(
            lemmaChangeLongMinValueKeyThenAddPairToListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              (extraKeys | 2),
              zeroValue,
              minValue,
              v,
              defaultEntry
            )
          )
          minValue = v
          extraKeys |= 2
          true
        }

      } else {
        val seekEntryRes = seekEntryOrOpen(key)(_keys, mask)
        seekEntryRes match {
          case Undefined() => {
            // the key is not in the array, it was not able to find an empty space, the map is maybe full
            ghostExpr(
              if (
                getCurrentListMap(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  0,
                  defaultEntry
                ).contains(
                  key
                )
              ) {
                lemmaInListMapThenSeekEntryOrOpenFindsIt(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
                check(false)
              } else {
                lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
              }
            )
            false
          }
          case MissingVacant(index) => updateHelperNewKey(key, v, index)
          case MissingZero(index)   => updateHelperNewKey(key, v, index)
          case Found(index) => {
            ghostExpr(
              if (
                getCurrentListMap(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  0,
                  defaultEntry
                ).contains(
                  key
                )
              ) {
                lemmaInListMapThenSeekEntryOrOpenFindsIt(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
              } else {
                lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
                check(false)
              }
            )

            ghostExpr(
              lemmaChangeValueExistingKeyToArrayThenAddPairToListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                key,
                v,
                defaultEntry
              )
            )

            _values(index) = ValueCellFull(v)

            ghostExpr(
              lemmaValidKeyInArrayIsInListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                defaultEntry
              )
            )
            true
          }
        }
      }
    } ensuring (res => valid && (if (res) map.contains(key) && (map == old(this).map + (key, v)) else map == old(this).map))

    /** Removes the given key from the map. Returns true if the key was present and is removed, false if the key was not present
      *
      * @param key
      * @return
      */
    def remove(key: Long): Boolean = {
      require(valid)
      if (key == -key) {
        if (key == 0L) {
          ghostExpr(
            lemmaRemoveZeroKeyThenRemoveKeyFromListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              extraKeys & 0x2,
              zeroValue,
              defaultEntry(0L),
              minValue,
              defaultEntry
            )
          )
          extraKeys &= 0x2
          zeroValue = defaultEntry(0L)

          true
        } else {
          ghostExpr(
            lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              extraKeys & 0x1,
              zeroValue,
              minValue,
              defaultEntry(Long.MinValue),
              defaultEntry
            )
          )
          extraKeys &= 0x1
          minValue = defaultEntry(Long.MinValue)

          true
        }
      } else {
        val seekEntryRes = seekEntry(key)(_keys, mask)
        seekEntryRes match {
          case Found(index) => {
            // _vacant += 1
            ghostExpr(lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray(_keys, index, Long.MinValue))
            ghostExpr(lemmaPutNonValidKeyPreservesNoDuplicate(_keys, Long.MinValue, index, 0, List()))
            ghostExpr(lemmaPutLongMinValuePreservesForallSeekEntryOrOpen(_keys, index)(mask))
            ghostExpr(lemmaArrayNoDuplicateRemoveOneThenNotContain(_keys, index, key))
            ghostExpr(
              lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                key,
                defaultEntry
              )
            )

            _size -= 1
            _keys(index) = Long.MinValue
            _values(index) = ValueCellFull(defaultEntry(0L))

            ghostExpr(
              if (
                getCurrentListMap(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  0,
                  defaultEntry
                ).contains(
                  key
                )
              ) {
                lemmaKeyInListMapIsInArray(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  key,
                  defaultEntry
                )
                check(false)
              } else { () }
            )

            true
          }
          case _ => false
        }
      }
    } ensuring (res => valid && (if (res) map == old(this).map - key else map == old(this).map))

    /** Go through an helper function because this piece of code has to be called in 2 cases of the pattern matching
      *
      * @return
      */
    private def updateHelperNewKey(key: Long, v: V, index: Int): Boolean = {
      require(valid)
      require(key != 0)
      require(key != Long.MinValue)
      require(
        seekEntryOrOpen(key)(_keys, mask) == MissingZero(
          index
        ) || seekEntryOrOpen(key)(
          _keys,
          mask
        ) == MissingVacant(index)
      )

      ghostExpr(
        if (
          getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
            .contains(key)
        ) {
          ghostExpr(
            lemmaInListMapThenSeekEntryOrOpenFindsIt(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              key,
              defaultEntry
            )
          )
          check(false)
        } else {
          ghostExpr(
            lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              key,
              defaultEntry
            )
          )
        }
      )
      assert(inRange(index, mask))
      ghostExpr(if (arrayContainsKey(_keys, key, 0)) {

        lemmaArrayContainsKeyThenInListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          key,
          0,
          defaultEntry
        )

        check(false)
      } else {})

      ghostExpr(lemmaPutNewValidKeyPreservesNoDuplicate(_keys, key, index, 0, List()))
      ghostExpr(lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(_keys, index, key))
      ghostExpr(lemmaPutValidKeyPreservesForallSeekEntryOrOpen(key, _keys, index)(mask))

      ghostExpr(
        lemmaAddValidKeyToArrayThenAddPairToListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          index,
          key,
          v,
          defaultEntry
        )
      )

      _keys(index) = key
      _size += 1

      ghostExpr(lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, index))
      ghostExpr(lemmaValidKeyAtIImpliesCountKeysIsOne(_keys, index))

      _values(index) = ValueCellFull(v)

      ghostExpr(
        lemmaValidKeyInArrayIsInListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          index,
          defaultEntry
        )
      )
      true

    } ensuring (res => res && valid && map.contains(key) && (map == old(this).map + (key, v)))

    @ghost
    def valid: Boolean = {
      // class invariant
      simpleValid &&
      arrayCountValidKeys(_keys, 0, _keys.length) == _size &&
      arrayForallSeekEntryOrOpenFound(0)(_keys, mask) &&
      arrayNoDuplicates(_keys, 0)
    }

    @ghost
    def simpleValid: Boolean = {
      validMask(mask) &&
      _values.length == mask + 1 &&
      _keys.length == _values.length &&
      _size >= 0 &&
      _size <= mask + 1 &&
      size >= _size &&
      size == _size + (extraKeys + 1) / 2 &&
      extraKeys >= 0 &&
      extraKeys <= 3
    }

    @pure
    @ghost
    def map: ListMapLongKey[V] = {
      require(valid)
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
    }

  }

  abstract sealed class SeekEntryResult
  case class Found(index: Int) extends SeekEntryResult
  case class MissingZero(index: Int) extends SeekEntryResult
  case class MissingVacant(index: Int) extends SeekEntryResult
  case class Intermediate(undefined: Boolean, index: Int, x: Int) extends SeekEntryResult
  case class Undefined() extends SeekEntryResult

  object LongMapFixedSize {

    def getNewLongMapFixedSize[V](mask: Int, defaultEntry: Long => V): LongMapFixedSize[V] = {
      require(validMask(mask))
      @ghost val _keys: Array[Long] = Array.fill(mask + 1)(0)

      val res = LongMapFixedSize[V](defaultEntry, mask, 0, defaultEntry(0L), defaultEntry(0L), 0,Array.fill(mask + 1)(0L), Array.fill(mask + 1)(EmptyCell[V]()))

      assert(res.simpleValid)
      assert(res._keys == Array.fill(mask + 1)(0L))
      assert(_keys.length == mask + 1)
      assert(res._keys.length == mask + 1)
      assert(res._size == 0)
      ghostExpr(LongMapFixedSize.lemmaArrayCountValidKeysOfFilled0ArrayIs0(res._keys, 0, mask + 1))

      assert(arrayCountValidKeys(res._keys, 0, res._keys.length) == res._size)

      ghostExpr(LongMapFixedSize.lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array(res._keys, mask, 0))
      assert(arrayForallSeekEntryOrOpenFound(0)(res._keys, mask))

      ghostExpr(LongMapFixedSize.lemmaArrayNoDuplicatesInAll0Array(res._keys, 0, mask + 1))
      assert(arrayNoDuplicates(res._keys, 0))
      assert(res.valid)
      assert(res.mask == mask)
      ghostExpr(if (res.map != ListMapLongKey.empty[V]) {
        assert(!res.map.toList.isEmpty)
        val kv = res.map.toList.head
        val k = kv._1
        assert(res.map.contains(k))
        LongMapFixedSize.lemmaKeyInListMapIsInArray(res._keys, res._values, mask, res.extraKeys, res.zeroValue, res.minValue, k, res.defaultEntry)
        assert(arrayContainsKey(res._keys, k, 0))
        val index = arrayScanForKey(res._keys, k, 0)
        assert(res._keys(index) == k)
        check(false)

      } else { () })
      assert(res.map == ListMapLongKey.empty[V]) // TODO
      res
    } ensuring (res => res.valid && res.mask == mask && res.map == ListMapLongKey.empty[V])

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

    /** Checks if i is a valid index in the Array of values
      *
      * @param i
      * @return
      */
    private def inRange(i: Int, mask: Int): Boolean = {
      // mask + 1 is the size of the Array
      i >= 0 && i < mask + 1
    }

    @pure
    @ghost
    def arrayForallSeekEntryOrOpenFound(i: Int)(implicit _keys: Array[Long], mask: Int): Boolean = {
      require(validMask(mask))
      require(_keys.length == mask + 1)
      require(i >= 0)
      require(i <= _keys.length)

      decreases(_keys.length - i)

      if (i >= _keys.length) true
      else if (validKeyInArray(_keys(i))) {
        assert(arrayContainsKey(_keys, _keys(i), i))
        lemmaArrayContainsFromImpliesContainsFromZero(_keys, _keys(i), i)
        LongMapFixedSize.seekEntryOrOpen(_keys(i))(_keys, mask) == Found(i) &&
        arrayForallSeekEntryOrOpenFound(i + 1)
      } else arrayForallSeekEntryOrOpenFound(i + 1)
    }

    /** Compute the index in the array for a given key with hashing and magic stuff
      *
      * @param k
      *   the key
      * @return
      */
    @pure
    private def toIndex(k: Long, mask: Int): Int = {
      require(mask >= 0)
      require(mask <= MAX_MASK)
      // Part of the MurmurHash3 32 bit finalizer
      val h = ((k ^ (k >>> 32)) & 0xffffffffL).toInt
      val x = (h ^ (h >>> 16)) * 0x85ebca6b
      (x ^ (x >>> 13)) & mask
    } ensuring (res => res < mask + 1 && res >= 0)

    /** Given a key, seek for its index into the array returns a corresponding instance of SeekEntryResult with the index if found
      *
      * @param k
      *   the key
      * @return
      *   the index of the given key into the array
      */
    @pure
    def seekEntry(k: Long)(implicit _keys: Array[Long], mask: Int): SeekEntryResult = {
      require(validMask(mask))
      require(_keys.length == mask + 1)
      require(validKeyInArray(k))
      decreases(1)

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
            assert(_keys(index) == Long.MinValue)
            assert(index >= 0 && index < mask + 1)
            val res = seekKeyOrZeroReturnVacant(x, index, index)(k, _keys, mask)
            res match {
              case MissingVacant(index) => MissingZero(index)
              case _                    => res
            }
          }
        }
      }

    } ensuring (res =>
      res match {
        case MissingVacant(index) => false // should never happen
        case Found(index)         => _keys(index) == k
        case MissingZero(_)       => true
        case Undefined()          => true
      }
    )

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
      require(validMask(mask))
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(validKeyInArray(k))

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
            assert(_keys(index) == Long.MinValue)
            assert(index >= 0 && index < mask + 1)
            val res = seekKeyOrZeroReturnVacant(x, index, index)(k, _keys, mask)
            res
          }
        }
      }
    } ensuring (res =>
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
    private def seekKeyOrZeroOrLongMinValue(x: Int, ee: Int)(implicit
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
        seekKeyOrZeroOrLongMinValue(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    } ensuring (res =>
      (res match {
        case Intermediate(undefined, index, resx) if (undefined) => resx >= MAX_ITER
        case Intermediate(undefined, index, resx) if (!undefined) =>
          resx < MAX_ITER && resx >= 0 && resx >= x && (_keys(index) == k || _keys(
            index
          ) == 0 || _keys(
            index
          ) == Long.MinValue)
        case _ => false
      })
    )

    @tailrec
    @pure
    private def seekKeyOrZeroReturnVacant(x: Int, ee: Int, vacantSpotIndex: Int)(implicit
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
      else
        seekKeyOrZeroReturnVacant(
          x + 1,
          (ee + 2 * (x + 1) * x - 3) & mask,
          vacantSpotIndex
        )

    } ensuring (res =>
      res match {
        case Undefined()          => true
        case Found(index)         => _keys(index) == k
        case MissingVacant(index) => index == vacantSpotIndex && _keys(index) == Long.MinValue
        case _                    => false
      }
    )

    @pure
    @ghost
    def getCurrentListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        defaultEntry: Long => V
    ): ListMapLongKey[V] = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from <= _keys.length)

      val res = if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        (getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry) + (0L, zeroValue)) + (Long.MinValue, minValue)
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry) + (0L, zeroValue)
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry) + (Long.MinValue, minValue)
      } else {
        getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
      }
      if (from < _keys.length && validKeyInArray(_keys(from))) {
        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry), 0, zeroValue, _keys(from))
        ListMapLongKeyLemmas.addStillContains(getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry), Long.MinValue, minValue, _keys(from))
        ListMapLongKeyLemmas.addApplyDifferent(getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry), 0, zeroValue, _keys(from))
        ListMapLongKeyLemmas.addApplyDifferent(getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry), Long.MinValue, minValue, _keys(from))
      }

      res

    } ensuring (res =>
      (if (from < _keys.length && validKeyInArray(_keys(from)))
         res.contains(_keys(from)) && res(_keys(from)) == _values(from).get(defaultEntry(0L))
       else
         // else if (from < _keys.length) res == getCurrentListMap(from + 1) else
         true) &&
        (if ((extraKeys & 1) != 0) res.contains(0) && res(0) == zeroValue else !res.contains(0)) &&
        (if ((extraKeys & 2) != 0) res.contains(Long.MinValue) && res(Long.MinValue) == minValue
         else !res.contains(Long.MinValue))
    )

    @ghost
    @pure
    def getCurrentListMapNoExtraKeys[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        defaultEntry: Long => V
    ): ListMapLongKey[V] = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from <= _keys.length)
      decreases(_keys.length + 1 - from)
      if (from >= _keys.length) {
        ListMapLongKey.empty[V]
      } else if (validKeyInArray(_keys(from))) {
        ListMapLongKeyLemmas.addStillNotContains(getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from + 1, defaultEntry), _keys(from), _values(from).get(defaultEntry(0L)), 0)

        getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from + 1, defaultEntry) + (_keys(from), _values(from).get(defaultEntry(0L)))
      } else {
        getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from + 1, defaultEntry)
      }
    } ensuring (res =>
      !res.contains(0) && !res.contains(Long.MinValue) &&
        (if (from < _keys.length && validKeyInArray(_keys(from)))
           res.contains(_keys(from)) && res(_keys(from)) == _values(from).get(defaultEntry(0L))
         else if (from < _keys.length)
           res == getCurrentListMapNoExtraKeys(_keys, _values, mask, extraKeys, zeroValue, minValue, from + 1, defaultEntry)
         else res.isEmpty)
    )

    // LEMMAS -----------------–-----------------–-----------------–-----------------–-----------------–---------------

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddValidKeyToArrayThenAddPairToListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        v: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == Long.MinValue || _keys(i) == 0)
      require(!arrayContainsKey(_keys, k, 0))
      require(arrayForallSeekEntryOrOpenFound(0)(_keys.updated(i, k), mask))
      require(arrayNoDuplicates(_keys.updated(i, k), 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter = getCurrentListMapNoExtraKeys(
        _keys.updated(i, k),
        _values.updated(i, ValueCellFull(v)),
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )

      lemmaAddValidKeyToArrayThenMapNoExtrasAddPair(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        i,
        k,
        v,
        0,
        defaultEntry
      )

      check(mapNoExtraKeysBefore + (k, v) == mapNoExtraKeysAfter)

      val mapAfter =
        getCurrentListMap(
          _keys.updated(i, k),
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapBefore =
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
      if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(
          mapAfter == ((mapNoExtraKeysBefore + (k, v)) + (0L, zeroValue)) + (Long.MinValue, minValue)
        )
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(mapNoExtraKeysBefore, k, v, 0L, zeroValue)
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          mapNoExtraKeysBefore + (0L, zeroValue),
          k,
          v,
          Long.MinValue,
          minValue
        )
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        check(mapAfter == mapNoExtraKeysAfter + (0L, zeroValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)))
        check(mapAfter == (mapNoExtraKeysBefore + (k, v)) + (0L, zeroValue))
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(mapNoExtraKeysBefore, k, v, 0L, zeroValue)
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        check(mapAfter == mapNoExtraKeysAfter + (Long.MinValue, minValue))
        check(mapAfter == (mapNoExtraKeysBefore + (k, v)) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (Long.MinValue, minValue)))
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          mapNoExtraKeysBefore,
          k,
          v,
          Long.MinValue,
          minValue
        )
      } else {
        check(mapAfter == mapNoExtraKeysAfter)
        check(
          getCurrentListMap(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            0,
            defaultEntry
          ) + (k, v) == getCurrentListMap(
            _keys.updated(i, k),
            _values.updated(i, ValueCellFull(v)),
            mask,
            extraKeys,
            zeroValue,
            minValue,
            0,
            defaultEntry
          )
        )
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      ) + (k, v) == getCurrentListMap(
        _keys.updated(i, k),
        _values.updated(i, ValueCellFull(v)),
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddValidKeyToArrayThenMapNoExtrasAddPair[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        v: V,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(from >= 0 && from <= _keys.length)
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == Long.MinValue || _keys(i) == 0)
      require(!arrayContainsKey(_keys, k, 0))
      require(arrayForallSeekEntryOrOpenFound(0)(_keys.updated(i, k), mask))
      require(arrayNoDuplicates(_keys.updated(i, k), 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == Long.MinValue || _keys(i) == 0)

      decreases(_keys.length - from)

      if (from > i) {
        if (from + 1 <= _keys.length) {
          lemmaAddValidKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )
        }

      } else {
        assert(from <= i)
        val listmapNoExtrasBefore =
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
        val listmapNoExtrasAfter = getCurrentListMapNoExtraKeys(
          _keys.updated(i, k),
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        )
        if (from == i) {
          lemmaAddValidKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )
          assert(!validKeyInArray(_keys(from)))
          check(
            listmapNoExtrasAfter ==
              getCurrentListMapNoExtraKeys(
                _keys.updated(i, k),
                _values.updated(i, ValueCellFull(v)),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ) + (_keys.updated(i, k).apply(from), _values
                .updated(i, ValueCellFull(v))
                .apply(from)
                .get(defaultEntry(0L)))
          )

          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            getCurrentListMapNoExtraKeys(
              _keys.updated(i, k),
              _values.updated(i, ValueCellFull(v)),
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ),
            k,
            _values(from).get(defaultEntry(0L)),
            _values.updated(i, ValueCellFull(v)).apply(from).get(defaultEntry(0L))
          )

        } else {
          assert(from < i)
          lemmaAddValidKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )
          if (validKeyInArray(_keys(from))) {
            check(
              getCurrentListMapNoExtraKeys(
                _keys.updated(i, k),
                _values.updated(i, ValueCellFull(v)),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ) ==
                ((getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ) + (k, v) + (_keys(from), _values(from).get(defaultEntry(0L)))))
            )

            if (_keys(from) == k) {
              lemmaArrayContainsFromImpliesContainsFromSmaller(_keys, k, from, 0)
              check(false)
            }

            check(_keys(from) != k)

            ListMapLongKeyLemmas.addCommutativeForDiffKeys(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ),
              k,
              v,
              _keys(from),
              _values(from).get(defaultEntry(0L))
            )
          }
        }
      }

    } ensuring (_ =>
      if (from <= i)
        getCurrentListMapNoExtraKeys(
          _keys.updated(i, k),
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          (getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          ) + (k, v))
      else
        getCurrentListMapNoExtraKeys(
          _keys.updated(i, k),
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaChangeValueExistingKeyToArrayThenAddPairToListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        v: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == k)

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )

      lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        i,
        k,
        v,
        0,
        defaultEntry
      )

      check(mapNoExtraKeysBefore + (k, v) == mapNoExtraKeysAfter)

      val mapAfter =
        getCurrentListMap(
          _keys,
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapBefore =
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
      if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(
          mapAfter == ((mapNoExtraKeysBefore + (k, v)) + (0L, zeroValue)) + (Long.MinValue, minValue)
        )
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(mapNoExtraKeysBefore, k, v, 0L, zeroValue)
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          mapNoExtraKeysBefore + (0L, zeroValue),
          k,
          v,
          Long.MinValue,
          minValue
        )
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        check(mapAfter == mapNoExtraKeysAfter + (0L, zeroValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)))
        check(mapAfter == (mapNoExtraKeysBefore + (k, v)) + (0L, zeroValue))
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(mapNoExtraKeysBefore, k, v, 0L, zeroValue)
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        check(mapAfter == mapNoExtraKeysAfter + (Long.MinValue, minValue))
        check(mapAfter == (mapNoExtraKeysBefore + (k, v)) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (Long.MinValue, minValue)))
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          mapNoExtraKeysBefore,
          k,
          v,
          Long.MinValue,
          minValue
        )
      } else {
        check(mapAfter == mapNoExtraKeysAfter)
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      ) + (k, v) == getCurrentListMap(
        _keys,
        _values.updated(i, ValueCellFull(v)),
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        v: V,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(from >= 0 && from <= _keys.length)
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == k)

      decreases(_keys.length - from)

      if (from > i) {
        if (from + 1 <= _keys.length) {
          lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )
        }
      } else {
        assert(from <= i)
        val listmapNoExtrasBefore =
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
        val listmapNoExtrasAfter =
          getCurrentListMapNoExtraKeys(
            _keys,
            _values.updated(i, ValueCellFull(v)),
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
        if (from == i) {
          lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )
          assert(validKeyInArray(_keys(from)))
          check(
            listmapNoExtrasAfter ==
              getCurrentListMapNoExtraKeys(
                _keys,
                _values.updated(i, ValueCellFull(v)),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ) + (_keys(from), _values
                .updated(i, ValueCellFull(v))
                .apply(from)
                .get(defaultEntry(0L)))
          )

          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values.updated(i, ValueCellFull(v)),
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ),
            k,
            _values(from).get(defaultEntry(0L)),
            _values.updated(i, ValueCellFull(v)).apply(from).get(defaultEntry(0L))
          )

        } else {
          assert(from < i)
          lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            v,
            from + 1,
            defaultEntry
          )

          if (validKeyInArray(_keys(from))) {
            check(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values.updated(i, ValueCellFull(v)),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ) ==
                ((getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ) + (k, v) + (_keys(from), _values(from).get(defaultEntry(0L)))))
            )

            if (_keys(from) == k) {
              lemmaNoDuplicateFromThenFromBigger(_keys, 0, from)
              lemmaArrayContainsFromImpliesContainsFromSmaller(_keys, k, i, from + 1)
              lemmaArrayNoDuplicateThenKeysContainedNotEqual(_keys, k, from, Nil())
              check(false)
            }
            check(_keys(from) != k)

            ListMapLongKeyLemmas.addCommutativeForDiffKeys(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ),
              k,
              v,
              _keys(from),
              _values(from).get(defaultEntry(0L))
            )
          }
        }
      }

    } ensuring (_ =>
      if (from <= i)
        getCurrentListMapNoExtraKeys(
          _keys,
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          (getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          ) + (k, v))
      else
        getCurrentListMapNoExtraKeys(
          _keys,
          _values.updated(i, ValueCellFull(v)),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaChangeZeroKeyThenAddPairToListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeysBefore: Int,
        extraKeysAfter: Int,
        zeroValueBefore: V,
        zeroValueAfter: V,
        minValue: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeysBefore >= 0)
      require(extraKeysBefore <= 3)
      require(extraKeysAfter >= 0)
      require(extraKeysAfter <= 3)
      require((extraKeysBefore & 2) == (extraKeysAfter & 2)) // Long.MinValue key does not change
      require((extraKeysAfter & 1) != 0) // 0 key must be defined after
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysBefore,
          zeroValueBefore,
          minValue,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysAfter,
          zeroValueAfter,
          minValue,
          0,
          defaultEntry
        )

      lemmaNoChangeToArrayThenSameMapNoExtras(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        extraKeysAfter,
        zeroValueBefore,
        zeroValueAfter,
        minValue,
        minValue,
        0,
        defaultEntry
      )
      assert(mapNoExtraKeysBefore == mapNoExtraKeysAfter)

      if ((extraKeysBefore & 2) == 0) {
        // key Long.MinValue not defined
        if ((extraKeysBefore & 1) == 0) {
          check(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            ) + (0, zeroValueAfter) == getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )

          check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValueBefore)))
          check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValueAfter)))

          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            mapNoExtraKeysBefore,
            0L,
            zeroValueBefore,
            zeroValueAfter
          )
          check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValueBefore)) + (0L, zeroValueAfter))
        }

      } else {
        // key Long.MinValue defined
        if ((extraKeysBefore & 1) == 0) {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )

          check(mapBefore == (mapNoExtraKeysBefore + (Long.MinValue, minValue)))
          check(
            mapAfter == ((mapNoExtraKeysBefore + (0L, zeroValueAfter)) + (Long.MinValue, minValue))
          )
          ListMapLongKeyLemmas.addCommutativeForDiffKeys(
            mapNoExtraKeysBefore,
            0L,
            zeroValueAfter,
            Long.MinValue,
            minValue
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )

          check(
            mapBefore == (mapNoExtraKeysBefore + (0L, zeroValueBefore)) + (Long.MinValue, minValue)
          )
          check(
            mapAfter == (mapNoExtraKeysAfter + (0L, zeroValueAfter)) + (Long.MinValue, minValue)
          )

          check(
            mapBefore == (mapNoExtraKeysBefore + (Long.MinValue, minValue)) + (0L, zeroValueBefore)
          )
          check(
            mapAfter == (mapNoExtraKeysAfter + (Long.MinValue, minValue)) + (0L, zeroValueAfter)
          )
          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            (mapNoExtraKeysBefore + (Long.MinValue, minValue)),
            0L,
            zeroValueBefore,
            zeroValueAfter
          )
          check(
            mapAfter == ((mapNoExtraKeysBefore + (Long.MinValue, minValue)) + (0L, zeroValueBefore)) + (0L, zeroValueAfter)
          )
          check(
            mapAfter == (mapNoExtraKeysBefore + (Long.MinValue, minValue)) + (0L, zeroValueAfter)
          )
          check(
            mapAfter == (mapNoExtraKeysBefore + (0L, zeroValueAfter)) + (Long.MinValue, minValue)
          )
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        zeroValueBefore,
        minValue,
        0,
        defaultEntry
      ) + (0, zeroValueAfter) == getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysAfter,
        zeroValueAfter,
        minValue,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaChangeLongMinValueKeyThenAddPairToListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeysBefore: Int,
        extraKeysAfter: Int,
        zeroValue: V,
        minValueBefore: V,
        minValueAfter: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeysBefore >= 0)
      require(extraKeysBefore <= 3)
      require(extraKeysAfter >= 0)
      require(extraKeysAfter <= 3)
      require((extraKeysBefore & 1) == (extraKeysAfter & 1)) // zero key does not change
      require((extraKeysAfter & 2) != 0) // MinValue key must be defined after
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysBefore,
          zeroValue,
          minValueBefore,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysAfter,
          zeroValue,
          minValueAfter,
          0,
          defaultEntry
        )

      lemmaNoChangeToArrayThenSameMapNoExtras(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        extraKeysAfter,
        zeroValue,
        zeroValue,
        minValueBefore,
        minValueAfter,
        0,
        defaultEntry
      )

      assert(mapNoExtraKeysBefore == mapNoExtraKeysAfter)

      if ((extraKeysBefore & 1) == 0) {
        // key 0 not defined
        if ((extraKeysBefore & 2) == 0) {
          check(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            ) + (Long.MinValue, minValueAfter) == getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValue,
              minValueAfter,
              0,
              defaultEntry
            )
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValue,
              minValueAfter,
              0,
              defaultEntry
            )

          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            mapNoExtraKeysBefore,
            Long.MinValue,
            minValueBefore,
            minValueAfter
          )
        }

      } else {
        // key 0 defined
        if ((extraKeysBefore & 2) == 0) {
          // trivial
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValue,
              minValueAfter,
              0,
              defaultEntry
            )

          ListMapLongKeyLemmas.addSameAsAddTwiceSameKeyDiffValues(
            mapNoExtraKeysBefore + (0L, zeroValue),
            Long.MinValue,
            minValueBefore,
            minValueAfter
          )
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        zeroValue,
        minValueBefore,
        0,
        defaultEntry
      ) + (Long.MinValue, minValueAfter) == getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysAfter,
        zeroValue,
        minValueAfter,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == k)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys.updated(i, Long.MinValue), mask))
      require(arrayNoDuplicates(_keys.updated(i, Long.MinValue), 0))

      lemmaArrayContainsFromImpliesContainsFromZero(_keys, k, i)
      assert(arrayContainsKey(_keys, k, 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter = getCurrentListMapNoExtraKeys(
        _keys.updated(i, Long.MinValue),
        _values.updated(i, ValueCellFull(defaultEntry(0L))),
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )

      lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        i,
        k,
        0,
        defaultEntry
      )

      check(mapNoExtraKeysBefore - k == mapNoExtraKeysAfter)

      val mapAfter =
        getCurrentListMap(
          _keys.updated(i, Long.MinValue),
          _values.updated(i, ValueCellFull(defaultEntry(0L))),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        )
      val mapBefore =
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
      if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        // it means there is a mapping for the key 0 and the Long.MIN_VALUE
        check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)) + (Long.MinValue, minValue))
        check(
          mapAfter == ((mapNoExtraKeysBefore - k) + (0L, zeroValue)) + (Long.MinValue, minValue)
        )

        ListMapLongKeyLemmas.addRemoveCommutativeForDiffKeys(mapNoExtraKeysBefore, 0L, zeroValue, k)
        ListMapLongKeyLemmas.addRemoveCommutativeForDiffKeys(
          mapNoExtraKeysBefore + (0L, zeroValue),
          Long.MinValue,
          minValue,
          k
        )
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        // it means there is a mapping for the key 0
        check(mapAfter == mapNoExtraKeysAfter + (0L, zeroValue))
        check(mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)))
        check(mapAfter == (mapNoExtraKeysBefore - k) + (0L, zeroValue))

        ListMapLongKeyLemmas.addRemoveCommutativeForDiffKeys(mapNoExtraKeysBefore, 0L, zeroValue, k)

      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        // it means there is a mapping for the key Long.MIN_VALUE
        check(mapAfter == mapNoExtraKeysAfter + (Long.MinValue, minValue))
        check(mapAfter == (mapNoExtraKeysBefore - k) + (Long.MinValue, minValue))
        check(mapBefore == (mapNoExtraKeysBefore + (Long.MinValue, minValue)))

        ListMapLongKeyLemmas.addRemoveCommutativeForDiffKeys(
          mapNoExtraKeysBefore,
          Long.MinValue,
          minValue,
          k
        )
      } else {
        check(mapAfter == mapNoExtraKeysAfter)

      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      ) - k == getCurrentListMap(
        _keys.updated(i, Long.MinValue),
        _values.updated(i, ValueCellFull(defaultEntry(0L))),
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeysBefore: Int,
        extraKeysAfter: Int,
        zeroValue: V,
        minValueBefore: V,
        minValueAfter: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeysBefore >= 0)
      require(extraKeysBefore <= 3)
      require(extraKeysAfter >= 0)
      require(extraKeysAfter <= 3)
      require((extraKeysBefore & 1) == (extraKeysAfter & 1)) // zero key does not change
      require((extraKeysAfter & 2) == 0) // MinValue key must be removed after
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysBefore,
          zeroValue,
          minValueBefore,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysAfter,
          zeroValue,
          minValueAfter,
          0,
          defaultEntry
        )

      lemmaNoChangeToArrayThenSameMapNoExtras(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        extraKeysAfter,
        zeroValue,
        zeroValue,
        minValueBefore,
        minValueAfter,
        0,
        defaultEntry
      )

      assert(mapNoExtraKeysBefore == mapNoExtraKeysAfter)

      if ((extraKeysBefore & 1) == 0) {
        // key 0 not defined
        if ((extraKeysBefore & 2) == 0) {
          ListMapLongKeyLemmas.removeNotPresentStillSame(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            ),
            Long.MinValue
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValue,
              minValueAfter,
              0,
              defaultEntry
            )

          check(mapBefore == mapNoExtraKeysBefore + (Long.MinValue, minValueBefore))
          check(mapAfter == mapNoExtraKeysAfter)
          ListMapLongKeyLemmas.addThenRemoveForNewKeyIsSame(
            mapNoExtraKeysBefore,
            Long.MinValue,
            minValueBefore
          )
          check(mapBefore - Long.MinValue == mapAfter)
        }

      } else {
        // key 0 defined
        if ((extraKeysBefore & 2) == 0) {
          ListMapLongKeyLemmas.removeNotPresentStillSame(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            ),
            Long.MinValue
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValue,
              minValueBefore,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValue,
              minValueAfter,
              0,
              defaultEntry
            )

          check(
            mapBefore == (mapNoExtraKeysBefore + (0L, zeroValue)) + (Long.MinValue, minValueBefore)
          )
          check(mapAfter == (mapNoExtraKeysAfter + (0L, zeroValue)))
          ListMapLongKeyLemmas.addThenRemoveForNewKeyIsSame(
            mapNoExtraKeysBefore + (0L, zeroValue),
            Long.MinValue,
            minValueBefore
          )
          check(mapBefore - Long.MinValue == mapAfter)
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        zeroValue,
        minValueBefore,
        0,
        defaultEntry
      ) - Long.MinValue == getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysAfter,
        zeroValue,
        minValueAfter,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveZeroKeyThenRemoveKeyFromListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeysBefore: Int,
        extraKeysAfter: Int,
        zeroValueBefore: V,
        zeroValueAfter: V,
        minValue: V,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeysBefore >= 0)
      require(extraKeysBefore <= 3)
      require(extraKeysAfter >= 0)
      require(extraKeysAfter <= 3)
      require((extraKeysBefore & 2) == (extraKeysAfter & 2)) // MinValue key does not change
      require((extraKeysAfter & 1) == 0) // 0 key must be removed after
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      val mapNoExtraKeysBefore =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysBefore,
          zeroValueBefore,
          minValue,
          0,
          defaultEntry
        )
      val mapNoExtraKeysAfter =
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysAfter,
          zeroValueAfter,
          minValue,
          0,
          defaultEntry
        )

      lemmaNoChangeToArrayThenSameMapNoExtras(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        extraKeysAfter,
        zeroValueBefore,
        zeroValueAfter,
        minValue,
        minValue,
        0,
        defaultEntry
      )

      assert(mapNoExtraKeysBefore == mapNoExtraKeysAfter)

      if ((extraKeysBefore & 2) == 0) {
        // MinValue not defined
        if ((extraKeysBefore & 1) == 0) {
          ListMapLongKeyLemmas.removeNotPresentStillSame(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            ),
            0L
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )

          check(mapBefore == mapNoExtraKeysBefore + (0L, zeroValueBefore))
          check(mapAfter == mapNoExtraKeysAfter)
          ListMapLongKeyLemmas.addThenRemoveForNewKeyIsSame(
            mapNoExtraKeysBefore,
            0L,
            zeroValueBefore
          )
          check(mapBefore - 0L == mapAfter)
        }

      } else {
        // MinValue defined
        if ((extraKeysBefore & 1) == 0) {
          ListMapLongKeyLemmas.removeNotPresentStillSame(
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            ),
            0L
          )
        } else {
          val mapBefore =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysBefore,
              zeroValueBefore,
              minValue,
              0,
              defaultEntry
            )
          val mapAfter =
            getCurrentListMap(
              _keys,
              _values,
              mask,
              extraKeysAfter,
              zeroValueAfter,
              minValue,
              0,
              defaultEntry
            )

          check(
            mapBefore == (mapNoExtraKeysBefore + (0L, zeroValueBefore)) + (Long.MinValue, minValue)
          )
          check(mapAfter == (mapNoExtraKeysAfter + (Long.MinValue, minValue)))
          ListMapLongKeyLemmas.addThenRemoveForNewKeyIsSame(
            mapNoExtraKeysBefore + (Long.MinValue, minValue),
            0L,
            zeroValueBefore
          )
          ListMapLongKeyLemmas.addCommutativeForDiffKeys(
            mapNoExtraKeysBefore,
            0L,
            zeroValueBefore,
            Long.MinValue,
            minValue
          )
          check(mapBefore - 0L == mapAfter)
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        zeroValueBefore,
        minValue,
        0,
        defaultEntry
      ) - 0L == getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeysAfter,
        zeroValueAfter,
        minValue,
        0,
        defaultEntry
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(from >= 0 && from <= _keys.length)
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(k))
      require(_keys(i) == k)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys.updated(i, Long.MinValue), mask))
      require(arrayNoDuplicates(_keys.updated(i, Long.MinValue), 0))

      decreases(_keys.length - from)

      lemmaArrayContainsFromImpliesContainsFromZero(_keys, k, i)

      check(arrayContainsKey(_keys, k, 0))

      if (from > i) {
        if (from + 1 <= _keys.length) {
          lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            from + 1,
            defaultEntry
          )
        }

      } else {
        assert(from <= i)
        val listmapNoExtrasBefore =
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
        val listmapNoExtrasAfter = getCurrentListMapNoExtraKeys(
          _keys.updated(i, Long.MinValue),
          _values.updated(i, ValueCellFull(defaultEntry(0L))),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        )
        if (from == i) {
          lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            from + 1,
            defaultEntry
          )
          assert(_keys(from) == k)

          if (
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ).contains(k)
          ) {
            if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
              ListMapLongKeyLemmas.addStillContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ),
                0L,
                zeroValue,
                k
              )
              ListMapLongKeyLemmas.addStillContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ) + (0L, zeroValue),
                Long.MinValue,
                minValue,
                k
              )
            } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
              ListMapLongKeyLemmas.addStillContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ),
                0L,
                zeroValue,
                k
              )
            } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
              ListMapLongKeyLemmas.addStillContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ),
                Long.MinValue,
                minValue,
                k
              )
            }
            lemmaListMapContainsThenArrayContainsFrom(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              from + 1,
              defaultEntry
            )
            check(arrayContainsKey(_keys, k, from + 1))
            lemmaNoDuplicateFromThenFromBigger(_keys, 0, from)
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(_keys, k, from, Nil())
            check(false)
          }
          ListMapLongKeyLemmas.addThenRemoveForNewKeyIsSame(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ),
            _keys(from),
            _values(from).get(defaultEntry(0L))
          )
          check(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from,
              defaultEntry
            ) - k ==
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              )
          )
          check(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from,
              defaultEntry
            ) - k ==
              getCurrentListMapNoExtraKeys(
                _keys.updated(i, Long.MinValue),
                _values.updated(i, ValueCellFull(defaultEntry(0L))),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              )
          )
          check(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from,
              defaultEntry
            ) - k ==
              getCurrentListMapNoExtraKeys(
                _keys.updated(i, Long.MinValue),
                _values.updated(i, ValueCellFull(defaultEntry(0L))),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              )
          )

        } else {
          assert(from < i)
          lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            k,
            from + 1,
            defaultEntry
          )
          if (validKeyInArray(_keys(from))) {
            check(
              getCurrentListMapNoExtraKeys(
                _keys.updated(i, Long.MinValue),
                _values.updated(i, ValueCellFull(defaultEntry(0L))),
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ) ==
                ((getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ) - k + (_keys(from), _values(from).get(defaultEntry(0L)))))
            )

            if (_keys(from) == k) {
              check(arrayContainsKey(_keys, k, i))
              lemmaArrayContainsFromImpliesContainsFromSmaller(_keys, k, i, from + 1)
              lemmaNoDuplicateFromThenFromBigger(_keys, 0, from)
              lemmaArrayNoDuplicateThenKeysContainedNotEqual(_keys, k, from, Nil())
              check(false)
            }

            check(_keys(from) != k)

            check(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ) ==
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                ) + (_keys(from), _values(from).get(defaultEntry(0L)))
            )
            check(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ) - k ==
                getCurrentListMapNoExtraKeys(
                  _keys.updated(i, Long.MinValue),
                  _values.updated(i, ValueCellFull(defaultEntry(0L))),
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from + 1,
                  defaultEntry
                )
            )

            ListMapLongKeyLemmas.addRemoveCommutativeForDiffKeys(
              getCurrentListMapNoExtraKeys(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from + 1,
                defaultEntry
              ),
              _keys(from),
              _values(from).get(defaultEntry(0L)),
              k
            )
          }
        }
      }

    } ensuring (_ =>
      if (from <= i)
        getCurrentListMapNoExtraKeys(
          _keys.updated(i, Long.MinValue),
          _values.updated(i, ValueCellFull(defaultEntry(0L))),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          (getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          ) - k)
      else
        getCurrentListMapNoExtraKeys(
          _keys.updated(i, Long.MinValue),
          _values.updated(i, ValueCellFull(defaultEntry(0L))),
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        ) ==
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaNoChangeToArrayThenSameMapNoExtras[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeysBefore: Int,
        extraKeysAfter: Int,
        zeroValueBefore: V,
        zeroValueAfter: V,
        minValueBefore: V,
        minValueAfter: V,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeysBefore >= 0)
      require(extraKeysBefore <= 3)
      require(extraKeysAfter >= 0)
      require(extraKeysAfter <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(from >= 0 && from <= _keys.length)

      decreases(_keys.length - from)

      if (from < _keys.length) {
        lemmaNoChangeToArrayThenSameMapNoExtras(
          _keys,
          _values,
          mask,
          extraKeysBefore,
          extraKeysAfter,
          zeroValueBefore,
          zeroValueAfter,
          minValueBefore,
          minValueAfter,
          from + 1,
          defaultEntry
        )
      }

    } ensuring (_ =>
      getCurrentListMapNoExtraKeys(
        _keys,
        _values,
        mask,
        extraKeysBefore,
        zeroValueBefore,
        minValueBefore,
        from,
        defaultEntry
      ) ==
        getCurrentListMapNoExtraKeys(
          _keys,
          _values,
          mask,
          extraKeysAfter,
          zeroValueAfter,
          minValueAfter,
          from,
          defaultEntry
        )
    )

    // ------------------EQUIVALENCE BETWEEN LISTMAP AND ARRAY------------------------------------------------------------------------------------------------
    // ------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaKeyInListMapThenSameValueInArray[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        i: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )
      require(inRange(i, mask))
      require(_keys(i) == k)

      if (k != 0 && k != Long.MinValue) {
        lemmaKeyInListMapIsInArray(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          k,
          defaultEntry
        )
        lemmaListMapApplyFromThenApplyFromZero(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          k,
          _values(i).get(defaultEntry(0L)),
          i,
          defaultEntry
        )
      }
    } ensuring (_ =>
      if (k == 0)
        (extraKeys & 1) != 0 && getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        ).apply(
          k
        ) == zeroValue
      else if (k == Long.MinValue)
        (extraKeys & 2) != 0 && getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        ).apply(
          k
        ) == minValue
      else
        arrayContainsKey(_keys, k, 0) && getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          0,
          defaultEntry
        ).apply(k) == _values(i).get(defaultEntry(0L))
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaKeyInListMapIsInArray[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )
      lemmaListMapContainsThenArrayContainsFrom(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        k,
        0,
        defaultEntry
      )

    } ensuring (_ =>
      if (k != 0 && k != Long.MinValue) arrayContainsKey(_keys, k, 0)
      else if (k == 0) (extraKeys & 1) != 0
      else (extraKeys & 2) != 0
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaValidKeyInArrayIsInListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        i: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(_keys(i)))

      lemmaInListMapFromThenFromZero(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        i,
        i,
        defaultEntry
      )

    } ensuring (_ =>
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
        .contains(_keys(i))
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayContainsKeyThenInListMap[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(validKeyInArray(k))
      require(from >= 0 && from < _keys.length)
      require(arrayContainsKey(_keys, k, from))
      decreases(_keys.length - from)

      if (_keys(from) == k) {
        lemmaValidKeyInArrayIsInListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        )
      } else {
        lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          k,
          from
        )
        lemmaArrayContainsKeyThenInListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          k,
          from + 1,
          defaultEntry
        )
      }

    } ensuring (_ =>
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
        .contains(k)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaListMapApplyFromThenApplyFromZero[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        v: V,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(k)
      )
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .apply(k) == v
      )

      decreases(from)

      if (from > 0) {
        if (validKeyInArray(k)) {
          if (validKeyInArray(_keys(from - 1))) {
            lemmaListMapRecursiveValidKeyArray(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from - 1,
              defaultEntry
            )
            ListMapLongKeyLemmas.addStillContains(
              getCurrentListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ),
              _keys(from - 1),
              _values(from - 1).get(defaultEntry(0L)),
              k
            )
            lemmaNoDuplicateFromThenFromBigger(_keys, 0, from - 1)
            lemmaListMapContainsThenArrayContainsFrom(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              from,
              defaultEntry
            )
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(_keys, k, from - 1, Nil())
            ListMapLongKeyLemmas.addApplyDifferent(
              getCurrentListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                from,
                defaultEntry
              ),
              _keys(from - 1),
              _values(from - 1).get(defaultEntry(0L)),
              k
            )
          }
        }
        lemmaListMapApplyFromThenApplyFromZero(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          k,
          v,
          from - 1,
          defaultEntry
        )
      }

    } ensuring (_ =>
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
        .contains(k) && getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        0,
        defaultEntry
      )
        .apply(k) == v
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(arrayContainsKey(_keys, k, from))
      require(_keys(from) != k)

    } ensuring (_ => arrayContainsKey(_keys, k, from + 1))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaListMapRecursiveValidKeyArray[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(validKeyInArray(_keys(from)))

      if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ) + (0L, zeroValue),
          Long.MinValue,
          minValue,
          _keys(from),
          _values(from).get(defaultEntry(0L))
        )
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ),
          0L,
          zeroValue,
          _keys(from),
          _values(from).get(defaultEntry(0L))
        )
      } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ),
          0L,
          zeroValue,
          _keys(from),
          _values(from).get(defaultEntry(0L))
        )
      } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
        ListMapLongKeyLemmas.addCommutativeForDiffKeys(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ),
          Long.MinValue,
          minValue,
          _keys(from),
          _values(from).get(defaultEntry(0L))
        )
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from,
        defaultEntry
      ) == getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from + 1,
        defaultEntry
      ) + (_keys(from), _values(from).get(defaultEntry(0L)))
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapAfterAddingDiffThenInBefore[V](
        k: Long,
        otherKey: Long,
        value: V,
        lm: ListMapLongKey[V]
    ): Unit = {
      require((lm + (otherKey, value)).contains(k))
      require(k != otherKey)
      if (!lm.contains(k)) {
        ListMapLongKeyLemmas.addStillNotContains(lm, otherKey, value, k)
      }

    } ensuring (_ => lm.contains(k))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require((extraKeys & 2) == 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(
            k
          ) && _keys(from) != k
      )

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 1) != 0) {
          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            0L,
            zeroValue,
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ) + (_keys(
              from
            ), _values(from).get(defaultEntry(0L)))
          )
          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            _keys(from),
            _values(from).get(defaultEntry(0L)),
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            )
          )

          ListMapLongKeyLemmas.addStillContains(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ),
            0L,
            zeroValue,
            k
          )

        } else {
          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            _keys(from),
            _values(from).get(defaultEntry(0L)),
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            )
          )
        }

      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from + 1,
        defaultEntry
      ).contains(k)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require((extraKeys & 1) == 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(
            k
          ) && _keys(from) != k
      )

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 2) != 0) {

          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            Long.MinValue,
            minValue,
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ) + (_keys(
              from
            ), _values(from).get(defaultEntry(0L)))
          )
          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            _keys(from),
            _values(from).get(defaultEntry(0L)),
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            )
          )

          ListMapLongKeyLemmas.addStillContains(
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            ),
            Long.MinValue,
            minValue,
            k
          )

        } else {
          lemmaInListMapAfterAddingDiffThenInBefore(
            k,
            _keys(from),
            _values(from).get(defaultEntry(0L)),
            getCurrentListMapNoExtraKeys(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              from + 1,
              defaultEntry
            )
          )
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from + 1,
        defaultEntry
      ).contains(k)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require((extraKeys & 1) != 0 && (extraKeys & 2) != 0)
      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(
            k
          ) && _keys(from) != k
      )

      if (validKeyInArray(_keys(from))) {
        lemmaInListMapAfterAddingDiffThenInBefore(
          k,
          Long.MinValue,
          minValue,
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ) + (_keys(
            from
          ), _values(from).get(defaultEntry(0L))) + (0L, zeroValue)
        )
        lemmaInListMapAfterAddingDiffThenInBefore(
          k,
          0L,
          zeroValue,
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ) + (_keys(
            from
          ), _values(from).get(defaultEntry(0L)))
        )
        lemmaInListMapAfterAddingDiffThenInBefore(
          k,
          _keys(from),
          _values(from).get(defaultEntry(0L)),
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          )
        )

        ListMapLongKeyLemmas.addStillContains(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ),
          0L,
          zeroValue,
          k
        )
        ListMapLongKeyLemmas.addStillContains(
          getCurrentListMapNoExtraKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from + 1,
            defaultEntry
          ) + (0L, zeroValue),
          Long.MinValue,
          minValue,
          k
        )
      }
    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from + 1,
        defaultEntry
      ).contains(k)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenFromPlsOneIfNotEqToFst[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(k != 0 && k != Long.MinValue)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(
            k
          ) && _keys(from) != k
      )

      if (validKeyInArray(_keys(from))) {
        if ((extraKeys & 1) == 0) {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            k,
            from,
            defaultEntry
          )
        } else if ((extraKeys & 2) == 0) {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            k,
            from,
            defaultEntry
          )
        } else {
          lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            k,
            from,
            defaultEntry
          )
        }
      }

    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from + 1,
        defaultEntry
      ).contains(k)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenFromZero[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        i: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(i >= from && i < _keys.length)
      require(validKeyInArray(_keys(i)))
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(
            _keys(i)
          )
      )

      lemmaInListMapFromThenInFromSmaller(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from,
        0,
        i,
        defaultEntry
      )

    } ensuring (_ =>
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
        .contains(_keys(i))
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenInFromSmaller[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        newFrom: Int,
        i: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(newFrom >= 0 && newFrom <= from)
      require(i >= from && i < _keys.length)
      require(
        validKeyInArray(_keys(i)) && getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        )
          .contains(_keys(i))
      )

      decreases(from - newFrom)
      if (from > newFrom) {
        lemmaInListMapFromThenInFromMinusOne(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          i,
          defaultEntry
        )
        lemmaInListMapFromThenInFromSmaller(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from - 1,
          newFrom,
          i,
          defaultEntry
        )
      }
    } ensuring (_ =>
      getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, newFrom, defaultEntry)
        .contains(
          _keys(i)
        )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapFromThenInFromMinusOne[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        from: Int,
        i: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from > 0 && from < _keys.length)
      require(i >= from && i < _keys.length)
      require(
        validKeyInArray(_keys(i)) && getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from,
          defaultEntry
        )
          .contains(_keys(i))
      )

      val currentLMFrom: ListMapLongKey[V] =
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
      val currentLMFromMinusOne: ListMapLongKey[V] =
        getCurrentListMap(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from - 1,
          defaultEntry
        )
      if (validKeyInArray(_keys(from - 1))) {
        lemmaListMapRecursiveValidKeyArray(
          _keys,
          _values,
          mask,
          extraKeys,
          zeroValue,
          minValue,
          from - 1,
          defaultEntry
        )
        ListMapLongKeyLemmas.addStillContains(
          getCurrentListMap(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            from,
            defaultEntry
          ),
          _keys(from - 1),
          _values(from - 1).get(defaultEntry(0L)),
          _keys(i)
        )
      }
    } ensuring (_ =>
      getCurrentListMap(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        from - 1,
        defaultEntry
      ).contains(
        _keys(i)
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaListMapContainsThenArrayContainsFrom[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        from: Int,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)

      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(from >= 0 && from < _keys.length)
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
          .contains(k)
      )

      decreases(_keys.length - from)
      val currentListMap: ListMapLongKey[V] =
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, from, defaultEntry)
      if (k != 0 && k != Long.MinValue) {
        if (from + 1 < _keys.length) {
          if (_keys(from) != k) {
            lemmaInListMapFromThenFromPlsOneIfNotEqToFst(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              from,
              defaultEntry
            )
            lemmaListMapContainsThenArrayContainsFrom(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              from + 1,
              defaultEntry
            )
          }
        } else {
          if (validKeyInArray(_keys(from))) {
            if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                Long.MinValue,
                minValue,
                (getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ) + (0L, zeroValue))
              )
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                0L,
                zeroValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                0L,
                zeroValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                Long.MinValue,
                minValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            }
            ListMapLongKeyLemmas.emptyContainsNothing[V](k)
            if (k != _keys(from)) {
              ListMapLongKeyLemmas.addStillNotContains(
                ListMapLongKey.empty[V],
                _keys(from),
                _values(from).get(defaultEntry(0L)),
                k
              )
              check(false)
            }
          } else {
            ListMapLongKeyLemmas.emptyContainsNothing[V](k)
            if ((extraKeys & 1) != 0 && (extraKeys & 2) != 0) {
              ListMapLongKeyLemmas.addStillNotContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ),
                0L,
                zeroValue,
                k
              )
              ListMapLongKeyLemmas.addStillNotContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ),
                Long.MinValue,
                minValue,
                k
              )
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                Long.MinValue,
                minValue,
                (getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ) + (0L, zeroValue))
              )
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                0L,
                zeroValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            } else if ((extraKeys & 1) != 0 && (extraKeys & 2) == 0) {
              ListMapLongKeyLemmas.addStillNotContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ),
                0L,
                zeroValue,
                k
              )
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                0L,
                zeroValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            } else if ((extraKeys & 2) != 0 && (extraKeys & 1) == 0) {
              ListMapLongKeyLemmas.addStillNotContains(
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                ),
                Long.MinValue,
                minValue,
                k
              )
              lemmaInListMapAfterAddingDiffThenInBefore(
                k,
                Long.MinValue,
                minValue,
                getCurrentListMapNoExtraKeys(
                  _keys,
                  _values,
                  mask,
                  extraKeys,
                  zeroValue,
                  minValue,
                  from,
                  defaultEntry
                )
              )
            }
            check(false)
          }
        }
      }
    } ensuring (_ =>
      (if (k != 0 && k != Long.MinValue) arrayContainsKey(_keys, k, from)
       else if (k == 0) (extraKeys & 1) != 0
       else (extraKeys & 2) != 0)
    )

    // ------------------END----------------------------------------------------------------------------------------------------------------------------------
    // ------------------EQUIVALENCE BETWEEN LISTMAP AND ARRAY------------------------------------------------------------------------------------------------

    // ------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------
    // ------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    @opaque
    @inlineOnce
    @pure
    def lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array(_keys: Array[Long], mask: Int, i: Int): Unit = {
      require(validMask(mask))
      require(_keys.length == mask + 1)
      require(_keys == Array.fill(mask + 1)(0L))
      require(i >= 0 && i <= _keys.length)
      decreases(_keys.length - i)

      if (i < _keys.length) {
        lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array(_keys, mask, i + 1)
      }
    } ensuring (_ => arrayForallSeekEntryOrOpenFound(i)(_keys, mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapThenSeekEntryFinds[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        k,
        defaultEntry
      )
      assert(arrayContainsKey(_keys, k, 0))
      assert(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      val i = arrayScanForKey(_keys, k, 0)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
      lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(k, i, _keys, mask)

    } ensuring (_ =>
      (seekEntry(k)(_keys, mask) match {
        case Found(index) => inRange(index, mask) && _keys(index) == k
        case _            => false
      })
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaNotInListMapThenSeekEntryFindsMissingBit[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(validKeyInArray(k))
      require(
        !getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )
      if (validKeyInArray(k)) {
        if (arrayContainsKey(_keys, k, 0)) {
          val i = arrayScanForKey(_keys, k, 0)
          lemmaValidKeyInArrayIsInListMap(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            i,
            defaultEntry
          )
          lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(k, i, _keys, mask)
          lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
          check(false)
        } else {
          seekEntry(k)(_keys, mask) match {
            case Found(index) => {
              // found but not in array --> Contradiction
              lemmaValidKeyInArrayIsInListMap(
                _keys,
                _values,
                mask,
                extraKeys,
                zeroValue,
                minValue,
                index,
                defaultEntry
              )
              check(false)
            }
            case _ => ()
          }
        }
      }

    } ensuring (_ =>
      (seekEntry(k)(_keys, mask) match {
        case MissingZero(_) => true
        case Undefined()    => true
        case _              => false
      })
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaInListMapThenSeekEntryOrOpenFindsIt[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(
        getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(
        _keys,
        _values,
        mask,
        extraKeys,
        zeroValue,
        minValue,
        k,
        defaultEntry
      )
      val i = arrayScanForKey(_keys, k, 0)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(_keys, mask, 0, i)
      assert(arrayForallSeekEntryOrOpenFound(i)(_keys, mask))

    } ensuring (_ =>
      (seekEntryOrOpen(k)(_keys, mask) match {
        case Found(index) => inRange(index, mask) && _keys(index) == k
        case _            => false
      })
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long,
        defaultEntry: Long => V
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(validKeyInArray(k))
      require(
        !getCurrentListMap(_keys, _values, mask, extraKeys, zeroValue, minValue, 0, defaultEntry)
          .contains(k)
      )

      val seekEntryRes = seekEntryOrOpen(k)(_keys, mask)
      seekEntryRes match {
        case Found(index) => {
          assert(_keys(index) == k)
          assert(arrayContainsKey(_keys, k, index))
          lemmaArrayContainsFromImpliesContainsFromZero(_keys, k, index)
          lemmaValidKeyInArrayIsInListMap(
            _keys,
            _values,
            mask,
            extraKeys,
            zeroValue,
            minValue,
            index,
            defaultEntry
          )
          check(false)
        }
        case MissingZero(_) => {
          if (arrayContainsKey(_keys, k, 0)) {
            val i = arrayScanForKey(_keys, k, 0)
            lemmaArrayContainsKeyThenInListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              i,
              defaultEntry
            )
            check(false)
          }
          check(!arrayContainsKey(_keys, k, 0))
        }
        case MissingVacant(_) => {
          if (arrayContainsKey(_keys, k, 0)) {
            val i = arrayScanForKey(_keys, k, 0)
            lemmaArrayContainsKeyThenInListMap(
              _keys,
              _values,
              mask,
              extraKeys,
              zeroValue,
              minValue,
              k,
              i,
              defaultEntry
            )
            check(false)
          }
          check(!arrayContainsKey(_keys, k, 0))
        }
        case Undefined() => ()
      }

    } ensuring (_ => {
      val seekEntryRes = seekEntryOrOpen(k)(_keys, mask)
      seekEntryRes match {
        case MissingZero(index) =>
          inRange(index, mask) && _keys(index) == 0 && !arrayContainsKey(_keys, k, 0)
        case MissingVacant(index) =>
          inRange(index, mask) && _keys(index) == Long.MinValue && !arrayContainsKey(
            _keys,
            k,
            0
          )
        case Undefined() => true
        case _           => false
      }
    })

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSeekEntryOrOpenReturnsValidIndex[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))
      require(validKeyInArray(k))

    } ensuring (_ =>
      seekEntryOrOpen(k)(_keys, mask) match {
        case Undefined()          => true
        case Found(index)         => inRange(index, mask)
        case MissingVacant(index) => inRange(index, mask)
        case MissingZero(index)   => inRange(index, mask)
        case _                    => false
      }
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSeekEntryGivesInRangeIndex[V](
        _keys: Array[Long],
        _values: Array[ValueCell[V]],
        mask: Int,
        extraKeys: Int,
        zeroValue: V,
        minValue: V,
        k: Long
    ): Unit = {
      require(validMask(mask))
      require(_values.length == mask + 1)
      require(_keys.length == _values.length)
      require(mask >= 0)
      require(extraKeys >= 0)
      require(extraKeys <= 3)
      require(arrayForallSeekEntryOrOpenFound(0)(_keys, mask))
      require(arrayNoDuplicates(_keys, 0))

      require(validKeyInArray(k))

    } ensuring (_ =>
      (seekEntry(k)(_keys, mask) match {
        case Found(index) => inRange(index, mask)
        case _            => true
      })
    )

    // ------------------END----------------------------------------------------------------------------------------------------------------------------------
    // ------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(
        a: Array[Long],
        i: Int,
        j: Int,
        x: Int,
        index: Int,
        vacantIndex: Int
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
      require(index >= 0 && index < a.length)
      require(vacantIndex >= 0 && vacantIndex < a.length)
      require(a(vacantIndex) == Long.MinValue)
      require(
        seekKeyOrZeroReturnVacant(x, index, vacantIndex)(a(j), a, mask) == Found(j)
      )

      decreases(MAX_ITER - x)
      if (a(index) == a(j)) {
        // trivial
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          vacantIndex
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroReturnVacant(x, index, vacantIndex)(
        a.updated(i, Long.MinValue).apply(j),
        a.updated(i, Long.MinValue),
        mask
      ) == seekKeyOrZeroReturnVacant(x, index, vacantIndex)(
        a(j),
        a,
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(
        a: Array[Long],
        i: Int,
        j: Int,
        x: Int,
        index: Int,
        resX: Int,
        resIndex: Int
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
      require(resX >= 0 && resX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)

      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
          false,
          resIndex,
          resX
        )
      )

      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValue(
            0,
            toIndex(a.updated(i, Long.MinValue).apply(j), mask)
          )(
            a.updated(i, Long.MinValue).apply(j),
            a.updated(i, Long.MinValue),
            mask
          )
      )

      decreases(MAX_ITER - x)
      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)

      check(seekEntry(a(j))(a, mask) == Found(j))
      val newArray = a.updated(i, Long.MinValue)
      assert(a(j) == newArray(j))

      if (x == resX) {
        assert(index == resIndex)
        if (a(index) == a(j)) {
          assert(j == index)
          // trivial
        } else {
          assert(a(index) == Long.MinValue)
          check(
            seekEntryOrOpen(a(j))(a, mask) == seekKeyOrZeroReturnVacant(
              x,
              index,
              index
            )(
              a(j),
              a,
              mask
            )
          )
          check(
            seekEntryOrOpen(newArray(j))(
              newArray,
              mask
            ) == seekKeyOrZeroReturnVacant(
              x,
              index,
              index
            )(newArray(j), newArray, mask)
          )
          lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper(a, i, j, x, index, index)
        }
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          resX,
          resIndex
        )
      }

    } ensuring (_ =>
      seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(
        a.updated(i, Long.MinValue).apply(j)
      )(
        a.updated(i, Long.MinValue),
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
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

      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == Intermediate(
          false,
          intermediateBeforeIndex,
          intermediateBeforeX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(
          0,
          toIndex(a.updated(i, Long.MinValue).apply(j), mask)
        )(
          a.updated(i, Long.MinValue).apply(j),
          a.updated(i, Long.MinValue),
          mask
        ) ==
          Intermediate(undefinedAfter, intermediateAfterIndex, intermediateAfterX)
      )

      require(
        seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
          false,
          intermediateBeforeIndex,
          intermediateBeforeX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(
          a.updated(i, Long.MinValue).apply(j),
          a.updated(i, Long.MinValue),
          mask
        ) ==
          Intermediate(undefinedAfter, intermediateAfterIndex, intermediateAfterX)
      )

      require(
        Intermediate(false, intermediateBeforeIndex, intermediateBeforeX) != Intermediate(
          undefinedAfter,
          intermediateAfterIndex,
          intermediateAfterX
        )
      )

      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))

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

    } ensuring (_ => !undefinedAfter && intermediateAfterIndex == i && intermediateAfterX < intermediateBeforeX)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(
        a: Array[Long],
        i: Int,
        j: Int,
        x: Int,
        index: Int,
        vacantBefore: Int,
        vacantAfter: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0) // 5
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(vacantBefore >= 0 && vacantBefore < a.length)
      require(vacantAfter >= 0 && vacantAfter < a.length)
      require(a(vacantBefore) == Long.MinValue)
      require(a.updated(i, Long.MinValue).apply(vacantAfter) == Long.MinValue)
      require(vacantAfter == i)
      require(index >= 0 && index < a.length)
      require(
        seekKeyOrZeroReturnVacant(x, index, vacantBefore)(a(j), a, mask) == Found(j)
      )

      decreases(MAX_ITER - x)

      if (a(index) == a(j)) {
        check(j == index)
        // trivial
      } else {
        lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          vacantBefore,
          vacantAfter
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
        a.updated(i, Long.MinValue).apply(j),
        a.updated(i, Long.MinValue),
        mask
      ) == Found(j)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
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
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(i)))
      require(validKeyInArray(a(j)))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x >= 0 && x <= MAX_ITER)
      require(intermediateBeforeX >= 0 && intermediateBeforeX <= MAX_ITER)
      require(intermediateAfterX >= 0 && intermediateAfterX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(intermediateBeforeIndex >= 0 && intermediateBeforeIndex < a.length)
      require(intermediateAfterIndex >= 0 && intermediateAfterIndex < a.length)

      require(intermediateAfterX < intermediateBeforeX)
      require(a.updated(i, Long.MinValue).apply(intermediateAfterIndex) == Long.MinValue)

      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == Intermediate(
          false,
          intermediateBeforeIndex,
          intermediateBeforeX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
          false,
          intermediateBeforeIndex,
          intermediateBeforeX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(
          0,
          toIndex(a.updated(i, Long.MinValue).apply(j), mask)
        )(
          a.updated(i, Long.MinValue).apply(j),
          a.updated(i, Long.MinValue),
          mask
        ) ==
          Intermediate(false, intermediateAfterIndex, intermediateAfterX)
      )

      require(
        if (x <= intermediateAfterX)
          seekKeyOrZeroOrLongMinValue(
            0,
            toIndex(a.updated(i, Long.MinValue).apply(j), mask)
          )(
            a.updated(i, Long.MinValue).apply(j),
            a.updated(i, Long.MinValue),
            mask
          ) ==
            seekKeyOrZeroOrLongMinValue(x, index)(
              a.updated(i, Long.MinValue).apply(j),
              a.updated(i, Long.MinValue),
              mask
            )
        else
          seekKeyOrZeroReturnVacant(x, index, intermediateAfterIndex)(
            a.updated(i, Long.MinValue).apply(j),
            a.updated(i, Long.MinValue),
            mask
          ) == seekEntryOrOpen(
            a.updated(i, Long.MinValue).apply(j)
          )(a.updated(i, Long.MinValue), mask)
      )
      require(x <= intermediateBeforeX)
      require(intermediateAfterIndex == i)
      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))
      check(a(intermediateBeforeIndex) == Long.MinValue || a(intermediateBeforeIndex) == a(j))

      if (a(index) == a.updated(i, Long.MinValue).apply(index) && a(index) == a(j)) {
        check(
          seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(
            a.updated(i, Long.MinValue).apply(j)
          )(
            a.updated(i, Long.MinValue),
            mask
          )
        )
      } else if (a(index) == Long.MinValue) {
        check(
          seekEntryOrOpen(a(j))(a, mask) == seekKeyOrZeroReturnVacant(
            x,
            index,
            index
          )(
            a(j),
            a,
            mask
          )
        )
        check(index == intermediateBeforeIndex)
        check(x == intermediateBeforeX)
        lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant(
          a,
          i,
          j,
          x,
          index,
          intermediateBeforeIndex,
          intermediateAfterIndex
        )(mask)
      } else if (x == intermediateAfterX) {
        check(index == intermediateAfterIndex)
        check(a.updated(i, Long.MinValue).apply(index) == Long.MinValue)
        check(
          seekEntryOrOpen(a.updated(i, Long.MinValue).apply(j))(
            a.updated(i, Long.MinValue),
            mask
          ) == seekKeyOrZeroReturnVacant(x, index, intermediateAfterIndex)(
            a.updated(i, Long.MinValue).apply(j),
            a.updated(i, Long.MinValue),
            mask
          )
        )
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          intermediateBeforeX,
          intermediateBeforeIndex,
          intermediateAfterX,
          intermediateAfterIndex
        )
      } else {
        lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(
          a,
          i,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          intermediateBeforeX,
          intermediateBeforeIndex,
          intermediateAfterX,
          intermediateAfterIndex
        )

      }

    } ensuring (_ =>
      seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(
        a.updated(i, Long.MinValue).apply(j)
      )(
        a.updated(i, Long.MinValue),
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2(a: Array[Long], i: Int, j: Int)(implicit
        mask: Int
    ): Unit = {
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
      val intermediateBefore =
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))
      intermediateBefore match {
        case Intermediate(undefined, intermediateBeforeIndex, intermediateBeforeX) => {
          if (undefined) {
            check(false)
          } else {
            if (
              seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask) ==
                seekKeyOrZeroOrLongMinValue(
                  0,
                  toIndex(a.updated(i, Long.MinValue).apply(j), mask)
                )(
                  a.updated(i, Long.MinValue).apply(j),
                  a.updated(i, Long.MinValue),
                  mask
                )
            ) {
              lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1(
                a,
                i,
                j,
                0,
                toIndex(a(j), mask),
                intermediateBeforeX,
                intermediateBeforeIndex
              )(mask)
            } else {
              val intermediateAfter = seekKeyOrZeroOrLongMinValue(
                0,
                toIndex(a.updated(i, Long.MinValue).apply(j), mask)
              )(a.updated(i, Long.MinValue).apply(j), a.updated(i, Long.MinValue), mask)

              intermediateAfter match {
                case Intermediate(undefined, intermediateAfterIndex, intermediateAfterX) => {
                  lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI(
                    a,
                    i,
                    j,
                    0,
                    toIndex(a(j), mask),
                    intermediateBeforeX,
                    intermediateBeforeIndex,
                    intermediateAfterX,
                    intermediateAfterIndex,
                    undefined
                  )
                  check(!undefined)
                  check(intermediateAfterIndex == i)
                  check(a.updated(i, Long.MinValue).apply(intermediateAfterIndex) == Long.MinValue)
                  check(
                    seekEntryOrOpen(a.updated(i, Long.MinValue).apply(j))(
                      a.updated(i, Long.MinValue),
                      mask
                    ) ==
                      seekKeyOrZeroReturnVacant(
                        intermediateAfterX,
                        intermediateAfterIndex,
                        intermediateAfterIndex
                      )(a(j), a.updated(i, Long.MinValue), mask)
                  )
                  lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper(
                    a,
                    i,
                    j,
                    0,
                    toIndex(a(j), mask),
                    intermediateBeforeX,
                    intermediateBeforeIndex,
                    intermediateAfterX,
                    intermediateAfterIndex
                  )(mask)
                }
                case _ => check(false)
              }
            }
          }
        }
        case _ => check(false)
      }

    } ensuring (_ =>
      seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(
        a.updated(i, Long.MinValue).apply(j)
      )(
        a.updated(i, Long.MinValue),
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex(
        a: Array[Long],
        i: Int,
        startIndex: Int
    )(implicit
        mask: Int
    ): Unit = {
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

    } ensuring (_ => arrayForallSeekEntryOrOpenFound(startIndex)(a.updated(i, Long.MinValue), mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutLongMinValuePreservesForallSeekEntryOrOpen(a: Array[Long], i: Int)(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(a(i)))
      require(arrayNoDuplicates(a, 0))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      assert(a(i) != 0 && a(i) != Long.MinValue)
      lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex(a, i, 0)(mask)

    } ensuring (_ => arrayForallSeekEntryOrOpenFound(0)(a.updated(i, Long.MinValue), mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant(
        a: Array[Long],
        i: Int,
        k: Long,
        j: Int,
        x: Int,
        index: Int,
        vacantSpotIndex: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(index >= 0 && index < mask + 1)
      require(x <= MAX_ITER && x >= 0)
      require(vacantSpotIndex >= 0 && vacantSpotIndex < mask + 1)
      require(a(vacantSpotIndex) == Long.MinValue)
      require(a.updated(i, k).apply(vacantSpotIndex) == Long.MinValue)
      require(
        seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(
          a(j),
          a,
          mask
        ) == Found(j)
      )

      decreases(MAX_ITER - x)

      val resBefore =
        seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(a(j), a, mask)

      if (x >= MAX_ITER) {
        check(false)
      } else if (a(index) == a(j)) {
        assert(index == j)

      } else if (a(index) == 0) {
        check(false)
      } else {
        assert(index != j)
        lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant(
          a,
          i,
          k,
          j,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          vacantSpotIndex
        )
        check(
          seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(a(j), a, mask) ==
            seekKeyOrZeroReturnVacant(
              x + 1,
              (index + 2 * (x + 1) * x - 3) & mask,
              vacantSpotIndex
            )(
              a(j),
              a,
              mask
            )
        )

        if (
          seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == Undefined()
        ) {
          check(false)
        }
        if (
          seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == Found(index)
        ) {
          check(a.updated(i, k).apply(index) == a(j))
          val q = a(j)
          val newArray = a.updated(i, k)
          assert(q == a.updated(i, k).apply(j))
          assert(q == a.updated(i, k).apply(index))
          if (j < index) {
            check(arrayContainsKey(newArray, q, j))
            check(arrayContainsKey(newArray, q, index))
            lemmaArrayContainsFromImpliesContainsFromSmaller(newArray, q, index, j + 1)
            check(arrayContainsKey(newArray, q, j + 1))
            check(arrayNoDuplicates(a, 0))
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, 0, List())
            check(arrayNoDuplicates(newArray, 0))
            lemmaNoDuplicateFromThenFromBigger(newArray, 0, j)
            lemmaArrayNoDuplicateThenKeysContainedNotEqual(newArray, q, j, Nil())

            check(false)
          }
          if (index < j) {
            check(arrayContainsKey(newArray, q, j))
            check(arrayContainsKey(newArray, q, index))
            lemmaArrayContainsFromImpliesContainsFromSmaller(newArray, q, j, index + 1)
            check(arrayContainsKey(newArray, q, index + 1))
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
        if (
          seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == MissingVacant(vacantSpotIndex)
        ) {
          check(a.updated(i, k).apply(index) == 0)
          check(false)
        }

      }

    } ensuring (_ =>
      seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(a(j), a, mask) ==
        seekKeyOrZeroReturnVacant(x, index, vacantSpotIndex)(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1(a: Array[Long], i: Int, k: Long, j: Int)(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValue(0, toIndex(a.updated(i, k).apply(j), mask))(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          )
      )

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))

      val intermediateBefore =
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask)
      val intermediateAfter =
        seekKeyOrZeroOrLongMinValue(0, toIndex(a.updated(i, k).apply(j), mask))(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      assert(intermediateBefore == intermediateAfter)
      intermediateBefore match {
        case Intermediate(undefined, index, x) if (undefined) => {}
        case Intermediate(undefined, index, x) if (!undefined) => {
          if (a(index) == a(j)) {} else if (a(index) == 0) {
            check(seekEntryOrOpen(a(j))(a, mask) == MissingZero(index))
            check(arrayForallSeekEntryOrOpenFound(0)(a, mask))
            lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
            check(false)
          } else {
            check(
              seekEntryOrOpen(a(j))(a, mask) == seekKeyOrZeroReturnVacant(
                x,
                index,
                index
              )(
                a(j),
                a,
                mask
              )
            )
            check(
              seekEntryOrOpen(a.updated(i, k).apply(j))(a.updated(i, k), mask) ==
                seekKeyOrZeroReturnVacant(x, index, index)(
                  a.updated(i, k).apply(j),
                  a.updated(i, k),
                  mask
                )
            )
            lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant(
              a,
              i,
              k,
              j,
              x,
              index,
              index
            )(mask)

          }
        }
      }

    } ensuring (_ =>
      seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(a.updated(i, k).apply(j))(
        a.updated(i, k),
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI(
        a: Array[Long],
        i: Int,
        k: Long,
        j: Int,
        index: Int,
        x: Int,
        resIndex: Int,
        resX: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(resX <= MAX_ITER)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)
      require(a(resIndex) == a(j))
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask)
      )

      decreases(MAX_ITER - x)
      if (a(index) == 0) {
        check(false)
      } else if (a(index) == Long.MinValue) {
        check(false)
      } else if (a(index) == a(j)) {
        check(index == resIndex)
      } else {
        lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI(
          a,
          i,
          k,
          j,
          (index + 2 * (x + 1) * x - 3) & mask,
          x + 1,
          resIndex,
          resX
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroOrLongMinValue(x, index)(
        a.updated(i, k).apply(j),
        a.updated(i, k),
        mask
      ) == Intermediate(false, resIndex, resX)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(
        a: Array[Long],
        i: Int,
        k: Long,
        j: Int,
        index: Int,
        x: Int,
        vacantBefore: Int,
        vacantAfter: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
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
      require(
        seekEntryOrOpen(a.updated(i, k).apply(j))(
          a.updated(i, k),
          mask
        ) == seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      )
      require(
        seekEntryOrOpen(a(j))(a, mask) == seekKeyOrZeroReturnVacant(
          x,
          index,
          vacantBefore
        )(
          a(j),
          a,
          mask
        )
      )
      require(
        seekKeyOrZeroReturnVacant(x, index, vacantBefore)(a(j), a, mask) == Found(j)
      )

      decreases(MAX_ITER - x)

      if (a(index) == a(j)) {
        check(
          seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == Found(index)
        )
        check(
          seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == Found(j)
        )
      } else {
        lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(
          a,
          i,
          k,
          j,
          (index + 2 * (x + 1) * x - 3) & mask,
          x + 1,
          vacantBefore,
          vacantAfter
        )
        check(
          seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          ) == Found(j)
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroReturnVacant(x, index, vacantAfter)(
        a.updated(i, k).apply(j),
        a.updated(i, k),
        mask
      ) == seekKeyOrZeroReturnVacant(x, index, vacantBefore)(a(j), a, mask)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesVacantIsAtI(
        a: Array[Long],
        i: Int,
        k: Long,
        j: Int,
        index: Int,
        x: Int,
        resIntermediateIndex: Int,
        resIntermediateX: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x <= MAX_ITER)
      require(x >= 0)
      require(resIntermediateX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIntermediateIndex >= 0 && resIntermediateIndex < a.length)
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == Intermediate(
          false,
          resIntermediateIndex,
          resIntermediateX
        )
      )
      require(resIntermediateIndex == i)
      require(a(resIntermediateIndex) == Long.MinValue)
      require(
        if (x <= resIntermediateX)
          seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
            false,
            resIntermediateIndex,
            resIntermediateX
          )
        else
          seekKeyOrZeroReturnVacant(x, index, resIntermediateIndex)(
            a(j),
            a,
            mask
          ) == Found(j)
      )
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a.updated(i, k).apply(j), mask))(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        ) ==
          seekKeyOrZeroOrLongMinValue(x, index)(
            a.updated(i, k).apply(j),
            a.updated(i, k),
            mask
          )
      )

      decreases(MAX_ITER - x)

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))
      check(
        seekKeyOrZeroReturnVacant(
          resIntermediateX,
          resIntermediateIndex,
          resIntermediateIndex
        )(
          a(j),
          a,
          mask
        ) == Found(j)
      )

      val intermediateAfter =
        seekKeyOrZeroOrLongMinValue(x, index)(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      intermediateAfter match {
        case Intermediate(undefined, indexIntermediateAfter, xIntermediateAfter) => {
          if (x < xIntermediateAfter) {
            lemmaPutValidKeyPreservesVacantIsAtI(
              a,
              i,
              k,
              j,
              (index + 2 * (x + 1) * x - 3) & mask,
              x + 1,
              resIntermediateIndex,
              resIntermediateX
            )
          } else {
            assert(x == xIntermediateAfter)
            assert(index == indexIntermediateAfter)
            assert(
              seekKeyOrZeroReturnVacant(x, index, resIntermediateIndex)(
                a(j),
                a,
                mask
              ) == Found(j)
            )
            if (a.updated(i, k).apply(index) == a.updated(i, k).apply(j)) {
              assert(!undefined)
              check(
                seekEntryOrOpen(a.updated(i, k).apply(j))(a.updated(i, k), mask) == Found(
                  index
                )
              )
            } else {
              if (a.updated(i, k).apply(index) == 0) {
                check(
                  seekEntryOrOpen(a(j))(
                    a,
                    mask
                  ) == seekKeyOrZeroReturnVacant(
                    x,
                    index,
                    resIntermediateIndex
                  )(a(j), a, mask)
                )
                check(
                  seekKeyOrZeroReturnVacant(x, index, resIntermediateIndex)(
                    a(j),
                    a,
                    mask
                  ) == MissingVacant(resIntermediateIndex)
                )
                check(false)
              }
              check(a.updated(i, k).apply(index) == Long.MinValue)
              check(
                seekEntryOrOpen(a.updated(i, k).apply(j))(
                  a.updated(i, k),
                  mask
                ) == seekKeyOrZeroReturnVacant(x, index, index)(
                  a.updated(i, k).apply(j),
                  a.updated(i, k),
                  mask
                )
              )
              check(
                seekEntryOrOpen(a(j))(
                  a,
                  mask
                ) == seekKeyOrZeroReturnVacant(
                  x,
                  index,
                  resIntermediateIndex
                )(a(j), a, mask)
              )
              check(
                seekKeyOrZeroReturnVacant(x, index, resIntermediateIndex)(
                  a(j),
                  a,
                  mask
                ) == Found(j)
              )

              lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater(
                a,
                i,
                k,
                j,
                index,
                x,
                resIntermediateIndex,
                index
              )
            }
          }
        }
        case _ => check(false)
      }

    } ensuring (_ => seekEntryOrOpen(a.updated(i, k).apply(j))(a.updated(i, k), mask) == Found(j))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex(
        a: Array[Long],
        i: Int,
        k: Long,
        j: Int,
        index: Int,
        x: Int,
        resIndex: Int,
        resX: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingVacant(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingZero(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))
      require(x <= resX)
      require(x >= 0)
      require(resX <= MAX_ITER)
      require(index >= 0 && index < a.length)
      require(resIndex >= 0 && resIndex < a.length)
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(a(j), a, mask) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(
          a(j),
          a,
          mask
        ) != seekKeyOrZeroOrLongMinValue(
          0,
          toIndex(a.updated(i, k).apply(j), mask)
        )(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      )
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(
          a(j),
          a,
          mask
        ) != seekKeyOrZeroOrLongMinValue(x, index)(
          a.updated(i, k).apply(j),
          a.updated(i, k),
          mask
        )
      )

      decreases(MAX_ITER - x)

      if (index == resIndex) {
        assert(x == resX)
        // trivial
      } else {
        assert(index != i)
        lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex(
          a,
          i,
          k,
          j,
          (index + 2 * (x + 1) * x - 3) & mask,
          x + 1,
          resIndex,
          resX
        )

      }
    } ensuring (_ => resIndex == i)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2(a: Array[Long], i: Int, k: Long, j: Int)(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(j >= 0)
      require(j < a.length)
      require(i != j)
      require(validKeyInArray(a(j)))
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))

      lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
      check(seekEntryOrOpen(a(j))(a, mask) == Found(j))
      val newArray = a.updated(i, k)

      if (
        seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask) ==
          seekKeyOrZeroOrLongMinValue(0, toIndex(newArray.apply(j), mask))(
            newArray.apply(j),
            newArray,
            mask
          )
      ) {
        lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1(a, i, k, j)(mask)
        check(
          seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(newArray.apply(j))(
            newArray,
            mask
          )
        )
      } else {
        val intermediateBefore =
          seekKeyOrZeroOrLongMinValue(0, toIndex(a(j), mask))(a(j), a, mask)
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined) => {
            check(seekEntryOrOpen(a(j))(a, mask) == Undefined())
            lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, j)
            check(seekEntryOrOpen(a(j))(a, mask) == Found(j))
            check(false)
          }
          case Intermediate(undefinedBefore, indexBefore, xBefore) if (!undefinedBefore) => {
            check(!undefinedBefore)
            check(xBefore < MAX_ITER)
            check(a(indexBefore) == a(j) || a(indexBefore) == 0 || a(indexBefore) == Long.MinValue)
            if (a(indexBefore) == a(j)) {
              lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI(
                a,
                i,
                k,
                j,
                toIndex(a(j), mask),
                0,
                indexBefore,
                xBefore
              )(mask)
              check(false)
            }
            check(a(indexBefore) == 0 || a(indexBefore) == Long.MinValue)
            if (a(indexBefore) == 0) {
              check(false)
            }
            check(a(indexBefore) == Long.MinValue)

            lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex(
              a,
              i,
              k,
              j,
              toIndex(a(j), mask),
              0,
              indexBefore,
              xBefore
            )(mask)
            lemmaPutValidKeyPreservesVacantIsAtI(
              a,
              i,
              k,
              j,
              toIndex(a(j), mask),
              0,
              indexBefore,
              xBefore
            )(mask)
          }
          case _ => {
            check(false)
            check(
              seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(
                newArray.apply(j)
              )(newArray, mask)
            )
          }
        }
      }

    } ensuring (_ =>
      seekEntryOrOpen(a(j))(a, mask) == seekEntryOrOpen(a.updated(i, k).apply(j))(
        a.updated(i, k),
        mask
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyAtRightPlaceThenFindsHelper1(
        a: Array[Long],
        i: Int,
        k: Long,
        x: Int,
        index: Int,
        resIndex: Int,
        resX: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(seekEntryOrOpen(k)(a, mask) == MissingZero(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(
          k,
          a,
          mask
        ) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(a(resIndex) == 0)
      require(resIndex == i)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask) == Intermediate(
          false,
          resIndex,
          resX
        )
      )

      decreases(MAX_ITER - x)
      assert(resX < MAX_ITER)
      assert(a(index) != k)
      if (x == resX) {
        if (resIndex != index) {
          if (a(index) == 0 || a(index) == Long.MinValue) {
            check(
              seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask) == Intermediate(
                false,
                index,
                resX
              )
            )
            check(false)
          } else {
            check(
              seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask) ==
                seekKeyOrZeroOrLongMinValue(
                  x + 1,
                  (index + 2 * (x + 1) * x - 3) & mask
                )(k, a, mask)
            )
            seekKeyOrZeroOrLongMinValue(
              x + 1,
              (index + 2 * (x + 1) * x - 3) & mask
            )(k, a, mask) match {
              case Intermediate(undefined, tempIndex, tempX) => assert(tempX >= x + 1)
              case _                                         => check(false)
            }
            check(false)
          }
        }
        check(index == resIndex)
        check(a(index) == 0)
      } else {
        check(
          seekKeyOrZeroOrLongMinValue(x, index)(
            k,
            a,
            mask
          ) == seekKeyOrZeroOrLongMinValue(
            x + 1,
            (index + 2 * (x + 1) * x - 3) & mask
          )(k, a, mask)
        )
        check(
          seekKeyOrZeroOrLongMinValue(x, index)(
            k,
            a.updated(i, k),
            mask
          ) == seekKeyOrZeroOrLongMinValue(
            x + 1,
            (index + 2 * (x + 1) * x - 3) & mask
          )(
            k,
            a.updated(i, k),
            mask
          )
        )
        lemmaPutValidKeyAtRightPlaceThenFindsHelper1(
          a,
          i,
          k,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          resIndex,
          resX
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroOrLongMinValue(x, index)(
        k,
        a.updated(i, k),
        mask
      ) == seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask)
    )

    def lemmaPutValidKeyAtRightPlaceThenFindsHelper2(
        a: Array[Long],
        i: Int,
        k: Long,
        x: Int,
        index: Int,
        resIndex: Int,
        resX: Int
    )(implicit mask: Int): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(seekEntryOrOpen(k)(a, mask) == MissingVacant(i))
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(
          k,
          a,
          mask
        ) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      require(a(resIndex) == Long.MinValue)
      require(resIndex == i)
      require(x <= resX)
      require(x >= 0)
      require(index >= 0 && index < a.length)
      require(
        seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask) == Intermediate(
          false,
          resIndex,
          resX
        )
      )
      decreases(MAX_ITER - x)
      assert(resX < MAX_ITER)
      assert(a(index) != k)
      if (x == resX) {
        if (resIndex != index) {
          if (a(index) == 0 || a(index) == Long.MinValue) {
            check(
              seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask) == Intermediate(
                false,
                index,
                resX
              )
            )
            check(false)
          } else {
            seekKeyOrZeroOrLongMinValue(
              x + 1,
              (index + 2 * (x + 1) * x - 3) & mask
            )(k, a, mask) match {
              case Intermediate(undefined, tempIndex, tempX) => assert(tempX >= x + 1)
              case _                                         => check(false)
            }
            check(false)
          }
        }
        check(index == resIndex)
        check(a(index) == Long.MinValue)
      } else {
        lemmaPutValidKeyAtRightPlaceThenFindsHelper2(
          a,
          i,
          k,
          x + 1,
          (index + 2 * (x + 1) * x - 3) & mask,
          resIndex,
          resX
        )
      }

    } ensuring (_ =>
      seekKeyOrZeroOrLongMinValue(x, index)(
        k,
        a.updated(i, k),
        mask
      ) == seekKeyOrZeroOrLongMinValue(x, index)(k, a, mask)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyAtRightPlaceThenFinds(a: Array[Long], i: Int, k: Long)(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      val intermediateBefore =
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(k, a, mask)
      val intermediateAfter =
        seekKeyOrZeroOrLongMinValue(0, toIndex(k, mask))(k, a.updated(i, k), mask)

      if (seekEntryOrOpen(k)(a, mask) == MissingZero(i)) {
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined)                 => check(false)
          case Intermediate(undefined, index, x) if (a(index) == Long.MinValue) => check(false)
          case Intermediate(undefined, index, x) if (a(index) == k)             => check(false)
          case Intermediate(undefined, index, x) => {
            check(a(index) == 0)
            check(index == i)
            lemmaPutValidKeyAtRightPlaceThenFindsHelper1(a, i, k, 0, toIndex(k, mask), index, x)(
              mask
            )
            check(a.updated(i, k).apply(index) == k)
          }
          case _ => check(false)
        }
        check(intermediateAfter == intermediateBefore)
      } else {
        assert(seekEntryOrOpen(k)(a, mask) == MissingVacant(i))
        intermediateBefore match {
          case Intermediate(undefined, index, x) if (undefined) => check(false)
          case Intermediate(undefined, index, x) if (a(index) == Long.MinValue) => {
            check(index == i)
            lemmaPutValidKeyAtRightPlaceThenFindsHelper2(a, i, k, 0, toIndex(k, mask), index, x)(
              mask
            )

          }
          case Intermediate(undefined, index, x) if (a(index) == k) => check(false)
          case Intermediate(undefined, index, x)                    => check(false)
          case _                                                    => check(false)
        }

      }

    } ensuring (_ => seekEntryOrOpen(k)(a.updated(i, k), mask) == Found(i))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(
        a: Array[Long],
        i: Int,
        k: Long,
        startIndex: Int
    )(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(startIndex >= 0)
      require(startIndex < a.length)
      require(validKeyInArray(k))
      require(arrayNoDuplicates(a, 0))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))

      decreases(a.length - startIndex)

      val newArray = a.updated(i, k)
      if (startIndex == i) {
        if (startIndex < a.length - 1) {
          lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
        }
        lemmaPutValidKeyAtRightPlaceThenFinds(a, i, k)(mask)
        check(seekEntryOrOpen(k)(newArray, mask) == Found(i))
      } else {
        if (validKeyInArray(a(startIndex))) {
          lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, 0, Nil())
          lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2(a, i, k, startIndex)(mask)
          lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, 0, startIndex)
          if (startIndex < a.length - 1) {
            lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
          }

        } else {
          if (startIndex < a.length - 1) {
            lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, startIndex + 1)
          }
        }
      }
    } ensuring (_ => arrayForallSeekEntryOrOpenFound(startIndex)(a.updated(i, k), mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutValidKeyPreservesForallSeekEntryOrOpen(k: Long, a: Array[Long], i: Int)(implicit
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(i >= 0)
      require(i < a.length)
      require(validKeyInArray(k))
      require(!arrayContainsKey(a, k, 0))
      require(
        seekEntryOrOpen(k)(a, mask) == MissingZero(i) || seekEntryOrOpen(k)(
          a,
          mask
        ) == MissingVacant(
          i
        )
      )
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(arrayNoDuplicates(a, 0))

      lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex(a, i, k, 0)(mask)

    } ensuring (_ => arrayForallSeekEntryOrOpenFound(0)(a.updated(i, k), mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSeekEntryOrOpenFindsThenSeekEntryFinds(
        k: Long,
        i: Int,
        a: Array[Long],
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(validKeyInArray(k))
      require(seekEntryOrOpen(k)(a, mask) == Found(i))

    } ensuring (_ =>
      (seekEntry(k)(a, mask) match {
        case Found(index) => index == i
        case _            => false
      })
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSeekEntryOrOpenMissThenSeekEntryMiss(
        k: Long,
        i: Int,
        a: Array[Long],
        mask: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(arrayForallSeekEntryOrOpenFound(0)(a, mask))
      require(validKeyInArray(k))
      require(seekEntryOrOpen(k)(a, mask) match {
        case Found(_) => false
        case _        => true
      })

    } ensuring (_ =>
      seekEntry(k)(a, mask) match {
        case Found(_) => false
        case _        => true
      }
    )

    // ARRAY UTILITY FUNCTIONS ----------------------------------------------------------------------------------------

    @pure
    @ghost
    def validKeyInArray(l: Long): Boolean = {
      l != 0 && l != Long.MinValue
    }

    @pure
    @ghost
    def arrayCountValidKeys(
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
          1 + arrayCountValidKeys(a, from + 1, to)
        } else {
          arrayCountValidKeys(a, from + 1, to)
        }
      }
    } ensuring (res => res >= 0 && res <= a.length - from)

    @pure
    @ghost
    def arrayContainsKey(a: Array[Long], k: Long, from: Int): Boolean = {
      require(from >= 0)
      require(from < a.length)
      require(a.length < Integer.MAX_VALUE)

      decreases(a.length - from)
      if (a(from) == k) {
        true
      } else if (from + 1 < a.length) {
        arrayContainsKey(a, k, from + 1)
      } else {
        false
      }
    }

    @pure
    @ghost
    def arrayScanForKey(a: Array[Long], k: Long, from: Int): Int = {
      require(from >= 0 && from < a.length && a.length < Integer.MAX_VALUE)
      require(arrayContainsKey(a, k, from))
      decreases(a.length - from)

      if (a(from) == k) from
      else arrayScanForKey(a, k, from + 1)
    } ensuring (res => res >= 0 && res < a.length && a(res) == k)

    @pure
    @ghost
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

    /** Return true iff the two arrays contain the same elements from the index "from" included to the index "to" not included
      *
      * @param a1
      * @param a2
      * @param from
      * @param to
      * @return
      */
    @pure
    @ghost
    def arraysEqualsFromTo(a1: Array[Long], a2: Array[Long], from: Int, to: Int): Boolean = {
      require(
        a1.length == a2.length && from >= 0 && from <= to && to <= a1.length && a1.length < Integer.MAX_VALUE
      )

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

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayNoDuplicateRemoveOneThenNotContain(a: Array[Long], i: Int, k: Long): Unit = {
      require(i >= 0)
      require(i < a.length)
      require(a.length < Integer.MAX_VALUE)
      require(arrayNoDuplicates(a, 0))
      require(validKeyInArray(k))
      require(a(i) == k)

      if (arrayContainsKey(a.updated(i, Long.MinValue), k, 0)) {
        val j = arrayScanForKey(a.updated(i, Long.MinValue), k, 0)
        assert(j != i)
        check(a.updated(i, Long.MinValue).apply(j) == k)
        if (j > i) {
          check(arrayContainsKey(a, k, j))
          lemmaNoDuplicateFromThenFromBigger(a, 0, i)
          lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, j, i + 1)
          lemmaArrayNoDuplicateThenKeysContainedNotEqual(a, k, i, Nil())
          check(false)
        } else if (i > j) {
          check(arrayContainsKey(a, k, i))
          lemmaNoDuplicateFromThenFromBigger(a, 0, j)
          lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, i, j + 1)
          lemmaArrayNoDuplicateThenKeysContainedNotEqual(a, k, j, Nil())
          check(false)
        }

      }

    } ensuring (_ => !arrayContainsKey(a.updated(i, Long.MinValue), k, 0))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayContainsFromImpliesContainsFromZero(
        a: Array[Long],
        k: Long,
        from: Int
    ): Unit = {
      require(from >= 0)
      require(from < a.length)
      require(a.length < Integer.MAX_VALUE)
      require(arrayContainsKey(a, k, from))

      decreases(from)
      if (from > 0) {
        lemmaArrayContainsFromImpliesContainsFromZero(a, k, from - 1)
      }
    } ensuring (_ => arrayContainsKey(a, k, 0))

    @opaque
    @inlineOnce
    @pure
    @ghost
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
      require(arrayContainsKey(a, k, from))

      decreases(from)
      if (from > newFrom) {
        lemmaArrayContainsFromImpliesContainsFromSmaller(a, k, from - 1, newFrom)
      }
    } ensuring (_ => arrayContainsKey(a, k, newFrom))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddKeyNoContainsInAccStillNoDuplicate(
        a: Array[Long],
        k: Long,
        from: Int,
        acc: List[Long],
        newAcc: List[Long]
    ): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(ListOps.noDuplicate(newAcc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(!arrayContainsKey(a, k, from))
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
          lemmaAddKeyNoContainsInAccStillNoDuplicate(
            a,
            k,
            from + 1,
            a(from) :: acc,
            a(from) :: newAcc
          )
        } else {
          lemmaAddKeyNoContainsInAccStillNoDuplicate(a, k, from + 1, acc, newAcc)
        }
      }
    } ensuring (_ => arrayNoDuplicates(a, from, newAcc))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaListMinusENotContainedEqualsList(e: Long, l: List[Long]): Unit = {
      require(!l.contains(e))
      decreases(l)

      l match {
        case head :: tl => lemmaListMinusENotContainedEqualsList(e, tl)
        case Nil()      =>
      }
    } ensuring (_ => l - e == l)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaLMinusHeadEqualsTail(head: Long, tail: List[Long]): Unit = {
      require(!tail.contains(head))
      assert(!tail.content.contains(head))

      val l = head :: tail
      l match {
        case hd :: tl => lemmaListMinusENotContainedEqualsList(head, tl)
        case Nil()    => ()
      }

    } ensuring (_ => (head :: tail) - head == tail)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutNewValidKeyPreservesNoDuplicate(
        a: Array[Long],
        k: Long,
        i: Int,
        from: Int,
        acc: List[Long]
    ): Unit = {
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
      require(!arrayContainsKey(a, k, 0))
      decreases(a.length - from)

      if (from + 1 < a.length) {
        if (from == i) {
          val newArray = a.updated(i, k)
          check(arrayContainsKey(newArray, k, from))

          if (arrayContainsKey(a, k, from + 1)) {
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
        } else {
          if (validKeyInArray(a(from))) {
            if (a(from) == k) {
              check(arrayContainsKey(a, k, from))
              lemmaArrayContainsFromImpliesContainsFromZero(a, k, from)
              check(false)
            }
            assert(a(from) != k)
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, from + 1, a(from) :: acc)
          } else {
            lemmaPutNewValidKeyPreservesNoDuplicate(a, k, i, from + 1, acc)
          }
        }
      }
    } ensuring (_ => arrayNoDuplicates(a.updated(i, k), from, acc))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaPutNonValidKeyPreservesNoDuplicate(
        a: Array[Long],
        l: Long,
        i: Int,
        from: Int,
        acc: List[Long]
    ): Unit = {
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
    } ensuring (_ => arrayNoDuplicates(a.updated(i, l), from, acc))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayNoDuplicateThenKeysContainedNotEqual(
        a: Array[Long],
        k: Long,
        from: Int,
        acc: List[Long]
    ): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(validKeyInArray(k))
      require(from >= 0)
      require(from + 1 < a.length)
      require(from < a.length)
      require(ListOps.noDuplicate(acc))
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(arrayContainsKey(a, k, from + 1))
      require(arrayNoDuplicates(a, from, acc))

      if (validKeyInArray(a(from))) {
        check(arrayNoDuplicates(a, from + 1, Cons(a(from), acc)))
        lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, acc, Nil(), from)
        check(arrayNoDuplicates(a, from + 1, Cons(a(from), Nil())))
        lemmaArrayNoDuplicateFromNotContainsKeysInAcc(a, from + 1, a(from), Cons(a(from), Nil()))
        check(!arrayContainsKey(a, a(from), from + 1))
      }

    } ensuring (_ => a(from) != k)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayNoDuplicateFromNotContainsKeysInAcc(
        a: Array[Long],
        from: Int,
        k: Long,
        acc: List[Long]
    ): Unit = {
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

    } ensuring (_ => !arrayContainsKey(a, k, from))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaListSubSeqRefl(l: List[Long]): Unit = {
      decreases(l)
      l match {
        case head :: tl => {
          assert(head == head)
          lemmaListSubSeqRefl(tl)
        }
        case Nil() =>
      }

    } ensuring (_ => ListSpecs.subseq(l, l))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(
        a: Array[Long],
        acc: List[Long],
        newAcc: List[Long],
        from: Int
    ): Unit = {
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
            lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(
              a,
              Cons(k, acc),
              Cons(k, newAcc),
              from + 1
            )
            ListSpecs.noDuplicateSubseq(Cons(k, newAcc), Cons(k, acc))
          }
        } else {
          lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, acc, newAcc, from + 1)
        }
      }

    } ensuring (_ => arrayNoDuplicates(a, from, newAcc))

    @opaque
    @inlineOnce
    @pure
    @ghost
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
            lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(
              a,
              Cons(a(from), Nil()),
              Nil(),
              from + 1
            )
          }
          lemmaNoDuplicateFromThenFromBigger(a, from + 1, newFrom)
        }
      }

    } ensuring (_ => arrayNoDuplicates(a, newFrom))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(
        a: Array[Long],
        mask: Int,
        from: Int,
        newFrom: Int
    ): Unit = {
      require(validMask(mask))
      require(a.length == mask + 1)
      require(from >= 0 && from <= a.length)
      require(newFrom >= from && newFrom <= a.length)
      require(arrayForallSeekEntryOrOpenFound(from)(a, mask))

      decreases(newFrom - from)

      if (from < newFrom) {
        lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger(a, mask, from + 1, newFrom)
      }
    } ensuring (_ => arrayForallSeekEntryOrOpenFound(newFrom)(a, mask))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaCountingValidKeysAtTheEnd(a: Array[Long], from: Int, to: Int): Unit = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length)

      decreases(to - from)
      if (from + 1 < to) {
        lemmaCountingValidKeysAtTheEnd(a, from + 1, to)
      }
    } ensuring (_ =>
      if (validKeyInArray(a(to - 1)))
        arrayCountValidKeys(a, from, to - 1) + 1 == arrayCountValidKeys(a, from, to)
      else
        arrayCountValidKeys(a, from, to - 1) == arrayCountValidKeys(a, from, to)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaKnownPivotPlusOneIsPivot(a: Array[Long], from: Int, to: Int, pivot: Int): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length && pivot >= from && pivot < to - 1 &&
          LongMapFixedSize.isPivot(a, from, to, pivot)
      )

      lemmaCountingValidKeysAtTheEnd(a, from, pivot + 1)

    } ensuring (_ => LongMapFixedSize.isPivot(a, from, to, pivot + 1))

    @pure
    @ghost
    def isPivot(a: Array[Long], from: Int, to: Int, pivot: Int): Boolean = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length && pivot >= from && pivot < to
      )
      arrayCountValidKeys(a, from, pivot) + arrayCountValidKeys(
        a,
        pivot,
        to
      ) == arrayCountValidKeys(a, from, to)
    }

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(
        a: Array[Long],
        from: Int,
        to: Int,
        pivot: Int,
        knownPivot: Int
    ): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to <= a.length &&
          pivot >= from && pivot < to &&
          knownPivot <= pivot && knownPivot >= from &&
          isPivot(a, from, to, knownPivot)
      )

      decreases(pivot - knownPivot)
      if (knownPivot != pivot) {
        lemmaKnownPivotPlusOneIsPivot(a, from, to, knownPivot)
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(a, from, to, pivot, knownPivot + 1)
      }
    } ensuring (_ => isPivot(a, from, to, pivot))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(
        a: Array[Long],
        from: Int,
        to: Int,
        pivot: Int
    ): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to <= a.length && pivot >= from && pivot <= to
      )

      if (pivot < to) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo(a, from, to, pivot, from)
      }

    } ensuring (_ =>
      arrayCountValidKeys(a, from, pivot) + arrayCountValidKeys(
        a,
        pivot,
        to
      ) == arrayCountValidKeys(a, from, to)
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveValidKeyAndNumKeysToImpliesToALength(
        a: Array[Long],
        i: Int,
        k: Long,
        to: Int
    ): Unit = {
      require(i >= 0 && i < a.length)
      require(validKeyInArray(a(i)))
      require(!validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(to >= 0 && to <= a.length && to > i)
      require(
        (arrayCountValidKeys(a.updated(i, k), i + 1, to) == arrayCountValidKeys(
          a,
          i + 1,
          to
        ))
      )
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
    } ensuring (_ =>
      arrayCountValidKeys(a.updated(i, k), i + 1, a.length) == arrayCountValidKeys(
        a,
        i + 1,
        a.length
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(
        a: Array[Long],
        i: Int,
        k: Long,
        from: Int
    ): Unit = {
      require(i >= 0 && i < a.length)
      require(validKeyInArray(a(i)))
      require(!validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0 && from <= a.length && i >= from)
      require(
        (arrayCountValidKeys(a.updated(i, k), from, i + 1) == arrayCountValidKeys(
          a,
          from,
          i + 1
        ) - 1)
      )

      decreases(from)

      if (from > 0) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from - 1, i + 1, from)
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), from - 1, i + 1, from)
        lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(a, i, k, from - 1)
      }

    } ensuring (_ => {
      arrayCountValidKeys(a.updated(i, k), 0, i + 1) == arrayCountValidKeys(
        a,
        0,
        i + 1
      ) - 1
    })

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray(
        a: Array[Long],
        i: Int,
        k: Long
    ): Unit = {
      require(
        i >= 0 && i < a.length && validKeyInArray(a(i)) && !validKeyInArray(
          k
        ) && a.length < Integer.MAX_VALUE
      )

      lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero(a, i, k, i)
      lemmaRemoveValidKeyAndNumKeysToImpliesToALength(a, i, k, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, 0, a.length, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), 0, a.length, i + 1)

    } ensuring (_ =>
      arrayCountValidKeys(a.updated(i, k), 0, a.length) == arrayCountValidKeys(
        a,
        0,
        a.length
      ) - 1
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaValidKeyIncreasesNumOfKeys(a: Array[Long], from: Int, to: Int): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to < a.length && validKeyInArray(
          a(to)
        )
      )

      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from, to + 1, to)

    } ensuring (_ => arrayCountValidKeys(a, from, to + 1) == arrayCountValidKeys(a, from, to) + 1)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaNotValidKeyDoesNotIncreaseNumOfKeys(a: Array[Long], from: Int, to: Int): Unit = {
      require(
        a.length < Integer.MAX_VALUE && from >= 0 && to >= from && to < a.length && !validKeyInArray(
          a(to)
        )
      )

      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from, to + 1, to)

    } ensuring (_ => arrayCountValidKeys(a, from, to + 1) == arrayCountValidKeys(a, from, to))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddValidKeyAndNumKeysToImpliesToALength(
        a: Array[Long],
        i: Int,
        k: Long,
        to: Int
    ): Unit = {
      require(i >= 0 && i < a.length)
      require(!validKeyInArray(a(i)) && validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(to >= 0 && to <= a.length && to > i)
      require(
        (arrayCountValidKeys(a.updated(i, k), i + 1, to) == arrayCountValidKeys(
          a,
          i + 1,
          to
        ))
      )
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
    } ensuring (_ =>
      arrayCountValidKeys(a.updated(i, k), i + 1, a.length) == arrayCountValidKeys(
        a,
        i + 1,
        a.length
      )
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddValidKeyAndNumKeysFromImpliesFromZero(
        a: Array[Long],
        i: Int,
        k: Long,
        from: Int
    ): Unit = {
      require(i >= 0 && i < a.length)
      require(!validKeyInArray(a(i)))
      require(validKeyInArray(k))
      require(a.length < Integer.MAX_VALUE)
      require(from >= 0 && from <= a.length && i >= from)
      require(
        (arrayCountValidKeys(a.updated(i, k), from, i + 1) == arrayCountValidKeys(
          a,
          from,
          i + 1
        ) + 1)
      )

      decreases(from)

      if (from > 0) {
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, from - 1, i + 1, from)
        lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), from - 1, i + 1, from)
        lemmaAddValidKeyAndNumKeysFromImpliesFromZero(a, i, k, from - 1)
      }

    } ensuring (_ => {
      arrayCountValidKeys(a.updated(i, k), 0, i + 1) == arrayCountValidKeys(
        a,
        0,
        i + 1
      ) + 1
    })

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(a: Array[Long], i: Int, k: Long): Unit = {
      require(
        i >= 0 && i < a.length && !validKeyInArray(a(i)) && validKeyInArray(
          k
        ) && a.length < Integer.MAX_VALUE
      )

      lemmaAddValidKeyAndNumKeysFromImpliesFromZero(a, i, k, i)
      lemmaAddValidKeyAndNumKeysToImpliesToALength(a, i, k, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a, 0, a.length, i + 1)
      lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole(a.updated(i, k), 0, a.length, i + 1)

    } ensuring (_ =>
      arrayCountValidKeys(a.updated(i, k), 0, a.length) == arrayCountValidKeys(
        a,
        0,
        a.length
      ) + 1
    )

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaValidKeyAtIImpliesCountKeysIsOne(a: Array[Long], i: Int): Unit = {
      require(i >= 0 && i < a.length && validKeyInArray(a(i)) && a.length < Integer.MAX_VALUE)

    } ensuring (_ => arrayCountValidKeys(a, i, i + 1) == 1)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayEqualsFromToReflexivity(a: Array[Long], from: Int, to: Int): Unit = {
      require(from >= 0 && from < to && to <= a.length && a.length < Integer.MAX_VALUE)
      decreases(to - from)
      if (from + 1 < to) {
        lemmaArrayEqualsFromToReflexivity(a, from + 1, to)
      }
    } ensuring (_ => arraysEqualsFromTo(a, snapshot(a), from, to))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaValidKeyIndexImpliesArrayContainsKey(a: Array[Long], k: Long, i: Int): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(i >= 0 && i < a.length)
      require(a(i) == k)

      LongMapFixedSize.lemmaArrayContainsFromImpliesContainsFromZero(a, k, i)
    } ensuring (_ => arrayContainsKey(a, k, 0))

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayCountValidKeysOfFilled0ArrayIs0(a: Array[Long], i: Int, size: Int): Unit = {
      require(a.length < Integer.MAX_VALUE)
      require(i >= 0 && i <= a.length)
      require(a.length == size)
      require(a == Array.fill(size)(0L))
      decreases(size - i)
      if (i != size) {
        assert(a(i) == 0)
        lemmaArrayCountValidKeysOfFilled0ArrayIs0(a, i + 1, size)
      }

    } ensuring (_ => arrayCountValidKeys(a, i, size) == 0)

    @opaque
    @inlineOnce
    @pure
    @ghost
    def lemmaArrayNoDuplicatesInAll0Array(a: Array[Long], from: Int, size: Int, acc: List[Long] = Nil[Long]()): Unit = {
      require(a.length == size)
      require(size < Integer.MAX_VALUE)
      require(a == Array.fill(size)(0L))
      require(from >= 0 && from <= a.length)
      require(!acc.contains(0) && !acc.contains(Long.MinValue))
      require(ListOps.noDuplicate(acc))
      decreases(size - from)
      if (from < size) {
        lemmaArrayNoDuplicatesInAll0Array(a, from + 1, size, acc)
      }
    } ensuring (res => arrayNoDuplicates(a, from, acc))

  }

}
