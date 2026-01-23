; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466536 () Bool)

(assert start!466536)

(declare-fun b!4640354 () Bool)

(declare-fun res!1948775 () Bool)

(declare-fun e!2894725 () Bool)

(assert (=> b!4640354 (=> (not res!1948775) (not e!2894725))))

(declare-datatypes ((K!13125 0))(
  ( (K!13126 (val!18771 Int)) )
))
(declare-datatypes ((V!13371 0))(
  ( (V!13372 (val!18772 Int)) )
))
(declare-datatypes ((tuple2!52806 0))(
  ( (tuple2!52807 (_1!29697 K!13125) (_2!29697 V!13371)) )
))
(declare-datatypes ((List!51882 0))(
  ( (Nil!51758) (Cons!51758 (h!57864 tuple2!52806) (t!358964 List!51882)) )
))
(declare-fun newBucket!224 () List!51882)

(declare-fun noDuplicateKeys!1590 (List!51882) Bool)

(assert (=> b!4640354 (= res!1948775 (noDuplicateKeys!1590 newBucket!224))))

(declare-fun b!4640355 () Bool)

(declare-fun e!2894722 () Bool)

(declare-fun e!2894720 () Bool)

(assert (=> b!4640355 (= e!2894722 e!2894720)))

(declare-fun res!1948779 () Bool)

(assert (=> b!4640355 (=> res!1948779 e!2894720)))

(declare-fun oldBucket!40 () List!51882)

(declare-fun key!4968 () K!13125)

(declare-fun containsKey!2620 (List!51882 K!13125) Bool)

(assert (=> b!4640355 (= res!1948779 (not (containsKey!2620 (t!358964 oldBucket!40) key!4968)))))

(assert (=> b!4640355 (containsKey!2620 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5987 0))(
  ( (HashableExt!5986 (__x!31690 Int)) )
))
(declare-fun hashF!1389 () Hashable!5987)

(declare-datatypes ((Unit!115221 0))(
  ( (Unit!115222) )
))
(declare-fun lt!1803165 () Unit!115221)

(declare-fun lemmaGetPairDefinedThenContainsKey!104 (List!51882 K!13125 Hashable!5987) Unit!115221)

