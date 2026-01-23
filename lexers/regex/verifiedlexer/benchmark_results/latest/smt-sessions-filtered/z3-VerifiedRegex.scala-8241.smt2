; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427108 () Bool)

(assert start!427108)

(declare-fun b!4397047 () Bool)

(declare-fun e!2737776 () Bool)

(declare-fun e!2737778 () Bool)

(assert (=> b!4397047 (= e!2737776 e!2737778)))

(declare-fun res!1813088 () Bool)

(assert (=> b!4397047 (=> res!1813088 e!2737778)))

(declare-datatypes ((V!10856 0))(
  ( (V!10857 (val!16759 Int)) )
))
(declare-datatypes ((K!10610 0))(
  ( (K!10611 (val!16760 Int)) )
))
(declare-datatypes ((tuple2!48838 0))(
  ( (tuple2!48839 (_1!27713 K!10610) (_2!27713 V!10856)) )
))
(declare-datatypes ((List!49376 0))(
  ( (Nil!49252) (Cons!49252 (h!54871 tuple2!48838) (t!356310 List!49376)) )
))
(declare-datatypes ((tuple2!48840 0))(
  ( (tuple2!48841 (_1!27714 (_ BitVec 64)) (_2!27714 List!49376)) )
))
(declare-datatypes ((List!49377 0))(
  ( (Nil!49253) (Cons!49253 (h!54872 tuple2!48840) (t!356311 List!49377)) )
))
(declare-datatypes ((ListLongMap!1867 0))(
  ( (ListLongMap!1868 (toList!3217 List!49377)) )
))
(declare-fun lm!1707 () ListLongMap!1867)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4397047 (= res!1813088 (or (and ((_ is Cons!49253) (toList!3217 lm!1707)) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)) (not ((_ is Cons!49253) (toList!3217 lm!1707))) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)))))

(declare-fun e!2737773 () Bool)

(assert (=> b!4397047 e!2737773))

(declare-fun res!1813089 () Bool)

(assert (=> b!4397047 (=> (not res!1813089) (not e!2737773))))

(declare-fun lt!1603365 () ListLongMap!1867)

(declare-fun lambda!148125 () Int)

(declare-fun forall!9342 (List!49377 Int) Bool)

(assert (=> b!4397047 (= res!1813089 (forall!9342 (toList!3217 lt!1603365) lambda!148125))))

(declare-fun newBucket!200 () List!49376)

(declare-fun +!852 (ListLongMap!1867 tuple2!48840) ListLongMap!1867)

(assert (=> b!4397047 (= lt!1603365 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!78409 0))(
  ( (Unit!78410) )
))
(declare-fun lt!1603366 () Unit!78409)

(declare-fun addValidProp!263 (ListLongMap!1867 Int (_ BitVec 64) List!49376) Unit!78409)

(assert (=> b!4397047 (= lt!1603366 (addValidProp!263 lm!1707 lambda!148125 hash!377 newBucket!200))))

(assert (=> b!4397047 (forall!9342 (toList!3217 lm!1707) lambda!148125)))

(declare-fun b!4397048 () Bool)

(assert (=> b!4397048 (= e!2737773 (forall!9342 (toList!3217 lt!1603365) lambda!148125))))

(declare-fun b!4397049 () Bool)

(declare-fun e!2737777 () Bool)

(declare-fun lt!1603369 () ListLongMap!1867)

(declare-datatypes ((Hashable!5009 0))(
  ( (HashableExt!5008 (__x!30712 Int)) )
))
(declare-fun hashF!1247 () Hashable!5009)

(declare-fun allKeysSameHashInMap!721 (ListLongMap!1867 Hashable!5009) Bool)

(assert (=> b!4397049 (= e!2737777 (allKeysSameHashInMap!721 lt!1603369 hashF!1247))))

(declare-fun b!4397050 () Bool)

(declare-fun res!1813085 () Bool)

(assert (=> b!4397050 (=> res!1813085 e!2737776)))

(declare-fun noDuplicateKeys!617 (List!49376) Bool)

(assert (=> b!4397050 (= res!1813085 (not (noDuplicateKeys!617 newBucket!200)))))

(declare-fun b!4397051 () Bool)

(declare-fun res!1813081 () Bool)

(declare-fun e!2737779 () Bool)

(assert (=> b!4397051 (=> (not res!1813081) (not e!2737779))))

(declare-fun key!3918 () K!10610)

(declare-datatypes ((ListMap!2461 0))(
  ( (ListMap!2462 (toList!3218 List!49376)) )
))
(declare-fun contains!11631 (ListMap!2461 K!10610) Bool)

(declare-fun extractMap!676 (List!49377) ListMap!2461)

(assert (=> b!4397051 (= res!1813081 (contains!11631 (extractMap!676 (toList!3217 lm!1707)) key!3918))))

(declare-fun b!4397052 () Bool)

(declare-fun res!1813082 () Bool)

(assert (=> b!4397052 (=> (not res!1813082) (not e!2737779))))

(declare-fun contains!11632 (ListLongMap!1867 (_ BitVec 64)) Bool)

(assert (=> b!4397052 (= res!1813082 (contains!11632 lm!1707 hash!377))))

(declare-fun b!4397053 () Bool)

(assert (=> b!4397053 (= e!2737778 e!2737777)))

(declare-fun res!1813086 () Bool)

(assert (=> b!4397053 (=> res!1813086 e!2737777)))

(assert (=> b!4397053 (= res!1813086 (not (forall!9342 (toList!3217 lt!1603369) lambda!148125)))))

(assert (=> b!4397053 (contains!11631 (extractMap!676 (toList!3217 lt!1603369)) key!3918)))

(declare-fun tail!7097 (ListLongMap!1867) ListLongMap!1867)

(assert (=> b!4397053 (= lt!1603369 (tail!7097 lm!1707))))

(declare-fun lt!1603367 () ListMap!2461)

(assert (=> b!4397053 (contains!11631 lt!1603367 key!3918)))

(declare-fun newValue!99 () V!10856)

(declare-fun lt!1603368 () Unit!78409)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!76 (List!49376 K!10610 V!10856 ListMap!2461) Unit!78409)

(assert (=> b!4397053 (= lt!1603368 (lemmaAddToMapContainsAndNotInListThenInAcc!76 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918 newValue!99 lt!1603367))))

(assert (=> b!4397053 (= lt!1603367 (extractMap!676 (t!356311 (toList!3217 lm!1707))))))

(declare-fun e!2737780 () Bool)

(assert (=> b!4397053 e!2737780))

(declare-fun res!1813087 () Bool)

(assert (=> b!4397053 (=> (not res!1813087) (not e!2737780))))

(declare-fun containsKey!911 (List!49376 K!10610) Bool)

(declare-fun apply!11469 (ListLongMap!1867 (_ BitVec 64)) List!49376)

(assert (=> b!4397053 (= res!1813087 (not (containsKey!911 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))) key!3918)))))

(declare-fun lt!1603371 () Unit!78409)

(declare-fun lemmaNotSameHashThenCannotContainKey!88 (ListLongMap!1867 K!10610 (_ BitVec 64) Hashable!5009) Unit!78409)

(assert (=> b!4397053 (= lt!1603371 (lemmaNotSameHashThenCannotContainKey!88 lm!1707 key!3918 (_1!27714 (h!54872 (toList!3217 lm!1707))) hashF!1247))))

(declare-fun res!1813091 () Bool)

(assert (=> start!427108 (=> (not res!1813091) (not e!2737779))))

(assert (=> start!427108 (= res!1813091 (forall!9342 (toList!3217 lm!1707) lambda!148125))))

(assert (=> start!427108 e!2737779))

(declare-fun e!2737774 () Bool)

(assert (=> start!427108 e!2737774))

(assert (=> start!427108 true))

(declare-fun e!2737775 () Bool)

(declare-fun inv!64796 (ListLongMap!1867) Bool)

(assert (=> start!427108 (and (inv!64796 lm!1707) e!2737775)))

(declare-fun tp_is_empty!25705 () Bool)

(assert (=> start!427108 tp_is_empty!25705))

(declare-fun tp_is_empty!25707 () Bool)

(assert (=> start!427108 tp_is_empty!25707))

(declare-fun b!4397054 () Bool)

(declare-fun res!1813084 () Bool)

(assert (=> b!4397054 (=> (not res!1813084) (not e!2737779))))

(declare-fun hash!1839 (Hashable!5009 K!10610) (_ BitVec 64))

(assert (=> b!4397054 (= res!1813084 (= (hash!1839 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1331674 () Bool)

(declare-fun b!4397055 () Bool)

(assert (=> b!4397055 (= e!2737774 (and tp_is_empty!25705 tp_is_empty!25707 tp!1331674))))

(declare-fun b!4397056 () Bool)

(assert (=> b!4397056 (= e!2737780 (not (containsKey!911 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918)))))

(declare-fun b!4397057 () Bool)

(declare-fun res!1813083 () Bool)

(assert (=> b!4397057 (=> (not res!1813083) (not e!2737779))))

(assert (=> b!4397057 (= res!1813083 (allKeysSameHashInMap!721 lm!1707 hashF!1247))))

(declare-fun b!4397058 () Bool)

(declare-fun res!1813090 () Bool)

(assert (=> b!4397058 (=> (not res!1813090) (not e!2737779))))

(declare-fun allKeysSameHash!575 (List!49376 (_ BitVec 64) Hashable!5009) Bool)

(assert (=> b!4397058 (= res!1813090 (allKeysSameHash!575 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4397059 () Bool)

(declare-fun tp!1331673 () Bool)

(assert (=> b!4397059 (= e!2737775 tp!1331673)))

(declare-fun b!4397060 () Bool)

(assert (=> b!4397060 (= e!2737779 (not e!2737776))))

(declare-fun res!1813080 () Bool)

(assert (=> b!4397060 (=> res!1813080 e!2737776)))

(declare-fun lt!1603373 () List!49376)

(declare-fun removePairForKey!585 (List!49376 K!10610) List!49376)

(assert (=> b!4397060 (= res!1813080 (not (= newBucket!200 (Cons!49252 (tuple2!48839 key!3918 newValue!99) (removePairForKey!585 lt!1603373 key!3918)))))))

(declare-fun lt!1603372 () Unit!78409)

(declare-fun lt!1603370 () tuple2!48840)

(declare-fun forallContained!1977 (List!49377 Int tuple2!48840) Unit!78409)

(assert (=> b!4397060 (= lt!1603372 (forallContained!1977 (toList!3217 lm!1707) lambda!148125 lt!1603370))))

(declare-fun contains!11633 (List!49377 tuple2!48840) Bool)

(assert (=> b!4397060 (contains!11633 (toList!3217 lm!1707) lt!1603370)))

(assert (=> b!4397060 (= lt!1603370 (tuple2!48841 hash!377 lt!1603373))))

(declare-fun lt!1603374 () Unit!78409)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!462 (List!49377 (_ BitVec 64) List!49376) Unit!78409)

(assert (=> b!4397060 (= lt!1603374 (lemmaGetValueByKeyImpliesContainsTuple!462 (toList!3217 lm!1707) hash!377 lt!1603373))))

(assert (=> b!4397060 (= lt!1603373 (apply!11469 lm!1707 hash!377))))

(assert (= (and start!427108 res!1813091) b!4397057))

(assert (= (and b!4397057 res!1813083) b!4397054))

(assert (= (and b!4397054 res!1813084) b!4397058))

(assert (= (and b!4397058 res!1813090) b!4397051))

(assert (= (and b!4397051 res!1813081) b!4397052))

(assert (= (and b!4397052 res!1813082) b!4397060))

(assert (= (and b!4397060 (not res!1813080)) b!4397050))

(assert (= (and b!4397050 (not res!1813085)) b!4397047))

(assert (= (and b!4397047 res!1813089) b!4397048))

(assert (= (and b!4397047 (not res!1813088)) b!4397053))

(assert (= (and b!4397053 res!1813087) b!4397056))

(assert (= (and b!4397053 (not res!1813086)) b!4397049))

(assert (= (and start!427108 ((_ is Cons!49252) newBucket!200)) b!4397055))

(assert (= start!427108 b!4397059))

(declare-fun m!5057925 () Bool)

(assert (=> b!4397053 m!5057925))

(declare-fun m!5057927 () Bool)

(assert (=> b!4397053 m!5057927))

(declare-fun m!5057929 () Bool)

(assert (=> b!4397053 m!5057929))

(declare-fun m!5057931 () Bool)

(assert (=> b!4397053 m!5057931))

(declare-fun m!5057933 () Bool)

(assert (=> b!4397053 m!5057933))

(declare-fun m!5057935 () Bool)

(assert (=> b!4397053 m!5057935))

(declare-fun m!5057937 () Bool)

(assert (=> b!4397053 m!5057937))

(assert (=> b!4397053 m!5057927))

(declare-fun m!5057939 () Bool)

(assert (=> b!4397053 m!5057939))

(declare-fun m!5057941 () Bool)

(assert (=> b!4397053 m!5057941))

(assert (=> b!4397053 m!5057941))

(declare-fun m!5057943 () Bool)

(assert (=> b!4397053 m!5057943))

(declare-fun m!5057945 () Bool)

(assert (=> b!4397054 m!5057945))

(declare-fun m!5057947 () Bool)

(assert (=> b!4397051 m!5057947))

(assert (=> b!4397051 m!5057947))

(declare-fun m!5057949 () Bool)

(assert (=> b!4397051 m!5057949))

(declare-fun m!5057951 () Bool)

(assert (=> b!4397048 m!5057951))

(declare-fun m!5057953 () Bool)

(assert (=> b!4397050 m!5057953))

(assert (=> b!4397047 m!5057951))

(declare-fun m!5057955 () Bool)

(assert (=> b!4397047 m!5057955))

(declare-fun m!5057957 () Bool)

(assert (=> b!4397047 m!5057957))

(declare-fun m!5057959 () Bool)

(assert (=> b!4397047 m!5057959))

(declare-fun m!5057961 () Bool)

(assert (=> b!4397056 m!5057961))

(assert (=> start!427108 m!5057959))

(declare-fun m!5057963 () Bool)

(assert (=> start!427108 m!5057963))

(declare-fun m!5057965 () Bool)

(assert (=> b!4397057 m!5057965))

(declare-fun m!5057967 () Bool)

(assert (=> b!4397058 m!5057967))

(declare-fun m!5057969 () Bool)

(assert (=> b!4397052 m!5057969))

(declare-fun m!5057971 () Bool)

(assert (=> b!4397049 m!5057971))

(declare-fun m!5057973 () Bool)

(assert (=> b!4397060 m!5057973))

(declare-fun m!5057975 () Bool)

(assert (=> b!4397060 m!5057975))

(declare-fun m!5057977 () Bool)

(assert (=> b!4397060 m!5057977))

(declare-fun m!5057979 () Bool)

(assert (=> b!4397060 m!5057979))

(declare-fun m!5057981 () Bool)

(assert (=> b!4397060 m!5057981))

(check-sat (not b!4397060) (not start!427108) tp_is_empty!25707 (not b!4397052) (not b!4397057) (not b!4397055) (not b!4397050) (not b!4397056) (not b!4397048) (not b!4397047) (not b!4397053) (not b!4397059) (not b!4397049) tp_is_empty!25705 (not b!4397054) (not b!4397051) (not b!4397058))
(check-sat)
(get-model)

(declare-fun d!1324980 () Bool)

(declare-fun res!1813116 () Bool)

(declare-fun e!2737805 () Bool)

(assert (=> d!1324980 (=> res!1813116 e!2737805)))

(assert (=> d!1324980 (= res!1813116 (not ((_ is Cons!49252) newBucket!200)))))

(assert (=> d!1324980 (= (noDuplicateKeys!617 newBucket!200) e!2737805)))

(declare-fun b!4397092 () Bool)

(declare-fun e!2737806 () Bool)

(assert (=> b!4397092 (= e!2737805 e!2737806)))

(declare-fun res!1813117 () Bool)

(assert (=> b!4397092 (=> (not res!1813117) (not e!2737806))))

(assert (=> b!4397092 (= res!1813117 (not (containsKey!911 (t!356310 newBucket!200) (_1!27713 (h!54871 newBucket!200)))))))

(declare-fun b!4397093 () Bool)

(assert (=> b!4397093 (= e!2737806 (noDuplicateKeys!617 (t!356310 newBucket!200)))))

(assert (= (and d!1324980 (not res!1813116)) b!4397092))

(assert (= (and b!4397092 res!1813117) b!4397093))

(declare-fun m!5058019 () Bool)

(assert (=> b!4397092 m!5058019))

(declare-fun m!5058021 () Bool)

(assert (=> b!4397093 m!5058021))

(assert (=> b!4397050 d!1324980))

(declare-fun d!1324984 () Bool)

(declare-datatypes ((Option!10600 0))(
  ( (None!10599) (Some!10599 (v!43677 List!49376)) )
))
(declare-fun get!16031 (Option!10600) List!49376)

(declare-fun getValueByKey!586 (List!49377 (_ BitVec 64)) Option!10600)

(assert (=> d!1324984 (= (apply!11469 lm!1707 hash!377) (get!16031 (getValueByKey!586 (toList!3217 lm!1707) hash!377)))))

(declare-fun bs!726907 () Bool)

(assert (= bs!726907 d!1324984))

(declare-fun m!5058035 () Bool)

(assert (=> bs!726907 m!5058035))

(assert (=> bs!726907 m!5058035))

(declare-fun m!5058037 () Bool)

(assert (=> bs!726907 m!5058037))

(assert (=> b!4397060 d!1324984))

(declare-fun d!1324994 () Bool)

(declare-fun lt!1603404 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7856 (List!49377) (InoxSet tuple2!48840))

(assert (=> d!1324994 (= lt!1603404 (select (content!7856 (toList!3217 lm!1707)) lt!1603370))))

(declare-fun e!2737826 () Bool)

(assert (=> d!1324994 (= lt!1603404 e!2737826)))

(declare-fun res!1813136 () Bool)

(assert (=> d!1324994 (=> (not res!1813136) (not e!2737826))))

(assert (=> d!1324994 (= res!1813136 ((_ is Cons!49253) (toList!3217 lm!1707)))))

(assert (=> d!1324994 (= (contains!11633 (toList!3217 lm!1707) lt!1603370) lt!1603404)))

(declare-fun b!4397112 () Bool)

(declare-fun e!2737825 () Bool)

(assert (=> b!4397112 (= e!2737826 e!2737825)))

(declare-fun res!1813137 () Bool)

(assert (=> b!4397112 (=> res!1813137 e!2737825)))

(assert (=> b!4397112 (= res!1813137 (= (h!54872 (toList!3217 lm!1707)) lt!1603370))))

(declare-fun b!4397113 () Bool)

(assert (=> b!4397113 (= e!2737825 (contains!11633 (t!356311 (toList!3217 lm!1707)) lt!1603370))))

(assert (= (and d!1324994 res!1813136) b!4397112))

(assert (= (and b!4397112 (not res!1813137)) b!4397113))

(declare-fun m!5058039 () Bool)

(assert (=> d!1324994 m!5058039))

(declare-fun m!5058041 () Bool)

(assert (=> d!1324994 m!5058041))

(declare-fun m!5058043 () Bool)

(assert (=> b!4397113 m!5058043))

(assert (=> b!4397060 d!1324994))

(declare-fun d!1324996 () Bool)

(declare-fun dynLambda!20750 (Int tuple2!48840) Bool)

(assert (=> d!1324996 (dynLambda!20750 lambda!148125 lt!1603370)))

(declare-fun lt!1603423 () Unit!78409)

(declare-fun choose!27515 (List!49377 Int tuple2!48840) Unit!78409)

(assert (=> d!1324996 (= lt!1603423 (choose!27515 (toList!3217 lm!1707) lambda!148125 lt!1603370))))

(declare-fun e!2737833 () Bool)

(assert (=> d!1324996 e!2737833))

(declare-fun res!1813140 () Bool)

(assert (=> d!1324996 (=> (not res!1813140) (not e!2737833))))

(assert (=> d!1324996 (= res!1813140 (forall!9342 (toList!3217 lm!1707) lambda!148125))))

(assert (=> d!1324996 (= (forallContained!1977 (toList!3217 lm!1707) lambda!148125 lt!1603370) lt!1603423)))

(declare-fun b!4397124 () Bool)

(assert (=> b!4397124 (= e!2737833 (contains!11633 (toList!3217 lm!1707) lt!1603370))))

(assert (= (and d!1324996 res!1813140) b!4397124))

(declare-fun b_lambda!139287 () Bool)

(assert (=> (not b_lambda!139287) (not d!1324996)))

(declare-fun m!5058045 () Bool)

(assert (=> d!1324996 m!5058045))

(declare-fun m!5058047 () Bool)

(assert (=> d!1324996 m!5058047))

(assert (=> d!1324996 m!5057959))

(assert (=> b!4397124 m!5057979))

(assert (=> b!4397060 d!1324996))

(declare-fun b!4397152 () Bool)

(declare-fun e!2737852 () List!49376)

(assert (=> b!4397152 (= e!2737852 (t!356310 lt!1603373))))

(declare-fun b!4397155 () Bool)

(declare-fun e!2737853 () List!49376)

(assert (=> b!4397155 (= e!2737853 Nil!49252)))

(declare-fun b!4397154 () Bool)

(assert (=> b!4397154 (= e!2737853 (Cons!49252 (h!54871 lt!1603373) (removePairForKey!585 (t!356310 lt!1603373) key!3918)))))

(declare-fun d!1324998 () Bool)

(declare-fun lt!1603437 () List!49376)

(assert (=> d!1324998 (not (containsKey!911 lt!1603437 key!3918))))

(assert (=> d!1324998 (= lt!1603437 e!2737852)))

(declare-fun c!748538 () Bool)

(assert (=> d!1324998 (= c!748538 (and ((_ is Cons!49252) lt!1603373) (= (_1!27713 (h!54871 lt!1603373)) key!3918)))))

(assert (=> d!1324998 (noDuplicateKeys!617 lt!1603373)))

(assert (=> d!1324998 (= (removePairForKey!585 lt!1603373 key!3918) lt!1603437)))

(declare-fun b!4397153 () Bool)

(assert (=> b!4397153 (= e!2737852 e!2737853)))

(declare-fun c!748537 () Bool)

(assert (=> b!4397153 (= c!748537 ((_ is Cons!49252) lt!1603373))))

(assert (= (and d!1324998 c!748538) b!4397152))

(assert (= (and d!1324998 (not c!748538)) b!4397153))

(assert (= (and b!4397153 c!748537) b!4397154))

(assert (= (and b!4397153 (not c!748537)) b!4397155))

(declare-fun m!5058075 () Bool)

(assert (=> b!4397154 m!5058075))

(declare-fun m!5058077 () Bool)

(assert (=> d!1324998 m!5058077))

(declare-fun m!5058079 () Bool)

(assert (=> d!1324998 m!5058079))

(assert (=> b!4397060 d!1324998))

(declare-fun d!1325006 () Bool)

(assert (=> d!1325006 (contains!11633 (toList!3217 lm!1707) (tuple2!48841 hash!377 lt!1603373))))

(declare-fun lt!1603440 () Unit!78409)

(declare-fun choose!27516 (List!49377 (_ BitVec 64) List!49376) Unit!78409)

(assert (=> d!1325006 (= lt!1603440 (choose!27516 (toList!3217 lm!1707) hash!377 lt!1603373))))

(declare-fun e!2737856 () Bool)

(assert (=> d!1325006 e!2737856))

(declare-fun res!1813152 () Bool)

(assert (=> d!1325006 (=> (not res!1813152) (not e!2737856))))

(declare-fun isStrictlySorted!170 (List!49377) Bool)

(assert (=> d!1325006 (= res!1813152 (isStrictlySorted!170 (toList!3217 lm!1707)))))

(assert (=> d!1325006 (= (lemmaGetValueByKeyImpliesContainsTuple!462 (toList!3217 lm!1707) hash!377 lt!1603373) lt!1603440)))

(declare-fun b!4397158 () Bool)

(assert (=> b!4397158 (= e!2737856 (= (getValueByKey!586 (toList!3217 lm!1707) hash!377) (Some!10599 lt!1603373)))))

(assert (= (and d!1325006 res!1813152) b!4397158))

(declare-fun m!5058081 () Bool)

(assert (=> d!1325006 m!5058081))

(declare-fun m!5058083 () Bool)

(assert (=> d!1325006 m!5058083))

(declare-fun m!5058085 () Bool)

(assert (=> d!1325006 m!5058085))

(assert (=> b!4397158 m!5058035))

(assert (=> b!4397060 d!1325006))

(declare-fun bm!306040 () Bool)

(declare-fun call!306045 () Bool)

(declare-datatypes ((List!49379 0))(
  ( (Nil!49255) (Cons!49255 (h!54876 K!10610) (t!356313 List!49379)) )
))
(declare-fun e!2737916 () List!49379)

(declare-fun contains!11635 (List!49379 K!10610) Bool)

(assert (=> bm!306040 (= call!306045 (contains!11635 e!2737916 key!3918))))

(declare-fun c!748564 () Bool)

(declare-fun c!748563 () Bool)

(assert (=> bm!306040 (= c!748564 c!748563)))

(declare-fun b!4397248 () Bool)

(declare-fun e!2737917 () Unit!78409)

(declare-fun e!2737915 () Unit!78409)

(assert (=> b!4397248 (= e!2737917 e!2737915)))

(declare-fun c!748562 () Bool)

(assert (=> b!4397248 (= c!748562 call!306045)))

(declare-fun b!4397249 () Bool)

(assert (=> b!4397249 false))

(declare-fun lt!1603497 () Unit!78409)

(declare-fun lt!1603495 () Unit!78409)

(assert (=> b!4397249 (= lt!1603497 lt!1603495)))

(declare-fun containsKey!914 (List!49376 K!10610) Bool)

(assert (=> b!4397249 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!189 (List!49376 K!10610) Unit!78409)

(assert (=> b!4397249 (= lt!1603495 (lemmaInGetKeysListThenContainsKey!189 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(declare-fun Unit!78418 () Unit!78409)

(assert (=> b!4397249 (= e!2737915 Unit!78418)))

(declare-fun b!4397250 () Bool)

(declare-fun keys!16731 (ListMap!2461) List!49379)

(assert (=> b!4397250 (= e!2737916 (keys!16731 (extractMap!676 (toList!3217 lm!1707))))))

(declare-fun b!4397251 () Bool)

(declare-fun e!2737914 () Bool)

(assert (=> b!4397251 (= e!2737914 (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(declare-fun d!1325008 () Bool)

(declare-fun e!2737913 () Bool)

(assert (=> d!1325008 e!2737913))

(declare-fun res!1813179 () Bool)

(assert (=> d!1325008 (=> res!1813179 e!2737913)))

(declare-fun e!2737912 () Bool)

(assert (=> d!1325008 (= res!1813179 e!2737912)))

(declare-fun res!1813180 () Bool)

(assert (=> d!1325008 (=> (not res!1813180) (not e!2737912))))

(declare-fun lt!1603499 () Bool)

(assert (=> d!1325008 (= res!1813180 (not lt!1603499))))

(declare-fun lt!1603493 () Bool)

(assert (=> d!1325008 (= lt!1603499 lt!1603493)))

(declare-fun lt!1603498 () Unit!78409)

(assert (=> d!1325008 (= lt!1603498 e!2737917)))

(assert (=> d!1325008 (= c!748563 lt!1603493)))

(assert (=> d!1325008 (= lt!1603493 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(assert (=> d!1325008 (= (contains!11631 (extractMap!676 (toList!3217 lm!1707)) key!3918) lt!1603499)))

(declare-fun b!4397247 () Bool)

(declare-fun lt!1603494 () Unit!78409)

(assert (=> b!4397247 (= e!2737917 lt!1603494)))

(declare-fun lt!1603500 () Unit!78409)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!496 (List!49376 K!10610) Unit!78409)

(assert (=> b!4397247 (= lt!1603500 (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(declare-datatypes ((Option!10601 0))(
  ( (None!10600) (Some!10600 (v!43678 V!10856)) )
))
(declare-fun isDefined!7893 (Option!10601) Bool)

(declare-fun getValueByKey!587 (List!49376 K!10610) Option!10601)

(assert (=> b!4397247 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(declare-fun lt!1603496 () Unit!78409)

(assert (=> b!4397247 (= lt!1603496 lt!1603500)))

(declare-fun lemmaInListThenGetKeysListContains!188 (List!49376 K!10610) Unit!78409)

(assert (=> b!4397247 (= lt!1603494 (lemmaInListThenGetKeysListContains!188 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(assert (=> b!4397247 call!306045))

(declare-fun b!4397252 () Bool)

(declare-fun Unit!78419 () Unit!78409)

(assert (=> b!4397252 (= e!2737915 Unit!78419)))

(declare-fun b!4397253 () Bool)

(assert (=> b!4397253 (= e!2737912 (not (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lm!1707))) key!3918)))))

(declare-fun b!4397254 () Bool)

(assert (=> b!4397254 (= e!2737913 e!2737914)))

(declare-fun res!1813181 () Bool)

(assert (=> b!4397254 (=> (not res!1813181) (not e!2737914))))

(assert (=> b!4397254 (= res!1813181 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918)))))

(declare-fun b!4397255 () Bool)

(declare-fun getKeysList!191 (List!49376) List!49379)

(assert (=> b!4397255 (= e!2737916 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))

(assert (= (and d!1325008 c!748563) b!4397247))

(assert (= (and d!1325008 (not c!748563)) b!4397248))

(assert (= (and b!4397248 c!748562) b!4397249))

(assert (= (and b!4397248 (not c!748562)) b!4397252))

(assert (= (or b!4397247 b!4397248) bm!306040))

(assert (= (and bm!306040 c!748564) b!4397255))

(assert (= (and bm!306040 (not c!748564)) b!4397250))

(assert (= (and d!1325008 res!1813180) b!4397253))

(assert (= (and d!1325008 (not res!1813179)) b!4397254))

(assert (= (and b!4397254 res!1813181) b!4397251))

(declare-fun m!5058195 () Bool)

(assert (=> d!1325008 m!5058195))

(declare-fun m!5058197 () Bool)

(assert (=> b!4397247 m!5058197))

(declare-fun m!5058199 () Bool)

(assert (=> b!4397247 m!5058199))

(assert (=> b!4397247 m!5058199))

(declare-fun m!5058201 () Bool)

(assert (=> b!4397247 m!5058201))

(declare-fun m!5058203 () Bool)

(assert (=> b!4397247 m!5058203))

(declare-fun m!5058205 () Bool)

(assert (=> bm!306040 m!5058205))

(declare-fun m!5058207 () Bool)

(assert (=> b!4397255 m!5058207))

(assert (=> b!4397250 m!5057947))

(declare-fun m!5058209 () Bool)

(assert (=> b!4397250 m!5058209))

(assert (=> b!4397249 m!5058195))

(declare-fun m!5058211 () Bool)

(assert (=> b!4397249 m!5058211))

(assert (=> b!4397254 m!5058199))

(assert (=> b!4397254 m!5058199))

(assert (=> b!4397254 m!5058201))

(assert (=> b!4397251 m!5057947))

(assert (=> b!4397251 m!5058209))

(assert (=> b!4397251 m!5058209))

(declare-fun m!5058213 () Bool)

(assert (=> b!4397251 m!5058213))

(assert (=> b!4397253 m!5057947))

(assert (=> b!4397253 m!5058209))

(assert (=> b!4397253 m!5058209))

(assert (=> b!4397253 m!5058213))

(assert (=> b!4397051 d!1325008))

(declare-fun bs!726942 () Bool)

(declare-fun d!1325050 () Bool)

(assert (= bs!726942 (and d!1325050 start!427108)))

(declare-fun lambda!148143 () Int)

(assert (=> bs!726942 (= lambda!148143 lambda!148125)))

(declare-fun lt!1603503 () ListMap!2461)

(declare-fun invariantList!744 (List!49376) Bool)

(assert (=> d!1325050 (invariantList!744 (toList!3218 lt!1603503))))

(declare-fun e!2737920 () ListMap!2461)

(assert (=> d!1325050 (= lt!1603503 e!2737920)))

(declare-fun c!748567 () Bool)

(assert (=> d!1325050 (= c!748567 ((_ is Cons!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325050 (forall!9342 (toList!3217 lm!1707) lambda!148143)))

(assert (=> d!1325050 (= (extractMap!676 (toList!3217 lm!1707)) lt!1603503)))

(declare-fun b!4397260 () Bool)

(declare-fun addToMapMapFromBucket!289 (List!49376 ListMap!2461) ListMap!2461)

(assert (=> b!4397260 (= e!2737920 (addToMapMapFromBucket!289 (_2!27714 (h!54872 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lm!1707)))))))

(declare-fun b!4397261 () Bool)

(assert (=> b!4397261 (= e!2737920 (ListMap!2462 Nil!49252))))

(assert (= (and d!1325050 c!748567) b!4397260))

(assert (= (and d!1325050 (not c!748567)) b!4397261))

(declare-fun m!5058215 () Bool)

(assert (=> d!1325050 m!5058215))

(declare-fun m!5058217 () Bool)

(assert (=> d!1325050 m!5058217))

(assert (=> b!4397260 m!5057931))

(assert (=> b!4397260 m!5057931))

(declare-fun m!5058219 () Bool)

(assert (=> b!4397260 m!5058219))

(assert (=> b!4397051 d!1325050))

(declare-fun d!1325052 () Bool)

(declare-fun res!1813186 () Bool)

(declare-fun e!2737925 () Bool)

(assert (=> d!1325052 (=> res!1813186 e!2737925)))

(assert (=> d!1325052 (= res!1813186 (and ((_ is Cons!49252) (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707))))) (= (_1!27713 (h!54871 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))))) key!3918)))))

(assert (=> d!1325052 (= (containsKey!911 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))) key!3918) e!2737925)))

(declare-fun b!4397266 () Bool)

(declare-fun e!2737926 () Bool)

(assert (=> b!4397266 (= e!2737925 e!2737926)))

(declare-fun res!1813187 () Bool)

(assert (=> b!4397266 (=> (not res!1813187) (not e!2737926))))

(assert (=> b!4397266 (= res!1813187 ((_ is Cons!49252) (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707))))))))

(declare-fun b!4397267 () Bool)

(assert (=> b!4397267 (= e!2737926 (containsKey!911 (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707))))) key!3918))))

(assert (= (and d!1325052 (not res!1813186)) b!4397266))

(assert (= (and b!4397266 res!1813187) b!4397267))

(declare-fun m!5058221 () Bool)

(assert (=> b!4397267 m!5058221))

(assert (=> b!4397053 d!1325052))

(declare-fun d!1325054 () Bool)

(assert (=> d!1325054 (contains!11631 lt!1603367 key!3918)))

(declare-fun lt!1603506 () Unit!78409)

(declare-fun choose!27517 (List!49376 K!10610 V!10856 ListMap!2461) Unit!78409)

(assert (=> d!1325054 (= lt!1603506 (choose!27517 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918 newValue!99 lt!1603367))))

(assert (=> d!1325054 (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707))))))

(assert (=> d!1325054 (= (lemmaAddToMapContainsAndNotInListThenInAcc!76 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918 newValue!99 lt!1603367) lt!1603506)))

(declare-fun bs!726943 () Bool)

(assert (= bs!726943 d!1325054))

(assert (=> bs!726943 m!5057933))

(declare-fun m!5058223 () Bool)

(assert (=> bs!726943 m!5058223))

(declare-fun m!5058225 () Bool)

(assert (=> bs!726943 m!5058225))

(assert (=> b!4397053 d!1325054))

(declare-fun bs!726944 () Bool)

(declare-fun d!1325056 () Bool)

(assert (= bs!726944 (and d!1325056 start!427108)))

(declare-fun lambda!148144 () Int)

(assert (=> bs!726944 (= lambda!148144 lambda!148125)))

(declare-fun bs!726945 () Bool)

(assert (= bs!726945 (and d!1325056 d!1325050)))

(assert (=> bs!726945 (= lambda!148144 lambda!148143)))

(declare-fun lt!1603507 () ListMap!2461)

(assert (=> d!1325056 (invariantList!744 (toList!3218 lt!1603507))))

(declare-fun e!2737927 () ListMap!2461)

(assert (=> d!1325056 (= lt!1603507 e!2737927)))

(declare-fun c!748568 () Bool)

(assert (=> d!1325056 (= c!748568 ((_ is Cons!49253) (toList!3217 lt!1603369)))))

(assert (=> d!1325056 (forall!9342 (toList!3217 lt!1603369) lambda!148144)))

(assert (=> d!1325056 (= (extractMap!676 (toList!3217 lt!1603369)) lt!1603507)))

(declare-fun b!4397268 () Bool)

(assert (=> b!4397268 (= e!2737927 (addToMapMapFromBucket!289 (_2!27714 (h!54872 (toList!3217 lt!1603369))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))))))

(declare-fun b!4397269 () Bool)

(assert (=> b!4397269 (= e!2737927 (ListMap!2462 Nil!49252))))

(assert (= (and d!1325056 c!748568) b!4397268))

(assert (= (and d!1325056 (not c!748568)) b!4397269))

(declare-fun m!5058227 () Bool)

(assert (=> d!1325056 m!5058227))

(declare-fun m!5058229 () Bool)

(assert (=> d!1325056 m!5058229))

(declare-fun m!5058231 () Bool)

(assert (=> b!4397268 m!5058231))

(assert (=> b!4397268 m!5058231))

(declare-fun m!5058233 () Bool)

(assert (=> b!4397268 m!5058233))

(assert (=> b!4397053 d!1325056))

(declare-fun d!1325058 () Bool)

(declare-fun res!1813192 () Bool)

(declare-fun e!2737932 () Bool)

(assert (=> d!1325058 (=> res!1813192 e!2737932)))

(assert (=> d!1325058 (= res!1813192 ((_ is Nil!49253) (toList!3217 lt!1603369)))))

(assert (=> d!1325058 (= (forall!9342 (toList!3217 lt!1603369) lambda!148125) e!2737932)))

(declare-fun b!4397274 () Bool)

(declare-fun e!2737933 () Bool)

(assert (=> b!4397274 (= e!2737932 e!2737933)))

(declare-fun res!1813193 () Bool)

(assert (=> b!4397274 (=> (not res!1813193) (not e!2737933))))

(assert (=> b!4397274 (= res!1813193 (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lt!1603369))))))

(declare-fun b!4397275 () Bool)

(assert (=> b!4397275 (= e!2737933 (forall!9342 (t!356311 (toList!3217 lt!1603369)) lambda!148125))))

(assert (= (and d!1325058 (not res!1813192)) b!4397274))

(assert (= (and b!4397274 res!1813193) b!4397275))

(declare-fun b_lambda!139303 () Bool)

(assert (=> (not b_lambda!139303) (not b!4397274)))

(declare-fun m!5058235 () Bool)

(assert (=> b!4397274 m!5058235))

(declare-fun m!5058237 () Bool)

(assert (=> b!4397275 m!5058237))

(assert (=> b!4397053 d!1325058))

(declare-fun bm!306041 () Bool)

(declare-fun call!306046 () Bool)

(declare-fun e!2737938 () List!49379)

(assert (=> bm!306041 (= call!306046 (contains!11635 e!2737938 key!3918))))

(declare-fun c!748571 () Bool)

(declare-fun c!748570 () Bool)

(assert (=> bm!306041 (= c!748571 c!748570)))

(declare-fun b!4397277 () Bool)

(declare-fun e!2737939 () Unit!78409)

(declare-fun e!2737937 () Unit!78409)

(assert (=> b!4397277 (= e!2737939 e!2737937)))

(declare-fun c!748569 () Bool)

(assert (=> b!4397277 (= c!748569 call!306046)))

(declare-fun b!4397278 () Bool)

(assert (=> b!4397278 false))

(declare-fun lt!1603512 () Unit!78409)

(declare-fun lt!1603510 () Unit!78409)

(assert (=> b!4397278 (= lt!1603512 lt!1603510)))

(assert (=> b!4397278 (containsKey!914 (toList!3218 lt!1603367) key!3918)))

(assert (=> b!4397278 (= lt!1603510 (lemmaInGetKeysListThenContainsKey!189 (toList!3218 lt!1603367) key!3918))))

(declare-fun Unit!78420 () Unit!78409)

(assert (=> b!4397278 (= e!2737937 Unit!78420)))

(declare-fun b!4397279 () Bool)

(assert (=> b!4397279 (= e!2737938 (keys!16731 lt!1603367))))

(declare-fun b!4397280 () Bool)

(declare-fun e!2737936 () Bool)

(assert (=> b!4397280 (= e!2737936 (contains!11635 (keys!16731 lt!1603367) key!3918))))

(declare-fun d!1325060 () Bool)

(declare-fun e!2737935 () Bool)

(assert (=> d!1325060 e!2737935))

(declare-fun res!1813194 () Bool)

(assert (=> d!1325060 (=> res!1813194 e!2737935)))

(declare-fun e!2737934 () Bool)

(assert (=> d!1325060 (= res!1813194 e!2737934)))

(declare-fun res!1813195 () Bool)

(assert (=> d!1325060 (=> (not res!1813195) (not e!2737934))))

(declare-fun lt!1603514 () Bool)

(assert (=> d!1325060 (= res!1813195 (not lt!1603514))))

(declare-fun lt!1603508 () Bool)

(assert (=> d!1325060 (= lt!1603514 lt!1603508)))

(declare-fun lt!1603513 () Unit!78409)

(assert (=> d!1325060 (= lt!1603513 e!2737939)))

(assert (=> d!1325060 (= c!748570 lt!1603508)))

(assert (=> d!1325060 (= lt!1603508 (containsKey!914 (toList!3218 lt!1603367) key!3918))))

(assert (=> d!1325060 (= (contains!11631 lt!1603367 key!3918) lt!1603514)))

(declare-fun b!4397276 () Bool)

(declare-fun lt!1603509 () Unit!78409)

(assert (=> b!4397276 (= e!2737939 lt!1603509)))

(declare-fun lt!1603515 () Unit!78409)

(assert (=> b!4397276 (= lt!1603515 (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 lt!1603367) key!3918))))

(assert (=> b!4397276 (isDefined!7893 (getValueByKey!587 (toList!3218 lt!1603367) key!3918))))

(declare-fun lt!1603511 () Unit!78409)

(assert (=> b!4397276 (= lt!1603511 lt!1603515)))

(assert (=> b!4397276 (= lt!1603509 (lemmaInListThenGetKeysListContains!188 (toList!3218 lt!1603367) key!3918))))

(assert (=> b!4397276 call!306046))

(declare-fun b!4397281 () Bool)

(declare-fun Unit!78421 () Unit!78409)

(assert (=> b!4397281 (= e!2737937 Unit!78421)))

(declare-fun b!4397282 () Bool)

(assert (=> b!4397282 (= e!2737934 (not (contains!11635 (keys!16731 lt!1603367) key!3918)))))

(declare-fun b!4397283 () Bool)

(assert (=> b!4397283 (= e!2737935 e!2737936)))

(declare-fun res!1813196 () Bool)

(assert (=> b!4397283 (=> (not res!1813196) (not e!2737936))))

(assert (=> b!4397283 (= res!1813196 (isDefined!7893 (getValueByKey!587 (toList!3218 lt!1603367) key!3918)))))

(declare-fun b!4397284 () Bool)

(assert (=> b!4397284 (= e!2737938 (getKeysList!191 (toList!3218 lt!1603367)))))

(assert (= (and d!1325060 c!748570) b!4397276))

(assert (= (and d!1325060 (not c!748570)) b!4397277))

(assert (= (and b!4397277 c!748569) b!4397278))

(assert (= (and b!4397277 (not c!748569)) b!4397281))

(assert (= (or b!4397276 b!4397277) bm!306041))

(assert (= (and bm!306041 c!748571) b!4397284))

(assert (= (and bm!306041 (not c!748571)) b!4397279))

(assert (= (and d!1325060 res!1813195) b!4397282))

(assert (= (and d!1325060 (not res!1813194)) b!4397283))

(assert (= (and b!4397283 res!1813196) b!4397280))

(declare-fun m!5058239 () Bool)

(assert (=> d!1325060 m!5058239))

(declare-fun m!5058241 () Bool)

(assert (=> b!4397276 m!5058241))

(declare-fun m!5058243 () Bool)

(assert (=> b!4397276 m!5058243))

(assert (=> b!4397276 m!5058243))

(declare-fun m!5058245 () Bool)

(assert (=> b!4397276 m!5058245))

(declare-fun m!5058247 () Bool)

(assert (=> b!4397276 m!5058247))

(declare-fun m!5058249 () Bool)

(assert (=> bm!306041 m!5058249))

(declare-fun m!5058251 () Bool)

(assert (=> b!4397284 m!5058251))

(declare-fun m!5058253 () Bool)

(assert (=> b!4397279 m!5058253))

(assert (=> b!4397278 m!5058239))

(declare-fun m!5058255 () Bool)

(assert (=> b!4397278 m!5058255))

(assert (=> b!4397283 m!5058243))

(assert (=> b!4397283 m!5058243))

(assert (=> b!4397283 m!5058245))

(assert (=> b!4397280 m!5058253))

(assert (=> b!4397280 m!5058253))

(declare-fun m!5058257 () Bool)

(assert (=> b!4397280 m!5058257))

(assert (=> b!4397282 m!5058253))

(assert (=> b!4397282 m!5058253))

(assert (=> b!4397282 m!5058257))

(assert (=> b!4397053 d!1325060))

(declare-fun d!1325062 () Bool)

(declare-fun tail!7099 (List!49377) List!49377)

(assert (=> d!1325062 (= (tail!7097 lm!1707) (ListLongMap!1868 (tail!7099 (toList!3217 lm!1707))))))

(declare-fun bs!726946 () Bool)

(assert (= bs!726946 d!1325062))

(declare-fun m!5058259 () Bool)

(assert (=> bs!726946 m!5058259))

(assert (=> b!4397053 d!1325062))

(declare-fun bs!726947 () Bool)

(declare-fun d!1325064 () Bool)

(assert (= bs!726947 (and d!1325064 start!427108)))

(declare-fun lambda!148145 () Int)

(assert (=> bs!726947 (= lambda!148145 lambda!148125)))

(declare-fun bs!726948 () Bool)

(assert (= bs!726948 (and d!1325064 d!1325050)))

(assert (=> bs!726948 (= lambda!148145 lambda!148143)))

(declare-fun bs!726949 () Bool)

(assert (= bs!726949 (and d!1325064 d!1325056)))

(assert (=> bs!726949 (= lambda!148145 lambda!148144)))

(declare-fun lt!1603516 () ListMap!2461)

(assert (=> d!1325064 (invariantList!744 (toList!3218 lt!1603516))))

(declare-fun e!2737940 () ListMap!2461)

(assert (=> d!1325064 (= lt!1603516 e!2737940)))

(declare-fun c!748572 () Bool)

(assert (=> d!1325064 (= c!748572 ((_ is Cons!49253) (t!356311 (toList!3217 lm!1707))))))

(assert (=> d!1325064 (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148145)))

(assert (=> d!1325064 (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603516)))

(declare-fun b!4397285 () Bool)

(assert (=> b!4397285 (= e!2737940 (addToMapMapFromBucket!289 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))))))

