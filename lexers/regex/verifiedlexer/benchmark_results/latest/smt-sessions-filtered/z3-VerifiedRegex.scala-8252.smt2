; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!428500 () Bool)

(assert start!428500)

(declare-fun b!4404244 () Bool)

(declare-fun res!1817031 () Bool)

(declare-fun e!2742415 () Bool)

(assert (=> b!4404244 (=> res!1817031 e!2742415)))

(declare-datatypes ((K!10665 0))(
  ( (K!10666 (val!16803 Int)) )
))
(declare-datatypes ((V!10911 0))(
  ( (V!10912 (val!16804 Int)) )
))
(declare-datatypes ((tuple2!48926 0))(
  ( (tuple2!48927 (_1!27757 K!10665) (_2!27757 V!10911)) )
))
(declare-datatypes ((List!49434 0))(
  ( (Nil!49310) (Cons!49310 (h!54943 tuple2!48926) (t!356368 List!49434)) )
))
(declare-fun newBucket!200 () List!49434)

(declare-fun noDuplicateKeys!639 (List!49434) Bool)

(assert (=> b!4404244 (= res!1817031 (not (noDuplicateKeys!639 newBucket!200)))))

(declare-fun b!4404245 () Bool)

(declare-fun e!2742410 () Bool)

(declare-datatypes ((tuple2!48928 0))(
  ( (tuple2!48929 (_1!27758 (_ BitVec 64)) (_2!27758 List!49434)) )
))
(declare-datatypes ((List!49435 0))(
  ( (Nil!49311) (Cons!49311 (h!54944 tuple2!48928) (t!356369 List!49435)) )
))
(declare-datatypes ((ListLongMap!1911 0))(
  ( (ListLongMap!1912 (toList!3261 List!49435)) )
))
(declare-fun lm!1707 () ListLongMap!1911)

(declare-fun key!3918 () K!10665)

(declare-fun containsKey!961 (List!49434 K!10665) Bool)

(assert (=> b!4404245 (= e!2742410 (not (containsKey!961 (_2!27758 (h!54944 (toList!3261 lm!1707))) key!3918)))))

(declare-fun b!4404246 () Bool)

(declare-fun res!1817033 () Bool)

(declare-fun e!2742418 () Bool)

(assert (=> b!4404246 (=> (not res!1817033) (not e!2742418))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11717 (ListLongMap!1911 (_ BitVec 64)) Bool)

(assert (=> b!4404246 (= res!1817033 (contains!11717 lm!1707 hash!377))))

(declare-fun b!4404247 () Bool)

(declare-fun res!1817022 () Bool)

(declare-fun e!2742413 () Bool)

(assert (=> b!4404247 (=> (not res!1817022) (not e!2742413))))

(declare-datatypes ((Hashable!5031 0))(
  ( (HashableExt!5030 (__x!30734 Int)) )
))
(declare-fun hashF!1247 () Hashable!5031)

(declare-fun allKeysSameHashInMap!743 (ListLongMap!1911 Hashable!5031) Bool)

(assert (=> b!4404247 (= res!1817022 (allKeysSameHashInMap!743 lm!1707 hashF!1247))))

(declare-fun b!4404249 () Bool)

(declare-fun e!2742417 () Bool)

(declare-fun tp!1331979 () Bool)

(assert (=> b!4404249 (= e!2742417 tp!1331979)))

(declare-fun b!4404250 () Bool)

(declare-fun e!2742416 () Bool)

(declare-fun e!2742414 () Bool)

(assert (=> b!4404250 (= e!2742416 e!2742414)))

(declare-fun res!1817024 () Bool)

(assert (=> b!4404250 (=> res!1817024 e!2742414)))

(declare-datatypes ((ListMap!2505 0))(
  ( (ListMap!2506 (toList!3262 List!49434)) )
))
(declare-fun lt!1608628 () ListMap!2505)

(declare-fun lt!1608624 () ListMap!2505)

(declare-fun eq!345 (ListMap!2505 ListMap!2505) Bool)

(assert (=> b!4404250 (= res!1817024 (not (eq!345 lt!1608628 lt!1608624)))))

(declare-fun lt!1608637 () ListMap!2505)

(declare-fun lt!1608626 () tuple2!48926)

(declare-fun addToMapMapFromBucket!305 (List!49434 ListMap!2505) ListMap!2505)

(declare-fun +!893 (ListMap!2505 tuple2!48926) ListMap!2505)

(assert (=> b!4404250 (eq!345 (addToMapMapFromBucket!305 (_2!27758 (h!54944 (toList!3261 lm!1707))) lt!1608637) (+!893 lt!1608628 lt!1608626))))

(declare-datatypes ((Unit!79247 0))(
  ( (Unit!79248) )
))
(declare-fun lt!1608632 () Unit!79247)

(declare-fun newValue!99 () V!10911)

(declare-fun lt!1608629 () ListMap!2505)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!144 (ListMap!2505 K!10665 V!10911 List!49434) Unit!79247)

