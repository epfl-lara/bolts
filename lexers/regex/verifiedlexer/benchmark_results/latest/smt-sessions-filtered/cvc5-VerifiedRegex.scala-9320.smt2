; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!495376 () Bool)

(assert start!495376)

(declare-fun e!2997685 () Bool)

(declare-fun b!4800419 () Bool)

(declare-datatypes ((K!15887 0))(
  ( (K!15888 (val!21015 Int)) )
))
(declare-fun key!5896 () K!15887)

(declare-fun lt!1956200 () (_ BitVec 64))

(declare-datatypes ((V!16133 0))(
  ( (V!16134 (val!21016 Int)) )
))
(declare-datatypes ((tuple2!57004 0))(
  ( (tuple2!57005 (_1!31796 K!15887) (_2!31796 V!16133)) )
))
(declare-datatypes ((List!54438 0))(
  ( (Nil!54314) (Cons!54314 (h!60746 tuple2!57004) (t!361888 List!54438)) )
))
(declare-datatypes ((tuple2!57006 0))(
  ( (tuple2!57007 (_1!31797 (_ BitVec 64)) (_2!31797 List!54438)) )
))
(declare-datatypes ((List!54439 0))(
  ( (Nil!54315) (Cons!54315 (h!60747 tuple2!57006) (t!361889 List!54439)) )
))
(declare-datatypes ((ListLongMap!5419 0))(
  ( (ListLongMap!5420 (toList!6997 List!54439)) )
))
(declare-fun lm!2473 () ListLongMap!5419)

(declare-datatypes ((Option!13175 0))(
  ( (None!13174) (Some!13174 (v!48499 tuple2!57004)) )
))
(declare-fun isDefined!10316 (Option!13175) Bool)

(declare-fun getPair!931 (List!54438 K!15887) Option!13175)

(declare-fun apply!13032 (ListLongMap!5419 (_ BitVec 64)) List!54438)

(assert (=> b!4800419 (= e!2997685 (isDefined!10316 (getPair!931 (apply!13032 lm!2473 lt!1956200) key!5896)))))

(declare-fun b!4800420 () Bool)

(declare-datatypes ((Unit!140672 0))(
  ( (Unit!140673) )
))
(declare-fun e!2997686 () Unit!140672)

(declare-fun lt!1956202 () Unit!140672)

(assert (=> b!4800420 (= e!2997686 lt!1956202)))

(declare-datatypes ((Hashable!6959 0))(
  ( (HashableExt!6958 (__x!32982 Int)) )
))
(declare-fun hashF!1559 () Hashable!6959)

(declare-fun lt!1956204 () ListLongMap!5419)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!57 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> b!4800420 (= lt!1956202 (lemmaHashNotInLongMapThenNotInGenerated!57 lt!1956204 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6469 0))(
  ( (ListMap!6470 (toList!6998 List!54438)) )
))
(declare-fun contains!17965 (ListMap!6469 K!15887) Bool)

(declare-fun extractMap!2486 (List!54439) ListMap!6469)

(assert (=> b!4800420 (not (contains!17965 (extractMap!2486 (toList!6997 lt!1956204)) key!5896))))

(declare-fun b!4800422 () Bool)

(declare-fun res!2041618 () Bool)

(declare-fun e!2997688 () Bool)

(assert (=> b!4800422 (=> res!2041618 e!2997688)))

(declare-fun containsKey!4025 (List!54438 K!15887) Bool)

(assert (=> b!4800422 (= res!2041618 (containsKey!4025 (_2!31797 (h!60747 (toList!6997 lm!2473))) key!5896))))

(declare-fun b!4800423 () Bool)

(declare-fun e!2997687 () Bool)

(declare-fun tp!1358353 () Bool)

(assert (=> b!4800423 (= e!2997687 tp!1358353)))

(declare-fun b!4800424 () Bool)

(declare-fun res!2041619 () Bool)

(declare-fun e!2997689 () Bool)

(assert (=> b!4800424 (=> (not res!2041619) (not e!2997689))))

(declare-fun allKeysSameHashInMap!2364 (ListLongMap!5419 Hashable!6959) Bool)

(assert (=> b!4800424 (= res!2041619 (allKeysSameHashInMap!2364 lm!2473 hashF!1559))))

(declare-fun b!4800425 () Bool)

(assert (=> b!4800425 (= e!2997689 (not e!2997688))))

(declare-fun res!2041621 () Bool)

(assert (=> b!4800425 (=> res!2041621 e!2997688)))

(declare-fun value!3111 () V!16133)

(declare-fun getValue!147 (List!54439 K!15887) V!16133)