(declare-fun b!4397286 () Bool)

(assert (=> b!4397286 (= e!2737940 (ListMap!2462 Nil!49252))))

(assert (= (and d!1325064 c!748572) b!4397285))

(assert (= (and d!1325064 (not c!748572)) b!4397286))

(declare-fun m!5058261 () Bool)

(assert (=> d!1325064 m!5058261))

(declare-fun m!5058263 () Bool)

(assert (=> d!1325064 m!5058263))

(declare-fun m!5058265 () Bool)

(assert (=> b!4397285 m!5058265))

(assert (=> b!4397285 m!5058265))

(declare-fun m!5058267 () Bool)

(assert (=> b!4397285 m!5058267))

(assert (=> b!4397053 d!1325064))

(declare-fun bs!726950 () Bool)

(declare-fun d!1325066 () Bool)

(assert (= bs!726950 (and d!1325066 start!427108)))

(declare-fun lambda!148148 () Int)

(assert (=> bs!726950 (= lambda!148148 lambda!148125)))

(declare-fun bs!726951 () Bool)

(assert (= bs!726951 (and d!1325066 d!1325050)))

(assert (=> bs!726951 (= lambda!148148 lambda!148143)))

(declare-fun bs!726952 () Bool)

(assert (= bs!726952 (and d!1325066 d!1325056)))

(assert (=> bs!726952 (= lambda!148148 lambda!148144)))

(declare-fun bs!726953 () Bool)

(assert (= bs!726953 (and d!1325066 d!1325064)))

(assert (=> bs!726953 (= lambda!148148 lambda!148145)))

(assert (=> d!1325066 (not (containsKey!911 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))) key!3918))))

(declare-fun lt!1603519 () Unit!78409)

(declare-fun choose!27518 (ListLongMap!1867 K!10610 (_ BitVec 64) Hashable!5009) Unit!78409)

(assert (=> d!1325066 (= lt!1603519 (choose!27518 lm!1707 key!3918 (_1!27714 (h!54872 (toList!3217 lm!1707))) hashF!1247))))

(assert (=> d!1325066 (forall!9342 (toList!3217 lm!1707) lambda!148148)))

(assert (=> d!1325066 (= (lemmaNotSameHashThenCannotContainKey!88 lm!1707 key!3918 (_1!27714 (h!54872 (toList!3217 lm!1707))) hashF!1247) lt!1603519)))

(declare-fun bs!726954 () Bool)

(assert (= bs!726954 d!1325066))

(assert (=> bs!726954 m!5057941))

(assert (=> bs!726954 m!5057941))

(assert (=> bs!726954 m!5057943))

(declare-fun m!5058269 () Bool)

(assert (=> bs!726954 m!5058269))

(declare-fun m!5058271 () Bool)

(assert (=> bs!726954 m!5058271))

(assert (=> b!4397053 d!1325066))

(declare-fun d!1325068 () Bool)

(assert (=> d!1325068 (= (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))) (get!16031 (getValueByKey!586 (toList!3217 lm!1707) (_1!27714 (h!54872 (toList!3217 lm!1707))))))))

(declare-fun bs!726955 () Bool)

(assert (= bs!726955 d!1325068))

(declare-fun m!5058273 () Bool)

(assert (=> bs!726955 m!5058273))

(assert (=> bs!726955 m!5058273))

(declare-fun m!5058275 () Bool)

(assert (=> bs!726955 m!5058275))

(assert (=> b!4397053 d!1325068))

(declare-fun bm!306042 () Bool)

(declare-fun call!306047 () Bool)

(declare-fun e!2737945 () List!49379)

(assert (=> bm!306042 (= call!306047 (contains!11635 e!2737945 key!3918))))

(declare-fun c!748575 () Bool)

(declare-fun c!748574 () Bool)

(assert (=> bm!306042 (= c!748575 c!748574)))

(declare-fun b!4397288 () Bool)

(declare-fun e!2737946 () Unit!78409)

(declare-fun e!2737944 () Unit!78409)

(assert (=> b!4397288 (= e!2737946 e!2737944)))

(declare-fun c!748573 () Bool)

(assert (=> b!4397288 (= c!748573 call!306047)))

(declare-fun b!4397289 () Bool)

(assert (=> b!4397289 false))

(declare-fun lt!1603524 () Unit!78409)

(declare-fun lt!1603522 () Unit!78409)

(assert (=> b!4397289 (= lt!1603524 lt!1603522)))

(assert (=> b!4397289 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918)))

(assert (=> b!4397289 (= lt!1603522 (lemmaInGetKeysListThenContainsKey!189 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(declare-fun Unit!78422 () Unit!78409)

(assert (=> b!4397289 (= e!2737944 Unit!78422)))

(declare-fun b!4397290 () Bool)

(assert (=> b!4397290 (= e!2737945 (keys!16731 (extractMap!676 (toList!3217 lt!1603369))))))

(declare-fun b!4397291 () Bool)

(declare-fun e!2737943 () Bool)

(assert (=> b!4397291 (= e!2737943 (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(declare-fun d!1325070 () Bool)

(declare-fun e!2737942 () Bool)

(assert (=> d!1325070 e!2737942))

(declare-fun res!1813197 () Bool)

(assert (=> d!1325070 (=> res!1813197 e!2737942)))

(declare-fun e!2737941 () Bool)

(assert (=> d!1325070 (= res!1813197 e!2737941)))

(declare-fun res!1813198 () Bool)

(assert (=> d!1325070 (=> (not res!1813198) (not e!2737941))))

(declare-fun lt!1603526 () Bool)

(assert (=> d!1325070 (= res!1813198 (not lt!1603526))))

(declare-fun lt!1603520 () Bool)

(assert (=> d!1325070 (= lt!1603526 lt!1603520)))

(declare-fun lt!1603525 () Unit!78409)

(assert (=> d!1325070 (= lt!1603525 e!2737946)))

(assert (=> d!1325070 (= c!748574 lt!1603520)))

(assert (=> d!1325070 (= lt!1603520 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> d!1325070 (= (contains!11631 (extractMap!676 (toList!3217 lt!1603369)) key!3918) lt!1603526)))

(declare-fun b!4397287 () Bool)

(declare-fun lt!1603521 () Unit!78409)

(assert (=> b!4397287 (= e!2737946 lt!1603521)))

(declare-fun lt!1603527 () Unit!78409)

(assert (=> b!4397287 (= lt!1603527 (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> b!4397287 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(declare-fun lt!1603523 () Unit!78409)

(assert (=> b!4397287 (= lt!1603523 lt!1603527)))

(assert (=> b!4397287 (= lt!1603521 (lemmaInListThenGetKeysListContains!188 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> b!4397287 call!306047))

(declare-fun b!4397292 () Bool)

(declare-fun Unit!78423 () Unit!78409)

(assert (=> b!4397292 (= e!2737944 Unit!78423)))

(declare-fun b!4397293 () Bool)

(assert (=> b!4397293 (= e!2737941 (not (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lt!1603369))) key!3918)))))

(declare-fun b!4397294 () Bool)

(assert (=> b!4397294 (= e!2737942 e!2737943)))

(declare-fun res!1813199 () Bool)

(assert (=> b!4397294 (=> (not res!1813199) (not e!2737943))))

(assert (=> b!4397294 (= res!1813199 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918)))))

(declare-fun b!4397295 () Bool)

(assert (=> b!4397295 (= e!2737945 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))

(assert (= (and d!1325070 c!748574) b!4397287))

(assert (= (and d!1325070 (not c!748574)) b!4397288))

(assert (= (and b!4397288 c!748573) b!4397289))

(assert (= (and b!4397288 (not c!748573)) b!4397292))

(assert (= (or b!4397287 b!4397288) bm!306042))

(assert (= (and bm!306042 c!748575) b!4397295))

(assert (= (and bm!306042 (not c!748575)) b!4397290))

(assert (= (and d!1325070 res!1813198) b!4397293))

(assert (= (and d!1325070 (not res!1813197)) b!4397294))

(assert (= (and b!4397294 res!1813199) b!4397291))

(declare-fun m!5058277 () Bool)

(assert (=> d!1325070 m!5058277))

(declare-fun m!5058279 () Bool)

(assert (=> b!4397287 m!5058279))

(declare-fun m!5058281 () Bool)

(assert (=> b!4397287 m!5058281))

(assert (=> b!4397287 m!5058281))

(declare-fun m!5058283 () Bool)

(assert (=> b!4397287 m!5058283))

(declare-fun m!5058285 () Bool)

(assert (=> b!4397287 m!5058285))

(declare-fun m!5058287 () Bool)

(assert (=> bm!306042 m!5058287))

(declare-fun m!5058289 () Bool)

(assert (=> b!4397295 m!5058289))

(assert (=> b!4397290 m!5057927))

(declare-fun m!5058291 () Bool)

(assert (=> b!4397290 m!5058291))

(assert (=> b!4397289 m!5058277))

(declare-fun m!5058293 () Bool)

(assert (=> b!4397289 m!5058293))

(assert (=> b!4397294 m!5058281))

(assert (=> b!4397294 m!5058281))

(assert (=> b!4397294 m!5058283))

(assert (=> b!4397291 m!5057927))

(assert (=> b!4397291 m!5058291))

(assert (=> b!4397291 m!5058291))

(declare-fun m!5058295 () Bool)

(assert (=> b!4397291 m!5058295))

(assert (=> b!4397293 m!5057927))

(assert (=> b!4397293 m!5058291))

(assert (=> b!4397293 m!5058291))

(assert (=> b!4397293 m!5058295))

(assert (=> b!4397053 d!1325070))

(declare-fun d!1325072 () Bool)

(declare-fun e!2737952 () Bool)

(assert (=> d!1325072 e!2737952))

(declare-fun res!1813202 () Bool)

(assert (=> d!1325072 (=> res!1813202 e!2737952)))

(declare-fun lt!1603536 () Bool)

(assert (=> d!1325072 (= res!1813202 (not lt!1603536))))

(declare-fun lt!1603538 () Bool)

(assert (=> d!1325072 (= lt!1603536 lt!1603538)))

(declare-fun lt!1603539 () Unit!78409)

(declare-fun e!2737951 () Unit!78409)

(assert (=> d!1325072 (= lt!1603539 e!2737951)))

(declare-fun c!748578 () Bool)

(assert (=> d!1325072 (= c!748578 lt!1603538)))

(declare-fun containsKey!915 (List!49377 (_ BitVec 64)) Bool)

(assert (=> d!1325072 (= lt!1603538 (containsKey!915 (toList!3217 lm!1707) hash!377))))

(assert (=> d!1325072 (= (contains!11632 lm!1707 hash!377) lt!1603536)))

(declare-fun b!4397302 () Bool)

(declare-fun lt!1603537 () Unit!78409)

(assert (=> b!4397302 (= e!2737951 lt!1603537)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!497 (List!49377 (_ BitVec 64)) Unit!78409)

(assert (=> b!4397302 (= lt!1603537 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!3217 lm!1707) hash!377))))

(declare-fun isDefined!7894 (Option!10600) Bool)

(assert (=> b!4397302 (isDefined!7894 (getValueByKey!586 (toList!3217 lm!1707) hash!377))))

(declare-fun b!4397303 () Bool)

(declare-fun Unit!78424 () Unit!78409)

(assert (=> b!4397303 (= e!2737951 Unit!78424)))

(declare-fun b!4397304 () Bool)

(assert (=> b!4397304 (= e!2737952 (isDefined!7894 (getValueByKey!586 (toList!3217 lm!1707) hash!377)))))

(assert (= (and d!1325072 c!748578) b!4397302))

(assert (= (and d!1325072 (not c!748578)) b!4397303))

(assert (= (and d!1325072 (not res!1813202)) b!4397304))

(declare-fun m!5058297 () Bool)

(assert (=> d!1325072 m!5058297))

(declare-fun m!5058299 () Bool)

(assert (=> b!4397302 m!5058299))

(assert (=> b!4397302 m!5058035))

(assert (=> b!4397302 m!5058035))

(declare-fun m!5058301 () Bool)

(assert (=> b!4397302 m!5058301))

(assert (=> b!4397304 m!5058035))

(assert (=> b!4397304 m!5058035))

(assert (=> b!4397304 m!5058301))

(assert (=> b!4397052 d!1325072))

(declare-fun d!1325074 () Bool)

(declare-fun hash!1843 (Hashable!5009 K!10610) (_ BitVec 64))

(assert (=> d!1325074 (= (hash!1839 hashF!1247 key!3918) (hash!1843 hashF!1247 key!3918))))

(declare-fun bs!726956 () Bool)

(assert (= bs!726956 d!1325074))

(declare-fun m!5058303 () Bool)

(assert (=> bs!726956 m!5058303))

(assert (=> b!4397054 d!1325074))

(declare-fun bs!726957 () Bool)

(declare-fun d!1325076 () Bool)

(assert (= bs!726957 (and d!1325076 d!1325050)))

(declare-fun lambda!148151 () Int)

(assert (=> bs!726957 (not (= lambda!148151 lambda!148143))))

(declare-fun bs!726958 () Bool)

(assert (= bs!726958 (and d!1325076 start!427108)))

(assert (=> bs!726958 (not (= lambda!148151 lambda!148125))))

(declare-fun bs!726959 () Bool)

(assert (= bs!726959 (and d!1325076 d!1325064)))

(assert (=> bs!726959 (not (= lambda!148151 lambda!148145))))

(declare-fun bs!726960 () Bool)

(assert (= bs!726960 (and d!1325076 d!1325066)))

(assert (=> bs!726960 (not (= lambda!148151 lambda!148148))))

(declare-fun bs!726961 () Bool)

(assert (= bs!726961 (and d!1325076 d!1325056)))

(assert (=> bs!726961 (not (= lambda!148151 lambda!148144))))

(assert (=> d!1325076 true))

(assert (=> d!1325076 (= (allKeysSameHashInMap!721 lm!1707 hashF!1247) (forall!9342 (toList!3217 lm!1707) lambda!148151))))

(declare-fun bs!726962 () Bool)

(assert (= bs!726962 d!1325076))

(declare-fun m!5058305 () Bool)

(assert (=> bs!726962 m!5058305))

(assert (=> b!4397057 d!1325076))

(declare-fun d!1325078 () Bool)

(declare-fun res!1813203 () Bool)

(declare-fun e!2737953 () Bool)

(assert (=> d!1325078 (=> res!1813203 e!2737953)))

(assert (=> d!1325078 (= res!1813203 (and ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lm!1707)))) (= (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))) key!3918)))))

(assert (=> d!1325078 (= (containsKey!911 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918) e!2737953)))

(declare-fun b!4397307 () Bool)

(declare-fun e!2737954 () Bool)

(assert (=> b!4397307 (= e!2737953 e!2737954)))

(declare-fun res!1813204 () Bool)

(assert (=> b!4397307 (=> (not res!1813204) (not e!2737954))))

(assert (=> b!4397307 (= res!1813204 ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(declare-fun b!4397308 () Bool)

(assert (=> b!4397308 (= e!2737954 (containsKey!911 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707)))) key!3918))))

(assert (= (and d!1325078 (not res!1813203)) b!4397307))

(assert (= (and b!4397307 res!1813204) b!4397308))

(declare-fun m!5058307 () Bool)

(assert (=> b!4397308 m!5058307))

(assert (=> b!4397056 d!1325078))

(declare-fun d!1325080 () Bool)

(assert (=> d!1325080 true))

(assert (=> d!1325080 true))

(declare-fun lambda!148154 () Int)

(declare-fun forall!9344 (List!49376 Int) Bool)

(assert (=> d!1325080 (= (allKeysSameHash!575 newBucket!200 hash!377 hashF!1247) (forall!9344 newBucket!200 lambda!148154))))

(declare-fun bs!726963 () Bool)

(assert (= bs!726963 d!1325080))

(declare-fun m!5058309 () Bool)

(assert (=> bs!726963 m!5058309))

(assert (=> b!4397058 d!1325080))

(declare-fun d!1325082 () Bool)

(declare-fun res!1813205 () Bool)

(declare-fun e!2737955 () Bool)

(assert (=> d!1325082 (=> res!1813205 e!2737955)))

(assert (=> d!1325082 (= res!1813205 ((_ is Nil!49253) (toList!3217 lt!1603365)))))

(assert (=> d!1325082 (= (forall!9342 (toList!3217 lt!1603365) lambda!148125) e!2737955)))

(declare-fun b!4397313 () Bool)

(declare-fun e!2737956 () Bool)

(assert (=> b!4397313 (= e!2737955 e!2737956)))

(declare-fun res!1813206 () Bool)

(assert (=> b!4397313 (=> (not res!1813206) (not e!2737956))))

(assert (=> b!4397313 (= res!1813206 (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lt!1603365))))))

(declare-fun b!4397314 () Bool)

(assert (=> b!4397314 (= e!2737956 (forall!9342 (t!356311 (toList!3217 lt!1603365)) lambda!148125))))

(assert (= (and d!1325082 (not res!1813205)) b!4397313))

(assert (= (and b!4397313 res!1813206) b!4397314))

(declare-fun b_lambda!139305 () Bool)

(assert (=> (not b_lambda!139305) (not b!4397313)))

(declare-fun m!5058311 () Bool)

(assert (=> b!4397313 m!5058311))

(declare-fun m!5058313 () Bool)

(assert (=> b!4397314 m!5058313))

(assert (=> b!4397047 d!1325082))

(declare-fun d!1325084 () Bool)

(declare-fun e!2737959 () Bool)

(assert (=> d!1325084 e!2737959))

(declare-fun res!1813212 () Bool)

(assert (=> d!1325084 (=> (not res!1813212) (not e!2737959))))

(declare-fun lt!1603548 () ListLongMap!1867)

(assert (=> d!1325084 (= res!1813212 (contains!11632 lt!1603548 (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun lt!1603550 () List!49377)

(assert (=> d!1325084 (= lt!1603548 (ListLongMap!1868 lt!1603550))))

(declare-fun lt!1603549 () Unit!78409)

(declare-fun lt!1603551 () Unit!78409)

(assert (=> d!1325084 (= lt!1603549 lt!1603551)))

(assert (=> d!1325084 (= (getValueByKey!586 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200))) (Some!10599 (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!339 (List!49377 (_ BitVec 64) List!49376) Unit!78409)

(assert (=> d!1325084 (= lt!1603551 (lemmaContainsTupThenGetReturnValue!339 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!198 (List!49377 (_ BitVec 64) List!49376) List!49377)

(assert (=> d!1325084 (= lt!1603550 (insertStrictlySorted!198 (toList!3217 lm!1707) (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(assert (=> d!1325084 (= (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200)) lt!1603548)))

(declare-fun b!4397319 () Bool)

(declare-fun res!1813211 () Bool)

(assert (=> b!4397319 (=> (not res!1813211) (not e!2737959))))

(assert (=> b!4397319 (= res!1813211 (= (getValueByKey!586 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200))) (Some!10599 (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(declare-fun b!4397320 () Bool)

(assert (=> b!4397320 (= e!2737959 (contains!11633 (toList!3217 lt!1603548) (tuple2!48841 hash!377 newBucket!200)))))

(assert (= (and d!1325084 res!1813212) b!4397319))

(assert (= (and b!4397319 res!1813211) b!4397320))

(declare-fun m!5058315 () Bool)

(assert (=> d!1325084 m!5058315))

(declare-fun m!5058317 () Bool)

(assert (=> d!1325084 m!5058317))

(declare-fun m!5058319 () Bool)

(assert (=> d!1325084 m!5058319))

(declare-fun m!5058321 () Bool)

(assert (=> d!1325084 m!5058321))

(declare-fun m!5058323 () Bool)

(assert (=> b!4397319 m!5058323))

(declare-fun m!5058325 () Bool)

(assert (=> b!4397320 m!5058325))

(assert (=> b!4397047 d!1325084))

(declare-fun d!1325086 () Bool)

(assert (=> d!1325086 (forall!9342 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200))) lambda!148125)))

(declare-fun lt!1603554 () Unit!78409)

(declare-fun choose!27519 (ListLongMap!1867 Int (_ BitVec 64) List!49376) Unit!78409)

(assert (=> d!1325086 (= lt!1603554 (choose!27519 lm!1707 lambda!148125 hash!377 newBucket!200))))

(declare-fun e!2737962 () Bool)

(assert (=> d!1325086 e!2737962))

(declare-fun res!1813215 () Bool)

(assert (=> d!1325086 (=> (not res!1813215) (not e!2737962))))

(assert (=> d!1325086 (= res!1813215 (forall!9342 (toList!3217 lm!1707) lambda!148125))))

(assert (=> d!1325086 (= (addValidProp!263 lm!1707 lambda!148125 hash!377 newBucket!200) lt!1603554)))

(declare-fun b!4397324 () Bool)

(assert (=> b!4397324 (= e!2737962 (dynLambda!20750 lambda!148125 (tuple2!48841 hash!377 newBucket!200)))))

(assert (= (and d!1325086 res!1813215) b!4397324))

(declare-fun b_lambda!139307 () Bool)

(assert (=> (not b_lambda!139307) (not b!4397324)))

(assert (=> d!1325086 m!5057955))

(declare-fun m!5058327 () Bool)

(assert (=> d!1325086 m!5058327))

(declare-fun m!5058329 () Bool)

(assert (=> d!1325086 m!5058329))

(assert (=> d!1325086 m!5057959))

(declare-fun m!5058331 () Bool)

(assert (=> b!4397324 m!5058331))

(assert (=> b!4397047 d!1325086))

(declare-fun d!1325088 () Bool)

(declare-fun res!1813216 () Bool)

(declare-fun e!2737963 () Bool)

(assert (=> d!1325088 (=> res!1813216 e!2737963)))

(assert (=> d!1325088 (= res!1813216 ((_ is Nil!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325088 (= (forall!9342 (toList!3217 lm!1707) lambda!148125) e!2737963)))

(declare-fun b!4397325 () Bool)

(declare-fun e!2737964 () Bool)

(assert (=> b!4397325 (= e!2737963 e!2737964)))

(declare-fun res!1813217 () Bool)

(assert (=> b!4397325 (=> (not res!1813217) (not e!2737964))))

(assert (=> b!4397325 (= res!1813217 (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lm!1707))))))

(declare-fun b!4397326 () Bool)

(assert (=> b!4397326 (= e!2737964 (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148125))))

(assert (= (and d!1325088 (not res!1813216)) b!4397325))

(assert (= (and b!4397325 res!1813217) b!4397326))

(declare-fun b_lambda!139309 () Bool)

(assert (=> (not b_lambda!139309) (not b!4397325)))

(declare-fun m!5058333 () Bool)

(assert (=> b!4397325 m!5058333))

(declare-fun m!5058335 () Bool)

(assert (=> b!4397326 m!5058335))

(assert (=> b!4397047 d!1325088))

(assert (=> start!427108 d!1325088))

(declare-fun d!1325090 () Bool)

(assert (=> d!1325090 (= (inv!64796 lm!1707) (isStrictlySorted!170 (toList!3217 lm!1707)))))

(declare-fun bs!726964 () Bool)

(assert (= bs!726964 d!1325090))

(assert (=> bs!726964 m!5058085))

(assert (=> start!427108 d!1325090))

(declare-fun bs!726965 () Bool)

(declare-fun d!1325092 () Bool)

(assert (= bs!726965 (and d!1325092 d!1325050)))

(declare-fun lambda!148155 () Int)

(assert (=> bs!726965 (not (= lambda!148155 lambda!148143))))

(declare-fun bs!726966 () Bool)

(assert (= bs!726966 (and d!1325092 start!427108)))

(assert (=> bs!726966 (not (= lambda!148155 lambda!148125))))

(declare-fun bs!726967 () Bool)

(assert (= bs!726967 (and d!1325092 d!1325064)))

(assert (=> bs!726967 (not (= lambda!148155 lambda!148145))))

(declare-fun bs!726968 () Bool)

(assert (= bs!726968 (and d!1325092 d!1325076)))

(assert (=> bs!726968 (= lambda!148155 lambda!148151)))

(declare-fun bs!726969 () Bool)

(assert (= bs!726969 (and d!1325092 d!1325066)))

(assert (=> bs!726969 (not (= lambda!148155 lambda!148148))))

(declare-fun bs!726970 () Bool)

(assert (= bs!726970 (and d!1325092 d!1325056)))

(assert (=> bs!726970 (not (= lambda!148155 lambda!148144))))

(assert (=> d!1325092 true))

(assert (=> d!1325092 (= (allKeysSameHashInMap!721 lt!1603369 hashF!1247) (forall!9342 (toList!3217 lt!1603369) lambda!148155))))

(declare-fun bs!726971 () Bool)

(assert (= bs!726971 d!1325092))

(declare-fun m!5058337 () Bool)

(assert (=> bs!726971 m!5058337))

(assert (=> b!4397049 d!1325092))

(assert (=> b!4397048 d!1325082))

(declare-fun e!2737967 () Bool)

(declare-fun tp!1331686 () Bool)

(declare-fun b!4397331 () Bool)

(assert (=> b!4397331 (= e!2737967 (and tp_is_empty!25705 tp_is_empty!25707 tp!1331686))))

(assert (=> b!4397055 (= tp!1331674 e!2737967)))

(assert (= (and b!4397055 ((_ is Cons!49252) (t!356310 newBucket!200))) b!4397331))

(declare-fun b!4397336 () Bool)

(declare-fun e!2737970 () Bool)

(declare-fun tp!1331691 () Bool)

(declare-fun tp!1331692 () Bool)

(assert (=> b!4397336 (= e!2737970 (and tp!1331691 tp!1331692))))

(assert (=> b!4397059 (= tp!1331673 e!2737970)))

(assert (= (and b!4397059 ((_ is Cons!49253) (toList!3217 lm!1707))) b!4397336))

(declare-fun b_lambda!139311 () Bool)

(assert (= b_lambda!139309 (or start!427108 b_lambda!139311)))

(declare-fun bs!726972 () Bool)

(declare-fun d!1325094 () Bool)

(assert (= bs!726972 (and d!1325094 start!427108)))

(assert (=> bs!726972 (= (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lm!1707))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(assert (=> bs!726972 m!5058225))

(assert (=> b!4397325 d!1325094))

(declare-fun b_lambda!139313 () Bool)

(assert (= b_lambda!139305 (or start!427108 b_lambda!139313)))

(declare-fun bs!726973 () Bool)

(declare-fun d!1325096 () Bool)

(assert (= bs!726973 (and d!1325096 start!427108)))

(assert (=> bs!726973 (= (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lt!1603365))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603365)))))))

(declare-fun m!5058339 () Bool)

(assert (=> bs!726973 m!5058339))

(assert (=> b!4397313 d!1325096))

(declare-fun b_lambda!139315 () Bool)

(assert (= b_lambda!139303 (or start!427108 b_lambda!139315)))

(declare-fun bs!726974 () Bool)

(declare-fun d!1325098 () Bool)

(assert (= bs!726974 (and d!1325098 start!427108)))

(assert (=> bs!726974 (= (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 lt!1603369))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603369)))))))

(declare-fun m!5058341 () Bool)

(assert (=> bs!726974 m!5058341))

(assert (=> b!4397274 d!1325098))

(declare-fun b_lambda!139317 () Bool)

(assert (= b_lambda!139307 (or start!427108 b_lambda!139317)))

(declare-fun bs!726975 () Bool)

(declare-fun d!1325100 () Bool)

(assert (= bs!726975 (and d!1325100 start!427108)))

(assert (=> bs!726975 (= (dynLambda!20750 lambda!148125 (tuple2!48841 hash!377 newBucket!200)) (noDuplicateKeys!617 (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun m!5058343 () Bool)

(assert (=> bs!726975 m!5058343))

(assert (=> b!4397324 d!1325100))

(declare-fun b_lambda!139319 () Bool)

(assert (= b_lambda!139287 (or start!427108 b_lambda!139319)))

(declare-fun bs!726976 () Bool)

(declare-fun d!1325102 () Bool)

(assert (= bs!726976 (and d!1325102 start!427108)))

(assert (=> bs!726976 (= (dynLambda!20750 lambda!148125 lt!1603370) (noDuplicateKeys!617 (_2!27714 lt!1603370)))))

(declare-fun m!5058345 () Bool)

(assert (=> bs!726976 m!5058345))

(assert (=> d!1324996 d!1325102))

(check-sat (not b!4397249) (not b!4397276) (not b_lambda!139319) (not bm!306041) (not b!4397279) (not b!4397260) (not b!4397282) (not d!1325066) (not b!4397320) (not b!4397254) (not b!4397275) tp_is_empty!25707 (not d!1325008) (not d!1325080) (not b!4397290) (not b!4397326) (not b!4397291) (not bm!306040) (not b!4397319) (not d!1325090) (not b!4397295) (not b!4397284) (not d!1325086) (not bs!726976) (not b_lambda!139311) (not b!4397336) (not b!4397124) (not d!1324998) (not d!1324996) (not b!4397247) (not d!1325050) (not d!1325084) (not bm!306042) (not b!4397250) (not b!4397289) (not b!4397278) (not d!1324984) (not b!4397092) (not b!4397308) (not b!4397283) (not b!4397268) (not bs!726973) (not d!1325054) (not b!4397285) (not b!4397113) (not b!4397255) (not b!4397251) (not d!1325068) (not b!4397287) (not b_lambda!139315) (not b!4397280) (not b!4397314) (not b_lambda!139313) (not b!4397294) (not bs!726972) (not d!1324994) (not b!4397253) (not d!1325060) (not b!4397158) (not b!4397093) (not b_lambda!139317) (not b!4397293) (not bs!726974) (not d!1325062) (not bs!726975) tp_is_empty!25705 (not d!1325092) (not d!1325006) (not b!4397154) (not d!1325076) (not d!1325064) (not b!4397331) (not d!1325056) (not d!1325070) (not b!4397302) (not b!4397267) (not b!4397304) (not d!1325072) (not d!1325074))
(check-sat)
(get-model)

(declare-fun d!1325150 () Bool)

(declare-fun isEmpty!28269 (Option!10601) Bool)

(assert (=> d!1325150 (= (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918)) (not (isEmpty!28269 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))))

(declare-fun bs!727019 () Bool)

(assert (= bs!727019 d!1325150))

(assert (=> bs!727019 m!5058281))

(declare-fun m!5058481 () Bool)

(assert (=> bs!727019 m!5058481))

(assert (=> b!4397294 d!1325150))

(declare-fun b!4397444 () Bool)

(declare-fun e!2738027 () Option!10601)

(declare-fun e!2738028 () Option!10601)

(assert (=> b!4397444 (= e!2738027 e!2738028)))

(declare-fun c!748610 () Bool)

(assert (=> b!4397444 (= c!748610 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (not (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) key!3918))))))

(declare-fun b!4397443 () Bool)

(assert (=> b!4397443 (= e!2738027 (Some!10600 (_2!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))))

(declare-fun b!4397446 () Bool)

(assert (=> b!4397446 (= e!2738028 None!10600)))

(declare-fun d!1325152 () Bool)

(declare-fun c!748609 () Bool)

(assert (=> d!1325152 (= c!748609 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) key!3918)))))

(assert (=> d!1325152 (= (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918) e!2738027)))

(declare-fun b!4397445 () Bool)

(assert (=> b!4397445 (= e!2738028 (getValueByKey!587 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) key!3918))))

(assert (= (and d!1325152 c!748609) b!4397443))

(assert (= (and d!1325152 (not c!748609)) b!4397444))

(assert (= (and b!4397444 c!748610) b!4397445))

(assert (= (and b!4397444 (not c!748610)) b!4397446))

(declare-fun m!5058483 () Bool)

(assert (=> b!4397445 m!5058483))

(assert (=> b!4397294 d!1325152))

(declare-fun d!1325154 () Bool)

(declare-fun lt!1603598 () Bool)

(assert (=> d!1325154 (= lt!1603598 (select (content!7856 (t!356311 (toList!3217 lm!1707))) lt!1603370))))

(declare-fun e!2738030 () Bool)

(assert (=> d!1325154 (= lt!1603598 e!2738030)))

(declare-fun res!1813260 () Bool)

(assert (=> d!1325154 (=> (not res!1813260) (not e!2738030))))

(assert (=> d!1325154 (= res!1813260 ((_ is Cons!49253) (t!356311 (toList!3217 lm!1707))))))

(assert (=> d!1325154 (= (contains!11633 (t!356311 (toList!3217 lm!1707)) lt!1603370) lt!1603598)))

(declare-fun b!4397447 () Bool)

(declare-fun e!2738029 () Bool)

(assert (=> b!4397447 (= e!2738030 e!2738029)))

(declare-fun res!1813261 () Bool)

(assert (=> b!4397447 (=> res!1813261 e!2738029)))

(assert (=> b!4397447 (= res!1813261 (= (h!54872 (t!356311 (toList!3217 lm!1707))) lt!1603370))))

(declare-fun b!4397448 () Bool)

(assert (=> b!4397448 (= e!2738029 (contains!11633 (t!356311 (t!356311 (toList!3217 lm!1707))) lt!1603370))))

(assert (= (and d!1325154 res!1813260) b!4397447))

(assert (= (and b!4397447 (not res!1813261)) b!4397448))

(declare-fun m!5058485 () Bool)

(assert (=> d!1325154 m!5058485))

(declare-fun m!5058487 () Bool)

(assert (=> d!1325154 m!5058487))

(declare-fun m!5058489 () Bool)

(assert (=> b!4397448 m!5058489))

(assert (=> b!4397113 d!1325154))

(declare-fun d!1325156 () Bool)

(declare-fun res!1813262 () Bool)

(declare-fun e!2738031 () Bool)

(assert (=> d!1325156 (=> res!1813262 e!2738031)))

(assert (=> d!1325156 (= res!1813262 ((_ is Nil!49253) (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> d!1325156 (= (forall!9342 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200))) lambda!148125) e!2738031)))

(declare-fun b!4397449 () Bool)

(declare-fun e!2738032 () Bool)

(assert (=> b!4397449 (= e!2738031 e!2738032)))

(declare-fun res!1813263 () Bool)

(assert (=> b!4397449 (=> (not res!1813263) (not e!2738032))))

(assert (=> b!4397449 (= res!1813263 (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200))))))))

(declare-fun b!4397450 () Bool)

(assert (=> b!4397450 (= e!2738032 (forall!9342 (t!356311 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200)))) lambda!148125))))