(assert (=> b!4404250 (= lt!1608632 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!144 lt!1608629 key!3918 newValue!99 (_2!27758 (h!54944 (toList!3261 lm!1707)))))))

(assert (=> b!4404250 (= lt!1608624 lt!1608628)))

(assert (=> b!4404250 (= lt!1608628 (addToMapMapFromBucket!305 (_2!27758 (h!54944 (toList!3261 lm!1707))) lt!1608629))))

(declare-fun e!2742412 () Bool)

(assert (=> b!4404250 e!2742412))

(declare-fun res!1817025 () Bool)

(assert (=> b!4404250 (=> (not res!1817025) (not e!2742412))))

(declare-fun lt!1608623 () ListMap!2505)

(assert (=> b!4404250 (= res!1817025 (eq!345 lt!1608623 lt!1608637))))

(assert (=> b!4404250 (= lt!1608637 (+!893 lt!1608629 lt!1608626))))

(declare-fun lt!1608634 () ListLongMap!1911)

(declare-fun lt!1608630 () tuple2!48928)

(declare-fun extractMap!698 (List!49435) ListMap!2505)

(declare-fun +!894 (ListLongMap!1911 tuple2!48928) ListLongMap!1911)

(assert (=> b!4404250 (= lt!1608623 (extractMap!698 (toList!3261 (+!894 lt!1608634 lt!1608630))))))

(declare-fun lt!1608638 () Unit!79247)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!143 (ListLongMap!1911 (_ BitVec 64) List!49434 K!10665 V!10911 Hashable!5031) Unit!79247)

