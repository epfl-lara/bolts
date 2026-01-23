; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418200 () Bool)

(assert start!418200)

(declare-fun res!1778434 () Bool)

(declare-fun e!2698010 () Bool)

(assert (=> start!418200 (=> (not res!1778434) (not e!2698010))))

(declare-datatypes ((V!10276 0))(
  ( (V!10277 (val!16295 Int)) )
))
(declare-datatypes ((K!10030 0))(
  ( (K!10031 (val!16296 Int)) )
))
(declare-datatypes ((tuple2!47910 0))(
  ( (tuple2!47911 (_1!27249 K!10030) (_2!27249 V!10276)) )
))
(declare-datatypes ((List!48797 0))(
  ( (Nil!48673) (Cons!48673 (h!54174 tuple2!47910) (t!355713 List!48797)) )
))
(declare-datatypes ((tuple2!47912 0))(
  ( (tuple2!47913 (_1!27250 (_ BitVec 64)) (_2!27250 List!48797)) )
))
(declare-datatypes ((List!48798 0))(
  ( (Nil!48674) (Cons!48674 (h!54175 tuple2!47912) (t!355714 List!48798)) )
))
(declare-datatypes ((ListLongMap!1403 0))(
  ( (ListLongMap!1404 (toList!2753 List!48798)) )
))
(declare-fun lm!1707 () ListLongMap!1403)

(declare-fun lambda!135851 () Int)

(declare-fun forall!8953 (List!48798 Int) Bool)

(assert (=> start!418200 (= res!1778434 (forall!8953 (toList!2753 lm!1707) lambda!135851))))

(assert (=> start!418200 e!2698010))

(declare-fun e!2698007 () Bool)

(assert (=> start!418200 e!2698007))

(assert (=> start!418200 true))

(declare-fun e!2698009 () Bool)

(declare-fun inv!64216 (ListLongMap!1403) Bool)

(assert (=> start!418200 (and (inv!64216 lm!1707) e!2698009)))

(declare-fun tp_is_empty!24777 () Bool)

(assert (=> start!418200 tp_is_empty!24777))

(declare-fun tp_is_empty!24779 () Bool)

(assert (=> start!418200 tp_is_empty!24779))

(declare-fun b!4335960 () Bool)

(declare-fun res!1778443 () Bool)

(assert (=> b!4335960 (=> (not res!1778443) (not e!2698010))))

(declare-datatypes ((Hashable!4777 0))(
  ( (HashableExt!4776 (__x!30480 Int)) )
))
(declare-fun hashF!1247 () Hashable!4777)

(declare-fun allKeysSameHashInMap!489 (ListLongMap!1403 Hashable!4777) Bool)

(assert (=> b!4335960 (= res!1778443 (allKeysSameHashInMap!489 lm!1707 hashF!1247))))

(declare-fun b!4335961 () Bool)

(declare-fun e!2698012 () Bool)

(declare-fun e!2698008 () Bool)

(assert (=> b!4335961 (= e!2698012 e!2698008)))

(declare-fun res!1778441 () Bool)

(assert (=> b!4335961 (=> res!1778441 e!2698008)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4335961 (= res!1778441 (or (not ((_ is Cons!48674) (toList!2753 lm!1707))) (not (= (_1!27250 (h!54175 (toList!2753 lm!1707))) hash!377))))))

(declare-fun e!2698011 () Bool)

(assert (=> b!4335961 e!2698011))

(declare-fun res!1778433 () Bool)

(assert (=> b!4335961 (=> (not res!1778433) (not e!2698011))))

(declare-fun lt!1549400 () ListLongMap!1403)

(assert (=> b!4335961 (= res!1778433 (forall!8953 (toList!2753 lt!1549400) lambda!135851))))

(declare-fun lt!1549404 () tuple2!47912)

(declare-fun +!441 (ListLongMap!1403 tuple2!47912) ListLongMap!1403)

(assert (=> b!4335961 (= lt!1549400 (+!441 lm!1707 lt!1549404))))

(declare-fun newBucket!200 () List!48797)

(assert (=> b!4335961 (= lt!1549404 (tuple2!47913 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68567 0))(
  ( (Unit!68568) )
))
(declare-fun lt!1549393 () Unit!68567)

(declare-fun addValidProp!39 (ListLongMap!1403 Int (_ BitVec 64) List!48797) Unit!68567)

(assert (=> b!4335961 (= lt!1549393 (addValidProp!39 lm!1707 lambda!135851 hash!377 newBucket!200))))

(assert (=> b!4335961 (forall!8953 (toList!2753 lm!1707) lambda!135851)))

(declare-fun b!4335962 () Bool)

(declare-fun res!1778436 () Bool)

(assert (=> b!4335962 (=> res!1778436 e!2698012)))

(declare-fun noDuplicateKeys!385 (List!48797) Bool)

(assert (=> b!4335962 (= res!1778436 (not (noDuplicateKeys!385 newBucket!200)))))

(declare-fun b!4335963 () Bool)

(declare-fun res!1778437 () Bool)

(assert (=> b!4335963 (=> (not res!1778437) (not e!2698011))))

(assert (=> b!4335963 (= res!1778437 (forall!8953 (toList!2753 lt!1549400) lambda!135851))))

(declare-fun b!4335964 () Bool)

(assert (=> b!4335964 (= e!2698011 (or (not ((_ is Cons!48674) (toList!2753 lm!1707))) (not (= (_1!27250 (h!54175 (toList!2753 lm!1707))) hash!377)) (= lt!1549400 (ListLongMap!1404 (Cons!48674 lt!1549404 (t!355714 (toList!2753 lm!1707)))))))))

(declare-fun b!4335965 () Bool)

(declare-fun res!1778439 () Bool)

(assert (=> b!4335965 (=> (not res!1778439) (not e!2698010))))

(declare-fun key!3918 () K!10030)

(declare-fun hash!1332 (Hashable!4777 K!10030) (_ BitVec 64))

(assert (=> b!4335965 (= res!1778439 (= (hash!1332 hashF!1247 key!3918) hash!377))))

(declare-fun b!4335966 () Bool)

(declare-fun tp!1328991 () Bool)

(assert (=> b!4335966 (= e!2698007 (and tp_is_empty!24777 tp_is_empty!24779 tp!1328991))))

(declare-fun b!4335967 () Bool)

(assert (=> b!4335967 (= e!2698010 (not e!2698012))))

(declare-fun res!1778440 () Bool)

(assert (=> b!4335967 (=> res!1778440 e!2698012)))

(declare-fun lt!1549406 () List!48797)

(assert (=> b!4335967 (= res!1778440 (not (= newBucket!200 lt!1549406)))))

(declare-fun lt!1549402 () tuple2!47910)

(declare-fun lt!1549398 () List!48797)

(assert (=> b!4335967 (= lt!1549406 (Cons!48673 lt!1549402 lt!1549398))))

(declare-fun lt!1549396 () List!48797)

(declare-fun removePairForKey!355 (List!48797 K!10030) List!48797)

(assert (=> b!4335967 (= lt!1549398 (removePairForKey!355 lt!1549396 key!3918))))

(declare-fun newValue!99 () V!10276)

(assert (=> b!4335967 (= lt!1549402 (tuple2!47911 key!3918 newValue!99))))

(declare-fun lt!1549403 () Unit!68567)

(declare-fun lt!1549401 () tuple2!47912)

(declare-fun forallContained!1603 (List!48798 Int tuple2!47912) Unit!68567)

(assert (=> b!4335967 (= lt!1549403 (forallContained!1603 (toList!2753 lm!1707) lambda!135851 lt!1549401))))

(declare-fun contains!10732 (List!48798 tuple2!47912) Bool)

(assert (=> b!4335967 (contains!10732 (toList!2753 lm!1707) lt!1549401)))

(assert (=> b!4335967 (= lt!1549401 (tuple2!47913 hash!377 lt!1549396))))

(declare-fun lt!1549397 () Unit!68567)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!232 (List!48798 (_ BitVec 64) List!48797) Unit!68567)

(assert (=> b!4335967 (= lt!1549397 (lemmaGetValueByKeyImpliesContainsTuple!232 (toList!2753 lm!1707) hash!377 lt!1549396))))

(declare-fun apply!11237 (ListLongMap!1403 (_ BitVec 64)) List!48797)

(assert (=> b!4335967 (= lt!1549396 (apply!11237 lm!1707 hash!377))))

(declare-fun b!4335968 () Bool)

(declare-fun tp!1328992 () Bool)

(assert (=> b!4335968 (= e!2698009 tp!1328992)))

(declare-fun b!4335969 () Bool)

(declare-fun res!1778435 () Bool)

(assert (=> b!4335969 (=> (not res!1778435) (not e!2698010))))

(declare-fun contains!10733 (ListLongMap!1403 (_ BitVec 64)) Bool)

(assert (=> b!4335969 (= res!1778435 (contains!10733 lm!1707 hash!377))))

(declare-fun b!4335970 () Bool)

(declare-fun res!1778442 () Bool)

(assert (=> b!4335970 (=> (not res!1778442) (not e!2698010))))

(declare-datatypes ((ListMap!1997 0))(
  ( (ListMap!1998 (toList!2754 List!48797)) )
))
(declare-fun contains!10734 (ListMap!1997 K!10030) Bool)

(declare-fun extractMap!444 (List!48798) ListMap!1997)

(assert (=> b!4335970 (= res!1778442 (contains!10734 (extractMap!444 (toList!2753 lm!1707)) key!3918))))

(declare-fun b!4335971 () Bool)

(declare-fun res!1778438 () Bool)

(assert (=> b!4335971 (=> (not res!1778438) (not e!2698010))))

(declare-fun allKeysSameHash!343 (List!48797 (_ BitVec 64) Hashable!4777) Bool)

