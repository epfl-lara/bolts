; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506050 () Bool)

(assert start!506050)

(declare-fun b!4850562 () Bool)

(declare-fun e!3032198 () Bool)

(declare-fun e!3032197 () Bool)

(assert (=> b!4850562 (= e!3032198 (not e!3032197))))

(declare-fun res!2070220 () Bool)

(assert (=> b!4850562 (=> res!2070220 e!3032197)))

(declare-datatypes ((K!17387 0))(
  ( (K!17388 (val!22215 Int)) )
))
(declare-datatypes ((V!17633 0))(
  ( (V!17634 (val!22216 Int)) )
))
(declare-datatypes ((tuple2!59302 0))(
  ( (tuple2!59303 (_1!32945 K!17387) (_2!32945 V!17633)) )
))
(declare-datatypes ((List!55708 0))(
  ( (Nil!55584) (Cons!55584 (h!62021 tuple2!59302) (t!363204 List!55708)) )
))
(declare-fun lt!1989721 () List!55708)

(declare-fun key!6445 () K!17387)

(declare-datatypes ((Option!13696 0))(
  ( (None!13695) (Some!13695 (v!49483 tuple2!59302)) )
))
(declare-fun isDefined!10788 (Option!13696) Bool)

(declare-fun getPair!1103 (List!55708 K!17387) Option!13696)

(assert (=> b!4850562 (= res!2070220 (not (isDefined!10788 (getPair!1103 lt!1989721 key!6445))))))

(declare-datatypes ((tuple2!59304 0))(
  ( (tuple2!59305 (_1!32946 (_ BitVec 64)) (_2!32946 List!55708)) )
))
(declare-fun lt!1989724 () tuple2!59304)

(declare-datatypes ((List!55709 0))(
  ( (Nil!55585) (Cons!55585 (h!62022 tuple2!59304) (t!363205 List!55709)) )
))
(declare-datatypes ((ListLongMap!6489 0))(
  ( (ListLongMap!6490 (toList!7873 List!55709)) )
))
(declare-fun lm!2646 () ListLongMap!6489)

(declare-datatypes ((Unit!145738 0))(
  ( (Unit!145739) )
))
(declare-fun lt!1989723 () Unit!145738)

(declare-fun lambda!242723 () Int)

(declare-fun forallContained!4554 (List!55709 Int tuple2!59304) Unit!145738)

(assert (=> b!4850562 (= lt!1989723 (forallContained!4554 (toList!7873 lm!2646) lambda!242723 lt!1989724))))

(declare-fun contains!19251 (List!55709 tuple2!59304) Bool)

(assert (=> b!4850562 (contains!19251 (toList!7873 lm!2646) lt!1989724)))

(declare-fun lt!1989722 () (_ BitVec 64))

(assert (=> b!4850562 (= lt!1989724 (tuple2!59305 lt!1989722 lt!1989721))))

(declare-fun lt!1989725 () Unit!145738)

(declare-fun lemmaGetValueImpliesTupleContained!780 (ListLongMap!6489 (_ BitVec 64) List!55708) Unit!145738)

(assert (=> b!4850562 (= lt!1989725 (lemmaGetValueImpliesTupleContained!780 lm!2646 lt!1989722 lt!1989721))))

(declare-fun apply!13456 (ListLongMap!6489 (_ BitVec 64)) List!55708)

(assert (=> b!4850562 (= lt!1989721 (apply!13456 lm!2646 lt!1989722))))

(declare-fun res!2070225 () Bool)

(declare-fun e!3032200 () Bool)

(assert (=> start!506050 (=> (not res!2070225) (not e!3032200))))

(declare-fun forall!12966 (List!55709 Int) Bool)

(assert (=> start!506050 (= res!2070225 (forall!12966 (toList!7873 lm!2646) lambda!242723))))

(assert (=> start!506050 e!3032200))

(declare-fun e!3032201 () Bool)

(declare-fun inv!71274 (ListLongMap!6489) Bool)

(assert (=> start!506050 (and (inv!71274 lm!2646) e!3032201)))

(assert (=> start!506050 true))

(declare-fun tp_is_empty!35237 () Bool)

(assert (=> start!506050 tp_is_empty!35237))

(declare-fun b!4850563 () Bool)

(declare-fun tp!1364817 () Bool)

(assert (=> b!4850563 (= e!3032201 tp!1364817)))

(declare-fun b!4850564 () Bool)

(declare-fun res!2070222 () Bool)

(assert (=> b!4850564 (=> res!2070222 e!3032197)))

(assert (=> b!4850564 (= res!2070222 (or (and (is-Cons!55585 (toList!7873 lm!2646)) (= (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722)) (not (is-Cons!55585 (toList!7873 lm!2646))) (= lt!1989722 (_1!32946 (h!62022 (toList!7873 lm!2646))))))))

(declare-fun b!4850565 () Bool)

(assert (=> b!4850565 (= e!3032200 e!3032198)))

(declare-fun res!2070223 () Bool)

(assert (=> b!4850565 (=> (not res!2070223) (not e!3032198))))

(declare-fun contains!19252 (ListLongMap!6489 (_ BitVec 64)) Bool)

(assert (=> b!4850565 (= res!2070223 (contains!19252 lm!2646 lt!1989722))))

(declare-datatypes ((Hashable!7513 0))(
  ( (HashableExt!7512 (__x!33788 Int)) )
))
(declare-fun hashF!1641 () Hashable!7513)

(declare-fun hash!5633 (Hashable!7513 K!17387) (_ BitVec 64))

(assert (=> b!4850565 (= lt!1989722 (hash!5633 hashF!1641 key!6445))))

(declare-fun b!4850566 () Bool)

(declare-fun res!2070221 () Bool)

(assert (=> b!4850566 (=> (not res!2070221) (not e!3032200))))

(declare-fun allKeysSameHashInMap!2829 (ListLongMap!6489 Hashable!7513) Bool)

(assert (=> b!4850566 (= res!2070221 (allKeysSameHashInMap!2829 lm!2646 hashF!1641))))

(declare-fun b!4850567 () Bool)

(declare-fun e!3032199 () Bool)

(assert (=> b!4850567 (= e!3032197 e!3032199)))

(declare-fun res!2070224 () Bool)

(assert (=> b!4850567 (=> res!2070224 e!3032199)))

(declare-fun containsKey!4707 (List!55708 K!17387) Bool)

(assert (=> b!4850567 (= res!2070224 (containsKey!4707 (_2!32946 (h!62022 (toList!7873 lm!2646))) key!6445))))

(assert (=> b!4850567 (not (containsKey!4707 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))) key!6445))))

(declare-fun lt!1989728 () Unit!145738)

(declare-fun lemmaNotSameHashThenCannotContainKey!263 (ListLongMap!6489 K!17387 (_ BitVec 64) Hashable!7513) Unit!145738)

(assert (=> b!4850567 (= lt!1989728 (lemmaNotSameHashThenCannotContainKey!263 lm!2646 key!6445 (_1!32946 (h!62022 (toList!7873 lm!2646))) hashF!1641))))

(declare-fun b!4850568 () Bool)

(declare-fun containsKeyBiggerList!769 (List!55709 K!17387) Bool)

(assert (=> b!4850568 (= e!3032199 (containsKeyBiggerList!769 (toList!7873 lm!2646) key!6445))))

(declare-fun lt!1989727 () ListLongMap!6489)

(assert (=> b!4850568 (containsKeyBiggerList!769 (toList!7873 lt!1989727) key!6445)))

(declare-fun lt!1989726 () Unit!145738)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!373 (ListLongMap!6489 K!17387 Hashable!7513) Unit!145738)

(assert (=> b!4850568 (= lt!1989726 (lemmaInLongMapThenContainsKeyBiggerList!373 lt!1989727 key!6445 hashF!1641))))

(declare-fun tail!9549 (ListLongMap!6489) ListLongMap!6489)

(assert (=> b!4850568 (= lt!1989727 (tail!9549 lm!2646))))

(assert (= (and start!506050 res!2070225) b!4850566))

(assert (= (and b!4850566 res!2070221) b!4850565))

(assert (= (and b!4850565 res!2070223) b!4850562))

(assert (= (and b!4850562 (not res!2070220)) b!4850564))

(assert (= (and b!4850564 (not res!2070222)) b!4850567))

(assert (= (and b!4850567 (not res!2070224)) b!4850568))

(assert (= start!506050 b!4850563))

(declare-fun m!5849084 () Bool)

(assert (=> start!506050 m!5849084))

(declare-fun m!5849086 () Bool)

(assert (=> start!506050 m!5849086))

(declare-fun m!5849088 () Bool)

(assert (=> b!4850568 m!5849088))

(declare-fun m!5849090 () Bool)

(assert (=> b!4850568 m!5849090))

(declare-fun m!5849092 () Bool)

(assert (=> b!4850568 m!5849092))

(declare-fun m!5849094 () Bool)

(assert (=> b!4850568 m!5849094))

(declare-fun m!5849096 () Bool)

(assert (=> b!4850566 m!5849096))

(declare-fun m!5849098 () Bool)

(assert (=> b!4850565 m!5849098))

(declare-fun m!5849100 () Bool)

(assert (=> b!4850565 m!5849100))

(declare-fun m!5849102 () Bool)

(assert (=> b!4850567 m!5849102))

(declare-fun m!5849104 () Bool)

(assert (=> b!4850567 m!5849104))

(assert (=> b!4850567 m!5849104))

(declare-fun m!5849106 () Bool)

(assert (=> b!4850567 m!5849106))

(declare-fun m!5849108 () Bool)

(assert (=> b!4850567 m!5849108))

(declare-fun m!5849110 () Bool)

(assert (=> b!4850562 m!5849110))

(declare-fun m!5849112 () Bool)

(assert (=> b!4850562 m!5849112))

(declare-fun m!5849114 () Bool)

(assert (=> b!4850562 m!5849114))

(declare-fun m!5849116 () Bool)

(assert (=> b!4850562 m!5849116))

(declare-fun m!5849118 () Bool)

(assert (=> b!4850562 m!5849118))

(declare-fun m!5849120 () Bool)

(assert (=> b!4850562 m!5849120))

(assert (=> b!4850562 m!5849116))

(push 1)

(assert (not b!4850567))

(assert (not b!4850568))

(assert (not b!4850566))

(assert (not start!506050))

(assert (not b!4850563))

(assert tp_is_empty!35237)

(assert (not b!4850565))