(assert (=> b!4404250 (= lt!1608638 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!143 lt!1608634 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11718 (ListMap!2505 K!10665) Bool)

(assert (=> b!4404250 (contains!11718 lt!1608629 key!3918)))

(assert (=> b!4404250 (= lt!1608629 (extractMap!698 (toList!3261 lt!1608634)))))

(declare-fun tail!7133 (ListLongMap!1911) ListLongMap!1911)

(assert (=> b!4404250 (= lt!1608634 (tail!7133 lm!1707))))

(declare-fun lt!1608640 () ListMap!2505)

(assert (=> b!4404250 (contains!11718 lt!1608640 key!3918)))

(declare-fun lt!1608627 () Unit!79247)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!98 (List!49434 K!10665 V!10911 ListMap!2505) Unit!79247)

(assert (=> b!4404250 (= lt!1608627 (lemmaAddToMapContainsAndNotInListThenInAcc!98 (_2!27758 (h!54944 (toList!3261 lm!1707))) key!3918 newValue!99 lt!1608640))))

(assert (=> b!4404250 (= lt!1608640 (extractMap!698 (t!356369 (toList!3261 lm!1707))))))

(assert (=> b!4404250 e!2742410))

(declare-fun res!1817023 () Bool)

(assert (=> b!4404250 (=> (not res!1817023) (not e!2742410))))

(declare-fun apply!11491 (ListLongMap!1911 (_ BitVec 64)) List!49434)

(assert (=> b!4404250 (= res!1817023 (not (containsKey!961 (apply!11491 lm!1707 (_1!27758 (h!54944 (toList!3261 lm!1707)))) key!3918)))))

(declare-fun lt!1608625 () Unit!79247)

(declare-fun lemmaNotSameHashThenCannotContainKey!110 (ListLongMap!1911 K!10665 (_ BitVec 64) Hashable!5031) Unit!79247)

(assert (=> b!4404250 (= lt!1608625 (lemmaNotSameHashThenCannotContainKey!110 lm!1707 key!3918 (_1!27758 (h!54944 (toList!3261 lm!1707))) hashF!1247))))

(declare-fun b!4404251 () Bool)

(assert (=> b!4404251 (= e!2742418 (not e!2742415))))

(declare-fun res!1817021 () Bool)

(assert (=> b!4404251 (=> res!1817021 e!2742415)))

(declare-fun lt!1608635 () List!49434)

(declare-fun removePairForKey!607 (List!49434 K!10665) List!49434)

(assert (=> b!4404251 (= res!1817021 (not (= newBucket!200 (Cons!49310 lt!1608626 (removePairForKey!607 lt!1608635 key!3918)))))))

(assert (=> b!4404251 (= lt!1608626 (tuple2!48927 key!3918 newValue!99))))

(declare-fun lt!1608631 () tuple2!48928)

(declare-fun lt!1608633 () Unit!79247)

(declare-fun lambda!149611 () Int)

(declare-fun forallContained!2025 (List!49435 Int tuple2!48928) Unit!79247)

(assert (=> b!4404251 (= lt!1608633 (forallContained!2025 (toList!3261 lm!1707) lambda!149611 lt!1608631))))

(declare-fun contains!11719 (List!49435 tuple2!48928) Bool)

(assert (=> b!4404251 (contains!11719 (toList!3261 lm!1707) lt!1608631)))

(assert (=> b!4404251 (= lt!1608631 (tuple2!48929 hash!377 lt!1608635))))

(declare-fun lt!1608622 () Unit!79247)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!484 (List!49435 (_ BitVec 64) List!49434) Unit!79247)

(assert (=> b!4404251 (= lt!1608622 (lemmaGetValueByKeyImpliesContainsTuple!484 (toList!3261 lm!1707) hash!377 lt!1608635))))

(assert (=> b!4404251 (= lt!1608635 (apply!11491 lm!1707 hash!377))))

(declare-fun b!4404252 () Bool)

(assert (=> b!4404252 (= e!2742415 e!2742416)))

(declare-fun res!1817032 () Bool)

(assert (=> b!4404252 (=> res!1817032 e!2742416)))

(get-info :version)

(assert (=> b!4404252 (= res!1817032 (or (and ((_ is Cons!49311) (toList!3261 lm!1707)) (= (_1!27758 (h!54944 (toList!3261 lm!1707))) hash!377)) (not ((_ is Cons!49311) (toList!3261 lm!1707))) (= (_1!27758 (h!54944 (toList!3261 lm!1707))) hash!377)))))

(declare-fun e!2742411 () Bool)

(assert (=> b!4404252 e!2742411))

(declare-fun res!1817026 () Bool)

(assert (=> b!4404252 (=> (not res!1817026) (not e!2742411))))

(declare-fun lt!1608636 () ListLongMap!1911)

(declare-fun forall!9390 (List!49435 Int) Bool)

(assert (=> b!4404252 (= res!1817026 (forall!9390 (toList!3261 lt!1608636) lambda!149611))))

(assert (=> b!4404252 (= lt!1608636 (+!894 lm!1707 lt!1608630))))

(assert (=> b!4404252 (= lt!1608630 (tuple2!48929 hash!377 newBucket!200))))

(declare-fun lt!1608639 () Unit!79247)

(declare-fun addValidProp!285 (ListLongMap!1911 Int (_ BitVec 64) List!49434) Unit!79247)

(assert (=> b!4404252 (= lt!1608639 (addValidProp!285 lm!1707 lambda!149611 hash!377 newBucket!200))))

(assert (=> b!4404252 (forall!9390 (toList!3261 lm!1707) lambda!149611)))

(declare-fun b!4404253 () Bool)