(assert (=> b!4335971 (= res!1778438 (allKeysSameHash!343 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4335972 () Bool)

(assert (=> b!4335972 (= e!2698008 (noDuplicateKeys!385 lt!1549396))))

(declare-fun lt!1549392 () ListMap!1997)

(declare-fun lt!1549405 () ListMap!1997)

(declare-fun eq!175 (ListMap!1997 ListMap!1997) Bool)

(declare-fun +!442 (ListMap!1997 tuple2!47910) ListMap!1997)

(declare-fun addToMapMapFromBucket!93 (List!48797 ListMap!1997) ListMap!1997)

(assert (=> b!4335972 (eq!175 lt!1549392 (+!442 (addToMapMapFromBucket!93 lt!1549398 lt!1549405) lt!1549402))))

(declare-fun lt!1549395 () Unit!68567)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!4 (ListMap!1997 K!10030 V!10276 List!48797) Unit!68567)

(assert (=> b!4335972 (= lt!1549395 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!4 lt!1549405 key!3918 newValue!99 lt!1549398))))

(declare-fun lt!1549394 () ListMap!1997)

(assert (=> b!4335972 (= lt!1549394 lt!1549392)))

(assert (=> b!4335972 (= lt!1549392 (addToMapMapFromBucket!93 lt!1549398 (+!442 lt!1549405 lt!1549402)))))

(declare-fun lt!1549399 () ListMap!1997)

(assert (=> b!4335972 (= lt!1549399 lt!1549394)))

(assert (=> b!4335972 (= lt!1549394 (addToMapMapFromBucket!93 lt!1549406 lt!1549405))))

(assert (=> b!4335972 (= lt!1549399 (addToMapMapFromBucket!93 newBucket!200 lt!1549405))))

(assert (=> b!4335972 (= lt!1549399 (extractMap!444 (toList!2753 lt!1549400)))))

(assert (=> b!4335972 (= lt!1549405 (extractMap!444 (t!355714 (toList!2753 lm!1707))))))

(assert (= (and start!418200 res!1778434) b!4335960))

(assert (= (and b!4335960 res!1778443) b!4335965))

(assert (= (and b!4335965 res!1778439) b!4335971))

(assert (= (and b!4335971 res!1778438) b!4335970))

(assert (= (and b!4335970 res!1778442) b!4335969))

(assert (= (and b!4335969 res!1778435) b!4335967))

(assert (= (and b!4335967 (not res!1778440)) b!4335962))

(assert (= (and b!4335962 (not res!1778436)) b!4335961))

(assert (= (and b!4335961 res!1778433) b!4335963))

(assert (= (and b!4335963 res!1778437) b!4335964))

(assert (= (and b!4335961 (not res!1778441)) b!4335972))

(assert (= (and start!418200 ((_ is Cons!48673) newBucket!200)) b!4335966))

(assert (= start!418200 b!4335968))

(declare-fun m!4931055 () Bool)

(assert (=> b!4335963 m!4931055))

(declare-fun m!4931057 () Bool)

(assert (=> b!4335967 m!4931057))

(declare-fun m!4931059 () Bool)

(assert (=> b!4335967 m!4931059))

(declare-fun m!4931061 () Bool)

(assert (=> b!4335967 m!4931061))

(declare-fun m!4931063 () Bool)

(assert (=> b!4335967 m!4931063))

(declare-fun m!4931065 () Bool)

(assert (=> b!4335967 m!4931065))

(declare-fun m!4931067 () Bool)

(assert (=> b!4335972 m!4931067))

(declare-fun m!4931069 () Bool)

(assert (=> b!4335972 m!4931069))

(declare-fun m!4931071 () Bool)

(assert (=> b!4335972 m!4931071))

(declare-fun m!4931073 () Bool)

(assert (=> b!4335972 m!4931073))

(declare-fun m!4931075 () Bool)

(assert (=> b!4335972 m!4931075))

(assert (=> b!4335972 m!4931075))

(declare-fun m!4931077 () Bool)

(assert (=> b!4335972 m!4931077))

(declare-fun m!4931079 () Bool)

(assert (=> b!4335972 m!4931079))

(declare-fun m!4931081 () Bool)

(assert (=> b!4335972 m!4931081))

(declare-fun m!4931083 () Bool)

(assert (=> b!4335972 m!4931083))

(declare-fun m!4931085 () Bool)

(assert (=> b!4335972 m!4931085))

(assert (=> b!4335972 m!4931081))

(assert (=> b!4335972 m!4931077))

(declare-fun m!4931087 () Bool)

(assert (=> b!4335972 m!4931087))

(declare-fun m!4931089 () Bool)

(assert (=> b!4335965 m!4931089))

(declare-fun m!4931091 () Bool)

(assert (=> b!4335971 m!4931091))

(declare-fun m!4931093 () Bool)

(assert (=> b!4335969 m!4931093))

(assert (=> b!4335961 m!4931055))

(declare-fun m!4931095 () Bool)

(assert (=> b!4335961 m!4931095))

(declare-fun m!4931097 () Bool)

(assert (=> b!4335961 m!4931097))

(declare-fun m!4931099 () Bool)

(assert (=> b!4335961 m!4931099))

(declare-fun m!4931101 () Bool)

(assert (=> b!4335960 m!4931101))

(declare-fun m!4931103 () Bool)

(assert (=> b!4335970 m!4931103))

(assert (=> b!4335970 m!4931103))

(declare-fun m!4931105 () Bool)

(assert (=> b!4335970 m!4931105))

(assert (=> start!418200 m!4931099))

(declare-fun m!4931107 () Bool)

(assert (=> start!418200 m!4931107))

(declare-fun m!4931109 () Bool)

(assert (=> b!4335962 m!4931109))

(check-sat (not b!4335969) tp_is_empty!24777 (not b!4335963) (not b!4335960) (not b!4335971) tp_is_empty!24779 (not b!4335966) (not b!4335965) (not b!4335972) (not b!4335968) (not b!4335967) (not start!418200) (not b!4335961) (not b!4335962) (not b!4335970))
(check-sat)
(get-model)

(declare-fun d!1274514 () Bool)

(declare-fun e!2698055 () Bool)

(assert (=> d!1274514 e!2698055))

(declare-fun res!1778481 () Bool)

(assert (=> d!1274514 (=> res!1778481 e!2698055)))

(declare-fun lt!1549444 () Bool)

(assert (=> d!1274514 (= res!1778481 (not lt!1549444))))

(declare-fun lt!1549442 () Bool)

(assert (=> d!1274514 (= lt!1549444 lt!1549442)))

(declare-fun lt!1549443 () Unit!68567)

(declare-fun e!2698056 () Unit!68567)

(assert (=> d!1274514 (= lt!1549443 e!2698056)))

(declare-fun c!737309 () Bool)

(assert (=> d!1274514 (= c!737309 lt!1549442)))

(declare-fun containsKey!534 (List!48798 (_ BitVec 64)) Bool)

(assert (=> d!1274514 (= lt!1549442 (containsKey!534 (toList!2753 lm!1707) hash!377))))

(assert (=> d!1274514 (= (contains!10733 lm!1707 hash!377) lt!1549444)))

(declare-fun b!4336033 () Bool)

(declare-fun lt!1549445 () Unit!68567)

(assert (=> b!4336033 (= e!2698056 lt!1549445)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!267 (List!48798 (_ BitVec 64)) Unit!68567)

(assert (=> b!4336033 (= lt!1549445 (lemmaContainsKeyImpliesGetValueByKeyDefined!267 (toList!2753 lm!1707) hash!377))))

(declare-datatypes ((Option!10368 0))(
  ( (None!10367) (Some!10367 (v!43107 List!48797)) )
))
(declare-fun isDefined!7664 (Option!10368) Bool)

(declare-fun getValueByKey!354 (List!48798 (_ BitVec 64)) Option!10368)

(assert (=> b!4336033 (isDefined!7664 (getValueByKey!354 (toList!2753 lm!1707) hash!377))))

(declare-fun b!4336034 () Bool)

(declare-fun Unit!68583 () Unit!68567)

(assert (=> b!4336034 (= e!2698056 Unit!68583)))

(declare-fun b!4336035 () Bool)

(assert (=> b!4336035 (= e!2698055 (isDefined!7664 (getValueByKey!354 (toList!2753 lm!1707) hash!377)))))

(assert (= (and d!1274514 c!737309) b!4336033))

(assert (= (and d!1274514 (not c!737309)) b!4336034))

(assert (= (and d!1274514 (not res!1778481)) b!4336035))

(declare-fun m!4931173 () Bool)

(assert (=> d!1274514 m!4931173))

(declare-fun m!4931175 () Bool)

(assert (=> b!4336033 m!4931175))

(declare-fun m!4931177 () Bool)

(assert (=> b!4336033 m!4931177))

(assert (=> b!4336033 m!4931177))

(declare-fun m!4931179 () Bool)

(assert (=> b!4336033 m!4931179))

(assert (=> b!4336035 m!4931177))

(assert (=> b!4336035 m!4931177))

(assert (=> b!4336035 m!4931179))

(assert (=> b!4335969 d!1274514))

(declare-fun bs!608666 () Bool)

(declare-fun d!1274522 () Bool)

(assert (= bs!608666 (and d!1274522 start!418200)))

(declare-fun lambda!135860 () Int)

(assert (=> bs!608666 (not (= lambda!135860 lambda!135851))))

(assert (=> d!1274522 true))

(assert (=> d!1274522 (= (allKeysSameHashInMap!489 lm!1707 hashF!1247) (forall!8953 (toList!2753 lm!1707) lambda!135860))))

(declare-fun bs!608667 () Bool)

(assert (= bs!608667 d!1274522))

(declare-fun m!4931181 () Bool)

(assert (=> bs!608667 m!4931181))

(assert (=> b!4335960 d!1274522))

(declare-fun b!4336100 () Bool)

(declare-fun e!2698102 () Unit!68567)

(declare-fun Unit!68584 () Unit!68567)

(assert (=> b!4336100 (= e!2698102 Unit!68584)))

(declare-fun b!4336101 () Bool)

(declare-fun e!2698097 () Unit!68567)

(assert (=> b!4336101 (= e!2698097 e!2698102)))

(declare-fun c!737332 () Bool)

(declare-fun call!301309 () Bool)

(assert (=> b!4336101 (= c!737332 call!301309)))

(declare-fun b!4336102 () Bool)

(declare-fun e!2698098 () Bool)

(declare-fun e!2698100 () Bool)

(assert (=> b!4336102 (= e!2698098 e!2698100)))

(declare-fun res!1778501 () Bool)

(assert (=> b!4336102 (=> (not res!1778501) (not e!2698100))))

(declare-datatypes ((Option!10369 0))(
  ( (None!10368) (Some!10368 (v!43108 V!10276)) )
))
(declare-fun isDefined!7665 (Option!10369) Bool)

(declare-fun getValueByKey!355 (List!48797 K!10030) Option!10369)

(assert (=> b!4336102 (= res!1778501 (isDefined!7665 (getValueByKey!355 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918)))))

(declare-fun bm!301304 () Bool)

(declare-datatypes ((List!48800 0))(
  ( (Nil!48676) (Cons!48676 (h!54179 K!10030) (t!355716 List!48800)) )
))
(declare-fun e!2698099 () List!48800)

(declare-fun contains!10737 (List!48800 K!10030) Bool)

(assert (=> bm!301304 (= call!301309 (contains!10737 e!2698099 key!3918))))

(declare-fun c!737333 () Bool)

(declare-fun c!737334 () Bool)

(assert (=> bm!301304 (= c!737333 c!737334)))

(declare-fun b!4336103 () Bool)

(declare-fun e!2698101 () Bool)

(declare-fun keys!16372 (ListMap!1997) List!48800)

(assert (=> b!4336103 (= e!2698101 (not (contains!10737 (keys!16372 (extractMap!444 (toList!2753 lm!1707))) key!3918)))))

(declare-fun b!4336104 () Bool)

(assert (=> b!4336104 (= e!2698099 (keys!16372 (extractMap!444 (toList!2753 lm!1707))))))

(declare-fun d!1274524 () Bool)

(assert (=> d!1274524 e!2698098))

(declare-fun res!1778502 () Bool)

(assert (=> d!1274524 (=> res!1778502 e!2698098)))

(assert (=> d!1274524 (= res!1778502 e!2698101)))

(declare-fun res!1778500 () Bool)

(assert (=> d!1274524 (=> (not res!1778500) (not e!2698101))))

(declare-fun lt!1549507 () Bool)

(assert (=> d!1274524 (= res!1778500 (not lt!1549507))))

(declare-fun lt!1549503 () Bool)

(assert (=> d!1274524 (= lt!1549507 lt!1549503)))

(declare-fun lt!1549502 () Unit!68567)

(assert (=> d!1274524 (= lt!1549502 e!2698097)))

(assert (=> d!1274524 (= c!737334 lt!1549503)))

(declare-fun containsKey!535 (List!48797 K!10030) Bool)

(assert (=> d!1274524 (= lt!1549503 (containsKey!535 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(assert (=> d!1274524 (= (contains!10734 (extractMap!444 (toList!2753 lm!1707)) key!3918) lt!1549507)))

(declare-fun b!4336105 () Bool)

(assert (=> b!4336105 (= e!2698100 (contains!10737 (keys!16372 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(declare-fun b!4336106 () Bool)

(assert (=> b!4336106 false))

(declare-fun lt!1549505 () Unit!68567)

(declare-fun lt!1549506 () Unit!68567)

(assert (=> b!4336106 (= lt!1549505 lt!1549506)))

(assert (=> b!4336106 (containsKey!535 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!74 (List!48797 K!10030) Unit!68567)

(assert (=> b!4336106 (= lt!1549506 (lemmaInGetKeysListThenContainsKey!74 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(declare-fun Unit!68585 () Unit!68567)

(assert (=> b!4336106 (= e!2698102 Unit!68585)))

(declare-fun b!4336107 () Bool)

(declare-fun lt!1549509 () Unit!68567)

(assert (=> b!4336107 (= e!2698097 lt!1549509)))

(declare-fun lt!1549504 () Unit!68567)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!268 (List!48797 K!10030) Unit!68567)

(assert (=> b!4336107 (= lt!1549504 (lemmaContainsKeyImpliesGetValueByKeyDefined!268 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(assert (=> b!4336107 (isDefined!7665 (getValueByKey!355 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(declare-fun lt!1549508 () Unit!68567)

(assert (=> b!4336107 (= lt!1549508 lt!1549504)))

(declare-fun lemmaInListThenGetKeysListContains!73 (List!48797 K!10030) Unit!68567)

(assert (=> b!4336107 (= lt!1549509 (lemmaInListThenGetKeysListContains!73 (toList!2754 (extractMap!444 (toList!2753 lm!1707))) key!3918))))

(assert (=> b!4336107 call!301309))

(declare-fun b!4336108 () Bool)

(declare-fun getKeysList!76 (List!48797) List!48800)

(assert (=> b!4336108 (= e!2698099 (getKeysList!76 (toList!2754 (extractMap!444 (toList!2753 lm!1707)))))))

(assert (= (and d!1274524 c!737334) b!4336107))

(assert (= (and d!1274524 (not c!737334)) b!4336101))

(assert (= (and b!4336101 c!737332) b!4336106))

(assert (= (and b!4336101 (not c!737332)) b!4336100))

(assert (= (or b!4336107 b!4336101) bm!301304))

(assert (= (and bm!301304 c!737333) b!4336108))

(assert (= (and bm!301304 (not c!737333)) b!4336104))

(assert (= (and d!1274524 res!1778500) b!4336103))

(assert (= (and d!1274524 (not res!1778502)) b!4336102))

(assert (= (and b!4336102 res!1778501) b!4336105))

(declare-fun m!4931223 () Bool)

(assert (=> b!4336107 m!4931223))

(declare-fun m!4931225 () Bool)

(assert (=> b!4336107 m!4931225))

(assert (=> b!4336107 m!4931225))

(declare-fun m!4931227 () Bool)

(assert (=> b!4336107 m!4931227))

(declare-fun m!4931229 () Bool)

(assert (=> b!4336107 m!4931229))

(assert (=> b!4336104 m!4931103))

(declare-fun m!4931231 () Bool)

(assert (=> b!4336104 m!4931231))

(declare-fun m!4931233 () Bool)

(assert (=> bm!301304 m!4931233))

(declare-fun m!4931235 () Bool)

(assert (=> d!1274524 m!4931235))

(assert (=> b!4336106 m!4931235))

(declare-fun m!4931237 () Bool)

(assert (=> b!4336106 m!4931237))

(assert (=> b!4336103 m!4931103))

(assert (=> b!4336103 m!4931231))

(assert (=> b!4336103 m!4931231))

(declare-fun m!4931239 () Bool)

(assert (=> b!4336103 m!4931239))

(assert (=> b!4336105 m!4931103))

(assert (=> b!4336105 m!4931231))

(assert (=> b!4336105 m!4931231))

(assert (=> b!4336105 m!4931239))

(declare-fun m!4931241 () Bool)

(assert (=> b!4336108 m!4931241))

(assert (=> b!4336102 m!4931225))

(assert (=> b!4336102 m!4931225))

(assert (=> b!4336102 m!4931227))

(assert (=> b!4335970 d!1274524))

(declare-fun bs!608673 () Bool)

(declare-fun d!1274534 () Bool)

(assert (= bs!608673 (and d!1274534 start!418200)))

(declare-fun lambda!135867 () Int)

(assert (=> bs!608673 (= lambda!135867 lambda!135851)))

(declare-fun bs!608674 () Bool)

(assert (= bs!608674 (and d!1274534 d!1274522)))

(assert (=> bs!608674 (not (= lambda!135867 lambda!135860))))

(declare-fun lt!1549512 () ListMap!1997)

(declare-fun invariantList!628 (List!48797) Bool)

(assert (=> d!1274534 (invariantList!628 (toList!2754 lt!1549512))))

(declare-fun e!2698105 () ListMap!1997)

(assert (=> d!1274534 (= lt!1549512 e!2698105)))

(declare-fun c!737337 () Bool)

(assert (=> d!1274534 (= c!737337 ((_ is Cons!48674) (toList!2753 lm!1707)))))

(assert (=> d!1274534 (forall!8953 (toList!2753 lm!1707) lambda!135867)))

(assert (=> d!1274534 (= (extractMap!444 (toList!2753 lm!1707)) lt!1549512)))

(declare-fun b!4336113 () Bool)

(assert (=> b!4336113 (= e!2698105 (addToMapMapFromBucket!93 (_2!27250 (h!54175 (toList!2753 lm!1707))) (extractMap!444 (t!355714 (toList!2753 lm!1707)))))))

(declare-fun b!4336114 () Bool)

(assert (=> b!4336114 (= e!2698105 (ListMap!1998 Nil!48673))))

(assert (= (and d!1274534 c!737337) b!4336113))

(assert (= (and d!1274534 (not c!737337)) b!4336114))

(declare-fun m!4931243 () Bool)

(assert (=> d!1274534 m!4931243))

(declare-fun m!4931245 () Bool)

(assert (=> d!1274534 m!4931245))

(assert (=> b!4336113 m!4931071))

(assert (=> b!4336113 m!4931071))

(declare-fun m!4931247 () Bool)

(assert (=> b!4336113 m!4931247))

(assert (=> b!4335970 d!1274534))

(declare-fun d!1274536 () Bool)

(declare-fun get!15793 (Option!10368) List!48797)

(assert (=> d!1274536 (= (apply!11237 lm!1707 hash!377) (get!15793 (getValueByKey!354 (toList!2753 lm!1707) hash!377)))))

(declare-fun bs!608675 () Bool)

(assert (= bs!608675 d!1274536))

(assert (=> bs!608675 m!4931177))

(assert (=> bs!608675 m!4931177))

(declare-fun m!4931249 () Bool)

(assert (=> bs!608675 m!4931249))

(assert (=> b!4335967 d!1274536))

(declare-fun d!1274538 () Bool)

(declare-fun lt!1549515 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7604 (List!48798) (InoxSet tuple2!47912))

(assert (=> d!1274538 (= lt!1549515 (select (content!7604 (toList!2753 lm!1707)) lt!1549401))))

(declare-fun e!2698111 () Bool)

(assert (=> d!1274538 (= lt!1549515 e!2698111)))

(declare-fun res!1778508 () Bool)

(assert (=> d!1274538 (=> (not res!1778508) (not e!2698111))))

(assert (=> d!1274538 (= res!1778508 ((_ is Cons!48674) (toList!2753 lm!1707)))))

(assert (=> d!1274538 (= (contains!10732 (toList!2753 lm!1707) lt!1549401) lt!1549515)))

(declare-fun b!4336119 () Bool)

(declare-fun e!2698110 () Bool)

(assert (=> b!4336119 (= e!2698111 e!2698110)))

(declare-fun res!1778507 () Bool)

(assert (=> b!4336119 (=> res!1778507 e!2698110)))

(assert (=> b!4336119 (= res!1778507 (= (h!54175 (toList!2753 lm!1707)) lt!1549401))))

(declare-fun b!4336120 () Bool)

(assert (=> b!4336120 (= e!2698110 (contains!10732 (t!355714 (toList!2753 lm!1707)) lt!1549401))))

(assert (= (and d!1274538 res!1778508) b!4336119))

(assert (= (and b!4336119 (not res!1778507)) b!4336120))

(declare-fun m!4931251 () Bool)

(assert (=> d!1274538 m!4931251))

(declare-fun m!4931253 () Bool)

(assert (=> d!1274538 m!4931253))

(declare-fun m!4931255 () Bool)

(assert (=> b!4336120 m!4931255))

(assert (=> b!4335967 d!1274538))

(declare-fun d!1274540 () Bool)

(declare-fun lt!1549518 () List!48797)

(declare-fun containsKey!536 (List!48797 K!10030) Bool)

(assert (=> d!1274540 (not (containsKey!536 lt!1549518 key!3918))))

(declare-fun e!2698117 () List!48797)

(assert (=> d!1274540 (= lt!1549518 e!2698117)))

(declare-fun c!737343 () Bool)

(assert (=> d!1274540 (= c!737343 (and ((_ is Cons!48673) lt!1549396) (= (_1!27249 (h!54174 lt!1549396)) key!3918)))))

(assert (=> d!1274540 (noDuplicateKeys!385 lt!1549396)))

(assert (=> d!1274540 (= (removePairForKey!355 lt!1549396 key!3918) lt!1549518)))

(declare-fun b!4336132 () Bool)

(declare-fun e!2698116 () List!48797)

(assert (=> b!4336132 (= e!2698116 Nil!48673)))

(declare-fun b!4336129 () Bool)

(assert (=> b!4336129 (= e!2698117 (t!355713 lt!1549396))))

(declare-fun b!4336131 () Bool)

(assert (=> b!4336131 (= e!2698116 (Cons!48673 (h!54174 lt!1549396) (removePairForKey!355 (t!355713 lt!1549396) key!3918)))))

(declare-fun b!4336130 () Bool)

(assert (=> b!4336130 (= e!2698117 e!2698116)))

(declare-fun c!737342 () Bool)

(assert (=> b!4336130 (= c!737342 ((_ is Cons!48673) lt!1549396))))

(assert (= (and d!1274540 c!737343) b!4336129))

(assert (= (and d!1274540 (not c!737343)) b!4336130))

(assert (= (and b!4336130 c!737342) b!4336131))

(assert (= (and b!4336130 (not c!737342)) b!4336132))

(declare-fun m!4931257 () Bool)

(assert (=> d!1274540 m!4931257))

(assert (=> d!1274540 m!4931067))

(declare-fun m!4931259 () Bool)

(assert (=> b!4336131 m!4931259))

(assert (=> b!4335967 d!1274540))

(declare-fun d!1274542 () Bool)

(assert (=> d!1274542 (contains!10732 (toList!2753 lm!1707) (tuple2!47913 hash!377 lt!1549396))))

(declare-fun lt!1549521 () Unit!68567)

(declare-fun choose!26538 (List!48798 (_ BitVec 64) List!48797) Unit!68567)

(assert (=> d!1274542 (= lt!1549521 (choose!26538 (toList!2753 lm!1707) hash!377 lt!1549396))))

(declare-fun e!2698120 () Bool)

(assert (=> d!1274542 e!2698120))

(declare-fun res!1778511 () Bool)

(assert (=> d!1274542 (=> (not res!1778511) (not e!2698120))))

(declare-fun isStrictlySorted!54 (List!48798) Bool)

(assert (=> d!1274542 (= res!1778511 (isStrictlySorted!54 (toList!2753 lm!1707)))))

(assert (=> d!1274542 (= (lemmaGetValueByKeyImpliesContainsTuple!232 (toList!2753 lm!1707) hash!377 lt!1549396) lt!1549521)))

(declare-fun b!4336135 () Bool)

(assert (=> b!4336135 (= e!2698120 (= (getValueByKey!354 (toList!2753 lm!1707) hash!377) (Some!10367 lt!1549396)))))

(assert (= (and d!1274542 res!1778511) b!4336135))

(declare-fun m!4931261 () Bool)

(assert (=> d!1274542 m!4931261))

(declare-fun m!4931263 () Bool)

(assert (=> d!1274542 m!4931263))

(declare-fun m!4931265 () Bool)

(assert (=> d!1274542 m!4931265))

(assert (=> b!4336135 m!4931177))

(assert (=> b!4335967 d!1274542))

(declare-fun d!1274544 () Bool)

(declare-fun dynLambda!20567 (Int tuple2!47912) Bool)

(assert (=> d!1274544 (dynLambda!20567 lambda!135851 lt!1549401)))

(declare-fun lt!1549524 () Unit!68567)

(declare-fun choose!26539 (List!48798 Int tuple2!47912) Unit!68567)

(assert (=> d!1274544 (= lt!1549524 (choose!26539 (toList!2753 lm!1707) lambda!135851 lt!1549401))))

(declare-fun e!2698123 () Bool)

(assert (=> d!1274544 e!2698123))

(declare-fun res!1778514 () Bool)

(assert (=> d!1274544 (=> (not res!1778514) (not e!2698123))))

(assert (=> d!1274544 (= res!1778514 (forall!8953 (toList!2753 lm!1707) lambda!135851))))

(assert (=> d!1274544 (= (forallContained!1603 (toList!2753 lm!1707) lambda!135851 lt!1549401) lt!1549524)))

(declare-fun b!4336138 () Bool)

(assert (=> b!4336138 (= e!2698123 (contains!10732 (toList!2753 lm!1707) lt!1549401))))

(assert (= (and d!1274544 res!1778514) b!4336138))

(declare-fun b_lambda!128299 () Bool)

(assert (=> (not b_lambda!128299) (not d!1274544)))

(declare-fun m!4931267 () Bool)

(assert (=> d!1274544 m!4931267))

(declare-fun m!4931269 () Bool)

(assert (=> d!1274544 m!4931269))

(assert (=> d!1274544 m!4931099))

(assert (=> b!4336138 m!4931065))

(assert (=> b!4335967 d!1274544))

(declare-fun d!1274546 () Bool)

(declare-fun res!1778519 () Bool)

(declare-fun e!2698128 () Bool)

(assert (=> d!1274546 (=> res!1778519 e!2698128)))

(assert (=> d!1274546 (= res!1778519 ((_ is Nil!48674) (toList!2753 lt!1549400)))))

(assert (=> d!1274546 (= (forall!8953 (toList!2753 lt!1549400) lambda!135851) e!2698128)))

(declare-fun b!4336143 () Bool)

(declare-fun e!2698129 () Bool)

(assert (=> b!4336143 (= e!2698128 e!2698129)))

(declare-fun res!1778520 () Bool)

(assert (=> b!4336143 (=> (not res!1778520) (not e!2698129))))

(assert (=> b!4336143 (= res!1778520 (dynLambda!20567 lambda!135851 (h!54175 (toList!2753 lt!1549400))))))

(declare-fun b!4336144 () Bool)

(assert (=> b!4336144 (= e!2698129 (forall!8953 (t!355714 (toList!2753 lt!1549400)) lambda!135851))))

(assert (= (and d!1274546 (not res!1778519)) b!4336143))

(assert (= (and b!4336143 res!1778520) b!4336144))

(declare-fun b_lambda!128301 () Bool)

(assert (=> (not b_lambda!128301) (not b!4336143)))

(declare-fun m!4931271 () Bool)

(assert (=> b!4336143 m!4931271))

(declare-fun m!4931273 () Bool)

(assert (=> b!4336144 m!4931273))

(assert (=> b!4335963 d!1274546))

(declare-fun d!1274548 () Bool)

(declare-fun hash!1334 (Hashable!4777 K!10030) (_ BitVec 64))

(assert (=> d!1274548 (= (hash!1332 hashF!1247 key!3918) (hash!1334 hashF!1247 key!3918))))

(declare-fun bs!608676 () Bool)

(assert (= bs!608676 d!1274548))

(declare-fun m!4931275 () Bool)

(assert (=> bs!608676 m!4931275))

(assert (=> b!4335965 d!1274548))

(declare-fun b!4336209 () Bool)

(assert (=> b!4336209 true))

(declare-fun bs!608765 () Bool)

(declare-fun b!4336213 () Bool)

(assert (= bs!608765 (and b!4336213 b!4336209)))

(declare-fun lambda!135942 () Int)

(declare-fun lambda!135941 () Int)

(assert (=> bs!608765 (= lambda!135942 lambda!135941)))

(assert (=> b!4336213 true))

(declare-fun lt!1549731 () ListMap!1997)

(declare-fun lambda!135943 () Int)

(assert (=> bs!608765 (= (= lt!1549731 lt!1549405) (= lambda!135943 lambda!135941))))

(assert (=> b!4336213 (= (= lt!1549731 lt!1549405) (= lambda!135943 lambda!135942))))

(assert (=> b!4336213 true))

(declare-fun bs!608766 () Bool)

(declare-fun d!1274550 () Bool)

(assert (= bs!608766 (and d!1274550 b!4336209)))

(declare-fun lt!1549720 () ListMap!1997)

(declare-fun lambda!135944 () Int)

(assert (=> bs!608766 (= (= lt!1549720 lt!1549405) (= lambda!135944 lambda!135941))))

(declare-fun bs!608767 () Bool)

(assert (= bs!608767 (and d!1274550 b!4336213)))

(assert (=> bs!608767 (= (= lt!1549720 lt!1549405) (= lambda!135944 lambda!135942))))

(assert (=> bs!608767 (= (= lt!1549720 lt!1549731) (= lambda!135944 lambda!135943))))

(assert (=> d!1274550 true))

(declare-fun c!737353 () Bool)

(declare-fun lt!1549719 () ListMap!1997)

(declare-fun bm!301329 () Bool)

(declare-fun call!301334 () Bool)

(declare-fun forall!8955 (List!48797 Int) Bool)

(assert (=> bm!301329 (= call!301334 (forall!8955 (ite c!737353 (toList!2754 lt!1549405) (toList!2754 lt!1549719)) (ite c!737353 lambda!135941 lambda!135943)))))

(declare-fun e!2698169 () ListMap!1997)

(assert (=> b!4336209 (= e!2698169 lt!1549405)))

(declare-fun lt!1549714 () Unit!68567)

(declare-fun call!301336 () Unit!68567)

(assert (=> b!4336209 (= lt!1549714 call!301336)))

(assert (=> b!4336209 call!301334))

(declare-fun lt!1549717 () Unit!68567)

(assert (=> b!4336209 (= lt!1549717 lt!1549714)))

(declare-fun call!301335 () Bool)

(assert (=> b!4336209 call!301335))

(declare-fun lt!1549722 () Unit!68567)

(declare-fun Unit!68597 () Unit!68567)

(assert (=> b!4336209 (= lt!1549722 Unit!68597)))

(declare-fun b!4336210 () Bool)

(declare-fun res!1778555 () Bool)

(declare-fun e!2698167 () Bool)

(assert (=> b!4336210 (=> (not res!1778555) (not e!2698167))))

(assert (=> b!4336210 (= res!1778555 (forall!8955 (toList!2754 lt!1549405) lambda!135944))))

(declare-fun b!4336211 () Bool)

(assert (=> b!4336211 (= e!2698167 (invariantList!628 (toList!2754 lt!1549720)))))

(declare-fun bm!301330 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!21 (ListMap!1997) Unit!68567)

(assert (=> bm!301330 (= call!301336 (lemmaContainsAllItsOwnKeys!21 lt!1549405))))

(declare-fun b!4336212 () Bool)

(declare-fun e!2698168 () Bool)

(assert (=> b!4336212 (= e!2698168 (forall!8955 (toList!2754 lt!1549405) lambda!135943))))

(assert (=> b!4336213 (= e!2698169 lt!1549731)))

(assert (=> b!4336213 (= lt!1549719 (+!442 lt!1549405 (h!54174 lt!1549398)))))

(assert (=> b!4336213 (= lt!1549731 (addToMapMapFromBucket!93 (t!355713 lt!1549398) (+!442 lt!1549405 (h!54174 lt!1549398))))))

(declare-fun lt!1549730 () Unit!68567)

(assert (=> b!4336213 (= lt!1549730 call!301336)))

(assert (=> b!4336213 (forall!8955 (toList!2754 lt!1549405) lambda!135942)))

(declare-fun lt!1549728 () Unit!68567)

(assert (=> b!4336213 (= lt!1549728 lt!1549730)))

(assert (=> b!4336213 call!301334))

(declare-fun lt!1549729 () Unit!68567)

(declare-fun Unit!68598 () Unit!68567)

(assert (=> b!4336213 (= lt!1549729 Unit!68598)))

(assert (=> b!4336213 call!301335))

(declare-fun lt!1549716 () Unit!68567)

(declare-fun Unit!68599 () Unit!68567)

(assert (=> b!4336213 (= lt!1549716 Unit!68599)))

(declare-fun lt!1549726 () Unit!68567)

(declare-fun Unit!68600 () Unit!68567)

(assert (=> b!4336213 (= lt!1549726 Unit!68600)))

(declare-fun lt!1549723 () Unit!68567)

(declare-fun forallContained!1605 (List!48797 Int tuple2!47910) Unit!68567)

(assert (=> b!4336213 (= lt!1549723 (forallContained!1605 (toList!2754 lt!1549719) lambda!135943 (h!54174 lt!1549398)))))

(assert (=> b!4336213 (contains!10734 lt!1549719 (_1!27249 (h!54174 lt!1549398)))))

(declare-fun lt!1549732 () Unit!68567)

(declare-fun Unit!68601 () Unit!68567)

(assert (=> b!4336213 (= lt!1549732 Unit!68601)))

(assert (=> b!4336213 (contains!10734 lt!1549731 (_1!27249 (h!54174 lt!1549398)))))

(declare-fun lt!1549718 () Unit!68567)

(declare-fun Unit!68602 () Unit!68567)

(assert (=> b!4336213 (= lt!1549718 Unit!68602)))

(assert (=> b!4336213 (forall!8955 lt!1549398 lambda!135943)))

(declare-fun lt!1549713 () Unit!68567)

(declare-fun Unit!68603 () Unit!68567)

(assert (=> b!4336213 (= lt!1549713 Unit!68603)))

(assert (=> b!4336213 (forall!8955 (toList!2754 lt!1549719) lambda!135943)))

(declare-fun lt!1549715 () Unit!68567)

(declare-fun Unit!68605 () Unit!68567)

(assert (=> b!4336213 (= lt!1549715 Unit!68605)))

(declare-fun lt!1549727 () Unit!68567)

(declare-fun Unit!68607 () Unit!68567)

(assert (=> b!4336213 (= lt!1549727 Unit!68607)))

(declare-fun lt!1549725 () Unit!68567)

(declare-fun addForallContainsKeyThenBeforeAdding!21 (ListMap!1997 ListMap!1997 K!10030 V!10276) Unit!68567)

(assert (=> b!4336213 (= lt!1549725 (addForallContainsKeyThenBeforeAdding!21 lt!1549405 lt!1549731 (_1!27249 (h!54174 lt!1549398)) (_2!27249 (h!54174 lt!1549398))))))

(assert (=> b!4336213 (forall!8955 (toList!2754 lt!1549405) lambda!135943)))

(declare-fun lt!1549721 () Unit!68567)

(assert (=> b!4336213 (= lt!1549721 lt!1549725)))

(assert (=> b!4336213 (forall!8955 (toList!2754 lt!1549405) lambda!135943)))

(declare-fun lt!1549733 () Unit!68567)

(declare-fun Unit!68610 () Unit!68567)

(assert (=> b!4336213 (= lt!1549733 Unit!68610)))

(declare-fun res!1778556 () Bool)

(assert (=> b!4336213 (= res!1778556 (forall!8955 lt!1549398 lambda!135943))))

(assert (=> b!4336213 (=> (not res!1778556) (not e!2698168))))

(assert (=> b!4336213 e!2698168))

(declare-fun lt!1549724 () Unit!68567)

(declare-fun Unit!68612 () Unit!68567)

(assert (=> b!4336213 (= lt!1549724 Unit!68612)))

(declare-fun bm!301331 () Bool)

(assert (=> bm!301331 (= call!301335 (forall!8955 (ite c!737353 (toList!2754 lt!1549405) (t!355713 lt!1549398)) (ite c!737353 lambda!135941 lambda!135943)))))

(assert (=> d!1274550 e!2698167))

(declare-fun res!1778557 () Bool)

(assert (=> d!1274550 (=> (not res!1778557) (not e!2698167))))

(assert (=> d!1274550 (= res!1778557 (forall!8955 lt!1549398 lambda!135944))))

(assert (=> d!1274550 (= lt!1549720 e!2698169)))

(assert (=> d!1274550 (= c!737353 ((_ is Nil!48673) lt!1549398))))

(assert (=> d!1274550 (noDuplicateKeys!385 lt!1549398)))

(assert (=> d!1274550 (= (addToMapMapFromBucket!93 lt!1549398 lt!1549405) lt!1549720)))

(assert (= (and d!1274550 c!737353) b!4336209))

(assert (= (and d!1274550 (not c!737353)) b!4336213))

(assert (= (and b!4336213 res!1778556) b!4336212))

(assert (= (or b!4336209 b!4336213) bm!301330))

(assert (= (or b!4336209 b!4336213) bm!301329))

(assert (= (or b!4336209 b!4336213) bm!301331))

(assert (= (and d!1274550 res!1778557) b!4336210))

(assert (= (and b!4336210 res!1778555) b!4336211))

(declare-fun m!4931465 () Bool)

(assert (=> bm!301331 m!4931465))

(declare-fun m!4931467 () Bool)

(assert (=> d!1274550 m!4931467))

(declare-fun m!4931469 () Bool)

(assert (=> d!1274550 m!4931469))

(declare-fun m!4931471 () Bool)

(assert (=> b!4336213 m!4931471))

(declare-fun m!4931473 () Bool)

(assert (=> b!4336213 m!4931473))

(declare-fun m!4931475 () Bool)

(assert (=> b!4336213 m!4931475))

(declare-fun m!4931477 () Bool)

(assert (=> b!4336213 m!4931477))

(declare-fun m!4931479 () Bool)

(assert (=> b!4336213 m!4931479))

(assert (=> b!4336213 m!4931479))

(assert (=> b!4336213 m!4931477))

(declare-fun m!4931481 () Bool)

(assert (=> b!4336213 m!4931481))

(assert (=> b!4336213 m!4931471))

(declare-fun m!4931483 () Bool)

(assert (=> b!4336213 m!4931483))

(declare-fun m!4931485 () Bool)

(assert (=> b!4336213 m!4931485))

(declare-fun m!4931487 () Bool)

(assert (=> b!4336213 m!4931487))

(declare-fun m!4931489 () Bool)

(assert (=> b!4336213 m!4931489))

(assert (=> b!4336212 m!4931477))

(declare-fun m!4931491 () Bool)

(assert (=> bm!301330 m!4931491))

(declare-fun m!4931493 () Bool)

(assert (=> b!4336211 m!4931493))

(declare-fun m!4931495 () Bool)

(assert (=> b!4336210 m!4931495))

(declare-fun m!4931497 () Bool)

(assert (=> bm!301329 m!4931497))

(assert (=> b!4335972 d!1274550))

(declare-fun bs!608768 () Bool)

(declare-fun b!4336216 () Bool)

(assert (= bs!608768 (and b!4336216 b!4336209)))

(declare-fun lambda!135945 () Int)

(assert (=> bs!608768 (= (= (+!442 lt!1549405 lt!1549402) lt!1549405) (= lambda!135945 lambda!135941))))

(declare-fun bs!608769 () Bool)

(assert (= bs!608769 (and b!4336216 b!4336213)))

(assert (=> bs!608769 (= (= (+!442 lt!1549405 lt!1549402) lt!1549405) (= lambda!135945 lambda!135942))))

(assert (=> bs!608769 (= (= (+!442 lt!1549405 lt!1549402) lt!1549731) (= lambda!135945 lambda!135943))))

(declare-fun bs!608770 () Bool)

(assert (= bs!608770 (and b!4336216 d!1274550)))

(assert (=> bs!608770 (= (= (+!442 lt!1549405 lt!1549402) lt!1549720) (= lambda!135945 lambda!135944))))

(assert (=> b!4336216 true))

(declare-fun bs!608771 () Bool)

(declare-fun b!4336220 () Bool)

(assert (= bs!608771 (and b!4336220 b!4336216)))

(declare-fun lambda!135946 () Int)

(assert (=> bs!608771 (= lambda!135946 lambda!135945)))

(declare-fun bs!608772 () Bool)

(assert (= bs!608772 (and b!4336220 b!4336213)))

(assert (=> bs!608772 (= (= (+!442 lt!1549405 lt!1549402) lt!1549405) (= lambda!135946 lambda!135942))))

(declare-fun bs!608773 () Bool)

(assert (= bs!608773 (and b!4336220 d!1274550)))

(assert (=> bs!608773 (= (= (+!442 lt!1549405 lt!1549402) lt!1549720) (= lambda!135946 lambda!135944))))

(assert (=> bs!608772 (= (= (+!442 lt!1549405 lt!1549402) lt!1549731) (= lambda!135946 lambda!135943))))

(declare-fun bs!608774 () Bool)

(assert (= bs!608774 (and b!4336220 b!4336209)))

(assert (=> bs!608774 (= (= (+!442 lt!1549405 lt!1549402) lt!1549405) (= lambda!135946 lambda!135941))))

(assert (=> b!4336220 true))

(declare-fun lambda!135947 () Int)

(declare-fun lt!1549752 () ListMap!1997)

(assert (=> bs!608771 (= (= lt!1549752 (+!442 lt!1549405 lt!1549402)) (= lambda!135947 lambda!135945))))

(assert (=> b!4336220 (= (= lt!1549752 (+!442 lt!1549405 lt!1549402)) (= lambda!135947 lambda!135946))))

(assert (=> bs!608772 (= (= lt!1549752 lt!1549405) (= lambda!135947 lambda!135942))))

(assert (=> bs!608773 (= (= lt!1549752 lt!1549720) (= lambda!135947 lambda!135944))))

(assert (=> bs!608772 (= (= lt!1549752 lt!1549731) (= lambda!135947 lambda!135943))))

(assert (=> bs!608774 (= (= lt!1549752 lt!1549405) (= lambda!135947 lambda!135941))))

(assert (=> b!4336220 true))

(declare-fun bs!608775 () Bool)

(declare-fun d!1274578 () Bool)

(assert (= bs!608775 (and d!1274578 b!4336216)))

(declare-fun lambda!135948 () Int)

(declare-fun lt!1549741 () ListMap!1997)

(assert (=> bs!608775 (= (= lt!1549741 (+!442 lt!1549405 lt!1549402)) (= lambda!135948 lambda!135945))))

(declare-fun bs!608776 () Bool)

(assert (= bs!608776 (and d!1274578 b!4336220)))

(assert (=> bs!608776 (= (= lt!1549741 (+!442 lt!1549405 lt!1549402)) (= lambda!135948 lambda!135946))))

(assert (=> bs!608776 (= (= lt!1549741 lt!1549752) (= lambda!135948 lambda!135947))))

(declare-fun bs!608777 () Bool)

(assert (= bs!608777 (and d!1274578 b!4336213)))

(assert (=> bs!608777 (= (= lt!1549741 lt!1549405) (= lambda!135948 lambda!135942))))

(declare-fun bs!608778 () Bool)

(assert (= bs!608778 (and d!1274578 d!1274550)))

(assert (=> bs!608778 (= (= lt!1549741 lt!1549720) (= lambda!135948 lambda!135944))))

(assert (=> bs!608777 (= (= lt!1549741 lt!1549731) (= lambda!135948 lambda!135943))))

(declare-fun bs!608779 () Bool)

(assert (= bs!608779 (and d!1274578 b!4336209)))

(assert (=> bs!608779 (= (= lt!1549741 lt!1549405) (= lambda!135948 lambda!135941))))

(assert (=> d!1274578 true))

(declare-fun bm!301332 () Bool)

(declare-fun call!301337 () Bool)

(declare-fun lt!1549740 () ListMap!1997)

(declare-fun c!737354 () Bool)

(assert (=> bm!301332 (= call!301337 (forall!8955 (ite c!737354 (toList!2754 (+!442 lt!1549405 lt!1549402)) (toList!2754 lt!1549740)) (ite c!737354 lambda!135945 lambda!135947)))))

(declare-fun e!2698172 () ListMap!1997)

(assert (=> b!4336216 (= e!2698172 (+!442 lt!1549405 lt!1549402))))

(declare-fun lt!1549735 () Unit!68567)

(declare-fun call!301339 () Unit!68567)

(assert (=> b!4336216 (= lt!1549735 call!301339)))

(assert (=> b!4336216 call!301337))

(declare-fun lt!1549738 () Unit!68567)

(assert (=> b!4336216 (= lt!1549738 lt!1549735)))

(declare-fun call!301338 () Bool)

(assert (=> b!4336216 call!301338))

(declare-fun lt!1549743 () Unit!68567)

(declare-fun Unit!68619 () Unit!68567)

(assert (=> b!4336216 (= lt!1549743 Unit!68619)))

(declare-fun b!4336217 () Bool)

(declare-fun res!1778558 () Bool)

(declare-fun e!2698170 () Bool)

(assert (=> b!4336217 (=> (not res!1778558) (not e!2698170))))

(assert (=> b!4336217 (= res!1778558 (forall!8955 (toList!2754 (+!442 lt!1549405 lt!1549402)) lambda!135948))))

(declare-fun b!4336218 () Bool)

(assert (=> b!4336218 (= e!2698170 (invariantList!628 (toList!2754 lt!1549741)))))

(declare-fun bm!301333 () Bool)

(assert (=> bm!301333 (= call!301339 (lemmaContainsAllItsOwnKeys!21 (+!442 lt!1549405 lt!1549402)))))

(declare-fun b!4336219 () Bool)

(declare-fun e!2698171 () Bool)

(assert (=> b!4336219 (= e!2698171 (forall!8955 (toList!2754 (+!442 lt!1549405 lt!1549402)) lambda!135947))))

(assert (=> b!4336220 (= e!2698172 lt!1549752)))

(assert (=> b!4336220 (= lt!1549740 (+!442 (+!442 lt!1549405 lt!1549402) (h!54174 lt!1549398)))))

(assert (=> b!4336220 (= lt!1549752 (addToMapMapFromBucket!93 (t!355713 lt!1549398) (+!442 (+!442 lt!1549405 lt!1549402) (h!54174 lt!1549398))))))

(declare-fun lt!1549751 () Unit!68567)

(assert (=> b!4336220 (= lt!1549751 call!301339)))

(assert (=> b!4336220 (forall!8955 (toList!2754 (+!442 lt!1549405 lt!1549402)) lambda!135946)))

(declare-fun lt!1549749 () Unit!68567)

(assert (=> b!4336220 (= lt!1549749 lt!1549751)))

(assert (=> b!4336220 call!301337))

(declare-fun lt!1549750 () Unit!68567)

(declare-fun Unit!68620 () Unit!68567)

(assert (=> b!4336220 (= lt!1549750 Unit!68620)))

(assert (=> b!4336220 call!301338))

(declare-fun lt!1549737 () Unit!68567)

(declare-fun Unit!68621 () Unit!68567)

(assert (=> b!4336220 (= lt!1549737 Unit!68621)))

(declare-fun lt!1549747 () Unit!68567)

(declare-fun Unit!68622 () Unit!68567)

(assert (=> b!4336220 (= lt!1549747 Unit!68622)))

(declare-fun lt!1549744 () Unit!68567)

(assert (=> b!4336220 (= lt!1549744 (forallContained!1605 (toList!2754 lt!1549740) lambda!135947 (h!54174 lt!1549398)))))

(assert (=> b!4336220 (contains!10734 lt!1549740 (_1!27249 (h!54174 lt!1549398)))))

(declare-fun lt!1549753 () Unit!68567)

(declare-fun Unit!68623 () Unit!68567)

(assert (=> b!4336220 (= lt!1549753 Unit!68623)))

(assert (=> b!4336220 (contains!10734 lt!1549752 (_1!27249 (h!54174 lt!1549398)))))

(declare-fun lt!1549739 () Unit!68567)

(declare-fun Unit!68624 () Unit!68567)

(assert (=> b!4336220 (= lt!1549739 Unit!68624)))

(assert (=> b!4336220 (forall!8955 lt!1549398 lambda!135947)))

(declare-fun lt!1549734 () Unit!68567)

(declare-fun Unit!68625 () Unit!68567)

(assert (=> b!4336220 (= lt!1549734 Unit!68625)))

(assert (=> b!4336220 (forall!8955 (toList!2754 lt!1549740) lambda!135947)))

(declare-fun lt!1549736 () Unit!68567)

(declare-fun Unit!68626 () Unit!68567)

(assert (=> b!4336220 (= lt!1549736 Unit!68626)))

(declare-fun lt!1549748 () Unit!68567)

(declare-fun Unit!68627 () Unit!68567)

(assert (=> b!4336220 (= lt!1549748 Unit!68627)))

(declare-fun lt!1549746 () Unit!68567)

(assert (=> b!4336220 (= lt!1549746 (addForallContainsKeyThenBeforeAdding!21 (+!442 lt!1549405 lt!1549402) lt!1549752 (_1!27249 (h!54174 lt!1549398)) (_2!27249 (h!54174 lt!1549398))))))

(assert (=> b!4336220 (forall!8955 (toList!2754 (+!442 lt!1549405 lt!1549402)) lambda!135947)))

(declare-fun lt!1549742 () Unit!68567)

(assert (=> b!4336220 (= lt!1549742 lt!1549746)))

(assert (=> b!4336220 (forall!8955 (toList!2754 (+!442 lt!1549405 lt!1549402)) lambda!135947)))

(declare-fun lt!1549754 () Unit!68567)

(declare-fun Unit!68628 () Unit!68567)

(assert (=> b!4336220 (= lt!1549754 Unit!68628)))

(declare-fun res!1778559 () Bool)

(assert (=> b!4336220 (= res!1778559 (forall!8955 lt!1549398 lambda!135947))))

(assert (=> b!4336220 (=> (not res!1778559) (not e!2698171))))

(assert (=> b!4336220 e!2698171))

(declare-fun lt!1549745 () Unit!68567)

(declare-fun Unit!68629 () Unit!68567)

(assert (=> b!4336220 (= lt!1549745 Unit!68629)))

(declare-fun bm!301334 () Bool)

(assert (=> bm!301334 (= call!301338 (forall!8955 (ite c!737354 (toList!2754 (+!442 lt!1549405 lt!1549402)) (t!355713 lt!1549398)) (ite c!737354 lambda!135945 lambda!135947)))))

(assert (=> d!1274578 e!2698170))

(declare-fun res!1778560 () Bool)

(assert (=> d!1274578 (=> (not res!1778560) (not e!2698170))))

(assert (=> d!1274578 (= res!1778560 (forall!8955 lt!1549398 lambda!135948))))

(assert (=> d!1274578 (= lt!1549741 e!2698172)))

(assert (=> d!1274578 (= c!737354 ((_ is Nil!48673) lt!1549398))))

(assert (=> d!1274578 (noDuplicateKeys!385 lt!1549398)))

(assert (=> d!1274578 (= (addToMapMapFromBucket!93 lt!1549398 (+!442 lt!1549405 lt!1549402)) lt!1549741)))

(assert (= (and d!1274578 c!737354) b!4336216))

(assert (= (and d!1274578 (not c!737354)) b!4336220))

(assert (= (and b!4336220 res!1778559) b!4336219))

(assert (= (or b!4336216 b!4336220) bm!301333))

(assert (= (or b!4336216 b!4336220) bm!301332))

(assert (= (or b!4336216 b!4336220) bm!301334))

(assert (= (and d!1274578 res!1778560) b!4336217))

(assert (= (and b!4336217 res!1778558) b!4336218))

(declare-fun m!4931499 () Bool)

(assert (=> bm!301334 m!4931499))

(declare-fun m!4931501 () Bool)

(assert (=> d!1274578 m!4931501))

(assert (=> d!1274578 m!4931469))

(declare-fun m!4931503 () Bool)

(assert (=> b!4336220 m!4931503))

(declare-fun m!4931505 () Bool)

(assert (=> b!4336220 m!4931505))

(declare-fun m!4931507 () Bool)

(assert (=> b!4336220 m!4931507))

(declare-fun m!4931509 () Bool)

(assert (=> b!4336220 m!4931509))

(declare-fun m!4931511 () Bool)

(assert (=> b!4336220 m!4931511))

(assert (=> b!4336220 m!4931511))

(assert (=> b!4336220 m!4931509))

(declare-fun m!4931513 () Bool)

(assert (=> b!4336220 m!4931513))

(assert (=> b!4336220 m!4931081))

(assert (=> b!4336220 m!4931503))

(declare-fun m!4931515 () Bool)

(assert (=> b!4336220 m!4931515))

(declare-fun m!4931517 () Bool)

(assert (=> b!4336220 m!4931517))

(assert (=> b!4336220 m!4931081))

(declare-fun m!4931519 () Bool)

(assert (=> b!4336220 m!4931519))

(declare-fun m!4931521 () Bool)

(assert (=> b!4336220 m!4931521))

(assert (=> b!4336219 m!4931509))

(assert (=> bm!301333 m!4931081))

(declare-fun m!4931523 () Bool)

(assert (=> bm!301333 m!4931523))

(declare-fun m!4931525 () Bool)

(assert (=> b!4336218 m!4931525))

(declare-fun m!4931527 () Bool)

(assert (=> b!4336217 m!4931527))

(declare-fun m!4931529 () Bool)

(assert (=> bm!301332 m!4931529))

(assert (=> b!4335972 d!1274578))

(declare-fun d!1274580 () Bool)

(declare-fun content!7606 (List!48797) (InoxSet tuple2!47910))

(assert (=> d!1274580 (= (eq!175 lt!1549392 (+!442 (addToMapMapFromBucket!93 lt!1549398 lt!1549405) lt!1549402)) (= (content!7606 (toList!2754 lt!1549392)) (content!7606 (toList!2754 (+!442 (addToMapMapFromBucket!93 lt!1549398 lt!1549405) lt!1549402)))))))

(declare-fun bs!608780 () Bool)

(assert (= bs!608780 d!1274580))

(declare-fun m!4931531 () Bool)

(assert (=> bs!608780 m!4931531))

(declare-fun m!4931533 () Bool)

(assert (=> bs!608780 m!4931533))

(assert (=> b!4335972 d!1274580))

(declare-fun bs!608781 () Bool)

(declare-fun b!4336221 () Bool)

(assert (= bs!608781 (and b!4336221 b!4336216)))

(declare-fun lambda!135949 () Int)

(assert (=> bs!608781 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135949 lambda!135945))))

(declare-fun bs!608782 () Bool)

(assert (= bs!608782 (and b!4336221 d!1274578)))

(assert (=> bs!608782 (= (= lt!1549405 lt!1549741) (= lambda!135949 lambda!135948))))

(declare-fun bs!608783 () Bool)

(assert (= bs!608783 (and b!4336221 b!4336220)))

(assert (=> bs!608783 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135949 lambda!135946))))

(assert (=> bs!608783 (= (= lt!1549405 lt!1549752) (= lambda!135949 lambda!135947))))

(declare-fun bs!608784 () Bool)

(assert (= bs!608784 (and b!4336221 b!4336213)))

(assert (=> bs!608784 (= lambda!135949 lambda!135942)))

(declare-fun bs!608785 () Bool)

(assert (= bs!608785 (and b!4336221 d!1274550)))

(assert (=> bs!608785 (= (= lt!1549405 lt!1549720) (= lambda!135949 lambda!135944))))

(assert (=> bs!608784 (= (= lt!1549405 lt!1549731) (= lambda!135949 lambda!135943))))

(declare-fun bs!608786 () Bool)

(assert (= bs!608786 (and b!4336221 b!4336209)))

(assert (=> bs!608786 (= lambda!135949 lambda!135941)))

(assert (=> b!4336221 true))

(declare-fun bs!608787 () Bool)

(declare-fun b!4336225 () Bool)

(assert (= bs!608787 (and b!4336225 b!4336216)))

(declare-fun lambda!135950 () Int)

(assert (=> bs!608787 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135950 lambda!135945))))

(declare-fun bs!608788 () Bool)

(assert (= bs!608788 (and b!4336225 d!1274578)))

(assert (=> bs!608788 (= (= lt!1549405 lt!1549741) (= lambda!135950 lambda!135948))))

(declare-fun bs!608789 () Bool)

(assert (= bs!608789 (and b!4336225 b!4336220)))

(assert (=> bs!608789 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135950 lambda!135946))))

(assert (=> bs!608789 (= (= lt!1549405 lt!1549752) (= lambda!135950 lambda!135947))))

(declare-fun bs!608790 () Bool)

(assert (= bs!608790 (and b!4336225 d!1274550)))

(assert (=> bs!608790 (= (= lt!1549405 lt!1549720) (= lambda!135950 lambda!135944))))

(declare-fun bs!608791 () Bool)

(assert (= bs!608791 (and b!4336225 b!4336213)))

(assert (=> bs!608791 (= (= lt!1549405 lt!1549731) (= lambda!135950 lambda!135943))))

(declare-fun bs!608792 () Bool)

(assert (= bs!608792 (and b!4336225 b!4336209)))

(assert (=> bs!608792 (= lambda!135950 lambda!135941)))

(assert (=> bs!608791 (= lambda!135950 lambda!135942)))

(declare-fun bs!608793 () Bool)

(assert (= bs!608793 (and b!4336225 b!4336221)))

(assert (=> bs!608793 (= lambda!135950 lambda!135949)))

(assert (=> b!4336225 true))

(declare-fun lambda!135951 () Int)

(declare-fun lt!1549773 () ListMap!1997)

(assert (=> b!4336225 (= (= lt!1549773 lt!1549405) (= lambda!135951 lambda!135950))))

(assert (=> bs!608787 (= (= lt!1549773 (+!442 lt!1549405 lt!1549402)) (= lambda!135951 lambda!135945))))

(assert (=> bs!608788 (= (= lt!1549773 lt!1549741) (= lambda!135951 lambda!135948))))

(assert (=> bs!608789 (= (= lt!1549773 (+!442 lt!1549405 lt!1549402)) (= lambda!135951 lambda!135946))))

(assert (=> bs!608789 (= (= lt!1549773 lt!1549752) (= lambda!135951 lambda!135947))))

(assert (=> bs!608790 (= (= lt!1549773 lt!1549720) (= lambda!135951 lambda!135944))))

(assert (=> bs!608791 (= (= lt!1549773 lt!1549731) (= lambda!135951 lambda!135943))))

(assert (=> bs!608792 (= (= lt!1549773 lt!1549405) (= lambda!135951 lambda!135941))))

(assert (=> bs!608791 (= (= lt!1549773 lt!1549405) (= lambda!135951 lambda!135942))))

(assert (=> bs!608793 (= (= lt!1549773 lt!1549405) (= lambda!135951 lambda!135949))))

(assert (=> b!4336225 true))

(declare-fun bs!608794 () Bool)

(declare-fun d!1274582 () Bool)

(assert (= bs!608794 (and d!1274582 b!4336225)))

(declare-fun lambda!135952 () Int)

(declare-fun lt!1549762 () ListMap!1997)

(assert (=> bs!608794 (= (= lt!1549762 lt!1549405) (= lambda!135952 lambda!135950))))

(declare-fun bs!608795 () Bool)

(assert (= bs!608795 (and d!1274582 b!4336216)))

(assert (=> bs!608795 (= (= lt!1549762 (+!442 lt!1549405 lt!1549402)) (= lambda!135952 lambda!135945))))

(declare-fun bs!608796 () Bool)

(assert (= bs!608796 (and d!1274582 d!1274578)))

(assert (=> bs!608796 (= (= lt!1549762 lt!1549741) (= lambda!135952 lambda!135948))))

(declare-fun bs!608797 () Bool)

(assert (= bs!608797 (and d!1274582 b!4336220)))

(assert (=> bs!608797 (= (= lt!1549762 (+!442 lt!1549405 lt!1549402)) (= lambda!135952 lambda!135946))))

(assert (=> bs!608797 (= (= lt!1549762 lt!1549752) (= lambda!135952 lambda!135947))))

(assert (=> bs!608794 (= (= lt!1549762 lt!1549773) (= lambda!135952 lambda!135951))))

(declare-fun bs!608798 () Bool)

(assert (= bs!608798 (and d!1274582 d!1274550)))

(assert (=> bs!608798 (= (= lt!1549762 lt!1549720) (= lambda!135952 lambda!135944))))

(declare-fun bs!608799 () Bool)

(assert (= bs!608799 (and d!1274582 b!4336213)))

(assert (=> bs!608799 (= (= lt!1549762 lt!1549731) (= lambda!135952 lambda!135943))))

(declare-fun bs!608800 () Bool)

(assert (= bs!608800 (and d!1274582 b!4336209)))

(assert (=> bs!608800 (= (= lt!1549762 lt!1549405) (= lambda!135952 lambda!135941))))

(assert (=> bs!608799 (= (= lt!1549762 lt!1549405) (= lambda!135952 lambda!135942))))

(declare-fun bs!608801 () Bool)

(assert (= bs!608801 (and d!1274582 b!4336221)))

(assert (=> bs!608801 (= (= lt!1549762 lt!1549405) (= lambda!135952 lambda!135949))))

(assert (=> d!1274582 true))

(declare-fun c!737355 () Bool)

(declare-fun call!301340 () Bool)

(declare-fun bm!301335 () Bool)

(declare-fun lt!1549761 () ListMap!1997)

(assert (=> bm!301335 (= call!301340 (forall!8955 (ite c!737355 (toList!2754 lt!1549405) (toList!2754 lt!1549761)) (ite c!737355 lambda!135949 lambda!135951)))))

(declare-fun e!2698175 () ListMap!1997)

(assert (=> b!4336221 (= e!2698175 lt!1549405)))

(declare-fun lt!1549756 () Unit!68567)

(declare-fun call!301342 () Unit!68567)

(assert (=> b!4336221 (= lt!1549756 call!301342)))

(assert (=> b!4336221 call!301340))

(declare-fun lt!1549759 () Unit!68567)

(assert (=> b!4336221 (= lt!1549759 lt!1549756)))

(declare-fun call!301341 () Bool)

(assert (=> b!4336221 call!301341))

(declare-fun lt!1549764 () Unit!68567)

(declare-fun Unit!68630 () Unit!68567)

(assert (=> b!4336221 (= lt!1549764 Unit!68630)))

(declare-fun b!4336222 () Bool)

(declare-fun res!1778561 () Bool)

(declare-fun e!2698173 () Bool)

(assert (=> b!4336222 (=> (not res!1778561) (not e!2698173))))

(assert (=> b!4336222 (= res!1778561 (forall!8955 (toList!2754 lt!1549405) lambda!135952))))

(declare-fun b!4336223 () Bool)

(assert (=> b!4336223 (= e!2698173 (invariantList!628 (toList!2754 lt!1549762)))))

(declare-fun bm!301336 () Bool)

(assert (=> bm!301336 (= call!301342 (lemmaContainsAllItsOwnKeys!21 lt!1549405))))

(declare-fun b!4336224 () Bool)

(declare-fun e!2698174 () Bool)

(assert (=> b!4336224 (= e!2698174 (forall!8955 (toList!2754 lt!1549405) lambda!135951))))

(assert (=> b!4336225 (= e!2698175 lt!1549773)))

(assert (=> b!4336225 (= lt!1549761 (+!442 lt!1549405 (h!54174 newBucket!200)))))

(assert (=> b!4336225 (= lt!1549773 (addToMapMapFromBucket!93 (t!355713 newBucket!200) (+!442 lt!1549405 (h!54174 newBucket!200))))))

(declare-fun lt!1549772 () Unit!68567)

(assert (=> b!4336225 (= lt!1549772 call!301342)))

(assert (=> b!4336225 (forall!8955 (toList!2754 lt!1549405) lambda!135950)))

(declare-fun lt!1549770 () Unit!68567)

(assert (=> b!4336225 (= lt!1549770 lt!1549772)))

(assert (=> b!4336225 call!301340))

(declare-fun lt!1549771 () Unit!68567)

(declare-fun Unit!68636 () Unit!68567)

(assert (=> b!4336225 (= lt!1549771 Unit!68636)))

(assert (=> b!4336225 call!301341))

(declare-fun lt!1549758 () Unit!68567)

(declare-fun Unit!68638 () Unit!68567)

(assert (=> b!4336225 (= lt!1549758 Unit!68638)))

(declare-fun lt!1549768 () Unit!68567)

(declare-fun Unit!68640 () Unit!68567)

(assert (=> b!4336225 (= lt!1549768 Unit!68640)))

(declare-fun lt!1549765 () Unit!68567)

(assert (=> b!4336225 (= lt!1549765 (forallContained!1605 (toList!2754 lt!1549761) lambda!135951 (h!54174 newBucket!200)))))

(assert (=> b!4336225 (contains!10734 lt!1549761 (_1!27249 (h!54174 newBucket!200)))))

(declare-fun lt!1549774 () Unit!68567)

(declare-fun Unit!68642 () Unit!68567)

(assert (=> b!4336225 (= lt!1549774 Unit!68642)))

(assert (=> b!4336225 (contains!10734 lt!1549773 (_1!27249 (h!54174 newBucket!200)))))

(declare-fun lt!1549760 () Unit!68567)

(declare-fun Unit!68643 () Unit!68567)

(assert (=> b!4336225 (= lt!1549760 Unit!68643)))

(assert (=> b!4336225 (forall!8955 newBucket!200 lambda!135951)))

(declare-fun lt!1549755 () Unit!68567)

(declare-fun Unit!68645 () Unit!68567)

(assert (=> b!4336225 (= lt!1549755 Unit!68645)))

(assert (=> b!4336225 (forall!8955 (toList!2754 lt!1549761) lambda!135951)))

(declare-fun lt!1549757 () Unit!68567)

(declare-fun Unit!68646 () Unit!68567)

(assert (=> b!4336225 (= lt!1549757 Unit!68646)))

(declare-fun lt!1549769 () Unit!68567)

(declare-fun Unit!68647 () Unit!68567)

(assert (=> b!4336225 (= lt!1549769 Unit!68647)))

(declare-fun lt!1549767 () Unit!68567)

(assert (=> b!4336225 (= lt!1549767 (addForallContainsKeyThenBeforeAdding!21 lt!1549405 lt!1549773 (_1!27249 (h!54174 newBucket!200)) (_2!27249 (h!54174 newBucket!200))))))

(assert (=> b!4336225 (forall!8955 (toList!2754 lt!1549405) lambda!135951)))

(declare-fun lt!1549763 () Unit!68567)

(assert (=> b!4336225 (= lt!1549763 lt!1549767)))

(assert (=> b!4336225 (forall!8955 (toList!2754 lt!1549405) lambda!135951)))

(declare-fun lt!1549775 () Unit!68567)

(declare-fun Unit!68649 () Unit!68567)

(assert (=> b!4336225 (= lt!1549775 Unit!68649)))

(declare-fun res!1778562 () Bool)

(assert (=> b!4336225 (= res!1778562 (forall!8955 newBucket!200 lambda!135951))))

(assert (=> b!4336225 (=> (not res!1778562) (not e!2698174))))

(assert (=> b!4336225 e!2698174))

(declare-fun lt!1549766 () Unit!68567)

(declare-fun Unit!68650 () Unit!68567)

(assert (=> b!4336225 (= lt!1549766 Unit!68650)))

(declare-fun bm!301337 () Bool)

(assert (=> bm!301337 (= call!301341 (forall!8955 (ite c!737355 (toList!2754 lt!1549405) (t!355713 newBucket!200)) (ite c!737355 lambda!135949 lambda!135951)))))

(assert (=> d!1274582 e!2698173))

(declare-fun res!1778563 () Bool)

(assert (=> d!1274582 (=> (not res!1778563) (not e!2698173))))

(assert (=> d!1274582 (= res!1778563 (forall!8955 newBucket!200 lambda!135952))))

(assert (=> d!1274582 (= lt!1549762 e!2698175)))

(assert (=> d!1274582 (= c!737355 ((_ is Nil!48673) newBucket!200))))

(assert (=> d!1274582 (noDuplicateKeys!385 newBucket!200)))

(assert (=> d!1274582 (= (addToMapMapFromBucket!93 newBucket!200 lt!1549405) lt!1549762)))

(assert (= (and d!1274582 c!737355) b!4336221))

(assert (= (and d!1274582 (not c!737355)) b!4336225))

(assert (= (and b!4336225 res!1778562) b!4336224))

(assert (= (or b!4336221 b!4336225) bm!301336))

(assert (= (or b!4336221 b!4336225) bm!301335))

(assert (= (or b!4336221 b!4336225) bm!301337))

(assert (= (and d!1274582 res!1778563) b!4336222))

(assert (= (and b!4336222 res!1778561) b!4336223))

(declare-fun m!4931535 () Bool)

(assert (=> bm!301337 m!4931535))

(declare-fun m!4931537 () Bool)

(assert (=> d!1274582 m!4931537))

(assert (=> d!1274582 m!4931109))

(declare-fun m!4931539 () Bool)

(assert (=> b!4336225 m!4931539))

(declare-fun m!4931541 () Bool)

(assert (=> b!4336225 m!4931541))

(declare-fun m!4931543 () Bool)

(assert (=> b!4336225 m!4931543))

(declare-fun m!4931545 () Bool)

(assert (=> b!4336225 m!4931545))

(declare-fun m!4931547 () Bool)

(assert (=> b!4336225 m!4931547))

(assert (=> b!4336225 m!4931547))

(assert (=> b!4336225 m!4931545))

(declare-fun m!4931549 () Bool)

(assert (=> b!4336225 m!4931549))

(assert (=> b!4336225 m!4931539))

(declare-fun m!4931551 () Bool)

(assert (=> b!4336225 m!4931551))

(declare-fun m!4931553 () Bool)

(assert (=> b!4336225 m!4931553))

(declare-fun m!4931555 () Bool)

(assert (=> b!4336225 m!4931555))

(declare-fun m!4931557 () Bool)

(assert (=> b!4336225 m!4931557))

(assert (=> b!4336224 m!4931545))

(assert (=> bm!301336 m!4931491))

(declare-fun m!4931559 () Bool)

(assert (=> b!4336223 m!4931559))

(declare-fun m!4931561 () Bool)

(assert (=> b!4336222 m!4931561))

(declare-fun m!4931563 () Bool)

(assert (=> bm!301335 m!4931563))

(assert (=> b!4335972 d!1274582))

(declare-fun bs!608802 () Bool)

(declare-fun d!1274584 () Bool)

(assert (= bs!608802 (and d!1274584 start!418200)))

(declare-fun lambda!135953 () Int)

(assert (=> bs!608802 (= lambda!135953 lambda!135851)))

(declare-fun bs!608803 () Bool)

(assert (= bs!608803 (and d!1274584 d!1274522)))

(assert (=> bs!608803 (not (= lambda!135953 lambda!135860))))

(declare-fun bs!608804 () Bool)

(assert (= bs!608804 (and d!1274584 d!1274534)))

(assert (=> bs!608804 (= lambda!135953 lambda!135867)))

(declare-fun lt!1549776 () ListMap!1997)

(assert (=> d!1274584 (invariantList!628 (toList!2754 lt!1549776))))

(declare-fun e!2698176 () ListMap!1997)

(assert (=> d!1274584 (= lt!1549776 e!2698176)))

(declare-fun c!737356 () Bool)

(assert (=> d!1274584 (= c!737356 ((_ is Cons!48674) (t!355714 (toList!2753 lm!1707))))))

(assert (=> d!1274584 (forall!8953 (t!355714 (toList!2753 lm!1707)) lambda!135953)))

(assert (=> d!1274584 (= (extractMap!444 (t!355714 (toList!2753 lm!1707))) lt!1549776)))

(declare-fun b!4336226 () Bool)

(assert (=> b!4336226 (= e!2698176 (addToMapMapFromBucket!93 (_2!27250 (h!54175 (t!355714 (toList!2753 lm!1707)))) (extractMap!444 (t!355714 (t!355714 (toList!2753 lm!1707))))))))

(declare-fun b!4336227 () Bool)

(assert (=> b!4336227 (= e!2698176 (ListMap!1998 Nil!48673))))

(assert (= (and d!1274584 c!737356) b!4336226))

(assert (= (and d!1274584 (not c!737356)) b!4336227))

(declare-fun m!4931565 () Bool)

(assert (=> d!1274584 m!4931565))

(declare-fun m!4931567 () Bool)

(assert (=> d!1274584 m!4931567))

(declare-fun m!4931569 () Bool)

(assert (=> b!4336226 m!4931569))

(assert (=> b!4336226 m!4931569))

(declare-fun m!4931571 () Bool)

(assert (=> b!4336226 m!4931571))

(assert (=> b!4335972 d!1274584))

(declare-fun d!1274586 () Bool)

(declare-fun e!2698179 () Bool)

(assert (=> d!1274586 e!2698179))

(declare-fun res!1778568 () Bool)

(assert (=> d!1274586 (=> (not res!1778568) (not e!2698179))))

(declare-fun lt!1549785 () ListMap!1997)

(assert (=> d!1274586 (= res!1778568 (contains!10734 lt!1549785 (_1!27249 lt!1549402)))))

(declare-fun lt!1549786 () List!48797)

(assert (=> d!1274586 (= lt!1549785 (ListMap!1998 lt!1549786))))

(declare-fun lt!1549787 () Unit!68567)

(declare-fun lt!1549788 () Unit!68567)

(assert (=> d!1274586 (= lt!1549787 lt!1549788)))

(assert (=> d!1274586 (= (getValueByKey!355 lt!1549786 (_1!27249 lt!1549402)) (Some!10368 (_2!27249 lt!1549402)))))

(declare-fun lemmaContainsTupThenGetReturnValue!137 (List!48797 K!10030 V!10276) Unit!68567)

(assert (=> d!1274586 (= lt!1549788 (lemmaContainsTupThenGetReturnValue!137 lt!1549786 (_1!27249 lt!1549402) (_2!27249 lt!1549402)))))

(declare-fun insertNoDuplicatedKeys!61 (List!48797 K!10030 V!10276) List!48797)

(assert (=> d!1274586 (= lt!1549786 (insertNoDuplicatedKeys!61 (toList!2754 lt!1549405) (_1!27249 lt!1549402) (_2!27249 lt!1549402)))))

(assert (=> d!1274586 (= (+!442 lt!1549405 lt!1549402) lt!1549785)))

(declare-fun b!4336232 () Bool)

(declare-fun res!1778569 () Bool)

(assert (=> b!4336232 (=> (not res!1778569) (not e!2698179))))

(assert (=> b!4336232 (= res!1778569 (= (getValueByKey!355 (toList!2754 lt!1549785) (_1!27249 lt!1549402)) (Some!10368 (_2!27249 lt!1549402))))))

(declare-fun b!4336233 () Bool)

(declare-fun contains!10738 (List!48797 tuple2!47910) Bool)

(assert (=> b!4336233 (= e!2698179 (contains!10738 (toList!2754 lt!1549785) lt!1549402))))

(assert (= (and d!1274586 res!1778568) b!4336232))

(assert (= (and b!4336232 res!1778569) b!4336233))

(declare-fun m!4931573 () Bool)

(assert (=> d!1274586 m!4931573))

(declare-fun m!4931575 () Bool)

(assert (=> d!1274586 m!4931575))

(declare-fun m!4931577 () Bool)

(assert (=> d!1274586 m!4931577))

(declare-fun m!4931579 () Bool)

(assert (=> d!1274586 m!4931579))

(declare-fun m!4931581 () Bool)

(assert (=> b!4336232 m!4931581))

(declare-fun m!4931583 () Bool)

(assert (=> b!4336233 m!4931583))

(assert (=> b!4335972 d!1274586))

(declare-fun d!1274588 () Bool)

(assert (=> d!1274588 (eq!175 (addToMapMapFromBucket!93 lt!1549398 (+!442 lt!1549405 (tuple2!47911 key!3918 newValue!99))) (+!442 (addToMapMapFromBucket!93 lt!1549398 lt!1549405) (tuple2!47911 key!3918 newValue!99)))))

(declare-fun lt!1549791 () Unit!68567)

(declare-fun choose!26541 (ListMap!1997 K!10030 V!10276 List!48797) Unit!68567)

(assert (=> d!1274588 (= lt!1549791 (choose!26541 lt!1549405 key!3918 newValue!99 lt!1549398))))

(assert (=> d!1274588 (not (containsKey!536 lt!1549398 key!3918))))

(assert (=> d!1274588 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!4 lt!1549405 key!3918 newValue!99 lt!1549398) lt!1549791)))

(declare-fun bs!608805 () Bool)

(assert (= bs!608805 d!1274588))

(declare-fun m!4931585 () Bool)

(assert (=> bs!608805 m!4931585))

(declare-fun m!4931587 () Bool)

(assert (=> bs!608805 m!4931587))

(declare-fun m!4931589 () Bool)

(assert (=> bs!608805 m!4931589))

(declare-fun m!4931591 () Bool)

(assert (=> bs!608805 m!4931591))

(assert (=> bs!608805 m!4931075))

(declare-fun m!4931593 () Bool)

(assert (=> bs!608805 m!4931593))

(assert (=> bs!608805 m!4931585))

(assert (=> bs!608805 m!4931593))

(assert (=> bs!608805 m!4931075))

(assert (=> bs!608805 m!4931587))

(declare-fun m!4931595 () Bool)

(assert (=> bs!608805 m!4931595))

(assert (=> b!4335972 d!1274588))

(declare-fun d!1274590 () Bool)

(declare-fun e!2698180 () Bool)

(assert (=> d!1274590 e!2698180))

(declare-fun res!1778570 () Bool)

(assert (=> d!1274590 (=> (not res!1778570) (not e!2698180))))

(declare-fun lt!1549792 () ListMap!1997)

(assert (=> d!1274590 (= res!1778570 (contains!10734 lt!1549792 (_1!27249 lt!1549402)))))

(declare-fun lt!1549793 () List!48797)

(assert (=> d!1274590 (= lt!1549792 (ListMap!1998 lt!1549793))))

(declare-fun lt!1549794 () Unit!68567)

(declare-fun lt!1549795 () Unit!68567)

(assert (=> d!1274590 (= lt!1549794 lt!1549795)))

(assert (=> d!1274590 (= (getValueByKey!355 lt!1549793 (_1!27249 lt!1549402)) (Some!10368 (_2!27249 lt!1549402)))))

(assert (=> d!1274590 (= lt!1549795 (lemmaContainsTupThenGetReturnValue!137 lt!1549793 (_1!27249 lt!1549402) (_2!27249 lt!1549402)))))

(assert (=> d!1274590 (= lt!1549793 (insertNoDuplicatedKeys!61 (toList!2754 (addToMapMapFromBucket!93 lt!1549398 lt!1549405)) (_1!27249 lt!1549402) (_2!27249 lt!1549402)))))

(assert (=> d!1274590 (= (+!442 (addToMapMapFromBucket!93 lt!1549398 lt!1549405) lt!1549402) lt!1549792)))

(declare-fun b!4336234 () Bool)

(declare-fun res!1778571 () Bool)

(assert (=> b!4336234 (=> (not res!1778571) (not e!2698180))))

(assert (=> b!4336234 (= res!1778571 (= (getValueByKey!355 (toList!2754 lt!1549792) (_1!27249 lt!1549402)) (Some!10368 (_2!27249 lt!1549402))))))

(declare-fun b!4336235 () Bool)

(assert (=> b!4336235 (= e!2698180 (contains!10738 (toList!2754 lt!1549792) lt!1549402))))

(assert (= (and d!1274590 res!1778570) b!4336234))

(assert (= (and b!4336234 res!1778571) b!4336235))

(declare-fun m!4931597 () Bool)

(assert (=> d!1274590 m!4931597))

(declare-fun m!4931599 () Bool)

(assert (=> d!1274590 m!4931599))

(declare-fun m!4931601 () Bool)

(assert (=> d!1274590 m!4931601))

(declare-fun m!4931603 () Bool)

(assert (=> d!1274590 m!4931603))

(declare-fun m!4931605 () Bool)

(assert (=> b!4336234 m!4931605))

(declare-fun m!4931607 () Bool)

(assert (=> b!4336235 m!4931607))

(assert (=> b!4335972 d!1274590))

(declare-fun bs!608806 () Bool)

(declare-fun d!1274592 () Bool)

(assert (= bs!608806 (and d!1274592 start!418200)))

(declare-fun lambda!135954 () Int)

(assert (=> bs!608806 (= lambda!135954 lambda!135851)))

(declare-fun bs!608807 () Bool)

(assert (= bs!608807 (and d!1274592 d!1274522)))

(assert (=> bs!608807 (not (= lambda!135954 lambda!135860))))

(declare-fun bs!608808 () Bool)

(assert (= bs!608808 (and d!1274592 d!1274534)))

(assert (=> bs!608808 (= lambda!135954 lambda!135867)))

(declare-fun bs!608809 () Bool)

(assert (= bs!608809 (and d!1274592 d!1274584)))

(assert (=> bs!608809 (= lambda!135954 lambda!135953)))

(declare-fun lt!1549796 () ListMap!1997)

(assert (=> d!1274592 (invariantList!628 (toList!2754 lt!1549796))))

(declare-fun e!2698181 () ListMap!1997)

(assert (=> d!1274592 (= lt!1549796 e!2698181)))

(declare-fun c!737357 () Bool)

(assert (=> d!1274592 (= c!737357 ((_ is Cons!48674) (toList!2753 lt!1549400)))))

(assert (=> d!1274592 (forall!8953 (toList!2753 lt!1549400) lambda!135954)))

(assert (=> d!1274592 (= (extractMap!444 (toList!2753 lt!1549400)) lt!1549796)))

(declare-fun b!4336236 () Bool)

(assert (=> b!4336236 (= e!2698181 (addToMapMapFromBucket!93 (_2!27250 (h!54175 (toList!2753 lt!1549400))) (extractMap!444 (t!355714 (toList!2753 lt!1549400)))))))

(declare-fun b!4336237 () Bool)

(assert (=> b!4336237 (= e!2698181 (ListMap!1998 Nil!48673))))

(assert (= (and d!1274592 c!737357) b!4336236))

(assert (= (and d!1274592 (not c!737357)) b!4336237))

(declare-fun m!4931609 () Bool)

(assert (=> d!1274592 m!4931609))

(declare-fun m!4931611 () Bool)

(assert (=> d!1274592 m!4931611))

(declare-fun m!4931613 () Bool)

(assert (=> b!4336236 m!4931613))

(assert (=> b!4336236 m!4931613))

(declare-fun m!4931615 () Bool)

(assert (=> b!4336236 m!4931615))

(assert (=> b!4335972 d!1274592))

(declare-fun d!1274594 () Bool)

(declare-fun res!1778576 () Bool)

(declare-fun e!2698186 () Bool)

(assert (=> d!1274594 (=> res!1778576 e!2698186)))

(assert (=> d!1274594 (= res!1778576 (not ((_ is Cons!48673) lt!1549396)))))

(assert (=> d!1274594 (= (noDuplicateKeys!385 lt!1549396) e!2698186)))

(declare-fun b!4336242 () Bool)

(declare-fun e!2698187 () Bool)

(assert (=> b!4336242 (= e!2698186 e!2698187)))

(declare-fun res!1778577 () Bool)

(assert (=> b!4336242 (=> (not res!1778577) (not e!2698187))))

(assert (=> b!4336242 (= res!1778577 (not (containsKey!536 (t!355713 lt!1549396) (_1!27249 (h!54174 lt!1549396)))))))

(declare-fun b!4336243 () Bool)

(assert (=> b!4336243 (= e!2698187 (noDuplicateKeys!385 (t!355713 lt!1549396)))))

(assert (= (and d!1274594 (not res!1778576)) b!4336242))

(assert (= (and b!4336242 res!1778577) b!4336243))

(declare-fun m!4931617 () Bool)

(assert (=> b!4336242 m!4931617))

(declare-fun m!4931619 () Bool)

(assert (=> b!4336243 m!4931619))

(assert (=> b!4335972 d!1274594))

(declare-fun bs!608810 () Bool)

(declare-fun b!4336244 () Bool)

(assert (= bs!608810 (and b!4336244 d!1274582)))

(declare-fun lambda!135955 () Int)

(assert (=> bs!608810 (= (= lt!1549405 lt!1549762) (= lambda!135955 lambda!135952))))

(declare-fun bs!608811 () Bool)

(assert (= bs!608811 (and b!4336244 b!4336225)))

(assert (=> bs!608811 (= lambda!135955 lambda!135950)))

(declare-fun bs!608812 () Bool)

(assert (= bs!608812 (and b!4336244 b!4336216)))

(assert (=> bs!608812 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135955 lambda!135945))))

(declare-fun bs!608813 () Bool)

(assert (= bs!608813 (and b!4336244 d!1274578)))

(assert (=> bs!608813 (= (= lt!1549405 lt!1549741) (= lambda!135955 lambda!135948))))

(declare-fun bs!608814 () Bool)

(assert (= bs!608814 (and b!4336244 b!4336220)))

(assert (=> bs!608814 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135955 lambda!135946))))

(assert (=> bs!608814 (= (= lt!1549405 lt!1549752) (= lambda!135955 lambda!135947))))

(assert (=> bs!608811 (= (= lt!1549405 lt!1549773) (= lambda!135955 lambda!135951))))

(declare-fun bs!608815 () Bool)

(assert (= bs!608815 (and b!4336244 d!1274550)))

(assert (=> bs!608815 (= (= lt!1549405 lt!1549720) (= lambda!135955 lambda!135944))))

(declare-fun bs!608816 () Bool)

(assert (= bs!608816 (and b!4336244 b!4336213)))

(assert (=> bs!608816 (= (= lt!1549405 lt!1549731) (= lambda!135955 lambda!135943))))

(declare-fun bs!608817 () Bool)

(assert (= bs!608817 (and b!4336244 b!4336209)))

(assert (=> bs!608817 (= lambda!135955 lambda!135941)))

(assert (=> bs!608816 (= lambda!135955 lambda!135942)))

(declare-fun bs!608818 () Bool)

(assert (= bs!608818 (and b!4336244 b!4336221)))

(assert (=> bs!608818 (= lambda!135955 lambda!135949)))

(assert (=> b!4336244 true))

(declare-fun bs!608819 () Bool)

(declare-fun b!4336248 () Bool)

(assert (= bs!608819 (and b!4336248 d!1274582)))

(declare-fun lambda!135956 () Int)

(assert (=> bs!608819 (= (= lt!1549405 lt!1549762) (= lambda!135956 lambda!135952))))

(declare-fun bs!608820 () Bool)

(assert (= bs!608820 (and b!4336248 b!4336225)))

(assert (=> bs!608820 (= lambda!135956 lambda!135950)))

(declare-fun bs!608821 () Bool)

(assert (= bs!608821 (and b!4336248 b!4336216)))

(assert (=> bs!608821 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135956 lambda!135945))))

(declare-fun bs!608822 () Bool)

(assert (= bs!608822 (and b!4336248 d!1274578)))

(assert (=> bs!608822 (= (= lt!1549405 lt!1549741) (= lambda!135956 lambda!135948))))

(declare-fun bs!608823 () Bool)

(assert (= bs!608823 (and b!4336248 b!4336244)))

(assert (=> bs!608823 (= lambda!135956 lambda!135955)))

(declare-fun bs!608824 () Bool)

(assert (= bs!608824 (and b!4336248 b!4336220)))

(assert (=> bs!608824 (= (= lt!1549405 (+!442 lt!1549405 lt!1549402)) (= lambda!135956 lambda!135946))))

(assert (=> bs!608824 (= (= lt!1549405 lt!1549752) (= lambda!135956 lambda!135947))))

(assert (=> bs!608820 (= (= lt!1549405 lt!1549773) (= lambda!135956 lambda!135951))))

(declare-fun bs!608825 () Bool)

(assert (= bs!608825 (and b!4336248 d!1274550)))

(assert (=> bs!608825 (= (= lt!1549405 lt!1549720) (= lambda!135956 lambda!135944))))

(declare-fun bs!608826 () Bool)

(assert (= bs!608826 (and b!4336248 b!4336213)))

(assert (=> bs!608826 (= (= lt!1549405 lt!1549731) (= lambda!135956 lambda!135943))))

(declare-fun bs!608827 () Bool)

(assert (= bs!608827 (and b!4336248 b!4336209)))

(assert (=> bs!608827 (= lambda!135956 lambda!135941)))

(assert (=> bs!608826 (= lambda!135956 lambda!135942)))

(declare-fun bs!608828 () Bool)

(assert (= bs!608828 (and b!4336248 b!4336221)))

(assert (=> bs!608828 (= lambda!135956 lambda!135949)))

(assert (=> b!4336248 true))

(declare-fun lambda!135957 () Int)

(declare-fun lt!1549815 () ListMap!1997)

(assert (=> bs!608819 (= (= lt!1549815 lt!1549762) (= lambda!135957 lambda!135952))))

(assert (=> bs!608820 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135950))))

(assert (=> bs!608821 (= (= lt!1549815 (+!442 lt!1549405 lt!1549402)) (= lambda!135957 lambda!135945))))

(assert (=> bs!608822 (= (= lt!1549815 lt!1549741) (= lambda!135957 lambda!135948))))

(assert (=> bs!608823 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135955))))

(assert (=> bs!608824 (= (= lt!1549815 (+!442 lt!1549405 lt!1549402)) (= lambda!135957 lambda!135946))))

(assert (=> bs!608824 (= (= lt!1549815 lt!1549752) (= lambda!135957 lambda!135947))))

(assert (=> bs!608820 (= (= lt!1549815 lt!1549773) (= lambda!135957 lambda!135951))))

(assert (=> bs!608825 (= (= lt!1549815 lt!1549720) (= lambda!135957 lambda!135944))))

(assert (=> bs!608826 (= (= lt!1549815 lt!1549731) (= lambda!135957 lambda!135943))))

(assert (=> bs!608827 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135941))))

(assert (=> b!4336248 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135956))))