(assert (= (and d!1325156 (not res!1813262)) b!4397449))

(assert (= (and b!4397449 res!1813263) b!4397450))

(declare-fun b_lambda!139329 () Bool)

(assert (=> (not b_lambda!139329) (not b!4397449)))

(declare-fun m!5058491 () Bool)

(assert (=> b!4397449 m!5058491))

(declare-fun m!5058493 () Bool)

(assert (=> b!4397450 m!5058493))

(assert (=> d!1325086 d!1325156))

(assert (=> d!1325086 d!1325084))

(declare-fun d!1325158 () Bool)

(assert (=> d!1325158 (forall!9342 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200))) lambda!148125)))

(assert (=> d!1325158 true))

(declare-fun _$31!307 () Unit!78409)

(assert (=> d!1325158 (= (choose!27519 lm!1707 lambda!148125 hash!377 newBucket!200) _$31!307)))

(declare-fun bs!727020 () Bool)

(assert (= bs!727020 d!1325158))

(assert (=> bs!727020 m!5057955))

(assert (=> bs!727020 m!5058327))

(assert (=> d!1325086 d!1325158))

(assert (=> d!1325086 d!1325088))

(declare-fun d!1325160 () Bool)

(declare-fun res!1813264 () Bool)

(declare-fun e!2738033 () Bool)

(assert (=> d!1325160 (=> res!1813264 e!2738033)))

(assert (=> d!1325160 (= res!1813264 (not ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (=> d!1325160 (= (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707)))) e!2738033)))

(declare-fun b!4397452 () Bool)

(declare-fun e!2738034 () Bool)

(assert (=> b!4397452 (= e!2738033 e!2738034)))

(declare-fun res!1813265 () Bool)

(assert (=> b!4397452 (=> (not res!1813265) (not e!2738034))))

(assert (=> b!4397452 (= res!1813265 (not (containsKey!911 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707)))) (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))))

(declare-fun b!4397453 () Bool)

(assert (=> b!4397453 (= e!2738034 (noDuplicateKeys!617 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (= (and d!1325160 (not res!1813264)) b!4397452))

(assert (= (and b!4397452 res!1813265) b!4397453))

(declare-fun m!5058495 () Bool)

(assert (=> b!4397452 m!5058495))

(declare-fun m!5058497 () Bool)

(assert (=> b!4397453 m!5058497))

(assert (=> bs!726972 d!1325160))

(assert (=> d!1325066 d!1325052))

(assert (=> d!1325066 d!1325068))

(declare-fun d!1325162 () Bool)

(assert (=> d!1325162 (not (containsKey!911 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))) key!3918))))

(assert (=> d!1325162 true))

(declare-fun _$39!310 () Unit!78409)

(assert (=> d!1325162 (= (choose!27518 lm!1707 key!3918 (_1!27714 (h!54872 (toList!3217 lm!1707))) hashF!1247) _$39!310)))

(declare-fun bs!727021 () Bool)

(assert (= bs!727021 d!1325162))

(assert (=> bs!727021 m!5057941))

(assert (=> bs!727021 m!5057941))

(assert (=> bs!727021 m!5057943))

(assert (=> d!1325066 d!1325162))

(declare-fun d!1325164 () Bool)

(declare-fun res!1813266 () Bool)

(declare-fun e!2738035 () Bool)

(assert (=> d!1325164 (=> res!1813266 e!2738035)))

(assert (=> d!1325164 (= res!1813266 ((_ is Nil!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325164 (= (forall!9342 (toList!3217 lm!1707) lambda!148148) e!2738035)))

(declare-fun b!4397454 () Bool)

(declare-fun e!2738036 () Bool)

(assert (=> b!4397454 (= e!2738035 e!2738036)))

(declare-fun res!1813267 () Bool)

(assert (=> b!4397454 (=> (not res!1813267) (not e!2738036))))

(assert (=> b!4397454 (= res!1813267 (dynLambda!20750 lambda!148148 (h!54872 (toList!3217 lm!1707))))))

(declare-fun b!4397455 () Bool)

(assert (=> b!4397455 (= e!2738036 (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148148))))

(assert (= (and d!1325164 (not res!1813266)) b!4397454))

(assert (= (and b!4397454 res!1813267) b!4397455))

(declare-fun b_lambda!139331 () Bool)

(assert (=> (not b_lambda!139331) (not b!4397454)))

(declare-fun m!5058499 () Bool)

(assert (=> b!4397454 m!5058499))

(declare-fun m!5058501 () Bool)

(assert (=> b!4397455 m!5058501))

(assert (=> d!1325066 d!1325164))

(declare-fun bs!727087 () Bool)

(declare-fun b!4397632 () Bool)

(assert (= bs!727087 (and b!4397632 d!1325080)))

(declare-fun lambda!148249 () Int)

(assert (=> bs!727087 (not (= lambda!148249 lambda!148154))))

(assert (=> b!4397632 true))

(declare-fun bs!727093 () Bool)

(declare-fun b!4397631 () Bool)

(assert (= bs!727093 (and b!4397631 d!1325080)))

(declare-fun lambda!148251 () Int)

(assert (=> bs!727093 (not (= lambda!148251 lambda!148154))))

(declare-fun bs!727095 () Bool)

(assert (= bs!727095 (and b!4397631 b!4397632)))

(assert (=> bs!727095 (= lambda!148251 lambda!148249)))

(assert (=> b!4397631 true))

(declare-fun lambda!148252 () Int)

(assert (=> bs!727093 (not (= lambda!148252 lambda!148154))))

(declare-fun lt!1603783 () ListMap!2461)

(assert (=> bs!727095 (= (= lt!1603783 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148252 lambda!148249))))

(assert (=> b!4397631 (= (= lt!1603783 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148252 lambda!148251))))

(assert (=> b!4397631 true))

(declare-fun bs!727098 () Bool)

(declare-fun d!1325166 () Bool)

(assert (= bs!727098 (and d!1325166 d!1325080)))

(declare-fun lambda!148254 () Int)

(assert (=> bs!727098 (not (= lambda!148254 lambda!148154))))

(declare-fun bs!727099 () Bool)

(assert (= bs!727099 (and d!1325166 b!4397632)))

(declare-fun lt!1603788 () ListMap!2461)

(assert (=> bs!727099 (= (= lt!1603788 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148254 lambda!148249))))

(declare-fun bs!727100 () Bool)

(assert (= bs!727100 (and d!1325166 b!4397631)))

(assert (=> bs!727100 (= (= lt!1603788 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148254 lambda!148251))))

(assert (=> bs!727100 (= (= lt!1603788 lt!1603783) (= lambda!148254 lambda!148252))))

(assert (=> d!1325166 true))

(declare-fun e!2738161 () ListMap!2461)

(assert (=> b!4397631 (= e!2738161 lt!1603783)))

(declare-fun lt!1603781 () ListMap!2461)

(declare-fun +!854 (ListMap!2461 tuple2!48838) ListMap!2461)

(assert (=> b!4397631 (= lt!1603781 (+!854 (extractMap!676 (t!356311 (toList!3217 lt!1603369))) (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(assert (=> b!4397631 (= lt!1603783 (addToMapMapFromBucket!289 (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603369)))) (+!854 (extractMap!676 (t!356311 (toList!3217 lt!1603369))) (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369)))))))))

(declare-fun lt!1603791 () Unit!78409)

(declare-fun call!306078 () Unit!78409)

(assert (=> b!4397631 (= lt!1603791 call!306078)))

(assert (=> b!4397631 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) lambda!148251)))

(declare-fun lt!1603789 () Unit!78409)

(assert (=> b!4397631 (= lt!1603789 lt!1603791)))

(assert (=> b!4397631 (forall!9344 (toList!3218 lt!1603781) lambda!148252)))

(declare-fun lt!1603782 () Unit!78409)

(declare-fun Unit!78444 () Unit!78409)

(assert (=> b!4397631 (= lt!1603782 Unit!78444)))

(declare-fun call!306080 () Bool)

(assert (=> b!4397631 call!306080))

(declare-fun lt!1603773 () Unit!78409)

(declare-fun Unit!78445 () Unit!78409)

(assert (=> b!4397631 (= lt!1603773 Unit!78445)))

(declare-fun lt!1603778 () Unit!78409)

(declare-fun Unit!78446 () Unit!78409)

(assert (=> b!4397631 (= lt!1603778 Unit!78446)))

(declare-fun lt!1603787 () Unit!78409)

(declare-fun forallContained!1980 (List!49376 Int tuple2!48838) Unit!78409)

(assert (=> b!4397631 (= lt!1603787 (forallContained!1980 (toList!3218 lt!1603781) lambda!148252 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(assert (=> b!4397631 (contains!11631 lt!1603781 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(declare-fun lt!1603784 () Unit!78409)

(declare-fun Unit!78447 () Unit!78409)

(assert (=> b!4397631 (= lt!1603784 Unit!78447)))

(assert (=> b!4397631 (contains!11631 lt!1603783 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(declare-fun lt!1603786 () Unit!78409)

(declare-fun Unit!78448 () Unit!78409)

(assert (=> b!4397631 (= lt!1603786 Unit!78448)))

(assert (=> b!4397631 (forall!9344 (_2!27714 (h!54872 (toList!3217 lt!1603369))) lambda!148252)))

(declare-fun lt!1603779 () Unit!78409)

(declare-fun Unit!78449 () Unit!78409)

(assert (=> b!4397631 (= lt!1603779 Unit!78449)))

(assert (=> b!4397631 (forall!9344 (toList!3218 lt!1603781) lambda!148252)))

(declare-fun lt!1603793 () Unit!78409)

(declare-fun Unit!78450 () Unit!78409)

(assert (=> b!4397631 (= lt!1603793 Unit!78450)))

(declare-fun lt!1603785 () Unit!78409)

(declare-fun Unit!78451 () Unit!78409)

(assert (=> b!4397631 (= lt!1603785 Unit!78451)))

(declare-fun lt!1603775 () Unit!78409)

(declare-fun addForallContainsKeyThenBeforeAdding!123 (ListMap!2461 ListMap!2461 K!10610 V!10856) Unit!78409)

(assert (=> b!4397631 (= lt!1603775 (addForallContainsKeyThenBeforeAdding!123 (extractMap!676 (t!356311 (toList!3217 lt!1603369))) lt!1603783 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))) (_2!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369)))))))))

(assert (=> b!4397631 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) lambda!148252)))

(declare-fun lt!1603790 () Unit!78409)

(assert (=> b!4397631 (= lt!1603790 lt!1603775)))

(declare-fun call!306079 () Bool)

(assert (=> b!4397631 call!306079))

(declare-fun lt!1603780 () Unit!78409)

(declare-fun Unit!78452 () Unit!78409)

(assert (=> b!4397631 (= lt!1603780 Unit!78452)))

(declare-fun res!1813371 () Bool)

(assert (=> b!4397631 (= res!1813371 (forall!9344 (_2!27714 (h!54872 (toList!3217 lt!1603369))) lambda!148252))))

(declare-fun e!2738162 () Bool)

(assert (=> b!4397631 (=> (not res!1813371) (not e!2738162))))

(assert (=> b!4397631 e!2738162))

(declare-fun lt!1603774 () Unit!78409)

(declare-fun Unit!78453 () Unit!78409)

(assert (=> b!4397631 (= lt!1603774 Unit!78453)))

(declare-fun bm!306073 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!123 (ListMap!2461) Unit!78409)

(assert (=> bm!306073 (= call!306078 (lemmaContainsAllItsOwnKeys!123 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))))))

(assert (=> b!4397632 (= e!2738161 (extractMap!676 (t!356311 (toList!3217 lt!1603369))))))

(declare-fun lt!1603777 () Unit!78409)

(assert (=> b!4397632 (= lt!1603777 call!306078)))

(assert (=> b!4397632 call!306080))

(declare-fun lt!1603776 () Unit!78409)

(assert (=> b!4397632 (= lt!1603776 lt!1603777)))

(assert (=> b!4397632 call!306079))

(declare-fun lt!1603792 () Unit!78409)

(declare-fun Unit!78454 () Unit!78409)

(assert (=> b!4397632 (= lt!1603792 Unit!78454)))

(declare-fun c!748646 () Bool)

(declare-fun bm!306075 () Bool)

(assert (=> bm!306075 (= call!306079 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (ite c!748646 lambda!148249 lambda!148252)))))

(declare-fun b!4397633 () Bool)

(declare-fun e!2738160 () Bool)

(assert (=> b!4397633 (= e!2738160 (invariantList!744 (toList!3218 lt!1603788)))))

(assert (=> d!1325166 e!2738160))

(declare-fun res!1813372 () Bool)

(assert (=> d!1325166 (=> (not res!1813372) (not e!2738160))))

(assert (=> d!1325166 (= res!1813372 (forall!9344 (_2!27714 (h!54872 (toList!3217 lt!1603369))) lambda!148254))))

(assert (=> d!1325166 (= lt!1603788 e!2738161)))

(assert (=> d!1325166 (= c!748646 ((_ is Nil!49252) (_2!27714 (h!54872 (toList!3217 lt!1603369)))))))

(assert (=> d!1325166 (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))

(assert (=> d!1325166 (= (addToMapMapFromBucket!289 (_2!27714 (h!54872 (toList!3217 lt!1603369))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) lt!1603788)))

(declare-fun bm!306074 () Bool)

(assert (=> bm!306074 (= call!306080 (forall!9344 (ite c!748646 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603369))))) (ite c!748646 lambda!148249 lambda!148252)))))

(declare-fun b!4397634 () Bool)

(assert (=> b!4397634 (= e!2738162 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) lambda!148252))))

(declare-fun b!4397635 () Bool)

(declare-fun res!1813373 () Bool)

(assert (=> b!4397635 (=> (not res!1813373) (not e!2738160))))

(assert (=> b!4397635 (= res!1813373 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) lambda!148254))))

(assert (= (and d!1325166 c!748646) b!4397632))

(assert (= (and d!1325166 (not c!748646)) b!4397631))

(assert (= (and b!4397631 res!1813371) b!4397634))

(assert (= (or b!4397632 b!4397631) bm!306073))

(assert (= (or b!4397632 b!4397631) bm!306075))

(assert (= (or b!4397632 b!4397631) bm!306074))

(assert (= (and d!1325166 res!1813372) b!4397635))

(assert (= (and b!4397635 res!1813373) b!4397633))

(declare-fun m!5058751 () Bool)

(assert (=> b!4397634 m!5058751))

(declare-fun m!5058753 () Bool)

(assert (=> d!1325166 m!5058753))

(assert (=> d!1325166 m!5058341))

(declare-fun m!5058755 () Bool)

(assert (=> bm!306075 m!5058755))

(declare-fun m!5058757 () Bool)

(assert (=> bm!306074 m!5058757))

(declare-fun m!5058759 () Bool)

(assert (=> b!4397633 m!5058759))

(assert (=> bm!306073 m!5058231))

(declare-fun m!5058761 () Bool)

(assert (=> bm!306073 m!5058761))

(assert (=> b!4397631 m!5058751))

(declare-fun m!5058763 () Bool)

(assert (=> b!4397631 m!5058763))

(declare-fun m!5058765 () Bool)

(assert (=> b!4397631 m!5058765))

(declare-fun m!5058767 () Bool)

(assert (=> b!4397631 m!5058767))

(declare-fun m!5058769 () Bool)

(assert (=> b!4397631 m!5058769))

(assert (=> b!4397631 m!5058231))

(declare-fun m!5058771 () Bool)

(assert (=> b!4397631 m!5058771))

(declare-fun m!5058773 () Bool)

(assert (=> b!4397631 m!5058773))

(assert (=> b!4397631 m!5058767))

(assert (=> b!4397631 m!5058231))

(assert (=> b!4397631 m!5058763))

(declare-fun m!5058775 () Bool)

(assert (=> b!4397631 m!5058775))

(declare-fun m!5058777 () Bool)

(assert (=> b!4397631 m!5058777))

(declare-fun m!5058779 () Bool)

(assert (=> b!4397631 m!5058779))

(assert (=> b!4397631 m!5058777))

(declare-fun m!5058781 () Bool)

(assert (=> b!4397635 m!5058781))

(assert (=> b!4397268 d!1325166))

(declare-fun bs!727110 () Bool)

(declare-fun d!1325270 () Bool)

(assert (= bs!727110 (and d!1325270 d!1325050)))

(declare-fun lambda!148256 () Int)

(assert (=> bs!727110 (= lambda!148256 lambda!148143)))

(declare-fun bs!727111 () Bool)

(assert (= bs!727111 (and d!1325270 start!427108)))

(assert (=> bs!727111 (= lambda!148256 lambda!148125)))

(declare-fun bs!727112 () Bool)

(assert (= bs!727112 (and d!1325270 d!1325092)))

(assert (=> bs!727112 (not (= lambda!148256 lambda!148155))))

(declare-fun bs!727113 () Bool)

(assert (= bs!727113 (and d!1325270 d!1325064)))

(assert (=> bs!727113 (= lambda!148256 lambda!148145)))

(declare-fun bs!727114 () Bool)

(assert (= bs!727114 (and d!1325270 d!1325076)))

(assert (=> bs!727114 (not (= lambda!148256 lambda!148151))))

(declare-fun bs!727115 () Bool)

(assert (= bs!727115 (and d!1325270 d!1325066)))

(assert (=> bs!727115 (= lambda!148256 lambda!148148)))

(declare-fun bs!727116 () Bool)

(assert (= bs!727116 (and d!1325270 d!1325056)))

(assert (=> bs!727116 (= lambda!148256 lambda!148144)))

(declare-fun lt!1603794 () ListMap!2461)

(assert (=> d!1325270 (invariantList!744 (toList!3218 lt!1603794))))

(declare-fun e!2738163 () ListMap!2461)

(assert (=> d!1325270 (= lt!1603794 e!2738163)))

(declare-fun c!748647 () Bool)

(assert (=> d!1325270 (= c!748647 ((_ is Cons!49253) (t!356311 (toList!3217 lt!1603369))))))

(assert (=> d!1325270 (forall!9342 (t!356311 (toList!3217 lt!1603369)) lambda!148256)))

(assert (=> d!1325270 (= (extractMap!676 (t!356311 (toList!3217 lt!1603369))) lt!1603794)))

(declare-fun b!4397638 () Bool)

(assert (=> b!4397638 (= e!2738163 (addToMapMapFromBucket!289 (_2!27714 (h!54872 (t!356311 (toList!3217 lt!1603369)))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lt!1603369))))))))

(declare-fun b!4397639 () Bool)

(assert (=> b!4397639 (= e!2738163 (ListMap!2462 Nil!49252))))

(assert (= (and d!1325270 c!748647) b!4397638))

(assert (= (and d!1325270 (not c!748647)) b!4397639))

(declare-fun m!5058815 () Bool)

(assert (=> d!1325270 m!5058815))

(declare-fun m!5058819 () Bool)

(assert (=> d!1325270 m!5058819))

(declare-fun m!5058823 () Bool)

(assert (=> b!4397638 m!5058823))

(assert (=> b!4397638 m!5058823))

(declare-fun m!5058825 () Bool)

(assert (=> b!4397638 m!5058825))

(assert (=> b!4397268 d!1325270))

(declare-fun d!1325276 () Bool)

(declare-fun res!1813384 () Bool)

(declare-fun e!2738174 () Bool)

(assert (=> d!1325276 (=> res!1813384 e!2738174)))

(assert (=> d!1325276 (= res!1813384 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)))))

(assert (=> d!1325276 (= (containsKey!915 (toList!3217 lm!1707) hash!377) e!2738174)))

(declare-fun b!4397650 () Bool)

(declare-fun e!2738175 () Bool)

(assert (=> b!4397650 (= e!2738174 e!2738175)))

(declare-fun res!1813385 () Bool)

(assert (=> b!4397650 (=> (not res!1813385) (not e!2738175))))

