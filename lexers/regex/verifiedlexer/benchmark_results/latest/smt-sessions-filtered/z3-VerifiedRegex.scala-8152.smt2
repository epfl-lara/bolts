; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419584 () Bool)

(assert start!419584)

(declare-fun b!4346387 () Bool)

(declare-fun res!1784737 () Bool)

(declare-fun e!2704699 () Bool)

(assert (=> b!4346387 (=> (not res!1784737) (not e!2704699))))

(declare-datatypes ((V!10411 0))(
  ( (V!10412 (val!16403 Int)) )
))
(declare-datatypes ((K!10165 0))(
  ( (K!10166 (val!16404 Int)) )
))
(declare-datatypes ((tuple2!48126 0))(
  ( (tuple2!48127 (_1!27357 K!10165) (_2!27357 V!10411)) )
))
(declare-datatypes ((List!48929 0))(
  ( (Nil!48805) (Cons!48805 (h!54330 tuple2!48126) (t!355849 List!48929)) )
))
(declare-datatypes ((tuple2!48128 0))(
  ( (tuple2!48129 (_1!27358 (_ BitVec 64)) (_2!27358 List!48929)) )
))
(declare-datatypes ((List!48930 0))(
  ( (Nil!48806) (Cons!48806 (h!54331 tuple2!48128) (t!355850 List!48930)) )
))
(declare-datatypes ((ListLongMap!1511 0))(
  ( (ListLongMap!1512 (toList!2861 List!48930)) )
))
(declare-fun lm!1707 () ListLongMap!1511)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10942 (ListLongMap!1511 (_ BitVec 64)) Bool)

(assert (=> b!4346387 (= res!1784737 (contains!10942 lm!1707 hash!377))))

(declare-fun b!4346388 () Bool)

(declare-fun e!2704693 () Bool)

(declare-fun e!2704696 () Bool)

(assert (=> b!4346388 (= e!2704693 e!2704696)))

(declare-fun res!1784730 () Bool)

(assert (=> b!4346388 (=> res!1784730 e!2704696)))

(declare-fun lt!1560851 () Bool)

(assert (=> b!4346388 (= res!1784730 lt!1560851)))

(declare-fun e!2704695 () Bool)

(assert (=> b!4346388 e!2704695))

(declare-fun res!1784743 () Bool)

(assert (=> b!4346388 (=> (not res!1784743) (not e!2704695))))

(declare-datatypes ((ListMap!2105 0))(
  ( (ListMap!2106 (toList!2862 List!48929)) )
))
(declare-fun lt!1560861 () ListMap!2105)

(declare-fun key!3918 () K!10165)

(declare-fun contains!10943 (ListMap!2105 K!10165) Bool)

(assert (=> b!4346388 (= res!1784743 (= lt!1560851 (contains!10943 lt!1560861 key!3918)))))

(declare-fun lt!1560857 () ListMap!2105)

(assert (=> b!4346388 (= lt!1560851 (contains!10943 lt!1560857 key!3918))))

(declare-datatypes ((Unit!70623 0))(
  ( (Unit!70624) )
))
(declare-fun lt!1560868 () Unit!70623)

(declare-fun lemmaEquivalentThenSameContains!90 (ListMap!2105 ListMap!2105 K!10165) Unit!70623)

(assert (=> b!4346388 (= lt!1560868 (lemmaEquivalentThenSameContains!90 lt!1560857 lt!1560861 key!3918))))

(declare-fun eq!229 (ListMap!2105 ListMap!2105) Bool)

(assert (=> b!4346388 (eq!229 lt!1560857 lt!1560861)))

(declare-fun lt!1560871 () ListMap!2105)

(declare-fun -!240 (ListMap!2105 K!10165) ListMap!2105)

(assert (=> b!4346388 (= lt!1560861 (-!240 lt!1560871 key!3918))))

(declare-fun lt!1560869 () Unit!70623)

(declare-fun lt!1560864 () List!48929)

(declare-datatypes ((Hashable!4831 0))(
  ( (HashableExt!4830 (__x!30534 Int)) )
))
(declare-fun hashF!1247 () Hashable!4831)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!55 (ListLongMap!1511 (_ BitVec 64) List!48929 K!10165 Hashable!4831) Unit!70623)

(assert (=> b!4346388 (= lt!1560869 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!55 lm!1707 hash!377 lt!1560864 key!3918 hashF!1247))))

(declare-fun lt!1560852 () ListMap!2105)

(assert (=> b!4346388 (= lt!1560852 lt!1560857)))

(declare-fun lt!1560866 () ListLongMap!1511)

(declare-fun extractMap!498 (List!48930) ListMap!2105)

(assert (=> b!4346388 (= lt!1560857 (extractMap!498 (toList!2861 lt!1560866)))))

(declare-fun lt!1560862 () List!48929)

(assert (=> b!4346388 (= lt!1560864 lt!1560862)))

(declare-fun +!549 (ListLongMap!1511 tuple2!48128) ListLongMap!1511)

(assert (=> b!4346388 (= lt!1560866 (+!549 lm!1707 (tuple2!48129 hash!377 lt!1560864)))))

(declare-fun newBucket!200 () List!48929)

(declare-fun tail!6937 (List!48929) List!48929)

(assert (=> b!4346388 (= lt!1560864 (tail!6937 newBucket!200))))

(declare-fun e!2704700 () Bool)

(assert (=> b!4346388 e!2704700))

(declare-fun res!1784742 () Bool)

(assert (=> b!4346388 (=> (not res!1784742) (not e!2704700))))

(declare-fun lt!1560870 () ListMap!2105)

(declare-fun lt!1560847 () ListMap!2105)

(assert (=> b!4346388 (= res!1784742 (eq!229 lt!1560870 lt!1560847))))

(declare-fun lt!1560867 () tuple2!48126)

(declare-fun +!550 (ListMap!2105 tuple2!48126) ListMap!2105)

(assert (=> b!4346388 (= lt!1560847 (+!550 lt!1560852 lt!1560867))))

(declare-fun lt!1560859 () ListMap!2105)

(declare-fun addToMapMapFromBucket!147 (List!48929 ListMap!2105) ListMap!2105)

(assert (=> b!4346388 (= lt!1560852 (addToMapMapFromBucket!147 lt!1560862 lt!1560859))))

(declare-fun lt!1560854 () Unit!70623)

(declare-fun newValue!99 () V!10411)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!58 (ListMap!2105 K!10165 V!10411 List!48929) Unit!70623)

(assert (=> b!4346388 (= lt!1560854 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!58 lt!1560859 key!3918 newValue!99 lt!1560862))))

(declare-fun lt!1560860 () ListMap!2105)

(assert (=> b!4346388 (= lt!1560860 lt!1560870)))

(assert (=> b!4346388 (= lt!1560870 (addToMapMapFromBucket!147 lt!1560862 (+!550 lt!1560859 lt!1560867)))))

(declare-fun lt!1560872 () ListMap!2105)

(assert (=> b!4346388 (= lt!1560872 lt!1560860)))

(declare-fun lt!1560849 () List!48929)

(assert (=> b!4346388 (= lt!1560860 (addToMapMapFromBucket!147 lt!1560849 lt!1560859))))

(assert (=> b!4346388 (= lt!1560872 (addToMapMapFromBucket!147 newBucket!200 lt!1560859))))

(declare-fun lt!1560855 () ListLongMap!1511)

(assert (=> b!4346388 (= lt!1560872 (extractMap!498 (toList!2861 lt!1560855)))))

(assert (=> b!4346388 (= lt!1560859 (extractMap!498 (t!355850 (toList!2861 lm!1707))))))

(declare-fun res!1784733 () Bool)

(declare-fun e!2704702 () Bool)

(assert (=> start!419584 (=> (not res!1784733) (not e!2704702))))

(declare-fun lambda!138341 () Int)

(declare-fun forall!9033 (List!48930 Int) Bool)

(assert (=> start!419584 (= res!1784733 (forall!9033 (toList!2861 lm!1707) lambda!138341))))

(assert (=> start!419584 e!2704702))

(declare-fun e!2704694 () Bool)

(assert (=> start!419584 e!2704694))

(assert (=> start!419584 true))

(declare-fun e!2704698 () Bool)

(declare-fun inv!64351 (ListLongMap!1511) Bool)

(assert (=> start!419584 (and (inv!64351 lm!1707) e!2704698)))

(declare-fun tp_is_empty!24993 () Bool)

(assert (=> start!419584 tp_is_empty!24993))

(declare-fun tp_is_empty!24995 () Bool)

(assert (=> start!419584 tp_is_empty!24995))

(declare-fun b!4346389 () Bool)

(declare-fun e!2704701 () Bool)

(assert (=> b!4346389 (= e!2704701 e!2704693)))

(declare-fun res!1784740 () Bool)

(assert (=> b!4346389 (=> res!1784740 e!2704693)))

(get-info :version)

(assert (=> b!4346389 (= res!1784740 (or (not ((_ is Cons!48806) (toList!2861 lm!1707))) (not (= (_1!27358 (h!54331 (toList!2861 lm!1707))) hash!377))))))

(declare-fun e!2704697 () Bool)

(assert (=> b!4346389 e!2704697))

(declare-fun res!1784739 () Bool)

(assert (=> b!4346389 (=> (not res!1784739) (not e!2704697))))

(assert (=> b!4346389 (= res!1784739 (forall!9033 (toList!2861 lt!1560855) lambda!138341))))

(declare-fun lt!1560858 () tuple2!48128)

(assert (=> b!4346389 (= lt!1560855 (+!549 lm!1707 lt!1560858))))

(assert (=> b!4346389 (= lt!1560858 (tuple2!48129 hash!377 newBucket!200))))

(declare-fun lt!1560848 () Unit!70623)

(declare-fun addValidProp!93 (ListLongMap!1511 Int (_ BitVec 64) List!48929) Unit!70623)

(assert (=> b!4346389 (= lt!1560848 (addValidProp!93 lm!1707 lambda!138341 hash!377 newBucket!200))))

(assert (=> b!4346389 (forall!9033 (toList!2861 lm!1707) lambda!138341)))

(declare-fun b!4346390 () Bool)

(declare-fun res!1784732 () Bool)

(assert (=> b!4346390 (=> (not res!1784732) (not e!2704697))))

(assert (=> b!4346390 (= res!1784732 (forall!9033 (toList!2861 lt!1560855) lambda!138341))))

(declare-fun b!4346391 () Bool)

(declare-fun apply!11291 (ListLongMap!1511 (_ BitVec 64)) List!48929)

(assert (=> b!4346391 (= e!2704695 (= (apply!11291 lt!1560866 hash!377) lt!1560864))))

(declare-fun b!4346392 () Bool)

(declare-fun tp!1329549 () Bool)

(assert (=> b!4346392 (= e!2704698 tp!1329549)))

(declare-fun b!4346393 () Bool)

(assert (=> b!4346393 (= e!2704697 (or (not ((_ is Cons!48806) (toList!2861 lm!1707))) (not (= (_1!27358 (h!54331 (toList!2861 lm!1707))) hash!377)) (= lt!1560855 (ListLongMap!1512 (Cons!48806 lt!1560858 (t!355850 (toList!2861 lm!1707)))))))))

(declare-fun b!4346394 () Bool)

(assert (=> b!4346394 (= e!2704696 (forall!9033 (toList!2861 lt!1560866) lambda!138341))))

(assert (=> b!4346394 (eq!229 (extractMap!498 (toList!2861 (+!549 lt!1560866 lt!1560858))) (+!550 lt!1560857 lt!1560867))))

(declare-fun lt!1560850 () Unit!70623)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!79 (ListLongMap!1511 (_ BitVec 64) List!48929 K!10165 V!10411 Hashable!4831) Unit!70623)

(assert (=> b!4346394 (= lt!1560850 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!79 lt!1560866 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4346395 () Bool)

(assert (=> b!4346395 (= e!2704700 (eq!229 lt!1560860 lt!1560847))))

(declare-fun b!4346396 () Bool)

(declare-fun res!1784736 () Bool)

(assert (=> b!4346396 (=> (not res!1784736) (not e!2704702))))

(declare-fun allKeysSameHash!397 (List!48929 (_ BitVec 64) Hashable!4831) Bool)

(assert (=> b!4346396 (= res!1784736 (allKeysSameHash!397 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4346397 () Bool)

(declare-fun tp!1329550 () Bool)

(assert (=> b!4346397 (= e!2704694 (and tp_is_empty!24993 tp_is_empty!24995 tp!1329550))))

(declare-fun b!4346398 () Bool)

(assert (=> b!4346398 (= e!2704699 (not e!2704701))))

(declare-fun res!1784735 () Bool)

(assert (=> b!4346398 (=> res!1784735 e!2704701)))

(assert (=> b!4346398 (= res!1784735 (not (= newBucket!200 lt!1560849)))))

(assert (=> b!4346398 (= lt!1560849 (Cons!48805 lt!1560867 lt!1560862))))

(declare-fun lt!1560865 () List!48929)

(declare-fun removePairForKey!409 (List!48929 K!10165) List!48929)

(assert (=> b!4346398 (= lt!1560862 (removePairForKey!409 lt!1560865 key!3918))))

(assert (=> b!4346398 (= lt!1560867 (tuple2!48127 key!3918 newValue!99))))

(declare-fun lt!1560856 () Unit!70623)

(declare-fun lt!1560853 () tuple2!48128)

(declare-fun forallContained!1683 (List!48930 Int tuple2!48128) Unit!70623)

(assert (=> b!4346398 (= lt!1560856 (forallContained!1683 (toList!2861 lm!1707) lambda!138341 lt!1560853))))

(declare-fun contains!10944 (List!48930 tuple2!48128) Bool)

(assert (=> b!4346398 (contains!10944 (toList!2861 lm!1707) lt!1560853)))

(assert (=> b!4346398 (= lt!1560853 (tuple2!48129 hash!377 lt!1560865))))

(declare-fun lt!1560863 () Unit!70623)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!286 (List!48930 (_ BitVec 64) List!48929) Unit!70623)

(assert (=> b!4346398 (= lt!1560863 (lemmaGetValueByKeyImpliesContainsTuple!286 (toList!2861 lm!1707) hash!377 lt!1560865))))

(assert (=> b!4346398 (= lt!1560865 (apply!11291 lm!1707 hash!377))))

(declare-fun b!4346399 () Bool)

(declare-fun res!1784738 () Bool)

(assert (=> b!4346399 (=> (not res!1784738) (not e!2704702))))

(declare-fun allKeysSameHashInMap!543 (ListLongMap!1511 Hashable!4831) Bool)

(assert (=> b!4346399 (= res!1784738 (allKeysSameHashInMap!543 lm!1707 hashF!1247))))

(declare-fun b!4346400 () Bool)

(assert (=> b!4346400 (= e!2704702 e!2704699)))

(declare-fun res!1784731 () Bool)

(assert (=> b!4346400 (=> (not res!1784731) (not e!2704699))))

(assert (=> b!4346400 (= res!1784731 (contains!10943 lt!1560871 key!3918))))

(assert (=> b!4346400 (= lt!1560871 (extractMap!498 (toList!2861 lm!1707)))))

(declare-fun b!4346401 () Bool)

(declare-fun res!1784741 () Bool)

(assert (=> b!4346401 (=> res!1784741 e!2704701)))

(declare-fun noDuplicateKeys!439 (List!48929) Bool)

(assert (=> b!4346401 (= res!1784741 (not (noDuplicateKeys!439 newBucket!200)))))

(declare-fun b!4346402 () Bool)

(declare-fun res!1784734 () Bool)

(assert (=> b!4346402 (=> (not res!1784734) (not e!2704702))))

(declare-fun hash!1420 (Hashable!4831 K!10165) (_ BitVec 64))

(assert (=> b!4346402 (= res!1784734 (= (hash!1420 hashF!1247 key!3918) hash!377))))

(assert (= (and start!419584 res!1784733) b!4346399))

(assert (= (and b!4346399 res!1784738) b!4346402))

(assert (= (and b!4346402 res!1784734) b!4346396))

(assert (= (and b!4346396 res!1784736) b!4346400))

(assert (= (and b!4346400 res!1784731) b!4346387))

(assert (= (and b!4346387 res!1784737) b!4346398))

(assert (= (and b!4346398 (not res!1784735)) b!4346401))

(assert (= (and b!4346401 (not res!1784741)) b!4346389))

(assert (= (and b!4346389 res!1784739) b!4346390))

(assert (= (and b!4346390 res!1784732) b!4346393))

(assert (= (and b!4346389 (not res!1784740)) b!4346388))

(assert (= (and b!4346388 res!1784742) b!4346395))

(assert (= (and b!4346388 res!1784743) b!4346391))

(assert (= (and b!4346388 (not res!1784730)) b!4346394))

(assert (= (and start!419584 ((_ is Cons!48805) newBucket!200)) b!4346397))

(assert (= start!419584 b!4346392))

(declare-fun m!4954471 () Bool)

(assert (=> b!4346390 m!4954471))

(declare-fun m!4954473 () Bool)

(assert (=> b!4346402 m!4954473))

(declare-fun m!4954475 () Bool)

(assert (=> b!4346388 m!4954475))

(declare-fun m!4954477 () Bool)

(assert (=> b!4346388 m!4954477))

(declare-fun m!4954479 () Bool)

(assert (=> b!4346388 m!4954479))

(declare-fun m!4954481 () Bool)

(assert (=> b!4346388 m!4954481))

(declare-fun m!4954483 () Bool)

(assert (=> b!4346388 m!4954483))

(declare-fun m!4954485 () Bool)

(assert (=> b!4346388 m!4954485))

(declare-fun m!4954487 () Bool)

(assert (=> b!4346388 m!4954487))

(declare-fun m!4954489 () Bool)

(assert (=> b!4346388 m!4954489))

(declare-fun m!4954491 () Bool)

(assert (=> b!4346388 m!4954491))

(declare-fun m!4954493 () Bool)

(assert (=> b!4346388 m!4954493))

(declare-fun m!4954495 () Bool)

(assert (=> b!4346388 m!4954495))

(declare-fun m!4954497 () Bool)

(assert (=> b!4346388 m!4954497))

(declare-fun m!4954499 () Bool)

(assert (=> b!4346388 m!4954499))

(declare-fun m!4954501 () Bool)

(assert (=> b!4346388 m!4954501))

(declare-fun m!4954503 () Bool)

(assert (=> b!4346388 m!4954503))

(declare-fun m!4954505 () Bool)

(assert (=> b!4346388 m!4954505))

(declare-fun m!4954507 () Bool)

(assert (=> b!4346388 m!4954507))

(declare-fun m!4954509 () Bool)

(assert (=> b!4346388 m!4954509))

(assert (=> b!4346388 m!4954483))

(declare-fun m!4954511 () Bool)

(assert (=> b!4346388 m!4954511))

(declare-fun m!4954513 () Bool)

(assert (=> b!4346396 m!4954513))

(declare-fun m!4954515 () Bool)

(assert (=> b!4346387 m!4954515))

(declare-fun m!4954517 () Bool)

(assert (=> b!4346395 m!4954517))

(declare-fun m!4954519 () Bool)

(assert (=> b!4346400 m!4954519))

(declare-fun m!4954521 () Bool)

(assert (=> b!4346400 m!4954521))

(assert (=> b!4346389 m!4954471))

(declare-fun m!4954523 () Bool)

(assert (=> b!4346389 m!4954523))

(declare-fun m!4954525 () Bool)

(assert (=> b!4346389 m!4954525))

(declare-fun m!4954527 () Bool)

(assert (=> b!4346389 m!4954527))

(declare-fun m!4954529 () Bool)

(assert (=> b!4346398 m!4954529))

(declare-fun m!4954531 () Bool)

(assert (=> b!4346398 m!4954531))

(declare-fun m!4954533 () Bool)

(assert (=> b!4346398 m!4954533))

(declare-fun m!4954535 () Bool)

(assert (=> b!4346398 m!4954535))

(declare-fun m!4954537 () Bool)

(assert (=> b!4346398 m!4954537))

(declare-fun m!4954539 () Bool)

(assert (=> b!4346391 m!4954539))

(declare-fun m!4954541 () Bool)

(assert (=> b!4346401 m!4954541))

(declare-fun m!4954543 () Bool)

(assert (=> b!4346394 m!4954543))

(declare-fun m!4954545 () Bool)

(assert (=> b!4346394 m!4954545))

(declare-fun m!4954547 () Bool)

(assert (=> b!4346394 m!4954547))

(declare-fun m!4954549 () Bool)

(assert (=> b!4346394 m!4954549))

(assert (=> b!4346394 m!4954547))

(declare-fun m!4954551 () Bool)

(assert (=> b!4346394 m!4954551))

(assert (=> b!4346394 m!4954549))

(declare-fun m!4954553 () Bool)

(assert (=> b!4346394 m!4954553))

(declare-fun m!4954555 () Bool)

(assert (=> b!4346399 m!4954555))

(assert (=> start!419584 m!4954527))

(declare-fun m!4954557 () Bool)

(assert (=> start!419584 m!4954557))

(check-sat (not b!4346402) (not b!4346390) (not b!4346398) (not b!4346391) (not b!4346400) (not b!4346389) (not b!4346399) (not b!4346387) (not b!4346388) (not b!4346397) (not b!4346395) (not b!4346396) (not b!4346394) tp_is_empty!24995 (not b!4346401) (not b!4346392) tp_is_empty!24993 (not start!419584))
(check-sat)
(get-model)

(declare-fun d!1283389 () Bool)

(assert (=> d!1283389 true))

(assert (=> d!1283389 true))

(declare-fun lambda!138344 () Int)

(declare-fun forall!9035 (List!48929 Int) Bool)

(assert (=> d!1283389 (= (allKeysSameHash!397 newBucket!200 hash!377 hashF!1247) (forall!9035 newBucket!200 lambda!138344))))

(declare-fun bs!627808 () Bool)

(assert (= bs!627808 d!1283389))

(declare-fun m!4954563 () Bool)

(assert (=> bs!627808 m!4954563))

(assert (=> b!4346396 d!1283389))

(declare-fun d!1283391 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7661 (List!48929) (InoxSet tuple2!48126))

(assert (=> d!1283391 (= (eq!229 lt!1560860 lt!1560847) (= (content!7661 (toList!2862 lt!1560860)) (content!7661 (toList!2862 lt!1560847))))))

(declare-fun bs!627811 () Bool)

(assert (= bs!627811 d!1283391))

(declare-fun m!4954575 () Bool)

(assert (=> bs!627811 m!4954575))

(declare-fun m!4954577 () Bool)

(assert (=> bs!627811 m!4954577))

(assert (=> b!4346395 d!1283391))

(declare-fun d!1283395 () Bool)

(assert (=> d!1283395 (= (contains!10943 lt!1560857 key!3918) (contains!10943 lt!1560861 key!3918))))

(declare-fun lt!1560880 () Unit!70623)

(declare-fun choose!26676 (ListMap!2105 ListMap!2105 K!10165) Unit!70623)

(assert (=> d!1283395 (= lt!1560880 (choose!26676 lt!1560857 lt!1560861 key!3918))))

(assert (=> d!1283395 (eq!229 lt!1560857 lt!1560861)))

(assert (=> d!1283395 (= (lemmaEquivalentThenSameContains!90 lt!1560857 lt!1560861 key!3918) lt!1560880)))

(declare-fun bs!627814 () Bool)

(assert (= bs!627814 d!1283395))

(assert (=> bs!627814 m!4954503))

(assert (=> bs!627814 m!4954479))

(declare-fun m!4954579 () Bool)

(assert (=> bs!627814 m!4954579))

(assert (=> bs!627814 m!4954507))

(assert (=> b!4346388 d!1283395))

(declare-fun d!1283397 () Bool)

(declare-fun e!2704726 () Bool)

(assert (=> d!1283397 e!2704726))

(declare-fun res!1784761 () Bool)

(assert (=> d!1283397 (=> (not res!1784761) (not e!2704726))))

(declare-fun lt!1560909 () ListLongMap!1511)

(assert (=> d!1283397 (= res!1784761 (contains!10942 lt!1560909 (_1!27358 (tuple2!48129 hash!377 lt!1560864))))))

(declare-fun lt!1560908 () List!48930)

(assert (=> d!1283397 (= lt!1560909 (ListLongMap!1512 lt!1560908))))

(declare-fun lt!1560906 () Unit!70623)

(declare-fun lt!1560907 () Unit!70623)

(assert (=> d!1283397 (= lt!1560906 lt!1560907)))

(declare-datatypes ((Option!10415 0))(
  ( (None!10414) (Some!10414 (v!43208 List!48929)) )
))
(declare-fun getValueByKey!401 (List!48930 (_ BitVec 64)) Option!10415)

(assert (=> d!1283397 (= (getValueByKey!401 lt!1560908 (_1!27358 (tuple2!48129 hash!377 lt!1560864))) (Some!10414 (_2!27358 (tuple2!48129 hash!377 lt!1560864))))))

(declare-fun lemmaContainsTupThenGetReturnValue!184 (List!48930 (_ BitVec 64) List!48929) Unit!70623)

(assert (=> d!1283397 (= lt!1560907 (lemmaContainsTupThenGetReturnValue!184 lt!1560908 (_1!27358 (tuple2!48129 hash!377 lt!1560864)) (_2!27358 (tuple2!48129 hash!377 lt!1560864))))))

(declare-fun insertStrictlySorted!108 (List!48930 (_ BitVec 64) List!48929) List!48930)

(assert (=> d!1283397 (= lt!1560908 (insertStrictlySorted!108 (toList!2861 lm!1707) (_1!27358 (tuple2!48129 hash!377 lt!1560864)) (_2!27358 (tuple2!48129 hash!377 lt!1560864))))))

(assert (=> d!1283397 (= (+!549 lm!1707 (tuple2!48129 hash!377 lt!1560864)) lt!1560909)))

(declare-fun b!4346441 () Bool)

(declare-fun res!1784760 () Bool)

(assert (=> b!4346441 (=> (not res!1784760) (not e!2704726))))

(assert (=> b!4346441 (= res!1784760 (= (getValueByKey!401 (toList!2861 lt!1560909) (_1!27358 (tuple2!48129 hash!377 lt!1560864))) (Some!10414 (_2!27358 (tuple2!48129 hash!377 lt!1560864)))))))

(declare-fun b!4346442 () Bool)

(assert (=> b!4346442 (= e!2704726 (contains!10944 (toList!2861 lt!1560909) (tuple2!48129 hash!377 lt!1560864)))))

(assert (= (and d!1283397 res!1784761) b!4346441))

(assert (= (and b!4346441 res!1784760) b!4346442))

(declare-fun m!4954589 () Bool)

(assert (=> d!1283397 m!4954589))

(declare-fun m!4954591 () Bool)

(assert (=> d!1283397 m!4954591))

(declare-fun m!4954593 () Bool)

(assert (=> d!1283397 m!4954593))

(declare-fun m!4954599 () Bool)

(assert (=> d!1283397 m!4954599))

(declare-fun m!4954607 () Bool)

(assert (=> b!4346441 m!4954607))

(declare-fun m!4954615 () Bool)

(assert (=> b!4346442 m!4954615))

(assert (=> b!4346388 d!1283397))

(declare-fun b!4346470 () Bool)

(assert (=> b!4346470 false))

(declare-fun lt!1560943 () Unit!70623)

(declare-fun lt!1560939 () Unit!70623)

(assert (=> b!4346470 (= lt!1560943 lt!1560939)))

(declare-fun containsKey!605 (List!48929 K!10165) Bool)

(assert (=> b!4346470 (containsKey!605 (toList!2862 lt!1560861) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!98 (List!48929 K!10165) Unit!70623)

(assert (=> b!4346470 (= lt!1560939 (lemmaInGetKeysListThenContainsKey!98 (toList!2862 lt!1560861) key!3918))))

(declare-fun e!2704750 () Unit!70623)

(declare-fun Unit!70650 () Unit!70623)

(assert (=> b!4346470 (= e!2704750 Unit!70650)))

(declare-fun b!4346472 () Bool)

(declare-datatypes ((List!48932 0))(
  ( (Nil!48808) (Cons!48808 (h!54335 K!10165) (t!355852 List!48932)) )
))
(declare-fun e!2704746 () List!48932)

(declare-fun keys!16452 (ListMap!2105) List!48932)

(assert (=> b!4346472 (= e!2704746 (keys!16452 lt!1560861))))

(declare-fun b!4346473 () Bool)

(declare-fun e!2704748 () Bool)

(declare-fun contains!10947 (List!48932 K!10165) Bool)

(assert (=> b!4346473 (= e!2704748 (contains!10947 (keys!16452 lt!1560861) key!3918))))

(declare-fun b!4346474 () Bool)

(declare-fun Unit!70652 () Unit!70623)

(assert (=> b!4346474 (= e!2704750 Unit!70652)))

(declare-fun b!4346475 () Bool)

(declare-fun e!2704747 () Bool)

(assert (=> b!4346475 (= e!2704747 e!2704748)))

(declare-fun res!1784771 () Bool)

(assert (=> b!4346475 (=> (not res!1784771) (not e!2704748))))

(declare-datatypes ((Option!10416 0))(
  ( (None!10415) (Some!10415 (v!43209 V!10411)) )
))
(declare-fun isDefined!7711 (Option!10416) Bool)

(declare-fun getValueByKey!402 (List!48929 K!10165) Option!10416)

(assert (=> b!4346475 (= res!1784771 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560861) key!3918)))))

(declare-fun b!4346476 () Bool)

(declare-fun e!2704745 () Unit!70623)

(assert (=> b!4346476 (= e!2704745 e!2704750)))

(declare-fun c!738981 () Bool)

(declare-fun call!302175 () Bool)

(assert (=> b!4346476 (= c!738981 call!302175)))

(declare-fun b!4346477 () Bool)

(declare-fun lt!1560942 () Unit!70623)

(assert (=> b!4346477 (= e!2704745 lt!1560942)))

(declare-fun lt!1560940 () Unit!70623)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!314 (List!48929 K!10165) Unit!70623)

(assert (=> b!4346477 (= lt!1560940 (lemmaContainsKeyImpliesGetValueByKeyDefined!314 (toList!2862 lt!1560861) key!3918))))

(assert (=> b!4346477 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560861) key!3918))))