(assert (=> bs!608826 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135942))))

(assert (=> bs!608828 (= (= lt!1549815 lt!1549405) (= lambda!135957 lambda!135949))))

(assert (=> b!4336248 true))

(declare-fun bs!608829 () Bool)

(declare-fun d!1274596 () Bool)

(assert (= bs!608829 (and d!1274596 d!1274582)))

(declare-fun lt!1549804 () ListMap!1997)

(declare-fun lambda!135958 () Int)

(assert (=> bs!608829 (= (= lt!1549804 lt!1549762) (= lambda!135958 lambda!135952))))

(declare-fun bs!608830 () Bool)

(assert (= bs!608830 (and d!1274596 b!4336225)))

(assert (=> bs!608830 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135950))))

(declare-fun bs!608831 () Bool)

(assert (= bs!608831 (and d!1274596 b!4336216)))

(assert (=> bs!608831 (= (= lt!1549804 (+!442 lt!1549405 lt!1549402)) (= lambda!135958 lambda!135945))))

(declare-fun bs!608832 () Bool)

(assert (= bs!608832 (and d!1274596 d!1274578)))

(assert (=> bs!608832 (= (= lt!1549804 lt!1549741) (= lambda!135958 lambda!135948))))

(declare-fun bs!608833 () Bool)

