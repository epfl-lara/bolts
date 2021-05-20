import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec

object MutableLongMap {

  private final val IndexMask: Int = 0x07ffffff // = Integer.MAX_VALUE/8
  private final val MissingBit = 0x80000000
  private final val VacantBit = 0x40000000
  private final val MissVacant = 0xc0000000
  private final val EntryNotFound = 0x20000000
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
      val defaultEntry: Long => Long = (x => 0),
      var repackingKeyCount: Int = 0
  ) {
//   ) extends LongMap[Long] {

    @inlineOnce
    def valid: Boolean = {
      //class invariant
      simpleValid &&
      arrayCountValidKeysTailRec(_keys, 0, _keys.length) == _size &&
      arrayForallSeekEntryFound(0)(_keys, mask) &&
      // I have to ensure that the _keys array has no duplicate
      arrayNoDuplicates(_keys, 0)
    }

    @inline
    def simpleValid: Boolean = {
      mask == IndexMask &&
      _values.length == mask + 1 &&
      _keys.length == _values.length &&
      mask >= 0 &&
      _size >= 0 &&
      _size <= mask + 1 &&
      size >= _size &&
      extraKeys >= 0 &&
      extraKeys <= 3
    }

    @pure
    def arrayForallSeekEntryFound(i: Int)(implicit _keys: Array[Long], mask: Int): Boolean = {
      require(mask == IndexMask)
      require(_keys.length == mask + 1)
      require(i >= 0)
      require(i <= _keys.length)
      require(simpleValid)

      decreases(_keys.length - i)

      if (i >= _keys.length) true
      else if (validKeyInArray(_keys(i))) {
        assert(arrayContainsKeyTailRec(_keys, _keys(i), i))
        lemmaArrayContainsFromImpliesContainsFromZero(_keys, _keys(i), i)
        seekEntryTailRecDecoupled(_keys(i), 0, toIndex(_keys(i)))(_keys, mask) == (i, 0) &&
        arrayScanForKey(_keys, _keys(i), 0) == i &&
        arrayForallSeekEntryFound(i + 1)
      } else arrayForallSeekEntryFound(i + 1)
    }

    /** Checks if i is a valid index in the Array of values
      *
      * @param i
      * @return
      */
    @inline
    def inRange(i: Int): Boolean = {
      // mask + 1 is the size of the Array
      i >= 0 && i < mask + 1
    }

    /** Check if i is a valid index in the Array AND that the key stored
      * at that index is indeed k
      *
      * @param k
      * @param i
      * @return
      */
    @inline
    @pure
    def validKeyIndex(k: Long, i: Int): Boolean = {
      require(valid)
      if (inRange(i)) _keys(i) == k else false
    }

    @inline
    @pure
    def validZeroKeyIndex(i: Int): Boolean = {
      require(valid && inRange(i))
      inRange(i) && _keys(i) == 0
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
        val tupl = seekEntry(key)
        if(tupl._2 != 0){
          if (getCurrentListMap(0).contains(key)) {
            lemmaKeyInListMapIsInArray(key)
            val i = arrayScanForKey(_keys, key, 0)
            lemmaArrayForallSeekEntryFoundFromSmallerThenFromBigger(0, i)
            check(false)
          }
          false
        } else {
          val i = tupl._1
          lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, i)
          lemmaValidKeyInArrayIsInListMap(i)
          true
        }
      }
    }.ensuring(res => valid
      && (res == getCurrentListMap(0).contains(key))
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
        val tupl = seekEntry(key)
        lemmaSeekEntryGivesInRangeIndex(key)
        if (tupl._2 != 0) defaultEntry(key) else {
          val i = tupl._1
          lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, i)
          lemmaValidKeyInArrayIsInListMap(i)
          lemmaKeyInListMapThenSameValueInArray(key, i)
          _values(i)
        }
      }
    }.ensuring(res =>
      valid
        && (if (contains(key)) Some(res) == getCurrentListMap(0).get(key)
            else res == defaultEntry(key))
    )

    private def addNewKeyToArrayAtAndUpdateSize(key: Long, i: Int): Unit = {
      require(valid)
      require(!arrayContainsKeyTailRec(_keys, key, 0))
      require(inRange(i))
      require(!validKeyInArray(_keys(i)))
      require(validKeyInArray(key))

      lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(_keys, i, key)

      _keys(i) = key
      _size += 1

      lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, i)
      lemmaValidKeyAtIImpliesCountKeysIsOne(_keys, i)
    }.ensuring(_ => valid && arrayContainsKeyTailRec(_keys, key, 0))

    /** Updates the map to include a new key-value pair. Return a boolean indicating if the update was successful.
      *
      *  This is the fastest way to add an entry to a `LongMap`.
      */
    def update(key: Long, v: Long): Boolean = {
      require(valid)

      if (key == -key) {
        updateHelperZeroMinValue(key, v)

      } else {
        check(valid)
        val tupl = seekEntryOrOpen(key)
        val i = tupl._1
        if (tupl._2 == EntryNotFound) {
          //the key is not in the array, it was not able to find an empty space, the map is maybe full
          check(valid)
          if (getCurrentListMap(0).contains(key)) {
            lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
            check(false)
          } else {
            lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
          }
          check(!getCurrentListMap(0).contains(key))
          check(valid)
          false

        } else if (tupl._2 == MissingBit || tupl._2 == MissVacant) {
          check(valid)
          if (getCurrentListMap(0).contains(key)) {
            lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
            check(false)
          } else {
            lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
            check(_keys(i) == 0 || _keys(i) == Long.MinValue)
          }
          check(valid)
          val _oldSize = _size
          val _oldNKeys = arrayCountValidKeysTailRec(_keys, 0, _keys.length)
          check(_keys(i) == 0 || _keys(i) == Long.MinValue)
          assert(inRange(i))
          if (arrayContainsKeyTailRec(_keys, key, 0)) {
            lemmaArrayContainsKeyThenInListMap(key, 0)
            check(false)
          }
          check(!arrayContainsKeyTailRec(_keys, key, 0))
          assert(valid)

          lemmaAddValidKeyIncreasesNumberOfValidKeysInArray(_keys, i, key)

          _keys(i) = key
          _size += 1

          lemmaArrayContainsFromImpliesContainsFromZero(_keys, key, i)
          lemmaValidKeyAtIImpliesCountKeysIsOne(_keys, i)
          _values(i) = v

          check(arrayForallSeekEntryFound(0)(_keys, mask)) //TODO

          true

        } else {
          if (getCurrentListMap(0).contains(key)) {
            lemmaInListMapThenSeekEntryOrOpenFindsIt(key)
            assert(_keys(i) == key)
          } else {
            lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(key)
            check(_keys(i) == 0 || _keys(i) == Long.MinValue)
            check(false)
          }
          check(valid)
          assert(_keys(i) == key)

          _values(i) = v

          check(arrayForallSeekEntryFound(0)(_keys, mask)) //TODO
          check(valid)

          true
        }
      }

    }.ensuring(res => valid
    // && (if (res) getCurrentListMap(0).contains(key) else true)
    )

    def updateHelperZeroMinValue(key: Long, v: Long): Boolean = {
      require(valid)
      require(key == 0 || key == Long.MinValue)
      
      if (key == 0) {

          check(valid) //OK
          check(arrayForallSeekEntryFound(0)(_keys, mask)) //OK

          zeroValue = v

          check(arrayForallSeekEntryFound(0)(_keys, mask)) //Timeouts

          extraKeys |= 1

          check(arrayForallSeekEntryFound(0)(_keys, mask)) //Timeouts
          check(valid) //OK
          true
        } else {
          minValue = v
          extraKeys |= 2

          check(valid) //TODO
          true
        }

    }.ensuring(valid)

    /** Removes the given key from the array
      *
      * @param key
      * @return
      */
    def subtractOne(key: Long): Boolean = {
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
        val (i, state) = seekEntry(key)
        // if (i >= 0) {
        if (state == 0) {
          _size -= 1
          // _vacant += 1
          _keys(i) = Long.MinValue
          _values(i) = 0
          true
        } else {
          false
        }
      }
    }.ensuring(_ => valid)

    /** Compute the index in the array for a given key
      * with hashing and magic stuff
      *
      * @param k the key
      * @return
      */
    @pure
    private def toIndex(k: Long): Int = {
      require(simpleValid)
      // Part of the MurmurHash3 32 bit finalizer
      val h = ((k ^ (k >>> 32)) & 0xffffffffL).toInt
      val x = (h ^ (h >>> 16)) * 0x85ebca6b
      (x ^ (x >>> 13)) & mask
    }.ensuring(res => simpleValid && res < _keys.length && res >= 0)

    /** Seek for the first empty entry in the Array for a given key
      *
      * @param k the key
      * @return the index in the array corresponding
      */
    @pure
    def seekEmptyZero(k: Long): Int = {
      require(valid)
      require(validKeyInArray(k))

      seekEmptyZeroTailRec(0, toIndex(k))
    }.ensuring(res => valid && (res == EntryNotFound || _keys(res) == 0))

    @pure
    def seekEmptyZeroTailRec(x: Int, ee: Int): Int = {
      require(valid && inRange(ee) && x >= 0 && x <= MAX_ITER)

      decreases(MAX_ITER - x)
      if (x >= MAX_ITER) EntryNotFound
      else if (_keys(ee) == 0) ee
      else seekEmptyZeroTailRec(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    }.ensuring(res => valid && (res == EntryNotFound || _keys(res) == 0))

    /** Given a key, seek for its index into the array
      * returns a tuple with (index, error_code)
      * the index is the index of the key if error_code == 0
      *
      * @param k the key
      * @return the index of the given key into the array
      */

    @pure
    def seekEntry(k: Long): (Int, Int) = {
      require(simpleValid)
      require(validKeyInArray(k))
      decreases(1)

      // seekEntryTailRecLemma(k, 0, toIndex(k))
      seekEntryTailRecDecoupled(k, 0, toIndex(k))(_keys, mask)

    }.ensuring(res => simpleValid && 
                      (res._2 == 0 || res._2 == MissingBit || res._2 == EntryNotFound) && 
                      (res._2 != 0 || (inRange(res._1) && _keys(res._1) == k))
              )

    //using _size to be sure that i is valid in the range
    // NOTE: ((x | MissingBit) ^ MissingBit) == x is proven true by stainless for x in range 0 to MAX_ARRAY_SIZE with this value of MissingBit

    /** Returns
      *
      * @param k
      * @param x
      * @param ee
      * @return
      */
    @pure
    private def seekEntryTailRec(k: Long, x: Int, ee: Int): (Int, Int) = {
      require(simpleValid)
      require(inRange(ee))
      require(validKeyInArray(k))
      require(x >= 0)
      require(x <= MAX_ITER)

      decreases(MAX_ITER + 1 - x)
      val q = _keys(ee)

      if (x >= MAX_ITER) (ee, EntryNotFound)
      else if (q == k) {
        (ee, 0)
      } else if (q == 0) (ee, MissingBit)
      else {
        val newEe = (ee + 2 * (x + 1) * x - 3) & mask
        seekEntryTailRec(k, x + 1, newEe)
      }

    }.ensuring(res => simpleValid &&
                      (res._2 == 0 || res._2 == MissingBit || res._2 == EntryNotFound) && 
                      (res._2 != 0 || (inRange(res._1) && _keys(res._1) == k))
              )

    @pure
    private def seekEntryTailRecDecoupled(k: Long, x: Int, ee: Int)(implicit _keys: Array[Long], mask: Int): (Int, Int) = {
      require(simpleValid)
      require(mask == IndexMask)
      require(mask >= 0)
      require(_keys.length == mask + 1)
      require(ee >= 0 && ee < mask + 1)
      require(x >= 0)
      require(x <= MAX_ITER)
      require(validKeyInArray(k))

      decreases(MAX_ITER + 1 - x)
      val q = _keys(ee)

      if (x >= MAX_ITER) (ee, EntryNotFound)
      else if (q == k) {
        (ee, 0)
      } else if (q == 0) (ee, MissingBit)
      else {
        val newEe = (ee + 2 * (x + 1) * x - 3) & mask
        seekEntryTailRecDecoupled(k, x + 1, newEe)
      }

    }.ensuring(res => simpleValid &&
                      (res._2 == 0 || res._2 == MissingBit || res._2 == EntryNotFound) && 
                      (res._2 != 0 || (inRange(res._1) && _keys(res._1) == k))
              )

    /** Search the index of the given key. If the key is in the array, it finds its index (0 is returned as second element).
      * If the key is not in the array, it finds either:
      *   - A free space with a 0 value (MissingBit is returned as second element)
      *   - A freed space with a Long.MinValue value (MissingVacant is returned as a second element)
      *   - Nothing (EntryNotFound is returned as a second value)
      *
      * @param k
      * @return
      */
    @pure
    def seekEntryOrOpen(k: Long): (Int, Int) = {
      require(valid)
      require(validKeyInArray(k))

      val (x, q, e) = seekKeyOrZeroOrLongMinValueTailRec(0, toIndex(k))(k)
      if (e == EntryNotFound) (e, EntryNotFound)
      else if (q == k) (e, 0)
      else if (q == 0) (e, MissingBit)
      else {
        // e is the index of Long.MinValue i.e. the spot of a key that was removed
        // we need to search from there until we see a zero. Maybe the key we're
        // searching was added after the removed one and is therefore after in the array.
        // If we find a zero before finding the key, we return the index of the Long.MinValue to
        // reuse the spot
        assert(_keys(e) == Long.MinValue)
        assert(inRange(e))
        val res = seekKeyOrZeroReturnVacantTailRec(x, e)(k, e)
        res
      }
    }.ensuring(res =>
      valid &&
        (
          res._2 == EntryNotFound ||
            (res._2 == 0 && _keys(res._1) == k) ||
            (res._2 == MissingBit && _keys(res._1) == 0) ||
            (res._2 == MissVacant && _keys(res._1) == Long.MinValue)
        )
    )

    @tailrec
    @pure
    private def seekKeyOrZeroOrLongMinValueTailRec(x: Int, ee: Int)(implicit
        k: Long
    ): (Int, Long, Int) = {
      require(valid && inRange(ee))
      require(x <= MAX_ITER && x >= 0)
      require(validKeyInArray(k))

      decreases(MAX_ITER - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) (x, q, EntryNotFound)
      else if (q == k || q + q == 0) (x, q, ee)
      else
        seekKeyOrZeroOrLongMinValueTailRec(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    }.ensuring(res =>
      valid &&
        ((res._3 == EntryNotFound && res._1 >= MAX_ITER) ||
          (res._3 != EntryNotFound && res._1 >= 0 && res._1 < MAX_ITER && _keys(res._3) == res._2 &&
            (res._2 == k || res._2 == 0 || res._2 == Long.MinValue)))
    )

    @tailrec
    @pure
    private def seekKeyOrZeroReturnVacantTailRec(x: Int, ee: Int)(implicit
        k: Long,
        vacantSpotIndex: Int
    ): (Int, Int) = {
      require(valid)
      require(inRange(ee))
      require(x <= MAX_ITER && x >= 0)
      require(inRange(vacantSpotIndex))
      require(_keys(vacantSpotIndex) == Long.MinValue)
      require(validKeyInArray(k))

      decreases(MAX_ITER + 1 - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) (ee, EntryNotFound)
      else if (q == k) {
        (ee, 0)
      } else if (q == 0) {
        (vacantSpotIndex, MissVacant)
      } else {
        seekKeyOrZeroReturnVacantTailRec(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
      }

    }.ensuring(res =>
      valid &&
        (
          res._2 == EntryNotFound ||
            (res._2 == MissVacant && res._1 == vacantSpotIndex && _keys(res._1) == Long.MinValue) ||
            (res._2 == 0 && _keys(res._1) == k)
        )
    )

    @pure
    def seekEntryOrOpenDecoupled(k: Long)(implicit  _keys: Array[Long], mask: Int): (Int, Int) = {
      require(simpleValid)
      require(mask == IndexMask)
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(validKeyInArray(k))

      val (x, q, e) = seekKeyOrZeroOrLongMinValueTailRecDecoupled(0, toIndex(k))(k, _keys, mask)
      if (e == EntryNotFound) (e, EntryNotFound)
      else if (q == k) (e, 0)
      else if (q == 0) (e, MissingBit)
      else {
        // e is the index of Long.MinValue i.e. the spot of a key that was removed
        // we need to search from there until we see a zero. Maybe the key we're
        // searching was added after the removed one and is therefore after in the array.
        // If we find a zero before finding the key, we return the index of the Long.MinValue to
        // reuse the spot
        assert(_keys(e) == Long.MinValue)
        assert(inRange(e))
        val res = seekKeyOrZeroReturnVacantTailRecDecoupled(x, e, e)(k, _keys, mask)
        res
      }
    }.ensuring(res =>
      simpleValid &&
        (
          res._2 == EntryNotFound ||
            (res._2 == 0 && _keys(res._1) == k) ||
            (res._2 == MissingBit && _keys(res._1) == 0) ||
            (res._2 == MissVacant && _keys(res._1) == Long.MinValue)
        )
    )

    @tailrec
    @pure
    private def seekKeyOrZeroOrLongMinValueTailRecDecoupled(x: Int, ee: Int)(implicit
        k: Long, _keys: Array[Long], mask: Int
    ): (Int, Long, Int) = {
      require(simpleValid)
      require(mask == IndexMask)
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(inRange(ee))
      require(x <= MAX_ITER && x >= 0)
      require(validKeyInArray(k))

      decreases(MAX_ITER - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) (x, q, EntryNotFound)
      else if (q == k || q + q == 0) (x, q, ee)
      else
        seekKeyOrZeroOrLongMinValueTailRecDecoupled(x + 1, (ee + 2 * (x + 1) * x - 3) & mask)
    }.ensuring(res =>
      simpleValid &&
        ((res._3 == EntryNotFound && res._1 >= MAX_ITER) ||
          (res._3 != EntryNotFound && res._1 >= 0 && res._1 < MAX_ITER && _keys(res._3) == res._2 &&
            (res._2 == k || res._2 == 0 || res._2 == Long.MinValue)))
    )

    @tailrec
    @pure
    private def seekKeyOrZeroReturnVacantTailRecDecoupled(x: Int, ee: Int, vacantSpotIndex: Int)(implicit
        k: Long, _keys: Array[Long], mask: Int
    ): (Int, Int) = {
      require(simpleValid)
      require(mask == IndexMask)
      require(mask >= 0)
      require(_keys.length == mask + 1)

      require(inRange(ee))
      require(x <= MAX_ITER && x >= 0)
      require(inRange(vacantSpotIndex))
      require(_keys(vacantSpotIndex) == Long.MinValue)
      require(validKeyInArray(k))

      decreases(MAX_ITER + 1 - x)
      val q = _keys(ee)
      if (x >= MAX_ITER) (ee, EntryNotFound)
      else if (q == k) {
        (ee, 0)
      } else if (q == 0) {
        (vacantSpotIndex, MissVacant)
      } else {
        seekKeyOrZeroReturnVacantTailRecDecoupled(x + 1, (ee + 2 * (x + 1) * x - 3) & mask, vacantSpotIndex)
      }

    }.ensuring(res =>
      simpleValid &&
        (
          res._2 == EntryNotFound ||
            (res._2 == MissVacant && res._1 == vacantSpotIndex && _keys(res._1) == Long.MinValue) ||
            (res._2 == 0 && _keys(res._1) == k)
        )
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

    //-------------------LEMMAS------------------------------------------------------------------------------------------------------------------------------

    //Big so too slow

    // @pure
    // def lemmaZeroIsInCurrentListMapIFFDefined(): Unit = {
    //   require(valid)
    //   val from = 0
    //   val res = getCurrentListMap(from)
    // }.ensuring(_ => valid && (if ((extraKeys & 1) != 0) getCurrentListMap(0).contains(0) else !getCurrentListMap(0).contains(0)))

    //------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------
    //------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    @opaque
    @pure
    def testLemma(k: Long, i: Int): Unit = {
      require(valid && validKeyInArray(k) && seekEntryOrOpen(k) == (i, 0))
      assume(seekEntry(k) == (i, 0))

    }.ensuring(_ => seekEntry(k) == (i, 0))
    
    @opaque
    @pure
    def lemmaInListMapThenSeekEntryFinds(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(k)
      assert(arrayContainsKeyTailRec(_keys, k, 0))
      assert(arrayForallSeekEntryFound(0)(_keys, mask))
      val i = arrayScanForKey(_keys, k, 0)
      lemmaArrayForallSeekEntryFoundFromSmallerThenFromBigger(0, i)

    }.ensuring(_ => valid && seekEntry(k)._2 == 0 && inRange(seekEntry(k)._1) && _keys(seekEntry(k)._1) == k)

    @opaque
    @pure
    def lemmaNotInListMapThenSeekEntryFindsMissingBit(k: Long): Unit = {
      require(valid)
      require(validKeyInArray(k))
      require(!getCurrentListMap(0).contains(k))
      if (validKeyInArray(k)) {
        if (arrayContainsKeyTailRec(_keys, k, 0)) {
          val i = arrayScanForKey(_keys, k, 0)
          lemmaArrayForallSeekEntryFoundFromSmallerThenFromBigger(0, i)
          lemmaValidKeyInArrayIsInListMap(i)
          check(false)
        } else {
          if(seekEntry(k)._2 == 0){
            //found but not in array --> Contradiction
            val i = seekEntry(k)._1
            lemmaValidKeyInArrayIsInListMap(i)
            check(false)
          }
          }
        } 

    }.ensuring(_ => valid && (seekEntry(k)._2 == MissingBit || seekEntry(k)._2 == EntryNotFound))

    @opaque
    @pure
    def lemmaInListMapThenSeekEntryOrOpenFindsIt(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(validKeyInArray(k))

      lemmaKeyInListMapIsInArray(k)

      lemmaInListMapThenSeekEntryFinds(k)
      val i = seekEntry(k)._1
      if (i == toIndex((k))) {
        check(seekEntryOrOpen(k)._2 == 0 && inRange(seekEntryOrOpen(k)._1) && _keys(seekEntryOrOpen(k)._1) == k)
      } else {
        check(seekEntryOrOpen(k)._2 == 0 && inRange(seekEntryOrOpen(k)._1) && _keys(seekEntryOrOpen(k)._1) == k) //TODO
      }

    }.ensuring(_ => valid && seekEntryOrOpen(k)._2 == 0 && inRange(seekEntryOrOpen(k)._1) && _keys(seekEntryOrOpen(k)._1) == k)

    @opaque
    @pure
    def lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing(k: Long): Unit = {
      require(valid)
      require(!getCurrentListMap(0).contains(k))

    }.ensuring(_ => {
      val tu = seekEntryOrOpen(k)
      valid &&
      (
        (tu._2 == MissingBit && inRange(tu._1) && _keys(tu._1) == 0 && seekEntryTailRecDecoupled(k, 0, toIndex(k))(_keys.updated(tu._1, k), mask)._2 == 0) ||
          (tu._2 == MissVacant && inRange(tu._1) && _keys(tu._1) == Long.MinValue && seekEntryTailRecDecoupled(k, 0, toIndex(k))(_keys.updated(tu._1, k), mask)._2 == 0) ||
          tu._2 == EntryNotFound
      )
    })

    @opaque
    @pure
    def lemmaSeekEntryOrOpenReturnsValidIndex(k: Long): Unit = {
      require(valid)

    }.ensuring(_ => seekEntryOrOpen(k)._2 != 0 || inRange(seekEntryOrOpen(k)._1))

    @opaque
    @pure
    def lemmaSeekEntryGivesInRangeIndex(k: Long): Unit = {
      require(valid)
    }.ensuring(_ => seekEntry(k)._2 != 0 || inRange(seekEntry(k)._1))

    //------------------END----------------------------------------------------------------------------------------------------------------------------------
    //------------------SEEKENTRY RELATED--------------------------------------------------------------------------------------------------------------------

    //------------------EQUIVALENCE BETWEEN LISTMAP AND ARRAY------------------------------------------------------------------------------------------------
    //------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

    def lemmaKeyInListMapThenSameValueInArray(k: Long, i: Int): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      require(inRange(i))
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

    //PASS
    @opaque
    @pure
    def lemmaKeyInListMapIsInArray(k: Long): Unit = {
      require(valid)
      require(getCurrentListMap(0).contains(k))
      lemmaListMapContainsThenArrayContainsFrom(k, 0)

    }.ensuring(_ => if (k != 0 && k != Long.MinValue) arrayContainsKeyTailRec(_keys, k, 0) else if (k == 0) (extraKeys & 1) != 0 else (extraKeys & 2) != 0)

    //PASS
    @opaque
    @pure
    def lemmaValidKeyInArrayIsInListMap(i: Int): Unit = {
      require(valid)
      require(i >= 0 && i < _keys.length)
      require(validKeyInArray(_keys(i)))

      assert(getCurrentListMap(i).contains(_keys(i)))
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

    // @opaque
    // def lemmaSizeEquivListMapArray(): Unit = {
    //   require(valid)
    // }.ensuring(_ => getCurrentListMap(0).size == size)

    @opaque
    @pure
    def lemmaListMapApplyFromThenApplyFromZero(k: Long, v: Long, from: Int): Unit = {
      require(valid)
      require(from >= 0 && from < _keys.length)
      require(getCurrentListMap(from).contains(k))
      require(getCurrentListMap(from).apply(k) == v)

      decreases(from)

      if (from > 0) {
        if(validKeyInArray(k)){
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

    //PASS
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

    //PASS
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

    //PASS
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

    //PASS
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

    //PASS
    @opaque
    @pure
    def lemmaInListMapFromThenFromZero(from: Int, i: Int): Unit = {
      require(
        valid && from >= 0 && from < _keys.length &&
          i >= from && i < _keys.length &&
          validKeyInArray(_keys(i)) && getCurrentListMap(from).contains(_keys(i))
      )
      lemmaInListMapFromThenInFromSmaller(from, 0, i)
      check(getCurrentListMap(0).contains(_keys(i)))

    }.ensuring(_ => getCurrentListMap(0).contains(_keys(i)))

    //PASS
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

    //PASS
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

    //PASS
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

    //------------------ARRAY RELATED------------------------------------------------------------------------------------------------------------------------
    //------------------BEGIN--------------------------------------------------------------------------------------------------------------------------------

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
      require(arrayContainsKeyTailRec(a, k, from+1))
      require(arrayNoDuplicates(a, from, acc))

      
      
      if(validKeyInArray(a(from))){
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

      
      if(from == a.length - 1){
          //OK
      } else {
        if(validKeyInArray(a(from))){
          lemmaListSubSeqRefl(Cons(a(from), acc))
          ListSpecs.subseqTail(Cons(a(from), acc), Cons(a(from), acc))
          check(ListSpecs.subseq(acc, Cons(a(from), acc)))
          lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc(a, Cons(a(from), acc), acc, from + 1)
        }
        lemmaArrayNoDuplicateFromNotContainsKeysInAcc(a, from + 1, k, acc)
      }
      // }
      // check(!arrayContainsKeyTailRec(a, a(from), from + 1)) //TODO

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
      
    }.ensuring(_ => ListSpecs.subseq(l,l))

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
    def lemmaArrayForallSeekEntryFoundFromSmallerThenFromBigger(from: Int, newFrom: Int): Unit = {
      require(from >= 0 && from <= _keys.length)
      require(newFrom >= from && newFrom <= _keys.length)
      require(simpleValid)
      require(arrayForallSeekEntryFound(from)(_keys, mask))

      decreases(newFrom - from)

      if (from < newFrom) {
        lemmaArrayForallSeekEntryFoundFromSmallerThenFromBigger(from + 1, newFrom)
      }
    }.ensuring(_ => arrayForallSeekEntryFound(newFrom)(_keys, mask))
    @inline
    @pure
    def isPivot(a: Array[Long], from: Int, to: Int, pivot: Int): Boolean = {
      require(a.length < Integer.MAX_VALUE && from >= 0 && to > from && to <= a.length && pivot >= from && pivot < to)
      arrayCountValidKeysTailRec(a, from, pivot) + arrayCountValidKeysTailRec(a, pivot, to) == arrayCountValidKeysTailRec(a, from, to)
    }

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
          isPivot(a, from, to, pivot)
      )

      lemmaCountingValidKeysAtTheEnd(a, from, pivot + 1)

    }.ensuring(_ => isPivot(a, from, to, pivot + 1))

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
    def lemmaValidKeyIndexImpliesArrayContainsKey(k: Long, i: Int): Unit = {
      require(valid && validKeyIndex(k, i))
      lemmaArrayContainsFromImpliesContainsFromZero(_keys, k, i)
    }.ensuring(_ => arrayContainsKeyTailRec(_keys, k, 0))

    @pure
    @opaque
    def lemmaArrayContainsFromImpliesContainsFromZero(
        a: Array[Long],
        k: Long,
        from: Int
    ): Unit = {
      require(
        from >= 0 && from < a.length && a.length < Integer.MAX_VALUE && arrayContainsKeyTailRec(a, k, from)
      )
      decreases(from)
      if (from > 0) {
        lemmaArrayContainsFromImpliesContainsFromZero(a, k, from - 1)
      }
    }.ensuring(_ => arrayContainsKeyTailRec(a, k, 0))

    //------------------END----------------------------------------------------------------------------------------------------------------------------------
    //------------------ARRAY RELATED------------------------------------------------------------------------------------------------------------------------

  }

  @extern
  def assume(b: Boolean): Unit = {}.ensuring(_ => b)

  @extern
  def myPrintf(s: String): Unit = printf(s)

  /** Something like a test bench
    *
    * @param args
    */
  @extern
  def main(args: Array[String]): Unit = {
    val l = LongMapLongV()
    l.update(1, 42)
    assert(l(1) == 42)
    l.update(1, 43)
    assert(l(1) == 43)

    printf("working 1...\n")

    l.update(0, 43)
    // assert(l.zeroValue == 43)
    assert(l(0) == 43)

    printf("working 2...\n")
    val n = IndexMask + 10
    printf("n = " + n.toString() + "\n")

    val insertedCorrectly = Array.fill(n + 1)(false)
    for (i <- 1 to n) {
      val b = l.update(i, i + 1)
      insertedCorrectly(i) = b
      if (b) {
        printf("inserted number = " + i.toString() + "\n")
      }
    }
    printf("working 3...\n")

    for (i <- 1 to n) {
      if (insertedCorrectly(i)) {
        printf(
          "checking for i = " + i.toString() + " and that gives + " + l(
            i
          ) + "\n"
        )
        assert(l(i) == i + 1)
      }
      // if(i%100 == 0) printf(s"go $i\n");
    }

    // l.repack()

    // for (i <- 1 to n) {
    //     // printf("cheking for i = " + i.toString() + "\n")
    //   assert(l(i) == i + 1)
    //   // if(i%100 == 0) printf(s"go $i\n");
    // }
    l.update(Long.MinValue, 1234)
    // assert(l.minValue == 1234)
    assert(l(Long.MinValue) == 1234)
    l.update(3, 128549)
    assert(l(3) == 128549)

    printf(
      "seekEntry with k = -42 : (" + l.seekEntry(-42)._1.toString() + " ," + l
        .seekEntry(-42)
        ._2
        .toString() + ")\n"
    )
    printf(
      "seekEntryOrOpen with k = -42 : (" + l
        .seekEntryOrOpen(-42)
        ._1
        .toString() + " ," + l.seekEntryOrOpen(-42)._2.toString() + ")\n"
    )
    printf(
      "seekEntryOrOpen with k = 12 : (" + l
        .seekEntryOrOpen(12)
        ._1
        .toString() + " ," + l.seekEntryOrOpen(12)._2.toString() + ")\n"
    )
    printf(
      "seekEntryOrOpen with k = 4002 : (" + l
        .seekEntryOrOpen(4002)
        ._1
        .toString() + " ," + l.seekEntryOrOpen(4002)._2.toString() + ")\n"
    )
    printf("seekEmptyZero with k = 4002 : " + l.seekEmptyZero(4002).toString() + "\n")

    // printf("_size = " + l._size + "\n")
    printf("VacantBit = " + VacantBit + "\n")
    printf("ok")
  }

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
}
