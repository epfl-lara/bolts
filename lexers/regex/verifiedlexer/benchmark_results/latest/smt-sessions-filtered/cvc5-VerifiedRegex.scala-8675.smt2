; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!462042 () Bool)

(assert start!462042)

(declare-fun b!4617307 () Bool)

(declare-fun res!1934797 () Bool)

(declare-fun e!2880099 () Bool)

(assert (=> b!4617307 (=> res!1934797 e!2880099)))

(declare-datatypes ((K!12778 0))(
  ( (K!12779 (val!18493 Int)) )
))
(declare-datatypes ((V!13024 0))(
  ( (V!13025 (val!18494 Int)) )
))
(declare-datatypes ((tuple2!52250 0))(
  ( (tuple2!52251 (_1!29419 K!12778) (_2!29419 V!13024)) )
))
(declare-datatypes ((List!51519 0))(
  ( (Nil!51395) (Cons!51395 (h!57415 tuple2!52250) (t!358531 List!51519)) )
))
(declare-datatypes ((tuple2!52252 0))(
  ( (tuple2!52253 (_1!29420 (_ BitVec 64)) (_2!29420 List!51519)) )
))
(declare-datatypes ((List!51520 0))(
  ( (Nil!51396) (Cons!51396 (h!57416 tuple2!52252) (t!358532 List!51520)) )
))
(declare-fun lt!1773209 () List!51520)

(declare-datatypes ((Hashable!5848 0))(
  ( (HashableExt!5847 (__x!31551 Int)) )
))
(declare-fun hashF!1389 () Hashable!5848)

(declare-datatypes ((ListLongMap!3457 0))(
  ( (ListLongMap!3458 (toList!4867 List!51520)) )
))
(declare-fun allKeysSameHashInMap!1494 (ListLongMap!3457 Hashable!5848) Bool)

(assert (=> b!4617307 (= res!1934797 (not (allKeysSameHashInMap!1494 (ListLongMap!3458 lt!1773209) hashF!1389)))))

(declare-fun res!1934793 () Bool)

(declare-fun e!2880102 () Bool)

(assert (=> start!462042 (=> (not res!1934793) (not e!2880102))))

(declare-fun oldBucket!40 () List!51519)

(declare-fun noDuplicateKeys!1451 (List!51519) Bool)

(assert (=> start!462042 (= res!1934793 (noDuplicateKeys!1451 oldBucket!40))))

(assert (=> start!462042 e!2880102))

(assert (=> start!462042 true))

(declare-fun e!2880103 () Bool)

(assert (=> start!462042 e!2880103))

(declare-fun tp_is_empty!29097 () Bool)

(assert (=> start!462042 tp_is_empty!29097))

(declare-fun e!2880100 () Bool)

(assert (=> start!462042 e!2880100))

(declare-fun b!4617308 () Bool)

(declare-fun e!2880104 () Bool)

(declare-datatypes ((ListMap!4171 0))(
  ( (ListMap!4172 (toList!4868 List!51519)) )
))
(declare-fun lt!1773208 () ListMap!4171)

(assert (=> b!4617308 (= e!2880104 (= lt!1773208 (ListMap!4172 Nil!51395)))))

(declare-fun b!4617309 () Bool)

(declare-fun e!2880101 () Bool)

(assert (=> b!4617309 (= e!2880101 (not e!2880099))))

(declare-fun res!1934795 () Bool)

(assert (=> b!4617309 (=> res!1934795 e!2880099)))

(declare-fun key!4968 () K!12778)

(assert (=> b!4617309 (= res!1934795 (or (and (is-Cons!51395 oldBucket!40) (= (_1!29419 (h!57415 oldBucket!40)) key!4968)) (not (is-Cons!51395 oldBucket!40)) (= (_1!29419 (h!57415 oldBucket!40)) key!4968)))))

(assert (=> b!4617309 e!2880104))

(declare-fun res!1934799 () Bool)

(assert (=> b!4617309 (=> (not res!1934799) (not e!2880104))))

(declare-fun lt!1773210 () ListMap!4171)

(declare-fun addToMapMapFromBucket!912 (List!51519 ListMap!4171) ListMap!4171)

(assert (=> b!4617309 (= res!1934799 (= lt!1773210 (addToMapMapFromBucket!912 oldBucket!40 lt!1773208)))))

(declare-fun extractMap!1507 (List!51520) ListMap!4171)

(assert (=> b!4617309 (= lt!1773208 (extractMap!1507 Nil!51396))))

(assert (=> b!4617309 true))

(declare-fun b!4617310 () Bool)

(declare-fun res!1934803 () Bool)

(assert (=> b!4617310 (=> (not res!1934803) (not e!2880102))))

(declare-fun newBucket!224 () List!51519)

(assert (=> b!4617310 (= res!1934803 (noDuplicateKeys!1451 newBucket!224))))

(declare-fun b!4617311 () Bool)

(declare-fun res!1934800 () Bool)