(declare-fun lt!1560938 () Unit!70623)

(assert (=> b!4346477 (= lt!1560938 lt!1560940)))

(declare-fun lemmaInListThenGetKeysListContains!97 (List!48929 K!10165) Unit!70623)

(assert (=> b!4346477 (= lt!1560942 (lemmaInListThenGetKeysListContains!97 (toList!2862 lt!1560861) key!3918))))

(assert (=> b!4346477 call!302175))

(declare-fun d!1283401 () Bool)

(assert (=> d!1283401 e!2704747))

(declare-fun res!1784773 () Bool)

(assert (=> d!1283401 (=> res!1784773 e!2704747)))

(declare-fun e!2704749 () Bool)

(assert (=> d!1283401 (= res!1784773 e!2704749)))

(declare-fun res!1784772 () Bool)

(assert (=> d!1283401 (=> (not res!1784772) (not e!2704749))))

(declare-fun lt!1560944 () Bool)

(assert (=> d!1283401 (= res!1784772 (not lt!1560944))))

(declare-fun lt!1560937 () Bool)

(assert (=> d!1283401 (= lt!1560944 lt!1560937)))

(declare-fun lt!1560941 () Unit!70623)

(assert (=> d!1283401 (= lt!1560941 e!2704745)))

(declare-fun c!738982 () Bool)

(assert (=> d!1283401 (= c!738982 lt!1560937)))

(assert (=> d!1283401 (= lt!1560937 (containsKey!605 (toList!2862 lt!1560861) key!3918))))

(assert (=> d!1283401 (= (contains!10943 lt!1560861 key!3918) lt!1560944)))

(declare-fun b!4346471 () Bool)

(assert (=> b!4346471 (= e!2704749 (not (contains!10947 (keys!16452 lt!1560861) key!3918)))))

(declare-fun b!4346478 () Bool)

(declare-fun getKeysList!100 (List!48929) List!48932)

(assert (=> b!4346478 (= e!2704746 (getKeysList!100 (toList!2862 lt!1560861)))))

(declare-fun bm!302170 () Bool)

(assert (=> bm!302170 (= call!302175 (contains!10947 e!2704746 key!3918))))

(declare-fun c!738983 () Bool)

(assert (=> bm!302170 (= c!738983 c!738982)))

(assert (= (and d!1283401 c!738982) b!4346477))

(assert (= (and d!1283401 (not c!738982)) b!4346476))

(assert (= (and b!4346476 c!738981) b!4346470))

(assert (= (and b!4346476 (not c!738981)) b!4346474))

(assert (= (or b!4346477 b!4346476) bm!302170))

(assert (= (and bm!302170 c!738983) b!4346478))

(assert (= (and bm!302170 (not c!738983)) b!4346472))

(assert (= (and d!1283401 res!1784772) b!4346471))

(assert (= (and d!1283401 (not res!1784773)) b!4346475))

(assert (= (and b!4346475 res!1784771) b!4346473))

(declare-fun m!4954623 () Bool)

(assert (=> b!4346470 m!4954623))

(declare-fun m!4954625 () Bool)

(assert (=> b!4346470 m!4954625))

(declare-fun m!4954627 () Bool)

(assert (=> bm!302170 m!4954627))

(declare-fun m!4954629 () Bool)

(assert (=> b!4346472 m!4954629))

(assert (=> d!1283401 m!4954623))

(declare-fun m!4954631 () Bool)

(assert (=> b!4346478 m!4954631))

(declare-fun m!4954633 () Bool)

(assert (=> b!4346475 m!4954633))

(assert (=> b!4346475 m!4954633))

(declare-fun m!4954635 () Bool)

(assert (=> b!4346475 m!4954635))

(assert (=> b!4346471 m!4954629))

(assert (=> b!4346471 m!4954629))

(declare-fun m!4954637 () Bool)

(assert (=> b!4346471 m!4954637))

(declare-fun m!4954639 () Bool)

(assert (=> b!4346477 m!4954639))

(assert (=> b!4346477 m!4954633))

(assert (=> b!4346477 m!4954633))

(assert (=> b!4346477 m!4954635))

(declare-fun m!4954641 () Bool)

(assert (=> b!4346477 m!4954641))

(assert (=> b!4346473 m!4954629))

(assert (=> b!4346473 m!4954629))

(assert (=> b!4346473 m!4954637))

(assert (=> b!4346388 d!1283401))

(declare-fun d!1283407 () Bool)

(declare-fun e!2704753 () Bool)

(assert (=> d!1283407 e!2704753))

(declare-fun res!1784776 () Bool)

(assert (=> d!1283407 (=> (not res!1784776) (not e!2704753))))

(declare-fun lt!1560947 () ListMap!2105)

(assert (=> d!1283407 (= res!1784776 (not (contains!10943 lt!1560947 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!34 (List!48929 K!10165) List!48929)

(assert (=> d!1283407 (= lt!1560947 (ListMap!2106 (removePresrvNoDuplicatedKeys!34 (toList!2862 lt!1560871) key!3918)))))

(assert (=> d!1283407 (= (-!240 lt!1560871 key!3918) lt!1560947)))

(declare-fun b!4346481 () Bool)

(declare-fun content!7663 (List!48932) (InoxSet K!10165))

(assert (=> b!4346481 (= e!2704753 (= ((_ map and) (content!7663 (keys!16452 lt!1560871)) ((_ map not) (store ((as const (Array K!10165 Bool)) false) key!3918 true))) (content!7663 (keys!16452 lt!1560947))))))

(assert (= (and d!1283407 res!1784776) b!4346481))

(declare-fun m!4954643 () Bool)

(assert (=> d!1283407 m!4954643))

(declare-fun m!4954645 () Bool)

(assert (=> d!1283407 m!4954645))

(declare-fun m!4954647 () Bool)

(assert (=> b!4346481 m!4954647))

(declare-fun m!4954649 () Bool)

(assert (=> b!4346481 m!4954649))

(declare-fun m!4954651 () Bool)

(assert (=> b!4346481 m!4954651))

(assert (=> b!4346481 m!4954647))

(declare-fun m!4954653 () Bool)

(assert (=> b!4346481 m!4954653))

(assert (=> b!4346481 m!4954651))

(declare-fun m!4954655 () Bool)

(assert (=> b!4346481 m!4954655))

(assert (=> b!4346388 d!1283407))

(declare-fun d!1283409 () Bool)

(assert (=> d!1283409 (eq!229 (addToMapMapFromBucket!147 lt!1560862 (+!550 lt!1560859 (tuple2!48127 key!3918 newValue!99))) (+!550 (addToMapMapFromBucket!147 lt!1560862 lt!1560859) (tuple2!48127 key!3918 newValue!99)))))

(declare-fun lt!1560950 () Unit!70623)

(declare-fun choose!26677 (ListMap!2105 K!10165 V!10411 List!48929) Unit!70623)

(assert (=> d!1283409 (= lt!1560950 (choose!26677 lt!1560859 key!3918 newValue!99 lt!1560862))))

(declare-fun containsKey!606 (List!48929 K!10165) Bool)

(assert (=> d!1283409 (not (containsKey!606 lt!1560862 key!3918))))

(assert (=> d!1283409 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!58 lt!1560859 key!3918 newValue!99 lt!1560862) lt!1560950)))

(declare-fun bs!627816 () Bool)

(assert (= bs!627816 d!1283409))

(declare-fun m!4954657 () Bool)

(assert (=> bs!627816 m!4954657))

(assert (=> bs!627816 m!4954477))

(assert (=> bs!627816 m!4954477))

(declare-fun m!4954659 () Bool)

(assert (=> bs!627816 m!4954659))

(declare-fun m!4954661 () Bool)

(assert (=> bs!627816 m!4954661))

(assert (=> bs!627816 m!4954661))

(declare-fun m!4954663 () Bool)

(assert (=> bs!627816 m!4954663))

(assert (=> bs!627816 m!4954663))

(assert (=> bs!627816 m!4954659))

(declare-fun m!4954665 () Bool)

(assert (=> bs!627816 m!4954665))

(declare-fun m!4954667 () Bool)

(assert (=> bs!627816 m!4954667))

(assert (=> b!4346388 d!1283409))

(declare-fun bs!627820 () Bool)

(declare-fun d!1283411 () Bool)

(assert (= bs!627820 (and d!1283411 start!419584)))

(declare-fun lambda!138385 () Int)

(assert (=> bs!627820 (= lambda!138385 lambda!138341)))

(assert (=> d!1283411 (eq!229 (extractMap!498 (toList!2861 (+!549 lm!1707 (tuple2!48129 hash!377 lt!1560864)))) (-!240 (extractMap!498 (toList!2861 lm!1707)) key!3918))))

(declare-fun lt!1561016 () Unit!70623)

(declare-fun choose!26678 (ListLongMap!1511 (_ BitVec 64) List!48929 K!10165 Hashable!4831) Unit!70623)

(assert (=> d!1283411 (= lt!1561016 (choose!26678 lm!1707 hash!377 lt!1560864 key!3918 hashF!1247))))

(assert (=> d!1283411 (forall!9033 (toList!2861 lm!1707) lambda!138385)))

(assert (=> d!1283411 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!55 lm!1707 hash!377 lt!1560864 key!3918 hashF!1247) lt!1561016)))

(declare-fun bs!627821 () Bool)

(assert (= bs!627821 d!1283411))

(assert (=> bs!627821 m!4954491))

(assert (=> bs!627821 m!4954521))

(declare-fun m!4954703 () Bool)

(assert (=> bs!627821 m!4954703))

(assert (=> bs!627821 m!4954521))

(declare-fun m!4954705 () Bool)

(assert (=> bs!627821 m!4954705))

(declare-fun m!4954707 () Bool)

(assert (=> bs!627821 m!4954707))

(assert (=> bs!627821 m!4954705))

(declare-fun m!4954709 () Bool)

(assert (=> bs!627821 m!4954709))

(assert (=> bs!627821 m!4954707))

(declare-fun m!4954711 () Bool)

(assert (=> bs!627821 m!4954711))

(assert (=> b!4346388 d!1283411))

(declare-fun d!1283415 () Bool)

(assert (=> d!1283415 (= (tail!6937 newBucket!200) (t!355849 newBucket!200))))

(assert (=> b!4346388 d!1283415))

(declare-fun d!1283417 () Bool)

(declare-fun e!2704768 () Bool)

(assert (=> d!1283417 e!2704768))

(declare-fun res!1784797 () Bool)

(assert (=> d!1283417 (=> (not res!1784797) (not e!2704768))))

(declare-fun lt!1561040 () ListMap!2105)

(assert (=> d!1283417 (= res!1784797 (contains!10943 lt!1561040 (_1!27357 lt!1560867)))))

(declare-fun lt!1561037 () List!48929)

(assert (=> d!1283417 (= lt!1561040 (ListMap!2106 lt!1561037))))

(declare-fun lt!1561038 () Unit!70623)

(declare-fun lt!1561039 () Unit!70623)

(assert (=> d!1283417 (= lt!1561038 lt!1561039)))

(assert (=> d!1283417 (= (getValueByKey!402 lt!1561037 (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867)))))

(declare-fun lemmaContainsTupThenGetReturnValue!186 (List!48929 K!10165 V!10411) Unit!70623)

