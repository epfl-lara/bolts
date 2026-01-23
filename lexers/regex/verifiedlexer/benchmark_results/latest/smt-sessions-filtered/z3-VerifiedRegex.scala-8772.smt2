; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468684 () Bool)

(assert start!468684)

(declare-fun b!4656740 () Bool)

(declare-fun res!1958204 () Bool)

(declare-fun e!2905510 () Bool)

(assert (=> b!4656740 (=> (not res!1958204) (not e!2905510))))

(declare-datatypes ((Hashable!6043 0))(
  ( (HashableExt!6042 (__x!31746 Int)) )
))
(declare-fun hashF!1389 () Hashable!6043)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13265 0))(
  ( (K!13266 (val!18883 Int)) )
))
(declare-datatypes ((V!13511 0))(
  ( (V!13512 (val!18884 Int)) )
))
(declare-datatypes ((tuple2!53030 0))(
  ( (tuple2!53031 (_1!29809 K!13265) (_2!29809 V!13511)) )
))
(declare-datatypes ((List!52034 0))(
  ( (Nil!51910) (Cons!51910 (h!58056 tuple2!53030) (t!359150 List!52034)) )
))
(declare-fun newBucket!224 () List!52034)

(declare-fun allKeysSameHash!1500 (List!52034 (_ BitVec 64) Hashable!6043) Bool)

(assert (=> b!4656740 (= res!1958204 (allKeysSameHash!1500 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp_is_empty!29877 () Bool)

(declare-fun tp_is_empty!29879 () Bool)

(declare-fun e!2905511 () Bool)

(declare-fun b!4656741 () Bool)

(declare-fun tp!1343363 () Bool)

(assert (=> b!4656741 (= e!2905511 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343363))))

(declare-fun b!4656742 () Bool)

(declare-fun e!2905514 () Bool)

(declare-fun e!2905516 () Bool)

(assert (=> b!4656742 (= e!2905514 e!2905516)))

(declare-fun res!1958206 () Bool)

(assert (=> b!4656742 (=> (not res!1958206) (not e!2905516))))

(declare-datatypes ((ListMap!4561 0))(
  ( (ListMap!4562 (toList!5221 List!52034)) )
))
(declare-fun lt!1819330 () ListMap!4561)

(declare-fun key!4968 () K!13265)

(declare-fun contains!15053 (ListMap!4561 K!13265) Bool)

(assert (=> b!4656742 (= res!1958206 (contains!15053 lt!1819330 key!4968))))

(declare-datatypes ((tuple2!53032 0))(
  ( (tuple2!53033 (_1!29810 (_ BitVec 64)) (_2!29810 List!52034)) )
))
(declare-datatypes ((List!52035 0))(
  ( (Nil!51911) (Cons!51911 (h!58057 tuple2!53032) (t!359151 List!52035)) )
))
(declare-fun lt!1819331 () List!52035)

(declare-fun extractMap!1702 (List!52035) ListMap!4561)

(assert (=> b!4656742 (= lt!1819330 (extractMap!1702 lt!1819331))))

(declare-fun oldBucket!40 () List!52034)

(assert (=> b!4656742 (= lt!1819331 (Cons!51911 (tuple2!53033 hash!414 oldBucket!40) Nil!51911))))

(declare-fun res!1958205 () Bool)

(assert (=> start!468684 (=> (not res!1958205) (not e!2905514))))

(declare-fun noDuplicateKeys!1646 (List!52034) Bool)

(assert (=> start!468684 (= res!1958205 (noDuplicateKeys!1646 oldBucket!40))))

(assert (=> start!468684 e!2905514))

(assert (=> start!468684 true))

(assert (=> start!468684 e!2905511))

(assert (=> start!468684 tp_is_empty!29877))

(declare-fun e!2905512 () Bool)

(assert (=> start!468684 e!2905512))

(declare-fun b!4656743 () Bool)

(declare-fun e!2905515 () Bool)

(declare-datatypes ((Option!11826 0))(
  ( (None!11825) (Some!11825 (v!46099 tuple2!53030)) )
))
(declare-fun isDefined!9091 (Option!11826) Bool)

(declare-fun getPair!374 (List!52034 K!13265) Option!11826)

(assert (=> b!4656743 (= e!2905515 (isDefined!9091 (getPair!374 oldBucket!40 key!4968)))))

(declare-fun lt!1819326 () List!52034)

(assert (=> b!4656743 (isDefined!9091 (getPair!374 lt!1819326 key!4968))))

(declare-fun lambda!199486 () Int)

(declare-datatypes ((Unit!118752 0))(
  ( (Unit!118753) )
))
(declare-fun lt!1819329 () Unit!118752)

(declare-fun lt!1819324 () tuple2!53032)

(declare-fun forallContained!3232 (List!52035 Int tuple2!53032) Unit!118752)

(assert (=> b!4656743 (= lt!1819329 (forallContained!3232 lt!1819331 lambda!199486 lt!1819324))))

(declare-fun contains!15054 (List!52035 tuple2!53032) Bool)

(assert (=> b!4656743 (contains!15054 lt!1819331 lt!1819324)))

(declare-fun lt!1819323 () (_ BitVec 64))

(assert (=> b!4656743 (= lt!1819324 (tuple2!53033 lt!1819323 lt!1819326))))

(declare-fun lt!1819328 () Unit!118752)

(declare-datatypes ((ListLongMap!3775 0))(
  ( (ListLongMap!3776 (toList!5222 List!52035)) )
))
(declare-fun lt!1819325 () ListLongMap!3775)

(declare-fun lemmaGetValueImpliesTupleContained!179 (ListLongMap!3775 (_ BitVec 64) List!52034) Unit!118752)

(assert (=> b!4656743 (= lt!1819328 (lemmaGetValueImpliesTupleContained!179 lt!1819325 lt!1819323 lt!1819326))))

(declare-fun apply!12249 (ListLongMap!3775 (_ BitVec 64)) List!52034)

(assert (=> b!4656743 (= lt!1819326 (apply!12249 lt!1819325 lt!1819323))))

(declare-fun contains!15055 (ListLongMap!3775 (_ BitVec 64)) Bool)

(assert (=> b!4656743 (contains!15055 lt!1819325 lt!1819323)))

(declare-fun lt!1819333 () Unit!118752)

(declare-fun lemmaInGenMapThenLongMapContainsHash!580 (ListLongMap!3775 K!13265 Hashable!6043) Unit!118752)

(assert (=> b!4656743 (= lt!1819333 (lemmaInGenMapThenLongMapContainsHash!580 lt!1819325 key!4968 hashF!1389))))

(declare-fun lt!1819327 () Unit!118752)

(declare-fun lemmaInGenMapThenGetPairDefined!170 (ListLongMap!3775 K!13265 Hashable!6043) Unit!118752)

(assert (=> b!4656743 (= lt!1819327 (lemmaInGenMapThenGetPairDefined!170 lt!1819325 key!4968 hashF!1389))))

(assert (=> b!4656743 (= lt!1819325 (ListLongMap!3776 lt!1819331))))

(declare-fun tp!1343362 () Bool)

(declare-fun b!4656744 () Bool)

(assert (=> b!4656744 (= e!2905512 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343362))))

(declare-fun b!4656745 () Bool)

(assert (=> b!4656745 (= e!2905516 e!2905510)))

(declare-fun res!1958202 () Bool)

(assert (=> b!4656745 (=> (not res!1958202) (not e!2905510))))

(assert (=> b!4656745 (= res!1958202 (= lt!1819323 hash!414))))

(declare-fun hash!3785 (Hashable!6043 K!13265) (_ BitVec 64))

(assert (=> b!4656745 (= lt!1819323 (hash!3785 hashF!1389 key!4968))))

(declare-fun b!4656746 () Bool)

(declare-fun res!1958208 () Bool)

(assert (=> b!4656746 (=> (not res!1958208) (not e!2905514))))

(assert (=> b!4656746 (= res!1958208 (allKeysSameHash!1500 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4656747 () Bool)

(declare-fun res!1958207 () Bool)

(assert (=> b!4656747 (=> (not res!1958207) (not e!2905514))))

(assert (=> b!4656747 (= res!1958207 (noDuplicateKeys!1646 newBucket!224))))

(declare-fun b!4656748 () Bool)

(assert (=> b!4656748 (= e!2905510 (not e!2905515))))

(declare-fun res!1958201 () Bool)

(assert (=> b!4656748 (=> res!1958201 e!2905515)))

(get-info :version)

(assert (=> b!4656748 (= res!1958201 (or (and ((_ is Cons!51910) oldBucket!40) (= (_1!29809 (h!58056 oldBucket!40)) key!4968)) (not ((_ is Cons!51910) oldBucket!40)) (= (_1!29809 (h!58056 oldBucket!40)) key!4968)))))

(declare-fun e!2905513 () Bool)

(assert (=> b!4656748 e!2905513))

(declare-fun res!1958203 () Bool)

(assert (=> b!4656748 (=> (not res!1958203) (not e!2905513))))

(declare-fun lt!1819332 () ListMap!4561)

(declare-fun addToMapMapFromBucket!1103 (List!52034 ListMap!4561) ListMap!4561)

(assert (=> b!4656748 (= res!1958203 (= lt!1819330 (addToMapMapFromBucket!1103 oldBucket!40 lt!1819332)))))

(assert (=> b!4656748 (= lt!1819332 (extractMap!1702 Nil!51911))))

(assert (=> b!4656748 true))

(declare-fun b!4656749 () Bool)

(assert (=> b!4656749 (= e!2905513 (= lt!1819332 (ListMap!4562 Nil!51910)))))

(declare-fun b!4656750 () Bool)

(declare-fun res!1958200 () Bool)

(assert (=> b!4656750 (=> (not res!1958200) (not e!2905514))))

(declare-fun removePairForKey!1269 (List!52034 K!13265) List!52034)

(assert (=> b!4656750 (= res!1958200 (= (removePairForKey!1269 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!468684 res!1958205) b!4656747))

(assert (= (and b!4656747 res!1958207) b!4656750))

(assert (= (and b!4656750 res!1958200) b!4656746))

(assert (= (and b!4656746 res!1958208) b!4656742))

(assert (= (and b!4656742 res!1958206) b!4656745))

(assert (= (and b!4656745 res!1958202) b!4656740))

(assert (= (and b!4656740 res!1958204) b!4656748))

(assert (= (and b!4656748 res!1958203) b!4656749))

(assert (= (and b!4656748 (not res!1958201)) b!4656743))

(assert (= (and start!468684 ((_ is Cons!51910) oldBucket!40)) b!4656741))

(assert (= (and start!468684 ((_ is Cons!51910) newBucket!224)) b!4656744))

(declare-fun m!5537195 () Bool)

(assert (=> b!4656742 m!5537195))

(declare-fun m!5537197 () Bool)

(assert (=> b!4656742 m!5537197))

(declare-fun m!5537199 () Bool)

(assert (=> b!4656747 m!5537199))

(declare-fun m!5537201 () Bool)

(assert (=> b!4656746 m!5537201))

(declare-fun m!5537203 () Bool)

(assert (=> b!4656750 m!5537203))

(declare-fun m!5537205 () Bool)

(assert (=> b!4656740 m!5537205))

(declare-fun m!5537207 () Bool)

(assert (=> start!468684 m!5537207))

(declare-fun m!5537209 () Bool)

(assert (=> b!4656748 m!5537209))

(declare-fun m!5537211 () Bool)

(assert (=> b!4656748 m!5537211))

(declare-fun m!5537213 () Bool)

(assert (=> b!4656745 m!5537213))

(declare-fun m!5537215 () Bool)

(assert (=> b!4656743 m!5537215))

(declare-fun m!5537217 () Bool)

(assert (=> b!4656743 m!5537217))

(declare-fun m!5537219 () Bool)

(assert (=> b!4656743 m!5537219))

(declare-fun m!5537221 () Bool)

(assert (=> b!4656743 m!5537221))

(declare-fun m!5537223 () Bool)

(assert (=> b!4656743 m!5537223))

(declare-fun m!5537225 () Bool)

(assert (=> b!4656743 m!5537225))

(assert (=> b!4656743 m!5537219))

(declare-fun m!5537227 () Bool)

(assert (=> b!4656743 m!5537227))

(declare-fun m!5537229 () Bool)

(assert (=> b!4656743 m!5537229))

(declare-fun m!5537231 () Bool)

(assert (=> b!4656743 m!5537231))

(declare-fun m!5537233 () Bool)

(assert (=> b!4656743 m!5537233))

(assert (=> b!4656743 m!5537229))

(declare-fun m!5537235 () Bool)

(assert (=> b!4656743 m!5537235))

(check-sat (not b!4656748) tp_is_empty!29877 tp_is_empty!29879 (not start!468684) (not b!4656742) (not b!4656744) (not b!4656746) (not b!4656743) (not b!4656747) (not b!4656741) (not b!4656750) (not b!4656740) (not b!4656745))
(check-sat)
(get-model)

(declare-fun d!1477637 () Bool)

(assert (=> d!1477637 true))

(assert (=> d!1477637 true))

(declare-fun lambda!199489 () Int)

(declare-fun forall!11033 (List!52034 Int) Bool)

(assert (=> d!1477637 (= (allKeysSameHash!1500 oldBucket!40 hash!414 hashF!1389) (forall!11033 oldBucket!40 lambda!199489))))

(declare-fun bs!1065873 () Bool)

(assert (= bs!1065873 d!1477637))

(declare-fun m!5537237 () Bool)

(assert (=> bs!1065873 m!5537237))

(assert (=> b!4656746 d!1477637))

(declare-fun bs!1065874 () Bool)

(declare-fun d!1477639 () Bool)

(assert (= bs!1065874 (and d!1477639 d!1477637)))

(declare-fun lambda!199490 () Int)

(assert (=> bs!1065874 (= lambda!199490 lambda!199489)))

(assert (=> d!1477639 true))

(assert (=> d!1477639 true))

(assert (=> d!1477639 (= (allKeysSameHash!1500 newBucket!224 hash!414 hashF!1389) (forall!11033 newBucket!224 lambda!199490))))

(declare-fun bs!1065875 () Bool)

(assert (= bs!1065875 d!1477639))

(declare-fun m!5537239 () Bool)

(assert (=> bs!1065875 m!5537239))

(assert (=> b!4656740 d!1477639))

(declare-fun bm!325415 () Bool)

(declare-fun call!325420 () Bool)

(declare-datatypes ((List!52037 0))(
  ( (Nil!51913) (Cons!51913 (h!58061 K!13265) (t!359153 List!52037)) )
))
(declare-fun e!2905531 () List!52037)

(declare-fun contains!15058 (List!52037 K!13265) Bool)

(assert (=> bm!325415 (= call!325420 (contains!15058 e!2905531 key!4968))))

(declare-fun c!797059 () Bool)

(declare-fun c!797060 () Bool)

(assert (=> bm!325415 (= c!797059 c!797060)))

(declare-fun d!1477641 () Bool)

(declare-fun e!2905529 () Bool)

(assert (=> d!1477641 e!2905529))

(declare-fun res!1958217 () Bool)

(assert (=> d!1477641 (=> res!1958217 e!2905529)))

(declare-fun e!2905533 () Bool)

(assert (=> d!1477641 (= res!1958217 e!2905533)))

(declare-fun res!1958215 () Bool)

(assert (=> d!1477641 (=> (not res!1958215) (not e!2905533))))

(declare-fun lt!1819353 () Bool)

(assert (=> d!1477641 (= res!1958215 (not lt!1819353))))

(declare-fun lt!1819355 () Bool)

(assert (=> d!1477641 (= lt!1819353 lt!1819355)))

(declare-fun lt!1819351 () Unit!118752)

(declare-fun e!2905532 () Unit!118752)

(assert (=> d!1477641 (= lt!1819351 e!2905532)))

(assert (=> d!1477641 (= c!797060 lt!1819355)))

(declare-fun containsKey!2730 (List!52034 K!13265) Bool)

(assert (=> d!1477641 (= lt!1819355 (containsKey!2730 (toList!5221 lt!1819330) key!4968))))

(assert (=> d!1477641 (= (contains!15053 lt!1819330 key!4968) lt!1819353)))

(declare-fun b!4656773 () Bool)

(declare-fun e!2905530 () Bool)

(assert (=> b!4656773 (= e!2905529 e!2905530)))

(declare-fun res!1958216 () Bool)

(assert (=> b!4656773 (=> (not res!1958216) (not e!2905530))))

(declare-datatypes ((Option!11829 0))(
  ( (None!11828) (Some!11828 (v!46106 V!13511)) )
))
(declare-fun isDefined!9094 (Option!11829) Bool)

(declare-fun getValueByKey!1613 (List!52034 K!13265) Option!11829)

(assert (=> b!4656773 (= res!1958216 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819330) key!4968)))))

(declare-fun b!4656774 () Bool)

(assert (=> b!4656774 false))

(declare-fun lt!1819356 () Unit!118752)

(declare-fun lt!1819357 () Unit!118752)

(assert (=> b!4656774 (= lt!1819356 lt!1819357)))

(assert (=> b!4656774 (containsKey!2730 (toList!5221 lt!1819330) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!750 (List!52034 K!13265) Unit!118752)

(assert (=> b!4656774 (= lt!1819357 (lemmaInGetKeysListThenContainsKey!750 (toList!5221 lt!1819330) key!4968))))

(declare-fun e!2905534 () Unit!118752)

(declare-fun Unit!118768 () Unit!118752)

(assert (=> b!4656774 (= e!2905534 Unit!118768)))

(declare-fun b!4656775 () Bool)

(declare-fun Unit!118769 () Unit!118752)

(assert (=> b!4656775 (= e!2905534 Unit!118769)))

(declare-fun b!4656776 () Bool)

(declare-fun getKeysList!751 (List!52034) List!52037)

(assert (=> b!4656776 (= e!2905531 (getKeysList!751 (toList!5221 lt!1819330)))))

(declare-fun b!4656777 () Bool)

(declare-fun lt!1819354 () Unit!118752)

(assert (=> b!4656777 (= e!2905532 lt!1819354)))

(declare-fun lt!1819350 () Unit!118752)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (List!52034 K!13265) Unit!118752)

(assert (=> b!4656777 (= lt!1819350 (lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (toList!5221 lt!1819330) key!4968))))

(assert (=> b!4656777 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819330) key!4968))))

(declare-fun lt!1819352 () Unit!118752)

(assert (=> b!4656777 (= lt!1819352 lt!1819350)))

(declare-fun lemmaInListThenGetKeysListContains!746 (List!52034 K!13265) Unit!118752)

(assert (=> b!4656777 (= lt!1819354 (lemmaInListThenGetKeysListContains!746 (toList!5221 lt!1819330) key!4968))))

(assert (=> b!4656777 call!325420))

(declare-fun b!4656778 () Bool)

(declare-fun keys!18394 (ListMap!4561) List!52037)

(assert (=> b!4656778 (= e!2905530 (contains!15058 (keys!18394 lt!1819330) key!4968))))

(declare-fun b!4656779 () Bool)

(assert (=> b!4656779 (= e!2905531 (keys!18394 lt!1819330))))

(declare-fun b!4656780 () Bool)

(assert (=> b!4656780 (= e!2905532 e!2905534)))

(declare-fun c!797061 () Bool)

(assert (=> b!4656780 (= c!797061 call!325420)))

(declare-fun b!4656781 () Bool)

(assert (=> b!4656781 (= e!2905533 (not (contains!15058 (keys!18394 lt!1819330) key!4968)))))

(assert (= (and d!1477641 c!797060) b!4656777))

(assert (= (and d!1477641 (not c!797060)) b!4656780))

(assert (= (and b!4656780 c!797061) b!4656774))

(assert (= (and b!4656780 (not c!797061)) b!4656775))

(assert (= (or b!4656777 b!4656780) bm!325415))

(assert (= (and bm!325415 c!797059) b!4656776))

(assert (= (and bm!325415 (not c!797059)) b!4656779))

(assert (= (and d!1477641 res!1958215) b!4656781))

(assert (= (and d!1477641 (not res!1958217)) b!4656773))

(assert (= (and b!4656773 res!1958216) b!4656778))

(declare-fun m!5537241 () Bool)

(assert (=> bm!325415 m!5537241))

(declare-fun m!5537243 () Bool)

(assert (=> b!4656779 m!5537243))

(assert (=> b!4656778 m!5537243))

(assert (=> b!4656778 m!5537243))

(declare-fun m!5537245 () Bool)

(assert (=> b!4656778 m!5537245))

(declare-fun m!5537247 () Bool)

(assert (=> d!1477641 m!5537247))

(declare-fun m!5537249 () Bool)

(assert (=> b!4656773 m!5537249))

(assert (=> b!4656773 m!5537249))

(declare-fun m!5537251 () Bool)

(assert (=> b!4656773 m!5537251))

(assert (=> b!4656781 m!5537243))

(assert (=> b!4656781 m!5537243))

(assert (=> b!4656781 m!5537245))

(declare-fun m!5537253 () Bool)

(assert (=> b!4656776 m!5537253))

(assert (=> b!4656774 m!5537247))

(declare-fun m!5537255 () Bool)

(assert (=> b!4656774 m!5537255))

(declare-fun m!5537257 () Bool)

(assert (=> b!4656777 m!5537257))

(assert (=> b!4656777 m!5537249))

(assert (=> b!4656777 m!5537249))

(assert (=> b!4656777 m!5537251))

(declare-fun m!5537259 () Bool)

(assert (=> b!4656777 m!5537259))

(assert (=> b!4656742 d!1477641))

(declare-fun bs!1065876 () Bool)

(declare-fun d!1477643 () Bool)

(assert (= bs!1065876 (and d!1477643 b!4656743)))

(declare-fun lambda!199517 () Int)

(assert (=> bs!1065876 (= lambda!199517 lambda!199486)))

(declare-fun lt!1819402 () ListMap!4561)

(declare-fun invariantList!1300 (List!52034) Bool)

(assert (=> d!1477643 (invariantList!1300 (toList!5221 lt!1819402))))

(declare-fun e!2905541 () ListMap!4561)

(assert (=> d!1477643 (= lt!1819402 e!2905541)))

(declare-fun c!797066 () Bool)

(assert (=> d!1477643 (= c!797066 ((_ is Cons!51911) lt!1819331))))

(declare-fun forall!11034 (List!52035 Int) Bool)

(assert (=> d!1477643 (forall!11034 lt!1819331 lambda!199517)))

(assert (=> d!1477643 (= (extractMap!1702 lt!1819331) lt!1819402)))

(declare-fun b!4656792 () Bool)

(assert (=> b!4656792 (= e!2905541 (addToMapMapFromBucket!1103 (_2!29810 (h!58057 lt!1819331)) (extractMap!1702 (t!359151 lt!1819331))))))

(declare-fun b!4656793 () Bool)

(assert (=> b!4656793 (= e!2905541 (ListMap!4562 Nil!51910))))

(assert (= (and d!1477643 c!797066) b!4656792))

(assert (= (and d!1477643 (not c!797066)) b!4656793))

(declare-fun m!5537261 () Bool)

(assert (=> d!1477643 m!5537261))

(declare-fun m!5537263 () Bool)

(assert (=> d!1477643 m!5537263))

(declare-fun m!5537265 () Bool)

(assert (=> b!4656792 m!5537265))

(assert (=> b!4656792 m!5537265))

(declare-fun m!5537267 () Bool)

(assert (=> b!4656792 m!5537267))

(assert (=> b!4656742 d!1477643))

(declare-fun d!1477645 () Bool)

(declare-fun res!1958228 () Bool)

(declare-fun e!2905548 () Bool)

(assert (=> d!1477645 (=> res!1958228 e!2905548)))

(assert (=> d!1477645 (= res!1958228 (not ((_ is Cons!51910) newBucket!224)))))

(assert (=> d!1477645 (= (noDuplicateKeys!1646 newBucket!224) e!2905548)))

(declare-fun b!4656802 () Bool)

(declare-fun e!2905549 () Bool)

(assert (=> b!4656802 (= e!2905548 e!2905549)))

(declare-fun res!1958229 () Bool)

(assert (=> b!4656802 (=> (not res!1958229) (not e!2905549))))

(declare-fun containsKey!2731 (List!52034 K!13265) Bool)

(assert (=> b!4656802 (= res!1958229 (not (containsKey!2731 (t!359150 newBucket!224) (_1!29809 (h!58056 newBucket!224)))))))

(declare-fun b!4656803 () Bool)

(assert (=> b!4656803 (= e!2905549 (noDuplicateKeys!1646 (t!359150 newBucket!224)))))

(assert (= (and d!1477645 (not res!1958228)) b!4656802))

(assert (= (and b!4656802 res!1958229) b!4656803))

(declare-fun m!5537269 () Bool)

(assert (=> b!4656802 m!5537269))

(declare-fun m!5537271 () Bool)

(assert (=> b!4656803 m!5537271))

(assert (=> b!4656747 d!1477645))

(declare-fun bs!1065906 () Bool)

(declare-fun b!4656949 () Bool)

(assert (= bs!1065906 (and b!4656949 d!1477637)))

(declare-fun lambda!199572 () Int)

(assert (=> bs!1065906 (not (= lambda!199572 lambda!199489))))

(declare-fun bs!1065907 () Bool)

(assert (= bs!1065907 (and b!4656949 d!1477639)))

(assert (=> bs!1065907 (not (= lambda!199572 lambda!199490))))

(assert (=> b!4656949 true))

(declare-fun bs!1065908 () Bool)

(declare-fun b!4656951 () Bool)

(assert (= bs!1065908 (and b!4656951 d!1477637)))

(declare-fun lambda!199573 () Int)

(assert (=> bs!1065908 (not (= lambda!199573 lambda!199489))))

(declare-fun bs!1065909 () Bool)

(assert (= bs!1065909 (and b!4656951 d!1477639)))

(assert (=> bs!1065909 (not (= lambda!199573 lambda!199490))))

(declare-fun bs!1065910 () Bool)

(assert (= bs!1065910 (and b!4656951 b!4656949)))

(assert (=> bs!1065910 (= lambda!199573 lambda!199572)))

(assert (=> b!4656951 true))

(declare-fun lambda!199574 () Int)

(assert (=> bs!1065908 (not (= lambda!199574 lambda!199489))))

(assert (=> bs!1065909 (not (= lambda!199574 lambda!199490))))

(declare-fun lt!1819553 () ListMap!4561)

(assert (=> bs!1065910 (= (= lt!1819553 lt!1819332) (= lambda!199574 lambda!199572))))

(assert (=> b!4656951 (= (= lt!1819553 lt!1819332) (= lambda!199574 lambda!199573))))

(assert (=> b!4656951 true))

(declare-fun bs!1065911 () Bool)

(declare-fun d!1477647 () Bool)

(assert (= bs!1065911 (and d!1477647 d!1477637)))

(declare-fun lambda!199575 () Int)

(assert (=> bs!1065911 (not (= lambda!199575 lambda!199489))))

(declare-fun bs!1065912 () Bool)

(assert (= bs!1065912 (and d!1477647 b!4656951)))

(declare-fun lt!1819556 () ListMap!4561)

(assert (=> bs!1065912 (= (= lt!1819556 lt!1819553) (= lambda!199575 lambda!199574))))

(declare-fun bs!1065913 () Bool)

(assert (= bs!1065913 (and d!1477647 d!1477639)))

(assert (=> bs!1065913 (not (= lambda!199575 lambda!199490))))

(assert (=> bs!1065912 (= (= lt!1819556 lt!1819332) (= lambda!199575 lambda!199573))))

(declare-fun bs!1065914 () Bool)

(assert (= bs!1065914 (and d!1477647 b!4656949)))

(assert (=> bs!1065914 (= (= lt!1819556 lt!1819332) (= lambda!199575 lambda!199572))))

(assert (=> d!1477647 true))

(declare-fun e!2905642 () Bool)

(assert (=> d!1477647 e!2905642))

(declare-fun res!1958297 () Bool)

(assert (=> d!1477647 (=> (not res!1958297) (not e!2905642))))

(assert (=> d!1477647 (= res!1958297 (forall!11033 oldBucket!40 lambda!199575))))

(declare-fun e!2905640 () ListMap!4561)

(assert (=> d!1477647 (= lt!1819556 e!2905640)))

(declare-fun c!797100 () Bool)

(assert (=> d!1477647 (= c!797100 ((_ is Nil!51910) oldBucket!40))))

(assert (=> d!1477647 (noDuplicateKeys!1646 oldBucket!40)))

(assert (=> d!1477647 (= (addToMapMapFromBucket!1103 oldBucket!40 lt!1819332) lt!1819556)))

(declare-fun bm!325434 () Bool)

(declare-fun call!325440 () Unit!118752)

(declare-fun lemmaContainsAllItsOwnKeys!600 (ListMap!4561) Unit!118752)

(assert (=> bm!325434 (= call!325440 (lemmaContainsAllItsOwnKeys!600 lt!1819332))))

(assert (=> b!4656949 (= e!2905640 lt!1819332)))

(declare-fun lt!1819551 () Unit!118752)

(assert (=> b!4656949 (= lt!1819551 call!325440)))

(declare-fun call!325439 () Bool)

(assert (=> b!4656949 call!325439))

(declare-fun lt!1819559 () Unit!118752)

(assert (=> b!4656949 (= lt!1819559 lt!1819551)))

(declare-fun call!325441 () Bool)

(assert (=> b!4656949 call!325441))

(declare-fun lt!1819567 () Unit!118752)

(declare-fun Unit!118770 () Unit!118752)

(assert (=> b!4656949 (= lt!1819567 Unit!118770)))

(declare-fun bm!325435 () Bool)

(assert (=> bm!325435 (= call!325439 (forall!11033 (toList!5221 lt!1819332) (ite c!797100 lambda!199572 lambda!199574)))))

(declare-fun b!4656950 () Bool)

(assert (=> b!4656950 (= e!2905642 (invariantList!1300 (toList!5221 lt!1819556)))))

(assert (=> b!4656951 (= e!2905640 lt!1819553)))

(declare-fun lt!1819566 () ListMap!4561)

(declare-fun +!1986 (ListMap!4561 tuple2!53030) ListMap!4561)

(assert (=> b!4656951 (= lt!1819566 (+!1986 lt!1819332 (h!58056 oldBucket!40)))))

(assert (=> b!4656951 (= lt!1819553 (addToMapMapFromBucket!1103 (t!359150 oldBucket!40) (+!1986 lt!1819332 (h!58056 oldBucket!40))))))

(declare-fun lt!1819550 () Unit!118752)

(assert (=> b!4656951 (= lt!1819550 call!325440)))

(assert (=> b!4656951 call!325441))

(declare-fun lt!1819562 () Unit!118752)

(assert (=> b!4656951 (= lt!1819562 lt!1819550)))

(assert (=> b!4656951 (forall!11033 (toList!5221 lt!1819566) lambda!199574)))

(declare-fun lt!1819563 () Unit!118752)

(declare-fun Unit!118771 () Unit!118752)

(assert (=> b!4656951 (= lt!1819563 Unit!118771)))

(assert (=> b!4656951 (forall!11033 (t!359150 oldBucket!40) lambda!199574)))

(declare-fun lt!1819561 () Unit!118752)

(declare-fun Unit!118772 () Unit!118752)

(assert (=> b!4656951 (= lt!1819561 Unit!118772)))

(declare-fun lt!1819564 () Unit!118752)

(declare-fun Unit!118773 () Unit!118752)

(assert (=> b!4656951 (= lt!1819564 Unit!118773)))

(declare-fun lt!1819557 () Unit!118752)

(declare-fun forallContained!3234 (List!52034 Int tuple2!53030) Unit!118752)

(assert (=> b!4656951 (= lt!1819557 (forallContained!3234 (toList!5221 lt!1819566) lambda!199574 (h!58056 oldBucket!40)))))

(assert (=> b!4656951 (contains!15053 lt!1819566 (_1!29809 (h!58056 oldBucket!40)))))

(declare-fun lt!1819569 () Unit!118752)

(declare-fun Unit!118774 () Unit!118752)

(assert (=> b!4656951 (= lt!1819569 Unit!118774)))

(assert (=> b!4656951 (contains!15053 lt!1819553 (_1!29809 (h!58056 oldBucket!40)))))

(declare-fun lt!1819568 () Unit!118752)

(declare-fun Unit!118775 () Unit!118752)

(assert (=> b!4656951 (= lt!1819568 Unit!118775)))

(assert (=> b!4656951 (forall!11033 oldBucket!40 lambda!199574)))

(declare-fun lt!1819555 () Unit!118752)

(declare-fun Unit!118776 () Unit!118752)

(assert (=> b!4656951 (= lt!1819555 Unit!118776)))

(assert (=> b!4656951 (forall!11033 (toList!5221 lt!1819566) lambda!199574)))

(declare-fun lt!1819560 () Unit!118752)

(declare-fun Unit!118777 () Unit!118752)

(assert (=> b!4656951 (= lt!1819560 Unit!118777)))

(declare-fun lt!1819565 () Unit!118752)

(declare-fun Unit!118778 () Unit!118752)

(assert (=> b!4656951 (= lt!1819565 Unit!118778)))

(declare-fun lt!1819558 () Unit!118752)

(declare-fun addForallContainsKeyThenBeforeAdding!599 (ListMap!4561 ListMap!4561 K!13265 V!13511) Unit!118752)

(assert (=> b!4656951 (= lt!1819558 (addForallContainsKeyThenBeforeAdding!599 lt!1819332 lt!1819553 (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))))))