(assert (not b!4850562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557065 () Bool)

(declare-fun e!3032222 () Bool)

(assert (=> d!1557065 e!3032222))

(declare-fun res!2070246 () Bool)

(assert (=> d!1557065 (=> res!2070246 e!3032222)))

(declare-fun lt!1989762 () Bool)

(assert (=> d!1557065 (= res!2070246 (not lt!1989762))))

(declare-fun lt!1989761 () Bool)

(assert (=> d!1557065 (= lt!1989762 lt!1989761)))

(declare-fun lt!1989763 () Unit!145738)

(declare-fun e!3032221 () Unit!145738)

(assert (=> d!1557065 (= lt!1989763 e!3032221)))

(declare-fun c!825489 () Bool)

(assert (=> d!1557065 (= c!825489 lt!1989761)))

(declare-fun containsKey!4709 (List!55709 (_ BitVec 64)) Bool)

(assert (=> d!1557065 (= lt!1989761 (containsKey!4709 (toList!7873 lm!2646) lt!1989722))))

(assert (=> d!1557065 (= (contains!19252 lm!2646 lt!1989722) lt!1989762)))

(declare-fun b!4850596 () Bool)

(declare-fun lt!1989764 () Unit!145738)

(assert (=> b!4850596 (= e!3032221 lt!1989764)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2513 (List!55709 (_ BitVec 64)) Unit!145738)

(assert (=> b!4850596 (= lt!1989764 (lemmaContainsKeyImpliesGetValueByKeyDefined!2513 (toList!7873 lm!2646) lt!1989722))))

(declare-datatypes ((Option!13698 0))(
  ( (None!13697) (Some!13697 (v!49486 List!55708)) )
))
(declare-fun isDefined!10790 (Option!13698) Bool)

(declare-fun getValueByKey!2741 (List!55709 (_ BitVec 64)) Option!13698)

(assert (=> b!4850596 (isDefined!10790 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722))))

(declare-fun b!4850597 () Bool)

(declare-fun Unit!145742 () Unit!145738)

(assert (=> b!4850597 (= e!3032221 Unit!145742)))

(declare-fun b!4850598 () Bool)

(assert (=> b!4850598 (= e!3032222 (isDefined!10790 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722)))))

(assert (= (and d!1557065 c!825489) b!4850596))

(assert (= (and d!1557065 (not c!825489)) b!4850597))

(assert (= (and d!1557065 (not res!2070246)) b!4850598))

(declare-fun m!5849160 () Bool)

(assert (=> d!1557065 m!5849160))

(declare-fun m!5849162 () Bool)

(assert (=> b!4850596 m!5849162))

(declare-fun m!5849164 () Bool)

(assert (=> b!4850596 m!5849164))

(assert (=> b!4850596 m!5849164))

(declare-fun m!5849166 () Bool)

(assert (=> b!4850596 m!5849166))

(assert (=> b!4850598 m!5849164))

(assert (=> b!4850598 m!5849164))

(assert (=> b!4850598 m!5849166))

(assert (=> b!4850565 d!1557065))

(declare-fun d!1557067 () Bool)

(declare-fun hash!5636 (Hashable!7513 K!17387) (_ BitVec 64))

(assert (=> d!1557067 (= (hash!5633 hashF!1641 key!6445) (hash!5636 hashF!1641 key!6445))))

(declare-fun bs!1172891 () Bool)

(assert (= bs!1172891 d!1557067))

(declare-fun m!5849168 () Bool)

(assert (=> bs!1172891 m!5849168))

(assert (=> b!4850565 d!1557067))

(declare-fun d!1557069 () Bool)

(declare-fun res!2070253 () Bool)

(declare-fun e!3032231 () Bool)

(assert (=> d!1557069 (=> res!2070253 e!3032231)))

(declare-fun e!3032230 () Bool)

(assert (=> d!1557069 (= res!2070253 e!3032230)))

(declare-fun res!2070255 () Bool)

(assert (=> d!1557069 (=> (not res!2070255) (not e!3032230))))

(assert (=> d!1557069 (= res!2070255 (is-Cons!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557069 (= (containsKeyBiggerList!769 (toList!7873 lm!2646) key!6445) e!3032231)))

(declare-fun b!4850605 () Bool)

(assert (=> b!4850605 (= e!3032230 (containsKey!4707 (_2!32946 (h!62022 (toList!7873 lm!2646))) key!6445))))

(declare-fun b!4850606 () Bool)

(declare-fun e!3032229 () Bool)

(assert (=> b!4850606 (= e!3032231 e!3032229)))

(declare-fun res!2070254 () Bool)

(assert (=> b!4850606 (=> (not res!2070254) (not e!3032229))))

(assert (=> b!4850606 (= res!2070254 (is-Cons!55585 (toList!7873 lm!2646)))))

(declare-fun b!4850607 () Bool)

(assert (=> b!4850607 (= e!3032229 (containsKeyBiggerList!769 (t!363205 (toList!7873 lm!2646)) key!6445))))

(assert (= (and d!1557069 res!2070255) b!4850605))

(assert (= (and d!1557069 (not res!2070253)) b!4850606))

(assert (= (and b!4850606 res!2070254) b!4850607))

(assert (=> b!4850605 m!5849102))

(declare-fun m!5849170 () Bool)

(assert (=> b!4850607 m!5849170))

(assert (=> b!4850568 d!1557069))

(declare-fun d!1557071 () Bool)

(declare-fun res!2070256 () Bool)

(declare-fun e!3032234 () Bool)

(assert (=> d!1557071 (=> res!2070256 e!3032234)))

(declare-fun e!3032233 () Bool)

(assert (=> d!1557071 (= res!2070256 e!3032233)))

(declare-fun res!2070258 () Bool)

(assert (=> d!1557071 (=> (not res!2070258) (not e!3032233))))

(assert (=> d!1557071 (= res!2070258 (is-Cons!55585 (toList!7873 lt!1989727)))))

(assert (=> d!1557071 (= (containsKeyBiggerList!769 (toList!7873 lt!1989727) key!6445) e!3032234)))

(declare-fun b!4850608 () Bool)

(assert (=> b!4850608 (= e!3032233 (containsKey!4707 (_2!32946 (h!62022 (toList!7873 lt!1989727))) key!6445))))

(declare-fun b!4850609 () Bool)

(declare-fun e!3032232 () Bool)

(assert (=> b!4850609 (= e!3032234 e!3032232)))

(declare-fun res!2070257 () Bool)

(assert (=> b!4850609 (=> (not res!2070257) (not e!3032232))))

(assert (=> b!4850609 (= res!2070257 (is-Cons!55585 (toList!7873 lt!1989727)))))

(declare-fun b!4850610 () Bool)

(assert (=> b!4850610 (= e!3032232 (containsKeyBiggerList!769 (t!363205 (toList!7873 lt!1989727)) key!6445))))

(assert (= (and d!1557071 res!2070258) b!4850608))

(assert (= (and d!1557071 (not res!2070256)) b!4850609))

(assert (= (and b!4850609 res!2070257) b!4850610))

(declare-fun m!5849172 () Bool)

(assert (=> b!4850608 m!5849172))

(declare-fun m!5849174 () Bool)

(assert (=> b!4850610 m!5849174))

(assert (=> b!4850568 d!1557071))

(declare-fun bs!1172892 () Bool)

(declare-fun d!1557073 () Bool)

(assert (= bs!1172892 (and d!1557073 start!506050)))

(declare-fun lambda!242731 () Int)

(assert (=> bs!1172892 (= lambda!242731 lambda!242723)))

(assert (=> d!1557073 (containsKeyBiggerList!769 (toList!7873 lt!1989727) key!6445)))

(declare-fun lt!1989767 () Unit!145738)

(declare-fun choose!35503 (ListLongMap!6489 K!17387 Hashable!7513) Unit!145738)

(assert (=> d!1557073 (= lt!1989767 (choose!35503 lt!1989727 key!6445 hashF!1641))))

(assert (=> d!1557073 (forall!12966 (toList!7873 lt!1989727) lambda!242731)))

(assert (=> d!1557073 (= (lemmaInLongMapThenContainsKeyBiggerList!373 lt!1989727 key!6445 hashF!1641) lt!1989767)))

(declare-fun bs!1172893 () Bool)

(assert (= bs!1172893 d!1557073))

(assert (=> bs!1172893 m!5849090))

(declare-fun m!5849176 () Bool)

(assert (=> bs!1172893 m!5849176))

(declare-fun m!5849178 () Bool)

(assert (=> bs!1172893 m!5849178))

(assert (=> b!4850568 d!1557073))

(declare-fun d!1557077 () Bool)

(declare-fun tail!9551 (List!55709) List!55709)

(assert (=> d!1557077 (= (tail!9549 lm!2646) (ListLongMap!6490 (tail!9551 (toList!7873 lm!2646))))))

(declare-fun bs!1172894 () Bool)

(assert (= bs!1172894 d!1557077))

(declare-fun m!5849180 () Bool)

(assert (=> bs!1172894 m!5849180))

(assert (=> b!4850568 d!1557077))

(declare-fun d!1557079 () Bool)

(declare-fun res!2070263 () Bool)

(declare-fun e!3032239 () Bool)

(assert (=> d!1557079 (=> res!2070263 e!3032239)))

(assert (=> d!1557079 (= res!2070263 (is-Nil!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557079 (= (forall!12966 (toList!7873 lm!2646) lambda!242723) e!3032239)))

(declare-fun b!4850615 () Bool)

(declare-fun e!3032240 () Bool)

(assert (=> b!4850615 (= e!3032239 e!3032240)))

(declare-fun res!2070264 () Bool)

(assert (=> b!4850615 (=> (not res!2070264) (not e!3032240))))

(declare-fun dynLambda!22367 (Int tuple2!59304) Bool)

(assert (=> b!4850615 (= res!2070264 (dynLambda!22367 lambda!242723 (h!62022 (toList!7873 lm!2646))))))

(declare-fun b!4850616 () Bool)

(assert (=> b!4850616 (= e!3032240 (forall!12966 (t!363205 (toList!7873 lm!2646)) lambda!242723))))

(assert (= (and d!1557079 (not res!2070263)) b!4850615))

(assert (= (and b!4850615 res!2070264) b!4850616))

(declare-fun b_lambda!192955 () Bool)

(assert (=> (not b_lambda!192955) (not b!4850615)))

(declare-fun m!5849182 () Bool)

(assert (=> b!4850615 m!5849182))

(declare-fun m!5849184 () Bool)

(assert (=> b!4850616 m!5849184))

(assert (=> start!506050 d!1557079))

(declare-fun d!1557081 () Bool)

(declare-fun isStrictlySorted!1090 (List!55709) Bool)

(assert (=> d!1557081 (= (inv!71274 lm!2646) (isStrictlySorted!1090 (toList!7873 lm!2646)))))

(declare-fun bs!1172895 () Bool)

(assert (= bs!1172895 d!1557081))

(declare-fun m!5849186 () Bool)

(assert (=> bs!1172895 m!5849186))

(assert (=> start!506050 d!1557081))

(declare-fun d!1557083 () Bool)

(declare-fun res!2070269 () Bool)

(declare-fun e!3032245 () Bool)

(assert (=> d!1557083 (=> res!2070269 e!3032245)))

(assert (=> d!1557083 (= res!2070269 (and (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lm!2646)))) (= (_1!32945 (h!62021 (_2!32946 (h!62022 (toList!7873 lm!2646))))) key!6445)))))

(assert (=> d!1557083 (= (containsKey!4707 (_2!32946 (h!62022 (toList!7873 lm!2646))) key!6445) e!3032245)))

(declare-fun b!4850622 () Bool)

(declare-fun e!3032246 () Bool)

(assert (=> b!4850622 (= e!3032245 e!3032246)))

(declare-fun res!2070270 () Bool)

(assert (=> b!4850622 (=> (not res!2070270) (not e!3032246))))

(assert (=> b!4850622 (= res!2070270 (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lm!2646)))))))

(declare-fun b!4850623 () Bool)

(assert (=> b!4850623 (= e!3032246 (containsKey!4707 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646)))) key!6445))))

(assert (= (and d!1557083 (not res!2070269)) b!4850622))

(assert (= (and b!4850622 res!2070270) b!4850623))

(declare-fun m!5849188 () Bool)