(assert (= bs!608833 (and d!1274596 b!4336244)))

(assert (=> bs!608833 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135955))))

(declare-fun bs!608834 () Bool)

(assert (= bs!608834 (and d!1274596 b!4336220)))

(assert (=> bs!608834 (= (= lt!1549804 (+!442 lt!1549405 lt!1549402)) (= lambda!135958 lambda!135946))))

(assert (=> bs!608834 (= (= lt!1549804 lt!1549752) (= lambda!135958 lambda!135947))))

(assert (=> bs!608830 (= (= lt!1549804 lt!1549773) (= lambda!135958 lambda!135951))))

(declare-fun bs!608835 () Bool)

(assert (= bs!608835 (and d!1274596 d!1274550)))

(assert (=> bs!608835 (= (= lt!1549804 lt!1549720) (= lambda!135958 lambda!135944))))

(declare-fun bs!608836 () Bool)

(assert (= bs!608836 (and d!1274596 b!4336213)))

(assert (=> bs!608836 (= (= lt!1549804 lt!1549731) (= lambda!135958 lambda!135943))))

(declare-fun bs!608837 () Bool)

(assert (= bs!608837 (and d!1274596 b!4336209)))

(assert (=> bs!608837 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135941))))

(declare-fun bs!608838 () Bool)