(assert (=> b!4656951 (forall!11033 (toList!5221 lt!1819332) lambda!199574)))

(declare-fun lt!1819552 () Unit!118752)

(assert (=> b!4656951 (= lt!1819552 lt!1819558)))

(assert (=> b!4656951 call!325439))

(declare-fun lt!1819554 () Unit!118752)

(declare-fun Unit!118779 () Unit!118752)

(assert (=> b!4656951 (= lt!1819554 Unit!118779)))

(declare-fun res!1958298 () Bool)

(assert (=> b!4656951 (= res!1958298 (forall!11033 oldBucket!40 lambda!199574))))

(declare-fun e!2905641 () Bool)

(assert (=> b!4656951 (=> (not res!1958298) (not e!2905641))))

(assert (=> b!4656951 e!2905641))

(declare-fun lt!1819549 () Unit!118752)

(declare-fun Unit!118780 () Unit!118752)

(assert (=> b!4656951 (= lt!1819549 Unit!118780)))

(declare-fun bm!325436 () Bool)

(assert (=> bm!325436 (= call!325441 (forall!11033 (toList!5221 lt!1819332) (ite c!797100 lambda!199572 lambda!199573)))))

(declare-fun b!4656952 () Bool)

(assert (=> b!4656952 (= e!2905641 (forall!11033 (toList!5221 lt!1819332) lambda!199574))))

(declare-fun b!4656953 () Bool)

(declare-fun res!1958296 () Bool)

(assert (=> b!4656953 (=> (not res!1958296) (not e!2905642))))

(assert (=> b!4656953 (= res!1958296 (forall!11033 (toList!5221 lt!1819332) lambda!199575))))

(assert (= (and d!1477647 c!797100) b!4656949))

(assert (= (and d!1477647 (not c!797100)) b!4656951))

(assert (= (and b!4656951 res!1958298) b!4656952))

(assert (= (or b!4656949 b!4656951) bm!325434))

(assert (= (or b!4656949 b!4656951) bm!325436))

(assert (= (or b!4656949 b!4656951) bm!325435))

(assert (= (and d!1477647 res!1958297) b!4656953))

(assert (= (and b!4656953 res!1958296) b!4656950))

(declare-fun m!5537449 () Bool)

(assert (=> bm!325436 m!5537449))

(declare-fun m!5537451 () Bool)

(assert (=> b!4656951 m!5537451))

(declare-fun m!5537453 () Bool)

(assert (=> b!4656951 m!5537453))

(declare-fun m!5537455 () Bool)

(assert (=> b!4656951 m!5537455))

(declare-fun m!5537457 () Bool)

(assert (=> b!4656951 m!5537457))

(declare-fun m!5537459 () Bool)

(assert (=> b!4656951 m!5537459))

(assert (=> b!4656951 m!5537455))

(declare-fun m!5537461 () Bool)

(assert (=> b!4656951 m!5537461))

(assert (=> b!4656951 m!5537459))

(declare-fun m!5537463 () Bool)

(assert (=> b!4656951 m!5537463))

(declare-fun m!5537465 () Bool)

(assert (=> b!4656951 m!5537465))

(declare-fun m!5537467 () Bool)

(assert (=> b!4656951 m!5537467))

(declare-fun m!5537469 () Bool)

(assert (=> b!4656951 m!5537469))

(assert (=> b!4656951 m!5537451))

(declare-fun m!5537471 () Bool)

(assert (=> bm!325435 m!5537471))

(declare-fun m!5537473 () Bool)

(assert (=> d!1477647 m!5537473))

(assert (=> d!1477647 m!5537207))

(declare-fun m!5537475 () Bool)

(assert (=> bm!325434 m!5537475))

(assert (=> b!4656952 m!5537469))

(declare-fun m!5537477 () Bool)

(assert (=> b!4656950 m!5537477))

(declare-fun m!5537479 () Bool)

(assert (=> b!4656953 m!5537479))

(assert (=> b!4656748 d!1477647))

(declare-fun bs!1065915 () Bool)

(declare-fun d!1477691 () Bool)

(assert (= bs!1065915 (and d!1477691 b!4656743)))

(declare-fun lambda!199576 () Int)

(assert (=> bs!1065915 (= lambda!199576 lambda!199486)))

(declare-fun bs!1065916 () Bool)

(assert (= bs!1065916 (and d!1477691 d!1477643)))

(assert (=> bs!1065916 (= lambda!199576 lambda!199517)))

(declare-fun lt!1819570 () ListMap!4561)

(assert (=> d!1477691 (invariantList!1300 (toList!5221 lt!1819570))))

(declare-fun e!2905643 () ListMap!4561)

(assert (=> d!1477691 (= lt!1819570 e!2905643)))

(declare-fun c!797101 () Bool)

(assert (=> d!1477691 (= c!797101 ((_ is Cons!51911) Nil!51911))))

(assert (=> d!1477691 (forall!11034 Nil!51911 lambda!199576)))

(assert (=> d!1477691 (= (extractMap!1702 Nil!51911) lt!1819570)))

(declare-fun b!4656956 () Bool)

(assert (=> b!4656956 (= e!2905643 (addToMapMapFromBucket!1103 (_2!29810 (h!58057 Nil!51911)) (extractMap!1702 (t!359151 Nil!51911))))))

(declare-fun b!4656957 () Bool)

(assert (=> b!4656957 (= e!2905643 (ListMap!4562 Nil!51910))))

(assert (= (and d!1477691 c!797101) b!4656956))

(assert (= (and d!1477691 (not c!797101)) b!4656957))

(declare-fun m!5537481 () Bool)

(assert (=> d!1477691 m!5537481))

(declare-fun m!5537483 () Bool)

(assert (=> d!1477691 m!5537483))

(declare-fun m!5537485 () Bool)

(assert (=> b!4656956 m!5537485))

(assert (=> b!4656956 m!5537485))

(declare-fun m!5537487 () Bool)

(assert (=> b!4656956 m!5537487))

(assert (=> b!4656748 d!1477691))

(declare-fun d!1477693 () Bool)

(declare-fun e!2905655 () Bool)

(assert (=> d!1477693 e!2905655))

(declare-fun res!1958307 () Bool)

(assert (=> d!1477693 (=> res!1958307 e!2905655)))

(declare-fun e!2905658 () Bool)

(assert (=> d!1477693 (= res!1958307 e!2905658)))

(declare-fun res!1958309 () Bool)

(assert (=> d!1477693 (=> (not res!1958309) (not e!2905658))))

(declare-fun lt!1819573 () Option!11826)

(declare-fun isEmpty!29007 (Option!11826) Bool)

(assert (=> d!1477693 (= res!1958309 (isEmpty!29007 lt!1819573))))

(declare-fun e!2905654 () Option!11826)

(assert (=> d!1477693 (= lt!1819573 e!2905654)))

(declare-fun c!797107 () Bool)

(assert (=> d!1477693 (= c!797107 (and ((_ is Cons!51910) lt!1819326) (= (_1!29809 (h!58056 lt!1819326)) key!4968)))))

(assert (=> d!1477693 (noDuplicateKeys!1646 lt!1819326)))

(assert (=> d!1477693 (= (getPair!374 lt!1819326 key!4968) lt!1819573)))

(declare-fun b!4656974 () Bool)

(declare-fun e!2905657 () Bool)

(declare-fun contains!15059 (List!52034 tuple2!53030) Bool)

(declare-fun get!17273 (Option!11826) tuple2!53030)

(assert (=> b!4656974 (= e!2905657 (contains!15059 lt!1819326 (get!17273 lt!1819573)))))

(declare-fun b!4656975 () Bool)

(declare-fun e!2905656 () Option!11826)

(assert (=> b!4656975 (= e!2905656 (getPair!374 (t!359150 lt!1819326) key!4968))))

(declare-fun b!4656976 () Bool)

(declare-fun res!1958308 () Bool)

(assert (=> b!4656976 (=> (not res!1958308) (not e!2905657))))

(assert (=> b!4656976 (= res!1958308 (= (_1!29809 (get!17273 lt!1819573)) key!4968))))

(declare-fun b!4656977 () Bool)

(assert (=> b!4656977 (= e!2905656 None!11825)))

(declare-fun b!4656978 () Bool)

(assert (=> b!4656978 (= e!2905654 (Some!11825 (h!58056 lt!1819326)))))

(declare-fun b!4656979 () Bool)

(assert (=> b!4656979 (= e!2905655 e!2905657)))

(declare-fun res!1958310 () Bool)

(assert (=> b!4656979 (=> (not res!1958310) (not e!2905657))))

(assert (=> b!4656979 (= res!1958310 (isDefined!9091 lt!1819573))))

(declare-fun b!4656980 () Bool)

(assert (=> b!4656980 (= e!2905658 (not (containsKey!2731 lt!1819326 key!4968)))))

(declare-fun b!4656981 () Bool)

(assert (=> b!4656981 (= e!2905654 e!2905656)))

(declare-fun c!797106 () Bool)

(assert (=> b!4656981 (= c!797106 ((_ is Cons!51910) lt!1819326))))

(assert (= (and d!1477693 c!797107) b!4656978))

(assert (= (and d!1477693 (not c!797107)) b!4656981))

(assert (= (and b!4656981 c!797106) b!4656975))

(assert (= (and b!4656981 (not c!797106)) b!4656977))

(assert (= (and d!1477693 res!1958309) b!4656980))

(assert (= (and d!1477693 (not res!1958307)) b!4656979))

(assert (= (and b!4656979 res!1958310) b!4656976))

(assert (= (and b!4656976 res!1958308) b!4656974))

(declare-fun m!5537489 () Bool)

(assert (=> b!4656975 m!5537489))

(declare-fun m!5537491 () Bool)

(assert (=> b!4656976 m!5537491))

(declare-fun m!5537493 () Bool)

(assert (=> d!1477693 m!5537493))

(declare-fun m!5537495 () Bool)

(assert (=> d!1477693 m!5537495))

(declare-fun m!5537497 () Bool)

(assert (=> b!4656979 m!5537497))

(declare-fun m!5537499 () Bool)

(assert (=> b!4656980 m!5537499))

(assert (=> b!4656974 m!5537491))

(assert (=> b!4656974 m!5537491))

(declare-fun m!5537501 () Bool)

(assert (=> b!4656974 m!5537501))

(assert (=> b!4656743 d!1477693))

(declare-fun bs!1065917 () Bool)

(declare-fun d!1477695 () Bool)

(assert (= bs!1065917 (and d!1477695 b!4656743)))

(declare-fun lambda!199579 () Int)

(assert (=> bs!1065917 (= lambda!199579 lambda!199486)))

(declare-fun bs!1065918 () Bool)

(assert (= bs!1065918 (and d!1477695 d!1477643)))

(assert (=> bs!1065918 (= lambda!199579 lambda!199517)))

(declare-fun bs!1065919 () Bool)

(assert (= bs!1065919 (and d!1477695 d!1477691)))

(assert (=> bs!1065919 (= lambda!199579 lambda!199576)))

(assert (=> d!1477695 (contains!15055 lt!1819325 (hash!3785 hashF!1389 key!4968))))

(declare-fun lt!1819576 () Unit!118752)

(declare-fun choose!32019 (ListLongMap!3775 K!13265 Hashable!6043) Unit!118752)

(assert (=> d!1477695 (= lt!1819576 (choose!32019 lt!1819325 key!4968 hashF!1389))))

(assert (=> d!1477695 (forall!11034 (toList!5222 lt!1819325) lambda!199579)))

(assert (=> d!1477695 (= (lemmaInGenMapThenLongMapContainsHash!580 lt!1819325 key!4968 hashF!1389) lt!1819576)))

(declare-fun bs!1065920 () Bool)

(assert (= bs!1065920 d!1477695))

(assert (=> bs!1065920 m!5537213))

(assert (=> bs!1065920 m!5537213))

(declare-fun m!5537503 () Bool)

(assert (=> bs!1065920 m!5537503))

(declare-fun m!5537505 () Bool)

(assert (=> bs!1065920 m!5537505))

(declare-fun m!5537507 () Bool)

(assert (=> bs!1065920 m!5537507))

(assert (=> b!4656743 d!1477695))

(declare-fun d!1477697 () Bool)

(declare-fun e!2905664 () Bool)

(assert (=> d!1477697 e!2905664))

(declare-fun res!1958313 () Bool)

(assert (=> d!1477697 (=> res!1958313 e!2905664)))

(declare-fun lt!1819587 () Bool)

(assert (=> d!1477697 (= res!1958313 (not lt!1819587))))

(declare-fun lt!1819585 () Bool)

(assert (=> d!1477697 (= lt!1819587 lt!1819585)))

(declare-fun lt!1819588 () Unit!118752)

(declare-fun e!2905663 () Unit!118752)

(assert (=> d!1477697 (= lt!1819588 e!2905663)))

(declare-fun c!797110 () Bool)

(assert (=> d!1477697 (= c!797110 lt!1819585)))

(declare-fun containsKey!2732 (List!52035 (_ BitVec 64)) Bool)

(assert (=> d!1477697 (= lt!1819585 (containsKey!2732 (toList!5222 lt!1819325) lt!1819323))))

(assert (=> d!1477697 (= (contains!15055 lt!1819325 lt!1819323) lt!1819587)))

(declare-fun b!4656988 () Bool)

(declare-fun lt!1819586 () Unit!118752)

(assert (=> b!4656988 (= e!2905663 lt!1819586)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1516 (List!52035 (_ BitVec 64)) Unit!118752)

(assert (=> b!4656988 (= lt!1819586 (lemmaContainsKeyImpliesGetValueByKeyDefined!1516 (toList!5222 lt!1819325) lt!1819323))))

(declare-datatypes ((Option!11830 0))(
  ( (None!11829) (Some!11829 (v!46107 List!52034)) )
))
(declare-fun isDefined!9095 (Option!11830) Bool)

(declare-fun getValueByKey!1614 (List!52035 (_ BitVec 64)) Option!11830)

(assert (=> b!4656988 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323))))

(declare-fun b!4656989 () Bool)

(declare-fun Unit!118781 () Unit!118752)

(assert (=> b!4656989 (= e!2905663 Unit!118781)))

(declare-fun b!4656990 () Bool)

(assert (=> b!4656990 (= e!2905664 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323)))))

(assert (= (and d!1477697 c!797110) b!4656988))

(assert (= (and d!1477697 (not c!797110)) b!4656989))

(assert (= (and d!1477697 (not res!1958313)) b!4656990))

(declare-fun m!5537509 () Bool)

(assert (=> d!1477697 m!5537509))

(declare-fun m!5537511 () Bool)

(assert (=> b!4656988 m!5537511))

(declare-fun m!5537513 () Bool)

(assert (=> b!4656988 m!5537513))

(assert (=> b!4656988 m!5537513))

(declare-fun m!5537515 () Bool)

(assert (=> b!4656988 m!5537515))

(assert (=> b!4656990 m!5537513))

(assert (=> b!4656990 m!5537513))

(assert (=> b!4656990 m!5537515))

(assert (=> b!4656743 d!1477697))

(declare-fun d!1477699 () Bool)

(declare-fun dynLambda!21596 (Int tuple2!53032) Bool)

(assert (=> d!1477699 (dynLambda!21596 lambda!199486 lt!1819324)))

(declare-fun lt!1819591 () Unit!118752)

(declare-fun choose!32020 (List!52035 Int tuple2!53032) Unit!118752)

(assert (=> d!1477699 (= lt!1819591 (choose!32020 lt!1819331 lambda!199486 lt!1819324))))

(declare-fun e!2905667 () Bool)

(assert (=> d!1477699 e!2905667))

(declare-fun res!1958316 () Bool)

(assert (=> d!1477699 (=> (not res!1958316) (not e!2905667))))

(assert (=> d!1477699 (= res!1958316 (forall!11034 lt!1819331 lambda!199486))))

(assert (=> d!1477699 (= (forallContained!3232 lt!1819331 lambda!199486 lt!1819324) lt!1819591)))

(declare-fun b!4656993 () Bool)

(assert (=> b!4656993 (= e!2905667 (contains!15054 lt!1819331 lt!1819324))))

(assert (= (and d!1477699 res!1958316) b!4656993))

(declare-fun b_lambda!174347 () Bool)

(assert (=> (not b_lambda!174347) (not d!1477699)))

(declare-fun m!5537517 () Bool)

(assert (=> d!1477699 m!5537517))

(declare-fun m!5537519 () Bool)

(assert (=> d!1477699 m!5537519))

(declare-fun m!5537521 () Bool)

(assert (=> d!1477699 m!5537521))

(assert (=> b!4656993 m!5537221))

(assert (=> b!4656743 d!1477699))

(declare-fun bs!1065921 () Bool)

(declare-fun d!1477701 () Bool)

(assert (= bs!1065921 (and d!1477701 b!4656743)))

(declare-fun lambda!199586 () Int)

(assert (=> bs!1065921 (= lambda!199586 lambda!199486)))

(declare-fun bs!1065922 () Bool)

(assert (= bs!1065922 (and d!1477701 d!1477643)))

(assert (=> bs!1065922 (= lambda!199586 lambda!199517)))

(declare-fun bs!1065923 () Bool)

(assert (= bs!1065923 (and d!1477701 d!1477691)))

(assert (=> bs!1065923 (= lambda!199586 lambda!199576)))

(declare-fun bs!1065924 () Bool)

(assert (= bs!1065924 (and d!1477701 d!1477695)))

(assert (=> bs!1065924 (= lambda!199586 lambda!199579)))

(declare-fun b!4657002 () Bool)

(declare-fun res!1958325 () Bool)

(declare-fun e!2905672 () Bool)

(assert (=> b!4657002 (=> (not res!1958325) (not e!2905672))))

(declare-fun allKeysSameHashInMap!1602 (ListLongMap!3775 Hashable!6043) Bool)

(assert (=> b!4657002 (= res!1958325 (allKeysSameHashInMap!1602 lt!1819325 hashF!1389))))

(declare-fun b!4657003 () Bool)

(declare-fun res!1958328 () Bool)

(assert (=> b!4657003 (=> (not res!1958328) (not e!2905672))))

(assert (=> b!4657003 (= res!1958328 (contains!15053 (extractMap!1702 (toList!5222 lt!1819325)) key!4968))))

(declare-fun b!4657004 () Bool)

(assert (=> b!4657004 (= e!2905672 (isDefined!9091 (getPair!374 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1819610 () Unit!118752)

(assert (=> b!4657004 (= lt!1819610 (forallContained!3232 (toList!5222 lt!1819325) lambda!199586 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))))

(declare-fun lt!1819615 () Unit!118752)

(declare-fun lt!1819611 () Unit!118752)

(assert (=> b!4657004 (= lt!1819615 lt!1819611)))

(declare-fun lt!1819613 () (_ BitVec 64))

(declare-fun lt!1819614 () List!52034)

(assert (=> b!4657004 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819613 lt!1819614))))

(assert (=> b!4657004 (= lt!1819611 (lemmaGetValueImpliesTupleContained!179 lt!1819325 lt!1819613 lt!1819614))))

(declare-fun e!2905673 () Bool)

(assert (=> b!4657004 e!2905673))

(declare-fun res!1958327 () Bool)

(assert (=> b!4657004 (=> (not res!1958327) (not e!2905673))))

(assert (=> b!4657004 (= res!1958327 (contains!15055 lt!1819325 lt!1819613))))

(assert (=> b!4657004 (= lt!1819614 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))

(assert (=> b!4657004 (= lt!1819613 (hash!3785 hashF!1389 key!4968))))

(declare-fun lt!1819608 () Unit!118752)

(declare-fun lt!1819609 () Unit!118752)

(assert (=> b!4657004 (= lt!1819608 lt!1819609)))

(assert (=> b!4657004 (contains!15055 lt!1819325 (hash!3785 hashF!1389 key!4968))))

(assert (=> b!4657004 (= lt!1819609 (lemmaInGenMapThenLongMapContainsHash!580 lt!1819325 key!4968 hashF!1389))))

(assert (=> d!1477701 e!2905672))

(declare-fun res!1958326 () Bool)

(assert (=> d!1477701 (=> (not res!1958326) (not e!2905672))))

(assert (=> d!1477701 (= res!1958326 (forall!11034 (toList!5222 lt!1819325) lambda!199586))))

(declare-fun lt!1819612 () Unit!118752)

(declare-fun choose!32021 (ListLongMap!3775 K!13265 Hashable!6043) Unit!118752)

(assert (=> d!1477701 (= lt!1819612 (choose!32021 lt!1819325 key!4968 hashF!1389))))

(assert (=> d!1477701 (forall!11034 (toList!5222 lt!1819325) lambda!199586)))

(assert (=> d!1477701 (= (lemmaInGenMapThenGetPairDefined!170 lt!1819325 key!4968 hashF!1389) lt!1819612)))

(declare-fun b!4657005 () Bool)

(assert (=> b!4657005 (= e!2905673 (= (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819613) (Some!11829 lt!1819614)))))

(assert (= (and d!1477701 res!1958326) b!4657002))

(assert (= (and b!4657002 res!1958325) b!4657003))

(assert (= (and b!4657003 res!1958328) b!4657004))

(assert (= (and b!4657004 res!1958327) b!4657005))

(declare-fun m!5537523 () Bool)

(assert (=> d!1477701 m!5537523))

(declare-fun m!5537525 () Bool)

(assert (=> d!1477701 m!5537525))

(assert (=> d!1477701 m!5537523))

(declare-fun m!5537527 () Bool)

(assert (=> b!4657002 m!5537527))

(declare-fun m!5537529 () Bool)

(assert (=> b!4657004 m!5537529))

(assert (=> b!4657004 m!5537213))

(declare-fun m!5537531 () Bool)

(assert (=> b!4657004 m!5537531))

(declare-fun m!5537533 () Bool)

(assert (=> b!4657004 m!5537533))

(assert (=> b!4657004 m!5537213))

(assert (=> b!4657004 m!5537531))

(assert (=> b!4657004 m!5537213))

(assert (=> b!4657004 m!5537503))

(assert (=> b!4657004 m!5537225))

(declare-fun m!5537535 () Bool)

(assert (=> b!4657004 m!5537535))

(declare-fun m!5537537 () Bool)

(assert (=> b!4657004 m!5537537))

(declare-fun m!5537539 () Bool)

(assert (=> b!4657004 m!5537539))

(assert (=> b!4657004 m!5537533))

(declare-fun m!5537541 () Bool)

(assert (=> b!4657004 m!5537541))

(declare-fun m!5537543 () Bool)

(assert (=> b!4657003 m!5537543))

(assert (=> b!4657003 m!5537543))

(declare-fun m!5537545 () Bool)

(assert (=> b!4657003 m!5537545))

(declare-fun m!5537547 () Bool)

(assert (=> b!4657005 m!5537547))

(assert (=> b!4656743 d!1477701))

(declare-fun d!1477703 () Bool)

(declare-fun lt!1819618 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8999 (List!52035) (InoxSet tuple2!53032))

(assert (=> d!1477703 (= lt!1819618 (select (content!8999 lt!1819331) lt!1819324))))

(declare-fun e!2905679 () Bool)

(assert (=> d!1477703 (= lt!1819618 e!2905679)))

(declare-fun res!1958334 () Bool)

(assert (=> d!1477703 (=> (not res!1958334) (not e!2905679))))

(assert (=> d!1477703 (= res!1958334 ((_ is Cons!51911) lt!1819331))))

(assert (=> d!1477703 (= (contains!15054 lt!1819331 lt!1819324) lt!1819618)))

(declare-fun b!4657010 () Bool)

(declare-fun e!2905678 () Bool)

(assert (=> b!4657010 (= e!2905679 e!2905678)))

(declare-fun res!1958333 () Bool)

(assert (=> b!4657010 (=> res!1958333 e!2905678)))

(assert (=> b!4657010 (= res!1958333 (= (h!58057 lt!1819331) lt!1819324))))

(declare-fun b!4657011 () Bool)

(assert (=> b!4657011 (= e!2905678 (contains!15054 (t!359151 lt!1819331) lt!1819324))))

(assert (= (and d!1477703 res!1958334) b!4657010))

(assert (= (and b!4657010 (not res!1958333)) b!4657011))

(declare-fun m!5537549 () Bool)

(assert (=> d!1477703 m!5537549))

(declare-fun m!5537551 () Bool)

(assert (=> d!1477703 m!5537551))

(declare-fun m!5537553 () Bool)

(assert (=> b!4657011 m!5537553))

(assert (=> b!4656743 d!1477703))

(declare-fun d!1477705 () Bool)

(assert (=> d!1477705 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819323 lt!1819326))))

(declare-fun lt!1819621 () Unit!118752)

(declare-fun choose!32022 (ListLongMap!3775 (_ BitVec 64) List!52034) Unit!118752)

(assert (=> d!1477705 (= lt!1819621 (choose!32022 lt!1819325 lt!1819323 lt!1819326))))

(assert (=> d!1477705 (contains!15055 lt!1819325 lt!1819323)))

(assert (=> d!1477705 (= (lemmaGetValueImpliesTupleContained!179 lt!1819325 lt!1819323 lt!1819326) lt!1819621)))

(declare-fun bs!1065925 () Bool)

(assert (= bs!1065925 d!1477705))

(declare-fun m!5537555 () Bool)

(assert (=> bs!1065925 m!5537555))

(declare-fun m!5537557 () Bool)

(assert (=> bs!1065925 m!5537557))

(assert (=> bs!1065925 m!5537217))

(assert (=> b!4656743 d!1477705))

(declare-fun d!1477707 () Bool)

(assert (=> d!1477707 (= (isDefined!9091 (getPair!374 lt!1819326 key!4968)) (not (isEmpty!29007 (getPair!374 lt!1819326 key!4968))))))

(declare-fun bs!1065926 () Bool)

(assert (= bs!1065926 d!1477707))

(assert (=> bs!1065926 m!5537229))

(declare-fun m!5537559 () Bool)

(assert (=> bs!1065926 m!5537559))

(assert (=> b!4656743 d!1477707))

(declare-fun d!1477709 () Bool)

(assert (=> d!1477709 (= (isDefined!9091 (getPair!374 oldBucket!40 key!4968)) (not (isEmpty!29007 (getPair!374 oldBucket!40 key!4968))))))

(declare-fun bs!1065927 () Bool)

(assert (= bs!1065927 d!1477709))

(assert (=> bs!1065927 m!5537219))

(declare-fun m!5537561 () Bool)

(assert (=> bs!1065927 m!5537561))

(assert (=> b!4656743 d!1477709))

(declare-fun d!1477711 () Bool)

(declare-fun get!17274 (Option!11830) List!52034)

(assert (=> d!1477711 (= (apply!12249 lt!1819325 lt!1819323) (get!17274 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323)))))

(declare-fun bs!1065928 () Bool)

(assert (= bs!1065928 d!1477711))

(assert (=> bs!1065928 m!5537513))

(assert (=> bs!1065928 m!5537513))

(declare-fun m!5537563 () Bool)

(assert (=> bs!1065928 m!5537563))

(assert (=> b!4656743 d!1477711))

(declare-fun d!1477713 () Bool)

(declare-fun e!2905681 () Bool)

(assert (=> d!1477713 e!2905681))

(declare-fun res!1958335 () Bool)

(assert (=> d!1477713 (=> res!1958335 e!2905681)))

(declare-fun e!2905684 () Bool)

(assert (=> d!1477713 (= res!1958335 e!2905684)))

(declare-fun res!1958337 () Bool)

(assert (=> d!1477713 (=> (not res!1958337) (not e!2905684))))

(declare-fun lt!1819622 () Option!11826)

(assert (=> d!1477713 (= res!1958337 (isEmpty!29007 lt!1819622))))

(declare-fun e!2905680 () Option!11826)

(assert (=> d!1477713 (= lt!1819622 e!2905680)))

(declare-fun c!797112 () Bool)

(assert (=> d!1477713 (= c!797112 (and ((_ is Cons!51910) oldBucket!40) (= (_1!29809 (h!58056 oldBucket!40)) key!4968)))))

(assert (=> d!1477713 (noDuplicateKeys!1646 oldBucket!40)))

(assert (=> d!1477713 (= (getPair!374 oldBucket!40 key!4968) lt!1819622)))

(declare-fun b!4657013 () Bool)

(declare-fun e!2905683 () Bool)

(assert (=> b!4657013 (= e!2905683 (contains!15059 oldBucket!40 (get!17273 lt!1819622)))))

(declare-fun b!4657014 () Bool)

(declare-fun e!2905682 () Option!11826)

(assert (=> b!4657014 (= e!2905682 (getPair!374 (t!359150 oldBucket!40) key!4968))))

(declare-fun b!4657015 () Bool)

(declare-fun res!1958336 () Bool)

(assert (=> b!4657015 (=> (not res!1958336) (not e!2905683))))

(assert (=> b!4657015 (= res!1958336 (= (_1!29809 (get!17273 lt!1819622)) key!4968))))

(declare-fun b!4657016 () Bool)

(assert (=> b!4657016 (= e!2905682 None!11825)))

(declare-fun b!4657017 () Bool)

(assert (=> b!4657017 (= e!2905680 (Some!11825 (h!58056 oldBucket!40)))))

(declare-fun b!4657018 () Bool)

(assert (=> b!4657018 (= e!2905681 e!2905683)))

(declare-fun res!1958338 () Bool)

(assert (=> b!4657018 (=> (not res!1958338) (not e!2905683))))

(assert (=> b!4657018 (= res!1958338 (isDefined!9091 lt!1819622))))

(declare-fun b!4657019 () Bool)

(assert (=> b!4657019 (= e!2905684 (not (containsKey!2731 oldBucket!40 key!4968)))))

(declare-fun b!4657020 () Bool)

(assert (=> b!4657020 (= e!2905680 e!2905682)))

(declare-fun c!797111 () Bool)

(assert (=> b!4657020 (= c!797111 ((_ is Cons!51910) oldBucket!40))))

(assert (= (and d!1477713 c!797112) b!4657017))

(assert (= (and d!1477713 (not c!797112)) b!4657020))

(assert (= (and b!4657020 c!797111) b!4657014))

(assert (= (and b!4657020 (not c!797111)) b!4657016))

(assert (= (and d!1477713 res!1958337) b!4657019))

(assert (= (and d!1477713 (not res!1958335)) b!4657018))

(assert (= (and b!4657018 res!1958338) b!4657015))

(assert (= (and b!4657015 res!1958336) b!4657013))

(declare-fun m!5537565 () Bool)

(assert (=> b!4657014 m!5537565))

(declare-fun m!5537567 () Bool)

(assert (=> b!4657015 m!5537567))

(declare-fun m!5537569 () Bool)

(assert (=> d!1477713 m!5537569))

(assert (=> d!1477713 m!5537207))

(declare-fun m!5537571 () Bool)

(assert (=> b!4657018 m!5537571))

(declare-fun m!5537573 () Bool)

(assert (=> b!4657019 m!5537573))

(assert (=> b!4657013 m!5537567))

(assert (=> b!4657013 m!5537567))

(declare-fun m!5537575 () Bool)

(assert (=> b!4657013 m!5537575))

(assert (=> b!4656743 d!1477713))

(declare-fun b!4657029 () Bool)

(declare-fun e!2905689 () List!52034)

(assert (=> b!4657029 (= e!2905689 (t!359150 oldBucket!40))))

(declare-fun b!4657032 () Bool)

(declare-fun e!2905690 () List!52034)

(assert (=> b!4657032 (= e!2905690 Nil!51910)))

(declare-fun d!1477715 () Bool)

(declare-fun lt!1819625 () List!52034)

(assert (=> d!1477715 (not (containsKey!2731 lt!1819625 key!4968))))

(assert (=> d!1477715 (= lt!1819625 e!2905689)))

(declare-fun c!797117 () Bool)

(assert (=> d!1477715 (= c!797117 (and ((_ is Cons!51910) oldBucket!40) (= (_1!29809 (h!58056 oldBucket!40)) key!4968)))))

(assert (=> d!1477715 (noDuplicateKeys!1646 oldBucket!40)))

(assert (=> d!1477715 (= (removePairForKey!1269 oldBucket!40 key!4968) lt!1819625)))

(declare-fun b!4657031 () Bool)

(assert (=> b!4657031 (= e!2905690 (Cons!51910 (h!58056 oldBucket!40) (removePairForKey!1269 (t!359150 oldBucket!40) key!4968)))))

(declare-fun b!4657030 () Bool)

(assert (=> b!4657030 (= e!2905689 e!2905690)))

(declare-fun c!797118 () Bool)

(assert (=> b!4657030 (= c!797118 ((_ is Cons!51910) oldBucket!40))))

(assert (= (and d!1477715 c!797117) b!4657029))

(assert (= (and d!1477715 (not c!797117)) b!4657030))

(assert (= (and b!4657030 c!797118) b!4657031))

(assert (= (and b!4657030 (not c!797118)) b!4657032))

(declare-fun m!5537577 () Bool)

(assert (=> d!1477715 m!5537577))

(assert (=> d!1477715 m!5537207))

(declare-fun m!5537579 () Bool)

(assert (=> b!4657031 m!5537579))

(assert (=> b!4656750 d!1477715))

(declare-fun d!1477717 () Bool)