(assert (=> b!4850623 m!5849188))

(assert (=> b!4850567 d!1557083))

(declare-fun d!1557085 () Bool)

(declare-fun res!2070271 () Bool)

(declare-fun e!3032247 () Bool)

(assert (=> d!1557085 (=> res!2070271 e!3032247)))

(assert (=> d!1557085 (= res!2070271 (and (is-Cons!55584 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646))))) (= (_1!32945 (h!62021 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))))) key!6445)))))

(assert (=> d!1557085 (= (containsKey!4707 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))) key!6445) e!3032247)))

(declare-fun b!4850624 () Bool)

(declare-fun e!3032248 () Bool)

(assert (=> b!4850624 (= e!3032247 e!3032248)))

(declare-fun res!2070272 () Bool)

(assert (=> b!4850624 (=> (not res!2070272) (not e!3032248))))

(assert (=> b!4850624 (= res!2070272 (is-Cons!55584 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646))))))))

(declare-fun b!4850625 () Bool)

(assert (=> b!4850625 (= e!3032248 (containsKey!4707 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646))))) key!6445))))

(assert (= (and d!1557085 (not res!2070271)) b!4850624))

(assert (= (and b!4850624 res!2070272) b!4850625))

(declare-fun m!5849192 () Bool)

(assert (=> b!4850625 m!5849192))

(assert (=> b!4850567 d!1557085))

(declare-fun d!1557087 () Bool)

(declare-fun get!19064 (Option!13698) List!55708)

(assert (=> d!1557087 (= (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))) (get!19064 (getValueByKey!2741 (toList!7873 lm!2646) (_1!32946 (h!62022 (toList!7873 lm!2646))))))))

(declare-fun bs!1172897 () Bool)

(assert (= bs!1172897 d!1557087))

(declare-fun m!5849196 () Bool)

(assert (=> bs!1172897 m!5849196))

(assert (=> bs!1172897 m!5849196))

(declare-fun m!5849198 () Bool)

(assert (=> bs!1172897 m!5849198))

(assert (=> b!4850567 d!1557087))

(declare-fun bs!1172899 () Bool)

(declare-fun d!1557091 () Bool)

(assert (= bs!1172899 (and d!1557091 start!506050)))

(declare-fun lambda!242734 () Int)

(assert (=> bs!1172899 (= lambda!242734 lambda!242723)))

(declare-fun bs!1172900 () Bool)

(assert (= bs!1172900 (and d!1557091 d!1557073)))

(assert (=> bs!1172900 (= lambda!242734 lambda!242731)))

(assert (=> d!1557091 (not (containsKey!4707 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))) key!6445))))

(declare-fun lt!1989773 () Unit!145738)

(declare-fun choose!35504 (ListLongMap!6489 K!17387 (_ BitVec 64) Hashable!7513) Unit!145738)

(assert (=> d!1557091 (= lt!1989773 (choose!35504 lm!2646 key!6445 (_1!32946 (h!62022 (toList!7873 lm!2646))) hashF!1641))))

(assert (=> d!1557091 (forall!12966 (toList!7873 lm!2646) lambda!242734)))

(assert (=> d!1557091 (= (lemmaNotSameHashThenCannotContainKey!263 lm!2646 key!6445 (_1!32946 (h!62022 (toList!7873 lm!2646))) hashF!1641) lt!1989773)))

(declare-fun bs!1172901 () Bool)

(assert (= bs!1172901 d!1557091))

(assert (=> bs!1172901 m!5849104))

(assert (=> bs!1172901 m!5849104))

(assert (=> bs!1172901 m!5849106))

(declare-fun m!5849202 () Bool)

(assert (=> bs!1172901 m!5849202))

(declare-fun m!5849204 () Bool)

(assert (=> bs!1172901 m!5849204))

(assert (=> b!4850567 d!1557091))

(declare-fun d!1557095 () Bool)

(declare-fun isEmpty!29751 (Option!13696) Bool)

(assert (=> d!1557095 (= (isDefined!10788 (getPair!1103 lt!1989721 key!6445)) (not (isEmpty!29751 (getPair!1103 lt!1989721 key!6445))))))

(declare-fun bs!1172903 () Bool)

(assert (= bs!1172903 d!1557095))

(assert (=> bs!1172903 m!5849116))

(declare-fun m!5849210 () Bool)

(assert (=> bs!1172903 m!5849210))

(assert (=> b!4850562 d!1557095))

(declare-fun d!1557099 () Bool)

(declare-fun lt!1989776 () Bool)

(declare-fun content!9901 (List!55709) (Set tuple2!59304))

(assert (=> d!1557099 (= lt!1989776 (set.member lt!1989724 (content!9901 (toList!7873 lm!2646))))))

(declare-fun e!3032253 () Bool)

(assert (=> d!1557099 (= lt!1989776 e!3032253)))

(declare-fun res!2070278 () Bool)

(assert (=> d!1557099 (=> (not res!2070278) (not e!3032253))))

(assert (=> d!1557099 (= res!2070278 (is-Cons!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557099 (= (contains!19251 (toList!7873 lm!2646) lt!1989724) lt!1989776)))

(declare-fun b!4850630 () Bool)

(declare-fun e!3032254 () Bool)

(assert (=> b!4850630 (= e!3032253 e!3032254)))

(declare-fun res!2070277 () Bool)

(assert (=> b!4850630 (=> res!2070277 e!3032254)))

(assert (=> b!4850630 (= res!2070277 (= (h!62022 (toList!7873 lm!2646)) lt!1989724))))

(declare-fun b!4850631 () Bool)

(assert (=> b!4850631 (= e!3032254 (contains!19251 (t!363205 (toList!7873 lm!2646)) lt!1989724))))

(assert (= (and d!1557099 res!2070278) b!4850630))

(assert (= (and b!4850630 (not res!2070277)) b!4850631))

(declare-fun m!5849212 () Bool)

(assert (=> d!1557099 m!5849212))

(declare-fun m!5849214 () Bool)

(assert (=> d!1557099 m!5849214))

(declare-fun m!5849216 () Bool)

(assert (=> b!4850631 m!5849216))

(assert (=> b!4850562 d!1557099))

(declare-fun d!1557101 () Bool)

(assert (=> d!1557101 (dynLambda!22367 lambda!242723 lt!1989724)))

(declare-fun lt!1989779 () Unit!145738)

(declare-fun choose!35505 (List!55709 Int tuple2!59304) Unit!145738)

(assert (=> d!1557101 (= lt!1989779 (choose!35505 (toList!7873 lm!2646) lambda!242723 lt!1989724))))

(declare-fun e!3032257 () Bool)

(assert (=> d!1557101 e!3032257))

(declare-fun res!2070281 () Bool)

(assert (=> d!1557101 (=> (not res!2070281) (not e!3032257))))

(assert (=> d!1557101 (= res!2070281 (forall!12966 (toList!7873 lm!2646) lambda!242723))))

(assert (=> d!1557101 (= (forallContained!4554 (toList!7873 lm!2646) lambda!242723 lt!1989724) lt!1989779)))

(declare-fun b!4850634 () Bool)

(assert (=> b!4850634 (= e!3032257 (contains!19251 (toList!7873 lm!2646) lt!1989724))))

(assert (= (and d!1557101 res!2070281) b!4850634))

(declare-fun b_lambda!192957 () Bool)

(assert (=> (not b_lambda!192957) (not d!1557101)))

(declare-fun m!5849218 () Bool)

(assert (=> d!1557101 m!5849218))

(declare-fun m!5849220 () Bool)

(assert (=> d!1557101 m!5849220))

(assert (=> d!1557101 m!5849084))

(assert (=> b!4850634 m!5849114))

(assert (=> b!4850562 d!1557101))

(declare-fun b!4850668 () Bool)

(declare-fun e!3032279 () Option!13696)

(assert (=> b!4850668 (= e!3032279 (Some!13695 (h!62021 lt!1989721)))))

(declare-fun b!4850669 () Bool)

(declare-fun e!3032278 () Bool)

(assert (=> b!4850669 (= e!3032278 (not (containsKey!4707 lt!1989721 key!6445)))))

(declare-fun d!1557103 () Bool)

(declare-fun e!3032281 () Bool)

(assert (=> d!1557103 e!3032281))

(declare-fun res!2070300 () Bool)

(assert (=> d!1557103 (=> res!2070300 e!3032281)))

(assert (=> d!1557103 (= res!2070300 e!3032278)))

(declare-fun res!2070298 () Bool)

(assert (=> d!1557103 (=> (not res!2070298) (not e!3032278))))

(declare-fun lt!1989784 () Option!13696)

(assert (=> d!1557103 (= res!2070298 (isEmpty!29751 lt!1989784))))

(assert (=> d!1557103 (= lt!1989784 e!3032279)))

(declare-fun c!825499 () Bool)

(assert (=> d!1557103 (= c!825499 (and (is-Cons!55584 lt!1989721) (= (_1!32945 (h!62021 lt!1989721)) key!6445)))))

(declare-fun noDuplicateKeys!2601 (List!55708) Bool)

(assert (=> d!1557103 (noDuplicateKeys!2601 lt!1989721)))

(assert (=> d!1557103 (= (getPair!1103 lt!1989721 key!6445) lt!1989784)))

(declare-fun b!4850667 () Bool)

(declare-fun e!3032280 () Option!13696)

(assert (=> b!4850667 (= e!3032279 e!3032280)))

(declare-fun c!825498 () Bool)

(assert (=> b!4850667 (= c!825498 (is-Cons!55584 lt!1989721))))

(declare-fun b!4850670 () Bool)

(assert (=> b!4850670 (= e!3032280 (getPair!1103 (t!363204 lt!1989721) key!6445))))

(declare-fun b!4850671 () Bool)

(declare-fun e!3032282 () Bool)

(declare-fun contains!19255 (List!55708 tuple2!59302) Bool)

(declare-fun get!19065 (Option!13696) tuple2!59302)

(assert (=> b!4850671 (= e!3032282 (contains!19255 lt!1989721 (get!19065 lt!1989784)))))

(declare-fun b!4850672 () Bool)

(assert (=> b!4850672 (= e!3032281 e!3032282)))

(declare-fun res!2070301 () Bool)

(assert (=> b!4850672 (=> (not res!2070301) (not e!3032282))))

(assert (=> b!4850672 (= res!2070301 (isDefined!10788 lt!1989784))))

(declare-fun b!4850673 () Bool)

(assert (=> b!4850673 (= e!3032280 None!13695)))

(declare-fun b!4850674 () Bool)

(declare-fun res!2070299 () Bool)

(assert (=> b!4850674 (=> (not res!2070299) (not e!3032282))))

(assert (=> b!4850674 (= res!2070299 (= (_1!32945 (get!19065 lt!1989784)) key!6445))))

(assert (= (and d!1557103 c!825499) b!4850668))

(assert (= (and d!1557103 (not c!825499)) b!4850667))

(assert (= (and b!4850667 c!825498) b!4850670))

(assert (= (and b!4850667 (not c!825498)) b!4850673))

(assert (= (and d!1557103 res!2070298) b!4850669))

(assert (= (and d!1557103 (not res!2070300)) b!4850672))

(assert (= (and b!4850672 res!2070301) b!4850674))

(assert (= (and b!4850674 res!2070299) b!4850671))

(declare-fun m!5849222 () Bool)

(assert (=> b!4850671 m!5849222))

(assert (=> b!4850671 m!5849222))

(declare-fun m!5849224 () Bool)

(assert (=> b!4850671 m!5849224))

(declare-fun m!5849226 () Bool)

(assert (=> b!4850670 m!5849226))

(declare-fun m!5849228 () Bool)

(assert (=> b!4850672 m!5849228))

(declare-fun m!5849230 () Bool)

(assert (=> b!4850669 m!5849230))

(assert (=> b!4850674 m!5849222))

(declare-fun m!5849232 () Bool)

(assert (=> d!1557103 m!5849232))

(declare-fun m!5849234 () Bool)

(assert (=> d!1557103 m!5849234))

(assert (=> b!4850562 d!1557103))

(declare-fun d!1557105 () Bool)

(assert (=> d!1557105 (contains!19251 (toList!7873 lm!2646) (tuple2!59305 lt!1989722 lt!1989721))))

(declare-fun lt!1989788 () Unit!145738)

(declare-fun choose!35506 (ListLongMap!6489 (_ BitVec 64) List!55708) Unit!145738)

(assert (=> d!1557105 (= lt!1989788 (choose!35506 lm!2646 lt!1989722 lt!1989721))))

(assert (=> d!1557105 (contains!19252 lm!2646 lt!1989722)))

(assert (=> d!1557105 (= (lemmaGetValueImpliesTupleContained!780 lm!2646 lt!1989722 lt!1989721) lt!1989788)))

(declare-fun bs!1172904 () Bool)

(assert (= bs!1172904 d!1557105))

(declare-fun m!5849236 () Bool)

(assert (=> bs!1172904 m!5849236))

(declare-fun m!5849238 () Bool)

(assert (=> bs!1172904 m!5849238))

(assert (=> bs!1172904 m!5849098))

(assert (=> b!4850562 d!1557105))

(declare-fun d!1557107 () Bool)

(assert (=> d!1557107 (= (apply!13456 lm!2646 lt!1989722) (get!19064 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722)))))

(declare-fun bs!1172905 () Bool)

(assert (= bs!1172905 d!1557107))

(assert (=> bs!1172905 m!5849164))

(assert (=> bs!1172905 m!5849164))

(declare-fun m!5849240 () Bool)

(assert (=> bs!1172905 m!5849240))

(assert (=> b!4850562 d!1557107))

(declare-fun bs!1172906 () Bool)

(declare-fun d!1557109 () Bool)

(assert (= bs!1172906 (and d!1557109 start!506050)))

(declare-fun lambda!242737 () Int)

(assert (=> bs!1172906 (not (= lambda!242737 lambda!242723))))

(declare-fun bs!1172907 () Bool)

(assert (= bs!1172907 (and d!1557109 d!1557073)))

(assert (=> bs!1172907 (not (= lambda!242737 lambda!242731))))

(declare-fun bs!1172908 () Bool)

(assert (= bs!1172908 (and d!1557109 d!1557091)))

(assert (=> bs!1172908 (not (= lambda!242737 lambda!242734))))

(assert (=> d!1557109 true))

(assert (=> d!1557109 (= (allKeysSameHashInMap!2829 lm!2646 hashF!1641) (forall!12966 (toList!7873 lm!2646) lambda!242737))))

(declare-fun bs!1172909 () Bool)

(assert (= bs!1172909 d!1557109))

(declare-fun m!5849256 () Bool)

(assert (=> bs!1172909 m!5849256))

(assert (=> b!4850566 d!1557109))

(declare-fun b!4850690 () Bool)

(declare-fun e!3032290 () Bool)

(declare-fun tp!1364825 () Bool)

(declare-fun tp!1364826 () Bool)

(assert (=> b!4850690 (= e!3032290 (and tp!1364825 tp!1364826))))

(assert (=> b!4850563 (= tp!1364817 e!3032290)))

(assert (= (and b!4850563 (is-Cons!55585 (toList!7873 lm!2646))) b!4850690))

(declare-fun b_lambda!192959 () Bool)

(assert (= b_lambda!192955 (or start!506050 b_lambda!192959)))

(declare-fun bs!1172910 () Bool)

(declare-fun d!1557113 () Bool)

(assert (= bs!1172910 (and d!1557113 start!506050)))

(assert (=> bs!1172910 (= (dynLambda!22367 lambda!242723 (h!62022 (toList!7873 lm!2646))) (noDuplicateKeys!2601 (_2!32946 (h!62022 (toList!7873 lm!2646)))))))

(declare-fun m!5849258 () Bool)

(assert (=> bs!1172910 m!5849258))

(assert (=> b!4850615 d!1557113))

(declare-fun b_lambda!192961 () Bool)

(assert (= b_lambda!192957 (or start!506050 b_lambda!192961)))

(declare-fun bs!1172911 () Bool)

(declare-fun d!1557115 () Bool)

(assert (= bs!1172911 (and d!1557115 start!506050)))

(assert (=> bs!1172911 (= (dynLambda!22367 lambda!242723 lt!1989724) (noDuplicateKeys!2601 (_2!32946 lt!1989724)))))

(declare-fun m!5849260 () Bool)

(assert (=> bs!1172911 m!5849260))

(assert (=> d!1557101 d!1557115))

(push 1)

(assert (not b!4850625))

(assert (not b!4850690))

(assert (not b!4850671))

(assert (not b!4850623))

(assert (not d!1557087))

(assert (not d!1557065))

(assert (not b!4850605))

(assert (not b!4850608))

(assert (not b!4850631))

(assert (not d!1557109))

(assert (not d!1557067))

(assert (not b!4850598))

(assert (not b!4850596))

(assert (not bs!1172911))

(assert (not d!1557101))

(assert (not b!4850634))

(assert (not d!1557105))

(assert (not d!1557091))

(assert (not d!1557103))

(assert (not d!1557095))

(assert (not d!1557077))

(assert (not b_lambda!192959))

(assert (not b!4850610))

(assert (not b!4850669))

(assert (not b!4850670))

(assert (not b!4850616))

(assert (not b!4850674))

(assert (not b!4850672))

(assert (not d!1557099))

(assert (not d!1557073))

(assert (not d!1557107))

(assert (not d!1557081))

(assert (not b!4850607))

(assert (not b_lambda!192961))

(assert tp_is_empty!35237)

(assert (not bs!1172910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557149 () Bool)

(declare-fun isEmpty!29753 (Option!13698) Bool)

(assert (=> d!1557149 (= (isDefined!10790 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722)) (not (isEmpty!29753 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722))))))