(assert (= bs!608838 (and d!1274596 b!4336248)))

(assert (=> bs!608838 (= (= lt!1549804 lt!1549815) (= lambda!135958 lambda!135957))))

(assert (=> bs!608838 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135956))))

(assert (=> bs!608836 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135942))))

(declare-fun bs!608839 () Bool)

(assert (= bs!608839 (and d!1274596 b!4336221)))

(assert (=> bs!608839 (= (= lt!1549804 lt!1549405) (= lambda!135958 lambda!135949))))

(assert (=> d!1274596 true))

(declare-fun bm!301338 () Bool)

(declare-fun c!737358 () Bool)

(declare-fun call!301343 () Bool)

(declare-fun lt!1549803 () ListMap!1997)

(assert (=> bm!301338 (= call!301343 (forall!8955 (ite c!737358 (toList!2754 lt!1549405) (toList!2754 lt!1549803)) (ite c!737358 lambda!135955 lambda!135957)))))

(declare-fun e!2698190 () ListMap!1997)

(assert (=> b!4336244 (= e!2698190 lt!1549405)))

(declare-fun lt!1549798 () Unit!68567)

(declare-fun call!301345 () Unit!68567)

(assert (=> b!4336244 (= lt!1549798 call!301345)))

(assert (=> b!4336244 call!301343))

