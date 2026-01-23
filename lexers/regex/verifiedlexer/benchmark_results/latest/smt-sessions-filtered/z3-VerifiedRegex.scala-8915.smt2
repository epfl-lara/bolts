; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478300 () Bool)

(assert start!478300)

(declare-fun b!4708364 () Bool)

(declare-fun res!1989414 () Bool)

(declare-fun e!2936861 () Bool)

(assert (=> b!4708364 (=> (not res!1989414) (not e!2936861))))

(declare-datatypes ((K!13980 0))(
  ( (K!13981 (val!19455 Int)) )
))
(declare-fun key!4653 () K!13980)

(declare-datatypes ((Hashable!6301 0))(
  ( (HashableExt!6300 (__x!32004 Int)) )
))
(declare-fun hashF!1323 () Hashable!6301)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4248 (Hashable!6301 K!13980) (_ BitVec 64))

(assert (=> b!4708364 (= res!1989414 (= (hash!4248 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708365 () Bool)

(declare-fun e!2936858 () Bool)

(declare-datatypes ((V!14226 0))(
  ( (V!14227 (val!19456 Int)) )
))
(declare-datatypes ((tuple2!54122 0))(
  ( (tuple2!54123 (_1!30355 K!13980) (_2!30355 V!14226)) )
))
(declare-datatypes ((List!52745 0))(
  ( (Nil!52621) (Cons!52621 (h!58922 tuple2!54122) (t!359977 List!52745)) )
))
(declare-datatypes ((ListMap!5117 0))(
  ( (ListMap!5118 (toList!5753 List!52745)) )
))
(declare-fun lt!1873284 () ListMap!5117)

(declare-datatypes ((tuple2!54124 0))(
  ( (tuple2!54125 (_1!30356 (_ BitVec 64)) (_2!30356 List!52745)) )
))
(declare-datatypes ((List!52746 0))(
  ( (Nil!52622) (Cons!52622 (h!58923 tuple2!54124) (t!359978 List!52746)) )
))
(declare-datatypes ((ListLongMap!4283 0))(
  ( (ListLongMap!4284 (toList!5754 List!52746)) )
))
(declare-fun lm!2023 () ListLongMap!4283)

(declare-fun addToMapMapFromBucket!1364 (List!52745 ListMap!5117) ListMap!5117)

(declare-fun extractMap!1958 (List!52746) ListMap!5117)

(assert (=> b!4708365 (= e!2936858 (= lt!1873284 (addToMapMapFromBucket!1364 (_2!30356 (h!58923 (toList!5754 lm!2023))) (extractMap!1958 (t!359978 (toList!5754 lm!2023))))))))

(declare-fun b!4708366 () Bool)

(declare-fun lambda!212095 () Int)

(declare-fun e!2936864 () Bool)

(declare-fun newBucket!218 () List!52745)

(declare-fun forall!11455 (List!52746 Int) Bool)

(declare-fun tail!8804 (List!52746) List!52746)

(assert (=> b!4708366 (= e!2936864 (forall!11455 (Cons!52622 (tuple2!54125 hash!405 newBucket!218) (tail!8804 (toList!5754 lm!2023))) lambda!212095))))

(declare-fun b!4708367 () Bool)

(declare-fun res!1989409 () Bool)

(declare-fun e!2936860 () Bool)

(assert (=> b!4708367 (=> (not res!1989409) (not e!2936860))))

(declare-fun oldBucket!34 () List!52745)

(declare-fun allKeysSameHash!1758 (List!52745 (_ BitVec 64) Hashable!6301) Bool)

(assert (=> b!4708367 (= res!1989409 (allKeysSameHash!1758 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708368 () Bool)

(declare-fun res!1989408 () Bool)

(assert (=> b!4708368 (=> (not res!1989408) (not e!2936861))))

(declare-fun allKeysSameHashInMap!1846 (ListLongMap!4283 Hashable!6301) Bool)

(assert (=> b!4708368 (= res!1989408 (allKeysSameHashInMap!1846 lm!2023 hashF!1323))))

(declare-fun b!4708369 () Bool)

(declare-fun res!1989417 () Bool)

(assert (=> b!4708369 (=> (not res!1989417) (not e!2936860))))

(declare-fun noDuplicateKeys!1932 (List!52745) Bool)

(assert (=> b!4708369 (= res!1989417 (noDuplicateKeys!1932 newBucket!218))))

(declare-fun b!4708370 () Bool)

(declare-fun res!1989418 () Bool)

(assert (=> b!4708370 (=> (not res!1989418) (not e!2936860))))

(declare-fun removePairForKey!1527 (List!52745 K!13980) List!52745)

(assert (=> b!4708370 (= res!1989418 (= (removePairForKey!1527 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708371 () Bool)

(assert (=> b!4708371 (= e!2936860 e!2936861)))

(declare-fun res!1989416 () Bool)

(assert (=> b!4708371 (=> (not res!1989416) (not e!2936861))))

(declare-fun contains!15940 (ListMap!5117 K!13980) Bool)

(assert (=> b!4708371 (= res!1989416 (contains!15940 lt!1873284 key!4653))))

(assert (=> b!4708371 (= lt!1873284 (extractMap!1958 (toList!5754 lm!2023)))))

(declare-fun b!4708372 () Bool)

(declare-fun res!1989413 () Bool)

(assert (=> b!4708372 (=> (not res!1989413) (not e!2936861))))

(get-info :version)

(assert (=> b!4708372 (= res!1989413 ((_ is Cons!52622) (toList!5754 lm!2023)))))

(declare-fun tp!1347179 () Bool)

(declare-fun tp_is_empty!31021 () Bool)

(declare-fun b!4708373 () Bool)

(declare-fun e!2936863 () Bool)

(declare-fun tp_is_empty!31023 () Bool)

(assert (=> b!4708373 (= e!2936863 (and tp_is_empty!31021 tp_is_empty!31023 tp!1347179))))

(declare-fun res!1989410 () Bool)

(assert (=> start!478300 (=> (not res!1989410) (not e!2936860))))

(assert (=> start!478300 (= res!1989410 (forall!11455 (toList!5754 lm!2023) lambda!212095))))

(assert (=> start!478300 e!2936860))

(declare-fun e!2936862 () Bool)

(declare-fun inv!67854 (ListLongMap!4283) Bool)

(assert (=> start!478300 (and (inv!67854 lm!2023) e!2936862)))

(assert (=> start!478300 tp_is_empty!31021))

(assert (=> start!478300 e!2936863))

(assert (=> start!478300 true))

(declare-fun e!2936859 () Bool)

(assert (=> start!478300 e!2936859))

(declare-fun b!4708374 () Bool)

(assert (=> b!4708374 (= e!2936861 (not e!2936864))))

(declare-fun res!1989412 () Bool)

(assert (=> b!4708374 (=> res!1989412 e!2936864)))

(assert (=> b!4708374 (= res!1989412 (or (and ((_ is Cons!52621) oldBucket!34) (= (_1!30355 (h!58922 oldBucket!34)) key!4653)) (and ((_ is Cons!52621) oldBucket!34) (not (= (_1!30355 (h!58922 oldBucket!34)) key!4653))) ((_ is Nil!52621) oldBucket!34)))))

(assert (=> b!4708374 e!2936858))

(declare-fun res!1989411 () Bool)

(assert (=> b!4708374 (=> (not res!1989411) (not e!2936858))))

(declare-fun tail!8805 (ListLongMap!4283) ListLongMap!4283)

(assert (=> b!4708374 (= res!1989411 (= (t!359978 (toList!5754 lm!2023)) (toList!5754 (tail!8805 lm!2023))))))

(declare-fun tp!1347178 () Bool)

(declare-fun b!4708375 () Bool)

(assert (=> b!4708375 (= e!2936859 (and tp_is_empty!31021 tp_is_empty!31023 tp!1347178))))

(declare-fun b!4708376 () Bool)

(declare-fun tp!1347177 () Bool)

(assert (=> b!4708376 (= e!2936862 tp!1347177)))

(declare-fun b!4708377 () Bool)

(declare-fun res!1989407 () Bool)

(assert (=> b!4708377 (=> (not res!1989407) (not e!2936861))))

(assert (=> b!4708377 (= res!1989407 (allKeysSameHash!1758 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708378 () Bool)

(declare-fun res!1989415 () Bool)

(assert (=> b!4708378 (=> (not res!1989415) (not e!2936861))))

(declare-fun head!10118 (List!52746) tuple2!54124)

(assert (=> b!4708378 (= res!1989415 (= (head!10118 (toList!5754 lm!2023)) (tuple2!54125 hash!405 oldBucket!34)))))

(declare-fun b!4708379 () Bool)

(declare-fun res!1989419 () Bool)

(assert (=> b!4708379 (=> (not res!1989419) (not e!2936860))))

(assert (=> b!4708379 (= res!1989419 (noDuplicateKeys!1932 oldBucket!34))))

(assert (= (and start!478300 res!1989410) b!4708379))

(assert (= (and b!4708379 res!1989419) b!4708369))

(assert (= (and b!4708369 res!1989417) b!4708370))

(assert (= (and b!4708370 res!1989418) b!4708367))

(assert (= (and b!4708367 res!1989409) b!4708371))

(assert (= (and b!4708371 res!1989416) b!4708364))

(assert (= (and b!4708364 res!1989414) b!4708377))

(assert (= (and b!4708377 res!1989407) b!4708368))

(assert (= (and b!4708368 res!1989408) b!4708378))

(assert (= (and b!4708378 res!1989415) b!4708372))

(assert (= (and b!4708372 res!1989413) b!4708374))

(assert (= (and b!4708374 res!1989411) b!4708365))

(assert (= (and b!4708374 (not res!1989412)) b!4708366))

(assert (= start!478300 b!4708376))

(assert (= (and start!478300 ((_ is Cons!52621) oldBucket!34)) b!4708373))

(assert (= (and start!478300 ((_ is Cons!52621) newBucket!218)) b!4708375))

(declare-fun m!5632823 () Bool)

(assert (=> b!4708377 m!5632823))

(declare-fun m!5632825 () Bool)

(assert (=> start!478300 m!5632825))

(declare-fun m!5632827 () Bool)

(assert (=> start!478300 m!5632827))

(declare-fun m!5632829 () Bool)

(assert (=> b!4708367 m!5632829))

(declare-fun m!5632831 () Bool)

(assert (=> b!4708371 m!5632831))

(declare-fun m!5632833 () Bool)

(assert (=> b!4708371 m!5632833))

(declare-fun m!5632835 () Bool)

(assert (=> b!4708366 m!5632835))

(declare-fun m!5632837 () Bool)

(assert (=> b!4708366 m!5632837))

(declare-fun m!5632839 () Bool)

(assert (=> b!4708378 m!5632839))

(declare-fun m!5632841 () Bool)

(assert (=> b!4708370 m!5632841))

(declare-fun m!5632843 () Bool)

(assert (=> b!4708368 m!5632843))

(declare-fun m!5632845 () Bool)

(assert (=> b!4708369 m!5632845))

(declare-fun m!5632847 () Bool)

(assert (=> b!4708379 m!5632847))

(declare-fun m!5632849 () Bool)

(assert (=> b!4708365 m!5632849))

(assert (=> b!4708365 m!5632849))

(declare-fun m!5632851 () Bool)

(assert (=> b!4708365 m!5632851))

(declare-fun m!5632853 () Bool)

(assert (=> b!4708374 m!5632853))

(declare-fun m!5632855 () Bool)

(assert (=> b!4708364 m!5632855))

(check-sat (not b!4708364) (not b!4708375) (not b!4708373) (not b!4708370) (not b!4708365) (not start!478300) tp_is_empty!31021 (not b!4708369) (not b!4708374) (not b!4708376) (not b!4708378) (not b!4708366) (not b!4708377) (not b!4708371) (not b!4708379) (not b!4708368) (not b!4708367) tp_is_empty!31023)
(check-sat)
