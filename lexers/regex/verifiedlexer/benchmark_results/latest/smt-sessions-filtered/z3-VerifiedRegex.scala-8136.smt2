; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418736 () Bool)

(assert start!418736)

(declare-fun b!4338701 () Bool)

(declare-fun e!2699626 () Bool)

(declare-fun e!2699621 () Bool)

(assert (=> b!4338701 (= e!2699626 e!2699621)))

(declare-fun res!1780127 () Bool)

(assert (=> b!4338701 (=> res!1780127 e!2699621)))

(declare-datatypes ((V!10331 0))(
  ( (V!10332 (val!16339 Int)) )
))
(declare-datatypes ((K!10085 0))(
  ( (K!10086 (val!16340 Int)) )
))
(declare-datatypes ((tuple2!47998 0))(
  ( (tuple2!47999 (_1!27293 K!10085) (_2!27293 V!10331)) )
))
(declare-datatypes ((List!48853 0))(
  ( (Nil!48729) (Cons!48729 (h!54242 tuple2!47998) (t!355769 List!48853)) )
))
(declare-datatypes ((tuple2!48000 0))(
  ( (tuple2!48001 (_1!27294 (_ BitVec 64)) (_2!27294 List!48853)) )
))
(declare-datatypes ((List!48854 0))(
  ( (Nil!48730) (Cons!48730 (h!54243 tuple2!48000) (t!355770 List!48854)) )
))
(declare-datatypes ((ListLongMap!1447 0))(
  ( (ListLongMap!1448 (toList!2797 List!48854)) )
))
(declare-fun lm!1707 () ListLongMap!1447)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4338701 (= res!1780127 (or (not ((_ is Cons!48730) (toList!2797 lm!1707))) (not (= (_1!27294 (h!54243 (toList!2797 lm!1707))) hash!377))))))

(declare-fun e!2699625 () Bool)

(assert (=> b!4338701 e!2699625))

(declare-fun res!1780129 () Bool)

(assert (=> b!4338701 (=> (not res!1780129) (not e!2699625))))

(declare-fun lt!1553075 () ListLongMap!1447)

(declare-fun lambda!136761 () Int)

(declare-fun forall!8987 (List!48854 Int) Bool)

(assert (=> b!4338701 (= res!1780129 (forall!8987 (toList!2797 lt!1553075) lambda!136761))))

(declare-fun lt!1553079 () tuple2!48000)

(declare-fun +!485 (ListLongMap!1447 tuple2!48000) ListLongMap!1447)

(assert (=> b!4338701 (= lt!1553075 (+!485 lm!1707 lt!1553079))))

(declare-fun newBucket!200 () List!48853)

(assert (=> b!4338701 (= lt!1553079 (tuple2!48001 hash!377 newBucket!200))))

(declare-datatypes ((Unit!69175 0))(
  ( (Unit!69176) )
))
(declare-fun lt!1553084 () Unit!69175)

(declare-fun addValidProp!61 (ListLongMap!1447 Int (_ BitVec 64) List!48853) Unit!69175)

(assert (=> b!4338701 (= lt!1553084 (addValidProp!61 lm!1707 lambda!136761 hash!377 newBucket!200))))

(assert (=> b!4338701 (forall!8987 (toList!2797 lm!1707) lambda!136761)))

(declare-fun b!4338702 () Bool)

(declare-fun res!1780121 () Bool)

(assert (=> b!4338702 (=> (not res!1780121) (not e!2699625))))

(assert (=> b!4338702 (= res!1780121 (forall!8987 (toList!2797 lt!1553075) lambda!136761))))

(declare-fun e!2699623 () Bool)

(declare-fun tp_is_empty!24867 () Bool)

(declare-fun tp_is_empty!24865 () Bool)

(declare-fun tp!1329231 () Bool)

(declare-fun b!4338703 () Bool)

(assert (=> b!4338703 (= e!2699623 (and tp_is_empty!24865 tp_is_empty!24867 tp!1329231))))

(declare-fun b!4338704 () Bool)

(declare-fun lt!1553085 () List!48853)

(declare-fun noDuplicateKeys!407 (List!48853) Bool)

(assert (=> b!4338704 (= e!2699621 (noDuplicateKeys!407 lt!1553085))))

(declare-fun lt!1553087 () List!48853)

(assert (=> b!4338704 (= lt!1553087 lt!1553085)))

(declare-fun lt!1553076 () ListLongMap!1447)

(assert (=> b!4338704 (= lt!1553076 (+!485 lm!1707 (tuple2!48001 hash!377 lt!1553087)))))

(declare-fun tail!6905 (List!48853) List!48853)

(assert (=> b!4338704 (= lt!1553087 (tail!6905 newBucket!200))))

(declare-fun e!2699620 () Bool)

(assert (=> b!4338704 e!2699620))

(declare-fun res!1780122 () Bool)

(assert (=> b!4338704 (=> (not res!1780122) (not e!2699620))))

(declare-datatypes ((ListMap!2041 0))(
  ( (ListMap!2042 (toList!2798 List!48853)) )
))
(declare-fun lt!1553077 () ListMap!2041)

(declare-fun lt!1553083 () ListMap!2041)

(declare-fun eq!197 (ListMap!2041 ListMap!2041) Bool)

(assert (=> b!4338704 (= res!1780122 (eq!197 lt!1553077 lt!1553083))))

(declare-fun lt!1553081 () ListMap!2041)

(declare-fun lt!1553074 () tuple2!47998)

(declare-fun +!486 (ListMap!2041 tuple2!47998) ListMap!2041)

(declare-fun addToMapMapFromBucket!115 (List!48853 ListMap!2041) ListMap!2041)

(assert (=> b!4338704 (= lt!1553083 (+!486 (addToMapMapFromBucket!115 lt!1553085 lt!1553081) lt!1553074))))

(declare-fun lt!1553078 () Unit!69175)

(declare-fun key!3918 () K!10085)

(declare-fun newValue!99 () V!10331)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!26 (ListMap!2041 K!10085 V!10331 List!48853) Unit!69175)

(assert (=> b!4338704 (= lt!1553078 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!26 lt!1553081 key!3918 newValue!99 lt!1553085))))

(declare-fun lt!1553088 () ListMap!2041)

(assert (=> b!4338704 (= lt!1553088 lt!1553077)))

(assert (=> b!4338704 (= lt!1553077 (addToMapMapFromBucket!115 lt!1553085 (+!486 lt!1553081 lt!1553074)))))

(declare-fun lt!1553082 () ListMap!2041)

(assert (=> b!4338704 (= lt!1553082 lt!1553088)))

(declare-fun lt!1553080 () List!48853)

(assert (=> b!4338704 (= lt!1553088 (addToMapMapFromBucket!115 lt!1553080 lt!1553081))))

(assert (=> b!4338704 (= lt!1553082 (addToMapMapFromBucket!115 newBucket!200 lt!1553081))))

(declare-fun extractMap!466 (List!48854) ListMap!2041)

(assert (=> b!4338704 (= lt!1553082 (extractMap!466 (toList!2797 lt!1553075)))))

(assert (=> b!4338704 (= lt!1553081 (extractMap!466 (t!355770 (toList!2797 lm!1707))))))

(declare-fun res!1780123 () Bool)

(declare-fun e!2699622 () Bool)

(assert (=> start!418736 (=> (not res!1780123) (not e!2699622))))

(assert (=> start!418736 (= res!1780123 (forall!8987 (toList!2797 lm!1707) lambda!136761))))

(assert (=> start!418736 e!2699622))

(assert (=> start!418736 e!2699623))

(assert (=> start!418736 true))

(declare-fun e!2699624 () Bool)

(declare-fun inv!64271 (ListLongMap!1447) Bool)

(assert (=> start!418736 (and (inv!64271 lm!1707) e!2699624)))

(assert (=> start!418736 tp_is_empty!24865))

(assert (=> start!418736 tp_is_empty!24867))

(declare-fun b!4338705 () Bool)

(declare-fun res!1780118 () Bool)

(assert (=> b!4338705 (=> (not res!1780118) (not e!2699622))))

(declare-datatypes ((Hashable!4799 0))(
  ( (HashableExt!4798 (__x!30502 Int)) )
))
(declare-fun hashF!1247 () Hashable!4799)

(declare-fun allKeysSameHashInMap!511 (ListLongMap!1447 Hashable!4799) Bool)

(assert (=> b!4338705 (= res!1780118 (allKeysSameHashInMap!511 lm!1707 hashF!1247))))

(declare-fun b!4338706 () Bool)

(declare-fun res!1780128 () Bool)

(assert (=> b!4338706 (=> (not res!1780128) (not e!2699622))))

(declare-fun allKeysSameHash!365 (List!48853 (_ BitVec 64) Hashable!4799) Bool)