(declare-fun lt!1549801 () Unit!68567)

(assert (=> b!4336244 (= lt!1549801 lt!1549798)))

(declare-fun call!301344 () Bool)

(assert (=> b!4336244 call!301344))

(declare-fun lt!1549806 () Unit!68567)

(declare-fun Unit!68652 () Unit!68567)

(assert (=> b!4336244 (= lt!1549806 Unit!68652)))

(declare-fun b!4336245 () Bool)

(declare-fun res!1778578 () Bool)

(declare-fun e!2698188 () Bool)

(assert (=> b!4336245 (=> (not res!1778578) (not e!2698188))))

(assert (=> b!4336245 (= res!1778578 (forall!8955 (toList!2754 lt!1549405) lambda!135958))))

(declare-fun b!4336246 () Bool)

(assert (=> b!4336246 (= e!2698188 (invariantList!628 (toList!2754 lt!1549804)))))

(declare-fun bm!301339 () Bool)

(assert (=> bm!301339 (= call!301345 (lemmaContainsAllItsOwnKeys!21 lt!1549405))))

(declare-fun b!4336247 () Bool)

(declare-fun e!2698189 () Bool)

(assert (=> b!4336247 (= e!2698189 (forall!8955 (toList!2754 lt!1549405) lambda!135957))))