(assert (=> d!1283417 (= lt!1561039 (lemmaContainsTupThenGetReturnValue!186 lt!1561037 (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(declare-fun insertNoDuplicatedKeys!85 (List!48929 K!10165 V!10411) List!48929)

(assert (=> d!1283417 (= lt!1561037 (insertNoDuplicatedKeys!85 (toList!2862 lt!1560859) (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(assert (=> d!1283417 (= (+!550 lt!1560859 lt!1560867) lt!1561040)))

(declare-fun b!4346509 () Bool)

(declare-fun res!1784796 () Bool)

(assert (=> b!4346509 (=> (not res!1784796) (not e!2704768))))

(assert (=> b!4346509 (= res!1784796 (= (getValueByKey!402 (toList!2862 lt!1561040) (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867))))))

(declare-fun b!4346510 () Bool)

(declare-fun contains!10948 (List!48929 tuple2!48126) Bool)

(assert (=> b!4346510 (= e!2704768 (contains!10948 (toList!2862 lt!1561040) lt!1560867))))

(assert (= (and d!1283417 res!1784797) b!4346509))

(assert (= (and b!4346509 res!1784796) b!4346510))

(declare-fun m!4954725 () Bool)

(assert (=> d!1283417 m!4954725))

(declare-fun m!4954727 () Bool)

(assert (=> d!1283417 m!4954727))

(declare-fun m!4954729 () Bool)

(assert (=> d!1283417 m!4954729))

(declare-fun m!4954731 () Bool)

(assert (=> d!1283417 m!4954731))

(declare-fun m!4954733 () Bool)

(assert (=> b!4346509 m!4954733))

(declare-fun m!4954735 () Bool)

(assert (=> b!4346510 m!4954735))

(assert (=> b!4346388 d!1283417))

(declare-fun bs!627843 () Bool)

(declare-fun d!1283421 () Bool)

(assert (= bs!627843 (and d!1283421 start!419584)))

(declare-fun lambda!138394 () Int)

(assert (=> bs!627843 (= lambda!138394 lambda!138341)))

(declare-fun bs!627844 () Bool)

(assert (= bs!627844 (and d!1283421 d!1283411)))

(assert (=> bs!627844 (= lambda!138394 lambda!138385)))

(declare-fun lt!1561077 () ListMap!2105)

(declare-fun invariantList!652 (List!48929) Bool)

(assert (=> d!1283421 (invariantList!652 (toList!2862 lt!1561077))))

(declare-fun e!2704782 () ListMap!2105)

(assert (=> d!1283421 (= lt!1561077 e!2704782)))

(declare-fun c!738995 () Bool)

(assert (=> d!1283421 (= c!738995 ((_ is Cons!48806) (toList!2861 lt!1560866)))))

(assert (=> d!1283421 (forall!9033 (toList!2861 lt!1560866) lambda!138394)))

(assert (=> d!1283421 (= (extractMap!498 (toList!2861 lt!1560866)) lt!1561077)))

(declare-fun b!4346533 () Bool)

(assert (=> b!4346533 (= e!2704782 (addToMapMapFromBucket!147 (_2!27358 (h!54331 (toList!2861 lt!1560866))) (extractMap!498 (t!355850 (toList!2861 lt!1560866)))))))

(declare-fun b!4346534 () Bool)

(assert (=> b!4346534 (= e!2704782 (ListMap!2106 Nil!48805))))

(assert (= (and d!1283421 c!738995) b!4346533))

(assert (= (and d!1283421 (not c!738995)) b!4346534))

(declare-fun m!4954803 () Bool)

(assert (=> d!1283421 m!4954803))

(declare-fun m!4954805 () Bool)

(assert (=> d!1283421 m!4954805))

(declare-fun m!4954809 () Bool)

(assert (=> b!4346533 m!4954809))

(assert (=> b!4346533 m!4954809))

(declare-fun m!4954817 () Bool)

(assert (=> b!4346533 m!4954817))

(assert (=> b!4346388 d!1283421))

(declare-fun bs!627949 () Bool)

(declare-fun b!4346648 () Bool)

(assert (= bs!627949 (and b!4346648 d!1283389)))

(declare-fun lambda!138442 () Int)

(assert (=> bs!627949 (not (= lambda!138442 lambda!138344))))

(assert (=> b!4346648 true))

(declare-fun bs!627950 () Bool)

(declare-fun b!4346651 () Bool)

(assert (= bs!627950 (and b!4346651 d!1283389)))

(declare-fun lambda!138443 () Int)

(assert (=> bs!627950 (not (= lambda!138443 lambda!138344))))

(declare-fun bs!627951 () Bool)

(assert (= bs!627951 (and b!4346651 b!4346648)))

(assert (=> bs!627951 (= lambda!138443 lambda!138442)))

(assert (=> b!4346651 true))

(declare-fun lambda!138444 () Int)

(assert (=> bs!627950 (not (= lambda!138444 lambda!138344))))

(declare-fun lt!1561247 () ListMap!2105)

(assert (=> bs!627951 (= (= lt!1561247 (+!550 lt!1560859 lt!1560867)) (= lambda!138444 lambda!138442))))

(assert (=> b!4346651 (= (= lt!1561247 (+!550 lt!1560859 lt!1560867)) (= lambda!138444 lambda!138443))))

(assert (=> b!4346651 true))

(declare-fun bs!627952 () Bool)

(declare-fun d!1283433 () Bool)

(assert (= bs!627952 (and d!1283433 d!1283389)))

(declare-fun lambda!138445 () Int)

(assert (=> bs!627952 (not (= lambda!138445 lambda!138344))))

(declare-fun bs!627953 () Bool)

(assert (= bs!627953 (and d!1283433 b!4346648)))

(declare-fun lt!1561239 () ListMap!2105)

(assert (=> bs!627953 (= (= lt!1561239 (+!550 lt!1560859 lt!1560867)) (= lambda!138445 lambda!138442))))

(declare-fun bs!627954 () Bool)

(assert (= bs!627954 (and d!1283433 b!4346651)))

(assert (=> bs!627954 (= (= lt!1561239 (+!550 lt!1560859 lt!1560867)) (= lambda!138445 lambda!138443))))

(assert (=> bs!627954 (= (= lt!1561239 lt!1561247) (= lambda!138445 lambda!138444))))

(assert (=> d!1283433 true))

(declare-fun e!2704858 () ListMap!2105)

(assert (=> b!4346648 (= e!2704858 (+!550 lt!1560859 lt!1560867))))

(declare-fun lt!1561246 () Unit!70623)

(declare-fun call!302202 () Unit!70623)

(assert (=> b!4346648 (= lt!1561246 call!302202)))

(declare-fun call!302204 () Bool)

(assert (=> b!4346648 call!302204))

(declare-fun lt!1561244 () Unit!70623)

(assert (=> b!4346648 (= lt!1561244 lt!1561246)))

(declare-fun call!302203 () Bool)

(assert (=> b!4346648 call!302203))

(declare-fun lt!1561240 () Unit!70623)

(declare-fun Unit!70653 () Unit!70623)

(assert (=> b!4346648 (= lt!1561240 Unit!70653)))

(declare-fun e!2704856 () Bool)

(assert (=> d!1283433 e!2704856))

(declare-fun res!1784864 () Bool)

(assert (=> d!1283433 (=> (not res!1784864) (not e!2704856))))

(assert (=> d!1283433 (= res!1784864 (forall!9035 lt!1560862 lambda!138445))))

(assert (=> d!1283433 (= lt!1561239 e!2704858)))

(declare-fun c!739014 () Bool)

(assert (=> d!1283433 (= c!739014 ((_ is Nil!48805) lt!1560862))))

(assert (=> d!1283433 (noDuplicateKeys!439 lt!1560862)))

(assert (=> d!1283433 (= (addToMapMapFromBucket!147 lt!1560862 (+!550 lt!1560859 lt!1560867)) lt!1561239)))

(declare-fun b!4346649 () Bool)

(declare-fun res!1784865 () Bool)

(assert (=> b!4346649 (=> (not res!1784865) (not e!2704856))))

(assert (=> b!4346649 (= res!1784865 (forall!9035 (toList!2862 (+!550 lt!1560859 lt!1560867)) lambda!138445))))

(declare-fun bm!302197 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!45 (ListMap!2105) Unit!70623)

(assert (=> bm!302197 (= call!302202 (lemmaContainsAllItsOwnKeys!45 (+!550 lt!1560859 lt!1560867)))))

(declare-fun bm!302198 () Bool)

(assert (=> bm!302198 (= call!302203 (forall!9035 (ite c!739014 (toList!2862 (+!550 lt!1560859 lt!1560867)) (t!355849 lt!1560862)) (ite c!739014 lambda!138442 lambda!138444)))))

(declare-fun b!4346650 () Bool)

(assert (=> b!4346650 (= e!2704856 (invariantList!652 (toList!2862 lt!1561239)))))

(declare-fun lt!1561233 () ListMap!2105)

(declare-fun bm!302199 () Bool)

(assert (=> bm!302199 (= call!302204 (forall!9035 (ite c!739014 (toList!2862 (+!550 lt!1560859 lt!1560867)) (toList!2862 lt!1561233)) (ite c!739014 lambda!138442 lambda!138444)))))

(assert (=> b!4346651 (= e!2704858 lt!1561247)))

(assert (=> b!4346651 (= lt!1561233 (+!550 (+!550 lt!1560859 lt!1560867) (h!54330 lt!1560862)))))

(assert (=> b!4346651 (= lt!1561247 (addToMapMapFromBucket!147 (t!355849 lt!1560862) (+!550 (+!550 lt!1560859 lt!1560867) (h!54330 lt!1560862))))))

(declare-fun lt!1561251 () Unit!70623)

(assert (=> b!4346651 (= lt!1561251 call!302202)))

(assert (=> b!4346651 (forall!9035 (toList!2862 (+!550 lt!1560859 lt!1560867)) lambda!138443)))

(declare-fun lt!1561238 () Unit!70623)

(assert (=> b!4346651 (= lt!1561238 lt!1561251)))

(assert (=> b!4346651 (forall!9035 (toList!2862 lt!1561233) lambda!138444)))

(declare-fun lt!1561236 () Unit!70623)

(declare-fun Unit!70658 () Unit!70623)

(assert (=> b!4346651 (= lt!1561236 Unit!70658)))

(assert (=> b!4346651 call!302203))

(declare-fun lt!1561250 () Unit!70623)

(declare-fun Unit!70660 () Unit!70623)

(assert (=> b!4346651 (= lt!1561250 Unit!70660)))

(declare-fun lt!1561253 () Unit!70623)

(declare-fun Unit!70662 () Unit!70623)

(assert (=> b!4346651 (= lt!1561253 Unit!70662)))

(declare-fun lt!1561241 () Unit!70623)

(declare-fun forallContained!1685 (List!48929 Int tuple2!48126) Unit!70623)

(assert (=> b!4346651 (= lt!1561241 (forallContained!1685 (toList!2862 lt!1561233) lambda!138444 (h!54330 lt!1560862)))))

(assert (=> b!4346651 (contains!10943 lt!1561233 (_1!27357 (h!54330 lt!1560862)))))

(declare-fun lt!1561249 () Unit!70623)

(declare-fun Unit!70664 () Unit!70623)

(assert (=> b!4346651 (= lt!1561249 Unit!70664)))

(assert (=> b!4346651 (contains!10943 lt!1561247 (_1!27357 (h!54330 lt!1560862)))))

(declare-fun lt!1561243 () Unit!70623)

(declare-fun Unit!70667 () Unit!70623)

(assert (=> b!4346651 (= lt!1561243 Unit!70667)))

(assert (=> b!4346651 (forall!9035 lt!1560862 lambda!138444)))

(declare-fun lt!1561242 () Unit!70623)

(declare-fun Unit!70668 () Unit!70623)

(assert (=> b!4346651 (= lt!1561242 Unit!70668)))

(assert (=> b!4346651 call!302204))

(declare-fun lt!1561245 () Unit!70623)

(declare-fun Unit!70669 () Unit!70623)

(assert (=> b!4346651 (= lt!1561245 Unit!70669)))

(declare-fun lt!1561234 () Unit!70623)

(declare-fun Unit!70671 () Unit!70623)

(assert (=> b!4346651 (= lt!1561234 Unit!70671)))

(declare-fun lt!1561237 () Unit!70623)

(declare-fun addForallContainsKeyThenBeforeAdding!45 (ListMap!2105 ListMap!2105 K!10165 V!10411) Unit!70623)

(assert (=> b!4346651 (= lt!1561237 (addForallContainsKeyThenBeforeAdding!45 (+!550 lt!1560859 lt!1560867) lt!1561247 (_1!27357 (h!54330 lt!1560862)) (_2!27357 (h!54330 lt!1560862))))))

(assert (=> b!4346651 (forall!9035 (toList!2862 (+!550 lt!1560859 lt!1560867)) lambda!138444)))

(declare-fun lt!1561248 () Unit!70623)

(assert (=> b!4346651 (= lt!1561248 lt!1561237)))

(assert (=> b!4346651 (forall!9035 (toList!2862 (+!550 lt!1560859 lt!1560867)) lambda!138444)))

(declare-fun lt!1561252 () Unit!70623)

(declare-fun Unit!70673 () Unit!70623)

(assert (=> b!4346651 (= lt!1561252 Unit!70673)))

(declare-fun res!1784866 () Bool)

(assert (=> b!4346651 (= res!1784866 (forall!9035 lt!1560862 lambda!138444))))

(declare-fun e!2704857 () Bool)

(assert (=> b!4346651 (=> (not res!1784866) (not e!2704857))))

(assert (=> b!4346651 e!2704857))

(declare-fun lt!1561235 () Unit!70623)

(declare-fun Unit!70674 () Unit!70623)

(assert (=> b!4346651 (= lt!1561235 Unit!70674)))

(declare-fun b!4346652 () Bool)

(assert (=> b!4346652 (= e!2704857 (forall!9035 (toList!2862 (+!550 lt!1560859 lt!1560867)) lambda!138444))))

(assert (= (and d!1283433 c!739014) b!4346648))

(assert (= (and d!1283433 (not c!739014)) b!4346651))

(assert (= (and b!4346651 res!1784866) b!4346652))

(assert (= (or b!4346648 b!4346651) bm!302197))

(assert (= (or b!4346648 b!4346651) bm!302198))

(assert (= (or b!4346648 b!4346651) bm!302199))

(assert (= (and d!1283433 res!1784864) b!4346649))

(assert (= (and b!4346649 res!1784865) b!4346650))

(declare-fun m!4955099 () Bool)

(assert (=> b!4346651 m!4955099))

(declare-fun m!4955101 () Bool)

(assert (=> b!4346651 m!4955101))

(declare-fun m!4955103 () Bool)

(assert (=> b!4346651 m!4955103))

(declare-fun m!4955105 () Bool)

(assert (=> b!4346651 m!4955105))

(assert (=> b!4346651 m!4954483))

(declare-fun m!4955107 () Bool)

(assert (=> b!4346651 m!4955107))

(declare-fun m!4955109 () Bool)

(assert (=> b!4346651 m!4955109))

(declare-fun m!4955111 () Bool)

(assert (=> b!4346651 m!4955111))

(assert (=> b!4346651 m!4955103))

(assert (=> b!4346651 m!4955101))

(declare-fun m!4955113 () Bool)

(assert (=> b!4346651 m!4955113))

(declare-fun m!4955115 () Bool)

(assert (=> b!4346651 m!4955115))

(assert (=> b!4346651 m!4954483))

(assert (=> b!4346651 m!4955109))

(declare-fun m!4955117 () Bool)

(assert (=> b!4346651 m!4955117))

(assert (=> b!4346652 m!4955101))

(assert (=> bm!302197 m!4954483))

(declare-fun m!4955119 () Bool)

(assert (=> bm!302197 m!4955119))

(declare-fun m!4955121 () Bool)

(assert (=> d!1283433 m!4955121))

(declare-fun m!4955123 () Bool)

(assert (=> d!1283433 m!4955123))

(declare-fun m!4955125 () Bool)

(assert (=> bm!302199 m!4955125))

(declare-fun m!4955127 () Bool)

(assert (=> b!4346650 m!4955127))

(declare-fun m!4955129 () Bool)

(assert (=> b!4346649 m!4955129))

(declare-fun m!4955131 () Bool)

(assert (=> bm!302198 m!4955131))

(assert (=> b!4346388 d!1283433))

(declare-fun b!4346655 () Bool)

(assert (=> b!4346655 false))

(declare-fun lt!1561260 () Unit!70623)

(declare-fun lt!1561256 () Unit!70623)

(assert (=> b!4346655 (= lt!1561260 lt!1561256)))

(assert (=> b!4346655 (containsKey!605 (toList!2862 lt!1560857) key!3918)))

(assert (=> b!4346655 (= lt!1561256 (lemmaInGetKeysListThenContainsKey!98 (toList!2862 lt!1560857) key!3918))))

(declare-fun e!2704864 () Unit!70623)

(declare-fun Unit!70675 () Unit!70623)

(assert (=> b!4346655 (= e!2704864 Unit!70675)))

(declare-fun b!4346657 () Bool)

(declare-fun e!2704860 () List!48932)

(assert (=> b!4346657 (= e!2704860 (keys!16452 lt!1560857))))

(declare-fun b!4346658 () Bool)

(declare-fun e!2704862 () Bool)

(assert (=> b!4346658 (= e!2704862 (contains!10947 (keys!16452 lt!1560857) key!3918))))

(declare-fun b!4346659 () Bool)

(declare-fun Unit!70676 () Unit!70623)

(assert (=> b!4346659 (= e!2704864 Unit!70676)))

(declare-fun b!4346660 () Bool)

(declare-fun e!2704861 () Bool)

(assert (=> b!4346660 (= e!2704861 e!2704862)))

(declare-fun res!1784867 () Bool)

(assert (=> b!4346660 (=> (not res!1784867) (not e!2704862))))

(assert (=> b!4346660 (= res!1784867 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560857) key!3918)))))

(declare-fun b!4346661 () Bool)

(declare-fun e!2704859 () Unit!70623)

(assert (=> b!4346661 (= e!2704859 e!2704864)))

(declare-fun c!739015 () Bool)

(declare-fun call!302205 () Bool)

(assert (=> b!4346661 (= c!739015 call!302205)))

(declare-fun b!4346662 () Bool)

(declare-fun lt!1561259 () Unit!70623)

(assert (=> b!4346662 (= e!2704859 lt!1561259)))

(declare-fun lt!1561257 () Unit!70623)

(assert (=> b!4346662 (= lt!1561257 (lemmaContainsKeyImpliesGetValueByKeyDefined!314 (toList!2862 lt!1560857) key!3918))))

(assert (=> b!4346662 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560857) key!3918))))

(declare-fun lt!1561255 () Unit!70623)

(assert (=> b!4346662 (= lt!1561255 lt!1561257)))

(assert (=> b!4346662 (= lt!1561259 (lemmaInListThenGetKeysListContains!97 (toList!2862 lt!1560857) key!3918))))

(assert (=> b!4346662 call!302205))

(declare-fun d!1283507 () Bool)

(assert (=> d!1283507 e!2704861))

(declare-fun res!1784869 () Bool)

(assert (=> d!1283507 (=> res!1784869 e!2704861)))

(declare-fun e!2704863 () Bool)

(assert (=> d!1283507 (= res!1784869 e!2704863)))

(declare-fun res!1784868 () Bool)

(assert (=> d!1283507 (=> (not res!1784868) (not e!2704863))))

(declare-fun lt!1561261 () Bool)

(assert (=> d!1283507 (= res!1784868 (not lt!1561261))))

(declare-fun lt!1561254 () Bool)

(assert (=> d!1283507 (= lt!1561261 lt!1561254)))

(declare-fun lt!1561258 () Unit!70623)

(assert (=> d!1283507 (= lt!1561258 e!2704859)))

(declare-fun c!739016 () Bool)

(assert (=> d!1283507 (= c!739016 lt!1561254)))

(assert (=> d!1283507 (= lt!1561254 (containsKey!605 (toList!2862 lt!1560857) key!3918))))

(assert (=> d!1283507 (= (contains!10943 lt!1560857 key!3918) lt!1561261)))

(declare-fun b!4346656 () Bool)

(assert (=> b!4346656 (= e!2704863 (not (contains!10947 (keys!16452 lt!1560857) key!3918)))))

(declare-fun b!4346663 () Bool)

(assert (=> b!4346663 (= e!2704860 (getKeysList!100 (toList!2862 lt!1560857)))))

(declare-fun bm!302200 () Bool)

(assert (=> bm!302200 (= call!302205 (contains!10947 e!2704860 key!3918))))

(declare-fun c!739017 () Bool)

(assert (=> bm!302200 (= c!739017 c!739016)))

(assert (= (and d!1283507 c!739016) b!4346662))

(assert (= (and d!1283507 (not c!739016)) b!4346661))

(assert (= (and b!4346661 c!739015) b!4346655))

(assert (= (and b!4346661 (not c!739015)) b!4346659))

(assert (= (or b!4346662 b!4346661) bm!302200))

(assert (= (and bm!302200 c!739017) b!4346663))

(assert (= (and bm!302200 (not c!739017)) b!4346657))

(assert (= (and d!1283507 res!1784868) b!4346656))

(assert (= (and d!1283507 (not res!1784869)) b!4346660))

(assert (= (and b!4346660 res!1784867) b!4346658))

(declare-fun m!4955133 () Bool)

(assert (=> b!4346655 m!4955133))

(declare-fun m!4955135 () Bool)

(assert (=> b!4346655 m!4955135))

(declare-fun m!4955137 () Bool)

(assert (=> bm!302200 m!4955137))

(declare-fun m!4955139 () Bool)

(assert (=> b!4346657 m!4955139))

(assert (=> d!1283507 m!4955133))

(declare-fun m!4955141 () Bool)

(assert (=> b!4346663 m!4955141))

(declare-fun m!4955143 () Bool)

(assert (=> b!4346660 m!4955143))

(assert (=> b!4346660 m!4955143))

(declare-fun m!4955145 () Bool)

(assert (=> b!4346660 m!4955145))

(assert (=> b!4346656 m!4955139))

(assert (=> b!4346656 m!4955139))

(declare-fun m!4955147 () Bool)

(assert (=> b!4346656 m!4955147))

(declare-fun m!4955149 () Bool)

(assert (=> b!4346662 m!4955149))

(assert (=> b!4346662 m!4955143))

(assert (=> b!4346662 m!4955143))

(assert (=> b!4346662 m!4955145))

(declare-fun m!4955151 () Bool)

(assert (=> b!4346662 m!4955151))

(assert (=> b!4346658 m!4955139))

(assert (=> b!4346658 m!4955139))

(assert (=> b!4346658 m!4955147))

(assert (=> b!4346388 d!1283507))

(declare-fun bs!627955 () Bool)

(declare-fun d!1283509 () Bool)

(assert (= bs!627955 (and d!1283509 start!419584)))

(declare-fun lambda!138446 () Int)

(assert (=> bs!627955 (= lambda!138446 lambda!138341)))

(declare-fun bs!627956 () Bool)

(assert (= bs!627956 (and d!1283509 d!1283411)))

(assert (=> bs!627956 (= lambda!138446 lambda!138385)))

(declare-fun bs!627957 () Bool)

(assert (= bs!627957 (and d!1283509 d!1283421)))

(assert (=> bs!627957 (= lambda!138446 lambda!138394)))

(declare-fun lt!1561262 () ListMap!2105)

(assert (=> d!1283509 (invariantList!652 (toList!2862 lt!1561262))))

(declare-fun e!2704865 () ListMap!2105)

(assert (=> d!1283509 (= lt!1561262 e!2704865)))

(declare-fun c!739018 () Bool)

(assert (=> d!1283509 (= c!739018 ((_ is Cons!48806) (t!355850 (toList!2861 lm!1707))))))

(assert (=> d!1283509 (forall!9033 (t!355850 (toList!2861 lm!1707)) lambda!138446)))

(assert (=> d!1283509 (= (extractMap!498 (t!355850 (toList!2861 lm!1707))) lt!1561262)))

(declare-fun b!4346664 () Bool)

(assert (=> b!4346664 (= e!2704865 (addToMapMapFromBucket!147 (_2!27358 (h!54331 (t!355850 (toList!2861 lm!1707)))) (extractMap!498 (t!355850 (t!355850 (toList!2861 lm!1707))))))))

(declare-fun b!4346665 () Bool)

(assert (=> b!4346665 (= e!2704865 (ListMap!2106 Nil!48805))))

(assert (= (and d!1283509 c!739018) b!4346664))

(assert (= (and d!1283509 (not c!739018)) b!4346665))

(declare-fun m!4955153 () Bool)

(assert (=> d!1283509 m!4955153))

(declare-fun m!4955155 () Bool)

(assert (=> d!1283509 m!4955155))

(declare-fun m!4955157 () Bool)

(assert (=> b!4346664 m!4955157))

(assert (=> b!4346664 m!4955157))

(declare-fun m!4955159 () Bool)

(assert (=> b!4346664 m!4955159))

(assert (=> b!4346388 d!1283509))

(declare-fun bs!627958 () Bool)

(declare-fun b!4346666 () Bool)

(assert (= bs!627958 (and b!4346666 b!4346648)))

(declare-fun lambda!138447 () Int)

(assert (=> bs!627958 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138447 lambda!138442))))

(declare-fun bs!627959 () Bool)

(assert (= bs!627959 (and b!4346666 b!4346651)))

(assert (=> bs!627959 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138447 lambda!138443))))