(assert (=> b!4397650 (= res!1813385 (and (or (not ((_ is Cons!49253) (toList!3217 lm!1707))) (bvsle (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)) ((_ is Cons!49253) (toList!3217 lm!1707)) (bvslt (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)))))

(declare-fun b!4397651 () Bool)

(assert (=> b!4397651 (= e!2738175 (containsKey!915 (t!356311 (toList!3217 lm!1707)) hash!377))))

(assert (= (and d!1325276 (not res!1813384)) b!4397650))

(assert (= (and b!4397650 res!1813385) b!4397651))

(declare-fun m!5058831 () Bool)

(assert (=> b!4397651 m!5058831))

(assert (=> d!1325072 d!1325276))

(declare-fun d!1325280 () Bool)

(declare-fun noDuplicatedKeys!148 (List!49376) Bool)

(assert (=> d!1325280 (= (invariantList!744 (toList!3218 lt!1603516)) (noDuplicatedKeys!148 (toList!3218 lt!1603516)))))

(declare-fun bs!727117 () Bool)

(assert (= bs!727117 d!1325280))

(declare-fun m!5058835 () Bool)

(assert (=> bs!727117 m!5058835))

(assert (=> d!1325064 d!1325280))

(declare-fun d!1325284 () Bool)

(declare-fun res!1813387 () Bool)

(declare-fun e!2738177 () Bool)

(assert (=> d!1325284 (=> res!1813387 e!2738177)))

(assert (=> d!1325284 (= res!1813387 ((_ is Nil!49253) (t!356311 (toList!3217 lm!1707))))))

(assert (=> d!1325284 (= (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148145) e!2738177)))

(declare-fun b!4397653 () Bool)

(declare-fun e!2738178 () Bool)

(assert (=> b!4397653 (= e!2738177 e!2738178)))

(declare-fun res!1813388 () Bool)

(assert (=> b!4397653 (=> (not res!1813388) (not e!2738178))))

(assert (=> b!4397653 (= res!1813388 (dynLambda!20750 lambda!148145 (h!54872 (t!356311 (toList!3217 lm!1707)))))))

(declare-fun b!4397654 () Bool)

(assert (=> b!4397654 (= e!2738178 (forall!9342 (t!356311 (t!356311 (toList!3217 lm!1707))) lambda!148145))))

(assert (= (and d!1325284 (not res!1813387)) b!4397653))

(assert (= (and b!4397653 res!1813388) b!4397654))

(declare-fun b_lambda!139347 () Bool)

(assert (=> (not b_lambda!139347) (not b!4397653)))

(declare-fun m!5058839 () Bool)

(assert (=> b!4397653 m!5058839))

(declare-fun m!5058841 () Bool)

(assert (=> b!4397654 m!5058841))

(assert (=> d!1325064 d!1325284))

(declare-fun d!1325290 () Bool)

(declare-fun res!1813397 () Bool)

(declare-fun e!2738187 () Bool)

(assert (=> d!1325290 (=> res!1813397 e!2738187)))

(assert (=> d!1325290 (= res!1813397 (and ((_ is Cons!49252) (toList!3218 lt!1603367)) (= (_1!27713 (h!54871 (toList!3218 lt!1603367))) key!3918)))))

(assert (=> d!1325290 (= (containsKey!914 (toList!3218 lt!1603367) key!3918) e!2738187)))

(declare-fun b!4397663 () Bool)

(declare-fun e!2738188 () Bool)

(assert (=> b!4397663 (= e!2738187 e!2738188)))

(declare-fun res!1813398 () Bool)

(assert (=> b!4397663 (=> (not res!1813398) (not e!2738188))))

(assert (=> b!4397663 (= res!1813398 ((_ is Cons!49252) (toList!3218 lt!1603367)))))

(declare-fun b!4397664 () Bool)

(assert (=> b!4397664 (= e!2738188 (containsKey!914 (t!356310 (toList!3218 lt!1603367)) key!3918))))

(assert (= (and d!1325290 (not res!1813397)) b!4397663))

(assert (= (and b!4397663 res!1813398) b!4397664))

(declare-fun m!5058849 () Bool)

(assert (=> b!4397664 m!5058849))

(assert (=> d!1325060 d!1325290))

(declare-fun d!1325296 () Bool)

(declare-fun lt!1603800 () Bool)

(declare-fun content!7858 (List!49379) (InoxSet K!10610))

(assert (=> d!1325296 (= lt!1603800 (select (content!7858 e!2737938) key!3918))))

(declare-fun e!2738193 () Bool)

(assert (=> d!1325296 (= lt!1603800 e!2738193)))

(declare-fun res!1813404 () Bool)

(assert (=> d!1325296 (=> (not res!1813404) (not e!2738193))))

(assert (=> d!1325296 (= res!1813404 ((_ is Cons!49255) e!2737938))))

(assert (=> d!1325296 (= (contains!11635 e!2737938 key!3918) lt!1603800)))

(declare-fun b!4397670 () Bool)

(declare-fun e!2738194 () Bool)

(assert (=> b!4397670 (= e!2738193 e!2738194)))

(declare-fun res!1813403 () Bool)

(assert (=> b!4397670 (=> res!1813403 e!2738194)))

(assert (=> b!4397670 (= res!1813403 (= (h!54876 e!2737938) key!3918))))

(declare-fun b!4397671 () Bool)

(assert (=> b!4397671 (= e!2738194 (contains!11635 (t!356313 e!2737938) key!3918))))

(assert (= (and d!1325296 res!1813404) b!4397670))

(assert (= (and b!4397670 (not res!1813403)) b!4397671))

(declare-fun m!5058851 () Bool)

(assert (=> d!1325296 m!5058851))

(declare-fun m!5058855 () Bool)

(assert (=> d!1325296 m!5058855))

(declare-fun m!5058857 () Bool)

(assert (=> b!4397671 m!5058857))

(assert (=> bm!306041 d!1325296))

(declare-fun bs!727122 () Bool)

(declare-fun b!4397673 () Bool)

(assert (= bs!727122 (and b!4397673 b!4397631)))

(declare-fun lambda!148257 () Int)

(assert (=> bs!727122 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148257 lambda!148251))))

(assert (=> bs!727122 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603783) (= lambda!148257 lambda!148252))))

(declare-fun bs!727123 () Bool)

(assert (= bs!727123 (and b!4397673 d!1325080)))

(assert (=> bs!727123 (not (= lambda!148257 lambda!148154))))

(declare-fun bs!727125 () Bool)

(assert (= bs!727125 (and b!4397673 d!1325166)))

(assert (=> bs!727125 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603788) (= lambda!148257 lambda!148254))))

(declare-fun bs!727127 () Bool)

(assert (= bs!727127 (and b!4397673 b!4397632)))

(assert (=> bs!727127 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148257 lambda!148249))))

(assert (=> b!4397673 true))

(declare-fun bs!727134 () Bool)

(declare-fun b!4397672 () Bool)

(assert (= bs!727134 (and b!4397672 b!4397631)))

(declare-fun lambda!148259 () Int)

(assert (=> bs!727134 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148259 lambda!148251))))

(declare-fun bs!727136 () Bool)

(assert (= bs!727136 (and b!4397672 b!4397673)))

(assert (=> bs!727136 (= lambda!148259 lambda!148257)))

(assert (=> bs!727134 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603783) (= lambda!148259 lambda!148252))))

(declare-fun bs!727137 () Bool)

(assert (= bs!727137 (and b!4397672 d!1325080)))

(assert (=> bs!727137 (not (= lambda!148259 lambda!148154))))

(declare-fun bs!727138 () Bool)

(assert (= bs!727138 (and b!4397672 d!1325166)))

(assert (=> bs!727138 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603788) (= lambda!148259 lambda!148254))))

(declare-fun bs!727139 () Bool)

(assert (= bs!727139 (and b!4397672 b!4397632)))

(assert (=> bs!727139 (= (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148259 lambda!148249))))

(assert (=> b!4397672 true))

(declare-fun lambda!148261 () Int)

(declare-fun lt!1603813 () ListMap!2461)

(assert (=> bs!727134 (= (= lt!1603813 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148261 lambda!148251))))

(assert (=> bs!727136 (= (= lt!1603813 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148261 lambda!148257))))

(assert (=> bs!727134 (= (= lt!1603813 lt!1603783) (= lambda!148261 lambda!148252))))

(assert (=> b!4397672 (= (= lt!1603813 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148261 lambda!148259))))

(assert (=> bs!727137 (not (= lambda!148261 lambda!148154))))

(assert (=> bs!727138 (= (= lt!1603813 lt!1603788) (= lambda!148261 lambda!148254))))

(assert (=> bs!727139 (= (= lt!1603813 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148261 lambda!148249))))

(assert (=> b!4397672 true))

(declare-fun bs!727160 () Bool)

(declare-fun d!1325302 () Bool)

(assert (= bs!727160 (and d!1325302 b!4397672)))

(declare-fun lt!1603818 () ListMap!2461)

(declare-fun lambda!148263 () Int)

(assert (=> bs!727160 (= (= lt!1603818 lt!1603813) (= lambda!148263 lambda!148261))))

(declare-fun bs!727162 () Bool)

(assert (= bs!727162 (and d!1325302 b!4397631)))

(assert (=> bs!727162 (= (= lt!1603818 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148263 lambda!148251))))

(declare-fun bs!727163 () Bool)

(assert (= bs!727163 (and d!1325302 b!4397673)))

(assert (=> bs!727163 (= (= lt!1603818 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148263 lambda!148257))))

(assert (=> bs!727162 (= (= lt!1603818 lt!1603783) (= lambda!148263 lambda!148252))))

(assert (=> bs!727160 (= (= lt!1603818 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148263 lambda!148259))))

(declare-fun bs!727166 () Bool)

(assert (= bs!727166 (and d!1325302 d!1325080)))

(assert (=> bs!727166 (not (= lambda!148263 lambda!148154))))

(declare-fun bs!727169 () Bool)

(assert (= bs!727169 (and d!1325302 d!1325166)))

(assert (=> bs!727169 (= (= lt!1603818 lt!1603788) (= lambda!148263 lambda!148254))))

(declare-fun bs!727171 () Bool)

(assert (= bs!727171 (and d!1325302 b!4397632)))

(assert (=> bs!727171 (= (= lt!1603818 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148263 lambda!148249))))

(assert (=> d!1325302 true))

(declare-fun e!2738196 () ListMap!2461)

(assert (=> b!4397672 (= e!2738196 lt!1603813)))

(declare-fun lt!1603811 () ListMap!2461)

(assert (=> b!4397672 (= lt!1603811 (+!854 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))))))

(assert (=> b!4397672 (= lt!1603813 (addToMapMapFromBucket!289 (t!356310 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))) (+!854 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))))

(declare-fun lt!1603821 () Unit!78409)

(declare-fun call!306081 () Unit!78409)

(assert (=> b!4397672 (= lt!1603821 call!306081)))

(assert (=> b!4397672 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) lambda!148259)))

(declare-fun lt!1603819 () Unit!78409)

(assert (=> b!4397672 (= lt!1603819 lt!1603821)))

(assert (=> b!4397672 (forall!9344 (toList!3218 lt!1603811) lambda!148261)))

(declare-fun lt!1603812 () Unit!78409)

(declare-fun Unit!78456 () Unit!78409)

(assert (=> b!4397672 (= lt!1603812 Unit!78456)))

(declare-fun call!306083 () Bool)

(assert (=> b!4397672 call!306083))

(declare-fun lt!1603803 () Unit!78409)

(declare-fun Unit!78457 () Unit!78409)

(assert (=> b!4397672 (= lt!1603803 Unit!78457)))

(declare-fun lt!1603808 () Unit!78409)

(declare-fun Unit!78458 () Unit!78409)

(assert (=> b!4397672 (= lt!1603808 Unit!78458)))

(declare-fun lt!1603817 () Unit!78409)

(assert (=> b!4397672 (= lt!1603817 (forallContained!1980 (toList!3218 lt!1603811) lambda!148261 (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))))))

(assert (=> b!4397672 (contains!11631 lt!1603811 (_1!27713 (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))))))

(declare-fun lt!1603814 () Unit!78409)

(declare-fun Unit!78459 () Unit!78409)

(assert (=> b!4397672 (= lt!1603814 Unit!78459)))

(assert (=> b!4397672 (contains!11631 lt!1603813 (_1!27713 (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))))))

(declare-fun lt!1603816 () Unit!78409)

(declare-fun Unit!78460 () Unit!78409)

(assert (=> b!4397672 (= lt!1603816 Unit!78460)))

(assert (=> b!4397672 (forall!9344 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))) lambda!148261)))

(declare-fun lt!1603809 () Unit!78409)

(declare-fun Unit!78461 () Unit!78409)

(assert (=> b!4397672 (= lt!1603809 Unit!78461)))

(assert (=> b!4397672 (forall!9344 (toList!3218 lt!1603811) lambda!148261)))

(declare-fun lt!1603823 () Unit!78409)

(declare-fun Unit!78462 () Unit!78409)

(assert (=> b!4397672 (= lt!1603823 Unit!78462)))

(declare-fun lt!1603815 () Unit!78409)

(declare-fun Unit!78463 () Unit!78409)

(assert (=> b!4397672 (= lt!1603815 Unit!78463)))

(declare-fun lt!1603805 () Unit!78409)

(assert (=> b!4397672 (= lt!1603805 (addForallContainsKeyThenBeforeAdding!123 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603813 (_1!27713 (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))) (_2!27713 (h!54871 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))))

(assert (=> b!4397672 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) lambda!148261)))

(declare-fun lt!1603820 () Unit!78409)

(assert (=> b!4397672 (= lt!1603820 lt!1603805)))

(declare-fun call!306082 () Bool)

(assert (=> b!4397672 call!306082))

(declare-fun lt!1603810 () Unit!78409)

(declare-fun Unit!78464 () Unit!78409)

(assert (=> b!4397672 (= lt!1603810 Unit!78464)))

(declare-fun res!1813405 () Bool)

(assert (=> b!4397672 (= res!1813405 (forall!9344 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))) lambda!148261))))

(declare-fun e!2738197 () Bool)

(assert (=> b!4397672 (=> (not res!1813405) (not e!2738197))))

(assert (=> b!4397672 e!2738197))

(declare-fun lt!1603804 () Unit!78409)

(declare-fun Unit!78465 () Unit!78409)

(assert (=> b!4397672 (= lt!1603804 Unit!78465)))

(declare-fun bm!306076 () Bool)

(assert (=> bm!306076 (= call!306081 (lemmaContainsAllItsOwnKeys!123 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))))))

(assert (=> b!4397673 (= e!2738196 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))))))

(declare-fun lt!1603807 () Unit!78409)

(assert (=> b!4397673 (= lt!1603807 call!306081)))

(assert (=> b!4397673 call!306083))

(declare-fun lt!1603806 () Unit!78409)

(assert (=> b!4397673 (= lt!1603806 lt!1603807)))

(assert (=> b!4397673 call!306082))

(declare-fun lt!1603822 () Unit!78409)

(declare-fun Unit!78466 () Unit!78409)

(assert (=> b!4397673 (= lt!1603822 Unit!78466)))

(declare-fun c!748648 () Bool)

(declare-fun bm!306078 () Bool)

(assert (=> bm!306078 (= call!306082 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (ite c!748648 lambda!148257 lambda!148261)))))

(declare-fun b!4397674 () Bool)

(declare-fun e!2738195 () Bool)

(assert (=> b!4397674 (= e!2738195 (invariantList!744 (toList!3218 lt!1603818)))))

(assert (=> d!1325302 e!2738195))

(declare-fun res!1813406 () Bool)

(assert (=> d!1325302 (=> (not res!1813406) (not e!2738195))))

(assert (=> d!1325302 (= res!1813406 (forall!9344 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))) lambda!148263))))

(assert (=> d!1325302 (= lt!1603818 e!2738196)))

(assert (=> d!1325302 (= c!748648 ((_ is Nil!49252) (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))

(assert (=> d!1325302 (noDuplicateKeys!617 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))))

(assert (=> d!1325302 (= (addToMapMapFromBucket!289 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) lt!1603818)))

(declare-fun bm!306077 () Bool)

(assert (=> bm!306077 (= call!306083 (forall!9344 (ite c!748648 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (t!356310 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707)))))) (ite c!748648 lambda!148257 lambda!148261)))))

(declare-fun b!4397675 () Bool)

(assert (=> b!4397675 (= e!2738197 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) lambda!148261))))

(declare-fun b!4397676 () Bool)

(declare-fun res!1813407 () Bool)

(assert (=> b!4397676 (=> (not res!1813407) (not e!2738195))))

(assert (=> b!4397676 (= res!1813407 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) lambda!148263))))

(assert (= (and d!1325302 c!748648) b!4397673))

(assert (= (and d!1325302 (not c!748648)) b!4397672))

(assert (= (and b!4397672 res!1813405) b!4397675))

(assert (= (or b!4397673 b!4397672) bm!306076))

(assert (= (or b!4397673 b!4397672) bm!306078))

(assert (= (or b!4397673 b!4397672) bm!306077))

(assert (= (and d!1325302 res!1813406) b!4397676))

(assert (= (and b!4397676 res!1813407) b!4397674))

(declare-fun m!5058883 () Bool)

(assert (=> b!4397675 m!5058883))

(declare-fun m!5058885 () Bool)

(assert (=> d!1325302 m!5058885))

(declare-fun m!5058889 () Bool)

(assert (=> d!1325302 m!5058889))

(declare-fun m!5058893 () Bool)

(assert (=> bm!306078 m!5058893))

(declare-fun m!5058895 () Bool)

(assert (=> bm!306077 m!5058895))

(declare-fun m!5058897 () Bool)

(assert (=> b!4397674 m!5058897))

(assert (=> bm!306076 m!5058265))

(declare-fun m!5058899 () Bool)

(assert (=> bm!306076 m!5058899))

(assert (=> b!4397672 m!5058883))

(declare-fun m!5058901 () Bool)

(assert (=> b!4397672 m!5058901))

(declare-fun m!5058903 () Bool)

(assert (=> b!4397672 m!5058903))

(declare-fun m!5058905 () Bool)

(assert (=> b!4397672 m!5058905))

(declare-fun m!5058907 () Bool)

(assert (=> b!4397672 m!5058907))

(assert (=> b!4397672 m!5058265))

(declare-fun m!5058909 () Bool)

(assert (=> b!4397672 m!5058909))

(declare-fun m!5058911 () Bool)

(assert (=> b!4397672 m!5058911))

(assert (=> b!4397672 m!5058905))

(assert (=> b!4397672 m!5058265))

(assert (=> b!4397672 m!5058901))

(declare-fun m!5058913 () Bool)

(assert (=> b!4397672 m!5058913))

(declare-fun m!5058915 () Bool)

(assert (=> b!4397672 m!5058915))

(declare-fun m!5058917 () Bool)

(assert (=> b!4397672 m!5058917))

(assert (=> b!4397672 m!5058915))

(declare-fun m!5058919 () Bool)

(assert (=> b!4397676 m!5058919))

(assert (=> b!4397285 d!1325302))

(declare-fun bs!727172 () Bool)

(declare-fun d!1325306 () Bool)

(assert (= bs!727172 (and d!1325306 d!1325050)))

(declare-fun lambda!148265 () Int)

(assert (=> bs!727172 (= lambda!148265 lambda!148143)))

(declare-fun bs!727173 () Bool)

(assert (= bs!727173 (and d!1325306 d!1325270)))

(assert (=> bs!727173 (= lambda!148265 lambda!148256)))

(declare-fun bs!727174 () Bool)

(assert (= bs!727174 (and d!1325306 start!427108)))

(assert (=> bs!727174 (= lambda!148265 lambda!148125)))

(declare-fun bs!727175 () Bool)

(assert (= bs!727175 (and d!1325306 d!1325092)))

(assert (=> bs!727175 (not (= lambda!148265 lambda!148155))))

(declare-fun bs!727176 () Bool)

(assert (= bs!727176 (and d!1325306 d!1325064)))

(assert (=> bs!727176 (= lambda!148265 lambda!148145)))

(declare-fun bs!727178 () Bool)

(assert (= bs!727178 (and d!1325306 d!1325076)))

(assert (=> bs!727178 (not (= lambda!148265 lambda!148151))))

(declare-fun bs!727179 () Bool)

(assert (= bs!727179 (and d!1325306 d!1325066)))

(assert (=> bs!727179 (= lambda!148265 lambda!148148)))

(declare-fun bs!727181 () Bool)

(assert (= bs!727181 (and d!1325306 d!1325056)))

(assert (=> bs!727181 (= lambda!148265 lambda!148144)))

(declare-fun lt!1603831 () ListMap!2461)

(assert (=> d!1325306 (invariantList!744 (toList!3218 lt!1603831))))

(declare-fun e!2738205 () ListMap!2461)

(assert (=> d!1325306 (= lt!1603831 e!2738205)))

(declare-fun c!748652 () Bool)

(assert (=> d!1325306 (= c!748652 ((_ is Cons!49253) (t!356311 (t!356311 (toList!3217 lm!1707)))))))

(assert (=> d!1325306 (forall!9342 (t!356311 (t!356311 (toList!3217 lm!1707))) lambda!148265)))

(assert (=> d!1325306 (= (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707)))) lt!1603831)))

(declare-fun b!4397689 () Bool)

(assert (=> b!4397689 (= e!2738205 (addToMapMapFromBucket!289 (_2!27714 (h!54872 (t!356311 (t!356311 (toList!3217 lm!1707))))) (extractMap!676 (t!356311 (t!356311 (t!356311 (toList!3217 lm!1707)))))))))

(declare-fun b!4397690 () Bool)

(assert (=> b!4397690 (= e!2738205 (ListMap!2462 Nil!49252))))

(assert (= (and d!1325306 c!748652) b!4397689))

(assert (= (and d!1325306 (not c!748652)) b!4397690))

(declare-fun m!5058925 () Bool)

(assert (=> d!1325306 m!5058925))

(declare-fun m!5058929 () Bool)

(assert (=> d!1325306 m!5058929))

(declare-fun m!5058931 () Bool)

(assert (=> b!4397689 m!5058931))

(assert (=> b!4397689 m!5058931))

(declare-fun m!5058933 () Bool)

(assert (=> b!4397689 m!5058933))

(assert (=> b!4397285 d!1325306))

(declare-fun d!1325322 () Bool)

(assert (=> d!1325322 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(declare-fun lt!1603834 () Unit!78409)

(declare-fun choose!27524 (List!49376 K!10610) Unit!78409)

(assert (=> d!1325322 (= lt!1603834 (choose!27524 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(assert (=> d!1325322 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))

(assert (=> d!1325322 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918) lt!1603834)))

(declare-fun bs!727191 () Bool)

(assert (= bs!727191 d!1325322))

(assert (=> bs!727191 m!5058199))

(assert (=> bs!727191 m!5058199))

(assert (=> bs!727191 m!5058201))

(declare-fun m!5058941 () Bool)

(assert (=> bs!727191 m!5058941))

(declare-fun m!5058943 () Bool)

(assert (=> bs!727191 m!5058943))

(assert (=> b!4397247 d!1325322))

(declare-fun d!1325332 () Bool)

(assert (=> d!1325332 (= (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918)) (not (isEmpty!28269 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))))

(declare-fun bs!727192 () Bool)

(assert (= bs!727192 d!1325332))

(assert (=> bs!727192 m!5058199))

(declare-fun m!5058945 () Bool)

(assert (=> bs!727192 m!5058945))

(assert (=> b!4397247 d!1325332))

(declare-fun b!4397692 () Bool)

(declare-fun e!2738206 () Option!10601)

(declare-fun e!2738207 () Option!10601)

(assert (=> b!4397692 (= e!2738206 e!2738207)))

(declare-fun c!748654 () Bool)

(assert (=> b!4397692 (= c!748654 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (not (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) key!3918))))))

(declare-fun b!4397691 () Bool)

(assert (=> b!4397691 (= e!2738206 (Some!10600 (_2!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))))

(declare-fun b!4397694 () Bool)

(assert (=> b!4397694 (= e!2738207 None!10600)))

(declare-fun d!1325334 () Bool)

(declare-fun c!748653 () Bool)

(assert (=> d!1325334 (= c!748653 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) key!3918)))))

(assert (=> d!1325334 (= (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918) e!2738206)))

(declare-fun b!4397693 () Bool)

(assert (=> b!4397693 (= e!2738207 (getValueByKey!587 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) key!3918))))

(assert (= (and d!1325334 c!748653) b!4397691))

(assert (= (and d!1325334 (not c!748653)) b!4397692))

(assert (= (and b!4397692 c!748654) b!4397693))

(assert (= (and b!4397692 (not c!748654)) b!4397694))

(declare-fun m!5058947 () Bool)

(assert (=> b!4397693 m!5058947))

(assert (=> b!4397247 d!1325334))

(declare-fun d!1325336 () Bool)

(assert (=> d!1325336 (contains!11635 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) key!3918)))

(declare-fun lt!1603837 () Unit!78409)

(declare-fun choose!27525 (List!49376 K!10610) Unit!78409)

(assert (=> d!1325336 (= lt!1603837 (choose!27525 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(assert (=> d!1325336 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))

(assert (=> d!1325336 (= (lemmaInListThenGetKeysListContains!188 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918) lt!1603837)))

(declare-fun bs!727193 () Bool)

(assert (= bs!727193 d!1325336))

(assert (=> bs!727193 m!5058207))

(assert (=> bs!727193 m!5058207))

(declare-fun m!5058949 () Bool)

(assert (=> bs!727193 m!5058949))

(declare-fun m!5058951 () Bool)

(assert (=> bs!727193 m!5058951))

(assert (=> bs!727193 m!5058943))

(assert (=> b!4397247 d!1325336))

(declare-fun e!2738213 () Option!10600)

(declare-fun b!4397705 () Bool)

(assert (=> b!4397705 (= e!2738213 (getValueByKey!586 (t!356311 (toList!3217 lt!1603548)) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun b!4397704 () Bool)

(declare-fun e!2738212 () Option!10600)

(assert (=> b!4397704 (= e!2738212 e!2738213)))

(declare-fun c!748660 () Bool)

(assert (=> b!4397704 (= c!748660 (and ((_ is Cons!49253) (toList!3217 lt!1603548)) (not (= (_1!27714 (h!54872 (toList!3217 lt!1603548))) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))))

(declare-fun b!4397706 () Bool)

(assert (=> b!4397706 (= e!2738213 None!10599)))

(declare-fun b!4397703 () Bool)

(assert (=> b!4397703 (= e!2738212 (Some!10599 (_2!27714 (h!54872 (toList!3217 lt!1603548)))))))

(declare-fun c!748659 () Bool)

(declare-fun d!1325338 () Bool)

(assert (=> d!1325338 (= c!748659 (and ((_ is Cons!49253) (toList!3217 lt!1603548)) (= (_1!27714 (h!54872 (toList!3217 lt!1603548))) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> d!1325338 (= (getValueByKey!586 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200))) e!2738212)))

(assert (= (and d!1325338 c!748659) b!4397703))

(assert (= (and d!1325338 (not c!748659)) b!4397704))

(assert (= (and b!4397704 c!748660) b!4397705))

(assert (= (and b!4397704 (not c!748660)) b!4397706))

(declare-fun m!5058953 () Bool)

(assert (=> b!4397705 m!5058953))

(assert (=> b!4397319 d!1325338))

(assert (=> b!4397278 d!1325290))

(declare-fun d!1325340 () Bool)

(assert (=> d!1325340 (containsKey!914 (toList!3218 lt!1603367) key!3918)))

(declare-fun lt!1603840 () Unit!78409)

(declare-fun choose!27526 (List!49376 K!10610) Unit!78409)

(assert (=> d!1325340 (= lt!1603840 (choose!27526 (toList!3218 lt!1603367) key!3918))))

(assert (=> d!1325340 (invariantList!744 (toList!3218 lt!1603367))))

(assert (=> d!1325340 (= (lemmaInGetKeysListThenContainsKey!189 (toList!3218 lt!1603367) key!3918) lt!1603840)))

(declare-fun bs!727194 () Bool)

(assert (= bs!727194 d!1325340))

(assert (=> bs!727194 m!5058239))

(declare-fun m!5058955 () Bool)

(assert (=> bs!727194 m!5058955))

(declare-fun m!5058957 () Bool)

(assert (=> bs!727194 m!5058957))

(assert (=> b!4397278 d!1325340))

(declare-fun d!1325342 () Bool)

(declare-fun res!1813411 () Bool)

(declare-fun e!2738214 () Bool)

(assert (=> d!1325342 (=> res!1813411 e!2738214)))

(assert (=> d!1325342 (= res!1813411 (and ((_ is Cons!49252) (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))))) (= (_1!27713 (h!54871 (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707))))))) key!3918)))))

(assert (=> d!1325342 (= (containsKey!911 (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707))))) key!3918) e!2738214)))

(declare-fun b!4397707 () Bool)

(declare-fun e!2738215 () Bool)

(assert (=> b!4397707 (= e!2738214 e!2738215)))

(declare-fun res!1813412 () Bool)

(assert (=> b!4397707 (=> (not res!1813412) (not e!2738215))))

(assert (=> b!4397707 (= res!1813412 ((_ is Cons!49252) (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))))))))

(declare-fun b!4397708 () Bool)

(assert (=> b!4397708 (= e!2738215 (containsKey!911 (t!356310 (t!356310 (apply!11469 lm!1707 (_1!27714 (h!54872 (toList!3217 lm!1707)))))) key!3918))))

(assert (= (and d!1325342 (not res!1813411)) b!4397707))

(assert (= (and b!4397707 res!1813412) b!4397708))

(declare-fun m!5058959 () Bool)

(assert (=> b!4397708 m!5058959))

(assert (=> b!4397267 d!1325342))

(declare-fun d!1325344 () Bool)

(assert (=> d!1325344 (dynLambda!20750 lambda!148125 lt!1603370)))

(assert (=> d!1325344 true))

(declare-fun _$7!1591 () Unit!78409)

(assert (=> d!1325344 (= (choose!27515 (toList!3217 lm!1707) lambda!148125 lt!1603370) _$7!1591)))

(declare-fun b_lambda!139375 () Bool)

(assert (=> (not b_lambda!139375) (not d!1325344)))

(declare-fun bs!727195 () Bool)

(assert (= bs!727195 d!1325344))

(assert (=> bs!727195 m!5058045))

(assert (=> d!1324996 d!1325344))

(assert (=> d!1324996 d!1325088))

(declare-fun d!1325346 () Bool)

(declare-fun res!1813413 () Bool)

(declare-fun e!2738216 () Bool)

(assert (=> d!1325346 (=> res!1813413 e!2738216)))

(assert (=> d!1325346 (= res!1813413 (not ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(assert (=> d!1325346 (= (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603369)))) e!2738216)))

(declare-fun b!4397709 () Bool)

(declare-fun e!2738217 () Bool)

(assert (=> b!4397709 (= e!2738216 e!2738217)))

(declare-fun res!1813414 () Bool)

(assert (=> b!4397709 (=> (not res!1813414) (not e!2738217))))

(assert (=> b!4397709 (= res!1813414 (not (containsKey!911 (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603369)))) (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))))

(declare-fun b!4397710 () Bool)

(assert (=> b!4397710 (= e!2738217 (noDuplicateKeys!617 (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603369))))))))

(assert (= (and d!1325346 (not res!1813413)) b!4397709))

(assert (= (and b!4397709 res!1813414) b!4397710))

(declare-fun m!5058961 () Bool)

(assert (=> b!4397709 m!5058961))

(declare-fun m!5058963 () Bool)

(assert (=> b!4397710 m!5058963))

(assert (=> bs!726974 d!1325346))

(declare-fun d!1325348 () Bool)

(declare-fun lt!1603841 () Bool)

(assert (=> d!1325348 (= lt!1603841 (select (content!7858 (keys!16731 lt!1603367)) key!3918))))

(declare-fun e!2738218 () Bool)

(assert (=> d!1325348 (= lt!1603841 e!2738218)))

(declare-fun res!1813416 () Bool)

(assert (=> d!1325348 (=> (not res!1813416) (not e!2738218))))

(assert (=> d!1325348 (= res!1813416 ((_ is Cons!49255) (keys!16731 lt!1603367)))))

(assert (=> d!1325348 (= (contains!11635 (keys!16731 lt!1603367) key!3918) lt!1603841)))

(declare-fun b!4397711 () Bool)

(declare-fun e!2738219 () Bool)

(assert (=> b!4397711 (= e!2738218 e!2738219)))

(declare-fun res!1813415 () Bool)

(assert (=> b!4397711 (=> res!1813415 e!2738219)))

(assert (=> b!4397711 (= res!1813415 (= (h!54876 (keys!16731 lt!1603367)) key!3918))))

(declare-fun b!4397712 () Bool)

(assert (=> b!4397712 (= e!2738219 (contains!11635 (t!356313 (keys!16731 lt!1603367)) key!3918))))

(assert (= (and d!1325348 res!1813416) b!4397711))

(assert (= (and b!4397711 (not res!1813415)) b!4397712))

(assert (=> d!1325348 m!5058253))

(declare-fun m!5058965 () Bool)

(assert (=> d!1325348 m!5058965))

(declare-fun m!5058967 () Bool)

(assert (=> d!1325348 m!5058967))

(declare-fun m!5058969 () Bool)

(assert (=> b!4397712 m!5058969))

(assert (=> b!4397280 d!1325348))

(declare-fun b!4397720 () Bool)

(assert (=> b!4397720 true))

(declare-fun d!1325350 () Bool)

(declare-fun e!2738222 () Bool)

(assert (=> d!1325350 e!2738222))

(declare-fun res!1813425 () Bool)

(assert (=> d!1325350 (=> (not res!1813425) (not e!2738222))))

(declare-fun lt!1603844 () List!49379)

(declare-fun noDuplicate!632 (List!49379) Bool)

(assert (=> d!1325350 (= res!1813425 (noDuplicate!632 lt!1603844))))

(assert (=> d!1325350 (= lt!1603844 (getKeysList!191 (toList!3218 lt!1603367)))))

(assert (=> d!1325350 (= (keys!16731 lt!1603367) lt!1603844)))

(declare-fun b!4397719 () Bool)

(declare-fun res!1813423 () Bool)

(assert (=> b!4397719 (=> (not res!1813423) (not e!2738222))))

(declare-fun length!120 (List!49379) Int)

(declare-fun length!121 (List!49376) Int)

(assert (=> b!4397719 (= res!1813423 (= (length!120 lt!1603844) (length!121 (toList!3218 lt!1603367))))))

(declare-fun res!1813424 () Bool)

(assert (=> b!4397720 (=> (not res!1813424) (not e!2738222))))

(declare-fun lambda!148270 () Int)

(declare-fun forall!9346 (List!49379 Int) Bool)

(assert (=> b!4397720 (= res!1813424 (forall!9346 lt!1603844 lambda!148270))))

(declare-fun b!4397721 () Bool)

(declare-fun lambda!148271 () Int)

(declare-fun map!10737 (List!49376 Int) List!49379)

(assert (=> b!4397721 (= e!2738222 (= (content!7858 lt!1603844) (content!7858 (map!10737 (toList!3218 lt!1603367) lambda!148271))))))

(assert (= (and d!1325350 res!1813425) b!4397719))

(assert (= (and b!4397719 res!1813423) b!4397720))

(assert (= (and b!4397720 res!1813424) b!4397721))

(declare-fun m!5058971 () Bool)

(assert (=> d!1325350 m!5058971))

(assert (=> d!1325350 m!5058251))

(declare-fun m!5058973 () Bool)

(assert (=> b!4397719 m!5058973))

(declare-fun m!5058975 () Bool)

(assert (=> b!4397719 m!5058975))