(declare-fun res!1958339 () Bool)

(declare-fun e!2905691 () Bool)

(assert (=> d!1477717 (=> res!1958339 e!2905691)))

(assert (=> d!1477717 (= res!1958339 (not ((_ is Cons!51910) oldBucket!40)))))

(assert (=> d!1477717 (= (noDuplicateKeys!1646 oldBucket!40) e!2905691)))

(declare-fun b!4657033 () Bool)

(declare-fun e!2905692 () Bool)

(assert (=> b!4657033 (= e!2905691 e!2905692)))

(declare-fun res!1958340 () Bool)

(assert (=> b!4657033 (=> (not res!1958340) (not e!2905692))))

(assert (=> b!4657033 (= res!1958340 (not (containsKey!2731 (t!359150 oldBucket!40) (_1!29809 (h!58056 oldBucket!40)))))))

(declare-fun b!4657034 () Bool)

(assert (=> b!4657034 (= e!2905692 (noDuplicateKeys!1646 (t!359150 oldBucket!40)))))

(assert (= (and d!1477717 (not res!1958339)) b!4657033))

(assert (= (and b!4657033 res!1958340) b!4657034))

(declare-fun m!5537581 () Bool)

(assert (=> b!4657033 m!5537581))

(declare-fun m!5537583 () Bool)

(assert (=> b!4657034 m!5537583))

(assert (=> start!468684 d!1477717))

(declare-fun d!1477719 () Bool)

(declare-fun hash!3787 (Hashable!6043 K!13265) (_ BitVec 64))

(assert (=> d!1477719 (= (hash!3785 hashF!1389 key!4968) (hash!3787 hashF!1389 key!4968))))

(declare-fun bs!1065929 () Bool)

(assert (= bs!1065929 d!1477719))

(declare-fun m!5537585 () Bool)

(assert (=> bs!1065929 m!5537585))

(assert (=> b!4656745 d!1477719))

(declare-fun tp!1343370 () Bool)

(declare-fun b!4657039 () Bool)

(declare-fun e!2905695 () Bool)

(assert (=> b!4657039 (= e!2905695 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343370))))

(assert (=> b!4656741 (= tp!1343363 e!2905695)))

(assert (= (and b!4656741 ((_ is Cons!51910) (t!359150 oldBucket!40))) b!4657039))

(declare-fun b!4657040 () Bool)

(declare-fun e!2905696 () Bool)

(declare-fun tp!1343371 () Bool)

(assert (=> b!4657040 (= e!2905696 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343371))))

(assert (=> b!4656744 (= tp!1343362 e!2905696)))

(assert (= (and b!4656744 ((_ is Cons!51910) (t!359150 newBucket!224))) b!4657040))

(declare-fun b_lambda!174349 () Bool)

(assert (= b_lambda!174347 (or b!4656743 b_lambda!174349)))

(declare-fun bs!1065930 () Bool)

(declare-fun d!1477721 () Bool)

(assert (= bs!1065930 (and d!1477721 b!4656743)))

(assert (=> bs!1065930 (= (dynLambda!21596 lambda!199486 lt!1819324) (noDuplicateKeys!1646 (_2!29810 lt!1819324)))))

(declare-fun m!5537587 () Bool)

(assert (=> bs!1065930 m!5537587))

(assert (=> d!1477699 d!1477721))

(check-sat (not b!4656974) (not b!4656802) (not d!1477699) (not b!4656803) (not d!1477691) (not b!4656990) (not b!4656980) (not b!4657039) (not b!4657005) (not d!1477715) (not b!4656976) (not b!4657019) (not d!1477719) (not b!4657015) (not d!1477695) (not b!4656988) (not b!4656951) (not b!4657003) tp_is_empty!29877 (not b!4656781) (not bm!325435) tp_is_empty!29879 (not b!4656956) (not d!1477639) (not d!1477647) (not d!1477707) (not b!4657033) (not b!4656792) (not d!1477693) (not bs!1065930) (not b!4656975) (not b!4657014) (not d!1477643) (not b!4657034) (not b!4656953) (not bm!325434) (not b!4657031) (not d!1477705) (not d!1477703) (not b!4656777) (not b!4657013) (not bm!325436) (not b!4656779) (not b!4656773) (not b!4656979) (not b_lambda!174349) (not b!4657002) (not d!1477701) (not d!1477711) (not b!4656774) (not b!4656950) (not b!4657018) (not d!1477637) (not bm!325415) (not d!1477709) (not b!4657004) (not d!1477697) (not b!4656778) (not b!4656952) (not b!4656776) (not d!1477641) (not b!4657040) (not b!4656993) (not d!1477713) (not b!4657011))
(check-sat)
(get-model)

(declare-fun d!1477723 () Bool)

(declare-fun res!1958345 () Bool)

(declare-fun e!2905701 () Bool)

(assert (=> d!1477723 (=> res!1958345 e!2905701)))

(assert (=> d!1477723 (= res!1958345 ((_ is Nil!51910) newBucket!224))))

(assert (=> d!1477723 (= (forall!11033 newBucket!224 lambda!199490) e!2905701)))

(declare-fun b!4657045 () Bool)

(declare-fun e!2905702 () Bool)

(assert (=> b!4657045 (= e!2905701 e!2905702)))

(declare-fun res!1958346 () Bool)

(assert (=> b!4657045 (=> (not res!1958346) (not e!2905702))))

(declare-fun dynLambda!21597 (Int tuple2!53030) Bool)

(assert (=> b!4657045 (= res!1958346 (dynLambda!21597 lambda!199490 (h!58056 newBucket!224)))))

(declare-fun b!4657046 () Bool)

(assert (=> b!4657046 (= e!2905702 (forall!11033 (t!359150 newBucket!224) lambda!199490))))

(assert (= (and d!1477723 (not res!1958345)) b!4657045))

(assert (= (and b!4657045 res!1958346) b!4657046))

(declare-fun b_lambda!174351 () Bool)

(assert (=> (not b_lambda!174351) (not b!4657045)))

(declare-fun m!5537589 () Bool)

(assert (=> b!4657045 m!5537589))

(declare-fun m!5537591 () Bool)

(assert (=> b!4657046 m!5537591))

(assert (=> d!1477639 d!1477723))

(declare-fun d!1477725 () Bool)

(declare-fun res!1958351 () Bool)

(declare-fun e!2905707 () Bool)

(assert (=> d!1477725 (=> res!1958351 e!2905707)))

(assert (=> d!1477725 (= res!1958351 (and ((_ is Cons!51910) lt!1819326) (= (_1!29809 (h!58056 lt!1819326)) key!4968)))))

(assert (=> d!1477725 (= (containsKey!2731 lt!1819326 key!4968) e!2905707)))

(declare-fun b!4657051 () Bool)

(declare-fun e!2905708 () Bool)

(assert (=> b!4657051 (= e!2905707 e!2905708)))

(declare-fun res!1958352 () Bool)

(assert (=> b!4657051 (=> (not res!1958352) (not e!2905708))))

(assert (=> b!4657051 (= res!1958352 ((_ is Cons!51910) lt!1819326))))

(declare-fun b!4657052 () Bool)

(assert (=> b!4657052 (= e!2905708 (containsKey!2731 (t!359150 lt!1819326) key!4968))))

(assert (= (and d!1477725 (not res!1958351)) b!4657051))

(assert (= (and b!4657051 res!1958352) b!4657052))

(declare-fun m!5537593 () Bool)

(assert (=> b!4657052 m!5537593))

(assert (=> b!4656980 d!1477725))

(declare-fun d!1477727 () Bool)

(assert (=> d!1477727 (= (get!17273 lt!1819573) (v!46099 lt!1819573))))

(assert (=> b!4656976 d!1477727))

(declare-fun d!1477729 () Bool)

(declare-fun res!1958353 () Bool)

(declare-fun e!2905709 () Bool)

(assert (=> d!1477729 (=> res!1958353 e!2905709)))

(assert (=> d!1477729 (= res!1958353 (not ((_ is Cons!51910) (t!359150 newBucket!224))))))

(assert (=> d!1477729 (= (noDuplicateKeys!1646 (t!359150 newBucket!224)) e!2905709)))

(declare-fun b!4657053 () Bool)

(declare-fun e!2905710 () Bool)

(assert (=> b!4657053 (= e!2905709 e!2905710)))

(declare-fun res!1958354 () Bool)

(assert (=> b!4657053 (=> (not res!1958354) (not e!2905710))))

(assert (=> b!4657053 (= res!1958354 (not (containsKey!2731 (t!359150 (t!359150 newBucket!224)) (_1!29809 (h!58056 (t!359150 newBucket!224))))))))

(declare-fun b!4657054 () Bool)

(assert (=> b!4657054 (= e!2905710 (noDuplicateKeys!1646 (t!359150 (t!359150 newBucket!224))))))

(assert (= (and d!1477729 (not res!1958353)) b!4657053))

(assert (= (and b!4657053 res!1958354) b!4657054))

(declare-fun m!5537595 () Bool)

(assert (=> b!4657053 m!5537595))

(declare-fun m!5537597 () Bool)

(assert (=> b!4657054 m!5537597))

(assert (=> b!4656803 d!1477729))

(declare-fun d!1477731 () Bool)

(assert (=> d!1477731 (= (isEmpty!29007 lt!1819622) (not ((_ is Some!11825) lt!1819622)))))

(assert (=> d!1477713 d!1477731))

(assert (=> d!1477713 d!1477717))

(declare-fun d!1477733 () Bool)

(declare-fun noDuplicatedKeys!353 (List!52034) Bool)

(assert (=> d!1477733 (= (invariantList!1300 (toList!5221 lt!1819402)) (noDuplicatedKeys!353 (toList!5221 lt!1819402)))))

(declare-fun bs!1065931 () Bool)

(assert (= bs!1065931 d!1477733))

(declare-fun m!5537599 () Bool)

(assert (=> bs!1065931 m!5537599))

(assert (=> d!1477643 d!1477733))

(declare-fun d!1477735 () Bool)

(declare-fun res!1958359 () Bool)

(declare-fun e!2905715 () Bool)

(assert (=> d!1477735 (=> res!1958359 e!2905715)))

(assert (=> d!1477735 (= res!1958359 ((_ is Nil!51911) lt!1819331))))

(assert (=> d!1477735 (= (forall!11034 lt!1819331 lambda!199517) e!2905715)))

(declare-fun b!4657059 () Bool)

(declare-fun e!2905716 () Bool)

(assert (=> b!4657059 (= e!2905715 e!2905716)))

(declare-fun res!1958360 () Bool)

(assert (=> b!4657059 (=> (not res!1958360) (not e!2905716))))

(assert (=> b!4657059 (= res!1958360 (dynLambda!21596 lambda!199517 (h!58057 lt!1819331)))))

(declare-fun b!4657060 () Bool)

(assert (=> b!4657060 (= e!2905716 (forall!11034 (t!359151 lt!1819331) lambda!199517))))

(assert (= (and d!1477735 (not res!1958359)) b!4657059))

(assert (= (and b!4657059 res!1958360) b!4657060))

(declare-fun b_lambda!174353 () Bool)

(assert (=> (not b_lambda!174353) (not b!4657059)))

(declare-fun m!5537601 () Bool)

(assert (=> b!4657059 m!5537601))

(declare-fun m!5537603 () Bool)

(assert (=> b!4657060 m!5537603))

(assert (=> d!1477643 d!1477735))

(declare-fun d!1477739 () Bool)

(declare-fun res!1958361 () Bool)

(declare-fun e!2905717 () Bool)

(assert (=> d!1477739 (=> res!1958361 e!2905717)))

(assert (=> d!1477739 (= res!1958361 ((_ is Nil!51910) oldBucket!40))))

(assert (=> d!1477739 (= (forall!11033 oldBucket!40 lambda!199575) e!2905717)))

(declare-fun b!4657061 () Bool)

(declare-fun e!2905718 () Bool)

(assert (=> b!4657061 (= e!2905717 e!2905718)))

(declare-fun res!1958362 () Bool)

(assert (=> b!4657061 (=> (not res!1958362) (not e!2905718))))

(assert (=> b!4657061 (= res!1958362 (dynLambda!21597 lambda!199575 (h!58056 oldBucket!40)))))

(declare-fun b!4657062 () Bool)

(assert (=> b!4657062 (= e!2905718 (forall!11033 (t!359150 oldBucket!40) lambda!199575))))

(assert (= (and d!1477739 (not res!1958361)) b!4657061))

(assert (= (and b!4657061 res!1958362) b!4657062))

(declare-fun b_lambda!174355 () Bool)

(assert (=> (not b_lambda!174355) (not b!4657061)))

(declare-fun m!5537605 () Bool)

(assert (=> b!4657061 m!5537605))

(declare-fun m!5537607 () Bool)

(assert (=> b!4657062 m!5537607))

(assert (=> d!1477647 d!1477739))

(assert (=> d!1477647 d!1477717))

(declare-fun d!1477741 () Bool)

(assert (=> d!1477741 (= (invariantList!1300 (toList!5221 lt!1819570)) (noDuplicatedKeys!353 (toList!5221 lt!1819570)))))

(declare-fun bs!1065932 () Bool)

(assert (= bs!1065932 d!1477741))

(declare-fun m!5537609 () Bool)

(assert (=> bs!1065932 m!5537609))

(assert (=> d!1477691 d!1477741))

(declare-fun d!1477743 () Bool)

(declare-fun res!1958363 () Bool)

(declare-fun e!2905719 () Bool)

(assert (=> d!1477743 (=> res!1958363 e!2905719)))

(assert (=> d!1477743 (= res!1958363 ((_ is Nil!51911) Nil!51911))))

(assert (=> d!1477743 (= (forall!11034 Nil!51911 lambda!199576) e!2905719)))

(declare-fun b!4657063 () Bool)

(declare-fun e!2905720 () Bool)

(assert (=> b!4657063 (= e!2905719 e!2905720)))

(declare-fun res!1958364 () Bool)

(assert (=> b!4657063 (=> (not res!1958364) (not e!2905720))))

(assert (=> b!4657063 (= res!1958364 (dynLambda!21596 lambda!199576 (h!58057 Nil!51911)))))

(declare-fun b!4657064 () Bool)

(assert (=> b!4657064 (= e!2905720 (forall!11034 (t!359151 Nil!51911) lambda!199576))))

(assert (= (and d!1477743 (not res!1958363)) b!4657063))

(assert (= (and b!4657063 res!1958364) b!4657064))

(declare-fun b_lambda!174357 () Bool)

(assert (=> (not b_lambda!174357) (not b!4657063)))

(declare-fun m!5537611 () Bool)

(assert (=> b!4657063 m!5537611))

(declare-fun m!5537613 () Bool)

(assert (=> b!4657064 m!5537613))

(assert (=> d!1477691 d!1477743))

(declare-fun d!1477745 () Bool)

(assert (=> d!1477745 (= (isEmpty!29007 (getPair!374 oldBucket!40 key!4968)) (not ((_ is Some!11825) (getPair!374 oldBucket!40 key!4968))))))

(assert (=> d!1477709 d!1477745))

(declare-fun d!1477747 () Bool)

(declare-fun res!1958365 () Bool)

(declare-fun e!2905721 () Bool)

(assert (=> d!1477747 (=> res!1958365 e!2905721)))

(assert (=> d!1477747 (= res!1958365 (not ((_ is Cons!51910) (_2!29810 lt!1819324))))))

(assert (=> d!1477747 (= (noDuplicateKeys!1646 (_2!29810 lt!1819324)) e!2905721)))

(declare-fun b!4657065 () Bool)

(declare-fun e!2905722 () Bool)

(assert (=> b!4657065 (= e!2905721 e!2905722)))

(declare-fun res!1958366 () Bool)

(assert (=> b!4657065 (=> (not res!1958366) (not e!2905722))))

(assert (=> b!4657065 (= res!1958366 (not (containsKey!2731 (t!359150 (_2!29810 lt!1819324)) (_1!29809 (h!58056 (_2!29810 lt!1819324))))))))

(declare-fun b!4657066 () Bool)

(assert (=> b!4657066 (= e!2905722 (noDuplicateKeys!1646 (t!359150 (_2!29810 lt!1819324))))))

(assert (= (and d!1477747 (not res!1958365)) b!4657065))

(assert (= (and b!4657065 res!1958366) b!4657066))

(declare-fun m!5537615 () Bool)

(assert (=> b!4657065 m!5537615))

(declare-fun m!5537617 () Bool)

(assert (=> b!4657066 m!5537617))

(assert (=> bs!1065930 d!1477747))

(declare-fun d!1477749 () Bool)

(declare-fun res!1958367 () Bool)

(declare-fun e!2905723 () Bool)

(assert (=> d!1477749 (=> res!1958367 e!2905723)))

(assert (=> d!1477749 (= res!1958367 ((_ is Nil!51910) (toList!5221 lt!1819332)))))

(assert (=> d!1477749 (= (forall!11033 (toList!5221 lt!1819332) (ite c!797100 lambda!199572 lambda!199574)) e!2905723)))

(declare-fun b!4657067 () Bool)

(declare-fun e!2905724 () Bool)

(assert (=> b!4657067 (= e!2905723 e!2905724)))

(declare-fun res!1958368 () Bool)

(assert (=> b!4657067 (=> (not res!1958368) (not e!2905724))))

(assert (=> b!4657067 (= res!1958368 (dynLambda!21597 (ite c!797100 lambda!199572 lambda!199574) (h!58056 (toList!5221 lt!1819332))))))

(declare-fun b!4657068 () Bool)

(assert (=> b!4657068 (= e!2905724 (forall!11033 (t!359150 (toList!5221 lt!1819332)) (ite c!797100 lambda!199572 lambda!199574)))))

(assert (= (and d!1477749 (not res!1958367)) b!4657067))

(assert (= (and b!4657067 res!1958368) b!4657068))

(declare-fun b_lambda!174359 () Bool)

(assert (=> (not b_lambda!174359) (not b!4657067)))

(declare-fun m!5537619 () Bool)

(assert (=> b!4657067 m!5537619))

(declare-fun m!5537621 () Bool)

(assert (=> b!4657068 m!5537621))

(assert (=> bm!325435 d!1477749))

(declare-fun d!1477751 () Bool)

(declare-fun res!1958371 () Bool)

(declare-fun e!2905727 () Bool)

(assert (=> d!1477751 (=> res!1958371 e!2905727)))

(assert (=> d!1477751 (= res!1958371 ((_ is Nil!51911) (toList!5222 lt!1819325)))))

(assert (=> d!1477751 (= (forall!11034 (toList!5222 lt!1819325) lambda!199586) e!2905727)))

(declare-fun b!4657071 () Bool)

(declare-fun e!2905728 () Bool)

(assert (=> b!4657071 (= e!2905727 e!2905728)))

(declare-fun res!1958372 () Bool)

(assert (=> b!4657071 (=> (not res!1958372) (not e!2905728))))

(assert (=> b!4657071 (= res!1958372 (dynLambda!21596 lambda!199586 (h!58057 (toList!5222 lt!1819325))))))

(declare-fun b!4657072 () Bool)

(assert (=> b!4657072 (= e!2905728 (forall!11034 (t!359151 (toList!5222 lt!1819325)) lambda!199586))))

(assert (= (and d!1477751 (not res!1958371)) b!4657071))

(assert (= (and b!4657071 res!1958372) b!4657072))

(declare-fun b_lambda!174361 () Bool)

(assert (=> (not b_lambda!174361) (not b!4657071)))

(declare-fun m!5537623 () Bool)

(assert (=> b!4657071 m!5537623))

(declare-fun m!5537625 () Bool)

(assert (=> b!4657072 m!5537625))

(assert (=> d!1477701 d!1477751))

(declare-fun bs!1065933 () Bool)

(declare-fun d!1477753 () Bool)

(assert (= bs!1065933 (and d!1477753 d!1477701)))

(declare-fun lambda!199595 () Int)

(assert (=> bs!1065933 (= lambda!199595 lambda!199586)))

(declare-fun bs!1065934 () Bool)

(assert (= bs!1065934 (and d!1477753 d!1477695)))

(assert (=> bs!1065934 (= lambda!199595 lambda!199579)))

(declare-fun bs!1065935 () Bool)

(assert (= bs!1065935 (and d!1477753 d!1477691)))

(assert (=> bs!1065935 (= lambda!199595 lambda!199576)))

(declare-fun bs!1065936 () Bool)

(assert (= bs!1065936 (and d!1477753 b!4656743)))

(assert (=> bs!1065936 (= lambda!199595 lambda!199486)))

(declare-fun bs!1065937 () Bool)

(assert (= bs!1065937 (and d!1477753 d!1477643)))

(assert (=> bs!1065937 (= lambda!199595 lambda!199517)))

(assert (=> d!1477753 (isDefined!9091 (getPair!374 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968))))

(declare-fun lt!1819649 () Unit!118752)

(assert (=> d!1477753 (= lt!1819649 (forallContained!3232 (toList!5222 lt!1819325) lambda!199595 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))))

(declare-fun lt!1819652 () Unit!118752)

(declare-fun lt!1819650 () Unit!118752)

(assert (=> d!1477753 (= lt!1819652 lt!1819650)))

(declare-fun lt!1819646 () (_ BitVec 64))

(declare-fun lt!1819647 () List!52034)

(assert (=> d!1477753 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819646 lt!1819647))))

(assert (=> d!1477753 (= lt!1819650 (lemmaGetValueImpliesTupleContained!179 lt!1819325 lt!1819646 lt!1819647))))

(assert (=> d!1477753 (= lt!1819647 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))

(assert (=> d!1477753 (= lt!1819646 (hash!3785 hashF!1389 key!4968))))

(declare-fun lt!1819648 () Unit!118752)

(declare-fun lt!1819651 () Unit!118752)

(assert (=> d!1477753 (= lt!1819648 lt!1819651)))

(assert (=> d!1477753 (contains!15055 lt!1819325 (hash!3785 hashF!1389 key!4968))))

(assert (=> d!1477753 (= lt!1819651 (lemmaInGenMapThenLongMapContainsHash!580 lt!1819325 key!4968 hashF!1389))))

(assert (=> d!1477753 true))

(declare-fun _$25!220 () Unit!118752)

(assert (=> d!1477753 (= (choose!32021 lt!1819325 key!4968 hashF!1389) _$25!220)))

(declare-fun bs!1065939 () Bool)

(assert (= bs!1065939 d!1477753))

(assert (=> bs!1065939 m!5537213))

(assert (=> bs!1065939 m!5537531))

(declare-fun m!5537647 () Bool)

(assert (=> bs!1065939 m!5537647))

(declare-fun m!5537649 () Bool)

(assert (=> bs!1065939 m!5537649))

(declare-fun m!5537651 () Bool)

(assert (=> bs!1065939 m!5537651))

(assert (=> bs!1065939 m!5537531))

(assert (=> bs!1065939 m!5537533))

(assert (=> bs!1065939 m!5537225))

(assert (=> bs!1065939 m!5537213))

(assert (=> bs!1065939 m!5537503))

(assert (=> bs!1065939 m!5537213))

(assert (=> bs!1065939 m!5537533))

(assert (=> bs!1065939 m!5537541))

(assert (=> d!1477701 d!1477753))

(declare-fun d!1477763 () Bool)

(declare-fun res!1958386 () Bool)

(declare-fun e!2905736 () Bool)

(assert (=> d!1477763 (=> res!1958386 e!2905736)))

(assert (=> d!1477763 (= res!1958386 (and ((_ is Cons!51910) lt!1819625) (= (_1!29809 (h!58056 lt!1819625)) key!4968)))))

(assert (=> d!1477763 (= (containsKey!2731 lt!1819625 key!4968) e!2905736)))

(declare-fun b!4657088 () Bool)

(declare-fun e!2905737 () Bool)

(assert (=> b!4657088 (= e!2905736 e!2905737)))

(declare-fun res!1958387 () Bool)

(assert (=> b!4657088 (=> (not res!1958387) (not e!2905737))))

(assert (=> b!4657088 (= res!1958387 ((_ is Cons!51910) lt!1819625))))

(declare-fun b!4657089 () Bool)

(assert (=> b!4657089 (= e!2905737 (containsKey!2731 (t!359150 lt!1819625) key!4968))))

(assert (= (and d!1477763 (not res!1958386)) b!4657088))

(assert (= (and b!4657088 res!1958387) b!4657089))

(declare-fun m!5537653 () Bool)

(assert (=> b!4657089 m!5537653))

(assert (=> d!1477715 d!1477763))

(assert (=> d!1477715 d!1477717))

(declare-fun d!1477765 () Bool)

(declare-fun lt!1819657 () Bool)

(declare-fun content!9002 (List!52037) (InoxSet K!13265))

(assert (=> d!1477765 (= lt!1819657 (select (content!9002 e!2905531) key!4968))))

(declare-fun e!2905742 () Bool)

(assert (=> d!1477765 (= lt!1819657 e!2905742)))

(declare-fun res!1958392 () Bool)

(assert (=> d!1477765 (=> (not res!1958392) (not e!2905742))))

(assert (=> d!1477765 (= res!1958392 ((_ is Cons!51913) e!2905531))))

(assert (=> d!1477765 (= (contains!15058 e!2905531 key!4968) lt!1819657)))

(declare-fun b!4657094 () Bool)

(declare-fun e!2905743 () Bool)

(assert (=> b!4657094 (= e!2905742 e!2905743)))

(declare-fun res!1958393 () Bool)

(assert (=> b!4657094 (=> res!1958393 e!2905743)))

(assert (=> b!4657094 (= res!1958393 (= (h!58061 e!2905531) key!4968))))

(declare-fun b!4657095 () Bool)

(assert (=> b!4657095 (= e!2905743 (contains!15058 (t!359153 e!2905531) key!4968))))

(assert (= (and d!1477765 res!1958392) b!4657094))

(assert (= (and b!4657094 (not res!1958393)) b!4657095))

(declare-fun m!5537655 () Bool)

(assert (=> d!1477765 m!5537655))

(declare-fun m!5537657 () Bool)

(assert (=> d!1477765 m!5537657))

(declare-fun m!5537659 () Bool)

(assert (=> b!4657095 m!5537659))

(assert (=> bm!325415 d!1477765))

(declare-fun d!1477767 () Bool)

(declare-fun lt!1819661 () Bool)

(declare-fun content!9003 (List!52034) (InoxSet tuple2!53030))

(assert (=> d!1477767 (= lt!1819661 (select (content!9003 oldBucket!40) (get!17273 lt!1819622)))))

(declare-fun e!2905748 () Bool)

(assert (=> d!1477767 (= lt!1819661 e!2905748)))

(declare-fun res!1958399 () Bool)

(assert (=> d!1477767 (=> (not res!1958399) (not e!2905748))))

(assert (=> d!1477767 (= res!1958399 ((_ is Cons!51910) oldBucket!40))))

(assert (=> d!1477767 (= (contains!15059 oldBucket!40 (get!17273 lt!1819622)) lt!1819661)))

(declare-fun b!4657100 () Bool)

(declare-fun e!2905749 () Bool)

(assert (=> b!4657100 (= e!2905748 e!2905749)))

(declare-fun res!1958398 () Bool)

(assert (=> b!4657100 (=> res!1958398 e!2905749)))

(assert (=> b!4657100 (= res!1958398 (= (h!58056 oldBucket!40) (get!17273 lt!1819622)))))

(declare-fun b!4657101 () Bool)

(assert (=> b!4657101 (= e!2905749 (contains!15059 (t!359150 oldBucket!40) (get!17273 lt!1819622)))))

(assert (= (and d!1477767 res!1958399) b!4657100))

(assert (= (and b!4657100 (not res!1958398)) b!4657101))

(declare-fun m!5537665 () Bool)

(assert (=> d!1477767 m!5537665))

(assert (=> d!1477767 m!5537567))

(declare-fun m!5537667 () Bool)

(assert (=> d!1477767 m!5537667))

(assert (=> b!4657101 m!5537567))

(declare-fun m!5537669 () Bool)

(assert (=> b!4657101 m!5537669))

(assert (=> b!4657013 d!1477767))

(declare-fun d!1477771 () Bool)

(assert (=> d!1477771 (= (get!17273 lt!1819622) (v!46099 lt!1819622))))

(assert (=> b!4657013 d!1477771))

(declare-fun d!1477773 () Bool)

(declare-fun res!1958411 () Bool)

(declare-fun e!2905762 () Bool)

(assert (=> d!1477773 (=> res!1958411 e!2905762)))

(assert (=> d!1477773 (= res!1958411 (and ((_ is Cons!51910) (toList!5221 lt!1819330)) (= (_1!29809 (h!58056 (toList!5221 lt!1819330))) key!4968)))))

(assert (=> d!1477773 (= (containsKey!2730 (toList!5221 lt!1819330) key!4968) e!2905762)))

(declare-fun b!4657115 () Bool)

(declare-fun e!2905763 () Bool)

(assert (=> b!4657115 (= e!2905762 e!2905763)))

(declare-fun res!1958412 () Bool)

(assert (=> b!4657115 (=> (not res!1958412) (not e!2905763))))

(assert (=> b!4657115 (= res!1958412 ((_ is Cons!51910) (toList!5221 lt!1819330)))))

(declare-fun b!4657116 () Bool)

(assert (=> b!4657116 (= e!2905763 (containsKey!2730 (t!359150 (toList!5221 lt!1819330)) key!4968))))

(assert (= (and d!1477773 (not res!1958411)) b!4657115))

(assert (= (and b!4657115 res!1958412) b!4657116))

(declare-fun m!5537681 () Bool)

(assert (=> b!4657116 m!5537681))

(assert (=> b!4656774 d!1477773))

(declare-fun d!1477779 () Bool)

(assert (=> d!1477779 (containsKey!2730 (toList!5221 lt!1819330) key!4968)))

(declare-fun lt!1819668 () Unit!118752)

(declare-fun choose!32024 (List!52034 K!13265) Unit!118752)

(assert (=> d!1477779 (= lt!1819668 (choose!32024 (toList!5221 lt!1819330) key!4968))))

(assert (=> d!1477779 (invariantList!1300 (toList!5221 lt!1819330))))

(assert (=> d!1477779 (= (lemmaInGetKeysListThenContainsKey!750 (toList!5221 lt!1819330) key!4968) lt!1819668)))

(declare-fun bs!1065947 () Bool)

(assert (= bs!1065947 d!1477779))

(assert (=> bs!1065947 m!5537247))

(declare-fun m!5537683 () Bool)

(assert (=> bs!1065947 m!5537683))

(declare-fun m!5537685 () Bool)

(assert (=> bs!1065947 m!5537685))

(assert (=> b!4656774 d!1477779))

(declare-fun bs!1065948 () Bool)

(declare-fun b!4657117 () Bool)

(assert (= bs!1065948 (and b!4657117 d!1477637)))

(declare-fun lambda!199599 () Int)

(assert (=> bs!1065948 (not (= lambda!199599 lambda!199489))))

(declare-fun bs!1065949 () Bool)

(assert (= bs!1065949 (and b!4657117 d!1477647)))

(assert (=> bs!1065949 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819556) (= lambda!199599 lambda!199575))))

(declare-fun bs!1065950 () Bool)

(assert (= bs!1065950 (and b!4657117 b!4656951)))

(assert (=> bs!1065950 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819553) (= lambda!199599 lambda!199574))))

(declare-fun bs!1065951 () Bool)

(assert (= bs!1065951 (and b!4657117 d!1477639)))

(assert (=> bs!1065951 (not (= lambda!199599 lambda!199490))))

(assert (=> bs!1065950 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819332) (= lambda!199599 lambda!199573))))

(declare-fun bs!1065952 () Bool)

(assert (= bs!1065952 (and b!4657117 b!4656949)))

(assert (=> bs!1065952 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819332) (= lambda!199599 lambda!199572))))

(assert (=> b!4657117 true))

(declare-fun bs!1065953 () Bool)

(declare-fun b!4657119 () Bool)

(assert (= bs!1065953 (and b!4657119 d!1477637)))

(declare-fun lambda!199600 () Int)

(assert (=> bs!1065953 (not (= lambda!199600 lambda!199489))))

(declare-fun bs!1065954 () Bool)

(assert (= bs!1065954 (and b!4657119 d!1477647)))

(assert (=> bs!1065954 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819556) (= lambda!199600 lambda!199575))))

(declare-fun bs!1065955 () Bool)

(assert (= bs!1065955 (and b!4657119 b!4656951)))

(assert (=> bs!1065955 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819553) (= lambda!199600 lambda!199574))))

(declare-fun bs!1065956 () Bool)

(assert (= bs!1065956 (and b!4657119 d!1477639)))

(assert (=> bs!1065956 (not (= lambda!199600 lambda!199490))))

(declare-fun bs!1065957 () Bool)

(assert (= bs!1065957 (and b!4657119 b!4657117)))

(assert (=> bs!1065957 (= lambda!199600 lambda!199599)))

(assert (=> bs!1065955 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819332) (= lambda!199600 lambda!199573))))

(declare-fun bs!1065958 () Bool)

(assert (= bs!1065958 (and b!4657119 b!4656949)))

(assert (=> bs!1065958 (= (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819332) (= lambda!199600 lambda!199572))))

(assert (=> b!4657119 true))

(declare-fun lambda!199601 () Int)

(assert (=> bs!1065953 (not (= lambda!199601 lambda!199489))))

