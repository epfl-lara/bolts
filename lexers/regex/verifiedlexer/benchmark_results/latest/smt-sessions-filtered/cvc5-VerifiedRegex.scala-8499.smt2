; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!442298 () Bool)

(assert start!442298)

(declare-fun b!4488555 () Bool)

(declare-fun e!2795605 () Bool)

(declare-fun e!2795603 () Bool)

(assert (=> b!4488555 (= e!2795605 e!2795603)))

(declare-fun res!1864885 () Bool)

(assert (=> b!4488555 (=> res!1864885 e!2795603)))

(declare-datatypes ((K!11898 0))(
  ( (K!11899 (val!17789 Int)) )
))
(declare-datatypes ((V!12144 0))(
  ( (V!12145 (val!17790 Int)) )
))
(declare-datatypes ((tuple2!50846 0))(
  ( (tuple2!50847 (_1!28717 K!11898) (_2!28717 V!12144)) )
))
(declare-datatypes ((List!50606 0))(
  ( (Nil!50482) (Cons!50482 (h!56285 tuple2!50846) (t!357560 List!50606)) )
))
(declare-datatypes ((tuple2!50848 0))(
  ( (tuple2!50849 (_1!28718 (_ BitVec 64)) (_2!28718 List!50606)) )
))
(declare-datatypes ((List!50607 0))(
  ( (Nil!50483) (Cons!50483 (h!56286 tuple2!50848) (t!357561 List!50607)) )
))
(declare-datatypes ((ListLongMap!2845 0))(
  ( (ListLongMap!2846 (toList!4213 List!50607)) )
))
(declare-fun lt!1673132 () ListLongMap!2845)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13120 (ListLongMap!2845 (_ BitVec 64)) Bool)

(assert (=> b!4488555 (= res!1864885 (not (contains!13120 lt!1673132 hash!344)))))

(declare-fun lm!1477 () ListLongMap!2845)

(declare-fun tail!7628 (ListLongMap!2845) ListLongMap!2845)

(assert (=> b!4488555 (= lt!1673132 (tail!7628 lm!1477))))

(declare-fun b!4488556 () Bool)

(declare-fun res!1864887 () Bool)

(assert (=> b!4488556 (=> res!1864887 e!2795603)))

(declare-fun lt!1673127 () List!50606)

(declare-fun apply!11840 (ListLongMap!2845 (_ BitVec 64)) List!50606)

(assert (=> b!4488556 (= res!1864887 (not (= (apply!11840 lt!1673132 hash!344) lt!1673127)))))

(declare-fun b!4488558 () Bool)

(declare-fun res!1864882 () Bool)

(assert (=> b!4488558 (=> res!1864882 e!2795605)))

(assert (=> b!4488558 (= res!1864882 (or (is-Nil!50483 (toList!4213 lm!1477)) (= (_1!28718 (h!56286 (toList!4213 lm!1477))) hash!344)))))

(declare-fun b!4488559 () Bool)

(declare-fun e!2795598 () Bool)

(declare-fun e!2795596 () Bool)

(assert (=> b!4488559 (= e!2795598 e!2795596)))

(declare-fun res!1864886 () Bool)

(assert (=> b!4488559 (=> res!1864886 e!2795596)))

(declare-fun key!3287 () K!11898)

(declare-datatypes ((ListMap!3475 0))(
  ( (ListMap!3476 (toList!4214 List!50606)) )
))
(declare-fun contains!13121 (ListMap!3475 K!11898) Bool)

(declare-fun extractMap!1159 (List!50607) ListMap!3475)

(assert (=> b!4488559 (= res!1864886 (not (contains!13121 (extractMap!1159 (t!357561 (toList!4213 lm!1477))) key!3287)))))

(declare-fun lt!1673125 () ListMap!3475)

(assert (=> b!4488559 (contains!13121 lt!1673125 key!3287)))

(assert (=> b!4488559 (= lt!1673125 (extractMap!1159 (toList!4213 lt!1673132)))))

(declare-datatypes ((Hashable!5498 0))(
  ( (HashableExt!5497 (__x!31201 Int)) )
))
(declare-fun hashF!1107 () Hashable!5498)

(declare-datatypes ((Unit!90434 0))(
  ( (Unit!90435) )
))
(declare-fun lt!1673131 () Unit!90434)

(declare-fun lemmaListContainsThenExtractedMapContains!73 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> b!4488559 (= lt!1673131 (lemmaListContainsThenExtractedMapContains!73 lt!1673132 key!3287 hashF!1107))))

(declare-fun b!4488560 () Bool)

(declare-fun e!2795597 () Bool)

(assert (=> b!4488560 (= e!2795597 e!2795598)))

(declare-fun res!1864884 () Bool)

(assert (=> b!4488560 (=> res!1864884 e!2795598)))

(declare-fun containsKeyBiggerList!83 (List!50607 K!11898) Bool)

(assert (=> b!4488560 (= res!1864884 (not (containsKeyBiggerList!83 (t!357561 (toList!4213 lm!1477)) key!3287)))))

(assert (=> b!4488560 (containsKeyBiggerList!83 (toList!4213 lt!1673132) key!3287)))

(declare-fun lt!1673126 () Unit!90434)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!19 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> b!4488560 (= lt!1673126 (lemmaInLongMapThenContainsKeyBiggerList!19 lt!1673132 key!3287 hashF!1107))))

(declare-fun b!4488561 () Bool)

(declare-fun res!1864888 () Bool)

(assert (=> b!4488561 (=> res!1864888 e!2795605)))

(declare-fun newBucket!178 () List!50606)

(declare-fun noDuplicateKeys!1103 (List!50606) Bool)

(assert (=> b!4488561 (= res!1864888 (not (noDuplicateKeys!1103 newBucket!178)))))

(declare-fun b!4488562 () Bool)

(declare-fun e!2795600 () Bool)

(assert (=> b!4488562 (= e!2795600 (not e!2795605))))

(declare-fun res!1864889 () Bool)

(assert (=> b!4488562 (=> res!1864889 e!2795605)))

(declare-fun removePairForKey!730 (List!50606 K!11898) List!50606)

(assert (=> b!4488562 (= res!1864889 (not (= newBucket!178 (removePairForKey!730 lt!1673127 key!3287))))))

(declare-fun lambda!166918 () Int)

(declare-fun lt!1673128 () tuple2!50848)

(declare-fun lt!1673138 () Unit!90434)

(declare-fun forallContained!2386 (List!50607 Int tuple2!50848) Unit!90434)

(assert (=> b!4488562 (= lt!1673138 (forallContained!2386 (toList!4213 lm!1477) lambda!166918 lt!1673128))))

(declare-fun contains!13122 (List!50607 tuple2!50848) Bool)

(assert (=> b!4488562 (contains!13122 (toList!4213 lm!1477) lt!1673128)))

(assert (=> b!4488562 (= lt!1673128 (tuple2!50849 hash!344 lt!1673127))))

(declare-fun lt!1673133 () Unit!90434)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!615 (List!50607 (_ BitVec 64) List!50606) Unit!90434)

(assert (=> b!4488562 (= lt!1673133 (lemmaGetValueByKeyImpliesContainsTuple!615 (toList!4213 lm!1477) hash!344 lt!1673127))))

(assert (=> b!4488562 (= lt!1673127 (apply!11840 lm!1477 hash!344))))

(declare-fun lt!1673130 () (_ BitVec 64))

(assert (=> b!4488562 (contains!13120 lm!1477 lt!1673130)))

(declare-fun lt!1673139 () Unit!90434)