(declare-fun m!5058977 () Bool)

(assert (=> b!4397720 m!5058977))

(declare-fun m!5058979 () Bool)

(assert (=> b!4397721 m!5058979))

(declare-fun m!5058981 () Bool)

(assert (=> b!4397721 m!5058981))

(assert (=> b!4397721 m!5058981))

(declare-fun m!5058983 () Bool)

(assert (=> b!4397721 m!5058983))

(assert (=> b!4397280 d!1325350))

(declare-fun d!1325352 () Bool)

(declare-fun res!1813426 () Bool)

(declare-fun e!2738223 () Bool)

(assert (=> d!1325352 (=> res!1813426 e!2738223)))

(assert (=> d!1325352 (= res!1813426 ((_ is Nil!49253) (t!356311 (toList!3217 lt!1603365))))))

(assert (=> d!1325352 (= (forall!9342 (t!356311 (toList!3217 lt!1603365)) lambda!148125) e!2738223)))

(declare-fun b!4397724 () Bool)

(declare-fun e!2738224 () Bool)

(assert (=> b!4397724 (= e!2738223 e!2738224)))

(declare-fun res!1813427 () Bool)

(assert (=> b!4397724 (=> (not res!1813427) (not e!2738224))))

(assert (=> b!4397724 (= res!1813427 (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lt!1603365)))))))

(declare-fun b!4397725 () Bool)

(assert (=> b!4397725 (= e!2738224 (forall!9342 (t!356311 (t!356311 (toList!3217 lt!1603365))) lambda!148125))))

(assert (= (and d!1325352 (not res!1813426)) b!4397724))

(assert (= (and b!4397724 res!1813427) b!4397725))

(declare-fun b_lambda!139377 () Bool)

(assert (=> (not b_lambda!139377) (not b!4397724)))

(declare-fun m!5058985 () Bool)

(assert (=> b!4397724 m!5058985))

(declare-fun m!5058987 () Bool)

(assert (=> b!4397725 m!5058987))

(assert (=> b!4397314 d!1325352))

(declare-fun bs!727196 () Bool)

(declare-fun b!4397727 () Bool)

(assert (= bs!727196 (and b!4397727 b!4397720)))

(declare-fun lambda!148272 () Int)

(assert (=> bs!727196 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (toList!3218 lt!1603367)) (= lambda!148272 lambda!148270))))

(assert (=> b!4397727 true))

(declare-fun bs!727197 () Bool)

(declare-fun b!4397728 () Bool)

(assert (= bs!727197 (and b!4397728 b!4397721)))

(declare-fun lambda!148273 () Int)

(assert (=> bs!727197 (= lambda!148273 lambda!148271)))

(declare-fun d!1325354 () Bool)

(declare-fun e!2738225 () Bool)

(assert (=> d!1325354 e!2738225))

(declare-fun res!1813430 () Bool)

(assert (=> d!1325354 (=> (not res!1813430) (not e!2738225))))

(declare-fun lt!1603845 () List!49379)

(assert (=> d!1325354 (= res!1813430 (noDuplicate!632 lt!1603845))))

(assert (=> d!1325354 (= lt!1603845 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))

(assert (=> d!1325354 (= (keys!16731 (extractMap!676 (toList!3217 lm!1707))) lt!1603845)))

(declare-fun b!4397726 () Bool)

(declare-fun res!1813428 () Bool)

(assert (=> b!4397726 (=> (not res!1813428) (not e!2738225))))

(assert (=> b!4397726 (= res!1813428 (= (length!120 lt!1603845) (length!121 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))))

(declare-fun res!1813429 () Bool)

(assert (=> b!4397727 (=> (not res!1813429) (not e!2738225))))

(assert (=> b!4397727 (= res!1813429 (forall!9346 lt!1603845 lambda!148272))))

(assert (=> b!4397728 (= e!2738225 (= (content!7858 lt!1603845) (content!7858 (map!10737 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) lambda!148273))))))

(assert (= (and d!1325354 res!1813430) b!4397726))

(assert (= (and b!4397726 res!1813428) b!4397727))

(assert (= (and b!4397727 res!1813429) b!4397728))

(declare-fun m!5058989 () Bool)

(assert (=> d!1325354 m!5058989))

(assert (=> d!1325354 m!5058207))

(declare-fun m!5058991 () Bool)

(assert (=> b!4397726 m!5058991))

(declare-fun m!5058993 () Bool)

(assert (=> b!4397726 m!5058993))

(declare-fun m!5058995 () Bool)

(assert (=> b!4397727 m!5058995))

(declare-fun m!5058997 () Bool)

(assert (=> b!4397728 m!5058997))

(declare-fun m!5058999 () Bool)

(assert (=> b!4397728 m!5058999))

(assert (=> b!4397728 m!5058999))

(declare-fun m!5059001 () Bool)

(assert (=> b!4397728 m!5059001))

(assert (=> b!4397250 d!1325354))

(assert (=> b!4397282 d!1325348))

(assert (=> b!4397282 d!1325350))

(assert (=> d!1325054 d!1325060))

(declare-fun d!1325356 () Bool)

(assert (=> d!1325356 (contains!11631 lt!1603367 key!3918)))

(assert (=> d!1325356 true))

(declare-fun _$11!1185 () Unit!78409)

(assert (=> d!1325356 (= (choose!27517 (_2!27714 (h!54872 (toList!3217 lm!1707))) key!3918 newValue!99 lt!1603367) _$11!1185)))

(declare-fun bs!727198 () Bool)

(assert (= bs!727198 d!1325356))

(assert (=> bs!727198 m!5057933))

(assert (=> d!1325054 d!1325356))

(assert (=> d!1325054 d!1325160))

(declare-fun d!1325358 () Bool)

(assert (=> d!1325358 (= (get!16031 (getValueByKey!586 (toList!3217 lm!1707) hash!377)) (v!43677 (getValueByKey!586 (toList!3217 lm!1707) hash!377)))))

(assert (=> d!1324984 d!1325358))

(declare-fun b!4397731 () Bool)

(declare-fun e!2738227 () Option!10600)

(assert (=> b!4397731 (= e!2738227 (getValueByKey!586 (t!356311 (toList!3217 lm!1707)) hash!377))))

(declare-fun b!4397730 () Bool)

(declare-fun e!2738226 () Option!10600)

(assert (=> b!4397730 (= e!2738226 e!2738227)))

(declare-fun c!748662 () Bool)

(assert (=> b!4397730 (= c!748662 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (not (= (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377))))))

(declare-fun b!4397732 () Bool)

(assert (=> b!4397732 (= e!2738227 None!10599)))

(declare-fun b!4397729 () Bool)

(assert (=> b!4397729 (= e!2738226 (Some!10599 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(declare-fun d!1325360 () Bool)

(declare-fun c!748661 () Bool)

(assert (=> d!1325360 (= c!748661 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) hash!377)))))

(assert (=> d!1325360 (= (getValueByKey!586 (toList!3217 lm!1707) hash!377) e!2738226)))

(assert (= (and d!1325360 c!748661) b!4397729))

(assert (= (and d!1325360 (not c!748661)) b!4397730))

(assert (= (and b!4397730 c!748662) b!4397731))

(assert (= (and b!4397730 (not c!748662)) b!4397732))

(declare-fun m!5059003 () Bool)

(assert (=> b!4397731 m!5059003))

(assert (=> d!1324984 d!1325360))

(declare-fun d!1325362 () Bool)

(declare-fun res!1813431 () Bool)

(declare-fun e!2738228 () Bool)

(assert (=> d!1325362 (=> res!1813431 e!2738228)))

(assert (=> d!1325362 (= res!1813431 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) key!3918)))))

(assert (=> d!1325362 (= (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918) e!2738228)))

(declare-fun b!4397733 () Bool)

(declare-fun e!2738229 () Bool)

(assert (=> b!4397733 (= e!2738228 e!2738229)))

(declare-fun res!1813432 () Bool)

(assert (=> b!4397733 (=> (not res!1813432) (not e!2738229))))

(assert (=> b!4397733 (= res!1813432 ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))

(declare-fun b!4397734 () Bool)

(assert (=> b!4397734 (= e!2738229 (containsKey!914 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) key!3918))))

(assert (= (and d!1325362 (not res!1813431)) b!4397733))

(assert (= (and b!4397733 res!1813432) b!4397734))

(declare-fun m!5059005 () Bool)

(assert (=> b!4397734 m!5059005))

(assert (=> d!1325070 d!1325362))

(declare-fun d!1325364 () Bool)

(declare-fun res!1813433 () Bool)

(declare-fun e!2738230 () Bool)

(assert (=> d!1325364 (=> res!1813433 e!2738230)))

(assert (=> d!1325364 (= res!1813433 (not ((_ is Cons!49252) (t!356310 newBucket!200))))))

(assert (=> d!1325364 (= (noDuplicateKeys!617 (t!356310 newBucket!200)) e!2738230)))

(declare-fun b!4397735 () Bool)

(declare-fun e!2738231 () Bool)

(assert (=> b!4397735 (= e!2738230 e!2738231)))

(declare-fun res!1813434 () Bool)

(assert (=> b!4397735 (=> (not res!1813434) (not e!2738231))))

(assert (=> b!4397735 (= res!1813434 (not (containsKey!911 (t!356310 (t!356310 newBucket!200)) (_1!27713 (h!54871 (t!356310 newBucket!200))))))))

(declare-fun b!4397736 () Bool)

(assert (=> b!4397736 (= e!2738231 (noDuplicateKeys!617 (t!356310 (t!356310 newBucket!200))))))

(assert (= (and d!1325364 (not res!1813433)) b!4397735))

(assert (= (and b!4397735 res!1813434) b!4397736))

(declare-fun m!5059007 () Bool)

(assert (=> b!4397735 m!5059007))

(declare-fun m!5059009 () Bool)

(assert (=> b!4397736 m!5059009))

(assert (=> b!4397093 d!1325364))

(declare-fun b!4397737 () Bool)

(declare-fun e!2738232 () List!49376)

(assert (=> b!4397737 (= e!2738232 (t!356310 (t!356310 lt!1603373)))))

(declare-fun b!4397740 () Bool)

(declare-fun e!2738233 () List!49376)

(assert (=> b!4397740 (= e!2738233 Nil!49252)))

(declare-fun b!4397739 () Bool)

(assert (=> b!4397739 (= e!2738233 (Cons!49252 (h!54871 (t!356310 lt!1603373)) (removePairForKey!585 (t!356310 (t!356310 lt!1603373)) key!3918)))))

(declare-fun d!1325366 () Bool)

(declare-fun lt!1603846 () List!49376)

(assert (=> d!1325366 (not (containsKey!911 lt!1603846 key!3918))))

(assert (=> d!1325366 (= lt!1603846 e!2738232)))

(declare-fun c!748664 () Bool)

(assert (=> d!1325366 (= c!748664 (and ((_ is Cons!49252) (t!356310 lt!1603373)) (= (_1!27713 (h!54871 (t!356310 lt!1603373))) key!3918)))))

(assert (=> d!1325366 (noDuplicateKeys!617 (t!356310 lt!1603373))))

(assert (=> d!1325366 (= (removePairForKey!585 (t!356310 lt!1603373) key!3918) lt!1603846)))

(declare-fun b!4397738 () Bool)

(assert (=> b!4397738 (= e!2738232 e!2738233)))

(declare-fun c!748663 () Bool)

(assert (=> b!4397738 (= c!748663 ((_ is Cons!49252) (t!356310 lt!1603373)))))

(assert (= (and d!1325366 c!748664) b!4397737))

(assert (= (and d!1325366 (not c!748664)) b!4397738))

(assert (= (and b!4397738 c!748663) b!4397739))

(assert (= (and b!4397738 (not c!748663)) b!4397740))

(declare-fun m!5059011 () Bool)

(assert (=> b!4397739 m!5059011))

(declare-fun m!5059013 () Bool)

(assert (=> d!1325366 m!5059013))

(declare-fun m!5059015 () Bool)

(assert (=> d!1325366 m!5059015))

(assert (=> b!4397154 d!1325366))

(declare-fun bs!727199 () Bool)

(declare-fun b!4397761 () Bool)

(assert (= bs!727199 (and b!4397761 b!4397720)))

(declare-fun lambda!148282 () Int)

(assert (=> bs!727199 (= (= (t!356310 (toList!3218 lt!1603367)) (toList!3218 lt!1603367)) (= lambda!148282 lambda!148270))))

(declare-fun bs!727200 () Bool)

(assert (= bs!727200 (and b!4397761 b!4397727)))

(assert (=> bs!727200 (= (= (t!356310 (toList!3218 lt!1603367)) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148282 lambda!148272))))

(assert (=> b!4397761 true))

(declare-fun bs!727201 () Bool)

(declare-fun b!4397763 () Bool)

(assert (= bs!727201 (and b!4397763 b!4397720)))

(declare-fun lambda!148283 () Int)

(assert (=> bs!727201 (= (= (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367))) (toList!3218 lt!1603367)) (= lambda!148283 lambda!148270))))

(declare-fun bs!727202 () Bool)

(assert (= bs!727202 (and b!4397763 b!4397727)))

(assert (=> bs!727202 (= (= (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148283 lambda!148272))))

(declare-fun bs!727203 () Bool)

(assert (= bs!727203 (and b!4397763 b!4397761)))

(assert (=> bs!727203 (= (= (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148283 lambda!148282))))

(assert (=> b!4397763 true))

(declare-fun bs!727204 () Bool)

(declare-fun b!4397759 () Bool)

(assert (= bs!727204 (and b!4397759 b!4397720)))

(declare-fun lambda!148284 () Int)

(assert (=> bs!727204 (= lambda!148284 lambda!148270)))

(declare-fun bs!727205 () Bool)

(assert (= bs!727205 (and b!4397759 b!4397727)))

(assert (=> bs!727205 (= (= (toList!3218 lt!1603367) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148284 lambda!148272))))

(declare-fun bs!727206 () Bool)

(assert (= bs!727206 (and b!4397759 b!4397761)))

(assert (=> bs!727206 (= (= (toList!3218 lt!1603367) (t!356310 (toList!3218 lt!1603367))) (= lambda!148284 lambda!148282))))

(declare-fun bs!727207 () Bool)

(assert (= bs!727207 (and b!4397759 b!4397763)))

(assert (=> bs!727207 (= (= (toList!3218 lt!1603367) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148284 lambda!148283))))

(assert (=> b!4397759 true))

(declare-fun bs!727208 () Bool)

(declare-fun b!4397762 () Bool)

(assert (= bs!727208 (and b!4397762 b!4397721)))

(declare-fun lambda!148285 () Int)

(assert (=> bs!727208 (= lambda!148285 lambda!148271)))

(declare-fun bs!727209 () Bool)

(assert (= bs!727209 (and b!4397762 b!4397728)))

(assert (=> bs!727209 (= lambda!148285 lambda!148273)))

(declare-fun res!1813441 () Bool)

(declare-fun e!2738244 () Bool)

(assert (=> b!4397759 (=> (not res!1813441) (not e!2738244))))

(declare-fun lt!1603867 () List!49379)

(assert (=> b!4397759 (= res!1813441 (forall!9346 lt!1603867 lambda!148284))))

(declare-fun b!4397760 () Bool)

(declare-fun e!2738242 () List!49379)

(assert (=> b!4397760 (= e!2738242 Nil!49255)))

(declare-fun d!1325368 () Bool)

(assert (=> d!1325368 e!2738244))

(declare-fun res!1813442 () Bool)

(assert (=> d!1325368 (=> (not res!1813442) (not e!2738244))))

(assert (=> d!1325368 (= res!1813442 (noDuplicate!632 lt!1603867))))

(assert (=> d!1325368 (= lt!1603867 e!2738242)))

(declare-fun c!748672 () Bool)

(assert (=> d!1325368 (= c!748672 ((_ is Cons!49252) (toList!3218 lt!1603367)))))

(assert (=> d!1325368 (invariantList!744 (toList!3218 lt!1603367))))

(assert (=> d!1325368 (= (getKeysList!191 (toList!3218 lt!1603367)) lt!1603867)))

(assert (=> b!4397761 false))

(declare-fun lt!1603863 () Unit!78409)

(declare-fun forallContained!1981 (List!49379 Int K!10610) Unit!78409)

(assert (=> b!4397761 (= lt!1603863 (forallContained!1981 (getKeysList!191 (t!356310 (toList!3218 lt!1603367))) lambda!148282 (_1!27713 (h!54871 (toList!3218 lt!1603367)))))))

(declare-fun e!2738243 () Unit!78409)

(declare-fun Unit!78478 () Unit!78409)

(assert (=> b!4397761 (= e!2738243 Unit!78478)))

(assert (=> b!4397762 (= e!2738244 (= (content!7858 lt!1603867) (content!7858 (map!10737 (toList!3218 lt!1603367) lambda!148285))))))

(assert (=> b!4397763 (= e!2738242 (Cons!49255 (_1!27713 (h!54871 (toList!3218 lt!1603367))) (getKeysList!191 (t!356310 (toList!3218 lt!1603367)))))))

(declare-fun c!748671 () Bool)

(assert (=> b!4397763 (= c!748671 (containsKey!914 (t!356310 (toList!3218 lt!1603367)) (_1!27713 (h!54871 (toList!3218 lt!1603367)))))))

(declare-fun lt!1603864 () Unit!78409)

(declare-fun e!2738245 () Unit!78409)

(assert (=> b!4397763 (= lt!1603864 e!2738245)))

(declare-fun c!748673 () Bool)

(assert (=> b!4397763 (= c!748673 (contains!11635 (getKeysList!191 (t!356310 (toList!3218 lt!1603367))) (_1!27713 (h!54871 (toList!3218 lt!1603367)))))))

(declare-fun lt!1603862 () Unit!78409)

(assert (=> b!4397763 (= lt!1603862 e!2738243)))

(declare-fun lt!1603865 () List!49379)

(assert (=> b!4397763 (= lt!1603865 (getKeysList!191 (t!356310 (toList!3218 lt!1603367))))))

(declare-fun lt!1603866 () Unit!78409)

(declare-fun lemmaForallContainsAddHeadPreserves!54 (List!49376 List!49379 tuple2!48838) Unit!78409)

(assert (=> b!4397763 (= lt!1603866 (lemmaForallContainsAddHeadPreserves!54 (t!356310 (toList!3218 lt!1603367)) lt!1603865 (h!54871 (toList!3218 lt!1603367))))))

(assert (=> b!4397763 (forall!9346 lt!1603865 lambda!148283)))

(declare-fun lt!1603861 () Unit!78409)

(assert (=> b!4397763 (= lt!1603861 lt!1603866)))

(declare-fun b!4397764 () Bool)

(assert (=> b!4397764 false))

(declare-fun Unit!78479 () Unit!78409)

(assert (=> b!4397764 (= e!2738245 Unit!78479)))

(declare-fun b!4397765 () Bool)

(declare-fun res!1813443 () Bool)

(assert (=> b!4397765 (=> (not res!1813443) (not e!2738244))))

(assert (=> b!4397765 (= res!1813443 (= (length!120 lt!1603867) (length!121 (toList!3218 lt!1603367))))))

(declare-fun b!4397766 () Bool)

(declare-fun Unit!78480 () Unit!78409)

(assert (=> b!4397766 (= e!2738245 Unit!78480)))

(declare-fun b!4397767 () Bool)

(declare-fun Unit!78481 () Unit!78409)

(assert (=> b!4397767 (= e!2738243 Unit!78481)))

(assert (= (and d!1325368 c!748672) b!4397763))

(assert (= (and d!1325368 (not c!748672)) b!4397760))

(assert (= (and b!4397763 c!748671) b!4397764))

(assert (= (and b!4397763 (not c!748671)) b!4397766))

(assert (= (and b!4397763 c!748673) b!4397761))

(assert (= (and b!4397763 (not c!748673)) b!4397767))

(assert (= (and d!1325368 res!1813442) b!4397765))

(assert (= (and b!4397765 res!1813443) b!4397759))

(assert (= (and b!4397759 res!1813441) b!4397762))

(declare-fun m!5059017 () Bool)

(assert (=> b!4397759 m!5059017))

(declare-fun m!5059019 () Bool)

(assert (=> b!4397761 m!5059019))

(assert (=> b!4397761 m!5059019))

(declare-fun m!5059021 () Bool)

(assert (=> b!4397761 m!5059021))

(declare-fun m!5059023 () Bool)

(assert (=> d!1325368 m!5059023))

(assert (=> d!1325368 m!5058957))

(declare-fun m!5059025 () Bool)

(assert (=> b!4397765 m!5059025))

(assert (=> b!4397765 m!5058975))

(declare-fun m!5059027 () Bool)

(assert (=> b!4397763 m!5059027))

(assert (=> b!4397763 m!5059019))

(declare-fun m!5059029 () Bool)

(assert (=> b!4397763 m!5059029))

(declare-fun m!5059031 () Bool)

(assert (=> b!4397763 m!5059031))

(assert (=> b!4397763 m!5059019))

(declare-fun m!5059033 () Bool)

(assert (=> b!4397763 m!5059033))

(declare-fun m!5059035 () Bool)

(assert (=> b!4397762 m!5059035))

(declare-fun m!5059037 () Bool)

(assert (=> b!4397762 m!5059037))

(assert (=> b!4397762 m!5059037))

(declare-fun m!5059039 () Bool)

(assert (=> b!4397762 m!5059039))

(assert (=> b!4397284 d!1325368))

(declare-fun d!1325370 () Bool)

(declare-fun lt!1603868 () Bool)

(assert (=> d!1325370 (= lt!1603868 (select (content!7858 e!2737945) key!3918))))

(declare-fun e!2738246 () Bool)

(assert (=> d!1325370 (= lt!1603868 e!2738246)))

(declare-fun res!1813445 () Bool)

(assert (=> d!1325370 (=> (not res!1813445) (not e!2738246))))

(assert (=> d!1325370 (= res!1813445 ((_ is Cons!49255) e!2737945))))

(assert (=> d!1325370 (= (contains!11635 e!2737945 key!3918) lt!1603868)))

(declare-fun b!4397770 () Bool)

(declare-fun e!2738247 () Bool)

(assert (=> b!4397770 (= e!2738246 e!2738247)))

(declare-fun res!1813444 () Bool)

(assert (=> b!4397770 (=> res!1813444 e!2738247)))

(assert (=> b!4397770 (= res!1813444 (= (h!54876 e!2737945) key!3918))))

(declare-fun b!4397771 () Bool)

(assert (=> b!4397771 (= e!2738247 (contains!11635 (t!356313 e!2737945) key!3918))))

(assert (= (and d!1325370 res!1813445) b!4397770))

(assert (= (and b!4397770 (not res!1813444)) b!4397771))

(declare-fun m!5059041 () Bool)

(assert (=> d!1325370 m!5059041))

(declare-fun m!5059043 () Bool)

(assert (=> d!1325370 m!5059043))

(declare-fun m!5059045 () Bool)

(assert (=> b!4397771 m!5059045))

(assert (=> bm!306042 d!1325370))

(assert (=> b!4397254 d!1325332))

(assert (=> b!4397254 d!1325334))

(declare-fun d!1325372 () Bool)

(declare-fun res!1813446 () Bool)

(declare-fun e!2738248 () Bool)

(assert (=> d!1325372 (=> res!1813446 e!2738248)))

(assert (=> d!1325372 (= res!1813446 ((_ is Nil!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325372 (= (forall!9342 (toList!3217 lm!1707) lambda!148151) e!2738248)))

(declare-fun b!4397772 () Bool)

(declare-fun e!2738249 () Bool)

(assert (=> b!4397772 (= e!2738248 e!2738249)))

(declare-fun res!1813447 () Bool)

(assert (=> b!4397772 (=> (not res!1813447) (not e!2738249))))

(assert (=> b!4397772 (= res!1813447 (dynLambda!20750 lambda!148151 (h!54872 (toList!3217 lm!1707))))))

(declare-fun b!4397773 () Bool)

(assert (=> b!4397773 (= e!2738249 (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148151))))

(assert (= (and d!1325372 (not res!1813446)) b!4397772))

(assert (= (and b!4397772 res!1813447) b!4397773))

(declare-fun b_lambda!139379 () Bool)

(assert (=> (not b_lambda!139379) (not b!4397772)))

(declare-fun m!5059047 () Bool)

(assert (=> b!4397772 m!5059047))

(declare-fun m!5059049 () Bool)

(assert (=> b!4397773 m!5059049))

(assert (=> d!1325076 d!1325372))

(declare-fun d!1325374 () Bool)

(declare-fun res!1813448 () Bool)

(declare-fun e!2738250 () Bool)

(assert (=> d!1325374 (=> res!1813448 e!2738250)))

(assert (=> d!1325374 (= res!1813448 ((_ is Nil!49253) (t!356311 (toList!3217 lt!1603369))))))

(assert (=> d!1325374 (= (forall!9342 (t!356311 (toList!3217 lt!1603369)) lambda!148125) e!2738250)))

(declare-fun b!4397774 () Bool)

(declare-fun e!2738251 () Bool)

(assert (=> b!4397774 (= e!2738250 e!2738251)))

(declare-fun res!1813449 () Bool)

(assert (=> b!4397774 (=> (not res!1813449) (not e!2738251))))

(assert (=> b!4397774 (= res!1813449 (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lt!1603369)))))))

(declare-fun b!4397775 () Bool)

(assert (=> b!4397775 (= e!2738251 (forall!9342 (t!356311 (t!356311 (toList!3217 lt!1603369))) lambda!148125))))

(assert (= (and d!1325374 (not res!1813448)) b!4397774))

(assert (= (and b!4397774 res!1813449) b!4397775))

(declare-fun b_lambda!139381 () Bool)

(assert (=> (not b_lambda!139381) (not b!4397774)))

(declare-fun m!5059051 () Bool)

(assert (=> b!4397774 m!5059051))

(declare-fun m!5059053 () Bool)

(assert (=> b!4397775 m!5059053))

(assert (=> b!4397275 d!1325374))

(declare-fun d!1325376 () Bool)

(declare-fun res!1813450 () Bool)

(declare-fun e!2738252 () Bool)

(assert (=> d!1325376 (=> res!1813450 e!2738252)))

(assert (=> d!1325376 (= res!1813450 ((_ is Nil!49253) (t!356311 (toList!3217 lm!1707))))))

(assert (=> d!1325376 (= (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148125) e!2738252)))

(declare-fun b!4397776 () Bool)

(declare-fun e!2738253 () Bool)

(assert (=> b!4397776 (= e!2738252 e!2738253)))

(declare-fun res!1813451 () Bool)

(assert (=> b!4397776 (=> (not res!1813451) (not e!2738253))))

(assert (=> b!4397776 (= res!1813451 (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lm!1707)))))))

(declare-fun b!4397777 () Bool)

(assert (=> b!4397777 (= e!2738253 (forall!9342 (t!356311 (t!356311 (toList!3217 lm!1707))) lambda!148125))))

(assert (= (and d!1325376 (not res!1813450)) b!4397776))

(assert (= (and b!4397776 res!1813451) b!4397777))

(declare-fun b_lambda!139383 () Bool)

(assert (=> (not b_lambda!139383) (not b!4397776)))

(declare-fun m!5059055 () Bool)

(assert (=> b!4397776 m!5059055))

(declare-fun m!5059057 () Bool)

(assert (=> b!4397777 m!5059057))

(assert (=> b!4397326 d!1325376))

(assert (=> b!4397289 d!1325362))

(declare-fun d!1325378 () Bool)

(assert (=> d!1325378 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918)))

(declare-fun lt!1603869 () Unit!78409)

(assert (=> d!1325378 (= lt!1603869 (choose!27526 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> d!1325378 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))

(assert (=> d!1325378 (= (lemmaInGetKeysListThenContainsKey!189 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918) lt!1603869)))

(declare-fun bs!727210 () Bool)

(assert (= bs!727210 d!1325378))

(assert (=> bs!727210 m!5058277))

(declare-fun m!5059059 () Bool)

(assert (=> bs!727210 m!5059059))

(declare-fun m!5059061 () Bool)

(assert (=> bs!727210 m!5059061))

(assert (=> b!4397289 d!1325378))

(declare-fun d!1325380 () Bool)

(assert (=> d!1325380 (isDefined!7894 (getValueByKey!586 (toList!3217 lm!1707) hash!377))))

(declare-fun lt!1603872 () Unit!78409)

(declare-fun choose!27528 (List!49377 (_ BitVec 64)) Unit!78409)

(assert (=> d!1325380 (= lt!1603872 (choose!27528 (toList!3217 lm!1707) hash!377))))

(declare-fun e!2738256 () Bool)

(assert (=> d!1325380 e!2738256))

(declare-fun res!1813454 () Bool)

(assert (=> d!1325380 (=> (not res!1813454) (not e!2738256))))

(assert (=> d!1325380 (= res!1813454 (isStrictlySorted!170 (toList!3217 lm!1707)))))

(assert (=> d!1325380 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!3217 lm!1707) hash!377) lt!1603872)))

(declare-fun b!4397780 () Bool)

(assert (=> b!4397780 (= e!2738256 (containsKey!915 (toList!3217 lm!1707) hash!377))))

(assert (= (and d!1325380 res!1813454) b!4397780))

(assert (=> d!1325380 m!5058035))

(assert (=> d!1325380 m!5058035))

(assert (=> d!1325380 m!5058301))

(declare-fun m!5059063 () Bool)

(assert (=> d!1325380 m!5059063))

(assert (=> d!1325380 m!5058085))

(assert (=> b!4397780 m!5058297))

(assert (=> b!4397302 d!1325380))

(declare-fun d!1325382 () Bool)

(declare-fun isEmpty!28270 (Option!10600) Bool)

(assert (=> d!1325382 (= (isDefined!7894 (getValueByKey!586 (toList!3217 lm!1707) hash!377)) (not (isEmpty!28270 (getValueByKey!586 (toList!3217 lm!1707) hash!377))))))

(declare-fun bs!727211 () Bool)

(assert (= bs!727211 d!1325382))

(assert (=> bs!727211 m!5058035))

(declare-fun m!5059065 () Bool)

(assert (=> bs!727211 m!5059065))

(assert (=> b!4397302 d!1325382))

(assert (=> b!4397302 d!1325360))

(declare-fun d!1325384 () Bool)

(assert (=> d!1325384 (= (invariantList!744 (toList!3218 lt!1603503)) (noDuplicatedKeys!148 (toList!3218 lt!1603503)))))

(declare-fun bs!727212 () Bool)

(assert (= bs!727212 d!1325384))

(declare-fun m!5059067 () Bool)

(assert (=> bs!727212 m!5059067))

(assert (=> d!1325050 d!1325384))

(declare-fun d!1325386 () Bool)

(declare-fun res!1813455 () Bool)

(declare-fun e!2738257 () Bool)

(assert (=> d!1325386 (=> res!1813455 e!2738257)))