(declare-fun bs!1172927 () Bool)

(assert (= bs!1172927 d!1557149))

(assert (=> bs!1172927 m!5849164))

(declare-fun m!5849316 () Bool)

(assert (=> bs!1172927 m!5849316))

(assert (=> b!4850598 d!1557149))

(declare-fun b!4850752 () Bool)

(declare-fun e!3032340 () Option!13698)

(assert (=> b!4850752 (= e!3032340 (getValueByKey!2741 (t!363205 (toList!7873 lm!2646)) lt!1989722))))

(declare-fun d!1557151 () Bool)

(declare-fun c!825509 () Bool)

(assert (=> d!1557151 (= c!825509 (and (is-Cons!55585 (toList!7873 lm!2646)) (= (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722)))))

(declare-fun e!3032339 () Option!13698)

(assert (=> d!1557151 (= (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722) e!3032339)))

(declare-fun b!4850753 () Bool)

(assert (=> b!4850753 (= e!3032340 None!13697)))

(declare-fun b!4850750 () Bool)

(assert (=> b!4850750 (= e!3032339 (Some!13697 (_2!32946 (h!62022 (toList!7873 lm!2646)))))))

(declare-fun b!4850751 () Bool)

(assert (=> b!4850751 (= e!3032339 e!3032340)))

(declare-fun c!825510 () Bool)

(assert (=> b!4850751 (= c!825510 (and (is-Cons!55585 (toList!7873 lm!2646)) (not (= (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722))))))

(assert (= (and d!1557151 c!825509) b!4850750))

(assert (= (and d!1557151 (not c!825509)) b!4850751))

(assert (= (and b!4850751 c!825510) b!4850752))

(assert (= (and b!4850751 (not c!825510)) b!4850753))

(declare-fun m!5849318 () Bool)

(assert (=> b!4850752 m!5849318))

(assert (=> b!4850598 d!1557151))

(declare-fun d!1557153 () Bool)

(declare-fun res!2070348 () Bool)

(declare-fun e!3032345 () Bool)

(assert (=> d!1557153 (=> res!2070348 e!3032345)))

(assert (=> d!1557153 (= res!2070348 (and (is-Cons!55585 (toList!7873 lm!2646)) (= (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722)))))

(assert (=> d!1557153 (= (containsKey!4709 (toList!7873 lm!2646) lt!1989722) e!3032345)))

(declare-fun b!4850758 () Bool)

(declare-fun e!3032346 () Bool)

(assert (=> b!4850758 (= e!3032345 e!3032346)))

(declare-fun res!2070349 () Bool)

(assert (=> b!4850758 (=> (not res!2070349) (not e!3032346))))

(assert (=> b!4850758 (= res!2070349 (and (or (not (is-Cons!55585 (toList!7873 lm!2646))) (bvsle (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722)) (is-Cons!55585 (toList!7873 lm!2646)) (bvslt (_1!32946 (h!62022 (toList!7873 lm!2646))) lt!1989722)))))

(declare-fun b!4850759 () Bool)

(assert (=> b!4850759 (= e!3032346 (containsKey!4709 (t!363205 (toList!7873 lm!2646)) lt!1989722))))

(assert (= (and d!1557153 (not res!2070348)) b!4850758))

(assert (= (and b!4850758 res!2070349) b!4850759))

(declare-fun m!5849320 () Bool)

(assert (=> b!4850759 m!5849320))

(assert (=> d!1557065 d!1557153))

(declare-fun d!1557155 () Bool)

(declare-fun lt!1989813 () Bool)

(assert (=> d!1557155 (= lt!1989813 (set.member lt!1989724 (content!9901 (t!363205 (toList!7873 lm!2646)))))))

(declare-fun e!3032347 () Bool)

(assert (=> d!1557155 (= lt!1989813 e!3032347)))

(declare-fun res!2070351 () Bool)

(assert (=> d!1557155 (=> (not res!2070351) (not e!3032347))))

(assert (=> d!1557155 (= res!2070351 (is-Cons!55585 (t!363205 (toList!7873 lm!2646))))))

(assert (=> d!1557155 (= (contains!19251 (t!363205 (toList!7873 lm!2646)) lt!1989724) lt!1989813)))

(declare-fun b!4850760 () Bool)

(declare-fun e!3032348 () Bool)

(assert (=> b!4850760 (= e!3032347 e!3032348)))

(declare-fun res!2070350 () Bool)

(assert (=> b!4850760 (=> res!2070350 e!3032348)))

(assert (=> b!4850760 (= res!2070350 (= (h!62022 (t!363205 (toList!7873 lm!2646))) lt!1989724))))

(declare-fun b!4850761 () Bool)

(assert (=> b!4850761 (= e!3032348 (contains!19251 (t!363205 (t!363205 (toList!7873 lm!2646))) lt!1989724))))

(assert (= (and d!1557155 res!2070351) b!4850760))

(assert (= (and b!4850760 (not res!2070350)) b!4850761))

(declare-fun m!5849322 () Bool)

(assert (=> d!1557155 m!5849322))

(declare-fun m!5849324 () Bool)

(assert (=> d!1557155 m!5849324))

(declare-fun m!5849326 () Bool)

(assert (=> b!4850761 m!5849326))

(assert (=> b!4850631 d!1557155))

(declare-fun d!1557157 () Bool)

(assert (=> d!1557157 (= (get!19064 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722)) (v!49486 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722)))))

(assert (=> d!1557107 d!1557157))

(assert (=> d!1557107 d!1557151))

(declare-fun d!1557159 () Bool)

(declare-fun res!2070352 () Bool)

(declare-fun e!3032349 () Bool)

(assert (=> d!1557159 (=> res!2070352 e!3032349)))

(assert (=> d!1557159 (= res!2070352 (and (is-Cons!55584 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646))))) (= (_1!32945 (h!62021 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646)))))) key!6445)))))