(assert (=> b!4617311 (=> (not res!1934800) (not e!2880101))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun hash!3412 (Hashable!5848 K!12778) (_ BitVec 64))

(assert (=> b!4617311 (= res!1934800 (= (hash!3412 hashF!1389 key!4968) hash!414))))

(declare-fun b!4617312 () Bool)

(declare-fun tp_is_empty!29099 () Bool)

(declare-fun tp!1341656 () Bool)

(assert (=> b!4617312 (= e!2880100 (and tp_is_empty!29097 tp_is_empty!29099 tp!1341656))))

(declare-fun b!4617313 () Bool)

(assert (=> b!4617313 (= e!2880102 e!2880101)))

(declare-fun res!1934798 () Bool)

(assert (=> b!4617313 (=> (not res!1934798) (not e!2880101))))

(declare-fun contains!14357 (ListMap!4171 K!12778) Bool)

(assert (=> b!4617313 (= res!1934798 (contains!14357 lt!1773210 key!4968))))

(assert (=> b!4617313 (= lt!1773210 (extractMap!1507 lt!1773209))))

(assert (=> b!4617313 (= lt!1773209 (Cons!51396 (tuple2!52253 hash!414 oldBucket!40) Nil!51396))))

(declare-fun b!4617314 () Bool)

(declare-fun tp!1341657 () Bool)

(assert (=> b!4617314 (= e!2880103 (and tp_is_empty!29097 tp_is_empty!29099 tp!1341657))))

(declare-fun b!4617315 () Bool)

(assert (=> b!4617315 (= e!2880099 true)))

(declare-fun b!4617316 () Bool)

(declare-fun res!1934794 () Bool)

(assert (=> b!4617316 (=> (not res!1934794) (not e!2880102))))

(declare-fun removePairForKey!1074 (List!51519 K!12778) List!51519)

(assert (=> b!4617316 (= res!1934794 (= (removePairForKey!1074 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617317 () Bool)

(declare-fun res!1934802 () Bool)

(assert (=> b!4617317 (=> (not res!1934802) (not e!2880101))))

(declare-fun allKeysSameHash!1305 (List!51519 (_ BitVec 64) Hashable!5848) Bool)

(assert (=> b!4617317 (= res!1934802 (allKeysSameHash!1305 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617318 () Bool)

(declare-fun res!1934796 () Bool)

(assert (=> b!4617318 (=> res!1934796 e!2880099)))

(declare-fun lambda!189851 () Int)

(declare-fun forall!10757 (List!51520 Int) Bool)

(assert (=> b!4617318 (= res!1934796 (not (forall!10757 lt!1773209 lambda!189851)))))

(declare-fun b!4617319 () Bool)

(declare-fun res!1934801 () Bool)

(assert (=> b!4617319 (=> (not res!1934801) (not e!2880102))))

(assert (=> b!4617319 (= res!1934801 (allKeysSameHash!1305 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!462042 res!1934793) b!4617310))

(assert (= (and b!4617310 res!1934803) b!4617316))

(assert (= (and b!4617316 res!1934794) b!4617319))

(assert (= (and b!4617319 res!1934801) b!4617313))

(assert (= (and b!4617313 res!1934798) b!4617311))

(assert (= (and b!4617311 res!1934800) b!4617317))

(assert (= (and b!4617317 res!1934802) b!4617309))

(assert (= (and b!4617309 res!1934799) b!4617308))

(assert (= (and b!4617309 (not res!1934795)) b!4617318))

(assert (= (and b!4617318 (not res!1934796)) b!4617307))

(assert (= (and b!4617307 (not res!1934797)) b!4617315))

(assert (= (and start!462042 (is-Cons!51395 oldBucket!40)) b!4617314))

(assert (= (and start!462042 (is-Cons!51395 newBucket!224)) b!4617312))

(declare-fun m!5452627 () Bool)

(assert (=> b!4617313 m!5452627))

(declare-fun m!5452629 () Bool)

(assert (=> b!4617313 m!5452629))

(declare-fun m!5452631 () Bool)

(assert (=> b!4617316 m!5452631))

(declare-fun m!5452633 () Bool)

(assert (=> b!4617310 m!5452633))

(declare-fun m!5452635 () Bool)

(assert (=> b!4617307 m!5452635))

(declare-fun m!5452637 () Bool)

(assert (=> b!4617318 m!5452637))

(declare-fun m!5452639 () Bool)

(assert (=> b!4617319 m!5452639))

(declare-fun m!5452641 () Bool)

(assert (=> start!462042 m!5452641))

(declare-fun m!5452643 () Bool)

(assert (=> b!4617317 m!5452643))

(declare-fun m!5452645 () Bool)

(assert (=> b!4617309 m!5452645))

(declare-fun m!5452647 () Bool)

(assert (=> b!4617309 m!5452647))

(declare-fun m!5452649 () Bool)

(assert (=> b!4617311 m!5452649))

(push 1)

(assert (not b!4617309))

(assert (not b!4617314))

(assert (not b!4617313))

(assert (not b!4617311))

(assert (not b!4617310))

(assert (not b!4617317))

(assert tp_is_empty!29097)

(assert (not b!4617319))

(assert (not b!4617307))

(assert (not b!4617316))

(assert (not b!4617312))

(assert tp_is_empty!29099)

(assert (not b!4617318))

(assert (not start!462042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