(assert (=> b!4338706 (= res!1780128 (allKeysSameHash!365 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4338707 () Bool)

(declare-fun res!1780119 () Bool)

(assert (=> b!4338707 (=> (not res!1780119) (not e!2699622))))

(declare-fun contains!10822 (ListMap!2041 K!10085) Bool)

(assert (=> b!4338707 (= res!1780119 (contains!10822 (extractMap!466 (toList!2797 lm!1707)) key!3918))))

(declare-fun b!4338708 () Bool)

(declare-fun res!1780120 () Bool)

(assert (=> b!4338708 (=> (not res!1780120) (not e!2699622))))

(declare-fun contains!10823 (ListLongMap!1447 (_ BitVec 64)) Bool)

(assert (=> b!4338708 (= res!1780120 (contains!10823 lm!1707 hash!377))))

(declare-fun b!4338709 () Bool)

(declare-fun res!1780125 () Bool)

(assert (=> b!4338709 (=> (not res!1780125) (not e!2699622))))

(declare-fun hash!1366 (Hashable!4799 K!10085) (_ BitVec 64))

(assert (=> b!4338709 (= res!1780125 (= (hash!1366 hashF!1247 key!3918) hash!377))))

(declare-fun b!4338710 () Bool)

(declare-fun tp!1329232 () Bool)

(assert (=> b!4338710 (= e!2699624 tp!1329232)))

(declare-fun b!4338711 () Bool)

(assert (=> b!4338711 (= e!2699622 (not e!2699626))))

(declare-fun res!1780124 () Bool)

(assert (=> b!4338711 (=> res!1780124 e!2699626)))

(assert (=> b!4338711 (= res!1780124 (not (= newBucket!200 lt!1553080)))))

(assert (=> b!4338711 (= lt!1553080 (Cons!48729 lt!1553074 lt!1553085))))

(declare-fun lt!1553086 () List!48853)

(declare-fun removePairForKey!377 (List!48853 K!10085) List!48853)

(assert (=> b!4338711 (= lt!1553085 (removePairForKey!377 lt!1553086 key!3918))))

(assert (=> b!4338711 (= lt!1553074 (tuple2!47999 key!3918 newValue!99))))

(declare-fun lt!1553089 () tuple2!48000)

(declare-fun lt!1553073 () Unit!69175)

(declare-fun forallContained!1637 (List!48854 Int tuple2!48000) Unit!69175)

(assert (=> b!4338711 (= lt!1553073 (forallContained!1637 (toList!2797 lm!1707) lambda!136761 lt!1553089))))

(declare-fun contains!10824 (List!48854 tuple2!48000) Bool)

(assert (=> b!4338711 (contains!10824 (toList!2797 lm!1707) lt!1553089)))

(assert (=> b!4338711 (= lt!1553089 (tuple2!48001 hash!377 lt!1553086))))

(declare-fun lt!1553090 () Unit!69175)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!254 (List!48854 (_ BitVec 64) List!48853) Unit!69175)

(assert (=> b!4338711 (= lt!1553090 (lemmaGetValueByKeyImpliesContainsTuple!254 (toList!2797 lm!1707) hash!377 lt!1553086))))

(declare-fun apply!11259 (ListLongMap!1447 (_ BitVec 64)) List!48853)

(assert (=> b!4338711 (= lt!1553086 (apply!11259 lm!1707 hash!377))))

(declare-fun b!4338712 () Bool)

(assert (=> b!4338712 (= e!2699625 (or (not ((_ is Cons!48730) (toList!2797 lm!1707))) (not (= (_1!27294 (h!54243 (toList!2797 lm!1707))) hash!377)) (= lt!1553075 (ListLongMap!1448 (Cons!48730 lt!1553079 (t!355770 (toList!2797 lm!1707)))))))))

(declare-fun b!4338713 () Bool)

(assert (=> b!4338713 (= e!2699620 (eq!197 lt!1553088 lt!1553083))))

(declare-fun b!4338714 () Bool)

(declare-fun res!1780126 () Bool)

(assert (=> b!4338714 (=> res!1780126 e!2699626)))

(assert (=> b!4338714 (= res!1780126 (not (noDuplicateKeys!407 newBucket!200)))))

(assert (= (and start!418736 res!1780123) b!4338705))

(assert (= (and b!4338705 res!1780118) b!4338709))

(assert (= (and b!4338709 res!1780125) b!4338706))

(assert (= (and b!4338706 res!1780128) b!4338707))

(assert (= (and b!4338707 res!1780119) b!4338708))

(assert (= (and b!4338708 res!1780120) b!4338711))

(assert (= (and b!4338711 (not res!1780124)) b!4338714))

(assert (= (and b!4338714 (not res!1780126)) b!4338701))

(assert (= (and b!4338701 res!1780129) b!4338702))

(assert (= (and b!4338702 res!1780121) b!4338712))

(assert (= (and b!4338701 (not res!1780127)) b!4338704))

(assert (= (and b!4338704 res!1780122) b!4338713))

(assert (= (and start!418736 ((_ is Cons!48729) newBucket!200)) b!4338703))

(assert (= start!418736 b!4338710))

(declare-fun m!4935957 () Bool)

(assert (=> b!4338705 m!4935957))

(declare-fun m!4935959 () Bool)

(assert (=> b!4338704 m!4935959))

(declare-fun m!4935961 () Bool)

(assert (=> b!4338704 m!4935961))

(declare-fun m!4935963 () Bool)

(assert (=> b!4338704 m!4935963))

(declare-fun m!4935965 () Bool)

(assert (=> b!4338704 m!4935965))

(declare-fun m!4935967 () Bool)

(assert (=> b!4338704 m!4935967))

(assert (=> b!4338704 m!4935967))

(declare-fun m!4935969 () Bool)

(assert (=> b!4338704 m!4935969))

(declare-fun m!4935971 () Bool)

(assert (=> b!4338704 m!4935971))

(declare-fun m!4935973 () Bool)

(assert (=> b!4338704 m!4935973))

(declare-fun m!4935975 () Bool)

(assert (=> b!4338704 m!4935975))

(declare-fun m!4935977 () Bool)

(assert (=> b!4338704 m!4935977))

(assert (=> b!4338704 m!4935959))

(declare-fun m!4935979 () Bool)

(assert (=> b!4338704 m!4935979))

(declare-fun m!4935981 () Bool)

(assert (=> b!4338704 m!4935981))

(declare-fun m!4935983 () Bool)

(assert (=> b!4338704 m!4935983))

(declare-fun m!4935985 () Bool)

(assert (=> b!4338714 m!4935985))

(declare-fun m!4935987 () Bool)

(assert (=> b!4338701 m!4935987))

(declare-fun m!4935989 () Bool)

(assert (=> b!4338701 m!4935989))

(declare-fun m!4935991 () Bool)

(assert (=> b!4338701 m!4935991))

(declare-fun m!4935993 () Bool)

(assert (=> b!4338701 m!4935993))

(declare-fun m!4935995 () Bool)

(assert (=> b!4338711 m!4935995))

(declare-fun m!4935997 () Bool)

(assert (=> b!4338711 m!4935997))

(declare-fun m!4935999 () Bool)

(assert (=> b!4338711 m!4935999))

(declare-fun m!4936001 () Bool)

(assert (=> b!4338711 m!4936001))

(declare-fun m!4936003 () Bool)

(assert (=> b!4338711 m!4936003))

(assert (=> b!4338702 m!4935987))

(declare-fun m!4936005 () Bool)

(assert (=> b!4338708 m!4936005))

(declare-fun m!4936007 () Bool)

(assert (=> b!4338707 m!4936007))

(assert (=> b!4338707 m!4936007))

(declare-fun m!4936009 () Bool)

(assert (=> b!4338707 m!4936009))

(declare-fun m!4936011 () Bool)

(assert (=> b!4338706 m!4936011))

(declare-fun m!4936013 () Bool)

(assert (=> b!4338709 m!4936013))

(assert (=> start!418736 m!4935993))

(declare-fun m!4936015 () Bool)

(assert (=> start!418736 m!4936015))

(declare-fun m!4936017 () Bool)

(assert (=> b!4338713 m!4936017))

(check-sat (not b!4338714) (not b!4338702) (not b!4338707) tp_is_empty!24865 (not b!4338709) (not b!4338705) (not b!4338711) (not start!418736) (not b!4338703) (not b!4338710) (not b!4338713) (not b!4338706) (not b!4338704) tp_is_empty!24867 (not b!4338701) (not b!4338708))
(check-sat)
(get-model)

(declare-fun d!1275313 () Bool)

(assert (=> d!1275313 true))

(assert (=> d!1275313 true))

(declare-fun lambda!136764 () Int)

(declare-fun forall!8989 (List!48853 Int) Bool)

(assert (=> d!1275313 (= (allKeysSameHash!365 newBucket!200 hash!377 hashF!1247) (forall!8989 newBucket!200 lambda!136764))))

(declare-fun bs!609880 () Bool)

(assert (= bs!609880 d!1275313))

(declare-fun m!4936019 () Bool)

(assert (=> bs!609880 m!4936019))

(assert (=> b!4338706 d!1275313))

(declare-fun bs!609881 () Bool)

(declare-fun d!1275315 () Bool)

(assert (= bs!609881 (and d!1275315 start!418736)))

(declare-fun lambda!136767 () Int)

(assert (=> bs!609881 (not (= lambda!136767 lambda!136761))))

(assert (=> d!1275315 true))

(assert (=> d!1275315 (= (allKeysSameHashInMap!511 lm!1707 hashF!1247) (forall!8987 (toList!2797 lm!1707) lambda!136767))))

(declare-fun bs!609882 () Bool)

(assert (= bs!609882 d!1275315))

(declare-fun m!4936021 () Bool)

(assert (=> bs!609882 m!4936021))

(assert (=> b!4338705 d!1275315))

(declare-fun d!1275317 () Bool)

(declare-fun hash!1368 (Hashable!4799 K!10085) (_ BitVec 64))

(assert (=> d!1275317 (= (hash!1366 hashF!1247 key!3918) (hash!1368 hashF!1247 key!3918))))

(declare-fun bs!609883 () Bool)

(assert (= bs!609883 d!1275317))

(declare-fun m!4936023 () Bool)

(assert (=> bs!609883 m!4936023))

(assert (=> b!4338709 d!1275317))

(declare-fun b!4338787 () Bool)

(declare-fun e!2699672 () Bool)

(declare-fun e!2699675 () Bool)

(assert (=> b!4338787 (= e!2699672 e!2699675)))

(declare-fun res!1780165 () Bool)

(assert (=> b!4338787 (=> (not res!1780165) (not e!2699675))))

(declare-datatypes ((Option!10392 0))(
  ( (None!10391) (Some!10391 (v!43155 V!10331)) )
))
(declare-fun isDefined!7686 (Option!10392) Bool)

(declare-fun getValueByKey!378 (List!48853 K!10085) Option!10392)

(assert (=> b!4338787 (= res!1780165 (isDefined!7686 (getValueByKey!378 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918)))))

(declare-fun b!4338789 () Bool)

(declare-datatypes ((List!48855 0))(
  ( (Nil!48731) (Cons!48731 (h!54246 K!10085) (t!355771 List!48855)) )
))
(declare-fun e!2699674 () List!48855)

(declare-fun keys!16405 (ListMap!2041) List!48855)

(assert (=> b!4338789 (= e!2699674 (keys!16405 (extractMap!466 (toList!2797 lm!1707))))))

(declare-fun bm!301553 () Bool)

(declare-fun call!301558 () Bool)

(declare-fun contains!10826 (List!48855 K!10085) Bool)

(assert (=> bm!301553 (= call!301558 (contains!10826 e!2699674 key!3918))))

(declare-fun c!737661 () Bool)

(declare-fun c!737662 () Bool)

(assert (=> bm!301553 (= c!737661 c!737662)))

(declare-fun b!4338790 () Bool)

(declare-fun e!2699676 () Bool)

(assert (=> b!4338790 (= e!2699676 (not (contains!10826 (keys!16405 (extractMap!466 (toList!2797 lm!1707))) key!3918)))))

(declare-fun b!4338791 () Bool)

(declare-fun e!2699671 () Unit!69175)

(declare-fun Unit!69188 () Unit!69175)

(assert (=> b!4338791 (= e!2699671 Unit!69188)))

(declare-fun b!4338792 () Bool)

(declare-fun e!2699673 () Unit!69175)

(assert (=> b!4338792 (= e!2699673 e!2699671)))

(declare-fun c!737663 () Bool)

(assert (=> b!4338792 (= c!737663 call!301558)))

(declare-fun b!4338793 () Bool)

(declare-fun lt!1553140 () Unit!69175)

(assert (=> b!4338793 (= e!2699673 lt!1553140)))

(declare-fun lt!1553136 () Unit!69175)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!289 (List!48853 K!10085) Unit!69175)

(assert (=> b!4338793 (= lt!1553136 (lemmaContainsKeyImpliesGetValueByKeyDefined!289 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(assert (=> b!4338793 (isDefined!7686 (getValueByKey!378 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(declare-fun lt!1553135 () Unit!69175)

(assert (=> b!4338793 (= lt!1553135 lt!1553136)))

(declare-fun lemmaInListThenGetKeysListContains!84 (List!48853 K!10085) Unit!69175)

(assert (=> b!4338793 (= lt!1553140 (lemmaInListThenGetKeysListContains!84 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(assert (=> b!4338793 call!301558))

(declare-fun b!4338794 () Bool)

(declare-fun getKeysList!87 (List!48853) List!48855)

(assert (=> b!4338794 (= e!2699674 (getKeysList!87 (toList!2798 (extractMap!466 (toList!2797 lm!1707)))))))

(declare-fun b!4338795 () Bool)

(assert (=> b!4338795 (= e!2699675 (contains!10826 (keys!16405 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(declare-fun d!1275321 () Bool)

(assert (=> d!1275321 e!2699672))

(declare-fun res!1780166 () Bool)

(assert (=> d!1275321 (=> res!1780166 e!2699672)))

(assert (=> d!1275321 (= res!1780166 e!2699676)))

(declare-fun res!1780167 () Bool)

(assert (=> d!1275321 (=> (not res!1780167) (not e!2699676))))

(declare-fun lt!1553141 () Bool)

(assert (=> d!1275321 (= res!1780167 (not lt!1553141))))

(declare-fun lt!1553138 () Bool)

(assert (=> d!1275321 (= lt!1553141 lt!1553138)))

(declare-fun lt!1553139 () Unit!69175)

(assert (=> d!1275321 (= lt!1553139 e!2699673)))

(assert (=> d!1275321 (= c!737662 lt!1553138)))

(declare-fun containsKey!568 (List!48853 K!10085) Bool)

(assert (=> d!1275321 (= lt!1553138 (containsKey!568 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(assert (=> d!1275321 (= (contains!10822 (extractMap!466 (toList!2797 lm!1707)) key!3918) lt!1553141)))

(declare-fun b!4338788 () Bool)

(assert (=> b!4338788 false))

(declare-fun lt!1553134 () Unit!69175)

(declare-fun lt!1553137 () Unit!69175)

(assert (=> b!4338788 (= lt!1553134 lt!1553137)))

(assert (=> b!4338788 (containsKey!568 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!85 (List!48853 K!10085) Unit!69175)

(assert (=> b!4338788 (= lt!1553137 (lemmaInGetKeysListThenContainsKey!85 (toList!2798 (extractMap!466 (toList!2797 lm!1707))) key!3918))))

(declare-fun Unit!69189 () Unit!69175)

(assert (=> b!4338788 (= e!2699671 Unit!69189)))

(assert (= (and d!1275321 c!737662) b!4338793))

(assert (= (and d!1275321 (not c!737662)) b!4338792))

(assert (= (and b!4338792 c!737663) b!4338788))

(assert (= (and b!4338792 (not c!737663)) b!4338791))

(assert (= (or b!4338793 b!4338792) bm!301553))

(assert (= (and bm!301553 c!737661) b!4338794))

(assert (= (and bm!301553 (not c!737661)) b!4338789))

(assert (= (and d!1275321 res!1780167) b!4338790))

(assert (= (and d!1275321 (not res!1780166)) b!4338787))

(assert (= (and b!4338787 res!1780165) b!4338795))

(declare-fun m!4936089 () Bool)

(assert (=> bm!301553 m!4936089))

(declare-fun m!4936091 () Bool)

(assert (=> b!4338793 m!4936091))

(declare-fun m!4936093 () Bool)

(assert (=> b!4338793 m!4936093))

(assert (=> b!4338793 m!4936093))

(declare-fun m!4936095 () Bool)

(assert (=> b!4338793 m!4936095))

(declare-fun m!4936097 () Bool)

(assert (=> b!4338793 m!4936097))

(assert (=> b!4338789 m!4936007))

(declare-fun m!4936099 () Bool)

(assert (=> b!4338789 m!4936099))

(declare-fun m!4936101 () Bool)

(assert (=> b!4338788 m!4936101))

(declare-fun m!4936103 () Bool)

(assert (=> b!4338788 m!4936103))

(declare-fun m!4936105 () Bool)

(assert (=> b!4338794 m!4936105))

(assert (=> b!4338795 m!4936007))

(assert (=> b!4338795 m!4936099))

(assert (=> b!4338795 m!4936099))

(declare-fun m!4936107 () Bool)

(assert (=> b!4338795 m!4936107))

(assert (=> b!4338787 m!4936093))

(assert (=> b!4338787 m!4936093))

(assert (=> b!4338787 m!4936095))

(assert (=> d!1275321 m!4936101))

(assert (=> b!4338790 m!4936007))

(assert (=> b!4338790 m!4936099))

(assert (=> b!4338790 m!4936099))

(assert (=> b!4338790 m!4936107))

(assert (=> b!4338707 d!1275321))

(declare-fun bs!609891 () Bool)

(declare-fun d!1275351 () Bool)

(assert (= bs!609891 (and d!1275351 start!418736)))

(declare-fun lambda!136776 () Int)

(assert (=> bs!609891 (= lambda!136776 lambda!136761)))

(declare-fun bs!609892 () Bool)

(assert (= bs!609892 (and d!1275351 d!1275315)))

(assert (=> bs!609892 (not (= lambda!136776 lambda!136767))))

(declare-fun lt!1553156 () ListMap!2041)

(declare-fun invariantList!640 (List!48853) Bool)

(assert (=> d!1275351 (invariantList!640 (toList!2798 lt!1553156))))

(declare-fun e!2699682 () ListMap!2041)

(assert (=> d!1275351 (= lt!1553156 e!2699682)))

(declare-fun c!737666 () Bool)

(assert (=> d!1275351 (= c!737666 ((_ is Cons!48730) (toList!2797 lm!1707)))))

(assert (=> d!1275351 (forall!8987 (toList!2797 lm!1707) lambda!136776)))

(assert (=> d!1275351 (= (extractMap!466 (toList!2797 lm!1707)) lt!1553156)))

(declare-fun b!4338806 () Bool)

(assert (=> b!4338806 (= e!2699682 (addToMapMapFromBucket!115 (_2!27294 (h!54243 (toList!2797 lm!1707))) (extractMap!466 (t!355770 (toList!2797 lm!1707)))))))

(declare-fun b!4338807 () Bool)

(assert (=> b!4338807 (= e!2699682 (ListMap!2042 Nil!48729))))

(assert (= (and d!1275351 c!737666) b!4338806))

(assert (= (and d!1275351 (not c!737666)) b!4338807))

(declare-fun m!4936121 () Bool)

(assert (=> d!1275351 m!4936121))

(declare-fun m!4936123 () Bool)

(assert (=> d!1275351 m!4936123))

(assert (=> b!4338806 m!4935963))

(assert (=> b!4338806 m!4935963))

(declare-fun m!4936125 () Bool)

(assert (=> b!4338806 m!4936125))

(assert (=> b!4338707 d!1275351))

(declare-fun d!1275355 () Bool)

(declare-fun res!1780178 () Bool)

(declare-fun e!2699687 () Bool)

(assert (=> d!1275355 (=> res!1780178 e!2699687)))

(assert (=> d!1275355 (= res!1780178 ((_ is Nil!48730) (toList!2797 lm!1707)))))

(assert (=> d!1275355 (= (forall!8987 (toList!2797 lm!1707) lambda!136761) e!2699687)))

(declare-fun b!4338812 () Bool)

(declare-fun e!2699688 () Bool)

(assert (=> b!4338812 (= e!2699687 e!2699688)))

(declare-fun res!1780179 () Bool)

(assert (=> b!4338812 (=> (not res!1780179) (not e!2699688))))

(declare-fun dynLambda!20579 (Int tuple2!48000) Bool)

(assert (=> b!4338812 (= res!1780179 (dynLambda!20579 lambda!136761 (h!54243 (toList!2797 lm!1707))))))

(declare-fun b!4338813 () Bool)

(assert (=> b!4338813 (= e!2699688 (forall!8987 (t!355770 (toList!2797 lm!1707)) lambda!136761))))

(assert (= (and d!1275355 (not res!1780178)) b!4338812))

(assert (= (and b!4338812 res!1780179) b!4338813))

(declare-fun b_lambda!128507 () Bool)

(assert (=> (not b_lambda!128507) (not b!4338812)))

(declare-fun m!4936127 () Bool)

(assert (=> b!4338812 m!4936127))

(declare-fun m!4936129 () Bool)

(assert (=> b!4338813 m!4936129))

(assert (=> start!418736 d!1275355))

(declare-fun d!1275357 () Bool)

(declare-fun isStrictlySorted!66 (List!48854) Bool)

(assert (=> d!1275357 (= (inv!64271 lm!1707) (isStrictlySorted!66 (toList!2797 lm!1707)))))

(declare-fun bs!609893 () Bool)

(assert (= bs!609893 d!1275357))

(declare-fun m!4936131 () Bool)

(assert (=> bs!609893 m!4936131))

(assert (=> start!418736 d!1275357))

(declare-fun d!1275359 () Bool)

(declare-fun e!2699693 () Bool)

(assert (=> d!1275359 e!2699693))

(declare-fun res!1780182 () Bool)

(assert (=> d!1275359 (=> res!1780182 e!2699693)))

(declare-fun lt!1553168 () Bool)

(assert (=> d!1275359 (= res!1780182 (not lt!1553168))))

(declare-fun lt!1553165 () Bool)

(assert (=> d!1275359 (= lt!1553168 lt!1553165)))

(declare-fun lt!1553166 () Unit!69175)

(declare-fun e!2699694 () Unit!69175)

(assert (=> d!1275359 (= lt!1553166 e!2699694)))

(declare-fun c!737669 () Bool)

(assert (=> d!1275359 (= c!737669 lt!1553165)))

(declare-fun containsKey!569 (List!48854 (_ BitVec 64)) Bool)

(assert (=> d!1275359 (= lt!1553165 (containsKey!569 (toList!2797 lm!1707) hash!377))))

(assert (=> d!1275359 (= (contains!10823 lm!1707 hash!377) lt!1553168)))

(declare-fun b!4338820 () Bool)

(declare-fun lt!1553167 () Unit!69175)

(assert (=> b!4338820 (= e!2699694 lt!1553167)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!290 (List!48854 (_ BitVec 64)) Unit!69175)

(assert (=> b!4338820 (= lt!1553167 (lemmaContainsKeyImpliesGetValueByKeyDefined!290 (toList!2797 lm!1707) hash!377))))

(declare-datatypes ((Option!10393 0))(
  ( (None!10392) (Some!10392 (v!43156 List!48853)) )
))
(declare-fun isDefined!7687 (Option!10393) Bool)

(declare-fun getValueByKey!379 (List!48854 (_ BitVec 64)) Option!10393)

(assert (=> b!4338820 (isDefined!7687 (getValueByKey!379 (toList!2797 lm!1707) hash!377))))

(declare-fun b!4338821 () Bool)

(declare-fun Unit!69200 () Unit!69175)

(assert (=> b!4338821 (= e!2699694 Unit!69200)))

(declare-fun b!4338822 () Bool)

(assert (=> b!4338822 (= e!2699693 (isDefined!7687 (getValueByKey!379 (toList!2797 lm!1707) hash!377)))))

(assert (= (and d!1275359 c!737669) b!4338820))

(assert (= (and d!1275359 (not c!737669)) b!4338821))

(assert (= (and d!1275359 (not res!1780182)) b!4338822))

(declare-fun m!4936133 () Bool)

(assert (=> d!1275359 m!4936133))

(declare-fun m!4936135 () Bool)

(assert (=> b!4338820 m!4936135))

(declare-fun m!4936137 () Bool)

(assert (=> b!4338820 m!4936137))

(assert (=> b!4338820 m!4936137))

(declare-fun m!4936139 () Bool)

(assert (=> b!4338820 m!4936139))

(assert (=> b!4338822 m!4936137))

(assert (=> b!4338822 m!4936137))

(assert (=> b!4338822 m!4936139))

(assert (=> b!4338708 d!1275359))

(declare-fun d!1275361 () Bool)

(assert (=> d!1275361 (dynLambda!20579 lambda!136761 lt!1553089)))

(declare-fun lt!1553171 () Unit!69175)

(declare-fun choose!26586 (List!48854 Int tuple2!48000) Unit!69175)

(assert (=> d!1275361 (= lt!1553171 (choose!26586 (toList!2797 lm!1707) lambda!136761 lt!1553089))))

(declare-fun e!2699697 () Bool)

(assert (=> d!1275361 e!2699697))

(declare-fun res!1780185 () Bool)

(assert (=> d!1275361 (=> (not res!1780185) (not e!2699697))))

(assert (=> d!1275361 (= res!1780185 (forall!8987 (toList!2797 lm!1707) lambda!136761))))

(assert (=> d!1275361 (= (forallContained!1637 (toList!2797 lm!1707) lambda!136761 lt!1553089) lt!1553171)))

(declare-fun b!4338825 () Bool)

(assert (=> b!4338825 (= e!2699697 (contains!10824 (toList!2797 lm!1707) lt!1553089))))

(assert (= (and d!1275361 res!1780185) b!4338825))

(declare-fun b_lambda!128509 () Bool)

(assert (=> (not b_lambda!128509) (not d!1275361)))

(declare-fun m!4936141 () Bool)

(assert (=> d!1275361 m!4936141))

(declare-fun m!4936143 () Bool)

(assert (=> d!1275361 m!4936143))

(assert (=> d!1275361 m!4935993))

(assert (=> b!4338825 m!4936003))

(assert (=> b!4338711 d!1275361))

(declare-fun b!4338836 () Bool)

(declare-fun e!2699703 () List!48853)

(assert (=> b!4338836 (= e!2699703 (Cons!48729 (h!54242 lt!1553086) (removePairForKey!377 (t!355769 lt!1553086) key!3918)))))

(declare-fun b!4338835 () Bool)

(declare-fun e!2699702 () List!48853)

(assert (=> b!4338835 (= e!2699702 e!2699703)))

(declare-fun c!737675 () Bool)

(assert (=> b!4338835 (= c!737675 ((_ is Cons!48729) lt!1553086))))

(declare-fun b!4338834 () Bool)

(assert (=> b!4338834 (= e!2699702 (t!355769 lt!1553086))))

(declare-fun d!1275363 () Bool)

(declare-fun lt!1553174 () List!48853)

(declare-fun containsKey!570 (List!48853 K!10085) Bool)

(assert (=> d!1275363 (not (containsKey!570 lt!1553174 key!3918))))

(assert (=> d!1275363 (= lt!1553174 e!2699702)))

(declare-fun c!737674 () Bool)

(assert (=> d!1275363 (= c!737674 (and ((_ is Cons!48729) lt!1553086) (= (_1!27293 (h!54242 lt!1553086)) key!3918)))))

(assert (=> d!1275363 (noDuplicateKeys!407 lt!1553086)))

(assert (=> d!1275363 (= (removePairForKey!377 lt!1553086 key!3918) lt!1553174)))

(declare-fun b!4338837 () Bool)

(assert (=> b!4338837 (= e!2699703 Nil!48729)))

(assert (= (and d!1275363 c!737674) b!4338834))

(assert (= (and d!1275363 (not c!737674)) b!4338835))

(assert (= (and b!4338835 c!737675) b!4338836))

(assert (= (and b!4338835 (not c!737675)) b!4338837))

(declare-fun m!4936145 () Bool)

(assert (=> b!4338836 m!4936145))

(declare-fun m!4936147 () Bool)

(assert (=> d!1275363 m!4936147))

(declare-fun m!4936149 () Bool)

(assert (=> d!1275363 m!4936149))

(assert (=> b!4338711 d!1275363))

(declare-fun d!1275365 () Bool)

(declare-fun lt!1553177 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7629 (List!48854) (InoxSet tuple2!48000))

(assert (=> d!1275365 (= lt!1553177 (select (content!7629 (toList!2797 lm!1707)) lt!1553089))))

(declare-fun e!2699708 () Bool)

(assert (=> d!1275365 (= lt!1553177 e!2699708)))

(declare-fun res!1780190 () Bool)

(assert (=> d!1275365 (=> (not res!1780190) (not e!2699708))))

(assert (=> d!1275365 (= res!1780190 ((_ is Cons!48730) (toList!2797 lm!1707)))))

(assert (=> d!1275365 (= (contains!10824 (toList!2797 lm!1707) lt!1553089) lt!1553177)))

(declare-fun b!4338842 () Bool)

(declare-fun e!2699709 () Bool)

(assert (=> b!4338842 (= e!2699708 e!2699709)))

(declare-fun res!1780191 () Bool)

(assert (=> b!4338842 (=> res!1780191 e!2699709)))

(assert (=> b!4338842 (= res!1780191 (= (h!54243 (toList!2797 lm!1707)) lt!1553089))))

(declare-fun b!4338843 () Bool)

(assert (=> b!4338843 (= e!2699709 (contains!10824 (t!355770 (toList!2797 lm!1707)) lt!1553089))))

(assert (= (and d!1275365 res!1780190) b!4338842))

(assert (= (and b!4338842 (not res!1780191)) b!4338843))

(declare-fun m!4936151 () Bool)

(assert (=> d!1275365 m!4936151))

(declare-fun m!4936153 () Bool)

(assert (=> d!1275365 m!4936153))

(declare-fun m!4936155 () Bool)

(assert (=> b!4338843 m!4936155))

(assert (=> b!4338711 d!1275365))

(declare-fun d!1275367 () Bool)

(assert (=> d!1275367 (contains!10824 (toList!2797 lm!1707) (tuple2!48001 hash!377 lt!1553086))))

(declare-fun lt!1553180 () Unit!69175)

(declare-fun choose!26587 (List!48854 (_ BitVec 64) List!48853) Unit!69175)

(assert (=> d!1275367 (= lt!1553180 (choose!26587 (toList!2797 lm!1707) hash!377 lt!1553086))))

(declare-fun e!2699712 () Bool)

(assert (=> d!1275367 e!2699712))

(declare-fun res!1780194 () Bool)

(assert (=> d!1275367 (=> (not res!1780194) (not e!2699712))))

(assert (=> d!1275367 (= res!1780194 (isStrictlySorted!66 (toList!2797 lm!1707)))))

(assert (=> d!1275367 (= (lemmaGetValueByKeyImpliesContainsTuple!254 (toList!2797 lm!1707) hash!377 lt!1553086) lt!1553180)))

(declare-fun b!4338846 () Bool)

(assert (=> b!4338846 (= e!2699712 (= (getValueByKey!379 (toList!2797 lm!1707) hash!377) (Some!10392 lt!1553086)))))

(assert (= (and d!1275367 res!1780194) b!4338846))

(declare-fun m!4936157 () Bool)

(assert (=> d!1275367 m!4936157))

(declare-fun m!4936159 () Bool)

(assert (=> d!1275367 m!4936159))

(assert (=> d!1275367 m!4936131))

(assert (=> b!4338846 m!4936137))

(assert (=> b!4338711 d!1275367))

(declare-fun d!1275369 () Bool)

(declare-fun get!15816 (Option!10393) List!48853)

(assert (=> d!1275369 (= (apply!11259 lm!1707 hash!377) (get!15816 (getValueByKey!379 (toList!2797 lm!1707) hash!377)))))

(declare-fun bs!609894 () Bool)

(assert (= bs!609894 d!1275369))

(assert (=> bs!609894 m!4936137))

(assert (=> bs!609894 m!4936137))

(declare-fun m!4936161 () Bool)

(assert (=> bs!609894 m!4936161))

(assert (=> b!4338711 d!1275369))

(declare-fun d!1275371 () Bool)

(declare-fun res!1780195 () Bool)

(declare-fun e!2699713 () Bool)

(assert (=> d!1275371 (=> res!1780195 e!2699713)))

(assert (=> d!1275371 (= res!1780195 ((_ is Nil!48730) (toList!2797 lt!1553075)))))

(assert (=> d!1275371 (= (forall!8987 (toList!2797 lt!1553075) lambda!136761) e!2699713)))

(declare-fun b!4338847 () Bool)

(declare-fun e!2699714 () Bool)

(assert (=> b!4338847 (= e!2699713 e!2699714)))

(declare-fun res!1780196 () Bool)

(assert (=> b!4338847 (=> (not res!1780196) (not e!2699714))))

(assert (=> b!4338847 (= res!1780196 (dynLambda!20579 lambda!136761 (h!54243 (toList!2797 lt!1553075))))))

(declare-fun b!4338848 () Bool)

(assert (=> b!4338848 (= e!2699714 (forall!8987 (t!355770 (toList!2797 lt!1553075)) lambda!136761))))

(assert (= (and d!1275371 (not res!1780195)) b!4338847))

(assert (= (and b!4338847 res!1780196) b!4338848))

(declare-fun b_lambda!128511 () Bool)

(assert (=> (not b_lambda!128511) (not b!4338847)))

(declare-fun m!4936163 () Bool)

(assert (=> b!4338847 m!4936163))

(declare-fun m!4936165 () Bool)

(assert (=> b!4338848 m!4936165))

(assert (=> b!4338701 d!1275371))

(declare-fun d!1275373 () Bool)

(declare-fun e!2699719 () Bool)

(assert (=> d!1275373 e!2699719))

(declare-fun res!1780201 () Bool)

(assert (=> d!1275373 (=> (not res!1780201) (not e!2699719))))

(declare-fun lt!1553213 () ListLongMap!1447)

(assert (=> d!1275373 (= res!1780201 (contains!10823 lt!1553213 (_1!27294 lt!1553079)))))

(declare-fun lt!1553216 () List!48854)

(assert (=> d!1275373 (= lt!1553213 (ListLongMap!1448 lt!1553216))))

(declare-fun lt!1553215 () Unit!69175)

(declare-fun lt!1553214 () Unit!69175)

(assert (=> d!1275373 (= lt!1553215 lt!1553214)))

(assert (=> d!1275373 (= (getValueByKey!379 lt!1553216 (_1!27294 lt!1553079)) (Some!10392 (_2!27294 lt!1553079)))))

(declare-fun lemmaContainsTupThenGetReturnValue!161 (List!48854 (_ BitVec 64) List!48853) Unit!69175)

(assert (=> d!1275373 (= lt!1553214 (lemmaContainsTupThenGetReturnValue!161 lt!1553216 (_1!27294 lt!1553079) (_2!27294 lt!1553079)))))

(declare-fun insertStrictlySorted!97 (List!48854 (_ BitVec 64) List!48853) List!48854)

(assert (=> d!1275373 (= lt!1553216 (insertStrictlySorted!97 (toList!2797 lm!1707) (_1!27294 lt!1553079) (_2!27294 lt!1553079)))))

(assert (=> d!1275373 (= (+!485 lm!1707 lt!1553079) lt!1553213)))

(declare-fun b!4338857 () Bool)

(declare-fun res!1780202 () Bool)

(assert (=> b!4338857 (=> (not res!1780202) (not e!2699719))))

(assert (=> b!4338857 (= res!1780202 (= (getValueByKey!379 (toList!2797 lt!1553213) (_1!27294 lt!1553079)) (Some!10392 (_2!27294 lt!1553079))))))

(declare-fun b!4338858 () Bool)

(assert (=> b!4338858 (= e!2699719 (contains!10824 (toList!2797 lt!1553213) lt!1553079))))

(assert (= (and d!1275373 res!1780201) b!4338857))

(assert (= (and b!4338857 res!1780202) b!4338858))

(declare-fun m!4936167 () Bool)

(assert (=> d!1275373 m!4936167))

(declare-fun m!4936169 () Bool)

(assert (=> d!1275373 m!4936169))

(declare-fun m!4936171 () Bool)

(assert (=> d!1275373 m!4936171))

(declare-fun m!4936173 () Bool)

(assert (=> d!1275373 m!4936173))

(declare-fun m!4936175 () Bool)

(assert (=> b!4338857 m!4936175))

(declare-fun m!4936177 () Bool)

(assert (=> b!4338858 m!4936177))

(assert (=> b!4338701 d!1275373))

(declare-fun d!1275375 () Bool)

(assert (=> d!1275375 (forall!8987 (toList!2797 (+!485 lm!1707 (tuple2!48001 hash!377 newBucket!200))) lambda!136761)))

(declare-fun lt!1553237 () Unit!69175)

(declare-fun choose!26589 (ListLongMap!1447 Int (_ BitVec 64) List!48853) Unit!69175)

(assert (=> d!1275375 (= lt!1553237 (choose!26589 lm!1707 lambda!136761 hash!377 newBucket!200))))

(declare-fun e!2699726 () Bool)

(assert (=> d!1275375 e!2699726))

(declare-fun res!1780211 () Bool)

(assert (=> d!1275375 (=> (not res!1780211) (not e!2699726))))

(assert (=> d!1275375 (= res!1780211 (forall!8987 (toList!2797 lm!1707) lambda!136761))))

(assert (=> d!1275375 (= (addValidProp!61 lm!1707 lambda!136761 hash!377 newBucket!200) lt!1553237)))

(declare-fun b!4338868 () Bool)

(assert (=> b!4338868 (= e!2699726 (dynLambda!20579 lambda!136761 (tuple2!48001 hash!377 newBucket!200)))))

(assert (= (and d!1275375 res!1780211) b!4338868))

(declare-fun b_lambda!128513 () Bool)

(assert (=> (not b_lambda!128513) (not b!4338868)))

(declare-fun m!4936179 () Bool)

(assert (=> d!1275375 m!4936179))

(declare-fun m!4936181 () Bool)

(assert (=> d!1275375 m!4936181))

(declare-fun m!4936183 () Bool)

(assert (=> d!1275375 m!4936183))

(assert (=> d!1275375 m!4935993))

(declare-fun m!4936185 () Bool)

(assert (=> b!4338868 m!4936185))

(assert (=> b!4338701 d!1275375))

(assert (=> b!4338701 d!1275355))

(declare-fun d!1275377 () Bool)

(declare-fun res!1780219 () Bool)

(declare-fun e!2699734 () Bool)

(assert (=> d!1275377 (=> res!1780219 e!2699734)))

(assert (=> d!1275377 (= res!1780219 (not ((_ is Cons!48729) newBucket!200)))))

(assert (=> d!1275377 (= (noDuplicateKeys!407 newBucket!200) e!2699734)))

(declare-fun b!4338880 () Bool)

(declare-fun e!2699735 () Bool)

(assert (=> b!4338880 (= e!2699734 e!2699735)))

(declare-fun res!1780220 () Bool)

(assert (=> b!4338880 (=> (not res!1780220) (not e!2699735))))

(assert (=> b!4338880 (= res!1780220 (not (containsKey!570 (t!355769 newBucket!200) (_1!27293 (h!54242 newBucket!200)))))))

(declare-fun b!4338881 () Bool)

(assert (=> b!4338881 (= e!2699735 (noDuplicateKeys!407 (t!355769 newBucket!200)))))

(assert (= (and d!1275377 (not res!1780219)) b!4338880))

(assert (= (and b!4338880 res!1780220) b!4338881))

(declare-fun m!4936187 () Bool)

(assert (=> b!4338880 m!4936187))

(declare-fun m!4936189 () Bool)

(assert (=> b!4338881 m!4936189))

(assert (=> b!4338714 d!1275377))

(declare-fun d!1275379 () Bool)

(declare-fun e!2699747 () Bool)

(assert (=> d!1275379 e!2699747))

(declare-fun res!1780234 () Bool)

(assert (=> d!1275379 (=> (not res!1780234) (not e!2699747))))

(declare-fun lt!1553288 () ListMap!2041)

(assert (=> d!1275379 (= res!1780234 (contains!10822 lt!1553288 (_1!27293 lt!1553074)))))

(declare-fun lt!1553291 () List!48853)

(assert (=> d!1275379 (= lt!1553288 (ListMap!2042 lt!1553291))))

(declare-fun lt!1553290 () Unit!69175)

(declare-fun lt!1553289 () Unit!69175)

(assert (=> d!1275379 (= lt!1553290 lt!1553289)))

(assert (=> d!1275379 (= (getValueByKey!378 lt!1553291 (_1!27293 lt!1553074)) (Some!10391 (_2!27293 lt!1553074)))))

(declare-fun lemmaContainsTupThenGetReturnValue!162 (List!48853 K!10085 V!10331) Unit!69175)

(assert (=> d!1275379 (= lt!1553289 (lemmaContainsTupThenGetReturnValue!162 lt!1553291 (_1!27293 lt!1553074) (_2!27293 lt!1553074)))))

(declare-fun insertNoDuplicatedKeys!73 (List!48853 K!10085 V!10331) List!48853)

(assert (=> d!1275379 (= lt!1553291 (insertNoDuplicatedKeys!73 (toList!2798 (addToMapMapFromBucket!115 lt!1553085 lt!1553081)) (_1!27293 lt!1553074) (_2!27293 lt!1553074)))))

(assert (=> d!1275379 (= (+!486 (addToMapMapFromBucket!115 lt!1553085 lt!1553081) lt!1553074) lt!1553288)))

(declare-fun b!4338897 () Bool)

(declare-fun res!1780235 () Bool)

(assert (=> b!4338897 (=> (not res!1780235) (not e!2699747))))

(assert (=> b!4338897 (= res!1780235 (= (getValueByKey!378 (toList!2798 lt!1553288) (_1!27293 lt!1553074)) (Some!10391 (_2!27293 lt!1553074))))))

(declare-fun b!4338898 () Bool)

(declare-fun contains!10827 (List!48853 tuple2!47998) Bool)

(assert (=> b!4338898 (= e!2699747 (contains!10827 (toList!2798 lt!1553288) lt!1553074))))

(assert (= (and d!1275379 res!1780234) b!4338897))

(assert (= (and b!4338897 res!1780235) b!4338898))

(declare-fun m!4936229 () Bool)

(assert (=> d!1275379 m!4936229))

(declare-fun m!4936231 () Bool)

(assert (=> d!1275379 m!4936231))

(declare-fun m!4936233 () Bool)

(assert (=> d!1275379 m!4936233))

(declare-fun m!4936235 () Bool)

(assert (=> d!1275379 m!4936235))

(declare-fun m!4936237 () Bool)

(assert (=> b!4338897 m!4936237))

(declare-fun m!4936239 () Bool)

(assert (=> b!4338898 m!4936239))

(assert (=> b!4338704 d!1275379))

(declare-fun d!1275387 () Bool)

(declare-fun e!2699748 () Bool)

(assert (=> d!1275387 e!2699748))

(declare-fun res!1780236 () Bool)

(assert (=> d!1275387 (=> (not res!1780236) (not e!2699748))))

(declare-fun lt!1553292 () ListMap!2041)

(assert (=> d!1275387 (= res!1780236 (contains!10822 lt!1553292 (_1!27293 lt!1553074)))))

(declare-fun lt!1553295 () List!48853)

(assert (=> d!1275387 (= lt!1553292 (ListMap!2042 lt!1553295))))

(declare-fun lt!1553294 () Unit!69175)

(declare-fun lt!1553293 () Unit!69175)

(assert (=> d!1275387 (= lt!1553294 lt!1553293)))

(assert (=> d!1275387 (= (getValueByKey!378 lt!1553295 (_1!27293 lt!1553074)) (Some!10391 (_2!27293 lt!1553074)))))

(assert (=> d!1275387 (= lt!1553293 (lemmaContainsTupThenGetReturnValue!162 lt!1553295 (_1!27293 lt!1553074) (_2!27293 lt!1553074)))))

(assert (=> d!1275387 (= lt!1553295 (insertNoDuplicatedKeys!73 (toList!2798 lt!1553081) (_1!27293 lt!1553074) (_2!27293 lt!1553074)))))

(assert (=> d!1275387 (= (+!486 lt!1553081 lt!1553074) lt!1553292)))

(declare-fun b!4338899 () Bool)

(declare-fun res!1780237 () Bool)

(assert (=> b!4338899 (=> (not res!1780237) (not e!2699748))))

(assert (=> b!4338899 (= res!1780237 (= (getValueByKey!378 (toList!2798 lt!1553292) (_1!27293 lt!1553074)) (Some!10391 (_2!27293 lt!1553074))))))

(declare-fun b!4338900 () Bool)

(assert (=> b!4338900 (= e!2699748 (contains!10827 (toList!2798 lt!1553292) lt!1553074))))

(assert (= (and d!1275387 res!1780236) b!4338899))

(assert (= (and b!4338899 res!1780237) b!4338900))

(declare-fun m!4936253 () Bool)

(assert (=> d!1275387 m!4936253))

(declare-fun m!4936257 () Bool)

(assert (=> d!1275387 m!4936257))

(declare-fun m!4936261 () Bool)

(assert (=> d!1275387 m!4936261))

(declare-fun m!4936263 () Bool)

(assert (=> d!1275387 m!4936263))

(declare-fun m!4936269 () Bool)

(assert (=> b!4338899 m!4936269))

(declare-fun m!4936271 () Bool)

(assert (=> b!4338900 m!4936271))

(assert (=> b!4338704 d!1275387))

(declare-fun d!1275389 () Bool)

(assert (=> d!1275389 (= (tail!6905 newBucket!200) (t!355769 newBucket!200))))

(assert (=> b!4338704 d!1275389))

(declare-fun d!1275393 () Bool)

(declare-fun content!7630 (List!48853) (InoxSet tuple2!47998))

(assert (=> d!1275393 (= (eq!197 lt!1553077 lt!1553083) (= (content!7630 (toList!2798 lt!1553077)) (content!7630 (toList!2798 lt!1553083))))))

(declare-fun bs!609916 () Bool)

(assert (= bs!609916 d!1275393))

(declare-fun m!4936299 () Bool)

(assert (=> bs!609916 m!4936299))

(declare-fun m!4936301 () Bool)

(assert (=> bs!609916 m!4936301))

(assert (=> b!4338704 d!1275393))

(declare-fun d!1275397 () Bool)

(assert (=> d!1275397 (eq!197 (addToMapMapFromBucket!115 lt!1553085 (+!486 lt!1553081 (tuple2!47999 key!3918 newValue!99))) (+!486 (addToMapMapFromBucket!115 lt!1553085 lt!1553081) (tuple2!47999 key!3918 newValue!99)))))

(declare-fun lt!1553305 () Unit!69175)

(declare-fun choose!26590 (ListMap!2041 K!10085 V!10331 List!48853) Unit!69175)

(assert (=> d!1275397 (= lt!1553305 (choose!26590 lt!1553081 key!3918 newValue!99 lt!1553085))))

(assert (=> d!1275397 (not (containsKey!570 lt!1553085 key!3918))))

(assert (=> d!1275397 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!26 lt!1553081 key!3918 newValue!99 lt!1553085) lt!1553305)))

(declare-fun bs!609918 () Bool)

(assert (= bs!609918 d!1275397))

(declare-fun m!4936309 () Bool)

(assert (=> bs!609918 m!4936309))

(declare-fun m!4936313 () Bool)

(assert (=> bs!609918 m!4936313))

(assert (=> bs!609918 m!4935959))

(declare-fun m!4936317 () Bool)

(assert (=> bs!609918 m!4936317))

(declare-fun m!4936321 () Bool)

(assert (=> bs!609918 m!4936321))

(assert (=> bs!609918 m!4936317))

(declare-fun m!4936323 () Bool)

(assert (=> bs!609918 m!4936323))

(declare-fun m!4936325 () Bool)

(assert (=> bs!609918 m!4936325))

(assert (=> bs!609918 m!4936309))

(assert (=> bs!609918 m!4936321))

(assert (=> bs!609918 m!4935959))

(assert (=> b!4338704 d!1275397))

(declare-fun bs!609990 () Bool)

(declare-fun b!4338983 () Bool)

(assert (= bs!609990 (and b!4338983 d!1275313)))

(declare-fun lambda!136854 () Int)

(assert (=> bs!609990 (not (= lambda!136854 lambda!136764))))

(assert (=> b!4338983 true))

(declare-fun bs!609991 () Bool)

(declare-fun b!4338984 () Bool)

(assert (= bs!609991 (and b!4338984 d!1275313)))

(declare-fun lambda!136855 () Int)

(assert (=> bs!609991 (not (= lambda!136855 lambda!136764))))

(declare-fun bs!609992 () Bool)

(assert (= bs!609992 (and b!4338984 b!4338983)))

(assert (=> bs!609992 (= lambda!136855 lambda!136854)))

(assert (=> b!4338984 true))

(declare-fun lambda!136856 () Int)

(assert (=> bs!609991 (not (= lambda!136856 lambda!136764))))

(declare-fun lt!1553450 () ListMap!2041)

(assert (=> bs!609992 (= (= lt!1553450 lt!1553081) (= lambda!136856 lambda!136854))))

(assert (=> b!4338984 (= (= lt!1553450 lt!1553081) (= lambda!136856 lambda!136855))))

(assert (=> b!4338984 true))

(declare-fun bs!609993 () Bool)

(declare-fun d!1275401 () Bool)

(assert (= bs!609993 (and d!1275401 d!1275313)))

(declare-fun lambda!136857 () Int)

(assert (=> bs!609993 (not (= lambda!136857 lambda!136764))))

(declare-fun bs!609994 () Bool)

(assert (= bs!609994 (and d!1275401 b!4338983)))

(declare-fun lt!1553454 () ListMap!2041)

(assert (=> bs!609994 (= (= lt!1553454 lt!1553081) (= lambda!136857 lambda!136854))))

(declare-fun bs!609995 () Bool)

(assert (= bs!609995 (and d!1275401 b!4338984)))

(assert (=> bs!609995 (= (= lt!1553454 lt!1553081) (= lambda!136857 lambda!136855))))

(assert (=> bs!609995 (= (= lt!1553454 lt!1553450) (= lambda!136857 lambda!136856))))

(assert (=> d!1275401 true))

(declare-fun call!301588 () Bool)

(declare-fun c!737701 () Bool)

(declare-fun bm!301581 () Bool)

(assert (=> bm!301581 (= call!301588 (forall!8989 (toList!2798 lt!1553081) (ite c!737701 lambda!136854 lambda!136856)))))

(declare-fun e!2699802 () ListMap!2041)

(assert (=> b!4338983 (= e!2699802 lt!1553081)))

(declare-fun lt!1553436 () Unit!69175)

(declare-fun call!301587 () Unit!69175)

(assert (=> b!4338983 (= lt!1553436 call!301587)))

(declare-fun call!301586 () Bool)

(assert (=> b!4338983 call!301586))

(declare-fun lt!1553440 () Unit!69175)

(assert (=> b!4338983 (= lt!1553440 lt!1553436)))

(assert (=> b!4338983 call!301588))

(declare-fun lt!1553443 () Unit!69175)

(declare-fun Unit!69213 () Unit!69175)

(assert (=> b!4338983 (= lt!1553443 Unit!69213)))

(declare-fun bm!301582 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!33 (ListMap!2041) Unit!69175)

(assert (=> bm!301582 (= call!301587 (lemmaContainsAllItsOwnKeys!33 lt!1553081))))

(declare-fun bm!301583 () Bool)

(declare-fun lt!1553442 () ListMap!2041)

(assert (=> bm!301583 (= call!301586 (forall!8989 (ite c!737701 (toList!2798 lt!1553081) (toList!2798 lt!1553442)) (ite c!737701 lambda!136854 lambda!136856)))))

(assert (=> b!4338984 (= e!2699802 lt!1553450)))

(assert (=> b!4338984 (= lt!1553442 (+!486 lt!1553081 (h!54242 lt!1553085)))))

(assert (=> b!4338984 (= lt!1553450 (addToMapMapFromBucket!115 (t!355769 lt!1553085) (+!486 lt!1553081 (h!54242 lt!1553085))))))

(declare-fun lt!1553449 () Unit!69175)

(assert (=> b!4338984 (= lt!1553449 call!301587)))

(assert (=> b!4338984 (forall!8989 (toList!2798 lt!1553081) lambda!136855)))

(declare-fun lt!1553445 () Unit!69175)

(assert (=> b!4338984 (= lt!1553445 lt!1553449)))

(assert (=> b!4338984 call!301586))

(declare-fun lt!1553452 () Unit!69175)

(declare-fun Unit!69214 () Unit!69175)

(assert (=> b!4338984 (= lt!1553452 Unit!69214)))

(assert (=> b!4338984 (forall!8989 (t!355769 lt!1553085) lambda!136856)))

(declare-fun lt!1553437 () Unit!69175)

(declare-fun Unit!69215 () Unit!69175)

(assert (=> b!4338984 (= lt!1553437 Unit!69215)))

(declare-fun lt!1553438 () Unit!69175)

(declare-fun Unit!69216 () Unit!69175)

(assert (=> b!4338984 (= lt!1553438 Unit!69216)))

(declare-fun lt!1553447 () Unit!69175)

(declare-fun forallContained!1639 (List!48853 Int tuple2!47998) Unit!69175)

(assert (=> b!4338984 (= lt!1553447 (forallContained!1639 (toList!2798 lt!1553442) lambda!136856 (h!54242 lt!1553085)))))

(assert (=> b!4338984 (contains!10822 lt!1553442 (_1!27293 (h!54242 lt!1553085)))))

(declare-fun lt!1553453 () Unit!69175)

(declare-fun Unit!69217 () Unit!69175)

(assert (=> b!4338984 (= lt!1553453 Unit!69217)))

(assert (=> b!4338984 (contains!10822 lt!1553450 (_1!27293 (h!54242 lt!1553085)))))

(declare-fun lt!1553441 () Unit!69175)

(declare-fun Unit!69218 () Unit!69175)

(assert (=> b!4338984 (= lt!1553441 Unit!69218)))

(assert (=> b!4338984 (forall!8989 lt!1553085 lambda!136856)))

(declare-fun lt!1553435 () Unit!69175)

(declare-fun Unit!69219 () Unit!69175)

(assert (=> b!4338984 (= lt!1553435 Unit!69219)))

(assert (=> b!4338984 (forall!8989 (toList!2798 lt!1553442) lambda!136856)))

(declare-fun lt!1553444 () Unit!69175)

(declare-fun Unit!69220 () Unit!69175)

(assert (=> b!4338984 (= lt!1553444 Unit!69220)))

(declare-fun lt!1553446 () Unit!69175)

(declare-fun Unit!69221 () Unit!69175)

(assert (=> b!4338984 (= lt!1553446 Unit!69221)))

(declare-fun lt!1553439 () Unit!69175)

(declare-fun addForallContainsKeyThenBeforeAdding!33 (ListMap!2041 ListMap!2041 K!10085 V!10331) Unit!69175)

(assert (=> b!4338984 (= lt!1553439 (addForallContainsKeyThenBeforeAdding!33 lt!1553081 lt!1553450 (_1!27293 (h!54242 lt!1553085)) (_2!27293 (h!54242 lt!1553085))))))

(assert (=> b!4338984 (forall!8989 (toList!2798 lt!1553081) lambda!136856)))

(declare-fun lt!1553451 () Unit!69175)

(assert (=> b!4338984 (= lt!1553451 lt!1553439)))

(assert (=> b!4338984 call!301588))

(declare-fun lt!1553455 () Unit!69175)

(declare-fun Unit!69222 () Unit!69175)

(assert (=> b!4338984 (= lt!1553455 Unit!69222)))

(declare-fun res!1780269 () Bool)

(assert (=> b!4338984 (= res!1780269 (forall!8989 lt!1553085 lambda!136856))))

(declare-fun e!2699800 () Bool)

(assert (=> b!4338984 (=> (not res!1780269) (not e!2699800))))

(assert (=> b!4338984 e!2699800))

(declare-fun lt!1553448 () Unit!69175)

(declare-fun Unit!69223 () Unit!69175)

(assert (=> b!4338984 (= lt!1553448 Unit!69223)))

(declare-fun b!4338985 () Bool)

(declare-fun res!1780268 () Bool)

(declare-fun e!2699801 () Bool)

(assert (=> b!4338985 (=> (not res!1780268) (not e!2699801))))

(assert (=> b!4338985 (= res!1780268 (forall!8989 (toList!2798 lt!1553081) lambda!136857))))

(assert (=> d!1275401 e!2699801))

(declare-fun res!1780270 () Bool)

(assert (=> d!1275401 (=> (not res!1780270) (not e!2699801))))

(assert (=> d!1275401 (= res!1780270 (forall!8989 lt!1553085 lambda!136857))))

(assert (=> d!1275401 (= lt!1553454 e!2699802)))

(assert (=> d!1275401 (= c!737701 ((_ is Nil!48729) lt!1553085))))

(assert (=> d!1275401 (noDuplicateKeys!407 lt!1553085)))

(assert (=> d!1275401 (= (addToMapMapFromBucket!115 lt!1553085 lt!1553081) lt!1553454)))

(declare-fun b!4338986 () Bool)

(assert (=> b!4338986 (= e!2699801 (invariantList!640 (toList!2798 lt!1553454)))))

(declare-fun b!4338987 () Bool)

(assert (=> b!4338987 (= e!2699800 (forall!8989 (toList!2798 lt!1553081) lambda!136856))))

(assert (= (and d!1275401 c!737701) b!4338983))

(assert (= (and d!1275401 (not c!737701)) b!4338984))

(assert (= (and b!4338984 res!1780269) b!4338987))

(assert (= (or b!4338983 b!4338984) bm!301582))

(assert (= (or b!4338983 b!4338984) bm!301583))

(assert (= (or b!4338983 b!4338984) bm!301581))

(assert (= (and d!1275401 res!1780270) b!4338985))

(assert (= (and b!4338985 res!1780268) b!4338986))

(declare-fun m!4936467 () Bool)

(assert (=> b!4338987 m!4936467))

(declare-fun m!4936469 () Bool)

(assert (=> b!4338985 m!4936469))

(declare-fun m!4936471 () Bool)

(assert (=> b!4338984 m!4936471))

(declare-fun m!4936473 () Bool)

(assert (=> b!4338984 m!4936473))

(declare-fun m!4936475 () Bool)

(assert (=> b!4338984 m!4936475))

(declare-fun m!4936477 () Bool)

(assert (=> b!4338984 m!4936477))

(declare-fun m!4936479 () Bool)

(assert (=> b!4338984 m!4936479))

(declare-fun m!4936481 () Bool)

(assert (=> b!4338984 m!4936481))

(declare-fun m!4936483 () Bool)

(assert (=> b!4338984 m!4936483))

(declare-fun m!4936485 () Bool)

(assert (=> b!4338984 m!4936485))

(assert (=> b!4338984 m!4936485))

(declare-fun m!4936487 () Bool)

(assert (=> b!4338984 m!4936487))

(assert (=> b!4338984 m!4936475))

(declare-fun m!4936489 () Bool)

(assert (=> b!4338984 m!4936489))

(assert (=> b!4338984 m!4936467))

(declare-fun m!4936491 () Bool)

(assert (=> bm!301583 m!4936491))

(declare-fun m!4936493 () Bool)

(assert (=> d!1275401 m!4936493))

(assert (=> d!1275401 m!4935965))

(declare-fun m!4936495 () Bool)

(assert (=> bm!301581 m!4936495))

(declare-fun m!4936497 () Bool)

(assert (=> bm!301582 m!4936497))

(declare-fun m!4936499 () Bool)

(assert (=> b!4338986 m!4936499))

(assert (=> b!4338704 d!1275401))

(declare-fun bs!609996 () Bool)

(declare-fun b!4338990 () Bool)

(assert (= bs!609996 (and b!4338990 b!4338984)))

(declare-fun lambda!136858 () Int)

(assert (=> bs!609996 (= lambda!136858 lambda!136855)))

(declare-fun bs!609997 () Bool)

(assert (= bs!609997 (and b!4338990 b!4338983)))

(assert (=> bs!609997 (= lambda!136858 lambda!136854)))

(assert (=> bs!609996 (= (= lt!1553081 lt!1553450) (= lambda!136858 lambda!136856))))

(declare-fun bs!609998 () Bool)

(assert (= bs!609998 (and b!4338990 d!1275401)))

(assert (=> bs!609998 (= (= lt!1553081 lt!1553454) (= lambda!136858 lambda!136857))))

(declare-fun bs!609999 () Bool)

(assert (= bs!609999 (and b!4338990 d!1275313)))

(assert (=> bs!609999 (not (= lambda!136858 lambda!136764))))

(assert (=> b!4338990 true))

(declare-fun bs!610000 () Bool)

(declare-fun b!4338991 () Bool)

(assert (= bs!610000 (and b!4338991 b!4338984)))

(declare-fun lambda!136859 () Int)

(assert (=> bs!610000 (= lambda!136859 lambda!136855)))

(declare-fun bs!610001 () Bool)

(assert (= bs!610001 (and b!4338991 b!4338983)))

(assert (=> bs!610001 (= lambda!136859 lambda!136854)))

(assert (=> bs!610000 (= (= lt!1553081 lt!1553450) (= lambda!136859 lambda!136856))))

(declare-fun bs!610002 () Bool)

(assert (= bs!610002 (and b!4338991 d!1275401)))

(assert (=> bs!610002 (= (= lt!1553081 lt!1553454) (= lambda!136859 lambda!136857))))

(declare-fun bs!610003 () Bool)

(assert (= bs!610003 (and b!4338991 b!4338990)))

(assert (=> bs!610003 (= lambda!136859 lambda!136858)))

(declare-fun bs!610004 () Bool)

(assert (= bs!610004 (and b!4338991 d!1275313)))

(assert (=> bs!610004 (not (= lambda!136859 lambda!136764))))

(assert (=> b!4338991 true))

(declare-fun lt!1553471 () ListMap!2041)

(declare-fun lambda!136860 () Int)

(assert (=> bs!610000 (= (= lt!1553471 lt!1553081) (= lambda!136860 lambda!136855))))

(assert (=> bs!610001 (= (= lt!1553471 lt!1553081) (= lambda!136860 lambda!136854))))

(assert (=> b!4338991 (= (= lt!1553471 lt!1553081) (= lambda!136860 lambda!136859))))

(assert (=> bs!610000 (= (= lt!1553471 lt!1553450) (= lambda!136860 lambda!136856))))

(assert (=> bs!610002 (= (= lt!1553471 lt!1553454) (= lambda!136860 lambda!136857))))

(assert (=> bs!610003 (= (= lt!1553471 lt!1553081) (= lambda!136860 lambda!136858))))

(assert (=> bs!610004 (not (= lambda!136860 lambda!136764))))

(assert (=> b!4338991 true))

(declare-fun bs!610005 () Bool)

(declare-fun d!1275429 () Bool)

(assert (= bs!610005 (and d!1275429 b!4338984)))

(declare-fun lambda!136861 () Int)

(declare-fun lt!1553475 () ListMap!2041)

(assert (=> bs!610005 (= (= lt!1553475 lt!1553081) (= lambda!136861 lambda!136855))))

(declare-fun bs!610006 () Bool)

(assert (= bs!610006 (and d!1275429 b!4338983)))

(assert (=> bs!610006 (= (= lt!1553475 lt!1553081) (= lambda!136861 lambda!136854))))

(declare-fun bs!610007 () Bool)

(assert (= bs!610007 (and d!1275429 b!4338991)))

(assert (=> bs!610007 (= (= lt!1553475 lt!1553081) (= lambda!136861 lambda!136859))))

(assert (=> bs!610005 (= (= lt!1553475 lt!1553450) (= lambda!136861 lambda!136856))))

(declare-fun bs!610008 () Bool)

(assert (= bs!610008 (and d!1275429 d!1275401)))

(assert (=> bs!610008 (= (= lt!1553475 lt!1553454) (= lambda!136861 lambda!136857))))

(declare-fun bs!610009 () Bool)

(assert (= bs!610009 (and d!1275429 d!1275313)))

(assert (=> bs!610009 (not (= lambda!136861 lambda!136764))))

(assert (=> bs!610007 (= (= lt!1553475 lt!1553471) (= lambda!136861 lambda!136860))))

(declare-fun bs!610010 () Bool)

(assert (= bs!610010 (and d!1275429 b!4338990)))

(assert (=> bs!610010 (= (= lt!1553475 lt!1553081) (= lambda!136861 lambda!136858))))

(assert (=> d!1275429 true))

(declare-fun bm!301584 () Bool)

(declare-fun call!301591 () Bool)

(declare-fun c!737702 () Bool)

(assert (=> bm!301584 (= call!301591 (forall!8989 (toList!2798 lt!1553081) (ite c!737702 lambda!136858 lambda!136860)))))

(declare-fun e!2699805 () ListMap!2041)

(assert (=> b!4338990 (= e!2699805 lt!1553081)))

(declare-fun lt!1553457 () Unit!69175)

(declare-fun call!301590 () Unit!69175)

(assert (=> b!4338990 (= lt!1553457 call!301590)))

(declare-fun call!301589 () Bool)

(assert (=> b!4338990 call!301589))

(declare-fun lt!1553461 () Unit!69175)

(assert (=> b!4338990 (= lt!1553461 lt!1553457)))

(assert (=> b!4338990 call!301591))

(declare-fun lt!1553464 () Unit!69175)

(declare-fun Unit!69224 () Unit!69175)

(assert (=> b!4338990 (= lt!1553464 Unit!69224)))

(declare-fun bm!301585 () Bool)

(assert (=> bm!301585 (= call!301590 (lemmaContainsAllItsOwnKeys!33 lt!1553081))))

(declare-fun lt!1553463 () ListMap!2041)

(declare-fun bm!301586 () Bool)

(assert (=> bm!301586 (= call!301589 (forall!8989 (ite c!737702 (toList!2798 lt!1553081) (toList!2798 lt!1553463)) (ite c!737702 lambda!136858 lambda!136860)))))

(assert (=> b!4338991 (= e!2699805 lt!1553471)))

(assert (=> b!4338991 (= lt!1553463 (+!486 lt!1553081 (h!54242 newBucket!200)))))

(assert (=> b!4338991 (= lt!1553471 (addToMapMapFromBucket!115 (t!355769 newBucket!200) (+!486 lt!1553081 (h!54242 newBucket!200))))))

(declare-fun lt!1553470 () Unit!69175)

(assert (=> b!4338991 (= lt!1553470 call!301590)))

(assert (=> b!4338991 (forall!8989 (toList!2798 lt!1553081) lambda!136859)))

(declare-fun lt!1553466 () Unit!69175)

(assert (=> b!4338991 (= lt!1553466 lt!1553470)))

(assert (=> b!4338991 call!301589))

(declare-fun lt!1553473 () Unit!69175)

(declare-fun Unit!69225 () Unit!69175)

(assert (=> b!4338991 (= lt!1553473 Unit!69225)))

(assert (=> b!4338991 (forall!8989 (t!355769 newBucket!200) lambda!136860)))

(declare-fun lt!1553458 () Unit!69175)

(declare-fun Unit!69226 () Unit!69175)

(assert (=> b!4338991 (= lt!1553458 Unit!69226)))

(declare-fun lt!1553459 () Unit!69175)

(declare-fun Unit!69227 () Unit!69175)

(assert (=> b!4338991 (= lt!1553459 Unit!69227)))

(declare-fun lt!1553468 () Unit!69175)

(assert (=> b!4338991 (= lt!1553468 (forallContained!1639 (toList!2798 lt!1553463) lambda!136860 (h!54242 newBucket!200)))))

(assert (=> b!4338991 (contains!10822 lt!1553463 (_1!27293 (h!54242 newBucket!200)))))

(declare-fun lt!1553474 () Unit!69175)

(declare-fun Unit!69228 () Unit!69175)

(assert (=> b!4338991 (= lt!1553474 Unit!69228)))

(assert (=> b!4338991 (contains!10822 lt!1553471 (_1!27293 (h!54242 newBucket!200)))))

(declare-fun lt!1553462 () Unit!69175)

(declare-fun Unit!69229 () Unit!69175)

(assert (=> b!4338991 (= lt!1553462 Unit!69229)))

(assert (=> b!4338991 (forall!8989 newBucket!200 lambda!136860)))

(declare-fun lt!1553456 () Unit!69175)

(declare-fun Unit!69230 () Unit!69175)

(assert (=> b!4338991 (= lt!1553456 Unit!69230)))

(assert (=> b!4338991 (forall!8989 (toList!2798 lt!1553463) lambda!136860)))

(declare-fun lt!1553465 () Unit!69175)

(declare-fun Unit!69231 () Unit!69175)

(assert (=> b!4338991 (= lt!1553465 Unit!69231)))

(declare-fun lt!1553467 () Unit!69175)

(declare-fun Unit!69232 () Unit!69175)

(assert (=> b!4338991 (= lt!1553467 Unit!69232)))

(declare-fun lt!1553460 () Unit!69175)

(assert (=> b!4338991 (= lt!1553460 (addForallContainsKeyThenBeforeAdding!33 lt!1553081 lt!1553471 (_1!27293 (h!54242 newBucket!200)) (_2!27293 (h!54242 newBucket!200))))))

(assert (=> b!4338991 (forall!8989 (toList!2798 lt!1553081) lambda!136860)))

(declare-fun lt!1553472 () Unit!69175)

(assert (=> b!4338991 (= lt!1553472 lt!1553460)))

(assert (=> b!4338991 call!301591))

(declare-fun lt!1553476 () Unit!69175)

(declare-fun Unit!69233 () Unit!69175)

(assert (=> b!4338991 (= lt!1553476 Unit!69233)))

(declare-fun res!1780272 () Bool)

(assert (=> b!4338991 (= res!1780272 (forall!8989 newBucket!200 lambda!136860))))

(declare-fun e!2699803 () Bool)

(assert (=> b!4338991 (=> (not res!1780272) (not e!2699803))))

(assert (=> b!4338991 e!2699803))

(declare-fun lt!1553469 () Unit!69175)

(declare-fun Unit!69234 () Unit!69175)

(assert (=> b!4338991 (= lt!1553469 Unit!69234)))

(declare-fun b!4338992 () Bool)

(declare-fun res!1780271 () Bool)

(declare-fun e!2699804 () Bool)

(assert (=> b!4338992 (=> (not res!1780271) (not e!2699804))))

(assert (=> b!4338992 (= res!1780271 (forall!8989 (toList!2798 lt!1553081) lambda!136861))))

(assert (=> d!1275429 e!2699804))

(declare-fun res!1780273 () Bool)

(assert (=> d!1275429 (=> (not res!1780273) (not e!2699804))))

(assert (=> d!1275429 (= res!1780273 (forall!8989 newBucket!200 lambda!136861))))

(assert (=> d!1275429 (= lt!1553475 e!2699805)))

(assert (=> d!1275429 (= c!737702 ((_ is Nil!48729) newBucket!200))))

(assert (=> d!1275429 (noDuplicateKeys!407 newBucket!200)))

(assert (=> d!1275429 (= (addToMapMapFromBucket!115 newBucket!200 lt!1553081) lt!1553475)))

(declare-fun b!4338993 () Bool)

(assert (=> b!4338993 (= e!2699804 (invariantList!640 (toList!2798 lt!1553475)))))

(declare-fun b!4338994 () Bool)

(assert (=> b!4338994 (= e!2699803 (forall!8989 (toList!2798 lt!1553081) lambda!136860))))

(assert (= (and d!1275429 c!737702) b!4338990))

(assert (= (and d!1275429 (not c!737702)) b!4338991))

(assert (= (and b!4338991 res!1780272) b!4338994))

(assert (= (or b!4338990 b!4338991) bm!301585))

(assert (= (or b!4338990 b!4338991) bm!301586))

(assert (= (or b!4338990 b!4338991) bm!301584))

(assert (= (and d!1275429 res!1780273) b!4338992))

(assert (= (and b!4338992 res!1780271) b!4338993))

(declare-fun m!4936501 () Bool)

(assert (=> b!4338994 m!4936501))

(declare-fun m!4936503 () Bool)

(assert (=> b!4338992 m!4936503))

(declare-fun m!4936505 () Bool)

(assert (=> b!4338991 m!4936505))

(declare-fun m!4936507 () Bool)

(assert (=> b!4338991 m!4936507))

(declare-fun m!4936509 () Bool)

(assert (=> b!4338991 m!4936509))

(declare-fun m!4936511 () Bool)

(assert (=> b!4338991 m!4936511))

(declare-fun m!4936513 () Bool)

(assert (=> b!4338991 m!4936513))

(declare-fun m!4936515 () Bool)

(assert (=> b!4338991 m!4936515))

(declare-fun m!4936517 () Bool)

(assert (=> b!4338991 m!4936517))

(declare-fun m!4936519 () Bool)

(assert (=> b!4338991 m!4936519))

(assert (=> b!4338991 m!4936519))

(declare-fun m!4936521 () Bool)

(assert (=> b!4338991 m!4936521))

(assert (=> b!4338991 m!4936509))

(declare-fun m!4936523 () Bool)

(assert (=> b!4338991 m!4936523))

(assert (=> b!4338991 m!4936501))

(declare-fun m!4936525 () Bool)

(assert (=> bm!301586 m!4936525))

(declare-fun m!4936527 () Bool)

(assert (=> d!1275429 m!4936527))

(assert (=> d!1275429 m!4935985))

(declare-fun m!4936529 () Bool)

(assert (=> bm!301584 m!4936529))

(assert (=> bm!301585 m!4936497))

(declare-fun m!4936531 () Bool)

(assert (=> b!4338993 m!4936531))

(assert (=> b!4338704 d!1275429))

(declare-fun bs!610011 () Bool)

(declare-fun d!1275431 () Bool)

(assert (= bs!610011 (and d!1275431 start!418736)))

(declare-fun lambda!136862 () Int)

(assert (=> bs!610011 (= lambda!136862 lambda!136761)))

(declare-fun bs!610012 () Bool)

(assert (= bs!610012 (and d!1275431 d!1275315)))

(assert (=> bs!610012 (not (= lambda!136862 lambda!136767))))

(declare-fun bs!610013 () Bool)

(assert (= bs!610013 (and d!1275431 d!1275351)))

(assert (=> bs!610013 (= lambda!136862 lambda!136776)))

(declare-fun lt!1553477 () ListMap!2041)

(assert (=> d!1275431 (invariantList!640 (toList!2798 lt!1553477))))

(declare-fun e!2699806 () ListMap!2041)

(assert (=> d!1275431 (= lt!1553477 e!2699806)))

(declare-fun c!737703 () Bool)

(assert (=> d!1275431 (= c!737703 ((_ is Cons!48730) (t!355770 (toList!2797 lm!1707))))))

(assert (=> d!1275431 (forall!8987 (t!355770 (toList!2797 lm!1707)) lambda!136862)))

(assert (=> d!1275431 (= (extractMap!466 (t!355770 (toList!2797 lm!1707))) lt!1553477)))

(declare-fun b!4338995 () Bool)

(assert (=> b!4338995 (= e!2699806 (addToMapMapFromBucket!115 (_2!27294 (h!54243 (t!355770 (toList!2797 lm!1707)))) (extractMap!466 (t!355770 (t!355770 (toList!2797 lm!1707))))))))

(declare-fun b!4338996 () Bool)

(assert (=> b!4338996 (= e!2699806 (ListMap!2042 Nil!48729))))

(assert (= (and d!1275431 c!737703) b!4338995))

(assert (= (and d!1275431 (not c!737703)) b!4338996))

(declare-fun m!4936533 () Bool)

(assert (=> d!1275431 m!4936533))

(declare-fun m!4936535 () Bool)

(assert (=> d!1275431 m!4936535))

(declare-fun m!4936537 () Bool)

(assert (=> b!4338995 m!4936537))

(assert (=> b!4338995 m!4936537))

(declare-fun m!4936539 () Bool)

(assert (=> b!4338995 m!4936539))

(assert (=> b!4338704 d!1275431))

(declare-fun bs!610014 () Bool)

(declare-fun b!4338997 () Bool)

(assert (= bs!610014 (and b!4338997 b!4338984)))

(declare-fun lambda!136863 () Int)

(assert (=> bs!610014 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136863 lambda!136855))))

(declare-fun bs!610015 () Bool)

(assert (= bs!610015 (and b!4338997 b!4338983)))

(assert (=> bs!610015 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136863 lambda!136854))))

(declare-fun bs!610016 () Bool)

(assert (= bs!610016 (and b!4338997 b!4338991)))

(assert (=> bs!610016 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136863 lambda!136859))))

(declare-fun bs!610017 () Bool)

(assert (= bs!610017 (and b!4338997 d!1275429)))

(assert (=> bs!610017 (= (= (+!486 lt!1553081 lt!1553074) lt!1553475) (= lambda!136863 lambda!136861))))

(assert (=> bs!610014 (= (= (+!486 lt!1553081 lt!1553074) lt!1553450) (= lambda!136863 lambda!136856))))

(declare-fun bs!610018 () Bool)

(assert (= bs!610018 (and b!4338997 d!1275401)))

(assert (=> bs!610018 (= (= (+!486 lt!1553081 lt!1553074) lt!1553454) (= lambda!136863 lambda!136857))))

(declare-fun bs!610019 () Bool)

(assert (= bs!610019 (and b!4338997 d!1275313)))

(assert (=> bs!610019 (not (= lambda!136863 lambda!136764))))

(assert (=> bs!610016 (= (= (+!486 lt!1553081 lt!1553074) lt!1553471) (= lambda!136863 lambda!136860))))

(declare-fun bs!610020 () Bool)

(assert (= bs!610020 (and b!4338997 b!4338990)))

(assert (=> bs!610020 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136863 lambda!136858))))

(assert (=> b!4338997 true))

(declare-fun bs!610021 () Bool)

(declare-fun b!4338998 () Bool)

(assert (= bs!610021 (and b!4338998 b!4338984)))

(declare-fun lambda!136864 () Int)

(assert (=> bs!610021 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136864 lambda!136855))))

(declare-fun bs!610022 () Bool)

(assert (= bs!610022 (and b!4338998 b!4338983)))

(assert (=> bs!610022 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136864 lambda!136854))))

(declare-fun bs!610023 () Bool)

(assert (= bs!610023 (and b!4338998 b!4338991)))

(assert (=> bs!610023 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136864 lambda!136859))))

(declare-fun bs!610024 () Bool)

(assert (= bs!610024 (and b!4338998 d!1275429)))

(assert (=> bs!610024 (= (= (+!486 lt!1553081 lt!1553074) lt!1553475) (= lambda!136864 lambda!136861))))

(declare-fun bs!610025 () Bool)

(assert (= bs!610025 (and b!4338998 b!4338997)))

(assert (=> bs!610025 (= lambda!136864 lambda!136863)))

(assert (=> bs!610021 (= (= (+!486 lt!1553081 lt!1553074) lt!1553450) (= lambda!136864 lambda!136856))))

(declare-fun bs!610026 () Bool)

(assert (= bs!610026 (and b!4338998 d!1275401)))

(assert (=> bs!610026 (= (= (+!486 lt!1553081 lt!1553074) lt!1553454) (= lambda!136864 lambda!136857))))

(declare-fun bs!610027 () Bool)

(assert (= bs!610027 (and b!4338998 d!1275313)))

(assert (=> bs!610027 (not (= lambda!136864 lambda!136764))))

(assert (=> bs!610023 (= (= (+!486 lt!1553081 lt!1553074) lt!1553471) (= lambda!136864 lambda!136860))))

(declare-fun bs!610028 () Bool)

(assert (= bs!610028 (and b!4338998 b!4338990)))

(assert (=> bs!610028 (= (= (+!486 lt!1553081 lt!1553074) lt!1553081) (= lambda!136864 lambda!136858))))

(assert (=> b!4338998 true))

(declare-fun lt!1553493 () ListMap!2041)

(declare-fun lambda!136865 () Int)

(assert (=> bs!610021 (= (= lt!1553493 lt!1553081) (= lambda!136865 lambda!136855))))

(assert (=> bs!610023 (= (= lt!1553493 lt!1553081) (= lambda!136865 lambda!136859))))

(assert (=> bs!610024 (= (= lt!1553493 lt!1553475) (= lambda!136865 lambda!136861))))

(assert (=> bs!610025 (= (= lt!1553493 (+!486 lt!1553081 lt!1553074)) (= lambda!136865 lambda!136863))))

(assert (=> bs!610021 (= (= lt!1553493 lt!1553450) (= lambda!136865 lambda!136856))))

(assert (=> bs!610026 (= (= lt!1553493 lt!1553454) (= lambda!136865 lambda!136857))))

(assert (=> bs!610027 (not (= lambda!136865 lambda!136764))))

(assert (=> bs!610022 (= (= lt!1553493 lt!1553081) (= lambda!136865 lambda!136854))))

(assert (=> b!4338998 (= (= lt!1553493 (+!486 lt!1553081 lt!1553074)) (= lambda!136865 lambda!136864))))

(assert (=> bs!610023 (= (= lt!1553493 lt!1553471) (= lambda!136865 lambda!136860))))

(assert (=> bs!610028 (= (= lt!1553493 lt!1553081) (= lambda!136865 lambda!136858))))

(assert (=> b!4338998 true))

(declare-fun bs!610029 () Bool)

(declare-fun d!1275433 () Bool)

(assert (= bs!610029 (and d!1275433 b!4338984)))

(declare-fun lambda!136866 () Int)

(declare-fun lt!1553497 () ListMap!2041)

(assert (=> bs!610029 (= (= lt!1553497 lt!1553081) (= lambda!136866 lambda!136855))))

(declare-fun bs!610030 () Bool)

(assert (= bs!610030 (and d!1275433 b!4338998)))

(assert (=> bs!610030 (= (= lt!1553497 lt!1553493) (= lambda!136866 lambda!136865))))

(declare-fun bs!610031 () Bool)

(assert (= bs!610031 (and d!1275433 b!4338991)))

(assert (=> bs!610031 (= (= lt!1553497 lt!1553081) (= lambda!136866 lambda!136859))))

(declare-fun bs!610032 () Bool)

(assert (= bs!610032 (and d!1275433 d!1275429)))

(assert (=> bs!610032 (= (= lt!1553497 lt!1553475) (= lambda!136866 lambda!136861))))

(declare-fun bs!610033 () Bool)

(assert (= bs!610033 (and d!1275433 b!4338997)))

(assert (=> bs!610033 (= (= lt!1553497 (+!486 lt!1553081 lt!1553074)) (= lambda!136866 lambda!136863))))

(assert (=> bs!610029 (= (= lt!1553497 lt!1553450) (= lambda!136866 lambda!136856))))

(declare-fun bs!610034 () Bool)

(assert (= bs!610034 (and d!1275433 d!1275401)))

(assert (=> bs!610034 (= (= lt!1553497 lt!1553454) (= lambda!136866 lambda!136857))))

(declare-fun bs!610035 () Bool)

(assert (= bs!610035 (and d!1275433 d!1275313)))

(assert (=> bs!610035 (not (= lambda!136866 lambda!136764))))

(declare-fun bs!610036 () Bool)

(assert (= bs!610036 (and d!1275433 b!4338983)))

(assert (=> bs!610036 (= (= lt!1553497 lt!1553081) (= lambda!136866 lambda!136854))))

(assert (=> bs!610030 (= (= lt!1553497 (+!486 lt!1553081 lt!1553074)) (= lambda!136866 lambda!136864))))

(assert (=> bs!610031 (= (= lt!1553497 lt!1553471) (= lambda!136866 lambda!136860))))

(declare-fun bs!610037 () Bool)

(assert (= bs!610037 (and d!1275433 b!4338990)))

(assert (=> bs!610037 (= (= lt!1553497 lt!1553081) (= lambda!136866 lambda!136858))))

(assert (=> d!1275433 true))

(declare-fun bm!301587 () Bool)

(declare-fun c!737704 () Bool)

(declare-fun call!301594 () Bool)

(assert (=> bm!301587 (= call!301594 (forall!8989 (toList!2798 (+!486 lt!1553081 lt!1553074)) (ite c!737704 lambda!136863 lambda!136865)))))

(declare-fun e!2699809 () ListMap!2041)

(assert (=> b!4338997 (= e!2699809 (+!486 lt!1553081 lt!1553074))))

(declare-fun lt!1553479 () Unit!69175)

(declare-fun call!301593 () Unit!69175)

(assert (=> b!4338997 (= lt!1553479 call!301593)))

(declare-fun call!301592 () Bool)

(assert (=> b!4338997 call!301592))

(declare-fun lt!1553483 () Unit!69175)

(assert (=> b!4338997 (= lt!1553483 lt!1553479)))

(assert (=> b!4338997 call!301594))

(declare-fun lt!1553486 () Unit!69175)

(declare-fun Unit!69247 () Unit!69175)

(assert (=> b!4338997 (= lt!1553486 Unit!69247)))

(declare-fun bm!301588 () Bool)

(assert (=> bm!301588 (= call!301593 (lemmaContainsAllItsOwnKeys!33 (+!486 lt!1553081 lt!1553074)))))

(declare-fun bm!301589 () Bool)

(declare-fun lt!1553485 () ListMap!2041)

(assert (=> bm!301589 (= call!301592 (forall!8989 (ite c!737704 (toList!2798 (+!486 lt!1553081 lt!1553074)) (toList!2798 lt!1553485)) (ite c!737704 lambda!136863 lambda!136865)))))

(assert (=> b!4338998 (= e!2699809 lt!1553493)))

(assert (=> b!4338998 (= lt!1553485 (+!486 (+!486 lt!1553081 lt!1553074) (h!54242 lt!1553085)))))

(assert (=> b!4338998 (= lt!1553493 (addToMapMapFromBucket!115 (t!355769 lt!1553085) (+!486 (+!486 lt!1553081 lt!1553074) (h!54242 lt!1553085))))))

(declare-fun lt!1553492 () Unit!69175)

(assert (=> b!4338998 (= lt!1553492 call!301593)))

(assert (=> b!4338998 (forall!8989 (toList!2798 (+!486 lt!1553081 lt!1553074)) lambda!136864)))

(declare-fun lt!1553488 () Unit!69175)

(assert (=> b!4338998 (= lt!1553488 lt!1553492)))

(assert (=> b!4338998 call!301592))

(declare-fun lt!1553495 () Unit!69175)

(declare-fun Unit!69249 () Unit!69175)

(assert (=> b!4338998 (= lt!1553495 Unit!69249)))

(assert (=> b!4338998 (forall!8989 (t!355769 lt!1553085) lambda!136865)))

(declare-fun lt!1553480 () Unit!69175)

(declare-fun Unit!69250 () Unit!69175)

(assert (=> b!4338998 (= lt!1553480 Unit!69250)))

(declare-fun lt!1553481 () Unit!69175)

(declare-fun Unit!69251 () Unit!69175)

(assert (=> b!4338998 (= lt!1553481 Unit!69251)))

(declare-fun lt!1553490 () Unit!69175)

(assert (=> b!4338998 (= lt!1553490 (forallContained!1639 (toList!2798 lt!1553485) lambda!136865 (h!54242 lt!1553085)))))

(assert (=> b!4338998 (contains!10822 lt!1553485 (_1!27293 (h!54242 lt!1553085)))))

(declare-fun lt!1553496 () Unit!69175)

(declare-fun Unit!69252 () Unit!69175)

(assert (=> b!4338998 (= lt!1553496 Unit!69252)))

(assert (=> b!4338998 (contains!10822 lt!1553493 (_1!27293 (h!54242 lt!1553085)))))

(declare-fun lt!1553484 () Unit!69175)

(declare-fun Unit!69253 () Unit!69175)

(assert (=> b!4338998 (= lt!1553484 Unit!69253)))

(assert (=> b!4338998 (forall!8989 lt!1553085 lambda!136865)))

(declare-fun lt!1553478 () Unit!69175)

(declare-fun Unit!69254 () Unit!69175)

(assert (=> b!4338998 (= lt!1553478 Unit!69254)))

(assert (=> b!4338998 (forall!8989 (toList!2798 lt!1553485) lambda!136865)))

(declare-fun lt!1553487 () Unit!69175)

(declare-fun Unit!69255 () Unit!69175)

(assert (=> b!4338998 (= lt!1553487 Unit!69255)))

(declare-fun lt!1553489 () Unit!69175)

(declare-fun Unit!69256 () Unit!69175)

(assert (=> b!4338998 (= lt!1553489 Unit!69256)))

(declare-fun lt!1553482 () Unit!69175)

(assert (=> b!4338998 (= lt!1553482 (addForallContainsKeyThenBeforeAdding!33 (+!486 lt!1553081 lt!1553074) lt!1553493 (_1!27293 (h!54242 lt!1553085)) (_2!27293 (h!54242 lt!1553085))))))

(assert (=> b!4338998 (forall!8989 (toList!2798 (+!486 lt!1553081 lt!1553074)) lambda!136865)))

(declare-fun lt!1553494 () Unit!69175)

(assert (=> b!4338998 (= lt!1553494 lt!1553482)))

(assert (=> b!4338998 call!301594))

(declare-fun lt!1553498 () Unit!69175)

(declare-fun Unit!69257 () Unit!69175)

(assert (=> b!4338998 (= lt!1553498 Unit!69257)))

(declare-fun res!1780275 () Bool)

(assert (=> b!4338998 (= res!1780275 (forall!8989 lt!1553085 lambda!136865))))

(declare-fun e!2699807 () Bool)

(assert (=> b!4338998 (=> (not res!1780275) (not e!2699807))))

(assert (=> b!4338998 e!2699807))

(declare-fun lt!1553491 () Unit!69175)

(declare-fun Unit!69258 () Unit!69175)

(assert (=> b!4338998 (= lt!1553491 Unit!69258)))

(declare-fun b!4338999 () Bool)

(declare-fun res!1780274 () Bool)

(declare-fun e!2699808 () Bool)

(assert (=> b!4338999 (=> (not res!1780274) (not e!2699808))))

(assert (=> b!4338999 (= res!1780274 (forall!8989 (toList!2798 (+!486 lt!1553081 lt!1553074)) lambda!136866))))

(assert (=> d!1275433 e!2699808))

(declare-fun res!1780276 () Bool)

(assert (=> d!1275433 (=> (not res!1780276) (not e!2699808))))

(assert (=> d!1275433 (= res!1780276 (forall!8989 lt!1553085 lambda!136866))))

(assert (=> d!1275433 (= lt!1553497 e!2699809)))

(assert (=> d!1275433 (= c!737704 ((_ is Nil!48729) lt!1553085))))

(assert (=> d!1275433 (noDuplicateKeys!407 lt!1553085)))

(assert (=> d!1275433 (= (addToMapMapFromBucket!115 lt!1553085 (+!486 lt!1553081 lt!1553074)) lt!1553497)))

(declare-fun b!4339000 () Bool)

(assert (=> b!4339000 (= e!2699808 (invariantList!640 (toList!2798 lt!1553497)))))

(declare-fun b!4339001 () Bool)

(assert (=> b!4339001 (= e!2699807 (forall!8989 (toList!2798 (+!486 lt!1553081 lt!1553074)) lambda!136865))))

(assert (= (and d!1275433 c!737704) b!4338997))

(assert (= (and d!1275433 (not c!737704)) b!4338998))

(assert (= (and b!4338998 res!1780275) b!4339001))

(assert (= (or b!4338997 b!4338998) bm!301588))

(assert (= (or b!4338997 b!4338998) bm!301589))

(assert (= (or b!4338997 b!4338998) bm!301587))

(assert (= (and d!1275433 res!1780276) b!4338999))

(assert (= (and b!4338999 res!1780274) b!4339000))

(declare-fun m!4936541 () Bool)

(assert (=> b!4339001 m!4936541))

(declare-fun m!4936543 () Bool)

(assert (=> b!4338999 m!4936543))

(declare-fun m!4936545 () Bool)

(assert (=> b!4338998 m!4936545))

(declare-fun m!4936547 () Bool)

(assert (=> b!4338998 m!4936547))

(declare-fun m!4936549 () Bool)

(assert (=> b!4338998 m!4936549))

(declare-fun m!4936551 () Bool)

(assert (=> b!4338998 m!4936551))

(declare-fun m!4936553 () Bool)

(assert (=> b!4338998 m!4936553))

(declare-fun m!4936555 () Bool)

(assert (=> b!4338998 m!4936555))

(assert (=> b!4338998 m!4935967))

(declare-fun m!4936557 () Bool)

(assert (=> b!4338998 m!4936557))

(assert (=> b!4338998 m!4935967))

(declare-fun m!4936559 () Bool)

(assert (=> b!4338998 m!4936559))

(assert (=> b!4338998 m!4936559))

(declare-fun m!4936561 () Bool)

(assert (=> b!4338998 m!4936561))

(assert (=> b!4338998 m!4936549))

(declare-fun m!4936563 () Bool)

(assert (=> b!4338998 m!4936563))

(assert (=> b!4338998 m!4936541))

(declare-fun m!4936565 () Bool)

(assert (=> bm!301589 m!4936565))

(declare-fun m!4936567 () Bool)

(assert (=> d!1275433 m!4936567))

(assert (=> d!1275433 m!4935965))

(declare-fun m!4936569 () Bool)

(assert (=> bm!301587 m!4936569))

(assert (=> bm!301588 m!4935967))

(declare-fun m!4936571 () Bool)

(assert (=> bm!301588 m!4936571))

(declare-fun m!4936573 () Bool)

(assert (=> b!4339000 m!4936573))

(assert (=> b!4338704 d!1275433))

(declare-fun bs!610038 () Bool)

(declare-fun b!4339002 () Bool)

(assert (= bs!610038 (and b!4339002 b!4338984)))

(declare-fun lambda!136867 () Int)

(assert (=> bs!610038 (= lambda!136867 lambda!136855)))

(declare-fun bs!610039 () Bool)

(assert (= bs!610039 (and b!4339002 b!4338998)))

(assert (=> bs!610039 (= (= lt!1553081 lt!1553493) (= lambda!136867 lambda!136865))))

(declare-fun bs!610040 () Bool)

(assert (= bs!610040 (and b!4339002 b!4338991)))

(assert (=> bs!610040 (= lambda!136867 lambda!136859)))

(declare-fun bs!610041 () Bool)

(assert (= bs!610041 (and b!4339002 d!1275433)))

(assert (=> bs!610041 (= (= lt!1553081 lt!1553497) (= lambda!136867 lambda!136866))))

(declare-fun bs!610042 () Bool)

(assert (= bs!610042 (and b!4339002 d!1275429)))

(assert (=> bs!610042 (= (= lt!1553081 lt!1553475) (= lambda!136867 lambda!136861))))

(declare-fun bs!610043 () Bool)

(assert (= bs!610043 (and b!4339002 b!4338997)))

(assert (=> bs!610043 (= (= lt!1553081 (+!486 lt!1553081 lt!1553074)) (= lambda!136867 lambda!136863))))

(assert (=> bs!610038 (= (= lt!1553081 lt!1553450) (= lambda!136867 lambda!136856))))

(declare-fun bs!610044 () Bool)

(assert (= bs!610044 (and b!4339002 d!1275401)))

(assert (=> bs!610044 (= (= lt!1553081 lt!1553454) (= lambda!136867 lambda!136857))))

(declare-fun bs!610045 () Bool)

(assert (= bs!610045 (and b!4339002 d!1275313)))

(assert (=> bs!610045 (not (= lambda!136867 lambda!136764))))

(declare-fun bs!610046 () Bool)

(assert (= bs!610046 (and b!4339002 b!4338983)))

(assert (=> bs!610046 (= lambda!136867 lambda!136854)))

(assert (=> bs!610039 (= (= lt!1553081 (+!486 lt!1553081 lt!1553074)) (= lambda!136867 lambda!136864))))

(assert (=> bs!610040 (= (= lt!1553081 lt!1553471) (= lambda!136867 lambda!136860))))

(declare-fun bs!610047 () Bool)

(assert (= bs!610047 (and b!4339002 b!4338990)))

(assert (=> bs!610047 (= lambda!136867 lambda!136858)))

(assert (=> b!4339002 true))

(declare-fun bs!610048 () Bool)

(declare-fun b!4339003 () Bool)

(assert (= bs!610048 (and b!4339003 b!4339002)))

(declare-fun lambda!136868 () Int)

(assert (=> bs!610048 (= lambda!136868 lambda!136867)))

(declare-fun bs!610049 () Bool)

(assert (= bs!610049 (and b!4339003 b!4338984)))

(assert (=> bs!610049 (= lambda!136868 lambda!136855)))

(declare-fun bs!610050 () Bool)

(assert (= bs!610050 (and b!4339003 b!4338998)))

(assert (=> bs!610050 (= (= lt!1553081 lt!1553493) (= lambda!136868 lambda!136865))))

(declare-fun bs!610051 () Bool)

(assert (= bs!610051 (and b!4339003 b!4338991)))

(assert (=> bs!610051 (= lambda!136868 lambda!136859)))

(declare-fun bs!610052 () Bool)

(assert (= bs!610052 (and b!4339003 d!1275433)))

(assert (=> bs!610052 (= (= lt!1553081 lt!1553497) (= lambda!136868 lambda!136866))))

(declare-fun bs!610053 () Bool)

(assert (= bs!610053 (and b!4339003 d!1275429)))

(assert (=> bs!610053 (= (= lt!1553081 lt!1553475) (= lambda!136868 lambda!136861))))

(declare-fun bs!610054 () Bool)

(assert (= bs!610054 (and b!4339003 b!4338997)))

(assert (=> bs!610054 (= (= lt!1553081 (+!486 lt!1553081 lt!1553074)) (= lambda!136868 lambda!136863))))

(assert (=> bs!610049 (= (= lt!1553081 lt!1553450) (= lambda!136868 lambda!136856))))

(declare-fun bs!610055 () Bool)

(assert (= bs!610055 (and b!4339003 d!1275401)))

(assert (=> bs!610055 (= (= lt!1553081 lt!1553454) (= lambda!136868 lambda!136857))))

(declare-fun bs!610056 () Bool)

(assert (= bs!610056 (and b!4339003 d!1275313)))

(assert (=> bs!610056 (not (= lambda!136868 lambda!136764))))

(declare-fun bs!610057 () Bool)

(assert (= bs!610057 (and b!4339003 b!4338983)))

(assert (=> bs!610057 (= lambda!136868 lambda!136854)))

(assert (=> bs!610050 (= (= lt!1553081 (+!486 lt!1553081 lt!1553074)) (= lambda!136868 lambda!136864))))

(assert (=> bs!610051 (= (= lt!1553081 lt!1553471) (= lambda!136868 lambda!136860))))

(declare-fun bs!610058 () Bool)

(assert (= bs!610058 (and b!4339003 b!4338990)))

(assert (=> bs!610058 (= lambda!136868 lambda!136858)))

(assert (=> b!4339003 true))

(declare-fun lt!1553514 () ListMap!2041)

(declare-fun lambda!136869 () Int)

(assert (=> bs!610048 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136867))))

(assert (=> bs!610049 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136855))))

(assert (=> b!4339003 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136868))))

(assert (=> bs!610050 (= (= lt!1553514 lt!1553493) (= lambda!136869 lambda!136865))))

(assert (=> bs!610051 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136859))))

(assert (=> bs!610052 (= (= lt!1553514 lt!1553497) (= lambda!136869 lambda!136866))))

(assert (=> bs!610053 (= (= lt!1553514 lt!1553475) (= lambda!136869 lambda!136861))))

(assert (=> bs!610054 (= (= lt!1553514 (+!486 lt!1553081 lt!1553074)) (= lambda!136869 lambda!136863))))

(assert (=> bs!610049 (= (= lt!1553514 lt!1553450) (= lambda!136869 lambda!136856))))

(assert (=> bs!610055 (= (= lt!1553514 lt!1553454) (= lambda!136869 lambda!136857))))

(assert (=> bs!610056 (not (= lambda!136869 lambda!136764))))

(assert (=> bs!610057 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136854))))

