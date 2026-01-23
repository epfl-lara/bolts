; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472932 () Bool)

(assert start!472932)

(declare-fun b!4682339 () Bool)

(declare-fun res!1973554 () Bool)

(declare-fun e!2921316 () Bool)

(assert (=> b!4682339 (=> (not res!1973554) (not e!2921316))))

(declare-datatypes ((K!13665 0))(
  ( (K!13666 (val!19203 Int)) )
))
(declare-datatypes ((V!13911 0))(
  ( (V!13912 (val!19204 Int)) )
))
(declare-datatypes ((tuple2!53618 0))(
  ( (tuple2!53619 (_1!30103 K!13665) (_2!30103 V!13911)) )
))
(declare-datatypes ((List!52411 0))(
  ( (Nil!52287) (Cons!52287 (h!58506 tuple2!53618) (t!359573 List!52411)) )
))
(declare-fun oldBucket!34 () List!52411)

(declare-fun noDuplicateKeys!1806 (List!52411) Bool)

(assert (=> b!4682339 (= res!1973554 (noDuplicateKeys!1806 oldBucket!34))))

(declare-fun tp!1345223 () Bool)

(declare-fun tp_is_empty!30519 () Bool)

(declare-fun b!4682340 () Bool)

(declare-fun e!2921315 () Bool)

(declare-fun tp_is_empty!30517 () Bool)

(assert (=> b!4682340 (= e!2921315 (and tp_is_empty!30517 tp_is_empty!30519 tp!1345223))))

(declare-fun b!4682341 () Bool)

(declare-fun res!1973553 () Bool)

(declare-fun e!2921320 () Bool)

(assert (=> b!4682341 (=> (not res!1973553) (not e!2921320))))

(declare-fun key!4653 () K!13665)

(declare-datatypes ((Hashable!6175 0))(
  ( (HashableExt!6174 (__x!31878 Int)) )
))
(declare-fun hashF!1323 () Hashable!6175)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3992 (Hashable!6175 K!13665) (_ BitVec 64))

(assert (=> b!4682341 (= res!1973553 (= (hash!3992 hashF!1323 key!4653) hash!405))))

(declare-fun b!4682342 () Bool)

(declare-fun res!1973555 () Bool)

(assert (=> b!4682342 (=> (not res!1973555) (not e!2921316))))

(declare-fun newBucket!218 () List!52411)

(assert (=> b!4682342 (= res!1973555 (noDuplicateKeys!1806 newBucket!218))))

(declare-fun e!2921319 () Bool)

(declare-fun b!4682343 () Bool)

(declare-fun tp!1345225 () Bool)

(assert (=> b!4682343 (= e!2921319 (and tp_is_empty!30517 tp_is_empty!30519 tp!1345225))))

(declare-fun b!4682344 () Bool)

(declare-fun e!2921318 () Bool)

(declare-fun tp!1345224 () Bool)

(assert (=> b!4682344 (= e!2921318 tp!1345224)))

(declare-fun b!4682345 () Bool)

(declare-fun res!1973557 () Bool)

(assert (=> b!4682345 (=> (not res!1973557) (not e!2921320))))

(declare-datatypes ((tuple2!53620 0))(
  ( (tuple2!53621 (_1!30104 (_ BitVec 64)) (_2!30104 List!52411)) )
))
(declare-datatypes ((List!52412 0))(
  ( (Nil!52288) (Cons!52288 (h!58507 tuple2!53620) (t!359574 List!52412)) )
))
(declare-datatypes ((ListLongMap!4031 0))(
  ( (ListLongMap!4032 (toList!5501 List!52412)) )
))
(declare-fun lm!2023 () ListLongMap!4031)

(declare-fun head!9900 (List!52412) tuple2!53620)

(assert (=> b!4682345 (= res!1973557 (= (head!9900 (toList!5501 lm!2023)) (tuple2!53621 hash!405 oldBucket!34)))))

(declare-fun b!4682346 () Bool)

(declare-fun e!2921317 () Bool)

(declare-datatypes ((ListMap!4865 0))(
  ( (ListMap!4866 (toList!5502 List!52411)) )
))
(declare-fun lt!1842222 () ListMap!4865)

(declare-fun addToMapMapFromBucket!1238 (List!52411 ListMap!4865) ListMap!4865)

(declare-fun extractMap!1832 (List!52412) ListMap!4865)

(assert (=> b!4682346 (= e!2921317 (= lt!1842222 (addToMapMapFromBucket!1238 (_2!30104 (h!58507 (toList!5501 lm!2023))) (extractMap!1832 (t!359574 (toList!5501 lm!2023))))))))

(declare-fun b!4682347 () Bool)

(declare-fun res!1973550 () Bool)

(assert (=> b!4682347 (=> (not res!1973550) (not e!2921320))))

(declare-fun allKeysSameHashInMap!1720 (ListLongMap!4031 Hashable!6175) Bool)

(assert (=> b!4682347 (= res!1973550 (allKeysSameHashInMap!1720 lm!2023 hashF!1323))))

(declare-fun res!1973559 () Bool)

(assert (=> start!472932 (=> (not res!1973559) (not e!2921316))))

(declare-fun lambda!205167 () Int)

(declare-fun forall!11247 (List!52412 Int) Bool)

(assert (=> start!472932 (= res!1973559 (forall!11247 (toList!5501 lm!2023) lambda!205167))))

(assert (=> start!472932 e!2921316))