(declare-fun lt!1819673 () ListMap!4561)

(assert (=> bs!1065954 (= (= lt!1819673 lt!1819556) (= lambda!199601 lambda!199575))))

(assert (=> b!4657119 (= (= lt!1819673 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199601 lambda!199600))))

(assert (=> bs!1065955 (= (= lt!1819673 lt!1819553) (= lambda!199601 lambda!199574))))

(assert (=> bs!1065956 (not (= lambda!199601 lambda!199490))))

(assert (=> bs!1065957 (= (= lt!1819673 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199601 lambda!199599))))

(assert (=> bs!1065955 (= (= lt!1819673 lt!1819332) (= lambda!199601 lambda!199573))))

(assert (=> bs!1065958 (= (= lt!1819673 lt!1819332) (= lambda!199601 lambda!199572))))

(assert (=> b!4657119 true))

(declare-fun bs!1065959 () Bool)

(declare-fun d!1477783 () Bool)

(assert (= bs!1065959 (and d!1477783 d!1477637)))

(declare-fun lambda!199602 () Int)

(assert (=> bs!1065959 (not (= lambda!199602 lambda!199489))))

(declare-fun bs!1065960 () Bool)

(assert (= bs!1065960 (and d!1477783 d!1477647)))

(declare-fun lt!1819676 () ListMap!4561)

(assert (=> bs!1065960 (= (= lt!1819676 lt!1819556) (= lambda!199602 lambda!199575))))

(declare-fun bs!1065961 () Bool)

(assert (= bs!1065961 (and d!1477783 b!4657119)))

(assert (=> bs!1065961 (= (= lt!1819676 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199602 lambda!199600))))

(declare-fun bs!1065962 () Bool)

(assert (= bs!1065962 (and d!1477783 b!4656951)))

(assert (=> bs!1065962 (= (= lt!1819676 lt!1819553) (= lambda!199602 lambda!199574))))

(declare-fun bs!1065963 () Bool)

(assert (= bs!1065963 (and d!1477783 d!1477639)))

(assert (=> bs!1065963 (not (= lambda!199602 lambda!199490))))

(assert (=> bs!1065961 (= (= lt!1819676 lt!1819673) (= lambda!199602 lambda!199601))))

(declare-fun bs!1065964 () Bool)

(assert (= bs!1065964 (and d!1477783 b!4657117)))

(assert (=> bs!1065964 (= (= lt!1819676 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199602 lambda!199599))))

(assert (=> bs!1065962 (= (= lt!1819676 lt!1819332) (= lambda!199602 lambda!199573))))

(declare-fun bs!1065965 () Bool)

(assert (= bs!1065965 (and d!1477783 b!4656949)))

(assert (=> bs!1065965 (= (= lt!1819676 lt!1819332) (= lambda!199602 lambda!199572))))

(assert (=> d!1477783 true))

(declare-fun e!2905766 () Bool)

(assert (=> d!1477783 e!2905766))

(declare-fun res!1958414 () Bool)

(assert (=> d!1477783 (=> (not res!1958414) (not e!2905766))))

(assert (=> d!1477783 (= res!1958414 (forall!11033 (t!359150 oldBucket!40) lambda!199602))))

(declare-fun e!2905764 () ListMap!4561)

(assert (=> d!1477783 (= lt!1819676 e!2905764)))

(declare-fun c!797120 () Bool)

(assert (=> d!1477783 (= c!797120 ((_ is Nil!51910) (t!359150 oldBucket!40)))))

(assert (=> d!1477783 (noDuplicateKeys!1646 (t!359150 oldBucket!40))))

(assert (=> d!1477783 (= (addToMapMapFromBucket!1103 (t!359150 oldBucket!40) (+!1986 lt!1819332 (h!58056 oldBucket!40))) lt!1819676)))

(declare-fun bm!325437 () Bool)

(declare-fun call!325443 () Unit!118752)

(assert (=> bm!325437 (= call!325443 (lemmaContainsAllItsOwnKeys!600 (+!1986 lt!1819332 (h!58056 oldBucket!40))))))

(assert (=> b!4657117 (= e!2905764 (+!1986 lt!1819332 (h!58056 oldBucket!40)))))

(declare-fun lt!1819671 () Unit!118752)

(assert (=> b!4657117 (= lt!1819671 call!325443)))

(declare-fun call!325442 () Bool)

(assert (=> b!4657117 call!325442))

(declare-fun lt!1819679 () Unit!118752)

(assert (=> b!4657117 (= lt!1819679 lt!1819671)))

(declare-fun call!325444 () Bool)

(assert (=> b!4657117 call!325444))

(declare-fun lt!1819687 () Unit!118752)

(declare-fun Unit!118783 () Unit!118752)

(assert (=> b!4657117 (= lt!1819687 Unit!118783)))

(declare-fun bm!325438 () Bool)

