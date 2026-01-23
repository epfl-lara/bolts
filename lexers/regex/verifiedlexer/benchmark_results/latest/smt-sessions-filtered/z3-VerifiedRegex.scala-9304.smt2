; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493794 () Bool)

(assert start!493794)

(declare-fun bs!1154979 () Bool)

(declare-fun b!4793532 () Bool)

(assert (= bs!1154979 (and b!4793532 start!493794)))

(declare-fun lambda!230802 () Int)

(declare-fun lambda!230801 () Int)

(assert (=> bs!1154979 (not (= lambda!230802 lambda!230801))))

(assert (=> b!4793532 true))

(assert (=> b!4793532 true))

(assert (=> b!4793532 true))

(declare-fun b!4793525 () Bool)

(declare-fun e!2993049 () Bool)

(declare-datatypes ((K!15809 0))(
  ( (K!15810 (val!20953 Int)) )
))
(declare-datatypes ((V!16055 0))(
  ( (V!16056 (val!20954 Int)) )
))
(declare-datatypes ((tuple2!56880 0))(
  ( (tuple2!56881 (_1!31734 K!15809) (_2!31734 V!16055)) )
))
(declare-datatypes ((List!54356 0))(
  ( (Nil!54232) (Cons!54232 (h!60660 tuple2!56880) (t!361806 List!54356)) )
))
(declare-datatypes ((tuple2!56882 0))(
  ( (tuple2!56883 (_1!31735 (_ BitVec 64)) (_2!31735 List!54356)) )
))
(declare-datatypes ((List!54357 0))(
  ( (Nil!54233) (Cons!54233 (h!60661 tuple2!56882) (t!361807 List!54357)) )
))
(declare-datatypes ((ListLongMap!5357 0))(
  ( (ListLongMap!5358 (toList!6935 List!54357)) )
))
(declare-fun lt!1951801 () ListLongMap!5357)

(declare-fun lt!1951802 () (_ BitVec 64))

(declare-fun contains!17851 (ListLongMap!5357 (_ BitVec 64)) Bool)

(assert (=> b!4793525 (= e!2993049 (not (contains!17851 lt!1951801 lt!1951802)))))

(declare-fun b!4793526 () Bool)

(declare-fun res!2037637 () Bool)

(declare-fun e!2993047 () Bool)

(assert (=> b!4793526 (=> (not res!2037637) (not e!2993047))))

(declare-fun lm!2473 () ListLongMap!5357)

(declare-datatypes ((Hashable!6928 0))(
  ( (HashableExt!6927 (__x!32951 Int)) )
))
(declare-fun hashF!1559 () Hashable!6928)

(declare-fun allKeysSameHashInMap!2333 (ListLongMap!5357 Hashable!6928) Bool)

(assert (=> b!4793526 (= res!2037637 (allKeysSameHashInMap!2333 lm!2473 hashF!1559))))

(declare-fun res!2037636 () Bool)

(assert (=> start!493794 (=> (not res!2037636) (not e!2993047))))

(declare-fun forall!12261 (List!54357 Int) Bool)

(assert (=> start!493794 (= res!2037636 (forall!12261 (toList!6935 lm!2473) lambda!230801))))

(assert (=> start!493794 e!2993047))

(declare-fun e!2993048 () Bool)

(declare-fun inv!69835 (ListLongMap!5357) Bool)

(assert (=> start!493794 (and (inv!69835 lm!2473) e!2993048)))

(assert (=> start!493794 true))

(declare-fun tp_is_empty!33573 () Bool)

(assert (=> start!493794 tp_is_empty!33573))

(declare-fun tp_is_empty!33575 () Bool)

(assert (=> start!493794 tp_is_empty!33575))

(declare-fun b!4793527 () Bool)

(declare-fun res!2037631 () Bool)

(assert (=> b!4793527 (=> (not res!2037631) (not e!2993047))))

(declare-fun key!5896 () K!15809)

(declare-datatypes ((ListMap!6407 0))(
  ( (ListMap!6408 (toList!6936 List!54356)) )
))
(declare-fun contains!17852 (ListMap!6407 K!15809) Bool)

(declare-fun extractMap!2455 (List!54357) ListMap!6407)

(assert (=> b!4793527 (= res!2037631 (contains!17852 (extractMap!2455 (toList!6935 lm!2473)) key!5896))))

(declare-fun b!4793528 () Bool)

(declare-fun res!2037632 () Bool)

(assert (=> b!4793528 (=> res!2037632 e!2993049)))

(assert (=> b!4793528 (= res!2037632 (not (allKeysSameHashInMap!2333 lt!1951801 hashF!1559)))))

(declare-fun e!2993050 () Bool)

(declare-fun b!4793529 () Bool)

(declare-datatypes ((Option!13105 0))(
  ( (None!13104) (Some!13104 (v!48395 tuple2!56880)) )
))
(declare-fun isDefined!10247 (Option!13105) Bool)

(declare-fun getPair!900 (List!54356 K!15809) Option!13105)

(declare-fun apply!12997 (ListLongMap!5357 (_ BitVec 64)) List!54356)

(assert (=> b!4793529 (= e!2993050 (isDefined!10247 (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896)))))

(declare-fun b!4793530 () Bool)

(declare-fun res!2037630 () Bool)

(declare-fun e!2993046 () Bool)

(assert (=> b!4793530 (=> res!2037630 e!2993046)))

(declare-fun containsKey!3956 (List!54356 K!15809) Bool)

(assert (=> b!4793530 (= res!2037630 (not (containsKey!3956 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896)))))

(declare-fun b!4793531 () Bool)

(declare-fun tp!1358070 () Bool)

(assert (=> b!4793531 (= e!2993048 tp!1358070)))

(assert (=> b!4793532 (= e!2993046 e!2993049)))

(declare-fun res!2037634 () Bool)

(assert (=> b!4793532 (=> res!2037634 e!2993049)))

(assert (=> b!4793532 (= res!2037634 (not (forall!12261 (toList!6935 lt!1951801) lambda!230801)))))

(declare-fun tail!9273 (ListLongMap!5357) ListLongMap!5357)

(assert (=> b!4793532 (= lt!1951801 (tail!9273 lm!2473))))

(declare-fun lambda!230803 () Int)

(declare-datatypes ((Unit!140013 0))(
  ( (Unit!140014) )
))
(declare-fun lt!1951804 () Unit!140013)

(declare-fun value!3111 () V!16055)

(declare-fun forallContained!4168 (List!54356 Int tuple2!56880) Unit!140013)

(assert (=> b!4793532 (= lt!1951804 (forallContained!4168 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803 (tuple2!56881 key!5896 value!3111)))))

(declare-fun lt!1951803 () Unit!140013)

(declare-fun forallContained!4169 (List!54357 Int tuple2!56882) Unit!140013)