(declare-fun inv!67539 (ListLongMap!4031) Bool)

(assert (=> start!472932 (and (inv!67539 lm!2023) e!2921318)))

(assert (=> start!472932 tp_is_empty!30517))

(assert (=> start!472932 e!2921319))

(assert (=> start!472932 true))

(assert (=> start!472932 e!2921315))

(declare-fun b!4682348 () Bool)

(declare-fun res!1973558 () Bool)

(assert (=> b!4682348 (=> (not res!1973558) (not e!2921316))))

(declare-fun removePairForKey!1401 (List!52411 K!13665) List!52411)

(assert (=> b!4682348 (= res!1973558 (= (removePairForKey!1401 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682349 () Bool)

(declare-fun res!1973551 () Bool)

(assert (=> b!4682349 (=> (not res!1973551) (not e!2921320))))

(get-info :version)

(assert (=> b!4682349 (= res!1973551 ((_ is Cons!52288) (toList!5501 lm!2023)))))

(declare-fun b!4682350 () Bool)

(assert (=> b!4682350 (= e!2921320 (not true))))

(assert (=> b!4682350 e!2921317))

(declare-fun res!1973552 () Bool)

(assert (=> b!4682350 (=> (not res!1973552) (not e!2921317))))

(declare-fun tail!8477 (ListLongMap!4031) ListLongMap!4031)

(assert (=> b!4682350 (= res!1973552 (= (t!359574 (toList!5501 lm!2023)) (toList!5501 (tail!8477 lm!2023))))))

(declare-fun b!4682351 () Bool)

(declare-fun res!1973556 () Bool)

(assert (=> b!4682351 (=> (not res!1973556) (not e!2921320))))

(declare-fun allKeysSameHash!1632 (List!52411 (_ BitVec 64) Hashable!6175) Bool)

(assert (=> b!4682351 (= res!1973556 (allKeysSameHash!1632 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4682352 () Bool)

(assert (=> b!4682352 (= e!2921316 e!2921320)))

(declare-fun res!1973549 () Bool)

(assert (=> b!4682352 (=> (not res!1973549) (not e!2921320))))

(declare-fun contains!15414 (ListMap!4865 K!13665) Bool)

(assert (=> b!4682352 (= res!1973549 (contains!15414 lt!1842222 key!4653))))

(assert (=> b!4682352 (= lt!1842222 (extractMap!1832 (toList!5501 lm!2023)))))

(declare-fun b!4682353 () Bool)

(declare-fun res!1973548 () Bool)

(assert (=> b!4682353 (=> (not res!1973548) (not e!2921316))))

(assert (=> b!4682353 (= res!1973548 (allKeysSameHash!1632 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!472932 res!1973559) b!4682339))

(assert (= (and b!4682339 res!1973554) b!4682342))

(assert (= (and b!4682342 res!1973555) b!4682348))

(assert (= (and b!4682348 res!1973558) b!4682353))

(assert (= (and b!4682353 res!1973548) b!4682352))

(assert (= (and b!4682352 res!1973549) b!4682341))

(assert (= (and b!4682341 res!1973553) b!4682351))

(assert (= (and b!4682351 res!1973556) b!4682347))

(assert (= (and b!4682347 res!1973550) b!4682345))

(assert (= (and b!4682345 res!1973557) b!4682349))

(assert (= (and b!4682349 res!1973551) b!4682350))

(assert (= (and b!4682350 res!1973552) b!4682346))

(assert (= start!472932 b!4682344))

(assert (= (and start!472932 ((_ is Cons!52287) oldBucket!34)) b!4682343))

(assert (= (and start!472932 ((_ is Cons!52287) newBucket!218)) b!4682340))

(declare-fun m!5580795 () Bool)

(assert (=> b!4682350 m!5580795))

(declare-fun m!5580797 () Bool)

(assert (=> b!4682342 m!5580797))

(declare-fun m!5580799 () Bool)

(assert (=> b!4682348 m!5580799))

(declare-fun m!5580801 () Bool)

(assert (=> b!4682353 m!5580801))

(declare-fun m!5580803 () Bool)

(assert (=> b!4682351 m!5580803))

(declare-fun m!5580805 () Bool)

(assert (=> start!472932 m!5580805))

(declare-fun m!5580807 () Bool)

(assert (=> start!472932 m!5580807))

(declare-fun m!5580809 () Bool)

(assert (=> b!4682345 m!5580809))

(declare-fun m!5580811 () Bool)

(assert (=> b!4682341 m!5580811))

(declare-fun m!5580813 () Bool)

(assert (=> b!4682339 m!5580813))

(declare-fun m!5580815 () Bool)

(assert (=> b!4682352 m!5580815))

(declare-fun m!5580817 () Bool)

(assert (=> b!4682352 m!5580817))

(declare-fun m!5580819 () Bool)

(assert (=> b!4682346 m!5580819))

(assert (=> b!4682346 m!5580819))

(declare-fun m!5580821 () Bool)

(assert (=> b!4682346 m!5580821))

(declare-fun m!5580823 () Bool)

(assert (=> b!4682347 m!5580823))

(check-sat (not b!4682348) (not b!4682344) (not b!4682352) (not b!4682339) tp_is_empty!30519 (not start!472932) (not b!4682346) tp_is_empty!30517 (not b!4682340) (not b!4682342) (not b!4682345) (not b!4682347) (not b!4682351) (not b!4682343) (not b!4682341) (not b!4682350) (not b!4682353))
(check-sat)