(assert (=> bm!325438 (= call!325442 (forall!11033 (toList!5221 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (ite c!797120 lambda!199599 lambda!199601)))))

(declare-fun b!4657118 () Bool)

(assert (=> b!4657118 (= e!2905766 (invariantList!1300 (toList!5221 lt!1819676)))))

(assert (=> b!4657119 (= e!2905764 lt!1819673)))

(declare-fun lt!1819686 () ListMap!4561)

(assert (=> b!4657119 (= lt!1819686 (+!1986 (+!1986 lt!1819332 (h!58056 oldBucket!40)) (h!58056 (t!359150 oldBucket!40))))))

(assert (=> b!4657119 (= lt!1819673 (addToMapMapFromBucket!1103 (t!359150 (t!359150 oldBucket!40)) (+!1986 (+!1986 lt!1819332 (h!58056 oldBucket!40)) (h!58056 (t!359150 oldBucket!40)))))))

(declare-fun lt!1819670 () Unit!118752)

(assert (=> b!4657119 (= lt!1819670 call!325443)))

(assert (=> b!4657119 call!325444))

(declare-fun lt!1819682 () Unit!118752)

(assert (=> b!4657119 (= lt!1819682 lt!1819670)))

(assert (=> b!4657119 (forall!11033 (toList!5221 lt!1819686) lambda!199601)))

(declare-fun lt!1819683 () Unit!118752)

(declare-fun Unit!118785 () Unit!118752)

(assert (=> b!4657119 (= lt!1819683 Unit!118785)))

(assert (=> b!4657119 (forall!11033 (t!359150 (t!359150 oldBucket!40)) lambda!199601)))

(declare-fun lt!1819681 () Unit!118752)

(declare-fun Unit!118786 () Unit!118752)

(assert (=> b!4657119 (= lt!1819681 Unit!118786)))

(declare-fun lt!1819684 () Unit!118752)

(declare-fun Unit!118787 () Unit!118752)

(assert (=> b!4657119 (= lt!1819684 Unit!118787)))

(declare-fun lt!1819677 () Unit!118752)

(assert (=> b!4657119 (= lt!1819677 (forallContained!3234 (toList!5221 lt!1819686) lambda!199601 (h!58056 (t!359150 oldBucket!40))))))

(assert (=> b!4657119 (contains!15053 lt!1819686 (_1!29809 (h!58056 (t!359150 oldBucket!40))))))

(declare-fun lt!1819689 () Unit!118752)

(declare-fun Unit!118789 () Unit!118752)

(assert (=> b!4657119 (= lt!1819689 Unit!118789)))

(assert (=> b!4657119 (contains!15053 lt!1819673 (_1!29809 (h!58056 (t!359150 oldBucket!40))))))

(declare-fun lt!1819688 () Unit!118752)

(declare-fun Unit!118790 () Unit!118752)

(assert (=> b!4657119 (= lt!1819688 Unit!118790)))

(assert (=> b!4657119 (forall!11033 (t!359150 oldBucket!40) lambda!199601)))

(declare-fun lt!1819675 () Unit!118752)

(declare-fun Unit!118791 () Unit!118752)

(assert (=> b!4657119 (= lt!1819675 Unit!118791)))

(assert (=> b!4657119 (forall!11033 (toList!5221 lt!1819686) lambda!199601)))

(declare-fun lt!1819680 () Unit!118752)

(declare-fun Unit!118792 () Unit!118752)

(assert (=> b!4657119 (= lt!1819680 Unit!118792)))

(declare-fun lt!1819685 () Unit!118752)

(declare-fun Unit!118793 () Unit!118752)

(assert (=> b!4657119 (= lt!1819685 Unit!118793)))

(declare-fun lt!1819678 () Unit!118752)

(assert (=> b!4657119 (= lt!1819678 (addForallContainsKeyThenBeforeAdding!599 (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819673 (_1!29809 (h!58056 (t!359150 oldBucket!40))) (_2!29809 (h!58056 (t!359150 oldBucket!40)))))))

(assert (=> b!4657119 (forall!11033 (toList!5221 (+!1986 lt!1819332 (h!58056 oldBucket!40))) lambda!199601)))

(declare-fun lt!1819672 () Unit!118752)

(assert (=> b!4657119 (= lt!1819672 lt!1819678)))

(assert (=> b!4657119 call!325442))

(declare-fun lt!1819674 () Unit!118752)

(declare-fun Unit!118794 () Unit!118752)

(assert (=> b!4657119 (= lt!1819674 Unit!118794)))

(declare-fun res!1958415 () Bool)

(assert (=> b!4657119 (= res!1958415 (forall!11033 (t!359150 oldBucket!40) lambda!199601))))

(declare-fun e!2905765 () Bool)

(assert (=> b!4657119 (=> (not res!1958415) (not e!2905765))))

(assert (=> b!4657119 e!2905765))

(declare-fun lt!1819669 () Unit!118752)

(declare-fun Unit!118795 () Unit!118752)

(assert (=> b!4657119 (= lt!1819669 Unit!118795)))

(declare-fun bm!325439 () Bool)

(assert (=> bm!325439 (= call!325444 (forall!11033 (toList!5221 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (ite c!797120 lambda!199599 lambda!199600)))))

(declare-fun b!4657120 () Bool)

(assert (=> b!4657120 (= e!2905765 (forall!11033 (toList!5221 (+!1986 lt!1819332 (h!58056 oldBucket!40))) lambda!199601))))

(declare-fun b!4657121 () Bool)

(declare-fun res!1958413 () Bool)

(assert (=> b!4657121 (=> (not res!1958413) (not e!2905766))))

(assert (=> b!4657121 (= res!1958413 (forall!11033 (toList!5221 (+!1986 lt!1819332 (h!58056 oldBucket!40))) lambda!199602))))

(assert (= (and d!1477783 c!797120) b!4657117))

(assert (= (and d!1477783 (not c!797120)) b!4657119))

(assert (= (and b!4657119 res!1958415) b!4657120))

(assert (= (or b!4657117 b!4657119) bm!325437))

(assert (= (or b!4657117 b!4657119) bm!325439))

(assert (= (or b!4657117 b!4657119) bm!325438))

(assert (= (and d!1477783 res!1958414) b!4657121))

(assert (= (and b!4657121 res!1958413) b!4657118))

(declare-fun m!5537703 () Bool)

(assert (=> bm!325439 m!5537703))

(declare-fun m!5537705 () Bool)

(assert (=> b!4657119 m!5537705))

(declare-fun m!5537707 () Bool)

(assert (=> b!4657119 m!5537707))

(declare-fun m!5537709 () Bool)

(assert (=> b!4657119 m!5537709))

(assert (=> b!4657119 m!5537451))

(declare-fun m!5537711 () Bool)

(assert (=> b!4657119 m!5537711))

(declare-fun m!5537713 () Bool)

(assert (=> b!4657119 m!5537713))

(assert (=> b!4657119 m!5537709))

(declare-fun m!5537715 () Bool)

(assert (=> b!4657119 m!5537715))

(assert (=> b!4657119 m!5537713))

(declare-fun m!5537717 () Bool)

(assert (=> b!4657119 m!5537717))

(declare-fun m!5537719 () Bool)

(assert (=> b!4657119 m!5537719))

(declare-fun m!5537721 () Bool)

(assert (=> b!4657119 m!5537721))

(declare-fun m!5537723 () Bool)

(assert (=> b!4657119 m!5537723))

(assert (=> b!4657119 m!5537451))

(assert (=> b!4657119 m!5537705))

(declare-fun m!5537725 () Bool)

(assert (=> bm!325438 m!5537725))

(declare-fun m!5537727 () Bool)

(assert (=> d!1477783 m!5537727))

(assert (=> d!1477783 m!5537583))

(assert (=> bm!325437 m!5537451))

(declare-fun m!5537729 () Bool)

(assert (=> bm!325437 m!5537729))

(assert (=> b!4657120 m!5537723))

(declare-fun m!5537731 () Bool)

(assert (=> b!4657118 m!5537731))

(declare-fun m!5537733 () Bool)

(assert (=> b!4657121 m!5537733))

(assert (=> b!4656951 d!1477783))

(declare-fun d!1477795 () Bool)

(assert (=> d!1477795 (dynLambda!21597 lambda!199574 (h!58056 oldBucket!40))))

(declare-fun lt!1819695 () Unit!118752)

(declare-fun choose!32025 (List!52034 Int tuple2!53030) Unit!118752)

(assert (=> d!1477795 (= lt!1819695 (choose!32025 (toList!5221 lt!1819566) lambda!199574 (h!58056 oldBucket!40)))))

(declare-fun e!2905789 () Bool)

(assert (=> d!1477795 e!2905789))

(declare-fun res!1958432 () Bool)

(assert (=> d!1477795 (=> (not res!1958432) (not e!2905789))))

(assert (=> d!1477795 (= res!1958432 (forall!11033 (toList!5221 lt!1819566) lambda!199574))))

(assert (=> d!1477795 (= (forallContained!3234 (toList!5221 lt!1819566) lambda!199574 (h!58056 oldBucket!40)) lt!1819695)))

(declare-fun b!4657150 () Bool)

(assert (=> b!4657150 (= e!2905789 (contains!15059 (toList!5221 lt!1819566) (h!58056 oldBucket!40)))))

(assert (= (and d!1477795 res!1958432) b!4657150))

(declare-fun b_lambda!174365 () Bool)

(assert (=> (not b_lambda!174365) (not d!1477795)))

(declare-fun m!5537737 () Bool)

(assert (=> d!1477795 m!5537737))

(declare-fun m!5537739 () Bool)

(assert (=> d!1477795 m!5537739))

(assert (=> d!1477795 m!5537455))

(declare-fun m!5537741 () Bool)

(assert (=> b!4657150 m!5537741))

(assert (=> b!4656951 d!1477795))

(declare-fun d!1477801 () Bool)

(declare-fun res!1958433 () Bool)

(declare-fun e!2905790 () Bool)

(assert (=> d!1477801 (=> res!1958433 e!2905790)))

(assert (=> d!1477801 (= res!1958433 ((_ is Nil!51910) (toList!5221 lt!1819332)))))

(assert (=> d!1477801 (= (forall!11033 (toList!5221 lt!1819332) lambda!199574) e!2905790)))

(declare-fun b!4657151 () Bool)

(declare-fun e!2905791 () Bool)

(assert (=> b!4657151 (= e!2905790 e!2905791)))

(declare-fun res!1958434 () Bool)

(assert (=> b!4657151 (=> (not res!1958434) (not e!2905791))))

(assert (=> b!4657151 (= res!1958434 (dynLambda!21597 lambda!199574 (h!58056 (toList!5221 lt!1819332))))))

(declare-fun b!4657152 () Bool)

(assert (=> b!4657152 (= e!2905791 (forall!11033 (t!359150 (toList!5221 lt!1819332)) lambda!199574))))

(assert (= (and d!1477801 (not res!1958433)) b!4657151))

(assert (= (and b!4657151 res!1958434) b!4657152))

(declare-fun b_lambda!174367 () Bool)

(assert (=> (not b_lambda!174367) (not b!4657151)))

(declare-fun m!5537743 () Bool)

(assert (=> b!4657151 m!5537743))

(declare-fun m!5537745 () Bool)

(assert (=> b!4657152 m!5537745))

(assert (=> b!4656951 d!1477801))

(declare-fun d!1477803 () Bool)

(declare-fun e!2905819 () Bool)

(assert (=> d!1477803 e!2905819))

(declare-fun res!1958460 () Bool)

(assert (=> d!1477803 (=> (not res!1958460) (not e!2905819))))

(declare-fun lt!1819714 () ListMap!4561)

(assert (=> d!1477803 (= res!1958460 (contains!15053 lt!1819714 (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun lt!1819715 () List!52034)

(assert (=> d!1477803 (= lt!1819714 (ListMap!4562 lt!1819715))))

(declare-fun lt!1819716 () Unit!118752)

(declare-fun lt!1819717 () Unit!118752)

(assert (=> d!1477803 (= lt!1819716 lt!1819717)))

(assert (=> d!1477803 (= (getValueByKey!1613 lt!1819715 (_1!29809 (h!58056 oldBucket!40))) (Some!11828 (_2!29809 (h!58056 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!925 (List!52034 K!13265 V!13511) Unit!118752)

(assert (=> d!1477803 (= lt!1819717 (lemmaContainsTupThenGetReturnValue!925 lt!1819715 (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!433 (List!52034 K!13265 V!13511) List!52034)

(assert (=> d!1477803 (= lt!1819715 (insertNoDuplicatedKeys!433 (toList!5221 lt!1819332) (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))))))

(assert (=> d!1477803 (= (+!1986 lt!1819332 (h!58056 oldBucket!40)) lt!1819714)))

(declare-fun b!4657187 () Bool)

(declare-fun res!1958461 () Bool)

(assert (=> b!4657187 (=> (not res!1958461) (not e!2905819))))

(assert (=> b!4657187 (= res!1958461 (= (getValueByKey!1613 (toList!5221 lt!1819714) (_1!29809 (h!58056 oldBucket!40))) (Some!11828 (_2!29809 (h!58056 oldBucket!40)))))))

(declare-fun b!4657188 () Bool)

(assert (=> b!4657188 (= e!2905819 (contains!15059 (toList!5221 lt!1819714) (h!58056 oldBucket!40)))))

(assert (= (and d!1477803 res!1958460) b!4657187))

(assert (= (and b!4657187 res!1958461) b!4657188))

(declare-fun m!5537795 () Bool)

(assert (=> d!1477803 m!5537795))

(declare-fun m!5537797 () Bool)

(assert (=> d!1477803 m!5537797))

(declare-fun m!5537799 () Bool)

(assert (=> d!1477803 m!5537799))

(declare-fun m!5537801 () Bool)

(assert (=> d!1477803 m!5537801))

(declare-fun m!5537803 () Bool)

(assert (=> b!4657187 m!5537803))

(declare-fun m!5537805 () Bool)

(assert (=> b!4657188 m!5537805))

(assert (=> b!4656951 d!1477803))

(declare-fun d!1477829 () Bool)

(declare-fun res!1958462 () Bool)

(declare-fun e!2905820 () Bool)

(assert (=> d!1477829 (=> res!1958462 e!2905820)))

(assert (=> d!1477829 (= res!1958462 ((_ is Nil!51910) oldBucket!40))))

(assert (=> d!1477829 (= (forall!11033 oldBucket!40 lambda!199574) e!2905820)))

(declare-fun b!4657189 () Bool)

(declare-fun e!2905821 () Bool)

(assert (=> b!4657189 (= e!2905820 e!2905821)))

(declare-fun res!1958463 () Bool)

(assert (=> b!4657189 (=> (not res!1958463) (not e!2905821))))

(assert (=> b!4657189 (= res!1958463 (dynLambda!21597 lambda!199574 (h!58056 oldBucket!40)))))

(declare-fun b!4657190 () Bool)

(assert (=> b!4657190 (= e!2905821 (forall!11033 (t!359150 oldBucket!40) lambda!199574))))

(assert (= (and d!1477829 (not res!1958462)) b!4657189))

(assert (= (and b!4657189 res!1958463) b!4657190))

(declare-fun b_lambda!174375 () Bool)

(assert (=> (not b_lambda!174375) (not b!4657189)))

(assert (=> b!4657189 m!5537737))

(assert (=> b!4657190 m!5537461))

(assert (=> b!4656951 d!1477829))

(declare-fun bm!325441 () Bool)

(declare-fun call!325446 () Bool)

(declare-fun e!2905824 () List!52037)

(assert (=> bm!325441 (= call!325446 (contains!15058 e!2905824 (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun c!797131 () Bool)

(declare-fun c!797132 () Bool)

(assert (=> bm!325441 (= c!797131 c!797132)))

(declare-fun d!1477831 () Bool)

(declare-fun e!2905822 () Bool)

(assert (=> d!1477831 e!2905822))

(declare-fun res!1958466 () Bool)

(assert (=> d!1477831 (=> res!1958466 e!2905822)))

(declare-fun e!2905826 () Bool)

(assert (=> d!1477831 (= res!1958466 e!2905826)))

(declare-fun res!1958464 () Bool)

(assert (=> d!1477831 (=> (not res!1958464) (not e!2905826))))

(declare-fun lt!1819721 () Bool)

(assert (=> d!1477831 (= res!1958464 (not lt!1819721))))

(declare-fun lt!1819723 () Bool)

(assert (=> d!1477831 (= lt!1819721 lt!1819723)))

(declare-fun lt!1819719 () Unit!118752)

(declare-fun e!2905825 () Unit!118752)

(assert (=> d!1477831 (= lt!1819719 e!2905825)))

(assert (=> d!1477831 (= c!797132 lt!1819723)))

(assert (=> d!1477831 (= lt!1819723 (containsKey!2730 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> d!1477831 (= (contains!15053 lt!1819553 (_1!29809 (h!58056 oldBucket!40))) lt!1819721)))

(declare-fun b!4657191 () Bool)

(declare-fun e!2905823 () Bool)

(assert (=> b!4657191 (= e!2905822 e!2905823)))

(declare-fun res!1958465 () Bool)

(assert (=> b!4657191 (=> (not res!1958465) (not e!2905823))))

(assert (=> b!4657191 (= res!1958465 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40)))))))

(declare-fun b!4657192 () Bool)

(assert (=> b!4657192 false))

(declare-fun lt!1819724 () Unit!118752)

(declare-fun lt!1819725 () Unit!118752)

(assert (=> b!4657192 (= lt!1819724 lt!1819725)))

(assert (=> b!4657192 (containsKey!2730 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40)))))

(assert (=> b!4657192 (= lt!1819725 (lemmaInGetKeysListThenContainsKey!750 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun e!2905827 () Unit!118752)

(declare-fun Unit!118796 () Unit!118752)

(assert (=> b!4657192 (= e!2905827 Unit!118796)))

(declare-fun b!4657193 () Bool)

(declare-fun Unit!118797 () Unit!118752)

(assert (=> b!4657193 (= e!2905827 Unit!118797)))

(declare-fun b!4657194 () Bool)

(assert (=> b!4657194 (= e!2905824 (getKeysList!751 (toList!5221 lt!1819553)))))

(declare-fun b!4657195 () Bool)

(declare-fun lt!1819722 () Unit!118752)

(assert (=> b!4657195 (= e!2905825 lt!1819722)))

(declare-fun lt!1819718 () Unit!118752)

(assert (=> b!4657195 (= lt!1819718 (lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> b!4657195 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun lt!1819720 () Unit!118752)

(assert (=> b!4657195 (= lt!1819720 lt!1819718)))

(assert (=> b!4657195 (= lt!1819722 (lemmaInListThenGetKeysListContains!746 (toList!5221 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> b!4657195 call!325446))

(declare-fun b!4657196 () Bool)

(assert (=> b!4657196 (= e!2905823 (contains!15058 (keys!18394 lt!1819553) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun b!4657197 () Bool)

(assert (=> b!4657197 (= e!2905824 (keys!18394 lt!1819553))))

(declare-fun b!4657198 () Bool)

(assert (=> b!4657198 (= e!2905825 e!2905827)))

(declare-fun c!797133 () Bool)

(assert (=> b!4657198 (= c!797133 call!325446)))

(declare-fun b!4657199 () Bool)

(assert (=> b!4657199 (= e!2905826 (not (contains!15058 (keys!18394 lt!1819553) (_1!29809 (h!58056 oldBucket!40)))))))

(assert (= (and d!1477831 c!797132) b!4657195))

(assert (= (and d!1477831 (not c!797132)) b!4657198))

(assert (= (and b!4657198 c!797133) b!4657192))

(assert (= (and b!4657198 (not c!797133)) b!4657193))

(assert (= (or b!4657195 b!4657198) bm!325441))

(assert (= (and bm!325441 c!797131) b!4657194))

(assert (= (and bm!325441 (not c!797131)) b!4657197))

(assert (= (and d!1477831 res!1958464) b!4657199))

(assert (= (and d!1477831 (not res!1958466)) b!4657191))

(assert (= (and b!4657191 res!1958465) b!4657196))

(declare-fun m!5537807 () Bool)

(assert (=> bm!325441 m!5537807))

(declare-fun m!5537809 () Bool)

(assert (=> b!4657197 m!5537809))

(assert (=> b!4657196 m!5537809))

(assert (=> b!4657196 m!5537809))

(declare-fun m!5537811 () Bool)

(assert (=> b!4657196 m!5537811))

(declare-fun m!5537813 () Bool)

(assert (=> d!1477831 m!5537813))

(declare-fun m!5537815 () Bool)

(assert (=> b!4657191 m!5537815))

(assert (=> b!4657191 m!5537815))

(declare-fun m!5537817 () Bool)

(assert (=> b!4657191 m!5537817))

(assert (=> b!4657199 m!5537809))

(assert (=> b!4657199 m!5537809))

(assert (=> b!4657199 m!5537811))

(declare-fun m!5537819 () Bool)

(assert (=> b!4657194 m!5537819))

(assert (=> b!4657192 m!5537813))

(declare-fun m!5537821 () Bool)

(assert (=> b!4657192 m!5537821))

(declare-fun m!5537823 () Bool)

(assert (=> b!4657195 m!5537823))

(assert (=> b!4657195 m!5537815))

(assert (=> b!4657195 m!5537815))

(assert (=> b!4657195 m!5537817))

(declare-fun m!5537825 () Bool)

(assert (=> b!4657195 m!5537825))

(assert (=> b!4656951 d!1477831))

(declare-fun d!1477833 () Bool)

(declare-fun res!1958467 () Bool)

(declare-fun e!2905828 () Bool)

(assert (=> d!1477833 (=> res!1958467 e!2905828)))

(assert (=> d!1477833 (= res!1958467 ((_ is Nil!51910) (toList!5221 lt!1819566)))))

(assert (=> d!1477833 (= (forall!11033 (toList!5221 lt!1819566) lambda!199574) e!2905828)))

(declare-fun b!4657200 () Bool)

(declare-fun e!2905829 () Bool)

(assert (=> b!4657200 (= e!2905828 e!2905829)))

(declare-fun res!1958468 () Bool)

(assert (=> b!4657200 (=> (not res!1958468) (not e!2905829))))

(assert (=> b!4657200 (= res!1958468 (dynLambda!21597 lambda!199574 (h!58056 (toList!5221 lt!1819566))))))

(declare-fun b!4657201 () Bool)

(assert (=> b!4657201 (= e!2905829 (forall!11033 (t!359150 (toList!5221 lt!1819566)) lambda!199574))))

(assert (= (and d!1477833 (not res!1958467)) b!4657200))

(assert (= (and b!4657200 res!1958468) b!4657201))

(declare-fun b_lambda!174377 () Bool)

(assert (=> (not b_lambda!174377) (not b!4657200)))

(declare-fun m!5537827 () Bool)

(assert (=> b!4657200 m!5537827))

(declare-fun m!5537829 () Bool)

(assert (=> b!4657201 m!5537829))

(assert (=> b!4656951 d!1477833))

(declare-fun d!1477835 () Bool)

(declare-fun res!1958469 () Bool)

(declare-fun e!2905830 () Bool)

(assert (=> d!1477835 (=> res!1958469 e!2905830)))

(assert (=> d!1477835 (= res!1958469 ((_ is Nil!51910) (t!359150 oldBucket!40)))))

(assert (=> d!1477835 (= (forall!11033 (t!359150 oldBucket!40) lambda!199574) e!2905830)))

(declare-fun b!4657202 () Bool)

(declare-fun e!2905831 () Bool)

(assert (=> b!4657202 (= e!2905830 e!2905831)))

(declare-fun res!1958470 () Bool)

(assert (=> b!4657202 (=> (not res!1958470) (not e!2905831))))

(assert (=> b!4657202 (= res!1958470 (dynLambda!21597 lambda!199574 (h!58056 (t!359150 oldBucket!40))))))

(declare-fun b!4657203 () Bool)

(assert (=> b!4657203 (= e!2905831 (forall!11033 (t!359150 (t!359150 oldBucket!40)) lambda!199574))))

(assert (= (and d!1477835 (not res!1958469)) b!4657202))

(assert (= (and b!4657202 res!1958470) b!4657203))

(declare-fun b_lambda!174379 () Bool)

(assert (=> (not b_lambda!174379) (not b!4657202)))

(declare-fun m!5537831 () Bool)

(assert (=> b!4657202 m!5537831))

(declare-fun m!5537833 () Bool)

(assert (=> b!4657203 m!5537833))

(assert (=> b!4656951 d!1477835))

(declare-fun bm!325442 () Bool)

(declare-fun call!325447 () Bool)

(declare-fun e!2905834 () List!52037)

(assert (=> bm!325442 (= call!325447 (contains!15058 e!2905834 (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun c!797134 () Bool)

(declare-fun c!797135 () Bool)

(assert (=> bm!325442 (= c!797134 c!797135)))

(declare-fun d!1477837 () Bool)

(declare-fun e!2905832 () Bool)

(assert (=> d!1477837 e!2905832))

(declare-fun res!1958473 () Bool)

(assert (=> d!1477837 (=> res!1958473 e!2905832)))

(declare-fun e!2905836 () Bool)

(assert (=> d!1477837 (= res!1958473 e!2905836)))

(declare-fun res!1958471 () Bool)

(assert (=> d!1477837 (=> (not res!1958471) (not e!2905836))))

(declare-fun lt!1819729 () Bool)

(assert (=> d!1477837 (= res!1958471 (not lt!1819729))))

(declare-fun lt!1819731 () Bool)

(assert (=> d!1477837 (= lt!1819729 lt!1819731)))

(declare-fun lt!1819727 () Unit!118752)

(declare-fun e!2905835 () Unit!118752)

(assert (=> d!1477837 (= lt!1819727 e!2905835)))

(assert (=> d!1477837 (= c!797135 lt!1819731)))

(assert (=> d!1477837 (= lt!1819731 (containsKey!2730 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> d!1477837 (= (contains!15053 lt!1819566 (_1!29809 (h!58056 oldBucket!40))) lt!1819729)))

(declare-fun b!4657204 () Bool)

(declare-fun e!2905833 () Bool)

(assert (=> b!4657204 (= e!2905832 e!2905833)))

(declare-fun res!1958472 () Bool)

(assert (=> b!4657204 (=> (not res!1958472) (not e!2905833))))

(assert (=> b!4657204 (= res!1958472 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40)))))))

(declare-fun b!4657205 () Bool)

(assert (=> b!4657205 false))

(declare-fun lt!1819732 () Unit!118752)

(declare-fun lt!1819733 () Unit!118752)

(assert (=> b!4657205 (= lt!1819732 lt!1819733)))

(assert (=> b!4657205 (containsKey!2730 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40)))))

(assert (=> b!4657205 (= lt!1819733 (lemmaInGetKeysListThenContainsKey!750 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun e!2905837 () Unit!118752)

(declare-fun Unit!118802 () Unit!118752)

(assert (=> b!4657205 (= e!2905837 Unit!118802)))

(declare-fun b!4657206 () Bool)

(declare-fun Unit!118803 () Unit!118752)

(assert (=> b!4657206 (= e!2905837 Unit!118803)))

(declare-fun b!4657207 () Bool)

(assert (=> b!4657207 (= e!2905834 (getKeysList!751 (toList!5221 lt!1819566)))))

(declare-fun b!4657208 () Bool)

(declare-fun lt!1819730 () Unit!118752)

(assert (=> b!4657208 (= e!2905835 lt!1819730)))

(declare-fun lt!1819726 () Unit!118752)

(assert (=> b!4657208 (= lt!1819726 (lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> b!4657208 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun lt!1819728 () Unit!118752)

(assert (=> b!4657208 (= lt!1819728 lt!1819726)))

(assert (=> b!4657208 (= lt!1819730 (lemmaInListThenGetKeysListContains!746 (toList!5221 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> b!4657208 call!325447))

(declare-fun b!4657209 () Bool)

(assert (=> b!4657209 (= e!2905833 (contains!15058 (keys!18394 lt!1819566) (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun b!4657210 () Bool)

(assert (=> b!4657210 (= e!2905834 (keys!18394 lt!1819566))))

(declare-fun b!4657211 () Bool)

(assert (=> b!4657211 (= e!2905835 e!2905837)))

(declare-fun c!797136 () Bool)

(assert (=> b!4657211 (= c!797136 call!325447)))

(declare-fun b!4657212 () Bool)

(assert (=> b!4657212 (= e!2905836 (not (contains!15058 (keys!18394 lt!1819566) (_1!29809 (h!58056 oldBucket!40)))))))

(assert (= (and d!1477837 c!797135) b!4657208))

(assert (= (and d!1477837 (not c!797135)) b!4657211))

(assert (= (and b!4657211 c!797136) b!4657205))

(assert (= (and b!4657211 (not c!797136)) b!4657206))

(assert (= (or b!4657208 b!4657211) bm!325442))

(assert (= (and bm!325442 c!797134) b!4657207))

(assert (= (and bm!325442 (not c!797134)) b!4657210))

(assert (= (and d!1477837 res!1958471) b!4657212))

(assert (= (and d!1477837 (not res!1958473)) b!4657204))

(assert (= (and b!4657204 res!1958472) b!4657209))

(declare-fun m!5537835 () Bool)

(assert (=> bm!325442 m!5537835))

(declare-fun m!5537837 () Bool)

(assert (=> b!4657210 m!5537837))

(assert (=> b!4657209 m!5537837))

(assert (=> b!4657209 m!5537837))

(declare-fun m!5537839 () Bool)

(assert (=> b!4657209 m!5537839))

(declare-fun m!5537841 () Bool)

(assert (=> d!1477837 m!5537841))

(declare-fun m!5537843 () Bool)

(assert (=> b!4657204 m!5537843))

(assert (=> b!4657204 m!5537843))

(declare-fun m!5537845 () Bool)

(assert (=> b!4657204 m!5537845))

(assert (=> b!4657212 m!5537837))

(assert (=> b!4657212 m!5537837))

(assert (=> b!4657212 m!5537839))

(declare-fun m!5537847 () Bool)

(assert (=> b!4657207 m!5537847))

(assert (=> b!4657205 m!5537841))

(declare-fun m!5537849 () Bool)

(assert (=> b!4657205 m!5537849))

(declare-fun m!5537851 () Bool)

(assert (=> b!4657208 m!5537851))

(assert (=> b!4657208 m!5537843))

(assert (=> b!4657208 m!5537843))

(assert (=> b!4657208 m!5537845))

(declare-fun m!5537853 () Bool)

(assert (=> b!4657208 m!5537853))

(assert (=> b!4656951 d!1477837))

(declare-fun bs!1065975 () Bool)

(declare-fun d!1477839 () Bool)

(assert (= bs!1065975 (and d!1477839 d!1477637)))

(declare-fun lambda!199608 () Int)

(assert (=> bs!1065975 (not (= lambda!199608 lambda!199489))))

(declare-fun bs!1065976 () Bool)

(assert (= bs!1065976 (and d!1477839 d!1477647)))

(assert (=> bs!1065976 (= (= lt!1819553 lt!1819556) (= lambda!199608 lambda!199575))))

(declare-fun bs!1065977 () Bool)

(assert (= bs!1065977 (and d!1477839 b!4657119)))

(assert (=> bs!1065977 (= (= lt!1819553 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199608 lambda!199600))))

(declare-fun bs!1065978 () Bool)

(assert (= bs!1065978 (and d!1477839 b!4656951)))

(assert (=> bs!1065978 (= lambda!199608 lambda!199574)))

(declare-fun bs!1065979 () Bool)

(assert (= bs!1065979 (and d!1477839 d!1477639)))

(assert (=> bs!1065979 (not (= lambda!199608 lambda!199490))))

(declare-fun bs!1065980 () Bool)

(assert (= bs!1065980 (and d!1477839 b!4657117)))

(assert (=> bs!1065980 (= (= lt!1819553 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199608 lambda!199599))))

(assert (=> bs!1065978 (= (= lt!1819553 lt!1819332) (= lambda!199608 lambda!199573))))

(declare-fun bs!1065981 () Bool)

(assert (= bs!1065981 (and d!1477839 b!4656949)))

(assert (=> bs!1065981 (= (= lt!1819553 lt!1819332) (= lambda!199608 lambda!199572))))

(assert (=> bs!1065977 (= (= lt!1819553 lt!1819673) (= lambda!199608 lambda!199601))))

(declare-fun bs!1065982 () Bool)

(assert (= bs!1065982 (and d!1477839 d!1477783)))

(assert (=> bs!1065982 (= (= lt!1819553 lt!1819676) (= lambda!199608 lambda!199602))))

(assert (=> d!1477839 true))

(assert (=> d!1477839 (forall!11033 (toList!5221 lt!1819332) lambda!199608)))

(declare-fun lt!1819736 () Unit!118752)

(declare-fun choose!32029 (ListMap!4561 ListMap!4561 K!13265 V!13511) Unit!118752)

(assert (=> d!1477839 (= lt!1819736 (choose!32029 lt!1819332 lt!1819553 (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))))))

(assert (=> d!1477839 (forall!11033 (toList!5221 (+!1986 lt!1819332 (tuple2!53031 (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))))) lambda!199608)))

(assert (=> d!1477839 (= (addForallContainsKeyThenBeforeAdding!599 lt!1819332 lt!1819553 (_1!29809 (h!58056 oldBucket!40)) (_2!29809 (h!58056 oldBucket!40))) lt!1819736)))

(declare-fun bs!1065983 () Bool)

(assert (= bs!1065983 d!1477839))

(declare-fun m!5537855 () Bool)

(assert (=> bs!1065983 m!5537855))

(declare-fun m!5537857 () Bool)

(assert (=> bs!1065983 m!5537857))

(declare-fun m!5537859 () Bool)

(assert (=> bs!1065983 m!5537859))

(declare-fun m!5537861 () Bool)

(assert (=> bs!1065983 m!5537861))

(assert (=> b!4656951 d!1477839))

(assert (=> d!1477641 d!1477773))

(declare-fun bs!1065984 () Bool)

(declare-fun d!1477841 () Bool)

(assert (= bs!1065984 (and d!1477841 d!1477637)))

(declare-fun lambda!199619 () Int)

(assert (=> bs!1065984 (not (= lambda!199619 lambda!199489))))

(declare-fun bs!1065985 () Bool)

(assert (= bs!1065985 (and d!1477841 d!1477647)))

(assert (=> bs!1065985 (= (= lt!1819332 lt!1819556) (= lambda!199619 lambda!199575))))

(declare-fun bs!1065986 () Bool)

(assert (= bs!1065986 (and d!1477841 b!4657119)))

(assert (=> bs!1065986 (= (= lt!1819332 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199619 lambda!199600))))

(declare-fun bs!1065987 () Bool)

(assert (= bs!1065987 (and d!1477841 b!4656951)))

(assert (=> bs!1065987 (= (= lt!1819332 lt!1819553) (= lambda!199619 lambda!199574))))

(declare-fun bs!1065988 () Bool)

(assert (= bs!1065988 (and d!1477841 d!1477639)))

(assert (=> bs!1065988 (not (= lambda!199619 lambda!199490))))

(declare-fun bs!1065989 () Bool)

(assert (= bs!1065989 (and d!1477841 b!4657117)))

(assert (=> bs!1065989 (= (= lt!1819332 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199619 lambda!199599))))

(assert (=> bs!1065987 (= lambda!199619 lambda!199573)))

(declare-fun bs!1065990 () Bool)

(assert (= bs!1065990 (and d!1477841 b!4656949)))

(assert (=> bs!1065990 (= lambda!199619 lambda!199572)))

(assert (=> bs!1065986 (= (= lt!1819332 lt!1819673) (= lambda!199619 lambda!199601))))

(declare-fun bs!1065991 () Bool)

(assert (= bs!1065991 (and d!1477841 d!1477783)))

(assert (=> bs!1065991 (= (= lt!1819332 lt!1819676) (= lambda!199619 lambda!199602))))

(declare-fun bs!1065992 () Bool)

(assert (= bs!1065992 (and d!1477841 d!1477839)))

(assert (=> bs!1065992 (= (= lt!1819332 lt!1819553) (= lambda!199619 lambda!199608))))

(assert (=> d!1477841 true))

(assert (=> d!1477841 (forall!11033 (toList!5221 lt!1819332) lambda!199619)))

(declare-fun lt!1819753 () Unit!118752)

(declare-fun choose!32030 (ListMap!4561) Unit!118752)

(assert (=> d!1477841 (= lt!1819753 (choose!32030 lt!1819332))))

(assert (=> d!1477841 (= (lemmaContainsAllItsOwnKeys!600 lt!1819332) lt!1819753)))

(declare-fun bs!1065993 () Bool)

(assert (= bs!1065993 d!1477841))

(declare-fun m!5537863 () Bool)

(assert (=> bs!1065993 m!5537863))

(declare-fun m!5537865 () Bool)

(assert (=> bs!1065993 m!5537865))

(assert (=> bm!325434 d!1477841))

(declare-fun d!1477843 () Bool)

(declare-fun c!797148 () Bool)

(assert (=> d!1477843 (= c!797148 ((_ is Nil!51911) lt!1819331))))

(declare-fun e!2905852 () (InoxSet tuple2!53032))

(assert (=> d!1477843 (= (content!8999 lt!1819331) e!2905852)))

(declare-fun b!4657247 () Bool)

(assert (=> b!4657247 (= e!2905852 ((as const (Array tuple2!53032 Bool)) false))))

(declare-fun b!4657248 () Bool)

(assert (=> b!4657248 (= e!2905852 ((_ map or) (store ((as const (Array tuple2!53032 Bool)) false) (h!58057 lt!1819331) true) (content!8999 (t!359151 lt!1819331))))))

(assert (= (and d!1477843 c!797148) b!4657247))

(assert (= (and d!1477843 (not c!797148)) b!4657248))

(declare-fun m!5537867 () Bool)

(assert (=> b!4657248 m!5537867))

(declare-fun m!5537869 () Bool)

(assert (=> b!4657248 m!5537869))

(assert (=> d!1477703 d!1477843))

(declare-fun d!1477845 () Bool)

(assert (=> d!1477845 (= (get!17274 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323)) (v!46107 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323)))))

(assert (=> d!1477711 d!1477845))

(declare-fun d!1477847 () Bool)

(declare-fun c!797153 () Bool)

(assert (=> d!1477847 (= c!797153 (and ((_ is Cons!51911) (toList!5222 lt!1819325)) (= (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819323)))))

(declare-fun e!2905859 () Option!11830)

(assert (=> d!1477847 (= (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323) e!2905859)))

(declare-fun b!4657259 () Bool)

(assert (=> b!4657259 (= e!2905859 (Some!11829 (_2!29810 (h!58057 (toList!5222 lt!1819325)))))))

(declare-fun b!4657262 () Bool)

(declare-fun e!2905860 () Option!11830)

(assert (=> b!4657262 (= e!2905860 None!11829)))

(declare-fun b!4657260 () Bool)

(assert (=> b!4657260 (= e!2905859 e!2905860)))

(declare-fun c!797154 () Bool)

(assert (=> b!4657260 (= c!797154 (and ((_ is Cons!51911) (toList!5222 lt!1819325)) (not (= (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819323))))))

(declare-fun b!4657261 () Bool)

(assert (=> b!4657261 (= e!2905860 (getValueByKey!1614 (t!359151 (toList!5222 lt!1819325)) lt!1819323))))

(assert (= (and d!1477847 c!797153) b!4657259))

(assert (= (and d!1477847 (not c!797153)) b!4657260))

(assert (= (and b!4657260 c!797154) b!4657261))

(assert (= (and b!4657260 (not c!797154)) b!4657262))

(declare-fun m!5537897 () Bool)

(assert (=> b!4657261 m!5537897))

(assert (=> d!1477711 d!1477847))

(declare-fun d!1477851 () Bool)

(declare-fun res!1958490 () Bool)

(declare-fun e!2905866 () Bool)

(assert (=> d!1477851 (=> res!1958490 e!2905866)))

(assert (=> d!1477851 (= res!1958490 (and ((_ is Cons!51911) (toList!5222 lt!1819325)) (= (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819323)))))

(assert (=> d!1477851 (= (containsKey!2732 (toList!5222 lt!1819325) lt!1819323) e!2905866)))

(declare-fun b!4657268 () Bool)

(declare-fun e!2905867 () Bool)

(assert (=> b!4657268 (= e!2905866 e!2905867)))

(declare-fun res!1958491 () Bool)

(assert (=> b!4657268 (=> (not res!1958491) (not e!2905867))))

(assert (=> b!4657268 (= res!1958491 (and (or (not ((_ is Cons!51911) (toList!5222 lt!1819325))) (bvsle (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819323)) ((_ is Cons!51911) (toList!5222 lt!1819325)) (bvslt (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819323)))))

(declare-fun b!4657269 () Bool)

(assert (=> b!4657269 (= e!2905867 (containsKey!2732 (t!359151 (toList!5222 lt!1819325)) lt!1819323))))

(assert (= (and d!1477851 (not res!1958490)) b!4657268))

(assert (= (and b!4657268 res!1958491) b!4657269))

(declare-fun m!5537905 () Bool)

(assert (=> b!4657269 m!5537905))

(assert (=> d!1477697 d!1477851))

(declare-fun d!1477857 () Bool)

(declare-fun res!1958492 () Bool)

(declare-fun e!2905872 () Bool)

(assert (=> d!1477857 (=> res!1958492 e!2905872)))

(assert (=> d!1477857 (= res!1958492 (and ((_ is Cons!51910) (t!359150 oldBucket!40)) (= (_1!29809 (h!58056 (t!359150 oldBucket!40))) (_1!29809 (h!58056 oldBucket!40)))))))

(assert (=> d!1477857 (= (containsKey!2731 (t!359150 oldBucket!40) (_1!29809 (h!58056 oldBucket!40))) e!2905872)))

(declare-fun b!4657278 () Bool)

(declare-fun e!2905873 () Bool)

(assert (=> b!4657278 (= e!2905872 e!2905873)))

(declare-fun res!1958493 () Bool)

(assert (=> b!4657278 (=> (not res!1958493) (not e!2905873))))

(assert (=> b!4657278 (= res!1958493 ((_ is Cons!51910) (t!359150 oldBucket!40)))))

(declare-fun b!4657279 () Bool)

(assert (=> b!4657279 (= e!2905873 (containsKey!2731 (t!359150 (t!359150 oldBucket!40)) (_1!29809 (h!58056 oldBucket!40))))))

(assert (= (and d!1477857 (not res!1958492)) b!4657278))

(assert (= (and b!4657278 res!1958493) b!4657279))

(declare-fun m!5537907 () Bool)

(assert (=> b!4657279 m!5537907))

(assert (=> b!4657033 d!1477857))

(declare-fun d!1477859 () Bool)

(declare-fun lt!1819764 () Bool)

(assert (=> d!1477859 (= lt!1819764 (select (content!9002 (keys!18394 lt!1819330)) key!4968))))

(declare-fun e!2905874 () Bool)

(assert (=> d!1477859 (= lt!1819764 e!2905874)))

(declare-fun res!1958494 () Bool)

(assert (=> d!1477859 (=> (not res!1958494) (not e!2905874))))

(assert (=> d!1477859 (= res!1958494 ((_ is Cons!51913) (keys!18394 lt!1819330)))))

(assert (=> d!1477859 (= (contains!15058 (keys!18394 lt!1819330) key!4968) lt!1819764)))

(declare-fun b!4657280 () Bool)

(declare-fun e!2905875 () Bool)

(assert (=> b!4657280 (= e!2905874 e!2905875)))

(declare-fun res!1958495 () Bool)

(assert (=> b!4657280 (=> res!1958495 e!2905875)))

(assert (=> b!4657280 (= res!1958495 (= (h!58061 (keys!18394 lt!1819330)) key!4968))))

(declare-fun b!4657281 () Bool)

(assert (=> b!4657281 (= e!2905875 (contains!15058 (t!359153 (keys!18394 lt!1819330)) key!4968))))

(assert (= (and d!1477859 res!1958494) b!4657280))

(assert (= (and b!4657280 (not res!1958495)) b!4657281))

(assert (=> d!1477859 m!5537243))

(declare-fun m!5537909 () Bool)

(assert (=> d!1477859 m!5537909))

(declare-fun m!5537911 () Bool)

(assert (=> d!1477859 m!5537911))

(declare-fun m!5537913 () Bool)

(assert (=> b!4657281 m!5537913))

(assert (=> b!4656778 d!1477859))

(declare-fun b!4657298 () Bool)

(assert (=> b!4657298 true))

(declare-fun d!1477861 () Bool)

(declare-fun e!2905885 () Bool)

(assert (=> d!1477861 e!2905885))

(declare-fun res!1958507 () Bool)

(assert (=> d!1477861 (=> (not res!1958507) (not e!2905885))))

(declare-fun lt!1819770 () List!52037)

(declare-fun noDuplicate!840 (List!52037) Bool)

(assert (=> d!1477861 (= res!1958507 (noDuplicate!840 lt!1819770))))

(assert (=> d!1477861 (= lt!1819770 (getKeysList!751 (toList!5221 lt!1819330)))))

(assert (=> d!1477861 (= (keys!18394 lt!1819330) lt!1819770)))

(declare-fun b!4657297 () Bool)

(declare-fun res!1958508 () Bool)

(assert (=> b!4657297 (=> (not res!1958508) (not e!2905885))))

(declare-fun length!536 (List!52037) Int)

(declare-fun length!537 (List!52034) Int)

(assert (=> b!4657297 (= res!1958508 (= (length!536 lt!1819770) (length!537 (toList!5221 lt!1819330))))))

(declare-fun res!1958509 () Bool)

(assert (=> b!4657298 (=> (not res!1958509) (not e!2905885))))

(declare-fun lambda!199628 () Int)

(declare-fun forall!11036 (List!52037 Int) Bool)

(assert (=> b!4657298 (= res!1958509 (forall!11036 lt!1819770 lambda!199628))))

(declare-fun b!4657299 () Bool)

(declare-fun lambda!199629 () Int)

(declare-fun map!11476 (List!52034 Int) List!52037)

(assert (=> b!4657299 (= e!2905885 (= (content!9002 lt!1819770) (content!9002 (map!11476 (toList!5221 lt!1819330) lambda!199629))))))

(assert (= (and d!1477861 res!1958507) b!4657297))

(assert (= (and b!4657297 res!1958508) b!4657298))

(assert (= (and b!4657298 res!1958509) b!4657299))

(declare-fun m!5537923 () Bool)

(assert (=> d!1477861 m!5537923))

(assert (=> d!1477861 m!5537253))

(declare-fun m!5537925 () Bool)

(assert (=> b!4657297 m!5537925))

(declare-fun m!5537927 () Bool)

(assert (=> b!4657297 m!5537927))

(declare-fun m!5537929 () Bool)

(assert (=> b!4657298 m!5537929))

(declare-fun m!5537931 () Bool)

(assert (=> b!4657299 m!5537931))

(declare-fun m!5537933 () Bool)

(assert (=> b!4657299 m!5537933))

(assert (=> b!4657299 m!5537933))

(declare-fun m!5537935 () Bool)

(assert (=> b!4657299 m!5537935))

(assert (=> b!4656778 d!1477861))

(declare-fun d!1477869 () Bool)

(declare-fun lt!1819771 () Bool)

(assert (=> d!1477869 (= lt!1819771 (select (content!9003 lt!1819326) (get!17273 lt!1819573)))))

(declare-fun e!2905886 () Bool)

(assert (=> d!1477869 (= lt!1819771 e!2905886)))

(declare-fun res!1958511 () Bool)

(assert (=> d!1477869 (=> (not res!1958511) (not e!2905886))))

(assert (=> d!1477869 (= res!1958511 ((_ is Cons!51910) lt!1819326))))

(assert (=> d!1477869 (= (contains!15059 lt!1819326 (get!17273 lt!1819573)) lt!1819771)))

(declare-fun b!4657302 () Bool)

(declare-fun e!2905887 () Bool)

(assert (=> b!4657302 (= e!2905886 e!2905887)))

(declare-fun res!1958510 () Bool)

(assert (=> b!4657302 (=> res!1958510 e!2905887)))

(assert (=> b!4657302 (= res!1958510 (= (h!58056 lt!1819326) (get!17273 lt!1819573)))))

(declare-fun b!4657303 () Bool)

(assert (=> b!4657303 (= e!2905887 (contains!15059 (t!359150 lt!1819326) (get!17273 lt!1819573)))))

(assert (= (and d!1477869 res!1958511) b!4657302))

(assert (= (and b!4657302 (not res!1958510)) b!4657303))

(declare-fun m!5537937 () Bool)

(assert (=> d!1477869 m!5537937))

(assert (=> d!1477869 m!5537491))

(declare-fun m!5537939 () Bool)

(assert (=> d!1477869 m!5537939))

(assert (=> b!4657303 m!5537491))

(declare-fun m!5537941 () Bool)

(assert (=> b!4657303 m!5537941))

(assert (=> b!4656974 d!1477869))

(assert (=> b!4656974 d!1477727))

(declare-fun d!1477871 () Bool)

(declare-fun res!1958512 () Bool)

(declare-fun e!2905888 () Bool)

(assert (=> d!1477871 (=> res!1958512 e!2905888)))

(assert (=> d!1477871 (= res!1958512 (and ((_ is Cons!51910) oldBucket!40) (= (_1!29809 (h!58056 oldBucket!40)) key!4968)))))

(assert (=> d!1477871 (= (containsKey!2731 oldBucket!40 key!4968) e!2905888)))

(declare-fun b!4657304 () Bool)

(declare-fun e!2905889 () Bool)

(assert (=> b!4657304 (= e!2905888 e!2905889)))

(declare-fun res!1958513 () Bool)

(assert (=> b!4657304 (=> (not res!1958513) (not e!2905889))))

(assert (=> b!4657304 (= res!1958513 ((_ is Cons!51910) oldBucket!40))))

(declare-fun b!4657305 () Bool)

(assert (=> b!4657305 (= e!2905889 (containsKey!2731 (t!359150 oldBucket!40) key!4968))))

(assert (= (and d!1477871 (not res!1958512)) b!4657304))

(assert (= (and b!4657304 res!1958513) b!4657305))

(declare-fun m!5537943 () Bool)

(assert (=> b!4657305 m!5537943))

(assert (=> b!4657019 d!1477871))

(declare-fun d!1477873 () Bool)

(declare-fun c!797161 () Bool)

(assert (=> d!1477873 (= c!797161 (and ((_ is Cons!51911) (toList!5222 lt!1819325)) (= (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819613)))))

(declare-fun e!2905890 () Option!11830)

(assert (=> d!1477873 (= (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819613) e!2905890)))

(declare-fun b!4657306 () Bool)

(assert (=> b!4657306 (= e!2905890 (Some!11829 (_2!29810 (h!58057 (toList!5222 lt!1819325)))))))

(declare-fun b!4657309 () Bool)

(declare-fun e!2905891 () Option!11830)

(assert (=> b!4657309 (= e!2905891 None!11829)))

(declare-fun b!4657307 () Bool)

(assert (=> b!4657307 (= e!2905890 e!2905891)))

(declare-fun c!797162 () Bool)

(assert (=> b!4657307 (= c!797162 (and ((_ is Cons!51911) (toList!5222 lt!1819325)) (not (= (_1!29810 (h!58057 (toList!5222 lt!1819325))) lt!1819613))))))

(declare-fun b!4657308 () Bool)

(assert (=> b!4657308 (= e!2905891 (getValueByKey!1614 (t!359151 (toList!5222 lt!1819325)) lt!1819613))))

(assert (= (and d!1477873 c!797161) b!4657306))

(assert (= (and d!1477873 (not c!797161)) b!4657307))

(assert (= (and b!4657307 c!797162) b!4657308))

(assert (= (and b!4657307 (not c!797162)) b!4657309))

(declare-fun m!5537945 () Bool)

(assert (=> b!4657308 m!5537945))

(assert (=> b!4657005 d!1477873))

(declare-fun d!1477875 () Bool)

(assert (=> d!1477875 (= (isEmpty!29007 (getPair!374 lt!1819326 key!4968)) (not ((_ is Some!11825) (getPair!374 lt!1819326 key!4968))))))

(assert (=> d!1477707 d!1477875))

(assert (=> b!4657015 d!1477771))

(declare-fun d!1477877 () Bool)

(assert (=> d!1477877 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323))))

(declare-fun lt!1819774 () Unit!118752)

(declare-fun choose!32031 (List!52035 (_ BitVec 64)) Unit!118752)

(assert (=> d!1477877 (= lt!1819774 (choose!32031 (toList!5222 lt!1819325) lt!1819323))))

(declare-fun e!2905894 () Bool)

(assert (=> d!1477877 e!2905894))

(declare-fun res!1958516 () Bool)

(assert (=> d!1477877 (=> (not res!1958516) (not e!2905894))))

(declare-fun isStrictlySorted!576 (List!52035) Bool)

(assert (=> d!1477877 (= res!1958516 (isStrictlySorted!576 (toList!5222 lt!1819325)))))

(assert (=> d!1477877 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1516 (toList!5222 lt!1819325) lt!1819323) lt!1819774)))

(declare-fun b!4657313 () Bool)

(assert (=> b!4657313 (= e!2905894 (containsKey!2732 (toList!5222 lt!1819325) lt!1819323))))

(assert (= (and d!1477877 res!1958516) b!4657313))

(assert (=> d!1477877 m!5537513))

(assert (=> d!1477877 m!5537513))

(assert (=> d!1477877 m!5537515))

(declare-fun m!5537947 () Bool)

(assert (=> d!1477877 m!5537947))

(declare-fun m!5537949 () Bool)

(assert (=> d!1477877 m!5537949))

(assert (=> b!4657313 m!5537509))

(assert (=> b!4656988 d!1477877))

(declare-fun d!1477879 () Bool)

(declare-fun isEmpty!29010 (Option!11830) Bool)

(assert (=> d!1477879 (= (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323)) (not (isEmpty!29010 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819323))))))

(declare-fun bs!1066002 () Bool)

(assert (= bs!1066002 d!1477879))

(assert (=> bs!1066002 m!5537513))

(declare-fun m!5537951 () Bool)

(assert (=> bs!1066002 m!5537951))

(assert (=> b!4656988 d!1477879))

(assert (=> b!4656988 d!1477847))

(assert (=> b!4656952 d!1477801))

(declare-fun bs!1066034 () Bool)

(declare-fun b!4657372 () Bool)

(assert (= bs!1066034 (and b!4657372 b!4657298)))

(declare-fun lambda!199647 () Int)

(assert (=> bs!1066034 (= (= (t!359150 (toList!5221 lt!1819330)) (toList!5221 lt!1819330)) (= lambda!199647 lambda!199628))))

(assert (=> b!4657372 true))

(declare-fun bs!1066035 () Bool)

(declare-fun b!4657371 () Bool)

(assert (= bs!1066035 (and b!4657371 b!4657298)))

(declare-fun lambda!199648 () Int)

(assert (=> bs!1066035 (= (= (Cons!51910 (h!58056 (toList!5221 lt!1819330)) (t!359150 (toList!5221 lt!1819330))) (toList!5221 lt!1819330)) (= lambda!199648 lambda!199628))))

(declare-fun bs!1066036 () Bool)

(assert (= bs!1066036 (and b!4657371 b!4657372)))

(assert (=> bs!1066036 (= (= (Cons!51910 (h!58056 (toList!5221 lt!1819330)) (t!359150 (toList!5221 lt!1819330))) (t!359150 (toList!5221 lt!1819330))) (= lambda!199648 lambda!199647))))

(assert (=> b!4657371 true))

(declare-fun bs!1066037 () Bool)

(declare-fun b!4657368 () Bool)

(assert (= bs!1066037 (and b!4657368 b!4657298)))

(declare-fun lambda!199649 () Int)

(assert (=> bs!1066037 (= lambda!199649 lambda!199628)))

(declare-fun bs!1066038 () Bool)

(assert (= bs!1066038 (and b!4657368 b!4657372)))

(assert (=> bs!1066038 (= (= (toList!5221 lt!1819330) (t!359150 (toList!5221 lt!1819330))) (= lambda!199649 lambda!199647))))

(declare-fun bs!1066039 () Bool)

(assert (= bs!1066039 (and b!4657368 b!4657371)))

(assert (=> bs!1066039 (= (= (toList!5221 lt!1819330) (Cons!51910 (h!58056 (toList!5221 lt!1819330)) (t!359150 (toList!5221 lt!1819330)))) (= lambda!199649 lambda!199648))))

(assert (=> b!4657368 true))

(declare-fun bs!1066040 () Bool)

(declare-fun b!4657374 () Bool)

(assert (= bs!1066040 (and b!4657374 b!4657299)))

(declare-fun lambda!199650 () Int)

(assert (=> bs!1066040 (= lambda!199650 lambda!199629)))

(declare-fun b!4657367 () Bool)

(declare-fun e!2905930 () Unit!118752)

(declare-fun Unit!118808 () Unit!118752)

(assert (=> b!4657367 (= e!2905930 Unit!118808)))

(declare-fun res!1958544 () Bool)

(declare-fun e!2905927 () Bool)

(assert (=> b!4657368 (=> (not res!1958544) (not e!2905927))))

(declare-fun lt!1819842 () List!52037)

(assert (=> b!4657368 (= res!1958544 (forall!11036 lt!1819842 lambda!199649))))

(declare-fun b!4657369 () Bool)

(declare-fun res!1958546 () Bool)

(assert (=> b!4657369 (=> (not res!1958546) (not e!2905927))))

(assert (=> b!4657369 (= res!1958546 (= (length!536 lt!1819842) (length!537 (toList!5221 lt!1819330))))))

(declare-fun b!4657370 () Bool)

(declare-fun e!2905929 () List!52037)

(assert (=> b!4657370 (= e!2905929 Nil!51913)))

(declare-fun d!1477881 () Bool)

(assert (=> d!1477881 e!2905927))

(declare-fun res!1958545 () Bool)

(assert (=> d!1477881 (=> (not res!1958545) (not e!2905927))))

(assert (=> d!1477881 (= res!1958545 (noDuplicate!840 lt!1819842))))

(assert (=> d!1477881 (= lt!1819842 e!2905929)))

(declare-fun c!797178 () Bool)

(assert (=> d!1477881 (= c!797178 ((_ is Cons!51910) (toList!5221 lt!1819330)))))

(assert (=> d!1477881 (invariantList!1300 (toList!5221 lt!1819330))))

(assert (=> d!1477881 (= (getKeysList!751 (toList!5221 lt!1819330)) lt!1819842)))

(assert (=> b!4657371 (= e!2905929 (Cons!51913 (_1!29809 (h!58056 (toList!5221 lt!1819330))) (getKeysList!751 (t!359150 (toList!5221 lt!1819330)))))))

(declare-fun c!797176 () Bool)

(assert (=> b!4657371 (= c!797176 (containsKey!2730 (t!359150 (toList!5221 lt!1819330)) (_1!29809 (h!58056 (toList!5221 lt!1819330)))))))

(declare-fun lt!1819841 () Unit!118752)

(assert (=> b!4657371 (= lt!1819841 e!2905930)))

(declare-fun c!797177 () Bool)

(assert (=> b!4657371 (= c!797177 (contains!15058 (getKeysList!751 (t!359150 (toList!5221 lt!1819330))) (_1!29809 (h!58056 (toList!5221 lt!1819330)))))))

(declare-fun lt!1819843 () Unit!118752)

(declare-fun e!2905928 () Unit!118752)

(assert (=> b!4657371 (= lt!1819843 e!2905928)))

(declare-fun lt!1819845 () List!52037)

(assert (=> b!4657371 (= lt!1819845 (getKeysList!751 (t!359150 (toList!5221 lt!1819330))))))

(declare-fun lt!1819844 () Unit!118752)

(declare-fun lemmaForallContainsAddHeadPreserves!260 (List!52034 List!52037 tuple2!53030) Unit!118752)

(assert (=> b!4657371 (= lt!1819844 (lemmaForallContainsAddHeadPreserves!260 (t!359150 (toList!5221 lt!1819330)) lt!1819845 (h!58056 (toList!5221 lt!1819330))))))

(assert (=> b!4657371 (forall!11036 lt!1819845 lambda!199648)))

(declare-fun lt!1819847 () Unit!118752)

(assert (=> b!4657371 (= lt!1819847 lt!1819844)))

(assert (=> b!4657372 false))

(declare-fun lt!1819846 () Unit!118752)

(declare-fun forallContained!3236 (List!52037 Int K!13265) Unit!118752)

(assert (=> b!4657372 (= lt!1819846 (forallContained!3236 (getKeysList!751 (t!359150 (toList!5221 lt!1819330))) lambda!199647 (_1!29809 (h!58056 (toList!5221 lt!1819330)))))))

(declare-fun Unit!118809 () Unit!118752)

(assert (=> b!4657372 (= e!2905928 Unit!118809)))

(declare-fun b!4657373 () Bool)

(declare-fun Unit!118810 () Unit!118752)

(assert (=> b!4657373 (= e!2905928 Unit!118810)))

(assert (=> b!4657374 (= e!2905927 (= (content!9002 lt!1819842) (content!9002 (map!11476 (toList!5221 lt!1819330) lambda!199650))))))

(declare-fun b!4657375 () Bool)

(assert (=> b!4657375 false))

(declare-fun Unit!118811 () Unit!118752)

(assert (=> b!4657375 (= e!2905930 Unit!118811)))

(assert (= (and d!1477881 c!797178) b!4657371))

(assert (= (and d!1477881 (not c!797178)) b!4657370))

(assert (= (and b!4657371 c!797176) b!4657375))

(assert (= (and b!4657371 (not c!797176)) b!4657367))

(assert (= (and b!4657371 c!797177) b!4657372))

(assert (= (and b!4657371 (not c!797177)) b!4657373))

(assert (= (and d!1477881 res!1958545) b!4657369))

(assert (= (and b!4657369 res!1958546) b!4657368))

(assert (= (and b!4657368 res!1958544) b!4657374))

(declare-fun m!5538049 () Bool)

(assert (=> b!4657374 m!5538049))

(declare-fun m!5538053 () Bool)

(assert (=> b!4657374 m!5538053))

(assert (=> b!4657374 m!5538053))

(declare-fun m!5538059 () Bool)

(assert (=> b!4657374 m!5538059))

(declare-fun m!5538061 () Bool)

(assert (=> b!4657372 m!5538061))

(assert (=> b!4657372 m!5538061))

(declare-fun m!5538065 () Bool)

(assert (=> b!4657372 m!5538065))

(declare-fun m!5538067 () Bool)

(assert (=> b!4657369 m!5538067))

(assert (=> b!4657369 m!5537927))

(assert (=> b!4657371 m!5538061))

(declare-fun m!5538069 () Bool)

(assert (=> b!4657371 m!5538069))

(declare-fun m!5538071 () Bool)

(assert (=> b!4657371 m!5538071))

(assert (=> b!4657371 m!5538061))

(declare-fun m!5538073 () Bool)

(assert (=> b!4657371 m!5538073))

(declare-fun m!5538075 () Bool)

(assert (=> b!4657371 m!5538075))

(declare-fun m!5538077 () Bool)

(assert (=> b!4657368 m!5538077))

(declare-fun m!5538079 () Bool)

(assert (=> d!1477881 m!5538079))

(assert (=> d!1477881 m!5537685))

(assert (=> b!4656776 d!1477881))

(declare-fun bm!325448 () Bool)

(declare-fun call!325453 () Bool)

(declare-fun e!2905935 () List!52037)

(assert (=> bm!325448 (= call!325453 (contains!15058 e!2905935 key!4968))))

(declare-fun c!797179 () Bool)

(declare-fun c!797180 () Bool)

(assert (=> bm!325448 (= c!797179 c!797180)))

(declare-fun d!1477899 () Bool)

(declare-fun e!2905933 () Bool)

(assert (=> d!1477899 e!2905933))

(declare-fun res!1958551 () Bool)

(assert (=> d!1477899 (=> res!1958551 e!2905933)))

(declare-fun e!2905937 () Bool)

(assert (=> d!1477899 (= res!1958551 e!2905937)))

(declare-fun res!1958549 () Bool)

(assert (=> d!1477899 (=> (not res!1958549) (not e!2905937))))

(declare-fun lt!1819851 () Bool)

(assert (=> d!1477899 (= res!1958549 (not lt!1819851))))

(declare-fun lt!1819853 () Bool)

(assert (=> d!1477899 (= lt!1819851 lt!1819853)))

(declare-fun lt!1819849 () Unit!118752)

(declare-fun e!2905936 () Unit!118752)

(assert (=> d!1477899 (= lt!1819849 e!2905936)))

(assert (=> d!1477899 (= c!797180 lt!1819853)))

(assert (=> d!1477899 (= lt!1819853 (containsKey!2730 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(assert (=> d!1477899 (= (contains!15053 (extractMap!1702 (toList!5222 lt!1819325)) key!4968) lt!1819851)))

(declare-fun b!4657380 () Bool)

(declare-fun e!2905934 () Bool)

(assert (=> b!4657380 (= e!2905933 e!2905934)))

(declare-fun res!1958550 () Bool)

(assert (=> b!4657380 (=> (not res!1958550) (not e!2905934))))

(assert (=> b!4657380 (= res!1958550 (isDefined!9094 (getValueByKey!1613 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968)))))

(declare-fun b!4657381 () Bool)

(assert (=> b!4657381 false))

(declare-fun lt!1819854 () Unit!118752)

(declare-fun lt!1819855 () Unit!118752)

(assert (=> b!4657381 (= lt!1819854 lt!1819855)))

(assert (=> b!4657381 (containsKey!2730 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968)))

(assert (=> b!4657381 (= lt!1819855 (lemmaInGetKeysListThenContainsKey!750 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(declare-fun e!2905938 () Unit!118752)

(declare-fun Unit!118813 () Unit!118752)

(assert (=> b!4657381 (= e!2905938 Unit!118813)))

(declare-fun b!4657382 () Bool)

(declare-fun Unit!118814 () Unit!118752)

(assert (=> b!4657382 (= e!2905938 Unit!118814)))

(declare-fun b!4657383 () Bool)

(assert (=> b!4657383 (= e!2905935 (getKeysList!751 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325)))))))

(declare-fun b!4657384 () Bool)

(declare-fun lt!1819852 () Unit!118752)

(assert (=> b!4657384 (= e!2905936 lt!1819852)))

(declare-fun lt!1819848 () Unit!118752)

(assert (=> b!4657384 (= lt!1819848 (lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(assert (=> b!4657384 (isDefined!9094 (getValueByKey!1613 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(declare-fun lt!1819850 () Unit!118752)

(assert (=> b!4657384 (= lt!1819850 lt!1819848)))

(assert (=> b!4657384 (= lt!1819852 (lemmaInListThenGetKeysListContains!746 (toList!5221 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(assert (=> b!4657384 call!325453))

(declare-fun b!4657385 () Bool)

(assert (=> b!4657385 (= e!2905934 (contains!15058 (keys!18394 (extractMap!1702 (toList!5222 lt!1819325))) key!4968))))

(declare-fun b!4657386 () Bool)

(assert (=> b!4657386 (= e!2905935 (keys!18394 (extractMap!1702 (toList!5222 lt!1819325))))))

(declare-fun b!4657387 () Bool)

(assert (=> b!4657387 (= e!2905936 e!2905938)))

(declare-fun c!797181 () Bool)

(assert (=> b!4657387 (= c!797181 call!325453)))

(declare-fun b!4657388 () Bool)

(assert (=> b!4657388 (= e!2905937 (not (contains!15058 (keys!18394 (extractMap!1702 (toList!5222 lt!1819325))) key!4968)))))

(assert (= (and d!1477899 c!797180) b!4657384))

(assert (= (and d!1477899 (not c!797180)) b!4657387))

(assert (= (and b!4657387 c!797181) b!4657381))

(assert (= (and b!4657387 (not c!797181)) b!4657382))

(assert (= (or b!4657384 b!4657387) bm!325448))

(assert (= (and bm!325448 c!797179) b!4657383))

(assert (= (and bm!325448 (not c!797179)) b!4657386))

(assert (= (and d!1477899 res!1958549) b!4657388))

(assert (= (and d!1477899 (not res!1958551)) b!4657380))

(assert (= (and b!4657380 res!1958550) b!4657385))

(declare-fun m!5538085 () Bool)

(assert (=> bm!325448 m!5538085))

(assert (=> b!4657386 m!5537543))

(declare-fun m!5538087 () Bool)

(assert (=> b!4657386 m!5538087))

(assert (=> b!4657385 m!5537543))

(assert (=> b!4657385 m!5538087))

(assert (=> b!4657385 m!5538087))

(declare-fun m!5538089 () Bool)

(assert (=> b!4657385 m!5538089))

(declare-fun m!5538091 () Bool)

(assert (=> d!1477899 m!5538091))

(declare-fun m!5538093 () Bool)

(assert (=> b!4657380 m!5538093))

(assert (=> b!4657380 m!5538093))

(declare-fun m!5538095 () Bool)

(assert (=> b!4657380 m!5538095))

(assert (=> b!4657388 m!5537543))

(assert (=> b!4657388 m!5538087))

(assert (=> b!4657388 m!5538087))

(assert (=> b!4657388 m!5538089))

(declare-fun m!5538101 () Bool)

(assert (=> b!4657383 m!5538101))

(assert (=> b!4657381 m!5538091))

(declare-fun m!5538103 () Bool)

(assert (=> b!4657381 m!5538103))

(declare-fun m!5538105 () Bool)

(assert (=> b!4657384 m!5538105))

(assert (=> b!4657384 m!5538093))

(assert (=> b!4657384 m!5538093))

(assert (=> b!4657384 m!5538095))

(declare-fun m!5538107 () Bool)

(assert (=> b!4657384 m!5538107))

(assert (=> b!4657003 d!1477899))

(declare-fun bs!1066041 () Bool)

(declare-fun d!1477907 () Bool)

(assert (= bs!1066041 (and d!1477907 d!1477753)))

(declare-fun lambda!199651 () Int)

(assert (=> bs!1066041 (= lambda!199651 lambda!199595)))

(declare-fun bs!1066042 () Bool)

(assert (= bs!1066042 (and d!1477907 d!1477701)))

(assert (=> bs!1066042 (= lambda!199651 lambda!199586)))

(declare-fun bs!1066043 () Bool)

(assert (= bs!1066043 (and d!1477907 d!1477695)))

(assert (=> bs!1066043 (= lambda!199651 lambda!199579)))

(declare-fun bs!1066044 () Bool)

(assert (= bs!1066044 (and d!1477907 d!1477691)))

(assert (=> bs!1066044 (= lambda!199651 lambda!199576)))

(declare-fun bs!1066045 () Bool)

(assert (= bs!1066045 (and d!1477907 b!4656743)))

(assert (=> bs!1066045 (= lambda!199651 lambda!199486)))

(declare-fun bs!1066046 () Bool)

(assert (= bs!1066046 (and d!1477907 d!1477643)))

(assert (=> bs!1066046 (= lambda!199651 lambda!199517)))

(declare-fun lt!1819856 () ListMap!4561)

(assert (=> d!1477907 (invariantList!1300 (toList!5221 lt!1819856))))

(declare-fun e!2905943 () ListMap!4561)

(assert (=> d!1477907 (= lt!1819856 e!2905943)))

(declare-fun c!797184 () Bool)

(assert (=> d!1477907 (= c!797184 ((_ is Cons!51911) (toList!5222 lt!1819325)))))

(assert (=> d!1477907 (forall!11034 (toList!5222 lt!1819325) lambda!199651)))

(assert (=> d!1477907 (= (extractMap!1702 (toList!5222 lt!1819325)) lt!1819856)))

(declare-fun b!4657395 () Bool)

(assert (=> b!4657395 (= e!2905943 (addToMapMapFromBucket!1103 (_2!29810 (h!58057 (toList!5222 lt!1819325))) (extractMap!1702 (t!359151 (toList!5222 lt!1819325)))))))

(declare-fun b!4657396 () Bool)

(assert (=> b!4657396 (= e!2905943 (ListMap!4562 Nil!51910))))

(assert (= (and d!1477907 c!797184) b!4657395))

(assert (= (and d!1477907 (not c!797184)) b!4657396))

(declare-fun m!5538115 () Bool)

(assert (=> d!1477907 m!5538115))

(declare-fun m!5538117 () Bool)

(assert (=> d!1477907 m!5538117))

(declare-fun m!5538119 () Bool)

(assert (=> b!4657395 m!5538119))

(assert (=> b!4657395 m!5538119))

(declare-fun m!5538121 () Bool)

(assert (=> b!4657395 m!5538121))

(assert (=> b!4657003 d!1477907))

(assert (=> b!4656990 d!1477879))

(assert (=> b!4656990 d!1477847))

(declare-fun d!1477913 () Bool)

(assert (=> d!1477913 (= (isDefined!9091 lt!1819573) (not (isEmpty!29007 lt!1819573)))))

(declare-fun bs!1066047 () Bool)

(assert (= bs!1066047 d!1477913))

(assert (=> bs!1066047 m!5537493))

(assert (=> b!4656979 d!1477913))

(assert (=> b!4656993 d!1477703))

(declare-fun d!1477915 () Bool)

(assert (=> d!1477915 (= (isEmpty!29007 lt!1819573) (not ((_ is Some!11825) lt!1819573)))))

(assert (=> d!1477693 d!1477915))

(declare-fun d!1477917 () Bool)

(declare-fun res!1958556 () Bool)

(declare-fun e!2905948 () Bool)

(assert (=> d!1477917 (=> res!1958556 e!2905948)))

(assert (=> d!1477917 (= res!1958556 (not ((_ is Cons!51910) lt!1819326)))))

(assert (=> d!1477917 (= (noDuplicateKeys!1646 lt!1819326) e!2905948)))

(declare-fun b!4657403 () Bool)

(declare-fun e!2905949 () Bool)

(assert (=> b!4657403 (= e!2905948 e!2905949)))

(declare-fun res!1958557 () Bool)

(assert (=> b!4657403 (=> (not res!1958557) (not e!2905949))))

(assert (=> b!4657403 (= res!1958557 (not (containsKey!2731 (t!359150 lt!1819326) (_1!29809 (h!58056 lt!1819326)))))))

(declare-fun b!4657404 () Bool)

(assert (=> b!4657404 (= e!2905949 (noDuplicateKeys!1646 (t!359150 lt!1819326)))))

(assert (= (and d!1477917 (not res!1958556)) b!4657403))

(assert (= (and b!4657403 res!1958557) b!4657404))

(declare-fun m!5538123 () Bool)

(assert (=> b!4657403 m!5538123))

(declare-fun m!5538125 () Bool)

(assert (=> b!4657404 m!5538125))

(assert (=> d!1477693 d!1477917))

(declare-fun d!1477919 () Bool)

(declare-fun lt!1819857 () Bool)

(assert (=> d!1477919 (= lt!1819857 (select (content!8999 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819323 lt!1819326)))))

(declare-fun e!2905951 () Bool)

(assert (=> d!1477919 (= lt!1819857 e!2905951)))

(declare-fun res!1958559 () Bool)

(assert (=> d!1477919 (=> (not res!1958559) (not e!2905951))))

(assert (=> d!1477919 (= res!1958559 ((_ is Cons!51911) (toList!5222 lt!1819325)))))

(assert (=> d!1477919 (= (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819323 lt!1819326)) lt!1819857)))

(declare-fun b!4657405 () Bool)

(declare-fun e!2905950 () Bool)

(assert (=> b!4657405 (= e!2905951 e!2905950)))

(declare-fun res!1958558 () Bool)

(assert (=> b!4657405 (=> res!1958558 e!2905950)))

(assert (=> b!4657405 (= res!1958558 (= (h!58057 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819323 lt!1819326)))))

(declare-fun b!4657406 () Bool)

(assert (=> b!4657406 (= e!2905950 (contains!15054 (t!359151 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819323 lt!1819326)))))

(assert (= (and d!1477919 res!1958559) b!4657405))

(assert (= (and b!4657405 (not res!1958558)) b!4657406))

(declare-fun m!5538127 () Bool)

(assert (=> d!1477919 m!5538127))

(declare-fun m!5538129 () Bool)

(assert (=> d!1477919 m!5538129))

(declare-fun m!5538131 () Bool)

(assert (=> b!4657406 m!5538131))

(assert (=> d!1477705 d!1477919))

(declare-fun d!1477921 () Bool)

(assert (=> d!1477921 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819323 lt!1819326))))

(assert (=> d!1477921 true))

(declare-fun _$41!383 () Unit!118752)

(assert (=> d!1477921 (= (choose!32022 lt!1819325 lt!1819323 lt!1819326) _$41!383)))

(declare-fun bs!1066048 () Bool)

(assert (= bs!1066048 d!1477921))

(assert (=> bs!1066048 m!5537555))

(assert (=> d!1477705 d!1477921))

(assert (=> d!1477705 d!1477697))

(assert (=> b!4656781 d!1477859))

(assert (=> b!4656781 d!1477861))

(declare-fun b!4657420 () Bool)

(declare-fun e!2905960 () List!52034)

(assert (=> b!4657420 (= e!2905960 (t!359150 (t!359150 oldBucket!40)))))

(declare-fun b!4657423 () Bool)

(declare-fun e!2905961 () List!52034)

(assert (=> b!4657423 (= e!2905961 Nil!51910)))

(declare-fun d!1477927 () Bool)

(declare-fun lt!1819859 () List!52034)

(assert (=> d!1477927 (not (containsKey!2731 lt!1819859 key!4968))))

(assert (=> d!1477927 (= lt!1819859 e!2905960)))

(declare-fun c!797190 () Bool)

(assert (=> d!1477927 (= c!797190 (and ((_ is Cons!51910) (t!359150 oldBucket!40)) (= (_1!29809 (h!58056 (t!359150 oldBucket!40))) key!4968)))))

(assert (=> d!1477927 (noDuplicateKeys!1646 (t!359150 oldBucket!40))))

(assert (=> d!1477927 (= (removePairForKey!1269 (t!359150 oldBucket!40) key!4968) lt!1819859)))

(declare-fun b!4657422 () Bool)

(assert (=> b!4657422 (= e!2905961 (Cons!51910 (h!58056 (t!359150 oldBucket!40)) (removePairForKey!1269 (t!359150 (t!359150 oldBucket!40)) key!4968)))))

(declare-fun b!4657421 () Bool)

(assert (=> b!4657421 (= e!2905960 e!2905961)))

(declare-fun c!797191 () Bool)

(assert (=> b!4657421 (= c!797191 ((_ is Cons!51910) (t!359150 oldBucket!40)))))

(assert (= (and d!1477927 c!797190) b!4657420))

(assert (= (and d!1477927 (not c!797190)) b!4657421))

(assert (= (and b!4657421 c!797191) b!4657422))

(assert (= (and b!4657421 (not c!797191)) b!4657423))

(declare-fun m!5538155 () Bool)

(assert (=> d!1477927 m!5538155))

(assert (=> d!1477927 m!5537583))

(declare-fun m!5538157 () Bool)

(assert (=> b!4657422 m!5538157))

(assert (=> b!4657031 d!1477927))

(declare-fun d!1477933 () Bool)

(declare-fun e!2905965 () Bool)

(assert (=> d!1477933 e!2905965))

(declare-fun res!1958568 () Bool)

(assert (=> d!1477933 (=> res!1958568 e!2905965)))

(declare-fun lt!1819862 () Bool)

(assert (=> d!1477933 (= res!1958568 (not lt!1819862))))

(declare-fun lt!1819860 () Bool)

(assert (=> d!1477933 (= lt!1819862 lt!1819860)))

(declare-fun lt!1819863 () Unit!118752)

(declare-fun e!2905964 () Unit!118752)

(assert (=> d!1477933 (= lt!1819863 e!2905964)))

(declare-fun c!797192 () Bool)

(assert (=> d!1477933 (= c!797192 lt!1819860)))

(assert (=> d!1477933 (= lt!1819860 (containsKey!2732 (toList!5222 lt!1819325) (hash!3785 hashF!1389 key!4968)))))

(assert (=> d!1477933 (= (contains!15055 lt!1819325 (hash!3785 hashF!1389 key!4968)) lt!1819862)))

(declare-fun b!4657426 () Bool)

(declare-fun lt!1819861 () Unit!118752)

(assert (=> b!4657426 (= e!2905964 lt!1819861)))

(assert (=> b!4657426 (= lt!1819861 (lemmaContainsKeyImpliesGetValueByKeyDefined!1516 (toList!5222 lt!1819325) (hash!3785 hashF!1389 key!4968)))))

(assert (=> b!4657426 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) (hash!3785 hashF!1389 key!4968)))))

(declare-fun b!4657427 () Bool)

(declare-fun Unit!118825 () Unit!118752)

(assert (=> b!4657427 (= e!2905964 Unit!118825)))

(declare-fun b!4657428 () Bool)

(assert (=> b!4657428 (= e!2905965 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) (hash!3785 hashF!1389 key!4968))))))

(assert (= (and d!1477933 c!797192) b!4657426))

(assert (= (and d!1477933 (not c!797192)) b!4657427))

(assert (= (and d!1477933 (not res!1958568)) b!4657428))

(assert (=> d!1477933 m!5537213))

(declare-fun m!5538159 () Bool)

(assert (=> d!1477933 m!5538159))

(assert (=> b!4657426 m!5537213))

(declare-fun m!5538161 () Bool)

(assert (=> b!4657426 m!5538161))

(assert (=> b!4657426 m!5537213))

(declare-fun m!5538165 () Bool)

(assert (=> b!4657426 m!5538165))

(assert (=> b!4657426 m!5538165))

(declare-fun m!5538167 () Bool)

(assert (=> b!4657426 m!5538167))

(assert (=> b!4657428 m!5537213))

(assert (=> b!4657428 m!5538165))

(assert (=> b!4657428 m!5538165))

(assert (=> b!4657428 m!5538167))

(assert (=> d!1477695 d!1477933))

(assert (=> d!1477695 d!1477719))

(declare-fun d!1477937 () Bool)

(assert (=> d!1477937 (contains!15055 lt!1819325 (hash!3785 hashF!1389 key!4968))))

(assert (=> d!1477937 true))

(declare-fun _$27!1488 () Unit!118752)

(assert (=> d!1477937 (= (choose!32019 lt!1819325 key!4968 hashF!1389) _$27!1488)))

(declare-fun bs!1066050 () Bool)

(assert (= bs!1066050 d!1477937))

(assert (=> bs!1066050 m!5537213))

(assert (=> bs!1066050 m!5537213))

(assert (=> bs!1066050 m!5537503))

(assert (=> d!1477695 d!1477937))

(declare-fun d!1477943 () Bool)

(declare-fun res!1958575 () Bool)

(declare-fun e!2905973 () Bool)

(assert (=> d!1477943 (=> res!1958575 e!2905973)))

(assert (=> d!1477943 (= res!1958575 ((_ is Nil!51911) (toList!5222 lt!1819325)))))

(assert (=> d!1477943 (= (forall!11034 (toList!5222 lt!1819325) lambda!199579) e!2905973)))

(declare-fun b!4657439 () Bool)

(declare-fun e!2905974 () Bool)

(assert (=> b!4657439 (= e!2905973 e!2905974)))

(declare-fun res!1958576 () Bool)

(assert (=> b!4657439 (=> (not res!1958576) (not e!2905974))))

(assert (=> b!4657439 (= res!1958576 (dynLambda!21596 lambda!199579 (h!58057 (toList!5222 lt!1819325))))))

(declare-fun b!4657440 () Bool)

(assert (=> b!4657440 (= e!2905974 (forall!11034 (t!359151 (toList!5222 lt!1819325)) lambda!199579))))

(assert (= (and d!1477943 (not res!1958575)) b!4657439))

(assert (= (and b!4657439 res!1958576) b!4657440))

(declare-fun b_lambda!174399 () Bool)

(assert (=> (not b_lambda!174399) (not b!4657439)))

(declare-fun m!5538183 () Bool)

(assert (=> b!4657439 m!5538183))

(declare-fun m!5538185 () Bool)

(assert (=> b!4657440 m!5538185))

(assert (=> d!1477695 d!1477943))

(declare-fun d!1477945 () Bool)

(declare-fun res!1958577 () Bool)

(declare-fun e!2905975 () Bool)

(assert (=> d!1477945 (=> res!1958577 e!2905975)))

(assert (=> d!1477945 (= res!1958577 ((_ is Nil!51910) oldBucket!40))))

(assert (=> d!1477945 (= (forall!11033 oldBucket!40 lambda!199489) e!2905975)))

(declare-fun b!4657441 () Bool)

(declare-fun e!2905976 () Bool)

(assert (=> b!4657441 (= e!2905975 e!2905976)))

(declare-fun res!1958578 () Bool)

(assert (=> b!4657441 (=> (not res!1958578) (not e!2905976))))

(assert (=> b!4657441 (= res!1958578 (dynLambda!21597 lambda!199489 (h!58056 oldBucket!40)))))

(declare-fun b!4657442 () Bool)

(assert (=> b!4657442 (= e!2905976 (forall!11033 (t!359150 oldBucket!40) lambda!199489))))

(assert (= (and d!1477945 (not res!1958577)) b!4657441))

(assert (= (and b!4657441 res!1958578) b!4657442))

(declare-fun b_lambda!174401 () Bool)

(assert (=> (not b_lambda!174401) (not b!4657441)))

(declare-fun m!5538187 () Bool)

(assert (=> b!4657441 m!5538187))

(declare-fun m!5538189 () Bool)

(assert (=> b!4657442 m!5538189))

(assert (=> d!1477637 d!1477945))

(declare-fun bs!1066051 () Bool)

(declare-fun b!4657443 () Bool)

(assert (= bs!1066051 (and b!4657443 d!1477637)))

(declare-fun lambda!199652 () Int)

(assert (=> bs!1066051 (not (= lambda!199652 lambda!199489))))

(declare-fun bs!1066052 () Bool)

(assert (= bs!1066052 (and b!4657443 d!1477647)))

(assert (=> bs!1066052 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819556) (= lambda!199652 lambda!199575))))

(declare-fun bs!1066053 () Bool)

(assert (= bs!1066053 (and b!4657443 b!4657119)))

(assert (=> bs!1066053 (= (= (extractMap!1702 (t!359151 lt!1819331)) (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199652 lambda!199600))))

(declare-fun bs!1066054 () Bool)

(assert (= bs!1066054 (and b!4657443 d!1477841)))

(assert (=> bs!1066054 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199652 lambda!199619))))

(declare-fun bs!1066055 () Bool)

(assert (= bs!1066055 (and b!4657443 b!4656951)))

(assert (=> bs!1066055 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819553) (= lambda!199652 lambda!199574))))

(declare-fun bs!1066056 () Bool)

(assert (= bs!1066056 (and b!4657443 d!1477639)))

(assert (=> bs!1066056 (not (= lambda!199652 lambda!199490))))

(declare-fun bs!1066057 () Bool)

(assert (= bs!1066057 (and b!4657443 b!4657117)))

(assert (=> bs!1066057 (= (= (extractMap!1702 (t!359151 lt!1819331)) (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199652 lambda!199599))))

(assert (=> bs!1066055 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199652 lambda!199573))))

(declare-fun bs!1066058 () Bool)

(assert (= bs!1066058 (and b!4657443 b!4656949)))

(assert (=> bs!1066058 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199652 lambda!199572))))

(assert (=> bs!1066053 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819673) (= lambda!199652 lambda!199601))))

(declare-fun bs!1066059 () Bool)

(assert (= bs!1066059 (and b!4657443 d!1477783)))

(assert (=> bs!1066059 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819676) (= lambda!199652 lambda!199602))))

(declare-fun bs!1066060 () Bool)

(assert (= bs!1066060 (and b!4657443 d!1477839)))

(assert (=> bs!1066060 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819553) (= lambda!199652 lambda!199608))))

(assert (=> b!4657443 true))

(declare-fun bs!1066061 () Bool)

(declare-fun b!4657445 () Bool)

(assert (= bs!1066061 (and b!4657445 d!1477637)))

(declare-fun lambda!199653 () Int)

(assert (=> bs!1066061 (not (= lambda!199653 lambda!199489))))

(declare-fun bs!1066062 () Bool)

(assert (= bs!1066062 (and b!4657445 d!1477647)))

(assert (=> bs!1066062 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819556) (= lambda!199653 lambda!199575))))

(declare-fun bs!1066063 () Bool)

(assert (= bs!1066063 (and b!4657445 b!4657119)))

(assert (=> bs!1066063 (= (= (extractMap!1702 (t!359151 lt!1819331)) (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199653 lambda!199600))))

(declare-fun bs!1066064 () Bool)

(assert (= bs!1066064 (and b!4657445 d!1477841)))

(assert (=> bs!1066064 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199653 lambda!199619))))

(declare-fun bs!1066065 () Bool)

(assert (= bs!1066065 (and b!4657445 b!4656951)))

(assert (=> bs!1066065 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819553) (= lambda!199653 lambda!199574))))

(declare-fun bs!1066066 () Bool)

(assert (= bs!1066066 (and b!4657445 d!1477639)))

(assert (=> bs!1066066 (not (= lambda!199653 lambda!199490))))

(declare-fun bs!1066067 () Bool)

(assert (= bs!1066067 (and b!4657445 b!4657443)))

(assert (=> bs!1066067 (= lambda!199653 lambda!199652)))

(declare-fun bs!1066068 () Bool)

(assert (= bs!1066068 (and b!4657445 b!4657117)))

(assert (=> bs!1066068 (= (= (extractMap!1702 (t!359151 lt!1819331)) (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199653 lambda!199599))))

(assert (=> bs!1066065 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199653 lambda!199573))))

(declare-fun bs!1066069 () Bool)

(assert (= bs!1066069 (and b!4657445 b!4656949)))

(assert (=> bs!1066069 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819332) (= lambda!199653 lambda!199572))))

(assert (=> bs!1066063 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819673) (= lambda!199653 lambda!199601))))

(declare-fun bs!1066070 () Bool)

(assert (= bs!1066070 (and b!4657445 d!1477783)))

(assert (=> bs!1066070 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819676) (= lambda!199653 lambda!199602))))

(declare-fun bs!1066071 () Bool)

(assert (= bs!1066071 (and b!4657445 d!1477839)))

(assert (=> bs!1066071 (= (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819553) (= lambda!199653 lambda!199608))))

(assert (=> b!4657445 true))

(declare-fun lambda!199654 () Int)

(assert (=> bs!1066061 (not (= lambda!199654 lambda!199489))))

(declare-fun lt!1819869 () ListMap!4561)

(assert (=> bs!1066062 (= (= lt!1819869 lt!1819556) (= lambda!199654 lambda!199575))))

(assert (=> bs!1066063 (= (= lt!1819869 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199654 lambda!199600))))

(assert (=> bs!1066064 (= (= lt!1819869 lt!1819332) (= lambda!199654 lambda!199619))))

(assert (=> bs!1066065 (= (= lt!1819869 lt!1819553) (= lambda!199654 lambda!199574))))

(assert (=> bs!1066067 (= (= lt!1819869 (extractMap!1702 (t!359151 lt!1819331))) (= lambda!199654 lambda!199652))))

(assert (=> bs!1066068 (= (= lt!1819869 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199654 lambda!199599))))

(assert (=> bs!1066065 (= (= lt!1819869 lt!1819332) (= lambda!199654 lambda!199573))))

(assert (=> bs!1066069 (= (= lt!1819869 lt!1819332) (= lambda!199654 lambda!199572))))

(assert (=> b!4657445 (= (= lt!1819869 (extractMap!1702 (t!359151 lt!1819331))) (= lambda!199654 lambda!199653))))

(assert (=> bs!1066066 (not (= lambda!199654 lambda!199490))))

(assert (=> bs!1066063 (= (= lt!1819869 lt!1819673) (= lambda!199654 lambda!199601))))

(assert (=> bs!1066070 (= (= lt!1819869 lt!1819676) (= lambda!199654 lambda!199602))))

(assert (=> bs!1066071 (= (= lt!1819869 lt!1819553) (= lambda!199654 lambda!199608))))

(assert (=> b!4657445 true))

(declare-fun bs!1066072 () Bool)

(declare-fun d!1477947 () Bool)

(assert (= bs!1066072 (and d!1477947 d!1477637)))

(declare-fun lambda!199657 () Int)

(assert (=> bs!1066072 (not (= lambda!199657 lambda!199489))))

(declare-fun bs!1066073 () Bool)

(assert (= bs!1066073 (and d!1477947 d!1477647)))

(declare-fun lt!1819872 () ListMap!4561)

(assert (=> bs!1066073 (= (= lt!1819872 lt!1819556) (= lambda!199657 lambda!199575))))

(declare-fun bs!1066074 () Bool)

(assert (= bs!1066074 (and d!1477947 b!4657119)))

(assert (=> bs!1066074 (= (= lt!1819872 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199657 lambda!199600))))

(declare-fun bs!1066075 () Bool)

(assert (= bs!1066075 (and d!1477947 d!1477841)))

(assert (=> bs!1066075 (= (= lt!1819872 lt!1819332) (= lambda!199657 lambda!199619))))

(declare-fun bs!1066076 () Bool)

(assert (= bs!1066076 (and d!1477947 b!4657443)))

(assert (=> bs!1066076 (= (= lt!1819872 (extractMap!1702 (t!359151 lt!1819331))) (= lambda!199657 lambda!199652))))

(declare-fun bs!1066077 () Bool)

(assert (= bs!1066077 (and d!1477947 b!4657117)))

(assert (=> bs!1066077 (= (= lt!1819872 (+!1986 lt!1819332 (h!58056 oldBucket!40))) (= lambda!199657 lambda!199599))))

(declare-fun bs!1066078 () Bool)

(assert (= bs!1066078 (and d!1477947 b!4656951)))

(assert (=> bs!1066078 (= (= lt!1819872 lt!1819332) (= lambda!199657 lambda!199573))))

(declare-fun bs!1066079 () Bool)

(assert (= bs!1066079 (and d!1477947 b!4656949)))

(assert (=> bs!1066079 (= (= lt!1819872 lt!1819332) (= lambda!199657 lambda!199572))))

(assert (=> bs!1066078 (= (= lt!1819872 lt!1819553) (= lambda!199657 lambda!199574))))

(declare-fun bs!1066080 () Bool)

(assert (= bs!1066080 (and d!1477947 b!4657445)))

(assert (=> bs!1066080 (= (= lt!1819872 lt!1819869) (= lambda!199657 lambda!199654))))

(assert (=> bs!1066080 (= (= lt!1819872 (extractMap!1702 (t!359151 lt!1819331))) (= lambda!199657 lambda!199653))))

(declare-fun bs!1066081 () Bool)

(assert (= bs!1066081 (and d!1477947 d!1477639)))

(assert (=> bs!1066081 (not (= lambda!199657 lambda!199490))))

(assert (=> bs!1066074 (= (= lt!1819872 lt!1819673) (= lambda!199657 lambda!199601))))

(declare-fun bs!1066082 () Bool)

(assert (= bs!1066082 (and d!1477947 d!1477783)))

(assert (=> bs!1066082 (= (= lt!1819872 lt!1819676) (= lambda!199657 lambda!199602))))

(declare-fun bs!1066083 () Bool)

(assert (= bs!1066083 (and d!1477947 d!1477839)))

(assert (=> bs!1066083 (= (= lt!1819872 lt!1819553) (= lambda!199657 lambda!199608))))

(assert (=> d!1477947 true))

(declare-fun e!2905979 () Bool)

(assert (=> d!1477947 e!2905979))

(declare-fun res!1958580 () Bool)

(assert (=> d!1477947 (=> (not res!1958580) (not e!2905979))))

(assert (=> d!1477947 (= res!1958580 (forall!11033 (_2!29810 (h!58057 lt!1819331)) lambda!199657))))

(declare-fun e!2905977 () ListMap!4561)

(assert (=> d!1477947 (= lt!1819872 e!2905977)))

(declare-fun c!797195 () Bool)

(assert (=> d!1477947 (= c!797195 ((_ is Nil!51910) (_2!29810 (h!58057 lt!1819331))))))

(assert (=> d!1477947 (noDuplicateKeys!1646 (_2!29810 (h!58057 lt!1819331)))))

(assert (=> d!1477947 (= (addToMapMapFromBucket!1103 (_2!29810 (h!58057 lt!1819331)) (extractMap!1702 (t!359151 lt!1819331))) lt!1819872)))

(declare-fun bm!325449 () Bool)

(declare-fun call!325455 () Unit!118752)

(assert (=> bm!325449 (= call!325455 (lemmaContainsAllItsOwnKeys!600 (extractMap!1702 (t!359151 lt!1819331))))))

(assert (=> b!4657443 (= e!2905977 (extractMap!1702 (t!359151 lt!1819331)))))

(declare-fun lt!1819867 () Unit!118752)

(assert (=> b!4657443 (= lt!1819867 call!325455)))

(declare-fun call!325454 () Bool)

(assert (=> b!4657443 call!325454))

(declare-fun lt!1819875 () Unit!118752)

(assert (=> b!4657443 (= lt!1819875 lt!1819867)))

(declare-fun call!325456 () Bool)

(assert (=> b!4657443 call!325456))

(declare-fun lt!1819883 () Unit!118752)

(declare-fun Unit!118826 () Unit!118752)

(assert (=> b!4657443 (= lt!1819883 Unit!118826)))

(declare-fun bm!325450 () Bool)

(assert (=> bm!325450 (= call!325454 (forall!11033 (toList!5221 (extractMap!1702 (t!359151 lt!1819331))) (ite c!797195 lambda!199652 lambda!199654)))))

(declare-fun b!4657444 () Bool)

(assert (=> b!4657444 (= e!2905979 (invariantList!1300 (toList!5221 lt!1819872)))))

(assert (=> b!4657445 (= e!2905977 lt!1819869)))

(declare-fun lt!1819882 () ListMap!4561)

(assert (=> b!4657445 (= lt!1819882 (+!1986 (extractMap!1702 (t!359151 lt!1819331)) (h!58056 (_2!29810 (h!58057 lt!1819331)))))))

(assert (=> b!4657445 (= lt!1819869 (addToMapMapFromBucket!1103 (t!359150 (_2!29810 (h!58057 lt!1819331))) (+!1986 (extractMap!1702 (t!359151 lt!1819331)) (h!58056 (_2!29810 (h!58057 lt!1819331))))))))

(declare-fun lt!1819866 () Unit!118752)

(assert (=> b!4657445 (= lt!1819866 call!325455)))

(assert (=> b!4657445 call!325456))

(declare-fun lt!1819878 () Unit!118752)

(assert (=> b!4657445 (= lt!1819878 lt!1819866)))

(assert (=> b!4657445 (forall!11033 (toList!5221 lt!1819882) lambda!199654)))

(declare-fun lt!1819879 () Unit!118752)

(declare-fun Unit!118827 () Unit!118752)

(assert (=> b!4657445 (= lt!1819879 Unit!118827)))

(assert (=> b!4657445 (forall!11033 (t!359150 (_2!29810 (h!58057 lt!1819331))) lambda!199654)))

(declare-fun lt!1819877 () Unit!118752)

(declare-fun Unit!118828 () Unit!118752)

(assert (=> b!4657445 (= lt!1819877 Unit!118828)))

(declare-fun lt!1819880 () Unit!118752)

(declare-fun Unit!118829 () Unit!118752)

(assert (=> b!4657445 (= lt!1819880 Unit!118829)))

(declare-fun lt!1819873 () Unit!118752)

(assert (=> b!4657445 (= lt!1819873 (forallContained!3234 (toList!5221 lt!1819882) lambda!199654 (h!58056 (_2!29810 (h!58057 lt!1819331)))))))

(assert (=> b!4657445 (contains!15053 lt!1819882 (_1!29809 (h!58056 (_2!29810 (h!58057 lt!1819331)))))))

(declare-fun lt!1819885 () Unit!118752)

(declare-fun Unit!118830 () Unit!118752)

(assert (=> b!4657445 (= lt!1819885 Unit!118830)))

(assert (=> b!4657445 (contains!15053 lt!1819869 (_1!29809 (h!58056 (_2!29810 (h!58057 lt!1819331)))))))

(declare-fun lt!1819884 () Unit!118752)

(declare-fun Unit!118831 () Unit!118752)

(assert (=> b!4657445 (= lt!1819884 Unit!118831)))

(assert (=> b!4657445 (forall!11033 (_2!29810 (h!58057 lt!1819331)) lambda!199654)))

(declare-fun lt!1819871 () Unit!118752)

(declare-fun Unit!118832 () Unit!118752)

(assert (=> b!4657445 (= lt!1819871 Unit!118832)))

(assert (=> b!4657445 (forall!11033 (toList!5221 lt!1819882) lambda!199654)))

(declare-fun lt!1819876 () Unit!118752)

(declare-fun Unit!118833 () Unit!118752)

(assert (=> b!4657445 (= lt!1819876 Unit!118833)))

(declare-fun lt!1819881 () Unit!118752)

(declare-fun Unit!118834 () Unit!118752)

(assert (=> b!4657445 (= lt!1819881 Unit!118834)))

(declare-fun lt!1819874 () Unit!118752)

(assert (=> b!4657445 (= lt!1819874 (addForallContainsKeyThenBeforeAdding!599 (extractMap!1702 (t!359151 lt!1819331)) lt!1819869 (_1!29809 (h!58056 (_2!29810 (h!58057 lt!1819331)))) (_2!29809 (h!58056 (_2!29810 (h!58057 lt!1819331))))))))

(assert (=> b!4657445 (forall!11033 (toList!5221 (extractMap!1702 (t!359151 lt!1819331))) lambda!199654)))

(declare-fun lt!1819868 () Unit!118752)

(assert (=> b!4657445 (= lt!1819868 lt!1819874)))

(assert (=> b!4657445 call!325454))

(declare-fun lt!1819870 () Unit!118752)

(declare-fun Unit!118835 () Unit!118752)

(assert (=> b!4657445 (= lt!1819870 Unit!118835)))

(declare-fun res!1958581 () Bool)

(assert (=> b!4657445 (= res!1958581 (forall!11033 (_2!29810 (h!58057 lt!1819331)) lambda!199654))))

(declare-fun e!2905978 () Bool)

(assert (=> b!4657445 (=> (not res!1958581) (not e!2905978))))

(assert (=> b!4657445 e!2905978))

(declare-fun lt!1819865 () Unit!118752)

(declare-fun Unit!118836 () Unit!118752)

(assert (=> b!4657445 (= lt!1819865 Unit!118836)))

(declare-fun bm!325451 () Bool)

(assert (=> bm!325451 (= call!325456 (forall!11033 (toList!5221 (extractMap!1702 (t!359151 lt!1819331))) (ite c!797195 lambda!199652 lambda!199653)))))

(declare-fun b!4657446 () Bool)

(assert (=> b!4657446 (= e!2905978 (forall!11033 (toList!5221 (extractMap!1702 (t!359151 lt!1819331))) lambda!199654))))

(declare-fun b!4657447 () Bool)

(declare-fun res!1958579 () Bool)

(assert (=> b!4657447 (=> (not res!1958579) (not e!2905979))))

(assert (=> b!4657447 (= res!1958579 (forall!11033 (toList!5221 (extractMap!1702 (t!359151 lt!1819331))) lambda!199657))))

(assert (= (and d!1477947 c!797195) b!4657443))

(assert (= (and d!1477947 (not c!797195)) b!4657445))

(assert (= (and b!4657445 res!1958581) b!4657446))

(assert (= (or b!4657443 b!4657445) bm!325449))

(assert (= (or b!4657443 b!4657445) bm!325451))

(assert (= (or b!4657443 b!4657445) bm!325450))

(assert (= (and d!1477947 res!1958580) b!4657447))

(assert (= (and b!4657447 res!1958579) b!4657444))

(declare-fun m!5538191 () Bool)

(assert (=> bm!325451 m!5538191))

(declare-fun m!5538193 () Bool)

(assert (=> b!4657445 m!5538193))

(declare-fun m!5538195 () Bool)

(assert (=> b!4657445 m!5538195))

(declare-fun m!5538197 () Bool)

(assert (=> b!4657445 m!5538197))

(assert (=> b!4657445 m!5537265))

(declare-fun m!5538199 () Bool)

(assert (=> b!4657445 m!5538199))

(declare-fun m!5538201 () Bool)

(assert (=> b!4657445 m!5538201))

(assert (=> b!4657445 m!5538197))

(declare-fun m!5538203 () Bool)

(assert (=> b!4657445 m!5538203))

(assert (=> b!4657445 m!5538201))

(declare-fun m!5538205 () Bool)

(assert (=> b!4657445 m!5538205))

(declare-fun m!5538207 () Bool)

(assert (=> b!4657445 m!5538207))

(declare-fun m!5538209 () Bool)

(assert (=> b!4657445 m!5538209))

(declare-fun m!5538211 () Bool)

(assert (=> b!4657445 m!5538211))

(assert (=> b!4657445 m!5537265))

(assert (=> b!4657445 m!5538193))

(declare-fun m!5538213 () Bool)

(assert (=> bm!325450 m!5538213))

(declare-fun m!5538215 () Bool)

(assert (=> d!1477947 m!5538215))

(declare-fun m!5538217 () Bool)

(assert (=> d!1477947 m!5538217))

(assert (=> bm!325449 m!5537265))

(declare-fun m!5538219 () Bool)

(assert (=> bm!325449 m!5538219))

(assert (=> b!4657446 m!5538211))

(declare-fun m!5538221 () Bool)

(assert (=> b!4657444 m!5538221))

(declare-fun m!5538225 () Bool)

(assert (=> b!4657447 m!5538225))

(assert (=> b!4656792 d!1477947))

(declare-fun bs!1066091 () Bool)

(declare-fun d!1477949 () Bool)

(assert (= bs!1066091 (and d!1477949 d!1477753)))

(declare-fun lambda!199659 () Int)

(assert (=> bs!1066091 (= lambda!199659 lambda!199595)))

(declare-fun bs!1066092 () Bool)

(assert (= bs!1066092 (and d!1477949 d!1477701)))

(assert (=> bs!1066092 (= lambda!199659 lambda!199586)))

(declare-fun bs!1066093 () Bool)

(assert (= bs!1066093 (and d!1477949 d!1477695)))

(assert (=> bs!1066093 (= lambda!199659 lambda!199579)))

(declare-fun bs!1066094 () Bool)

(assert (= bs!1066094 (and d!1477949 d!1477691)))

(assert (=> bs!1066094 (= lambda!199659 lambda!199576)))

(declare-fun bs!1066095 () Bool)

(assert (= bs!1066095 (and d!1477949 b!4656743)))

(assert (=> bs!1066095 (= lambda!199659 lambda!199486)))

(declare-fun bs!1066096 () Bool)

(assert (= bs!1066096 (and d!1477949 d!1477643)))

(assert (=> bs!1066096 (= lambda!199659 lambda!199517)))

(declare-fun bs!1066097 () Bool)

(assert (= bs!1066097 (and d!1477949 d!1477907)))

(assert (=> bs!1066097 (= lambda!199659 lambda!199651)))

(declare-fun lt!1819907 () ListMap!4561)

(assert (=> d!1477949 (invariantList!1300 (toList!5221 lt!1819907))))

(declare-fun e!2905980 () ListMap!4561)

(assert (=> d!1477949 (= lt!1819907 e!2905980)))

(declare-fun c!797196 () Bool)

(assert (=> d!1477949 (= c!797196 ((_ is Cons!51911) (t!359151 lt!1819331)))))

(assert (=> d!1477949 (forall!11034 (t!359151 lt!1819331) lambda!199659)))

(assert (=> d!1477949 (= (extractMap!1702 (t!359151 lt!1819331)) lt!1819907)))

(declare-fun b!4657448 () Bool)

(assert (=> b!4657448 (= e!2905980 (addToMapMapFromBucket!1103 (_2!29810 (h!58057 (t!359151 lt!1819331))) (extractMap!1702 (t!359151 (t!359151 lt!1819331)))))))

(declare-fun b!4657449 () Bool)

(assert (=> b!4657449 (= e!2905980 (ListMap!4562 Nil!51910))))

(assert (= (and d!1477949 c!797196) b!4657448))

(assert (= (and d!1477949 (not c!797196)) b!4657449))

(declare-fun m!5538237 () Bool)

(assert (=> d!1477949 m!5538237))

(declare-fun m!5538241 () Bool)

(assert (=> d!1477949 m!5538241))

(declare-fun m!5538243 () Bool)

(assert (=> b!4657448 m!5538243))

(assert (=> b!4657448 m!5538243))

(declare-fun m!5538245 () Bool)

(assert (=> b!4657448 m!5538245))

(assert (=> b!4656792 d!1477949))

(declare-fun d!1477961 () Bool)

(assert (=> d!1477961 (dynLambda!21596 lambda!199486 lt!1819324)))

(assert (=> d!1477961 true))

(declare-fun _$7!2205 () Unit!118752)

(assert (=> d!1477961 (= (choose!32020 lt!1819331 lambda!199486 lt!1819324) _$7!2205)))

(declare-fun b_lambda!174403 () Bool)

(assert (=> (not b_lambda!174403) (not d!1477961)))

(declare-fun bs!1066098 () Bool)

(assert (= bs!1066098 d!1477961))

(assert (=> bs!1066098 m!5537517))

(assert (=> d!1477699 d!1477961))

(declare-fun d!1477965 () Bool)

(declare-fun res!1958588 () Bool)

(declare-fun e!2905987 () Bool)

(assert (=> d!1477965 (=> res!1958588 e!2905987)))

(assert (=> d!1477965 (= res!1958588 ((_ is Nil!51911) lt!1819331))))

(assert (=> d!1477965 (= (forall!11034 lt!1819331 lambda!199486) e!2905987)))

(declare-fun b!4657456 () Bool)

(declare-fun e!2905988 () Bool)

(assert (=> b!4657456 (= e!2905987 e!2905988)))

(declare-fun res!1958589 () Bool)

(assert (=> b!4657456 (=> (not res!1958589) (not e!2905988))))

(assert (=> b!4657456 (= res!1958589 (dynLambda!21596 lambda!199486 (h!58057 lt!1819331)))))

(declare-fun b!4657457 () Bool)

(assert (=> b!4657457 (= e!2905988 (forall!11034 (t!359151 lt!1819331) lambda!199486))))

(assert (= (and d!1477965 (not res!1958588)) b!4657456))

(assert (= (and b!4657456 res!1958589) b!4657457))

(declare-fun b_lambda!174405 () Bool)

(assert (=> (not b_lambda!174405) (not b!4657456)))

(declare-fun m!5538247 () Bool)

(assert (=> b!4657456 m!5538247))

(declare-fun m!5538249 () Bool)

(assert (=> b!4657457 m!5538249))

(assert (=> d!1477699 d!1477965))

(declare-fun d!1477967 () Bool)

(declare-fun isEmpty!29011 (Option!11829) Bool)

(assert (=> d!1477967 (= (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819330) key!4968)) (not (isEmpty!29011 (getValueByKey!1613 (toList!5221 lt!1819330) key!4968))))))

(declare-fun bs!1066099 () Bool)

(assert (= bs!1066099 d!1477967))

(assert (=> bs!1066099 m!5537249))

(declare-fun m!5538251 () Bool)

(assert (=> bs!1066099 m!5538251))

(assert (=> b!4656773 d!1477967))

(declare-fun b!4657476 () Bool)

(declare-fun e!2906002 () Option!11829)

(assert (=> b!4657476 (= e!2906002 (getValueByKey!1613 (t!359150 (toList!5221 lt!1819330)) key!4968))))

(declare-fun d!1477969 () Bool)

(declare-fun c!797201 () Bool)

(assert (=> d!1477969 (= c!797201 (and ((_ is Cons!51910) (toList!5221 lt!1819330)) (= (_1!29809 (h!58056 (toList!5221 lt!1819330))) key!4968)))))

(declare-fun e!2906001 () Option!11829)

(assert (=> d!1477969 (= (getValueByKey!1613 (toList!5221 lt!1819330) key!4968) e!2906001)))

(declare-fun b!4657474 () Bool)

(assert (=> b!4657474 (= e!2906001 (Some!11828 (_2!29809 (h!58056 (toList!5221 lt!1819330)))))))

(declare-fun b!4657475 () Bool)

(assert (=> b!4657475 (= e!2906001 e!2906002)))

(declare-fun c!797202 () Bool)

(assert (=> b!4657475 (= c!797202 (and ((_ is Cons!51910) (toList!5221 lt!1819330)) (not (= (_1!29809 (h!58056 (toList!5221 lt!1819330))) key!4968))))))

(declare-fun b!4657477 () Bool)

(assert (=> b!4657477 (= e!2906002 None!11828)))

(assert (= (and d!1477969 c!797201) b!4657474))

(assert (= (and d!1477969 (not c!797201)) b!4657475))

(assert (= (and b!4657475 c!797202) b!4657476))

(assert (= (and b!4657475 (not c!797202)) b!4657477))

(declare-fun m!5538259 () Bool)

(assert (=> b!4657476 m!5538259))

(assert (=> b!4656773 d!1477969))

(declare-fun d!1477975 () Bool)

(declare-fun res!1958598 () Bool)

(declare-fun e!2906003 () Bool)

(assert (=> d!1477975 (=> res!1958598 e!2906003)))

(assert (=> d!1477975 (= res!1958598 (not ((_ is Cons!51910) (t!359150 oldBucket!40))))))

(assert (=> d!1477975 (= (noDuplicateKeys!1646 (t!359150 oldBucket!40)) e!2906003)))

(declare-fun b!4657478 () Bool)

(declare-fun e!2906004 () Bool)

(assert (=> b!4657478 (= e!2906003 e!2906004)))

(declare-fun res!1958599 () Bool)

(assert (=> b!4657478 (=> (not res!1958599) (not e!2906004))))

(assert (=> b!4657478 (= res!1958599 (not (containsKey!2731 (t!359150 (t!359150 oldBucket!40)) (_1!29809 (h!58056 (t!359150 oldBucket!40))))))))

(declare-fun b!4657479 () Bool)

(assert (=> b!4657479 (= e!2906004 (noDuplicateKeys!1646 (t!359150 (t!359150 oldBucket!40))))))

(assert (= (and d!1477975 (not res!1958598)) b!4657478))

(assert (= (and b!4657478 res!1958599) b!4657479))

(declare-fun m!5538261 () Bool)

(assert (=> b!4657478 m!5538261))

(declare-fun m!5538263 () Bool)

(assert (=> b!4657479 m!5538263))

(assert (=> b!4657034 d!1477975))

(declare-fun d!1477977 () Bool)

(assert (=> d!1477977 (= (invariantList!1300 (toList!5221 lt!1819556)) (noDuplicatedKeys!353 (toList!5221 lt!1819556)))))

(declare-fun bs!1066100 () Bool)

(assert (= bs!1066100 d!1477977))

(declare-fun m!5538265 () Bool)

(assert (=> bs!1066100 m!5538265))

(assert (=> b!4656950 d!1477977))

(declare-fun d!1477979 () Bool)

(declare-fun e!2906006 () Bool)

(assert (=> d!1477979 e!2906006))

(declare-fun res!1958600 () Bool)

(assert (=> d!1477979 (=> res!1958600 e!2906006)))

(declare-fun e!2906009 () Bool)

(assert (=> d!1477979 (= res!1958600 e!2906009)))

(declare-fun res!1958602 () Bool)

(assert (=> d!1477979 (=> (not res!1958602) (not e!2906009))))

(declare-fun lt!1819913 () Option!11826)

(assert (=> d!1477979 (= res!1958602 (isEmpty!29007 lt!1819913))))

(declare-fun e!2906005 () Option!11826)

(assert (=> d!1477979 (= lt!1819913 e!2906005)))

(declare-fun c!797204 () Bool)

(assert (=> d!1477979 (= c!797204 (and ((_ is Cons!51910) (t!359150 oldBucket!40)) (= (_1!29809 (h!58056 (t!359150 oldBucket!40))) key!4968)))))

(assert (=> d!1477979 (noDuplicateKeys!1646 (t!359150 oldBucket!40))))

(assert (=> d!1477979 (= (getPair!374 (t!359150 oldBucket!40) key!4968) lt!1819913)))

(declare-fun b!4657480 () Bool)

(declare-fun e!2906008 () Bool)

(assert (=> b!4657480 (= e!2906008 (contains!15059 (t!359150 oldBucket!40) (get!17273 lt!1819913)))))

(declare-fun b!4657481 () Bool)

(declare-fun e!2906007 () Option!11826)

(assert (=> b!4657481 (= e!2906007 (getPair!374 (t!359150 (t!359150 oldBucket!40)) key!4968))))

(declare-fun b!4657482 () Bool)

(declare-fun res!1958601 () Bool)

(assert (=> b!4657482 (=> (not res!1958601) (not e!2906008))))

(assert (=> b!4657482 (= res!1958601 (= (_1!29809 (get!17273 lt!1819913)) key!4968))))

(declare-fun b!4657483 () Bool)

(assert (=> b!4657483 (= e!2906007 None!11825)))

(declare-fun b!4657484 () Bool)

(assert (=> b!4657484 (= e!2906005 (Some!11825 (h!58056 (t!359150 oldBucket!40))))))

(declare-fun b!4657485 () Bool)

(assert (=> b!4657485 (= e!2906006 e!2906008)))

(declare-fun res!1958603 () Bool)

(assert (=> b!4657485 (=> (not res!1958603) (not e!2906008))))

(assert (=> b!4657485 (= res!1958603 (isDefined!9091 lt!1819913))))

(declare-fun b!4657486 () Bool)

(assert (=> b!4657486 (= e!2906009 (not (containsKey!2731 (t!359150 oldBucket!40) key!4968)))))

(declare-fun b!4657487 () Bool)

(assert (=> b!4657487 (= e!2906005 e!2906007)))

(declare-fun c!797203 () Bool)

(assert (=> b!4657487 (= c!797203 ((_ is Cons!51910) (t!359150 oldBucket!40)))))

(assert (= (and d!1477979 c!797204) b!4657484))

(assert (= (and d!1477979 (not c!797204)) b!4657487))

(assert (= (and b!4657487 c!797203) b!4657481))

(assert (= (and b!4657487 (not c!797203)) b!4657483))

(assert (= (and d!1477979 res!1958602) b!4657486))

(assert (= (and d!1477979 (not res!1958600)) b!4657485))

(assert (= (and b!4657485 res!1958603) b!4657482))

(assert (= (and b!4657482 res!1958601) b!4657480))

(declare-fun m!5538269 () Bool)

(assert (=> b!4657481 m!5538269))

(declare-fun m!5538271 () Bool)

(assert (=> b!4657482 m!5538271))

(declare-fun m!5538273 () Bool)

(assert (=> d!1477979 m!5538273))

(assert (=> d!1477979 m!5537583))

(declare-fun m!5538275 () Bool)

(assert (=> b!4657485 m!5538275))

(assert (=> b!4657486 m!5537943))

(assert (=> b!4657480 m!5538271))

(assert (=> b!4657480 m!5538271))

(declare-fun m!5538277 () Bool)

(assert (=> b!4657480 m!5538277))

(assert (=> b!4657014 d!1477979))

(declare-fun d!1477983 () Bool)

(assert (not d!1477983))

(assert (=> b!4656956 d!1477983))

(declare-fun d!1477985 () Bool)

(assert (not d!1477985))

(assert (=> b!4656956 d!1477985))

(declare-fun d!1477987 () Bool)

(declare-fun res!1958604 () Bool)

(declare-fun e!2906010 () Bool)

(assert (=> d!1477987 (=> res!1958604 e!2906010)))

(assert (=> d!1477987 (= res!1958604 ((_ is Nil!51910) (toList!5221 lt!1819332)))))

(assert (=> d!1477987 (= (forall!11033 (toList!5221 lt!1819332) lambda!199575) e!2906010)))

(declare-fun b!4657488 () Bool)

(declare-fun e!2906011 () Bool)

(assert (=> b!4657488 (= e!2906010 e!2906011)))

(declare-fun res!1958605 () Bool)

(assert (=> b!4657488 (=> (not res!1958605) (not e!2906011))))

(assert (=> b!4657488 (= res!1958605 (dynLambda!21597 lambda!199575 (h!58056 (toList!5221 lt!1819332))))))

(declare-fun b!4657489 () Bool)

(assert (=> b!4657489 (= e!2906011 (forall!11033 (t!359150 (toList!5221 lt!1819332)) lambda!199575))))

(assert (= (and d!1477987 (not res!1958604)) b!4657488))

(assert (= (and b!4657488 res!1958605) b!4657489))

(declare-fun b_lambda!174407 () Bool)

(assert (=> (not b_lambda!174407) (not b!4657488)))

(declare-fun m!5538279 () Bool)

(assert (=> b!4657488 m!5538279))

(declare-fun m!5538281 () Bool)

(assert (=> b!4657489 m!5538281))

(assert (=> b!4656953 d!1477987))

(declare-fun d!1477989 () Bool)

(assert (=> d!1477989 (= (isDefined!9091 lt!1819622) (not (isEmpty!29007 lt!1819622)))))

(declare-fun bs!1066102 () Bool)

(assert (= bs!1066102 d!1477989))

(assert (=> bs!1066102 m!5537569))

(assert (=> b!4657018 d!1477989))

(assert (=> b!4657004 d!1477933))

(assert (=> b!4657004 d!1477695))

(declare-fun d!1477991 () Bool)

(assert (=> d!1477991 (= (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) (get!17274 (getValueByKey!1614 (toList!5222 lt!1819325) (hash!3785 hashF!1389 key!4968))))))

(declare-fun bs!1066103 () Bool)

(assert (= bs!1066103 d!1477991))

(assert (=> bs!1066103 m!5537213))

(assert (=> bs!1066103 m!5538165))

(assert (=> bs!1066103 m!5538165))

(declare-fun m!5538283 () Bool)

(assert (=> bs!1066103 m!5538283))

(assert (=> b!4657004 d!1477991))

(declare-fun d!1477993 () Bool)

(assert (=> d!1477993 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819613 lt!1819614))))

(declare-fun lt!1819916 () Unit!118752)

(assert (=> d!1477993 (= lt!1819916 (choose!32022 lt!1819325 lt!1819613 lt!1819614))))

(assert (=> d!1477993 (contains!15055 lt!1819325 lt!1819613)))

(assert (=> d!1477993 (= (lemmaGetValueImpliesTupleContained!179 lt!1819325 lt!1819613 lt!1819614) lt!1819916)))

(declare-fun bs!1066104 () Bool)

(assert (= bs!1066104 d!1477993))

(assert (=> bs!1066104 m!5537535))

(declare-fun m!5538285 () Bool)

(assert (=> bs!1066104 m!5538285))

(assert (=> bs!1066104 m!5537529))

(assert (=> b!4657004 d!1477993))

(assert (=> b!4657004 d!1477719))

(declare-fun d!1477995 () Bool)

(declare-fun e!2906013 () Bool)

(assert (=> d!1477995 e!2906013))

(declare-fun res!1958606 () Bool)

(assert (=> d!1477995 (=> res!1958606 e!2906013)))

(declare-fun lt!1819919 () Bool)

(assert (=> d!1477995 (= res!1958606 (not lt!1819919))))

(declare-fun lt!1819917 () Bool)

(assert (=> d!1477995 (= lt!1819919 lt!1819917)))

(declare-fun lt!1819920 () Unit!118752)

(declare-fun e!2906012 () Unit!118752)

(assert (=> d!1477995 (= lt!1819920 e!2906012)))

(declare-fun c!797205 () Bool)

(assert (=> d!1477995 (= c!797205 lt!1819917)))

(assert (=> d!1477995 (= lt!1819917 (containsKey!2732 (toList!5222 lt!1819325) lt!1819613))))

(assert (=> d!1477995 (= (contains!15055 lt!1819325 lt!1819613) lt!1819919)))

(declare-fun b!4657490 () Bool)

(declare-fun lt!1819918 () Unit!118752)

(assert (=> b!4657490 (= e!2906012 lt!1819918)))

(assert (=> b!4657490 (= lt!1819918 (lemmaContainsKeyImpliesGetValueByKeyDefined!1516 (toList!5222 lt!1819325) lt!1819613))))

(assert (=> b!4657490 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819613))))

(declare-fun b!4657491 () Bool)

(declare-fun Unit!118837 () Unit!118752)

(assert (=> b!4657491 (= e!2906012 Unit!118837)))

(declare-fun b!4657492 () Bool)

(assert (=> b!4657492 (= e!2906013 (isDefined!9095 (getValueByKey!1614 (toList!5222 lt!1819325) lt!1819613)))))

(assert (= (and d!1477995 c!797205) b!4657490))

(assert (= (and d!1477995 (not c!797205)) b!4657491))

(assert (= (and d!1477995 (not res!1958606)) b!4657492))

(declare-fun m!5538287 () Bool)

(assert (=> d!1477995 m!5538287))

(declare-fun m!5538291 () Bool)

(assert (=> b!4657490 m!5538291))

(assert (=> b!4657490 m!5537547))

(assert (=> b!4657490 m!5537547))

(declare-fun m!5538295 () Bool)

(assert (=> b!4657490 m!5538295))

(assert (=> b!4657492 m!5537547))

(assert (=> b!4657492 m!5537547))

(assert (=> b!4657492 m!5538295))

(assert (=> b!4657004 d!1477995))

(declare-fun d!1477999 () Bool)

(assert (=> d!1477999 (= (isDefined!9091 (getPair!374 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968)) (not (isEmpty!29007 (getPair!374 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968))))))

(declare-fun bs!1066106 () Bool)

(assert (= bs!1066106 d!1477999))

(assert (=> bs!1066106 m!5537533))

(declare-fun m!5538297 () Bool)

(assert (=> bs!1066106 m!5538297))

(assert (=> b!4657004 d!1477999))

(declare-fun d!1478001 () Bool)

(declare-fun e!2906015 () Bool)

(assert (=> d!1478001 e!2906015))

(declare-fun res!1958607 () Bool)

(assert (=> d!1478001 (=> res!1958607 e!2906015)))

(declare-fun e!2906018 () Bool)

(assert (=> d!1478001 (= res!1958607 e!2906018)))

(declare-fun res!1958609 () Bool)

(assert (=> d!1478001 (=> (not res!1958609) (not e!2906018))))

(declare-fun lt!1819922 () Option!11826)

(assert (=> d!1478001 (= res!1958609 (isEmpty!29007 lt!1819922))))

(declare-fun e!2906014 () Option!11826)

(assert (=> d!1478001 (= lt!1819922 e!2906014)))

(declare-fun c!797207 () Bool)

(assert (=> d!1478001 (= c!797207 (and ((_ is Cons!51910) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968))) (= (_1!29809 (h!58056 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))) key!4968)))))

(assert (=> d!1478001 (noDuplicateKeys!1646 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))

(assert (=> d!1478001 (= (getPair!374 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968) lt!1819922)))

(declare-fun e!2906017 () Bool)

(declare-fun b!4657493 () Bool)

(assert (=> b!4657493 (= e!2906017 (contains!15059 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) (get!17273 lt!1819922)))))

(declare-fun e!2906016 () Option!11826)

(declare-fun b!4657494 () Bool)

(assert (=> b!4657494 (= e!2906016 (getPair!374 (t!359150 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968))) key!4968))))

(declare-fun b!4657495 () Bool)

(declare-fun res!1958608 () Bool)

(assert (=> b!4657495 (=> (not res!1958608) (not e!2906017))))

(assert (=> b!4657495 (= res!1958608 (= (_1!29809 (get!17273 lt!1819922)) key!4968))))

(declare-fun b!4657496 () Bool)

(assert (=> b!4657496 (= e!2906016 None!11825)))

(declare-fun b!4657497 () Bool)

(assert (=> b!4657497 (= e!2906014 (Some!11825 (h!58056 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))))

(declare-fun b!4657498 () Bool)

(assert (=> b!4657498 (= e!2906015 e!2906017)))

(declare-fun res!1958610 () Bool)

(assert (=> b!4657498 (=> (not res!1958610) (not e!2906017))))

(assert (=> b!4657498 (= res!1958610 (isDefined!9091 lt!1819922))))

(declare-fun b!4657499 () Bool)

(assert (=> b!4657499 (= e!2906018 (not (containsKey!2731 (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)) key!4968)))))

(declare-fun b!4657500 () Bool)

(assert (=> b!4657500 (= e!2906014 e!2906016)))

(declare-fun c!797206 () Bool)

(assert (=> b!4657500 (= c!797206 ((_ is Cons!51910) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968))))))

(assert (= (and d!1478001 c!797207) b!4657497))

(assert (= (and d!1478001 (not c!797207)) b!4657500))

(assert (= (and b!4657500 c!797206) b!4657494))

(assert (= (and b!4657500 (not c!797206)) b!4657496))

(assert (= (and d!1478001 res!1958609) b!4657499))

(assert (= (and d!1478001 (not res!1958607)) b!4657498))

(assert (= (and b!4657498 res!1958610) b!4657495))

(assert (= (and b!4657495 res!1958608) b!4657493))

(declare-fun m!5538299 () Bool)

(assert (=> b!4657494 m!5538299))

(declare-fun m!5538301 () Bool)

(assert (=> b!4657495 m!5538301))

(declare-fun m!5538303 () Bool)

(assert (=> d!1478001 m!5538303))

(assert (=> d!1478001 m!5537531))

(declare-fun m!5538305 () Bool)

(assert (=> d!1478001 m!5538305))

(declare-fun m!5538307 () Bool)

(assert (=> b!4657498 m!5538307))

(assert (=> b!4657499 m!5537531))

(declare-fun m!5538309 () Bool)

(assert (=> b!4657499 m!5538309))

(assert (=> b!4657493 m!5538301))

(assert (=> b!4657493 m!5537531))

(assert (=> b!4657493 m!5538301))

(declare-fun m!5538311 () Bool)

(assert (=> b!4657493 m!5538311))

(assert (=> b!4657004 d!1478001))

(declare-fun lt!1819923 () Bool)

(declare-fun d!1478003 () Bool)

(assert (=> d!1478003 (= lt!1819923 (select (content!8999 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819613 lt!1819614)))))

(declare-fun e!2906020 () Bool)

(assert (=> d!1478003 (= lt!1819923 e!2906020)))

(declare-fun res!1958612 () Bool)

(assert (=> d!1478003 (=> (not res!1958612) (not e!2906020))))

(assert (=> d!1478003 (= res!1958612 ((_ is Cons!51911) (toList!5222 lt!1819325)))))

(assert (=> d!1478003 (= (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 lt!1819613 lt!1819614)) lt!1819923)))

(declare-fun b!4657501 () Bool)

(declare-fun e!2906019 () Bool)

(assert (=> b!4657501 (= e!2906020 e!2906019)))

(declare-fun res!1958611 () Bool)

(assert (=> b!4657501 (=> res!1958611 e!2906019)))

(assert (=> b!4657501 (= res!1958611 (= (h!58057 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819613 lt!1819614)))))

(declare-fun b!4657502 () Bool)

(assert (=> b!4657502 (= e!2906019 (contains!15054 (t!359151 (toList!5222 lt!1819325)) (tuple2!53033 lt!1819613 lt!1819614)))))

(assert (= (and d!1478003 res!1958612) b!4657501))

(assert (= (and b!4657501 (not res!1958611)) b!4657502))

(assert (=> d!1478003 m!5538127))

(declare-fun m!5538313 () Bool)

(assert (=> d!1478003 m!5538313))

(declare-fun m!5538315 () Bool)

(assert (=> b!4657502 m!5538315))

(assert (=> b!4657004 d!1478003))

(declare-fun d!1478005 () Bool)

(assert (=> d!1478005 (dynLambda!21596 lambda!199586 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968))))))

(declare-fun lt!1819924 () Unit!118752)

(assert (=> d!1478005 (= lt!1819924 (choose!32020 (toList!5222 lt!1819325) lambda!199586 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))))

(declare-fun e!2906021 () Bool)

(assert (=> d!1478005 e!2906021))

(declare-fun res!1958613 () Bool)

(assert (=> d!1478005 (=> (not res!1958613) (not e!2906021))))

(assert (=> d!1478005 (= res!1958613 (forall!11034 (toList!5222 lt!1819325) lambda!199586))))

(assert (=> d!1478005 (= (forallContained!3232 (toList!5222 lt!1819325) lambda!199586 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))) lt!1819924)))