(assert (=> b!4793532 (= lt!1951803 (forallContained!4169 (toList!6935 lm!2473) lambda!230802 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4793533 () Bool)

(declare-fun res!2037638 () Bool)

(assert (=> b!4793533 (=> res!2037638 e!2993046)))

(get-info :version)

(assert (=> b!4793533 (= res!2037638 (not ((_ is Cons!54233) (toList!6935 lm!2473))))))

(declare-fun b!4793534 () Bool)

(assert (=> b!4793534 (= e!2993047 (not e!2993046))))

(declare-fun res!2037633 () Bool)

(assert (=> b!4793534 (=> res!2037633 e!2993046)))

(declare-fun getValue!116 (List!54357 K!15809) V!16055)

(assert (=> b!4793534 (= res!2037633 (not (= (getValue!116 (toList!6935 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!570 (List!54357 K!15809) Bool)

(assert (=> b!4793534 (containsKeyBiggerList!570 (toList!6935 lm!2473) key!5896)))

(declare-fun lt!1951805 () Unit!140013)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!310 (ListLongMap!5357 K!15809 Hashable!6928) Unit!140013)

(assert (=> b!4793534 (= lt!1951805 (lemmaInLongMapThenContainsKeyBiggerList!310 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4793534 e!2993050))

(declare-fun res!2037635 () Bool)

(assert (=> b!4793534 (=> (not res!2037635) (not e!2993050))))

(assert (=> b!4793534 (= res!2037635 (contains!17851 lm!2473 lt!1951802))))

(declare-fun hash!4965 (Hashable!6928 K!15809) (_ BitVec 64))

(assert (=> b!4793534 (= lt!1951802 (hash!4965 hashF!1559 key!5896))))

(declare-fun lt!1951800 () Unit!140013)

(declare-fun lemmaInGenericMapThenInLongMap!332 (ListLongMap!5357 K!15809 Hashable!6928) Unit!140013)

(assert (=> b!4793534 (= lt!1951800 (lemmaInGenericMapThenInLongMap!332 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!493794 res!2037636) b!4793526))

(assert (= (and b!4793526 res!2037637) b!4793527))

(assert (= (and b!4793527 res!2037631) b!4793534))

(assert (= (and b!4793534 res!2037635) b!4793529))

(assert (= (and b!4793534 (not res!2037633)) b!4793533))

(assert (= (and b!4793533 (not res!2037638)) b!4793530))

(assert (= (and b!4793530 (not res!2037630)) b!4793532))

(assert (= (and b!4793532 (not res!2037634)) b!4793528))

(assert (= (and b!4793528 (not res!2037632)) b!4793525))

(assert (= start!493794 b!4793531))

(declare-fun m!5774462 () Bool)

(assert (=> b!4793525 m!5774462))

(declare-fun m!5774464 () Bool)

(assert (=> b!4793530 m!5774464))

(declare-fun m!5774466 () Bool)

(assert (=> b!4793527 m!5774466))

(assert (=> b!4793527 m!5774466))

(declare-fun m!5774468 () Bool)

(assert (=> b!4793527 m!5774468))

(declare-fun m!5774470 () Bool)

(assert (=> b!4793526 m!5774470))

(declare-fun m!5774472 () Bool)

(assert (=> b!4793534 m!5774472))

(declare-fun m!5774474 () Bool)

(assert (=> b!4793534 m!5774474))

(declare-fun m!5774476 () Bool)

(assert (=> b!4793534 m!5774476))

(declare-fun m!5774478 () Bool)

(assert (=> b!4793534 m!5774478))

(declare-fun m!5774480 () Bool)

(assert (=> b!4793534 m!5774480))

(declare-fun m!5774482 () Bool)

(assert (=> b!4793534 m!5774482))

(declare-fun m!5774484 () Bool)

(assert (=> b!4793529 m!5774484))

(assert (=> b!4793529 m!5774484))

(declare-fun m!5774486 () Bool)

(assert (=> b!4793529 m!5774486))

(assert (=> b!4793529 m!5774486))

(declare-fun m!5774488 () Bool)

(assert (=> b!4793529 m!5774488))

(declare-fun m!5774490 () Bool)

(assert (=> b!4793528 m!5774490))

(declare-fun m!5774492 () Bool)

(assert (=> start!493794 m!5774492))

(declare-fun m!5774494 () Bool)

(assert (=> start!493794 m!5774494))

(declare-fun m!5774496 () Bool)

(assert (=> b!4793532 m!5774496))

(declare-fun m!5774498 () Bool)

(assert (=> b!4793532 m!5774498))

(declare-fun m!5774500 () Bool)

(assert (=> b!4793532 m!5774500))

(declare-fun m!5774502 () Bool)

(assert (=> b!4793532 m!5774502))

(check-sat (not b!4793527) (not b!4793529) (not b!4793531) (not b!4793525) (not b!4793534) (not b!4793528) (not b!4793526) (not b!4793532) tp_is_empty!33575 (not start!493794) (not b!4793530) tp_is_empty!33573)
(check-sat)
(get-model)

(declare-fun bs!1154980 () Bool)

(declare-fun d!1533723 () Bool)

(assert (= bs!1154980 (and d!1533723 start!493794)))

(declare-fun lambda!230808 () Int)

(assert (=> bs!1154980 (not (= lambda!230808 lambda!230801))))

(declare-fun bs!1154981 () Bool)

(assert (= bs!1154981 (and d!1533723 b!4793532)))

(assert (=> bs!1154981 (= lambda!230808 lambda!230802)))

(assert (=> d!1533723 true))

(assert (=> d!1533723 (= (allKeysSameHashInMap!2333 lm!2473 hashF!1559) (forall!12261 (toList!6935 lm!2473) lambda!230808))))

(declare-fun bs!1154982 () Bool)

(assert (= bs!1154982 d!1533723))

(declare-fun m!5774506 () Bool)

(assert (=> bs!1154982 m!5774506))

(assert (=> b!4793526 d!1533723))

(declare-fun d!1533725 () Bool)

(declare-fun e!2993073 () Bool)

(assert (=> d!1533725 e!2993073))

(declare-fun res!2037656 () Bool)

(assert (=> d!1533725 (=> res!2037656 e!2993073)))

(declare-fun lt!1951817 () Bool)

(assert (=> d!1533725 (= res!2037656 (not lt!1951817))))

(declare-fun lt!1951819 () Bool)

(assert (=> d!1533725 (= lt!1951817 lt!1951819)))

(declare-fun lt!1951820 () Unit!140013)

(declare-fun e!2993074 () Unit!140013)

(assert (=> d!1533725 (= lt!1951820 e!2993074)))

(declare-fun c!816979 () Bool)

(assert (=> d!1533725 (= c!816979 lt!1951819)))

(declare-fun containsKey!3957 (List!54357 (_ BitVec 64)) Bool)

(assert (=> d!1533725 (= lt!1951819 (containsKey!3957 (toList!6935 lt!1951801) lt!1951802))))

(assert (=> d!1533725 (= (contains!17851 lt!1951801 lt!1951802) lt!1951817)))

(declare-fun b!4793568 () Bool)

(declare-fun lt!1951818 () Unit!140013)

(assert (=> b!4793568 (= e!2993074 lt!1951818)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (List!54357 (_ BitVec 64)) Unit!140013)

(assert (=> b!4793568 (= lt!1951818 (lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (toList!6935 lt!1951801) lt!1951802))))

(declare-datatypes ((Option!13106 0))(
  ( (None!13105) (Some!13105 (v!48396 List!54356)) )
))
(declare-fun isDefined!10248 (Option!13106) Bool)

(declare-fun getValueByKey!2353 (List!54357 (_ BitVec 64)) Option!13106)

(assert (=> b!4793568 (isDefined!10248 (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802))))

(declare-fun b!4793569 () Bool)

(declare-fun Unit!140015 () Unit!140013)

(assert (=> b!4793569 (= e!2993074 Unit!140015)))

(declare-fun b!4793570 () Bool)

(assert (=> b!4793570 (= e!2993073 (isDefined!10248 (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802)))))

(assert (= (and d!1533725 c!816979) b!4793568))

(assert (= (and d!1533725 (not c!816979)) b!4793569))

(assert (= (and d!1533725 (not res!2037656)) b!4793570))

(declare-fun m!5774528 () Bool)

(assert (=> d!1533725 m!5774528))

(declare-fun m!5774530 () Bool)

(assert (=> b!4793568 m!5774530))

(declare-fun m!5774532 () Bool)

(assert (=> b!4793568 m!5774532))

(assert (=> b!4793568 m!5774532))

(declare-fun m!5774534 () Bool)

(assert (=> b!4793568 m!5774534))

(assert (=> b!4793570 m!5774532))

(assert (=> b!4793570 m!5774532))

(assert (=> b!4793570 m!5774534))

(assert (=> b!4793525 d!1533725))

(declare-fun d!1533733 () Bool)

(declare-fun res!2037661 () Bool)

(declare-fun e!2993079 () Bool)

(assert (=> d!1533733 (=> res!2037661 e!2993079)))

(assert (=> d!1533733 (= res!2037661 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533733 (= (forall!12261 (toList!6935 lm!2473) lambda!230801) e!2993079)))

(declare-fun b!4793575 () Bool)

(declare-fun e!2993080 () Bool)

(assert (=> b!4793575 (= e!2993079 e!2993080)))

(declare-fun res!2037662 () Bool)

(assert (=> b!4793575 (=> (not res!2037662) (not e!2993080))))

(declare-fun dynLambda!22061 (Int tuple2!56882) Bool)

(assert (=> b!4793575 (= res!2037662 (dynLambda!22061 lambda!230801 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4793576 () Bool)

(assert (=> b!4793576 (= e!2993080 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230801))))

(assert (= (and d!1533733 (not res!2037661)) b!4793575))

(assert (= (and b!4793575 res!2037662) b!4793576))

(declare-fun b_lambda!186811 () Bool)

(assert (=> (not b_lambda!186811) (not b!4793575)))

(declare-fun m!5774536 () Bool)

(assert (=> b!4793575 m!5774536))

(declare-fun m!5774538 () Bool)

(assert (=> b!4793576 m!5774538))

(assert (=> start!493794 d!1533733))

(declare-fun d!1533735 () Bool)

(declare-fun isStrictlySorted!879 (List!54357) Bool)

(assert (=> d!1533735 (= (inv!69835 lm!2473) (isStrictlySorted!879 (toList!6935 lm!2473)))))

(declare-fun bs!1154986 () Bool)

(assert (= bs!1154986 d!1533735))

(declare-fun m!5774540 () Bool)

(assert (=> bs!1154986 m!5774540))

(assert (=> start!493794 d!1533735))

(declare-fun b!4793620 () Bool)

(declare-fun e!2993120 () Unit!140013)

(declare-fun lt!1951859 () Unit!140013)

(assert (=> b!4793620 (= e!2993120 lt!1951859)))

(declare-fun lt!1951860 () Unit!140013)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2147 (List!54356 K!15809) Unit!140013)

(assert (=> b!4793620 (= lt!1951860 (lemmaContainsKeyImpliesGetValueByKeyDefined!2147 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-datatypes ((Option!13108 0))(
  ( (None!13107) (Some!13107 (v!48398 V!16055)) )
))
(declare-fun isDefined!10250 (Option!13108) Bool)

(declare-fun getValueByKey!2355 (List!54356 K!15809) Option!13108)

(assert (=> b!4793620 (isDefined!10250 (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-fun lt!1951855 () Unit!140013)

(assert (=> b!4793620 (= lt!1951855 lt!1951860)))

(declare-fun lemmaInListThenGetKeysListContains!1072 (List!54356 K!15809) Unit!140013)

(assert (=> b!4793620 (= lt!1951859 (lemmaInListThenGetKeysListContains!1072 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-fun call!335067 () Bool)

(assert (=> b!4793620 call!335067))

(declare-fun b!4793621 () Bool)

(declare-fun e!2993115 () Bool)

(declare-datatypes ((List!54358 0))(
  ( (Nil!54234) (Cons!54234 (h!60662 K!15809) (t!361808 List!54358)) )
))
(declare-fun contains!17853 (List!54358 K!15809) Bool)

(declare-fun keys!19804 (ListMap!6407) List!54358)

(assert (=> b!4793621 (= e!2993115 (contains!17853 (keys!19804 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-fun d!1533737 () Bool)

(declare-fun e!2993119 () Bool)

(assert (=> d!1533737 e!2993119))

(declare-fun res!2037689 () Bool)

(assert (=> d!1533737 (=> res!2037689 e!2993119)))

(declare-fun e!2993117 () Bool)

(assert (=> d!1533737 (= res!2037689 e!2993117)))

(declare-fun res!2037690 () Bool)

(assert (=> d!1533737 (=> (not res!2037690) (not e!2993117))))

(declare-fun lt!1951857 () Bool)

(assert (=> d!1533737 (= res!2037690 (not lt!1951857))))

(declare-fun lt!1951858 () Bool)

(assert (=> d!1533737 (= lt!1951857 lt!1951858)))

(declare-fun lt!1951861 () Unit!140013)

(assert (=> d!1533737 (= lt!1951861 e!2993120)))

(declare-fun c!816991 () Bool)

(assert (=> d!1533737 (= c!816991 lt!1951858)))

(declare-fun containsKey!3959 (List!54356 K!15809) Bool)

(assert (=> d!1533737 (= lt!1951858 (containsKey!3959 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(assert (=> d!1533737 (= (contains!17852 (extractMap!2455 (toList!6935 lm!2473)) key!5896) lt!1951857)))

(declare-fun b!4793622 () Bool)

(assert (=> b!4793622 false))

(declare-fun lt!1951856 () Unit!140013)

(declare-fun lt!1951854 () Unit!140013)

(assert (=> b!4793622 (= lt!1951856 lt!1951854)))

(assert (=> b!4793622 (containsKey!3959 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1077 (List!54356 K!15809) Unit!140013)

(assert (=> b!4793622 (= lt!1951854 (lemmaInGetKeysListThenContainsKey!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-fun e!2993118 () Unit!140013)

(declare-fun Unit!140017 () Unit!140013)

(assert (=> b!4793622 (= e!2993118 Unit!140017)))

(declare-fun b!4793623 () Bool)

(assert (=> b!4793623 (= e!2993117 (not (contains!17853 (keys!19804 (extractMap!2455 (toList!6935 lm!2473))) key!5896)))))

(declare-fun b!4793624 () Bool)

(assert (=> b!4793624 (= e!2993119 e!2993115)))

(declare-fun res!2037688 () Bool)

(assert (=> b!4793624 (=> (not res!2037688) (not e!2993115))))

(assert (=> b!4793624 (= res!2037688 (isDefined!10250 (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896)))))

(declare-fun b!4793625 () Bool)

(assert (=> b!4793625 (= e!2993120 e!2993118)))

(declare-fun c!816990 () Bool)

(assert (=> b!4793625 (= c!816990 call!335067)))

(declare-fun b!4793626 () Bool)

(declare-fun e!2993116 () List!54358)

(assert (=> b!4793626 (= e!2993116 (keys!19804 (extractMap!2455 (toList!6935 lm!2473))))))

(declare-fun b!4793627 () Bool)

(declare-fun Unit!140018 () Unit!140013)

(assert (=> b!4793627 (= e!2993118 Unit!140018)))

(declare-fun bm!335062 () Bool)

(assert (=> bm!335062 (= call!335067 (contains!17853 e!2993116 key!5896))))

(declare-fun c!816989 () Bool)

(assert (=> bm!335062 (= c!816989 c!816991)))

(declare-fun b!4793628 () Bool)

(declare-fun getKeysList!1077 (List!54356) List!54358)

(assert (=> b!4793628 (= e!2993116 (getKeysList!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))

(assert (= (and d!1533737 c!816991) b!4793620))

(assert (= (and d!1533737 (not c!816991)) b!4793625))

(assert (= (and b!4793625 c!816990) b!4793622))

(assert (= (and b!4793625 (not c!816990)) b!4793627))

(assert (= (or b!4793620 b!4793625) bm!335062))

(assert (= (and bm!335062 c!816989) b!4793628))

(assert (= (and bm!335062 (not c!816989)) b!4793626))

(assert (= (and d!1533737 res!2037690) b!4793623))

(assert (= (and d!1533737 (not res!2037689)) b!4793624))

(assert (= (and b!4793624 res!2037688) b!4793621))

(declare-fun m!5774578 () Bool)

(assert (=> b!4793620 m!5774578))

(declare-fun m!5774580 () Bool)

(assert (=> b!4793620 m!5774580))

(assert (=> b!4793620 m!5774580))

(declare-fun m!5774582 () Bool)

(assert (=> b!4793620 m!5774582))

(declare-fun m!5774584 () Bool)

(assert (=> b!4793620 m!5774584))

(assert (=> b!4793626 m!5774466))

(declare-fun m!5774586 () Bool)

(assert (=> b!4793626 m!5774586))

(declare-fun m!5774588 () Bool)

(assert (=> d!1533737 m!5774588))

(assert (=> b!4793624 m!5774580))

(assert (=> b!4793624 m!5774580))

(assert (=> b!4793624 m!5774582))

(assert (=> b!4793623 m!5774466))

(assert (=> b!4793623 m!5774586))

(assert (=> b!4793623 m!5774586))

(declare-fun m!5774590 () Bool)

(assert (=> b!4793623 m!5774590))

(declare-fun m!5774592 () Bool)

(assert (=> bm!335062 m!5774592))

(declare-fun m!5774594 () Bool)

(assert (=> b!4793628 m!5774594))

(assert (=> b!4793621 m!5774466))

(assert (=> b!4793621 m!5774586))

(assert (=> b!4793621 m!5774586))

(assert (=> b!4793621 m!5774590))

(assert (=> b!4793622 m!5774588))

(declare-fun m!5774596 () Bool)

(assert (=> b!4793622 m!5774596))

(assert (=> b!4793527 d!1533737))

(declare-fun bs!1155005 () Bool)

(declare-fun d!1533757 () Bool)

(assert (= bs!1155005 (and d!1533757 start!493794)))

(declare-fun lambda!230819 () Int)

(assert (=> bs!1155005 (= lambda!230819 lambda!230801)))

(declare-fun bs!1155006 () Bool)

(assert (= bs!1155006 (and d!1533757 b!4793532)))

(assert (=> bs!1155006 (not (= lambda!230819 lambda!230802))))

(declare-fun bs!1155008 () Bool)

(assert (= bs!1155008 (and d!1533757 d!1533723)))

(assert (=> bs!1155008 (not (= lambda!230819 lambda!230808))))

(declare-fun lt!1951871 () ListMap!6407)

(declare-fun invariantList!1731 (List!54356) Bool)

(assert (=> d!1533757 (invariantList!1731 (toList!6936 lt!1951871))))

(declare-fun e!2993142 () ListMap!6407)

(assert (=> d!1533757 (= lt!1951871 e!2993142)))

(declare-fun c!817000 () Bool)

(assert (=> d!1533757 (= c!817000 ((_ is Cons!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533757 (forall!12261 (toList!6935 lm!2473) lambda!230819)))

(assert (=> d!1533757 (= (extractMap!2455 (toList!6935 lm!2473)) lt!1951871)))

(declare-fun b!4793661 () Bool)

(declare-fun addToMapMapFromBucket!1708 (List!54356 ListMap!6407) ListMap!6407)

(assert (=> b!4793661 (= e!2993142 (addToMapMapFromBucket!1708 (_2!31735 (h!60661 (toList!6935 lm!2473))) (extractMap!2455 (t!361807 (toList!6935 lm!2473)))))))

(declare-fun b!4793662 () Bool)

(assert (=> b!4793662 (= e!2993142 (ListMap!6408 Nil!54232))))

(assert (= (and d!1533757 c!817000) b!4793661))

(assert (= (and d!1533757 (not c!817000)) b!4793662))

(declare-fun m!5774626 () Bool)

(assert (=> d!1533757 m!5774626))

(declare-fun m!5774631 () Bool)

(assert (=> d!1533757 m!5774631))

(declare-fun m!5774636 () Bool)

(assert (=> b!4793661 m!5774636))

(assert (=> b!4793661 m!5774636))

(declare-fun m!5774640 () Bool)

(assert (=> b!4793661 m!5774640))

(assert (=> b!4793527 d!1533757))

(declare-fun d!1533769 () Bool)

(declare-fun res!2037708 () Bool)

(declare-fun e!2993145 () Bool)

(assert (=> d!1533769 (=> res!2037708 e!2993145)))

(assert (=> d!1533769 (= res!2037708 ((_ is Nil!54233) (toList!6935 lt!1951801)))))

(assert (=> d!1533769 (= (forall!12261 (toList!6935 lt!1951801) lambda!230801) e!2993145)))

(declare-fun b!4793666 () Bool)

(declare-fun e!2993146 () Bool)

(assert (=> b!4793666 (= e!2993145 e!2993146)))

(declare-fun res!2037709 () Bool)

(assert (=> b!4793666 (=> (not res!2037709) (not e!2993146))))

(assert (=> b!4793666 (= res!2037709 (dynLambda!22061 lambda!230801 (h!60661 (toList!6935 lt!1951801))))))

(declare-fun b!4793667 () Bool)

(assert (=> b!4793667 (= e!2993146 (forall!12261 (t!361807 (toList!6935 lt!1951801)) lambda!230801))))

(assert (= (and d!1533769 (not res!2037708)) b!4793666))

(assert (= (and b!4793666 res!2037709) b!4793667))

(declare-fun b_lambda!186821 () Bool)

(assert (=> (not b_lambda!186821) (not b!4793666)))

(declare-fun m!5774642 () Bool)

(assert (=> b!4793666 m!5774642))

(declare-fun m!5774644 () Bool)

(assert (=> b!4793667 m!5774644))

(assert (=> b!4793532 d!1533769))

(declare-fun d!1533773 () Bool)

(declare-fun tail!9275 (List!54357) List!54357)

(assert (=> d!1533773 (= (tail!9273 lm!2473) (ListLongMap!5358 (tail!9275 (toList!6935 lm!2473))))))

(declare-fun bs!1155009 () Bool)

(assert (= bs!1155009 d!1533773))

(declare-fun m!5774646 () Bool)

(assert (=> bs!1155009 m!5774646))

(assert (=> b!4793532 d!1533773))

(declare-fun d!1533775 () Bool)

(declare-fun dynLambda!22064 (Int tuple2!56880) Bool)

(assert (=> d!1533775 (dynLambda!22064 lambda!230803 (tuple2!56881 key!5896 value!3111))))

(declare-fun lt!1951878 () Unit!140013)

(declare-fun choose!34538 (List!54356 Int tuple2!56880) Unit!140013)

(assert (=> d!1533775 (= lt!1951878 (choose!34538 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803 (tuple2!56881 key!5896 value!3111)))))

(declare-fun e!2993149 () Bool)

(assert (=> d!1533775 e!2993149))

(declare-fun res!2037712 () Bool)

(assert (=> d!1533775 (=> (not res!2037712) (not e!2993149))))

(declare-fun forall!12263 (List!54356 Int) Bool)

(assert (=> d!1533775 (= res!2037712 (forall!12263 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803))))

(assert (=> d!1533775 (= (forallContained!4168 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803 (tuple2!56881 key!5896 value!3111)) lt!1951878)))

(declare-fun b!4793670 () Bool)

(declare-fun contains!17856 (List!54356 tuple2!56880) Bool)

(assert (=> b!4793670 (= e!2993149 (contains!17856 (_2!31735 (h!60661 (toList!6935 lm!2473))) (tuple2!56881 key!5896 value!3111)))))

(assert (= (and d!1533775 res!2037712) b!4793670))

(declare-fun b_lambda!186823 () Bool)

(assert (=> (not b_lambda!186823) (not d!1533775)))

(declare-fun m!5774648 () Bool)

(assert (=> d!1533775 m!5774648))

(declare-fun m!5774650 () Bool)

(assert (=> d!1533775 m!5774650))

(declare-fun m!5774652 () Bool)

(assert (=> d!1533775 m!5774652))

(declare-fun m!5774654 () Bool)

(assert (=> b!4793670 m!5774654))

(assert (=> b!4793532 d!1533775))

(declare-fun d!1533777 () Bool)

(assert (=> d!1533777 (dynLambda!22061 lambda!230802 (h!60661 (toList!6935 lm!2473)))))

(declare-fun lt!1951881 () Unit!140013)

(declare-fun choose!34539 (List!54357 Int tuple2!56882) Unit!140013)

(assert (=> d!1533777 (= lt!1951881 (choose!34539 (toList!6935 lm!2473) lambda!230802 (h!60661 (toList!6935 lm!2473))))))

(declare-fun e!2993152 () Bool)

(assert (=> d!1533777 e!2993152))

(declare-fun res!2037715 () Bool)

(assert (=> d!1533777 (=> (not res!2037715) (not e!2993152))))

(assert (=> d!1533777 (= res!2037715 (forall!12261 (toList!6935 lm!2473) lambda!230802))))

(assert (=> d!1533777 (= (forallContained!4169 (toList!6935 lm!2473) lambda!230802 (h!60661 (toList!6935 lm!2473))) lt!1951881)))

(declare-fun b!4793673 () Bool)

(declare-fun contains!17857 (List!54357 tuple2!56882) Bool)

(assert (=> b!4793673 (= e!2993152 (contains!17857 (toList!6935 lm!2473) (h!60661 (toList!6935 lm!2473))))))

(assert (= (and d!1533777 res!2037715) b!4793673))

(declare-fun b_lambda!186825 () Bool)

(assert (=> (not b_lambda!186825) (not d!1533777)))

(declare-fun m!5774656 () Bool)

(assert (=> d!1533777 m!5774656))

(declare-fun m!5774658 () Bool)

(assert (=> d!1533777 m!5774658))

(declare-fun m!5774660 () Bool)

(assert (=> d!1533777 m!5774660))

(declare-fun m!5774662 () Bool)

(assert (=> b!4793673 m!5774662))

(assert (=> b!4793532 d!1533777))

(declare-fun d!1533779 () Bool)

(declare-fun e!2993153 () Bool)

(assert (=> d!1533779 e!2993153))

(declare-fun res!2037716 () Bool)

(assert (=> d!1533779 (=> res!2037716 e!2993153)))

(declare-fun lt!1951882 () Bool)

(assert (=> d!1533779 (= res!2037716 (not lt!1951882))))

(declare-fun lt!1951884 () Bool)

(assert (=> d!1533779 (= lt!1951882 lt!1951884)))

(declare-fun lt!1951885 () Unit!140013)

(declare-fun e!2993154 () Unit!140013)

(assert (=> d!1533779 (= lt!1951885 e!2993154)))

(declare-fun c!817002 () Bool)

(assert (=> d!1533779 (= c!817002 lt!1951884)))

(assert (=> d!1533779 (= lt!1951884 (containsKey!3957 (toList!6935 lm!2473) lt!1951802))))

(assert (=> d!1533779 (= (contains!17851 lm!2473 lt!1951802) lt!1951882)))

(declare-fun b!4793674 () Bool)

(declare-fun lt!1951883 () Unit!140013)

(assert (=> b!4793674 (= e!2993154 lt!1951883)))

(assert (=> b!4793674 (= lt!1951883 (lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (toList!6935 lm!2473) lt!1951802))))

(assert (=> b!4793674 (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802))))

(declare-fun b!4793675 () Bool)

(declare-fun Unit!140019 () Unit!140013)

(assert (=> b!4793675 (= e!2993154 Unit!140019)))

(declare-fun b!4793676 () Bool)

(assert (=> b!4793676 (= e!2993153 (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802)))))

(assert (= (and d!1533779 c!817002) b!4793674))

(assert (= (and d!1533779 (not c!817002)) b!4793675))

(assert (= (and d!1533779 (not res!2037716)) b!4793676))

(declare-fun m!5774664 () Bool)

(assert (=> d!1533779 m!5774664))

(declare-fun m!5774666 () Bool)

(assert (=> b!4793674 m!5774666))

(declare-fun m!5774668 () Bool)

(assert (=> b!4793674 m!5774668))

(assert (=> b!4793674 m!5774668))

(declare-fun m!5774670 () Bool)

(assert (=> b!4793674 m!5774670))

(assert (=> b!4793676 m!5774668))

(assert (=> b!4793676 m!5774668))

(assert (=> b!4793676 m!5774670))

(assert (=> b!4793534 d!1533779))

(declare-fun d!1533781 () Bool)

(declare-fun res!2037723 () Bool)

(declare-fun e!2993163 () Bool)

(assert (=> d!1533781 (=> res!2037723 e!2993163)))

(declare-fun e!2993162 () Bool)

(assert (=> d!1533781 (= res!2037723 e!2993162)))

(declare-fun res!2037725 () Bool)

(assert (=> d!1533781 (=> (not res!2037725) (not e!2993162))))

(assert (=> d!1533781 (= res!2037725 ((_ is Cons!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533781 (= (containsKeyBiggerList!570 (toList!6935 lm!2473) key!5896) e!2993163)))

(declare-fun b!4793683 () Bool)

(assert (=> b!4793683 (= e!2993162 (containsKey!3956 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896))))

(declare-fun b!4793684 () Bool)

(declare-fun e!2993161 () Bool)

(assert (=> b!4793684 (= e!2993163 e!2993161)))

(declare-fun res!2037724 () Bool)

(assert (=> b!4793684 (=> (not res!2037724) (not e!2993161))))

(assert (=> b!4793684 (= res!2037724 ((_ is Cons!54233) (toList!6935 lm!2473)))))

(declare-fun b!4793685 () Bool)

(assert (=> b!4793685 (= e!2993161 (containsKeyBiggerList!570 (t!361807 (toList!6935 lm!2473)) key!5896))))

(assert (= (and d!1533781 res!2037725) b!4793683))

(assert (= (and d!1533781 (not res!2037723)) b!4793684))

(assert (= (and b!4793684 res!2037724) b!4793685))

(assert (=> b!4793683 m!5774464))

(declare-fun m!5774672 () Bool)

(assert (=> b!4793685 m!5774672))

(assert (=> b!4793534 d!1533781))

(declare-fun bs!1155010 () Bool)

(declare-fun d!1533783 () Bool)

(assert (= bs!1155010 (and d!1533783 start!493794)))

(declare-fun lambda!230822 () Int)

(assert (=> bs!1155010 (= lambda!230822 lambda!230801)))

(declare-fun bs!1155011 () Bool)

(assert (= bs!1155011 (and d!1533783 b!4793532)))

(assert (=> bs!1155011 (not (= lambda!230822 lambda!230802))))

(declare-fun bs!1155012 () Bool)

(assert (= bs!1155012 (and d!1533783 d!1533723)))

(assert (=> bs!1155012 (not (= lambda!230822 lambda!230808))))

(declare-fun bs!1155013 () Bool)

(assert (= bs!1155013 (and d!1533783 d!1533757)))

(assert (=> bs!1155013 (= lambda!230822 lambda!230819)))

(assert (=> d!1533783 (containsKeyBiggerList!570 (toList!6935 lm!2473) key!5896)))

(declare-fun lt!1951904 () Unit!140013)

(declare-fun choose!34540 (ListLongMap!5357 K!15809 Hashable!6928) Unit!140013)

(assert (=> d!1533783 (= lt!1951904 (choose!34540 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533783 (forall!12261 (toList!6935 lm!2473) lambda!230822)))

(assert (=> d!1533783 (= (lemmaInLongMapThenContainsKeyBiggerList!310 lm!2473 key!5896 hashF!1559) lt!1951904)))

(declare-fun bs!1155014 () Bool)

(assert (= bs!1155014 d!1533783))

(assert (=> bs!1155014 m!5774474))

(declare-fun m!5774674 () Bool)

(assert (=> bs!1155014 m!5774674))

(declare-fun m!5774676 () Bool)

(assert (=> bs!1155014 m!5774676))

(assert (=> b!4793534 d!1533783))

(declare-fun bs!1155015 () Bool)

(declare-fun d!1533785 () Bool)

(assert (= bs!1155015 (and d!1533785 b!4793532)))

(declare-fun lambda!230825 () Int)

(assert (=> bs!1155015 (not (= lambda!230825 lambda!230802))))

(declare-fun bs!1155016 () Bool)

(assert (= bs!1155016 (and d!1533785 d!1533723)))

(assert (=> bs!1155016 (not (= lambda!230825 lambda!230808))))

(declare-fun bs!1155017 () Bool)

(assert (= bs!1155017 (and d!1533785 start!493794)))

(assert (=> bs!1155017 (= lambda!230825 lambda!230801)))

(declare-fun bs!1155018 () Bool)

(assert (= bs!1155018 (and d!1533785 d!1533783)))

(assert (=> bs!1155018 (= lambda!230825 lambda!230822)))

(declare-fun bs!1155019 () Bool)

(assert (= bs!1155019 (and d!1533785 d!1533757)))

(assert (=> bs!1155019 (= lambda!230825 lambda!230819)))

(declare-fun e!2993184 () Bool)

(assert (=> d!1533785 e!2993184))

(declare-fun res!2037737 () Bool)

(assert (=> d!1533785 (=> (not res!2037737) (not e!2993184))))

(assert (=> d!1533785 (= res!2037737 (contains!17851 lm!2473 (hash!4965 hashF!1559 key!5896)))))

(declare-fun lt!1951915 () Unit!140013)

(declare-fun choose!34541 (ListLongMap!5357 K!15809 Hashable!6928) Unit!140013)

(assert (=> d!1533785 (= lt!1951915 (choose!34541 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533785 (forall!12261 (toList!6935 lm!2473) lambda!230825)))

(assert (=> d!1533785 (= (lemmaInGenericMapThenInLongMap!332 lm!2473 key!5896 hashF!1559) lt!1951915)))

(declare-fun b!4793715 () Bool)

(assert (=> b!4793715 (= e!2993184 (isDefined!10247 (getPair!900 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1533785 res!2037737) b!4793715))

(assert (=> d!1533785 m!5774476))

(assert (=> d!1533785 m!5774476))

(declare-fun m!5774698 () Bool)

(assert (=> d!1533785 m!5774698))

(declare-fun m!5774700 () Bool)

(assert (=> d!1533785 m!5774700))

(declare-fun m!5774702 () Bool)

(assert (=> d!1533785 m!5774702))

(assert (=> b!4793715 m!5774476))

(assert (=> b!4793715 m!5774476))

(declare-fun m!5774704 () Bool)

(assert (=> b!4793715 m!5774704))

(assert (=> b!4793715 m!5774704))

(declare-fun m!5774706 () Bool)

(assert (=> b!4793715 m!5774706))

(assert (=> b!4793715 m!5774706))

(declare-fun m!5774708 () Bool)

(assert (=> b!4793715 m!5774708))

(assert (=> b!4793534 d!1533785))

(declare-fun d!1533789 () Bool)

(declare-fun c!817014 () Bool)

(declare-fun e!2993190 () Bool)

(assert (=> d!1533789 (= c!817014 e!2993190)))

(declare-fun res!2037740 () Bool)

(assert (=> d!1533789 (=> (not res!2037740) (not e!2993190))))

(assert (=> d!1533789 (= res!2037740 ((_ is Cons!54233) (toList!6935 lm!2473)))))

(declare-fun e!2993189 () V!16055)

(assert (=> d!1533789 (= (getValue!116 (toList!6935 lm!2473) key!5896) e!2993189)))

(declare-fun b!4793724 () Bool)

(assert (=> b!4793724 (= e!2993190 (containsKey!3956 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896))))

(declare-fun b!4793722 () Bool)

(declare-fun get!18488 (Option!13105) tuple2!56880)

(assert (=> b!4793722 (= e!2993189 (_2!31734 (get!18488 (getPair!900 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896))))))

(declare-fun b!4793723 () Bool)

(assert (=> b!4793723 (= e!2993189 (getValue!116 (t!361807 (toList!6935 lm!2473)) key!5896))))

(assert (= (and d!1533789 res!2037740) b!4793724))

(assert (= (and d!1533789 c!817014) b!4793722))

(assert (= (and d!1533789 (not c!817014)) b!4793723))

(assert (=> b!4793724 m!5774464))

(declare-fun m!5774710 () Bool)

(assert (=> b!4793722 m!5774710))

(assert (=> b!4793722 m!5774710))

(declare-fun m!5774712 () Bool)

(assert (=> b!4793722 m!5774712))

(declare-fun m!5774714 () Bool)

(assert (=> b!4793723 m!5774714))

(assert (=> b!4793534 d!1533789))

(declare-fun d!1533791 () Bool)

(declare-fun hash!4967 (Hashable!6928 K!15809) (_ BitVec 64))

(assert (=> d!1533791 (= (hash!4965 hashF!1559 key!5896) (hash!4967 hashF!1559 key!5896))))

(declare-fun bs!1155020 () Bool)

(assert (= bs!1155020 d!1533791))

(declare-fun m!5774716 () Bool)

(assert (=> bs!1155020 m!5774716))

(assert (=> b!4793534 d!1533791))

(declare-fun bs!1155021 () Bool)

(declare-fun d!1533793 () Bool)

(assert (= bs!1155021 (and d!1533793 b!4793532)))

(declare-fun lambda!230826 () Int)

(assert (=> bs!1155021 (= lambda!230826 lambda!230802)))

(declare-fun bs!1155022 () Bool)

(assert (= bs!1155022 (and d!1533793 d!1533723)))

(assert (=> bs!1155022 (= lambda!230826 lambda!230808)))

(declare-fun bs!1155023 () Bool)

(assert (= bs!1155023 (and d!1533793 start!493794)))

(assert (=> bs!1155023 (not (= lambda!230826 lambda!230801))))

(declare-fun bs!1155024 () Bool)

(assert (= bs!1155024 (and d!1533793 d!1533783)))

(assert (=> bs!1155024 (not (= lambda!230826 lambda!230822))))

(declare-fun bs!1155025 () Bool)

(assert (= bs!1155025 (and d!1533793 d!1533757)))

(assert (=> bs!1155025 (not (= lambda!230826 lambda!230819))))

(declare-fun bs!1155026 () Bool)

(assert (= bs!1155026 (and d!1533793 d!1533785)))

(assert (=> bs!1155026 (not (= lambda!230826 lambda!230825))))

(assert (=> d!1533793 true))

(assert (=> d!1533793 (= (allKeysSameHashInMap!2333 lt!1951801 hashF!1559) (forall!12261 (toList!6935 lt!1951801) lambda!230826))))

(declare-fun bs!1155027 () Bool)

(assert (= bs!1155027 d!1533793))

(declare-fun m!5774718 () Bool)

(assert (=> bs!1155027 m!5774718))

(assert (=> b!4793528 d!1533793))

(declare-fun d!1533795 () Bool)

(declare-fun res!2037745 () Bool)

(declare-fun e!2993195 () Bool)

(assert (=> d!1533795 (=> res!2037745 e!2993195)))

(assert (=> d!1533795 (= res!2037745 (and ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))) (= (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))) key!5896)))))

(assert (=> d!1533795 (= (containsKey!3956 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896) e!2993195)))

(declare-fun b!4793729 () Bool)

(declare-fun e!2993196 () Bool)

(assert (=> b!4793729 (= e!2993195 e!2993196)))

(declare-fun res!2037746 () Bool)

(assert (=> b!4793729 (=> (not res!2037746) (not e!2993196))))

(assert (=> b!4793729 (= res!2037746 ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(declare-fun b!4793730 () Bool)

(assert (=> b!4793730 (= e!2993196 (containsKey!3956 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) key!5896))))

(assert (= (and d!1533795 (not res!2037745)) b!4793729))

(assert (= (and b!4793729 res!2037746) b!4793730))

(declare-fun m!5774720 () Bool)

(assert (=> b!4793730 m!5774720))

(assert (=> b!4793530 d!1533795))

(declare-fun d!1533797 () Bool)

(declare-fun isEmpty!29455 (Option!13105) Bool)

(assert (=> d!1533797 (= (isDefined!10247 (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896)) (not (isEmpty!29455 (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896))))))

(declare-fun bs!1155028 () Bool)

(assert (= bs!1155028 d!1533797))

(assert (=> bs!1155028 m!5774486))

(declare-fun m!5774722 () Bool)

(assert (=> bs!1155028 m!5774722))

(assert (=> b!4793529 d!1533797))

(declare-fun e!2993216 () Option!13105)

(declare-fun b!4793758 () Bool)

(assert (=> b!4793758 (= e!2993216 (getPair!900 (t!361806 (apply!12997 lm!2473 lt!1951802)) key!5896))))

(declare-fun e!2993215 () Bool)

(declare-fun b!4793759 () Bool)

(assert (=> b!4793759 (= e!2993215 (not (containsKey!3956 (apply!12997 lm!2473 lt!1951802) key!5896)))))

(declare-fun b!4793760 () Bool)

(declare-fun e!2993214 () Bool)

(declare-fun e!2993213 () Bool)

(assert (=> b!4793760 (= e!2993214 e!2993213)))

(declare-fun res!2037758 () Bool)

(assert (=> b!4793760 (=> (not res!2037758) (not e!2993213))))

(declare-fun lt!1951921 () Option!13105)

(assert (=> b!4793760 (= res!2037758 (isDefined!10247 lt!1951921))))

(declare-fun d!1533799 () Bool)

(assert (=> d!1533799 e!2993214))

(declare-fun res!2037757 () Bool)

(assert (=> d!1533799 (=> res!2037757 e!2993214)))

(assert (=> d!1533799 (= res!2037757 e!2993215)))

(declare-fun res!2037755 () Bool)

(assert (=> d!1533799 (=> (not res!2037755) (not e!2993215))))

(assert (=> d!1533799 (= res!2037755 (isEmpty!29455 lt!1951921))))

(declare-fun e!2993217 () Option!13105)

(assert (=> d!1533799 (= lt!1951921 e!2993217)))

(declare-fun c!817023 () Bool)

(assert (=> d!1533799 (= c!817023 (and ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802)) (= (_1!31734 (h!60660 (apply!12997 lm!2473 lt!1951802))) key!5896)))))

(declare-fun noDuplicateKeys!2341 (List!54356) Bool)

(assert (=> d!1533799 (noDuplicateKeys!2341 (apply!12997 lm!2473 lt!1951802))))

(assert (=> d!1533799 (= (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896) lt!1951921)))

(declare-fun b!4793761 () Bool)

(assert (=> b!4793761 (= e!2993217 e!2993216)))

(declare-fun c!817022 () Bool)

(assert (=> b!4793761 (= c!817022 ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802)))))

(declare-fun b!4793762 () Bool)

(declare-fun res!2037756 () Bool)

(assert (=> b!4793762 (=> (not res!2037756) (not e!2993213))))

(assert (=> b!4793762 (= res!2037756 (= (_1!31734 (get!18488 lt!1951921)) key!5896))))

(declare-fun b!4793763 () Bool)

(assert (=> b!4793763 (= e!2993217 (Some!13104 (h!60660 (apply!12997 lm!2473 lt!1951802))))))

(declare-fun b!4793764 () Bool)

(assert (=> b!4793764 (= e!2993213 (contains!17856 (apply!12997 lm!2473 lt!1951802) (get!18488 lt!1951921)))))

(declare-fun b!4793765 () Bool)

(assert (=> b!4793765 (= e!2993216 None!13104)))

(assert (= (and d!1533799 c!817023) b!4793763))

(assert (= (and d!1533799 (not c!817023)) b!4793761))

(assert (= (and b!4793761 c!817022) b!4793758))

(assert (= (and b!4793761 (not c!817022)) b!4793765))

(assert (= (and d!1533799 res!2037755) b!4793759))

(assert (= (and d!1533799 (not res!2037757)) b!4793760))

(assert (= (and b!4793760 res!2037758) b!4793762))

(assert (= (and b!4793762 res!2037756) b!4793764))

(declare-fun m!5774740 () Bool)

(assert (=> b!4793758 m!5774740))

(declare-fun m!5774742 () Bool)

(assert (=> d!1533799 m!5774742))

(assert (=> d!1533799 m!5774484))

(declare-fun m!5774744 () Bool)

(assert (=> d!1533799 m!5774744))

(declare-fun m!5774746 () Bool)

(assert (=> b!4793762 m!5774746))

(assert (=> b!4793764 m!5774746))

(assert (=> b!4793764 m!5774484))

(assert (=> b!4793764 m!5774746))

(declare-fun m!5774748 () Bool)

(assert (=> b!4793764 m!5774748))

(assert (=> b!4793759 m!5774484))

(declare-fun m!5774750 () Bool)

(assert (=> b!4793759 m!5774750))

(declare-fun m!5774752 () Bool)

(assert (=> b!4793760 m!5774752))

(assert (=> b!4793529 d!1533799))

(declare-fun d!1533809 () Bool)

(declare-fun get!18489 (Option!13106) List!54356)

(assert (=> d!1533809 (= (apply!12997 lm!2473 lt!1951802) (get!18489 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802)))))

(declare-fun bs!1155039 () Bool)

(assert (= bs!1155039 d!1533809))

(assert (=> bs!1155039 m!5774668))

(assert (=> bs!1155039 m!5774668))

(declare-fun m!5774754 () Bool)

(assert (=> bs!1155039 m!5774754))

(assert (=> b!4793529 d!1533809))

(declare-fun b!4793770 () Bool)

(declare-fun e!2993220 () Bool)

(declare-fun tp!1358081 () Bool)

(declare-fun tp!1358082 () Bool)

(assert (=> b!4793770 (= e!2993220 (and tp!1358081 tp!1358082))))

(assert (=> b!4793531 (= tp!1358070 e!2993220)))

(assert (= (and b!4793531 ((_ is Cons!54233) (toList!6935 lm!2473))) b!4793770))

(declare-fun b_lambda!186835 () Bool)

(assert (= b_lambda!186823 (or b!4793532 b_lambda!186835)))

(declare-fun bs!1155040 () Bool)

(declare-fun d!1533811 () Bool)

(assert (= bs!1155040 (and d!1533811 b!4793532)))

(assert (=> bs!1155040 (= (dynLambda!22064 lambda!230803 (tuple2!56881 key!5896 value!3111)) (= (hash!4965 hashF!1559 (_1!31734 (tuple2!56881 key!5896 value!3111))) (_1!31735 (h!60661 (toList!6935 lm!2473)))))))

(declare-fun m!5774756 () Bool)

(assert (=> bs!1155040 m!5774756))

(assert (=> d!1533775 d!1533811))

(declare-fun b_lambda!186837 () Bool)

(assert (= b_lambda!186825 (or b!4793532 b_lambda!186837)))

(declare-fun bs!1155041 () Bool)

(declare-fun d!1533813 () Bool)

(assert (= bs!1155041 (and d!1533813 b!4793532)))

(declare-fun allKeysSameHash!1959 (List!54356 (_ BitVec 64) Hashable!6928) Bool)

(assert (=> bs!1155041 (= (dynLambda!22061 lambda!230802 (h!60661 (toList!6935 lm!2473))) (allKeysSameHash!1959 (_2!31735 (h!60661 (toList!6935 lm!2473))) (_1!31735 (h!60661 (toList!6935 lm!2473))) hashF!1559))))

(declare-fun m!5774758 () Bool)

(assert (=> bs!1155041 m!5774758))

(assert (=> d!1533777 d!1533813))

(declare-fun b_lambda!186839 () Bool)

(assert (= b_lambda!186811 (or start!493794 b_lambda!186839)))

(declare-fun bs!1155042 () Bool)

(declare-fun d!1533815 () Bool)

(assert (= bs!1155042 (and d!1533815 start!493794)))

(assert (=> bs!1155042 (= (dynLambda!22061 lambda!230801 (h!60661 (toList!6935 lm!2473))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(declare-fun m!5774760 () Bool)

(assert (=> bs!1155042 m!5774760))

(assert (=> b!4793575 d!1533815))

(declare-fun b_lambda!186841 () Bool)

(assert (= b_lambda!186821 (or start!493794 b_lambda!186841)))

(declare-fun bs!1155043 () Bool)

(declare-fun d!1533817 () Bool)

(assert (= bs!1155043 (and d!1533817 start!493794)))

(assert (=> bs!1155043 (= (dynLambda!22061 lambda!230801 (h!60661 (toList!6935 lt!1951801))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lt!1951801)))))))

(declare-fun m!5774762 () Bool)

(assert (=> bs!1155043 m!5774762))

(assert (=> b!4793666 d!1533817))

(check-sat (not bs!1155042) (not b!4793621) (not d!1533791) (not d!1533723) (not d!1533725) (not bs!1155043) (not b!4793685) (not d!1533737) (not b!4793673) (not b!4793758) (not bs!1155040) (not d!1533797) (not d!1533775) (not b!4793628) (not d!1533735) (not bm!335062) (not b!4793683) (not b!4793661) tp_is_empty!33573 (not d!1533799) (not b!4793722) (not b_lambda!186837) (not b!4793670) (not b!4793624) (not b!4793570) (not b!4793622) (not d!1533773) (not b!4793762) (not bs!1155041) (not b!4793620) (not d!1533777) (not b!4793626) (not b_lambda!186835) (not d!1533779) (not d!1533757) (not b_lambda!186841) (not d!1533809) (not b!4793715) (not b!4793770) (not d!1533785) (not d!1533793) (not b!4793576) (not b!4793623) (not b!4793568) (not b!4793676) (not b!4793764) (not b!4793730) (not b!4793674) (not b!4793760) (not b!4793759) (not b_lambda!186839) (not b!4793723) tp_is_empty!33575 (not b!4793667) (not d!1533783) (not b!4793724))
(check-sat)
(get-model)

(declare-fun bs!1155044 () Bool)

(declare-fun d!1533819 () Bool)

(assert (= bs!1155044 (and d!1533819 b!4793532)))

(declare-fun lambda!230832 () Int)

(assert (=> bs!1155044 (= lambda!230832 lambda!230803)))

(assert (=> d!1533819 true))

(assert (=> d!1533819 true))

(assert (=> d!1533819 (= (allKeysSameHash!1959 (_2!31735 (h!60661 (toList!6935 lm!2473))) (_1!31735 (h!60661 (toList!6935 lm!2473))) hashF!1559) (forall!12263 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230832))))

(declare-fun bs!1155045 () Bool)

(assert (= bs!1155045 d!1533819))

(declare-fun m!5774764 () Bool)

(assert (=> bs!1155045 m!5774764))

(assert (=> bs!1155041 d!1533819))

(declare-fun d!1533821 () Bool)

(declare-fun res!2037763 () Bool)

(declare-fun e!2993225 () Bool)

(assert (=> d!1533821 (=> res!2037763 e!2993225)))

(assert (=> d!1533821 (= res!2037763 (and ((_ is Cons!54233) (toList!6935 lm!2473)) (= (_1!31735 (h!60661 (toList!6935 lm!2473))) lt!1951802)))))

(assert (=> d!1533821 (= (containsKey!3957 (toList!6935 lm!2473) lt!1951802) e!2993225)))

(declare-fun b!4793777 () Bool)

(declare-fun e!2993226 () Bool)

(assert (=> b!4793777 (= e!2993225 e!2993226)))

(declare-fun res!2037764 () Bool)

(assert (=> b!4793777 (=> (not res!2037764) (not e!2993226))))

(assert (=> b!4793777 (= res!2037764 (and (or (not ((_ is Cons!54233) (toList!6935 lm!2473))) (bvsle (_1!31735 (h!60661 (toList!6935 lm!2473))) lt!1951802)) ((_ is Cons!54233) (toList!6935 lm!2473)) (bvslt (_1!31735 (h!60661 (toList!6935 lm!2473))) lt!1951802)))))

(declare-fun b!4793778 () Bool)

(assert (=> b!4793778 (= e!2993226 (containsKey!3957 (t!361807 (toList!6935 lm!2473)) lt!1951802))))

(assert (= (and d!1533821 (not res!2037763)) b!4793777))

(assert (= (and b!4793777 res!2037764) b!4793778))

(declare-fun m!5774766 () Bool)

(assert (=> b!4793778 m!5774766))

(assert (=> d!1533779 d!1533821))

(declare-fun d!1533823 () Bool)

(declare-fun res!2037769 () Bool)

(declare-fun e!2993231 () Bool)

(assert (=> d!1533823 (=> res!2037769 e!2993231)))

(assert (=> d!1533823 (= res!2037769 (and ((_ is Cons!54232) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (= (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) key!5896)))))

(assert (=> d!1533823 (= (containsKey!3959 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896) e!2993231)))

(declare-fun b!4793783 () Bool)

(declare-fun e!2993232 () Bool)

(assert (=> b!4793783 (= e!2993231 e!2993232)))

(declare-fun res!2037770 () Bool)

(assert (=> b!4793783 (=> (not res!2037770) (not e!2993232))))

(assert (=> b!4793783 (= res!2037770 ((_ is Cons!54232) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))

(declare-fun b!4793784 () Bool)

(assert (=> b!4793784 (= e!2993232 (containsKey!3959 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) key!5896))))

(assert (= (and d!1533823 (not res!2037769)) b!4793783))

(assert (= (and b!4793783 res!2037770) b!4793784))

(declare-fun m!5774768 () Bool)

(assert (=> b!4793784 m!5774768))

(assert (=> d!1533737 d!1533823))

(declare-fun d!1533825 () Bool)

(declare-fun lt!1951924 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9711 (List!54358) (InoxSet K!15809))

(assert (=> d!1533825 (= lt!1951924 (select (content!9711 (keys!19804 (extractMap!2455 (toList!6935 lm!2473)))) key!5896))))

(declare-fun e!2993238 () Bool)

(assert (=> d!1533825 (= lt!1951924 e!2993238)))

(declare-fun res!2037776 () Bool)

(assert (=> d!1533825 (=> (not res!2037776) (not e!2993238))))

(assert (=> d!1533825 (= res!2037776 ((_ is Cons!54234) (keys!19804 (extractMap!2455 (toList!6935 lm!2473)))))))

(assert (=> d!1533825 (= (contains!17853 (keys!19804 (extractMap!2455 (toList!6935 lm!2473))) key!5896) lt!1951924)))

(declare-fun b!4793789 () Bool)

(declare-fun e!2993237 () Bool)

(assert (=> b!4793789 (= e!2993238 e!2993237)))

(declare-fun res!2037775 () Bool)

(assert (=> b!4793789 (=> res!2037775 e!2993237)))

(assert (=> b!4793789 (= res!2037775 (= (h!60662 (keys!19804 (extractMap!2455 (toList!6935 lm!2473)))) key!5896))))

(declare-fun b!4793790 () Bool)

(assert (=> b!4793790 (= e!2993237 (contains!17853 (t!361808 (keys!19804 (extractMap!2455 (toList!6935 lm!2473)))) key!5896))))

(assert (= (and d!1533825 res!2037776) b!4793789))

(assert (= (and b!4793789 (not res!2037775)) b!4793790))

(assert (=> d!1533825 m!5774586))

(declare-fun m!5774770 () Bool)

(assert (=> d!1533825 m!5774770))

(declare-fun m!5774772 () Bool)

(assert (=> d!1533825 m!5774772))

(declare-fun m!5774774 () Bool)

(assert (=> b!4793790 m!5774774))

(assert (=> b!4793621 d!1533825))

(declare-fun b!4793798 () Bool)

(assert (=> b!4793798 true))

(declare-fun d!1533827 () Bool)

(declare-fun e!2993241 () Bool)

(assert (=> d!1533827 e!2993241))

(declare-fun res!2037784 () Bool)

(assert (=> d!1533827 (=> (not res!2037784) (not e!2993241))))

(declare-fun lt!1951927 () List!54358)

(declare-fun noDuplicate!920 (List!54358) Bool)

(assert (=> d!1533827 (= res!2037784 (noDuplicate!920 lt!1951927))))

(assert (=> d!1533827 (= lt!1951927 (getKeysList!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))

(assert (=> d!1533827 (= (keys!19804 (extractMap!2455 (toList!6935 lm!2473))) lt!1951927)))

(declare-fun b!4793797 () Bool)

(declare-fun res!2037783 () Bool)

(assert (=> b!4793797 (=> (not res!2037783) (not e!2993241))))

(declare-fun length!696 (List!54358) Int)

(declare-fun length!697 (List!54356) Int)

(assert (=> b!4793797 (= res!2037783 (= (length!696 lt!1951927) (length!697 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))))

(declare-fun res!2037785 () Bool)

(assert (=> b!4793798 (=> (not res!2037785) (not e!2993241))))

(declare-fun lambda!230837 () Int)

(declare-fun forall!12264 (List!54358 Int) Bool)

(assert (=> b!4793798 (= res!2037785 (forall!12264 lt!1951927 lambda!230837))))

(declare-fun b!4793799 () Bool)

(declare-fun lambda!230838 () Int)

(declare-fun map!12245 (List!54356 Int) List!54358)

(assert (=> b!4793799 (= e!2993241 (= (content!9711 lt!1951927) (content!9711 (map!12245 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) lambda!230838))))))

(assert (= (and d!1533827 res!2037784) b!4793797))

(assert (= (and b!4793797 res!2037783) b!4793798))

(assert (= (and b!4793798 res!2037785) b!4793799))

(declare-fun m!5774776 () Bool)

(assert (=> d!1533827 m!5774776))

(assert (=> d!1533827 m!5774594))

(declare-fun m!5774778 () Bool)

(assert (=> b!4793797 m!5774778))

(declare-fun m!5774780 () Bool)

(assert (=> b!4793797 m!5774780))

(declare-fun m!5774782 () Bool)

(assert (=> b!4793798 m!5774782))

(declare-fun m!5774784 () Bool)

(assert (=> b!4793799 m!5774784))

(declare-fun m!5774786 () Bool)

(assert (=> b!4793799 m!5774786))

(assert (=> b!4793799 m!5774786))

(declare-fun m!5774788 () Bool)

(assert (=> b!4793799 m!5774788))

(assert (=> b!4793621 d!1533827))

(assert (=> b!4793623 d!1533825))

(assert (=> b!4793623 d!1533827))

(declare-fun d!1533829 () Bool)

(declare-fun res!2037786 () Bool)

(declare-fun e!2993242 () Bool)

(assert (=> d!1533829 (=> res!2037786 e!2993242)))

(assert (=> d!1533829 (= res!2037786 (and ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802)) (= (_1!31734 (h!60660 (apply!12997 lm!2473 lt!1951802))) key!5896)))))

(assert (=> d!1533829 (= (containsKey!3956 (apply!12997 lm!2473 lt!1951802) key!5896) e!2993242)))

(declare-fun b!4793802 () Bool)

(declare-fun e!2993243 () Bool)

(assert (=> b!4793802 (= e!2993242 e!2993243)))

(declare-fun res!2037787 () Bool)

(assert (=> b!4793802 (=> (not res!2037787) (not e!2993243))))

(assert (=> b!4793802 (= res!2037787 ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802)))))

(declare-fun b!4793803 () Bool)

(assert (=> b!4793803 (= e!2993243 (containsKey!3956 (t!361806 (apply!12997 lm!2473 lt!1951802)) key!5896))))

(assert (= (and d!1533829 (not res!2037786)) b!4793802))

(assert (= (and b!4793802 res!2037787) b!4793803))

(declare-fun m!5774790 () Bool)

(assert (=> b!4793803 m!5774790))

(assert (=> b!4793759 d!1533829))

(declare-fun d!1533831 () Bool)

(declare-fun noDuplicatedKeys!439 (List!54356) Bool)

(assert (=> d!1533831 (= (invariantList!1731 (toList!6936 lt!1951871)) (noDuplicatedKeys!439 (toList!6936 lt!1951871)))))

(declare-fun bs!1155046 () Bool)

(assert (= bs!1155046 d!1533831))

(declare-fun m!5774792 () Bool)

(assert (=> bs!1155046 m!5774792))

(assert (=> d!1533757 d!1533831))

(declare-fun d!1533833 () Bool)

(declare-fun res!2037788 () Bool)

(declare-fun e!2993244 () Bool)

(assert (=> d!1533833 (=> res!2037788 e!2993244)))

(assert (=> d!1533833 (= res!2037788 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533833 (= (forall!12261 (toList!6935 lm!2473) lambda!230819) e!2993244)))

(declare-fun b!4793804 () Bool)

(declare-fun e!2993245 () Bool)

(assert (=> b!4793804 (= e!2993244 e!2993245)))

(declare-fun res!2037789 () Bool)

(assert (=> b!4793804 (=> (not res!2037789) (not e!2993245))))

(assert (=> b!4793804 (= res!2037789 (dynLambda!22061 lambda!230819 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4793805 () Bool)

(assert (=> b!4793805 (= e!2993245 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230819))))

(assert (= (and d!1533833 (not res!2037788)) b!4793804))

(assert (= (and b!4793804 res!2037789) b!4793805))

(declare-fun b_lambda!186843 () Bool)

(assert (=> (not b_lambda!186843) (not b!4793804)))

(declare-fun m!5774794 () Bool)

(assert (=> b!4793804 m!5774794))

(declare-fun m!5774796 () Bool)

(assert (=> b!4793805 m!5774796))

(assert (=> d!1533757 d!1533833))

(declare-fun bs!1155055 () Bool)

(declare-fun b!4793910 () Bool)

(assert (= bs!1155055 (and b!4793910 b!4793532)))

(declare-fun lambda!230876 () Int)

(assert (=> bs!1155055 (not (= lambda!230876 lambda!230803))))

(declare-fun bs!1155056 () Bool)

(assert (= bs!1155056 (and b!4793910 d!1533819)))

(assert (=> bs!1155056 (not (= lambda!230876 lambda!230832))))

(assert (=> b!4793910 true))

(declare-fun bs!1155058 () Bool)

(declare-fun b!4793908 () Bool)

(assert (= bs!1155058 (and b!4793908 b!4793532)))

(declare-fun lambda!230877 () Int)

(assert (=> bs!1155058 (not (= lambda!230877 lambda!230803))))

(declare-fun bs!1155059 () Bool)

(assert (= bs!1155059 (and b!4793908 d!1533819)))

(assert (=> bs!1155059 (not (= lambda!230877 lambda!230832))))

(declare-fun bs!1155060 () Bool)

(assert (= bs!1155060 (and b!4793908 b!4793910)))

(assert (=> bs!1155060 (= lambda!230877 lambda!230876)))

(assert (=> b!4793908 true))

(declare-fun lambda!230878 () Int)

(assert (=> bs!1155058 (not (= lambda!230878 lambda!230803))))

(assert (=> bs!1155059 (not (= lambda!230878 lambda!230832))))

(declare-fun lt!1952002 () ListMap!6407)

(assert (=> bs!1155060 (= (= lt!1952002 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (= lambda!230878 lambda!230876))))

(assert (=> b!4793908 (= (= lt!1952002 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (= lambda!230878 lambda!230877))))

(assert (=> b!4793908 true))

(declare-fun bs!1155061 () Bool)

(declare-fun d!1533835 () Bool)

(assert (= bs!1155061 (and d!1533835 d!1533819)))

(declare-fun lambda!230879 () Int)

(assert (=> bs!1155061 (not (= lambda!230879 lambda!230832))))

(declare-fun bs!1155062 () Bool)

(assert (= bs!1155062 (and d!1533835 b!4793910)))

(declare-fun lt!1952001 () ListMap!6407)

(assert (=> bs!1155062 (= (= lt!1952001 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (= lambda!230879 lambda!230876))))

(declare-fun bs!1155063 () Bool)

(assert (= bs!1155063 (and d!1533835 b!4793908)))

(assert (=> bs!1155063 (= (= lt!1952001 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (= lambda!230879 lambda!230877))))

(assert (=> bs!1155063 (= (= lt!1952001 lt!1952002) (= lambda!230879 lambda!230878))))

(declare-fun bs!1155064 () Bool)

(assert (= bs!1155064 (and d!1533835 b!4793532)))

(assert (=> bs!1155064 (not (= lambda!230879 lambda!230803))))

(assert (=> d!1533835 true))

(declare-fun bm!335072 () Bool)

(declare-fun c!817035 () Bool)

(declare-fun call!335079 () Bool)

(assert (=> bm!335072 (= call!335079 (forall!12263 (ite c!817035 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (_2!31735 (h!60661 (toList!6935 lm!2473)))) (ite c!817035 lambda!230876 lambda!230878)))))

(declare-fun e!2993326 () ListMap!6407)

(assert (=> b!4793908 (= e!2993326 lt!1952002)))

(declare-fun lt!1952004 () ListMap!6407)

(declare-fun +!2487 (ListMap!6407 tuple2!56880) ListMap!6407)

(assert (=> b!4793908 (= lt!1952004 (+!2487 (extractMap!2455 (t!361807 (toList!6935 lm!2473))) (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(assert (=> b!4793908 (= lt!1952002 (addToMapMapFromBucket!1708 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) (+!2487 (extractMap!2455 (t!361807 (toList!6935 lm!2473))) (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))))

(declare-fun lt!1952006 () Unit!140013)

(declare-fun call!335078 () Unit!140013)

(assert (=> b!4793908 (= lt!1952006 call!335078)))

(assert (=> b!4793908 (forall!12263 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) lambda!230877)))

(declare-fun lt!1951999 () Unit!140013)

(assert (=> b!4793908 (= lt!1951999 lt!1952006)))

(assert (=> b!4793908 (forall!12263 (toList!6936 lt!1952004) lambda!230878)))

(declare-fun lt!1952010 () Unit!140013)

(declare-fun Unit!140023 () Unit!140013)

(assert (=> b!4793908 (= lt!1952010 Unit!140023)))

(assert (=> b!4793908 (forall!12263 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) lambda!230878)))

(declare-fun lt!1951992 () Unit!140013)

(declare-fun Unit!140024 () Unit!140013)

(assert (=> b!4793908 (= lt!1951992 Unit!140024)))

(declare-fun lt!1951994 () Unit!140013)

(declare-fun Unit!140025 () Unit!140013)

(assert (=> b!4793908 (= lt!1951994 Unit!140025)))

(declare-fun lt!1952007 () Unit!140013)

(assert (=> b!4793908 (= lt!1952007 (forallContained!4168 (toList!6936 lt!1952004) lambda!230878 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(assert (=> b!4793908 (contains!17852 lt!1952004 (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(declare-fun lt!1952011 () Unit!140013)

(declare-fun Unit!140026 () Unit!140013)

(assert (=> b!4793908 (= lt!1952011 Unit!140026)))

(assert (=> b!4793908 (contains!17852 lt!1952002 (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(declare-fun lt!1951996 () Unit!140013)

(declare-fun Unit!140027 () Unit!140013)

(assert (=> b!4793908 (= lt!1951996 Unit!140027)))

(assert (=> b!4793908 call!335079))

(declare-fun lt!1952003 () Unit!140013)

(declare-fun Unit!140028 () Unit!140013)

(assert (=> b!4793908 (= lt!1952003 Unit!140028)))

(assert (=> b!4793908 (forall!12263 (toList!6936 lt!1952004) lambda!230878)))

(declare-fun lt!1951998 () Unit!140013)

(declare-fun Unit!140029 () Unit!140013)

(assert (=> b!4793908 (= lt!1951998 Unit!140029)))

(declare-fun lt!1952009 () Unit!140013)

(declare-fun Unit!140030 () Unit!140013)

(assert (=> b!4793908 (= lt!1952009 Unit!140030)))

(declare-fun lt!1951993 () Unit!140013)

(declare-fun addForallContainsKeyThenBeforeAdding!942 (ListMap!6407 ListMap!6407 K!15809 V!16055) Unit!140013)

(assert (=> b!4793908 (= lt!1951993 (addForallContainsKeyThenBeforeAdding!942 (extractMap!2455 (t!361807 (toList!6935 lm!2473))) lt!1952002 (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))) (_2!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))))

(assert (=> b!4793908 (forall!12263 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) lambda!230878)))

(declare-fun lt!1951997 () Unit!140013)

(assert (=> b!4793908 (= lt!1951997 lt!1951993)))

(assert (=> b!4793908 (forall!12263 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) lambda!230878)))

(declare-fun lt!1952000 () Unit!140013)

(declare-fun Unit!140031 () Unit!140013)

(assert (=> b!4793908 (= lt!1952000 Unit!140031)))

(declare-fun res!2037866 () Bool)

(assert (=> b!4793908 (= res!2037866 (forall!12263 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230878))))

(declare-fun e!2993325 () Bool)

(assert (=> b!4793908 (=> (not res!2037866) (not e!2993325))))

(assert (=> b!4793908 e!2993325))

(declare-fun lt!1952005 () Unit!140013)

(declare-fun Unit!140032 () Unit!140013)

(assert (=> b!4793908 (= lt!1952005 Unit!140032)))

(declare-fun bm!335074 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!943 (ListMap!6407) Unit!140013)

(assert (=> bm!335074 (= call!335078 (lemmaContainsAllItsOwnKeys!943 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))))))

(declare-fun b!4793909 () Bool)

(declare-fun res!2037867 () Bool)

(declare-fun e!2993324 () Bool)

(assert (=> b!4793909 (=> (not res!2037867) (not e!2993324))))

(assert (=> b!4793909 (= res!2037867 (forall!12263 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) lambda!230879))))

(declare-fun call!335077 () Bool)

(declare-fun bm!335073 () Bool)

(assert (=> bm!335073 (= call!335077 (forall!12263 (toList!6936 (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) (ite c!817035 lambda!230876 lambda!230878)))))

(assert (=> d!1533835 e!2993324))

(declare-fun res!2037868 () Bool)

(assert (=> d!1533835 (=> (not res!2037868) (not e!2993324))))

(assert (=> d!1533835 (= res!2037868 (forall!12263 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230879))))

(assert (=> d!1533835 (= lt!1952001 e!2993326)))

(assert (=> d!1533835 (= c!817035 ((_ is Nil!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> d!1533835 (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473))))))

(assert (=> d!1533835 (= (addToMapMapFromBucket!1708 (_2!31735 (h!60661 (toList!6935 lm!2473))) (extractMap!2455 (t!361807 (toList!6935 lm!2473)))) lt!1952001)))

(assert (=> b!4793910 (= e!2993326 (extractMap!2455 (t!361807 (toList!6935 lm!2473))))))

(declare-fun lt!1952008 () Unit!140013)

(assert (=> b!4793910 (= lt!1952008 call!335078)))

(assert (=> b!4793910 call!335077))

(declare-fun lt!1951995 () Unit!140013)

(assert (=> b!4793910 (= lt!1951995 lt!1952008)))

(assert (=> b!4793910 call!335079))

(declare-fun lt!1951991 () Unit!140013)

(declare-fun Unit!140033 () Unit!140013)

(assert (=> b!4793910 (= lt!1951991 Unit!140033)))

(declare-fun b!4793911 () Bool)

(assert (=> b!4793911 (= e!2993325 call!335077)))

(declare-fun b!4793912 () Bool)

(assert (=> b!4793912 (= e!2993324 (invariantList!1731 (toList!6936 lt!1952001)))))

(assert (= (and d!1533835 c!817035) b!4793910))

(assert (= (and d!1533835 (not c!817035)) b!4793908))

(assert (= (and b!4793908 res!2037866) b!4793911))

(assert (= (or b!4793910 b!4793908) bm!335072))

(assert (= (or b!4793910 b!4793911) bm!335073))

(assert (= (or b!4793910 b!4793908) bm!335074))

(assert (= (and d!1533835 res!2037868) b!4793909))

(assert (= (and b!4793909 res!2037867) b!4793912))

(declare-fun m!5774908 () Bool)

(assert (=> b!4793912 m!5774908))

(declare-fun m!5774910 () Bool)

(assert (=> bm!335073 m!5774910))

(declare-fun m!5774912 () Bool)

(assert (=> bm!335072 m!5774912))

(assert (=> bm!335074 m!5774636))

(declare-fun m!5774914 () Bool)

(assert (=> bm!335074 m!5774914))

(declare-fun m!5774916 () Bool)

(assert (=> b!4793909 m!5774916))

(declare-fun m!5774918 () Bool)

(assert (=> d!1533835 m!5774918))

(assert (=> d!1533835 m!5774760))

(declare-fun m!5774920 () Bool)

(assert (=> b!4793908 m!5774920))

(declare-fun m!5774922 () Bool)

(assert (=> b!4793908 m!5774922))

(declare-fun m!5774924 () Bool)

(assert (=> b!4793908 m!5774924))

(declare-fun m!5774926 () Bool)

(assert (=> b!4793908 m!5774926))

(assert (=> b!4793908 m!5774636))

(declare-fun m!5774928 () Bool)

(assert (=> b!4793908 m!5774928))

(declare-fun m!5774930 () Bool)

(assert (=> b!4793908 m!5774930))

(assert (=> b!4793908 m!5774926))

(declare-fun m!5774932 () Bool)

(assert (=> b!4793908 m!5774932))

(declare-fun m!5774934 () Bool)

(assert (=> b!4793908 m!5774934))

(declare-fun m!5774936 () Bool)

(assert (=> b!4793908 m!5774936))

(assert (=> b!4793908 m!5774636))

(assert (=> b!4793908 m!5774932))

(assert (=> b!4793908 m!5774936))

(declare-fun m!5774938 () Bool)

(assert (=> b!4793908 m!5774938))

(declare-fun m!5774940 () Bool)

(assert (=> b!4793908 m!5774940))

(assert (=> b!4793661 d!1533835))

(declare-fun bs!1155065 () Bool)

(declare-fun d!1533897 () Bool)

(assert (= bs!1155065 (and d!1533897 b!4793532)))

(declare-fun lambda!230880 () Int)

(assert (=> bs!1155065 (not (= lambda!230880 lambda!230802))))

(declare-fun bs!1155066 () Bool)

(assert (= bs!1155066 (and d!1533897 d!1533723)))

(assert (=> bs!1155066 (not (= lambda!230880 lambda!230808))))

(declare-fun bs!1155067 () Bool)

(assert (= bs!1155067 (and d!1533897 start!493794)))

(assert (=> bs!1155067 (= lambda!230880 lambda!230801)))

(declare-fun bs!1155068 () Bool)

(assert (= bs!1155068 (and d!1533897 d!1533783)))

(assert (=> bs!1155068 (= lambda!230880 lambda!230822)))

(declare-fun bs!1155069 () Bool)

(assert (= bs!1155069 (and d!1533897 d!1533757)))

(assert (=> bs!1155069 (= lambda!230880 lambda!230819)))

(declare-fun bs!1155070 () Bool)

(assert (= bs!1155070 (and d!1533897 d!1533793)))

(assert (=> bs!1155070 (not (= lambda!230880 lambda!230826))))

(declare-fun bs!1155071 () Bool)

(assert (= bs!1155071 (and d!1533897 d!1533785)))

(assert (=> bs!1155071 (= lambda!230880 lambda!230825)))

(declare-fun lt!1952017 () ListMap!6407)

(assert (=> d!1533897 (invariantList!1731 (toList!6936 lt!1952017))))

(declare-fun e!2993336 () ListMap!6407)

(assert (=> d!1533897 (= lt!1952017 e!2993336)))

(declare-fun c!817037 () Bool)

(assert (=> d!1533897 (= c!817037 ((_ is Cons!54233) (t!361807 (toList!6935 lm!2473))))))

(assert (=> d!1533897 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230880)))

(assert (=> d!1533897 (= (extractMap!2455 (t!361807 (toList!6935 lm!2473))) lt!1952017)))

(declare-fun b!4793925 () Bool)

(assert (=> b!4793925 (= e!2993336 (addToMapMapFromBucket!1708 (_2!31735 (h!60661 (t!361807 (toList!6935 lm!2473)))) (extractMap!2455 (t!361807 (t!361807 (toList!6935 lm!2473))))))))

(declare-fun b!4793926 () Bool)

(assert (=> b!4793926 (= e!2993336 (ListMap!6408 Nil!54232))))

(assert (= (and d!1533897 c!817037) b!4793925))

(assert (= (and d!1533897 (not c!817037)) b!4793926))

(declare-fun m!5774946 () Bool)

(assert (=> d!1533897 m!5774946))

(declare-fun m!5774948 () Bool)

(assert (=> d!1533897 m!5774948))

(declare-fun m!5774950 () Bool)

(assert (=> b!4793925 m!5774950))

(assert (=> b!4793925 m!5774950))

(declare-fun m!5774952 () Bool)

(assert (=> b!4793925 m!5774952))

(assert (=> b!4793661 d!1533897))

(declare-fun d!1533903 () Bool)

(assert (=> d!1533903 (= (isDefined!10247 (getPair!900 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29455 (getPair!900 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1155072 () Bool)

(assert (= bs!1155072 d!1533903))

(assert (=> bs!1155072 m!5774706))

(declare-fun m!5774954 () Bool)

(assert (=> bs!1155072 m!5774954))

(assert (=> b!4793715 d!1533903))

(declare-fun b!4793931 () Bool)

(declare-fun e!2993341 () Option!13105)

(assert (=> b!4793931 (= e!2993341 (getPair!900 (t!361806 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4793932 () Bool)

(declare-fun e!2993340 () Bool)

(assert (=> b!4793932 (= e!2993340 (not (containsKey!3956 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4793933 () Bool)

(declare-fun e!2993338 () Bool)

(declare-fun e!2993337 () Bool)

(assert (=> b!4793933 (= e!2993338 e!2993337)))

(declare-fun res!2037880 () Bool)

(assert (=> b!4793933 (=> (not res!2037880) (not e!2993337))))

(declare-fun lt!1952018 () Option!13105)

(assert (=> b!4793933 (= res!2037880 (isDefined!10247 lt!1952018))))

(declare-fun d!1533905 () Bool)

(assert (=> d!1533905 e!2993338))

(declare-fun res!2037879 () Bool)

(assert (=> d!1533905 (=> res!2037879 e!2993338)))

(assert (=> d!1533905 (= res!2037879 e!2993340)))

(declare-fun res!2037877 () Bool)

(assert (=> d!1533905 (=> (not res!2037877) (not e!2993340))))

(assert (=> d!1533905 (= res!2037877 (isEmpty!29455 lt!1952018))))

(declare-fun e!2993343 () Option!13105)

(assert (=> d!1533905 (= lt!1952018 e!2993343)))

(declare-fun c!817040 () Bool)

(assert (=> d!1533905 (= c!817040 (and ((_ is Cons!54232) (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896))) (= (_1!31734 (h!60660 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1533905 (noDuplicateKeys!2341 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)))))

(assert (=> d!1533905 (= (getPair!900 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896) lt!1952018)))

(declare-fun b!4793934 () Bool)

(assert (=> b!4793934 (= e!2993343 e!2993341)))

(declare-fun c!817038 () Bool)

(assert (=> b!4793934 (= c!817038 ((_ is Cons!54232) (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896))))))

(declare-fun b!4793935 () Bool)

(declare-fun res!2037878 () Bool)

(assert (=> b!4793935 (=> (not res!2037878) (not e!2993337))))

(assert (=> b!4793935 (= res!2037878 (= (_1!31734 (get!18488 lt!1952018)) key!5896))))

(declare-fun b!4793936 () Bool)

(assert (=> b!4793936 (= e!2993343 (Some!13104 (h!60660 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)))))))

(declare-fun b!4793937 () Bool)

(assert (=> b!4793937 (= e!2993337 (contains!17856 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) (get!18488 lt!1952018)))))

(declare-fun b!4793938 () Bool)

(assert (=> b!4793938 (= e!2993341 None!13104)))

(assert (= (and d!1533905 c!817040) b!4793936))

(assert (= (and d!1533905 (not c!817040)) b!4793934))

(assert (= (and b!4793934 c!817038) b!4793931))

(assert (= (and b!4793934 (not c!817038)) b!4793938))

(assert (= (and d!1533905 res!2037877) b!4793932))

(assert (= (and d!1533905 (not res!2037879)) b!4793933))

(assert (= (and b!4793933 res!2037880) b!4793935))

(assert (= (and b!4793935 res!2037878) b!4793937))

(declare-fun m!5774956 () Bool)

(assert (=> b!4793931 m!5774956))

(declare-fun m!5774958 () Bool)

(assert (=> d!1533905 m!5774958))

(assert (=> d!1533905 m!5774704))

(declare-fun m!5774960 () Bool)

(assert (=> d!1533905 m!5774960))

(declare-fun m!5774962 () Bool)

(assert (=> b!4793935 m!5774962))

(assert (=> b!4793937 m!5774962))

(assert (=> b!4793937 m!5774704))

(assert (=> b!4793937 m!5774962))

(declare-fun m!5774964 () Bool)

(assert (=> b!4793937 m!5774964))

(assert (=> b!4793932 m!5774704))

(declare-fun m!5774966 () Bool)

(assert (=> b!4793932 m!5774966))

(declare-fun m!5774968 () Bool)

(assert (=> b!4793933 m!5774968))

(assert (=> b!4793715 d!1533905))

(declare-fun d!1533907 () Bool)

(assert (=> d!1533907 (= (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) (get!18489 (getValueByKey!2353 (toList!6935 lm!2473) (hash!4965 hashF!1559 key!5896))))))

(declare-fun bs!1155073 () Bool)

(assert (= bs!1155073 d!1533907))

(assert (=> bs!1155073 m!5774476))

(declare-fun m!5774970 () Bool)

(assert (=> bs!1155073 m!5774970))

(assert (=> bs!1155073 m!5774970))

(declare-fun m!5774972 () Bool)

(assert (=> bs!1155073 m!5774972))

(assert (=> b!4793715 d!1533907))

(assert (=> b!4793715 d!1533791))

(declare-fun d!1533909 () Bool)

(declare-fun res!2037891 () Bool)

(declare-fun e!2993359 () Bool)

(assert (=> d!1533909 (=> res!2037891 e!2993359)))

(assert (=> d!1533909 (= res!2037891 (not ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(assert (=> d!1533909 (= (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473)))) e!2993359)))

(declare-fun b!4793961 () Bool)

(declare-fun e!2993360 () Bool)

(assert (=> b!4793961 (= e!2993359 e!2993360)))

(declare-fun res!2037892 () Bool)

(assert (=> b!4793961 (=> (not res!2037892) (not e!2993360))))

(assert (=> b!4793961 (= res!2037892 (not (containsKey!3956 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))))

(declare-fun b!4793962 () Bool)

(assert (=> b!4793962 (= e!2993360 (noDuplicateKeys!2341 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(assert (= (and d!1533909 (not res!2037891)) b!4793961))

(assert (= (and b!4793961 res!2037892) b!4793962))

(declare-fun m!5774992 () Bool)

(assert (=> b!4793961 m!5774992))

(declare-fun m!5774994 () Bool)

(assert (=> b!4793962 m!5774994))

(assert (=> bs!1155042 d!1533909))

(declare-fun d!1533919 () Bool)

(declare-fun c!817048 () Bool)

(declare-fun e!2993362 () Bool)

(assert (=> d!1533919 (= c!817048 e!2993362)))

(declare-fun res!2037893 () Bool)

(assert (=> d!1533919 (=> (not res!2037893) (not e!2993362))))

(assert (=> d!1533919 (= res!2037893 ((_ is Cons!54233) (t!361807 (toList!6935 lm!2473))))))

(declare-fun e!2993361 () V!16055)

(assert (=> d!1533919 (= (getValue!116 (t!361807 (toList!6935 lm!2473)) key!5896) e!2993361)))

(declare-fun b!4793965 () Bool)

(assert (=> b!4793965 (= e!2993362 (containsKey!3956 (_2!31735 (h!60661 (t!361807 (toList!6935 lm!2473)))) key!5896))))

(declare-fun b!4793963 () Bool)

(assert (=> b!4793963 (= e!2993361 (_2!31734 (get!18488 (getPair!900 (_2!31735 (h!60661 (t!361807 (toList!6935 lm!2473)))) key!5896))))))

(declare-fun b!4793964 () Bool)

(assert (=> b!4793964 (= e!2993361 (getValue!116 (t!361807 (t!361807 (toList!6935 lm!2473))) key!5896))))

(assert (= (and d!1533919 res!2037893) b!4793965))

(assert (= (and d!1533919 c!817048) b!4793963))

(assert (= (and d!1533919 (not c!817048)) b!4793964))

(declare-fun m!5774996 () Bool)

(assert (=> b!4793965 m!5774996))

(declare-fun m!5774998 () Bool)

(assert (=> b!4793963 m!5774998))

(assert (=> b!4793963 m!5774998))

(declare-fun m!5775000 () Bool)

(assert (=> b!4793963 m!5775000))

(declare-fun m!5775002 () Bool)

(assert (=> b!4793964 m!5775002))

(assert (=> b!4793723 d!1533919))

(declare-fun bs!1155079 () Bool)

(declare-fun b!4794021 () Bool)

(assert (= bs!1155079 (and b!4794021 b!4793798)))

(declare-fun lambda!230889 () Int)

(assert (=> bs!1155079 (= (= (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (= lambda!230889 lambda!230837))))

(assert (=> b!4794021 true))

(declare-fun bs!1155080 () Bool)

(declare-fun b!4794014 () Bool)

(assert (= bs!1155080 (and b!4794014 b!4793798)))

(declare-fun lambda!230892 () Int)

(assert (=> bs!1155080 (= (= (Cons!54232 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (= lambda!230892 lambda!230837))))

(declare-fun bs!1155081 () Bool)

(assert (= bs!1155081 (and b!4794014 b!4794021)))

(assert (=> bs!1155081 (= (= (Cons!54232 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (= lambda!230892 lambda!230889))))

(assert (=> b!4794014 true))

(declare-fun bs!1155082 () Bool)

(declare-fun b!4794018 () Bool)

(assert (= bs!1155082 (and b!4794018 b!4793798)))

(declare-fun lambda!230893 () Int)

(assert (=> bs!1155082 (= lambda!230893 lambda!230837)))

(declare-fun bs!1155083 () Bool)

(assert (= bs!1155083 (and b!4794018 b!4794021)))

(assert (=> bs!1155083 (= (= (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (= lambda!230893 lambda!230889))))

(declare-fun bs!1155084 () Bool)

(assert (= bs!1155084 (and b!4794018 b!4794014)))

(assert (=> bs!1155084 (= (= (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) (Cons!54232 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))) (= lambda!230893 lambda!230892))))

(assert (=> b!4794018 true))

(declare-fun bs!1155085 () Bool)

(declare-fun b!4794015 () Bool)

(assert (= bs!1155085 (and b!4794015 b!4793799)))

(declare-fun lambda!230894 () Int)

(assert (=> bs!1155085 (= lambda!230894 lambda!230838)))

(declare-fun b!4794013 () Bool)

(declare-fun e!2993394 () Unit!140013)

(declare-fun Unit!140034 () Unit!140013)

(assert (=> b!4794013 (= e!2993394 Unit!140034)))

(declare-fun e!2993391 () List!54358)

(assert (=> b!4794014 (= e!2993391 (Cons!54234 (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (getKeysList!1077 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))))

(declare-fun c!817063 () Bool)

(assert (=> b!4794014 (= c!817063 (containsKey!3959 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))))

(declare-fun lt!1952047 () Unit!140013)

(declare-fun e!2993393 () Unit!140013)

(assert (=> b!4794014 (= lt!1952047 e!2993393)))

(declare-fun c!817065 () Bool)

(assert (=> b!4794014 (= c!817065 (contains!17853 (getKeysList!1077 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))))

(declare-fun lt!1952045 () Unit!140013)

(assert (=> b!4794014 (= lt!1952045 e!2993394)))

(declare-fun lt!1952044 () List!54358)

(assert (=> b!4794014 (= lt!1952044 (getKeysList!1077 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))))

(declare-fun lt!1952043 () Unit!140013)

(declare-fun lemmaForallContainsAddHeadPreserves!335 (List!54356 List!54358 tuple2!56880) Unit!140013)

(assert (=> b!4794014 (= lt!1952043 (lemmaForallContainsAddHeadPreserves!335 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) lt!1952044 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))))

(assert (=> b!4794014 (forall!12264 lt!1952044 lambda!230892)))

(declare-fun lt!1952049 () Unit!140013)

(assert (=> b!4794014 (= lt!1952049 lt!1952043)))

(declare-fun e!2993392 () Bool)

(declare-fun lt!1952046 () List!54358)

(assert (=> b!4794015 (= e!2993392 (= (content!9711 lt!1952046) (content!9711 (map!12245 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) lambda!230894))))))

(declare-fun b!4794016 () Bool)

(declare-fun res!2037914 () Bool)

(assert (=> b!4794016 (=> (not res!2037914) (not e!2993392))))

(assert (=> b!4794016 (= res!2037914 (= (length!696 lt!1952046) (length!697 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))))

(declare-fun b!4794017 () Bool)

(declare-fun Unit!140035 () Unit!140013)

(assert (=> b!4794017 (= e!2993393 Unit!140035)))

(declare-fun res!2037913 () Bool)

(assert (=> b!4794018 (=> (not res!2037913) (not e!2993392))))

(assert (=> b!4794018 (= res!2037913 (forall!12264 lt!1952046 lambda!230893))))

(declare-fun d!1533923 () Bool)

(assert (=> d!1533923 e!2993392))

(declare-fun res!2037915 () Bool)

(assert (=> d!1533923 (=> (not res!2037915) (not e!2993392))))

(assert (=> d!1533923 (= res!2037915 (noDuplicate!920 lt!1952046))))

(assert (=> d!1533923 (= lt!1952046 e!2993391)))

(declare-fun c!817064 () Bool)

(assert (=> d!1533923 (= c!817064 ((_ is Cons!54232) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))

(assert (=> d!1533923 (invariantList!1731 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))

(assert (=> d!1533923 (= (getKeysList!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) lt!1952046)))

(declare-fun b!4794019 () Bool)

(assert (=> b!4794019 false))

(declare-fun Unit!140036 () Unit!140013)

(assert (=> b!4794019 (= e!2993393 Unit!140036)))

(declare-fun b!4794020 () Bool)

(assert (=> b!4794020 (= e!2993391 Nil!54234)))

(assert (=> b!4794021 false))

(declare-fun lt!1952048 () Unit!140013)

(declare-fun forallContained!4170 (List!54358 Int K!15809) Unit!140013)

(assert (=> b!4794021 (= lt!1952048 (forallContained!4170 (getKeysList!1077 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) lambda!230889 (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))))

(declare-fun Unit!140037 () Unit!140013)

(assert (=> b!4794021 (= e!2993394 Unit!140037)))

(assert (= (and d!1533923 c!817064) b!4794014))

(assert (= (and d!1533923 (not c!817064)) b!4794020))

(assert (= (and b!4794014 c!817063) b!4794019))

(assert (= (and b!4794014 (not c!817063)) b!4794017))

(assert (= (and b!4794014 c!817065) b!4794021))

(assert (= (and b!4794014 (not c!817065)) b!4794013))

(assert (= (and d!1533923 res!2037915) b!4794016))

(assert (= (and b!4794016 res!2037914) b!4794018))

(assert (= (and b!4794018 res!2037913) b!4794015))

(declare-fun m!5775040 () Bool)

(assert (=> d!1533923 m!5775040))

(declare-fun m!5775042 () Bool)

(assert (=> d!1533923 m!5775042))

(declare-fun m!5775044 () Bool)

(assert (=> b!4794021 m!5775044))

(assert (=> b!4794021 m!5775044))

(declare-fun m!5775046 () Bool)

(assert (=> b!4794021 m!5775046))

(declare-fun m!5775048 () Bool)

(assert (=> b!4794016 m!5775048))

(assert (=> b!4794016 m!5774780))

(declare-fun m!5775050 () Bool)

(assert (=> b!4794018 m!5775050))

(declare-fun m!5775052 () Bool)

(assert (=> b!4794014 m!5775052))

(assert (=> b!4794014 m!5775044))

(declare-fun m!5775054 () Bool)

(assert (=> b!4794014 m!5775054))

(declare-fun m!5775056 () Bool)

(assert (=> b!4794014 m!5775056))

(assert (=> b!4794014 m!5775044))

(declare-fun m!5775058 () Bool)

(assert (=> b!4794014 m!5775058))

(declare-fun m!5775060 () Bool)

(assert (=> b!4794015 m!5775060))

(declare-fun m!5775062 () Bool)

(assert (=> b!4794015 m!5775062))

(assert (=> b!4794015 m!5775062))

(declare-fun m!5775064 () Bool)

(assert (=> b!4794015 m!5775064))

(assert (=> b!4793628 d!1533923))

(assert (=> b!4793683 d!1533795))

(declare-fun d!1533945 () Bool)

(declare-fun res!2037922 () Bool)

(declare-fun e!2993399 () Bool)

(assert (=> d!1533945 (=> res!2037922 e!2993399)))

(assert (=> d!1533945 (= res!2037922 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533945 (= (forall!12261 (toList!6935 lm!2473) lambda!230808) e!2993399)))

(declare-fun b!4794034 () Bool)

(declare-fun e!2993400 () Bool)

(assert (=> b!4794034 (= e!2993399 e!2993400)))

(declare-fun res!2037923 () Bool)

(assert (=> b!4794034 (=> (not res!2037923) (not e!2993400))))

(assert (=> b!4794034 (= res!2037923 (dynLambda!22061 lambda!230808 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4794035 () Bool)

(assert (=> b!4794035 (= e!2993400 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230808))))

(assert (= (and d!1533945 (not res!2037922)) b!4794034))

(assert (= (and b!4794034 res!2037923) b!4794035))

(declare-fun b_lambda!186865 () Bool)

(assert (=> (not b_lambda!186865) (not b!4794034)))

(declare-fun m!5775066 () Bool)

(assert (=> b!4794034 m!5775066))

(declare-fun m!5775068 () Bool)

(assert (=> b!4794035 m!5775068))

(assert (=> d!1533723 d!1533945))

(declare-fun d!1533947 () Bool)

(assert (=> d!1533947 (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802))))

(declare-fun lt!1952062 () Unit!140013)

(declare-fun choose!34543 (List!54357 (_ BitVec 64)) Unit!140013)

(assert (=> d!1533947 (= lt!1952062 (choose!34543 (toList!6935 lm!2473) lt!1951802))))

(declare-fun e!2993403 () Bool)

(assert (=> d!1533947 e!2993403))

(declare-fun res!2037926 () Bool)

(assert (=> d!1533947 (=> (not res!2037926) (not e!2993403))))

(assert (=> d!1533947 (= res!2037926 (isStrictlySorted!879 (toList!6935 lm!2473)))))

(assert (=> d!1533947 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (toList!6935 lm!2473) lt!1951802) lt!1952062)))

(declare-fun b!4794038 () Bool)

(assert (=> b!4794038 (= e!2993403 (containsKey!3957 (toList!6935 lm!2473) lt!1951802))))

(assert (= (and d!1533947 res!2037926) b!4794038))

(assert (=> d!1533947 m!5774668))

(assert (=> d!1533947 m!5774668))

(assert (=> d!1533947 m!5774670))

(declare-fun m!5775070 () Bool)

(assert (=> d!1533947 m!5775070))

(assert (=> d!1533947 m!5774540))

(assert (=> b!4794038 m!5774664))

(assert (=> b!4793674 d!1533947))

(declare-fun d!1533949 () Bool)

(declare-fun isEmpty!29457 (Option!13106) Bool)

(assert (=> d!1533949 (= (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802)) (not (isEmpty!29457 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802))))))

(declare-fun bs!1155086 () Bool)

(assert (= bs!1155086 d!1533949))

(assert (=> bs!1155086 m!5774668))

(declare-fun m!5775072 () Bool)

(assert (=> bs!1155086 m!5775072))

(assert (=> b!4793674 d!1533949))

(declare-fun d!1533951 () Bool)

(declare-fun c!817075 () Bool)

(assert (=> d!1533951 (= c!817075 (and ((_ is Cons!54233) (toList!6935 lm!2473)) (= (_1!31735 (h!60661 (toList!6935 lm!2473))) lt!1951802)))))

(declare-fun e!2993412 () Option!13106)

(assert (=> d!1533951 (= (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802) e!2993412)))

(declare-fun b!4794061 () Bool)

(declare-fun e!2993413 () Option!13106)

(assert (=> b!4794061 (= e!2993413 None!13105)))

(declare-fun b!4794060 () Bool)

(assert (=> b!4794060 (= e!2993413 (getValueByKey!2353 (t!361807 (toList!6935 lm!2473)) lt!1951802))))

(declare-fun b!4794059 () Bool)

(assert (=> b!4794059 (= e!2993412 e!2993413)))

(declare-fun c!817076 () Bool)

(assert (=> b!4794059 (= c!817076 (and ((_ is Cons!54233) (toList!6935 lm!2473)) (not (= (_1!31735 (h!60661 (toList!6935 lm!2473))) lt!1951802))))))

(declare-fun b!4794058 () Bool)

(assert (=> b!4794058 (= e!2993412 (Some!13105 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (= (and d!1533951 c!817075) b!4794058))

(assert (= (and d!1533951 (not c!817075)) b!4794059))

(assert (= (and b!4794059 c!817076) b!4794060))

(assert (= (and b!4794059 (not c!817076)) b!4794061))

(declare-fun m!5775098 () Bool)

(assert (=> b!4794060 m!5775098))

(assert (=> b!4793674 d!1533951))

(assert (=> b!4793724 d!1533795))

(declare-fun d!1533955 () Bool)

(declare-fun lt!1952072 () Bool)

(declare-fun content!9714 (List!54357) (InoxSet tuple2!56882))

(assert (=> d!1533955 (= lt!1952072 (select (content!9714 (toList!6935 lm!2473)) (h!60661 (toList!6935 lm!2473))))))

(declare-fun e!2993421 () Bool)

(assert (=> d!1533955 (= lt!1952072 e!2993421)))

(declare-fun res!2037936 () Bool)

(assert (=> d!1533955 (=> (not res!2037936) (not e!2993421))))

(assert (=> d!1533955 (= res!2037936 ((_ is Cons!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533955 (= (contains!17857 (toList!6935 lm!2473) (h!60661 (toList!6935 lm!2473))) lt!1952072)))

(declare-fun b!4794068 () Bool)

(declare-fun e!2993420 () Bool)

(assert (=> b!4794068 (= e!2993421 e!2993420)))

(declare-fun res!2037937 () Bool)

(assert (=> b!4794068 (=> res!2037937 e!2993420)))

(assert (=> b!4794068 (= res!2037937 (= (h!60661 (toList!6935 lm!2473)) (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4794069 () Bool)

(assert (=> b!4794069 (= e!2993420 (contains!17857 (t!361807 (toList!6935 lm!2473)) (h!60661 (toList!6935 lm!2473))))))

(assert (= (and d!1533955 res!2037936) b!4794068))

(assert (= (and b!4794068 (not res!2037937)) b!4794069))

(declare-fun m!5775104 () Bool)

(assert (=> d!1533955 m!5775104))

(declare-fun m!5775106 () Bool)

(assert (=> d!1533955 m!5775106))

(declare-fun m!5775108 () Bool)

(assert (=> b!4794069 m!5775108))

(assert (=> b!4793673 d!1533955))

(declare-fun d!1533959 () Bool)

(declare-fun res!2037938 () Bool)

(declare-fun e!2993422 () Bool)

(assert (=> d!1533959 (=> res!2037938 e!2993422)))

(assert (=> d!1533959 (= res!2037938 (not ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lt!1951801))))))))

(assert (=> d!1533959 (= (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lt!1951801)))) e!2993422)))

(declare-fun b!4794070 () Bool)

(declare-fun e!2993423 () Bool)

(assert (=> b!4794070 (= e!2993422 e!2993423)))

(declare-fun res!2037939 () Bool)

(assert (=> b!4794070 (=> (not res!2037939) (not e!2993423))))

(assert (=> b!4794070 (= res!2037939 (not (containsKey!3956 (t!361806 (_2!31735 (h!60661 (toList!6935 lt!1951801)))) (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lt!1951801))))))))))

(declare-fun b!4794071 () Bool)

(assert (=> b!4794071 (= e!2993423 (noDuplicateKeys!2341 (t!361806 (_2!31735 (h!60661 (toList!6935 lt!1951801))))))))

(assert (= (and d!1533959 (not res!2037938)) b!4794070))

(assert (= (and b!4794070 res!2037939) b!4794071))

(declare-fun m!5775110 () Bool)

(assert (=> b!4794070 m!5775110))

(declare-fun m!5775112 () Bool)

(assert (=> b!4794071 m!5775112))

(assert (=> bs!1155043 d!1533959))

(assert (=> b!4793676 d!1533949))

(assert (=> b!4793676 d!1533951))

(declare-fun d!1533961 () Bool)

(assert (=> d!1533961 (isDefined!10248 (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802))))

(declare-fun lt!1952073 () Unit!140013)

(assert (=> d!1533961 (= lt!1952073 (choose!34543 (toList!6935 lt!1951801) lt!1951802))))

(declare-fun e!2993424 () Bool)

(assert (=> d!1533961 e!2993424))

(declare-fun res!2037940 () Bool)

(assert (=> d!1533961 (=> (not res!2037940) (not e!2993424))))

(assert (=> d!1533961 (= res!2037940 (isStrictlySorted!879 (toList!6935 lt!1951801)))))

(assert (=> d!1533961 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (toList!6935 lt!1951801) lt!1951802) lt!1952073)))

(declare-fun b!4794072 () Bool)

(assert (=> b!4794072 (= e!2993424 (containsKey!3957 (toList!6935 lt!1951801) lt!1951802))))

(assert (= (and d!1533961 res!2037940) b!4794072))

(assert (=> d!1533961 m!5774532))

(assert (=> d!1533961 m!5774532))

(assert (=> d!1533961 m!5774534))

(declare-fun m!5775114 () Bool)

(assert (=> d!1533961 m!5775114))

(declare-fun m!5775116 () Bool)

(assert (=> d!1533961 m!5775116))

(assert (=> b!4794072 m!5774528))

(assert (=> b!4793568 d!1533961))

(declare-fun d!1533963 () Bool)

(assert (=> d!1533963 (= (isDefined!10248 (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802)) (not (isEmpty!29457 (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802))))))

(declare-fun bs!1155094 () Bool)

(assert (= bs!1155094 d!1533963))

(assert (=> bs!1155094 m!5774532))

(declare-fun m!5775118 () Bool)

(assert (=> bs!1155094 m!5775118))

(assert (=> b!4793568 d!1533963))

(declare-fun d!1533965 () Bool)

(declare-fun c!817077 () Bool)

(assert (=> d!1533965 (= c!817077 (and ((_ is Cons!54233) (toList!6935 lt!1951801)) (= (_1!31735 (h!60661 (toList!6935 lt!1951801))) lt!1951802)))))

(declare-fun e!2993425 () Option!13106)

(assert (=> d!1533965 (= (getValueByKey!2353 (toList!6935 lt!1951801) lt!1951802) e!2993425)))

(declare-fun b!4794076 () Bool)

(declare-fun e!2993426 () Option!13106)

(assert (=> b!4794076 (= e!2993426 None!13105)))

(declare-fun b!4794075 () Bool)

(assert (=> b!4794075 (= e!2993426 (getValueByKey!2353 (t!361807 (toList!6935 lt!1951801)) lt!1951802))))

(declare-fun b!4794074 () Bool)

(assert (=> b!4794074 (= e!2993425 e!2993426)))

(declare-fun c!817078 () Bool)

(assert (=> b!4794074 (= c!817078 (and ((_ is Cons!54233) (toList!6935 lt!1951801)) (not (= (_1!31735 (h!60661 (toList!6935 lt!1951801))) lt!1951802))))))

(declare-fun b!4794073 () Bool)

(assert (=> b!4794073 (= e!2993425 (Some!13105 (_2!31735 (h!60661 (toList!6935 lt!1951801)))))))

(assert (= (and d!1533965 c!817077) b!4794073))

(assert (= (and d!1533965 (not c!817077)) b!4794074))

(assert (= (and b!4794074 c!817078) b!4794075))

(assert (= (and b!4794074 (not c!817078)) b!4794076))

(declare-fun m!5775120 () Bool)

(assert (=> b!4794075 m!5775120))

(assert (=> b!4793568 d!1533965))

(declare-fun d!1533967 () Bool)

(declare-fun res!2037945 () Bool)

(declare-fun e!2993431 () Bool)

(assert (=> d!1533967 (=> res!2037945 e!2993431)))

(assert (=> d!1533967 (= res!2037945 (or ((_ is Nil!54233) (toList!6935 lm!2473)) ((_ is Nil!54233) (t!361807 (toList!6935 lm!2473)))))))

(assert (=> d!1533967 (= (isStrictlySorted!879 (toList!6935 lm!2473)) e!2993431)))

(declare-fun b!4794081 () Bool)

(declare-fun e!2993432 () Bool)

(assert (=> b!4794081 (= e!2993431 e!2993432)))

(declare-fun res!2037946 () Bool)

(assert (=> b!4794081 (=> (not res!2037946) (not e!2993432))))

(assert (=> b!4794081 (= res!2037946 (bvslt (_1!31735 (h!60661 (toList!6935 lm!2473))) (_1!31735 (h!60661 (t!361807 (toList!6935 lm!2473))))))))

(declare-fun b!4794082 () Bool)

(assert (=> b!4794082 (= e!2993432 (isStrictlySorted!879 (t!361807 (toList!6935 lm!2473))))))

(assert (= (and d!1533967 (not res!2037945)) b!4794081))

(assert (= (and b!4794081 res!2037946) b!4794082))

(declare-fun m!5775122 () Bool)

(assert (=> b!4794082 m!5775122))

(assert (=> d!1533735 d!1533967))

(declare-fun d!1533969 () Bool)

(assert (=> d!1533969 (dynLambda!22061 lambda!230802 (h!60661 (toList!6935 lm!2473)))))

(assert (=> d!1533969 true))

(declare-fun _$7!2413 () Unit!140013)

(assert (=> d!1533969 (= (choose!34539 (toList!6935 lm!2473) lambda!230802 (h!60661 (toList!6935 lm!2473))) _$7!2413)))

(declare-fun b_lambda!186867 () Bool)

(assert (=> (not b_lambda!186867) (not d!1533969)))

(declare-fun bs!1155095 () Bool)

(assert (= bs!1155095 d!1533969))

(assert (=> bs!1155095 m!5774656))

(assert (=> d!1533777 d!1533969))

(declare-fun d!1533971 () Bool)

(declare-fun res!2037947 () Bool)

(declare-fun e!2993433 () Bool)

(assert (=> d!1533971 (=> res!2037947 e!2993433)))

(assert (=> d!1533971 (= res!2037947 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1533971 (= (forall!12261 (toList!6935 lm!2473) lambda!230802) e!2993433)))

(declare-fun b!4794083 () Bool)

(declare-fun e!2993434 () Bool)

(assert (=> b!4794083 (= e!2993433 e!2993434)))

(declare-fun res!2037948 () Bool)

(assert (=> b!4794083 (=> (not res!2037948) (not e!2993434))))

(assert (=> b!4794083 (= res!2037948 (dynLambda!22061 lambda!230802 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4794084 () Bool)

(assert (=> b!4794084 (= e!2993434 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230802))))

(assert (= (and d!1533971 (not res!2037947)) b!4794083))

(assert (= (and b!4794083 res!2037948) b!4794084))

(declare-fun b_lambda!186869 () Bool)

(assert (=> (not b_lambda!186869) (not b!4794083)))

(assert (=> b!4794083 m!5774656))

(declare-fun m!5775124 () Bool)

(assert (=> b!4794084 m!5775124))

(assert (=> d!1533777 d!1533971))

(declare-fun d!1533973 () Bool)

(assert (=> d!1533973 (= (isEmpty!29455 lt!1951921) (not ((_ is Some!13104) lt!1951921)))))

(assert (=> d!1533799 d!1533973))

(declare-fun d!1533975 () Bool)

(declare-fun res!2037949 () Bool)

(declare-fun e!2993435 () Bool)

(assert (=> d!1533975 (=> res!2037949 e!2993435)))

(assert (=> d!1533975 (= res!2037949 (not ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802))))))

(assert (=> d!1533975 (= (noDuplicateKeys!2341 (apply!12997 lm!2473 lt!1951802)) e!2993435)))

(declare-fun b!4794085 () Bool)

(declare-fun e!2993436 () Bool)

(assert (=> b!4794085 (= e!2993435 e!2993436)))

(declare-fun res!2037950 () Bool)

(assert (=> b!4794085 (=> (not res!2037950) (not e!2993436))))

(assert (=> b!4794085 (= res!2037950 (not (containsKey!3956 (t!361806 (apply!12997 lm!2473 lt!1951802)) (_1!31734 (h!60660 (apply!12997 lm!2473 lt!1951802))))))))

(declare-fun b!4794086 () Bool)

(assert (=> b!4794086 (= e!2993436 (noDuplicateKeys!2341 (t!361806 (apply!12997 lm!2473 lt!1951802))))))

(assert (= (and d!1533975 (not res!2037949)) b!4794085))

(assert (= (and b!4794085 res!2037950) b!4794086))

(declare-fun m!5775126 () Bool)

(assert (=> b!4794085 m!5775126))

(declare-fun m!5775128 () Bool)

(assert (=> b!4794086 m!5775128))

(assert (=> d!1533799 d!1533975))

(assert (=> b!4793570 d!1533963))

(assert (=> b!4793570 d!1533965))

(declare-fun d!1533977 () Bool)

(declare-fun choose!34546 (Hashable!6928 K!15809) (_ BitVec 64))

(assert (=> d!1533977 (= (hash!4967 hashF!1559 key!5896) (choose!34546 hashF!1559 key!5896))))

(declare-fun bs!1155096 () Bool)

(assert (= bs!1155096 d!1533977))

(declare-fun m!5775130 () Bool)

(assert (=> bs!1155096 m!5775130))

(assert (=> d!1533791 d!1533977))

(declare-fun d!1533979 () Bool)

(assert (=> d!1533979 (= (tail!9275 (toList!6935 lm!2473)) (t!361807 (toList!6935 lm!2473)))))

(assert (=> d!1533773 d!1533979))

(declare-fun d!1533981 () Bool)

(assert (=> d!1533981 (isDefined!10250 (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(declare-fun lt!1952076 () Unit!140013)

(declare-fun choose!34547 (List!54356 K!15809) Unit!140013)

(assert (=> d!1533981 (= lt!1952076 (choose!34547 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(assert (=> d!1533981 (invariantList!1731 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))

(assert (=> d!1533981 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2147 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896) lt!1952076)))

(declare-fun bs!1155097 () Bool)

(assert (= bs!1155097 d!1533981))

(assert (=> bs!1155097 m!5774580))

(assert (=> bs!1155097 m!5774580))

(assert (=> bs!1155097 m!5774582))

(declare-fun m!5775132 () Bool)

(assert (=> bs!1155097 m!5775132))

(assert (=> bs!1155097 m!5775042))

(assert (=> b!4793620 d!1533981))

(declare-fun d!1533983 () Bool)

(declare-fun isEmpty!29458 (Option!13108) Bool)

(assert (=> d!1533983 (= (isDefined!10250 (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896)) (not (isEmpty!29458 (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))))

(declare-fun bs!1155098 () Bool)

(assert (= bs!1155098 d!1533983))

(assert (=> bs!1155098 m!5774580))

(declare-fun m!5775134 () Bool)

(assert (=> bs!1155098 m!5775134))

(assert (=> b!4793620 d!1533983))

(declare-fun b!4794097 () Bool)

(declare-fun e!2993442 () Option!13108)

(assert (=> b!4794097 (= e!2993442 (getValueByKey!2355 (t!361806 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) key!5896))))

(declare-fun d!1533985 () Bool)

(declare-fun c!817083 () Bool)

(assert (=> d!1533985 (= c!817083 (and ((_ is Cons!54232) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (= (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) key!5896)))))

(declare-fun e!2993441 () Option!13108)

(assert (=> d!1533985 (= (getValueByKey!2355 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896) e!2993441)))

(declare-fun b!4794096 () Bool)

(assert (=> b!4794096 (= e!2993441 e!2993442)))

(declare-fun c!817084 () Bool)

(assert (=> b!4794096 (= c!817084 (and ((_ is Cons!54232) (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) (not (= (_1!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))) key!5896))))))

(declare-fun b!4794098 () Bool)

(assert (=> b!4794098 (= e!2993442 None!13107)))

(declare-fun b!4794095 () Bool)

(assert (=> b!4794095 (= e!2993441 (Some!13107 (_2!31734 (h!60660 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))))))))

(assert (= (and d!1533985 c!817083) b!4794095))

(assert (= (and d!1533985 (not c!817083)) b!4794096))

(assert (= (and b!4794096 c!817084) b!4794097))

(assert (= (and b!4794096 (not c!817084)) b!4794098))

(declare-fun m!5775136 () Bool)

(assert (=> b!4794097 m!5775136))

(assert (=> b!4793620 d!1533985))

(declare-fun d!1533987 () Bool)

(assert (=> d!1533987 (contains!17853 (getKeysList!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473)))) key!5896)))

(declare-fun lt!1952079 () Unit!140013)

(declare-fun choose!34548 (List!54356 K!15809) Unit!140013)

(assert (=> d!1533987 (= lt!1952079 (choose!34548 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(assert (=> d!1533987 (invariantList!1731 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))

(assert (=> d!1533987 (= (lemmaInListThenGetKeysListContains!1072 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896) lt!1952079)))

(declare-fun bs!1155099 () Bool)

(assert (= bs!1155099 d!1533987))

(assert (=> bs!1155099 m!5774594))

(assert (=> bs!1155099 m!5774594))

(declare-fun m!5775138 () Bool)

(assert (=> bs!1155099 m!5775138))

(declare-fun m!5775140 () Bool)

(assert (=> bs!1155099 m!5775140))

(assert (=> bs!1155099 m!5775042))

(assert (=> b!4793620 d!1533987))

(declare-fun e!2993446 () Option!13105)

(declare-fun b!4794099 () Bool)

(assert (=> b!4794099 (= e!2993446 (getPair!900 (t!361806 (t!361806 (apply!12997 lm!2473 lt!1951802))) key!5896))))

(declare-fun b!4794100 () Bool)

(declare-fun e!2993445 () Bool)

(assert (=> b!4794100 (= e!2993445 (not (containsKey!3956 (t!361806 (apply!12997 lm!2473 lt!1951802)) key!5896)))))

(declare-fun b!4794101 () Bool)

(declare-fun e!2993444 () Bool)

(declare-fun e!2993443 () Bool)

(assert (=> b!4794101 (= e!2993444 e!2993443)))

(declare-fun res!2037954 () Bool)

(assert (=> b!4794101 (=> (not res!2037954) (not e!2993443))))

(declare-fun lt!1952080 () Option!13105)

(assert (=> b!4794101 (= res!2037954 (isDefined!10247 lt!1952080))))

(declare-fun d!1533989 () Bool)

(assert (=> d!1533989 e!2993444))

(declare-fun res!2037953 () Bool)

(assert (=> d!1533989 (=> res!2037953 e!2993444)))

(assert (=> d!1533989 (= res!2037953 e!2993445)))

(declare-fun res!2037951 () Bool)

(assert (=> d!1533989 (=> (not res!2037951) (not e!2993445))))

(assert (=> d!1533989 (= res!2037951 (isEmpty!29455 lt!1952080))))

(declare-fun e!2993447 () Option!13105)

(assert (=> d!1533989 (= lt!1952080 e!2993447)))

(declare-fun c!817086 () Bool)

(assert (=> d!1533989 (= c!817086 (and ((_ is Cons!54232) (t!361806 (apply!12997 lm!2473 lt!1951802))) (= (_1!31734 (h!60660 (t!361806 (apply!12997 lm!2473 lt!1951802)))) key!5896)))))

(assert (=> d!1533989 (noDuplicateKeys!2341 (t!361806 (apply!12997 lm!2473 lt!1951802)))))

(assert (=> d!1533989 (= (getPair!900 (t!361806 (apply!12997 lm!2473 lt!1951802)) key!5896) lt!1952080)))

(declare-fun b!4794102 () Bool)

(assert (=> b!4794102 (= e!2993447 e!2993446)))

(declare-fun c!817085 () Bool)

(assert (=> b!4794102 (= c!817085 ((_ is Cons!54232) (t!361806 (apply!12997 lm!2473 lt!1951802))))))

(declare-fun b!4794103 () Bool)

(declare-fun res!2037952 () Bool)

(assert (=> b!4794103 (=> (not res!2037952) (not e!2993443))))

(assert (=> b!4794103 (= res!2037952 (= (_1!31734 (get!18488 lt!1952080)) key!5896))))

(declare-fun b!4794104 () Bool)

(assert (=> b!4794104 (= e!2993447 (Some!13104 (h!60660 (t!361806 (apply!12997 lm!2473 lt!1951802)))))))

(declare-fun b!4794105 () Bool)

(assert (=> b!4794105 (= e!2993443 (contains!17856 (t!361806 (apply!12997 lm!2473 lt!1951802)) (get!18488 lt!1952080)))))

(declare-fun b!4794106 () Bool)

(assert (=> b!4794106 (= e!2993446 None!13104)))

(assert (= (and d!1533989 c!817086) b!4794104))

(assert (= (and d!1533989 (not c!817086)) b!4794102))

(assert (= (and b!4794102 c!817085) b!4794099))

(assert (= (and b!4794102 (not c!817085)) b!4794106))

(assert (= (and d!1533989 res!2037951) b!4794100))

(assert (= (and d!1533989 (not res!2037953)) b!4794101))

(assert (= (and b!4794101 res!2037954) b!4794103))

(assert (= (and b!4794103 res!2037952) b!4794105))

(declare-fun m!5775142 () Bool)

(assert (=> b!4794099 m!5775142))

(declare-fun m!5775144 () Bool)

(assert (=> d!1533989 m!5775144))

(assert (=> d!1533989 m!5775128))

(declare-fun m!5775146 () Bool)

(assert (=> b!4794103 m!5775146))

(assert (=> b!4794105 m!5775146))

(assert (=> b!4794105 m!5775146))

(declare-fun m!5775148 () Bool)

(assert (=> b!4794105 m!5775148))

(assert (=> b!4794100 m!5774790))

(declare-fun m!5775150 () Bool)

(assert (=> b!4794101 m!5775150))

(assert (=> b!4793758 d!1533989))

(assert (=> b!4793622 d!1533823))

(declare-fun d!1533991 () Bool)

(assert (=> d!1533991 (containsKey!3959 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896)))

(declare-fun lt!1952083 () Unit!140013)

(declare-fun choose!34549 (List!54356 K!15809) Unit!140013)

(assert (=> d!1533991 (= lt!1952083 (choose!34549 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896))))

(assert (=> d!1533991 (invariantList!1731 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))))))

(assert (=> d!1533991 (= (lemmaInGetKeysListThenContainsKey!1077 (toList!6936 (extractMap!2455 (toList!6935 lm!2473))) key!5896) lt!1952083)))

(declare-fun bs!1155100 () Bool)

(assert (= bs!1155100 d!1533991))

(assert (=> bs!1155100 m!5774588))

(declare-fun m!5775152 () Bool)

(assert (=> bs!1155100 m!5775152))

(assert (=> bs!1155100 m!5775042))

(assert (=> b!4793622 d!1533991))

(declare-fun d!1533993 () Bool)

(assert (=> d!1533993 (= (isEmpty!29455 (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896)) (not ((_ is Some!13104) (getPair!900 (apply!12997 lm!2473 lt!1951802) key!5896))))))

(assert (=> d!1533797 d!1533993))

(declare-fun d!1533995 () Bool)

(assert (=> d!1533995 (= (get!18489 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802)) (v!48396 (getValueByKey!2353 (toList!6935 lm!2473) lt!1951802)))))

(assert (=> d!1533809 d!1533995))

(assert (=> d!1533809 d!1533951))

(declare-fun d!1533997 () Bool)

(declare-fun res!2037955 () Bool)

(declare-fun e!2993448 () Bool)

(assert (=> d!1533997 (=> res!2037955 e!2993448)))

(assert (=> d!1533997 (= res!2037955 (and ((_ is Cons!54233) (toList!6935 lt!1951801)) (= (_1!31735 (h!60661 (toList!6935 lt!1951801))) lt!1951802)))))

(assert (=> d!1533997 (= (containsKey!3957 (toList!6935 lt!1951801) lt!1951802) e!2993448)))

(declare-fun b!4794107 () Bool)

(declare-fun e!2993449 () Bool)

(assert (=> b!4794107 (= e!2993448 e!2993449)))

(declare-fun res!2037956 () Bool)

(assert (=> b!4794107 (=> (not res!2037956) (not e!2993449))))

(assert (=> b!4794107 (= res!2037956 (and (or (not ((_ is Cons!54233) (toList!6935 lt!1951801))) (bvsle (_1!31735 (h!60661 (toList!6935 lt!1951801))) lt!1951802)) ((_ is Cons!54233) (toList!6935 lt!1951801)) (bvslt (_1!31735 (h!60661 (toList!6935 lt!1951801))) lt!1951802)))))

(declare-fun b!4794108 () Bool)

(assert (=> b!4794108 (= e!2993449 (containsKey!3957 (t!361807 (toList!6935 lt!1951801)) lt!1951802))))

(assert (= (and d!1533997 (not res!2037955)) b!4794107))

(assert (= (and b!4794107 res!2037956) b!4794108))

(declare-fun m!5775154 () Bool)

(assert (=> b!4794108 m!5775154))

(assert (=> d!1533725 d!1533997))

(declare-fun d!1533999 () Bool)

(declare-fun lt!1952086 () Bool)

(declare-fun content!9716 (List!54356) (InoxSet tuple2!56880))

(assert (=> d!1533999 (= lt!1952086 (select (content!9716 (_2!31735 (h!60661 (toList!6935 lm!2473)))) (tuple2!56881 key!5896 value!3111)))))

(declare-fun e!2993455 () Bool)

(assert (=> d!1533999 (= lt!1952086 e!2993455)))

(declare-fun res!2037961 () Bool)

(assert (=> d!1533999 (=> (not res!2037961) (not e!2993455))))

(assert (=> d!1533999 (= res!2037961 ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> d!1533999 (= (contains!17856 (_2!31735 (h!60661 (toList!6935 lm!2473))) (tuple2!56881 key!5896 value!3111)) lt!1952086)))

(declare-fun b!4794113 () Bool)

(declare-fun e!2993454 () Bool)

(assert (=> b!4794113 (= e!2993455 e!2993454)))

(declare-fun res!2037962 () Bool)

(assert (=> b!4794113 (=> res!2037962 e!2993454)))

(assert (=> b!4794113 (= res!2037962 (= (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473)))) (tuple2!56881 key!5896 value!3111)))))

(declare-fun b!4794114 () Bool)

(assert (=> b!4794114 (= e!2993454 (contains!17856 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) (tuple2!56881 key!5896 value!3111)))))

(assert (= (and d!1533999 res!2037961) b!4794113))

(assert (= (and b!4794113 (not res!2037962)) b!4794114))

(declare-fun m!5775156 () Bool)

(assert (=> d!1533999 m!5775156))

(declare-fun m!5775158 () Bool)

(assert (=> d!1533999 m!5775158))

(declare-fun m!5775160 () Bool)

(assert (=> b!4794114 m!5775160))

(assert (=> b!4793670 d!1533999))

(declare-fun d!1534001 () Bool)

(assert (=> d!1534001 (= (isDefined!10247 lt!1951921) (not (isEmpty!29455 lt!1951921)))))

(declare-fun bs!1155101 () Bool)

(assert (= bs!1155101 d!1534001))

(assert (=> bs!1155101 m!5774742))

(assert (=> b!4793760 d!1534001))

(assert (=> b!4793624 d!1533983))

(assert (=> b!4793624 d!1533985))

(declare-fun d!1534003 () Bool)

(assert (=> d!1534003 (= (get!18488 lt!1951921) (v!48395 lt!1951921))))

(assert (=> b!4793762 d!1534003))

(assert (=> b!4793626 d!1533827))

(declare-fun d!1534005 () Bool)

(declare-fun res!2037963 () Bool)

(declare-fun e!2993456 () Bool)

(assert (=> d!1534005 (=> res!2037963 e!2993456)))

(assert (=> d!1534005 (= res!2037963 ((_ is Nil!54233) (t!361807 (toList!6935 lm!2473))))))

(assert (=> d!1534005 (= (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230801) e!2993456)))

(declare-fun b!4794115 () Bool)

(declare-fun e!2993457 () Bool)

(assert (=> b!4794115 (= e!2993456 e!2993457)))

(declare-fun res!2037964 () Bool)

(assert (=> b!4794115 (=> (not res!2037964) (not e!2993457))))

(assert (=> b!4794115 (= res!2037964 (dynLambda!22061 lambda!230801 (h!60661 (t!361807 (toList!6935 lm!2473)))))))

(declare-fun b!4794116 () Bool)

(assert (=> b!4794116 (= e!2993457 (forall!12261 (t!361807 (t!361807 (toList!6935 lm!2473))) lambda!230801))))

(assert (= (and d!1534005 (not res!2037963)) b!4794115))

(assert (= (and b!4794115 res!2037964) b!4794116))

(declare-fun b_lambda!186871 () Bool)

(assert (=> (not b_lambda!186871) (not b!4794115)))

(declare-fun m!5775162 () Bool)

(assert (=> b!4794115 m!5775162))

(declare-fun m!5775164 () Bool)

(assert (=> b!4794116 m!5775164))

(assert (=> b!4793576 d!1534005))

(declare-fun d!1534007 () Bool)

(declare-fun res!2037965 () Bool)

(declare-fun e!2993458 () Bool)

(assert (=> d!1534007 (=> res!2037965 e!2993458)))

(assert (=> d!1534007 (= res!2037965 ((_ is Nil!54233) (toList!6935 lt!1951801)))))

(assert (=> d!1534007 (= (forall!12261 (toList!6935 lt!1951801) lambda!230826) e!2993458)))

(declare-fun b!4794117 () Bool)

(declare-fun e!2993459 () Bool)

(assert (=> b!4794117 (= e!2993458 e!2993459)))

(declare-fun res!2037966 () Bool)

(assert (=> b!4794117 (=> (not res!2037966) (not e!2993459))))

(assert (=> b!4794117 (= res!2037966 (dynLambda!22061 lambda!230826 (h!60661 (toList!6935 lt!1951801))))))

(declare-fun b!4794118 () Bool)

(assert (=> b!4794118 (= e!2993459 (forall!12261 (t!361807 (toList!6935 lt!1951801)) lambda!230826))))

(assert (= (and d!1534007 (not res!2037965)) b!4794117))

(assert (= (and b!4794117 res!2037966) b!4794118))

(declare-fun b_lambda!186873 () Bool)

(assert (=> (not b_lambda!186873) (not b!4794117)))

(declare-fun m!5775166 () Bool)

(assert (=> b!4794117 m!5775166))

(declare-fun m!5775168 () Bool)

(assert (=> b!4794118 m!5775168))

(assert (=> d!1533793 d!1534007))

(declare-fun d!1534009 () Bool)

(declare-fun lt!1952087 () Bool)

(assert (=> d!1534009 (= lt!1952087 (select (content!9716 (apply!12997 lm!2473 lt!1951802)) (get!18488 lt!1951921)))))

(declare-fun e!2993461 () Bool)

(assert (=> d!1534009 (= lt!1952087 e!2993461)))

(declare-fun res!2037967 () Bool)

(assert (=> d!1534009 (=> (not res!2037967) (not e!2993461))))

(assert (=> d!1534009 (= res!2037967 ((_ is Cons!54232) (apply!12997 lm!2473 lt!1951802)))))

(assert (=> d!1534009 (= (contains!17856 (apply!12997 lm!2473 lt!1951802) (get!18488 lt!1951921)) lt!1952087)))

(declare-fun b!4794119 () Bool)

(declare-fun e!2993460 () Bool)

(assert (=> b!4794119 (= e!2993461 e!2993460)))

(declare-fun res!2037968 () Bool)

(assert (=> b!4794119 (=> res!2037968 e!2993460)))

(assert (=> b!4794119 (= res!2037968 (= (h!60660 (apply!12997 lm!2473 lt!1951802)) (get!18488 lt!1951921)))))

(declare-fun b!4794120 () Bool)

(assert (=> b!4794120 (= e!2993460 (contains!17856 (t!361806 (apply!12997 lm!2473 lt!1951802)) (get!18488 lt!1951921)))))

(assert (= (and d!1534009 res!2037967) b!4794119))

(assert (= (and b!4794119 (not res!2037968)) b!4794120))

(assert (=> d!1534009 m!5774484))

(declare-fun m!5775170 () Bool)

(assert (=> d!1534009 m!5775170))

(assert (=> d!1534009 m!5774746))

(declare-fun m!5775172 () Bool)

(assert (=> d!1534009 m!5775172))

(assert (=> b!4794120 m!5774746))

(declare-fun m!5775174 () Bool)

(assert (=> b!4794120 m!5775174))

(assert (=> b!4793764 d!1534009))

(assert (=> b!4793764 d!1534003))

(declare-fun d!1534011 () Bool)

(assert (=> d!1534011 (dynLambda!22064 lambda!230803 (tuple2!56881 key!5896 value!3111))))

(assert (=> d!1534011 true))

(declare-fun _$7!2416 () Unit!140013)

(assert (=> d!1534011 (= (choose!34538 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803 (tuple2!56881 key!5896 value!3111)) _$7!2416)))

(declare-fun b_lambda!186875 () Bool)

(assert (=> (not b_lambda!186875) (not d!1534011)))

(declare-fun bs!1155102 () Bool)

(assert (= bs!1155102 d!1534011))

(assert (=> bs!1155102 m!5774648))

(assert (=> d!1533775 d!1534011))

(declare-fun d!1534013 () Bool)

(declare-fun res!2037973 () Bool)

(declare-fun e!2993466 () Bool)

(assert (=> d!1534013 (=> res!2037973 e!2993466)))

(assert (=> d!1534013 (= res!2037973 ((_ is Nil!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> d!1534013 (= (forall!12263 (_2!31735 (h!60661 (toList!6935 lm!2473))) lambda!230803) e!2993466)))

(declare-fun b!4794125 () Bool)

(declare-fun e!2993467 () Bool)

(assert (=> b!4794125 (= e!2993466 e!2993467)))

(declare-fun res!2037974 () Bool)

(assert (=> b!4794125 (=> (not res!2037974) (not e!2993467))))

(assert (=> b!4794125 (= res!2037974 (dynLambda!22064 lambda!230803 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(declare-fun b!4794126 () Bool)

(assert (=> b!4794126 (= e!2993467 (forall!12263 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) lambda!230803))))

(assert (= (and d!1534013 (not res!2037973)) b!4794125))

(assert (= (and b!4794125 res!2037974) b!4794126))

(declare-fun b_lambda!186877 () Bool)

(assert (=> (not b_lambda!186877) (not b!4794125)))

(declare-fun m!5775176 () Bool)

(assert (=> b!4794125 m!5775176))

(declare-fun m!5775178 () Bool)

(assert (=> b!4794126 m!5775178))

(assert (=> d!1533775 d!1534013))

(declare-fun d!1534015 () Bool)

(declare-fun lt!1952088 () Bool)

(assert (=> d!1534015 (= lt!1952088 (select (content!9711 e!2993116) key!5896))))

(declare-fun e!2993469 () Bool)

(assert (=> d!1534015 (= lt!1952088 e!2993469)))

(declare-fun res!2037976 () Bool)

(assert (=> d!1534015 (=> (not res!2037976) (not e!2993469))))

(assert (=> d!1534015 (= res!2037976 ((_ is Cons!54234) e!2993116))))

(assert (=> d!1534015 (= (contains!17853 e!2993116 key!5896) lt!1952088)))

(declare-fun b!4794127 () Bool)

(declare-fun e!2993468 () Bool)

(assert (=> b!4794127 (= e!2993469 e!2993468)))

(declare-fun res!2037975 () Bool)

(assert (=> b!4794127 (=> res!2037975 e!2993468)))

(assert (=> b!4794127 (= res!2037975 (= (h!60662 e!2993116) key!5896))))

(declare-fun b!4794128 () Bool)

(assert (=> b!4794128 (= e!2993468 (contains!17853 (t!361808 e!2993116) key!5896))))

(assert (= (and d!1534015 res!2037976) b!4794127))

(assert (= (and b!4794127 (not res!2037975)) b!4794128))

(declare-fun m!5775180 () Bool)

(assert (=> d!1534015 m!5775180))

(declare-fun m!5775182 () Bool)

(assert (=> d!1534015 m!5775182))

(declare-fun m!5775184 () Bool)

(assert (=> b!4794128 m!5775184))

(assert (=> bm!335062 d!1534015))

(declare-fun d!1534017 () Bool)

(assert (=> d!1534017 (= (get!18488 (getPair!900 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896)) (v!48395 (getPair!900 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896)))))

(assert (=> b!4793722 d!1534017))

(declare-fun b!4794129 () Bool)

(declare-fun e!2993473 () Option!13105)

(assert (=> b!4794129 (= e!2993473 (getPair!900 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) key!5896))))

(declare-fun b!4794130 () Bool)

(declare-fun e!2993472 () Bool)

(assert (=> b!4794130 (= e!2993472 (not (containsKey!3956 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896)))))

(declare-fun b!4794131 () Bool)

(declare-fun e!2993471 () Bool)

(declare-fun e!2993470 () Bool)

(assert (=> b!4794131 (= e!2993471 e!2993470)))

(declare-fun res!2037980 () Bool)

(assert (=> b!4794131 (=> (not res!2037980) (not e!2993470))))

(declare-fun lt!1952089 () Option!13105)

(assert (=> b!4794131 (= res!2037980 (isDefined!10247 lt!1952089))))

(declare-fun d!1534019 () Bool)

(assert (=> d!1534019 e!2993471))

(declare-fun res!2037979 () Bool)

(assert (=> d!1534019 (=> res!2037979 e!2993471)))

(assert (=> d!1534019 (= res!2037979 e!2993472)))

(declare-fun res!2037977 () Bool)

(assert (=> d!1534019 (=> (not res!2037977) (not e!2993472))))

(assert (=> d!1534019 (= res!2037977 (isEmpty!29455 lt!1952089))))

(declare-fun e!2993474 () Option!13105)

(assert (=> d!1534019 (= lt!1952089 e!2993474)))

(declare-fun c!817088 () Bool)

(assert (=> d!1534019 (= c!817088 (and ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))) (= (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))) key!5896)))))

(assert (=> d!1534019 (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473))))))

(assert (=> d!1534019 (= (getPair!900 (_2!31735 (h!60661 (toList!6935 lm!2473))) key!5896) lt!1952089)))

(declare-fun b!4794132 () Bool)

(assert (=> b!4794132 (= e!2993474 e!2993473)))

(declare-fun c!817087 () Bool)

(assert (=> b!4794132 (= c!817087 ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(declare-fun b!4794133 () Bool)

(declare-fun res!2037978 () Bool)

(assert (=> b!4794133 (=> (not res!2037978) (not e!2993470))))

(assert (=> b!4794133 (= res!2037978 (= (_1!31734 (get!18488 lt!1952089)) key!5896))))

(declare-fun b!4794134 () Bool)

(assert (=> b!4794134 (= e!2993474 (Some!13104 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(declare-fun b!4794135 () Bool)

(assert (=> b!4794135 (= e!2993470 (contains!17856 (_2!31735 (h!60661 (toList!6935 lm!2473))) (get!18488 lt!1952089)))))

(declare-fun b!4794136 () Bool)

(assert (=> b!4794136 (= e!2993473 None!13104)))

(assert (= (and d!1534019 c!817088) b!4794134))

(assert (= (and d!1534019 (not c!817088)) b!4794132))

(assert (= (and b!4794132 c!817087) b!4794129))

(assert (= (and b!4794132 (not c!817087)) b!4794136))

(assert (= (and d!1534019 res!2037977) b!4794130))

(assert (= (and d!1534019 (not res!2037979)) b!4794131))

(assert (= (and b!4794131 res!2037980) b!4794133))

(assert (= (and b!4794133 res!2037978) b!4794135))

(declare-fun m!5775186 () Bool)

(assert (=> b!4794129 m!5775186))

(declare-fun m!5775188 () Bool)

(assert (=> d!1534019 m!5775188))

(assert (=> d!1534019 m!5774760))

(declare-fun m!5775190 () Bool)

(assert (=> b!4794133 m!5775190))

(assert (=> b!4794135 m!5775190))

(assert (=> b!4794135 m!5775190))

(declare-fun m!5775192 () Bool)

(assert (=> b!4794135 m!5775192))

(assert (=> b!4794130 m!5774464))

(declare-fun m!5775194 () Bool)

(assert (=> b!4794131 m!5775194))

(assert (=> b!4793722 d!1534019))

(declare-fun d!1534021 () Bool)

(declare-fun res!2037981 () Bool)

(declare-fun e!2993477 () Bool)

(assert (=> d!1534021 (=> res!2037981 e!2993477)))

(declare-fun e!2993476 () Bool)

(assert (=> d!1534021 (= res!2037981 e!2993476)))

(declare-fun res!2037983 () Bool)

(assert (=> d!1534021 (=> (not res!2037983) (not e!2993476))))

(assert (=> d!1534021 (= res!2037983 ((_ is Cons!54233) (t!361807 (toList!6935 lm!2473))))))

(assert (=> d!1534021 (= (containsKeyBiggerList!570 (t!361807 (toList!6935 lm!2473)) key!5896) e!2993477)))

(declare-fun b!4794137 () Bool)

(assert (=> b!4794137 (= e!2993476 (containsKey!3956 (_2!31735 (h!60661 (t!361807 (toList!6935 lm!2473)))) key!5896))))

(declare-fun b!4794138 () Bool)

(declare-fun e!2993475 () Bool)

(assert (=> b!4794138 (= e!2993477 e!2993475)))

(declare-fun res!2037982 () Bool)

(assert (=> b!4794138 (=> (not res!2037982) (not e!2993475))))

(assert (=> b!4794138 (= res!2037982 ((_ is Cons!54233) (t!361807 (toList!6935 lm!2473))))))

(declare-fun b!4794139 () Bool)

(assert (=> b!4794139 (= e!2993475 (containsKeyBiggerList!570 (t!361807 (t!361807 (toList!6935 lm!2473))) key!5896))))

(assert (= (and d!1534021 res!2037983) b!4794137))

(assert (= (and d!1534021 (not res!2037981)) b!4794138))

(assert (= (and b!4794138 res!2037982) b!4794139))

(assert (=> b!4794137 m!5774996))

(declare-fun m!5775196 () Bool)

(assert (=> b!4794139 m!5775196))

(assert (=> b!4793685 d!1534021))

(declare-fun d!1534023 () Bool)

(declare-fun res!2037984 () Bool)

(declare-fun e!2993478 () Bool)

(assert (=> d!1534023 (=> res!2037984 e!2993478)))

(assert (=> d!1534023 (= res!2037984 ((_ is Nil!54233) (t!361807 (toList!6935 lt!1951801))))))

(assert (=> d!1534023 (= (forall!12261 (t!361807 (toList!6935 lt!1951801)) lambda!230801) e!2993478)))

(declare-fun b!4794140 () Bool)

(declare-fun e!2993479 () Bool)

(assert (=> b!4794140 (= e!2993478 e!2993479)))

(declare-fun res!2037985 () Bool)

(assert (=> b!4794140 (=> (not res!2037985) (not e!2993479))))

(assert (=> b!4794140 (= res!2037985 (dynLambda!22061 lambda!230801 (h!60661 (t!361807 (toList!6935 lt!1951801)))))))

(declare-fun b!4794141 () Bool)

(assert (=> b!4794141 (= e!2993479 (forall!12261 (t!361807 (t!361807 (toList!6935 lt!1951801))) lambda!230801))))

(assert (= (and d!1534023 (not res!2037984)) b!4794140))

(assert (= (and b!4794140 res!2037985) b!4794141))

(declare-fun b_lambda!186879 () Bool)

(assert (=> (not b_lambda!186879) (not b!4794140)))

(declare-fun m!5775198 () Bool)

(assert (=> b!4794140 m!5775198))

(declare-fun m!5775200 () Bool)

(assert (=> b!4794141 m!5775200))

(assert (=> b!4793667 d!1534023))

(assert (=> d!1533783 d!1533781))

(declare-fun d!1534025 () Bool)

(assert (=> d!1534025 (containsKeyBiggerList!570 (toList!6935 lm!2473) key!5896)))

(assert (=> d!1534025 true))

(declare-fun _$33!838 () Unit!140013)

(assert (=> d!1534025 (= (choose!34540 lm!2473 key!5896 hashF!1559) _$33!838)))

(declare-fun bs!1155103 () Bool)

(assert (= bs!1155103 d!1534025))

(assert (=> bs!1155103 m!5774474))

(assert (=> d!1533783 d!1534025))

(declare-fun d!1534027 () Bool)

(declare-fun res!2037986 () Bool)

(declare-fun e!2993480 () Bool)

(assert (=> d!1534027 (=> res!2037986 e!2993480)))

(assert (=> d!1534027 (= res!2037986 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1534027 (= (forall!12261 (toList!6935 lm!2473) lambda!230822) e!2993480)))

(declare-fun b!4794142 () Bool)

(declare-fun e!2993481 () Bool)

(assert (=> b!4794142 (= e!2993480 e!2993481)))

(declare-fun res!2037987 () Bool)

(assert (=> b!4794142 (=> (not res!2037987) (not e!2993481))))

(assert (=> b!4794142 (= res!2037987 (dynLambda!22061 lambda!230822 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4794143 () Bool)

(assert (=> b!4794143 (= e!2993481 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230822))))

(assert (= (and d!1534027 (not res!2037986)) b!4794142))

(assert (= (and b!4794142 res!2037987) b!4794143))

(declare-fun b_lambda!186881 () Bool)

(assert (=> (not b_lambda!186881) (not b!4794142)))

(declare-fun m!5775202 () Bool)

(assert (=> b!4794142 m!5775202))

(declare-fun m!5775204 () Bool)

(assert (=> b!4794143 m!5775204))

(assert (=> d!1533783 d!1534027))

(declare-fun d!1534029 () Bool)

(assert (=> d!1534029 (= (hash!4965 hashF!1559 (_1!31734 (tuple2!56881 key!5896 value!3111))) (hash!4967 hashF!1559 (_1!31734 (tuple2!56881 key!5896 value!3111))))))

(declare-fun bs!1155104 () Bool)

(assert (= bs!1155104 d!1534029))

(declare-fun m!5775206 () Bool)

(assert (=> bs!1155104 m!5775206))

(assert (=> bs!1155040 d!1534029))

(declare-fun d!1534031 () Bool)

(declare-fun res!2037988 () Bool)

(declare-fun e!2993482 () Bool)

(assert (=> d!1534031 (=> res!2037988 e!2993482)))

(assert (=> d!1534031 (= res!2037988 (and ((_ is Cons!54232) (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473))))) (= (_1!31734 (h!60660 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))))) key!5896)))))

(assert (=> d!1534031 (= (containsKey!3956 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473)))) key!5896) e!2993482)))

(declare-fun b!4794144 () Bool)

(declare-fun e!2993483 () Bool)

(assert (=> b!4794144 (= e!2993482 e!2993483)))

(declare-fun res!2037989 () Bool)

(assert (=> b!4794144 (=> (not res!2037989) (not e!2993483))))

(assert (=> b!4794144 (= res!2037989 ((_ is Cons!54232) (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473))))))))

(declare-fun b!4794145 () Bool)

(assert (=> b!4794145 (= e!2993483 (containsKey!3956 (t!361806 (t!361806 (_2!31735 (h!60661 (toList!6935 lm!2473))))) key!5896))))

(assert (= (and d!1534031 (not res!2037988)) b!4794144))

(assert (= (and b!4794144 res!2037989) b!4794145))

(declare-fun m!5775208 () Bool)

(assert (=> b!4794145 m!5775208))

(assert (=> b!4793730 d!1534031))

(declare-fun d!1534033 () Bool)

(declare-fun e!2993484 () Bool)

(assert (=> d!1534033 e!2993484))

(declare-fun res!2037990 () Bool)

(assert (=> d!1534033 (=> res!2037990 e!2993484)))

(declare-fun lt!1952090 () Bool)

(assert (=> d!1534033 (= res!2037990 (not lt!1952090))))

(declare-fun lt!1952092 () Bool)

(assert (=> d!1534033 (= lt!1952090 lt!1952092)))

(declare-fun lt!1952093 () Unit!140013)

(declare-fun e!2993485 () Unit!140013)

(assert (=> d!1534033 (= lt!1952093 e!2993485)))

(declare-fun c!817089 () Bool)

(assert (=> d!1534033 (= c!817089 lt!1952092)))

(assert (=> d!1534033 (= lt!1952092 (containsKey!3957 (toList!6935 lm!2473) (hash!4965 hashF!1559 key!5896)))))

(assert (=> d!1534033 (= (contains!17851 lm!2473 (hash!4965 hashF!1559 key!5896)) lt!1952090)))

(declare-fun b!4794146 () Bool)

(declare-fun lt!1952091 () Unit!140013)

(assert (=> b!4794146 (= e!2993485 lt!1952091)))

(assert (=> b!4794146 (= lt!1952091 (lemmaContainsKeyImpliesGetValueByKeyDefined!2145 (toList!6935 lm!2473) (hash!4965 hashF!1559 key!5896)))))

(assert (=> b!4794146 (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) (hash!4965 hashF!1559 key!5896)))))

(declare-fun b!4794147 () Bool)

(declare-fun Unit!140039 () Unit!140013)

(assert (=> b!4794147 (= e!2993485 Unit!140039)))

(declare-fun b!4794148 () Bool)

(assert (=> b!4794148 (= e!2993484 (isDefined!10248 (getValueByKey!2353 (toList!6935 lm!2473) (hash!4965 hashF!1559 key!5896))))))

(assert (= (and d!1534033 c!817089) b!4794146))

(assert (= (and d!1534033 (not c!817089)) b!4794147))

(assert (= (and d!1534033 (not res!2037990)) b!4794148))

(assert (=> d!1534033 m!5774476))

(declare-fun m!5775210 () Bool)

(assert (=> d!1534033 m!5775210))

(assert (=> b!4794146 m!5774476))

(declare-fun m!5775212 () Bool)

(assert (=> b!4794146 m!5775212))

(assert (=> b!4794146 m!5774476))

(assert (=> b!4794146 m!5774970))

(assert (=> b!4794146 m!5774970))

(declare-fun m!5775214 () Bool)

(assert (=> b!4794146 m!5775214))

(assert (=> b!4794148 m!5774476))

(assert (=> b!4794148 m!5774970))

(assert (=> b!4794148 m!5774970))

(assert (=> b!4794148 m!5775214))

(assert (=> d!1533785 d!1534033))

(assert (=> d!1533785 d!1533791))

(declare-fun d!1534035 () Bool)

(declare-fun e!2993488 () Bool)

(assert (=> d!1534035 e!2993488))

(declare-fun res!2037993 () Bool)

(assert (=> d!1534035 (=> (not res!2037993) (not e!2993488))))

(assert (=> d!1534035 (= res!2037993 (contains!17851 lm!2473 (hash!4965 hashF!1559 key!5896)))))

(assert (=> d!1534035 true))

(declare-fun _$5!220 () Unit!140013)

(assert (=> d!1534035 (= (choose!34541 lm!2473 key!5896 hashF!1559) _$5!220)))

(declare-fun b!4794151 () Bool)

(assert (=> b!4794151 (= e!2993488 (isDefined!10247 (getPair!900 (apply!12997 lm!2473 (hash!4965 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1534035 res!2037993) b!4794151))

(assert (=> d!1534035 m!5774476))

(assert (=> d!1534035 m!5774476))

(assert (=> d!1534035 m!5774698))

(assert (=> b!4794151 m!5774476))

(assert (=> b!4794151 m!5774476))

(assert (=> b!4794151 m!5774704))

(assert (=> b!4794151 m!5774704))

(assert (=> b!4794151 m!5774706))

(assert (=> b!4794151 m!5774706))

(assert (=> b!4794151 m!5774708))

(assert (=> d!1533785 d!1534035))

(declare-fun d!1534037 () Bool)

(declare-fun res!2037994 () Bool)

(declare-fun e!2993489 () Bool)

(assert (=> d!1534037 (=> res!2037994 e!2993489)))

(assert (=> d!1534037 (= res!2037994 ((_ is Nil!54233) (toList!6935 lm!2473)))))

(assert (=> d!1534037 (= (forall!12261 (toList!6935 lm!2473) lambda!230825) e!2993489)))

(declare-fun b!4794152 () Bool)

(declare-fun e!2993490 () Bool)

(assert (=> b!4794152 (= e!2993489 e!2993490)))

(declare-fun res!2037995 () Bool)

(assert (=> b!4794152 (=> (not res!2037995) (not e!2993490))))

(assert (=> b!4794152 (= res!2037995 (dynLambda!22061 lambda!230825 (h!60661 (toList!6935 lm!2473))))))

(declare-fun b!4794153 () Bool)

(assert (=> b!4794153 (= e!2993490 (forall!12261 (t!361807 (toList!6935 lm!2473)) lambda!230825))))

(assert (= (and d!1534037 (not res!2037994)) b!4794152))

(assert (= (and b!4794152 res!2037995) b!4794153))

(declare-fun b_lambda!186883 () Bool)

(assert (=> (not b_lambda!186883) (not b!4794152)))

(declare-fun m!5775216 () Bool)

(assert (=> b!4794152 m!5775216))

(declare-fun m!5775218 () Bool)

(assert (=> b!4794153 m!5775218))

(assert (=> d!1533785 d!1534037))

(declare-fun b!4794158 () Bool)

(declare-fun tp!1358085 () Bool)

(declare-fun e!2993493 () Bool)

(assert (=> b!4794158 (= e!2993493 (and tp_is_empty!33573 tp_is_empty!33575 tp!1358085))))

(assert (=> b!4793770 (= tp!1358081 e!2993493)))

(assert (= (and b!4793770 ((_ is Cons!54232) (_2!31735 (h!60661 (toList!6935 lm!2473))))) b!4794158))

(declare-fun b!4794159 () Bool)

(declare-fun e!2993494 () Bool)

(declare-fun tp!1358086 () Bool)

(declare-fun tp!1358087 () Bool)

(assert (=> b!4794159 (= e!2993494 (and tp!1358086 tp!1358087))))

(assert (=> b!4793770 (= tp!1358082 e!2993494)))

(assert (= (and b!4793770 ((_ is Cons!54233) (t!361807 (toList!6935 lm!2473)))) b!4794159))

(declare-fun b_lambda!186885 () Bool)

(assert (= b_lambda!186873 (or d!1533793 b_lambda!186885)))

(declare-fun bs!1155105 () Bool)

(declare-fun d!1534039 () Bool)

(assert (= bs!1155105 (and d!1534039 d!1533793)))

(assert (=> bs!1155105 (= (dynLambda!22061 lambda!230826 (h!60661 (toList!6935 lt!1951801))) (allKeysSameHash!1959 (_2!31735 (h!60661 (toList!6935 lt!1951801))) (_1!31735 (h!60661 (toList!6935 lt!1951801))) hashF!1559))))

(declare-fun m!5775220 () Bool)

(assert (=> bs!1155105 m!5775220))

(assert (=> b!4794117 d!1534039))

(declare-fun b_lambda!186887 () Bool)

(assert (= b_lambda!186869 (or b!4793532 b_lambda!186887)))

(assert (=> b!4794083 d!1533813))

(declare-fun b_lambda!186889 () Bool)

(assert (= b_lambda!186843 (or d!1533757 b_lambda!186889)))

(declare-fun bs!1155106 () Bool)

(declare-fun d!1534041 () Bool)

(assert (= bs!1155106 (and d!1534041 d!1533757)))

(assert (=> bs!1155106 (= (dynLambda!22061 lambda!230819 (h!60661 (toList!6935 lm!2473))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> bs!1155106 m!5774760))

(assert (=> b!4793804 d!1534041))

(declare-fun b_lambda!186891 () Bool)

(assert (= b_lambda!186875 (or b!4793532 b_lambda!186891)))

(assert (=> d!1534011 d!1533811))

(declare-fun b_lambda!186893 () Bool)

(assert (= b_lambda!186865 (or d!1533723 b_lambda!186893)))

(declare-fun bs!1155107 () Bool)

(declare-fun d!1534043 () Bool)

(assert (= bs!1155107 (and d!1534043 d!1533723)))

(assert (=> bs!1155107 (= (dynLambda!22061 lambda!230808 (h!60661 (toList!6935 lm!2473))) (allKeysSameHash!1959 (_2!31735 (h!60661 (toList!6935 lm!2473))) (_1!31735 (h!60661 (toList!6935 lm!2473))) hashF!1559))))

(assert (=> bs!1155107 m!5774758))

(assert (=> b!4794034 d!1534043))

(declare-fun b_lambda!186895 () Bool)

(assert (= b_lambda!186883 (or d!1533785 b_lambda!186895)))

(declare-fun bs!1155108 () Bool)

(declare-fun d!1534045 () Bool)

(assert (= bs!1155108 (and d!1534045 d!1533785)))

(assert (=> bs!1155108 (= (dynLambda!22061 lambda!230825 (h!60661 (toList!6935 lm!2473))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> bs!1155108 m!5774760))

(assert (=> b!4794152 d!1534045))

(declare-fun b_lambda!186897 () Bool)

(assert (= b_lambda!186881 (or d!1533783 b_lambda!186897)))

(declare-fun bs!1155109 () Bool)

(declare-fun d!1534047 () Bool)

(assert (= bs!1155109 (and d!1534047 d!1533783)))

(assert (=> bs!1155109 (= (dynLambda!22061 lambda!230822 (h!60661 (toList!6935 lm!2473))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (toList!6935 lm!2473)))))))

(assert (=> bs!1155109 m!5774760))

(assert (=> b!4794142 d!1534047))

(declare-fun b_lambda!186899 () Bool)

(assert (= b_lambda!186879 (or start!493794 b_lambda!186899)))

(declare-fun bs!1155110 () Bool)

(declare-fun d!1534049 () Bool)

(assert (= bs!1155110 (and d!1534049 start!493794)))

(assert (=> bs!1155110 (= (dynLambda!22061 lambda!230801 (h!60661 (t!361807 (toList!6935 lt!1951801)))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (t!361807 (toList!6935 lt!1951801))))))))

(declare-fun m!5775222 () Bool)

(assert (=> bs!1155110 m!5775222))

(assert (=> b!4794140 d!1534049))

(declare-fun b_lambda!186901 () Bool)

(assert (= b_lambda!186877 (or b!4793532 b_lambda!186901)))

(declare-fun bs!1155111 () Bool)

(declare-fun d!1534051 () Bool)

(assert (= bs!1155111 (and d!1534051 b!4793532)))

(assert (=> bs!1155111 (= (dynLambda!22064 lambda!230803 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473))))) (= (hash!4965 hashF!1559 (_1!31734 (h!60660 (_2!31735 (h!60661 (toList!6935 lm!2473)))))) (_1!31735 (h!60661 (toList!6935 lm!2473)))))))

(declare-fun m!5775224 () Bool)

(assert (=> bs!1155111 m!5775224))

(assert (=> b!4794125 d!1534051))

(declare-fun b_lambda!186903 () Bool)

(assert (= b_lambda!186867 (or b!4793532 b_lambda!186903)))

(assert (=> d!1533969 d!1533813))

(declare-fun b_lambda!186905 () Bool)

(assert (= b_lambda!186871 (or start!493794 b_lambda!186905)))

(declare-fun bs!1155112 () Bool)

(declare-fun d!1534053 () Bool)

(assert (= bs!1155112 (and d!1534053 start!493794)))

(assert (=> bs!1155112 (= (dynLambda!22061 lambda!230801 (h!60661 (t!361807 (toList!6935 lm!2473)))) (noDuplicateKeys!2341 (_2!31735 (h!60661 (t!361807 (toList!6935 lm!2473))))))))

(declare-fun m!5775226 () Bool)

(assert (=> bs!1155112 m!5775226))

(assert (=> b!4794115 d!1534053))

(check-sat (not b!4794075) (not b!4794137) (not d!1533831) (not bs!1155108) (not b!4794130) (not bs!1155112) (not b!4793961) (not b!4793797) (not b!4793798) (not b!4794071) (not b!4793925) (not b!4794128) (not b!4793778) (not b!4793784) (not d!1533983) (not b!4794086) (not d!1533987) (not b!4794146) (not b!4794084) (not d!1534025) (not b!4794108) (not bs!1155106) (not d!1534035) (not b!4793790) (not b!4793962) (not b!4793965) tp_is_empty!33573 (not b!4794118) (not b!4794159) (not b_lambda!186837) (not b!4794021) (not b!4794139) (not d!1534033) (not b!4794069) (not b!4794120) (not b!4793937) (not b!4794116) (not b_lambda!186895) (not d!1533991) (not bm!335072) (not bs!1155105) (not b!4793964) (not b!4793935) (not b!4793805) (not b!4794153) (not b_lambda!186905) (not b_lambda!186893) (not b!4794131) (not b!4793909) (not b!4794129) (not b!4793803) (not b!4793908) (not d!1533961) (not d!1533907) (not b!4794085) (not b!4793963) (not bs!1155109) (not b!4793912) (not b!4794158) (not b!4793932) (not b!4794015) (not d!1533947) (not b_lambda!186835) (not b!4794072) (not b!4794148) (not b!4794143) (not d!1534009) (not bm!335073) (not d!1534015) (not b_lambda!186841) (not b!4794082) (not d!1534001) (not b_lambda!186887) (not d!1533963) (not b!4794105) (not b!4794135) (not bs!1155111) (not b_lambda!186901) (not b!4793933) (not d!1533905) (not b!4794133) (not d!1533897) (not b!4794103) (not b_lambda!186885) (not bs!1155110) (not d!1533977) (not d!1533989) (not b!4794014) (not b!4794060) (not bm!335074) (not d!1534019) (not b_lambda!186891) (not b!4794097) (not b!4794038) (not b!4794100) (not b!4794101) (not d!1533923) (not d!1533827) (not d!1534029) (not d!1533819) (not b!4794018) (not b_lambda!186889) (not b!4793931) (not b!4794114) (not d!1533949) (not b_lambda!186839) (not b!4794016) tp_is_empty!33575 (not b!4794141) (not b!4794035) (not b_lambda!186899) (not b_lambda!186897) (not d!1533825) (not bs!1155107) (not d!1533835) (not b!4794151) (not b!4794070) (not d!1533955) (not b!4794099) (not b!4794145) (not d!1533903) (not d!1533981) (not b_lambda!186903) (not b!4794126) (not b!4793799) (not d!1533999))
(check-sat)
