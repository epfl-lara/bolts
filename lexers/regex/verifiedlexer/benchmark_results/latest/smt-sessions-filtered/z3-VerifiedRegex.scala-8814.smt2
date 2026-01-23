; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471596 () Bool)

(assert start!471596)

(declare-fun b!4673205 () Bool)

(declare-fun res!1967636 () Bool)

(declare-fun e!2916202 () Bool)

(assert (=> b!4673205 (=> (not res!1967636) (not e!2916202))))

(declare-datatypes ((K!13475 0))(
  ( (K!13476 (val!19051 Int)) )
))
(declare-datatypes ((V!13721 0))(
  ( (V!13722 (val!19052 Int)) )
))
(declare-datatypes ((tuple2!53314 0))(
  ( (tuple2!53315 (_1!29951 K!13475) (_2!29951 V!13721)) )
))
(declare-datatypes ((List!52228 0))(
  ( (Nil!52104) (Cons!52104 (h!58292 tuple2!53314) (t!359366 List!52228)) )
))
(declare-datatypes ((tuple2!53316 0))(
  ( (tuple2!53317 (_1!29952 (_ BitVec 64)) (_2!29952 List!52228)) )
))
(declare-datatypes ((List!52229 0))(
  ( (Nil!52105) (Cons!52105 (h!58293 tuple2!53316) (t!359367 List!52229)) )
))
(declare-datatypes ((ListLongMap!3879 0))(
  ( (ListLongMap!3880 (toList!5349 List!52229)) )
))
(declare-fun lm!2023 () ListLongMap!3879)

(get-info :version)

(assert (=> b!4673205 (= res!1967636 ((_ is Cons!52105) (toList!5349 lm!2023)))))

(declare-fun b!4673206 () Bool)

(declare-fun e!2916204 () Bool)

(assert (=> b!4673206 (= e!2916204 e!2916202)))

(declare-fun res!1967641 () Bool)

(assert (=> b!4673206 (=> (not res!1967641) (not e!2916202))))

(declare-datatypes ((ListMap!4713 0))(
  ( (ListMap!4714 (toList!5350 List!52228)) )
))
(declare-fun lt!1834243 () ListMap!4713)

(declare-fun key!4653 () K!13475)

(declare-fun contains!15279 (ListMap!4713 K!13475) Bool)

(assert (=> b!4673206 (= res!1967641 (contains!15279 lt!1834243 key!4653))))

(declare-fun extractMap!1756 (List!52229) ListMap!4713)

(assert (=> b!4673206 (= lt!1834243 (extractMap!1756 (toList!5349 lm!2023)))))

(declare-fun b!4673207 () Bool)

(declare-fun res!1967638 () Bool)

(assert (=> b!4673207 (=> (not res!1967638) (not e!2916202))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6099 0))(
  ( (HashableExt!6098 (__x!31802 Int)) )
))
(declare-fun hashF!1323 () Hashable!6099)

(declare-fun newBucket!218 () List!52228)

(declare-fun allKeysSameHash!1556 (List!52228 (_ BitVec 64) Hashable!6099) Bool)