(assert (=> d!1557159 (= (containsKey!4707 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646)))) key!6445) e!3032349)))

(declare-fun b!4850762 () Bool)

(declare-fun e!3032350 () Bool)

(assert (=> b!4850762 (= e!3032349 e!3032350)))

(declare-fun res!2070353 () Bool)

(assert (=> b!4850762 (=> (not res!2070353) (not e!3032350))))

(assert (=> b!4850762 (= res!2070353 (is-Cons!55584 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646))))))))

(declare-fun b!4850763 () Bool)

(assert (=> b!4850763 (= e!3032350 (containsKey!4707 (t!363204 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646))))) key!6445))))

(assert (= (and d!1557159 (not res!2070352)) b!4850762))

(assert (= (and b!4850762 res!2070353) b!4850763))

(declare-fun m!5849328 () Bool)

(assert (=> b!4850763 m!5849328))

(assert (=> b!4850623 d!1557159))

(declare-fun d!1557161 () Bool)

(declare-fun res!2070354 () Bool)

(declare-fun e!3032353 () Bool)

(assert (=> d!1557161 (=> res!2070354 e!3032353)))

(declare-fun e!3032352 () Bool)

(assert (=> d!1557161 (= res!2070354 e!3032352)))

(declare-fun res!2070356 () Bool)

(assert (=> d!1557161 (=> (not res!2070356) (not e!3032352))))

(assert (=> d!1557161 (= res!2070356 (is-Cons!55585 (t!363205 (toList!7873 lt!1989727))))))

(assert (=> d!1557161 (= (containsKeyBiggerList!769 (t!363205 (toList!7873 lt!1989727)) key!6445) e!3032353)))

(declare-fun b!4850764 () Bool)

(assert (=> b!4850764 (= e!3032352 (containsKey!4707 (_2!32946 (h!62022 (t!363205 (toList!7873 lt!1989727)))) key!6445))))

(declare-fun b!4850765 () Bool)

(declare-fun e!3032351 () Bool)

(assert (=> b!4850765 (= e!3032353 e!3032351)))

(declare-fun res!2070355 () Bool)

(assert (=> b!4850765 (=> (not res!2070355) (not e!3032351))))

(assert (=> b!4850765 (= res!2070355 (is-Cons!55585 (t!363205 (toList!7873 lt!1989727))))))

(declare-fun b!4850766 () Bool)

(assert (=> b!4850766 (= e!3032351 (containsKeyBiggerList!769 (t!363205 (t!363205 (toList!7873 lt!1989727))) key!6445))))

(assert (= (and d!1557161 res!2070356) b!4850764))

(assert (= (and d!1557161 (not res!2070354)) b!4850765))

(assert (= (and b!4850765 res!2070355) b!4850766))

(declare-fun m!5849330 () Bool)

(assert (=> b!4850764 m!5849330))

(declare-fun m!5849332 () Bool)

(assert (=> b!4850766 m!5849332))

(assert (=> b!4850610 d!1557161))

(declare-fun d!1557163 () Bool)

(assert (=> d!1557163 (= (isEmpty!29751 (getPair!1103 lt!1989721 key!6445)) (not (is-Some!13695 (getPair!1103 lt!1989721 key!6445))))))

(assert (=> d!1557095 d!1557163))

(assert (=> b!4850634 d!1557099))

(assert (=> d!1557073 d!1557071))

(declare-fun d!1557165 () Bool)

(assert (=> d!1557165 (containsKeyBiggerList!769 (toList!7873 lt!1989727) key!6445)))

(assert (=> d!1557165 true))

(declare-fun _$33!905 () Unit!145738)

(assert (=> d!1557165 (= (choose!35503 lt!1989727 key!6445 hashF!1641) _$33!905)))

(declare-fun bs!1172928 () Bool)

(assert (= bs!1172928 d!1557165))

(assert (=> bs!1172928 m!5849090))

(assert (=> d!1557073 d!1557165))

(declare-fun d!1557167 () Bool)

(declare-fun res!2070357 () Bool)

(declare-fun e!3032354 () Bool)

(assert (=> d!1557167 (=> res!2070357 e!3032354)))

(assert (=> d!1557167 (= res!2070357 (is-Nil!55585 (toList!7873 lt!1989727)))))

(assert (=> d!1557167 (= (forall!12966 (toList!7873 lt!1989727) lambda!242731) e!3032354)))

(declare-fun b!4850767 () Bool)

(declare-fun e!3032355 () Bool)

(assert (=> b!4850767 (= e!3032354 e!3032355)))

(declare-fun res!2070358 () Bool)

(assert (=> b!4850767 (=> (not res!2070358) (not e!3032355))))

(assert (=> b!4850767 (= res!2070358 (dynLambda!22367 lambda!242731 (h!62022 (toList!7873 lt!1989727))))))

(declare-fun b!4850768 () Bool)

(assert (=> b!4850768 (= e!3032355 (forall!12966 (t!363205 (toList!7873 lt!1989727)) lambda!242731))))

(assert (= (and d!1557167 (not res!2070357)) b!4850767))

(assert (= (and b!4850767 res!2070358) b!4850768))

(declare-fun b_lambda!192971 () Bool)

(assert (=> (not b_lambda!192971) (not b!4850767)))

(declare-fun m!5849334 () Bool)

(assert (=> b!4850767 m!5849334))

(declare-fun m!5849336 () Bool)

(assert (=> b!4850768 m!5849336))

(assert (=> d!1557073 d!1557167))

(declare-fun d!1557169 () Bool)

(declare-fun res!2070359 () Bool)

(declare-fun e!3032356 () Bool)

(assert (=> d!1557169 (=> res!2070359 e!3032356)))

(assert (=> d!1557169 (= res!2070359 (is-Nil!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557169 (= (forall!12966 (toList!7873 lm!2646) lambda!242737) e!3032356)))

(declare-fun b!4850769 () Bool)

(declare-fun e!3032357 () Bool)

(assert (=> b!4850769 (= e!3032356 e!3032357)))

(declare-fun res!2070360 () Bool)

(assert (=> b!4850769 (=> (not res!2070360) (not e!3032357))))

(assert (=> b!4850769 (= res!2070360 (dynLambda!22367 lambda!242737 (h!62022 (toList!7873 lm!2646))))))

(declare-fun b!4850770 () Bool)

(assert (=> b!4850770 (= e!3032357 (forall!12966 (t!363205 (toList!7873 lm!2646)) lambda!242737))))

(assert (= (and d!1557169 (not res!2070359)) b!4850769))

(assert (= (and b!4850769 res!2070360) b!4850770))

(declare-fun b_lambda!192973 () Bool)

(assert (=> (not b_lambda!192973) (not b!4850769)))

(declare-fun m!5849338 () Bool)

(assert (=> b!4850769 m!5849338))

(declare-fun m!5849340 () Bool)

(assert (=> b!4850770 m!5849340))

(assert (=> d!1557109 d!1557169))

(declare-fun d!1557171 () Bool)

(declare-fun res!2070365 () Bool)

(declare-fun e!3032362 () Bool)

(assert (=> d!1557171 (=> res!2070365 e!3032362)))

(assert (=> d!1557171 (= res!2070365 (or (is-Nil!55585 (toList!7873 lm!2646)) (is-Nil!55585 (t!363205 (toList!7873 lm!2646)))))))

(assert (=> d!1557171 (= (isStrictlySorted!1090 (toList!7873 lm!2646)) e!3032362)))

(declare-fun b!4850775 () Bool)

(declare-fun e!3032363 () Bool)

(assert (=> b!4850775 (= e!3032362 e!3032363)))

(declare-fun res!2070366 () Bool)

(assert (=> b!4850775 (=> (not res!2070366) (not e!3032363))))

(assert (=> b!4850775 (= res!2070366 (bvslt (_1!32946 (h!62022 (toList!7873 lm!2646))) (_1!32946 (h!62022 (t!363205 (toList!7873 lm!2646))))))))

(declare-fun b!4850776 () Bool)

(assert (=> b!4850776 (= e!3032363 (isStrictlySorted!1090 (t!363205 (toList!7873 lm!2646))))))

(assert (= (and d!1557171 (not res!2070365)) b!4850775))

(assert (= (and b!4850775 res!2070366) b!4850776))

(declare-fun m!5849342 () Bool)

(assert (=> b!4850776 m!5849342))

(assert (=> d!1557081 d!1557171))

(assert (=> b!4850605 d!1557083))

(declare-fun d!1557173 () Bool)

(assert (=> d!1557173 (dynLambda!22367 lambda!242723 lt!1989724)))

(assert (=> d!1557173 true))

(declare-fun _$7!2504 () Unit!145738)

(assert (=> d!1557173 (= (choose!35505 (toList!7873 lm!2646) lambda!242723 lt!1989724) _$7!2504)))

(declare-fun b_lambda!192975 () Bool)

(assert (=> (not b_lambda!192975) (not d!1557173)))

(declare-fun bs!1172929 () Bool)

(assert (= bs!1172929 d!1557173))

(assert (=> bs!1172929 m!5849218))

(assert (=> d!1557101 d!1557173))

(assert (=> d!1557101 d!1557079))

(declare-fun d!1557175 () Bool)

(declare-fun res!2070367 () Bool)

(declare-fun e!3032364 () Bool)

(assert (=> d!1557175 (=> res!2070367 e!3032364)))

(assert (=> d!1557175 (= res!2070367 (and (is-Cons!55584 lt!1989721) (= (_1!32945 (h!62021 lt!1989721)) key!6445)))))

(assert (=> d!1557175 (= (containsKey!4707 lt!1989721 key!6445) e!3032364)))

(declare-fun b!4850777 () Bool)

(declare-fun e!3032365 () Bool)

(assert (=> b!4850777 (= e!3032364 e!3032365)))

(declare-fun res!2070368 () Bool)

(assert (=> b!4850777 (=> (not res!2070368) (not e!3032365))))

(assert (=> b!4850777 (= res!2070368 (is-Cons!55584 lt!1989721))))

(declare-fun b!4850778 () Bool)

(assert (=> b!4850778 (= e!3032365 (containsKey!4707 (t!363204 lt!1989721) key!6445))))

(assert (= (and d!1557175 (not res!2070367)) b!4850777))

(assert (= (and b!4850777 res!2070368) b!4850778))

(declare-fun m!5849344 () Bool)

(assert (=> b!4850778 m!5849344))

(assert (=> b!4850669 d!1557175))

(declare-fun d!1557177 () Bool)

(declare-fun res!2070373 () Bool)

(declare-fun e!3032370 () Bool)

(assert (=> d!1557177 (=> res!2070373 e!3032370)))

(assert (=> d!1557177 (= res!2070373 (not (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lm!2646))))))))

