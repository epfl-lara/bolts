; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442860 () Bool)

(assert start!442860)

(declare-fun b!4492426 () Bool)

(declare-fun res!1867048 () Bool)

(declare-fun e!2798241 () Bool)

(assert (=> b!4492426 (=> res!1867048 e!2798241)))

(declare-datatypes ((K!11925 0))(
  ( (K!11926 (val!17811 Int)) )
))
(declare-datatypes ((V!12171 0))(
  ( (V!12172 (val!17812 Int)) )
))
(declare-datatypes ((tuple2!50890 0))(
  ( (tuple2!50891 (_1!28739 K!11925) (_2!28739 V!12171)) )
))
(declare-datatypes ((List!50634 0))(
  ( (Nil!50510) (Cons!50510 (h!56319 tuple2!50890) (t!357592 List!50634)) )
))
(declare-fun lt!1675668 () List!50634)

(declare-datatypes ((tuple2!50892 0))(
  ( (tuple2!50893 (_1!28740 (_ BitVec 64)) (_2!28740 List!50634)) )
))
(declare-datatypes ((List!50635 0))(
  ( (Nil!50511) (Cons!50511 (h!56320 tuple2!50892) (t!357593 List!50635)) )
))
(declare-datatypes ((ListLongMap!2867 0))(
  ( (ListLongMap!2868 (toList!4235 List!50635)) )
))
(declare-fun lt!1675671 () ListLongMap!2867)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11851 (ListLongMap!2867 (_ BitVec 64)) List!50634)

(assert (=> b!4492426 (= res!1867048 (not (= (apply!11851 lt!1675671 hash!344) lt!1675668)))))

(declare-fun b!4492427 () Bool)

(declare-fun e!2798244 () Bool)

(declare-fun tp!1337286 () Bool)

(assert (=> b!4492427 (= e!2798244 tp!1337286)))

(declare-fun b!4492428 () Bool)

(declare-fun tp_is_empty!27735 () Bool)

(declare-fun tp!1337287 () Bool)

(declare-fun e!2798246 () Bool)

(declare-fun tp_is_empty!27733 () Bool)

(assert (=> b!4492428 (= e!2798246 (and tp_is_empty!27733 tp_is_empty!27735 tp!1337287))))

(declare-fun b!4492430 () Bool)

(declare-fun e!2798240 () Bool)

(declare-fun e!2798248 () Bool)

(assert (=> b!4492430 (= e!2798240 e!2798248)))

(declare-fun res!1867049 () Bool)

(assert (=> b!4492430 (=> (not res!1867049) (not e!2798248))))

(declare-datatypes ((ListMap!3497 0))(
  ( (ListMap!3498 (toList!4236 List!50634)) )
))
(declare-fun lt!1675674 () ListMap!3497)

(declare-fun key!3287 () K!11925)

(declare-fun contains!13161 (ListMap!3497 K!11925) Bool)

(assert (=> b!4492430 (= res!1867049 (contains!13161 lt!1675674 key!3287))))

(declare-fun lm!1477 () ListLongMap!2867)

(declare-fun extractMap!1170 (List!50635) ListMap!3497)

(assert (=> b!4492430 (= lt!1675674 (extractMap!1170 (toList!4235 lm!1477)))))

(declare-fun b!4492431 () Bool)

(declare-fun e!2798242 () Bool)

(assert (=> b!4492431 (= e!2798242 e!2798241)))

(declare-fun res!1867053 () Bool)

(assert (=> b!4492431 (=> res!1867053 e!2798241)))

(declare-fun contains!13162 (ListLongMap!2867 (_ BitVec 64)) Bool)

(assert (=> b!4492431 (= res!1867053 (not (contains!13162 lt!1675671 hash!344)))))

(declare-fun tail!7644 (ListLongMap!2867) ListLongMap!2867)

(assert (=> b!4492431 (= lt!1675671 (tail!7644 lm!1477))))

(declare-fun b!4492432 () Bool)

(declare-fun res!1867047 () Bool)

(assert (=> b!4492432 (=> res!1867047 e!2798242)))

(declare-fun newBucket!178 () List!50634)

(declare-fun noDuplicateKeys!1114 (List!50634) Bool)

(assert (=> b!4492432 (= res!1867047 (not (noDuplicateKeys!1114 newBucket!178)))))

(declare-fun b!4492433 () Bool)

(declare-datatypes ((Unit!90944 0))(
  ( (Unit!90945) )
))
(declare-fun e!2798239 () Unit!90944)

(declare-fun Unit!90946 () Unit!90944)

(assert (=> b!4492433 (= e!2798239 Unit!90946)))

(declare-datatypes ((Hashable!5509 0))(
  ( (HashableExt!5508 (__x!31212 Int)) )
))
(declare-fun hashF!1107 () Hashable!5509)

(declare-fun lt!1675665 () Unit!90944)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!102 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> b!4492433 (= lt!1675665 (lemmaNotInItsHashBucketThenNotInMap!102 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4492433 false))

(declare-fun b!4492434 () Bool)

(declare-fun e!2798249 () Bool)

(declare-fun e!2798243 () Bool)

(assert (=> b!4492434 (= e!2798249 e!2798243)))

(declare-fun res!1867050 () Bool)

(assert (=> b!4492434 (=> res!1867050 e!2798243)))

(assert (=> b!4492434 (= res!1867050 (not (contains!13161 (extractMap!1170 (t!357593 (toList!4235 lm!1477))) key!3287)))))

(declare-fun lt!1675673 () ListMap!3497)

(assert (=> b!4492434 (contains!13161 lt!1675673 key!3287)))

(assert (=> b!4492434 (= lt!1675673 (extractMap!1170 (toList!4235 lt!1675671)))))

(declare-fun lt!1675676 () Unit!90944)

(declare-fun lemmaListContainsThenExtractedMapContains!84 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> b!4492434 (= lt!1675676 (lemmaListContainsThenExtractedMapContains!84 lt!1675671 key!3287 hashF!1107))))

(declare-fun b!4492435 () Bool)

(declare-fun res!1867060 () Bool)

(assert (=> b!4492435 (=> (not res!1867060) (not e!2798240))))

(declare-fun allKeysSameHashInMap!1221 (ListLongMap!2867 Hashable!5509) Bool)

(assert (=> b!4492435 (= res!1867060 (allKeysSameHashInMap!1221 lm!1477 hashF!1107))))

(declare-fun b!4492436 () Bool)

(declare-fun res!1867059 () Bool)

(assert (=> b!4492436 (=> res!1867059 e!2798242)))

(get-info :version)

(assert (=> b!4492436 (= res!1867059 (or ((_ is Nil!50511) (toList!4235 lm!1477)) (= (_1!28740 (h!56320 (toList!4235 lm!1477))) hash!344)))))

(declare-fun b!4492437 () Bool)

(declare-fun e!2798238 () Bool)

(assert (=> b!4492437 (= e!2798238 (not e!2798242))))

(declare-fun res!1867051 () Bool)

(assert (=> b!4492437 (=> res!1867051 e!2798242)))

(declare-fun removePairForKey!741 (List!50634 K!11925) List!50634)

(assert (=> b!4492437 (= res!1867051 (not (= newBucket!178 (removePairForKey!741 lt!1675668 key!3287))))))

(declare-fun lambda!167477 () Int)

(declare-fun lt!1675672 () Unit!90944)

(declare-fun lt!1675669 () tuple2!50892)

(declare-fun forallContained!2401 (List!50635 Int tuple2!50892) Unit!90944)

(assert (=> b!4492437 (= lt!1675672 (forallContained!2401 (toList!4235 lm!1477) lambda!167477 lt!1675669))))

(declare-fun contains!13163 (List!50635 tuple2!50892) Bool)

(assert (=> b!4492437 (contains!13163 (toList!4235 lm!1477) lt!1675669)))

(assert (=> b!4492437 (= lt!1675669 (tuple2!50893 hash!344 lt!1675668))))

(declare-fun lt!1675663 () Unit!90944)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!626 (List!50635 (_ BitVec 64) List!50634) Unit!90944)

(assert (=> b!4492437 (= lt!1675663 (lemmaGetValueByKeyImpliesContainsTuple!626 (toList!4235 lm!1477) hash!344 lt!1675668))))

(assert (=> b!4492437 (= lt!1675668 (apply!11851 lm!1477 hash!344))))

(declare-fun lt!1675667 () (_ BitVec 64))

(assert (=> b!4492437 (contains!13162 lm!1477 lt!1675667)))

(declare-fun lt!1675675 () Unit!90944)

(declare-fun lemmaInGenMapThenLongMapContainsHash!188 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> b!4492437 (= lt!1675675 (lemmaInGenMapThenLongMapContainsHash!188 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4492438 () Bool)

(assert (=> b!4492438 (= e!2798248 e!2798238)))

(declare-fun res!1867046 () Bool)

(assert (=> b!4492438 (=> (not res!1867046) (not e!2798238))))

(assert (=> b!4492438 (= res!1867046 (= lt!1675667 hash!344))))

(declare-fun hash!2645 (Hashable!5509 K!11925) (_ BitVec 64))

(assert (=> b!4492438 (= lt!1675667 (hash!2645 hashF!1107 key!3287))))

(declare-fun b!4492439 () Bool)

(declare-fun Unit!90947 () Unit!90944)

(assert (=> b!4492439 (= e!2798239 Unit!90947)))

(declare-fun b!4492440 () Bool)

(declare-fun e!2798245 () Bool)

(declare-fun isEmpty!28563 (ListLongMap!2867) Bool)

(assert (=> b!4492440 (= e!2798245 (not (isEmpty!28563 lm!1477)))))

(declare-fun b!4492441 () Bool)

(declare-fun res!1867058 () Bool)

(assert (=> b!4492441 (=> res!1867058 e!2798241)))

(assert (=> b!4492441 (= res!1867058 (not (contains!13163 (t!357593 (toList!4235 lm!1477)) lt!1675669)))))

(declare-fun b!4492429 () Bool)

(declare-fun e!2798247 () Bool)

(assert (=> b!4492429 (= e!2798247 e!2798249)))

(declare-fun res!1867057 () Bool)

(assert (=> b!4492429 (=> res!1867057 e!2798249)))

(declare-fun containsKeyBiggerList!94 (List!50635 K!11925) Bool)

(assert (=> b!4492429 (= res!1867057 (not (containsKeyBiggerList!94 (t!357593 (toList!4235 lm!1477)) key!3287)))))

(assert (=> b!4492429 (containsKeyBiggerList!94 (toList!4235 lt!1675671) key!3287)))

(declare-fun lt!1675666 () Unit!90944)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!30 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> b!4492429 (= lt!1675666 (lemmaInLongMapThenContainsKeyBiggerList!30 lt!1675671 key!3287 hashF!1107))))

(declare-fun res!1867052 () Bool)

(assert (=> start!442860 (=> (not res!1867052) (not e!2798240))))

(declare-fun forall!10145 (List!50635 Int) Bool)

(assert (=> start!442860 (= res!1867052 (forall!10145 (toList!4235 lm!1477) lambda!167477))))

(assert (=> start!442860 e!2798240))

(assert (=> start!442860 true))

(declare-fun inv!66109 (ListLongMap!2867) Bool)

(assert (=> start!442860 (and (inv!66109 lm!1477) e!2798244)))

(assert (=> start!442860 tp_is_empty!27733))

(assert (=> start!442860 e!2798246))

(declare-fun b!4492442 () Bool)

(assert (=> b!4492442 (= e!2798243 e!2798245)))

(declare-fun res!1867056 () Bool)

(assert (=> b!4492442 (=> res!1867056 e!2798245)))

(declare-fun eq!571 (ListMap!3497 ListMap!3497) Bool)

(declare-fun +!1452 (ListLongMap!2867 tuple2!50892) ListLongMap!2867)

(declare-fun head!9322 (ListLongMap!2867) tuple2!50892)

(assert (=> b!4492442 (= res!1867056 (not (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))) lt!1675674)))))

(declare-fun -!340 (ListMap!3497 K!11925) ListMap!3497)

(assert (=> b!4492442 (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) (-!340 lt!1675673 key!3287))))

(declare-fun lt!1675670 () Unit!90944)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!99 (ListLongMap!2867 (_ BitVec 64) List!50634 K!11925 Hashable!5509) Unit!90944)

(assert (=> b!4492442 (= lt!1675670 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!99 lt!1675671 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4492443 () Bool)

(declare-fun res!1867054 () Bool)

(assert (=> b!4492443 (=> (not res!1867054) (not e!2798238))))

(declare-fun allKeysSameHash!968 (List!50634 (_ BitVec 64) Hashable!5509) Bool)

(assert (=> b!4492443 (= res!1867054 (allKeysSameHash!968 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4492444 () Bool)

(assert (=> b!4492444 (= e!2798241 e!2798247)))

(declare-fun res!1867055 () Bool)

(assert (=> b!4492444 (=> res!1867055 e!2798247)))

(declare-fun lt!1675662 () Bool)

(assert (=> b!4492444 (= res!1867055 lt!1675662)))

(declare-fun lt!1675664 () Unit!90944)

(assert (=> b!4492444 (= lt!1675664 e!2798239)))

(declare-fun c!765273 () Bool)

(assert (=> b!4492444 (= c!765273 lt!1675662)))

(declare-fun containsKey!1646 (List!50634 K!11925) Bool)

(assert (=> b!4492444 (= lt!1675662 (not (containsKey!1646 lt!1675668 key!3287)))))

(assert (= (and start!442860 res!1867052) b!4492435))

(assert (= (and b!4492435 res!1867060) b!4492430))

(assert (= (and b!4492430 res!1867049) b!4492438))

(assert (= (and b!4492438 res!1867046) b!4492443))

(assert (= (and b!4492443 res!1867054) b!4492437))

(assert (= (and b!4492437 (not res!1867051)) b!4492432))

(assert (= (and b!4492432 (not res!1867047)) b!4492436))

(assert (= (and b!4492436 (not res!1867059)) b!4492431))

(assert (= (and b!4492431 (not res!1867053)) b!4492426))

(assert (= (and b!4492426 (not res!1867048)) b!4492441))

(assert (= (and b!4492441 (not res!1867058)) b!4492444))

(assert (= (and b!4492444 c!765273) b!4492433))

(assert (= (and b!4492444 (not c!765273)) b!4492439))

(assert (= (and b!4492444 (not res!1867055)) b!4492429))

(assert (= (and b!4492429 (not res!1867057)) b!4492434))

(assert (= (and b!4492434 (not res!1867050)) b!4492442))

(assert (= (and b!4492442 (not res!1867056)) b!4492440))

(assert (= start!442860 b!4492427))

(assert (= (and start!442860 ((_ is Cons!50510) newBucket!178)) b!4492428))

(declare-fun m!5217829 () Bool)

(assert (=> b!4492443 m!5217829))

(declare-fun m!5217831 () Bool)

(assert (=> b!4492429 m!5217831))

(declare-fun m!5217833 () Bool)

(assert (=> b!4492429 m!5217833))

(declare-fun m!5217835 () Bool)

(assert (=> b!4492429 m!5217835))

(declare-fun m!5217837 () Bool)

(assert (=> b!4492431 m!5217837))

(declare-fun m!5217839 () Bool)

(assert (=> b!4492431 m!5217839))

(declare-fun m!5217841 () Bool)

(assert (=> b!4492442 m!5217841))

(declare-fun m!5217843 () Bool)

(assert (=> b!4492442 m!5217843))

(declare-fun m!5217845 () Bool)

(assert (=> b!4492442 m!5217845))

(declare-fun m!5217847 () Bool)

(assert (=> b!4492442 m!5217847))

(declare-fun m!5217849 () Bool)

(assert (=> b!4492442 m!5217849))

(declare-fun m!5217851 () Bool)

(assert (=> b!4492442 m!5217851))

(assert (=> b!4492442 m!5217851))

(declare-fun m!5217853 () Bool)

(assert (=> b!4492442 m!5217853))

(assert (=> b!4492442 m!5217845))

(assert (=> b!4492442 m!5217849))

(declare-fun m!5217855 () Bool)

(assert (=> b!4492442 m!5217855))

(assert (=> b!4492442 m!5217841))

(declare-fun m!5217857 () Bool)

(assert (=> b!4492442 m!5217857))

(declare-fun m!5217859 () Bool)

(assert (=> b!4492440 m!5217859))

(declare-fun m!5217861 () Bool)

(assert (=> start!442860 m!5217861))

(declare-fun m!5217863 () Bool)

(assert (=> start!442860 m!5217863))

(declare-fun m!5217865 () Bool)

(assert (=> b!4492441 m!5217865))

(declare-fun m!5217867 () Bool)

(assert (=> b!4492438 m!5217867))

(declare-fun m!5217869 () Bool)

(assert (=> b!4492432 m!5217869))

(declare-fun m!5217871 () Bool)

(assert (=> b!4492444 m!5217871))

(declare-fun m!5217873 () Bool)

(assert (=> b!4492433 m!5217873))

(declare-fun m!5217875 () Bool)

(assert (=> b!4492435 m!5217875))

(declare-fun m!5217877 () Bool)

(assert (=> b!4492434 m!5217877))

(declare-fun m!5217879 () Bool)

(assert (=> b!4492434 m!5217879))

(declare-fun m!5217881 () Bool)

(assert (=> b!4492434 m!5217881))

(declare-fun m!5217883 () Bool)

(assert (=> b!4492434 m!5217883))

(assert (=> b!4492434 m!5217877))

(declare-fun m!5217885 () Bool)

(assert (=> b!4492434 m!5217885))

(declare-fun m!5217887 () Bool)

(assert (=> b!4492430 m!5217887))

(declare-fun m!5217889 () Bool)

(assert (=> b!4492430 m!5217889))

(declare-fun m!5217891 () Bool)

(assert (=> b!4492437 m!5217891))

(declare-fun m!5217893 () Bool)

(assert (=> b!4492437 m!5217893))

(declare-fun m!5217895 () Bool)

(assert (=> b!4492437 m!5217895))

(declare-fun m!5217897 () Bool)

(assert (=> b!4492437 m!5217897))

(declare-fun m!5217899 () Bool)

(assert (=> b!4492437 m!5217899))

(declare-fun m!5217901 () Bool)

(assert (=> b!4492437 m!5217901))

(declare-fun m!5217903 () Bool)

(assert (=> b!4492437 m!5217903))

(declare-fun m!5217905 () Bool)

(assert (=> b!4492426 m!5217905))

(check-sat (not b!4492438) (not start!442860) (not b!4492444) (not b!4492441) (not b!4492437) (not b!4492428) (not b!4492429) (not b!4492440) (not b!4492442) (not b!4492432) (not b!4492427) (not b!4492443) (not b!4492426) tp_is_empty!27735 (not b!4492434) (not b!4492430) (not b!4492435) tp_is_empty!27733 (not b!4492433) (not b!4492431))
(check-sat)
(get-model)

(declare-fun bs!831582 () Bool)

(declare-fun d!1376987 () Bool)

(assert (= bs!831582 (and d!1376987 start!442860)))

(declare-fun lambda!167487 () Int)

(assert (=> bs!831582 (= lambda!167487 lambda!167477)))

(assert (=> d!1376987 (not (contains!13161 (extractMap!1170 (toList!4235 lm!1477)) key!3287))))

(declare-fun lt!1675698 () Unit!90944)

(declare-fun choose!28982 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> d!1376987 (= lt!1675698 (choose!28982 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1376987 (forall!10145 (toList!4235 lm!1477) lambda!167487)))

(assert (=> d!1376987 (= (lemmaNotInItsHashBucketThenNotInMap!102 lm!1477 key!3287 hashF!1107) lt!1675698)))

(declare-fun bs!831583 () Bool)

(assert (= bs!831583 d!1376987))

(assert (=> bs!831583 m!5217889))

(assert (=> bs!831583 m!5217889))

(declare-fun m!5217955 () Bool)

(assert (=> bs!831583 m!5217955))

(declare-fun m!5217957 () Bool)

(assert (=> bs!831583 m!5217957))

(declare-fun m!5217959 () Bool)

(assert (=> bs!831583 m!5217959))

(assert (=> b!4492433 d!1376987))

(declare-fun d!1377003 () Bool)

(declare-fun res!1867080 () Bool)

(declare-fun e!2798270 () Bool)

(assert (=> d!1377003 (=> res!1867080 e!2798270)))

(assert (=> d!1377003 (= res!1867080 (and ((_ is Cons!50510) lt!1675668) (= (_1!28739 (h!56319 lt!1675668)) key!3287)))))

(assert (=> d!1377003 (= (containsKey!1646 lt!1675668 key!3287) e!2798270)))

(declare-fun b!4492472 () Bool)

(declare-fun e!2798271 () Bool)

(assert (=> b!4492472 (= e!2798270 e!2798271)))

(declare-fun res!1867081 () Bool)

(assert (=> b!4492472 (=> (not res!1867081) (not e!2798271))))

(assert (=> b!4492472 (= res!1867081 ((_ is Cons!50510) lt!1675668))))

(declare-fun b!4492473 () Bool)

(assert (=> b!4492473 (= e!2798271 (containsKey!1646 (t!357592 lt!1675668) key!3287))))

(assert (= (and d!1377003 (not res!1867080)) b!4492472))

(assert (= (and b!4492472 res!1867081) b!4492473))

(declare-fun m!5217975 () Bool)

(assert (=> b!4492473 m!5217975))

(assert (=> b!4492444 d!1377003))

(declare-fun d!1377007 () Bool)

(declare-fun e!2798305 () Bool)

(assert (=> d!1377007 e!2798305))

(declare-fun res!1867100 () Bool)

(assert (=> d!1377007 (=> res!1867100 e!2798305)))

(declare-fun e!2798303 () Bool)

(assert (=> d!1377007 (= res!1867100 e!2798303)))

(declare-fun res!1867099 () Bool)

(assert (=> d!1377007 (=> (not res!1867099) (not e!2798303))))

(declare-fun lt!1675756 () Bool)

(assert (=> d!1377007 (= res!1867099 (not lt!1675756))))

(declare-fun lt!1675750 () Bool)

(assert (=> d!1377007 (= lt!1675756 lt!1675750)))

(declare-fun lt!1675749 () Unit!90944)

(declare-fun e!2798308 () Unit!90944)

(assert (=> d!1377007 (= lt!1675749 e!2798308)))

(declare-fun c!765293 () Bool)

(assert (=> d!1377007 (= c!765293 lt!1675750)))

(declare-fun containsKey!1649 (List!50634 K!11925) Bool)

(assert (=> d!1377007 (= lt!1675750 (containsKey!1649 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (=> d!1377007 (= (contains!13161 (extractMap!1170 (t!357593 (toList!4235 lm!1477))) key!3287) lt!1675756)))

(declare-fun b!4492521 () Bool)

(assert (=> b!4492521 false))

(declare-fun lt!1675752 () Unit!90944)

(declare-fun lt!1675753 () Unit!90944)

(assert (=> b!4492521 (= lt!1675752 lt!1675753)))

(assert (=> b!4492521 (containsKey!1649 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!420 (List!50634 K!11925) Unit!90944)

(assert (=> b!4492521 (= lt!1675753 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-fun e!2798304 () Unit!90944)

(declare-fun Unit!90951 () Unit!90944)

(assert (=> b!4492521 (= e!2798304 Unit!90951)))

(declare-fun b!4492522 () Bool)

(declare-datatypes ((List!50637 0))(
  ( (Nil!50513) (Cons!50513 (h!56324 K!11925) (t!357595 List!50637)) )
))
(declare-fun e!2798306 () List!50637)

(declare-fun keys!17502 (ListMap!3497) List!50637)

(assert (=> b!4492522 (= e!2798306 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4492523 () Bool)

(declare-fun Unit!90952 () Unit!90944)

(assert (=> b!4492523 (= e!2798304 Unit!90952)))

(declare-fun b!4492524 () Bool)

(declare-fun getKeysList!421 (List!50634) List!50637)

(assert (=> b!4492524 (= e!2798306 (getKeysList!421 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4492525 () Bool)

(assert (=> b!4492525 (= e!2798308 e!2798304)))

(declare-fun c!765294 () Bool)

(declare-fun call!312584 () Bool)

(assert (=> b!4492525 (= c!765294 call!312584)))

(declare-fun b!4492526 () Bool)

(declare-fun contains!13165 (List!50637 K!11925) Bool)

(assert (=> b!4492526 (= e!2798303 (not (contains!13165 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287)))))

(declare-fun b!4492527 () Bool)

(declare-fun e!2798307 () Bool)

(assert (=> b!4492527 (= e!2798307 (contains!13165 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-fun b!4492528 () Bool)

(declare-fun lt!1675754 () Unit!90944)

(assert (=> b!4492528 (= e!2798308 lt!1675754)))

(declare-fun lt!1675751 () Unit!90944)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!908 (List!50634 K!11925) Unit!90944)

(assert (=> b!4492528 (= lt!1675751 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11024 0))(
  ( (None!11023) (Some!11023 (v!44477 V!12171)) )
))
(declare-fun isDefined!8311 (Option!11024) Bool)

(declare-fun getValueByKey!1004 (List!50634 K!11925) Option!11024)

(assert (=> b!4492528 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-fun lt!1675755 () Unit!90944)

(assert (=> b!4492528 (= lt!1675755 lt!1675751)))

(declare-fun lemmaInListThenGetKeysListContains!417 (List!50634 K!11925) Unit!90944)

(assert (=> b!4492528 (= lt!1675754 (lemmaInListThenGetKeysListContains!417 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (=> b!4492528 call!312584))

(declare-fun bm!312579 () Bool)

(assert (=> bm!312579 (= call!312584 (contains!13165 e!2798306 key!3287))))

(declare-fun c!765295 () Bool)

(assert (=> bm!312579 (= c!765295 c!765293)))

(declare-fun b!4492529 () Bool)

(assert (=> b!4492529 (= e!2798305 e!2798307)))

(declare-fun res!1867101 () Bool)

(assert (=> b!4492529 (=> (not res!1867101) (not e!2798307))))

(assert (=> b!4492529 (= res!1867101 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287)))))

(assert (= (and d!1377007 c!765293) b!4492528))

(assert (= (and d!1377007 (not c!765293)) b!4492525))

(assert (= (and b!4492525 c!765294) b!4492521))

(assert (= (and b!4492525 (not c!765294)) b!4492523))

(assert (= (or b!4492528 b!4492525) bm!312579))

(assert (= (and bm!312579 c!765295) b!4492524))

(assert (= (and bm!312579 (not c!765295)) b!4492522))

(assert (= (and d!1377007 res!1867099) b!4492526))

(assert (= (and d!1377007 (not res!1867100)) b!4492529))

(assert (= (and b!4492529 res!1867101) b!4492527))

(declare-fun m!5218033 () Bool)

(assert (=> b!4492524 m!5218033))

(assert (=> b!4492522 m!5217877))

(declare-fun m!5218035 () Bool)

(assert (=> b!4492522 m!5218035))

(declare-fun m!5218037 () Bool)

(assert (=> b!4492521 m!5218037))

(declare-fun m!5218039 () Bool)

(assert (=> b!4492521 m!5218039))

(declare-fun m!5218041 () Bool)

(assert (=> b!4492529 m!5218041))

(assert (=> b!4492529 m!5218041))

(declare-fun m!5218043 () Bool)

(assert (=> b!4492529 m!5218043))

(assert (=> d!1377007 m!5218037))

(assert (=> b!4492527 m!5217877))

(assert (=> b!4492527 m!5218035))

(assert (=> b!4492527 m!5218035))

(declare-fun m!5218045 () Bool)

(assert (=> b!4492527 m!5218045))

(declare-fun m!5218047 () Bool)

(assert (=> bm!312579 m!5218047))

(assert (=> b!4492526 m!5217877))

(assert (=> b!4492526 m!5218035))

(assert (=> b!4492526 m!5218035))

(assert (=> b!4492526 m!5218045))

(declare-fun m!5218053 () Bool)

(assert (=> b!4492528 m!5218053))

(assert (=> b!4492528 m!5218041))

(assert (=> b!4492528 m!5218041))

(assert (=> b!4492528 m!5218043))

(declare-fun m!5218055 () Bool)

(assert (=> b!4492528 m!5218055))

(assert (=> b!4492434 d!1377007))

(declare-fun bs!831605 () Bool)

(declare-fun d!1377029 () Bool)

(assert (= bs!831605 (and d!1377029 start!442860)))

(declare-fun lambda!167500 () Int)

(assert (=> bs!831605 (= lambda!167500 lambda!167477)))

(declare-fun bs!831606 () Bool)

(assert (= bs!831606 (and d!1377029 d!1376987)))

(assert (=> bs!831606 (= lambda!167500 lambda!167487)))

(declare-fun lt!1675788 () ListMap!3497)

(declare-fun invariantList!973 (List!50634) Bool)

(assert (=> d!1377029 (invariantList!973 (toList!4236 lt!1675788))))

(declare-fun e!2798350 () ListMap!3497)

(assert (=> d!1377029 (= lt!1675788 e!2798350)))

(declare-fun c!765308 () Bool)

(assert (=> d!1377029 (= c!765308 ((_ is Cons!50511) (t!357593 (toList!4235 lm!1477))))))

(assert (=> d!1377029 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167500)))

(assert (=> d!1377029 (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1675788)))

(declare-fun b!4492585 () Bool)

(declare-fun addToMapMapFromBucket!641 (List!50634 ListMap!3497) ListMap!3497)

(assert (=> b!4492585 (= e!2798350 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4492586 () Bool)

(assert (=> b!4492586 (= e!2798350 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377029 c!765308) b!4492585))

(assert (= (and d!1377029 (not c!765308)) b!4492586))

(declare-fun m!5218099 () Bool)

(assert (=> d!1377029 m!5218099))

(declare-fun m!5218101 () Bool)

(assert (=> d!1377029 m!5218101))

(declare-fun m!5218103 () Bool)

(assert (=> b!4492585 m!5218103))

(assert (=> b!4492585 m!5218103))

(declare-fun m!5218105 () Bool)

(assert (=> b!4492585 m!5218105))

(assert (=> b!4492434 d!1377029))

(declare-fun d!1377045 () Bool)

(declare-fun e!2798359 () Bool)

(assert (=> d!1377045 e!2798359))

(declare-fun res!1867138 () Bool)

(assert (=> d!1377045 (=> res!1867138 e!2798359)))

(declare-fun e!2798357 () Bool)

(assert (=> d!1377045 (= res!1867138 e!2798357)))

(declare-fun res!1867137 () Bool)

(assert (=> d!1377045 (=> (not res!1867137) (not e!2798357))))

(declare-fun lt!1675796 () Bool)

(assert (=> d!1377045 (= res!1867137 (not lt!1675796))))

(declare-fun lt!1675790 () Bool)

(assert (=> d!1377045 (= lt!1675796 lt!1675790)))

(declare-fun lt!1675789 () Unit!90944)

(declare-fun e!2798362 () Unit!90944)

(assert (=> d!1377045 (= lt!1675789 e!2798362)))

(declare-fun c!765309 () Bool)

(assert (=> d!1377045 (= c!765309 lt!1675790)))

(assert (=> d!1377045 (= lt!1675790 (containsKey!1649 (toList!4236 lt!1675673) key!3287))))

(assert (=> d!1377045 (= (contains!13161 lt!1675673 key!3287) lt!1675796)))

(declare-fun b!4492595 () Bool)

(assert (=> b!4492595 false))

(declare-fun lt!1675792 () Unit!90944)

(declare-fun lt!1675793 () Unit!90944)

(assert (=> b!4492595 (= lt!1675792 lt!1675793)))

(assert (=> b!4492595 (containsKey!1649 (toList!4236 lt!1675673) key!3287)))

(assert (=> b!4492595 (= lt!1675793 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 lt!1675673) key!3287))))

(declare-fun e!2798358 () Unit!90944)

(declare-fun Unit!90956 () Unit!90944)

(assert (=> b!4492595 (= e!2798358 Unit!90956)))

(declare-fun b!4492596 () Bool)

(declare-fun e!2798360 () List!50637)

(assert (=> b!4492596 (= e!2798360 (keys!17502 lt!1675673))))

(declare-fun b!4492597 () Bool)

(declare-fun Unit!90957 () Unit!90944)

(assert (=> b!4492597 (= e!2798358 Unit!90957)))

(declare-fun b!4492598 () Bool)

(assert (=> b!4492598 (= e!2798360 (getKeysList!421 (toList!4236 lt!1675673)))))

(declare-fun b!4492599 () Bool)

(assert (=> b!4492599 (= e!2798362 e!2798358)))

(declare-fun c!765310 () Bool)

(declare-fun call!312588 () Bool)

(assert (=> b!4492599 (= c!765310 call!312588)))

(declare-fun b!4492600 () Bool)

(assert (=> b!4492600 (= e!2798357 (not (contains!13165 (keys!17502 lt!1675673) key!3287)))))

(declare-fun b!4492601 () Bool)

(declare-fun e!2798361 () Bool)

(assert (=> b!4492601 (= e!2798361 (contains!13165 (keys!17502 lt!1675673) key!3287))))

(declare-fun b!4492602 () Bool)

(declare-fun lt!1675794 () Unit!90944)

(assert (=> b!4492602 (= e!2798362 lt!1675794)))

(declare-fun lt!1675791 () Unit!90944)

(assert (=> b!4492602 (= lt!1675791 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675673) key!3287))))

(assert (=> b!4492602 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))))

(declare-fun lt!1675795 () Unit!90944)

(assert (=> b!4492602 (= lt!1675795 lt!1675791)))

(assert (=> b!4492602 (= lt!1675794 (lemmaInListThenGetKeysListContains!417 (toList!4236 lt!1675673) key!3287))))

(assert (=> b!4492602 call!312588))

(declare-fun bm!312583 () Bool)

(assert (=> bm!312583 (= call!312588 (contains!13165 e!2798360 key!3287))))

(declare-fun c!765311 () Bool)

(assert (=> bm!312583 (= c!765311 c!765309)))

(declare-fun b!4492603 () Bool)

(assert (=> b!4492603 (= e!2798359 e!2798361)))

(declare-fun res!1867139 () Bool)

(assert (=> b!4492603 (=> (not res!1867139) (not e!2798361))))

(assert (=> b!4492603 (= res!1867139 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287)))))

(assert (= (and d!1377045 c!765309) b!4492602))

(assert (= (and d!1377045 (not c!765309)) b!4492599))

(assert (= (and b!4492599 c!765310) b!4492595))

(assert (= (and b!4492599 (not c!765310)) b!4492597))

(assert (= (or b!4492602 b!4492599) bm!312583))

(assert (= (and bm!312583 c!765311) b!4492598))

(assert (= (and bm!312583 (not c!765311)) b!4492596))

(assert (= (and d!1377045 res!1867137) b!4492600))

(assert (= (and d!1377045 (not res!1867138)) b!4492603))

(assert (= (and b!4492603 res!1867139) b!4492601))

(declare-fun m!5218115 () Bool)

(assert (=> b!4492598 m!5218115))

(declare-fun m!5218117 () Bool)

(assert (=> b!4492596 m!5218117))

(declare-fun m!5218119 () Bool)

(assert (=> b!4492595 m!5218119))

(declare-fun m!5218121 () Bool)

(assert (=> b!4492595 m!5218121))

(declare-fun m!5218123 () Bool)

(assert (=> b!4492603 m!5218123))

(assert (=> b!4492603 m!5218123))

(declare-fun m!5218125 () Bool)

(assert (=> b!4492603 m!5218125))

(assert (=> d!1377045 m!5218119))

(assert (=> b!4492601 m!5218117))

(assert (=> b!4492601 m!5218117))

(declare-fun m!5218127 () Bool)

(assert (=> b!4492601 m!5218127))

(declare-fun m!5218129 () Bool)

(assert (=> bm!312583 m!5218129))

(assert (=> b!4492600 m!5218117))

(assert (=> b!4492600 m!5218117))

(assert (=> b!4492600 m!5218127))

(declare-fun m!5218131 () Bool)

(assert (=> b!4492602 m!5218131))

(assert (=> b!4492602 m!5218123))

(assert (=> b!4492602 m!5218123))

(assert (=> b!4492602 m!5218125))

(declare-fun m!5218133 () Bool)

(assert (=> b!4492602 m!5218133))

(assert (=> b!4492434 d!1377045))

(declare-fun bs!831607 () Bool)

(declare-fun d!1377051 () Bool)

(assert (= bs!831607 (and d!1377051 start!442860)))

(declare-fun lambda!167503 () Int)

(assert (=> bs!831607 (= lambda!167503 lambda!167477)))

(declare-fun bs!831608 () Bool)

(assert (= bs!831608 (and d!1377051 d!1376987)))

(assert (=> bs!831608 (= lambda!167503 lambda!167487)))

(declare-fun bs!831609 () Bool)

(assert (= bs!831609 (and d!1377051 d!1377029)))

(assert (=> bs!831609 (= lambda!167503 lambda!167500)))

(declare-fun lt!1675797 () ListMap!3497)

(assert (=> d!1377051 (invariantList!973 (toList!4236 lt!1675797))))

(declare-fun e!2798369 () ListMap!3497)

(assert (=> d!1377051 (= lt!1675797 e!2798369)))

(declare-fun c!765312 () Bool)

(assert (=> d!1377051 (= c!765312 ((_ is Cons!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377051 (forall!10145 (toList!4235 lt!1675671) lambda!167503)))

(assert (=> d!1377051 (= (extractMap!1170 (toList!4235 lt!1675671)) lt!1675797)))

(declare-fun b!4492610 () Bool)

(assert (=> b!4492610 (= e!2798369 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))))))

(declare-fun b!4492611 () Bool)

(assert (=> b!4492611 (= e!2798369 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377051 c!765312) b!4492610))

(assert (= (and d!1377051 (not c!765312)) b!4492611))

(declare-fun m!5218135 () Bool)

(assert (=> d!1377051 m!5218135))

(declare-fun m!5218137 () Bool)

(assert (=> d!1377051 m!5218137))

(declare-fun m!5218139 () Bool)

(assert (=> b!4492610 m!5218139))

(assert (=> b!4492610 m!5218139))

(declare-fun m!5218141 () Bool)

(assert (=> b!4492610 m!5218141))

(assert (=> b!4492434 d!1377051))

(declare-fun bs!831660 () Bool)

(declare-fun d!1377053 () Bool)

(assert (= bs!831660 (and d!1377053 start!442860)))

(declare-fun lambda!167515 () Int)

(assert (=> bs!831660 (= lambda!167515 lambda!167477)))

(declare-fun bs!831661 () Bool)

(assert (= bs!831661 (and d!1377053 d!1376987)))

(assert (=> bs!831661 (= lambda!167515 lambda!167487)))

(declare-fun bs!831662 () Bool)

(assert (= bs!831662 (and d!1377053 d!1377029)))

(assert (=> bs!831662 (= lambda!167515 lambda!167500)))

(declare-fun bs!831663 () Bool)

(assert (= bs!831663 (and d!1377053 d!1377051)))

(assert (=> bs!831663 (= lambda!167515 lambda!167503)))

(assert (=> d!1377053 (contains!13161 (extractMap!1170 (toList!4235 lt!1675671)) key!3287)))

(declare-fun lt!1675828 () Unit!90944)

(declare-fun choose!28985 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> d!1377053 (= lt!1675828 (choose!28985 lt!1675671 key!3287 hashF!1107))))

(assert (=> d!1377053 (forall!10145 (toList!4235 lt!1675671) lambda!167515)))

(assert (=> d!1377053 (= (lemmaListContainsThenExtractedMapContains!84 lt!1675671 key!3287 hashF!1107) lt!1675828)))

(declare-fun bs!831665 () Bool)

(assert (= bs!831665 d!1377053))

(assert (=> bs!831665 m!5217881))

(assert (=> bs!831665 m!5217881))

(declare-fun m!5218223 () Bool)

(assert (=> bs!831665 m!5218223))

(declare-fun m!5218227 () Bool)

(assert (=> bs!831665 m!5218227))

(declare-fun m!5218229 () Bool)

(assert (=> bs!831665 m!5218229))

(assert (=> b!4492434 d!1377053))

(declare-fun d!1377077 () Bool)

(declare-fun res!1867157 () Bool)

(declare-fun e!2798396 () Bool)

(assert (=> d!1377077 (=> res!1867157 e!2798396)))

(assert (=> d!1377077 (= res!1867157 (not ((_ is Cons!50510) newBucket!178)))))

(assert (=> d!1377077 (= (noDuplicateKeys!1114 newBucket!178) e!2798396)))

(declare-fun b!4492653 () Bool)

(declare-fun e!2798397 () Bool)

(assert (=> b!4492653 (= e!2798396 e!2798397)))

(declare-fun res!1867158 () Bool)

(assert (=> b!4492653 (=> (not res!1867158) (not e!2798397))))

(assert (=> b!4492653 (= res!1867158 (not (containsKey!1646 (t!357592 newBucket!178) (_1!28739 (h!56319 newBucket!178)))))))

(declare-fun b!4492654 () Bool)

(assert (=> b!4492654 (= e!2798397 (noDuplicateKeys!1114 (t!357592 newBucket!178)))))

(assert (= (and d!1377077 (not res!1867157)) b!4492653))

(assert (= (and b!4492653 res!1867158) b!4492654))

(declare-fun m!5218231 () Bool)

(assert (=> b!4492653 m!5218231))

(declare-fun m!5218233 () Bool)

(assert (=> b!4492654 m!5218233))

(assert (=> b!4492432 d!1377077))

(declare-fun d!1377079 () Bool)

(assert (=> d!1377079 true))

(assert (=> d!1377079 true))

(declare-fun lambda!167518 () Int)

(declare-fun forall!10147 (List!50634 Int) Bool)

(assert (=> d!1377079 (= (allKeysSameHash!968 newBucket!178 hash!344 hashF!1107) (forall!10147 newBucket!178 lambda!167518))))

(declare-fun bs!831667 () Bool)

(assert (= bs!831667 d!1377079))

(declare-fun m!5218235 () Bool)

(assert (=> bs!831667 m!5218235))

(assert (=> b!4492443 d!1377079))

(declare-fun d!1377081 () Bool)

(declare-datatypes ((Option!11025 0))(
  ( (None!11024) (Some!11024 (v!44478 List!50634)) )
))
(declare-fun get!16493 (Option!11025) List!50634)

(declare-fun getValueByKey!1005 (List!50635 (_ BitVec 64)) Option!11025)

(assert (=> d!1377081 (= (apply!11851 lt!1675671 hash!344) (get!16493 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344)))))

(declare-fun bs!831668 () Bool)

(assert (= bs!831668 d!1377081))

(declare-fun m!5218237 () Bool)

(assert (=> bs!831668 m!5218237))

(assert (=> bs!831668 m!5218237))

(declare-fun m!5218239 () Bool)

(assert (=> bs!831668 m!5218239))

(assert (=> b!4492426 d!1377081))

(declare-fun bs!831669 () Bool)

(declare-fun d!1377083 () Bool)

(assert (= bs!831669 (and d!1377083 d!1376987)))

(declare-fun lambda!167521 () Int)

(assert (=> bs!831669 (not (= lambda!167521 lambda!167487))))

(declare-fun bs!831670 () Bool)

(assert (= bs!831670 (and d!1377083 start!442860)))

(assert (=> bs!831670 (not (= lambda!167521 lambda!167477))))

(declare-fun bs!831671 () Bool)

(assert (= bs!831671 (and d!1377083 d!1377051)))

(assert (=> bs!831671 (not (= lambda!167521 lambda!167503))))

(declare-fun bs!831672 () Bool)

(assert (= bs!831672 (and d!1377083 d!1377053)))

(assert (=> bs!831672 (not (= lambda!167521 lambda!167515))))

(declare-fun bs!831673 () Bool)

(assert (= bs!831673 (and d!1377083 d!1377029)))

(assert (=> bs!831673 (not (= lambda!167521 lambda!167500))))

(assert (=> d!1377083 true))

(assert (=> d!1377083 (= (allKeysSameHashInMap!1221 lm!1477 hashF!1107) (forall!10145 (toList!4235 lm!1477) lambda!167521))))

(declare-fun bs!831674 () Bool)

(assert (= bs!831674 d!1377083))

(declare-fun m!5218241 () Bool)

(assert (=> bs!831674 m!5218241))

(assert (=> b!4492435 d!1377083))

(declare-fun d!1377085 () Bool)

(declare-fun res!1867163 () Bool)

(declare-fun e!2798402 () Bool)

(assert (=> d!1377085 (=> res!1867163 e!2798402)))

(assert (=> d!1377085 (= res!1867163 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377085 (= (forall!10145 (toList!4235 lm!1477) lambda!167477) e!2798402)))

(declare-fun b!4492665 () Bool)

(declare-fun e!2798403 () Bool)

(assert (=> b!4492665 (= e!2798402 e!2798403)))

(declare-fun res!1867164 () Bool)

(assert (=> b!4492665 (=> (not res!1867164) (not e!2798403))))

(declare-fun dynLambda!21087 (Int tuple2!50892) Bool)

(assert (=> b!4492665 (= res!1867164 (dynLambda!21087 lambda!167477 (h!56320 (toList!4235 lm!1477))))))

(declare-fun b!4492666 () Bool)

(assert (=> b!4492666 (= e!2798403 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167477))))

(assert (= (and d!1377085 (not res!1867163)) b!4492665))

(assert (= (and b!4492665 res!1867164) b!4492666))

(declare-fun b_lambda!151649 () Bool)

(assert (=> (not b_lambda!151649) (not b!4492665)))

(declare-fun m!5218243 () Bool)

(assert (=> b!4492665 m!5218243))

(declare-fun m!5218245 () Bool)

(assert (=> b!4492666 m!5218245))

(assert (=> start!442860 d!1377085))

(declare-fun d!1377087 () Bool)

(declare-fun isStrictlySorted!387 (List!50635) Bool)

(assert (=> d!1377087 (= (inv!66109 lm!1477) (isStrictlySorted!387 (toList!4235 lm!1477)))))

(declare-fun bs!831675 () Bool)

(assert (= bs!831675 d!1377087))

(declare-fun m!5218247 () Bool)

(assert (=> bs!831675 m!5218247))

(assert (=> start!442860 d!1377087))

(declare-fun d!1377089 () Bool)

(declare-fun e!2798409 () Bool)

(assert (=> d!1377089 e!2798409))

(declare-fun res!1867167 () Bool)

(assert (=> d!1377089 (=> res!1867167 e!2798409)))

(declare-fun lt!1675839 () Bool)

(assert (=> d!1377089 (= res!1867167 (not lt!1675839))))

(declare-fun lt!1675840 () Bool)

(assert (=> d!1377089 (= lt!1675839 lt!1675840)))

(declare-fun lt!1675837 () Unit!90944)

(declare-fun e!2798408 () Unit!90944)

(assert (=> d!1377089 (= lt!1675837 e!2798408)))

(declare-fun c!765324 () Bool)

(assert (=> d!1377089 (= c!765324 lt!1675840)))

(declare-fun containsKey!1650 (List!50635 (_ BitVec 64)) Bool)

(assert (=> d!1377089 (= lt!1675840 (containsKey!1650 (toList!4235 lm!1477) lt!1675667))))

(assert (=> d!1377089 (= (contains!13162 lm!1477 lt!1675667) lt!1675839)))

(declare-fun b!4492673 () Bool)

(declare-fun lt!1675838 () Unit!90944)

(assert (=> b!4492673 (= e!2798408 lt!1675838)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!909 (List!50635 (_ BitVec 64)) Unit!90944)

(assert (=> b!4492673 (= lt!1675838 (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lm!1477) lt!1675667))))

(declare-fun isDefined!8312 (Option!11025) Bool)

(assert (=> b!4492673 (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667))))

(declare-fun b!4492674 () Bool)

(declare-fun Unit!90960 () Unit!90944)

(assert (=> b!4492674 (= e!2798408 Unit!90960)))

(declare-fun b!4492675 () Bool)

(assert (=> b!4492675 (= e!2798409 (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667)))))

(assert (= (and d!1377089 c!765324) b!4492673))

(assert (= (and d!1377089 (not c!765324)) b!4492674))

(assert (= (and d!1377089 (not res!1867167)) b!4492675))

(declare-fun m!5218249 () Bool)

(assert (=> d!1377089 m!5218249))

(declare-fun m!5218251 () Bool)

(assert (=> b!4492673 m!5218251))

(declare-fun m!5218253 () Bool)

(assert (=> b!4492673 m!5218253))

(assert (=> b!4492673 m!5218253))

(declare-fun m!5218255 () Bool)

(assert (=> b!4492673 m!5218255))

(assert (=> b!4492675 m!5218253))

(assert (=> b!4492675 m!5218253))

(assert (=> b!4492675 m!5218255))

(assert (=> b!4492437 d!1377089))

(declare-fun bs!831676 () Bool)

(declare-fun d!1377091 () Bool)

(assert (= bs!831676 (and d!1377091 d!1376987)))

(declare-fun lambda!167524 () Int)

(assert (=> bs!831676 (= lambda!167524 lambda!167487)))

(declare-fun bs!831677 () Bool)

(assert (= bs!831677 (and d!1377091 start!442860)))

(assert (=> bs!831677 (= lambda!167524 lambda!167477)))

(declare-fun bs!831678 () Bool)

(assert (= bs!831678 (and d!1377091 d!1377051)))

(assert (=> bs!831678 (= lambda!167524 lambda!167503)))

(declare-fun bs!831679 () Bool)

(assert (= bs!831679 (and d!1377091 d!1377053)))

(assert (=> bs!831679 (= lambda!167524 lambda!167515)))

(declare-fun bs!831680 () Bool)

(assert (= bs!831680 (and d!1377091 d!1377029)))

(assert (=> bs!831680 (= lambda!167524 lambda!167500)))

(declare-fun bs!831681 () Bool)

(assert (= bs!831681 (and d!1377091 d!1377083)))

(assert (=> bs!831681 (not (= lambda!167524 lambda!167521))))

(assert (=> d!1377091 (contains!13162 lm!1477 (hash!2645 hashF!1107 key!3287))))

(declare-fun lt!1675843 () Unit!90944)

(declare-fun choose!28986 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> d!1377091 (= lt!1675843 (choose!28986 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1377091 (forall!10145 (toList!4235 lm!1477) lambda!167524)))

(assert (=> d!1377091 (= (lemmaInGenMapThenLongMapContainsHash!188 lm!1477 key!3287 hashF!1107) lt!1675843)))

(declare-fun bs!831682 () Bool)

(assert (= bs!831682 d!1377091))

(assert (=> bs!831682 m!5217867))

(assert (=> bs!831682 m!5217867))

(declare-fun m!5218257 () Bool)

(assert (=> bs!831682 m!5218257))

(declare-fun m!5218259 () Bool)

(assert (=> bs!831682 m!5218259))

(declare-fun m!5218261 () Bool)

(assert (=> bs!831682 m!5218261))

(assert (=> b!4492437 d!1377091))

(declare-fun d!1377093 () Bool)

(declare-fun lt!1675846 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8225 (List!50635) (InoxSet tuple2!50892))

(assert (=> d!1377093 (= lt!1675846 (select (content!8225 (toList!4235 lm!1477)) lt!1675669))))

(declare-fun e!2798415 () Bool)

(assert (=> d!1377093 (= lt!1675846 e!2798415)))

(declare-fun res!1867173 () Bool)

(assert (=> d!1377093 (=> (not res!1867173) (not e!2798415))))

(assert (=> d!1377093 (= res!1867173 ((_ is Cons!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377093 (= (contains!13163 (toList!4235 lm!1477) lt!1675669) lt!1675846)))

(declare-fun b!4492680 () Bool)

(declare-fun e!2798414 () Bool)

(assert (=> b!4492680 (= e!2798415 e!2798414)))

(declare-fun res!1867172 () Bool)

(assert (=> b!4492680 (=> res!1867172 e!2798414)))

(assert (=> b!4492680 (= res!1867172 (= (h!56320 (toList!4235 lm!1477)) lt!1675669))))

(declare-fun b!4492681 () Bool)

(assert (=> b!4492681 (= e!2798414 (contains!13163 (t!357593 (toList!4235 lm!1477)) lt!1675669))))

(assert (= (and d!1377093 res!1867173) b!4492680))

(assert (= (and b!4492680 (not res!1867172)) b!4492681))

(declare-fun m!5218263 () Bool)

(assert (=> d!1377093 m!5218263))

(declare-fun m!5218265 () Bool)

(assert (=> d!1377093 m!5218265))

(assert (=> b!4492681 m!5217865))

(assert (=> b!4492437 d!1377093))

(declare-fun d!1377095 () Bool)

(assert (=> d!1377095 (contains!13163 (toList!4235 lm!1477) (tuple2!50893 hash!344 lt!1675668))))

(declare-fun lt!1675849 () Unit!90944)

(declare-fun choose!28987 (List!50635 (_ BitVec 64) List!50634) Unit!90944)

(assert (=> d!1377095 (= lt!1675849 (choose!28987 (toList!4235 lm!1477) hash!344 lt!1675668))))

(declare-fun e!2798418 () Bool)

(assert (=> d!1377095 e!2798418))

(declare-fun res!1867176 () Bool)

(assert (=> d!1377095 (=> (not res!1867176) (not e!2798418))))

(assert (=> d!1377095 (= res!1867176 (isStrictlySorted!387 (toList!4235 lm!1477)))))

(assert (=> d!1377095 (= (lemmaGetValueByKeyImpliesContainsTuple!626 (toList!4235 lm!1477) hash!344 lt!1675668) lt!1675849)))

(declare-fun b!4492684 () Bool)

(assert (=> b!4492684 (= e!2798418 (= (getValueByKey!1005 (toList!4235 lm!1477) hash!344) (Some!11024 lt!1675668)))))

(assert (= (and d!1377095 res!1867176) b!4492684))

(declare-fun m!5218267 () Bool)

(assert (=> d!1377095 m!5218267))

(declare-fun m!5218269 () Bool)

(assert (=> d!1377095 m!5218269))

(assert (=> d!1377095 m!5218247))

(declare-fun m!5218271 () Bool)

(assert (=> b!4492684 m!5218271))

(assert (=> b!4492437 d!1377095))

(declare-fun d!1377097 () Bool)

(assert (=> d!1377097 (dynLambda!21087 lambda!167477 lt!1675669)))

(declare-fun lt!1675852 () Unit!90944)

(declare-fun choose!28988 (List!50635 Int tuple2!50892) Unit!90944)

(assert (=> d!1377097 (= lt!1675852 (choose!28988 (toList!4235 lm!1477) lambda!167477 lt!1675669))))

(declare-fun e!2798421 () Bool)

(assert (=> d!1377097 e!2798421))

(declare-fun res!1867179 () Bool)

(assert (=> d!1377097 (=> (not res!1867179) (not e!2798421))))

(assert (=> d!1377097 (= res!1867179 (forall!10145 (toList!4235 lm!1477) lambda!167477))))

(assert (=> d!1377097 (= (forallContained!2401 (toList!4235 lm!1477) lambda!167477 lt!1675669) lt!1675852)))

(declare-fun b!4492687 () Bool)

(assert (=> b!4492687 (= e!2798421 (contains!13163 (toList!4235 lm!1477) lt!1675669))))

(assert (= (and d!1377097 res!1867179) b!4492687))

(declare-fun b_lambda!151651 () Bool)

(assert (=> (not b_lambda!151651) (not d!1377097)))

(declare-fun m!5218273 () Bool)

(assert (=> d!1377097 m!5218273))

(declare-fun m!5218275 () Bool)

(assert (=> d!1377097 m!5218275))

(assert (=> d!1377097 m!5217861))

(assert (=> b!4492687 m!5217891))

(assert (=> b!4492437 d!1377097))

(declare-fun b!4492698 () Bool)

(declare-fun e!2798426 () List!50634)

(assert (=> b!4492698 (= e!2798426 (Cons!50510 (h!56319 lt!1675668) (removePairForKey!741 (t!357592 lt!1675668) key!3287)))))

(declare-fun b!4492696 () Bool)

(declare-fun e!2798427 () List!50634)

(assert (=> b!4492696 (= e!2798427 (t!357592 lt!1675668))))

(declare-fun b!4492697 () Bool)

(assert (=> b!4492697 (= e!2798427 e!2798426)))

(declare-fun c!765329 () Bool)

(assert (=> b!4492697 (= c!765329 ((_ is Cons!50510) lt!1675668))))

(declare-fun d!1377099 () Bool)

(declare-fun lt!1675855 () List!50634)

(assert (=> d!1377099 (not (containsKey!1646 lt!1675855 key!3287))))

(assert (=> d!1377099 (= lt!1675855 e!2798427)))

(declare-fun c!765330 () Bool)

(assert (=> d!1377099 (= c!765330 (and ((_ is Cons!50510) lt!1675668) (= (_1!28739 (h!56319 lt!1675668)) key!3287)))))

(assert (=> d!1377099 (noDuplicateKeys!1114 lt!1675668)))

(assert (=> d!1377099 (= (removePairForKey!741 lt!1675668 key!3287) lt!1675855)))

(declare-fun b!4492699 () Bool)

(assert (=> b!4492699 (= e!2798426 Nil!50510)))

(assert (= (and d!1377099 c!765330) b!4492696))

(assert (= (and d!1377099 (not c!765330)) b!4492697))

(assert (= (and b!4492697 c!765329) b!4492698))

(assert (= (and b!4492697 (not c!765329)) b!4492699))

(declare-fun m!5218277 () Bool)

(assert (=> b!4492698 m!5218277))

(declare-fun m!5218279 () Bool)

(assert (=> d!1377099 m!5218279))

(declare-fun m!5218281 () Bool)

(assert (=> d!1377099 m!5218281))

(assert (=> b!4492437 d!1377099))

(declare-fun d!1377101 () Bool)

(assert (=> d!1377101 (= (apply!11851 lm!1477 hash!344) (get!16493 (getValueByKey!1005 (toList!4235 lm!1477) hash!344)))))

(declare-fun bs!831683 () Bool)

(assert (= bs!831683 d!1377101))

(assert (=> bs!831683 m!5218271))

(assert (=> bs!831683 m!5218271))

(declare-fun m!5218283 () Bool)

(assert (=> bs!831683 m!5218283))

(assert (=> b!4492437 d!1377101))

(declare-fun d!1377103 () Bool)

(declare-fun hash!2649 (Hashable!5509 K!11925) (_ BitVec 64))

(assert (=> d!1377103 (= (hash!2645 hashF!1107 key!3287) (hash!2649 hashF!1107 key!3287))))

(declare-fun bs!831684 () Bool)

(assert (= bs!831684 d!1377103))

(declare-fun m!5218285 () Bool)

(assert (=> bs!831684 m!5218285))

(assert (=> b!4492438 d!1377103))

(declare-fun d!1377105 () Bool)

(declare-fun lt!1675856 () Bool)

(assert (=> d!1377105 (= lt!1675856 (select (content!8225 (t!357593 (toList!4235 lm!1477))) lt!1675669))))

(declare-fun e!2798429 () Bool)

(assert (=> d!1377105 (= lt!1675856 e!2798429)))

(declare-fun res!1867181 () Bool)

(assert (=> d!1377105 (=> (not res!1867181) (not e!2798429))))

(assert (=> d!1377105 (= res!1867181 ((_ is Cons!50511) (t!357593 (toList!4235 lm!1477))))))

(assert (=> d!1377105 (= (contains!13163 (t!357593 (toList!4235 lm!1477)) lt!1675669) lt!1675856)))

(declare-fun b!4492700 () Bool)

(declare-fun e!2798428 () Bool)

(assert (=> b!4492700 (= e!2798429 e!2798428)))

(declare-fun res!1867180 () Bool)

(assert (=> b!4492700 (=> res!1867180 e!2798428)))

(assert (=> b!4492700 (= res!1867180 (= (h!56320 (t!357593 (toList!4235 lm!1477))) lt!1675669))))

(declare-fun b!4492701 () Bool)

(assert (=> b!4492701 (= e!2798428 (contains!13163 (t!357593 (t!357593 (toList!4235 lm!1477))) lt!1675669))))

(assert (= (and d!1377105 res!1867181) b!4492700))

(assert (= (and b!4492700 (not res!1867180)) b!4492701))

(declare-fun m!5218287 () Bool)

(assert (=> d!1377105 m!5218287))

(declare-fun m!5218289 () Bool)

(assert (=> d!1377105 m!5218289))

(declare-fun m!5218291 () Bool)

(assert (=> b!4492701 m!5218291))

(assert (=> b!4492441 d!1377105))

(declare-fun d!1377107 () Bool)

(declare-fun e!2798431 () Bool)

(assert (=> d!1377107 e!2798431))

(declare-fun res!1867182 () Bool)

(assert (=> d!1377107 (=> res!1867182 e!2798431)))

(declare-fun lt!1675859 () Bool)

(assert (=> d!1377107 (= res!1867182 (not lt!1675859))))

(declare-fun lt!1675860 () Bool)

(assert (=> d!1377107 (= lt!1675859 lt!1675860)))

(declare-fun lt!1675857 () Unit!90944)

(declare-fun e!2798430 () Unit!90944)

(assert (=> d!1377107 (= lt!1675857 e!2798430)))

(declare-fun c!765331 () Bool)

(assert (=> d!1377107 (= c!765331 lt!1675860)))

(assert (=> d!1377107 (= lt!1675860 (containsKey!1650 (toList!4235 lt!1675671) hash!344))))

(assert (=> d!1377107 (= (contains!13162 lt!1675671 hash!344) lt!1675859)))

(declare-fun b!4492702 () Bool)

(declare-fun lt!1675858 () Unit!90944)

(assert (=> b!4492702 (= e!2798430 lt!1675858)))

(assert (=> b!4492702 (= lt!1675858 (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lt!1675671) hash!344))))

(assert (=> b!4492702 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344))))

(declare-fun b!4492703 () Bool)

(declare-fun Unit!90961 () Unit!90944)

(assert (=> b!4492703 (= e!2798430 Unit!90961)))

(declare-fun b!4492704 () Bool)

(assert (=> b!4492704 (= e!2798431 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344)))))

(assert (= (and d!1377107 c!765331) b!4492702))

(assert (= (and d!1377107 (not c!765331)) b!4492703))

(assert (= (and d!1377107 (not res!1867182)) b!4492704))

(declare-fun m!5218293 () Bool)

(assert (=> d!1377107 m!5218293))

(declare-fun m!5218295 () Bool)

(assert (=> b!4492702 m!5218295))

(assert (=> b!4492702 m!5218237))

(assert (=> b!4492702 m!5218237))

(declare-fun m!5218297 () Bool)

(assert (=> b!4492702 m!5218297))

(assert (=> b!4492704 m!5218237))

(assert (=> b!4492704 m!5218237))

(assert (=> b!4492704 m!5218297))

(assert (=> b!4492431 d!1377107))

(declare-fun d!1377109 () Bool)

(declare-fun tail!7646 (List!50635) List!50635)

(assert (=> d!1377109 (= (tail!7644 lm!1477) (ListLongMap!2868 (tail!7646 (toList!4235 lm!1477))))))

(declare-fun bs!831685 () Bool)

(assert (= bs!831685 d!1377109))

(declare-fun m!5218299 () Bool)

(assert (=> bs!831685 m!5218299))

(assert (=> b!4492431 d!1377109))

(declare-fun d!1377111 () Bool)

(declare-fun e!2798434 () Bool)

(assert (=> d!1377111 e!2798434))

(declare-fun res!1867187 () Bool)

(assert (=> d!1377111 (=> (not res!1867187) (not e!2798434))))

(declare-fun lt!1675872 () ListLongMap!2867)

(assert (=> d!1377111 (= res!1867187 (contains!13162 lt!1675872 (_1!28740 (head!9322 lm!1477))))))

(declare-fun lt!1675870 () List!50635)

(assert (=> d!1377111 (= lt!1675872 (ListLongMap!2868 lt!1675870))))

(declare-fun lt!1675871 () Unit!90944)

(declare-fun lt!1675869 () Unit!90944)

(assert (=> d!1377111 (= lt!1675871 lt!1675869)))

(assert (=> d!1377111 (= (getValueByKey!1005 lt!1675870 (_1!28740 (head!9322 lm!1477))) (Some!11024 (_2!28740 (head!9322 lm!1477))))))

(declare-fun lemmaContainsTupThenGetReturnValue!622 (List!50635 (_ BitVec 64) List!50634) Unit!90944)

(assert (=> d!1377111 (= lt!1675869 (lemmaContainsTupThenGetReturnValue!622 lt!1675870 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))))))

(declare-fun insertStrictlySorted!364 (List!50635 (_ BitVec 64) List!50634) List!50635)

(assert (=> d!1377111 (= lt!1675870 (insertStrictlySorted!364 (toList!4235 lt!1675671) (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))))))

(assert (=> d!1377111 (= (+!1452 lt!1675671 (head!9322 lm!1477)) lt!1675872)))

(declare-fun b!4492709 () Bool)

(declare-fun res!1867188 () Bool)

(assert (=> b!4492709 (=> (not res!1867188) (not e!2798434))))

(assert (=> b!4492709 (= res!1867188 (= (getValueByKey!1005 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477))) (Some!11024 (_2!28740 (head!9322 lm!1477)))))))

(declare-fun b!4492710 () Bool)

(assert (=> b!4492710 (= e!2798434 (contains!13163 (toList!4235 lt!1675872) (head!9322 lm!1477)))))

(assert (= (and d!1377111 res!1867187) b!4492709))

(assert (= (and b!4492709 res!1867188) b!4492710))

(declare-fun m!5218301 () Bool)

(assert (=> d!1377111 m!5218301))

(declare-fun m!5218303 () Bool)

(assert (=> d!1377111 m!5218303))

(declare-fun m!5218305 () Bool)

(assert (=> d!1377111 m!5218305))

(declare-fun m!5218307 () Bool)

(assert (=> d!1377111 m!5218307))

(declare-fun m!5218309 () Bool)

(assert (=> b!4492709 m!5218309))

(assert (=> b!4492710 m!5217841))

(declare-fun m!5218311 () Bool)

(assert (=> b!4492710 m!5218311))

(assert (=> b!4492442 d!1377111))

(declare-fun d!1377113 () Bool)

(declare-fun content!8226 (List!50634) (InoxSet tuple2!50890))

(assert (=> d!1377113 (= (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))) lt!1675674) (= (content!8226 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (content!8226 (toList!4236 lt!1675674))))))

(declare-fun bs!831686 () Bool)

(assert (= bs!831686 d!1377113))

(declare-fun m!5218313 () Bool)

(assert (=> bs!831686 m!5218313))

(declare-fun m!5218315 () Bool)

(assert (=> bs!831686 m!5218315))

(assert (=> b!4492442 d!1377113))

(declare-fun d!1377115 () Bool)

(declare-fun e!2798437 () Bool)

(assert (=> d!1377115 e!2798437))

(declare-fun res!1867191 () Bool)

(assert (=> d!1377115 (=> (not res!1867191) (not e!2798437))))

(declare-fun lt!1675875 () ListMap!3497)

(assert (=> d!1377115 (= res!1867191 (not (contains!13161 lt!1675875 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!97 (List!50634 K!11925) List!50634)

(assert (=> d!1377115 (= lt!1675875 (ListMap!3498 (removePresrvNoDuplicatedKeys!97 (toList!4236 lt!1675673) key!3287)))))

(assert (=> d!1377115 (= (-!340 lt!1675673 key!3287) lt!1675875)))

(declare-fun b!4492713 () Bool)

(declare-fun content!8227 (List!50637) (InoxSet K!11925))

(assert (=> b!4492713 (= e!2798437 (= ((_ map and) (content!8227 (keys!17502 lt!1675673)) ((_ map not) (store ((as const (Array K!11925 Bool)) false) key!3287 true))) (content!8227 (keys!17502 lt!1675875))))))

(assert (= (and d!1377115 res!1867191) b!4492713))

(declare-fun m!5218317 () Bool)

(assert (=> d!1377115 m!5218317))

(declare-fun m!5218319 () Bool)

(assert (=> d!1377115 m!5218319))

(assert (=> b!4492713 m!5218117))

(declare-fun m!5218321 () Bool)

(assert (=> b!4492713 m!5218321))

(declare-fun m!5218323 () Bool)

(assert (=> b!4492713 m!5218323))

(declare-fun m!5218325 () Bool)

(assert (=> b!4492713 m!5218325))

(assert (=> b!4492713 m!5218117))

(assert (=> b!4492713 m!5218323))

(declare-fun m!5218327 () Bool)

(assert (=> b!4492713 m!5218327))

(assert (=> b!4492442 d!1377115))

(declare-fun d!1377117 () Bool)

(declare-fun head!9324 (List!50635) tuple2!50892)

(assert (=> d!1377117 (= (head!9322 lm!1477) (head!9324 (toList!4235 lm!1477)))))

(declare-fun bs!831687 () Bool)

(assert (= bs!831687 d!1377117))

(declare-fun m!5218329 () Bool)

(assert (=> bs!831687 m!5218329))

(assert (=> b!4492442 d!1377117))

(declare-fun d!1377119 () Bool)

(declare-fun e!2798438 () Bool)

(assert (=> d!1377119 e!2798438))

(declare-fun res!1867192 () Bool)

(assert (=> d!1377119 (=> (not res!1867192) (not e!2798438))))

(declare-fun lt!1675879 () ListLongMap!2867)

(assert (=> d!1377119 (= res!1867192 (contains!13162 lt!1675879 (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun lt!1675877 () List!50635)

(assert (=> d!1377119 (= lt!1675879 (ListLongMap!2868 lt!1675877))))

(declare-fun lt!1675878 () Unit!90944)

(declare-fun lt!1675876 () Unit!90944)

(assert (=> d!1377119 (= lt!1675878 lt!1675876)))

(assert (=> d!1377119 (= (getValueByKey!1005 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178))) (Some!11024 (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(assert (=> d!1377119 (= lt!1675876 (lemmaContainsTupThenGetReturnValue!622 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(assert (=> d!1377119 (= lt!1675877 (insertStrictlySorted!364 (toList!4235 lt!1675671) (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(assert (=> d!1377119 (= (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)) lt!1675879)))

(declare-fun b!4492714 () Bool)

(declare-fun res!1867193 () Bool)

(assert (=> b!4492714 (=> (not res!1867193) (not e!2798438))))

(assert (=> b!4492714 (= res!1867193 (= (getValueByKey!1005 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178))) (Some!11024 (_2!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(declare-fun b!4492715 () Bool)

(assert (=> b!4492715 (= e!2798438 (contains!13163 (toList!4235 lt!1675879) (tuple2!50893 hash!344 newBucket!178)))))

(assert (= (and d!1377119 res!1867192) b!4492714))

(assert (= (and b!4492714 res!1867193) b!4492715))

(declare-fun m!5218331 () Bool)

(assert (=> d!1377119 m!5218331))

(declare-fun m!5218333 () Bool)

(assert (=> d!1377119 m!5218333))

(declare-fun m!5218335 () Bool)

(assert (=> d!1377119 m!5218335))

(declare-fun m!5218337 () Bool)

(assert (=> d!1377119 m!5218337))

(declare-fun m!5218339 () Bool)

(assert (=> b!4492714 m!5218339))

(declare-fun m!5218341 () Bool)

(assert (=> b!4492715 m!5218341))

(assert (=> b!4492442 d!1377119))

(declare-fun bs!831688 () Bool)

(declare-fun d!1377121 () Bool)

(assert (= bs!831688 (and d!1377121 d!1376987)))

(declare-fun lambda!167525 () Int)

(assert (=> bs!831688 (= lambda!167525 lambda!167487)))

(declare-fun bs!831689 () Bool)

(assert (= bs!831689 (and d!1377121 d!1377091)))

(assert (=> bs!831689 (= lambda!167525 lambda!167524)))

(declare-fun bs!831690 () Bool)

(assert (= bs!831690 (and d!1377121 start!442860)))

(assert (=> bs!831690 (= lambda!167525 lambda!167477)))

(declare-fun bs!831691 () Bool)

(assert (= bs!831691 (and d!1377121 d!1377051)))

(assert (=> bs!831691 (= lambda!167525 lambda!167503)))

(declare-fun bs!831692 () Bool)

(assert (= bs!831692 (and d!1377121 d!1377053)))

(assert (=> bs!831692 (= lambda!167525 lambda!167515)))

(declare-fun bs!831693 () Bool)

(assert (= bs!831693 (and d!1377121 d!1377029)))

(assert (=> bs!831693 (= lambda!167525 lambda!167500)))

(declare-fun bs!831694 () Bool)

(assert (= bs!831694 (and d!1377121 d!1377083)))

(assert (=> bs!831694 (not (= lambda!167525 lambda!167521))))

(declare-fun lt!1675880 () ListMap!3497)

(assert (=> d!1377121 (invariantList!973 (toList!4236 lt!1675880))))

(declare-fun e!2798439 () ListMap!3497)

(assert (=> d!1377121 (= lt!1675880 e!2798439)))

(declare-fun c!765332 () Bool)

(assert (=> d!1377121 (= c!765332 ((_ is Cons!50511) (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))

(assert (=> d!1377121 (forall!10145 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))) lambda!167525)))

(assert (=> d!1377121 (= (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))) lt!1675880)))

(declare-fun b!4492716 () Bool)

(assert (=> b!4492716 (= e!2798439 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))

(declare-fun b!4492717 () Bool)

(assert (=> b!4492717 (= e!2798439 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377121 c!765332) b!4492716))

(assert (= (and d!1377121 (not c!765332)) b!4492717))

(declare-fun m!5218343 () Bool)

(assert (=> d!1377121 m!5218343))

(declare-fun m!5218345 () Bool)

(assert (=> d!1377121 m!5218345))

(declare-fun m!5218347 () Bool)

(assert (=> b!4492716 m!5218347))

(assert (=> b!4492716 m!5218347))

(declare-fun m!5218349 () Bool)

(assert (=> b!4492716 m!5218349))

(assert (=> b!4492442 d!1377121))

(declare-fun bs!831695 () Bool)

(declare-fun d!1377123 () Bool)

(assert (= bs!831695 (and d!1377123 d!1376987)))

(declare-fun lambda!167528 () Int)

(assert (=> bs!831695 (= lambda!167528 lambda!167487)))

(declare-fun bs!831696 () Bool)

(assert (= bs!831696 (and d!1377123 d!1377091)))

(assert (=> bs!831696 (= lambda!167528 lambda!167524)))

(declare-fun bs!831697 () Bool)

(assert (= bs!831697 (and d!1377123 d!1377121)))

(assert (=> bs!831697 (= lambda!167528 lambda!167525)))

(declare-fun bs!831698 () Bool)

(assert (= bs!831698 (and d!1377123 start!442860)))

(assert (=> bs!831698 (= lambda!167528 lambda!167477)))

(declare-fun bs!831699 () Bool)

(assert (= bs!831699 (and d!1377123 d!1377051)))

(assert (=> bs!831699 (= lambda!167528 lambda!167503)))

(declare-fun bs!831700 () Bool)

(assert (= bs!831700 (and d!1377123 d!1377053)))

(assert (=> bs!831700 (= lambda!167528 lambda!167515)))

(declare-fun bs!831701 () Bool)

(assert (= bs!831701 (and d!1377123 d!1377029)))

(assert (=> bs!831701 (= lambda!167528 lambda!167500)))

(declare-fun bs!831702 () Bool)

(assert (= bs!831702 (and d!1377123 d!1377083)))

(assert (=> bs!831702 (not (= lambda!167528 lambda!167521))))

(assert (=> d!1377123 (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) (-!340 (extractMap!1170 (toList!4235 lt!1675671)) key!3287))))

(declare-fun lt!1675883 () Unit!90944)

(declare-fun choose!28989 (ListLongMap!2867 (_ BitVec 64) List!50634 K!11925 Hashable!5509) Unit!90944)

(assert (=> d!1377123 (= lt!1675883 (choose!28989 lt!1675671 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1377123 (forall!10145 (toList!4235 lt!1675671) lambda!167528)))

(assert (=> d!1377123 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!99 lt!1675671 hash!344 newBucket!178 key!3287 hashF!1107) lt!1675883)))

(declare-fun bs!831703 () Bool)

(assert (= bs!831703 d!1377123))

(assert (=> bs!831703 m!5217847))

(assert (=> bs!831703 m!5217845))

(assert (=> bs!831703 m!5217881))

(declare-fun m!5218351 () Bool)

(assert (=> bs!831703 m!5218351))

(declare-fun m!5218353 () Bool)

(assert (=> bs!831703 m!5218353))

(assert (=> bs!831703 m!5217845))

(declare-fun m!5218355 () Bool)

(assert (=> bs!831703 m!5218355))

(declare-fun m!5218357 () Bool)

(assert (=> bs!831703 m!5218357))

(assert (=> bs!831703 m!5217881))

(assert (=> bs!831703 m!5218355))

(assert (=> b!4492442 d!1377123))

(declare-fun bs!831704 () Bool)

(declare-fun d!1377125 () Bool)

(assert (= bs!831704 (and d!1377125 d!1376987)))

(declare-fun lambda!167529 () Int)

(assert (=> bs!831704 (= lambda!167529 lambda!167487)))

(declare-fun bs!831705 () Bool)

(assert (= bs!831705 (and d!1377125 d!1377091)))

(assert (=> bs!831705 (= lambda!167529 lambda!167524)))

(declare-fun bs!831706 () Bool)

(assert (= bs!831706 (and d!1377125 d!1377121)))

(assert (=> bs!831706 (= lambda!167529 lambda!167525)))

(declare-fun bs!831707 () Bool)

(assert (= bs!831707 (and d!1377125 start!442860)))

(assert (=> bs!831707 (= lambda!167529 lambda!167477)))

(declare-fun bs!831708 () Bool)

(assert (= bs!831708 (and d!1377125 d!1377123)))

(assert (=> bs!831708 (= lambda!167529 lambda!167528)))

(declare-fun bs!831709 () Bool)

(assert (= bs!831709 (and d!1377125 d!1377051)))

(assert (=> bs!831709 (= lambda!167529 lambda!167503)))

(declare-fun bs!831710 () Bool)

(assert (= bs!831710 (and d!1377125 d!1377053)))

(assert (=> bs!831710 (= lambda!167529 lambda!167515)))

(declare-fun bs!831711 () Bool)

(assert (= bs!831711 (and d!1377125 d!1377029)))

(assert (=> bs!831711 (= lambda!167529 lambda!167500)))

(declare-fun bs!831712 () Bool)

(assert (= bs!831712 (and d!1377125 d!1377083)))

(assert (=> bs!831712 (not (= lambda!167529 lambda!167521))))

(declare-fun lt!1675884 () ListMap!3497)

(assert (=> d!1377125 (invariantList!973 (toList!4236 lt!1675884))))

(declare-fun e!2798440 () ListMap!3497)

(assert (=> d!1377125 (= lt!1675884 e!2798440)))

(declare-fun c!765333 () Bool)

(assert (=> d!1377125 (= c!765333 ((_ is Cons!50511) (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (=> d!1377125 (forall!10145 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))) lambda!167529)))

(assert (=> d!1377125 (= (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) lt!1675884)))

(declare-fun b!4492718 () Bool)

(assert (=> b!4492718 (= e!2798440 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))

(declare-fun b!4492719 () Bool)

(assert (=> b!4492719 (= e!2798440 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377125 c!765333) b!4492718))

(assert (= (and d!1377125 (not c!765333)) b!4492719))

(declare-fun m!5218359 () Bool)

(assert (=> d!1377125 m!5218359))

(declare-fun m!5218361 () Bool)

(assert (=> d!1377125 m!5218361))

(declare-fun m!5218363 () Bool)

(assert (=> b!4492718 m!5218363))

(assert (=> b!4492718 m!5218363))

(declare-fun m!5218365 () Bool)

(assert (=> b!4492718 m!5218365))

(assert (=> b!4492442 d!1377125))

(declare-fun d!1377127 () Bool)

(assert (=> d!1377127 (= (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) (-!340 lt!1675673 key!3287)) (= (content!8226 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (content!8226 (toList!4236 (-!340 lt!1675673 key!3287)))))))

(declare-fun bs!831713 () Bool)

(assert (= bs!831713 d!1377127))

(declare-fun m!5218367 () Bool)

(assert (=> bs!831713 m!5218367))

(declare-fun m!5218369 () Bool)

(assert (=> bs!831713 m!5218369))

(assert (=> b!4492442 d!1377127))

(declare-fun d!1377129 () Bool)

(declare-fun res!1867202 () Bool)

(declare-fun e!2798447 () Bool)

(assert (=> d!1377129 (=> res!1867202 e!2798447)))

(declare-fun e!2798449 () Bool)

(assert (=> d!1377129 (= res!1867202 e!2798449)))

(declare-fun res!1867201 () Bool)

(assert (=> d!1377129 (=> (not res!1867201) (not e!2798449))))

(assert (=> d!1377129 (= res!1867201 ((_ is Cons!50511) (t!357593 (toList!4235 lm!1477))))))

(assert (=> d!1377129 (= (containsKeyBiggerList!94 (t!357593 (toList!4235 lm!1477)) key!3287) e!2798447)))

(declare-fun b!4492726 () Bool)

(assert (=> b!4492726 (= e!2798449 (containsKey!1646 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-fun b!4492727 () Bool)

(declare-fun e!2798448 () Bool)

(assert (=> b!4492727 (= e!2798447 e!2798448)))

(declare-fun res!1867200 () Bool)

(assert (=> b!4492727 (=> (not res!1867200) (not e!2798448))))

(assert (=> b!4492727 (= res!1867200 ((_ is Cons!50511) (t!357593 (toList!4235 lm!1477))))))

(declare-fun b!4492728 () Bool)

(assert (=> b!4492728 (= e!2798448 (containsKeyBiggerList!94 (t!357593 (t!357593 (toList!4235 lm!1477))) key!3287))))

(assert (= (and d!1377129 res!1867201) b!4492726))

(assert (= (and d!1377129 (not res!1867202)) b!4492727))

(assert (= (and b!4492727 res!1867200) b!4492728))

(declare-fun m!5218371 () Bool)

(assert (=> b!4492726 m!5218371))

(declare-fun m!5218373 () Bool)

(assert (=> b!4492728 m!5218373))

(assert (=> b!4492429 d!1377129))

(declare-fun d!1377131 () Bool)

(declare-fun res!1867205 () Bool)

(declare-fun e!2798450 () Bool)

(assert (=> d!1377131 (=> res!1867205 e!2798450)))

(declare-fun e!2798452 () Bool)

(assert (=> d!1377131 (= res!1867205 e!2798452)))

(declare-fun res!1867204 () Bool)

(assert (=> d!1377131 (=> (not res!1867204) (not e!2798452))))

(assert (=> d!1377131 (= res!1867204 ((_ is Cons!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377131 (= (containsKeyBiggerList!94 (toList!4235 lt!1675671) key!3287) e!2798450)))

(declare-fun b!4492729 () Bool)

(assert (=> b!4492729 (= e!2798452 (containsKey!1646 (_2!28740 (h!56320 (toList!4235 lt!1675671))) key!3287))))

(declare-fun b!4492730 () Bool)

(declare-fun e!2798451 () Bool)

(assert (=> b!4492730 (= e!2798450 e!2798451)))

(declare-fun res!1867203 () Bool)

(assert (=> b!4492730 (=> (not res!1867203) (not e!2798451))))

(assert (=> b!4492730 (= res!1867203 ((_ is Cons!50511) (toList!4235 lt!1675671)))))

(declare-fun b!4492731 () Bool)

(assert (=> b!4492731 (= e!2798451 (containsKeyBiggerList!94 (t!357593 (toList!4235 lt!1675671)) key!3287))))

(assert (= (and d!1377131 res!1867204) b!4492729))

(assert (= (and d!1377131 (not res!1867205)) b!4492730))

(assert (= (and b!4492730 res!1867203) b!4492731))

(declare-fun m!5218375 () Bool)

(assert (=> b!4492729 m!5218375))

(declare-fun m!5218377 () Bool)

(assert (=> b!4492731 m!5218377))

(assert (=> b!4492429 d!1377131))

(declare-fun bs!831714 () Bool)

(declare-fun d!1377133 () Bool)

(assert (= bs!831714 (and d!1377133 d!1377125)))

(declare-fun lambda!167532 () Int)

(assert (=> bs!831714 (= lambda!167532 lambda!167529)))

(declare-fun bs!831715 () Bool)

(assert (= bs!831715 (and d!1377133 d!1376987)))

(assert (=> bs!831715 (= lambda!167532 lambda!167487)))

(declare-fun bs!831716 () Bool)

(assert (= bs!831716 (and d!1377133 d!1377091)))

(assert (=> bs!831716 (= lambda!167532 lambda!167524)))

(declare-fun bs!831717 () Bool)

(assert (= bs!831717 (and d!1377133 d!1377121)))

(assert (=> bs!831717 (= lambda!167532 lambda!167525)))

(declare-fun bs!831718 () Bool)

(assert (= bs!831718 (and d!1377133 start!442860)))

(assert (=> bs!831718 (= lambda!167532 lambda!167477)))

(declare-fun bs!831719 () Bool)

(assert (= bs!831719 (and d!1377133 d!1377123)))

(assert (=> bs!831719 (= lambda!167532 lambda!167528)))

(declare-fun bs!831720 () Bool)

(assert (= bs!831720 (and d!1377133 d!1377051)))

(assert (=> bs!831720 (= lambda!167532 lambda!167503)))

(declare-fun bs!831721 () Bool)

(assert (= bs!831721 (and d!1377133 d!1377053)))

(assert (=> bs!831721 (= lambda!167532 lambda!167515)))

(declare-fun bs!831722 () Bool)

(assert (= bs!831722 (and d!1377133 d!1377029)))

(assert (=> bs!831722 (= lambda!167532 lambda!167500)))

(declare-fun bs!831723 () Bool)

(assert (= bs!831723 (and d!1377133 d!1377083)))

(assert (=> bs!831723 (not (= lambda!167532 lambda!167521))))

(assert (=> d!1377133 (containsKeyBiggerList!94 (toList!4235 lt!1675671) key!3287)))

(declare-fun lt!1675887 () Unit!90944)

(declare-fun choose!28990 (ListLongMap!2867 K!11925 Hashable!5509) Unit!90944)

(assert (=> d!1377133 (= lt!1675887 (choose!28990 lt!1675671 key!3287 hashF!1107))))

(assert (=> d!1377133 (forall!10145 (toList!4235 lt!1675671) lambda!167532)))

(assert (=> d!1377133 (= (lemmaInLongMapThenContainsKeyBiggerList!30 lt!1675671 key!3287 hashF!1107) lt!1675887)))

(declare-fun bs!831724 () Bool)

(assert (= bs!831724 d!1377133))

(assert (=> bs!831724 m!5217833))

(declare-fun m!5218379 () Bool)

(assert (=> bs!831724 m!5218379))

(declare-fun m!5218381 () Bool)

(assert (=> bs!831724 m!5218381))

(assert (=> b!4492429 d!1377133))

(declare-fun d!1377135 () Bool)

(declare-fun isEmpty!28565 (List!50635) Bool)

(assert (=> d!1377135 (= (isEmpty!28563 lm!1477) (isEmpty!28565 (toList!4235 lm!1477)))))

(declare-fun bs!831725 () Bool)

(assert (= bs!831725 d!1377135))

(declare-fun m!5218383 () Bool)

(assert (=> bs!831725 m!5218383))

(assert (=> b!4492440 d!1377135))

(declare-fun d!1377137 () Bool)

(declare-fun e!2798455 () Bool)

(assert (=> d!1377137 e!2798455))

(declare-fun res!1867207 () Bool)

(assert (=> d!1377137 (=> res!1867207 e!2798455)))

(declare-fun e!2798453 () Bool)

(assert (=> d!1377137 (= res!1867207 e!2798453)))

(declare-fun res!1867206 () Bool)

(assert (=> d!1377137 (=> (not res!1867206) (not e!2798453))))

(declare-fun lt!1675895 () Bool)

(assert (=> d!1377137 (= res!1867206 (not lt!1675895))))

(declare-fun lt!1675889 () Bool)

(assert (=> d!1377137 (= lt!1675895 lt!1675889)))

(declare-fun lt!1675888 () Unit!90944)

(declare-fun e!2798458 () Unit!90944)

(assert (=> d!1377137 (= lt!1675888 e!2798458)))

(declare-fun c!765334 () Bool)

(assert (=> d!1377137 (= c!765334 lt!1675889)))

(assert (=> d!1377137 (= lt!1675889 (containsKey!1649 (toList!4236 lt!1675674) key!3287))))

(assert (=> d!1377137 (= (contains!13161 lt!1675674 key!3287) lt!1675895)))

(declare-fun b!4492732 () Bool)

(assert (=> b!4492732 false))

(declare-fun lt!1675891 () Unit!90944)

(declare-fun lt!1675892 () Unit!90944)

(assert (=> b!4492732 (= lt!1675891 lt!1675892)))

(assert (=> b!4492732 (containsKey!1649 (toList!4236 lt!1675674) key!3287)))

(assert (=> b!4492732 (= lt!1675892 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 lt!1675674) key!3287))))

(declare-fun e!2798454 () Unit!90944)

(declare-fun Unit!90962 () Unit!90944)

(assert (=> b!4492732 (= e!2798454 Unit!90962)))

(declare-fun b!4492733 () Bool)

(declare-fun e!2798456 () List!50637)

(assert (=> b!4492733 (= e!2798456 (keys!17502 lt!1675674))))

(declare-fun b!4492734 () Bool)

(declare-fun Unit!90963 () Unit!90944)

(assert (=> b!4492734 (= e!2798454 Unit!90963)))

(declare-fun b!4492735 () Bool)

(assert (=> b!4492735 (= e!2798456 (getKeysList!421 (toList!4236 lt!1675674)))))

(declare-fun b!4492736 () Bool)

(assert (=> b!4492736 (= e!2798458 e!2798454)))

(declare-fun c!765335 () Bool)

(declare-fun call!312591 () Bool)

(assert (=> b!4492736 (= c!765335 call!312591)))

(declare-fun b!4492737 () Bool)

(assert (=> b!4492737 (= e!2798453 (not (contains!13165 (keys!17502 lt!1675674) key!3287)))))

(declare-fun b!4492738 () Bool)

(declare-fun e!2798457 () Bool)

(assert (=> b!4492738 (= e!2798457 (contains!13165 (keys!17502 lt!1675674) key!3287))))

(declare-fun b!4492739 () Bool)

(declare-fun lt!1675893 () Unit!90944)

(assert (=> b!4492739 (= e!2798458 lt!1675893)))

(declare-fun lt!1675890 () Unit!90944)

(assert (=> b!4492739 (= lt!1675890 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675674) key!3287))))

(assert (=> b!4492739 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675674) key!3287))))

(declare-fun lt!1675894 () Unit!90944)

(assert (=> b!4492739 (= lt!1675894 lt!1675890)))

(assert (=> b!4492739 (= lt!1675893 (lemmaInListThenGetKeysListContains!417 (toList!4236 lt!1675674) key!3287))))

(assert (=> b!4492739 call!312591))

(declare-fun bm!312586 () Bool)

(assert (=> bm!312586 (= call!312591 (contains!13165 e!2798456 key!3287))))

(declare-fun c!765336 () Bool)

(assert (=> bm!312586 (= c!765336 c!765334)))

(declare-fun b!4492740 () Bool)

(assert (=> b!4492740 (= e!2798455 e!2798457)))

(declare-fun res!1867208 () Bool)

(assert (=> b!4492740 (=> (not res!1867208) (not e!2798457))))

(assert (=> b!4492740 (= res!1867208 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675674) key!3287)))))

(assert (= (and d!1377137 c!765334) b!4492739))

(assert (= (and d!1377137 (not c!765334)) b!4492736))

(assert (= (and b!4492736 c!765335) b!4492732))

(assert (= (and b!4492736 (not c!765335)) b!4492734))

(assert (= (or b!4492739 b!4492736) bm!312586))

(assert (= (and bm!312586 c!765336) b!4492735))

(assert (= (and bm!312586 (not c!765336)) b!4492733))

(assert (= (and d!1377137 res!1867206) b!4492737))

(assert (= (and d!1377137 (not res!1867207)) b!4492740))

(assert (= (and b!4492740 res!1867208) b!4492738))

(declare-fun m!5218385 () Bool)

(assert (=> b!4492735 m!5218385))

(declare-fun m!5218387 () Bool)

(assert (=> b!4492733 m!5218387))

(declare-fun m!5218389 () Bool)

(assert (=> b!4492732 m!5218389))

(declare-fun m!5218391 () Bool)

(assert (=> b!4492732 m!5218391))

(declare-fun m!5218393 () Bool)

(assert (=> b!4492740 m!5218393))

(assert (=> b!4492740 m!5218393))

(declare-fun m!5218395 () Bool)

(assert (=> b!4492740 m!5218395))

(assert (=> d!1377137 m!5218389))

(assert (=> b!4492738 m!5218387))

(assert (=> b!4492738 m!5218387))

(declare-fun m!5218397 () Bool)

(assert (=> b!4492738 m!5218397))

(declare-fun m!5218399 () Bool)

(assert (=> bm!312586 m!5218399))

(assert (=> b!4492737 m!5218387))

(assert (=> b!4492737 m!5218387))

(assert (=> b!4492737 m!5218397))

(declare-fun m!5218401 () Bool)

(assert (=> b!4492739 m!5218401))

(assert (=> b!4492739 m!5218393))

(assert (=> b!4492739 m!5218393))

(assert (=> b!4492739 m!5218395))

(declare-fun m!5218403 () Bool)

(assert (=> b!4492739 m!5218403))

(assert (=> b!4492430 d!1377137))

(declare-fun bs!831726 () Bool)

(declare-fun d!1377139 () Bool)

(assert (= bs!831726 (and d!1377139 d!1376987)))

(declare-fun lambda!167533 () Int)

(assert (=> bs!831726 (= lambda!167533 lambda!167487)))

(declare-fun bs!831727 () Bool)

(assert (= bs!831727 (and d!1377139 d!1377091)))

(assert (=> bs!831727 (= lambda!167533 lambda!167524)))

(declare-fun bs!831728 () Bool)

(assert (= bs!831728 (and d!1377139 d!1377121)))

(assert (=> bs!831728 (= lambda!167533 lambda!167525)))

(declare-fun bs!831729 () Bool)

(assert (= bs!831729 (and d!1377139 start!442860)))

(assert (=> bs!831729 (= lambda!167533 lambda!167477)))

(declare-fun bs!831730 () Bool)

(assert (= bs!831730 (and d!1377139 d!1377123)))

(assert (=> bs!831730 (= lambda!167533 lambda!167528)))

(declare-fun bs!831731 () Bool)

(assert (= bs!831731 (and d!1377139 d!1377051)))

(assert (=> bs!831731 (= lambda!167533 lambda!167503)))

(declare-fun bs!831732 () Bool)

(assert (= bs!831732 (and d!1377139 d!1377053)))

(assert (=> bs!831732 (= lambda!167533 lambda!167515)))

(declare-fun bs!831733 () Bool)

(assert (= bs!831733 (and d!1377139 d!1377029)))

(assert (=> bs!831733 (= lambda!167533 lambda!167500)))

(declare-fun bs!831734 () Bool)

(assert (= bs!831734 (and d!1377139 d!1377083)))

(assert (=> bs!831734 (not (= lambda!167533 lambda!167521))))

(declare-fun bs!831735 () Bool)

(assert (= bs!831735 (and d!1377139 d!1377125)))

(assert (=> bs!831735 (= lambda!167533 lambda!167529)))

(declare-fun bs!831736 () Bool)

(assert (= bs!831736 (and d!1377139 d!1377133)))

(assert (=> bs!831736 (= lambda!167533 lambda!167532)))

(declare-fun lt!1675896 () ListMap!3497)

(assert (=> d!1377139 (invariantList!973 (toList!4236 lt!1675896))))

(declare-fun e!2798459 () ListMap!3497)

(assert (=> d!1377139 (= lt!1675896 e!2798459)))

(declare-fun c!765337 () Bool)

(assert (=> d!1377139 (= c!765337 ((_ is Cons!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377139 (forall!10145 (toList!4235 lm!1477) lambda!167533)))

(assert (=> d!1377139 (= (extractMap!1170 (toList!4235 lm!1477)) lt!1675896)))

(declare-fun b!4492741 () Bool)

(assert (=> b!4492741 (= e!2798459 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4492742 () Bool)

(assert (=> b!4492742 (= e!2798459 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377139 c!765337) b!4492741))

(assert (= (and d!1377139 (not c!765337)) b!4492742))

(declare-fun m!5218405 () Bool)

(assert (=> d!1377139 m!5218405))

(declare-fun m!5218407 () Bool)

(assert (=> d!1377139 m!5218407))

(assert (=> b!4492741 m!5217877))

(assert (=> b!4492741 m!5217877))

(declare-fun m!5218409 () Bool)

(assert (=> b!4492741 m!5218409))

(assert (=> b!4492430 d!1377139))

(declare-fun b!4492747 () Bool)

(declare-fun e!2798462 () Bool)

(declare-fun tp!1337299 () Bool)

(assert (=> b!4492747 (= e!2798462 (and tp_is_empty!27733 tp_is_empty!27735 tp!1337299))))

(assert (=> b!4492428 (= tp!1337287 e!2798462)))

(assert (= (and b!4492428 ((_ is Cons!50510) (t!357592 newBucket!178))) b!4492747))

(declare-fun b!4492752 () Bool)

(declare-fun e!2798465 () Bool)

(declare-fun tp!1337304 () Bool)

(declare-fun tp!1337305 () Bool)

(assert (=> b!4492752 (= e!2798465 (and tp!1337304 tp!1337305))))

(assert (=> b!4492427 (= tp!1337286 e!2798465)))

(assert (= (and b!4492427 ((_ is Cons!50511) (toList!4235 lm!1477))) b!4492752))

(declare-fun b_lambda!151653 () Bool)

(assert (= b_lambda!151651 (or start!442860 b_lambda!151653)))

(declare-fun bs!831737 () Bool)

(declare-fun d!1377141 () Bool)

(assert (= bs!831737 (and d!1377141 start!442860)))

(assert (=> bs!831737 (= (dynLambda!21087 lambda!167477 lt!1675669) (noDuplicateKeys!1114 (_2!28740 lt!1675669)))))

(declare-fun m!5218411 () Bool)

(assert (=> bs!831737 m!5218411))

(assert (=> d!1377097 d!1377141))

(declare-fun b_lambda!151655 () Bool)

(assert (= b_lambda!151649 (or start!442860 b_lambda!151655)))

(declare-fun bs!831738 () Bool)

(declare-fun d!1377143 () Bool)

(assert (= bs!831738 (and d!1377143 start!442860)))

(assert (=> bs!831738 (= (dynLambda!21087 lambda!167477 (h!56320 (toList!4235 lm!1477))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(declare-fun m!5218413 () Bool)

(assert (=> bs!831738 m!5218413))

(assert (=> b!4492665 d!1377143))

(check-sat (not b!4492738) (not d!1377105) (not b!4492675) (not b!4492666) (not b!4492735) (not d!1377109) (not d!1377111) (not d!1377127) (not d!1377007) (not d!1377083) (not b!4492733) (not d!1377087) (not d!1377119) (not b!4492715) (not b!4492737) (not b!4492714) (not d!1377123) (not b!4492740) (not d!1377093) (not d!1377113) (not b!4492600) (not b!4492585) (not b_lambda!151653) (not b!4492529) (not b_lambda!151655) (not b!4492673) (not d!1377095) (not d!1377079) (not b!4492698) (not d!1377107) (not d!1377139) (not b!4492521) (not bs!831738) (not b!4492522) (not b!4492527) (not b!4492710) (not d!1377135) (not d!1377029) (not b!4492747) (not d!1377133) (not d!1377117) (not b!4492654) (not d!1377097) (not b!4492739) (not b!4492610) (not b!4492687) (not d!1377081) (not b!4492473) (not d!1377051) (not d!1377089) (not b!4492704) tp_is_empty!27735 (not d!1377045) (not d!1377121) (not d!1376987) (not b!4492731) (not b!4492603) (not b!4492709) (not b!4492702) (not b!4492595) (not b!4492602) (not b!4492526) (not d!1377115) (not b!4492741) (not d!1377091) (not d!1377103) (not bm!312579) (not b!4492601) (not b!4492528) (not b!4492728) (not b!4492726) (not bm!312583) (not d!1377053) (not bm!312586) (not b!4492713) (not b!4492752) (not b!4492681) (not b!4492598) (not b!4492684) (not b!4492718) tp_is_empty!27733 (not d!1377099) (not b!4492653) (not b!4492729) (not d!1377125) (not b!4492716) (not b!4492524) (not b!4492732) (not b!4492596) (not d!1377137) (not b!4492701) (not bs!831737) (not d!1377101))
(check-sat)
(get-model)

(declare-fun b!4492779 () Bool)

(declare-fun e!2798480 () List!50634)

(assert (=> b!4492779 (= e!2798480 (Cons!50510 (h!56319 (t!357592 lt!1675668)) (removePairForKey!741 (t!357592 (t!357592 lt!1675668)) key!3287)))))

(declare-fun b!4492777 () Bool)

(declare-fun e!2798481 () List!50634)

(assert (=> b!4492777 (= e!2798481 (t!357592 (t!357592 lt!1675668)))))

(declare-fun b!4492778 () Bool)

(assert (=> b!4492778 (= e!2798481 e!2798480)))

(declare-fun c!765338 () Bool)

(assert (=> b!4492778 (= c!765338 ((_ is Cons!50510) (t!357592 lt!1675668)))))

(declare-fun d!1377157 () Bool)

(declare-fun lt!1675905 () List!50634)

(assert (=> d!1377157 (not (containsKey!1646 lt!1675905 key!3287))))

(assert (=> d!1377157 (= lt!1675905 e!2798481)))

(declare-fun c!765339 () Bool)

(assert (=> d!1377157 (= c!765339 (and ((_ is Cons!50510) (t!357592 lt!1675668)) (= (_1!28739 (h!56319 (t!357592 lt!1675668))) key!3287)))))

(assert (=> d!1377157 (noDuplicateKeys!1114 (t!357592 lt!1675668))))

(assert (=> d!1377157 (= (removePairForKey!741 (t!357592 lt!1675668) key!3287) lt!1675905)))

(declare-fun b!4492780 () Bool)

(assert (=> b!4492780 (= e!2798480 Nil!50510)))

(assert (= (and d!1377157 c!765339) b!4492777))

(assert (= (and d!1377157 (not c!765339)) b!4492778))

(assert (= (and b!4492778 c!765338) b!4492779))

(assert (= (and b!4492778 (not c!765338)) b!4492780))

(declare-fun m!5218447 () Bool)

(assert (=> b!4492779 m!5218447))

(declare-fun m!5218453 () Bool)

(assert (=> d!1377157 m!5218453))

(declare-fun m!5218457 () Bool)

(assert (=> d!1377157 m!5218457))

(assert (=> b!4492698 d!1377157))

(declare-fun d!1377159 () Bool)

(declare-fun isEmpty!28566 (Option!11024) Bool)

(assert (=> d!1377159 (= (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287)) (not (isEmpty!28566 (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))))

(declare-fun bs!831742 () Bool)

(assert (= bs!831742 d!1377159))

(assert (=> bs!831742 m!5218041))

(declare-fun m!5218467 () Bool)

(assert (=> bs!831742 m!5218467))

(assert (=> b!4492529 d!1377159))

(declare-fun b!4492795 () Bool)

(declare-fun e!2798491 () Option!11024)

(assert (=> b!4492795 (= e!2798491 (getValueByKey!1004 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(declare-fun b!4492793 () Bool)

(declare-fun e!2798490 () Option!11024)

(assert (=> b!4492793 (= e!2798490 (Some!11023 (_2!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun b!4492796 () Bool)

(assert (=> b!4492796 (= e!2798491 None!11023)))

(declare-fun d!1377163 () Bool)

(declare-fun c!765344 () Bool)

(assert (=> d!1377163 (= c!765344 (and ((_ is Cons!50510) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) key!3287)))))

(assert (=> d!1377163 (= (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) e!2798490)))

(declare-fun b!4492794 () Bool)

(assert (=> b!4492794 (= e!2798490 e!2798491)))

(declare-fun c!765345 () Bool)

(assert (=> b!4492794 (= c!765345 (and ((_ is Cons!50510) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (not (= (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) key!3287))))))

(assert (= (and d!1377163 c!765344) b!4492793))

(assert (= (and d!1377163 (not c!765344)) b!4492794))

(assert (= (and b!4492794 c!765345) b!4492795))

(assert (= (and b!4492794 (not c!765345)) b!4492796))

(declare-fun m!5218469 () Bool)

(assert (=> b!4492795 m!5218469))

(assert (=> b!4492529 d!1377163))

(declare-fun d!1377165 () Bool)

(assert (=> d!1377165 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675674) key!3287))))

(declare-fun lt!1675909 () Unit!90944)

(declare-fun choose!28991 (List!50634 K!11925) Unit!90944)

(assert (=> d!1377165 (= lt!1675909 (choose!28991 (toList!4236 lt!1675674) key!3287))))

(assert (=> d!1377165 (invariantList!973 (toList!4236 lt!1675674))))

(assert (=> d!1377165 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675674) key!3287) lt!1675909)))

(declare-fun bs!831743 () Bool)

(assert (= bs!831743 d!1377165))

(assert (=> bs!831743 m!5218393))

(assert (=> bs!831743 m!5218393))

(assert (=> bs!831743 m!5218395))

(declare-fun m!5218483 () Bool)

(assert (=> bs!831743 m!5218483))

(declare-fun m!5218485 () Bool)

(assert (=> bs!831743 m!5218485))

(assert (=> b!4492739 d!1377165))

(declare-fun d!1377173 () Bool)

(assert (=> d!1377173 (= (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675674) key!3287)) (not (isEmpty!28566 (getValueByKey!1004 (toList!4236 lt!1675674) key!3287))))))

(declare-fun bs!831744 () Bool)

(assert (= bs!831744 d!1377173))

(assert (=> bs!831744 m!5218393))

(declare-fun m!5218487 () Bool)

(assert (=> bs!831744 m!5218487))

(assert (=> b!4492739 d!1377173))

(declare-fun b!4492809 () Bool)

(declare-fun e!2798502 () Option!11024)

(assert (=> b!4492809 (= e!2798502 (getValueByKey!1004 (t!357592 (toList!4236 lt!1675674)) key!3287))))

(declare-fun b!4492807 () Bool)

(declare-fun e!2798501 () Option!11024)

(assert (=> b!4492807 (= e!2798501 (Some!11023 (_2!28739 (h!56319 (toList!4236 lt!1675674)))))))

(declare-fun b!4492810 () Bool)

(assert (=> b!4492810 (= e!2798502 None!11023)))

(declare-fun d!1377175 () Bool)

(declare-fun c!765347 () Bool)

(assert (=> d!1377175 (= c!765347 (and ((_ is Cons!50510) (toList!4236 lt!1675674)) (= (_1!28739 (h!56319 (toList!4236 lt!1675674))) key!3287)))))

(assert (=> d!1377175 (= (getValueByKey!1004 (toList!4236 lt!1675674) key!3287) e!2798501)))

(declare-fun b!4492808 () Bool)

(assert (=> b!4492808 (= e!2798501 e!2798502)))

(declare-fun c!765348 () Bool)

(assert (=> b!4492808 (= c!765348 (and ((_ is Cons!50510) (toList!4236 lt!1675674)) (not (= (_1!28739 (h!56319 (toList!4236 lt!1675674))) key!3287))))))

(assert (= (and d!1377175 c!765347) b!4492807))

(assert (= (and d!1377175 (not c!765347)) b!4492808))

(assert (= (and b!4492808 c!765348) b!4492809))

(assert (= (and b!4492808 (not c!765348)) b!4492810))

(declare-fun m!5218489 () Bool)

(assert (=> b!4492809 m!5218489))

(assert (=> b!4492739 d!1377175))

(declare-fun d!1377177 () Bool)

(assert (=> d!1377177 (contains!13165 (getKeysList!421 (toList!4236 lt!1675674)) key!3287)))

(declare-fun lt!1675916 () Unit!90944)

(declare-fun choose!28992 (List!50634 K!11925) Unit!90944)

(assert (=> d!1377177 (= lt!1675916 (choose!28992 (toList!4236 lt!1675674) key!3287))))

(assert (=> d!1377177 (invariantList!973 (toList!4236 lt!1675674))))

(assert (=> d!1377177 (= (lemmaInListThenGetKeysListContains!417 (toList!4236 lt!1675674) key!3287) lt!1675916)))

(declare-fun bs!831745 () Bool)

(assert (= bs!831745 d!1377177))

(assert (=> bs!831745 m!5218385))

(assert (=> bs!831745 m!5218385))

(declare-fun m!5218497 () Bool)

(assert (=> bs!831745 m!5218497))

(declare-fun m!5218499 () Bool)

(assert (=> bs!831745 m!5218499))

(assert (=> bs!831745 m!5218485))

(assert (=> b!4492739 d!1377177))

(declare-fun d!1377181 () Bool)

(declare-fun lt!1675917 () Bool)

(assert (=> d!1377181 (= lt!1675917 (select (content!8225 (toList!4235 lt!1675879)) (tuple2!50893 hash!344 newBucket!178)))))

(declare-fun e!2798508 () Bool)

(assert (=> d!1377181 (= lt!1675917 e!2798508)))

(declare-fun res!1867244 () Bool)

(assert (=> d!1377181 (=> (not res!1867244) (not e!2798508))))

(assert (=> d!1377181 (= res!1867244 ((_ is Cons!50511) (toList!4235 lt!1675879)))))

(assert (=> d!1377181 (= (contains!13163 (toList!4235 lt!1675879) (tuple2!50893 hash!344 newBucket!178)) lt!1675917)))

(declare-fun b!4492819 () Bool)

(declare-fun e!2798507 () Bool)

(assert (=> b!4492819 (= e!2798508 e!2798507)))

(declare-fun res!1867243 () Bool)

(assert (=> b!4492819 (=> res!1867243 e!2798507)))

(assert (=> b!4492819 (= res!1867243 (= (h!56320 (toList!4235 lt!1675879)) (tuple2!50893 hash!344 newBucket!178)))))

(declare-fun b!4492820 () Bool)

(assert (=> b!4492820 (= e!2798507 (contains!13163 (t!357593 (toList!4235 lt!1675879)) (tuple2!50893 hash!344 newBucket!178)))))

(assert (= (and d!1377181 res!1867244) b!4492819))

(assert (= (and b!4492819 (not res!1867243)) b!4492820))

(declare-fun m!5218501 () Bool)

(assert (=> d!1377181 m!5218501))

(declare-fun m!5218503 () Bool)

(assert (=> d!1377181 m!5218503))

(declare-fun m!5218505 () Bool)

(assert (=> b!4492820 m!5218505))

(assert (=> b!4492715 d!1377181))

(assert (=> b!4492740 d!1377173))

(assert (=> b!4492740 d!1377175))

(declare-fun d!1377183 () Bool)

(declare-fun res!1867249 () Bool)

(declare-fun e!2798513 () Bool)

(assert (=> d!1377183 (=> res!1867249 e!2798513)))

(assert (=> d!1377183 (= res!1867249 (and ((_ is Cons!50510) (toList!4236 lt!1675673)) (= (_1!28739 (h!56319 (toList!4236 lt!1675673))) key!3287)))))

(assert (=> d!1377183 (= (containsKey!1649 (toList!4236 lt!1675673) key!3287) e!2798513)))

(declare-fun b!4492825 () Bool)

(declare-fun e!2798514 () Bool)

(assert (=> b!4492825 (= e!2798513 e!2798514)))

(declare-fun res!1867250 () Bool)

(assert (=> b!4492825 (=> (not res!1867250) (not e!2798514))))

(assert (=> b!4492825 (= res!1867250 ((_ is Cons!50510) (toList!4236 lt!1675673)))))

(declare-fun b!4492826 () Bool)

(assert (=> b!4492826 (= e!2798514 (containsKey!1649 (t!357592 (toList!4236 lt!1675673)) key!3287))))

(assert (= (and d!1377183 (not res!1867249)) b!4492825))

(assert (= (and b!4492825 res!1867250) b!4492826))

(declare-fun m!5218507 () Bool)

(assert (=> b!4492826 m!5218507))

(assert (=> d!1377045 d!1377183))

(declare-fun d!1377185 () Bool)

(declare-fun e!2798517 () Bool)

(assert (=> d!1377185 e!2798517))

(declare-fun res!1867251 () Bool)

(assert (=> d!1377185 (=> (not res!1867251) (not e!2798517))))

(declare-fun lt!1675918 () ListMap!3497)

(assert (=> d!1377185 (= res!1867251 (not (contains!13161 lt!1675918 key!3287)))))

(assert (=> d!1377185 (= lt!1675918 (ListMap!3498 (removePresrvNoDuplicatedKeys!97 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287)))))

(assert (=> d!1377185 (= (-!340 (extractMap!1170 (toList!4235 lt!1675671)) key!3287) lt!1675918)))

(declare-fun b!4492831 () Bool)

(assert (=> b!4492831 (= e!2798517 (= ((_ map and) (content!8227 (keys!17502 (extractMap!1170 (toList!4235 lt!1675671)))) ((_ map not) (store ((as const (Array K!11925 Bool)) false) key!3287 true))) (content!8227 (keys!17502 lt!1675918))))))

(assert (= (and d!1377185 res!1867251) b!4492831))

(declare-fun m!5218509 () Bool)

(assert (=> d!1377185 m!5218509))

(declare-fun m!5218513 () Bool)

(assert (=> d!1377185 m!5218513))

(declare-fun m!5218515 () Bool)

(assert (=> b!4492831 m!5218515))

(declare-fun m!5218517 () Bool)

(assert (=> b!4492831 m!5218517))

(declare-fun m!5218519 () Bool)

(assert (=> b!4492831 m!5218519))

(assert (=> b!4492831 m!5218325))

(assert (=> b!4492831 m!5217881))

(assert (=> b!4492831 m!5218515))

(assert (=> b!4492831 m!5218519))

(declare-fun m!5218521 () Bool)

(assert (=> b!4492831 m!5218521))

(assert (=> d!1377123 d!1377185))

(assert (=> d!1377123 d!1377051))

(declare-fun d!1377189 () Bool)

(assert (=> d!1377189 (= (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) (-!340 (extractMap!1170 (toList!4235 lt!1675671)) key!3287)) (= (content!8226 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (content!8226 (toList!4236 (-!340 (extractMap!1170 (toList!4235 lt!1675671)) key!3287)))))))

(declare-fun bs!831746 () Bool)

(assert (= bs!831746 d!1377189))

(assert (=> bs!831746 m!5218367))

(declare-fun m!5218523 () Bool)

(assert (=> bs!831746 m!5218523))

(assert (=> d!1377123 d!1377189))

(assert (=> d!1377123 d!1377125))

(declare-fun d!1377191 () Bool)

(assert (=> d!1377191 (eq!571 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) (-!340 (extractMap!1170 (toList!4235 lt!1675671)) key!3287))))

(assert (=> d!1377191 true))

(declare-fun _$8!569 () Unit!90944)

(assert (=> d!1377191 (= (choose!28989 lt!1675671 hash!344 newBucket!178 key!3287 hashF!1107) _$8!569)))

(declare-fun bs!831747 () Bool)

(assert (= bs!831747 d!1377191))

(assert (=> bs!831747 m!5217845))

(assert (=> bs!831747 m!5218355))

(assert (=> bs!831747 m!5218357))

(assert (=> bs!831747 m!5217881))

(assert (=> bs!831747 m!5217881))

(assert (=> bs!831747 m!5218355))

(assert (=> bs!831747 m!5217845))

(assert (=> bs!831747 m!5217847))

(assert (=> d!1377123 d!1377191))

(assert (=> d!1377123 d!1377119))

(declare-fun d!1377195 () Bool)

(declare-fun res!1867258 () Bool)

(declare-fun e!2798521 () Bool)

(assert (=> d!1377195 (=> res!1867258 e!2798521)))

(assert (=> d!1377195 (= res!1867258 ((_ is Nil!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377195 (= (forall!10145 (toList!4235 lt!1675671) lambda!167528) e!2798521)))

(declare-fun b!4492838 () Bool)

(declare-fun e!2798522 () Bool)

(assert (=> b!4492838 (= e!2798521 e!2798522)))

(declare-fun res!1867259 () Bool)

(assert (=> b!4492838 (=> (not res!1867259) (not e!2798522))))

(assert (=> b!4492838 (= res!1867259 (dynLambda!21087 lambda!167528 (h!56320 (toList!4235 lt!1675671))))))

(declare-fun b!4492839 () Bool)

(assert (=> b!4492839 (= e!2798522 (forall!10145 (t!357593 (toList!4235 lt!1675671)) lambda!167528))))

(assert (= (and d!1377195 (not res!1867258)) b!4492838))

(assert (= (and b!4492838 res!1867259) b!4492839))

(declare-fun b_lambda!151659 () Bool)

(assert (=> (not b_lambda!151659) (not b!4492838)))

(declare-fun m!5218533 () Bool)

(assert (=> b!4492838 m!5218533))

(declare-fun m!5218535 () Bool)

(assert (=> b!4492839 m!5218535))

(assert (=> d!1377123 d!1377195))

(declare-fun b!4492867 () Bool)

(assert (=> b!4492867 true))

(declare-fun d!1377197 () Bool)

(declare-fun e!2798535 () Bool)

(assert (=> d!1377197 e!2798535))

(declare-fun res!1867271 () Bool)

(assert (=> d!1377197 (=> (not res!1867271) (not e!2798535))))

(declare-fun lt!1675926 () List!50637)

(declare-fun noDuplicate!720 (List!50637) Bool)

(assert (=> d!1377197 (= res!1867271 (noDuplicate!720 lt!1675926))))

(assert (=> d!1377197 (= lt!1675926 (getKeysList!421 (toList!4236 lt!1675673)))))

(assert (=> d!1377197 (= (keys!17502 lt!1675673) lt!1675926)))

(declare-fun b!4492866 () Bool)

(declare-fun res!1867270 () Bool)

(assert (=> b!4492866 (=> (not res!1867270) (not e!2798535))))

(declare-fun length!296 (List!50637) Int)

(declare-fun length!297 (List!50634) Int)

(assert (=> b!4492866 (= res!1867270 (= (length!296 lt!1675926) (length!297 (toList!4236 lt!1675673))))))

(declare-fun res!1867272 () Bool)

(assert (=> b!4492867 (=> (not res!1867272) (not e!2798535))))

(declare-fun lambda!167546 () Int)

(declare-fun forall!10149 (List!50637 Int) Bool)

(assert (=> b!4492867 (= res!1867272 (forall!10149 lt!1675926 lambda!167546))))

(declare-fun b!4492868 () Bool)

(declare-fun lambda!167547 () Int)

(declare-fun map!11088 (List!50634 Int) List!50637)

(assert (=> b!4492868 (= e!2798535 (= (content!8227 lt!1675926) (content!8227 (map!11088 (toList!4236 lt!1675673) lambda!167547))))))

(assert (= (and d!1377197 res!1867271) b!4492866))

(assert (= (and b!4492866 res!1867270) b!4492867))

(assert (= (and b!4492867 res!1867272) b!4492868))

(declare-fun m!5218537 () Bool)

(assert (=> d!1377197 m!5218537))

(assert (=> d!1377197 m!5218115))

(declare-fun m!5218539 () Bool)

(assert (=> b!4492866 m!5218539))

(declare-fun m!5218541 () Bool)

(assert (=> b!4492866 m!5218541))

(declare-fun m!5218543 () Bool)

(assert (=> b!4492867 m!5218543))

(declare-fun m!5218545 () Bool)

(assert (=> b!4492868 m!5218545))

(declare-fun m!5218547 () Bool)

(assert (=> b!4492868 m!5218547))

(assert (=> b!4492868 m!5218547))

(declare-fun m!5218549 () Bool)

(assert (=> b!4492868 m!5218549))

(assert (=> b!4492596 d!1377197))

(declare-fun d!1377199 () Bool)

(declare-fun lt!1675930 () Bool)

(assert (=> d!1377199 (= lt!1675930 (select (content!8227 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(declare-fun e!2798545 () Bool)

(assert (=> d!1377199 (= lt!1675930 e!2798545)))

(declare-fun res!1867280 () Bool)

(assert (=> d!1377199 (=> (not res!1867280) (not e!2798545))))

(assert (=> d!1377199 (= res!1867280 ((_ is Cons!50513) (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> d!1377199 (= (contains!13165 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) lt!1675930)))

(declare-fun b!4492885 () Bool)

(declare-fun e!2798546 () Bool)

(assert (=> b!4492885 (= e!2798545 e!2798546)))

(declare-fun res!1867279 () Bool)

(assert (=> b!4492885 (=> res!1867279 e!2798546)))

(assert (=> b!4492885 (= res!1867279 (= (h!56324 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(declare-fun b!4492886 () Bool)

(assert (=> b!4492886 (= e!2798546 (contains!13165 (t!357595 (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(assert (= (and d!1377199 res!1867280) b!4492885))

(assert (= (and b!4492885 (not res!1867279)) b!4492886))

(assert (=> d!1377199 m!5218035))

(declare-fun m!5218551 () Bool)

(assert (=> d!1377199 m!5218551))

(declare-fun m!5218553 () Bool)

(assert (=> d!1377199 m!5218553))

(declare-fun m!5218555 () Bool)

(assert (=> b!4492886 m!5218555))

(assert (=> b!4492526 d!1377199))

(declare-fun bs!831748 () Bool)

(declare-fun b!4492888 () Bool)

(assert (= bs!831748 (and b!4492888 b!4492867)))

(declare-fun lambda!167548 () Int)

(assert (=> bs!831748 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675673)) (= lambda!167548 lambda!167546))))

(assert (=> b!4492888 true))

(declare-fun bs!831749 () Bool)

(declare-fun b!4492889 () Bool)

(assert (= bs!831749 (and b!4492889 b!4492868)))

(declare-fun lambda!167549 () Int)

(assert (=> bs!831749 (= lambda!167549 lambda!167547)))

(declare-fun d!1377201 () Bool)

(declare-fun e!2798547 () Bool)

(assert (=> d!1377201 e!2798547))

(declare-fun res!1867282 () Bool)

(assert (=> d!1377201 (=> (not res!1867282) (not e!2798547))))

(declare-fun lt!1675931 () List!50637)

(assert (=> d!1377201 (= res!1867282 (noDuplicate!720 lt!1675931))))

(assert (=> d!1377201 (= lt!1675931 (getKeysList!421 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> d!1377201 (= (keys!17502 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lt!1675931)))

(declare-fun b!4492887 () Bool)

(declare-fun res!1867281 () Bool)

(assert (=> b!4492887 (=> (not res!1867281) (not e!2798547))))

(assert (=> b!4492887 (= res!1867281 (= (length!296 lt!1675931) (length!297 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))))

(declare-fun res!1867283 () Bool)

(assert (=> b!4492888 (=> (not res!1867283) (not e!2798547))))

(assert (=> b!4492888 (= res!1867283 (forall!10149 lt!1675931 lambda!167548))))

(assert (=> b!4492889 (= e!2798547 (= (content!8227 lt!1675931) (content!8227 (map!11088 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lambda!167549))))))

(assert (= (and d!1377201 res!1867282) b!4492887))

(assert (= (and b!4492887 res!1867281) b!4492888))

(assert (= (and b!4492888 res!1867283) b!4492889))

(declare-fun m!5218569 () Bool)

(assert (=> d!1377201 m!5218569))

(assert (=> d!1377201 m!5218033))

(declare-fun m!5218571 () Bool)

(assert (=> b!4492887 m!5218571))

(declare-fun m!5218575 () Bool)

(assert (=> b!4492887 m!5218575))

(declare-fun m!5218579 () Bool)

(assert (=> b!4492888 m!5218579))

(declare-fun m!5218581 () Bool)

(assert (=> b!4492889 m!5218581))

(declare-fun m!5218583 () Bool)

(assert (=> b!4492889 m!5218583))

(assert (=> b!4492889 m!5218583))

(declare-fun m!5218587 () Bool)

(assert (=> b!4492889 m!5218587))

(assert (=> b!4492526 d!1377201))

(declare-fun bs!831750 () Bool)

(declare-fun b!4492894 () Bool)

(assert (= bs!831750 (and b!4492894 b!4492867)))

(declare-fun lambda!167550 () Int)

(assert (=> bs!831750 (= (= (toList!4236 lt!1675674) (toList!4236 lt!1675673)) (= lambda!167550 lambda!167546))))

(declare-fun bs!831751 () Bool)

(assert (= bs!831751 (and b!4492894 b!4492888)))

(assert (=> bs!831751 (= (= (toList!4236 lt!1675674) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167550 lambda!167548))))

(assert (=> b!4492894 true))

(declare-fun bs!831752 () Bool)

(declare-fun b!4492895 () Bool)

(assert (= bs!831752 (and b!4492895 b!4492868)))

(declare-fun lambda!167551 () Int)

(assert (=> bs!831752 (= lambda!167551 lambda!167547)))

(declare-fun bs!831753 () Bool)

(assert (= bs!831753 (and b!4492895 b!4492889)))

(assert (=> bs!831753 (= lambda!167551 lambda!167549)))

(declare-fun d!1377205 () Bool)

(declare-fun e!2798550 () Bool)

(assert (=> d!1377205 e!2798550))

(declare-fun res!1867286 () Bool)

(assert (=> d!1377205 (=> (not res!1867286) (not e!2798550))))

(declare-fun lt!1675936 () List!50637)

(assert (=> d!1377205 (= res!1867286 (noDuplicate!720 lt!1675936))))

(assert (=> d!1377205 (= lt!1675936 (getKeysList!421 (toList!4236 lt!1675674)))))

(assert (=> d!1377205 (= (keys!17502 lt!1675674) lt!1675936)))

(declare-fun b!4492893 () Bool)

(declare-fun res!1867285 () Bool)

(assert (=> b!4492893 (=> (not res!1867285) (not e!2798550))))

(assert (=> b!4492893 (= res!1867285 (= (length!296 lt!1675936) (length!297 (toList!4236 lt!1675674))))))

(declare-fun res!1867287 () Bool)

(assert (=> b!4492894 (=> (not res!1867287) (not e!2798550))))

(assert (=> b!4492894 (= res!1867287 (forall!10149 lt!1675936 lambda!167550))))

(assert (=> b!4492895 (= e!2798550 (= (content!8227 lt!1675936) (content!8227 (map!11088 (toList!4236 lt!1675674) lambda!167551))))))

(assert (= (and d!1377205 res!1867286) b!4492893))

(assert (= (and b!4492893 res!1867285) b!4492894))

(assert (= (and b!4492894 res!1867287) b!4492895))

(declare-fun m!5218597 () Bool)

(assert (=> d!1377205 m!5218597))

(assert (=> d!1377205 m!5218385))

(declare-fun m!5218601 () Bool)

(assert (=> b!4492893 m!5218601))

(declare-fun m!5218603 () Bool)

(assert (=> b!4492893 m!5218603))

(declare-fun m!5218605 () Bool)

(assert (=> b!4492894 m!5218605))

(declare-fun m!5218607 () Bool)

(assert (=> b!4492895 m!5218607))

(declare-fun m!5218609 () Bool)

(assert (=> b!4492895 m!5218609))

(assert (=> b!4492895 m!5218609))

(declare-fun m!5218611 () Bool)

(assert (=> b!4492895 m!5218611))

(assert (=> b!4492733 d!1377205))

(declare-fun d!1377213 () Bool)

(declare-fun e!2798561 () Bool)

(assert (=> d!1377213 e!2798561))

(declare-fun res!1867293 () Bool)

(assert (=> d!1377213 (=> res!1867293 e!2798561)))

(declare-fun e!2798559 () Bool)

(assert (=> d!1377213 (= res!1867293 e!2798559)))

(declare-fun res!1867292 () Bool)

(assert (=> d!1377213 (=> (not res!1867292) (not e!2798559))))

(declare-fun lt!1675946 () Bool)

(assert (=> d!1377213 (= res!1867292 (not lt!1675946))))

(declare-fun lt!1675940 () Bool)

(assert (=> d!1377213 (= lt!1675946 lt!1675940)))

(declare-fun lt!1675939 () Unit!90944)

(declare-fun e!2798564 () Unit!90944)

(assert (=> d!1377213 (= lt!1675939 e!2798564)))

(declare-fun c!765374 () Bool)

(assert (=> d!1377213 (= c!765374 lt!1675940)))

(assert (=> d!1377213 (= lt!1675940 (containsKey!1649 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(assert (=> d!1377213 (= (contains!13161 (extractMap!1170 (toList!4235 lt!1675671)) key!3287) lt!1675946)))

(declare-fun b!4492912 () Bool)

(assert (=> b!4492912 false))

(declare-fun lt!1675942 () Unit!90944)

(declare-fun lt!1675943 () Unit!90944)

(assert (=> b!4492912 (= lt!1675942 lt!1675943)))

(assert (=> b!4492912 (containsKey!1649 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287)))

(assert (=> b!4492912 (= lt!1675943 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(declare-fun e!2798560 () Unit!90944)

(declare-fun Unit!90966 () Unit!90944)

(assert (=> b!4492912 (= e!2798560 Unit!90966)))

(declare-fun b!4492913 () Bool)

(declare-fun e!2798562 () List!50637)

(assert (=> b!4492913 (= e!2798562 (keys!17502 (extractMap!1170 (toList!4235 lt!1675671))))))

(declare-fun b!4492914 () Bool)

(declare-fun Unit!90967 () Unit!90944)

(assert (=> b!4492914 (= e!2798560 Unit!90967)))

(declare-fun b!4492915 () Bool)

(assert (=> b!4492915 (= e!2798562 (getKeysList!421 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671)))))))

(declare-fun b!4492916 () Bool)

(assert (=> b!4492916 (= e!2798564 e!2798560)))

(declare-fun c!765375 () Bool)

(declare-fun call!312604 () Bool)

(assert (=> b!4492916 (= c!765375 call!312604)))

(declare-fun b!4492917 () Bool)

(assert (=> b!4492917 (= e!2798559 (not (contains!13165 (keys!17502 (extractMap!1170 (toList!4235 lt!1675671))) key!3287)))))

(declare-fun b!4492918 () Bool)

(declare-fun e!2798563 () Bool)

(assert (=> b!4492918 (= e!2798563 (contains!13165 (keys!17502 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(declare-fun b!4492919 () Bool)

(declare-fun lt!1675944 () Unit!90944)

(assert (=> b!4492919 (= e!2798564 lt!1675944)))

(declare-fun lt!1675941 () Unit!90944)

(assert (=> b!4492919 (= lt!1675941 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(assert (=> b!4492919 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(declare-fun lt!1675945 () Unit!90944)

(assert (=> b!4492919 (= lt!1675945 lt!1675941)))

(assert (=> b!4492919 (= lt!1675944 (lemmaInListThenGetKeysListContains!417 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287))))

(assert (=> b!4492919 call!312604))

(declare-fun bm!312599 () Bool)

(assert (=> bm!312599 (= call!312604 (contains!13165 e!2798562 key!3287))))

(declare-fun c!765376 () Bool)

(assert (=> bm!312599 (= c!765376 c!765374)))

(declare-fun b!4492920 () Bool)

(assert (=> b!4492920 (= e!2798561 e!2798563)))

(declare-fun res!1867294 () Bool)

(assert (=> b!4492920 (=> (not res!1867294) (not e!2798563))))

(assert (=> b!4492920 (= res!1867294 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (toList!4235 lt!1675671))) key!3287)))))

(assert (= (and d!1377213 c!765374) b!4492919))

(assert (= (and d!1377213 (not c!765374)) b!4492916))

(assert (= (and b!4492916 c!765375) b!4492912))

(assert (= (and b!4492916 (not c!765375)) b!4492914))

(assert (= (or b!4492919 b!4492916) bm!312599))

(assert (= (and bm!312599 c!765376) b!4492915))

(assert (= (and bm!312599 (not c!765376)) b!4492913))

(assert (= (and d!1377213 res!1867292) b!4492917))

(assert (= (and d!1377213 (not res!1867293)) b!4492920))

(assert (= (and b!4492920 res!1867294) b!4492918))

(declare-fun m!5218623 () Bool)

(assert (=> b!4492915 m!5218623))

(assert (=> b!4492913 m!5217881))

(assert (=> b!4492913 m!5218515))

(declare-fun m!5218625 () Bool)

(assert (=> b!4492912 m!5218625))

(declare-fun m!5218627 () Bool)

(assert (=> b!4492912 m!5218627))

(declare-fun m!5218629 () Bool)

(assert (=> b!4492920 m!5218629))

(assert (=> b!4492920 m!5218629))

(declare-fun m!5218631 () Bool)

(assert (=> b!4492920 m!5218631))

(assert (=> d!1377213 m!5218625))

(assert (=> b!4492918 m!5217881))

(assert (=> b!4492918 m!5218515))

(assert (=> b!4492918 m!5218515))

(declare-fun m!5218633 () Bool)

(assert (=> b!4492918 m!5218633))

(declare-fun m!5218635 () Bool)

(assert (=> bm!312599 m!5218635))

(assert (=> b!4492917 m!5217881))

(assert (=> b!4492917 m!5218515))

(assert (=> b!4492917 m!5218515))

(assert (=> b!4492917 m!5218633))

(declare-fun m!5218637 () Bool)

(assert (=> b!4492919 m!5218637))

(assert (=> b!4492919 m!5218629))

(assert (=> b!4492919 m!5218629))

(assert (=> b!4492919 m!5218631))

(declare-fun m!5218639 () Bool)

(assert (=> b!4492919 m!5218639))

(assert (=> d!1377053 d!1377213))

(assert (=> d!1377053 d!1377051))

(declare-fun d!1377217 () Bool)

(assert (=> d!1377217 (contains!13161 (extractMap!1170 (toList!4235 lt!1675671)) key!3287)))

(assert (=> d!1377217 true))

(declare-fun _$34!595 () Unit!90944)

(assert (=> d!1377217 (= (choose!28985 lt!1675671 key!3287 hashF!1107) _$34!595)))

(declare-fun bs!831757 () Bool)

(assert (= bs!831757 d!1377217))

(assert (=> bs!831757 m!5217881))

(assert (=> bs!831757 m!5217881))

(assert (=> bs!831757 m!5218223))

(assert (=> d!1377053 d!1377217))

(declare-fun d!1377227 () Bool)

(declare-fun res!1867295 () Bool)

(declare-fun e!2798573 () Bool)

(assert (=> d!1377227 (=> res!1867295 e!2798573)))

(assert (=> d!1377227 (= res!1867295 ((_ is Nil!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377227 (= (forall!10145 (toList!4235 lt!1675671) lambda!167515) e!2798573)))

(declare-fun b!4492937 () Bool)

(declare-fun e!2798574 () Bool)

(assert (=> b!4492937 (= e!2798573 e!2798574)))

(declare-fun res!1867296 () Bool)

(assert (=> b!4492937 (=> (not res!1867296) (not e!2798574))))

(assert (=> b!4492937 (= res!1867296 (dynLambda!21087 lambda!167515 (h!56320 (toList!4235 lt!1675671))))))

(declare-fun b!4492938 () Bool)

(assert (=> b!4492938 (= e!2798574 (forall!10145 (t!357593 (toList!4235 lt!1675671)) lambda!167515))))

(assert (= (and d!1377227 (not res!1867295)) b!4492937))

(assert (= (and b!4492937 res!1867296) b!4492938))

(declare-fun b_lambda!151661 () Bool)

(assert (=> (not b_lambda!151661) (not b!4492937)))

(declare-fun m!5218663 () Bool)

(assert (=> b!4492937 m!5218663))

(declare-fun m!5218665 () Bool)

(assert (=> b!4492938 m!5218665))

(assert (=> d!1377053 d!1377227))

(declare-fun d!1377233 () Bool)

(declare-fun e!2798580 () Bool)

(assert (=> d!1377233 e!2798580))

(declare-fun res!1867303 () Bool)

(assert (=> d!1377233 (=> res!1867303 e!2798580)))

(declare-fun e!2798578 () Bool)

(assert (=> d!1377233 (= res!1867303 e!2798578)))

(declare-fun res!1867302 () Bool)

(assert (=> d!1377233 (=> (not res!1867302) (not e!2798578))))

(declare-fun lt!1675963 () Bool)

(assert (=> d!1377233 (= res!1867302 (not lt!1675963))))

(declare-fun lt!1675957 () Bool)

(assert (=> d!1377233 (= lt!1675963 lt!1675957)))

(declare-fun lt!1675956 () Unit!90944)

(declare-fun e!2798583 () Unit!90944)

(assert (=> d!1377233 (= lt!1675956 e!2798583)))

(declare-fun c!765385 () Bool)

(assert (=> d!1377233 (= c!765385 lt!1675957)))

(assert (=> d!1377233 (= lt!1675957 (containsKey!1649 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(assert (=> d!1377233 (= (contains!13161 (extractMap!1170 (toList!4235 lm!1477)) key!3287) lt!1675963)))

(declare-fun b!4492944 () Bool)

(assert (=> b!4492944 false))

(declare-fun lt!1675959 () Unit!90944)

(declare-fun lt!1675960 () Unit!90944)

(assert (=> b!4492944 (= lt!1675959 lt!1675960)))

(assert (=> b!4492944 (containsKey!1649 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287)))

(assert (=> b!4492944 (= lt!1675960 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(declare-fun e!2798579 () Unit!90944)

(declare-fun Unit!90968 () Unit!90944)

(assert (=> b!4492944 (= e!2798579 Unit!90968)))

(declare-fun b!4492945 () Bool)

(declare-fun e!2798581 () List!50637)

(assert (=> b!4492945 (= e!2798581 (keys!17502 (extractMap!1170 (toList!4235 lm!1477))))))

(declare-fun b!4492946 () Bool)

(declare-fun Unit!90969 () Unit!90944)

(assert (=> b!4492946 (= e!2798579 Unit!90969)))

(declare-fun b!4492947 () Bool)

(assert (=> b!4492947 (= e!2798581 (getKeysList!421 (toList!4236 (extractMap!1170 (toList!4235 lm!1477)))))))

(declare-fun b!4492948 () Bool)

(assert (=> b!4492948 (= e!2798583 e!2798579)))

(declare-fun c!765386 () Bool)

(declare-fun call!312605 () Bool)

(assert (=> b!4492948 (= c!765386 call!312605)))

(declare-fun b!4492949 () Bool)

(assert (=> b!4492949 (= e!2798578 (not (contains!13165 (keys!17502 (extractMap!1170 (toList!4235 lm!1477))) key!3287)))))

(declare-fun b!4492950 () Bool)

(declare-fun e!2798582 () Bool)

(assert (=> b!4492950 (= e!2798582 (contains!13165 (keys!17502 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(declare-fun b!4492951 () Bool)

(declare-fun lt!1675961 () Unit!90944)

(assert (=> b!4492951 (= e!2798583 lt!1675961)))

(declare-fun lt!1675958 () Unit!90944)

(assert (=> b!4492951 (= lt!1675958 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(assert (=> b!4492951 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(declare-fun lt!1675962 () Unit!90944)

(assert (=> b!4492951 (= lt!1675962 lt!1675958)))

(assert (=> b!4492951 (= lt!1675961 (lemmaInListThenGetKeysListContains!417 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287))))

(assert (=> b!4492951 call!312605))

(declare-fun bm!312600 () Bool)

(assert (=> bm!312600 (= call!312605 (contains!13165 e!2798581 key!3287))))

(declare-fun c!765387 () Bool)

(assert (=> bm!312600 (= c!765387 c!765385)))

(declare-fun b!4492952 () Bool)

(assert (=> b!4492952 (= e!2798580 e!2798582)))

(declare-fun res!1867304 () Bool)

(assert (=> b!4492952 (=> (not res!1867304) (not e!2798582))))

(assert (=> b!4492952 (= res!1867304 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (toList!4235 lm!1477))) key!3287)))))

(assert (= (and d!1377233 c!765385) b!4492951))

(assert (= (and d!1377233 (not c!765385)) b!4492948))

(assert (= (and b!4492948 c!765386) b!4492944))

(assert (= (and b!4492948 (not c!765386)) b!4492946))

(assert (= (or b!4492951 b!4492948) bm!312600))

(assert (= (and bm!312600 c!765387) b!4492947))

(assert (= (and bm!312600 (not c!765387)) b!4492945))

(assert (= (and d!1377233 res!1867302) b!4492949))

(assert (= (and d!1377233 (not res!1867303)) b!4492952))

(assert (= (and b!4492952 res!1867304) b!4492950))

(declare-fun m!5218667 () Bool)

(assert (=> b!4492947 m!5218667))

(assert (=> b!4492945 m!5217889))

(declare-fun m!5218669 () Bool)

(assert (=> b!4492945 m!5218669))

(declare-fun m!5218673 () Bool)

(assert (=> b!4492944 m!5218673))

(declare-fun m!5218675 () Bool)

(assert (=> b!4492944 m!5218675))

(declare-fun m!5218679 () Bool)

(assert (=> b!4492952 m!5218679))

(assert (=> b!4492952 m!5218679))

(declare-fun m!5218687 () Bool)

(assert (=> b!4492952 m!5218687))

(assert (=> d!1377233 m!5218673))

(assert (=> b!4492950 m!5217889))

(assert (=> b!4492950 m!5218669))

(assert (=> b!4492950 m!5218669))

(declare-fun m!5218693 () Bool)

(assert (=> b!4492950 m!5218693))

(declare-fun m!5218695 () Bool)

(assert (=> bm!312600 m!5218695))

(assert (=> b!4492949 m!5217889))

(assert (=> b!4492949 m!5218669))

(assert (=> b!4492949 m!5218669))

(assert (=> b!4492949 m!5218693))

(declare-fun m!5218697 () Bool)

(assert (=> b!4492951 m!5218697))

(assert (=> b!4492951 m!5218679))

(assert (=> b!4492951 m!5218679))

(assert (=> b!4492951 m!5218687))

(declare-fun m!5218699 () Bool)

(assert (=> b!4492951 m!5218699))

(assert (=> d!1376987 d!1377233))

(assert (=> d!1376987 d!1377139))

(declare-fun d!1377237 () Bool)

(assert (=> d!1377237 (not (contains!13161 (extractMap!1170 (toList!4235 lm!1477)) key!3287))))

(assert (=> d!1377237 true))

(declare-fun _$26!290 () Unit!90944)

(assert (=> d!1377237 (= (choose!28982 lm!1477 key!3287 hashF!1107) _$26!290)))

(declare-fun bs!831762 () Bool)

(assert (= bs!831762 d!1377237))

(assert (=> bs!831762 m!5217889))

(assert (=> bs!831762 m!5217889))

(assert (=> bs!831762 m!5217955))

(assert (=> d!1376987 d!1377237))

(declare-fun d!1377247 () Bool)

(declare-fun res!1867313 () Bool)

(declare-fun e!2798592 () Bool)

(assert (=> d!1377247 (=> res!1867313 e!2798592)))

(assert (=> d!1377247 (= res!1867313 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377247 (= (forall!10145 (toList!4235 lm!1477) lambda!167487) e!2798592)))

(declare-fun b!4492961 () Bool)

(declare-fun e!2798593 () Bool)

(assert (=> b!4492961 (= e!2798592 e!2798593)))

(declare-fun res!1867314 () Bool)

(assert (=> b!4492961 (=> (not res!1867314) (not e!2798593))))

(assert (=> b!4492961 (= res!1867314 (dynLambda!21087 lambda!167487 (h!56320 (toList!4235 lm!1477))))))

(declare-fun b!4492962 () Bool)

(assert (=> b!4492962 (= e!2798593 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167487))))

(assert (= (and d!1377247 (not res!1867313)) b!4492961))

(assert (= (and b!4492961 res!1867314) b!4492962))

(declare-fun b_lambda!151663 () Bool)

(assert (=> (not b_lambda!151663) (not b!4492961)))

(declare-fun m!5218707 () Bool)

(assert (=> b!4492961 m!5218707))

(declare-fun m!5218709 () Bool)

(assert (=> b!4492962 m!5218709))

(assert (=> d!1376987 d!1377247))

(declare-fun d!1377249 () Bool)

(declare-fun lt!1675964 () Bool)

(assert (=> d!1377249 (= lt!1675964 (select (content!8225 (toList!4235 lm!1477)) (tuple2!50893 hash!344 lt!1675668)))))

(declare-fun e!2798595 () Bool)

(assert (=> d!1377249 (= lt!1675964 e!2798595)))

(declare-fun res!1867316 () Bool)

(assert (=> d!1377249 (=> (not res!1867316) (not e!2798595))))

(assert (=> d!1377249 (= res!1867316 ((_ is Cons!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377249 (= (contains!13163 (toList!4235 lm!1477) (tuple2!50893 hash!344 lt!1675668)) lt!1675964)))

(declare-fun b!4492963 () Bool)

(declare-fun e!2798594 () Bool)

(assert (=> b!4492963 (= e!2798595 e!2798594)))

(declare-fun res!1867315 () Bool)

(assert (=> b!4492963 (=> res!1867315 e!2798594)))

(assert (=> b!4492963 (= res!1867315 (= (h!56320 (toList!4235 lm!1477)) (tuple2!50893 hash!344 lt!1675668)))))

(declare-fun b!4492964 () Bool)

(assert (=> b!4492964 (= e!2798594 (contains!13163 (t!357593 (toList!4235 lm!1477)) (tuple2!50893 hash!344 lt!1675668)))))

(assert (= (and d!1377249 res!1867316) b!4492963))

(assert (= (and b!4492963 (not res!1867315)) b!4492964))

(assert (=> d!1377249 m!5218263))

(declare-fun m!5218711 () Bool)

(assert (=> d!1377249 m!5218711))

(declare-fun m!5218713 () Bool)

(assert (=> b!4492964 m!5218713))

(assert (=> d!1377095 d!1377249))

(declare-fun d!1377251 () Bool)

(assert (=> d!1377251 (contains!13163 (toList!4235 lm!1477) (tuple2!50893 hash!344 lt!1675668))))

(assert (=> d!1377251 true))

(declare-fun _$14!1067 () Unit!90944)

(assert (=> d!1377251 (= (choose!28987 (toList!4235 lm!1477) hash!344 lt!1675668) _$14!1067)))

(declare-fun bs!831763 () Bool)

(assert (= bs!831763 d!1377251))

(assert (=> bs!831763 m!5218267))

(assert (=> d!1377095 d!1377251))

(declare-fun d!1377253 () Bool)

(declare-fun res!1867321 () Bool)

(declare-fun e!2798600 () Bool)

(assert (=> d!1377253 (=> res!1867321 e!2798600)))

(assert (=> d!1377253 (= res!1867321 (or ((_ is Nil!50511) (toList!4235 lm!1477)) ((_ is Nil!50511) (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377253 (= (isStrictlySorted!387 (toList!4235 lm!1477)) e!2798600)))

(declare-fun b!4492969 () Bool)

(declare-fun e!2798601 () Bool)

(assert (=> b!4492969 (= e!2798600 e!2798601)))

(declare-fun res!1867322 () Bool)

(assert (=> b!4492969 (=> (not res!1867322) (not e!2798601))))

(assert (=> b!4492969 (= res!1867322 (bvslt (_1!28740 (h!56320 (toList!4235 lm!1477))) (_1!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4492970 () Bool)

(assert (=> b!4492970 (= e!2798601 (isStrictlySorted!387 (t!357593 (toList!4235 lm!1477))))))

(assert (= (and d!1377253 (not res!1867321)) b!4492969))

(assert (= (and b!4492969 res!1867322) b!4492970))

(declare-fun m!5218715 () Bool)

(assert (=> b!4492970 m!5218715))

(assert (=> d!1377095 d!1377253))

(declare-fun bs!831764 () Bool)

(declare-fun b!4492994 () Bool)

(assert (= bs!831764 (and b!4492994 b!4492867)))

(declare-fun lambda!167562 () Int)

(assert (=> bs!831764 (= (= (t!357592 (toList!4236 lt!1675674)) (toList!4236 lt!1675673)) (= lambda!167562 lambda!167546))))

(declare-fun bs!831765 () Bool)

(assert (= bs!831765 (and b!4492994 b!4492888)))

(assert (=> bs!831765 (= (= (t!357592 (toList!4236 lt!1675674)) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167562 lambda!167548))))

(declare-fun bs!831766 () Bool)

(assert (= bs!831766 (and b!4492994 b!4492894)))

(assert (=> bs!831766 (= (= (t!357592 (toList!4236 lt!1675674)) (toList!4236 lt!1675674)) (= lambda!167562 lambda!167550))))

(assert (=> b!4492994 true))

(declare-fun bs!831767 () Bool)

(declare-fun b!4492992 () Bool)

(assert (= bs!831767 (and b!4492992 b!4492867)))

(declare-fun lambda!167563 () Int)

(assert (=> bs!831767 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674))) (toList!4236 lt!1675673)) (= lambda!167563 lambda!167546))))

(declare-fun bs!831768 () Bool)

(assert (= bs!831768 (and b!4492992 b!4492888)))

(assert (=> bs!831768 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674))) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167563 lambda!167548))))

(declare-fun bs!831769 () Bool)

(assert (= bs!831769 (and b!4492992 b!4492894)))

(assert (=> bs!831769 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674))) (toList!4236 lt!1675674)) (= lambda!167563 lambda!167550))))

(declare-fun bs!831770 () Bool)

(assert (= bs!831770 (and b!4492992 b!4492994)))

(assert (=> bs!831770 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674))) (t!357592 (toList!4236 lt!1675674))) (= lambda!167563 lambda!167562))))

(assert (=> b!4492992 true))

(declare-fun bs!831771 () Bool)

(declare-fun b!4492996 () Bool)

(assert (= bs!831771 (and b!4492996 b!4492992)))

(declare-fun lambda!167564 () Int)

(assert (=> bs!831771 (= (= (toList!4236 lt!1675674) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167564 lambda!167563))))

(declare-fun bs!831772 () Bool)

(assert (= bs!831772 (and b!4492996 b!4492888)))

(assert (=> bs!831772 (= (= (toList!4236 lt!1675674) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167564 lambda!167548))))

(declare-fun bs!831773 () Bool)

(assert (= bs!831773 (and b!4492996 b!4492894)))

(assert (=> bs!831773 (= lambda!167564 lambda!167550)))

(declare-fun bs!831774 () Bool)

(assert (= bs!831774 (and b!4492996 b!4492867)))

(assert (=> bs!831774 (= (= (toList!4236 lt!1675674) (toList!4236 lt!1675673)) (= lambda!167564 lambda!167546))))

(declare-fun bs!831775 () Bool)

(assert (= bs!831775 (and b!4492996 b!4492994)))

(assert (=> bs!831775 (= (= (toList!4236 lt!1675674) (t!357592 (toList!4236 lt!1675674))) (= lambda!167564 lambda!167562))))

(assert (=> b!4492996 true))

(declare-fun bs!831776 () Bool)

(declare-fun b!4492990 () Bool)

(assert (= bs!831776 (and b!4492990 b!4492868)))

(declare-fun lambda!167565 () Int)

(assert (=> bs!831776 (= lambda!167565 lambda!167547)))

(declare-fun bs!831777 () Bool)

(assert (= bs!831777 (and b!4492990 b!4492889)))

(assert (=> bs!831777 (= lambda!167565 lambda!167549)))

(declare-fun bs!831778 () Bool)

(assert (= bs!831778 (and b!4492990 b!4492895)))

(assert (=> bs!831778 (= lambda!167565 lambda!167551)))

(declare-fun b!4492989 () Bool)

(assert (=> b!4492989 false))

(declare-fun e!2798610 () Unit!90944)

(declare-fun Unit!90970 () Unit!90944)

(assert (=> b!4492989 (= e!2798610 Unit!90970)))

(declare-fun lt!1675982 () List!50637)

(declare-fun e!2798611 () Bool)

(assert (=> b!4492990 (= e!2798611 (= (content!8227 lt!1675982) (content!8227 (map!11088 (toList!4236 lt!1675674) lambda!167565))))))

(declare-fun d!1377255 () Bool)

(assert (=> d!1377255 e!2798611))

(declare-fun res!1867330 () Bool)

(assert (=> d!1377255 (=> (not res!1867330) (not e!2798611))))

(assert (=> d!1377255 (= res!1867330 (noDuplicate!720 lt!1675982))))

(declare-fun e!2798613 () List!50637)

(assert (=> d!1377255 (= lt!1675982 e!2798613)))

(declare-fun c!765394 () Bool)

(assert (=> d!1377255 (= c!765394 ((_ is Cons!50510) (toList!4236 lt!1675674)))))

(assert (=> d!1377255 (invariantList!973 (toList!4236 lt!1675674))))

(assert (=> d!1377255 (= (getKeysList!421 (toList!4236 lt!1675674)) lt!1675982)))

(declare-fun b!4492991 () Bool)

(declare-fun Unit!90971 () Unit!90944)

(assert (=> b!4492991 (= e!2798610 Unit!90971)))

(assert (=> b!4492992 (= e!2798613 (Cons!50513 (_1!28739 (h!56319 (toList!4236 lt!1675674))) (getKeysList!421 (t!357592 (toList!4236 lt!1675674)))))))

(declare-fun c!765395 () Bool)

(assert (=> b!4492992 (= c!765395 (containsKey!1649 (t!357592 (toList!4236 lt!1675674)) (_1!28739 (h!56319 (toList!4236 lt!1675674)))))))

(declare-fun lt!1675981 () Unit!90944)

(assert (=> b!4492992 (= lt!1675981 e!2798610)))

(declare-fun c!765396 () Bool)

(assert (=> b!4492992 (= c!765396 (contains!13165 (getKeysList!421 (t!357592 (toList!4236 lt!1675674))) (_1!28739 (h!56319 (toList!4236 lt!1675674)))))))

(declare-fun lt!1675985 () Unit!90944)

(declare-fun e!2798612 () Unit!90944)

(assert (=> b!4492992 (= lt!1675985 e!2798612)))

(declare-fun lt!1675979 () List!50637)

(assert (=> b!4492992 (= lt!1675979 (getKeysList!421 (t!357592 (toList!4236 lt!1675674))))))

(declare-fun lt!1675984 () Unit!90944)

(declare-fun lemmaForallContainsAddHeadPreserves!140 (List!50634 List!50637 tuple2!50890) Unit!90944)

(assert (=> b!4492992 (= lt!1675984 (lemmaForallContainsAddHeadPreserves!140 (t!357592 (toList!4236 lt!1675674)) lt!1675979 (h!56319 (toList!4236 lt!1675674))))))

(assert (=> b!4492992 (forall!10149 lt!1675979 lambda!167563)))

(declare-fun lt!1675980 () Unit!90944)

(assert (=> b!4492992 (= lt!1675980 lt!1675984)))

(declare-fun b!4492993 () Bool)

(declare-fun Unit!90972 () Unit!90944)

(assert (=> b!4492993 (= e!2798612 Unit!90972)))

(assert (=> b!4492994 false))

(declare-fun lt!1675983 () Unit!90944)

(declare-fun forallContained!2402 (List!50637 Int K!11925) Unit!90944)

(assert (=> b!4492994 (= lt!1675983 (forallContained!2402 (getKeysList!421 (t!357592 (toList!4236 lt!1675674))) lambda!167562 (_1!28739 (h!56319 (toList!4236 lt!1675674)))))))

(declare-fun Unit!90973 () Unit!90944)

(assert (=> b!4492994 (= e!2798612 Unit!90973)))

(declare-fun b!4492995 () Bool)

(assert (=> b!4492995 (= e!2798613 Nil!50513)))

(declare-fun res!1867331 () Bool)

(assert (=> b!4492996 (=> (not res!1867331) (not e!2798611))))

(assert (=> b!4492996 (= res!1867331 (forall!10149 lt!1675982 lambda!167564))))

(declare-fun b!4492997 () Bool)

(declare-fun res!1867329 () Bool)

(assert (=> b!4492997 (=> (not res!1867329) (not e!2798611))))

(assert (=> b!4492997 (= res!1867329 (= (length!296 lt!1675982) (length!297 (toList!4236 lt!1675674))))))

(assert (= (and d!1377255 c!765394) b!4492992))

(assert (= (and d!1377255 (not c!765394)) b!4492995))

(assert (= (and b!4492992 c!765395) b!4492989))

(assert (= (and b!4492992 (not c!765395)) b!4492991))

(assert (= (and b!4492992 c!765396) b!4492994))

(assert (= (and b!4492992 (not c!765396)) b!4492993))

(assert (= (and d!1377255 res!1867330) b!4492997))

(assert (= (and b!4492997 res!1867329) b!4492996))

(assert (= (and b!4492996 res!1867331) b!4492990))

(declare-fun m!5218717 () Bool)

(assert (=> d!1377255 m!5218717))

(assert (=> d!1377255 m!5218485))

(declare-fun m!5218719 () Bool)

(assert (=> b!4492994 m!5218719))

(assert (=> b!4492994 m!5218719))

(declare-fun m!5218721 () Bool)

(assert (=> b!4492994 m!5218721))

(declare-fun m!5218723 () Bool)

(assert (=> b!4492990 m!5218723))

(declare-fun m!5218725 () Bool)

(assert (=> b!4492990 m!5218725))

(assert (=> b!4492990 m!5218725))

(declare-fun m!5218727 () Bool)

(assert (=> b!4492990 m!5218727))

(declare-fun m!5218729 () Bool)

(assert (=> b!4492996 m!5218729))

(declare-fun m!5218731 () Bool)

(assert (=> b!4492997 m!5218731))

(assert (=> b!4492997 m!5218603))

(assert (=> b!4492992 m!5218719))

(declare-fun m!5218733 () Bool)

(assert (=> b!4492992 m!5218733))

(assert (=> b!4492992 m!5218719))

(declare-fun m!5218735 () Bool)

(assert (=> b!4492992 m!5218735))

(declare-fun m!5218737 () Bool)

(assert (=> b!4492992 m!5218737))

(declare-fun m!5218739 () Bool)

(assert (=> b!4492992 m!5218739))

(assert (=> b!4492735 d!1377255))

(assert (=> d!1377087 d!1377253))

(declare-fun d!1377257 () Bool)

(declare-fun lt!1675986 () Bool)

(assert (=> d!1377257 (= lt!1675986 (select (content!8227 (keys!17502 lt!1675674)) key!3287))))

(declare-fun e!2798614 () Bool)

(assert (=> d!1377257 (= lt!1675986 e!2798614)))

(declare-fun res!1867333 () Bool)

(assert (=> d!1377257 (=> (not res!1867333) (not e!2798614))))

(assert (=> d!1377257 (= res!1867333 ((_ is Cons!50513) (keys!17502 lt!1675674)))))

(assert (=> d!1377257 (= (contains!13165 (keys!17502 lt!1675674) key!3287) lt!1675986)))

(declare-fun b!4493000 () Bool)

(declare-fun e!2798615 () Bool)

(assert (=> b!4493000 (= e!2798614 e!2798615)))

(declare-fun res!1867332 () Bool)

(assert (=> b!4493000 (=> res!1867332 e!2798615)))

(assert (=> b!4493000 (= res!1867332 (= (h!56324 (keys!17502 lt!1675674)) key!3287))))

(declare-fun b!4493001 () Bool)

(assert (=> b!4493001 (= e!2798615 (contains!13165 (t!357595 (keys!17502 lt!1675674)) key!3287))))

(assert (= (and d!1377257 res!1867333) b!4493000))

(assert (= (and b!4493000 (not res!1867332)) b!4493001))

(assert (=> d!1377257 m!5218387))

(declare-fun m!5218741 () Bool)

(assert (=> d!1377257 m!5218741))

(declare-fun m!5218743 () Bool)

(assert (=> d!1377257 m!5218743))

(declare-fun m!5218745 () Bool)

(assert (=> b!4493001 m!5218745))

(assert (=> b!4492737 d!1377257))

(assert (=> b!4492737 d!1377205))

(declare-fun d!1377259 () Bool)

(assert (=> d!1377259 (isDefined!8311 (getValueByKey!1004 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(declare-fun lt!1675987 () Unit!90944)

(assert (=> d!1377259 (= lt!1675987 (choose!28991 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (=> d!1377259 (invariantList!973 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377259 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) lt!1675987)))

(declare-fun bs!831779 () Bool)

(assert (= bs!831779 d!1377259))

(assert (=> bs!831779 m!5218041))

(assert (=> bs!831779 m!5218041))

(assert (=> bs!831779 m!5218043))

(declare-fun m!5218747 () Bool)

(assert (=> bs!831779 m!5218747))

(declare-fun m!5218749 () Bool)

(assert (=> bs!831779 m!5218749))

(assert (=> b!4492528 d!1377259))

(assert (=> b!4492528 d!1377159))

(assert (=> b!4492528 d!1377163))

(declare-fun d!1377261 () Bool)

(assert (=> d!1377261 (contains!13165 (getKeysList!421 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287)))

(declare-fun lt!1675988 () Unit!90944)

(assert (=> d!1377261 (= lt!1675988 (choose!28992 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (=> d!1377261 (invariantList!973 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377261 (= (lemmaInListThenGetKeysListContains!417 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) lt!1675988)))

(declare-fun bs!831780 () Bool)

(assert (= bs!831780 d!1377261))

(assert (=> bs!831780 m!5218033))

(assert (=> bs!831780 m!5218033))

(declare-fun m!5218751 () Bool)

(assert (=> bs!831780 m!5218751))

(declare-fun m!5218753 () Bool)

(assert (=> bs!831780 m!5218753))

(assert (=> bs!831780 m!5218749))

(assert (=> b!4492528 d!1377261))

(assert (=> b!4492681 d!1377105))

(declare-fun d!1377263 () Bool)

(declare-fun isEmpty!28568 (Option!11025) Bool)

(assert (=> d!1377263 (= (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667)) (not (isEmpty!28568 (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667))))))

(declare-fun bs!831781 () Bool)

(assert (= bs!831781 d!1377263))

(assert (=> bs!831781 m!5218253))

(declare-fun m!5218755 () Bool)

(assert (=> bs!831781 m!5218755))

(assert (=> b!4492675 d!1377263))

(declare-fun d!1377265 () Bool)

(declare-fun c!765401 () Bool)

(assert (=> d!1377265 (= c!765401 (and ((_ is Cons!50511) (toList!4235 lm!1477)) (= (_1!28740 (h!56320 (toList!4235 lm!1477))) lt!1675667)))))

(declare-fun e!2798620 () Option!11025)

(assert (=> d!1377265 (= (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667) e!2798620)))

(declare-fun b!4493011 () Bool)

(declare-fun e!2798621 () Option!11025)

(assert (=> b!4493011 (= e!2798620 e!2798621)))

(declare-fun c!765402 () Bool)

(assert (=> b!4493011 (= c!765402 (and ((_ is Cons!50511) (toList!4235 lm!1477)) (not (= (_1!28740 (h!56320 (toList!4235 lm!1477))) lt!1675667))))))

(declare-fun b!4493013 () Bool)

(assert (=> b!4493013 (= e!2798621 None!11024)))

(declare-fun b!4493012 () Bool)

(assert (=> b!4493012 (= e!2798621 (getValueByKey!1005 (t!357593 (toList!4235 lm!1477)) lt!1675667))))

(declare-fun b!4493010 () Bool)

(assert (=> b!4493010 (= e!2798620 (Some!11024 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (= (and d!1377265 c!765401) b!4493010))

(assert (= (and d!1377265 (not c!765401)) b!4493011))

(assert (= (and b!4493011 c!765402) b!4493012))

(assert (= (and b!4493011 (not c!765402)) b!4493013))

(declare-fun m!5218757 () Bool)

(assert (=> b!4493012 m!5218757))

(assert (=> b!4492675 d!1377265))

(declare-fun d!1377267 () Bool)

(declare-fun res!1867334 () Bool)

(declare-fun e!2798622 () Bool)

(assert (=> d!1377267 (=> res!1867334 e!2798622)))

(assert (=> d!1377267 (= res!1867334 (and ((_ is Cons!50510) lt!1675855) (= (_1!28739 (h!56319 lt!1675855)) key!3287)))))

(assert (=> d!1377267 (= (containsKey!1646 lt!1675855 key!3287) e!2798622)))

(declare-fun b!4493014 () Bool)

(declare-fun e!2798623 () Bool)

(assert (=> b!4493014 (= e!2798622 e!2798623)))

(declare-fun res!1867335 () Bool)

(assert (=> b!4493014 (=> (not res!1867335) (not e!2798623))))

(assert (=> b!4493014 (= res!1867335 ((_ is Cons!50510) lt!1675855))))

(declare-fun b!4493015 () Bool)

(assert (=> b!4493015 (= e!2798623 (containsKey!1646 (t!357592 lt!1675855) key!3287))))

(assert (= (and d!1377267 (not res!1867334)) b!4493014))

(assert (= (and b!4493014 res!1867335) b!4493015))

(declare-fun m!5218759 () Bool)

(assert (=> b!4493015 m!5218759))

(assert (=> d!1377099 d!1377267))

(declare-fun d!1377269 () Bool)

(declare-fun res!1867336 () Bool)

(declare-fun e!2798624 () Bool)

(assert (=> d!1377269 (=> res!1867336 e!2798624)))

(assert (=> d!1377269 (= res!1867336 (not ((_ is Cons!50510) lt!1675668)))))

(assert (=> d!1377269 (= (noDuplicateKeys!1114 lt!1675668) e!2798624)))

(declare-fun b!4493016 () Bool)

(declare-fun e!2798625 () Bool)

(assert (=> b!4493016 (= e!2798624 e!2798625)))

(declare-fun res!1867337 () Bool)

(assert (=> b!4493016 (=> (not res!1867337) (not e!2798625))))

(assert (=> b!4493016 (= res!1867337 (not (containsKey!1646 (t!357592 lt!1675668) (_1!28739 (h!56319 lt!1675668)))))))

(declare-fun b!4493017 () Bool)

(assert (=> b!4493017 (= e!2798625 (noDuplicateKeys!1114 (t!357592 lt!1675668)))))

(assert (= (and d!1377269 (not res!1867336)) b!4493016))

(assert (= (and b!4493016 res!1867337) b!4493017))

(declare-fun m!5218761 () Bool)

(assert (=> b!4493016 m!5218761))

(assert (=> b!4493017 m!5218457))

(assert (=> d!1377099 d!1377269))

(declare-fun d!1377271 () Bool)

(declare-fun res!1867338 () Bool)

(declare-fun e!2798626 () Bool)

(assert (=> d!1377271 (=> res!1867338 e!2798626)))

(assert (=> d!1377271 (= res!1867338 (and ((_ is Cons!50510) (_2!28740 (h!56320 (toList!4235 lt!1675671)))) (= (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))) key!3287)))))

(assert (=> d!1377271 (= (containsKey!1646 (_2!28740 (h!56320 (toList!4235 lt!1675671))) key!3287) e!2798626)))

(declare-fun b!4493018 () Bool)

(declare-fun e!2798627 () Bool)

(assert (=> b!4493018 (= e!2798626 e!2798627)))

(declare-fun res!1867339 () Bool)

(assert (=> b!4493018 (=> (not res!1867339) (not e!2798627))))

(assert (=> b!4493018 (= res!1867339 ((_ is Cons!50510) (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(declare-fun b!4493019 () Bool)

(assert (=> b!4493019 (= e!2798627 (containsKey!1646 (t!357592 (_2!28740 (h!56320 (toList!4235 lt!1675671)))) key!3287))))

(assert (= (and d!1377271 (not res!1867338)) b!4493018))

(assert (= (and b!4493018 res!1867339) b!4493019))

(declare-fun m!5218763 () Bool)

(assert (=> b!4493019 m!5218763))

(assert (=> b!4492729 d!1377271))

(declare-fun d!1377273 () Bool)

(declare-fun res!1867340 () Bool)

(declare-fun e!2798628 () Bool)

(assert (=> d!1377273 (=> res!1867340 e!2798628)))

(assert (=> d!1377273 (= res!1867340 (and ((_ is Cons!50510) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) key!3287)))))

(assert (=> d!1377273 (= (containsKey!1649 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) e!2798628)))

(declare-fun b!4493020 () Bool)

(declare-fun e!2798629 () Bool)

(assert (=> b!4493020 (= e!2798628 e!2798629)))

(declare-fun res!1867341 () Bool)

(assert (=> b!4493020 (=> (not res!1867341) (not e!2798629))))

(assert (=> b!4493020 (= res!1867341 ((_ is Cons!50510) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4493021 () Bool)

(assert (=> b!4493021 (= e!2798629 (containsKey!1649 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(assert (= (and d!1377273 (not res!1867340)) b!4493020))

(assert (= (and b!4493020 res!1867341) b!4493021))

(declare-fun m!5218765 () Bool)

(assert (=> b!4493021 m!5218765))

(assert (=> b!4492521 d!1377273))

(declare-fun d!1377275 () Bool)

(assert (=> d!1377275 (containsKey!1649 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287)))

(declare-fun lt!1675991 () Unit!90944)

(declare-fun choose!28996 (List!50634 K!11925) Unit!90944)

(assert (=> d!1377275 (= lt!1675991 (choose!28996 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (=> d!1377275 (invariantList!973 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377275 (= (lemmaInGetKeysListThenContainsKey!420 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) key!3287) lt!1675991)))

(declare-fun bs!831782 () Bool)

(assert (= bs!831782 d!1377275))

(assert (=> bs!831782 m!5218037))

(declare-fun m!5218767 () Bool)

(assert (=> bs!831782 m!5218767))

(assert (=> bs!831782 m!5218749))

(assert (=> b!4492521 d!1377275))

(declare-fun d!1377277 () Bool)

(declare-fun lt!1675992 () Bool)

(assert (=> d!1377277 (= lt!1675992 (select (content!8225 (toList!4235 lt!1675872)) (head!9322 lm!1477)))))

(declare-fun e!2798631 () Bool)

(assert (=> d!1377277 (= lt!1675992 e!2798631)))

(declare-fun res!1867343 () Bool)

(assert (=> d!1377277 (=> (not res!1867343) (not e!2798631))))

(assert (=> d!1377277 (= res!1867343 ((_ is Cons!50511) (toList!4235 lt!1675872)))))

(assert (=> d!1377277 (= (contains!13163 (toList!4235 lt!1675872) (head!9322 lm!1477)) lt!1675992)))

(declare-fun b!4493022 () Bool)

(declare-fun e!2798630 () Bool)

(assert (=> b!4493022 (= e!2798631 e!2798630)))

(declare-fun res!1867342 () Bool)

(assert (=> b!4493022 (=> res!1867342 e!2798630)))

(assert (=> b!4493022 (= res!1867342 (= (h!56320 (toList!4235 lt!1675872)) (head!9322 lm!1477)))))

(declare-fun b!4493023 () Bool)

(assert (=> b!4493023 (= e!2798630 (contains!13163 (t!357593 (toList!4235 lt!1675872)) (head!9322 lm!1477)))))

(assert (= (and d!1377277 res!1867343) b!4493022))

(assert (= (and b!4493022 (not res!1867342)) b!4493023))

(declare-fun m!5218769 () Bool)

(assert (=> d!1377277 m!5218769))

(assert (=> d!1377277 m!5217841))

(declare-fun m!5218771 () Bool)

(assert (=> d!1377277 m!5218771))

(assert (=> b!4493023 m!5217841))

(declare-fun m!5218773 () Bool)

(assert (=> b!4493023 m!5218773))

(assert (=> b!4492710 d!1377277))

(declare-fun d!1377279 () Bool)

(declare-fun res!1867346 () Bool)

(declare-fun e!2798632 () Bool)

(assert (=> d!1377279 (=> res!1867346 e!2798632)))

(declare-fun e!2798634 () Bool)

(assert (=> d!1377279 (= res!1867346 e!2798634)))

(declare-fun res!1867345 () Bool)

(assert (=> d!1377279 (=> (not res!1867345) (not e!2798634))))

(assert (=> d!1377279 (= res!1867345 ((_ is Cons!50511) (t!357593 (toList!4235 lt!1675671))))))

(assert (=> d!1377279 (= (containsKeyBiggerList!94 (t!357593 (toList!4235 lt!1675671)) key!3287) e!2798632)))

(declare-fun b!4493024 () Bool)

(assert (=> b!4493024 (= e!2798634 (containsKey!1646 (_2!28740 (h!56320 (t!357593 (toList!4235 lt!1675671)))) key!3287))))

(declare-fun b!4493025 () Bool)

(declare-fun e!2798633 () Bool)

(assert (=> b!4493025 (= e!2798632 e!2798633)))

(declare-fun res!1867344 () Bool)

(assert (=> b!4493025 (=> (not res!1867344) (not e!2798633))))

(assert (=> b!4493025 (= res!1867344 ((_ is Cons!50511) (t!357593 (toList!4235 lt!1675671))))))

(declare-fun b!4493026 () Bool)

(assert (=> b!4493026 (= e!2798633 (containsKeyBiggerList!94 (t!357593 (t!357593 (toList!4235 lt!1675671))) key!3287))))

(assert (= (and d!1377279 res!1867345) b!4493024))

(assert (= (and d!1377279 (not res!1867346)) b!4493025))

(assert (= (and b!4493025 res!1867344) b!4493026))

(declare-fun m!5218775 () Bool)

(assert (=> b!4493024 m!5218775))

(declare-fun m!5218777 () Bool)

(assert (=> b!4493026 m!5218777))

(assert (=> b!4492731 d!1377279))

(declare-fun d!1377281 () Bool)

(assert (=> d!1377281 (= (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287)) (not (isEmpty!28566 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))))))

(declare-fun bs!831783 () Bool)

(assert (= bs!831783 d!1377281))

(assert (=> bs!831783 m!5218123))

(declare-fun m!5218779 () Bool)

(assert (=> bs!831783 m!5218779))

(assert (=> b!4492603 d!1377281))

(declare-fun b!4493029 () Bool)

(declare-fun e!2798636 () Option!11024)

(assert (=> b!4493029 (= e!2798636 (getValueByKey!1004 (t!357592 (toList!4236 lt!1675673)) key!3287))))

(declare-fun b!4493027 () Bool)

(declare-fun e!2798635 () Option!11024)

(assert (=> b!4493027 (= e!2798635 (Some!11023 (_2!28739 (h!56319 (toList!4236 lt!1675673)))))))

(declare-fun b!4493030 () Bool)

(assert (=> b!4493030 (= e!2798636 None!11023)))

(declare-fun d!1377283 () Bool)

(declare-fun c!765403 () Bool)

(assert (=> d!1377283 (= c!765403 (and ((_ is Cons!50510) (toList!4236 lt!1675673)) (= (_1!28739 (h!56319 (toList!4236 lt!1675673))) key!3287)))))

(assert (=> d!1377283 (= (getValueByKey!1004 (toList!4236 lt!1675673) key!3287) e!2798635)))

(declare-fun b!4493028 () Bool)

(assert (=> b!4493028 (= e!2798635 e!2798636)))

(declare-fun c!765404 () Bool)

(assert (=> b!4493028 (= c!765404 (and ((_ is Cons!50510) (toList!4236 lt!1675673)) (not (= (_1!28739 (h!56319 (toList!4236 lt!1675673))) key!3287))))))

(assert (= (and d!1377283 c!765403) b!4493027))

(assert (= (and d!1377283 (not c!765403)) b!4493028))

(assert (= (and b!4493028 c!765404) b!4493029))

(assert (= (and b!4493028 (not c!765404)) b!4493030))

(declare-fun m!5218781 () Bool)

(assert (=> b!4493029 m!5218781))

(assert (=> b!4492603 d!1377283))

(declare-fun d!1377285 () Bool)

(declare-fun c!765407 () Bool)

(assert (=> d!1377285 (= c!765407 ((_ is Nil!50513) (keys!17502 lt!1675673)))))

(declare-fun e!2798639 () (InoxSet K!11925))

(assert (=> d!1377285 (= (content!8227 (keys!17502 lt!1675673)) e!2798639)))

(declare-fun b!4493035 () Bool)

(assert (=> b!4493035 (= e!2798639 ((as const (Array K!11925 Bool)) false))))

(declare-fun b!4493036 () Bool)

(assert (=> b!4493036 (= e!2798639 ((_ map or) (store ((as const (Array K!11925 Bool)) false) (h!56324 (keys!17502 lt!1675673)) true) (content!8227 (t!357595 (keys!17502 lt!1675673)))))))

(assert (= (and d!1377285 c!765407) b!4493035))

(assert (= (and d!1377285 (not c!765407)) b!4493036))

(declare-fun m!5218783 () Bool)

(assert (=> b!4493036 m!5218783))

(declare-fun m!5218785 () Bool)

(assert (=> b!4493036 m!5218785))

(assert (=> b!4492713 d!1377285))

(assert (=> b!4492713 d!1377197))

(declare-fun d!1377287 () Bool)

(declare-fun c!765408 () Bool)

(assert (=> d!1377287 (= c!765408 ((_ is Nil!50513) (keys!17502 lt!1675875)))))

(declare-fun e!2798640 () (InoxSet K!11925))

(assert (=> d!1377287 (= (content!8227 (keys!17502 lt!1675875)) e!2798640)))

(declare-fun b!4493037 () Bool)

(assert (=> b!4493037 (= e!2798640 ((as const (Array K!11925 Bool)) false))))

(declare-fun b!4493038 () Bool)

(assert (=> b!4493038 (= e!2798640 ((_ map or) (store ((as const (Array K!11925 Bool)) false) (h!56324 (keys!17502 lt!1675875)) true) (content!8227 (t!357595 (keys!17502 lt!1675875)))))))

(assert (= (and d!1377287 c!765408) b!4493037))

(assert (= (and d!1377287 (not c!765408)) b!4493038))

(declare-fun m!5218787 () Bool)

(assert (=> b!4493038 m!5218787))

(declare-fun m!5218789 () Bool)

(assert (=> b!4493038 m!5218789))

(assert (=> b!4492713 d!1377287))

(declare-fun bs!831784 () Bool)

(declare-fun b!4493040 () Bool)

(assert (= bs!831784 (and b!4493040 b!4492888)))

(declare-fun lambda!167566 () Int)

(assert (=> bs!831784 (= (= (toList!4236 lt!1675875) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167566 lambda!167548))))

(declare-fun bs!831785 () Bool)

(assert (= bs!831785 (and b!4493040 b!4492894)))

(assert (=> bs!831785 (= (= (toList!4236 lt!1675875) (toList!4236 lt!1675674)) (= lambda!167566 lambda!167550))))

(declare-fun bs!831786 () Bool)

(assert (= bs!831786 (and b!4493040 b!4492992)))

(assert (=> bs!831786 (= (= (toList!4236 lt!1675875) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167566 lambda!167563))))

(declare-fun bs!831787 () Bool)

(assert (= bs!831787 (and b!4493040 b!4492996)))

(assert (=> bs!831787 (= (= (toList!4236 lt!1675875) (toList!4236 lt!1675674)) (= lambda!167566 lambda!167564))))

(declare-fun bs!831788 () Bool)

(assert (= bs!831788 (and b!4493040 b!4492867)))

(assert (=> bs!831788 (= (= (toList!4236 lt!1675875) (toList!4236 lt!1675673)) (= lambda!167566 lambda!167546))))

(declare-fun bs!831789 () Bool)

(assert (= bs!831789 (and b!4493040 b!4492994)))

(assert (=> bs!831789 (= (= (toList!4236 lt!1675875) (t!357592 (toList!4236 lt!1675674))) (= lambda!167566 lambda!167562))))

(assert (=> b!4493040 true))

(declare-fun bs!831790 () Bool)

(declare-fun b!4493041 () Bool)

(assert (= bs!831790 (and b!4493041 b!4492868)))

(declare-fun lambda!167567 () Int)

(assert (=> bs!831790 (= lambda!167567 lambda!167547)))

(declare-fun bs!831791 () Bool)

(assert (= bs!831791 (and b!4493041 b!4492889)))

(assert (=> bs!831791 (= lambda!167567 lambda!167549)))

(declare-fun bs!831792 () Bool)

(assert (= bs!831792 (and b!4493041 b!4492895)))

(assert (=> bs!831792 (= lambda!167567 lambda!167551)))

(declare-fun bs!831793 () Bool)

(assert (= bs!831793 (and b!4493041 b!4492990)))

(assert (=> bs!831793 (= lambda!167567 lambda!167565)))

(declare-fun d!1377289 () Bool)

(declare-fun e!2798641 () Bool)

(assert (=> d!1377289 e!2798641))

(declare-fun res!1867348 () Bool)

(assert (=> d!1377289 (=> (not res!1867348) (not e!2798641))))

(declare-fun lt!1675993 () List!50637)

(assert (=> d!1377289 (= res!1867348 (noDuplicate!720 lt!1675993))))

(assert (=> d!1377289 (= lt!1675993 (getKeysList!421 (toList!4236 lt!1675875)))))

(assert (=> d!1377289 (= (keys!17502 lt!1675875) lt!1675993)))

(declare-fun b!4493039 () Bool)

(declare-fun res!1867347 () Bool)

(assert (=> b!4493039 (=> (not res!1867347) (not e!2798641))))

(assert (=> b!4493039 (= res!1867347 (= (length!296 lt!1675993) (length!297 (toList!4236 lt!1675875))))))

(declare-fun res!1867349 () Bool)

(assert (=> b!4493040 (=> (not res!1867349) (not e!2798641))))

(assert (=> b!4493040 (= res!1867349 (forall!10149 lt!1675993 lambda!167566))))

(assert (=> b!4493041 (= e!2798641 (= (content!8227 lt!1675993) (content!8227 (map!11088 (toList!4236 lt!1675875) lambda!167567))))))

(assert (= (and d!1377289 res!1867348) b!4493039))

(assert (= (and b!4493039 res!1867347) b!4493040))

(assert (= (and b!4493040 res!1867349) b!4493041))

(declare-fun m!5218791 () Bool)

(assert (=> d!1377289 m!5218791))

(declare-fun m!5218793 () Bool)

(assert (=> d!1377289 m!5218793))

(declare-fun m!5218795 () Bool)

(assert (=> b!4493039 m!5218795))

(declare-fun m!5218797 () Bool)

(assert (=> b!4493039 m!5218797))

(declare-fun m!5218799 () Bool)

(assert (=> b!4493040 m!5218799))

(declare-fun m!5218801 () Bool)

(assert (=> b!4493041 m!5218801))

(declare-fun m!5218803 () Bool)

(assert (=> b!4493041 m!5218803))

(assert (=> b!4493041 m!5218803))

(declare-fun m!5218805 () Bool)

(assert (=> b!4493041 m!5218805))

(assert (=> b!4492713 d!1377289))

(declare-fun d!1377291 () Bool)

(declare-fun choose!28997 (Hashable!5509 K!11925) (_ BitVec 64))

(assert (=> d!1377291 (= (hash!2649 hashF!1107 key!3287) (choose!28997 hashF!1107 key!3287))))

(declare-fun bs!831794 () Bool)

(assert (= bs!831794 d!1377291))

(declare-fun m!5218807 () Bool)

(assert (=> bs!831794 m!5218807))

(assert (=> d!1377103 d!1377291))

(declare-fun d!1377293 () Bool)

(assert (=> d!1377293 (= (tail!7646 (toList!4235 lm!1477)) (t!357593 (toList!4235 lm!1477)))))

(assert (=> d!1377109 d!1377293))

(declare-fun d!1377295 () Bool)

(declare-fun e!2798643 () Bool)

(assert (=> d!1377295 e!2798643))

(declare-fun res!1867350 () Bool)

(assert (=> d!1377295 (=> res!1867350 e!2798643)))

(declare-fun lt!1675996 () Bool)

(assert (=> d!1377295 (= res!1867350 (not lt!1675996))))

(declare-fun lt!1675997 () Bool)

(assert (=> d!1377295 (= lt!1675996 lt!1675997)))

(declare-fun lt!1675994 () Unit!90944)

(declare-fun e!2798642 () Unit!90944)

(assert (=> d!1377295 (= lt!1675994 e!2798642)))

(declare-fun c!765409 () Bool)

(assert (=> d!1377295 (= c!765409 lt!1675997)))

(assert (=> d!1377295 (= lt!1675997 (containsKey!1650 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(assert (=> d!1377295 (= (contains!13162 lt!1675879 (_1!28740 (tuple2!50893 hash!344 newBucket!178))) lt!1675996)))

(declare-fun b!4493042 () Bool)

(declare-fun lt!1675995 () Unit!90944)

(assert (=> b!4493042 (= e!2798642 lt!1675995)))

(assert (=> b!4493042 (= lt!1675995 (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(assert (=> b!4493042 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun b!4493043 () Bool)

(declare-fun Unit!90985 () Unit!90944)

(assert (=> b!4493043 (= e!2798642 Unit!90985)))

(declare-fun b!4493044 () Bool)

(assert (=> b!4493044 (= e!2798643 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (= (and d!1377295 c!765409) b!4493042))

(assert (= (and d!1377295 (not c!765409)) b!4493043))

(assert (= (and d!1377295 (not res!1867350)) b!4493044))

(declare-fun m!5218809 () Bool)

(assert (=> d!1377295 m!5218809))

(declare-fun m!5218811 () Bool)

(assert (=> b!4493042 m!5218811))

(assert (=> b!4493042 m!5218339))

(assert (=> b!4493042 m!5218339))

(declare-fun m!5218813 () Bool)

(assert (=> b!4493042 m!5218813))

(assert (=> b!4493044 m!5218339))

(assert (=> b!4493044 m!5218339))

(assert (=> b!4493044 m!5218813))

(assert (=> d!1377119 d!1377295))

(declare-fun d!1377297 () Bool)

(declare-fun c!765410 () Bool)

(assert (=> d!1377297 (= c!765410 (and ((_ is Cons!50511) lt!1675877) (= (_1!28740 (h!56320 lt!1675877)) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(declare-fun e!2798644 () Option!11025)

(assert (=> d!1377297 (= (getValueByKey!1005 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178))) e!2798644)))

(declare-fun b!4493046 () Bool)

(declare-fun e!2798645 () Option!11025)

(assert (=> b!4493046 (= e!2798644 e!2798645)))

(declare-fun c!765411 () Bool)

(assert (=> b!4493046 (= c!765411 (and ((_ is Cons!50511) lt!1675877) (not (= (_1!28740 (h!56320 lt!1675877)) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))))

(declare-fun b!4493048 () Bool)

(assert (=> b!4493048 (= e!2798645 None!11024)))

(declare-fun b!4493047 () Bool)

(assert (=> b!4493047 (= e!2798645 (getValueByKey!1005 (t!357593 lt!1675877) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun b!4493045 () Bool)

(assert (=> b!4493045 (= e!2798644 (Some!11024 (_2!28740 (h!56320 lt!1675877))))))

(assert (= (and d!1377297 c!765410) b!4493045))

(assert (= (and d!1377297 (not c!765410)) b!4493046))

(assert (= (and b!4493046 c!765411) b!4493047))

(assert (= (and b!4493046 (not c!765411)) b!4493048))

(declare-fun m!5218815 () Bool)

(assert (=> b!4493047 m!5218815))

(assert (=> d!1377119 d!1377297))

(declare-fun d!1377299 () Bool)

(assert (=> d!1377299 (= (getValueByKey!1005 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178))) (Some!11024 (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun lt!1676000 () Unit!90944)

(declare-fun choose!28998 (List!50635 (_ BitVec 64) List!50634) Unit!90944)

(assert (=> d!1377299 (= lt!1676000 (choose!28998 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun e!2798648 () Bool)

(assert (=> d!1377299 e!2798648))

(declare-fun res!1867355 () Bool)

(assert (=> d!1377299 (=> (not res!1867355) (not e!2798648))))

(assert (=> d!1377299 (= res!1867355 (isStrictlySorted!387 lt!1675877))))

(assert (=> d!1377299 (= (lemmaContainsTupThenGetReturnValue!622 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))) lt!1676000)))

(declare-fun b!4493053 () Bool)

(declare-fun res!1867356 () Bool)

(assert (=> b!4493053 (=> (not res!1867356) (not e!2798648))))

(assert (=> b!4493053 (= res!1867356 (containsKey!1650 lt!1675877 (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun b!4493054 () Bool)

(assert (=> b!4493054 (= e!2798648 (contains!13163 lt!1675877 (tuple2!50893 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (= (and d!1377299 res!1867355) b!4493053))

(assert (= (and b!4493053 res!1867356) b!4493054))

(assert (=> d!1377299 m!5218333))

(declare-fun m!5218817 () Bool)

(assert (=> d!1377299 m!5218817))

(declare-fun m!5218819 () Bool)

(assert (=> d!1377299 m!5218819))

(declare-fun m!5218821 () Bool)

(assert (=> b!4493053 m!5218821))

(declare-fun m!5218823 () Bool)

(assert (=> b!4493054 m!5218823))

(assert (=> d!1377119 d!1377299))

(declare-fun d!1377301 () Bool)

(declare-fun e!2798662 () Bool)

(assert (=> d!1377301 e!2798662))

(declare-fun res!1867362 () Bool)

(assert (=> d!1377301 (=> (not res!1867362) (not e!2798662))))

(declare-fun lt!1676003 () List!50635)

(assert (=> d!1377301 (= res!1867362 (isStrictlySorted!387 lt!1676003))))

(declare-fun e!2798660 () List!50635)

(assert (=> d!1377301 (= lt!1676003 e!2798660)))

(declare-fun c!765420 () Bool)

(assert (=> d!1377301 (= c!765420 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (bvslt (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (=> d!1377301 (isStrictlySorted!387 (toList!4235 lt!1675671))))

(assert (=> d!1377301 (= (insertStrictlySorted!364 (toList!4235 lt!1675671) (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))) lt!1676003)))

(declare-fun bm!312607 () Bool)

(declare-fun call!312613 () List!50635)

(declare-fun e!2798659 () List!50635)

(declare-fun $colon$colon!878 (List!50635 tuple2!50892) List!50635)

(assert (=> bm!312607 (= call!312613 ($colon$colon!878 e!2798659 (ite c!765420 (h!56320 (toList!4235 lt!1675671)) (tuple2!50893 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))))

(declare-fun c!765423 () Bool)

(assert (=> bm!312607 (= c!765423 c!765420)))

(declare-fun b!4493075 () Bool)

(declare-fun e!2798663 () List!50635)

(declare-fun call!312612 () List!50635)

(assert (=> b!4493075 (= e!2798663 call!312612)))

(declare-fun b!4493076 () Bool)

(assert (=> b!4493076 (= e!2798660 call!312613)))

(declare-fun b!4493077 () Bool)

(declare-fun res!1867361 () Bool)

(assert (=> b!4493077 (=> (not res!1867361) (not e!2798662))))

(assert (=> b!4493077 (= res!1867361 (containsKey!1650 lt!1676003 (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun bm!312608 () Bool)

(declare-fun call!312614 () List!50635)

(assert (=> bm!312608 (= call!312614 call!312613)))

(declare-fun b!4493078 () Bool)

(declare-fun e!2798661 () List!50635)

(assert (=> b!4493078 (= e!2798661 call!312614)))

(declare-fun b!4493079 () Bool)

(assert (=> b!4493079 (= e!2798659 (insertStrictlySorted!364 (t!357593 (toList!4235 lt!1675671)) (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun c!765422 () Bool)

(declare-fun b!4493080 () Bool)

(assert (=> b!4493080 (= c!765422 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (bvsgt (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (=> b!4493080 (= e!2798661 e!2798663)))

(declare-fun bm!312609 () Bool)

(assert (=> bm!312609 (= call!312612 call!312614)))

(declare-fun b!4493081 () Bool)

(assert (=> b!4493081 (= e!2798663 call!312612)))

(declare-fun b!4493082 () Bool)

(assert (=> b!4493082 (= e!2798660 e!2798661)))

(declare-fun c!765421 () Bool)

(assert (=> b!4493082 (= c!765421 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (= (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(declare-fun b!4493083 () Bool)

(assert (=> b!4493083 (= e!2798662 (contains!13163 lt!1676003 (tuple2!50893 (_1!28740 (tuple2!50893 hash!344 newBucket!178)) (_2!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(declare-fun b!4493084 () Bool)

(assert (=> b!4493084 (= e!2798659 (ite c!765421 (t!357593 (toList!4235 lt!1675671)) (ite c!765422 (Cons!50511 (h!56320 (toList!4235 lt!1675671)) (t!357593 (toList!4235 lt!1675671))) Nil!50511)))))

(assert (= (and d!1377301 c!765420) b!4493076))

(assert (= (and d!1377301 (not c!765420)) b!4493082))

(assert (= (and b!4493082 c!765421) b!4493078))

(assert (= (and b!4493082 (not c!765421)) b!4493080))

(assert (= (and b!4493080 c!765422) b!4493075))

(assert (= (and b!4493080 (not c!765422)) b!4493081))

(assert (= (or b!4493075 b!4493081) bm!312609))

(assert (= (or b!4493078 bm!312609) bm!312608))

(assert (= (or b!4493076 bm!312608) bm!312607))

(assert (= (and bm!312607 c!765423) b!4493079))

(assert (= (and bm!312607 (not c!765423)) b!4493084))

(assert (= (and d!1377301 res!1867362) b!4493077))

(assert (= (and b!4493077 res!1867361) b!4493083))

(declare-fun m!5218825 () Bool)

(assert (=> b!4493083 m!5218825))

(declare-fun m!5218827 () Bool)

(assert (=> bm!312607 m!5218827))

(declare-fun m!5218829 () Bool)

(assert (=> b!4493077 m!5218829))

(declare-fun m!5218831 () Bool)

(assert (=> b!4493079 m!5218831))

(declare-fun m!5218833 () Bool)

(assert (=> d!1377301 m!5218833))

(declare-fun m!5218835 () Bool)

(assert (=> d!1377301 m!5218835))

(assert (=> d!1377119 d!1377301))

(declare-fun bs!831795 () Bool)

(declare-fun b!4493090 () Bool)

(assert (= bs!831795 (and b!4493090 b!4492888)))

(declare-fun lambda!167568 () Int)

(assert (=> bs!831795 (= (= (t!357592 (toList!4236 lt!1675673)) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167568 lambda!167548))))

(declare-fun bs!831796 () Bool)

(assert (= bs!831796 (and b!4493090 b!4492894)))

(assert (=> bs!831796 (= (= (t!357592 (toList!4236 lt!1675673)) (toList!4236 lt!1675674)) (= lambda!167568 lambda!167550))))

(declare-fun bs!831797 () Bool)

(assert (= bs!831797 (and b!4493090 b!4493040)))

(assert (=> bs!831797 (= (= (t!357592 (toList!4236 lt!1675673)) (toList!4236 lt!1675875)) (= lambda!167568 lambda!167566))))

(declare-fun bs!831798 () Bool)

(assert (= bs!831798 (and b!4493090 b!4492992)))

(assert (=> bs!831798 (= (= (t!357592 (toList!4236 lt!1675673)) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167568 lambda!167563))))

(declare-fun bs!831799 () Bool)

(assert (= bs!831799 (and b!4493090 b!4492996)))

(assert (=> bs!831799 (= (= (t!357592 (toList!4236 lt!1675673)) (toList!4236 lt!1675674)) (= lambda!167568 lambda!167564))))

(declare-fun bs!831800 () Bool)

(assert (= bs!831800 (and b!4493090 b!4492867)))

(assert (=> bs!831800 (= (= (t!357592 (toList!4236 lt!1675673)) (toList!4236 lt!1675673)) (= lambda!167568 lambda!167546))))

(declare-fun bs!831801 () Bool)

(assert (= bs!831801 (and b!4493090 b!4492994)))

(assert (=> bs!831801 (= (= (t!357592 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675674))) (= lambda!167568 lambda!167562))))

(assert (=> b!4493090 true))

(declare-fun bs!831802 () Bool)

(declare-fun b!4493088 () Bool)

(assert (= bs!831802 (and b!4493088 b!4493090)))

(declare-fun lambda!167569 () Int)

(assert (=> bs!831802 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (t!357592 (toList!4236 lt!1675673))) (= lambda!167569 lambda!167568))))

(declare-fun bs!831803 () Bool)

(assert (= bs!831803 (and b!4493088 b!4492888)))

(assert (=> bs!831803 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167569 lambda!167548))))

(declare-fun bs!831804 () Bool)

(assert (= bs!831804 (and b!4493088 b!4492894)))

(assert (=> bs!831804 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (toList!4236 lt!1675674)) (= lambda!167569 lambda!167550))))

(declare-fun bs!831805 () Bool)

(assert (= bs!831805 (and b!4493088 b!4493040)))

(assert (=> bs!831805 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (toList!4236 lt!1675875)) (= lambda!167569 lambda!167566))))

(declare-fun bs!831806 () Bool)

(assert (= bs!831806 (and b!4493088 b!4492992)))

(assert (=> bs!831806 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167569 lambda!167563))))

(declare-fun bs!831807 () Bool)

(assert (= bs!831807 (and b!4493088 b!4492996)))

(assert (=> bs!831807 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (toList!4236 lt!1675674)) (= lambda!167569 lambda!167564))))

(declare-fun bs!831808 () Bool)

(assert (= bs!831808 (and b!4493088 b!4492867)))

(assert (=> bs!831808 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (toList!4236 lt!1675673)) (= lambda!167569 lambda!167546))))

(declare-fun bs!831809 () Bool)

(assert (= bs!831809 (and b!4493088 b!4492994)))

(assert (=> bs!831809 (= (= (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673))) (t!357592 (toList!4236 lt!1675674))) (= lambda!167569 lambda!167562))))

(assert (=> b!4493088 true))

(declare-fun bs!831810 () Bool)

(declare-fun b!4493092 () Bool)

(assert (= bs!831810 (and b!4493092 b!4493090)))

(declare-fun lambda!167570 () Int)

(assert (=> bs!831810 (= (= (toList!4236 lt!1675673) (t!357592 (toList!4236 lt!1675673))) (= lambda!167570 lambda!167568))))

(declare-fun bs!831811 () Bool)

(assert (= bs!831811 (and b!4493092 b!4492888)))

(assert (=> bs!831811 (= (= (toList!4236 lt!1675673) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167570 lambda!167548))))

(declare-fun bs!831812 () Bool)

(assert (= bs!831812 (and b!4493092 b!4493088)))

(assert (=> bs!831812 (= (= (toList!4236 lt!1675673) (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673)))) (= lambda!167570 lambda!167569))))

(declare-fun bs!831813 () Bool)

(assert (= bs!831813 (and b!4493092 b!4492894)))

(assert (=> bs!831813 (= (= (toList!4236 lt!1675673) (toList!4236 lt!1675674)) (= lambda!167570 lambda!167550))))

(declare-fun bs!831814 () Bool)

(assert (= bs!831814 (and b!4493092 b!4493040)))

(assert (=> bs!831814 (= (= (toList!4236 lt!1675673) (toList!4236 lt!1675875)) (= lambda!167570 lambda!167566))))

(declare-fun bs!831815 () Bool)

(assert (= bs!831815 (and b!4493092 b!4492992)))

(assert (=> bs!831815 (= (= (toList!4236 lt!1675673) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167570 lambda!167563))))

(declare-fun bs!831816 () Bool)

(assert (= bs!831816 (and b!4493092 b!4492996)))

(assert (=> bs!831816 (= (= (toList!4236 lt!1675673) (toList!4236 lt!1675674)) (= lambda!167570 lambda!167564))))

(declare-fun bs!831817 () Bool)

(assert (= bs!831817 (and b!4493092 b!4492867)))

(assert (=> bs!831817 (= lambda!167570 lambda!167546)))

(declare-fun bs!831818 () Bool)

(assert (= bs!831818 (and b!4493092 b!4492994)))

(assert (=> bs!831818 (= (= (toList!4236 lt!1675673) (t!357592 (toList!4236 lt!1675674))) (= lambda!167570 lambda!167562))))

(assert (=> b!4493092 true))

(declare-fun bs!831819 () Bool)

(declare-fun b!4493086 () Bool)

(assert (= bs!831819 (and b!4493086 b!4493041)))

(declare-fun lambda!167571 () Int)

(assert (=> bs!831819 (= lambda!167571 lambda!167567)))

(declare-fun bs!831820 () Bool)

(assert (= bs!831820 (and b!4493086 b!4492868)))

(assert (=> bs!831820 (= lambda!167571 lambda!167547)))

(declare-fun bs!831821 () Bool)

(assert (= bs!831821 (and b!4493086 b!4492990)))

(assert (=> bs!831821 (= lambda!167571 lambda!167565)))

(declare-fun bs!831822 () Bool)

(assert (= bs!831822 (and b!4493086 b!4492889)))

(assert (=> bs!831822 (= lambda!167571 lambda!167549)))

(declare-fun bs!831823 () Bool)

(assert (= bs!831823 (and b!4493086 b!4492895)))

(assert (=> bs!831823 (= lambda!167571 lambda!167551)))

(declare-fun b!4493085 () Bool)

(assert (=> b!4493085 false))

(declare-fun e!2798664 () Unit!90944)

(declare-fun Unit!90990 () Unit!90944)

(assert (=> b!4493085 (= e!2798664 Unit!90990)))

(declare-fun lt!1676007 () List!50637)

(declare-fun e!2798665 () Bool)

(assert (=> b!4493086 (= e!2798665 (= (content!8227 lt!1676007) (content!8227 (map!11088 (toList!4236 lt!1675673) lambda!167571))))))

(declare-fun d!1377303 () Bool)

(assert (=> d!1377303 e!2798665))

(declare-fun res!1867364 () Bool)

(assert (=> d!1377303 (=> (not res!1867364) (not e!2798665))))

(assert (=> d!1377303 (= res!1867364 (noDuplicate!720 lt!1676007))))

(declare-fun e!2798667 () List!50637)

(assert (=> d!1377303 (= lt!1676007 e!2798667)))

(declare-fun c!765424 () Bool)

(assert (=> d!1377303 (= c!765424 ((_ is Cons!50510) (toList!4236 lt!1675673)))))

(assert (=> d!1377303 (invariantList!973 (toList!4236 lt!1675673))))

(assert (=> d!1377303 (= (getKeysList!421 (toList!4236 lt!1675673)) lt!1676007)))

(declare-fun b!4493087 () Bool)

(declare-fun Unit!90991 () Unit!90944)

(assert (=> b!4493087 (= e!2798664 Unit!90991)))

(assert (=> b!4493088 (= e!2798667 (Cons!50513 (_1!28739 (h!56319 (toList!4236 lt!1675673))) (getKeysList!421 (t!357592 (toList!4236 lt!1675673)))))))

(declare-fun c!765425 () Bool)

(assert (=> b!4493088 (= c!765425 (containsKey!1649 (t!357592 (toList!4236 lt!1675673)) (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(declare-fun lt!1676006 () Unit!90944)

(assert (=> b!4493088 (= lt!1676006 e!2798664)))

(declare-fun c!765426 () Bool)

(assert (=> b!4493088 (= c!765426 (contains!13165 (getKeysList!421 (t!357592 (toList!4236 lt!1675673))) (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(declare-fun lt!1676010 () Unit!90944)

(declare-fun e!2798666 () Unit!90944)

(assert (=> b!4493088 (= lt!1676010 e!2798666)))

(declare-fun lt!1676004 () List!50637)

(assert (=> b!4493088 (= lt!1676004 (getKeysList!421 (t!357592 (toList!4236 lt!1675673))))))

(declare-fun lt!1676009 () Unit!90944)

(assert (=> b!4493088 (= lt!1676009 (lemmaForallContainsAddHeadPreserves!140 (t!357592 (toList!4236 lt!1675673)) lt!1676004 (h!56319 (toList!4236 lt!1675673))))))

(assert (=> b!4493088 (forall!10149 lt!1676004 lambda!167569)))

(declare-fun lt!1676005 () Unit!90944)

(assert (=> b!4493088 (= lt!1676005 lt!1676009)))

(declare-fun b!4493089 () Bool)

(declare-fun Unit!90992 () Unit!90944)

(assert (=> b!4493089 (= e!2798666 Unit!90992)))

(assert (=> b!4493090 false))

(declare-fun lt!1676008 () Unit!90944)

(assert (=> b!4493090 (= lt!1676008 (forallContained!2402 (getKeysList!421 (t!357592 (toList!4236 lt!1675673))) lambda!167568 (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(declare-fun Unit!90993 () Unit!90944)

(assert (=> b!4493090 (= e!2798666 Unit!90993)))

(declare-fun b!4493091 () Bool)

(assert (=> b!4493091 (= e!2798667 Nil!50513)))

(declare-fun res!1867365 () Bool)

(assert (=> b!4493092 (=> (not res!1867365) (not e!2798665))))

(assert (=> b!4493092 (= res!1867365 (forall!10149 lt!1676007 lambda!167570))))

(declare-fun b!4493093 () Bool)

(declare-fun res!1867363 () Bool)

(assert (=> b!4493093 (=> (not res!1867363) (not e!2798665))))

(assert (=> b!4493093 (= res!1867363 (= (length!296 lt!1676007) (length!297 (toList!4236 lt!1675673))))))

(assert (= (and d!1377303 c!765424) b!4493088))

(assert (= (and d!1377303 (not c!765424)) b!4493091))

(assert (= (and b!4493088 c!765425) b!4493085))

(assert (= (and b!4493088 (not c!765425)) b!4493087))

(assert (= (and b!4493088 c!765426) b!4493090))

(assert (= (and b!4493088 (not c!765426)) b!4493089))

(assert (= (and d!1377303 res!1867364) b!4493093))

(assert (= (and b!4493093 res!1867363) b!4493092))

(assert (= (and b!4493092 res!1867365) b!4493086))

(declare-fun m!5218837 () Bool)

(assert (=> d!1377303 m!5218837))

(declare-fun m!5218839 () Bool)

(assert (=> d!1377303 m!5218839))

(declare-fun m!5218841 () Bool)

(assert (=> b!4493090 m!5218841))

(assert (=> b!4493090 m!5218841))

(declare-fun m!5218843 () Bool)

(assert (=> b!4493090 m!5218843))

(declare-fun m!5218845 () Bool)

(assert (=> b!4493086 m!5218845))

(declare-fun m!5218847 () Bool)

(assert (=> b!4493086 m!5218847))

(assert (=> b!4493086 m!5218847))

(declare-fun m!5218849 () Bool)

(assert (=> b!4493086 m!5218849))

(declare-fun m!5218851 () Bool)

(assert (=> b!4493092 m!5218851))

(declare-fun m!5218853 () Bool)

(assert (=> b!4493093 m!5218853))

(assert (=> b!4493093 m!5218541))

(assert (=> b!4493088 m!5218841))

(declare-fun m!5218855 () Bool)

(assert (=> b!4493088 m!5218855))

(assert (=> b!4493088 m!5218841))

(declare-fun m!5218857 () Bool)

(assert (=> b!4493088 m!5218857))

(declare-fun m!5218859 () Bool)

(assert (=> b!4493088 m!5218859))

(declare-fun m!5218861 () Bool)

(assert (=> b!4493088 m!5218861))

(assert (=> b!4492598 d!1377303))

(declare-fun d!1377305 () Bool)

(assert (=> d!1377305 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344))))

(declare-fun lt!1676013 () Unit!90944)

(declare-fun choose!28999 (List!50635 (_ BitVec 64)) Unit!90944)

(assert (=> d!1377305 (= lt!1676013 (choose!28999 (toList!4235 lt!1675671) hash!344))))

(declare-fun e!2798670 () Bool)

(assert (=> d!1377305 e!2798670))

(declare-fun res!1867368 () Bool)

(assert (=> d!1377305 (=> (not res!1867368) (not e!2798670))))

(assert (=> d!1377305 (= res!1867368 (isStrictlySorted!387 (toList!4235 lt!1675671)))))

(assert (=> d!1377305 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lt!1675671) hash!344) lt!1676013)))

(declare-fun b!4493096 () Bool)

(assert (=> b!4493096 (= e!2798670 (containsKey!1650 (toList!4235 lt!1675671) hash!344))))

(assert (= (and d!1377305 res!1867368) b!4493096))

(assert (=> d!1377305 m!5218237))

(assert (=> d!1377305 m!5218237))

(assert (=> d!1377305 m!5218297))

(declare-fun m!5218863 () Bool)

(assert (=> d!1377305 m!5218863))

(assert (=> d!1377305 m!5218835))

(assert (=> b!4493096 m!5218293))

(assert (=> b!4492702 d!1377305))

(declare-fun d!1377307 () Bool)

(assert (=> d!1377307 (= (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344)) (not (isEmpty!28568 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344))))))

(declare-fun bs!831824 () Bool)

(assert (= bs!831824 d!1377307))

(assert (=> bs!831824 m!5218237))

(declare-fun m!5218865 () Bool)

(assert (=> bs!831824 m!5218865))

(assert (=> b!4492702 d!1377307))

(declare-fun d!1377309 () Bool)

(declare-fun c!765427 () Bool)

(assert (=> d!1377309 (= c!765427 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (= (_1!28740 (h!56320 (toList!4235 lt!1675671))) hash!344)))))

(declare-fun e!2798671 () Option!11025)

(assert (=> d!1377309 (= (getValueByKey!1005 (toList!4235 lt!1675671) hash!344) e!2798671)))

(declare-fun b!4493098 () Bool)

(declare-fun e!2798672 () Option!11025)

(assert (=> b!4493098 (= e!2798671 e!2798672)))

(declare-fun c!765428 () Bool)

(assert (=> b!4493098 (= c!765428 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (not (= (_1!28740 (h!56320 (toList!4235 lt!1675671))) hash!344))))))

(declare-fun b!4493100 () Bool)

(assert (=> b!4493100 (= e!2798672 None!11024)))

(declare-fun b!4493099 () Bool)

(assert (=> b!4493099 (= e!2798672 (getValueByKey!1005 (t!357593 (toList!4235 lt!1675671)) hash!344))))

(declare-fun b!4493097 () Bool)

(assert (=> b!4493097 (= e!2798671 (Some!11024 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (= (and d!1377309 c!765427) b!4493097))

(assert (= (and d!1377309 (not c!765427)) b!4493098))

(assert (= (and b!4493098 c!765428) b!4493099))

(assert (= (and b!4493098 (not c!765428)) b!4493100))

(declare-fun m!5218867 () Bool)

(assert (=> b!4493099 m!5218867))

(assert (=> b!4492702 d!1377309))

(declare-fun d!1377311 () Bool)

(declare-fun res!1867369 () Bool)

(declare-fun e!2798673 () Bool)

(assert (=> d!1377311 (=> res!1867369 e!2798673)))

(assert (=> d!1377311 (= res!1867369 (and ((_ is Cons!50510) (t!357592 newBucket!178)) (= (_1!28739 (h!56319 (t!357592 newBucket!178))) (_1!28739 (h!56319 newBucket!178)))))))

(assert (=> d!1377311 (= (containsKey!1646 (t!357592 newBucket!178) (_1!28739 (h!56319 newBucket!178))) e!2798673)))

(declare-fun b!4493101 () Bool)

(declare-fun e!2798674 () Bool)

(assert (=> b!4493101 (= e!2798673 e!2798674)))

(declare-fun res!1867370 () Bool)

(assert (=> b!4493101 (=> (not res!1867370) (not e!2798674))))

(assert (=> b!4493101 (= res!1867370 ((_ is Cons!50510) (t!357592 newBucket!178)))))

(declare-fun b!4493102 () Bool)

(assert (=> b!4493102 (= e!2798674 (containsKey!1646 (t!357592 (t!357592 newBucket!178)) (_1!28739 (h!56319 newBucket!178))))))

(assert (= (and d!1377311 (not res!1867369)) b!4493101))

(assert (= (and b!4493101 res!1867370) b!4493102))

(declare-fun m!5218869 () Bool)

(assert (=> b!4493102 m!5218869))

(assert (=> b!4492653 d!1377311))

(declare-fun d!1377313 () Bool)

(declare-fun res!1867371 () Bool)

(declare-fun e!2798675 () Bool)

(assert (=> d!1377313 (=> res!1867371 e!2798675)))

(assert (=> d!1377313 (= res!1867371 (and ((_ is Cons!50510) (t!357592 lt!1675668)) (= (_1!28739 (h!56319 (t!357592 lt!1675668))) key!3287)))))

(assert (=> d!1377313 (= (containsKey!1646 (t!357592 lt!1675668) key!3287) e!2798675)))

(declare-fun b!4493103 () Bool)

(declare-fun e!2798676 () Bool)

(assert (=> b!4493103 (= e!2798675 e!2798676)))

(declare-fun res!1867372 () Bool)

(assert (=> b!4493103 (=> (not res!1867372) (not e!2798676))))

(assert (=> b!4493103 (= res!1867372 ((_ is Cons!50510) (t!357592 lt!1675668)))))

(declare-fun b!4493104 () Bool)

(assert (=> b!4493104 (= e!2798676 (containsKey!1646 (t!357592 (t!357592 lt!1675668)) key!3287))))

(assert (= (and d!1377313 (not res!1867371)) b!4493103))

(assert (= (and b!4493103 res!1867372) b!4493104))

(declare-fun m!5218871 () Bool)

(assert (=> b!4493104 m!5218871))

(assert (=> b!4492473 d!1377313))

(assert (=> b!4492704 d!1377307))

(assert (=> b!4492704 d!1377309))

(assert (=> d!1377007 d!1377273))

(declare-fun d!1377315 () Bool)

(assert (=> d!1377315 (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) lt!1675667))))

(declare-fun lt!1676014 () Unit!90944)

(assert (=> d!1377315 (= lt!1676014 (choose!28999 (toList!4235 lm!1477) lt!1675667))))

(declare-fun e!2798677 () Bool)

(assert (=> d!1377315 e!2798677))

(declare-fun res!1867373 () Bool)

(assert (=> d!1377315 (=> (not res!1867373) (not e!2798677))))

(assert (=> d!1377315 (= res!1867373 (isStrictlySorted!387 (toList!4235 lm!1477)))))

(assert (=> d!1377315 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lm!1477) lt!1675667) lt!1676014)))

(declare-fun b!4493105 () Bool)

(assert (=> b!4493105 (= e!2798677 (containsKey!1650 (toList!4235 lm!1477) lt!1675667))))

(assert (= (and d!1377315 res!1867373) b!4493105))

(assert (=> d!1377315 m!5218253))

(assert (=> d!1377315 m!5218253))

(assert (=> d!1377315 m!5218255))

(declare-fun m!5218873 () Bool)

(assert (=> d!1377315 m!5218873))

(assert (=> d!1377315 m!5218247))

(assert (=> b!4493105 m!5218249))

(assert (=> b!4492673 d!1377315))

(assert (=> b!4492673 d!1377263))

(assert (=> b!4492673 d!1377265))

(declare-fun d!1377317 () Bool)

(assert (=> d!1377317 (= (get!16493 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344)) (v!44478 (getValueByKey!1005 (toList!4235 lt!1675671) hash!344)))))

(assert (=> d!1377081 d!1377317))

(assert (=> d!1377081 d!1377309))

(declare-fun d!1377319 () Bool)

(declare-fun lt!1676015 () Bool)

(assert (=> d!1377319 (= lt!1676015 (select (content!8227 (keys!17502 lt!1675673)) key!3287))))

(declare-fun e!2798678 () Bool)

(assert (=> d!1377319 (= lt!1676015 e!2798678)))

(declare-fun res!1867375 () Bool)

(assert (=> d!1377319 (=> (not res!1867375) (not e!2798678))))

(assert (=> d!1377319 (= res!1867375 ((_ is Cons!50513) (keys!17502 lt!1675673)))))

(assert (=> d!1377319 (= (contains!13165 (keys!17502 lt!1675673) key!3287) lt!1676015)))

(declare-fun b!4493106 () Bool)

(declare-fun e!2798679 () Bool)

(assert (=> b!4493106 (= e!2798678 e!2798679)))

(declare-fun res!1867374 () Bool)

(assert (=> b!4493106 (=> res!1867374 e!2798679)))

(assert (=> b!4493106 (= res!1867374 (= (h!56324 (keys!17502 lt!1675673)) key!3287))))

(declare-fun b!4493107 () Bool)

(assert (=> b!4493107 (= e!2798679 (contains!13165 (t!357595 (keys!17502 lt!1675673)) key!3287))))

(assert (= (and d!1377319 res!1867375) b!4493106))

(assert (= (and b!4493106 (not res!1867374)) b!4493107))

(assert (=> d!1377319 m!5218117))

(assert (=> d!1377319 m!5218321))

(declare-fun m!5218875 () Bool)

(assert (=> d!1377319 m!5218875))

(declare-fun m!5218877 () Bool)

(assert (=> b!4493107 m!5218877))

(assert (=> b!4492600 d!1377319))

(assert (=> b!4492600 d!1377197))

(declare-fun d!1377321 () Bool)

(declare-fun c!765431 () Bool)

(assert (=> d!1377321 (= c!765431 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(declare-fun e!2798682 () (InoxSet tuple2!50892))

(assert (=> d!1377321 (= (content!8225 (toList!4235 lm!1477)) e!2798682)))

(declare-fun b!4493112 () Bool)

(assert (=> b!4493112 (= e!2798682 ((as const (Array tuple2!50892 Bool)) false))))

(declare-fun b!4493113 () Bool)

(assert (=> b!4493113 (= e!2798682 ((_ map or) (store ((as const (Array tuple2!50892 Bool)) false) (h!56320 (toList!4235 lm!1477)) true) (content!8225 (t!357593 (toList!4235 lm!1477)))))))

(assert (= (and d!1377321 c!765431) b!4493112))

(assert (= (and d!1377321 (not c!765431)) b!4493113))

(declare-fun m!5218879 () Bool)

(assert (=> b!4493113 m!5218879))

(assert (=> b!4493113 m!5218287))

(assert (=> d!1377093 d!1377321))

(declare-fun d!1377323 () Bool)

(declare-fun res!1867376 () Bool)

(declare-fun e!2798683 () Bool)

(assert (=> d!1377323 (=> res!1867376 e!2798683)))

(assert (=> d!1377323 (= res!1867376 (not ((_ is Cons!50510) (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(assert (=> d!1377323 (= (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477)))) e!2798683)))

(declare-fun b!4493114 () Bool)

(declare-fun e!2798684 () Bool)

(assert (=> b!4493114 (= e!2798683 e!2798684)))

(declare-fun res!1867377 () Bool)

(assert (=> b!4493114 (=> (not res!1867377) (not e!2798684))))

(assert (=> b!4493114 (= res!1867377 (not (containsKey!1646 (t!357592 (_2!28740 (h!56320 (toList!4235 lm!1477)))) (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))))

(declare-fun b!4493115 () Bool)

(assert (=> b!4493115 (= e!2798684 (noDuplicateKeys!1114 (t!357592 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(assert (= (and d!1377323 (not res!1867376)) b!4493114))

(assert (= (and b!4493114 res!1867377) b!4493115))

(declare-fun m!5218881 () Bool)

(assert (=> b!4493114 m!5218881))

(declare-fun m!5218883 () Bool)

(assert (=> b!4493115 m!5218883))

(assert (=> bs!831738 d!1377323))

(declare-fun d!1377325 () Bool)

(assert (=> d!1377325 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))))

(declare-fun lt!1676016 () Unit!90944)

(assert (=> d!1377325 (= lt!1676016 (choose!28991 (toList!4236 lt!1675673) key!3287))))

(assert (=> d!1377325 (invariantList!973 (toList!4236 lt!1675673))))

(assert (=> d!1377325 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675673) key!3287) lt!1676016)))

(declare-fun bs!831825 () Bool)

(assert (= bs!831825 d!1377325))

(assert (=> bs!831825 m!5218123))

(assert (=> bs!831825 m!5218123))

(assert (=> bs!831825 m!5218125))

(declare-fun m!5218885 () Bool)

(assert (=> bs!831825 m!5218885))

(assert (=> bs!831825 m!5218839))

(assert (=> b!4492602 d!1377325))

(assert (=> b!4492602 d!1377281))

(assert (=> b!4492602 d!1377283))

(declare-fun d!1377327 () Bool)

(assert (=> d!1377327 (contains!13165 (getKeysList!421 (toList!4236 lt!1675673)) key!3287)))

(declare-fun lt!1676017 () Unit!90944)

(assert (=> d!1377327 (= lt!1676017 (choose!28992 (toList!4236 lt!1675673) key!3287))))

(assert (=> d!1377327 (invariantList!973 (toList!4236 lt!1675673))))

(assert (=> d!1377327 (= (lemmaInListThenGetKeysListContains!417 (toList!4236 lt!1675673) key!3287) lt!1676017)))

(declare-fun bs!831826 () Bool)

(assert (= bs!831826 d!1377327))

(assert (=> bs!831826 m!5218115))

(assert (=> bs!831826 m!5218115))

(declare-fun m!5218887 () Bool)

(assert (=> bs!831826 m!5218887))

(declare-fun m!5218889 () Bool)

(assert (=> bs!831826 m!5218889))

(assert (=> bs!831826 m!5218839))

(assert (=> b!4492602 d!1377327))

(declare-fun d!1377329 () Bool)

(declare-fun lt!1676018 () Bool)

(assert (=> d!1377329 (= lt!1676018 (select (content!8225 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1675669))))

(declare-fun e!2798686 () Bool)

(assert (=> d!1377329 (= lt!1676018 e!2798686)))

(declare-fun res!1867379 () Bool)

(assert (=> d!1377329 (=> (not res!1867379) (not e!2798686))))

(assert (=> d!1377329 (= res!1867379 ((_ is Cons!50511) (t!357593 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377329 (= (contains!13163 (t!357593 (t!357593 (toList!4235 lm!1477))) lt!1675669) lt!1676018)))

(declare-fun b!4493116 () Bool)

(declare-fun e!2798685 () Bool)

(assert (=> b!4493116 (= e!2798686 e!2798685)))

(declare-fun res!1867378 () Bool)

(assert (=> b!4493116 (=> res!1867378 e!2798685)))

(assert (=> b!4493116 (= res!1867378 (= (h!56320 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1675669))))

(declare-fun b!4493117 () Bool)

(assert (=> b!4493117 (= e!2798685 (contains!13163 (t!357593 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1675669))))

(assert (= (and d!1377329 res!1867379) b!4493116))

(assert (= (and b!4493116 (not res!1867378)) b!4493117))

(declare-fun m!5218891 () Bool)

(assert (=> d!1377329 m!5218891))

(declare-fun m!5218893 () Bool)

(assert (=> d!1377329 m!5218893))

(declare-fun m!5218895 () Bool)

(assert (=> b!4493117 m!5218895))

(assert (=> b!4492701 d!1377329))

(assert (=> b!4492738 d!1377257))

(assert (=> b!4492738 d!1377205))

(declare-fun d!1377331 () Bool)

(declare-fun noDuplicatedKeys!235 (List!50634) Bool)

(assert (=> d!1377331 (= (invariantList!973 (toList!4236 lt!1675797)) (noDuplicatedKeys!235 (toList!4236 lt!1675797)))))

(declare-fun bs!831827 () Bool)

(assert (= bs!831827 d!1377331))

(declare-fun m!5218897 () Bool)

(assert (=> bs!831827 m!5218897))

(assert (=> d!1377051 d!1377331))

(declare-fun d!1377333 () Bool)

(declare-fun res!1867380 () Bool)

(declare-fun e!2798687 () Bool)

(assert (=> d!1377333 (=> res!1867380 e!2798687)))

(assert (=> d!1377333 (= res!1867380 ((_ is Nil!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377333 (= (forall!10145 (toList!4235 lt!1675671) lambda!167503) e!2798687)))

(declare-fun b!4493118 () Bool)

(declare-fun e!2798688 () Bool)

(assert (=> b!4493118 (= e!2798687 e!2798688)))

(declare-fun res!1867381 () Bool)

(assert (=> b!4493118 (=> (not res!1867381) (not e!2798688))))

(assert (=> b!4493118 (= res!1867381 (dynLambda!21087 lambda!167503 (h!56320 (toList!4235 lt!1675671))))))

(declare-fun b!4493119 () Bool)

(assert (=> b!4493119 (= e!2798688 (forall!10145 (t!357593 (toList!4235 lt!1675671)) lambda!167503))))

(assert (= (and d!1377333 (not res!1867380)) b!4493118))

(assert (= (and b!4493118 res!1867381) b!4493119))

(declare-fun b_lambda!151665 () Bool)

(assert (=> (not b_lambda!151665) (not b!4493118)))

(declare-fun m!5218899 () Bool)

(assert (=> b!4493118 m!5218899))

(declare-fun m!5218901 () Bool)

(assert (=> b!4493119 m!5218901))

(assert (=> d!1377051 d!1377333))

(declare-fun d!1377335 () Bool)

(assert (=> d!1377335 (= (invariantList!973 (toList!4236 lt!1675880)) (noDuplicatedKeys!235 (toList!4236 lt!1675880)))))

(declare-fun bs!831828 () Bool)

(assert (= bs!831828 d!1377335))

(declare-fun m!5218903 () Bool)

(assert (=> bs!831828 m!5218903))

(assert (=> d!1377121 d!1377335))

(declare-fun d!1377337 () Bool)

(declare-fun res!1867382 () Bool)

(declare-fun e!2798689 () Bool)

(assert (=> d!1377337 (=> res!1867382 e!2798689)))

(assert (=> d!1377337 (= res!1867382 ((_ is Nil!50511) (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))

(assert (=> d!1377337 (= (forall!10145 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))) lambda!167525) e!2798689)))

(declare-fun b!4493120 () Bool)

(declare-fun e!2798690 () Bool)

(assert (=> b!4493120 (= e!2798689 e!2798690)))

(declare-fun res!1867383 () Bool)

(assert (=> b!4493120 (=> (not res!1867383) (not e!2798690))))

(assert (=> b!4493120 (= res!1867383 (dynLambda!21087 lambda!167525 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))

(declare-fun b!4493121 () Bool)

(assert (=> b!4493121 (= e!2798690 (forall!10145 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))) lambda!167525))))

(assert (= (and d!1377337 (not res!1867382)) b!4493120))

(assert (= (and b!4493120 res!1867383) b!4493121))

(declare-fun b_lambda!151667 () Bool)

(assert (=> (not b_lambda!151667) (not b!4493120)))

(declare-fun m!5218905 () Bool)

(assert (=> b!4493120 m!5218905))

(declare-fun m!5218907 () Bool)

(assert (=> b!4493121 m!5218907))

(assert (=> d!1377121 d!1377337))

(declare-fun d!1377339 () Bool)

(declare-fun e!2798692 () Bool)

(assert (=> d!1377339 e!2798692))

(declare-fun res!1867384 () Bool)

(assert (=> d!1377339 (=> res!1867384 e!2798692)))

(declare-fun lt!1676021 () Bool)

(assert (=> d!1377339 (= res!1867384 (not lt!1676021))))

(declare-fun lt!1676022 () Bool)

(assert (=> d!1377339 (= lt!1676021 lt!1676022)))

(declare-fun lt!1676019 () Unit!90944)

(declare-fun e!2798691 () Unit!90944)

(assert (=> d!1377339 (= lt!1676019 e!2798691)))

(declare-fun c!765432 () Bool)

(assert (=> d!1377339 (= c!765432 lt!1676022)))

(assert (=> d!1377339 (= lt!1676022 (containsKey!1650 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477))))))

(assert (=> d!1377339 (= (contains!13162 lt!1675872 (_1!28740 (head!9322 lm!1477))) lt!1676021)))

(declare-fun b!4493122 () Bool)

(declare-fun lt!1676020 () Unit!90944)

(assert (=> b!4493122 (= e!2798691 lt!1676020)))

(assert (=> b!4493122 (= lt!1676020 (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477))))))

(assert (=> b!4493122 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477))))))

(declare-fun b!4493123 () Bool)

(declare-fun Unit!91006 () Unit!90944)

(assert (=> b!4493123 (= e!2798691 Unit!91006)))

(declare-fun b!4493124 () Bool)

(assert (=> b!4493124 (= e!2798692 (isDefined!8312 (getValueByKey!1005 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477)))))))

(assert (= (and d!1377339 c!765432) b!4493122))

(assert (= (and d!1377339 (not c!765432)) b!4493123))

(assert (= (and d!1377339 (not res!1867384)) b!4493124))

(declare-fun m!5218909 () Bool)

(assert (=> d!1377339 m!5218909))

(declare-fun m!5218911 () Bool)

(assert (=> b!4493122 m!5218911))

(assert (=> b!4493122 m!5218309))

(assert (=> b!4493122 m!5218309))

(declare-fun m!5218913 () Bool)

(assert (=> b!4493122 m!5218913))

(assert (=> b!4493124 m!5218309))

(assert (=> b!4493124 m!5218309))

(assert (=> b!4493124 m!5218913))

(assert (=> d!1377111 d!1377339))

(declare-fun d!1377341 () Bool)

(declare-fun c!765433 () Bool)

(assert (=> d!1377341 (= c!765433 (and ((_ is Cons!50511) lt!1675870) (= (_1!28740 (h!56320 lt!1675870)) (_1!28740 (head!9322 lm!1477)))))))

(declare-fun e!2798693 () Option!11025)

(assert (=> d!1377341 (= (getValueByKey!1005 lt!1675870 (_1!28740 (head!9322 lm!1477))) e!2798693)))

(declare-fun b!4493126 () Bool)

(declare-fun e!2798694 () Option!11025)

(assert (=> b!4493126 (= e!2798693 e!2798694)))

(declare-fun c!765434 () Bool)

(assert (=> b!4493126 (= c!765434 (and ((_ is Cons!50511) lt!1675870) (not (= (_1!28740 (h!56320 lt!1675870)) (_1!28740 (head!9322 lm!1477))))))))

(declare-fun b!4493128 () Bool)

(assert (=> b!4493128 (= e!2798694 None!11024)))

(declare-fun b!4493127 () Bool)

(assert (=> b!4493127 (= e!2798694 (getValueByKey!1005 (t!357593 lt!1675870) (_1!28740 (head!9322 lm!1477))))))

(declare-fun b!4493125 () Bool)

(assert (=> b!4493125 (= e!2798693 (Some!11024 (_2!28740 (h!56320 lt!1675870))))))

(assert (= (and d!1377341 c!765433) b!4493125))

(assert (= (and d!1377341 (not c!765433)) b!4493126))

(assert (= (and b!4493126 c!765434) b!4493127))

(assert (= (and b!4493126 (not c!765434)) b!4493128))

(declare-fun m!5218915 () Bool)

(assert (=> b!4493127 m!5218915))

(assert (=> d!1377111 d!1377341))

(declare-fun d!1377343 () Bool)

(assert (=> d!1377343 (= (getValueByKey!1005 lt!1675870 (_1!28740 (head!9322 lm!1477))) (Some!11024 (_2!28740 (head!9322 lm!1477))))))

(declare-fun lt!1676023 () Unit!90944)

(assert (=> d!1377343 (= lt!1676023 (choose!28998 lt!1675870 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))))))

(declare-fun e!2798695 () Bool)

(assert (=> d!1377343 e!2798695))

(declare-fun res!1867385 () Bool)

(assert (=> d!1377343 (=> (not res!1867385) (not e!2798695))))

(assert (=> d!1377343 (= res!1867385 (isStrictlySorted!387 lt!1675870))))

(assert (=> d!1377343 (= (lemmaContainsTupThenGetReturnValue!622 lt!1675870 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))) lt!1676023)))

(declare-fun b!4493129 () Bool)

(declare-fun res!1867386 () Bool)

(assert (=> b!4493129 (=> (not res!1867386) (not e!2798695))))

(assert (=> b!4493129 (= res!1867386 (containsKey!1650 lt!1675870 (_1!28740 (head!9322 lm!1477))))))

(declare-fun b!4493130 () Bool)

(assert (=> b!4493130 (= e!2798695 (contains!13163 lt!1675870 (tuple2!50893 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477)))))))

(assert (= (and d!1377343 res!1867385) b!4493129))

(assert (= (and b!4493129 res!1867386) b!4493130))

(assert (=> d!1377343 m!5218303))

(declare-fun m!5218917 () Bool)

(assert (=> d!1377343 m!5218917))

(declare-fun m!5218919 () Bool)

(assert (=> d!1377343 m!5218919))

(declare-fun m!5218921 () Bool)

(assert (=> b!4493129 m!5218921))

(declare-fun m!5218923 () Bool)

(assert (=> b!4493130 m!5218923))

(assert (=> d!1377111 d!1377343))

(declare-fun d!1377345 () Bool)

(declare-fun e!2798699 () Bool)

(assert (=> d!1377345 e!2798699))

(declare-fun res!1867388 () Bool)

(assert (=> d!1377345 (=> (not res!1867388) (not e!2798699))))

(declare-fun lt!1676024 () List!50635)

(assert (=> d!1377345 (= res!1867388 (isStrictlySorted!387 lt!1676024))))

(declare-fun e!2798697 () List!50635)

(assert (=> d!1377345 (= lt!1676024 e!2798697)))

(declare-fun c!765435 () Bool)

(assert (=> d!1377345 (= c!765435 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (bvslt (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (head!9322 lm!1477)))))))

(assert (=> d!1377345 (isStrictlySorted!387 (toList!4235 lt!1675671))))

(assert (=> d!1377345 (= (insertStrictlySorted!364 (toList!4235 lt!1675671) (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))) lt!1676024)))

(declare-fun bm!312610 () Bool)

(declare-fun call!312616 () List!50635)

(declare-fun e!2798696 () List!50635)

(assert (=> bm!312610 (= call!312616 ($colon$colon!878 e!2798696 (ite c!765435 (h!56320 (toList!4235 lt!1675671)) (tuple2!50893 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))))))))

(declare-fun c!765438 () Bool)

(assert (=> bm!312610 (= c!765438 c!765435)))

(declare-fun b!4493131 () Bool)

(declare-fun e!2798700 () List!50635)

(declare-fun call!312615 () List!50635)

(assert (=> b!4493131 (= e!2798700 call!312615)))

(declare-fun b!4493132 () Bool)

(assert (=> b!4493132 (= e!2798697 call!312616)))

(declare-fun b!4493133 () Bool)

(declare-fun res!1867387 () Bool)

(assert (=> b!4493133 (=> (not res!1867387) (not e!2798699))))

(assert (=> b!4493133 (= res!1867387 (containsKey!1650 lt!1676024 (_1!28740 (head!9322 lm!1477))))))

(declare-fun bm!312611 () Bool)

(declare-fun call!312617 () List!50635)

(assert (=> bm!312611 (= call!312617 call!312616)))

(declare-fun b!4493134 () Bool)

(declare-fun e!2798698 () List!50635)

(assert (=> b!4493134 (= e!2798698 call!312617)))

(declare-fun b!4493135 () Bool)

(assert (=> b!4493135 (= e!2798696 (insertStrictlySorted!364 (t!357593 (toList!4235 lt!1675671)) (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477))))))

(declare-fun b!4493136 () Bool)

(declare-fun c!765437 () Bool)

(assert (=> b!4493136 (= c!765437 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (bvsgt (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (head!9322 lm!1477)))))))

(assert (=> b!4493136 (= e!2798698 e!2798700)))

(declare-fun bm!312612 () Bool)

(assert (=> bm!312612 (= call!312615 call!312617)))

(declare-fun b!4493137 () Bool)

(assert (=> b!4493137 (= e!2798700 call!312615)))

(declare-fun b!4493138 () Bool)

(assert (=> b!4493138 (= e!2798697 e!2798698)))

(declare-fun c!765436 () Bool)

(assert (=> b!4493138 (= c!765436 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (= (_1!28740 (h!56320 (toList!4235 lt!1675671))) (_1!28740 (head!9322 lm!1477)))))))

(declare-fun b!4493139 () Bool)

(assert (=> b!4493139 (= e!2798699 (contains!13163 lt!1676024 (tuple2!50893 (_1!28740 (head!9322 lm!1477)) (_2!28740 (head!9322 lm!1477)))))))

(declare-fun b!4493140 () Bool)

(assert (=> b!4493140 (= e!2798696 (ite c!765436 (t!357593 (toList!4235 lt!1675671)) (ite c!765437 (Cons!50511 (h!56320 (toList!4235 lt!1675671)) (t!357593 (toList!4235 lt!1675671))) Nil!50511)))))

(assert (= (and d!1377345 c!765435) b!4493132))

(assert (= (and d!1377345 (not c!765435)) b!4493138))

(assert (= (and b!4493138 c!765436) b!4493134))

(assert (= (and b!4493138 (not c!765436)) b!4493136))

(assert (= (and b!4493136 c!765437) b!4493131))

(assert (= (and b!4493136 (not c!765437)) b!4493137))

(assert (= (or b!4493131 b!4493137) bm!312612))

(assert (= (or b!4493134 bm!312612) bm!312611))

(assert (= (or b!4493132 bm!312611) bm!312610))

(assert (= (and bm!312610 c!765438) b!4493135))

(assert (= (and bm!312610 (not c!765438)) b!4493140))

(assert (= (and d!1377345 res!1867388) b!4493133))

(assert (= (and b!4493133 res!1867387) b!4493139))

(declare-fun m!5218925 () Bool)

(assert (=> b!4493139 m!5218925))

(declare-fun m!5218927 () Bool)

(assert (=> bm!312610 m!5218927))

(declare-fun m!5218929 () Bool)

(assert (=> b!4493133 m!5218929))

(declare-fun m!5218931 () Bool)

(assert (=> b!4493135 m!5218931))

(declare-fun m!5218933 () Bool)

(assert (=> d!1377345 m!5218933))

(assert (=> d!1377345 m!5218835))

(assert (=> d!1377111 d!1377345))

(declare-fun c!765439 () Bool)

(declare-fun d!1377347 () Bool)

(assert (=> d!1377347 (= c!765439 (and ((_ is Cons!50511) (toList!4235 lt!1675879)) (= (_1!28740 (h!56320 (toList!4235 lt!1675879))) (_1!28740 (tuple2!50893 hash!344 newBucket!178)))))))

(declare-fun e!2798701 () Option!11025)

(assert (=> d!1377347 (= (getValueByKey!1005 (toList!4235 lt!1675879) (_1!28740 (tuple2!50893 hash!344 newBucket!178))) e!2798701)))

(declare-fun b!4493144 () Bool)

(declare-fun e!2798702 () Option!11025)

(assert (=> b!4493144 (= e!2798701 e!2798702)))

(declare-fun c!765440 () Bool)

(assert (=> b!4493144 (= c!765440 (and ((_ is Cons!50511) (toList!4235 lt!1675879)) (not (= (_1!28740 (h!56320 (toList!4235 lt!1675879))) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))))

(declare-fun b!4493146 () Bool)

(assert (=> b!4493146 (= e!2798702 None!11024)))

(declare-fun b!4493145 () Bool)

(assert (=> b!4493145 (= e!2798702 (getValueByKey!1005 (t!357593 (toList!4235 lt!1675879)) (_1!28740 (tuple2!50893 hash!344 newBucket!178))))))

(declare-fun b!4493143 () Bool)

(assert (=> b!4493143 (= e!2798701 (Some!11024 (_2!28740 (h!56320 (toList!4235 lt!1675879)))))))

(assert (= (and d!1377347 c!765439) b!4493143))

(assert (= (and d!1377347 (not c!765439)) b!4493144))

(assert (= (and b!4493144 c!765440) b!4493145))

(assert (= (and b!4493144 (not c!765440)) b!4493146))

(declare-fun m!5218935 () Bool)

(assert (=> b!4493145 m!5218935))

(assert (=> b!4492714 d!1377347))

(assert (=> b!4492687 d!1377093))

(declare-fun d!1377349 () Bool)

(declare-fun res!1867389 () Bool)

(declare-fun e!2798705 () Bool)

(assert (=> d!1377349 (=> res!1867389 e!2798705)))

(assert (=> d!1377349 (= res!1867389 (not ((_ is Cons!50510) (_2!28740 lt!1675669))))))

(assert (=> d!1377349 (= (noDuplicateKeys!1114 (_2!28740 lt!1675669)) e!2798705)))

(declare-fun b!4493149 () Bool)

(declare-fun e!2798706 () Bool)

(assert (=> b!4493149 (= e!2798705 e!2798706)))

(declare-fun res!1867390 () Bool)

(assert (=> b!4493149 (=> (not res!1867390) (not e!2798706))))

(assert (=> b!4493149 (= res!1867390 (not (containsKey!1646 (t!357592 (_2!28740 lt!1675669)) (_1!28739 (h!56319 (_2!28740 lt!1675669))))))))

(declare-fun b!4493150 () Bool)

(assert (=> b!4493150 (= e!2798706 (noDuplicateKeys!1114 (t!357592 (_2!28740 lt!1675669))))))

(assert (= (and d!1377349 (not res!1867389)) b!4493149))

(assert (= (and b!4493149 res!1867390) b!4493150))

(declare-fun m!5218937 () Bool)

(assert (=> b!4493149 m!5218937))

(declare-fun m!5218939 () Bool)

(assert (=> b!4493150 m!5218939))

(assert (=> bs!831737 d!1377349))

(assert (=> b!4492595 d!1377183))

(declare-fun d!1377351 () Bool)

(assert (=> d!1377351 (containsKey!1649 (toList!4236 lt!1675673) key!3287)))

(declare-fun lt!1676031 () Unit!90944)

(assert (=> d!1377351 (= lt!1676031 (choose!28996 (toList!4236 lt!1675673) key!3287))))

(assert (=> d!1377351 (invariantList!973 (toList!4236 lt!1675673))))

(assert (=> d!1377351 (= (lemmaInGetKeysListThenContainsKey!420 (toList!4236 lt!1675673) key!3287) lt!1676031)))

(declare-fun bs!831829 () Bool)

(assert (= bs!831829 d!1377351))

(assert (=> bs!831829 m!5218119))

(declare-fun m!5218941 () Bool)

(assert (=> bs!831829 m!5218941))

(assert (=> bs!831829 m!5218839))

(assert (=> b!4492595 d!1377351))

(declare-fun d!1377353 () Bool)

(declare-fun lt!1676032 () Bool)

(assert (=> d!1377353 (= lt!1676032 (select (content!8227 e!2798456) key!3287))))

(declare-fun e!2798707 () Bool)

(assert (=> d!1377353 (= lt!1676032 e!2798707)))

(declare-fun res!1867392 () Bool)

(assert (=> d!1377353 (=> (not res!1867392) (not e!2798707))))

(assert (=> d!1377353 (= res!1867392 ((_ is Cons!50513) e!2798456))))

(assert (=> d!1377353 (= (contains!13165 e!2798456 key!3287) lt!1676032)))

(declare-fun b!4493151 () Bool)

(declare-fun e!2798708 () Bool)

(assert (=> b!4493151 (= e!2798707 e!2798708)))

(declare-fun res!1867391 () Bool)

(assert (=> b!4493151 (=> res!1867391 e!2798708)))

(assert (=> b!4493151 (= res!1867391 (= (h!56324 e!2798456) key!3287))))

(declare-fun b!4493152 () Bool)

(assert (=> b!4493152 (= e!2798708 (contains!13165 (t!357595 e!2798456) key!3287))))

(assert (= (and d!1377353 res!1867392) b!4493151))

(assert (= (and b!4493151 (not res!1867391)) b!4493152))

(declare-fun m!5218943 () Bool)

(assert (=> d!1377353 m!5218943))

(declare-fun m!5218945 () Bool)

(assert (=> d!1377353 m!5218945))

(declare-fun m!5218947 () Bool)

(assert (=> b!4493152 m!5218947))

(assert (=> bm!312586 d!1377353))

(declare-fun c!765445 () Bool)

(declare-fun d!1377355 () Bool)

(assert (=> d!1377355 (= c!765445 ((_ is Nil!50510) (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))

(declare-fun e!2798711 () (InoxSet tuple2!50890))

(assert (=> d!1377355 (= (content!8226 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) e!2798711)))

(declare-fun b!4493157 () Bool)

(assert (=> b!4493157 (= e!2798711 ((as const (Array tuple2!50890 Bool)) false))))

(declare-fun b!4493158 () Bool)

(assert (=> b!4493158 (= e!2798711 ((_ map or) (store ((as const (Array tuple2!50890 Bool)) false) (h!56319 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) true) (content!8226 (t!357592 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))))

(assert (= (and d!1377355 c!765445) b!4493157))

(assert (= (and d!1377355 (not c!765445)) b!4493158))

(declare-fun m!5218949 () Bool)

(assert (=> b!4493158 m!5218949))

(declare-fun m!5218951 () Bool)

(assert (=> b!4493158 m!5218951))

(assert (=> d!1377127 d!1377355))

(declare-fun d!1377357 () Bool)

(declare-fun c!765446 () Bool)

(assert (=> d!1377357 (= c!765446 ((_ is Nil!50510) (toList!4236 (-!340 lt!1675673 key!3287))))))

(declare-fun e!2798712 () (InoxSet tuple2!50890))

(assert (=> d!1377357 (= (content!8226 (toList!4236 (-!340 lt!1675673 key!3287))) e!2798712)))

(declare-fun b!4493159 () Bool)

(assert (=> b!4493159 (= e!2798712 ((as const (Array tuple2!50890 Bool)) false))))

(declare-fun b!4493160 () Bool)

(assert (=> b!4493160 (= e!2798712 ((_ map or) (store ((as const (Array tuple2!50890 Bool)) false) (h!56319 (toList!4236 (-!340 lt!1675673 key!3287))) true) (content!8226 (t!357592 (toList!4236 (-!340 lt!1675673 key!3287))))))))

(assert (= (and d!1377357 c!765446) b!4493159))

(assert (= (and d!1377357 (not c!765446)) b!4493160))

(declare-fun m!5218953 () Bool)

(assert (=> b!4493160 m!5218953))

(declare-fun m!5218955 () Bool)

(assert (=> b!4493160 m!5218955))

(assert (=> d!1377127 d!1377357))

(declare-fun d!1377359 () Bool)

(declare-fun c!765447 () Bool)

(assert (=> d!1377359 (= c!765447 ((_ is Nil!50511) (t!357593 (toList!4235 lm!1477))))))

(declare-fun e!2798713 () (InoxSet tuple2!50892))

(assert (=> d!1377359 (= (content!8225 (t!357593 (toList!4235 lm!1477))) e!2798713)))

(declare-fun b!4493161 () Bool)

(assert (=> b!4493161 (= e!2798713 ((as const (Array tuple2!50892 Bool)) false))))

(declare-fun b!4493162 () Bool)

(assert (=> b!4493162 (= e!2798713 ((_ map or) (store ((as const (Array tuple2!50892 Bool)) false) (h!56320 (t!357593 (toList!4235 lm!1477))) true) (content!8225 (t!357593 (t!357593 (toList!4235 lm!1477))))))))

(assert (= (and d!1377359 c!765447) b!4493161))

(assert (= (and d!1377359 (not c!765447)) b!4493162))

(declare-fun m!5218957 () Bool)

(assert (=> b!4493162 m!5218957))

(assert (=> b!4493162 m!5218891))

(assert (=> d!1377105 d!1377359))

(declare-fun bs!831938 () Bool)

(declare-fun b!4493309 () Bool)

(assert (= bs!831938 (and b!4493309 d!1377079)))

(declare-fun lambda!167656 () Int)

(assert (=> bs!831938 (not (= lambda!167656 lambda!167518))))

(assert (=> b!4493309 true))

(declare-fun bs!831944 () Bool)

(declare-fun b!4493313 () Bool)

(assert (= bs!831944 (and b!4493313 d!1377079)))

(declare-fun lambda!167658 () Int)

(assert (=> bs!831944 (not (= lambda!167658 lambda!167518))))

(declare-fun bs!831946 () Bool)

(assert (= bs!831946 (and b!4493313 b!4493309)))

(assert (=> bs!831946 (= lambda!167658 lambda!167656)))

(assert (=> b!4493313 true))

(declare-fun lambda!167659 () Int)

(assert (=> bs!831944 (not (= lambda!167659 lambda!167518))))

(declare-fun lt!1676224 () ListMap!3497)

(assert (=> bs!831946 (= (= lt!1676224 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167659 lambda!167656))))

(assert (=> b!4493313 (= (= lt!1676224 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167659 lambda!167658))))

(assert (=> b!4493313 true))

(declare-fun bs!831953 () Bool)

(declare-fun d!1377361 () Bool)

(assert (= bs!831953 (and d!1377361 d!1377079)))

(declare-fun lambda!167661 () Int)

(assert (=> bs!831953 (not (= lambda!167661 lambda!167518))))

(declare-fun bs!831954 () Bool)

(assert (= bs!831954 (and d!1377361 b!4493309)))

(declare-fun lt!1676233 () ListMap!3497)

(assert (=> bs!831954 (= (= lt!1676233 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167661 lambda!167656))))

(declare-fun bs!831955 () Bool)

(assert (= bs!831955 (and d!1377361 b!4493313)))

(assert (=> bs!831955 (= (= lt!1676233 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167661 lambda!167658))))

(assert (=> bs!831955 (= (= lt!1676233 lt!1676224) (= lambda!167661 lambda!167659))))

(assert (=> d!1377361 true))

(declare-fun e!2798809 () ListMap!3497)

(assert (=> b!4493309 (= e!2798809 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))

(declare-fun lt!1676218 () Unit!90944)

(declare-fun call!312639 () Unit!90944)

(assert (=> b!4493309 (= lt!1676218 call!312639)))

(declare-fun call!312640 () Bool)

(assert (=> b!4493309 call!312640))

(declare-fun lt!1676232 () Unit!90944)

(assert (=> b!4493309 (= lt!1676232 lt!1676218)))

(declare-fun call!312641 () Bool)

(assert (=> b!4493309 call!312641))

(declare-fun lt!1676226 () Unit!90944)

(declare-fun Unit!91011 () Unit!90944)

(assert (=> b!4493309 (= lt!1676226 Unit!91011)))

(declare-fun c!765482 () Bool)

(declare-fun bm!312634 () Bool)

(assert (=> bm!312634 (= call!312640 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (ite c!765482 lambda!167656 lambda!167659)))))

(declare-fun bm!312635 () Bool)

(assert (=> bm!312635 (= call!312641 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (ite c!765482 lambda!167656 lambda!167659)))))

(declare-fun bm!312636 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!298 (ListMap!3497) Unit!90944)

(assert (=> bm!312636 (= call!312639 (lemmaContainsAllItsOwnKeys!298 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))

(declare-fun b!4493310 () Bool)

(declare-fun res!1867468 () Bool)

(declare-fun e!2798807 () Bool)

(assert (=> b!4493310 (=> (not res!1867468) (not e!2798807))))

(assert (=> b!4493310 (= res!1867468 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) lambda!167661))))

(declare-fun b!4493311 () Bool)

(assert (=> b!4493311 (= e!2798807 (invariantList!973 (toList!4236 lt!1676233)))))

(declare-fun b!4493312 () Bool)

(declare-fun e!2798808 () Bool)

(assert (=> b!4493312 (= e!2798808 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) lambda!167659))))

(assert (=> d!1377361 e!2798807))

(declare-fun res!1867469 () Bool)

(assert (=> d!1377361 (=> (not res!1867469) (not e!2798807))))

(assert (=> d!1377361 (= res!1867469 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) lambda!167661))))

(assert (=> d!1377361 (= lt!1676233 e!2798809)))

(assert (=> d!1377361 (= c!765482 ((_ is Nil!50510) (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))

(assert (=> d!1377361 (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))

(assert (=> d!1377361 (= (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) lt!1676233)))

(assert (=> b!4493313 (= e!2798809 lt!1676224)))

(declare-fun lt!1676225 () ListMap!3497)

(declare-fun +!1454 (ListMap!3497 tuple2!50890) ListMap!3497)

(assert (=> b!4493313 (= lt!1676225 (+!1454 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))))

(assert (=> b!4493313 (= lt!1676224 (addToMapMapFromBucket!641 (t!357592 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (+!1454 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))))

(declare-fun lt!1676223 () Unit!90944)

(assert (=> b!4493313 (= lt!1676223 call!312639)))

(assert (=> b!4493313 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) lambda!167658)))

(declare-fun lt!1676229 () Unit!90944)

(assert (=> b!4493313 (= lt!1676229 lt!1676223)))

(assert (=> b!4493313 (forall!10147 (toList!4236 lt!1676225) lambda!167659)))

(declare-fun lt!1676238 () Unit!90944)

(declare-fun Unit!91019 () Unit!90944)

(assert (=> b!4493313 (= lt!1676238 Unit!91019)))

(assert (=> b!4493313 (forall!10147 (t!357592 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) lambda!167659)))

(declare-fun lt!1676220 () Unit!90944)

(declare-fun Unit!91020 () Unit!90944)

(assert (=> b!4493313 (= lt!1676220 Unit!91020)))

(declare-fun lt!1676227 () Unit!90944)

(declare-fun Unit!91021 () Unit!90944)

(assert (=> b!4493313 (= lt!1676227 Unit!91021)))

(declare-fun lt!1676219 () Unit!90944)

(declare-fun forallContained!2405 (List!50634 Int tuple2!50890) Unit!90944)

(assert (=> b!4493313 (= lt!1676219 (forallContained!2405 (toList!4236 lt!1676225) lambda!167659 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))))

(assert (=> b!4493313 (contains!13161 lt!1676225 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))))

(declare-fun lt!1676228 () Unit!90944)

(declare-fun Unit!91022 () Unit!90944)

(assert (=> b!4493313 (= lt!1676228 Unit!91022)))

(assert (=> b!4493313 (contains!13161 lt!1676224 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))))

(declare-fun lt!1676236 () Unit!90944)

(declare-fun Unit!91023 () Unit!90944)

(assert (=> b!4493313 (= lt!1676236 Unit!91023)))

(assert (=> b!4493313 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) lambda!167659)))

(declare-fun lt!1676221 () Unit!90944)

(declare-fun Unit!91024 () Unit!90944)

(assert (=> b!4493313 (= lt!1676221 Unit!91024)))

(assert (=> b!4493313 (forall!10147 (toList!4236 lt!1676225) lambda!167659)))

(declare-fun lt!1676235 () Unit!90944)

(declare-fun Unit!91025 () Unit!90944)

(assert (=> b!4493313 (= lt!1676235 Unit!91025)))

(declare-fun lt!1676231 () Unit!90944)

(declare-fun Unit!91026 () Unit!90944)

(assert (=> b!4493313 (= lt!1676231 Unit!91026)))

(declare-fun lt!1676234 () Unit!90944)

(declare-fun addForallContainsKeyThenBeforeAdding!298 (ListMap!3497 ListMap!3497 K!11925 V!12171) Unit!90944)

(assert (=> b!4493313 (= lt!1676234 (addForallContainsKeyThenBeforeAdding!298 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) lt!1676224 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))) (_2!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))))

(assert (=> b!4493313 call!312640))

(declare-fun lt!1676230 () Unit!90944)

(assert (=> b!4493313 (= lt!1676230 lt!1676234)))

(assert (=> b!4493313 call!312641))

(declare-fun lt!1676237 () Unit!90944)

(declare-fun Unit!91027 () Unit!90944)

(assert (=> b!4493313 (= lt!1676237 Unit!91027)))

(declare-fun res!1867467 () Bool)

(assert (=> b!4493313 (= res!1867467 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) lambda!167659))))

(assert (=> b!4493313 (=> (not res!1867467) (not e!2798808))))

(assert (=> b!4493313 e!2798808))

(declare-fun lt!1676222 () Unit!90944)

(declare-fun Unit!91028 () Unit!90944)

(assert (=> b!4493313 (= lt!1676222 Unit!91028)))

(assert (= (and d!1377361 c!765482) b!4493309))

(assert (= (and d!1377361 (not c!765482)) b!4493313))

(assert (= (and b!4493313 res!1867467) b!4493312))

(assert (= (or b!4493309 b!4493313) bm!312635))

(assert (= (or b!4493309 b!4493313) bm!312634))

(assert (= (or b!4493309 b!4493313) bm!312636))

(assert (= (and d!1377361 res!1867469) b!4493310))

(assert (= (and b!4493310 res!1867468) b!4493311))

(declare-fun m!5219241 () Bool)

(assert (=> d!1377361 m!5219241))

(declare-fun m!5219243 () Bool)

(assert (=> d!1377361 m!5219243))

(declare-fun m!5219245 () Bool)

(assert (=> b!4493310 m!5219245))

(declare-fun m!5219251 () Bool)

(assert (=> bm!312635 m!5219251))

(assert (=> bm!312634 m!5219251))

(declare-fun m!5219255 () Bool)

(assert (=> b!4493313 m!5219255))

(assert (=> b!4493313 m!5218363))

(declare-fun m!5219259 () Bool)

(assert (=> b!4493313 m!5219259))

(declare-fun m!5219263 () Bool)

(assert (=> b!4493313 m!5219263))

(assert (=> b!4493313 m!5219255))

(declare-fun m!5219271 () Bool)

(assert (=> b!4493313 m!5219271))

(assert (=> b!4493313 m!5218363))

(declare-fun m!5219275 () Bool)

(assert (=> b!4493313 m!5219275))

(declare-fun m!5219277 () Bool)

(assert (=> b!4493313 m!5219277))

(assert (=> b!4493313 m!5219259))

(declare-fun m!5219279 () Bool)

(assert (=> b!4493313 m!5219279))

(declare-fun m!5219281 () Bool)

(assert (=> b!4493313 m!5219281))

(declare-fun m!5219283 () Bool)

(assert (=> b!4493313 m!5219283))

(assert (=> b!4493313 m!5219283))

(declare-fun m!5219285 () Bool)

(assert (=> b!4493313 m!5219285))

(declare-fun m!5219287 () Bool)

(assert (=> b!4493312 m!5219287))

(assert (=> bm!312636 m!5218363))

(declare-fun m!5219289 () Bool)

(assert (=> bm!312636 m!5219289))

(declare-fun m!5219291 () Bool)

(assert (=> b!4493311 m!5219291))

(assert (=> b!4492718 d!1377361))

(declare-fun bs!831957 () Bool)

(declare-fun d!1377457 () Bool)

(assert (= bs!831957 (and d!1377457 d!1376987)))

(declare-fun lambda!167662 () Int)

(assert (=> bs!831957 (= lambda!167662 lambda!167487)))

(declare-fun bs!831958 () Bool)

(assert (= bs!831958 (and d!1377457 d!1377091)))

(assert (=> bs!831958 (= lambda!167662 lambda!167524)))

(declare-fun bs!831959 () Bool)

(assert (= bs!831959 (and d!1377457 d!1377139)))

(assert (=> bs!831959 (= lambda!167662 lambda!167533)))

(declare-fun bs!831960 () Bool)

(assert (= bs!831960 (and d!1377457 d!1377121)))

(assert (=> bs!831960 (= lambda!167662 lambda!167525)))

(declare-fun bs!831961 () Bool)

(assert (= bs!831961 (and d!1377457 start!442860)))

(assert (=> bs!831961 (= lambda!167662 lambda!167477)))

(declare-fun bs!831962 () Bool)

(assert (= bs!831962 (and d!1377457 d!1377123)))

(assert (=> bs!831962 (= lambda!167662 lambda!167528)))

(declare-fun bs!831963 () Bool)

(assert (= bs!831963 (and d!1377457 d!1377051)))

(assert (=> bs!831963 (= lambda!167662 lambda!167503)))

(declare-fun bs!831964 () Bool)

(assert (= bs!831964 (and d!1377457 d!1377053)))

(assert (=> bs!831964 (= lambda!167662 lambda!167515)))

(declare-fun bs!831965 () Bool)

(assert (= bs!831965 (and d!1377457 d!1377029)))

(assert (=> bs!831965 (= lambda!167662 lambda!167500)))

(declare-fun bs!831966 () Bool)

(assert (= bs!831966 (and d!1377457 d!1377083)))

(assert (=> bs!831966 (not (= lambda!167662 lambda!167521))))

(declare-fun bs!831967 () Bool)

(assert (= bs!831967 (and d!1377457 d!1377125)))

(assert (=> bs!831967 (= lambda!167662 lambda!167529)))

(declare-fun bs!831968 () Bool)

(assert (= bs!831968 (and d!1377457 d!1377133)))

(assert (=> bs!831968 (= lambda!167662 lambda!167532)))

(declare-fun lt!1676247 () ListMap!3497)

(assert (=> d!1377457 (invariantList!973 (toList!4236 lt!1676247))))

(declare-fun e!2798818 () ListMap!3497)

(assert (=> d!1377457 (= lt!1676247 e!2798818)))

(declare-fun c!765486 () Bool)

(assert (=> d!1377457 (= c!765486 ((_ is Cons!50511) (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))

(assert (=> d!1377457 (forall!10145 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) lambda!167662)))

(assert (=> d!1377457 (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) lt!1676247)))

(declare-fun b!4493327 () Bool)

(assert (=> b!4493327 (= e!2798818 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))))

(declare-fun b!4493328 () Bool)

(assert (=> b!4493328 (= e!2798818 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377457 c!765486) b!4493327))

(assert (= (and d!1377457 (not c!765486)) b!4493328))

(declare-fun m!5219293 () Bool)

(assert (=> d!1377457 m!5219293))

(declare-fun m!5219295 () Bool)

(assert (=> d!1377457 m!5219295))

(declare-fun m!5219297 () Bool)

(assert (=> b!4493327 m!5219297))

(assert (=> b!4493327 m!5219297))

(declare-fun m!5219299 () Bool)

(assert (=> b!4493327 m!5219299))

(assert (=> b!4492718 d!1377457))

(declare-fun d!1377459 () Bool)

(assert (=> d!1377459 (= (invariantList!973 (toList!4236 lt!1675896)) (noDuplicatedKeys!235 (toList!4236 lt!1675896)))))

(declare-fun bs!831969 () Bool)

(assert (= bs!831969 d!1377459))

(declare-fun m!5219301 () Bool)

(assert (=> bs!831969 m!5219301))

(assert (=> d!1377139 d!1377459))

(declare-fun d!1377461 () Bool)

(declare-fun res!1867475 () Bool)

(declare-fun e!2798819 () Bool)

(assert (=> d!1377461 (=> res!1867475 e!2798819)))

(assert (=> d!1377461 (= res!1867475 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377461 (= (forall!10145 (toList!4235 lm!1477) lambda!167533) e!2798819)))

(declare-fun b!4493329 () Bool)

(declare-fun e!2798820 () Bool)

(assert (=> b!4493329 (= e!2798819 e!2798820)))

(declare-fun res!1867476 () Bool)

(assert (=> b!4493329 (=> (not res!1867476) (not e!2798820))))

(assert (=> b!4493329 (= res!1867476 (dynLambda!21087 lambda!167533 (h!56320 (toList!4235 lm!1477))))))

(declare-fun b!4493330 () Bool)

(assert (=> b!4493330 (= e!2798820 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167533))))

(assert (= (and d!1377461 (not res!1867475)) b!4493329))

(assert (= (and b!4493329 res!1867476) b!4493330))

(declare-fun b_lambda!151683 () Bool)

(assert (=> (not b_lambda!151683) (not b!4493329)))

(declare-fun m!5219303 () Bool)

(assert (=> b!4493329 m!5219303))

(declare-fun m!5219305 () Bool)

(assert (=> b!4493330 m!5219305))

(assert (=> d!1377139 d!1377461))

(declare-fun d!1377463 () Bool)

(declare-fun res!1867477 () Bool)

(declare-fun e!2798821 () Bool)

(assert (=> d!1377463 (=> res!1867477 e!2798821)))

(assert (=> d!1377463 (= res!1867477 (and ((_ is Cons!50510) (toList!4236 lt!1675674)) (= (_1!28739 (h!56319 (toList!4236 lt!1675674))) key!3287)))))

(assert (=> d!1377463 (= (containsKey!1649 (toList!4236 lt!1675674) key!3287) e!2798821)))

(declare-fun b!4493331 () Bool)

(declare-fun e!2798822 () Bool)

(assert (=> b!4493331 (= e!2798821 e!2798822)))

(declare-fun res!1867478 () Bool)

(assert (=> b!4493331 (=> (not res!1867478) (not e!2798822))))

(assert (=> b!4493331 (= res!1867478 ((_ is Cons!50510) (toList!4236 lt!1675674)))))

(declare-fun b!4493332 () Bool)

(assert (=> b!4493332 (= e!2798822 (containsKey!1649 (t!357592 (toList!4236 lt!1675674)) key!3287))))

(assert (= (and d!1377463 (not res!1867477)) b!4493331))

(assert (= (and b!4493331 res!1867478) b!4493332))

(declare-fun m!5219307 () Bool)

(assert (=> b!4493332 m!5219307))

(assert (=> b!4492732 d!1377463))

(declare-fun d!1377465 () Bool)

(assert (=> d!1377465 (containsKey!1649 (toList!4236 lt!1675674) key!3287)))

(declare-fun lt!1676248 () Unit!90944)

(assert (=> d!1377465 (= lt!1676248 (choose!28996 (toList!4236 lt!1675674) key!3287))))

(assert (=> d!1377465 (invariantList!973 (toList!4236 lt!1675674))))

(assert (=> d!1377465 (= (lemmaInGetKeysListThenContainsKey!420 (toList!4236 lt!1675674) key!3287) lt!1676248)))

(declare-fun bs!831970 () Bool)

(assert (= bs!831970 d!1377465))

(assert (=> bs!831970 m!5218389))

(declare-fun m!5219309 () Bool)

(assert (=> bs!831970 m!5219309))

(assert (=> bs!831970 m!5218485))

(assert (=> b!4492732 d!1377465))

(declare-fun d!1377467 () Bool)

(declare-fun e!2798825 () Bool)

(assert (=> d!1377467 e!2798825))

(declare-fun res!1867480 () Bool)

(assert (=> d!1377467 (=> res!1867480 e!2798825)))

(declare-fun e!2798823 () Bool)

(assert (=> d!1377467 (= res!1867480 e!2798823)))

(declare-fun res!1867479 () Bool)

(assert (=> d!1377467 (=> (not res!1867479) (not e!2798823))))

(declare-fun lt!1676256 () Bool)

(assert (=> d!1377467 (= res!1867479 (not lt!1676256))))

(declare-fun lt!1676250 () Bool)

(assert (=> d!1377467 (= lt!1676256 lt!1676250)))

(declare-fun lt!1676249 () Unit!90944)

(declare-fun e!2798828 () Unit!90944)

(assert (=> d!1377467 (= lt!1676249 e!2798828)))

(declare-fun c!765487 () Bool)

(assert (=> d!1377467 (= c!765487 lt!1676250)))

(assert (=> d!1377467 (= lt!1676250 (containsKey!1649 (toList!4236 lt!1675875) key!3287))))

(assert (=> d!1377467 (= (contains!13161 lt!1675875 key!3287) lt!1676256)))

(declare-fun b!4493333 () Bool)

(assert (=> b!4493333 false))

(declare-fun lt!1676252 () Unit!90944)

(declare-fun lt!1676253 () Unit!90944)

(assert (=> b!4493333 (= lt!1676252 lt!1676253)))

(assert (=> b!4493333 (containsKey!1649 (toList!4236 lt!1675875) key!3287)))

(assert (=> b!4493333 (= lt!1676253 (lemmaInGetKeysListThenContainsKey!420 (toList!4236 lt!1675875) key!3287))))

(declare-fun e!2798824 () Unit!90944)

(declare-fun Unit!91029 () Unit!90944)

(assert (=> b!4493333 (= e!2798824 Unit!91029)))

(declare-fun b!4493334 () Bool)

(declare-fun e!2798826 () List!50637)

(assert (=> b!4493334 (= e!2798826 (keys!17502 lt!1675875))))

(declare-fun b!4493335 () Bool)

(declare-fun Unit!91030 () Unit!90944)

(assert (=> b!4493335 (= e!2798824 Unit!91030)))

(declare-fun b!4493336 () Bool)

(assert (=> b!4493336 (= e!2798826 (getKeysList!421 (toList!4236 lt!1675875)))))

(declare-fun b!4493337 () Bool)

(assert (=> b!4493337 (= e!2798828 e!2798824)))

(declare-fun c!765488 () Bool)

(declare-fun call!312643 () Bool)

(assert (=> b!4493337 (= c!765488 call!312643)))

(declare-fun b!4493338 () Bool)

(assert (=> b!4493338 (= e!2798823 (not (contains!13165 (keys!17502 lt!1675875) key!3287)))))

(declare-fun b!4493339 () Bool)

(declare-fun e!2798827 () Bool)

(assert (=> b!4493339 (= e!2798827 (contains!13165 (keys!17502 lt!1675875) key!3287))))

(declare-fun b!4493340 () Bool)

(declare-fun lt!1676254 () Unit!90944)

(assert (=> b!4493340 (= e!2798828 lt!1676254)))

(declare-fun lt!1676251 () Unit!90944)

(assert (=> b!4493340 (= lt!1676251 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675875) key!3287))))

(assert (=> b!4493340 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675875) key!3287))))

(declare-fun lt!1676255 () Unit!90944)

(assert (=> b!4493340 (= lt!1676255 lt!1676251)))

(assert (=> b!4493340 (= lt!1676254 (lemmaInListThenGetKeysListContains!417 (toList!4236 lt!1675875) key!3287))))

(assert (=> b!4493340 call!312643))

(declare-fun bm!312638 () Bool)

(assert (=> bm!312638 (= call!312643 (contains!13165 e!2798826 key!3287))))

(declare-fun c!765489 () Bool)

(assert (=> bm!312638 (= c!765489 c!765487)))

(declare-fun b!4493341 () Bool)

(assert (=> b!4493341 (= e!2798825 e!2798827)))

(declare-fun res!1867481 () Bool)

(assert (=> b!4493341 (=> (not res!1867481) (not e!2798827))))

(assert (=> b!4493341 (= res!1867481 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675875) key!3287)))))

(assert (= (and d!1377467 c!765487) b!4493340))

(assert (= (and d!1377467 (not c!765487)) b!4493337))

(assert (= (and b!4493337 c!765488) b!4493333))

(assert (= (and b!4493337 (not c!765488)) b!4493335))

(assert (= (or b!4493340 b!4493337) bm!312638))

(assert (= (and bm!312638 c!765489) b!4493336))

(assert (= (and bm!312638 (not c!765489)) b!4493334))

(assert (= (and d!1377467 res!1867479) b!4493338))

(assert (= (and d!1377467 (not res!1867480)) b!4493341))

(assert (= (and b!4493341 res!1867481) b!4493339))

(assert (=> b!4493336 m!5218793))

(assert (=> b!4493334 m!5218323))

(declare-fun m!5219311 () Bool)

(assert (=> b!4493333 m!5219311))

(declare-fun m!5219313 () Bool)

(assert (=> b!4493333 m!5219313))

(declare-fun m!5219315 () Bool)

(assert (=> b!4493341 m!5219315))

(assert (=> b!4493341 m!5219315))

(declare-fun m!5219317 () Bool)

(assert (=> b!4493341 m!5219317))

(assert (=> d!1377467 m!5219311))

(assert (=> b!4493339 m!5218323))

(assert (=> b!4493339 m!5218323))

(declare-fun m!5219319 () Bool)

(assert (=> b!4493339 m!5219319))

(declare-fun m!5219321 () Bool)

(assert (=> bm!312638 m!5219321))

(assert (=> b!4493338 m!5218323))

(assert (=> b!4493338 m!5218323))

(assert (=> b!4493338 m!5219319))

(declare-fun m!5219323 () Bool)

(assert (=> b!4493340 m!5219323))

(assert (=> b!4493340 m!5219315))

(assert (=> b!4493340 m!5219315))

(assert (=> b!4493340 m!5219317))

(declare-fun m!5219325 () Bool)

(assert (=> b!4493340 m!5219325))

(assert (=> d!1377115 d!1377467))

(declare-fun b!4493436 () Bool)

(declare-fun e!2798885 () Unit!90944)

(declare-fun Unit!91035 () Unit!90944)

(assert (=> b!4493436 (= e!2798885 Unit!91035)))

(declare-fun lt!1676351 () List!50634)

(assert (=> b!4493436 (= lt!1676351 (removePresrvNoDuplicatedKeys!97 (t!357592 (toList!4236 lt!1675673)) key!3287))))

(declare-fun lt!1676346 () Unit!90944)

(assert (=> b!4493436 (= lt!1676346 (lemmaInListThenGetKeysListContains!417 lt!1676351 (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(assert (=> b!4493436 (contains!13165 (getKeysList!421 lt!1676351) (_1!28739 (h!56319 (toList!4236 lt!1675673))))))

(declare-fun lt!1676354 () Unit!90944)

(assert (=> b!4493436 (= lt!1676354 lt!1676346)))

(assert (=> b!4493436 false))

(declare-fun b!4493437 () Bool)

(declare-fun e!2798889 () Unit!90944)

(declare-fun Unit!91036 () Unit!90944)

(assert (=> b!4493437 (= e!2798889 Unit!91036)))

(declare-fun bm!312656 () Bool)

(declare-fun call!312662 () (InoxSet tuple2!50890))

(declare-fun lt!1676350 () List!50634)

(assert (=> bm!312656 (= call!312662 (content!8226 lt!1676350))))

(declare-fun b!4493438 () Bool)

(declare-fun e!2798890 () List!50634)

(assert (=> b!4493438 (= e!2798890 Nil!50510)))

(declare-fun b!4493439 () Bool)

(declare-fun e!2798887 () List!50634)

(assert (=> b!4493439 (= e!2798887 (toList!4236 lt!1675673))))

(declare-fun b!4493440 () Bool)

(declare-fun lt!1676353 () Unit!90944)

(assert (=> b!4493440 (= lt!1676353 e!2798885)))

(declare-fun c!765530 () Bool)

(declare-fun call!312665 () Bool)

(assert (=> b!4493440 (= c!765530 call!312665)))

(declare-fun lt!1676338 () Unit!90944)

(assert (=> b!4493440 (= lt!1676338 e!2798889)))

(declare-fun c!765529 () Bool)

(assert (=> b!4493440 (= c!765529 (contains!13165 (getKeysList!421 (t!357592 (toList!4236 lt!1675673))) (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(declare-fun lt!1676352 () List!50634)

(declare-fun $colon$colon!879 (List!50634 tuple2!50890) List!50634)

(assert (=> b!4493440 (= lt!1676352 ($colon$colon!879 (removePresrvNoDuplicatedKeys!97 (t!357592 (toList!4236 lt!1675673)) key!3287) (h!56319 (toList!4236 lt!1675673))))))

(assert (=> b!4493440 (= e!2798890 lt!1676352)))

(declare-fun b!4493441 () Bool)

(declare-fun e!2798882 () Bool)

(declare-fun e!2798884 () Bool)

(assert (=> b!4493441 (= e!2798882 e!2798884)))

(declare-fun c!765535 () Bool)

(assert (=> b!4493441 (= c!765535 (containsKey!1649 (toList!4236 lt!1675673) key!3287))))

(declare-fun bm!312657 () Bool)

(declare-fun call!312664 () (InoxSet tuple2!50890))

(assert (=> bm!312657 (= call!312664 (content!8226 (toList!4236 lt!1675673)))))

(declare-fun b!4493442 () Bool)

(declare-fun call!312661 () (InoxSet tuple2!50890))

(assert (=> b!4493442 (= call!312661 call!312664)))

(declare-fun e!2798886 () Unit!90944)

(declare-fun Unit!91037 () Unit!90944)

(assert (=> b!4493442 (= e!2798886 Unit!91037)))

(declare-fun b!4493443 () Bool)

(declare-fun call!312666 () (InoxSet tuple2!50890))

(assert (=> b!4493443 (= e!2798884 (= call!312662 call!312666))))

(declare-fun b!4493444 () Bool)

(declare-fun res!1867498 () Bool)

(assert (=> b!4493444 (=> (not res!1867498) (not e!2798882))))

(assert (=> b!4493444 (= res!1867498 (= (content!8227 (getKeysList!421 lt!1676350)) ((_ map and) (content!8227 (getKeysList!421 (toList!4236 lt!1675673))) ((_ map not) (store ((as const (Array K!11925 Bool)) false) key!3287 true)))))))

(declare-fun b!4493445 () Bool)

(declare-fun e!2798888 () Unit!90944)

(declare-fun Unit!91038 () Unit!90944)

(assert (=> b!4493445 (= e!2798888 Unit!91038)))

(declare-fun lt!1676347 () V!12171)

(declare-fun get!16494 (Option!11024) V!12171)

(assert (=> b!4493445 (= lt!1676347 (get!16494 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287)))))

(declare-fun lt!1676337 () K!11925)

(assert (=> b!4493445 (= lt!1676337 key!3287)))

(declare-fun lt!1676341 () K!11925)

(assert (=> b!4493445 (= lt!1676341 key!3287)))

(declare-fun lt!1676344 () Unit!90944)

(declare-fun lemmaContainsTupleThenContainsKey!34 (List!50634 K!11925 V!12171) Unit!90944)

(assert (=> b!4493445 (= lt!1676344 (lemmaContainsTupleThenContainsKey!34 (t!357592 (toList!4236 lt!1675673)) lt!1676337 (get!16494 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))))))

(declare-fun call!312663 () Bool)

(assert (=> b!4493445 call!312663))

(declare-fun lt!1676339 () Unit!90944)

(assert (=> b!4493445 (= lt!1676339 lt!1676344)))

(assert (=> b!4493445 false))

(declare-fun b!4493446 () Bool)

(declare-fun e!2798883 () List!50634)

(assert (=> b!4493446 (= e!2798883 e!2798890)))

(declare-fun c!765536 () Bool)

(assert (=> b!4493446 (= c!765536 (and ((_ is Cons!50510) (toList!4236 lt!1675673)) (not (= (_1!28739 (h!56319 (toList!4236 lt!1675673))) key!3287))))))

(declare-fun b!4493447 () Bool)

(declare-fun Unit!91040 () Unit!90944)

(assert (=> b!4493447 (= e!2798885 Unit!91040)))

(declare-fun b!4493448 () Bool)

(declare-fun Unit!91041 () Unit!90944)

(assert (=> b!4493448 (= e!2798889 Unit!91041)))

(declare-fun lt!1676349 () Unit!90944)

(assert (=> b!4493448 (= lt!1676349 (lemmaInGetKeysListThenContainsKey!420 (t!357592 (toList!4236 lt!1675673)) (_1!28739 (h!56319 (toList!4236 lt!1675673)))))))

(assert (=> b!4493448 call!312663))

(declare-fun lt!1676343 () Unit!90944)

(assert (=> b!4493448 (= lt!1676343 lt!1676349)))

(assert (=> b!4493448 false))

(declare-fun bm!312658 () Bool)

(assert (=> bm!312658 (= call!312661 (content!8226 (t!357592 (toList!4236 lt!1675673))))))

(declare-fun bm!312659 () Bool)

(declare-fun c!765534 () Bool)

(assert (=> bm!312659 (= call!312665 (containsKey!1649 e!2798887 (ite c!765534 key!3287 (_1!28739 (h!56319 (toList!4236 lt!1675673))))))))

(declare-fun c!765532 () Bool)

(assert (=> bm!312659 (= c!765532 c!765534)))

(declare-fun b!4493449 () Bool)

(assert (=> b!4493449 (= e!2798883 (t!357592 (toList!4236 lt!1675673)))))

(declare-fun c!765531 () Bool)

(assert (=> b!4493449 (= c!765531 call!312665)))

(declare-fun lt!1676342 () Unit!90944)

(assert (=> b!4493449 (= lt!1676342 e!2798886)))

(declare-fun b!4493450 () Bool)

(assert (=> b!4493450 (= call!312661 ((_ map and) call!312664 ((_ map not) (store ((as const (Array tuple2!50890 Bool)) false) (tuple2!50891 key!3287 (get!16494 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))) true))))))

(declare-fun lt!1676348 () Unit!90944)

(assert (=> b!4493450 (= lt!1676348 e!2798888)))

(declare-fun c!765533 () Bool)

(declare-fun contains!13166 (List!50634 tuple2!50890) Bool)

(assert (=> b!4493450 (= c!765533 (contains!13166 (t!357592 (toList!4236 lt!1675673)) (tuple2!50891 key!3287 (get!16494 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287)))))))

(declare-fun Unit!91043 () Unit!90944)

(assert (=> b!4493450 (= e!2798886 Unit!91043)))

(declare-fun b!4493451 () Bool)

(assert (=> b!4493451 (= e!2798884 (= call!312662 ((_ map and) call!312666 ((_ map not) (store ((as const (Array tuple2!50890 Bool)) false) (tuple2!50891 key!3287 (get!16494 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))) true)))))))

(assert (=> b!4493451 (containsKey!1649 (toList!4236 lt!1675673) key!3287)))

(declare-fun lt!1676345 () Unit!90944)

(assert (=> b!4493451 (= lt!1676345 (lemmaContainsKeyImpliesGetValueByKeyDefined!908 (toList!4236 lt!1675673) key!3287))))

(assert (=> b!4493451 (isDefined!8311 (getValueByKey!1004 (toList!4236 lt!1675673) key!3287))))

(declare-fun lt!1676340 () Unit!90944)

(assert (=> b!4493451 (= lt!1676340 lt!1676345)))

(declare-fun bm!312660 () Bool)

(assert (=> bm!312660 (= call!312666 (content!8226 (toList!4236 lt!1675673)))))

(declare-fun b!4493452 () Bool)

(declare-fun Unit!91044 () Unit!90944)

(assert (=> b!4493452 (= e!2798888 Unit!91044)))

(declare-fun b!4493453 () Bool)

(declare-fun res!1867500 () Bool)

(assert (=> b!4493453 (=> (not res!1867500) (not e!2798882))))

(assert (=> b!4493453 (= res!1867500 (not (containsKey!1649 lt!1676350 key!3287)))))

(declare-fun bm!312661 () Bool)

(assert (=> bm!312661 (= call!312663 (containsKey!1649 (t!357592 (toList!4236 lt!1675673)) (ite c!765534 lt!1676337 (_1!28739 (h!56319 (toList!4236 lt!1675673))))))))

(declare-fun d!1377469 () Bool)

(assert (=> d!1377469 e!2798882))

(declare-fun res!1867499 () Bool)

(assert (=> d!1377469 (=> (not res!1867499) (not e!2798882))))

(assert (=> d!1377469 (= res!1867499 (invariantList!973 lt!1676350))))

(assert (=> d!1377469 (= lt!1676350 e!2798883)))

(assert (=> d!1377469 (= c!765534 (and ((_ is Cons!50510) (toList!4236 lt!1675673)) (= (_1!28739 (h!56319 (toList!4236 lt!1675673))) key!3287)))))

(assert (=> d!1377469 (invariantList!973 (toList!4236 lt!1675673))))

(assert (=> d!1377469 (= (removePresrvNoDuplicatedKeys!97 (toList!4236 lt!1675673) key!3287) lt!1676350)))

(declare-fun b!4493454 () Bool)

(assert (=> b!4493454 (= e!2798887 (removePresrvNoDuplicatedKeys!97 (t!357592 (toList!4236 lt!1675673)) key!3287))))

(assert (= (and d!1377469 c!765534) b!4493449))

(assert (= (and d!1377469 (not c!765534)) b!4493446))

(assert (= (and b!4493449 c!765531) b!4493450))

(assert (= (and b!4493449 (not c!765531)) b!4493442))

(assert (= (and b!4493450 c!765533) b!4493445))

(assert (= (and b!4493450 (not c!765533)) b!4493452))

(assert (= (or b!4493450 b!4493442) bm!312658))

(assert (= (or b!4493450 b!4493442) bm!312657))

(assert (= (and b!4493446 c!765536) b!4493440))

(assert (= (and b!4493446 (not c!765536)) b!4493438))

(assert (= (and b!4493440 c!765529) b!4493448))

(assert (= (and b!4493440 (not c!765529)) b!4493437))

(assert (= (and b!4493440 c!765530) b!4493436))

(assert (= (and b!4493440 (not c!765530)) b!4493447))

(assert (= (or b!4493445 b!4493448) bm!312661))

(assert (= (or b!4493449 b!4493440) bm!312659))

(assert (= (and bm!312659 c!765532) b!4493439))

(assert (= (and bm!312659 (not c!765532)) b!4493454))

(assert (= (and d!1377469 res!1867499) b!4493453))

(assert (= (and b!4493453 res!1867500) b!4493444))

(assert (= (and b!4493444 res!1867498) b!4493441))

(assert (= (and b!4493441 c!765535) b!4493451))

(assert (= (and b!4493441 (not c!765535)) b!4493443))

(assert (= (or b!4493451 b!4493443) bm!312656))

(assert (= (or b!4493451 b!4493443) bm!312660))

(assert (=> b!4493440 m!5218841))

(assert (=> b!4493440 m!5218841))

(assert (=> b!4493440 m!5218855))

(declare-fun m!5219389 () Bool)

(assert (=> b!4493440 m!5219389))

(assert (=> b!4493440 m!5219389))

(declare-fun m!5219391 () Bool)

(assert (=> b!4493440 m!5219391))

(assert (=> b!4493441 m!5218119))

(assert (=> b!4493454 m!5219389))

(assert (=> b!4493450 m!5218123))

(assert (=> b!4493450 m!5218123))

(declare-fun m!5219393 () Bool)

(assert (=> b!4493450 m!5219393))

(declare-fun m!5219395 () Bool)

(assert (=> b!4493450 m!5219395))

(declare-fun m!5219397 () Bool)

(assert (=> b!4493450 m!5219397))

(declare-fun m!5219399 () Bool)

(assert (=> bm!312657 m!5219399))

(declare-fun m!5219401 () Bool)

(assert (=> b!4493453 m!5219401))

(declare-fun m!5219403 () Bool)

(assert (=> d!1377469 m!5219403))

(assert (=> d!1377469 m!5218839))

(assert (=> b!4493445 m!5218123))

(assert (=> b!4493445 m!5218123))

(assert (=> b!4493445 m!5219393))

(assert (=> b!4493445 m!5219393))

(declare-fun m!5219405 () Bool)

(assert (=> b!4493445 m!5219405))

(declare-fun m!5219407 () Bool)

(assert (=> b!4493448 m!5219407))

(assert (=> b!4493436 m!5219389))

(declare-fun m!5219409 () Bool)

(assert (=> b!4493436 m!5219409))

(declare-fun m!5219411 () Bool)

(assert (=> b!4493436 m!5219411))

(assert (=> b!4493436 m!5219411))

(declare-fun m!5219413 () Bool)

(assert (=> b!4493436 m!5219413))

(declare-fun m!5219415 () Bool)

(assert (=> bm!312656 m!5219415))

(declare-fun m!5219417 () Bool)

(assert (=> bm!312661 m!5219417))

(declare-fun m!5219419 () Bool)

(assert (=> bm!312658 m!5219419))

(declare-fun m!5219421 () Bool)

(assert (=> bm!312659 m!5219421))

(declare-fun m!5219423 () Bool)

(assert (=> b!4493444 m!5219423))

(assert (=> b!4493444 m!5218115))

(assert (=> b!4493444 m!5218115))

(declare-fun m!5219425 () Bool)

(assert (=> b!4493444 m!5219425))

(assert (=> b!4493444 m!5219423))

(declare-fun m!5219427 () Bool)

(assert (=> b!4493444 m!5219427))

(assert (=> b!4493444 m!5218325))

(assert (=> bm!312660 m!5219399))

(assert (=> b!4493451 m!5218119))

(assert (=> b!4493451 m!5218123))

(assert (=> b!4493451 m!5218125))

(assert (=> b!4493451 m!5218123))

(assert (=> b!4493451 m!5219395))

(assert (=> b!4493451 m!5218131))

(assert (=> b!4493451 m!5218123))

(assert (=> b!4493451 m!5219393))

(assert (=> d!1377115 d!1377469))

(declare-fun d!1377497 () Bool)

(declare-fun res!1867511 () Bool)

(declare-fun e!2798901 () Bool)

(assert (=> d!1377497 (=> res!1867511 e!2798901)))

(assert (=> d!1377497 (= res!1867511 (and ((_ is Cons!50511) (toList!4235 lt!1675671)) (= (_1!28740 (h!56320 (toList!4235 lt!1675671))) hash!344)))))

(assert (=> d!1377497 (= (containsKey!1650 (toList!4235 lt!1675671) hash!344) e!2798901)))

(declare-fun b!4493473 () Bool)

(declare-fun e!2798902 () Bool)

(assert (=> b!4493473 (= e!2798901 e!2798902)))

(declare-fun res!1867512 () Bool)

(assert (=> b!4493473 (=> (not res!1867512) (not e!2798902))))

(assert (=> b!4493473 (= res!1867512 (and (or (not ((_ is Cons!50511) (toList!4235 lt!1675671))) (bvsle (_1!28740 (h!56320 (toList!4235 lt!1675671))) hash!344)) ((_ is Cons!50511) (toList!4235 lt!1675671)) (bvslt (_1!28740 (h!56320 (toList!4235 lt!1675671))) hash!344)))))

(declare-fun b!4493474 () Bool)

(assert (=> b!4493474 (= e!2798902 (containsKey!1650 (t!357593 (toList!4235 lt!1675671)) hash!344))))

(assert (= (and d!1377497 (not res!1867511)) b!4493473))

(assert (= (and b!4493473 res!1867512) b!4493474))

(declare-fun m!5219429 () Bool)

(assert (=> b!4493474 m!5219429))

(assert (=> d!1377107 d!1377497))

(declare-fun d!1377499 () Bool)

(declare-fun res!1867513 () Bool)

(declare-fun e!2798903 () Bool)

(assert (=> d!1377499 (=> res!1867513 e!2798903)))

(assert (=> d!1377499 (= res!1867513 (and ((_ is Cons!50510) (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))) (= (_1!28739 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))) key!3287)))))

(assert (=> d!1377499 (= (containsKey!1646 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) key!3287) e!2798903)))

(declare-fun b!4493475 () Bool)

(declare-fun e!2798904 () Bool)

(assert (=> b!4493475 (= e!2798903 e!2798904)))

(declare-fun res!1867514 () Bool)

(assert (=> b!4493475 (=> (not res!1867514) (not e!2798904))))

(assert (=> b!4493475 (= res!1867514 ((_ is Cons!50510) (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4493476 () Bool)

(assert (=> b!4493476 (= e!2798904 (containsKey!1646 (t!357592 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(assert (= (and d!1377499 (not res!1867513)) b!4493475))

(assert (= (and b!4493475 res!1867514) b!4493476))

(declare-fun m!5219431 () Bool)

(assert (=> b!4493476 m!5219431))

(assert (=> b!4492726 d!1377499))

(declare-fun d!1377501 () Bool)

(declare-fun c!765541 () Bool)

(assert (=> d!1377501 (= c!765541 (and ((_ is Cons!50511) (toList!4235 lm!1477)) (= (_1!28740 (h!56320 (toList!4235 lm!1477))) hash!344)))))

(declare-fun e!2798905 () Option!11025)

(assert (=> d!1377501 (= (getValueByKey!1005 (toList!4235 lm!1477) hash!344) e!2798905)))

(declare-fun b!4493478 () Bool)

(declare-fun e!2798906 () Option!11025)

(assert (=> b!4493478 (= e!2798905 e!2798906)))

(declare-fun c!765542 () Bool)

(assert (=> b!4493478 (= c!765542 (and ((_ is Cons!50511) (toList!4235 lm!1477)) (not (= (_1!28740 (h!56320 (toList!4235 lm!1477))) hash!344))))))

(declare-fun b!4493480 () Bool)

(assert (=> b!4493480 (= e!2798906 None!11024)))

(declare-fun b!4493479 () Bool)

(assert (=> b!4493479 (= e!2798906 (getValueByKey!1005 (t!357593 (toList!4235 lm!1477)) hash!344))))

(declare-fun b!4493477 () Bool)

(assert (=> b!4493477 (= e!2798905 (Some!11024 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (= (and d!1377501 c!765541) b!4493477))

(assert (= (and d!1377501 (not c!765541)) b!4493478))

(assert (= (and b!4493478 c!765542) b!4493479))

(assert (= (and b!4493478 (not c!765542)) b!4493480))

(declare-fun m!5219433 () Bool)

(assert (=> b!4493479 m!5219433))

(assert (=> b!4492684 d!1377501))

(declare-fun bs!831989 () Bool)

(declare-fun b!4493481 () Bool)

(assert (= bs!831989 (and b!4493481 d!1377079)))

(declare-fun lambda!167665 () Int)

(assert (=> bs!831989 (not (= lambda!167665 lambda!167518))))

(declare-fun bs!831990 () Bool)

(assert (= bs!831990 (and b!4493481 b!4493313)))

(assert (=> bs!831990 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167665 lambda!167658))))

(declare-fun bs!831991 () Bool)

(assert (= bs!831991 (and b!4493481 b!4493309)))

(assert (=> bs!831991 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167665 lambda!167656))))

(declare-fun bs!831992 () Bool)

(assert (= bs!831992 (and b!4493481 d!1377361)))

(assert (=> bs!831992 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676233) (= lambda!167665 lambda!167661))))

(assert (=> bs!831990 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676224) (= lambda!167665 lambda!167659))))

(assert (=> b!4493481 true))

(declare-fun bs!831993 () Bool)

(declare-fun b!4493485 () Bool)

(assert (= bs!831993 (and b!4493485 d!1377079)))

(declare-fun lambda!167666 () Int)

(assert (=> bs!831993 (not (= lambda!167666 lambda!167518))))

(declare-fun bs!831994 () Bool)

(assert (= bs!831994 (and b!4493485 b!4493313)))

(assert (=> bs!831994 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167666 lambda!167658))))

(declare-fun bs!831995 () Bool)

(assert (= bs!831995 (and b!4493485 b!4493481)))

(assert (=> bs!831995 (= lambda!167666 lambda!167665)))

(declare-fun bs!831996 () Bool)

(assert (= bs!831996 (and b!4493485 b!4493309)))

(assert (=> bs!831996 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167666 lambda!167656))))

(declare-fun bs!831997 () Bool)

(assert (= bs!831997 (and b!4493485 d!1377361)))

(assert (=> bs!831997 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676233) (= lambda!167666 lambda!167661))))

(assert (=> bs!831994 (= (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676224) (= lambda!167666 lambda!167659))))

(assert (=> b!4493485 true))

(declare-fun lambda!167667 () Int)

(assert (=> bs!831993 (not (= lambda!167667 lambda!167518))))

(declare-fun lt!1676365 () ListMap!3497)

(assert (=> bs!831994 (= (= lt!1676365 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167667 lambda!167658))))

(assert (=> bs!831996 (= (= lt!1676365 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167667 lambda!167656))))

(assert (=> b!4493485 (= (= lt!1676365 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167667 lambda!167666))))

(assert (=> bs!831995 (= (= lt!1676365 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167667 lambda!167665))))

(assert (=> bs!831997 (= (= lt!1676365 lt!1676233) (= lambda!167667 lambda!167661))))

(assert (=> bs!831994 (= (= lt!1676365 lt!1676224) (= lambda!167667 lambda!167659))))

(assert (=> b!4493485 true))

(declare-fun bs!831998 () Bool)

(declare-fun d!1377503 () Bool)

(assert (= bs!831998 (and d!1377503 d!1377079)))

(declare-fun lambda!167668 () Int)

(assert (=> bs!831998 (not (= lambda!167668 lambda!167518))))

(declare-fun bs!831999 () Bool)

(assert (= bs!831999 (and d!1377503 b!4493485)))

(declare-fun lt!1676374 () ListMap!3497)

(assert (=> bs!831999 (= (= lt!1676374 lt!1676365) (= lambda!167668 lambda!167667))))

(declare-fun bs!832000 () Bool)

(assert (= bs!832000 (and d!1377503 b!4493313)))

(assert (=> bs!832000 (= (= lt!1676374 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167668 lambda!167658))))

(declare-fun bs!832001 () Bool)

(assert (= bs!832001 (and d!1377503 b!4493309)))

(assert (=> bs!832001 (= (= lt!1676374 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167668 lambda!167656))))

(assert (=> bs!831999 (= (= lt!1676374 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167668 lambda!167666))))

(declare-fun bs!832002 () Bool)

(assert (= bs!832002 (and d!1377503 b!4493481)))

(assert (=> bs!832002 (= (= lt!1676374 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167668 lambda!167665))))

(declare-fun bs!832003 () Bool)

(assert (= bs!832003 (and d!1377503 d!1377361)))

(assert (=> bs!832003 (= (= lt!1676374 lt!1676233) (= lambda!167668 lambda!167661))))

(assert (=> bs!832000 (= (= lt!1676374 lt!1676224) (= lambda!167668 lambda!167659))))

(assert (=> d!1377503 true))

(declare-fun e!2798909 () ListMap!3497)

(assert (=> b!4493481 (= e!2798909 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun lt!1676359 () Unit!90944)

(declare-fun call!312675 () Unit!90944)

(assert (=> b!4493481 (= lt!1676359 call!312675)))

(declare-fun call!312676 () Bool)

(assert (=> b!4493481 call!312676))

(declare-fun lt!1676373 () Unit!90944)

(assert (=> b!4493481 (= lt!1676373 lt!1676359)))

(declare-fun call!312677 () Bool)

(assert (=> b!4493481 call!312677))

(declare-fun lt!1676367 () Unit!90944)

(declare-fun Unit!91045 () Unit!90944)

(assert (=> b!4493481 (= lt!1676367 Unit!91045)))

(declare-fun c!765543 () Bool)

(declare-fun bm!312670 () Bool)

(assert (=> bm!312670 (= call!312676 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (ite c!765543 lambda!167665 lambda!167667)))))

(declare-fun bm!312671 () Bool)

(assert (=> bm!312671 (= call!312677 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (ite c!765543 lambda!167665 lambda!167667)))))

(declare-fun bm!312672 () Bool)

(assert (=> bm!312672 (= call!312675 (lemmaContainsAllItsOwnKeys!298 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))))))

(declare-fun b!4493482 () Bool)

(declare-fun res!1867516 () Bool)

(declare-fun e!2798907 () Bool)

(assert (=> b!4493482 (=> (not res!1867516) (not e!2798907))))

(assert (=> b!4493482 (= res!1867516 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) lambda!167668))))

(declare-fun b!4493483 () Bool)

(assert (=> b!4493483 (= e!2798907 (invariantList!973 (toList!4236 lt!1676374)))))

(declare-fun b!4493484 () Bool)

(declare-fun e!2798908 () Bool)

(assert (=> b!4493484 (= e!2798908 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) lambda!167667))))

(assert (=> d!1377503 e!2798907))

(declare-fun res!1867517 () Bool)

(assert (=> d!1377503 (=> (not res!1867517) (not e!2798907))))

(assert (=> d!1377503 (= res!1867517 (forall!10147 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) lambda!167668))))

(assert (=> d!1377503 (= lt!1676374 e!2798909)))

(assert (=> d!1377503 (= c!765543 ((_ is Nil!50510) (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> d!1377503 (noDuplicateKeys!1114 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377503 (= (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) lt!1676374)))

(assert (=> b!4493485 (= e!2798909 lt!1676365)))

(declare-fun lt!1676366 () ListMap!3497)

(assert (=> b!4493485 (= lt!1676366 (+!1454 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))))))

(assert (=> b!4493485 (= lt!1676365 (addToMapMapFromBucket!641 (t!357592 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))) (+!1454 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun lt!1676364 () Unit!90944)

(assert (=> b!4493485 (= lt!1676364 call!312675)))

(assert (=> b!4493485 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) lambda!167666)))

(declare-fun lt!1676370 () Unit!90944)

(assert (=> b!4493485 (= lt!1676370 lt!1676364)))

(assert (=> b!4493485 (forall!10147 (toList!4236 lt!1676366) lambda!167667)))

(declare-fun lt!1676379 () Unit!90944)

(declare-fun Unit!91048 () Unit!90944)

(assert (=> b!4493485 (= lt!1676379 Unit!91048)))

(assert (=> b!4493485 (forall!10147 (t!357592 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))) lambda!167667)))

(declare-fun lt!1676361 () Unit!90944)

(declare-fun Unit!91049 () Unit!90944)

(assert (=> b!4493485 (= lt!1676361 Unit!91049)))

(declare-fun lt!1676368 () Unit!90944)

(declare-fun Unit!91050 () Unit!90944)

(assert (=> b!4493485 (= lt!1676368 Unit!91050)))

(declare-fun lt!1676360 () Unit!90944)

(assert (=> b!4493485 (= lt!1676360 (forallContained!2405 (toList!4236 lt!1676366) lambda!167667 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))))))

(assert (=> b!4493485 (contains!13161 lt!1676366 (_1!28739 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))))))

(declare-fun lt!1676369 () Unit!90944)

(declare-fun Unit!91051 () Unit!90944)

(assert (=> b!4493485 (= lt!1676369 Unit!91051)))

(assert (=> b!4493485 (contains!13161 lt!1676365 (_1!28739 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))))))

(declare-fun lt!1676377 () Unit!90944)

(declare-fun Unit!91052 () Unit!90944)

(assert (=> b!4493485 (= lt!1676377 Unit!91052)))

(assert (=> b!4493485 (forall!10147 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) lambda!167667)))

(declare-fun lt!1676362 () Unit!90944)

(declare-fun Unit!91053 () Unit!90944)

(assert (=> b!4493485 (= lt!1676362 Unit!91053)))

(assert (=> b!4493485 (forall!10147 (toList!4236 lt!1676366) lambda!167667)))

(declare-fun lt!1676376 () Unit!90944)

(declare-fun Unit!91055 () Unit!90944)

(assert (=> b!4493485 (= lt!1676376 Unit!91055)))

(declare-fun lt!1676372 () Unit!90944)

(declare-fun Unit!91056 () Unit!90944)

(assert (=> b!4493485 (= lt!1676372 Unit!91056)))

(declare-fun lt!1676375 () Unit!90944)

(assert (=> b!4493485 (= lt!1676375 (addForallContainsKeyThenBeforeAdding!298 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676365 (_1!28739 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))))) (_2!28739 (h!56319 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))))

(assert (=> b!4493485 call!312676))

(declare-fun lt!1676371 () Unit!90944)

(assert (=> b!4493485 (= lt!1676371 lt!1676375)))

(assert (=> b!4493485 call!312677))

(declare-fun lt!1676378 () Unit!90944)

(declare-fun Unit!91057 () Unit!90944)

(assert (=> b!4493485 (= lt!1676378 Unit!91057)))

(declare-fun res!1867515 () Bool)

(assert (=> b!4493485 (= res!1867515 (forall!10147 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477)))) lambda!167667))))

(assert (=> b!4493485 (=> (not res!1867515) (not e!2798908))))

(assert (=> b!4493485 e!2798908))

(declare-fun lt!1676363 () Unit!90944)

(declare-fun Unit!91058 () Unit!90944)

(assert (=> b!4493485 (= lt!1676363 Unit!91058)))

(assert (= (and d!1377503 c!765543) b!4493481))

(assert (= (and d!1377503 (not c!765543)) b!4493485))

(assert (= (and b!4493485 res!1867515) b!4493484))

(assert (= (or b!4493481 b!4493485) bm!312671))

(assert (= (or b!4493481 b!4493485) bm!312670))

(assert (= (or b!4493481 b!4493485) bm!312672))

(assert (= (and d!1377503 res!1867517) b!4493482))

(assert (= (and b!4493482 res!1867516) b!4493483))

(declare-fun m!5219435 () Bool)

(assert (=> d!1377503 m!5219435))

(declare-fun m!5219437 () Bool)

(assert (=> d!1377503 m!5219437))

(declare-fun m!5219439 () Bool)

(assert (=> b!4493482 m!5219439))

(declare-fun m!5219441 () Bool)

(assert (=> bm!312671 m!5219441))

(assert (=> bm!312670 m!5219441))

(declare-fun m!5219443 () Bool)

(assert (=> b!4493485 m!5219443))

(assert (=> b!4493485 m!5218103))

(declare-fun m!5219445 () Bool)

(assert (=> b!4493485 m!5219445))

(declare-fun m!5219447 () Bool)

(assert (=> b!4493485 m!5219447))

(assert (=> b!4493485 m!5219443))

(declare-fun m!5219449 () Bool)

(assert (=> b!4493485 m!5219449))

(assert (=> b!4493485 m!5218103))

(declare-fun m!5219451 () Bool)

(assert (=> b!4493485 m!5219451))

(declare-fun m!5219453 () Bool)

(assert (=> b!4493485 m!5219453))

(assert (=> b!4493485 m!5219445))

(declare-fun m!5219455 () Bool)

(assert (=> b!4493485 m!5219455))

(declare-fun m!5219457 () Bool)

(assert (=> b!4493485 m!5219457))

(declare-fun m!5219459 () Bool)

(assert (=> b!4493485 m!5219459))

(assert (=> b!4493485 m!5219459))

(declare-fun m!5219461 () Bool)

(assert (=> b!4493485 m!5219461))

(declare-fun m!5219463 () Bool)

(assert (=> b!4493484 m!5219463))

(assert (=> bm!312672 m!5218103))

(declare-fun m!5219465 () Bool)

(assert (=> bm!312672 m!5219465))

(declare-fun m!5219469 () Bool)

(assert (=> b!4493483 m!5219469))

(assert (=> b!4492585 d!1377503))

(declare-fun bs!832004 () Bool)

(declare-fun d!1377505 () Bool)

(assert (= bs!832004 (and d!1377505 d!1377457)))

(declare-fun lambda!167669 () Int)

(assert (=> bs!832004 (= lambda!167669 lambda!167662)))

(declare-fun bs!832005 () Bool)

(assert (= bs!832005 (and d!1377505 d!1376987)))

(assert (=> bs!832005 (= lambda!167669 lambda!167487)))

(declare-fun bs!832006 () Bool)

(assert (= bs!832006 (and d!1377505 d!1377091)))

(assert (=> bs!832006 (= lambda!167669 lambda!167524)))

(declare-fun bs!832007 () Bool)

(assert (= bs!832007 (and d!1377505 d!1377139)))

(assert (=> bs!832007 (= lambda!167669 lambda!167533)))

(declare-fun bs!832008 () Bool)

(assert (= bs!832008 (and d!1377505 d!1377121)))

(assert (=> bs!832008 (= lambda!167669 lambda!167525)))

(declare-fun bs!832009 () Bool)

(assert (= bs!832009 (and d!1377505 start!442860)))

(assert (=> bs!832009 (= lambda!167669 lambda!167477)))

(declare-fun bs!832010 () Bool)

(assert (= bs!832010 (and d!1377505 d!1377123)))

(assert (=> bs!832010 (= lambda!167669 lambda!167528)))

(declare-fun bs!832011 () Bool)

(assert (= bs!832011 (and d!1377505 d!1377051)))

(assert (=> bs!832011 (= lambda!167669 lambda!167503)))

(declare-fun bs!832012 () Bool)

(assert (= bs!832012 (and d!1377505 d!1377053)))

(assert (=> bs!832012 (= lambda!167669 lambda!167515)))

(declare-fun bs!832013 () Bool)

(assert (= bs!832013 (and d!1377505 d!1377029)))

(assert (=> bs!832013 (= lambda!167669 lambda!167500)))

(declare-fun bs!832014 () Bool)

(assert (= bs!832014 (and d!1377505 d!1377083)))

(assert (=> bs!832014 (not (= lambda!167669 lambda!167521))))

(declare-fun bs!832015 () Bool)

(assert (= bs!832015 (and d!1377505 d!1377125)))

(assert (=> bs!832015 (= lambda!167669 lambda!167529)))

(declare-fun bs!832016 () Bool)

(assert (= bs!832016 (and d!1377505 d!1377133)))

(assert (=> bs!832016 (= lambda!167669 lambda!167532)))

(declare-fun lt!1676398 () ListMap!3497)

(assert (=> d!1377505 (invariantList!973 (toList!4236 lt!1676398))))

(declare-fun e!2798919 () ListMap!3497)

(assert (=> d!1377505 (= lt!1676398 e!2798919)))

(declare-fun c!765552 () Bool)

(assert (=> d!1377505 (= c!765552 ((_ is Cons!50511) (t!357593 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377505 (forall!10145 (t!357593 (t!357593 (toList!4235 lm!1477))) lambda!167669)))

(assert (=> d!1377505 (= (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477)))) lt!1676398)))

(declare-fun b!4493505 () Bool)

(assert (=> b!4493505 (= e!2798919 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (t!357593 (toList!4235 lm!1477))))) (extractMap!1170 (t!357593 (t!357593 (t!357593 (toList!4235 lm!1477)))))))))

(declare-fun b!4493506 () Bool)

(assert (=> b!4493506 (= e!2798919 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377505 c!765552) b!4493505))

(assert (= (and d!1377505 (not c!765552)) b!4493506))

(declare-fun m!5219517 () Bool)

(assert (=> d!1377505 m!5219517))

(declare-fun m!5219519 () Bool)

(assert (=> d!1377505 m!5219519))

(declare-fun m!5219521 () Bool)

(assert (=> b!4493505 m!5219521))

(assert (=> b!4493505 m!5219521))

(declare-fun m!5219523 () Bool)

(assert (=> b!4493505 m!5219523))

(assert (=> b!4492585 d!1377505))

(declare-fun d!1377509 () Bool)

(declare-fun res!1867523 () Bool)

(declare-fun e!2798920 () Bool)

(assert (=> d!1377509 (=> res!1867523 e!2798920)))

(declare-fun e!2798922 () Bool)

(assert (=> d!1377509 (= res!1867523 e!2798922)))

(declare-fun res!1867522 () Bool)

(assert (=> d!1377509 (=> (not res!1867522) (not e!2798922))))

(assert (=> d!1377509 (= res!1867522 ((_ is Cons!50511) (t!357593 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377509 (= (containsKeyBiggerList!94 (t!357593 (t!357593 (toList!4235 lm!1477))) key!3287) e!2798920)))

(declare-fun b!4493507 () Bool)

(assert (=> b!4493507 (= e!2798922 (containsKey!1646 (_2!28740 (h!56320 (t!357593 (t!357593 (toList!4235 lm!1477))))) key!3287))))

(declare-fun b!4493508 () Bool)

(declare-fun e!2798921 () Bool)

(assert (=> b!4493508 (= e!2798920 e!2798921)))

(declare-fun res!1867521 () Bool)

(assert (=> b!4493508 (=> (not res!1867521) (not e!2798921))))

(assert (=> b!4493508 (= res!1867521 ((_ is Cons!50511) (t!357593 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4493509 () Bool)

(assert (=> b!4493509 (= e!2798921 (containsKeyBiggerList!94 (t!357593 (t!357593 (t!357593 (toList!4235 lm!1477)))) key!3287))))

(assert (= (and d!1377509 res!1867522) b!4493507))

(assert (= (and d!1377509 (not res!1867523)) b!4493508))

(assert (= (and b!4493508 res!1867521) b!4493509))

(declare-fun m!5219527 () Bool)

(assert (=> b!4493507 m!5219527))

(declare-fun m!5219529 () Bool)

(assert (=> b!4493509 m!5219529))

(assert (=> b!4492728 d!1377509))

(declare-fun d!1377513 () Bool)

(declare-fun lt!1676399 () Bool)

(assert (=> d!1377513 (= lt!1676399 (select (content!8227 e!2798306) key!3287))))

(declare-fun e!2798924 () Bool)

(assert (=> d!1377513 (= lt!1676399 e!2798924)))

(declare-fun res!1867525 () Bool)

(assert (=> d!1377513 (=> (not res!1867525) (not e!2798924))))

(assert (=> d!1377513 (= res!1867525 ((_ is Cons!50513) e!2798306))))

(assert (=> d!1377513 (= (contains!13165 e!2798306 key!3287) lt!1676399)))

(declare-fun b!4493512 () Bool)

(declare-fun e!2798925 () Bool)

(assert (=> b!4493512 (= e!2798924 e!2798925)))

(declare-fun res!1867524 () Bool)

(assert (=> b!4493512 (=> res!1867524 e!2798925)))

(assert (=> b!4493512 (= res!1867524 (= (h!56324 e!2798306) key!3287))))

(declare-fun b!4493513 () Bool)

(assert (=> b!4493513 (= e!2798925 (contains!13165 (t!357595 e!2798306) key!3287))))

(assert (= (and d!1377513 res!1867525) b!4493512))

(assert (= (and b!4493512 (not res!1867524)) b!4493513))

(declare-fun m!5219535 () Bool)

(assert (=> d!1377513 m!5219535))

(declare-fun m!5219537 () Bool)

(assert (=> d!1377513 m!5219537))

(declare-fun m!5219539 () Bool)

(assert (=> b!4493513 m!5219539))

(assert (=> bm!312579 d!1377513))

(assert (=> d!1377133 d!1377131))

(declare-fun d!1377517 () Bool)

(assert (=> d!1377517 (containsKeyBiggerList!94 (toList!4235 lt!1675671) key!3287)))

(assert (=> d!1377517 true))

(declare-fun _$33!586 () Unit!90944)

(assert (=> d!1377517 (= (choose!28990 lt!1675671 key!3287 hashF!1107) _$33!586)))

(declare-fun bs!832020 () Bool)

(assert (= bs!832020 d!1377517))

(assert (=> bs!832020 m!5217833))

(assert (=> d!1377133 d!1377517))

(declare-fun d!1377527 () Bool)

(declare-fun res!1867528 () Bool)

(declare-fun e!2798929 () Bool)

(assert (=> d!1377527 (=> res!1867528 e!2798929)))

(assert (=> d!1377527 (= res!1867528 ((_ is Nil!50511) (toList!4235 lt!1675671)))))

(assert (=> d!1377527 (= (forall!10145 (toList!4235 lt!1675671) lambda!167532) e!2798929)))

(declare-fun b!4493518 () Bool)

(declare-fun e!2798930 () Bool)

(assert (=> b!4493518 (= e!2798929 e!2798930)))

(declare-fun res!1867529 () Bool)

(assert (=> b!4493518 (=> (not res!1867529) (not e!2798930))))

(assert (=> b!4493518 (= res!1867529 (dynLambda!21087 lambda!167532 (h!56320 (toList!4235 lt!1675671))))))

(declare-fun b!4493519 () Bool)

(assert (=> b!4493519 (= e!2798930 (forall!10145 (t!357593 (toList!4235 lt!1675671)) lambda!167532))))

(assert (= (and d!1377527 (not res!1867528)) b!4493518))

(assert (= (and b!4493518 res!1867529) b!4493519))

(declare-fun b_lambda!151687 () Bool)

(assert (=> (not b_lambda!151687) (not b!4493518)))

(declare-fun m!5219553 () Bool)

(assert (=> b!4493518 m!5219553))

(declare-fun m!5219555 () Bool)

(assert (=> b!4493519 m!5219555))

(assert (=> d!1377133 d!1377527))

(assert (=> b!4492527 d!1377199))

(assert (=> b!4492527 d!1377201))

(declare-fun d!1377531 () Bool)

(declare-fun e!2798932 () Bool)

(assert (=> d!1377531 e!2798932))

(declare-fun res!1867530 () Bool)

(assert (=> d!1377531 (=> res!1867530 e!2798932)))

(declare-fun lt!1676404 () Bool)

(assert (=> d!1377531 (= res!1867530 (not lt!1676404))))

(declare-fun lt!1676405 () Bool)

(assert (=> d!1377531 (= lt!1676404 lt!1676405)))

(declare-fun lt!1676402 () Unit!90944)

(declare-fun e!2798931 () Unit!90944)

(assert (=> d!1377531 (= lt!1676402 e!2798931)))

(declare-fun c!765555 () Bool)

(assert (=> d!1377531 (= c!765555 lt!1676405)))

(assert (=> d!1377531 (= lt!1676405 (containsKey!1650 (toList!4235 lm!1477) (hash!2645 hashF!1107 key!3287)))))

(assert (=> d!1377531 (= (contains!13162 lm!1477 (hash!2645 hashF!1107 key!3287)) lt!1676404)))

(declare-fun b!4493520 () Bool)

(declare-fun lt!1676403 () Unit!90944)

(assert (=> b!4493520 (= e!2798931 lt!1676403)))

(assert (=> b!4493520 (= lt!1676403 (lemmaContainsKeyImpliesGetValueByKeyDefined!909 (toList!4235 lm!1477) (hash!2645 hashF!1107 key!3287)))))

(assert (=> b!4493520 (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) (hash!2645 hashF!1107 key!3287)))))

(declare-fun b!4493521 () Bool)

(declare-fun Unit!91066 () Unit!90944)

(assert (=> b!4493521 (= e!2798931 Unit!91066)))

(declare-fun b!4493522 () Bool)

(assert (=> b!4493522 (= e!2798932 (isDefined!8312 (getValueByKey!1005 (toList!4235 lm!1477) (hash!2645 hashF!1107 key!3287))))))

(assert (= (and d!1377531 c!765555) b!4493520))

(assert (= (and d!1377531 (not c!765555)) b!4493521))

(assert (= (and d!1377531 (not res!1867530)) b!4493522))

(assert (=> d!1377531 m!5217867))

(declare-fun m!5219557 () Bool)

(assert (=> d!1377531 m!5219557))

(assert (=> b!4493520 m!5217867))

(declare-fun m!5219559 () Bool)

(assert (=> b!4493520 m!5219559))

(assert (=> b!4493520 m!5217867))

(declare-fun m!5219561 () Bool)

(assert (=> b!4493520 m!5219561))

(assert (=> b!4493520 m!5219561))

(declare-fun m!5219563 () Bool)

(assert (=> b!4493520 m!5219563))

(assert (=> b!4493522 m!5217867))

(assert (=> b!4493522 m!5219561))

(assert (=> b!4493522 m!5219561))

(assert (=> b!4493522 m!5219563))

(assert (=> d!1377091 d!1377531))

(assert (=> d!1377091 d!1377103))

(declare-fun d!1377533 () Bool)

(assert (=> d!1377533 (contains!13162 lm!1477 (hash!2645 hashF!1107 key!3287))))

(assert (=> d!1377533 true))

(declare-fun _$27!1152 () Unit!90944)

(assert (=> d!1377533 (= (choose!28986 lm!1477 key!3287 hashF!1107) _$27!1152)))

(declare-fun bs!832024 () Bool)

(assert (= bs!832024 d!1377533))

(assert (=> bs!832024 m!5217867))

(assert (=> bs!832024 m!5217867))

(assert (=> bs!832024 m!5218257))

(assert (=> d!1377091 d!1377533))

(declare-fun d!1377545 () Bool)

(declare-fun res!1867532 () Bool)

(declare-fun e!2798936 () Bool)

(assert (=> d!1377545 (=> res!1867532 e!2798936)))

(assert (=> d!1377545 (= res!1867532 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377545 (= (forall!10145 (toList!4235 lm!1477) lambda!167524) e!2798936)))

(declare-fun b!4493528 () Bool)

(declare-fun e!2798937 () Bool)

(assert (=> b!4493528 (= e!2798936 e!2798937)))

(declare-fun res!1867533 () Bool)

(assert (=> b!4493528 (=> (not res!1867533) (not e!2798937))))

(assert (=> b!4493528 (= res!1867533 (dynLambda!21087 lambda!167524 (h!56320 (toList!4235 lm!1477))))))

(declare-fun b!4493529 () Bool)

(assert (=> b!4493529 (= e!2798937 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167524))))

(assert (= (and d!1377545 (not res!1867532)) b!4493528))

(assert (= (and b!4493528 res!1867533) b!4493529))

(declare-fun b_lambda!151691 () Bool)

(assert (=> (not b_lambda!151691) (not b!4493528)))

(declare-fun m!5219573 () Bool)

(assert (=> b!4493528 m!5219573))

(declare-fun m!5219575 () Bool)

(assert (=> b!4493529 m!5219575))

(assert (=> d!1377091 d!1377545))

(declare-fun d!1377547 () Bool)

(assert (=> d!1377547 (= (invariantList!973 (toList!4236 lt!1675884)) (noDuplicatedKeys!235 (toList!4236 lt!1675884)))))

(declare-fun bs!832025 () Bool)

(assert (= bs!832025 d!1377547))

(declare-fun m!5219577 () Bool)

(assert (=> bs!832025 m!5219577))

(assert (=> d!1377125 d!1377547))

(declare-fun d!1377549 () Bool)

(declare-fun res!1867538 () Bool)

(declare-fun e!2798942 () Bool)

(assert (=> d!1377549 (=> res!1867538 e!2798942)))

(assert (=> d!1377549 (= res!1867538 ((_ is Nil!50511) (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))

(assert (=> d!1377549 (= (forall!10145 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))) lambda!167529) e!2798942)))

(declare-fun b!4493534 () Bool)

(declare-fun e!2798943 () Bool)

(assert (=> b!4493534 (= e!2798942 e!2798943)))

(declare-fun res!1867539 () Bool)

(assert (=> b!4493534 (=> (not res!1867539) (not e!2798943))))

(assert (=> b!4493534 (= res!1867539 (dynLambda!21087 lambda!167529 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))))))

(declare-fun b!4493535 () Bool)

(assert (=> b!4493535 (= e!2798943 (forall!10145 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))) lambda!167529))))

(assert (= (and d!1377549 (not res!1867538)) b!4493534))

(assert (= (and b!4493534 res!1867539) b!4493535))

(declare-fun b_lambda!151693 () Bool)

(assert (=> (not b_lambda!151693) (not b!4493534)))

(declare-fun m!5219579 () Bool)

(assert (=> b!4493534 m!5219579))

(declare-fun m!5219581 () Bool)

(assert (=> b!4493535 m!5219581))

(assert (=> d!1377125 d!1377549))

(declare-fun d!1377551 () Bool)

(declare-fun lt!1676408 () Bool)

(assert (=> d!1377551 (= lt!1676408 (select (content!8227 e!2798360) key!3287))))

(declare-fun e!2798944 () Bool)

(assert (=> d!1377551 (= lt!1676408 e!2798944)))

(declare-fun res!1867541 () Bool)

(assert (=> d!1377551 (=> (not res!1867541) (not e!2798944))))

(assert (=> d!1377551 (= res!1867541 ((_ is Cons!50513) e!2798360))))

(assert (=> d!1377551 (= (contains!13165 e!2798360 key!3287) lt!1676408)))

(declare-fun b!4493536 () Bool)

(declare-fun e!2798945 () Bool)

(assert (=> b!4493536 (= e!2798944 e!2798945)))

(declare-fun res!1867540 () Bool)

(assert (=> b!4493536 (=> res!1867540 e!2798945)))

(assert (=> b!4493536 (= res!1867540 (= (h!56324 e!2798360) key!3287))))

(declare-fun b!4493537 () Bool)

(assert (=> b!4493537 (= e!2798945 (contains!13165 (t!357595 e!2798360) key!3287))))

(assert (= (and d!1377551 res!1867541) b!4493536))

(assert (= (and b!4493536 (not res!1867540)) b!4493537))

(declare-fun m!5219583 () Bool)

(assert (=> d!1377551 m!5219583))

(declare-fun m!5219585 () Bool)

(assert (=> d!1377551 m!5219585))

(declare-fun m!5219587 () Bool)

(assert (=> b!4493537 m!5219587))

(assert (=> bm!312583 d!1377551))

(declare-fun d!1377553 () Bool)

(declare-fun c!765558 () Bool)

(assert (=> d!1377553 (= c!765558 (and ((_ is Cons!50511) (toList!4235 lt!1675872)) (= (_1!28740 (h!56320 (toList!4235 lt!1675872))) (_1!28740 (head!9322 lm!1477)))))))

(declare-fun e!2798948 () Option!11025)

(assert (=> d!1377553 (= (getValueByKey!1005 (toList!4235 lt!1675872) (_1!28740 (head!9322 lm!1477))) e!2798948)))

(declare-fun b!4493541 () Bool)

(declare-fun e!2798949 () Option!11025)

(assert (=> b!4493541 (= e!2798948 e!2798949)))

(declare-fun c!765559 () Bool)

(assert (=> b!4493541 (= c!765559 (and ((_ is Cons!50511) (toList!4235 lt!1675872)) (not (= (_1!28740 (h!56320 (toList!4235 lt!1675872))) (_1!28740 (head!9322 lm!1477))))))))

(declare-fun b!4493543 () Bool)

(assert (=> b!4493543 (= e!2798949 None!11024)))

(declare-fun b!4493542 () Bool)

(assert (=> b!4493542 (= e!2798949 (getValueByKey!1005 (t!357593 (toList!4235 lt!1675872)) (_1!28740 (head!9322 lm!1477))))))

(declare-fun b!4493540 () Bool)

(assert (=> b!4493540 (= e!2798948 (Some!11024 (_2!28740 (h!56320 (toList!4235 lt!1675872)))))))

(assert (= (and d!1377553 c!765558) b!4493540))

(assert (= (and d!1377553 (not c!765558)) b!4493541))

(assert (= (and b!4493541 c!765559) b!4493542))

(assert (= (and b!4493541 (not c!765559)) b!4493543))

(declare-fun m!5219593 () Bool)

(assert (=> b!4493542 m!5219593))

(assert (=> b!4492709 d!1377553))

(declare-fun d!1377557 () Bool)

(assert (=> d!1377557 (= (invariantList!973 (toList!4236 lt!1675788)) (noDuplicatedKeys!235 (toList!4236 lt!1675788)))))

(declare-fun bs!832026 () Bool)

(assert (= bs!832026 d!1377557))

(declare-fun m!5219595 () Bool)

(assert (=> bs!832026 m!5219595))

(assert (=> d!1377029 d!1377557))

(declare-fun d!1377559 () Bool)

(declare-fun res!1867546 () Bool)

(declare-fun e!2798952 () Bool)

(assert (=> d!1377559 (=> res!1867546 e!2798952)))

(assert (=> d!1377559 (= res!1867546 ((_ is Nil!50511) (t!357593 (toList!4235 lm!1477))))))

(assert (=> d!1377559 (= (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167500) e!2798952)))

(declare-fun b!4493546 () Bool)

(declare-fun e!2798953 () Bool)

(assert (=> b!4493546 (= e!2798952 e!2798953)))

(declare-fun res!1867547 () Bool)

(assert (=> b!4493546 (=> (not res!1867547) (not e!2798953))))

(assert (=> b!4493546 (= res!1867547 (dynLambda!21087 lambda!167500 (h!56320 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4493547 () Bool)

(assert (=> b!4493547 (= e!2798953 (forall!10145 (t!357593 (t!357593 (toList!4235 lm!1477))) lambda!167500))))

(assert (= (and d!1377559 (not res!1867546)) b!4493546))

(assert (= (and b!4493546 res!1867547) b!4493547))

(declare-fun b_lambda!151697 () Bool)

(assert (=> (not b_lambda!151697) (not b!4493546)))

(declare-fun m!5219601 () Bool)

(assert (=> b!4493546 m!5219601))

(declare-fun m!5219603 () Bool)

(assert (=> b!4493547 m!5219603))

(assert (=> d!1377029 d!1377559))

(declare-fun d!1377563 () Bool)

(declare-fun res!1867551 () Bool)

(declare-fun e!2798958 () Bool)

(assert (=> d!1377563 (=> res!1867551 e!2798958)))

(assert (=> d!1377563 (= res!1867551 ((_ is Nil!50511) (t!357593 (toList!4235 lm!1477))))))

(assert (=> d!1377563 (= (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167477) e!2798958)))

(declare-fun b!4493557 () Bool)

(declare-fun e!2798959 () Bool)

(assert (=> b!4493557 (= e!2798958 e!2798959)))

(declare-fun res!1867552 () Bool)

(assert (=> b!4493557 (=> (not res!1867552) (not e!2798959))))

(assert (=> b!4493557 (= res!1867552 (dynLambda!21087 lambda!167477 (h!56320 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4493558 () Bool)

(assert (=> b!4493558 (= e!2798959 (forall!10145 (t!357593 (t!357593 (toList!4235 lm!1477))) lambda!167477))))

(assert (= (and d!1377563 (not res!1867551)) b!4493557))

(assert (= (and b!4493557 res!1867552) b!4493558))

(declare-fun b_lambda!151699 () Bool)

(assert (=> (not b_lambda!151699) (not b!4493557)))

(declare-fun m!5219605 () Bool)

(assert (=> b!4493557 m!5219605))

(declare-fun m!5219607 () Bool)

(assert (=> b!4493558 m!5219607))

(assert (=> b!4492666 d!1377563))

(declare-fun d!1377565 () Bool)

(declare-fun res!1867557 () Bool)

(declare-fun e!2798964 () Bool)

(assert (=> d!1377565 (=> res!1867557 e!2798964)))

(assert (=> d!1377565 (= res!1867557 ((_ is Nil!50510) newBucket!178))))

(assert (=> d!1377565 (= (forall!10147 newBucket!178 lambda!167518) e!2798964)))

(declare-fun b!4493563 () Bool)

(declare-fun e!2798965 () Bool)

(assert (=> b!4493563 (= e!2798964 e!2798965)))

(declare-fun res!1867558 () Bool)

(assert (=> b!4493563 (=> (not res!1867558) (not e!2798965))))

(declare-fun dynLambda!21089 (Int tuple2!50890) Bool)

(assert (=> b!4493563 (= res!1867558 (dynLambda!21089 lambda!167518 (h!56319 newBucket!178)))))

(declare-fun b!4493564 () Bool)

(assert (=> b!4493564 (= e!2798965 (forall!10147 (t!357592 newBucket!178) lambda!167518))))

(assert (= (and d!1377565 (not res!1867557)) b!4493563))

(assert (= (and b!4493563 res!1867558) b!4493564))

(declare-fun b_lambda!151701 () Bool)

(assert (=> (not b_lambda!151701) (not b!4493563)))

(declare-fun m!5219609 () Bool)

(assert (=> b!4493563 m!5219609))

(declare-fun m!5219611 () Bool)

(assert (=> b!4493564 m!5219611))

(assert (=> d!1377079 d!1377565))

(declare-fun bs!832059 () Bool)

(declare-fun b!4493570 () Bool)

(assert (= bs!832059 (and b!4493570 b!4493090)))

(declare-fun lambda!167673 () Int)

(assert (=> bs!832059 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 lt!1675673))) (= lambda!167673 lambda!167568))))

(declare-fun bs!832061 () Bool)

(assert (= bs!832061 (and b!4493570 b!4492888)))

(assert (=> bs!832061 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167673 lambda!167548))))

(declare-fun bs!832062 () Bool)

(assert (= bs!832062 (and b!4493570 b!4493088)))

(assert (=> bs!832062 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673)))) (= lambda!167673 lambda!167569))))

(declare-fun bs!832064 () Bool)

(assert (= bs!832064 (and b!4493570 b!4492894)))

(assert (=> bs!832064 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 lt!1675674)) (= lambda!167673 lambda!167550))))

(declare-fun bs!832066 () Bool)

(assert (= bs!832066 (and b!4493570 b!4493040)))

(assert (=> bs!832066 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 lt!1675875)) (= lambda!167673 lambda!167566))))

(declare-fun bs!832068 () Bool)

(assert (= bs!832068 (and b!4493570 b!4493092)))

(assert (=> bs!832068 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 lt!1675673)) (= lambda!167673 lambda!167570))))

(declare-fun bs!832070 () Bool)

(assert (= bs!832070 (and b!4493570 b!4492992)))

(assert (=> bs!832070 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167673 lambda!167563))))

(declare-fun bs!832072 () Bool)

(assert (= bs!832072 (and b!4493570 b!4492996)))

(assert (=> bs!832072 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 lt!1675674)) (= lambda!167673 lambda!167564))))

(declare-fun bs!832074 () Bool)

(assert (= bs!832074 (and b!4493570 b!4492867)))

(assert (=> bs!832074 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (toList!4236 lt!1675673)) (= lambda!167673 lambda!167546))))

(declare-fun bs!832075 () Bool)

(assert (= bs!832075 (and b!4493570 b!4492994)))

(assert (=> bs!832075 (= (= (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 lt!1675674))) (= lambda!167673 lambda!167562))))

(assert (=> b!4493570 true))

(declare-fun bs!832076 () Bool)

(declare-fun b!4493568 () Bool)

(assert (= bs!832076 (and b!4493568 b!4493570)))

(declare-fun lambda!167675 () Int)

(assert (=> bs!832076 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (= lambda!167675 lambda!167673))))

(declare-fun bs!832077 () Bool)

(assert (= bs!832077 (and b!4493568 b!4493090)))

(assert (=> bs!832077 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (t!357592 (toList!4236 lt!1675673))) (= lambda!167675 lambda!167568))))

(declare-fun bs!832078 () Bool)

(assert (= bs!832078 (and b!4493568 b!4492888)))

(assert (=> bs!832078 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (= lambda!167675 lambda!167548))))

(declare-fun bs!832079 () Bool)

(assert (= bs!832079 (and b!4493568 b!4493088)))

(assert (=> bs!832079 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673)))) (= lambda!167675 lambda!167569))))

(declare-fun bs!832080 () Bool)

(assert (= bs!832080 (and b!4493568 b!4492894)))

(assert (=> bs!832080 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 lt!1675674)) (= lambda!167675 lambda!167550))))

(declare-fun bs!832081 () Bool)

(assert (= bs!832081 (and b!4493568 b!4493040)))

(assert (=> bs!832081 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 lt!1675875)) (= lambda!167675 lambda!167566))))

(declare-fun bs!832082 () Bool)

(assert (= bs!832082 (and b!4493568 b!4493092)))

(assert (=> bs!832082 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 lt!1675673)) (= lambda!167675 lambda!167570))))

(declare-fun bs!832083 () Bool)

(assert (= bs!832083 (and b!4493568 b!4492992)))

(assert (=> bs!832083 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167675 lambda!167563))))

(declare-fun bs!832084 () Bool)

(assert (= bs!832084 (and b!4493568 b!4492996)))

(assert (=> bs!832084 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 lt!1675674)) (= lambda!167675 lambda!167564))))

(declare-fun bs!832085 () Bool)

(assert (= bs!832085 (and b!4493568 b!4492867)))

(assert (=> bs!832085 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (toList!4236 lt!1675673)) (= lambda!167675 lambda!167546))))

(declare-fun bs!832086 () Bool)

(assert (= bs!832086 (and b!4493568 b!4492994)))

(assert (=> bs!832086 (= (= (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (t!357592 (toList!4236 lt!1675674))) (= lambda!167675 lambda!167562))))

(assert (=> b!4493568 true))

(declare-fun bs!832087 () Bool)

(declare-fun b!4493572 () Bool)

(assert (= bs!832087 (and b!4493572 b!4493568)))

(declare-fun lambda!167676 () Int)

(assert (=> bs!832087 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (Cons!50510 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))) (= lambda!167676 lambda!167675))))

(declare-fun bs!832088 () Bool)

(assert (= bs!832088 (and b!4493572 b!4493570)))

(assert (=> bs!832088 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (= lambda!167676 lambda!167673))))

(declare-fun bs!832089 () Bool)

(assert (= bs!832089 (and b!4493572 b!4493090)))

(assert (=> bs!832089 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (t!357592 (toList!4236 lt!1675673))) (= lambda!167676 lambda!167568))))

(declare-fun bs!832090 () Bool)

(assert (= bs!832090 (and b!4493572 b!4492888)))

(assert (=> bs!832090 (= lambda!167676 lambda!167548)))

(declare-fun bs!832091 () Bool)

(assert (= bs!832091 (and b!4493572 b!4493088)))

(assert (=> bs!832091 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (Cons!50510 (h!56319 (toList!4236 lt!1675673)) (t!357592 (toList!4236 lt!1675673)))) (= lambda!167676 lambda!167569))))

(declare-fun bs!832092 () Bool)

(assert (= bs!832092 (and b!4493572 b!4492894)))

(assert (=> bs!832092 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675674)) (= lambda!167676 lambda!167550))))

(declare-fun bs!832093 () Bool)

(assert (= bs!832093 (and b!4493572 b!4493040)))

(assert (=> bs!832093 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675875)) (= lambda!167676 lambda!167566))))

(declare-fun bs!832094 () Bool)

(assert (= bs!832094 (and b!4493572 b!4493092)))

(assert (=> bs!832094 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675673)) (= lambda!167676 lambda!167570))))

(declare-fun bs!832095 () Bool)

(assert (= bs!832095 (and b!4493572 b!4492992)))

(assert (=> bs!832095 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (Cons!50510 (h!56319 (toList!4236 lt!1675674)) (t!357592 (toList!4236 lt!1675674)))) (= lambda!167676 lambda!167563))))

(declare-fun bs!832096 () Bool)

(assert (= bs!832096 (and b!4493572 b!4492996)))

(assert (=> bs!832096 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675674)) (= lambda!167676 lambda!167564))))

(declare-fun bs!832097 () Bool)

(assert (= bs!832097 (and b!4493572 b!4492867)))

(assert (=> bs!832097 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (toList!4236 lt!1675673)) (= lambda!167676 lambda!167546))))

(declare-fun bs!832098 () Bool)

(assert (= bs!832098 (and b!4493572 b!4492994)))

(assert (=> bs!832098 (= (= (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (t!357592 (toList!4236 lt!1675674))) (= lambda!167676 lambda!167562))))

(assert (=> b!4493572 true))

(declare-fun bs!832099 () Bool)

(declare-fun b!4493566 () Bool)

(assert (= bs!832099 (and b!4493566 b!4493041)))

(declare-fun lambda!167677 () Int)

(assert (=> bs!832099 (= lambda!167677 lambda!167567)))

(declare-fun bs!832100 () Bool)

(assert (= bs!832100 (and b!4493566 b!4493086)))

(assert (=> bs!832100 (= lambda!167677 lambda!167571)))

(declare-fun bs!832101 () Bool)

(assert (= bs!832101 (and b!4493566 b!4492868)))

(assert (=> bs!832101 (= lambda!167677 lambda!167547)))

(declare-fun bs!832102 () Bool)

(assert (= bs!832102 (and b!4493566 b!4492990)))

(assert (=> bs!832102 (= lambda!167677 lambda!167565)))

(declare-fun bs!832103 () Bool)

(assert (= bs!832103 (and b!4493566 b!4492889)))

(assert (=> bs!832103 (= lambda!167677 lambda!167549)))

(declare-fun bs!832104 () Bool)

(assert (= bs!832104 (and b!4493566 b!4492895)))

(assert (=> bs!832104 (= lambda!167677 lambda!167551)))

(declare-fun b!4493565 () Bool)

(assert (=> b!4493565 false))

(declare-fun e!2798966 () Unit!90944)

(declare-fun Unit!91067 () Unit!90944)

(assert (=> b!4493565 (= e!2798966 Unit!91067)))

(declare-fun e!2798967 () Bool)

(declare-fun lt!1676419 () List!50637)

(assert (=> b!4493566 (= e!2798967 (= (content!8227 lt!1676419) (content!8227 (map!11088 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lambda!167677))))))

(declare-fun d!1377567 () Bool)

(assert (=> d!1377567 e!2798967))

(declare-fun res!1867560 () Bool)

(assert (=> d!1377567 (=> (not res!1867560) (not e!2798967))))

(assert (=> d!1377567 (= res!1867560 (noDuplicate!720 lt!1676419))))

(declare-fun e!2798969 () List!50637)

(assert (=> d!1377567 (= lt!1676419 e!2798969)))

(declare-fun c!765563 () Bool)

(assert (=> d!1377567 (= c!765563 ((_ is Cons!50510) (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> d!1377567 (invariantList!973 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(assert (=> d!1377567 (= (getKeysList!421 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) lt!1676419)))

(declare-fun b!4493567 () Bool)

(declare-fun Unit!91068 () Unit!90944)

(assert (=> b!4493567 (= e!2798966 Unit!91068)))

(assert (=> b!4493568 (= e!2798969 (Cons!50513 (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (getKeysList!421 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun c!765564 () Bool)

(assert (=> b!4493568 (= c!765564 (containsKey!1649 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun lt!1676418 () Unit!90944)

(assert (=> b!4493568 (= lt!1676418 e!2798966)))

(declare-fun c!765565 () Bool)

(assert (=> b!4493568 (= c!765565 (contains!13165 (getKeysList!421 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun lt!1676422 () Unit!90944)

(declare-fun e!2798968 () Unit!90944)

(assert (=> b!4493568 (= lt!1676422 e!2798968)))

(declare-fun lt!1676416 () List!50637)

(assert (=> b!4493568 (= lt!1676416 (getKeysList!421 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))))

(declare-fun lt!1676421 () Unit!90944)

(assert (=> b!4493568 (= lt!1676421 (lemmaForallContainsAddHeadPreserves!140 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))) lt!1676416 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))))

(assert (=> b!4493568 (forall!10149 lt!1676416 lambda!167675)))

(declare-fun lt!1676417 () Unit!90944)

(assert (=> b!4493568 (= lt!1676417 lt!1676421)))

(declare-fun b!4493569 () Bool)

(declare-fun Unit!91073 () Unit!90944)

(assert (=> b!4493569 (= e!2798968 Unit!91073)))

(assert (=> b!4493570 false))

(declare-fun lt!1676420 () Unit!90944)

(assert (=> b!4493570 (= lt!1676420 (forallContained!2402 (getKeysList!421 (t!357592 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))) lambda!167673 (_1!28739 (h!56319 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))))))

(declare-fun Unit!91074 () Unit!90944)

(assert (=> b!4493570 (= e!2798968 Unit!91074)))

(declare-fun b!4493571 () Bool)

(assert (=> b!4493571 (= e!2798969 Nil!50513)))

(declare-fun res!1867561 () Bool)

(assert (=> b!4493572 (=> (not res!1867561) (not e!2798967))))

(assert (=> b!4493572 (= res!1867561 (forall!10149 lt!1676419 lambda!167676))))

(declare-fun b!4493573 () Bool)

(declare-fun res!1867559 () Bool)

(assert (=> b!4493573 (=> (not res!1867559) (not e!2798967))))

(assert (=> b!4493573 (= res!1867559 (= (length!296 lt!1676419) (length!297 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))))

(assert (= (and d!1377567 c!765563) b!4493568))

(assert (= (and d!1377567 (not c!765563)) b!4493571))

(assert (= (and b!4493568 c!765564) b!4493565))

(assert (= (and b!4493568 (not c!765564)) b!4493567))

(assert (= (and b!4493568 c!765565) b!4493570))

(assert (= (and b!4493568 (not c!765565)) b!4493569))

(assert (= (and d!1377567 res!1867560) b!4493573))

(assert (= (and b!4493573 res!1867559) b!4493572))

(assert (= (and b!4493572 res!1867561) b!4493566))

(declare-fun m!5219641 () Bool)

(assert (=> d!1377567 m!5219641))

(assert (=> d!1377567 m!5218749))

(declare-fun m!5219643 () Bool)

(assert (=> b!4493570 m!5219643))

(assert (=> b!4493570 m!5219643))

(declare-fun m!5219645 () Bool)

(assert (=> b!4493570 m!5219645))

(declare-fun m!5219647 () Bool)

(assert (=> b!4493566 m!5219647))

(declare-fun m!5219649 () Bool)

(assert (=> b!4493566 m!5219649))

(assert (=> b!4493566 m!5219649))

(declare-fun m!5219651 () Bool)

(assert (=> b!4493566 m!5219651))

(declare-fun m!5219653 () Bool)

(assert (=> b!4493572 m!5219653))

(declare-fun m!5219655 () Bool)

(assert (=> b!4493573 m!5219655))

(assert (=> b!4493573 m!5218575))

(assert (=> b!4493568 m!5219643))

(declare-fun m!5219657 () Bool)

(assert (=> b!4493568 m!5219657))

(assert (=> b!4493568 m!5219643))

(declare-fun m!5219659 () Bool)

(assert (=> b!4493568 m!5219659))

(declare-fun m!5219661 () Bool)

(assert (=> b!4493568 m!5219661))

(declare-fun m!5219663 () Bool)

(assert (=> b!4493568 m!5219663))

(assert (=> b!4492524 d!1377567))

(assert (=> d!1377137 d!1377463))

(assert (=> b!4492522 d!1377201))

(declare-fun d!1377577 () Bool)

(declare-fun res!1867569 () Bool)

(declare-fun e!2798979 () Bool)

(assert (=> d!1377577 (=> res!1867569 e!2798979)))

(assert (=> d!1377577 (= res!1867569 (not ((_ is Cons!50510) (t!357592 newBucket!178))))))

(assert (=> d!1377577 (= (noDuplicateKeys!1114 (t!357592 newBucket!178)) e!2798979)))

(declare-fun b!4493587 () Bool)

(declare-fun e!2798980 () Bool)

(assert (=> b!4493587 (= e!2798979 e!2798980)))

(declare-fun res!1867570 () Bool)

(assert (=> b!4493587 (=> (not res!1867570) (not e!2798980))))

(assert (=> b!4493587 (= res!1867570 (not (containsKey!1646 (t!357592 (t!357592 newBucket!178)) (_1!28739 (h!56319 (t!357592 newBucket!178))))))))

(declare-fun b!4493588 () Bool)

(assert (=> b!4493588 (= e!2798980 (noDuplicateKeys!1114 (t!357592 (t!357592 newBucket!178))))))

(assert (= (and d!1377577 (not res!1867569)) b!4493587))

(assert (= (and b!4493587 res!1867570) b!4493588))

(declare-fun m!5219665 () Bool)

(assert (=> b!4493587 m!5219665))

(declare-fun m!5219667 () Bool)

(assert (=> b!4493588 m!5219667))

(assert (=> b!4492654 d!1377577))

(declare-fun bs!832126 () Bool)

(declare-fun b!4493589 () Bool)

(assert (= bs!832126 (and b!4493589 d!1377503)))

(declare-fun lambda!167680 () Int)

(assert (=> bs!832126 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676374) (= lambda!167680 lambda!167668))))

(declare-fun bs!832127 () Bool)

(assert (= bs!832127 (and b!4493589 d!1377079)))

(assert (=> bs!832127 (not (= lambda!167680 lambda!167518))))

(declare-fun bs!832128 () Bool)

(assert (= bs!832128 (and b!4493589 b!4493485)))

(assert (=> bs!832128 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676365) (= lambda!167680 lambda!167667))))

(declare-fun bs!832129 () Bool)

(assert (= bs!832129 (and b!4493589 b!4493313)))

(assert (=> bs!832129 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167680 lambda!167658))))

(declare-fun bs!832130 () Bool)

(assert (= bs!832130 (and b!4493589 b!4493309)))

(assert (=> bs!832130 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167680 lambda!167656))))

(assert (=> bs!832128 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167680 lambda!167666))))

(declare-fun bs!832131 () Bool)

(assert (= bs!832131 (and b!4493589 b!4493481)))

(assert (=> bs!832131 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167680 lambda!167665))))

(declare-fun bs!832132 () Bool)

(assert (= bs!832132 (and b!4493589 d!1377361)))

(assert (=> bs!832132 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676233) (= lambda!167680 lambda!167661))))

(assert (=> bs!832129 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676224) (= lambda!167680 lambda!167659))))

(assert (=> b!4493589 true))

(declare-fun bs!832133 () Bool)

(declare-fun b!4493593 () Bool)

(assert (= bs!832133 (and b!4493593 d!1377503)))

(declare-fun lambda!167682 () Int)

(assert (=> bs!832133 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676374) (= lambda!167682 lambda!167668))))

(declare-fun bs!832134 () Bool)

(assert (= bs!832134 (and b!4493593 d!1377079)))

(assert (=> bs!832134 (not (= lambda!167682 lambda!167518))))

(declare-fun bs!832135 () Bool)

(assert (= bs!832135 (and b!4493593 b!4493485)))

(assert (=> bs!832135 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676365) (= lambda!167682 lambda!167667))))

(declare-fun bs!832136 () Bool)

(assert (= bs!832136 (and b!4493593 b!4493313)))

(assert (=> bs!832136 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167682 lambda!167658))))

(declare-fun bs!832137 () Bool)

(assert (= bs!832137 (and b!4493593 b!4493309)))

(assert (=> bs!832137 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167682 lambda!167656))))

(declare-fun bs!832138 () Bool)

(assert (= bs!832138 (and b!4493593 b!4493589)))

(assert (=> bs!832138 (= lambda!167682 lambda!167680)))

(assert (=> bs!832135 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167682 lambda!167666))))

(declare-fun bs!832139 () Bool)

(assert (= bs!832139 (and b!4493593 b!4493481)))

(assert (=> bs!832139 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167682 lambda!167665))))

(declare-fun bs!832140 () Bool)

(assert (= bs!832140 (and b!4493593 d!1377361)))

(assert (=> bs!832140 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676233) (= lambda!167682 lambda!167661))))

(assert (=> bs!832136 (= (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676224) (= lambda!167682 lambda!167659))))

(assert (=> b!4493593 true))

(declare-fun lt!1676451 () ListMap!3497)

(declare-fun lambda!167683 () Int)

(assert (=> bs!832133 (= (= lt!1676451 lt!1676374) (= lambda!167683 lambda!167668))))

(assert (=> bs!832134 (not (= lambda!167683 lambda!167518))))

(assert (=> bs!832135 (= (= lt!1676451 lt!1676365) (= lambda!167683 lambda!167667))))

(assert (=> bs!832137 (= (= lt!1676451 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167683 lambda!167656))))

(assert (=> bs!832138 (= (= lt!1676451 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167683 lambda!167680))))

(assert (=> bs!832136 (= (= lt!1676451 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167683 lambda!167658))))

(assert (=> b!4493593 (= (= lt!1676451 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167683 lambda!167682))))

(assert (=> bs!832135 (= (= lt!1676451 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167683 lambda!167666))))

(assert (=> bs!832139 (= (= lt!1676451 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167683 lambda!167665))))

(assert (=> bs!832140 (= (= lt!1676451 lt!1676233) (= lambda!167683 lambda!167661))))

(assert (=> bs!832136 (= (= lt!1676451 lt!1676224) (= lambda!167683 lambda!167659))))

(assert (=> b!4493593 true))

(declare-fun bs!832153 () Bool)

(declare-fun d!1377579 () Bool)

(assert (= bs!832153 (and d!1377579 d!1377503)))

(declare-fun lt!1676460 () ListMap!3497)

(declare-fun lambda!167685 () Int)

(assert (=> bs!832153 (= (= lt!1676460 lt!1676374) (= lambda!167685 lambda!167668))))

(declare-fun bs!832154 () Bool)

(assert (= bs!832154 (and d!1377579 d!1377079)))

(assert (=> bs!832154 (not (= lambda!167685 lambda!167518))))

(declare-fun bs!832155 () Bool)

(assert (= bs!832155 (and d!1377579 b!4493485)))

(assert (=> bs!832155 (= (= lt!1676460 lt!1676365) (= lambda!167685 lambda!167667))))

(declare-fun bs!832156 () Bool)

(assert (= bs!832156 (and d!1377579 b!4493589)))

(assert (=> bs!832156 (= (= lt!1676460 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167685 lambda!167680))))

(declare-fun bs!832157 () Bool)

(assert (= bs!832157 (and d!1377579 b!4493313)))

(assert (=> bs!832157 (= (= lt!1676460 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167685 lambda!167658))))

(declare-fun bs!832158 () Bool)

(assert (= bs!832158 (and d!1377579 b!4493593)))

(assert (=> bs!832158 (= (= lt!1676460 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167685 lambda!167682))))

(assert (=> bs!832155 (= (= lt!1676460 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167685 lambda!167666))))

(declare-fun bs!832159 () Bool)

(assert (= bs!832159 (and d!1377579 b!4493481)))

(assert (=> bs!832159 (= (= lt!1676460 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167685 lambda!167665))))

(assert (=> bs!832158 (= (= lt!1676460 lt!1676451) (= lambda!167685 lambda!167683))))

(declare-fun bs!832160 () Bool)

(assert (= bs!832160 (and d!1377579 b!4493309)))

(assert (=> bs!832160 (= (= lt!1676460 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167685 lambda!167656))))

(declare-fun bs!832161 () Bool)

(assert (= bs!832161 (and d!1377579 d!1377361)))

(assert (=> bs!832161 (= (= lt!1676460 lt!1676233) (= lambda!167685 lambda!167661))))

(assert (=> bs!832157 (= (= lt!1676460 lt!1676224) (= lambda!167685 lambda!167659))))

(assert (=> d!1377579 true))

(declare-fun e!2798983 () ListMap!3497)

(assert (=> b!4493589 (= e!2798983 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))

(declare-fun lt!1676445 () Unit!90944)

(declare-fun call!312687 () Unit!90944)

(assert (=> b!4493589 (= lt!1676445 call!312687)))

(declare-fun call!312688 () Bool)

(assert (=> b!4493589 call!312688))

(declare-fun lt!1676459 () Unit!90944)

(assert (=> b!4493589 (= lt!1676459 lt!1676445)))

(declare-fun call!312689 () Bool)

(assert (=> b!4493589 call!312689))

(declare-fun lt!1676453 () Unit!90944)

(declare-fun Unit!91075 () Unit!90944)

(assert (=> b!4493589 (= lt!1676453 Unit!91075)))

(declare-fun c!765569 () Bool)

(declare-fun bm!312682 () Bool)

(assert (=> bm!312682 (= call!312688 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (ite c!765569 lambda!167680 lambda!167683)))))

(declare-fun bm!312683 () Bool)

(assert (=> bm!312683 (= call!312689 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (ite c!765569 lambda!167680 lambda!167683)))))

(declare-fun bm!312684 () Bool)

(assert (=> bm!312684 (= call!312687 (lemmaContainsAllItsOwnKeys!298 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))

(declare-fun b!4493590 () Bool)

(declare-fun res!1867572 () Bool)

(declare-fun e!2798981 () Bool)

(assert (=> b!4493590 (=> (not res!1867572) (not e!2798981))))

(assert (=> b!4493590 (= res!1867572 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) lambda!167685))))

(declare-fun b!4493591 () Bool)

(assert (=> b!4493591 (= e!2798981 (invariantList!973 (toList!4236 lt!1676460)))))

(declare-fun b!4493592 () Bool)

(declare-fun e!2798982 () Bool)

(assert (=> b!4493592 (= e!2798982 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) lambda!167683))))

(assert (=> d!1377579 e!2798981))

(declare-fun res!1867573 () Bool)

(assert (=> d!1377579 (=> (not res!1867573) (not e!2798981))))

(assert (=> d!1377579 (= res!1867573 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lambda!167685))))

(assert (=> d!1377579 (= lt!1676460 e!2798983)))

(assert (=> d!1377579 (= c!765569 ((_ is Nil!50510) (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))

(assert (=> d!1377579 (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))

(assert (=> d!1377579 (= (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) lt!1676460)))

(assert (=> b!4493593 (= e!2798983 lt!1676451)))

(declare-fun lt!1676452 () ListMap!3497)

(assert (=> b!4493593 (= lt!1676452 (+!1454 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))))

(assert (=> b!4493593 (= lt!1676451 (addToMapMapFromBucket!641 (t!357592 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (+!1454 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))))

(declare-fun lt!1676450 () Unit!90944)

(assert (=> b!4493593 (= lt!1676450 call!312687)))

(assert (=> b!4493593 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) lambda!167682)))

(declare-fun lt!1676456 () Unit!90944)

(assert (=> b!4493593 (= lt!1676456 lt!1676450)))

(assert (=> b!4493593 (forall!10147 (toList!4236 lt!1676452) lambda!167683)))

(declare-fun lt!1676465 () Unit!90944)

(declare-fun Unit!91076 () Unit!90944)

(assert (=> b!4493593 (= lt!1676465 Unit!91076)))

(assert (=> b!4493593 (forall!10147 (t!357592 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) lambda!167683)))

(declare-fun lt!1676447 () Unit!90944)

(declare-fun Unit!91077 () Unit!90944)

(assert (=> b!4493593 (= lt!1676447 Unit!91077)))

(declare-fun lt!1676454 () Unit!90944)

(declare-fun Unit!91078 () Unit!90944)

(assert (=> b!4493593 (= lt!1676454 Unit!91078)))

(declare-fun lt!1676446 () Unit!90944)

(assert (=> b!4493593 (= lt!1676446 (forallContained!2405 (toList!4236 lt!1676452) lambda!167683 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))))

(assert (=> b!4493593 (contains!13161 lt!1676452 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))))

(declare-fun lt!1676455 () Unit!90944)

(declare-fun Unit!91079 () Unit!90944)

(assert (=> b!4493593 (= lt!1676455 Unit!91079)))

(assert (=> b!4493593 (contains!13161 lt!1676451 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))))

(declare-fun lt!1676463 () Unit!90944)

(declare-fun Unit!91080 () Unit!90944)

(assert (=> b!4493593 (= lt!1676463 Unit!91080)))

(assert (=> b!4493593 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lambda!167683)))

(declare-fun lt!1676448 () Unit!90944)

(declare-fun Unit!91081 () Unit!90944)

(assert (=> b!4493593 (= lt!1676448 Unit!91081)))

(assert (=> b!4493593 (forall!10147 (toList!4236 lt!1676452) lambda!167683)))

(declare-fun lt!1676462 () Unit!90944)

(declare-fun Unit!91082 () Unit!90944)

(assert (=> b!4493593 (= lt!1676462 Unit!91082)))

(declare-fun lt!1676458 () Unit!90944)

(declare-fun Unit!91083 () Unit!90944)

(assert (=> b!4493593 (= lt!1676458 Unit!91083)))

(declare-fun lt!1676461 () Unit!90944)

(assert (=> b!4493593 (= lt!1676461 (addForallContainsKeyThenBeforeAdding!298 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676451 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))) (_2!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))))

(assert (=> b!4493593 call!312688))

(declare-fun lt!1676457 () Unit!90944)

(assert (=> b!4493593 (= lt!1676457 lt!1676461)))

(assert (=> b!4493593 call!312689))

(declare-fun lt!1676464 () Unit!90944)

(declare-fun Unit!91087 () Unit!90944)

(assert (=> b!4493593 (= lt!1676464 Unit!91087)))

(declare-fun res!1867571 () Bool)

(assert (=> b!4493593 (= res!1867571 (forall!10147 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lambda!167683))))

(assert (=> b!4493593 (=> (not res!1867571) (not e!2798982))))

(assert (=> b!4493593 e!2798982))

(declare-fun lt!1676449 () Unit!90944)

(declare-fun Unit!91089 () Unit!90944)

(assert (=> b!4493593 (= lt!1676449 Unit!91089)))

(assert (= (and d!1377579 c!765569) b!4493589))

(assert (= (and d!1377579 (not c!765569)) b!4493593))

(assert (= (and b!4493593 res!1867571) b!4493592))

(assert (= (or b!4493589 b!4493593) bm!312683))

(assert (= (or b!4493589 b!4493593) bm!312682))

(assert (= (or b!4493589 b!4493593) bm!312684))

(assert (= (and d!1377579 res!1867573) b!4493590))

(assert (= (and b!4493590 res!1867572) b!4493591))

(declare-fun m!5219705 () Bool)

(assert (=> d!1377579 m!5219705))

(declare-fun m!5219707 () Bool)

(assert (=> d!1377579 m!5219707))

(declare-fun m!5219709 () Bool)

(assert (=> b!4493590 m!5219709))

(declare-fun m!5219711 () Bool)

(assert (=> bm!312683 m!5219711))

(assert (=> bm!312682 m!5219711))

(declare-fun m!5219713 () Bool)

(assert (=> b!4493593 m!5219713))

(assert (=> b!4493593 m!5218347))

(declare-fun m!5219715 () Bool)

(assert (=> b!4493593 m!5219715))

(declare-fun m!5219717 () Bool)

(assert (=> b!4493593 m!5219717))

(assert (=> b!4493593 m!5219713))

(declare-fun m!5219719 () Bool)

(assert (=> b!4493593 m!5219719))

(assert (=> b!4493593 m!5218347))

(declare-fun m!5219721 () Bool)

(assert (=> b!4493593 m!5219721))

(declare-fun m!5219723 () Bool)

(assert (=> b!4493593 m!5219723))

(assert (=> b!4493593 m!5219715))

(declare-fun m!5219725 () Bool)

(assert (=> b!4493593 m!5219725))

(declare-fun m!5219727 () Bool)

(assert (=> b!4493593 m!5219727))

(declare-fun m!5219729 () Bool)

(assert (=> b!4493593 m!5219729))

(assert (=> b!4493593 m!5219729))

(declare-fun m!5219731 () Bool)

(assert (=> b!4493593 m!5219731))

(declare-fun m!5219733 () Bool)

(assert (=> b!4493592 m!5219733))

(assert (=> bm!312684 m!5218347))

(declare-fun m!5219735 () Bool)

(assert (=> bm!312684 m!5219735))

(declare-fun m!5219739 () Bool)

(assert (=> b!4493591 m!5219739))

(assert (=> b!4492716 d!1377579))

(declare-fun bs!832177 () Bool)

(declare-fun d!1377583 () Bool)

(assert (= bs!832177 (and d!1377583 d!1377457)))

(declare-fun lambda!167687 () Int)

(assert (=> bs!832177 (= lambda!167687 lambda!167662)))

(declare-fun bs!832178 () Bool)

(assert (= bs!832178 (and d!1377583 d!1376987)))

(assert (=> bs!832178 (= lambda!167687 lambda!167487)))

(declare-fun bs!832179 () Bool)

(assert (= bs!832179 (and d!1377583 d!1377091)))

(assert (=> bs!832179 (= lambda!167687 lambda!167524)))

(declare-fun bs!832180 () Bool)

(assert (= bs!832180 (and d!1377583 d!1377139)))

(assert (=> bs!832180 (= lambda!167687 lambda!167533)))

(declare-fun bs!832181 () Bool)

(assert (= bs!832181 (and d!1377583 d!1377121)))

(assert (=> bs!832181 (= lambda!167687 lambda!167525)))

(declare-fun bs!832182 () Bool)

(assert (= bs!832182 (and d!1377583 start!442860)))

(assert (=> bs!832182 (= lambda!167687 lambda!167477)))

(declare-fun bs!832183 () Bool)

(assert (= bs!832183 (and d!1377583 d!1377123)))

(assert (=> bs!832183 (= lambda!167687 lambda!167528)))

(declare-fun bs!832184 () Bool)

(assert (= bs!832184 (and d!1377583 d!1377051)))

(assert (=> bs!832184 (= lambda!167687 lambda!167503)))

(declare-fun bs!832185 () Bool)

(assert (= bs!832185 (and d!1377583 d!1377053)))

(assert (=> bs!832185 (= lambda!167687 lambda!167515)))

(declare-fun bs!832186 () Bool)

(assert (= bs!832186 (and d!1377583 d!1377083)))

(assert (=> bs!832186 (not (= lambda!167687 lambda!167521))))

(declare-fun bs!832187 () Bool)

(assert (= bs!832187 (and d!1377583 d!1377125)))

(assert (=> bs!832187 (= lambda!167687 lambda!167529)))

(declare-fun bs!832188 () Bool)

(assert (= bs!832188 (and d!1377583 d!1377133)))

(assert (=> bs!832188 (= lambda!167687 lambda!167532)))

(declare-fun bs!832189 () Bool)

(assert (= bs!832189 (and d!1377583 d!1377505)))

(assert (=> bs!832189 (= lambda!167687 lambda!167669)))

(declare-fun bs!832190 () Bool)

(assert (= bs!832190 (and d!1377583 d!1377029)))

(assert (=> bs!832190 (= lambda!167687 lambda!167500)))

(declare-fun lt!1676467 () ListMap!3497)

(assert (=> d!1377583 (invariantList!973 (toList!4236 lt!1676467))))

(declare-fun e!2798985 () ListMap!3497)

(assert (=> d!1377583 (= lt!1676467 e!2798985)))

(declare-fun c!765571 () Bool)

(assert (=> d!1377583 (= c!765571 ((_ is Cons!50511) (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))

(assert (=> d!1377583 (forall!10145 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))) lambda!167687)))

(assert (=> d!1377583 (= (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) lt!1676467)))

(declare-fun b!4493596 () Bool)

(assert (=> b!4493596 (= e!2798985 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))))))))

(declare-fun b!4493597 () Bool)

(assert (=> b!4493597 (= e!2798985 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377583 c!765571) b!4493596))

(assert (= (and d!1377583 (not c!765571)) b!4493597))

(declare-fun m!5219763 () Bool)

(assert (=> d!1377583 m!5219763))

(declare-fun m!5219765 () Bool)

(assert (=> d!1377583 m!5219765))

(declare-fun m!5219769 () Bool)

(assert (=> b!4493596 m!5219769))

(assert (=> b!4493596 m!5219769))

(declare-fun m!5219775 () Bool)

(assert (=> b!4493596 m!5219775))

(assert (=> b!4492716 d!1377583))

(declare-fun d!1377597 () Bool)

(assert (=> d!1377597 (dynLambda!21087 lambda!167477 lt!1675669)))

(assert (=> d!1377597 true))

(declare-fun _$7!1753 () Unit!90944)

(assert (=> d!1377597 (= (choose!28988 (toList!4235 lm!1477) lambda!167477 lt!1675669) _$7!1753)))

(declare-fun b_lambda!151705 () Bool)

(assert (=> (not b_lambda!151705) (not d!1377597)))

(declare-fun bs!832194 () Bool)

(assert (= bs!832194 d!1377597))

(assert (=> bs!832194 m!5218273))

(assert (=> d!1377097 d!1377597))

(assert (=> d!1377097 d!1377085))

(declare-fun d!1377601 () Bool)

(declare-fun c!765573 () Bool)

(assert (=> d!1377601 (= c!765573 ((_ is Nil!50510) (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))

(declare-fun e!2799000 () (InoxSet tuple2!50890))

(assert (=> d!1377601 (= (content!8226 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) e!2799000)))

(declare-fun b!4493614 () Bool)

(assert (=> b!4493614 (= e!2799000 ((as const (Array tuple2!50890 Bool)) false))))

(declare-fun b!4493615 () Bool)

(assert (=> b!4493615 (= e!2799000 ((_ map or) (store ((as const (Array tuple2!50890 Bool)) false) (h!56319 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) true) (content!8226 (t!357592 (toList!4236 (extractMap!1170 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))))

(assert (= (and d!1377601 c!765573) b!4493614))

(assert (= (and d!1377601 (not c!765573)) b!4493615))

(declare-fun m!5219781 () Bool)

(assert (=> b!4493615 m!5219781))

(declare-fun m!5219783 () Bool)

(assert (=> b!4493615 m!5219783))

(assert (=> d!1377113 d!1377601))

(declare-fun d!1377603 () Bool)

(declare-fun c!765574 () Bool)

(assert (=> d!1377603 (= c!765574 ((_ is Nil!50510) (toList!4236 lt!1675674)))))

(declare-fun e!2799001 () (InoxSet tuple2!50890))

(assert (=> d!1377603 (= (content!8226 (toList!4236 lt!1675674)) e!2799001)))

(declare-fun b!4493616 () Bool)

(assert (=> b!4493616 (= e!2799001 ((as const (Array tuple2!50890 Bool)) false))))

(declare-fun b!4493617 () Bool)

(assert (=> b!4493617 (= e!2799001 ((_ map or) (store ((as const (Array tuple2!50890 Bool)) false) (h!56319 (toList!4236 lt!1675674)) true) (content!8226 (t!357592 (toList!4236 lt!1675674)))))))

(assert (= (and d!1377603 c!765574) b!4493616))

(assert (= (and d!1377603 (not c!765574)) b!4493617))

(declare-fun m!5219785 () Bool)

(assert (=> b!4493617 m!5219785))

(declare-fun m!5219787 () Bool)

(assert (=> b!4493617 m!5219787))

(assert (=> d!1377113 d!1377603))

(declare-fun d!1377605 () Bool)

(declare-fun res!1867588 () Bool)

(declare-fun e!2799002 () Bool)

(assert (=> d!1377605 (=> res!1867588 e!2799002)))

(assert (=> d!1377605 (= res!1867588 ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377605 (= (forall!10145 (toList!4235 lm!1477) lambda!167521) e!2799002)))

(declare-fun b!4493618 () Bool)

(declare-fun e!2799003 () Bool)

(assert (=> b!4493618 (= e!2799002 e!2799003)))

(declare-fun res!1867589 () Bool)

(assert (=> b!4493618 (=> (not res!1867589) (not e!2799003))))

(assert (=> b!4493618 (= res!1867589 (dynLambda!21087 lambda!167521 (h!56320 (toList!4235 lm!1477))))))

(declare-fun b!4493619 () Bool)

(assert (=> b!4493619 (= e!2799003 (forall!10145 (t!357593 (toList!4235 lm!1477)) lambda!167521))))

(assert (= (and d!1377605 (not res!1867588)) b!4493618))

(assert (= (and b!4493618 res!1867589) b!4493619))

(declare-fun b_lambda!151707 () Bool)

(assert (=> (not b_lambda!151707) (not b!4493618)))

(declare-fun m!5219789 () Bool)

(assert (=> b!4493618 m!5219789))

(declare-fun m!5219791 () Bool)

(assert (=> b!4493619 m!5219791))

(assert (=> d!1377083 d!1377605))

(declare-fun d!1377607 () Bool)

(assert (=> d!1377607 (= (isEmpty!28565 (toList!4235 lm!1477)) ((_ is Nil!50511) (toList!4235 lm!1477)))))

(assert (=> d!1377135 d!1377607))

(declare-fun d!1377609 () Bool)

(assert (=> d!1377609 (= (head!9324 (toList!4235 lm!1477)) (h!56320 (toList!4235 lm!1477)))))

(assert (=> d!1377117 d!1377609))

(declare-fun d!1377611 () Bool)

(assert (=> d!1377611 (= (get!16493 (getValueByKey!1005 (toList!4235 lm!1477) hash!344)) (v!44478 (getValueByKey!1005 (toList!4235 lm!1477) hash!344)))))

(assert (=> d!1377101 d!1377611))

(assert (=> d!1377101 d!1377501))

(declare-fun d!1377613 () Bool)

(declare-fun res!1867590 () Bool)

(declare-fun e!2799004 () Bool)

(assert (=> d!1377613 (=> res!1867590 e!2799004)))

(assert (=> d!1377613 (= res!1867590 (and ((_ is Cons!50511) (toList!4235 lm!1477)) (= (_1!28740 (h!56320 (toList!4235 lm!1477))) lt!1675667)))))

(assert (=> d!1377613 (= (containsKey!1650 (toList!4235 lm!1477) lt!1675667) e!2799004)))

(declare-fun b!4493620 () Bool)

(declare-fun e!2799005 () Bool)

(assert (=> b!4493620 (= e!2799004 e!2799005)))

(declare-fun res!1867591 () Bool)

(assert (=> b!4493620 (=> (not res!1867591) (not e!2799005))))

(assert (=> b!4493620 (= res!1867591 (and (or (not ((_ is Cons!50511) (toList!4235 lm!1477))) (bvsle (_1!28740 (h!56320 (toList!4235 lm!1477))) lt!1675667)) ((_ is Cons!50511) (toList!4235 lm!1477)) (bvslt (_1!28740 (h!56320 (toList!4235 lm!1477))) lt!1675667)))))

(declare-fun b!4493621 () Bool)

(assert (=> b!4493621 (= e!2799005 (containsKey!1650 (t!357593 (toList!4235 lm!1477)) lt!1675667))))

(assert (= (and d!1377613 (not res!1867590)) b!4493620))

(assert (= (and b!4493620 res!1867591) b!4493621))

(declare-fun m!5219793 () Bool)

(assert (=> b!4493621 m!5219793))

(assert (=> d!1377089 d!1377613))

(declare-fun bs!832219 () Bool)

(declare-fun b!4493622 () Bool)

(assert (= bs!832219 (and b!4493622 d!1377503)))

(declare-fun lambda!167691 () Int)

(assert (=> bs!832219 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676374) (= lambda!167691 lambda!167668))))

(declare-fun bs!832220 () Bool)

(assert (= bs!832220 (and b!4493622 d!1377079)))

(assert (=> bs!832220 (not (= lambda!167691 lambda!167518))))

(declare-fun bs!832221 () Bool)

(assert (= bs!832221 (and b!4493622 b!4493485)))

(assert (=> bs!832221 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676365) (= lambda!167691 lambda!167667))))

(declare-fun bs!832222 () Bool)

(assert (= bs!832222 (and b!4493622 d!1377579)))

(assert (=> bs!832222 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676460) (= lambda!167691 lambda!167685))))

(declare-fun bs!832223 () Bool)

(assert (= bs!832223 (and b!4493622 b!4493589)))

(assert (=> bs!832223 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167691 lambda!167680))))

(declare-fun bs!832224 () Bool)

(assert (= bs!832224 (and b!4493622 b!4493313)))

(assert (=> bs!832224 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167691 lambda!167658))))

(declare-fun bs!832225 () Bool)

(assert (= bs!832225 (and b!4493622 b!4493593)))

(assert (=> bs!832225 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167691 lambda!167682))))

(assert (=> bs!832221 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167691 lambda!167666))))

(declare-fun bs!832226 () Bool)

(assert (= bs!832226 (and b!4493622 b!4493481)))

(assert (=> bs!832226 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167691 lambda!167665))))

(assert (=> bs!832225 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676451) (= lambda!167691 lambda!167683))))

(declare-fun bs!832227 () Bool)

(assert (= bs!832227 (and b!4493622 b!4493309)))

(assert (=> bs!832227 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167691 lambda!167656))))

(declare-fun bs!832228 () Bool)

(assert (= bs!832228 (and b!4493622 d!1377361)))

(assert (=> bs!832228 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676233) (= lambda!167691 lambda!167661))))

(assert (=> bs!832224 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676224) (= lambda!167691 lambda!167659))))

(assert (=> b!4493622 true))

(declare-fun bs!832229 () Bool)

(declare-fun b!4493626 () Bool)

(assert (= bs!832229 (and b!4493626 d!1377503)))

(declare-fun lambda!167692 () Int)

(assert (=> bs!832229 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676374) (= lambda!167692 lambda!167668))))

(declare-fun bs!832230 () Bool)

(assert (= bs!832230 (and b!4493626 d!1377079)))

(assert (=> bs!832230 (not (= lambda!167692 lambda!167518))))

(declare-fun bs!832231 () Bool)

(assert (= bs!832231 (and b!4493626 b!4493485)))

(assert (=> bs!832231 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676365) (= lambda!167692 lambda!167667))))

(declare-fun bs!832232 () Bool)

(assert (= bs!832232 (and b!4493626 d!1377579)))

(assert (=> bs!832232 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676460) (= lambda!167692 lambda!167685))))

(declare-fun bs!832233 () Bool)

(assert (= bs!832233 (and b!4493626 b!4493589)))

(assert (=> bs!832233 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167692 lambda!167680))))

(declare-fun bs!832234 () Bool)

(assert (= bs!832234 (and b!4493626 b!4493622)))

(assert (=> bs!832234 (= lambda!167692 lambda!167691)))

(declare-fun bs!832235 () Bool)

(assert (= bs!832235 (and b!4493626 b!4493313)))

(assert (=> bs!832235 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167692 lambda!167658))))

(declare-fun bs!832236 () Bool)

(assert (= bs!832236 (and b!4493626 b!4493593)))

(assert (=> bs!832236 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167692 lambda!167682))))

(assert (=> bs!832231 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167692 lambda!167666))))

(declare-fun bs!832237 () Bool)

(assert (= bs!832237 (and b!4493626 b!4493481)))

(assert (=> bs!832237 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167692 lambda!167665))))

(assert (=> bs!832236 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676451) (= lambda!167692 lambda!167683))))

(declare-fun bs!832240 () Bool)

(assert (= bs!832240 (and b!4493626 b!4493309)))

(assert (=> bs!832240 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167692 lambda!167656))))

(declare-fun bs!832242 () Bool)

(assert (= bs!832242 (and b!4493626 d!1377361)))

(assert (=> bs!832242 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676233) (= lambda!167692 lambda!167661))))

(assert (=> bs!832235 (= (= (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676224) (= lambda!167692 lambda!167659))))

(assert (=> b!4493626 true))

(declare-fun lt!1676497 () ListMap!3497)

(declare-fun lambda!167694 () Int)

(assert (=> bs!832229 (= (= lt!1676497 lt!1676374) (= lambda!167694 lambda!167668))))

(assert (=> bs!832230 (not (= lambda!167694 lambda!167518))))

(assert (=> bs!832231 (= (= lt!1676497 lt!1676365) (= lambda!167694 lambda!167667))))

(assert (=> bs!832232 (= (= lt!1676497 lt!1676460) (= lambda!167694 lambda!167685))))

(assert (=> b!4493626 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167694 lambda!167692))))

(assert (=> bs!832233 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167694 lambda!167680))))

(assert (=> bs!832234 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167694 lambda!167691))))

(assert (=> bs!832235 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167694 lambda!167658))))

(assert (=> bs!832236 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167694 lambda!167682))))

(assert (=> bs!832231 (= (= lt!1676497 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167694 lambda!167666))))

(assert (=> bs!832237 (= (= lt!1676497 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167694 lambda!167665))))

(assert (=> bs!832236 (= (= lt!1676497 lt!1676451) (= lambda!167694 lambda!167683))))

(assert (=> bs!832240 (= (= lt!1676497 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167694 lambda!167656))))

(assert (=> bs!832242 (= (= lt!1676497 lt!1676233) (= lambda!167694 lambda!167661))))

(assert (=> bs!832235 (= (= lt!1676497 lt!1676224) (= lambda!167694 lambda!167659))))

(assert (=> b!4493626 true))

(declare-fun bs!832255 () Bool)

(declare-fun d!1377615 () Bool)

(assert (= bs!832255 (and d!1377615 d!1377503)))

(declare-fun lt!1676506 () ListMap!3497)

(declare-fun lambda!167695 () Int)

(assert (=> bs!832255 (= (= lt!1676506 lt!1676374) (= lambda!167695 lambda!167668))))

(declare-fun bs!832256 () Bool)

(assert (= bs!832256 (and d!1377615 b!4493626)))

(assert (=> bs!832256 (= (= lt!1676506 lt!1676497) (= lambda!167695 lambda!167694))))

(declare-fun bs!832257 () Bool)

(assert (= bs!832257 (and d!1377615 d!1377079)))

(assert (=> bs!832257 (not (= lambda!167695 lambda!167518))))

(declare-fun bs!832258 () Bool)

(assert (= bs!832258 (and d!1377615 b!4493485)))

(assert (=> bs!832258 (= (= lt!1676506 lt!1676365) (= lambda!167695 lambda!167667))))

(declare-fun bs!832259 () Bool)

(assert (= bs!832259 (and d!1377615 d!1377579)))

(assert (=> bs!832259 (= (= lt!1676506 lt!1676460) (= lambda!167695 lambda!167685))))

(assert (=> bs!832256 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167695 lambda!167692))))

(declare-fun bs!832260 () Bool)

(assert (= bs!832260 (and d!1377615 b!4493589)))

(assert (=> bs!832260 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167695 lambda!167680))))

(declare-fun bs!832261 () Bool)

(assert (= bs!832261 (and d!1377615 b!4493622)))

(assert (=> bs!832261 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167695 lambda!167691))))

(declare-fun bs!832262 () Bool)

(assert (= bs!832262 (and d!1377615 b!4493313)))

(assert (=> bs!832262 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167695 lambda!167658))))

(declare-fun bs!832263 () Bool)

(assert (= bs!832263 (and d!1377615 b!4493593)))

(assert (=> bs!832263 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167695 lambda!167682))))

(assert (=> bs!832258 (= (= lt!1676506 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167695 lambda!167666))))

(declare-fun bs!832264 () Bool)

(assert (= bs!832264 (and d!1377615 b!4493481)))

(assert (=> bs!832264 (= (= lt!1676506 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167695 lambda!167665))))

(assert (=> bs!832263 (= (= lt!1676506 lt!1676451) (= lambda!167695 lambda!167683))))

(declare-fun bs!832265 () Bool)

(assert (= bs!832265 (and d!1377615 b!4493309)))

(assert (=> bs!832265 (= (= lt!1676506 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167695 lambda!167656))))

(declare-fun bs!832266 () Bool)

(assert (= bs!832266 (and d!1377615 d!1377361)))

(assert (=> bs!832266 (= (= lt!1676506 lt!1676233) (= lambda!167695 lambda!167661))))

(assert (=> bs!832262 (= (= lt!1676506 lt!1676224) (= lambda!167695 lambda!167659))))

(assert (=> d!1377615 true))

(declare-fun e!2799008 () ListMap!3497)

(assert (=> b!4493622 (= e!2799008 (extractMap!1170 (t!357593 (toList!4235 lm!1477))))))

(declare-fun lt!1676491 () Unit!90944)

(declare-fun call!312693 () Unit!90944)

(assert (=> b!4493622 (= lt!1676491 call!312693)))

(declare-fun call!312694 () Bool)

(assert (=> b!4493622 call!312694))

(declare-fun lt!1676505 () Unit!90944)

(assert (=> b!4493622 (= lt!1676505 lt!1676491)))

(declare-fun call!312695 () Bool)

(assert (=> b!4493622 call!312695))

(declare-fun lt!1676499 () Unit!90944)

(declare-fun Unit!91097 () Unit!90944)

(assert (=> b!4493622 (= lt!1676499 Unit!91097)))

(declare-fun c!765575 () Bool)

(declare-fun bm!312688 () Bool)

(assert (=> bm!312688 (= call!312694 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (ite c!765575 lambda!167691 lambda!167694)))))

(declare-fun bm!312689 () Bool)

(assert (=> bm!312689 (= call!312695 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (ite c!765575 lambda!167691 lambda!167694)))))

(declare-fun bm!312690 () Bool)

(assert (=> bm!312690 (= call!312693 (lemmaContainsAllItsOwnKeys!298 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))))))

(declare-fun b!4493623 () Bool)

(declare-fun res!1867593 () Bool)

(declare-fun e!2799006 () Bool)

(assert (=> b!4493623 (=> (not res!1867593) (not e!2799006))))

(assert (=> b!4493623 (= res!1867593 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lambda!167695))))

(declare-fun b!4493624 () Bool)

(assert (=> b!4493624 (= e!2799006 (invariantList!973 (toList!4236 lt!1676506)))))

(declare-fun b!4493625 () Bool)

(declare-fun e!2799007 () Bool)

(assert (=> b!4493625 (= e!2799007 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lambda!167694))))

(assert (=> d!1377615 e!2799006))

(declare-fun res!1867594 () Bool)

(assert (=> d!1377615 (=> (not res!1867594) (not e!2799006))))

(assert (=> d!1377615 (= res!1867594 (forall!10147 (_2!28740 (h!56320 (toList!4235 lm!1477))) lambda!167695))))

(assert (=> d!1377615 (= lt!1676506 e!2799008)))

(assert (=> d!1377615 (= c!765575 ((_ is Nil!50510) (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (=> d!1377615 (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477))))))

(assert (=> d!1377615 (= (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 lm!1477))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lt!1676506)))

(assert (=> b!4493626 (= e!2799008 lt!1676497)))

(declare-fun lt!1676498 () ListMap!3497)

(assert (=> b!4493626 (= lt!1676498 (+!1454 (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(assert (=> b!4493626 (= lt!1676497 (addToMapMapFromBucket!641 (t!357592 (_2!28740 (h!56320 (toList!4235 lm!1477)))) (+!1454 (extractMap!1170 (t!357593 (toList!4235 lm!1477))) (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))))

(declare-fun lt!1676496 () Unit!90944)

(assert (=> b!4493626 (= lt!1676496 call!312693)))

(assert (=> b!4493626 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) lambda!167692)))

(declare-fun lt!1676502 () Unit!90944)

(assert (=> b!4493626 (= lt!1676502 lt!1676496)))

(assert (=> b!4493626 (forall!10147 (toList!4236 lt!1676498) lambda!167694)))

(declare-fun lt!1676511 () Unit!90944)

(declare-fun Unit!91098 () Unit!90944)

(assert (=> b!4493626 (= lt!1676511 Unit!91098)))

(assert (=> b!4493626 (forall!10147 (t!357592 (_2!28740 (h!56320 (toList!4235 lm!1477)))) lambda!167694)))

(declare-fun lt!1676493 () Unit!90944)

(declare-fun Unit!91099 () Unit!90944)

(assert (=> b!4493626 (= lt!1676493 Unit!91099)))

(declare-fun lt!1676500 () Unit!90944)

(declare-fun Unit!91100 () Unit!90944)

(assert (=> b!4493626 (= lt!1676500 Unit!91100)))

(declare-fun lt!1676492 () Unit!90944)

(assert (=> b!4493626 (= lt!1676492 (forallContained!2405 (toList!4236 lt!1676498) lambda!167694 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(assert (=> b!4493626 (contains!13161 lt!1676498 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(declare-fun lt!1676501 () Unit!90944)

(declare-fun Unit!91101 () Unit!90944)

(assert (=> b!4493626 (= lt!1676501 Unit!91101)))

(assert (=> b!4493626 (contains!13161 lt!1676497 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))))))

(declare-fun lt!1676509 () Unit!90944)

(declare-fun Unit!91102 () Unit!90944)

(assert (=> b!4493626 (= lt!1676509 Unit!91102)))

(assert (=> b!4493626 (forall!10147 (_2!28740 (h!56320 (toList!4235 lm!1477))) lambda!167694)))

(declare-fun lt!1676494 () Unit!90944)

(declare-fun Unit!91103 () Unit!90944)

(assert (=> b!4493626 (= lt!1676494 Unit!91103)))

(assert (=> b!4493626 (forall!10147 (toList!4236 lt!1676498) lambda!167694)))

(declare-fun lt!1676508 () Unit!90944)

(declare-fun Unit!91104 () Unit!90944)

(assert (=> b!4493626 (= lt!1676508 Unit!91104)))

(declare-fun lt!1676504 () Unit!90944)

(declare-fun Unit!91105 () Unit!90944)

(assert (=> b!4493626 (= lt!1676504 Unit!91105)))

(declare-fun lt!1676507 () Unit!90944)

(assert (=> b!4493626 (= lt!1676507 (addForallContainsKeyThenBeforeAdding!298 (extractMap!1170 (t!357593 (toList!4235 lm!1477))) lt!1676497 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477))))) (_2!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))))

(assert (=> b!4493626 call!312694))

(declare-fun lt!1676503 () Unit!90944)

(assert (=> b!4493626 (= lt!1676503 lt!1676507)))

(assert (=> b!4493626 call!312695))

(declare-fun lt!1676510 () Unit!90944)

(declare-fun Unit!91106 () Unit!90944)

(assert (=> b!4493626 (= lt!1676510 Unit!91106)))

(declare-fun res!1867592 () Bool)

(assert (=> b!4493626 (= res!1867592 (forall!10147 (_2!28740 (h!56320 (toList!4235 lm!1477))) lambda!167694))))

(assert (=> b!4493626 (=> (not res!1867592) (not e!2799007))))

(assert (=> b!4493626 e!2799007))

(declare-fun lt!1676495 () Unit!90944)

(declare-fun Unit!91107 () Unit!90944)

(assert (=> b!4493626 (= lt!1676495 Unit!91107)))

(assert (= (and d!1377615 c!765575) b!4493622))

(assert (= (and d!1377615 (not c!765575)) b!4493626))

(assert (= (and b!4493626 res!1867592) b!4493625))

(assert (= (or b!4493622 b!4493626) bm!312689))

(assert (= (or b!4493622 b!4493626) bm!312688))

(assert (= (or b!4493622 b!4493626) bm!312690))

(assert (= (and d!1377615 res!1867594) b!4493623))

(assert (= (and b!4493623 res!1867593) b!4493624))

(declare-fun m!5219831 () Bool)

(assert (=> d!1377615 m!5219831))

(assert (=> d!1377615 m!5218413))

(declare-fun m!5219833 () Bool)

(assert (=> b!4493623 m!5219833))

(declare-fun m!5219835 () Bool)

(assert (=> bm!312689 m!5219835))

(assert (=> bm!312688 m!5219835))

(declare-fun m!5219837 () Bool)

(assert (=> b!4493626 m!5219837))

(assert (=> b!4493626 m!5217877))

(declare-fun m!5219839 () Bool)

(assert (=> b!4493626 m!5219839))

(declare-fun m!5219841 () Bool)

(assert (=> b!4493626 m!5219841))

(assert (=> b!4493626 m!5219837))

(declare-fun m!5219843 () Bool)

(assert (=> b!4493626 m!5219843))

(assert (=> b!4493626 m!5217877))

(declare-fun m!5219845 () Bool)

(assert (=> b!4493626 m!5219845))

(declare-fun m!5219847 () Bool)

(assert (=> b!4493626 m!5219847))

(assert (=> b!4493626 m!5219839))

(declare-fun m!5219849 () Bool)

(assert (=> b!4493626 m!5219849))

(declare-fun m!5219851 () Bool)

(assert (=> b!4493626 m!5219851))

(declare-fun m!5219853 () Bool)

(assert (=> b!4493626 m!5219853))

(assert (=> b!4493626 m!5219853))

(declare-fun m!5219855 () Bool)

(assert (=> b!4493626 m!5219855))

(declare-fun m!5219857 () Bool)

(assert (=> b!4493625 m!5219857))

(assert (=> bm!312690 m!5217877))

(declare-fun m!5219859 () Bool)

(assert (=> bm!312690 m!5219859))

(declare-fun m!5219861 () Bool)

(assert (=> b!4493624 m!5219861))

(assert (=> b!4492741 d!1377615))

(assert (=> b!4492741 d!1377029))

(declare-fun bs!832282 () Bool)

(declare-fun b!4493629 () Bool)

(assert (= bs!832282 (and b!4493629 d!1377503)))

(declare-fun lambda!167697 () Int)

(assert (=> bs!832282 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676374) (= lambda!167697 lambda!167668))))

(declare-fun bs!832283 () Bool)

(assert (= bs!832283 (and b!4493629 b!4493626)))

(assert (=> bs!832283 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676497) (= lambda!167697 lambda!167694))))

(declare-fun bs!832284 () Bool)

(assert (= bs!832284 (and b!4493629 d!1377079)))

(assert (=> bs!832284 (not (= lambda!167697 lambda!167518))))

(declare-fun bs!832285 () Bool)

(assert (= bs!832285 (and b!4493629 b!4493485)))

(assert (=> bs!832285 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676365) (= lambda!167697 lambda!167667))))

(declare-fun bs!832286 () Bool)

(assert (= bs!832286 (and b!4493629 d!1377579)))

(assert (=> bs!832286 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676460) (= lambda!167697 lambda!167685))))

(declare-fun bs!832287 () Bool)

(assert (= bs!832287 (and b!4493629 d!1377615)))

(assert (=> bs!832287 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676506) (= lambda!167697 lambda!167695))))

(assert (=> bs!832283 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167697 lambda!167692))))

(declare-fun bs!832288 () Bool)

(assert (= bs!832288 (and b!4493629 b!4493589)))

(assert (=> bs!832288 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167697 lambda!167680))))

(declare-fun bs!832289 () Bool)

(assert (= bs!832289 (and b!4493629 b!4493622)))

(assert (=> bs!832289 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167697 lambda!167691))))

(declare-fun bs!832290 () Bool)

(assert (= bs!832290 (and b!4493629 b!4493313)))

(assert (=> bs!832290 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167697 lambda!167658))))

(declare-fun bs!832291 () Bool)

(assert (= bs!832291 (and b!4493629 b!4493593)))

(assert (=> bs!832291 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167697 lambda!167682))))

(assert (=> bs!832285 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167697 lambda!167666))))

(declare-fun bs!832292 () Bool)

(assert (= bs!832292 (and b!4493629 b!4493481)))

(assert (=> bs!832292 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167697 lambda!167665))))

(assert (=> bs!832291 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676451) (= lambda!167697 lambda!167683))))

(declare-fun bs!832293 () Bool)

(assert (= bs!832293 (and b!4493629 b!4493309)))

(assert (=> bs!832293 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167697 lambda!167656))))

(declare-fun bs!832294 () Bool)

(assert (= bs!832294 (and b!4493629 d!1377361)))

(assert (=> bs!832294 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676233) (= lambda!167697 lambda!167661))))

(assert (=> bs!832290 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676224) (= lambda!167697 lambda!167659))))

(assert (=> b!4493629 true))

(declare-fun bs!832295 () Bool)

(declare-fun b!4493633 () Bool)

(assert (= bs!832295 (and b!4493633 d!1377503)))

(declare-fun lambda!167698 () Int)

(assert (=> bs!832295 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676374) (= lambda!167698 lambda!167668))))

(declare-fun bs!832296 () Bool)

(assert (= bs!832296 (and b!4493633 b!4493626)))

(assert (=> bs!832296 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676497) (= lambda!167698 lambda!167694))))

(declare-fun bs!832297 () Bool)

(assert (= bs!832297 (and b!4493633 d!1377079)))

(assert (=> bs!832297 (not (= lambda!167698 lambda!167518))))

(declare-fun bs!832298 () Bool)

(assert (= bs!832298 (and b!4493633 b!4493485)))

(assert (=> bs!832298 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676365) (= lambda!167698 lambda!167667))))

(declare-fun bs!832299 () Bool)

(assert (= bs!832299 (and b!4493633 d!1377579)))

(assert (=> bs!832299 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676460) (= lambda!167698 lambda!167685))))

(declare-fun bs!832300 () Bool)

(assert (= bs!832300 (and b!4493633 d!1377615)))

(assert (=> bs!832300 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676506) (= lambda!167698 lambda!167695))))

(assert (=> bs!832296 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167698 lambda!167692))))

(declare-fun bs!832301 () Bool)

(assert (= bs!832301 (and b!4493633 b!4493629)))

(assert (=> bs!832301 (= lambda!167698 lambda!167697)))

(declare-fun bs!832302 () Bool)

(assert (= bs!832302 (and b!4493633 b!4493589)))

(assert (=> bs!832302 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167698 lambda!167680))))

(declare-fun bs!832303 () Bool)

(assert (= bs!832303 (and b!4493633 b!4493622)))

(assert (=> bs!832303 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167698 lambda!167691))))

(declare-fun bs!832304 () Bool)

(assert (= bs!832304 (and b!4493633 b!4493313)))

(assert (=> bs!832304 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167698 lambda!167658))))

(declare-fun bs!832305 () Bool)

(assert (= bs!832305 (and b!4493633 b!4493593)))

(assert (=> bs!832305 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167698 lambda!167682))))

(assert (=> bs!832298 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167698 lambda!167666))))

(declare-fun bs!832306 () Bool)

(assert (= bs!832306 (and b!4493633 b!4493481)))

(assert (=> bs!832306 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167698 lambda!167665))))

(assert (=> bs!832305 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676451) (= lambda!167698 lambda!167683))))

(declare-fun bs!832307 () Bool)

(assert (= bs!832307 (and b!4493633 b!4493309)))

(assert (=> bs!832307 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167698 lambda!167656))))

(declare-fun bs!832308 () Bool)

(assert (= bs!832308 (and b!4493633 d!1377361)))

(assert (=> bs!832308 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676233) (= lambda!167698 lambda!167661))))

(assert (=> bs!832304 (= (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676224) (= lambda!167698 lambda!167659))))

(assert (=> b!4493633 true))

(declare-fun lt!1676519 () ListMap!3497)

(declare-fun lambda!167699 () Int)

(assert (=> bs!832295 (= (= lt!1676519 lt!1676374) (= lambda!167699 lambda!167668))))

(assert (=> bs!832296 (= (= lt!1676519 lt!1676497) (= lambda!167699 lambda!167694))))

(assert (=> bs!832297 (not (= lambda!167699 lambda!167518))))

(assert (=> bs!832298 (= (= lt!1676519 lt!1676365) (= lambda!167699 lambda!167667))))

(assert (=> bs!832299 (= (= lt!1676519 lt!1676460) (= lambda!167699 lambda!167685))))

(assert (=> bs!832300 (= (= lt!1676519 lt!1676506) (= lambda!167699 lambda!167695))))

(assert (=> bs!832296 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167699 lambda!167692))))

(assert (=> bs!832301 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (= lambda!167699 lambda!167697))))

(assert (=> bs!832302 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167699 lambda!167680))))

(assert (=> bs!832303 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167699 lambda!167691))))

(assert (=> bs!832304 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167699 lambda!167658))))

(assert (=> bs!832305 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167699 lambda!167682))))

(assert (=> bs!832298 (= (= lt!1676519 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167699 lambda!167666))))

(assert (=> bs!832306 (= (= lt!1676519 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167699 lambda!167665))))

(assert (=> bs!832305 (= (= lt!1676519 lt!1676451) (= lambda!167699 lambda!167683))))

(assert (=> bs!832307 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167699 lambda!167656))))

(assert (=> bs!832308 (= (= lt!1676519 lt!1676233) (= lambda!167699 lambda!167661))))

(assert (=> b!4493633 (= (= lt!1676519 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (= lambda!167699 lambda!167698))))

(assert (=> bs!832304 (= (= lt!1676519 lt!1676224) (= lambda!167699 lambda!167659))))

(assert (=> b!4493633 true))

(declare-fun bs!832309 () Bool)

(declare-fun d!1377619 () Bool)

(assert (= bs!832309 (and d!1377619 d!1377503)))

(declare-fun lt!1676528 () ListMap!3497)

(declare-fun lambda!167700 () Int)

(assert (=> bs!832309 (= (= lt!1676528 lt!1676374) (= lambda!167700 lambda!167668))))

(declare-fun bs!832310 () Bool)

(assert (= bs!832310 (and d!1377619 b!4493626)))

(assert (=> bs!832310 (= (= lt!1676528 lt!1676497) (= lambda!167700 lambda!167694))))

(declare-fun bs!832311 () Bool)

(assert (= bs!832311 (and d!1377619 d!1377079)))

(assert (=> bs!832311 (not (= lambda!167700 lambda!167518))))

(declare-fun bs!832312 () Bool)

(assert (= bs!832312 (and d!1377619 b!4493485)))

(assert (=> bs!832312 (= (= lt!1676528 lt!1676365) (= lambda!167700 lambda!167667))))

(declare-fun bs!832313 () Bool)

(assert (= bs!832313 (and d!1377619 d!1377579)))

(assert (=> bs!832313 (= (= lt!1676528 lt!1676460) (= lambda!167700 lambda!167685))))

(declare-fun bs!832314 () Bool)

(assert (= bs!832314 (and d!1377619 d!1377615)))

(assert (=> bs!832314 (= (= lt!1676528 lt!1676506) (= lambda!167700 lambda!167695))))

(assert (=> bs!832310 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167700 lambda!167692))))

(declare-fun bs!832315 () Bool)

(assert (= bs!832315 (and d!1377619 b!4493629)))

(assert (=> bs!832315 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (= lambda!167700 lambda!167697))))

(declare-fun bs!832316 () Bool)

(assert (= bs!832316 (and d!1377619 b!4493589)))

(assert (=> bs!832316 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167700 lambda!167680))))

(declare-fun bs!832317 () Bool)

(assert (= bs!832317 (and d!1377619 b!4493633)))

(assert (=> bs!832317 (= (= lt!1676528 lt!1676519) (= lambda!167700 lambda!167699))))

(declare-fun bs!832318 () Bool)

(assert (= bs!832318 (and d!1377619 b!4493622)))

(assert (=> bs!832318 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 lm!1477)))) (= lambda!167700 lambda!167691))))

(declare-fun bs!832319 () Bool)

(assert (= bs!832319 (and d!1377619 b!4493313)))

(assert (=> bs!832319 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167700 lambda!167658))))

(declare-fun bs!832320 () Bool)

(assert (= bs!832320 (and d!1377619 b!4493593)))

(assert (=> bs!832320 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))) (= lambda!167700 lambda!167682))))

(assert (=> bs!832312 (= (= lt!1676528 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167700 lambda!167666))))

(declare-fun bs!832321 () Bool)

(assert (= bs!832321 (and d!1377619 b!4493481)))

(assert (=> bs!832321 (= (= lt!1676528 (extractMap!1170 (t!357593 (t!357593 (toList!4235 lm!1477))))) (= lambda!167700 lambda!167665))))

(assert (=> bs!832320 (= (= lt!1676528 lt!1676451) (= lambda!167700 lambda!167683))))

(declare-fun bs!832322 () Bool)

(assert (= bs!832322 (and d!1377619 b!4493309)))

(assert (=> bs!832322 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))) (= lambda!167700 lambda!167656))))

(declare-fun bs!832323 () Bool)

(assert (= bs!832323 (and d!1377619 d!1377361)))

(assert (=> bs!832323 (= (= lt!1676528 lt!1676233) (= lambda!167700 lambda!167661))))

(assert (=> bs!832317 (= (= lt!1676528 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (= lambda!167700 lambda!167698))))

(assert (=> bs!832319 (= (= lt!1676528 lt!1676224) (= lambda!167700 lambda!167659))))

(assert (=> d!1377619 true))

(declare-fun e!2799012 () ListMap!3497)

(assert (=> b!4493629 (= e!2799012 (extractMap!1170 (t!357593 (toList!4235 lt!1675671))))))

(declare-fun lt!1676513 () Unit!90944)

(declare-fun call!312696 () Unit!90944)

(assert (=> b!4493629 (= lt!1676513 call!312696)))

(declare-fun call!312697 () Bool)

(assert (=> b!4493629 call!312697))

(declare-fun lt!1676527 () Unit!90944)

(assert (=> b!4493629 (= lt!1676527 lt!1676513)))

(declare-fun call!312698 () Bool)

(assert (=> b!4493629 call!312698))

(declare-fun lt!1676521 () Unit!90944)

(declare-fun Unit!91119 () Unit!90944)

(assert (=> b!4493629 (= lt!1676521 Unit!91119)))

(declare-fun bm!312691 () Bool)

(declare-fun c!765577 () Bool)

(assert (=> bm!312691 (= call!312697 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (ite c!765577 lambda!167697 lambda!167699)))))

(declare-fun bm!312692 () Bool)

(assert (=> bm!312692 (= call!312698 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) (ite c!765577 lambda!167697 lambda!167699)))))

(declare-fun bm!312693 () Bool)

(assert (=> bm!312693 (= call!312696 (lemmaContainsAllItsOwnKeys!298 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))))))

(declare-fun b!4493630 () Bool)

(declare-fun res!1867596 () Bool)

(declare-fun e!2799010 () Bool)

(assert (=> b!4493630 (=> (not res!1867596) (not e!2799010))))

(assert (=> b!4493630 (= res!1867596 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) lambda!167700))))

(declare-fun b!4493631 () Bool)

(assert (=> b!4493631 (= e!2799010 (invariantList!973 (toList!4236 lt!1676528)))))

(declare-fun b!4493632 () Bool)

(declare-fun e!2799011 () Bool)

(assert (=> b!4493632 (= e!2799011 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) lambda!167699))))

(assert (=> d!1377619 e!2799010))

(declare-fun res!1867597 () Bool)

(assert (=> d!1377619 (=> (not res!1867597) (not e!2799010))))

(assert (=> d!1377619 (= res!1867597 (forall!10147 (_2!28740 (h!56320 (toList!4235 lt!1675671))) lambda!167700))))

(assert (=> d!1377619 (= lt!1676528 e!2799012)))

(assert (=> d!1377619 (= c!765577 ((_ is Nil!50510) (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (=> d!1377619 (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lt!1675671))))))

(assert (=> d!1377619 (= (addToMapMapFromBucket!641 (_2!28740 (h!56320 (toList!4235 lt!1675671))) (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) lt!1676528)))

(assert (=> b!4493633 (= e!2799012 lt!1676519)))

(declare-fun lt!1676520 () ListMap!3497)

(assert (=> b!4493633 (= lt!1676520 (+!1454 (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))))))

(assert (=> b!4493633 (= lt!1676519 (addToMapMapFromBucket!641 (t!357592 (_2!28740 (h!56320 (toList!4235 lt!1675671)))) (+!1454 (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))))

(declare-fun lt!1676518 () Unit!90944)

(assert (=> b!4493633 (= lt!1676518 call!312696)))

(assert (=> b!4493633 (forall!10147 (toList!4236 (extractMap!1170 (t!357593 (toList!4235 lt!1675671)))) lambda!167698)))

(declare-fun lt!1676524 () Unit!90944)

(assert (=> b!4493633 (= lt!1676524 lt!1676518)))

(assert (=> b!4493633 (forall!10147 (toList!4236 lt!1676520) lambda!167699)))

(declare-fun lt!1676533 () Unit!90944)

(declare-fun Unit!91120 () Unit!90944)

(assert (=> b!4493633 (= lt!1676533 Unit!91120)))

(assert (=> b!4493633 (forall!10147 (t!357592 (_2!28740 (h!56320 (toList!4235 lt!1675671)))) lambda!167699)))

(declare-fun lt!1676515 () Unit!90944)

(declare-fun Unit!91121 () Unit!90944)

(assert (=> b!4493633 (= lt!1676515 Unit!91121)))

(declare-fun lt!1676522 () Unit!90944)

(declare-fun Unit!91122 () Unit!90944)

(assert (=> b!4493633 (= lt!1676522 Unit!91122)))

(declare-fun lt!1676514 () Unit!90944)

(assert (=> b!4493633 (= lt!1676514 (forallContained!2405 (toList!4236 lt!1676520) lambda!167699 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))))))

(assert (=> b!4493633 (contains!13161 lt!1676520 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))))))

(declare-fun lt!1676523 () Unit!90944)

(declare-fun Unit!91123 () Unit!90944)

(assert (=> b!4493633 (= lt!1676523 Unit!91123)))

(assert (=> b!4493633 (contains!13161 lt!1676519 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))))))

(declare-fun lt!1676531 () Unit!90944)

(declare-fun Unit!91124 () Unit!90944)

(assert (=> b!4493633 (= lt!1676531 Unit!91124)))

(assert (=> b!4493633 (forall!10147 (_2!28740 (h!56320 (toList!4235 lt!1675671))) lambda!167699)))

(declare-fun lt!1676516 () Unit!90944)

(declare-fun Unit!91125 () Unit!90944)

(assert (=> b!4493633 (= lt!1676516 Unit!91125)))

(assert (=> b!4493633 (forall!10147 (toList!4236 lt!1676520) lambda!167699)))

(declare-fun lt!1676530 () Unit!90944)

(declare-fun Unit!91126 () Unit!90944)

(assert (=> b!4493633 (= lt!1676530 Unit!91126)))

(declare-fun lt!1676526 () Unit!90944)

(declare-fun Unit!91127 () Unit!90944)

(assert (=> b!4493633 (= lt!1676526 Unit!91127)))

(declare-fun lt!1676529 () Unit!90944)

(assert (=> b!4493633 (= lt!1676529 (addForallContainsKeyThenBeforeAdding!298 (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676519 (_1!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671))))) (_2!28739 (h!56319 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))))

(assert (=> b!4493633 call!312697))

(declare-fun lt!1676525 () Unit!90944)

(assert (=> b!4493633 (= lt!1676525 lt!1676529)))

(assert (=> b!4493633 call!312698))

(declare-fun lt!1676532 () Unit!90944)

(declare-fun Unit!91128 () Unit!90944)

(assert (=> b!4493633 (= lt!1676532 Unit!91128)))

(declare-fun res!1867595 () Bool)

(assert (=> b!4493633 (= res!1867595 (forall!10147 (_2!28740 (h!56320 (toList!4235 lt!1675671))) lambda!167699))))

(assert (=> b!4493633 (=> (not res!1867595) (not e!2799011))))

(assert (=> b!4493633 e!2799011))

(declare-fun lt!1676517 () Unit!90944)

(declare-fun Unit!91129 () Unit!90944)

(assert (=> b!4493633 (= lt!1676517 Unit!91129)))

(assert (= (and d!1377619 c!765577) b!4493629))

(assert (= (and d!1377619 (not c!765577)) b!4493633))

(assert (= (and b!4493633 res!1867595) b!4493632))

(assert (= (or b!4493629 b!4493633) bm!312692))

(assert (= (or b!4493629 b!4493633) bm!312691))

(assert (= (or b!4493629 b!4493633) bm!312693))

(assert (= (and d!1377619 res!1867597) b!4493630))

(assert (= (and b!4493630 res!1867596) b!4493631))

(declare-fun m!5219891 () Bool)

(assert (=> d!1377619 m!5219891))

(declare-fun m!5219893 () Bool)

(assert (=> d!1377619 m!5219893))

(declare-fun m!5219895 () Bool)

(assert (=> b!4493630 m!5219895))

(declare-fun m!5219897 () Bool)

(assert (=> bm!312692 m!5219897))

(assert (=> bm!312691 m!5219897))

(declare-fun m!5219899 () Bool)

(assert (=> b!4493633 m!5219899))

(assert (=> b!4493633 m!5218139))

(declare-fun m!5219901 () Bool)

(assert (=> b!4493633 m!5219901))

(declare-fun m!5219903 () Bool)

(assert (=> b!4493633 m!5219903))

(assert (=> b!4493633 m!5219899))

(declare-fun m!5219905 () Bool)

(assert (=> b!4493633 m!5219905))

(assert (=> b!4493633 m!5218139))

(declare-fun m!5219907 () Bool)

(assert (=> b!4493633 m!5219907))

(declare-fun m!5219909 () Bool)

(assert (=> b!4493633 m!5219909))

(assert (=> b!4493633 m!5219901))

(declare-fun m!5219911 () Bool)

(assert (=> b!4493633 m!5219911))

(declare-fun m!5219913 () Bool)

(assert (=> b!4493633 m!5219913))

(declare-fun m!5219915 () Bool)

(assert (=> b!4493633 m!5219915))

(assert (=> b!4493633 m!5219915))

(declare-fun m!5219917 () Bool)

(assert (=> b!4493633 m!5219917))

(declare-fun m!5219919 () Bool)

(assert (=> b!4493632 m!5219919))

(assert (=> bm!312693 m!5218139))

(declare-fun m!5219921 () Bool)

(assert (=> bm!312693 m!5219921))

(declare-fun m!5219923 () Bool)

(assert (=> b!4493631 m!5219923))

(assert (=> b!4492610 d!1377619))

(declare-fun bs!832324 () Bool)

(declare-fun d!1377625 () Bool)

(assert (= bs!832324 (and d!1377625 d!1377457)))

(declare-fun lambda!167701 () Int)

(assert (=> bs!832324 (= lambda!167701 lambda!167662)))

(declare-fun bs!832325 () Bool)

(assert (= bs!832325 (and d!1377625 d!1376987)))

(assert (=> bs!832325 (= lambda!167701 lambda!167487)))

(declare-fun bs!832326 () Bool)

(assert (= bs!832326 (and d!1377625 d!1377091)))

(assert (=> bs!832326 (= lambda!167701 lambda!167524)))

(declare-fun bs!832327 () Bool)

(assert (= bs!832327 (and d!1377625 d!1377139)))

(assert (=> bs!832327 (= lambda!167701 lambda!167533)))

(declare-fun bs!832328 () Bool)

(assert (= bs!832328 (and d!1377625 d!1377121)))

(assert (=> bs!832328 (= lambda!167701 lambda!167525)))

(declare-fun bs!832329 () Bool)

(assert (= bs!832329 (and d!1377625 d!1377583)))

(assert (=> bs!832329 (= lambda!167701 lambda!167687)))

(declare-fun bs!832330 () Bool)

(assert (= bs!832330 (and d!1377625 start!442860)))

(assert (=> bs!832330 (= lambda!167701 lambda!167477)))

(declare-fun bs!832331 () Bool)

(assert (= bs!832331 (and d!1377625 d!1377123)))

(assert (=> bs!832331 (= lambda!167701 lambda!167528)))

(declare-fun bs!832332 () Bool)

(assert (= bs!832332 (and d!1377625 d!1377051)))

(assert (=> bs!832332 (= lambda!167701 lambda!167503)))

(declare-fun bs!832333 () Bool)

(assert (= bs!832333 (and d!1377625 d!1377053)))

(assert (=> bs!832333 (= lambda!167701 lambda!167515)))

(declare-fun bs!832335 () Bool)

(assert (= bs!832335 (and d!1377625 d!1377083)))

(assert (=> bs!832335 (not (= lambda!167701 lambda!167521))))

(declare-fun bs!832336 () Bool)

(assert (= bs!832336 (and d!1377625 d!1377125)))

(assert (=> bs!832336 (= lambda!167701 lambda!167529)))

(declare-fun bs!832337 () Bool)

(assert (= bs!832337 (and d!1377625 d!1377133)))

(assert (=> bs!832337 (= lambda!167701 lambda!167532)))

(declare-fun bs!832338 () Bool)

(assert (= bs!832338 (and d!1377625 d!1377505)))

(assert (=> bs!832338 (= lambda!167701 lambda!167669)))

(declare-fun bs!832339 () Bool)

(assert (= bs!832339 (and d!1377625 d!1377029)))

(assert (=> bs!832339 (= lambda!167701 lambda!167500)))

(declare-fun lt!1676542 () ListMap!3497)

(assert (=> d!1377625 (invariantList!973 (toList!4236 lt!1676542))))

(declare-fun e!2799019 () ListMap!3497)

(assert (=> d!1377625 (= lt!1676542 e!2799019)))

(declare-fun c!765581 () Bool)

(assert (=> d!1377625 (= c!765581 ((_ is Cons!50511) (t!357593 (toList!4235 lt!1675671))))))

(assert (=> d!1377625 (forall!10145 (t!357593 (toList!4235 lt!1675671)) lambda!167701)))

(assert (=> d!1377625 (= (extractMap!1170 (t!357593 (toList!4235 lt!1675671))) lt!1676542)))

(declare-fun b!4493643 () Bool)

(assert (=> b!4493643 (= e!2799019 (addToMapMapFromBucket!641 (_2!28740 (h!56320 (t!357593 (toList!4235 lt!1675671)))) (extractMap!1170 (t!357593 (t!357593 (toList!4235 lt!1675671))))))))

(declare-fun b!4493644 () Bool)

(assert (=> b!4493644 (= e!2799019 (ListMap!3498 Nil!50510))))

(assert (= (and d!1377625 c!765581) b!4493643))

(assert (= (and d!1377625 (not c!765581)) b!4493644))

(declare-fun m!5219929 () Bool)

(assert (=> d!1377625 m!5219929))

(declare-fun m!5219931 () Bool)

(assert (=> d!1377625 m!5219931))

(declare-fun m!5219933 () Bool)

(assert (=> b!4493643 m!5219933))

(assert (=> b!4493643 m!5219933))

(declare-fun m!5219937 () Bool)

(assert (=> b!4493643 m!5219937))

(assert (=> b!4492610 d!1377625))

(assert (=> b!4492601 d!1377319))

(assert (=> b!4492601 d!1377197))

(declare-fun tp!1337306 () Bool)

(declare-fun e!2799024 () Bool)

(declare-fun b!4493649 () Bool)

(assert (=> b!4493649 (= e!2799024 (and tp_is_empty!27733 tp_is_empty!27735 tp!1337306))))

(assert (=> b!4492752 (= tp!1337304 e!2799024)))

(assert (= (and b!4492752 ((_ is Cons!50510) (_2!28740 (h!56320 (toList!4235 lm!1477))))) b!4493649))

(declare-fun b!4493650 () Bool)

(declare-fun e!2799025 () Bool)

(declare-fun tp!1337307 () Bool)

(declare-fun tp!1337308 () Bool)

(assert (=> b!4493650 (= e!2799025 (and tp!1337307 tp!1337308))))

(assert (=> b!4492752 (= tp!1337305 e!2799025)))

(assert (= (and b!4492752 ((_ is Cons!50511) (t!357593 (toList!4235 lm!1477)))) b!4493650))

(declare-fun e!2799026 () Bool)

(declare-fun tp!1337309 () Bool)

(declare-fun b!4493651 () Bool)

(assert (=> b!4493651 (= e!2799026 (and tp_is_empty!27733 tp_is_empty!27735 tp!1337309))))

(assert (=> b!4492747 (= tp!1337299 e!2799026)))

(assert (= (and b!4492747 ((_ is Cons!50510) (t!357592 (t!357592 newBucket!178)))) b!4493651))

(declare-fun b_lambda!151713 () Bool)

(assert (= b_lambda!151691 (or d!1377091 b_lambda!151713)))

(declare-fun bs!832341 () Bool)

(declare-fun d!1377633 () Bool)

(assert (= bs!832341 (and d!1377633 d!1377091)))

(assert (=> bs!832341 (= (dynLambda!21087 lambda!167524 (h!56320 (toList!4235 lm!1477))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (=> bs!832341 m!5218413))

(assert (=> b!4493528 d!1377633))

(declare-fun b_lambda!151715 () Bool)

(assert (= b_lambda!151687 (or d!1377133 b_lambda!151715)))

(declare-fun bs!832342 () Bool)

(declare-fun d!1377635 () Bool)

(assert (= bs!832342 (and d!1377635 d!1377133)))

(assert (=> bs!832342 (= (dynLambda!21087 lambda!167532 (h!56320 (toList!4235 lt!1675671))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (=> bs!832342 m!5219893))

(assert (=> b!4493518 d!1377635))

(declare-fun b_lambda!151717 () Bool)

(assert (= b_lambda!151665 (or d!1377051 b_lambda!151717)))

(declare-fun bs!832343 () Bool)

(declare-fun d!1377637 () Bool)

(assert (= bs!832343 (and d!1377637 d!1377051)))

(assert (=> bs!832343 (= (dynLambda!21087 lambda!167503 (h!56320 (toList!4235 lt!1675671))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (=> bs!832343 m!5219893))

(assert (=> b!4493118 d!1377637))

(declare-fun b_lambda!151719 () Bool)

(assert (= b_lambda!151667 (or d!1377121 b_lambda!151719)))

(declare-fun bs!832345 () Bool)

(declare-fun d!1377641 () Bool)

(assert (= bs!832345 (and d!1377641 d!1377121)))

(assert (=> bs!832345 (= (dynLambda!21087 lambda!167525 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477))))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (head!9322 lm!1477)))))))))

(assert (=> bs!832345 m!5219707))

(assert (=> b!4493120 d!1377641))

(declare-fun b_lambda!151721 () Bool)

(assert (= b_lambda!151699 (or start!442860 b_lambda!151721)))

(declare-fun bs!832346 () Bool)

(declare-fun d!1377643 () Bool)

(assert (= bs!832346 (and d!1377643 start!442860)))

(assert (=> bs!832346 (= (dynLambda!21087 lambda!167477 (h!56320 (t!357593 (toList!4235 lm!1477)))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> bs!832346 m!5219437))

(assert (=> b!4493557 d!1377643))

(declare-fun b_lambda!151723 () Bool)

(assert (= b_lambda!151701 (or d!1377079 b_lambda!151723)))

(declare-fun bs!832348 () Bool)

(declare-fun d!1377647 () Bool)

(assert (= bs!832348 (and d!1377647 d!1377079)))

(assert (=> bs!832348 (= (dynLambda!21089 lambda!167518 (h!56319 newBucket!178)) (= (hash!2645 hashF!1107 (_1!28739 (h!56319 newBucket!178))) hash!344))))

(declare-fun m!5219943 () Bool)

(assert (=> bs!832348 m!5219943))

(assert (=> b!4493563 d!1377647))

(declare-fun b_lambda!151725 () Bool)

(assert (= b_lambda!151697 (or d!1377029 b_lambda!151725)))

(declare-fun bs!832350 () Bool)

(declare-fun d!1377651 () Bool)

(assert (= bs!832350 (and d!1377651 d!1377029)))

(assert (=> bs!832350 (= (dynLambda!21087 lambda!167500 (h!56320 (t!357593 (toList!4235 lm!1477)))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (t!357593 (toList!4235 lm!1477))))))))

(assert (=> bs!832350 m!5219437))

(assert (=> b!4493546 d!1377651))

(declare-fun b_lambda!151727 () Bool)

(assert (= b_lambda!151693 (or d!1377125 b_lambda!151727)))

(declare-fun bs!832352 () Bool)

(declare-fun d!1377655 () Bool)

(assert (= bs!832352 (and d!1377655 d!1377125)))

(assert (=> bs!832352 (= (dynLambda!21087 lambda!167529 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178))))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 (+!1452 lt!1675671 (tuple2!50893 hash!344 newBucket!178)))))))))

(assert (=> bs!832352 m!5219243))

(assert (=> b!4493534 d!1377655))

(declare-fun b_lambda!151729 () Bool)

(assert (= b_lambda!151659 (or d!1377123 b_lambda!151729)))

(declare-fun bs!832354 () Bool)

(declare-fun d!1377659 () Bool)

(assert (= bs!832354 (and d!1377659 d!1377123)))

(assert (=> bs!832354 (= (dynLambda!21087 lambda!167528 (h!56320 (toList!4235 lt!1675671))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (=> bs!832354 m!5219893))

(assert (=> b!4492838 d!1377659))

(declare-fun b_lambda!151731 () Bool)

(assert (= b_lambda!151707 (or d!1377083 b_lambda!151731)))

(declare-fun bs!832356 () Bool)

(declare-fun d!1377663 () Bool)

(assert (= bs!832356 (and d!1377663 d!1377083)))

(assert (=> bs!832356 (= (dynLambda!21087 lambda!167521 (h!56320 (toList!4235 lm!1477))) (allKeysSameHash!968 (_2!28740 (h!56320 (toList!4235 lm!1477))) (_1!28740 (h!56320 (toList!4235 lm!1477))) hashF!1107))))

(declare-fun m!5219945 () Bool)

(assert (=> bs!832356 m!5219945))

(assert (=> b!4493618 d!1377663))

(declare-fun b_lambda!151733 () Bool)

(assert (= b_lambda!151663 (or d!1376987 b_lambda!151733)))

(declare-fun bs!832358 () Bool)

(declare-fun d!1377667 () Bool)

(assert (= bs!832358 (and d!1377667 d!1376987)))

(assert (=> bs!832358 (= (dynLambda!21087 lambda!167487 (h!56320 (toList!4235 lm!1477))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (=> bs!832358 m!5218413))

(assert (=> b!4492961 d!1377667))

(declare-fun b_lambda!151735 () Bool)

(assert (= b_lambda!151705 (or start!442860 b_lambda!151735)))

(assert (=> d!1377597 d!1377141))

(declare-fun b_lambda!151737 () Bool)

(assert (= b_lambda!151683 (or d!1377139 b_lambda!151737)))

(declare-fun bs!832360 () Bool)

(declare-fun d!1377671 () Bool)

(assert (= bs!832360 (and d!1377671 d!1377139)))

(assert (=> bs!832360 (= (dynLambda!21087 lambda!167533 (h!56320 (toList!4235 lm!1477))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lm!1477)))))))

(assert (=> bs!832360 m!5218413))

(assert (=> b!4493329 d!1377671))

(declare-fun b_lambda!151739 () Bool)

(assert (= b_lambda!151661 (or d!1377053 b_lambda!151739)))

(declare-fun bs!832362 () Bool)

(declare-fun d!1377675 () Bool)

(assert (= bs!832362 (and d!1377675 d!1377053)))

(assert (=> bs!832362 (= (dynLambda!21087 lambda!167515 (h!56320 (toList!4235 lt!1675671))) (noDuplicateKeys!1114 (_2!28740 (h!56320 (toList!4235 lt!1675671)))))))

(assert (=> bs!832362 m!5219893))

(assert (=> b!4492937 d!1377675))

(check-sat (not b!4493135) (not b!4492889) (not b!4493568) (not b!4493117) (not d!1377157) (not b!4492970) (not d!1377217) (not b!4492994) (not b!4493105) (not bm!312688) (not b!4493566) (not b!4493474) (not b!4493547) (not d!1377557) (not b!4493505) (not b!4493617) (not b!4493124) (not b!4493339) (not b!4492938) (not b!4493336) (not b!4493330) (not b!4493054) (not b!4492779) (not b!4493625) (not b_lambda!151729) (not b!4493564) (not d!1377249) (not b_lambda!151713) (not b!4493099) (not b!4492990) (not bm!312610) (not b!4492831) (not bm!312638) (not bs!832360) (not bm!312691) (not b!4492868) (not bm!312693) (not d!1377531) (not b!4492952) (not b!4493509) (not b!4493332) (not b!4493529) (not b!4493623) (not d!1377177) (not d!1377331) (not bm!312635) (not b_lambda!151653) (not d!1377301) (not b!4493520) (not d!1377619) (not d!1377503) (not b!4492866) (not b_lambda!151655) (not d!1377533) (not b_lambda!151715) (not b!4493507) (not d!1377625) (not b!4492887) (not b!4493588) (not b!4493615) (not bm!312671) (not bs!832358) (not b!4493162) (not b!4493021) (not d!1377335) (not bs!832354) (not d!1377291) (not b!4493036) (not b!4492962) (not bs!832362) (not b!4493596) (not d!1377469) (not b!4493592) (not d!1377467) (not b!4493440) (not d!1377305) (not b!4493042) (not b!4493088) (not b_lambda!151721) (not bm!312607) (not b!4492912) (not b!4493139) (not bs!832343) (not b!4493483) (not b!4493632) (not d!1377459) (not bm!312690) (not b!4493340) (not b!4492895) (not b!4493041) (not b!4492886) (not b!4493122) (not b!4493145) (not b!4493445) (not b!4493029) (not b!4493590) (not b!4493129) (not d!1377345) (not b!4493630) (not bs!832346) (not bm!312661) (not d!1377277) (not d!1377261) (not bs!832342) (not bm!312659) (not d!1377259) (not bm!312682) (not b!4493542) (not d!1377159) (not b!4492888) (not bs!832341) (not b!4493158) (not d!1377237) (not b!4493572) (not b!4492913) (not b!4492893) (not d!1377255) (not b!4493017) (not b_lambda!151725) (not b!4493485) (not d!1377353) tp_is_empty!27735 (not d!1377303) (not b!4492947) (not b!4493044) (not d!1377275) (not b!4492809) (not d!1377325) (not b!4493114) (not b!4492964) (not b!4493482) (not b!4493019) (not b!4493448) (not b!4493016) (not d!1377289) (not bm!312636) (not d!1377165) (not d!1377465) (not b!4493038) (not b_lambda!151737) (not d!1377251) (not b!4493341) (not bm!312599) (not b!4493633) (not d!1377281) (not bm!312658) (not b!4493454) (not d!1377307) (not d!1377329) (not b!4493479) (not d!1377517) (not b!4493436) (not b!4493127) (not d!1377551) (not b!4493537) (not b!4492915) (not b!4493130) (not bm!312670) (not b!4493558) (not b!4493476) (not b!4493160) (not b!4493083) (not b!4493102) (not b_lambda!151731) (not b!4493115) (not bm!312683) (not b!4492918) (not b!4492820) (not b!4492826) (not b!4492951) (not d!1377319) (not bm!312672) (not b!4493092) (not b!4493113) (not b!4492894) (not d!1377201) (not bs!832350) (not b_lambda!151723) (not d!1377457) (not d!1377299) (not d!1377205) (not d!1377191) (not bm!312692) (not b!4493626) (not bm!312657) (not b!4493453) (not b!4493086) (not b!4493152) (not b!4493333) (not d!1377513) (not b!4493024) (not b!4493133) (not b!4493150) (not bs!832348) (not b!4492867) (not b!4493441) (not b!4492997) (not b!4492795) (not b_lambda!151733) (not b!4493535) (not d!1377173) (not d!1377263) (not b!4493313) (not d!1377233) (not d!1377567) (not d!1377185) (not d!1377257) (not b!4493631) (not b!4493096) (not b!4493444) (not b_lambda!151717) (not d!1377343) (not b!4493119) (not b!4493624) (not b!4493593) (not bm!312660) (not b!4493077) (not b!4493334) (not b!4493053) (not b!4493643) (not b!4492839) (not b!4493104) (not b!4493311) (not b!4492996) (not b!4493650) (not bs!832352) (not b!4493107) (not b!4493327) (not b!4493519) (not bm!312634) (not d!1377351) (not b!4492920) (not b!4493484) (not b_lambda!151739) (not b!4493522) (not b!4493587) (not b!4492945) (not b!4493649) (not b!4492944) (not d!1377615) (not d!1377327) (not d!1377213) (not b!4493619) (not d!1377579) (not d!1377199) (not b!4493651) (not b!4493121) (not b!4493338) (not b!4492919) (not b!4493451) (not b!4493023) (not d!1377189) (not bs!832345) (not b!4493621) (not b!4493039) (not b!4493093) (not bm!312689) (not b!4493079) (not b!4493573) (not d!1377181) (not b!4492992) (not b!4493012) (not b!4493040) (not d!1377339) (not d!1377583) (not b!4493001) (not d!1377315) tp_is_empty!27733 (not b!4493450) (not d!1377295) (not b!4493149) (not d!1377505) (not b!4493570) (not bm!312656) (not b!4493090) (not b_lambda!151719) (not b!4493026) (not bm!312684) (not b!4493310) (not bs!832356) (not d!1377361) (not b!4492950) (not b!4493047) (not b!4492917) (not b!4493591) (not b_lambda!151735) (not bm!312600) (not b_lambda!151727) (not d!1377197) (not b!4492949) (not b!4493015) (not d!1377547) (not b!4493312) (not b!4493513))
(check-sat)