(declare-fun bs!627960 () Bool)

(assert (= bs!627960 (and b!4346666 d!1283433)))

(assert (=> bs!627960 (= (= lt!1560859 lt!1561239) (= lambda!138447 lambda!138445))))

(assert (=> bs!627959 (= (= lt!1560859 lt!1561247) (= lambda!138447 lambda!138444))))

(declare-fun bs!627961 () Bool)

(assert (= bs!627961 (and b!4346666 d!1283389)))

(assert (=> bs!627961 (not (= lambda!138447 lambda!138344))))

(assert (=> b!4346666 true))

(declare-fun bs!627962 () Bool)

(declare-fun b!4346669 () Bool)

(assert (= bs!627962 (and b!4346669 b!4346648)))

(declare-fun lambda!138448 () Int)

(assert (=> bs!627962 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138448 lambda!138442))))

(declare-fun bs!627963 () Bool)

(assert (= bs!627963 (and b!4346669 b!4346651)))

(assert (=> bs!627963 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138448 lambda!138443))))

(declare-fun bs!627964 () Bool)

(assert (= bs!627964 (and b!4346669 d!1283433)))

(assert (=> bs!627964 (= (= lt!1560859 lt!1561239) (= lambda!138448 lambda!138445))))

(assert (=> bs!627963 (= (= lt!1560859 lt!1561247) (= lambda!138448 lambda!138444))))

(declare-fun bs!627965 () Bool)

(assert (= bs!627965 (and b!4346669 d!1283389)))

(assert (=> bs!627965 (not (= lambda!138448 lambda!138344))))

(declare-fun bs!627966 () Bool)

(assert (= bs!627966 (and b!4346669 b!4346666)))

(assert (=> bs!627966 (= lambda!138448 lambda!138447)))

(assert (=> b!4346669 true))

(declare-fun lt!1561277 () ListMap!2105)

(declare-fun lambda!138449 () Int)

(assert (=> bs!627962 (= (= lt!1561277 (+!550 lt!1560859 lt!1560867)) (= lambda!138449 lambda!138442))))

(assert (=> b!4346669 (= (= lt!1561277 lt!1560859) (= lambda!138449 lambda!138448))))

(assert (=> bs!627963 (= (= lt!1561277 (+!550 lt!1560859 lt!1560867)) (= lambda!138449 lambda!138443))))

(assert (=> bs!627964 (= (= lt!1561277 lt!1561239) (= lambda!138449 lambda!138445))))

(assert (=> bs!627963 (= (= lt!1561277 lt!1561247) (= lambda!138449 lambda!138444))))

(assert (=> bs!627965 (not (= lambda!138449 lambda!138344))))

(assert (=> bs!627966 (= (= lt!1561277 lt!1560859) (= lambda!138449 lambda!138447))))

(assert (=> b!4346669 true))

(declare-fun bs!627967 () Bool)

(declare-fun d!1283511 () Bool)

(assert (= bs!627967 (and d!1283511 b!4346648)))

(declare-fun lt!1561269 () ListMap!2105)

(declare-fun lambda!138450 () Int)

(assert (=> bs!627967 (= (= lt!1561269 (+!550 lt!1560859 lt!1560867)) (= lambda!138450 lambda!138442))))

(declare-fun bs!627968 () Bool)

(assert (= bs!627968 (and d!1283511 b!4346669)))

(assert (=> bs!627968 (= (= lt!1561269 lt!1560859) (= lambda!138450 lambda!138448))))

(declare-fun bs!627969 () Bool)

(assert (= bs!627969 (and d!1283511 d!1283433)))

(assert (=> bs!627969 (= (= lt!1561269 lt!1561239) (= lambda!138450 lambda!138445))))

(declare-fun bs!627970 () Bool)

(assert (= bs!627970 (and d!1283511 b!4346651)))

(assert (=> bs!627970 (= (= lt!1561269 lt!1561247) (= lambda!138450 lambda!138444))))

(declare-fun bs!627971 () Bool)

(assert (= bs!627971 (and d!1283511 d!1283389)))

(assert (=> bs!627971 (not (= lambda!138450 lambda!138344))))

(declare-fun bs!627972 () Bool)

(assert (= bs!627972 (and d!1283511 b!4346666)))

(assert (=> bs!627972 (= (= lt!1561269 lt!1560859) (= lambda!138450 lambda!138447))))

(assert (=> bs!627970 (= (= lt!1561269 (+!550 lt!1560859 lt!1560867)) (= lambda!138450 lambda!138443))))

(assert (=> bs!627968 (= (= lt!1561269 lt!1561277) (= lambda!138450 lambda!138449))))

(assert (=> d!1283511 true))

(declare-fun e!2704868 () ListMap!2105)

(assert (=> b!4346666 (= e!2704868 lt!1560859)))

(declare-fun lt!1561276 () Unit!70623)

(declare-fun call!302206 () Unit!70623)

(assert (=> b!4346666 (= lt!1561276 call!302206)))

(declare-fun call!302208 () Bool)

(assert (=> b!4346666 call!302208))

(declare-fun lt!1561274 () Unit!70623)

(assert (=> b!4346666 (= lt!1561274 lt!1561276)))

(declare-fun call!302207 () Bool)

(assert (=> b!4346666 call!302207))

(declare-fun lt!1561270 () Unit!70623)

(declare-fun Unit!70681 () Unit!70623)

(assert (=> b!4346666 (= lt!1561270 Unit!70681)))

(declare-fun e!2704866 () Bool)

(assert (=> d!1283511 e!2704866))

(declare-fun res!1784870 () Bool)

(assert (=> d!1283511 (=> (not res!1784870) (not e!2704866))))

(assert (=> d!1283511 (= res!1784870 (forall!9035 lt!1560862 lambda!138450))))

(assert (=> d!1283511 (= lt!1561269 e!2704868)))

(declare-fun c!739019 () Bool)

(assert (=> d!1283511 (= c!739019 ((_ is Nil!48805) lt!1560862))))

(assert (=> d!1283511 (noDuplicateKeys!439 lt!1560862)))

(assert (=> d!1283511 (= (addToMapMapFromBucket!147 lt!1560862 lt!1560859) lt!1561269)))

(declare-fun b!4346667 () Bool)

(declare-fun res!1784871 () Bool)

(assert (=> b!4346667 (=> (not res!1784871) (not e!2704866))))

(assert (=> b!4346667 (= res!1784871 (forall!9035 (toList!2862 lt!1560859) lambda!138450))))

(declare-fun bm!302201 () Bool)

(assert (=> bm!302201 (= call!302206 (lemmaContainsAllItsOwnKeys!45 lt!1560859))))

(declare-fun bm!302202 () Bool)

(assert (=> bm!302202 (= call!302207 (forall!9035 (ite c!739019 (toList!2862 lt!1560859) (t!355849 lt!1560862)) (ite c!739019 lambda!138447 lambda!138449)))))

(declare-fun b!4346668 () Bool)

(assert (=> b!4346668 (= e!2704866 (invariantList!652 (toList!2862 lt!1561269)))))

(declare-fun bm!302203 () Bool)

(declare-fun lt!1561263 () ListMap!2105)

(assert (=> bm!302203 (= call!302208 (forall!9035 (ite c!739019 (toList!2862 lt!1560859) (toList!2862 lt!1561263)) (ite c!739019 lambda!138447 lambda!138449)))))

(assert (=> b!4346669 (= e!2704868 lt!1561277)))

(assert (=> b!4346669 (= lt!1561263 (+!550 lt!1560859 (h!54330 lt!1560862)))))

(assert (=> b!4346669 (= lt!1561277 (addToMapMapFromBucket!147 (t!355849 lt!1560862) (+!550 lt!1560859 (h!54330 lt!1560862))))))

(declare-fun lt!1561281 () Unit!70623)

(assert (=> b!4346669 (= lt!1561281 call!302206)))

(assert (=> b!4346669 (forall!9035 (toList!2862 lt!1560859) lambda!138448)))

(declare-fun lt!1561268 () Unit!70623)

(assert (=> b!4346669 (= lt!1561268 lt!1561281)))

(assert (=> b!4346669 (forall!9035 (toList!2862 lt!1561263) lambda!138449)))

(declare-fun lt!1561266 () Unit!70623)

(declare-fun Unit!70689 () Unit!70623)

(assert (=> b!4346669 (= lt!1561266 Unit!70689)))

(assert (=> b!4346669 call!302207))

(declare-fun lt!1561280 () Unit!70623)

(declare-fun Unit!70690 () Unit!70623)

(assert (=> b!4346669 (= lt!1561280 Unit!70690)))

(declare-fun lt!1561283 () Unit!70623)

(declare-fun Unit!70691 () Unit!70623)

(assert (=> b!4346669 (= lt!1561283 Unit!70691)))

(declare-fun lt!1561271 () Unit!70623)

(assert (=> b!4346669 (= lt!1561271 (forallContained!1685 (toList!2862 lt!1561263) lambda!138449 (h!54330 lt!1560862)))))

(assert (=> b!4346669 (contains!10943 lt!1561263 (_1!27357 (h!54330 lt!1560862)))))

(declare-fun lt!1561279 () Unit!70623)

(declare-fun Unit!70692 () Unit!70623)

(assert (=> b!4346669 (= lt!1561279 Unit!70692)))

(assert (=> b!4346669 (contains!10943 lt!1561277 (_1!27357 (h!54330 lt!1560862)))))

(declare-fun lt!1561273 () Unit!70623)

(declare-fun Unit!70693 () Unit!70623)

(assert (=> b!4346669 (= lt!1561273 Unit!70693)))

(assert (=> b!4346669 (forall!9035 lt!1560862 lambda!138449)))

(declare-fun lt!1561272 () Unit!70623)

(declare-fun Unit!70694 () Unit!70623)

(assert (=> b!4346669 (= lt!1561272 Unit!70694)))

(assert (=> b!4346669 call!302208))

(declare-fun lt!1561275 () Unit!70623)

(declare-fun Unit!70695 () Unit!70623)

(assert (=> b!4346669 (= lt!1561275 Unit!70695)))

(declare-fun lt!1561264 () Unit!70623)

(declare-fun Unit!70696 () Unit!70623)

(assert (=> b!4346669 (= lt!1561264 Unit!70696)))

(declare-fun lt!1561267 () Unit!70623)

(assert (=> b!4346669 (= lt!1561267 (addForallContainsKeyThenBeforeAdding!45 lt!1560859 lt!1561277 (_1!27357 (h!54330 lt!1560862)) (_2!27357 (h!54330 lt!1560862))))))

(assert (=> b!4346669 (forall!9035 (toList!2862 lt!1560859) lambda!138449)))

(declare-fun lt!1561278 () Unit!70623)

(assert (=> b!4346669 (= lt!1561278 lt!1561267)))

(assert (=> b!4346669 (forall!9035 (toList!2862 lt!1560859) lambda!138449)))

(declare-fun lt!1561282 () Unit!70623)

(declare-fun Unit!70697 () Unit!70623)

(assert (=> b!4346669 (= lt!1561282 Unit!70697)))

(declare-fun res!1784872 () Bool)

(assert (=> b!4346669 (= res!1784872 (forall!9035 lt!1560862 lambda!138449))))

(declare-fun e!2704867 () Bool)

(assert (=> b!4346669 (=> (not res!1784872) (not e!2704867))))

(assert (=> b!4346669 e!2704867))

(declare-fun lt!1561265 () Unit!70623)

(declare-fun Unit!70698 () Unit!70623)

(assert (=> b!4346669 (= lt!1561265 Unit!70698)))

(declare-fun b!4346670 () Bool)

(assert (=> b!4346670 (= e!2704867 (forall!9035 (toList!2862 lt!1560859) lambda!138449))))

(assert (= (and d!1283511 c!739019) b!4346666))

(assert (= (and d!1283511 (not c!739019)) b!4346669))

(assert (= (and b!4346669 res!1784872) b!4346670))

(assert (= (or b!4346666 b!4346669) bm!302201))

(assert (= (or b!4346666 b!4346669) bm!302202))

(assert (= (or b!4346666 b!4346669) bm!302203))

(assert (= (and d!1283511 res!1784870) b!4346667))

(assert (= (and b!4346667 res!1784871) b!4346668))

(declare-fun m!4955161 () Bool)

(assert (=> b!4346669 m!4955161))

(declare-fun m!4955163 () Bool)

(assert (=> b!4346669 m!4955163))

(declare-fun m!4955165 () Bool)

(assert (=> b!4346669 m!4955165))

(declare-fun m!4955167 () Bool)

(assert (=> b!4346669 m!4955167))

(declare-fun m!4955169 () Bool)

(assert (=> b!4346669 m!4955169))

(declare-fun m!4955171 () Bool)

(assert (=> b!4346669 m!4955171))

(declare-fun m!4955173 () Bool)

(assert (=> b!4346669 m!4955173))

(assert (=> b!4346669 m!4955165))

(assert (=> b!4346669 m!4955163))

(declare-fun m!4955175 () Bool)

(assert (=> b!4346669 m!4955175))

(declare-fun m!4955177 () Bool)

(assert (=> b!4346669 m!4955177))

(assert (=> b!4346669 m!4955171))

(declare-fun m!4955179 () Bool)

(assert (=> b!4346669 m!4955179))

(assert (=> b!4346670 m!4955163))

(declare-fun m!4955181 () Bool)

(assert (=> bm!302201 m!4955181))

(declare-fun m!4955183 () Bool)

(assert (=> d!1283511 m!4955183))

(assert (=> d!1283511 m!4955123))

(declare-fun m!4955185 () Bool)

(assert (=> bm!302203 m!4955185))

(declare-fun m!4955187 () Bool)

(assert (=> b!4346668 m!4955187))

(declare-fun m!4955189 () Bool)

(assert (=> b!4346667 m!4955189))

(declare-fun m!4955191 () Bool)

(assert (=> bm!302202 m!4955191))

(assert (=> b!4346388 d!1283511))

(declare-fun bs!627973 () Bool)

(declare-fun b!4346671 () Bool)

(assert (= bs!627973 (and b!4346671 b!4346648)))

(declare-fun lambda!138451 () Int)

(assert (=> bs!627973 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138451 lambda!138442))))

(declare-fun bs!627974 () Bool)

(assert (= bs!627974 (and b!4346671 b!4346669)))

(assert (=> bs!627974 (= lambda!138451 lambda!138448)))

(declare-fun bs!627975 () Bool)

(assert (= bs!627975 (and b!4346671 d!1283433)))

(assert (=> bs!627975 (= (= lt!1560859 lt!1561239) (= lambda!138451 lambda!138445))))

(declare-fun bs!627976 () Bool)

(assert (= bs!627976 (and b!4346671 b!4346651)))

(assert (=> bs!627976 (= (= lt!1560859 lt!1561247) (= lambda!138451 lambda!138444))))

(declare-fun bs!627977 () Bool)

(assert (= bs!627977 (and b!4346671 d!1283389)))

(assert (=> bs!627977 (not (= lambda!138451 lambda!138344))))

(declare-fun bs!627978 () Bool)

(assert (= bs!627978 (and b!4346671 d!1283511)))

(assert (=> bs!627978 (= (= lt!1560859 lt!1561269) (= lambda!138451 lambda!138450))))

(declare-fun bs!627979 () Bool)

(assert (= bs!627979 (and b!4346671 b!4346666)))

(assert (=> bs!627979 (= lambda!138451 lambda!138447)))

(assert (=> bs!627976 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138451 lambda!138443))))

(assert (=> bs!627974 (= (= lt!1560859 lt!1561277) (= lambda!138451 lambda!138449))))

(assert (=> b!4346671 true))

(declare-fun bs!627980 () Bool)

(declare-fun b!4346674 () Bool)

(assert (= bs!627980 (and b!4346674 b!4346648)))

(declare-fun lambda!138452 () Int)

(assert (=> bs!627980 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138452 lambda!138442))))

(declare-fun bs!627981 () Bool)

(assert (= bs!627981 (and b!4346674 b!4346669)))

(assert (=> bs!627981 (= lambda!138452 lambda!138448)))

(declare-fun bs!627982 () Bool)

(assert (= bs!627982 (and b!4346674 d!1283433)))

(assert (=> bs!627982 (= (= lt!1560859 lt!1561239) (= lambda!138452 lambda!138445))))

(declare-fun bs!627983 () Bool)

(assert (= bs!627983 (and b!4346674 b!4346651)))

(assert (=> bs!627983 (= (= lt!1560859 lt!1561247) (= lambda!138452 lambda!138444))))

(declare-fun bs!627984 () Bool)

(assert (= bs!627984 (and b!4346674 d!1283389)))

(assert (=> bs!627984 (not (= lambda!138452 lambda!138344))))

(declare-fun bs!627985 () Bool)

(assert (= bs!627985 (and b!4346674 b!4346671)))

(assert (=> bs!627985 (= lambda!138452 lambda!138451)))

(declare-fun bs!627986 () Bool)

(assert (= bs!627986 (and b!4346674 d!1283511)))

(assert (=> bs!627986 (= (= lt!1560859 lt!1561269) (= lambda!138452 lambda!138450))))

(declare-fun bs!627987 () Bool)

(assert (= bs!627987 (and b!4346674 b!4346666)))

(assert (=> bs!627987 (= lambda!138452 lambda!138447)))

(assert (=> bs!627983 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138452 lambda!138443))))

(assert (=> bs!627981 (= (= lt!1560859 lt!1561277) (= lambda!138452 lambda!138449))))

(assert (=> b!4346674 true))

(declare-fun lt!1561298 () ListMap!2105)

(declare-fun lambda!138453 () Int)

(assert (=> bs!627980 (= (= lt!1561298 (+!550 lt!1560859 lt!1560867)) (= lambda!138453 lambda!138442))))

(assert (=> b!4346674 (= (= lt!1561298 lt!1560859) (= lambda!138453 lambda!138452))))

(assert (=> bs!627981 (= (= lt!1561298 lt!1560859) (= lambda!138453 lambda!138448))))

(assert (=> bs!627982 (= (= lt!1561298 lt!1561239) (= lambda!138453 lambda!138445))))

(assert (=> bs!627983 (= (= lt!1561298 lt!1561247) (= lambda!138453 lambda!138444))))

(assert (=> bs!627984 (not (= lambda!138453 lambda!138344))))

(assert (=> bs!627985 (= (= lt!1561298 lt!1560859) (= lambda!138453 lambda!138451))))

(assert (=> bs!627986 (= (= lt!1561298 lt!1561269) (= lambda!138453 lambda!138450))))

(assert (=> bs!627987 (= (= lt!1561298 lt!1560859) (= lambda!138453 lambda!138447))))

(assert (=> bs!627983 (= (= lt!1561298 (+!550 lt!1560859 lt!1560867)) (= lambda!138453 lambda!138443))))

(assert (=> bs!627981 (= (= lt!1561298 lt!1561277) (= lambda!138453 lambda!138449))))

(assert (=> b!4346674 true))

(declare-fun bs!627988 () Bool)

(declare-fun d!1283513 () Bool)

(assert (= bs!627988 (and d!1283513 b!4346648)))

(declare-fun lt!1561290 () ListMap!2105)

(declare-fun lambda!138454 () Int)

(assert (=> bs!627988 (= (= lt!1561290 (+!550 lt!1560859 lt!1560867)) (= lambda!138454 lambda!138442))))

(declare-fun bs!627989 () Bool)

(assert (= bs!627989 (and d!1283513 b!4346669)))

(assert (=> bs!627989 (= (= lt!1561290 lt!1560859) (= lambda!138454 lambda!138448))))

(declare-fun bs!627990 () Bool)

(assert (= bs!627990 (and d!1283513 d!1283433)))

(assert (=> bs!627990 (= (= lt!1561290 lt!1561239) (= lambda!138454 lambda!138445))))

(declare-fun bs!627991 () Bool)

(assert (= bs!627991 (and d!1283513 b!4346651)))

(assert (=> bs!627991 (= (= lt!1561290 lt!1561247) (= lambda!138454 lambda!138444))))

(declare-fun bs!627992 () Bool)

(assert (= bs!627992 (and d!1283513 d!1283389)))

(assert (=> bs!627992 (not (= lambda!138454 lambda!138344))))

(declare-fun bs!627993 () Bool)

(assert (= bs!627993 (and d!1283513 b!4346671)))