(declare-fun lemmaInGenMapThenLongMapContainsHash!177 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> b!4488562 (= lt!1673139 (lemmaInGenMapThenLongMapContainsHash!177 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4488563 () Bool)

(declare-fun res!1864890 () Bool)

(declare-fun e!2795601 () Bool)

(assert (=> b!4488563 (=> (not res!1864890) (not e!2795601))))

(assert (=> b!4488563 (= res!1864890 (contains!13121 (extractMap!1159 (toList!4213 lm!1477)) key!3287))))

(declare-fun b!4488564 () Bool)

(declare-fun lt!1673136 () ListLongMap!2845)

(declare-fun forall!10127 (List!50607 Int) Bool)

(assert (=> b!4488564 (= e!2795596 (forall!10127 (toList!4213 lt!1673136) lambda!166918))))

(declare-fun eq!560 (ListMap!3475 ListMap!3475) Bool)

(declare-fun -!329 (ListMap!3475 K!11898) ListMap!3475)

(assert (=> b!4488564 (eq!560 (extractMap!1159 (toList!4213 lt!1673136)) (-!329 lt!1673125 key!3287))))

(declare-fun +!1439 (ListLongMap!2845 tuple2!50848) ListLongMap!2845)

(assert (=> b!4488564 (= lt!1673136 (+!1439 lt!1673132 (tuple2!50849 hash!344 newBucket!178)))))

(declare-fun lt!1673134 () Unit!90434)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!88 (ListLongMap!2845 (_ BitVec 64) List!50606 K!11898 Hashable!5498) Unit!90434)

(assert (=> b!4488564 (= lt!1673134 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!88 lt!1673132 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4488565 () Bool)

(assert (=> b!4488565 (= e!2795601 e!2795600)))

(declare-fun res!1864883 () Bool)

(assert (=> b!4488565 (=> (not res!1864883) (not e!2795600))))

(assert (=> b!4488565 (= res!1864883 (= lt!1673130 hash!344))))

(declare-fun hash!2620 (Hashable!5498 K!11898) (_ BitVec 64))

(assert (=> b!4488565 (= lt!1673130 (hash!2620 hashF!1107 key!3287))))

(declare-fun tp!1337148 () Bool)

(declare-fun e!2795599 () Bool)

(declare-fun b!4488566 () Bool)

(declare-fun tp_is_empty!27691 () Bool)

(declare-fun tp_is_empty!27689 () Bool)

(assert (=> b!4488566 (= e!2795599 (and tp_is_empty!27689 tp_is_empty!27691 tp!1337148))))

(declare-fun b!4488567 () Bool)

(declare-fun res!1864880 () Bool)

(assert (=> b!4488567 (=> res!1864880 e!2795603)))

(assert (=> b!4488567 (= res!1864880 (not (contains!13122 (t!357561 (toList!4213 lm!1477)) lt!1673128)))))

(declare-fun b!4488557 () Bool)

(declare-fun e!2795604 () Bool)

(declare-fun tp!1337149 () Bool)

(assert (=> b!4488557 (= e!2795604 tp!1337149)))

(declare-fun res!1864879 () Bool)

(assert (=> start!442298 (=> (not res!1864879) (not e!2795601))))

(assert (=> start!442298 (= res!1864879 (forall!10127 (toList!4213 lm!1477) lambda!166918))))

(assert (=> start!442298 e!2795601))

(assert (=> start!442298 true))

(declare-fun inv!66083 (ListLongMap!2845) Bool)

(assert (=> start!442298 (and (inv!66083 lm!1477) e!2795604)))

(assert (=> start!442298 tp_is_empty!27689))

(assert (=> start!442298 e!2795599))

(declare-fun b!4488568 () Bool)

(declare-fun res!1864877 () Bool)

(assert (=> b!4488568 (=> (not res!1864877) (not e!2795601))))

(declare-fun allKeysSameHashInMap!1210 (ListLongMap!2845 Hashable!5498) Bool)

(assert (=> b!4488568 (= res!1864877 (allKeysSameHashInMap!1210 lm!1477 hashF!1107))))

(declare-fun b!4488569 () Bool)

(declare-fun e!2795602 () Unit!90434)

(declare-fun Unit!90436 () Unit!90434)

(assert (=> b!4488569 (= e!2795602 Unit!90436)))

(declare-fun b!4488570 () Bool)

(assert (=> b!4488570 (= e!2795603 e!2795597)))

(declare-fun res!1864881 () Bool)

(assert (=> b!4488570 (=> res!1864881 e!2795597)))

(declare-fun lt!1673137 () Bool)

(assert (=> b!4488570 (= res!1864881 lt!1673137)))

(declare-fun lt!1673129 () Unit!90434)

(assert (=> b!4488570 (= lt!1673129 e!2795602)))

(declare-fun c!764516 () Bool)

(assert (=> b!4488570 (= c!764516 lt!1673137)))

(declare-fun containsKey!1623 (List!50606 K!11898) Bool)

(assert (=> b!4488570 (= lt!1673137 (not (containsKey!1623 lt!1673127 key!3287)))))

(declare-fun b!4488571 () Bool)

(declare-fun Unit!90437 () Unit!90434)

(assert (=> b!4488571 (= e!2795602 Unit!90437)))

(declare-fun lt!1673135 () Unit!90434)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!91 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> b!4488571 (= lt!1673135 (lemmaNotInItsHashBucketThenNotInMap!91 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4488571 false))

(declare-fun b!4488572 () Bool)

(declare-fun res!1864878 () Bool)

(assert (=> b!4488572 (=> (not res!1864878) (not e!2795600))))

(declare-fun allKeysSameHash!957 (List!50606 (_ BitVec 64) Hashable!5498) Bool)

(assert (=> b!4488572 (= res!1864878 (allKeysSameHash!957 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!442298 res!1864879) b!4488568))

(assert (= (and b!4488568 res!1864877) b!4488563))

(assert (= (and b!4488563 res!1864890) b!4488565))

(assert (= (and b!4488565 res!1864883) b!4488572))

(assert (= (and b!4488572 res!1864878) b!4488562))

(assert (= (and b!4488562 (not res!1864889)) b!4488561))

(assert (= (and b!4488561 (not res!1864888)) b!4488558))

(assert (= (and b!4488558 (not res!1864882)) b!4488555))

(assert (= (and b!4488555 (not res!1864885)) b!4488556))

(assert (= (and b!4488556 (not res!1864887)) b!4488567))

(assert (= (and b!4488567 (not res!1864880)) b!4488570))

(assert (= (and b!4488570 c!764516) b!4488571))

(assert (= (and b!4488570 (not c!764516)) b!4488569))

(assert (= (and b!4488570 (not res!1864881)) b!4488560))

(assert (= (and b!4488560 (not res!1864884)) b!4488559))

(assert (= (and b!4488559 (not res!1864886)) b!4488564))

(assert (= start!442298 b!4488557))

(assert (= (and start!442298 (is-Cons!50482 newBucket!178)) b!4488566))

(declare-fun m!5210527 () Bool)

(assert (=> b!4488572 m!5210527))

(declare-fun m!5210529 () Bool)

(assert (=> b!4488561 m!5210529))

(declare-fun m!5210531 () Bool)

(assert (=> start!442298 m!5210531))

(declare-fun m!5210533 () Bool)

(assert (=> start!442298 m!5210533))

(declare-fun m!5210535 () Bool)

(assert (=> b!4488571 m!5210535))

(declare-fun m!5210537 () Bool)

(assert (=> b!4488562 m!5210537))

(declare-fun m!5210539 () Bool)

(assert (=> b!4488562 m!5210539))

(declare-fun m!5210541 () Bool)

(assert (=> b!4488562 m!5210541))

(declare-fun m!5210543 () Bool)

(assert (=> b!4488562 m!5210543))

(declare-fun m!5210545 () Bool)

(assert (=> b!4488562 m!5210545))

(declare-fun m!5210547 () Bool)

(assert (=> b!4488562 m!5210547))

(declare-fun m!5210549 () Bool)

(assert (=> b!4488562 m!5210549))

(declare-fun m!5210551 () Bool)

(assert (=> b!4488555 m!5210551))

(declare-fun m!5210553 () Bool)

(assert (=> b!4488555 m!5210553))

(declare-fun m!5210555 () Bool)

(assert (=> b!4488560 m!5210555))

(declare-fun m!5210557 () Bool)

(assert (=> b!4488560 m!5210557))

(declare-fun m!5210559 () Bool)

(assert (=> b!4488560 m!5210559))

(declare-fun m!5210561 () Bool)

(assert (=> b!4488564 m!5210561))

(declare-fun m!5210563 () Bool)

(assert (=> b!4488564 m!5210563))

(declare-fun m!5210565 () Bool)

(assert (=> b!4488564 m!5210565))

(declare-fun m!5210567 () Bool)

(assert (=> b!4488564 m!5210567))

(declare-fun m!5210569 () Bool)

(assert (=> b!4488564 m!5210569))

(assert (=> b!4488564 m!5210565))

(assert (=> b!4488564 m!5210563))

(declare-fun m!5210571 () Bool)

(assert (=> b!4488564 m!5210571))

(declare-fun m!5210573 () Bool)

(assert (=> b!4488559 m!5210573))

(declare-fun m!5210575 () Bool)

(assert (=> b!4488559 m!5210575))

(declare-fun m!5210577 () Bool)

(assert (=> b!4488559 m!5210577))

(declare-fun m!5210579 () Bool)

(assert (=> b!4488559 m!5210579))

(assert (=> b!4488559 m!5210577))

(declare-fun m!5210581 () Bool)

(assert (=> b!4488559 m!5210581))

(declare-fun m!5210583 () Bool)

(assert (=> b!4488556 m!5210583))

(declare-fun m!5210585 () Bool)

(assert (=> b!4488567 m!5210585))

(declare-fun m!5210587 () Bool)

(assert (=> b!4488568 m!5210587))

(declare-fun m!5210589 () Bool)

(assert (=> b!4488563 m!5210589))

(assert (=> b!4488563 m!5210589))

(declare-fun m!5210591 () Bool)

(assert (=> b!4488563 m!5210591))

(declare-fun m!5210593 () Bool)

(assert (=> b!4488565 m!5210593))

(declare-fun m!5210595 () Bool)

(assert (=> b!4488570 m!5210595))

(push 1)

(assert (not b!4488561))

(assert (not b!4488560))

(assert (not b!4488556))

(assert (not b!4488557))

(assert (not b!4488563))

(assert tp_is_empty!27691)

(assert (not b!4488562))

(assert (not b!4488564))

(assert (not b!4488572))

(assert (not start!442298))

(assert (not b!4488555))

(assert (not b!4488571))

(assert (not b!4488565))

(assert (not b!4488568))

(assert (not b!4488570))

(assert (not b!4488566))

(assert tp_is_empty!27689)

(assert (not b!4488559))

(assert (not b!4488567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1374452 () Bool)

(assert (=> d!1374452 true))

(assert (=> d!1374452 true))

(declare-fun lambda!166928 () Int)

(declare-fun forall!10129 (List!50606 Int) Bool)

(assert (=> d!1374452 (= (allKeysSameHash!957 newBucket!178 hash!344 hashF!1107) (forall!10129 newBucket!178 lambda!166928))))

(declare-fun bs!827112 () Bool)

(assert (= bs!827112 d!1374452))

(declare-fun m!5210669 () Bool)

(assert (=> bs!827112 m!5210669))

(assert (=> b!4488572 d!1374452))

(declare-fun d!1374454 () Bool)

(declare-fun res!1864937 () Bool)

(declare-fun e!2795640 () Bool)

(assert (=> d!1374454 (=> res!1864937 e!2795640)))

(assert (=> d!1374454 (= res!1864937 (not (is-Cons!50482 newBucket!178)))))

(assert (=> d!1374454 (= (noDuplicateKeys!1103 newBucket!178) e!2795640)))

(declare-fun b!4488635 () Bool)

(declare-fun e!2795641 () Bool)

(assert (=> b!4488635 (= e!2795640 e!2795641)))

(declare-fun res!1864938 () Bool)

(assert (=> b!4488635 (=> (not res!1864938) (not e!2795641))))

(assert (=> b!4488635 (= res!1864938 (not (containsKey!1623 (t!357560 newBucket!178) (_1!28717 (h!56285 newBucket!178)))))))

(declare-fun b!4488636 () Bool)

(assert (=> b!4488636 (= e!2795641 (noDuplicateKeys!1103 (t!357560 newBucket!178)))))

(assert (= (and d!1374454 (not res!1864937)) b!4488635))

(assert (= (and b!4488635 res!1864938) b!4488636))

(declare-fun m!5210671 () Bool)

(assert (=> b!4488635 m!5210671))

(declare-fun m!5210673 () Bool)

(assert (=> b!4488636 m!5210673))

(assert (=> b!4488561 d!1374454))

(declare-fun bs!827113 () Bool)

(declare-fun d!1374456 () Bool)

(assert (= bs!827113 (and d!1374456 start!442298)))

(declare-fun lambda!166931 () Int)

(assert (=> bs!827113 (= lambda!166931 lambda!166918)))

(assert (=> d!1374456 (not (contains!13121 (extractMap!1159 (toList!4213 lm!1477)) key!3287))))

(declare-fun lt!1673199 () Unit!90434)

(declare-fun choose!28913 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> d!1374456 (= lt!1673199 (choose!28913 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1374456 (forall!10127 (toList!4213 lm!1477) lambda!166931)))

(assert (=> d!1374456 (= (lemmaNotInItsHashBucketThenNotInMap!91 lm!1477 key!3287 hashF!1107) lt!1673199)))

(declare-fun bs!827114 () Bool)

(assert (= bs!827114 d!1374456))

(assert (=> bs!827114 m!5210589))

(assert (=> bs!827114 m!5210589))

(assert (=> bs!827114 m!5210591))

(declare-fun m!5210687 () Bool)

(assert (=> bs!827114 m!5210687))

(declare-fun m!5210689 () Bool)

(assert (=> bs!827114 m!5210689))

(assert (=> b!4488571 d!1374456))

(declare-fun d!1374460 () Bool)

(declare-fun e!2795650 () Bool)

(assert (=> d!1374460 e!2795650))

(declare-fun res!1864947 () Bool)

(assert (=> d!1374460 (=> res!1864947 e!2795650)))

(declare-fun lt!1673209 () Bool)

(assert (=> d!1374460 (= res!1864947 (not lt!1673209))))

(declare-fun lt!1673211 () Bool)

(assert (=> d!1374460 (= lt!1673209 lt!1673211)))

(declare-fun lt!1673210 () Unit!90434)

(declare-fun e!2795649 () Unit!90434)

(assert (=> d!1374460 (= lt!1673210 e!2795649)))

(declare-fun c!764522 () Bool)

(assert (=> d!1374460 (= c!764522 lt!1673211)))

(declare-fun containsKey!1625 (List!50607 (_ BitVec 64)) Bool)

(assert (=> d!1374460 (= lt!1673211 (containsKey!1625 (toList!4213 lm!1477) lt!1673130))))

(assert (=> d!1374460 (= (contains!13120 lm!1477 lt!1673130) lt!1673209)))

(declare-fun b!4488649 () Bool)

(declare-fun lt!1673208 () Unit!90434)

(assert (=> b!4488649 (= e!2795649 lt!1673208)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!894 (List!50607 (_ BitVec 64)) Unit!90434)

(assert (=> b!4488649 (= lt!1673208 (lemmaContainsKeyImpliesGetValueByKeyDefined!894 (toList!4213 lm!1477) lt!1673130))))

(declare-datatypes ((Option!11010 0))(
  ( (None!11009) (Some!11009 (v!44443 List!50606)) )
))
(declare-fun isDefined!8297 (Option!11010) Bool)

(declare-fun getValueByKey!990 (List!50607 (_ BitVec 64)) Option!11010)

(assert (=> b!4488649 (isDefined!8297 (getValueByKey!990 (toList!4213 lm!1477) lt!1673130))))

(declare-fun b!4488650 () Bool)

(declare-fun Unit!90442 () Unit!90434)

(assert (=> b!4488650 (= e!2795649 Unit!90442)))

(declare-fun b!4488651 () Bool)

(assert (=> b!4488651 (= e!2795650 (isDefined!8297 (getValueByKey!990 (toList!4213 lm!1477) lt!1673130)))))

(assert (= (and d!1374460 c!764522) b!4488649))

(assert (= (and d!1374460 (not c!764522)) b!4488650))

(assert (= (and d!1374460 (not res!1864947)) b!4488651))

(declare-fun m!5210691 () Bool)

(assert (=> d!1374460 m!5210691))

(declare-fun m!5210693 () Bool)

(assert (=> b!4488649 m!5210693))

(declare-fun m!5210695 () Bool)

(assert (=> b!4488649 m!5210695))

(assert (=> b!4488649 m!5210695))

(declare-fun m!5210697 () Bool)

(assert (=> b!4488649 m!5210697))

(assert (=> b!4488651 m!5210695))

(assert (=> b!4488651 m!5210695))

(assert (=> b!4488651 m!5210697))

(assert (=> b!4488562 d!1374460))

(declare-fun bs!827115 () Bool)

(declare-fun d!1374462 () Bool)

(assert (= bs!827115 (and d!1374462 start!442298)))

(declare-fun lambda!166934 () Int)

(assert (=> bs!827115 (= lambda!166934 lambda!166918)))

(declare-fun bs!827116 () Bool)

(assert (= bs!827116 (and d!1374462 d!1374456)))

(assert (=> bs!827116 (= lambda!166934 lambda!166931)))

(assert (=> d!1374462 (contains!13120 lm!1477 (hash!2620 hashF!1107 key!3287))))

(declare-fun lt!1673214 () Unit!90434)

(declare-fun choose!28914 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> d!1374462 (= lt!1673214 (choose!28914 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1374462 (forall!10127 (toList!4213 lm!1477) lambda!166934)))

(assert (=> d!1374462 (= (lemmaInGenMapThenLongMapContainsHash!177 lm!1477 key!3287 hashF!1107) lt!1673214)))

(declare-fun bs!827117 () Bool)

(assert (= bs!827117 d!1374462))

(assert (=> bs!827117 m!5210593))

(assert (=> bs!827117 m!5210593))

(declare-fun m!5210699 () Bool)

(assert (=> bs!827117 m!5210699))

(declare-fun m!5210701 () Bool)

(assert (=> bs!827117 m!5210701))

(declare-fun m!5210703 () Bool)

(assert (=> bs!827117 m!5210703))

(assert (=> b!4488562 d!1374462))

(declare-fun d!1374464 () Bool)

(assert (=> d!1374464 (contains!13122 (toList!4213 lm!1477) (tuple2!50849 hash!344 lt!1673127))))

(declare-fun lt!1673217 () Unit!90434)

(declare-fun choose!28915 (List!50607 (_ BitVec 64) List!50606) Unit!90434)

(assert (=> d!1374464 (= lt!1673217 (choose!28915 (toList!4213 lm!1477) hash!344 lt!1673127))))

(declare-fun e!2795653 () Bool)

(assert (=> d!1374464 e!2795653))

(declare-fun res!1864950 () Bool)

(assert (=> d!1374464 (=> (not res!1864950) (not e!2795653))))

(declare-fun isStrictlySorted!380 (List!50607) Bool)

(assert (=> d!1374464 (= res!1864950 (isStrictlySorted!380 (toList!4213 lm!1477)))))

(assert (=> d!1374464 (= (lemmaGetValueByKeyImpliesContainsTuple!615 (toList!4213 lm!1477) hash!344 lt!1673127) lt!1673217)))

(declare-fun b!4488654 () Bool)

(assert (=> b!4488654 (= e!2795653 (= (getValueByKey!990 (toList!4213 lm!1477) hash!344) (Some!11009 lt!1673127)))))

(assert (= (and d!1374464 res!1864950) b!4488654))

(declare-fun m!5210705 () Bool)

(assert (=> d!1374464 m!5210705))

(declare-fun m!5210707 () Bool)

(assert (=> d!1374464 m!5210707))

(declare-fun m!5210709 () Bool)

(assert (=> d!1374464 m!5210709))

(declare-fun m!5210711 () Bool)

(assert (=> b!4488654 m!5210711))

(assert (=> b!4488562 d!1374464))

(declare-fun d!1374466 () Bool)

(declare-fun lt!1673220 () Bool)

(declare-fun content!8204 (List!50607) (Set tuple2!50848))

(assert (=> d!1374466 (= lt!1673220 (set.member lt!1673128 (content!8204 (toList!4213 lm!1477))))))

(declare-fun e!2795658 () Bool)

(assert (=> d!1374466 (= lt!1673220 e!2795658)))

(declare-fun res!1864956 () Bool)

(assert (=> d!1374466 (=> (not res!1864956) (not e!2795658))))

(assert (=> d!1374466 (= res!1864956 (is-Cons!50483 (toList!4213 lm!1477)))))

(assert (=> d!1374466 (= (contains!13122 (toList!4213 lm!1477) lt!1673128) lt!1673220)))

(declare-fun b!4488659 () Bool)

(declare-fun e!2795659 () Bool)

(assert (=> b!4488659 (= e!2795658 e!2795659)))

(declare-fun res!1864955 () Bool)

(assert (=> b!4488659 (=> res!1864955 e!2795659)))

(assert (=> b!4488659 (= res!1864955 (= (h!56286 (toList!4213 lm!1477)) lt!1673128))))

(declare-fun b!4488660 () Bool)

(assert (=> b!4488660 (= e!2795659 (contains!13122 (t!357561 (toList!4213 lm!1477)) lt!1673128))))

(assert (= (and d!1374466 res!1864956) b!4488659))

(assert (= (and b!4488659 (not res!1864955)) b!4488660))

(declare-fun m!5210713 () Bool)

(assert (=> d!1374466 m!5210713))

(declare-fun m!5210715 () Bool)

(assert (=> d!1374466 m!5210715))

(assert (=> b!4488660 m!5210585))

(assert (=> b!4488562 d!1374466))

(declare-fun d!1374468 () Bool)

(declare-fun get!16479 (Option!11010) List!50606)

(assert (=> d!1374468 (= (apply!11840 lm!1477 hash!344) (get!16479 (getValueByKey!990 (toList!4213 lm!1477) hash!344)))))

(declare-fun bs!827118 () Bool)

(assert (= bs!827118 d!1374468))

(assert (=> bs!827118 m!5210711))

(assert (=> bs!827118 m!5210711))

(declare-fun m!5210717 () Bool)

(assert (=> bs!827118 m!5210717))

(assert (=> b!4488562 d!1374468))

(declare-fun d!1374470 () Bool)

(declare-fun dynLambda!21074 (Int tuple2!50848) Bool)

(assert (=> d!1374470 (dynLambda!21074 lambda!166918 lt!1673128)))

(declare-fun lt!1673225 () Unit!90434)

(declare-fun choose!28916 (List!50607 Int tuple2!50848) Unit!90434)

(assert (=> d!1374470 (= lt!1673225 (choose!28916 (toList!4213 lm!1477) lambda!166918 lt!1673128))))

(declare-fun e!2795664 () Bool)

(assert (=> d!1374470 e!2795664))

(declare-fun res!1864959 () Bool)

(assert (=> d!1374470 (=> (not res!1864959) (not e!2795664))))

(assert (=> d!1374470 (= res!1864959 (forall!10127 (toList!4213 lm!1477) lambda!166918))))

(assert (=> d!1374470 (= (forallContained!2386 (toList!4213 lm!1477) lambda!166918 lt!1673128) lt!1673225)))

(declare-fun b!4488667 () Bool)

(assert (=> b!4488667 (= e!2795664 (contains!13122 (toList!4213 lm!1477) lt!1673128))))

(assert (= (and d!1374470 res!1864959) b!4488667))

(declare-fun b_lambda!150881 () Bool)

(assert (=> (not b_lambda!150881) (not d!1374470)))

(declare-fun m!5210719 () Bool)

(assert (=> d!1374470 m!5210719))

(declare-fun m!5210721 () Bool)

(assert (=> d!1374470 m!5210721))

(assert (=> d!1374470 m!5210531))

(assert (=> b!4488667 m!5210547))

(assert (=> b!4488562 d!1374470))

(declare-fun b!4488681 () Bool)

(declare-fun e!2795670 () List!50606)

(assert (=> b!4488681 (= e!2795670 Nil!50482)))

(declare-fun b!4488679 () Bool)

(declare-fun e!2795671 () List!50606)

(assert (=> b!4488679 (= e!2795671 e!2795670)))

(declare-fun c!764530 () Bool)

(assert (=> b!4488679 (= c!764530 (is-Cons!50482 lt!1673127))))

(declare-fun b!4488680 () Bool)

(assert (=> b!4488680 (= e!2795670 (Cons!50482 (h!56285 lt!1673127) (removePairForKey!730 (t!357560 lt!1673127) key!3287)))))

(declare-fun b!4488678 () Bool)

(assert (=> b!4488678 (= e!2795671 (t!357560 lt!1673127))))

(declare-fun d!1374472 () Bool)

(declare-fun lt!1673229 () List!50606)

(assert (=> d!1374472 (not (containsKey!1623 lt!1673229 key!3287))))

(assert (=> d!1374472 (= lt!1673229 e!2795671)))

(declare-fun c!764531 () Bool)

(assert (=> d!1374472 (= c!764531 (and (is-Cons!50482 lt!1673127) (= (_1!28717 (h!56285 lt!1673127)) key!3287)))))

(assert (=> d!1374472 (noDuplicateKeys!1103 lt!1673127)))

(assert (=> d!1374472 (= (removePairForKey!730 lt!1673127 key!3287) lt!1673229)))

(assert (= (and d!1374472 c!764531) b!4488678))

(assert (= (and d!1374472 (not c!764531)) b!4488679))

(assert (= (and b!4488679 c!764530) b!4488680))

(assert (= (and b!4488679 (not c!764530)) b!4488681))

(declare-fun m!5210725 () Bool)

(assert (=> b!4488680 m!5210725))

(declare-fun m!5210727 () Bool)

(assert (=> d!1374472 m!5210727))

(declare-fun m!5210731 () Bool)

(assert (=> d!1374472 m!5210731))

(assert (=> b!4488562 d!1374472))

(declare-fun d!1374474 () Bool)

(declare-fun res!1864964 () Bool)

(declare-fun e!2795676 () Bool)

(assert (=> d!1374474 (=> res!1864964 e!2795676)))

(assert (=> d!1374474 (= res!1864964 (is-Nil!50483 (toList!4213 lm!1477)))))

(assert (=> d!1374474 (= (forall!10127 (toList!4213 lm!1477) lambda!166918) e!2795676)))

(declare-fun b!4488686 () Bool)

(declare-fun e!2795677 () Bool)

(assert (=> b!4488686 (= e!2795676 e!2795677)))

(declare-fun res!1864965 () Bool)

(assert (=> b!4488686 (=> (not res!1864965) (not e!2795677))))

(assert (=> b!4488686 (= res!1864965 (dynLambda!21074 lambda!166918 (h!56286 (toList!4213 lm!1477))))))

(declare-fun b!4488687 () Bool)

(assert (=> b!4488687 (= e!2795677 (forall!10127 (t!357561 (toList!4213 lm!1477)) lambda!166918))))

(assert (= (and d!1374474 (not res!1864964)) b!4488686))

(assert (= (and b!4488686 res!1864965) b!4488687))

(declare-fun b_lambda!150883 () Bool)

(assert (=> (not b_lambda!150883) (not b!4488686)))

(declare-fun m!5210737 () Bool)

(assert (=> b!4488686 m!5210737))

(declare-fun m!5210739 () Bool)

(assert (=> b!4488687 m!5210739))

(assert (=> start!442298 d!1374474))

(declare-fun d!1374478 () Bool)

(assert (=> d!1374478 (= (inv!66083 lm!1477) (isStrictlySorted!380 (toList!4213 lm!1477)))))

(declare-fun bs!827120 () Bool)

(assert (= bs!827120 d!1374478))

(assert (=> bs!827120 m!5210709))

(assert (=> start!442298 d!1374478))

(declare-fun d!1374480 () Bool)

(declare-fun content!8205 (List!50606) (Set tuple2!50846))

(assert (=> d!1374480 (= (eq!560 (extractMap!1159 (toList!4213 lt!1673136)) (-!329 lt!1673125 key!3287)) (= (content!8205 (toList!4214 (extractMap!1159 (toList!4213 lt!1673136)))) (content!8205 (toList!4214 (-!329 lt!1673125 key!3287)))))))

(declare-fun bs!827122 () Bool)

(assert (= bs!827122 d!1374480))

(declare-fun m!5210745 () Bool)

(assert (=> bs!827122 m!5210745))

(declare-fun m!5210747 () Bool)

(assert (=> bs!827122 m!5210747))

(assert (=> b!4488564 d!1374480))

(declare-fun bs!827123 () Bool)

(declare-fun d!1374484 () Bool)

(assert (= bs!827123 (and d!1374484 start!442298)))

(declare-fun lambda!166940 () Int)

(assert (=> bs!827123 (= lambda!166940 lambda!166918)))

(declare-fun bs!827124 () Bool)

(assert (= bs!827124 (and d!1374484 d!1374456)))

(assert (=> bs!827124 (= lambda!166940 lambda!166931)))

(declare-fun bs!827125 () Bool)

(assert (= bs!827125 (and d!1374484 d!1374462)))

(assert (=> bs!827125 (= lambda!166940 lambda!166934)))

(assert (=> d!1374484 (eq!560 (extractMap!1159 (toList!4213 (+!1439 lt!1673132 (tuple2!50849 hash!344 newBucket!178)))) (-!329 (extractMap!1159 (toList!4213 lt!1673132)) key!3287))))

(declare-fun lt!1673232 () Unit!90434)

(declare-fun choose!28917 (ListLongMap!2845 (_ BitVec 64) List!50606 K!11898 Hashable!5498) Unit!90434)

(assert (=> d!1374484 (= lt!1673232 (choose!28917 lt!1673132 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1374484 (forall!10127 (toList!4213 lt!1673132) lambda!166940)))

(assert (=> d!1374484 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!88 lt!1673132 hash!344 newBucket!178 key!3287 hashF!1107) lt!1673232)))

(declare-fun bs!827126 () Bool)

(assert (= bs!827126 d!1374484))

(declare-fun m!5210753 () Bool)

(assert (=> bs!827126 m!5210753))

(declare-fun m!5210755 () Bool)

(assert (=> bs!827126 m!5210755))

(declare-fun m!5210757 () Bool)

(assert (=> bs!827126 m!5210757))

(assert (=> bs!827126 m!5210581))

(assert (=> bs!827126 m!5210567))

(assert (=> bs!827126 m!5210581))

(declare-fun m!5210759 () Bool)

(assert (=> bs!827126 m!5210759))

(assert (=> bs!827126 m!5210757))

(assert (=> bs!827126 m!5210759))

(declare-fun m!5210761 () Bool)

(assert (=> bs!827126 m!5210761))

(assert (=> b!4488564 d!1374484))

(declare-fun d!1374488 () Bool)

(declare-fun res!1864972 () Bool)

(declare-fun e!2795684 () Bool)

(assert (=> d!1374488 (=> res!1864972 e!2795684)))

(assert (=> d!1374488 (= res!1864972 (is-Nil!50483 (toList!4213 lt!1673136)))))

(assert (=> d!1374488 (= (forall!10127 (toList!4213 lt!1673136) lambda!166918) e!2795684)))

(declare-fun b!4488694 () Bool)

(declare-fun e!2795685 () Bool)

(assert (=> b!4488694 (= e!2795684 e!2795685)))

(declare-fun res!1864973 () Bool)

(assert (=> b!4488694 (=> (not res!1864973) (not e!2795685))))

(assert (=> b!4488694 (= res!1864973 (dynLambda!21074 lambda!166918 (h!56286 (toList!4213 lt!1673136))))))

(declare-fun b!4488695 () Bool)

(assert (=> b!4488695 (= e!2795685 (forall!10127 (t!357561 (toList!4213 lt!1673136)) lambda!166918))))

(assert (= (and d!1374488 (not res!1864972)) b!4488694))

(assert (= (and b!4488694 res!1864973) b!4488695))

(declare-fun b_lambda!150887 () Bool)

(assert (=> (not b_lambda!150887) (not b!4488694)))

(declare-fun m!5210763 () Bool)

(assert (=> b!4488694 m!5210763))

(declare-fun m!5210765 () Bool)

(assert (=> b!4488695 m!5210765))

(assert (=> b!4488564 d!1374488))

(declare-fun d!1374490 () Bool)

(declare-fun e!2795688 () Bool)

(assert (=> d!1374490 e!2795688))

(declare-fun res!1864979 () Bool)

(assert (=> d!1374490 (=> (not res!1864979) (not e!2795688))))

(declare-fun lt!1673243 () ListLongMap!2845)

(assert (=> d!1374490 (= res!1864979 (contains!13120 lt!1673243 (_1!28718 (tuple2!50849 hash!344 newBucket!178))))))

(declare-fun lt!1673242 () List!50607)

(assert (=> d!1374490 (= lt!1673243 (ListLongMap!2846 lt!1673242))))

(declare-fun lt!1673244 () Unit!90434)

(declare-fun lt!1673241 () Unit!90434)

(assert (=> d!1374490 (= lt!1673244 lt!1673241)))

(assert (=> d!1374490 (= (getValueByKey!990 lt!1673242 (_1!28718 (tuple2!50849 hash!344 newBucket!178))) (Some!11009 (_2!28718 (tuple2!50849 hash!344 newBucket!178))))))

(declare-fun lemmaContainsTupThenGetReturnValue!613 (List!50607 (_ BitVec 64) List!50606) Unit!90434)

(assert (=> d!1374490 (= lt!1673241 (lemmaContainsTupThenGetReturnValue!613 lt!1673242 (_1!28718 (tuple2!50849 hash!344 newBucket!178)) (_2!28718 (tuple2!50849 hash!344 newBucket!178))))))

(declare-fun insertStrictlySorted!357 (List!50607 (_ BitVec 64) List!50606) List!50607)

(assert (=> d!1374490 (= lt!1673242 (insertStrictlySorted!357 (toList!4213 lt!1673132) (_1!28718 (tuple2!50849 hash!344 newBucket!178)) (_2!28718 (tuple2!50849 hash!344 newBucket!178))))))

(assert (=> d!1374490 (= (+!1439 lt!1673132 (tuple2!50849 hash!344 newBucket!178)) lt!1673243)))

(declare-fun b!4488700 () Bool)

(declare-fun res!1864978 () Bool)

(assert (=> b!4488700 (=> (not res!1864978) (not e!2795688))))

(assert (=> b!4488700 (= res!1864978 (= (getValueByKey!990 (toList!4213 lt!1673243) (_1!28718 (tuple2!50849 hash!344 newBucket!178))) (Some!11009 (_2!28718 (tuple2!50849 hash!344 newBucket!178)))))))

(declare-fun b!4488701 () Bool)

(assert (=> b!4488701 (= e!2795688 (contains!13122 (toList!4213 lt!1673243) (tuple2!50849 hash!344 newBucket!178)))))

(assert (= (and d!1374490 res!1864979) b!4488700))

(assert (= (and b!4488700 res!1864978) b!4488701))

(declare-fun m!5210767 () Bool)

(assert (=> d!1374490 m!5210767))

(declare-fun m!5210769 () Bool)

(assert (=> d!1374490 m!5210769))

(declare-fun m!5210771 () Bool)

(assert (=> d!1374490 m!5210771))

(declare-fun m!5210773 () Bool)

(assert (=> d!1374490 m!5210773))

(declare-fun m!5210775 () Bool)

(assert (=> b!4488700 m!5210775))

(declare-fun m!5210777 () Bool)

(assert (=> b!4488701 m!5210777))

(assert (=> b!4488564 d!1374490))

(declare-fun d!1374492 () Bool)

(declare-fun e!2795691 () Bool)

(assert (=> d!1374492 e!2795691))

(declare-fun res!1864982 () Bool)

(assert (=> d!1374492 (=> (not res!1864982) (not e!2795691))))

(declare-fun lt!1673247 () ListMap!3475)

(assert (=> d!1374492 (= res!1864982 (not (contains!13121 lt!1673247 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!90 (List!50606 K!11898) List!50606)

(assert (=> d!1374492 (= lt!1673247 (ListMap!3476 (removePresrvNoDuplicatedKeys!90 (toList!4214 lt!1673125) key!3287)))))

(assert (=> d!1374492 (= (-!329 lt!1673125 key!3287) lt!1673247)))

(declare-fun b!4488704 () Bool)

(declare-datatypes ((List!50610 0))(
  ( (Nil!50486) (Cons!50486 (h!56291 K!11898) (t!357564 List!50610)) )
))
(declare-fun content!8206 (List!50610) (Set K!11898))

(declare-fun keys!17483 (ListMap!3475) List!50610)

(assert (=> b!4488704 (= e!2795691 (= (set.minus (content!8206 (keys!17483 lt!1673125)) (set.insert key!3287 (as set.empty (Set K!11898)))) (content!8206 (keys!17483 lt!1673247))))))

(assert (= (and d!1374492 res!1864982) b!4488704))

(declare-fun m!5210779 () Bool)

(assert (=> d!1374492 m!5210779))

(declare-fun m!5210781 () Bool)

(assert (=> d!1374492 m!5210781))

(declare-fun m!5210783 () Bool)

(assert (=> b!4488704 m!5210783))

(declare-fun m!5210785 () Bool)

(assert (=> b!4488704 m!5210785))

(declare-fun m!5210787 () Bool)

(assert (=> b!4488704 m!5210787))

(assert (=> b!4488704 m!5210783))

(declare-fun m!5210789 () Bool)

(assert (=> b!4488704 m!5210789))

(declare-fun m!5210791 () Bool)

(assert (=> b!4488704 m!5210791))

(assert (=> b!4488704 m!5210785))

(assert (=> b!4488564 d!1374492))

(declare-fun bs!827127 () Bool)

(declare-fun d!1374494 () Bool)

(assert (= bs!827127 (and d!1374494 start!442298)))

(declare-fun lambda!166945 () Int)

(assert (=> bs!827127 (= lambda!166945 lambda!166918)))

(declare-fun bs!827128 () Bool)

(assert (= bs!827128 (and d!1374494 d!1374456)))

(assert (=> bs!827128 (= lambda!166945 lambda!166931)))

(declare-fun bs!827129 () Bool)

(assert (= bs!827129 (and d!1374494 d!1374462)))

(assert (=> bs!827129 (= lambda!166945 lambda!166934)))

(declare-fun bs!827130 () Bool)

(assert (= bs!827130 (and d!1374494 d!1374484)))

(assert (=> bs!827130 (= lambda!166945 lambda!166940)))

(declare-fun lt!1673250 () ListMap!3475)

(declare-fun invariantList!966 (List!50606) Bool)

(assert (=> d!1374494 (invariantList!966 (toList!4214 lt!1673250))))

(declare-fun e!2795694 () ListMap!3475)

(assert (=> d!1374494 (= lt!1673250 e!2795694)))

(declare-fun c!764534 () Bool)

(assert (=> d!1374494 (= c!764534 (is-Cons!50483 (toList!4213 lt!1673136)))))

(assert (=> d!1374494 (forall!10127 (toList!4213 lt!1673136) lambda!166945)))

(assert (=> d!1374494 (= (extractMap!1159 (toList!4213 lt!1673136)) lt!1673250)))

(declare-fun b!4488709 () Bool)

(declare-fun addToMapMapFromBucket!634 (List!50606 ListMap!3475) ListMap!3475)

(assert (=> b!4488709 (= e!2795694 (addToMapMapFromBucket!634 (_2!28718 (h!56286 (toList!4213 lt!1673136))) (extractMap!1159 (t!357561 (toList!4213 lt!1673136)))))))

(declare-fun b!4488710 () Bool)

(assert (=> b!4488710 (= e!2795694 (ListMap!3476 Nil!50482))))

(assert (= (and d!1374494 c!764534) b!4488709))

(assert (= (and d!1374494 (not c!764534)) b!4488710))

(declare-fun m!5210793 () Bool)

(assert (=> d!1374494 m!5210793))

(declare-fun m!5210795 () Bool)

(assert (=> d!1374494 m!5210795))

(declare-fun m!5210797 () Bool)

(assert (=> b!4488709 m!5210797))

(assert (=> b!4488709 m!5210797))

(declare-fun m!5210799 () Bool)

(assert (=> b!4488709 m!5210799))

(assert (=> b!4488564 d!1374494))

(declare-fun b!4488729 () Bool)

(declare-fun e!2795710 () Bool)

(declare-fun contains!13126 (List!50610 K!11898) Bool)

(assert (=> b!4488729 (= e!2795710 (not (contains!13126 (keys!17483 (extractMap!1159 (toList!4213 lm!1477))) key!3287)))))

(declare-fun d!1374496 () Bool)

(declare-fun e!2795712 () Bool)

(assert (=> d!1374496 e!2795712))

(declare-fun res!1864991 () Bool)

(assert (=> d!1374496 (=> res!1864991 e!2795712)))

(assert (=> d!1374496 (= res!1864991 e!2795710)))

(declare-fun res!1864990 () Bool)

(assert (=> d!1374496 (=> (not res!1864990) (not e!2795710))))

(declare-fun lt!1673274 () Bool)

(assert (=> d!1374496 (= res!1864990 (not lt!1673274))))

(declare-fun lt!1673277 () Bool)

(assert (=> d!1374496 (= lt!1673274 lt!1673277)))

(declare-fun lt!1673271 () Unit!90434)

(declare-fun e!2795708 () Unit!90434)

(assert (=> d!1374496 (= lt!1673271 e!2795708)))

(declare-fun c!764542 () Bool)

(assert (=> d!1374496 (= c!764542 lt!1673277)))

(declare-fun containsKey!1626 (List!50606 K!11898) Bool)

(assert (=> d!1374496 (= lt!1673277 (containsKey!1626 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(assert (=> d!1374496 (= (contains!13121 (extractMap!1159 (toList!4213 lm!1477)) key!3287) lt!1673274)))

(declare-fun b!4488730 () Bool)

(declare-fun e!2795711 () Bool)

(assert (=> b!4488730 (= e!2795711 (contains!13126 (keys!17483 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(declare-fun b!4488731 () Bool)

(declare-fun e!2795709 () List!50610)

(declare-fun getKeysList!414 (List!50606) List!50610)

(assert (=> b!4488731 (= e!2795709 (getKeysList!414 (toList!4214 (extractMap!1159 (toList!4213 lm!1477)))))))

(declare-fun b!4488732 () Bool)

(declare-fun e!2795707 () Unit!90434)

(declare-fun Unit!90443 () Unit!90434)

(assert (=> b!4488732 (= e!2795707 Unit!90443)))

(declare-fun b!4488733 () Bool)

(assert (=> b!4488733 (= e!2795708 e!2795707)))

(declare-fun c!764543 () Bool)

(declare-fun call!312358 () Bool)

(assert (=> b!4488733 (= c!764543 call!312358)))

(declare-fun b!4488734 () Bool)

(assert (=> b!4488734 (= e!2795709 (keys!17483 (extractMap!1159 (toList!4213 lm!1477))))))

(declare-fun bm!312353 () Bool)

(assert (=> bm!312353 (= call!312358 (contains!13126 e!2795709 key!3287))))

(declare-fun c!764541 () Bool)

(assert (=> bm!312353 (= c!764541 c!764542)))

(declare-fun b!4488735 () Bool)

(declare-fun lt!1673276 () Unit!90434)

(assert (=> b!4488735 (= e!2795708 lt!1673276)))

(declare-fun lt!1673272 () Unit!90434)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!895 (List!50606 K!11898) Unit!90434)

(assert (=> b!4488735 (= lt!1673272 (lemmaContainsKeyImpliesGetValueByKeyDefined!895 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(declare-datatypes ((Option!11011 0))(
  ( (None!11010) (Some!11010 (v!44446 V!12144)) )
))
(declare-fun isDefined!8298 (Option!11011) Bool)

(declare-fun getValueByKey!991 (List!50606 K!11898) Option!11011)

(assert (=> b!4488735 (isDefined!8298 (getValueByKey!991 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(declare-fun lt!1673275 () Unit!90434)

(assert (=> b!4488735 (= lt!1673275 lt!1673272)))

(declare-fun lemmaInListThenGetKeysListContains!410 (List!50606 K!11898) Unit!90434)

(assert (=> b!4488735 (= lt!1673276 (lemmaInListThenGetKeysListContains!410 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(assert (=> b!4488735 call!312358))

(declare-fun b!4488736 () Bool)

(assert (=> b!4488736 false))

(declare-fun lt!1673270 () Unit!90434)

(declare-fun lt!1673273 () Unit!90434)

(assert (=> b!4488736 (= lt!1673270 lt!1673273)))

(assert (=> b!4488736 (containsKey!1626 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!413 (List!50606 K!11898) Unit!90434)

(assert (=> b!4488736 (= lt!1673273 (lemmaInGetKeysListThenContainsKey!413 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287))))

(declare-fun Unit!90444 () Unit!90434)

(assert (=> b!4488736 (= e!2795707 Unit!90444)))

(declare-fun b!4488737 () Bool)

(assert (=> b!4488737 (= e!2795712 e!2795711)))

(declare-fun res!1864989 () Bool)

(assert (=> b!4488737 (=> (not res!1864989) (not e!2795711))))

(assert (=> b!4488737 (= res!1864989 (isDefined!8298 (getValueByKey!991 (toList!4214 (extractMap!1159 (toList!4213 lm!1477))) key!3287)))))

(assert (= (and d!1374496 c!764542) b!4488735))

(assert (= (and d!1374496 (not c!764542)) b!4488733))

(assert (= (and b!4488733 c!764543) b!4488736))

(assert (= (and b!4488733 (not c!764543)) b!4488732))

(assert (= (or b!4488735 b!4488733) bm!312353))

(assert (= (and bm!312353 c!764541) b!4488731))

(assert (= (and bm!312353 (not c!764541)) b!4488734))

(assert (= (and d!1374496 res!1864990) b!4488729))

(assert (= (and d!1374496 (not res!1864991)) b!4488737))

(assert (= (and b!4488737 res!1864989) b!4488730))

(assert (=> b!4488734 m!5210589))

(declare-fun m!5210811 () Bool)

(assert (=> b!4488734 m!5210811))

(declare-fun m!5210813 () Bool)

(assert (=> b!4488737 m!5210813))

(assert (=> b!4488737 m!5210813))

(declare-fun m!5210815 () Bool)

(assert (=> b!4488737 m!5210815))

(declare-fun m!5210817 () Bool)

(assert (=> d!1374496 m!5210817))

(assert (=> b!4488730 m!5210589))

(assert (=> b!4488730 m!5210811))

(assert (=> b!4488730 m!5210811))

(declare-fun m!5210819 () Bool)

(assert (=> b!4488730 m!5210819))

(assert (=> b!4488729 m!5210589))

(assert (=> b!4488729 m!5210811))

(assert (=> b!4488729 m!5210811))

(assert (=> b!4488729 m!5210819))

(declare-fun m!5210821 () Bool)

(assert (=> bm!312353 m!5210821))

(assert (=> b!4488736 m!5210817))

(declare-fun m!5210823 () Bool)

(assert (=> b!4488736 m!5210823))

(declare-fun m!5210825 () Bool)

(assert (=> b!4488731 m!5210825))

(declare-fun m!5210827 () Bool)

(assert (=> b!4488735 m!5210827))

(assert (=> b!4488735 m!5210813))

(assert (=> b!4488735 m!5210813))

(assert (=> b!4488735 m!5210815))

(declare-fun m!5210829 () Bool)

(assert (=> b!4488735 m!5210829))

(assert (=> b!4488563 d!1374496))

(declare-fun bs!827134 () Bool)

(declare-fun d!1374500 () Bool)

(assert (= bs!827134 (and d!1374500 d!1374484)))

(declare-fun lambda!166947 () Int)

(assert (=> bs!827134 (= lambda!166947 lambda!166940)))

(declare-fun bs!827135 () Bool)

(assert (= bs!827135 (and d!1374500 d!1374462)))

(assert (=> bs!827135 (= lambda!166947 lambda!166934)))

(declare-fun bs!827136 () Bool)

(assert (= bs!827136 (and d!1374500 start!442298)))

(assert (=> bs!827136 (= lambda!166947 lambda!166918)))

(declare-fun bs!827137 () Bool)

(assert (= bs!827137 (and d!1374500 d!1374456)))

(assert (=> bs!827137 (= lambda!166947 lambda!166931)))

(declare-fun bs!827138 () Bool)

(assert (= bs!827138 (and d!1374500 d!1374494)))

(assert (=> bs!827138 (= lambda!166947 lambda!166945)))

(declare-fun lt!1673280 () ListMap!3475)

(assert (=> d!1374500 (invariantList!966 (toList!4214 lt!1673280))))

(declare-fun e!2795715 () ListMap!3475)

(assert (=> d!1374500 (= lt!1673280 e!2795715)))

(declare-fun c!764544 () Bool)

(assert (=> d!1374500 (= c!764544 (is-Cons!50483 (toList!4213 lm!1477)))))

(assert (=> d!1374500 (forall!10127 (toList!4213 lm!1477) lambda!166947)))

(assert (=> d!1374500 (= (extractMap!1159 (toList!4213 lm!1477)) lt!1673280)))

(declare-fun b!4488740 () Bool)

(assert (=> b!4488740 (= e!2795715 (addToMapMapFromBucket!634 (_2!28718 (h!56286 (toList!4213 lm!1477))) (extractMap!1159 (t!357561 (toList!4213 lm!1477)))))))

(declare-fun b!4488741 () Bool)

(assert (=> b!4488741 (= e!2795715 (ListMap!3476 Nil!50482))))

(assert (= (and d!1374500 c!764544) b!4488740))

(assert (= (and d!1374500 (not c!764544)) b!4488741))

(declare-fun m!5210831 () Bool)

(assert (=> d!1374500 m!5210831))

(declare-fun m!5210833 () Bool)

(assert (=> d!1374500 m!5210833))

(assert (=> b!4488740 m!5210577))

(assert (=> b!4488740 m!5210577))

(declare-fun m!5210835 () Bool)

(assert (=> b!4488740 m!5210835))

(assert (=> b!4488563 d!1374500))

(declare-fun d!1374502 () Bool)

(declare-fun hash!2624 (Hashable!5498 K!11898) (_ BitVec 64))

(assert (=> d!1374502 (= (hash!2620 hashF!1107 key!3287) (hash!2624 hashF!1107 key!3287))))

(declare-fun bs!827139 () Bool)

(assert (= bs!827139 d!1374502))

(declare-fun m!5210837 () Bool)

(assert (=> bs!827139 m!5210837))

(assert (=> b!4488565 d!1374502))

(declare-fun d!1374504 () Bool)

(assert (=> d!1374504 (= (apply!11840 lt!1673132 hash!344) (get!16479 (getValueByKey!990 (toList!4213 lt!1673132) hash!344)))))

(declare-fun bs!827140 () Bool)

(assert (= bs!827140 d!1374504))

(declare-fun m!5210839 () Bool)

(assert (=> bs!827140 m!5210839))

(assert (=> bs!827140 m!5210839))

(declare-fun m!5210841 () Bool)

(assert (=> bs!827140 m!5210841))

(assert (=> b!4488556 d!1374504))

(declare-fun d!1374506 () Bool)

(declare-fun e!2795718 () Bool)

(assert (=> d!1374506 e!2795718))

(declare-fun res!1864995 () Bool)

(assert (=> d!1374506 (=> res!1864995 e!2795718)))

(declare-fun lt!1673283 () Bool)

(assert (=> d!1374506 (= res!1864995 (not lt!1673283))))

(declare-fun lt!1673285 () Bool)

(assert (=> d!1374506 (= lt!1673283 lt!1673285)))

(declare-fun lt!1673284 () Unit!90434)

(declare-fun e!2795717 () Unit!90434)

(assert (=> d!1374506 (= lt!1673284 e!2795717)))

(declare-fun c!764545 () Bool)

(assert (=> d!1374506 (= c!764545 lt!1673285)))

(assert (=> d!1374506 (= lt!1673285 (containsKey!1625 (toList!4213 lt!1673132) hash!344))))

(assert (=> d!1374506 (= (contains!13120 lt!1673132 hash!344) lt!1673283)))

(declare-fun b!4488743 () Bool)

(declare-fun lt!1673282 () Unit!90434)

(assert (=> b!4488743 (= e!2795717 lt!1673282)))

(assert (=> b!4488743 (= lt!1673282 (lemmaContainsKeyImpliesGetValueByKeyDefined!894 (toList!4213 lt!1673132) hash!344))))

(assert (=> b!4488743 (isDefined!8297 (getValueByKey!990 (toList!4213 lt!1673132) hash!344))))

(declare-fun b!4488744 () Bool)

(declare-fun Unit!90445 () Unit!90434)

(assert (=> b!4488744 (= e!2795717 Unit!90445)))

(declare-fun b!4488745 () Bool)

(assert (=> b!4488745 (= e!2795718 (isDefined!8297 (getValueByKey!990 (toList!4213 lt!1673132) hash!344)))))

(assert (= (and d!1374506 c!764545) b!4488743))

(assert (= (and d!1374506 (not c!764545)) b!4488744))

(assert (= (and d!1374506 (not res!1864995)) b!4488745))

(declare-fun m!5210857 () Bool)

(assert (=> d!1374506 m!5210857))

(declare-fun m!5210859 () Bool)

(assert (=> b!4488743 m!5210859))

(assert (=> b!4488743 m!5210839))

(assert (=> b!4488743 m!5210839))

(declare-fun m!5210861 () Bool)

(assert (=> b!4488743 m!5210861))

(assert (=> b!4488745 m!5210839))

(assert (=> b!4488745 m!5210839))

(assert (=> b!4488745 m!5210861))

(assert (=> b!4488555 d!1374506))

(declare-fun d!1374510 () Bool)

(declare-fun tail!7630 (List!50607) List!50607)

(assert (=> d!1374510 (= (tail!7628 lm!1477) (ListLongMap!2846 (tail!7630 (toList!4213 lm!1477))))))

(declare-fun bs!827141 () Bool)

(assert (= bs!827141 d!1374510))

(declare-fun m!5210863 () Bool)

(assert (=> bs!827141 m!5210863))

(assert (=> b!4488555 d!1374510))

(declare-fun bs!827142 () Bool)

(declare-fun d!1374512 () Bool)

(assert (= bs!827142 (and d!1374512 d!1374484)))

(declare-fun lambda!166953 () Int)

(assert (=> bs!827142 (not (= lambda!166953 lambda!166940))))

(declare-fun bs!827143 () Bool)

(assert (= bs!827143 (and d!1374512 d!1374462)))

(assert (=> bs!827143 (not (= lambda!166953 lambda!166934))))

(declare-fun bs!827144 () Bool)

(assert (= bs!827144 (and d!1374512 start!442298)))

(assert (=> bs!827144 (not (= lambda!166953 lambda!166918))))

(declare-fun bs!827145 () Bool)

(assert (= bs!827145 (and d!1374512 d!1374456)))

(assert (=> bs!827145 (not (= lambda!166953 lambda!166931))))

(declare-fun bs!827146 () Bool)

(assert (= bs!827146 (and d!1374512 d!1374494)))

(assert (=> bs!827146 (not (= lambda!166953 lambda!166945))))

(declare-fun bs!827147 () Bool)

(assert (= bs!827147 (and d!1374512 d!1374500)))

(assert (=> bs!827147 (not (= lambda!166953 lambda!166947))))

(assert (=> d!1374512 true))

(assert (=> d!1374512 (= (allKeysSameHashInMap!1210 lm!1477 hashF!1107) (forall!10127 (toList!4213 lm!1477) lambda!166953))))

(declare-fun bs!827149 () Bool)

(assert (= bs!827149 d!1374512))

(declare-fun m!5210867 () Bool)

(assert (=> bs!827149 m!5210867))

(assert (=> b!4488568 d!1374512))

(declare-fun d!1374516 () Bool)

(declare-fun lt!1673286 () Bool)

(assert (=> d!1374516 (= lt!1673286 (set.member lt!1673128 (content!8204 (t!357561 (toList!4213 lm!1477)))))))

(declare-fun e!2795719 () Bool)

(assert (=> d!1374516 (= lt!1673286 e!2795719)))

(declare-fun res!1864997 () Bool)

(assert (=> d!1374516 (=> (not res!1864997) (not e!2795719))))

(assert (=> d!1374516 (= res!1864997 (is-Cons!50483 (t!357561 (toList!4213 lm!1477))))))

(assert (=> d!1374516 (= (contains!13122 (t!357561 (toList!4213 lm!1477)) lt!1673128) lt!1673286)))

(declare-fun b!4488752 () Bool)

(declare-fun e!2795720 () Bool)

(assert (=> b!4488752 (= e!2795719 e!2795720)))

(declare-fun res!1864996 () Bool)

(assert (=> b!4488752 (=> res!1864996 e!2795720)))

(assert (=> b!4488752 (= res!1864996 (= (h!56286 (t!357561 (toList!4213 lm!1477))) lt!1673128))))

(declare-fun b!4488753 () Bool)

(assert (=> b!4488753 (= e!2795720 (contains!13122 (t!357561 (t!357561 (toList!4213 lm!1477))) lt!1673128))))

(assert (= (and d!1374516 res!1864997) b!4488752))

(assert (= (and b!4488752 (not res!1864996)) b!4488753))

(declare-fun m!5210869 () Bool)

(assert (=> d!1374516 m!5210869))

(declare-fun m!5210871 () Bool)

(assert (=> d!1374516 m!5210871))

(declare-fun m!5210873 () Bool)

(assert (=> b!4488753 m!5210873))

(assert (=> b!4488567 d!1374516))

(declare-fun d!1374518 () Bool)

(declare-fun res!1865004 () Bool)

(declare-fun e!2795729 () Bool)

(assert (=> d!1374518 (=> res!1865004 e!2795729)))

(declare-fun e!2795728 () Bool)

(assert (=> d!1374518 (= res!1865004 e!2795728)))

(declare-fun res!1865005 () Bool)

(assert (=> d!1374518 (=> (not res!1865005) (not e!2795728))))

(assert (=> d!1374518 (= res!1865005 (is-Cons!50483 (t!357561 (toList!4213 lm!1477))))))

(assert (=> d!1374518 (= (containsKeyBiggerList!83 (t!357561 (toList!4213 lm!1477)) key!3287) e!2795729)))

(declare-fun b!4488760 () Bool)

(assert (=> b!4488760 (= e!2795728 (containsKey!1623 (_2!28718 (h!56286 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(declare-fun b!4488761 () Bool)

(declare-fun e!2795727 () Bool)

(assert (=> b!4488761 (= e!2795729 e!2795727)))

(declare-fun res!1865006 () Bool)

(assert (=> b!4488761 (=> (not res!1865006) (not e!2795727))))

(assert (=> b!4488761 (= res!1865006 (is-Cons!50483 (t!357561 (toList!4213 lm!1477))))))

(declare-fun b!4488762 () Bool)

(assert (=> b!4488762 (= e!2795727 (containsKeyBiggerList!83 (t!357561 (t!357561 (toList!4213 lm!1477))) key!3287))))

(assert (= (and d!1374518 res!1865005) b!4488760))

(assert (= (and d!1374518 (not res!1865004)) b!4488761))

(assert (= (and b!4488761 res!1865006) b!4488762))

(declare-fun m!5210875 () Bool)

(assert (=> b!4488760 m!5210875))

(declare-fun m!5210877 () Bool)

(assert (=> b!4488762 m!5210877))

(assert (=> b!4488560 d!1374518))

(declare-fun d!1374520 () Bool)

(declare-fun res!1865007 () Bool)

(declare-fun e!2795732 () Bool)

(assert (=> d!1374520 (=> res!1865007 e!2795732)))

(declare-fun e!2795731 () Bool)

(assert (=> d!1374520 (= res!1865007 e!2795731)))

(declare-fun res!1865008 () Bool)

(assert (=> d!1374520 (=> (not res!1865008) (not e!2795731))))

(assert (=> d!1374520 (= res!1865008 (is-Cons!50483 (toList!4213 lt!1673132)))))

(assert (=> d!1374520 (= (containsKeyBiggerList!83 (toList!4213 lt!1673132) key!3287) e!2795732)))

(declare-fun b!4488763 () Bool)

(assert (=> b!4488763 (= e!2795731 (containsKey!1623 (_2!28718 (h!56286 (toList!4213 lt!1673132))) key!3287))))

(declare-fun b!4488764 () Bool)

(declare-fun e!2795730 () Bool)

(assert (=> b!4488764 (= e!2795732 e!2795730)))

(declare-fun res!1865009 () Bool)

(assert (=> b!4488764 (=> (not res!1865009) (not e!2795730))))

(assert (=> b!4488764 (= res!1865009 (is-Cons!50483 (toList!4213 lt!1673132)))))

(declare-fun b!4488765 () Bool)

(assert (=> b!4488765 (= e!2795730 (containsKeyBiggerList!83 (t!357561 (toList!4213 lt!1673132)) key!3287))))

(assert (= (and d!1374520 res!1865008) b!4488763))

(assert (= (and d!1374520 (not res!1865007)) b!4488764))

(assert (= (and b!4488764 res!1865009) b!4488765))

(declare-fun m!5210879 () Bool)

(assert (=> b!4488763 m!5210879))

(declare-fun m!5210881 () Bool)

(assert (=> b!4488765 m!5210881))

(assert (=> b!4488560 d!1374520))

(declare-fun bs!827150 () Bool)

(declare-fun d!1374522 () Bool)

(assert (= bs!827150 (and d!1374522 d!1374484)))

(declare-fun lambda!166956 () Int)

(assert (=> bs!827150 (= lambda!166956 lambda!166940)))

(declare-fun bs!827151 () Bool)

(assert (= bs!827151 (and d!1374522 d!1374512)))

(assert (=> bs!827151 (not (= lambda!166956 lambda!166953))))

(declare-fun bs!827152 () Bool)

(assert (= bs!827152 (and d!1374522 d!1374462)))

(assert (=> bs!827152 (= lambda!166956 lambda!166934)))

(declare-fun bs!827153 () Bool)

(assert (= bs!827153 (and d!1374522 start!442298)))

(assert (=> bs!827153 (= lambda!166956 lambda!166918)))

(declare-fun bs!827154 () Bool)

(assert (= bs!827154 (and d!1374522 d!1374456)))

(assert (=> bs!827154 (= lambda!166956 lambda!166931)))

(declare-fun bs!827155 () Bool)

(assert (= bs!827155 (and d!1374522 d!1374494)))

(assert (=> bs!827155 (= lambda!166956 lambda!166945)))

(declare-fun bs!827156 () Bool)

(assert (= bs!827156 (and d!1374522 d!1374500)))

(assert (=> bs!827156 (= lambda!166956 lambda!166947)))

(assert (=> d!1374522 (containsKeyBiggerList!83 (toList!4213 lt!1673132) key!3287)))

(declare-fun lt!1673289 () Unit!90434)

(declare-fun choose!28919 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> d!1374522 (= lt!1673289 (choose!28919 lt!1673132 key!3287 hashF!1107))))

(assert (=> d!1374522 (forall!10127 (toList!4213 lt!1673132) lambda!166956)))

(assert (=> d!1374522 (= (lemmaInLongMapThenContainsKeyBiggerList!19 lt!1673132 key!3287 hashF!1107) lt!1673289)))

(declare-fun bs!827157 () Bool)

(assert (= bs!827157 d!1374522))

(assert (=> bs!827157 m!5210557))

(declare-fun m!5210883 () Bool)

(assert (=> bs!827157 m!5210883))

(declare-fun m!5210885 () Bool)

(assert (=> bs!827157 m!5210885))

(assert (=> b!4488560 d!1374522))

(declare-fun d!1374524 () Bool)

(declare-fun res!1865014 () Bool)

(declare-fun e!2795737 () Bool)

(assert (=> d!1374524 (=> res!1865014 e!2795737)))

(assert (=> d!1374524 (= res!1865014 (and (is-Cons!50482 lt!1673127) (= (_1!28717 (h!56285 lt!1673127)) key!3287)))))

(assert (=> d!1374524 (= (containsKey!1623 lt!1673127 key!3287) e!2795737)))

(declare-fun b!4488770 () Bool)

(declare-fun e!2795738 () Bool)

(assert (=> b!4488770 (= e!2795737 e!2795738)))

(declare-fun res!1865015 () Bool)

(assert (=> b!4488770 (=> (not res!1865015) (not e!2795738))))

(assert (=> b!4488770 (= res!1865015 (is-Cons!50482 lt!1673127))))

(declare-fun b!4488771 () Bool)

(assert (=> b!4488771 (= e!2795738 (containsKey!1623 (t!357560 lt!1673127) key!3287))))

(assert (= (and d!1374524 (not res!1865014)) b!4488770))

(assert (= (and b!4488770 res!1865015) b!4488771))

(declare-fun m!5210887 () Bool)

(assert (=> b!4488771 m!5210887))

(assert (=> b!4488570 d!1374524))

(declare-fun b!4488772 () Bool)

(declare-fun e!2795742 () Bool)

(assert (=> b!4488772 (= e!2795742 (not (contains!13126 (keys!17483 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287)))))

(declare-fun d!1374526 () Bool)

(declare-fun e!2795744 () Bool)

(assert (=> d!1374526 e!2795744))

(declare-fun res!1865018 () Bool)

(assert (=> d!1374526 (=> res!1865018 e!2795744)))

(assert (=> d!1374526 (= res!1865018 e!2795742)))

(declare-fun res!1865017 () Bool)

(assert (=> d!1374526 (=> (not res!1865017) (not e!2795742))))

(declare-fun lt!1673294 () Bool)

(assert (=> d!1374526 (= res!1865017 (not lt!1673294))))

(declare-fun lt!1673297 () Bool)

(assert (=> d!1374526 (= lt!1673294 lt!1673297)))

(declare-fun lt!1673291 () Unit!90434)

(declare-fun e!2795740 () Unit!90434)

(assert (=> d!1374526 (= lt!1673291 e!2795740)))

(declare-fun c!764547 () Bool)

(assert (=> d!1374526 (= c!764547 lt!1673297)))

(assert (=> d!1374526 (= lt!1673297 (containsKey!1626 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(assert (=> d!1374526 (= (contains!13121 (extractMap!1159 (t!357561 (toList!4213 lm!1477))) key!3287) lt!1673294)))

(declare-fun b!4488773 () Bool)

(declare-fun e!2795743 () Bool)

(assert (=> b!4488773 (= e!2795743 (contains!13126 (keys!17483 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(declare-fun b!4488774 () Bool)

(declare-fun e!2795741 () List!50610)

(assert (=> b!4488774 (= e!2795741 (getKeysList!414 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477))))))))

(declare-fun b!4488775 () Bool)

(declare-fun e!2795739 () Unit!90434)

(declare-fun Unit!90447 () Unit!90434)

(assert (=> b!4488775 (= e!2795739 Unit!90447)))

(declare-fun b!4488776 () Bool)

(assert (=> b!4488776 (= e!2795740 e!2795739)))

(declare-fun c!764548 () Bool)

(declare-fun call!312359 () Bool)

(assert (=> b!4488776 (= c!764548 call!312359)))

(declare-fun b!4488777 () Bool)

(assert (=> b!4488777 (= e!2795741 (keys!17483 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))))))

(declare-fun bm!312354 () Bool)

(assert (=> bm!312354 (= call!312359 (contains!13126 e!2795741 key!3287))))

(declare-fun c!764546 () Bool)

(assert (=> bm!312354 (= c!764546 c!764547)))

(declare-fun b!4488778 () Bool)

(declare-fun lt!1673296 () Unit!90434)

(assert (=> b!4488778 (= e!2795740 lt!1673296)))

(declare-fun lt!1673292 () Unit!90434)

(assert (=> b!4488778 (= lt!1673292 (lemmaContainsKeyImpliesGetValueByKeyDefined!895 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(assert (=> b!4488778 (isDefined!8298 (getValueByKey!991 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(declare-fun lt!1673295 () Unit!90434)

(assert (=> b!4488778 (= lt!1673295 lt!1673292)))

(assert (=> b!4488778 (= lt!1673296 (lemmaInListThenGetKeysListContains!410 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(assert (=> b!4488778 call!312359))

(declare-fun b!4488779 () Bool)

(assert (=> b!4488779 false))

(declare-fun lt!1673290 () Unit!90434)

(declare-fun lt!1673293 () Unit!90434)

(assert (=> b!4488779 (= lt!1673290 lt!1673293)))

(assert (=> b!4488779 (containsKey!1626 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287)))

(assert (=> b!4488779 (= lt!1673293 (lemmaInGetKeysListThenContainsKey!413 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287))))

(declare-fun Unit!90449 () Unit!90434)

(assert (=> b!4488779 (= e!2795739 Unit!90449)))

(declare-fun b!4488780 () Bool)

(assert (=> b!4488780 (= e!2795744 e!2795743)))

(declare-fun res!1865016 () Bool)

(assert (=> b!4488780 (=> (not res!1865016) (not e!2795743))))

(assert (=> b!4488780 (= res!1865016 (isDefined!8298 (getValueByKey!991 (toList!4214 (extractMap!1159 (t!357561 (toList!4213 lm!1477)))) key!3287)))))

(assert (= (and d!1374526 c!764547) b!4488778))

(assert (= (and d!1374526 (not c!764547)) b!4488776))

(assert (= (and b!4488776 c!764548) b!4488779))

(assert (= (and b!4488776 (not c!764548)) b!4488775))

(assert (= (or b!4488778 b!4488776) bm!312354))

(assert (= (and bm!312354 c!764546) b!4488774))

(assert (= (and bm!312354 (not c!764546)) b!4488777))

(assert (= (and d!1374526 res!1865017) b!4488772))

(assert (= (and d!1374526 (not res!1865018)) b!4488780))

(assert (= (and b!4488780 res!1865016) b!4488773))

(assert (=> b!4488777 m!5210577))

(declare-fun m!5210889 () Bool)

(assert (=> b!4488777 m!5210889))

(declare-fun m!5210891 () Bool)

(assert (=> b!4488780 m!5210891))

(assert (=> b!4488780 m!5210891))

(declare-fun m!5210893 () Bool)

(assert (=> b!4488780 m!5210893))

(declare-fun m!5210895 () Bool)

(assert (=> d!1374526 m!5210895))

(assert (=> b!4488773 m!5210577))

(assert (=> b!4488773 m!5210889))

(assert (=> b!4488773 m!5210889))

(declare-fun m!5210897 () Bool)

(assert (=> b!4488773 m!5210897))

(assert (=> b!4488772 m!5210577))

(assert (=> b!4488772 m!5210889))

(assert (=> b!4488772 m!5210889))

(assert (=> b!4488772 m!5210897))

(declare-fun m!5210899 () Bool)

(assert (=> bm!312354 m!5210899))

(assert (=> b!4488779 m!5210895))

(declare-fun m!5210901 () Bool)

(assert (=> b!4488779 m!5210901))

(declare-fun m!5210903 () Bool)

(assert (=> b!4488774 m!5210903))

(declare-fun m!5210905 () Bool)

(assert (=> b!4488778 m!5210905))

(assert (=> b!4488778 m!5210891))

(assert (=> b!4488778 m!5210891))

(assert (=> b!4488778 m!5210893))

(declare-fun m!5210907 () Bool)

(assert (=> b!4488778 m!5210907))

(assert (=> b!4488559 d!1374526))

(declare-fun bs!827158 () Bool)

(declare-fun d!1374528 () Bool)

(assert (= bs!827158 (and d!1374528 d!1374484)))

(declare-fun lambda!166957 () Int)

(assert (=> bs!827158 (= lambda!166957 lambda!166940)))

(declare-fun bs!827159 () Bool)

(assert (= bs!827159 (and d!1374528 d!1374512)))

(assert (=> bs!827159 (not (= lambda!166957 lambda!166953))))

(declare-fun bs!827160 () Bool)

(assert (= bs!827160 (and d!1374528 start!442298)))

(assert (=> bs!827160 (= lambda!166957 lambda!166918)))

(declare-fun bs!827161 () Bool)

(assert (= bs!827161 (and d!1374528 d!1374456)))

(assert (=> bs!827161 (= lambda!166957 lambda!166931)))

(declare-fun bs!827162 () Bool)

(assert (= bs!827162 (and d!1374528 d!1374494)))

(assert (=> bs!827162 (= lambda!166957 lambda!166945)))

(declare-fun bs!827163 () Bool)

(assert (= bs!827163 (and d!1374528 d!1374500)))

(assert (=> bs!827163 (= lambda!166957 lambda!166947)))

(declare-fun bs!827164 () Bool)

(assert (= bs!827164 (and d!1374528 d!1374462)))

(assert (=> bs!827164 (= lambda!166957 lambda!166934)))

(declare-fun bs!827165 () Bool)

(assert (= bs!827165 (and d!1374528 d!1374522)))

(assert (=> bs!827165 (= lambda!166957 lambda!166956)))

(declare-fun lt!1673298 () ListMap!3475)

(assert (=> d!1374528 (invariantList!966 (toList!4214 lt!1673298))))

(declare-fun e!2795745 () ListMap!3475)

(assert (=> d!1374528 (= lt!1673298 e!2795745)))

(declare-fun c!764549 () Bool)

(assert (=> d!1374528 (= c!764549 (is-Cons!50483 (t!357561 (toList!4213 lm!1477))))))

(assert (=> d!1374528 (forall!10127 (t!357561 (toList!4213 lm!1477)) lambda!166957)))

(assert (=> d!1374528 (= (extractMap!1159 (t!357561 (toList!4213 lm!1477))) lt!1673298)))

(declare-fun b!4488781 () Bool)

(assert (=> b!4488781 (= e!2795745 (addToMapMapFromBucket!634 (_2!28718 (h!56286 (t!357561 (toList!4213 lm!1477)))) (extractMap!1159 (t!357561 (t!357561 (toList!4213 lm!1477))))))))

(declare-fun b!4488782 () Bool)

(assert (=> b!4488782 (= e!2795745 (ListMap!3476 Nil!50482))))

(assert (= (and d!1374528 c!764549) b!4488781))

(assert (= (and d!1374528 (not c!764549)) b!4488782))

(declare-fun m!5210909 () Bool)

(assert (=> d!1374528 m!5210909))

(declare-fun m!5210911 () Bool)

(assert (=> d!1374528 m!5210911))

(declare-fun m!5210913 () Bool)

(assert (=> b!4488781 m!5210913))

(assert (=> b!4488781 m!5210913))

(declare-fun m!5210915 () Bool)

(assert (=> b!4488781 m!5210915))

(assert (=> b!4488559 d!1374528))

(declare-fun b!4488783 () Bool)

(declare-fun e!2795749 () Bool)

(assert (=> b!4488783 (= e!2795749 (not (contains!13126 (keys!17483 lt!1673125) key!3287)))))

(declare-fun d!1374530 () Bool)

(declare-fun e!2795751 () Bool)

(assert (=> d!1374530 e!2795751))

(declare-fun res!1865021 () Bool)

(assert (=> d!1374530 (=> res!1865021 e!2795751)))

(assert (=> d!1374530 (= res!1865021 e!2795749)))

(declare-fun res!1865020 () Bool)

(assert (=> d!1374530 (=> (not res!1865020) (not e!2795749))))

(declare-fun lt!1673303 () Bool)

(assert (=> d!1374530 (= res!1865020 (not lt!1673303))))

(declare-fun lt!1673306 () Bool)

(assert (=> d!1374530 (= lt!1673303 lt!1673306)))

(declare-fun lt!1673300 () Unit!90434)

(declare-fun e!2795747 () Unit!90434)

(assert (=> d!1374530 (= lt!1673300 e!2795747)))

(declare-fun c!764551 () Bool)

(assert (=> d!1374530 (= c!764551 lt!1673306)))

(assert (=> d!1374530 (= lt!1673306 (containsKey!1626 (toList!4214 lt!1673125) key!3287))))

(assert (=> d!1374530 (= (contains!13121 lt!1673125 key!3287) lt!1673303)))

(declare-fun b!4488784 () Bool)

(declare-fun e!2795750 () Bool)

(assert (=> b!4488784 (= e!2795750 (contains!13126 (keys!17483 lt!1673125) key!3287))))

(declare-fun b!4488785 () Bool)

(declare-fun e!2795748 () List!50610)

(assert (=> b!4488785 (= e!2795748 (getKeysList!414 (toList!4214 lt!1673125)))))

(declare-fun b!4488786 () Bool)

(declare-fun e!2795746 () Unit!90434)

(declare-fun Unit!90450 () Unit!90434)

(assert (=> b!4488786 (= e!2795746 Unit!90450)))

(declare-fun b!4488787 () Bool)

(assert (=> b!4488787 (= e!2795747 e!2795746)))

(declare-fun c!764552 () Bool)

(declare-fun call!312360 () Bool)

(assert (=> b!4488787 (= c!764552 call!312360)))

(declare-fun b!4488788 () Bool)

(assert (=> b!4488788 (= e!2795748 (keys!17483 lt!1673125))))

(declare-fun bm!312355 () Bool)

(assert (=> bm!312355 (= call!312360 (contains!13126 e!2795748 key!3287))))

(declare-fun c!764550 () Bool)

(assert (=> bm!312355 (= c!764550 c!764551)))

(declare-fun b!4488789 () Bool)

(declare-fun lt!1673305 () Unit!90434)

(assert (=> b!4488789 (= e!2795747 lt!1673305)))

(declare-fun lt!1673301 () Unit!90434)

(assert (=> b!4488789 (= lt!1673301 (lemmaContainsKeyImpliesGetValueByKeyDefined!895 (toList!4214 lt!1673125) key!3287))))

(assert (=> b!4488789 (isDefined!8298 (getValueByKey!991 (toList!4214 lt!1673125) key!3287))))

(declare-fun lt!1673304 () Unit!90434)

(assert (=> b!4488789 (= lt!1673304 lt!1673301)))

(assert (=> b!4488789 (= lt!1673305 (lemmaInListThenGetKeysListContains!410 (toList!4214 lt!1673125) key!3287))))

(assert (=> b!4488789 call!312360))

(declare-fun b!4488790 () Bool)

(assert (=> b!4488790 false))

(declare-fun lt!1673299 () Unit!90434)

(declare-fun lt!1673302 () Unit!90434)

(assert (=> b!4488790 (= lt!1673299 lt!1673302)))

(assert (=> b!4488790 (containsKey!1626 (toList!4214 lt!1673125) key!3287)))

(assert (=> b!4488790 (= lt!1673302 (lemmaInGetKeysListThenContainsKey!413 (toList!4214 lt!1673125) key!3287))))

(declare-fun Unit!90451 () Unit!90434)

(assert (=> b!4488790 (= e!2795746 Unit!90451)))

(declare-fun b!4488791 () Bool)

(assert (=> b!4488791 (= e!2795751 e!2795750)))

(declare-fun res!1865019 () Bool)

(assert (=> b!4488791 (=> (not res!1865019) (not e!2795750))))

(assert (=> b!4488791 (= res!1865019 (isDefined!8298 (getValueByKey!991 (toList!4214 lt!1673125) key!3287)))))

(assert (= (and d!1374530 c!764551) b!4488789))

(assert (= (and d!1374530 (not c!764551)) b!4488787))

(assert (= (and b!4488787 c!764552) b!4488790))

(assert (= (and b!4488787 (not c!764552)) b!4488786))

(assert (= (or b!4488789 b!4488787) bm!312355))

(assert (= (and bm!312355 c!764550) b!4488785))

(assert (= (and bm!312355 (not c!764550)) b!4488788))

(assert (= (and d!1374530 res!1865020) b!4488783))

(assert (= (and d!1374530 (not res!1865021)) b!4488791))

(assert (= (and b!4488791 res!1865019) b!4488784))

(assert (=> b!4488788 m!5210785))

(declare-fun m!5210917 () Bool)

(assert (=> b!4488791 m!5210917))

(assert (=> b!4488791 m!5210917))

(declare-fun m!5210919 () Bool)

(assert (=> b!4488791 m!5210919))

(declare-fun m!5210921 () Bool)

(assert (=> d!1374530 m!5210921))

(assert (=> b!4488784 m!5210785))

(assert (=> b!4488784 m!5210785))

(declare-fun m!5210923 () Bool)

(assert (=> b!4488784 m!5210923))

(assert (=> b!4488783 m!5210785))

(assert (=> b!4488783 m!5210785))

(assert (=> b!4488783 m!5210923))

(declare-fun m!5210925 () Bool)

(assert (=> bm!312355 m!5210925))

(assert (=> b!4488790 m!5210921))

(declare-fun m!5210927 () Bool)

(assert (=> b!4488790 m!5210927))

(declare-fun m!5210929 () Bool)

(assert (=> b!4488785 m!5210929))

(declare-fun m!5210931 () Bool)

(assert (=> b!4488789 m!5210931))

(assert (=> b!4488789 m!5210917))

(assert (=> b!4488789 m!5210917))

(assert (=> b!4488789 m!5210919))

(declare-fun m!5210933 () Bool)

(assert (=> b!4488789 m!5210933))

(assert (=> b!4488559 d!1374530))

(declare-fun bs!827166 () Bool)

(declare-fun d!1374532 () Bool)

(assert (= bs!827166 (and d!1374532 d!1374484)))

(declare-fun lambda!166958 () Int)

(assert (=> bs!827166 (= lambda!166958 lambda!166940)))

(declare-fun bs!827167 () Bool)

(assert (= bs!827167 (and d!1374532 d!1374512)))

(assert (=> bs!827167 (not (= lambda!166958 lambda!166953))))

(declare-fun bs!827168 () Bool)

(assert (= bs!827168 (and d!1374532 d!1374528)))

(assert (=> bs!827168 (= lambda!166958 lambda!166957)))

(declare-fun bs!827169 () Bool)

(assert (= bs!827169 (and d!1374532 start!442298)))

(assert (=> bs!827169 (= lambda!166958 lambda!166918)))

(declare-fun bs!827170 () Bool)

(assert (= bs!827170 (and d!1374532 d!1374456)))

(assert (=> bs!827170 (= lambda!166958 lambda!166931)))

(declare-fun bs!827171 () Bool)

(assert (= bs!827171 (and d!1374532 d!1374494)))

(assert (=> bs!827171 (= lambda!166958 lambda!166945)))

(declare-fun bs!827172 () Bool)

(assert (= bs!827172 (and d!1374532 d!1374500)))

(assert (=> bs!827172 (= lambda!166958 lambda!166947)))

(declare-fun bs!827173 () Bool)

(assert (= bs!827173 (and d!1374532 d!1374462)))

(assert (=> bs!827173 (= lambda!166958 lambda!166934)))

(declare-fun bs!827174 () Bool)

(assert (= bs!827174 (and d!1374532 d!1374522)))

(assert (=> bs!827174 (= lambda!166958 lambda!166956)))

(declare-fun lt!1673307 () ListMap!3475)

(assert (=> d!1374532 (invariantList!966 (toList!4214 lt!1673307))))

(declare-fun e!2795752 () ListMap!3475)

(assert (=> d!1374532 (= lt!1673307 e!2795752)))

(declare-fun c!764553 () Bool)

(assert (=> d!1374532 (= c!764553 (is-Cons!50483 (toList!4213 lt!1673132)))))

(assert (=> d!1374532 (forall!10127 (toList!4213 lt!1673132) lambda!166958)))

(assert (=> d!1374532 (= (extractMap!1159 (toList!4213 lt!1673132)) lt!1673307)))

(declare-fun b!4488792 () Bool)

(assert (=> b!4488792 (= e!2795752 (addToMapMapFromBucket!634 (_2!28718 (h!56286 (toList!4213 lt!1673132))) (extractMap!1159 (t!357561 (toList!4213 lt!1673132)))))))

(declare-fun b!4488793 () Bool)

(assert (=> b!4488793 (= e!2795752 (ListMap!3476 Nil!50482))))

(assert (= (and d!1374532 c!764553) b!4488792))

(assert (= (and d!1374532 (not c!764553)) b!4488793))

(declare-fun m!5210935 () Bool)

(assert (=> d!1374532 m!5210935))

(declare-fun m!5210937 () Bool)

(assert (=> d!1374532 m!5210937))

(declare-fun m!5210939 () Bool)

(assert (=> b!4488792 m!5210939))

(assert (=> b!4488792 m!5210939))

(declare-fun m!5210941 () Bool)

(assert (=> b!4488792 m!5210941))

(assert (=> b!4488559 d!1374532))

(declare-fun bs!827175 () Bool)

(declare-fun d!1374534 () Bool)

(assert (= bs!827175 (and d!1374534 d!1374484)))

(declare-fun lambda!166961 () Int)

(assert (=> bs!827175 (= lambda!166961 lambda!166940)))

(declare-fun bs!827176 () Bool)

(assert (= bs!827176 (and d!1374534 d!1374512)))

(assert (=> bs!827176 (not (= lambda!166961 lambda!166953))))

(declare-fun bs!827177 () Bool)

(assert (= bs!827177 (and d!1374534 d!1374532)))

(assert (=> bs!827177 (= lambda!166961 lambda!166958)))

(declare-fun bs!827178 () Bool)

(assert (= bs!827178 (and d!1374534 d!1374528)))

(assert (=> bs!827178 (= lambda!166961 lambda!166957)))

(declare-fun bs!827179 () Bool)

(assert (= bs!827179 (and d!1374534 start!442298)))

(assert (=> bs!827179 (= lambda!166961 lambda!166918)))

(declare-fun bs!827180 () Bool)

(assert (= bs!827180 (and d!1374534 d!1374456)))

(assert (=> bs!827180 (= lambda!166961 lambda!166931)))

(declare-fun bs!827181 () Bool)

(assert (= bs!827181 (and d!1374534 d!1374494)))

(assert (=> bs!827181 (= lambda!166961 lambda!166945)))

(declare-fun bs!827182 () Bool)

(assert (= bs!827182 (and d!1374534 d!1374500)))

(assert (=> bs!827182 (= lambda!166961 lambda!166947)))

(declare-fun bs!827183 () Bool)

(assert (= bs!827183 (and d!1374534 d!1374462)))

(assert (=> bs!827183 (= lambda!166961 lambda!166934)))

(declare-fun bs!827184 () Bool)

(assert (= bs!827184 (and d!1374534 d!1374522)))

(assert (=> bs!827184 (= lambda!166961 lambda!166956)))

(assert (=> d!1374534 (contains!13121 (extractMap!1159 (toList!4213 lt!1673132)) key!3287)))

(declare-fun lt!1673326 () Unit!90434)

(declare-fun choose!28922 (ListLongMap!2845 K!11898 Hashable!5498) Unit!90434)

(assert (=> d!1374534 (= lt!1673326 (choose!28922 lt!1673132 key!3287 hashF!1107))))

(assert (=> d!1374534 (forall!10127 (toList!4213 lt!1673132) lambda!166961)))

(assert (=> d!1374534 (= (lemmaListContainsThenExtractedMapContains!73 lt!1673132 key!3287 hashF!1107) lt!1673326)))

(declare-fun bs!827185 () Bool)

(assert (= bs!827185 d!1374534))

(assert (=> bs!827185 m!5210581))

(assert (=> bs!827185 m!5210581))

(declare-fun m!5210943 () Bool)

(assert (=> bs!827185 m!5210943))

(declare-fun m!5210945 () Bool)

(assert (=> bs!827185 m!5210945))

(declare-fun m!5210947 () Bool)

(assert (=> bs!827185 m!5210947))

(assert (=> b!4488559 d!1374534))

(declare-fun b!4488816 () Bool)

(declare-fun e!2795767 () Bool)

(declare-fun tp!1337158 () Bool)

(assert (=> b!4488816 (= e!2795767 (and tp_is_empty!27689 tp_is_empty!27691 tp!1337158))))

(assert (=> b!4488566 (= tp!1337148 e!2795767)))

(assert (= (and b!4488566 (is-Cons!50482 (t!357560 newBucket!178))) b!4488816))

(declare-fun b!4488821 () Bool)

(declare-fun e!2795770 () Bool)

(declare-fun tp!1337163 () Bool)

(declare-fun tp!1337164 () Bool)

(assert (=> b!4488821 (= e!2795770 (and tp!1337163 tp!1337164))))

(assert (=> b!4488557 (= tp!1337149 e!2795770)))

(assert (= (and b!4488557 (is-Cons!50483 (toList!4213 lm!1477))) b!4488821))

(declare-fun b_lambda!150889 () Bool)

(assert (= b_lambda!150883 (or start!442298 b_lambda!150889)))

(declare-fun bs!827186 () Bool)

(declare-fun d!1374536 () Bool)

(assert (= bs!827186 (and d!1374536 start!442298)))

(assert (=> bs!827186 (= (dynLambda!21074 lambda!166918 (h!56286 (toList!4213 lm!1477))) (noDuplicateKeys!1103 (_2!28718 (h!56286 (toList!4213 lm!1477)))))))

(declare-fun m!5210949 () Bool)

(assert (=> bs!827186 m!5210949))

(assert (=> b!4488686 d!1374536))

(declare-fun b_lambda!150891 () Bool)

(assert (= b_lambda!150881 (or start!442298 b_lambda!150891)))

(declare-fun bs!827187 () Bool)

(declare-fun d!1374538 () Bool)

(assert (= bs!827187 (and d!1374538 start!442298)))

(assert (=> bs!827187 (= (dynLambda!21074 lambda!166918 lt!1673128) (noDuplicateKeys!1103 (_2!28718 lt!1673128)))))

(declare-fun m!5210951 () Bool)

(assert (=> bs!827187 m!5210951))

(assert (=> d!1374470 d!1374538))

(declare-fun b_lambda!150893 () Bool)

(assert (= b_lambda!150887 (or start!442298 b_lambda!150893)))

(declare-fun bs!827188 () Bool)

(declare-fun d!1374540 () Bool)

(assert (= bs!827188 (and d!1374540 start!442298)))

(assert (=> bs!827188 (= (dynLambda!21074 lambda!166918 (h!56286 (toList!4213 lt!1673136))) (noDuplicateKeys!1103 (_2!28718 (h!56286 (toList!4213 lt!1673136)))))))

(declare-fun m!5210953 () Bool)

(assert (=> bs!827188 m!5210953))

(assert (=> b!4488694 d!1374540))

(push 1)

(assert (not b!4488735))

(assert (not b!4488763))

(assert (not b!4488792))

(assert (not b!4488636))

(assert (not b!4488780))

(assert (not b_lambda!150889))

(assert (not b!4488730))

(assert (not b_lambda!150891))

(assert (not b!4488729))

(assert (not d!1374470))

(assert (not b!4488791))

(assert (not d!1374478))

(assert (not bs!827186))

(assert (not b!4488816))

(assert (not b!4488635))

(assert (not b!4488701))

(assert (not d!1374460))

(assert (not b!4488753))

(assert (not b!4488654))

(assert (not b!4488760))

(assert (not d!1374506))

(assert (not b!4488778))

(assert (not b!4488740))

(assert (not d!1374532))

(assert (not b!4488734))

(assert (not b!4488695))

(assert (not b!4488783))

(assert (not b!4488790))

(assert (not b!4488745))

(assert (not d!1374456))

(assert (not b!4488785))

(assert (not d!1374480))

(assert (not b!4488687))

(assert (not b!4488773))

(assert (not d!1374472))

(assert (not d!1374528))

(assert (not d!1374496))

(assert (not b!4488765))

(assert (not b!4488736))

(assert (not b!4488680))

(assert (not b!4488709))

(assert (not b!4488667))

(assert (not b!4488771))

(assert (not d!1374462))

(assert (not d!1374468))

(assert (not b!4488743))

(assert (not b!4488788))

(assert (not d!1374534))

(assert (not b!4488700))

(assert (not bm!312355))

(assert (not b!4488779))

(assert (not bs!827188))

(assert (not d!1374500))

(assert (not b!4488774))

(assert (not d!1374516))

(assert (not d!1374504))

(assert (not b!4488737))

(assert (not b!4488772))

(assert (not b!4488781))

(assert (not b!4488704))

(assert tp_is_empty!27691)

(assert (not d!1374530))

(assert (not d!1374526))

(assert (not b!4488762))

(assert (not bm!312353))

(assert (not b!4488651))

(assert (not b!4488777))

(assert (not b_lambda!150893))

(assert (not b!4488660))

(assert (not d!1374510))

(assert (not d!1374490))

(assert (not d!1374494))

(assert (not d!1374502))

(assert (not b!4488649))

(assert (not b!4488731))

(assert (not bm!312354))

(assert (not d!1374512))

(assert (not d!1374464))

(assert tp_is_empty!27689)

(assert (not d!1374492))

(assert (not d!1374452))

(assert (not d!1374484))

(assert (not b!4488821))

(assert (not b!4488784))

(assert (not bs!827187))

(assert (not d!1374522))

(assert (not d!1374466))

(assert (not b!4488789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