(assert (=> bs!610050 (= (= lt!1553514 (+!486 lt!1553081 lt!1553074)) (= lambda!136869 lambda!136864))))

(assert (=> bs!610051 (= (= lt!1553514 lt!1553471) (= lambda!136869 lambda!136860))))

(assert (=> bs!610058 (= (= lt!1553514 lt!1553081) (= lambda!136869 lambda!136858))))

(assert (=> b!4339003 true))

(declare-fun bs!610059 () Bool)

(declare-fun d!1275435 () Bool)

(assert (= bs!610059 (and d!1275435 b!4339002)))

(declare-fun lt!1553518 () ListMap!2041)

(declare-fun lambda!136870 () Int)

(assert (=> bs!610059 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136867))))

(declare-fun bs!610060 () Bool)

(assert (= bs!610060 (and d!1275435 b!4338984)))

(assert (=> bs!610060 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136855))))

(declare-fun bs!610061 () Bool)

(assert (= bs!610061 (and d!1275435 b!4339003)))

(assert (=> bs!610061 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136868))))

(declare-fun bs!610062 () Bool)

(assert (= bs!610062 (and d!1275435 b!4338998)))

(assert (=> bs!610062 (= (= lt!1553518 lt!1553493) (= lambda!136870 lambda!136865))))