(assert (=> bs!627993 (= (= lt!1561290 lt!1560859) (= lambda!138454 lambda!138451))))

(declare-fun bs!627994 () Bool)

(assert (= bs!627994 (and d!1283513 d!1283511)))

(assert (=> bs!627994 (= (= lt!1561290 lt!1561269) (= lambda!138454 lambda!138450))))

(declare-fun bs!627995 () Bool)

(assert (= bs!627995 (and d!1283513 b!4346666)))

(assert (=> bs!627995 (= (= lt!1561290 lt!1560859) (= lambda!138454 lambda!138447))))

(declare-fun bs!627996 () Bool)

(assert (= bs!627996 (and d!1283513 b!4346674)))

(assert (=> bs!627996 (= (= lt!1561290 lt!1560859) (= lambda!138454 lambda!138452))))

(assert (=> bs!627996 (= (= lt!1561290 lt!1561298) (= lambda!138454 lambda!138453))))

(assert (=> bs!627991 (= (= lt!1561290 (+!550 lt!1560859 lt!1560867)) (= lambda!138454 lambda!138443))))

(assert (=> bs!627989 (= (= lt!1561290 lt!1561277) (= lambda!138454 lambda!138449))))

(assert (=> d!1283513 true))

(declare-fun e!2704871 () ListMap!2105)

(assert (=> b!4346671 (= e!2704871 lt!1560859)))

(declare-fun lt!1561297 () Unit!70623)

(declare-fun call!302209 () Unit!70623)

(assert (=> b!4346671 (= lt!1561297 call!302209)))

(declare-fun call!302211 () Bool)

(assert (=> b!4346671 call!302211))

(declare-fun lt!1561295 () Unit!70623)

(assert (=> b!4346671 (= lt!1561295 lt!1561297)))

(declare-fun call!302210 () Bool)

(assert (=> b!4346671 call!302210))

(declare-fun lt!1561291 () Unit!70623)

(declare-fun Unit!70701 () Unit!70623)

(assert (=> b!4346671 (= lt!1561291 Unit!70701)))

(declare-fun e!2704869 () Bool)

(assert (=> d!1283513 e!2704869))

(declare-fun res!1784873 () Bool)

(assert (=> d!1283513 (=> (not res!1784873) (not e!2704869))))

(assert (=> d!1283513 (= res!1784873 (forall!9035 newBucket!200 lambda!138454))))

(assert (=> d!1283513 (= lt!1561290 e!2704871)))

(declare-fun c!739020 () Bool)

(assert (=> d!1283513 (= c!739020 ((_ is Nil!48805) newBucket!200))))

(assert (=> d!1283513 (noDuplicateKeys!439 newBucket!200)))

(assert (=> d!1283513 (= (addToMapMapFromBucket!147 newBucket!200 lt!1560859) lt!1561290)))

(declare-fun b!4346672 () Bool)

(declare-fun res!1784874 () Bool)

(assert (=> b!4346672 (=> (not res!1784874) (not e!2704869))))

(assert (=> b!4346672 (= res!1784874 (forall!9035 (toList!2862 lt!1560859) lambda!138454))))

(declare-fun bm!302204 () Bool)

(assert (=> bm!302204 (= call!302209 (lemmaContainsAllItsOwnKeys!45 lt!1560859))))

(declare-fun bm!302205 () Bool)

(assert (=> bm!302205 (= call!302210 (forall!9035 (ite c!739020 (toList!2862 lt!1560859) (t!355849 newBucket!200)) (ite c!739020 lambda!138451 lambda!138453)))))

(declare-fun b!4346673 () Bool)

(assert (=> b!4346673 (= e!2704869 (invariantList!652 (toList!2862 lt!1561290)))))

(declare-fun lt!1561284 () ListMap!2105)

(declare-fun bm!302206 () Bool)

(assert (=> bm!302206 (= call!302211 (forall!9035 (ite c!739020 (toList!2862 lt!1560859) (toList!2862 lt!1561284)) (ite c!739020 lambda!138451 lambda!138453)))))

(assert (=> b!4346674 (= e!2704871 lt!1561298)))

(assert (=> b!4346674 (= lt!1561284 (+!550 lt!1560859 (h!54330 newBucket!200)))))

(assert (=> b!4346674 (= lt!1561298 (addToMapMapFromBucket!147 (t!355849 newBucket!200) (+!550 lt!1560859 (h!54330 newBucket!200))))))

(declare-fun lt!1561302 () Unit!70623)

(assert (=> b!4346674 (= lt!1561302 call!302209)))

(assert (=> b!4346674 (forall!9035 (toList!2862 lt!1560859) lambda!138452)))

(declare-fun lt!1561289 () Unit!70623)

(assert (=> b!4346674 (= lt!1561289 lt!1561302)))

(assert (=> b!4346674 (forall!9035 (toList!2862 lt!1561284) lambda!138453)))

(declare-fun lt!1561287 () Unit!70623)

(declare-fun Unit!70702 () Unit!70623)

(assert (=> b!4346674 (= lt!1561287 Unit!70702)))

(assert (=> b!4346674 call!302210))

(declare-fun lt!1561301 () Unit!70623)

(declare-fun Unit!70703 () Unit!70623)

(assert (=> b!4346674 (= lt!1561301 Unit!70703)))

(declare-fun lt!1561304 () Unit!70623)

(declare-fun Unit!70704 () Unit!70623)

(assert (=> b!4346674 (= lt!1561304 Unit!70704)))

(declare-fun lt!1561292 () Unit!70623)

(assert (=> b!4346674 (= lt!1561292 (forallContained!1685 (toList!2862 lt!1561284) lambda!138453 (h!54330 newBucket!200)))))

(assert (=> b!4346674 (contains!10943 lt!1561284 (_1!27357 (h!54330 newBucket!200)))))

(declare-fun lt!1561300 () Unit!70623)

(declare-fun Unit!70705 () Unit!70623)

(assert (=> b!4346674 (= lt!1561300 Unit!70705)))

(assert (=> b!4346674 (contains!10943 lt!1561298 (_1!27357 (h!54330 newBucket!200)))))

(declare-fun lt!1561294 () Unit!70623)

(declare-fun Unit!70706 () Unit!70623)

(assert (=> b!4346674 (= lt!1561294 Unit!70706)))

(assert (=> b!4346674 (forall!9035 newBucket!200 lambda!138453)))

(declare-fun lt!1561293 () Unit!70623)

(declare-fun Unit!70707 () Unit!70623)

(assert (=> b!4346674 (= lt!1561293 Unit!70707)))

(assert (=> b!4346674 call!302211))

(declare-fun lt!1561296 () Unit!70623)

(declare-fun Unit!70708 () Unit!70623)

(assert (=> b!4346674 (= lt!1561296 Unit!70708)))

(declare-fun lt!1561285 () Unit!70623)

(declare-fun Unit!70709 () Unit!70623)

(assert (=> b!4346674 (= lt!1561285 Unit!70709)))

(declare-fun lt!1561288 () Unit!70623)

(assert (=> b!4346674 (= lt!1561288 (addForallContainsKeyThenBeforeAdding!45 lt!1560859 lt!1561298 (_1!27357 (h!54330 newBucket!200)) (_2!27357 (h!54330 newBucket!200))))))

(assert (=> b!4346674 (forall!9035 (toList!2862 lt!1560859) lambda!138453)))

(declare-fun lt!1561299 () Unit!70623)

(assert (=> b!4346674 (= lt!1561299 lt!1561288)))

(assert (=> b!4346674 (forall!9035 (toList!2862 lt!1560859) lambda!138453)))

(declare-fun lt!1561303 () Unit!70623)

(declare-fun Unit!70710 () Unit!70623)

(assert (=> b!4346674 (= lt!1561303 Unit!70710)))

(declare-fun res!1784875 () Bool)

(assert (=> b!4346674 (= res!1784875 (forall!9035 newBucket!200 lambda!138453))))

(declare-fun e!2704870 () Bool)

(assert (=> b!4346674 (=> (not res!1784875) (not e!2704870))))

(assert (=> b!4346674 e!2704870))

(declare-fun lt!1561286 () Unit!70623)

(declare-fun Unit!70711 () Unit!70623)

(assert (=> b!4346674 (= lt!1561286 Unit!70711)))

(declare-fun b!4346675 () Bool)

(assert (=> b!4346675 (= e!2704870 (forall!9035 (toList!2862 lt!1560859) lambda!138453))))

(assert (= (and d!1283513 c!739020) b!4346671))

(assert (= (and d!1283513 (not c!739020)) b!4346674))

(assert (= (and b!4346674 res!1784875) b!4346675))

(assert (= (or b!4346671 b!4346674) bm!302204))

(assert (= (or b!4346671 b!4346674) bm!302205))

(assert (= (or b!4346671 b!4346674) bm!302206))

(assert (= (and d!1283513 res!1784873) b!4346672))

(assert (= (and b!4346672 res!1784874) b!4346673))

(declare-fun m!4955193 () Bool)

(assert (=> b!4346674 m!4955193))

(declare-fun m!4955195 () Bool)

(assert (=> b!4346674 m!4955195))

(declare-fun m!4955197 () Bool)

(assert (=> b!4346674 m!4955197))

(declare-fun m!4955199 () Bool)

(assert (=> b!4346674 m!4955199))

(declare-fun m!4955201 () Bool)

(assert (=> b!4346674 m!4955201))

(declare-fun m!4955203 () Bool)

(assert (=> b!4346674 m!4955203))

(declare-fun m!4955205 () Bool)

(assert (=> b!4346674 m!4955205))

(assert (=> b!4346674 m!4955197))

(assert (=> b!4346674 m!4955195))

(declare-fun m!4955207 () Bool)

(assert (=> b!4346674 m!4955207))

(declare-fun m!4955209 () Bool)

(assert (=> b!4346674 m!4955209))

(assert (=> b!4346674 m!4955203))

(declare-fun m!4955211 () Bool)

(assert (=> b!4346674 m!4955211))

(assert (=> b!4346675 m!4955195))

(assert (=> bm!302204 m!4955181))

(declare-fun m!4955213 () Bool)

(assert (=> d!1283513 m!4955213))

(assert (=> d!1283513 m!4954541))

(declare-fun m!4955215 () Bool)

(assert (=> bm!302206 m!4955215))

(declare-fun m!4955217 () Bool)

(assert (=> b!4346673 m!4955217))

(declare-fun m!4955219 () Bool)

(assert (=> b!4346672 m!4955219))

(declare-fun m!4955221 () Bool)

(assert (=> bm!302205 m!4955221))

(assert (=> b!4346388 d!1283513))

(declare-fun bs!627997 () Bool)

(declare-fun d!1283515 () Bool)

(assert (= bs!627997 (and d!1283515 start!419584)))

(declare-fun lambda!138455 () Int)

(assert (=> bs!627997 (= lambda!138455 lambda!138341)))

(declare-fun bs!627998 () Bool)

(assert (= bs!627998 (and d!1283515 d!1283411)))

(assert (=> bs!627998 (= lambda!138455 lambda!138385)))

(declare-fun bs!627999 () Bool)

(assert (= bs!627999 (and d!1283515 d!1283421)))

(assert (=> bs!627999 (= lambda!138455 lambda!138394)))

(declare-fun bs!628000 () Bool)

(assert (= bs!628000 (and d!1283515 d!1283509)))

(assert (=> bs!628000 (= lambda!138455 lambda!138446)))

(declare-fun lt!1561305 () ListMap!2105)

(assert (=> d!1283515 (invariantList!652 (toList!2862 lt!1561305))))

(declare-fun e!2704872 () ListMap!2105)

(assert (=> d!1283515 (= lt!1561305 e!2704872)))

(declare-fun c!739021 () Bool)

(assert (=> d!1283515 (= c!739021 ((_ is Cons!48806) (toList!2861 lt!1560855)))))

(assert (=> d!1283515 (forall!9033 (toList!2861 lt!1560855) lambda!138455)))

(assert (=> d!1283515 (= (extractMap!498 (toList!2861 lt!1560855)) lt!1561305)))

(declare-fun b!4346676 () Bool)

(assert (=> b!4346676 (= e!2704872 (addToMapMapFromBucket!147 (_2!27358 (h!54331 (toList!2861 lt!1560855))) (extractMap!498 (t!355850 (toList!2861 lt!1560855)))))))

(declare-fun b!4346677 () Bool)

(assert (=> b!4346677 (= e!2704872 (ListMap!2106 Nil!48805))))

(assert (= (and d!1283515 c!739021) b!4346676))

(assert (= (and d!1283515 (not c!739021)) b!4346677))

(declare-fun m!4955223 () Bool)

(assert (=> d!1283515 m!4955223))

(declare-fun m!4955225 () Bool)

(assert (=> d!1283515 m!4955225))

(declare-fun m!4955227 () Bool)

(assert (=> b!4346676 m!4955227))

(assert (=> b!4346676 m!4955227))

(declare-fun m!4955229 () Bool)

(assert (=> b!4346676 m!4955229))

(assert (=> b!4346388 d!1283515))

(declare-fun d!1283517 () Bool)

(declare-fun e!2704873 () Bool)

(assert (=> d!1283517 e!2704873))

(declare-fun res!1784877 () Bool)

(assert (=> d!1283517 (=> (not res!1784877) (not e!2704873))))

(declare-fun lt!1561309 () ListMap!2105)

(assert (=> d!1283517 (= res!1784877 (contains!10943 lt!1561309 (_1!27357 lt!1560867)))))

(declare-fun lt!1561306 () List!48929)

(assert (=> d!1283517 (= lt!1561309 (ListMap!2106 lt!1561306))))

(declare-fun lt!1561307 () Unit!70623)

(declare-fun lt!1561308 () Unit!70623)

(assert (=> d!1283517 (= lt!1561307 lt!1561308)))

(assert (=> d!1283517 (= (getValueByKey!402 lt!1561306 (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867)))))

(assert (=> d!1283517 (= lt!1561308 (lemmaContainsTupThenGetReturnValue!186 lt!1561306 (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(assert (=> d!1283517 (= lt!1561306 (insertNoDuplicatedKeys!85 (toList!2862 lt!1560852) (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(assert (=> d!1283517 (= (+!550 lt!1560852 lt!1560867) lt!1561309)))

(declare-fun b!4346678 () Bool)

(declare-fun res!1784876 () Bool)

(assert (=> b!4346678 (=> (not res!1784876) (not e!2704873))))

(assert (=> b!4346678 (= res!1784876 (= (getValueByKey!402 (toList!2862 lt!1561309) (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867))))))

(declare-fun b!4346679 () Bool)

(assert (=> b!4346679 (= e!2704873 (contains!10948 (toList!2862 lt!1561309) lt!1560867))))

(assert (= (and d!1283517 res!1784877) b!4346678))

(assert (= (and b!4346678 res!1784876) b!4346679))

(declare-fun m!4955231 () Bool)

(assert (=> d!1283517 m!4955231))

(declare-fun m!4955233 () Bool)

(assert (=> d!1283517 m!4955233))

(declare-fun m!4955235 () Bool)

(assert (=> d!1283517 m!4955235))

(declare-fun m!4955237 () Bool)

(assert (=> d!1283517 m!4955237))

(declare-fun m!4955239 () Bool)

(assert (=> b!4346678 m!4955239))

(declare-fun m!4955241 () Bool)

(assert (=> b!4346679 m!4955241))

(assert (=> b!4346388 d!1283517))

(declare-fun d!1283519 () Bool)

(assert (=> d!1283519 (= (eq!229 lt!1560857 lt!1560861) (= (content!7661 (toList!2862 lt!1560857)) (content!7661 (toList!2862 lt!1560861))))))

(declare-fun bs!628001 () Bool)

(assert (= bs!628001 d!1283519))

(declare-fun m!4955243 () Bool)

(assert (=> bs!628001 m!4955243))

(declare-fun m!4955245 () Bool)

(assert (=> bs!628001 m!4955245))

(assert (=> b!4346388 d!1283519))

(declare-fun bs!628002 () Bool)

(declare-fun b!4346680 () Bool)

(assert (= bs!628002 (and b!4346680 b!4346648)))

(declare-fun lambda!138456 () Int)

(assert (=> bs!628002 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138456 lambda!138442))))

(declare-fun bs!628003 () Bool)

(assert (= bs!628003 (and b!4346680 d!1283513)))

(assert (=> bs!628003 (= (= lt!1560859 lt!1561290) (= lambda!138456 lambda!138454))))

(declare-fun bs!628004 () Bool)

(assert (= bs!628004 (and b!4346680 b!4346669)))

(assert (=> bs!628004 (= lambda!138456 lambda!138448)))

(declare-fun bs!628005 () Bool)

(assert (= bs!628005 (and b!4346680 d!1283433)))

(assert (=> bs!628005 (= (= lt!1560859 lt!1561239) (= lambda!138456 lambda!138445))))

(declare-fun bs!628006 () Bool)

(assert (= bs!628006 (and b!4346680 b!4346651)))

(assert (=> bs!628006 (= (= lt!1560859 lt!1561247) (= lambda!138456 lambda!138444))))

(declare-fun bs!628007 () Bool)

(assert (= bs!628007 (and b!4346680 d!1283389)))

(assert (=> bs!628007 (not (= lambda!138456 lambda!138344))))

(declare-fun bs!628008 () Bool)

(assert (= bs!628008 (and b!4346680 b!4346671)))

(assert (=> bs!628008 (= lambda!138456 lambda!138451)))

(declare-fun bs!628009 () Bool)

(assert (= bs!628009 (and b!4346680 d!1283511)))

(assert (=> bs!628009 (= (= lt!1560859 lt!1561269) (= lambda!138456 lambda!138450))))

(declare-fun bs!628010 () Bool)

(assert (= bs!628010 (and b!4346680 b!4346666)))

(assert (=> bs!628010 (= lambda!138456 lambda!138447)))

(declare-fun bs!628011 () Bool)

(assert (= bs!628011 (and b!4346680 b!4346674)))

(assert (=> bs!628011 (= lambda!138456 lambda!138452)))

(assert (=> bs!628011 (= (= lt!1560859 lt!1561298) (= lambda!138456 lambda!138453))))

(assert (=> bs!628006 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138456 lambda!138443))))

(assert (=> bs!628004 (= (= lt!1560859 lt!1561277) (= lambda!138456 lambda!138449))))

(assert (=> b!4346680 true))

(declare-fun bs!628012 () Bool)

(declare-fun b!4346683 () Bool)

(assert (= bs!628012 (and b!4346683 b!4346648)))

(declare-fun lambda!138457 () Int)

(assert (=> bs!628012 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138457 lambda!138442))))

(declare-fun bs!628013 () Bool)

(assert (= bs!628013 (and b!4346683 d!1283513)))

(assert (=> bs!628013 (= (= lt!1560859 lt!1561290) (= lambda!138457 lambda!138454))))

(declare-fun bs!628014 () Bool)

(assert (= bs!628014 (and b!4346683 b!4346669)))

(assert (=> bs!628014 (= lambda!138457 lambda!138448)))

(declare-fun bs!628015 () Bool)

(assert (= bs!628015 (and b!4346683 d!1283433)))

(assert (=> bs!628015 (= (= lt!1560859 lt!1561239) (= lambda!138457 lambda!138445))))

(declare-fun bs!628016 () Bool)

(assert (= bs!628016 (and b!4346683 b!4346651)))

(assert (=> bs!628016 (= (= lt!1560859 lt!1561247) (= lambda!138457 lambda!138444))))

(declare-fun bs!628017 () Bool)

(assert (= bs!628017 (and b!4346683 d!1283389)))

(assert (=> bs!628017 (not (= lambda!138457 lambda!138344))))

(declare-fun bs!628018 () Bool)

(assert (= bs!628018 (and b!4346683 b!4346671)))

(assert (=> bs!628018 (= lambda!138457 lambda!138451)))

(declare-fun bs!628019 () Bool)

(assert (= bs!628019 (and b!4346683 d!1283511)))

(assert (=> bs!628019 (= (= lt!1560859 lt!1561269) (= lambda!138457 lambda!138450))))

(declare-fun bs!628020 () Bool)

(assert (= bs!628020 (and b!4346683 b!4346674)))

(assert (=> bs!628020 (= lambda!138457 lambda!138452)))

(assert (=> bs!628020 (= (= lt!1560859 lt!1561298) (= lambda!138457 lambda!138453))))

(assert (=> bs!628016 (= (= lt!1560859 (+!550 lt!1560859 lt!1560867)) (= lambda!138457 lambda!138443))))

(assert (=> bs!628014 (= (= lt!1560859 lt!1561277) (= lambda!138457 lambda!138449))))

(declare-fun bs!628021 () Bool)

(assert (= bs!628021 (and b!4346683 b!4346666)))

(assert (=> bs!628021 (= lambda!138457 lambda!138447)))

(declare-fun bs!628022 () Bool)

(assert (= bs!628022 (and b!4346683 b!4346680)))

(assert (=> bs!628022 (= lambda!138457 lambda!138456)))

(assert (=> b!4346683 true))

(declare-fun lambda!138458 () Int)

(declare-fun lt!1561324 () ListMap!2105)

(assert (=> bs!628012 (= (= lt!1561324 (+!550 lt!1560859 lt!1560867)) (= lambda!138458 lambda!138442))))

(assert (=> bs!628013 (= (= lt!1561324 lt!1561290) (= lambda!138458 lambda!138454))))

(assert (=> bs!628014 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138448))))

(assert (=> bs!628015 (= (= lt!1561324 lt!1561239) (= lambda!138458 lambda!138445))))

(assert (=> bs!628016 (= (= lt!1561324 lt!1561247) (= lambda!138458 lambda!138444))))

(assert (=> bs!628017 (not (= lambda!138458 lambda!138344))))

(assert (=> bs!628018 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138451))))

(assert (=> bs!628019 (= (= lt!1561324 lt!1561269) (= lambda!138458 lambda!138450))))