(assert (=> d!1325386 (= res!1813455 ((_ is Nil!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325386 (= (forall!9342 (toList!3217 lm!1707) lambda!148143) e!2738257)))

(declare-fun b!4397781 () Bool)

(declare-fun e!2738258 () Bool)

(assert (=> b!4397781 (= e!2738257 e!2738258)))

(declare-fun res!1813456 () Bool)

(assert (=> b!4397781 (=> (not res!1813456) (not e!2738258))))

(assert (=> b!4397781 (= res!1813456 (dynLambda!20750 lambda!148143 (h!54872 (toList!3217 lm!1707))))))

(declare-fun b!4397782 () Bool)

(assert (=> b!4397782 (= e!2738258 (forall!9342 (t!356311 (toList!3217 lm!1707)) lambda!148143))))

(assert (= (and d!1325386 (not res!1813455)) b!4397781))

(assert (= (and b!4397781 res!1813456) b!4397782))

(declare-fun b_lambda!139385 () Bool)

(assert (=> (not b_lambda!139385) (not b!4397781)))

(declare-fun m!5059069 () Bool)

(assert (=> b!4397781 m!5059069))

(declare-fun m!5059071 () Bool)

(assert (=> b!4397782 m!5059071))

(assert (=> d!1325050 d!1325386))

(declare-fun d!1325388 () Bool)

(declare-fun e!2738260 () Bool)

(assert (=> d!1325388 e!2738260))

(declare-fun res!1813457 () Bool)

(assert (=> d!1325388 (=> res!1813457 e!2738260)))

(declare-fun lt!1603873 () Bool)

(assert (=> d!1325388 (= res!1813457 (not lt!1603873))))

(declare-fun lt!1603875 () Bool)

(assert (=> d!1325388 (= lt!1603873 lt!1603875)))

(declare-fun lt!1603876 () Unit!78409)

(declare-fun e!2738259 () Unit!78409)

(assert (=> d!1325388 (= lt!1603876 e!2738259)))

(declare-fun c!748674 () Bool)

(assert (=> d!1325388 (= c!748674 lt!1603875)))

(assert (=> d!1325388 (= lt!1603875 (containsKey!915 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(assert (=> d!1325388 (= (contains!11632 lt!1603548 (_1!27714 (tuple2!48841 hash!377 newBucket!200))) lt!1603873)))

(declare-fun b!4397783 () Bool)

(declare-fun lt!1603874 () Unit!78409)

(assert (=> b!4397783 (= e!2738259 lt!1603874)))

(assert (=> b!4397783 (= lt!1603874 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(assert (=> b!4397783 (isDefined!7894 (getValueByKey!586 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun b!4397784 () Bool)

(declare-fun Unit!78482 () Unit!78409)

(assert (=> b!4397784 (= e!2738259 Unit!78482)))

(declare-fun b!4397785 () Bool)

(assert (=> b!4397785 (= e!2738260 (isDefined!7894 (getValueByKey!586 (toList!3217 lt!1603548) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (= (and d!1325388 c!748674) b!4397783))

(assert (= (and d!1325388 (not c!748674)) b!4397784))

(assert (= (and d!1325388 (not res!1813457)) b!4397785))

(declare-fun m!5059073 () Bool)

(assert (=> d!1325388 m!5059073))

(declare-fun m!5059075 () Bool)

(assert (=> b!4397783 m!5059075))

(assert (=> b!4397783 m!5058323))

(assert (=> b!4397783 m!5058323))

(declare-fun m!5059077 () Bool)

(assert (=> b!4397783 m!5059077))

(assert (=> b!4397785 m!5058323))

(assert (=> b!4397785 m!5058323))

(assert (=> b!4397785 m!5059077))

(assert (=> d!1325084 d!1325388))

(declare-fun b!4397788 () Bool)

(declare-fun e!2738262 () Option!10600)

(assert (=> b!4397788 (= e!2738262 (getValueByKey!586 (t!356311 lt!1603550) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun b!4397787 () Bool)

(declare-fun e!2738261 () Option!10600)

(assert (=> b!4397787 (= e!2738261 e!2738262)))

(declare-fun c!748676 () Bool)

(assert (=> b!4397787 (= c!748676 (and ((_ is Cons!49253) lt!1603550) (not (= (_1!27714 (h!54872 lt!1603550)) (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))))

(declare-fun b!4397789 () Bool)

(assert (=> b!4397789 (= e!2738262 None!10599)))

(declare-fun b!4397786 () Bool)

(assert (=> b!4397786 (= e!2738261 (Some!10599 (_2!27714 (h!54872 lt!1603550))))))

(declare-fun d!1325390 () Bool)

(declare-fun c!748675 () Bool)

(assert (=> d!1325390 (= c!748675 (and ((_ is Cons!49253) lt!1603550) (= (_1!27714 (h!54872 lt!1603550)) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> d!1325390 (= (getValueByKey!586 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200))) e!2738261)))

(assert (= (and d!1325390 c!748675) b!4397786))

(assert (= (and d!1325390 (not c!748675)) b!4397787))

(assert (= (and b!4397787 c!748676) b!4397788))

(assert (= (and b!4397787 (not c!748676)) b!4397789))

(declare-fun m!5059079 () Bool)

(assert (=> b!4397788 m!5059079))

(assert (=> d!1325084 d!1325390))

(declare-fun d!1325392 () Bool)

(assert (=> d!1325392 (= (getValueByKey!586 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200))) (Some!10599 (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun lt!1603879 () Unit!78409)

(declare-fun choose!27529 (List!49377 (_ BitVec 64) List!49376) Unit!78409)

(assert (=> d!1325392 (= lt!1603879 (choose!27529 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun e!2738265 () Bool)

(assert (=> d!1325392 e!2738265))

(declare-fun res!1813462 () Bool)

(assert (=> d!1325392 (=> (not res!1813462) (not e!2738265))))

(assert (=> d!1325392 (= res!1813462 (isStrictlySorted!170 lt!1603550))))

(assert (=> d!1325392 (= (lemmaContainsTupThenGetReturnValue!339 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))) lt!1603879)))

(declare-fun b!4397794 () Bool)

(declare-fun res!1813463 () Bool)

(assert (=> b!4397794 (=> (not res!1813463) (not e!2738265))))

(assert (=> b!4397794 (= res!1813463 (containsKey!915 lt!1603550 (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun b!4397795 () Bool)

(assert (=> b!4397795 (= e!2738265 (contains!11633 lt!1603550 (tuple2!48841 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (= (and d!1325392 res!1813462) b!4397794))

(assert (= (and b!4397794 res!1813463) b!4397795))

(assert (=> d!1325392 m!5058317))

(declare-fun m!5059081 () Bool)

(assert (=> d!1325392 m!5059081))

(declare-fun m!5059083 () Bool)

(assert (=> d!1325392 m!5059083))

(declare-fun m!5059085 () Bool)

(assert (=> b!4397794 m!5059085))

(declare-fun m!5059087 () Bool)

(assert (=> b!4397795 m!5059087))

(assert (=> d!1325084 d!1325392))

(declare-fun b!4397816 () Bool)

(declare-fun e!2738280 () List!49377)

(declare-fun e!2738277 () List!49377)

(assert (=> b!4397816 (= e!2738280 e!2738277)))

(declare-fun c!748687 () Bool)

(assert (=> b!4397816 (= c!748687 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(declare-fun e!2738276 () List!49377)

(declare-fun b!4397818 () Bool)

(assert (=> b!4397818 (= e!2738276 (insertStrictlySorted!198 (t!356311 (toList!3217 lm!1707)) (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun bm!306085 () Bool)

(declare-fun call!306091 () List!49377)

(declare-fun call!306090 () List!49377)

(assert (=> bm!306085 (= call!306091 call!306090)))

(declare-fun b!4397819 () Bool)

(assert (=> b!4397819 (= e!2738280 call!306090)))

(declare-fun b!4397820 () Bool)

(declare-fun e!2738279 () List!49377)

(declare-fun call!306092 () List!49377)

(assert (=> b!4397820 (= e!2738279 call!306092)))

(declare-fun b!4397821 () Bool)

(assert (=> b!4397821 (= e!2738277 call!306091)))

(declare-fun c!748688 () Bool)

(declare-fun b!4397822 () Bool)

(assert (=> b!4397822 (= c!748688 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (bvsgt (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> b!4397822 (= e!2738277 e!2738279)))

(declare-fun b!4397823 () Bool)

(assert (=> b!4397823 (= e!2738279 call!306092)))

(declare-fun b!4397824 () Bool)

(assert (=> b!4397824 (= e!2738276 (ite c!748687 (t!356311 (toList!3217 lm!1707)) (ite c!748688 (Cons!49253 (h!54872 (toList!3217 lm!1707)) (t!356311 (toList!3217 lm!1707))) Nil!49253)))))

(declare-fun bm!306086 () Bool)

(assert (=> bm!306086 (= call!306092 call!306091)))

(declare-fun c!748686 () Bool)

(declare-fun bm!306087 () Bool)

(declare-fun $colon$colon!745 (List!49377 tuple2!48840) List!49377)

(assert (=> bm!306087 (= call!306090 ($colon$colon!745 e!2738276 (ite c!748686 (h!54872 (toList!3217 lm!1707)) (tuple2!48841 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))))))))

(declare-fun c!748685 () Bool)

(assert (=> bm!306087 (= c!748685 c!748686)))

(declare-fun e!2738278 () Bool)

(declare-fun b!4397825 () Bool)

(declare-fun lt!1603882 () List!49377)

(assert (=> b!4397825 (= e!2738278 (contains!11633 lt!1603882 (tuple2!48841 (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(declare-fun b!4397817 () Bool)

(declare-fun res!1813468 () Bool)

(assert (=> b!4397817 (=> (not res!1813468) (not e!2738278))))

(assert (=> b!4397817 (= res!1813468 (containsKey!915 lt!1603882 (_1!27714 (tuple2!48841 hash!377 newBucket!200))))))

(declare-fun d!1325394 () Bool)

(assert (=> d!1325394 e!2738278))

(declare-fun res!1813469 () Bool)

(assert (=> d!1325394 (=> (not res!1813469) (not e!2738278))))

(assert (=> d!1325394 (= res!1813469 (isStrictlySorted!170 lt!1603882))))

(assert (=> d!1325394 (= lt!1603882 e!2738280)))

(assert (=> d!1325394 (= c!748686 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (bvslt (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> d!1325394 (isStrictlySorted!170 (toList!3217 lm!1707))))

(assert (=> d!1325394 (= (insertStrictlySorted!198 (toList!3217 lm!1707) (_1!27714 (tuple2!48841 hash!377 newBucket!200)) (_2!27714 (tuple2!48841 hash!377 newBucket!200))) lt!1603882)))

(assert (= (and d!1325394 c!748686) b!4397819))

(assert (= (and d!1325394 (not c!748686)) b!4397816))

(assert (= (and b!4397816 c!748687) b!4397821))

(assert (= (and b!4397816 (not c!748687)) b!4397822))

(assert (= (and b!4397822 c!748688) b!4397823))

(assert (= (and b!4397822 (not c!748688)) b!4397820))

(assert (= (or b!4397823 b!4397820) bm!306086))

(assert (= (or b!4397821 bm!306086) bm!306085))

(assert (= (or b!4397819 bm!306085) bm!306087))

(assert (= (and bm!306087 c!748685) b!4397818))

(assert (= (and bm!306087 (not c!748685)) b!4397824))

(assert (= (and d!1325394 res!1813469) b!4397817))

(assert (= (and b!4397817 res!1813468) b!4397825))

(declare-fun m!5059089 () Bool)

(assert (=> bm!306087 m!5059089))

(declare-fun m!5059091 () Bool)

(assert (=> b!4397817 m!5059091))

(declare-fun m!5059093 () Bool)

(assert (=> b!4397825 m!5059093))

(declare-fun m!5059095 () Bool)

(assert (=> b!4397818 m!5059095))

(declare-fun m!5059097 () Bool)

(assert (=> d!1325394 m!5059097))

(assert (=> d!1325394 m!5058085))

(assert (=> d!1325084 d!1325394))

(declare-fun d!1325396 () Bool)

(declare-fun lt!1603883 () Bool)

(assert (=> d!1325396 (= lt!1603883 (select (content!7858 (keys!16731 (extractMap!676 (toList!3217 lt!1603369)))) key!3918))))

(declare-fun e!2738281 () Bool)

(assert (=> d!1325396 (= lt!1603883 e!2738281)))

(declare-fun res!1813471 () Bool)

(assert (=> d!1325396 (=> (not res!1813471) (not e!2738281))))

(assert (=> d!1325396 (= res!1813471 ((_ is Cons!49255) (keys!16731 (extractMap!676 (toList!3217 lt!1603369)))))))

(assert (=> d!1325396 (= (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lt!1603369))) key!3918) lt!1603883)))

(declare-fun b!4397826 () Bool)

(declare-fun e!2738282 () Bool)

(assert (=> b!4397826 (= e!2738281 e!2738282)))

(declare-fun res!1813470 () Bool)

(assert (=> b!4397826 (=> res!1813470 e!2738282)))

(assert (=> b!4397826 (= res!1813470 (= (h!54876 (keys!16731 (extractMap!676 (toList!3217 lt!1603369)))) key!3918))))

(declare-fun b!4397827 () Bool)

(assert (=> b!4397827 (= e!2738282 (contains!11635 (t!356313 (keys!16731 (extractMap!676 (toList!3217 lt!1603369)))) key!3918))))

(assert (= (and d!1325396 res!1813471) b!4397826))

(assert (= (and b!4397826 (not res!1813470)) b!4397827))

(assert (=> d!1325396 m!5058291))

(declare-fun m!5059099 () Bool)

(assert (=> d!1325396 m!5059099))

(declare-fun m!5059101 () Bool)

(assert (=> d!1325396 m!5059101))

(declare-fun m!5059103 () Bool)

(assert (=> b!4397827 m!5059103))

(assert (=> b!4397291 d!1325396))

(declare-fun bs!727213 () Bool)

(declare-fun b!4397829 () Bool)

(assert (= bs!727213 (and b!4397829 b!4397727)))

(declare-fun lambda!148286 () Int)

(assert (=> bs!727213 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148286 lambda!148272))))

(declare-fun bs!727214 () Bool)

(assert (= bs!727214 (and b!4397829 b!4397763)))

(assert (=> bs!727214 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148286 lambda!148283))))

(declare-fun bs!727215 () Bool)

(assert (= bs!727215 (and b!4397829 b!4397720)))

(assert (=> bs!727215 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 lt!1603367)) (= lambda!148286 lambda!148270))))

(declare-fun bs!727216 () Bool)

(assert (= bs!727216 (and b!4397829 b!4397761)))

(assert (=> bs!727216 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148286 lambda!148282))))

(declare-fun bs!727217 () Bool)

(assert (= bs!727217 (and b!4397829 b!4397759)))

(assert (=> bs!727217 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 lt!1603367)) (= lambda!148286 lambda!148284))))

(assert (=> b!4397829 true))

(declare-fun bs!727218 () Bool)

(declare-fun b!4397830 () Bool)

(assert (= bs!727218 (and b!4397830 b!4397721)))

(declare-fun lambda!148287 () Int)

(assert (=> bs!727218 (= lambda!148287 lambda!148271)))

(declare-fun bs!727219 () Bool)

(assert (= bs!727219 (and b!4397830 b!4397728)))

(assert (=> bs!727219 (= lambda!148287 lambda!148273)))

(declare-fun bs!727220 () Bool)

(assert (= bs!727220 (and b!4397830 b!4397762)))

(assert (=> bs!727220 (= lambda!148287 lambda!148285)))

(declare-fun d!1325398 () Bool)

(declare-fun e!2738283 () Bool)

(assert (=> d!1325398 e!2738283))

(declare-fun res!1813474 () Bool)

(assert (=> d!1325398 (=> (not res!1813474) (not e!2738283))))

(declare-fun lt!1603884 () List!49379)

(assert (=> d!1325398 (= res!1813474 (noDuplicate!632 lt!1603884))))

(assert (=> d!1325398 (= lt!1603884 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))

(assert (=> d!1325398 (= (keys!16731 (extractMap!676 (toList!3217 lt!1603369))) lt!1603884)))

(declare-fun b!4397828 () Bool)

(declare-fun res!1813472 () Bool)

(assert (=> b!4397828 (=> (not res!1813472) (not e!2738283))))

(assert (=> b!4397828 (= res!1813472 (= (length!120 lt!1603884) (length!121 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))))

(declare-fun res!1813473 () Bool)

(assert (=> b!4397829 (=> (not res!1813473) (not e!2738283))))

(assert (=> b!4397829 (= res!1813473 (forall!9346 lt!1603884 lambda!148286))))

(assert (=> b!4397830 (= e!2738283 (= (content!7858 lt!1603884) (content!7858 (map!10737 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) lambda!148287))))))

(assert (= (and d!1325398 res!1813474) b!4397828))

(assert (= (and b!4397828 res!1813472) b!4397829))

(assert (= (and b!4397829 res!1813473) b!4397830))

(declare-fun m!5059105 () Bool)

(assert (=> d!1325398 m!5059105))

(assert (=> d!1325398 m!5058289))

(declare-fun m!5059107 () Bool)

(assert (=> b!4397828 m!5059107))

(declare-fun m!5059109 () Bool)

(assert (=> b!4397828 m!5059109))

(declare-fun m!5059111 () Bool)

(assert (=> b!4397829 m!5059111))

(declare-fun m!5059113 () Bool)

(assert (=> b!4397830 m!5059113))

(declare-fun m!5059115 () Bool)

(assert (=> b!4397830 m!5059115))

(assert (=> b!4397830 m!5059115))

(declare-fun m!5059117 () Bool)

(assert (=> b!4397830 m!5059117))

(assert (=> b!4397291 d!1325398))

(assert (=> b!4397304 d!1325382))

(assert (=> b!4397304 d!1325360))

(declare-fun d!1325400 () Bool)

(declare-fun res!1813475 () Bool)

(declare-fun e!2738284 () Bool)

(assert (=> d!1325400 (=> res!1813475 e!2738284)))

(assert (=> d!1325400 (= res!1813475 (not ((_ is Cons!49252) (_2!27714 lt!1603370))))))

(assert (=> d!1325400 (= (noDuplicateKeys!617 (_2!27714 lt!1603370)) e!2738284)))

(declare-fun b!4397831 () Bool)

(declare-fun e!2738285 () Bool)

(assert (=> b!4397831 (= e!2738284 e!2738285)))

(declare-fun res!1813476 () Bool)

(assert (=> b!4397831 (=> (not res!1813476) (not e!2738285))))

(assert (=> b!4397831 (= res!1813476 (not (containsKey!911 (t!356310 (_2!27714 lt!1603370)) (_1!27713 (h!54871 (_2!27714 lt!1603370))))))))

(declare-fun b!4397832 () Bool)

(assert (=> b!4397832 (= e!2738285 (noDuplicateKeys!617 (t!356310 (_2!27714 lt!1603370))))))

(assert (= (and d!1325400 (not res!1813475)) b!4397831))

(assert (= (and b!4397831 res!1813476) b!4397832))

(declare-fun m!5059119 () Bool)

(assert (=> b!4397831 m!5059119))

(declare-fun m!5059121 () Bool)

(assert (=> b!4397832 m!5059121))

(assert (=> bs!726976 d!1325400))

(assert (=> b!4397293 d!1325396))

(assert (=> b!4397293 d!1325398))

(declare-fun bs!727221 () Bool)

(declare-fun b!4397835 () Bool)

(assert (= bs!727221 (and b!4397835 b!4397727)))

(declare-fun lambda!148288 () Int)

(assert (=> bs!727221 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148288 lambda!148272))))

(declare-fun bs!727222 () Bool)

(assert (= bs!727222 (and b!4397835 b!4397763)))

(assert (=> bs!727222 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148288 lambda!148283))))

(declare-fun bs!727223 () Bool)

(assert (= bs!727223 (and b!4397835 b!4397720)))

(assert (=> bs!727223 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (toList!3218 lt!1603367)) (= lambda!148288 lambda!148270))))

(declare-fun bs!727224 () Bool)

(assert (= bs!727224 (and b!4397835 b!4397761)))

(assert (=> bs!727224 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148288 lambda!148282))))

(declare-fun bs!727225 () Bool)

(assert (= bs!727225 (and b!4397835 b!4397759)))

(assert (=> bs!727225 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (toList!3218 lt!1603367)) (= lambda!148288 lambda!148284))))

(declare-fun bs!727226 () Bool)

(assert (= bs!727226 (and b!4397835 b!4397829)))

(assert (=> bs!727226 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148288 lambda!148286))))

(assert (=> b!4397835 true))

(declare-fun bs!727227 () Bool)

(declare-fun b!4397837 () Bool)

(assert (= bs!727227 (and b!4397837 b!4397727)))

(declare-fun lambda!148289 () Int)

(assert (=> bs!727227 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148289 lambda!148272))))

(declare-fun bs!727228 () Bool)

(assert (= bs!727228 (and b!4397837 b!4397763)))

(assert (=> bs!727228 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148289 lambda!148283))))

(declare-fun bs!727229 () Bool)

(assert (= bs!727229 (and b!4397837 b!4397720)))

(assert (=> bs!727229 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (toList!3218 lt!1603367)) (= lambda!148289 lambda!148270))))

(declare-fun bs!727230 () Bool)

(assert (= bs!727230 (and b!4397837 b!4397759)))

(assert (=> bs!727230 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (toList!3218 lt!1603367)) (= lambda!148289 lambda!148284))))

(declare-fun bs!727231 () Bool)

(assert (= bs!727231 (and b!4397837 b!4397829)))

(assert (=> bs!727231 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148289 lambda!148286))))

(declare-fun bs!727232 () Bool)

(assert (= bs!727232 (and b!4397837 b!4397835)))

(assert (=> bs!727232 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (= lambda!148289 lambda!148288))))

(declare-fun bs!727233 () Bool)

(assert (= bs!727233 (and b!4397837 b!4397761)))

(assert (=> bs!727233 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148289 lambda!148282))))

(assert (=> b!4397837 true))

(declare-fun bs!727234 () Bool)

(declare-fun b!4397833 () Bool)

(assert (= bs!727234 (and b!4397833 b!4397727)))

(declare-fun lambda!148290 () Int)

(assert (=> bs!727234 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148290 lambda!148272))))

(declare-fun bs!727235 () Bool)

(assert (= bs!727235 (and b!4397833 b!4397763)))

(assert (=> bs!727235 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148290 lambda!148283))))

(declare-fun bs!727236 () Bool)

(assert (= bs!727236 (and b!4397833 b!4397837)))

(assert (=> bs!727236 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))) (= lambda!148290 lambda!148289))))

(declare-fun bs!727237 () Bool)

(assert (= bs!727237 (and b!4397833 b!4397720)))

(assert (=> bs!727237 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 lt!1603367)) (= lambda!148290 lambda!148270))))

(declare-fun bs!727238 () Bool)

(assert (= bs!727238 (and b!4397833 b!4397759)))

(assert (=> bs!727238 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (toList!3218 lt!1603367)) (= lambda!148290 lambda!148284))))

(declare-fun bs!727239 () Bool)

(assert (= bs!727239 (and b!4397833 b!4397829)))

(assert (=> bs!727239 (= lambda!148290 lambda!148286)))

(declare-fun bs!727240 () Bool)

(assert (= bs!727240 (and b!4397833 b!4397835)))

(assert (=> bs!727240 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (= lambda!148290 lambda!148288))))

(declare-fun bs!727241 () Bool)

(assert (= bs!727241 (and b!4397833 b!4397761)))

(assert (=> bs!727241 (= (= (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148290 lambda!148282))))

(assert (=> b!4397833 true))

(declare-fun bs!727242 () Bool)

(declare-fun b!4397836 () Bool)

(assert (= bs!727242 (and b!4397836 b!4397721)))

(declare-fun lambda!148291 () Int)

(assert (=> bs!727242 (= lambda!148291 lambda!148271)))

(declare-fun bs!727243 () Bool)

(assert (= bs!727243 (and b!4397836 b!4397728)))

(assert (=> bs!727243 (= lambda!148291 lambda!148273)))

(declare-fun bs!727244 () Bool)

(assert (= bs!727244 (and b!4397836 b!4397762)))

(assert (=> bs!727244 (= lambda!148291 lambda!148285)))

(declare-fun bs!727245 () Bool)

(assert (= bs!727245 (and b!4397836 b!4397830)))

(assert (=> bs!727245 (= lambda!148291 lambda!148287)))

(declare-fun res!1813477 () Bool)

(declare-fun e!2738288 () Bool)

(assert (=> b!4397833 (=> (not res!1813477) (not e!2738288))))

(declare-fun lt!1603891 () List!49379)

(assert (=> b!4397833 (= res!1813477 (forall!9346 lt!1603891 lambda!148290))))

(declare-fun b!4397834 () Bool)

(declare-fun e!2738286 () List!49379)

(assert (=> b!4397834 (= e!2738286 Nil!49255)))

(declare-fun d!1325402 () Bool)

(assert (=> d!1325402 e!2738288))

(declare-fun res!1813478 () Bool)

(assert (=> d!1325402 (=> (not res!1813478) (not e!2738288))))

(assert (=> d!1325402 (= res!1813478 (noDuplicate!632 lt!1603891))))

(assert (=> d!1325402 (= lt!1603891 e!2738286)))

(declare-fun c!748690 () Bool)

(assert (=> d!1325402 (= c!748690 ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))

(assert (=> d!1325402 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))

(assert (=> d!1325402 (= (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) lt!1603891)))

(assert (=> b!4397835 false))

(declare-fun lt!1603887 () Unit!78409)

(assert (=> b!4397835 (= lt!1603887 (forallContained!1981 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) lambda!148288 (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))))

(declare-fun e!2738287 () Unit!78409)

(declare-fun Unit!78483 () Unit!78409)

(assert (=> b!4397835 (= e!2738287 Unit!78483)))

(assert (=> b!4397836 (= e!2738288 (= (content!7858 lt!1603891) (content!7858 (map!10737 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) lambda!148291))))))

(assert (=> b!4397837 (= e!2738286 (Cons!49255 (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))))

(declare-fun c!748689 () Bool)

(assert (=> b!4397837 (= c!748689 (containsKey!914 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))))

(declare-fun lt!1603888 () Unit!78409)

(declare-fun e!2738289 () Unit!78409)

(assert (=> b!4397837 (= lt!1603888 e!2738289)))

(declare-fun c!748691 () Bool)

(assert (=> b!4397837 (= c!748691 (contains!11635 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))))))

(declare-fun lt!1603886 () Unit!78409)

(assert (=> b!4397837 (= lt!1603886 e!2738287)))

(declare-fun lt!1603889 () List!49379)

(assert (=> b!4397837 (= lt!1603889 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))))

(declare-fun lt!1603890 () Unit!78409)

(assert (=> b!4397837 (= lt!1603890 (lemmaForallContainsAddHeadPreserves!54 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) lt!1603889 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))))

(assert (=> b!4397837 (forall!9346 lt!1603889 lambda!148289)))

(declare-fun lt!1603885 () Unit!78409)

(assert (=> b!4397837 (= lt!1603885 lt!1603890)))

(declare-fun b!4397838 () Bool)

(assert (=> b!4397838 false))

(declare-fun Unit!78489 () Unit!78409)

(assert (=> b!4397838 (= e!2738289 Unit!78489)))

(declare-fun b!4397839 () Bool)

(declare-fun res!1813479 () Bool)

(assert (=> b!4397839 (=> (not res!1813479) (not e!2738288))))

(assert (=> b!4397839 (= res!1813479 (= (length!120 lt!1603891) (length!121 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))))

(declare-fun b!4397840 () Bool)

(declare-fun Unit!78492 () Unit!78409)

(assert (=> b!4397840 (= e!2738289 Unit!78492)))

(declare-fun b!4397841 () Bool)

(declare-fun Unit!78494 () Unit!78409)

(assert (=> b!4397841 (= e!2738287 Unit!78494)))

(assert (= (and d!1325402 c!748690) b!4397837))

(assert (= (and d!1325402 (not c!748690)) b!4397834))

(assert (= (and b!4397837 c!748689) b!4397838))

(assert (= (and b!4397837 (not c!748689)) b!4397840))

(assert (= (and b!4397837 c!748691) b!4397835))

(assert (= (and b!4397837 (not c!748691)) b!4397841))

(assert (= (and d!1325402 res!1813478) b!4397839))

(assert (= (and b!4397839 res!1813479) b!4397833))

(assert (= (and b!4397833 res!1813477) b!4397836))

(declare-fun m!5059123 () Bool)

(assert (=> b!4397833 m!5059123))

(declare-fun m!5059125 () Bool)

(assert (=> b!4397835 m!5059125))

(assert (=> b!4397835 m!5059125))

(declare-fun m!5059127 () Bool)

(assert (=> b!4397835 m!5059127))

(declare-fun m!5059129 () Bool)

(assert (=> d!1325402 m!5059129))

(assert (=> d!1325402 m!5059061))

(declare-fun m!5059131 () Bool)

(assert (=> b!4397839 m!5059131))

(assert (=> b!4397839 m!5059109))

(declare-fun m!5059133 () Bool)

(assert (=> b!4397837 m!5059133))

(assert (=> b!4397837 m!5059125))

(declare-fun m!5059135 () Bool)

(assert (=> b!4397837 m!5059135))

(declare-fun m!5059137 () Bool)

(assert (=> b!4397837 m!5059137))

(assert (=> b!4397837 m!5059125))

(declare-fun m!5059139 () Bool)

(assert (=> b!4397837 m!5059139))

(declare-fun m!5059141 () Bool)

(assert (=> b!4397836 m!5059141))

(declare-fun m!5059143 () Bool)

(assert (=> b!4397836 m!5059143))

(assert (=> b!4397836 m!5059143))

(declare-fun m!5059145 () Bool)

(assert (=> b!4397836 m!5059145))

(assert (=> b!4397295 d!1325402))

(assert (=> b!4397158 d!1325360))

(declare-fun d!1325404 () Bool)

(declare-fun res!1813484 () Bool)

(declare-fun e!2738294 () Bool)

(assert (=> d!1325404 (=> res!1813484 e!2738294)))

(assert (=> d!1325404 (= res!1813484 (or ((_ is Nil!49253) (toList!3217 lm!1707)) ((_ is Nil!49253) (t!356311 (toList!3217 lm!1707)))))))

(assert (=> d!1325404 (= (isStrictlySorted!170 (toList!3217 lm!1707)) e!2738294)))

(declare-fun b!4397846 () Bool)

(declare-fun e!2738295 () Bool)

(assert (=> b!4397846 (= e!2738294 e!2738295)))

(declare-fun res!1813485 () Bool)

(assert (=> b!4397846 (=> (not res!1813485) (not e!2738295))))

(assert (=> b!4397846 (= res!1813485 (bvslt (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))

(declare-fun b!4397847 () Bool)

(assert (=> b!4397847 (= e!2738295 (isStrictlySorted!170 (t!356311 (toList!3217 lm!1707))))))

(assert (= (and d!1325404 (not res!1813484)) b!4397846))

(assert (= (and b!4397846 res!1813485) b!4397847))

(declare-fun m!5059147 () Bool)

(assert (=> b!4397847 m!5059147))

(assert (=> d!1325090 d!1325404))

(declare-fun d!1325406 () Bool)

(declare-fun res!1813486 () Bool)

(declare-fun e!2738296 () Bool)

(assert (=> d!1325406 (=> res!1813486 e!2738296)))

(assert (=> d!1325406 (= res!1813486 (not ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lt!1603365))))))))

(assert (=> d!1325406 (= (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603365)))) e!2738296)))

(declare-fun b!4397848 () Bool)

(declare-fun e!2738297 () Bool)

(assert (=> b!4397848 (= e!2738296 e!2738297)))

(declare-fun res!1813487 () Bool)

(assert (=> b!4397848 (=> (not res!1813487) (not e!2738297))))

(assert (=> b!4397848 (= res!1813487 (not (containsKey!911 (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603365)))) (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lt!1603365))))))))))

(declare-fun b!4397849 () Bool)

(assert (=> b!4397849 (= e!2738297 (noDuplicateKeys!617 (t!356310 (_2!27714 (h!54872 (toList!3217 lt!1603365))))))))

(assert (= (and d!1325406 (not res!1813486)) b!4397848))

(assert (= (and b!4397848 res!1813487) b!4397849))

(declare-fun m!5059149 () Bool)

(assert (=> b!4397848 m!5059149))

(declare-fun m!5059151 () Bool)

(assert (=> b!4397849 m!5059151))

(assert (=> bs!726973 d!1325406))

(declare-fun d!1325408 () Bool)

(assert (=> d!1325408 (isDefined!7893 (getValueByKey!587 (toList!3218 lt!1603367) key!3918))))

(declare-fun lt!1603892 () Unit!78409)

(assert (=> d!1325408 (= lt!1603892 (choose!27524 (toList!3218 lt!1603367) key!3918))))

(assert (=> d!1325408 (invariantList!744 (toList!3218 lt!1603367))))

(assert (=> d!1325408 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 lt!1603367) key!3918) lt!1603892)))

(declare-fun bs!727246 () Bool)

(assert (= bs!727246 d!1325408))

(assert (=> bs!727246 m!5058243))

(assert (=> bs!727246 m!5058243))

(assert (=> bs!727246 m!5058245))

(declare-fun m!5059153 () Bool)

(assert (=> bs!727246 m!5059153))

(assert (=> bs!727246 m!5058957))

(assert (=> b!4397276 d!1325408))

(declare-fun d!1325410 () Bool)

(assert (=> d!1325410 (= (isDefined!7893 (getValueByKey!587 (toList!3218 lt!1603367) key!3918)) (not (isEmpty!28269 (getValueByKey!587 (toList!3218 lt!1603367) key!3918))))))

(declare-fun bs!727247 () Bool)

(assert (= bs!727247 d!1325410))

(assert (=> bs!727247 m!5058243))

(declare-fun m!5059155 () Bool)

(assert (=> bs!727247 m!5059155))

(assert (=> b!4397276 d!1325410))

(declare-fun b!4397851 () Bool)

(declare-fun e!2738298 () Option!10601)

(declare-fun e!2738299 () Option!10601)

(assert (=> b!4397851 (= e!2738298 e!2738299)))

(declare-fun c!748693 () Bool)

(assert (=> b!4397851 (= c!748693 (and ((_ is Cons!49252) (toList!3218 lt!1603367)) (not (= (_1!27713 (h!54871 (toList!3218 lt!1603367))) key!3918))))))

(declare-fun b!4397850 () Bool)

(assert (=> b!4397850 (= e!2738298 (Some!10600 (_2!27713 (h!54871 (toList!3218 lt!1603367)))))))

(declare-fun b!4397853 () Bool)

(assert (=> b!4397853 (= e!2738299 None!10600)))

(declare-fun d!1325412 () Bool)

(declare-fun c!748692 () Bool)

(assert (=> d!1325412 (= c!748692 (and ((_ is Cons!49252) (toList!3218 lt!1603367)) (= (_1!27713 (h!54871 (toList!3218 lt!1603367))) key!3918)))))

(assert (=> d!1325412 (= (getValueByKey!587 (toList!3218 lt!1603367) key!3918) e!2738298)))

(declare-fun b!4397852 () Bool)

(assert (=> b!4397852 (= e!2738299 (getValueByKey!587 (t!356310 (toList!3218 lt!1603367)) key!3918))))

(assert (= (and d!1325412 c!748692) b!4397850))

(assert (= (and d!1325412 (not c!748692)) b!4397851))

(assert (= (and b!4397851 c!748693) b!4397852))

(assert (= (and b!4397851 (not c!748693)) b!4397853))

(declare-fun m!5059157 () Bool)

(assert (=> b!4397852 m!5059157))

(assert (=> b!4397276 d!1325412))

(declare-fun d!1325414 () Bool)

(assert (=> d!1325414 (contains!11635 (getKeysList!191 (toList!3218 lt!1603367)) key!3918)))

(declare-fun lt!1603893 () Unit!78409)

(assert (=> d!1325414 (= lt!1603893 (choose!27525 (toList!3218 lt!1603367) key!3918))))

(assert (=> d!1325414 (invariantList!744 (toList!3218 lt!1603367))))

(assert (=> d!1325414 (= (lemmaInListThenGetKeysListContains!188 (toList!3218 lt!1603367) key!3918) lt!1603893)))

(declare-fun bs!727248 () Bool)

(assert (= bs!727248 d!1325414))

(assert (=> bs!727248 m!5058251))

(assert (=> bs!727248 m!5058251))

(declare-fun m!5059159 () Bool)

(assert (=> bs!727248 m!5059159))

(declare-fun m!5059161 () Bool)

(assert (=> bs!727248 m!5059161))

(assert (=> bs!727248 m!5058957))

(assert (=> b!4397276 d!1325414))

(declare-fun d!1325416 () Bool)

(declare-fun choose!27530 (Hashable!5009 K!10610) (_ BitVec 64))

(assert (=> d!1325416 (= (hash!1843 hashF!1247 key!3918) (choose!27530 hashF!1247 key!3918))))

(declare-fun bs!727249 () Bool)

(assert (= bs!727249 d!1325416))

(declare-fun m!5059163 () Bool)

(assert (=> bs!727249 m!5059163))

(assert (=> d!1325074 d!1325416))

(declare-fun d!1325418 () Bool)