(declare-fun b!4657503 () Bool)

(assert (=> b!4657503 (= e!2906021 (contains!15054 (toList!5222 lt!1819325) (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))))))

(assert (= (and d!1478005 res!1958613) b!4657503))

(declare-fun b_lambda!174409 () Bool)

(assert (=> (not b_lambda!174409) (not d!1478005)))

(declare-fun m!5538317 () Bool)

(assert (=> d!1478005 m!5538317))

(declare-fun m!5538319 () Bool)

(assert (=> d!1478005 m!5538319))

(assert (=> d!1478005 m!5537523))

(declare-fun m!5538321 () Bool)

(assert (=> b!4657503 m!5538321))

(assert (=> b!4657004 d!1478005))

(declare-fun d!1478007 () Bool)

(declare-fun res!1958614 () Bool)

(declare-fun e!2906022 () Bool)

(assert (=> d!1478007 (=> res!1958614 e!2906022)))

(assert (=> d!1478007 (= res!1958614 (and ((_ is Cons!51910) (t!359150 newBucket!224)) (= (_1!29809 (h!58056 (t!359150 newBucket!224))) (_1!29809 (h!58056 newBucket!224)))))))

(assert (=> d!1478007 (= (containsKey!2731 (t!359150 newBucket!224) (_1!29809 (h!58056 newBucket!224))) e!2906022)))