(assert (=> bs!628020 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138452))))

(assert (=> bs!628020 (= (= lt!1561324 lt!1561298) (= lambda!138458 lambda!138453))))

(assert (=> bs!628016 (= (= lt!1561324 (+!550 lt!1560859 lt!1560867)) (= lambda!138458 lambda!138443))))

(assert (=> b!4346683 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138457))))

(assert (=> bs!628014 (= (= lt!1561324 lt!1561277) (= lambda!138458 lambda!138449))))

(assert (=> bs!628021 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138447))))

(assert (=> bs!628022 (= (= lt!1561324 lt!1560859) (= lambda!138458 lambda!138456))))

(assert (=> b!4346683 true))

(declare-fun bs!628023 () Bool)

(declare-fun d!1283521 () Bool)

(assert (= bs!628023 (and d!1283521 b!4346648)))

(declare-fun lambda!138459 () Int)

(declare-fun lt!1561316 () ListMap!2105)

(assert (=> bs!628023 (= (= lt!1561316 (+!550 lt!1560859 lt!1560867)) (= lambda!138459 lambda!138442))))

(declare-fun bs!628024 () Bool)

(assert (= bs!628024 (and d!1283521 d!1283513)))

(assert (=> bs!628024 (= (= lt!1561316 lt!1561290) (= lambda!138459 lambda!138454))))

(declare-fun bs!628025 () Bool)

(assert (= bs!628025 (and d!1283521 b!4346669)))

(assert (=> bs!628025 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138448))))

(declare-fun bs!628026 () Bool)

(assert (= bs!628026 (and d!1283521 d!1283433)))

(assert (=> bs!628026 (= (= lt!1561316 lt!1561239) (= lambda!138459 lambda!138445))))

(declare-fun bs!628027 () Bool)

(assert (= bs!628027 (and d!1283521 b!4346651)))

(assert (=> bs!628027 (= (= lt!1561316 lt!1561247) (= lambda!138459 lambda!138444))))

(declare-fun bs!628028 () Bool)

(assert (= bs!628028 (and d!1283521 d!1283389)))

(assert (=> bs!628028 (not (= lambda!138459 lambda!138344))))

(declare-fun bs!628029 () Bool)

(assert (= bs!628029 (and d!1283521 b!4346683)))

(assert (=> bs!628029 (= (= lt!1561316 lt!1561324) (= lambda!138459 lambda!138458))))

(declare-fun bs!628030 () Bool)

(assert (= bs!628030 (and d!1283521 b!4346671)))

(assert (=> bs!628030 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138451))))

(declare-fun bs!628031 () Bool)

(assert (= bs!628031 (and d!1283521 d!1283511)))

(assert (=> bs!628031 (= (= lt!1561316 lt!1561269) (= lambda!138459 lambda!138450))))

(declare-fun bs!628032 () Bool)

(assert (= bs!628032 (and d!1283521 b!4346674)))

(assert (=> bs!628032 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138452))))

(assert (=> bs!628032 (= (= lt!1561316 lt!1561298) (= lambda!138459 lambda!138453))))

(assert (=> bs!628027 (= (= lt!1561316 (+!550 lt!1560859 lt!1560867)) (= lambda!138459 lambda!138443))))

(assert (=> bs!628029 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138457))))

(assert (=> bs!628025 (= (= lt!1561316 lt!1561277) (= lambda!138459 lambda!138449))))

(declare-fun bs!628033 () Bool)

(assert (= bs!628033 (and d!1283521 b!4346666)))

(assert (=> bs!628033 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138447))))

(declare-fun bs!628034 () Bool)

(assert (= bs!628034 (and d!1283521 b!4346680)))

(assert (=> bs!628034 (= (= lt!1561316 lt!1560859) (= lambda!138459 lambda!138456))))

(assert (=> d!1283521 true))

(declare-fun e!2704876 () ListMap!2105)

(assert (=> b!4346680 (= e!2704876 lt!1560859)))

(declare-fun lt!1561323 () Unit!70623)

(declare-fun call!302212 () Unit!70623)

(assert (=> b!4346680 (= lt!1561323 call!302212)))

(declare-fun call!302214 () Bool)

(assert (=> b!4346680 call!302214))

(declare-fun lt!1561321 () Unit!70623)

(assert (=> b!4346680 (= lt!1561321 lt!1561323)))

(declare-fun call!302213 () Bool)

(assert (=> b!4346680 call!302213))

(declare-fun lt!1561317 () Unit!70623)

(declare-fun Unit!70713 () Unit!70623)

(assert (=> b!4346680 (= lt!1561317 Unit!70713)))

(declare-fun e!2704874 () Bool)

(assert (=> d!1283521 e!2704874))

(declare-fun res!1784878 () Bool)

(assert (=> d!1283521 (=> (not res!1784878) (not e!2704874))))

(assert (=> d!1283521 (= res!1784878 (forall!9035 lt!1560849 lambda!138459))))

(assert (=> d!1283521 (= lt!1561316 e!2704876)))

(declare-fun c!739022 () Bool)

(assert (=> d!1283521 (= c!739022 ((_ is Nil!48805) lt!1560849))))

(assert (=> d!1283521 (noDuplicateKeys!439 lt!1560849)))

(assert (=> d!1283521 (= (addToMapMapFromBucket!147 lt!1560849 lt!1560859) lt!1561316)))

(declare-fun b!4346681 () Bool)

(declare-fun res!1784879 () Bool)

(assert (=> b!4346681 (=> (not res!1784879) (not e!2704874))))

(assert (=> b!4346681 (= res!1784879 (forall!9035 (toList!2862 lt!1560859) lambda!138459))))

(declare-fun bm!302207 () Bool)

(assert (=> bm!302207 (= call!302212 (lemmaContainsAllItsOwnKeys!45 lt!1560859))))

(declare-fun bm!302208 () Bool)

(assert (=> bm!302208 (= call!302213 (forall!9035 (ite c!739022 (toList!2862 lt!1560859) (t!355849 lt!1560849)) (ite c!739022 lambda!138456 lambda!138458)))))

(declare-fun b!4346682 () Bool)

(assert (=> b!4346682 (= e!2704874 (invariantList!652 (toList!2862 lt!1561316)))))

(declare-fun bm!302209 () Bool)

(declare-fun lt!1561310 () ListMap!2105)

(assert (=> bm!302209 (= call!302214 (forall!9035 (ite c!739022 (toList!2862 lt!1560859) (toList!2862 lt!1561310)) (ite c!739022 lambda!138456 lambda!138458)))))

(assert (=> b!4346683 (= e!2704876 lt!1561324)))

(assert (=> b!4346683 (= lt!1561310 (+!550 lt!1560859 (h!54330 lt!1560849)))))

(assert (=> b!4346683 (= lt!1561324 (addToMapMapFromBucket!147 (t!355849 lt!1560849) (+!550 lt!1560859 (h!54330 lt!1560849))))))

(declare-fun lt!1561328 () Unit!70623)

(assert (=> b!4346683 (= lt!1561328 call!302212)))

(assert (=> b!4346683 (forall!9035 (toList!2862 lt!1560859) lambda!138457)))

(declare-fun lt!1561315 () Unit!70623)

(assert (=> b!4346683 (= lt!1561315 lt!1561328)))

(assert (=> b!4346683 (forall!9035 (toList!2862 lt!1561310) lambda!138458)))

(declare-fun lt!1561313 () Unit!70623)

(declare-fun Unit!70714 () Unit!70623)

(assert (=> b!4346683 (= lt!1561313 Unit!70714)))

(assert (=> b!4346683 call!302213))

(declare-fun lt!1561327 () Unit!70623)

(declare-fun Unit!70715 () Unit!70623)

(assert (=> b!4346683 (= lt!1561327 Unit!70715)))

(declare-fun lt!1561330 () Unit!70623)

(declare-fun Unit!70716 () Unit!70623)

(assert (=> b!4346683 (= lt!1561330 Unit!70716)))

(declare-fun lt!1561318 () Unit!70623)

(assert (=> b!4346683 (= lt!1561318 (forallContained!1685 (toList!2862 lt!1561310) lambda!138458 (h!54330 lt!1560849)))))

(assert (=> b!4346683 (contains!10943 lt!1561310 (_1!27357 (h!54330 lt!1560849)))))

(declare-fun lt!1561326 () Unit!70623)

(declare-fun Unit!70717 () Unit!70623)

(assert (=> b!4346683 (= lt!1561326 Unit!70717)))

(assert (=> b!4346683 (contains!10943 lt!1561324 (_1!27357 (h!54330 lt!1560849)))))

(declare-fun lt!1561320 () Unit!70623)

(declare-fun Unit!70718 () Unit!70623)

(assert (=> b!4346683 (= lt!1561320 Unit!70718)))

(assert (=> b!4346683 (forall!9035 lt!1560849 lambda!138458)))

(declare-fun lt!1561319 () Unit!70623)

(declare-fun Unit!70719 () Unit!70623)

(assert (=> b!4346683 (= lt!1561319 Unit!70719)))

(assert (=> b!4346683 call!302214))

(declare-fun lt!1561322 () Unit!70623)

(declare-fun Unit!70720 () Unit!70623)

(assert (=> b!4346683 (= lt!1561322 Unit!70720)))

(declare-fun lt!1561311 () Unit!70623)

(declare-fun Unit!70721 () Unit!70623)

(assert (=> b!4346683 (= lt!1561311 Unit!70721)))

(declare-fun lt!1561314 () Unit!70623)

(assert (=> b!4346683 (= lt!1561314 (addForallContainsKeyThenBeforeAdding!45 lt!1560859 lt!1561324 (_1!27357 (h!54330 lt!1560849)) (_2!27357 (h!54330 lt!1560849))))))

(assert (=> b!4346683 (forall!9035 (toList!2862 lt!1560859) lambda!138458)))

(declare-fun lt!1561325 () Unit!70623)

(assert (=> b!4346683 (= lt!1561325 lt!1561314)))

(assert (=> b!4346683 (forall!9035 (toList!2862 lt!1560859) lambda!138458)))

(declare-fun lt!1561329 () Unit!70623)

(declare-fun Unit!70722 () Unit!70623)

(assert (=> b!4346683 (= lt!1561329 Unit!70722)))

(declare-fun res!1784880 () Bool)

(assert (=> b!4346683 (= res!1784880 (forall!9035 lt!1560849 lambda!138458))))

(declare-fun e!2704875 () Bool)

(assert (=> b!4346683 (=> (not res!1784880) (not e!2704875))))

(assert (=> b!4346683 e!2704875))

(declare-fun lt!1561312 () Unit!70623)

(declare-fun Unit!70723 () Unit!70623)

(assert (=> b!4346683 (= lt!1561312 Unit!70723)))

(declare-fun b!4346684 () Bool)

(assert (=> b!4346684 (= e!2704875 (forall!9035 (toList!2862 lt!1560859) lambda!138458))))

(assert (= (and d!1283521 c!739022) b!4346680))

(assert (= (and d!1283521 (not c!739022)) b!4346683))

(assert (= (and b!4346683 res!1784880) b!4346684))

(assert (= (or b!4346680 b!4346683) bm!302207))

(assert (= (or b!4346680 b!4346683) bm!302208))

(assert (= (or b!4346680 b!4346683) bm!302209))

(assert (= (and d!1283521 res!1784878) b!4346681))

(assert (= (and b!4346681 res!1784879) b!4346682))

(declare-fun m!4955247 () Bool)

(assert (=> b!4346683 m!4955247))

(declare-fun m!4955249 () Bool)

(assert (=> b!4346683 m!4955249))

(declare-fun m!4955251 () Bool)

(assert (=> b!4346683 m!4955251))

(declare-fun m!4955253 () Bool)

(assert (=> b!4346683 m!4955253))

(declare-fun m!4955255 () Bool)

(assert (=> b!4346683 m!4955255))

(declare-fun m!4955257 () Bool)

(assert (=> b!4346683 m!4955257))

(declare-fun m!4955259 () Bool)

(assert (=> b!4346683 m!4955259))

(assert (=> b!4346683 m!4955251))

(assert (=> b!4346683 m!4955249))

(declare-fun m!4955261 () Bool)

(assert (=> b!4346683 m!4955261))

(declare-fun m!4955263 () Bool)

(assert (=> b!4346683 m!4955263))

(assert (=> b!4346683 m!4955257))

(declare-fun m!4955265 () Bool)

(assert (=> b!4346683 m!4955265))

(assert (=> b!4346684 m!4955249))

(assert (=> bm!302207 m!4955181))

(declare-fun m!4955267 () Bool)

(assert (=> d!1283521 m!4955267))

(declare-fun m!4955269 () Bool)

(assert (=> d!1283521 m!4955269))

(declare-fun m!4955271 () Bool)

(assert (=> bm!302209 m!4955271))

(declare-fun m!4955273 () Bool)

(assert (=> b!4346682 m!4955273))

(declare-fun m!4955275 () Bool)

(assert (=> b!4346681 m!4955275))

(declare-fun m!4955277 () Bool)

(assert (=> bm!302208 m!4955277))

(assert (=> b!4346388 d!1283521))

(declare-fun d!1283523 () Bool)

(assert (=> d!1283523 (= (eq!229 lt!1560870 lt!1560847) (= (content!7661 (toList!2862 lt!1560870)) (content!7661 (toList!2862 lt!1560847))))))

(declare-fun bs!628035 () Bool)

(assert (= bs!628035 d!1283523))

(declare-fun m!4955279 () Bool)

(assert (=> bs!628035 m!4955279))

(assert (=> bs!628035 m!4954577))

(assert (=> b!4346388 d!1283523))

(declare-fun bs!628036 () Bool)

(declare-fun d!1283525 () Bool)

(assert (= bs!628036 (and d!1283525 d!1283509)))

(declare-fun lambda!138462 () Int)

(assert (=> bs!628036 (not (= lambda!138462 lambda!138446))))

(declare-fun bs!628037 () Bool)

(assert (= bs!628037 (and d!1283525 start!419584)))

(assert (=> bs!628037 (not (= lambda!138462 lambda!138341))))

(declare-fun bs!628038 () Bool)

(assert (= bs!628038 (and d!1283525 d!1283411)))

(assert (=> bs!628038 (not (= lambda!138462 lambda!138385))))

(declare-fun bs!628039 () Bool)

(assert (= bs!628039 (and d!1283525 d!1283515)))

(assert (=> bs!628039 (not (= lambda!138462 lambda!138455))))

(declare-fun bs!628040 () Bool)

(assert (= bs!628040 (and d!1283525 d!1283421)))

(assert (=> bs!628040 (not (= lambda!138462 lambda!138394))))

(assert (=> d!1283525 true))

(assert (=> d!1283525 (= (allKeysSameHashInMap!543 lm!1707 hashF!1247) (forall!9033 (toList!2861 lm!1707) lambda!138462))))

(declare-fun bs!628041 () Bool)

(assert (= bs!628041 d!1283525))

(declare-fun m!4955281 () Bool)

(assert (=> bs!628041 m!4955281))

(assert (=> b!4346399 d!1283525))

(declare-fun d!1283527 () Bool)

(declare-fun res!1784885 () Bool)

(declare-fun e!2704881 () Bool)

(assert (=> d!1283527 (=> res!1784885 e!2704881)))

(assert (=> d!1283527 (= res!1784885 ((_ is Nil!48806) (toList!2861 lm!1707)))))

(assert (=> d!1283527 (= (forall!9033 (toList!2861 lm!1707) lambda!138341) e!2704881)))

(declare-fun b!4346691 () Bool)

(declare-fun e!2704882 () Bool)

(assert (=> b!4346691 (= e!2704881 e!2704882)))

(declare-fun res!1784886 () Bool)

(assert (=> b!4346691 (=> (not res!1784886) (not e!2704882))))

(declare-fun dynLambda!20597 (Int tuple2!48128) Bool)

(assert (=> b!4346691 (= res!1784886 (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lm!1707))))))

(declare-fun b!4346692 () Bool)

(assert (=> b!4346692 (= e!2704882 (forall!9033 (t!355850 (toList!2861 lm!1707)) lambda!138341))))

(assert (= (and d!1283527 (not res!1784885)) b!4346691))

(assert (= (and b!4346691 res!1784886) b!4346692))

(declare-fun b_lambda!130143 () Bool)

(assert (=> (not b_lambda!130143) (not b!4346691)))

(declare-fun m!4955283 () Bool)

(assert (=> b!4346691 m!4955283))

(declare-fun m!4955285 () Bool)

(assert (=> b!4346692 m!4955285))

(assert (=> start!419584 d!1283527))

(declare-fun d!1283529 () Bool)

(declare-fun isStrictlySorted!78 (List!48930) Bool)

(assert (=> d!1283529 (= (inv!64351 lm!1707) (isStrictlySorted!78 (toList!2861 lm!1707)))))

(declare-fun bs!628042 () Bool)

(assert (= bs!628042 d!1283529))

(declare-fun m!4955287 () Bool)

(assert (=> bs!628042 m!4955287))

(assert (=> start!419584 d!1283529))

(declare-fun d!1283531 () Bool)

(declare-fun res!1784887 () Bool)

(declare-fun e!2704883 () Bool)

(assert (=> d!1283531 (=> res!1784887 e!2704883)))

(assert (=> d!1283531 (= res!1784887 ((_ is Nil!48806) (toList!2861 lt!1560855)))))

(assert (=> d!1283531 (= (forall!9033 (toList!2861 lt!1560855) lambda!138341) e!2704883)))

(declare-fun b!4346693 () Bool)

(declare-fun e!2704884 () Bool)

(assert (=> b!4346693 (= e!2704883 e!2704884)))

(declare-fun res!1784888 () Bool)

(assert (=> b!4346693 (=> (not res!1784888) (not e!2704884))))

(assert (=> b!4346693 (= res!1784888 (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lt!1560855))))))

(declare-fun b!4346694 () Bool)

(assert (=> b!4346694 (= e!2704884 (forall!9033 (t!355850 (toList!2861 lt!1560855)) lambda!138341))))

(assert (= (and d!1283531 (not res!1784887)) b!4346693))

(assert (= (and b!4346693 res!1784888) b!4346694))

(declare-fun b_lambda!130145 () Bool)

(assert (=> (not b_lambda!130145) (not b!4346693)))

(declare-fun m!4955289 () Bool)

(assert (=> b!4346693 m!4955289))

(declare-fun m!4955291 () Bool)

(assert (=> b!4346694 m!4955291))

(assert (=> b!4346389 d!1283531))

(declare-fun d!1283533 () Bool)

(declare-fun e!2704885 () Bool)

(assert (=> d!1283533 e!2704885))

(declare-fun res!1784890 () Bool)

(assert (=> d!1283533 (=> (not res!1784890) (not e!2704885))))

(declare-fun lt!1561334 () ListLongMap!1511)

(assert (=> d!1283533 (= res!1784890 (contains!10942 lt!1561334 (_1!27358 lt!1560858)))))

(declare-fun lt!1561333 () List!48930)

(assert (=> d!1283533 (= lt!1561334 (ListLongMap!1512 lt!1561333))))

(declare-fun lt!1561331 () Unit!70623)

(declare-fun lt!1561332 () Unit!70623)

(assert (=> d!1283533 (= lt!1561331 lt!1561332)))

(assert (=> d!1283533 (= (getValueByKey!401 lt!1561333 (_1!27358 lt!1560858)) (Some!10414 (_2!27358 lt!1560858)))))

(assert (=> d!1283533 (= lt!1561332 (lemmaContainsTupThenGetReturnValue!184 lt!1561333 (_1!27358 lt!1560858) (_2!27358 lt!1560858)))))

(assert (=> d!1283533 (= lt!1561333 (insertStrictlySorted!108 (toList!2861 lm!1707) (_1!27358 lt!1560858) (_2!27358 lt!1560858)))))

(assert (=> d!1283533 (= (+!549 lm!1707 lt!1560858) lt!1561334)))

(declare-fun b!4346695 () Bool)

(declare-fun res!1784889 () Bool)

(assert (=> b!4346695 (=> (not res!1784889) (not e!2704885))))

(assert (=> b!4346695 (= res!1784889 (= (getValueByKey!401 (toList!2861 lt!1561334) (_1!27358 lt!1560858)) (Some!10414 (_2!27358 lt!1560858))))))

(declare-fun b!4346696 () Bool)

(assert (=> b!4346696 (= e!2704885 (contains!10944 (toList!2861 lt!1561334) lt!1560858))))

(assert (= (and d!1283533 res!1784890) b!4346695))

(assert (= (and b!4346695 res!1784889) b!4346696))

(declare-fun m!4955293 () Bool)

(assert (=> d!1283533 m!4955293))

(declare-fun m!4955295 () Bool)

(assert (=> d!1283533 m!4955295))

(declare-fun m!4955297 () Bool)

(assert (=> d!1283533 m!4955297))

(declare-fun m!4955299 () Bool)

(assert (=> d!1283533 m!4955299))

(declare-fun m!4955301 () Bool)

(assert (=> b!4346695 m!4955301))

(declare-fun m!4955303 () Bool)

(assert (=> b!4346696 m!4955303))

(assert (=> b!4346389 d!1283533))

(declare-fun d!1283535 () Bool)

(assert (=> d!1283535 (forall!9033 (toList!2861 (+!549 lm!1707 (tuple2!48129 hash!377 newBucket!200))) lambda!138341)))

(declare-fun lt!1561337 () Unit!70623)

(declare-fun choose!26683 (ListLongMap!1511 Int (_ BitVec 64) List!48929) Unit!70623)

(assert (=> d!1283535 (= lt!1561337 (choose!26683 lm!1707 lambda!138341 hash!377 newBucket!200))))

(declare-fun e!2704888 () Bool)

(assert (=> d!1283535 e!2704888))

(declare-fun res!1784893 () Bool)

(assert (=> d!1283535 (=> (not res!1784893) (not e!2704888))))