(assert (=> b!4640355 (= lt!1803165 (lemmaGetPairDefinedThenContainsKey!104 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1803168 () List!51882)

(declare-datatypes ((Option!11742 0))(
  ( (None!11741) (Some!11741 (v!45959 tuple2!52806)) )
))
(declare-fun isDefined!9007 (Option!11742) Bool)

(declare-fun getPair!350 (List!51882 K!13125) Option!11742)

(assert (=> b!4640355 (isDefined!9007 (getPair!350 lt!1803168 key!4968))))

(declare-fun lt!1803167 () Unit!115221)

(declare-datatypes ((tuple2!52808 0))(
  ( (tuple2!52809 (_1!29698 (_ BitVec 64)) (_2!29698 List!51882)) )
))
(declare-fun lt!1803172 () tuple2!52808)

(declare-fun lambda!196034 () Int)

(declare-datatypes ((List!51883 0))(
  ( (Nil!51759) (Cons!51759 (h!57865 tuple2!52808) (t!358965 List!51883)) )
))
(declare-fun lt!1803170 () List!51883)

(declare-fun forallContained!3158 (List!51883 Int tuple2!52808) Unit!115221)

(assert (=> b!4640355 (= lt!1803167 (forallContained!3158 lt!1803170 lambda!196034 lt!1803172))))

(declare-fun contains!14875 (List!51883 tuple2!52808) Bool)

(assert (=> b!4640355 (contains!14875 lt!1803170 lt!1803172)))

(declare-fun lt!1803166 () (_ BitVec 64))

(assert (=> b!4640355 (= lt!1803172 (tuple2!52809 lt!1803166 lt!1803168))))

(declare-datatypes ((ListLongMap!3695 0))(
  ( (ListLongMap!3696 (toList!5125 List!51883)) )
))
(declare-fun lt!1803169 () ListLongMap!3695)

(declare-fun lt!1803174 () Unit!115221)

(declare-fun lemmaGetValueImpliesTupleContained!155 (ListLongMap!3695 (_ BitVec 64) List!51882) Unit!115221)

(assert (=> b!4640355 (= lt!1803174 (lemmaGetValueImpliesTupleContained!155 lt!1803169 lt!1803166 lt!1803168))))

(declare-fun apply!12223 (ListLongMap!3695 (_ BitVec 64)) List!51882)

(assert (=> b!4640355 (= lt!1803168 (apply!12223 lt!1803169 lt!1803166))))

(declare-fun contains!14876 (ListLongMap!3695 (_ BitVec 64)) Bool)

(assert (=> b!4640355 (contains!14876 lt!1803169 lt!1803166)))

(declare-fun lt!1803176 () Unit!115221)

(declare-fun lemmaInGenMapThenLongMapContainsHash!556 (ListLongMap!3695 K!13125 Hashable!5987) Unit!115221)

(assert (=> b!4640355 (= lt!1803176 (lemmaInGenMapThenLongMapContainsHash!556 lt!1803169 key!4968 hashF!1389))))

(declare-fun lt!1803171 () Unit!115221)

(declare-fun lemmaInGenMapThenGetPairDefined!146 (ListLongMap!3695 K!13125 Hashable!5987) Unit!115221)

(assert (=> b!4640355 (= lt!1803171 (lemmaInGenMapThenGetPairDefined!146 lt!1803169 key!4968 hashF!1389))))

(assert (=> b!4640355 (= lt!1803169 (ListLongMap!3696 lt!1803170))))

(declare-fun lt!1803175 () List!51882)

(declare-fun e!2894726 () Bool)

(declare-fun b!4640356 () Bool)

(declare-fun removePairForKey!1213 (List!51882 K!13125) List!51882)

(assert (=> b!4640356 (= e!2894726 (= (removePairForKey!1213 (t!358964 oldBucket!40) key!4968) lt!1803175))))

(declare-fun b!4640357 () Bool)

(declare-fun e!2894727 () Bool)

(declare-datatypes ((ListMap!4449 0))(
  ( (ListMap!4450 (toList!5126 List!51882)) )
))
(declare-fun lt!1803177 () ListMap!4449)

(assert (=> b!4640357 (= e!2894727 (= lt!1803177 (ListMap!4450 Nil!51758)))))

(declare-fun tp_is_empty!29655 () Bool)

(declare-fun tp_is_empty!29653 () Bool)

(declare-fun e!2894728 () Bool)

(declare-fun tp!1342834 () Bool)

(declare-fun b!4640358 () Bool)

(assert (=> b!4640358 (= e!2894728 (and tp_is_empty!29653 tp_is_empty!29655 tp!1342834))))

(declare-fun b!4640359 () Bool)

(declare-fun res!1948780 () Bool)

(declare-fun e!2894721 () Bool)

(assert (=> b!4640359 (=> (not res!1948780) (not e!2894721))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1444 (List!51882 (_ BitVec 64) Hashable!5987) Bool)

(assert (=> b!4640359 (= res!1948780 (allKeysSameHash!1444 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1948778 () Bool)

(assert (=> start!466536 (=> (not res!1948778) (not e!2894725))))

(assert (=> start!466536 (= res!1948778 (noDuplicateKeys!1590 oldBucket!40))))

(assert (=> start!466536 e!2894725))

(assert (=> start!466536 true))

(assert (=> start!466536 e!2894728))

(assert (=> start!466536 tp_is_empty!29653))

(declare-fun e!2894724 () Bool)

(assert (=> start!466536 e!2894724))

(declare-fun b!4640360 () Bool)

(declare-fun e!2894723 () Bool)

(assert (=> b!4640360 (= e!2894723 e!2894721)))

(declare-fun res!1948772 () Bool)

(assert (=> b!4640360 (=> (not res!1948772) (not e!2894721))))

(assert (=> b!4640360 (= res!1948772 (= lt!1803166 hash!414))))

(declare-fun hash!3679 (Hashable!5987 K!13125) (_ BitVec 64))

(assert (=> b!4640360 (= lt!1803166 (hash!3679 hashF!1389 key!4968))))

(declare-fun b!4640361 () Bool)

(assert (=> b!4640361 (= e!2894720 e!2894726)))

(declare-fun res!1948771 () Bool)

(assert (=> b!4640361 (=> res!1948771 e!2894726)))

(declare-fun tail!8213 (List!51882) List!51882)

(assert (=> b!4640361 (= res!1948771 (not (= (removePairForKey!1213 (tail!8213 oldBucket!40) key!4968) lt!1803175)))))

(assert (=> b!4640361 (= lt!1803175 (tail!8213 newBucket!224))))

(declare-fun b!4640362 () Bool)

(assert (=> b!4640362 (= e!2894725 e!2894723)))

(declare-fun res!1948776 () Bool)

(assert (=> b!4640362 (=> (not res!1948776) (not e!2894723))))

(declare-fun lt!1803173 () ListMap!4449)

(declare-fun contains!14877 (ListMap!4449 K!13125) Bool)

(assert (=> b!4640362 (= res!1948776 (contains!14877 lt!1803173 key!4968))))

(declare-fun extractMap!1646 (List!51883) ListMap!4449)

(assert (=> b!4640362 (= lt!1803173 (extractMap!1646 lt!1803170))))

(assert (=> b!4640362 (= lt!1803170 (Cons!51759 (tuple2!52809 hash!414 oldBucket!40) Nil!51759))))

(declare-fun b!4640363 () Bool)

(declare-fun res!1948777 () Bool)

(assert (=> b!4640363 (=> (not res!1948777) (not e!2894725))))

(assert (=> b!4640363 (= res!1948777 (allKeysSameHash!1444 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342835 () Bool)

(declare-fun b!4640364 () Bool)

(assert (=> b!4640364 (= e!2894724 (and tp_is_empty!29653 tp_is_empty!29655 tp!1342835))))

(declare-fun b!4640365 () Bool)

(assert (=> b!4640365 (= e!2894721 (not e!2894722))))

(declare-fun res!1948774 () Bool)

(assert (=> b!4640365 (=> res!1948774 e!2894722)))

(get-info :version)

(assert (=> b!4640365 (= res!1948774 (or (and ((_ is Cons!51758) oldBucket!40) (= (_1!29697 (h!57864 oldBucket!40)) key!4968)) (not ((_ is Cons!51758) oldBucket!40)) (= (_1!29697 (h!57864 oldBucket!40)) key!4968)))))

(assert (=> b!4640365 e!2894727))

(declare-fun res!1948770 () Bool)

(assert (=> b!4640365 (=> (not res!1948770) (not e!2894727))))

(declare-fun addToMapMapFromBucket!1049 (List!51882 ListMap!4449) ListMap!4449)

(assert (=> b!4640365 (= res!1948770 (= lt!1803173 (addToMapMapFromBucket!1049 oldBucket!40 lt!1803177)))))

(assert (=> b!4640365 (= lt!1803177 (extractMap!1646 Nil!51759))))

(assert (=> b!4640365 true))

(declare-fun b!4640366 () Bool)

(declare-fun res!1948773 () Bool)

(assert (=> b!4640366 (=> (not res!1948773) (not e!2894725))))

(assert (=> b!4640366 (= res!1948773 (= (removePairForKey!1213 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!466536 res!1948778) b!4640354))

(assert (= (and b!4640354 res!1948775) b!4640366))

(assert (= (and b!4640366 res!1948773) b!4640363))

(assert (= (and b!4640363 res!1948777) b!4640362))

(assert (= (and b!4640362 res!1948776) b!4640360))

(assert (= (and b!4640360 res!1948772) b!4640359))

(assert (= (and b!4640359 res!1948780) b!4640365))

(assert (= (and b!4640365 res!1948770) b!4640357))

(assert (= (and b!4640365 (not res!1948774)) b!4640355))

(assert (= (and b!4640355 (not res!1948779)) b!4640361))

(assert (= (and b!4640361 (not res!1948771)) b!4640356))

(assert (= (and start!466536 ((_ is Cons!51758) oldBucket!40)) b!4640358))

(assert (= (and start!466536 ((_ is Cons!51758) newBucket!224)) b!4640364))

(declare-fun m!5499915 () Bool)

(assert (=> b!4640366 m!5499915))

(declare-fun m!5499917 () Bool)

(assert (=> b!4640354 m!5499917))

(declare-fun m!5499919 () Bool)

(assert (=> b!4640363 m!5499919))

(declare-fun m!5499921 () Bool)

(assert (=> b!4640355 m!5499921))

(declare-fun m!5499923 () Bool)

(assert (=> b!4640355 m!5499923))

(declare-fun m!5499925 () Bool)

(assert (=> b!4640355 m!5499925))

(declare-fun m!5499927 () Bool)

(assert (=> b!4640355 m!5499927))

(declare-fun m!5499929 () Bool)

(assert (=> b!4640355 m!5499929))

(declare-fun m!5499931 () Bool)

(assert (=> b!4640355 m!5499931))

(declare-fun m!5499933 () Bool)

(assert (=> b!4640355 m!5499933))

(assert (=> b!4640355 m!5499931))

(declare-fun m!5499935 () Bool)

(assert (=> b!4640355 m!5499935))

(declare-fun m!5499937 () Bool)

(assert (=> b!4640355 m!5499937))

(declare-fun m!5499939 () Bool)

(assert (=> b!4640355 m!5499939))

(declare-fun m!5499941 () Bool)

(assert (=> b!4640355 m!5499941))

(declare-fun m!5499943 () Bool)

(assert (=> b!4640355 m!5499943))

(declare-fun m!5499945 () Bool)

(assert (=> start!466536 m!5499945))

(declare-fun m!5499947 () Bool)

(assert (=> b!4640359 m!5499947))

(declare-fun m!5499949 () Bool)

(assert (=> b!4640365 m!5499949))

(declare-fun m!5499951 () Bool)

(assert (=> b!4640365 m!5499951))

(declare-fun m!5499953 () Bool)

(assert (=> b!4640361 m!5499953))

(assert (=> b!4640361 m!5499953))

(declare-fun m!5499955 () Bool)

(assert (=> b!4640361 m!5499955))

(declare-fun m!5499957 () Bool)

(assert (=> b!4640361 m!5499957))

(declare-fun m!5499959 () Bool)

(assert (=> b!4640360 m!5499959))

(declare-fun m!5499961 () Bool)

(assert (=> b!4640362 m!5499961))

(declare-fun m!5499963 () Bool)

(assert (=> b!4640362 m!5499963))

(declare-fun m!5499965 () Bool)

(assert (=> b!4640356 m!5499965))

(check-sat (not b!4640364) (not b!4640359) tp_is_empty!29655 (not b!4640355) tp_is_empty!29653 (not b!4640362) (not b!4640365) (not start!466536) (not b!4640361) (not b!4640354) (not b!4640363) (not b!4640366) (not b!4640358) (not b!4640356) (not b!4640360))
(check-sat)
(get-model)

(declare-fun d!1462945 () Bool)

(declare-fun res!1948791 () Bool)

(declare-fun e!2894747 () Bool)

(assert (=> d!1462945 (=> res!1948791 e!2894747)))

(assert (=> d!1462945 (= res!1948791 (not ((_ is Cons!51758) newBucket!224)))))

(assert (=> d!1462945 (= (noDuplicateKeys!1590 newBucket!224) e!2894747)))

(declare-fun b!4640393 () Bool)

(declare-fun e!2894748 () Bool)

(assert (=> b!4640393 (= e!2894747 e!2894748)))

(declare-fun res!1948792 () Bool)

(assert (=> b!4640393 (=> (not res!1948792) (not e!2894748))))

(assert (=> b!4640393 (= res!1948792 (not (containsKey!2620 (t!358964 newBucket!224) (_1!29697 (h!57864 newBucket!224)))))))

(declare-fun b!4640394 () Bool)

(assert (=> b!4640394 (= e!2894748 (noDuplicateKeys!1590 (t!358964 newBucket!224)))))

(assert (= (and d!1462945 (not res!1948791)) b!4640393))

(assert (= (and b!4640393 res!1948792) b!4640394))

(declare-fun m!5499979 () Bool)

(assert (=> b!4640393 m!5499979))

(declare-fun m!5499981 () Bool)

(assert (=> b!4640394 m!5499981))

(assert (=> b!4640354 d!1462945))

(declare-fun bs!1033162 () Bool)

(declare-fun d!1462955 () Bool)

(assert (= bs!1033162 (and d!1462955 b!4640355)))

(declare-fun lambda!196059 () Int)

(assert (=> bs!1033162 (= lambda!196059 lambda!196034)))

(declare-fun b!4640407 () Bool)

(declare-fun res!1948804 () Bool)

(declare-fun e!2894755 () Bool)

(assert (=> b!4640407 (=> (not res!1948804) (not e!2894755))))

(declare-fun allKeysSameHashInMap!1576 (ListLongMap!3695 Hashable!5987) Bool)

(assert (=> b!4640407 (= res!1948804 (allKeysSameHashInMap!1576 lt!1803169 hashF!1389))))

(declare-fun b!4640409 () Bool)

(assert (=> b!4640409 (= e!2894755 (isDefined!9007 (getPair!350 (apply!12223 lt!1803169 (hash!3679 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1803236 () Unit!115221)

(assert (=> b!4640409 (= lt!1803236 (forallContained!3158 (toList!5125 lt!1803169) lambda!196059 (tuple2!52809 (hash!3679 hashF!1389 key!4968) (apply!12223 lt!1803169 (hash!3679 hashF!1389 key!4968)))))))

(declare-fun lt!1803238 () Unit!115221)

(declare-fun lt!1803237 () Unit!115221)

(assert (=> b!4640409 (= lt!1803238 lt!1803237)))

(declare-fun lt!1803242 () (_ BitVec 64))

(declare-fun lt!1803240 () List!51882)

(assert (=> b!4640409 (contains!14875 (toList!5125 lt!1803169) (tuple2!52809 lt!1803242 lt!1803240))))

(assert (=> b!4640409 (= lt!1803237 (lemmaGetValueImpliesTupleContained!155 lt!1803169 lt!1803242 lt!1803240))))

(declare-fun e!2894756 () Bool)

(assert (=> b!4640409 e!2894756))

(declare-fun res!1948801 () Bool)

(assert (=> b!4640409 (=> (not res!1948801) (not e!2894756))))

(assert (=> b!4640409 (= res!1948801 (contains!14876 lt!1803169 lt!1803242))))

(assert (=> b!4640409 (= lt!1803240 (apply!12223 lt!1803169 (hash!3679 hashF!1389 key!4968)))))

(assert (=> b!4640409 (= lt!1803242 (hash!3679 hashF!1389 key!4968))))

(declare-fun lt!1803239 () Unit!115221)

(declare-fun lt!1803241 () Unit!115221)

(assert (=> b!4640409 (= lt!1803239 lt!1803241)))

(assert (=> b!4640409 (contains!14876 lt!1803169 (hash!3679 hashF!1389 key!4968))))

(assert (=> b!4640409 (= lt!1803241 (lemmaInGenMapThenLongMapContainsHash!556 lt!1803169 key!4968 hashF!1389))))

(declare-fun b!4640408 () Bool)

(declare-fun res!1948802 () Bool)

(assert (=> b!4640408 (=> (not res!1948802) (not e!2894755))))

(assert (=> b!4640408 (= res!1948802 (contains!14877 (extractMap!1646 (toList!5125 lt!1803169)) key!4968))))

(assert (=> d!1462955 e!2894755))

(declare-fun res!1948803 () Bool)

(assert (=> d!1462955 (=> (not res!1948803) (not e!2894755))))

(declare-fun forall!10939 (List!51883 Int) Bool)

(assert (=> d!1462955 (= res!1948803 (forall!10939 (toList!5125 lt!1803169) lambda!196059))))

(declare-fun lt!1803243 () Unit!115221)

(declare-fun choose!31757 (ListLongMap!3695 K!13125 Hashable!5987) Unit!115221)

(assert (=> d!1462955 (= lt!1803243 (choose!31757 lt!1803169 key!4968 hashF!1389))))

(assert (=> d!1462955 (forall!10939 (toList!5125 lt!1803169) lambda!196059)))

(assert (=> d!1462955 (= (lemmaInGenMapThenGetPairDefined!146 lt!1803169 key!4968 hashF!1389) lt!1803243)))

(declare-fun b!4640410 () Bool)

(declare-datatypes ((Option!11745 0))(
  ( (None!11744) (Some!11744 (v!45966 List!51882)) )
))
(declare-fun getValueByKey!1553 (List!51883 (_ BitVec 64)) Option!11745)

(assert (=> b!4640410 (= e!2894756 (= (getValueByKey!1553 (toList!5125 lt!1803169) lt!1803242) (Some!11744 lt!1803240)))))

(assert (= (and d!1462955 res!1948803) b!4640407))

(assert (= (and b!4640407 res!1948804) b!4640408))

(assert (= (and b!4640408 res!1948802) b!4640409))

(assert (= (and b!4640409 res!1948801) b!4640410))

(declare-fun m!5499983 () Bool)

(assert (=> b!4640410 m!5499983))

(declare-fun m!5499985 () Bool)

(assert (=> d!1462955 m!5499985))

(declare-fun m!5499987 () Bool)

(assert (=> d!1462955 m!5499987))

(assert (=> d!1462955 m!5499985))

(declare-fun m!5499989 () Bool)

(assert (=> b!4640409 m!5499989))

(declare-fun m!5499991 () Bool)

(assert (=> b!4640409 m!5499991))

(assert (=> b!4640409 m!5499959))

(declare-fun m!5499993 () Bool)

(assert (=> b!4640409 m!5499993))

(assert (=> b!4640409 m!5499939))

(declare-fun m!5499995 () Bool)

(assert (=> b!4640409 m!5499995))

(assert (=> b!4640409 m!5499959))

(assert (=> b!4640409 m!5499959))

(declare-fun m!5499997 () Bool)

(assert (=> b!4640409 m!5499997))

(declare-fun m!5499999 () Bool)

(assert (=> b!4640409 m!5499999))

(assert (=> b!4640409 m!5499993))

(assert (=> b!4640409 m!5499989))

(declare-fun m!5500001 () Bool)

(assert (=> b!4640409 m!5500001))

(declare-fun m!5500003 () Bool)

(assert (=> b!4640409 m!5500003))

(declare-fun m!5500005 () Bool)

(assert (=> b!4640408 m!5500005))

(assert (=> b!4640408 m!5500005))

(declare-fun m!5500007 () Bool)

(assert (=> b!4640408 m!5500007))

(declare-fun m!5500009 () Bool)

(assert (=> b!4640407 m!5500009))

(assert (=> b!4640355 d!1462955))

(declare-fun d!1462957 () Bool)

(assert (=> d!1462957 (containsKey!2620 oldBucket!40 key!4968)))

(declare-fun lt!1803250 () Unit!115221)

(declare-fun choose!31759 (List!51882 K!13125 Hashable!5987) Unit!115221)

(assert (=> d!1462957 (= lt!1803250 (choose!31759 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1462957 (noDuplicateKeys!1590 oldBucket!40)))

(assert (=> d!1462957 (= (lemmaGetPairDefinedThenContainsKey!104 oldBucket!40 key!4968 hashF!1389) lt!1803250)))

(declare-fun bs!1033163 () Bool)

(assert (= bs!1033163 d!1462957))

(assert (=> bs!1033163 m!5499937))

(declare-fun m!5500011 () Bool)

(assert (=> bs!1033163 m!5500011))

(assert (=> bs!1033163 m!5499945))

(assert (=> b!4640355 d!1462957))

(declare-fun d!1462959 () Bool)

(assert (=> d!1462959 (contains!14875 (toList!5125 lt!1803169) (tuple2!52809 lt!1803166 lt!1803168))))

(declare-fun lt!1803274 () Unit!115221)

(declare-fun choose!31760 (ListLongMap!3695 (_ BitVec 64) List!51882) Unit!115221)

(assert (=> d!1462959 (= lt!1803274 (choose!31760 lt!1803169 lt!1803166 lt!1803168))))

(assert (=> d!1462959 (contains!14876 lt!1803169 lt!1803166)))

(assert (=> d!1462959 (= (lemmaGetValueImpliesTupleContained!155 lt!1803169 lt!1803166 lt!1803168) lt!1803274)))

(declare-fun bs!1033165 () Bool)

(assert (= bs!1033165 d!1462959))

(declare-fun m!5500013 () Bool)

(assert (=> bs!1033165 m!5500013))

(declare-fun m!5500015 () Bool)

(assert (=> bs!1033165 m!5500015))

(assert (=> bs!1033165 m!5499941))

(assert (=> b!4640355 d!1462959))

(declare-fun b!4640441 () Bool)

(declare-fun e!2894778 () Bool)

(declare-fun e!2894777 () Bool)

(assert (=> b!4640441 (= e!2894778 e!2894777)))

(declare-fun res!1948822 () Bool)

(assert (=> b!4640441 (=> (not res!1948822) (not e!2894777))))

(declare-fun lt!1803277 () Option!11742)

(assert (=> b!4640441 (= res!1948822 (isDefined!9007 lt!1803277))))

(declare-fun b!4640442 () Bool)

(declare-fun e!2894775 () Bool)

(assert (=> b!4640442 (= e!2894775 (not (containsKey!2620 lt!1803168 key!4968)))))

(declare-fun b!4640443 () Bool)

(declare-fun e!2894774 () Option!11742)

(assert (=> b!4640443 (= e!2894774 None!11741)))

(declare-fun b!4640444 () Bool)

(declare-fun contains!14879 (List!51882 tuple2!52806) Bool)

(declare-fun get!17209 (Option!11742) tuple2!52806)

(assert (=> b!4640444 (= e!2894777 (contains!14879 lt!1803168 (get!17209 lt!1803277)))))

(declare-fun b!4640445 () Bool)

(declare-fun e!2894776 () Option!11742)

(assert (=> b!4640445 (= e!2894776 e!2894774)))

(declare-fun c!794058 () Bool)

(assert (=> b!4640445 (= c!794058 ((_ is Cons!51758) lt!1803168))))

(declare-fun b!4640447 () Bool)

(declare-fun res!1948825 () Bool)

(assert (=> b!4640447 (=> (not res!1948825) (not e!2894777))))

(assert (=> b!4640447 (= res!1948825 (= (_1!29697 (get!17209 lt!1803277)) key!4968))))

(declare-fun b!4640448 () Bool)

(assert (=> b!4640448 (= e!2894774 (getPair!350 (t!358964 lt!1803168) key!4968))))

(declare-fun d!1462961 () Bool)

(assert (=> d!1462961 e!2894778))

(declare-fun res!1948824 () Bool)

(assert (=> d!1462961 (=> res!1948824 e!2894778)))

(assert (=> d!1462961 (= res!1948824 e!2894775)))

(declare-fun res!1948823 () Bool)

(assert (=> d!1462961 (=> (not res!1948823) (not e!2894775))))

(declare-fun isEmpty!28976 (Option!11742) Bool)

(assert (=> d!1462961 (= res!1948823 (isEmpty!28976 lt!1803277))))

(assert (=> d!1462961 (= lt!1803277 e!2894776)))

(declare-fun c!794059 () Bool)

(assert (=> d!1462961 (= c!794059 (and ((_ is Cons!51758) lt!1803168) (= (_1!29697 (h!57864 lt!1803168)) key!4968)))))

(assert (=> d!1462961 (noDuplicateKeys!1590 lt!1803168)))

(assert (=> d!1462961 (= (getPair!350 lt!1803168 key!4968) lt!1803277)))

(declare-fun b!4640446 () Bool)

(assert (=> b!4640446 (= e!2894776 (Some!11741 (h!57864 lt!1803168)))))

(assert (= (and d!1462961 c!794059) b!4640446))

(assert (= (and d!1462961 (not c!794059)) b!4640445))

(assert (= (and b!4640445 c!794058) b!4640448))

(assert (= (and b!4640445 (not c!794058)) b!4640443))

(assert (= (and d!1462961 res!1948823) b!4640442))

(assert (= (and d!1462961 (not res!1948824)) b!4640441))

(assert (= (and b!4640441 res!1948822) b!4640447))

(assert (= (and b!4640447 res!1948825) b!4640444))

(declare-fun m!5500047 () Bool)

(assert (=> b!4640444 m!5500047))

(assert (=> b!4640444 m!5500047))

(declare-fun m!5500049 () Bool)

(assert (=> b!4640444 m!5500049))

(assert (=> b!4640447 m!5500047))

(declare-fun m!5500051 () Bool)

(assert (=> b!4640441 m!5500051))

(declare-fun m!5500053 () Bool)

(assert (=> b!4640442 m!5500053))

(declare-fun m!5500055 () Bool)

(assert (=> b!4640448 m!5500055))

(declare-fun m!5500057 () Bool)

(assert (=> d!1462961 m!5500057))

(declare-fun m!5500059 () Bool)

(assert (=> d!1462961 m!5500059))

(assert (=> b!4640355 d!1462961))

(declare-fun d!1462965 () Bool)

(declare-fun res!1948832 () Bool)

(declare-fun e!2894788 () Bool)

(assert (=> d!1462965 (=> res!1948832 e!2894788)))

(assert (=> d!1462965 (= res!1948832 (and ((_ is Cons!51758) (t!358964 oldBucket!40)) (= (_1!29697 (h!57864 (t!358964 oldBucket!40))) key!4968)))))

(assert (=> d!1462965 (= (containsKey!2620 (t!358964 oldBucket!40) key!4968) e!2894788)))

(declare-fun b!4640461 () Bool)

(declare-fun e!2894789 () Bool)

(assert (=> b!4640461 (= e!2894788 e!2894789)))

(declare-fun res!1948833 () Bool)

(assert (=> b!4640461 (=> (not res!1948833) (not e!2894789))))

(assert (=> b!4640461 (= res!1948833 ((_ is Cons!51758) (t!358964 oldBucket!40)))))

(declare-fun b!4640462 () Bool)

(assert (=> b!4640462 (= e!2894789 (containsKey!2620 (t!358964 (t!358964 oldBucket!40)) key!4968))))

(assert (= (and d!1462965 (not res!1948832)) b!4640461))

(assert (= (and b!4640461 res!1948833) b!4640462))

(declare-fun m!5500075 () Bool)

(assert (=> b!4640462 m!5500075))

(assert (=> b!4640355 d!1462965))

(declare-fun d!1462973 () Bool)

(assert (=> d!1462973 (= (isDefined!9007 (getPair!350 lt!1803168 key!4968)) (not (isEmpty!28976 (getPair!350 lt!1803168 key!4968))))))

(declare-fun bs!1033172 () Bool)

(assert (= bs!1033172 d!1462973))

(assert (=> bs!1033172 m!5499931))

(declare-fun m!5500077 () Bool)

(assert (=> bs!1033172 m!5500077))

(assert (=> b!4640355 d!1462973))

(declare-fun d!1462975 () Bool)

(declare-fun res!1948834 () Bool)

(declare-fun e!2894790 () Bool)

(assert (=> d!1462975 (=> res!1948834 e!2894790)))

(assert (=> d!1462975 (= res!1948834 (and ((_ is Cons!51758) oldBucket!40) (= (_1!29697 (h!57864 oldBucket!40)) key!4968)))))

(assert (=> d!1462975 (= (containsKey!2620 oldBucket!40 key!4968) e!2894790)))

(declare-fun b!4640467 () Bool)

(declare-fun e!2894791 () Bool)

(assert (=> b!4640467 (= e!2894790 e!2894791)))

(declare-fun res!1948835 () Bool)

(assert (=> b!4640467 (=> (not res!1948835) (not e!2894791))))

(assert (=> b!4640467 (= res!1948835 ((_ is Cons!51758) oldBucket!40))))

(declare-fun b!4640468 () Bool)

(assert (=> b!4640468 (= e!2894791 (containsKey!2620 (t!358964 oldBucket!40) key!4968))))

(assert (= (and d!1462975 (not res!1948834)) b!4640467))

(assert (= (and b!4640467 res!1948835) b!4640468))

(assert (=> b!4640468 m!5499943))

(assert (=> b!4640355 d!1462975))

(declare-fun d!1462979 () Bool)

(declare-fun get!17211 (Option!11745) List!51882)

(assert (=> d!1462979 (= (apply!12223 lt!1803169 lt!1803166) (get!17211 (getValueByKey!1553 (toList!5125 lt!1803169) lt!1803166)))))

(declare-fun bs!1033175 () Bool)

(assert (= bs!1033175 d!1462979))

(declare-fun m!5500081 () Bool)

(assert (=> bs!1033175 m!5500081))

(assert (=> bs!1033175 m!5500081))

(declare-fun m!5500083 () Bool)

(assert (=> bs!1033175 m!5500083))

(assert (=> b!4640355 d!1462979))

(declare-fun d!1462981 () Bool)

(declare-fun e!2894802 () Bool)

(assert (=> d!1462981 e!2894802))

(declare-fun res!1948838 () Bool)

(assert (=> d!1462981 (=> res!1948838 e!2894802)))

(declare-fun lt!1803305 () Bool)

(assert (=> d!1462981 (= res!1948838 (not lt!1803305))))

(declare-fun lt!1803307 () Bool)

(assert (=> d!1462981 (= lt!1803305 lt!1803307)))

(declare-fun lt!1803308 () Unit!115221)

(declare-fun e!2894803 () Unit!115221)

(assert (=> d!1462981 (= lt!1803308 e!2894803)))

(declare-fun c!794071 () Bool)

(assert (=> d!1462981 (= c!794071 lt!1803307)))

(declare-fun containsKey!2623 (List!51883 (_ BitVec 64)) Bool)

(assert (=> d!1462981 (= lt!1803307 (containsKey!2623 (toList!5125 lt!1803169) lt!1803166))))

(assert (=> d!1462981 (= (contains!14876 lt!1803169 lt!1803166) lt!1803305)))

(declare-fun b!4640487 () Bool)

(declare-fun lt!1803306 () Unit!115221)

(assert (=> b!4640487 (= e!2894803 lt!1803306)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1455 (List!51883 (_ BitVec 64)) Unit!115221)

(assert (=> b!4640487 (= lt!1803306 (lemmaContainsKeyImpliesGetValueByKeyDefined!1455 (toList!5125 lt!1803169) lt!1803166))))

(declare-fun isDefined!9010 (Option!11745) Bool)

(assert (=> b!4640487 (isDefined!9010 (getValueByKey!1553 (toList!5125 lt!1803169) lt!1803166))))

(declare-fun b!4640488 () Bool)

(declare-fun Unit!115237 () Unit!115221)

(assert (=> b!4640488 (= e!2894803 Unit!115237)))

(declare-fun b!4640489 () Bool)

(assert (=> b!4640489 (= e!2894802 (isDefined!9010 (getValueByKey!1553 (toList!5125 lt!1803169) lt!1803166)))))

(assert (= (and d!1462981 c!794071) b!4640487))

(assert (= (and d!1462981 (not c!794071)) b!4640488))

(assert (= (and d!1462981 (not res!1948838)) b!4640489))

(declare-fun m!5500085 () Bool)

(assert (=> d!1462981 m!5500085))

(declare-fun m!5500087 () Bool)

(assert (=> b!4640487 m!5500087))

(assert (=> b!4640487 m!5500081))

(assert (=> b!4640487 m!5500081))

(declare-fun m!5500089 () Bool)

(assert (=> b!4640487 m!5500089))

(assert (=> b!4640489 m!5500081))

(assert (=> b!4640489 m!5500081))

(assert (=> b!4640489 m!5500089))

(assert (=> b!4640355 d!1462981))

(declare-fun bs!1033183 () Bool)

(declare-fun d!1462983 () Bool)

(assert (= bs!1033183 (and d!1462983 b!4640355)))

(declare-fun lambda!196084 () Int)

(assert (=> bs!1033183 (= lambda!196084 lambda!196034)))

(declare-fun bs!1033184 () Bool)

(assert (= bs!1033184 (and d!1462983 d!1462955)))

(assert (=> bs!1033184 (= lambda!196084 lambda!196059)))

(assert (=> d!1462983 (contains!14876 lt!1803169 (hash!3679 hashF!1389 key!4968))))

(declare-fun lt!1803321 () Unit!115221)

(declare-fun choose!31763 (ListLongMap!3695 K!13125 Hashable!5987) Unit!115221)

(assert (=> d!1462983 (= lt!1803321 (choose!31763 lt!1803169 key!4968 hashF!1389))))

(assert (=> d!1462983 (forall!10939 (toList!5125 lt!1803169) lambda!196084)))

(assert (=> d!1462983 (= (lemmaInGenMapThenLongMapContainsHash!556 lt!1803169 key!4968 hashF!1389) lt!1803321)))

(declare-fun bs!1033185 () Bool)

(assert (= bs!1033185 d!1462983))

(assert (=> bs!1033185 m!5499959))

(assert (=> bs!1033185 m!5499959))

(assert (=> bs!1033185 m!5499997))

(declare-fun m!5500125 () Bool)

(assert (=> bs!1033185 m!5500125))

(declare-fun m!5500127 () Bool)

(assert (=> bs!1033185 m!5500127))

(assert (=> b!4640355 d!1462983))

(declare-fun d!1462993 () Bool)

(declare-fun dynLambda!21544 (Int tuple2!52808) Bool)

(assert (=> d!1462993 (dynLambda!21544 lambda!196034 lt!1803172)))

(declare-fun lt!1803327 () Unit!115221)

(declare-fun choose!31764 (List!51883 Int tuple2!52808) Unit!115221)

(assert (=> d!1462993 (= lt!1803327 (choose!31764 lt!1803170 lambda!196034 lt!1803172))))

(declare-fun e!2894821 () Bool)

(assert (=> d!1462993 e!2894821))

(declare-fun res!1948850 () Bool)

(assert (=> d!1462993 (=> (not res!1948850) (not e!2894821))))

(assert (=> d!1462993 (= res!1948850 (forall!10939 lt!1803170 lambda!196034))))

(assert (=> d!1462993 (= (forallContained!3158 lt!1803170 lambda!196034 lt!1803172) lt!1803327)))

(declare-fun b!4640513 () Bool)

(assert (=> b!4640513 (= e!2894821 (contains!14875 lt!1803170 lt!1803172))))

(assert (= (and d!1462993 res!1948850) b!4640513))

(declare-fun b_lambda!171053 () Bool)

(assert (=> (not b_lambda!171053) (not d!1462993)))

(declare-fun m!5500135 () Bool)

(assert (=> d!1462993 m!5500135))

(declare-fun m!5500137 () Bool)

(assert (=> d!1462993 m!5500137))

(declare-fun m!5500139 () Bool)

(assert (=> d!1462993 m!5500139))

(assert (=> b!4640513 m!5499929))

(assert (=> b!4640355 d!1462993))

(declare-fun d!1462997 () Bool)

(declare-fun lt!1803330 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8935 (List!51883) (InoxSet tuple2!52808))

(assert (=> d!1462997 (= lt!1803330 (select (content!8935 lt!1803170) lt!1803172))))

(declare-fun e!2894826 () Bool)

(assert (=> d!1462997 (= lt!1803330 e!2894826)))

(declare-fun res!1948855 () Bool)

(assert (=> d!1462997 (=> (not res!1948855) (not e!2894826))))

(assert (=> d!1462997 (= res!1948855 ((_ is Cons!51759) lt!1803170))))

(assert (=> d!1462997 (= (contains!14875 lt!1803170 lt!1803172) lt!1803330)))

(declare-fun b!4640518 () Bool)

(declare-fun e!2894827 () Bool)

(assert (=> b!4640518 (= e!2894826 e!2894827)))

(declare-fun res!1948856 () Bool)

(assert (=> b!4640518 (=> res!1948856 e!2894827)))

(assert (=> b!4640518 (= res!1948856 (= (h!57865 lt!1803170) lt!1803172))))

(declare-fun b!4640519 () Bool)

(assert (=> b!4640519 (= e!2894827 (contains!14875 (t!358965 lt!1803170) lt!1803172))))

(assert (= (and d!1462997 res!1948855) b!4640518))

(assert (= (and b!4640518 (not res!1948856)) b!4640519))

(declare-fun m!5500141 () Bool)

(assert (=> d!1462997 m!5500141))

(declare-fun m!5500143 () Bool)

(assert (=> d!1462997 m!5500143))

(declare-fun m!5500145 () Bool)

(assert (=> b!4640519 m!5500145))

(assert (=> b!4640355 d!1462997))

(declare-fun b!4640531 () Bool)

(declare-fun e!2894832 () List!51882)

(assert (=> b!4640531 (= e!2894832 Nil!51758)))

(declare-fun b!4640529 () Bool)

(declare-fun e!2894833 () List!51882)

(assert (=> b!4640529 (= e!2894833 e!2894832)))

(declare-fun c!794082 () Bool)

(assert (=> b!4640529 (= c!794082 ((_ is Cons!51758) oldBucket!40))))

(declare-fun b!4640530 () Bool)

(assert (=> b!4640530 (= e!2894832 (Cons!51758 (h!57864 oldBucket!40) (removePairForKey!1213 (t!358964 oldBucket!40) key!4968)))))

(declare-fun b!4640528 () Bool)

(assert (=> b!4640528 (= e!2894833 (t!358964 oldBucket!40))))

(declare-fun d!1462999 () Bool)

(declare-fun lt!1803333 () List!51882)

(assert (=> d!1462999 (not (containsKey!2620 lt!1803333 key!4968))))

(assert (=> d!1462999 (= lt!1803333 e!2894833)))

(declare-fun c!794083 () Bool)

(assert (=> d!1462999 (= c!794083 (and ((_ is Cons!51758) oldBucket!40) (= (_1!29697 (h!57864 oldBucket!40)) key!4968)))))

(assert (=> d!1462999 (noDuplicateKeys!1590 oldBucket!40)))

(assert (=> d!1462999 (= (removePairForKey!1213 oldBucket!40 key!4968) lt!1803333)))

(assert (= (and d!1462999 c!794083) b!4640528))

(assert (= (and d!1462999 (not c!794083)) b!4640529))

(assert (= (and b!4640529 c!794082) b!4640530))

(assert (= (and b!4640529 (not c!794082)) b!4640531))

(assert (=> b!4640530 m!5499965))

(declare-fun m!5500147 () Bool)

(assert (=> d!1462999 m!5500147))

(assert (=> d!1462999 m!5499945))

(assert (=> b!4640366 d!1462999))

(declare-fun b!4640613 () Bool)

(assert (=> b!4640613 true))

(declare-fun bs!1033199 () Bool)

(declare-fun b!4640611 () Bool)

(assert (= bs!1033199 (and b!4640611 b!4640613)))

(declare-fun lambda!196124 () Int)

(declare-fun lambda!196123 () Int)

(assert (=> bs!1033199 (= lambda!196124 lambda!196123)))

(assert (=> b!4640611 true))

(declare-fun lambda!196125 () Int)

(declare-fun lt!1803441 () ListMap!4449)

(assert (=> bs!1033199 (= (= lt!1803441 lt!1803177) (= lambda!196125 lambda!196123))))

(assert (=> b!4640611 (= (= lt!1803441 lt!1803177) (= lambda!196125 lambda!196124))))

(assert (=> b!4640611 true))

(declare-fun bs!1033200 () Bool)

(declare-fun d!1463001 () Bool)

(assert (= bs!1033200 (and d!1463001 b!4640613)))

(declare-fun lambda!196126 () Int)

(declare-fun lt!1803446 () ListMap!4449)

(assert (=> bs!1033200 (= (= lt!1803446 lt!1803177) (= lambda!196126 lambda!196123))))

(declare-fun bs!1033201 () Bool)

(assert (= bs!1033201 (and d!1463001 b!4640611)))

(assert (=> bs!1033201 (= (= lt!1803446 lt!1803177) (= lambda!196126 lambda!196124))))

(assert (=> bs!1033201 (= (= lt!1803446 lt!1803441) (= lambda!196126 lambda!196125))))

(assert (=> d!1463001 true))

(declare-fun e!2894888 () ListMap!4449)

(assert (=> b!4640611 (= e!2894888 lt!1803441)))

(declare-fun lt!1803438 () ListMap!4449)

(declare-fun +!1942 (ListMap!4449 tuple2!52806) ListMap!4449)

(assert (=> b!4640611 (= lt!1803438 (+!1942 lt!1803177 (h!57864 oldBucket!40)))))

(assert (=> b!4640611 (= lt!1803441 (addToMapMapFromBucket!1049 (t!358964 oldBucket!40) (+!1942 lt!1803177 (h!57864 oldBucket!40))))))

(declare-fun lt!1803444 () Unit!115221)

(declare-fun call!323940 () Unit!115221)

(assert (=> b!4640611 (= lt!1803444 call!323940)))

(declare-fun forall!10940 (List!51882 Int) Bool)

(assert (=> b!4640611 (forall!10940 (toList!5126 lt!1803177) lambda!196124)))

(declare-fun lt!1803429 () Unit!115221)

(assert (=> b!4640611 (= lt!1803429 lt!1803444)))

(assert (=> b!4640611 (forall!10940 (toList!5126 lt!1803438) lambda!196125)))

(declare-fun lt!1803436 () Unit!115221)

(declare-fun Unit!115238 () Unit!115221)

(assert (=> b!4640611 (= lt!1803436 Unit!115238)))

(assert (=> b!4640611 (forall!10940 (t!358964 oldBucket!40) lambda!196125)))

(declare-fun lt!1803432 () Unit!115221)

(declare-fun Unit!115239 () Unit!115221)

(assert (=> b!4640611 (= lt!1803432 Unit!115239)))

(declare-fun lt!1803431 () Unit!115221)

(declare-fun Unit!115240 () Unit!115221)

(assert (=> b!4640611 (= lt!1803431 Unit!115240)))

(declare-fun lt!1803437 () Unit!115221)

(declare-fun forallContained!3160 (List!51882 Int tuple2!52806) Unit!115221)

(assert (=> b!4640611 (= lt!1803437 (forallContained!3160 (toList!5126 lt!1803438) lambda!196125 (h!57864 oldBucket!40)))))

(assert (=> b!4640611 (contains!14877 lt!1803438 (_1!29697 (h!57864 oldBucket!40)))))

(declare-fun lt!1803434 () Unit!115221)

(declare-fun Unit!115241 () Unit!115221)

(assert (=> b!4640611 (= lt!1803434 Unit!115241)))

(assert (=> b!4640611 (contains!14877 lt!1803441 (_1!29697 (h!57864 oldBucket!40)))))

(declare-fun lt!1803443 () Unit!115221)

(declare-fun Unit!115242 () Unit!115221)

(assert (=> b!4640611 (= lt!1803443 Unit!115242)))

(assert (=> b!4640611 (forall!10940 oldBucket!40 lambda!196125)))

(declare-fun lt!1803445 () Unit!115221)

(declare-fun Unit!115243 () Unit!115221)

(assert (=> b!4640611 (= lt!1803445 Unit!115243)))

(assert (=> b!4640611 (forall!10940 (toList!5126 lt!1803438) lambda!196125)))

(declare-fun lt!1803447 () Unit!115221)

(declare-fun Unit!115244 () Unit!115221)

(assert (=> b!4640611 (= lt!1803447 Unit!115244)))

(declare-fun lt!1803440 () Unit!115221)

(declare-fun Unit!115245 () Unit!115221)

(assert (=> b!4640611 (= lt!1803440 Unit!115245)))

(declare-fun lt!1803430 () Unit!115221)

(declare-fun addForallContainsKeyThenBeforeAdding!561 (ListMap!4449 ListMap!4449 K!13125 V!13371) Unit!115221)

(assert (=> b!4640611 (= lt!1803430 (addForallContainsKeyThenBeforeAdding!561 lt!1803177 lt!1803441 (_1!29697 (h!57864 oldBucket!40)) (_2!29697 (h!57864 oldBucket!40))))))

(declare-fun call!323938 () Bool)

(assert (=> b!4640611 call!323938))

(declare-fun lt!1803435 () Unit!115221)

(assert (=> b!4640611 (= lt!1803435 lt!1803430)))

(assert (=> b!4640611 (forall!10940 (toList!5126 lt!1803177) lambda!196125)))

(declare-fun lt!1803442 () Unit!115221)

(declare-fun Unit!115246 () Unit!115221)

(assert (=> b!4640611 (= lt!1803442 Unit!115246)))

(declare-fun res!1948908 () Bool)

(declare-fun call!323939 () Bool)

(assert (=> b!4640611 (= res!1948908 call!323939)))

(declare-fun e!2894889 () Bool)

(assert (=> b!4640611 (=> (not res!1948908) (not e!2894889))))

(assert (=> b!4640611 e!2894889))

(declare-fun lt!1803439 () Unit!115221)

(declare-fun Unit!115247 () Unit!115221)

(assert (=> b!4640611 (= lt!1803439 Unit!115247)))

(declare-fun b!4640612 () Bool)

(assert (=> b!4640612 (= e!2894889 (forall!10940 (toList!5126 lt!1803177) lambda!196125))))

(assert (=> b!4640613 (= e!2894888 lt!1803177)))

(declare-fun lt!1803428 () Unit!115221)

(assert (=> b!4640613 (= lt!1803428 call!323940)))

(assert (=> b!4640613 call!323939))

(declare-fun lt!1803427 () Unit!115221)

(assert (=> b!4640613 (= lt!1803427 lt!1803428)))

(assert (=> b!4640613 call!323938))

(declare-fun lt!1803433 () Unit!115221)

(declare-fun Unit!115248 () Unit!115221)

(assert (=> b!4640613 (= lt!1803433 Unit!115248)))

(declare-fun e!2894890 () Bool)

(assert (=> d!1463001 e!2894890))

(declare-fun res!1948909 () Bool)

(assert (=> d!1463001 (=> (not res!1948909) (not e!2894890))))

(assert (=> d!1463001 (= res!1948909 (forall!10940 oldBucket!40 lambda!196126))))

(assert (=> d!1463001 (= lt!1803446 e!2894888)))

(declare-fun c!794095 () Bool)

(assert (=> d!1463001 (= c!794095 ((_ is Nil!51758) oldBucket!40))))

(assert (=> d!1463001 (noDuplicateKeys!1590 oldBucket!40)))

(assert (=> d!1463001 (= (addToMapMapFromBucket!1049 oldBucket!40 lt!1803177) lt!1803446)))

(declare-fun b!4640614 () Bool)

(declare-fun res!1948907 () Bool)

(assert (=> b!4640614 (=> (not res!1948907) (not e!2894890))))

(assert (=> b!4640614 (= res!1948907 (forall!10940 (toList!5126 lt!1803177) lambda!196126))))

(declare-fun bm!323933 () Bool)

(assert (=> bm!323933 (= call!323939 (forall!10940 (ite c!794095 (toList!5126 lt!1803177) oldBucket!40) (ite c!794095 lambda!196123 lambda!196125)))))

(declare-fun b!4640615 () Bool)

(declare-fun invariantList!1260 (List!51882) Bool)

(assert (=> b!4640615 (= e!2894890 (invariantList!1260 (toList!5126 lt!1803446)))))

(declare-fun bm!323934 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!562 (ListMap!4449) Unit!115221)

(assert (=> bm!323934 (= call!323940 (lemmaContainsAllItsOwnKeys!562 lt!1803177))))

(declare-fun bm!323935 () Bool)

(assert (=> bm!323935 (= call!323938 (forall!10940 (toList!5126 lt!1803177) (ite c!794095 lambda!196123 lambda!196125)))))

(assert (= (and d!1463001 c!794095) b!4640613))

(assert (= (and d!1463001 (not c!794095)) b!4640611))

(assert (= (and b!4640611 res!1948908) b!4640612))

(assert (= (or b!4640613 b!4640611) bm!323934))

(assert (= (or b!4640613 b!4640611) bm!323935))

(assert (= (or b!4640613 b!4640611) bm!323933))

(assert (= (and d!1463001 res!1948909) b!4640614))

(assert (= (and b!4640614 res!1948907) b!4640615))

(declare-fun m!5500223 () Bool)

(assert (=> b!4640614 m!5500223))

(declare-fun m!5500225 () Bool)

(assert (=> bm!323935 m!5500225))

(declare-fun m!5500227 () Bool)

(assert (=> bm!323934 m!5500227))

(declare-fun m!5500229 () Bool)

(assert (=> b!4640611 m!5500229))

(declare-fun m!5500231 () Bool)

(assert (=> b!4640611 m!5500231))

(declare-fun m!5500233 () Bool)

(assert (=> b!4640611 m!5500233))

(declare-fun m!5500235 () Bool)

(assert (=> b!4640611 m!5500235))

(declare-fun m!5500237 () Bool)

(assert (=> b!4640611 m!5500237))

(declare-fun m!5500239 () Bool)

(assert (=> b!4640611 m!5500239))

(assert (=> b!4640611 m!5500237))

(declare-fun m!5500241 () Bool)

(assert (=> b!4640611 m!5500241))

(declare-fun m!5500243 () Bool)

(assert (=> b!4640611 m!5500243))

(declare-fun m!5500245 () Bool)

(assert (=> b!4640611 m!5500245))

(declare-fun m!5500247 () Bool)

(assert (=> b!4640611 m!5500247))

(declare-fun m!5500249 () Bool)

(assert (=> b!4640611 m!5500249))

(assert (=> b!4640611 m!5500229))

(declare-fun m!5500251 () Bool)

(assert (=> b!4640615 m!5500251))

(declare-fun m!5500253 () Bool)

(assert (=> bm!323933 m!5500253))

(declare-fun m!5500255 () Bool)

(assert (=> d!1463001 m!5500255))

(assert (=> d!1463001 m!5499945))

(assert (=> b!4640612 m!5500231))

(assert (=> b!4640365 d!1463001))

(declare-fun bs!1033202 () Bool)

(declare-fun d!1463025 () Bool)

(assert (= bs!1033202 (and d!1463025 b!4640355)))

(declare-fun lambda!196129 () Int)

(assert (=> bs!1033202 (= lambda!196129 lambda!196034)))

(declare-fun bs!1033203 () Bool)

(assert (= bs!1033203 (and d!1463025 d!1462955)))

(assert (=> bs!1033203 (= lambda!196129 lambda!196059)))

(declare-fun bs!1033204 () Bool)

(assert (= bs!1033204 (and d!1463025 d!1462983)))

(assert (=> bs!1033204 (= lambda!196129 lambda!196084)))

(declare-fun lt!1803450 () ListMap!4449)

(assert (=> d!1463025 (invariantList!1260 (toList!5126 lt!1803450))))

(declare-fun e!2894893 () ListMap!4449)

(assert (=> d!1463025 (= lt!1803450 e!2894893)))

(declare-fun c!794098 () Bool)

(assert (=> d!1463025 (= c!794098 ((_ is Cons!51759) Nil!51759))))

(assert (=> d!1463025 (forall!10939 Nil!51759 lambda!196129)))

(assert (=> d!1463025 (= (extractMap!1646 Nil!51759) lt!1803450)))

(declare-fun b!4640622 () Bool)

(assert (=> b!4640622 (= e!2894893 (addToMapMapFromBucket!1049 (_2!29698 (h!57865 Nil!51759)) (extractMap!1646 (t!358965 Nil!51759))))))

(declare-fun b!4640623 () Bool)

(assert (=> b!4640623 (= e!2894893 (ListMap!4450 Nil!51758))))

(assert (= (and d!1463025 c!794098) b!4640622))

(assert (= (and d!1463025 (not c!794098)) b!4640623))

(declare-fun m!5500257 () Bool)

(assert (=> d!1463025 m!5500257))

(declare-fun m!5500259 () Bool)

(assert (=> d!1463025 m!5500259))

(declare-fun m!5500261 () Bool)

(assert (=> b!4640622 m!5500261))

(assert (=> b!4640622 m!5500261))

(declare-fun m!5500263 () Bool)

(assert (=> b!4640622 m!5500263))

(assert (=> b!4640365 d!1463025))

(declare-fun b!4640642 () Bool)

(declare-fun e!2894909 () Bool)

(declare-fun e!2894906 () Bool)

(assert (=> b!4640642 (= e!2894909 e!2894906)))

(declare-fun res!1948918 () Bool)

(assert (=> b!4640642 (=> (not res!1948918) (not e!2894906))))

(declare-datatypes ((Option!11746 0))(
  ( (None!11745) (Some!11745 (v!45967 V!13371)) )
))
(declare-fun isDefined!9011 (Option!11746) Bool)

(declare-fun getValueByKey!1554 (List!51882 K!13125) Option!11746)

(assert (=> b!4640642 (= res!1948918 (isDefined!9011 (getValueByKey!1554 (toList!5126 lt!1803173) key!4968)))))

(declare-fun b!4640643 () Bool)

(declare-datatypes ((List!51885 0))(
  ( (Nil!51761) (Cons!51761 (h!57869 K!13125) (t!358967 List!51885)) )
))
(declare-fun e!2894907 () List!51885)

(declare-fun keys!18294 (ListMap!4449) List!51885)

(assert (=> b!4640643 (= e!2894907 (keys!18294 lt!1803173))))

(declare-fun b!4640644 () Bool)

(declare-fun e!2894911 () Unit!115221)

(declare-fun Unit!115249 () Unit!115221)

(assert (=> b!4640644 (= e!2894911 Unit!115249)))

(declare-fun b!4640645 () Bool)

(assert (=> b!4640645 false))

(declare-fun lt!1803470 () Unit!115221)

(declare-fun lt!1803471 () Unit!115221)

(assert (=> b!4640645 (= lt!1803470 lt!1803471)))

(declare-fun containsKey!2624 (List!51882 K!13125) Bool)

(assert (=> b!4640645 (containsKey!2624 (toList!5126 lt!1803173) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!710 (List!51882 K!13125) Unit!115221)

(assert (=> b!4640645 (= lt!1803471 (lemmaInGetKeysListThenContainsKey!710 (toList!5126 lt!1803173) key!4968))))

(declare-fun Unit!115250 () Unit!115221)

(assert (=> b!4640645 (= e!2894911 Unit!115250)))

(declare-fun d!1463027 () Bool)

(assert (=> d!1463027 e!2894909))

(declare-fun res!1948916 () Bool)

(assert (=> d!1463027 (=> res!1948916 e!2894909)))

(declare-fun e!2894910 () Bool)

(assert (=> d!1463027 (= res!1948916 e!2894910)))

(declare-fun res!1948917 () Bool)

(assert (=> d!1463027 (=> (not res!1948917) (not e!2894910))))

(declare-fun lt!1803468 () Bool)

(assert (=> d!1463027 (= res!1948917 (not lt!1803468))))

(declare-fun lt!1803474 () Bool)

(assert (=> d!1463027 (= lt!1803468 lt!1803474)))

(declare-fun lt!1803473 () Unit!115221)

(declare-fun e!2894908 () Unit!115221)

(assert (=> d!1463027 (= lt!1803473 e!2894908)))

(declare-fun c!794107 () Bool)

(assert (=> d!1463027 (= c!794107 lt!1803474)))

(assert (=> d!1463027 (= lt!1803474 (containsKey!2624 (toList!5126 lt!1803173) key!4968))))

(assert (=> d!1463027 (= (contains!14877 lt!1803173 key!4968) lt!1803468)))

(declare-fun b!4640646 () Bool)

(declare-fun contains!14881 (List!51885 K!13125) Bool)

(assert (=> b!4640646 (= e!2894910 (not (contains!14881 (keys!18294 lt!1803173) key!4968)))))

(declare-fun bm!323938 () Bool)

(declare-fun call!323943 () Bool)

(assert (=> bm!323938 (= call!323943 (contains!14881 e!2894907 key!4968))))

(declare-fun c!794106 () Bool)

(assert (=> bm!323938 (= c!794106 c!794107)))

(declare-fun b!4640647 () Bool)

(declare-fun lt!1803467 () Unit!115221)

(assert (=> b!4640647 (= e!2894908 lt!1803467)))

(declare-fun lt!1803469 () Unit!115221)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1456 (List!51882 K!13125) Unit!115221)

(assert (=> b!4640647 (= lt!1803469 (lemmaContainsKeyImpliesGetValueByKeyDefined!1456 (toList!5126 lt!1803173) key!4968))))

(assert (=> b!4640647 (isDefined!9011 (getValueByKey!1554 (toList!5126 lt!1803173) key!4968))))

(declare-fun lt!1803472 () Unit!115221)

(assert (=> b!4640647 (= lt!1803472 lt!1803469)))

(declare-fun lemmaInListThenGetKeysListContains!706 (List!51882 K!13125) Unit!115221)

(assert (=> b!4640647 (= lt!1803467 (lemmaInListThenGetKeysListContains!706 (toList!5126 lt!1803173) key!4968))))

(assert (=> b!4640647 call!323943))

(declare-fun b!4640648 () Bool)

(assert (=> b!4640648 (= e!2894906 (contains!14881 (keys!18294 lt!1803173) key!4968))))

(declare-fun b!4640649 () Bool)

(declare-fun getKeysList!711 (List!51882) List!51885)

(assert (=> b!4640649 (= e!2894907 (getKeysList!711 (toList!5126 lt!1803173)))))

(declare-fun b!4640650 () Bool)

(assert (=> b!4640650 (= e!2894908 e!2894911)))

(declare-fun c!794105 () Bool)

(assert (=> b!4640650 (= c!794105 call!323943)))

(assert (= (and d!1463027 c!794107) b!4640647))

(assert (= (and d!1463027 (not c!794107)) b!4640650))

(assert (= (and b!4640650 c!794105) b!4640645))

(assert (= (and b!4640650 (not c!794105)) b!4640644))

(assert (= (or b!4640647 b!4640650) bm!323938))

(assert (= (and bm!323938 c!794106) b!4640649))

(assert (= (and bm!323938 (not c!794106)) b!4640643))

(assert (= (and d!1463027 res!1948917) b!4640646))

(assert (= (and d!1463027 (not res!1948916)) b!4640642))

(assert (= (and b!4640642 res!1948918) b!4640648))

(declare-fun m!5500265 () Bool)

(assert (=> bm!323938 m!5500265))

(declare-fun m!5500267 () Bool)

(assert (=> b!4640648 m!5500267))

(assert (=> b!4640648 m!5500267))

(declare-fun m!5500269 () Bool)

(assert (=> b!4640648 m!5500269))

(declare-fun m!5500271 () Bool)

(assert (=> b!4640645 m!5500271))

(declare-fun m!5500273 () Bool)

(assert (=> b!4640645 m!5500273))

(declare-fun m!5500275 () Bool)

(assert (=> b!4640647 m!5500275))

(declare-fun m!5500277 () Bool)

(assert (=> b!4640647 m!5500277))

(assert (=> b!4640647 m!5500277))

(declare-fun m!5500279 () Bool)

(assert (=> b!4640647 m!5500279))

(declare-fun m!5500281 () Bool)

(assert (=> b!4640647 m!5500281))

(declare-fun m!5500283 () Bool)

(assert (=> b!4640649 m!5500283))

(assert (=> d!1463027 m!5500271))

(assert (=> b!4640646 m!5500267))

(assert (=> b!4640646 m!5500267))

(assert (=> b!4640646 m!5500269))

(assert (=> b!4640642 m!5500277))

(assert (=> b!4640642 m!5500277))

(assert (=> b!4640642 m!5500279))

(assert (=> b!4640643 m!5500267))

(assert (=> b!4640362 d!1463027))

(declare-fun bs!1033205 () Bool)

(declare-fun d!1463029 () Bool)

(assert (= bs!1033205 (and d!1463029 b!4640355)))

(declare-fun lambda!196130 () Int)

(assert (=> bs!1033205 (= lambda!196130 lambda!196034)))

(declare-fun bs!1033206 () Bool)

(assert (= bs!1033206 (and d!1463029 d!1462955)))

(assert (=> bs!1033206 (= lambda!196130 lambda!196059)))

(declare-fun bs!1033207 () Bool)

(assert (= bs!1033207 (and d!1463029 d!1462983)))

(assert (=> bs!1033207 (= lambda!196130 lambda!196084)))

(declare-fun bs!1033208 () Bool)

(assert (= bs!1033208 (and d!1463029 d!1463025)))

(assert (=> bs!1033208 (= lambda!196130 lambda!196129)))

(declare-fun lt!1803475 () ListMap!4449)

(assert (=> d!1463029 (invariantList!1260 (toList!5126 lt!1803475))))

(declare-fun e!2894912 () ListMap!4449)

(assert (=> d!1463029 (= lt!1803475 e!2894912)))

(declare-fun c!794108 () Bool)

(assert (=> d!1463029 (= c!794108 ((_ is Cons!51759) lt!1803170))))

(assert (=> d!1463029 (forall!10939 lt!1803170 lambda!196130)))

(assert (=> d!1463029 (= (extractMap!1646 lt!1803170) lt!1803475)))

(declare-fun b!4640651 () Bool)

(assert (=> b!4640651 (= e!2894912 (addToMapMapFromBucket!1049 (_2!29698 (h!57865 lt!1803170)) (extractMap!1646 (t!358965 lt!1803170))))))

(declare-fun b!4640652 () Bool)

(assert (=> b!4640652 (= e!2894912 (ListMap!4450 Nil!51758))))

(assert (= (and d!1463029 c!794108) b!4640651))

(assert (= (and d!1463029 (not c!794108)) b!4640652))

(declare-fun m!5500285 () Bool)

(assert (=> d!1463029 m!5500285))

(declare-fun m!5500287 () Bool)

(assert (=> d!1463029 m!5500287))

(declare-fun m!5500289 () Bool)

(assert (=> b!4640651 m!5500289))

(assert (=> b!4640651 m!5500289))

(declare-fun m!5500291 () Bool)

(assert (=> b!4640651 m!5500291))

(assert (=> b!4640362 d!1463029))

(declare-fun b!4640656 () Bool)

(declare-fun e!2894913 () List!51882)

(assert (=> b!4640656 (= e!2894913 Nil!51758)))

(declare-fun b!4640654 () Bool)

(declare-fun e!2894914 () List!51882)

(assert (=> b!4640654 (= e!2894914 e!2894913)))

(declare-fun c!794109 () Bool)

(assert (=> b!4640654 (= c!794109 ((_ is Cons!51758) (tail!8213 oldBucket!40)))))

(declare-fun b!4640655 () Bool)

(assert (=> b!4640655 (= e!2894913 (Cons!51758 (h!57864 (tail!8213 oldBucket!40)) (removePairForKey!1213 (t!358964 (tail!8213 oldBucket!40)) key!4968)))))

(declare-fun b!4640653 () Bool)

(assert (=> b!4640653 (= e!2894914 (t!358964 (tail!8213 oldBucket!40)))))

(declare-fun d!1463031 () Bool)

(declare-fun lt!1803476 () List!51882)

(assert (=> d!1463031 (not (containsKey!2620 lt!1803476 key!4968))))

(assert (=> d!1463031 (= lt!1803476 e!2894914)))

(declare-fun c!794110 () Bool)

(assert (=> d!1463031 (= c!794110 (and ((_ is Cons!51758) (tail!8213 oldBucket!40)) (= (_1!29697 (h!57864 (tail!8213 oldBucket!40))) key!4968)))))

(assert (=> d!1463031 (noDuplicateKeys!1590 (tail!8213 oldBucket!40))))

(assert (=> d!1463031 (= (removePairForKey!1213 (tail!8213 oldBucket!40) key!4968) lt!1803476)))

(assert (= (and d!1463031 c!794110) b!4640653))

(assert (= (and d!1463031 (not c!794110)) b!4640654))

(assert (= (and b!4640654 c!794109) b!4640655))

(assert (= (and b!4640654 (not c!794109)) b!4640656))

(declare-fun m!5500293 () Bool)

(assert (=> b!4640655 m!5500293))

(declare-fun m!5500295 () Bool)

(assert (=> d!1463031 m!5500295))

(assert (=> d!1463031 m!5499953))

(declare-fun m!5500297 () Bool)

(assert (=> d!1463031 m!5500297))

(assert (=> b!4640361 d!1463031))

(declare-fun d!1463033 () Bool)

(assert (=> d!1463033 (= (tail!8213 oldBucket!40) (t!358964 oldBucket!40))))

(assert (=> b!4640361 d!1463033))

(declare-fun d!1463035 () Bool)

(assert (=> d!1463035 (= (tail!8213 newBucket!224) (t!358964 newBucket!224))))

(assert (=> b!4640361 d!1463035))

(declare-fun bs!1033209 () Bool)

(declare-fun d!1463037 () Bool)

(assert (= bs!1033209 (and d!1463037 b!4640613)))

(declare-fun lambda!196133 () Int)

(assert (=> bs!1033209 (not (= lambda!196133 lambda!196123))))

(declare-fun bs!1033210 () Bool)

(assert (= bs!1033210 (and d!1463037 b!4640611)))

(assert (=> bs!1033210 (not (= lambda!196133 lambda!196124))))

(assert (=> bs!1033210 (not (= lambda!196133 lambda!196125))))

(declare-fun bs!1033211 () Bool)

(assert (= bs!1033211 (and d!1463037 d!1463001)))

(assert (=> bs!1033211 (not (= lambda!196133 lambda!196126))))

(assert (=> d!1463037 true))

(assert (=> d!1463037 true))

(assert (=> d!1463037 (= (allKeysSameHash!1444 oldBucket!40 hash!414 hashF!1389) (forall!10940 oldBucket!40 lambda!196133))))

(declare-fun bs!1033212 () Bool)

(assert (= bs!1033212 d!1463037))

(declare-fun m!5500299 () Bool)

(assert (=> bs!1033212 m!5500299))

(assert (=> b!4640363 d!1463037))

(declare-fun bs!1033213 () Bool)

(declare-fun d!1463039 () Bool)

(assert (= bs!1033213 (and d!1463039 b!4640611)))

(declare-fun lambda!196134 () Int)

(assert (=> bs!1033213 (not (= lambda!196134 lambda!196124))))

(declare-fun bs!1033214 () Bool)

(assert (= bs!1033214 (and d!1463039 b!4640613)))

(assert (=> bs!1033214 (not (= lambda!196134 lambda!196123))))

(declare-fun bs!1033215 () Bool)

(assert (= bs!1033215 (and d!1463039 d!1463001)))

(assert (=> bs!1033215 (not (= lambda!196134 lambda!196126))))

(assert (=> bs!1033213 (not (= lambda!196134 lambda!196125))))

(declare-fun bs!1033216 () Bool)

(assert (= bs!1033216 (and d!1463039 d!1463037)))

(assert (=> bs!1033216 (= lambda!196134 lambda!196133)))

(assert (=> d!1463039 true))

(assert (=> d!1463039 true))

(assert (=> d!1463039 (= (allKeysSameHash!1444 newBucket!224 hash!414 hashF!1389) (forall!10940 newBucket!224 lambda!196134))))

(declare-fun bs!1033217 () Bool)

(assert (= bs!1033217 d!1463039))

(declare-fun m!5500301 () Bool)

(assert (=> bs!1033217 m!5500301))

(assert (=> b!4640359 d!1463039))

(declare-fun d!1463041 () Bool)

(declare-fun res!1948919 () Bool)

(declare-fun e!2894915 () Bool)

(assert (=> d!1463041 (=> res!1948919 e!2894915)))

(assert (=> d!1463041 (= res!1948919 (not ((_ is Cons!51758) oldBucket!40)))))

(assert (=> d!1463041 (= (noDuplicateKeys!1590 oldBucket!40) e!2894915)))

(declare-fun b!4640661 () Bool)

(declare-fun e!2894916 () Bool)

(assert (=> b!4640661 (= e!2894915 e!2894916)))

(declare-fun res!1948920 () Bool)

(assert (=> b!4640661 (=> (not res!1948920) (not e!2894916))))

(assert (=> b!4640661 (= res!1948920 (not (containsKey!2620 (t!358964 oldBucket!40) (_1!29697 (h!57864 oldBucket!40)))))))

(declare-fun b!4640662 () Bool)

(assert (=> b!4640662 (= e!2894916 (noDuplicateKeys!1590 (t!358964 oldBucket!40)))))

(assert (= (and d!1463041 (not res!1948919)) b!4640661))

(assert (= (and b!4640661 res!1948920) b!4640662))

(declare-fun m!5500303 () Bool)

(assert (=> b!4640661 m!5500303))

(declare-fun m!5500305 () Bool)

(assert (=> b!4640662 m!5500305))

(assert (=> start!466536 d!1463041))

(declare-fun d!1463043 () Bool)

(declare-fun hash!3681 (Hashable!5987 K!13125) (_ BitVec 64))

(assert (=> d!1463043 (= (hash!3679 hashF!1389 key!4968) (hash!3681 hashF!1389 key!4968))))

(declare-fun bs!1033218 () Bool)

(assert (= bs!1033218 d!1463043))

(declare-fun m!5500307 () Bool)

(assert (=> bs!1033218 m!5500307))

(assert (=> b!4640360 d!1463043))

(declare-fun b!4640666 () Bool)

(declare-fun e!2894917 () List!51882)

(assert (=> b!4640666 (= e!2894917 Nil!51758)))

(declare-fun b!4640664 () Bool)

(declare-fun e!2894918 () List!51882)

(assert (=> b!4640664 (= e!2894918 e!2894917)))

(declare-fun c!794111 () Bool)

(assert (=> b!4640664 (= c!794111 ((_ is Cons!51758) (t!358964 oldBucket!40)))))

(declare-fun b!4640665 () Bool)

(assert (=> b!4640665 (= e!2894917 (Cons!51758 (h!57864 (t!358964 oldBucket!40)) (removePairForKey!1213 (t!358964 (t!358964 oldBucket!40)) key!4968)))))

(declare-fun b!4640663 () Bool)

(assert (=> b!4640663 (= e!2894918 (t!358964 (t!358964 oldBucket!40)))))

(declare-fun d!1463045 () Bool)

(declare-fun lt!1803477 () List!51882)

(assert (=> d!1463045 (not (containsKey!2620 lt!1803477 key!4968))))

(assert (=> d!1463045 (= lt!1803477 e!2894918)))

(declare-fun c!794112 () Bool)

(assert (=> d!1463045 (= c!794112 (and ((_ is Cons!51758) (t!358964 oldBucket!40)) (= (_1!29697 (h!57864 (t!358964 oldBucket!40))) key!4968)))))

(assert (=> d!1463045 (noDuplicateKeys!1590 (t!358964 oldBucket!40))))

(assert (=> d!1463045 (= (removePairForKey!1213 (t!358964 oldBucket!40) key!4968) lt!1803477)))

(assert (= (and d!1463045 c!794112) b!4640663))

(assert (= (and d!1463045 (not c!794112)) b!4640664))

(assert (= (and b!4640664 c!794111) b!4640665))

(assert (= (and b!4640664 (not c!794111)) b!4640666))

(declare-fun m!5500309 () Bool)

(assert (=> b!4640665 m!5500309))

(declare-fun m!5500311 () Bool)

(assert (=> d!1463045 m!5500311))

(assert (=> d!1463045 m!5500305))

(assert (=> b!4640356 d!1463045))

(declare-fun b!4640671 () Bool)

(declare-fun e!2894921 () Bool)

(declare-fun tp!1342842 () Bool)

(assert (=> b!4640671 (= e!2894921 (and tp_is_empty!29653 tp_is_empty!29655 tp!1342842))))

(assert (=> b!4640364 (= tp!1342835 e!2894921)))

(assert (= (and b!4640364 ((_ is Cons!51758) (t!358964 newBucket!224))) b!4640671))

(declare-fun tp!1342843 () Bool)

(declare-fun e!2894922 () Bool)

(declare-fun b!4640672 () Bool)

(assert (=> b!4640672 (= e!2894922 (and tp_is_empty!29653 tp_is_empty!29655 tp!1342843))))

(assert (=> b!4640358 (= tp!1342834 e!2894922)))

(assert (= (and b!4640358 ((_ is Cons!51758) (t!358964 oldBucket!40))) b!4640672))

(declare-fun b_lambda!171059 () Bool)

(assert (= b_lambda!171053 (or b!4640355 b_lambda!171059)))

(declare-fun bs!1033219 () Bool)

(declare-fun d!1463047 () Bool)

(assert (= bs!1033219 (and d!1463047 b!4640355)))

(assert (=> bs!1033219 (= (dynLambda!21544 lambda!196034 lt!1803172) (noDuplicateKeys!1590 (_2!29698 lt!1803172)))))

(declare-fun m!5500313 () Bool)

(assert (=> bs!1033219 m!5500313))

(assert (=> d!1462993 d!1463047))

(check-sat (not d!1462993) (not b!4640651) (not d!1462979) (not d!1462959) (not d!1462955) (not d!1462981) (not d!1462973) (not b!4640646) (not b!4640662) (not b!4640671) (not d!1463031) (not d!1463025) (not b!4640462) (not b!4640665) (not d!1463029) (not b!4640661) (not b!4640655) (not d!1463001) (not b!4640648) (not b!4640672) (not d!1462957) (not b!4640447) (not b!4640530) (not b!4640409) (not d!1463039) (not b!4640611) tp_is_empty!29655 (not d!1462997) (not b!4640394) (not b!4640442) (not b!4640612) (not d!1462999) (not b!4640513) (not b!4640393) (not b!4640441) (not d!1462961) (not b!4640614) tp_is_empty!29653 (not b!4640489) (not d!1462983) (not b!4640645) (not bm!323934) (not d!1463027) (not b!4640444) (not bm!323933) (not d!1463037) (not b!4640647) (not b!4640408) (not b!4640615) (not b!4640468) (not b!4640642) (not b!4640643) (not b!4640407) (not b!4640519) (not b!4640487) (not bm!323935) (not bs!1033219) (not d!1463045) (not b!4640410) (not b!4640649) (not b_lambda!171059) (not b!4640448) (not b!4640622) (not d!1463043) (not bm!323938))
(check-sat)