(declare-fun bs!610063 () Bool)

(assert (= bs!610063 (and d!1275435 b!4338991)))

(assert (=> bs!610063 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136859))))

(declare-fun bs!610064 () Bool)

(assert (= bs!610064 (and d!1275435 d!1275433)))

(assert (=> bs!610064 (= (= lt!1553518 lt!1553497) (= lambda!136870 lambda!136866))))

(declare-fun bs!610065 () Bool)

(assert (= bs!610065 (and d!1275435 d!1275429)))

(assert (=> bs!610065 (= (= lt!1553518 lt!1553475) (= lambda!136870 lambda!136861))))

(declare-fun bs!610066 () Bool)

(assert (= bs!610066 (and d!1275435 b!4338997)))

(assert (=> bs!610066 (= (= lt!1553518 (+!486 lt!1553081 lt!1553074)) (= lambda!136870 lambda!136863))))

(assert (=> bs!610060 (= (= lt!1553518 lt!1553450) (= lambda!136870 lambda!136856))))

(declare-fun bs!610067 () Bool)

(assert (= bs!610067 (and d!1275435 d!1275401)))

(assert (=> bs!610067 (= (= lt!1553518 lt!1553454) (= lambda!136870 lambda!136857))))

(declare-fun bs!610068 () Bool)