(declare-fun b!4657506 () Bool)

(declare-fun e!2906023 () Bool)

(assert (=> b!4657506 (= e!2906022 e!2906023)))

(declare-fun res!1958615 () Bool)

(assert (=> b!4657506 (=> (not res!1958615) (not e!2906023))))

(assert (=> b!4657506 (= res!1958615 ((_ is Cons!51910) (t!359150 newBucket!224)))))

(declare-fun b!4657507 () Bool)

(assert (=> b!4657507 (= e!2906023 (containsKey!2731 (t!359150 (t!359150 newBucket!224)) (_1!29809 (h!58056 newBucket!224))))))

(assert (= (and d!1478007 (not res!1958614)) b!4657506))

(assert (= (and b!4657506 res!1958615) b!4657507))

(declare-fun m!5538323 () Bool)

(assert (=> b!4657507 m!5538323))

(assert (=> b!4656802 d!1478007))

(declare-fun d!1478009 () Bool)

(declare-fun choose!32035 (Hashable!6043 K!13265) (_ BitVec 64))

(assert (=> d!1478009 (= (hash!3787 hashF!1389 key!4968) (choose!32035 hashF!1389 key!4968))))

(declare-fun bs!1066115 () Bool)

(assert (= bs!1066115 d!1478009))

(declare-fun m!5538327 () Bool)

