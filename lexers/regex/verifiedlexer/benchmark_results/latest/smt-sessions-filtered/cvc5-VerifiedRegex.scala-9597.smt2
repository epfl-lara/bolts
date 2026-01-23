; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504754 () Bool)

(assert start!504754)

(declare-fun b!4846090 () Bool)

(declare-fun e!3028926 () Bool)

(declare-datatypes ((K!17272 0))(
  ( (K!17273 (val!22123 Int)) )
))
(declare-datatypes ((V!17518 0))(
  ( (V!17519 (val!22124 Int)) )
))
(declare-datatypes ((tuple2!59118 0))(
  ( (tuple2!59119 (_1!32853 K!17272) (_2!32853 V!17518)) )
))
(declare-datatypes ((List!55616 0))(
  ( (Nil!55492) (Cons!55492 (h!61929 tuple2!59118) (t!363112 List!55616)) )
))
(declare-datatypes ((tuple2!59120 0))(
  ( (tuple2!59121 (_1!32854 (_ BitVec 64)) (_2!32854 List!55616)) )
))
(declare-datatypes ((List!55617 0))(
  ( (Nil!55493) (Cons!55493 (h!61930 tuple2!59120) (t!363113 List!55617)) )
))
(declare-datatypes ((ListLongMap!6397 0))(
  ( (ListLongMap!6398 (toList!7827 List!55617)) )
))
(declare-fun lm!2837 () ListLongMap!6397)

(declare-fun key!6928 () K!17272)

(declare-fun containsKeyBiggerList!765 (List!55617 K!17272) Bool)

(declare-fun tail!9521 (List!55617) List!55617)

(assert (=> b!4846090 (= e!3028926 (not (containsKeyBiggerList!765 (tail!9521 (toList!7827 lm!2837)) key!6928)))))

(declare-fun b!4846091 () Bool)

(declare-fun res!2067234 () Bool)

(assert (=> b!4846091 (=> (not res!2067234) (not e!3028926))))

(declare-datatypes ((Hashable!7467 0))(
  ( (HashableExt!7466 (__x!33742 Int)) )
))
(declare-fun hashF!1793 () Hashable!7467)

(declare-fun allKeysSameHashInMap!2783 (ListLongMap!6397 Hashable!7467) Bool)

(assert (=> b!4846091 (= res!2067234 (allKeysSameHashInMap!2783 lm!2837 hashF!1793))))

(declare-fun b!4846092 () Bool)

(declare-fun res!2067236 () Bool)

(assert (=> b!4846092 (=> (not res!2067236) (not e!3028926))))

(declare-fun containsKey!4653 (List!55616 K!17272) Bool)

(declare-fun head!10407 (List!55617) tuple2!59120)

(assert (=> b!4846092 (= res!2067236 (not (containsKey!4653 (_2!32854 (head!10407 (toList!7827 lm!2837))) key!6928)))))

(declare-fun res!2067237 () Bool)

(assert (=> start!504754 (=> (not res!2067237) (not e!3028926))))

(declare-fun lambda!242279 () Int)

(declare-fun forall!12920 (List!55617 Int) Bool)

(assert (=> start!504754 (= res!2067237 (forall!12920 (toList!7827 lm!2837) lambda!242279))))

(assert (=> start!504754 e!3028926))

(declare-fun e!3028925 () Bool)

(declare-fun inv!71159 (ListLongMap!6397) Bool)

(assert (=> start!504754 (and (inv!71159 lm!2837) e!3028925)))

(assert (=> start!504754 true))

(declare-fun tp_is_empty!35109 () Bool)

(assert (=> start!504754 tp_is_empty!35109))

(declare-fun b!4846093 () Bool)

(declare-fun tp!1364433 () Bool)

(assert (=> b!4846093 (= e!3028925 tp!1364433)))

(declare-fun b!4846094 () Bool)

(declare-fun res!2067235 () Bool)

(assert (=> b!4846094 (=> (not res!2067235) (not e!3028926))))