(assert (= bs!610068 (and d!1275435 d!1275313)))

(assert (=> bs!610068 (not (= lambda!136870 lambda!136764))))

(declare-fun bs!610069 () Bool)

(assert (= bs!610069 (and d!1275435 b!4338983)))

(assert (=> bs!610069 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136854))))

(assert (=> bs!610062 (= (= lt!1553518 (+!486 lt!1553081 lt!1553074)) (= lambda!136870 lambda!136864))))

(assert (=> bs!610061 (= (= lt!1553518 lt!1553514) (= lambda!136870 lambda!136869))))

(assert (=> bs!610063 (= (= lt!1553518 lt!1553471) (= lambda!136870 lambda!136860))))

(declare-fun bs!610070 () Bool)

(assert (= bs!610070 (and d!1275435 b!4338990)))

(assert (=> bs!610070 (= (= lt!1553518 lt!1553081) (= lambda!136870 lambda!136858))))

(assert (=> d!1275435 true))

(declare-fun bm!301590 () Bool)

(declare-fun call!301597 () Bool)

(declare-fun c!737705 () Bool)

(assert (=> bm!301590 (= call!301597 (forall!8989 (toList!2798 lt!1553081) (ite c!737705 lambda!136867 lambda!136869)))))

(declare-fun e!2699812 () ListMap!2041)