(assert (=> d!1325418 (= (get!16031 (getValueByKey!586 (toList!3217 lm!1707) (_1!27714 (h!54872 (toList!3217 lm!1707))))) (v!43677 (getValueByKey!586 (toList!3217 lm!1707) (_1!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (=> d!1325068 d!1325418))

(declare-fun b!4397856 () Bool)

(declare-fun e!2738301 () Option!10600)

(assert (=> b!4397856 (= e!2738301 (getValueByKey!586 (t!356311 (toList!3217 lm!1707)) (_1!27714 (h!54872 (toList!3217 lm!1707)))))))

(declare-fun b!4397855 () Bool)

(declare-fun e!2738300 () Option!10600)

(assert (=> b!4397855 (= e!2738300 e!2738301)))

(declare-fun c!748695 () Bool)

(assert (=> b!4397855 (= c!748695 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (not (= (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (h!54872 (toList!3217 lm!1707)))))))))

(declare-fun b!4397857 () Bool)

(assert (=> b!4397857 (= e!2738301 None!10599)))

(declare-fun b!4397854 () Bool)

(assert (=> b!4397854 (= e!2738300 (Some!10599 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(declare-fun d!1325420 () Bool)

(declare-fun c!748694 () Bool)

(assert (=> d!1325420 (= c!748694 (and ((_ is Cons!49253) (toList!3217 lm!1707)) (= (_1!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (=> d!1325420 (= (getValueByKey!586 (toList!3217 lm!1707) (_1!27714 (h!54872 (toList!3217 lm!1707)))) e!2738300)))

(assert (= (and d!1325420 c!748694) b!4397854))

(assert (= (and d!1325420 (not c!748694)) b!4397855))

(assert (= (and b!4397855 c!748695) b!4397856))

(assert (= (and b!4397855 (not c!748695)) b!4397857))

(declare-fun m!5059165 () Bool)

(assert (=> b!4397856 m!5059165))

(assert (=> d!1325068 d!1325420))

(declare-fun lt!1603894 () Bool)

(declare-fun d!1325422 () Bool)

(assert (=> d!1325422 (= lt!1603894 (select (content!7856 (toList!3217 lm!1707)) (tuple2!48841 hash!377 lt!1603373)))))

(declare-fun e!2738303 () Bool)

(assert (=> d!1325422 (= lt!1603894 e!2738303)))

(declare-fun res!1813488 () Bool)

(assert (=> d!1325422 (=> (not res!1813488) (not e!2738303))))

(assert (=> d!1325422 (= res!1813488 ((_ is Cons!49253) (toList!3217 lm!1707)))))

(assert (=> d!1325422 (= (contains!11633 (toList!3217 lm!1707) (tuple2!48841 hash!377 lt!1603373)) lt!1603894)))

(declare-fun b!4397858 () Bool)

(declare-fun e!2738302 () Bool)

(assert (=> b!4397858 (= e!2738303 e!2738302)))

(declare-fun res!1813489 () Bool)

(assert (=> b!4397858 (=> res!1813489 e!2738302)))

(assert (=> b!4397858 (= res!1813489 (= (h!54872 (toList!3217 lm!1707)) (tuple2!48841 hash!377 lt!1603373)))))

(declare-fun b!4397859 () Bool)

(assert (=> b!4397859 (= e!2738302 (contains!11633 (t!356311 (toList!3217 lm!1707)) (tuple2!48841 hash!377 lt!1603373)))))

(assert (= (and d!1325422 res!1813488) b!4397858))

(assert (= (and b!4397858 (not res!1813489)) b!4397859))

(assert (=> d!1325422 m!5058039))

(declare-fun m!5059167 () Bool)

(assert (=> d!1325422 m!5059167))

(declare-fun m!5059169 () Bool)

(assert (=> b!4397859 m!5059169))

(assert (=> d!1325006 d!1325422))

(declare-fun d!1325424 () Bool)

(assert (=> d!1325424 (contains!11633 (toList!3217 lm!1707) (tuple2!48841 hash!377 lt!1603373))))

(assert (=> d!1325424 true))

(declare-fun _$14!878 () Unit!78409)

(assert (=> d!1325424 (= (choose!27516 (toList!3217 lm!1707) hash!377 lt!1603373) _$14!878)))

(declare-fun bs!727250 () Bool)

(assert (= bs!727250 d!1325424))

(assert (=> bs!727250 m!5058081))

(assert (=> d!1325006 d!1325424))

(assert (=> d!1325006 d!1325404))

(declare-fun d!1325426 () Bool)

(declare-fun lt!1603895 () Bool)

(assert (=> d!1325426 (= lt!1603895 (select (content!7856 (toList!3217 lt!1603548)) (tuple2!48841 hash!377 newBucket!200)))))

(declare-fun e!2738305 () Bool)

(assert (=> d!1325426 (= lt!1603895 e!2738305)))

(declare-fun res!1813490 () Bool)

(assert (=> d!1325426 (=> (not res!1813490) (not e!2738305))))

(assert (=> d!1325426 (= res!1813490 ((_ is Cons!49253) (toList!3217 lt!1603548)))))

(assert (=> d!1325426 (= (contains!11633 (toList!3217 lt!1603548) (tuple2!48841 hash!377 newBucket!200)) lt!1603895)))

(declare-fun b!4397860 () Bool)

(declare-fun e!2738304 () Bool)

(assert (=> b!4397860 (= e!2738305 e!2738304)))

(declare-fun res!1813491 () Bool)

(assert (=> b!4397860 (=> res!1813491 e!2738304)))

(assert (=> b!4397860 (= res!1813491 (= (h!54872 (toList!3217 lt!1603548)) (tuple2!48841 hash!377 newBucket!200)))))

(declare-fun b!4397861 () Bool)

(assert (=> b!4397861 (= e!2738304 (contains!11633 (t!356311 (toList!3217 lt!1603548)) (tuple2!48841 hash!377 newBucket!200)))))

(assert (= (and d!1325426 res!1813490) b!4397860))

(assert (= (and b!4397860 (not res!1813491)) b!4397861))

(declare-fun m!5059171 () Bool)

(assert (=> d!1325426 m!5059171))

(declare-fun m!5059173 () Bool)

(assert (=> d!1325426 m!5059173))

(declare-fun m!5059175 () Bool)

(assert (=> b!4397861 m!5059175))

(assert (=> b!4397320 d!1325426))

(declare-fun d!1325428 () Bool)

(declare-fun lt!1603896 () Bool)

(assert (=> d!1325428 (= lt!1603896 (select (content!7858 e!2737916) key!3918))))

(declare-fun e!2738306 () Bool)

(assert (=> d!1325428 (= lt!1603896 e!2738306)))

(declare-fun res!1813493 () Bool)

(assert (=> d!1325428 (=> (not res!1813493) (not e!2738306))))

(assert (=> d!1325428 (= res!1813493 ((_ is Cons!49255) e!2737916))))

(assert (=> d!1325428 (= (contains!11635 e!2737916 key!3918) lt!1603896)))

(declare-fun b!4397862 () Bool)

(declare-fun e!2738307 () Bool)

(assert (=> b!4397862 (= e!2738306 e!2738307)))

(declare-fun res!1813492 () Bool)

(assert (=> b!4397862 (=> res!1813492 e!2738307)))

(assert (=> b!4397862 (= res!1813492 (= (h!54876 e!2737916) key!3918))))

(declare-fun b!4397863 () Bool)

(assert (=> b!4397863 (= e!2738307 (contains!11635 (t!356313 e!2737916) key!3918))))

(assert (= (and d!1325428 res!1813493) b!4397862))

(assert (= (and b!4397862 (not res!1813492)) b!4397863))

(declare-fun m!5059177 () Bool)

(assert (=> d!1325428 m!5059177))

(declare-fun m!5059179 () Bool)

(assert (=> d!1325428 m!5059179))

(declare-fun m!5059181 () Bool)

(assert (=> b!4397863 m!5059181))

(assert (=> bm!306040 d!1325428))

(declare-fun bs!727251 () Bool)

(declare-fun b!4397865 () Bool)

(assert (= bs!727251 (and b!4397865 d!1325302)))

(declare-fun lambda!148292 () Int)

(assert (=> bs!727251 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603818) (= lambda!148292 lambda!148263))))

(declare-fun bs!727252 () Bool)

(assert (= bs!727252 (and b!4397865 b!4397672)))

(assert (=> bs!727252 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603813) (= lambda!148292 lambda!148261))))

(declare-fun bs!727253 () Bool)

(assert (= bs!727253 (and b!4397865 b!4397631)))

(assert (=> bs!727253 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148292 lambda!148251))))

(declare-fun bs!727254 () Bool)

(assert (= bs!727254 (and b!4397865 b!4397673)))

(assert (=> bs!727254 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148292 lambda!148257))))

(assert (=> bs!727253 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603783) (= lambda!148292 lambda!148252))))

(assert (=> bs!727252 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148292 lambda!148259))))

(declare-fun bs!727255 () Bool)

(assert (= bs!727255 (and b!4397865 d!1325080)))

(assert (=> bs!727255 (not (= lambda!148292 lambda!148154))))

(declare-fun bs!727256 () Bool)

(assert (= bs!727256 (and b!4397865 d!1325166)))

(assert (=> bs!727256 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603788) (= lambda!148292 lambda!148254))))

(declare-fun bs!727257 () Bool)

(assert (= bs!727257 (and b!4397865 b!4397632)))

(assert (=> bs!727257 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148292 lambda!148249))))

(assert (=> b!4397865 true))

(declare-fun bs!727258 () Bool)

(declare-fun b!4397864 () Bool)

(assert (= bs!727258 (and b!4397864 d!1325302)))

(declare-fun lambda!148293 () Int)

(assert (=> bs!727258 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603818) (= lambda!148293 lambda!148263))))

(declare-fun bs!727259 () Bool)

(assert (= bs!727259 (and b!4397864 b!4397672)))

(assert (=> bs!727259 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603813) (= lambda!148293 lambda!148261))))

(declare-fun bs!727260 () Bool)

(assert (= bs!727260 (and b!4397864 b!4397631)))

(assert (=> bs!727260 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148293 lambda!148251))))

(declare-fun bs!727261 () Bool)

(assert (= bs!727261 (and b!4397864 b!4397673)))

(assert (=> bs!727261 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148293 lambda!148257))))

(assert (=> bs!727260 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603783) (= lambda!148293 lambda!148252))))

(assert (=> bs!727259 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148293 lambda!148259))))

(declare-fun bs!727262 () Bool)

(assert (= bs!727262 (and b!4397864 b!4397865)))

(assert (=> bs!727262 (= lambda!148293 lambda!148292)))

(declare-fun bs!727263 () Bool)

(assert (= bs!727263 (and b!4397864 d!1325080)))

(assert (=> bs!727263 (not (= lambda!148293 lambda!148154))))

(declare-fun bs!727264 () Bool)

(assert (= bs!727264 (and b!4397864 d!1325166)))

(assert (=> bs!727264 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603788) (= lambda!148293 lambda!148254))))

(declare-fun bs!727265 () Bool)

(assert (= bs!727265 (and b!4397864 b!4397632)))

(assert (=> bs!727265 (= (= (extractMap!676 (t!356311 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148293 lambda!148249))))

(assert (=> b!4397864 true))

(declare-fun lt!1603907 () ListMap!2461)

(declare-fun lambda!148294 () Int)

(assert (=> bs!727258 (= (= lt!1603907 lt!1603818) (= lambda!148294 lambda!148263))))

(assert (=> b!4397864 (= (= lt!1603907 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (= lambda!148294 lambda!148293))))

(assert (=> bs!727259 (= (= lt!1603907 lt!1603813) (= lambda!148294 lambda!148261))))

(assert (=> bs!727260 (= (= lt!1603907 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148294 lambda!148251))))

(assert (=> bs!727261 (= (= lt!1603907 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148294 lambda!148257))))

(assert (=> bs!727260 (= (= lt!1603907 lt!1603783) (= lambda!148294 lambda!148252))))

(assert (=> bs!727259 (= (= lt!1603907 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148294 lambda!148259))))

(assert (=> bs!727262 (= (= lt!1603907 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (= lambda!148294 lambda!148292))))

(assert (=> bs!727263 (not (= lambda!148294 lambda!148154))))

(assert (=> bs!727264 (= (= lt!1603907 lt!1603788) (= lambda!148294 lambda!148254))))

(assert (=> bs!727265 (= (= lt!1603907 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148294 lambda!148249))))

(assert (=> b!4397864 true))

(declare-fun bs!727266 () Bool)

(declare-fun d!1325430 () Bool)

(assert (= bs!727266 (and d!1325430 d!1325302)))

(declare-fun lambda!148295 () Int)

(declare-fun lt!1603912 () ListMap!2461)

(assert (=> bs!727266 (= (= lt!1603912 lt!1603818) (= lambda!148295 lambda!148263))))

(declare-fun bs!727267 () Bool)

(assert (= bs!727267 (and d!1325430 b!4397864)))

(assert (=> bs!727267 (= (= lt!1603912 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (= lambda!148295 lambda!148293))))

(declare-fun bs!727268 () Bool)

(assert (= bs!727268 (and d!1325430 b!4397672)))

(assert (=> bs!727268 (= (= lt!1603912 lt!1603813) (= lambda!148295 lambda!148261))))

(assert (=> bs!727267 (= (= lt!1603912 lt!1603907) (= lambda!148295 lambda!148294))))

(declare-fun bs!727269 () Bool)

(assert (= bs!727269 (and d!1325430 b!4397631)))

(assert (=> bs!727269 (= (= lt!1603912 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148295 lambda!148251))))

(declare-fun bs!727270 () Bool)

(assert (= bs!727270 (and d!1325430 b!4397673)))

(assert (=> bs!727270 (= (= lt!1603912 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148295 lambda!148257))))

(assert (=> bs!727269 (= (= lt!1603912 lt!1603783) (= lambda!148295 lambda!148252))))

(assert (=> bs!727268 (= (= lt!1603912 (extractMap!676 (t!356311 (t!356311 (toList!3217 lm!1707))))) (= lambda!148295 lambda!148259))))

(declare-fun bs!727271 () Bool)

(assert (= bs!727271 (and d!1325430 b!4397865)))

(assert (=> bs!727271 (= (= lt!1603912 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (= lambda!148295 lambda!148292))))

(declare-fun bs!727272 () Bool)

(assert (= bs!727272 (and d!1325430 d!1325080)))

(assert (=> bs!727272 (not (= lambda!148295 lambda!148154))))

(declare-fun bs!727273 () Bool)

(assert (= bs!727273 (and d!1325430 d!1325166)))

(assert (=> bs!727273 (= (= lt!1603912 lt!1603788) (= lambda!148295 lambda!148254))))

(declare-fun bs!727274 () Bool)

(assert (= bs!727274 (and d!1325430 b!4397632)))

(assert (=> bs!727274 (= (= lt!1603912 (extractMap!676 (t!356311 (toList!3217 lt!1603369)))) (= lambda!148295 lambda!148249))))

(assert (=> d!1325430 true))

(declare-fun e!2738309 () ListMap!2461)

(assert (=> b!4397864 (= e!2738309 lt!1603907)))

(declare-fun lt!1603905 () ListMap!2461)

(assert (=> b!4397864 (= lt!1603905 (+!854 (extractMap!676 (t!356311 (toList!3217 lm!1707))) (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (=> b!4397864 (= lt!1603907 (addToMapMapFromBucket!289 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707)))) (+!854 (extractMap!676 (t!356311 (toList!3217 lm!1707))) (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))))

(declare-fun lt!1603915 () Unit!78409)

(declare-fun call!306093 () Unit!78409)

(assert (=> b!4397864 (= lt!1603915 call!306093)))

(assert (=> b!4397864 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) lambda!148293)))

(declare-fun lt!1603913 () Unit!78409)

(assert (=> b!4397864 (= lt!1603913 lt!1603915)))

(assert (=> b!4397864 (forall!9344 (toList!3218 lt!1603905) lambda!148294)))

(declare-fun lt!1603906 () Unit!78409)

(declare-fun Unit!78498 () Unit!78409)

(assert (=> b!4397864 (= lt!1603906 Unit!78498)))

(declare-fun call!306095 () Bool)

(assert (=> b!4397864 call!306095))

(declare-fun lt!1603897 () Unit!78409)

(declare-fun Unit!78499 () Unit!78409)

(assert (=> b!4397864 (= lt!1603897 Unit!78499)))

(declare-fun lt!1603902 () Unit!78409)

(declare-fun Unit!78500 () Unit!78409)

(assert (=> b!4397864 (= lt!1603902 Unit!78500)))

(declare-fun lt!1603911 () Unit!78409)

(assert (=> b!4397864 (= lt!1603911 (forallContained!1980 (toList!3218 lt!1603905) lambda!148294 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(assert (=> b!4397864 (contains!11631 lt!1603905 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(declare-fun lt!1603908 () Unit!78409)

(declare-fun Unit!78501 () Unit!78409)

(assert (=> b!4397864 (= lt!1603908 Unit!78501)))

(assert (=> b!4397864 (contains!11631 lt!1603907 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(declare-fun lt!1603910 () Unit!78409)

(declare-fun Unit!78502 () Unit!78409)

(assert (=> b!4397864 (= lt!1603910 Unit!78502)))

(assert (=> b!4397864 (forall!9344 (_2!27714 (h!54872 (toList!3217 lm!1707))) lambda!148294)))

(declare-fun lt!1603903 () Unit!78409)

(declare-fun Unit!78503 () Unit!78409)

(assert (=> b!4397864 (= lt!1603903 Unit!78503)))

(assert (=> b!4397864 (forall!9344 (toList!3218 lt!1603905) lambda!148294)))

(declare-fun lt!1603917 () Unit!78409)

(declare-fun Unit!78504 () Unit!78409)

(assert (=> b!4397864 (= lt!1603917 Unit!78504)))

(declare-fun lt!1603909 () Unit!78409)

(declare-fun Unit!78505 () Unit!78409)

(assert (=> b!4397864 (= lt!1603909 Unit!78505)))

(declare-fun lt!1603899 () Unit!78409)

(assert (=> b!4397864 (= lt!1603899 (addForallContainsKeyThenBeforeAdding!123 (extractMap!676 (t!356311 (toList!3217 lm!1707))) lt!1603907 (_1!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707))))) (_2!27713 (h!54871 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))))

(assert (=> b!4397864 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) lambda!148294)))

(declare-fun lt!1603914 () Unit!78409)

(assert (=> b!4397864 (= lt!1603914 lt!1603899)))

(declare-fun call!306094 () Bool)

(assert (=> b!4397864 call!306094))

(declare-fun lt!1603904 () Unit!78409)

(declare-fun Unit!78506 () Unit!78409)

(assert (=> b!4397864 (= lt!1603904 Unit!78506)))

(declare-fun res!1813494 () Bool)

(assert (=> b!4397864 (= res!1813494 (forall!9344 (_2!27714 (h!54872 (toList!3217 lm!1707))) lambda!148294))))

(declare-fun e!2738310 () Bool)

(assert (=> b!4397864 (=> (not res!1813494) (not e!2738310))))

(assert (=> b!4397864 e!2738310))

(declare-fun lt!1603898 () Unit!78409)

(declare-fun Unit!78507 () Unit!78409)

(assert (=> b!4397864 (= lt!1603898 Unit!78507)))

(declare-fun bm!306088 () Bool)

(assert (=> bm!306088 (= call!306093 (lemmaContainsAllItsOwnKeys!123 (extractMap!676 (t!356311 (toList!3217 lm!1707)))))))

(assert (=> b!4397865 (= e!2738309 (extractMap!676 (t!356311 (toList!3217 lm!1707))))))

(declare-fun lt!1603901 () Unit!78409)

(assert (=> b!4397865 (= lt!1603901 call!306093)))

(assert (=> b!4397865 call!306095))

(declare-fun lt!1603900 () Unit!78409)

(assert (=> b!4397865 (= lt!1603900 lt!1603901)))

(assert (=> b!4397865 call!306094))

(declare-fun lt!1603916 () Unit!78409)

(declare-fun Unit!78508 () Unit!78409)

(assert (=> b!4397865 (= lt!1603916 Unit!78508)))

(declare-fun c!748696 () Bool)

(declare-fun bm!306090 () Bool)

(assert (=> bm!306090 (= call!306094 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (ite c!748696 lambda!148292 lambda!148294)))))

(declare-fun b!4397866 () Bool)

(declare-fun e!2738308 () Bool)

(assert (=> b!4397866 (= e!2738308 (invariantList!744 (toList!3218 lt!1603912)))))

(assert (=> d!1325430 e!2738308))

(declare-fun res!1813495 () Bool)

(assert (=> d!1325430 (=> (not res!1813495) (not e!2738308))))

(assert (=> d!1325430 (= res!1813495 (forall!9344 (_2!27714 (h!54872 (toList!3217 lm!1707))) lambda!148295))))

(assert (=> d!1325430 (= lt!1603912 e!2738309)))

(assert (=> d!1325430 (= c!748696 ((_ is Nil!49252) (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(assert (=> d!1325430 (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707))))))

(assert (=> d!1325430 (= (addToMapMapFromBucket!289 (_2!27714 (h!54872 (toList!3217 lm!1707))) (extractMap!676 (t!356311 (toList!3217 lm!1707)))) lt!1603912)))

(declare-fun bm!306089 () Bool)

(assert (=> bm!306089 (= call!306095 (forall!9344 (ite c!748696 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707))))) (ite c!748696 lambda!148292 lambda!148294)))))

(declare-fun b!4397867 () Bool)

(assert (=> b!4397867 (= e!2738310 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) lambda!148294))))

(declare-fun b!4397868 () Bool)

(declare-fun res!1813496 () Bool)

(assert (=> b!4397868 (=> (not res!1813496) (not e!2738308))))

(assert (=> b!4397868 (= res!1813496 (forall!9344 (toList!3218 (extractMap!676 (t!356311 (toList!3217 lm!1707)))) lambda!148295))))

(assert (= (and d!1325430 c!748696) b!4397865))

(assert (= (and d!1325430 (not c!748696)) b!4397864))

(assert (= (and b!4397864 res!1813494) b!4397867))

(assert (= (or b!4397865 b!4397864) bm!306088))

(assert (= (or b!4397865 b!4397864) bm!306090))

(assert (= (or b!4397865 b!4397864) bm!306089))

(assert (= (and d!1325430 res!1813495) b!4397868))

(assert (= (and b!4397868 res!1813496) b!4397866))

(declare-fun m!5059183 () Bool)

(assert (=> b!4397867 m!5059183))

(declare-fun m!5059185 () Bool)

(assert (=> d!1325430 m!5059185))

(assert (=> d!1325430 m!5058225))

(declare-fun m!5059187 () Bool)

(assert (=> bm!306090 m!5059187))

(declare-fun m!5059189 () Bool)

(assert (=> bm!306089 m!5059189))

(declare-fun m!5059191 () Bool)

(assert (=> b!4397866 m!5059191))

(assert (=> bm!306088 m!5057931))

(declare-fun m!5059193 () Bool)

(assert (=> bm!306088 m!5059193))

(assert (=> b!4397864 m!5059183))

(declare-fun m!5059195 () Bool)

(assert (=> b!4397864 m!5059195))

(declare-fun m!5059197 () Bool)

(assert (=> b!4397864 m!5059197))

(declare-fun m!5059199 () Bool)

(assert (=> b!4397864 m!5059199))

(declare-fun m!5059201 () Bool)

(assert (=> b!4397864 m!5059201))

(assert (=> b!4397864 m!5057931))

(declare-fun m!5059203 () Bool)

(assert (=> b!4397864 m!5059203))

(declare-fun m!5059205 () Bool)

(assert (=> b!4397864 m!5059205))

(assert (=> b!4397864 m!5059199))

(assert (=> b!4397864 m!5057931))

(assert (=> b!4397864 m!5059195))

(declare-fun m!5059207 () Bool)

(assert (=> b!4397864 m!5059207))

(declare-fun m!5059209 () Bool)

(assert (=> b!4397864 m!5059209))

(declare-fun m!5059211 () Bool)

(assert (=> b!4397864 m!5059211))

(assert (=> b!4397864 m!5059209))

(declare-fun m!5059213 () Bool)

(assert (=> b!4397868 m!5059213))

(assert (=> b!4397260 d!1325430))

(assert (=> b!4397260 d!1325064))

(declare-fun d!1325432 () Bool)

(declare-fun res!1813497 () Bool)

(declare-fun e!2738311 () Bool)

(assert (=> d!1325432 (=> res!1813497 e!2738311)))

(assert (=> d!1325432 (= res!1813497 ((_ is Nil!49253) (toList!3217 lt!1603369)))))

(assert (=> d!1325432 (= (forall!9342 (toList!3217 lt!1603369) lambda!148155) e!2738311)))

(declare-fun b!4397869 () Bool)

(declare-fun e!2738312 () Bool)

(assert (=> b!4397869 (= e!2738311 e!2738312)))

(declare-fun res!1813498 () Bool)

(assert (=> b!4397869 (=> (not res!1813498) (not e!2738312))))

(assert (=> b!4397869 (= res!1813498 (dynLambda!20750 lambda!148155 (h!54872 (toList!3217 lt!1603369))))))

(declare-fun b!4397870 () Bool)

(assert (=> b!4397870 (= e!2738312 (forall!9342 (t!356311 (toList!3217 lt!1603369)) lambda!148155))))

(assert (= (and d!1325432 (not res!1813497)) b!4397869))

(assert (= (and b!4397869 res!1813498) b!4397870))

(declare-fun b_lambda!139387 () Bool)

(assert (=> (not b_lambda!139387) (not b!4397869)))

(declare-fun m!5059215 () Bool)

(assert (=> b!4397869 m!5059215))

(declare-fun m!5059217 () Bool)

(assert (=> b!4397870 m!5059217))

(assert (=> d!1325092 d!1325432))

(assert (=> b!4397279 d!1325350))

(declare-fun d!1325434 () Bool)

(declare-fun res!1813499 () Bool)

(declare-fun e!2738313 () Bool)

(assert (=> d!1325434 (=> res!1813499 e!2738313)))

(assert (=> d!1325434 (= res!1813499 (and ((_ is Cons!49252) (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707))))) (= (_1!27713 (h!54871 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707)))))) key!3918)))))

(assert (=> d!1325434 (= (containsKey!911 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707)))) key!3918) e!2738313)))

(declare-fun b!4397871 () Bool)

(declare-fun e!2738314 () Bool)

(assert (=> b!4397871 (= e!2738313 e!2738314)))

(declare-fun res!1813500 () Bool)

(assert (=> b!4397871 (=> (not res!1813500) (not e!2738314))))

(assert (=> b!4397871 (= res!1813500 ((_ is Cons!49252) (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707))))))))

(declare-fun b!4397872 () Bool)

(assert (=> b!4397872 (= e!2738314 (containsKey!911 (t!356310 (t!356310 (_2!27714 (h!54872 (toList!3217 lm!1707))))) key!3918))))

(assert (= (and d!1325434 (not res!1813499)) b!4397871))

(assert (= (and b!4397871 res!1813500) b!4397872))

(declare-fun m!5059219 () Bool)

(assert (=> b!4397872 m!5059219))

(assert (=> b!4397308 d!1325434))

(declare-fun d!1325436 () Bool)

(declare-fun res!1813501 () Bool)

(declare-fun e!2738315 () Bool)

(assert (=> d!1325436 (=> res!1813501 e!2738315)))

(assert (=> d!1325436 (= res!1813501 (and ((_ is Cons!49252) (t!356310 newBucket!200)) (= (_1!27713 (h!54871 (t!356310 newBucket!200))) (_1!27713 (h!54871 newBucket!200)))))))

(assert (=> d!1325436 (= (containsKey!911 (t!356310 newBucket!200) (_1!27713 (h!54871 newBucket!200))) e!2738315)))

(declare-fun b!4397873 () Bool)

(declare-fun e!2738316 () Bool)

(assert (=> b!4397873 (= e!2738315 e!2738316)))

(declare-fun res!1813502 () Bool)

(assert (=> b!4397873 (=> (not res!1813502) (not e!2738316))))

(assert (=> b!4397873 (= res!1813502 ((_ is Cons!49252) (t!356310 newBucket!200)))))

(declare-fun b!4397874 () Bool)

(assert (=> b!4397874 (= e!2738316 (containsKey!911 (t!356310 (t!356310 newBucket!200)) (_1!27713 (h!54871 newBucket!200))))))

(assert (= (and d!1325436 (not res!1813501)) b!4397873))

(assert (= (and b!4397873 res!1813502) b!4397874))

(declare-fun m!5059221 () Bool)

(assert (=> b!4397874 m!5059221))

(assert (=> b!4397092 d!1325436))

(declare-fun d!1325438 () Bool)

(declare-fun res!1813503 () Bool)

(declare-fun e!2738317 () Bool)

(assert (=> d!1325438 (=> res!1813503 e!2738317)))

(assert (=> d!1325438 (= res!1813503 (and ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) key!3918)))))

(assert (=> d!1325438 (= (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918) e!2738317)))

(declare-fun b!4397875 () Bool)

(declare-fun e!2738318 () Bool)

(assert (=> b!4397875 (= e!2738317 e!2738318)))

(declare-fun res!1813504 () Bool)

(assert (=> b!4397875 (=> (not res!1813504) (not e!2738318))))

(assert (=> b!4397875 (= res!1813504 ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))

(declare-fun b!4397876 () Bool)

(assert (=> b!4397876 (= e!2738318 (containsKey!914 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) key!3918))))

(assert (= (and d!1325438 (not res!1813503)) b!4397875))

(assert (= (and b!4397875 res!1813504) b!4397876))

(declare-fun m!5059223 () Bool)

(assert (=> b!4397876 m!5059223))

(assert (=> b!4397249 d!1325438))

(declare-fun d!1325440 () Bool)

(assert (=> d!1325440 (containsKey!914 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918)))

(declare-fun lt!1603918 () Unit!78409)

(assert (=> d!1325440 (= lt!1603918 (choose!27526 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918))))

(assert (=> d!1325440 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))

(assert (=> d!1325440 (= (lemmaInGetKeysListThenContainsKey!189 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) key!3918) lt!1603918)))

(declare-fun bs!727275 () Bool)

(assert (= bs!727275 d!1325440))

(assert (=> bs!727275 m!5058195))

(declare-fun m!5059225 () Bool)

(assert (=> bs!727275 m!5059225))

(assert (=> bs!727275 m!5058943))

(assert (=> b!4397249 d!1325440))

(declare-fun d!1325442 () Bool)

(declare-fun lt!1603919 () Bool)

(assert (=> d!1325442 (= lt!1603919 (select (content!7858 (keys!16731 (extractMap!676 (toList!3217 lm!1707)))) key!3918))))

(declare-fun e!2738319 () Bool)

(assert (=> d!1325442 (= lt!1603919 e!2738319)))

(declare-fun res!1813506 () Bool)

(assert (=> d!1325442 (=> (not res!1813506) (not e!2738319))))

(assert (=> d!1325442 (= res!1813506 ((_ is Cons!49255) (keys!16731 (extractMap!676 (toList!3217 lm!1707)))))))

(assert (=> d!1325442 (= (contains!11635 (keys!16731 (extractMap!676 (toList!3217 lm!1707))) key!3918) lt!1603919)))

(declare-fun b!4397877 () Bool)

(declare-fun e!2738320 () Bool)

(assert (=> b!4397877 (= e!2738319 e!2738320)))

(declare-fun res!1813505 () Bool)

(assert (=> b!4397877 (=> res!1813505 e!2738320)))

(assert (=> b!4397877 (= res!1813505 (= (h!54876 (keys!16731 (extractMap!676 (toList!3217 lm!1707)))) key!3918))))

(declare-fun b!4397878 () Bool)

(assert (=> b!4397878 (= e!2738320 (contains!11635 (t!356313 (keys!16731 (extractMap!676 (toList!3217 lm!1707)))) key!3918))))

(assert (= (and d!1325442 res!1813506) b!4397877))

(assert (= (and b!4397877 (not res!1813505)) b!4397878))

(assert (=> d!1325442 m!5058209))

(declare-fun m!5059227 () Bool)

(assert (=> d!1325442 m!5059227))

(declare-fun m!5059229 () Bool)

(assert (=> d!1325442 m!5059229))

(declare-fun m!5059231 () Bool)

(assert (=> b!4397878 m!5059231))

(assert (=> b!4397251 d!1325442))

(assert (=> b!4397251 d!1325354))

(declare-fun d!1325444 () Bool)

(declare-fun res!1813507 () Bool)

(declare-fun e!2738321 () Bool)

(assert (=> d!1325444 (=> res!1813507 e!2738321)))

(assert (=> d!1325444 (= res!1813507 (and ((_ is Cons!49252) lt!1603437) (= (_1!27713 (h!54871 lt!1603437)) key!3918)))))

(assert (=> d!1325444 (= (containsKey!911 lt!1603437 key!3918) e!2738321)))

(declare-fun b!4397879 () Bool)

(declare-fun e!2738322 () Bool)

(assert (=> b!4397879 (= e!2738321 e!2738322)))

(declare-fun res!1813508 () Bool)

(assert (=> b!4397879 (=> (not res!1813508) (not e!2738322))))

(assert (=> b!4397879 (= res!1813508 ((_ is Cons!49252) lt!1603437))))

(declare-fun b!4397880 () Bool)

(assert (=> b!4397880 (= e!2738322 (containsKey!911 (t!356310 lt!1603437) key!3918))))

(assert (= (and d!1325444 (not res!1813507)) b!4397879))

(assert (= (and b!4397879 res!1813508) b!4397880))

(declare-fun m!5059233 () Bool)

(assert (=> b!4397880 m!5059233))

(assert (=> d!1324998 d!1325444))

(declare-fun d!1325446 () Bool)

(declare-fun res!1813509 () Bool)

(declare-fun e!2738323 () Bool)

(assert (=> d!1325446 (=> res!1813509 e!2738323)))

(assert (=> d!1325446 (= res!1813509 (not ((_ is Cons!49252) lt!1603373)))))

(assert (=> d!1325446 (= (noDuplicateKeys!617 lt!1603373) e!2738323)))

(declare-fun b!4397881 () Bool)

(declare-fun e!2738324 () Bool)

(assert (=> b!4397881 (= e!2738323 e!2738324)))

(declare-fun res!1813510 () Bool)

(assert (=> b!4397881 (=> (not res!1813510) (not e!2738324))))

(assert (=> b!4397881 (= res!1813510 (not (containsKey!911 (t!356310 lt!1603373) (_1!27713 (h!54871 lt!1603373)))))))

