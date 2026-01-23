; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478372 () Bool)

(assert start!478372)

(declare-fun b!4709010 () Bool)

(declare-fun res!1989848 () Bool)

(declare-fun e!2937178 () Bool)

(assert (=> b!4709010 (=> (not res!1989848) (not e!2937178))))

(declare-datatypes ((K!14005 0))(
  ( (K!14006 (val!19475 Int)) )
))
(declare-fun key!4653 () K!14005)

(declare-datatypes ((Hashable!6311 0))(
  ( (HashableExt!6310 (__x!32014 Int)) )
))
(declare-fun hashF!1323 () Hashable!6311)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4260 (Hashable!6311 K!14005) (_ BitVec 64))

(assert (=> b!4709010 (= res!1989848 (= (hash!4260 hashF!1323 key!4653) hash!405))))

(declare-fun tp_is_empty!31061 () Bool)

(declare-fun tp!1347287 () Bool)

(declare-fun e!2937184 () Bool)

(declare-fun tp_is_empty!31063 () Bool)

(declare-fun b!4709011 () Bool)

(assert (=> b!4709011 (= e!2937184 (and tp_is_empty!31061 tp_is_empty!31063 tp!1347287))))

(declare-fun b!4709012 () Bool)

(declare-fun res!1989838 () Bool)

(declare-fun e!2937182 () Bool)

(assert (=> b!4709012 (=> (not res!1989838) (not e!2937182))))

(declare-datatypes ((V!14251 0))(
  ( (V!14252 (val!19476 Int)) )
))
(declare-datatypes ((tuple2!54162 0))(
  ( (tuple2!54163 (_1!30375 K!14005) (_2!30375 V!14251)) )
))
(declare-datatypes ((List!52767 0))(
  ( (Nil!52643) (Cons!52643 (h!58946 tuple2!54162) (t!359999 List!52767)) )
))
(declare-fun oldBucket!34 () List!52767)

(declare-fun noDuplicateKeys!1942 (List!52767) Bool)

(assert (=> b!4709012 (= res!1989838 (noDuplicateKeys!1942 oldBucket!34))))

(declare-datatypes ((tuple2!54164 0))(
  ( (tuple2!54165 (_1!30376 (_ BitVec 64)) (_2!30376 List!52767)) )
))
(declare-datatypes ((List!52768 0))(
  ( (Nil!52644) (Cons!52644 (h!58947 tuple2!54164) (t!360000 List!52768)) )
))
(declare-datatypes ((ListLongMap!4303 0))(
  ( (ListLongMap!4304 (toList!5773 List!52768)) )
))
(declare-fun lm!2023 () ListLongMap!4303)

(declare-fun b!4709013 () Bool)

(declare-fun newBucket!218 () List!52767)

(declare-fun e!2937183 () Bool)

(declare-fun lt!1873532 () List!52767)

(declare-datatypes ((ListMap!5137 0))(
  ( (ListMap!5138 (toList!5774 List!52767)) )
))
(declare-fun extractMap!1968 (List!52768) ListMap!5137)

(assert (=> b!4709013 (= e!2937183 (= (extractMap!1968 (Cons!52644 (tuple2!54165 hash!405 lt!1873532) (t!360000 (toList!5773 lm!2023)))) (extractMap!1968 (Cons!52644 (tuple2!54165 hash!405 newBucket!218) (t!360000 (toList!5773 lm!2023))))))))

(declare-fun b!4709014 () Bool)

(declare-fun e!2937181 () Bool)

(declare-fun tp!1347288 () Bool)

(assert (=> b!4709014 (= e!2937181 tp!1347288)))

(declare-fun b!4709015 () Bool)

(declare-fun res!1989841 () Bool)

(assert (=> b!4709015 (=> (not res!1989841) (not e!2937178))))

(declare-fun allKeysSameHash!1768 (List!52767 (_ BitVec 64) Hashable!6311) Bool)