(assert (=> b!4336248 (= e!2698190 lt!1549815)))

(assert (=> b!4336248 (= lt!1549803 (+!442 lt!1549405 (h!54174 lt!1549406)))))

(assert (=> b!4336248 (= lt!1549815 (addToMapMapFromBucket!93 (t!355713 lt!1549406) (+!442 lt!1549405 (h!54174 lt!1549406))))))

(declare-fun lt!1549814 () Unit!68567)

(assert (=> b!4336248 (= lt!1549814 call!301345)))

(assert (=> b!4336248 (forall!8955 (toList!2754 lt!1549405) lambda!135956)))

(declare-fun lt!1549812 () Unit!68567)

(assert (=> b!4336248 (= lt!1549812 lt!1549814)))

(assert (=> b!4336248 call!301343))

(declare-fun lt!1549813 () Unit!68567)

(declare-fun Unit!68653 () Unit!68567)

(assert (=> b!4336248 (= lt!1549813 Unit!68653)))

(assert (=> b!4336248 call!301344))

(declare-fun lt!1549800 () Unit!68567)

(declare-fun Unit!68654 () Unit!68567)

(assert (=> b!4336248 (= lt!1549800 Unit!68654)))

(declare-fun lt!1549810 () Unit!68567)

(declare-fun Unit!68655 () Unit!68567)

(assert (=> b!4336248 (= lt!1549810 Unit!68655)))

(declare-fun lt!1549807 () Unit!68567)

(assert (=> b!4336248 (= lt!1549807 (forallContained!1605 (toList!2754 lt!1549803) lambda!135957 (h!54174 lt!1549406)))))

(assert (=> b!4336248 (contains!10734 lt!1549803 (_1!27249 (h!54174 lt!1549406)))))

(declare-fun lt!1549816 () Unit!68567)

(declare-fun Unit!68656 () Unit!68567)

(assert (=> b!4336248 (= lt!1549816 Unit!68656)))

(assert (=> b!4336248 (contains!10734 lt!1549815 (_1!27249 (h!54174 lt!1549406)))))

(declare-fun lt!1549802 () Unit!68567)

(declare-fun Unit!68657 () Unit!68567)

(assert (=> b!4336248 (= lt!1549802 Unit!68657)))

(assert (=> b!4336248 (forall!8955 lt!1549406 lambda!135957)))

(declare-fun lt!1549797 () Unit!68567)

(declare-fun Unit!68658 () Unit!68567)

(assert (=> b!4336248 (= lt!1549797 Unit!68658)))

(assert (=> b!4336248 (forall!8955 (toList!2754 lt!1549803) lambda!135957)))

(declare-fun lt!1549799 () Unit!68567)

(declare-fun Unit!68659 () Unit!68567)

(assert (=> b!4336248 (= lt!1549799 Unit!68659)))

(declare-fun lt!1549811 () Unit!68567)

(declare-fun Unit!68660 () Unit!68567)

(assert (=> b!4336248 (= lt!1549811 Unit!68660)))

(declare-fun lt!1549809 () Unit!68567)

(assert (=> b!4336248 (= lt!1549809 (addForallContainsKeyThenBeforeAdding!21 lt!1549405 lt!1549815 (_1!27249 (h!54174 lt!1549406)) (_2!27249 (h!54174 lt!1549406))))))

(assert (=> b!4336248 (forall!8955 (toList!2754 lt!1549405) lambda!135957)))

(declare-fun lt!1549805 () Unit!68567)

(assert (=> b!4336248 (= lt!1549805 lt!1549809)))

(assert (=> b!4336248 (forall!8955 (toList!2754 lt!1549405) lambda!135957)))

(declare-fun lt!1549817 () Unit!68567)

(declare-fun Unit!68661 () Unit!68567)

(assert (=> b!4336248 (= lt!1549817 Unit!68661)))

(declare-fun res!1778579 () Bool)

(assert (=> b!4336248 (= res!1778579 (forall!8955 lt!1549406 lambda!135957))))

(assert (=> b!4336248 (=> (not res!1778579) (not e!2698189))))

(assert (=> b!4336248 e!2698189))

(declare-fun lt!1549808 () Unit!68567)

(declare-fun Unit!68662 () Unit!68567)

(assert (=> b!4336248 (= lt!1549808 Unit!68662)))

(declare-fun bm!301340 () Bool)

(assert (=> bm!301340 (= call!301344 (forall!8955 (ite c!737358 (toList!2754 lt!1549405) (t!355713 lt!1549406)) (ite c!737358 lambda!135955 lambda!135957)))))

(assert (=> d!1274596 e!2698188))

(declare-fun res!1778580 () Bool)

(assert (=> d!1274596 (=> (not res!1778580) (not e!2698188))))

(assert (=> d!1274596 (= res!1778580 (forall!8955 lt!1549406 lambda!135958))))

(assert (=> d!1274596 (= lt!1549804 e!2698190)))

(assert (=> d!1274596 (= c!737358 ((_ is Nil!48673) lt!1549406))))

(assert (=> d!1274596 (noDuplicateKeys!385 lt!1549406)))

(assert (=> d!1274596 (= (addToMapMapFromBucket!93 lt!1549406 lt!1549405) lt!1549804)))

(assert (= (and d!1274596 c!737358) b!4336244))

(assert (= (and d!1274596 (not c!737358)) b!4336248))

(assert (= (and b!4336248 res!1778579) b!4336247))

(assert (= (or b!4336244 b!4336248) bm!301339))

(assert (= (or b!4336244 b!4336248) bm!301338))

(assert (= (or b!4336244 b!4336248) bm!301340))

(assert (= (and d!1274596 res!1778580) b!4336245))

(assert (= (and b!4336245 res!1778578) b!4336246))

(declare-fun m!4931621 () Bool)

(assert (=> bm!301340 m!4931621))

(declare-fun m!4931623 () Bool)

(assert (=> d!1274596 m!4931623))

(declare-fun m!4931625 () Bool)

(assert (=> d!1274596 m!4931625))

(declare-fun m!4931627 () Bool)

(assert (=> b!4336248 m!4931627))

(declare-fun m!4931629 () Bool)

(assert (=> b!4336248 m!4931629))

(declare-fun m!4931631 () Bool)

(assert (=> b!4336248 m!4931631))

(declare-fun m!4931633 () Bool)

(assert (=> b!4336248 m!4931633))

(declare-fun m!4931635 () Bool)

(assert (=> b!4336248 m!4931635))

(assert (=> b!4336248 m!4931635))

(assert (=> b!4336248 m!4931633))

(declare-fun m!4931637 () Bool)

(assert (=> b!4336248 m!4931637))

(assert (=> b!4336248 m!4931627))

(declare-fun m!4931639 () Bool)

(assert (=> b!4336248 m!4931639))

(declare-fun m!4931641 () Bool)

(assert (=> b!4336248 m!4931641))

(declare-fun m!4931643 () Bool)

(assert (=> b!4336248 m!4931643))

(declare-fun m!4931645 () Bool)

(assert (=> b!4336248 m!4931645))

(assert (=> b!4336247 m!4931633))

(assert (=> bm!301339 m!4931491))

(declare-fun m!4931647 () Bool)

(assert (=> b!4336246 m!4931647))

(declare-fun m!4931649 () Bool)

(assert (=> b!4336245 m!4931649))

(declare-fun m!4931651 () Bool)

(assert (=> bm!301338 m!4931651))

(assert (=> b!4335972 d!1274596))

(assert (=> b!4335961 d!1274546))

(declare-fun d!1274598 () Bool)

(declare-fun e!2698193 () Bool)

(assert (=> d!1274598 e!2698193))

(declare-fun res!1778586 () Bool)