(assert (=> b!4673207 (= res!1967638 (allKeysSameHash!1556 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4673208 () Bool)

(declare-fun res!1967640 () Bool)

(assert (=> b!4673208 (=> (not res!1967640) (not e!2916202))))

(declare-fun oldBucket!34 () List!52228)

(declare-fun head!9770 (List!52229) tuple2!53316)

(assert (=> b!4673208 (= res!1967640 (= (head!9770 (toList!5349 lm!2023)) (tuple2!53317 hash!405 oldBucket!34)))))

(declare-fun tp!1344220 () Bool)

(declare-fun b!4673209 () Bool)

(declare-fun tp_is_empty!30215 () Bool)

(declare-fun e!2916203 () Bool)

(declare-fun tp_is_empty!30213 () Bool)

(assert (=> b!4673209 (= e!2916203 (and tp_is_empty!30213 tp_is_empty!30215 tp!1344220))))

(declare-fun res!1967645 () Bool)

(assert (=> start!471596 (=> (not res!1967645) (not e!2916204))))

(declare-fun lambda!202980 () Int)

(declare-fun forall!11140 (List!52229 Int) Bool)

(assert (=> start!471596 (= res!1967645 (forall!11140 (toList!5349 lm!2023) lambda!202980))))

(assert (=> start!471596 e!2916204))

(declare-fun e!2916201 () Bool)

(declare-fun inv!67349 (ListLongMap!3879) Bool)

(assert (=> start!471596 (and (inv!67349 lm!2023) e!2916201)))

(assert (=> start!471596 tp_is_empty!30213))

(assert (=> start!471596 e!2916203))

(assert (=> start!471596 true))

(declare-fun e!2916205 () Bool)

(assert (=> start!471596 e!2916205))

(declare-fun b!4673210 () Bool)

(declare-fun e!2916200 () Bool)

(declare-fun addToMapMapFromBucket!1162 (List!52228 ListMap!4713) ListMap!4713)

(assert (=> b!4673210 (= e!2916200 (= lt!1834243 (addToMapMapFromBucket!1162 (_2!29952 (h!58293 (toList!5349 lm!2023))) (extractMap!1756 (t!359367 (toList!5349 lm!2023))))))))

(declare-fun b!4673211 () Bool)

(declare-fun res!1967643 () Bool)

(assert (=> b!4673211 (=> (not res!1967643) (not e!2916202))))

(declare-fun hash!3885 (Hashable!6099 K!13475) (_ BitVec 64))

(assert (=> b!4673211 (= res!1967643 (= (hash!3885 hashF!1323 key!4653) hash!405))))

(declare-fun b!4673212 () Bool)

(declare-fun res!1967637 () Bool)

(assert (=> b!4673212 (=> (not res!1967637) (not e!2916204))))

(assert (=> b!4673212 (= res!1967637 (allKeysSameHash!1556 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4673213 () Bool)

(declare-fun res!1967647 () Bool)

(assert (=> b!4673213 (=> (not res!1967647) (not e!2916204))))

(declare-fun noDuplicateKeys!1730 (List!52228) Bool)

(assert (=> b!4673213 (= res!1967647 (noDuplicateKeys!1730 oldBucket!34))))

(declare-fun b!4673214 () Bool)

(declare-fun res!1967644 () Bool)

(assert (=> b!4673214 (=> (not res!1967644) (not e!2916202))))

(declare-fun allKeysSameHashInMap!1644 (ListLongMap!3879 Hashable!6099) Bool)

(assert (=> b!4673214 (= res!1967644 (allKeysSameHashInMap!1644 lm!2023 hashF!1323))))

(declare-fun b!4673215 () Bool)

(declare-fun res!1967642 () Bool)

(assert (=> b!4673215 (=> (not res!1967642) (not e!2916204))))

(assert (=> b!4673215 (= res!1967642 (noDuplicateKeys!1730 newBucket!218))))

(declare-fun b!4673216 () Bool)

(declare-fun res!1967639 () Bool)

(assert (=> b!4673216 (=> (not res!1967639) (not e!2916204))))

(declare-fun removePairForKey!1325 (List!52228 K!13475) List!52228)

(assert (=> b!4673216 (= res!1967639 (= (removePairForKey!1325 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4673217 () Bool)

(declare-fun tp!1344219 () Bool)

(assert (=> b!4673217 (= e!2916205 (and tp_is_empty!30213 tp_is_empty!30215 tp!1344219))))

(declare-fun b!4673218 () Bool)

(assert (=> b!4673218 (= e!2916202 (not (or (not ((_ is Cons!52104) oldBucket!34)) (not (= (_1!29951 (h!58292 oldBucket!34)) key!4653)) (not (= oldBucket!34 Nil!52104)))))))

(assert (=> b!4673218 e!2916200))

(declare-fun res!1967646 () Bool)

(assert (=> b!4673218 (=> (not res!1967646) (not e!2916200))))

(declare-fun tail!8296 (ListLongMap!3879) ListLongMap!3879)

(assert (=> b!4673218 (= res!1967646 (= (t!359367 (toList!5349 lm!2023)) (toList!5349 (tail!8296 lm!2023))))))

(declare-fun b!4673219 () Bool)

(declare-fun tp!1344221 () Bool)

(assert (=> b!4673219 (= e!2916201 tp!1344221)))

(assert (= (and start!471596 res!1967645) b!4673213))

(assert (= (and b!4673213 res!1967647) b!4673215))

(assert (= (and b!4673215 res!1967642) b!4673216))

(assert (= (and b!4673216 res!1967639) b!4673212))

(assert (= (and b!4673212 res!1967637) b!4673206))

(assert (= (and b!4673206 res!1967641) b!4673211))

(assert (= (and b!4673211 res!1967643) b!4673207))

(assert (= (and b!4673207 res!1967638) b!4673214))

(assert (= (and b!4673214 res!1967644) b!4673208))

(assert (= (and b!4673208 res!1967640) b!4673205))

(assert (= (and b!4673205 res!1967636) b!4673218))

(assert (= (and b!4673218 res!1967646) b!4673210))

(assert (= start!471596 b!4673219))

(assert (= (and start!471596 ((_ is Cons!52104) oldBucket!34)) b!4673209))

(assert (= (and start!471596 ((_ is Cons!52104) newBucket!218)) b!4673217))

(declare-fun m!5566839 () Bool)

(assert (=> b!4673214 m!5566839))

(declare-fun m!5566841 () Bool)

(assert (=> b!4673215 m!5566841))

(declare-fun m!5566843 () Bool)

(assert (=> b!4673211 m!5566843))

(declare-fun m!5566845 () Bool)

(assert (=> b!4673218 m!5566845))

(declare-fun m!5566847 () Bool)

(assert (=> b!4673208 m!5566847))

(declare-fun m!5566849 () Bool)

(assert (=> b!4673216 m!5566849))

(declare-fun m!5566851 () Bool)

(assert (=> b!4673210 m!5566851))

(assert (=> b!4673210 m!5566851))

(declare-fun m!5566853 () Bool)

(assert (=> b!4673210 m!5566853))

(declare-fun m!5566855 () Bool)

(assert (=> b!4673213 m!5566855))

(declare-fun m!5566857 () Bool)

(assert (=> start!471596 m!5566857))

(declare-fun m!5566859 () Bool)

(assert (=> start!471596 m!5566859))

(declare-fun m!5566861 () Bool)

(assert (=> b!4673207 m!5566861))

(declare-fun m!5566863 () Bool)

(assert (=> b!4673212 m!5566863))

(declare-fun m!5566865 () Bool)

(assert (=> b!4673206 m!5566865))

(declare-fun m!5566867 () Bool)

(assert (=> b!4673206 m!5566867))

(check-sat (not b!4673217) (not b!4673210) (not b!4673211) (not b!4673214) tp_is_empty!30215 (not b!4673213) (not b!4673218) (not b!4673208) (not b!4673219) (not b!4673212) (not b!4673209) (not start!471596) (not b!4673207) (not b!4673206) (not b!4673215) (not b!4673216) tp_is_empty!30213)
(check-sat)
