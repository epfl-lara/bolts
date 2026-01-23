; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!448604 () Bool)

(assert start!448604)

(declare-fun bs!862102 () Bool)

(declare-fun b!4526608 () Bool)

(assert (= bs!862102 (and b!4526608 start!448604)))

(declare-fun lambda!173584 () Int)

(declare-fun lambda!173583 () Int)

(assert (=> bs!862102 (not (= lambda!173584 lambda!173583))))

(assert (=> b!4526608 true))

(assert (=> b!4526608 true))

(assert (=> b!4526608 true))

(declare-fun b!4526604 () Bool)

(declare-fun e!2820391 () Bool)

(declare-fun e!2820383 () Bool)

(assert (=> b!4526604 (= e!2820391 e!2820383)))

(declare-fun res!1884697 () Bool)

(assert (=> b!4526604 (=> res!1884697 e!2820383)))

(declare-datatypes ((K!12070 0))(
  ( (K!12071 (val!17927 Int)) )
))
(declare-datatypes ((V!12316 0))(
  ( (V!12317 (val!17928 Int)) )
))
(declare-datatypes ((tuple2!51122 0))(
  ( (tuple2!51123 (_1!28855 K!12070) (_2!28855 V!12316)) )
))
(declare-datatypes ((List!50804 0))(
  ( (Nil!50680) (Cons!50680 (h!56543 tuple2!51122) (t!357766 List!50804)) )
))
(declare-datatypes ((tuple2!51124 0))(
  ( (tuple2!51125 (_1!28856 (_ BitVec 64)) (_2!28856 List!50804)) )
))
(declare-fun lt!1702727 () tuple2!51124)

(declare-fun noDuplicateKeys!1172 (List!50804) Bool)

(assert (=> b!4526604 (= res!1884697 (not (noDuplicateKeys!1172 (_2!28856 lt!1702727))))))

(declare-datatypes ((Unit!96156 0))(
  ( (Unit!96157) )
))
(declare-fun lt!1702720 () Unit!96156)

(declare-datatypes ((List!50805 0))(
  ( (Nil!50681) (Cons!50681 (h!56544 tuple2!51124) (t!357767 List!50805)) )
))
(declare-datatypes ((ListLongMap!2983 0))(
  ( (ListLongMap!2984 (toList!4351 List!50805)) )
))
(declare-fun lm!1477 () ListLongMap!2983)

(declare-fun forallContained!2544 (List!50805 Int tuple2!51124) Unit!96156)

(assert (=> b!4526604 (= lt!1702720 (forallContained!2544 (toList!4351 lm!1477) lambda!173583 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4526605 () Bool)

(declare-fun e!2820382 () Bool)

(declare-fun e!2820388 () Bool)

(assert (=> b!4526605 (= e!2820382 e!2820388)))

(declare-fun res!1884699 () Bool)

(assert (=> b!4526605 (=> (not res!1884699) (not e!2820388))))

(declare-datatypes ((ListMap!3613 0))(
  ( (ListMap!3614 (toList!4352 List!50804)) )
))
(declare-fun lt!1702718 () ListMap!3613)

(declare-fun key!3287 () K!12070)

(declare-fun contains!13427 (ListMap!3613 K!12070) Bool)

(assert (=> b!4526605 (= res!1884699 (contains!13427 lt!1702718 key!3287))))

(declare-fun extractMap!1228 (List!50805) ListMap!3613)

(assert (=> b!4526605 (= lt!1702718 (extractMap!1228 (toList!4351 lm!1477)))))

(declare-fun b!4526606 () Bool)

(declare-fun res!1884711 () Bool)

(declare-fun e!2820392 () Bool)

(assert (=> b!4526606 (=> res!1884711 e!2820392)))

(declare-fun lt!1702738 () ListLongMap!2983)

(declare-fun head!9434 (ListLongMap!2983) tuple2!51124)

(assert (=> b!4526606 (= res!1884711 (not (= (head!9434 lt!1702738) lt!1702727)))))

(declare-fun b!4526607 () Bool)

(declare-fun e!2820384 () Bool)

(assert (=> b!4526607 (= e!2820383 e!2820384)))

(declare-fun res!1884712 () Bool)

(assert (=> b!4526607 (=> res!1884712 e!2820384)))

(declare-fun lt!1702733 () Bool)

(assert (=> b!4526607 (= res!1884712 lt!1702733)))

(declare-fun lt!1702712 () Unit!96156)

(declare-fun e!2820386 () Unit!96156)

(assert (=> b!4526607 (= lt!1702712 e!2820386)))

(declare-fun c!772747 () Bool)

(assert (=> b!4526607 (= c!772747 lt!1702733)))

(declare-fun containsKey!1812 (List!50804 K!12070) Bool)

(assert (=> b!4526607 (= lt!1702733 (containsKey!1812 (_2!28856 lt!1702727) key!3287))))

(declare-fun Unit!96158 () Unit!96156)

(assert (=> b!4526608 (= e!2820386 Unit!96158)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4526608 (not (= hash!344 (_1!28856 lt!1702727)))))

(declare-datatypes ((Option!11139 0))(
  ( (None!11138) (Some!11138 (v!44770 tuple2!51122)) )
))
(declare-fun lt!1702711 () Option!11139)

(declare-fun getPair!188 (List!50804 K!12070) Option!11139)

(assert (=> b!4526608 (= lt!1702711 (getPair!188 (_2!28856 lt!1702727) key!3287))))

(declare-fun lt!1702735 () Unit!96156)

(assert (=> b!4526608 (= lt!1702735 (forallContained!2544 (toList!4351 lm!1477) lambda!173584 (h!56544 (toList!4351 lm!1477))))))

(declare-fun lt!1702741 () Unit!96156)

(declare-fun lambda!173585 () Int)

(declare-fun forallContained!2545 (List!50804 Int tuple2!51122) Unit!96156)

(declare-fun get!16618 (Option!11139) tuple2!51122)

(assert (=> b!4526608 (= lt!1702741 (forallContained!2545 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(assert (=> b!4526608 false))

(declare-fun b!4526609 () Bool)

(declare-fun res!1884701 () Bool)

(declare-fun e!2820387 () Bool)

(assert (=> b!4526609 (=> res!1884701 e!2820387)))

(declare-fun lt!1702722 () ListLongMap!2983)

(declare-fun lt!1702716 () List!50804)

(declare-fun apply!11909 (ListLongMap!2983 (_ BitVec 64)) List!50804)

(assert (=> b!4526609 (= res!1884701 (not (= (apply!11909 lt!1702722 hash!344) lt!1702716)))))

(declare-fun b!4526610 () Bool)

(declare-fun e!2820396 () Bool)

(assert (=> b!4526610 (= e!2820396 e!2820391)))

(declare-fun res!1884707 () Bool)

(assert (=> b!4526610 (=> res!1884707 e!2820391)))

(declare-fun lt!1702736 () ListMap!3613)

(declare-fun lt!1702739 () ListMap!3613)

(declare-fun eq!629 (ListMap!3613 ListMap!3613) Bool)

(assert (=> b!4526610 (= res!1884707 (not (eq!629 lt!1702736 lt!1702739)))))

(declare-fun lt!1702734 () ListMap!3613)

(assert (=> b!4526610 (eq!629 lt!1702734 lt!1702739)))

(declare-fun lt!1702724 () ListMap!3613)

(declare-fun addToMapMapFromBucket!699 (List!50804 ListMap!3613) ListMap!3613)

(assert (=> b!4526610 (= lt!1702739 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724))))

(declare-fun lt!1702742 () Unit!96156)

(declare-fun lt!1702713 () ListMap!3613)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!48 (ListMap!3613 ListMap!3613 List!50804) Unit!96156)

(assert (=> b!4526610 (= lt!1702742 (lemmaAddToMapFromBucketPreservesEquivalence!48 lt!1702713 lt!1702724 (_2!28856 lt!1702727)))))

(declare-fun b!4526611 () Bool)

(declare-fun e!2820380 () Bool)

(declare-fun tp!1338266 () Bool)

(assert (=> b!4526611 (= e!2820380 tp!1338266)))

(declare-fun b!4526612 () Bool)

(declare-fun e!2820389 () Bool)

(declare-fun e!2820390 () Bool)

(assert (=> b!4526612 (= e!2820389 (not e!2820390))))

(declare-fun res!1884705 () Bool)

(assert (=> b!4526612 (=> res!1884705 e!2820390)))

(declare-fun newBucket!178 () List!50804)

(declare-fun removePairForKey!799 (List!50804 K!12070) List!50804)

(assert (=> b!4526612 (= res!1884705 (not (= newBucket!178 (removePairForKey!799 lt!1702716 key!3287))))))

(declare-fun lt!1702730 () tuple2!51124)

(declare-fun lt!1702740 () Unit!96156)

(assert (=> b!4526612 (= lt!1702740 (forallContained!2544 (toList!4351 lm!1477) lambda!173583 lt!1702730))))

(declare-fun contains!13428 (List!50805 tuple2!51124) Bool)

(assert (=> b!4526612 (contains!13428 (toList!4351 lm!1477) lt!1702730)))

(assert (=> b!4526612 (= lt!1702730 (tuple2!51125 hash!344 lt!1702716))))

(declare-fun lt!1702721 () Unit!96156)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!684 (List!50805 (_ BitVec 64) List!50804) Unit!96156)

(assert (=> b!4526612 (= lt!1702721 (lemmaGetValueByKeyImpliesContainsTuple!684 (toList!4351 lm!1477) hash!344 lt!1702716))))

(assert (=> b!4526612 (= lt!1702716 (apply!11909 lm!1477 hash!344))))

(declare-fun lt!1702728 () (_ BitVec 64))

(declare-fun contains!13429 (ListLongMap!2983 (_ BitVec 64)) Bool)

(assert (=> b!4526612 (contains!13429 lm!1477 lt!1702728)))

(declare-datatypes ((Hashable!5567 0))(
  ( (HashableExt!5566 (__x!31270 Int)) )
))
(declare-fun hashF!1107 () Hashable!5567)

(declare-fun lt!1702719 () Unit!96156)

(declare-fun lemmaInGenMapThenLongMapContainsHash!246 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> b!4526612 (= lt!1702719 (lemmaInGenMapThenLongMapContainsHash!246 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4526614 () Bool)

(declare-fun Unit!96159 () Unit!96156)

(assert (=> b!4526614 (= e!2820386 Unit!96159)))

(declare-fun b!4526615 () Bool)

(assert (=> b!4526615 (= e!2820390 e!2820387)))

(declare-fun res!1884708 () Bool)

(assert (=> b!4526615 (=> res!1884708 e!2820387)))

(assert (=> b!4526615 (= res!1884708 (not (contains!13429 lt!1702722 hash!344)))))

(declare-fun tail!7756 (ListLongMap!2983) ListLongMap!2983)

(assert (=> b!4526615 (= lt!1702722 (tail!7756 lm!1477))))

(declare-fun b!4526616 () Bool)

(declare-fun e!2820394 () Bool)

(declare-fun e!2820381 () Bool)

(assert (=> b!4526616 (= e!2820394 e!2820381)))

(declare-fun res!1884696 () Bool)

(assert (=> b!4526616 (=> res!1884696 e!2820381)))

(declare-fun lt!1702715 () ListMap!3613)

(assert (=> b!4526616 (= res!1884696 (not (eq!629 lt!1702715 lt!1702718)))))

(declare-fun +!1560 (ListLongMap!2983 tuple2!51124) ListLongMap!2983)

(assert (=> b!4526616 (= lt!1702715 (extractMap!1228 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))

(assert (=> b!4526616 (= lt!1702727 (head!9434 lm!1477))))

(assert (=> b!4526616 (eq!629 lt!1702713 lt!1702724)))

(declare-fun lt!1702732 () ListMap!3613)

(declare-fun -!398 (ListMap!3613 K!12070) ListMap!3613)

(assert (=> b!4526616 (= lt!1702724 (-!398 lt!1702732 key!3287))))

(declare-fun lt!1702729 () ListLongMap!2983)

(assert (=> b!4526616 (= lt!1702713 (extractMap!1228 (toList!4351 lt!1702729)))))

(declare-fun lt!1702726 () tuple2!51124)

(assert (=> b!4526616 (= lt!1702729 (+!1560 lt!1702722 lt!1702726))))

(assert (=> b!4526616 (= lt!1702726 (tuple2!51125 hash!344 newBucket!178))))

(declare-fun lt!1702737 () Unit!96156)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!157 (ListLongMap!2983 (_ BitVec 64) List!50804 K!12070 Hashable!5567) Unit!96156)

(assert (=> b!4526616 (= lt!1702737 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!157 lt!1702722 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4526617 () Bool)

(declare-fun e!2820395 () Bool)

(declare-fun e!2820385 () Bool)

(assert (=> b!4526617 (= e!2820395 e!2820385)))

(declare-fun res!1884695 () Bool)

(assert (=> b!4526617 (=> res!1884695 e!2820385)))

(declare-fun containsKeyBiggerList!152 (List!50805 K!12070) Bool)

(assert (=> b!4526617 (= res!1884695 (not (containsKeyBiggerList!152 (t!357767 (toList!4351 lm!1477)) key!3287)))))

(assert (=> b!4526617 (containsKeyBiggerList!152 (toList!4351 lt!1702722) key!3287)))

(declare-fun lt!1702725 () Unit!96156)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!88 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> b!4526617 (= lt!1702725 (lemmaInLongMapThenContainsKeyBiggerList!88 lt!1702722 key!3287 hashF!1107))))

(declare-fun b!4526618 () Bool)

(declare-fun res!1884694 () Bool)

(assert (=> b!4526618 (=> (not res!1884694) (not e!2820389))))

(declare-fun allKeysSameHash!1026 (List!50804 (_ BitVec 64) Hashable!5567) Bool)

(assert (=> b!4526618 (= res!1884694 (allKeysSameHash!1026 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4526619 () Bool)

(assert (=> b!4526619 (= e!2820387 e!2820395)))

(declare-fun res!1884692 () Bool)

(assert (=> b!4526619 (=> res!1884692 e!2820395)))

(declare-fun lt!1702723 () Bool)

(assert (=> b!4526619 (= res!1884692 lt!1702723)))

(declare-fun lt!1702714 () Unit!96156)

(declare-fun e!2820393 () Unit!96156)

(assert (=> b!4526619 (= lt!1702714 e!2820393)))

(declare-fun c!772746 () Bool)

(assert (=> b!4526619 (= c!772746 lt!1702723)))

(assert (=> b!4526619 (= lt!1702723 (not (containsKey!1812 lt!1702716 key!3287)))))

(declare-fun b!4526620 () Bool)

(declare-fun res!1884710 () Bool)

(assert (=> b!4526620 (=> res!1884710 e!2820381)))

(assert (=> b!4526620 (= res!1884710 (bvsge (_1!28856 lt!1702727) hash!344))))

(declare-fun b!4526621 () Bool)

(declare-fun res!1884698 () Bool)

(assert (=> b!4526621 (=> res!1884698 e!2820390)))

(assert (=> b!4526621 (= res!1884698 (not (noDuplicateKeys!1172 newBucket!178)))))

(declare-fun b!4526622 () Bool)

(declare-fun res!1884706 () Bool)

(assert (=> b!4526622 (=> res!1884706 e!2820387)))

(assert (=> b!4526622 (= res!1884706 (not (contains!13428 (t!357767 (toList!4351 lm!1477)) lt!1702730)))))

(declare-fun b!4526623 () Bool)

(declare-fun res!1884690 () Bool)

(assert (=> b!4526623 (=> res!1884690 e!2820390)))

(get-info :version)

(assert (=> b!4526623 (= res!1884690 (or ((_ is Nil!50681) (toList!4351 lm!1477)) (= (_1!28856 (h!56544 (toList!4351 lm!1477))) hash!344)))))

(declare-fun b!4526624 () Bool)

(assert (=> b!4526624 (= e!2820385 e!2820394)))

(declare-fun res!1884709 () Bool)

(assert (=> b!4526624 (=> res!1884709 e!2820394)))

(assert (=> b!4526624 (= res!1884709 (not (contains!13427 (extractMap!1228 (t!357767 (toList!4351 lm!1477))) key!3287)))))

(assert (=> b!4526624 (contains!13427 lt!1702732 key!3287)))

(assert (=> b!4526624 (= lt!1702732 (extractMap!1228 (toList!4351 lt!1702722)))))

(declare-fun lt!1702731 () Unit!96156)

(declare-fun lemmaListContainsThenExtractedMapContains!142 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> b!4526624 (= lt!1702731 (lemmaListContainsThenExtractedMapContains!142 lt!1702722 key!3287 hashF!1107))))

(declare-fun b!4526625 () Bool)

(assert (=> b!4526625 (= e!2820381 e!2820392)))

(declare-fun res!1884702 () Bool)

(assert (=> b!4526625 (=> res!1884702 e!2820392)))

(assert (=> b!4526625 (= res!1884702 (not (= lt!1702738 (+!1560 lm!1477 lt!1702726))))))

(assert (=> b!4526625 (= lt!1702738 (+!1560 lt!1702729 lt!1702727))))

(declare-fun b!4526626 () Bool)

(declare-fun res!1884700 () Bool)

(assert (=> b!4526626 (=> res!1884700 e!2820381)))

(assert (=> b!4526626 (= res!1884700 (not (eq!629 lt!1702718 lt!1702715)))))

(declare-fun b!4526613 () Bool)

(declare-fun res!1884704 () Bool)

(assert (=> b!4526613 (=> (not res!1884704) (not e!2820382))))

(declare-fun allKeysSameHashInMap!1279 (ListLongMap!2983 Hashable!5567) Bool)

(assert (=> b!4526613 (= res!1884704 (allKeysSameHashInMap!1279 lm!1477 hashF!1107))))

(declare-fun res!1884693 () Bool)

(assert (=> start!448604 (=> (not res!1884693) (not e!2820382))))

(declare-fun forall!10291 (List!50805 Int) Bool)

(assert (=> start!448604 (= res!1884693 (forall!10291 (toList!4351 lm!1477) lambda!173583))))

(assert (=> start!448604 e!2820382))

(assert (=> start!448604 true))

(declare-fun inv!66254 (ListLongMap!2983) Bool)

(assert (=> start!448604 (and (inv!66254 lm!1477) e!2820380)))

(declare-fun tp_is_empty!27965 () Bool)

(assert (=> start!448604 tp_is_empty!27965))

(declare-fun e!2820397 () Bool)

(assert (=> start!448604 e!2820397))

(declare-fun b!4526627 () Bool)

(declare-fun Unit!96160 () Unit!96156)

(assert (=> b!4526627 (= e!2820393 Unit!96160)))

(declare-fun lt!1702717 () Unit!96156)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!160 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> b!4526627 (= lt!1702717 (lemmaNotInItsHashBucketThenNotInMap!160 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4526627 false))

(declare-fun tp!1338267 () Bool)

(declare-fun tp_is_empty!27967 () Bool)

(declare-fun b!4526628 () Bool)

(assert (=> b!4526628 (= e!2820397 (and tp_is_empty!27965 tp_is_empty!27967 tp!1338267))))

(declare-fun b!4526629 () Bool)

(assert (=> b!4526629 (= e!2820392 e!2820396)))

(declare-fun res!1884703 () Bool)

(assert (=> b!4526629 (=> res!1884703 e!2820396)))

(assert (=> b!4526629 (= res!1884703 (not (eq!629 lt!1702736 lt!1702734)))))

(assert (=> b!4526629 (= lt!1702734 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713))))

(assert (=> b!4526629 (= lt!1702736 (extractMap!1228 (toList!4351 lt!1702738)))))

(declare-fun b!4526630 () Bool)

(declare-fun isEmpty!28695 (ListLongMap!2983) Bool)

(assert (=> b!4526630 (= e!2820384 (not (isEmpty!28695 lm!1477)))))

(declare-fun b!4526631 () Bool)

(declare-fun Unit!96161 () Unit!96156)

(assert (=> b!4526631 (= e!2820393 Unit!96161)))

(declare-fun b!4526632 () Bool)

(assert (=> b!4526632 (= e!2820388 e!2820389)))

(declare-fun res!1884691 () Bool)

(assert (=> b!4526632 (=> (not res!1884691) (not e!2820389))))

(assert (=> b!4526632 (= res!1884691 (= lt!1702728 hash!344))))

(declare-fun hash!2845 (Hashable!5567 K!12070) (_ BitVec 64))

(assert (=> b!4526632 (= lt!1702728 (hash!2845 hashF!1107 key!3287))))

(assert (= (and start!448604 res!1884693) b!4526613))

(assert (= (and b!4526613 res!1884704) b!4526605))

(assert (= (and b!4526605 res!1884699) b!4526632))

(assert (= (and b!4526632 res!1884691) b!4526618))

(assert (= (and b!4526618 res!1884694) b!4526612))

(assert (= (and b!4526612 (not res!1884705)) b!4526621))

(assert (= (and b!4526621 (not res!1884698)) b!4526623))

(assert (= (and b!4526623 (not res!1884690)) b!4526615))

(assert (= (and b!4526615 (not res!1884708)) b!4526609))

(assert (= (and b!4526609 (not res!1884701)) b!4526622))

(assert (= (and b!4526622 (not res!1884706)) b!4526619))

(assert (= (and b!4526619 c!772746) b!4526627))

(assert (= (and b!4526619 (not c!772746)) b!4526631))

(assert (= (and b!4526619 (not res!1884692)) b!4526617))

(assert (= (and b!4526617 (not res!1884695)) b!4526624))

(assert (= (and b!4526624 (not res!1884709)) b!4526616))

(assert (= (and b!4526616 (not res!1884696)) b!4526626))

(assert (= (and b!4526626 (not res!1884700)) b!4526620))

(assert (= (and b!4526620 (not res!1884710)) b!4526625))

(assert (= (and b!4526625 (not res!1884702)) b!4526606))

(assert (= (and b!4526606 (not res!1884711)) b!4526629))

(assert (= (and b!4526629 (not res!1884703)) b!4526610))

(assert (= (and b!4526610 (not res!1884707)) b!4526604))

(assert (= (and b!4526604 (not res!1884697)) b!4526607))

(assert (= (and b!4526607 c!772747) b!4526608))

(assert (= (and b!4526607 (not c!772747)) b!4526614))

(assert (= (and b!4526607 (not res!1884712)) b!4526630))

(assert (= start!448604 b!4526611))

(assert (= (and start!448604 ((_ is Cons!50680) newBucket!178)) b!4526628))

(declare-fun m!5280231 () Bool)

(assert (=> b!4526606 m!5280231))

(declare-fun m!5280233 () Bool)

(assert (=> b!4526621 m!5280233))

(declare-fun m!5280235 () Bool)

(assert (=> b!4526619 m!5280235))

(declare-fun m!5280237 () Bool)

(assert (=> b!4526613 m!5280237))

(declare-fun m!5280239 () Bool)

(assert (=> b!4526616 m!5280239))

(declare-fun m!5280241 () Bool)

(assert (=> b!4526616 m!5280241))

(declare-fun m!5280243 () Bool)

(assert (=> b!4526616 m!5280243))

(declare-fun m!5280245 () Bool)

(assert (=> b!4526616 m!5280245))

(declare-fun m!5280247 () Bool)

(assert (=> b!4526616 m!5280247))

(declare-fun m!5280249 () Bool)

(assert (=> b!4526616 m!5280249))

(declare-fun m!5280251 () Bool)

(assert (=> b!4526616 m!5280251))

(declare-fun m!5280253 () Bool)

(assert (=> b!4526616 m!5280253))

(declare-fun m!5280255 () Bool)

(assert (=> b!4526616 m!5280255))

(declare-fun m!5280257 () Bool)

(assert (=> b!4526626 m!5280257))

(declare-fun m!5280259 () Bool)

(assert (=> b!4526625 m!5280259))

(declare-fun m!5280261 () Bool)

(assert (=> b!4526625 m!5280261))

(declare-fun m!5280263 () Bool)

(assert (=> b!4526609 m!5280263))

(declare-fun m!5280265 () Bool)

(assert (=> b!4526632 m!5280265))

(declare-fun m!5280267 () Bool)

(assert (=> b!4526629 m!5280267))

(declare-fun m!5280269 () Bool)

(assert (=> b!4526629 m!5280269))

(declare-fun m!5280271 () Bool)

(assert (=> b!4526629 m!5280271))

(declare-fun m!5280273 () Bool)

(assert (=> b!4526615 m!5280273))

(declare-fun m!5280275 () Bool)

(assert (=> b!4526615 m!5280275))

(declare-fun m!5280277 () Bool)

(assert (=> b!4526608 m!5280277))

(declare-fun m!5280279 () Bool)

(assert (=> b!4526608 m!5280279))

(declare-fun m!5280281 () Bool)

(assert (=> b!4526608 m!5280281))

(declare-fun m!5280283 () Bool)

(assert (=> b!4526608 m!5280283))

(declare-fun m!5280285 () Bool)

(assert (=> b!4526622 m!5280285))

(declare-fun m!5280287 () Bool)

(assert (=> b!4526627 m!5280287))

(declare-fun m!5280289 () Bool)

(assert (=> b!4526630 m!5280289))

(declare-fun m!5280291 () Bool)

(assert (=> b!4526604 m!5280291))

(declare-fun m!5280293 () Bool)

(assert (=> b!4526604 m!5280293))

(declare-fun m!5280295 () Bool)

(assert (=> b!4526605 m!5280295))

(declare-fun m!5280297 () Bool)

(assert (=> b!4526605 m!5280297))

(declare-fun m!5280299 () Bool)

(assert (=> b!4526618 m!5280299))

(declare-fun m!5280301 () Bool)

(assert (=> b!4526607 m!5280301))

(declare-fun m!5280303 () Bool)

(assert (=> b!4526617 m!5280303))

(declare-fun m!5280305 () Bool)

(assert (=> b!4526617 m!5280305))

(declare-fun m!5280307 () Bool)

(assert (=> b!4526617 m!5280307))

(declare-fun m!5280309 () Bool)

(assert (=> b!4526624 m!5280309))

(declare-fun m!5280311 () Bool)

(assert (=> b!4526624 m!5280311))

(declare-fun m!5280313 () Bool)

(assert (=> b!4526624 m!5280313))

(declare-fun m!5280315 () Bool)

(assert (=> b!4526624 m!5280315))

(assert (=> b!4526624 m!5280313))

(declare-fun m!5280317 () Bool)

(assert (=> b!4526624 m!5280317))

(declare-fun m!5280319 () Bool)

(assert (=> start!448604 m!5280319))

(declare-fun m!5280321 () Bool)

(assert (=> start!448604 m!5280321))

(declare-fun m!5280323 () Bool)

(assert (=> b!4526612 m!5280323))

(declare-fun m!5280325 () Bool)

(assert (=> b!4526612 m!5280325))

(declare-fun m!5280327 () Bool)

(assert (=> b!4526612 m!5280327))

(declare-fun m!5280329 () Bool)

(assert (=> b!4526612 m!5280329))

(declare-fun m!5280331 () Bool)

(assert (=> b!4526612 m!5280331))

(declare-fun m!5280333 () Bool)

(assert (=> b!4526612 m!5280333))

(declare-fun m!5280335 () Bool)

(assert (=> b!4526612 m!5280335))

(declare-fun m!5280337 () Bool)

(assert (=> b!4526610 m!5280337))

(declare-fun m!5280339 () Bool)

(assert (=> b!4526610 m!5280339))

(declare-fun m!5280341 () Bool)

(assert (=> b!4526610 m!5280341))

(declare-fun m!5280343 () Bool)

(assert (=> b!4526610 m!5280343))

(check-sat (not b!4526612) (not b!4526624) (not b!4526607) (not b!4526609) (not b!4526604) (not b!4526627) (not b!4526625) (not b!4526621) (not b!4526632) tp_is_empty!27967 (not b!4526618) (not start!448604) tp_is_empty!27965 (not b!4526606) (not b!4526619) (not b!4526616) (not b!4526611) (not b!4526608) (not b!4526628) (not b!4526613) (not b!4526629) (not b!4526630) (not b!4526615) (not b!4526610) (not b!4526622) (not b!4526605) (not b!4526617) (not b!4526626))
(check-sat)
(get-model)

(declare-fun d!1396166 () Bool)

(declare-fun lt!1702745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8385 (List!50805) (InoxSet tuple2!51124))

(assert (=> d!1396166 (= lt!1702745 (select (content!8385 (t!357767 (toList!4351 lm!1477))) lt!1702730))))

(declare-fun e!2820402 () Bool)

(assert (=> d!1396166 (= lt!1702745 e!2820402)))

(declare-fun res!1884717 () Bool)

(assert (=> d!1396166 (=> (not res!1884717) (not e!2820402))))

(assert (=> d!1396166 (= res!1884717 ((_ is Cons!50681) (t!357767 (toList!4351 lm!1477))))))

(assert (=> d!1396166 (= (contains!13428 (t!357767 (toList!4351 lm!1477)) lt!1702730) lt!1702745)))

(declare-fun b!4526643 () Bool)

(declare-fun e!2820403 () Bool)

(assert (=> b!4526643 (= e!2820402 e!2820403)))

(declare-fun res!1884718 () Bool)

(assert (=> b!4526643 (=> res!1884718 e!2820403)))

(assert (=> b!4526643 (= res!1884718 (= (h!56544 (t!357767 (toList!4351 lm!1477))) lt!1702730))))

(declare-fun b!4526644 () Bool)

(assert (=> b!4526644 (= e!2820403 (contains!13428 (t!357767 (t!357767 (toList!4351 lm!1477))) lt!1702730))))

(assert (= (and d!1396166 res!1884717) b!4526643))

(assert (= (and b!4526643 (not res!1884718)) b!4526644))

(declare-fun m!5280345 () Bool)

(assert (=> d!1396166 m!5280345))

(declare-fun m!5280347 () Bool)

(assert (=> d!1396166 m!5280347))

(declare-fun m!5280349 () Bool)

(assert (=> b!4526644 m!5280349))

(assert (=> b!4526622 d!1396166))

(declare-fun d!1396168 () Bool)

(declare-fun res!1884723 () Bool)

(declare-fun e!2820408 () Bool)

(assert (=> d!1396168 (=> res!1884723 e!2820408)))

(assert (=> d!1396168 (= res!1884723 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396168 (= (forall!10291 (toList!4351 lm!1477) lambda!173583) e!2820408)))

(declare-fun b!4526649 () Bool)

(declare-fun e!2820409 () Bool)

(assert (=> b!4526649 (= e!2820408 e!2820409)))

(declare-fun res!1884724 () Bool)

(assert (=> b!4526649 (=> (not res!1884724) (not e!2820409))))

(declare-fun dynLambda!21178 (Int tuple2!51124) Bool)

(assert (=> b!4526649 (= res!1884724 (dynLambda!21178 lambda!173583 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4526650 () Bool)

(assert (=> b!4526650 (= e!2820409 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173583))))

(assert (= (and d!1396168 (not res!1884723)) b!4526649))

(assert (= (and b!4526649 res!1884724) b!4526650))

(declare-fun b_lambda!155933 () Bool)

(assert (=> (not b_lambda!155933) (not b!4526649)))

(declare-fun m!5280351 () Bool)

(assert (=> b!4526649 m!5280351))

(declare-fun m!5280353 () Bool)

(assert (=> b!4526650 m!5280353))

(assert (=> start!448604 d!1396168))

(declare-fun d!1396170 () Bool)

(declare-fun isStrictlySorted!440 (List!50805) Bool)

(assert (=> d!1396170 (= (inv!66254 lm!1477) (isStrictlySorted!440 (toList!4351 lm!1477)))))

(declare-fun bs!862103 () Bool)

(assert (= bs!862103 d!1396170))

(declare-fun m!5280355 () Bool)

(assert (=> bs!862103 m!5280355))

(assert (=> start!448604 d!1396170))

(declare-fun d!1396172 () Bool)

(declare-fun res!1884729 () Bool)

(declare-fun e!2820414 () Bool)

(assert (=> d!1396172 (=> res!1884729 e!2820414)))

(assert (=> d!1396172 (= res!1884729 (not ((_ is Cons!50680) newBucket!178)))))

(assert (=> d!1396172 (= (noDuplicateKeys!1172 newBucket!178) e!2820414)))

(declare-fun b!4526655 () Bool)

(declare-fun e!2820415 () Bool)

(assert (=> b!4526655 (= e!2820414 e!2820415)))

(declare-fun res!1884730 () Bool)

(assert (=> b!4526655 (=> (not res!1884730) (not e!2820415))))

(assert (=> b!4526655 (= res!1884730 (not (containsKey!1812 (t!357766 newBucket!178) (_1!28855 (h!56543 newBucket!178)))))))

(declare-fun b!4526656 () Bool)

(assert (=> b!4526656 (= e!2820415 (noDuplicateKeys!1172 (t!357766 newBucket!178)))))

(assert (= (and d!1396172 (not res!1884729)) b!4526655))

(assert (= (and b!4526655 res!1884730) b!4526656))

(declare-fun m!5280361 () Bool)

(assert (=> b!4526655 m!5280361))

(declare-fun m!5280363 () Bool)

(assert (=> b!4526656 m!5280363))

(assert (=> b!4526621 d!1396172))

(declare-fun d!1396178 () Bool)

(declare-fun e!2820430 () Bool)

(assert (=> d!1396178 e!2820430))

(declare-fun res!1884742 () Bool)

(assert (=> d!1396178 (=> (not res!1884742) (not e!2820430))))

(declare-fun lt!1702772 () ListLongMap!2983)

(assert (=> d!1396178 (= res!1884742 (contains!13429 lt!1702772 (_1!28856 lt!1702726)))))

(declare-fun lt!1702773 () List!50805)

(assert (=> d!1396178 (= lt!1702772 (ListLongMap!2984 lt!1702773))))

(declare-fun lt!1702770 () Unit!96156)

(declare-fun lt!1702771 () Unit!96156)

(assert (=> d!1396178 (= lt!1702770 lt!1702771)))

(declare-datatypes ((Option!11142 0))(
  ( (None!11141) (Some!11141 (v!44777 List!50804)) )
))
(declare-fun getValueByKey!1112 (List!50805 (_ BitVec 64)) Option!11142)

(assert (=> d!1396178 (= (getValueByKey!1112 lt!1702773 (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726)))))

(declare-fun lemmaContainsTupThenGetReturnValue!694 (List!50805 (_ BitVec 64) List!50804) Unit!96156)

(assert (=> d!1396178 (= lt!1702771 (lemmaContainsTupThenGetReturnValue!694 lt!1702773 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(declare-fun insertStrictlySorted!418 (List!50805 (_ BitVec 64) List!50804) List!50805)

(assert (=> d!1396178 (= lt!1702773 (insertStrictlySorted!418 (toList!4351 lm!1477) (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(assert (=> d!1396178 (= (+!1560 lm!1477 lt!1702726) lt!1702772)))

(declare-fun b!4526679 () Bool)

(declare-fun res!1884741 () Bool)

(assert (=> b!4526679 (=> (not res!1884741) (not e!2820430))))

(assert (=> b!4526679 (= res!1884741 (= (getValueByKey!1112 (toList!4351 lt!1702772) (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726))))))

(declare-fun b!4526680 () Bool)

(assert (=> b!4526680 (= e!2820430 (contains!13428 (toList!4351 lt!1702772) lt!1702726))))

(assert (= (and d!1396178 res!1884742) b!4526679))

(assert (= (and b!4526679 res!1884741) b!4526680))

(declare-fun m!5280371 () Bool)

(assert (=> d!1396178 m!5280371))

(declare-fun m!5280381 () Bool)

(assert (=> d!1396178 m!5280381))

(declare-fun m!5280389 () Bool)

(assert (=> d!1396178 m!5280389))

(declare-fun m!5280393 () Bool)

(assert (=> d!1396178 m!5280393))

(declare-fun m!5280395 () Bool)

(assert (=> b!4526679 m!5280395))

(declare-fun m!5280397 () Bool)

(assert (=> b!4526680 m!5280397))

(assert (=> b!4526625 d!1396178))

(declare-fun d!1396184 () Bool)

(declare-fun e!2820437 () Bool)

(assert (=> d!1396184 e!2820437))

(declare-fun res!1884747 () Bool)

(assert (=> d!1396184 (=> (not res!1884747) (not e!2820437))))

(declare-fun lt!1702784 () ListLongMap!2983)

(assert (=> d!1396184 (= res!1884747 (contains!13429 lt!1702784 (_1!28856 lt!1702727)))))

(declare-fun lt!1702785 () List!50805)

(assert (=> d!1396184 (= lt!1702784 (ListLongMap!2984 lt!1702785))))

(declare-fun lt!1702782 () Unit!96156)

(declare-fun lt!1702783 () Unit!96156)

(assert (=> d!1396184 (= lt!1702782 lt!1702783)))

(assert (=> d!1396184 (= (getValueByKey!1112 lt!1702785 (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727)))))

(assert (=> d!1396184 (= lt!1702783 (lemmaContainsTupThenGetReturnValue!694 lt!1702785 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(assert (=> d!1396184 (= lt!1702785 (insertStrictlySorted!418 (toList!4351 lt!1702729) (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(assert (=> d!1396184 (= (+!1560 lt!1702729 lt!1702727) lt!1702784)))

(declare-fun b!4526690 () Bool)

(declare-fun res!1884746 () Bool)

(assert (=> b!4526690 (=> (not res!1884746) (not e!2820437))))

(assert (=> b!4526690 (= res!1884746 (= (getValueByKey!1112 (toList!4351 lt!1702784) (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727))))))

(declare-fun b!4526691 () Bool)

(assert (=> b!4526691 (= e!2820437 (contains!13428 (toList!4351 lt!1702784) lt!1702727))))

(assert (= (and d!1396184 res!1884747) b!4526690))

(assert (= (and b!4526690 res!1884746) b!4526691))

(declare-fun m!5280399 () Bool)

(assert (=> d!1396184 m!5280399))

(declare-fun m!5280401 () Bool)

(assert (=> d!1396184 m!5280401))

(declare-fun m!5280403 () Bool)

(assert (=> d!1396184 m!5280403))

(declare-fun m!5280405 () Bool)

(assert (=> d!1396184 m!5280405))

(declare-fun m!5280407 () Bool)

(assert (=> b!4526690 m!5280407))

(declare-fun m!5280409 () Bool)

(assert (=> b!4526691 m!5280409))

(assert (=> b!4526625 d!1396184))

(declare-fun d!1396186 () Bool)

(declare-fun res!1884748 () Bool)

(declare-fun e!2820438 () Bool)

(assert (=> d!1396186 (=> res!1884748 e!2820438)))

(assert (=> d!1396186 (= res!1884748 (not ((_ is Cons!50680) (_2!28856 lt!1702727))))))

(assert (=> d!1396186 (= (noDuplicateKeys!1172 (_2!28856 lt!1702727)) e!2820438)))

(declare-fun b!4526692 () Bool)

(declare-fun e!2820439 () Bool)

(assert (=> b!4526692 (= e!2820438 e!2820439)))

(declare-fun res!1884749 () Bool)

(assert (=> b!4526692 (=> (not res!1884749) (not e!2820439))))

(assert (=> b!4526692 (= res!1884749 (not (containsKey!1812 (t!357766 (_2!28856 lt!1702727)) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4526693 () Bool)

(assert (=> b!4526693 (= e!2820439 (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702727))))))

(assert (= (and d!1396186 (not res!1884748)) b!4526692))

(assert (= (and b!4526692 res!1884749) b!4526693))

(declare-fun m!5280411 () Bool)

(assert (=> b!4526692 m!5280411))

(declare-fun m!5280413 () Bool)

(assert (=> b!4526693 m!5280413))

(assert (=> b!4526604 d!1396186))

(declare-fun d!1396188 () Bool)

(assert (=> d!1396188 (dynLambda!21178 lambda!173583 (h!56544 (toList!4351 lm!1477)))))

(declare-fun lt!1702788 () Unit!96156)

(declare-fun choose!29644 (List!50805 Int tuple2!51124) Unit!96156)

(assert (=> d!1396188 (= lt!1702788 (choose!29644 (toList!4351 lm!1477) lambda!173583 (h!56544 (toList!4351 lm!1477))))))

(declare-fun e!2820442 () Bool)

(assert (=> d!1396188 e!2820442))

(declare-fun res!1884752 () Bool)

(assert (=> d!1396188 (=> (not res!1884752) (not e!2820442))))

(assert (=> d!1396188 (= res!1884752 (forall!10291 (toList!4351 lm!1477) lambda!173583))))

(assert (=> d!1396188 (= (forallContained!2544 (toList!4351 lm!1477) lambda!173583 (h!56544 (toList!4351 lm!1477))) lt!1702788)))

(declare-fun b!4526696 () Bool)

(assert (=> b!4526696 (= e!2820442 (contains!13428 (toList!4351 lm!1477) (h!56544 (toList!4351 lm!1477))))))

(assert (= (and d!1396188 res!1884752) b!4526696))

(declare-fun b_lambda!155935 () Bool)

(assert (=> (not b_lambda!155935) (not d!1396188)))

(assert (=> d!1396188 m!5280351))

(declare-fun m!5280415 () Bool)

(assert (=> d!1396188 m!5280415))

(assert (=> d!1396188 m!5280319))

(declare-fun m!5280417 () Bool)

(assert (=> b!4526696 m!5280417))

(assert (=> b!4526604 d!1396188))

(declare-fun b!4526735 () Bool)

(declare-datatypes ((List!50807 0))(
  ( (Nil!50683) (Cons!50683 (h!56548 K!12070) (t!357769 List!50807)) )
))
(declare-fun e!2820468 () List!50807)

(declare-fun keys!17616 (ListMap!3613) List!50807)

(assert (=> b!4526735 (= e!2820468 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun d!1396190 () Bool)

(declare-fun e!2820473 () Bool)

(assert (=> d!1396190 e!2820473))

(declare-fun res!1884773 () Bool)

(assert (=> d!1396190 (=> res!1884773 e!2820473)))

(declare-fun e!2820472 () Bool)

(assert (=> d!1396190 (= res!1884773 e!2820472)))

(declare-fun res!1884775 () Bool)

(assert (=> d!1396190 (=> (not res!1884775) (not e!2820472))))

(declare-fun lt!1702827 () Bool)

(assert (=> d!1396190 (= res!1884775 (not lt!1702827))))

(declare-fun lt!1702829 () Bool)

(assert (=> d!1396190 (= lt!1702827 lt!1702829)))

(declare-fun lt!1702830 () Unit!96156)

(declare-fun e!2820471 () Unit!96156)

(assert (=> d!1396190 (= lt!1702830 e!2820471)))

(declare-fun c!772767 () Bool)

(assert (=> d!1396190 (= c!772767 lt!1702829)))

(declare-fun containsKey!1814 (List!50804 K!12070) Bool)

(assert (=> d!1396190 (= lt!1702829 (containsKey!1814 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> d!1396190 (= (contains!13427 (extractMap!1228 (t!357767 (toList!4351 lm!1477))) key!3287) lt!1702827)))

(declare-fun b!4526736 () Bool)

(declare-fun e!2820470 () Unit!96156)

(declare-fun Unit!96178 () Unit!96156)

(assert (=> b!4526736 (= e!2820470 Unit!96178)))

(declare-fun bm!315472 () Bool)

(declare-fun call!315477 () Bool)

(declare-fun contains!13431 (List!50807 K!12070) Bool)

(assert (=> bm!315472 (= call!315477 (contains!13431 e!2820468 key!3287))))

(declare-fun c!772768 () Bool)

(assert (=> bm!315472 (= c!772768 c!772767)))

(declare-fun b!4526737 () Bool)

(declare-fun getKeysList!475 (List!50804) List!50807)

(assert (=> b!4526737 (= e!2820468 (getKeysList!475 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))

(declare-fun b!4526738 () Bool)

(declare-fun e!2820469 () Bool)

(assert (=> b!4526738 (= e!2820473 e!2820469)))

(declare-fun res!1884774 () Bool)

(assert (=> b!4526738 (=> (not res!1884774) (not e!2820469))))

(declare-datatypes ((Option!11143 0))(
  ( (None!11142) (Some!11142 (v!44778 V!12316)) )
))
(declare-fun isDefined!8426 (Option!11143) Bool)

(declare-fun getValueByKey!1113 (List!50804 K!12070) Option!11143)

(assert (=> b!4526738 (= res!1884774 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287)))))

(declare-fun b!4526739 () Bool)

(assert (=> b!4526739 (= e!2820469 (contains!13431 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(declare-fun b!4526740 () Bool)

(assert (=> b!4526740 (= e!2820472 (not (contains!13431 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287)))))

(declare-fun b!4526741 () Bool)

(assert (=> b!4526741 false))

(declare-fun lt!1702828 () Unit!96156)

(declare-fun lt!1702826 () Unit!96156)

(assert (=> b!4526741 (= lt!1702828 lt!1702826)))

(assert (=> b!4526741 (containsKey!1814 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!474 (List!50804 K!12070) Unit!96156)

(assert (=> b!4526741 (= lt!1702826 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(declare-fun Unit!96180 () Unit!96156)

(assert (=> b!4526741 (= e!2820470 Unit!96180)))

(declare-fun b!4526742 () Bool)

(assert (=> b!4526742 (= e!2820471 e!2820470)))

(declare-fun c!772766 () Bool)

(assert (=> b!4526742 (= c!772766 call!315477)))

(declare-fun b!4526743 () Bool)

(declare-fun lt!1702824 () Unit!96156)

(assert (=> b!4526743 (= e!2820471 lt!1702824)))

(declare-fun lt!1702825 () Unit!96156)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (List!50804 K!12070) Unit!96156)

(assert (=> b!4526743 (= lt!1702825 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> b!4526743 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(declare-fun lt!1702831 () Unit!96156)

(assert (=> b!4526743 (= lt!1702831 lt!1702825)))

(declare-fun lemmaInListThenGetKeysListContains!471 (List!50804 K!12070) Unit!96156)

(assert (=> b!4526743 (= lt!1702824 (lemmaInListThenGetKeysListContains!471 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> b!4526743 call!315477))

(assert (= (and d!1396190 c!772767) b!4526743))

(assert (= (and d!1396190 (not c!772767)) b!4526742))

(assert (= (and b!4526742 c!772766) b!4526741))

(assert (= (and b!4526742 (not c!772766)) b!4526736))

(assert (= (or b!4526743 b!4526742) bm!315472))

(assert (= (and bm!315472 c!772768) b!4526737))

(assert (= (and bm!315472 (not c!772768)) b!4526735))

(assert (= (and d!1396190 res!1884775) b!4526740))

(assert (= (and d!1396190 (not res!1884773)) b!4526738))

(assert (= (and b!4526738 res!1884774) b!4526739))

(declare-fun m!5280457 () Bool)

(assert (=> b!4526741 m!5280457))

(declare-fun m!5280459 () Bool)

(assert (=> b!4526741 m!5280459))

(assert (=> d!1396190 m!5280457))

(assert (=> b!4526740 m!5280313))

(declare-fun m!5280461 () Bool)

(assert (=> b!4526740 m!5280461))

(assert (=> b!4526740 m!5280461))

(declare-fun m!5280463 () Bool)

(assert (=> b!4526740 m!5280463))

(declare-fun m!5280465 () Bool)

(assert (=> b!4526737 m!5280465))

(declare-fun m!5280467 () Bool)

(assert (=> b!4526738 m!5280467))

(assert (=> b!4526738 m!5280467))

(declare-fun m!5280469 () Bool)

(assert (=> b!4526738 m!5280469))

(declare-fun m!5280471 () Bool)

(assert (=> b!4526743 m!5280471))

(assert (=> b!4526743 m!5280467))

(assert (=> b!4526743 m!5280467))

(assert (=> b!4526743 m!5280469))

(declare-fun m!5280473 () Bool)

(assert (=> b!4526743 m!5280473))

(assert (=> b!4526739 m!5280313))

(assert (=> b!4526739 m!5280461))

(assert (=> b!4526739 m!5280461))

(assert (=> b!4526739 m!5280463))

(assert (=> b!4526735 m!5280313))

(assert (=> b!4526735 m!5280461))

(declare-fun m!5280475 () Bool)

(assert (=> bm!315472 m!5280475))

(assert (=> b!4526624 d!1396190))

(declare-fun bs!862113 () Bool)

(declare-fun d!1396204 () Bool)

(assert (= bs!862113 (and d!1396204 start!448604)))

(declare-fun lambda!173594 () Int)

(assert (=> bs!862113 (= lambda!173594 lambda!173583)))

(declare-fun bs!862114 () Bool)

(assert (= bs!862114 (and d!1396204 b!4526608)))

(assert (=> bs!862114 (not (= lambda!173594 lambda!173584))))

(declare-fun lt!1702834 () ListMap!3613)

(declare-fun invariantList!1027 (List!50804) Bool)

(assert (=> d!1396204 (invariantList!1027 (toList!4352 lt!1702834))))

(declare-fun e!2820476 () ListMap!3613)

(assert (=> d!1396204 (= lt!1702834 e!2820476)))

(declare-fun c!772771 () Bool)

(assert (=> d!1396204 (= c!772771 ((_ is Cons!50681) (t!357767 (toList!4351 lm!1477))))))

(assert (=> d!1396204 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173594)))

(assert (=> d!1396204 (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702834)))

(declare-fun b!4526748 () Bool)

(assert (=> b!4526748 (= e!2820476 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))))))

(declare-fun b!4526749 () Bool)

(assert (=> b!4526749 (= e!2820476 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396204 c!772771) b!4526748))

(assert (= (and d!1396204 (not c!772771)) b!4526749))

(declare-fun m!5280477 () Bool)

(assert (=> d!1396204 m!5280477))

(declare-fun m!5280479 () Bool)

(assert (=> d!1396204 m!5280479))

(declare-fun m!5280481 () Bool)

(assert (=> b!4526748 m!5280481))

(assert (=> b!4526748 m!5280481))

(declare-fun m!5280483 () Bool)

(assert (=> b!4526748 m!5280483))

(assert (=> b!4526624 d!1396204))

(declare-fun bs!862115 () Bool)

(declare-fun d!1396206 () Bool)

(assert (= bs!862115 (and d!1396206 start!448604)))

(declare-fun lambda!173597 () Int)

(assert (=> bs!862115 (= lambda!173597 lambda!173583)))

(declare-fun bs!862116 () Bool)

(assert (= bs!862116 (and d!1396206 b!4526608)))

(assert (=> bs!862116 (not (= lambda!173597 lambda!173584))))

(declare-fun bs!862117 () Bool)

(assert (= bs!862117 (and d!1396206 d!1396204)))

(assert (=> bs!862117 (= lambda!173597 lambda!173594)))

(assert (=> d!1396206 (contains!13427 (extractMap!1228 (toList!4351 lt!1702722)) key!3287)))

(declare-fun lt!1702837 () Unit!96156)

(declare-fun choose!29645 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> d!1396206 (= lt!1702837 (choose!29645 lt!1702722 key!3287 hashF!1107))))

(assert (=> d!1396206 (forall!10291 (toList!4351 lt!1702722) lambda!173597)))

(assert (=> d!1396206 (= (lemmaListContainsThenExtractedMapContains!142 lt!1702722 key!3287 hashF!1107) lt!1702837)))

(declare-fun bs!862118 () Bool)

(assert (= bs!862118 d!1396206))

(assert (=> bs!862118 m!5280315))

(assert (=> bs!862118 m!5280315))

(declare-fun m!5280485 () Bool)

(assert (=> bs!862118 m!5280485))

(declare-fun m!5280487 () Bool)

(assert (=> bs!862118 m!5280487))

(declare-fun m!5280489 () Bool)

(assert (=> bs!862118 m!5280489))

(assert (=> b!4526624 d!1396206))

(declare-fun bs!862119 () Bool)

(declare-fun d!1396208 () Bool)

(assert (= bs!862119 (and d!1396208 start!448604)))

(declare-fun lambda!173598 () Int)

(assert (=> bs!862119 (= lambda!173598 lambda!173583)))

(declare-fun bs!862120 () Bool)

(assert (= bs!862120 (and d!1396208 b!4526608)))

(assert (=> bs!862120 (not (= lambda!173598 lambda!173584))))

(declare-fun bs!862121 () Bool)

(assert (= bs!862121 (and d!1396208 d!1396204)))

(assert (=> bs!862121 (= lambda!173598 lambda!173594)))

(declare-fun bs!862122 () Bool)

(assert (= bs!862122 (and d!1396208 d!1396206)))

(assert (=> bs!862122 (= lambda!173598 lambda!173597)))

(declare-fun lt!1702838 () ListMap!3613)

(assert (=> d!1396208 (invariantList!1027 (toList!4352 lt!1702838))))

(declare-fun e!2820477 () ListMap!3613)

(assert (=> d!1396208 (= lt!1702838 e!2820477)))

(declare-fun c!772772 () Bool)

(assert (=> d!1396208 (= c!772772 ((_ is Cons!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1396208 (forall!10291 (toList!4351 lt!1702722) lambda!173598)))

(assert (=> d!1396208 (= (extractMap!1228 (toList!4351 lt!1702722)) lt!1702838)))

(declare-fun b!4526750 () Bool)

(assert (=> b!4526750 (= e!2820477 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))))))

(declare-fun b!4526751 () Bool)

(assert (=> b!4526751 (= e!2820477 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396208 c!772772) b!4526750))

(assert (= (and d!1396208 (not c!772772)) b!4526751))

(declare-fun m!5280491 () Bool)

(assert (=> d!1396208 m!5280491))

(declare-fun m!5280493 () Bool)

(assert (=> d!1396208 m!5280493))

(declare-fun m!5280495 () Bool)

(assert (=> b!4526750 m!5280495))

(assert (=> b!4526750 m!5280495))

(declare-fun m!5280497 () Bool)

(assert (=> b!4526750 m!5280497))

(assert (=> b!4526624 d!1396208))

(declare-fun b!4526752 () Bool)

(declare-fun e!2820478 () List!50807)

(assert (=> b!4526752 (= e!2820478 (keys!17616 lt!1702732))))

(declare-fun d!1396210 () Bool)

(declare-fun e!2820483 () Bool)

(assert (=> d!1396210 e!2820483))

(declare-fun res!1884776 () Bool)

(assert (=> d!1396210 (=> res!1884776 e!2820483)))

(declare-fun e!2820482 () Bool)

(assert (=> d!1396210 (= res!1884776 e!2820482)))

(declare-fun res!1884778 () Bool)

(assert (=> d!1396210 (=> (not res!1884778) (not e!2820482))))

(declare-fun lt!1702842 () Bool)

(assert (=> d!1396210 (= res!1884778 (not lt!1702842))))

(declare-fun lt!1702844 () Bool)

(assert (=> d!1396210 (= lt!1702842 lt!1702844)))

(declare-fun lt!1702845 () Unit!96156)

(declare-fun e!2820481 () Unit!96156)

(assert (=> d!1396210 (= lt!1702845 e!2820481)))

(declare-fun c!772774 () Bool)

(assert (=> d!1396210 (= c!772774 lt!1702844)))

(assert (=> d!1396210 (= lt!1702844 (containsKey!1814 (toList!4352 lt!1702732) key!3287))))

(assert (=> d!1396210 (= (contains!13427 lt!1702732 key!3287) lt!1702842)))

(declare-fun b!4526753 () Bool)

(declare-fun e!2820480 () Unit!96156)

(declare-fun Unit!96181 () Unit!96156)

(assert (=> b!4526753 (= e!2820480 Unit!96181)))

(declare-fun bm!315473 () Bool)

(declare-fun call!315478 () Bool)

(assert (=> bm!315473 (= call!315478 (contains!13431 e!2820478 key!3287))))

(declare-fun c!772775 () Bool)

(assert (=> bm!315473 (= c!772775 c!772774)))

(declare-fun b!4526754 () Bool)

(assert (=> b!4526754 (= e!2820478 (getKeysList!475 (toList!4352 lt!1702732)))))

(declare-fun b!4526755 () Bool)

(declare-fun e!2820479 () Bool)

(assert (=> b!4526755 (= e!2820483 e!2820479)))

(declare-fun res!1884777 () Bool)

(assert (=> b!4526755 (=> (not res!1884777) (not e!2820479))))

(assert (=> b!4526755 (= res!1884777 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287)))))

(declare-fun b!4526756 () Bool)

(assert (=> b!4526756 (= e!2820479 (contains!13431 (keys!17616 lt!1702732) key!3287))))

(declare-fun b!4526757 () Bool)

(assert (=> b!4526757 (= e!2820482 (not (contains!13431 (keys!17616 lt!1702732) key!3287)))))

(declare-fun b!4526758 () Bool)

(assert (=> b!4526758 false))

(declare-fun lt!1702843 () Unit!96156)

(declare-fun lt!1702841 () Unit!96156)

(assert (=> b!4526758 (= lt!1702843 lt!1702841)))

(assert (=> b!4526758 (containsKey!1814 (toList!4352 lt!1702732) key!3287)))

(assert (=> b!4526758 (= lt!1702841 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1702732) key!3287))))

(declare-fun Unit!96182 () Unit!96156)

(assert (=> b!4526758 (= e!2820480 Unit!96182)))

(declare-fun b!4526759 () Bool)

(assert (=> b!4526759 (= e!2820481 e!2820480)))

(declare-fun c!772773 () Bool)

(assert (=> b!4526759 (= c!772773 call!315478)))

(declare-fun b!4526760 () Bool)

(declare-fun lt!1702839 () Unit!96156)

(assert (=> b!4526760 (= e!2820481 lt!1702839)))

(declare-fun lt!1702840 () Unit!96156)

(assert (=> b!4526760 (= lt!1702840 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702732) key!3287))))

(assert (=> b!4526760 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))))

(declare-fun lt!1702846 () Unit!96156)

(assert (=> b!4526760 (= lt!1702846 lt!1702840)))

(assert (=> b!4526760 (= lt!1702839 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1702732) key!3287))))

(assert (=> b!4526760 call!315478))

(assert (= (and d!1396210 c!772774) b!4526760))

(assert (= (and d!1396210 (not c!772774)) b!4526759))

(assert (= (and b!4526759 c!772773) b!4526758))

(assert (= (and b!4526759 (not c!772773)) b!4526753))

(assert (= (or b!4526760 b!4526759) bm!315473))

(assert (= (and bm!315473 c!772775) b!4526754))

(assert (= (and bm!315473 (not c!772775)) b!4526752))

(assert (= (and d!1396210 res!1884778) b!4526757))

(assert (= (and d!1396210 (not res!1884776)) b!4526755))

(assert (= (and b!4526755 res!1884777) b!4526756))

(declare-fun m!5280499 () Bool)

(assert (=> b!4526758 m!5280499))

(declare-fun m!5280501 () Bool)

(assert (=> b!4526758 m!5280501))

(assert (=> d!1396210 m!5280499))

(declare-fun m!5280503 () Bool)

(assert (=> b!4526757 m!5280503))

(assert (=> b!4526757 m!5280503))

(declare-fun m!5280505 () Bool)

(assert (=> b!4526757 m!5280505))

(declare-fun m!5280507 () Bool)

(assert (=> b!4526754 m!5280507))

(declare-fun m!5280509 () Bool)

(assert (=> b!4526755 m!5280509))

(assert (=> b!4526755 m!5280509))

(declare-fun m!5280511 () Bool)

(assert (=> b!4526755 m!5280511))

(declare-fun m!5280513 () Bool)

(assert (=> b!4526760 m!5280513))

(assert (=> b!4526760 m!5280509))

(assert (=> b!4526760 m!5280509))

(assert (=> b!4526760 m!5280511))

(declare-fun m!5280515 () Bool)

(assert (=> b!4526760 m!5280515))

(assert (=> b!4526756 m!5280503))

(assert (=> b!4526756 m!5280503))

(assert (=> b!4526756 m!5280505))

(assert (=> b!4526752 m!5280503))

(declare-fun m!5280517 () Bool)

(assert (=> bm!315473 m!5280517))

(assert (=> b!4526624 d!1396210))

(declare-fun d!1396212 () Bool)

(declare-fun res!1884787 () Bool)

(declare-fun e!2820493 () Bool)

(assert (=> d!1396212 (=> res!1884787 e!2820493)))

(declare-fun e!2820494 () Bool)

(assert (=> d!1396212 (= res!1884787 e!2820494)))

(declare-fun res!1884786 () Bool)

(assert (=> d!1396212 (=> (not res!1884786) (not e!2820494))))

(assert (=> d!1396212 (= res!1884786 ((_ is Cons!50681) (t!357767 (toList!4351 lm!1477))))))

(assert (=> d!1396212 (= (containsKeyBiggerList!152 (t!357767 (toList!4351 lm!1477)) key!3287) e!2820493)))

(declare-fun b!4526771 () Bool)

(assert (=> b!4526771 (= e!2820494 (containsKey!1812 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(declare-fun b!4526772 () Bool)

(declare-fun e!2820492 () Bool)

(assert (=> b!4526772 (= e!2820493 e!2820492)))

(declare-fun res!1884785 () Bool)

(assert (=> b!4526772 (=> (not res!1884785) (not e!2820492))))

(assert (=> b!4526772 (= res!1884785 ((_ is Cons!50681) (t!357767 (toList!4351 lm!1477))))))

(declare-fun b!4526773 () Bool)

(assert (=> b!4526773 (= e!2820492 (containsKeyBiggerList!152 (t!357767 (t!357767 (toList!4351 lm!1477))) key!3287))))

(assert (= (and d!1396212 res!1884786) b!4526771))

(assert (= (and d!1396212 (not res!1884787)) b!4526772))

(assert (= (and b!4526772 res!1884785) b!4526773))

(declare-fun m!5280519 () Bool)

(assert (=> b!4526771 m!5280519))

(declare-fun m!5280521 () Bool)

(assert (=> b!4526773 m!5280521))

(assert (=> b!4526617 d!1396212))

(declare-fun d!1396214 () Bool)

(declare-fun res!1884790 () Bool)

(declare-fun e!2820496 () Bool)

(assert (=> d!1396214 (=> res!1884790 e!2820496)))

(declare-fun e!2820497 () Bool)

(assert (=> d!1396214 (= res!1884790 e!2820497)))

(declare-fun res!1884789 () Bool)

(assert (=> d!1396214 (=> (not res!1884789) (not e!2820497))))

(assert (=> d!1396214 (= res!1884789 ((_ is Cons!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1396214 (= (containsKeyBiggerList!152 (toList!4351 lt!1702722) key!3287) e!2820496)))

(declare-fun b!4526774 () Bool)

(assert (=> b!4526774 (= e!2820497 (containsKey!1812 (_2!28856 (h!56544 (toList!4351 lt!1702722))) key!3287))))

(declare-fun b!4526775 () Bool)

(declare-fun e!2820495 () Bool)

(assert (=> b!4526775 (= e!2820496 e!2820495)))

(declare-fun res!1884788 () Bool)

(assert (=> b!4526775 (=> (not res!1884788) (not e!2820495))))

(assert (=> b!4526775 (= res!1884788 ((_ is Cons!50681) (toList!4351 lt!1702722)))))

(declare-fun b!4526776 () Bool)

(assert (=> b!4526776 (= e!2820495 (containsKeyBiggerList!152 (t!357767 (toList!4351 lt!1702722)) key!3287))))

(assert (= (and d!1396214 res!1884789) b!4526774))

(assert (= (and d!1396214 (not res!1884790)) b!4526775))

(assert (= (and b!4526775 res!1884788) b!4526776))

(declare-fun m!5280523 () Bool)

(assert (=> b!4526774 m!5280523))

(declare-fun m!5280525 () Bool)

(assert (=> b!4526776 m!5280525))

(assert (=> b!4526617 d!1396214))

(declare-fun bs!862123 () Bool)

(declare-fun d!1396216 () Bool)

(assert (= bs!862123 (and d!1396216 b!4526608)))

(declare-fun lambda!173619 () Int)

(assert (=> bs!862123 (not (= lambda!173619 lambda!173584))))

(declare-fun bs!862124 () Bool)

(assert (= bs!862124 (and d!1396216 d!1396204)))

(assert (=> bs!862124 (= lambda!173619 lambda!173594)))

(declare-fun bs!862125 () Bool)

(assert (= bs!862125 (and d!1396216 d!1396206)))

(assert (=> bs!862125 (= lambda!173619 lambda!173597)))

(declare-fun bs!862126 () Bool)

(assert (= bs!862126 (and d!1396216 start!448604)))

(assert (=> bs!862126 (= lambda!173619 lambda!173583)))

(declare-fun bs!862127 () Bool)

(assert (= bs!862127 (and d!1396216 d!1396208)))

(assert (=> bs!862127 (= lambda!173619 lambda!173598)))

(assert (=> d!1396216 (containsKeyBiggerList!152 (toList!4351 lt!1702722) key!3287)))

(declare-fun lt!1702887 () Unit!96156)

(declare-fun choose!29647 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> d!1396216 (= lt!1702887 (choose!29647 lt!1702722 key!3287 hashF!1107))))

(assert (=> d!1396216 (forall!10291 (toList!4351 lt!1702722) lambda!173619)))

(assert (=> d!1396216 (= (lemmaInLongMapThenContainsKeyBiggerList!88 lt!1702722 key!3287 hashF!1107) lt!1702887)))

(declare-fun bs!862128 () Bool)

(assert (= bs!862128 d!1396216))

(assert (=> bs!862128 m!5280305))

(declare-fun m!5280527 () Bool)

(assert (=> bs!862128 m!5280527))

(declare-fun m!5280529 () Bool)

(assert (=> bs!862128 m!5280529))

(assert (=> b!4526617 d!1396216))

(declare-fun d!1396218 () Bool)

(declare-fun e!2820507 () Bool)

(assert (=> d!1396218 e!2820507))

(declare-fun res!1884799 () Bool)

(assert (=> d!1396218 (=> res!1884799 e!2820507)))

(declare-fun lt!1702901 () Bool)

(assert (=> d!1396218 (= res!1884799 (not lt!1702901))))

(declare-fun lt!1702903 () Bool)

(assert (=> d!1396218 (= lt!1702901 lt!1702903)))

(declare-fun lt!1702902 () Unit!96156)

(declare-fun e!2820506 () Unit!96156)

(assert (=> d!1396218 (= lt!1702902 e!2820506)))

(declare-fun c!772780 () Bool)

(assert (=> d!1396218 (= c!772780 lt!1702903)))

(declare-fun containsKey!1815 (List!50805 (_ BitVec 64)) Bool)

(assert (=> d!1396218 (= lt!1702903 (containsKey!1815 (toList!4351 lt!1702722) hash!344))))

(assert (=> d!1396218 (= (contains!13429 lt!1702722 hash!344) lt!1702901)))

(declare-fun b!4526789 () Bool)

(declare-fun lt!1702900 () Unit!96156)

(assert (=> b!4526789 (= e!2820506 lt!1702900)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (List!50805 (_ BitVec 64)) Unit!96156)

(assert (=> b!4526789 (= lt!1702900 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702722) hash!344))))

(declare-fun isDefined!8427 (Option!11142) Bool)

(assert (=> b!4526789 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344))))

(declare-fun b!4526790 () Bool)

(declare-fun Unit!96194 () Unit!96156)

(assert (=> b!4526790 (= e!2820506 Unit!96194)))

(declare-fun b!4526791 () Bool)

(assert (=> b!4526791 (= e!2820507 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344)))))

(assert (= (and d!1396218 c!772780) b!4526789))

(assert (= (and d!1396218 (not c!772780)) b!4526790))

(assert (= (and d!1396218 (not res!1884799)) b!4526791))

(declare-fun m!5280531 () Bool)

(assert (=> d!1396218 m!5280531))

(declare-fun m!5280533 () Bool)

(assert (=> b!4526789 m!5280533))

(declare-fun m!5280535 () Bool)

(assert (=> b!4526789 m!5280535))

(assert (=> b!4526789 m!5280535))

(declare-fun m!5280537 () Bool)

(assert (=> b!4526789 m!5280537))

(assert (=> b!4526791 m!5280535))

(assert (=> b!4526791 m!5280535))

(assert (=> b!4526791 m!5280537))

(assert (=> b!4526615 d!1396218))

(declare-fun d!1396220 () Bool)

(declare-fun tail!7757 (List!50805) List!50805)

(assert (=> d!1396220 (= (tail!7756 lm!1477) (ListLongMap!2984 (tail!7757 (toList!4351 lm!1477))))))

(declare-fun bs!862129 () Bool)

(assert (= bs!862129 d!1396220))

(declare-fun m!5280539 () Bool)

(assert (=> bs!862129 m!5280539))

(assert (=> b!4526615 d!1396220))

(declare-fun d!1396222 () Bool)

(declare-fun e!2820508 () Bool)

(assert (=> d!1396222 e!2820508))

(declare-fun res!1884801 () Bool)

(assert (=> d!1396222 (=> (not res!1884801) (not e!2820508))))

(declare-fun lt!1702906 () ListLongMap!2983)

(assert (=> d!1396222 (= res!1884801 (contains!13429 lt!1702906 (_1!28856 lt!1702727)))))

(declare-fun lt!1702907 () List!50805)

(assert (=> d!1396222 (= lt!1702906 (ListLongMap!2984 lt!1702907))))

(declare-fun lt!1702904 () Unit!96156)

(declare-fun lt!1702905 () Unit!96156)

(assert (=> d!1396222 (= lt!1702904 lt!1702905)))

(assert (=> d!1396222 (= (getValueByKey!1112 lt!1702907 (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727)))))

(assert (=> d!1396222 (= lt!1702905 (lemmaContainsTupThenGetReturnValue!694 lt!1702907 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(assert (=> d!1396222 (= lt!1702907 (insertStrictlySorted!418 (toList!4351 lt!1702722) (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(assert (=> d!1396222 (= (+!1560 lt!1702722 lt!1702727) lt!1702906)))

(declare-fun b!4526792 () Bool)

(declare-fun res!1884800 () Bool)

(assert (=> b!4526792 (=> (not res!1884800) (not e!2820508))))

(assert (=> b!4526792 (= res!1884800 (= (getValueByKey!1112 (toList!4351 lt!1702906) (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727))))))

(declare-fun b!4526793 () Bool)

(assert (=> b!4526793 (= e!2820508 (contains!13428 (toList!4351 lt!1702906) lt!1702727))))

(assert (= (and d!1396222 res!1884801) b!4526792))

(assert (= (and b!4526792 res!1884800) b!4526793))

(declare-fun m!5280541 () Bool)

(assert (=> d!1396222 m!5280541))

(declare-fun m!5280543 () Bool)

(assert (=> d!1396222 m!5280543))

(declare-fun m!5280545 () Bool)

(assert (=> d!1396222 m!5280545))

(declare-fun m!5280547 () Bool)

(assert (=> d!1396222 m!5280547))

(declare-fun m!5280549 () Bool)

(assert (=> b!4526792 m!5280549))

(declare-fun m!5280551 () Bool)

(assert (=> b!4526793 m!5280551))

(assert (=> b!4526616 d!1396222))

(declare-fun d!1396224 () Bool)

(declare-fun e!2820514 () Bool)

(assert (=> d!1396224 e!2820514))

(declare-fun res!1884807 () Bool)

(assert (=> d!1396224 (=> (not res!1884807) (not e!2820514))))

(declare-fun lt!1702931 () ListMap!3613)

(assert (=> d!1396224 (= res!1884807 (not (contains!13427 lt!1702931 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!150 (List!50804 K!12070) List!50804)

(assert (=> d!1396224 (= lt!1702931 (ListMap!3614 (removePresrvNoDuplicatedKeys!150 (toList!4352 lt!1702732) key!3287)))))

(assert (=> d!1396224 (= (-!398 lt!1702732 key!3287) lt!1702931)))

(declare-fun b!4526803 () Bool)

(declare-fun content!8386 (List!50807) (InoxSet K!12070))

(assert (=> b!4526803 (= e!2820514 (= ((_ map and) (content!8386 (keys!17616 lt!1702732)) ((_ map not) (store ((as const (Array K!12070 Bool)) false) key!3287 true))) (content!8386 (keys!17616 lt!1702931))))))

(assert (= (and d!1396224 res!1884807) b!4526803))

(declare-fun m!5280567 () Bool)

(assert (=> d!1396224 m!5280567))

(declare-fun m!5280571 () Bool)

(assert (=> d!1396224 m!5280571))

(declare-fun m!5280573 () Bool)

(assert (=> b!4526803 m!5280573))

(assert (=> b!4526803 m!5280503))

(assert (=> b!4526803 m!5280503))

(declare-fun m!5280579 () Bool)

(assert (=> b!4526803 m!5280579))

(declare-fun m!5280581 () Bool)

(assert (=> b!4526803 m!5280581))

(assert (=> b!4526803 m!5280573))

(declare-fun m!5280585 () Bool)

(assert (=> b!4526803 m!5280585))

(assert (=> b!4526616 d!1396224))

(declare-fun d!1396226 () Bool)

(declare-fun content!8387 (List!50804) (InoxSet tuple2!51122))

(assert (=> d!1396226 (= (eq!629 lt!1702713 lt!1702724) (= (content!8387 (toList!4352 lt!1702713)) (content!8387 (toList!4352 lt!1702724))))))

(declare-fun bs!862140 () Bool)

(assert (= bs!862140 d!1396226))

(declare-fun m!5280597 () Bool)

(assert (=> bs!862140 m!5280597))

(declare-fun m!5280599 () Bool)

(assert (=> bs!862140 m!5280599))

(assert (=> b!4526616 d!1396226))

(declare-fun d!1396230 () Bool)

(declare-fun e!2820516 () Bool)

(assert (=> d!1396230 e!2820516))

(declare-fun res!1884809 () Bool)

(assert (=> d!1396230 (=> (not res!1884809) (not e!2820516))))

(declare-fun lt!1702935 () ListLongMap!2983)

(assert (=> d!1396230 (= res!1884809 (contains!13429 lt!1702935 (_1!28856 lt!1702726)))))

(declare-fun lt!1702936 () List!50805)

(assert (=> d!1396230 (= lt!1702935 (ListLongMap!2984 lt!1702936))))

(declare-fun lt!1702933 () Unit!96156)

(declare-fun lt!1702934 () Unit!96156)

(assert (=> d!1396230 (= lt!1702933 lt!1702934)))

(assert (=> d!1396230 (= (getValueByKey!1112 lt!1702936 (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726)))))

(assert (=> d!1396230 (= lt!1702934 (lemmaContainsTupThenGetReturnValue!694 lt!1702936 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(assert (=> d!1396230 (= lt!1702936 (insertStrictlySorted!418 (toList!4351 lt!1702722) (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(assert (=> d!1396230 (= (+!1560 lt!1702722 lt!1702726) lt!1702935)))

(declare-fun b!4526806 () Bool)

(declare-fun res!1884808 () Bool)

(assert (=> b!4526806 (=> (not res!1884808) (not e!2820516))))

(assert (=> b!4526806 (= res!1884808 (= (getValueByKey!1112 (toList!4351 lt!1702935) (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726))))))

(declare-fun b!4526807 () Bool)

(assert (=> b!4526807 (= e!2820516 (contains!13428 (toList!4351 lt!1702935) lt!1702726))))

(assert (= (and d!1396230 res!1884809) b!4526806))

(assert (= (and b!4526806 res!1884808) b!4526807))

(declare-fun m!5280609 () Bool)

(assert (=> d!1396230 m!5280609))

(declare-fun m!5280611 () Bool)

(assert (=> d!1396230 m!5280611))

(declare-fun m!5280613 () Bool)

(assert (=> d!1396230 m!5280613))

(declare-fun m!5280615 () Bool)

(assert (=> d!1396230 m!5280615))

(declare-fun m!5280617 () Bool)

(assert (=> b!4526806 m!5280617))

(declare-fun m!5280619 () Bool)

(assert (=> b!4526807 m!5280619))

(assert (=> b!4526616 d!1396230))

(declare-fun d!1396234 () Bool)

(declare-fun head!9436 (List!50805) tuple2!51124)

(assert (=> d!1396234 (= (head!9434 lm!1477) (head!9436 (toList!4351 lm!1477)))))

(declare-fun bs!862141 () Bool)

(assert (= bs!862141 d!1396234))

(declare-fun m!5280627 () Bool)

(assert (=> bs!862141 m!5280627))

(assert (=> b!4526616 d!1396234))

(declare-fun bs!862160 () Bool)

(declare-fun d!1396236 () Bool)

(assert (= bs!862160 (and d!1396236 b!4526608)))

(declare-fun lambda!173642 () Int)

(assert (=> bs!862160 (not (= lambda!173642 lambda!173584))))

(declare-fun bs!862162 () Bool)

(assert (= bs!862162 (and d!1396236 d!1396204)))

(assert (=> bs!862162 (= lambda!173642 lambda!173594)))

(declare-fun bs!862163 () Bool)

(assert (= bs!862163 (and d!1396236 d!1396206)))

(assert (=> bs!862163 (= lambda!173642 lambda!173597)))

(declare-fun bs!862164 () Bool)

(assert (= bs!862164 (and d!1396236 start!448604)))

(assert (=> bs!862164 (= lambda!173642 lambda!173583)))

(declare-fun bs!862165 () Bool)

(assert (= bs!862165 (and d!1396236 d!1396216)))

(assert (=> bs!862165 (= lambda!173642 lambda!173619)))

(declare-fun bs!862167 () Bool)

(assert (= bs!862167 (and d!1396236 d!1396208)))

(assert (=> bs!862167 (= lambda!173642 lambda!173598)))

(assert (=> d!1396236 (eq!629 (extractMap!1228 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))) (-!398 (extractMap!1228 (toList!4351 lt!1702722)) key!3287))))

(declare-fun lt!1702960 () Unit!96156)

(declare-fun choose!29649 (ListLongMap!2983 (_ BitVec 64) List!50804 K!12070 Hashable!5567) Unit!96156)

(assert (=> d!1396236 (= lt!1702960 (choose!29649 lt!1702722 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1396236 (forall!10291 (toList!4351 lt!1702722) lambda!173642)))

(assert (=> d!1396236 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!157 lt!1702722 hash!344 newBucket!178 key!3287 hashF!1107) lt!1702960)))

(declare-fun bs!862169 () Bool)

(assert (= bs!862169 d!1396236))

(declare-fun m!5280687 () Bool)

(assert (=> bs!862169 m!5280687))

(declare-fun m!5280689 () Bool)

(assert (=> bs!862169 m!5280689))

(assert (=> bs!862169 m!5280315))

(declare-fun m!5280691 () Bool)

(assert (=> bs!862169 m!5280691))

(assert (=> bs!862169 m!5280315))

(declare-fun m!5280693 () Bool)

(assert (=> bs!862169 m!5280693))

(assert (=> bs!862169 m!5280691))

(declare-fun m!5280695 () Bool)

(assert (=> bs!862169 m!5280695))

(declare-fun m!5280697 () Bool)

(assert (=> bs!862169 m!5280697))

(assert (=> bs!862169 m!5280693))

(assert (=> b!4526616 d!1396236))

(declare-fun d!1396252 () Bool)

(assert (=> d!1396252 (= (eq!629 lt!1702715 lt!1702718) (= (content!8387 (toList!4352 lt!1702715)) (content!8387 (toList!4352 lt!1702718))))))

(declare-fun bs!862174 () Bool)

(assert (= bs!862174 d!1396252))

(declare-fun m!5280699 () Bool)

(assert (=> bs!862174 m!5280699))

(declare-fun m!5280701 () Bool)

(assert (=> bs!862174 m!5280701))

(assert (=> b!4526616 d!1396252))

(declare-fun bs!862176 () Bool)

(declare-fun d!1396254 () Bool)

(assert (= bs!862176 (and d!1396254 b!4526608)))

(declare-fun lambda!173645 () Int)

(assert (=> bs!862176 (not (= lambda!173645 lambda!173584))))

(declare-fun bs!862177 () Bool)

(assert (= bs!862177 (and d!1396254 d!1396204)))

(assert (=> bs!862177 (= lambda!173645 lambda!173594)))

(declare-fun bs!862179 () Bool)

(assert (= bs!862179 (and d!1396254 start!448604)))

(assert (=> bs!862179 (= lambda!173645 lambda!173583)))

(declare-fun bs!862181 () Bool)

(assert (= bs!862181 (and d!1396254 d!1396216)))

(assert (=> bs!862181 (= lambda!173645 lambda!173619)))

(declare-fun bs!862183 () Bool)

(assert (= bs!862183 (and d!1396254 d!1396208)))

(assert (=> bs!862183 (= lambda!173645 lambda!173598)))

(declare-fun bs!862185 () Bool)

(assert (= bs!862185 (and d!1396254 d!1396236)))

(assert (=> bs!862185 (= lambda!173645 lambda!173642)))

(declare-fun bs!862186 () Bool)

(assert (= bs!862186 (and d!1396254 d!1396206)))

(assert (=> bs!862186 (= lambda!173645 lambda!173597)))

(declare-fun lt!1702982 () ListMap!3613)

(assert (=> d!1396254 (invariantList!1027 (toList!4352 lt!1702982))))

(declare-fun e!2820534 () ListMap!3613)

(assert (=> d!1396254 (= lt!1702982 e!2820534)))

(declare-fun c!772792 () Bool)

(assert (=> d!1396254 (= c!772792 ((_ is Cons!50681) (toList!4351 (+!1560 lt!1702722 lt!1702727))))))

(assert (=> d!1396254 (forall!10291 (toList!4351 (+!1560 lt!1702722 lt!1702727)) lambda!173645)))

(assert (=> d!1396254 (= (extractMap!1228 (toList!4351 (+!1560 lt!1702722 lt!1702727))) lt!1702982)))

(declare-fun b!4526835 () Bool)

(assert (=> b!4526835 (= e!2820534 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))

(declare-fun b!4526836 () Bool)

(assert (=> b!4526836 (= e!2820534 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396254 c!772792) b!4526835))

(assert (= (and d!1396254 (not c!772792)) b!4526836))

(declare-fun m!5280703 () Bool)

(assert (=> d!1396254 m!5280703))

(declare-fun m!5280705 () Bool)

(assert (=> d!1396254 m!5280705))

(declare-fun m!5280707 () Bool)

(assert (=> b!4526835 m!5280707))

(assert (=> b!4526835 m!5280707))

(declare-fun m!5280709 () Bool)

(assert (=> b!4526835 m!5280709))

(assert (=> b!4526616 d!1396254))

(declare-fun bs!862187 () Bool)

(declare-fun d!1396256 () Bool)

(assert (= bs!862187 (and d!1396256 d!1396254)))

(declare-fun lambda!173647 () Int)

(assert (=> bs!862187 (= lambda!173647 lambda!173645)))

(declare-fun bs!862188 () Bool)

(assert (= bs!862188 (and d!1396256 b!4526608)))

(assert (=> bs!862188 (not (= lambda!173647 lambda!173584))))

(declare-fun bs!862189 () Bool)

(assert (= bs!862189 (and d!1396256 d!1396204)))

(assert (=> bs!862189 (= lambda!173647 lambda!173594)))

(declare-fun bs!862190 () Bool)

(assert (= bs!862190 (and d!1396256 start!448604)))

(assert (=> bs!862190 (= lambda!173647 lambda!173583)))

(declare-fun bs!862191 () Bool)

(assert (= bs!862191 (and d!1396256 d!1396216)))

(assert (=> bs!862191 (= lambda!173647 lambda!173619)))

(declare-fun bs!862192 () Bool)

(assert (= bs!862192 (and d!1396256 d!1396208)))

(assert (=> bs!862192 (= lambda!173647 lambda!173598)))

(declare-fun bs!862193 () Bool)

(assert (= bs!862193 (and d!1396256 d!1396236)))

(assert (=> bs!862193 (= lambda!173647 lambda!173642)))

(declare-fun bs!862194 () Bool)

(assert (= bs!862194 (and d!1396256 d!1396206)))

(assert (=> bs!862194 (= lambda!173647 lambda!173597)))

(declare-fun lt!1702983 () ListMap!3613)

(assert (=> d!1396256 (invariantList!1027 (toList!4352 lt!1702983))))

(declare-fun e!2820535 () ListMap!3613)

(assert (=> d!1396256 (= lt!1702983 e!2820535)))

(declare-fun c!772793 () Bool)

(assert (=> d!1396256 (= c!772793 ((_ is Cons!50681) (toList!4351 lt!1702729)))))

(assert (=> d!1396256 (forall!10291 (toList!4351 lt!1702729) lambda!173647)))

(assert (=> d!1396256 (= (extractMap!1228 (toList!4351 lt!1702729)) lt!1702983)))

(declare-fun b!4526837 () Bool)

(assert (=> b!4526837 (= e!2820535 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702729))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))))))

(declare-fun b!4526838 () Bool)

(assert (=> b!4526838 (= e!2820535 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396256 c!772793) b!4526837))

(assert (= (and d!1396256 (not c!772793)) b!4526838))

(declare-fun m!5280711 () Bool)

(assert (=> d!1396256 m!5280711))

(declare-fun m!5280713 () Bool)

(assert (=> d!1396256 m!5280713))

(declare-fun m!5280715 () Bool)

(assert (=> b!4526837 m!5280715))

(assert (=> b!4526837 m!5280715))

(declare-fun m!5280717 () Bool)

(assert (=> b!4526837 m!5280717))

(assert (=> b!4526616 d!1396256))

(declare-fun d!1396258 () Bool)

(declare-fun res!1884823 () Bool)

(declare-fun e!2820540 () Bool)

(assert (=> d!1396258 (=> res!1884823 e!2820540)))

(assert (=> d!1396258 (= res!1884823 (and ((_ is Cons!50680) lt!1702716) (= (_1!28855 (h!56543 lt!1702716)) key!3287)))))

(assert (=> d!1396258 (= (containsKey!1812 lt!1702716 key!3287) e!2820540)))

(declare-fun b!4526843 () Bool)

(declare-fun e!2820541 () Bool)

(assert (=> b!4526843 (= e!2820540 e!2820541)))

(declare-fun res!1884824 () Bool)

(assert (=> b!4526843 (=> (not res!1884824) (not e!2820541))))

(assert (=> b!4526843 (= res!1884824 ((_ is Cons!50680) lt!1702716))))

(declare-fun b!4526844 () Bool)

(assert (=> b!4526844 (= e!2820541 (containsKey!1812 (t!357766 lt!1702716) key!3287))))

(assert (= (and d!1396258 (not res!1884823)) b!4526843))

(assert (= (and b!4526843 res!1884824) b!4526844))

(declare-fun m!5280725 () Bool)

(assert (=> b!4526844 m!5280725))

(assert (=> b!4526619 d!1396258))

(declare-fun bs!862201 () Bool)

(declare-fun d!1396260 () Bool)

(assert (= bs!862201 (and d!1396260 b!4526608)))

(declare-fun lambda!173651 () Int)

(assert (=> bs!862201 (= (= hash!344 (_1!28856 (h!56544 (toList!4351 lm!1477)))) (= lambda!173651 lambda!173585))))

(assert (=> d!1396260 true))

(assert (=> d!1396260 true))

(declare-fun forall!10293 (List!50804 Int) Bool)

(assert (=> d!1396260 (= (allKeysSameHash!1026 newBucket!178 hash!344 hashF!1107) (forall!10293 newBucket!178 lambda!173651))))

(declare-fun bs!862202 () Bool)

(assert (= bs!862202 d!1396260))

(declare-fun m!5280753 () Bool)

(assert (=> bs!862202 m!5280753))

(assert (=> b!4526618 d!1396260))

(declare-fun d!1396264 () Bool)

(assert (=> d!1396264 (dynLambda!21178 lambda!173583 lt!1702730)))

(declare-fun lt!1702984 () Unit!96156)

(assert (=> d!1396264 (= lt!1702984 (choose!29644 (toList!4351 lm!1477) lambda!173583 lt!1702730))))

(declare-fun e!2820542 () Bool)

(assert (=> d!1396264 e!2820542))

(declare-fun res!1884825 () Bool)

(assert (=> d!1396264 (=> (not res!1884825) (not e!2820542))))

(assert (=> d!1396264 (= res!1884825 (forall!10291 (toList!4351 lm!1477) lambda!173583))))

(assert (=> d!1396264 (= (forallContained!2544 (toList!4351 lm!1477) lambda!173583 lt!1702730) lt!1702984)))

(declare-fun b!4526847 () Bool)

(assert (=> b!4526847 (= e!2820542 (contains!13428 (toList!4351 lm!1477) lt!1702730))))

(assert (= (and d!1396264 res!1884825) b!4526847))

(declare-fun b_lambda!155937 () Bool)

(assert (=> (not b_lambda!155937) (not d!1396264)))

(declare-fun m!5280755 () Bool)

(assert (=> d!1396264 m!5280755))

(declare-fun m!5280757 () Bool)

(assert (=> d!1396264 m!5280757))

(assert (=> d!1396264 m!5280319))

(assert (=> b!4526847 m!5280327))

(assert (=> b!4526612 d!1396264))

(declare-fun d!1396266 () Bool)

(declare-fun get!16620 (Option!11142) List!50804)

(assert (=> d!1396266 (= (apply!11909 lm!1477 hash!344) (get!16620 (getValueByKey!1112 (toList!4351 lm!1477) hash!344)))))

(declare-fun bs!862203 () Bool)

(assert (= bs!862203 d!1396266))

(declare-fun m!5280759 () Bool)

(assert (=> bs!862203 m!5280759))

(assert (=> bs!862203 m!5280759))

(declare-fun m!5280761 () Bool)

(assert (=> bs!862203 m!5280761))

(assert (=> b!4526612 d!1396266))

(declare-fun d!1396268 () Bool)

(assert (=> d!1396268 (contains!13428 (toList!4351 lm!1477) (tuple2!51125 hash!344 lt!1702716))))

(declare-fun lt!1702987 () Unit!96156)

(declare-fun choose!29651 (List!50805 (_ BitVec 64) List!50804) Unit!96156)

(assert (=> d!1396268 (= lt!1702987 (choose!29651 (toList!4351 lm!1477) hash!344 lt!1702716))))

(declare-fun e!2820545 () Bool)

(assert (=> d!1396268 e!2820545))

(declare-fun res!1884828 () Bool)

(assert (=> d!1396268 (=> (not res!1884828) (not e!2820545))))

(assert (=> d!1396268 (= res!1884828 (isStrictlySorted!440 (toList!4351 lm!1477)))))

(assert (=> d!1396268 (= (lemmaGetValueByKeyImpliesContainsTuple!684 (toList!4351 lm!1477) hash!344 lt!1702716) lt!1702987)))

(declare-fun b!4526850 () Bool)

(assert (=> b!4526850 (= e!2820545 (= (getValueByKey!1112 (toList!4351 lm!1477) hash!344) (Some!11141 lt!1702716)))))

(assert (= (and d!1396268 res!1884828) b!4526850))

(declare-fun m!5280763 () Bool)

(assert (=> d!1396268 m!5280763))

(declare-fun m!5280765 () Bool)

(assert (=> d!1396268 m!5280765))

(assert (=> d!1396268 m!5280355))

(assert (=> b!4526850 m!5280759))

(assert (=> b!4526612 d!1396268))

(declare-fun d!1396270 () Bool)

(declare-fun lt!1702988 () Bool)

(assert (=> d!1396270 (= lt!1702988 (select (content!8385 (toList!4351 lm!1477)) lt!1702730))))

(declare-fun e!2820546 () Bool)

(assert (=> d!1396270 (= lt!1702988 e!2820546)))

(declare-fun res!1884829 () Bool)

(assert (=> d!1396270 (=> (not res!1884829) (not e!2820546))))

(assert (=> d!1396270 (= res!1884829 ((_ is Cons!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396270 (= (contains!13428 (toList!4351 lm!1477) lt!1702730) lt!1702988)))

(declare-fun b!4526851 () Bool)

(declare-fun e!2820547 () Bool)

(assert (=> b!4526851 (= e!2820546 e!2820547)))

(declare-fun res!1884830 () Bool)

(assert (=> b!4526851 (=> res!1884830 e!2820547)))

(assert (=> b!4526851 (= res!1884830 (= (h!56544 (toList!4351 lm!1477)) lt!1702730))))

(declare-fun b!4526852 () Bool)

(assert (=> b!4526852 (= e!2820547 (contains!13428 (t!357767 (toList!4351 lm!1477)) lt!1702730))))

(assert (= (and d!1396270 res!1884829) b!4526851))

(assert (= (and b!4526851 (not res!1884830)) b!4526852))

(declare-fun m!5280767 () Bool)

(assert (=> d!1396270 m!5280767))

(declare-fun m!5280769 () Bool)

(assert (=> d!1396270 m!5280769))

(assert (=> b!4526852 m!5280285))

(assert (=> b!4526612 d!1396270))

(declare-fun d!1396272 () Bool)

(declare-fun lt!1702996 () List!50804)

(assert (=> d!1396272 (not (containsKey!1812 lt!1702996 key!3287))))

(declare-fun e!2820554 () List!50804)

(assert (=> d!1396272 (= lt!1702996 e!2820554)))

(declare-fun c!772800 () Bool)

(assert (=> d!1396272 (= c!772800 (and ((_ is Cons!50680) lt!1702716) (= (_1!28855 (h!56543 lt!1702716)) key!3287)))))

(assert (=> d!1396272 (noDuplicateKeys!1172 lt!1702716)))

(assert (=> d!1396272 (= (removePairForKey!799 lt!1702716 key!3287) lt!1702996)))

(declare-fun b!4526868 () Bool)

(declare-fun e!2820555 () List!50804)

(assert (=> b!4526868 (= e!2820555 Nil!50680)))

(declare-fun b!4526866 () Bool)

(assert (=> b!4526866 (= e!2820554 e!2820555)))

(declare-fun c!772801 () Bool)

(assert (=> b!4526866 (= c!772801 ((_ is Cons!50680) lt!1702716))))

(declare-fun b!4526867 () Bool)

(assert (=> b!4526867 (= e!2820555 (Cons!50680 (h!56543 lt!1702716) (removePairForKey!799 (t!357766 lt!1702716) key!3287)))))

(declare-fun b!4526865 () Bool)

(assert (=> b!4526865 (= e!2820554 (t!357766 lt!1702716))))

(assert (= (and d!1396272 c!772800) b!4526865))

(assert (= (and d!1396272 (not c!772800)) b!4526866))

(assert (= (and b!4526866 c!772801) b!4526867))

(assert (= (and b!4526866 (not c!772801)) b!4526868))

(declare-fun m!5280783 () Bool)

(assert (=> d!1396272 m!5280783))

(declare-fun m!5280785 () Bool)

(assert (=> d!1396272 m!5280785))

(declare-fun m!5280787 () Bool)

(assert (=> b!4526867 m!5280787))

(assert (=> b!4526612 d!1396272))

(declare-fun bs!862224 () Bool)

(declare-fun d!1396278 () Bool)

(assert (= bs!862224 (and d!1396278 d!1396254)))

(declare-fun lambda!173656 () Int)

(assert (=> bs!862224 (= lambda!173656 lambda!173645)))

(declare-fun bs!862225 () Bool)

(assert (= bs!862225 (and d!1396278 b!4526608)))

(assert (=> bs!862225 (not (= lambda!173656 lambda!173584))))

(declare-fun bs!862226 () Bool)

(assert (= bs!862226 (and d!1396278 d!1396204)))

(assert (=> bs!862226 (= lambda!173656 lambda!173594)))

(declare-fun bs!862227 () Bool)

(assert (= bs!862227 (and d!1396278 d!1396256)))

(assert (=> bs!862227 (= lambda!173656 lambda!173647)))

(declare-fun bs!862228 () Bool)

(assert (= bs!862228 (and d!1396278 start!448604)))

(assert (=> bs!862228 (= lambda!173656 lambda!173583)))

(declare-fun bs!862229 () Bool)

(assert (= bs!862229 (and d!1396278 d!1396216)))

(assert (=> bs!862229 (= lambda!173656 lambda!173619)))

(declare-fun bs!862230 () Bool)

(assert (= bs!862230 (and d!1396278 d!1396208)))

(assert (=> bs!862230 (= lambda!173656 lambda!173598)))

(declare-fun bs!862231 () Bool)

(assert (= bs!862231 (and d!1396278 d!1396236)))

(assert (=> bs!862231 (= lambda!173656 lambda!173642)))

(declare-fun bs!862232 () Bool)

(assert (= bs!862232 (and d!1396278 d!1396206)))

(assert (=> bs!862232 (= lambda!173656 lambda!173597)))

(assert (=> d!1396278 (contains!13429 lm!1477 (hash!2845 hashF!1107 key!3287))))

(declare-fun lt!1703007 () Unit!96156)

(declare-fun choose!29654 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> d!1396278 (= lt!1703007 (choose!29654 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1396278 (forall!10291 (toList!4351 lm!1477) lambda!173656)))

(assert (=> d!1396278 (= (lemmaInGenMapThenLongMapContainsHash!246 lm!1477 key!3287 hashF!1107) lt!1703007)))

(declare-fun bs!862233 () Bool)

(assert (= bs!862233 d!1396278))

(assert (=> bs!862233 m!5280265))

(assert (=> bs!862233 m!5280265))

(declare-fun m!5280829 () Bool)

(assert (=> bs!862233 m!5280829))

(declare-fun m!5280831 () Bool)

(assert (=> bs!862233 m!5280831))

(declare-fun m!5280833 () Bool)

(assert (=> bs!862233 m!5280833))

(assert (=> b!4526612 d!1396278))

(declare-fun d!1396290 () Bool)

(declare-fun e!2820559 () Bool)

(assert (=> d!1396290 e!2820559))

(declare-fun res!1884835 () Bool)

(assert (=> d!1396290 (=> res!1884835 e!2820559)))

(declare-fun lt!1703009 () Bool)

(assert (=> d!1396290 (= res!1884835 (not lt!1703009))))

(declare-fun lt!1703011 () Bool)

(assert (=> d!1396290 (= lt!1703009 lt!1703011)))

(declare-fun lt!1703010 () Unit!96156)

(declare-fun e!2820558 () Unit!96156)

(assert (=> d!1396290 (= lt!1703010 e!2820558)))

(declare-fun c!772802 () Bool)

(assert (=> d!1396290 (= c!772802 lt!1703011)))

(assert (=> d!1396290 (= lt!1703011 (containsKey!1815 (toList!4351 lm!1477) lt!1702728))))

(assert (=> d!1396290 (= (contains!13429 lm!1477 lt!1702728) lt!1703009)))

(declare-fun b!4526873 () Bool)

(declare-fun lt!1703008 () Unit!96156)

(assert (=> b!4526873 (= e!2820558 lt!1703008)))

(assert (=> b!4526873 (= lt!1703008 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lm!1477) lt!1702728))))

(assert (=> b!4526873 (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728))))

(declare-fun b!4526874 () Bool)

(declare-fun Unit!96195 () Unit!96156)

(assert (=> b!4526874 (= e!2820558 Unit!96195)))

(declare-fun b!4526875 () Bool)

(assert (=> b!4526875 (= e!2820559 (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728)))))

(assert (= (and d!1396290 c!772802) b!4526873))

(assert (= (and d!1396290 (not c!772802)) b!4526874))

(assert (= (and d!1396290 (not res!1884835)) b!4526875))

(declare-fun m!5280835 () Bool)

(assert (=> d!1396290 m!5280835))

(declare-fun m!5280837 () Bool)

(assert (=> b!4526873 m!5280837))

(declare-fun m!5280839 () Bool)

(assert (=> b!4526873 m!5280839))

(assert (=> b!4526873 m!5280839))

(declare-fun m!5280841 () Bool)

(assert (=> b!4526873 m!5280841))

(assert (=> b!4526875 m!5280839))

(assert (=> b!4526875 m!5280839))

(assert (=> b!4526875 m!5280841))

(assert (=> b!4526612 d!1396290))

(declare-fun d!1396292 () Bool)

(assert (=> d!1396292 (= (eq!629 lt!1702736 lt!1702739) (= (content!8387 (toList!4352 lt!1702736)) (content!8387 (toList!4352 lt!1702739))))))

(declare-fun bs!862234 () Bool)

(assert (= bs!862234 d!1396292))

(declare-fun m!5280843 () Bool)

(assert (=> bs!862234 m!5280843))

(declare-fun m!5280845 () Bool)

(assert (=> bs!862234 m!5280845))

(assert (=> b!4526610 d!1396292))

(declare-fun d!1396294 () Bool)

(assert (=> d!1396294 (= (eq!629 lt!1702734 lt!1702739) (= (content!8387 (toList!4352 lt!1702734)) (content!8387 (toList!4352 lt!1702739))))))

(declare-fun bs!862235 () Bool)

(assert (= bs!862235 d!1396294))

(declare-fun m!5280847 () Bool)

(assert (=> bs!862235 m!5280847))

(assert (=> bs!862235 m!5280845))

(assert (=> b!4526610 d!1396294))

(declare-fun bs!862305 () Bool)

(declare-fun b!4526997 () Bool)

(assert (= bs!862305 (and b!4526997 b!4526608)))

(declare-fun lambda!173700 () Int)

(assert (=> bs!862305 (not (= lambda!173700 lambda!173585))))

(declare-fun bs!862306 () Bool)

(assert (= bs!862306 (and b!4526997 d!1396260)))

(assert (=> bs!862306 (not (= lambda!173700 lambda!173651))))

(assert (=> b!4526997 true))

(declare-fun bs!862307 () Bool)

(declare-fun b!4526999 () Bool)

(assert (= bs!862307 (and b!4526999 b!4526608)))

(declare-fun lambda!173701 () Int)

(assert (=> bs!862307 (not (= lambda!173701 lambda!173585))))

(declare-fun bs!862308 () Bool)

(assert (= bs!862308 (and b!4526999 d!1396260)))

(assert (=> bs!862308 (not (= lambda!173701 lambda!173651))))

(declare-fun bs!862309 () Bool)

(assert (= bs!862309 (and b!4526999 b!4526997)))

(assert (=> bs!862309 (= lambda!173701 lambda!173700)))

(assert (=> b!4526999 true))

(declare-fun lambda!173702 () Int)

(assert (=> bs!862307 (not (= lambda!173702 lambda!173585))))

(assert (=> bs!862308 (not (= lambda!173702 lambda!173651))))

(declare-fun lt!1703122 () ListMap!3613)

(assert (=> bs!862309 (= (= lt!1703122 lt!1702724) (= lambda!173702 lambda!173700))))

(assert (=> b!4526999 (= (= lt!1703122 lt!1702724) (= lambda!173702 lambda!173701))))

(assert (=> b!4526999 true))

(declare-fun bs!862310 () Bool)

(declare-fun d!1396296 () Bool)

(assert (= bs!862310 (and d!1396296 b!4526999)))

(declare-fun lt!1703123 () ListMap!3613)

(declare-fun lambda!173703 () Int)

(assert (=> bs!862310 (= (= lt!1703123 lt!1702724) (= lambda!173703 lambda!173701))))

(declare-fun bs!862311 () Bool)

(assert (= bs!862311 (and d!1396296 b!4526997)))

(assert (=> bs!862311 (= (= lt!1703123 lt!1702724) (= lambda!173703 lambda!173700))))

(assert (=> bs!862310 (= (= lt!1703123 lt!1703122) (= lambda!173703 lambda!173702))))

(declare-fun bs!862312 () Bool)

(assert (= bs!862312 (and d!1396296 d!1396260)))

(assert (=> bs!862312 (not (= lambda!173703 lambda!173651))))

(declare-fun bs!862313 () Bool)

(assert (= bs!862313 (and d!1396296 b!4526608)))

(assert (=> bs!862313 (not (= lambda!173703 lambda!173585))))

(assert (=> d!1396296 true))

(declare-fun b!4526996 () Bool)

(declare-fun e!2820653 () Bool)

(assert (=> b!4526996 (= e!2820653 (invariantList!1027 (toList!4352 lt!1703123)))))

(declare-fun e!2820651 () ListMap!3613)

(assert (=> b!4526997 (= e!2820651 lt!1702724)))

(declare-fun lt!1703110 () Unit!96156)

(declare-fun call!315500 () Unit!96156)

(assert (=> b!4526997 (= lt!1703110 call!315500)))

(declare-fun call!315499 () Bool)

(assert (=> b!4526997 call!315499))

(declare-fun lt!1703109 () Unit!96156)

(assert (=> b!4526997 (= lt!1703109 lt!1703110)))

(declare-fun call!315501 () Bool)

(assert (=> b!4526997 call!315501))

(declare-fun lt!1703119 () Unit!96156)

(declare-fun Unit!96197 () Unit!96156)

(assert (=> b!4526997 (= lt!1703119 Unit!96197)))

(declare-fun b!4526998 () Bool)

(declare-fun e!2820652 () Bool)

(assert (=> b!4526998 (= e!2820652 (forall!10293 (toList!4352 lt!1702724) lambda!173702))))

(declare-fun b!4527000 () Bool)

(declare-fun res!1884910 () Bool)

(assert (=> b!4527000 (=> (not res!1884910) (not e!2820653))))

(assert (=> b!4527000 (= res!1884910 (forall!10293 (toList!4352 lt!1702724) lambda!173703))))

(declare-fun bm!315494 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!348 (ListMap!3613) Unit!96156)

(assert (=> bm!315494 (= call!315500 (lemmaContainsAllItsOwnKeys!348 lt!1702724))))

(assert (=> d!1396296 e!2820653))

(declare-fun res!1884909 () Bool)

(assert (=> d!1396296 (=> (not res!1884909) (not e!2820653))))

(assert (=> d!1396296 (= res!1884909 (forall!10293 (_2!28856 lt!1702727) lambda!173703))))

(assert (=> d!1396296 (= lt!1703123 e!2820651)))

(declare-fun c!772821 () Bool)

(assert (=> d!1396296 (= c!772821 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396296 (noDuplicateKeys!1172 (_2!28856 lt!1702727))))

(assert (=> d!1396296 (= (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724) lt!1703123)))

(assert (=> b!4526999 (= e!2820651 lt!1703122)))

(declare-fun lt!1703125 () ListMap!3613)

(declare-fun +!1562 (ListMap!3613 tuple2!51122) ListMap!3613)

(assert (=> b!4526999 (= lt!1703125 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4526999 (= lt!1703122 (addToMapMapFromBucket!699 (t!357766 (_2!28856 lt!1702727)) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703120 () Unit!96156)

(assert (=> b!4526999 (= lt!1703120 call!315500)))

(assert (=> b!4526999 (forall!10293 (toList!4352 lt!1702724) lambda!173701)))

(declare-fun lt!1703114 () Unit!96156)

(assert (=> b!4526999 (= lt!1703114 lt!1703120)))

(assert (=> b!4526999 (forall!10293 (toList!4352 lt!1703125) lambda!173702)))

(declare-fun lt!1703112 () Unit!96156)

(declare-fun Unit!96198 () Unit!96156)

(assert (=> b!4526999 (= lt!1703112 Unit!96198)))

(assert (=> b!4526999 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173702)))

(declare-fun lt!1703117 () Unit!96156)

(declare-fun Unit!96199 () Unit!96156)

(assert (=> b!4526999 (= lt!1703117 Unit!96199)))

(declare-fun lt!1703121 () Unit!96156)

(declare-fun Unit!96200 () Unit!96156)

(assert (=> b!4526999 (= lt!1703121 Unit!96200)))

(declare-fun lt!1703116 () Unit!96156)

(assert (=> b!4526999 (= lt!1703116 (forallContained!2545 (toList!4352 lt!1703125) lambda!173702 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4526999 (contains!13427 lt!1703125 (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703106 () Unit!96156)

(declare-fun Unit!96201 () Unit!96156)

(assert (=> b!4526999 (= lt!1703106 Unit!96201)))

(assert (=> b!4526999 (contains!13427 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703107 () Unit!96156)

(declare-fun Unit!96202 () Unit!96156)

(assert (=> b!4526999 (= lt!1703107 Unit!96202)))

(assert (=> b!4526999 call!315499))

(declare-fun lt!1703111 () Unit!96156)

(declare-fun Unit!96203 () Unit!96156)

(assert (=> b!4526999 (= lt!1703111 Unit!96203)))

(assert (=> b!4526999 (forall!10293 (toList!4352 lt!1703125) lambda!173702)))

(declare-fun lt!1703115 () Unit!96156)

(declare-fun Unit!96204 () Unit!96156)

(assert (=> b!4526999 (= lt!1703115 Unit!96204)))

(declare-fun lt!1703108 () Unit!96156)

(declare-fun Unit!96205 () Unit!96156)

(assert (=> b!4526999 (= lt!1703108 Unit!96205)))

(declare-fun lt!1703124 () Unit!96156)

(declare-fun addForallContainsKeyThenBeforeAdding!348 (ListMap!3613 ListMap!3613 K!12070 V!12316) Unit!96156)

(assert (=> b!4526999 (= lt!1703124 (addForallContainsKeyThenBeforeAdding!348 lt!1702724 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4526999 (forall!10293 (toList!4352 lt!1702724) lambda!173702)))

(declare-fun lt!1703126 () Unit!96156)

(assert (=> b!4526999 (= lt!1703126 lt!1703124)))

(assert (=> b!4526999 call!315501))

(declare-fun lt!1703118 () Unit!96156)

(declare-fun Unit!96206 () Unit!96156)

(assert (=> b!4526999 (= lt!1703118 Unit!96206)))

(declare-fun res!1884908 () Bool)

(assert (=> b!4526999 (= res!1884908 (forall!10293 (_2!28856 lt!1702727) lambda!173702))))

(assert (=> b!4526999 (=> (not res!1884908) (not e!2820652))))

(assert (=> b!4526999 e!2820652))

(declare-fun lt!1703113 () Unit!96156)

(declare-fun Unit!96207 () Unit!96156)

(assert (=> b!4526999 (= lt!1703113 Unit!96207)))

(declare-fun bm!315495 () Bool)

(assert (=> bm!315495 (= call!315501 (forall!10293 (toList!4352 lt!1702724) (ite c!772821 lambda!173700 lambda!173702)))))

(declare-fun bm!315496 () Bool)

(assert (=> bm!315496 (= call!315499 (forall!10293 (ite c!772821 (toList!4352 lt!1702724) (_2!28856 lt!1702727)) (ite c!772821 lambda!173700 lambda!173702)))))

(assert (= (and d!1396296 c!772821) b!4526997))

(assert (= (and d!1396296 (not c!772821)) b!4526999))

(assert (= (and b!4526999 res!1884908) b!4526998))

(assert (= (or b!4526997 b!4526999) bm!315496))

(assert (= (or b!4526997 b!4526999) bm!315495))

(assert (= (or b!4526997 b!4526999) bm!315494))

(assert (= (and d!1396296 res!1884909) b!4527000))

(assert (= (and b!4527000 res!1884910) b!4526996))

(declare-fun m!5281001 () Bool)

(assert (=> bm!315494 m!5281001))

(declare-fun m!5281003 () Bool)

(assert (=> b!4526998 m!5281003))

(declare-fun m!5281005 () Bool)

(assert (=> b!4527000 m!5281005))

(declare-fun m!5281007 () Bool)

(assert (=> d!1396296 m!5281007))

(assert (=> d!1396296 m!5280291))

(declare-fun m!5281009 () Bool)

(assert (=> bm!315496 m!5281009))

(declare-fun m!5281011 () Bool)

(assert (=> b!4526999 m!5281011))

(declare-fun m!5281013 () Bool)

(assert (=> b!4526999 m!5281013))

(declare-fun m!5281015 () Bool)

(assert (=> b!4526999 m!5281015))

(assert (=> b!4526999 m!5281003))

(declare-fun m!5281017 () Bool)

(assert (=> b!4526999 m!5281017))

(declare-fun m!5281019 () Bool)

(assert (=> b!4526999 m!5281019))

(assert (=> b!4526999 m!5281015))

(declare-fun m!5281021 () Bool)

(assert (=> b!4526999 m!5281021))

(declare-fun m!5281023 () Bool)

(assert (=> b!4526999 m!5281023))

(declare-fun m!5281025 () Bool)

(assert (=> b!4526999 m!5281025))

(assert (=> b!4526999 m!5281017))

(declare-fun m!5281027 () Bool)

(assert (=> b!4526999 m!5281027))

(declare-fun m!5281029 () Bool)

(assert (=> b!4526999 m!5281029))

(declare-fun m!5281031 () Bool)

(assert (=> bm!315495 m!5281031))

(declare-fun m!5281033 () Bool)

(assert (=> b!4526996 m!5281033))

(assert (=> b!4526610 d!1396296))

(declare-fun d!1396366 () Bool)

(assert (=> d!1396366 (eq!629 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713) (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724))))

(declare-fun lt!1703129 () Unit!96156)

(declare-fun choose!29657 (ListMap!3613 ListMap!3613 List!50804) Unit!96156)

(assert (=> d!1396366 (= lt!1703129 (choose!29657 lt!1702713 lt!1702724 (_2!28856 lt!1702727)))))

(assert (=> d!1396366 (noDuplicateKeys!1172 (_2!28856 lt!1702727))))

(assert (=> d!1396366 (= (lemmaAddToMapFromBucketPreservesEquivalence!48 lt!1702713 lt!1702724 (_2!28856 lt!1702727)) lt!1703129)))

(declare-fun bs!862314 () Bool)

(assert (= bs!862314 d!1396366))

(assert (=> bs!862314 m!5280269))

(assert (=> bs!862314 m!5280341))

(declare-fun m!5281035 () Bool)

(assert (=> bs!862314 m!5281035))

(assert (=> bs!862314 m!5280291))

(assert (=> bs!862314 m!5280269))

(assert (=> bs!862314 m!5280341))

(declare-fun m!5281037 () Bool)

(assert (=> bs!862314 m!5281037))

(assert (=> b!4526610 d!1396366))

(declare-fun d!1396368 () Bool)

(declare-fun hash!2849 (Hashable!5567 K!12070) (_ BitVec 64))

(assert (=> d!1396368 (= (hash!2845 hashF!1107 key!3287) (hash!2849 hashF!1107 key!3287))))

(declare-fun bs!862315 () Bool)

(assert (= bs!862315 d!1396368))

(declare-fun m!5281039 () Bool)

(assert (=> bs!862315 m!5281039))

(assert (=> b!4526632 d!1396368))

(declare-fun bs!862316 () Bool)

(declare-fun d!1396370 () Bool)

(assert (= bs!862316 (and d!1396370 d!1396254)))

(declare-fun lambda!173706 () Int)

(assert (=> bs!862316 (not (= lambda!173706 lambda!173645))))

(declare-fun bs!862317 () Bool)

(assert (= bs!862317 (and d!1396370 b!4526608)))

(assert (=> bs!862317 (= lambda!173706 lambda!173584)))

(declare-fun bs!862318 () Bool)

(assert (= bs!862318 (and d!1396370 d!1396204)))

(assert (=> bs!862318 (not (= lambda!173706 lambda!173594))))

(declare-fun bs!862319 () Bool)

(assert (= bs!862319 (and d!1396370 d!1396256)))

(assert (=> bs!862319 (not (= lambda!173706 lambda!173647))))

(declare-fun bs!862320 () Bool)

(assert (= bs!862320 (and d!1396370 start!448604)))

(assert (=> bs!862320 (not (= lambda!173706 lambda!173583))))

(declare-fun bs!862321 () Bool)

(assert (= bs!862321 (and d!1396370 d!1396216)))

(assert (=> bs!862321 (not (= lambda!173706 lambda!173619))))

(declare-fun bs!862322 () Bool)

(assert (= bs!862322 (and d!1396370 d!1396208)))

(assert (=> bs!862322 (not (= lambda!173706 lambda!173598))))

(declare-fun bs!862323 () Bool)

(assert (= bs!862323 (and d!1396370 d!1396236)))

(assert (=> bs!862323 (not (= lambda!173706 lambda!173642))))

(declare-fun bs!862324 () Bool)

(assert (= bs!862324 (and d!1396370 d!1396206)))

(assert (=> bs!862324 (not (= lambda!173706 lambda!173597))))

(declare-fun bs!862325 () Bool)

(assert (= bs!862325 (and d!1396370 d!1396278)))

(assert (=> bs!862325 (not (= lambda!173706 lambda!173656))))

(assert (=> d!1396370 true))

(assert (=> d!1396370 (= (allKeysSameHashInMap!1279 lm!1477 hashF!1107) (forall!10291 (toList!4351 lm!1477) lambda!173706))))

(declare-fun bs!862326 () Bool)

(assert (= bs!862326 d!1396370))

(declare-fun m!5281041 () Bool)

(assert (=> bs!862326 m!5281041))

(assert (=> b!4526613 d!1396370))

(declare-fun bs!862327 () Bool)

(declare-fun d!1396372 () Bool)

(assert (= bs!862327 (and d!1396372 d!1396254)))

(declare-fun lambda!173709 () Int)

(assert (=> bs!862327 (= lambda!173709 lambda!173645)))

(declare-fun bs!862328 () Bool)

(assert (= bs!862328 (and d!1396372 b!4526608)))

(assert (=> bs!862328 (not (= lambda!173709 lambda!173584))))

(declare-fun bs!862329 () Bool)

(assert (= bs!862329 (and d!1396372 d!1396204)))

(assert (=> bs!862329 (= lambda!173709 lambda!173594)))

(declare-fun bs!862330 () Bool)

(assert (= bs!862330 (and d!1396372 d!1396256)))

(assert (=> bs!862330 (= lambda!173709 lambda!173647)))

(declare-fun bs!862331 () Bool)

(assert (= bs!862331 (and d!1396372 start!448604)))

(assert (=> bs!862331 (= lambda!173709 lambda!173583)))

(declare-fun bs!862332 () Bool)

(assert (= bs!862332 (and d!1396372 d!1396216)))

(assert (=> bs!862332 (= lambda!173709 lambda!173619)))

(declare-fun bs!862333 () Bool)

(assert (= bs!862333 (and d!1396372 d!1396208)))

(assert (=> bs!862333 (= lambda!173709 lambda!173598)))

(declare-fun bs!862334 () Bool)

(assert (= bs!862334 (and d!1396372 d!1396370)))

(assert (=> bs!862334 (not (= lambda!173709 lambda!173706))))

(declare-fun bs!862335 () Bool)

(assert (= bs!862335 (and d!1396372 d!1396236)))

(assert (=> bs!862335 (= lambda!173709 lambda!173642)))

(declare-fun bs!862336 () Bool)

(assert (= bs!862336 (and d!1396372 d!1396206)))

(assert (=> bs!862336 (= lambda!173709 lambda!173597)))

(declare-fun bs!862337 () Bool)

(assert (= bs!862337 (and d!1396372 d!1396278)))

(assert (=> bs!862337 (= lambda!173709 lambda!173656)))

(assert (=> d!1396372 (not (contains!13427 (extractMap!1228 (toList!4351 lm!1477)) key!3287))))

(declare-fun lt!1703132 () Unit!96156)

(declare-fun choose!29658 (ListLongMap!2983 K!12070 Hashable!5567) Unit!96156)

(assert (=> d!1396372 (= lt!1703132 (choose!29658 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1396372 (forall!10291 (toList!4351 lm!1477) lambda!173709)))

(assert (=> d!1396372 (= (lemmaNotInItsHashBucketThenNotInMap!160 lm!1477 key!3287 hashF!1107) lt!1703132)))

(declare-fun bs!862338 () Bool)

(assert (= bs!862338 d!1396372))

(assert (=> bs!862338 m!5280297))

(assert (=> bs!862338 m!5280297))

(declare-fun m!5281043 () Bool)

(assert (=> bs!862338 m!5281043))

(declare-fun m!5281045 () Bool)

(assert (=> bs!862338 m!5281045))

(declare-fun m!5281047 () Bool)

(assert (=> bs!862338 m!5281047))

(assert (=> b!4526627 d!1396372))

(declare-fun d!1396374 () Bool)

(assert (=> d!1396374 (= (head!9434 lt!1702738) (head!9436 (toList!4351 lt!1702738)))))

(declare-fun bs!862339 () Bool)

(assert (= bs!862339 d!1396374))

(declare-fun m!5281049 () Bool)

(assert (=> bs!862339 m!5281049))

(assert (=> b!4526606 d!1396374))

(declare-fun d!1396376 () Bool)

(assert (=> d!1396376 (= (eq!629 lt!1702718 lt!1702715) (= (content!8387 (toList!4352 lt!1702718)) (content!8387 (toList!4352 lt!1702715))))))

(declare-fun bs!862340 () Bool)

(assert (= bs!862340 d!1396376))

(assert (=> bs!862340 m!5280701))

(assert (=> bs!862340 m!5280699))

(assert (=> b!4526626 d!1396376))

(declare-fun b!4527003 () Bool)

(declare-fun e!2820654 () List!50807)

(assert (=> b!4527003 (= e!2820654 (keys!17616 lt!1702718))))

(declare-fun d!1396378 () Bool)

(declare-fun e!2820659 () Bool)

(assert (=> d!1396378 e!2820659))

(declare-fun res!1884911 () Bool)

(assert (=> d!1396378 (=> res!1884911 e!2820659)))

(declare-fun e!2820658 () Bool)

(assert (=> d!1396378 (= res!1884911 e!2820658)))

(declare-fun res!1884913 () Bool)

(assert (=> d!1396378 (=> (not res!1884913) (not e!2820658))))

(declare-fun lt!1703136 () Bool)

(assert (=> d!1396378 (= res!1884913 (not lt!1703136))))

(declare-fun lt!1703138 () Bool)

(assert (=> d!1396378 (= lt!1703136 lt!1703138)))

(declare-fun lt!1703139 () Unit!96156)

(declare-fun e!2820657 () Unit!96156)

(assert (=> d!1396378 (= lt!1703139 e!2820657)))

(declare-fun c!772823 () Bool)

(assert (=> d!1396378 (= c!772823 lt!1703138)))

(assert (=> d!1396378 (= lt!1703138 (containsKey!1814 (toList!4352 lt!1702718) key!3287))))

(assert (=> d!1396378 (= (contains!13427 lt!1702718 key!3287) lt!1703136)))

(declare-fun b!4527004 () Bool)

(declare-fun e!2820656 () Unit!96156)

(declare-fun Unit!96208 () Unit!96156)

(assert (=> b!4527004 (= e!2820656 Unit!96208)))

(declare-fun bm!315497 () Bool)

(declare-fun call!315502 () Bool)

(assert (=> bm!315497 (= call!315502 (contains!13431 e!2820654 key!3287))))

(declare-fun c!772824 () Bool)

(assert (=> bm!315497 (= c!772824 c!772823)))

(declare-fun b!4527005 () Bool)

(assert (=> b!4527005 (= e!2820654 (getKeysList!475 (toList!4352 lt!1702718)))))

(declare-fun b!4527006 () Bool)

(declare-fun e!2820655 () Bool)

(assert (=> b!4527006 (= e!2820659 e!2820655)))

(declare-fun res!1884912 () Bool)

(assert (=> b!4527006 (=> (not res!1884912) (not e!2820655))))

(assert (=> b!4527006 (= res!1884912 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702718) key!3287)))))

(declare-fun b!4527007 () Bool)

(assert (=> b!4527007 (= e!2820655 (contains!13431 (keys!17616 lt!1702718) key!3287))))

(declare-fun b!4527008 () Bool)

(assert (=> b!4527008 (= e!2820658 (not (contains!13431 (keys!17616 lt!1702718) key!3287)))))

(declare-fun b!4527009 () Bool)

(assert (=> b!4527009 false))

(declare-fun lt!1703137 () Unit!96156)

(declare-fun lt!1703135 () Unit!96156)

(assert (=> b!4527009 (= lt!1703137 lt!1703135)))

(assert (=> b!4527009 (containsKey!1814 (toList!4352 lt!1702718) key!3287)))

(assert (=> b!4527009 (= lt!1703135 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1702718) key!3287))))

(declare-fun Unit!96209 () Unit!96156)

(assert (=> b!4527009 (= e!2820656 Unit!96209)))

(declare-fun b!4527010 () Bool)

(assert (=> b!4527010 (= e!2820657 e!2820656)))

(declare-fun c!772822 () Bool)

(assert (=> b!4527010 (= c!772822 call!315502)))

(declare-fun b!4527011 () Bool)

(declare-fun lt!1703133 () Unit!96156)

(assert (=> b!4527011 (= e!2820657 lt!1703133)))

(declare-fun lt!1703134 () Unit!96156)

(assert (=> b!4527011 (= lt!1703134 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702718) key!3287))))

(assert (=> b!4527011 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702718) key!3287))))

(declare-fun lt!1703140 () Unit!96156)

(assert (=> b!4527011 (= lt!1703140 lt!1703134)))

(assert (=> b!4527011 (= lt!1703133 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1702718) key!3287))))

(assert (=> b!4527011 call!315502))

(assert (= (and d!1396378 c!772823) b!4527011))

(assert (= (and d!1396378 (not c!772823)) b!4527010))

(assert (= (and b!4527010 c!772822) b!4527009))

(assert (= (and b!4527010 (not c!772822)) b!4527004))

(assert (= (or b!4527011 b!4527010) bm!315497))

(assert (= (and bm!315497 c!772824) b!4527005))

(assert (= (and bm!315497 (not c!772824)) b!4527003))

(assert (= (and d!1396378 res!1884913) b!4527008))

(assert (= (and d!1396378 (not res!1884911)) b!4527006))

(assert (= (and b!4527006 res!1884912) b!4527007))

(declare-fun m!5281051 () Bool)

(assert (=> b!4527009 m!5281051))

(declare-fun m!5281053 () Bool)

(assert (=> b!4527009 m!5281053))

(assert (=> d!1396378 m!5281051))

(declare-fun m!5281055 () Bool)

(assert (=> b!4527008 m!5281055))

(assert (=> b!4527008 m!5281055))

(declare-fun m!5281057 () Bool)

(assert (=> b!4527008 m!5281057))

(declare-fun m!5281059 () Bool)

(assert (=> b!4527005 m!5281059))

(declare-fun m!5281061 () Bool)

(assert (=> b!4527006 m!5281061))

(assert (=> b!4527006 m!5281061))

(declare-fun m!5281063 () Bool)

(assert (=> b!4527006 m!5281063))

(declare-fun m!5281065 () Bool)

(assert (=> b!4527011 m!5281065))

(assert (=> b!4527011 m!5281061))

(assert (=> b!4527011 m!5281061))

(assert (=> b!4527011 m!5281063))

(declare-fun m!5281067 () Bool)

(assert (=> b!4527011 m!5281067))

(assert (=> b!4527007 m!5281055))

(assert (=> b!4527007 m!5281055))

(assert (=> b!4527007 m!5281057))

(assert (=> b!4527003 m!5281055))

(declare-fun m!5281069 () Bool)

(assert (=> bm!315497 m!5281069))

(assert (=> b!4526605 d!1396378))

(declare-fun bs!862341 () Bool)

(declare-fun d!1396380 () Bool)

(assert (= bs!862341 (and d!1396380 d!1396254)))

(declare-fun lambda!173710 () Int)

(assert (=> bs!862341 (= lambda!173710 lambda!173645)))

(declare-fun bs!862342 () Bool)

(assert (= bs!862342 (and d!1396380 d!1396204)))

(assert (=> bs!862342 (= lambda!173710 lambda!173594)))

(declare-fun bs!862343 () Bool)

(assert (= bs!862343 (and d!1396380 d!1396256)))

(assert (=> bs!862343 (= lambda!173710 lambda!173647)))

(declare-fun bs!862344 () Bool)

(assert (= bs!862344 (and d!1396380 start!448604)))

(assert (=> bs!862344 (= lambda!173710 lambda!173583)))

(declare-fun bs!862345 () Bool)

(assert (= bs!862345 (and d!1396380 d!1396216)))

(assert (=> bs!862345 (= lambda!173710 lambda!173619)))

(declare-fun bs!862346 () Bool)

(assert (= bs!862346 (and d!1396380 d!1396208)))

(assert (=> bs!862346 (= lambda!173710 lambda!173598)))

(declare-fun bs!862347 () Bool)

(assert (= bs!862347 (and d!1396380 d!1396370)))

(assert (=> bs!862347 (not (= lambda!173710 lambda!173706))))

(declare-fun bs!862348 () Bool)

(assert (= bs!862348 (and d!1396380 d!1396372)))

(assert (=> bs!862348 (= lambda!173710 lambda!173709)))

(declare-fun bs!862349 () Bool)

(assert (= bs!862349 (and d!1396380 b!4526608)))

(assert (=> bs!862349 (not (= lambda!173710 lambda!173584))))

(declare-fun bs!862350 () Bool)

(assert (= bs!862350 (and d!1396380 d!1396236)))

(assert (=> bs!862350 (= lambda!173710 lambda!173642)))

(declare-fun bs!862351 () Bool)

(assert (= bs!862351 (and d!1396380 d!1396206)))

(assert (=> bs!862351 (= lambda!173710 lambda!173597)))

(declare-fun bs!862352 () Bool)

(assert (= bs!862352 (and d!1396380 d!1396278)))

(assert (=> bs!862352 (= lambda!173710 lambda!173656)))

(declare-fun lt!1703141 () ListMap!3613)

(assert (=> d!1396380 (invariantList!1027 (toList!4352 lt!1703141))))

(declare-fun e!2820660 () ListMap!3613)

(assert (=> d!1396380 (= lt!1703141 e!2820660)))

(declare-fun c!772825 () Bool)

(assert (=> d!1396380 (= c!772825 ((_ is Cons!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396380 (forall!10291 (toList!4351 lm!1477) lambda!173710)))

(assert (=> d!1396380 (= (extractMap!1228 (toList!4351 lm!1477)) lt!1703141)))

(declare-fun b!4527012 () Bool)

(assert (=> b!4527012 (= e!2820660 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun b!4527013 () Bool)

(assert (=> b!4527013 (= e!2820660 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396380 c!772825) b!4527012))

(assert (= (and d!1396380 (not c!772825)) b!4527013))

(declare-fun m!5281071 () Bool)

(assert (=> d!1396380 m!5281071))

(declare-fun m!5281073 () Bool)

(assert (=> d!1396380 m!5281073))

(assert (=> b!4527012 m!5280313))

(assert (=> b!4527012 m!5280313))

(declare-fun m!5281075 () Bool)

(assert (=> b!4527012 m!5281075))

(assert (=> b!4526605 d!1396380))

(declare-fun d!1396382 () Bool)

(declare-fun isEmpty!28697 (List!50805) Bool)

(assert (=> d!1396382 (= (isEmpty!28695 lm!1477) (isEmpty!28697 (toList!4351 lm!1477)))))

(declare-fun bs!862353 () Bool)

(assert (= bs!862353 d!1396382))

(declare-fun m!5281077 () Bool)

(assert (=> bs!862353 m!5281077))

(assert (=> b!4526630 d!1396382))

(declare-fun d!1396384 () Bool)

(assert (=> d!1396384 (= (apply!11909 lt!1702722 hash!344) (get!16620 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344)))))

(declare-fun bs!862354 () Bool)

(assert (= bs!862354 d!1396384))

(assert (=> bs!862354 m!5280535))

(assert (=> bs!862354 m!5280535))

(declare-fun m!5281079 () Bool)

(assert (=> bs!862354 m!5281079))

(assert (=> b!4526609 d!1396384))

(declare-fun d!1396386 () Bool)

(declare-fun res!1884914 () Bool)

(declare-fun e!2820661 () Bool)

(assert (=> d!1396386 (=> res!1884914 e!2820661)))

(assert (=> d!1396386 (= res!1884914 (and ((_ is Cons!50680) (_2!28856 lt!1702727)) (= (_1!28855 (h!56543 (_2!28856 lt!1702727))) key!3287)))))

(assert (=> d!1396386 (= (containsKey!1812 (_2!28856 lt!1702727) key!3287) e!2820661)))

(declare-fun b!4527014 () Bool)

(declare-fun e!2820662 () Bool)

(assert (=> b!4527014 (= e!2820661 e!2820662)))

(declare-fun res!1884915 () Bool)

(assert (=> b!4527014 (=> (not res!1884915) (not e!2820662))))

(assert (=> b!4527014 (= res!1884915 ((_ is Cons!50680) (_2!28856 lt!1702727)))))

(declare-fun b!4527015 () Bool)

(assert (=> b!4527015 (= e!2820662 (containsKey!1812 (t!357766 (_2!28856 lt!1702727)) key!3287))))

(assert (= (and d!1396386 (not res!1884914)) b!4527014))

(assert (= (and b!4527014 res!1884915) b!4527015))

(declare-fun m!5281081 () Bool)

(assert (=> b!4527015 m!5281081))

(assert (=> b!4526607 d!1396386))

(declare-fun d!1396388 () Bool)

(assert (=> d!1396388 (= (eq!629 lt!1702736 lt!1702734) (= (content!8387 (toList!4352 lt!1702736)) (content!8387 (toList!4352 lt!1702734))))))

(declare-fun bs!862355 () Bool)

(assert (= bs!862355 d!1396388))

(assert (=> bs!862355 m!5280843))

(assert (=> bs!862355 m!5280847))

(assert (=> b!4526629 d!1396388))

(declare-fun bs!862356 () Bool)

(declare-fun b!4527017 () Bool)

(assert (= bs!862356 (and b!4527017 d!1396296)))

(declare-fun lambda!173711 () Int)

(assert (=> bs!862356 (= (= lt!1702713 lt!1703123) (= lambda!173711 lambda!173703))))

(declare-fun bs!862357 () Bool)

(assert (= bs!862357 (and b!4527017 b!4526999)))

(assert (=> bs!862357 (= (= lt!1702713 lt!1702724) (= lambda!173711 lambda!173701))))

(declare-fun bs!862358 () Bool)

(assert (= bs!862358 (and b!4527017 b!4526997)))

(assert (=> bs!862358 (= (= lt!1702713 lt!1702724) (= lambda!173711 lambda!173700))))

(assert (=> bs!862357 (= (= lt!1702713 lt!1703122) (= lambda!173711 lambda!173702))))

(declare-fun bs!862359 () Bool)

(assert (= bs!862359 (and b!4527017 d!1396260)))

(assert (=> bs!862359 (not (= lambda!173711 lambda!173651))))

(declare-fun bs!862360 () Bool)

(assert (= bs!862360 (and b!4527017 b!4526608)))

(assert (=> bs!862360 (not (= lambda!173711 lambda!173585))))

(assert (=> b!4527017 true))

(declare-fun bs!862361 () Bool)

(declare-fun b!4527019 () Bool)

(assert (= bs!862361 (and b!4527019 d!1396296)))

(declare-fun lambda!173712 () Int)

(assert (=> bs!862361 (= (= lt!1702713 lt!1703123) (= lambda!173712 lambda!173703))))

(declare-fun bs!862362 () Bool)

(assert (= bs!862362 (and b!4527019 b!4526999)))

(assert (=> bs!862362 (= (= lt!1702713 lt!1702724) (= lambda!173712 lambda!173701))))

(declare-fun bs!862363 () Bool)

(assert (= bs!862363 (and b!4527019 b!4527017)))

(assert (=> bs!862363 (= lambda!173712 lambda!173711)))

(declare-fun bs!862364 () Bool)

(assert (= bs!862364 (and b!4527019 b!4526997)))

(assert (=> bs!862364 (= (= lt!1702713 lt!1702724) (= lambda!173712 lambda!173700))))

(assert (=> bs!862362 (= (= lt!1702713 lt!1703122) (= lambda!173712 lambda!173702))))

(declare-fun bs!862365 () Bool)

(assert (= bs!862365 (and b!4527019 d!1396260)))

(assert (=> bs!862365 (not (= lambda!173712 lambda!173651))))

(declare-fun bs!862366 () Bool)

(assert (= bs!862366 (and b!4527019 b!4526608)))

(assert (=> bs!862366 (not (= lambda!173712 lambda!173585))))

(assert (=> b!4527019 true))

(declare-fun lt!1703158 () ListMap!3613)

(declare-fun lambda!173713 () Int)

(assert (=> bs!862361 (= (= lt!1703158 lt!1703123) (= lambda!173713 lambda!173703))))

(assert (=> bs!862362 (= (= lt!1703158 lt!1702724) (= lambda!173713 lambda!173701))))

(assert (=> bs!862363 (= (= lt!1703158 lt!1702713) (= lambda!173713 lambda!173711))))

(assert (=> bs!862362 (= (= lt!1703158 lt!1703122) (= lambda!173713 lambda!173702))))

(assert (=> bs!862365 (not (= lambda!173713 lambda!173651))))

(assert (=> bs!862366 (not (= lambda!173713 lambda!173585))))

(assert (=> bs!862364 (= (= lt!1703158 lt!1702724) (= lambda!173713 lambda!173700))))

(assert (=> b!4527019 (= (= lt!1703158 lt!1702713) (= lambda!173713 lambda!173712))))

(assert (=> b!4527019 true))

(declare-fun bs!862367 () Bool)

(declare-fun d!1396390 () Bool)

(assert (= bs!862367 (and d!1396390 d!1396296)))

(declare-fun lambda!173714 () Int)

(declare-fun lt!1703159 () ListMap!3613)

(assert (=> bs!862367 (= (= lt!1703159 lt!1703123) (= lambda!173714 lambda!173703))))

(declare-fun bs!862368 () Bool)

(assert (= bs!862368 (and d!1396390 b!4526999)))

(assert (=> bs!862368 (= (= lt!1703159 lt!1702724) (= lambda!173714 lambda!173701))))

(declare-fun bs!862369 () Bool)

(assert (= bs!862369 (and d!1396390 b!4527017)))

(assert (=> bs!862369 (= (= lt!1703159 lt!1702713) (= lambda!173714 lambda!173711))))

(declare-fun bs!862370 () Bool)

(assert (= bs!862370 (and d!1396390 b!4527019)))

(assert (=> bs!862370 (= (= lt!1703159 lt!1703158) (= lambda!173714 lambda!173713))))

(assert (=> bs!862368 (= (= lt!1703159 lt!1703122) (= lambda!173714 lambda!173702))))

(declare-fun bs!862371 () Bool)

(assert (= bs!862371 (and d!1396390 d!1396260)))

(assert (=> bs!862371 (not (= lambda!173714 lambda!173651))))

(declare-fun bs!862372 () Bool)

(assert (= bs!862372 (and d!1396390 b!4526608)))

(assert (=> bs!862372 (not (= lambda!173714 lambda!173585))))

(declare-fun bs!862373 () Bool)

(assert (= bs!862373 (and d!1396390 b!4526997)))

(assert (=> bs!862373 (= (= lt!1703159 lt!1702724) (= lambda!173714 lambda!173700))))

(assert (=> bs!862370 (= (= lt!1703159 lt!1702713) (= lambda!173714 lambda!173712))))

(assert (=> d!1396390 true))

(declare-fun b!4527016 () Bool)

(declare-fun e!2820665 () Bool)

(assert (=> b!4527016 (= e!2820665 (invariantList!1027 (toList!4352 lt!1703159)))))

(declare-fun e!2820663 () ListMap!3613)

(assert (=> b!4527017 (= e!2820663 lt!1702713)))

(declare-fun lt!1703146 () Unit!96156)

(declare-fun call!315504 () Unit!96156)

(assert (=> b!4527017 (= lt!1703146 call!315504)))

(declare-fun call!315503 () Bool)

(assert (=> b!4527017 call!315503))

(declare-fun lt!1703145 () Unit!96156)

(assert (=> b!4527017 (= lt!1703145 lt!1703146)))

(declare-fun call!315505 () Bool)

(assert (=> b!4527017 call!315505))

(declare-fun lt!1703155 () Unit!96156)

(declare-fun Unit!96211 () Unit!96156)

(assert (=> b!4527017 (= lt!1703155 Unit!96211)))

(declare-fun b!4527018 () Bool)

(declare-fun e!2820664 () Bool)

(assert (=> b!4527018 (= e!2820664 (forall!10293 (toList!4352 lt!1702713) lambda!173713))))

(declare-fun b!4527020 () Bool)

(declare-fun res!1884918 () Bool)

(assert (=> b!4527020 (=> (not res!1884918) (not e!2820665))))

(assert (=> b!4527020 (= res!1884918 (forall!10293 (toList!4352 lt!1702713) lambda!173714))))

(declare-fun bm!315498 () Bool)

(assert (=> bm!315498 (= call!315504 (lemmaContainsAllItsOwnKeys!348 lt!1702713))))

(assert (=> d!1396390 e!2820665))

(declare-fun res!1884917 () Bool)

(assert (=> d!1396390 (=> (not res!1884917) (not e!2820665))))

(assert (=> d!1396390 (= res!1884917 (forall!10293 (_2!28856 lt!1702727) lambda!173714))))

(assert (=> d!1396390 (= lt!1703159 e!2820663)))

(declare-fun c!772826 () Bool)

(assert (=> d!1396390 (= c!772826 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396390 (noDuplicateKeys!1172 (_2!28856 lt!1702727))))

(assert (=> d!1396390 (= (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713) lt!1703159)))

(assert (=> b!4527019 (= e!2820663 lt!1703158)))

(declare-fun lt!1703161 () ListMap!3613)

(assert (=> b!4527019 (= lt!1703161 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4527019 (= lt!1703158 (addToMapMapFromBucket!699 (t!357766 (_2!28856 lt!1702727)) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703156 () Unit!96156)

(assert (=> b!4527019 (= lt!1703156 call!315504)))

(assert (=> b!4527019 (forall!10293 (toList!4352 lt!1702713) lambda!173712)))

(declare-fun lt!1703150 () Unit!96156)

(assert (=> b!4527019 (= lt!1703150 lt!1703156)))

(assert (=> b!4527019 (forall!10293 (toList!4352 lt!1703161) lambda!173713)))

(declare-fun lt!1703148 () Unit!96156)

(declare-fun Unit!96212 () Unit!96156)

(assert (=> b!4527019 (= lt!1703148 Unit!96212)))

(assert (=> b!4527019 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173713)))

(declare-fun lt!1703153 () Unit!96156)

(declare-fun Unit!96213 () Unit!96156)

(assert (=> b!4527019 (= lt!1703153 Unit!96213)))

(declare-fun lt!1703157 () Unit!96156)

(declare-fun Unit!96214 () Unit!96156)

(assert (=> b!4527019 (= lt!1703157 Unit!96214)))

(declare-fun lt!1703152 () Unit!96156)

(assert (=> b!4527019 (= lt!1703152 (forallContained!2545 (toList!4352 lt!1703161) lambda!173713 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4527019 (contains!13427 lt!1703161 (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703142 () Unit!96156)

(declare-fun Unit!96215 () Unit!96156)

(assert (=> b!4527019 (= lt!1703142 Unit!96215)))

(assert (=> b!4527019 (contains!13427 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703143 () Unit!96156)

(declare-fun Unit!96216 () Unit!96156)

(assert (=> b!4527019 (= lt!1703143 Unit!96216)))

(assert (=> b!4527019 call!315503))

(declare-fun lt!1703147 () Unit!96156)

(declare-fun Unit!96217 () Unit!96156)

(assert (=> b!4527019 (= lt!1703147 Unit!96217)))

(assert (=> b!4527019 (forall!10293 (toList!4352 lt!1703161) lambda!173713)))

(declare-fun lt!1703151 () Unit!96156)

(declare-fun Unit!96218 () Unit!96156)

(assert (=> b!4527019 (= lt!1703151 Unit!96218)))

(declare-fun lt!1703144 () Unit!96156)

(declare-fun Unit!96219 () Unit!96156)

(assert (=> b!4527019 (= lt!1703144 Unit!96219)))

(declare-fun lt!1703160 () Unit!96156)

(assert (=> b!4527019 (= lt!1703160 (addForallContainsKeyThenBeforeAdding!348 lt!1702713 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4527019 (forall!10293 (toList!4352 lt!1702713) lambda!173713)))

(declare-fun lt!1703162 () Unit!96156)

(assert (=> b!4527019 (= lt!1703162 lt!1703160)))

(assert (=> b!4527019 call!315505))

(declare-fun lt!1703154 () Unit!96156)

(declare-fun Unit!96220 () Unit!96156)

(assert (=> b!4527019 (= lt!1703154 Unit!96220)))

(declare-fun res!1884916 () Bool)

(assert (=> b!4527019 (= res!1884916 (forall!10293 (_2!28856 lt!1702727) lambda!173713))))

(assert (=> b!4527019 (=> (not res!1884916) (not e!2820664))))

(assert (=> b!4527019 e!2820664))

(declare-fun lt!1703149 () Unit!96156)

(declare-fun Unit!96221 () Unit!96156)

(assert (=> b!4527019 (= lt!1703149 Unit!96221)))

(declare-fun bm!315499 () Bool)

(assert (=> bm!315499 (= call!315505 (forall!10293 (toList!4352 lt!1702713) (ite c!772826 lambda!173711 lambda!173713)))))

(declare-fun bm!315500 () Bool)

(assert (=> bm!315500 (= call!315503 (forall!10293 (ite c!772826 (toList!4352 lt!1702713) (_2!28856 lt!1702727)) (ite c!772826 lambda!173711 lambda!173713)))))

(assert (= (and d!1396390 c!772826) b!4527017))

(assert (= (and d!1396390 (not c!772826)) b!4527019))

(assert (= (and b!4527019 res!1884916) b!4527018))

(assert (= (or b!4527017 b!4527019) bm!315500))

(assert (= (or b!4527017 b!4527019) bm!315499))

(assert (= (or b!4527017 b!4527019) bm!315498))

(assert (= (and d!1396390 res!1884917) b!4527020))

(assert (= (and b!4527020 res!1884918) b!4527016))

(declare-fun m!5281083 () Bool)

(assert (=> bm!315498 m!5281083))

(declare-fun m!5281085 () Bool)

(assert (=> b!4527018 m!5281085))

(declare-fun m!5281087 () Bool)

(assert (=> b!4527020 m!5281087))

(declare-fun m!5281089 () Bool)

(assert (=> d!1396390 m!5281089))

(assert (=> d!1396390 m!5280291))

(declare-fun m!5281091 () Bool)

(assert (=> bm!315500 m!5281091))

(declare-fun m!5281093 () Bool)

(assert (=> b!4527019 m!5281093))

(declare-fun m!5281095 () Bool)

(assert (=> b!4527019 m!5281095))

(declare-fun m!5281097 () Bool)

(assert (=> b!4527019 m!5281097))

(assert (=> b!4527019 m!5281085))

(declare-fun m!5281099 () Bool)

(assert (=> b!4527019 m!5281099))

(declare-fun m!5281101 () Bool)

(assert (=> b!4527019 m!5281101))

(assert (=> b!4527019 m!5281097))

(declare-fun m!5281103 () Bool)

(assert (=> b!4527019 m!5281103))

(declare-fun m!5281105 () Bool)

(assert (=> b!4527019 m!5281105))

(declare-fun m!5281107 () Bool)

(assert (=> b!4527019 m!5281107))

(assert (=> b!4527019 m!5281099))

(declare-fun m!5281109 () Bool)

(assert (=> b!4527019 m!5281109))

(declare-fun m!5281111 () Bool)

(assert (=> b!4527019 m!5281111))

(declare-fun m!5281113 () Bool)

(assert (=> bm!315499 m!5281113))

(declare-fun m!5281115 () Bool)

(assert (=> b!4527016 m!5281115))

(assert (=> b!4526629 d!1396390))

(declare-fun bs!862374 () Bool)

(declare-fun d!1396392 () Bool)

(assert (= bs!862374 (and d!1396392 d!1396254)))

(declare-fun lambda!173715 () Int)

(assert (=> bs!862374 (= lambda!173715 lambda!173645)))

(declare-fun bs!862375 () Bool)

(assert (= bs!862375 (and d!1396392 d!1396204)))

(assert (=> bs!862375 (= lambda!173715 lambda!173594)))

(declare-fun bs!862376 () Bool)

(assert (= bs!862376 (and d!1396392 d!1396256)))

(assert (=> bs!862376 (= lambda!173715 lambda!173647)))

(declare-fun bs!862377 () Bool)

(assert (= bs!862377 (and d!1396392 start!448604)))

(assert (=> bs!862377 (= lambda!173715 lambda!173583)))

(declare-fun bs!862378 () Bool)

(assert (= bs!862378 (and d!1396392 d!1396216)))

(assert (=> bs!862378 (= lambda!173715 lambda!173619)))

(declare-fun bs!862379 () Bool)

(assert (= bs!862379 (and d!1396392 d!1396208)))

(assert (=> bs!862379 (= lambda!173715 lambda!173598)))

(declare-fun bs!862380 () Bool)

(assert (= bs!862380 (and d!1396392 d!1396372)))

(assert (=> bs!862380 (= lambda!173715 lambda!173709)))

(declare-fun bs!862381 () Bool)

(assert (= bs!862381 (and d!1396392 b!4526608)))

(assert (=> bs!862381 (not (= lambda!173715 lambda!173584))))

(declare-fun bs!862382 () Bool)

(assert (= bs!862382 (and d!1396392 d!1396236)))

(assert (=> bs!862382 (= lambda!173715 lambda!173642)))

(declare-fun bs!862383 () Bool)

(assert (= bs!862383 (and d!1396392 d!1396206)))

(assert (=> bs!862383 (= lambda!173715 lambda!173597)))

(declare-fun bs!862384 () Bool)

(assert (= bs!862384 (and d!1396392 d!1396278)))

(assert (=> bs!862384 (= lambda!173715 lambda!173656)))

(declare-fun bs!862385 () Bool)

(assert (= bs!862385 (and d!1396392 d!1396370)))

(assert (=> bs!862385 (not (= lambda!173715 lambda!173706))))

(declare-fun bs!862386 () Bool)

(assert (= bs!862386 (and d!1396392 d!1396380)))

(assert (=> bs!862386 (= lambda!173715 lambda!173710)))

(declare-fun lt!1703163 () ListMap!3613)

(assert (=> d!1396392 (invariantList!1027 (toList!4352 lt!1703163))))

(declare-fun e!2820666 () ListMap!3613)

(assert (=> d!1396392 (= lt!1703163 e!2820666)))

(declare-fun c!772827 () Bool)

(assert (=> d!1396392 (= c!772827 ((_ is Cons!50681) (toList!4351 lt!1702738)))))

(assert (=> d!1396392 (forall!10291 (toList!4351 lt!1702738) lambda!173715)))

(assert (=> d!1396392 (= (extractMap!1228 (toList!4351 lt!1702738)) lt!1703163)))

(declare-fun b!4527021 () Bool)

(assert (=> b!4527021 (= e!2820666 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))))))

(declare-fun b!4527022 () Bool)

(assert (=> b!4527022 (= e!2820666 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396392 c!772827) b!4527021))

(assert (= (and d!1396392 (not c!772827)) b!4527022))

(declare-fun m!5281117 () Bool)

(assert (=> d!1396392 m!5281117))

(declare-fun m!5281119 () Bool)

(assert (=> d!1396392 m!5281119))

(declare-fun m!5281121 () Bool)

(assert (=> b!4527021 m!5281121))

(assert (=> b!4527021 m!5281121))

(declare-fun m!5281123 () Bool)

(assert (=> b!4527021 m!5281123))

(assert (=> b!4526629 d!1396392))

(declare-fun b!4527039 () Bool)

(declare-fun e!2820678 () Bool)

(declare-fun e!2820680 () Bool)

(assert (=> b!4527039 (= e!2820678 e!2820680)))

(declare-fun res!1884930 () Bool)

(assert (=> b!4527039 (=> (not res!1884930) (not e!2820680))))

(declare-fun lt!1703166 () Option!11139)

(declare-fun isDefined!8430 (Option!11139) Bool)

(assert (=> b!4527039 (= res!1884930 (isDefined!8430 lt!1703166))))

(declare-fun b!4527040 () Bool)

(declare-fun e!2820681 () Option!11139)

(declare-fun e!2820679 () Option!11139)

(assert (=> b!4527040 (= e!2820681 e!2820679)))

(declare-fun c!772833 () Bool)

(assert (=> b!4527040 (= c!772833 ((_ is Cons!50680) (_2!28856 lt!1702727)))))

(declare-fun b!4527041 () Bool)

(declare-fun contains!13433 (List!50804 tuple2!51122) Bool)

(assert (=> b!4527041 (= e!2820680 (contains!13433 (_2!28856 lt!1702727) (get!16618 lt!1703166)))))

(declare-fun b!4527042 () Bool)

(assert (=> b!4527042 (= e!2820679 None!11138)))

(declare-fun b!4527043 () Bool)

(declare-fun e!2820677 () Bool)

(assert (=> b!4527043 (= e!2820677 (not (containsKey!1812 (_2!28856 lt!1702727) key!3287)))))

(declare-fun b!4527044 () Bool)

(declare-fun res!1884927 () Bool)

(assert (=> b!4527044 (=> (not res!1884927) (not e!2820680))))

(assert (=> b!4527044 (= res!1884927 (= (_1!28855 (get!16618 lt!1703166)) key!3287))))

(declare-fun b!4527045 () Bool)

(assert (=> b!4527045 (= e!2820681 (Some!11138 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun b!4527046 () Bool)

(assert (=> b!4527046 (= e!2820679 (getPair!188 (t!357766 (_2!28856 lt!1702727)) key!3287))))

(declare-fun d!1396394 () Bool)

(assert (=> d!1396394 e!2820678))

(declare-fun res!1884929 () Bool)

(assert (=> d!1396394 (=> res!1884929 e!2820678)))

(assert (=> d!1396394 (= res!1884929 e!2820677)))

(declare-fun res!1884928 () Bool)

(assert (=> d!1396394 (=> (not res!1884928) (not e!2820677))))

(declare-fun isEmpty!28699 (Option!11139) Bool)

(assert (=> d!1396394 (= res!1884928 (isEmpty!28699 lt!1703166))))

(assert (=> d!1396394 (= lt!1703166 e!2820681)))

(declare-fun c!772832 () Bool)

(assert (=> d!1396394 (= c!772832 (and ((_ is Cons!50680) (_2!28856 lt!1702727)) (= (_1!28855 (h!56543 (_2!28856 lt!1702727))) key!3287)))))

(assert (=> d!1396394 (noDuplicateKeys!1172 (_2!28856 lt!1702727))))

(assert (=> d!1396394 (= (getPair!188 (_2!28856 lt!1702727) key!3287) lt!1703166)))

(assert (= (and d!1396394 c!772832) b!4527045))

(assert (= (and d!1396394 (not c!772832)) b!4527040))

(assert (= (and b!4527040 c!772833) b!4527046))

(assert (= (and b!4527040 (not c!772833)) b!4527042))

(assert (= (and d!1396394 res!1884928) b!4527043))

(assert (= (and d!1396394 (not res!1884929)) b!4527039))

(assert (= (and b!4527039 res!1884930) b!4527044))

(assert (= (and b!4527044 res!1884927) b!4527041))

(declare-fun m!5281125 () Bool)

(assert (=> b!4527039 m!5281125))

(declare-fun m!5281127 () Bool)

(assert (=> b!4527041 m!5281127))

(assert (=> b!4527041 m!5281127))

(declare-fun m!5281129 () Bool)

(assert (=> b!4527041 m!5281129))

(assert (=> b!4527043 m!5280301))

(assert (=> b!4527044 m!5281127))

(declare-fun m!5281131 () Bool)

(assert (=> b!4527046 m!5281131))

(declare-fun m!5281133 () Bool)

(assert (=> d!1396394 m!5281133))

(assert (=> d!1396394 m!5280291))

(assert (=> b!4526608 d!1396394))

(declare-fun d!1396396 () Bool)

(assert (=> d!1396396 (dynLambda!21178 lambda!173584 (h!56544 (toList!4351 lm!1477)))))

(declare-fun lt!1703167 () Unit!96156)

(assert (=> d!1396396 (= lt!1703167 (choose!29644 (toList!4351 lm!1477) lambda!173584 (h!56544 (toList!4351 lm!1477))))))

(declare-fun e!2820682 () Bool)

(assert (=> d!1396396 e!2820682))

(declare-fun res!1884931 () Bool)

(assert (=> d!1396396 (=> (not res!1884931) (not e!2820682))))

(assert (=> d!1396396 (= res!1884931 (forall!10291 (toList!4351 lm!1477) lambda!173584))))

(assert (=> d!1396396 (= (forallContained!2544 (toList!4351 lm!1477) lambda!173584 (h!56544 (toList!4351 lm!1477))) lt!1703167)))

(declare-fun b!4527047 () Bool)

(assert (=> b!4527047 (= e!2820682 (contains!13428 (toList!4351 lm!1477) (h!56544 (toList!4351 lm!1477))))))

(assert (= (and d!1396396 res!1884931) b!4527047))

(declare-fun b_lambda!155959 () Bool)

(assert (=> (not b_lambda!155959) (not d!1396396)))

(declare-fun m!5281135 () Bool)

(assert (=> d!1396396 m!5281135))

(declare-fun m!5281137 () Bool)

(assert (=> d!1396396 m!5281137))

(declare-fun m!5281139 () Bool)

(assert (=> d!1396396 m!5281139))

(assert (=> b!4527047 m!5280417))

(assert (=> b!4526608 d!1396396))

(declare-fun d!1396398 () Bool)

(declare-fun dynLambda!21181 (Int tuple2!51122) Bool)

(assert (=> d!1396398 (dynLambda!21181 lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711))))))

(declare-fun lt!1703170 () Unit!96156)

(declare-fun choose!29661 (List!50804 Int tuple2!51122) Unit!96156)

(assert (=> d!1396398 (= lt!1703170 (choose!29661 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(declare-fun e!2820685 () Bool)

(assert (=> d!1396398 e!2820685))

(declare-fun res!1884934 () Bool)

(assert (=> d!1396398 (=> (not res!1884934) (not e!2820685))))

(assert (=> d!1396398 (= res!1884934 (forall!10293 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585))))

(assert (=> d!1396398 (= (forallContained!2545 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))) lt!1703170)))

(declare-fun b!4527050 () Bool)

(assert (=> b!4527050 (= e!2820685 (contains!13433 (_2!28856 (h!56544 (toList!4351 lm!1477))) (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(assert (= (and d!1396398 res!1884934) b!4527050))

(declare-fun b_lambda!155961 () Bool)

(assert (=> (not b_lambda!155961) (not d!1396398)))

(declare-fun m!5281141 () Bool)

(assert (=> d!1396398 m!5281141))

(declare-fun m!5281143 () Bool)

(assert (=> d!1396398 m!5281143))

(declare-fun m!5281145 () Bool)

(assert (=> d!1396398 m!5281145))

(declare-fun m!5281147 () Bool)

(assert (=> b!4527050 m!5281147))

(assert (=> b!4526608 d!1396398))

(declare-fun d!1396400 () Bool)

(assert (=> d!1396400 (= (get!16618 lt!1702711) (v!44770 lt!1702711))))

(assert (=> b!4526608 d!1396400))

(declare-fun b!4527055 () Bool)

(declare-fun e!2820688 () Bool)

(declare-fun tp!1338281 () Bool)

(declare-fun tp!1338282 () Bool)

(assert (=> b!4527055 (= e!2820688 (and tp!1338281 tp!1338282))))

(assert (=> b!4526611 (= tp!1338266 e!2820688)))

(assert (= (and b!4526611 ((_ is Cons!50681) (toList!4351 lm!1477))) b!4527055))

(declare-fun b!4527060 () Bool)

(declare-fun tp!1338285 () Bool)

(declare-fun e!2820691 () Bool)

(assert (=> b!4527060 (= e!2820691 (and tp_is_empty!27965 tp_is_empty!27967 tp!1338285))))

(assert (=> b!4526628 (= tp!1338267 e!2820691)))

(assert (= (and b!4526628 ((_ is Cons!50680) (t!357766 newBucket!178))) b!4527060))

(declare-fun b_lambda!155963 () Bool)

(assert (= b_lambda!155961 (or b!4526608 b_lambda!155963)))

(declare-fun bs!862387 () Bool)

(declare-fun d!1396402 () Bool)

(assert (= bs!862387 (and d!1396402 b!4526608)))

(assert (=> bs!862387 (= (dynLambda!21181 lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))) (= (hash!2845 hashF!1107 (_1!28855 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711))))) (_1!28856 (h!56544 (toList!4351 lm!1477)))))))

(declare-fun m!5281149 () Bool)

(assert (=> bs!862387 m!5281149))

(assert (=> d!1396398 d!1396402))

(declare-fun b_lambda!155965 () Bool)

(assert (= b_lambda!155935 (or start!448604 b_lambda!155965)))

(declare-fun bs!862388 () Bool)

(declare-fun d!1396404 () Bool)

(assert (= bs!862388 (and d!1396404 start!448604)))

(assert (=> bs!862388 (= (dynLambda!21178 lambda!173583 (h!56544 (toList!4351 lm!1477))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(declare-fun m!5281151 () Bool)

(assert (=> bs!862388 m!5281151))

(assert (=> d!1396188 d!1396404))

(declare-fun b_lambda!155967 () Bool)

(assert (= b_lambda!155933 (or start!448604 b_lambda!155967)))

(assert (=> b!4526649 d!1396404))

(declare-fun b_lambda!155969 () Bool)

(assert (= b_lambda!155959 (or b!4526608 b_lambda!155969)))

(declare-fun bs!862389 () Bool)

(declare-fun d!1396406 () Bool)

(assert (= bs!862389 (and d!1396406 b!4526608)))

(assert (=> bs!862389 (= (dynLambda!21178 lambda!173584 (h!56544 (toList!4351 lm!1477))) (allKeysSameHash!1026 (_2!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 (h!56544 (toList!4351 lm!1477))) hashF!1107))))

(declare-fun m!5281153 () Bool)

(assert (=> bs!862389 m!5281153))

(assert (=> d!1396396 d!1396406))

(declare-fun b_lambda!155971 () Bool)

(assert (= b_lambda!155937 (or start!448604 b_lambda!155971)))

(declare-fun bs!862390 () Bool)

(declare-fun d!1396408 () Bool)

(assert (= bs!862390 (and d!1396408 start!448604)))

(assert (=> bs!862390 (= (dynLambda!21178 lambda!173583 lt!1702730) (noDuplicateKeys!1172 (_2!28856 lt!1702730)))))

(declare-fun m!5281155 () Bool)

(assert (=> bs!862390 m!5281155))

(assert (=> d!1396264 d!1396408))

(check-sat (not d!1396296) (not b!4526867) (not d!1396268) (not b!4527060) (not b!4527006) (not b!4527043) (not d!1396390) (not b!4526691) (not b!4526850) (not d!1396366) (not d!1396270) (not b_lambda!155971) (not b!4526760) (not b!4527005) (not b!4526774) (not d!1396392) (not b!4527015) (not bm!315500) (not bs!862387) (not d!1396396) (not bs!862388) (not bm!315498) (not d!1396184) (not d!1396226) (not d!1396216) (not b!4526655) (not b!4526748) (not b!4526789) (not d!1396278) (not b_lambda!155967) (not b!4527003) tp_is_empty!27967 (not d!1396290) (not b!4526738) (not b!4526758) (not b!4526755) (not b!4527020) (not d!1396236) (not d!1396398) (not b!4526999) (not d!1396190) (not b!4526847) (not b!4526741) tp_is_empty!27965 (not b!4526690) (not bm!315495) (not d!1396292) (not b!4526696) (not d!1396170) (not b!4527019) (not b!4526791) (not d!1396220) (not d!1396208) (not d!1396382) (not b!4526756) (not b!4526806) (not b!4527047) (not b!4527011) (not d!1396394) (not d!1396210) (not b!4526737) (not b!4526793) (not b!4527016) (not b!4526692) (not b!4526679) (not d!1396272) (not d!1396266) (not d!1396372) (not b!4527009) (not d!1396222) (not d!1396234) (not b!4527041) (not b!4526693) (not b_lambda!155965) (not b!4527000) (not b!4526998) (not b!4526996) (not d!1396260) (not bm!315494) (not b!4526650) (not bm!315473) (not b!4526852) (not b!4526680) (not b!4526757) (not d!1396376) (not b!4527046) (not bm!315497) (not d!1396224) (not b!4526752) (not b!4526773) (not b!4526740) (not d!1396378) (not d!1396374) (not b!4526743) (not b!4526873) (not d!1396188) (not bm!315499) (not b_lambda!155969) (not b!4527007) (not b!4527039) (not d!1396218) (not d!1396294) (not b!4527018) (not b!4526844) (not bm!315472) (not bm!315496) (not d!1396368) (not b!4526739) (not b!4527050) (not b!4527021) (not b!4526807) (not b!4526735) (not b!4527008) (not d!1396206) (not b!4526754) (not b!4526776) (not b!4526750) (not d!1396264) (not b!4526803) (not d!1396204) (not b!4526792) (not d!1396384) (not b!4526875) (not d!1396230) (not d!1396178) (not b!4526835) (not b!4527012) (not b!4526771) (not d!1396254) (not d!1396256) (not bs!862389) (not b!4527055) (not b!4526644) (not d!1396388) (not b!4526656) (not bs!862390) (not d!1396166) (not d!1396370) (not b!4527044) (not b!4526837) (not d!1396380) (not b_lambda!155963) (not d!1396252))
(check-sat)
(get-model)

(declare-fun d!1396410 () Bool)

(declare-fun res!1884939 () Bool)

(declare-fun e!2820696 () Bool)

(assert (=> d!1396410 (=> res!1884939 e!2820696)))

(assert (=> d!1396410 (= res!1884939 ((_ is Nil!50680) (toList!4352 lt!1702724)))))

(assert (=> d!1396410 (= (forall!10293 (toList!4352 lt!1702724) lambda!173702) e!2820696)))

(declare-fun b!4527065 () Bool)

(declare-fun e!2820697 () Bool)

(assert (=> b!4527065 (= e!2820696 e!2820697)))

(declare-fun res!1884940 () Bool)

(assert (=> b!4527065 (=> (not res!1884940) (not e!2820697))))

(assert (=> b!4527065 (= res!1884940 (dynLambda!21181 lambda!173702 (h!56543 (toList!4352 lt!1702724))))))

(declare-fun b!4527066 () Bool)

(assert (=> b!4527066 (= e!2820697 (forall!10293 (t!357766 (toList!4352 lt!1702724)) lambda!173702))))

(assert (= (and d!1396410 (not res!1884939)) b!4527065))

(assert (= (and b!4527065 res!1884940) b!4527066))

(declare-fun b_lambda!155973 () Bool)

(assert (=> (not b_lambda!155973) (not b!4527065)))

(declare-fun m!5281157 () Bool)

(assert (=> b!4527065 m!5281157))

(declare-fun m!5281159 () Bool)

(assert (=> b!4527066 m!5281159))

(assert (=> b!4526998 d!1396410))

(declare-fun d!1396412 () Bool)

(declare-fun lt!1703173 () Bool)

(assert (=> d!1396412 (= lt!1703173 (select (content!8386 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(declare-fun e!2820703 () Bool)

(assert (=> d!1396412 (= lt!1703173 e!2820703)))

(declare-fun res!1884945 () Bool)

(assert (=> d!1396412 (=> (not res!1884945) (not e!2820703))))

(assert (=> d!1396412 (= res!1884945 ((_ is Cons!50683) (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> d!1396412 (= (contains!13431 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) lt!1703173)))

(declare-fun b!4527071 () Bool)

(declare-fun e!2820702 () Bool)

(assert (=> b!4527071 (= e!2820703 e!2820702)))

(declare-fun res!1884946 () Bool)

(assert (=> b!4527071 (=> res!1884946 e!2820702)))

(assert (=> b!4527071 (= res!1884946 (= (h!56548 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(declare-fun b!4527072 () Bool)

(assert (=> b!4527072 (= e!2820702 (contains!13431 (t!357769 (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(assert (= (and d!1396412 res!1884945) b!4527071))

(assert (= (and b!4527071 (not res!1884946)) b!4527072))

(assert (=> d!1396412 m!5280461))

(declare-fun m!5281161 () Bool)

(assert (=> d!1396412 m!5281161))

(declare-fun m!5281163 () Bool)

(assert (=> d!1396412 m!5281163))

(declare-fun m!5281165 () Bool)

(assert (=> b!4527072 m!5281165))

(assert (=> b!4526739 d!1396412))

(declare-fun b!4527086 () Bool)

(assert (=> b!4527086 true))

(declare-fun d!1396416 () Bool)

(declare-fun e!2820712 () Bool)

(assert (=> d!1396416 e!2820712))

(declare-fun res!1884961 () Bool)

(assert (=> d!1396416 (=> (not res!1884961) (not e!2820712))))

(declare-fun lt!1703179 () List!50807)

(declare-fun noDuplicate!753 (List!50807) Bool)

(assert (=> d!1396416 (= res!1884961 (noDuplicate!753 lt!1703179))))

(assert (=> d!1396416 (= lt!1703179 (getKeysList!475 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> d!1396416 (= (keys!17616 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lt!1703179)))

(declare-fun b!4527085 () Bool)

(declare-fun res!1884959 () Bool)

(assert (=> b!4527085 (=> (not res!1884959) (not e!2820712))))

(declare-fun length!362 (List!50807) Int)

(declare-fun length!363 (List!50804) Int)

(assert (=> b!4527085 (= res!1884959 (= (length!362 lt!1703179) (length!363 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun res!1884960 () Bool)

(assert (=> b!4527086 (=> (not res!1884960) (not e!2820712))))

(declare-fun lambda!173720 () Int)

(declare-fun forall!10294 (List!50807 Int) Bool)

(assert (=> b!4527086 (= res!1884960 (forall!10294 lt!1703179 lambda!173720))))

(declare-fun b!4527087 () Bool)

(declare-fun lambda!173721 () Int)

(declare-fun map!11150 (List!50804 Int) List!50807)

(assert (=> b!4527087 (= e!2820712 (= (content!8386 lt!1703179) (content!8386 (map!11150 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173721))))))

(assert (= (and d!1396416 res!1884961) b!4527085))

(assert (= (and b!4527085 res!1884959) b!4527086))

(assert (= (and b!4527086 res!1884960) b!4527087))

(declare-fun m!5281173 () Bool)

(assert (=> d!1396416 m!5281173))

(assert (=> d!1396416 m!5280465))

(declare-fun m!5281175 () Bool)

(assert (=> b!4527085 m!5281175))

(declare-fun m!5281177 () Bool)

(assert (=> b!4527085 m!5281177))

(declare-fun m!5281179 () Bool)

(assert (=> b!4527086 m!5281179))

(declare-fun m!5281181 () Bool)

(assert (=> b!4527087 m!5281181))

(declare-fun m!5281183 () Bool)

(assert (=> b!4527087 m!5281183))

(assert (=> b!4527087 m!5281183))

(declare-fun m!5281185 () Bool)

(assert (=> b!4527087 m!5281185))

(assert (=> b!4526739 d!1396416))

(declare-fun bs!862391 () Bool)

(declare-fun b!4527134 () Bool)

(assert (= bs!862391 (and b!4527134 b!4527086)))

(declare-fun lambda!173730 () Int)

(assert (=> bs!862391 (= (= (t!357766 (toList!4352 lt!1702718)) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173730 lambda!173720))))

(assert (=> b!4527134 true))

(declare-fun bs!862392 () Bool)

(declare-fun b!4527140 () Bool)

(assert (= bs!862392 (and b!4527140 b!4527086)))

(declare-fun lambda!173731 () Int)

(assert (=> bs!862392 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718))) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173731 lambda!173720))))

(declare-fun bs!862393 () Bool)

(assert (= bs!862393 (and b!4527140 b!4527134)))

(assert (=> bs!862393 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718))) (t!357766 (toList!4352 lt!1702718))) (= lambda!173731 lambda!173730))))

(assert (=> b!4527140 true))

(declare-fun bs!862394 () Bool)

(declare-fun b!4527135 () Bool)

(assert (= bs!862394 (and b!4527135 b!4527086)))

(declare-fun lambda!173732 () Int)

(assert (=> bs!862394 (= (= (toList!4352 lt!1702718) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173732 lambda!173720))))

(declare-fun bs!862395 () Bool)

(assert (= bs!862395 (and b!4527135 b!4527134)))

(assert (=> bs!862395 (= (= (toList!4352 lt!1702718) (t!357766 (toList!4352 lt!1702718))) (= lambda!173732 lambda!173730))))

(declare-fun bs!862396 () Bool)

(assert (= bs!862396 (and b!4527135 b!4527140)))

(assert (=> bs!862396 (= (= (toList!4352 lt!1702718) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173732 lambda!173731))))

(assert (=> b!4527135 true))

(declare-fun bs!862397 () Bool)

(declare-fun b!4527136 () Bool)

(assert (= bs!862397 (and b!4527136 b!4527087)))

(declare-fun lambda!173733 () Int)

(assert (=> bs!862397 (= lambda!173733 lambda!173721)))

(declare-fun b!4527132 () Bool)

(assert (=> b!4527132 false))

(declare-fun e!2820737 () Unit!96156)

(declare-fun Unit!96222 () Unit!96156)

(assert (=> b!4527132 (= e!2820737 Unit!96222)))

(declare-fun b!4527133 () Bool)

(declare-fun e!2820739 () List!50807)

(assert (=> b!4527133 (= e!2820739 Nil!50683)))

(assert (=> b!4527134 false))

(declare-fun lt!1703208 () Unit!96156)

(declare-fun forallContained!2546 (List!50807 Int K!12070) Unit!96156)

(assert (=> b!4527134 (= lt!1703208 (forallContained!2546 (getKeysList!475 (t!357766 (toList!4352 lt!1702718))) lambda!173730 (_1!28855 (h!56543 (toList!4352 lt!1702718)))))))

(declare-fun e!2820736 () Unit!96156)

(declare-fun Unit!96223 () Unit!96156)

(assert (=> b!4527134 (= e!2820736 Unit!96223)))

(declare-fun res!1884974 () Bool)

(declare-fun e!2820738 () Bool)

(assert (=> b!4527135 (=> (not res!1884974) (not e!2820738))))

(declare-fun lt!1703207 () List!50807)

(assert (=> b!4527135 (= res!1884974 (forall!10294 lt!1703207 lambda!173732))))

(assert (=> b!4527136 (= e!2820738 (= (content!8386 lt!1703207) (content!8386 (map!11150 (toList!4352 lt!1702718) lambda!173733))))))

(declare-fun b!4527137 () Bool)

(declare-fun res!1884975 () Bool)

(assert (=> b!4527137 (=> (not res!1884975) (not e!2820738))))

(assert (=> b!4527137 (= res!1884975 (= (length!362 lt!1703207) (length!363 (toList!4352 lt!1702718))))))

(declare-fun b!4527139 () Bool)

(declare-fun Unit!96224 () Unit!96156)

(assert (=> b!4527139 (= e!2820737 Unit!96224)))

(assert (=> b!4527140 (= e!2820739 (Cons!50683 (_1!28855 (h!56543 (toList!4352 lt!1702718))) (getKeysList!475 (t!357766 (toList!4352 lt!1702718)))))))

(declare-fun c!772851 () Bool)

(assert (=> b!4527140 (= c!772851 (containsKey!1814 (t!357766 (toList!4352 lt!1702718)) (_1!28855 (h!56543 (toList!4352 lt!1702718)))))))

(declare-fun lt!1703204 () Unit!96156)

(assert (=> b!4527140 (= lt!1703204 e!2820737)))

(declare-fun c!772849 () Bool)

(assert (=> b!4527140 (= c!772849 (contains!13431 (getKeysList!475 (t!357766 (toList!4352 lt!1702718))) (_1!28855 (h!56543 (toList!4352 lt!1702718)))))))

(declare-fun lt!1703206 () Unit!96156)

(assert (=> b!4527140 (= lt!1703206 e!2820736)))

(declare-fun lt!1703202 () List!50807)

(assert (=> b!4527140 (= lt!1703202 (getKeysList!475 (t!357766 (toList!4352 lt!1702718))))))

(declare-fun lt!1703203 () Unit!96156)

(declare-fun lemmaForallContainsAddHeadPreserves!174 (List!50804 List!50807 tuple2!51122) Unit!96156)

(assert (=> b!4527140 (= lt!1703203 (lemmaForallContainsAddHeadPreserves!174 (t!357766 (toList!4352 lt!1702718)) lt!1703202 (h!56543 (toList!4352 lt!1702718))))))

(assert (=> b!4527140 (forall!10294 lt!1703202 lambda!173731)))

(declare-fun lt!1703205 () Unit!96156)

(assert (=> b!4527140 (= lt!1703205 lt!1703203)))

(declare-fun b!4527138 () Bool)

(declare-fun Unit!96225 () Unit!96156)

(assert (=> b!4527138 (= e!2820736 Unit!96225)))

(declare-fun d!1396420 () Bool)

(assert (=> d!1396420 e!2820738))

(declare-fun res!1884976 () Bool)

(assert (=> d!1396420 (=> (not res!1884976) (not e!2820738))))

(assert (=> d!1396420 (= res!1884976 (noDuplicate!753 lt!1703207))))

(assert (=> d!1396420 (= lt!1703207 e!2820739)))

(declare-fun c!772850 () Bool)

(assert (=> d!1396420 (= c!772850 ((_ is Cons!50680) (toList!4352 lt!1702718)))))

(assert (=> d!1396420 (invariantList!1027 (toList!4352 lt!1702718))))

(assert (=> d!1396420 (= (getKeysList!475 (toList!4352 lt!1702718)) lt!1703207)))

(assert (= (and d!1396420 c!772850) b!4527140))

(assert (= (and d!1396420 (not c!772850)) b!4527133))

(assert (= (and b!4527140 c!772851) b!4527132))

(assert (= (and b!4527140 (not c!772851)) b!4527139))

(assert (= (and b!4527140 c!772849) b!4527134))

(assert (= (and b!4527140 (not c!772849)) b!4527138))

(assert (= (and d!1396420 res!1884976) b!4527137))

(assert (= (and b!4527137 res!1884975) b!4527135))

(assert (= (and b!4527135 res!1884974) b!4527136))

(declare-fun m!5281213 () Bool)

(assert (=> b!4527135 m!5281213))

(declare-fun m!5281215 () Bool)

(assert (=> d!1396420 m!5281215))

(declare-fun m!5281217 () Bool)

(assert (=> d!1396420 m!5281217))

(declare-fun m!5281219 () Bool)

(assert (=> b!4527136 m!5281219))

(declare-fun m!5281221 () Bool)

(assert (=> b!4527136 m!5281221))

(assert (=> b!4527136 m!5281221))

(declare-fun m!5281223 () Bool)

(assert (=> b!4527136 m!5281223))

(declare-fun m!5281225 () Bool)

(assert (=> b!4527137 m!5281225))

(declare-fun m!5281227 () Bool)

(assert (=> b!4527137 m!5281227))

(declare-fun m!5281229 () Bool)

(assert (=> b!4527140 m!5281229))

(declare-fun m!5281231 () Bool)

(assert (=> b!4527140 m!5281231))

(assert (=> b!4527140 m!5281229))

(declare-fun m!5281233 () Bool)

(assert (=> b!4527140 m!5281233))

(declare-fun m!5281235 () Bool)

(assert (=> b!4527140 m!5281235))

(declare-fun m!5281237 () Bool)

(assert (=> b!4527140 m!5281237))

(assert (=> b!4527134 m!5281229))

(assert (=> b!4527134 m!5281229))

(declare-fun m!5281239 () Bool)

(assert (=> b!4527134 m!5281239))

(assert (=> b!4527005 d!1396420))

(declare-fun d!1396428 () Bool)

(declare-fun lt!1703211 () Bool)

(assert (=> d!1396428 (= lt!1703211 (select (content!8387 (_2!28856 lt!1702727)) (get!16618 lt!1703166)))))

(declare-fun e!2820748 () Bool)

(assert (=> d!1396428 (= lt!1703211 e!2820748)))

(declare-fun res!1884986 () Bool)

(assert (=> d!1396428 (=> (not res!1884986) (not e!2820748))))

(assert (=> d!1396428 (= res!1884986 ((_ is Cons!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396428 (= (contains!13433 (_2!28856 lt!1702727) (get!16618 lt!1703166)) lt!1703211)))

(declare-fun b!4527151 () Bool)

(declare-fun e!2820749 () Bool)

(assert (=> b!4527151 (= e!2820748 e!2820749)))

(declare-fun res!1884985 () Bool)

(assert (=> b!4527151 (=> res!1884985 e!2820749)))

(assert (=> b!4527151 (= res!1884985 (= (h!56543 (_2!28856 lt!1702727)) (get!16618 lt!1703166)))))

(declare-fun b!4527152 () Bool)

(assert (=> b!4527152 (= e!2820749 (contains!13433 (t!357766 (_2!28856 lt!1702727)) (get!16618 lt!1703166)))))

(assert (= (and d!1396428 res!1884986) b!4527151))

(assert (= (and b!4527151 (not res!1884985)) b!4527152))

(declare-fun m!5281245 () Bool)

(assert (=> d!1396428 m!5281245))

(assert (=> d!1396428 m!5281127))

(declare-fun m!5281249 () Bool)

(assert (=> d!1396428 m!5281249))

(assert (=> b!4527152 m!5281127))

(declare-fun m!5281251 () Bool)

(assert (=> b!4527152 m!5281251))

(assert (=> b!4527041 d!1396428))

(declare-fun d!1396436 () Bool)

(assert (=> d!1396436 (= (get!16618 lt!1703166) (v!44770 lt!1703166))))

(assert (=> b!4527041 d!1396436))

(declare-fun d!1396438 () Bool)

(declare-fun c!772856 () Bool)

(assert (=> d!1396438 (= c!772856 ((_ is Nil!50680) (toList!4352 lt!1702734)))))

(declare-fun e!2820754 () (InoxSet tuple2!51122))

(assert (=> d!1396438 (= (content!8387 (toList!4352 lt!1702734)) e!2820754)))

(declare-fun b!4527161 () Bool)

(assert (=> b!4527161 (= e!2820754 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527162 () Bool)

(assert (=> b!4527162 (= e!2820754 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702734)) true) (content!8387 (t!357766 (toList!4352 lt!1702734)))))))

(assert (= (and d!1396438 c!772856) b!4527161))

(assert (= (and d!1396438 (not c!772856)) b!4527162))

(declare-fun m!5281253 () Bool)

(assert (=> b!4527162 m!5281253))

(declare-fun m!5281255 () Bool)

(assert (=> b!4527162 m!5281255))

(assert (=> d!1396294 d!1396438))

(declare-fun d!1396440 () Bool)

(declare-fun c!772857 () Bool)

(assert (=> d!1396440 (= c!772857 ((_ is Nil!50680) (toList!4352 lt!1702739)))))

(declare-fun e!2820755 () (InoxSet tuple2!51122))

(assert (=> d!1396440 (= (content!8387 (toList!4352 lt!1702739)) e!2820755)))

(declare-fun b!4527163 () Bool)

(assert (=> b!4527163 (= e!2820755 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527164 () Bool)

(assert (=> b!4527164 (= e!2820755 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702739)) true) (content!8387 (t!357766 (toList!4352 lt!1702739)))))))

(assert (= (and d!1396440 c!772857) b!4527163))

(assert (= (and d!1396440 (not c!772857)) b!4527164))

(declare-fun m!5281257 () Bool)

(assert (=> b!4527164 m!5281257))

(declare-fun m!5281259 () Bool)

(assert (=> b!4527164 m!5281259))

(assert (=> d!1396294 d!1396440))

(assert (=> b!4526847 d!1396270))

(declare-fun d!1396442 () Bool)

(declare-fun res!1884987 () Bool)

(declare-fun e!2820756 () Bool)

(assert (=> d!1396442 (=> res!1884987 e!2820756)))

(assert (=> d!1396442 (= res!1884987 (and ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))) (= (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(assert (=> d!1396442 (= (containsKey!1812 (t!357766 (_2!28856 lt!1702727)) (_1!28855 (h!56543 (_2!28856 lt!1702727)))) e!2820756)))

(declare-fun b!4527165 () Bool)

(declare-fun e!2820757 () Bool)

(assert (=> b!4527165 (= e!2820756 e!2820757)))

(declare-fun res!1884988 () Bool)

(assert (=> b!4527165 (=> (not res!1884988) (not e!2820757))))

(assert (=> b!4527165 (= res!1884988 ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))))))

(declare-fun b!4527166 () Bool)

(assert (=> b!4527166 (= e!2820757 (containsKey!1812 (t!357766 (t!357766 (_2!28856 lt!1702727))) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (= (and d!1396442 (not res!1884987)) b!4527165))

(assert (= (and b!4527165 res!1884988) b!4527166))

(declare-fun m!5281261 () Bool)

(assert (=> b!4527166 m!5281261))

(assert (=> b!4526692 d!1396442))

(declare-fun d!1396444 () Bool)

(declare-fun c!772861 () Bool)

(assert (=> d!1396444 (= c!772861 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(declare-fun e!2820761 () (InoxSet tuple2!51124))

(assert (=> d!1396444 (= (content!8385 (toList!4351 lm!1477)) e!2820761)))

(declare-fun b!4527173 () Bool)

(assert (=> b!4527173 (= e!2820761 ((as const (Array tuple2!51124 Bool)) false))))

(declare-fun b!4527174 () Bool)

(assert (=> b!4527174 (= e!2820761 ((_ map or) (store ((as const (Array tuple2!51124 Bool)) false) (h!56544 (toList!4351 lm!1477)) true) (content!8385 (t!357767 (toList!4351 lm!1477)))))))

(assert (= (and d!1396444 c!772861) b!4527173))

(assert (= (and d!1396444 (not c!772861)) b!4527174))

(declare-fun m!5281265 () Bool)

(assert (=> b!4527174 m!5281265))

(assert (=> b!4527174 m!5280345))

(assert (=> d!1396270 d!1396444))

(declare-fun d!1396448 () Bool)

(declare-fun res!1884989 () Bool)

(declare-fun e!2820762 () Bool)

(assert (=> d!1396448 (=> res!1884989 e!2820762)))

(assert (=> d!1396448 (= res!1884989 ((_ is Nil!50680) (toList!4352 lt!1702724)))))

(assert (=> d!1396448 (= (forall!10293 (toList!4352 lt!1702724) (ite c!772821 lambda!173700 lambda!173702)) e!2820762)))

(declare-fun b!4527175 () Bool)

(declare-fun e!2820763 () Bool)

(assert (=> b!4527175 (= e!2820762 e!2820763)))

(declare-fun res!1884990 () Bool)

(assert (=> b!4527175 (=> (not res!1884990) (not e!2820763))))

(assert (=> b!4527175 (= res!1884990 (dynLambda!21181 (ite c!772821 lambda!173700 lambda!173702) (h!56543 (toList!4352 lt!1702724))))))

(declare-fun b!4527176 () Bool)

(assert (=> b!4527176 (= e!2820763 (forall!10293 (t!357766 (toList!4352 lt!1702724)) (ite c!772821 lambda!173700 lambda!173702)))))

(assert (= (and d!1396448 (not res!1884989)) b!4527175))

(assert (= (and b!4527175 res!1884990) b!4527176))

(declare-fun b_lambda!155977 () Bool)

(assert (=> (not b_lambda!155977) (not b!4527175)))

(declare-fun m!5281267 () Bool)

(assert (=> b!4527175 m!5281267))

(declare-fun m!5281269 () Bool)

(assert (=> b!4527176 m!5281269))

(assert (=> bm!315495 d!1396448))

(declare-fun d!1396450 () Bool)

(assert (=> d!1396450 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(declare-fun lt!1703216 () Unit!96156)

(declare-fun choose!29662 (List!50804 K!12070) Unit!96156)

(assert (=> d!1396450 (= lt!1703216 (choose!29662 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> d!1396450 (invariantList!1027 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396450 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) lt!1703216)))

(declare-fun bs!862399 () Bool)

(assert (= bs!862399 d!1396450))

(assert (=> bs!862399 m!5280467))

(assert (=> bs!862399 m!5280467))

(assert (=> bs!862399 m!5280469))

(declare-fun m!5281271 () Bool)

(assert (=> bs!862399 m!5281271))

(declare-fun m!5281273 () Bool)

(assert (=> bs!862399 m!5281273))

(assert (=> b!4526743 d!1396450))

(declare-fun d!1396452 () Bool)

(declare-fun isEmpty!28700 (Option!11143) Bool)

(assert (=> d!1396452 (= (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287)) (not (isEmpty!28700 (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))))

(declare-fun bs!862401 () Bool)

(assert (= bs!862401 d!1396452))

(assert (=> bs!862401 m!5280467))

(declare-fun m!5281279 () Bool)

(assert (=> bs!862401 m!5281279))

(assert (=> b!4526743 d!1396452))

(declare-fun b!4527187 () Bool)

(declare-fun e!2820769 () Option!11143)

(assert (=> b!4527187 (= e!2820769 (getValueByKey!1113 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(declare-fun b!4527186 () Bool)

(declare-fun e!2820768 () Option!11143)

(assert (=> b!4527186 (= e!2820768 e!2820769)))

(declare-fun c!772867 () Bool)

(assert (=> b!4527186 (= c!772867 (and ((_ is Cons!50680) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (not (= (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) key!3287))))))

(declare-fun b!4527188 () Bool)

(assert (=> b!4527188 (= e!2820769 None!11142)))

(declare-fun b!4527185 () Bool)

(assert (=> b!4527185 (= e!2820768 (Some!11142 (_2!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun d!1396456 () Bool)

(declare-fun c!772866 () Bool)

(assert (=> d!1396456 (= c!772866 (and ((_ is Cons!50680) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) key!3287)))))

(assert (=> d!1396456 (= (getValueByKey!1113 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) e!2820768)))

(assert (= (and d!1396456 c!772866) b!4527185))

(assert (= (and d!1396456 (not c!772866)) b!4527186))

(assert (= (and b!4527186 c!772867) b!4527187))

(assert (= (and b!4527186 (not c!772867)) b!4527188))

(declare-fun m!5281283 () Bool)

(assert (=> b!4527187 m!5281283))

(assert (=> b!4526743 d!1396456))

(declare-fun d!1396460 () Bool)

(assert (=> d!1396460 (contains!13431 (getKeysList!475 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287)))

(declare-fun lt!1703220 () Unit!96156)

(declare-fun choose!29663 (List!50804 K!12070) Unit!96156)

(assert (=> d!1396460 (= lt!1703220 (choose!29663 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> d!1396460 (invariantList!1027 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396460 (= (lemmaInListThenGetKeysListContains!471 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) lt!1703220)))

(declare-fun bs!862403 () Bool)

(assert (= bs!862403 d!1396460))

(assert (=> bs!862403 m!5280465))

(assert (=> bs!862403 m!5280465))

(declare-fun m!5281285 () Bool)

(assert (=> bs!862403 m!5281285))

(declare-fun m!5281287 () Bool)

(assert (=> bs!862403 m!5281287))

(assert (=> bs!862403 m!5281273))

(assert (=> b!4526743 d!1396460))

(declare-fun d!1396462 () Bool)

(declare-fun res!1884995 () Bool)

(declare-fun e!2820780 () Bool)

(assert (=> d!1396462 (=> res!1884995 e!2820780)))

(assert (=> d!1396462 (= res!1884995 (and ((_ is Cons!50680) (toList!4352 lt!1702718)) (= (_1!28855 (h!56543 (toList!4352 lt!1702718))) key!3287)))))

(assert (=> d!1396462 (= (containsKey!1814 (toList!4352 lt!1702718) key!3287) e!2820780)))

(declare-fun b!4527205 () Bool)

(declare-fun e!2820781 () Bool)

(assert (=> b!4527205 (= e!2820780 e!2820781)))

(declare-fun res!1884996 () Bool)

(assert (=> b!4527205 (=> (not res!1884996) (not e!2820781))))

(assert (=> b!4527205 (= res!1884996 ((_ is Cons!50680) (toList!4352 lt!1702718)))))

(declare-fun b!4527206 () Bool)

(assert (=> b!4527206 (= e!2820781 (containsKey!1814 (t!357766 (toList!4352 lt!1702718)) key!3287))))

(assert (= (and d!1396462 (not res!1884995)) b!4527205))

(assert (= (and b!4527205 res!1884996) b!4527206))

(declare-fun m!5281291 () Bool)

(assert (=> b!4527206 m!5281291))

(assert (=> b!4527009 d!1396462))

(declare-fun d!1396466 () Bool)

(assert (=> d!1396466 (containsKey!1814 (toList!4352 lt!1702718) key!3287)))

(declare-fun lt!1703223 () Unit!96156)

(declare-fun choose!29664 (List!50804 K!12070) Unit!96156)

(assert (=> d!1396466 (= lt!1703223 (choose!29664 (toList!4352 lt!1702718) key!3287))))

(assert (=> d!1396466 (invariantList!1027 (toList!4352 lt!1702718))))

(assert (=> d!1396466 (= (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1702718) key!3287) lt!1703223)))

(declare-fun bs!862404 () Bool)

(assert (= bs!862404 d!1396466))

(assert (=> bs!862404 m!5281051))

(declare-fun m!5281293 () Bool)

(assert (=> bs!862404 m!5281293))

(assert (=> bs!862404 m!5281217))

(assert (=> b!4527009 d!1396466))

(declare-fun d!1396468 () Bool)

(declare-fun res!1884997 () Bool)

(declare-fun e!2820782 () Bool)

(assert (=> d!1396468 (=> res!1884997 e!2820782)))

(assert (=> d!1396468 (= res!1884997 (and ((_ is Cons!50680) lt!1702996) (= (_1!28855 (h!56543 lt!1702996)) key!3287)))))

(assert (=> d!1396468 (= (containsKey!1812 lt!1702996 key!3287) e!2820782)))

(declare-fun b!4527207 () Bool)

(declare-fun e!2820783 () Bool)

(assert (=> b!4527207 (= e!2820782 e!2820783)))

(declare-fun res!1884998 () Bool)

(assert (=> b!4527207 (=> (not res!1884998) (not e!2820783))))

(assert (=> b!4527207 (= res!1884998 ((_ is Cons!50680) lt!1702996))))

(declare-fun b!4527208 () Bool)

(assert (=> b!4527208 (= e!2820783 (containsKey!1812 (t!357766 lt!1702996) key!3287))))

(assert (= (and d!1396468 (not res!1884997)) b!4527207))

(assert (= (and b!4527207 res!1884998) b!4527208))

(declare-fun m!5281295 () Bool)

(assert (=> b!4527208 m!5281295))

(assert (=> d!1396272 d!1396468))

(declare-fun d!1396470 () Bool)

(declare-fun res!1884999 () Bool)

(declare-fun e!2820784 () Bool)

(assert (=> d!1396470 (=> res!1884999 e!2820784)))

(assert (=> d!1396470 (= res!1884999 (not ((_ is Cons!50680) lt!1702716)))))

(assert (=> d!1396470 (= (noDuplicateKeys!1172 lt!1702716) e!2820784)))

(declare-fun b!4527209 () Bool)

(declare-fun e!2820785 () Bool)

(assert (=> b!4527209 (= e!2820784 e!2820785)))

(declare-fun res!1885000 () Bool)

(assert (=> b!4527209 (=> (not res!1885000) (not e!2820785))))

(assert (=> b!4527209 (= res!1885000 (not (containsKey!1812 (t!357766 lt!1702716) (_1!28855 (h!56543 lt!1702716)))))))

(declare-fun b!4527210 () Bool)

(assert (=> b!4527210 (= e!2820785 (noDuplicateKeys!1172 (t!357766 lt!1702716)))))

(assert (= (and d!1396470 (not res!1884999)) b!4527209))

(assert (= (and b!4527209 res!1885000) b!4527210))

(declare-fun m!5281297 () Bool)

(assert (=> b!4527209 m!5281297))

(declare-fun m!5281299 () Bool)

(assert (=> b!4527210 m!5281299))

(assert (=> d!1396272 d!1396470))

(declare-fun d!1396472 () Bool)

(declare-fun res!1885001 () Bool)

(declare-fun e!2820786 () Bool)

(assert (=> d!1396472 (=> res!1885001 e!2820786)))

(assert (=> d!1396472 (= res!1885001 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396472 (= (forall!10293 (_2!28856 lt!1702727) lambda!173714) e!2820786)))

(declare-fun b!4527211 () Bool)

(declare-fun e!2820787 () Bool)

(assert (=> b!4527211 (= e!2820786 e!2820787)))

(declare-fun res!1885002 () Bool)

(assert (=> b!4527211 (=> (not res!1885002) (not e!2820787))))

(assert (=> b!4527211 (= res!1885002 (dynLambda!21181 lambda!173714 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun b!4527212 () Bool)

(assert (=> b!4527212 (= e!2820787 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173714))))

(assert (= (and d!1396472 (not res!1885001)) b!4527211))

(assert (= (and b!4527211 res!1885002) b!4527212))

(declare-fun b_lambda!155979 () Bool)

(assert (=> (not b_lambda!155979) (not b!4527211)))

(declare-fun m!5281301 () Bool)

(assert (=> b!4527211 m!5281301))

(declare-fun m!5281303 () Bool)

(assert (=> b!4527212 m!5281303))

(assert (=> d!1396390 d!1396472))

(assert (=> d!1396390 d!1396186))

(declare-fun d!1396474 () Bool)

(declare-fun res!1885003 () Bool)

(declare-fun e!2820788 () Bool)

(assert (=> d!1396474 (=> res!1885003 e!2820788)))

(assert (=> d!1396474 (= res!1885003 (and ((_ is Cons!50680) (_2!28856 (h!56544 (toList!4351 lt!1702722)))) (= (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))) key!3287)))))

(assert (=> d!1396474 (= (containsKey!1812 (_2!28856 (h!56544 (toList!4351 lt!1702722))) key!3287) e!2820788)))

(declare-fun b!4527213 () Bool)

(declare-fun e!2820789 () Bool)

(assert (=> b!4527213 (= e!2820788 e!2820789)))

(declare-fun res!1885004 () Bool)

(assert (=> b!4527213 (=> (not res!1885004) (not e!2820789))))

(assert (=> b!4527213 (= res!1885004 ((_ is Cons!50680) (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(declare-fun b!4527214 () Bool)

(assert (=> b!4527214 (= e!2820789 (containsKey!1812 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702722)))) key!3287))))

(assert (= (and d!1396474 (not res!1885003)) b!4527213))

(assert (= (and b!4527213 res!1885004) b!4527214))

(declare-fun m!5281305 () Bool)

(assert (=> b!4527214 m!5281305))

(assert (=> b!4526774 d!1396474))

(assert (=> d!1396378 d!1396462))

(declare-fun d!1396476 () Bool)

(assert (=> d!1396476 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344))))

(declare-fun lt!1703229 () Unit!96156)

(declare-fun choose!29666 (List!50805 (_ BitVec 64)) Unit!96156)

(assert (=> d!1396476 (= lt!1703229 (choose!29666 (toList!4351 lt!1702722) hash!344))))

(declare-fun e!2820794 () Bool)

(assert (=> d!1396476 e!2820794))

(declare-fun res!1885009 () Bool)

(assert (=> d!1396476 (=> (not res!1885009) (not e!2820794))))

(assert (=> d!1396476 (= res!1885009 (isStrictlySorted!440 (toList!4351 lt!1702722)))))

(assert (=> d!1396476 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702722) hash!344) lt!1703229)))

(declare-fun b!4527219 () Bool)

(assert (=> b!4527219 (= e!2820794 (containsKey!1815 (toList!4351 lt!1702722) hash!344))))

(assert (= (and d!1396476 res!1885009) b!4527219))

(assert (=> d!1396476 m!5280535))

(assert (=> d!1396476 m!5280535))

(assert (=> d!1396476 m!5280537))

(declare-fun m!5281313 () Bool)

(assert (=> d!1396476 m!5281313))

(declare-fun m!5281315 () Bool)

(assert (=> d!1396476 m!5281315))

(assert (=> b!4527219 m!5280531))

(assert (=> b!4526789 d!1396476))

(declare-fun d!1396482 () Bool)

(declare-fun isEmpty!28702 (Option!11142) Bool)

(assert (=> d!1396482 (= (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344)) (not (isEmpty!28702 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344))))))

(declare-fun bs!862406 () Bool)

(assert (= bs!862406 d!1396482))

(assert (=> bs!862406 m!5280535))

(declare-fun m!5281317 () Bool)

(assert (=> bs!862406 m!5281317))

(assert (=> b!4526789 d!1396482))

(declare-fun b!4527233 () Bool)

(declare-fun e!2820802 () Option!11142)

(assert (=> b!4527233 (= e!2820802 None!11141)))

(declare-fun b!4527230 () Bool)

(declare-fun e!2820801 () Option!11142)

(assert (=> b!4527230 (= e!2820801 (Some!11141 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(declare-fun b!4527231 () Bool)

(assert (=> b!4527231 (= e!2820801 e!2820802)))

(declare-fun c!772879 () Bool)

(assert (=> b!4527231 (= c!772879 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (not (= (_1!28856 (h!56544 (toList!4351 lt!1702722))) hash!344))))))

(declare-fun b!4527232 () Bool)

(assert (=> b!4527232 (= e!2820802 (getValueByKey!1112 (t!357767 (toList!4351 lt!1702722)) hash!344))))

(declare-fun d!1396484 () Bool)

(declare-fun c!772878 () Bool)

(assert (=> d!1396484 (= c!772878 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (= (_1!28856 (h!56544 (toList!4351 lt!1702722))) hash!344)))))

(assert (=> d!1396484 (= (getValueByKey!1112 (toList!4351 lt!1702722) hash!344) e!2820801)))

(assert (= (and d!1396484 c!772878) b!4527230))

(assert (= (and d!1396484 (not c!772878)) b!4527231))

(assert (= (and b!4527231 c!772879) b!4527232))

(assert (= (and b!4527231 (not c!772879)) b!4527233))

(declare-fun m!5281319 () Bool)

(assert (=> b!4527232 m!5281319))

(assert (=> b!4526789 d!1396484))

(declare-fun d!1396486 () Bool)

(assert (=> d!1396486 (dynLambda!21178 lambda!173583 lt!1702730)))

(assert (=> d!1396486 true))

(declare-fun _$7!1874 () Unit!96156)

(assert (=> d!1396486 (= (choose!29644 (toList!4351 lm!1477) lambda!173583 lt!1702730) _$7!1874)))

(declare-fun b_lambda!155981 () Bool)

(assert (=> (not b_lambda!155981) (not d!1396486)))

(declare-fun bs!862407 () Bool)

(assert (= bs!862407 d!1396486))

(assert (=> bs!862407 m!5280755))

(assert (=> d!1396264 d!1396486))

(assert (=> d!1396264 d!1396168))

(declare-fun d!1396490 () Bool)

(assert (=> d!1396490 (= (get!16620 (getValueByKey!1112 (toList!4351 lm!1477) hash!344)) (v!44777 (getValueByKey!1112 (toList!4351 lm!1477) hash!344)))))

(assert (=> d!1396266 d!1396490))

(declare-fun b!4527238 () Bool)

(declare-fun e!2820805 () Option!11142)

(assert (=> b!4527238 (= e!2820805 None!11141)))

(declare-fun b!4527235 () Bool)

(declare-fun e!2820804 () Option!11142)

(assert (=> b!4527235 (= e!2820804 (Some!11141 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(declare-fun b!4527236 () Bool)

(assert (=> b!4527236 (= e!2820804 e!2820805)))

(declare-fun c!772881 () Bool)

(assert (=> b!4527236 (= c!772881 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (not (= (_1!28856 (h!56544 (toList!4351 lm!1477))) hash!344))))))

(declare-fun b!4527237 () Bool)

(assert (=> b!4527237 (= e!2820805 (getValueByKey!1112 (t!357767 (toList!4351 lm!1477)) hash!344))))

(declare-fun d!1396492 () Bool)

(declare-fun c!772880 () Bool)

(assert (=> d!1396492 (= c!772880 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (= (_1!28856 (h!56544 (toList!4351 lm!1477))) hash!344)))))

(assert (=> d!1396492 (= (getValueByKey!1112 (toList!4351 lm!1477) hash!344) e!2820804)))

(assert (= (and d!1396492 c!772880) b!4527235))

(assert (= (and d!1396492 (not c!772880)) b!4527236))

(assert (= (and b!4527236 c!772881) b!4527237))

(assert (= (and b!4527236 (not c!772881)) b!4527238))

(declare-fun m!5281327 () Bool)

(assert (=> b!4527237 m!5281327))

(assert (=> d!1396266 d!1396492))

(declare-fun d!1396496 () Bool)

(declare-fun res!1885013 () Bool)

(declare-fun e!2820808 () Bool)

(assert (=> d!1396496 (=> res!1885013 e!2820808)))

(assert (=> d!1396496 (= res!1885013 ((_ is Nil!50681) (t!357767 (toList!4351 lm!1477))))))

(assert (=> d!1396496 (= (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173583) e!2820808)))

(declare-fun b!4527243 () Bool)

(declare-fun e!2820809 () Bool)

(assert (=> b!4527243 (= e!2820808 e!2820809)))

(declare-fun res!1885014 () Bool)

(assert (=> b!4527243 (=> (not res!1885014) (not e!2820809))))

(assert (=> b!4527243 (= res!1885014 (dynLambda!21178 lambda!173583 (h!56544 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun b!4527244 () Bool)

(assert (=> b!4527244 (= e!2820809 (forall!10291 (t!357767 (t!357767 (toList!4351 lm!1477))) lambda!173583))))

(assert (= (and d!1396496 (not res!1885013)) b!4527243))

(assert (= (and b!4527243 res!1885014) b!4527244))

(declare-fun b_lambda!155983 () Bool)

(assert (=> (not b_lambda!155983) (not b!4527243)))

(declare-fun m!5281329 () Bool)

(assert (=> b!4527243 m!5281329))

(declare-fun m!5281331 () Bool)

(assert (=> b!4527244 m!5281331))

(assert (=> b!4526650 d!1396496))

(declare-fun bs!862412 () Bool)

(declare-fun d!1396498 () Bool)

(assert (= bs!862412 (and d!1396498 d!1396296)))

(declare-fun lambda!173736 () Int)

(assert (=> bs!862412 (= (= lt!1702713 lt!1703123) (= lambda!173736 lambda!173703))))

(declare-fun bs!862413 () Bool)

(assert (= bs!862413 (and d!1396498 b!4526999)))

(assert (=> bs!862413 (= (= lt!1702713 lt!1702724) (= lambda!173736 lambda!173701))))

(declare-fun bs!862414 () Bool)

(assert (= bs!862414 (and d!1396498 b!4527019)))

(assert (=> bs!862414 (= (= lt!1702713 lt!1703158) (= lambda!173736 lambda!173713))))

(assert (=> bs!862413 (= (= lt!1702713 lt!1703122) (= lambda!173736 lambda!173702))))

(declare-fun bs!862415 () Bool)

(assert (= bs!862415 (and d!1396498 d!1396260)))

(assert (=> bs!862415 (not (= lambda!173736 lambda!173651))))

(declare-fun bs!862416 () Bool)

(assert (= bs!862416 (and d!1396498 b!4526608)))

(assert (=> bs!862416 (not (= lambda!173736 lambda!173585))))

(declare-fun bs!862417 () Bool)

(assert (= bs!862417 (and d!1396498 b!4527017)))

(assert (=> bs!862417 (= lambda!173736 lambda!173711)))

(declare-fun bs!862418 () Bool)

(assert (= bs!862418 (and d!1396498 d!1396390)))

(assert (=> bs!862418 (= (= lt!1702713 lt!1703159) (= lambda!173736 lambda!173714))))

(declare-fun bs!862419 () Bool)

(assert (= bs!862419 (and d!1396498 b!4526997)))

(assert (=> bs!862419 (= (= lt!1702713 lt!1702724) (= lambda!173736 lambda!173700))))

(assert (=> bs!862414 (= lambda!173736 lambda!173712)))

(assert (=> d!1396498 true))

(assert (=> d!1396498 (forall!10293 (toList!4352 lt!1702713) lambda!173736)))

(declare-fun lt!1703237 () Unit!96156)

(declare-fun choose!29669 (ListMap!3613) Unit!96156)

(assert (=> d!1396498 (= lt!1703237 (choose!29669 lt!1702713))))

(assert (=> d!1396498 (= (lemmaContainsAllItsOwnKeys!348 lt!1702713) lt!1703237)))

(declare-fun bs!862421 () Bool)

(assert (= bs!862421 d!1396498))

(declare-fun m!5281367 () Bool)

(assert (=> bs!862421 m!5281367))

(declare-fun m!5281369 () Bool)

(assert (=> bs!862421 m!5281369))

(assert (=> bm!315498 d!1396498))

(declare-fun d!1396520 () Bool)

(assert (=> d!1396520 (= (isEmpty!28697 (toList!4351 lm!1477)) ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396382 d!1396520))

(declare-fun d!1396522 () Bool)

(declare-fun res!1885023 () Bool)

(declare-fun e!2820823 () Bool)

(assert (=> d!1396522 (=> res!1885023 e!2820823)))

(assert (=> d!1396522 (= res!1885023 (and ((_ is Cons!50680) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) key!3287)))))

(assert (=> d!1396522 (= (containsKey!1814 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) e!2820823)))

(declare-fun b!4527265 () Bool)

(declare-fun e!2820824 () Bool)

(assert (=> b!4527265 (= e!2820823 e!2820824)))

(declare-fun res!1885024 () Bool)

(assert (=> b!4527265 (=> (not res!1885024) (not e!2820824))))

(assert (=> b!4527265 (= res!1885024 ((_ is Cons!50680) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))

(declare-fun b!4527266 () Bool)

(assert (=> b!4527266 (= e!2820824 (containsKey!1814 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(assert (= (and d!1396522 (not res!1885023)) b!4527265))

(assert (= (and b!4527265 res!1885024) b!4527266))

(declare-fun m!5281371 () Bool)

(assert (=> b!4527266 m!5281371))

(assert (=> d!1396190 d!1396522))

(declare-fun d!1396524 () Bool)

(declare-fun lt!1703239 () Bool)

(assert (=> d!1396524 (= lt!1703239 (select (content!8386 (keys!17616 lt!1702732)) key!3287))))

(declare-fun e!2820826 () Bool)

(assert (=> d!1396524 (= lt!1703239 e!2820826)))

(declare-fun res!1885025 () Bool)

(assert (=> d!1396524 (=> (not res!1885025) (not e!2820826))))

(assert (=> d!1396524 (= res!1885025 ((_ is Cons!50683) (keys!17616 lt!1702732)))))

(assert (=> d!1396524 (= (contains!13431 (keys!17616 lt!1702732) key!3287) lt!1703239)))

(declare-fun b!4527267 () Bool)

(declare-fun e!2820825 () Bool)

(assert (=> b!4527267 (= e!2820826 e!2820825)))

(declare-fun res!1885026 () Bool)

(assert (=> b!4527267 (=> res!1885026 e!2820825)))

(assert (=> b!4527267 (= res!1885026 (= (h!56548 (keys!17616 lt!1702732)) key!3287))))

(declare-fun b!4527268 () Bool)

(assert (=> b!4527268 (= e!2820825 (contains!13431 (t!357769 (keys!17616 lt!1702732)) key!3287))))

(assert (= (and d!1396524 res!1885025) b!4527267))

(assert (= (and b!4527267 (not res!1885026)) b!4527268))

(assert (=> d!1396524 m!5280503))

(assert (=> d!1396524 m!5280579))

(declare-fun m!5281373 () Bool)

(assert (=> d!1396524 m!5281373))

(declare-fun m!5281375 () Bool)

(assert (=> b!4527268 m!5281375))

(assert (=> b!4526756 d!1396524))

(declare-fun bs!862422 () Bool)

(declare-fun b!4527270 () Bool)

(assert (= bs!862422 (and b!4527270 b!4527086)))

(declare-fun lambda!173737 () Int)

(assert (=> bs!862422 (= (= (toList!4352 lt!1702732) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173737 lambda!173720))))

(declare-fun bs!862423 () Bool)

(assert (= bs!862423 (and b!4527270 b!4527134)))

(assert (=> bs!862423 (= (= (toList!4352 lt!1702732) (t!357766 (toList!4352 lt!1702718))) (= lambda!173737 lambda!173730))))

(declare-fun bs!862424 () Bool)

(assert (= bs!862424 (and b!4527270 b!4527140)))

(assert (=> bs!862424 (= (= (toList!4352 lt!1702732) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173737 lambda!173731))))

(declare-fun bs!862425 () Bool)

(assert (= bs!862425 (and b!4527270 b!4527135)))

(assert (=> bs!862425 (= (= (toList!4352 lt!1702732) (toList!4352 lt!1702718)) (= lambda!173737 lambda!173732))))

(assert (=> b!4527270 true))

(declare-fun bs!862426 () Bool)

(declare-fun b!4527271 () Bool)

(assert (= bs!862426 (and b!4527271 b!4527087)))

(declare-fun lambda!173738 () Int)

(assert (=> bs!862426 (= lambda!173738 lambda!173721)))

(declare-fun bs!862427 () Bool)

(assert (= bs!862427 (and b!4527271 b!4527136)))

(assert (=> bs!862427 (= lambda!173738 lambda!173733)))

(declare-fun d!1396526 () Bool)

(declare-fun e!2820827 () Bool)

(assert (=> d!1396526 e!2820827))

(declare-fun res!1885029 () Bool)

(assert (=> d!1396526 (=> (not res!1885029) (not e!2820827))))

(declare-fun lt!1703240 () List!50807)

(assert (=> d!1396526 (= res!1885029 (noDuplicate!753 lt!1703240))))

(assert (=> d!1396526 (= lt!1703240 (getKeysList!475 (toList!4352 lt!1702732)))))

(assert (=> d!1396526 (= (keys!17616 lt!1702732) lt!1703240)))

(declare-fun b!4527269 () Bool)

(declare-fun res!1885027 () Bool)

(assert (=> b!4527269 (=> (not res!1885027) (not e!2820827))))

(assert (=> b!4527269 (= res!1885027 (= (length!362 lt!1703240) (length!363 (toList!4352 lt!1702732))))))

(declare-fun res!1885028 () Bool)

(assert (=> b!4527270 (=> (not res!1885028) (not e!2820827))))

(assert (=> b!4527270 (= res!1885028 (forall!10294 lt!1703240 lambda!173737))))

(assert (=> b!4527271 (= e!2820827 (= (content!8386 lt!1703240) (content!8386 (map!11150 (toList!4352 lt!1702732) lambda!173738))))))

(assert (= (and d!1396526 res!1885029) b!4527269))

(assert (= (and b!4527269 res!1885027) b!4527270))

(assert (= (and b!4527270 res!1885028) b!4527271))

(declare-fun m!5281377 () Bool)

(assert (=> d!1396526 m!5281377))

(assert (=> d!1396526 m!5280507))

(declare-fun m!5281379 () Bool)

(assert (=> b!4527269 m!5281379))

(declare-fun m!5281381 () Bool)

(assert (=> b!4527269 m!5281381))

(declare-fun m!5281383 () Bool)

(assert (=> b!4527270 m!5281383))

(declare-fun m!5281385 () Bool)

(assert (=> b!4527271 m!5281385))

(declare-fun m!5281387 () Bool)

(assert (=> b!4527271 m!5281387))

(assert (=> b!4527271 m!5281387))

(declare-fun m!5281389 () Bool)

(assert (=> b!4527271 m!5281389))

(assert (=> b!4526756 d!1396526))

(declare-fun d!1396528 () Bool)

(declare-fun lt!1703241 () Bool)

(assert (=> d!1396528 (= lt!1703241 (select (content!8385 (toList!4351 lt!1702906)) lt!1702727))))

(declare-fun e!2820832 () Bool)

(assert (=> d!1396528 (= lt!1703241 e!2820832)))

(declare-fun res!1885034 () Bool)

(assert (=> d!1396528 (=> (not res!1885034) (not e!2820832))))

(assert (=> d!1396528 (= res!1885034 ((_ is Cons!50681) (toList!4351 lt!1702906)))))

(assert (=> d!1396528 (= (contains!13428 (toList!4351 lt!1702906) lt!1702727) lt!1703241)))

(declare-fun b!4527276 () Bool)

(declare-fun e!2820833 () Bool)

(assert (=> b!4527276 (= e!2820832 e!2820833)))

(declare-fun res!1885035 () Bool)

(assert (=> b!4527276 (=> res!1885035 e!2820833)))

(assert (=> b!4527276 (= res!1885035 (= (h!56544 (toList!4351 lt!1702906)) lt!1702727))))

(declare-fun b!4527277 () Bool)

(assert (=> b!4527277 (= e!2820833 (contains!13428 (t!357767 (toList!4351 lt!1702906)) lt!1702727))))

(assert (= (and d!1396528 res!1885034) b!4527276))

(assert (= (and b!4527276 (not res!1885035)) b!4527277))

(declare-fun m!5281391 () Bool)

(assert (=> d!1396528 m!5281391))

(declare-fun m!5281393 () Bool)

(assert (=> d!1396528 m!5281393))

(declare-fun m!5281395 () Bool)

(assert (=> b!4527277 m!5281395))

(assert (=> b!4526793 d!1396528))

(declare-fun d!1396530 () Bool)

(assert (=> d!1396530 (= (hash!2845 hashF!1107 (_1!28855 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711))))) (hash!2849 hashF!1107 (_1!28855 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711))))))))

(declare-fun bs!862428 () Bool)

(assert (= bs!862428 d!1396530))

(declare-fun m!5281397 () Bool)

(assert (=> bs!862428 m!5281397))

(assert (=> bs!862387 d!1396530))

(declare-fun d!1396532 () Bool)

(assert (=> d!1396532 (= (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728)) (not (isEmpty!28702 (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728))))))

(declare-fun bs!862429 () Bool)

(assert (= bs!862429 d!1396532))

(assert (=> bs!862429 m!5280839))

(declare-fun m!5281399 () Bool)

(assert (=> bs!862429 m!5281399))

(assert (=> b!4526875 d!1396532))

(declare-fun b!4527283 () Bool)

(declare-fun e!2820837 () Option!11142)

(assert (=> b!4527283 (= e!2820837 None!11141)))

(declare-fun b!4527280 () Bool)

(declare-fun e!2820836 () Option!11142)

(assert (=> b!4527280 (= e!2820836 (Some!11141 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(declare-fun b!4527281 () Bool)

(assert (=> b!4527281 (= e!2820836 e!2820837)))

(declare-fun c!772891 () Bool)

(assert (=> b!4527281 (= c!772891 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (not (= (_1!28856 (h!56544 (toList!4351 lm!1477))) lt!1702728))))))

(declare-fun b!4527282 () Bool)

(assert (=> b!4527282 (= e!2820837 (getValueByKey!1112 (t!357767 (toList!4351 lm!1477)) lt!1702728))))

(declare-fun d!1396534 () Bool)

(declare-fun c!772890 () Bool)

(assert (=> d!1396534 (= c!772890 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (= (_1!28856 (h!56544 (toList!4351 lm!1477))) lt!1702728)))))

(assert (=> d!1396534 (= (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728) e!2820836)))

(assert (= (and d!1396534 c!772890) b!4527280))

(assert (= (and d!1396534 (not c!772890)) b!4527281))

(assert (= (and b!4527281 c!772891) b!4527282))

(assert (= (and b!4527281 (not c!772891)) b!4527283))

(declare-fun m!5281401 () Bool)

(assert (=> b!4527282 m!5281401))

(assert (=> b!4526875 d!1396534))

(assert (=> d!1396216 d!1396214))

(declare-fun d!1396536 () Bool)

(assert (=> d!1396536 (containsKeyBiggerList!152 (toList!4351 lt!1702722) key!3287)))

(assert (=> d!1396536 true))

(declare-fun _$33!685 () Unit!96156)

(assert (=> d!1396536 (= (choose!29647 lt!1702722 key!3287 hashF!1107) _$33!685)))

(declare-fun bs!862430 () Bool)

(assert (= bs!862430 d!1396536))

(assert (=> bs!862430 m!5280305))

(assert (=> d!1396216 d!1396536))

(declare-fun d!1396540 () Bool)

(declare-fun res!1885038 () Bool)

(declare-fun e!2820838 () Bool)

(assert (=> d!1396540 (=> res!1885038 e!2820838)))

(assert (=> d!1396540 (= res!1885038 ((_ is Nil!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1396540 (= (forall!10291 (toList!4351 lt!1702722) lambda!173619) e!2820838)))

(declare-fun b!4527284 () Bool)

(declare-fun e!2820839 () Bool)

(assert (=> b!4527284 (= e!2820838 e!2820839)))

(declare-fun res!1885039 () Bool)

(assert (=> b!4527284 (=> (not res!1885039) (not e!2820839))))

(assert (=> b!4527284 (= res!1885039 (dynLambda!21178 lambda!173619 (h!56544 (toList!4351 lt!1702722))))))

(declare-fun b!4527285 () Bool)

(assert (=> b!4527285 (= e!2820839 (forall!10291 (t!357767 (toList!4351 lt!1702722)) lambda!173619))))

(assert (= (and d!1396540 (not res!1885038)) b!4527284))

(assert (= (and b!4527284 res!1885039) b!4527285))

(declare-fun b_lambda!155987 () Bool)

(assert (=> (not b_lambda!155987) (not b!4527284)))

(declare-fun m!5281407 () Bool)

(assert (=> b!4527284 m!5281407))

(declare-fun m!5281409 () Bool)

(assert (=> b!4527285 m!5281409))

(assert (=> d!1396216 d!1396540))

(declare-fun d!1396542 () Bool)

(assert (=> d!1396542 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))))

(declare-fun lt!1703242 () Unit!96156)

(assert (=> d!1396542 (= lt!1703242 (choose!29662 (toList!4352 lt!1702732) key!3287))))

(assert (=> d!1396542 (invariantList!1027 (toList!4352 lt!1702732))))

(assert (=> d!1396542 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702732) key!3287) lt!1703242)))

(declare-fun bs!862431 () Bool)

(assert (= bs!862431 d!1396542))

(assert (=> bs!862431 m!5280509))

(assert (=> bs!862431 m!5280509))

(assert (=> bs!862431 m!5280511))

(declare-fun m!5281411 () Bool)

(assert (=> bs!862431 m!5281411))

(declare-fun m!5281413 () Bool)

(assert (=> bs!862431 m!5281413))

(assert (=> b!4526760 d!1396542))

(declare-fun d!1396544 () Bool)

(assert (=> d!1396544 (= (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287)) (not (isEmpty!28700 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))))))

(declare-fun bs!862432 () Bool)

(assert (= bs!862432 d!1396544))

(assert (=> bs!862432 m!5280509))

(declare-fun m!5281415 () Bool)

(assert (=> bs!862432 m!5281415))

(assert (=> b!4526760 d!1396544))

(declare-fun b!4527288 () Bool)

(declare-fun e!2820841 () Option!11143)

(assert (=> b!4527288 (= e!2820841 (getValueByKey!1113 (t!357766 (toList!4352 lt!1702732)) key!3287))))

(declare-fun b!4527287 () Bool)

(declare-fun e!2820840 () Option!11143)

(assert (=> b!4527287 (= e!2820840 e!2820841)))

(declare-fun c!772893 () Bool)

(assert (=> b!4527287 (= c!772893 (and ((_ is Cons!50680) (toList!4352 lt!1702732)) (not (= (_1!28855 (h!56543 (toList!4352 lt!1702732))) key!3287))))))

(declare-fun b!4527289 () Bool)

(assert (=> b!4527289 (= e!2820841 None!11142)))

(declare-fun b!4527286 () Bool)

(assert (=> b!4527286 (= e!2820840 (Some!11142 (_2!28855 (h!56543 (toList!4352 lt!1702732)))))))

(declare-fun d!1396546 () Bool)

(declare-fun c!772892 () Bool)

(assert (=> d!1396546 (= c!772892 (and ((_ is Cons!50680) (toList!4352 lt!1702732)) (= (_1!28855 (h!56543 (toList!4352 lt!1702732))) key!3287)))))

(assert (=> d!1396546 (= (getValueByKey!1113 (toList!4352 lt!1702732) key!3287) e!2820840)))

(assert (= (and d!1396546 c!772892) b!4527286))

(assert (= (and d!1396546 (not c!772892)) b!4527287))

(assert (= (and b!4527287 c!772893) b!4527288))

(assert (= (and b!4527287 (not c!772893)) b!4527289))

(declare-fun m!5281417 () Bool)

(assert (=> b!4527288 m!5281417))

(assert (=> b!4526760 d!1396546))

(declare-fun d!1396548 () Bool)

(assert (=> d!1396548 (contains!13431 (getKeysList!475 (toList!4352 lt!1702732)) key!3287)))

(declare-fun lt!1703243 () Unit!96156)

(assert (=> d!1396548 (= lt!1703243 (choose!29663 (toList!4352 lt!1702732) key!3287))))

(assert (=> d!1396548 (invariantList!1027 (toList!4352 lt!1702732))))

(assert (=> d!1396548 (= (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1702732) key!3287) lt!1703243)))

(declare-fun bs!862433 () Bool)

(assert (= bs!862433 d!1396548))

(assert (=> bs!862433 m!5280507))

(assert (=> bs!862433 m!5280507))

(declare-fun m!5281419 () Bool)

(assert (=> bs!862433 m!5281419))

(declare-fun m!5281421 () Bool)

(assert (=> bs!862433 m!5281421))

(assert (=> bs!862433 m!5281413))

(assert (=> b!4526760 d!1396548))

(declare-fun d!1396550 () Bool)

(declare-fun lt!1703244 () Bool)

(assert (=> d!1396550 (= lt!1703244 (select (content!8385 (toList!4351 lm!1477)) (h!56544 (toList!4351 lm!1477))))))

(declare-fun e!2820846 () Bool)

(assert (=> d!1396550 (= lt!1703244 e!2820846)))

(declare-fun res!1885044 () Bool)

(assert (=> d!1396550 (=> (not res!1885044) (not e!2820846))))

(assert (=> d!1396550 (= res!1885044 ((_ is Cons!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396550 (= (contains!13428 (toList!4351 lm!1477) (h!56544 (toList!4351 lm!1477))) lt!1703244)))

(declare-fun b!4527294 () Bool)

(declare-fun e!2820847 () Bool)

(assert (=> b!4527294 (= e!2820846 e!2820847)))

(declare-fun res!1885045 () Bool)

(assert (=> b!4527294 (=> res!1885045 e!2820847)))

(assert (=> b!4527294 (= res!1885045 (= (h!56544 (toList!4351 lm!1477)) (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4527295 () Bool)

(assert (=> b!4527295 (= e!2820847 (contains!13428 (t!357767 (toList!4351 lm!1477)) (h!56544 (toList!4351 lm!1477))))))

(assert (= (and d!1396550 res!1885044) b!4527294))

(assert (= (and b!4527294 (not res!1885045)) b!4527295))

(assert (=> d!1396550 m!5280767))

(declare-fun m!5281423 () Bool)

(assert (=> d!1396550 m!5281423))

(declare-fun m!5281425 () Bool)

(assert (=> b!4527295 m!5281425))

(assert (=> b!4526696 d!1396550))

(declare-fun d!1396552 () Bool)

(assert (=> d!1396552 (= (head!9436 (toList!4351 lm!1477)) (h!56544 (toList!4351 lm!1477)))))

(assert (=> d!1396234 d!1396552))

(declare-fun d!1396554 () Bool)

(assert (=> d!1396554 (= (tail!7757 (toList!4351 lm!1477)) (t!357767 (toList!4351 lm!1477)))))

(assert (=> d!1396220 d!1396554))

(declare-fun d!1396558 () Bool)

(declare-fun c!772894 () Bool)

(assert (=> d!1396558 (= c!772894 ((_ is Nil!50680) (toList!4352 lt!1702713)))))

(declare-fun e!2820850 () (InoxSet tuple2!51122))

(assert (=> d!1396558 (= (content!8387 (toList!4352 lt!1702713)) e!2820850)))

(declare-fun b!4527298 () Bool)

(assert (=> b!4527298 (= e!2820850 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527299 () Bool)

(assert (=> b!4527299 (= e!2820850 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702713)) true) (content!8387 (t!357766 (toList!4352 lt!1702713)))))))

(assert (= (and d!1396558 c!772894) b!4527298))

(assert (= (and d!1396558 (not c!772894)) b!4527299))

(declare-fun m!5281429 () Bool)

(assert (=> b!4527299 m!5281429))

(declare-fun m!5281431 () Bool)

(assert (=> b!4527299 m!5281431))

(assert (=> d!1396226 d!1396558))

(declare-fun d!1396560 () Bool)

(declare-fun c!772895 () Bool)

(assert (=> d!1396560 (= c!772895 ((_ is Nil!50680) (toList!4352 lt!1702724)))))

(declare-fun e!2820851 () (InoxSet tuple2!51122))

(assert (=> d!1396560 (= (content!8387 (toList!4352 lt!1702724)) e!2820851)))

(declare-fun b!4527300 () Bool)

(assert (=> b!4527300 (= e!2820851 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527301 () Bool)

(assert (=> b!4527301 (= e!2820851 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702724)) true) (content!8387 (t!357766 (toList!4352 lt!1702724)))))))

(assert (= (and d!1396560 c!772895) b!4527300))

(assert (= (and d!1396560 (not c!772895)) b!4527301))

(declare-fun m!5281433 () Bool)

(assert (=> b!4527301 m!5281433))

(declare-fun m!5281435 () Bool)

(assert (=> b!4527301 m!5281435))

(assert (=> d!1396226 d!1396560))

(declare-fun d!1396562 () Bool)

(declare-fun res!1885048 () Bool)

(declare-fun e!2820852 () Bool)

(assert (=> d!1396562 (=> res!1885048 e!2820852)))

(assert (=> d!1396562 (= res!1885048 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396562 (= (forall!10293 (_2!28856 lt!1702727) lambda!173702) e!2820852)))

(declare-fun b!4527302 () Bool)

(declare-fun e!2820853 () Bool)

(assert (=> b!4527302 (= e!2820852 e!2820853)))

(declare-fun res!1885049 () Bool)

(assert (=> b!4527302 (=> (not res!1885049) (not e!2820853))))

(assert (=> b!4527302 (= res!1885049 (dynLambda!21181 lambda!173702 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun b!4527303 () Bool)

(assert (=> b!4527303 (= e!2820853 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173702))))

(assert (= (and d!1396562 (not res!1885048)) b!4527302))

(assert (= (and b!4527302 res!1885049) b!4527303))

(declare-fun b_lambda!155989 () Bool)

(assert (=> (not b_lambda!155989) (not b!4527302)))

(declare-fun m!5281437 () Bool)

(assert (=> b!4527302 m!5281437))

(assert (=> b!4527303 m!5281029))

(assert (=> b!4526999 d!1396562))

(declare-fun bs!862434 () Bool)

(declare-fun b!4527305 () Bool)

(assert (= bs!862434 (and b!4527305 d!1396296)))

(declare-fun lambda!173739 () Int)

(assert (=> bs!862434 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703123) (= lambda!173739 lambda!173703))))

(declare-fun bs!862435 () Bool)

(assert (= bs!862435 (and b!4527305 b!4526999)))

(assert (=> bs!862435 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173739 lambda!173701))))

(declare-fun bs!862436 () Bool)

(assert (= bs!862436 (and b!4527305 b!4527019)))

(assert (=> bs!862436 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703158) (= lambda!173739 lambda!173713))))

(assert (=> bs!862435 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173739 lambda!173702))))

(declare-fun bs!862437 () Bool)

(assert (= bs!862437 (and b!4527305 d!1396260)))

(assert (=> bs!862437 (not (= lambda!173739 lambda!173651))))

(declare-fun bs!862438 () Bool)

(assert (= bs!862438 (and b!4527305 d!1396498)))

(assert (=> bs!862438 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173739 lambda!173736))))

(declare-fun bs!862439 () Bool)

(assert (= bs!862439 (and b!4527305 b!4526608)))

(assert (=> bs!862439 (not (= lambda!173739 lambda!173585))))

(declare-fun bs!862440 () Bool)

(assert (= bs!862440 (and b!4527305 b!4527017)))

(assert (=> bs!862440 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173739 lambda!173711))))

(declare-fun bs!862441 () Bool)

(assert (= bs!862441 (and b!4527305 d!1396390)))

(assert (=> bs!862441 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703159) (= lambda!173739 lambda!173714))))

(declare-fun bs!862442 () Bool)

(assert (= bs!862442 (and b!4527305 b!4526997)))

(assert (=> bs!862442 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173739 lambda!173700))))

(assert (=> bs!862436 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173739 lambda!173712))))

(assert (=> b!4527305 true))

(declare-fun bs!862443 () Bool)

(declare-fun b!4527307 () Bool)

(assert (= bs!862443 (and b!4527307 d!1396296)))

(declare-fun lambda!173740 () Int)

(assert (=> bs!862443 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703123) (= lambda!173740 lambda!173703))))

(declare-fun bs!862444 () Bool)

(assert (= bs!862444 (and b!4527307 b!4527305)))

(assert (=> bs!862444 (= lambda!173740 lambda!173739)))

(declare-fun bs!862445 () Bool)

(assert (= bs!862445 (and b!4527307 b!4526999)))

(assert (=> bs!862445 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173740 lambda!173701))))

(declare-fun bs!862446 () Bool)

(assert (= bs!862446 (and b!4527307 b!4527019)))

(assert (=> bs!862446 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703158) (= lambda!173740 lambda!173713))))

(assert (=> bs!862445 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173740 lambda!173702))))

(declare-fun bs!862447 () Bool)

(assert (= bs!862447 (and b!4527307 d!1396260)))

(assert (=> bs!862447 (not (= lambda!173740 lambda!173651))))

(declare-fun bs!862448 () Bool)

(assert (= bs!862448 (and b!4527307 d!1396498)))

(assert (=> bs!862448 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173740 lambda!173736))))

(declare-fun bs!862449 () Bool)

(assert (= bs!862449 (and b!4527307 b!4526608)))

(assert (=> bs!862449 (not (= lambda!173740 lambda!173585))))

(declare-fun bs!862450 () Bool)

(assert (= bs!862450 (and b!4527307 b!4527017)))

(assert (=> bs!862450 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173740 lambda!173711))))

(declare-fun bs!862451 () Bool)

(assert (= bs!862451 (and b!4527307 d!1396390)))

(assert (=> bs!862451 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703159) (= lambda!173740 lambda!173714))))

(declare-fun bs!862452 () Bool)

(assert (= bs!862452 (and b!4527307 b!4526997)))

(assert (=> bs!862452 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173740 lambda!173700))))

(assert (=> bs!862446 (= (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173740 lambda!173712))))

(assert (=> b!4527307 true))

(declare-fun lt!1703261 () ListMap!3613)

(declare-fun lambda!173743 () Int)

(assert (=> bs!862443 (= (= lt!1703261 lt!1703123) (= lambda!173743 lambda!173703))))

(assert (=> bs!862444 (= (= lt!1703261 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173743 lambda!173739))))

(assert (=> bs!862445 (= (= lt!1703261 lt!1702724) (= lambda!173743 lambda!173701))))

(assert (=> bs!862446 (= (= lt!1703261 lt!1703158) (= lambda!173743 lambda!173713))))

(assert (=> b!4527307 (= (= lt!1703261 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173743 lambda!173740))))

(assert (=> bs!862445 (= (= lt!1703261 lt!1703122) (= lambda!173743 lambda!173702))))

(assert (=> bs!862447 (not (= lambda!173743 lambda!173651))))

(assert (=> bs!862448 (= (= lt!1703261 lt!1702713) (= lambda!173743 lambda!173736))))

(assert (=> bs!862449 (not (= lambda!173743 lambda!173585))))

(assert (=> bs!862450 (= (= lt!1703261 lt!1702713) (= lambda!173743 lambda!173711))))

(assert (=> bs!862451 (= (= lt!1703261 lt!1703159) (= lambda!173743 lambda!173714))))

(assert (=> bs!862452 (= (= lt!1703261 lt!1702724) (= lambda!173743 lambda!173700))))

(assert (=> bs!862446 (= (= lt!1703261 lt!1702713) (= lambda!173743 lambda!173712))))

(assert (=> b!4527307 true))

(declare-fun bs!862453 () Bool)

(declare-fun d!1396564 () Bool)

(assert (= bs!862453 (and d!1396564 d!1396296)))

(declare-fun lt!1703262 () ListMap!3613)

(declare-fun lambda!173746 () Int)

(assert (=> bs!862453 (= (= lt!1703262 lt!1703123) (= lambda!173746 lambda!173703))))

(declare-fun bs!862454 () Bool)

(assert (= bs!862454 (and d!1396564 b!4527305)))

(assert (=> bs!862454 (= (= lt!1703262 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173746 lambda!173739))))

(declare-fun bs!862455 () Bool)

(assert (= bs!862455 (and d!1396564 b!4526999)))

(assert (=> bs!862455 (= (= lt!1703262 lt!1702724) (= lambda!173746 lambda!173701))))

(declare-fun bs!862456 () Bool)

(assert (= bs!862456 (and d!1396564 b!4527019)))

(assert (=> bs!862456 (= (= lt!1703262 lt!1703158) (= lambda!173746 lambda!173713))))

(declare-fun bs!862457 () Bool)

(assert (= bs!862457 (and d!1396564 b!4527307)))

(assert (=> bs!862457 (= (= lt!1703262 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173746 lambda!173740))))

(assert (=> bs!862455 (= (= lt!1703262 lt!1703122) (= lambda!173746 lambda!173702))))

(declare-fun bs!862458 () Bool)

(assert (= bs!862458 (and d!1396564 d!1396260)))

(assert (=> bs!862458 (not (= lambda!173746 lambda!173651))))

(declare-fun bs!862459 () Bool)

(assert (= bs!862459 (and d!1396564 d!1396498)))

(assert (=> bs!862459 (= (= lt!1703262 lt!1702713) (= lambda!173746 lambda!173736))))

(assert (=> bs!862457 (= (= lt!1703262 lt!1703261) (= lambda!173746 lambda!173743))))

(declare-fun bs!862460 () Bool)

(assert (= bs!862460 (and d!1396564 b!4526608)))

(assert (=> bs!862460 (not (= lambda!173746 lambda!173585))))

(declare-fun bs!862461 () Bool)

(assert (= bs!862461 (and d!1396564 b!4527017)))

(assert (=> bs!862461 (= (= lt!1703262 lt!1702713) (= lambda!173746 lambda!173711))))

(declare-fun bs!862462 () Bool)

(assert (= bs!862462 (and d!1396564 d!1396390)))

(assert (=> bs!862462 (= (= lt!1703262 lt!1703159) (= lambda!173746 lambda!173714))))

(declare-fun bs!862463 () Bool)

(assert (= bs!862463 (and d!1396564 b!4526997)))

(assert (=> bs!862463 (= (= lt!1703262 lt!1702724) (= lambda!173746 lambda!173700))))

(assert (=> bs!862456 (= (= lt!1703262 lt!1702713) (= lambda!173746 lambda!173712))))

(assert (=> d!1396564 true))

(declare-fun b!4527304 () Bool)

(declare-fun e!2820856 () Bool)

(assert (=> b!4527304 (= e!2820856 (invariantList!1027 (toList!4352 lt!1703262)))))

(declare-fun e!2820854 () ListMap!3613)

(assert (=> b!4527305 (= e!2820854 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703249 () Unit!96156)

(declare-fun call!315508 () Unit!96156)

(assert (=> b!4527305 (= lt!1703249 call!315508)))

(declare-fun call!315507 () Bool)

(assert (=> b!4527305 call!315507))

(declare-fun lt!1703248 () Unit!96156)

(assert (=> b!4527305 (= lt!1703248 lt!1703249)))

(declare-fun call!315509 () Bool)

(assert (=> b!4527305 call!315509))

(declare-fun lt!1703258 () Unit!96156)

(declare-fun Unit!96229 () Unit!96156)

(assert (=> b!4527305 (= lt!1703258 Unit!96229)))

(declare-fun b!4527306 () Bool)

(declare-fun e!2820855 () Bool)

(assert (=> b!4527306 (= e!2820855 (forall!10293 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) lambda!173743))))

(declare-fun b!4527308 () Bool)

(declare-fun res!1885052 () Bool)

(assert (=> b!4527308 (=> (not res!1885052) (not e!2820856))))

(assert (=> b!4527308 (= res!1885052 (forall!10293 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) lambda!173746))))

(declare-fun bm!315502 () Bool)

(assert (=> bm!315502 (= call!315508 (lemmaContainsAllItsOwnKeys!348 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396564 e!2820856))

(declare-fun res!1885051 () Bool)

(assert (=> d!1396564 (=> (not res!1885051) (not e!2820856))))

(assert (=> d!1396564 (= res!1885051 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173746))))

(assert (=> d!1396564 (= lt!1703262 e!2820854)))

(declare-fun c!772896 () Bool)

(assert (=> d!1396564 (= c!772896 ((_ is Nil!50680) (t!357766 (_2!28856 lt!1702727))))))

(assert (=> d!1396564 (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702727)))))

(assert (=> d!1396564 (= (addToMapMapFromBucket!699 (t!357766 (_2!28856 lt!1702727)) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) lt!1703262)))

(assert (=> b!4527307 (= e!2820854 lt!1703261)))

(declare-fun lt!1703264 () ListMap!3613)

(assert (=> b!4527307 (= lt!1703264 (+!1562 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(assert (=> b!4527307 (= lt!1703261 (addToMapMapFromBucket!699 (t!357766 (t!357766 (_2!28856 lt!1702727))) (+!1562 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(declare-fun lt!1703259 () Unit!96156)

(assert (=> b!4527307 (= lt!1703259 call!315508)))

(assert (=> b!4527307 (forall!10293 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) lambda!173740)))

(declare-fun lt!1703253 () Unit!96156)

(assert (=> b!4527307 (= lt!1703253 lt!1703259)))

(assert (=> b!4527307 (forall!10293 (toList!4352 lt!1703264) lambda!173743)))

(declare-fun lt!1703251 () Unit!96156)

(declare-fun Unit!96231 () Unit!96156)

(assert (=> b!4527307 (= lt!1703251 Unit!96231)))

(assert (=> b!4527307 (forall!10293 (t!357766 (t!357766 (_2!28856 lt!1702727))) lambda!173743)))

(declare-fun lt!1703256 () Unit!96156)

(declare-fun Unit!96232 () Unit!96156)

(assert (=> b!4527307 (= lt!1703256 Unit!96232)))

(declare-fun lt!1703260 () Unit!96156)

(declare-fun Unit!96233 () Unit!96156)

(assert (=> b!4527307 (= lt!1703260 Unit!96233)))

(declare-fun lt!1703255 () Unit!96156)

(assert (=> b!4527307 (= lt!1703255 (forallContained!2545 (toList!4352 lt!1703264) lambda!173743 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(assert (=> b!4527307 (contains!13427 lt!1703264 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703245 () Unit!96156)

(declare-fun Unit!96234 () Unit!96156)

(assert (=> b!4527307 (= lt!1703245 Unit!96234)))

(assert (=> b!4527307 (contains!13427 lt!1703261 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703246 () Unit!96156)

(declare-fun Unit!96235 () Unit!96156)

(assert (=> b!4527307 (= lt!1703246 Unit!96235)))

(assert (=> b!4527307 call!315507))

(declare-fun lt!1703250 () Unit!96156)

(declare-fun Unit!96236 () Unit!96156)

(assert (=> b!4527307 (= lt!1703250 Unit!96236)))

(assert (=> b!4527307 (forall!10293 (toList!4352 lt!1703264) lambda!173743)))

(declare-fun lt!1703254 () Unit!96156)

(declare-fun Unit!96237 () Unit!96156)

(assert (=> b!4527307 (= lt!1703254 Unit!96237)))

(declare-fun lt!1703247 () Unit!96156)

(declare-fun Unit!96238 () Unit!96156)

(assert (=> b!4527307 (= lt!1703247 Unit!96238)))

(declare-fun lt!1703263 () Unit!96156)

(assert (=> b!4527307 (= lt!1703263 (addForallContainsKeyThenBeforeAdding!348 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703261 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))) (_2!28855 (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(assert (=> b!4527307 (forall!10293 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) lambda!173743)))

(declare-fun lt!1703265 () Unit!96156)

(assert (=> b!4527307 (= lt!1703265 lt!1703263)))

(assert (=> b!4527307 call!315509))

(declare-fun lt!1703257 () Unit!96156)

(declare-fun Unit!96240 () Unit!96156)

(assert (=> b!4527307 (= lt!1703257 Unit!96240)))

(declare-fun res!1885050 () Bool)

(assert (=> b!4527307 (= res!1885050 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173743))))

(assert (=> b!4527307 (=> (not res!1885050) (not e!2820855))))

(assert (=> b!4527307 e!2820855))

(declare-fun lt!1703252 () Unit!96156)

(declare-fun Unit!96241 () Unit!96156)

(assert (=> b!4527307 (= lt!1703252 Unit!96241)))

(declare-fun bm!315503 () Bool)

(assert (=> bm!315503 (= call!315509 (forall!10293 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (ite c!772896 lambda!173739 lambda!173743)))))

(declare-fun bm!315504 () Bool)

(assert (=> bm!315504 (= call!315507 (forall!10293 (ite c!772896 (toList!4352 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (t!357766 (_2!28856 lt!1702727))) (ite c!772896 lambda!173739 lambda!173743)))))

(assert (= (and d!1396564 c!772896) b!4527305))

(assert (= (and d!1396564 (not c!772896)) b!4527307))

(assert (= (and b!4527307 res!1885050) b!4527306))

(assert (= (or b!4527305 b!4527307) bm!315504))

(assert (= (or b!4527305 b!4527307) bm!315503))

(assert (= (or b!4527305 b!4527307) bm!315502))

(assert (= (and d!1396564 res!1885051) b!4527308))

(assert (= (and b!4527308 res!1885052) b!4527304))

(assert (=> bm!315502 m!5281017))

(declare-fun m!5281457 () Bool)

(assert (=> bm!315502 m!5281457))

(declare-fun m!5281459 () Bool)

(assert (=> b!4527306 m!5281459))

(declare-fun m!5281461 () Bool)

(assert (=> b!4527308 m!5281461))

(declare-fun m!5281463 () Bool)

(assert (=> d!1396564 m!5281463))

(assert (=> d!1396564 m!5280413))

(declare-fun m!5281465 () Bool)

(assert (=> bm!315504 m!5281465))

(declare-fun m!5281467 () Bool)

(assert (=> b!4527307 m!5281467))

(assert (=> b!4527307 m!5281017))

(declare-fun m!5281469 () Bool)

(assert (=> b!4527307 m!5281469))

(declare-fun m!5281471 () Bool)

(assert (=> b!4527307 m!5281471))

(assert (=> b!4527307 m!5281459))

(assert (=> b!4527307 m!5281017))

(declare-fun m!5281473 () Bool)

(assert (=> b!4527307 m!5281473))

(declare-fun m!5281475 () Bool)

(assert (=> b!4527307 m!5281475))

(assert (=> b!4527307 m!5281471))

(declare-fun m!5281477 () Bool)

(assert (=> b!4527307 m!5281477))

(declare-fun m!5281479 () Bool)

(assert (=> b!4527307 m!5281479))

(declare-fun m!5281481 () Bool)

(assert (=> b!4527307 m!5281481))

(assert (=> b!4527307 m!5281473))

(declare-fun m!5281483 () Bool)

(assert (=> b!4527307 m!5281483))

(declare-fun m!5281485 () Bool)

(assert (=> b!4527307 m!5281485))

(declare-fun m!5281487 () Bool)

(assert (=> bm!315503 m!5281487))

(declare-fun m!5281489 () Bool)

(assert (=> b!4527304 m!5281489))

(assert (=> b!4526999 d!1396564))

(declare-fun bs!862465 () Bool)

(declare-fun d!1396572 () Bool)

(assert (= bs!862465 (and d!1396572 d!1396296)))

(declare-fun lambda!173753 () Int)

(assert (=> bs!862465 (= (= lt!1703122 lt!1703123) (= lambda!173753 lambda!173703))))

(declare-fun bs!862466 () Bool)

(assert (= bs!862466 (and d!1396572 b!4527305)))

(assert (=> bs!862466 (= (= lt!1703122 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173753 lambda!173739))))

(declare-fun bs!862467 () Bool)

(assert (= bs!862467 (and d!1396572 b!4526999)))

(assert (=> bs!862467 (= (= lt!1703122 lt!1702724) (= lambda!173753 lambda!173701))))

(declare-fun bs!862468 () Bool)

(assert (= bs!862468 (and d!1396572 b!4527019)))

(assert (=> bs!862468 (= (= lt!1703122 lt!1703158) (= lambda!173753 lambda!173713))))

(declare-fun bs!862469 () Bool)

(assert (= bs!862469 (and d!1396572 b!4527307)))

(assert (=> bs!862469 (= (= lt!1703122 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173753 lambda!173740))))

(assert (=> bs!862467 (= lambda!173753 lambda!173702)))

(declare-fun bs!862470 () Bool)

(assert (= bs!862470 (and d!1396572 d!1396260)))

(assert (=> bs!862470 (not (= lambda!173753 lambda!173651))))

(assert (=> bs!862469 (= (= lt!1703122 lt!1703261) (= lambda!173753 lambda!173743))))

(declare-fun bs!862471 () Bool)

(assert (= bs!862471 (and d!1396572 b!4526608)))

(assert (=> bs!862471 (not (= lambda!173753 lambda!173585))))

(declare-fun bs!862472 () Bool)

(assert (= bs!862472 (and d!1396572 b!4527017)))

(assert (=> bs!862472 (= (= lt!1703122 lt!1702713) (= lambda!173753 lambda!173711))))

(declare-fun bs!862473 () Bool)

(assert (= bs!862473 (and d!1396572 d!1396390)))

(assert (=> bs!862473 (= (= lt!1703122 lt!1703159) (= lambda!173753 lambda!173714))))

(declare-fun bs!862474 () Bool)

(assert (= bs!862474 (and d!1396572 b!4526997)))

(assert (=> bs!862474 (= (= lt!1703122 lt!1702724) (= lambda!173753 lambda!173700))))

(assert (=> bs!862468 (= (= lt!1703122 lt!1702713) (= lambda!173753 lambda!173712))))

(declare-fun bs!862475 () Bool)

(assert (= bs!862475 (and d!1396572 d!1396498)))

(assert (=> bs!862475 (= (= lt!1703122 lt!1702713) (= lambda!173753 lambda!173736))))

(declare-fun bs!862476 () Bool)

(assert (= bs!862476 (and d!1396572 d!1396564)))

(assert (=> bs!862476 (= (= lt!1703122 lt!1703262) (= lambda!173753 lambda!173746))))

(assert (=> d!1396572 true))

(assert (=> d!1396572 (forall!10293 (toList!4352 lt!1702724) lambda!173753)))

(declare-fun lt!1703279 () Unit!96156)

(declare-fun choose!29672 (ListMap!3613 ListMap!3613 K!12070 V!12316) Unit!96156)

(assert (=> d!1396572 (= lt!1703279 (choose!29672 lt!1702724 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396572 (forall!10293 (toList!4352 (+!1562 lt!1702724 (tuple2!51123 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))) lambda!173753)))

(assert (=> d!1396572 (= (addForallContainsKeyThenBeforeAdding!348 lt!1702724 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703279)))

(declare-fun bs!862477 () Bool)

(assert (= bs!862477 d!1396572))

(declare-fun m!5281509 () Bool)

(assert (=> bs!862477 m!5281509))

(declare-fun m!5281511 () Bool)

(assert (=> bs!862477 m!5281511))

(declare-fun m!5281513 () Bool)

(assert (=> bs!862477 m!5281513))

(declare-fun m!5281515 () Bool)

(assert (=> bs!862477 m!5281515))

(assert (=> b!4526999 d!1396572))

(declare-fun d!1396582 () Bool)

(declare-fun e!2820892 () Bool)

(assert (=> d!1396582 e!2820892))

(declare-fun res!1885087 () Bool)

(assert (=> d!1396582 (=> (not res!1885087) (not e!2820892))))

(declare-fun lt!1703292 () ListMap!3613)

(assert (=> d!1396582 (= res!1885087 (contains!13427 lt!1703292 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703294 () List!50804)

(assert (=> d!1396582 (= lt!1703292 (ListMap!3614 lt!1703294))))

(declare-fun lt!1703291 () Unit!96156)

(declare-fun lt!1703293 () Unit!96156)

(assert (=> d!1396582 (= lt!1703291 lt!1703293)))

(assert (=> d!1396582 (= (getValueByKey!1113 lt!1703294 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) (Some!11142 (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!695 (List!50804 K!12070 V!12316) Unit!96156)

(assert (=> d!1396582 (= lt!1703293 (lemmaContainsTupThenGetReturnValue!695 lt!1703294 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun insertNoDuplicatedKeys!285 (List!50804 K!12070 V!12316) List!50804)

(assert (=> d!1396582 (= lt!1703294 (insertNoDuplicatedKeys!285 (toList!4352 lt!1702724) (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396582 (= (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727))) lt!1703292)))

(declare-fun b!4527376 () Bool)

(declare-fun res!1885088 () Bool)

(assert (=> b!4527376 (=> (not res!1885088) (not e!2820892))))

(assert (=> b!4527376 (= res!1885088 (= (getValueByKey!1113 (toList!4352 lt!1703292) (_1!28855 (h!56543 (_2!28856 lt!1702727)))) (Some!11142 (_2!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4527377 () Bool)

(assert (=> b!4527377 (= e!2820892 (contains!13433 (toList!4352 lt!1703292) (h!56543 (_2!28856 lt!1702727))))))

(assert (= (and d!1396582 res!1885087) b!4527376))

(assert (= (and b!4527376 res!1885088) b!4527377))

(declare-fun m!5281527 () Bool)

(assert (=> d!1396582 m!5281527))

(declare-fun m!5281529 () Bool)

(assert (=> d!1396582 m!5281529))

(declare-fun m!5281531 () Bool)

(assert (=> d!1396582 m!5281531))

(declare-fun m!5281533 () Bool)

(assert (=> d!1396582 m!5281533))

(declare-fun m!5281535 () Bool)

(assert (=> b!4527376 m!5281535))

(declare-fun m!5281537 () Bool)

(assert (=> b!4527377 m!5281537))

(assert (=> b!4526999 d!1396582))

(declare-fun b!4527382 () Bool)

(declare-fun e!2820895 () List!50807)

(assert (=> b!4527382 (= e!2820895 (keys!17616 lt!1703125))))

(declare-fun d!1396586 () Bool)

(declare-fun e!2820900 () Bool)

(assert (=> d!1396586 e!2820900))

(declare-fun res!1885089 () Bool)

(assert (=> d!1396586 (=> res!1885089 e!2820900)))

(declare-fun e!2820899 () Bool)

(assert (=> d!1396586 (= res!1885089 e!2820899)))

(declare-fun res!1885091 () Bool)

(assert (=> d!1396586 (=> (not res!1885091) (not e!2820899))))

(declare-fun lt!1703298 () Bool)

(assert (=> d!1396586 (= res!1885091 (not lt!1703298))))

(declare-fun lt!1703300 () Bool)

(assert (=> d!1396586 (= lt!1703298 lt!1703300)))

(declare-fun lt!1703301 () Unit!96156)

(declare-fun e!2820898 () Unit!96156)

(assert (=> d!1396586 (= lt!1703301 e!2820898)))

(declare-fun c!772915 () Bool)

(assert (=> d!1396586 (= c!772915 lt!1703300)))

(assert (=> d!1396586 (= lt!1703300 (containsKey!1814 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396586 (= (contains!13427 lt!1703125 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703298)))

(declare-fun b!4527383 () Bool)

(declare-fun e!2820897 () Unit!96156)

(declare-fun Unit!96250 () Unit!96156)

(assert (=> b!4527383 (= e!2820897 Unit!96250)))

(declare-fun bm!315514 () Bool)

(declare-fun call!315519 () Bool)

(assert (=> bm!315514 (= call!315519 (contains!13431 e!2820895 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun c!772916 () Bool)

(assert (=> bm!315514 (= c!772916 c!772915)))

(declare-fun b!4527384 () Bool)

(assert (=> b!4527384 (= e!2820895 (getKeysList!475 (toList!4352 lt!1703125)))))

(declare-fun b!4527385 () Bool)

(declare-fun e!2820896 () Bool)

(assert (=> b!4527385 (= e!2820900 e!2820896)))

(declare-fun res!1885090 () Bool)

(assert (=> b!4527385 (=> (not res!1885090) (not e!2820896))))

(assert (=> b!4527385 (= res!1885090 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4527386 () Bool)

(assert (=> b!4527386 (= e!2820896 (contains!13431 (keys!17616 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun b!4527387 () Bool)

(assert (=> b!4527387 (= e!2820899 (not (contains!13431 (keys!17616 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4527388 () Bool)

(assert (=> b!4527388 false))

(declare-fun lt!1703299 () Unit!96156)

(declare-fun lt!1703297 () Unit!96156)

(assert (=> b!4527388 (= lt!1703299 lt!1703297)))

(assert (=> b!4527388 (containsKey!1814 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4527388 (= lt!1703297 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun Unit!96251 () Unit!96156)

(assert (=> b!4527388 (= e!2820897 Unit!96251)))

(declare-fun b!4527389 () Bool)

(assert (=> b!4527389 (= e!2820898 e!2820897)))

(declare-fun c!772914 () Bool)

(assert (=> b!4527389 (= c!772914 call!315519)))

(declare-fun b!4527390 () Bool)

(declare-fun lt!1703295 () Unit!96156)

(assert (=> b!4527390 (= e!2820898 lt!1703295)))

(declare-fun lt!1703296 () Unit!96156)

(assert (=> b!4527390 (= lt!1703296 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4527390 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703302 () Unit!96156)

(assert (=> b!4527390 (= lt!1703302 lt!1703296)))

(assert (=> b!4527390 (= lt!1703295 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1703125) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4527390 call!315519))

(assert (= (and d!1396586 c!772915) b!4527390))

(assert (= (and d!1396586 (not c!772915)) b!4527389))

(assert (= (and b!4527389 c!772914) b!4527388))

(assert (= (and b!4527389 (not c!772914)) b!4527383))

(assert (= (or b!4527390 b!4527389) bm!315514))

(assert (= (and bm!315514 c!772916) b!4527384))

(assert (= (and bm!315514 (not c!772916)) b!4527382))

(assert (= (and d!1396586 res!1885091) b!4527387))

(assert (= (and d!1396586 (not res!1885089)) b!4527385))

(assert (= (and b!4527385 res!1885090) b!4527386))

(declare-fun m!5281543 () Bool)

(assert (=> b!4527388 m!5281543))

(declare-fun m!5281545 () Bool)

(assert (=> b!4527388 m!5281545))

(assert (=> d!1396586 m!5281543))

(declare-fun m!5281547 () Bool)

(assert (=> b!4527387 m!5281547))

(assert (=> b!4527387 m!5281547))

(declare-fun m!5281549 () Bool)

(assert (=> b!4527387 m!5281549))

(declare-fun m!5281551 () Bool)

(assert (=> b!4527384 m!5281551))

(declare-fun m!5281557 () Bool)

(assert (=> b!4527385 m!5281557))

(assert (=> b!4527385 m!5281557))

(declare-fun m!5281559 () Bool)

(assert (=> b!4527385 m!5281559))

(declare-fun m!5281561 () Bool)

(assert (=> b!4527390 m!5281561))

(assert (=> b!4527390 m!5281557))

(assert (=> b!4527390 m!5281557))

(assert (=> b!4527390 m!5281559))

(declare-fun m!5281563 () Bool)

(assert (=> b!4527390 m!5281563))

(assert (=> b!4527386 m!5281547))

(assert (=> b!4527386 m!5281547))

(assert (=> b!4527386 m!5281549))

(assert (=> b!4527382 m!5281547))

(declare-fun m!5281565 () Bool)

(assert (=> bm!315514 m!5281565))

(assert (=> b!4526999 d!1396586))

(declare-fun d!1396592 () Bool)

(declare-fun res!1885095 () Bool)

(declare-fun e!2820909 () Bool)

(assert (=> d!1396592 (=> res!1885095 e!2820909)))

(assert (=> d!1396592 (= res!1885095 ((_ is Nil!50680) (t!357766 (_2!28856 lt!1702727))))))

(assert (=> d!1396592 (= (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173702) e!2820909)))

(declare-fun b!4527404 () Bool)

(declare-fun e!2820910 () Bool)

(assert (=> b!4527404 (= e!2820909 e!2820910)))

(declare-fun res!1885096 () Bool)

(assert (=> b!4527404 (=> (not res!1885096) (not e!2820910))))

(assert (=> b!4527404 (= res!1885096 (dynLambda!21181 lambda!173702 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun b!4527405 () Bool)

(assert (=> b!4527405 (= e!2820910 (forall!10293 (t!357766 (t!357766 (_2!28856 lt!1702727))) lambda!173702))))

(assert (= (and d!1396592 (not res!1885095)) b!4527404))

(assert (= (and b!4527404 res!1885096) b!4527405))

(declare-fun b_lambda!155991 () Bool)

(assert (=> (not b_lambda!155991) (not b!4527404)))

(declare-fun m!5281567 () Bool)

(assert (=> b!4527404 m!5281567))

(declare-fun m!5281569 () Bool)

(assert (=> b!4527405 m!5281569))

(assert (=> b!4526999 d!1396592))

(assert (=> b!4526999 d!1396410))

(declare-fun d!1396594 () Bool)

(declare-fun res!1885097 () Bool)

(declare-fun e!2820911 () Bool)

(assert (=> d!1396594 (=> res!1885097 e!2820911)))

(assert (=> d!1396594 (= res!1885097 ((_ is Nil!50680) (toList!4352 lt!1702724)))))

(assert (=> d!1396594 (= (forall!10293 (toList!4352 lt!1702724) lambda!173701) e!2820911)))

(declare-fun b!4527406 () Bool)

(declare-fun e!2820912 () Bool)

(assert (=> b!4527406 (= e!2820911 e!2820912)))

(declare-fun res!1885098 () Bool)

(assert (=> b!4527406 (=> (not res!1885098) (not e!2820912))))

(assert (=> b!4527406 (= res!1885098 (dynLambda!21181 lambda!173701 (h!56543 (toList!4352 lt!1702724))))))

(declare-fun b!4527407 () Bool)

(assert (=> b!4527407 (= e!2820912 (forall!10293 (t!357766 (toList!4352 lt!1702724)) lambda!173701))))

(assert (= (and d!1396594 (not res!1885097)) b!4527406))

(assert (= (and b!4527406 res!1885098) b!4527407))

(declare-fun b_lambda!155993 () Bool)

(assert (=> (not b_lambda!155993) (not b!4527406)))

(declare-fun m!5281581 () Bool)

(assert (=> b!4527406 m!5281581))

(declare-fun m!5281585 () Bool)

(assert (=> b!4527407 m!5281585))

(assert (=> b!4526999 d!1396594))

(declare-fun b!4527408 () Bool)

(declare-fun e!2820913 () List!50807)

(assert (=> b!4527408 (= e!2820913 (keys!17616 lt!1703122))))

(declare-fun d!1396596 () Bool)

(declare-fun e!2820918 () Bool)

(assert (=> d!1396596 e!2820918))

(declare-fun res!1885099 () Bool)

(assert (=> d!1396596 (=> res!1885099 e!2820918)))

(declare-fun e!2820917 () Bool)

(assert (=> d!1396596 (= res!1885099 e!2820917)))

(declare-fun res!1885101 () Bool)

(assert (=> d!1396596 (=> (not res!1885101) (not e!2820917))))

(declare-fun lt!1703314 () Bool)

(assert (=> d!1396596 (= res!1885101 (not lt!1703314))))

(declare-fun lt!1703316 () Bool)

(assert (=> d!1396596 (= lt!1703314 lt!1703316)))

(declare-fun lt!1703317 () Unit!96156)

(declare-fun e!2820916 () Unit!96156)

(assert (=> d!1396596 (= lt!1703317 e!2820916)))

(declare-fun c!772923 () Bool)

(assert (=> d!1396596 (= c!772923 lt!1703316)))

(assert (=> d!1396596 (= lt!1703316 (containsKey!1814 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396596 (= (contains!13427 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703314)))

(declare-fun b!4527409 () Bool)

(declare-fun e!2820915 () Unit!96156)

(declare-fun Unit!96252 () Unit!96156)

(assert (=> b!4527409 (= e!2820915 Unit!96252)))

(declare-fun bm!315516 () Bool)

(declare-fun call!315521 () Bool)

(assert (=> bm!315516 (= call!315521 (contains!13431 e!2820913 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun c!772924 () Bool)

(assert (=> bm!315516 (= c!772924 c!772923)))

(declare-fun b!4527410 () Bool)

(assert (=> b!4527410 (= e!2820913 (getKeysList!475 (toList!4352 lt!1703122)))))

(declare-fun b!4527411 () Bool)

(declare-fun e!2820914 () Bool)

(assert (=> b!4527411 (= e!2820918 e!2820914)))

(declare-fun res!1885100 () Bool)

(assert (=> b!4527411 (=> (not res!1885100) (not e!2820914))))

(assert (=> b!4527411 (= res!1885100 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4527412 () Bool)

(assert (=> b!4527412 (= e!2820914 (contains!13431 (keys!17616 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun b!4527413 () Bool)

(assert (=> b!4527413 (= e!2820917 (not (contains!13431 (keys!17616 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4527414 () Bool)

(assert (=> b!4527414 false))

(declare-fun lt!1703315 () Unit!96156)

(declare-fun lt!1703313 () Unit!96156)

(assert (=> b!4527414 (= lt!1703315 lt!1703313)))

(assert (=> b!4527414 (containsKey!1814 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4527414 (= lt!1703313 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun Unit!96253 () Unit!96156)

(assert (=> b!4527414 (= e!2820915 Unit!96253)))

(declare-fun b!4527415 () Bool)

(assert (=> b!4527415 (= e!2820916 e!2820915)))

(declare-fun c!772922 () Bool)

(assert (=> b!4527415 (= c!772922 call!315521)))

(declare-fun b!4527416 () Bool)

(declare-fun lt!1703311 () Unit!96156)

(assert (=> b!4527416 (= e!2820916 lt!1703311)))

(declare-fun lt!1703312 () Unit!96156)

(assert (=> b!4527416 (= lt!1703312 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4527416 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703318 () Unit!96156)

(assert (=> b!4527416 (= lt!1703318 lt!1703312)))

(assert (=> b!4527416 (= lt!1703311 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1703122) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4527416 call!315521))

(assert (= (and d!1396596 c!772923) b!4527416))

(assert (= (and d!1396596 (not c!772923)) b!4527415))

(assert (= (and b!4527415 c!772922) b!4527414))

(assert (= (and b!4527415 (not c!772922)) b!4527409))

(assert (= (or b!4527416 b!4527415) bm!315516))

(assert (= (and bm!315516 c!772924) b!4527410))

(assert (= (and bm!315516 (not c!772924)) b!4527408))

(assert (= (and d!1396596 res!1885101) b!4527413))

(assert (= (and d!1396596 (not res!1885099)) b!4527411))

(assert (= (and b!4527411 res!1885100) b!4527412))

(declare-fun m!5281593 () Bool)

(assert (=> b!4527414 m!5281593))

(declare-fun m!5281595 () Bool)

(assert (=> b!4527414 m!5281595))

(assert (=> d!1396596 m!5281593))

(declare-fun m!5281597 () Bool)

(assert (=> b!4527413 m!5281597))

(assert (=> b!4527413 m!5281597))

(declare-fun m!5281599 () Bool)

(assert (=> b!4527413 m!5281599))

(declare-fun m!5281601 () Bool)

(assert (=> b!4527410 m!5281601))

(declare-fun m!5281603 () Bool)

(assert (=> b!4527411 m!5281603))

(assert (=> b!4527411 m!5281603))

(declare-fun m!5281605 () Bool)

(assert (=> b!4527411 m!5281605))

(declare-fun m!5281607 () Bool)

(assert (=> b!4527416 m!5281607))

(assert (=> b!4527416 m!5281603))

(assert (=> b!4527416 m!5281603))

(assert (=> b!4527416 m!5281605))

(declare-fun m!5281609 () Bool)

(assert (=> b!4527416 m!5281609))

(assert (=> b!4527412 m!5281597))

(assert (=> b!4527412 m!5281597))

(assert (=> b!4527412 m!5281599))

(assert (=> b!4527408 m!5281597))

(declare-fun m!5281611 () Bool)

(assert (=> bm!315516 m!5281611))

(assert (=> b!4526999 d!1396596))

(declare-fun d!1396600 () Bool)

(assert (=> d!1396600 (dynLambda!21181 lambda!173702 (h!56543 (_2!28856 lt!1702727)))))

(declare-fun lt!1703319 () Unit!96156)

(assert (=> d!1396600 (= lt!1703319 (choose!29661 (toList!4352 lt!1703125) lambda!173702 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun e!2820919 () Bool)

(assert (=> d!1396600 e!2820919))

(declare-fun res!1885102 () Bool)

(assert (=> d!1396600 (=> (not res!1885102) (not e!2820919))))

(assert (=> d!1396600 (= res!1885102 (forall!10293 (toList!4352 lt!1703125) lambda!173702))))

(assert (=> d!1396600 (= (forallContained!2545 (toList!4352 lt!1703125) lambda!173702 (h!56543 (_2!28856 lt!1702727))) lt!1703319)))

(declare-fun b!4527417 () Bool)

(assert (=> b!4527417 (= e!2820919 (contains!13433 (toList!4352 lt!1703125) (h!56543 (_2!28856 lt!1702727))))))

(assert (= (and d!1396600 res!1885102) b!4527417))

(declare-fun b_lambda!155995 () Bool)

(assert (=> (not b_lambda!155995) (not d!1396600)))

(assert (=> d!1396600 m!5281437))

(declare-fun m!5281613 () Bool)

(assert (=> d!1396600 m!5281613))

(assert (=> d!1396600 m!5281015))

(declare-fun m!5281615 () Bool)

(assert (=> b!4527417 m!5281615))

(assert (=> b!4526999 d!1396600))

(declare-fun d!1396602 () Bool)

(declare-fun res!1885103 () Bool)

(declare-fun e!2820920 () Bool)

(assert (=> d!1396602 (=> res!1885103 e!2820920)))

(assert (=> d!1396602 (= res!1885103 ((_ is Nil!50680) (toList!4352 lt!1703125)))))

(assert (=> d!1396602 (= (forall!10293 (toList!4352 lt!1703125) lambda!173702) e!2820920)))

(declare-fun b!4527418 () Bool)

(declare-fun e!2820921 () Bool)

(assert (=> b!4527418 (= e!2820920 e!2820921)))

(declare-fun res!1885104 () Bool)

(assert (=> b!4527418 (=> (not res!1885104) (not e!2820921))))

(assert (=> b!4527418 (= res!1885104 (dynLambda!21181 lambda!173702 (h!56543 (toList!4352 lt!1703125))))))

(declare-fun b!4527419 () Bool)

(assert (=> b!4527419 (= e!2820921 (forall!10293 (t!357766 (toList!4352 lt!1703125)) lambda!173702))))

(assert (= (and d!1396602 (not res!1885103)) b!4527418))

(assert (= (and b!4527418 res!1885104) b!4527419))

(declare-fun b_lambda!155997 () Bool)

(assert (=> (not b_lambda!155997) (not b!4527418)))

(declare-fun m!5281617 () Bool)

(assert (=> b!4527418 m!5281617))

(declare-fun m!5281619 () Bool)

(assert (=> b!4527419 m!5281619))

(assert (=> b!4526999 d!1396602))

(declare-fun d!1396604 () Bool)

(declare-fun e!2820923 () Bool)

(assert (=> d!1396604 e!2820923))

(declare-fun res!1885105 () Bool)

(assert (=> d!1396604 (=> res!1885105 e!2820923)))

(declare-fun lt!1703321 () Bool)

(assert (=> d!1396604 (= res!1885105 (not lt!1703321))))

(declare-fun lt!1703323 () Bool)

(assert (=> d!1396604 (= lt!1703321 lt!1703323)))

(declare-fun lt!1703322 () Unit!96156)

(declare-fun e!2820922 () Unit!96156)

(assert (=> d!1396604 (= lt!1703322 e!2820922)))

(declare-fun c!772925 () Bool)

(assert (=> d!1396604 (= c!772925 lt!1703323)))

(assert (=> d!1396604 (= lt!1703323 (containsKey!1815 (toList!4351 lm!1477) (hash!2845 hashF!1107 key!3287)))))

(assert (=> d!1396604 (= (contains!13429 lm!1477 (hash!2845 hashF!1107 key!3287)) lt!1703321)))

(declare-fun b!4527420 () Bool)

(declare-fun lt!1703320 () Unit!96156)

(assert (=> b!4527420 (= e!2820922 lt!1703320)))

(assert (=> b!4527420 (= lt!1703320 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lm!1477) (hash!2845 hashF!1107 key!3287)))))

(assert (=> b!4527420 (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) (hash!2845 hashF!1107 key!3287)))))

(declare-fun b!4527421 () Bool)

(declare-fun Unit!96256 () Unit!96156)

(assert (=> b!4527421 (= e!2820922 Unit!96256)))

(declare-fun b!4527422 () Bool)

(assert (=> b!4527422 (= e!2820923 (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) (hash!2845 hashF!1107 key!3287))))))

(assert (= (and d!1396604 c!772925) b!4527420))

(assert (= (and d!1396604 (not c!772925)) b!4527421))

(assert (= (and d!1396604 (not res!1885105)) b!4527422))

(assert (=> d!1396604 m!5280265))

(declare-fun m!5281621 () Bool)

(assert (=> d!1396604 m!5281621))

(assert (=> b!4527420 m!5280265))

(declare-fun m!5281623 () Bool)

(assert (=> b!4527420 m!5281623))

(assert (=> b!4527420 m!5280265))

(declare-fun m!5281625 () Bool)

(assert (=> b!4527420 m!5281625))

(assert (=> b!4527420 m!5281625))

(declare-fun m!5281627 () Bool)

(assert (=> b!4527420 m!5281627))

(assert (=> b!4527422 m!5280265))

(assert (=> b!4527422 m!5281625))

(assert (=> b!4527422 m!5281625))

(assert (=> b!4527422 m!5281627))

(assert (=> d!1396278 d!1396604))

(assert (=> d!1396278 d!1396368))

(declare-fun d!1396606 () Bool)

(assert (=> d!1396606 (contains!13429 lm!1477 (hash!2845 hashF!1107 key!3287))))

(assert (=> d!1396606 true))

(declare-fun _$27!1251 () Unit!96156)

(assert (=> d!1396606 (= (choose!29654 lm!1477 key!3287 hashF!1107) _$27!1251)))

(declare-fun bs!862478 () Bool)

(assert (= bs!862478 d!1396606))

(assert (=> bs!862478 m!5280265))

(assert (=> bs!862478 m!5280265))

(assert (=> bs!862478 m!5280829))

(assert (=> d!1396278 d!1396606))

(declare-fun d!1396608 () Bool)

(declare-fun res!1885106 () Bool)

(declare-fun e!2820924 () Bool)

(assert (=> d!1396608 (=> res!1885106 e!2820924)))

(assert (=> d!1396608 (= res!1885106 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396608 (= (forall!10291 (toList!4351 lm!1477) lambda!173656) e!2820924)))

(declare-fun b!4527423 () Bool)

(declare-fun e!2820925 () Bool)

(assert (=> b!4527423 (= e!2820924 e!2820925)))

(declare-fun res!1885107 () Bool)

(assert (=> b!4527423 (=> (not res!1885107) (not e!2820925))))

(assert (=> b!4527423 (= res!1885107 (dynLambda!21178 lambda!173656 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4527424 () Bool)

(assert (=> b!4527424 (= e!2820925 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173656))))

(assert (= (and d!1396608 (not res!1885106)) b!4527423))

(assert (= (and b!4527423 res!1885107) b!4527424))

(declare-fun b_lambda!155999 () Bool)

(assert (=> (not b_lambda!155999) (not b!4527423)))

(declare-fun m!5281629 () Bool)

(assert (=> b!4527423 m!5281629))

(declare-fun m!5281631 () Bool)

(assert (=> b!4527424 m!5281631))

(assert (=> d!1396278 d!1396608))

(assert (=> b!4527047 d!1396550))

(assert (=> b!4526740 d!1396412))

(assert (=> b!4526740 d!1396416))

(declare-fun d!1396610 () Bool)

(declare-fun res!1885108 () Bool)

(declare-fun e!2820926 () Bool)

(assert (=> d!1396610 (=> res!1885108 e!2820926)))

(assert (=> d!1396610 (= res!1885108 (and ((_ is Cons!50680) (t!357766 lt!1702716)) (= (_1!28855 (h!56543 (t!357766 lt!1702716))) key!3287)))))

(assert (=> d!1396610 (= (containsKey!1812 (t!357766 lt!1702716) key!3287) e!2820926)))

(declare-fun b!4527425 () Bool)

(declare-fun e!2820927 () Bool)

(assert (=> b!4527425 (= e!2820926 e!2820927)))

(declare-fun res!1885109 () Bool)

(assert (=> b!4527425 (=> (not res!1885109) (not e!2820927))))

(assert (=> b!4527425 (= res!1885109 ((_ is Cons!50680) (t!357766 lt!1702716)))))

(declare-fun b!4527426 () Bool)

(assert (=> b!4527426 (= e!2820927 (containsKey!1812 (t!357766 (t!357766 lt!1702716)) key!3287))))

(assert (= (and d!1396610 (not res!1885108)) b!4527425))

(assert (= (and b!4527425 res!1885109) b!4527426))

(declare-fun m!5281633 () Bool)

(assert (=> b!4527426 m!5281633))

(assert (=> b!4526844 d!1396610))

(declare-fun d!1396612 () Bool)

(assert (=> d!1396612 (= (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702718) key!3287)) (not (isEmpty!28700 (getValueByKey!1113 (toList!4352 lt!1702718) key!3287))))))

(declare-fun bs!862479 () Bool)

(assert (= bs!862479 d!1396612))

(assert (=> bs!862479 m!5281061))

(declare-fun m!5281635 () Bool)

(assert (=> bs!862479 m!5281635))

(assert (=> b!4527006 d!1396612))

(declare-fun b!4527429 () Bool)

(declare-fun e!2820929 () Option!11143)

(assert (=> b!4527429 (= e!2820929 (getValueByKey!1113 (t!357766 (toList!4352 lt!1702718)) key!3287))))

(declare-fun b!4527428 () Bool)

(declare-fun e!2820928 () Option!11143)

(assert (=> b!4527428 (= e!2820928 e!2820929)))

(declare-fun c!772927 () Bool)

(assert (=> b!4527428 (= c!772927 (and ((_ is Cons!50680) (toList!4352 lt!1702718)) (not (= (_1!28855 (h!56543 (toList!4352 lt!1702718))) key!3287))))))

(declare-fun b!4527430 () Bool)

(assert (=> b!4527430 (= e!2820929 None!11142)))

(declare-fun b!4527427 () Bool)

(assert (=> b!4527427 (= e!2820928 (Some!11142 (_2!28855 (h!56543 (toList!4352 lt!1702718)))))))

(declare-fun d!1396614 () Bool)

(declare-fun c!772926 () Bool)

(assert (=> d!1396614 (= c!772926 (and ((_ is Cons!50680) (toList!4352 lt!1702718)) (= (_1!28855 (h!56543 (toList!4352 lt!1702718))) key!3287)))))

(assert (=> d!1396614 (= (getValueByKey!1113 (toList!4352 lt!1702718) key!3287) e!2820928)))

(assert (= (and d!1396614 c!772926) b!4527427))

(assert (= (and d!1396614 (not c!772926)) b!4527428))

(assert (= (and b!4527428 c!772927) b!4527429))

(assert (= (and b!4527428 (not c!772927)) b!4527430))

(declare-fun m!5281637 () Bool)

(assert (=> b!4527429 m!5281637))

(assert (=> b!4527006 d!1396614))

(declare-fun d!1396616 () Bool)

(declare-fun lt!1703324 () Bool)

(assert (=> d!1396616 (= lt!1703324 (select (content!8386 e!2820478) key!3287))))

(declare-fun e!2820931 () Bool)

(assert (=> d!1396616 (= lt!1703324 e!2820931)))

(declare-fun res!1885110 () Bool)

(assert (=> d!1396616 (=> (not res!1885110) (not e!2820931))))

(assert (=> d!1396616 (= res!1885110 ((_ is Cons!50683) e!2820478))))

(assert (=> d!1396616 (= (contains!13431 e!2820478 key!3287) lt!1703324)))

(declare-fun b!4527431 () Bool)

(declare-fun e!2820930 () Bool)

(assert (=> b!4527431 (= e!2820931 e!2820930)))

(declare-fun res!1885111 () Bool)

(assert (=> b!4527431 (=> res!1885111 e!2820930)))

(assert (=> b!4527431 (= res!1885111 (= (h!56548 e!2820478) key!3287))))

(declare-fun b!4527432 () Bool)

(assert (=> b!4527432 (= e!2820930 (contains!13431 (t!357769 e!2820478) key!3287))))

(assert (= (and d!1396616 res!1885110) b!4527431))

(assert (= (and b!4527431 (not res!1885111)) b!4527432))

(declare-fun m!5281639 () Bool)

(assert (=> d!1396616 m!5281639))

(declare-fun m!5281641 () Bool)

(assert (=> d!1396616 m!5281641))

(declare-fun m!5281643 () Bool)

(assert (=> b!4527432 m!5281643))

(assert (=> bm!315473 d!1396616))

(declare-fun d!1396618 () Bool)

(declare-fun choose!29674 (Hashable!5567 K!12070) (_ BitVec 64))

(assert (=> d!1396618 (= (hash!2849 hashF!1107 key!3287) (choose!29674 hashF!1107 key!3287))))

(declare-fun bs!862480 () Bool)

(assert (= bs!862480 d!1396618))

(declare-fun m!5281645 () Bool)

(assert (=> bs!862480 m!5281645))

(assert (=> d!1396368 d!1396618))

(declare-fun d!1396620 () Bool)

(declare-fun noDuplicatedKeys!269 (List!50804) Bool)

(assert (=> d!1396620 (= (invariantList!1027 (toList!4352 lt!1702834)) (noDuplicatedKeys!269 (toList!4352 lt!1702834)))))

(declare-fun bs!862481 () Bool)

(assert (= bs!862481 d!1396620))

(declare-fun m!5281647 () Bool)

(assert (=> bs!862481 m!5281647))

(assert (=> d!1396204 d!1396620))

(declare-fun d!1396622 () Bool)

(declare-fun res!1885112 () Bool)

(declare-fun e!2820932 () Bool)

(assert (=> d!1396622 (=> res!1885112 e!2820932)))

(assert (=> d!1396622 (= res!1885112 ((_ is Nil!50681) (t!357767 (toList!4351 lm!1477))))))

(assert (=> d!1396622 (= (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173594) e!2820932)))

(declare-fun b!4527433 () Bool)

(declare-fun e!2820933 () Bool)

(assert (=> b!4527433 (= e!2820932 e!2820933)))

(declare-fun res!1885113 () Bool)

(assert (=> b!4527433 (=> (not res!1885113) (not e!2820933))))

(assert (=> b!4527433 (= res!1885113 (dynLambda!21178 lambda!173594 (h!56544 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun b!4527434 () Bool)

(assert (=> b!4527434 (= e!2820933 (forall!10291 (t!357767 (t!357767 (toList!4351 lm!1477))) lambda!173594))))

(assert (= (and d!1396622 (not res!1885112)) b!4527433))

(assert (= (and b!4527433 res!1885113) b!4527434))

(declare-fun b_lambda!156001 () Bool)

(assert (=> (not b_lambda!156001) (not b!4527433)))

(declare-fun m!5281649 () Bool)

(assert (=> b!4527433 m!5281649))

(declare-fun m!5281651 () Bool)

(assert (=> b!4527434 m!5281651))

(assert (=> d!1396204 d!1396622))

(declare-fun d!1396624 () Bool)

(declare-fun res!1885114 () Bool)

(declare-fun e!2820934 () Bool)

(assert (=> d!1396624 (=> res!1885114 e!2820934)))

(assert (=> d!1396624 (= res!1885114 ((_ is Nil!50680) (ite c!772821 (toList!4352 lt!1702724) (_2!28856 lt!1702727))))))

(assert (=> d!1396624 (= (forall!10293 (ite c!772821 (toList!4352 lt!1702724) (_2!28856 lt!1702727)) (ite c!772821 lambda!173700 lambda!173702)) e!2820934)))

(declare-fun b!4527435 () Bool)

(declare-fun e!2820935 () Bool)

(assert (=> b!4527435 (= e!2820934 e!2820935)))

(declare-fun res!1885115 () Bool)

(assert (=> b!4527435 (=> (not res!1885115) (not e!2820935))))

(assert (=> b!4527435 (= res!1885115 (dynLambda!21181 (ite c!772821 lambda!173700 lambda!173702) (h!56543 (ite c!772821 (toList!4352 lt!1702724) (_2!28856 lt!1702727)))))))

(declare-fun b!4527436 () Bool)

(assert (=> b!4527436 (= e!2820935 (forall!10293 (t!357766 (ite c!772821 (toList!4352 lt!1702724) (_2!28856 lt!1702727))) (ite c!772821 lambda!173700 lambda!173702)))))

(assert (= (and d!1396624 (not res!1885114)) b!4527435))

(assert (= (and b!4527435 res!1885115) b!4527436))

(declare-fun b_lambda!156003 () Bool)

(assert (=> (not b_lambda!156003) (not b!4527435)))

(declare-fun m!5281653 () Bool)

(assert (=> b!4527435 m!5281653))

(declare-fun m!5281655 () Bool)

(assert (=> b!4527436 m!5281655))

(assert (=> bm!315496 d!1396624))

(declare-fun d!1396626 () Bool)

(declare-fun e!2820937 () Bool)

(assert (=> d!1396626 e!2820937))

(declare-fun res!1885116 () Bool)

(assert (=> d!1396626 (=> res!1885116 e!2820937)))

(declare-fun lt!1703326 () Bool)

(assert (=> d!1396626 (= res!1885116 (not lt!1703326))))

(declare-fun lt!1703328 () Bool)

(assert (=> d!1396626 (= lt!1703326 lt!1703328)))

(declare-fun lt!1703327 () Unit!96156)

(declare-fun e!2820936 () Unit!96156)

(assert (=> d!1396626 (= lt!1703327 e!2820936)))

(declare-fun c!772928 () Bool)

(assert (=> d!1396626 (= c!772928 lt!1703328)))

(assert (=> d!1396626 (= lt!1703328 (containsKey!1815 (toList!4351 lt!1702772) (_1!28856 lt!1702726)))))

(assert (=> d!1396626 (= (contains!13429 lt!1702772 (_1!28856 lt!1702726)) lt!1703326)))

(declare-fun b!4527437 () Bool)

(declare-fun lt!1703325 () Unit!96156)

(assert (=> b!4527437 (= e!2820936 lt!1703325)))

(assert (=> b!4527437 (= lt!1703325 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702772) (_1!28856 lt!1702726)))))

(assert (=> b!4527437 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702772) (_1!28856 lt!1702726)))))

(declare-fun b!4527438 () Bool)

(declare-fun Unit!96259 () Unit!96156)

(assert (=> b!4527438 (= e!2820936 Unit!96259)))

(declare-fun b!4527439 () Bool)

(assert (=> b!4527439 (= e!2820937 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702772) (_1!28856 lt!1702726))))))

(assert (= (and d!1396626 c!772928) b!4527437))

(assert (= (and d!1396626 (not c!772928)) b!4527438))

(assert (= (and d!1396626 (not res!1885116)) b!4527439))

(declare-fun m!5281657 () Bool)

(assert (=> d!1396626 m!5281657))

(declare-fun m!5281659 () Bool)

(assert (=> b!4527437 m!5281659))

(assert (=> b!4527437 m!5280395))

(assert (=> b!4527437 m!5280395))

(declare-fun m!5281661 () Bool)

(assert (=> b!4527437 m!5281661))

(assert (=> b!4527439 m!5280395))

(assert (=> b!4527439 m!5280395))

(assert (=> b!4527439 m!5281661))

(assert (=> d!1396178 d!1396626))

(declare-fun b!4527443 () Bool)

(declare-fun e!2820939 () Option!11142)

(assert (=> b!4527443 (= e!2820939 None!11141)))

(declare-fun b!4527440 () Bool)

(declare-fun e!2820938 () Option!11142)

(assert (=> b!4527440 (= e!2820938 (Some!11141 (_2!28856 (h!56544 lt!1702773))))))

(declare-fun b!4527441 () Bool)

(assert (=> b!4527441 (= e!2820938 e!2820939)))

(declare-fun c!772930 () Bool)

(assert (=> b!4527441 (= c!772930 (and ((_ is Cons!50681) lt!1702773) (not (= (_1!28856 (h!56544 lt!1702773)) (_1!28856 lt!1702726)))))))

(declare-fun b!4527442 () Bool)

(assert (=> b!4527442 (= e!2820939 (getValueByKey!1112 (t!357767 lt!1702773) (_1!28856 lt!1702726)))))

(declare-fun d!1396628 () Bool)

(declare-fun c!772929 () Bool)

(assert (=> d!1396628 (= c!772929 (and ((_ is Cons!50681) lt!1702773) (= (_1!28856 (h!56544 lt!1702773)) (_1!28856 lt!1702726))))))

(assert (=> d!1396628 (= (getValueByKey!1112 lt!1702773 (_1!28856 lt!1702726)) e!2820938)))

(assert (= (and d!1396628 c!772929) b!4527440))

(assert (= (and d!1396628 (not c!772929)) b!4527441))

(assert (= (and b!4527441 c!772930) b!4527442))

(assert (= (and b!4527441 (not c!772930)) b!4527443))

(declare-fun m!5281663 () Bool)

(assert (=> b!4527442 m!5281663))

(assert (=> d!1396178 d!1396628))

(declare-fun d!1396630 () Bool)

(assert (=> d!1396630 (= (getValueByKey!1112 lt!1702773 (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726)))))

(declare-fun lt!1703331 () Unit!96156)

(declare-fun choose!29675 (List!50805 (_ BitVec 64) List!50804) Unit!96156)

(assert (=> d!1396630 (= lt!1703331 (choose!29675 lt!1702773 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(declare-fun e!2820942 () Bool)

(assert (=> d!1396630 e!2820942))

(declare-fun res!1885121 () Bool)

(assert (=> d!1396630 (=> (not res!1885121) (not e!2820942))))

(assert (=> d!1396630 (= res!1885121 (isStrictlySorted!440 lt!1702773))))

(assert (=> d!1396630 (= (lemmaContainsTupThenGetReturnValue!694 lt!1702773 (_1!28856 lt!1702726) (_2!28856 lt!1702726)) lt!1703331)))

(declare-fun b!4527448 () Bool)

(declare-fun res!1885122 () Bool)

(assert (=> b!4527448 (=> (not res!1885122) (not e!2820942))))

(assert (=> b!4527448 (= res!1885122 (containsKey!1815 lt!1702773 (_1!28856 lt!1702726)))))

(declare-fun b!4527449 () Bool)

(assert (=> b!4527449 (= e!2820942 (contains!13428 lt!1702773 (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726))))))

(assert (= (and d!1396630 res!1885121) b!4527448))

(assert (= (and b!4527448 res!1885122) b!4527449))

(assert (=> d!1396630 m!5280381))

(declare-fun m!5281665 () Bool)

(assert (=> d!1396630 m!5281665))

(declare-fun m!5281667 () Bool)

(assert (=> d!1396630 m!5281667))

(declare-fun m!5281669 () Bool)

(assert (=> b!4527448 m!5281669))

(declare-fun m!5281671 () Bool)

(assert (=> b!4527449 m!5281671))

(assert (=> d!1396178 d!1396630))

(declare-fun c!772941 () Bool)

(declare-fun b!4527470 () Bool)

(declare-fun e!2820955 () List!50805)

(declare-fun c!772940 () Bool)

(assert (=> b!4527470 (= e!2820955 (ite c!772941 (t!357767 (toList!4351 lm!1477)) (ite c!772940 (Cons!50681 (h!56544 (toList!4351 lm!1477)) (t!357767 (toList!4351 lm!1477))) Nil!50681)))))

(declare-fun b!4527471 () Bool)

(declare-fun e!2820957 () List!50805)

(declare-fun call!315529 () List!50805)

(assert (=> b!4527471 (= e!2820957 call!315529)))

(declare-fun d!1396632 () Bool)

(declare-fun e!2820953 () Bool)

(assert (=> d!1396632 e!2820953))

(declare-fun res!1885128 () Bool)

(assert (=> d!1396632 (=> (not res!1885128) (not e!2820953))))

(declare-fun lt!1703334 () List!50805)

(assert (=> d!1396632 (= res!1885128 (isStrictlySorted!440 lt!1703334))))

(assert (=> d!1396632 (= lt!1703334 e!2820957)))

(declare-fun c!772939 () Bool)

(assert (=> d!1396632 (= c!772939 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (bvslt (_1!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 lt!1702726))))))

(assert (=> d!1396632 (isStrictlySorted!440 (toList!4351 lm!1477))))

(assert (=> d!1396632 (= (insertStrictlySorted!418 (toList!4351 lm!1477) (_1!28856 lt!1702726) (_2!28856 lt!1702726)) lt!1703334)))

(declare-fun b!4527472 () Bool)

(assert (=> b!4527472 (= c!772940 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (bvsgt (_1!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 lt!1702726))))))

(declare-fun e!2820954 () List!50805)

(declare-fun e!2820956 () List!50805)

(assert (=> b!4527472 (= e!2820954 e!2820956)))

(declare-fun b!4527473 () Bool)

(declare-fun res!1885127 () Bool)

(assert (=> b!4527473 (=> (not res!1885127) (not e!2820953))))

(assert (=> b!4527473 (= res!1885127 (containsKey!1815 lt!1703334 (_1!28856 lt!1702726)))))

(declare-fun b!4527474 () Bool)

(assert (=> b!4527474 (= e!2820953 (contains!13428 lt!1703334 (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726))))))

(declare-fun bm!315523 () Bool)

(declare-fun call!315528 () List!50805)

(declare-fun call!315530 () List!50805)

(assert (=> bm!315523 (= call!315528 call!315530)))

(declare-fun b!4527475 () Bool)

(assert (=> b!4527475 (= e!2820956 call!315528)))

(declare-fun b!4527476 () Bool)

(assert (=> b!4527476 (= e!2820957 e!2820954)))

(assert (=> b!4527476 (= c!772941 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (= (_1!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 lt!1702726))))))

(declare-fun bm!315524 () Bool)

(assert (=> bm!315524 (= call!315530 call!315529)))

(declare-fun b!4527477 () Bool)

(assert (=> b!4527477 (= e!2820955 (insertStrictlySorted!418 (t!357767 (toList!4351 lm!1477)) (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(declare-fun b!4527478 () Bool)

(assert (=> b!4527478 (= e!2820954 call!315530)))

(declare-fun b!4527479 () Bool)

(assert (=> b!4527479 (= e!2820956 call!315528)))

(declare-fun bm!315525 () Bool)

(declare-fun $colon$colon!949 (List!50805 tuple2!51124) List!50805)

(assert (=> bm!315525 (= call!315529 ($colon$colon!949 e!2820955 (ite c!772939 (h!56544 (toList!4351 lm!1477)) (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))))

(declare-fun c!772942 () Bool)

(assert (=> bm!315525 (= c!772942 c!772939)))

(assert (= (and d!1396632 c!772939) b!4527471))

(assert (= (and d!1396632 (not c!772939)) b!4527476))

(assert (= (and b!4527476 c!772941) b!4527478))

(assert (= (and b!4527476 (not c!772941)) b!4527472))

(assert (= (and b!4527472 c!772940) b!4527475))

(assert (= (and b!4527472 (not c!772940)) b!4527479))

(assert (= (or b!4527475 b!4527479) bm!315523))

(assert (= (or b!4527478 bm!315523) bm!315524))

(assert (= (or b!4527471 bm!315524) bm!315525))

(assert (= (and bm!315525 c!772942) b!4527477))

(assert (= (and bm!315525 (not c!772942)) b!4527470))

(assert (= (and d!1396632 res!1885128) b!4527473))

(assert (= (and b!4527473 res!1885127) b!4527474))

(declare-fun m!5281673 () Bool)

(assert (=> b!4527477 m!5281673))

(declare-fun m!5281675 () Bool)

(assert (=> d!1396632 m!5281675))

(assert (=> d!1396632 m!5280355))

(declare-fun m!5281677 () Bool)

(assert (=> b!4527474 m!5281677))

(declare-fun m!5281679 () Bool)

(assert (=> bm!315525 m!5281679))

(declare-fun m!5281681 () Bool)

(assert (=> b!4527473 m!5281681))

(assert (=> d!1396178 d!1396632))

(declare-fun bs!862482 () Bool)

(declare-fun d!1396634 () Bool)

(assert (= bs!862482 (and d!1396634 d!1396296)))

(declare-fun lambda!173754 () Int)

(assert (=> bs!862482 (not (= lambda!173754 lambda!173703))))

(declare-fun bs!862483 () Bool)

(assert (= bs!862483 (and d!1396634 b!4527305)))

(assert (=> bs!862483 (not (= lambda!173754 lambda!173739))))

(declare-fun bs!862484 () Bool)

(assert (= bs!862484 (and d!1396634 b!4526999)))

(assert (=> bs!862484 (not (= lambda!173754 lambda!173701))))

(declare-fun bs!862485 () Bool)

(assert (= bs!862485 (and d!1396634 b!4527019)))

(assert (=> bs!862485 (not (= lambda!173754 lambda!173713))))

(declare-fun bs!862486 () Bool)

(assert (= bs!862486 (and d!1396634 b!4527307)))

(assert (=> bs!862486 (not (= lambda!173754 lambda!173740))))

(assert (=> bs!862484 (not (= lambda!173754 lambda!173702))))

(declare-fun bs!862487 () Bool)

(assert (= bs!862487 (and d!1396634 d!1396260)))

(assert (=> bs!862487 (= (= (_1!28856 (h!56544 (toList!4351 lm!1477))) hash!344) (= lambda!173754 lambda!173651))))

(declare-fun bs!862488 () Bool)

(assert (= bs!862488 (and d!1396634 d!1396572)))

(assert (=> bs!862488 (not (= lambda!173754 lambda!173753))))

(assert (=> bs!862486 (not (= lambda!173754 lambda!173743))))

(declare-fun bs!862489 () Bool)

(assert (= bs!862489 (and d!1396634 b!4526608)))

(assert (=> bs!862489 (= lambda!173754 lambda!173585)))

(declare-fun bs!862490 () Bool)

(assert (= bs!862490 (and d!1396634 b!4527017)))

(assert (=> bs!862490 (not (= lambda!173754 lambda!173711))))

(declare-fun bs!862491 () Bool)

(assert (= bs!862491 (and d!1396634 d!1396390)))

(assert (=> bs!862491 (not (= lambda!173754 lambda!173714))))

(declare-fun bs!862492 () Bool)

(assert (= bs!862492 (and d!1396634 b!4526997)))

(assert (=> bs!862492 (not (= lambda!173754 lambda!173700))))

(assert (=> bs!862485 (not (= lambda!173754 lambda!173712))))

(declare-fun bs!862493 () Bool)

(assert (= bs!862493 (and d!1396634 d!1396498)))

(assert (=> bs!862493 (not (= lambda!173754 lambda!173736))))

(declare-fun bs!862494 () Bool)

(assert (= bs!862494 (and d!1396634 d!1396564)))

(assert (=> bs!862494 (not (= lambda!173754 lambda!173746))))

(assert (=> d!1396634 true))

(assert (=> d!1396634 true))

(assert (=> d!1396634 (= (allKeysSameHash!1026 (_2!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 (h!56544 (toList!4351 lm!1477))) hashF!1107) (forall!10293 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173754))))

(declare-fun bs!862495 () Bool)

(assert (= bs!862495 d!1396634))

(declare-fun m!5281683 () Bool)

(assert (=> bs!862495 m!5281683))

(assert (=> bs!862389 d!1396634))

(declare-fun d!1396636 () Bool)

(declare-fun res!1885133 () Bool)

(declare-fun e!2820964 () Bool)

(assert (=> d!1396636 (=> res!1885133 e!2820964)))

(assert (=> d!1396636 (= res!1885133 (and ((_ is Cons!50681) (toList!4351 lm!1477)) (= (_1!28856 (h!56544 (toList!4351 lm!1477))) lt!1702728)))))

(assert (=> d!1396636 (= (containsKey!1815 (toList!4351 lm!1477) lt!1702728) e!2820964)))

(declare-fun b!4527484 () Bool)

(declare-fun e!2820965 () Bool)

(assert (=> b!4527484 (= e!2820964 e!2820965)))

(declare-fun res!1885134 () Bool)

(assert (=> b!4527484 (=> (not res!1885134) (not e!2820965))))

(assert (=> b!4527484 (= res!1885134 (and (or (not ((_ is Cons!50681) (toList!4351 lm!1477))) (bvsle (_1!28856 (h!56544 (toList!4351 lm!1477))) lt!1702728)) ((_ is Cons!50681) (toList!4351 lm!1477)) (bvslt (_1!28856 (h!56544 (toList!4351 lm!1477))) lt!1702728)))))

(declare-fun b!4527485 () Bool)

(assert (=> b!4527485 (= e!2820965 (containsKey!1815 (t!357767 (toList!4351 lm!1477)) lt!1702728))))

(assert (= (and d!1396636 (not res!1885133)) b!4527484))

(assert (= (and b!4527484 res!1885134) b!4527485))

(declare-fun m!5281685 () Bool)

(assert (=> b!4527485 m!5281685))

(assert (=> d!1396290 d!1396636))

(declare-fun d!1396638 () Bool)

(declare-fun lt!1703335 () Bool)

(assert (=> d!1396638 (= lt!1703335 (select (content!8385 (toList!4351 lt!1702772)) lt!1702726))))

(declare-fun e!2820966 () Bool)

(assert (=> d!1396638 (= lt!1703335 e!2820966)))

(declare-fun res!1885135 () Bool)

(assert (=> d!1396638 (=> (not res!1885135) (not e!2820966))))

(assert (=> d!1396638 (= res!1885135 ((_ is Cons!50681) (toList!4351 lt!1702772)))))

(assert (=> d!1396638 (= (contains!13428 (toList!4351 lt!1702772) lt!1702726) lt!1703335)))

(declare-fun b!4527486 () Bool)

(declare-fun e!2820967 () Bool)

(assert (=> b!4527486 (= e!2820966 e!2820967)))

(declare-fun res!1885136 () Bool)

(assert (=> b!4527486 (=> res!1885136 e!2820967)))

(assert (=> b!4527486 (= res!1885136 (= (h!56544 (toList!4351 lt!1702772)) lt!1702726))))

(declare-fun b!4527487 () Bool)

(assert (=> b!4527487 (= e!2820967 (contains!13428 (t!357767 (toList!4351 lt!1702772)) lt!1702726))))

(assert (= (and d!1396638 res!1885135) b!4527486))

(assert (= (and b!4527486 (not res!1885136)) b!4527487))

(declare-fun m!5281687 () Bool)

(assert (=> d!1396638 m!5281687))

(declare-fun m!5281689 () Bool)

(assert (=> d!1396638 m!5281689))

(declare-fun m!5281691 () Bool)

(assert (=> b!4527487 m!5281691))

(assert (=> b!4526680 d!1396638))

(declare-fun d!1396640 () Bool)

(declare-fun c!772943 () Bool)

(assert (=> d!1396640 (= c!772943 ((_ is Nil!50680) (toList!4352 lt!1702736)))))

(declare-fun e!2820968 () (InoxSet tuple2!51122))

(assert (=> d!1396640 (= (content!8387 (toList!4352 lt!1702736)) e!2820968)))

(declare-fun b!4527488 () Bool)

(assert (=> b!4527488 (= e!2820968 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527489 () Bool)

(assert (=> b!4527489 (= e!2820968 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702736)) true) (content!8387 (t!357766 (toList!4352 lt!1702736)))))))

(assert (= (and d!1396640 c!772943) b!4527488))

(assert (= (and d!1396640 (not c!772943)) b!4527489))

(declare-fun m!5281693 () Bool)

(assert (=> b!4527489 m!5281693))

(declare-fun m!5281695 () Bool)

(assert (=> b!4527489 m!5281695))

(assert (=> d!1396292 d!1396640))

(assert (=> d!1396292 d!1396440))

(declare-fun b!4527490 () Bool)

(declare-fun e!2820969 () List!50807)

(assert (=> b!4527490 (= e!2820969 (keys!17616 lt!1702931))))

(declare-fun d!1396642 () Bool)

(declare-fun e!2820974 () Bool)

(assert (=> d!1396642 e!2820974))

(declare-fun res!1885137 () Bool)

(assert (=> d!1396642 (=> res!1885137 e!2820974)))

(declare-fun e!2820973 () Bool)

(assert (=> d!1396642 (= res!1885137 e!2820973)))

(declare-fun res!1885139 () Bool)

(assert (=> d!1396642 (=> (not res!1885139) (not e!2820973))))

(declare-fun lt!1703339 () Bool)

(assert (=> d!1396642 (= res!1885139 (not lt!1703339))))

(declare-fun lt!1703341 () Bool)

(assert (=> d!1396642 (= lt!1703339 lt!1703341)))

(declare-fun lt!1703342 () Unit!96156)

(declare-fun e!2820972 () Unit!96156)

(assert (=> d!1396642 (= lt!1703342 e!2820972)))

(declare-fun c!772945 () Bool)

(assert (=> d!1396642 (= c!772945 lt!1703341)))

(assert (=> d!1396642 (= lt!1703341 (containsKey!1814 (toList!4352 lt!1702931) key!3287))))

(assert (=> d!1396642 (= (contains!13427 lt!1702931 key!3287) lt!1703339)))

(declare-fun b!4527491 () Bool)

(declare-fun e!2820971 () Unit!96156)

(declare-fun Unit!96271 () Unit!96156)

(assert (=> b!4527491 (= e!2820971 Unit!96271)))

(declare-fun bm!315526 () Bool)

(declare-fun call!315531 () Bool)

(assert (=> bm!315526 (= call!315531 (contains!13431 e!2820969 key!3287))))

(declare-fun c!772946 () Bool)

(assert (=> bm!315526 (= c!772946 c!772945)))

(declare-fun b!4527492 () Bool)

(assert (=> b!4527492 (= e!2820969 (getKeysList!475 (toList!4352 lt!1702931)))))

(declare-fun b!4527493 () Bool)

(declare-fun e!2820970 () Bool)

(assert (=> b!4527493 (= e!2820974 e!2820970)))

(declare-fun res!1885138 () Bool)

(assert (=> b!4527493 (=> (not res!1885138) (not e!2820970))))

(assert (=> b!4527493 (= res!1885138 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702931) key!3287)))))

(declare-fun b!4527494 () Bool)

(assert (=> b!4527494 (= e!2820970 (contains!13431 (keys!17616 lt!1702931) key!3287))))

(declare-fun b!4527495 () Bool)

(assert (=> b!4527495 (= e!2820973 (not (contains!13431 (keys!17616 lt!1702931) key!3287)))))

(declare-fun b!4527496 () Bool)

(assert (=> b!4527496 false))

(declare-fun lt!1703340 () Unit!96156)

(declare-fun lt!1703338 () Unit!96156)

(assert (=> b!4527496 (= lt!1703340 lt!1703338)))

(assert (=> b!4527496 (containsKey!1814 (toList!4352 lt!1702931) key!3287)))

(assert (=> b!4527496 (= lt!1703338 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1702931) key!3287))))

(declare-fun Unit!96272 () Unit!96156)

(assert (=> b!4527496 (= e!2820971 Unit!96272)))

(declare-fun b!4527497 () Bool)

(assert (=> b!4527497 (= e!2820972 e!2820971)))

(declare-fun c!772944 () Bool)

(assert (=> b!4527497 (= c!772944 call!315531)))

(declare-fun b!4527498 () Bool)

(declare-fun lt!1703336 () Unit!96156)

(assert (=> b!4527498 (= e!2820972 lt!1703336)))

(declare-fun lt!1703337 () Unit!96156)

(assert (=> b!4527498 (= lt!1703337 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702931) key!3287))))

(assert (=> b!4527498 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702931) key!3287))))

(declare-fun lt!1703343 () Unit!96156)

(assert (=> b!4527498 (= lt!1703343 lt!1703337)))

(assert (=> b!4527498 (= lt!1703336 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1702931) key!3287))))

(assert (=> b!4527498 call!315531))

(assert (= (and d!1396642 c!772945) b!4527498))

(assert (= (and d!1396642 (not c!772945)) b!4527497))

(assert (= (and b!4527497 c!772944) b!4527496))

(assert (= (and b!4527497 (not c!772944)) b!4527491))

(assert (= (or b!4527498 b!4527497) bm!315526))

(assert (= (and bm!315526 c!772946) b!4527492))

(assert (= (and bm!315526 (not c!772946)) b!4527490))

(assert (= (and d!1396642 res!1885139) b!4527495))

(assert (= (and d!1396642 (not res!1885137)) b!4527493))

(assert (= (and b!4527493 res!1885138) b!4527494))

(declare-fun m!5281697 () Bool)

(assert (=> b!4527496 m!5281697))

(declare-fun m!5281699 () Bool)

(assert (=> b!4527496 m!5281699))

(assert (=> d!1396642 m!5281697))

(assert (=> b!4527495 m!5280573))

(assert (=> b!4527495 m!5280573))

(declare-fun m!5281701 () Bool)

(assert (=> b!4527495 m!5281701))

(declare-fun m!5281703 () Bool)

(assert (=> b!4527492 m!5281703))

(declare-fun m!5281705 () Bool)

(assert (=> b!4527493 m!5281705))

(assert (=> b!4527493 m!5281705))

(declare-fun m!5281707 () Bool)

(assert (=> b!4527493 m!5281707))

(declare-fun m!5281709 () Bool)

(assert (=> b!4527498 m!5281709))

(assert (=> b!4527498 m!5281705))

(assert (=> b!4527498 m!5281705))

(assert (=> b!4527498 m!5281707))

(declare-fun m!5281711 () Bool)

(assert (=> b!4527498 m!5281711))

(assert (=> b!4527494 m!5280573))

(assert (=> b!4527494 m!5280573))

(assert (=> b!4527494 m!5281701))

(assert (=> b!4527490 m!5280573))

(declare-fun m!5281713 () Bool)

(assert (=> bm!315526 m!5281713))

(assert (=> d!1396224 d!1396642))

(declare-fun b!4527641 () Bool)

(declare-fun e!2821063 () Bool)

(declare-fun e!2821062 () Bool)

(assert (=> b!4527641 (= e!2821063 e!2821062)))

(declare-fun c!772996 () Bool)

(assert (=> b!4527641 (= c!772996 (containsKey!1814 (toList!4352 lt!1702732) key!3287))))

(declare-fun b!4527642 () Bool)

(declare-fun res!1885187 () Bool)

(assert (=> b!4527642 (=> (not res!1885187) (not e!2821063))))

(declare-fun lt!1703500 () List!50804)

(assert (=> b!4527642 (= res!1885187 (= (content!8386 (getKeysList!475 lt!1703500)) ((_ map and) (content!8386 (getKeysList!475 (toList!4352 lt!1702732))) ((_ map not) (store ((as const (Array K!12070 Bool)) false) key!3287 true)))))))

(declare-fun bm!315562 () Bool)

(declare-fun call!315567 () (InoxSet tuple2!51122))

(assert (=> bm!315562 (= call!315567 (content!8387 (toList!4352 lt!1702732)))))

(declare-fun b!4527643 () Bool)

(declare-fun e!2821061 () List!50804)

(assert (=> b!4527643 (= e!2821061 (t!357766 (toList!4352 lt!1702732)))))

(declare-fun b!4527644 () Bool)

(assert (=> b!4527644 (= e!2821061 (removePresrvNoDuplicatedKeys!150 (t!357766 (toList!4352 lt!1702732)) key!3287))))

(declare-fun b!4527645 () Bool)

(declare-fun call!315570 () (InoxSet tuple2!51122))

(declare-fun call!315569 () (InoxSet tuple2!51122))

(assert (=> b!4527645 (= e!2821062 (= call!315570 call!315569))))

(declare-fun c!772994 () Bool)

(declare-fun call!315571 () Bool)

(declare-fun bm!315563 () Bool)

(assert (=> bm!315563 (= call!315571 (containsKey!1814 (ite c!772994 (toList!4352 lt!1702732) (t!357766 (toList!4352 lt!1702732))) (ite c!772994 key!3287 (_1!28855 (h!56543 (toList!4352 lt!1702732))))))))

(declare-fun b!4527646 () Bool)

(declare-fun e!2821065 () List!50804)

(assert (=> b!4527646 (= e!2821065 (t!357766 (toList!4352 lt!1702732)))))

(declare-fun c!773001 () Bool)

(assert (=> b!4527646 (= c!773001 call!315571)))

(declare-fun lt!1703494 () Unit!96156)

(declare-fun e!2821064 () Unit!96156)

(assert (=> b!4527646 (= lt!1703494 e!2821064)))

(declare-fun b!4527647 () Bool)

(declare-fun e!2821059 () Unit!96156)

(declare-fun Unit!96275 () Unit!96156)

(assert (=> b!4527647 (= e!2821059 Unit!96275)))

(declare-fun b!4527648 () Bool)

(declare-fun get!16622 (Option!11143) V!12316)

(assert (=> b!4527648 (= e!2821062 (= call!315570 ((_ map and) call!315569 ((_ map not) (store ((as const (Array tuple2!51122 Bool)) false) (tuple2!51123 key!3287 (get!16622 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))) true)))))))

(assert (=> b!4527648 (containsKey!1814 (toList!4352 lt!1702732) key!3287)))

(declare-fun lt!1703501 () Unit!96156)

(assert (=> b!4527648 (= lt!1703501 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702732) key!3287))))

(assert (=> b!4527648 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))))

(declare-fun lt!1703488 () Unit!96156)

(assert (=> b!4527648 (= lt!1703488 lt!1703501)))

(declare-fun b!4527649 () Bool)

(declare-fun e!2821058 () Unit!96156)

(declare-fun Unit!96276 () Unit!96156)

(assert (=> b!4527649 (= e!2821058 Unit!96276)))

(declare-fun lt!1703492 () Unit!96156)

(assert (=> b!4527649 (= lt!1703492 (lemmaInGetKeysListThenContainsKey!474 (t!357766 (toList!4352 lt!1702732)) (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(assert (=> b!4527649 call!315571))

(declare-fun lt!1703487 () Unit!96156)

(assert (=> b!4527649 (= lt!1703487 lt!1703492)))

(assert (=> b!4527649 false))

(declare-fun bm!315564 () Bool)

(assert (=> bm!315564 (= call!315569 (content!8387 (toList!4352 lt!1702732)))))

(declare-fun d!1396644 () Bool)

(assert (=> d!1396644 e!2821063))

(declare-fun res!1885189 () Bool)

(assert (=> d!1396644 (=> (not res!1885189) (not e!2821063))))

(assert (=> d!1396644 (= res!1885189 (invariantList!1027 lt!1703500))))

(assert (=> d!1396644 (= lt!1703500 e!2821065)))

(assert (=> d!1396644 (= c!772994 (and ((_ is Cons!50680) (toList!4352 lt!1702732)) (= (_1!28855 (h!56543 (toList!4352 lt!1702732))) key!3287)))))

(assert (=> d!1396644 (invariantList!1027 (toList!4352 lt!1702732))))

(assert (=> d!1396644 (= (removePresrvNoDuplicatedKeys!150 (toList!4352 lt!1702732) key!3287) lt!1703500)))

(declare-fun b!4527650 () Bool)

(declare-fun Unit!96277 () Unit!96156)

(assert (=> b!4527650 (= e!2821059 Unit!96277)))

(declare-fun lt!1703499 () V!12316)

(assert (=> b!4527650 (= lt!1703499 (get!16622 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287)))))

(declare-fun lt!1703491 () K!12070)

(assert (=> b!4527650 (= lt!1703491 key!3287)))

(declare-fun lt!1703490 () K!12070)

(assert (=> b!4527650 (= lt!1703490 key!3287)))

(declare-fun lt!1703495 () Unit!96156)

(declare-fun lemmaContainsTupleThenContainsKey!69 (List!50804 K!12070 V!12316) Unit!96156)

(assert (=> b!4527650 (= lt!1703495 (lemmaContainsTupleThenContainsKey!69 (t!357766 (toList!4352 lt!1702732)) lt!1703491 (get!16622 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))))))

(declare-fun call!315572 () Bool)

(assert (=> b!4527650 call!315572))

(declare-fun lt!1703504 () Unit!96156)

(assert (=> b!4527650 (= lt!1703504 lt!1703495)))

(assert (=> b!4527650 false))

(declare-fun b!4527651 () Bool)

(declare-fun e!2821057 () Unit!96156)

(declare-fun Unit!96278 () Unit!96156)

(assert (=> b!4527651 (= e!2821057 Unit!96278)))

(declare-fun b!4527652 () Bool)

(declare-fun lt!1703497 () Unit!96156)

(assert (=> b!4527652 (= lt!1703497 e!2821057)))

(declare-fun c!772999 () Bool)

(assert (=> b!4527652 (= c!772999 call!315572)))

(declare-fun lt!1703498 () Unit!96156)

(assert (=> b!4527652 (= lt!1703498 e!2821058)))

(declare-fun c!772997 () Bool)

(assert (=> b!4527652 (= c!772997 (contains!13431 (getKeysList!475 (t!357766 (toList!4352 lt!1702732))) (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(declare-fun lt!1703493 () List!50804)

(declare-fun $colon$colon!950 (List!50804 tuple2!51122) List!50804)

(assert (=> b!4527652 (= lt!1703493 ($colon$colon!950 (removePresrvNoDuplicatedKeys!150 (t!357766 (toList!4352 lt!1702732)) key!3287) (h!56543 (toList!4352 lt!1702732))))))

(declare-fun e!2821060 () List!50804)

(assert (=> b!4527652 (= e!2821060 lt!1703493)))

(declare-fun call!315568 () (InoxSet tuple2!51122))

(declare-fun b!4527653 () Bool)

(assert (=> b!4527653 (= call!315568 ((_ map and) call!315567 ((_ map not) (store ((as const (Array tuple2!51122 Bool)) false) (tuple2!51123 key!3287 (get!16622 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287))) true))))))

(declare-fun lt!1703502 () Unit!96156)

(assert (=> b!4527653 (= lt!1703502 e!2821059)))

(declare-fun c!773000 () Bool)

(assert (=> b!4527653 (= c!773000 (contains!13433 (t!357766 (toList!4352 lt!1702732)) (tuple2!51123 key!3287 (get!16622 (getValueByKey!1113 (toList!4352 lt!1702732) key!3287)))))))

(declare-fun Unit!96279 () Unit!96156)

(assert (=> b!4527653 (= e!2821064 Unit!96279)))

(declare-fun b!4527654 () Bool)

(declare-fun res!1885188 () Bool)

(assert (=> b!4527654 (=> (not res!1885188) (not e!2821063))))

(assert (=> b!4527654 (= res!1885188 (not (containsKey!1814 lt!1703500 key!3287)))))

(declare-fun b!4527655 () Bool)

(declare-fun Unit!96280 () Unit!96156)

(assert (=> b!4527655 (= e!2821058 Unit!96280)))

(declare-fun bm!315565 () Bool)

(assert (=> bm!315565 (= call!315570 (content!8387 lt!1703500))))

(declare-fun b!4527656 () Bool)

(declare-fun Unit!96281 () Unit!96156)

(assert (=> b!4527656 (= e!2821057 Unit!96281)))

(declare-fun lt!1703496 () List!50804)

(assert (=> b!4527656 (= lt!1703496 (removePresrvNoDuplicatedKeys!150 (t!357766 (toList!4352 lt!1702732)) key!3287))))

(declare-fun lt!1703489 () Unit!96156)

(assert (=> b!4527656 (= lt!1703489 (lemmaInListThenGetKeysListContains!471 lt!1703496 (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(assert (=> b!4527656 (contains!13431 (getKeysList!475 lt!1703496) (_1!28855 (h!56543 (toList!4352 lt!1702732))))))

(declare-fun lt!1703503 () Unit!96156)

(assert (=> b!4527656 (= lt!1703503 lt!1703489)))

(assert (=> b!4527656 false))

(declare-fun b!4527657 () Bool)

(assert (=> b!4527657 (= call!315568 call!315567)))

(declare-fun Unit!96282 () Unit!96156)

(assert (=> b!4527657 (= e!2821064 Unit!96282)))

(declare-fun bm!315566 () Bool)

(assert (=> bm!315566 (= call!315568 (content!8387 (t!357766 (toList!4352 lt!1702732))))))

(declare-fun bm!315567 () Bool)

(assert (=> bm!315567 (= call!315572 (containsKey!1814 e!2821061 (ite c!772994 lt!1703491 (_1!28855 (h!56543 (toList!4352 lt!1702732))))))))

(declare-fun c!772998 () Bool)

(assert (=> bm!315567 (= c!772998 c!772994)))

(declare-fun b!4527658 () Bool)

(assert (=> b!4527658 (= e!2821065 e!2821060)))

(declare-fun c!772995 () Bool)

(assert (=> b!4527658 (= c!772995 (and ((_ is Cons!50680) (toList!4352 lt!1702732)) (not (= (_1!28855 (h!56543 (toList!4352 lt!1702732))) key!3287))))))

(declare-fun b!4527659 () Bool)

(assert (=> b!4527659 (= e!2821060 Nil!50680)))

(assert (= (and d!1396644 c!772994) b!4527646))

(assert (= (and d!1396644 (not c!772994)) b!4527658))

(assert (= (and b!4527646 c!773001) b!4527653))

(assert (= (and b!4527646 (not c!773001)) b!4527657))

(assert (= (and b!4527653 c!773000) b!4527650))

(assert (= (and b!4527653 (not c!773000)) b!4527647))

(assert (= (or b!4527653 b!4527657) bm!315566))

(assert (= (or b!4527653 b!4527657) bm!315562))

(assert (= (and b!4527658 c!772995) b!4527652))

(assert (= (and b!4527658 (not c!772995)) b!4527659))

(assert (= (and b!4527652 c!772997) b!4527649))

(assert (= (and b!4527652 (not c!772997)) b!4527655))

(assert (= (and b!4527652 c!772999) b!4527656))

(assert (= (and b!4527652 (not c!772999)) b!4527651))

(assert (= (or b!4527646 b!4527649) bm!315563))

(assert (= (or b!4527650 b!4527652) bm!315567))

(assert (= (and bm!315567 c!772998) b!4527643))

(assert (= (and bm!315567 (not c!772998)) b!4527644))

(assert (= (and d!1396644 res!1885189) b!4527654))

(assert (= (and b!4527654 res!1885188) b!4527642))

(assert (= (and b!4527642 res!1885187) b!4527641))

(assert (= (and b!4527641 c!772996) b!4527648))

(assert (= (and b!4527641 (not c!772996)) b!4527645))

(assert (= (or b!4527648 b!4527645) bm!315565))

(assert (= (or b!4527648 b!4527645) bm!315564))

(assert (=> b!4527641 m!5280499))

(declare-fun m!5281859 () Bool)

(assert (=> bm!315562 m!5281859))

(assert (=> b!4527642 m!5280507))

(declare-fun m!5281861 () Bool)

(assert (=> b!4527642 m!5281861))

(assert (=> b!4527642 m!5280581))

(assert (=> b!4527642 m!5281861))

(declare-fun m!5281863 () Bool)

(assert (=> b!4527642 m!5281863))

(assert (=> b!4527642 m!5280507))

(declare-fun m!5281865 () Bool)

(assert (=> b!4527642 m!5281865))

(declare-fun m!5281867 () Bool)

(assert (=> b!4527644 m!5281867))

(declare-fun m!5281869 () Bool)

(assert (=> bm!315563 m!5281869))

(assert (=> b!4527648 m!5280509))

(declare-fun m!5281871 () Bool)

(assert (=> b!4527648 m!5281871))

(assert (=> b!4527648 m!5280509))

(declare-fun m!5281873 () Bool)

(assert (=> b!4527648 m!5281873))

(assert (=> b!4527648 m!5280513))

(assert (=> b!4527648 m!5280509))

(assert (=> b!4527648 m!5280511))

(assert (=> b!4527648 m!5280499))

(assert (=> b!4527650 m!5280509))

(assert (=> b!4527650 m!5280509))

(assert (=> b!4527650 m!5281873))

(assert (=> b!4527650 m!5281873))

(declare-fun m!5281875 () Bool)

(assert (=> b!4527650 m!5281875))

(declare-fun m!5281877 () Bool)

(assert (=> bm!315567 m!5281877))

(declare-fun m!5281879 () Bool)

(assert (=> bm!315566 m!5281879))

(assert (=> b!4527653 m!5280509))

(assert (=> b!4527653 m!5280509))

(assert (=> b!4527653 m!5281873))

(assert (=> b!4527653 m!5281871))

(declare-fun m!5281881 () Bool)

(assert (=> b!4527653 m!5281881))

(declare-fun m!5281883 () Bool)

(assert (=> b!4527652 m!5281883))

(assert (=> b!4527652 m!5281883))

(declare-fun m!5281885 () Bool)

(assert (=> b!4527652 m!5281885))

(assert (=> b!4527652 m!5281867))

(assert (=> b!4527652 m!5281867))

(declare-fun m!5281887 () Bool)

(assert (=> b!4527652 m!5281887))

(declare-fun m!5281889 () Bool)

(assert (=> b!4527654 m!5281889))

(declare-fun m!5281891 () Bool)

(assert (=> d!1396644 m!5281891))

(assert (=> d!1396644 m!5281413))

(declare-fun m!5281893 () Bool)

(assert (=> bm!315565 m!5281893))

(declare-fun m!5281895 () Bool)

(assert (=> b!4527649 m!5281895))

(assert (=> b!4527656 m!5281867))

(declare-fun m!5281897 () Bool)

(assert (=> b!4527656 m!5281897))

(declare-fun m!5281899 () Bool)

(assert (=> b!4527656 m!5281899))

(assert (=> b!4527656 m!5281899))

(declare-fun m!5281901 () Bool)

(assert (=> b!4527656 m!5281901))

(assert (=> bm!315564 m!5281859))

(assert (=> d!1396224 d!1396644))

(declare-fun d!1396678 () Bool)

(assert (=> d!1396678 (dynLambda!21178 lambda!173584 (h!56544 (toList!4351 lm!1477)))))

(assert (=> d!1396678 true))

(declare-fun _$7!1875 () Unit!96156)

(assert (=> d!1396678 (= (choose!29644 (toList!4351 lm!1477) lambda!173584 (h!56544 (toList!4351 lm!1477))) _$7!1875)))

(declare-fun b_lambda!156023 () Bool)

(assert (=> (not b_lambda!156023) (not d!1396678)))

(declare-fun bs!862526 () Bool)

(assert (= bs!862526 d!1396678))

(assert (=> bs!862526 m!5281135))

(assert (=> d!1396396 d!1396678))

(declare-fun d!1396680 () Bool)

(declare-fun res!1885190 () Bool)

(declare-fun e!2821066 () Bool)

(assert (=> d!1396680 (=> res!1885190 e!2821066)))

(assert (=> d!1396680 (= res!1885190 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396680 (= (forall!10291 (toList!4351 lm!1477) lambda!173584) e!2821066)))

(declare-fun b!4527660 () Bool)

(declare-fun e!2821067 () Bool)

(assert (=> b!4527660 (= e!2821066 e!2821067)))

(declare-fun res!1885191 () Bool)

(assert (=> b!4527660 (=> (not res!1885191) (not e!2821067))))

(assert (=> b!4527660 (= res!1885191 (dynLambda!21178 lambda!173584 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4527661 () Bool)

(assert (=> b!4527661 (= e!2821067 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173584))))

(assert (= (and d!1396680 (not res!1885190)) b!4527660))

(assert (= (and b!4527660 res!1885191) b!4527661))

(declare-fun b_lambda!156025 () Bool)

(assert (=> (not b_lambda!156025) (not b!4527660)))

(assert (=> b!4527660 m!5281135))

(declare-fun m!5281903 () Bool)

(assert (=> b!4527661 m!5281903))

(assert (=> d!1396396 d!1396680))

(declare-fun d!1396682 () Bool)

(declare-fun res!1885192 () Bool)

(declare-fun e!2821068 () Bool)

(assert (=> d!1396682 (=> res!1885192 e!2821068)))

(assert (=> d!1396682 (= res!1885192 (and ((_ is Cons!50680) (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))) (= (_1!28855 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))) key!3287)))))

(assert (=> d!1396682 (= (containsKey!1812 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) key!3287) e!2821068)))

(declare-fun b!4527662 () Bool)

(declare-fun e!2821069 () Bool)

(assert (=> b!4527662 (= e!2821068 e!2821069)))

(declare-fun res!1885193 () Bool)

(assert (=> b!4527662 (=> (not res!1885193) (not e!2821069))))

(assert (=> b!4527662 (= res!1885193 ((_ is Cons!50680) (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))

(declare-fun b!4527663 () Bool)

(assert (=> b!4527663 (= e!2821069 (containsKey!1812 (t!357766 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(assert (= (and d!1396682 (not res!1885192)) b!4527662))

(assert (= (and b!4527662 res!1885193) b!4527663))

(declare-fun m!5281905 () Bool)

(assert (=> b!4527663 m!5281905))

(assert (=> b!4526771 d!1396682))

(declare-fun d!1396684 () Bool)

(declare-fun lt!1703505 () Bool)

(assert (=> d!1396684 (= lt!1703505 (select (content!8386 e!2820468) key!3287))))

(declare-fun e!2821071 () Bool)

(assert (=> d!1396684 (= lt!1703505 e!2821071)))

(declare-fun res!1885194 () Bool)

(assert (=> d!1396684 (=> (not res!1885194) (not e!2821071))))

(assert (=> d!1396684 (= res!1885194 ((_ is Cons!50683) e!2820468))))

(assert (=> d!1396684 (= (contains!13431 e!2820468 key!3287) lt!1703505)))

(declare-fun b!4527664 () Bool)

(declare-fun e!2821070 () Bool)

(assert (=> b!4527664 (= e!2821071 e!2821070)))

(declare-fun res!1885195 () Bool)

(assert (=> b!4527664 (=> res!1885195 e!2821070)))

(assert (=> b!4527664 (= res!1885195 (= (h!56548 e!2820468) key!3287))))

(declare-fun b!4527665 () Bool)

(assert (=> b!4527665 (= e!2821070 (contains!13431 (t!357769 e!2820468) key!3287))))

(assert (= (and d!1396684 res!1885194) b!4527664))

(assert (= (and b!4527664 (not res!1885195)) b!4527665))

(declare-fun m!5281907 () Bool)

(assert (=> d!1396684 m!5281907))

(declare-fun m!5281909 () Bool)

(assert (=> d!1396684 m!5281909))

(declare-fun m!5281911 () Bool)

(assert (=> b!4527665 m!5281911))

(assert (=> bm!315472 d!1396684))

(declare-fun bs!862534 () Bool)

(declare-fun b!4527667 () Bool)

(assert (= bs!862534 (and b!4527667 b!4527135)))

(declare-fun lambda!173764 () Int)

(assert (=> bs!862534 (= lambda!173764 lambda!173732)))

(declare-fun bs!862535 () Bool)

(assert (= bs!862535 (and b!4527667 b!4527086)))

(assert (=> bs!862535 (= (= (toList!4352 lt!1702718) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173764 lambda!173720))))

(declare-fun bs!862537 () Bool)

(assert (= bs!862537 (and b!4527667 b!4527270)))

(assert (=> bs!862537 (= (= (toList!4352 lt!1702718) (toList!4352 lt!1702732)) (= lambda!173764 lambda!173737))))

(declare-fun bs!862539 () Bool)

(assert (= bs!862539 (and b!4527667 b!4527140)))

(assert (=> bs!862539 (= (= (toList!4352 lt!1702718) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173764 lambda!173731))))

(declare-fun bs!862540 () Bool)

(assert (= bs!862540 (and b!4527667 b!4527134)))

(assert (=> bs!862540 (= (= (toList!4352 lt!1702718) (t!357766 (toList!4352 lt!1702718))) (= lambda!173764 lambda!173730))))

(assert (=> b!4527667 true))

(declare-fun bs!862543 () Bool)

(declare-fun b!4527668 () Bool)

(assert (= bs!862543 (and b!4527668 b!4527087)))

(declare-fun lambda!173765 () Int)

(assert (=> bs!862543 (= lambda!173765 lambda!173721)))

(declare-fun bs!862544 () Bool)

(assert (= bs!862544 (and b!4527668 b!4527136)))

(assert (=> bs!862544 (= lambda!173765 lambda!173733)))

(declare-fun bs!862545 () Bool)

(assert (= bs!862545 (and b!4527668 b!4527271)))

(assert (=> bs!862545 (= lambda!173765 lambda!173738)))

(declare-fun d!1396686 () Bool)

(declare-fun e!2821072 () Bool)

(assert (=> d!1396686 e!2821072))

(declare-fun res!1885198 () Bool)

(assert (=> d!1396686 (=> (not res!1885198) (not e!2821072))))

(declare-fun lt!1703506 () List!50807)

(assert (=> d!1396686 (= res!1885198 (noDuplicate!753 lt!1703506))))

(assert (=> d!1396686 (= lt!1703506 (getKeysList!475 (toList!4352 lt!1702718)))))

(assert (=> d!1396686 (= (keys!17616 lt!1702718) lt!1703506)))

(declare-fun b!4527666 () Bool)

(declare-fun res!1885196 () Bool)

(assert (=> b!4527666 (=> (not res!1885196) (not e!2821072))))

(assert (=> b!4527666 (= res!1885196 (= (length!362 lt!1703506) (length!363 (toList!4352 lt!1702718))))))

(declare-fun res!1885197 () Bool)

(assert (=> b!4527667 (=> (not res!1885197) (not e!2821072))))

(assert (=> b!4527667 (= res!1885197 (forall!10294 lt!1703506 lambda!173764))))

(assert (=> b!4527668 (= e!2821072 (= (content!8386 lt!1703506) (content!8386 (map!11150 (toList!4352 lt!1702718) lambda!173765))))))

(assert (= (and d!1396686 res!1885198) b!4527666))

(assert (= (and b!4527666 res!1885196) b!4527667))

(assert (= (and b!4527667 res!1885197) b!4527668))

(declare-fun m!5281913 () Bool)

(assert (=> d!1396686 m!5281913))

(assert (=> d!1396686 m!5281059))

(declare-fun m!5281915 () Bool)

(assert (=> b!4527666 m!5281915))

(assert (=> b!4527666 m!5281227))

(declare-fun m!5281917 () Bool)

(assert (=> b!4527667 m!5281917))

(declare-fun m!5281919 () Bool)

(assert (=> b!4527668 m!5281919))

(declare-fun m!5281921 () Bool)

(assert (=> b!4527668 m!5281921))

(assert (=> b!4527668 m!5281921))

(declare-fun m!5281923 () Bool)

(assert (=> b!4527668 m!5281923))

(assert (=> b!4527003 d!1396686))

(declare-fun d!1396688 () Bool)

(declare-fun e!2821074 () Bool)

(assert (=> d!1396688 e!2821074))

(declare-fun res!1885199 () Bool)

(assert (=> d!1396688 (=> res!1885199 e!2821074)))

(declare-fun lt!1703508 () Bool)

(assert (=> d!1396688 (= res!1885199 (not lt!1703508))))

(declare-fun lt!1703510 () Bool)

(assert (=> d!1396688 (= lt!1703508 lt!1703510)))

(declare-fun lt!1703509 () Unit!96156)

(declare-fun e!2821073 () Unit!96156)

(assert (=> d!1396688 (= lt!1703509 e!2821073)))

(declare-fun c!773002 () Bool)

(assert (=> d!1396688 (= c!773002 lt!1703510)))

(assert (=> d!1396688 (= lt!1703510 (containsKey!1815 (toList!4351 lt!1702784) (_1!28856 lt!1702727)))))

(assert (=> d!1396688 (= (contains!13429 lt!1702784 (_1!28856 lt!1702727)) lt!1703508)))

(declare-fun b!4527669 () Bool)

(declare-fun lt!1703507 () Unit!96156)

(assert (=> b!4527669 (= e!2821073 lt!1703507)))

(assert (=> b!4527669 (= lt!1703507 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702784) (_1!28856 lt!1702727)))))

(assert (=> b!4527669 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702784) (_1!28856 lt!1702727)))))

(declare-fun b!4527670 () Bool)

(declare-fun Unit!96283 () Unit!96156)

(assert (=> b!4527670 (= e!2821073 Unit!96283)))

(declare-fun b!4527671 () Bool)

(assert (=> b!4527671 (= e!2821074 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702784) (_1!28856 lt!1702727))))))

(assert (= (and d!1396688 c!773002) b!4527669))

(assert (= (and d!1396688 (not c!773002)) b!4527670))

(assert (= (and d!1396688 (not res!1885199)) b!4527671))

(declare-fun m!5281925 () Bool)

(assert (=> d!1396688 m!5281925))

(declare-fun m!5281927 () Bool)

(assert (=> b!4527669 m!5281927))

(assert (=> b!4527669 m!5280407))

(assert (=> b!4527669 m!5280407))

(declare-fun m!5281929 () Bool)

(assert (=> b!4527669 m!5281929))

(assert (=> b!4527671 m!5280407))

(assert (=> b!4527671 m!5280407))

(assert (=> b!4527671 m!5281929))

(assert (=> d!1396184 d!1396688))

(declare-fun b!4527675 () Bool)

(declare-fun e!2821076 () Option!11142)

(assert (=> b!4527675 (= e!2821076 None!11141)))

(declare-fun b!4527672 () Bool)

(declare-fun e!2821075 () Option!11142)

(assert (=> b!4527672 (= e!2821075 (Some!11141 (_2!28856 (h!56544 lt!1702785))))))

(declare-fun b!4527673 () Bool)

(assert (=> b!4527673 (= e!2821075 e!2821076)))

(declare-fun c!773004 () Bool)

(assert (=> b!4527673 (= c!773004 (and ((_ is Cons!50681) lt!1702785) (not (= (_1!28856 (h!56544 lt!1702785)) (_1!28856 lt!1702727)))))))

(declare-fun b!4527674 () Bool)

(assert (=> b!4527674 (= e!2821076 (getValueByKey!1112 (t!357767 lt!1702785) (_1!28856 lt!1702727)))))

(declare-fun d!1396690 () Bool)

(declare-fun c!773003 () Bool)

(assert (=> d!1396690 (= c!773003 (and ((_ is Cons!50681) lt!1702785) (= (_1!28856 (h!56544 lt!1702785)) (_1!28856 lt!1702727))))))

(assert (=> d!1396690 (= (getValueByKey!1112 lt!1702785 (_1!28856 lt!1702727)) e!2821075)))

(assert (= (and d!1396690 c!773003) b!4527672))

(assert (= (and d!1396690 (not c!773003)) b!4527673))

(assert (= (and b!4527673 c!773004) b!4527674))

(assert (= (and b!4527673 (not c!773004)) b!4527675))

(declare-fun m!5281945 () Bool)

(assert (=> b!4527674 m!5281945))

(assert (=> d!1396184 d!1396690))

(declare-fun d!1396692 () Bool)

(assert (=> d!1396692 (= (getValueByKey!1112 lt!1702785 (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727)))))

(declare-fun lt!1703511 () Unit!96156)

(assert (=> d!1396692 (= lt!1703511 (choose!29675 lt!1702785 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(declare-fun e!2821077 () Bool)

(assert (=> d!1396692 e!2821077))

(declare-fun res!1885200 () Bool)

(assert (=> d!1396692 (=> (not res!1885200) (not e!2821077))))

(assert (=> d!1396692 (= res!1885200 (isStrictlySorted!440 lt!1702785))))

(assert (=> d!1396692 (= (lemmaContainsTupThenGetReturnValue!694 lt!1702785 (_1!28856 lt!1702727) (_2!28856 lt!1702727)) lt!1703511)))

(declare-fun b!4527676 () Bool)

(declare-fun res!1885201 () Bool)

(assert (=> b!4527676 (=> (not res!1885201) (not e!2821077))))

(assert (=> b!4527676 (= res!1885201 (containsKey!1815 lt!1702785 (_1!28856 lt!1702727)))))

(declare-fun b!4527677 () Bool)

(assert (=> b!4527677 (= e!2821077 (contains!13428 lt!1702785 (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727))))))

(assert (= (and d!1396692 res!1885200) b!4527676))

(assert (= (and b!4527676 res!1885201) b!4527677))

(assert (=> d!1396692 m!5280401))

(declare-fun m!5281963 () Bool)

(assert (=> d!1396692 m!5281963))

(declare-fun m!5281967 () Bool)

(assert (=> d!1396692 m!5281967))

(declare-fun m!5281969 () Bool)

(assert (=> b!4527676 m!5281969))

(declare-fun m!5281971 () Bool)

(assert (=> b!4527677 m!5281971))

(assert (=> d!1396184 d!1396692))

(declare-fun b!4527678 () Bool)

(declare-fun c!773007 () Bool)

(declare-fun c!773006 () Bool)

(declare-fun e!2821080 () List!50805)

(assert (=> b!4527678 (= e!2821080 (ite c!773007 (t!357767 (toList!4351 lt!1702729)) (ite c!773006 (Cons!50681 (h!56544 (toList!4351 lt!1702729)) (t!357767 (toList!4351 lt!1702729))) Nil!50681)))))

(declare-fun b!4527679 () Bool)

(declare-fun e!2821082 () List!50805)

(declare-fun call!315574 () List!50805)

(assert (=> b!4527679 (= e!2821082 call!315574)))

(declare-fun d!1396696 () Bool)

(declare-fun e!2821078 () Bool)

(assert (=> d!1396696 e!2821078))

(declare-fun res!1885205 () Bool)

(assert (=> d!1396696 (=> (not res!1885205) (not e!2821078))))

(declare-fun lt!1703512 () List!50805)

(assert (=> d!1396696 (= res!1885205 (isStrictlySorted!440 lt!1703512))))

(assert (=> d!1396696 (= lt!1703512 e!2821082)))

(declare-fun c!773005 () Bool)

(assert (=> d!1396696 (= c!773005 (and ((_ is Cons!50681) (toList!4351 lt!1702729)) (bvslt (_1!28856 (h!56544 (toList!4351 lt!1702729))) (_1!28856 lt!1702727))))))

(assert (=> d!1396696 (isStrictlySorted!440 (toList!4351 lt!1702729))))

(assert (=> d!1396696 (= (insertStrictlySorted!418 (toList!4351 lt!1702729) (_1!28856 lt!1702727) (_2!28856 lt!1702727)) lt!1703512)))

(declare-fun b!4527680 () Bool)

(assert (=> b!4527680 (= c!773006 (and ((_ is Cons!50681) (toList!4351 lt!1702729)) (bvsgt (_1!28856 (h!56544 (toList!4351 lt!1702729))) (_1!28856 lt!1702727))))))

(declare-fun e!2821079 () List!50805)

(declare-fun e!2821081 () List!50805)

(assert (=> b!4527680 (= e!2821079 e!2821081)))

(declare-fun b!4527681 () Bool)

(declare-fun res!1885203 () Bool)

(assert (=> b!4527681 (=> (not res!1885203) (not e!2821078))))

(assert (=> b!4527681 (= res!1885203 (containsKey!1815 lt!1703512 (_1!28856 lt!1702727)))))

(declare-fun b!4527682 () Bool)

(assert (=> b!4527682 (= e!2821078 (contains!13428 lt!1703512 (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727))))))

(declare-fun bm!315568 () Bool)

(declare-fun call!315573 () List!50805)

(declare-fun call!315575 () List!50805)

(assert (=> bm!315568 (= call!315573 call!315575)))

(declare-fun b!4527683 () Bool)

(assert (=> b!4527683 (= e!2821081 call!315573)))

(declare-fun b!4527684 () Bool)

(assert (=> b!4527684 (= e!2821082 e!2821079)))

(assert (=> b!4527684 (= c!773007 (and ((_ is Cons!50681) (toList!4351 lt!1702729)) (= (_1!28856 (h!56544 (toList!4351 lt!1702729))) (_1!28856 lt!1702727))))))

(declare-fun bm!315569 () Bool)

(assert (=> bm!315569 (= call!315575 call!315574)))

(declare-fun b!4527685 () Bool)

(assert (=> b!4527685 (= e!2821080 (insertStrictlySorted!418 (t!357767 (toList!4351 lt!1702729)) (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(declare-fun b!4527686 () Bool)

(assert (=> b!4527686 (= e!2821079 call!315575)))

(declare-fun b!4527687 () Bool)

(assert (=> b!4527687 (= e!2821081 call!315573)))

(declare-fun bm!315570 () Bool)

(assert (=> bm!315570 (= call!315574 ($colon$colon!949 e!2821080 (ite c!773005 (h!56544 (toList!4351 lt!1702729)) (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))))

(declare-fun c!773008 () Bool)

(assert (=> bm!315570 (= c!773008 c!773005)))

(assert (= (and d!1396696 c!773005) b!4527679))

(assert (= (and d!1396696 (not c!773005)) b!4527684))

(assert (= (and b!4527684 c!773007) b!4527686))

(assert (= (and b!4527684 (not c!773007)) b!4527680))

(assert (= (and b!4527680 c!773006) b!4527683))

(assert (= (and b!4527680 (not c!773006)) b!4527687))

(assert (= (or b!4527683 b!4527687) bm!315568))

(assert (= (or b!4527686 bm!315568) bm!315569))

(assert (= (or b!4527679 bm!315569) bm!315570))

(assert (= (and bm!315570 c!773008) b!4527685))

(assert (= (and bm!315570 (not c!773008)) b!4527678))

(assert (= (and d!1396696 res!1885205) b!4527681))

(assert (= (and b!4527681 res!1885203) b!4527682))

(declare-fun m!5281977 () Bool)

(assert (=> b!4527685 m!5281977))

(declare-fun m!5281981 () Bool)

(assert (=> d!1396696 m!5281981))

(declare-fun m!5281983 () Bool)

(assert (=> d!1396696 m!5281983))

(declare-fun m!5281987 () Bool)

(assert (=> b!4527682 m!5281987))

(declare-fun m!5281993 () Bool)

(assert (=> bm!315570 m!5281993))

(declare-fun m!5281997 () Bool)

(assert (=> b!4527681 m!5281997))

(assert (=> d!1396184 d!1396696))

(declare-fun d!1396698 () Bool)

(assert (=> d!1396698 (= (head!9436 (toList!4351 lt!1702738)) (h!56544 (toList!4351 lt!1702738)))))

(assert (=> d!1396374 d!1396698))

(declare-fun d!1396700 () Bool)

(declare-fun lt!1703521 () List!50804)

(assert (=> d!1396700 (not (containsKey!1812 lt!1703521 key!3287))))

(declare-fun e!2821089 () List!50804)

(assert (=> d!1396700 (= lt!1703521 e!2821089)))

(declare-fun c!773012 () Bool)

(assert (=> d!1396700 (= c!773012 (and ((_ is Cons!50680) (t!357766 lt!1702716)) (= (_1!28855 (h!56543 (t!357766 lt!1702716))) key!3287)))))

(assert (=> d!1396700 (noDuplicateKeys!1172 (t!357766 lt!1702716))))

(assert (=> d!1396700 (= (removePairForKey!799 (t!357766 lt!1702716) key!3287) lt!1703521)))

(declare-fun b!4527700 () Bool)

(declare-fun e!2821090 () List!50804)

(assert (=> b!4527700 (= e!2821090 Nil!50680)))

(declare-fun b!4527698 () Bool)

(assert (=> b!4527698 (= e!2821089 e!2821090)))

(declare-fun c!773013 () Bool)

(assert (=> b!4527698 (= c!773013 ((_ is Cons!50680) (t!357766 lt!1702716)))))

(declare-fun b!4527699 () Bool)

(assert (=> b!4527699 (= e!2821090 (Cons!50680 (h!56543 (t!357766 lt!1702716)) (removePairForKey!799 (t!357766 (t!357766 lt!1702716)) key!3287)))))

(declare-fun b!4527697 () Bool)

(assert (=> b!4527697 (= e!2821089 (t!357766 (t!357766 lt!1702716)))))

(assert (= (and d!1396700 c!773012) b!4527697))

(assert (= (and d!1396700 (not c!773012)) b!4527698))

(assert (= (and b!4527698 c!773013) b!4527699))

(assert (= (and b!4527698 (not c!773013)) b!4527700))

(declare-fun m!5282005 () Bool)

(assert (=> d!1396700 m!5282005))

(assert (=> d!1396700 m!5281299))

(declare-fun m!5282007 () Bool)

(assert (=> b!4527699 m!5282007))

(assert (=> b!4526867 d!1396700))

(declare-fun d!1396704 () Bool)

(declare-fun res!1885207 () Bool)

(declare-fun e!2821091 () Bool)

(assert (=> d!1396704 (=> res!1885207 e!2821091)))

(assert (=> d!1396704 (= res!1885207 ((_ is Nil!50680) (toList!4352 lt!1702713)))))

(assert (=> d!1396704 (= (forall!10293 (toList!4352 lt!1702713) (ite c!772826 lambda!173711 lambda!173713)) e!2821091)))

(declare-fun b!4527701 () Bool)

(declare-fun e!2821092 () Bool)

(assert (=> b!4527701 (= e!2821091 e!2821092)))

(declare-fun res!1885208 () Bool)

(assert (=> b!4527701 (=> (not res!1885208) (not e!2821092))))

(assert (=> b!4527701 (= res!1885208 (dynLambda!21181 (ite c!772826 lambda!173711 lambda!173713) (h!56543 (toList!4352 lt!1702713))))))

(declare-fun b!4527702 () Bool)

(assert (=> b!4527702 (= e!2821092 (forall!10293 (t!357766 (toList!4352 lt!1702713)) (ite c!772826 lambda!173711 lambda!173713)))))

(assert (= (and d!1396704 (not res!1885207)) b!4527701))

(assert (= (and b!4527701 res!1885208) b!4527702))

(declare-fun b_lambda!156027 () Bool)

(assert (=> (not b_lambda!156027) (not b!4527701)))

(declare-fun m!5282009 () Bool)

(assert (=> b!4527701 m!5282009))

(declare-fun m!5282011 () Bool)

(assert (=> b!4527702 m!5282011))

(assert (=> bm!315499 d!1396704))

(declare-fun d!1396706 () Bool)

(declare-fun res!1885209 () Bool)

(declare-fun e!2821093 () Bool)

(assert (=> d!1396706 (=> res!1885209 e!2821093)))

(assert (=> d!1396706 (= res!1885209 (not ((_ is Cons!50680) (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(assert (=> d!1396706 (= (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477)))) e!2821093)))

(declare-fun b!4527703 () Bool)

(declare-fun e!2821094 () Bool)

(assert (=> b!4527703 (= e!2821093 e!2821094)))

(declare-fun res!1885210 () Bool)

(assert (=> b!4527703 (=> (not res!1885210) (not e!2821094))))

(assert (=> b!4527703 (= res!1885210 (not (containsKey!1812 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477)))) (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))))

(declare-fun b!4527704 () Bool)

(assert (=> b!4527704 (= e!2821094 (noDuplicateKeys!1172 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(assert (= (and d!1396706 (not res!1885209)) b!4527703))

(assert (= (and b!4527703 res!1885210) b!4527704))

(declare-fun m!5282013 () Bool)

(assert (=> b!4527703 m!5282013))

(declare-fun m!5282015 () Bool)

(assert (=> b!4527704 m!5282015))

(assert (=> bs!862388 d!1396706))

(declare-fun b!4527708 () Bool)

(declare-fun e!2821096 () Option!11142)

(assert (=> b!4527708 (= e!2821096 None!11141)))

(declare-fun b!4527705 () Bool)

(declare-fun e!2821095 () Option!11142)

(assert (=> b!4527705 (= e!2821095 (Some!11141 (_2!28856 (h!56544 (toList!4351 lt!1702772)))))))

(declare-fun b!4527706 () Bool)

(assert (=> b!4527706 (= e!2821095 e!2821096)))

(declare-fun c!773015 () Bool)

(assert (=> b!4527706 (= c!773015 (and ((_ is Cons!50681) (toList!4351 lt!1702772)) (not (= (_1!28856 (h!56544 (toList!4351 lt!1702772))) (_1!28856 lt!1702726)))))))

(declare-fun b!4527707 () Bool)

(assert (=> b!4527707 (= e!2821096 (getValueByKey!1112 (t!357767 (toList!4351 lt!1702772)) (_1!28856 lt!1702726)))))

(declare-fun d!1396708 () Bool)

(declare-fun c!773014 () Bool)

(assert (=> d!1396708 (= c!773014 (and ((_ is Cons!50681) (toList!4351 lt!1702772)) (= (_1!28856 (h!56544 (toList!4351 lt!1702772))) (_1!28856 lt!1702726))))))

(assert (=> d!1396708 (= (getValueByKey!1112 (toList!4351 lt!1702772) (_1!28856 lt!1702726)) e!2821095)))

(assert (= (and d!1396708 c!773014) b!4527705))

(assert (= (and d!1396708 (not c!773014)) b!4527706))

(assert (= (and b!4527706 c!773015) b!4527707))

(assert (= (and b!4527706 (not c!773015)) b!4527708))

(declare-fun m!5282017 () Bool)

(assert (=> b!4527707 m!5282017))

(assert (=> b!4526679 d!1396708))

(declare-fun d!1396710 () Bool)

(declare-fun res!1885211 () Bool)

(declare-fun e!2821097 () Bool)

(assert (=> d!1396710 (=> res!1885211 e!2821097)))

(assert (=> d!1396710 (= res!1885211 ((_ is Nil!50680) newBucket!178))))

(assert (=> d!1396710 (= (forall!10293 newBucket!178 lambda!173651) e!2821097)))

(declare-fun b!4527709 () Bool)

(declare-fun e!2821098 () Bool)

(assert (=> b!4527709 (= e!2821097 e!2821098)))

(declare-fun res!1885212 () Bool)

(assert (=> b!4527709 (=> (not res!1885212) (not e!2821098))))

(assert (=> b!4527709 (= res!1885212 (dynLambda!21181 lambda!173651 (h!56543 newBucket!178)))))

(declare-fun b!4527710 () Bool)

(assert (=> b!4527710 (= e!2821098 (forall!10293 (t!357766 newBucket!178) lambda!173651))))

(assert (= (and d!1396710 (not res!1885211)) b!4527709))

(assert (= (and b!4527709 res!1885212) b!4527710))

(declare-fun b_lambda!156029 () Bool)

(assert (=> (not b_lambda!156029) (not b!4527709)))

(declare-fun m!5282019 () Bool)

(assert (=> b!4527709 m!5282019))

(declare-fun m!5282021 () Bool)

(assert (=> b!4527710 m!5282021))

(assert (=> d!1396260 d!1396710))

(declare-fun b!4527711 () Bool)

(declare-fun e!2821100 () Bool)

(declare-fun e!2821102 () Bool)

(assert (=> b!4527711 (= e!2821100 e!2821102)))

(declare-fun res!1885216 () Bool)

(assert (=> b!4527711 (=> (not res!1885216) (not e!2821102))))

(declare-fun lt!1703522 () Option!11139)

(assert (=> b!4527711 (= res!1885216 (isDefined!8430 lt!1703522))))

(declare-fun b!4527712 () Bool)

(declare-fun e!2821103 () Option!11139)

(declare-fun e!2821101 () Option!11139)

(assert (=> b!4527712 (= e!2821103 e!2821101)))

(declare-fun c!773017 () Bool)

(assert (=> b!4527712 (= c!773017 ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))))))

(declare-fun b!4527713 () Bool)

(assert (=> b!4527713 (= e!2821102 (contains!13433 (t!357766 (_2!28856 lt!1702727)) (get!16618 lt!1703522)))))

(declare-fun b!4527714 () Bool)

(assert (=> b!4527714 (= e!2821101 None!11138)))

(declare-fun b!4527715 () Bool)

(declare-fun e!2821099 () Bool)

(assert (=> b!4527715 (= e!2821099 (not (containsKey!1812 (t!357766 (_2!28856 lt!1702727)) key!3287)))))

(declare-fun b!4527716 () Bool)

(declare-fun res!1885213 () Bool)

(assert (=> b!4527716 (=> (not res!1885213) (not e!2821102))))

(assert (=> b!4527716 (= res!1885213 (= (_1!28855 (get!16618 lt!1703522)) key!3287))))

(declare-fun b!4527717 () Bool)

(assert (=> b!4527717 (= e!2821103 (Some!11138 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun b!4527718 () Bool)

(assert (=> b!4527718 (= e!2821101 (getPair!188 (t!357766 (t!357766 (_2!28856 lt!1702727))) key!3287))))

(declare-fun d!1396712 () Bool)

(assert (=> d!1396712 e!2821100))

(declare-fun res!1885215 () Bool)

(assert (=> d!1396712 (=> res!1885215 e!2821100)))

(assert (=> d!1396712 (= res!1885215 e!2821099)))

(declare-fun res!1885214 () Bool)

(assert (=> d!1396712 (=> (not res!1885214) (not e!2821099))))

(assert (=> d!1396712 (= res!1885214 (isEmpty!28699 lt!1703522))))

(assert (=> d!1396712 (= lt!1703522 e!2821103)))

(declare-fun c!773016 () Bool)

(assert (=> d!1396712 (= c!773016 (and ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))) (= (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))) key!3287)))))

(assert (=> d!1396712 (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702727)))))

(assert (=> d!1396712 (= (getPair!188 (t!357766 (_2!28856 lt!1702727)) key!3287) lt!1703522)))

(assert (= (and d!1396712 c!773016) b!4527717))

(assert (= (and d!1396712 (not c!773016)) b!4527712))

(assert (= (and b!4527712 c!773017) b!4527718))

(assert (= (and b!4527712 (not c!773017)) b!4527714))

(assert (= (and d!1396712 res!1885214) b!4527715))

(assert (= (and d!1396712 (not res!1885215)) b!4527711))

(assert (= (and b!4527711 res!1885216) b!4527716))

(assert (= (and b!4527716 res!1885213) b!4527713))

(declare-fun m!5282023 () Bool)

(assert (=> b!4527711 m!5282023))

(declare-fun m!5282025 () Bool)

(assert (=> b!4527713 m!5282025))

(assert (=> b!4527713 m!5282025))

(declare-fun m!5282027 () Bool)

(assert (=> b!4527713 m!5282027))

(assert (=> b!4527715 m!5281081))

(assert (=> b!4527716 m!5282025))

(declare-fun m!5282029 () Bool)

(assert (=> b!4527718 m!5282029))

(declare-fun m!5282031 () Bool)

(assert (=> d!1396712 m!5282031))

(assert (=> d!1396712 m!5280413))

(assert (=> b!4527046 d!1396712))

(declare-fun d!1396714 () Bool)

(declare-fun res!1885217 () Bool)

(declare-fun e!2821104 () Bool)

(assert (=> d!1396714 (=> res!1885217 e!2821104)))

(assert (=> d!1396714 (= res!1885217 (not ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727)))))))

(assert (=> d!1396714 (= (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702727))) e!2821104)))

(declare-fun b!4527719 () Bool)

(declare-fun e!2821105 () Bool)

(assert (=> b!4527719 (= e!2821104 e!2821105)))

(declare-fun res!1885218 () Bool)

(assert (=> b!4527719 (=> (not res!1885218) (not e!2821105))))

(assert (=> b!4527719 (= res!1885218 (not (containsKey!1812 (t!357766 (t!357766 (_2!28856 lt!1702727))) (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))))

(declare-fun b!4527720 () Bool)

(assert (=> b!4527720 (= e!2821105 (noDuplicateKeys!1172 (t!357766 (t!357766 (_2!28856 lt!1702727)))))))

(assert (= (and d!1396714 (not res!1885217)) b!4527719))

(assert (= (and b!4527719 res!1885218) b!4527720))

(declare-fun m!5282033 () Bool)

(assert (=> b!4527719 m!5282033))

(declare-fun m!5282035 () Bool)

(assert (=> b!4527720 m!5282035))

(assert (=> b!4526693 d!1396714))

(assert (=> b!4526757 d!1396524))

(assert (=> b!4526757 d!1396526))

(declare-fun b!4527724 () Bool)

(declare-fun e!2821107 () Option!11142)

(assert (=> b!4527724 (= e!2821107 None!11141)))

(declare-fun b!4527721 () Bool)

(declare-fun e!2821106 () Option!11142)

(assert (=> b!4527721 (= e!2821106 (Some!11141 (_2!28856 (h!56544 (toList!4351 lt!1702784)))))))

(declare-fun b!4527722 () Bool)

(assert (=> b!4527722 (= e!2821106 e!2821107)))

(declare-fun c!773019 () Bool)

(assert (=> b!4527722 (= c!773019 (and ((_ is Cons!50681) (toList!4351 lt!1702784)) (not (= (_1!28856 (h!56544 (toList!4351 lt!1702784))) (_1!28856 lt!1702727)))))))

(declare-fun b!4527723 () Bool)

(assert (=> b!4527723 (= e!2821107 (getValueByKey!1112 (t!357767 (toList!4351 lt!1702784)) (_1!28856 lt!1702727)))))

(declare-fun d!1396716 () Bool)

(declare-fun c!773018 () Bool)

(assert (=> d!1396716 (= c!773018 (and ((_ is Cons!50681) (toList!4351 lt!1702784)) (= (_1!28856 (h!56544 (toList!4351 lt!1702784))) (_1!28856 lt!1702727))))))

(assert (=> d!1396716 (= (getValueByKey!1112 (toList!4351 lt!1702784) (_1!28856 lt!1702727)) e!2821106)))

(assert (= (and d!1396716 c!773018) b!4527721))

(assert (= (and d!1396716 (not c!773018)) b!4527722))

(assert (= (and b!4527722 c!773019) b!4527723))

(assert (= (and b!4527722 (not c!773019)) b!4527724))

(declare-fun m!5282037 () Bool)

(assert (=> b!4527723 m!5282037))

(assert (=> b!4526690 d!1396716))

(declare-fun d!1396718 () Bool)

(assert (=> d!1396718 (= (eq!629 (extractMap!1228 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))) (-!398 (extractMap!1228 (toList!4351 lt!1702722)) key!3287)) (= (content!8387 (toList!4352 (extractMap!1228 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))))) (content!8387 (toList!4352 (-!398 (extractMap!1228 (toList!4351 lt!1702722)) key!3287)))))))

(declare-fun bs!862546 () Bool)

(assert (= bs!862546 d!1396718))

(declare-fun m!5282039 () Bool)

(assert (=> bs!862546 m!5282039))

(declare-fun m!5282041 () Bool)

(assert (=> bs!862546 m!5282041))

(assert (=> d!1396236 d!1396718))

(declare-fun d!1396720 () Bool)

(assert (=> d!1396720 (eq!629 (extractMap!1228 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))) (-!398 (extractMap!1228 (toList!4351 lt!1702722)) key!3287))))

(assert (=> d!1396720 true))

(declare-fun _$8!671 () Unit!96156)

(assert (=> d!1396720 (= (choose!29649 lt!1702722 hash!344 newBucket!178 key!3287 hashF!1107) _$8!671)))

(declare-fun bs!862548 () Bool)

(assert (= bs!862548 d!1396720))

(assert (=> bs!862548 m!5280315))

(assert (=> bs!862548 m!5280691))

(assert (=> bs!862548 m!5280315))

(assert (=> bs!862548 m!5280697))

(assert (=> bs!862548 m!5280693))

(assert (=> bs!862548 m!5280691))

(assert (=> bs!862548 m!5280695))

(assert (=> bs!862548 m!5280693))

(assert (=> d!1396236 d!1396720))

(declare-fun d!1396728 () Bool)

(declare-fun e!2821111 () Bool)

(assert (=> d!1396728 e!2821111))

(declare-fun res!1885223 () Bool)

(assert (=> d!1396728 (=> (not res!1885223) (not e!2821111))))

(declare-fun lt!1703526 () ListLongMap!2983)

(assert (=> d!1396728 (= res!1885223 (contains!13429 lt!1703526 (_1!28856 (tuple2!51125 hash!344 newBucket!178))))))

(declare-fun lt!1703527 () List!50805)

(assert (=> d!1396728 (= lt!1703526 (ListLongMap!2984 lt!1703527))))

(declare-fun lt!1703524 () Unit!96156)

(declare-fun lt!1703525 () Unit!96156)

(assert (=> d!1396728 (= lt!1703524 lt!1703525)))

(assert (=> d!1396728 (= (getValueByKey!1112 lt!1703527 (_1!28856 (tuple2!51125 hash!344 newBucket!178))) (Some!11141 (_2!28856 (tuple2!51125 hash!344 newBucket!178))))))

(assert (=> d!1396728 (= lt!1703525 (lemmaContainsTupThenGetReturnValue!694 lt!1703527 (_1!28856 (tuple2!51125 hash!344 newBucket!178)) (_2!28856 (tuple2!51125 hash!344 newBucket!178))))))

(assert (=> d!1396728 (= lt!1703527 (insertStrictlySorted!418 (toList!4351 lt!1702722) (_1!28856 (tuple2!51125 hash!344 newBucket!178)) (_2!28856 (tuple2!51125 hash!344 newBucket!178))))))

(assert (=> d!1396728 (= (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)) lt!1703526)))

(declare-fun b!4527728 () Bool)

(declare-fun res!1885222 () Bool)

(assert (=> b!4527728 (=> (not res!1885222) (not e!2821111))))

(assert (=> b!4527728 (= res!1885222 (= (getValueByKey!1112 (toList!4351 lt!1703526) (_1!28856 (tuple2!51125 hash!344 newBucket!178))) (Some!11141 (_2!28856 (tuple2!51125 hash!344 newBucket!178)))))))

(declare-fun b!4527729 () Bool)

(assert (=> b!4527729 (= e!2821111 (contains!13428 (toList!4351 lt!1703526) (tuple2!51125 hash!344 newBucket!178)))))

(assert (= (and d!1396728 res!1885223) b!4527728))

(assert (= (and b!4527728 res!1885222) b!4527729))

(declare-fun m!5282057 () Bool)

(assert (=> d!1396728 m!5282057))

(declare-fun m!5282059 () Bool)

(assert (=> d!1396728 m!5282059))

(declare-fun m!5282061 () Bool)

(assert (=> d!1396728 m!5282061))

(declare-fun m!5282063 () Bool)

(assert (=> d!1396728 m!5282063))

(declare-fun m!5282065 () Bool)

(assert (=> b!4527728 m!5282065))

(declare-fun m!5282067 () Bool)

(assert (=> b!4527729 m!5282067))

(assert (=> d!1396236 d!1396728))

(declare-fun bs!862549 () Bool)

(declare-fun d!1396730 () Bool)

(assert (= bs!862549 (and d!1396730 d!1396254)))

(declare-fun lambda!173766 () Int)

(assert (=> bs!862549 (= lambda!173766 lambda!173645)))

(declare-fun bs!862550 () Bool)

(assert (= bs!862550 (and d!1396730 d!1396204)))

(assert (=> bs!862550 (= lambda!173766 lambda!173594)))

(declare-fun bs!862551 () Bool)

(assert (= bs!862551 (and d!1396730 d!1396256)))

(assert (=> bs!862551 (= lambda!173766 lambda!173647)))

(declare-fun bs!862552 () Bool)

(assert (= bs!862552 (and d!1396730 start!448604)))

(assert (=> bs!862552 (= lambda!173766 lambda!173583)))

(declare-fun bs!862553 () Bool)

(assert (= bs!862553 (and d!1396730 d!1396216)))

(assert (=> bs!862553 (= lambda!173766 lambda!173619)))

(declare-fun bs!862554 () Bool)

(assert (= bs!862554 (and d!1396730 d!1396208)))

(assert (=> bs!862554 (= lambda!173766 lambda!173598)))

(declare-fun bs!862555 () Bool)

(assert (= bs!862555 (and d!1396730 d!1396372)))

(assert (=> bs!862555 (= lambda!173766 lambda!173709)))

(declare-fun bs!862556 () Bool)

(assert (= bs!862556 (and d!1396730 b!4526608)))

(assert (=> bs!862556 (not (= lambda!173766 lambda!173584))))

(declare-fun bs!862557 () Bool)

(assert (= bs!862557 (and d!1396730 d!1396236)))

(assert (=> bs!862557 (= lambda!173766 lambda!173642)))

(declare-fun bs!862558 () Bool)

(assert (= bs!862558 (and d!1396730 d!1396392)))

(assert (=> bs!862558 (= lambda!173766 lambda!173715)))

(declare-fun bs!862559 () Bool)

(assert (= bs!862559 (and d!1396730 d!1396206)))

(assert (=> bs!862559 (= lambda!173766 lambda!173597)))

(declare-fun bs!862560 () Bool)

(assert (= bs!862560 (and d!1396730 d!1396278)))

(assert (=> bs!862560 (= lambda!173766 lambda!173656)))

(declare-fun bs!862561 () Bool)

(assert (= bs!862561 (and d!1396730 d!1396370)))

(assert (=> bs!862561 (not (= lambda!173766 lambda!173706))))

(declare-fun bs!862562 () Bool)

(assert (= bs!862562 (and d!1396730 d!1396380)))

(assert (=> bs!862562 (= lambda!173766 lambda!173710)))

(declare-fun lt!1703528 () ListMap!3613)

(assert (=> d!1396730 (invariantList!1027 (toList!4352 lt!1703528))))

(declare-fun e!2821112 () ListMap!3613)

(assert (=> d!1396730 (= lt!1703528 e!2821112)))

(declare-fun c!773020 () Bool)

(assert (=> d!1396730 (= c!773020 ((_ is Cons!50681) (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))))))

(assert (=> d!1396730 (forall!10291 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178))) lambda!173766)))

(assert (=> d!1396730 (= (extractMap!1228 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))) lt!1703528)))

(declare-fun b!4527730 () Bool)

(assert (=> b!4527730 (= e!2821112 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178))))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 (tuple2!51125 hash!344 newBucket!178)))))))))

(declare-fun b!4527731 () Bool)

(assert (=> b!4527731 (= e!2821112 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396730 c!773020) b!4527730))

(assert (= (and d!1396730 (not c!773020)) b!4527731))

(declare-fun m!5282069 () Bool)

(assert (=> d!1396730 m!5282069))

(declare-fun m!5282071 () Bool)

(assert (=> d!1396730 m!5282071))

(declare-fun m!5282073 () Bool)

(assert (=> b!4527730 m!5282073))

(assert (=> b!4527730 m!5282073))

(declare-fun m!5282075 () Bool)

(assert (=> b!4527730 m!5282075))

(assert (=> d!1396236 d!1396730))

(declare-fun d!1396732 () Bool)

(declare-fun res!1885224 () Bool)

(declare-fun e!2821113 () Bool)

(assert (=> d!1396732 (=> res!1885224 e!2821113)))

(assert (=> d!1396732 (= res!1885224 ((_ is Nil!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1396732 (= (forall!10291 (toList!4351 lt!1702722) lambda!173642) e!2821113)))

(declare-fun b!4527732 () Bool)

(declare-fun e!2821114 () Bool)

(assert (=> b!4527732 (= e!2821113 e!2821114)))

(declare-fun res!1885225 () Bool)

(assert (=> b!4527732 (=> (not res!1885225) (not e!2821114))))

(assert (=> b!4527732 (= res!1885225 (dynLambda!21178 lambda!173642 (h!56544 (toList!4351 lt!1702722))))))

(declare-fun b!4527733 () Bool)

(assert (=> b!4527733 (= e!2821114 (forall!10291 (t!357767 (toList!4351 lt!1702722)) lambda!173642))))

(assert (= (and d!1396732 (not res!1885224)) b!4527732))

(assert (= (and b!4527732 res!1885225) b!4527733))

(declare-fun b_lambda!156033 () Bool)

(assert (=> (not b_lambda!156033) (not b!4527732)))

(declare-fun m!5282077 () Bool)

(assert (=> b!4527732 m!5282077))

(declare-fun m!5282079 () Bool)

(assert (=> b!4527733 m!5282079))

(assert (=> d!1396236 d!1396732))

(assert (=> d!1396236 d!1396208))

(declare-fun d!1396734 () Bool)

(declare-fun e!2821115 () Bool)

(assert (=> d!1396734 e!2821115))

(declare-fun res!1885226 () Bool)

(assert (=> d!1396734 (=> (not res!1885226) (not e!2821115))))

(declare-fun lt!1703529 () ListMap!3613)

(assert (=> d!1396734 (= res!1885226 (not (contains!13427 lt!1703529 key!3287)))))

(assert (=> d!1396734 (= lt!1703529 (ListMap!3614 (removePresrvNoDuplicatedKeys!150 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287)))))

(assert (=> d!1396734 (= (-!398 (extractMap!1228 (toList!4351 lt!1702722)) key!3287) lt!1703529)))

(declare-fun b!4527734 () Bool)

(assert (=> b!4527734 (= e!2821115 (= ((_ map and) (content!8386 (keys!17616 (extractMap!1228 (toList!4351 lt!1702722)))) ((_ map not) (store ((as const (Array K!12070 Bool)) false) key!3287 true))) (content!8386 (keys!17616 lt!1703529))))))

(assert (= (and d!1396734 res!1885226) b!4527734))

(declare-fun m!5282081 () Bool)

(assert (=> d!1396734 m!5282081))

(declare-fun m!5282083 () Bool)

(assert (=> d!1396734 m!5282083))

(declare-fun m!5282085 () Bool)

(assert (=> b!4527734 m!5282085))

(assert (=> b!4527734 m!5280315))

(declare-fun m!5282087 () Bool)

(assert (=> b!4527734 m!5282087))

(assert (=> b!4527734 m!5282087))

(declare-fun m!5282089 () Bool)

(assert (=> b!4527734 m!5282089))

(assert (=> b!4527734 m!5280581))

(assert (=> b!4527734 m!5282085))

(declare-fun m!5282091 () Bool)

(assert (=> b!4527734 m!5282091))

(assert (=> d!1396236 d!1396734))

(declare-fun d!1396736 () Bool)

(declare-fun res!1885227 () Bool)

(declare-fun e!2821116 () Bool)

(assert (=> d!1396736 (=> res!1885227 e!2821116)))

(assert (=> d!1396736 (= res!1885227 ((_ is Nil!50680) (toList!4352 lt!1702713)))))

(assert (=> d!1396736 (= (forall!10293 (toList!4352 lt!1702713) lambda!173713) e!2821116)))

(declare-fun b!4527735 () Bool)

(declare-fun e!2821117 () Bool)

(assert (=> b!4527735 (= e!2821116 e!2821117)))

(declare-fun res!1885228 () Bool)

(assert (=> b!4527735 (=> (not res!1885228) (not e!2821117))))

(assert (=> b!4527735 (= res!1885228 (dynLambda!21181 lambda!173713 (h!56543 (toList!4352 lt!1702713))))))

(declare-fun b!4527736 () Bool)

(assert (=> b!4527736 (= e!2821117 (forall!10293 (t!357766 (toList!4352 lt!1702713)) lambda!173713))))

(assert (= (and d!1396736 (not res!1885227)) b!4527735))

(assert (= (and b!4527735 res!1885228) b!4527736))

(declare-fun b_lambda!156035 () Bool)

(assert (=> (not b_lambda!156035) (not b!4527735)))

(declare-fun m!5282093 () Bool)

(assert (=> b!4527735 m!5282093))

(declare-fun m!5282095 () Bool)

(assert (=> b!4527736 m!5282095))

(assert (=> b!4527018 d!1396736))

(declare-fun d!1396738 () Bool)

(declare-fun lt!1703530 () Bool)

(assert (=> d!1396738 (= lt!1703530 (select (content!8387 (_2!28856 (h!56544 (toList!4351 lm!1477)))) (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(declare-fun e!2821118 () Bool)

(assert (=> d!1396738 (= lt!1703530 e!2821118)))

(declare-fun res!1885230 () Bool)

(assert (=> d!1396738 (=> (not res!1885230) (not e!2821118))))

(assert (=> d!1396738 (= res!1885230 ((_ is Cons!50680) (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> d!1396738 (= (contains!13433 (_2!28856 (h!56544 (toList!4351 lm!1477))) (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))) lt!1703530)))

(declare-fun b!4527737 () Bool)

(declare-fun e!2821119 () Bool)

(assert (=> b!4527737 (= e!2821118 e!2821119)))

(declare-fun res!1885229 () Bool)

(assert (=> b!4527737 (=> res!1885229 e!2821119)))

(assert (=> b!4527737 (= res!1885229 (= (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477)))) (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(declare-fun b!4527738 () Bool)

(assert (=> b!4527738 (= e!2821119 (contains!13433 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477)))) (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))))))

(assert (= (and d!1396738 res!1885230) b!4527737))

(assert (= (and b!4527737 (not res!1885229)) b!4527738))

(declare-fun m!5282097 () Bool)

(assert (=> d!1396738 m!5282097))

(declare-fun m!5282099 () Bool)

(assert (=> d!1396738 m!5282099))

(declare-fun m!5282101 () Bool)

(assert (=> b!4527738 m!5282101))

(assert (=> b!4527050 d!1396738))

(declare-fun d!1396740 () Bool)

(declare-fun res!1885231 () Bool)

(declare-fun e!2821120 () Bool)

(assert (=> d!1396740 (=> res!1885231 e!2821120)))

(assert (=> d!1396740 (= res!1885231 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396740 (= (forall!10293 (_2!28856 lt!1702727) lambda!173703) e!2821120)))

(declare-fun b!4527739 () Bool)

(declare-fun e!2821121 () Bool)

(assert (=> b!4527739 (= e!2821120 e!2821121)))

(declare-fun res!1885232 () Bool)

(assert (=> b!4527739 (=> (not res!1885232) (not e!2821121))))

(assert (=> b!4527739 (= res!1885232 (dynLambda!21181 lambda!173703 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun b!4527740 () Bool)

(assert (=> b!4527740 (= e!2821121 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173703))))

(assert (= (and d!1396740 (not res!1885231)) b!4527739))

(assert (= (and b!4527739 res!1885232) b!4527740))

(declare-fun b_lambda!156037 () Bool)

(assert (=> (not b_lambda!156037) (not b!4527739)))

(declare-fun m!5282103 () Bool)

(assert (=> b!4527739 m!5282103))

(declare-fun m!5282105 () Bool)

(assert (=> b!4527740 m!5282105))

(assert (=> d!1396296 d!1396740))

(assert (=> d!1396296 d!1396186))

(declare-fun d!1396744 () Bool)

(declare-fun res!1885235 () Bool)

(declare-fun e!2821123 () Bool)

(assert (=> d!1396744 (=> res!1885235 e!2821123)))

(assert (=> d!1396744 (= res!1885235 (and ((_ is Cons!50680) (toList!4352 lt!1702732)) (= (_1!28855 (h!56543 (toList!4352 lt!1702732))) key!3287)))))

(assert (=> d!1396744 (= (containsKey!1814 (toList!4352 lt!1702732) key!3287) e!2821123)))

(declare-fun b!4527743 () Bool)

(declare-fun e!2821124 () Bool)

(assert (=> b!4527743 (= e!2821123 e!2821124)))

(declare-fun res!1885236 () Bool)

(assert (=> b!4527743 (=> (not res!1885236) (not e!2821124))))

(assert (=> b!4527743 (= res!1885236 ((_ is Cons!50680) (toList!4352 lt!1702732)))))

(declare-fun b!4527744 () Bool)

(assert (=> b!4527744 (= e!2821124 (containsKey!1814 (t!357766 (toList!4352 lt!1702732)) key!3287))))

(assert (= (and d!1396744 (not res!1885235)) b!4527743))

(assert (= (and b!4527743 res!1885236) b!4527744))

(declare-fun m!5282107 () Bool)

(assert (=> b!4527744 m!5282107))

(assert (=> d!1396210 d!1396744))

(declare-fun d!1396746 () Bool)

(declare-fun res!1885237 () Bool)

(declare-fun e!2821125 () Bool)

(assert (=> d!1396746 (=> res!1885237 e!2821125)))

(assert (=> d!1396746 (= res!1885237 (and ((_ is Cons!50680) (t!357766 newBucket!178)) (= (_1!28855 (h!56543 (t!357766 newBucket!178))) (_1!28855 (h!56543 newBucket!178)))))))

(assert (=> d!1396746 (= (containsKey!1812 (t!357766 newBucket!178) (_1!28855 (h!56543 newBucket!178))) e!2821125)))

(declare-fun b!4527745 () Bool)

(declare-fun e!2821126 () Bool)

(assert (=> b!4527745 (= e!2821125 e!2821126)))

(declare-fun res!1885238 () Bool)

(assert (=> b!4527745 (=> (not res!1885238) (not e!2821126))))

(assert (=> b!4527745 (= res!1885238 ((_ is Cons!50680) (t!357766 newBucket!178)))))

(declare-fun b!4527746 () Bool)

(assert (=> b!4527746 (= e!2821126 (containsKey!1812 (t!357766 (t!357766 newBucket!178)) (_1!28855 (h!56543 newBucket!178))))))

(assert (= (and d!1396746 (not res!1885237)) b!4527745))

(assert (= (and b!4527745 res!1885238) b!4527746))

(declare-fun m!5282113 () Bool)

(assert (=> b!4527746 m!5282113))

(assert (=> b!4526655 d!1396746))

(declare-fun d!1396748 () Bool)

(declare-fun res!1885239 () Bool)

(declare-fun e!2821127 () Bool)

(assert (=> d!1396748 (=> res!1885239 e!2821127)))

(assert (=> d!1396748 (= res!1885239 (not ((_ is Cons!50680) (_2!28856 lt!1702730))))))

(assert (=> d!1396748 (= (noDuplicateKeys!1172 (_2!28856 lt!1702730)) e!2821127)))

(declare-fun b!4527747 () Bool)

(declare-fun e!2821128 () Bool)

(assert (=> b!4527747 (= e!2821127 e!2821128)))

(declare-fun res!1885240 () Bool)

(assert (=> b!4527747 (=> (not res!1885240) (not e!2821128))))

(assert (=> b!4527747 (= res!1885240 (not (containsKey!1812 (t!357766 (_2!28856 lt!1702730)) (_1!28855 (h!56543 (_2!28856 lt!1702730))))))))

(declare-fun b!4527748 () Bool)

(assert (=> b!4527748 (= e!2821128 (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702730))))))

(assert (= (and d!1396748 (not res!1885239)) b!4527747))

(assert (= (and b!4527747 res!1885240) b!4527748))

(declare-fun m!5282123 () Bool)

(assert (=> b!4527747 m!5282123))

(declare-fun m!5282125 () Bool)

(assert (=> b!4527748 m!5282125))

(assert (=> bs!862390 d!1396748))

(assert (=> b!4526741 d!1396522))

(declare-fun d!1396752 () Bool)

(assert (=> d!1396752 (containsKey!1814 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287)))

(declare-fun lt!1703535 () Unit!96156)

(assert (=> d!1396752 (= lt!1703535 (choose!29664 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (=> d!1396752 (invariantList!1027 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396752 (= (lemmaInGetKeysListThenContainsKey!474 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) key!3287) lt!1703535)))

(declare-fun bs!862564 () Bool)

(assert (= bs!862564 d!1396752))

(assert (=> bs!862564 m!5280457))

(declare-fun m!5282127 () Bool)

(assert (=> bs!862564 m!5282127))

(assert (=> bs!862564 m!5281273))

(assert (=> b!4526741 d!1396752))

(declare-fun lt!1703536 () Bool)

(declare-fun d!1396754 () Bool)

(assert (=> d!1396754 (= lt!1703536 (select (content!8385 (toList!4351 lm!1477)) (tuple2!51125 hash!344 lt!1702716)))))

(declare-fun e!2821131 () Bool)

(assert (=> d!1396754 (= lt!1703536 e!2821131)))

(declare-fun res!1885243 () Bool)

(assert (=> d!1396754 (=> (not res!1885243) (not e!2821131))))

(assert (=> d!1396754 (= res!1885243 ((_ is Cons!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396754 (= (contains!13428 (toList!4351 lm!1477) (tuple2!51125 hash!344 lt!1702716)) lt!1703536)))

(declare-fun b!4527751 () Bool)

(declare-fun e!2821132 () Bool)

(assert (=> b!4527751 (= e!2821131 e!2821132)))

(declare-fun res!1885244 () Bool)

(assert (=> b!4527751 (=> res!1885244 e!2821132)))

(assert (=> b!4527751 (= res!1885244 (= (h!56544 (toList!4351 lm!1477)) (tuple2!51125 hash!344 lt!1702716)))))

(declare-fun b!4527752 () Bool)

(assert (=> b!4527752 (= e!2821132 (contains!13428 (t!357767 (toList!4351 lm!1477)) (tuple2!51125 hash!344 lt!1702716)))))

(assert (= (and d!1396754 res!1885243) b!4527751))

(assert (= (and b!4527751 (not res!1885244)) b!4527752))

(assert (=> d!1396754 m!5280767))

(declare-fun m!5282135 () Bool)

(assert (=> d!1396754 m!5282135))

(declare-fun m!5282139 () Bool)

(assert (=> b!4527752 m!5282139))

(assert (=> d!1396268 d!1396754))

(declare-fun d!1396760 () Bool)

(assert (=> d!1396760 (contains!13428 (toList!4351 lm!1477) (tuple2!51125 hash!344 lt!1702716))))

(assert (=> d!1396760 true))

(declare-fun _$14!1182 () Unit!96156)

(assert (=> d!1396760 (= (choose!29651 (toList!4351 lm!1477) hash!344 lt!1702716) _$14!1182)))

(declare-fun bs!862577 () Bool)

(assert (= bs!862577 d!1396760))

(assert (=> bs!862577 m!5280763))

(assert (=> d!1396268 d!1396760))

(declare-fun d!1396762 () Bool)

(declare-fun res!1885256 () Bool)

(declare-fun e!2821143 () Bool)

(assert (=> d!1396762 (=> res!1885256 e!2821143)))

(assert (=> d!1396762 (= res!1885256 (or ((_ is Nil!50681) (toList!4351 lm!1477)) ((_ is Nil!50681) (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396762 (= (isStrictlySorted!440 (toList!4351 lm!1477)) e!2821143)))

(declare-fun b!4527766 () Bool)

(declare-fun e!2821144 () Bool)

(assert (=> b!4527766 (= e!2821143 e!2821144)))

(declare-fun res!1885257 () Bool)

(assert (=> b!4527766 (=> (not res!1885257) (not e!2821144))))

(assert (=> b!4527766 (= res!1885257 (bvslt (_1!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))

(declare-fun b!4527767 () Bool)

(assert (=> b!4527767 (= e!2821144 (isStrictlySorted!440 (t!357767 (toList!4351 lm!1477))))))

(assert (= (and d!1396762 (not res!1885256)) b!4527766))

(assert (= (and b!4527766 res!1885257) b!4527767))

(declare-fun m!5282171 () Bool)

(assert (=> b!4527767 m!5282171))

(assert (=> d!1396268 d!1396762))

(declare-fun d!1396770 () Bool)

(declare-fun res!1885258 () Bool)

(declare-fun e!2821145 () Bool)

(assert (=> d!1396770 (=> res!1885258 e!2821145)))

(assert (=> d!1396770 (= res!1885258 ((_ is Nil!50680) (toList!4352 lt!1702724)))))

(assert (=> d!1396770 (= (forall!10293 (toList!4352 lt!1702724) lambda!173703) e!2821145)))

(declare-fun b!4527768 () Bool)

(declare-fun e!2821146 () Bool)

(assert (=> b!4527768 (= e!2821145 e!2821146)))

(declare-fun res!1885259 () Bool)

(assert (=> b!4527768 (=> (not res!1885259) (not e!2821146))))

(assert (=> b!4527768 (= res!1885259 (dynLambda!21181 lambda!173703 (h!56543 (toList!4352 lt!1702724))))))

(declare-fun b!4527769 () Bool)

(assert (=> b!4527769 (= e!2821146 (forall!10293 (t!357766 (toList!4352 lt!1702724)) lambda!173703))))

(assert (= (and d!1396770 (not res!1885258)) b!4527768))

(assert (= (and b!4527768 res!1885259) b!4527769))

(declare-fun b_lambda!156041 () Bool)

(assert (=> (not b_lambda!156041) (not b!4527768)))

(declare-fun m!5282175 () Bool)

(assert (=> b!4527768 m!5282175))

(declare-fun m!5282177 () Bool)

(assert (=> b!4527769 m!5282177))

(assert (=> b!4527000 d!1396770))

(declare-fun d!1396774 () Bool)

(declare-fun lt!1703541 () Bool)

(assert (=> d!1396774 (= lt!1703541 (select (content!8386 (keys!17616 lt!1702718)) key!3287))))

(declare-fun e!2821148 () Bool)

(assert (=> d!1396774 (= lt!1703541 e!2821148)))

(declare-fun res!1885260 () Bool)

(assert (=> d!1396774 (=> (not res!1885260) (not e!2821148))))

(assert (=> d!1396774 (= res!1885260 ((_ is Cons!50683) (keys!17616 lt!1702718)))))

(assert (=> d!1396774 (= (contains!13431 (keys!17616 lt!1702718) key!3287) lt!1703541)))

(declare-fun b!4527770 () Bool)

(declare-fun e!2821147 () Bool)

(assert (=> b!4527770 (= e!2821148 e!2821147)))

(declare-fun res!1885261 () Bool)

(assert (=> b!4527770 (=> res!1885261 e!2821147)))

(assert (=> b!4527770 (= res!1885261 (= (h!56548 (keys!17616 lt!1702718)) key!3287))))

(declare-fun b!4527771 () Bool)

(assert (=> b!4527771 (= e!2821147 (contains!13431 (t!357769 (keys!17616 lt!1702718)) key!3287))))

(assert (= (and d!1396774 res!1885260) b!4527770))

(assert (= (and b!4527770 (not res!1885261)) b!4527771))

(assert (=> d!1396774 m!5281055))

(declare-fun m!5282179 () Bool)

(assert (=> d!1396774 m!5282179))

(declare-fun m!5282181 () Bool)

(assert (=> d!1396774 m!5282181))

(declare-fun m!5282183 () Bool)

(assert (=> b!4527771 m!5282183))

(assert (=> b!4527007 d!1396774))

(assert (=> b!4527007 d!1396686))

(assert (=> b!4527043 d!1396386))

(declare-fun bs!862583 () Bool)

(declare-fun b!4527776 () Bool)

(assert (= bs!862583 (and b!4527776 b!4527135)))

(declare-fun lambda!173770 () Int)

(assert (=> bs!862583 (= (= (t!357766 (toList!4352 lt!1702732)) (toList!4352 lt!1702718)) (= lambda!173770 lambda!173732))))

(declare-fun bs!862584 () Bool)

(assert (= bs!862584 (and b!4527776 b!4527086)))

(assert (=> bs!862584 (= (= (t!357766 (toList!4352 lt!1702732)) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173770 lambda!173720))))

(declare-fun bs!862585 () Bool)

(assert (= bs!862585 (and b!4527776 b!4527667)))

(assert (=> bs!862585 (= (= (t!357766 (toList!4352 lt!1702732)) (toList!4352 lt!1702718)) (= lambda!173770 lambda!173764))))

(declare-fun bs!862586 () Bool)

(assert (= bs!862586 (and b!4527776 b!4527270)))

(assert (=> bs!862586 (= (= (t!357766 (toList!4352 lt!1702732)) (toList!4352 lt!1702732)) (= lambda!173770 lambda!173737))))

(declare-fun bs!862587 () Bool)

(assert (= bs!862587 (and b!4527776 b!4527140)))

(assert (=> bs!862587 (= (= (t!357766 (toList!4352 lt!1702732)) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173770 lambda!173731))))

(declare-fun bs!862588 () Bool)

(assert (= bs!862588 (and b!4527776 b!4527134)))

(assert (=> bs!862588 (= (= (t!357766 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702718))) (= lambda!173770 lambda!173730))))

(assert (=> b!4527776 true))

(declare-fun bs!862589 () Bool)

(declare-fun b!4527782 () Bool)

(assert (= bs!862589 (and b!4527782 b!4527135)))

(declare-fun lambda!173771 () Int)

(assert (=> bs!862589 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (toList!4352 lt!1702718)) (= lambda!173771 lambda!173732))))

(declare-fun bs!862590 () Bool)

(assert (= bs!862590 (and b!4527782 b!4527776)))

(assert (=> bs!862590 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (t!357766 (toList!4352 lt!1702732))) (= lambda!173771 lambda!173770))))

(declare-fun bs!862591 () Bool)

(assert (= bs!862591 (and b!4527782 b!4527086)))

(assert (=> bs!862591 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173771 lambda!173720))))

(declare-fun bs!862592 () Bool)

(assert (= bs!862592 (and b!4527782 b!4527667)))

(assert (=> bs!862592 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (toList!4352 lt!1702718)) (= lambda!173771 lambda!173764))))

(declare-fun bs!862593 () Bool)

(assert (= bs!862593 (and b!4527782 b!4527270)))

(assert (=> bs!862593 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (toList!4352 lt!1702732)) (= lambda!173771 lambda!173737))))

(declare-fun bs!862595 () Bool)

(assert (= bs!862595 (and b!4527782 b!4527140)))

(assert (=> bs!862595 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173771 lambda!173731))))

(declare-fun bs!862596 () Bool)

(assert (= bs!862596 (and b!4527782 b!4527134)))

(assert (=> bs!862596 (= (= (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732))) (t!357766 (toList!4352 lt!1702718))) (= lambda!173771 lambda!173730))))

(assert (=> b!4527782 true))

(declare-fun bs!862598 () Bool)

(declare-fun b!4527777 () Bool)

(assert (= bs!862598 (and b!4527777 b!4527135)))

(declare-fun lambda!173772 () Int)

(assert (=> bs!862598 (= (= (toList!4352 lt!1702732) (toList!4352 lt!1702718)) (= lambda!173772 lambda!173732))))

(declare-fun bs!862599 () Bool)

(assert (= bs!862599 (and b!4527777 b!4527776)))

(assert (=> bs!862599 (= (= (toList!4352 lt!1702732) (t!357766 (toList!4352 lt!1702732))) (= lambda!173772 lambda!173770))))

(declare-fun bs!862600 () Bool)

(assert (= bs!862600 (and b!4527777 b!4527086)))

(assert (=> bs!862600 (= (= (toList!4352 lt!1702732) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173772 lambda!173720))))

(declare-fun bs!862601 () Bool)

(assert (= bs!862601 (and b!4527777 b!4527667)))

(assert (=> bs!862601 (= (= (toList!4352 lt!1702732) (toList!4352 lt!1702718)) (= lambda!173772 lambda!173764))))

(declare-fun bs!862602 () Bool)

(assert (= bs!862602 (and b!4527777 b!4527270)))

(assert (=> bs!862602 (= lambda!173772 lambda!173737)))

(declare-fun bs!862604 () Bool)

(assert (= bs!862604 (and b!4527777 b!4527782)))

(assert (=> bs!862604 (= (= (toList!4352 lt!1702732) (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732)))) (= lambda!173772 lambda!173771))))

(declare-fun bs!862605 () Bool)

(assert (= bs!862605 (and b!4527777 b!4527140)))

(assert (=> bs!862605 (= (= (toList!4352 lt!1702732) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173772 lambda!173731))))

(declare-fun bs!862606 () Bool)

(assert (= bs!862606 (and b!4527777 b!4527134)))

(assert (=> bs!862606 (= (= (toList!4352 lt!1702732) (t!357766 (toList!4352 lt!1702718))) (= lambda!173772 lambda!173730))))

(assert (=> b!4527777 true))

(declare-fun bs!862607 () Bool)

(declare-fun b!4527778 () Bool)

(assert (= bs!862607 (and b!4527778 b!4527087)))

(declare-fun lambda!173773 () Int)

(assert (=> bs!862607 (= lambda!173773 lambda!173721)))

(declare-fun bs!862608 () Bool)

(assert (= bs!862608 (and b!4527778 b!4527136)))

(assert (=> bs!862608 (= lambda!173773 lambda!173733)))

(declare-fun bs!862609 () Bool)

(assert (= bs!862609 (and b!4527778 b!4527271)))

(assert (=> bs!862609 (= lambda!173773 lambda!173738)))

(declare-fun bs!862610 () Bool)

(assert (= bs!862610 (and b!4527778 b!4527668)))

(assert (=> bs!862610 (= lambda!173773 lambda!173765)))

(declare-fun b!4527774 () Bool)

(assert (=> b!4527774 false))

(declare-fun e!2821151 () Unit!96156)

(declare-fun Unit!96290 () Unit!96156)

(assert (=> b!4527774 (= e!2821151 Unit!96290)))

(declare-fun b!4527775 () Bool)

(declare-fun e!2821153 () List!50807)

(assert (=> b!4527775 (= e!2821153 Nil!50683)))

(assert (=> b!4527776 false))

(declare-fun lt!1703548 () Unit!96156)

(assert (=> b!4527776 (= lt!1703548 (forallContained!2546 (getKeysList!475 (t!357766 (toList!4352 lt!1702732))) lambda!173770 (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(declare-fun e!2821150 () Unit!96156)

(declare-fun Unit!96291 () Unit!96156)

(assert (=> b!4527776 (= e!2821150 Unit!96291)))

(declare-fun res!1885262 () Bool)

(declare-fun e!2821152 () Bool)

(assert (=> b!4527777 (=> (not res!1885262) (not e!2821152))))

(declare-fun lt!1703547 () List!50807)

(assert (=> b!4527777 (= res!1885262 (forall!10294 lt!1703547 lambda!173772))))

(assert (=> b!4527778 (= e!2821152 (= (content!8386 lt!1703547) (content!8386 (map!11150 (toList!4352 lt!1702732) lambda!173773))))))

(declare-fun b!4527779 () Bool)

(declare-fun res!1885263 () Bool)

(assert (=> b!4527779 (=> (not res!1885263) (not e!2821152))))

(assert (=> b!4527779 (= res!1885263 (= (length!362 lt!1703547) (length!363 (toList!4352 lt!1702732))))))

(declare-fun b!4527781 () Bool)

(declare-fun Unit!96292 () Unit!96156)

(assert (=> b!4527781 (= e!2821151 Unit!96292)))

(assert (=> b!4527782 (= e!2821153 (Cons!50683 (_1!28855 (h!56543 (toList!4352 lt!1702732))) (getKeysList!475 (t!357766 (toList!4352 lt!1702732)))))))

(declare-fun c!773025 () Bool)

(assert (=> b!4527782 (= c!773025 (containsKey!1814 (t!357766 (toList!4352 lt!1702732)) (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(declare-fun lt!1703544 () Unit!96156)

(assert (=> b!4527782 (= lt!1703544 e!2821151)))

(declare-fun c!773023 () Bool)

(assert (=> b!4527782 (= c!773023 (contains!13431 (getKeysList!475 (t!357766 (toList!4352 lt!1702732))) (_1!28855 (h!56543 (toList!4352 lt!1702732)))))))

(declare-fun lt!1703546 () Unit!96156)

(assert (=> b!4527782 (= lt!1703546 e!2821150)))

(declare-fun lt!1703542 () List!50807)

(assert (=> b!4527782 (= lt!1703542 (getKeysList!475 (t!357766 (toList!4352 lt!1702732))))))

(declare-fun lt!1703543 () Unit!96156)

(assert (=> b!4527782 (= lt!1703543 (lemmaForallContainsAddHeadPreserves!174 (t!357766 (toList!4352 lt!1702732)) lt!1703542 (h!56543 (toList!4352 lt!1702732))))))

(assert (=> b!4527782 (forall!10294 lt!1703542 lambda!173771)))

(declare-fun lt!1703545 () Unit!96156)

(assert (=> b!4527782 (= lt!1703545 lt!1703543)))

(declare-fun b!4527780 () Bool)

(declare-fun Unit!96293 () Unit!96156)

(assert (=> b!4527780 (= e!2821150 Unit!96293)))

(declare-fun d!1396778 () Bool)

(assert (=> d!1396778 e!2821152))

(declare-fun res!1885264 () Bool)

(assert (=> d!1396778 (=> (not res!1885264) (not e!2821152))))

(assert (=> d!1396778 (= res!1885264 (noDuplicate!753 lt!1703547))))

(assert (=> d!1396778 (= lt!1703547 e!2821153)))

(declare-fun c!773024 () Bool)

(assert (=> d!1396778 (= c!773024 ((_ is Cons!50680) (toList!4352 lt!1702732)))))

(assert (=> d!1396778 (invariantList!1027 (toList!4352 lt!1702732))))

(assert (=> d!1396778 (= (getKeysList!475 (toList!4352 lt!1702732)) lt!1703547)))

(assert (= (and d!1396778 c!773024) b!4527782))

(assert (= (and d!1396778 (not c!773024)) b!4527775))

(assert (= (and b!4527782 c!773025) b!4527774))

(assert (= (and b!4527782 (not c!773025)) b!4527781))

(assert (= (and b!4527782 c!773023) b!4527776))

(assert (= (and b!4527782 (not c!773023)) b!4527780))

(assert (= (and d!1396778 res!1885264) b!4527779))

(assert (= (and b!4527779 res!1885263) b!4527777))

(assert (= (and b!4527777 res!1885262) b!4527778))

(declare-fun m!5282221 () Bool)

(assert (=> b!4527777 m!5282221))

(declare-fun m!5282223 () Bool)

(assert (=> d!1396778 m!5282223))

(assert (=> d!1396778 m!5281413))

(declare-fun m!5282225 () Bool)

(assert (=> b!4527778 m!5282225))

(declare-fun m!5282227 () Bool)

(assert (=> b!4527778 m!5282227))

(assert (=> b!4527778 m!5282227))

(declare-fun m!5282229 () Bool)

(assert (=> b!4527778 m!5282229))

(declare-fun m!5282231 () Bool)

(assert (=> b!4527779 m!5282231))

(assert (=> b!4527779 m!5281381))

(assert (=> b!4527782 m!5281883))

(declare-fun m!5282233 () Bool)

(assert (=> b!4527782 m!5282233))

(assert (=> b!4527782 m!5281883))

(assert (=> b!4527782 m!5281885))

(declare-fun m!5282235 () Bool)

(assert (=> b!4527782 m!5282235))

(declare-fun m!5282237 () Bool)

(assert (=> b!4527782 m!5282237))

(assert (=> b!4527776 m!5281883))

(assert (=> b!4527776 m!5281883))

(declare-fun m!5282239 () Bool)

(assert (=> b!4527776 m!5282239))

(assert (=> b!4526754 d!1396778))

(declare-fun d!1396800 () Bool)

(assert (=> d!1396800 (= (invariantList!1027 (toList!4352 lt!1702982)) (noDuplicatedKeys!269 (toList!4352 lt!1702982)))))

(declare-fun bs!862611 () Bool)

(assert (= bs!862611 d!1396800))

(declare-fun m!5282241 () Bool)

(assert (=> bs!862611 m!5282241))

(assert (=> d!1396254 d!1396800))

(declare-fun d!1396802 () Bool)

(declare-fun res!1885275 () Bool)

(declare-fun e!2821168 () Bool)

(assert (=> d!1396802 (=> res!1885275 e!2821168)))

(assert (=> d!1396802 (= res!1885275 ((_ is Nil!50681) (toList!4351 (+!1560 lt!1702722 lt!1702727))))))

(assert (=> d!1396802 (= (forall!10291 (toList!4351 (+!1560 lt!1702722 lt!1702727)) lambda!173645) e!2821168)))

(declare-fun b!4527801 () Bool)

(declare-fun e!2821169 () Bool)

(assert (=> b!4527801 (= e!2821168 e!2821169)))

(declare-fun res!1885276 () Bool)

(assert (=> b!4527801 (=> (not res!1885276) (not e!2821169))))

(assert (=> b!4527801 (= res!1885276 (dynLambda!21178 lambda!173645 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))

(declare-fun b!4527802 () Bool)

(assert (=> b!4527802 (= e!2821169 (forall!10291 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))) lambda!173645))))

(assert (= (and d!1396802 (not res!1885275)) b!4527801))

(assert (= (and b!4527801 res!1885276) b!4527802))

(declare-fun b_lambda!156043 () Bool)

(assert (=> (not b_lambda!156043) (not b!4527801)))

(declare-fun m!5282243 () Bool)

(assert (=> b!4527801 m!5282243))

(declare-fun m!5282245 () Bool)

(assert (=> b!4527802 m!5282245))

(assert (=> d!1396254 d!1396802))

(declare-fun bs!862612 () Bool)

(declare-fun b!4527806 () Bool)

(assert (= bs!862612 (and b!4527806 d!1396296)))

(declare-fun lambda!173774 () Int)

(assert (=> bs!862612 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703123) (= lambda!173774 lambda!173703))))

(declare-fun bs!862613 () Bool)

(assert (= bs!862613 (and b!4527806 b!4527305)))

(assert (=> bs!862613 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173774 lambda!173739))))

(declare-fun bs!862614 () Bool)

(assert (= bs!862614 (and b!4527806 b!4526999)))

(assert (=> bs!862614 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702724) (= lambda!173774 lambda!173701))))

(declare-fun bs!862615 () Bool)

(assert (= bs!862615 (and b!4527806 d!1396634)))

(assert (=> bs!862615 (not (= lambda!173774 lambda!173754))))

(declare-fun bs!862616 () Bool)

(assert (= bs!862616 (and b!4527806 b!4527019)))

(assert (=> bs!862616 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703158) (= lambda!173774 lambda!173713))))

(declare-fun bs!862617 () Bool)

(assert (= bs!862617 (and b!4527806 b!4527307)))

(assert (=> bs!862617 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173774 lambda!173740))))

(assert (=> bs!862614 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703122) (= lambda!173774 lambda!173702))))

(declare-fun bs!862618 () Bool)

(assert (= bs!862618 (and b!4527806 d!1396260)))

(assert (=> bs!862618 (not (= lambda!173774 lambda!173651))))

(declare-fun bs!862619 () Bool)

(assert (= bs!862619 (and b!4527806 d!1396572)))

(assert (=> bs!862619 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703122) (= lambda!173774 lambda!173753))))

(assert (=> bs!862617 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703261) (= lambda!173774 lambda!173743))))

(declare-fun bs!862620 () Bool)

(assert (= bs!862620 (and b!4527806 b!4526608)))

(assert (=> bs!862620 (not (= lambda!173774 lambda!173585))))

(declare-fun bs!862621 () Bool)

(assert (= bs!862621 (and b!4527806 b!4527017)))

(assert (=> bs!862621 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173774 lambda!173711))))

(declare-fun bs!862622 () Bool)

(assert (= bs!862622 (and b!4527806 d!1396390)))

(assert (=> bs!862622 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703159) (= lambda!173774 lambda!173714))))

(declare-fun bs!862624 () Bool)

(assert (= bs!862624 (and b!4527806 b!4526997)))

(assert (=> bs!862624 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702724) (= lambda!173774 lambda!173700))))

(assert (=> bs!862616 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173774 lambda!173712))))

(declare-fun bs!862625 () Bool)

(assert (= bs!862625 (and b!4527806 d!1396498)))

(assert (=> bs!862625 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173774 lambda!173736))))

(declare-fun bs!862626 () Bool)

(assert (= bs!862626 (and b!4527806 d!1396564)))

(assert (=> bs!862626 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703262) (= lambda!173774 lambda!173746))))

(assert (=> b!4527806 true))

(declare-fun bs!862627 () Bool)

(declare-fun b!4527808 () Bool)

(assert (= bs!862627 (and b!4527808 d!1396296)))

(declare-fun lambda!173775 () Int)

(assert (=> bs!862627 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703123) (= lambda!173775 lambda!173703))))

(declare-fun bs!862628 () Bool)

(assert (= bs!862628 (and b!4527808 b!4527305)))

(assert (=> bs!862628 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173775 lambda!173739))))

(declare-fun bs!862629 () Bool)

(assert (= bs!862629 (and b!4527808 b!4526999)))

(assert (=> bs!862629 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702724) (= lambda!173775 lambda!173701))))

(declare-fun bs!862630 () Bool)

(assert (= bs!862630 (and b!4527808 d!1396634)))

(assert (=> bs!862630 (not (= lambda!173775 lambda!173754))))

(declare-fun bs!862631 () Bool)

(assert (= bs!862631 (and b!4527808 b!4527019)))

(assert (=> bs!862631 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703158) (= lambda!173775 lambda!173713))))

(assert (=> bs!862629 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703122) (= lambda!173775 lambda!173702))))

(declare-fun bs!862632 () Bool)

(assert (= bs!862632 (and b!4527808 d!1396260)))

(assert (=> bs!862632 (not (= lambda!173775 lambda!173651))))

(declare-fun bs!862633 () Bool)

(assert (= bs!862633 (and b!4527808 d!1396572)))

(assert (=> bs!862633 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703122) (= lambda!173775 lambda!173753))))

(declare-fun bs!862634 () Bool)

(assert (= bs!862634 (and b!4527808 b!4527307)))

(assert (=> bs!862634 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703261) (= lambda!173775 lambda!173743))))

(declare-fun bs!862635 () Bool)

(assert (= bs!862635 (and b!4527808 b!4526608)))

(assert (=> bs!862635 (not (= lambda!173775 lambda!173585))))

(declare-fun bs!862636 () Bool)

(assert (= bs!862636 (and b!4527808 b!4527017)))

(assert (=> bs!862636 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173775 lambda!173711))))

(declare-fun bs!862637 () Bool)

(assert (= bs!862637 (and b!4527808 d!1396390)))

(assert (=> bs!862637 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703159) (= lambda!173775 lambda!173714))))

(declare-fun bs!862638 () Bool)

(assert (= bs!862638 (and b!4527808 b!4526997)))

(assert (=> bs!862638 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702724) (= lambda!173775 lambda!173700))))

(assert (=> bs!862631 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173775 lambda!173712))))

(assert (=> bs!862634 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173775 lambda!173740))))

(declare-fun bs!862639 () Bool)

(assert (= bs!862639 (and b!4527808 b!4527806)))

(assert (=> bs!862639 (= lambda!173775 lambda!173774)))

(declare-fun bs!862640 () Bool)

(assert (= bs!862640 (and b!4527808 d!1396498)))

(assert (=> bs!862640 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1702713) (= lambda!173775 lambda!173736))))

(declare-fun bs!862641 () Bool)

(assert (= bs!862641 (and b!4527808 d!1396564)))

(assert (=> bs!862641 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703262) (= lambda!173775 lambda!173746))))

(assert (=> b!4527808 true))

(declare-fun lambda!173776 () Int)

(declare-fun lt!1703571 () ListMap!3613)

(assert (=> bs!862627 (= (= lt!1703571 lt!1703123) (= lambda!173776 lambda!173703))))

(assert (=> bs!862628 (= (= lt!1703571 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173776 lambda!173739))))

(assert (=> bs!862629 (= (= lt!1703571 lt!1702724) (= lambda!173776 lambda!173701))))

(assert (=> bs!862630 (not (= lambda!173776 lambda!173754))))

(assert (=> bs!862631 (= (= lt!1703571 lt!1703158) (= lambda!173776 lambda!173713))))

(assert (=> bs!862629 (= (= lt!1703571 lt!1703122) (= lambda!173776 lambda!173702))))

(assert (=> bs!862633 (= (= lt!1703571 lt!1703122) (= lambda!173776 lambda!173753))))

(assert (=> bs!862634 (= (= lt!1703571 lt!1703261) (= lambda!173776 lambda!173743))))

(assert (=> bs!862635 (not (= lambda!173776 lambda!173585))))

(assert (=> bs!862636 (= (= lt!1703571 lt!1702713) (= lambda!173776 lambda!173711))))

(assert (=> bs!862637 (= (= lt!1703571 lt!1703159) (= lambda!173776 lambda!173714))))

(assert (=> bs!862638 (= (= lt!1703571 lt!1702724) (= lambda!173776 lambda!173700))))

(assert (=> bs!862631 (= (= lt!1703571 lt!1702713) (= lambda!173776 lambda!173712))))

(assert (=> bs!862634 (= (= lt!1703571 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173776 lambda!173740))))

(assert (=> bs!862639 (= (= lt!1703571 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173776 lambda!173774))))

(assert (=> b!4527808 (= (= lt!1703571 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173776 lambda!173775))))

(assert (=> bs!862632 (not (= lambda!173776 lambda!173651))))

(assert (=> bs!862640 (= (= lt!1703571 lt!1702713) (= lambda!173776 lambda!173736))))

(assert (=> bs!862641 (= (= lt!1703571 lt!1703262) (= lambda!173776 lambda!173746))))

(assert (=> b!4527808 true))

(declare-fun bs!862642 () Bool)

(declare-fun d!1396804 () Bool)

(assert (= bs!862642 (and d!1396804 d!1396296)))

(declare-fun lt!1703572 () ListMap!3613)

(declare-fun lambda!173777 () Int)

(assert (=> bs!862642 (= (= lt!1703572 lt!1703123) (= lambda!173777 lambda!173703))))

(declare-fun bs!862643 () Bool)

(assert (= bs!862643 (and d!1396804 b!4527305)))

(assert (=> bs!862643 (= (= lt!1703572 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173777 lambda!173739))))

(declare-fun bs!862644 () Bool)

(assert (= bs!862644 (and d!1396804 b!4526999)))

(assert (=> bs!862644 (= (= lt!1703572 lt!1702724) (= lambda!173777 lambda!173701))))

(declare-fun bs!862645 () Bool)

(assert (= bs!862645 (and d!1396804 d!1396634)))

(assert (=> bs!862645 (not (= lambda!173777 lambda!173754))))

(declare-fun bs!862646 () Bool)

(assert (= bs!862646 (and d!1396804 b!4527019)))

(assert (=> bs!862646 (= (= lt!1703572 lt!1703158) (= lambda!173777 lambda!173713))))

(assert (=> bs!862644 (= (= lt!1703572 lt!1703122) (= lambda!173777 lambda!173702))))

(declare-fun bs!862647 () Bool)

(assert (= bs!862647 (and d!1396804 b!4527307)))

(assert (=> bs!862647 (= (= lt!1703572 lt!1703261) (= lambda!173777 lambda!173743))))

(declare-fun bs!862648 () Bool)

(assert (= bs!862648 (and d!1396804 b!4526608)))

(assert (=> bs!862648 (not (= lambda!173777 lambda!173585))))

(declare-fun bs!862649 () Bool)

(assert (= bs!862649 (and d!1396804 b!4527017)))

(assert (=> bs!862649 (= (= lt!1703572 lt!1702713) (= lambda!173777 lambda!173711))))

(declare-fun bs!862650 () Bool)

(assert (= bs!862650 (and d!1396804 d!1396390)))

(assert (=> bs!862650 (= (= lt!1703572 lt!1703159) (= lambda!173777 lambda!173714))))

(declare-fun bs!862651 () Bool)

(assert (= bs!862651 (and d!1396804 b!4526997)))

(assert (=> bs!862651 (= (= lt!1703572 lt!1702724) (= lambda!173777 lambda!173700))))

(assert (=> bs!862646 (= (= lt!1703572 lt!1702713) (= lambda!173777 lambda!173712))))

(assert (=> bs!862647 (= (= lt!1703572 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173777 lambda!173740))))

(declare-fun bs!862652 () Bool)

(assert (= bs!862652 (and d!1396804 b!4527806)))

(assert (=> bs!862652 (= (= lt!1703572 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173777 lambda!173774))))

(declare-fun bs!862653 () Bool)

(assert (= bs!862653 (and d!1396804 b!4527808)))

(assert (=> bs!862653 (= (= lt!1703572 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173777 lambda!173775))))

(declare-fun bs!862654 () Bool)

(assert (= bs!862654 (and d!1396804 d!1396260)))

(assert (=> bs!862654 (not (= lambda!173777 lambda!173651))))

(declare-fun bs!862655 () Bool)

(assert (= bs!862655 (and d!1396804 d!1396498)))

(assert (=> bs!862655 (= (= lt!1703572 lt!1702713) (= lambda!173777 lambda!173736))))

(declare-fun bs!862656 () Bool)

(assert (= bs!862656 (and d!1396804 d!1396564)))

(assert (=> bs!862656 (= (= lt!1703572 lt!1703262) (= lambda!173777 lambda!173746))))

(assert (=> bs!862653 (= (= lt!1703572 lt!1703571) (= lambda!173777 lambda!173776))))

(declare-fun bs!862657 () Bool)

(assert (= bs!862657 (and d!1396804 d!1396572)))

(assert (=> bs!862657 (= (= lt!1703572 lt!1703122) (= lambda!173777 lambda!173753))))

(assert (=> d!1396804 true))

(declare-fun b!4527805 () Bool)

(declare-fun e!2821174 () Bool)

(assert (=> b!4527805 (= e!2821174 (invariantList!1027 (toList!4352 lt!1703572)))))

(declare-fun e!2821172 () ListMap!3613)

(assert (=> b!4527806 (= e!2821172 (extractMap!1228 (t!357767 (toList!4351 lt!1702729))))))

(declare-fun lt!1703559 () Unit!96156)

(declare-fun call!315578 () Unit!96156)

(assert (=> b!4527806 (= lt!1703559 call!315578)))

(declare-fun call!315577 () Bool)

(assert (=> b!4527806 call!315577))

(declare-fun lt!1703558 () Unit!96156)

(assert (=> b!4527806 (= lt!1703558 lt!1703559)))

(declare-fun call!315579 () Bool)

(assert (=> b!4527806 call!315579))

(declare-fun lt!1703568 () Unit!96156)

(declare-fun Unit!96294 () Unit!96156)

(assert (=> b!4527806 (= lt!1703568 Unit!96294)))

(declare-fun b!4527807 () Bool)

(declare-fun e!2821173 () Bool)

(assert (=> b!4527807 (= e!2821173 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) lambda!173776))))

(declare-fun b!4527809 () Bool)

(declare-fun res!1885281 () Bool)

(assert (=> b!4527809 (=> (not res!1885281) (not e!2821174))))

(assert (=> b!4527809 (= res!1885281 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) lambda!173777))))

(declare-fun bm!315572 () Bool)

(assert (=> bm!315572 (= call!315578 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))))))

(assert (=> d!1396804 e!2821174))

(declare-fun res!1885280 () Bool)

(assert (=> d!1396804 (=> (not res!1885280) (not e!2821174))))

(assert (=> d!1396804 (= res!1885280 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702729))) lambda!173777))))

(assert (=> d!1396804 (= lt!1703572 e!2821172)))

(declare-fun c!773030 () Bool)

(assert (=> d!1396804 (= c!773030 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 lt!1702729)))))))

(assert (=> d!1396804 (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702729))))))

(assert (=> d!1396804 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702729))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) lt!1703572)))

(assert (=> b!4527808 (= e!2821172 lt!1703571)))

(declare-fun lt!1703574 () ListMap!3613)

(assert (=> b!4527808 (= lt!1703574 (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729))))))))

(assert (=> b!4527808 (= lt!1703571 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702729)))) (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729)))))))))

(declare-fun lt!1703569 () Unit!96156)

(assert (=> b!4527808 (= lt!1703569 call!315578)))

(assert (=> b!4527808 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) lambda!173775)))

(declare-fun lt!1703563 () Unit!96156)

(assert (=> b!4527808 (= lt!1703563 lt!1703569)))

(assert (=> b!4527808 (forall!10293 (toList!4352 lt!1703574) lambda!173776)))

(declare-fun lt!1703561 () Unit!96156)

(declare-fun Unit!96297 () Unit!96156)

(assert (=> b!4527808 (= lt!1703561 Unit!96297)))

(assert (=> b!4527808 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702729)))) lambda!173776)))

(declare-fun lt!1703566 () Unit!96156)

(declare-fun Unit!96298 () Unit!96156)

(assert (=> b!4527808 (= lt!1703566 Unit!96298)))

(declare-fun lt!1703570 () Unit!96156)

(declare-fun Unit!96299 () Unit!96156)

(assert (=> b!4527808 (= lt!1703570 Unit!96299)))

(declare-fun lt!1703565 () Unit!96156)

(assert (=> b!4527808 (= lt!1703565 (forallContained!2545 (toList!4352 lt!1703574) lambda!173776 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729))))))))

(assert (=> b!4527808 (contains!13427 lt!1703574 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729))))))))

(declare-fun lt!1703555 () Unit!96156)

(declare-fun Unit!96300 () Unit!96156)

(assert (=> b!4527808 (= lt!1703555 Unit!96300)))

(assert (=> b!4527808 (contains!13427 lt!1703571 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729))))))))

(declare-fun lt!1703556 () Unit!96156)

(declare-fun Unit!96301 () Unit!96156)

(assert (=> b!4527808 (= lt!1703556 Unit!96301)))

(assert (=> b!4527808 call!315577))

(declare-fun lt!1703560 () Unit!96156)

(declare-fun Unit!96303 () Unit!96156)

(assert (=> b!4527808 (= lt!1703560 Unit!96303)))

(assert (=> b!4527808 (forall!10293 (toList!4352 lt!1703574) lambda!173776)))

(declare-fun lt!1703564 () Unit!96156)

(declare-fun Unit!96304 () Unit!96156)

(assert (=> b!4527808 (= lt!1703564 Unit!96304)))

(declare-fun lt!1703557 () Unit!96156)

(declare-fun Unit!96305 () Unit!96156)

(assert (=> b!4527808 (= lt!1703557 Unit!96305)))

(declare-fun lt!1703573 () Unit!96156)

(assert (=> b!4527808 (= lt!1703573 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703571 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702729)))))))))

(assert (=> b!4527808 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) lambda!173776)))

(declare-fun lt!1703575 () Unit!96156)

(assert (=> b!4527808 (= lt!1703575 lt!1703573)))

(assert (=> b!4527808 call!315579))

(declare-fun lt!1703567 () Unit!96156)

(declare-fun Unit!96306 () Unit!96156)

(assert (=> b!4527808 (= lt!1703567 Unit!96306)))

(declare-fun res!1885279 () Bool)

(assert (=> b!4527808 (= res!1885279 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702729))) lambda!173776))))

(assert (=> b!4527808 (=> (not res!1885279) (not e!2821173))))

(assert (=> b!4527808 e!2821173))

(declare-fun lt!1703562 () Unit!96156)

(declare-fun Unit!96307 () Unit!96156)

(assert (=> b!4527808 (= lt!1703562 Unit!96307)))

(declare-fun bm!315573 () Bool)

(assert (=> bm!315573 (= call!315579 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (ite c!773030 lambda!173774 lambda!173776)))))

(declare-fun bm!315574 () Bool)

(assert (=> bm!315574 (= call!315577 (forall!10293 (ite c!773030 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (_2!28856 (h!56544 (toList!4351 lt!1702729)))) (ite c!773030 lambda!173774 lambda!173776)))))

(assert (= (and d!1396804 c!773030) b!4527806))

(assert (= (and d!1396804 (not c!773030)) b!4527808))

(assert (= (and b!4527808 res!1885279) b!4527807))

(assert (= (or b!4527806 b!4527808) bm!315574))

(assert (= (or b!4527806 b!4527808) bm!315573))

(assert (= (or b!4527806 b!4527808) bm!315572))

(assert (= (and d!1396804 res!1885280) b!4527809))

(assert (= (and b!4527809 res!1885281) b!4527805))

(assert (=> bm!315572 m!5280715))

(declare-fun m!5282267 () Bool)

(assert (=> bm!315572 m!5282267))

(declare-fun m!5282269 () Bool)

(assert (=> b!4527807 m!5282269))

(declare-fun m!5282271 () Bool)

(assert (=> b!4527809 m!5282271))

(declare-fun m!5282273 () Bool)

(assert (=> d!1396804 m!5282273))

(declare-fun m!5282275 () Bool)

(assert (=> d!1396804 m!5282275))

(declare-fun m!5282277 () Bool)

(assert (=> bm!315574 m!5282277))

(declare-fun m!5282279 () Bool)

(assert (=> b!4527808 m!5282279))

(assert (=> b!4527808 m!5280715))

(declare-fun m!5282281 () Bool)

(assert (=> b!4527808 m!5282281))

(declare-fun m!5282283 () Bool)

(assert (=> b!4527808 m!5282283))

(assert (=> b!4527808 m!5282269))

(assert (=> b!4527808 m!5280715))

(declare-fun m!5282287 () Bool)

(assert (=> b!4527808 m!5282287))

(declare-fun m!5282291 () Bool)

(assert (=> b!4527808 m!5282291))

(assert (=> b!4527808 m!5282283))

(declare-fun m!5282295 () Bool)

(assert (=> b!4527808 m!5282295))

(declare-fun m!5282299 () Bool)

(assert (=> b!4527808 m!5282299))

(declare-fun m!5282301 () Bool)

(assert (=> b!4527808 m!5282301))

(assert (=> b!4527808 m!5282287))

(declare-fun m!5282303 () Bool)

(assert (=> b!4527808 m!5282303))

(declare-fun m!5282305 () Bool)

(assert (=> b!4527808 m!5282305))

(declare-fun m!5282307 () Bool)

(assert (=> bm!315573 m!5282307))

(declare-fun m!5282309 () Bool)

(assert (=> b!4527805 m!5282309))

(assert (=> b!4526837 d!1396804))

(declare-fun bs!862659 () Bool)

(declare-fun d!1396822 () Bool)

(assert (= bs!862659 (and d!1396822 d!1396254)))

(declare-fun lambda!173778 () Int)

(assert (=> bs!862659 (= lambda!173778 lambda!173645)))

(declare-fun bs!862660 () Bool)

(assert (= bs!862660 (and d!1396822 d!1396204)))

(assert (=> bs!862660 (= lambda!173778 lambda!173594)))

(declare-fun bs!862661 () Bool)

(assert (= bs!862661 (and d!1396822 d!1396256)))

(assert (=> bs!862661 (= lambda!173778 lambda!173647)))

(declare-fun bs!862662 () Bool)

(assert (= bs!862662 (and d!1396822 start!448604)))

(assert (=> bs!862662 (= lambda!173778 lambda!173583)))

(declare-fun bs!862663 () Bool)

(assert (= bs!862663 (and d!1396822 d!1396216)))

(assert (=> bs!862663 (= lambda!173778 lambda!173619)))

(declare-fun bs!862664 () Bool)

(assert (= bs!862664 (and d!1396822 d!1396372)))

(assert (=> bs!862664 (= lambda!173778 lambda!173709)))

(declare-fun bs!862665 () Bool)

(assert (= bs!862665 (and d!1396822 b!4526608)))

(assert (=> bs!862665 (not (= lambda!173778 lambda!173584))))

(declare-fun bs!862666 () Bool)

(assert (= bs!862666 (and d!1396822 d!1396236)))

(assert (=> bs!862666 (= lambda!173778 lambda!173642)))

(declare-fun bs!862667 () Bool)

(assert (= bs!862667 (and d!1396822 d!1396392)))

(assert (=> bs!862667 (= lambda!173778 lambda!173715)))

(declare-fun bs!862668 () Bool)

(assert (= bs!862668 (and d!1396822 d!1396206)))

(assert (=> bs!862668 (= lambda!173778 lambda!173597)))

(declare-fun bs!862669 () Bool)

(assert (= bs!862669 (and d!1396822 d!1396278)))

(assert (=> bs!862669 (= lambda!173778 lambda!173656)))

(declare-fun bs!862670 () Bool)

(assert (= bs!862670 (and d!1396822 d!1396208)))

(assert (=> bs!862670 (= lambda!173778 lambda!173598)))

(declare-fun bs!862672 () Bool)

(assert (= bs!862672 (and d!1396822 d!1396730)))

(assert (=> bs!862672 (= lambda!173778 lambda!173766)))

(declare-fun bs!862673 () Bool)

(assert (= bs!862673 (and d!1396822 d!1396370)))

(assert (=> bs!862673 (not (= lambda!173778 lambda!173706))))

(declare-fun bs!862674 () Bool)

(assert (= bs!862674 (and d!1396822 d!1396380)))

(assert (=> bs!862674 (= lambda!173778 lambda!173710)))

(declare-fun lt!1703581 () ListMap!3613)

(assert (=> d!1396822 (invariantList!1027 (toList!4352 lt!1703581))))

(declare-fun e!2821181 () ListMap!3613)

(assert (=> d!1396822 (= lt!1703581 e!2821181)))

(declare-fun c!773032 () Bool)

(assert (=> d!1396822 (= c!773032 ((_ is Cons!50681) (t!357767 (toList!4351 lt!1702729))))))

(assert (=> d!1396822 (forall!10291 (t!357767 (toList!4351 lt!1702729)) lambda!173778)))

(assert (=> d!1396822 (= (extractMap!1228 (t!357767 (toList!4351 lt!1702729))) lt!1703581)))

(declare-fun b!4527817 () Bool)

(assert (=> b!4527817 (= e!2821181 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 lt!1702729)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lt!1702729))))))))

(declare-fun b!4527818 () Bool)

(assert (=> b!4527818 (= e!2821181 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396822 c!773032) b!4527817))

(assert (= (and d!1396822 (not c!773032)) b!4527818))

(declare-fun m!5282313 () Bool)

(assert (=> d!1396822 m!5282313))

(declare-fun m!5282317 () Bool)

(assert (=> d!1396822 m!5282317))

(declare-fun m!5282319 () Bool)

(assert (=> b!4527817 m!5282319))

(assert (=> b!4527817 m!5282319))

(declare-fun m!5282321 () Bool)

(assert (=> b!4527817 m!5282321))

(assert (=> b!4526837 d!1396822))

(declare-fun d!1396828 () Bool)

(assert (=> d!1396828 (= (isEmpty!28699 lt!1703166) (not ((_ is Some!11138) lt!1703166)))))

(assert (=> d!1396394 d!1396828))

(assert (=> d!1396394 d!1396186))

(declare-fun b!4527829 () Bool)

(declare-fun e!2821188 () Option!11142)

(assert (=> b!4527829 (= e!2821188 None!11141)))

(declare-fun b!4527826 () Bool)

(declare-fun e!2821187 () Option!11142)

(assert (=> b!4527826 (= e!2821187 (Some!11141 (_2!28856 (h!56544 (toList!4351 lt!1702935)))))))

(declare-fun b!4527827 () Bool)

(assert (=> b!4527827 (= e!2821187 e!2821188)))

(declare-fun c!773034 () Bool)

(assert (=> b!4527827 (= c!773034 (and ((_ is Cons!50681) (toList!4351 lt!1702935)) (not (= (_1!28856 (h!56544 (toList!4351 lt!1702935))) (_1!28856 lt!1702726)))))))

(declare-fun b!4527828 () Bool)

(assert (=> b!4527828 (= e!2821188 (getValueByKey!1112 (t!357767 (toList!4351 lt!1702935)) (_1!28856 lt!1702726)))))

(declare-fun d!1396832 () Bool)

(declare-fun c!773033 () Bool)

(assert (=> d!1396832 (= c!773033 (and ((_ is Cons!50681) (toList!4351 lt!1702935)) (= (_1!28856 (h!56544 (toList!4351 lt!1702935))) (_1!28856 lt!1702726))))))

(assert (=> d!1396832 (= (getValueByKey!1112 (toList!4351 lt!1702935) (_1!28856 lt!1702726)) e!2821187)))

(assert (= (and d!1396832 c!773033) b!4527826))

(assert (= (and d!1396832 (not c!773033)) b!4527827))

(assert (= (and b!4527827 c!773034) b!4527828))

(assert (= (and b!4527827 (not c!773034)) b!4527829))

(declare-fun m!5282329 () Bool)

(assert (=> b!4527828 m!5282329))

(assert (=> b!4526806 d!1396832))

(assert (=> b!4526850 d!1396492))

(declare-fun b!4527830 () Bool)

(declare-fun e!2821189 () List!50807)

(assert (=> b!4527830 (= e!2821189 (keys!17616 (extractMap!1228 (toList!4351 lm!1477))))))

(declare-fun d!1396834 () Bool)

(declare-fun e!2821194 () Bool)

(assert (=> d!1396834 e!2821194))

(declare-fun res!1885294 () Bool)

(assert (=> d!1396834 (=> res!1885294 e!2821194)))

(declare-fun e!2821193 () Bool)

(assert (=> d!1396834 (= res!1885294 e!2821193)))

(declare-fun res!1885296 () Bool)

(assert (=> d!1396834 (=> (not res!1885296) (not e!2821193))))

(declare-fun lt!1703587 () Bool)

(assert (=> d!1396834 (= res!1885296 (not lt!1703587))))

(declare-fun lt!1703589 () Bool)

(assert (=> d!1396834 (= lt!1703587 lt!1703589)))

(declare-fun lt!1703590 () Unit!96156)

(declare-fun e!2821192 () Unit!96156)

(assert (=> d!1396834 (= lt!1703590 e!2821192)))

(declare-fun c!773036 () Bool)

(assert (=> d!1396834 (= c!773036 lt!1703589)))

(assert (=> d!1396834 (= lt!1703589 (containsKey!1814 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(assert (=> d!1396834 (= (contains!13427 (extractMap!1228 (toList!4351 lm!1477)) key!3287) lt!1703587)))

(declare-fun b!4527831 () Bool)

(declare-fun e!2821191 () Unit!96156)

(declare-fun Unit!96309 () Unit!96156)

(assert (=> b!4527831 (= e!2821191 Unit!96309)))

(declare-fun bm!315575 () Bool)

(declare-fun call!315580 () Bool)

(assert (=> bm!315575 (= call!315580 (contains!13431 e!2821189 key!3287))))

(declare-fun c!773037 () Bool)

(assert (=> bm!315575 (= c!773037 c!773036)))

(declare-fun b!4527832 () Bool)

(assert (=> b!4527832 (= e!2821189 (getKeysList!475 (toList!4352 (extractMap!1228 (toList!4351 lm!1477)))))))

(declare-fun b!4527833 () Bool)

(declare-fun e!2821190 () Bool)

(assert (=> b!4527833 (= e!2821194 e!2821190)))

(declare-fun res!1885295 () Bool)

(assert (=> b!4527833 (=> (not res!1885295) (not e!2821190))))

(assert (=> b!4527833 (= res!1885295 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287)))))

(declare-fun b!4527834 () Bool)

(assert (=> b!4527834 (= e!2821190 (contains!13431 (keys!17616 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(declare-fun b!4527835 () Bool)

(assert (=> b!4527835 (= e!2821193 (not (contains!13431 (keys!17616 (extractMap!1228 (toList!4351 lm!1477))) key!3287)))))

(declare-fun b!4527836 () Bool)

(assert (=> b!4527836 false))

(declare-fun lt!1703588 () Unit!96156)

(declare-fun lt!1703586 () Unit!96156)

(assert (=> b!4527836 (= lt!1703588 lt!1703586)))

(assert (=> b!4527836 (containsKey!1814 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287)))

(assert (=> b!4527836 (= lt!1703586 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(declare-fun Unit!96310 () Unit!96156)

(assert (=> b!4527836 (= e!2821191 Unit!96310)))

(declare-fun b!4527837 () Bool)

(assert (=> b!4527837 (= e!2821192 e!2821191)))

(declare-fun c!773035 () Bool)

(assert (=> b!4527837 (= c!773035 call!315580)))

(declare-fun b!4527838 () Bool)

(declare-fun lt!1703584 () Unit!96156)

(assert (=> b!4527838 (= e!2821192 lt!1703584)))

(declare-fun lt!1703585 () Unit!96156)

(assert (=> b!4527838 (= lt!1703585 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(assert (=> b!4527838 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(declare-fun lt!1703591 () Unit!96156)

(assert (=> b!4527838 (= lt!1703591 lt!1703585)))

(assert (=> b!4527838 (= lt!1703584 (lemmaInListThenGetKeysListContains!471 (toList!4352 (extractMap!1228 (toList!4351 lm!1477))) key!3287))))

(assert (=> b!4527838 call!315580))

(assert (= (and d!1396834 c!773036) b!4527838))

(assert (= (and d!1396834 (not c!773036)) b!4527837))

(assert (= (and b!4527837 c!773035) b!4527836))

(assert (= (and b!4527837 (not c!773035)) b!4527831))

(assert (= (or b!4527838 b!4527837) bm!315575))

(assert (= (and bm!315575 c!773037) b!4527832))

(assert (= (and bm!315575 (not c!773037)) b!4527830))

(assert (= (and d!1396834 res!1885296) b!4527835))

(assert (= (and d!1396834 (not res!1885294)) b!4527833))

(assert (= (and b!4527833 res!1885295) b!4527834))

(declare-fun m!5282351 () Bool)

(assert (=> b!4527836 m!5282351))

(declare-fun m!5282353 () Bool)

(assert (=> b!4527836 m!5282353))

(assert (=> d!1396834 m!5282351))

(assert (=> b!4527835 m!5280297))

(declare-fun m!5282355 () Bool)

(assert (=> b!4527835 m!5282355))

(assert (=> b!4527835 m!5282355))

(declare-fun m!5282357 () Bool)

(assert (=> b!4527835 m!5282357))

(declare-fun m!5282359 () Bool)

(assert (=> b!4527832 m!5282359))

(declare-fun m!5282361 () Bool)

(assert (=> b!4527833 m!5282361))

(assert (=> b!4527833 m!5282361))

(declare-fun m!5282363 () Bool)

(assert (=> b!4527833 m!5282363))

(declare-fun m!5282365 () Bool)

(assert (=> b!4527838 m!5282365))

(assert (=> b!4527838 m!5282361))

(assert (=> b!4527838 m!5282361))

(assert (=> b!4527838 m!5282363))

(declare-fun m!5282367 () Bool)

(assert (=> b!4527838 m!5282367))

(assert (=> b!4527834 m!5280297))

(assert (=> b!4527834 m!5282355))

(assert (=> b!4527834 m!5282355))

(assert (=> b!4527834 m!5282357))

(assert (=> b!4527830 m!5280297))

(assert (=> b!4527830 m!5282355))

(declare-fun m!5282369 () Bool)

(assert (=> bm!315575 m!5282369))

(assert (=> d!1396372 d!1396834))

(assert (=> d!1396372 d!1396380))

(declare-fun d!1396840 () Bool)

(assert (=> d!1396840 (not (contains!13427 (extractMap!1228 (toList!4351 lm!1477)) key!3287))))

(assert (=> d!1396840 true))

(declare-fun _$26!395 () Unit!96156)

(assert (=> d!1396840 (= (choose!29658 lm!1477 key!3287 hashF!1107) _$26!395)))

(declare-fun bs!862680 () Bool)

(assert (= bs!862680 d!1396840))

(assert (=> bs!862680 m!5280297))

(assert (=> bs!862680 m!5280297))

(assert (=> bs!862680 m!5281043))

(assert (=> d!1396372 d!1396840))

(declare-fun d!1396864 () Bool)

(declare-fun res!1885312 () Bool)

(declare-fun e!2821215 () Bool)

(assert (=> d!1396864 (=> res!1885312 e!2821215)))

(assert (=> d!1396864 (= res!1885312 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396864 (= (forall!10291 (toList!4351 lm!1477) lambda!173709) e!2821215)))

(declare-fun b!4527868 () Bool)

(declare-fun e!2821216 () Bool)

(assert (=> b!4527868 (= e!2821215 e!2821216)))

(declare-fun res!1885313 () Bool)

(assert (=> b!4527868 (=> (not res!1885313) (not e!2821216))))

(assert (=> b!4527868 (= res!1885313 (dynLambda!21178 lambda!173709 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4527869 () Bool)

(assert (=> b!4527869 (= e!2821216 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173709))))

(assert (= (and d!1396864 (not res!1885312)) b!4527868))

(assert (= (and b!4527868 res!1885313) b!4527869))

(declare-fun b_lambda!156055 () Bool)

(assert (=> (not b_lambda!156055) (not b!4527868)))

(declare-fun m!5282411 () Bool)

(assert (=> b!4527868 m!5282411))

(declare-fun m!5282413 () Bool)

(assert (=> b!4527869 m!5282413))

(assert (=> d!1396372 d!1396864))

(declare-fun d!1396866 () Bool)

(declare-fun c!773045 () Bool)

(assert (=> d!1396866 (= c!773045 ((_ is Nil!50680) (toList!4352 lt!1702715)))))

(declare-fun e!2821217 () (InoxSet tuple2!51122))

(assert (=> d!1396866 (= (content!8387 (toList!4352 lt!1702715)) e!2821217)))

(declare-fun b!4527870 () Bool)

(assert (=> b!4527870 (= e!2821217 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527871 () Bool)

(assert (=> b!4527871 (= e!2821217 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702715)) true) (content!8387 (t!357766 (toList!4352 lt!1702715)))))))

(assert (= (and d!1396866 c!773045) b!4527870))

(assert (= (and d!1396866 (not c!773045)) b!4527871))

(declare-fun m!5282415 () Bool)

(assert (=> b!4527871 m!5282415))

(declare-fun m!5282417 () Bool)

(assert (=> b!4527871 m!5282417))

(assert (=> d!1396252 d!1396866))

(declare-fun d!1396868 () Bool)

(declare-fun c!773046 () Bool)

(assert (=> d!1396868 (= c!773046 ((_ is Nil!50680) (toList!4352 lt!1702718)))))

(declare-fun e!2821218 () (InoxSet tuple2!51122))

(assert (=> d!1396868 (= (content!8387 (toList!4352 lt!1702718)) e!2821218)))

(declare-fun b!4527872 () Bool)

(assert (=> b!4527872 (= e!2821218 ((as const (Array tuple2!51122 Bool)) false))))

(declare-fun b!4527873 () Bool)

(assert (=> b!4527873 (= e!2821218 ((_ map or) (store ((as const (Array tuple2!51122 Bool)) false) (h!56543 (toList!4352 lt!1702718)) true) (content!8387 (t!357766 (toList!4352 lt!1702718)))))))

(assert (= (and d!1396868 c!773046) b!4527872))

(assert (= (and d!1396868 (not c!773046)) b!4527873))

(declare-fun m!5282419 () Bool)

(assert (=> b!4527873 m!5282419))

(declare-fun m!5282421 () Bool)

(assert (=> b!4527873 m!5282421))

(assert (=> d!1396252 d!1396868))

(declare-fun d!1396870 () Bool)

(declare-fun res!1885316 () Bool)

(declare-fun e!2821220 () Bool)

(assert (=> d!1396870 (=> res!1885316 e!2821220)))

(declare-fun e!2821221 () Bool)

(assert (=> d!1396870 (= res!1885316 e!2821221)))

(declare-fun res!1885315 () Bool)

(assert (=> d!1396870 (=> (not res!1885315) (not e!2821221))))

(assert (=> d!1396870 (= res!1885315 ((_ is Cons!50681) (t!357767 (toList!4351 lt!1702722))))))

(assert (=> d!1396870 (= (containsKeyBiggerList!152 (t!357767 (toList!4351 lt!1702722)) key!3287) e!2821220)))

(declare-fun b!4527874 () Bool)

(assert (=> b!4527874 (= e!2821221 (containsKey!1812 (_2!28856 (h!56544 (t!357767 (toList!4351 lt!1702722)))) key!3287))))

(declare-fun b!4527875 () Bool)

(declare-fun e!2821219 () Bool)

(assert (=> b!4527875 (= e!2821220 e!2821219)))

(declare-fun res!1885314 () Bool)

(assert (=> b!4527875 (=> (not res!1885314) (not e!2821219))))

(assert (=> b!4527875 (= res!1885314 ((_ is Cons!50681) (t!357767 (toList!4351 lt!1702722))))))

(declare-fun b!4527876 () Bool)

(assert (=> b!4527876 (= e!2821219 (containsKeyBiggerList!152 (t!357767 (t!357767 (toList!4351 lt!1702722))) key!3287))))

(assert (= (and d!1396870 res!1885315) b!4527874))

(assert (= (and d!1396870 (not res!1885316)) b!4527875))

(assert (= (and b!4527875 res!1885314) b!4527876))

(declare-fun m!5282423 () Bool)

(assert (=> b!4527874 m!5282423))

(declare-fun m!5282425 () Bool)

(assert (=> b!4527876 m!5282425))

(assert (=> b!4526776 d!1396870))

(declare-fun bs!862681 () Bool)

(declare-fun b!4527879 () Bool)

(assert (= bs!862681 (and b!4527879 b!4527135)))

(declare-fun lambda!173781 () Int)

(assert (=> bs!862681 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (toList!4352 lt!1702718)) (= lambda!173781 lambda!173732))))

(declare-fun bs!862682 () Bool)

(assert (= bs!862682 (and b!4527879 b!4527777)))

(assert (=> bs!862682 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (toList!4352 lt!1702732)) (= lambda!173781 lambda!173772))))

(declare-fun bs!862683 () Bool)

(assert (= bs!862683 (and b!4527879 b!4527776)))

(assert (=> bs!862683 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 lt!1702732))) (= lambda!173781 lambda!173770))))

(declare-fun bs!862684 () Bool)

(assert (= bs!862684 (and b!4527879 b!4527086)))

(assert (=> bs!862684 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173781 lambda!173720))))

(declare-fun bs!862685 () Bool)

(assert (= bs!862685 (and b!4527879 b!4527667)))

(assert (=> bs!862685 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (toList!4352 lt!1702718)) (= lambda!173781 lambda!173764))))

(declare-fun bs!862686 () Bool)

(assert (= bs!862686 (and b!4527879 b!4527270)))

(assert (=> bs!862686 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (toList!4352 lt!1702732)) (= lambda!173781 lambda!173737))))

(declare-fun bs!862687 () Bool)

(assert (= bs!862687 (and b!4527879 b!4527782)))

(assert (=> bs!862687 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732)))) (= lambda!173781 lambda!173771))))

(declare-fun bs!862688 () Bool)

(assert (= bs!862688 (and b!4527879 b!4527140)))

(assert (=> bs!862688 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173781 lambda!173731))))

(declare-fun bs!862689 () Bool)

(assert (= bs!862689 (and b!4527879 b!4527134)))

(assert (=> bs!862689 (= (= (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 lt!1702718))) (= lambda!173781 lambda!173730))))

(assert (=> b!4527879 true))

(declare-fun bs!862690 () Bool)

(declare-fun b!4527885 () Bool)

(assert (= bs!862690 (and b!4527885 b!4527135)))

(declare-fun lambda!173782 () Int)

(assert (=> bs!862690 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (toList!4352 lt!1702718)) (= lambda!173782 lambda!173732))))

(declare-fun bs!862691 () Bool)

(assert (= bs!862691 (and b!4527885 b!4527777)))

(assert (=> bs!862691 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (toList!4352 lt!1702732)) (= lambda!173782 lambda!173772))))

(declare-fun bs!862692 () Bool)

(assert (= bs!862692 (and b!4527885 b!4527776)))

(assert (=> bs!862692 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (t!357766 (toList!4352 lt!1702732))) (= lambda!173782 lambda!173770))))

(declare-fun bs!862693 () Bool)

(assert (= bs!862693 (and b!4527885 b!4527086)))

(assert (=> bs!862693 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173782 lambda!173720))))

(declare-fun bs!862694 () Bool)

(assert (= bs!862694 (and b!4527885 b!4527667)))

(assert (=> bs!862694 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (toList!4352 lt!1702718)) (= lambda!173782 lambda!173764))))

(declare-fun bs!862695 () Bool)

(assert (= bs!862695 (and b!4527885 b!4527270)))

(assert (=> bs!862695 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (toList!4352 lt!1702732)) (= lambda!173782 lambda!173737))))

(declare-fun bs!862696 () Bool)

(assert (= bs!862696 (and b!4527885 b!4527782)))

(assert (=> bs!862696 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732)))) (= lambda!173782 lambda!173771))))

(declare-fun bs!862697 () Bool)

(assert (= bs!862697 (and b!4527885 b!4527140)))

(assert (=> bs!862697 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173782 lambda!173731))))

(declare-fun bs!862698 () Bool)

(assert (= bs!862698 (and b!4527885 b!4527879)))

(assert (=> bs!862698 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (= lambda!173782 lambda!173781))))

(declare-fun bs!862699 () Bool)

(assert (= bs!862699 (and b!4527885 b!4527134)))

(assert (=> bs!862699 (= (= (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (t!357766 (toList!4352 lt!1702718))) (= lambda!173782 lambda!173730))))

(assert (=> b!4527885 true))

(declare-fun bs!862700 () Bool)

(declare-fun b!4527880 () Bool)

(assert (= bs!862700 (and b!4527880 b!4527135)))

(declare-fun lambda!173783 () Int)

(assert (=> bs!862700 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (toList!4352 lt!1702718)) (= lambda!173783 lambda!173732))))

(declare-fun bs!862701 () Bool)

(assert (= bs!862701 (and b!4527880 b!4527777)))

(assert (=> bs!862701 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (toList!4352 lt!1702732)) (= lambda!173783 lambda!173772))))

(declare-fun bs!862702 () Bool)

(assert (= bs!862702 (and b!4527880 b!4527776)))

(assert (=> bs!862702 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (t!357766 (toList!4352 lt!1702732))) (= lambda!173783 lambda!173770))))

(declare-fun bs!862703 () Bool)

(assert (= bs!862703 (and b!4527880 b!4527086)))

(assert (=> bs!862703 (= lambda!173783 lambda!173720)))

(declare-fun bs!862704 () Bool)

(assert (= bs!862704 (and b!4527880 b!4527667)))

(assert (=> bs!862704 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (toList!4352 lt!1702718)) (= lambda!173783 lambda!173764))))

(declare-fun bs!862705 () Bool)

(assert (= bs!862705 (and b!4527880 b!4527270)))

(assert (=> bs!862705 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (toList!4352 lt!1702732)) (= lambda!173783 lambda!173737))))

(declare-fun bs!862706 () Bool)

(assert (= bs!862706 (and b!4527880 b!4527885)))

(assert (=> bs!862706 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))) (= lambda!173783 lambda!173782))))

(declare-fun bs!862707 () Bool)

(assert (= bs!862707 (and b!4527880 b!4527782)))

(assert (=> bs!862707 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732)))) (= lambda!173783 lambda!173771))))

(declare-fun bs!862708 () Bool)

(assert (= bs!862708 (and b!4527880 b!4527140)))

(assert (=> bs!862708 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173783 lambda!173731))))

(declare-fun bs!862709 () Bool)

(assert (= bs!862709 (and b!4527880 b!4527879)))

(assert (=> bs!862709 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (= lambda!173783 lambda!173781))))

(declare-fun bs!862710 () Bool)

(assert (= bs!862710 (and b!4527880 b!4527134)))

(assert (=> bs!862710 (= (= (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (t!357766 (toList!4352 lt!1702718))) (= lambda!173783 lambda!173730))))

(assert (=> b!4527880 true))

(declare-fun bs!862711 () Bool)

(declare-fun b!4527881 () Bool)

(assert (= bs!862711 (and b!4527881 b!4527668)))

(declare-fun lambda!173784 () Int)

(assert (=> bs!862711 (= lambda!173784 lambda!173765)))

(declare-fun bs!862712 () Bool)

(assert (= bs!862712 (and b!4527881 b!4527271)))

(assert (=> bs!862712 (= lambda!173784 lambda!173738)))

(declare-fun bs!862713 () Bool)

(assert (= bs!862713 (and b!4527881 b!4527778)))

(assert (=> bs!862713 (= lambda!173784 lambda!173773)))

(declare-fun bs!862714 () Bool)

(assert (= bs!862714 (and b!4527881 b!4527136)))

(assert (=> bs!862714 (= lambda!173784 lambda!173733)))

(declare-fun bs!862715 () Bool)

(assert (= bs!862715 (and b!4527881 b!4527087)))

(assert (=> bs!862715 (= lambda!173784 lambda!173721)))

(declare-fun b!4527877 () Bool)

(assert (=> b!4527877 false))

(declare-fun e!2821223 () Unit!96156)

(declare-fun Unit!96322 () Unit!96156)

(assert (=> b!4527877 (= e!2821223 Unit!96322)))

(declare-fun b!4527878 () Bool)

(declare-fun e!2821225 () List!50807)

(assert (=> b!4527878 (= e!2821225 Nil!50683)))

(assert (=> b!4527879 false))

(declare-fun lt!1703605 () Unit!96156)

(assert (=> b!4527879 (= lt!1703605 (forallContained!2546 (getKeysList!475 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) lambda!173781 (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun e!2821222 () Unit!96156)

(declare-fun Unit!96323 () Unit!96156)

(assert (=> b!4527879 (= e!2821222 Unit!96323)))

(declare-fun res!1885317 () Bool)

(declare-fun e!2821224 () Bool)

(assert (=> b!4527880 (=> (not res!1885317) (not e!2821224))))

(declare-fun lt!1703604 () List!50807)

(assert (=> b!4527880 (= res!1885317 (forall!10294 lt!1703604 lambda!173783))))

(assert (=> b!4527881 (= e!2821224 (= (content!8386 lt!1703604) (content!8386 (map!11150 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173784))))))

(declare-fun b!4527882 () Bool)

(declare-fun res!1885318 () Bool)

(assert (=> b!4527882 (=> (not res!1885318) (not e!2821224))))

(assert (=> b!4527882 (= res!1885318 (= (length!362 lt!1703604) (length!363 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun b!4527884 () Bool)

(declare-fun Unit!96324 () Unit!96156)

(assert (=> b!4527884 (= e!2821223 Unit!96324)))

(assert (=> b!4527885 (= e!2821225 (Cons!50683 (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (getKeysList!475 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun c!773049 () Bool)

(assert (=> b!4527885 (= c!773049 (containsKey!1814 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun lt!1703601 () Unit!96156)

(assert (=> b!4527885 (= lt!1703601 e!2821223)))

(declare-fun c!773047 () Bool)

(assert (=> b!4527885 (= c!773047 (contains!13431 (getKeysList!475 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (_1!28855 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun lt!1703603 () Unit!96156)

(assert (=> b!4527885 (= lt!1703603 e!2821222)))

(declare-fun lt!1703599 () List!50807)

(assert (=> b!4527885 (= lt!1703599 (getKeysList!475 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun lt!1703600 () Unit!96156)

(assert (=> b!4527885 (= lt!1703600 (lemmaForallContainsAddHeadPreserves!174 (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) lt!1703599 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))))

(assert (=> b!4527885 (forall!10294 lt!1703599 lambda!173782)))

(declare-fun lt!1703602 () Unit!96156)

(assert (=> b!4527885 (= lt!1703602 lt!1703600)))

(declare-fun b!4527883 () Bool)

(declare-fun Unit!96325 () Unit!96156)

(assert (=> b!4527883 (= e!2821222 Unit!96325)))

(declare-fun d!1396872 () Bool)

(assert (=> d!1396872 e!2821224))

(declare-fun res!1885319 () Bool)

(assert (=> d!1396872 (=> (not res!1885319) (not e!2821224))))

(assert (=> d!1396872 (= res!1885319 (noDuplicate!753 lt!1703604))))

(assert (=> d!1396872 (= lt!1703604 e!2821225)))

(declare-fun c!773048 () Bool)

(assert (=> d!1396872 (= c!773048 ((_ is Cons!50680) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> d!1396872 (invariantList!1027 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396872 (= (getKeysList!475 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) lt!1703604)))

(assert (= (and d!1396872 c!773048) b!4527885))

(assert (= (and d!1396872 (not c!773048)) b!4527878))

(assert (= (and b!4527885 c!773049) b!4527877))

(assert (= (and b!4527885 (not c!773049)) b!4527884))

(assert (= (and b!4527885 c!773047) b!4527879))

(assert (= (and b!4527885 (not c!773047)) b!4527883))

(assert (= (and d!1396872 res!1885319) b!4527882))

(assert (= (and b!4527882 res!1885318) b!4527880))

(assert (= (and b!4527880 res!1885317) b!4527881))

(declare-fun m!5282427 () Bool)

(assert (=> b!4527880 m!5282427))

(declare-fun m!5282429 () Bool)

(assert (=> d!1396872 m!5282429))

(assert (=> d!1396872 m!5281273))

(declare-fun m!5282431 () Bool)

(assert (=> b!4527881 m!5282431))

(declare-fun m!5282433 () Bool)

(assert (=> b!4527881 m!5282433))

(assert (=> b!4527881 m!5282433))

(declare-fun m!5282435 () Bool)

(assert (=> b!4527881 m!5282435))

(declare-fun m!5282437 () Bool)

(assert (=> b!4527882 m!5282437))

(assert (=> b!4527882 m!5281177))

(declare-fun m!5282439 () Bool)

(assert (=> b!4527885 m!5282439))

(declare-fun m!5282441 () Bool)

(assert (=> b!4527885 m!5282441))

(assert (=> b!4527885 m!5282439))

(declare-fun m!5282443 () Bool)

(assert (=> b!4527885 m!5282443))

(declare-fun m!5282445 () Bool)

(assert (=> b!4527885 m!5282445))

(declare-fun m!5282447 () Bool)

(assert (=> b!4527885 m!5282447))

(assert (=> b!4527879 m!5282439))

(assert (=> b!4527879 m!5282439))

(declare-fun m!5282449 () Bool)

(assert (=> b!4527879 m!5282449))

(assert (=> b!4526737 d!1396872))

(declare-fun d!1396874 () Bool)

(assert (=> d!1396874 (= (invariantList!1027 (toList!4352 lt!1703123)) (noDuplicatedKeys!269 (toList!4352 lt!1703123)))))

(declare-fun bs!862716 () Bool)

(assert (= bs!862716 d!1396874))

(declare-fun m!5282451 () Bool)

(assert (=> bs!862716 m!5282451))

(assert (=> b!4526996 d!1396874))

(assert (=> b!4526791 d!1396482))

(assert (=> b!4526791 d!1396484))

(declare-fun d!1396876 () Bool)

(assert (=> d!1396876 (= (isDefined!8430 lt!1703166) (not (isEmpty!28699 lt!1703166)))))

(declare-fun bs!862717 () Bool)

(assert (= bs!862717 d!1396876))

(assert (=> bs!862717 m!5281133))

(assert (=> b!4527039 d!1396876))

(declare-fun bs!862718 () Bool)

(declare-fun b!4527887 () Bool)

(assert (= bs!862718 (and b!4527887 d!1396296)))

(declare-fun lambda!173785 () Int)

(assert (=> bs!862718 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703123) (= lambda!173785 lambda!173703))))

(declare-fun bs!862719 () Bool)

(assert (= bs!862719 (and b!4527887 b!4527305)))

(assert (=> bs!862719 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173785 lambda!173739))))

(declare-fun bs!862720 () Bool)

(assert (= bs!862720 (and b!4527887 b!4526999)))

(assert (=> bs!862720 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702724) (= lambda!173785 lambda!173701))))

(declare-fun bs!862721 () Bool)

(assert (= bs!862721 (and b!4527887 b!4527019)))

(assert (=> bs!862721 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703158) (= lambda!173785 lambda!173713))))

(assert (=> bs!862720 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703122) (= lambda!173785 lambda!173702))))

(declare-fun bs!862722 () Bool)

(assert (= bs!862722 (and b!4527887 b!4527307)))

(assert (=> bs!862722 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703261) (= lambda!173785 lambda!173743))))

(declare-fun bs!862723 () Bool)

(assert (= bs!862723 (and b!4527887 b!4526608)))

(assert (=> bs!862723 (not (= lambda!173785 lambda!173585))))

(declare-fun bs!862724 () Bool)

(assert (= bs!862724 (and b!4527887 b!4527017)))

(assert (=> bs!862724 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173785 lambda!173711))))

(declare-fun bs!862725 () Bool)

(assert (= bs!862725 (and b!4527887 d!1396390)))

(assert (=> bs!862725 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703159) (= lambda!173785 lambda!173714))))

(declare-fun bs!862726 () Bool)

(assert (= bs!862726 (and b!4527887 b!4526997)))

(assert (=> bs!862726 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702724) (= lambda!173785 lambda!173700))))

(assert (=> bs!862721 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173785 lambda!173712))))

(declare-fun bs!862727 () Bool)

(assert (= bs!862727 (and b!4527887 d!1396804)))

(assert (=> bs!862727 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703572) (= lambda!173785 lambda!173777))))

(declare-fun bs!862728 () Bool)

(assert (= bs!862728 (and b!4527887 d!1396634)))

(assert (=> bs!862728 (not (= lambda!173785 lambda!173754))))

(assert (=> bs!862722 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173785 lambda!173740))))

(declare-fun bs!862729 () Bool)

(assert (= bs!862729 (and b!4527887 b!4527806)))

(assert (=> bs!862729 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173785 lambda!173774))))

(declare-fun bs!862730 () Bool)

(assert (= bs!862730 (and b!4527887 b!4527808)))

(assert (=> bs!862730 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173785 lambda!173775))))

(declare-fun bs!862731 () Bool)

(assert (= bs!862731 (and b!4527887 d!1396260)))

(assert (=> bs!862731 (not (= lambda!173785 lambda!173651))))

(declare-fun bs!862732 () Bool)

(assert (= bs!862732 (and b!4527887 d!1396498)))

(assert (=> bs!862732 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173785 lambda!173736))))

(declare-fun bs!862733 () Bool)

(assert (= bs!862733 (and b!4527887 d!1396564)))

(assert (=> bs!862733 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703262) (= lambda!173785 lambda!173746))))

(assert (=> bs!862730 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703571) (= lambda!173785 lambda!173776))))

(declare-fun bs!862734 () Bool)

(assert (= bs!862734 (and b!4527887 d!1396572)))

(assert (=> bs!862734 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703122) (= lambda!173785 lambda!173753))))

(assert (=> b!4527887 true))

(declare-fun bs!862735 () Bool)

(declare-fun b!4527889 () Bool)

(assert (= bs!862735 (and b!4527889 b!4527887)))

(declare-fun lambda!173786 () Int)

(assert (=> bs!862735 (= lambda!173786 lambda!173785)))

(declare-fun bs!862736 () Bool)

(assert (= bs!862736 (and b!4527889 d!1396296)))

(assert (=> bs!862736 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703123) (= lambda!173786 lambda!173703))))

(declare-fun bs!862737 () Bool)

(assert (= bs!862737 (and b!4527889 b!4527305)))

(assert (=> bs!862737 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173786 lambda!173739))))

(declare-fun bs!862738 () Bool)

(assert (= bs!862738 (and b!4527889 b!4526999)))

(assert (=> bs!862738 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702724) (= lambda!173786 lambda!173701))))

(declare-fun bs!862739 () Bool)

(assert (= bs!862739 (and b!4527889 b!4527019)))

(assert (=> bs!862739 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703158) (= lambda!173786 lambda!173713))))

(assert (=> bs!862738 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703122) (= lambda!173786 lambda!173702))))

(declare-fun bs!862740 () Bool)

(assert (= bs!862740 (and b!4527889 b!4527307)))

(assert (=> bs!862740 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703261) (= lambda!173786 lambda!173743))))

(declare-fun bs!862741 () Bool)

(assert (= bs!862741 (and b!4527889 b!4526608)))

(assert (=> bs!862741 (not (= lambda!173786 lambda!173585))))

(declare-fun bs!862742 () Bool)

(assert (= bs!862742 (and b!4527889 b!4527017)))

(assert (=> bs!862742 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173786 lambda!173711))))

(declare-fun bs!862743 () Bool)

(assert (= bs!862743 (and b!4527889 d!1396390)))

(assert (=> bs!862743 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703159) (= lambda!173786 lambda!173714))))

(declare-fun bs!862744 () Bool)

(assert (= bs!862744 (and b!4527889 b!4526997)))

(assert (=> bs!862744 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702724) (= lambda!173786 lambda!173700))))

(assert (=> bs!862739 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173786 lambda!173712))))

(declare-fun bs!862745 () Bool)

(assert (= bs!862745 (and b!4527889 d!1396804)))

(assert (=> bs!862745 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703572) (= lambda!173786 lambda!173777))))

(declare-fun bs!862746 () Bool)

(assert (= bs!862746 (and b!4527889 d!1396634)))

(assert (=> bs!862746 (not (= lambda!173786 lambda!173754))))

(assert (=> bs!862740 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173786 lambda!173740))))

(declare-fun bs!862747 () Bool)

(assert (= bs!862747 (and b!4527889 b!4527806)))

(assert (=> bs!862747 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173786 lambda!173774))))

(declare-fun bs!862748 () Bool)

(assert (= bs!862748 (and b!4527889 b!4527808)))

(assert (=> bs!862748 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173786 lambda!173775))))

(declare-fun bs!862749 () Bool)

(assert (= bs!862749 (and b!4527889 d!1396260)))

(assert (=> bs!862749 (not (= lambda!173786 lambda!173651))))

(declare-fun bs!862750 () Bool)

(assert (= bs!862750 (and b!4527889 d!1396498)))

(assert (=> bs!862750 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1702713) (= lambda!173786 lambda!173736))))

(declare-fun bs!862751 () Bool)

(assert (= bs!862751 (and b!4527889 d!1396564)))

(assert (=> bs!862751 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703262) (= lambda!173786 lambda!173746))))

(assert (=> bs!862748 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703571) (= lambda!173786 lambda!173776))))

(declare-fun bs!862752 () Bool)

(assert (= bs!862752 (and b!4527889 d!1396572)))

(assert (=> bs!862752 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703122) (= lambda!173786 lambda!173753))))

(assert (=> b!4527889 true))

(declare-fun lambda!173789 () Int)

(declare-fun lt!1703622 () ListMap!3613)

(assert (=> bs!862735 (= (= lt!1703622 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173789 lambda!173785))))

(assert (=> bs!862736 (= (= lt!1703622 lt!1703123) (= lambda!173789 lambda!173703))))

(assert (=> bs!862737 (= (= lt!1703622 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173789 lambda!173739))))

(assert (=> bs!862738 (= (= lt!1703622 lt!1702724) (= lambda!173789 lambda!173701))))

(assert (=> b!4527889 (= (= lt!1703622 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173789 lambda!173786))))

(assert (=> bs!862739 (= (= lt!1703622 lt!1703158) (= lambda!173789 lambda!173713))))

(assert (=> bs!862738 (= (= lt!1703622 lt!1703122) (= lambda!173789 lambda!173702))))

(assert (=> bs!862740 (= (= lt!1703622 lt!1703261) (= lambda!173789 lambda!173743))))

(assert (=> bs!862741 (not (= lambda!173789 lambda!173585))))

(assert (=> bs!862742 (= (= lt!1703622 lt!1702713) (= lambda!173789 lambda!173711))))

(assert (=> bs!862743 (= (= lt!1703622 lt!1703159) (= lambda!173789 lambda!173714))))

(assert (=> bs!862744 (= (= lt!1703622 lt!1702724) (= lambda!173789 lambda!173700))))

(assert (=> bs!862739 (= (= lt!1703622 lt!1702713) (= lambda!173789 lambda!173712))))

(assert (=> bs!862745 (= (= lt!1703622 lt!1703572) (= lambda!173789 lambda!173777))))

(assert (=> bs!862746 (not (= lambda!173789 lambda!173754))))

(assert (=> bs!862740 (= (= lt!1703622 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173789 lambda!173740))))

(assert (=> bs!862747 (= (= lt!1703622 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173789 lambda!173774))))

(assert (=> bs!862748 (= (= lt!1703622 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173789 lambda!173775))))

(assert (=> bs!862749 (not (= lambda!173789 lambda!173651))))

(assert (=> bs!862750 (= (= lt!1703622 lt!1702713) (= lambda!173789 lambda!173736))))

(assert (=> bs!862751 (= (= lt!1703622 lt!1703262) (= lambda!173789 lambda!173746))))

(assert (=> bs!862748 (= (= lt!1703622 lt!1703571) (= lambda!173789 lambda!173776))))

(assert (=> bs!862752 (= (= lt!1703622 lt!1703122) (= lambda!173789 lambda!173753))))

(assert (=> b!4527889 true))

(declare-fun bs!862753 () Bool)

(declare-fun d!1396878 () Bool)

(assert (= bs!862753 (and d!1396878 b!4527887)))

(declare-fun lt!1703623 () ListMap!3613)

(declare-fun lambda!173796 () Int)

(assert (=> bs!862753 (= (= lt!1703623 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173796 lambda!173785))))

(declare-fun bs!862754 () Bool)

(assert (= bs!862754 (and d!1396878 d!1396296)))

(assert (=> bs!862754 (= (= lt!1703623 lt!1703123) (= lambda!173796 lambda!173703))))

(declare-fun bs!862755 () Bool)

(assert (= bs!862755 (and d!1396878 b!4527305)))

(assert (=> bs!862755 (= (= lt!1703623 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173796 lambda!173739))))

(declare-fun bs!862756 () Bool)

(assert (= bs!862756 (and d!1396878 b!4526999)))

(assert (=> bs!862756 (= (= lt!1703623 lt!1702724) (= lambda!173796 lambda!173701))))

(declare-fun bs!862757 () Bool)

(assert (= bs!862757 (and d!1396878 b!4527889)))

(assert (=> bs!862757 (= (= lt!1703623 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173796 lambda!173786))))

(declare-fun bs!862758 () Bool)

(assert (= bs!862758 (and d!1396878 b!4527019)))

(assert (=> bs!862758 (= (= lt!1703623 lt!1703158) (= lambda!173796 lambda!173713))))

(declare-fun bs!862759 () Bool)

(assert (= bs!862759 (and d!1396878 b!4527307)))

(assert (=> bs!862759 (= (= lt!1703623 lt!1703261) (= lambda!173796 lambda!173743))))

(declare-fun bs!862760 () Bool)

(assert (= bs!862760 (and d!1396878 b!4526608)))

(assert (=> bs!862760 (not (= lambda!173796 lambda!173585))))

(declare-fun bs!862761 () Bool)

(assert (= bs!862761 (and d!1396878 b!4527017)))

(assert (=> bs!862761 (= (= lt!1703623 lt!1702713) (= lambda!173796 lambda!173711))))

(declare-fun bs!862762 () Bool)

(assert (= bs!862762 (and d!1396878 d!1396390)))

(assert (=> bs!862762 (= (= lt!1703623 lt!1703159) (= lambda!173796 lambda!173714))))

(declare-fun bs!862763 () Bool)

(assert (= bs!862763 (and d!1396878 b!4526997)))

(assert (=> bs!862763 (= (= lt!1703623 lt!1702724) (= lambda!173796 lambda!173700))))

(assert (=> bs!862758 (= (= lt!1703623 lt!1702713) (= lambda!173796 lambda!173712))))

(declare-fun bs!862764 () Bool)

(assert (= bs!862764 (and d!1396878 d!1396804)))

(assert (=> bs!862764 (= (= lt!1703623 lt!1703572) (= lambda!173796 lambda!173777))))

(declare-fun bs!862765 () Bool)

(assert (= bs!862765 (and d!1396878 d!1396634)))

(assert (=> bs!862765 (not (= lambda!173796 lambda!173754))))

(assert (=> bs!862759 (= (= lt!1703623 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173796 lambda!173740))))

(declare-fun bs!862766 () Bool)

(assert (= bs!862766 (and d!1396878 b!4527806)))

(assert (=> bs!862766 (= (= lt!1703623 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173796 lambda!173774))))

(assert (=> bs!862757 (= (= lt!1703623 lt!1703622) (= lambda!173796 lambda!173789))))

(assert (=> bs!862756 (= (= lt!1703623 lt!1703122) (= lambda!173796 lambda!173702))))

(declare-fun bs!862767 () Bool)

(assert (= bs!862767 (and d!1396878 b!4527808)))

(assert (=> bs!862767 (= (= lt!1703623 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173796 lambda!173775))))

(declare-fun bs!862768 () Bool)

(assert (= bs!862768 (and d!1396878 d!1396260)))

(assert (=> bs!862768 (not (= lambda!173796 lambda!173651))))

(declare-fun bs!862769 () Bool)

(assert (= bs!862769 (and d!1396878 d!1396498)))

(assert (=> bs!862769 (= (= lt!1703623 lt!1702713) (= lambda!173796 lambda!173736))))

(declare-fun bs!862770 () Bool)

(assert (= bs!862770 (and d!1396878 d!1396564)))

(assert (=> bs!862770 (= (= lt!1703623 lt!1703262) (= lambda!173796 lambda!173746))))

(assert (=> bs!862767 (= (= lt!1703623 lt!1703571) (= lambda!173796 lambda!173776))))

(declare-fun bs!862771 () Bool)

(assert (= bs!862771 (and d!1396878 d!1396572)))

(assert (=> bs!862771 (= (= lt!1703623 lt!1703122) (= lambda!173796 lambda!173753))))

(assert (=> d!1396878 true))

(declare-fun b!4527886 () Bool)

(declare-fun e!2821228 () Bool)

(assert (=> b!4527886 (= e!2821228 (invariantList!1027 (toList!4352 lt!1703623)))))

(declare-fun e!2821226 () ListMap!3613)

(assert (=> b!4527887 (= e!2821226 (extractMap!1228 (t!357767 (toList!4351 lt!1702738))))))

(declare-fun lt!1703610 () Unit!96156)

(declare-fun call!315585 () Unit!96156)

(assert (=> b!4527887 (= lt!1703610 call!315585)))

(declare-fun call!315584 () Bool)

(assert (=> b!4527887 call!315584))

(declare-fun lt!1703609 () Unit!96156)

(assert (=> b!4527887 (= lt!1703609 lt!1703610)))

(declare-fun call!315586 () Bool)

(assert (=> b!4527887 call!315586))

(declare-fun lt!1703619 () Unit!96156)

(declare-fun Unit!96330 () Unit!96156)

(assert (=> b!4527887 (= lt!1703619 Unit!96330)))

(declare-fun b!4527888 () Bool)

(declare-fun e!2821227 () Bool)

(assert (=> b!4527888 (= e!2821227 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) lambda!173789))))

(declare-fun b!4527890 () Bool)

(declare-fun res!1885322 () Bool)

(assert (=> b!4527890 (=> (not res!1885322) (not e!2821228))))

(assert (=> b!4527890 (= res!1885322 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) lambda!173796))))

(declare-fun bm!315579 () Bool)

(assert (=> bm!315579 (= call!315585 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))))))

(assert (=> d!1396878 e!2821228))

(declare-fun res!1885321 () Bool)

(assert (=> d!1396878 (=> (not res!1885321) (not e!2821228))))

(assert (=> d!1396878 (= res!1885321 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702738))) lambda!173796))))

(assert (=> d!1396878 (= lt!1703623 e!2821226)))

(declare-fun c!773050 () Bool)

(assert (=> d!1396878 (= c!773050 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 lt!1702738)))))))

(assert (=> d!1396878 (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702738))))))

(assert (=> d!1396878 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702738))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) lt!1703623)))

(assert (=> b!4527889 (= e!2821226 lt!1703622)))

(declare-fun lt!1703625 () ListMap!3613)

(assert (=> b!4527889 (= lt!1703625 (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738))))))))

(assert (=> b!4527889 (= lt!1703622 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702738)))) (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738)))))))))

(declare-fun lt!1703620 () Unit!96156)

(assert (=> b!4527889 (= lt!1703620 call!315585)))

(assert (=> b!4527889 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) lambda!173786)))

(declare-fun lt!1703614 () Unit!96156)

(assert (=> b!4527889 (= lt!1703614 lt!1703620)))

(assert (=> b!4527889 (forall!10293 (toList!4352 lt!1703625) lambda!173789)))

(declare-fun lt!1703612 () Unit!96156)

(declare-fun Unit!96331 () Unit!96156)

(assert (=> b!4527889 (= lt!1703612 Unit!96331)))

(assert (=> b!4527889 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702738)))) lambda!173789)))

(declare-fun lt!1703617 () Unit!96156)

(declare-fun Unit!96332 () Unit!96156)

(assert (=> b!4527889 (= lt!1703617 Unit!96332)))

(declare-fun lt!1703621 () Unit!96156)

(declare-fun Unit!96333 () Unit!96156)

(assert (=> b!4527889 (= lt!1703621 Unit!96333)))

(declare-fun lt!1703616 () Unit!96156)

(assert (=> b!4527889 (= lt!1703616 (forallContained!2545 (toList!4352 lt!1703625) lambda!173789 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738))))))))

(assert (=> b!4527889 (contains!13427 lt!1703625 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738))))))))

(declare-fun lt!1703606 () Unit!96156)

(declare-fun Unit!96334 () Unit!96156)

(assert (=> b!4527889 (= lt!1703606 Unit!96334)))

(assert (=> b!4527889 (contains!13427 lt!1703622 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738))))))))

(declare-fun lt!1703607 () Unit!96156)

(declare-fun Unit!96335 () Unit!96156)

(assert (=> b!4527889 (= lt!1703607 Unit!96335)))

(assert (=> b!4527889 call!315584))

(declare-fun lt!1703611 () Unit!96156)

(declare-fun Unit!96336 () Unit!96156)

(assert (=> b!4527889 (= lt!1703611 Unit!96336)))

(assert (=> b!4527889 (forall!10293 (toList!4352 lt!1703625) lambda!173789)))

(declare-fun lt!1703615 () Unit!96156)

(declare-fun Unit!96337 () Unit!96156)

(assert (=> b!4527889 (= lt!1703615 Unit!96337)))

(declare-fun lt!1703608 () Unit!96156)

(declare-fun Unit!96338 () Unit!96156)

(assert (=> b!4527889 (= lt!1703608 Unit!96338)))

(declare-fun lt!1703624 () Unit!96156)

(assert (=> b!4527889 (= lt!1703624 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703622 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702738)))))))))

(assert (=> b!4527889 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) lambda!173789)))

(declare-fun lt!1703626 () Unit!96156)

(assert (=> b!4527889 (= lt!1703626 lt!1703624)))

(assert (=> b!4527889 call!315586))

(declare-fun lt!1703618 () Unit!96156)

(declare-fun Unit!96339 () Unit!96156)

(assert (=> b!4527889 (= lt!1703618 Unit!96339)))

(declare-fun res!1885320 () Bool)

(assert (=> b!4527889 (= res!1885320 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702738))) lambda!173789))))

(assert (=> b!4527889 (=> (not res!1885320) (not e!2821227))))

(assert (=> b!4527889 e!2821227))

(declare-fun lt!1703613 () Unit!96156)

(declare-fun Unit!96340 () Unit!96156)

(assert (=> b!4527889 (= lt!1703613 Unit!96340)))

(declare-fun bm!315580 () Bool)

(assert (=> bm!315580 (= call!315586 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (ite c!773050 lambda!173785 lambda!173789)))))

(declare-fun bm!315581 () Bool)

(assert (=> bm!315581 (= call!315584 (forall!10293 (ite c!773050 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (_2!28856 (h!56544 (toList!4351 lt!1702738)))) (ite c!773050 lambda!173785 lambda!173789)))))

(assert (= (and d!1396878 c!773050) b!4527887))

(assert (= (and d!1396878 (not c!773050)) b!4527889))

(assert (= (and b!4527889 res!1885320) b!4527888))

(assert (= (or b!4527887 b!4527889) bm!315581))

(assert (= (or b!4527887 b!4527889) bm!315580))

(assert (= (or b!4527887 b!4527889) bm!315579))

(assert (= (and d!1396878 res!1885321) b!4527890))

(assert (= (and b!4527890 res!1885322) b!4527886))

(assert (=> bm!315579 m!5281121))

(declare-fun m!5282453 () Bool)

(assert (=> bm!315579 m!5282453))

(declare-fun m!5282455 () Bool)

(assert (=> b!4527888 m!5282455))

(declare-fun m!5282457 () Bool)

(assert (=> b!4527890 m!5282457))

(declare-fun m!5282459 () Bool)

(assert (=> d!1396878 m!5282459))

(declare-fun m!5282461 () Bool)

(assert (=> d!1396878 m!5282461))

(declare-fun m!5282463 () Bool)

(assert (=> bm!315581 m!5282463))

(declare-fun m!5282465 () Bool)

(assert (=> b!4527889 m!5282465))

(assert (=> b!4527889 m!5281121))

(declare-fun m!5282467 () Bool)

(assert (=> b!4527889 m!5282467))

(declare-fun m!5282469 () Bool)

(assert (=> b!4527889 m!5282469))

(assert (=> b!4527889 m!5282455))

(assert (=> b!4527889 m!5281121))

(declare-fun m!5282471 () Bool)

(assert (=> b!4527889 m!5282471))

(declare-fun m!5282473 () Bool)

(assert (=> b!4527889 m!5282473))

(assert (=> b!4527889 m!5282469))

(declare-fun m!5282475 () Bool)

(assert (=> b!4527889 m!5282475))

(declare-fun m!5282477 () Bool)

(assert (=> b!4527889 m!5282477))

(declare-fun m!5282479 () Bool)

(assert (=> b!4527889 m!5282479))

(assert (=> b!4527889 m!5282471))

(declare-fun m!5282481 () Bool)

(assert (=> b!4527889 m!5282481))

(declare-fun m!5282483 () Bool)

(assert (=> b!4527889 m!5282483))

(declare-fun m!5282485 () Bool)

(assert (=> bm!315580 m!5282485))

(declare-fun m!5282487 () Bool)

(assert (=> b!4527886 m!5282487))

(assert (=> b!4527021 d!1396878))

(declare-fun bs!862776 () Bool)

(declare-fun d!1396880 () Bool)

(assert (= bs!862776 (and d!1396880 d!1396254)))

(declare-fun lambda!173799 () Int)

(assert (=> bs!862776 (= lambda!173799 lambda!173645)))

(declare-fun bs!862778 () Bool)

(assert (= bs!862778 (and d!1396880 d!1396204)))

(assert (=> bs!862778 (= lambda!173799 lambda!173594)))

(declare-fun bs!862780 () Bool)

(assert (= bs!862780 (and d!1396880 d!1396256)))

(assert (=> bs!862780 (= lambda!173799 lambda!173647)))

(declare-fun bs!862782 () Bool)

(assert (= bs!862782 (and d!1396880 start!448604)))

(assert (=> bs!862782 (= lambda!173799 lambda!173583)))

(declare-fun bs!862783 () Bool)

(assert (= bs!862783 (and d!1396880 d!1396216)))

(assert (=> bs!862783 (= lambda!173799 lambda!173619)))

(declare-fun bs!862784 () Bool)

(assert (= bs!862784 (and d!1396880 d!1396822)))

(assert (=> bs!862784 (= lambda!173799 lambda!173778)))

(declare-fun bs!862786 () Bool)

(assert (= bs!862786 (and d!1396880 d!1396372)))

(assert (=> bs!862786 (= lambda!173799 lambda!173709)))

(declare-fun bs!862788 () Bool)

(assert (= bs!862788 (and d!1396880 b!4526608)))

(assert (=> bs!862788 (not (= lambda!173799 lambda!173584))))

(declare-fun bs!862790 () Bool)

(assert (= bs!862790 (and d!1396880 d!1396236)))

(assert (=> bs!862790 (= lambda!173799 lambda!173642)))

(declare-fun bs!862792 () Bool)

(assert (= bs!862792 (and d!1396880 d!1396392)))

(assert (=> bs!862792 (= lambda!173799 lambda!173715)))

(declare-fun bs!862794 () Bool)

(assert (= bs!862794 (and d!1396880 d!1396206)))

(assert (=> bs!862794 (= lambda!173799 lambda!173597)))

(declare-fun bs!862795 () Bool)

(assert (= bs!862795 (and d!1396880 d!1396278)))

(assert (=> bs!862795 (= lambda!173799 lambda!173656)))

(declare-fun bs!862796 () Bool)

(assert (= bs!862796 (and d!1396880 d!1396208)))

(assert (=> bs!862796 (= lambda!173799 lambda!173598)))

(declare-fun bs!862798 () Bool)

(assert (= bs!862798 (and d!1396880 d!1396730)))

(assert (=> bs!862798 (= lambda!173799 lambda!173766)))

(declare-fun bs!862800 () Bool)

(assert (= bs!862800 (and d!1396880 d!1396370)))

(assert (=> bs!862800 (not (= lambda!173799 lambda!173706))))

(declare-fun bs!862802 () Bool)

(assert (= bs!862802 (and d!1396880 d!1396380)))

(assert (=> bs!862802 (= lambda!173799 lambda!173710)))

(declare-fun lt!1703648 () ListMap!3613)

(assert (=> d!1396880 (invariantList!1027 (toList!4352 lt!1703648))))

(declare-fun e!2821241 () ListMap!3613)

(assert (=> d!1396880 (= lt!1703648 e!2821241)))

(declare-fun c!773060 () Bool)

(assert (=> d!1396880 (= c!773060 ((_ is Cons!50681) (t!357767 (toList!4351 lt!1702738))))))

(assert (=> d!1396880 (forall!10291 (t!357767 (toList!4351 lt!1702738)) lambda!173799)))

(assert (=> d!1396880 (= (extractMap!1228 (t!357767 (toList!4351 lt!1702738))) lt!1703648)))

(declare-fun b!4527920 () Bool)

(assert (=> b!4527920 (= e!2821241 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 lt!1702738)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lt!1702738))))))))

(declare-fun b!4527921 () Bool)

(assert (=> b!4527921 (= e!2821241 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396880 c!773060) b!4527920))

(assert (= (and d!1396880 (not c!773060)) b!4527921))

(declare-fun m!5282489 () Bool)

(assert (=> d!1396880 m!5282489))

(declare-fun m!5282491 () Bool)

(assert (=> d!1396880 m!5282491))

(declare-fun m!5282493 () Bool)

(assert (=> b!4527920 m!5282493))

(assert (=> b!4527920 m!5282493))

(declare-fun m!5282495 () Bool)

(assert (=> b!4527920 m!5282495))

(assert (=> b!4527021 d!1396880))

(declare-fun d!1396882 () Bool)

(declare-fun res!1885332 () Bool)

(declare-fun e!2821242 () Bool)

(assert (=> d!1396882 (=> res!1885332 e!2821242)))

(assert (=> d!1396882 (= res!1885332 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1396882 (= (forall!10291 (toList!4351 lm!1477) lambda!173706) e!2821242)))

(declare-fun b!4527922 () Bool)

(declare-fun e!2821243 () Bool)

(assert (=> b!4527922 (= e!2821242 e!2821243)))

(declare-fun res!1885333 () Bool)

(assert (=> b!4527922 (=> (not res!1885333) (not e!2821243))))

(assert (=> b!4527922 (= res!1885333 (dynLambda!21178 lambda!173706 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4527923 () Bool)

(assert (=> b!4527923 (= e!2821243 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173706))))

(assert (= (and d!1396882 (not res!1885332)) b!4527922))

(assert (= (and b!4527922 res!1885333) b!4527923))

(declare-fun b_lambda!156057 () Bool)

(assert (=> (not b_lambda!156057) (not b!4527922)))

(declare-fun m!5282499 () Bool)

(assert (=> b!4527922 m!5282499))

(declare-fun m!5282501 () Bool)

(assert (=> b!4527923 m!5282501))

(assert (=> d!1396370 d!1396882))

(declare-fun d!1396884 () Bool)

(declare-fun res!1885334 () Bool)

(declare-fun e!2821244 () Bool)

(assert (=> d!1396884 (=> res!1885334 e!2821244)))

(assert (=> d!1396884 (= res!1885334 ((_ is Nil!50680) (ite c!772826 (toList!4352 lt!1702713) (_2!28856 lt!1702727))))))

(assert (=> d!1396884 (= (forall!10293 (ite c!772826 (toList!4352 lt!1702713) (_2!28856 lt!1702727)) (ite c!772826 lambda!173711 lambda!173713)) e!2821244)))

(declare-fun b!4527924 () Bool)

(declare-fun e!2821245 () Bool)

(assert (=> b!4527924 (= e!2821244 e!2821245)))

(declare-fun res!1885335 () Bool)

(assert (=> b!4527924 (=> (not res!1885335) (not e!2821245))))

(assert (=> b!4527924 (= res!1885335 (dynLambda!21181 (ite c!772826 lambda!173711 lambda!173713) (h!56543 (ite c!772826 (toList!4352 lt!1702713) (_2!28856 lt!1702727)))))))

(declare-fun b!4527925 () Bool)

(assert (=> b!4527925 (= e!2821245 (forall!10293 (t!357766 (ite c!772826 (toList!4352 lt!1702713) (_2!28856 lt!1702727))) (ite c!772826 lambda!173711 lambda!173713)))))

(assert (= (and d!1396884 (not res!1885334)) b!4527924))

(assert (= (and b!4527924 res!1885335) b!4527925))

(declare-fun b_lambda!156059 () Bool)

(assert (=> (not b_lambda!156059) (not b!4527924)))

(declare-fun m!5282525 () Bool)

(assert (=> b!4527924 m!5282525))

(declare-fun m!5282527 () Bool)

(assert (=> b!4527925 m!5282527))

(assert (=> bm!315500 d!1396884))

(assert (=> d!1396388 d!1396640))

(assert (=> d!1396388 d!1396438))

(assert (=> d!1396376 d!1396868))

(assert (=> d!1396376 d!1396866))

(declare-fun d!1396890 () Bool)

(declare-fun lt!1703649 () Bool)

(assert (=> d!1396890 (= lt!1703649 (select (content!8385 (toList!4351 lt!1702784)) lt!1702727))))

(declare-fun e!2821247 () Bool)

(assert (=> d!1396890 (= lt!1703649 e!2821247)))

(declare-fun res!1885336 () Bool)

(assert (=> d!1396890 (=> (not res!1885336) (not e!2821247))))

(assert (=> d!1396890 (= res!1885336 ((_ is Cons!50681) (toList!4351 lt!1702784)))))

(assert (=> d!1396890 (= (contains!13428 (toList!4351 lt!1702784) lt!1702727) lt!1703649)))

(declare-fun b!4527928 () Bool)

(declare-fun e!2821248 () Bool)

(assert (=> b!4527928 (= e!2821247 e!2821248)))

(declare-fun res!1885337 () Bool)

(assert (=> b!4527928 (=> res!1885337 e!2821248)))

(assert (=> b!4527928 (= res!1885337 (= (h!56544 (toList!4351 lt!1702784)) lt!1702727))))

(declare-fun b!4527929 () Bool)

(assert (=> b!4527929 (= e!2821248 (contains!13428 (t!357767 (toList!4351 lt!1702784)) lt!1702727))))

(assert (= (and d!1396890 res!1885336) b!4527928))

(assert (= (and b!4527928 (not res!1885337)) b!4527929))

(declare-fun m!5282529 () Bool)

(assert (=> d!1396890 m!5282529))

(declare-fun m!5282531 () Bool)

(assert (=> d!1396890 m!5282531))

(declare-fun m!5282533 () Bool)

(assert (=> b!4527929 m!5282533))

(assert (=> b!4526691 d!1396890))

(declare-fun bs!862813 () Bool)

(declare-fun b!4527931 () Bool)

(assert (= bs!862813 (and b!4527931 b!4527887)))

(declare-fun lambda!173803 () Int)

(assert (=> bs!862813 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173803 lambda!173785))))

(declare-fun bs!862815 () Bool)

(assert (= bs!862815 (and b!4527931 d!1396296)))

(assert (=> bs!862815 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703123) (= lambda!173803 lambda!173703))))

(declare-fun bs!862817 () Bool)

(assert (= bs!862817 (and b!4527931 b!4527305)))

(assert (=> bs!862817 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173803 lambda!173739))))

(declare-fun bs!862818 () Bool)

(assert (= bs!862818 (and b!4527931 b!4526999)))

(assert (=> bs!862818 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702724) (= lambda!173803 lambda!173701))))

(declare-fun bs!862819 () Bool)

(assert (= bs!862819 (and b!4527931 b!4527889)))

(assert (=> bs!862819 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173803 lambda!173786))))

(declare-fun bs!862820 () Bool)

(assert (= bs!862820 (and b!4527931 b!4527019)))

(assert (=> bs!862820 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703158) (= lambda!173803 lambda!173713))))

(declare-fun bs!862822 () Bool)

(assert (= bs!862822 (and b!4527931 b!4527307)))

(assert (=> bs!862822 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703261) (= lambda!173803 lambda!173743))))

(declare-fun bs!862823 () Bool)

(assert (= bs!862823 (and b!4527931 b!4526608)))

(assert (=> bs!862823 (not (= lambda!173803 lambda!173585))))

(declare-fun bs!862824 () Bool)

(assert (= bs!862824 (and b!4527931 b!4527017)))

(assert (=> bs!862824 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173803 lambda!173711))))

(declare-fun bs!862825 () Bool)

(assert (= bs!862825 (and b!4527931 d!1396390)))

(assert (=> bs!862825 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703159) (= lambda!173803 lambda!173714))))

(declare-fun bs!862826 () Bool)

(assert (= bs!862826 (and b!4527931 b!4526997)))

(assert (=> bs!862826 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702724) (= lambda!173803 lambda!173700))))

(assert (=> bs!862820 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173803 lambda!173712))))

(declare-fun bs!862827 () Bool)

(assert (= bs!862827 (and b!4527931 d!1396804)))

(assert (=> bs!862827 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703572) (= lambda!173803 lambda!173777))))

(declare-fun bs!862828 () Bool)

(assert (= bs!862828 (and b!4527931 d!1396634)))

(assert (=> bs!862828 (not (= lambda!173803 lambda!173754))))

(assert (=> bs!862822 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173803 lambda!173740))))

(declare-fun bs!862829 () Bool)

(assert (= bs!862829 (and b!4527931 b!4527806)))

(assert (=> bs!862829 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173803 lambda!173774))))

(assert (=> bs!862819 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703622) (= lambda!173803 lambda!173789))))

(assert (=> bs!862818 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703122) (= lambda!173803 lambda!173702))))

(declare-fun bs!862830 () Bool)

(assert (= bs!862830 (and b!4527931 b!4527808)))

(assert (=> bs!862830 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173803 lambda!173775))))

(declare-fun bs!862831 () Bool)

(assert (= bs!862831 (and b!4527931 d!1396260)))

(assert (=> bs!862831 (not (= lambda!173803 lambda!173651))))

(declare-fun bs!862832 () Bool)

(assert (= bs!862832 (and b!4527931 d!1396498)))

(assert (=> bs!862832 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173803 lambda!173736))))

(declare-fun bs!862833 () Bool)

(assert (= bs!862833 (and b!4527931 d!1396564)))

(assert (=> bs!862833 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703262) (= lambda!173803 lambda!173746))))

(assert (=> bs!862830 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703571) (= lambda!173803 lambda!173776))))

(declare-fun bs!862834 () Bool)

(assert (= bs!862834 (and b!4527931 d!1396878)))

(assert (=> bs!862834 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703623) (= lambda!173803 lambda!173796))))

(declare-fun bs!862835 () Bool)

(assert (= bs!862835 (and b!4527931 d!1396572)))

(assert (=> bs!862835 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703122) (= lambda!173803 lambda!173753))))

(assert (=> b!4527931 true))

(declare-fun bs!862836 () Bool)

(declare-fun b!4527933 () Bool)

(assert (= bs!862836 (and b!4527933 b!4527887)))

(declare-fun lambda!173804 () Int)

(assert (=> bs!862836 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173804 lambda!173785))))

(declare-fun bs!862837 () Bool)

(assert (= bs!862837 (and b!4527933 d!1396296)))

(assert (=> bs!862837 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703123) (= lambda!173804 lambda!173703))))

(declare-fun bs!862839 () Bool)

(assert (= bs!862839 (and b!4527933 b!4527305)))

(assert (=> bs!862839 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173804 lambda!173739))))

(declare-fun bs!862840 () Bool)

(assert (= bs!862840 (and b!4527933 b!4526999)))

(assert (=> bs!862840 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702724) (= lambda!173804 lambda!173701))))

(declare-fun bs!862841 () Bool)

(assert (= bs!862841 (and b!4527933 b!4527889)))

(assert (=> bs!862841 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173804 lambda!173786))))

(declare-fun bs!862842 () Bool)

(assert (= bs!862842 (and b!4527933 b!4527019)))

(assert (=> bs!862842 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703158) (= lambda!173804 lambda!173713))))

(declare-fun bs!862843 () Bool)

(assert (= bs!862843 (and b!4527933 b!4527931)))

(assert (=> bs!862843 (= lambda!173804 lambda!173803)))

(declare-fun bs!862844 () Bool)

(assert (= bs!862844 (and b!4527933 b!4527307)))

(assert (=> bs!862844 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703261) (= lambda!173804 lambda!173743))))

(declare-fun bs!862845 () Bool)

(assert (= bs!862845 (and b!4527933 b!4526608)))

(assert (=> bs!862845 (not (= lambda!173804 lambda!173585))))

(declare-fun bs!862846 () Bool)

(assert (= bs!862846 (and b!4527933 b!4527017)))

(assert (=> bs!862846 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173804 lambda!173711))))

(declare-fun bs!862847 () Bool)

(assert (= bs!862847 (and b!4527933 d!1396390)))

(assert (=> bs!862847 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703159) (= lambda!173804 lambda!173714))))

(declare-fun bs!862848 () Bool)

(assert (= bs!862848 (and b!4527933 b!4526997)))

(assert (=> bs!862848 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702724) (= lambda!173804 lambda!173700))))

(assert (=> bs!862842 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173804 lambda!173712))))

(declare-fun bs!862849 () Bool)

(assert (= bs!862849 (and b!4527933 d!1396804)))

(assert (=> bs!862849 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703572) (= lambda!173804 lambda!173777))))

(declare-fun bs!862850 () Bool)

(assert (= bs!862850 (and b!4527933 d!1396634)))

(assert (=> bs!862850 (not (= lambda!173804 lambda!173754))))

(assert (=> bs!862844 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173804 lambda!173740))))

(declare-fun bs!862851 () Bool)

(assert (= bs!862851 (and b!4527933 b!4527806)))

(assert (=> bs!862851 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173804 lambda!173774))))

(assert (=> bs!862841 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703622) (= lambda!173804 lambda!173789))))

(assert (=> bs!862840 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703122) (= lambda!173804 lambda!173702))))

(declare-fun bs!862852 () Bool)

(assert (= bs!862852 (and b!4527933 b!4527808)))

(assert (=> bs!862852 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173804 lambda!173775))))

(declare-fun bs!862853 () Bool)

(assert (= bs!862853 (and b!4527933 d!1396260)))

(assert (=> bs!862853 (not (= lambda!173804 lambda!173651))))

(declare-fun bs!862854 () Bool)

(assert (= bs!862854 (and b!4527933 d!1396498)))

(assert (=> bs!862854 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702713) (= lambda!173804 lambda!173736))))

(declare-fun bs!862855 () Bool)

(assert (= bs!862855 (and b!4527933 d!1396564)))

(assert (=> bs!862855 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703262) (= lambda!173804 lambda!173746))))

(assert (=> bs!862852 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703571) (= lambda!173804 lambda!173776))))

(declare-fun bs!862856 () Bool)

(assert (= bs!862856 (and b!4527933 d!1396878)))

(assert (=> bs!862856 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703623) (= lambda!173804 lambda!173796))))

(declare-fun bs!862857 () Bool)

(assert (= bs!862857 (and b!4527933 d!1396572)))

(assert (=> bs!862857 (= (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703122) (= lambda!173804 lambda!173753))))

(assert (=> b!4527933 true))

(declare-fun lt!1703666 () ListMap!3613)

(declare-fun lambda!173805 () Int)

(assert (=> bs!862836 (= (= lt!1703666 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173805 lambda!173785))))

(assert (=> bs!862837 (= (= lt!1703666 lt!1703123) (= lambda!173805 lambda!173703))))

(assert (=> bs!862839 (= (= lt!1703666 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173805 lambda!173739))))

(assert (=> bs!862840 (= (= lt!1703666 lt!1702724) (= lambda!173805 lambda!173701))))

(assert (=> bs!862841 (= (= lt!1703666 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173805 lambda!173786))))

(assert (=> bs!862842 (= (= lt!1703666 lt!1703158) (= lambda!173805 lambda!173713))))

(assert (=> bs!862844 (= (= lt!1703666 lt!1703261) (= lambda!173805 lambda!173743))))

(assert (=> bs!862845 (not (= lambda!173805 lambda!173585))))

(assert (=> bs!862846 (= (= lt!1703666 lt!1702713) (= lambda!173805 lambda!173711))))

(assert (=> bs!862847 (= (= lt!1703666 lt!1703159) (= lambda!173805 lambda!173714))))

(assert (=> bs!862848 (= (= lt!1703666 lt!1702724) (= lambda!173805 lambda!173700))))

(assert (=> bs!862842 (= (= lt!1703666 lt!1702713) (= lambda!173805 lambda!173712))))

(assert (=> bs!862849 (= (= lt!1703666 lt!1703572) (= lambda!173805 lambda!173777))))

(assert (=> bs!862850 (not (= lambda!173805 lambda!173754))))

(assert (=> bs!862844 (= (= lt!1703666 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173805 lambda!173740))))

(assert (=> bs!862851 (= (= lt!1703666 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173805 lambda!173774))))

(assert (=> bs!862841 (= (= lt!1703666 lt!1703622) (= lambda!173805 lambda!173789))))

(assert (=> bs!862840 (= (= lt!1703666 lt!1703122) (= lambda!173805 lambda!173702))))

(assert (=> bs!862852 (= (= lt!1703666 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173805 lambda!173775))))

(assert (=> bs!862853 (not (= lambda!173805 lambda!173651))))

(assert (=> bs!862843 (= (= lt!1703666 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173805 lambda!173803))))

(assert (=> b!4527933 (= (= lt!1703666 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173805 lambda!173804))))

(assert (=> bs!862854 (= (= lt!1703666 lt!1702713) (= lambda!173805 lambda!173736))))

(assert (=> bs!862855 (= (= lt!1703666 lt!1703262) (= lambda!173805 lambda!173746))))

(assert (=> bs!862852 (= (= lt!1703666 lt!1703571) (= lambda!173805 lambda!173776))))

(assert (=> bs!862856 (= (= lt!1703666 lt!1703623) (= lambda!173805 lambda!173796))))

(assert (=> bs!862857 (= (= lt!1703666 lt!1703122) (= lambda!173805 lambda!173753))))

(assert (=> b!4527933 true))

(declare-fun bs!862858 () Bool)

(declare-fun d!1396892 () Bool)

(assert (= bs!862858 (and d!1396892 b!4527887)))

(declare-fun lambda!173808 () Int)

(declare-fun lt!1703667 () ListMap!3613)

(assert (=> bs!862858 (= (= lt!1703667 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173808 lambda!173785))))

(declare-fun bs!862859 () Bool)

(assert (= bs!862859 (and d!1396892 d!1396296)))

(assert (=> bs!862859 (= (= lt!1703667 lt!1703123) (= lambda!173808 lambda!173703))))

(declare-fun bs!862860 () Bool)

(assert (= bs!862860 (and d!1396892 b!4527305)))

(assert (=> bs!862860 (= (= lt!1703667 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173808 lambda!173739))))

(declare-fun bs!862861 () Bool)

(assert (= bs!862861 (and d!1396892 b!4526999)))

(assert (=> bs!862861 (= (= lt!1703667 lt!1702724) (= lambda!173808 lambda!173701))))

(declare-fun bs!862862 () Bool)

(assert (= bs!862862 (and d!1396892 b!4527933)))

(assert (=> bs!862862 (= (= lt!1703667 lt!1703666) (= lambda!173808 lambda!173805))))

(declare-fun bs!862863 () Bool)

(assert (= bs!862863 (and d!1396892 b!4527889)))

(assert (=> bs!862863 (= (= lt!1703667 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173808 lambda!173786))))

(declare-fun bs!862864 () Bool)

(assert (= bs!862864 (and d!1396892 b!4527019)))

(assert (=> bs!862864 (= (= lt!1703667 lt!1703158) (= lambda!173808 lambda!173713))))

(declare-fun bs!862865 () Bool)

(assert (= bs!862865 (and d!1396892 b!4527307)))

(assert (=> bs!862865 (= (= lt!1703667 lt!1703261) (= lambda!173808 lambda!173743))))

(declare-fun bs!862866 () Bool)

(assert (= bs!862866 (and d!1396892 b!4526608)))

(assert (=> bs!862866 (not (= lambda!173808 lambda!173585))))

(declare-fun bs!862867 () Bool)

(assert (= bs!862867 (and d!1396892 b!4527017)))

(assert (=> bs!862867 (= (= lt!1703667 lt!1702713) (= lambda!173808 lambda!173711))))

(declare-fun bs!862868 () Bool)

(assert (= bs!862868 (and d!1396892 d!1396390)))

(assert (=> bs!862868 (= (= lt!1703667 lt!1703159) (= lambda!173808 lambda!173714))))

(declare-fun bs!862869 () Bool)

(assert (= bs!862869 (and d!1396892 b!4526997)))

(assert (=> bs!862869 (= (= lt!1703667 lt!1702724) (= lambda!173808 lambda!173700))))

(assert (=> bs!862864 (= (= lt!1703667 lt!1702713) (= lambda!173808 lambda!173712))))

(declare-fun bs!862871 () Bool)

(assert (= bs!862871 (and d!1396892 d!1396804)))

(assert (=> bs!862871 (= (= lt!1703667 lt!1703572) (= lambda!173808 lambda!173777))))

(declare-fun bs!862873 () Bool)

(assert (= bs!862873 (and d!1396892 d!1396634)))

(assert (=> bs!862873 (not (= lambda!173808 lambda!173754))))

(assert (=> bs!862865 (= (= lt!1703667 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173808 lambda!173740))))

(declare-fun bs!862875 () Bool)

(assert (= bs!862875 (and d!1396892 b!4527806)))

(assert (=> bs!862875 (= (= lt!1703667 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173808 lambda!173774))))

(assert (=> bs!862863 (= (= lt!1703667 lt!1703622) (= lambda!173808 lambda!173789))))

(assert (=> bs!862861 (= (= lt!1703667 lt!1703122) (= lambda!173808 lambda!173702))))

(declare-fun bs!862879 () Bool)

(assert (= bs!862879 (and d!1396892 b!4527808)))

(assert (=> bs!862879 (= (= lt!1703667 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173808 lambda!173775))))

(declare-fun bs!862881 () Bool)

(assert (= bs!862881 (and d!1396892 d!1396260)))

(assert (=> bs!862881 (not (= lambda!173808 lambda!173651))))

(declare-fun bs!862883 () Bool)

(assert (= bs!862883 (and d!1396892 b!4527931)))

(assert (=> bs!862883 (= (= lt!1703667 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173808 lambda!173803))))

(assert (=> bs!862862 (= (= lt!1703667 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173808 lambda!173804))))

(declare-fun bs!862885 () Bool)

(assert (= bs!862885 (and d!1396892 d!1396498)))

(assert (=> bs!862885 (= (= lt!1703667 lt!1702713) (= lambda!173808 lambda!173736))))

(declare-fun bs!862887 () Bool)

(assert (= bs!862887 (and d!1396892 d!1396564)))

(assert (=> bs!862887 (= (= lt!1703667 lt!1703262) (= lambda!173808 lambda!173746))))

(assert (=> bs!862879 (= (= lt!1703667 lt!1703571) (= lambda!173808 lambda!173776))))

(declare-fun bs!862889 () Bool)

(assert (= bs!862889 (and d!1396892 d!1396878)))

(assert (=> bs!862889 (= (= lt!1703667 lt!1703623) (= lambda!173808 lambda!173796))))

(declare-fun bs!862890 () Bool)

(assert (= bs!862890 (and d!1396892 d!1396572)))

(assert (=> bs!862890 (= (= lt!1703667 lt!1703122) (= lambda!173808 lambda!173753))))

(assert (=> d!1396892 true))

(declare-fun b!4527930 () Bool)

(declare-fun e!2821251 () Bool)

(assert (=> b!4527930 (= e!2821251 (invariantList!1027 (toList!4352 lt!1703667)))))

(declare-fun e!2821249 () ListMap!3613)

(assert (=> b!4527931 (= e!2821249 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun lt!1703654 () Unit!96156)

(declare-fun call!315588 () Unit!96156)

(assert (=> b!4527931 (= lt!1703654 call!315588)))

(declare-fun call!315587 () Bool)

(assert (=> b!4527931 call!315587))

(declare-fun lt!1703653 () Unit!96156)

(assert (=> b!4527931 (= lt!1703653 lt!1703654)))

(declare-fun call!315589 () Bool)

(assert (=> b!4527931 call!315589))

(declare-fun lt!1703663 () Unit!96156)

(declare-fun Unit!96352 () Unit!96156)

(assert (=> b!4527931 (= lt!1703663 Unit!96352)))

(declare-fun b!4527932 () Bool)

(declare-fun e!2821250 () Bool)

(assert (=> b!4527932 (= e!2821250 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) lambda!173805))))

(declare-fun b!4527934 () Bool)

(declare-fun res!1885340 () Bool)

(assert (=> b!4527934 (=> (not res!1885340) (not e!2821251))))

(assert (=> b!4527934 (= res!1885340 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) lambda!173808))))

(declare-fun bm!315582 () Bool)

(assert (=> bm!315582 (= call!315588 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> d!1396892 e!2821251))

(declare-fun res!1885339 () Bool)

(assert (=> d!1396892 (=> (not res!1885339) (not e!2821251))))

(assert (=> d!1396892 (= res!1885339 (forall!10293 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) lambda!173808))))

(assert (=> d!1396892 (= lt!1703667 e!2821249)))

(declare-fun c!773062 () Bool)

(assert (=> d!1396892 (= c!773062 ((_ is Nil!50680) (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> d!1396892 (noDuplicateKeys!1172 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396892 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) lt!1703667)))

(assert (=> b!4527933 (= e!2821249 lt!1703666)))

(declare-fun lt!1703669 () ListMap!3613)

(assert (=> b!4527933 (= lt!1703669 (+!1562 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))))))

(assert (=> b!4527933 (= lt!1703666 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))) (+!1562 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))))

(declare-fun lt!1703664 () Unit!96156)

(assert (=> b!4527933 (= lt!1703664 call!315588)))

(assert (=> b!4527933 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) lambda!173804)))

(declare-fun lt!1703658 () Unit!96156)

(assert (=> b!4527933 (= lt!1703658 lt!1703664)))

(assert (=> b!4527933 (forall!10293 (toList!4352 lt!1703669) lambda!173805)))

(declare-fun lt!1703656 () Unit!96156)

(declare-fun Unit!96353 () Unit!96156)

(assert (=> b!4527933 (= lt!1703656 Unit!96353)))

(assert (=> b!4527933 (forall!10293 (t!357766 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))) lambda!173805)))

(declare-fun lt!1703661 () Unit!96156)

(declare-fun Unit!96354 () Unit!96156)

(assert (=> b!4527933 (= lt!1703661 Unit!96354)))

(declare-fun lt!1703665 () Unit!96156)

(declare-fun Unit!96355 () Unit!96156)

(assert (=> b!4527933 (= lt!1703665 Unit!96355)))

(declare-fun lt!1703660 () Unit!96156)

(assert (=> b!4527933 (= lt!1703660 (forallContained!2545 (toList!4352 lt!1703669) lambda!173805 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))))))

(assert (=> b!4527933 (contains!13427 lt!1703669 (_1!28855 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun lt!1703650 () Unit!96156)

(declare-fun Unit!96356 () Unit!96156)

(assert (=> b!4527933 (= lt!1703650 Unit!96356)))

(assert (=> b!4527933 (contains!13427 lt!1703666 (_1!28855 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun lt!1703651 () Unit!96156)

(declare-fun Unit!96357 () Unit!96156)

(assert (=> b!4527933 (= lt!1703651 Unit!96357)))

(assert (=> b!4527933 call!315587))

(declare-fun lt!1703655 () Unit!96156)

(declare-fun Unit!96358 () Unit!96156)

(assert (=> b!4527933 (= lt!1703655 Unit!96358)))

(assert (=> b!4527933 (forall!10293 (toList!4352 lt!1703669) lambda!173805)))

(declare-fun lt!1703659 () Unit!96156)

(declare-fun Unit!96359 () Unit!96156)

(assert (=> b!4527933 (= lt!1703659 Unit!96359)))

(declare-fun lt!1703652 () Unit!96156)

(declare-fun Unit!96360 () Unit!96156)

(assert (=> b!4527933 (= lt!1703652 Unit!96360)))

(declare-fun lt!1703668 () Unit!96156)

(assert (=> b!4527933 (= lt!1703668 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703666 (_1!28855 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))))

(assert (=> b!4527933 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) lambda!173805)))

(declare-fun lt!1703670 () Unit!96156)

(assert (=> b!4527933 (= lt!1703670 lt!1703668)))

(assert (=> b!4527933 call!315589))

(declare-fun lt!1703662 () Unit!96156)

(declare-fun Unit!96361 () Unit!96156)

(assert (=> b!4527933 (= lt!1703662 Unit!96361)))

(declare-fun res!1885338 () Bool)

(assert (=> b!4527933 (= res!1885338 (forall!10293 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477)))) lambda!173805))))

(assert (=> b!4527933 (=> (not res!1885338) (not e!2821250))))

(assert (=> b!4527933 e!2821250))

(declare-fun lt!1703657 () Unit!96156)

(declare-fun Unit!96362 () Unit!96156)

(assert (=> b!4527933 (= lt!1703657 Unit!96362)))

(declare-fun bm!315583 () Bool)

(assert (=> bm!315583 (= call!315589 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (ite c!773062 lambda!173803 lambda!173805)))))

(declare-fun bm!315584 () Bool)

(assert (=> bm!315584 (= call!315587 (forall!10293 (ite c!773062 (toList!4352 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))) (ite c!773062 lambda!173803 lambda!173805)))))

(assert (= (and d!1396892 c!773062) b!4527931))

(assert (= (and d!1396892 (not c!773062)) b!4527933))

(assert (= (and b!4527933 res!1885338) b!4527932))

(assert (= (or b!4527931 b!4527933) bm!315584))

(assert (= (or b!4527931 b!4527933) bm!315583))

(assert (= (or b!4527931 b!4527933) bm!315582))

(assert (= (and d!1396892 res!1885339) b!4527934))

(assert (= (and b!4527934 res!1885340) b!4527930))

(assert (=> bm!315582 m!5280481))

(declare-fun m!5282559 () Bool)

(assert (=> bm!315582 m!5282559))

(declare-fun m!5282561 () Bool)

(assert (=> b!4527932 m!5282561))

(declare-fun m!5282563 () Bool)

(assert (=> b!4527934 m!5282563))

(declare-fun m!5282565 () Bool)

(assert (=> d!1396892 m!5282565))

(declare-fun m!5282567 () Bool)

(assert (=> d!1396892 m!5282567))

(declare-fun m!5282569 () Bool)

(assert (=> bm!315584 m!5282569))

(declare-fun m!5282571 () Bool)

(assert (=> b!4527933 m!5282571))

(assert (=> b!4527933 m!5280481))

(declare-fun m!5282573 () Bool)

(assert (=> b!4527933 m!5282573))

(declare-fun m!5282575 () Bool)

(assert (=> b!4527933 m!5282575))

(assert (=> b!4527933 m!5282561))

(assert (=> b!4527933 m!5280481))

(declare-fun m!5282577 () Bool)

(assert (=> b!4527933 m!5282577))

(declare-fun m!5282579 () Bool)

(assert (=> b!4527933 m!5282579))

(assert (=> b!4527933 m!5282575))

(declare-fun m!5282581 () Bool)

(assert (=> b!4527933 m!5282581))

(declare-fun m!5282583 () Bool)

(assert (=> b!4527933 m!5282583))

(declare-fun m!5282585 () Bool)

(assert (=> b!4527933 m!5282585))

(assert (=> b!4527933 m!5282577))

(declare-fun m!5282587 () Bool)

(assert (=> b!4527933 m!5282587))

(declare-fun m!5282589 () Bool)

(assert (=> b!4527933 m!5282589))

(declare-fun m!5282591 () Bool)

(assert (=> bm!315583 m!5282591))

(declare-fun m!5282593 () Bool)

(assert (=> b!4527930 m!5282593))

(assert (=> b!4526748 d!1396892))

(declare-fun bs!862895 () Bool)

(declare-fun d!1396916 () Bool)

(assert (= bs!862895 (and d!1396916 d!1396254)))

(declare-fun lambda!173810 () Int)

(assert (=> bs!862895 (= lambda!173810 lambda!173645)))

(declare-fun bs!862896 () Bool)

(assert (= bs!862896 (and d!1396916 d!1396204)))

(assert (=> bs!862896 (= lambda!173810 lambda!173594)))

(declare-fun bs!862898 () Bool)

(assert (= bs!862898 (and d!1396916 d!1396880)))

(assert (=> bs!862898 (= lambda!173810 lambda!173799)))

(declare-fun bs!862899 () Bool)

(assert (= bs!862899 (and d!1396916 d!1396256)))

(assert (=> bs!862899 (= lambda!173810 lambda!173647)))

(declare-fun bs!862901 () Bool)

(assert (= bs!862901 (and d!1396916 start!448604)))

(assert (=> bs!862901 (= lambda!173810 lambda!173583)))

(declare-fun bs!862903 () Bool)

(assert (= bs!862903 (and d!1396916 d!1396216)))

(assert (=> bs!862903 (= lambda!173810 lambda!173619)))

(declare-fun bs!862905 () Bool)

(assert (= bs!862905 (and d!1396916 d!1396822)))

(assert (=> bs!862905 (= lambda!173810 lambda!173778)))

(declare-fun bs!862907 () Bool)

(assert (= bs!862907 (and d!1396916 d!1396372)))

(assert (=> bs!862907 (= lambda!173810 lambda!173709)))

(declare-fun bs!862909 () Bool)

(assert (= bs!862909 (and d!1396916 b!4526608)))

(assert (=> bs!862909 (not (= lambda!173810 lambda!173584))))

(declare-fun bs!862910 () Bool)

(assert (= bs!862910 (and d!1396916 d!1396236)))

(assert (=> bs!862910 (= lambda!173810 lambda!173642)))

(declare-fun bs!862911 () Bool)

(assert (= bs!862911 (and d!1396916 d!1396392)))

(assert (=> bs!862911 (= lambda!173810 lambda!173715)))

(declare-fun bs!862912 () Bool)

(assert (= bs!862912 (and d!1396916 d!1396206)))

(assert (=> bs!862912 (= lambda!173810 lambda!173597)))

(declare-fun bs!862913 () Bool)

(assert (= bs!862913 (and d!1396916 d!1396278)))

(assert (=> bs!862913 (= lambda!173810 lambda!173656)))

(declare-fun bs!862915 () Bool)

(assert (= bs!862915 (and d!1396916 d!1396208)))

(assert (=> bs!862915 (= lambda!173810 lambda!173598)))

(declare-fun bs!862917 () Bool)

(assert (= bs!862917 (and d!1396916 d!1396730)))

(assert (=> bs!862917 (= lambda!173810 lambda!173766)))

(declare-fun bs!862919 () Bool)

(assert (= bs!862919 (and d!1396916 d!1396370)))

(assert (=> bs!862919 (not (= lambda!173810 lambda!173706))))

(declare-fun bs!862921 () Bool)

(assert (= bs!862921 (and d!1396916 d!1396380)))

(assert (=> bs!862921 (= lambda!173810 lambda!173710)))

(declare-fun lt!1703681 () ListMap!3613)

(assert (=> d!1396916 (invariantList!1027 (toList!4352 lt!1703681))))

(declare-fun e!2821267 () ListMap!3613)

(assert (=> d!1396916 (= lt!1703681 e!2821267)))

(declare-fun c!773070 () Bool)

(assert (=> d!1396916 (= c!773070 ((_ is Cons!50681) (t!357767 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1396916 (forall!10291 (t!357767 (t!357767 (toList!4351 lm!1477))) lambda!173810)))

(assert (=> d!1396916 (= (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1703681)))

(declare-fun b!4527954 () Bool)

(assert (=> b!4527954 (= e!2821267 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (t!357767 (toList!4351 lm!1477))))) (extractMap!1228 (t!357767 (t!357767 (t!357767 (toList!4351 lm!1477)))))))))

(declare-fun b!4527955 () Bool)

(assert (=> b!4527955 (= e!2821267 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396916 c!773070) b!4527954))

(assert (= (and d!1396916 (not c!773070)) b!4527955))

(declare-fun m!5282597 () Bool)

(assert (=> d!1396916 m!5282597))

(declare-fun m!5282599 () Bool)

(assert (=> d!1396916 m!5282599))

(declare-fun m!5282601 () Bool)

(assert (=> b!4527954 m!5282601))

(assert (=> b!4527954 m!5282601))

(declare-fun m!5282603 () Bool)

(assert (=> b!4527954 m!5282603))

(assert (=> b!4526748 d!1396916))

(declare-fun d!1396920 () Bool)

(assert (=> d!1396920 (isDefined!8427 (getValueByKey!1112 (toList!4351 lm!1477) lt!1702728))))

(declare-fun lt!1703687 () Unit!96156)

(assert (=> d!1396920 (= lt!1703687 (choose!29666 (toList!4351 lm!1477) lt!1702728))))

(declare-fun e!2821270 () Bool)

(assert (=> d!1396920 e!2821270))

(declare-fun res!1885351 () Bool)

(assert (=> d!1396920 (=> (not res!1885351) (not e!2821270))))

(assert (=> d!1396920 (= res!1885351 (isStrictlySorted!440 (toList!4351 lm!1477)))))

(assert (=> d!1396920 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lm!1477) lt!1702728) lt!1703687)))

(declare-fun b!4527965 () Bool)

(assert (=> b!4527965 (= e!2821270 (containsKey!1815 (toList!4351 lm!1477) lt!1702728))))

(assert (= (and d!1396920 res!1885351) b!4527965))

(assert (=> d!1396920 m!5280839))

(assert (=> d!1396920 m!5280839))

(assert (=> d!1396920 m!5280841))

(declare-fun m!5282605 () Bool)

(assert (=> d!1396920 m!5282605))

(assert (=> d!1396920 m!5280355))

(assert (=> b!4527965 m!5280835))

(assert (=> b!4526873 d!1396920))

(assert (=> b!4526873 d!1396532))

(assert (=> b!4526873 d!1396534))

(declare-fun d!1396922 () Bool)

(assert (=> d!1396922 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1702718) key!3287))))

(declare-fun lt!1703688 () Unit!96156)

(assert (=> d!1396922 (= lt!1703688 (choose!29662 (toList!4352 lt!1702718) key!3287))))

(assert (=> d!1396922 (invariantList!1027 (toList!4352 lt!1702718))))

(assert (=> d!1396922 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1702718) key!3287) lt!1703688)))

(declare-fun bs!862934 () Bool)

(assert (= bs!862934 d!1396922))

(assert (=> bs!862934 m!5281061))

(assert (=> bs!862934 m!5281061))

(assert (=> bs!862934 m!5281063))

(declare-fun m!5282607 () Bool)

(assert (=> bs!862934 m!5282607))

(assert (=> bs!862934 m!5281217))

(assert (=> b!4527011 d!1396922))

(assert (=> b!4527011 d!1396612))

(assert (=> b!4527011 d!1396614))

(declare-fun d!1396924 () Bool)

(assert (=> d!1396924 (contains!13431 (getKeysList!475 (toList!4352 lt!1702718)) key!3287)))

(declare-fun lt!1703689 () Unit!96156)

(assert (=> d!1396924 (= lt!1703689 (choose!29663 (toList!4352 lt!1702718) key!3287))))

(assert (=> d!1396924 (invariantList!1027 (toList!4352 lt!1702718))))

(assert (=> d!1396924 (= (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1702718) key!3287) lt!1703689)))

(declare-fun bs!862938 () Bool)

(assert (= bs!862938 d!1396924))

(assert (=> bs!862938 m!5281059))

(assert (=> bs!862938 m!5281059))

(declare-fun m!5282609 () Bool)

(assert (=> bs!862938 m!5282609))

(declare-fun m!5282611 () Bool)

(assert (=> bs!862938 m!5282611))

(assert (=> bs!862938 m!5281217))

(assert (=> b!4527011 d!1396924))

(declare-fun d!1396926 () Bool)

(assert (=> d!1396926 (= (invariantList!1027 (toList!4352 lt!1703163)) (noDuplicatedKeys!269 (toList!4352 lt!1703163)))))

(declare-fun bs!862939 () Bool)

(assert (= bs!862939 d!1396926))

(declare-fun m!5282613 () Bool)

(assert (=> bs!862939 m!5282613))

(assert (=> d!1396392 d!1396926))

(declare-fun d!1396928 () Bool)

(declare-fun res!1885352 () Bool)

(declare-fun e!2821271 () Bool)

(assert (=> d!1396928 (=> res!1885352 e!2821271)))

(assert (=> d!1396928 (= res!1885352 ((_ is Nil!50681) (toList!4351 lt!1702738)))))

(assert (=> d!1396928 (= (forall!10291 (toList!4351 lt!1702738) lambda!173715) e!2821271)))

(declare-fun b!4527966 () Bool)

(declare-fun e!2821272 () Bool)

(assert (=> b!4527966 (= e!2821271 e!2821272)))

(declare-fun res!1885353 () Bool)

(assert (=> b!4527966 (=> (not res!1885353) (not e!2821272))))

(assert (=> b!4527966 (= res!1885353 (dynLambda!21178 lambda!173715 (h!56544 (toList!4351 lt!1702738))))))

(declare-fun b!4527967 () Bool)

(assert (=> b!4527967 (= e!2821272 (forall!10291 (t!357767 (toList!4351 lt!1702738)) lambda!173715))))

(assert (= (and d!1396928 (not res!1885352)) b!4527966))

(assert (= (and b!4527966 res!1885353) b!4527967))

(declare-fun b_lambda!156061 () Bool)

(assert (=> (not b_lambda!156061) (not b!4527966)))

(declare-fun m!5282615 () Bool)

(assert (=> b!4527966 m!5282615))

(declare-fun m!5282617 () Bool)

(assert (=> b!4527967 m!5282617))

(assert (=> d!1396392 d!1396928))

(assert (=> b!4526758 d!1396744))

(declare-fun d!1396930 () Bool)

(assert (=> d!1396930 (containsKey!1814 (toList!4352 lt!1702732) key!3287)))

(declare-fun lt!1703690 () Unit!96156)

(assert (=> d!1396930 (= lt!1703690 (choose!29664 (toList!4352 lt!1702732) key!3287))))

(assert (=> d!1396930 (invariantList!1027 (toList!4352 lt!1702732))))

(assert (=> d!1396930 (= (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1702732) key!3287) lt!1703690)))

(declare-fun bs!862940 () Bool)

(assert (= bs!862940 d!1396930))

(assert (=> bs!862940 m!5280499))

(declare-fun m!5282621 () Bool)

(assert (=> bs!862940 m!5282621))

(assert (=> bs!862940 m!5281413))

(assert (=> b!4526758 d!1396930))

(declare-fun bs!862941 () Bool)

(declare-fun b!4527969 () Bool)

(assert (= bs!862941 (and b!4527969 b!4527887)))

(declare-fun lambda!173815 () Int)

(assert (=> bs!862941 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173815 lambda!173785))))

(declare-fun bs!862942 () Bool)

(assert (= bs!862942 (and b!4527969 d!1396296)))

(assert (=> bs!862942 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703123) (= lambda!173815 lambda!173703))))

(declare-fun bs!862943 () Bool)

(assert (= bs!862943 (and b!4527969 b!4527305)))

(assert (=> bs!862943 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173815 lambda!173739))))

(declare-fun bs!862944 () Bool)

(assert (= bs!862944 (and b!4527969 b!4526999)))

(assert (=> bs!862944 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702724) (= lambda!173815 lambda!173701))))

(declare-fun bs!862945 () Bool)

(assert (= bs!862945 (and b!4527969 b!4527933)))

(assert (=> bs!862945 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703666) (= lambda!173815 lambda!173805))))

(declare-fun bs!862946 () Bool)

(assert (= bs!862946 (and b!4527969 b!4527889)))

(assert (=> bs!862946 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173815 lambda!173786))))

(declare-fun bs!862947 () Bool)

(assert (= bs!862947 (and b!4527969 b!4527019)))

(assert (=> bs!862947 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703158) (= lambda!173815 lambda!173713))))

(declare-fun bs!862948 () Bool)

(assert (= bs!862948 (and b!4527969 b!4527307)))

(assert (=> bs!862948 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703261) (= lambda!173815 lambda!173743))))

(declare-fun bs!862949 () Bool)

(assert (= bs!862949 (and b!4527969 b!4527017)))

(assert (=> bs!862949 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173815 lambda!173711))))

(declare-fun bs!862950 () Bool)

(assert (= bs!862950 (and b!4527969 d!1396390)))

(assert (=> bs!862950 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703159) (= lambda!173815 lambda!173714))))

(declare-fun bs!862951 () Bool)

(assert (= bs!862951 (and b!4527969 b!4526997)))

(assert (=> bs!862951 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702724) (= lambda!173815 lambda!173700))))

(assert (=> bs!862947 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173815 lambda!173712))))

(declare-fun bs!862953 () Bool)

(assert (= bs!862953 (and b!4527969 d!1396804)))

(assert (=> bs!862953 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703572) (= lambda!173815 lambda!173777))))

(declare-fun bs!862955 () Bool)

(assert (= bs!862955 (and b!4527969 d!1396634)))

(assert (=> bs!862955 (not (= lambda!173815 lambda!173754))))

(assert (=> bs!862948 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173815 lambda!173740))))

(declare-fun bs!862957 () Bool)

(assert (= bs!862957 (and b!4527969 b!4527806)))

(assert (=> bs!862957 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173815 lambda!173774))))

(assert (=> bs!862946 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703622) (= lambda!173815 lambda!173789))))

(assert (=> bs!862944 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703122) (= lambda!173815 lambda!173702))))

(declare-fun bs!862961 () Bool)

(assert (= bs!862961 (and b!4527969 b!4527808)))

(assert (=> bs!862961 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173815 lambda!173775))))

(declare-fun bs!862963 () Bool)

(assert (= bs!862963 (and b!4527969 d!1396260)))

(assert (=> bs!862963 (not (= lambda!173815 lambda!173651))))

(declare-fun bs!862965 () Bool)

(assert (= bs!862965 (and b!4527969 b!4527931)))

(assert (=> bs!862965 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173815 lambda!173803))))

(assert (=> bs!862945 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173815 lambda!173804))))

(declare-fun bs!862968 () Bool)

(assert (= bs!862968 (and b!4527969 d!1396498)))

(assert (=> bs!862968 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173815 lambda!173736))))

(declare-fun bs!862970 () Bool)

(assert (= bs!862970 (and b!4527969 d!1396564)))

(assert (=> bs!862970 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703262) (= lambda!173815 lambda!173746))))

(assert (=> bs!862961 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703571) (= lambda!173815 lambda!173776))))

(declare-fun bs!862972 () Bool)

(assert (= bs!862972 (and b!4527969 d!1396878)))

(assert (=> bs!862972 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703623) (= lambda!173815 lambda!173796))))

(declare-fun bs!862973 () Bool)

(assert (= bs!862973 (and b!4527969 d!1396572)))

(assert (=> bs!862973 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703122) (= lambda!173815 lambda!173753))))

(declare-fun bs!862975 () Bool)

(assert (= bs!862975 (and b!4527969 b!4526608)))

(assert (=> bs!862975 (not (= lambda!173815 lambda!173585))))

(declare-fun bs!862977 () Bool)

(assert (= bs!862977 (and b!4527969 d!1396892)))

(assert (=> bs!862977 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703667) (= lambda!173815 lambda!173808))))

(assert (=> b!4527969 true))

(declare-fun bs!862979 () Bool)

(declare-fun b!4527971 () Bool)

(assert (= bs!862979 (and b!4527971 b!4527887)))

(declare-fun lambda!173818 () Int)

(assert (=> bs!862979 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173818 lambda!173785))))

(declare-fun bs!862982 () Bool)

(assert (= bs!862982 (and b!4527971 d!1396296)))

(assert (=> bs!862982 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703123) (= lambda!173818 lambda!173703))))

(declare-fun bs!862983 () Bool)

(assert (= bs!862983 (and b!4527971 b!4527305)))

(assert (=> bs!862983 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173818 lambda!173739))))

(declare-fun bs!862985 () Bool)

(assert (= bs!862985 (and b!4527971 b!4526999)))

(assert (=> bs!862985 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702724) (= lambda!173818 lambda!173701))))

(declare-fun bs!862987 () Bool)

(assert (= bs!862987 (and b!4527971 b!4527933)))

(assert (=> bs!862987 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703666) (= lambda!173818 lambda!173805))))

(declare-fun bs!862989 () Bool)

(assert (= bs!862989 (and b!4527971 b!4527889)))

(assert (=> bs!862989 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173818 lambda!173786))))

(declare-fun bs!862991 () Bool)

(assert (= bs!862991 (and b!4527971 b!4527019)))

(assert (=> bs!862991 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703158) (= lambda!173818 lambda!173713))))

(declare-fun bs!862993 () Bool)

(assert (= bs!862993 (and b!4527971 b!4527307)))

(assert (=> bs!862993 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703261) (= lambda!173818 lambda!173743))))

(declare-fun bs!862996 () Bool)

(assert (= bs!862996 (and b!4527971 b!4527017)))

(assert (=> bs!862996 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173818 lambda!173711))))

(declare-fun bs!862998 () Bool)

(assert (= bs!862998 (and b!4527971 d!1396390)))

(assert (=> bs!862998 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703159) (= lambda!173818 lambda!173714))))

(declare-fun bs!863000 () Bool)

(assert (= bs!863000 (and b!4527971 b!4527969)))

(assert (=> bs!863000 (= lambda!173818 lambda!173815)))

(declare-fun bs!863002 () Bool)

(assert (= bs!863002 (and b!4527971 b!4526997)))

(assert (=> bs!863002 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702724) (= lambda!173818 lambda!173700))))

(assert (=> bs!862991 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173818 lambda!173712))))

(declare-fun bs!863003 () Bool)

(assert (= bs!863003 (and b!4527971 d!1396804)))

(assert (=> bs!863003 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703572) (= lambda!173818 lambda!173777))))

(declare-fun bs!863004 () Bool)

(assert (= bs!863004 (and b!4527971 d!1396634)))

(assert (=> bs!863004 (not (= lambda!173818 lambda!173754))))

(assert (=> bs!862993 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173818 lambda!173740))))

(declare-fun bs!863007 () Bool)

(assert (= bs!863007 (and b!4527971 b!4527806)))

(assert (=> bs!863007 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173818 lambda!173774))))

(assert (=> bs!862989 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703622) (= lambda!173818 lambda!173789))))

(assert (=> bs!862985 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703122) (= lambda!173818 lambda!173702))))

(declare-fun bs!863008 () Bool)

(assert (= bs!863008 (and b!4527971 b!4527808)))

(assert (=> bs!863008 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173818 lambda!173775))))

(declare-fun bs!863009 () Bool)

(assert (= bs!863009 (and b!4527971 d!1396260)))

(assert (=> bs!863009 (not (= lambda!173818 lambda!173651))))

(declare-fun bs!863010 () Bool)

(assert (= bs!863010 (and b!4527971 b!4527931)))

(assert (=> bs!863010 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173818 lambda!173803))))

(assert (=> bs!862987 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173818 lambda!173804))))

(declare-fun bs!863011 () Bool)

(assert (= bs!863011 (and b!4527971 d!1396498)))

(assert (=> bs!863011 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1702713) (= lambda!173818 lambda!173736))))

(declare-fun bs!863012 () Bool)

(assert (= bs!863012 (and b!4527971 d!1396564)))

(assert (=> bs!863012 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703262) (= lambda!173818 lambda!173746))))

(assert (=> bs!863008 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703571) (= lambda!173818 lambda!173776))))

(declare-fun bs!863013 () Bool)

(assert (= bs!863013 (and b!4527971 d!1396878)))

(assert (=> bs!863013 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703623) (= lambda!173818 lambda!173796))))

(declare-fun bs!863014 () Bool)

(assert (= bs!863014 (and b!4527971 d!1396572)))

(assert (=> bs!863014 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703122) (= lambda!173818 lambda!173753))))

(declare-fun bs!863015 () Bool)

(assert (= bs!863015 (and b!4527971 b!4526608)))

(assert (=> bs!863015 (not (= lambda!173818 lambda!173585))))

(declare-fun bs!863016 () Bool)

(assert (= bs!863016 (and b!4527971 d!1396892)))

(assert (=> bs!863016 (= (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703667) (= lambda!173818 lambda!173808))))

(assert (=> b!4527971 true))

(declare-fun lambda!173820 () Int)

(declare-fun lt!1703707 () ListMap!3613)

(assert (=> bs!862979 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173820 lambda!173785))))

(assert (=> bs!862982 (= (= lt!1703707 lt!1703123) (= lambda!173820 lambda!173703))))

(assert (=> bs!862983 (= (= lt!1703707 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173820 lambda!173739))))

(assert (=> bs!862985 (= (= lt!1703707 lt!1702724) (= lambda!173820 lambda!173701))))

(assert (=> bs!862987 (= (= lt!1703707 lt!1703666) (= lambda!173820 lambda!173805))))

(assert (=> bs!862989 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173820 lambda!173786))))

(assert (=> b!4527971 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173820 lambda!173818))))

(assert (=> bs!862991 (= (= lt!1703707 lt!1703158) (= lambda!173820 lambda!173713))))

(assert (=> bs!862993 (= (= lt!1703707 lt!1703261) (= lambda!173820 lambda!173743))))

(assert (=> bs!862996 (= (= lt!1703707 lt!1702713) (= lambda!173820 lambda!173711))))

(assert (=> bs!862998 (= (= lt!1703707 lt!1703159) (= lambda!173820 lambda!173714))))

(assert (=> bs!863000 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173820 lambda!173815))))

(assert (=> bs!863002 (= (= lt!1703707 lt!1702724) (= lambda!173820 lambda!173700))))

(assert (=> bs!862991 (= (= lt!1703707 lt!1702713) (= lambda!173820 lambda!173712))))

(assert (=> bs!863003 (= (= lt!1703707 lt!1703572) (= lambda!173820 lambda!173777))))

(assert (=> bs!863004 (not (= lambda!173820 lambda!173754))))

(assert (=> bs!862993 (= (= lt!1703707 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173820 lambda!173740))))

(assert (=> bs!863007 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173820 lambda!173774))))

(assert (=> bs!862989 (= (= lt!1703707 lt!1703622) (= lambda!173820 lambda!173789))))

(assert (=> bs!862985 (= (= lt!1703707 lt!1703122) (= lambda!173820 lambda!173702))))

(assert (=> bs!863008 (= (= lt!1703707 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173820 lambda!173775))))

(assert (=> bs!863009 (not (= lambda!173820 lambda!173651))))

(assert (=> bs!863010 (= (= lt!1703707 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173820 lambda!173803))))

(assert (=> bs!862987 (= (= lt!1703707 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173820 lambda!173804))))

(assert (=> bs!863011 (= (= lt!1703707 lt!1702713) (= lambda!173820 lambda!173736))))

(assert (=> bs!863012 (= (= lt!1703707 lt!1703262) (= lambda!173820 lambda!173746))))

(assert (=> bs!863008 (= (= lt!1703707 lt!1703571) (= lambda!173820 lambda!173776))))

(assert (=> bs!863013 (= (= lt!1703707 lt!1703623) (= lambda!173820 lambda!173796))))

(assert (=> bs!863014 (= (= lt!1703707 lt!1703122) (= lambda!173820 lambda!173753))))

(assert (=> bs!863015 (not (= lambda!173820 lambda!173585))))

(assert (=> bs!863016 (= (= lt!1703707 lt!1703667) (= lambda!173820 lambda!173808))))

(assert (=> b!4527971 true))

(declare-fun bs!863033 () Bool)

(declare-fun d!1396932 () Bool)

(assert (= bs!863033 (and d!1396932 b!4527887)))

(declare-fun lambda!173822 () Int)

(declare-fun lt!1703708 () ListMap!3613)

(assert (=> bs!863033 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173822 lambda!173785))))

(declare-fun bs!863034 () Bool)

(assert (= bs!863034 (and d!1396932 d!1396296)))

(assert (=> bs!863034 (= (= lt!1703708 lt!1703123) (= lambda!173822 lambda!173703))))

(declare-fun bs!863035 () Bool)

(assert (= bs!863035 (and d!1396932 b!4527305)))

(assert (=> bs!863035 (= (= lt!1703708 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173822 lambda!173739))))

(declare-fun bs!863036 () Bool)

(assert (= bs!863036 (and d!1396932 b!4526999)))

(assert (=> bs!863036 (= (= lt!1703708 lt!1702724) (= lambda!173822 lambda!173701))))

(declare-fun bs!863037 () Bool)

(assert (= bs!863037 (and d!1396932 b!4527933)))

(assert (=> bs!863037 (= (= lt!1703708 lt!1703666) (= lambda!173822 lambda!173805))))

(declare-fun bs!863038 () Bool)

(assert (= bs!863038 (and d!1396932 b!4527889)))

(assert (=> bs!863038 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173822 lambda!173786))))

(declare-fun bs!863039 () Bool)

(assert (= bs!863039 (and d!1396932 b!4527971)))

(assert (=> bs!863039 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173822 lambda!173818))))

(declare-fun bs!863040 () Bool)

(assert (= bs!863040 (and d!1396932 b!4527019)))

(assert (=> bs!863040 (= (= lt!1703708 lt!1703158) (= lambda!173822 lambda!173713))))

(declare-fun bs!863041 () Bool)

(assert (= bs!863041 (and d!1396932 b!4527307)))

(assert (=> bs!863041 (= (= lt!1703708 lt!1703261) (= lambda!173822 lambda!173743))))

(declare-fun bs!863042 () Bool)

(assert (= bs!863042 (and d!1396932 b!4527017)))

(assert (=> bs!863042 (= (= lt!1703708 lt!1702713) (= lambda!173822 lambda!173711))))

(declare-fun bs!863043 () Bool)

(assert (= bs!863043 (and d!1396932 d!1396390)))

(assert (=> bs!863043 (= (= lt!1703708 lt!1703159) (= lambda!173822 lambda!173714))))

(declare-fun bs!863044 () Bool)

(assert (= bs!863044 (and d!1396932 b!4527969)))

(assert (=> bs!863044 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173822 lambda!173815))))

(declare-fun bs!863045 () Bool)

(assert (= bs!863045 (and d!1396932 b!4526997)))

(assert (=> bs!863045 (= (= lt!1703708 lt!1702724) (= lambda!173822 lambda!173700))))

(assert (=> bs!863040 (= (= lt!1703708 lt!1702713) (= lambda!173822 lambda!173712))))

(declare-fun bs!863046 () Bool)

(assert (= bs!863046 (and d!1396932 d!1396804)))

(assert (=> bs!863046 (= (= lt!1703708 lt!1703572) (= lambda!173822 lambda!173777))))

(declare-fun bs!863047 () Bool)

(assert (= bs!863047 (and d!1396932 d!1396634)))

(assert (=> bs!863047 (not (= lambda!173822 lambda!173754))))

(assert (=> bs!863041 (= (= lt!1703708 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173822 lambda!173740))))

(declare-fun bs!863048 () Bool)

(assert (= bs!863048 (and d!1396932 b!4527806)))

(assert (=> bs!863048 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173822 lambda!173774))))

(assert (=> bs!863038 (= (= lt!1703708 lt!1703622) (= lambda!173822 lambda!173789))))

(assert (=> bs!863036 (= (= lt!1703708 lt!1703122) (= lambda!173822 lambda!173702))))

(declare-fun bs!863049 () Bool)

(assert (= bs!863049 (and d!1396932 b!4527808)))

(assert (=> bs!863049 (= (= lt!1703708 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173822 lambda!173775))))

(declare-fun bs!863050 () Bool)

(assert (= bs!863050 (and d!1396932 d!1396260)))

(assert (=> bs!863050 (not (= lambda!173822 lambda!173651))))

(declare-fun bs!863051 () Bool)

(assert (= bs!863051 (and d!1396932 b!4527931)))

(assert (=> bs!863051 (= (= lt!1703708 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173822 lambda!173803))))

(assert (=> bs!863037 (= (= lt!1703708 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173822 lambda!173804))))

(declare-fun bs!863052 () Bool)

(assert (= bs!863052 (and d!1396932 d!1396498)))

(assert (=> bs!863052 (= (= lt!1703708 lt!1702713) (= lambda!173822 lambda!173736))))

(assert (=> bs!863039 (= (= lt!1703708 lt!1703707) (= lambda!173822 lambda!173820))))

(declare-fun bs!863053 () Bool)

(assert (= bs!863053 (and d!1396932 d!1396564)))

(assert (=> bs!863053 (= (= lt!1703708 lt!1703262) (= lambda!173822 lambda!173746))))

(assert (=> bs!863049 (= (= lt!1703708 lt!1703571) (= lambda!173822 lambda!173776))))

(declare-fun bs!863054 () Bool)

(assert (= bs!863054 (and d!1396932 d!1396878)))

(assert (=> bs!863054 (= (= lt!1703708 lt!1703623) (= lambda!173822 lambda!173796))))

(declare-fun bs!863055 () Bool)

(assert (= bs!863055 (and d!1396932 d!1396572)))

(assert (=> bs!863055 (= (= lt!1703708 lt!1703122) (= lambda!173822 lambda!173753))))

(declare-fun bs!863056 () Bool)

(assert (= bs!863056 (and d!1396932 b!4526608)))

(assert (=> bs!863056 (not (= lambda!173822 lambda!173585))))

(declare-fun bs!863057 () Bool)

(assert (= bs!863057 (and d!1396932 d!1396892)))

(assert (=> bs!863057 (= (= lt!1703708 lt!1703667) (= lambda!173822 lambda!173808))))

(assert (=> d!1396932 true))

(declare-fun b!4527968 () Bool)

(declare-fun e!2821275 () Bool)

(assert (=> b!4527968 (= e!2821275 (invariantList!1027 (toList!4352 lt!1703708)))))

(declare-fun e!2821273 () ListMap!3613)

(assert (=> b!4527969 (= e!2821273 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))

(declare-fun lt!1703695 () Unit!96156)

(declare-fun call!315591 () Unit!96156)

(assert (=> b!4527969 (= lt!1703695 call!315591)))

(declare-fun call!315590 () Bool)

(assert (=> b!4527969 call!315590))

(declare-fun lt!1703694 () Unit!96156)

(assert (=> b!4527969 (= lt!1703694 lt!1703695)))

(declare-fun call!315592 () Bool)

(assert (=> b!4527969 call!315592))

(declare-fun lt!1703704 () Unit!96156)

(declare-fun Unit!96367 () Unit!96156)

(assert (=> b!4527969 (= lt!1703704 Unit!96367)))

(declare-fun e!2821274 () Bool)

(declare-fun b!4527970 () Bool)

(assert (=> b!4527970 (= e!2821274 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lambda!173820))))

(declare-fun b!4527972 () Bool)

(declare-fun res!1885356 () Bool)

(assert (=> b!4527972 (=> (not res!1885356) (not e!2821275))))

(assert (=> b!4527972 (= res!1885356 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lambda!173822))))

(declare-fun bm!315585 () Bool)

(assert (=> bm!315585 (= call!315591 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))

(assert (=> d!1396932 e!2821275))

(declare-fun res!1885355 () Bool)

(assert (=> d!1396932 (=> (not res!1885355) (not e!2821275))))

(assert (=> d!1396932 (= res!1885355 (forall!10293 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lambda!173822))))

(assert (=> d!1396932 (= lt!1703708 e!2821273)))

(declare-fun c!773073 () Bool)

(assert (=> d!1396932 (= c!773073 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))

(assert (=> d!1396932 (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))

(assert (=> d!1396932 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lt!1703708)))

(assert (=> b!4527971 (= e!2821273 lt!1703707)))

(declare-fun lt!1703710 () ListMap!3613)

(assert (=> b!4527971 (= lt!1703710 (+!1562 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))))

(assert (=> b!4527971 (= lt!1703707 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (+!1562 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))))

(declare-fun lt!1703705 () Unit!96156)

(assert (=> b!4527971 (= lt!1703705 call!315591)))

(assert (=> b!4527971 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lambda!173818)))

(declare-fun lt!1703699 () Unit!96156)

(assert (=> b!4527971 (= lt!1703699 lt!1703705)))

(assert (=> b!4527971 (forall!10293 (toList!4352 lt!1703710) lambda!173820)))

(declare-fun lt!1703697 () Unit!96156)

(declare-fun Unit!96369 () Unit!96156)

(assert (=> b!4527971 (= lt!1703697 Unit!96369)))

(assert (=> b!4527971 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lambda!173820)))

(declare-fun lt!1703702 () Unit!96156)

(declare-fun Unit!96370 () Unit!96156)

(assert (=> b!4527971 (= lt!1703702 Unit!96370)))

(declare-fun lt!1703706 () Unit!96156)

(declare-fun Unit!96371 () Unit!96156)

(assert (=> b!4527971 (= lt!1703706 Unit!96371)))

(declare-fun lt!1703701 () Unit!96156)

(assert (=> b!4527971 (= lt!1703701 (forallContained!2545 (toList!4352 lt!1703710) lambda!173820 (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))))

(assert (=> b!4527971 (contains!13427 lt!1703710 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))))

(declare-fun lt!1703691 () Unit!96156)

(declare-fun Unit!96372 () Unit!96156)

(assert (=> b!4527971 (= lt!1703691 Unit!96372)))

(assert (=> b!4527971 (contains!13427 lt!1703707 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))))

(declare-fun lt!1703692 () Unit!96156)

(declare-fun Unit!96373 () Unit!96156)

(assert (=> b!4527971 (= lt!1703692 Unit!96373)))

(assert (=> b!4527971 call!315590))

(declare-fun lt!1703696 () Unit!96156)

(declare-fun Unit!96374 () Unit!96156)

(assert (=> b!4527971 (= lt!1703696 Unit!96374)))

(assert (=> b!4527971 (forall!10293 (toList!4352 lt!1703710) lambda!173820)))

(declare-fun lt!1703700 () Unit!96156)

(declare-fun Unit!96375 () Unit!96156)

(assert (=> b!4527971 (= lt!1703700 Unit!96375)))

(declare-fun lt!1703693 () Unit!96156)

(declare-fun Unit!96376 () Unit!96156)

(assert (=> b!4527971 (= lt!1703693 Unit!96376)))

(declare-fun lt!1703709 () Unit!96156)

(assert (=> b!4527971 (= lt!1703709 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703707 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))))

(assert (=> b!4527971 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) lambda!173820)))

(declare-fun lt!1703711 () Unit!96156)

(assert (=> b!4527971 (= lt!1703711 lt!1703709)))

(assert (=> b!4527971 call!315592))

(declare-fun lt!1703703 () Unit!96156)

(declare-fun Unit!96377 () Unit!96156)

(assert (=> b!4527971 (= lt!1703703 Unit!96377)))

(declare-fun res!1885354 () Bool)

(assert (=> b!4527971 (= res!1885354 (forall!10293 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lambda!173820))))

(assert (=> b!4527971 (=> (not res!1885354) (not e!2821274))))

(assert (=> b!4527971 e!2821274))

(declare-fun lt!1703698 () Unit!96156)

(declare-fun Unit!96378 () Unit!96156)

(assert (=> b!4527971 (= lt!1703698 Unit!96378)))

(declare-fun bm!315586 () Bool)

(assert (=> bm!315586 (= call!315592 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (ite c!773073 lambda!173815 lambda!173820)))))

(declare-fun bm!315587 () Bool)

(assert (=> bm!315587 (= call!315590 (forall!10293 (ite c!773073 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (ite c!773073 lambda!173815 lambda!173820)))))

(assert (= (and d!1396932 c!773073) b!4527969))

(assert (= (and d!1396932 (not c!773073)) b!4527971))

(assert (= (and b!4527971 res!1885354) b!4527970))

(assert (= (or b!4527969 b!4527971) bm!315587))

(assert (= (or b!4527969 b!4527971) bm!315586))

(assert (= (or b!4527969 b!4527971) bm!315585))

(assert (= (and d!1396932 res!1885355) b!4527972))

(assert (= (and b!4527972 res!1885356) b!4527968))

(assert (=> bm!315585 m!5280707))

(declare-fun m!5282693 () Bool)

(assert (=> bm!315585 m!5282693))

(declare-fun m!5282695 () Bool)

(assert (=> b!4527970 m!5282695))

(declare-fun m!5282697 () Bool)

(assert (=> b!4527972 m!5282697))

(declare-fun m!5282699 () Bool)

(assert (=> d!1396932 m!5282699))

(declare-fun m!5282701 () Bool)

(assert (=> d!1396932 m!5282701))

(declare-fun m!5282703 () Bool)

(assert (=> bm!315587 m!5282703))

(declare-fun m!5282705 () Bool)

(assert (=> b!4527971 m!5282705))

(assert (=> b!4527971 m!5280707))

(declare-fun m!5282709 () Bool)

(assert (=> b!4527971 m!5282709))

(declare-fun m!5282711 () Bool)

(assert (=> b!4527971 m!5282711))

(assert (=> b!4527971 m!5282695))

(assert (=> b!4527971 m!5280707))

(declare-fun m!5282713 () Bool)

(assert (=> b!4527971 m!5282713))

(declare-fun m!5282715 () Bool)

(assert (=> b!4527971 m!5282715))

(assert (=> b!4527971 m!5282711))

(declare-fun m!5282717 () Bool)

(assert (=> b!4527971 m!5282717))

(declare-fun m!5282719 () Bool)

(assert (=> b!4527971 m!5282719))

(declare-fun m!5282721 () Bool)

(assert (=> b!4527971 m!5282721))

(assert (=> b!4527971 m!5282713))

(declare-fun m!5282725 () Bool)

(assert (=> b!4527971 m!5282725))

(declare-fun m!5282727 () Bool)

(assert (=> b!4527971 m!5282727))

(declare-fun m!5282729 () Bool)

(assert (=> bm!315586 m!5282729))

(declare-fun m!5282731 () Bool)

(assert (=> b!4527968 m!5282731))

(assert (=> b!4526835 d!1396932))

(declare-fun bs!863073 () Bool)

(declare-fun d!1396946 () Bool)

(assert (= bs!863073 (and d!1396946 d!1396254)))

(declare-fun lambda!173824 () Int)

(assert (=> bs!863073 (= lambda!173824 lambda!173645)))

(declare-fun bs!863074 () Bool)

(assert (= bs!863074 (and d!1396946 d!1396204)))

(assert (=> bs!863074 (= lambda!173824 lambda!173594)))

(declare-fun bs!863075 () Bool)

(assert (= bs!863075 (and d!1396946 d!1396880)))

(assert (=> bs!863075 (= lambda!173824 lambda!173799)))

(declare-fun bs!863076 () Bool)

(assert (= bs!863076 (and d!1396946 d!1396256)))

(assert (=> bs!863076 (= lambda!173824 lambda!173647)))

(declare-fun bs!863077 () Bool)

(assert (= bs!863077 (and d!1396946 d!1396916)))

(assert (=> bs!863077 (= lambda!173824 lambda!173810)))

(declare-fun bs!863078 () Bool)

(assert (= bs!863078 (and d!1396946 start!448604)))

(assert (=> bs!863078 (= lambda!173824 lambda!173583)))

(declare-fun bs!863079 () Bool)

(assert (= bs!863079 (and d!1396946 d!1396216)))

(assert (=> bs!863079 (= lambda!173824 lambda!173619)))

(declare-fun bs!863080 () Bool)

(assert (= bs!863080 (and d!1396946 d!1396822)))

(assert (=> bs!863080 (= lambda!173824 lambda!173778)))

(declare-fun bs!863081 () Bool)

(assert (= bs!863081 (and d!1396946 d!1396372)))

(assert (=> bs!863081 (= lambda!173824 lambda!173709)))

(declare-fun bs!863082 () Bool)

(assert (= bs!863082 (and d!1396946 b!4526608)))

(assert (=> bs!863082 (not (= lambda!173824 lambda!173584))))

(declare-fun bs!863083 () Bool)

(assert (= bs!863083 (and d!1396946 d!1396236)))

(assert (=> bs!863083 (= lambda!173824 lambda!173642)))

(declare-fun bs!863084 () Bool)

(assert (= bs!863084 (and d!1396946 d!1396392)))

(assert (=> bs!863084 (= lambda!173824 lambda!173715)))

(declare-fun bs!863085 () Bool)

(assert (= bs!863085 (and d!1396946 d!1396206)))

(assert (=> bs!863085 (= lambda!173824 lambda!173597)))

(declare-fun bs!863086 () Bool)

(assert (= bs!863086 (and d!1396946 d!1396278)))

(assert (=> bs!863086 (= lambda!173824 lambda!173656)))

(declare-fun bs!863087 () Bool)

(assert (= bs!863087 (and d!1396946 d!1396208)))

(assert (=> bs!863087 (= lambda!173824 lambda!173598)))

(declare-fun bs!863088 () Bool)

(assert (= bs!863088 (and d!1396946 d!1396730)))

(assert (=> bs!863088 (= lambda!173824 lambda!173766)))

(declare-fun bs!863089 () Bool)

(assert (= bs!863089 (and d!1396946 d!1396370)))

(assert (=> bs!863089 (not (= lambda!173824 lambda!173706))))

(declare-fun bs!863090 () Bool)

(assert (= bs!863090 (and d!1396946 d!1396380)))

(assert (=> bs!863090 (= lambda!173824 lambda!173710)))

(declare-fun lt!1703735 () ListMap!3613)

(assert (=> d!1396946 (invariantList!1027 (toList!4352 lt!1703735))))

(declare-fun e!2821288 () ListMap!3613)

(assert (=> d!1396946 (= lt!1703735 e!2821288)))

(declare-fun c!773078 () Bool)

(assert (=> d!1396946 (= c!773078 ((_ is Cons!50681) (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))

(assert (=> d!1396946 (forall!10291 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))) lambda!173824)))

(assert (=> d!1396946 (= (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) lt!1703735)))

(declare-fun b!4527990 () Bool)

(assert (=> b!4527990 (= e!2821288 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727)))))))))

(declare-fun b!4527991 () Bool)

(assert (=> b!4527991 (= e!2821288 (ListMap!3614 Nil!50680))))

(assert (= (and d!1396946 c!773078) b!4527990))

(assert (= (and d!1396946 (not c!773078)) b!4527991))

(declare-fun m!5282765 () Bool)

(assert (=> d!1396946 m!5282765))

(declare-fun m!5282767 () Bool)

(assert (=> d!1396946 m!5282767))

(declare-fun m!5282769 () Bool)

(assert (=> b!4527990 m!5282769))

(assert (=> b!4527990 m!5282769))

(declare-fun m!5282771 () Bool)

(assert (=> b!4527990 m!5282771))

(assert (=> b!4526835 d!1396946))

(declare-fun d!1396956 () Bool)

(declare-fun res!1885376 () Bool)

(declare-fun e!2821305 () Bool)

(assert (=> d!1396956 (=> res!1885376 e!2821305)))

(assert (=> d!1396956 (= res!1885376 ((_ is Nil!50680) (t!357766 (_2!28856 lt!1702727))))))

(assert (=> d!1396956 (= (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173713) e!2821305)))

(declare-fun b!4528014 () Bool)

(declare-fun e!2821306 () Bool)

(assert (=> b!4528014 (= e!2821305 e!2821306)))

(declare-fun res!1885377 () Bool)

(assert (=> b!4528014 (=> (not res!1885377) (not e!2821306))))

(assert (=> b!4528014 (= res!1885377 (dynLambda!21181 lambda!173713 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun b!4528015 () Bool)

(assert (=> b!4528015 (= e!2821306 (forall!10293 (t!357766 (t!357766 (_2!28856 lt!1702727))) lambda!173713))))

(assert (= (and d!1396956 (not res!1885376)) b!4528014))

(assert (= (and b!4528014 res!1885377) b!4528015))

(declare-fun b_lambda!156065 () Bool)

(assert (=> (not b_lambda!156065) (not b!4528014)))

(declare-fun m!5282773 () Bool)

(assert (=> b!4528014 m!5282773))

(declare-fun m!5282775 () Bool)

(assert (=> b!4528015 m!5282775))

(assert (=> b!4527019 d!1396956))

(declare-fun d!1396958 () Bool)

(declare-fun res!1885378 () Bool)

(declare-fun e!2821307 () Bool)

(assert (=> d!1396958 (=> res!1885378 e!2821307)))

(assert (=> d!1396958 (= res!1885378 ((_ is Nil!50680) (_2!28856 lt!1702727)))))

(assert (=> d!1396958 (= (forall!10293 (_2!28856 lt!1702727) lambda!173713) e!2821307)))

(declare-fun b!4528016 () Bool)

(declare-fun e!2821308 () Bool)

(assert (=> b!4528016 (= e!2821307 e!2821308)))

(declare-fun res!1885379 () Bool)

(assert (=> b!4528016 (=> (not res!1885379) (not e!2821308))))

(assert (=> b!4528016 (= res!1885379 (dynLambda!21181 lambda!173713 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun b!4528017 () Bool)

(assert (=> b!4528017 (= e!2821308 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173713))))

(assert (= (and d!1396958 (not res!1885378)) b!4528016))

(assert (= (and b!4528016 res!1885379) b!4528017))

(declare-fun b_lambda!156067 () Bool)

(assert (=> (not b_lambda!156067) (not b!4528016)))

(declare-fun m!5282785 () Bool)

(assert (=> b!4528016 m!5282785))

(assert (=> b!4528017 m!5281111))

(assert (=> b!4527019 d!1396958))

(declare-fun bs!863091 () Bool)

(declare-fun b!4528019 () Bool)

(assert (= bs!863091 (and b!4528019 b!4527887)))

(declare-fun lambda!173825 () Int)

(assert (=> bs!863091 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173825 lambda!173785))))

(declare-fun bs!863093 () Bool)

(assert (= bs!863093 (and b!4528019 d!1396296)))

(assert (=> bs!863093 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703123) (= lambda!173825 lambda!173703))))

(declare-fun bs!863095 () Bool)

(assert (= bs!863095 (and b!4528019 b!4527305)))

(assert (=> bs!863095 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173825 lambda!173739))))

(declare-fun bs!863097 () Bool)

(assert (= bs!863097 (and b!4528019 b!4526999)))

(assert (=> bs!863097 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173825 lambda!173701))))

(declare-fun bs!863099 () Bool)

(assert (= bs!863099 (and b!4528019 b!4527933)))

(assert (=> bs!863099 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703666) (= lambda!173825 lambda!173805))))

(declare-fun bs!863101 () Bool)

(assert (= bs!863101 (and b!4528019 b!4527889)))

(assert (=> bs!863101 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173825 lambda!173786))))

(declare-fun bs!863103 () Bool)

(assert (= bs!863103 (and b!4528019 b!4527971)))

(assert (=> bs!863103 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173825 lambda!173818))))

(declare-fun bs!863105 () Bool)

(assert (= bs!863105 (and b!4528019 b!4527019)))

(assert (=> bs!863105 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703158) (= lambda!173825 lambda!173713))))

(declare-fun bs!863107 () Bool)

(assert (= bs!863107 (and b!4528019 b!4527307)))

(assert (=> bs!863107 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703261) (= lambda!173825 lambda!173743))))

(declare-fun bs!863109 () Bool)

(assert (= bs!863109 (and b!4528019 b!4527017)))

(assert (=> bs!863109 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173825 lambda!173711))))

(declare-fun bs!863111 () Bool)

(assert (= bs!863111 (and b!4528019 d!1396390)))

(assert (=> bs!863111 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703159) (= lambda!173825 lambda!173714))))

(declare-fun bs!863113 () Bool)

(assert (= bs!863113 (and b!4528019 b!4527969)))

(assert (=> bs!863113 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173825 lambda!173815))))

(declare-fun bs!863115 () Bool)

(assert (= bs!863115 (and b!4528019 b!4526997)))

(assert (=> bs!863115 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173825 lambda!173700))))

(assert (=> bs!863105 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173825 lambda!173712))))

(declare-fun bs!863117 () Bool)

(assert (= bs!863117 (and b!4528019 d!1396804)))

(assert (=> bs!863117 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703572) (= lambda!173825 lambda!173777))))

(declare-fun bs!863118 () Bool)

(assert (= bs!863118 (and b!4528019 d!1396634)))

(assert (=> bs!863118 (not (= lambda!173825 lambda!173754))))

(assert (=> bs!863107 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173825 lambda!173740))))

(declare-fun bs!863120 () Bool)

(assert (= bs!863120 (and b!4528019 b!4527806)))

(assert (=> bs!863120 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173825 lambda!173774))))

(assert (=> bs!863101 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703622) (= lambda!173825 lambda!173789))))

(assert (=> bs!863097 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173825 lambda!173702))))

(declare-fun bs!863123 () Bool)

(assert (= bs!863123 (and b!4528019 d!1396932)))

(assert (=> bs!863123 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703708) (= lambda!173825 lambda!173822))))

(declare-fun bs!863125 () Bool)

(assert (= bs!863125 (and b!4528019 b!4527808)))

(assert (=> bs!863125 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173825 lambda!173775))))

(declare-fun bs!863126 () Bool)

(assert (= bs!863126 (and b!4528019 d!1396260)))

(assert (=> bs!863126 (not (= lambda!173825 lambda!173651))))

(declare-fun bs!863127 () Bool)

(assert (= bs!863127 (and b!4528019 b!4527931)))

(assert (=> bs!863127 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173825 lambda!173803))))

(assert (=> bs!863099 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173825 lambda!173804))))

(declare-fun bs!863128 () Bool)

(assert (= bs!863128 (and b!4528019 d!1396498)))

(assert (=> bs!863128 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173825 lambda!173736))))

(assert (=> bs!863103 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703707) (= lambda!173825 lambda!173820))))

(declare-fun bs!863129 () Bool)

(assert (= bs!863129 (and b!4528019 d!1396564)))

(assert (=> bs!863129 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703262) (= lambda!173825 lambda!173746))))

(assert (=> bs!863125 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703571) (= lambda!173825 lambda!173776))))

(declare-fun bs!863131 () Bool)

(assert (= bs!863131 (and b!4528019 d!1396878)))

(assert (=> bs!863131 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703623) (= lambda!173825 lambda!173796))))

(declare-fun bs!863132 () Bool)

(assert (= bs!863132 (and b!4528019 d!1396572)))

(assert (=> bs!863132 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173825 lambda!173753))))

(declare-fun bs!863133 () Bool)

(assert (= bs!863133 (and b!4528019 b!4526608)))

(assert (=> bs!863133 (not (= lambda!173825 lambda!173585))))

(declare-fun bs!863134 () Bool)

(assert (= bs!863134 (and b!4528019 d!1396892)))

(assert (=> bs!863134 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703667) (= lambda!173825 lambda!173808))))

(assert (=> b!4528019 true))

(declare-fun bs!863138 () Bool)

(declare-fun b!4528021 () Bool)

(assert (= bs!863138 (and b!4528021 b!4527887)))

(declare-fun lambda!173828 () Int)

(assert (=> bs!863138 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173828 lambda!173785))))

(declare-fun bs!863140 () Bool)

(assert (= bs!863140 (and b!4528021 d!1396296)))

(assert (=> bs!863140 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703123) (= lambda!173828 lambda!173703))))

(declare-fun bs!863142 () Bool)

(assert (= bs!863142 (and b!4528021 b!4527305)))

(assert (=> bs!863142 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173828 lambda!173739))))

(declare-fun bs!863144 () Bool)

(assert (= bs!863144 (and b!4528021 b!4526999)))

(assert (=> bs!863144 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173828 lambda!173701))))

(declare-fun bs!863146 () Bool)

(assert (= bs!863146 (and b!4528021 b!4527933)))

(assert (=> bs!863146 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703666) (= lambda!173828 lambda!173805))))

(declare-fun bs!863148 () Bool)

(assert (= bs!863148 (and b!4528021 b!4527889)))

(assert (=> bs!863148 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173828 lambda!173786))))

(declare-fun bs!863150 () Bool)

(assert (= bs!863150 (and b!4528021 b!4527971)))

(assert (=> bs!863150 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173828 lambda!173818))))

(declare-fun bs!863152 () Bool)

(assert (= bs!863152 (and b!4528021 b!4527019)))

(assert (=> bs!863152 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703158) (= lambda!173828 lambda!173713))))

(declare-fun bs!863154 () Bool)

(assert (= bs!863154 (and b!4528021 b!4528019)))

(assert (=> bs!863154 (= lambda!173828 lambda!173825)))

(declare-fun bs!863155 () Bool)

(assert (= bs!863155 (and b!4528021 b!4527307)))

(assert (=> bs!863155 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703261) (= lambda!173828 lambda!173743))))

(declare-fun bs!863156 () Bool)

(assert (= bs!863156 (and b!4528021 b!4527017)))

(assert (=> bs!863156 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173828 lambda!173711))))

(declare-fun bs!863157 () Bool)

(assert (= bs!863157 (and b!4528021 d!1396390)))

(assert (=> bs!863157 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703159) (= lambda!173828 lambda!173714))))

(declare-fun bs!863159 () Bool)

(assert (= bs!863159 (and b!4528021 b!4527969)))

(assert (=> bs!863159 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173828 lambda!173815))))

(declare-fun bs!863161 () Bool)

(assert (= bs!863161 (and b!4528021 b!4526997)))

(assert (=> bs!863161 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702724) (= lambda!173828 lambda!173700))))

(assert (=> bs!863152 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173828 lambda!173712))))

(declare-fun bs!863163 () Bool)

(assert (= bs!863163 (and b!4528021 d!1396804)))

(assert (=> bs!863163 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703572) (= lambda!173828 lambda!173777))))

(declare-fun bs!863164 () Bool)

(assert (= bs!863164 (and b!4528021 d!1396634)))

(assert (=> bs!863164 (not (= lambda!173828 lambda!173754))))

(assert (=> bs!863155 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173828 lambda!173740))))

(declare-fun bs!863166 () Bool)

(assert (= bs!863166 (and b!4528021 b!4527806)))

(assert (=> bs!863166 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173828 lambda!173774))))

(assert (=> bs!863148 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703622) (= lambda!173828 lambda!173789))))

(assert (=> bs!863144 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173828 lambda!173702))))

(declare-fun bs!863168 () Bool)

(assert (= bs!863168 (and b!4528021 d!1396932)))

(assert (=> bs!863168 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703708) (= lambda!173828 lambda!173822))))

(declare-fun bs!863170 () Bool)

(assert (= bs!863170 (and b!4528021 b!4527808)))

(assert (=> bs!863170 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173828 lambda!173775))))

(declare-fun bs!863172 () Bool)

(assert (= bs!863172 (and b!4528021 d!1396260)))

(assert (=> bs!863172 (not (= lambda!173828 lambda!173651))))

(declare-fun bs!863173 () Bool)

(assert (= bs!863173 (and b!4528021 b!4527931)))

(assert (=> bs!863173 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173828 lambda!173803))))

(assert (=> bs!863146 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173828 lambda!173804))))

(declare-fun bs!863174 () Bool)

(assert (= bs!863174 (and b!4528021 d!1396498)))

(assert (=> bs!863174 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1702713) (= lambda!173828 lambda!173736))))

(assert (=> bs!863150 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703707) (= lambda!173828 lambda!173820))))

(declare-fun bs!863175 () Bool)

(assert (= bs!863175 (and b!4528021 d!1396564)))

(assert (=> bs!863175 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703262) (= lambda!173828 lambda!173746))))

(assert (=> bs!863170 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703571) (= lambda!173828 lambda!173776))))

(declare-fun bs!863177 () Bool)

(assert (= bs!863177 (and b!4528021 d!1396878)))

(assert (=> bs!863177 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703623) (= lambda!173828 lambda!173796))))

(declare-fun bs!863179 () Bool)

(assert (= bs!863179 (and b!4528021 d!1396572)))

(assert (=> bs!863179 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703122) (= lambda!173828 lambda!173753))))

(declare-fun bs!863181 () Bool)

(assert (= bs!863181 (and b!4528021 b!4526608)))

(assert (=> bs!863181 (not (= lambda!173828 lambda!173585))))

(declare-fun bs!863183 () Bool)

(assert (= bs!863183 (and b!4528021 d!1396892)))

(assert (=> bs!863183 (= (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703667) (= lambda!173828 lambda!173808))))

(assert (=> b!4528021 true))

(declare-fun lambda!173830 () Int)

(declare-fun lt!1703768 () ListMap!3613)

(assert (=> bs!863138 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173830 lambda!173785))))

(assert (=> bs!863140 (= (= lt!1703768 lt!1703123) (= lambda!173830 lambda!173703))))

(assert (=> bs!863142 (= (= lt!1703768 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173830 lambda!173739))))

(assert (=> bs!863144 (= (= lt!1703768 lt!1702724) (= lambda!173830 lambda!173701))))

(assert (=> bs!863146 (= (= lt!1703768 lt!1703666) (= lambda!173830 lambda!173805))))

(assert (=> bs!863148 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173830 lambda!173786))))

(assert (=> bs!863150 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173830 lambda!173818))))

(assert (=> bs!863152 (= (= lt!1703768 lt!1703158) (= lambda!173830 lambda!173713))))

(assert (=> bs!863155 (= (= lt!1703768 lt!1703261) (= lambda!173830 lambda!173743))))

(assert (=> bs!863156 (= (= lt!1703768 lt!1702713) (= lambda!173830 lambda!173711))))

(assert (=> bs!863157 (= (= lt!1703768 lt!1703159) (= lambda!173830 lambda!173714))))

(assert (=> bs!863159 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173830 lambda!173815))))

(assert (=> bs!863161 (= (= lt!1703768 lt!1702724) (= lambda!173830 lambda!173700))))

(assert (=> bs!863152 (= (= lt!1703768 lt!1702713) (= lambda!173830 lambda!173712))))

(assert (=> bs!863163 (= (= lt!1703768 lt!1703572) (= lambda!173830 lambda!173777))))

(assert (=> bs!863164 (not (= lambda!173830 lambda!173754))))

(assert (=> bs!863154 (= (= lt!1703768 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173830 lambda!173825))))

(assert (=> b!4528021 (= (= lt!1703768 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173830 lambda!173828))))

(assert (=> bs!863155 (= (= lt!1703768 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173830 lambda!173740))))

(assert (=> bs!863166 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173830 lambda!173774))))

(assert (=> bs!863148 (= (= lt!1703768 lt!1703622) (= lambda!173830 lambda!173789))))

(assert (=> bs!863144 (= (= lt!1703768 lt!1703122) (= lambda!173830 lambda!173702))))

(assert (=> bs!863168 (= (= lt!1703768 lt!1703708) (= lambda!173830 lambda!173822))))

(assert (=> bs!863170 (= (= lt!1703768 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173830 lambda!173775))))

(assert (=> bs!863172 (not (= lambda!173830 lambda!173651))))

(assert (=> bs!863173 (= (= lt!1703768 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173830 lambda!173803))))

(assert (=> bs!863146 (= (= lt!1703768 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173830 lambda!173804))))

(assert (=> bs!863174 (= (= lt!1703768 lt!1702713) (= lambda!173830 lambda!173736))))

(assert (=> bs!863150 (= (= lt!1703768 lt!1703707) (= lambda!173830 lambda!173820))))

(assert (=> bs!863175 (= (= lt!1703768 lt!1703262) (= lambda!173830 lambda!173746))))

(assert (=> bs!863170 (= (= lt!1703768 lt!1703571) (= lambda!173830 lambda!173776))))

(assert (=> bs!863177 (= (= lt!1703768 lt!1703623) (= lambda!173830 lambda!173796))))

(assert (=> bs!863179 (= (= lt!1703768 lt!1703122) (= lambda!173830 lambda!173753))))

(assert (=> bs!863181 (not (= lambda!173830 lambda!173585))))

(assert (=> bs!863183 (= (= lt!1703768 lt!1703667) (= lambda!173830 lambda!173808))))

(assert (=> b!4528021 true))

(declare-fun bs!863199 () Bool)

(declare-fun d!1396960 () Bool)

(assert (= bs!863199 (and d!1396960 b!4527887)))

(declare-fun lt!1703769 () ListMap!3613)

(declare-fun lambda!173832 () Int)

(assert (=> bs!863199 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173832 lambda!173785))))

(declare-fun bs!863200 () Bool)

(assert (= bs!863200 (and d!1396960 d!1396296)))

(assert (=> bs!863200 (= (= lt!1703769 lt!1703123) (= lambda!173832 lambda!173703))))

(declare-fun bs!863201 () Bool)

(assert (= bs!863201 (and d!1396960 b!4528021)))

(assert (=> bs!863201 (= (= lt!1703769 lt!1703768) (= lambda!173832 lambda!173830))))

(declare-fun bs!863202 () Bool)

(assert (= bs!863202 (and d!1396960 b!4527305)))

(assert (=> bs!863202 (= (= lt!1703769 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173832 lambda!173739))))

(declare-fun bs!863203 () Bool)

(assert (= bs!863203 (and d!1396960 b!4526999)))

(assert (=> bs!863203 (= (= lt!1703769 lt!1702724) (= lambda!173832 lambda!173701))))

(declare-fun bs!863204 () Bool)

(assert (= bs!863204 (and d!1396960 b!4527933)))

(assert (=> bs!863204 (= (= lt!1703769 lt!1703666) (= lambda!173832 lambda!173805))))

(declare-fun bs!863205 () Bool)

(assert (= bs!863205 (and d!1396960 b!4527889)))

(assert (=> bs!863205 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173832 lambda!173786))))

(declare-fun bs!863206 () Bool)

(assert (= bs!863206 (and d!1396960 b!4527971)))

(assert (=> bs!863206 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173832 lambda!173818))))

(declare-fun bs!863207 () Bool)

(assert (= bs!863207 (and d!1396960 b!4527019)))

(assert (=> bs!863207 (= (= lt!1703769 lt!1703158) (= lambda!173832 lambda!173713))))

(declare-fun bs!863209 () Bool)

(assert (= bs!863209 (and d!1396960 b!4527307)))

(assert (=> bs!863209 (= (= lt!1703769 lt!1703261) (= lambda!173832 lambda!173743))))

(declare-fun bs!863211 () Bool)

(assert (= bs!863211 (and d!1396960 b!4527017)))

(assert (=> bs!863211 (= (= lt!1703769 lt!1702713) (= lambda!173832 lambda!173711))))

(declare-fun bs!863213 () Bool)

(assert (= bs!863213 (and d!1396960 d!1396390)))

(assert (=> bs!863213 (= (= lt!1703769 lt!1703159) (= lambda!173832 lambda!173714))))

(declare-fun bs!863215 () Bool)

(assert (= bs!863215 (and d!1396960 b!4527969)))

(assert (=> bs!863215 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173832 lambda!173815))))

(declare-fun bs!863217 () Bool)

(assert (= bs!863217 (and d!1396960 b!4526997)))

(assert (=> bs!863217 (= (= lt!1703769 lt!1702724) (= lambda!173832 lambda!173700))))

(assert (=> bs!863207 (= (= lt!1703769 lt!1702713) (= lambda!173832 lambda!173712))))

(declare-fun bs!863220 () Bool)

(assert (= bs!863220 (and d!1396960 d!1396804)))

(assert (=> bs!863220 (= (= lt!1703769 lt!1703572) (= lambda!173832 lambda!173777))))

(declare-fun bs!863222 () Bool)

(assert (= bs!863222 (and d!1396960 d!1396634)))

(assert (=> bs!863222 (not (= lambda!173832 lambda!173754))))

(declare-fun bs!863224 () Bool)

(assert (= bs!863224 (and d!1396960 b!4528019)))

(assert (=> bs!863224 (= (= lt!1703769 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173832 lambda!173825))))

(assert (=> bs!863201 (= (= lt!1703769 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173832 lambda!173828))))

(assert (=> bs!863209 (= (= lt!1703769 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173832 lambda!173740))))

(declare-fun bs!863227 () Bool)

(assert (= bs!863227 (and d!1396960 b!4527806)))

(assert (=> bs!863227 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173832 lambda!173774))))

(assert (=> bs!863205 (= (= lt!1703769 lt!1703622) (= lambda!173832 lambda!173789))))

(assert (=> bs!863203 (= (= lt!1703769 lt!1703122) (= lambda!173832 lambda!173702))))

(declare-fun bs!863231 () Bool)

(assert (= bs!863231 (and d!1396960 d!1396932)))

(assert (=> bs!863231 (= (= lt!1703769 lt!1703708) (= lambda!173832 lambda!173822))))

(declare-fun bs!863233 () Bool)

(assert (= bs!863233 (and d!1396960 b!4527808)))

(assert (=> bs!863233 (= (= lt!1703769 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173832 lambda!173775))))

(declare-fun bs!863234 () Bool)

(assert (= bs!863234 (and d!1396960 d!1396260)))

(assert (=> bs!863234 (not (= lambda!173832 lambda!173651))))

(declare-fun bs!863236 () Bool)

(assert (= bs!863236 (and d!1396960 b!4527931)))

(assert (=> bs!863236 (= (= lt!1703769 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173832 lambda!173803))))

(assert (=> bs!863204 (= (= lt!1703769 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173832 lambda!173804))))

(declare-fun bs!863238 () Bool)

(assert (= bs!863238 (and d!1396960 d!1396498)))

(assert (=> bs!863238 (= (= lt!1703769 lt!1702713) (= lambda!173832 lambda!173736))))

(assert (=> bs!863206 (= (= lt!1703769 lt!1703707) (= lambda!173832 lambda!173820))))

(declare-fun bs!863239 () Bool)

(assert (= bs!863239 (and d!1396960 d!1396564)))

(assert (=> bs!863239 (= (= lt!1703769 lt!1703262) (= lambda!173832 lambda!173746))))

(assert (=> bs!863233 (= (= lt!1703769 lt!1703571) (= lambda!173832 lambda!173776))))

(declare-fun bs!863241 () Bool)

(assert (= bs!863241 (and d!1396960 d!1396878)))

(assert (=> bs!863241 (= (= lt!1703769 lt!1703623) (= lambda!173832 lambda!173796))))

(declare-fun bs!863243 () Bool)

(assert (= bs!863243 (and d!1396960 d!1396572)))

(assert (=> bs!863243 (= (= lt!1703769 lt!1703122) (= lambda!173832 lambda!173753))))

(declare-fun bs!863245 () Bool)

(assert (= bs!863245 (and d!1396960 b!4526608)))

(assert (=> bs!863245 (not (= lambda!173832 lambda!173585))))

(declare-fun bs!863246 () Bool)

(assert (= bs!863246 (and d!1396960 d!1396892)))

(assert (=> bs!863246 (= (= lt!1703769 lt!1703667) (= lambda!173832 lambda!173808))))

(assert (=> d!1396960 true))

(declare-fun b!4528018 () Bool)

(declare-fun e!2821311 () Bool)

(assert (=> b!4528018 (= e!2821311 (invariantList!1027 (toList!4352 lt!1703769)))))

(declare-fun e!2821309 () ListMap!3613)

(assert (=> b!4528019 (= e!2821309 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun lt!1703756 () Unit!96156)

(declare-fun call!315599 () Unit!96156)

(assert (=> b!4528019 (= lt!1703756 call!315599)))

(declare-fun call!315598 () Bool)

(assert (=> b!4528019 call!315598))

(declare-fun lt!1703755 () Unit!96156)

(assert (=> b!4528019 (= lt!1703755 lt!1703756)))

(declare-fun call!315600 () Bool)

(assert (=> b!4528019 call!315600))

(declare-fun lt!1703765 () Unit!96156)

(declare-fun Unit!96390 () Unit!96156)

(assert (=> b!4528019 (= lt!1703765 Unit!96390)))

(declare-fun e!2821310 () Bool)

(declare-fun b!4528020 () Bool)

(assert (=> b!4528020 (= e!2821310 (forall!10293 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) lambda!173830))))

(declare-fun b!4528022 () Bool)

(declare-fun res!1885382 () Bool)

(assert (=> b!4528022 (=> (not res!1885382) (not e!2821311))))

(assert (=> b!4528022 (= res!1885382 (forall!10293 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) lambda!173832))))

(declare-fun bm!315593 () Bool)

(assert (=> bm!315593 (= call!315599 (lemmaContainsAllItsOwnKeys!348 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396960 e!2821311))

(declare-fun res!1885381 () Bool)

(assert (=> d!1396960 (=> (not res!1885381) (not e!2821311))))

(assert (=> d!1396960 (= res!1885381 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173832))))

(assert (=> d!1396960 (= lt!1703769 e!2821309)))

(declare-fun c!773085 () Bool)

(assert (=> d!1396960 (= c!773085 ((_ is Nil!50680) (t!357766 (_2!28856 lt!1702727))))))

(assert (=> d!1396960 (noDuplicateKeys!1172 (t!357766 (_2!28856 lt!1702727)))))

(assert (=> d!1396960 (= (addToMapMapFromBucket!699 (t!357766 (_2!28856 lt!1702727)) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) lt!1703769)))

(assert (=> b!4528021 (= e!2821309 lt!1703768)))

(declare-fun lt!1703771 () ListMap!3613)

(assert (=> b!4528021 (= lt!1703771 (+!1562 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(assert (=> b!4528021 (= lt!1703768 (addToMapMapFromBucket!699 (t!357766 (t!357766 (_2!28856 lt!1702727))) (+!1562 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(declare-fun lt!1703766 () Unit!96156)

(assert (=> b!4528021 (= lt!1703766 call!315599)))

(assert (=> b!4528021 (forall!10293 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) lambda!173828)))

(declare-fun lt!1703760 () Unit!96156)

(assert (=> b!4528021 (= lt!1703760 lt!1703766)))

(assert (=> b!4528021 (forall!10293 (toList!4352 lt!1703771) lambda!173830)))

(declare-fun lt!1703758 () Unit!96156)

(declare-fun Unit!96391 () Unit!96156)

(assert (=> b!4528021 (= lt!1703758 Unit!96391)))

(assert (=> b!4528021 (forall!10293 (t!357766 (t!357766 (_2!28856 lt!1702727))) lambda!173830)))

(declare-fun lt!1703763 () Unit!96156)

(declare-fun Unit!96392 () Unit!96156)

(assert (=> b!4528021 (= lt!1703763 Unit!96392)))

(declare-fun lt!1703767 () Unit!96156)

(declare-fun Unit!96393 () Unit!96156)

(assert (=> b!4528021 (= lt!1703767 Unit!96393)))

(declare-fun lt!1703762 () Unit!96156)

(assert (=> b!4528021 (= lt!1703762 (forallContained!2545 (toList!4352 lt!1703771) lambda!173830 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(assert (=> b!4528021 (contains!13427 lt!1703771 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703752 () Unit!96156)

(declare-fun Unit!96394 () Unit!96156)

(assert (=> b!4528021 (= lt!1703752 Unit!96394)))

(assert (=> b!4528021 (contains!13427 lt!1703768 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703753 () Unit!96156)

(declare-fun Unit!96395 () Unit!96156)

(assert (=> b!4528021 (= lt!1703753 Unit!96395)))

(assert (=> b!4528021 call!315598))

(declare-fun lt!1703757 () Unit!96156)

(declare-fun Unit!96396 () Unit!96156)

(assert (=> b!4528021 (= lt!1703757 Unit!96396)))

(assert (=> b!4528021 (forall!10293 (toList!4352 lt!1703771) lambda!173830)))

(declare-fun lt!1703761 () Unit!96156)

(declare-fun Unit!96397 () Unit!96156)

(assert (=> b!4528021 (= lt!1703761 Unit!96397)))

(declare-fun lt!1703754 () Unit!96156)

(declare-fun Unit!96398 () Unit!96156)

(assert (=> b!4528021 (= lt!1703754 Unit!96398)))

(declare-fun lt!1703770 () Unit!96156)

(assert (=> b!4528021 (= lt!1703770 (addForallContainsKeyThenBeforeAdding!348 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703768 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))) (_2!28855 (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(assert (=> b!4528021 (forall!10293 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) lambda!173830)))

(declare-fun lt!1703772 () Unit!96156)

(assert (=> b!4528021 (= lt!1703772 lt!1703770)))

(assert (=> b!4528021 call!315600))

(declare-fun lt!1703764 () Unit!96156)

(declare-fun Unit!96399 () Unit!96156)

(assert (=> b!4528021 (= lt!1703764 Unit!96399)))

(declare-fun res!1885380 () Bool)

(assert (=> b!4528021 (= res!1885380 (forall!10293 (t!357766 (_2!28856 lt!1702727)) lambda!173830))))

(assert (=> b!4528021 (=> (not res!1885380) (not e!2821310))))

(assert (=> b!4528021 e!2821310))

(declare-fun lt!1703759 () Unit!96156)

(declare-fun Unit!96400 () Unit!96156)

(assert (=> b!4528021 (= lt!1703759 Unit!96400)))

(declare-fun bm!315594 () Bool)

(assert (=> bm!315594 (= call!315600 (forall!10293 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (ite c!773085 lambda!173825 lambda!173830)))))

(declare-fun bm!315595 () Bool)

(assert (=> bm!315595 (= call!315598 (forall!10293 (ite c!773085 (toList!4352 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (t!357766 (_2!28856 lt!1702727))) (ite c!773085 lambda!173825 lambda!173830)))))

(assert (= (and d!1396960 c!773085) b!4528019))

(assert (= (and d!1396960 (not c!773085)) b!4528021))

(assert (= (and b!4528021 res!1885380) b!4528020))

(assert (= (or b!4528019 b!4528021) bm!315595))

(assert (= (or b!4528019 b!4528021) bm!315594))

(assert (= (or b!4528019 b!4528021) bm!315593))

(assert (= (and d!1396960 res!1885381) b!4528022))

(assert (= (and b!4528022 res!1885382) b!4528018))

(assert (=> bm!315593 m!5281099))

(declare-fun m!5282817 () Bool)

(assert (=> bm!315593 m!5282817))

(declare-fun m!5282821 () Bool)

(assert (=> b!4528020 m!5282821))

(declare-fun m!5282825 () Bool)

(assert (=> b!4528022 m!5282825))

(declare-fun m!5282829 () Bool)

(assert (=> d!1396960 m!5282829))

(assert (=> d!1396960 m!5280413))

(declare-fun m!5282835 () Bool)

(assert (=> bm!315595 m!5282835))

(declare-fun m!5282839 () Bool)

(assert (=> b!4528021 m!5282839))

(assert (=> b!4528021 m!5281099))

(declare-fun m!5282843 () Bool)

(assert (=> b!4528021 m!5282843))

(declare-fun m!5282845 () Bool)

(assert (=> b!4528021 m!5282845))

(assert (=> b!4528021 m!5282821))

(assert (=> b!4528021 m!5281099))

(declare-fun m!5282849 () Bool)

(assert (=> b!4528021 m!5282849))

(declare-fun m!5282855 () Bool)

(assert (=> b!4528021 m!5282855))

(assert (=> b!4528021 m!5282845))

(declare-fun m!5282859 () Bool)

(assert (=> b!4528021 m!5282859))

(declare-fun m!5282861 () Bool)

(assert (=> b!4528021 m!5282861))

(declare-fun m!5282863 () Bool)

(assert (=> b!4528021 m!5282863))

(assert (=> b!4528021 m!5282849))

(declare-fun m!5282865 () Bool)

(assert (=> b!4528021 m!5282865))

(declare-fun m!5282867 () Bool)

(assert (=> b!4528021 m!5282867))

(declare-fun m!5282869 () Bool)

(assert (=> bm!315594 m!5282869))

(declare-fun m!5282871 () Bool)

(assert (=> b!4528018 m!5282871))

(assert (=> b!4527019 d!1396960))

(declare-fun d!1396968 () Bool)

(assert (=> d!1396968 (dynLambda!21181 lambda!173713 (h!56543 (_2!28856 lt!1702727)))))

(declare-fun lt!1703796 () Unit!96156)

(assert (=> d!1396968 (= lt!1703796 (choose!29661 (toList!4352 lt!1703161) lambda!173713 (h!56543 (_2!28856 lt!1702727))))))

(declare-fun e!2821316 () Bool)

(assert (=> d!1396968 e!2821316))

(declare-fun res!1885387 () Bool)

(assert (=> d!1396968 (=> (not res!1885387) (not e!2821316))))

(assert (=> d!1396968 (= res!1885387 (forall!10293 (toList!4352 lt!1703161) lambda!173713))))

(assert (=> d!1396968 (= (forallContained!2545 (toList!4352 lt!1703161) lambda!173713 (h!56543 (_2!28856 lt!1702727))) lt!1703796)))

(declare-fun b!4528029 () Bool)

(assert (=> b!4528029 (= e!2821316 (contains!13433 (toList!4352 lt!1703161) (h!56543 (_2!28856 lt!1702727))))))

(assert (= (and d!1396968 res!1885387) b!4528029))

(declare-fun b_lambda!156071 () Bool)

(assert (=> (not b_lambda!156071) (not d!1396968)))

(assert (=> d!1396968 m!5282785))

(declare-fun m!5282879 () Bool)

(assert (=> d!1396968 m!5282879))

(assert (=> d!1396968 m!5281097))

(declare-fun m!5282881 () Bool)

(assert (=> b!4528029 m!5282881))

(assert (=> b!4527019 d!1396968))

(declare-fun d!1396972 () Bool)

(declare-fun res!1885390 () Bool)

(declare-fun e!2821319 () Bool)

(assert (=> d!1396972 (=> res!1885390 e!2821319)))

(assert (=> d!1396972 (= res!1885390 ((_ is Nil!50680) (toList!4352 lt!1703161)))))

(assert (=> d!1396972 (= (forall!10293 (toList!4352 lt!1703161) lambda!173713) e!2821319)))

(declare-fun b!4528032 () Bool)

(declare-fun e!2821320 () Bool)

(assert (=> b!4528032 (= e!2821319 e!2821320)))

(declare-fun res!1885391 () Bool)

(assert (=> b!4528032 (=> (not res!1885391) (not e!2821320))))

(assert (=> b!4528032 (= res!1885391 (dynLambda!21181 lambda!173713 (h!56543 (toList!4352 lt!1703161))))))

(declare-fun b!4528033 () Bool)

(assert (=> b!4528033 (= e!2821320 (forall!10293 (t!357766 (toList!4352 lt!1703161)) lambda!173713))))

(assert (= (and d!1396972 (not res!1885390)) b!4528032))

(assert (= (and b!4528032 res!1885391) b!4528033))

(declare-fun b_lambda!156075 () Bool)

(assert (=> (not b_lambda!156075) (not b!4528032)))

(declare-fun m!5282887 () Bool)

(assert (=> b!4528032 m!5282887))

(declare-fun m!5282889 () Bool)

(assert (=> b!4528033 m!5282889))

(assert (=> b!4527019 d!1396972))

(assert (=> b!4527019 d!1396736))

(declare-fun b!4528036 () Bool)

(declare-fun e!2821323 () List!50807)

(assert (=> b!4528036 (= e!2821323 (keys!17616 lt!1703158))))

(declare-fun d!1396976 () Bool)

(declare-fun e!2821328 () Bool)

(assert (=> d!1396976 e!2821328))

(declare-fun res!1885394 () Bool)

(assert (=> d!1396976 (=> res!1885394 e!2821328)))

(declare-fun e!2821327 () Bool)

(assert (=> d!1396976 (= res!1885394 e!2821327)))

(declare-fun res!1885396 () Bool)

(assert (=> d!1396976 (=> (not res!1885396) (not e!2821327))))

(declare-fun lt!1703800 () Bool)

(assert (=> d!1396976 (= res!1885396 (not lt!1703800))))

(declare-fun lt!1703802 () Bool)

(assert (=> d!1396976 (= lt!1703800 lt!1703802)))

(declare-fun lt!1703803 () Unit!96156)

(declare-fun e!2821326 () Unit!96156)

(assert (=> d!1396976 (= lt!1703803 e!2821326)))

(declare-fun c!773088 () Bool)

(assert (=> d!1396976 (= c!773088 lt!1703802)))

(assert (=> d!1396976 (= lt!1703802 (containsKey!1814 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396976 (= (contains!13427 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703800)))

(declare-fun b!4528037 () Bool)

(declare-fun e!2821325 () Unit!96156)

(declare-fun Unit!96401 () Unit!96156)

(assert (=> b!4528037 (= e!2821325 Unit!96401)))

(declare-fun bm!315599 () Bool)

(declare-fun call!315604 () Bool)

(assert (=> bm!315599 (= call!315604 (contains!13431 e!2821323 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun c!773089 () Bool)

(assert (=> bm!315599 (= c!773089 c!773088)))

(declare-fun b!4528038 () Bool)

(assert (=> b!4528038 (= e!2821323 (getKeysList!475 (toList!4352 lt!1703158)))))

(declare-fun b!4528039 () Bool)

(declare-fun e!2821324 () Bool)

(assert (=> b!4528039 (= e!2821328 e!2821324)))

(declare-fun res!1885395 () Bool)

(assert (=> b!4528039 (=> (not res!1885395) (not e!2821324))))

(assert (=> b!4528039 (= res!1885395 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4528040 () Bool)

(assert (=> b!4528040 (= e!2821324 (contains!13431 (keys!17616 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun b!4528041 () Bool)

(assert (=> b!4528041 (= e!2821327 (not (contains!13431 (keys!17616 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4528042 () Bool)

(assert (=> b!4528042 false))

(declare-fun lt!1703801 () Unit!96156)

(declare-fun lt!1703799 () Unit!96156)

(assert (=> b!4528042 (= lt!1703801 lt!1703799)))

(assert (=> b!4528042 (containsKey!1814 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4528042 (= lt!1703799 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun Unit!96402 () Unit!96156)

(assert (=> b!4528042 (= e!2821325 Unit!96402)))

(declare-fun b!4528043 () Bool)

(assert (=> b!4528043 (= e!2821326 e!2821325)))

(declare-fun c!773087 () Bool)

(assert (=> b!4528043 (= c!773087 call!315604)))

(declare-fun b!4528044 () Bool)

(declare-fun lt!1703797 () Unit!96156)

(assert (=> b!4528044 (= e!2821326 lt!1703797)))

(declare-fun lt!1703798 () Unit!96156)

(assert (=> b!4528044 (= lt!1703798 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4528044 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703804 () Unit!96156)

(assert (=> b!4528044 (= lt!1703804 lt!1703798)))

(assert (=> b!4528044 (= lt!1703797 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1703158) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4528044 call!315604))

(assert (= (and d!1396976 c!773088) b!4528044))

(assert (= (and d!1396976 (not c!773088)) b!4528043))

(assert (= (and b!4528043 c!773087) b!4528042))

(assert (= (and b!4528043 (not c!773087)) b!4528037))

(assert (= (or b!4528044 b!4528043) bm!315599))

(assert (= (and bm!315599 c!773089) b!4528038))

(assert (= (and bm!315599 (not c!773089)) b!4528036))

(assert (= (and d!1396976 res!1885396) b!4528041))

(assert (= (and d!1396976 (not res!1885394)) b!4528039))

(assert (= (and b!4528039 res!1885395) b!4528040))

(declare-fun m!5282899 () Bool)

(assert (=> b!4528042 m!5282899))

(declare-fun m!5282901 () Bool)

(assert (=> b!4528042 m!5282901))

(assert (=> d!1396976 m!5282899))

(declare-fun m!5282903 () Bool)

(assert (=> b!4528041 m!5282903))

(assert (=> b!4528041 m!5282903))

(declare-fun m!5282905 () Bool)

(assert (=> b!4528041 m!5282905))

(declare-fun m!5282907 () Bool)

(assert (=> b!4528038 m!5282907))

(declare-fun m!5282909 () Bool)

(assert (=> b!4528039 m!5282909))

(assert (=> b!4528039 m!5282909))

(declare-fun m!5282911 () Bool)

(assert (=> b!4528039 m!5282911))

(declare-fun m!5282913 () Bool)

(assert (=> b!4528044 m!5282913))

(assert (=> b!4528044 m!5282909))

(assert (=> b!4528044 m!5282909))

(assert (=> b!4528044 m!5282911))

(declare-fun m!5282915 () Bool)

(assert (=> b!4528044 m!5282915))

(assert (=> b!4528040 m!5282903))

(assert (=> b!4528040 m!5282903))

(assert (=> b!4528040 m!5282905))

(assert (=> b!4528036 m!5282903))

(declare-fun m!5282917 () Bool)

(assert (=> bm!315599 m!5282917))

(assert (=> b!4527019 d!1396976))

(declare-fun b!4528051 () Bool)

(declare-fun e!2821334 () List!50807)

(assert (=> b!4528051 (= e!2821334 (keys!17616 lt!1703161))))

(declare-fun d!1396984 () Bool)

(declare-fun e!2821339 () Bool)

(assert (=> d!1396984 e!2821339))

(declare-fun res!1885403 () Bool)

(assert (=> d!1396984 (=> res!1885403 e!2821339)))

(declare-fun e!2821338 () Bool)

(assert (=> d!1396984 (= res!1885403 e!2821338)))

(declare-fun res!1885405 () Bool)

(assert (=> d!1396984 (=> (not res!1885405) (not e!2821338))))

(declare-fun lt!1703812 () Bool)

(assert (=> d!1396984 (= res!1885405 (not lt!1703812))))

(declare-fun lt!1703814 () Bool)

(assert (=> d!1396984 (= lt!1703812 lt!1703814)))

(declare-fun lt!1703815 () Unit!96156)

(declare-fun e!2821337 () Unit!96156)

(assert (=> d!1396984 (= lt!1703815 e!2821337)))

(declare-fun c!773091 () Bool)

(assert (=> d!1396984 (= c!773091 lt!1703814)))

(assert (=> d!1396984 (= lt!1703814 (containsKey!1814 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396984 (= (contains!13427 lt!1703161 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703812)))

(declare-fun b!4528052 () Bool)

(declare-fun e!2821336 () Unit!96156)

(declare-fun Unit!96403 () Unit!96156)

(assert (=> b!4528052 (= e!2821336 Unit!96403)))

(declare-fun bm!315600 () Bool)

(declare-fun call!315605 () Bool)

(assert (=> bm!315600 (= call!315605 (contains!13431 e!2821334 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun c!773092 () Bool)

(assert (=> bm!315600 (= c!773092 c!773091)))

(declare-fun b!4528053 () Bool)

(assert (=> b!4528053 (= e!2821334 (getKeysList!475 (toList!4352 lt!1703161)))))

(declare-fun b!4528054 () Bool)

(declare-fun e!2821335 () Bool)

(assert (=> b!4528054 (= e!2821339 e!2821335)))

(declare-fun res!1885404 () Bool)

(assert (=> b!4528054 (=> (not res!1885404) (not e!2821335))))

(assert (=> b!4528054 (= res!1885404 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4528055 () Bool)

(assert (=> b!4528055 (= e!2821335 (contains!13431 (keys!17616 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun b!4528056 () Bool)

(assert (=> b!4528056 (= e!2821338 (not (contains!13431 (keys!17616 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4528057 () Bool)

(assert (=> b!4528057 false))

(declare-fun lt!1703813 () Unit!96156)

(declare-fun lt!1703811 () Unit!96156)

(assert (=> b!4528057 (= lt!1703813 lt!1703811)))

(assert (=> b!4528057 (containsKey!1814 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727))))))

(assert (=> b!4528057 (= lt!1703811 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun Unit!96404 () Unit!96156)

(assert (=> b!4528057 (= e!2821336 Unit!96404)))

(declare-fun b!4528058 () Bool)

(assert (=> b!4528058 (= e!2821337 e!2821336)))

(declare-fun c!773090 () Bool)

(assert (=> b!4528058 (= c!773090 call!315605)))

(declare-fun b!4528059 () Bool)

(declare-fun lt!1703809 () Unit!96156)

(assert (=> b!4528059 (= e!2821337 lt!1703809)))

(declare-fun lt!1703810 () Unit!96156)

(assert (=> b!4528059 (= lt!1703810 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4528059 (isDefined!8426 (getValueByKey!1113 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703816 () Unit!96156)

(assert (=> b!4528059 (= lt!1703816 lt!1703810)))

(assert (=> b!4528059 (= lt!1703809 (lemmaInListThenGetKeysListContains!471 (toList!4352 lt!1703161) (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> b!4528059 call!315605))

(assert (= (and d!1396984 c!773091) b!4528059))

(assert (= (and d!1396984 (not c!773091)) b!4528058))

(assert (= (and b!4528058 c!773090) b!4528057))

(assert (= (and b!4528058 (not c!773090)) b!4528052))

(assert (= (or b!4528059 b!4528058) bm!315600))

(assert (= (and bm!315600 c!773092) b!4528053))

(assert (= (and bm!315600 (not c!773092)) b!4528051))

(assert (= (and d!1396984 res!1885405) b!4528056))

(assert (= (and d!1396984 (not res!1885403)) b!4528054))

(assert (= (and b!4528054 res!1885404) b!4528055))

(declare-fun m!5282937 () Bool)

(assert (=> b!4528057 m!5282937))

(declare-fun m!5282941 () Bool)

(assert (=> b!4528057 m!5282941))

(assert (=> d!1396984 m!5282937))

(declare-fun m!5282943 () Bool)

(assert (=> b!4528056 m!5282943))

(assert (=> b!4528056 m!5282943))

(declare-fun m!5282945 () Bool)

(assert (=> b!4528056 m!5282945))

(declare-fun m!5282947 () Bool)

(assert (=> b!4528053 m!5282947))

(declare-fun m!5282949 () Bool)

(assert (=> b!4528054 m!5282949))

(assert (=> b!4528054 m!5282949))

(declare-fun m!5282951 () Bool)

(assert (=> b!4528054 m!5282951))

(declare-fun m!5282955 () Bool)

(assert (=> b!4528059 m!5282955))

(assert (=> b!4528059 m!5282949))

(assert (=> b!4528059 m!5282949))

(assert (=> b!4528059 m!5282951))

(declare-fun m!5282959 () Bool)

(assert (=> b!4528059 m!5282959))

(assert (=> b!4528055 m!5282943))

(assert (=> b!4528055 m!5282943))

(assert (=> b!4528055 m!5282945))

(assert (=> b!4528051 m!5282943))

(declare-fun m!5282961 () Bool)

(assert (=> bm!315600 m!5282961))

(assert (=> b!4527019 d!1396984))

(declare-fun d!1396994 () Bool)

(declare-fun e!2821346 () Bool)

(assert (=> d!1396994 e!2821346))

(declare-fun res!1885410 () Bool)

(assert (=> d!1396994 (=> (not res!1885410) (not e!2821346))))

(declare-fun lt!1703819 () ListMap!3613)

(assert (=> d!1396994 (= res!1885410 (contains!13427 lt!1703819 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun lt!1703821 () List!50804)

(assert (=> d!1396994 (= lt!1703819 (ListMap!3614 lt!1703821))))

(declare-fun lt!1703818 () Unit!96156)

(declare-fun lt!1703820 () Unit!96156)

(assert (=> d!1396994 (= lt!1703818 lt!1703820)))

(assert (=> d!1396994 (= (getValueByKey!1113 lt!1703821 (_1!28855 (h!56543 (_2!28856 lt!1702727)))) (Some!11142 (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396994 (= lt!1703820 (lemmaContainsTupThenGetReturnValue!695 lt!1703821 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396994 (= lt!1703821 (insertNoDuplicatedKeys!285 (toList!4352 lt!1702713) (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1396994 (= (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727))) lt!1703819)))

(declare-fun b!4528068 () Bool)

(declare-fun res!1885411 () Bool)

(assert (=> b!4528068 (=> (not res!1885411) (not e!2821346))))

(assert (=> b!4528068 (= res!1885411 (= (getValueByKey!1113 (toList!4352 lt!1703819) (_1!28855 (h!56543 (_2!28856 lt!1702727)))) (Some!11142 (_2!28855 (h!56543 (_2!28856 lt!1702727))))))))

(declare-fun b!4528069 () Bool)

(assert (=> b!4528069 (= e!2821346 (contains!13433 (toList!4352 lt!1703819) (h!56543 (_2!28856 lt!1702727))))))

(assert (= (and d!1396994 res!1885410) b!4528068))

(assert (= (and b!4528068 res!1885411) b!4528069))

(declare-fun m!5282967 () Bool)

(assert (=> d!1396994 m!5282967))

(declare-fun m!5282969 () Bool)

(assert (=> d!1396994 m!5282969))

(declare-fun m!5282971 () Bool)

(assert (=> d!1396994 m!5282971))

(declare-fun m!5282973 () Bool)

(assert (=> d!1396994 m!5282973))

(declare-fun m!5282975 () Bool)

(assert (=> b!4528068 m!5282975))

(declare-fun m!5282977 () Bool)

(assert (=> b!4528069 m!5282977))

(assert (=> b!4527019 d!1396994))

(declare-fun d!1396998 () Bool)

(declare-fun res!1885412 () Bool)

(declare-fun e!2821347 () Bool)

(assert (=> d!1396998 (=> res!1885412 e!2821347)))

(assert (=> d!1396998 (= res!1885412 ((_ is Nil!50680) (toList!4352 lt!1702713)))))

(assert (=> d!1396998 (= (forall!10293 (toList!4352 lt!1702713) lambda!173712) e!2821347)))

(declare-fun b!4528070 () Bool)

(declare-fun e!2821348 () Bool)

(assert (=> b!4528070 (= e!2821347 e!2821348)))

(declare-fun res!1885413 () Bool)

(assert (=> b!4528070 (=> (not res!1885413) (not e!2821348))))

(assert (=> b!4528070 (= res!1885413 (dynLambda!21181 lambda!173712 (h!56543 (toList!4352 lt!1702713))))))

(declare-fun b!4528071 () Bool)

(assert (=> b!4528071 (= e!2821348 (forall!10293 (t!357766 (toList!4352 lt!1702713)) lambda!173712))))

(assert (= (and d!1396998 (not res!1885412)) b!4528070))

(assert (= (and b!4528070 res!1885413) b!4528071))

(declare-fun b_lambda!156085 () Bool)

(assert (=> (not b_lambda!156085) (not b!4528070)))

(declare-fun m!5282979 () Bool)

(assert (=> b!4528070 m!5282979))

(declare-fun m!5282981 () Bool)

(assert (=> b!4528071 m!5282981))

(assert (=> b!4527019 d!1396998))

(declare-fun bs!863248 () Bool)

(declare-fun d!1397000 () Bool)

(assert (= bs!863248 (and d!1397000 b!4527887)))

(declare-fun lambda!173834 () Int)

(assert (=> bs!863248 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173834 lambda!173785))))

(declare-fun bs!863250 () Bool)

(assert (= bs!863250 (and d!1397000 d!1396296)))

(assert (=> bs!863250 (= (= lt!1703158 lt!1703123) (= lambda!173834 lambda!173703))))

(declare-fun bs!863251 () Bool)

(assert (= bs!863251 (and d!1397000 b!4528021)))

(assert (=> bs!863251 (= (= lt!1703158 lt!1703768) (= lambda!173834 lambda!173830))))

(declare-fun bs!863252 () Bool)

(assert (= bs!863252 (and d!1397000 b!4527305)))

(assert (=> bs!863252 (= (= lt!1703158 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173834 lambda!173739))))

(declare-fun bs!863253 () Bool)

(assert (= bs!863253 (and d!1397000 b!4527933)))

(assert (=> bs!863253 (= (= lt!1703158 lt!1703666) (= lambda!173834 lambda!173805))))

(declare-fun bs!863254 () Bool)

(assert (= bs!863254 (and d!1397000 b!4527889)))

(assert (=> bs!863254 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173834 lambda!173786))))

(declare-fun bs!863255 () Bool)

(assert (= bs!863255 (and d!1397000 b!4527971)))

(assert (=> bs!863255 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173834 lambda!173818))))

(declare-fun bs!863256 () Bool)

(assert (= bs!863256 (and d!1397000 b!4527019)))

(assert (=> bs!863256 (= lambda!173834 lambda!173713)))

(declare-fun bs!863257 () Bool)

(assert (= bs!863257 (and d!1397000 b!4527307)))

(assert (=> bs!863257 (= (= lt!1703158 lt!1703261) (= lambda!173834 lambda!173743))))

(declare-fun bs!863258 () Bool)

(assert (= bs!863258 (and d!1397000 d!1396960)))

(assert (=> bs!863258 (= (= lt!1703158 lt!1703769) (= lambda!173834 lambda!173832))))

(declare-fun bs!863259 () Bool)

(assert (= bs!863259 (and d!1397000 b!4526999)))

(assert (=> bs!863259 (= (= lt!1703158 lt!1702724) (= lambda!173834 lambda!173701))))

(declare-fun bs!863260 () Bool)

(assert (= bs!863260 (and d!1397000 b!4527017)))

(assert (=> bs!863260 (= (= lt!1703158 lt!1702713) (= lambda!173834 lambda!173711))))

(declare-fun bs!863261 () Bool)

(assert (= bs!863261 (and d!1397000 d!1396390)))

(assert (=> bs!863261 (= (= lt!1703158 lt!1703159) (= lambda!173834 lambda!173714))))

(declare-fun bs!863262 () Bool)

(assert (= bs!863262 (and d!1397000 b!4527969)))

(assert (=> bs!863262 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173834 lambda!173815))))

(declare-fun bs!863263 () Bool)

(assert (= bs!863263 (and d!1397000 b!4526997)))

(assert (=> bs!863263 (= (= lt!1703158 lt!1702724) (= lambda!173834 lambda!173700))))

(assert (=> bs!863256 (= (= lt!1703158 lt!1702713) (= lambda!173834 lambda!173712))))

(declare-fun bs!863265 () Bool)

(assert (= bs!863265 (and d!1397000 d!1396804)))

(assert (=> bs!863265 (= (= lt!1703158 lt!1703572) (= lambda!173834 lambda!173777))))

(declare-fun bs!863266 () Bool)

(assert (= bs!863266 (and d!1397000 d!1396634)))

(assert (=> bs!863266 (not (= lambda!173834 lambda!173754))))

(declare-fun bs!863267 () Bool)

(assert (= bs!863267 (and d!1397000 b!4528019)))

(assert (=> bs!863267 (= (= lt!1703158 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173834 lambda!173825))))

(assert (=> bs!863251 (= (= lt!1703158 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173834 lambda!173828))))

(assert (=> bs!863257 (= (= lt!1703158 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173834 lambda!173740))))

(declare-fun bs!863268 () Bool)

(assert (= bs!863268 (and d!1397000 b!4527806)))

(assert (=> bs!863268 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173834 lambda!173774))))

(assert (=> bs!863254 (= (= lt!1703158 lt!1703622) (= lambda!173834 lambda!173789))))

(assert (=> bs!863259 (= (= lt!1703158 lt!1703122) (= lambda!173834 lambda!173702))))

(declare-fun bs!863269 () Bool)

(assert (= bs!863269 (and d!1397000 d!1396932)))

(assert (=> bs!863269 (= (= lt!1703158 lt!1703708) (= lambda!173834 lambda!173822))))

(declare-fun bs!863270 () Bool)

(assert (= bs!863270 (and d!1397000 b!4527808)))

(assert (=> bs!863270 (= (= lt!1703158 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173834 lambda!173775))))

(declare-fun bs!863272 () Bool)

(assert (= bs!863272 (and d!1397000 d!1396260)))

(assert (=> bs!863272 (not (= lambda!173834 lambda!173651))))

(declare-fun bs!863273 () Bool)

(assert (= bs!863273 (and d!1397000 b!4527931)))

(assert (=> bs!863273 (= (= lt!1703158 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173834 lambda!173803))))

(assert (=> bs!863253 (= (= lt!1703158 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173834 lambda!173804))))

(declare-fun bs!863274 () Bool)

(assert (= bs!863274 (and d!1397000 d!1396498)))

(assert (=> bs!863274 (= (= lt!1703158 lt!1702713) (= lambda!173834 lambda!173736))))

(assert (=> bs!863255 (= (= lt!1703158 lt!1703707) (= lambda!173834 lambda!173820))))

(declare-fun bs!863275 () Bool)

(assert (= bs!863275 (and d!1397000 d!1396564)))

(assert (=> bs!863275 (= (= lt!1703158 lt!1703262) (= lambda!173834 lambda!173746))))

(assert (=> bs!863270 (= (= lt!1703158 lt!1703571) (= lambda!173834 lambda!173776))))

(declare-fun bs!863276 () Bool)

(assert (= bs!863276 (and d!1397000 d!1396878)))

(assert (=> bs!863276 (= (= lt!1703158 lt!1703623) (= lambda!173834 lambda!173796))))

(declare-fun bs!863277 () Bool)

(assert (= bs!863277 (and d!1397000 d!1396572)))

(assert (=> bs!863277 (= (= lt!1703158 lt!1703122) (= lambda!173834 lambda!173753))))

(declare-fun bs!863278 () Bool)

(assert (= bs!863278 (and d!1397000 b!4526608)))

(assert (=> bs!863278 (not (= lambda!173834 lambda!173585))))

(declare-fun bs!863279 () Bool)

(assert (= bs!863279 (and d!1397000 d!1396892)))

(assert (=> bs!863279 (= (= lt!1703158 lt!1703667) (= lambda!173834 lambda!173808))))

(assert (=> d!1397000 true))

(assert (=> d!1397000 (forall!10293 (toList!4352 lt!1702713) lambda!173834)))

(declare-fun lt!1703822 () Unit!96156)

(assert (=> d!1397000 (= lt!1703822 (choose!29672 lt!1702713 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> d!1397000 (forall!10293 (toList!4352 (+!1562 lt!1702713 (tuple2!51123 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))))) lambda!173834)))

(assert (=> d!1397000 (= (addForallContainsKeyThenBeforeAdding!348 lt!1702713 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727))) (_2!28855 (h!56543 (_2!28856 lt!1702727)))) lt!1703822)))

(declare-fun bs!863280 () Bool)

(assert (= bs!863280 d!1397000))

(declare-fun m!5283005 () Bool)

(assert (=> bs!863280 m!5283005))

(declare-fun m!5283007 () Bool)

(assert (=> bs!863280 m!5283007))

(declare-fun m!5283009 () Bool)

(assert (=> bs!863280 m!5283009))

(declare-fun m!5283011 () Bool)

(assert (=> bs!863280 m!5283011))

(assert (=> b!4527019 d!1397000))

(declare-fun d!1397020 () Bool)

(declare-fun res!1885425 () Bool)

(declare-fun e!2821360 () Bool)

(assert (=> d!1397020 (=> res!1885425 e!2821360)))

(assert (=> d!1397020 (= res!1885425 (and ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))) (= (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727)))) key!3287)))))

(assert (=> d!1397020 (= (containsKey!1812 (t!357766 (_2!28856 lt!1702727)) key!3287) e!2821360)))

(declare-fun b!4528083 () Bool)

(declare-fun e!2821361 () Bool)

(assert (=> b!4528083 (= e!2821360 e!2821361)))

(declare-fun res!1885426 () Bool)

(assert (=> b!4528083 (=> (not res!1885426) (not e!2821361))))

(assert (=> b!4528083 (= res!1885426 ((_ is Cons!50680) (t!357766 (_2!28856 lt!1702727))))))

(declare-fun b!4528084 () Bool)

(assert (=> b!4528084 (= e!2821361 (containsKey!1812 (t!357766 (t!357766 (_2!28856 lt!1702727))) key!3287))))

(assert (= (and d!1397020 (not res!1885425)) b!4528083))

(assert (= (and b!4528083 res!1885426) b!4528084))

(declare-fun m!5283013 () Bool)

(assert (=> b!4528084 m!5283013))

(assert (=> b!4527015 d!1397020))

(declare-fun d!1397022 () Bool)

(declare-fun lt!1703825 () Bool)

(assert (=> d!1397022 (= lt!1703825 (select (content!8386 e!2820654) key!3287))))

(declare-fun e!2821363 () Bool)

(assert (=> d!1397022 (= lt!1703825 e!2821363)))

(declare-fun res!1885427 () Bool)

(assert (=> d!1397022 (=> (not res!1885427) (not e!2821363))))

(assert (=> d!1397022 (= res!1885427 ((_ is Cons!50683) e!2820654))))

(assert (=> d!1397022 (= (contains!13431 e!2820654 key!3287) lt!1703825)))

(declare-fun b!4528085 () Bool)

(declare-fun e!2821362 () Bool)

(assert (=> b!4528085 (= e!2821363 e!2821362)))

(declare-fun res!1885428 () Bool)

(assert (=> b!4528085 (=> res!1885428 e!2821362)))

(assert (=> b!4528085 (= res!1885428 (= (h!56548 e!2820654) key!3287))))

(declare-fun b!4528086 () Bool)

(assert (=> b!4528086 (= e!2821362 (contains!13431 (t!357769 e!2820654) key!3287))))

(assert (= (and d!1397022 res!1885427) b!4528085))

(assert (= (and b!4528085 (not res!1885428)) b!4528086))

(declare-fun m!5283017 () Bool)

(assert (=> d!1397022 m!5283017))

(declare-fun m!5283019 () Bool)

(assert (=> d!1397022 m!5283019))

(declare-fun m!5283023 () Bool)

(assert (=> b!4528086 m!5283023))

(assert (=> bm!315497 d!1397022))

(declare-fun d!1397026 () Bool)

(declare-fun lt!1703827 () Bool)

(assert (=> d!1397026 (= lt!1703827 (select (content!8385 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702730))))

(declare-fun e!2821366 () Bool)

(assert (=> d!1397026 (= lt!1703827 e!2821366)))

(declare-fun res!1885431 () Bool)

(assert (=> d!1397026 (=> (not res!1885431) (not e!2821366))))

(assert (=> d!1397026 (= res!1885431 ((_ is Cons!50681) (t!357767 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1397026 (= (contains!13428 (t!357767 (t!357767 (toList!4351 lm!1477))) lt!1702730) lt!1703827)))

(declare-fun b!4528089 () Bool)

(declare-fun e!2821367 () Bool)

(assert (=> b!4528089 (= e!2821366 e!2821367)))

(declare-fun res!1885432 () Bool)

(assert (=> b!4528089 (=> res!1885432 e!2821367)))

(assert (=> b!4528089 (= res!1885432 (= (h!56544 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702730))))

(declare-fun b!4528090 () Bool)

(assert (=> b!4528090 (= e!2821367 (contains!13428 (t!357767 (t!357767 (t!357767 (toList!4351 lm!1477)))) lt!1702730))))

(assert (= (and d!1397026 res!1885431) b!4528089))

(assert (= (and b!4528089 (not res!1885432)) b!4528090))

(declare-fun m!5283029 () Bool)

(assert (=> d!1397026 m!5283029))

(declare-fun m!5283031 () Bool)

(assert (=> d!1397026 m!5283031))

(declare-fun m!5283037 () Bool)

(assert (=> b!4528090 m!5283037))

(assert (=> b!4526644 d!1397026))

(declare-fun d!1397032 () Bool)

(assert (=> d!1397032 (= (invariantList!1027 (toList!4352 lt!1702838)) (noDuplicatedKeys!269 (toList!4352 lt!1702838)))))

(declare-fun bs!863282 () Bool)

(assert (= bs!863282 d!1397032))

(declare-fun m!5283039 () Bool)

(assert (=> bs!863282 m!5283039))

(assert (=> d!1396208 d!1397032))

(declare-fun d!1397034 () Bool)

(declare-fun res!1885437 () Bool)

(declare-fun e!2821372 () Bool)

(assert (=> d!1397034 (=> res!1885437 e!2821372)))

(assert (=> d!1397034 (= res!1885437 ((_ is Nil!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1397034 (= (forall!10291 (toList!4351 lt!1702722) lambda!173598) e!2821372)))

(declare-fun b!4528095 () Bool)

(declare-fun e!2821373 () Bool)

(assert (=> b!4528095 (= e!2821372 e!2821373)))

(declare-fun res!1885438 () Bool)

(assert (=> b!4528095 (=> (not res!1885438) (not e!2821373))))

(assert (=> b!4528095 (= res!1885438 (dynLambda!21178 lambda!173598 (h!56544 (toList!4351 lt!1702722))))))

(declare-fun b!4528096 () Bool)

(assert (=> b!4528096 (= e!2821373 (forall!10291 (t!357767 (toList!4351 lt!1702722)) lambda!173598))))

(assert (= (and d!1397034 (not res!1885437)) b!4528095))

(assert (= (and b!4528095 res!1885438) b!4528096))

(declare-fun b_lambda!156097 () Bool)

(assert (=> (not b_lambda!156097) (not b!4528095)))

(declare-fun m!5283045 () Bool)

(assert (=> b!4528095 m!5283045))

(declare-fun m!5283047 () Bool)

(assert (=> b!4528096 m!5283047))

(assert (=> d!1396208 d!1397034))

(assert (=> b!4526752 d!1396526))

(declare-fun bs!863283 () Bool)

(declare-fun d!1397038 () Bool)

(assert (= bs!863283 (and d!1397038 b!4527887)))

(declare-fun lambda!173835 () Int)

(assert (=> bs!863283 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173835 lambda!173785))))

(declare-fun bs!863284 () Bool)

(assert (= bs!863284 (and d!1397038 d!1396296)))

(assert (=> bs!863284 (= (= lt!1702724 lt!1703123) (= lambda!173835 lambda!173703))))

(declare-fun bs!863286 () Bool)

(assert (= bs!863286 (and d!1397038 b!4528021)))

(assert (=> bs!863286 (= (= lt!1702724 lt!1703768) (= lambda!173835 lambda!173830))))

(declare-fun bs!863287 () Bool)

(assert (= bs!863287 (and d!1397038 b!4527305)))

(assert (=> bs!863287 (= (= lt!1702724 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173835 lambda!173739))))

(declare-fun bs!863288 () Bool)

(assert (= bs!863288 (and d!1397038 b!4527933)))

(assert (=> bs!863288 (= (= lt!1702724 lt!1703666) (= lambda!173835 lambda!173805))))

(declare-fun bs!863289 () Bool)

(assert (= bs!863289 (and d!1397038 b!4527889)))

(assert (=> bs!863289 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173835 lambda!173786))))

(declare-fun bs!863290 () Bool)

(assert (= bs!863290 (and d!1397038 b!4527971)))

(assert (=> bs!863290 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173835 lambda!173818))))

(declare-fun bs!863291 () Bool)

(assert (= bs!863291 (and d!1397038 b!4527019)))

(assert (=> bs!863291 (= (= lt!1702724 lt!1703158) (= lambda!173835 lambda!173713))))

(declare-fun bs!863292 () Bool)

(assert (= bs!863292 (and d!1397038 b!4527307)))

(assert (=> bs!863292 (= (= lt!1702724 lt!1703261) (= lambda!173835 lambda!173743))))

(declare-fun bs!863293 () Bool)

(assert (= bs!863293 (and d!1397038 d!1396960)))

(assert (=> bs!863293 (= (= lt!1702724 lt!1703769) (= lambda!173835 lambda!173832))))

(declare-fun bs!863294 () Bool)

(assert (= bs!863294 (and d!1397038 b!4526999)))

(assert (=> bs!863294 (= lambda!173835 lambda!173701)))

(declare-fun bs!863295 () Bool)

(assert (= bs!863295 (and d!1397038 b!4527017)))

(assert (=> bs!863295 (= (= lt!1702724 lt!1702713) (= lambda!173835 lambda!173711))))

(declare-fun bs!863296 () Bool)

(assert (= bs!863296 (and d!1397038 d!1396390)))

(assert (=> bs!863296 (= (= lt!1702724 lt!1703159) (= lambda!173835 lambda!173714))))

(declare-fun bs!863297 () Bool)

(assert (= bs!863297 (and d!1397038 b!4527969)))

(assert (=> bs!863297 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173835 lambda!173815))))

(declare-fun bs!863298 () Bool)

(assert (= bs!863298 (and d!1397038 b!4526997)))

(assert (=> bs!863298 (= lambda!173835 lambda!173700)))

(assert (=> bs!863291 (= (= lt!1702724 lt!1702713) (= lambda!173835 lambda!173712))))

(declare-fun bs!863300 () Bool)

(assert (= bs!863300 (and d!1397038 d!1396804)))

(assert (=> bs!863300 (= (= lt!1702724 lt!1703572) (= lambda!173835 lambda!173777))))

(declare-fun bs!863302 () Bool)

(assert (= bs!863302 (and d!1397038 d!1396634)))

(assert (=> bs!863302 (not (= lambda!173835 lambda!173754))))

(declare-fun bs!863304 () Bool)

(assert (= bs!863304 (and d!1397038 b!4528019)))

(assert (=> bs!863304 (= (= lt!1702724 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173835 lambda!173825))))

(assert (=> bs!863286 (= (= lt!1702724 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173835 lambda!173828))))

(assert (=> bs!863292 (= (= lt!1702724 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173835 lambda!173740))))

(declare-fun bs!863308 () Bool)

(assert (= bs!863308 (and d!1397038 b!4527806)))

(assert (=> bs!863308 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173835 lambda!173774))))

(declare-fun bs!863310 () Bool)

(assert (= bs!863310 (and d!1397038 d!1397000)))

(assert (=> bs!863310 (= (= lt!1702724 lt!1703158) (= lambda!173835 lambda!173834))))

(assert (=> bs!863289 (= (= lt!1702724 lt!1703622) (= lambda!173835 lambda!173789))))

(assert (=> bs!863294 (= (= lt!1702724 lt!1703122) (= lambda!173835 lambda!173702))))

(declare-fun bs!863313 () Bool)

(assert (= bs!863313 (and d!1397038 d!1396932)))

(assert (=> bs!863313 (= (= lt!1702724 lt!1703708) (= lambda!173835 lambda!173822))))

(declare-fun bs!863316 () Bool)

(assert (= bs!863316 (and d!1397038 b!4527808)))

(assert (=> bs!863316 (= (= lt!1702724 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173835 lambda!173775))))

(declare-fun bs!863318 () Bool)

(assert (= bs!863318 (and d!1397038 d!1396260)))

(assert (=> bs!863318 (not (= lambda!173835 lambda!173651))))

(declare-fun bs!863320 () Bool)

(assert (= bs!863320 (and d!1397038 b!4527931)))

(assert (=> bs!863320 (= (= lt!1702724 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173835 lambda!173803))))

(assert (=> bs!863288 (= (= lt!1702724 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173835 lambda!173804))))

(declare-fun bs!863323 () Bool)

(assert (= bs!863323 (and d!1397038 d!1396498)))

(assert (=> bs!863323 (= (= lt!1702724 lt!1702713) (= lambda!173835 lambda!173736))))

(assert (=> bs!863290 (= (= lt!1702724 lt!1703707) (= lambda!173835 lambda!173820))))

(declare-fun bs!863326 () Bool)

(assert (= bs!863326 (and d!1397038 d!1396564)))

(assert (=> bs!863326 (= (= lt!1702724 lt!1703262) (= lambda!173835 lambda!173746))))

(assert (=> bs!863316 (= (= lt!1702724 lt!1703571) (= lambda!173835 lambda!173776))))

(declare-fun bs!863329 () Bool)

(assert (= bs!863329 (and d!1397038 d!1396878)))

(assert (=> bs!863329 (= (= lt!1702724 lt!1703623) (= lambda!173835 lambda!173796))))

(declare-fun bs!863330 () Bool)

(assert (= bs!863330 (and d!1397038 d!1396572)))

(assert (=> bs!863330 (= (= lt!1702724 lt!1703122) (= lambda!173835 lambda!173753))))

(declare-fun bs!863331 () Bool)

(assert (= bs!863331 (and d!1397038 b!4526608)))

(assert (=> bs!863331 (not (= lambda!173835 lambda!173585))))

(declare-fun bs!863332 () Bool)

(assert (= bs!863332 (and d!1397038 d!1396892)))

(assert (=> bs!863332 (= (= lt!1702724 lt!1703667) (= lambda!173835 lambda!173808))))

(assert (=> d!1397038 true))

(assert (=> d!1397038 (forall!10293 (toList!4352 lt!1702724) lambda!173835)))

(declare-fun lt!1703829 () Unit!96156)

(assert (=> d!1397038 (= lt!1703829 (choose!29669 lt!1702724))))

(assert (=> d!1397038 (= (lemmaContainsAllItsOwnKeys!348 lt!1702724) lt!1703829)))

(declare-fun bs!863338 () Bool)

(assert (= bs!863338 d!1397038))

(declare-fun m!5283053 () Bool)

(assert (=> bs!863338 m!5283053))

(declare-fun m!5283055 () Bool)

(assert (=> bs!863338 m!5283055))

(assert (=> bm!315494 d!1397038))

(assert (=> b!4527044 d!1396436))

(declare-fun d!1397044 () Bool)

(declare-fun res!1885444 () Bool)

(declare-fun e!2821380 () Bool)

(assert (=> d!1397044 (=> res!1885444 e!2821380)))

(assert (=> d!1397044 (= res!1885444 (not ((_ is Cons!50680) (t!357766 newBucket!178))))))

(assert (=> d!1397044 (= (noDuplicateKeys!1172 (t!357766 newBucket!178)) e!2821380)))

(declare-fun b!4528108 () Bool)

(declare-fun e!2821381 () Bool)

(assert (=> b!4528108 (= e!2821380 e!2821381)))

(declare-fun res!1885445 () Bool)

(assert (=> b!4528108 (=> (not res!1885445) (not e!2821381))))

(assert (=> b!4528108 (= res!1885445 (not (containsKey!1812 (t!357766 (t!357766 newBucket!178)) (_1!28855 (h!56543 (t!357766 newBucket!178))))))))

(declare-fun b!4528109 () Bool)

(assert (=> b!4528109 (= e!2821381 (noDuplicateKeys!1172 (t!357766 (t!357766 newBucket!178))))))

(assert (= (and d!1397044 (not res!1885444)) b!4528108))

(assert (= (and b!4528108 res!1885445) b!4528109))

(declare-fun m!5283057 () Bool)

(assert (=> b!4528108 m!5283057))

(declare-fun m!5283059 () Bool)

(assert (=> b!4528109 m!5283059))

(assert (=> b!4526656 d!1397044))

(assert (=> b!4527008 d!1396774))

(assert (=> b!4527008 d!1396686))

(declare-fun b!4528113 () Bool)

(declare-fun e!2821383 () Option!11142)

(assert (=> b!4528113 (= e!2821383 None!11141)))

(declare-fun b!4528110 () Bool)

(declare-fun e!2821382 () Option!11142)

(assert (=> b!4528110 (= e!2821382 (Some!11141 (_2!28856 (h!56544 (toList!4351 lt!1702906)))))))

(declare-fun b!4528111 () Bool)

(assert (=> b!4528111 (= e!2821382 e!2821383)))

(declare-fun c!773099 () Bool)

(assert (=> b!4528111 (= c!773099 (and ((_ is Cons!50681) (toList!4351 lt!1702906)) (not (= (_1!28856 (h!56544 (toList!4351 lt!1702906))) (_1!28856 lt!1702727)))))))

(declare-fun b!4528112 () Bool)

(assert (=> b!4528112 (= e!2821383 (getValueByKey!1112 (t!357767 (toList!4351 lt!1702906)) (_1!28856 lt!1702727)))))

(declare-fun d!1397046 () Bool)

(declare-fun c!773098 () Bool)

(assert (=> d!1397046 (= c!773098 (and ((_ is Cons!50681) (toList!4351 lt!1702906)) (= (_1!28856 (h!56544 (toList!4351 lt!1702906))) (_1!28856 lt!1702727))))))

(assert (=> d!1397046 (= (getValueByKey!1112 (toList!4351 lt!1702906) (_1!28856 lt!1702727)) e!2821382)))

(assert (= (and d!1397046 c!773098) b!4528110))

(assert (= (and d!1397046 (not c!773098)) b!4528111))

(assert (= (and b!4528111 c!773099) b!4528112))

(assert (= (and b!4528111 (not c!773099)) b!4528113))

(declare-fun m!5283061 () Bool)

(assert (=> b!4528112 m!5283061))

(assert (=> b!4526792 d!1397046))

(assert (=> d!1396170 d!1396762))

(assert (=> b!4526735 d!1396416))

(declare-fun d!1397048 () Bool)

(declare-fun c!773100 () Bool)

(assert (=> d!1397048 (= c!773100 ((_ is Nil!50681) (t!357767 (toList!4351 lm!1477))))))

(declare-fun e!2821384 () (InoxSet tuple2!51124))

(assert (=> d!1397048 (= (content!8385 (t!357767 (toList!4351 lm!1477))) e!2821384)))

(declare-fun b!4528114 () Bool)

(assert (=> b!4528114 (= e!2821384 ((as const (Array tuple2!51124 Bool)) false))))

(declare-fun b!4528115 () Bool)

(assert (=> b!4528115 (= e!2821384 ((_ map or) (store ((as const (Array tuple2!51124 Bool)) false) (h!56544 (t!357767 (toList!4351 lm!1477))) true) (content!8385 (t!357767 (t!357767 (toList!4351 lm!1477))))))))

(assert (= (and d!1397048 c!773100) b!4528114))

(assert (= (and d!1397048 (not c!773100)) b!4528115))

(declare-fun m!5283063 () Bool)

(assert (=> b!4528115 m!5283063))

(assert (=> b!4528115 m!5283029))

(assert (=> d!1396166 d!1397048))

(declare-fun d!1397050 () Bool)

(declare-fun e!2821386 () Bool)

(assert (=> d!1397050 e!2821386))

(declare-fun res!1885446 () Bool)

(assert (=> d!1397050 (=> res!1885446 e!2821386)))

(declare-fun lt!1703838 () Bool)

(assert (=> d!1397050 (= res!1885446 (not lt!1703838))))

(declare-fun lt!1703840 () Bool)

(assert (=> d!1397050 (= lt!1703838 lt!1703840)))

(declare-fun lt!1703839 () Unit!96156)

(declare-fun e!2821385 () Unit!96156)

(assert (=> d!1397050 (= lt!1703839 e!2821385)))

(declare-fun c!773101 () Bool)

(assert (=> d!1397050 (= c!773101 lt!1703840)))

(assert (=> d!1397050 (= lt!1703840 (containsKey!1815 (toList!4351 lt!1702906) (_1!28856 lt!1702727)))))

(assert (=> d!1397050 (= (contains!13429 lt!1702906 (_1!28856 lt!1702727)) lt!1703838)))

(declare-fun b!4528116 () Bool)

(declare-fun lt!1703837 () Unit!96156)

(assert (=> b!4528116 (= e!2821385 lt!1703837)))

(assert (=> b!4528116 (= lt!1703837 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702906) (_1!28856 lt!1702727)))))

(assert (=> b!4528116 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702906) (_1!28856 lt!1702727)))))

(declare-fun b!4528117 () Bool)

(declare-fun Unit!96416 () Unit!96156)

(assert (=> b!4528117 (= e!2821385 Unit!96416)))

(declare-fun b!4528118 () Bool)

(assert (=> b!4528118 (= e!2821386 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702906) (_1!28856 lt!1702727))))))

(assert (= (and d!1397050 c!773101) b!4528116))

(assert (= (and d!1397050 (not c!773101)) b!4528117))

(assert (= (and d!1397050 (not res!1885446)) b!4528118))

(declare-fun m!5283065 () Bool)

(assert (=> d!1397050 m!5283065))

(declare-fun m!5283067 () Bool)

(assert (=> b!4528116 m!5283067))

(assert (=> b!4528116 m!5280549))

(assert (=> b!4528116 m!5280549))

(declare-fun m!5283075 () Bool)

(assert (=> b!4528116 m!5283075))

(assert (=> b!4528118 m!5280549))

(assert (=> b!4528118 m!5280549))

(assert (=> b!4528118 m!5283075))

(assert (=> d!1396222 d!1397050))

(declare-fun b!4528122 () Bool)

(declare-fun e!2821388 () Option!11142)

(assert (=> b!4528122 (= e!2821388 None!11141)))

(declare-fun b!4528119 () Bool)

(declare-fun e!2821387 () Option!11142)

(assert (=> b!4528119 (= e!2821387 (Some!11141 (_2!28856 (h!56544 lt!1702907))))))

(declare-fun b!4528120 () Bool)

(assert (=> b!4528120 (= e!2821387 e!2821388)))

(declare-fun c!773103 () Bool)

(assert (=> b!4528120 (= c!773103 (and ((_ is Cons!50681) lt!1702907) (not (= (_1!28856 (h!56544 lt!1702907)) (_1!28856 lt!1702727)))))))

(declare-fun b!4528121 () Bool)

(assert (=> b!4528121 (= e!2821388 (getValueByKey!1112 (t!357767 lt!1702907) (_1!28856 lt!1702727)))))

(declare-fun d!1397052 () Bool)

(declare-fun c!773102 () Bool)

(assert (=> d!1397052 (= c!773102 (and ((_ is Cons!50681) lt!1702907) (= (_1!28856 (h!56544 lt!1702907)) (_1!28856 lt!1702727))))))

(assert (=> d!1397052 (= (getValueByKey!1112 lt!1702907 (_1!28856 lt!1702727)) e!2821387)))

(assert (= (and d!1397052 c!773102) b!4528119))

(assert (= (and d!1397052 (not c!773102)) b!4528120))

(assert (= (and b!4528120 c!773103) b!4528121))

(assert (= (and b!4528120 (not c!773103)) b!4528122))

(declare-fun m!5283095 () Bool)

(assert (=> b!4528121 m!5283095))

(assert (=> d!1396222 d!1397052))

(declare-fun d!1397056 () Bool)

(assert (=> d!1397056 (= (getValueByKey!1112 lt!1702907 (_1!28856 lt!1702727)) (Some!11141 (_2!28856 lt!1702727)))))

(declare-fun lt!1703845 () Unit!96156)

(assert (=> d!1397056 (= lt!1703845 (choose!29675 lt!1702907 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(declare-fun e!2821391 () Bool)

(assert (=> d!1397056 e!2821391))

(declare-fun res!1885448 () Bool)

(assert (=> d!1397056 (=> (not res!1885448) (not e!2821391))))

(assert (=> d!1397056 (= res!1885448 (isStrictlySorted!440 lt!1702907))))

(assert (=> d!1397056 (= (lemmaContainsTupThenGetReturnValue!694 lt!1702907 (_1!28856 lt!1702727) (_2!28856 lt!1702727)) lt!1703845)))

(declare-fun b!4528126 () Bool)

(declare-fun res!1885449 () Bool)

(assert (=> b!4528126 (=> (not res!1885449) (not e!2821391))))

(assert (=> b!4528126 (= res!1885449 (containsKey!1815 lt!1702907 (_1!28856 lt!1702727)))))

(declare-fun b!4528127 () Bool)

(assert (=> b!4528127 (= e!2821391 (contains!13428 lt!1702907 (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727))))))

(assert (= (and d!1397056 res!1885448) b!4528126))

(assert (= (and b!4528126 res!1885449) b!4528127))

(assert (=> d!1397056 m!5280543))

(declare-fun m!5283099 () Bool)

(assert (=> d!1397056 m!5283099))

(declare-fun m!5283103 () Bool)

(assert (=> d!1397056 m!5283103))

(declare-fun m!5283105 () Bool)

(assert (=> b!4528126 m!5283105))

(declare-fun m!5283109 () Bool)

(assert (=> b!4528127 m!5283109))

(assert (=> d!1396222 d!1397056))

(declare-fun b!4528128 () Bool)

(declare-fun e!2821394 () List!50805)

(declare-fun c!773107 () Bool)

(declare-fun c!773106 () Bool)

(assert (=> b!4528128 (= e!2821394 (ite c!773107 (t!357767 (toList!4351 lt!1702722)) (ite c!773106 (Cons!50681 (h!56544 (toList!4351 lt!1702722)) (t!357767 (toList!4351 lt!1702722))) Nil!50681)))))

(declare-fun b!4528129 () Bool)

(declare-fun e!2821396 () List!50805)

(declare-fun call!315607 () List!50805)

(assert (=> b!4528129 (= e!2821396 call!315607)))

(declare-fun d!1397058 () Bool)

(declare-fun e!2821392 () Bool)

(assert (=> d!1397058 e!2821392))

(declare-fun res!1885451 () Bool)

(assert (=> d!1397058 (=> (not res!1885451) (not e!2821392))))

(declare-fun lt!1703846 () List!50805)

(assert (=> d!1397058 (= res!1885451 (isStrictlySorted!440 lt!1703846))))

(assert (=> d!1397058 (= lt!1703846 e!2821396)))

(declare-fun c!773105 () Bool)

(assert (=> d!1397058 (= c!773105 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (bvslt (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702727))))))

(assert (=> d!1397058 (isStrictlySorted!440 (toList!4351 lt!1702722))))

(assert (=> d!1397058 (= (insertStrictlySorted!418 (toList!4351 lt!1702722) (_1!28856 lt!1702727) (_2!28856 lt!1702727)) lt!1703846)))

(declare-fun b!4528130 () Bool)

(assert (=> b!4528130 (= c!773106 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (bvsgt (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702727))))))

(declare-fun e!2821393 () List!50805)

(declare-fun e!2821395 () List!50805)

(assert (=> b!4528130 (= e!2821393 e!2821395)))

(declare-fun b!4528131 () Bool)

(declare-fun res!1885450 () Bool)

(assert (=> b!4528131 (=> (not res!1885450) (not e!2821392))))

(assert (=> b!4528131 (= res!1885450 (containsKey!1815 lt!1703846 (_1!28856 lt!1702727)))))

(declare-fun b!4528132 () Bool)

(assert (=> b!4528132 (= e!2821392 (contains!13428 lt!1703846 (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727))))))

(declare-fun bm!315601 () Bool)

(declare-fun call!315606 () List!50805)

(declare-fun call!315608 () List!50805)

(assert (=> bm!315601 (= call!315606 call!315608)))

(declare-fun b!4528133 () Bool)

(assert (=> b!4528133 (= e!2821395 call!315606)))

(declare-fun b!4528134 () Bool)

(assert (=> b!4528134 (= e!2821396 e!2821393)))

(assert (=> b!4528134 (= c!773107 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (= (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702727))))))

(declare-fun bm!315602 () Bool)

(assert (=> bm!315602 (= call!315608 call!315607)))

(declare-fun b!4528135 () Bool)

(assert (=> b!4528135 (= e!2821394 (insertStrictlySorted!418 (t!357767 (toList!4351 lt!1702722)) (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))

(declare-fun b!4528137 () Bool)

(assert (=> b!4528137 (= e!2821393 call!315608)))

(declare-fun b!4528139 () Bool)

(assert (=> b!4528139 (= e!2821395 call!315606)))

(declare-fun bm!315603 () Bool)

(assert (=> bm!315603 (= call!315607 ($colon$colon!949 e!2821394 (ite c!773105 (h!56544 (toList!4351 lt!1702722)) (tuple2!51125 (_1!28856 lt!1702727) (_2!28856 lt!1702727)))))))

(declare-fun c!773108 () Bool)

(assert (=> bm!315603 (= c!773108 c!773105)))

(assert (= (and d!1397058 c!773105) b!4528129))

(assert (= (and d!1397058 (not c!773105)) b!4528134))

(assert (= (and b!4528134 c!773107) b!4528137))

(assert (= (and b!4528134 (not c!773107)) b!4528130))

(assert (= (and b!4528130 c!773106) b!4528133))

(assert (= (and b!4528130 (not c!773106)) b!4528139))

(assert (= (or b!4528133 b!4528139) bm!315601))

(assert (= (or b!4528137 bm!315601) bm!315602))

(assert (= (or b!4528129 bm!315602) bm!315603))

(assert (= (and bm!315603 c!773108) b!4528135))

(assert (= (and bm!315603 (not c!773108)) b!4528128))

(assert (= (and d!1397058 res!1885451) b!4528131))

(assert (= (and b!4528131 res!1885450) b!4528132))

(declare-fun m!5283121 () Bool)

(assert (=> b!4528135 m!5283121))

(declare-fun m!5283123 () Bool)

(assert (=> d!1397058 m!5283123))

(assert (=> d!1397058 m!5281315))

(declare-fun m!5283125 () Bool)

(assert (=> b!4528132 m!5283125))

(declare-fun m!5283127 () Bool)

(assert (=> bm!315603 m!5283127))

(declare-fun m!5283129 () Bool)

(assert (=> b!4528131 m!5283129))

(assert (=> d!1396222 d!1397058))

(declare-fun b!4528154 () Bool)

(declare-fun e!2821405 () List!50807)

(assert (=> b!4528154 (= e!2821405 (keys!17616 (extractMap!1228 (toList!4351 lt!1702722))))))

(declare-fun d!1397066 () Bool)

(declare-fun e!2821410 () Bool)

(assert (=> d!1397066 e!2821410))

(declare-fun res!1885456 () Bool)

(assert (=> d!1397066 (=> res!1885456 e!2821410)))

(declare-fun e!2821409 () Bool)

(assert (=> d!1397066 (= res!1885456 e!2821409)))

(declare-fun res!1885458 () Bool)

(assert (=> d!1397066 (=> (not res!1885458) (not e!2821409))))

(declare-fun lt!1703852 () Bool)

(assert (=> d!1397066 (= res!1885458 (not lt!1703852))))

(declare-fun lt!1703854 () Bool)

(assert (=> d!1397066 (= lt!1703852 lt!1703854)))

(declare-fun lt!1703855 () Unit!96156)

(declare-fun e!2821408 () Unit!96156)

(assert (=> d!1397066 (= lt!1703855 e!2821408)))

(declare-fun c!773116 () Bool)

(assert (=> d!1397066 (= c!773116 lt!1703854)))

(assert (=> d!1397066 (= lt!1703854 (containsKey!1814 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(assert (=> d!1397066 (= (contains!13427 (extractMap!1228 (toList!4351 lt!1702722)) key!3287) lt!1703852)))

(declare-fun b!4528155 () Bool)

(declare-fun e!2821407 () Unit!96156)

(declare-fun Unit!96417 () Unit!96156)

(assert (=> b!4528155 (= e!2821407 Unit!96417)))

(declare-fun bm!315607 () Bool)

(declare-fun call!315612 () Bool)

(assert (=> bm!315607 (= call!315612 (contains!13431 e!2821405 key!3287))))

(declare-fun c!773117 () Bool)

(assert (=> bm!315607 (= c!773117 c!773116)))

(declare-fun b!4528156 () Bool)

(assert (=> b!4528156 (= e!2821405 (getKeysList!475 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722)))))))

(declare-fun b!4528157 () Bool)

(declare-fun e!2821406 () Bool)

(assert (=> b!4528157 (= e!2821410 e!2821406)))

(declare-fun res!1885457 () Bool)

(assert (=> b!4528157 (=> (not res!1885457) (not e!2821406))))

(assert (=> b!4528157 (= res!1885457 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287)))))

(declare-fun b!4528158 () Bool)

(assert (=> b!4528158 (= e!2821406 (contains!13431 (keys!17616 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(declare-fun b!4528159 () Bool)

(assert (=> b!4528159 (= e!2821409 (not (contains!13431 (keys!17616 (extractMap!1228 (toList!4351 lt!1702722))) key!3287)))))

(declare-fun b!4528160 () Bool)

(assert (=> b!4528160 false))

(declare-fun lt!1703853 () Unit!96156)

(declare-fun lt!1703851 () Unit!96156)

(assert (=> b!4528160 (= lt!1703853 lt!1703851)))

(assert (=> b!4528160 (containsKey!1814 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287)))

(assert (=> b!4528160 (= lt!1703851 (lemmaInGetKeysListThenContainsKey!474 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(declare-fun Unit!96418 () Unit!96156)

(assert (=> b!4528160 (= e!2821407 Unit!96418)))

(declare-fun b!4528161 () Bool)

(assert (=> b!4528161 (= e!2821408 e!2821407)))

(declare-fun c!773115 () Bool)

(assert (=> b!4528161 (= c!773115 call!315612)))

(declare-fun b!4528162 () Bool)

(declare-fun lt!1703849 () Unit!96156)

(assert (=> b!4528162 (= e!2821408 lt!1703849)))

(declare-fun lt!1703850 () Unit!96156)

(assert (=> b!4528162 (= lt!1703850 (lemmaContainsKeyImpliesGetValueByKeyDefined!1015 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(assert (=> b!4528162 (isDefined!8426 (getValueByKey!1113 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(declare-fun lt!1703856 () Unit!96156)

(assert (=> b!4528162 (= lt!1703856 lt!1703850)))

(assert (=> b!4528162 (= lt!1703849 (lemmaInListThenGetKeysListContains!471 (toList!4352 (extractMap!1228 (toList!4351 lt!1702722))) key!3287))))

(assert (=> b!4528162 call!315612))

(assert (= (and d!1397066 c!773116) b!4528162))

(assert (= (and d!1397066 (not c!773116)) b!4528161))

(assert (= (and b!4528161 c!773115) b!4528160))

(assert (= (and b!4528161 (not c!773115)) b!4528155))

(assert (= (or b!4528162 b!4528161) bm!315607))

(assert (= (and bm!315607 c!773117) b!4528156))

(assert (= (and bm!315607 (not c!773117)) b!4528154))

(assert (= (and d!1397066 res!1885458) b!4528159))

(assert (= (and d!1397066 (not res!1885456)) b!4528157))

(assert (= (and b!4528157 res!1885457) b!4528158))

(declare-fun m!5283137 () Bool)

(assert (=> b!4528160 m!5283137))

(declare-fun m!5283141 () Bool)

(assert (=> b!4528160 m!5283141))

(assert (=> d!1397066 m!5283137))

(assert (=> b!4528159 m!5280315))

(assert (=> b!4528159 m!5282087))

(assert (=> b!4528159 m!5282087))

(declare-fun m!5283147 () Bool)

(assert (=> b!4528159 m!5283147))

(declare-fun m!5283149 () Bool)

(assert (=> b!4528156 m!5283149))

(declare-fun m!5283151 () Bool)

(assert (=> b!4528157 m!5283151))

(assert (=> b!4528157 m!5283151))

(declare-fun m!5283153 () Bool)

(assert (=> b!4528157 m!5283153))

(declare-fun m!5283155 () Bool)

(assert (=> b!4528162 m!5283155))

(assert (=> b!4528162 m!5283151))

(assert (=> b!4528162 m!5283151))

(assert (=> b!4528162 m!5283153))

(declare-fun m!5283159 () Bool)

(assert (=> b!4528162 m!5283159))

(assert (=> b!4528158 m!5280315))

(assert (=> b!4528158 m!5282087))

(assert (=> b!4528158 m!5282087))

(assert (=> b!4528158 m!5283147))

(assert (=> b!4528154 m!5280315))

(assert (=> b!4528154 m!5282087))

(declare-fun m!5283161 () Bool)

(assert (=> bm!315607 m!5283161))

(assert (=> d!1396206 d!1397066))

(assert (=> d!1396206 d!1396208))

(declare-fun d!1397072 () Bool)

(assert (=> d!1397072 (contains!13427 (extractMap!1228 (toList!4351 lt!1702722)) key!3287)))

(assert (=> d!1397072 true))

(declare-fun _$34!700 () Unit!96156)

(assert (=> d!1397072 (= (choose!29645 lt!1702722 key!3287 hashF!1107) _$34!700)))

(declare-fun bs!863394 () Bool)

(assert (= bs!863394 d!1397072))

(assert (=> bs!863394 m!5280315))

(assert (=> bs!863394 m!5280315))

(assert (=> bs!863394 m!5280485))

(assert (=> d!1396206 d!1397072))

(declare-fun d!1397076 () Bool)

(declare-fun res!1885468 () Bool)

(declare-fun e!2821420 () Bool)

(assert (=> d!1397076 (=> res!1885468 e!2821420)))

(assert (=> d!1397076 (= res!1885468 ((_ is Nil!50681) (toList!4351 lt!1702722)))))

(assert (=> d!1397076 (= (forall!10291 (toList!4351 lt!1702722) lambda!173597) e!2821420)))

(declare-fun b!4528174 () Bool)

(declare-fun e!2821421 () Bool)

(assert (=> b!4528174 (= e!2821420 e!2821421)))

(declare-fun res!1885469 () Bool)

(assert (=> b!4528174 (=> (not res!1885469) (not e!2821421))))

(assert (=> b!4528174 (= res!1885469 (dynLambda!21178 lambda!173597 (h!56544 (toList!4351 lt!1702722))))))

(declare-fun b!4528175 () Bool)

(assert (=> b!4528175 (= e!2821421 (forall!10291 (t!357767 (toList!4351 lt!1702722)) lambda!173597))))

(assert (= (and d!1397076 (not res!1885468)) b!4528174))

(assert (= (and b!4528174 res!1885469) b!4528175))

(declare-fun b_lambda!156103 () Bool)

(assert (=> (not b_lambda!156103) (not b!4528174)))

(declare-fun m!5283165 () Bool)

(assert (=> b!4528174 m!5283165))

(declare-fun m!5283167 () Bool)

(assert (=> b!4528175 m!5283167))

(assert (=> d!1396206 d!1397076))

(declare-fun d!1397078 () Bool)

(declare-fun res!1885470 () Bool)

(declare-fun e!2821422 () Bool)

(assert (=> d!1397078 (=> res!1885470 e!2821422)))

(assert (=> d!1397078 (= res!1885470 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (= (_1!28856 (h!56544 (toList!4351 lt!1702722))) hash!344)))))

(assert (=> d!1397078 (= (containsKey!1815 (toList!4351 lt!1702722) hash!344) e!2821422)))

(declare-fun b!4528176 () Bool)

(declare-fun e!2821423 () Bool)

(assert (=> b!4528176 (= e!2821422 e!2821423)))

(declare-fun res!1885471 () Bool)

(assert (=> b!4528176 (=> (not res!1885471) (not e!2821423))))

(assert (=> b!4528176 (= res!1885471 (and (or (not ((_ is Cons!50681) (toList!4351 lt!1702722))) (bvsle (_1!28856 (h!56544 (toList!4351 lt!1702722))) hash!344)) ((_ is Cons!50681) (toList!4351 lt!1702722)) (bvslt (_1!28856 (h!56544 (toList!4351 lt!1702722))) hash!344)))))

(declare-fun b!4528177 () Bool)

(assert (=> b!4528177 (= e!2821423 (containsKey!1815 (t!357767 (toList!4351 lt!1702722)) hash!344))))

(assert (= (and d!1397078 (not res!1885470)) b!4528176))

(assert (= (and b!4528176 res!1885471) b!4528177))

(declare-fun m!5283169 () Bool)

(assert (=> b!4528177 m!5283169))

(assert (=> d!1396218 d!1397078))

(declare-fun d!1397080 () Bool)

(declare-fun lt!1703879 () Bool)

(assert (=> d!1397080 (= lt!1703879 (select (content!8385 (toList!4351 lt!1702935)) lt!1702726))))

(declare-fun e!2821424 () Bool)

(assert (=> d!1397080 (= lt!1703879 e!2821424)))

(declare-fun res!1885472 () Bool)

(assert (=> d!1397080 (=> (not res!1885472) (not e!2821424))))

(assert (=> d!1397080 (= res!1885472 ((_ is Cons!50681) (toList!4351 lt!1702935)))))

(assert (=> d!1397080 (= (contains!13428 (toList!4351 lt!1702935) lt!1702726) lt!1703879)))

(declare-fun b!4528178 () Bool)

(declare-fun e!2821425 () Bool)

(assert (=> b!4528178 (= e!2821424 e!2821425)))

(declare-fun res!1885473 () Bool)

(assert (=> b!4528178 (=> res!1885473 e!2821425)))

(assert (=> b!4528178 (= res!1885473 (= (h!56544 (toList!4351 lt!1702935)) lt!1702726))))

(declare-fun b!4528179 () Bool)

(assert (=> b!4528179 (= e!2821425 (contains!13428 (t!357767 (toList!4351 lt!1702935)) lt!1702726))))

(assert (= (and d!1397080 res!1885472) b!4528178))

(assert (= (and b!4528178 (not res!1885473)) b!4528179))

(declare-fun m!5283171 () Bool)

(assert (=> d!1397080 m!5283171))

(declare-fun m!5283173 () Bool)

(assert (=> d!1397080 m!5283173))

(declare-fun m!5283175 () Bool)

(assert (=> b!4528179 m!5283175))

(assert (=> b!4526807 d!1397080))

(declare-fun d!1397082 () Bool)

(declare-fun res!1885476 () Bool)

(declare-fun e!2821427 () Bool)

(assert (=> d!1397082 (=> res!1885476 e!2821427)))

(declare-fun e!2821428 () Bool)

(assert (=> d!1397082 (= res!1885476 e!2821428)))

(declare-fun res!1885475 () Bool)

(assert (=> d!1397082 (=> (not res!1885475) (not e!2821428))))

(assert (=> d!1397082 (= res!1885475 ((_ is Cons!50681) (t!357767 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1397082 (= (containsKeyBiggerList!152 (t!357767 (t!357767 (toList!4351 lm!1477))) key!3287) e!2821427)))

(declare-fun b!4528180 () Bool)

(assert (=> b!4528180 (= e!2821428 (containsKey!1812 (_2!28856 (h!56544 (t!357767 (t!357767 (toList!4351 lm!1477))))) key!3287))))

(declare-fun b!4528181 () Bool)

(declare-fun e!2821426 () Bool)

(assert (=> b!4528181 (= e!2821427 e!2821426)))

(declare-fun res!1885474 () Bool)

(assert (=> b!4528181 (=> (not res!1885474) (not e!2821426))))

(assert (=> b!4528181 (= res!1885474 ((_ is Cons!50681) (t!357767 (t!357767 (toList!4351 lm!1477)))))))

(declare-fun b!4528182 () Bool)

(assert (=> b!4528182 (= e!2821426 (containsKeyBiggerList!152 (t!357767 (t!357767 (t!357767 (toList!4351 lm!1477)))) key!3287))))

(assert (= (and d!1397082 res!1885475) b!4528180))

(assert (= (and d!1397082 (not res!1885476)) b!4528181))

(assert (= (and b!4528181 res!1885474) b!4528182))

(declare-fun m!5283177 () Bool)

(assert (=> b!4528180 m!5283177))

(declare-fun m!5283179 () Bool)

(assert (=> b!4528182 m!5283179))

(assert (=> b!4526773 d!1397082))

(declare-fun d!1397084 () Bool)

(assert (=> d!1397084 (= (get!16620 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344)) (v!44777 (getValueByKey!1112 (toList!4351 lt!1702722) hash!344)))))

(assert (=> d!1396384 d!1397084))

(assert (=> d!1396384 d!1396484))

(assert (=> b!4526738 d!1396452))

(assert (=> b!4526738 d!1396456))

(declare-fun bs!863397 () Bool)

(declare-fun b!4528184 () Bool)

(assert (= bs!863397 (and b!4528184 b!4527887)))

(declare-fun lambda!173844 () Int)

(assert (=> bs!863397 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173844 lambda!173785))))

(declare-fun bs!863400 () Bool)

(assert (= bs!863400 (and b!4528184 d!1396296)))

(assert (=> bs!863400 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703123) (= lambda!173844 lambda!173703))))

(declare-fun bs!863402 () Bool)

(assert (= bs!863402 (and b!4528184 b!4528021)))

(assert (=> bs!863402 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703768) (= lambda!173844 lambda!173830))))

(declare-fun bs!863404 () Bool)

(assert (= bs!863404 (and b!4528184 b!4527933)))

(assert (=> bs!863404 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703666) (= lambda!173844 lambda!173805))))

(declare-fun bs!863406 () Bool)

(assert (= bs!863406 (and b!4528184 b!4527889)))

(assert (=> bs!863406 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173844 lambda!173786))))

(declare-fun bs!863408 () Bool)

(assert (= bs!863408 (and b!4528184 b!4527971)))

(assert (=> bs!863408 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173844 lambda!173818))))

(declare-fun bs!863410 () Bool)

(assert (= bs!863410 (and b!4528184 b!4527019)))

(assert (=> bs!863410 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703158) (= lambda!173844 lambda!173713))))

(declare-fun bs!863412 () Bool)

(assert (= bs!863412 (and b!4528184 b!4527307)))

(assert (=> bs!863412 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703261) (= lambda!173844 lambda!173743))))

(declare-fun bs!863414 () Bool)

(assert (= bs!863414 (and b!4528184 b!4527305)))

(assert (=> bs!863414 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173844 lambda!173739))))

(declare-fun bs!863416 () Bool)

(assert (= bs!863416 (and b!4528184 d!1397038)))

(assert (=> bs!863416 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173844 lambda!173835))))

(declare-fun bs!863418 () Bool)

(assert (= bs!863418 (and b!4528184 d!1396960)))

(assert (=> bs!863418 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703769) (= lambda!173844 lambda!173832))))

(declare-fun bs!863420 () Bool)

(assert (= bs!863420 (and b!4528184 b!4526999)))

(assert (=> bs!863420 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173844 lambda!173701))))

(declare-fun bs!863422 () Bool)

(assert (= bs!863422 (and b!4528184 b!4527017)))

(assert (=> bs!863422 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173844 lambda!173711))))

(declare-fun bs!863423 () Bool)

(assert (= bs!863423 (and b!4528184 d!1396390)))

(assert (=> bs!863423 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703159) (= lambda!173844 lambda!173714))))

(declare-fun bs!863425 () Bool)

(assert (= bs!863425 (and b!4528184 b!4527969)))

(assert (=> bs!863425 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173844 lambda!173815))))

(declare-fun bs!863427 () Bool)

(assert (= bs!863427 (and b!4528184 b!4526997)))

(assert (=> bs!863427 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173844 lambda!173700))))

(assert (=> bs!863410 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173844 lambda!173712))))

(declare-fun bs!863428 () Bool)

(assert (= bs!863428 (and b!4528184 d!1396804)))

(assert (=> bs!863428 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703572) (= lambda!173844 lambda!173777))))

(declare-fun bs!863430 () Bool)

(assert (= bs!863430 (and b!4528184 d!1396634)))

(assert (=> bs!863430 (not (= lambda!173844 lambda!173754))))

(declare-fun bs!863431 () Bool)

(assert (= bs!863431 (and b!4528184 b!4528019)))

(assert (=> bs!863431 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173844 lambda!173825))))

(assert (=> bs!863402 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173844 lambda!173828))))

(assert (=> bs!863412 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173844 lambda!173740))))

(declare-fun bs!863433 () Bool)

(assert (= bs!863433 (and b!4528184 b!4527806)))

(assert (=> bs!863433 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173844 lambda!173774))))

(declare-fun bs!863435 () Bool)

(assert (= bs!863435 (and b!4528184 d!1397000)))

(assert (=> bs!863435 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703158) (= lambda!173844 lambda!173834))))

(assert (=> bs!863406 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703622) (= lambda!173844 lambda!173789))))

(assert (=> bs!863420 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703122) (= lambda!173844 lambda!173702))))

(declare-fun bs!863439 () Bool)

(assert (= bs!863439 (and b!4528184 d!1396932)))

(assert (=> bs!863439 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703708) (= lambda!173844 lambda!173822))))

(declare-fun bs!863440 () Bool)

(assert (= bs!863440 (and b!4528184 b!4527808)))

(assert (=> bs!863440 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173844 lambda!173775))))

(declare-fun bs!863441 () Bool)

(assert (= bs!863441 (and b!4528184 d!1396260)))

(assert (=> bs!863441 (not (= lambda!173844 lambda!173651))))

(declare-fun bs!863442 () Bool)

(assert (= bs!863442 (and b!4528184 b!4527931)))

(assert (=> bs!863442 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173844 lambda!173803))))

(assert (=> bs!863404 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173844 lambda!173804))))

(declare-fun bs!863443 () Bool)

(assert (= bs!863443 (and b!4528184 d!1396498)))

(assert (=> bs!863443 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173844 lambda!173736))))

(assert (=> bs!863408 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703707) (= lambda!173844 lambda!173820))))

(declare-fun bs!863444 () Bool)

(assert (= bs!863444 (and b!4528184 d!1396564)))

(assert (=> bs!863444 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703262) (= lambda!173844 lambda!173746))))

(assert (=> bs!863440 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703571) (= lambda!173844 lambda!173776))))

(declare-fun bs!863445 () Bool)

(assert (= bs!863445 (and b!4528184 d!1396878)))

(assert (=> bs!863445 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703623) (= lambda!173844 lambda!173796))))

(declare-fun bs!863446 () Bool)

(assert (= bs!863446 (and b!4528184 d!1396572)))

(assert (=> bs!863446 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703122) (= lambda!173844 lambda!173753))))

(declare-fun bs!863447 () Bool)

(assert (= bs!863447 (and b!4528184 b!4526608)))

(assert (=> bs!863447 (not (= lambda!173844 lambda!173585))))

(declare-fun bs!863448 () Bool)

(assert (= bs!863448 (and b!4528184 d!1396892)))

(assert (=> bs!863448 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703667) (= lambda!173844 lambda!173808))))

(assert (=> b!4528184 true))

(declare-fun bs!863449 () Bool)

(declare-fun b!4528186 () Bool)

(assert (= bs!863449 (and b!4528186 b!4527887)))

(declare-fun lambda!173845 () Int)

(assert (=> bs!863449 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173845 lambda!173785))))

(declare-fun bs!863450 () Bool)

(assert (= bs!863450 (and b!4528186 d!1396296)))

(assert (=> bs!863450 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703123) (= lambda!173845 lambda!173703))))

(declare-fun bs!863451 () Bool)

(assert (= bs!863451 (and b!4528186 b!4528021)))

(assert (=> bs!863451 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703768) (= lambda!173845 lambda!173830))))

(declare-fun bs!863452 () Bool)

(assert (= bs!863452 (and b!4528186 b!4527933)))

(assert (=> bs!863452 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703666) (= lambda!173845 lambda!173805))))

(declare-fun bs!863453 () Bool)

(assert (= bs!863453 (and b!4528186 b!4527889)))

(assert (=> bs!863453 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173845 lambda!173786))))

(declare-fun bs!863454 () Bool)

(assert (= bs!863454 (and b!4528186 b!4527971)))

(assert (=> bs!863454 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173845 lambda!173818))))

(declare-fun bs!863455 () Bool)

(assert (= bs!863455 (and b!4528186 b!4527019)))

(assert (=> bs!863455 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703158) (= lambda!173845 lambda!173713))))

(declare-fun bs!863456 () Bool)

(assert (= bs!863456 (and b!4528186 b!4527307)))

(assert (=> bs!863456 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703261) (= lambda!173845 lambda!173743))))

(declare-fun bs!863457 () Bool)

(assert (= bs!863457 (and b!4528186 b!4527305)))

(assert (=> bs!863457 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173845 lambda!173739))))

(declare-fun bs!863458 () Bool)

(assert (= bs!863458 (and b!4528186 d!1397038)))

(assert (=> bs!863458 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173845 lambda!173835))))

(declare-fun bs!863459 () Bool)

(assert (= bs!863459 (and b!4528186 d!1396960)))

(assert (=> bs!863459 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703769) (= lambda!173845 lambda!173832))))

(declare-fun bs!863460 () Bool)

(assert (= bs!863460 (and b!4528186 b!4526999)))

(assert (=> bs!863460 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173845 lambda!173701))))

(declare-fun bs!863461 () Bool)

(assert (= bs!863461 (and b!4528186 b!4527017)))

(assert (=> bs!863461 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173845 lambda!173711))))

(declare-fun bs!863462 () Bool)

(assert (= bs!863462 (and b!4528186 d!1396390)))

(assert (=> bs!863462 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703159) (= lambda!173845 lambda!173714))))

(declare-fun bs!863463 () Bool)

(assert (= bs!863463 (and b!4528186 b!4527969)))

(assert (=> bs!863463 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173845 lambda!173815))))

(declare-fun bs!863464 () Bool)

(assert (= bs!863464 (and b!4528186 b!4526997)))

(assert (=> bs!863464 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702724) (= lambda!173845 lambda!173700))))

(assert (=> bs!863455 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173845 lambda!173712))))

(declare-fun bs!863465 () Bool)

(assert (= bs!863465 (and b!4528186 d!1396804)))

(assert (=> bs!863465 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703572) (= lambda!173845 lambda!173777))))

(declare-fun bs!863467 () Bool)

(assert (= bs!863467 (and b!4528186 d!1396634)))

(assert (=> bs!863467 (not (= lambda!173845 lambda!173754))))

(declare-fun bs!863468 () Bool)

(assert (= bs!863468 (and b!4528186 b!4528019)))

(assert (=> bs!863468 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173845 lambda!173825))))

(assert (=> bs!863451 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173845 lambda!173828))))

(assert (=> bs!863456 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173845 lambda!173740))))

(declare-fun bs!863469 () Bool)

(assert (= bs!863469 (and b!4528186 b!4527806)))

(assert (=> bs!863469 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173845 lambda!173774))))

(declare-fun bs!863470 () Bool)

(assert (= bs!863470 (and b!4528186 d!1397000)))

(assert (=> bs!863470 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703158) (= lambda!173845 lambda!173834))))

(assert (=> bs!863453 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703622) (= lambda!173845 lambda!173789))))

(assert (=> bs!863460 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703122) (= lambda!173845 lambda!173702))))

(declare-fun bs!863471 () Bool)

(assert (= bs!863471 (and b!4528186 d!1396932)))

(assert (=> bs!863471 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703708) (= lambda!173845 lambda!173822))))

(declare-fun bs!863473 () Bool)

(assert (= bs!863473 (and b!4528186 b!4527808)))

(assert (=> bs!863473 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173845 lambda!173775))))

(declare-fun bs!863475 () Bool)

(assert (= bs!863475 (and b!4528186 d!1396260)))

(assert (=> bs!863475 (not (= lambda!173845 lambda!173651))))

(declare-fun bs!863476 () Bool)

(assert (= bs!863476 (and b!4528186 b!4527931)))

(assert (=> bs!863476 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173845 lambda!173803))))

(assert (=> bs!863452 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173845 lambda!173804))))

(declare-fun bs!863479 () Bool)

(assert (= bs!863479 (and b!4528186 d!1396498)))

(assert (=> bs!863479 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1702713) (= lambda!173845 lambda!173736))))

(assert (=> bs!863454 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703707) (= lambda!173845 lambda!173820))))

(declare-fun bs!863482 () Bool)

(assert (= bs!863482 (and b!4528186 d!1396564)))

(assert (=> bs!863482 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703262) (= lambda!173845 lambda!173746))))

(assert (=> bs!863473 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703571) (= lambda!173845 lambda!173776))))

(declare-fun bs!863485 () Bool)

(assert (= bs!863485 (and b!4528186 d!1396878)))

(assert (=> bs!863485 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703623) (= lambda!173845 lambda!173796))))

(declare-fun bs!863487 () Bool)

(assert (= bs!863487 (and b!4528186 d!1396572)))

(assert (=> bs!863487 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703122) (= lambda!173845 lambda!173753))))

(declare-fun bs!863489 () Bool)

(assert (= bs!863489 (and b!4528186 b!4528184)))

(assert (=> bs!863489 (= lambda!173845 lambda!173844)))

(declare-fun bs!863491 () Bool)

(assert (= bs!863491 (and b!4528186 b!4526608)))

(assert (=> bs!863491 (not (= lambda!173845 lambda!173585))))

(declare-fun bs!863493 () Bool)

(assert (= bs!863493 (and b!4528186 d!1396892)))

(assert (=> bs!863493 (= (= (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703667) (= lambda!173845 lambda!173808))))

(assert (=> b!4528186 true))

(declare-fun lt!1703896 () ListMap!3613)

(declare-fun lambda!173847 () Int)

(assert (=> bs!863449 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173847 lambda!173785))))

(assert (=> bs!863450 (= (= lt!1703896 lt!1703123) (= lambda!173847 lambda!173703))))

(assert (=> bs!863451 (= (= lt!1703896 lt!1703768) (= lambda!173847 lambda!173830))))

(assert (=> bs!863452 (= (= lt!1703896 lt!1703666) (= lambda!173847 lambda!173805))))

(assert (=> bs!863453 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173847 lambda!173786))))

(assert (=> b!4528186 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173847 lambda!173845))))

(assert (=> bs!863454 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173847 lambda!173818))))

(assert (=> bs!863455 (= (= lt!1703896 lt!1703158) (= lambda!173847 lambda!173713))))

(assert (=> bs!863456 (= (= lt!1703896 lt!1703261) (= lambda!173847 lambda!173743))))

(assert (=> bs!863457 (= (= lt!1703896 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173847 lambda!173739))))

(assert (=> bs!863458 (= (= lt!1703896 lt!1702724) (= lambda!173847 lambda!173835))))

(assert (=> bs!863459 (= (= lt!1703896 lt!1703769) (= lambda!173847 lambda!173832))))

(assert (=> bs!863460 (= (= lt!1703896 lt!1702724) (= lambda!173847 lambda!173701))))

(assert (=> bs!863461 (= (= lt!1703896 lt!1702713) (= lambda!173847 lambda!173711))))

(assert (=> bs!863462 (= (= lt!1703896 lt!1703159) (= lambda!173847 lambda!173714))))

(assert (=> bs!863463 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173847 lambda!173815))))

(assert (=> bs!863464 (= (= lt!1703896 lt!1702724) (= lambda!173847 lambda!173700))))

(assert (=> bs!863455 (= (= lt!1703896 lt!1702713) (= lambda!173847 lambda!173712))))

(assert (=> bs!863465 (= (= lt!1703896 lt!1703572) (= lambda!173847 lambda!173777))))

(assert (=> bs!863467 (not (= lambda!173847 lambda!173754))))

(assert (=> bs!863468 (= (= lt!1703896 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173847 lambda!173825))))

(assert (=> bs!863451 (= (= lt!1703896 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173847 lambda!173828))))

(assert (=> bs!863456 (= (= lt!1703896 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173847 lambda!173740))))

(assert (=> bs!863469 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173847 lambda!173774))))

(assert (=> bs!863470 (= (= lt!1703896 lt!1703158) (= lambda!173847 lambda!173834))))

(assert (=> bs!863453 (= (= lt!1703896 lt!1703622) (= lambda!173847 lambda!173789))))

(assert (=> bs!863460 (= (= lt!1703896 lt!1703122) (= lambda!173847 lambda!173702))))

(assert (=> bs!863471 (= (= lt!1703896 lt!1703708) (= lambda!173847 lambda!173822))))

(assert (=> bs!863473 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173847 lambda!173775))))

(assert (=> bs!863475 (not (= lambda!173847 lambda!173651))))

(assert (=> bs!863476 (= (= lt!1703896 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173847 lambda!173803))))

(assert (=> bs!863452 (= (= lt!1703896 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173847 lambda!173804))))

(assert (=> bs!863479 (= (= lt!1703896 lt!1702713) (= lambda!173847 lambda!173736))))

(assert (=> bs!863454 (= (= lt!1703896 lt!1703707) (= lambda!173847 lambda!173820))))

(assert (=> bs!863482 (= (= lt!1703896 lt!1703262) (= lambda!173847 lambda!173746))))

(assert (=> bs!863473 (= (= lt!1703896 lt!1703571) (= lambda!173847 lambda!173776))))

(assert (=> bs!863485 (= (= lt!1703896 lt!1703623) (= lambda!173847 lambda!173796))))

(assert (=> bs!863487 (= (= lt!1703896 lt!1703122) (= lambda!173847 lambda!173753))))

(assert (=> bs!863489 (= (= lt!1703896 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173847 lambda!173844))))

(assert (=> bs!863491 (not (= lambda!173847 lambda!173585))))

(assert (=> bs!863493 (= (= lt!1703896 lt!1703667) (= lambda!173847 lambda!173808))))

(assert (=> b!4528186 true))

(declare-fun bs!863531 () Bool)

(declare-fun d!1397086 () Bool)

(assert (= bs!863531 (and d!1397086 b!4527887)))

(declare-fun lt!1703897 () ListMap!3613)

(declare-fun lambda!173850 () Int)

(assert (=> bs!863531 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173850 lambda!173785))))

(declare-fun bs!863532 () Bool)

(assert (= bs!863532 (and d!1397086 d!1396296)))

(assert (=> bs!863532 (= (= lt!1703897 lt!1703123) (= lambda!173850 lambda!173703))))

(declare-fun bs!863533 () Bool)

(assert (= bs!863533 (and d!1397086 b!4528021)))

(assert (=> bs!863533 (= (= lt!1703897 lt!1703768) (= lambda!173850 lambda!173830))))

(declare-fun bs!863534 () Bool)

(assert (= bs!863534 (and d!1397086 b!4527933)))

(assert (=> bs!863534 (= (= lt!1703897 lt!1703666) (= lambda!173850 lambda!173805))))

(declare-fun bs!863535 () Bool)

(assert (= bs!863535 (and d!1397086 b!4527889)))

(assert (=> bs!863535 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173850 lambda!173786))))

(declare-fun bs!863536 () Bool)

(assert (= bs!863536 (and d!1397086 b!4528186)))

(assert (=> bs!863536 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173850 lambda!173845))))

(declare-fun bs!863537 () Bool)

(assert (= bs!863537 (and d!1397086 b!4527971)))

(assert (=> bs!863537 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173850 lambda!173818))))

(declare-fun bs!863538 () Bool)

(assert (= bs!863538 (and d!1397086 b!4527019)))

(assert (=> bs!863538 (= (= lt!1703897 lt!1703158) (= lambda!173850 lambda!173713))))

(declare-fun bs!863539 () Bool)

(assert (= bs!863539 (and d!1397086 b!4527307)))

(assert (=> bs!863539 (= (= lt!1703897 lt!1703261) (= lambda!173850 lambda!173743))))

(declare-fun bs!863540 () Bool)

(assert (= bs!863540 (and d!1397086 b!4527305)))

(assert (=> bs!863540 (= (= lt!1703897 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173850 lambda!173739))))

(declare-fun bs!863541 () Bool)

(assert (= bs!863541 (and d!1397086 d!1397038)))

(assert (=> bs!863541 (= (= lt!1703897 lt!1702724) (= lambda!173850 lambda!173835))))

(declare-fun bs!863542 () Bool)

(assert (= bs!863542 (and d!1397086 d!1396960)))

(assert (=> bs!863542 (= (= lt!1703897 lt!1703769) (= lambda!173850 lambda!173832))))

(declare-fun bs!863543 () Bool)

(assert (= bs!863543 (and d!1397086 b!4526999)))

(assert (=> bs!863543 (= (= lt!1703897 lt!1702724) (= lambda!173850 lambda!173701))))

(declare-fun bs!863544 () Bool)

(assert (= bs!863544 (and d!1397086 b!4527017)))

(assert (=> bs!863544 (= (= lt!1703897 lt!1702713) (= lambda!173850 lambda!173711))))

(declare-fun bs!863545 () Bool)

(assert (= bs!863545 (and d!1397086 d!1396390)))

(assert (=> bs!863545 (= (= lt!1703897 lt!1703159) (= lambda!173850 lambda!173714))))

(declare-fun bs!863546 () Bool)

(assert (= bs!863546 (and d!1397086 b!4527969)))

(assert (=> bs!863546 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173850 lambda!173815))))

(declare-fun bs!863547 () Bool)

(assert (= bs!863547 (and d!1397086 b!4526997)))

(assert (=> bs!863547 (= (= lt!1703897 lt!1702724) (= lambda!173850 lambda!173700))))

(assert (=> bs!863538 (= (= lt!1703897 lt!1702713) (= lambda!173850 lambda!173712))))

(declare-fun bs!863548 () Bool)

(assert (= bs!863548 (and d!1397086 d!1396804)))

(assert (=> bs!863548 (= (= lt!1703897 lt!1703572) (= lambda!173850 lambda!173777))))

(declare-fun bs!863549 () Bool)

(assert (= bs!863549 (and d!1397086 d!1396634)))

(assert (=> bs!863549 (not (= lambda!173850 lambda!173754))))

(declare-fun bs!863550 () Bool)

(assert (= bs!863550 (and d!1397086 b!4528019)))

(assert (=> bs!863550 (= (= lt!1703897 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173850 lambda!173825))))

(assert (=> bs!863533 (= (= lt!1703897 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173850 lambda!173828))))

(assert (=> bs!863539 (= (= lt!1703897 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173850 lambda!173740))))

(declare-fun bs!863551 () Bool)

(assert (= bs!863551 (and d!1397086 b!4527806)))

(assert (=> bs!863551 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173850 lambda!173774))))

(declare-fun bs!863552 () Bool)

(assert (= bs!863552 (and d!1397086 d!1397000)))

(assert (=> bs!863552 (= (= lt!1703897 lt!1703158) (= lambda!173850 lambda!173834))))

(assert (=> bs!863535 (= (= lt!1703897 lt!1703622) (= lambda!173850 lambda!173789))))

(assert (=> bs!863543 (= (= lt!1703897 lt!1703122) (= lambda!173850 lambda!173702))))

(declare-fun bs!863553 () Bool)

(assert (= bs!863553 (and d!1397086 d!1396932)))

(assert (=> bs!863553 (= (= lt!1703897 lt!1703708) (= lambda!173850 lambda!173822))))

(declare-fun bs!863554 () Bool)

(assert (= bs!863554 (and d!1397086 b!4527808)))

(assert (=> bs!863554 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173850 lambda!173775))))

(declare-fun bs!863555 () Bool)

(assert (= bs!863555 (and d!1397086 d!1396260)))

(assert (=> bs!863555 (not (= lambda!173850 lambda!173651))))

(declare-fun bs!863556 () Bool)

(assert (= bs!863556 (and d!1397086 b!4527931)))

(assert (=> bs!863556 (= (= lt!1703897 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173850 lambda!173803))))

(assert (=> bs!863534 (= (= lt!1703897 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173850 lambda!173804))))

(declare-fun bs!863557 () Bool)

(assert (= bs!863557 (and d!1397086 d!1396498)))

(assert (=> bs!863557 (= (= lt!1703897 lt!1702713) (= lambda!173850 lambda!173736))))

(assert (=> bs!863537 (= (= lt!1703897 lt!1703707) (= lambda!173850 lambda!173820))))

(declare-fun bs!863558 () Bool)

(assert (= bs!863558 (and d!1397086 d!1396564)))

(assert (=> bs!863558 (= (= lt!1703897 lt!1703262) (= lambda!173850 lambda!173746))))

(assert (=> bs!863554 (= (= lt!1703897 lt!1703571) (= lambda!173850 lambda!173776))))

(declare-fun bs!863559 () Bool)

(assert (= bs!863559 (and d!1397086 d!1396878)))

(assert (=> bs!863559 (= (= lt!1703897 lt!1703623) (= lambda!173850 lambda!173796))))

(declare-fun bs!863560 () Bool)

(assert (= bs!863560 (and d!1397086 d!1396572)))

(assert (=> bs!863560 (= (= lt!1703897 lt!1703122) (= lambda!173850 lambda!173753))))

(assert (=> bs!863536 (= (= lt!1703897 lt!1703896) (= lambda!173850 lambda!173847))))

(declare-fun bs!863561 () Bool)

(assert (= bs!863561 (and d!1397086 b!4528184)))

(assert (=> bs!863561 (= (= lt!1703897 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173850 lambda!173844))))

(declare-fun bs!863562 () Bool)

(assert (= bs!863562 (and d!1397086 b!4526608)))

(assert (=> bs!863562 (not (= lambda!173850 lambda!173585))))

(declare-fun bs!863563 () Bool)

(assert (= bs!863563 (and d!1397086 d!1396892)))

(assert (=> bs!863563 (= (= lt!1703897 lt!1703667) (= lambda!173850 lambda!173808))))

(assert (=> d!1397086 true))

(declare-fun b!4528183 () Bool)

(declare-fun e!2821431 () Bool)

(assert (=> b!4528183 (= e!2821431 (invariantList!1027 (toList!4352 lt!1703897)))))

(declare-fun e!2821429 () ListMap!3613)

(assert (=> b!4528184 (= e!2821429 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))

(declare-fun lt!1703884 () Unit!96156)

(declare-fun call!315617 () Unit!96156)

(assert (=> b!4528184 (= lt!1703884 call!315617)))

(declare-fun call!315616 () Bool)

(assert (=> b!4528184 call!315616))

(declare-fun lt!1703883 () Unit!96156)

(assert (=> b!4528184 (= lt!1703883 lt!1703884)))

(declare-fun call!315618 () Bool)

(assert (=> b!4528184 call!315618))

(declare-fun lt!1703893 () Unit!96156)

(declare-fun Unit!96431 () Unit!96156)

(assert (=> b!4528184 (= lt!1703893 Unit!96431)))

(declare-fun b!4528185 () Bool)

(declare-fun e!2821430 () Bool)

(assert (=> b!4528185 (= e!2821430 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173847))))

(declare-fun b!4528187 () Bool)

(declare-fun res!1885479 () Bool)

(assert (=> b!4528187 (=> (not res!1885479) (not e!2821431))))

(assert (=> b!4528187 (= res!1885479 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173850))))

(declare-fun bm!315611 () Bool)

(assert (=> bm!315611 (= call!315617 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))))

(assert (=> d!1397086 e!2821431))

(declare-fun res!1885478 () Bool)

(assert (=> d!1397086 (=> (not res!1885478) (not e!2821431))))

(assert (=> d!1397086 (= res!1885478 (forall!10293 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173850))))

(assert (=> d!1397086 (= lt!1703897 e!2821429)))

(declare-fun c!773119 () Bool)

(assert (=> d!1397086 (= c!773119 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> d!1397086 (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477))))))

(assert (=> d!1397086 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lm!1477))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lt!1703897)))

(assert (=> b!4528186 (= e!2821429 lt!1703896)))

(declare-fun lt!1703899 () ListMap!3613)

(assert (=> b!4528186 (= lt!1703899 (+!1562 (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(assert (=> b!4528186 (= lt!1703896 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477)))) (+!1562 (extractMap!1228 (t!357767 (toList!4351 lm!1477))) (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))))

(declare-fun lt!1703894 () Unit!96156)

(assert (=> b!4528186 (= lt!1703894 call!315617)))

(assert (=> b!4528186 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173845)))

(declare-fun lt!1703888 () Unit!96156)

(assert (=> b!4528186 (= lt!1703888 lt!1703894)))

(assert (=> b!4528186 (forall!10293 (toList!4352 lt!1703899) lambda!173847)))

(declare-fun lt!1703886 () Unit!96156)

(declare-fun Unit!96432 () Unit!96156)

(assert (=> b!4528186 (= lt!1703886 Unit!96432)))

(assert (=> b!4528186 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477)))) lambda!173847)))

(declare-fun lt!1703891 () Unit!96156)

(declare-fun Unit!96433 () Unit!96156)

(assert (=> b!4528186 (= lt!1703891 Unit!96433)))

(declare-fun lt!1703895 () Unit!96156)

(declare-fun Unit!96434 () Unit!96156)

(assert (=> b!4528186 (= lt!1703895 Unit!96434)))

(declare-fun lt!1703890 () Unit!96156)

(assert (=> b!4528186 (= lt!1703890 (forallContained!2545 (toList!4352 lt!1703899) lambda!173847 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(assert (=> b!4528186 (contains!13427 lt!1703899 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(declare-fun lt!1703880 () Unit!96156)

(declare-fun Unit!96435 () Unit!96156)

(assert (=> b!4528186 (= lt!1703880 Unit!96435)))

(assert (=> b!4528186 (contains!13427 lt!1703896 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(declare-fun lt!1703881 () Unit!96156)

(declare-fun Unit!96436 () Unit!96156)

(assert (=> b!4528186 (= lt!1703881 Unit!96436)))

(assert (=> b!4528186 call!315616))

(declare-fun lt!1703885 () Unit!96156)

(declare-fun Unit!96437 () Unit!96156)

(assert (=> b!4528186 (= lt!1703885 Unit!96437)))

(assert (=> b!4528186 (forall!10293 (toList!4352 lt!1703899) lambda!173847)))

(declare-fun lt!1703889 () Unit!96156)

(declare-fun Unit!96438 () Unit!96156)

(assert (=> b!4528186 (= lt!1703889 Unit!96438)))

(declare-fun lt!1703882 () Unit!96156)

(declare-fun Unit!96439 () Unit!96156)

(assert (=> b!4528186 (= lt!1703882 Unit!96439)))

(declare-fun lt!1703898 () Unit!96156)

(assert (=> b!4528186 (= lt!1703898 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (toList!4351 lm!1477))) lt!1703896 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))))

(assert (=> b!4528186 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) lambda!173847)))

(declare-fun lt!1703900 () Unit!96156)

(assert (=> b!4528186 (= lt!1703900 lt!1703898)))

(assert (=> b!4528186 call!315618))

(declare-fun lt!1703892 () Unit!96156)

(declare-fun Unit!96440 () Unit!96156)

(assert (=> b!4528186 (= lt!1703892 Unit!96440)))

(declare-fun res!1885477 () Bool)

(assert (=> b!4528186 (= res!1885477 (forall!10293 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173847))))

(assert (=> b!4528186 (=> (not res!1885477) (not e!2821430))))

(assert (=> b!4528186 e!2821430))

(declare-fun lt!1703887 () Unit!96156)

(declare-fun Unit!96441 () Unit!96156)

(assert (=> b!4528186 (= lt!1703887 Unit!96441)))

(declare-fun bm!315612 () Bool)

(assert (=> bm!315612 (= call!315618 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (ite c!773119 lambda!173844 lambda!173847)))))

(declare-fun bm!315613 () Bool)

(assert (=> bm!315613 (= call!315616 (forall!10293 (ite c!773119 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (_2!28856 (h!56544 (toList!4351 lm!1477)))) (ite c!773119 lambda!173844 lambda!173847)))))

(assert (= (and d!1397086 c!773119) b!4528184))

(assert (= (and d!1397086 (not c!773119)) b!4528186))

(assert (= (and b!4528186 res!1885477) b!4528185))

(assert (= (or b!4528184 b!4528186) bm!315613))

(assert (= (or b!4528184 b!4528186) bm!315612))

(assert (= (or b!4528184 b!4528186) bm!315611))

(assert (= (and d!1397086 res!1885478) b!4528187))

(assert (= (and b!4528187 res!1885479) b!4528183))

(assert (=> bm!315611 m!5280313))

(declare-fun m!5283217 () Bool)

(assert (=> bm!315611 m!5283217))

(declare-fun m!5283219 () Bool)

(assert (=> b!4528185 m!5283219))

(declare-fun m!5283221 () Bool)

(assert (=> b!4528187 m!5283221))

(declare-fun m!5283223 () Bool)

(assert (=> d!1397086 m!5283223))

(assert (=> d!1397086 m!5281151))

(declare-fun m!5283225 () Bool)

(assert (=> bm!315613 m!5283225))

(declare-fun m!5283227 () Bool)

(assert (=> b!4528186 m!5283227))

(assert (=> b!4528186 m!5280313))

(declare-fun m!5283229 () Bool)

(assert (=> b!4528186 m!5283229))

(declare-fun m!5283231 () Bool)

(assert (=> b!4528186 m!5283231))

(assert (=> b!4528186 m!5283219))

(assert (=> b!4528186 m!5280313))

(declare-fun m!5283233 () Bool)

(assert (=> b!4528186 m!5283233))

(declare-fun m!5283235 () Bool)

(assert (=> b!4528186 m!5283235))

(assert (=> b!4528186 m!5283231))

(declare-fun m!5283237 () Bool)

(assert (=> b!4528186 m!5283237))

(declare-fun m!5283239 () Bool)

(assert (=> b!4528186 m!5283239))

(declare-fun m!5283241 () Bool)

(assert (=> b!4528186 m!5283241))

(assert (=> b!4528186 m!5283233))

(declare-fun m!5283243 () Bool)

(assert (=> b!4528186 m!5283243))

(declare-fun m!5283245 () Bool)

(assert (=> b!4528186 m!5283245))

(declare-fun m!5283247 () Bool)

(assert (=> bm!315612 m!5283247))

(declare-fun m!5283249 () Bool)

(assert (=> b!4528183 m!5283249))

(assert (=> b!4527012 d!1397086))

(assert (=> b!4527012 d!1396204))

(declare-fun d!1397094 () Bool)

(assert (=> d!1397094 (dynLambda!21181 lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711))))))

(assert (=> d!1397094 true))

(declare-fun _$7!1885 () Unit!96156)

(assert (=> d!1397094 (= (choose!29661 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585 (tuple2!51123 key!3287 (_2!28855 (get!16618 lt!1702711)))) _$7!1885)))

(declare-fun b_lambda!156105 () Bool)

(assert (=> (not b_lambda!156105) (not d!1397094)))

(declare-fun bs!863590 () Bool)

(assert (= bs!863590 d!1397094))

(assert (=> bs!863590 m!5281141))

(assert (=> d!1396398 d!1397094))

(declare-fun d!1397096 () Bool)

(declare-fun res!1885485 () Bool)

(declare-fun e!2821437 () Bool)

(assert (=> d!1397096 (=> res!1885485 e!2821437)))

(assert (=> d!1397096 (= res!1885485 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> d!1397096 (= (forall!10293 (_2!28856 (h!56544 (toList!4351 lm!1477))) lambda!173585) e!2821437)))

(declare-fun b!4528195 () Bool)

(declare-fun e!2821438 () Bool)

(assert (=> b!4528195 (= e!2821437 e!2821438)))

(declare-fun res!1885486 () Bool)

(assert (=> b!4528195 (=> (not res!1885486) (not e!2821438))))

(assert (=> b!4528195 (= res!1885486 (dynLambda!21181 lambda!173585 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))))))

(declare-fun b!4528196 () Bool)

(assert (=> b!4528196 (= e!2821438 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 lm!1477)))) lambda!173585))))

(assert (= (and d!1397096 (not res!1885485)) b!4528195))

(assert (= (and b!4528195 res!1885486) b!4528196))

(declare-fun b_lambda!156107 () Bool)

(assert (=> (not b_lambda!156107) (not b!4528195)))

(declare-fun m!5283251 () Bool)

(assert (=> b!4528195 m!5283251))

(declare-fun m!5283253 () Bool)

(assert (=> b!4528196 m!5283253))

(assert (=> d!1396398 d!1397096))

(declare-fun d!1397098 () Bool)

(assert (=> d!1397098 (= (invariantList!1027 (toList!4352 lt!1702983)) (noDuplicatedKeys!269 (toList!4352 lt!1702983)))))

(declare-fun bs!863591 () Bool)

(assert (= bs!863591 d!1397098))

(declare-fun m!5283263 () Bool)

(assert (=> bs!863591 m!5283263))

(assert (=> d!1396256 d!1397098))

(declare-fun d!1397100 () Bool)

(declare-fun res!1885487 () Bool)

(declare-fun e!2821439 () Bool)

(assert (=> d!1397100 (=> res!1885487 e!2821439)))

(assert (=> d!1397100 (= res!1885487 ((_ is Nil!50681) (toList!4351 lt!1702729)))))

(assert (=> d!1397100 (= (forall!10291 (toList!4351 lt!1702729) lambda!173647) e!2821439)))

(declare-fun b!4528197 () Bool)

(declare-fun e!2821440 () Bool)

(assert (=> b!4528197 (= e!2821439 e!2821440)))

(declare-fun res!1885488 () Bool)

(assert (=> b!4528197 (=> (not res!1885488) (not e!2821440))))

(assert (=> b!4528197 (= res!1885488 (dynLambda!21178 lambda!173647 (h!56544 (toList!4351 lt!1702729))))))

(declare-fun b!4528198 () Bool)

(assert (=> b!4528198 (= e!2821440 (forall!10291 (t!357767 (toList!4351 lt!1702729)) lambda!173647))))

(assert (= (and d!1397100 (not res!1885487)) b!4528197))

(assert (= (and b!4528197 res!1885488) b!4528198))

(declare-fun b_lambda!156109 () Bool)

(assert (=> (not b_lambda!156109) (not b!4528197)))

(declare-fun m!5283287 () Bool)

(assert (=> b!4528197 m!5283287))

(declare-fun m!5283291 () Bool)

(assert (=> b!4528198 m!5283291))

(assert (=> d!1396256 d!1397100))

(declare-fun d!1397102 () Bool)

(assert (=> d!1397102 (dynLambda!21178 lambda!173583 (h!56544 (toList!4351 lm!1477)))))

(assert (=> d!1397102 true))

(declare-fun _$7!1886 () Unit!96156)

(assert (=> d!1397102 (= (choose!29644 (toList!4351 lm!1477) lambda!173583 (h!56544 (toList!4351 lm!1477))) _$7!1886)))

(declare-fun b_lambda!156111 () Bool)

(assert (=> (not b_lambda!156111) (not d!1397102)))

(declare-fun bs!863592 () Bool)

(assert (= bs!863592 d!1397102))

(assert (=> bs!863592 m!5280351))

(assert (=> d!1396188 d!1397102))

(assert (=> d!1396188 d!1396168))

(declare-fun bs!863598 () Bool)

(declare-fun b!4528202 () Bool)

(assert (= bs!863598 (and b!4528202 b!4527887)))

(declare-fun lambda!173853 () Int)

(assert (=> bs!863598 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173853 lambda!173785))))

(declare-fun bs!863601 () Bool)

(assert (= bs!863601 (and b!4528202 d!1396296)))

(assert (=> bs!863601 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703123) (= lambda!173853 lambda!173703))))

(declare-fun bs!863603 () Bool)

(assert (= bs!863603 (and b!4528202 b!4528021)))

(assert (=> bs!863603 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703768) (= lambda!173853 lambda!173830))))

(declare-fun bs!863605 () Bool)

(assert (= bs!863605 (and b!4528202 b!4527933)))

(assert (=> bs!863605 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703666) (= lambda!173853 lambda!173805))))

(declare-fun bs!863607 () Bool)

(assert (= bs!863607 (and b!4528202 b!4527889)))

(assert (=> bs!863607 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173853 lambda!173786))))

(declare-fun bs!863609 () Bool)

(assert (= bs!863609 (and b!4528202 b!4528186)))

(assert (=> bs!863609 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173853 lambda!173845))))

(declare-fun bs!863611 () Bool)

(assert (= bs!863611 (and b!4528202 b!4527971)))

(assert (=> bs!863611 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173853 lambda!173818))))

(declare-fun bs!863613 () Bool)

(assert (= bs!863613 (and b!4528202 b!4527019)))

(assert (=> bs!863613 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703158) (= lambda!173853 lambda!173713))))

(declare-fun bs!863615 () Bool)

(assert (= bs!863615 (and b!4528202 b!4527307)))

(assert (=> bs!863615 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703261) (= lambda!173853 lambda!173743))))

(declare-fun bs!863617 () Bool)

(assert (= bs!863617 (and b!4528202 b!4527305)))

(assert (=> bs!863617 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173853 lambda!173739))))

(declare-fun bs!863619 () Bool)

(assert (= bs!863619 (and b!4528202 d!1397038)))

(assert (=> bs!863619 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173853 lambda!173835))))

(declare-fun bs!863620 () Bool)

(assert (= bs!863620 (and b!4528202 d!1396960)))

(assert (=> bs!863620 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703769) (= lambda!173853 lambda!173832))))

(declare-fun bs!863621 () Bool)

(assert (= bs!863621 (and b!4528202 b!4526999)))

(assert (=> bs!863621 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173853 lambda!173701))))

(declare-fun bs!863622 () Bool)

(assert (= bs!863622 (and b!4528202 b!4527017)))

(assert (=> bs!863622 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173853 lambda!173711))))

(declare-fun bs!863623 () Bool)

(assert (= bs!863623 (and b!4528202 d!1397086)))

(assert (=> bs!863623 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703897) (= lambda!173853 lambda!173850))))

(declare-fun bs!863624 () Bool)

(assert (= bs!863624 (and b!4528202 d!1396390)))

(assert (=> bs!863624 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703159) (= lambda!173853 lambda!173714))))

(declare-fun bs!863625 () Bool)

(assert (= bs!863625 (and b!4528202 b!4527969)))

(assert (=> bs!863625 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173853 lambda!173815))))

(declare-fun bs!863626 () Bool)

(assert (= bs!863626 (and b!4528202 b!4526997)))

(assert (=> bs!863626 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173853 lambda!173700))))

(assert (=> bs!863613 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173853 lambda!173712))))

(declare-fun bs!863627 () Bool)

(assert (= bs!863627 (and b!4528202 d!1396804)))

(assert (=> bs!863627 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703572) (= lambda!173853 lambda!173777))))

(declare-fun bs!863628 () Bool)

(assert (= bs!863628 (and b!4528202 d!1396634)))

(assert (=> bs!863628 (not (= lambda!173853 lambda!173754))))

(declare-fun bs!863629 () Bool)

(assert (= bs!863629 (and b!4528202 b!4528019)))

(assert (=> bs!863629 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173853 lambda!173825))))

(assert (=> bs!863603 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173853 lambda!173828))))

(assert (=> bs!863615 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173853 lambda!173740))))

(declare-fun bs!863630 () Bool)

(assert (= bs!863630 (and b!4528202 b!4527806)))

(assert (=> bs!863630 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173853 lambda!173774))))

(declare-fun bs!863631 () Bool)

(assert (= bs!863631 (and b!4528202 d!1397000)))

(assert (=> bs!863631 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703158) (= lambda!173853 lambda!173834))))

(assert (=> bs!863607 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703622) (= lambda!173853 lambda!173789))))

(assert (=> bs!863621 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703122) (= lambda!173853 lambda!173702))))

(declare-fun bs!863635 () Bool)

(assert (= bs!863635 (and b!4528202 d!1396932)))

(assert (=> bs!863635 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703708) (= lambda!173853 lambda!173822))))

(declare-fun bs!863637 () Bool)

(assert (= bs!863637 (and b!4528202 b!4527808)))

(assert (=> bs!863637 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173853 lambda!173775))))

(declare-fun bs!863639 () Bool)

(assert (= bs!863639 (and b!4528202 d!1396260)))

(assert (=> bs!863639 (not (= lambda!173853 lambda!173651))))

(declare-fun bs!863641 () Bool)

(assert (= bs!863641 (and b!4528202 b!4527931)))

(assert (=> bs!863641 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173853 lambda!173803))))

(assert (=> bs!863605 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173853 lambda!173804))))

(declare-fun bs!863644 () Bool)

(assert (= bs!863644 (and b!4528202 d!1396498)))

(assert (=> bs!863644 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173853 lambda!173736))))

(assert (=> bs!863611 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703707) (= lambda!173853 lambda!173820))))

(declare-fun bs!863647 () Bool)

(assert (= bs!863647 (and b!4528202 d!1396564)))

(assert (=> bs!863647 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703262) (= lambda!173853 lambda!173746))))

(assert (=> bs!863637 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703571) (= lambda!173853 lambda!173776))))

(declare-fun bs!863649 () Bool)

(assert (= bs!863649 (and b!4528202 d!1396878)))

(assert (=> bs!863649 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703623) (= lambda!173853 lambda!173796))))

(declare-fun bs!863651 () Bool)

(assert (= bs!863651 (and b!4528202 d!1396572)))

(assert (=> bs!863651 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703122) (= lambda!173853 lambda!173753))))

(assert (=> bs!863609 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703896) (= lambda!173853 lambda!173847))))

(declare-fun bs!863653 () Bool)

(assert (= bs!863653 (and b!4528202 b!4528184)))

(assert (=> bs!863653 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173853 lambda!173844))))

(declare-fun bs!863655 () Bool)

(assert (= bs!863655 (and b!4528202 b!4526608)))

(assert (=> bs!863655 (not (= lambda!173853 lambda!173585))))

(declare-fun bs!863657 () Bool)

(assert (= bs!863657 (and b!4528202 d!1396892)))

(assert (=> bs!863657 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703667) (= lambda!173853 lambda!173808))))

(assert (=> b!4528202 true))

(declare-fun bs!863662 () Bool)

(declare-fun b!4528204 () Bool)

(assert (= bs!863662 (and b!4528204 b!4527887)))

(declare-fun lambda!173855 () Int)

(assert (=> bs!863662 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173855 lambda!173785))))

(declare-fun bs!863665 () Bool)

(assert (= bs!863665 (and b!4528204 d!1396296)))

(assert (=> bs!863665 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703123) (= lambda!173855 lambda!173703))))

(declare-fun bs!863667 () Bool)

(assert (= bs!863667 (and b!4528204 b!4528021)))

(assert (=> bs!863667 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703768) (= lambda!173855 lambda!173830))))

(declare-fun bs!863668 () Bool)

(assert (= bs!863668 (and b!4528204 b!4527933)))

(assert (=> bs!863668 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703666) (= lambda!173855 lambda!173805))))

(declare-fun bs!863670 () Bool)

(assert (= bs!863670 (and b!4528204 b!4528186)))

(assert (=> bs!863670 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173855 lambda!173845))))

(declare-fun bs!863671 () Bool)

(assert (= bs!863671 (and b!4528204 b!4527971)))

(assert (=> bs!863671 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173855 lambda!173818))))

(declare-fun bs!863673 () Bool)

(assert (= bs!863673 (and b!4528204 b!4527019)))

(assert (=> bs!863673 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703158) (= lambda!173855 lambda!173713))))

(declare-fun bs!863675 () Bool)

(assert (= bs!863675 (and b!4528204 b!4527307)))

(assert (=> bs!863675 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703261) (= lambda!173855 lambda!173743))))

(declare-fun bs!863677 () Bool)

(assert (= bs!863677 (and b!4528204 b!4527305)))

(assert (=> bs!863677 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173855 lambda!173739))))

(declare-fun bs!863679 () Bool)

(assert (= bs!863679 (and b!4528204 d!1397038)))

(assert (=> bs!863679 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173855 lambda!173835))))

(declare-fun bs!863680 () Bool)

(assert (= bs!863680 (and b!4528204 d!1396960)))

(assert (=> bs!863680 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703769) (= lambda!173855 lambda!173832))))

(declare-fun bs!863681 () Bool)

(assert (= bs!863681 (and b!4528204 b!4526999)))

(assert (=> bs!863681 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173855 lambda!173701))))

(declare-fun bs!863682 () Bool)

(assert (= bs!863682 (and b!4528204 b!4527017)))

(assert (=> bs!863682 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173855 lambda!173711))))

(declare-fun bs!863683 () Bool)

(assert (= bs!863683 (and b!4528204 d!1397086)))

(assert (=> bs!863683 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703897) (= lambda!173855 lambda!173850))))

(declare-fun bs!863684 () Bool)

(assert (= bs!863684 (and b!4528204 d!1396390)))

(assert (=> bs!863684 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703159) (= lambda!173855 lambda!173714))))

(declare-fun bs!863685 () Bool)

(assert (= bs!863685 (and b!4528204 b!4527969)))

(assert (=> bs!863685 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173855 lambda!173815))))

(declare-fun bs!863686 () Bool)

(assert (= bs!863686 (and b!4528204 b!4526997)))

(assert (=> bs!863686 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702724) (= lambda!173855 lambda!173700))))

(assert (=> bs!863673 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173855 lambda!173712))))

(declare-fun bs!863689 () Bool)

(assert (= bs!863689 (and b!4528204 b!4527889)))

(assert (=> bs!863689 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173855 lambda!173786))))

(declare-fun bs!863691 () Bool)

(assert (= bs!863691 (and b!4528204 b!4528202)))

(assert (=> bs!863691 (= lambda!173855 lambda!173853)))

(declare-fun bs!863693 () Bool)

(assert (= bs!863693 (and b!4528204 d!1396804)))

(assert (=> bs!863693 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703572) (= lambda!173855 lambda!173777))))

(declare-fun bs!863695 () Bool)

(assert (= bs!863695 (and b!4528204 d!1396634)))

(assert (=> bs!863695 (not (= lambda!173855 lambda!173754))))

(declare-fun bs!863697 () Bool)

(assert (= bs!863697 (and b!4528204 b!4528019)))

(assert (=> bs!863697 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173855 lambda!173825))))

(assert (=> bs!863667 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173855 lambda!173828))))

(assert (=> bs!863675 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173855 lambda!173740))))

(declare-fun bs!863701 () Bool)

(assert (= bs!863701 (and b!4528204 b!4527806)))

(assert (=> bs!863701 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173855 lambda!173774))))

(declare-fun bs!863703 () Bool)

(assert (= bs!863703 (and b!4528204 d!1397000)))

(assert (=> bs!863703 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703158) (= lambda!173855 lambda!173834))))

(assert (=> bs!863689 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703622) (= lambda!173855 lambda!173789))))

(assert (=> bs!863681 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703122) (= lambda!173855 lambda!173702))))

(declare-fun bs!863707 () Bool)

(assert (= bs!863707 (and b!4528204 d!1396932)))

(assert (=> bs!863707 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703708) (= lambda!173855 lambda!173822))))

(declare-fun bs!863709 () Bool)

(assert (= bs!863709 (and b!4528204 b!4527808)))

(assert (=> bs!863709 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173855 lambda!173775))))

(declare-fun bs!863710 () Bool)

(assert (= bs!863710 (and b!4528204 d!1396260)))

(assert (=> bs!863710 (not (= lambda!173855 lambda!173651))))

(declare-fun bs!863712 () Bool)

(assert (= bs!863712 (and b!4528204 b!4527931)))

(assert (=> bs!863712 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173855 lambda!173803))))

(assert (=> bs!863668 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173855 lambda!173804))))

(declare-fun bs!863715 () Bool)

(assert (= bs!863715 (and b!4528204 d!1396498)))

(assert (=> bs!863715 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1702713) (= lambda!173855 lambda!173736))))

(assert (=> bs!863671 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703707) (= lambda!173855 lambda!173820))))

(declare-fun bs!863717 () Bool)

(assert (= bs!863717 (and b!4528204 d!1396564)))

(assert (=> bs!863717 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703262) (= lambda!173855 lambda!173746))))

(assert (=> bs!863709 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703571) (= lambda!173855 lambda!173776))))

(declare-fun bs!863718 () Bool)

(assert (= bs!863718 (and b!4528204 d!1396878)))

(assert (=> bs!863718 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703623) (= lambda!173855 lambda!173796))))

(declare-fun bs!863719 () Bool)

(assert (= bs!863719 (and b!4528204 d!1396572)))

(assert (=> bs!863719 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703122) (= lambda!173855 lambda!173753))))

(assert (=> bs!863670 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703896) (= lambda!173855 lambda!173847))))

(declare-fun bs!863722 () Bool)

(assert (= bs!863722 (and b!4528204 b!4528184)))

(assert (=> bs!863722 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173855 lambda!173844))))

(declare-fun bs!863724 () Bool)

(assert (= bs!863724 (and b!4528204 b!4526608)))

(assert (=> bs!863724 (not (= lambda!173855 lambda!173585))))

(declare-fun bs!863726 () Bool)

(assert (= bs!863726 (and b!4528204 d!1396892)))

(assert (=> bs!863726 (= (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703667) (= lambda!173855 lambda!173808))))

(assert (=> b!4528204 true))

(declare-fun lt!1703939 () ListMap!3613)

(declare-fun lambda!173857 () Int)

(assert (=> bs!863662 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173857 lambda!173785))))

(assert (=> b!4528204 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (= lambda!173857 lambda!173855))))

(assert (=> bs!863665 (= (= lt!1703939 lt!1703123) (= lambda!173857 lambda!173703))))

(assert (=> bs!863667 (= (= lt!1703939 lt!1703768) (= lambda!173857 lambda!173830))))

(assert (=> bs!863668 (= (= lt!1703939 lt!1703666) (= lambda!173857 lambda!173805))))

(assert (=> bs!863670 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173857 lambda!173845))))

(assert (=> bs!863671 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173857 lambda!173818))))

(assert (=> bs!863673 (= (= lt!1703939 lt!1703158) (= lambda!173857 lambda!173713))))

(assert (=> bs!863675 (= (= lt!1703939 lt!1703261) (= lambda!173857 lambda!173743))))

(assert (=> bs!863677 (= (= lt!1703939 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173857 lambda!173739))))

(assert (=> bs!863679 (= (= lt!1703939 lt!1702724) (= lambda!173857 lambda!173835))))

(assert (=> bs!863680 (= (= lt!1703939 lt!1703769) (= lambda!173857 lambda!173832))))

(assert (=> bs!863681 (= (= lt!1703939 lt!1702724) (= lambda!173857 lambda!173701))))

(assert (=> bs!863682 (= (= lt!1703939 lt!1702713) (= lambda!173857 lambda!173711))))

(assert (=> bs!863683 (= (= lt!1703939 lt!1703897) (= lambda!173857 lambda!173850))))

(assert (=> bs!863684 (= (= lt!1703939 lt!1703159) (= lambda!173857 lambda!173714))))

(assert (=> bs!863685 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173857 lambda!173815))))

(assert (=> bs!863686 (= (= lt!1703939 lt!1702724) (= lambda!173857 lambda!173700))))

(assert (=> bs!863673 (= (= lt!1703939 lt!1702713) (= lambda!173857 lambda!173712))))

(assert (=> bs!863689 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173857 lambda!173786))))

(assert (=> bs!863691 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (= lambda!173857 lambda!173853))))

(assert (=> bs!863693 (= (= lt!1703939 lt!1703572) (= lambda!173857 lambda!173777))))

(assert (=> bs!863695 (not (= lambda!173857 lambda!173754))))

(assert (=> bs!863697 (= (= lt!1703939 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173857 lambda!173825))))

(assert (=> bs!863667 (= (= lt!1703939 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173857 lambda!173828))))

(assert (=> bs!863675 (= (= lt!1703939 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173857 lambda!173740))))

(assert (=> bs!863701 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173857 lambda!173774))))

(assert (=> bs!863703 (= (= lt!1703939 lt!1703158) (= lambda!173857 lambda!173834))))

(assert (=> bs!863689 (= (= lt!1703939 lt!1703622) (= lambda!173857 lambda!173789))))

(assert (=> bs!863681 (= (= lt!1703939 lt!1703122) (= lambda!173857 lambda!173702))))

(assert (=> bs!863707 (= (= lt!1703939 lt!1703708) (= lambda!173857 lambda!173822))))

(assert (=> bs!863709 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173857 lambda!173775))))

(assert (=> bs!863710 (not (= lambda!173857 lambda!173651))))

(assert (=> bs!863712 (= (= lt!1703939 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173857 lambda!173803))))

(assert (=> bs!863668 (= (= lt!1703939 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173857 lambda!173804))))

(assert (=> bs!863715 (= (= lt!1703939 lt!1702713) (= lambda!173857 lambda!173736))))

(assert (=> bs!863671 (= (= lt!1703939 lt!1703707) (= lambda!173857 lambda!173820))))

(assert (=> bs!863717 (= (= lt!1703939 lt!1703262) (= lambda!173857 lambda!173746))))

(assert (=> bs!863709 (= (= lt!1703939 lt!1703571) (= lambda!173857 lambda!173776))))

(assert (=> bs!863718 (= (= lt!1703939 lt!1703623) (= lambda!173857 lambda!173796))))

(assert (=> bs!863719 (= (= lt!1703939 lt!1703122) (= lambda!173857 lambda!173753))))

(assert (=> bs!863670 (= (= lt!1703939 lt!1703896) (= lambda!173857 lambda!173847))))

(assert (=> bs!863722 (= (= lt!1703939 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173857 lambda!173844))))

(assert (=> bs!863724 (not (= lambda!173857 lambda!173585))))

(assert (=> bs!863726 (= (= lt!1703939 lt!1703667) (= lambda!173857 lambda!173808))))

(assert (=> b!4528204 true))

(declare-fun bs!863734 () Bool)

(declare-fun d!1397106 () Bool)

(assert (= bs!863734 (and d!1397106 b!4527887)))

(declare-fun lambda!173860 () Int)

(declare-fun lt!1703940 () ListMap!3613)

(assert (=> bs!863734 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173860 lambda!173785))))

(declare-fun bs!863736 () Bool)

(assert (= bs!863736 (and d!1397106 b!4528204)))

(assert (=> bs!863736 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (= lambda!173860 lambda!173855))))

(declare-fun bs!863738 () Bool)

(assert (= bs!863738 (and d!1397106 d!1396296)))

(assert (=> bs!863738 (= (= lt!1703940 lt!1703123) (= lambda!173860 lambda!173703))))

(declare-fun bs!863740 () Bool)

(assert (= bs!863740 (and d!1397106 b!4528021)))

(assert (=> bs!863740 (= (= lt!1703940 lt!1703768) (= lambda!173860 lambda!173830))))

(declare-fun bs!863742 () Bool)

(assert (= bs!863742 (and d!1397106 b!4527933)))

(assert (=> bs!863742 (= (= lt!1703940 lt!1703666) (= lambda!173860 lambda!173805))))

(declare-fun bs!863744 () Bool)

(assert (= bs!863744 (and d!1397106 b!4528186)))

(assert (=> bs!863744 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173860 lambda!173845))))

(declare-fun bs!863746 () Bool)

(assert (= bs!863746 (and d!1397106 b!4527971)))

(assert (=> bs!863746 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173860 lambda!173818))))

(declare-fun bs!863748 () Bool)

(assert (= bs!863748 (and d!1397106 b!4527019)))

(assert (=> bs!863748 (= (= lt!1703940 lt!1703158) (= lambda!173860 lambda!173713))))

(declare-fun bs!863750 () Bool)

(assert (= bs!863750 (and d!1397106 b!4527307)))

(assert (=> bs!863750 (= (= lt!1703940 lt!1703261) (= lambda!173860 lambda!173743))))

(declare-fun bs!863752 () Bool)

(assert (= bs!863752 (and d!1397106 b!4527305)))

(assert (=> bs!863752 (= (= lt!1703940 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173860 lambda!173739))))

(declare-fun bs!863754 () Bool)

(assert (= bs!863754 (and d!1397106 d!1397038)))

(assert (=> bs!863754 (= (= lt!1703940 lt!1702724) (= lambda!173860 lambda!173835))))

(declare-fun bs!863756 () Bool)

(assert (= bs!863756 (and d!1397106 d!1396960)))

(assert (=> bs!863756 (= (= lt!1703940 lt!1703769) (= lambda!173860 lambda!173832))))

(declare-fun bs!863758 () Bool)

(assert (= bs!863758 (and d!1397106 b!4526999)))

(assert (=> bs!863758 (= (= lt!1703940 lt!1702724) (= lambda!173860 lambda!173701))))

(declare-fun bs!863760 () Bool)

(assert (= bs!863760 (and d!1397106 b!4527017)))

(assert (=> bs!863760 (= (= lt!1703940 lt!1702713) (= lambda!173860 lambda!173711))))

(declare-fun bs!863761 () Bool)

(assert (= bs!863761 (and d!1397106 d!1397086)))

(assert (=> bs!863761 (= (= lt!1703940 lt!1703897) (= lambda!173860 lambda!173850))))

(declare-fun bs!863763 () Bool)

(assert (= bs!863763 (and d!1397106 d!1396390)))

(assert (=> bs!863763 (= (= lt!1703940 lt!1703159) (= lambda!173860 lambda!173714))))

(declare-fun bs!863765 () Bool)

(assert (= bs!863765 (and d!1397106 b!4527969)))

(assert (=> bs!863765 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 (+!1560 lt!1702722 lt!1702727))))) (= lambda!173860 lambda!173815))))

(declare-fun bs!863767 () Bool)

(assert (= bs!863767 (and d!1397106 b!4526997)))

(assert (=> bs!863767 (= (= lt!1703940 lt!1702724) (= lambda!173860 lambda!173700))))

(assert (=> bs!863748 (= (= lt!1703940 lt!1702713) (= lambda!173860 lambda!173712))))

(declare-fun bs!863769 () Bool)

(assert (= bs!863769 (and d!1397106 b!4527889)))

(assert (=> bs!863769 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702738)))) (= lambda!173860 lambda!173786))))

(declare-fun bs!863770 () Bool)

(assert (= bs!863770 (and d!1397106 b!4528202)))

(assert (=> bs!863770 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (= lambda!173860 lambda!173853))))

(declare-fun bs!863771 () Bool)

(assert (= bs!863771 (and d!1397106 d!1396804)))

(assert (=> bs!863771 (= (= lt!1703940 lt!1703572) (= lambda!173860 lambda!173777))))

(declare-fun bs!863773 () Bool)

(assert (= bs!863773 (and d!1397106 d!1396634)))

(assert (=> bs!863773 (not (= lambda!173860 lambda!173754))))

(declare-fun bs!863775 () Bool)

(assert (= bs!863775 (and d!1397106 b!4528019)))

(assert (=> bs!863775 (= (= lt!1703940 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173860 lambda!173825))))

(assert (=> bs!863740 (= (= lt!1703940 (+!1562 lt!1702713 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173860 lambda!173828))))

(assert (=> bs!863750 (= (= lt!1703940 (+!1562 lt!1702724 (h!56543 (_2!28856 lt!1702727)))) (= lambda!173860 lambda!173740))))

(declare-fun bs!863779 () Bool)

(assert (= bs!863779 (and d!1397106 b!4527806)))

(assert (=> bs!863779 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173860 lambda!173774))))

(declare-fun bs!863781 () Bool)

(assert (= bs!863781 (and d!1397106 d!1397000)))

(assert (=> bs!863781 (= (= lt!1703940 lt!1703158) (= lambda!173860 lambda!173834))))

(assert (=> bs!863769 (= (= lt!1703940 lt!1703622) (= lambda!173860 lambda!173789))))

(assert (=> bs!863758 (= (= lt!1703940 lt!1703122) (= lambda!173860 lambda!173702))))

(declare-fun bs!863783 () Bool)

(assert (= bs!863783 (and d!1397106 d!1396932)))

(assert (=> bs!863783 (= (= lt!1703940 lt!1703708) (= lambda!173860 lambda!173822))))

(declare-fun bs!863785 () Bool)

(assert (= bs!863785 (and d!1397106 b!4527808)))

(assert (=> bs!863785 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lt!1702729)))) (= lambda!173860 lambda!173775))))

(declare-fun bs!863787 () Bool)

(assert (= bs!863787 (and d!1397106 d!1396260)))

(assert (=> bs!863787 (not (= lambda!173860 lambda!173651))))

(declare-fun bs!863789 () Bool)

(assert (= bs!863789 (and d!1397106 b!4527931)))

(assert (=> bs!863789 (= (= lt!1703940 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173860 lambda!173803))))

(assert (=> bs!863742 (= (= lt!1703940 (extractMap!1228 (t!357767 (t!357767 (toList!4351 lm!1477))))) (= lambda!173860 lambda!173804))))

(declare-fun bs!863791 () Bool)

(assert (= bs!863791 (and d!1397106 d!1396498)))

(assert (=> bs!863791 (= (= lt!1703940 lt!1702713) (= lambda!173860 lambda!173736))))

(assert (=> bs!863746 (= (= lt!1703940 lt!1703707) (= lambda!173860 lambda!173820))))

(declare-fun bs!863792 () Bool)

(assert (= bs!863792 (and d!1397106 d!1396564)))

(assert (=> bs!863792 (= (= lt!1703940 lt!1703262) (= lambda!173860 lambda!173746))))

(assert (=> bs!863736 (= (= lt!1703940 lt!1703939) (= lambda!173860 lambda!173857))))

(assert (=> bs!863785 (= (= lt!1703940 lt!1703571) (= lambda!173860 lambda!173776))))

(declare-fun bs!863793 () Bool)

(assert (= bs!863793 (and d!1397106 d!1396878)))

(assert (=> bs!863793 (= (= lt!1703940 lt!1703623) (= lambda!173860 lambda!173796))))

(declare-fun bs!863794 () Bool)

(assert (= bs!863794 (and d!1397106 d!1396572)))

(assert (=> bs!863794 (= (= lt!1703940 lt!1703122) (= lambda!173860 lambda!173753))))

(assert (=> bs!863744 (= (= lt!1703940 lt!1703896) (= lambda!173860 lambda!173847))))

(declare-fun bs!863795 () Bool)

(assert (= bs!863795 (and d!1397106 b!4528184)))

(assert (=> bs!863795 (= (= lt!1703940 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))) (= lambda!173860 lambda!173844))))

(declare-fun bs!863796 () Bool)

(assert (= bs!863796 (and d!1397106 b!4526608)))

(assert (=> bs!863796 (not (= lambda!173860 lambda!173585))))

(declare-fun bs!863797 () Bool)

(assert (= bs!863797 (and d!1397106 d!1396892)))

(assert (=> bs!863797 (= (= lt!1703940 lt!1703667) (= lambda!173860 lambda!173808))))

(assert (=> d!1397106 true))

(declare-fun b!4528201 () Bool)

(declare-fun e!2821444 () Bool)

(assert (=> b!4528201 (= e!2821444 (invariantList!1027 (toList!4352 lt!1703940)))))

(declare-fun e!2821442 () ListMap!3613)

(assert (=> b!4528202 (= e!2821442 (extractMap!1228 (t!357767 (toList!4351 lt!1702722))))))

(declare-fun lt!1703927 () Unit!96156)

(declare-fun call!315623 () Unit!96156)

(assert (=> b!4528202 (= lt!1703927 call!315623)))

(declare-fun call!315622 () Bool)

(assert (=> b!4528202 call!315622))

(declare-fun lt!1703926 () Unit!96156)

(assert (=> b!4528202 (= lt!1703926 lt!1703927)))

(declare-fun call!315624 () Bool)

(assert (=> b!4528202 call!315624))

(declare-fun lt!1703936 () Unit!96156)

(declare-fun Unit!96453 () Unit!96156)

(assert (=> b!4528202 (= lt!1703936 Unit!96453)))

(declare-fun b!4528203 () Bool)

(declare-fun e!2821443 () Bool)

(assert (=> b!4528203 (= e!2821443 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) lambda!173857))))

(declare-fun b!4528205 () Bool)

(declare-fun res!1885491 () Bool)

(assert (=> b!4528205 (=> (not res!1885491) (not e!2821444))))

(assert (=> b!4528205 (= res!1885491 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) lambda!173860))))

(declare-fun bm!315617 () Bool)

(assert (=> bm!315617 (= call!315623 (lemmaContainsAllItsOwnKeys!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))))))

(assert (=> d!1397106 e!2821444))

(declare-fun res!1885490 () Bool)

(assert (=> d!1397106 (=> (not res!1885490) (not e!2821444))))

(assert (=> d!1397106 (= res!1885490 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702722))) lambda!173860))))

(assert (=> d!1397106 (= lt!1703940 e!2821442)))

(declare-fun c!773122 () Bool)

(assert (=> d!1397106 (= c!773122 ((_ is Nil!50680) (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(assert (=> d!1397106 (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702722))))))

(assert (=> d!1397106 (= (addToMapMapFromBucket!699 (_2!28856 (h!56544 (toList!4351 lt!1702722))) (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) lt!1703940)))

(assert (=> b!4528204 (= e!2821442 lt!1703939)))

(declare-fun lt!1703942 () ListMap!3613)

(assert (=> b!4528204 (= lt!1703942 (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))))))

(assert (=> b!4528204 (= lt!1703939 (addToMapMapFromBucket!699 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702722)))) (+!1562 (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))))

(declare-fun lt!1703937 () Unit!96156)

(assert (=> b!4528204 (= lt!1703937 call!315623)))

(assert (=> b!4528204 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) lambda!173855)))

(declare-fun lt!1703931 () Unit!96156)

(assert (=> b!4528204 (= lt!1703931 lt!1703937)))

(assert (=> b!4528204 (forall!10293 (toList!4352 lt!1703942) lambda!173857)))

(declare-fun lt!1703929 () Unit!96156)

(declare-fun Unit!96454 () Unit!96156)

(assert (=> b!4528204 (= lt!1703929 Unit!96454)))

(assert (=> b!4528204 (forall!10293 (t!357766 (_2!28856 (h!56544 (toList!4351 lt!1702722)))) lambda!173857)))

(declare-fun lt!1703934 () Unit!96156)

(declare-fun Unit!96455 () Unit!96156)

(assert (=> b!4528204 (= lt!1703934 Unit!96455)))

(declare-fun lt!1703938 () Unit!96156)

(declare-fun Unit!96456 () Unit!96156)

(assert (=> b!4528204 (= lt!1703938 Unit!96456)))

(declare-fun lt!1703933 () Unit!96156)

(assert (=> b!4528204 (= lt!1703933 (forallContained!2545 (toList!4352 lt!1703942) lambda!173857 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))))))

(assert (=> b!4528204 (contains!13427 lt!1703942 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))))))

(declare-fun lt!1703923 () Unit!96156)

(declare-fun Unit!96457 () Unit!96156)

(assert (=> b!4528204 (= lt!1703923 Unit!96457)))

(assert (=> b!4528204 (contains!13427 lt!1703939 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))))))

(declare-fun lt!1703924 () Unit!96156)

(declare-fun Unit!96458 () Unit!96156)

(assert (=> b!4528204 (= lt!1703924 Unit!96458)))

(assert (=> b!4528204 call!315622))

(declare-fun lt!1703928 () Unit!96156)

(declare-fun Unit!96459 () Unit!96156)

(assert (=> b!4528204 (= lt!1703928 Unit!96459)))

(assert (=> b!4528204 (forall!10293 (toList!4352 lt!1703942) lambda!173857)))

(declare-fun lt!1703932 () Unit!96156)

(declare-fun Unit!96460 () Unit!96156)

(assert (=> b!4528204 (= lt!1703932 Unit!96460)))

(declare-fun lt!1703925 () Unit!96156)

(declare-fun Unit!96461 () Unit!96156)

(assert (=> b!4528204 (= lt!1703925 Unit!96461)))

(declare-fun lt!1703941 () Unit!96156)

(assert (=> b!4528204 (= lt!1703941 (addForallContainsKeyThenBeforeAdding!348 (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703939 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722))))) (_2!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))))

(assert (=> b!4528204 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) lambda!173857)))

(declare-fun lt!1703943 () Unit!96156)

(assert (=> b!4528204 (= lt!1703943 lt!1703941)))

(assert (=> b!4528204 call!315624))

(declare-fun lt!1703935 () Unit!96156)

(declare-fun Unit!96462 () Unit!96156)

(assert (=> b!4528204 (= lt!1703935 Unit!96462)))

(declare-fun res!1885489 () Bool)

(assert (=> b!4528204 (= res!1885489 (forall!10293 (_2!28856 (h!56544 (toList!4351 lt!1702722))) lambda!173857))))

(assert (=> b!4528204 (=> (not res!1885489) (not e!2821443))))

(assert (=> b!4528204 e!2821443))

(declare-fun lt!1703930 () Unit!96156)

(declare-fun Unit!96463 () Unit!96156)

(assert (=> b!4528204 (= lt!1703930 Unit!96463)))

(declare-fun bm!315618 () Bool)

(assert (=> bm!315618 (= call!315624 (forall!10293 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (ite c!773122 lambda!173853 lambda!173857)))))

(declare-fun bm!315619 () Bool)

(assert (=> bm!315619 (= call!315622 (forall!10293 (ite c!773122 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lt!1702722)))) (_2!28856 (h!56544 (toList!4351 lt!1702722)))) (ite c!773122 lambda!173853 lambda!173857)))))

(assert (= (and d!1397106 c!773122) b!4528202))

(assert (= (and d!1397106 (not c!773122)) b!4528204))

(assert (= (and b!4528204 res!1885489) b!4528203))

(assert (= (or b!4528202 b!4528204) bm!315619))

(assert (= (or b!4528202 b!4528204) bm!315618))

(assert (= (or b!4528202 b!4528204) bm!315617))

(assert (= (and d!1397106 res!1885490) b!4528205))

(assert (= (and b!4528205 res!1885491) b!4528201))

(assert (=> bm!315617 m!5280495))

(declare-fun m!5283335 () Bool)

(assert (=> bm!315617 m!5283335))

(declare-fun m!5283339 () Bool)

(assert (=> b!4528203 m!5283339))

(declare-fun m!5283341 () Bool)

(assert (=> b!4528205 m!5283341))

(declare-fun m!5283343 () Bool)

(assert (=> d!1397106 m!5283343))

(declare-fun m!5283345 () Bool)

(assert (=> d!1397106 m!5283345))

(declare-fun m!5283347 () Bool)

(assert (=> bm!315619 m!5283347))

(declare-fun m!5283349 () Bool)

(assert (=> b!4528204 m!5283349))

(assert (=> b!4528204 m!5280495))

(declare-fun m!5283351 () Bool)

(assert (=> b!4528204 m!5283351))

(declare-fun m!5283353 () Bool)

(assert (=> b!4528204 m!5283353))

(assert (=> b!4528204 m!5283339))

(assert (=> b!4528204 m!5280495))

(declare-fun m!5283355 () Bool)

(assert (=> b!4528204 m!5283355))

(declare-fun m!5283357 () Bool)

(assert (=> b!4528204 m!5283357))

(assert (=> b!4528204 m!5283353))

(declare-fun m!5283359 () Bool)

(assert (=> b!4528204 m!5283359))

(declare-fun m!5283361 () Bool)

(assert (=> b!4528204 m!5283361))

(declare-fun m!5283363 () Bool)

(assert (=> b!4528204 m!5283363))

(assert (=> b!4528204 m!5283355))

(declare-fun m!5283365 () Bool)

(assert (=> b!4528204 m!5283365))

(declare-fun m!5283367 () Bool)

(assert (=> b!4528204 m!5283367))

(declare-fun m!5283369 () Bool)

(assert (=> bm!315618 m!5283369))

(declare-fun m!5283371 () Bool)

(assert (=> b!4528201 m!5283371))

(assert (=> b!4526750 d!1397106))

(declare-fun bs!863808 () Bool)

(declare-fun d!1397112 () Bool)

(assert (= bs!863808 (and d!1397112 d!1396254)))

(declare-fun lambda!173862 () Int)

(assert (=> bs!863808 (= lambda!173862 lambda!173645)))

(declare-fun bs!863810 () Bool)

(assert (= bs!863810 (and d!1397112 d!1396204)))

(assert (=> bs!863810 (= lambda!173862 lambda!173594)))

(declare-fun bs!863812 () Bool)

(assert (= bs!863812 (and d!1397112 d!1396880)))

(assert (=> bs!863812 (= lambda!173862 lambda!173799)))

(declare-fun bs!863814 () Bool)

(assert (= bs!863814 (and d!1397112 d!1396256)))

(assert (=> bs!863814 (= lambda!173862 lambda!173647)))

(declare-fun bs!863816 () Bool)

(assert (= bs!863816 (and d!1397112 d!1396916)))

(assert (=> bs!863816 (= lambda!173862 lambda!173810)))

(declare-fun bs!863818 () Bool)

(assert (= bs!863818 (and d!1397112 d!1396946)))

(assert (=> bs!863818 (= lambda!173862 lambda!173824)))

(declare-fun bs!863820 () Bool)

(assert (= bs!863820 (and d!1397112 start!448604)))

(assert (=> bs!863820 (= lambda!173862 lambda!173583)))

(declare-fun bs!863822 () Bool)

(assert (= bs!863822 (and d!1397112 d!1396216)))

(assert (=> bs!863822 (= lambda!173862 lambda!173619)))

(declare-fun bs!863823 () Bool)

(assert (= bs!863823 (and d!1397112 d!1396822)))

(assert (=> bs!863823 (= lambda!173862 lambda!173778)))

(declare-fun bs!863824 () Bool)

(assert (= bs!863824 (and d!1397112 d!1396372)))

(assert (=> bs!863824 (= lambda!173862 lambda!173709)))

(declare-fun bs!863825 () Bool)

(assert (= bs!863825 (and d!1397112 b!4526608)))

(assert (=> bs!863825 (not (= lambda!173862 lambda!173584))))

(declare-fun bs!863826 () Bool)

(assert (= bs!863826 (and d!1397112 d!1396236)))

(assert (=> bs!863826 (= lambda!173862 lambda!173642)))

(declare-fun bs!863827 () Bool)

(assert (= bs!863827 (and d!1397112 d!1396392)))

(assert (=> bs!863827 (= lambda!173862 lambda!173715)))

(declare-fun bs!863828 () Bool)

(assert (= bs!863828 (and d!1397112 d!1396206)))

(assert (=> bs!863828 (= lambda!173862 lambda!173597)))

(declare-fun bs!863829 () Bool)

(assert (= bs!863829 (and d!1397112 d!1396278)))

(assert (=> bs!863829 (= lambda!173862 lambda!173656)))

(declare-fun bs!863830 () Bool)

(assert (= bs!863830 (and d!1397112 d!1396208)))

(assert (=> bs!863830 (= lambda!173862 lambda!173598)))

(declare-fun bs!863832 () Bool)

(assert (= bs!863832 (and d!1397112 d!1396730)))

(assert (=> bs!863832 (= lambda!173862 lambda!173766)))

(declare-fun bs!863833 () Bool)

(assert (= bs!863833 (and d!1397112 d!1396370)))

(assert (=> bs!863833 (not (= lambda!173862 lambda!173706))))

(declare-fun bs!863834 () Bool)

(assert (= bs!863834 (and d!1397112 d!1396380)))

(assert (=> bs!863834 (= lambda!173862 lambda!173710)))

(declare-fun lt!1703966 () ListMap!3613)

(assert (=> d!1397112 (invariantList!1027 (toList!4352 lt!1703966))))

(declare-fun e!2821449 () ListMap!3613)

(assert (=> d!1397112 (= lt!1703966 e!2821449)))

(declare-fun c!773125 () Bool)

(assert (=> d!1397112 (= c!773125 ((_ is Cons!50681) (t!357767 (toList!4351 lt!1702722))))))

(assert (=> d!1397112 (forall!10291 (t!357767 (toList!4351 lt!1702722)) lambda!173862)))

(assert (=> d!1397112 (= (extractMap!1228 (t!357767 (toList!4351 lt!1702722))) lt!1703966)))

(declare-fun b!4528213 () Bool)

(assert (=> b!4528213 (= e!2821449 (addToMapMapFromBucket!699 (_2!28856 (h!56544 (t!357767 (toList!4351 lt!1702722)))) (extractMap!1228 (t!357767 (t!357767 (toList!4351 lt!1702722))))))))

(declare-fun b!4528214 () Bool)

(assert (=> b!4528214 (= e!2821449 (ListMap!3614 Nil!50680))))

(assert (= (and d!1397112 c!773125) b!4528213))

(assert (= (and d!1397112 (not c!773125)) b!4528214))

(declare-fun m!5283387 () Bool)

(assert (=> d!1397112 m!5283387))

(declare-fun m!5283389 () Bool)

(assert (=> d!1397112 m!5283389))

(declare-fun m!5283391 () Bool)

(assert (=> b!4528213 m!5283391))

(assert (=> b!4528213 m!5283391))

(declare-fun m!5283393 () Bool)

(assert (=> b!4528213 m!5283393))

(assert (=> b!4526750 d!1397112))

(declare-fun d!1397120 () Bool)

(assert (=> d!1397120 (= (invariantList!1027 (toList!4352 lt!1703159)) (noDuplicatedKeys!269 (toList!4352 lt!1703159)))))

(declare-fun bs!863835 () Bool)

(assert (= bs!863835 d!1397120))

(declare-fun m!5283395 () Bool)

(assert (=> bs!863835 m!5283395))

(assert (=> b!4527016 d!1397120))

(assert (=> b!4526755 d!1396544))

(assert (=> b!4526755 d!1396546))

(declare-fun d!1397122 () Bool)

(assert (=> d!1397122 (eq!629 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713) (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724))))

(assert (=> d!1397122 true))

(declare-fun _$16!239 () Unit!96156)

(assert (=> d!1397122 (= (choose!29657 lt!1702713 lt!1702724 (_2!28856 lt!1702727)) _$16!239)))

(declare-fun bs!863877 () Bool)

(assert (= bs!863877 d!1397122))

(assert (=> bs!863877 m!5280269))

(assert (=> bs!863877 m!5280341))

(assert (=> bs!863877 m!5280269))

(assert (=> bs!863877 m!5280341))

(assert (=> bs!863877 m!5281035))

(assert (=> d!1396366 d!1397122))

(assert (=> d!1396366 d!1396296))

(declare-fun d!1397132 () Bool)

(assert (=> d!1397132 (= (eq!629 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713) (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724)) (= (content!8387 (toList!4352 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702713))) (content!8387 (toList!4352 (addToMapMapFromBucket!699 (_2!28856 lt!1702727) lt!1702724)))))))

(declare-fun bs!863883 () Bool)

(assert (= bs!863883 d!1397132))

(declare-fun m!5283423 () Bool)

(assert (=> bs!863883 m!5283423))

(declare-fun m!5283425 () Bool)

(assert (=> bs!863883 m!5283425))

(assert (=> d!1396366 d!1397132))

(assert (=> d!1396366 d!1396186))

(assert (=> d!1396366 d!1396390))

(declare-fun d!1397134 () Bool)

(declare-fun c!773136 () Bool)

(assert (=> d!1397134 (= c!773136 ((_ is Nil!50683) (keys!17616 lt!1702732)))))

(declare-fun e!2821467 () (InoxSet K!12070))

(assert (=> d!1397134 (= (content!8386 (keys!17616 lt!1702732)) e!2821467)))

(declare-fun b!4528245 () Bool)

(assert (=> b!4528245 (= e!2821467 ((as const (Array K!12070 Bool)) false))))

(declare-fun b!4528246 () Bool)

(assert (=> b!4528246 (= e!2821467 ((_ map or) (store ((as const (Array K!12070 Bool)) false) (h!56548 (keys!17616 lt!1702732)) true) (content!8386 (t!357769 (keys!17616 lt!1702732)))))))

(assert (= (and d!1397134 c!773136) b!4528245))

(assert (= (and d!1397134 (not c!773136)) b!4528246))

(declare-fun m!5283427 () Bool)

(assert (=> b!4528246 m!5283427))

(declare-fun m!5283429 () Bool)

(assert (=> b!4528246 m!5283429))

(assert (=> b!4526803 d!1397134))

(assert (=> b!4526803 d!1396526))

(declare-fun d!1397136 () Bool)

(declare-fun c!773137 () Bool)

(assert (=> d!1397136 (= c!773137 ((_ is Nil!50683) (keys!17616 lt!1702931)))))

(declare-fun e!2821468 () (InoxSet K!12070))

(assert (=> d!1397136 (= (content!8386 (keys!17616 lt!1702931)) e!2821468)))

(declare-fun b!4528247 () Bool)

(assert (=> b!4528247 (= e!2821468 ((as const (Array K!12070 Bool)) false))))

(declare-fun b!4528248 () Bool)

(assert (=> b!4528248 (= e!2821468 ((_ map or) (store ((as const (Array K!12070 Bool)) false) (h!56548 (keys!17616 lt!1702931)) true) (content!8386 (t!357769 (keys!17616 lt!1702931)))))))

(assert (= (and d!1397136 c!773137) b!4528247))

(assert (= (and d!1397136 (not c!773137)) b!4528248))

(declare-fun m!5283431 () Bool)

(assert (=> b!4528248 m!5283431))

(declare-fun m!5283433 () Bool)

(assert (=> b!4528248 m!5283433))

(assert (=> b!4526803 d!1397136))

(declare-fun bs!863899 () Bool)

(declare-fun b!4528250 () Bool)

(assert (= bs!863899 (and b!4528250 b!4527135)))

(declare-fun lambda!173866 () Int)

(assert (=> bs!863899 (= (= (toList!4352 lt!1702931) (toList!4352 lt!1702718)) (= lambda!173866 lambda!173732))))

(declare-fun bs!863900 () Bool)

(assert (= bs!863900 (and b!4528250 b!4527777)))

(assert (=> bs!863900 (= (= (toList!4352 lt!1702931) (toList!4352 lt!1702732)) (= lambda!173866 lambda!173772))))

(declare-fun bs!863901 () Bool)

(assert (= bs!863901 (and b!4528250 b!4527776)))

(assert (=> bs!863901 (= (= (toList!4352 lt!1702931) (t!357766 (toList!4352 lt!1702732))) (= lambda!173866 lambda!173770))))

(declare-fun bs!863902 () Bool)

(assert (= bs!863902 (and b!4528250 b!4527086)))

(assert (=> bs!863902 (= (= (toList!4352 lt!1702931) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173866 lambda!173720))))

(declare-fun bs!863903 () Bool)

(assert (= bs!863903 (and b!4528250 b!4527667)))

(assert (=> bs!863903 (= (= (toList!4352 lt!1702931) (toList!4352 lt!1702718)) (= lambda!173866 lambda!173764))))

(declare-fun bs!863904 () Bool)

(assert (= bs!863904 (and b!4528250 b!4527270)))

(assert (=> bs!863904 (= (= (toList!4352 lt!1702931) (toList!4352 lt!1702732)) (= lambda!173866 lambda!173737))))

(declare-fun bs!863905 () Bool)

(assert (= bs!863905 (and b!4528250 b!4527880)))

(assert (=> bs!863905 (= (= (toList!4352 lt!1702931) (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (= lambda!173866 lambda!173783))))

(declare-fun bs!863906 () Bool)

(assert (= bs!863906 (and b!4528250 b!4527885)))

(assert (=> bs!863906 (= (= (toList!4352 lt!1702931) (Cons!50680 (h!56543 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477))))))) (= lambda!173866 lambda!173782))))

(declare-fun bs!863907 () Bool)

(assert (= bs!863907 (and b!4528250 b!4527782)))

(assert (=> bs!863907 (= (= (toList!4352 lt!1702931) (Cons!50680 (h!56543 (toList!4352 lt!1702732)) (t!357766 (toList!4352 lt!1702732)))) (= lambda!173866 lambda!173771))))

(declare-fun bs!863908 () Bool)

(assert (= bs!863908 (and b!4528250 b!4527140)))

(assert (=> bs!863908 (= (= (toList!4352 lt!1702931) (Cons!50680 (h!56543 (toList!4352 lt!1702718)) (t!357766 (toList!4352 lt!1702718)))) (= lambda!173866 lambda!173731))))

(declare-fun bs!863909 () Bool)

(assert (= bs!863909 (and b!4528250 b!4527879)))

(assert (=> bs!863909 (= (= (toList!4352 lt!1702931) (t!357766 (toList!4352 (extractMap!1228 (t!357767 (toList!4351 lm!1477)))))) (= lambda!173866 lambda!173781))))

(declare-fun bs!863910 () Bool)

(assert (= bs!863910 (and b!4528250 b!4527134)))

(assert (=> bs!863910 (= (= (toList!4352 lt!1702931) (t!357766 (toList!4352 lt!1702718))) (= lambda!173866 lambda!173730))))

(assert (=> b!4528250 true))

(declare-fun bs!863911 () Bool)

(declare-fun b!4528251 () Bool)

(assert (= bs!863911 (and b!4528251 b!4527668)))

(declare-fun lambda!173867 () Int)

(assert (=> bs!863911 (= lambda!173867 lambda!173765)))

(declare-fun bs!863912 () Bool)

(assert (= bs!863912 (and b!4528251 b!4527271)))

(assert (=> bs!863912 (= lambda!173867 lambda!173738)))

(declare-fun bs!863913 () Bool)

(assert (= bs!863913 (and b!4528251 b!4527778)))

(assert (=> bs!863913 (= lambda!173867 lambda!173773)))

(declare-fun bs!863914 () Bool)

(assert (= bs!863914 (and b!4528251 b!4527136)))

(assert (=> bs!863914 (= lambda!173867 lambda!173733)))

(declare-fun bs!863915 () Bool)

(assert (= bs!863915 (and b!4528251 b!4527087)))

(assert (=> bs!863915 (= lambda!173867 lambda!173721)))

(declare-fun bs!863916 () Bool)

(assert (= bs!863916 (and b!4528251 b!4527881)))

(assert (=> bs!863916 (= lambda!173867 lambda!173784)))

(declare-fun d!1397138 () Bool)

(declare-fun e!2821469 () Bool)

(assert (=> d!1397138 e!2821469))

(declare-fun res!1885507 () Bool)

(assert (=> d!1397138 (=> (not res!1885507) (not e!2821469))))

(declare-fun lt!1703994 () List!50807)

(assert (=> d!1397138 (= res!1885507 (noDuplicate!753 lt!1703994))))

(assert (=> d!1397138 (= lt!1703994 (getKeysList!475 (toList!4352 lt!1702931)))))

(assert (=> d!1397138 (= (keys!17616 lt!1702931) lt!1703994)))

(declare-fun b!4528249 () Bool)

(declare-fun res!1885505 () Bool)

(assert (=> b!4528249 (=> (not res!1885505) (not e!2821469))))

(assert (=> b!4528249 (= res!1885505 (= (length!362 lt!1703994) (length!363 (toList!4352 lt!1702931))))))

(declare-fun res!1885506 () Bool)

(assert (=> b!4528250 (=> (not res!1885506) (not e!2821469))))

(assert (=> b!4528250 (= res!1885506 (forall!10294 lt!1703994 lambda!173866))))

(assert (=> b!4528251 (= e!2821469 (= (content!8386 lt!1703994) (content!8386 (map!11150 (toList!4352 lt!1702931) lambda!173867))))))

(assert (= (and d!1397138 res!1885507) b!4528249))

(assert (= (and b!4528249 res!1885505) b!4528250))

(assert (= (and b!4528250 res!1885506) b!4528251))

(declare-fun m!5283435 () Bool)

(assert (=> d!1397138 m!5283435))

(assert (=> d!1397138 m!5281703))

(declare-fun m!5283437 () Bool)

(assert (=> b!4528249 m!5283437))

(declare-fun m!5283439 () Bool)

(assert (=> b!4528249 m!5283439))

(declare-fun m!5283441 () Bool)

(assert (=> b!4528250 m!5283441))

(declare-fun m!5283443 () Bool)

(assert (=> b!4528251 m!5283443))

(declare-fun m!5283445 () Bool)

(assert (=> b!4528251 m!5283445))

(assert (=> b!4528251 m!5283445))

(declare-fun m!5283447 () Bool)

(assert (=> b!4528251 m!5283447))

(assert (=> b!4526803 d!1397138))

(declare-fun d!1397140 () Bool)

(assert (=> d!1397140 (= (invariantList!1027 (toList!4352 lt!1703141)) (noDuplicatedKeys!269 (toList!4352 lt!1703141)))))

(declare-fun bs!863917 () Bool)

(assert (= bs!863917 d!1397140))

(declare-fun m!5283449 () Bool)

(assert (=> bs!863917 m!5283449))

(assert (=> d!1396380 d!1397140))

(declare-fun d!1397142 () Bool)

(declare-fun res!1885508 () Bool)

(declare-fun e!2821470 () Bool)

(assert (=> d!1397142 (=> res!1885508 e!2821470)))

(assert (=> d!1397142 (= res!1885508 ((_ is Nil!50681) (toList!4351 lm!1477)))))

(assert (=> d!1397142 (= (forall!10291 (toList!4351 lm!1477) lambda!173710) e!2821470)))

(declare-fun b!4528252 () Bool)

(declare-fun e!2821471 () Bool)

(assert (=> b!4528252 (= e!2821470 e!2821471)))

(declare-fun res!1885509 () Bool)

(assert (=> b!4528252 (=> (not res!1885509) (not e!2821471))))

(assert (=> b!4528252 (= res!1885509 (dynLambda!21178 lambda!173710 (h!56544 (toList!4351 lm!1477))))))

(declare-fun b!4528253 () Bool)

(assert (=> b!4528253 (= e!2821471 (forall!10291 (t!357767 (toList!4351 lm!1477)) lambda!173710))))

(assert (= (and d!1397142 (not res!1885508)) b!4528252))

(assert (= (and b!4528252 res!1885509) b!4528253))

(declare-fun b_lambda!156115 () Bool)

(assert (=> (not b_lambda!156115) (not b!4528252)))

(declare-fun m!5283451 () Bool)

(assert (=> b!4528252 m!5283451))

(declare-fun m!5283453 () Bool)

(assert (=> b!4528253 m!5283453))

(assert (=> d!1396380 d!1397142))

(assert (=> b!4526852 d!1396166))

(declare-fun d!1397144 () Bool)

(declare-fun e!2821473 () Bool)

(assert (=> d!1397144 e!2821473))

(declare-fun res!1885510 () Bool)

(assert (=> d!1397144 (=> res!1885510 e!2821473)))

(declare-fun lt!1703996 () Bool)

(assert (=> d!1397144 (= res!1885510 (not lt!1703996))))

(declare-fun lt!1703998 () Bool)

(assert (=> d!1397144 (= lt!1703996 lt!1703998)))

(declare-fun lt!1703997 () Unit!96156)

(declare-fun e!2821472 () Unit!96156)

(assert (=> d!1397144 (= lt!1703997 e!2821472)))

(declare-fun c!773138 () Bool)

(assert (=> d!1397144 (= c!773138 lt!1703998)))

(assert (=> d!1397144 (= lt!1703998 (containsKey!1815 (toList!4351 lt!1702935) (_1!28856 lt!1702726)))))

(assert (=> d!1397144 (= (contains!13429 lt!1702935 (_1!28856 lt!1702726)) lt!1703996)))

(declare-fun b!4528254 () Bool)

(declare-fun lt!1703995 () Unit!96156)

(assert (=> b!4528254 (= e!2821472 lt!1703995)))

(assert (=> b!4528254 (= lt!1703995 (lemmaContainsKeyImpliesGetValueByKeyDefined!1016 (toList!4351 lt!1702935) (_1!28856 lt!1702726)))))

(assert (=> b!4528254 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702935) (_1!28856 lt!1702726)))))

(declare-fun b!4528255 () Bool)

(declare-fun Unit!96464 () Unit!96156)

(assert (=> b!4528255 (= e!2821472 Unit!96464)))

(declare-fun b!4528256 () Bool)

(assert (=> b!4528256 (= e!2821473 (isDefined!8427 (getValueByKey!1112 (toList!4351 lt!1702935) (_1!28856 lt!1702726))))))

(assert (= (and d!1397144 c!773138) b!4528254))

(assert (= (and d!1397144 (not c!773138)) b!4528255))

(assert (= (and d!1397144 (not res!1885510)) b!4528256))

(declare-fun m!5283455 () Bool)

(assert (=> d!1397144 m!5283455))

(declare-fun m!5283457 () Bool)

(assert (=> b!4528254 m!5283457))

(assert (=> b!4528254 m!5280617))

(assert (=> b!4528254 m!5280617))

(declare-fun m!5283459 () Bool)

(assert (=> b!4528254 m!5283459))

(assert (=> b!4528256 m!5280617))

(assert (=> b!4528256 m!5280617))

(assert (=> b!4528256 m!5283459))

(assert (=> d!1396230 d!1397144))

(declare-fun b!4528260 () Bool)

(declare-fun e!2821475 () Option!11142)

(assert (=> b!4528260 (= e!2821475 None!11141)))

(declare-fun b!4528257 () Bool)

(declare-fun e!2821474 () Option!11142)

(assert (=> b!4528257 (= e!2821474 (Some!11141 (_2!28856 (h!56544 lt!1702936))))))

(declare-fun b!4528258 () Bool)

(assert (=> b!4528258 (= e!2821474 e!2821475)))

(declare-fun c!773140 () Bool)

(assert (=> b!4528258 (= c!773140 (and ((_ is Cons!50681) lt!1702936) (not (= (_1!28856 (h!56544 lt!1702936)) (_1!28856 lt!1702726)))))))

(declare-fun b!4528259 () Bool)

(assert (=> b!4528259 (= e!2821475 (getValueByKey!1112 (t!357767 lt!1702936) (_1!28856 lt!1702726)))))

(declare-fun d!1397146 () Bool)

(declare-fun c!773139 () Bool)

(assert (=> d!1397146 (= c!773139 (and ((_ is Cons!50681) lt!1702936) (= (_1!28856 (h!56544 lt!1702936)) (_1!28856 lt!1702726))))))

(assert (=> d!1397146 (= (getValueByKey!1112 lt!1702936 (_1!28856 lt!1702726)) e!2821474)))

(assert (= (and d!1397146 c!773139) b!4528257))

(assert (= (and d!1397146 (not c!773139)) b!4528258))

(assert (= (and b!4528258 c!773140) b!4528259))

(assert (= (and b!4528258 (not c!773140)) b!4528260))

(declare-fun m!5283461 () Bool)

(assert (=> b!4528259 m!5283461))

(assert (=> d!1396230 d!1397146))

(declare-fun d!1397148 () Bool)

(assert (=> d!1397148 (= (getValueByKey!1112 lt!1702936 (_1!28856 lt!1702726)) (Some!11141 (_2!28856 lt!1702726)))))

(declare-fun lt!1703999 () Unit!96156)

(assert (=> d!1397148 (= lt!1703999 (choose!29675 lt!1702936 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(declare-fun e!2821476 () Bool)

(assert (=> d!1397148 e!2821476))

(declare-fun res!1885511 () Bool)

(assert (=> d!1397148 (=> (not res!1885511) (not e!2821476))))

(assert (=> d!1397148 (= res!1885511 (isStrictlySorted!440 lt!1702936))))

(assert (=> d!1397148 (= (lemmaContainsTupThenGetReturnValue!694 lt!1702936 (_1!28856 lt!1702726) (_2!28856 lt!1702726)) lt!1703999)))

(declare-fun b!4528261 () Bool)

(declare-fun res!1885512 () Bool)

(assert (=> b!4528261 (=> (not res!1885512) (not e!2821476))))

(assert (=> b!4528261 (= res!1885512 (containsKey!1815 lt!1702936 (_1!28856 lt!1702726)))))

(declare-fun b!4528262 () Bool)

(assert (=> b!4528262 (= e!2821476 (contains!13428 lt!1702936 (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726))))))

(assert (= (and d!1397148 res!1885511) b!4528261))

(assert (= (and b!4528261 res!1885512) b!4528262))

(assert (=> d!1397148 m!5280611))

(declare-fun m!5283463 () Bool)

(assert (=> d!1397148 m!5283463))

(declare-fun m!5283465 () Bool)

(assert (=> d!1397148 m!5283465))

(declare-fun m!5283467 () Bool)

(assert (=> b!4528261 m!5283467))

(declare-fun m!5283469 () Bool)

(assert (=> b!4528262 m!5283469))

(assert (=> d!1396230 d!1397148))

(declare-fun c!773142 () Bool)

(declare-fun b!4528263 () Bool)

(declare-fun e!2821479 () List!50805)

(declare-fun c!773143 () Bool)

(assert (=> b!4528263 (= e!2821479 (ite c!773143 (t!357767 (toList!4351 lt!1702722)) (ite c!773142 (Cons!50681 (h!56544 (toList!4351 lt!1702722)) (t!357767 (toList!4351 lt!1702722))) Nil!50681)))))

(declare-fun b!4528264 () Bool)

(declare-fun e!2821481 () List!50805)

(declare-fun call!315635 () List!50805)

(assert (=> b!4528264 (= e!2821481 call!315635)))

(declare-fun d!1397150 () Bool)

(declare-fun e!2821477 () Bool)

(assert (=> d!1397150 e!2821477))

(declare-fun res!1885514 () Bool)

(assert (=> d!1397150 (=> (not res!1885514) (not e!2821477))))

(declare-fun lt!1704000 () List!50805)

(assert (=> d!1397150 (= res!1885514 (isStrictlySorted!440 lt!1704000))))

(assert (=> d!1397150 (= lt!1704000 e!2821481)))

(declare-fun c!773141 () Bool)

(assert (=> d!1397150 (= c!773141 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (bvslt (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702726))))))

(assert (=> d!1397150 (isStrictlySorted!440 (toList!4351 lt!1702722))))

(assert (=> d!1397150 (= (insertStrictlySorted!418 (toList!4351 lt!1702722) (_1!28856 lt!1702726) (_2!28856 lt!1702726)) lt!1704000)))

(declare-fun b!4528265 () Bool)

(assert (=> b!4528265 (= c!773142 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (bvsgt (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702726))))))

(declare-fun e!2821478 () List!50805)

(declare-fun e!2821480 () List!50805)

(assert (=> b!4528265 (= e!2821478 e!2821480)))

(declare-fun b!4528266 () Bool)

(declare-fun res!1885513 () Bool)

(assert (=> b!4528266 (=> (not res!1885513) (not e!2821477))))

(assert (=> b!4528266 (= res!1885513 (containsKey!1815 lt!1704000 (_1!28856 lt!1702726)))))

(declare-fun b!4528267 () Bool)

(assert (=> b!4528267 (= e!2821477 (contains!13428 lt!1704000 (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726))))))

(declare-fun bm!315629 () Bool)

(declare-fun call!315634 () List!50805)

(declare-fun call!315636 () List!50805)

(assert (=> bm!315629 (= call!315634 call!315636)))

(declare-fun b!4528268 () Bool)

(assert (=> b!4528268 (= e!2821480 call!315634)))

(declare-fun b!4528269 () Bool)

(assert (=> b!4528269 (= e!2821481 e!2821478)))

(assert (=> b!4528269 (= c!773143 (and ((_ is Cons!50681) (toList!4351 lt!1702722)) (= (_1!28856 (h!56544 (toList!4351 lt!1702722))) (_1!28856 lt!1702726))))))

(declare-fun bm!315630 () Bool)

(assert (=> bm!315630 (= call!315636 call!315635)))

(declare-fun b!4528270 () Bool)

(assert (=> b!4528270 (= e!2821479 (insertStrictlySorted!418 (t!357767 (toList!4351 lt!1702722)) (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))

(declare-fun b!4528271 () Bool)

(assert (=> b!4528271 (= e!2821478 call!315636)))

(declare-fun b!4528272 () Bool)

(assert (=> b!4528272 (= e!2821480 call!315634)))

(declare-fun bm!315631 () Bool)

(assert (=> bm!315631 (= call!315635 ($colon$colon!949 e!2821479 (ite c!773141 (h!56544 (toList!4351 lt!1702722)) (tuple2!51125 (_1!28856 lt!1702726) (_2!28856 lt!1702726)))))))

(declare-fun c!773144 () Bool)

(assert (=> bm!315631 (= c!773144 c!773141)))

(assert (= (and d!1397150 c!773141) b!4528264))

(assert (= (and d!1397150 (not c!773141)) b!4528269))

(assert (= (and b!4528269 c!773143) b!4528271))

(assert (= (and b!4528269 (not c!773143)) b!4528265))

(assert (= (and b!4528265 c!773142) b!4528268))

(assert (= (and b!4528265 (not c!773142)) b!4528272))

(assert (= (or b!4528268 b!4528272) bm!315629))

(assert (= (or b!4528271 bm!315629) bm!315630))

(assert (= (or b!4528264 bm!315630) bm!315631))

(assert (= (and bm!315631 c!773144) b!4528270))

(assert (= (and bm!315631 (not c!773144)) b!4528263))

(assert (= (and d!1397150 res!1885514) b!4528266))

(assert (= (and b!4528266 res!1885513) b!4528267))

(declare-fun m!5283471 () Bool)

(assert (=> b!4528270 m!5283471))

(declare-fun m!5283473 () Bool)

(assert (=> d!1397150 m!5283473))

(assert (=> d!1397150 m!5281315))

(declare-fun m!5283475 () Bool)

(assert (=> b!4528267 m!5283475))

(declare-fun m!5283477 () Bool)

(assert (=> bm!315631 m!5283477))

(declare-fun m!5283479 () Bool)

(assert (=> b!4528266 m!5283479))

(assert (=> d!1396230 d!1397150))

(declare-fun d!1397152 () Bool)

(declare-fun res!1885515 () Bool)

(declare-fun e!2821482 () Bool)

(assert (=> d!1397152 (=> res!1885515 e!2821482)))

(assert (=> d!1397152 (= res!1885515 ((_ is Nil!50680) (toList!4352 lt!1702713)))))

(assert (=> d!1397152 (= (forall!10293 (toList!4352 lt!1702713) lambda!173714) e!2821482)))

(declare-fun b!4528273 () Bool)

(declare-fun e!2821483 () Bool)

(assert (=> b!4528273 (= e!2821482 e!2821483)))

(declare-fun res!1885516 () Bool)

(assert (=> b!4528273 (=> (not res!1885516) (not e!2821483))))

(assert (=> b!4528273 (= res!1885516 (dynLambda!21181 lambda!173714 (h!56543 (toList!4352 lt!1702713))))))

(declare-fun b!4528274 () Bool)

(assert (=> b!4528274 (= e!2821483 (forall!10293 (t!357766 (toList!4352 lt!1702713)) lambda!173714))))

(assert (= (and d!1397152 (not res!1885515)) b!4528273))

(assert (= (and b!4528273 res!1885516) b!4528274))

(declare-fun b_lambda!156117 () Bool)

(assert (=> (not b_lambda!156117) (not b!4528273)))

(declare-fun m!5283481 () Bool)

(assert (=> b!4528273 m!5283481))

(declare-fun m!5283483 () Bool)

(assert (=> b!4528274 m!5283483))

(assert (=> b!4527020 d!1397152))

(declare-fun e!2821484 () Bool)

(declare-fun tp!1338286 () Bool)

(declare-fun b!4528275 () Bool)

(assert (=> b!4528275 (= e!2821484 (and tp_is_empty!27965 tp_is_empty!27967 tp!1338286))))

(assert (=> b!4527060 (= tp!1338285 e!2821484)))

(assert (= (and b!4527060 ((_ is Cons!50680) (t!357766 (t!357766 newBucket!178)))) b!4528275))

(declare-fun tp!1338287 () Bool)

(declare-fun b!4528276 () Bool)

(declare-fun e!2821485 () Bool)

(assert (=> b!4528276 (= e!2821485 (and tp_is_empty!27965 tp_is_empty!27967 tp!1338287))))

(assert (=> b!4527055 (= tp!1338281 e!2821485)))

(assert (= (and b!4527055 ((_ is Cons!50680) (_2!28856 (h!56544 (toList!4351 lm!1477))))) b!4528276))

(declare-fun b!4528277 () Bool)

(declare-fun e!2821486 () Bool)

(declare-fun tp!1338288 () Bool)

(declare-fun tp!1338289 () Bool)

(assert (=> b!4528277 (= e!2821486 (and tp!1338288 tp!1338289))))

(assert (=> b!4527055 (= tp!1338282 e!2821486)))

(assert (= (and b!4527055 ((_ is Cons!50681) (t!357767 (toList!4351 lm!1477)))) b!4528277))

(declare-fun b_lambda!156119 () Bool)

(assert (= b_lambda!156117 (or d!1396390 b_lambda!156119)))

(declare-fun bs!863950 () Bool)

(declare-fun d!1397154 () Bool)

(assert (= bs!863950 (and d!1397154 d!1396390)))

(assert (=> bs!863950 (= (dynLambda!21181 lambda!173714 (h!56543 (toList!4352 lt!1702713))) (contains!13427 lt!1703159 (_1!28855 (h!56543 (toList!4352 lt!1702713)))))))

(declare-fun m!5283519 () Bool)

(assert (=> bs!863950 m!5283519))

(assert (=> b!4528273 d!1397154))

(declare-fun b_lambda!156121 () Bool)

(assert (= b_lambda!155987 (or d!1396216 b_lambda!156121)))

(declare-fun bs!863951 () Bool)

(declare-fun d!1397158 () Bool)

(assert (= bs!863951 (and d!1397158 d!1396216)))

(assert (=> bs!863951 (= (dynLambda!21178 lambda!173619 (h!56544 (toList!4351 lt!1702722))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(assert (=> bs!863951 m!5283345))

(assert (=> b!4527284 d!1397158))

(declare-fun b_lambda!156123 () Bool)

(assert (= b_lambda!156109 (or d!1396256 b_lambda!156123)))

(declare-fun bs!863952 () Bool)

(declare-fun d!1397160 () Bool)

(assert (= bs!863952 (and d!1397160 d!1396256)))

(assert (=> bs!863952 (= (dynLambda!21178 lambda!173647 (h!56544 (toList!4351 lt!1702729))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702729)))))))

(assert (=> bs!863952 m!5282275))

(assert (=> b!4528197 d!1397160))

(declare-fun b_lambda!156125 () Bool)

(assert (= b_lambda!156107 (or b!4526608 b_lambda!156125)))

(declare-fun bs!863953 () Bool)

(declare-fun d!1397162 () Bool)

(assert (= bs!863953 (and d!1397162 b!4526608)))

(assert (=> bs!863953 (= (dynLambda!21181 lambda!173585 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477))))) (= (hash!2845 hashF!1107 (_1!28855 (h!56543 (_2!28856 (h!56544 (toList!4351 lm!1477)))))) (_1!28856 (h!56544 (toList!4351 lm!1477)))))))

(declare-fun m!5283521 () Bool)

(assert (=> bs!863953 m!5283521))

(assert (=> b!4528195 d!1397162))

(declare-fun b_lambda!156127 () Bool)

(assert (= b_lambda!156025 (or b!4526608 b_lambda!156127)))

(assert (=> b!4527660 d!1396406))

(declare-fun b_lambda!156129 () Bool)

(assert (= b_lambda!156085 (or b!4527019 b_lambda!156129)))

(declare-fun bs!863956 () Bool)

(declare-fun d!1397164 () Bool)

(assert (= bs!863956 (and d!1397164 b!4527019)))

(assert (=> bs!863956 (= (dynLambda!21181 lambda!173712 (h!56543 (toList!4352 lt!1702713))) (contains!13427 lt!1702713 (_1!28855 (h!56543 (toList!4352 lt!1702713)))))))

(declare-fun m!5283523 () Bool)

(assert (=> bs!863956 m!5283523))

(assert (=> b!4528070 d!1397164))

(declare-fun b_lambda!156131 () Bool)

(assert (= b_lambda!155995 (or b!4526999 b_lambda!156131)))

(declare-fun bs!863958 () Bool)

(declare-fun d!1397166 () Bool)

(assert (= bs!863958 (and d!1397166 b!4526999)))

(assert (=> bs!863958 (= (dynLambda!21181 lambda!173702 (h!56543 (_2!28856 lt!1702727))) (contains!13427 lt!1703122 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> bs!863958 m!5281021))

(assert (=> d!1396600 d!1397166))

(declare-fun b_lambda!156133 () Bool)

(assert (= b_lambda!155979 (or d!1396390 b_lambda!156133)))

(declare-fun bs!863961 () Bool)

(declare-fun d!1397168 () Bool)

(assert (= bs!863961 (and d!1397168 d!1396390)))

(assert (=> bs!863961 (= (dynLambda!21181 lambda!173714 (h!56543 (_2!28856 lt!1702727))) (contains!13427 lt!1703159 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun m!5283525 () Bool)

(assert (=> bs!863961 m!5283525))

(assert (=> b!4527211 d!1397168))

(declare-fun b_lambda!156135 () Bool)

(assert (= b_lambda!155999 (or d!1396278 b_lambda!156135)))

(declare-fun bs!863963 () Bool)

(declare-fun d!1397170 () Bool)

(assert (= bs!863963 (and d!1397170 d!1396278)))

(assert (=> bs!863963 (= (dynLambda!21178 lambda!173656 (h!56544 (toList!4351 lm!1477))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> bs!863963 m!5281151))

(assert (=> b!4527423 d!1397170))

(declare-fun b_lambda!156137 () Bool)

(assert (= b_lambda!156115 (or d!1396380 b_lambda!156137)))

(declare-fun bs!863965 () Bool)

(declare-fun d!1397172 () Bool)

(assert (= bs!863965 (and d!1397172 d!1396380)))

(assert (=> bs!863965 (= (dynLambda!21178 lambda!173710 (h!56544 (toList!4351 lm!1477))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> bs!863965 m!5281151))

(assert (=> b!4528252 d!1397172))

(declare-fun b_lambda!156139 () Bool)

(assert (= b_lambda!156035 (or b!4527019 b_lambda!156139)))

(declare-fun bs!863967 () Bool)

(declare-fun d!1397174 () Bool)

(assert (= bs!863967 (and d!1397174 b!4527019)))

(assert (=> bs!863967 (= (dynLambda!21181 lambda!173713 (h!56543 (toList!4352 lt!1702713))) (contains!13427 lt!1703158 (_1!28855 (h!56543 (toList!4352 lt!1702713)))))))

(declare-fun m!5283527 () Bool)

(assert (=> bs!863967 m!5283527))

(assert (=> b!4527735 d!1397174))

(declare-fun b_lambda!156141 () Bool)

(assert (= b_lambda!155997 (or b!4526999 b_lambda!156141)))

(declare-fun bs!863969 () Bool)

(declare-fun d!1397176 () Bool)

(assert (= bs!863969 (and d!1397176 b!4526999)))

(assert (=> bs!863969 (= (dynLambda!21181 lambda!173702 (h!56543 (toList!4352 lt!1703125))) (contains!13427 lt!1703122 (_1!28855 (h!56543 (toList!4352 lt!1703125)))))))

(declare-fun m!5283529 () Bool)

(assert (=> bs!863969 m!5283529))

(assert (=> b!4527418 d!1397176))

(declare-fun b_lambda!156143 () Bool)

(assert (= b_lambda!156061 (or d!1396392 b_lambda!156143)))

(declare-fun bs!863972 () Bool)

(declare-fun d!1397178 () Bool)

(assert (= bs!863972 (and d!1397178 d!1396392)))

(assert (=> bs!863972 (= (dynLambda!21178 lambda!173715 (h!56544 (toList!4351 lt!1702738))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702738)))))))

(assert (=> bs!863972 m!5282461))

(assert (=> b!4527966 d!1397178))

(declare-fun b_lambda!156145 () Bool)

(assert (= b_lambda!155991 (or b!4526999 b_lambda!156145)))

(declare-fun bs!863974 () Bool)

(declare-fun d!1397180 () Bool)

(assert (= bs!863974 (and d!1397180 b!4526999)))

(assert (=> bs!863974 (= (dynLambda!21181 lambda!173702 (h!56543 (t!357766 (_2!28856 lt!1702727)))) (contains!13427 lt!1703122 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(declare-fun m!5283531 () Bool)

(assert (=> bs!863974 m!5283531))

(assert (=> b!4527404 d!1397180))

(declare-fun b_lambda!156147 () Bool)

(assert (= b_lambda!156041 (or d!1396296 b_lambda!156147)))

(declare-fun bs!863976 () Bool)

(declare-fun d!1397182 () Bool)

(assert (= bs!863976 (and d!1397182 d!1396296)))

(assert (=> bs!863976 (= (dynLambda!21181 lambda!173703 (h!56543 (toList!4352 lt!1702724))) (contains!13427 lt!1703123 (_1!28855 (h!56543 (toList!4352 lt!1702724)))))))

(declare-fun m!5283533 () Bool)

(assert (=> bs!863976 m!5283533))

(assert (=> b!4527768 d!1397182))

(declare-fun b_lambda!156149 () Bool)

(assert (= b_lambda!155973 (or b!4526999 b_lambda!156149)))

(declare-fun bs!863978 () Bool)

(declare-fun d!1397184 () Bool)

(assert (= bs!863978 (and d!1397184 b!4526999)))

(assert (=> bs!863978 (= (dynLambda!21181 lambda!173702 (h!56543 (toList!4352 lt!1702724))) (contains!13427 lt!1703122 (_1!28855 (h!56543 (toList!4352 lt!1702724)))))))

(declare-fun m!5283535 () Bool)

(assert (=> bs!863978 m!5283535))

(assert (=> b!4527065 d!1397184))

(declare-fun b_lambda!156151 () Bool)

(assert (= b_lambda!156097 (or d!1396208 b_lambda!156151)))

(declare-fun bs!863980 () Bool)

(declare-fun d!1397186 () Bool)

(assert (= bs!863980 (and d!1397186 d!1396208)))

(assert (=> bs!863980 (= (dynLambda!21178 lambda!173598 (h!56544 (toList!4351 lt!1702722))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(assert (=> bs!863980 m!5283345))

(assert (=> b!4528095 d!1397186))

(declare-fun b_lambda!156153 () Bool)

(assert (= b_lambda!156111 (or start!448604 b_lambda!156153)))

(assert (=> d!1397102 d!1396404))

(declare-fun b_lambda!156155 () Bool)

(assert (= b_lambda!156105 (or b!4526608 b_lambda!156155)))

(assert (=> d!1397094 d!1396402))

(declare-fun b_lambda!156157 () Bool)

(assert (= b_lambda!156055 (or d!1396372 b_lambda!156157)))

(declare-fun bs!863983 () Bool)

(declare-fun d!1397188 () Bool)

(assert (= bs!863983 (and d!1397188 d!1396372)))

(assert (=> bs!863983 (= (dynLambda!21178 lambda!173709 (h!56544 (toList!4351 lm!1477))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lm!1477)))))))

(assert (=> bs!863983 m!5281151))

(assert (=> b!4527868 d!1397188))

(declare-fun b_lambda!156159 () Bool)

(assert (= b_lambda!156103 (or d!1396206 b_lambda!156159)))

(declare-fun bs!863985 () Bool)

(declare-fun d!1397190 () Bool)

(assert (= bs!863985 (and d!1397190 d!1396206)))

(assert (=> bs!863985 (= (dynLambda!21178 lambda!173597 (h!56544 (toList!4351 lt!1702722))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(assert (=> bs!863985 m!5283345))

(assert (=> b!4528174 d!1397190))

(declare-fun b_lambda!156161 () Bool)

(assert (= b_lambda!155981 (or start!448604 b_lambda!156161)))

(assert (=> d!1396486 d!1396408))

(declare-fun b_lambda!156163 () Bool)

(assert (= b_lambda!156067 (or b!4527019 b_lambda!156163)))

(declare-fun bs!863986 () Bool)

(declare-fun d!1397192 () Bool)

(assert (= bs!863986 (and d!1397192 b!4527019)))

(assert (=> bs!863986 (= (dynLambda!21181 lambda!173713 (h!56543 (_2!28856 lt!1702727))) (contains!13427 lt!1703158 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(assert (=> bs!863986 m!5281103))

(assert (=> b!4528016 d!1397192))

(declare-fun b_lambda!156165 () Bool)

(assert (= b_lambda!156065 (or b!4527019 b_lambda!156165)))

(declare-fun bs!863987 () Bool)

(declare-fun d!1397194 () Bool)

(assert (= bs!863987 (and d!1397194 b!4527019)))

(assert (=> bs!863987 (= (dynLambda!21181 lambda!173713 (h!56543 (t!357766 (_2!28856 lt!1702727)))) (contains!13427 lt!1703158 (_1!28855 (h!56543 (t!357766 (_2!28856 lt!1702727))))))))

(declare-fun m!5283537 () Bool)

(assert (=> bs!863987 m!5283537))

(assert (=> b!4528014 d!1397194))

(declare-fun b_lambda!156167 () Bool)

(assert (= b_lambda!155983 (or start!448604 b_lambda!156167)))

(declare-fun bs!863988 () Bool)

(declare-fun d!1397196 () Bool)

(assert (= bs!863988 (and d!1397196 start!448604)))

(assert (=> bs!863988 (= (dynLambda!21178 lambda!173583 (h!56544 (t!357767 (toList!4351 lm!1477)))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> bs!863988 m!5282567))

(assert (=> b!4527243 d!1397196))

(declare-fun b_lambda!156169 () Bool)

(assert (= b_lambda!156033 (or d!1396236 b_lambda!156169)))

(declare-fun bs!863989 () Bool)

(declare-fun d!1397198 () Bool)

(assert (= bs!863989 (and d!1397198 d!1396236)))

(assert (=> bs!863989 (= (dynLambda!21178 lambda!173642 (h!56544 (toList!4351 lt!1702722))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 lt!1702722)))))))

(assert (=> bs!863989 m!5283345))

(assert (=> b!4527732 d!1397198))

(declare-fun b_lambda!156171 () Bool)

(assert (= b_lambda!155993 (or b!4526999 b_lambda!156171)))

(declare-fun bs!863990 () Bool)

(declare-fun d!1397202 () Bool)

(assert (= bs!863990 (and d!1397202 b!4526999)))

(assert (=> bs!863990 (= (dynLambda!21181 lambda!173701 (h!56543 (toList!4352 lt!1702724))) (contains!13427 lt!1702724 (_1!28855 (h!56543 (toList!4352 lt!1702724)))))))

(declare-fun m!5283547 () Bool)

(assert (=> bs!863990 m!5283547))

(assert (=> b!4527406 d!1397202))

(declare-fun b_lambda!156173 () Bool)

(assert (= b_lambda!156057 (or d!1396370 b_lambda!156173)))

(declare-fun bs!863991 () Bool)

(declare-fun d!1397204 () Bool)

(assert (= bs!863991 (and d!1397204 d!1396370)))

(assert (=> bs!863991 (= (dynLambda!21178 lambda!173706 (h!56544 (toList!4351 lm!1477))) (allKeysSameHash!1026 (_2!28856 (h!56544 (toList!4351 lm!1477))) (_1!28856 (h!56544 (toList!4351 lm!1477))) hashF!1107))))

(assert (=> bs!863991 m!5281153))

(assert (=> b!4527922 d!1397204))

(declare-fun b_lambda!156175 () Bool)

(assert (= b_lambda!156043 (or d!1396254 b_lambda!156175)))

(declare-fun bs!863992 () Bool)

(declare-fun d!1397206 () Bool)

(assert (= bs!863992 (and d!1397206 d!1396254)))

(assert (=> bs!863992 (= (dynLambda!21178 lambda!173645 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727)))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (toList!4351 (+!1560 lt!1702722 lt!1702727))))))))

(assert (=> bs!863992 m!5282701))

(assert (=> b!4527801 d!1397206))

(declare-fun b_lambda!156177 () Bool)

(assert (= b_lambda!155989 (or b!4526999 b_lambda!156177)))

(assert (=> b!4527302 d!1397166))

(declare-fun b_lambda!156179 () Bool)

(assert (= b_lambda!156029 (or d!1396260 b_lambda!156179)))

(declare-fun bs!863993 () Bool)

(declare-fun d!1397208 () Bool)

(assert (= bs!863993 (and d!1397208 d!1396260)))

(assert (=> bs!863993 (= (dynLambda!21181 lambda!173651 (h!56543 newBucket!178)) (= (hash!2845 hashF!1107 (_1!28855 (h!56543 newBucket!178))) hash!344))))

(declare-fun m!5283553 () Bool)

(assert (=> bs!863993 m!5283553))

(assert (=> b!4527709 d!1397208))

(declare-fun b_lambda!156181 () Bool)

(assert (= b_lambda!156075 (or b!4527019 b_lambda!156181)))

(declare-fun bs!863994 () Bool)

(declare-fun d!1397210 () Bool)

(assert (= bs!863994 (and d!1397210 b!4527019)))

(assert (=> bs!863994 (= (dynLambda!21181 lambda!173713 (h!56543 (toList!4352 lt!1703161))) (contains!13427 lt!1703158 (_1!28855 (h!56543 (toList!4352 lt!1703161)))))))

(declare-fun m!5283557 () Bool)

(assert (=> bs!863994 m!5283557))

(assert (=> b!4528032 d!1397210))

(declare-fun b_lambda!156183 () Bool)

(assert (= b_lambda!156071 (or b!4527019 b_lambda!156183)))

(assert (=> d!1396968 d!1397192))

(declare-fun b_lambda!156185 () Bool)

(assert (= b_lambda!156001 (or d!1396204 b_lambda!156185)))

(declare-fun bs!863995 () Bool)

(declare-fun d!1397214 () Bool)

(assert (= bs!863995 (and d!1397214 d!1396204)))

(assert (=> bs!863995 (= (dynLambda!21178 lambda!173594 (h!56544 (t!357767 (toList!4351 lm!1477)))) (noDuplicateKeys!1172 (_2!28856 (h!56544 (t!357767 (toList!4351 lm!1477))))))))

(assert (=> bs!863995 m!5282567))

(assert (=> b!4527433 d!1397214))

(declare-fun b_lambda!156187 () Bool)

(assert (= b_lambda!156023 (or b!4526608 b_lambda!156187)))

(assert (=> d!1396678 d!1396406))

(declare-fun b_lambda!156189 () Bool)

(assert (= b_lambda!156037 (or d!1396296 b_lambda!156189)))

(declare-fun bs!863996 () Bool)

(declare-fun d!1397216 () Bool)

(assert (= bs!863996 (and d!1397216 d!1396296)))

(assert (=> bs!863996 (= (dynLambda!21181 lambda!173703 (h!56543 (_2!28856 lt!1702727))) (contains!13427 lt!1703123 (_1!28855 (h!56543 (_2!28856 lt!1702727)))))))

(declare-fun m!5283559 () Bool)

(assert (=> bs!863996 m!5283559))

(assert (=> b!4527739 d!1397216))

(check-sat (not b_lambda!156147) (not b!4527489) (not d!1396892) (not b!4527135) (not b!4527869) (not d!1397112) (not b!4527408) (not b!4528132) (not b!4527232) (not b!4527930) (not b!4527769) (not b!4527720) (not b!4527377) (not d!1396596) (not b_lambda!156161) (not d!1396800) (not d!1396692) (not b!4528274) (not b!4527384) (not d!1396536) (not b!4527886) (not b_lambda!156165) (not b!4528017) (not b!4527498) (not b_lambda!156185) (not d!1396572) (not b_lambda!156125) (not b!4527968) (not d!1396428) (not b!4527707) (not bm!315617) (not b_lambda!156135) (not b!4527888) (not b!4527933) (not b!4528205) (not b!4528259) (not b_lambda!156169) (not bs!863992) (not b!4528159) (not b!4527666) (not b!4527873) (not b!4528154) (not b_lambda!156127) (not b!4527661) (not d!1396526) (not b!4527288) (not b_lambda!155971) (not d!1396582) (not b!4527970) (not bm!315573) (not d!1396696) (not d!1397026) (not b_lambda!156119) (not b!4527387) (not b!4527972) (not b!4527932) (not b_lambda!156175) (not bs!863985) (not d!1396834) (not b!4528053) (not b!4527432) (not b!4527269) (not b!4527744) (not b!4527920) (not b!4527990) (not d!1396822) (not b!4527214) (not b!4527166) (not b!4527654) (not d!1396920) (not b!4527889) (not b!4527832) (not b!4527137) (not b!4527285) (not bs!863983) (not b!4527134) (not b!4527641) (not b_lambda!155977) (not b_lambda!156151) (not bm!315563) (not b_lambda!156027) (not b_lambda!156131) (not b!4528156) (not b!4528266) (not b!4528116) (not b!4527677) (not b!4528112) (not b_lambda!156167) (not b!4527301) (not b!4527376) (not d!1396976) (not b!4527266) (not b!4527656) (not d!1396730) (not d!1397056) (not b!4527652) (not b!4527890) (not b!4527746) (not b!4527174) (not b!4528179) (not b!4527718) (not d!1396542) (not b!4527807) (not bm!315574) (not bm!315613) (not b_lambda!155967) (not b!4527493) (not bm!315595) (not b!4528126) (not b_lambda!156059) (not d!1396452) (not b!4527716) (not b!4527299) (not d!1396644) (not bs!863953) tp_is_empty!27967 (not b!4527087) (not b!4527442) (not b!4527665) (not b!4528256) (not bs!863980) (not b!4527817) (not b!4527736) (not d!1396606) (not b!4527295) (not b!4527426) (not bs!863986) (not b!4527164) (not bs!863956) (not b!4527833) (not b!4528036) (not d!1397144) (not b!4527885) (not d!1396450) (not bs!863969) (not bm!315583) (not b!4528096) (not b_lambda!156149) (not b!4527210) (not bm!315581) (not b!4527162) (not b!4528251) (not b!4528056) (not b!4528262) (not d!1396946) (not d!1396632) (not b!4527495) (not d!1396460) (not bs!863950) (not b!4527777) (not b!4527871) (not b!4527650) (not b!4527212) (not bm!315618) (not b!4527086) (not b!4528055) (not d!1396564) (not bs!863965) (not b!4528127) (not b!4528069) (not b!4527838) (not b!4528020) (not b!4527405) (not d!1396960) (not d!1397140) (not d!1396720) (not d!1397080) (not b!4528185) (not b!4527703) (not b!4528039) (not b!4528042) (not b!4527874) (not d!1396638) (not b!4528086) (not bm!315566) tp_is_empty!27965 (not b!4527809) (not d!1396524) (not b_lambda!156183) (not b!4527876) (not b!4527965) (not b_lambda!156133) (not b!4527667) (not b!4527424) (not d!1396634) (not d!1396412) (not b!4527206) (not bs!863972) (not b!4528018) (not b!4527747) (not d!1396760) (not b!4527835) (not d!1396718) (not b!4527881) (not d!1396926) (not bm!315572) (not d!1397000) (not bm!315600) (not bm!315567) (not b!4527410) (not b!4527494) (not d!1396930) (not bs!863993) (not b!4527496) (not b!4528276) (not bm!315611) (not b!4527388) (not b!4527879) (not b!4528204) (not d!1396728) (not b_lambda!156173) (not b!4527733) (not b!4527308) (not b!4527676) (not bm!315503) (not b!4527429) (not b!4527669) (not d!1397106) (not b!4527704) (not b!4527492) (not b!4527738) (not b!4528041) (not bm!315607) (not d!1396420) (not d!1396880) (not b!4527710) (not b_lambda!156159) (not bm!315564) (not d!1396686) (not b!4527681) (not b!4527412) (not b_lambda!156157) (not d!1397050) (not b!4527752) (not b!4527439) (not d!1397150) (not b!4527713) (not d!1397122) (not b!4527834) (not d!1396532) (not b!4527417) (not b!4527268) (not b!4527830) (not b_lambda!156121) (not d!1396712) (not b!4527728) (not d!1396890) (not d!1396778) (not b!4527836) (not b!4527485) (not bs!863958) (not b!4527208) (not b!4527419) (not b!4527434) (not d!1396688) (not b!4528187) (not bs!863976) (not b!4528250) (not b!4527282) (not b!4528071) (not b!4527422) (not d!1396618) (not b!4528246) (not d!1396416) (not b!4527407) (not b!4527449) (not b_lambda!155965) (not b!4527244) (not b!4528196) (not d!1396994) (not b_lambda!156123) (not b!4528157) (not b!4527473) (not d!1396876) (not bm!315575) (not bs!863995) (not b_lambda!156143) (not bs!863963) (not b!4528033) (not b!4527382) (not d!1396932) (not d!1396738) (not b!4527277) (not b!4527805) (not bs!863961) (not b!4528131) (not b!4527414) (not d!1397038) (not d!1396586) (not b!4528044) (not b!4527648) (not b!4528182) (not b!4528022) (not b!4527411) (not b!4527880) (not b!4528198) (not b!4528254) (not d!1397058) (not b!4528186) (not bs!863989) (not b!4527828) (not bm!315587) (not d!1396874) (not b!4528038) (not b!4527152) (not d!1396544) (not bm!315586) (not d!1396916) (not b!4528021) (not bm!315516) (not b!4528248) (not d!1397098) (not b_lambda!156129) (not bm!315502) (not d!1396804) (not bs!863974) (not b!4528177) (not b!4527923) (not b!4527653) (not b!4527668) (not d!1396498) (not bm!315584) (not b!4528057) (not b!4528162) (not bs!863994) (not bs!863987) (not b_lambda!156163) (not b!4527306) (not b!4527719) (not d!1396530) (not b_lambda!156003) (not b!4528201) (not d!1397148) (not b!4527699) (not b!4528029) (not b!4527304) (not b!4527642) (not b!4528059) (not d!1396616) (not bm!315585) (not d!1396482) (not bs!863967) (not b!4527971) (not b!4528121) (not bm!315562) (not b_lambda!155969) (not b!4527702) (not d!1396984) (not d!1396752) (not d!1396840) (not b!4527420) (not bm!315570) (not b!4527782) (not d!1396620) (not d!1397138) (not bs!863996) (not d!1397072) (not b!4528275) (not b!4527882) (not d!1396642) (not d!1396626) (not b_lambda!156189) (not b!4527723) (not b!4527270) (not bm!315612) (not d!1397032) (not bm!315631) (not b!4527474) (not b_lambda!156139) (not bm!315603) (not bm!315565) (not b!4527802) (not b_lambda!156141) (not d!1397066) (not b_lambda!156187) (not b_lambda!156155) (not b!4528115) (not b!4527209) (not b!4527237) (not b!4527729) (not b!4528175) (not d!1396924) (not d!1396630) (not b!4527416) (not b!4527925) (not b!4527140) (not d!1396922) (not b!4527934) (not d!1396878) (not d!1397132) (not b_lambda!156179) (not d!1396684) (not b!4527448) (not d!1396968) (not bm!315619) (not b_lambda!156153) (not b!4527967) (not b!4528261) (not b!4528084) (not d!1396754) (not d!1396774) (not d!1396550) (not bm!315599) (not bs!863991) (not b!4527187) (not b!4528054) (not b!4528213) (not b!4527715) (not bs!863951) (not d!1396700) (not b!4528090) (not b!4528015) (not bs!863988) (not b!4527644) (not b!4527776) (not b!4527685) (not b!4528040) (not b!4527271) (not b!4528277) (not b!4527490) (not b!4527136) (not d!1396872) (not bm!315504) (not b_lambda!156181) (not b!4527929) (not b!4528253) (not b!4527487) (not b!4528267) (not bm!315579) (not b!4527671) (not b!4527663) (not b_lambda!156145) (not b!4527390) (not b!4527730) (not bm!315594) (not b!4527682) (not b!4528158) (not d!1396600) (not d!1396548) (not d!1396612) (not bm!315526) (not b!4527767) (not b!4528270) (not d!1396476) (not b!4527734) (not b!4527413) (not b_lambda!156171) (not b!4528051) (not bm!315514) (not b!4527740) (not d!1396466) (not b!4527779) (not b_lambda!156137) (not bm!315582) (not b!4527386) (not b!4527748) (not bm!315525) (not b!4527954) (not b!4527303) (not b!4527711) (not bm!315580) (not b!4527674) (not b!4528068) (not b!4527072) (not b!4527176) (not b!4527307) (not bs!863978) (not b!4527066) (not d!1397022) (not bm!315593) (not b!4528135) (not b!4527385) (not d!1397086) (not b!4528180) (not b!4527219) (not b!4527771) (not b!4528249) (not b!4528108) (not b!4528183) (not b_lambda!156177) (not b!4527437) (not d!1396604) (not bs!863990) (not d!1396734) (not b!4528118) (not d!1396528) (not b!4528160) (not b_lambda!155963) (not b!4527649) (not b!4527477) (not b!4527808) (not b!4528203) (not bs!863952) (not b!4527085) (not b!4527778) (not b!4528109) (not b!4527436) (not d!1397120))
(check-sat)