(assert (=> d!1557177 (= (noDuplicateKeys!2601 (_2!32946 (h!62022 (toList!7873 lm!2646)))) e!3032370)))

(declare-fun b!4850783 () Bool)

(declare-fun e!3032371 () Bool)

(assert (=> b!4850783 (= e!3032370 e!3032371)))

(declare-fun res!2070374 () Bool)

(assert (=> b!4850783 (=> (not res!2070374) (not e!3032371))))

(assert (=> b!4850783 (= res!2070374 (not (containsKey!4707 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646)))) (_1!32945 (h!62021 (_2!32946 (h!62022 (toList!7873 lm!2646))))))))))

(declare-fun b!4850784 () Bool)

(assert (=> b!4850784 (= e!3032371 (noDuplicateKeys!2601 (t!363204 (_2!32946 (h!62022 (toList!7873 lm!2646))))))))

(assert (= (and d!1557177 (not res!2070373)) b!4850783))

(assert (= (and b!4850783 res!2070374) b!4850784))

(declare-fun m!5849346 () Bool)

(assert (=> b!4850783 m!5849346))

(declare-fun m!5849348 () Bool)

(assert (=> b!4850784 m!5849348))

(assert (=> bs!1172910 d!1557177))

(declare-fun lt!1989814 () Bool)

(declare-fun d!1557179 () Bool)

(assert (=> d!1557179 (= lt!1989814 (set.member (tuple2!59305 lt!1989722 lt!1989721) (content!9901 (toList!7873 lm!2646))))))

(declare-fun e!3032372 () Bool)

(assert (=> d!1557179 (= lt!1989814 e!3032372)))

(declare-fun res!2070376 () Bool)

(assert (=> d!1557179 (=> (not res!2070376) (not e!3032372))))

(assert (=> d!1557179 (= res!2070376 (is-Cons!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557179 (= (contains!19251 (toList!7873 lm!2646) (tuple2!59305 lt!1989722 lt!1989721)) lt!1989814)))

(declare-fun b!4850785 () Bool)

(declare-fun e!3032373 () Bool)

(assert (=> b!4850785 (= e!3032372 e!3032373)))

(declare-fun res!2070375 () Bool)

(assert (=> b!4850785 (=> res!2070375 e!3032373)))

(assert (=> b!4850785 (= res!2070375 (= (h!62022 (toList!7873 lm!2646)) (tuple2!59305 lt!1989722 lt!1989721)))))

(declare-fun b!4850786 () Bool)

(assert (=> b!4850786 (= e!3032373 (contains!19251 (t!363205 (toList!7873 lm!2646)) (tuple2!59305 lt!1989722 lt!1989721)))))

(assert (= (and d!1557179 res!2070376) b!4850785))

(assert (= (and b!4850785 (not res!2070375)) b!4850786))

(assert (=> d!1557179 m!5849212))

(declare-fun m!5849350 () Bool)

(assert (=> d!1557179 m!5849350))

(declare-fun m!5849352 () Bool)

(assert (=> b!4850786 m!5849352))

(assert (=> d!1557105 d!1557179))

(declare-fun d!1557181 () Bool)

(assert (=> d!1557181 (contains!19251 (toList!7873 lm!2646) (tuple2!59305 lt!1989722 lt!1989721))))

(assert (=> d!1557181 true))

(declare-fun _$41!583 () Unit!145738)

(assert (=> d!1557181 (= (choose!35506 lm!2646 lt!1989722 lt!1989721) _$41!583)))

(declare-fun bs!1172930 () Bool)

(assert (= bs!1172930 d!1557181))

(assert (=> bs!1172930 m!5849236))

(assert (=> d!1557105 d!1557181))

(assert (=> d!1557105 d!1557065))

(declare-fun d!1557183 () Bool)

(declare-fun res!2070377 () Bool)

(declare-fun e!3032376 () Bool)

(assert (=> d!1557183 (=> res!2070377 e!3032376)))

(declare-fun e!3032375 () Bool)

(assert (=> d!1557183 (= res!2070377 e!3032375)))

(declare-fun res!2070379 () Bool)

(assert (=> d!1557183 (=> (not res!2070379) (not e!3032375))))

(assert (=> d!1557183 (= res!2070379 (is-Cons!55585 (t!363205 (toList!7873 lm!2646))))))

(assert (=> d!1557183 (= (containsKeyBiggerList!769 (t!363205 (toList!7873 lm!2646)) key!6445) e!3032376)))

(declare-fun b!4850788 () Bool)

(assert (=> b!4850788 (= e!3032375 (containsKey!4707 (_2!32946 (h!62022 (t!363205 (toList!7873 lm!2646)))) key!6445))))

(declare-fun b!4850789 () Bool)

(declare-fun e!3032374 () Bool)

(assert (=> b!4850789 (= e!3032376 e!3032374)))

(declare-fun res!2070378 () Bool)

(assert (=> b!4850789 (=> (not res!2070378) (not e!3032374))))

(assert (=> b!4850789 (= res!2070378 (is-Cons!55585 (t!363205 (toList!7873 lm!2646))))))

(declare-fun b!4850790 () Bool)

(assert (=> b!4850790 (= e!3032374 (containsKeyBiggerList!769 (t!363205 (t!363205 (toList!7873 lm!2646))) key!6445))))

(assert (= (and d!1557183 res!2070379) b!4850788))

(assert (= (and d!1557183 (not res!2070377)) b!4850789))

(assert (= (and b!4850789 res!2070378) b!4850790))

(declare-fun m!5849354 () Bool)

(assert (=> b!4850788 m!5849354))

(declare-fun m!5849356 () Bool)

(assert (=> b!4850790 m!5849356))

(assert (=> b!4850607 d!1557183))

(declare-fun b!4850792 () Bool)

(declare-fun e!3032378 () Option!13696)

(assert (=> b!4850792 (= e!3032378 (Some!13695 (h!62021 (t!363204 lt!1989721))))))

(declare-fun b!4850793 () Bool)

(declare-fun e!3032377 () Bool)

(assert (=> b!4850793 (= e!3032377 (not (containsKey!4707 (t!363204 lt!1989721) key!6445)))))

(declare-fun d!1557185 () Bool)

(declare-fun e!3032380 () Bool)

(assert (=> d!1557185 e!3032380))

(declare-fun res!2070382 () Bool)

(assert (=> d!1557185 (=> res!2070382 e!3032380)))

(assert (=> d!1557185 (= res!2070382 e!3032377)))

(declare-fun res!2070380 () Bool)

(assert (=> d!1557185 (=> (not res!2070380) (not e!3032377))))

(declare-fun lt!1989815 () Option!13696)

(assert (=> d!1557185 (= res!2070380 (isEmpty!29751 lt!1989815))))

(assert (=> d!1557185 (= lt!1989815 e!3032378)))

(declare-fun c!825512 () Bool)

(assert (=> d!1557185 (= c!825512 (and (is-Cons!55584 (t!363204 lt!1989721)) (= (_1!32945 (h!62021 (t!363204 lt!1989721))) key!6445)))))

(assert (=> d!1557185 (noDuplicateKeys!2601 (t!363204 lt!1989721))))

(assert (=> d!1557185 (= (getPair!1103 (t!363204 lt!1989721) key!6445) lt!1989815)))

(declare-fun b!4850791 () Bool)

(declare-fun e!3032379 () Option!13696)

(assert (=> b!4850791 (= e!3032378 e!3032379)))

(declare-fun c!825511 () Bool)

(assert (=> b!4850791 (= c!825511 (is-Cons!55584 (t!363204 lt!1989721)))))

(declare-fun b!4850794 () Bool)

(assert (=> b!4850794 (= e!3032379 (getPair!1103 (t!363204 (t!363204 lt!1989721)) key!6445))))

(declare-fun b!4850795 () Bool)

(declare-fun e!3032381 () Bool)

(assert (=> b!4850795 (= e!3032381 (contains!19255 (t!363204 lt!1989721) (get!19065 lt!1989815)))))

(declare-fun b!4850796 () Bool)

(assert (=> b!4850796 (= e!3032380 e!3032381)))

(declare-fun res!2070383 () Bool)

(assert (=> b!4850796 (=> (not res!2070383) (not e!3032381))))

(assert (=> b!4850796 (= res!2070383 (isDefined!10788 lt!1989815))))

(declare-fun b!4850797 () Bool)

(assert (=> b!4850797 (= e!3032379 None!13695)))

(declare-fun b!4850798 () Bool)

(declare-fun res!2070381 () Bool)

(assert (=> b!4850798 (=> (not res!2070381) (not e!3032381))))

(assert (=> b!4850798 (= res!2070381 (= (_1!32945 (get!19065 lt!1989815)) key!6445))))

(assert (= (and d!1557185 c!825512) b!4850792))

(assert (= (and d!1557185 (not c!825512)) b!4850791))

(assert (= (and b!4850791 c!825511) b!4850794))

(assert (= (and b!4850791 (not c!825511)) b!4850797))

(assert (= (and d!1557185 res!2070380) b!4850793))

(assert (= (and d!1557185 (not res!2070382)) b!4850796))

(assert (= (and b!4850796 res!2070383) b!4850798))

(assert (= (and b!4850798 res!2070381) b!4850795))

(declare-fun m!5849358 () Bool)

(assert (=> b!4850795 m!5849358))

(assert (=> b!4850795 m!5849358))

(declare-fun m!5849360 () Bool)

(assert (=> b!4850795 m!5849360))

(declare-fun m!5849362 () Bool)

(assert (=> b!4850794 m!5849362))

(declare-fun m!5849364 () Bool)

(assert (=> b!4850796 m!5849364))

(assert (=> b!4850793 m!5849344))

(assert (=> b!4850798 m!5849358))

(declare-fun m!5849366 () Bool)

(assert (=> d!1557185 m!5849366))

(declare-fun m!5849368 () Bool)

(assert (=> d!1557185 m!5849368))

(assert (=> b!4850670 d!1557185))

(declare-fun d!1557187 () Bool)

(assert (=> d!1557187 (= (tail!9551 (toList!7873 lm!2646)) (t!363205 (toList!7873 lm!2646)))))

(assert (=> d!1557077 d!1557187))

(declare-fun d!1557189 () Bool)

(declare-fun choose!35511 (Hashable!7513 K!17387) (_ BitVec 64))

(assert (=> d!1557189 (= (hash!5636 hashF!1641 key!6445) (choose!35511 hashF!1641 key!6445))))

(declare-fun bs!1172931 () Bool)

(assert (= bs!1172931 d!1557189))

(declare-fun m!5849370 () Bool)

(assert (=> bs!1172931 m!5849370))

(assert (=> d!1557067 d!1557189))

(declare-fun d!1557191 () Bool)

(declare-fun lt!1989818 () Bool)

(declare-fun content!9903 (List!55708) (Set tuple2!59302))

(assert (=> d!1557191 (= lt!1989818 (set.member (get!19065 lt!1989784) (content!9903 lt!1989721)))))

(declare-fun e!3032387 () Bool)

(assert (=> d!1557191 (= lt!1989818 e!3032387)))

(declare-fun res!2070388 () Bool)

(assert (=> d!1557191 (=> (not res!2070388) (not e!3032387))))

(assert (=> d!1557191 (= res!2070388 (is-Cons!55584 lt!1989721))))

(assert (=> d!1557191 (= (contains!19255 lt!1989721 (get!19065 lt!1989784)) lt!1989818)))

(declare-fun b!4850803 () Bool)

(declare-fun e!3032386 () Bool)

(assert (=> b!4850803 (= e!3032387 e!3032386)))

(declare-fun res!2070389 () Bool)

(assert (=> b!4850803 (=> res!2070389 e!3032386)))

(assert (=> b!4850803 (= res!2070389 (= (h!62021 lt!1989721) (get!19065 lt!1989784)))))

(declare-fun b!4850804 () Bool)

(assert (=> b!4850804 (= e!3032386 (contains!19255 (t!363204 lt!1989721) (get!19065 lt!1989784)))))

(assert (= (and d!1557191 res!2070388) b!4850803))

(assert (= (and b!4850803 (not res!2070389)) b!4850804))

(declare-fun m!5849372 () Bool)

(assert (=> d!1557191 m!5849372))

(assert (=> d!1557191 m!5849222))

(declare-fun m!5849374 () Bool)

(assert (=> d!1557191 m!5849374))

(assert (=> b!4850804 m!5849222))

(declare-fun m!5849376 () Bool)

(assert (=> b!4850804 m!5849376))

(assert (=> b!4850671 d!1557191))

(declare-fun d!1557193 () Bool)

(assert (=> d!1557193 (= (get!19065 lt!1989784) (v!49483 lt!1989784))))

(assert (=> b!4850671 d!1557193))

(declare-fun d!1557195 () Bool)

(declare-fun res!2070390 () Bool)

(declare-fun e!3032388 () Bool)

(assert (=> d!1557195 (=> res!2070390 e!3032388)))

(assert (=> d!1557195 (= res!2070390 (and (is-Cons!55584 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))))) (= (_1!32945 (h!62021 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646))))))) key!6445)))))