(assert (=> bs!1066115 m!5538327))

(assert (=> d!1477719 d!1478009))

(declare-fun d!1478013 () Bool)

(declare-fun e!2906025 () Bool)

(assert (=> d!1478013 e!2906025))

(declare-fun res!1958616 () Bool)

(assert (=> d!1478013 (=> res!1958616 e!2906025)))

(declare-fun e!2906028 () Bool)

(assert (=> d!1478013 (= res!1958616 e!2906028)))

(declare-fun res!1958618 () Bool)

(assert (=> d!1478013 (=> (not res!1958618) (not e!2906028))))

(declare-fun lt!1819925 () Option!11826)

(assert (=> d!1478013 (= res!1958618 (isEmpty!29007 lt!1819925))))

(declare-fun e!2906024 () Option!11826)

(assert (=> d!1478013 (= lt!1819925 e!2906024)))

(declare-fun c!797209 () Bool)

(assert (=> d!1478013 (= c!797209 (and ((_ is Cons!51910) (t!359150 lt!1819326)) (= (_1!29809 (h!58056 (t!359150 lt!1819326))) key!4968)))))

(assert (=> d!1478013 (noDuplicateKeys!1646 (t!359150 lt!1819326))))

(assert (=> d!1478013 (= (getPair!374 (t!359150 lt!1819326) key!4968) lt!1819925)))

(declare-fun b!4657508 () Bool)

(declare-fun e!2906027 () Bool)

(assert (=> b!4657508 (= e!2906027 (contains!15059 (t!359150 lt!1819326) (get!17273 lt!1819925)))))

(declare-fun b!4657509 () Bool)

(declare-fun e!2906026 () Option!11826)

(assert (=> b!4657509 (= e!2906026 (getPair!374 (t!359150 (t!359150 lt!1819326)) key!4968))))

(declare-fun b!4657510 () Bool)

(declare-fun res!1958617 () Bool)

(assert (=> b!4657510 (=> (not res!1958617) (not e!2906027))))

(assert (=> b!4657510 (= res!1958617 (= (_1!29809 (get!17273 lt!1819925)) key!4968))))

(declare-fun b!4657511 () Bool)

(assert (=> b!4657511 (= e!2906026 None!11825)))

(declare-fun b!4657512 () Bool)

(assert (=> b!4657512 (= e!2906024 (Some!11825 (h!58056 (t!359150 lt!1819326))))))

(declare-fun b!4657513 () Bool)

(assert (=> b!4657513 (= e!2906025 e!2906027)))

(declare-fun res!1958619 () Bool)

(assert (=> b!4657513 (=> (not res!1958619) (not e!2906027))))

(assert (=> b!4657513 (= res!1958619 (isDefined!9091 lt!1819925))))

(declare-fun b!4657514 () Bool)

(assert (=> b!4657514 (= e!2906028 (not (containsKey!2731 (t!359150 lt!1819326) key!4968)))))

(declare-fun b!4657515 () Bool)

(assert (=> b!4657515 (= e!2906024 e!2906026)))

(declare-fun c!797208 () Bool)

(assert (=> b!4657515 (= c!797208 ((_ is Cons!51910) (t!359150 lt!1819326)))))

(assert (= (and d!1478013 c!797209) b!4657512))

(assert (= (and d!1478013 (not c!797209)) b!4657515))

(assert (= (and b!4657515 c!797208) b!4657509))

(assert (= (and b!4657515 (not c!797208)) b!4657511))

(assert (= (and d!1478013 res!1958618) b!4657514))

(assert (= (and d!1478013 (not res!1958616)) b!4657513))

(assert (= (and b!4657513 res!1958619) b!4657510))

(assert (= (and b!4657510 res!1958617) b!4657508))

(declare-fun m!5538333 () Bool)

(assert (=> b!4657509 m!5538333))

(declare-fun m!5538335 () Bool)

(assert (=> b!4657510 m!5538335))

(declare-fun m!5538337 () Bool)

(assert (=> d!1478013 m!5538337))

(assert (=> d!1478013 m!5538125))

(declare-fun m!5538339 () Bool)

(assert (=> b!4657513 m!5538339))

(assert (=> b!4657514 m!5537593))

(assert (=> b!4657508 m!5538335))

(assert (=> b!4657508 m!5538335))

(declare-fun m!5538341 () Bool)

(assert (=> b!4657508 m!5538341))

(assert (=> b!4656975 d!1478013))

(assert (=> b!4656779 d!1477861))

(declare-fun d!1478019 () Bool)

(declare-fun res!1958622 () Bool)

(declare-fun e!2906031 () Bool)

(assert (=> d!1478019 (=> res!1958622 e!2906031)))

(assert (=> d!1478019 (= res!1958622 ((_ is Nil!51910) (toList!5221 lt!1819332)))))

(assert (=> d!1478019 (= (forall!11033 (toList!5221 lt!1819332) (ite c!797100 lambda!199572 lambda!199573)) e!2906031)))

(declare-fun b!4657518 () Bool)

(declare-fun e!2906032 () Bool)

(assert (=> b!4657518 (= e!2906031 e!2906032)))

(declare-fun res!1958623 () Bool)

(assert (=> b!4657518 (=> (not res!1958623) (not e!2906032))))

(assert (=> b!4657518 (= res!1958623 (dynLambda!21597 (ite c!797100 lambda!199572 lambda!199573) (h!58056 (toList!5221 lt!1819332))))))

(declare-fun b!4657519 () Bool)

(assert (=> b!4657519 (= e!2906032 (forall!11033 (t!359150 (toList!5221 lt!1819332)) (ite c!797100 lambda!199572 lambda!199573)))))

(assert (= (and d!1478019 (not res!1958622)) b!4657518))

(assert (= (and b!4657518 res!1958623) b!4657519))

(declare-fun b_lambda!174413 () Bool)

(assert (=> (not b_lambda!174413) (not b!4657518)))

(declare-fun m!5538351 () Bool)

(assert (=> b!4657518 m!5538351))

(declare-fun m!5538353 () Bool)

(assert (=> b!4657519 m!5538353))

(assert (=> bm!325436 d!1478019))

(declare-fun bs!1066120 () Bool)

(declare-fun d!1478025 () Bool)

(assert (= bs!1066120 (and d!1478025 d!1477753)))

(declare-fun lambda!199665 () Int)

(assert (=> bs!1066120 (not (= lambda!199665 lambda!199595))))

(declare-fun bs!1066121 () Bool)

(assert (= bs!1066121 (and d!1478025 d!1477701)))

(assert (=> bs!1066121 (not (= lambda!199665 lambda!199586))))

(declare-fun bs!1066122 () Bool)

(assert (= bs!1066122 (and d!1478025 d!1477695)))

(assert (=> bs!1066122 (not (= lambda!199665 lambda!199579))))

(declare-fun bs!1066123 () Bool)

(assert (= bs!1066123 (and d!1478025 d!1477691)))

(assert (=> bs!1066123 (not (= lambda!199665 lambda!199576))))

(declare-fun bs!1066124 () Bool)

(assert (= bs!1066124 (and d!1478025 d!1477949)))

(assert (=> bs!1066124 (not (= lambda!199665 lambda!199659))))

(declare-fun bs!1066125 () Bool)

(assert (= bs!1066125 (and d!1478025 b!4656743)))

(assert (=> bs!1066125 (not (= lambda!199665 lambda!199486))))

(declare-fun bs!1066126 () Bool)

(assert (= bs!1066126 (and d!1478025 d!1477643)))

(assert (=> bs!1066126 (not (= lambda!199665 lambda!199517))))

(declare-fun bs!1066127 () Bool)

(assert (= bs!1066127 (and d!1478025 d!1477907)))

(assert (=> bs!1066127 (not (= lambda!199665 lambda!199651))))

(assert (=> d!1478025 true))

(assert (=> d!1478025 (= (allKeysSameHashInMap!1602 lt!1819325 hashF!1389) (forall!11034 (toList!5222 lt!1819325) lambda!199665))))

(declare-fun bs!1066128 () Bool)

(assert (= bs!1066128 d!1478025))

(declare-fun m!5538389 () Bool)

(assert (=> bs!1066128 m!5538389))

(assert (=> b!4657002 d!1478025))

(declare-fun d!1478039 () Bool)

(assert (=> d!1478039 (isDefined!9094 (getValueByKey!1613 (toList!5221 lt!1819330) key!4968))))

(declare-fun lt!1819938 () Unit!118752)

(declare-fun choose!32037 (List!52034 K!13265) Unit!118752)

(assert (=> d!1478039 (= lt!1819938 (choose!32037 (toList!5221 lt!1819330) key!4968))))

(assert (=> d!1478039 (invariantList!1300 (toList!5221 lt!1819330))))

(assert (=> d!1478039 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1515 (toList!5221 lt!1819330) key!4968) lt!1819938)))

(declare-fun bs!1066131 () Bool)

(assert (= bs!1066131 d!1478039))

(assert (=> bs!1066131 m!5537249))

(assert (=> bs!1066131 m!5537249))

(assert (=> bs!1066131 m!5537251))

(declare-fun m!5538409 () Bool)

(assert (=> bs!1066131 m!5538409))

(assert (=> bs!1066131 m!5537685))

(assert (=> b!4656777 d!1478039))

(assert (=> b!4656777 d!1477967))

(assert (=> b!4656777 d!1477969))

(declare-fun d!1478051 () Bool)

(assert (=> d!1478051 (contains!15058 (getKeysList!751 (toList!5221 lt!1819330)) key!4968)))

(declare-fun lt!1819965 () Unit!118752)

(declare-fun choose!32038 (List!52034 K!13265) Unit!118752)

(assert (=> d!1478051 (= lt!1819965 (choose!32038 (toList!5221 lt!1819330) key!4968))))

(assert (=> d!1478051 (invariantList!1300 (toList!5221 lt!1819330))))

(assert (=> d!1478051 (= (lemmaInListThenGetKeysListContains!746 (toList!5221 lt!1819330) key!4968) lt!1819965)))

(declare-fun bs!1066133 () Bool)

(assert (= bs!1066133 d!1478051))

(assert (=> bs!1066133 m!5537253))

(assert (=> bs!1066133 m!5537253))

(declare-fun m!5538423 () Bool)

(assert (=> bs!1066133 m!5538423))

(declare-fun m!5538425 () Bool)

(assert (=> bs!1066133 m!5538425))

(assert (=> bs!1066133 m!5537685))

(assert (=> b!4656777 d!1478051))

(declare-fun d!1478063 () Bool)

(declare-fun lt!1819966 () Bool)

(assert (=> d!1478063 (= lt!1819966 (select (content!8999 (t!359151 lt!1819331)) lt!1819324))))

(declare-fun e!2906061 () Bool)

(assert (=> d!1478063 (= lt!1819966 e!2906061)))

(declare-fun res!1958648 () Bool)

(assert (=> d!1478063 (=> (not res!1958648) (not e!2906061))))

(assert (=> d!1478063 (= res!1958648 ((_ is Cons!51911) (t!359151 lt!1819331)))))

(assert (=> d!1478063 (= (contains!15054 (t!359151 lt!1819331) lt!1819324) lt!1819966)))

(declare-fun b!4657557 () Bool)

(declare-fun e!2906060 () Bool)

(assert (=> b!4657557 (= e!2906061 e!2906060)))

(declare-fun res!1958647 () Bool)

(assert (=> b!4657557 (=> res!1958647 e!2906060)))

(assert (=> b!4657557 (= res!1958647 (= (h!58057 (t!359151 lt!1819331)) lt!1819324))))

(declare-fun b!4657558 () Bool)

(assert (=> b!4657558 (= e!2906060 (contains!15054 (t!359151 (t!359151 lt!1819331)) lt!1819324))))

(assert (= (and d!1478063 res!1958648) b!4657557))

(assert (= (and b!4657557 (not res!1958647)) b!4657558))

(assert (=> d!1478063 m!5537869))

(declare-fun m!5538427 () Bool)

(assert (=> d!1478063 m!5538427))

(declare-fun m!5538429 () Bool)

(assert (=> b!4657558 m!5538429))

(assert (=> b!4657011 d!1478063))

(declare-fun e!2906062 () Bool)

(declare-fun tp!1343372 () Bool)

(declare-fun b!4657559 () Bool)

(assert (=> b!4657559 (= e!2906062 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343372))))

(assert (=> b!4657039 (= tp!1343370 e!2906062)))

(assert (= (and b!4657039 ((_ is Cons!51910) (t!359150 (t!359150 oldBucket!40)))) b!4657559))

(declare-fun e!2906063 () Bool)

(declare-fun tp!1343373 () Bool)

(declare-fun b!4657560 () Bool)

(assert (=> b!4657560 (= e!2906063 (and tp_is_empty!29877 tp_is_empty!29879 tp!1343373))))

(assert (=> b!4657040 (= tp!1343371 e!2906063)))

(assert (= (and b!4657040 ((_ is Cons!51910) (t!359150 (t!359150 newBucket!224)))) b!4657560))

(declare-fun b_lambda!174423 () Bool)

(assert (= b_lambda!174405 (or b!4656743 b_lambda!174423)))

(declare-fun bs!1066147 () Bool)

(declare-fun d!1478065 () Bool)

(assert (= bs!1066147 (and d!1478065 b!4656743)))

(assert (=> bs!1066147 (= (dynLambda!21596 lambda!199486 (h!58057 lt!1819331)) (noDuplicateKeys!1646 (_2!29810 (h!58057 lt!1819331))))))

(assert (=> bs!1066147 m!5538217))

(assert (=> b!4657456 d!1478065))

(declare-fun b_lambda!174425 () Bool)

(assert (= b_lambda!174403 (or b!4656743 b_lambda!174425)))

(assert (=> d!1477961 d!1477721))

(declare-fun b_lambda!174427 () Bool)

(assert (= b_lambda!174351 (or d!1477639 b_lambda!174427)))

(declare-fun bs!1066150 () Bool)

(declare-fun d!1478067 () Bool)

(assert (= bs!1066150 (and d!1478067 d!1477639)))

(assert (=> bs!1066150 (= (dynLambda!21597 lambda!199490 (h!58056 newBucket!224)) (= (hash!3785 hashF!1389 (_1!29809 (h!58056 newBucket!224))) hash!414))))

(declare-fun m!5538431 () Bool)

(assert (=> bs!1066150 m!5538431))

(assert (=> b!4657045 d!1478067))

(declare-fun b_lambda!174429 () Bool)

(assert (= b_lambda!174367 (or b!4656951 b_lambda!174429)))

(declare-fun bs!1066153 () Bool)

(declare-fun d!1478069 () Bool)

(assert (= bs!1066153 (and d!1478069 b!4656951)))

(assert (=> bs!1066153 (= (dynLambda!21597 lambda!199574 (h!58056 (toList!5221 lt!1819332))) (contains!15053 lt!1819553 (_1!29809 (h!58056 (toList!5221 lt!1819332)))))))

(declare-fun m!5538433 () Bool)

(assert (=> bs!1066153 m!5538433))

(assert (=> b!4657151 d!1478069))

(declare-fun b_lambda!174431 () Bool)

(assert (= b_lambda!174365 (or b!4656951 b_lambda!174431)))

(declare-fun bs!1066154 () Bool)

(declare-fun d!1478071 () Bool)

(assert (= bs!1066154 (and d!1478071 b!4656951)))

(assert (=> bs!1066154 (= (dynLambda!21597 lambda!199574 (h!58056 oldBucket!40)) (contains!15053 lt!1819553 (_1!29809 (h!58056 oldBucket!40))))))

(assert (=> bs!1066154 m!5537465))

(assert (=> d!1477795 d!1478071))

(declare-fun b_lambda!174433 () Bool)

(assert (= b_lambda!174401 (or d!1477637 b_lambda!174433)))

(declare-fun bs!1066156 () Bool)

(declare-fun d!1478073 () Bool)

(assert (= bs!1066156 (and d!1478073 d!1477637)))

(assert (=> bs!1066156 (= (dynLambda!21597 lambda!199489 (h!58056 oldBucket!40)) (= (hash!3785 hashF!1389 (_1!29809 (h!58056 oldBucket!40))) hash!414))))

(declare-fun m!5538435 () Bool)

(assert (=> bs!1066156 m!5538435))

(assert (=> b!4657441 d!1478073))

(declare-fun b_lambda!174435 () Bool)

(assert (= b_lambda!174399 (or d!1477695 b_lambda!174435)))

(declare-fun bs!1066158 () Bool)

(declare-fun d!1478075 () Bool)

(assert (= bs!1066158 (and d!1478075 d!1477695)))

(assert (=> bs!1066158 (= (dynLambda!21596 lambda!199579 (h!58057 (toList!5222 lt!1819325))) (noDuplicateKeys!1646 (_2!29810 (h!58057 (toList!5222 lt!1819325)))))))

(declare-fun m!5538437 () Bool)

(assert (=> bs!1066158 m!5538437))

(assert (=> b!4657439 d!1478075))

(declare-fun b_lambda!174437 () Bool)

(assert (= b_lambda!174377 (or b!4656951 b_lambda!174437)))

(declare-fun bs!1066160 () Bool)

(declare-fun d!1478077 () Bool)

(assert (= bs!1066160 (and d!1478077 b!4656951)))

(assert (=> bs!1066160 (= (dynLambda!21597 lambda!199574 (h!58056 (toList!5221 lt!1819566))) (contains!15053 lt!1819553 (_1!29809 (h!58056 (toList!5221 lt!1819566)))))))

(declare-fun m!5538439 () Bool)

(assert (=> bs!1066160 m!5538439))

(assert (=> b!4657200 d!1478077))

(declare-fun b_lambda!174439 () Bool)

(assert (= b_lambda!174379 (or b!4656951 b_lambda!174439)))

(declare-fun bs!1066162 () Bool)

(declare-fun d!1478079 () Bool)

(assert (= bs!1066162 (and d!1478079 b!4656951)))

(assert (=> bs!1066162 (= (dynLambda!21597 lambda!199574 (h!58056 (t!359150 oldBucket!40))) (contains!15053 lt!1819553 (_1!29809 (h!58056 (t!359150 oldBucket!40)))))))

(declare-fun m!5538441 () Bool)

(assert (=> bs!1066162 m!5538441))

(assert (=> b!4657202 d!1478079))

(declare-fun b_lambda!174441 () Bool)

(assert (= b_lambda!174357 (or d!1477691 b_lambda!174441)))

(declare-fun bs!1066163 () Bool)

(declare-fun d!1478081 () Bool)

(assert (= bs!1066163 (and d!1478081 d!1477691)))

(assert (=> bs!1066163 (= (dynLambda!21596 lambda!199576 (h!58057 Nil!51911)) (noDuplicateKeys!1646 (_2!29810 (h!58057 Nil!51911))))))

(declare-fun m!5538443 () Bool)

(assert (=> bs!1066163 m!5538443))

(assert (=> b!4657063 d!1478081))

(declare-fun b_lambda!174443 () Bool)

(assert (= b_lambda!174409 (or d!1477701 b_lambda!174443)))

(declare-fun bs!1066164 () Bool)

(declare-fun d!1478083 () Bool)

(assert (= bs!1066164 (and d!1478083 d!1477701)))

(assert (=> bs!1066164 (= (dynLambda!21596 lambda!199586 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968)))) (noDuplicateKeys!1646 (_2!29810 (tuple2!53033 (hash!3785 hashF!1389 key!4968) (apply!12249 lt!1819325 (hash!3785 hashF!1389 key!4968))))))))

(declare-fun m!5538445 () Bool)

(assert (=> bs!1066164 m!5538445))

(assert (=> d!1478005 d!1478083))

(declare-fun b_lambda!174445 () Bool)

(assert (= b_lambda!174407 (or d!1477647 b_lambda!174445)))

(declare-fun bs!1066165 () Bool)

(declare-fun d!1478085 () Bool)

(assert (= bs!1066165 (and d!1478085 d!1477647)))

(assert (=> bs!1066165 (= (dynLambda!21597 lambda!199575 (h!58056 (toList!5221 lt!1819332))) (contains!15053 lt!1819556 (_1!29809 (h!58056 (toList!5221 lt!1819332)))))))

(declare-fun m!5538447 () Bool)

(assert (=> bs!1066165 m!5538447))

(assert (=> b!4657488 d!1478085))

(declare-fun b_lambda!174447 () Bool)

(assert (= b_lambda!174355 (or d!1477647 b_lambda!174447)))

(declare-fun bs!1066166 () Bool)

(declare-fun d!1478087 () Bool)

(assert (= bs!1066166 (and d!1478087 d!1477647)))

(assert (=> bs!1066166 (= (dynLambda!21597 lambda!199575 (h!58056 oldBucket!40)) (contains!15053 lt!1819556 (_1!29809 (h!58056 oldBucket!40))))))

(declare-fun m!5538449 () Bool)

(assert (=> bs!1066166 m!5538449))

(assert (=> b!4657061 d!1478087))

(declare-fun b_lambda!174449 () Bool)

(assert (= b_lambda!174353 (or d!1477643 b_lambda!174449)))

(declare-fun bs!1066167 () Bool)

(declare-fun d!1478089 () Bool)

(assert (= bs!1066167 (and d!1478089 d!1477643)))

(assert (=> bs!1066167 (= (dynLambda!21596 lambda!199517 (h!58057 lt!1819331)) (noDuplicateKeys!1646 (_2!29810 (h!58057 lt!1819331))))))

(assert (=> bs!1066167 m!5538217))

(assert (=> b!4657059 d!1478089))

(declare-fun b_lambda!174451 () Bool)

(assert (= b_lambda!174375 (or b!4656951 b_lambda!174451)))

(assert (=> b!4657189 d!1478071))

(declare-fun b_lambda!174453 () Bool)

(assert (= b_lambda!174361 (or d!1477701 b_lambda!174453)))

(declare-fun bs!1066168 () Bool)

(declare-fun d!1478091 () Bool)

(assert (= bs!1066168 (and d!1478091 d!1477701)))

(assert (=> bs!1066168 (= (dynLambda!21596 lambda!199586 (h!58057 (toList!5222 lt!1819325))) (noDuplicateKeys!1646 (_2!29810 (h!58057 (toList!5222 lt!1819325)))))))

(assert (=> bs!1066168 m!5538437))

(assert (=> b!4657071 d!1478091))

(check-sat (not b!4657479) (not bm!325441) (not b!4657248) (not b!4657492) (not b_lambda!174359) (not b!4657481) (not d!1477837) (not b!4657062) (not d!1477993) (not d!1478063) (not b!4657119) (not b!4657281) (not b!4657498) (not bm!325438) (not d!1477921) (not b!4657297) (not b_lambda!174413) (not b_lambda!174453) (not b!4657384) (not b!4657447) (not b!4657298) (not bs!1066156) (not bs!1066147) (not b!4657095) (not b!4657445) (not d!1477767) tp_is_empty!29877 (not b!4657507) (not d!1477947) (not d!1477831) (not b!4657191) (not b!4657385) (not b_lambda!174443) (not b!4657269) (not b!4657395) (not b!4657195) (not bs!1066150) (not b!4657210) (not b!4657053) (not b!4657428) (not b!4657120) (not d!1478025) (not d!1477919) (not b!4657388) (not b!4657204) (not d!1478001) (not b_lambda!174439) (not b_lambda!174435) (not b_lambda!174449) (not b_lambda!174425) (not b!4657478) (not d!1477979) (not d!1477937) (not b!4657426) (not b!4657493) (not bm!325442) (not d!1477841) (not b!4657480) (not b!4657261) tp_is_empty!29879 (not b!4657380) (not b_lambda!174429) (not b!4657499) (not b!4657368) (not d!1477733) (not b!4657208) (not b!4657448) (not b!4657422) (not bs!1066165) (not b!4657406) (not b!4657068) (not b_lambda!174433) (not b!4657486) (not d!1477879) (not b!4657510) (not d!1477795) (not b!4657118) (not d!1477779) (not b!4657089) (not b!4657064) (not b_lambda!174437) (not b!4657495) (not b!4657482) (not d!1478003) (not d!1477877) (not d!1477967) (not b!4657403) (not bm!325449) (not b!4657446) (not bs!1066162) (not b!4657386) (not b!4657192) (not b!4657060) (not b!4657188) (not bs!1066160) (not b!4657199) (not b!4657503) (not b_lambda!174423) (not bm!325451) (not b!4657508) (not d!1477859) (not bs!1066164) (not b!4657513) (not d!1478039) (not b!4657514) (not b_lambda!174447) (not b!4657065) (not d!1478005) (not d!1477989) (not bs!1066168) (not bm!325448) (not b!4657372) (not b!4657207) (not b!4657152) (not b!4657371) (not b!4657194) (not b!4657490) (not b!4657485) (not b!4657559) (not d!1478013) (not d!1477803) (not b!4657201) (not b!4657150) (not b!4657072) (not bm!325437) (not b_lambda!174441) (not bs!1066153) (not b!4657381) (not b!4657054) (not b!4657313) (not b!4657560) (not b_lambda!174445) (not d!1477913) (not b!4657519) (not b_lambda!174349) (not b!4657374) (not b!4657121) (not b!4657303) (not b!4657116) (not bm!325439) (not d!1478051) (not b!4657066) (not b!4657457) (not b!4657440) (not d!1477991) (not bs!1066163) (not b!4657205) (not d!1477977) (not b!4657489) (not d!1477899) (not d!1477881) (not b!4657101) (not b!4657305) (not b!4657383) (not d!1477741) (not d!1477949) (not b!4657502) (not b_lambda!174427) (not b!4657197) (not d!1477999) (not d!1477995) (not b!4657444) (not b!4657369) (not b!4657212) (not b!4657279) (not b!4657404) (not b_lambda!174451) (not d!1477907) (not b!4657299) (not d!1477839) (not b!4657494) (not bs!1066158) (not b!4657209) (not bs!1066166) (not b!4657476) (not d!1477869) (not bm!325450) (not d!1477861) (not b_lambda!174431) (not d!1477753) (not b!4657308) (not d!1478009) (not b!4657509) (not b!4657187) (not b!4657442) (not d!1477933) (not b!4657052) (not d!1477927) (not b!4657196) (not b!4657558) (not bs!1066154) (not b!4657203) (not d!1477765) (not d!1477783) (not b!4657046) (not bs!1066167) (not b!4657190))
(check-sat)