(declare-fun b!4397882 () Bool)

(assert (=> b!4397882 (= e!2738324 (noDuplicateKeys!617 (t!356310 lt!1603373)))))

(assert (= (and d!1325446 (not res!1813509)) b!4397881))

(assert (= (and b!4397881 res!1813510) b!4397882))

(declare-fun m!5059235 () Bool)

(assert (=> b!4397881 m!5059235))

(assert (=> b!4397882 m!5059015))

(assert (=> d!1324998 d!1325446))

(declare-fun d!1325448 () Bool)

(assert (=> d!1325448 (isDefined!7893 (getValueByKey!587 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(declare-fun lt!1603920 () Unit!78409)

(assert (=> d!1325448 (= lt!1603920 (choose!27524 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> d!1325448 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))

(assert (=> d!1325448 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!496 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918) lt!1603920)))

(declare-fun bs!727276 () Bool)

(assert (= bs!727276 d!1325448))

(assert (=> bs!727276 m!5058281))

(assert (=> bs!727276 m!5058281))

(assert (=> bs!727276 m!5058283))

(declare-fun m!5059237 () Bool)

(assert (=> bs!727276 m!5059237))

(assert (=> bs!727276 m!5059061))

(assert (=> b!4397287 d!1325448))

(assert (=> b!4397287 d!1325150))

(assert (=> b!4397287 d!1325152))

(declare-fun d!1325450 () Bool)

(assert (=> d!1325450 (contains!11635 (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) key!3918)))

(declare-fun lt!1603921 () Unit!78409)

(assert (=> d!1325450 (= lt!1603921 (choose!27525 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918))))

(assert (=> d!1325450 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))))

(assert (=> d!1325450 (= (lemmaInListThenGetKeysListContains!188 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))) key!3918) lt!1603921)))

(declare-fun bs!727277 () Bool)

(assert (= bs!727277 d!1325450))

(assert (=> bs!727277 m!5058289))

(assert (=> bs!727277 m!5058289))

(declare-fun m!5059239 () Bool)

(assert (=> bs!727277 m!5059239))

(declare-fun m!5059241 () Bool)

(assert (=> bs!727277 m!5059241))

(assert (=> bs!727277 m!5059061))

(assert (=> b!4397287 d!1325450))

(assert (=> b!4397283 d!1325410))

(assert (=> b!4397283 d!1325412))

(declare-fun d!1325452 () Bool)

(declare-fun res!1813515 () Bool)

(declare-fun e!2738329 () Bool)

(assert (=> d!1325452 (=> res!1813515 e!2738329)))

(assert (=> d!1325452 (= res!1813515 ((_ is Nil!49252) newBucket!200))))

(assert (=> d!1325452 (= (forall!9344 newBucket!200 lambda!148154) e!2738329)))

(declare-fun b!4397887 () Bool)

(declare-fun e!2738330 () Bool)

(assert (=> b!4397887 (= e!2738329 e!2738330)))

(declare-fun res!1813516 () Bool)

(assert (=> b!4397887 (=> (not res!1813516) (not e!2738330))))

(declare-fun dynLambda!20752 (Int tuple2!48838) Bool)

(assert (=> b!4397887 (= res!1813516 (dynLambda!20752 lambda!148154 (h!54871 newBucket!200)))))

(declare-fun b!4397888 () Bool)

(assert (=> b!4397888 (= e!2738330 (forall!9344 (t!356310 newBucket!200) lambda!148154))))

(assert (= (and d!1325452 (not res!1813515)) b!4397887))

(assert (= (and b!4397887 res!1813516) b!4397888))

(declare-fun b_lambda!139389 () Bool)

(assert (=> (not b_lambda!139389) (not b!4397887)))

(declare-fun m!5059243 () Bool)

(assert (=> b!4397887 m!5059243))

(declare-fun m!5059245 () Bool)

(assert (=> b!4397888 m!5059245))

(assert (=> d!1325080 d!1325452))

(declare-fun d!1325454 () Bool)

(declare-fun res!1813517 () Bool)

(declare-fun e!2738331 () Bool)

(assert (=> d!1325454 (=> res!1813517 e!2738331)))

(assert (=> d!1325454 (= res!1813517 (not ((_ is Cons!49252) (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (=> d!1325454 (= (noDuplicateKeys!617 (_2!27714 (tuple2!48841 hash!377 newBucket!200))) e!2738331)))

(declare-fun b!4397889 () Bool)

(declare-fun e!2738332 () Bool)

(assert (=> b!4397889 (= e!2738331 e!2738332)))

(declare-fun res!1813518 () Bool)

(assert (=> b!4397889 (=> (not res!1813518) (not e!2738332))))

(assert (=> b!4397889 (= res!1813518 (not (containsKey!911 (t!356310 (_2!27714 (tuple2!48841 hash!377 newBucket!200))) (_1!27713 (h!54871 (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))))

(declare-fun b!4397890 () Bool)

(assert (=> b!4397890 (= e!2738332 (noDuplicateKeys!617 (t!356310 (_2!27714 (tuple2!48841 hash!377 newBucket!200)))))))

(assert (= (and d!1325454 (not res!1813517)) b!4397889))

(assert (= (and b!4397889 res!1813518) b!4397890))

(declare-fun m!5059247 () Bool)

(assert (=> b!4397889 m!5059247))

(declare-fun m!5059249 () Bool)

(assert (=> b!4397890 m!5059249))

(assert (=> bs!726975 d!1325454))

(declare-fun d!1325456 () Bool)

(assert (=> d!1325456 (= (tail!7099 (toList!3217 lm!1707)) (t!356311 (toList!3217 lm!1707)))))

(assert (=> d!1325062 d!1325456))

(assert (=> b!4397253 d!1325442))

(assert (=> b!4397253 d!1325354))

(declare-fun bs!727278 () Bool)

(declare-fun b!4397893 () Bool)

(assert (= bs!727278 (and b!4397893 b!4397727)))

(declare-fun lambda!148296 () Int)

(assert (=> bs!727278 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148296 lambda!148272))))

(declare-fun bs!727279 () Bool)

(assert (= bs!727279 (and b!4397893 b!4397833)))

(assert (=> bs!727279 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148296 lambda!148290))))

(declare-fun bs!727280 () Bool)

(assert (= bs!727280 (and b!4397893 b!4397763)))

(assert (=> bs!727280 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148296 lambda!148283))))

(declare-fun bs!727281 () Bool)

(assert (= bs!727281 (and b!4397893 b!4397837)))

(assert (=> bs!727281 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))) (= lambda!148296 lambda!148289))))

(declare-fun bs!727282 () Bool)

(assert (= bs!727282 (and b!4397893 b!4397720)))

(assert (=> bs!727282 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (toList!3218 lt!1603367)) (= lambda!148296 lambda!148270))))

(declare-fun bs!727283 () Bool)

(assert (= bs!727283 (and b!4397893 b!4397759)))

(assert (=> bs!727283 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (toList!3218 lt!1603367)) (= lambda!148296 lambda!148284))))

(declare-fun bs!727284 () Bool)

(assert (= bs!727284 (and b!4397893 b!4397829)))

(assert (=> bs!727284 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148296 lambda!148286))))

(declare-fun bs!727285 () Bool)

(assert (= bs!727285 (and b!4397893 b!4397835)))

(assert (=> bs!727285 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (= lambda!148296 lambda!148288))))

(declare-fun bs!727286 () Bool)

(assert (= bs!727286 (and b!4397893 b!4397761)))

(assert (=> bs!727286 (= (= (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148296 lambda!148282))))

(assert (=> b!4397893 true))

(declare-fun bs!727287 () Bool)

(declare-fun b!4397895 () Bool)

(assert (= bs!727287 (and b!4397895 b!4397727)))

(declare-fun lambda!148297 () Int)

(assert (=> bs!727287 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (= lambda!148297 lambda!148272))))

(declare-fun bs!727288 () Bool)

(assert (= bs!727288 (and b!4397895 b!4397833)))

(assert (=> bs!727288 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148297 lambda!148290))))

(declare-fun bs!727289 () Bool)

(assert (= bs!727289 (and b!4397895 b!4397763)))

(assert (=> bs!727289 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148297 lambda!148283))))

(declare-fun bs!727290 () Bool)

(assert (= bs!727290 (and b!4397895 b!4397837)))

(assert (=> bs!727290 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))) (= lambda!148297 lambda!148289))))

(declare-fun bs!727291 () Bool)

(assert (= bs!727291 (and b!4397895 b!4397720)))

(assert (=> bs!727291 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (toList!3218 lt!1603367)) (= lambda!148297 lambda!148270))))

(declare-fun bs!727292 () Bool)

(assert (= bs!727292 (and b!4397895 b!4397893)))

(assert (=> bs!727292 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (= lambda!148297 lambda!148296))))

(declare-fun bs!727293 () Bool)

(assert (= bs!727293 (and b!4397895 b!4397759)))

(assert (=> bs!727293 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (toList!3218 lt!1603367)) (= lambda!148297 lambda!148284))))

(declare-fun bs!727294 () Bool)

(assert (= bs!727294 (and b!4397895 b!4397829)))

(assert (=> bs!727294 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148297 lambda!148286))))

(declare-fun bs!727295 () Bool)

(assert (= bs!727295 (and b!4397895 b!4397835)))

(assert (=> bs!727295 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (= lambda!148297 lambda!148288))))

(declare-fun bs!727296 () Bool)

(assert (= bs!727296 (and b!4397895 b!4397761)))

(assert (=> bs!727296 (= (= (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148297 lambda!148282))))

(assert (=> b!4397895 true))

(declare-fun bs!727297 () Bool)

(declare-fun b!4397891 () Bool)

(assert (= bs!727297 (and b!4397891 b!4397727)))

(declare-fun lambda!148298 () Int)

(assert (=> bs!727297 (= lambda!148298 lambda!148272)))

(declare-fun bs!727298 () Bool)

(assert (= bs!727298 (and b!4397891 b!4397833)))

(assert (=> bs!727298 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148298 lambda!148290))))

(declare-fun bs!727299 () Bool)

(assert (= bs!727299 (and b!4397891 b!4397763)))

(assert (=> bs!727299 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (Cons!49252 (h!54871 (toList!3218 lt!1603367)) (t!356310 (toList!3218 lt!1603367)))) (= lambda!148298 lambda!148283))))

(declare-fun bs!727300 () Bool)

(assert (= bs!727300 (and b!4397891 b!4397837)))

(assert (=> bs!727300 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))))) (= lambda!148298 lambda!148289))))

(declare-fun bs!727301 () Bool)

(assert (= bs!727301 (and b!4397891 b!4397893)))

(assert (=> bs!727301 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (= lambda!148298 lambda!148296))))

(declare-fun bs!727302 () Bool)

(assert (= bs!727302 (and b!4397891 b!4397759)))

(assert (=> bs!727302 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (toList!3218 lt!1603367)) (= lambda!148298 lambda!148284))))

(declare-fun bs!727303 () Bool)

(assert (= bs!727303 (and b!4397891 b!4397829)))

(assert (=> bs!727303 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (toList!3218 (extractMap!676 (toList!3217 lt!1603369)))) (= lambda!148298 lambda!148286))))

(declare-fun bs!727304 () Bool)

(assert (= bs!727304 (and b!4397891 b!4397720)))

(assert (=> bs!727304 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (toList!3218 lt!1603367)) (= lambda!148298 lambda!148270))))

(declare-fun bs!727305 () Bool)

(assert (= bs!727305 (and b!4397891 b!4397895)))

(assert (=> bs!727305 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (Cons!49252 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))) (= lambda!148298 lambda!148297))))

(declare-fun bs!727306 () Bool)

(assert (= bs!727306 (and b!4397891 b!4397835)))

(assert (=> bs!727306 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (t!356310 (toList!3218 (extractMap!676 (toList!3217 lt!1603369))))) (= lambda!148298 lambda!148288))))

(declare-fun bs!727307 () Bool)

(assert (= bs!727307 (and b!4397891 b!4397761)))

(assert (=> bs!727307 (= (= (toList!3218 (extractMap!676 (toList!3217 lm!1707))) (t!356310 (toList!3218 lt!1603367))) (= lambda!148298 lambda!148282))))

(assert (=> b!4397891 true))

(declare-fun bs!727308 () Bool)

(declare-fun b!4397894 () Bool)

(assert (= bs!727308 (and b!4397894 b!4397728)))

(declare-fun lambda!148299 () Int)

(assert (=> bs!727308 (= lambda!148299 lambda!148273)))

(declare-fun bs!727309 () Bool)

(assert (= bs!727309 (and b!4397894 b!4397830)))

(assert (=> bs!727309 (= lambda!148299 lambda!148287)))

(declare-fun bs!727310 () Bool)

(assert (= bs!727310 (and b!4397894 b!4397762)))

(assert (=> bs!727310 (= lambda!148299 lambda!148285)))

(declare-fun bs!727311 () Bool)

(assert (= bs!727311 (and b!4397894 b!4397721)))

(assert (=> bs!727311 (= lambda!148299 lambda!148271)))

(declare-fun bs!727312 () Bool)

(assert (= bs!727312 (and b!4397894 b!4397836)))

(assert (=> bs!727312 (= lambda!148299 lambda!148291)))

(declare-fun res!1813519 () Bool)

(declare-fun e!2738335 () Bool)

(assert (=> b!4397891 (=> (not res!1813519) (not e!2738335))))

(declare-fun lt!1603928 () List!49379)

(assert (=> b!4397891 (= res!1813519 (forall!9346 lt!1603928 lambda!148298))))

(declare-fun b!4397892 () Bool)

(declare-fun e!2738333 () List!49379)

(assert (=> b!4397892 (= e!2738333 Nil!49255)))

(declare-fun d!1325458 () Bool)

(assert (=> d!1325458 e!2738335))

(declare-fun res!1813520 () Bool)

(assert (=> d!1325458 (=> (not res!1813520) (not e!2738335))))

(assert (=> d!1325458 (= res!1813520 (noDuplicate!632 lt!1603928))))

(assert (=> d!1325458 (= lt!1603928 e!2738333)))

(declare-fun c!748698 () Bool)

(assert (=> d!1325458 (= c!748698 ((_ is Cons!49252) (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))

(assert (=> d!1325458 (invariantList!744 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))

(assert (=> d!1325458 (= (getKeysList!191 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) lt!1603928)))

(assert (=> b!4397893 false))

(declare-fun lt!1603924 () Unit!78409)

(assert (=> b!4397893 (= lt!1603924 (forallContained!1981 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) lambda!148296 (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))))

(declare-fun e!2738334 () Unit!78409)

(declare-fun Unit!78513 () Unit!78409)

(assert (=> b!4397893 (= e!2738334 Unit!78513)))

(assert (=> b!4397894 (= e!2738335 (= (content!7858 lt!1603928) (content!7858 (map!10737 (toList!3218 (extractMap!676 (toList!3217 lm!1707))) lambda!148299))))))

(assert (=> b!4397895 (= e!2738333 (Cons!49255 (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))))

(declare-fun c!748697 () Bool)

(assert (=> b!4397895 (= c!748697 (containsKey!914 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))))

(declare-fun lt!1603925 () Unit!78409)

(declare-fun e!2738336 () Unit!78409)

(assert (=> b!4397895 (= lt!1603925 e!2738336)))

(declare-fun c!748699 () Bool)

(assert (=> b!4397895 (= c!748699 (contains!11635 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))) (_1!27713 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))))))))

(declare-fun lt!1603923 () Unit!78409)

(assert (=> b!4397895 (= lt!1603923 e!2738334)))

(declare-fun lt!1603926 () List!49379)

(assert (=> b!4397895 (= lt!1603926 (getKeysList!191 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))))

(declare-fun lt!1603927 () Unit!78409)

(assert (=> b!4397895 (= lt!1603927 (lemmaForallContainsAddHeadPreserves!54 (t!356310 (toList!3218 (extractMap!676 (toList!3217 lm!1707)))) lt!1603926 (h!54871 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))))

(assert (=> b!4397895 (forall!9346 lt!1603926 lambda!148297)))

(declare-fun lt!1603922 () Unit!78409)

(assert (=> b!4397895 (= lt!1603922 lt!1603927)))

(declare-fun b!4397896 () Bool)

(assert (=> b!4397896 false))

(declare-fun Unit!78514 () Unit!78409)

(assert (=> b!4397896 (= e!2738336 Unit!78514)))

(declare-fun b!4397897 () Bool)

(declare-fun res!1813521 () Bool)

(assert (=> b!4397897 (=> (not res!1813521) (not e!2738335))))

(assert (=> b!4397897 (= res!1813521 (= (length!120 lt!1603928) (length!121 (toList!3218 (extractMap!676 (toList!3217 lm!1707))))))))

(declare-fun b!4397898 () Bool)

(declare-fun Unit!78515 () Unit!78409)

(assert (=> b!4397898 (= e!2738336 Unit!78515)))

(declare-fun b!4397899 () Bool)

(declare-fun Unit!78516 () Unit!78409)

(assert (=> b!4397899 (= e!2738334 Unit!78516)))

(assert (= (and d!1325458 c!748698) b!4397895))

(assert (= (and d!1325458 (not c!748698)) b!4397892))

(assert (= (and b!4397895 c!748697) b!4397896))

(assert (= (and b!4397895 (not c!748697)) b!4397898))

(assert (= (and b!4397895 c!748699) b!4397893))

(assert (= (and b!4397895 (not c!748699)) b!4397899))

(assert (= (and d!1325458 res!1813520) b!4397897))

(assert (= (and b!4397897 res!1813521) b!4397891))

(assert (= (and b!4397891 res!1813519) b!4397894))

(declare-fun m!5059251 () Bool)

(assert (=> b!4397891 m!5059251))

(declare-fun m!5059253 () Bool)

(assert (=> b!4397893 m!5059253))

(assert (=> b!4397893 m!5059253))

(declare-fun m!5059255 () Bool)

(assert (=> b!4397893 m!5059255))

(declare-fun m!5059257 () Bool)

(assert (=> d!1325458 m!5059257))

(assert (=> d!1325458 m!5058943))

(declare-fun m!5059259 () Bool)

(assert (=> b!4397897 m!5059259))

(assert (=> b!4397897 m!5058993))

(declare-fun m!5059261 () Bool)

(assert (=> b!4397895 m!5059261))

(assert (=> b!4397895 m!5059253))

(declare-fun m!5059263 () Bool)

(assert (=> b!4397895 m!5059263))

(declare-fun m!5059265 () Bool)

(assert (=> b!4397895 m!5059265))

(assert (=> b!4397895 m!5059253))

(declare-fun m!5059267 () Bool)

(assert (=> b!4397895 m!5059267))

(declare-fun m!5059269 () Bool)

(assert (=> b!4397894 m!5059269))

(declare-fun m!5059271 () Bool)

(assert (=> b!4397894 m!5059271))

(assert (=> b!4397894 m!5059271))

(declare-fun m!5059273 () Bool)

(assert (=> b!4397894 m!5059273))

(assert (=> b!4397255 d!1325458))

(declare-fun d!1325460 () Bool)

(declare-fun c!748702 () Bool)

(assert (=> d!1325460 (= c!748702 ((_ is Nil!49253) (toList!3217 lm!1707)))))

(declare-fun e!2738339 () (InoxSet tuple2!48840))

(assert (=> d!1325460 (= (content!7856 (toList!3217 lm!1707)) e!2738339)))

(declare-fun b!4397904 () Bool)

(assert (=> b!4397904 (= e!2738339 ((as const (Array tuple2!48840 Bool)) false))))

(declare-fun b!4397905 () Bool)

(assert (=> b!4397905 (= e!2738339 ((_ map or) (store ((as const (Array tuple2!48840 Bool)) false) (h!54872 (toList!3217 lm!1707)) true) (content!7856 (t!356311 (toList!3217 lm!1707)))))))

(assert (= (and d!1325460 c!748702) b!4397904))

(assert (= (and d!1325460 (not c!748702)) b!4397905))

(declare-fun m!5059275 () Bool)

(assert (=> b!4397905 m!5059275))

(assert (=> b!4397905 m!5058485))

(assert (=> d!1324994 d!1325460))

(assert (=> d!1325008 d!1325438))

(assert (=> b!4397290 d!1325398))

(declare-fun d!1325462 () Bool)

(assert (=> d!1325462 (= (invariantList!744 (toList!3218 lt!1603507)) (noDuplicatedKeys!148 (toList!3218 lt!1603507)))))

(declare-fun bs!727313 () Bool)

(assert (= bs!727313 d!1325462))

(declare-fun m!5059277 () Bool)

(assert (=> bs!727313 m!5059277))

(assert (=> d!1325056 d!1325462))

(declare-fun d!1325464 () Bool)

(declare-fun res!1813522 () Bool)

(declare-fun e!2738340 () Bool)

(assert (=> d!1325464 (=> res!1813522 e!2738340)))

(assert (=> d!1325464 (= res!1813522 ((_ is Nil!49253) (toList!3217 lt!1603369)))))

(assert (=> d!1325464 (= (forall!9342 (toList!3217 lt!1603369) lambda!148144) e!2738340)))

(declare-fun b!4397906 () Bool)

(declare-fun e!2738341 () Bool)

(assert (=> b!4397906 (= e!2738340 e!2738341)))

(declare-fun res!1813523 () Bool)

(assert (=> b!4397906 (=> (not res!1813523) (not e!2738341))))

(assert (=> b!4397906 (= res!1813523 (dynLambda!20750 lambda!148144 (h!54872 (toList!3217 lt!1603369))))))

(declare-fun b!4397907 () Bool)

(assert (=> b!4397907 (= e!2738341 (forall!9342 (t!356311 (toList!3217 lt!1603369)) lambda!148144))))

(assert (= (and d!1325464 (not res!1813522)) b!4397906))

(assert (= (and b!4397906 res!1813523) b!4397907))

(declare-fun b_lambda!139391 () Bool)

(assert (=> (not b_lambda!139391) (not b!4397906)))

(declare-fun m!5059279 () Bool)

(assert (=> b!4397906 m!5059279))

(declare-fun m!5059281 () Bool)

(assert (=> b!4397907 m!5059281))

(assert (=> d!1325056 d!1325464))

(assert (=> b!4397124 d!1324994))

(declare-fun b!4397908 () Bool)

(declare-fun tp!1331697 () Bool)

(declare-fun e!2738342 () Bool)

(assert (=> b!4397908 (= e!2738342 (and tp_is_empty!25705 tp_is_empty!25707 tp!1331697))))

(assert (=> b!4397336 (= tp!1331691 e!2738342)))

(assert (= (and b!4397336 ((_ is Cons!49252) (_2!27714 (h!54872 (toList!3217 lm!1707))))) b!4397908))

(declare-fun b!4397909 () Bool)

(declare-fun e!2738343 () Bool)

(declare-fun tp!1331698 () Bool)

(declare-fun tp!1331699 () Bool)

(assert (=> b!4397909 (= e!2738343 (and tp!1331698 tp!1331699))))

(assert (=> b!4397336 (= tp!1331692 e!2738343)))

(assert (= (and b!4397336 ((_ is Cons!49253) (t!356311 (toList!3217 lm!1707)))) b!4397909))

(declare-fun tp!1331700 () Bool)

(declare-fun e!2738344 () Bool)

(declare-fun b!4397910 () Bool)

(assert (=> b!4397910 (= e!2738344 (and tp_is_empty!25705 tp_is_empty!25707 tp!1331700))))

(assert (=> b!4397331 (= tp!1331686 e!2738344)))

(assert (= (and b!4397331 ((_ is Cons!49252) (t!356310 (t!356310 newBucket!200)))) b!4397910))

(declare-fun b_lambda!139393 () Bool)

(assert (= b_lambda!139381 (or start!427108 b_lambda!139393)))

(declare-fun bs!727314 () Bool)

(declare-fun d!1325466 () Bool)

(assert (= bs!727314 (and d!1325466 start!427108)))

(assert (=> bs!727314 (= (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lt!1603369)))) (noDuplicateKeys!617 (_2!27714 (h!54872 (t!356311 (toList!3217 lt!1603369))))))))

(declare-fun m!5059283 () Bool)

(assert (=> bs!727314 m!5059283))

(assert (=> b!4397774 d!1325466))

(declare-fun b_lambda!139395 () Bool)

(assert (= b_lambda!139385 (or d!1325050 b_lambda!139395)))

(declare-fun bs!727315 () Bool)

(declare-fun d!1325468 () Bool)

(assert (= bs!727315 (and d!1325468 d!1325050)))

(assert (=> bs!727315 (= (dynLambda!20750 lambda!148143 (h!54872 (toList!3217 lm!1707))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(assert (=> bs!727315 m!5058225))

(assert (=> b!4397781 d!1325468))

(declare-fun b_lambda!139397 () Bool)

(assert (= b_lambda!139375 (or start!427108 b_lambda!139397)))

(assert (=> d!1325344 d!1325102))

(declare-fun b_lambda!139399 () Bool)

(assert (= b_lambda!139347 (or d!1325064 b_lambda!139399)))

(declare-fun bs!727316 () Bool)

(declare-fun d!1325470 () Bool)

(assert (= bs!727316 (and d!1325470 d!1325064)))

(assert (=> bs!727316 (= (dynLambda!20750 lambda!148145 (h!54872 (t!356311 (toList!3217 lm!1707)))) (noDuplicateKeys!617 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))

(assert (=> bs!727316 m!5058889))

(assert (=> b!4397653 d!1325470))

(declare-fun b_lambda!139401 () Bool)

(assert (= b_lambda!139391 (or d!1325056 b_lambda!139401)))

(declare-fun bs!727317 () Bool)

(declare-fun d!1325472 () Bool)

(assert (= bs!727317 (and d!1325472 d!1325056)))

(assert (=> bs!727317 (= (dynLambda!20750 lambda!148144 (h!54872 (toList!3217 lt!1603369))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lt!1603369)))))))

(assert (=> bs!727317 m!5058341))

(assert (=> b!4397906 d!1325472))

(declare-fun b_lambda!139403 () Bool)

(assert (= b_lambda!139377 (or start!427108 b_lambda!139403)))

(declare-fun bs!727318 () Bool)

(declare-fun d!1325474 () Bool)

(assert (= bs!727318 (and d!1325474 start!427108)))

(assert (=> bs!727318 (= (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lt!1603365)))) (noDuplicateKeys!617 (_2!27714 (h!54872 (t!356311 (toList!3217 lt!1603365))))))))

(declare-fun m!5059285 () Bool)

(assert (=> bs!727318 m!5059285))

(assert (=> b!4397724 d!1325474))

(declare-fun b_lambda!139405 () Bool)

(assert (= b_lambda!139387 (or d!1325092 b_lambda!139405)))

(declare-fun bs!727319 () Bool)

(declare-fun d!1325476 () Bool)

(assert (= bs!727319 (and d!1325476 d!1325092)))

(assert (=> bs!727319 (= (dynLambda!20750 lambda!148155 (h!54872 (toList!3217 lt!1603369))) (allKeysSameHash!575 (_2!27714 (h!54872 (toList!3217 lt!1603369))) (_1!27714 (h!54872 (toList!3217 lt!1603369))) hashF!1247))))

(declare-fun m!5059287 () Bool)

(assert (=> bs!727319 m!5059287))

(assert (=> b!4397869 d!1325476))

(declare-fun b_lambda!139407 () Bool)

(assert (= b_lambda!139329 (or start!427108 b_lambda!139407)))

(declare-fun bs!727320 () Bool)

(declare-fun d!1325478 () Bool)

(assert (= bs!727320 (and d!1325478 start!427108)))

(assert (=> bs!727320 (= (dynLambda!20750 lambda!148125 (h!54872 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200))))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 (+!852 lm!1707 (tuple2!48841 hash!377 newBucket!200)))))))))

(declare-fun m!5059289 () Bool)

(assert (=> bs!727320 m!5059289))

(assert (=> b!4397449 d!1325478))

(declare-fun b_lambda!139409 () Bool)

(assert (= b_lambda!139389 (or d!1325080 b_lambda!139409)))

(declare-fun bs!727321 () Bool)

(declare-fun d!1325480 () Bool)

(assert (= bs!727321 (and d!1325480 d!1325080)))

(assert (=> bs!727321 (= (dynLambda!20752 lambda!148154 (h!54871 newBucket!200)) (= (hash!1839 hashF!1247 (_1!27713 (h!54871 newBucket!200))) hash!377))))

(declare-fun m!5059291 () Bool)

(assert (=> bs!727321 m!5059291))

(assert (=> b!4397887 d!1325480))

(declare-fun b_lambda!139411 () Bool)

(assert (= b_lambda!139331 (or d!1325066 b_lambda!139411)))

(declare-fun bs!727322 () Bool)

(declare-fun d!1325482 () Bool)

(assert (= bs!727322 (and d!1325482 d!1325066)))

(assert (=> bs!727322 (= (dynLambda!20750 lambda!148148 (h!54872 (toList!3217 lm!1707))) (noDuplicateKeys!617 (_2!27714 (h!54872 (toList!3217 lm!1707)))))))

(assert (=> bs!727322 m!5058225))

(assert (=> b!4397454 d!1325482))

(declare-fun b_lambda!139413 () Bool)

(assert (= b_lambda!139379 (or d!1325076 b_lambda!139413)))

(declare-fun bs!727323 () Bool)

(declare-fun d!1325484 () Bool)

(assert (= bs!727323 (and d!1325484 d!1325076)))

(assert (=> bs!727323 (= (dynLambda!20750 lambda!148151 (h!54872 (toList!3217 lm!1707))) (allKeysSameHash!575 (_2!27714 (h!54872 (toList!3217 lm!1707))) (_1!27714 (h!54872 (toList!3217 lm!1707))) hashF!1247))))

(declare-fun m!5059293 () Bool)

(assert (=> bs!727323 m!5059293))

(assert (=> b!4397772 d!1325484))

(declare-fun b_lambda!139415 () Bool)

(assert (= b_lambda!139383 (or start!427108 b_lambda!139415)))

(declare-fun bs!727324 () Bool)

(declare-fun d!1325486 () Bool)

(assert (= bs!727324 (and d!1325486 start!427108)))

(assert (=> bs!727324 (= (dynLambda!20750 lambda!148125 (h!54872 (t!356311 (toList!3217 lm!1707)))) (noDuplicateKeys!617 (_2!27714 (h!54872 (t!356311 (toList!3217 lm!1707))))))))

(assert (=> bs!727324 m!5058889))

(assert (=> b!4397776 d!1325486))

(check-sat (not b!4397638) (not b!4397864) (not d!1325442) (not d!1325426) (not b!4397836) (not bm!306076) (not b!4397878) (not b!4397835) (not b!4397833) (not bm!306089) (not b!4397651) (not bs!727314) (not d!1325280) (not d!1325380) (not b!4397866) (not bm!306074) (not b!4397908) (not bs!727322) (not b!4397782) (not bs!727324) (not d!1325382) (not b_lambda!139401) (not b!4397455) tp_is_empty!25707 (not d!1325408) (not b!4397832) (not b!4397725) (not bs!727317) (not bm!306087) (not d!1325350) (not b_lambda!139403) (not d!1325302) (not bm!306075) (not b!4397785) (not b!4397848) (not b!4397890) (not b!4397818) (not b!4397726) (not b!4397676) (not b!4397735) (not b!4397710) (not b!4397721) (not b!4397867) (not d!1325396) (not b!4397709) (not b!4397773) (not b!4397895) (not b!4397705) (not b!4397837) (not b_lambda!139411) (not d!1325158) (not d!1325414) (not bm!306088) (not b!4397852) (not b!4397631) (not b!4397635) (not d!1325322) (not b!4397889) (not b!4397664) (not b_lambda!139311) (not b!4397765) (not b!4397891) (not b!4397780) (not bm!306090) (not b_lambda!139407) (not d!1325332) (not b!4397671) (not d!1325336) (not b!4397731) (not d!1325448) (not b!4397831) (not bs!727319) (not b!4397859) (not b_lambda!139319) (not d!1325162) (not d!1325366) (not b!4397839) (not b!4397448) (not b!4397739) (not d!1325348) (not b!4397728) (not bm!306078) (not d!1325270) (not b!4397888) (not b!4397783) (not b!4397788) (not b_lambda!139397) (not b!4397905) (not b!4397771) (not b!4397689) (not b!4397872) (not b!4397861) (not b!4397827) (not d!1325296) (not d!1325306) (not b!4397794) (not b!4397445) (not b!4397829) (not d!1325388) (not d!1325368) (not b!4397907) (not b!4397849) (not b!4397882) (not b_lambda!139395) (not b_lambda!139409) (not b!4397674) (not b_lambda!139315) (not b!4397763) (not b_lambda!139415) (not b!4397868) (not b!4397828) (not d!1325150) (not bs!727321) (not b!4397727) (not b!4397762) (not b_lambda!139313) (not b!4397453) (not d!1325402) (not bs!727320) (not b!4397633) (not bs!727315) (not bm!306073) (not d!1325356) (not b!4397893) (not d!1325154) (not b!4397825) (not b!4397847) (not b!4397894) (not d!1325428) (not d!1325458) (not d!1325410) (not b_lambda!139405) (not b!4397452) (not b!4397876) (not b!4397693) (not b_lambda!139317) (not b_lambda!139399) (not b!4397450) (not b!4397880) (not bm!306077) (not b!4397830) (not d!1325450) (not b!4397874) (not b_lambda!139413) (not d!1325166) (not d!1325370) (not b!4397775) tp_is_empty!25705 (not b!4397712) (not d!1325440) (not d!1325462) (not bs!727318) (not b!4397777) (not b!4397672) (not b!4397870) (not b!4397897) (not b!4397719) (not d!1325392) (not bs!727323) (not b!4397909) (not d!1325430) (not b!4397759) (not d!1325384) (not d!1325354) (not b!4397708) (not b!4397734) (not bs!727316) (not b!4397736) (not d!1325340) (not b!4397675) (not d!1325378) (not b!4397634) (not b!4397910) (not b!4397863) (not d!1325422) (not b!4397720) (not d!1325394) (not d!1325398) (not b_lambda!139393) (not b!4397654) (not b!4397881) (not b!4397817) (not b!4397856) (not d!1325424) (not b!4397795) (not d!1325416) (not b!4397761))
(check-sat)