(assert (=> d!1557195 (= (containsKey!4707 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646))))) key!6445) e!3032388)))

(declare-fun b!4850805 () Bool)

(declare-fun e!3032389 () Bool)

(assert (=> b!4850805 (= e!3032388 e!3032389)))

(declare-fun res!2070391 () Bool)

(assert (=> b!4850805 (=> (not res!2070391) (not e!3032389))))

(assert (=> b!4850805 (= res!2070391 (is-Cons!55584 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))))))))

(declare-fun b!4850806 () Bool)

(assert (=> b!4850806 (= e!3032389 (containsKey!4707 (t!363204 (t!363204 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))))) key!6445))))

(assert (= (and d!1557195 (not res!2070390)) b!4850805))

(assert (= (and b!4850805 res!2070391) b!4850806))

(declare-fun m!5849378 () Bool)

(assert (=> b!4850806 m!5849378))

(assert (=> b!4850625 d!1557195))

(declare-fun d!1557197 () Bool)

(assert (=> d!1557197 (= (isEmpty!29751 lt!1989784) (not (is-Some!13695 lt!1989784)))))

(assert (=> d!1557103 d!1557197))

(declare-fun d!1557199 () Bool)

(declare-fun res!2070392 () Bool)

(declare-fun e!3032390 () Bool)

(assert (=> d!1557199 (=> res!2070392 e!3032390)))

(assert (=> d!1557199 (= res!2070392 (not (is-Cons!55584 lt!1989721)))))

(assert (=> d!1557199 (= (noDuplicateKeys!2601 lt!1989721) e!3032390)))

(declare-fun b!4850807 () Bool)

(declare-fun e!3032391 () Bool)

(assert (=> b!4850807 (= e!3032390 e!3032391)))

(declare-fun res!2070393 () Bool)

(assert (=> b!4850807 (=> (not res!2070393) (not e!3032391))))

(assert (=> b!4850807 (= res!2070393 (not (containsKey!4707 (t!363204 lt!1989721) (_1!32945 (h!62021 lt!1989721)))))))

(declare-fun b!4850808 () Bool)

(assert (=> b!4850808 (= e!3032391 (noDuplicateKeys!2601 (t!363204 lt!1989721)))))

(assert (= (and d!1557199 (not res!2070392)) b!4850807))

(assert (= (and b!4850807 res!2070393) b!4850808))

(declare-fun m!5849380 () Bool)

(assert (=> b!4850807 m!5849380))

(assert (=> b!4850808 m!5849368))

(assert (=> d!1557103 d!1557199))

(declare-fun d!1557201 () Bool)

(assert (=> d!1557201 (= (isDefined!10788 lt!1989784) (not (isEmpty!29751 lt!1989784)))))

(declare-fun bs!1172932 () Bool)

(assert (= bs!1172932 d!1557201))

(assert (=> bs!1172932 m!5849232))

(assert (=> b!4850672 d!1557201))

(assert (=> d!1557091 d!1557085))

(assert (=> d!1557091 d!1557087))

(declare-fun d!1557203 () Bool)

(assert (=> d!1557203 (not (containsKey!4707 (apply!13456 lm!2646 (_1!32946 (h!62022 (toList!7873 lm!2646)))) key!6445))))

(assert (=> d!1557203 true))

(declare-fun _$39!520 () Unit!145738)

(assert (=> d!1557203 (= (choose!35504 lm!2646 key!6445 (_1!32946 (h!62022 (toList!7873 lm!2646))) hashF!1641) _$39!520)))

(declare-fun bs!1172933 () Bool)

(assert (= bs!1172933 d!1557203))

(assert (=> bs!1172933 m!5849104))

(assert (=> bs!1172933 m!5849104))

(assert (=> bs!1172933 m!5849106))

(assert (=> d!1557091 d!1557203))

(declare-fun d!1557205 () Bool)

(declare-fun res!2070394 () Bool)

(declare-fun e!3032392 () Bool)

(assert (=> d!1557205 (=> res!2070394 e!3032392)))

(assert (=> d!1557205 (= res!2070394 (is-Nil!55585 (toList!7873 lm!2646)))))

(assert (=> d!1557205 (= (forall!12966 (toList!7873 lm!2646) lambda!242734) e!3032392)))

(declare-fun b!4850809 () Bool)

(declare-fun e!3032393 () Bool)

(assert (=> b!4850809 (= e!3032392 e!3032393)))

(declare-fun res!2070395 () Bool)

(assert (=> b!4850809 (=> (not res!2070395) (not e!3032393))))

(assert (=> b!4850809 (= res!2070395 (dynLambda!22367 lambda!242734 (h!62022 (toList!7873 lm!2646))))))

(declare-fun b!4850810 () Bool)

(assert (=> b!4850810 (= e!3032393 (forall!12966 (t!363205 (toList!7873 lm!2646)) lambda!242734))))

(assert (= (and d!1557205 (not res!2070394)) b!4850809))

(assert (= (and b!4850809 res!2070395) b!4850810))

(declare-fun b_lambda!192977 () Bool)

(assert (=> (not b_lambda!192977) (not b!4850809)))

(declare-fun m!5849382 () Bool)

(assert (=> b!4850809 m!5849382))

(declare-fun m!5849384 () Bool)

(assert (=> b!4850810 m!5849384))

(assert (=> d!1557091 d!1557205))

(assert (=> b!4850674 d!1557193))

(declare-fun d!1557207 () Bool)

(declare-fun res!2070396 () Bool)

(declare-fun e!3032394 () Bool)

(assert (=> d!1557207 (=> res!2070396 e!3032394)))

(assert (=> d!1557207 (= res!2070396 (not (is-Cons!55584 (_2!32946 lt!1989724))))))

(assert (=> d!1557207 (= (noDuplicateKeys!2601 (_2!32946 lt!1989724)) e!3032394)))

(declare-fun b!4850811 () Bool)

(declare-fun e!3032395 () Bool)

(assert (=> b!4850811 (= e!3032394 e!3032395)))

(declare-fun res!2070397 () Bool)

(assert (=> b!4850811 (=> (not res!2070397) (not e!3032395))))

(assert (=> b!4850811 (= res!2070397 (not (containsKey!4707 (t!363204 (_2!32946 lt!1989724)) (_1!32945 (h!62021 (_2!32946 lt!1989724))))))))

(declare-fun b!4850812 () Bool)

(assert (=> b!4850812 (= e!3032395 (noDuplicateKeys!2601 (t!363204 (_2!32946 lt!1989724))))))

(assert (= (and d!1557207 (not res!2070396)) b!4850811))

(assert (= (and b!4850811 res!2070397) b!4850812))

(declare-fun m!5849386 () Bool)

(assert (=> b!4850811 m!5849386))

(declare-fun m!5849388 () Bool)

(assert (=> b!4850812 m!5849388))

(assert (=> bs!1172911 d!1557207))

(declare-fun d!1557209 () Bool)

(declare-fun res!2070398 () Bool)

(declare-fun e!3032396 () Bool)

(assert (=> d!1557209 (=> res!2070398 e!3032396)))

(assert (=> d!1557209 (= res!2070398 (and (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lt!1989727)))) (= (_1!32945 (h!62021 (_2!32946 (h!62022 (toList!7873 lt!1989727))))) key!6445)))))

(assert (=> d!1557209 (= (containsKey!4707 (_2!32946 (h!62022 (toList!7873 lt!1989727))) key!6445) e!3032396)))

(declare-fun b!4850813 () Bool)

(declare-fun e!3032397 () Bool)

(assert (=> b!4850813 (= e!3032396 e!3032397)))

(declare-fun res!2070399 () Bool)

(assert (=> b!4850813 (=> (not res!2070399) (not e!3032397))))

(assert (=> b!4850813 (= res!2070399 (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lt!1989727)))))))

(declare-fun b!4850814 () Bool)

(assert (=> b!4850814 (= e!3032397 (containsKey!4707 (t!363204 (_2!32946 (h!62022 (toList!7873 lt!1989727)))) key!6445))))

(assert (= (and d!1557209 (not res!2070398)) b!4850813))

(assert (= (and b!4850813 res!2070399) b!4850814))

(declare-fun m!5849390 () Bool)

(assert (=> b!4850814 m!5849390))

(assert (=> b!4850608 d!1557209))

(declare-fun d!1557211 () Bool)

(assert (=> d!1557211 (= (get!19064 (getValueByKey!2741 (toList!7873 lm!2646) (_1!32946 (h!62022 (toList!7873 lm!2646))))) (v!49486 (getValueByKey!2741 (toList!7873 lm!2646) (_1!32946 (h!62022 (toList!7873 lm!2646))))))))

(assert (=> d!1557087 d!1557211))

(declare-fun b!4850817 () Bool)

(declare-fun e!3032399 () Option!13698)

(assert (=> b!4850817 (= e!3032399 (getValueByKey!2741 (t!363205 (toList!7873 lm!2646)) (_1!32946 (h!62022 (toList!7873 lm!2646)))))))

(declare-fun d!1557213 () Bool)

(declare-fun c!825513 () Bool)

(assert (=> d!1557213 (= c!825513 (and (is-Cons!55585 (toList!7873 lm!2646)) (= (_1!32946 (h!62022 (toList!7873 lm!2646))) (_1!32946 (h!62022 (toList!7873 lm!2646))))))))

(declare-fun e!3032398 () Option!13698)

(assert (=> d!1557213 (= (getValueByKey!2741 (toList!7873 lm!2646) (_1!32946 (h!62022 (toList!7873 lm!2646)))) e!3032398)))