(assert (=> d!1283535 (= res!1784893 (forall!9033 (toList!2861 lm!1707) lambda!138341))))

(assert (=> d!1283535 (= (addValidProp!93 lm!1707 lambda!138341 hash!377 newBucket!200) lt!1561337)))

(declare-fun b!4346700 () Bool)

(assert (=> b!4346700 (= e!2704888 (dynLambda!20597 lambda!138341 (tuple2!48129 hash!377 newBucket!200)))))

(assert (= (and d!1283535 res!1784893) b!4346700))

(declare-fun b_lambda!130147 () Bool)

(assert (=> (not b_lambda!130147) (not b!4346700)))

(declare-fun m!4955305 () Bool)

(assert (=> d!1283535 m!4955305))

(declare-fun m!4955307 () Bool)

(assert (=> d!1283535 m!4955307))

(declare-fun m!4955309 () Bool)

(assert (=> d!1283535 m!4955309))

(assert (=> d!1283535 m!4954527))

(declare-fun m!4955311 () Bool)

(assert (=> b!4346700 m!4955311))

(assert (=> b!4346389 d!1283535))

(assert (=> b!4346389 d!1283527))

(declare-fun d!1283537 () Bool)

(declare-fun e!2704893 () Bool)

(assert (=> d!1283537 e!2704893))

(declare-fun res!1784896 () Bool)

(assert (=> d!1283537 (=> res!1784896 e!2704893)))

(declare-fun lt!1561346 () Bool)

(assert (=> d!1283537 (= res!1784896 (not lt!1561346))))

(declare-fun lt!1561348 () Bool)

(assert (=> d!1283537 (= lt!1561346 lt!1561348)))

(declare-fun lt!1561347 () Unit!70623)

(declare-fun e!2704894 () Unit!70623)

(assert (=> d!1283537 (= lt!1561347 e!2704894)))

(declare-fun c!739025 () Bool)

(assert (=> d!1283537 (= c!739025 lt!1561348)))

(declare-fun containsKey!608 (List!48930 (_ BitVec 64)) Bool)

(assert (=> d!1283537 (= lt!1561348 (containsKey!608 (toList!2861 lm!1707) hash!377))))

(assert (=> d!1283537 (= (contains!10942 lm!1707 hash!377) lt!1561346)))

(declare-fun b!4346707 () Bool)

(declare-fun lt!1561349 () Unit!70623)

(assert (=> b!4346707 (= e!2704894 lt!1561349)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!316 (List!48930 (_ BitVec 64)) Unit!70623)

(assert (=> b!4346707 (= lt!1561349 (lemmaContainsKeyImpliesGetValueByKeyDefined!316 (toList!2861 lm!1707) hash!377))))

(declare-fun isDefined!7713 (Option!10415) Bool)

(assert (=> b!4346707 (isDefined!7713 (getValueByKey!401 (toList!2861 lm!1707) hash!377))))

(declare-fun b!4346708 () Bool)

(declare-fun Unit!70724 () Unit!70623)

(assert (=> b!4346708 (= e!2704894 Unit!70724)))

(declare-fun b!4346709 () Bool)

(assert (=> b!4346709 (= e!2704893 (isDefined!7713 (getValueByKey!401 (toList!2861 lm!1707) hash!377)))))

(assert (= (and d!1283537 c!739025) b!4346707))

(assert (= (and d!1283537 (not c!739025)) b!4346708))

(assert (= (and d!1283537 (not res!1784896)) b!4346709))

(declare-fun m!4955313 () Bool)

(assert (=> d!1283537 m!4955313))

(declare-fun m!4955315 () Bool)

(assert (=> b!4346707 m!4955315))

(declare-fun m!4955317 () Bool)

(assert (=> b!4346707 m!4955317))

(assert (=> b!4346707 m!4955317))

(declare-fun m!4955319 () Bool)

(assert (=> b!4346707 m!4955319))

(assert (=> b!4346709 m!4955317))

(assert (=> b!4346709 m!4955317))

(assert (=> b!4346709 m!4955319))

(assert (=> b!4346387 d!1283537))

(declare-fun d!1283539 () Bool)

(declare-fun get!15844 (Option!10415) List!48929)

(assert (=> d!1283539 (= (apply!11291 lm!1707 hash!377) (get!15844 (getValueByKey!401 (toList!2861 lm!1707) hash!377)))))

(declare-fun bs!628043 () Bool)

(assert (= bs!628043 d!1283539))

(assert (=> bs!628043 m!4955317))

(assert (=> bs!628043 m!4955317))

(declare-fun m!4955321 () Bool)

(assert (=> bs!628043 m!4955321))

(assert (=> b!4346398 d!1283539))

(declare-fun d!1283541 () Bool)

(declare-fun lt!1561352 () Bool)

(declare-fun content!7666 (List!48930) (InoxSet tuple2!48128))

(assert (=> d!1283541 (= lt!1561352 (select (content!7666 (toList!2861 lm!1707)) lt!1560853))))

(declare-fun e!2704899 () Bool)

(assert (=> d!1283541 (= lt!1561352 e!2704899)))

(declare-fun res!1784901 () Bool)

(assert (=> d!1283541 (=> (not res!1784901) (not e!2704899))))

(assert (=> d!1283541 (= res!1784901 ((_ is Cons!48806) (toList!2861 lm!1707)))))

(assert (=> d!1283541 (= (contains!10944 (toList!2861 lm!1707) lt!1560853) lt!1561352)))

(declare-fun b!4346714 () Bool)

(declare-fun e!2704900 () Bool)

(assert (=> b!4346714 (= e!2704899 e!2704900)))

(declare-fun res!1784902 () Bool)

(assert (=> b!4346714 (=> res!1784902 e!2704900)))

(assert (=> b!4346714 (= res!1784902 (= (h!54331 (toList!2861 lm!1707)) lt!1560853))))

(declare-fun b!4346715 () Bool)

(assert (=> b!4346715 (= e!2704900 (contains!10944 (t!355850 (toList!2861 lm!1707)) lt!1560853))))

(assert (= (and d!1283541 res!1784901) b!4346714))

(assert (= (and b!4346714 (not res!1784902)) b!4346715))

(declare-fun m!4955323 () Bool)

(assert (=> d!1283541 m!4955323))

(declare-fun m!4955325 () Bool)

(assert (=> d!1283541 m!4955325))

(declare-fun m!4955327 () Bool)

(assert (=> b!4346715 m!4955327))

(assert (=> b!4346398 d!1283541))

(declare-fun d!1283543 () Bool)

(assert (=> d!1283543 (contains!10944 (toList!2861 lm!1707) (tuple2!48129 hash!377 lt!1560865))))

(declare-fun lt!1561355 () Unit!70623)

(declare-fun choose!26684 (List!48930 (_ BitVec 64) List!48929) Unit!70623)

(assert (=> d!1283543 (= lt!1561355 (choose!26684 (toList!2861 lm!1707) hash!377 lt!1560865))))

(declare-fun e!2704903 () Bool)

(assert (=> d!1283543 e!2704903))

(declare-fun res!1784905 () Bool)

(assert (=> d!1283543 (=> (not res!1784905) (not e!2704903))))

(assert (=> d!1283543 (= res!1784905 (isStrictlySorted!78 (toList!2861 lm!1707)))))

(assert (=> d!1283543 (= (lemmaGetValueByKeyImpliesContainsTuple!286 (toList!2861 lm!1707) hash!377 lt!1560865) lt!1561355)))

(declare-fun b!4346718 () Bool)

(assert (=> b!4346718 (= e!2704903 (= (getValueByKey!401 (toList!2861 lm!1707) hash!377) (Some!10414 lt!1560865)))))

(assert (= (and d!1283543 res!1784905) b!4346718))

(declare-fun m!4955329 () Bool)

(assert (=> d!1283543 m!4955329))

(declare-fun m!4955331 () Bool)

(assert (=> d!1283543 m!4955331))

(assert (=> d!1283543 m!4955287))

(assert (=> b!4346718 m!4955317))

(assert (=> b!4346398 d!1283543))

(declare-fun d!1283545 () Bool)

(assert (=> d!1283545 (dynLambda!20597 lambda!138341 lt!1560853)))

(declare-fun lt!1561358 () Unit!70623)

(declare-fun choose!26685 (List!48930 Int tuple2!48128) Unit!70623)

(assert (=> d!1283545 (= lt!1561358 (choose!26685 (toList!2861 lm!1707) lambda!138341 lt!1560853))))

(declare-fun e!2704906 () Bool)

(assert (=> d!1283545 e!2704906))

(declare-fun res!1784908 () Bool)

(assert (=> d!1283545 (=> (not res!1784908) (not e!2704906))))

(assert (=> d!1283545 (= res!1784908 (forall!9033 (toList!2861 lm!1707) lambda!138341))))

(assert (=> d!1283545 (= (forallContained!1683 (toList!2861 lm!1707) lambda!138341 lt!1560853) lt!1561358)))

(declare-fun b!4346721 () Bool)

(assert (=> b!4346721 (= e!2704906 (contains!10944 (toList!2861 lm!1707) lt!1560853))))

(assert (= (and d!1283545 res!1784908) b!4346721))

(declare-fun b_lambda!130149 () Bool)

(assert (=> (not b_lambda!130149) (not d!1283545)))

(declare-fun m!4955333 () Bool)

(assert (=> d!1283545 m!4955333))

(declare-fun m!4955335 () Bool)

(assert (=> d!1283545 m!4955335))

(assert (=> d!1283545 m!4954527))

(assert (=> b!4346721 m!4954533))

(assert (=> b!4346398 d!1283545))

(declare-fun b!4346730 () Bool)

(declare-fun e!2704911 () List!48929)

(assert (=> b!4346730 (= e!2704911 (t!355849 lt!1560865))))

(declare-fun b!4346733 () Bool)

(declare-fun e!2704912 () List!48929)

(assert (=> b!4346733 (= e!2704912 Nil!48805)))

(declare-fun d!1283547 () Bool)

(declare-fun lt!1561361 () List!48929)

(assert (=> d!1283547 (not (containsKey!606 lt!1561361 key!3918))))

(assert (=> d!1283547 (= lt!1561361 e!2704911)))

(declare-fun c!739030 () Bool)

(assert (=> d!1283547 (= c!739030 (and ((_ is Cons!48805) lt!1560865) (= (_1!27357 (h!54330 lt!1560865)) key!3918)))))

(assert (=> d!1283547 (noDuplicateKeys!439 lt!1560865)))

(assert (=> d!1283547 (= (removePairForKey!409 lt!1560865 key!3918) lt!1561361)))

(declare-fun b!4346732 () Bool)

(assert (=> b!4346732 (= e!2704912 (Cons!48805 (h!54330 lt!1560865) (removePairForKey!409 (t!355849 lt!1560865) key!3918)))))

(declare-fun b!4346731 () Bool)

(assert (=> b!4346731 (= e!2704911 e!2704912)))

(declare-fun c!739031 () Bool)

(assert (=> b!4346731 (= c!739031 ((_ is Cons!48805) lt!1560865))))

(assert (= (and d!1283547 c!739030) b!4346730))

(assert (= (and d!1283547 (not c!739030)) b!4346731))

(assert (= (and b!4346731 c!739031) b!4346732))

(assert (= (and b!4346731 (not c!739031)) b!4346733))

(declare-fun m!4955337 () Bool)

(assert (=> d!1283547 m!4955337))

(declare-fun m!4955339 () Bool)

(assert (=> d!1283547 m!4955339))

(declare-fun m!4955341 () Bool)

(assert (=> b!4346732 m!4955341))

(assert (=> b!4346398 d!1283547))

(declare-fun d!1283549 () Bool)

(assert (=> d!1283549 (= (apply!11291 lt!1560866 hash!377) (get!15844 (getValueByKey!401 (toList!2861 lt!1560866) hash!377)))))

(declare-fun bs!628044 () Bool)

(assert (= bs!628044 d!1283549))

(declare-fun m!4955343 () Bool)

(assert (=> bs!628044 m!4955343))

(assert (=> bs!628044 m!4955343))

(declare-fun m!4955345 () Bool)

(assert (=> bs!628044 m!4955345))

(assert (=> b!4346391 d!1283549))

(declare-fun d!1283551 () Bool)

(declare-fun hash!1426 (Hashable!4831 K!10165) (_ BitVec 64))

(assert (=> d!1283551 (= (hash!1420 hashF!1247 key!3918) (hash!1426 hashF!1247 key!3918))))

(declare-fun bs!628045 () Bool)

(assert (= bs!628045 d!1283551))

(declare-fun m!4955347 () Bool)

(assert (=> bs!628045 m!4955347))

(assert (=> b!4346402 d!1283551))

(declare-fun b!4346734 () Bool)

(assert (=> b!4346734 false))

(declare-fun lt!1561368 () Unit!70623)

(declare-fun lt!1561364 () Unit!70623)

(assert (=> b!4346734 (= lt!1561368 lt!1561364)))

(assert (=> b!4346734 (containsKey!605 (toList!2862 lt!1560871) key!3918)))

(assert (=> b!4346734 (= lt!1561364 (lemmaInGetKeysListThenContainsKey!98 (toList!2862 lt!1560871) key!3918))))

(declare-fun e!2704918 () Unit!70623)

(declare-fun Unit!70725 () Unit!70623)

(assert (=> b!4346734 (= e!2704918 Unit!70725)))

(declare-fun b!4346736 () Bool)

(declare-fun e!2704914 () List!48932)

(assert (=> b!4346736 (= e!2704914 (keys!16452 lt!1560871))))

(declare-fun b!4346737 () Bool)

(declare-fun e!2704916 () Bool)

(assert (=> b!4346737 (= e!2704916 (contains!10947 (keys!16452 lt!1560871) key!3918))))

(declare-fun b!4346738 () Bool)

(declare-fun Unit!70726 () Unit!70623)

(assert (=> b!4346738 (= e!2704918 Unit!70726)))

(declare-fun b!4346739 () Bool)

(declare-fun e!2704915 () Bool)

(assert (=> b!4346739 (= e!2704915 e!2704916)))

(declare-fun res!1784909 () Bool)

(assert (=> b!4346739 (=> (not res!1784909) (not e!2704916))))

(assert (=> b!4346739 (= res!1784909 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560871) key!3918)))))

(declare-fun b!4346740 () Bool)

(declare-fun e!2704913 () Unit!70623)

(assert (=> b!4346740 (= e!2704913 e!2704918)))

(declare-fun c!739032 () Bool)

(declare-fun call!302215 () Bool)

(assert (=> b!4346740 (= c!739032 call!302215)))

(declare-fun b!4346741 () Bool)

(declare-fun lt!1561367 () Unit!70623)

(assert (=> b!4346741 (= e!2704913 lt!1561367)))

(declare-fun lt!1561365 () Unit!70623)

(assert (=> b!4346741 (= lt!1561365 (lemmaContainsKeyImpliesGetValueByKeyDefined!314 (toList!2862 lt!1560871) key!3918))))

(assert (=> b!4346741 (isDefined!7711 (getValueByKey!402 (toList!2862 lt!1560871) key!3918))))

(declare-fun lt!1561363 () Unit!70623)

(assert (=> b!4346741 (= lt!1561363 lt!1561365)))

(assert (=> b!4346741 (= lt!1561367 (lemmaInListThenGetKeysListContains!97 (toList!2862 lt!1560871) key!3918))))

(assert (=> b!4346741 call!302215))

(declare-fun d!1283553 () Bool)

(assert (=> d!1283553 e!2704915))

(declare-fun res!1784911 () Bool)

(assert (=> d!1283553 (=> res!1784911 e!2704915)))

(declare-fun e!2704917 () Bool)

(assert (=> d!1283553 (= res!1784911 e!2704917)))

(declare-fun res!1784910 () Bool)

(assert (=> d!1283553 (=> (not res!1784910) (not e!2704917))))

(declare-fun lt!1561369 () Bool)

(assert (=> d!1283553 (= res!1784910 (not lt!1561369))))

(declare-fun lt!1561362 () Bool)

(assert (=> d!1283553 (= lt!1561369 lt!1561362)))

(declare-fun lt!1561366 () Unit!70623)

(assert (=> d!1283553 (= lt!1561366 e!2704913)))

(declare-fun c!739033 () Bool)

(assert (=> d!1283553 (= c!739033 lt!1561362)))

(assert (=> d!1283553 (= lt!1561362 (containsKey!605 (toList!2862 lt!1560871) key!3918))))

(assert (=> d!1283553 (= (contains!10943 lt!1560871 key!3918) lt!1561369)))

(declare-fun b!4346735 () Bool)

(assert (=> b!4346735 (= e!2704917 (not (contains!10947 (keys!16452 lt!1560871) key!3918)))))

(declare-fun b!4346742 () Bool)

(assert (=> b!4346742 (= e!2704914 (getKeysList!100 (toList!2862 lt!1560871)))))

(declare-fun bm!302210 () Bool)

(assert (=> bm!302210 (= call!302215 (contains!10947 e!2704914 key!3918))))

(declare-fun c!739034 () Bool)

(assert (=> bm!302210 (= c!739034 c!739033)))

(assert (= (and d!1283553 c!739033) b!4346741))

(assert (= (and d!1283553 (not c!739033)) b!4346740))

(assert (= (and b!4346740 c!739032) b!4346734))

(assert (= (and b!4346740 (not c!739032)) b!4346738))

(assert (= (or b!4346741 b!4346740) bm!302210))

(assert (= (and bm!302210 c!739034) b!4346742))

(assert (= (and bm!302210 (not c!739034)) b!4346736))

(assert (= (and d!1283553 res!1784910) b!4346735))

(assert (= (and d!1283553 (not res!1784911)) b!4346739))

(assert (= (and b!4346739 res!1784909) b!4346737))

(declare-fun m!4955349 () Bool)

(assert (=> b!4346734 m!4955349))

(declare-fun m!4955351 () Bool)

(assert (=> b!4346734 m!4955351))

(declare-fun m!4955353 () Bool)

(assert (=> bm!302210 m!4955353))

(assert (=> b!4346736 m!4954651))

(assert (=> d!1283553 m!4955349))

(declare-fun m!4955355 () Bool)

(assert (=> b!4346742 m!4955355))

(declare-fun m!4955357 () Bool)

(assert (=> b!4346739 m!4955357))

(assert (=> b!4346739 m!4955357))

(declare-fun m!4955359 () Bool)

(assert (=> b!4346739 m!4955359))

(assert (=> b!4346735 m!4954651))

(assert (=> b!4346735 m!4954651))

(declare-fun m!4955361 () Bool)

(assert (=> b!4346735 m!4955361))

(declare-fun m!4955363 () Bool)

(assert (=> b!4346741 m!4955363))

(assert (=> b!4346741 m!4955357))

(assert (=> b!4346741 m!4955357))

(assert (=> b!4346741 m!4955359))

(declare-fun m!4955365 () Bool)

(assert (=> b!4346741 m!4955365))

(assert (=> b!4346737 m!4954651))

(assert (=> b!4346737 m!4954651))

(assert (=> b!4346737 m!4955361))

(assert (=> b!4346400 d!1283553))

(declare-fun bs!628046 () Bool)

(declare-fun d!1283555 () Bool)

(assert (= bs!628046 (and d!1283555 d!1283509)))

(declare-fun lambda!138463 () Int)

(assert (=> bs!628046 (= lambda!138463 lambda!138446)))

(declare-fun bs!628047 () Bool)

(assert (= bs!628047 (and d!1283555 d!1283525)))

(assert (=> bs!628047 (not (= lambda!138463 lambda!138462))))

(declare-fun bs!628048 () Bool)

(assert (= bs!628048 (and d!1283555 start!419584)))

(assert (=> bs!628048 (= lambda!138463 lambda!138341)))

(declare-fun bs!628049 () Bool)

(assert (= bs!628049 (and d!1283555 d!1283411)))

(assert (=> bs!628049 (= lambda!138463 lambda!138385)))

(declare-fun bs!628050 () Bool)

(assert (= bs!628050 (and d!1283555 d!1283515)))

(assert (=> bs!628050 (= lambda!138463 lambda!138455)))

(declare-fun bs!628051 () Bool)

(assert (= bs!628051 (and d!1283555 d!1283421)))

(assert (=> bs!628051 (= lambda!138463 lambda!138394)))

(declare-fun lt!1561370 () ListMap!2105)

(assert (=> d!1283555 (invariantList!652 (toList!2862 lt!1561370))))

(declare-fun e!2704919 () ListMap!2105)

(assert (=> d!1283555 (= lt!1561370 e!2704919)))

(declare-fun c!739035 () Bool)

(assert (=> d!1283555 (= c!739035 ((_ is Cons!48806) (toList!2861 lm!1707)))))

(assert (=> d!1283555 (forall!9033 (toList!2861 lm!1707) lambda!138463)))

(assert (=> d!1283555 (= (extractMap!498 (toList!2861 lm!1707)) lt!1561370)))

(declare-fun b!4346743 () Bool)

(assert (=> b!4346743 (= e!2704919 (addToMapMapFromBucket!147 (_2!27358 (h!54331 (toList!2861 lm!1707))) (extractMap!498 (t!355850 (toList!2861 lm!1707)))))))

(declare-fun b!4346744 () Bool)

(assert (=> b!4346744 (= e!2704919 (ListMap!2106 Nil!48805))))

(assert (= (and d!1283555 c!739035) b!4346743))

(assert (= (and d!1283555 (not c!739035)) b!4346744))

(declare-fun m!4955367 () Bool)

(assert (=> d!1283555 m!4955367))

(declare-fun m!4955369 () Bool)

(assert (=> d!1283555 m!4955369))

(assert (=> b!4346743 m!4954497))

(assert (=> b!4346743 m!4954497))

(declare-fun m!4955371 () Bool)

(assert (=> b!4346743 m!4955371))

(assert (=> b!4346400 d!1283555))