(assert (=> b!4709015 (= res!1989841 (allKeysSameHash!1768 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4709016 () Bool)

(declare-fun res!1989847 () Bool)

(assert (=> b!4709016 (=> (not res!1989847) (not e!2937178))))

(declare-fun head!10126 (List!52768) tuple2!54164)

(assert (=> b!4709016 (= res!1989847 (= (head!10126 (toList!5773 lm!2023)) (tuple2!54165 hash!405 oldBucket!34)))))

(declare-fun b!4709017 () Bool)

(declare-fun res!1989836 () Bool)

(assert (=> b!4709017 (=> (not res!1989836) (not e!2937178))))

(get-info :version)

(assert (=> b!4709017 (= res!1989836 ((_ is Cons!52644) (toList!5773 lm!2023)))))

(declare-fun b!4709009 () Bool)

(declare-fun res!1989846 () Bool)

(assert (=> b!4709009 (=> (not res!1989846) (not e!2937182))))

(assert (=> b!4709009 (= res!1989846 (allKeysSameHash!1768 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1989845 () Bool)

(assert (=> start!478372 (=> (not res!1989845) (not e!2937182))))

(declare-fun lambda!212215 () Int)

(declare-fun forall!11467 (List!52768 Int) Bool)

(assert (=> start!478372 (= res!1989845 (forall!11467 (toList!5773 lm!2023) lambda!212215))))

(assert (=> start!478372 e!2937182))

(declare-fun inv!67879 (ListLongMap!4303) Bool)

(assert (=> start!478372 (and (inv!67879 lm!2023) e!2937181)))

(assert (=> start!478372 tp_is_empty!31061))

(assert (=> start!478372 e!2937184))

(assert (=> start!478372 true))

(declare-fun e!2937180 () Bool)

(assert (=> start!478372 e!2937180))

(declare-fun b!4709018 () Bool)

(declare-fun res!1989837 () Bool)

(assert (=> b!4709018 (=> (not res!1989837) (not e!2937178))))

(declare-fun allKeysSameHashInMap!1856 (ListLongMap!4303 Hashable!6311) Bool)

(assert (=> b!4709018 (= res!1989837 (allKeysSameHashInMap!1856 lm!2023 hashF!1323))))

(declare-fun b!4709019 () Bool)

(assert (=> b!4709019 (= e!2937182 e!2937178)))

(declare-fun res!1989839 () Bool)

(assert (=> b!4709019 (=> (not res!1989839) (not e!2937178))))

(declare-fun lt!1873531 () ListMap!5137)

(declare-fun contains!15952 (ListMap!5137 K!14005) Bool)

(assert (=> b!4709019 (= res!1989839 (contains!15952 lt!1873531 key!4653))))

(assert (=> b!4709019 (= lt!1873531 (extractMap!1968 (toList!5773 lm!2023)))))

(declare-fun b!4709020 () Bool)

(declare-fun tp!1347289 () Bool)

(assert (=> b!4709020 (= e!2937180 (and tp_is_empty!31061 tp_is_empty!31063 tp!1347289))))

(declare-fun b!4709021 () Bool)

(declare-fun res!1989849 () Bool)

(assert (=> b!4709021 (=> (not res!1989849) (not e!2937182))))

(declare-fun removePairForKey!1537 (List!52767 K!14005) List!52767)

(assert (=> b!4709021 (= res!1989849 (= (removePairForKey!1537 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4709022 () Bool)

(declare-fun e!2937179 () Bool)

(assert (=> b!4709022 (= e!2937179 e!2937183)))

(declare-fun res!1989843 () Bool)

(assert (=> b!4709022 (=> res!1989843 e!2937183)))

(assert (=> b!4709022 (= res!1989843 (not (= lt!1873532 newBucket!218)))))

(declare-fun tail!8822 (List!52767) List!52767)

(assert (=> b!4709022 (= lt!1873532 (tail!8822 oldBucket!34))))

(declare-fun b!4709023 () Bool)

(assert (=> b!4709023 (= e!2937178 (not e!2937179))))

(declare-fun res!1989842 () Bool)

(assert (=> b!4709023 (=> res!1989842 e!2937179)))

(assert (=> b!4709023 (= res!1989842 (or (not ((_ is Cons!52643) oldBucket!34)) (not (= (_1!30375 (h!58946 oldBucket!34)) key!4653))))))

(declare-fun e!2937177 () Bool)

(assert (=> b!4709023 e!2937177))

(declare-fun res!1989840 () Bool)

(assert (=> b!4709023 (=> (not res!1989840) (not e!2937177))))

(declare-fun tail!8823 (ListLongMap!4303) ListLongMap!4303)

(assert (=> b!4709023 (= res!1989840 (= (t!360000 (toList!5773 lm!2023)) (toList!5773 (tail!8823 lm!2023))))))

(declare-fun b!4709024 () Bool)

(declare-fun addToMapMapFromBucket!1372 (List!52767 ListMap!5137) ListMap!5137)

(assert (=> b!4709024 (= e!2937177 (= lt!1873531 (addToMapMapFromBucket!1372 (_2!30376 (h!58947 (toList!5773 lm!2023))) (extractMap!1968 (t!360000 (toList!5773 lm!2023))))))))

(declare-fun b!4709025 () Bool)

(declare-fun res!1989844 () Bool)

(assert (=> b!4709025 (=> (not res!1989844) (not e!2937182))))

(assert (=> b!4709025 (= res!1989844 (noDuplicateKeys!1942 newBucket!218))))

(assert (= (and start!478372 res!1989845) b!4709012))

(assert (= (and b!4709012 res!1989838) b!4709025))

(assert (= (and b!4709025 res!1989844) b!4709021))

(assert (= (and b!4709021 res!1989849) b!4709009))

(assert (= (and b!4709009 res!1989846) b!4709019))

(assert (= (and b!4709019 res!1989839) b!4709010))

(assert (= (and b!4709010 res!1989848) b!4709015))

(assert (= (and b!4709015 res!1989841) b!4709018))

(assert (= (and b!4709018 res!1989837) b!4709016))

(assert (= (and b!4709016 res!1989847) b!4709017))

(assert (= (and b!4709017 res!1989836) b!4709023))

(assert (= (and b!4709023 res!1989840) b!4709024))

(assert (= (and b!4709023 (not res!1989842)) b!4709022))

(assert (= (and b!4709022 (not res!1989843)) b!4709013))

(assert (= start!478372 b!4709014))

(assert (= (and start!478372 ((_ is Cons!52643) oldBucket!34)) b!4709011))

(assert (= (and start!478372 ((_ is Cons!52643) newBucket!218)) b!4709020))

(declare-fun m!5633331 () Bool)

(assert (=> b!4709012 m!5633331))

(declare-fun m!5633333 () Bool)

(assert (=> b!4709025 m!5633333))

(declare-fun m!5633335 () Bool)

(assert (=> b!4709022 m!5633335))

(declare-fun m!5633337 () Bool)

(assert (=> b!4709019 m!5633337))

(declare-fun m!5633339 () Bool)

(assert (=> b!4709019 m!5633339))

(declare-fun m!5633341 () Bool)

(assert (=> b!4709018 m!5633341))

(declare-fun m!5633343 () Bool)

(assert (=> b!4709016 m!5633343))

(declare-fun m!5633345 () Bool)

(assert (=> b!4709009 m!5633345))

(declare-fun m!5633347 () Bool)

(assert (=> b!4709021 m!5633347))

(declare-fun m!5633349 () Bool)

(assert (=> b!4709024 m!5633349))

(assert (=> b!4709024 m!5633349))

(declare-fun m!5633351 () Bool)

(assert (=> b!4709024 m!5633351))

(declare-fun m!5633353 () Bool)

(assert (=> start!478372 m!5633353))

(declare-fun m!5633355 () Bool)

(assert (=> start!478372 m!5633355))

(declare-fun m!5633357 () Bool)

(assert (=> b!4709013 m!5633357))

(declare-fun m!5633359 () Bool)

(assert (=> b!4709013 m!5633359))

(declare-fun m!5633361 () Bool)

(assert (=> b!4709010 m!5633361))

(declare-fun m!5633363 () Bool)

(assert (=> b!4709023 m!5633363))

(declare-fun m!5633365 () Bool)

(assert (=> b!4709015 m!5633365))

(check-sat (not b!4709012) (not b!4709020) (not b!4709021) (not b!4709024) (not b!4709016) (not b!4709018) (not start!478372) (not b!4709014) tp_is_empty!31061 (not b!4709010) (not b!4709025) (not b!4709023) (not b!4709013) (not b!4709019) (not b!4709011) (not b!4709009) (not b!4709015) tp_is_empty!31063 (not b!4709022))
(check-sat)