(assert (=> b!4846094 (= res!2067235 (containsKeyBiggerList!765 (toList!7827 lm!2837) key!6928))))

(assert (= (and start!504754 res!2067237) b!4846091))

(assert (= (and b!4846091 res!2067234) b!4846094))

(assert (= (and b!4846094 res!2067235) b!4846092))

(assert (= (and b!4846092 res!2067236) b!4846090))

(assert (= start!504754 b!4846093))

(declare-fun m!5844020 () Bool)

(assert (=> start!504754 m!5844020))

(declare-fun m!5844022 () Bool)

(assert (=> start!504754 m!5844022))

(declare-fun m!5844024 () Bool)

(assert (=> b!4846094 m!5844024))

(declare-fun m!5844026 () Bool)

(assert (=> b!4846091 m!5844026))

(declare-fun m!5844028 () Bool)

(assert (=> b!4846090 m!5844028))

(assert (=> b!4846090 m!5844028))

(declare-fun m!5844030 () Bool)

(assert (=> b!4846090 m!5844030))

(declare-fun m!5844032 () Bool)

(assert (=> b!4846092 m!5844032))

(declare-fun m!5844034 () Bool)

(assert (=> b!4846092 m!5844034))

(push 1)

(assert (not b!4846093))

(assert (not b!4846090))

(assert (not b!4846092))

(assert (not start!504754))

(assert tp_is_empty!35109)

(assert (not b!4846094))

