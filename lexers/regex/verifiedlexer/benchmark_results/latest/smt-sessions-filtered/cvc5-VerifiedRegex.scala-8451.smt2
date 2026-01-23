; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437686 () Bool)

(assert start!437686)

(declare-fun tp_is_empty!27307 () Bool)

(declare-fun e!2778760 () Bool)

(declare-fun tp!1335964 () Bool)

(declare-fun b!4462536 () Bool)

(declare-fun tp_is_empty!27305 () Bool)

(assert (=> b!4462536 (= e!2778760 (and tp_is_empty!27305 tp_is_empty!27307 tp!1335964))))

(declare-fun b!4462537 () Bool)

(declare-fun e!2778759 () Bool)

(declare-fun tp!1335965 () Bool)

(assert (=> b!4462537 (= e!2778759 tp!1335965)))

(declare-fun b!4462538 () Bool)

(declare-fun res!1850916 () Bool)

(declare-fun e!2778764 () Bool)

(assert (=> b!4462538 (=> res!1850916 e!2778764)))

(declare-datatypes ((K!11658 0))(
  ( (K!11659 (val!17597 Int)) )
))
(declare-datatypes ((V!11904 0))(
  ( (V!11905 (val!17598 Int)) )
))
(declare-datatypes ((tuple2!50462 0))(
  ( (tuple2!50463 (_1!28525 K!11658) (_2!28525 V!11904)) )
))
(declare-datatypes ((List!50360 0))(
  ( (Nil!50236) (Cons!50236 (h!55985 tuple2!50462) (t!357310 List!50360)) )
))
(declare-fun newBucket!178 () List!50360)

(declare-fun noDuplicateKeys!1007 (List!50360) Bool)

(assert (=> b!4462538 (= res!1850916 (not (noDuplicateKeys!1007 newBucket!178)))))

(declare-fun b!4462539 () Bool)

(declare-fun e!2778762 () Bool)

(declare-fun e!2778766 () Bool)

(assert (=> b!4462539 (= e!2778762 e!2778766)))

(declare-fun res!1850910 () Bool)

(assert (=> b!4462539 (=> res!1850910 e!2778766)))

(declare-datatypes ((tuple2!50464 0))(
  ( (tuple2!50465 (_1!28526 (_ BitVec 64)) (_2!28526 List!50360)) )
))
(declare-datatypes ((List!50361 0))(
  ( (Nil!50237) (Cons!50237 (h!55986 tuple2!50464) (t!357311 List!50361)) )
))
(declare-fun lt!1653212 () List!50361)

(declare-fun key!3287 () K!11658)

(declare-fun containsKeyBiggerList!7 (List!50361 K!11658) Bool)

(assert (=> b!4462539 (= res!1850910 (not (containsKeyBiggerList!7 lt!1653212 key!3287)))))

(declare-datatypes ((ListLongMap!2653 0))(
  ( (ListLongMap!2654 (toList!4021 List!50361)) )
))
(declare-fun lm!1477 () ListLongMap!2653)

(assert (=> b!4462539 (= lt!1653212 (Cons!50237 (h!55986 (toList!4021 lm!1477)) Nil!50237))))

(declare-fun b!4462540 () Bool)

(declare-fun e!2778763 () Bool)

(declare-fun e!2778765 () Bool)

(assert (=> b!4462540 (= e!2778763 e!2778765)))

(declare-fun res!1850912 () Bool)

(assert (=> b!4462540 (=> (not res!1850912) (not e!2778765))))

(declare-fun lt!1653205 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4462540 (= res!1850912 (= lt!1653205 hash!344))))

(declare-datatypes ((Hashable!5402 0))(
  ( (HashableExt!5401 (__x!31105 Int)) )
))
(declare-fun hashF!1107 () Hashable!5402)

(declare-fun hash!2392 (Hashable!5402 K!11658) (_ BitVec 64))

(assert (=> b!4462540 (= lt!1653205 (hash!2392 hashF!1107 key!3287))))

(declare-fun b!4462541 () Bool)

(declare-fun res!1850917 () Bool)

(assert (=> b!4462541 (=> (not res!1850917) (not e!2778765))))