(declare-fun b!4850818 () Bool)

(assert (=> b!4850818 (= e!3032399 None!13697)))

(declare-fun b!4850815 () Bool)

(assert (=> b!4850815 (= e!3032398 (Some!13697 (_2!32946 (h!62022 (toList!7873 lm!2646)))))))

(declare-fun b!4850816 () Bool)

(assert (=> b!4850816 (= e!3032398 e!3032399)))

(declare-fun c!825514 () Bool)

(assert (=> b!4850816 (= c!825514 (and (is-Cons!55585 (toList!7873 lm!2646)) (not (= (_1!32946 (h!62022 (toList!7873 lm!2646))) (_1!32946 (h!62022 (toList!7873 lm!2646)))))))))

(assert (= (and d!1557213 c!825513) b!4850815))

(assert (= (and d!1557213 (not c!825513)) b!4850816))

(assert (= (and b!4850816 c!825514) b!4850817))

(assert (= (and b!4850816 (not c!825514)) b!4850818))

(declare-fun m!5849392 () Bool)

(assert (=> b!4850817 m!5849392))

(assert (=> d!1557087 d!1557213))

(declare-fun d!1557215 () Bool)

(declare-fun c!825517 () Bool)

(assert (=> d!1557215 (= c!825517 (is-Nil!55585 (toList!7873 lm!2646)))))

(declare-fun e!3032402 () (Set tuple2!59304))

(assert (=> d!1557215 (= (content!9901 (toList!7873 lm!2646)) e!3032402)))

(declare-fun b!4850823 () Bool)

(assert (=> b!4850823 (= e!3032402 (as set.empty (Set tuple2!59304)))))

(declare-fun b!4850824 () Bool)

(assert (=> b!4850824 (= e!3032402 (set.union (set.insert (h!62022 (toList!7873 lm!2646)) (as set.empty (Set tuple2!59304))) (content!9901 (t!363205 (toList!7873 lm!2646)))))))

(assert (= (and d!1557215 c!825517) b!4850823))

(assert (= (and d!1557215 (not c!825517)) b!4850824))

(declare-fun m!5849394 () Bool)

(assert (=> b!4850824 m!5849394))

(assert (=> b!4850824 m!5849322))

(assert (=> d!1557099 d!1557215))

(declare-fun d!1557217 () Bool)

(assert (=> d!1557217 (isDefined!10790 (getValueByKey!2741 (toList!7873 lm!2646) lt!1989722))))

(declare-fun lt!1989821 () Unit!145738)

(declare-fun choose!35512 (List!55709 (_ BitVec 64)) Unit!145738)

(assert (=> d!1557217 (= lt!1989821 (choose!35512 (toList!7873 lm!2646) lt!1989722))))

(declare-fun e!3032405 () Bool)

(assert (=> d!1557217 e!3032405))

(declare-fun res!2070402 () Bool)

(assert (=> d!1557217 (=> (not res!2070402) (not e!3032405))))

(assert (=> d!1557217 (= res!2070402 (isStrictlySorted!1090 (toList!7873 lm!2646)))))

(assert (=> d!1557217 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2513 (toList!7873 lm!2646) lt!1989722) lt!1989821)))

(declare-fun b!4850827 () Bool)

(assert (=> b!4850827 (= e!3032405 (containsKey!4709 (toList!7873 lm!2646) lt!1989722))))

(assert (= (and d!1557217 res!2070402) b!4850827))

(assert (=> d!1557217 m!5849164))

(assert (=> d!1557217 m!5849164))

(assert (=> d!1557217 m!5849166))

(declare-fun m!5849396 () Bool)

(assert (=> d!1557217 m!5849396))

(assert (=> d!1557217 m!5849186))

(assert (=> b!4850827 m!5849160))

(assert (=> b!4850596 d!1557217))

(assert (=> b!4850596 d!1557149))

(assert (=> b!4850596 d!1557151))

(declare-fun d!1557219 () Bool)

(declare-fun res!2070403 () Bool)

(declare-fun e!3032406 () Bool)

(assert (=> d!1557219 (=> res!2070403 e!3032406)))

(assert (=> d!1557219 (= res!2070403 (is-Nil!55585 (t!363205 (toList!7873 lm!2646))))))

(assert (=> d!1557219 (= (forall!12966 (t!363205 (toList!7873 lm!2646)) lambda!242723) e!3032406)))

(declare-fun b!4850828 () Bool)

(declare-fun e!3032407 () Bool)

(assert (=> b!4850828 (= e!3032406 e!3032407)))

(declare-fun res!2070404 () Bool)

(assert (=> b!4850828 (=> (not res!2070404) (not e!3032407))))

(assert (=> b!4850828 (= res!2070404 (dynLambda!22367 lambda!242723 (h!62022 (t!363205 (toList!7873 lm!2646)))))))

(declare-fun b!4850829 () Bool)

(assert (=> b!4850829 (= e!3032407 (forall!12966 (t!363205 (t!363205 (toList!7873 lm!2646))) lambda!242723))))

(assert (= (and d!1557219 (not res!2070403)) b!4850828))

(assert (= (and b!4850828 res!2070404) b!4850829))

(declare-fun b_lambda!192979 () Bool)

(assert (=> (not b_lambda!192979) (not b!4850828)))

(declare-fun m!5849398 () Bool)

(assert (=> b!4850828 m!5849398))

(declare-fun m!5849400 () Bool)

(assert (=> b!4850829 m!5849400))

(assert (=> b!4850616 d!1557219))

(declare-fun b!4850834 () Bool)

(declare-fun e!3032410 () Bool)

(declare-fun tp!1364835 () Bool)

(declare-fun tp_is_empty!35241 () Bool)

(assert (=> b!4850834 (= e!3032410 (and tp_is_empty!35237 tp_is_empty!35241 tp!1364835))))

(assert (=> b!4850690 (= tp!1364825 e!3032410)))

(assert (= (and b!4850690 (is-Cons!55584 (_2!32946 (h!62022 (toList!7873 lm!2646))))) b!4850834))

(declare-fun b!4850835 () Bool)

(declare-fun e!3032411 () Bool)

(declare-fun tp!1364836 () Bool)

(declare-fun tp!1364837 () Bool)

(assert (=> b!4850835 (= e!3032411 (and tp!1364836 tp!1364837))))

(assert (=> b!4850690 (= tp!1364826 e!3032411)))

(assert (= (and b!4850690 (is-Cons!55585 (t!363205 (toList!7873 lm!2646)))) b!4850835))

(declare-fun b_lambda!192981 () Bool)

(assert (= b_lambda!192975 (or start!506050 b_lambda!192981)))

(assert (=> d!1557173 d!1557115))

(declare-fun b_lambda!192983 () Bool)

(assert (= b_lambda!192977 (or d!1557091 b_lambda!192983)))

(declare-fun bs!1172934 () Bool)

(declare-fun d!1557221 () Bool)

(assert (= bs!1172934 (and d!1557221 d!1557091)))

(assert (=> bs!1172934 (= (dynLambda!22367 lambda!242734 (h!62022 (toList!7873 lm!2646))) (noDuplicateKeys!2601 (_2!32946 (h!62022 (toList!7873 lm!2646)))))))

(assert (=> bs!1172934 m!5849258))

(assert (=> b!4850809 d!1557221))

(declare-fun b_lambda!192985 () Bool)

(assert (= b_lambda!192971 (or d!1557073 b_lambda!192985)))

(declare-fun bs!1172935 () Bool)

(declare-fun d!1557223 () Bool)

(assert (= bs!1172935 (and d!1557223 d!1557073)))

(assert (=> bs!1172935 (= (dynLambda!22367 lambda!242731 (h!62022 (toList!7873 lt!1989727))) (noDuplicateKeys!2601 (_2!32946 (h!62022 (toList!7873 lt!1989727)))))))

(declare-fun m!5849402 () Bool)

(assert (=> bs!1172935 m!5849402))

(assert (=> b!4850767 d!1557223))

(declare-fun b_lambda!192987 () Bool)

(assert (= b_lambda!192979 (or start!506050 b_lambda!192987)))

(declare-fun bs!1172936 () Bool)

(declare-fun d!1557225 () Bool)

(assert (= bs!1172936 (and d!1557225 start!506050)))

(assert (=> bs!1172936 (= (dynLambda!22367 lambda!242723 (h!62022 (t!363205 (toList!7873 lm!2646)))) (noDuplicateKeys!2601 (_2!32946 (h!62022 (t!363205 (toList!7873 lm!2646))))))))

(declare-fun m!5849404 () Bool)

(assert (=> bs!1172936 m!5849404))

(assert (=> b!4850828 d!1557225))

(declare-fun b_lambda!192989 () Bool)

(assert (= b_lambda!192973 (or d!1557109 b_lambda!192989)))

(declare-fun bs!1172937 () Bool)

(declare-fun d!1557227 () Bool)

(assert (= bs!1172937 (and d!1557227 d!1557109)))

(declare-fun allKeysSameHash!2039 (List!55708 (_ BitVec 64) Hashable!7513) Bool)

(assert (=> bs!1172937 (= (dynLambda!22367 lambda!242737 (h!62022 (toList!7873 lm!2646))) (allKeysSameHash!2039 (_2!32946 (h!62022 (toList!7873 lm!2646))) (_1!32946 (h!62022 (toList!7873 lm!2646))) hashF!1641))))

(declare-fun m!5849406 () Bool)

(assert (=> bs!1172937 m!5849406))

(assert (=> b!4850769 d!1557227))

(push 1)

(assert (not b!4850807))

(assert (not d!1557165))

(assert (not b_lambda!192989))

(assert (not d!1557155))

(assert (not b_lambda!192983))

(assert (not b!4850795))

(assert (not d!1557203))

(assert (not d!1557201))

(assert (not d!1557149))

(assert (not b!4850788))

(assert (not b_lambda!192981))

(assert (not d!1557217))

(assert (not b!4850768))

(assert (not bs!1172937))

(assert (not b!4850786))

(assert (not b!4850814))

(assert (not b!4850776))

(assert (not b!4850759))

(assert (not b!4850829))

(assert (not bs!1172934))

(assert (not b!4850766))

(assert (not b!4850784))

(assert (not b!4850770))

(assert (not b_lambda!192987))

(assert (not b!4850752))

(assert (not b_lambda!192985))

(assert (not b!4850810))

(assert (not d!1557179))

(assert (not b!4850817))

(assert (not b!4850763))

(assert (not b!4850804))

(assert (not b!4850796))

(assert (not b!4850834))

(assert (not b_lambda!192959))

(assert tp_is_empty!35241)

(assert (not b!4850798))

(assert (not b!4850812))

(assert (not d!1557189))

(assert (not b!4850808))

(assert (not b!4850793))

(assert (not b!4850778))

(assert (not b!4850811))

(assert (not bs!1172936))

(assert (not b!4850824))

(assert (not b!4850764))

(assert (not d!1557181))

(assert (not d!1557191))

(assert (not bs!1172935))

(assert (not b!4850806))

(assert (not b!4850783))

(assert (not b_lambda!192961))

(assert tp_is_empty!35237)

(assert (not b!4850794))

(assert (not b!4850761))

(assert (not b!4850827))

(assert (not b!4850835))

(assert (not d!1557185))

(assert (not b!4850790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