(assert (not b!4846091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554644 () Bool)

(declare-fun res!2067258 () Bool)

(declare-fun e!3028940 () Bool)

(assert (=> d!1554644 (=> res!2067258 e!3028940)))

(declare-fun e!3028941 () Bool)

(assert (=> d!1554644 (= res!2067258 e!3028941)))

(declare-fun res!2067257 () Bool)

(assert (=> d!1554644 (=> (not res!2067257) (not e!3028941))))

(assert (=> d!1554644 (= res!2067257 (is-Cons!55493 (tail!9521 (toList!7827 lm!2837))))))

(assert (=> d!1554644 (= (containsKeyBiggerList!765 (tail!9521 (toList!7827 lm!2837)) key!6928) e!3028940)))

(declare-fun b!4846116 () Bool)

(assert (=> b!4846116 (= e!3028941 (containsKey!4653 (_2!32854 (h!61930 (tail!9521 (toList!7827 lm!2837)))) key!6928))))

(declare-fun b!4846117 () Bool)

(declare-fun e!3028939 () Bool)

(assert (=> b!4846117 (= e!3028940 e!3028939)))

(declare-fun res!2067256 () Bool)

(assert (=> b!4846117 (=> (not res!2067256) (not e!3028939))))

(assert (=> b!4846117 (= res!2067256 (is-Cons!55493 (tail!9521 (toList!7827 lm!2837))))))

(declare-fun b!4846118 () Bool)

(assert (=> b!4846118 (= e!3028939 (containsKeyBiggerList!765 (t!363113 (tail!9521 (toList!7827 lm!2837))) key!6928))))

(assert (= (and d!1554644 res!2067257) b!4846116))

(assert (= (and d!1554644 (not res!2067258)) b!4846117))

(assert (= (and b!4846117 res!2067256) b!4846118))

(declare-fun m!5844052 () Bool)

(assert (=> b!4846116 m!5844052))

(declare-fun m!5844054 () Bool)

(assert (=> b!4846118 m!5844054))

(assert (=> b!4846090 d!1554644))

(declare-fun d!1554646 () Bool)

(assert (=> d!1554646 (= (tail!9521 (toList!7827 lm!2837)) (t!363113 (toList!7827 lm!2837)))))

(assert (=> b!4846090 d!1554646))

(declare-fun bs!1172307 () Bool)

(declare-fun d!1554648 () Bool)

(assert (= bs!1172307 (and d!1554648 start!504754)))

(declare-fun lambda!242285 () Int)

(assert (=> bs!1172307 (not (= lambda!242285 lambda!242279))))

(assert (=> d!1554648 true))

(assert (=> d!1554648 (= (allKeysSameHashInMap!2783 lm!2837 hashF!1793) (forall!12920 (toList!7827 lm!2837) lambda!242285))))

(declare-fun bs!1172308 () Bool)

(assert (= bs!1172308 d!1554648))

(declare-fun m!5844056 () Bool)

(assert (=> bs!1172308 m!5844056))

(assert (=> b!4846091 d!1554648))

(declare-fun d!1554650 () Bool)

(declare-fun res!2067263 () Bool)

(declare-fun e!3028946 () Bool)

(assert (=> d!1554650 (=> res!2067263 e!3028946)))

(assert (=> d!1554650 (= res!2067263 (is-Nil!55493 (toList!7827 lm!2837)))))

(assert (=> d!1554650 (= (forall!12920 (toList!7827 lm!2837) lambda!242279) e!3028946)))

(declare-fun b!4846125 () Bool)

(declare-fun e!3028947 () Bool)

(assert (=> b!4846125 (= e!3028946 e!3028947)))

(declare-fun res!2067264 () Bool)

(assert (=> b!4846125 (=> (not res!2067264) (not e!3028947))))

(declare-fun dynLambda!22343 (Int tuple2!59120) Bool)

(assert (=> b!4846125 (= res!2067264 (dynLambda!22343 lambda!242279 (h!61930 (toList!7827 lm!2837))))))

(declare-fun b!4846126 () Bool)

(assert (=> b!4846126 (= e!3028947 (forall!12920 (t!363113 (toList!7827 lm!2837)) lambda!242279))))

(assert (= (and d!1554650 (not res!2067263)) b!4846125))

(assert (= (and b!4846125 res!2067264) b!4846126))

(declare-fun b_lambda!192355 () Bool)

(assert (=> (not b_lambda!192355) (not b!4846125)))

(declare-fun m!5844058 () Bool)

(assert (=> b!4846125 m!5844058))

(declare-fun m!5844060 () Bool)

(assert (=> b!4846126 m!5844060))

(assert (=> start!504754 d!1554650))

(declare-fun d!1554652 () Bool)

(declare-fun isStrictlySorted!1066 (List!55617) Bool)

(assert (=> d!1554652 (= (inv!71159 lm!2837) (isStrictlySorted!1066 (toList!7827 lm!2837)))))

(declare-fun bs!1172309 () Bool)

(assert (= bs!1172309 d!1554652))

(declare-fun m!5844062 () Bool)

(assert (=> bs!1172309 m!5844062))

(assert (=> start!504754 d!1554652))

(declare-fun d!1554656 () Bool)

(declare-fun res!2067269 () Bool)

(declare-fun e!3028952 () Bool)

(assert (=> d!1554656 (=> res!2067269 e!3028952)))

(assert (=> d!1554656 (= res!2067269 (and (is-Cons!55492 (_2!32854 (head!10407 (toList!7827 lm!2837)))) (= (_1!32853 (h!61929 (_2!32854 (head!10407 (toList!7827 lm!2837))))) key!6928)))))

(assert (=> d!1554656 (= (containsKey!4653 (_2!32854 (head!10407 (toList!7827 lm!2837))) key!6928) e!3028952)))

(declare-fun b!4846131 () Bool)

(declare-fun e!3028953 () Bool)

(assert (=> b!4846131 (= e!3028952 e!3028953)))

(declare-fun res!2067270 () Bool)

(assert (=> b!4846131 (=> (not res!2067270) (not e!3028953))))

(assert (=> b!4846131 (= res!2067270 (is-Cons!55492 (_2!32854 (head!10407 (toList!7827 lm!2837)))))))

(declare-fun b!4846132 () Bool)

(assert (=> b!4846132 (= e!3028953 (containsKey!4653 (t!363112 (_2!32854 (head!10407 (toList!7827 lm!2837)))) key!6928))))

(assert (= (and d!1554656 (not res!2067269)) b!4846131))

(assert (= (and b!4846131 res!2067270) b!4846132))

(declare-fun m!5844064 () Bool)

(assert (=> b!4846132 m!5844064))

(assert (=> b!4846092 d!1554656))

(declare-fun d!1554658 () Bool)

(assert (=> d!1554658 (= (head!10407 (toList!7827 lm!2837)) (h!61930 (toList!7827 lm!2837)))))

(assert (=> b!4846092 d!1554658))

(declare-fun d!1554660 () Bool)

(declare-fun res!2067277 () Bool)

(declare-fun e!3028959 () Bool)

(assert (=> d!1554660 (=> res!2067277 e!3028959)))

(declare-fun e!3028960 () Bool)

(assert (=> d!1554660 (= res!2067277 e!3028960)))

(declare-fun res!2067276 () Bool)

(assert (=> d!1554660 (=> (not res!2067276) (not e!3028960))))

(assert (=> d!1554660 (= res!2067276 (is-Cons!55493 (toList!7827 lm!2837)))))

(assert (=> d!1554660 (= (containsKeyBiggerList!765 (toList!7827 lm!2837) key!6928) e!3028959)))

(declare-fun b!4846137 () Bool)

(assert (=> b!4846137 (= e!3028960 (containsKey!4653 (_2!32854 (h!61930 (toList!7827 lm!2837))) key!6928))))

(declare-fun b!4846138 () Bool)

(declare-fun e!3028958 () Bool)

(assert (=> b!4846138 (= e!3028959 e!3028958)))

(declare-fun res!2067275 () Bool)

(assert (=> b!4846138 (=> (not res!2067275) (not e!3028958))))

(assert (=> b!4846138 (= res!2067275 (is-Cons!55493 (toList!7827 lm!2837)))))

(declare-fun b!4846139 () Bool)

(assert (=> b!4846139 (= e!3028958 (containsKeyBiggerList!765 (t!363113 (toList!7827 lm!2837)) key!6928))))

(assert (= (and d!1554660 res!2067276) b!4846137))

(assert (= (and d!1554660 (not res!2067277)) b!4846138))

(assert (= (and b!4846138 res!2067275) b!4846139))

(declare-fun m!5844066 () Bool)

(assert (=> b!4846137 m!5844066))

(declare-fun m!5844068 () Bool)

(assert (=> b!4846139 m!5844068))

(assert (=> b!4846094 d!1554660))

(declare-fun b!4846146 () Bool)

(declare-fun e!3028965 () Bool)

(declare-fun tp!1364441 () Bool)

(declare-fun tp!1364442 () Bool)

(assert (=> b!4846146 (= e!3028965 (and tp!1364441 tp!1364442))))

(assert (=> b!4846093 (= tp!1364433 e!3028965)))

(assert (= (and b!4846093 (is-Cons!55493 (toList!7827 lm!2837))) b!4846146))

(declare-fun b_lambda!192357 () Bool)

(assert (= b_lambda!192355 (or start!504754 b_lambda!192357)))

(declare-fun bs!1172310 () Bool)

(declare-fun d!1554662 () Bool)

(assert (= bs!1172310 (and d!1554662 start!504754)))

(declare-fun noDuplicateKeys!2575 (List!55616) Bool)

(assert (=> bs!1172310 (= (dynLambda!22343 lambda!242279 (h!61930 (toList!7827 lm!2837))) (noDuplicateKeys!2575 (_2!32854 (h!61930 (toList!7827 lm!2837)))))))

(declare-fun m!5844070 () Bool)

(assert (=> bs!1172310 m!5844070))

(assert (=> b!4846125 d!1554662))

(push 1)

(assert (not b!4846116))

(assert (not b!4846137))

(assert (not d!1554652))

(assert (not b!4846146))

(assert tp_is_empty!35109)

(assert (not bs!1172310))

(assert (not b!4846139))

(assert (not b!4846118))

(assert (not d!1554648))

(assert (not b!4846126))

(assert (not b_lambda!192357))

(assert (not b!4846132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