(assert (=> b!4339002 (= e!2699812 lt!1553081)))

(declare-fun lt!1553500 () Unit!69175)

(declare-fun call!301596 () Unit!69175)

(assert (=> b!4339002 (= lt!1553500 call!301596)))

(declare-fun call!301595 () Bool)

(assert (=> b!4339002 call!301595))

(declare-fun lt!1553504 () Unit!69175)

(assert (=> b!4339002 (= lt!1553504 lt!1553500)))

(assert (=> b!4339002 call!301597))

(declare-fun lt!1553507 () Unit!69175)

(declare-fun Unit!69260 () Unit!69175)

(assert (=> b!4339002 (= lt!1553507 Unit!69260)))

(declare-fun bm!301591 () Bool)

(assert (=> bm!301591 (= call!301596 (lemmaContainsAllItsOwnKeys!33 lt!1553081))))

(declare-fun lt!1553506 () ListMap!2041)

(declare-fun bm!301592 () Bool)

(assert (=> bm!301592 (= call!301595 (forall!8989 (ite c!737705 (toList!2798 lt!1553081) (toList!2798 lt!1553506)) (ite c!737705 lambda!136867 lambda!136869)))))

(assert (=> b!4339003 (= e!2699812 lt!1553514)))

(assert (=> b!4339003 (= lt!1553506 (+!486 lt!1553081 (h!54242 lt!1553080)))))