(assert (=> b!4404253 (= e!2742414 (eq!345 lt!1608624 lt!1608628))))

(declare-fun b!4404254 () Bool)

(assert (=> b!4404254 (= e!2742411 (forall!9390 (toList!3261 lt!1608636) lambda!149611))))

(declare-fun b!4404255 () Bool)

(declare-fun res!1817028 () Bool)

(assert (=> b!4404255 (=> (not res!1817028) (not e!2742413))))

(declare-fun hash!1911 (Hashable!5031 K!10665) (_ BitVec 64))

(assert (=> b!4404255 (= res!1817028 (= (hash!1911 hashF!1247 key!3918) hash!377))))

(declare-fun b!4404256 () Bool)

(declare-fun res!1817027 () Bool)

(assert (=> b!4404256 (=> (not res!1817027) (not e!2742413))))

(declare-fun allKeysSameHash!597 (List!49434 (_ BitVec 64) Hashable!5031) Bool)

(assert (=> b!4404256 (= res!1817027 (allKeysSameHash!597 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1817029 () Bool)

(assert (=> start!428500 (=> (not res!1817029) (not e!2742413))))

(assert (=> start!428500 (= res!1817029 (forall!9390 (toList!3261 lm!1707) lambda!149611))))

(assert (=> start!428500 e!2742413))

(declare-fun e!2742409 () Bool)

(assert (=> start!428500 e!2742409))

(assert (=> start!428500 true))

(declare-fun inv!64851 (ListLongMap!1911) Bool)

(assert (=> start!428500 (and (inv!64851 lm!1707) e!2742417)))

(declare-fun tp_is_empty!25793 () Bool)

(assert (=> start!428500 tp_is_empty!25793))

(declare-fun tp_is_empty!25795 () Bool)

(assert (=> start!428500 tp_is_empty!25795))

(declare-fun b!4404248 () Bool)

(assert (=> b!4404248 (= e!2742413 e!2742418)))

(declare-fun res!1817030 () Bool)

(assert (=> b!4404248 (=> (not res!1817030) (not e!2742418))))

(assert (=> b!4404248 (= res!1817030 (contains!11718 lt!1608624 key!3918))))

(assert (=> b!4404248 (= lt!1608624 (extractMap!698 (toList!3261 lm!1707)))))

(declare-fun b!4404257 () Bool)

(declare-fun head!9122 (ListLongMap!1911) tuple2!48928)

(assert (=> b!4404257 (= e!2742412 (not (= (head!9122 lm!1707) lt!1608630)))))

(declare-fun tp!1331980 () Bool)

(declare-fun b!4404258 () Bool)

(assert (=> b!4404258 (= e!2742409 (and tp_is_empty!25793 tp_is_empty!25795 tp!1331980))))

(assert (= (and start!428500 res!1817029) b!4404247))

(assert (= (and b!4404247 res!1817022) b!4404255))

(assert (= (and b!4404255 res!1817028) b!4404256))

(assert (= (and b!4404256 res!1817027) b!4404248))

(assert (= (and b!4404248 res!1817030) b!4404246))

(assert (= (and b!4404246 res!1817033) b!4404251))

(assert (= (and b!4404251 (not res!1817021)) b!4404244))

(assert (= (and b!4404244 (not res!1817031)) b!4404252))

(assert (= (and b!4404252 res!1817026) b!4404254))

(assert (= (and b!4404252 (not res!1817032)) b!4404250))

(assert (= (and b!4404250 res!1817023) b!4404245))

(assert (= (and b!4404250 res!1817025) b!4404257))

(assert (= (and b!4404250 (not res!1817024)) b!4404253))

(assert (= (and start!428500 ((_ is Cons!49310) newBucket!200)) b!4404258))

(assert (= start!428500 b!4404249))

(declare-fun m!5069473 () Bool)

(assert (=> b!4404245 m!5069473))

(declare-fun m!5069475 () Bool)

(assert (=> b!4404244 m!5069475))

(declare-fun m!5069477 () Bool)

(assert (=> b!4404252 m!5069477))

(declare-fun m!5069479 () Bool)

(assert (=> b!4404252 m!5069479))

(declare-fun m!5069481 () Bool)

(assert (=> b!4404252 m!5069481))

(declare-fun m!5069483 () Bool)

(assert (=> b!4404252 m!5069483))

(declare-fun m!5069485 () Bool)

(assert (=> b!4404250 m!5069485))

(declare-fun m!5069487 () Bool)

(assert (=> b!4404250 m!5069487))

(declare-fun m!5069489 () Bool)

(assert (=> b!4404250 m!5069489))

(declare-fun m!5069491 () Bool)

(assert (=> b!4404250 m!5069491))

(declare-fun m!5069493 () Bool)

(assert (=> b!4404250 m!5069493))

(declare-fun m!5069495 () Bool)

(assert (=> b!4404250 m!5069495))

(declare-fun m!5069497 () Bool)

(assert (=> b!4404250 m!5069497))

(declare-fun m!5069499 () Bool)

(assert (=> b!4404250 m!5069499))

(declare-fun m!5069501 () Bool)

(assert (=> b!4404250 m!5069501))

(declare-fun m!5069503 () Bool)

(assert (=> b!4404250 m!5069503))

(declare-fun m!5069505 () Bool)

(assert (=> b!4404250 m!5069505))

(declare-fun m!5069507 () Bool)

(assert (=> b!4404250 m!5069507))

(declare-fun m!5069509 () Bool)

(assert (=> b!4404250 m!5069509))

(declare-fun m!5069511 () Bool)

(assert (=> b!4404250 m!5069511))

(declare-fun m!5069513 () Bool)

(assert (=> b!4404250 m!5069513))

(declare-fun m!5069515 () Bool)

(assert (=> b!4404250 m!5069515))

(declare-fun m!5069517 () Bool)

(assert (=> b!4404250 m!5069517))

(assert (=> b!4404250 m!5069517))

(declare-fun m!5069519 () Bool)

(assert (=> b!4404250 m!5069519))

(declare-fun m!5069521 () Bool)

(assert (=> b!4404250 m!5069521))

(assert (=> b!4404250 m!5069513))

(assert (=> b!4404250 m!5069511))

(declare-fun m!5069523 () Bool)

(assert (=> b!4404250 m!5069523))

(declare-fun m!5069525 () Bool)

(assert (=> b!4404247 m!5069525))

(declare-fun m!5069527 () Bool)

(assert (=> b!4404255 m!5069527))

(assert (=> b!4404254 m!5069477))

(declare-fun m!5069529 () Bool)

(assert (=> b!4404257 m!5069529))

(declare-fun m!5069531 () Bool)

(assert (=> b!4404251 m!5069531))

(declare-fun m!5069533 () Bool)

(assert (=> b!4404251 m!5069533))

(declare-fun m!5069535 () Bool)

(assert (=> b!4404251 m!5069535))

(declare-fun m!5069537 () Bool)

(assert (=> b!4404251 m!5069537))

(declare-fun m!5069539 () Bool)

(assert (=> b!4404251 m!5069539))

(declare-fun m!5069541 () Bool)

(assert (=> b!4404253 m!5069541))

(assert (=> start!428500 m!5069483))

(declare-fun m!5069543 () Bool)

(assert (=> start!428500 m!5069543))

(declare-fun m!5069545 () Bool)

(assert (=> b!4404246 m!5069545))

(declare-fun m!5069547 () Bool)

(assert (=> b!4404248 m!5069547))

(declare-fun m!5069549 () Bool)

(assert (=> b!4404248 m!5069549))

(declare-fun m!5069551 () Bool)

(assert (=> b!4404256 m!5069551))

(check-sat (not b!4404256) (not b!4404257) (not b!4404252) (not b!4404246) (not b!4404253) (not b!4404249) (not b!4404244) (not start!428500) tp_is_empty!25795 tp_is_empty!25793 (not b!4404258) (not b!4404247) (not b!4404245) (not b!4404248) (not b!4404254) (not b!4404255) (not b!4404250) (not b!4404251))
(check-sat)