(assert (=> d!1274598 (=> (not res!1778586) (not e!2698193))))

(declare-fun lt!1549826 () ListLongMap!1403)

(assert (=> d!1274598 (= res!1778586 (contains!10733 lt!1549826 (_1!27250 lt!1549404)))))

(declare-fun lt!1549827 () List!48798)

(assert (=> d!1274598 (= lt!1549826 (ListLongMap!1404 lt!1549827))))

(declare-fun lt!1549828 () Unit!68567)

(declare-fun lt!1549829 () Unit!68567)

(assert (=> d!1274598 (= lt!1549828 lt!1549829)))

(assert (=> d!1274598 (= (getValueByKey!354 lt!1549827 (_1!27250 lt!1549404)) (Some!10367 (_2!27250 lt!1549404)))))

(declare-fun lemmaContainsTupThenGetReturnValue!138 (List!48798 (_ BitVec 64) List!48797) Unit!68567)

(assert (=> d!1274598 (= lt!1549829 (lemmaContainsTupThenGetReturnValue!138 lt!1549827 (_1!27250 lt!1549404) (_2!27250 lt!1549404)))))

(declare-fun insertStrictlySorted!85 (List!48798 (_ BitVec 64) List!48797) List!48798)

(assert (=> d!1274598 (= lt!1549827 (insertStrictlySorted!85 (toList!2753 lm!1707) (_1!27250 lt!1549404) (_2!27250 lt!1549404)))))

(assert (=> d!1274598 (= (+!441 lm!1707 lt!1549404) lt!1549826)))

(declare-fun b!4336253 () Bool)

(declare-fun res!1778585 () Bool)

(assert (=> b!4336253 (=> (not res!1778585) (not e!2698193))))

(assert (=> b!4336253 (= res!1778585 (= (getValueByKey!354 (toList!2753 lt!1549826) (_1!27250 lt!1549404)) (Some!10367 (_2!27250 lt!1549404))))))

(declare-fun b!4336254 () Bool)

(assert (=> b!4336254 (= e!2698193 (contains!10732 (toList!2753 lt!1549826) lt!1549404))))

(assert (= (and d!1274598 res!1778586) b!4336253))

(assert (= (and b!4336253 res!1778585) b!4336254))

(declare-fun m!4931653 () Bool)

(assert (=> d!1274598 m!4931653))

(declare-fun m!4931655 () Bool)

(assert (=> d!1274598 m!4931655))

(declare-fun m!4931657 () Bool)

(assert (=> d!1274598 m!4931657))

(declare-fun m!4931659 () Bool)

(assert (=> d!1274598 m!4931659))

(declare-fun m!4931661 () Bool)

(assert (=> b!4336253 m!4931661))

(declare-fun m!4931663 () Bool)

(assert (=> b!4336254 m!4931663))

(assert (=> b!4335961 d!1274598))

(declare-fun d!1274600 () Bool)

(assert (=> d!1274600 (forall!8953 (toList!2753 (+!441 lm!1707 (tuple2!47913 hash!377 newBucket!200))) lambda!135851)))

(declare-fun lt!1549832 () Unit!68567)

(declare-fun choose!26542 (ListLongMap!1403 Int (_ BitVec 64) List!48797) Unit!68567)

(assert (=> d!1274600 (= lt!1549832 (choose!26542 lm!1707 lambda!135851 hash!377 newBucket!200))))

(declare-fun e!2698196 () Bool)

(assert (=> d!1274600 e!2698196))

(declare-fun res!1778589 () Bool)

(assert (=> d!1274600 (=> (not res!1778589) (not e!2698196))))

(assert (=> d!1274600 (= res!1778589 (forall!8953 (toList!2753 lm!1707) lambda!135851))))

(assert (=> d!1274600 (= (addValidProp!39 lm!1707 lambda!135851 hash!377 newBucket!200) lt!1549832)))

(declare-fun b!4336258 () Bool)

(assert (=> b!4336258 (= e!2698196 (dynLambda!20567 lambda!135851 (tuple2!47913 hash!377 newBucket!200)))))

(assert (= (and d!1274600 res!1778589) b!4336258))

(declare-fun b_lambda!128311 () Bool)

(assert (=> (not b_lambda!128311) (not b!4336258)))

(declare-fun m!4931665 () Bool)

(assert (=> d!1274600 m!4931665))

(declare-fun m!4931667 () Bool)

(assert (=> d!1274600 m!4931667))

(declare-fun m!4931669 () Bool)

(assert (=> d!1274600 m!4931669))

(assert (=> d!1274600 m!4931099))

(declare-fun m!4931671 () Bool)

(assert (=> b!4336258 m!4931671))

(assert (=> b!4335961 d!1274600))

(declare-fun d!1274602 () Bool)

(declare-fun res!1778590 () Bool)

(declare-fun e!2698197 () Bool)

(assert (=> d!1274602 (=> res!1778590 e!2698197)))

(assert (=> d!1274602 (= res!1778590 ((_ is Nil!48674) (toList!2753 lm!1707)))))

(assert (=> d!1274602 (= (forall!8953 (toList!2753 lm!1707) lambda!135851) e!2698197)))

(declare-fun b!4336259 () Bool)

(declare-fun e!2698198 () Bool)

(assert (=> b!4336259 (= e!2698197 e!2698198)))

(declare-fun res!1778591 () Bool)

(assert (=> b!4336259 (=> (not res!1778591) (not e!2698198))))

(assert (=> b!4336259 (= res!1778591 (dynLambda!20567 lambda!135851 (h!54175 (toList!2753 lm!1707))))))

(declare-fun b!4336260 () Bool)

(assert (=> b!4336260 (= e!2698198 (forall!8953 (t!355714 (toList!2753 lm!1707)) lambda!135851))))

(assert (= (and d!1274602 (not res!1778590)) b!4336259))

(assert (= (and b!4336259 res!1778591) b!4336260))

(declare-fun b_lambda!128313 () Bool)

(assert (=> (not b_lambda!128313) (not b!4336259)))

(declare-fun m!4931673 () Bool)

(assert (=> b!4336259 m!4931673))

(declare-fun m!4931675 () Bool)

(assert (=> b!4336260 m!4931675))

(assert (=> b!4335961 d!1274602))

(declare-fun bs!608840 () Bool)

(declare-fun d!1274604 () Bool)

(assert (= bs!608840 (and d!1274604 d!1274596)))

(declare-fun lambda!135961 () Int)

(assert (=> bs!608840 (not (= lambda!135961 lambda!135958))))

(declare-fun bs!608841 () Bool)

(assert (= bs!608841 (and d!1274604 d!1274582)))

(assert (=> bs!608841 (not (= lambda!135961 lambda!135952))))

(declare-fun bs!608842 () Bool)

(assert (= bs!608842 (and d!1274604 b!4336225)))

(assert (=> bs!608842 (not (= lambda!135961 lambda!135950))))

(declare-fun bs!608843 () Bool)

(assert (= bs!608843 (and d!1274604 b!4336216)))

(assert (=> bs!608843 (not (= lambda!135961 lambda!135945))))

(declare-fun bs!608844 () Bool)

(assert (= bs!608844 (and d!1274604 d!1274578)))

(assert (=> bs!608844 (not (= lambda!135961 lambda!135948))))

(declare-fun bs!608845 () Bool)

(assert (= bs!608845 (and d!1274604 b!4336244)))

(assert (=> bs!608845 (not (= lambda!135961 lambda!135955))))

(declare-fun bs!608846 () Bool)

(assert (= bs!608846 (and d!1274604 b!4336220)))

(assert (=> bs!608846 (not (= lambda!135961 lambda!135946))))

(assert (=> bs!608846 (not (= lambda!135961 lambda!135947))))

(assert (=> bs!608842 (not (= lambda!135961 lambda!135951))))

(declare-fun bs!608847 () Bool)

(assert (= bs!608847 (and d!1274604 d!1274550)))

(assert (=> bs!608847 (not (= lambda!135961 lambda!135944))))

(declare-fun bs!608848 () Bool)

(assert (= bs!608848 (and d!1274604 b!4336213)))

(assert (=> bs!608848 (not (= lambda!135961 lambda!135943))))

(declare-fun bs!608849 () Bool)

(assert (= bs!608849 (and d!1274604 b!4336209)))

(assert (=> bs!608849 (not (= lambda!135961 lambda!135941))))

(declare-fun bs!608850 () Bool)

(assert (= bs!608850 (and d!1274604 b!4336248)))

(assert (=> bs!608850 (not (= lambda!135961 lambda!135957))))

(assert (=> bs!608850 (not (= lambda!135961 lambda!135956))))

(assert (=> bs!608848 (not (= lambda!135961 lambda!135942))))

(declare-fun bs!608851 () Bool)

(assert (= bs!608851 (and d!1274604 b!4336221)))

(assert (=> bs!608851 (not (= lambda!135961 lambda!135949))))

(assert (=> d!1274604 true))

(assert (=> d!1274604 true))

(assert (=> d!1274604 (= (allKeysSameHash!343 newBucket!200 hash!377 hashF!1247) (forall!8955 newBucket!200 lambda!135961))))

(declare-fun bs!608852 () Bool)

(assert (= bs!608852 d!1274604))

(declare-fun m!4931677 () Bool)

(assert (=> bs!608852 m!4931677))

(assert (=> b!4335971 d!1274604))

(assert (=> start!418200 d!1274602))

(declare-fun d!1274606 () Bool)

(assert (=> d!1274606 (= (inv!64216 lm!1707) (isStrictlySorted!54 (toList!2753 lm!1707)))))

(declare-fun bs!608853 () Bool)

(assert (= bs!608853 d!1274606))

(assert (=> bs!608853 m!4931265))

(assert (=> start!418200 d!1274606))

(declare-fun d!1274608 () Bool)

(declare-fun res!1778592 () Bool)

(declare-fun e!2698199 () Bool)

(assert (=> d!1274608 (=> res!1778592 e!2698199)))

(assert (=> d!1274608 (= res!1778592 (not ((_ is Cons!48673) newBucket!200)))))

(assert (=> d!1274608 (= (noDuplicateKeys!385 newBucket!200) e!2698199)))

(declare-fun b!4336265 () Bool)

(declare-fun e!2698200 () Bool)

(assert (=> b!4336265 (= e!2698199 e!2698200)))

(declare-fun res!1778593 () Bool)

(assert (=> b!4336265 (=> (not res!1778593) (not e!2698200))))

(assert (=> b!4336265 (= res!1778593 (not (containsKey!536 (t!355713 newBucket!200) (_1!27249 (h!54174 newBucket!200)))))))

(declare-fun b!4336266 () Bool)

(assert (=> b!4336266 (= e!2698200 (noDuplicateKeys!385 (t!355713 newBucket!200)))))

(assert (= (and d!1274608 (not res!1778592)) b!4336265))

(assert (= (and b!4336265 res!1778593) b!4336266))

(declare-fun m!4931679 () Bool)

(assert (=> b!4336265 m!4931679))

(declare-fun m!4931681 () Bool)

(assert (=> b!4336266 m!4931681))

(assert (=> b!4335962 d!1274608))

(declare-fun tp!1329004 () Bool)

(declare-fun e!2698203 () Bool)

(declare-fun b!4336271 () Bool)

(assert (=> b!4336271 (= e!2698203 (and tp_is_empty!24777 tp_is_empty!24779 tp!1329004))))

(assert (=> b!4335966 (= tp!1328991 e!2698203)))

(assert (= (and b!4335966 ((_ is Cons!48673) (t!355713 newBucket!200))) b!4336271))

(declare-fun b!4336276 () Bool)

(declare-fun e!2698206 () Bool)

(declare-fun tp!1329009 () Bool)

(declare-fun tp!1329010 () Bool)

(assert (=> b!4336276 (= e!2698206 (and tp!1329009 tp!1329010))))

(assert (=> b!4335968 (= tp!1328992 e!2698206)))

(assert (= (and b!4335968 ((_ is Cons!48674) (toList!2753 lm!1707))) b!4336276))

(declare-fun b_lambda!128315 () Bool)

(assert (= b_lambda!128313 (or start!418200 b_lambda!128315)))

(declare-fun bs!608854 () Bool)

(declare-fun d!1274610 () Bool)

(assert (= bs!608854 (and d!1274610 start!418200)))

(assert (=> bs!608854 (= (dynLambda!20567 lambda!135851 (h!54175 (toList!2753 lm!1707))) (noDuplicateKeys!385 (_2!27250 (h!54175 (toList!2753 lm!1707)))))))

(declare-fun m!4931683 () Bool)

(assert (=> bs!608854 m!4931683))

(assert (=> b!4336259 d!1274610))

(declare-fun b_lambda!128317 () Bool)

(assert (= b_lambda!128311 (or start!418200 b_lambda!128317)))

(declare-fun bs!608855 () Bool)

(declare-fun d!1274612 () Bool)

(assert (= bs!608855 (and d!1274612 start!418200)))

(assert (=> bs!608855 (= (dynLambda!20567 lambda!135851 (tuple2!47913 hash!377 newBucket!200)) (noDuplicateKeys!385 (_2!27250 (tuple2!47913 hash!377 newBucket!200))))))

(declare-fun m!4931685 () Bool)

(assert (=> bs!608855 m!4931685))

(assert (=> b!4336258 d!1274612))

(declare-fun b_lambda!128319 () Bool)

(assert (= b_lambda!128301 (or start!418200 b_lambda!128319)))

(declare-fun bs!608856 () Bool)

(declare-fun d!1274614 () Bool)

(assert (= bs!608856 (and d!1274614 start!418200)))

(assert (=> bs!608856 (= (dynLambda!20567 lambda!135851 (h!54175 (toList!2753 lt!1549400))) (noDuplicateKeys!385 (_2!27250 (h!54175 (toList!2753 lt!1549400)))))))

(declare-fun m!4931687 () Bool)

(assert (=> bs!608856 m!4931687))

(assert (=> b!4336143 d!1274614))

(declare-fun b_lambda!128321 () Bool)

(assert (= b_lambda!128299 (or start!418200 b_lambda!128321)))

(declare-fun bs!608857 () Bool)

(declare-fun d!1274616 () Bool)

(assert (= bs!608857 (and d!1274616 start!418200)))

(assert (=> bs!608857 (= (dynLambda!20567 lambda!135851 lt!1549401) (noDuplicateKeys!385 (_2!27250 lt!1549401)))))

(declare-fun m!4931689 () Bool)

(assert (=> bs!608857 m!4931689))

(assert (=> d!1274544 d!1274616))

(check-sat tp_is_empty!24777 (not d!1274514) (not b!4336232) (not b!4336254) (not b!4336260) (not d!1274600) (not b!4336107) (not d!1274592) (not b!4336103) (not b!4336266) (not b!4336253) (not bm!301334) (not bm!301337) (not b!4336211) (not d!1274550) (not b!4336138) (not d!1274606) (not b!4336233) (not b!4336235) (not b!4336247) (not bs!608856) (not b!4336108) (not b!4336271) (not bm!301338) (not b!4336102) (not b!4336217) (not b_lambda!128321) (not bs!608855) (not bm!301331) (not b!4336224) (not b!4336265) (not b!4336113) (not bm!301336) (not b!4336245) (not b!4336246) (not b!4336223) (not b!4336222) (not d!1274584) (not b!4336248) (not b!4336135) (not bm!301329) (not d!1274522) (not d!1274604) (not b!4336218) (not d!1274596) (not b!4336210) (not bm!301330) (not b!4336234) (not d!1274538) (not d!1274588) (not b!4336242) (not d!1274580) (not b!4336220) (not d!1274540) (not bs!608854) (not b!4336120) (not b!4336213) (not b!4336212) (not b!4336243) (not b!4336106) tp_is_empty!24779 (not b_lambda!128317) (not b!4336131) (not d!1274582) (not b!4336035) (not d!1274578) (not d!1274598) (not bm!301340) (not b!4336104) (not b_lambda!128319) (not b!4336276) (not bs!608857) (not d!1274586) (not b!4336219) (not b!4336033) (not d!1274542) (not b!4336226) (not d!1274544) (not d!1274548) (not b_lambda!128315) (not bm!301335) (not d!1274524) (not bm!301304) (not b!4336144) (not b!4336225) (not b!4336105) (not bm!301339) (not d!1274534) (not bm!301332) (not bm!301333) (not b!4336236) (not d!1274536) (not d!1274590))
(check-sat)