(assert (=> b!4339003 (= lt!1553514 (addToMapMapFromBucket!115 (t!355769 lt!1553080) (+!486 lt!1553081 (h!54242 lt!1553080))))))

(declare-fun lt!1553513 () Unit!69175)

(assert (=> b!4339003 (= lt!1553513 call!301596)))

(assert (=> b!4339003 (forall!8989 (toList!2798 lt!1553081) lambda!136868)))

(declare-fun lt!1553509 () Unit!69175)

(assert (=> b!4339003 (= lt!1553509 lt!1553513)))

(assert (=> b!4339003 call!301595))

(declare-fun lt!1553516 () Unit!69175)

(declare-fun Unit!69261 () Unit!69175)

(assert (=> b!4339003 (= lt!1553516 Unit!69261)))

(assert (=> b!4339003 (forall!8989 (t!355769 lt!1553080) lambda!136869)))

(declare-fun lt!1553501 () Unit!69175)

(declare-fun Unit!69262 () Unit!69175)

(assert (=> b!4339003 (= lt!1553501 Unit!69262)))

(declare-fun lt!1553502 () Unit!69175)

(declare-fun Unit!69263 () Unit!69175)

(assert (=> b!4339003 (= lt!1553502 Unit!69263)))

(declare-fun lt!1553511 () Unit!69175)

(assert (=> b!4339003 (= lt!1553511 (forallContained!1639 (toList!2798 lt!1553506) lambda!136869 (h!54242 lt!1553080)))))

(assert (=> b!4339003 (contains!10822 lt!1553506 (_1!27293 (h!54242 lt!1553080)))))

(declare-fun lt!1553517 () Unit!69175)

(declare-fun Unit!69264 () Unit!69175)

(assert (=> b!4339003 (= lt!1553517 Unit!69264)))

(assert (=> b!4339003 (contains!10822 lt!1553514 (_1!27293 (h!54242 lt!1553080)))))

(declare-fun lt!1553505 () Unit!69175)

(declare-fun Unit!69265 () Unit!69175)

(assert (=> b!4339003 (= lt!1553505 Unit!69265)))

(assert (=> b!4339003 (forall!8989 lt!1553080 lambda!136869)))

(declare-fun lt!1553499 () Unit!69175)

(declare-fun Unit!69266 () Unit!69175)

(assert (=> b!4339003 (= lt!1553499 Unit!69266)))

(assert (=> b!4339003 (forall!8989 (toList!2798 lt!1553506) lambda!136869)))

(declare-fun lt!1553508 () Unit!69175)

(declare-fun Unit!69267 () Unit!69175)

(assert (=> b!4339003 (= lt!1553508 Unit!69267)))

(declare-fun lt!1553510 () Unit!69175)

(declare-fun Unit!69268 () Unit!69175)

(assert (=> b!4339003 (= lt!1553510 Unit!69268)))

(declare-fun lt!1553503 () Unit!69175)

(assert (=> b!4339003 (= lt!1553503 (addForallContainsKeyThenBeforeAdding!33 lt!1553081 lt!1553514 (_1!27293 (h!54242 lt!1553080)) (_2!27293 (h!54242 lt!1553080))))))

(assert (=> b!4339003 (forall!8989 (toList!2798 lt!1553081) lambda!136869)))

(declare-fun lt!1553515 () Unit!69175)

(assert (=> b!4339003 (= lt!1553515 lt!1553503)))

(assert (=> b!4339003 call!301597))

(declare-fun lt!1553519 () Unit!69175)

(declare-fun Unit!69269 () Unit!69175)

(assert (=> b!4339003 (= lt!1553519 Unit!69269)))

(declare-fun res!1780278 () Bool)