(assert (=> b!4346390 d!1283531))

(declare-fun d!1283557 () Bool)

(declare-fun res!1784916 () Bool)

(declare-fun e!2704924 () Bool)

(assert (=> d!1283557 (=> res!1784916 e!2704924)))

(assert (=> d!1283557 (= res!1784916 (not ((_ is Cons!48805) newBucket!200)))))

(assert (=> d!1283557 (= (noDuplicateKeys!439 newBucket!200) e!2704924)))

(declare-fun b!4346749 () Bool)

(declare-fun e!2704925 () Bool)

(assert (=> b!4346749 (= e!2704924 e!2704925)))

(declare-fun res!1784917 () Bool)

(assert (=> b!4346749 (=> (not res!1784917) (not e!2704925))))

(assert (=> b!4346749 (= res!1784917 (not (containsKey!606 (t!355849 newBucket!200) (_1!27357 (h!54330 newBucket!200)))))))

(declare-fun b!4346750 () Bool)

(assert (=> b!4346750 (= e!2704925 (noDuplicateKeys!439 (t!355849 newBucket!200)))))

(assert (= (and d!1283557 (not res!1784916)) b!4346749))

(assert (= (and b!4346749 res!1784917) b!4346750))

(declare-fun m!4955373 () Bool)

(assert (=> b!4346749 m!4955373))

(declare-fun m!4955375 () Bool)

(assert (=> b!4346750 m!4955375))

(assert (=> b!4346401 d!1283557))

(declare-fun bs!628052 () Bool)

(declare-fun d!1283559 () Bool)

(assert (= bs!628052 (and d!1283559 d!1283509)))

(declare-fun lambda!138466 () Int)

(assert (=> bs!628052 (= lambda!138466 lambda!138446)))

(declare-fun bs!628053 () Bool)

(assert (= bs!628053 (and d!1283559 d!1283525)))

(assert (=> bs!628053 (not (= lambda!138466 lambda!138462))))

(declare-fun bs!628054 () Bool)

(assert (= bs!628054 (and d!1283559 start!419584)))

(assert (=> bs!628054 (= lambda!138466 lambda!138341)))

(declare-fun bs!628055 () Bool)

(assert (= bs!628055 (and d!1283559 d!1283555)))

(assert (=> bs!628055 (= lambda!138466 lambda!138463)))

(declare-fun bs!628056 () Bool)

(assert (= bs!628056 (and d!1283559 d!1283411)))

(assert (=> bs!628056 (= lambda!138466 lambda!138385)))

(declare-fun bs!628057 () Bool)

(assert (= bs!628057 (and d!1283559 d!1283515)))

(assert (=> bs!628057 (= lambda!138466 lambda!138455)))

(declare-fun bs!628058 () Bool)

(assert (= bs!628058 (and d!1283559 d!1283421)))

(assert (=> bs!628058 (= lambda!138466 lambda!138394)))

(assert (=> d!1283559 (eq!229 (extractMap!498 (toList!2861 (+!549 lt!1560866 (tuple2!48129 hash!377 newBucket!200)))) (+!550 (extractMap!498 (toList!2861 lt!1560866)) (tuple2!48127 key!3918 newValue!99)))))

(declare-fun lt!1561373 () Unit!70623)

(declare-fun choose!26686 (ListLongMap!1511 (_ BitVec 64) List!48929 K!10165 V!10411 Hashable!4831) Unit!70623)

(assert (=> d!1283559 (= lt!1561373 (choose!26686 lt!1560866 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1283559 (forall!9033 (toList!2861 lt!1560866) lambda!138466)))

(assert (=> d!1283559 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!79 lt!1560866 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1561373)))

(declare-fun bs!628059 () Bool)

(assert (= bs!628059 d!1283559))

(assert (=> bs!628059 m!4954485))

(declare-fun m!4955377 () Bool)

(assert (=> bs!628059 m!4955377))

(declare-fun m!4955379 () Bool)

(assert (=> bs!628059 m!4955379))

(assert (=> bs!628059 m!4955377))

(declare-fun m!4955381 () Bool)

(assert (=> bs!628059 m!4955381))

(declare-fun m!4955383 () Bool)

(assert (=> bs!628059 m!4955383))

(declare-fun m!4955385 () Bool)

(assert (=> bs!628059 m!4955385))

(declare-fun m!4955387 () Bool)

(assert (=> bs!628059 m!4955387))

(assert (=> bs!628059 m!4954485))

(assert (=> bs!628059 m!4955379))

(assert (=> b!4346394 d!1283559))

(declare-fun d!1283561 () Bool)

(assert (=> d!1283561 (= (eq!229 (extractMap!498 (toList!2861 (+!549 lt!1560866 lt!1560858))) (+!550 lt!1560857 lt!1560867)) (= (content!7661 (toList!2862 (extractMap!498 (toList!2861 (+!549 lt!1560866 lt!1560858))))) (content!7661 (toList!2862 (+!550 lt!1560857 lt!1560867)))))))

(declare-fun bs!628060 () Bool)

(assert (= bs!628060 d!1283561))

(declare-fun m!4955389 () Bool)

(assert (=> bs!628060 m!4955389))

(declare-fun m!4955391 () Bool)

(assert (=> bs!628060 m!4955391))

(assert (=> b!4346394 d!1283561))

(declare-fun d!1283563 () Bool)

(declare-fun e!2704926 () Bool)

(assert (=> d!1283563 e!2704926))

(declare-fun res!1784919 () Bool)

(assert (=> d!1283563 (=> (not res!1784919) (not e!2704926))))

(declare-fun lt!1561377 () ListLongMap!1511)

(assert (=> d!1283563 (= res!1784919 (contains!10942 lt!1561377 (_1!27358 lt!1560858)))))

(declare-fun lt!1561376 () List!48930)

(assert (=> d!1283563 (= lt!1561377 (ListLongMap!1512 lt!1561376))))

(declare-fun lt!1561374 () Unit!70623)

(declare-fun lt!1561375 () Unit!70623)

(assert (=> d!1283563 (= lt!1561374 lt!1561375)))

(assert (=> d!1283563 (= (getValueByKey!401 lt!1561376 (_1!27358 lt!1560858)) (Some!10414 (_2!27358 lt!1560858)))))

(assert (=> d!1283563 (= lt!1561375 (lemmaContainsTupThenGetReturnValue!184 lt!1561376 (_1!27358 lt!1560858) (_2!27358 lt!1560858)))))

(assert (=> d!1283563 (= lt!1561376 (insertStrictlySorted!108 (toList!2861 lt!1560866) (_1!27358 lt!1560858) (_2!27358 lt!1560858)))))

(assert (=> d!1283563 (= (+!549 lt!1560866 lt!1560858) lt!1561377)))

(declare-fun b!4346751 () Bool)

(declare-fun res!1784918 () Bool)

(assert (=> b!4346751 (=> (not res!1784918) (not e!2704926))))

(assert (=> b!4346751 (= res!1784918 (= (getValueByKey!401 (toList!2861 lt!1561377) (_1!27358 lt!1560858)) (Some!10414 (_2!27358 lt!1560858))))))

(declare-fun b!4346752 () Bool)

(assert (=> b!4346752 (= e!2704926 (contains!10944 (toList!2861 lt!1561377) lt!1560858))))

(assert (= (and d!1283563 res!1784919) b!4346751))

(assert (= (and b!4346751 res!1784918) b!4346752))

(declare-fun m!4955393 () Bool)

(assert (=> d!1283563 m!4955393))

(declare-fun m!4955395 () Bool)

(assert (=> d!1283563 m!4955395))

(declare-fun m!4955397 () Bool)

(assert (=> d!1283563 m!4955397))

(declare-fun m!4955399 () Bool)

(assert (=> d!1283563 m!4955399))

(declare-fun m!4955401 () Bool)

(assert (=> b!4346751 m!4955401))

(declare-fun m!4955403 () Bool)

(assert (=> b!4346752 m!4955403))

(assert (=> b!4346394 d!1283563))

(declare-fun d!1283565 () Bool)

(declare-fun e!2704927 () Bool)

(assert (=> d!1283565 e!2704927))

(declare-fun res!1784921 () Bool)

(assert (=> d!1283565 (=> (not res!1784921) (not e!2704927))))

(declare-fun lt!1561381 () ListMap!2105)

(assert (=> d!1283565 (= res!1784921 (contains!10943 lt!1561381 (_1!27357 lt!1560867)))))

(declare-fun lt!1561378 () List!48929)

(assert (=> d!1283565 (= lt!1561381 (ListMap!2106 lt!1561378))))

(declare-fun lt!1561379 () Unit!70623)

(declare-fun lt!1561380 () Unit!70623)

(assert (=> d!1283565 (= lt!1561379 lt!1561380)))

(assert (=> d!1283565 (= (getValueByKey!402 lt!1561378 (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867)))))

(assert (=> d!1283565 (= lt!1561380 (lemmaContainsTupThenGetReturnValue!186 lt!1561378 (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(assert (=> d!1283565 (= lt!1561378 (insertNoDuplicatedKeys!85 (toList!2862 lt!1560857) (_1!27357 lt!1560867) (_2!27357 lt!1560867)))))

(assert (=> d!1283565 (= (+!550 lt!1560857 lt!1560867) lt!1561381)))

(declare-fun b!4346753 () Bool)

(declare-fun res!1784920 () Bool)

(assert (=> b!4346753 (=> (not res!1784920) (not e!2704927))))

(assert (=> b!4346753 (= res!1784920 (= (getValueByKey!402 (toList!2862 lt!1561381) (_1!27357 lt!1560867)) (Some!10415 (_2!27357 lt!1560867))))))

(declare-fun b!4346754 () Bool)

(assert (=> b!4346754 (= e!2704927 (contains!10948 (toList!2862 lt!1561381) lt!1560867))))

(assert (= (and d!1283565 res!1784921) b!4346753))

(assert (= (and b!4346753 res!1784920) b!4346754))

(declare-fun m!4955405 () Bool)

(assert (=> d!1283565 m!4955405))

(declare-fun m!4955407 () Bool)

(assert (=> d!1283565 m!4955407))

(declare-fun m!4955409 () Bool)

(assert (=> d!1283565 m!4955409))

(declare-fun m!4955411 () Bool)

(assert (=> d!1283565 m!4955411))

(declare-fun m!4955413 () Bool)

(assert (=> b!4346753 m!4955413))

(declare-fun m!4955415 () Bool)

(assert (=> b!4346754 m!4955415))

(assert (=> b!4346394 d!1283565))

(declare-fun d!1283567 () Bool)

(declare-fun res!1784922 () Bool)

(declare-fun e!2704928 () Bool)

(assert (=> d!1283567 (=> res!1784922 e!2704928)))

(assert (=> d!1283567 (= res!1784922 ((_ is Nil!48806) (toList!2861 lt!1560866)))))

(assert (=> d!1283567 (= (forall!9033 (toList!2861 lt!1560866) lambda!138341) e!2704928)))

(declare-fun b!4346755 () Bool)

(declare-fun e!2704929 () Bool)

(assert (=> b!4346755 (= e!2704928 e!2704929)))

(declare-fun res!1784923 () Bool)

(assert (=> b!4346755 (=> (not res!1784923) (not e!2704929))))

(assert (=> b!4346755 (= res!1784923 (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lt!1560866))))))

(declare-fun b!4346756 () Bool)

(assert (=> b!4346756 (= e!2704929 (forall!9033 (t!355850 (toList!2861 lt!1560866)) lambda!138341))))

(assert (= (and d!1283567 (not res!1784922)) b!4346755))

(assert (= (and b!4346755 res!1784923) b!4346756))

(declare-fun b_lambda!130151 () Bool)

(assert (=> (not b_lambda!130151) (not b!4346755)))

(declare-fun m!4955417 () Bool)

(assert (=> b!4346755 m!4955417))

(declare-fun m!4955419 () Bool)

(assert (=> b!4346756 m!4955419))

(assert (=> b!4346394 d!1283567))

(declare-fun bs!628061 () Bool)

(declare-fun d!1283569 () Bool)

(assert (= bs!628061 (and d!1283569 d!1283509)))

(declare-fun lambda!138467 () Int)

(assert (=> bs!628061 (= lambda!138467 lambda!138446)))

(declare-fun bs!628062 () Bool)

(assert (= bs!628062 (and d!1283569 d!1283559)))

(assert (=> bs!628062 (= lambda!138467 lambda!138466)))

(declare-fun bs!628063 () Bool)

(assert (= bs!628063 (and d!1283569 d!1283525)))

(assert (=> bs!628063 (not (= lambda!138467 lambda!138462))))

(declare-fun bs!628064 () Bool)

(assert (= bs!628064 (and d!1283569 start!419584)))

(assert (=> bs!628064 (= lambda!138467 lambda!138341)))

(declare-fun bs!628065 () Bool)

(assert (= bs!628065 (and d!1283569 d!1283555)))

(assert (=> bs!628065 (= lambda!138467 lambda!138463)))

(declare-fun bs!628066 () Bool)

(assert (= bs!628066 (and d!1283569 d!1283411)))

(assert (=> bs!628066 (= lambda!138467 lambda!138385)))

(declare-fun bs!628067 () Bool)

(assert (= bs!628067 (and d!1283569 d!1283515)))

(assert (=> bs!628067 (= lambda!138467 lambda!138455)))

(declare-fun bs!628068 () Bool)

(assert (= bs!628068 (and d!1283569 d!1283421)))

(assert (=> bs!628068 (= lambda!138467 lambda!138394)))

(declare-fun lt!1561382 () ListMap!2105)

(assert (=> d!1283569 (invariantList!652 (toList!2862 lt!1561382))))

(declare-fun e!2704930 () ListMap!2105)

(assert (=> d!1283569 (= lt!1561382 e!2704930)))

(declare-fun c!739036 () Bool)

(assert (=> d!1283569 (= c!739036 ((_ is Cons!48806) (toList!2861 (+!549 lt!1560866 lt!1560858))))))

(assert (=> d!1283569 (forall!9033 (toList!2861 (+!549 lt!1560866 lt!1560858)) lambda!138467)))

(assert (=> d!1283569 (= (extractMap!498 (toList!2861 (+!549 lt!1560866 lt!1560858))) lt!1561382)))

(declare-fun b!4346757 () Bool)

(assert (=> b!4346757 (= e!2704930 (addToMapMapFromBucket!147 (_2!27358 (h!54331 (toList!2861 (+!549 lt!1560866 lt!1560858)))) (extractMap!498 (t!355850 (toList!2861 (+!549 lt!1560866 lt!1560858))))))))

(declare-fun b!4346758 () Bool)

(assert (=> b!4346758 (= e!2704930 (ListMap!2106 Nil!48805))))

(assert (= (and d!1283569 c!739036) b!4346757))

(assert (= (and d!1283569 (not c!739036)) b!4346758))

(declare-fun m!4955421 () Bool)

(assert (=> d!1283569 m!4955421))

(declare-fun m!4955423 () Bool)

(assert (=> d!1283569 m!4955423))

(declare-fun m!4955425 () Bool)

(assert (=> b!4346757 m!4955425))

(assert (=> b!4346757 m!4955425))

(declare-fun m!4955427 () Bool)

(assert (=> b!4346757 m!4955427))

(assert (=> b!4346394 d!1283569))

(declare-fun tp!1329562 () Bool)

(declare-fun e!2704933 () Bool)

(declare-fun b!4346763 () Bool)

(assert (=> b!4346763 (= e!2704933 (and tp_is_empty!24993 tp_is_empty!24995 tp!1329562))))

(assert (=> b!4346397 (= tp!1329550 e!2704933)))

(assert (= (and b!4346397 ((_ is Cons!48805) (t!355849 newBucket!200))) b!4346763))

(declare-fun b!4346768 () Bool)

(declare-fun e!2704936 () Bool)

(declare-fun tp!1329567 () Bool)

(declare-fun tp!1329568 () Bool)

(assert (=> b!4346768 (= e!2704936 (and tp!1329567 tp!1329568))))

(assert (=> b!4346392 (= tp!1329549 e!2704936)))

(assert (= (and b!4346392 ((_ is Cons!48806) (toList!2861 lm!1707))) b!4346768))

(declare-fun b_lambda!130153 () Bool)

(assert (= b_lambda!130147 (or start!419584 b_lambda!130153)))

(declare-fun bs!628069 () Bool)

(declare-fun d!1283571 () Bool)

(assert (= bs!628069 (and d!1283571 start!419584)))

(assert (=> bs!628069 (= (dynLambda!20597 lambda!138341 (tuple2!48129 hash!377 newBucket!200)) (noDuplicateKeys!439 (_2!27358 (tuple2!48129 hash!377 newBucket!200))))))

(declare-fun m!4955429 () Bool)

(assert (=> bs!628069 m!4955429))

(assert (=> b!4346700 d!1283571))

(declare-fun b_lambda!130155 () Bool)

(assert (= b_lambda!130143 (or start!419584 b_lambda!130155)))

(declare-fun bs!628070 () Bool)

(declare-fun d!1283573 () Bool)

(assert (= bs!628070 (and d!1283573 start!419584)))

(assert (=> bs!628070 (= (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lm!1707))) (noDuplicateKeys!439 (_2!27358 (h!54331 (toList!2861 lm!1707)))))))

(declare-fun m!4955431 () Bool)

(assert (=> bs!628070 m!4955431))

(assert (=> b!4346691 d!1283573))

(declare-fun b_lambda!130157 () Bool)

(assert (= b_lambda!130149 (or start!419584 b_lambda!130157)))

(declare-fun bs!628071 () Bool)

(declare-fun d!1283575 () Bool)

(assert (= bs!628071 (and d!1283575 start!419584)))

(assert (=> bs!628071 (= (dynLambda!20597 lambda!138341 lt!1560853) (noDuplicateKeys!439 (_2!27358 lt!1560853)))))

(declare-fun m!4955433 () Bool)

(assert (=> bs!628071 m!4955433))

(assert (=> d!1283545 d!1283575))

(declare-fun b_lambda!130159 () Bool)

(assert (= b_lambda!130145 (or start!419584 b_lambda!130159)))

(declare-fun bs!628072 () Bool)

(declare-fun d!1283577 () Bool)

(assert (= bs!628072 (and d!1283577 start!419584)))

(assert (=> bs!628072 (= (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lt!1560855))) (noDuplicateKeys!439 (_2!27358 (h!54331 (toList!2861 lt!1560855)))))))

(declare-fun m!4955435 () Bool)

(assert (=> bs!628072 m!4955435))

(assert (=> b!4346693 d!1283577))

(declare-fun b_lambda!130161 () Bool)

(assert (= b_lambda!130151 (or start!419584 b_lambda!130161)))

(declare-fun bs!628073 () Bool)

(declare-fun d!1283579 () Bool)

(assert (= bs!628073 (and d!1283579 start!419584)))

(assert (=> bs!628073 (= (dynLambda!20597 lambda!138341 (h!54331 (toList!2861 lt!1560866))) (noDuplicateKeys!439 (_2!27358 (h!54331 (toList!2861 lt!1560866)))))))

(declare-fun m!4955437 () Bool)

(assert (=> bs!628073 m!4955437))

(assert (=> b!4346755 d!1283579))

(check-sat (not b_lambda!130155) (not d!1283539) (not b!4346694) (not b!4346655) (not b!4346692) (not bm!302201) (not b!4346684) (not d!1283525) (not b!4346674) (not d!1283397) (not b_lambda!130161) (not d!1283401) (not bm!302197) (not b!4346660) (not b!4346756) (not d!1283551) (not d!1283513) (not b!4346664) (not b!4346656) (not b!4346675) (not b!4346657) (not bs!628073) (not b!4346739) (not bm!302209) (not b!4346510) (not b!4346735) (not b!4346670) (not d!1283553) (not d!1283537) (not b!4346751) (not b!4346683) (not b!4346732) (not b!4346533) (not bm!302206) (not d!1283433) (not b!4346696) (not b!4346676) (not b!4346652) (not bm!302207) (not d!1283407) (not b!4346681) (not b!4346709) (not b!4346663) (not d!1283507) (not bm!302202) (not d!1283549) (not b!4346441) (not d!1283535) (not b_lambda!130157) (not b!4346682) (not b!4346658) (not b!4346707) (not d!1283565) (not bm!302204) (not b!4346679) tp_is_empty!24995 (not b!4346651) (not bs!628072) (not bs!628069) (not b!4346768) (not b!4346442) (not bm!302208) (not b!4346667) (not d!1283515) (not d!1283523) (not b!4346715) (not bm!302198) (not d!1283411) (not b!4346757) (not b!4346509) (not d!1283547) (not d!1283409) (not b!4346662) (not b!4346749) (not b!4346721) (not b!4346475) (not d!1283545) (not bm!302199) (not d!1283555) (not b!4346477) (not b_lambda!130153) (not b!4346470) (not b!4346742) (not d!1283559) (not b!4346736) (not d!1283519) (not b!4346753) (not b!4346743) (not d!1283511) (not b!4346669) (not b!4346754) (not d!1283521) (not d!1283389) (not d!1283509) (not bs!628070) (not d!1283543) (not b!4346673) tp_is_empty!24993 (not bs!628071) (not bm!302170) (not b!4346472) (not b!4346741) (not d!1283391) (not d!1283395) (not b!4346473) (not d!1283569) (not b_lambda!130159) (not b!4346650) (not d!1283529) (not bm!302200) (not d!1283563) (not bm!302210) (not b!4346668) (not b!4346672) (not bm!302205) (not b!4346481) (not b!4346718) (not bm!302203) (not d!1283417) (not d!1283421) (not d!1283517) (not b!4346478) (not b!4346649) (not b!4346763) (not d!1283533) (not b!4346471) (not b!4346750) (not b!4346678) (not b!4346737) (not d!1283541) (not b!4346734) (not b!4346695) (not b!4346752) (not d!1283561))
(check-sat)