(declare-fun allKeysSameHash!861 (List!50360 (_ BitVec 64) Hashable!5402) Bool)

(assert (=> b!4462541 (= res!1850917 (allKeysSameHash!861 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4462542 () Bool)

(declare-fun e!2778761 () Bool)

(assert (=> b!4462542 (= e!2778766 e!2778761)))

(declare-fun res!1850922 () Bool)

(assert (=> b!4462542 (=> res!1850922 e!2778761)))

(assert (=> b!4462542 (= res!1850922 (not (noDuplicateKeys!1007 (_2!28526 (h!55986 (toList!4021 lm!1477))))))))

(declare-datatypes ((ListMap!3283 0))(
  ( (ListMap!3284 (toList!4022 List!50360)) )
))
(declare-fun contains!12760 (ListMap!3283 K!11658) Bool)

(declare-fun extractMap!1063 (List!50361) ListMap!3283)

(assert (=> b!4462542 (contains!12760 (extractMap!1063 lt!1653212) key!3287)))

(declare-datatypes ((Unit!86915 0))(
  ( (Unit!86916) )
))
(declare-fun lt!1653207 () Unit!86915)

(declare-fun lemmaListContainsThenExtractedMapContains!3 (ListLongMap!2653 K!11658 Hashable!5402) Unit!86915)

(assert (=> b!4462542 (= lt!1653207 (lemmaListContainsThenExtractedMapContains!3 (ListLongMap!2654 lt!1653212) key!3287 hashF!1107))))

(declare-fun b!4462544 () Bool)

(assert (=> b!4462544 (= e!2778761 true)))

(declare-fun lt!1653202 () Bool)

(assert (=> b!4462544 (= lt!1653202 (contains!12760 (extractMap!1063 (Cons!50237 (tuple2!50465 hash!344 (_2!28526 (h!55986 (toList!4021 lm!1477)))) Nil!50237)) key!3287))))

(declare-fun b!4462545 () Bool)

(declare-fun res!1850919 () Bool)

(assert (=> b!4462545 (=> res!1850919 e!2778761)))

(assert (=> b!4462545 (= res!1850919 (not (allKeysSameHash!861 (_2!28526 (h!55986 (toList!4021 lm!1477))) hash!344 hashF!1107)))))

(declare-fun b!4462546 () Bool)

(assert (=> b!4462546 (= e!2778764 e!2778762)))

(declare-fun res!1850913 () Bool)

(assert (=> b!4462546 (=> res!1850913 e!2778762)))

(declare-fun lt!1653203 () Bool)

(assert (=> b!4462546 (= res!1850913 lt!1653203)))

(declare-fun lt!1653210 () Unit!86915)

(declare-fun e!2778758 () Unit!86915)

(assert (=> b!4462546 (= lt!1653210 e!2778758)))

(declare-fun c!759351 () Bool)

(assert (=> b!4462546 (= c!759351 lt!1653203)))

(declare-fun containsKey!1423 (List!50360 K!11658) Bool)

(assert (=> b!4462546 (= lt!1653203 (not (containsKey!1423 (_2!28526 (h!55986 (toList!4021 lm!1477))) key!3287)))))

(declare-fun b!4462547 () Bool)

(declare-fun Unit!86917 () Unit!86915)

(assert (=> b!4462547 (= e!2778758 Unit!86917)))

(declare-fun b!4462548 () Bool)

(declare-fun res!1850920 () Bool)

(assert (=> b!4462548 (=> (not res!1850920) (not e!2778763))))

(assert (=> b!4462548 (= res!1850920 (contains!12760 (extractMap!1063 (toList!4021 lm!1477)) key!3287))))

(declare-fun b!4462549 () Bool)

(assert (=> b!4462549 (= e!2778765 (not e!2778764))))

(declare-fun res!1850921 () Bool)

(assert (=> b!4462549 (=> res!1850921 e!2778764)))

(declare-fun lt!1653206 () List!50360)

(declare-fun removePairForKey!634 (List!50360 K!11658) List!50360)

(assert (=> b!4462549 (= res!1850921 (not (= newBucket!178 (removePairForKey!634 lt!1653206 key!3287))))))

(declare-fun lt!1653211 () Unit!86915)

(declare-fun lambda!162058 () Int)

(declare-fun lt!1653204 () tuple2!50464)

(declare-fun forallContained!2224 (List!50361 Int tuple2!50464) Unit!86915)

(assert (=> b!4462549 (= lt!1653211 (forallContained!2224 (toList!4021 lm!1477) lambda!162058 lt!1653204))))

(declare-fun contains!12761 (List!50361 tuple2!50464) Bool)

(assert (=> b!4462549 (contains!12761 (toList!4021 lm!1477) lt!1653204)))

(assert (=> b!4462549 (= lt!1653204 (tuple2!50465 hash!344 lt!1653206))))

(declare-fun lt!1653209 () Unit!86915)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!519 (List!50361 (_ BitVec 64) List!50360) Unit!86915)

(assert (=> b!4462549 (= lt!1653209 (lemmaGetValueByKeyImpliesContainsTuple!519 (toList!4021 lm!1477) hash!344 lt!1653206))))

(declare-fun apply!11744 (ListLongMap!2653 (_ BitVec 64)) List!50360)

(assert (=> b!4462549 (= lt!1653206 (apply!11744 lm!1477 hash!344))))

(declare-fun contains!12762 (ListLongMap!2653 (_ BitVec 64)) Bool)

(assert (=> b!4462549 (contains!12762 lm!1477 lt!1653205)))

(declare-fun lt!1653201 () Unit!86915)

(declare-fun lemmaInGenMapThenLongMapContainsHash!81 (ListLongMap!2653 K!11658 Hashable!5402) Unit!86915)

(assert (=> b!4462549 (= lt!1653201 (lemmaInGenMapThenLongMapContainsHash!81 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4462550 () Bool)

(declare-fun res!1850915 () Bool)

(assert (=> b!4462550 (=> (not res!1850915) (not e!2778763))))

(declare-fun allKeysSameHashInMap!1114 (ListLongMap!2653 Hashable!5402) Bool)

(assert (=> b!4462550 (= res!1850915 (allKeysSameHashInMap!1114 lm!1477 hashF!1107))))

(declare-fun b!4462551 () Bool)

(declare-fun res!1850918 () Bool)

(assert (=> b!4462551 (=> res!1850918 e!2778761)))

(assert (=> b!4462551 (= res!1850918 (not (= (removePairForKey!634 (_2!28526 (h!55986 (toList!4021 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4462552 () Bool)

(declare-fun Unit!86918 () Unit!86915)

(assert (=> b!4462552 (= e!2778758 Unit!86918)))

(declare-fun lt!1653208 () Unit!86915)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!7 (ListLongMap!2653 K!11658 Hashable!5402) Unit!86915)

(assert (=> b!4462552 (= lt!1653208 (lemmaNotInItsHashBucketThenNotInMap!7 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4462552 false))

(declare-fun res!1850914 () Bool)

(assert (=> start!437686 (=> (not res!1850914) (not e!2778763))))

(declare-fun forall!9950 (List!50361 Int) Bool)

(assert (=> start!437686 (= res!1850914 (forall!9950 (toList!4021 lm!1477) lambda!162058))))

(assert (=> start!437686 e!2778763))

(assert (=> start!437686 true))

(declare-fun inv!65843 (ListLongMap!2653) Bool)

(assert (=> start!437686 (and (inv!65843 lm!1477) e!2778759)))

(assert (=> start!437686 tp_is_empty!27305))

(assert (=> start!437686 e!2778760))

(declare-fun b!4462543 () Bool)

(declare-fun res!1850911 () Bool)

(assert (=> b!4462543 (=> res!1850911 e!2778764)))

(assert (=> b!4462543 (= res!1850911 (or (is-Nil!50237 (toList!4021 lm!1477)) (not (= (_1!28526 (h!55986 (toList!4021 lm!1477))) hash!344))))))

(assert (= (and start!437686 res!1850914) b!4462550))

(assert (= (and b!4462550 res!1850915) b!4462548))

(assert (= (and b!4462548 res!1850920) b!4462540))

(assert (= (and b!4462540 res!1850912) b!4462541))

(assert (= (and b!4462541 res!1850917) b!4462549))

(assert (= (and b!4462549 (not res!1850921)) b!4462538))

(assert (= (and b!4462538 (not res!1850916)) b!4462543))

(assert (= (and b!4462543 (not res!1850911)) b!4462546))

(assert (= (and b!4462546 c!759351) b!4462552))

(assert (= (and b!4462546 (not c!759351)) b!4462547))

(assert (= (and b!4462546 (not res!1850913)) b!4462539))

(assert (= (and b!4462539 (not res!1850910)) b!4462542))

(assert (= (and b!4462542 (not res!1850922)) b!4462551))

(assert (= (and b!4462551 (not res!1850918)) b!4462545))

(assert (= (and b!4462545 (not res!1850919)) b!4462544))

(assert (= start!437686 b!4462537))

(assert (= (and start!437686 (is-Cons!50236 newBucket!178)) b!4462536))

(declare-fun m!5165525 () Bool)

(assert (=> start!437686 m!5165525))

(declare-fun m!5165527 () Bool)

(assert (=> start!437686 m!5165527))

(declare-fun m!5165529 () Bool)

(assert (=> b!4462541 m!5165529))

(declare-fun m!5165531 () Bool)

(assert (=> b!4462545 m!5165531))

(declare-fun m!5165533 () Bool)

(assert (=> b!4462549 m!5165533))

(declare-fun m!5165535 () Bool)

(assert (=> b!4462549 m!5165535))

(declare-fun m!5165537 () Bool)

(assert (=> b!4462549 m!5165537))

(declare-fun m!5165539 () Bool)

(assert (=> b!4462549 m!5165539))

(declare-fun m!5165541 () Bool)

(assert (=> b!4462549 m!5165541))

(declare-fun m!5165543 () Bool)

(assert (=> b!4462549 m!5165543))

(declare-fun m!5165545 () Bool)

(assert (=> b!4462549 m!5165545))

(declare-fun m!5165547 () Bool)

(assert (=> b!4462552 m!5165547))

(declare-fun m!5165549 () Bool)

(assert (=> b!4462544 m!5165549))

(assert (=> b!4462544 m!5165549))

(declare-fun m!5165551 () Bool)

(assert (=> b!4462544 m!5165551))

(declare-fun m!5165553 () Bool)

(assert (=> b!4462550 m!5165553))

(declare-fun m!5165555 () Bool)

(assert (=> b!4462548 m!5165555))

(assert (=> b!4462548 m!5165555))

(declare-fun m!5165557 () Bool)

(assert (=> b!4462548 m!5165557))

(declare-fun m!5165559 () Bool)

(assert (=> b!4462551 m!5165559))

(declare-fun m!5165561 () Bool)

(assert (=> b!4462546 m!5165561))

(declare-fun m!5165563 () Bool)

(assert (=> b!4462540 m!5165563))

(declare-fun m!5165565 () Bool)

(assert (=> b!4462539 m!5165565))

(declare-fun m!5165567 () Bool)

(assert (=> b!4462538 m!5165567))

(declare-fun m!5165569 () Bool)

(assert (=> b!4462542 m!5165569))

(declare-fun m!5165571 () Bool)

(assert (=> b!4462542 m!5165571))

(assert (=> b!4462542 m!5165571))

(declare-fun m!5165573 () Bool)

(assert (=> b!4462542 m!5165573))

(declare-fun m!5165575 () Bool)

(assert (=> b!4462542 m!5165575))

(push 1)

(assert (not b!4462542))

(assert (not b!4462550))

(assert (not b!4462549))

(assert (not b!4462538))

(assert (not b!4462540))

(assert (not b!4462544))

(assert (not b!4462545))

(assert (not b!4462551))

(assert (not b!4462536))

(assert tp_is_empty!27305)

(assert (not start!437686))

(assert (not b!4462548))

(assert (not b!4462539))

(assert tp_is_empty!27307)

(assert (not b!4462552))

(assert (not b!4462546))

(assert (not b!4462537))

(assert (not b!4462541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