(assert (=> b!4339003 (= res!1780278 (forall!8989 lt!1553080 lambda!136869))))

(declare-fun e!2699810 () Bool)

(assert (=> b!4339003 (=> (not res!1780278) (not e!2699810))))

(assert (=> b!4339003 e!2699810))

(declare-fun lt!1553512 () Unit!69175)

(declare-fun Unit!69270 () Unit!69175)

(assert (=> b!4339003 (= lt!1553512 Unit!69270)))

(declare-fun b!4339004 () Bool)

(declare-fun res!1780277 () Bool)

(declare-fun e!2699811 () Bool)

(assert (=> b!4339004 (=> (not res!1780277) (not e!2699811))))

(assert (=> b!4339004 (= res!1780277 (forall!8989 (toList!2798 lt!1553081) lambda!136870))))

(assert (=> d!1275435 e!2699811))

(declare-fun res!1780279 () Bool)

(assert (=> d!1275435 (=> (not res!1780279) (not e!2699811))))

(assert (=> d!1275435 (= res!1780279 (forall!8989 lt!1553080 lambda!136870))))

(assert (=> d!1275435 (= lt!1553518 e!2699812)))

(assert (=> d!1275435 (= c!737705 ((_ is Nil!48729) lt!1553080))))

(assert (=> d!1275435 (noDuplicateKeys!407 lt!1553080)))

(assert (=> d!1275435 (= (addToMapMapFromBucket!115 lt!1553080 lt!1553081) lt!1553518)))

(declare-fun b!4339005 () Bool)

(assert (=> b!4339005 (= e!2699811 (invariantList!640 (toList!2798 lt!1553518)))))

(declare-fun b!4339006 () Bool)

(assert (=> b!4339006 (= e!2699810 (forall!8989 (toList!2798 lt!1553081) lambda!136869))))

(assert (= (and d!1275435 c!737705) b!4339002))

(assert (= (and d!1275435 (not c!737705)) b!4339003))

(assert (= (and b!4339003 res!1780278) b!4339006))

(assert (= (or b!4339002 b!4339003) bm!301591))

(assert (= (or b!4339002 b!4339003) bm!301592))

(assert (= (or b!4339002 b!4339003) bm!301590))

(assert (= (and d!1275435 res!1780279) b!4339004))

(assert (= (and b!4339004 res!1780277) b!4339005))

(declare-fun m!4936575 () Bool)

(assert (=> b!4339006 m!4936575))

(declare-fun m!4936577 () Bool)

(assert (=> b!4339004 m!4936577))

(declare-fun m!4936579 () Bool)

(assert (=> b!4339003 m!4936579))

(declare-fun m!4936581 () Bool)

(assert (=> b!4339003 m!4936581))

(declare-fun m!4936583 () Bool)

(assert (=> b!4339003 m!4936583))

(declare-fun m!4936585 () Bool)

(assert (=> b!4339003 m!4936585))

(declare-fun m!4936587 () Bool)

(assert (=> b!4339003 m!4936587))

(declare-fun m!4936589 () Bool)

(assert (=> b!4339003 m!4936589))

(declare-fun m!4936591 () Bool)

(assert (=> b!4339003 m!4936591))

(declare-fun m!4936593 () Bool)

(assert (=> b!4339003 m!4936593))

(assert (=> b!4339003 m!4936593))

(declare-fun m!4936595 () Bool)

(assert (=> b!4339003 m!4936595))

(assert (=> b!4339003 m!4936583))

(declare-fun m!4936597 () Bool)

(assert (=> b!4339003 m!4936597))

(assert (=> b!4339003 m!4936575))

(declare-fun m!4936599 () Bool)

(assert (=> bm!301592 m!4936599))

(declare-fun m!4936601 () Bool)

(assert (=> d!1275435 m!4936601))

(declare-fun m!4936603 () Bool)

(assert (=> d!1275435 m!4936603))

(declare-fun m!4936605 () Bool)

(assert (=> bm!301590 m!4936605))

(assert (=> bm!301591 m!4936497))

(declare-fun m!4936607 () Bool)

(assert (=> b!4339005 m!4936607))

(assert (=> b!4338704 d!1275435))

(declare-fun d!1275437 () Bool)

(declare-fun e!2699813 () Bool)

(assert (=> d!1275437 e!2699813))

(declare-fun res!1780280 () Bool)

(assert (=> d!1275437 (=> (not res!1780280) (not e!2699813))))

(declare-fun lt!1553520 () ListLongMap!1447)

(assert (=> d!1275437 (= res!1780280 (contains!10823 lt!1553520 (_1!27294 (tuple2!48001 hash!377 lt!1553087))))))

(declare-fun lt!1553523 () List!48854)

(assert (=> d!1275437 (= lt!1553520 (ListLongMap!1448 lt!1553523))))

(declare-fun lt!1553522 () Unit!69175)

(declare-fun lt!1553521 () Unit!69175)

(assert (=> d!1275437 (= lt!1553522 lt!1553521)))

(assert (=> d!1275437 (= (getValueByKey!379 lt!1553523 (_1!27294 (tuple2!48001 hash!377 lt!1553087))) (Some!10392 (_2!27294 (tuple2!48001 hash!377 lt!1553087))))))

(assert (=> d!1275437 (= lt!1553521 (lemmaContainsTupThenGetReturnValue!161 lt!1553523 (_1!27294 (tuple2!48001 hash!377 lt!1553087)) (_2!27294 (tuple2!48001 hash!377 lt!1553087))))))

(assert (=> d!1275437 (= lt!1553523 (insertStrictlySorted!97 (toList!2797 lm!1707) (_1!27294 (tuple2!48001 hash!377 lt!1553087)) (_2!27294 (tuple2!48001 hash!377 lt!1553087))))))

(assert (=> d!1275437 (= (+!485 lm!1707 (tuple2!48001 hash!377 lt!1553087)) lt!1553520)))

(declare-fun b!4339007 () Bool)

(declare-fun res!1780281 () Bool)

(assert (=> b!4339007 (=> (not res!1780281) (not e!2699813))))

(assert (=> b!4339007 (= res!1780281 (= (getValueByKey!379 (toList!2797 lt!1553520) (_1!27294 (tuple2!48001 hash!377 lt!1553087))) (Some!10392 (_2!27294 (tuple2!48001 hash!377 lt!1553087)))))))

(declare-fun b!4339008 () Bool)

(assert (=> b!4339008 (= e!2699813 (contains!10824 (toList!2797 lt!1553520) (tuple2!48001 hash!377 lt!1553087)))))

(assert (= (and d!1275437 res!1780280) b!4339007))

(assert (= (and b!4339007 res!1780281) b!4339008))

(declare-fun m!4936609 () Bool)

(assert (=> d!1275437 m!4936609))

(declare-fun m!4936611 () Bool)

(assert (=> d!1275437 m!4936611))

(declare-fun m!4936613 () Bool)

(assert (=> d!1275437 m!4936613))

(declare-fun m!4936615 () Bool)

(assert (=> d!1275437 m!4936615))

(declare-fun m!4936617 () Bool)

(assert (=> b!4339007 m!4936617))

(declare-fun m!4936619 () Bool)

(assert (=> b!4339008 m!4936619))

(assert (=> b!4338704 d!1275437))

(declare-fun d!1275439 () Bool)

(declare-fun res!1780282 () Bool)

(declare-fun e!2699814 () Bool)

(assert (=> d!1275439 (=> res!1780282 e!2699814)))

(assert (=> d!1275439 (= res!1780282 (not ((_ is Cons!48729) lt!1553085)))))

(assert (=> d!1275439 (= (noDuplicateKeys!407 lt!1553085) e!2699814)))

(declare-fun b!4339009 () Bool)

(declare-fun e!2699815 () Bool)

(assert (=> b!4339009 (= e!2699814 e!2699815)))

(declare-fun res!1780283 () Bool)

(assert (=> b!4339009 (=> (not res!1780283) (not e!2699815))))

(assert (=> b!4339009 (= res!1780283 (not (containsKey!570 (t!355769 lt!1553085) (_1!27293 (h!54242 lt!1553085)))))))

(declare-fun b!4339010 () Bool)

(assert (=> b!4339010 (= e!2699815 (noDuplicateKeys!407 (t!355769 lt!1553085)))))

(assert (= (and d!1275439 (not res!1780282)) b!4339009))

(assert (= (and b!4339009 res!1780283) b!4339010))

(declare-fun m!4936621 () Bool)

(assert (=> b!4339009 m!4936621))

(declare-fun m!4936623 () Bool)

(assert (=> b!4339010 m!4936623))

(assert (=> b!4338704 d!1275439))

(declare-fun bs!610071 () Bool)

(declare-fun d!1275441 () Bool)

(assert (= bs!610071 (and d!1275441 start!418736)))

(declare-fun lambda!136871 () Int)

(assert (=> bs!610071 (= lambda!136871 lambda!136761)))

(declare-fun bs!610072 () Bool)

(assert (= bs!610072 (and d!1275441 d!1275315)))

(assert (=> bs!610072 (not (= lambda!136871 lambda!136767))))

(declare-fun bs!610073 () Bool)

(assert (= bs!610073 (and d!1275441 d!1275351)))

(assert (=> bs!610073 (= lambda!136871 lambda!136776)))

(declare-fun bs!610074 () Bool)

(assert (= bs!610074 (and d!1275441 d!1275431)))

(assert (=> bs!610074 (= lambda!136871 lambda!136862)))

(declare-fun lt!1553524 () ListMap!2041)

(assert (=> d!1275441 (invariantList!640 (toList!2798 lt!1553524))))

(declare-fun e!2699816 () ListMap!2041)

(assert (=> d!1275441 (= lt!1553524 e!2699816)))

(declare-fun c!737706 () Bool)

(assert (=> d!1275441 (= c!737706 ((_ is Cons!48730) (toList!2797 lt!1553075)))))

(assert (=> d!1275441 (forall!8987 (toList!2797 lt!1553075) lambda!136871)))

(assert (=> d!1275441 (= (extractMap!466 (toList!2797 lt!1553075)) lt!1553524)))

(declare-fun b!4339011 () Bool)

(assert (=> b!4339011 (= e!2699816 (addToMapMapFromBucket!115 (_2!27294 (h!54243 (toList!2797 lt!1553075))) (extractMap!466 (t!355770 (toList!2797 lt!1553075)))))))

(declare-fun b!4339012 () Bool)

(assert (=> b!4339012 (= e!2699816 (ListMap!2042 Nil!48729))))

(assert (= (and d!1275441 c!737706) b!4339011))

(assert (= (and d!1275441 (not c!737706)) b!4339012))

(declare-fun m!4936625 () Bool)

(assert (=> d!1275441 m!4936625))

(declare-fun m!4936627 () Bool)

(assert (=> d!1275441 m!4936627))

(declare-fun m!4936629 () Bool)

(assert (=> b!4339011 m!4936629))

(assert (=> b!4339011 m!4936629))

(declare-fun m!4936631 () Bool)

(assert (=> b!4339011 m!4936631))

(assert (=> b!4338704 d!1275441))

(assert (=> b!4338702 d!1275371))

(declare-fun d!1275443 () Bool)

(assert (=> d!1275443 (= (eq!197 lt!1553088 lt!1553083) (= (content!7630 (toList!2798 lt!1553088)) (content!7630 (toList!2798 lt!1553083))))))

(declare-fun bs!610075 () Bool)

(assert (= bs!610075 d!1275443))

(declare-fun m!4936633 () Bool)

(assert (=> bs!610075 m!4936633))

(assert (=> bs!610075 m!4936301))

(assert (=> b!4338713 d!1275443))

(declare-fun b!4339017 () Bool)

(declare-fun e!2699819 () Bool)

(declare-fun tp!1329246 () Bool)

(declare-fun tp!1329247 () Bool)

(assert (=> b!4339017 (= e!2699819 (and tp!1329246 tp!1329247))))

(assert (=> b!4338710 (= tp!1329232 e!2699819)))

(assert (= (and b!4338710 ((_ is Cons!48730) (toList!2797 lm!1707))) b!4339017))

(declare-fun b!4339022 () Bool)

(declare-fun e!2699822 () Bool)

(declare-fun tp!1329250 () Bool)

(assert (=> b!4339022 (= e!2699822 (and tp_is_empty!24865 tp_is_empty!24867 tp!1329250))))

(assert (=> b!4338703 (= tp!1329231 e!2699822)))

(assert (= (and b!4338703 ((_ is Cons!48729) (t!355769 newBucket!200))) b!4339022))

(declare-fun b_lambda!128523 () Bool)

(assert (= b_lambda!128513 (or start!418736 b_lambda!128523)))

(declare-fun bs!610076 () Bool)

(declare-fun d!1275445 () Bool)

(assert (= bs!610076 (and d!1275445 start!418736)))

(assert (=> bs!610076 (= (dynLambda!20579 lambda!136761 (tuple2!48001 hash!377 newBucket!200)) (noDuplicateKeys!407 (_2!27294 (tuple2!48001 hash!377 newBucket!200))))))

(declare-fun m!4936635 () Bool)

(assert (=> bs!610076 m!4936635))

(assert (=> b!4338868 d!1275445))

(declare-fun b_lambda!128525 () Bool)

(assert (= b_lambda!128511 (or start!418736 b_lambda!128525)))

(declare-fun bs!610077 () Bool)

(declare-fun d!1275447 () Bool)

(assert (= bs!610077 (and d!1275447 start!418736)))

(assert (=> bs!610077 (= (dynLambda!20579 lambda!136761 (h!54243 (toList!2797 lt!1553075))) (noDuplicateKeys!407 (_2!27294 (h!54243 (toList!2797 lt!1553075)))))))

(declare-fun m!4936637 () Bool)

(assert (=> bs!610077 m!4936637))

(assert (=> b!4338847 d!1275447))

(declare-fun b_lambda!128527 () Bool)

(assert (= b_lambda!128509 (or start!418736 b_lambda!128527)))

(declare-fun bs!610078 () Bool)

(declare-fun d!1275449 () Bool)

(assert (= bs!610078 (and d!1275449 start!418736)))

(assert (=> bs!610078 (= (dynLambda!20579 lambda!136761 lt!1553089) (noDuplicateKeys!407 (_2!27294 lt!1553089)))))

(declare-fun m!4936639 () Bool)

(assert (=> bs!610078 m!4936639))

(assert (=> d!1275361 d!1275449))

(declare-fun b_lambda!128529 () Bool)

(assert (= b_lambda!128507 (or start!418736 b_lambda!128529)))

(declare-fun bs!610079 () Bool)

(declare-fun d!1275451 () Bool)

(assert (= bs!610079 (and d!1275451 start!418736)))

(assert (=> bs!610079 (= (dynLambda!20579 lambda!136761 (h!54243 (toList!2797 lm!1707))) (noDuplicateKeys!407 (_2!27294 (h!54243 (toList!2797 lm!1707)))))))

(declare-fun m!4936641 () Bool)

(assert (=> bs!610079 m!4936641))

(assert (=> b!4338812 d!1275451))

(check-sat (not d!1275373) (not b!4338846) (not d!1275441) (not bm!301585) (not b_lambda!128527) (not b!4338984) (not b!4338994) (not bm!301553) (not b!4338820) (not b!4338999) (not b!4339004) (not b!4338836) (not d!1275437) (not d!1275363) (not bm!301581) (not b!4338998) (not b!4338986) (not d!1275433) tp_is_empty!24867 (not bm!301584) (not b!4339000) (not b!4339005) (not b_lambda!128525) (not d!1275359) (not d!1275313) (not bm!301591) (not b!4338993) (not d!1275361) (not b!4338857) (not b!4338795) (not b!4339006) (not b!4338825) (not bs!610076) (not d!1275357) (not d!1275435) (not d!1275401) (not bm!301589) (not b!4339017) (not b!4338787) (not d!1275379) (not bm!301586) (not bm!301592) (not d!1275429) (not b!4338858) (not b!4339003) (not b!4338848) (not d!1275431) (not d!1275351) (not b!4338898) (not b!4338793) (not d!1275365) (not b!4338985) (not b!4338822) (not b!4338900) (not b!4338987) (not b!4338991) (not b!4339007) (not d!1275369) (not b!4338813) (not d!1275393) (not b!4338881) (not d!1275387) tp_is_empty!24865 (not bs!610079) (not b!4339011) (not bs!610078) (not bm!301590) (not b!4339010) (not d!1275397) (not b!4339009) (not b_lambda!128523) (not b!4338794) (not bs!610077) (not bm!301583) (not bm!301582) (not bm!301587) (not b!4338992) (not d!1275375) (not d!1275367) (not d!1275317) (not b_lambda!128529) (not bm!301588) (not b!4338788) (not b!4338899) (not b!4339022) (not b!4338897) (not d!1275315) (not b!4338843) (not b!4339008) (not b!4338789) (not b!4338880) (not b!4338995) (not b!4338806) (not b!4339001) (not b!4338790) (not d!1275443) (not d!1275321))
(check-sat)