(assert (=> b!4800425 (= res!2041621 (not (= (getValue!147 (toList!6997 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!601 (List!54439 K!15887) Bool)

(assert (=> b!4800425 (containsKeyBiggerList!601 (toList!6997 lm!2473) key!5896)))

(declare-fun lt!1956199 () Unit!140672)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!341 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> b!4800425 (= lt!1956199 (lemmaInLongMapThenContainsKeyBiggerList!341 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4800425 e!2997685))

(declare-fun res!2041616 () Bool)

(assert (=> b!4800425 (=> (not res!2041616) (not e!2997685))))

(declare-fun contains!17966 (ListLongMap!5419 (_ BitVec 64)) Bool)

(assert (=> b!4800425 (= res!2041616 (contains!17966 lm!2473 lt!1956200))))

(declare-fun hash!5014 (Hashable!6959 K!15887) (_ BitVec 64))

(assert (=> b!4800425 (= lt!1956200 (hash!5014 hashF!1559 key!5896))))

(declare-fun lt!1956203 () Unit!140672)

(declare-fun lemmaInGenericMapThenInLongMap!363 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> b!4800425 (= lt!1956203 (lemmaInGenericMapThenInLongMap!363 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4800426 () Bool)

(declare-fun res!2041615 () Bool)

(assert (=> b!4800426 (=> (not res!2041615) (not e!2997689))))

(assert (=> b!4800426 (= res!2041615 (contains!17965 (extractMap!2486 (toList!6997 lm!2473)) key!5896))))

(declare-fun res!2041617 () Bool)

(assert (=> start!495376 (=> (not res!2041617) (not e!2997689))))

(declare-fun lambda!232304 () Int)

(declare-fun forall!12326 (List!54439 Int) Bool)

(assert (=> start!495376 (= res!2041617 (forall!12326 (toList!6997 lm!2473) lambda!232304))))

(assert (=> start!495376 e!2997689))

(declare-fun inv!69914 (ListLongMap!5419) Bool)

(assert (=> start!495376 (and (inv!69914 lm!2473) e!2997687)))

(assert (=> start!495376 true))

(declare-fun tp_is_empty!33697 () Bool)

(assert (=> start!495376 tp_is_empty!33697))

(declare-fun tp_is_empty!33699 () Bool)

(assert (=> start!495376 tp_is_empty!33699))

(declare-fun b!4800421 () Bool)

(declare-fun Unit!140674 () Unit!140672)

(assert (=> b!4800421 (= e!2997686 Unit!140674)))

(declare-fun b!4800427 () Bool)

(assert (=> b!4800427 (= e!2997688 (forall!12326 (toList!6997 lt!1956204) lambda!232304))))

(assert (=> b!4800427 (contains!17965 (extractMap!2486 (toList!6997 lt!1956204)) key!5896)))

(declare-fun lt!1956201 () Unit!140672)

(declare-fun lemmaListContainsThenExtractedMapContains!709 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> b!4800427 (= lt!1956201 (lemmaListContainsThenExtractedMapContains!709 lt!1956204 key!5896 hashF!1559))))

(declare-fun lt!1956198 () Unit!140672)

(assert (=> b!4800427 (= lt!1956198 e!2997686)))

(declare-fun c!818202 () Bool)

(assert (=> b!4800427 (= c!818202 (not (contains!17966 lt!1956204 lt!1956200)))))

(declare-fun tail!9322 (ListLongMap!5419) ListLongMap!5419)

(assert (=> b!4800427 (= lt!1956204 (tail!9322 lm!2473))))

(declare-fun b!4800428 () Bool)

(declare-fun res!2041620 () Bool)

(assert (=> b!4800428 (=> res!2041620 e!2997688)))

(assert (=> b!4800428 (= res!2041620 (not (is-Cons!54315 (toList!6997 lm!2473))))))

(assert (= (and start!495376 res!2041617) b!4800424))

(assert (= (and b!4800424 res!2041619) b!4800426))

(assert (= (and b!4800426 res!2041615) b!4800425))

(assert (= (and b!4800425 res!2041616) b!4800419))

(assert (= (and b!4800425 (not res!2041621)) b!4800428))

(assert (= (and b!4800428 (not res!2041620)) b!4800422))

(assert (= (and b!4800422 (not res!2041618)) b!4800427))

(assert (= (and b!4800427 c!818202) b!4800420))

(assert (= (and b!4800427 (not c!818202)) b!4800421))

(assert (= start!495376 b!4800423))

(declare-fun m!5784070 () Bool)

(assert (=> b!4800419 m!5784070))

(assert (=> b!4800419 m!5784070))

(declare-fun m!5784072 () Bool)

(assert (=> b!4800419 m!5784072))

(assert (=> b!4800419 m!5784072))

(declare-fun m!5784074 () Bool)

(assert (=> b!4800419 m!5784074))

(declare-fun m!5784076 () Bool)

(assert (=> b!4800427 m!5784076))

(declare-fun m!5784078 () Bool)

(assert (=> b!4800427 m!5784078))

(declare-fun m!5784080 () Bool)

(assert (=> b!4800427 m!5784080))

(declare-fun m!5784082 () Bool)

(assert (=> b!4800427 m!5784082))

(declare-fun m!5784084 () Bool)

(assert (=> b!4800427 m!5784084))

(assert (=> b!4800427 m!5784082))

(declare-fun m!5784086 () Bool)

(assert (=> b!4800427 m!5784086))

(declare-fun m!5784088 () Bool)

(assert (=> start!495376 m!5784088))

(declare-fun m!5784090 () Bool)

(assert (=> start!495376 m!5784090))

(declare-fun m!5784092 () Bool)

(assert (=> b!4800426 m!5784092))

(assert (=> b!4800426 m!5784092))

(declare-fun m!5784094 () Bool)

(assert (=> b!4800426 m!5784094))

(declare-fun m!5784096 () Bool)

(assert (=> b!4800425 m!5784096))

(declare-fun m!5784098 () Bool)

(assert (=> b!4800425 m!5784098))

(declare-fun m!5784100 () Bool)

(assert (=> b!4800425 m!5784100))

(declare-fun m!5784102 () Bool)

(assert (=> b!4800425 m!5784102))

(declare-fun m!5784104 () Bool)

(assert (=> b!4800425 m!5784104))

(declare-fun m!5784106 () Bool)

(assert (=> b!4800425 m!5784106))

(declare-fun m!5784108 () Bool)

(assert (=> b!4800422 m!5784108))

(declare-fun m!5784110 () Bool)

(assert (=> b!4800420 m!5784110))

(assert (=> b!4800420 m!5784082))

(assert (=> b!4800420 m!5784082))

(assert (=> b!4800420 m!5784086))

(declare-fun m!5784112 () Bool)

(assert (=> b!4800424 m!5784112))

(push 1)

(assert (not b!4800425))

(assert (not b!4800423))

(assert (not b!4800419))

(assert (not start!495376))

(assert tp_is_empty!33697)

(assert (not b!4800422))

(assert (not b!4800424))

(assert (not b!4800426))

(assert (not b!4800420))

(assert tp_is_empty!33699)

(assert (not b!4800427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1157348 () Bool)

(declare-fun d!1536955 () Bool)

(assert (= bs!1157348 (and d!1536955 start!495376)))

(declare-fun lambda!232312 () Int)

(assert (=> bs!1157348 (not (= lambda!232312 lambda!232304))))

(assert (=> d!1536955 true))

(assert (=> d!1536955 (= (allKeysSameHashInMap!2364 lm!2473 hashF!1559) (forall!12326 (toList!6997 lm!2473) lambda!232312))))

(declare-fun bs!1157349 () Bool)

(assert (= bs!1157349 d!1536955))

(declare-fun m!5784158 () Bool)

(assert (=> bs!1157349 m!5784158))

(assert (=> b!4800424 d!1536955))

(declare-fun d!1536957 () Bool)

(declare-fun res!2041647 () Bool)

(declare-fun e!2997709 () Bool)

(assert (=> d!1536957 (=> res!2041647 e!2997709)))

(assert (=> d!1536957 (= res!2041647 (is-Nil!54315 (toList!6997 lt!1956204)))))

(assert (=> d!1536957 (= (forall!12326 (toList!6997 lt!1956204) lambda!232304) e!2997709)))

(declare-fun b!4800465 () Bool)

(declare-fun e!2997710 () Bool)

(assert (=> b!4800465 (= e!2997709 e!2997710)))

(declare-fun res!2041648 () Bool)

(assert (=> b!4800465 (=> (not res!2041648) (not e!2997710))))

(declare-fun dynLambda!22091 (Int tuple2!57006) Bool)

(assert (=> b!4800465 (= res!2041648 (dynLambda!22091 lambda!232304 (h!60747 (toList!6997 lt!1956204))))))

(declare-fun b!4800466 () Bool)

(assert (=> b!4800466 (= e!2997710 (forall!12326 (t!361889 (toList!6997 lt!1956204)) lambda!232304))))

(assert (= (and d!1536957 (not res!2041647)) b!4800465))

(assert (= (and b!4800465 res!2041648) b!4800466))

(declare-fun b_lambda!187579 () Bool)

(assert (=> (not b_lambda!187579) (not b!4800465)))

(declare-fun m!5784160 () Bool)

(assert (=> b!4800465 m!5784160))

(declare-fun m!5784162 () Bool)

(assert (=> b!4800466 m!5784162))

(assert (=> b!4800427 d!1536957))

(declare-fun d!1536959 () Bool)

(declare-fun tail!9324 (List!54439) List!54439)

(assert (=> d!1536959 (= (tail!9322 lm!2473) (ListLongMap!5420 (tail!9324 (toList!6997 lm!2473))))))

(declare-fun bs!1157350 () Bool)

(assert (= bs!1157350 d!1536959))

(declare-fun m!5784164 () Bool)

(assert (=> bs!1157350 m!5784164))

(assert (=> b!4800427 d!1536959))

(declare-fun bs!1157351 () Bool)

(declare-fun d!1536961 () Bool)

(assert (= bs!1157351 (and d!1536961 start!495376)))

(declare-fun lambda!232315 () Int)

(assert (=> bs!1157351 (= lambda!232315 lambda!232304)))

(declare-fun bs!1157352 () Bool)

(assert (= bs!1157352 (and d!1536961 d!1536955)))

(assert (=> bs!1157352 (not (= lambda!232315 lambda!232312))))

(declare-fun lt!1956228 () ListMap!6469)

(declare-fun invariantList!1751 (List!54438) Bool)

(assert (=> d!1536961 (invariantList!1751 (toList!6998 lt!1956228))))

(declare-fun e!2997713 () ListMap!6469)

(assert (=> d!1536961 (= lt!1956228 e!2997713)))

(declare-fun c!818208 () Bool)

(assert (=> d!1536961 (= c!818208 (is-Cons!54315 (toList!6997 lt!1956204)))))

(assert (=> d!1536961 (forall!12326 (toList!6997 lt!1956204) lambda!232315)))

(assert (=> d!1536961 (= (extractMap!2486 (toList!6997 lt!1956204)) lt!1956228)))

(declare-fun b!4800471 () Bool)

(declare-fun addToMapMapFromBucket!1728 (List!54438 ListMap!6469) ListMap!6469)

(assert (=> b!4800471 (= e!2997713 (addToMapMapFromBucket!1728 (_2!31797 (h!60747 (toList!6997 lt!1956204))) (extractMap!2486 (t!361889 (toList!6997 lt!1956204)))))))

(declare-fun b!4800472 () Bool)

(assert (=> b!4800472 (= e!2997713 (ListMap!6470 Nil!54314))))

(assert (= (and d!1536961 c!818208) b!4800471))

(assert (= (and d!1536961 (not c!818208)) b!4800472))

(declare-fun m!5784166 () Bool)

(assert (=> d!1536961 m!5784166))

(declare-fun m!5784168 () Bool)

(assert (=> d!1536961 m!5784168))

(declare-fun m!5784170 () Bool)

(assert (=> b!4800471 m!5784170))

(assert (=> b!4800471 m!5784170))

(declare-fun m!5784172 () Bool)

(assert (=> b!4800471 m!5784172))

(assert (=> b!4800427 d!1536961))

(declare-fun d!1536965 () Bool)

(declare-fun e!2997718 () Bool)

(assert (=> d!1536965 e!2997718))

(declare-fun res!2041651 () Bool)

(assert (=> d!1536965 (=> res!2041651 e!2997718)))

(declare-fun lt!1956237 () Bool)

(assert (=> d!1536965 (= res!2041651 (not lt!1956237))))

(declare-fun lt!1956238 () Bool)

(assert (=> d!1536965 (= lt!1956237 lt!1956238)))

(declare-fun lt!1956240 () Unit!140672)

(declare-fun e!2997719 () Unit!140672)

(assert (=> d!1536965 (= lt!1956240 e!2997719)))

(declare-fun c!818211 () Bool)

(assert (=> d!1536965 (= c!818211 lt!1956238)))

(declare-fun containsKey!4027 (List!54439 (_ BitVec 64)) Bool)

(assert (=> d!1536965 (= lt!1956238 (containsKey!4027 (toList!6997 lt!1956204) lt!1956200))))

(assert (=> d!1536965 (= (contains!17966 lt!1956204 lt!1956200) lt!1956237)))

(declare-fun b!4800479 () Bool)

(declare-fun lt!1956239 () Unit!140672)

(assert (=> b!4800479 (= e!2997719 lt!1956239)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2183 (List!54439 (_ BitVec 64)) Unit!140672)

(assert (=> b!4800479 (= lt!1956239 (lemmaContainsKeyImpliesGetValueByKeyDefined!2183 (toList!6997 lt!1956204) lt!1956200))))

(declare-datatypes ((Option!13177 0))(
  ( (None!13176) (Some!13176 (v!48501 List!54438)) )
))
(declare-fun isDefined!10318 (Option!13177) Bool)

(declare-fun getValueByKey!2392 (List!54439 (_ BitVec 64)) Option!13177)

(assert (=> b!4800479 (isDefined!10318 (getValueByKey!2392 (toList!6997 lt!1956204) lt!1956200))))

(declare-fun b!4800480 () Bool)

(declare-fun Unit!140678 () Unit!140672)

(assert (=> b!4800480 (= e!2997719 Unit!140678)))

(declare-fun b!4800481 () Bool)

(assert (=> b!4800481 (= e!2997718 (isDefined!10318 (getValueByKey!2392 (toList!6997 lt!1956204) lt!1956200)))))

(assert (= (and d!1536965 c!818211) b!4800479))

(assert (= (and d!1536965 (not c!818211)) b!4800480))

(assert (= (and d!1536965 (not res!2041651)) b!4800481))

(declare-fun m!5784174 () Bool)

(assert (=> d!1536965 m!5784174))

(declare-fun m!5784176 () Bool)

(assert (=> b!4800479 m!5784176))

(declare-fun m!5784178 () Bool)

(assert (=> b!4800479 m!5784178))

(assert (=> b!4800479 m!5784178))

(declare-fun m!5784180 () Bool)

(assert (=> b!4800479 m!5784180))

(assert (=> b!4800481 m!5784178))

(assert (=> b!4800481 m!5784178))

(assert (=> b!4800481 m!5784180))

(assert (=> b!4800427 d!1536965))

(declare-fun b!4800500 () Bool)

(declare-fun e!2997733 () Unit!140672)

(declare-fun e!2997736 () Unit!140672)

(assert (=> b!4800500 (= e!2997733 e!2997736)))

(declare-fun c!818220 () Bool)

(declare-fun call!335359 () Bool)

(assert (=> b!4800500 (= c!818220 call!335359)))

(declare-fun b!4800501 () Bool)

(declare-fun Unit!140679 () Unit!140672)

(assert (=> b!4800501 (= e!2997736 Unit!140679)))

(declare-fun b!4800502 () Bool)

(declare-fun lt!1956261 () Unit!140672)

(assert (=> b!4800502 (= e!2997733 lt!1956261)))

(declare-fun lt!1956262 () Unit!140672)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2184 (List!54438 K!15887) Unit!140672)

(assert (=> b!4800502 (= lt!1956262 (lemmaContainsKeyImpliesGetValueByKeyDefined!2184 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(declare-datatypes ((Option!13178 0))(
  ( (None!13177) (Some!13177 (v!48502 V!16133)) )
))
(declare-fun isDefined!10319 (Option!13178) Bool)

(declare-fun getValueByKey!2393 (List!54438 K!15887) Option!13178)

(assert (=> b!4800502 (isDefined!10319 (getValueByKey!2393 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(declare-fun lt!1956257 () Unit!140672)

(assert (=> b!4800502 (= lt!1956257 lt!1956262)))

(declare-fun lemmaInListThenGetKeysListContains!1092 (List!54438 K!15887) Unit!140672)

(assert (=> b!4800502 (= lt!1956261 (lemmaInListThenGetKeysListContains!1092 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(assert (=> b!4800502 call!335359))

(declare-fun d!1536967 () Bool)

(declare-fun e!2997734 () Bool)

(assert (=> d!1536967 e!2997734))

(declare-fun res!2041658 () Bool)

(assert (=> d!1536967 (=> res!2041658 e!2997734)))

(declare-fun e!2997737 () Bool)

(assert (=> d!1536967 (= res!2041658 e!2997737)))

(declare-fun res!2041659 () Bool)

(assert (=> d!1536967 (=> (not res!2041659) (not e!2997737))))

(declare-fun lt!1956264 () Bool)

(assert (=> d!1536967 (= res!2041659 (not lt!1956264))))

(declare-fun lt!1956258 () Bool)

(assert (=> d!1536967 (= lt!1956264 lt!1956258)))

(declare-fun lt!1956260 () Unit!140672)

(assert (=> d!1536967 (= lt!1956260 e!2997733)))

(declare-fun c!818219 () Bool)

(assert (=> d!1536967 (= c!818219 lt!1956258)))

(declare-fun containsKey!4028 (List!54438 K!15887) Bool)

(assert (=> d!1536967 (= lt!1956258 (containsKey!4028 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(assert (=> d!1536967 (= (contains!17965 (extractMap!2486 (toList!6997 lt!1956204)) key!5896) lt!1956264)))

(declare-fun b!4800503 () Bool)

(declare-datatypes ((List!54442 0))(
  ( (Nil!54318) (Cons!54318 (h!60750 K!15887) (t!361892 List!54442)) )
))
(declare-fun e!2997732 () List!54442)

(declare-fun getKeysList!1097 (List!54438) List!54442)

(assert (=> b!4800503 (= e!2997732 (getKeysList!1097 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204)))))))

(declare-fun b!4800504 () Bool)

(declare-fun e!2997735 () Bool)

(declare-fun contains!17969 (List!54442 K!15887) Bool)

(declare-fun keys!19856 (ListMap!6469) List!54442)

(assert (=> b!4800504 (= e!2997735 (contains!17969 (keys!19856 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(declare-fun bm!335354 () Bool)

(assert (=> bm!335354 (= call!335359 (contains!17969 e!2997732 key!5896))))

(declare-fun c!818218 () Bool)

(assert (=> bm!335354 (= c!818218 c!818219)))

(declare-fun b!4800505 () Bool)

(assert (=> b!4800505 false))

(declare-fun lt!1956259 () Unit!140672)

(declare-fun lt!1956263 () Unit!140672)

(assert (=> b!4800505 (= lt!1956259 lt!1956263)))

(assert (=> b!4800505 (containsKey!4028 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1097 (List!54438 K!15887) Unit!140672)

(assert (=> b!4800505 (= lt!1956263 (lemmaInGetKeysListThenContainsKey!1097 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896))))

(declare-fun Unit!140680 () Unit!140672)

(assert (=> b!4800505 (= e!2997736 Unit!140680)))

(declare-fun b!4800506 () Bool)

(assert (=> b!4800506 (= e!2997737 (not (contains!17969 (keys!19856 (extractMap!2486 (toList!6997 lt!1956204))) key!5896)))))

(declare-fun b!4800507 () Bool)

(assert (=> b!4800507 (= e!2997732 (keys!19856 (extractMap!2486 (toList!6997 lt!1956204))))))

(declare-fun b!4800508 () Bool)

(assert (=> b!4800508 (= e!2997734 e!2997735)))

(declare-fun res!2041660 () Bool)

(assert (=> b!4800508 (=> (not res!2041660) (not e!2997735))))

(assert (=> b!4800508 (= res!2041660 (isDefined!10319 (getValueByKey!2393 (toList!6998 (extractMap!2486 (toList!6997 lt!1956204))) key!5896)))))

(assert (= (and d!1536967 c!818219) b!4800502))

(assert (= (and d!1536967 (not c!818219)) b!4800500))

(assert (= (and b!4800500 c!818220) b!4800505))

(assert (= (and b!4800500 (not c!818220)) b!4800501))

(assert (= (or b!4800502 b!4800500) bm!335354))

(assert (= (and bm!335354 c!818218) b!4800503))

(assert (= (and bm!335354 (not c!818218)) b!4800507))

(assert (= (and d!1536967 res!2041659) b!4800506))

(assert (= (and d!1536967 (not res!2041658)) b!4800508))

(assert (= (and b!4800508 res!2041660) b!4800504))

(assert (=> b!4800507 m!5784082))

(declare-fun m!5784182 () Bool)

(assert (=> b!4800507 m!5784182))

(declare-fun m!5784184 () Bool)

(assert (=> b!4800502 m!5784184))

(declare-fun m!5784186 () Bool)

(assert (=> b!4800502 m!5784186))

(assert (=> b!4800502 m!5784186))

(declare-fun m!5784188 () Bool)

(assert (=> b!4800502 m!5784188))

(declare-fun m!5784190 () Bool)

(assert (=> b!4800502 m!5784190))

(declare-fun m!5784192 () Bool)

(assert (=> b!4800505 m!5784192))

(declare-fun m!5784194 () Bool)

(assert (=> b!4800505 m!5784194))

(assert (=> d!1536967 m!5784192))

(assert (=> b!4800506 m!5784082))

(assert (=> b!4800506 m!5784182))

(assert (=> b!4800506 m!5784182))

(declare-fun m!5784196 () Bool)

(assert (=> b!4800506 m!5784196))

(declare-fun m!5784198 () Bool)

(assert (=> bm!335354 m!5784198))

(declare-fun m!5784200 () Bool)

(assert (=> b!4800503 m!5784200))

(assert (=> b!4800504 m!5784082))

(assert (=> b!4800504 m!5784182))

(assert (=> b!4800504 m!5784182))

(assert (=> b!4800504 m!5784196))

(assert (=> b!4800508 m!5784186))

(assert (=> b!4800508 m!5784186))

(assert (=> b!4800508 m!5784188))

(assert (=> b!4800427 d!1536967))

(declare-fun bs!1157353 () Bool)

(declare-fun d!1536969 () Bool)

(assert (= bs!1157353 (and d!1536969 start!495376)))

(declare-fun lambda!232318 () Int)

(assert (=> bs!1157353 (= lambda!232318 lambda!232304)))

(declare-fun bs!1157354 () Bool)

(assert (= bs!1157354 (and d!1536969 d!1536955)))

(assert (=> bs!1157354 (not (= lambda!232318 lambda!232312))))

(declare-fun bs!1157355 () Bool)

(assert (= bs!1157355 (and d!1536969 d!1536961)))

(assert (=> bs!1157355 (= lambda!232318 lambda!232315)))

(assert (=> d!1536969 (contains!17965 (extractMap!2486 (toList!6997 lt!1956204)) key!5896)))

(declare-fun lt!1956283 () Unit!140672)

(declare-fun choose!34680 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> d!1536969 (= lt!1956283 (choose!34680 lt!1956204 key!5896 hashF!1559))))

(assert (=> d!1536969 (forall!12326 (toList!6997 lt!1956204) lambda!232318)))

(assert (=> d!1536969 (= (lemmaListContainsThenExtractedMapContains!709 lt!1956204 key!5896 hashF!1559) lt!1956283)))

(declare-fun bs!1157356 () Bool)

(assert (= bs!1157356 d!1536969))

(assert (=> bs!1157356 m!5784082))

(assert (=> bs!1157356 m!5784082))

(assert (=> bs!1157356 m!5784086))

(declare-fun m!5784202 () Bool)

(assert (=> bs!1157356 m!5784202))

(declare-fun m!5784204 () Bool)

(assert (=> bs!1157356 m!5784204))

(assert (=> b!4800427 d!1536969))

(declare-fun d!1536971 () Bool)

(declare-fun res!2041674 () Bool)

(declare-fun e!2997760 () Bool)

(assert (=> d!1536971 (=> res!2041674 e!2997760)))

(assert (=> d!1536971 (= res!2041674 (and (is-Cons!54314 (_2!31797 (h!60747 (toList!6997 lm!2473)))) (= (_1!31796 (h!60746 (_2!31797 (h!60747 (toList!6997 lm!2473))))) key!5896)))))

(assert (=> d!1536971 (= (containsKey!4025 (_2!31797 (h!60747 (toList!6997 lm!2473))) key!5896) e!2997760)))

(declare-fun b!4800540 () Bool)

(declare-fun e!2997761 () Bool)

(assert (=> b!4800540 (= e!2997760 e!2997761)))

(declare-fun res!2041675 () Bool)

(assert (=> b!4800540 (=> (not res!2041675) (not e!2997761))))

(assert (=> b!4800540 (= res!2041675 (is-Cons!54314 (_2!31797 (h!60747 (toList!6997 lm!2473)))))))

(declare-fun b!4800541 () Bool)

(assert (=> b!4800541 (= e!2997761 (containsKey!4025 (t!361888 (_2!31797 (h!60747 (toList!6997 lm!2473)))) key!5896))))

(assert (= (and d!1536971 (not res!2041674)) b!4800540))

(assert (= (and b!4800540 res!2041675) b!4800541))

(declare-fun m!5784206 () Bool)

(assert (=> b!4800541 m!5784206))

(assert (=> b!4800422 d!1536971))

(declare-fun d!1536973 () Bool)

(declare-fun res!2041676 () Bool)

(declare-fun e!2997762 () Bool)

(assert (=> d!1536973 (=> res!2041676 e!2997762)))

(assert (=> d!1536973 (= res!2041676 (is-Nil!54315 (toList!6997 lm!2473)))))

(assert (=> d!1536973 (= (forall!12326 (toList!6997 lm!2473) lambda!232304) e!2997762)))

(declare-fun b!4800542 () Bool)

(declare-fun e!2997763 () Bool)

(assert (=> b!4800542 (= e!2997762 e!2997763)))

(declare-fun res!2041677 () Bool)

(assert (=> b!4800542 (=> (not res!2041677) (not e!2997763))))

(assert (=> b!4800542 (= res!2041677 (dynLambda!22091 lambda!232304 (h!60747 (toList!6997 lm!2473))))))

(declare-fun b!4800543 () Bool)

(assert (=> b!4800543 (= e!2997763 (forall!12326 (t!361889 (toList!6997 lm!2473)) lambda!232304))))

(assert (= (and d!1536973 (not res!2041676)) b!4800542))

(assert (= (and b!4800542 res!2041677) b!4800543))

(declare-fun b_lambda!187581 () Bool)

(assert (=> (not b_lambda!187581) (not b!4800542)))

(declare-fun m!5784208 () Bool)

(assert (=> b!4800542 m!5784208))

(declare-fun m!5784210 () Bool)

(assert (=> b!4800543 m!5784210))

(assert (=> start!495376 d!1536973))

(declare-fun d!1536975 () Bool)

(declare-fun isStrictlySorted!898 (List!54439) Bool)

(assert (=> d!1536975 (= (inv!69914 lm!2473) (isStrictlySorted!898 (toList!6997 lm!2473)))))

(declare-fun bs!1157357 () Bool)

(assert (= bs!1157357 d!1536975))

(declare-fun m!5784214 () Bool)

(assert (=> bs!1157357 m!5784214))

(assert (=> start!495376 d!1536975))

(declare-fun b!4800544 () Bool)

(declare-fun e!2997765 () Unit!140672)

(declare-fun e!2997768 () Unit!140672)

(assert (=> b!4800544 (= e!2997765 e!2997768)))

(declare-fun c!818232 () Bool)

(declare-fun call!335363 () Bool)

(assert (=> b!4800544 (= c!818232 call!335363)))

(declare-fun b!4800545 () Bool)

(declare-fun Unit!140681 () Unit!140672)

(assert (=> b!4800545 (= e!2997768 Unit!140681)))

(declare-fun b!4800546 () Bool)

(declare-fun lt!1956296 () Unit!140672)

(assert (=> b!4800546 (= e!2997765 lt!1956296)))

(declare-fun lt!1956297 () Unit!140672)

(assert (=> b!4800546 (= lt!1956297 (lemmaContainsKeyImpliesGetValueByKeyDefined!2184 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(assert (=> b!4800546 (isDefined!10319 (getValueByKey!2393 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(declare-fun lt!1956292 () Unit!140672)

(assert (=> b!4800546 (= lt!1956292 lt!1956297)))

(assert (=> b!4800546 (= lt!1956296 (lemmaInListThenGetKeysListContains!1092 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(assert (=> b!4800546 call!335363))

(declare-fun d!1536977 () Bool)

(declare-fun e!2997766 () Bool)

(assert (=> d!1536977 e!2997766))

(declare-fun res!2041678 () Bool)

(assert (=> d!1536977 (=> res!2041678 e!2997766)))

(declare-fun e!2997769 () Bool)

(assert (=> d!1536977 (= res!2041678 e!2997769)))

(declare-fun res!2041679 () Bool)

(assert (=> d!1536977 (=> (not res!2041679) (not e!2997769))))

(declare-fun lt!1956299 () Bool)

(assert (=> d!1536977 (= res!2041679 (not lt!1956299))))

(declare-fun lt!1956293 () Bool)

(assert (=> d!1536977 (= lt!1956299 lt!1956293)))

(declare-fun lt!1956295 () Unit!140672)

(assert (=> d!1536977 (= lt!1956295 e!2997765)))

(declare-fun c!818231 () Bool)

(assert (=> d!1536977 (= c!818231 lt!1956293)))

(assert (=> d!1536977 (= lt!1956293 (containsKey!4028 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(assert (=> d!1536977 (= (contains!17965 (extractMap!2486 (toList!6997 lm!2473)) key!5896) lt!1956299)))

(declare-fun b!4800547 () Bool)

(declare-fun e!2997764 () List!54442)

(assert (=> b!4800547 (= e!2997764 (getKeysList!1097 (toList!6998 (extractMap!2486 (toList!6997 lm!2473)))))))

(declare-fun b!4800548 () Bool)

(declare-fun e!2997767 () Bool)

(assert (=> b!4800548 (= e!2997767 (contains!17969 (keys!19856 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(declare-fun bm!335358 () Bool)

(assert (=> bm!335358 (= call!335363 (contains!17969 e!2997764 key!5896))))

(declare-fun c!818230 () Bool)

(assert (=> bm!335358 (= c!818230 c!818231)))

(declare-fun b!4800549 () Bool)

(assert (=> b!4800549 false))

(declare-fun lt!1956294 () Unit!140672)

(declare-fun lt!1956298 () Unit!140672)

(assert (=> b!4800549 (= lt!1956294 lt!1956298)))

(assert (=> b!4800549 (containsKey!4028 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896)))

(assert (=> b!4800549 (= lt!1956298 (lemmaInGetKeysListThenContainsKey!1097 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896))))

(declare-fun Unit!140682 () Unit!140672)

(assert (=> b!4800549 (= e!2997768 Unit!140682)))

(declare-fun b!4800550 () Bool)

(assert (=> b!4800550 (= e!2997769 (not (contains!17969 (keys!19856 (extractMap!2486 (toList!6997 lm!2473))) key!5896)))))

(declare-fun b!4800551 () Bool)

(assert (=> b!4800551 (= e!2997764 (keys!19856 (extractMap!2486 (toList!6997 lm!2473))))))

(declare-fun b!4800552 () Bool)

(assert (=> b!4800552 (= e!2997766 e!2997767)))

(declare-fun res!2041680 () Bool)

(assert (=> b!4800552 (=> (not res!2041680) (not e!2997767))))

(assert (=> b!4800552 (= res!2041680 (isDefined!10319 (getValueByKey!2393 (toList!6998 (extractMap!2486 (toList!6997 lm!2473))) key!5896)))))

(assert (= (and d!1536977 c!818231) b!4800546))

(assert (= (and d!1536977 (not c!818231)) b!4800544))

(assert (= (and b!4800544 c!818232) b!4800549))

(assert (= (and b!4800544 (not c!818232)) b!4800545))

(assert (= (or b!4800546 b!4800544) bm!335358))

(assert (= (and bm!335358 c!818230) b!4800547))

(assert (= (and bm!335358 (not c!818230)) b!4800551))

(assert (= (and d!1536977 res!2041679) b!4800550))

(assert (= (and d!1536977 (not res!2041678)) b!4800552))

(assert (= (and b!4800552 res!2041680) b!4800548))

(assert (=> b!4800551 m!5784092))

(declare-fun m!5784234 () Bool)

(assert (=> b!4800551 m!5784234))

(declare-fun m!5784236 () Bool)

(assert (=> b!4800546 m!5784236))

(declare-fun m!5784238 () Bool)

(assert (=> b!4800546 m!5784238))

(assert (=> b!4800546 m!5784238))

(declare-fun m!5784240 () Bool)

(assert (=> b!4800546 m!5784240))

(declare-fun m!5784242 () Bool)

(assert (=> b!4800546 m!5784242))

(declare-fun m!5784244 () Bool)

(assert (=> b!4800549 m!5784244))

(declare-fun m!5784246 () Bool)

(assert (=> b!4800549 m!5784246))

(assert (=> d!1536977 m!5784244))

(assert (=> b!4800550 m!5784092))

(assert (=> b!4800550 m!5784234))

(assert (=> b!4800550 m!5784234))

(declare-fun m!5784248 () Bool)

(assert (=> b!4800550 m!5784248))

(declare-fun m!5784250 () Bool)

(assert (=> bm!335358 m!5784250))

(declare-fun m!5784252 () Bool)

(assert (=> b!4800547 m!5784252))

(assert (=> b!4800548 m!5784092))

(assert (=> b!4800548 m!5784234))

(assert (=> b!4800548 m!5784234))

(assert (=> b!4800548 m!5784248))

(assert (=> b!4800552 m!5784238))

(assert (=> b!4800552 m!5784238))

(assert (=> b!4800552 m!5784240))

(assert (=> b!4800426 d!1536977))

(declare-fun bs!1157358 () Bool)

(declare-fun d!1536981 () Bool)

(assert (= bs!1157358 (and d!1536981 start!495376)))

(declare-fun lambda!232319 () Int)

(assert (=> bs!1157358 (= lambda!232319 lambda!232304)))

(declare-fun bs!1157359 () Bool)

(assert (= bs!1157359 (and d!1536981 d!1536955)))

(assert (=> bs!1157359 (not (= lambda!232319 lambda!232312))))

(declare-fun bs!1157360 () Bool)

(assert (= bs!1157360 (and d!1536981 d!1536961)))

(assert (=> bs!1157360 (= lambda!232319 lambda!232315)))

(declare-fun bs!1157361 () Bool)

(assert (= bs!1157361 (and d!1536981 d!1536969)))

(assert (=> bs!1157361 (= lambda!232319 lambda!232318)))

(declare-fun lt!1956300 () ListMap!6469)

(assert (=> d!1536981 (invariantList!1751 (toList!6998 lt!1956300))))

(declare-fun e!2997770 () ListMap!6469)

(assert (=> d!1536981 (= lt!1956300 e!2997770)))

(declare-fun c!818233 () Bool)

(assert (=> d!1536981 (= c!818233 (is-Cons!54315 (toList!6997 lm!2473)))))

(assert (=> d!1536981 (forall!12326 (toList!6997 lm!2473) lambda!232319)))

(assert (=> d!1536981 (= (extractMap!2486 (toList!6997 lm!2473)) lt!1956300)))

(declare-fun b!4800553 () Bool)

(assert (=> b!4800553 (= e!2997770 (addToMapMapFromBucket!1728 (_2!31797 (h!60747 (toList!6997 lm!2473))) (extractMap!2486 (t!361889 (toList!6997 lm!2473)))))))

(declare-fun b!4800554 () Bool)

(assert (=> b!4800554 (= e!2997770 (ListMap!6470 Nil!54314))))

(assert (= (and d!1536981 c!818233) b!4800553))

(assert (= (and d!1536981 (not c!818233)) b!4800554))

(declare-fun m!5784254 () Bool)

(assert (=> d!1536981 m!5784254))

(declare-fun m!5784256 () Bool)

(assert (=> d!1536981 m!5784256))

(declare-fun m!5784258 () Bool)

(assert (=> b!4800553 m!5784258))

(assert (=> b!4800553 m!5784258))

(declare-fun m!5784260 () Bool)

(assert (=> b!4800553 m!5784260))

(assert (=> b!4800426 d!1536981))

(declare-fun d!1536983 () Bool)

(declare-fun isEmpty!29501 (Option!13175) Bool)

(assert (=> d!1536983 (= (isDefined!10316 (getPair!931 (apply!13032 lm!2473 lt!1956200) key!5896)) (not (isEmpty!29501 (getPair!931 (apply!13032 lm!2473 lt!1956200) key!5896))))))

(declare-fun bs!1157362 () Bool)

(assert (= bs!1157362 d!1536983))

(assert (=> bs!1157362 m!5784072))

(declare-fun m!5784262 () Bool)

(assert (=> bs!1157362 m!5784262))

(assert (=> b!4800419 d!1536983))

(declare-fun lt!1956303 () Option!13175)

(declare-fun e!2997784 () Bool)

(declare-fun b!4800571 () Bool)

(declare-fun contains!17970 (List!54438 tuple2!57004) Bool)

(declare-fun get!18544 (Option!13175) tuple2!57004)

(assert (=> b!4800571 (= e!2997784 (contains!17970 (apply!13032 lm!2473 lt!1956200) (get!18544 lt!1956303)))))

(declare-fun b!4800572 () Bool)

(declare-fun e!2997782 () Bool)

(assert (=> b!4800572 (= e!2997782 e!2997784)))

(declare-fun res!2041690 () Bool)

(assert (=> b!4800572 (=> (not res!2041690) (not e!2997784))))

(assert (=> b!4800572 (= res!2041690 (isDefined!10316 lt!1956303))))

(declare-fun d!1536985 () Bool)

(assert (=> d!1536985 e!2997782))

(declare-fun res!2041689 () Bool)

(assert (=> d!1536985 (=> res!2041689 e!2997782)))

(declare-fun e!2997785 () Bool)

(assert (=> d!1536985 (= res!2041689 e!2997785)))

(declare-fun res!2041692 () Bool)

(assert (=> d!1536985 (=> (not res!2041692) (not e!2997785))))

(assert (=> d!1536985 (= res!2041692 (isEmpty!29501 lt!1956303))))

(declare-fun e!2997783 () Option!13175)

(assert (=> d!1536985 (= lt!1956303 e!2997783)))

(declare-fun c!818238 () Bool)

(assert (=> d!1536985 (= c!818238 (and (is-Cons!54314 (apply!13032 lm!2473 lt!1956200)) (= (_1!31796 (h!60746 (apply!13032 lm!2473 lt!1956200))) key!5896)))))

(declare-fun noDuplicateKeys!2360 (List!54438) Bool)

(assert (=> d!1536985 (noDuplicateKeys!2360 (apply!13032 lm!2473 lt!1956200))))

(assert (=> d!1536985 (= (getPair!931 (apply!13032 lm!2473 lt!1956200) key!5896) lt!1956303)))

(declare-fun e!2997781 () Option!13175)

(declare-fun b!4800573 () Bool)

(assert (=> b!4800573 (= e!2997781 (getPair!931 (t!361888 (apply!13032 lm!2473 lt!1956200)) key!5896))))

(declare-fun b!4800574 () Bool)

(assert (=> b!4800574 (= e!2997783 e!2997781)))

(declare-fun c!818239 () Bool)

(assert (=> b!4800574 (= c!818239 (is-Cons!54314 (apply!13032 lm!2473 lt!1956200)))))

(declare-fun b!4800575 () Bool)

(assert (=> b!4800575 (= e!2997785 (not (containsKey!4025 (apply!13032 lm!2473 lt!1956200) key!5896)))))

(declare-fun b!4800576 () Bool)

(declare-fun res!2041691 () Bool)

(assert (=> b!4800576 (=> (not res!2041691) (not e!2997784))))

(assert (=> b!4800576 (= res!2041691 (= (_1!31796 (get!18544 lt!1956303)) key!5896))))

(declare-fun b!4800577 () Bool)

(assert (=> b!4800577 (= e!2997781 None!13174)))

(declare-fun b!4800578 () Bool)

(assert (=> b!4800578 (= e!2997783 (Some!13174 (h!60746 (apply!13032 lm!2473 lt!1956200))))))

(assert (= (and d!1536985 c!818238) b!4800578))

(assert (= (and d!1536985 (not c!818238)) b!4800574))

(assert (= (and b!4800574 c!818239) b!4800573))

(assert (= (and b!4800574 (not c!818239)) b!4800577))

(assert (= (and d!1536985 res!2041692) b!4800575))

(assert (= (and d!1536985 (not res!2041689)) b!4800572))

(assert (= (and b!4800572 res!2041690) b!4800576))

(assert (= (and b!4800576 res!2041691) b!4800571))

(assert (=> b!4800575 m!5784070))

(declare-fun m!5784264 () Bool)

(assert (=> b!4800575 m!5784264))

(declare-fun m!5784266 () Bool)

(assert (=> b!4800572 m!5784266))

(declare-fun m!5784268 () Bool)

(assert (=> b!4800576 m!5784268))

(declare-fun m!5784270 () Bool)

(assert (=> d!1536985 m!5784270))

(assert (=> d!1536985 m!5784070))

(declare-fun m!5784272 () Bool)

(assert (=> d!1536985 m!5784272))

(declare-fun m!5784274 () Bool)

(assert (=> b!4800573 m!5784274))

(assert (=> b!4800571 m!5784268))

(assert (=> b!4800571 m!5784070))

(assert (=> b!4800571 m!5784268))

(declare-fun m!5784276 () Bool)

(assert (=> b!4800571 m!5784276))

(assert (=> b!4800419 d!1536985))

(declare-fun d!1536987 () Bool)

(declare-fun get!18545 (Option!13177) List!54438)

(assert (=> d!1536987 (= (apply!13032 lm!2473 lt!1956200) (get!18545 (getValueByKey!2392 (toList!6997 lm!2473) lt!1956200)))))

(declare-fun bs!1157363 () Bool)

(assert (= bs!1157363 d!1536987))

(declare-fun m!5784278 () Bool)

(assert (=> bs!1157363 m!5784278))

(assert (=> bs!1157363 m!5784278))

(declare-fun m!5784280 () Bool)

(assert (=> bs!1157363 m!5784280))

(assert (=> b!4800419 d!1536987))

(declare-fun d!1536989 () Bool)

(declare-fun e!2997786 () Bool)

(assert (=> d!1536989 e!2997786))

(declare-fun res!2041693 () Bool)

(assert (=> d!1536989 (=> res!2041693 e!2997786)))

(declare-fun lt!1956304 () Bool)

(assert (=> d!1536989 (= res!2041693 (not lt!1956304))))

(declare-fun lt!1956305 () Bool)

(assert (=> d!1536989 (= lt!1956304 lt!1956305)))

(declare-fun lt!1956307 () Unit!140672)

(declare-fun e!2997787 () Unit!140672)

(assert (=> d!1536989 (= lt!1956307 e!2997787)))

(declare-fun c!818240 () Bool)

(assert (=> d!1536989 (= c!818240 lt!1956305)))

(assert (=> d!1536989 (= lt!1956305 (containsKey!4027 (toList!6997 lm!2473) lt!1956200))))

(assert (=> d!1536989 (= (contains!17966 lm!2473 lt!1956200) lt!1956304)))

(declare-fun b!4800579 () Bool)

(declare-fun lt!1956306 () Unit!140672)

(assert (=> b!4800579 (= e!2997787 lt!1956306)))

(assert (=> b!4800579 (= lt!1956306 (lemmaContainsKeyImpliesGetValueByKeyDefined!2183 (toList!6997 lm!2473) lt!1956200))))

(assert (=> b!4800579 (isDefined!10318 (getValueByKey!2392 (toList!6997 lm!2473) lt!1956200))))

(declare-fun b!4800580 () Bool)

(declare-fun Unit!140683 () Unit!140672)

(assert (=> b!4800580 (= e!2997787 Unit!140683)))

(declare-fun b!4800581 () Bool)

(assert (=> b!4800581 (= e!2997786 (isDefined!10318 (getValueByKey!2392 (toList!6997 lm!2473) lt!1956200)))))

(assert (= (and d!1536989 c!818240) b!4800579))

(assert (= (and d!1536989 (not c!818240)) b!4800580))

(assert (= (and d!1536989 (not res!2041693)) b!4800581))

(declare-fun m!5784282 () Bool)

(assert (=> d!1536989 m!5784282))

(declare-fun m!5784284 () Bool)

(assert (=> b!4800579 m!5784284))

(assert (=> b!4800579 m!5784278))

(assert (=> b!4800579 m!5784278))

(declare-fun m!5784286 () Bool)

(assert (=> b!4800579 m!5784286))

(assert (=> b!4800581 m!5784278))

(assert (=> b!4800581 m!5784278))

(assert (=> b!4800581 m!5784286))

(assert (=> b!4800425 d!1536989))

(declare-fun d!1536991 () Bool)

(declare-fun res!2041700 () Bool)

(declare-fun e!2997795 () Bool)

(assert (=> d!1536991 (=> res!2041700 e!2997795)))

(declare-fun e!2997794 () Bool)

(assert (=> d!1536991 (= res!2041700 e!2997794)))

(declare-fun res!2041702 () Bool)

(assert (=> d!1536991 (=> (not res!2041702) (not e!2997794))))

(assert (=> d!1536991 (= res!2041702 (is-Cons!54315 (toList!6997 lm!2473)))))

(assert (=> d!1536991 (= (containsKeyBiggerList!601 (toList!6997 lm!2473) key!5896) e!2997795)))

(declare-fun b!4800588 () Bool)

(assert (=> b!4800588 (= e!2997794 (containsKey!4025 (_2!31797 (h!60747 (toList!6997 lm!2473))) key!5896))))

(declare-fun b!4800589 () Bool)

(declare-fun e!2997796 () Bool)

(assert (=> b!4800589 (= e!2997795 e!2997796)))

(declare-fun res!2041701 () Bool)

(assert (=> b!4800589 (=> (not res!2041701) (not e!2997796))))

(assert (=> b!4800589 (= res!2041701 (is-Cons!54315 (toList!6997 lm!2473)))))

(declare-fun b!4800590 () Bool)

(assert (=> b!4800590 (= e!2997796 (containsKeyBiggerList!601 (t!361889 (toList!6997 lm!2473)) key!5896))))

(assert (= (and d!1536991 res!2041702) b!4800588))

(assert (= (and d!1536991 (not res!2041700)) b!4800589))

(assert (= (and b!4800589 res!2041701) b!4800590))

(assert (=> b!4800588 m!5784108))

(declare-fun m!5784288 () Bool)

(assert (=> b!4800590 m!5784288))

(assert (=> b!4800425 d!1536991))

(declare-fun bs!1157364 () Bool)

(declare-fun d!1536993 () Bool)

(assert (= bs!1157364 (and d!1536993 d!1536969)))

(declare-fun lambda!232322 () Int)

(assert (=> bs!1157364 (= lambda!232322 lambda!232318)))

(declare-fun bs!1157365 () Bool)

(assert (= bs!1157365 (and d!1536993 d!1536981)))

(assert (=> bs!1157365 (= lambda!232322 lambda!232319)))

(declare-fun bs!1157366 () Bool)

(assert (= bs!1157366 (and d!1536993 d!1536961)))

(assert (=> bs!1157366 (= lambda!232322 lambda!232315)))

(declare-fun bs!1157367 () Bool)

(assert (= bs!1157367 (and d!1536993 d!1536955)))

(assert (=> bs!1157367 (not (= lambda!232322 lambda!232312))))

(declare-fun bs!1157368 () Bool)

(assert (= bs!1157368 (and d!1536993 start!495376)))

(assert (=> bs!1157368 (= lambda!232322 lambda!232304)))

(assert (=> d!1536993 (containsKeyBiggerList!601 (toList!6997 lm!2473) key!5896)))

(declare-fun lt!1956310 () Unit!140672)

(declare-fun choose!34681 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> d!1536993 (= lt!1956310 (choose!34681 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536993 (forall!12326 (toList!6997 lm!2473) lambda!232322)))

(assert (=> d!1536993 (= (lemmaInLongMapThenContainsKeyBiggerList!341 lm!2473 key!5896 hashF!1559) lt!1956310)))

(declare-fun bs!1157369 () Bool)

(assert (= bs!1157369 d!1536993))

(assert (=> bs!1157369 m!5784098))

(declare-fun m!5784290 () Bool)

(assert (=> bs!1157369 m!5784290))

(declare-fun m!5784292 () Bool)

(assert (=> bs!1157369 m!5784292))

(assert (=> b!4800425 d!1536993))

(declare-fun bs!1157370 () Bool)

(declare-fun d!1536995 () Bool)

(assert (= bs!1157370 (and d!1536995 d!1536969)))

(declare-fun lambda!232326 () Int)

(assert (=> bs!1157370 (= lambda!232326 lambda!232318)))

(declare-fun bs!1157371 () Bool)

(assert (= bs!1157371 (and d!1536995 d!1536981)))

(assert (=> bs!1157371 (= lambda!232326 lambda!232319)))

(declare-fun bs!1157372 () Bool)

(assert (= bs!1157372 (and d!1536995 d!1536961)))

(assert (=> bs!1157372 (= lambda!232326 lambda!232315)))

(declare-fun bs!1157373 () Bool)

(assert (= bs!1157373 (and d!1536995 d!1536955)))

(assert (=> bs!1157373 (not (= lambda!232326 lambda!232312))))

(declare-fun bs!1157374 () Bool)

(assert (= bs!1157374 (and d!1536995 d!1536993)))

(assert (=> bs!1157374 (= lambda!232326 lambda!232322)))

(declare-fun bs!1157375 () Bool)

(assert (= bs!1157375 (and d!1536995 start!495376)))

(assert (=> bs!1157375 (= lambda!232326 lambda!232304)))

(declare-fun e!2997799 () Bool)

(assert (=> d!1536995 e!2997799))

(declare-fun res!2041705 () Bool)

(assert (=> d!1536995 (=> (not res!2041705) (not e!2997799))))

(assert (=> d!1536995 (= res!2041705 (contains!17966 lm!2473 (hash!5014 hashF!1559 key!5896)))))

(declare-fun lt!1956313 () Unit!140672)

(declare-fun choose!34682 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> d!1536995 (= lt!1956313 (choose!34682 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536995 (forall!12326 (toList!6997 lm!2473) lambda!232326)))

(assert (=> d!1536995 (= (lemmaInGenericMapThenInLongMap!363 lm!2473 key!5896 hashF!1559) lt!1956313)))

(declare-fun b!4800593 () Bool)

(assert (=> b!4800593 (= e!2997799 (isDefined!10316 (getPair!931 (apply!13032 lm!2473 (hash!5014 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536995 res!2041705) b!4800593))

(assert (=> d!1536995 m!5784100))

(assert (=> d!1536995 m!5784100))

(declare-fun m!5784294 () Bool)

(assert (=> d!1536995 m!5784294))

(declare-fun m!5784296 () Bool)

(assert (=> d!1536995 m!5784296))

(declare-fun m!5784298 () Bool)

(assert (=> d!1536995 m!5784298))

(assert (=> b!4800593 m!5784100))

(assert (=> b!4800593 m!5784100))

(declare-fun m!5784300 () Bool)

(assert (=> b!4800593 m!5784300))

(assert (=> b!4800593 m!5784300))

(declare-fun m!5784302 () Bool)

(assert (=> b!4800593 m!5784302))

(assert (=> b!4800593 m!5784302))

(declare-fun m!5784304 () Bool)

(assert (=> b!4800593 m!5784304))

(assert (=> b!4800425 d!1536995))

(declare-fun d!1536997 () Bool)

(declare-fun c!818246 () Bool)

(declare-fun e!2997808 () Bool)

(assert (=> d!1536997 (= c!818246 e!2997808)))

(declare-fun res!2041708 () Bool)

(assert (=> d!1536997 (=> (not res!2041708) (not e!2997808))))

(assert (=> d!1536997 (= res!2041708 (is-Cons!54315 (toList!6997 lm!2473)))))

(declare-fun e!2997807 () V!16133)

(assert (=> d!1536997 (= (getValue!147 (toList!6997 lm!2473) key!5896) e!2997807)))

(declare-fun b!4800608 () Bool)

(assert (=> b!4800608 (= e!2997808 (containsKey!4025 (_2!31797 (h!60747 (toList!6997 lm!2473))) key!5896))))

(declare-fun b!4800606 () Bool)

(assert (=> b!4800606 (= e!2997807 (_2!31796 (get!18544 (getPair!931 (_2!31797 (h!60747 (toList!6997 lm!2473))) key!5896))))))

(declare-fun b!4800607 () Bool)

(assert (=> b!4800607 (= e!2997807 (getValue!147 (t!361889 (toList!6997 lm!2473)) key!5896))))

(assert (= (and d!1536997 res!2041708) b!4800608))

(assert (= (and d!1536997 c!818246) b!4800606))

(assert (= (and d!1536997 (not c!818246)) b!4800607))

(assert (=> b!4800608 m!5784108))

(declare-fun m!5784306 () Bool)

(assert (=> b!4800606 m!5784306))

(assert (=> b!4800606 m!5784306))

(declare-fun m!5784308 () Bool)

(assert (=> b!4800606 m!5784308))

(declare-fun m!5784310 () Bool)

(assert (=> b!4800607 m!5784310))

(assert (=> b!4800425 d!1536997))

(declare-fun d!1536999 () Bool)

(declare-fun hash!5016 (Hashable!6959 K!15887) (_ BitVec 64))

(assert (=> d!1536999 (= (hash!5014 hashF!1559 key!5896) (hash!5016 hashF!1559 key!5896))))

(declare-fun bs!1157377 () Bool)

(assert (= bs!1157377 d!1536999))

(declare-fun m!5784312 () Bool)

(assert (=> bs!1157377 m!5784312))

(assert (=> b!4800425 d!1536999))

(declare-fun bs!1157378 () Bool)

(declare-fun d!1537001 () Bool)

(assert (= bs!1157378 (and d!1537001 d!1536969)))

(declare-fun lambda!232331 () Int)

(assert (=> bs!1157378 (= lambda!232331 lambda!232318)))

(declare-fun bs!1157379 () Bool)

(assert (= bs!1157379 (and d!1537001 d!1536981)))

(assert (=> bs!1157379 (= lambda!232331 lambda!232319)))

(declare-fun bs!1157380 () Bool)

(assert (= bs!1157380 (and d!1537001 d!1536961)))

(assert (=> bs!1157380 (= lambda!232331 lambda!232315)))

(declare-fun bs!1157381 () Bool)

(assert (= bs!1157381 (and d!1537001 d!1536995)))

(assert (=> bs!1157381 (= lambda!232331 lambda!232326)))

(declare-fun bs!1157382 () Bool)

(assert (= bs!1157382 (and d!1537001 d!1536955)))

(assert (=> bs!1157382 (not (= lambda!232331 lambda!232312))))

(declare-fun bs!1157383 () Bool)

(assert (= bs!1157383 (and d!1537001 d!1536993)))

(assert (=> bs!1157383 (= lambda!232331 lambda!232322)))

(declare-fun bs!1157384 () Bool)

(assert (= bs!1157384 (and d!1537001 start!495376)))

(assert (=> bs!1157384 (= lambda!232331 lambda!232304)))

(assert (=> d!1537001 (not (contains!17965 (extractMap!2486 (toList!6997 lt!1956204)) key!5896))))

(declare-fun lt!1956319 () Unit!140672)

(declare-fun choose!34683 (ListLongMap!5419 K!15887 Hashable!6959) Unit!140672)

(assert (=> d!1537001 (= lt!1956319 (choose!34683 lt!1956204 key!5896 hashF!1559))))

(assert (=> d!1537001 (forall!12326 (toList!6997 lt!1956204) lambda!232331)))

(assert (=> d!1537001 (= (lemmaHashNotInLongMapThenNotInGenerated!57 lt!1956204 key!5896 hashF!1559) lt!1956319)))

(declare-fun bs!1157385 () Bool)

(assert (= bs!1157385 d!1537001))

(assert (=> bs!1157385 m!5784082))

(assert (=> bs!1157385 m!5784082))

(assert (=> bs!1157385 m!5784086))

(declare-fun m!5784322 () Bool)

(assert (=> bs!1157385 m!5784322))

(declare-fun m!5784324 () Bool)

(assert (=> bs!1157385 m!5784324))

(assert (=> b!4800420 d!1537001))

(assert (=> b!4800420 d!1536967))

(assert (=> b!4800420 d!1536961))

(declare-fun b!4800613 () Bool)

(declare-fun e!2997811 () Bool)

(declare-fun tp!1358361 () Bool)

(declare-fun tp!1358362 () Bool)

(assert (=> b!4800613 (= e!2997811 (and tp!1358361 tp!1358362))))

(assert (=> b!4800423 (= tp!1358353 e!2997811)))

(assert (= (and b!4800423 (is-Cons!54315 (toList!6997 lm!2473))) b!4800613))

(declare-fun b_lambda!187583 () Bool)

(assert (= b_lambda!187579 (or start!495376 b_lambda!187583)))

(declare-fun bs!1157386 () Bool)

(declare-fun d!1537005 () Bool)

(assert (= bs!1157386 (and d!1537005 start!495376)))

(assert (=> bs!1157386 (= (dynLambda!22091 lambda!232304 (h!60747 (toList!6997 lt!1956204))) (noDuplicateKeys!2360 (_2!31797 (h!60747 (toList!6997 lt!1956204)))))))

(declare-fun m!5784326 () Bool)

(assert (=> bs!1157386 m!5784326))

(assert (=> b!4800465 d!1537005))

(declare-fun b_lambda!187585 () Bool)

(assert (= b_lambda!187581 (or start!495376 b_lambda!187585)))

(declare-fun bs!1157387 () Bool)

(declare-fun d!1537007 () Bool)

(assert (= bs!1157387 (and d!1537007 start!495376)))

(assert (=> bs!1157387 (= (dynLambda!22091 lambda!232304 (h!60747 (toList!6997 lm!2473))) (noDuplicateKeys!2360 (_2!31797 (h!60747 (toList!6997 lm!2473)))))))

(declare-fun m!5784328 () Bool)

(assert (=> bs!1157387 m!5784328))

(assert (=> b!4800542 d!1537007))

(push 1)

(assert (not b!4800606))

(assert (not d!1536983))

(assert (not b!4800572))

(assert (not b!4800543))

(assert (not b!4800479))

(assert (not b!4800613))

(assert tp_is_empty!33697)

(assert (not d!1536955))

(assert (not b!4800588))

(assert (not b!4800551))

(assert (not b!4800481))

(assert (not d!1536977))

(assert (not d!1536989))

(assert (not b!4800506))

(assert (not d!1536967))

(assert (not d!1536995))

(assert (not b!4800579))

(assert (not b!4800553))

(assert (not d!1536999))

(assert (not bs!1157387))

(assert (not b_lambda!187583))

(assert (not bm!335354))

(assert (not b!4800593))

(assert (not b!4800573))

(assert (not b!4800581))

(assert (not d!1536993))

(assert (not bs!1157386))

(assert (not b!4800549))

(assert (not b!4800508))

(assert (not b!4800550))

(assert (not b_lambda!187585))

(assert (not b!4800571))

(assert (not b!4800505))

(assert (not b!4800507))

(assert (not d!1537001))

(assert (not d!1536975))

(assert (not d!1536985))

(assert tp_is_empty!33699)

(assert (not d!1536987))

(assert (not d!1536969))

(assert (not b!4800607))

(assert (not b!4800466))

(assert (not b!4800576))

(assert (not b!4800503))

(assert (not b!4800548))

(assert (not d!1536981))

(assert (not bm!335358))

(assert (not b!4800504))

(assert (not b!4800541))

(assert (not b!4800590))

(assert (not b!4800575))

(assert (not d!1536959))

(assert (not d!1536961))

(assert (not b!4800502))

(assert (not b!4800608))

(assert (not b!4800546))

(assert (not b!4800471))

(assert (not b!4800552))

(assert (not b!4800547))

(assert (not d!1536965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

