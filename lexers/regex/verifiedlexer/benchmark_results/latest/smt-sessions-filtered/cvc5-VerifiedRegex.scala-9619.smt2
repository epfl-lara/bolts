; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505922 () Bool)

(assert start!505922)

(declare-fun b!4850082 () Bool)

(declare-fun res!2069920 () Bool)

(declare-fun e!3031841 () Bool)

(assert (=> b!4850082 (=> (not res!2069920) (not e!3031841))))

(declare-datatypes ((K!17382 0))(
  ( (K!17383 (val!22211 Int)) )
))
(declare-datatypes ((V!17628 0))(
  ( (V!17629 (val!22212 Int)) )
))
(declare-datatypes ((tuple2!59294 0))(
  ( (tuple2!59295 (_1!32941 K!17382) (_2!32941 V!17628)) )
))
(declare-datatypes ((List!55704 0))(
  ( (Nil!55580) (Cons!55580 (h!62017 tuple2!59294) (t!363200 List!55704)) )
))
(declare-datatypes ((tuple2!59296 0))(
  ( (tuple2!59297 (_1!32942 (_ BitVec 64)) (_2!32942 List!55704)) )
))
(declare-datatypes ((List!55705 0))(
  ( (Nil!55581) (Cons!55581 (h!62018 tuple2!59296) (t!363201 List!55705)) )
))
(declare-datatypes ((ListLongMap!6485 0))(
  ( (ListLongMap!6486 (toList!7871 List!55705)) )
))
(declare-fun lm!2646 () ListLongMap!6485)

(declare-datatypes ((Hashable!7511 0))(
  ( (HashableExt!7510 (__x!33786 Int)) )
))
(declare-fun hashF!1641 () Hashable!7511)

(declare-fun allKeysSameHashInMap!2827 (ListLongMap!6485 Hashable!7511) Bool)

(assert (=> b!4850082 (= res!2069920 (allKeysSameHashInMap!2827 lm!2646 hashF!1641))))

(declare-fun b!4850083 () Bool)

(declare-fun e!3031837 () Bool)

(declare-fun e!3031839 () Bool)

(assert (=> b!4850083 (= e!3031837 e!3031839)))

(declare-fun res!2069921 () Bool)

(assert (=> b!4850083 (=> res!2069921 e!3031839)))

(declare-fun key!6445 () K!17382)

(declare-fun containsKey!4703 (List!55704 K!17382) Bool)

(assert (=> b!4850083 (= res!2069921 (containsKey!4703 (_2!32942 (h!62018 (toList!7871 lm!2646))) key!6445))))

(declare-fun apply!13454 (ListLongMap!6485 (_ BitVec 64)) List!55704)

(assert (=> b!4850083 (not (containsKey!4703 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))) key!6445))))

(declare-datatypes ((Unit!145730 0))(
  ( (Unit!145731) )
))
(declare-fun lt!1989551 () Unit!145730)

(declare-fun lemmaNotSameHashThenCannotContainKey!261 (ListLongMap!6485 K!17382 (_ BitVec 64) Hashable!7511) Unit!145730)

(assert (=> b!4850083 (= lt!1989551 (lemmaNotSameHashThenCannotContainKey!261 lm!2646 key!6445 (_1!32942 (h!62018 (toList!7871 lm!2646))) hashF!1641))))

(declare-fun b!4850084 () Bool)

(declare-fun res!2069922 () Bool)

(assert (=> b!4850084 (=> res!2069922 e!3031837)))

(declare-fun lt!1989552 () (_ BitVec 64))

(assert (=> b!4850084 (= res!2069922 (or (and (is-Cons!55581 (toList!7871 lm!2646)) (= (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552)) (not (is-Cons!55581 (toList!7871 lm!2646))) (= lt!1989552 (_1!32942 (h!62018 (toList!7871 lm!2646))))))))

(declare-fun b!4850085 () Bool)

(declare-fun res!2069925 () Bool)

(declare-fun e!3031842 () Bool)

(assert (=> b!4850085 (=> res!2069925 e!3031842)))

(declare-fun lt!1989554 () ListLongMap!6485)

(declare-fun contains!19245 (ListLongMap!6485 (_ BitVec 64)) Bool)

(assert (=> b!4850085 (= res!2069925 (not (contains!19245 lt!1989554 lt!1989552)))))

(declare-fun b!4850086 () Bool)

(declare-fun e!3031838 () Bool)

(declare-fun size!36645 (List!55705) Int)

(assert (=> b!4850086 (= e!3031838 (< (size!36645 (toList!7871 lt!1989554)) (size!36645 (toList!7871 lm!2646))))))

(declare-fun b!4850087 () Bool)

(declare-fun res!2069929 () Bool)

(assert (=> b!4850087 (=> res!2069929 e!3031842)))

(assert (=> b!4850087 (= res!2069929 (not (allKeysSameHashInMap!2827 lt!1989554 hashF!1641)))))

(declare-fun b!4850088 () Bool)

(assert (=> b!4850088 (= e!3031842 e!3031838)))

(declare-fun res!2069927 () Bool)

(assert (=> b!4850088 (=> res!2069927 e!3031838)))

(declare-fun lt!1989557 () List!55704)

(declare-datatypes ((Option!13692 0))(
  ( (None!13691) (Some!13691 (v!49475 tuple2!59294)) )
))
(declare-fun isDefined!10784 (Option!13692) Bool)

(declare-fun getPair!1101 (List!55704 K!17382) Option!13692)

(assert (=> b!4850088 (= res!2069927 (not (isDefined!10784 (getPair!1101 lt!1989557 key!6445))))))

(declare-fun lambda!242695 () Int)

(declare-fun lt!1989558 () Unit!145730)

(declare-fun lt!1989559 () tuple2!59296)

(declare-fun forallContained!4552 (List!55705 Int tuple2!59296) Unit!145730)

(assert (=> b!4850088 (= lt!1989558 (forallContained!4552 (toList!7871 lt!1989554) lambda!242695 lt!1989559))))

(declare-fun contains!19246 (List!55705 tuple2!59296) Bool)

(assert (=> b!4850088 (contains!19246 (toList!7871 lt!1989554) lt!1989559)))

(assert (=> b!4850088 (= lt!1989559 (tuple2!59297 lt!1989552 lt!1989557))))

(declare-fun lt!1989556 () Unit!145730)

(declare-fun lemmaGetValueImpliesTupleContained!778 (ListLongMap!6485 (_ BitVec 64) List!55704) Unit!145730)

(assert (=> b!4850088 (= lt!1989556 (lemmaGetValueImpliesTupleContained!778 lt!1989554 lt!1989552 lt!1989557))))

(assert (=> b!4850088 (= lt!1989557 (apply!13454 lt!1989554 lt!1989552))))

(declare-fun b!4850089 () Bool)

(declare-fun e!3031840 () Bool)

(declare-fun tp!1364789 () Bool)

(assert (=> b!4850089 (= e!3031840 tp!1364789)))

(declare-fun res!2069926 () Bool)

(assert (=> start!505922 (=> (not res!2069926) (not e!3031841))))

(declare-fun forall!12964 (List!55705 Int) Bool)

(assert (=> start!505922 (= res!2069926 (forall!12964 (toList!7871 lm!2646) lambda!242695))))

(assert (=> start!505922 e!3031841))

(declare-fun inv!71269 (ListLongMap!6485) Bool)

(assert (=> start!505922 (and (inv!71269 lm!2646) e!3031840)))

(assert (=> start!505922 true))

(declare-fun tp_is_empty!35229 () Bool)

(assert (=> start!505922 tp_is_empty!35229))

(declare-fun b!4850090 () Bool)

(declare-fun e!3031843 () Bool)

(assert (=> b!4850090 (= e!3031843 (not e!3031837))))

(declare-fun res!2069928 () Bool)

(assert (=> b!4850090 (=> res!2069928 e!3031837)))

(declare-fun lt!1989561 () List!55704)

(assert (=> b!4850090 (= res!2069928 (not (isDefined!10784 (getPair!1101 lt!1989561 key!6445))))))

(declare-fun lt!1989560 () tuple2!59296)

(declare-fun lt!1989555 () Unit!145730)

(assert (=> b!4850090 (= lt!1989555 (forallContained!4552 (toList!7871 lm!2646) lambda!242695 lt!1989560))))

(assert (=> b!4850090 (contains!19246 (toList!7871 lm!2646) lt!1989560)))

(assert (=> b!4850090 (= lt!1989560 (tuple2!59297 lt!1989552 lt!1989561))))

(declare-fun lt!1989553 () Unit!145730)

(assert (=> b!4850090 (= lt!1989553 (lemmaGetValueImpliesTupleContained!778 lm!2646 lt!1989552 lt!1989561))))

(assert (=> b!4850090 (= lt!1989561 (apply!13454 lm!2646 lt!1989552))))

(declare-fun b!4850091 () Bool)

(assert (=> b!4850091 (= e!3031841 e!3031843)))

(declare-fun res!2069923 () Bool)

(assert (=> b!4850091 (=> (not res!2069923) (not e!3031843))))

(assert (=> b!4850091 (= res!2069923 (contains!19245 lm!2646 lt!1989552))))

(declare-fun hash!5625 (Hashable!7511 K!17382) (_ BitVec 64))

(assert (=> b!4850091 (= lt!1989552 (hash!5625 hashF!1641 key!6445))))

(declare-fun b!4850092 () Bool)

(assert (=> b!4850092 (= e!3031839 e!3031842)))

(declare-fun res!2069924 () Bool)

(assert (=> b!4850092 (=> res!2069924 e!3031842)))

(assert (=> b!4850092 (= res!2069924 (not (forall!12964 (toList!7871 lt!1989554) lambda!242695)))))

(declare-fun tail!9545 (ListLongMap!6485) ListLongMap!6485)

(assert (=> b!4850092 (= lt!1989554 (tail!9545 lm!2646))))

(assert (= (and start!505922 res!2069926) b!4850082))

(assert (= (and b!4850082 res!2069920) b!4850091))

(assert (= (and b!4850091 res!2069923) b!4850090))

(assert (= (and b!4850090 (not res!2069928)) b!4850084))

(assert (= (and b!4850084 (not res!2069922)) b!4850083))

(assert (= (and b!4850083 (not res!2069921)) b!4850092))

(assert (= (and b!4850092 (not res!2069924)) b!4850087))

(assert (= (and b!4850087 (not res!2069929)) b!4850085))

(assert (= (and b!4850085 (not res!2069925)) b!4850088))

(assert (= (and b!4850088 (not res!2069927)) b!4850086))

(assert (= start!505922 b!4850089))

(declare-fun m!5848444 () Bool)

(assert (=> b!4850083 m!5848444))

(declare-fun m!5848446 () Bool)

(assert (=> b!4850083 m!5848446))

(assert (=> b!4850083 m!5848446))

(declare-fun m!5848448 () Bool)

(assert (=> b!4850083 m!5848448))

(declare-fun m!5848450 () Bool)

(assert (=> b!4850083 m!5848450))

(declare-fun m!5848452 () Bool)

(assert (=> b!4850086 m!5848452))

(declare-fun m!5848454 () Bool)

(assert (=> b!4850086 m!5848454))

(declare-fun m!5848456 () Bool)

(assert (=> b!4850090 m!5848456))

(declare-fun m!5848458 () Bool)

(assert (=> b!4850090 m!5848458))

(declare-fun m!5848460 () Bool)

(assert (=> b!4850090 m!5848460))

(declare-fun m!5848462 () Bool)

(assert (=> b!4850090 m!5848462))

(assert (=> b!4850090 m!5848460))

(declare-fun m!5848464 () Bool)

(assert (=> b!4850090 m!5848464))

(declare-fun m!5848466 () Bool)

(assert (=> b!4850090 m!5848466))

(declare-fun m!5848468 () Bool)

(assert (=> b!4850088 m!5848468))

(declare-fun m!5848470 () Bool)

(assert (=> b!4850088 m!5848470))

(assert (=> b!4850088 m!5848470))

(declare-fun m!5848472 () Bool)

(assert (=> b!4850088 m!5848472))

(declare-fun m!5848474 () Bool)

(assert (=> b!4850088 m!5848474))

(declare-fun m!5848476 () Bool)

(assert (=> b!4850088 m!5848476))

(declare-fun m!5848478 () Bool)

(assert (=> b!4850088 m!5848478))

(declare-fun m!5848480 () Bool)

(assert (=> start!505922 m!5848480))

(declare-fun m!5848482 () Bool)

(assert (=> start!505922 m!5848482))

(declare-fun m!5848484 () Bool)

(assert (=> b!4850091 m!5848484))

(declare-fun m!5848486 () Bool)

(assert (=> b!4850091 m!5848486))

(declare-fun m!5848488 () Bool)

(assert (=> b!4850082 m!5848488))

(declare-fun m!5848490 () Bool)

(assert (=> b!4850087 m!5848490))

(declare-fun m!5848492 () Bool)

(assert (=> b!4850092 m!5848492))

(declare-fun m!5848494 () Bool)

(assert (=> b!4850092 m!5848494))

(declare-fun m!5848496 () Bool)

(assert (=> b!4850085 m!5848496))

(push 1)

(assert (not b!4850090))

(assert (not b!4850086))

(assert (not b!4850089))

(assert (not b!4850091))

(assert tp_is_empty!35229)

(assert (not b!4850092))

(assert (not start!505922))

(assert (not b!4850083))

(assert (not b!4850087))

(assert (not b!4850088))

(assert (not b!4850085))

(assert (not b!4850082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556700 () Bool)

(declare-fun e!3031872 () Bool)

(assert (=> d!1556700 e!3031872))

(declare-fun res!2069962 () Bool)

(assert (=> d!1556700 (=> res!2069962 e!3031872)))

(declare-fun lt!1989605 () Bool)

(assert (=> d!1556700 (= res!2069962 (not lt!1989605))))

(declare-fun lt!1989608 () Bool)

(assert (=> d!1556700 (= lt!1989605 lt!1989608)))

(declare-fun lt!1989607 () Unit!145730)

(declare-fun e!3031871 () Unit!145730)

(assert (=> d!1556700 (= lt!1989607 e!3031871)))

(declare-fun c!825419 () Bool)

(assert (=> d!1556700 (= c!825419 lt!1989608)))

(declare-fun containsKey!4705 (List!55705 (_ BitVec 64)) Bool)

(assert (=> d!1556700 (= lt!1989608 (containsKey!4705 (toList!7871 lt!1989554) lt!1989552))))

(assert (=> d!1556700 (= (contains!19245 lt!1989554 lt!1989552) lt!1989605)))

(declare-fun b!4850136 () Bool)

(declare-fun lt!1989606 () Unit!145730)

(assert (=> b!4850136 (= e!3031871 lt!1989606)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2511 (List!55705 (_ BitVec 64)) Unit!145730)

(assert (=> b!4850136 (= lt!1989606 (lemmaContainsKeyImpliesGetValueByKeyDefined!2511 (toList!7871 lt!1989554) lt!1989552))))

(declare-datatypes ((Option!13694 0))(
  ( (None!13693) (Some!13693 (v!49478 List!55704)) )
))
(declare-fun isDefined!10786 (Option!13694) Bool)

(declare-fun getValueByKey!2739 (List!55705 (_ BitVec 64)) Option!13694)

(assert (=> b!4850136 (isDefined!10786 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552))))

(declare-fun b!4850137 () Bool)

(declare-fun Unit!145734 () Unit!145730)

(assert (=> b!4850137 (= e!3031871 Unit!145734)))

(declare-fun b!4850138 () Bool)

(assert (=> b!4850138 (= e!3031872 (isDefined!10786 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552)))))

(assert (= (and d!1556700 c!825419) b!4850136))

(assert (= (and d!1556700 (not c!825419)) b!4850137))

(assert (= (and d!1556700 (not res!2069962)) b!4850138))

(declare-fun m!5848552 () Bool)

(assert (=> d!1556700 m!5848552))

(declare-fun m!5848554 () Bool)

(assert (=> b!4850136 m!5848554))

(declare-fun m!5848556 () Bool)

(assert (=> b!4850136 m!5848556))

(assert (=> b!4850136 m!5848556))

(declare-fun m!5848558 () Bool)

(assert (=> b!4850136 m!5848558))

(assert (=> b!4850138 m!5848556))

(assert (=> b!4850138 m!5848556))

(assert (=> b!4850138 m!5848558))

(assert (=> b!4850085 d!1556700))

(declare-fun d!1556704 () Bool)

(assert (=> d!1556704 (contains!19246 (toList!7871 lm!2646) (tuple2!59297 lt!1989552 lt!1989561))))

(declare-fun lt!1989613 () Unit!145730)

(declare-fun choose!35495 (ListLongMap!6485 (_ BitVec 64) List!55704) Unit!145730)

(assert (=> d!1556704 (= lt!1989613 (choose!35495 lm!2646 lt!1989552 lt!1989561))))

(assert (=> d!1556704 (contains!19245 lm!2646 lt!1989552)))

(assert (=> d!1556704 (= (lemmaGetValueImpliesTupleContained!778 lm!2646 lt!1989552 lt!1989561) lt!1989613)))

(declare-fun bs!1172813 () Bool)

(assert (= bs!1172813 d!1556704))

(declare-fun m!5848564 () Bool)

(assert (=> bs!1172813 m!5848564))

(declare-fun m!5848566 () Bool)

(assert (=> bs!1172813 m!5848566))

(assert (=> bs!1172813 m!5848484))

(assert (=> b!4850090 d!1556704))

(declare-fun d!1556710 () Bool)

(declare-fun get!19059 (Option!13694) List!55704)

(assert (=> d!1556710 (= (apply!13454 lm!2646 lt!1989552) (get!19059 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552)))))

(declare-fun bs!1172814 () Bool)

(assert (= bs!1172814 d!1556710))

(declare-fun m!5848568 () Bool)

(assert (=> bs!1172814 m!5848568))

(assert (=> bs!1172814 m!5848568))

(declare-fun m!5848570 () Bool)

(assert (=> bs!1172814 m!5848570))

(assert (=> b!4850090 d!1556710))

(declare-fun d!1556712 () Bool)

(declare-fun dynLambda!22365 (Int tuple2!59296) Bool)

(assert (=> d!1556712 (dynLambda!22365 lambda!242695 lt!1989560)))

(declare-fun lt!1989616 () Unit!145730)

(declare-fun choose!35496 (List!55705 Int tuple2!59296) Unit!145730)

(assert (=> d!1556712 (= lt!1989616 (choose!35496 (toList!7871 lm!2646) lambda!242695 lt!1989560))))

(declare-fun e!3031877 () Bool)

(assert (=> d!1556712 e!3031877))

(declare-fun res!2069965 () Bool)

(assert (=> d!1556712 (=> (not res!2069965) (not e!3031877))))

(assert (=> d!1556712 (= res!2069965 (forall!12964 (toList!7871 lm!2646) lambda!242695))))

(assert (=> d!1556712 (= (forallContained!4552 (toList!7871 lm!2646) lambda!242695 lt!1989560) lt!1989616)))

(declare-fun b!4850146 () Bool)

(assert (=> b!4850146 (= e!3031877 (contains!19246 (toList!7871 lm!2646) lt!1989560))))

(assert (= (and d!1556712 res!2069965) b!4850146))

(declare-fun b_lambda!192867 () Bool)

(assert (=> (not b_lambda!192867) (not d!1556712)))

(declare-fun m!5848572 () Bool)

(assert (=> d!1556712 m!5848572))

(declare-fun m!5848574 () Bool)

(assert (=> d!1556712 m!5848574))

(assert (=> d!1556712 m!5848480))

(assert (=> b!4850146 m!5848466))

(assert (=> b!4850090 d!1556712))

(declare-fun d!1556714 () Bool)

(declare-fun lt!1989619 () Bool)

(declare-fun content!9897 (List!55705) (Set tuple2!59296))

(assert (=> d!1556714 (= lt!1989619 (set.member lt!1989560 (content!9897 (toList!7871 lm!2646))))))

(declare-fun e!3031883 () Bool)

(assert (=> d!1556714 (= lt!1989619 e!3031883)))

(declare-fun res!2069971 () Bool)

(assert (=> d!1556714 (=> (not res!2069971) (not e!3031883))))

(assert (=> d!1556714 (= res!2069971 (is-Cons!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556714 (= (contains!19246 (toList!7871 lm!2646) lt!1989560) lt!1989619)))

(declare-fun b!4850153 () Bool)

(declare-fun e!3031882 () Bool)

(assert (=> b!4850153 (= e!3031883 e!3031882)))

(declare-fun res!2069970 () Bool)

(assert (=> b!4850153 (=> res!2069970 e!3031882)))

(assert (=> b!4850153 (= res!2069970 (= (h!62018 (toList!7871 lm!2646)) lt!1989560))))

(declare-fun b!4850154 () Bool)

(assert (=> b!4850154 (= e!3031882 (contains!19246 (t!363201 (toList!7871 lm!2646)) lt!1989560))))

(assert (= (and d!1556714 res!2069971) b!4850153))

(assert (= (and b!4850153 (not res!2069970)) b!4850154))

(declare-fun m!5848578 () Bool)

(assert (=> d!1556714 m!5848578))

(declare-fun m!5848580 () Bool)

(assert (=> d!1556714 m!5848580))

(declare-fun m!5848582 () Bool)

(assert (=> b!4850154 m!5848582))

(assert (=> b!4850090 d!1556714))

(declare-fun b!4850177 () Bool)

(declare-fun res!2069987 () Bool)

(declare-fun e!3031902 () Bool)

(assert (=> b!4850177 (=> (not res!2069987) (not e!3031902))))

(declare-fun lt!1989622 () Option!13692)

(declare-fun get!19060 (Option!13692) tuple2!59294)

(assert (=> b!4850177 (= res!2069987 (= (_1!32941 (get!19060 lt!1989622)) key!6445))))

(declare-fun b!4850178 () Bool)

(declare-fun e!3031904 () Option!13692)

(assert (=> b!4850178 (= e!3031904 (Some!13691 (h!62017 lt!1989561)))))

(declare-fun b!4850180 () Bool)

(declare-fun e!3031901 () Option!13692)

(assert (=> b!4850180 (= e!3031904 e!3031901)))

(declare-fun c!825426 () Bool)

(assert (=> b!4850180 (= c!825426 (is-Cons!55580 lt!1989561))))

(declare-fun b!4850181 () Bool)

(assert (=> b!4850181 (= e!3031901 (getPair!1101 (t!363200 lt!1989561) key!6445))))

(declare-fun b!4850182 () Bool)

(declare-fun e!3031900 () Bool)

(assert (=> b!4850182 (= e!3031900 (not (containsKey!4703 lt!1989561 key!6445)))))

(declare-fun b!4850183 () Bool)

(declare-fun contains!19249 (List!55704 tuple2!59294) Bool)

(assert (=> b!4850183 (= e!3031902 (contains!19249 lt!1989561 (get!19060 lt!1989622)))))

(declare-fun b!4850184 () Bool)

(assert (=> b!4850184 (= e!3031901 None!13691)))

(declare-fun b!4850179 () Bool)

(declare-fun e!3031903 () Bool)

(assert (=> b!4850179 (= e!3031903 e!3031902)))

(declare-fun res!2069988 () Bool)

(assert (=> b!4850179 (=> (not res!2069988) (not e!3031902))))

(assert (=> b!4850179 (= res!2069988 (isDefined!10784 lt!1989622))))

(declare-fun d!1556718 () Bool)

(assert (=> d!1556718 e!3031903))

(declare-fun res!2069989 () Bool)

(assert (=> d!1556718 (=> res!2069989 e!3031903)))

(assert (=> d!1556718 (= res!2069989 e!3031900)))

(declare-fun res!2069986 () Bool)

(assert (=> d!1556718 (=> (not res!2069986) (not e!3031900))))

(declare-fun isEmpty!29748 (Option!13692) Bool)

(assert (=> d!1556718 (= res!2069986 (isEmpty!29748 lt!1989622))))

(assert (=> d!1556718 (= lt!1989622 e!3031904)))

(declare-fun c!825427 () Bool)

(assert (=> d!1556718 (= c!825427 (and (is-Cons!55580 lt!1989561) (= (_1!32941 (h!62017 lt!1989561)) key!6445)))))

(declare-fun noDuplicateKeys!2599 (List!55704) Bool)

(assert (=> d!1556718 (noDuplicateKeys!2599 lt!1989561)))

(assert (=> d!1556718 (= (getPair!1101 lt!1989561 key!6445) lt!1989622)))

(assert (= (and d!1556718 c!825427) b!4850178))

(assert (= (and d!1556718 (not c!825427)) b!4850180))

(assert (= (and b!4850180 c!825426) b!4850181))

(assert (= (and b!4850180 (not c!825426)) b!4850184))

(assert (= (and d!1556718 res!2069986) b!4850182))

(assert (= (and d!1556718 (not res!2069989)) b!4850179))

(assert (= (and b!4850179 res!2069988) b!4850177))

(assert (= (and b!4850177 res!2069987) b!4850183))

(declare-fun m!5848588 () Bool)

(assert (=> b!4850182 m!5848588))

(declare-fun m!5848590 () Bool)

(assert (=> b!4850181 m!5848590))

(declare-fun m!5848592 () Bool)

(assert (=> b!4850183 m!5848592))

(assert (=> b!4850183 m!5848592))

(declare-fun m!5848594 () Bool)

(assert (=> b!4850183 m!5848594))

(assert (=> b!4850177 m!5848592))

(declare-fun m!5848596 () Bool)

(assert (=> d!1556718 m!5848596))

(declare-fun m!5848598 () Bool)

(assert (=> d!1556718 m!5848598))

(declare-fun m!5848600 () Bool)

(assert (=> b!4850179 m!5848600))

(assert (=> b!4850090 d!1556718))

(declare-fun d!1556722 () Bool)

(assert (=> d!1556722 (= (isDefined!10784 (getPair!1101 lt!1989561 key!6445)) (not (isEmpty!29748 (getPair!1101 lt!1989561 key!6445))))))

(declare-fun bs!1172817 () Bool)

(assert (= bs!1172817 d!1556722))

(assert (=> bs!1172817 m!5848460))

(declare-fun m!5848602 () Bool)

(assert (=> bs!1172817 m!5848602))

(assert (=> b!4850090 d!1556722))

(declare-fun d!1556724 () Bool)

(declare-fun res!2069994 () Bool)

(declare-fun e!3031909 () Bool)

(assert (=> d!1556724 (=> res!2069994 e!3031909)))

(assert (=> d!1556724 (= res!2069994 (is-Nil!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556724 (= (forall!12964 (toList!7871 lm!2646) lambda!242695) e!3031909)))

(declare-fun b!4850189 () Bool)

(declare-fun e!3031910 () Bool)

(assert (=> b!4850189 (= e!3031909 e!3031910)))

(declare-fun res!2069995 () Bool)

(assert (=> b!4850189 (=> (not res!2069995) (not e!3031910))))

(assert (=> b!4850189 (= res!2069995 (dynLambda!22365 lambda!242695 (h!62018 (toList!7871 lm!2646))))))

(declare-fun b!4850190 () Bool)

(assert (=> b!4850190 (= e!3031910 (forall!12964 (t!363201 (toList!7871 lm!2646)) lambda!242695))))

(assert (= (and d!1556724 (not res!2069994)) b!4850189))

(assert (= (and b!4850189 res!2069995) b!4850190))

(declare-fun b_lambda!192871 () Bool)

(assert (=> (not b_lambda!192871) (not b!4850189)))

(declare-fun m!5848606 () Bool)

(assert (=> b!4850189 m!5848606))

(declare-fun m!5848608 () Bool)

(assert (=> b!4850190 m!5848608))

(assert (=> start!505922 d!1556724))

(declare-fun d!1556728 () Bool)

(declare-fun isStrictlySorted!1088 (List!55705) Bool)

(assert (=> d!1556728 (= (inv!71269 lm!2646) (isStrictlySorted!1088 (toList!7871 lm!2646)))))

(declare-fun bs!1172819 () Bool)

(assert (= bs!1172819 d!1556728))

(declare-fun m!5848610 () Bool)

(assert (=> bs!1172819 m!5848610))

(assert (=> start!505922 d!1556728))

(declare-fun d!1556730 () Bool)

(declare-fun res!2070004 () Bool)

(declare-fun e!3031919 () Bool)

(assert (=> d!1556730 (=> res!2070004 e!3031919)))

(assert (=> d!1556730 (= res!2070004 (and (is-Cons!55580 (_2!32942 (h!62018 (toList!7871 lm!2646)))) (= (_1!32941 (h!62017 (_2!32942 (h!62018 (toList!7871 lm!2646))))) key!6445)))))

(assert (=> d!1556730 (= (containsKey!4703 (_2!32942 (h!62018 (toList!7871 lm!2646))) key!6445) e!3031919)))

(declare-fun b!4850199 () Bool)

(declare-fun e!3031920 () Bool)

(assert (=> b!4850199 (= e!3031919 e!3031920)))

(declare-fun res!2070005 () Bool)

(assert (=> b!4850199 (=> (not res!2070005) (not e!3031920))))

(assert (=> b!4850199 (= res!2070005 (is-Cons!55580 (_2!32942 (h!62018 (toList!7871 lm!2646)))))))

(declare-fun b!4850200 () Bool)

(assert (=> b!4850200 (= e!3031920 (containsKey!4703 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646)))) key!6445))))

(assert (= (and d!1556730 (not res!2070004)) b!4850199))

(assert (= (and b!4850199 res!2070005) b!4850200))

(declare-fun m!5848612 () Bool)

(assert (=> b!4850200 m!5848612))

(assert (=> b!4850083 d!1556730))

(declare-fun d!1556732 () Bool)

(declare-fun res!2070008 () Bool)

(declare-fun e!3031923 () Bool)

(assert (=> d!1556732 (=> res!2070008 e!3031923)))

(assert (=> d!1556732 (= res!2070008 (and (is-Cons!55580 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646))))) (= (_1!32941 (h!62017 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))))) key!6445)))))

(assert (=> d!1556732 (= (containsKey!4703 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))) key!6445) e!3031923)))

(declare-fun b!4850203 () Bool)

(declare-fun e!3031924 () Bool)

(assert (=> b!4850203 (= e!3031923 e!3031924)))

(declare-fun res!2070009 () Bool)

(assert (=> b!4850203 (=> (not res!2070009) (not e!3031924))))

(assert (=> b!4850203 (= res!2070009 (is-Cons!55580 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646))))))))

(declare-fun b!4850204 () Bool)

(assert (=> b!4850204 (= e!3031924 (containsKey!4703 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646))))) key!6445))))

(assert (= (and d!1556732 (not res!2070008)) b!4850203))

(assert (= (and b!4850203 res!2070009) b!4850204))

(declare-fun m!5848614 () Bool)

(assert (=> b!4850204 m!5848614))

(assert (=> b!4850083 d!1556732))

(declare-fun d!1556734 () Bool)

(assert (=> d!1556734 (= (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))) (get!19059 (getValueByKey!2739 (toList!7871 lm!2646) (_1!32942 (h!62018 (toList!7871 lm!2646))))))))

(declare-fun bs!1172820 () Bool)

(assert (= bs!1172820 d!1556734))

(declare-fun m!5848616 () Bool)

(assert (=> bs!1172820 m!5848616))

(assert (=> bs!1172820 m!5848616))

(declare-fun m!5848618 () Bool)

(assert (=> bs!1172820 m!5848618))

(assert (=> b!4850083 d!1556734))

(declare-fun bs!1172821 () Bool)

(declare-fun d!1556736 () Bool)

(assert (= bs!1172821 (and d!1556736 start!505922)))

(declare-fun lambda!242710 () Int)

(assert (=> bs!1172821 (= lambda!242710 lambda!242695)))

(assert (=> d!1556736 (not (containsKey!4703 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))) key!6445))))

(declare-fun lt!1989625 () Unit!145730)

(declare-fun choose!35497 (ListLongMap!6485 K!17382 (_ BitVec 64) Hashable!7511) Unit!145730)

(assert (=> d!1556736 (= lt!1989625 (choose!35497 lm!2646 key!6445 (_1!32942 (h!62018 (toList!7871 lm!2646))) hashF!1641))))

(assert (=> d!1556736 (forall!12964 (toList!7871 lm!2646) lambda!242710)))

(assert (=> d!1556736 (= (lemmaNotSameHashThenCannotContainKey!261 lm!2646 key!6445 (_1!32942 (h!62018 (toList!7871 lm!2646))) hashF!1641) lt!1989625)))

(declare-fun bs!1172822 () Bool)

(assert (= bs!1172822 d!1556736))

(assert (=> bs!1172822 m!5848446))

(assert (=> bs!1172822 m!5848446))

(assert (=> bs!1172822 m!5848448))

(declare-fun m!5848624 () Bool)

(assert (=> bs!1172822 m!5848624))

(declare-fun m!5848626 () Bool)

(assert (=> bs!1172822 m!5848626))

(assert (=> b!4850083 d!1556736))

(declare-fun d!1556742 () Bool)

(assert (=> d!1556742 (dynLambda!22365 lambda!242695 lt!1989559)))

(declare-fun lt!1989626 () Unit!145730)

(assert (=> d!1556742 (= lt!1989626 (choose!35496 (toList!7871 lt!1989554) lambda!242695 lt!1989559))))

(declare-fun e!3031927 () Bool)

(assert (=> d!1556742 e!3031927))

(declare-fun res!2070012 () Bool)

(assert (=> d!1556742 (=> (not res!2070012) (not e!3031927))))

(assert (=> d!1556742 (= res!2070012 (forall!12964 (toList!7871 lt!1989554) lambda!242695))))

(assert (=> d!1556742 (= (forallContained!4552 (toList!7871 lt!1989554) lambda!242695 lt!1989559) lt!1989626)))

(declare-fun b!4850207 () Bool)

(assert (=> b!4850207 (= e!3031927 (contains!19246 (toList!7871 lt!1989554) lt!1989559))))

(assert (= (and d!1556742 res!2070012) b!4850207))

(declare-fun b_lambda!192873 () Bool)

(assert (=> (not b_lambda!192873) (not d!1556742)))

(declare-fun m!5848628 () Bool)

(assert (=> d!1556742 m!5848628))

(declare-fun m!5848630 () Bool)

(assert (=> d!1556742 m!5848630))

(assert (=> d!1556742 m!5848492))

(assert (=> b!4850207 m!5848476))

(assert (=> b!4850088 d!1556742))

(declare-fun d!1556744 () Bool)

(assert (=> d!1556744 (= (isDefined!10784 (getPair!1101 lt!1989557 key!6445)) (not (isEmpty!29748 (getPair!1101 lt!1989557 key!6445))))))

(declare-fun bs!1172823 () Bool)

(assert (= bs!1172823 d!1556744))

(assert (=> bs!1172823 m!5848470))

(declare-fun m!5848632 () Bool)

(assert (=> bs!1172823 m!5848632))

(assert (=> b!4850088 d!1556744))

(declare-fun d!1556746 () Bool)

(assert (=> d!1556746 (= (apply!13454 lt!1989554 lt!1989552) (get!19059 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552)))))

(declare-fun bs!1172824 () Bool)

(assert (= bs!1172824 d!1556746))

(assert (=> bs!1172824 m!5848556))

(assert (=> bs!1172824 m!5848556))

(declare-fun m!5848634 () Bool)

(assert (=> bs!1172824 m!5848634))

(assert (=> b!4850088 d!1556746))

(declare-fun d!1556748 () Bool)

(declare-fun lt!1989627 () Bool)

(assert (=> d!1556748 (= lt!1989627 (set.member lt!1989559 (content!9897 (toList!7871 lt!1989554))))))

(declare-fun e!3031929 () Bool)

(assert (=> d!1556748 (= lt!1989627 e!3031929)))

(declare-fun res!2070014 () Bool)

(assert (=> d!1556748 (=> (not res!2070014) (not e!3031929))))

(assert (=> d!1556748 (= res!2070014 (is-Cons!55581 (toList!7871 lt!1989554)))))

(assert (=> d!1556748 (= (contains!19246 (toList!7871 lt!1989554) lt!1989559) lt!1989627)))

(declare-fun b!4850208 () Bool)

(declare-fun e!3031928 () Bool)

(assert (=> b!4850208 (= e!3031929 e!3031928)))

(declare-fun res!2070013 () Bool)

(assert (=> b!4850208 (=> res!2070013 e!3031928)))

(assert (=> b!4850208 (= res!2070013 (= (h!62018 (toList!7871 lt!1989554)) lt!1989559))))

(declare-fun b!4850209 () Bool)

(assert (=> b!4850209 (= e!3031928 (contains!19246 (t!363201 (toList!7871 lt!1989554)) lt!1989559))))

(assert (= (and d!1556748 res!2070014) b!4850208))

(assert (= (and b!4850208 (not res!2070013)) b!4850209))

(declare-fun m!5848638 () Bool)

(assert (=> d!1556748 m!5848638))

(declare-fun m!5848642 () Bool)

(assert (=> d!1556748 m!5848642))

(declare-fun m!5848644 () Bool)

(assert (=> b!4850209 m!5848644))

(assert (=> b!4850088 d!1556748))

(declare-fun b!4850210 () Bool)

(declare-fun res!2070016 () Bool)

(declare-fun e!3031932 () Bool)

(assert (=> b!4850210 (=> (not res!2070016) (not e!3031932))))

(declare-fun lt!1989628 () Option!13692)

(assert (=> b!4850210 (= res!2070016 (= (_1!32941 (get!19060 lt!1989628)) key!6445))))

(declare-fun b!4850211 () Bool)

(declare-fun e!3031934 () Option!13692)

(assert (=> b!4850211 (= e!3031934 (Some!13691 (h!62017 lt!1989557)))))

(declare-fun b!4850213 () Bool)

(declare-fun e!3031931 () Option!13692)

(assert (=> b!4850213 (= e!3031934 e!3031931)))

(declare-fun c!825428 () Bool)

(assert (=> b!4850213 (= c!825428 (is-Cons!55580 lt!1989557))))

(declare-fun b!4850214 () Bool)

(assert (=> b!4850214 (= e!3031931 (getPair!1101 (t!363200 lt!1989557) key!6445))))

(declare-fun b!4850215 () Bool)

(declare-fun e!3031930 () Bool)

(assert (=> b!4850215 (= e!3031930 (not (containsKey!4703 lt!1989557 key!6445)))))

(declare-fun b!4850216 () Bool)

(assert (=> b!4850216 (= e!3031932 (contains!19249 lt!1989557 (get!19060 lt!1989628)))))

(declare-fun b!4850217 () Bool)

(assert (=> b!4850217 (= e!3031931 None!13691)))

(declare-fun b!4850212 () Bool)

(declare-fun e!3031933 () Bool)

(assert (=> b!4850212 (= e!3031933 e!3031932)))

(declare-fun res!2070017 () Bool)

(assert (=> b!4850212 (=> (not res!2070017) (not e!3031932))))

(assert (=> b!4850212 (= res!2070017 (isDefined!10784 lt!1989628))))

(declare-fun d!1556750 () Bool)

(assert (=> d!1556750 e!3031933))

(declare-fun res!2070018 () Bool)

(assert (=> d!1556750 (=> res!2070018 e!3031933)))

(assert (=> d!1556750 (= res!2070018 e!3031930)))

(declare-fun res!2070015 () Bool)

(assert (=> d!1556750 (=> (not res!2070015) (not e!3031930))))

(assert (=> d!1556750 (= res!2070015 (isEmpty!29748 lt!1989628))))

(assert (=> d!1556750 (= lt!1989628 e!3031934)))

(declare-fun c!825429 () Bool)

(assert (=> d!1556750 (= c!825429 (and (is-Cons!55580 lt!1989557) (= (_1!32941 (h!62017 lt!1989557)) key!6445)))))

(assert (=> d!1556750 (noDuplicateKeys!2599 lt!1989557)))

(assert (=> d!1556750 (= (getPair!1101 lt!1989557 key!6445) lt!1989628)))

(assert (= (and d!1556750 c!825429) b!4850211))

(assert (= (and d!1556750 (not c!825429)) b!4850213))

(assert (= (and b!4850213 c!825428) b!4850214))

(assert (= (and b!4850213 (not c!825428)) b!4850217))

(assert (= (and d!1556750 res!2070015) b!4850215))

(assert (= (and d!1556750 (not res!2070018)) b!4850212))

(assert (= (and b!4850212 res!2070017) b!4850210))

(assert (= (and b!4850210 res!2070016) b!4850216))

(declare-fun m!5848646 () Bool)

(assert (=> b!4850215 m!5848646))

(declare-fun m!5848648 () Bool)

(assert (=> b!4850214 m!5848648))

(declare-fun m!5848650 () Bool)

(assert (=> b!4850216 m!5848650))

(assert (=> b!4850216 m!5848650))

(declare-fun m!5848652 () Bool)

(assert (=> b!4850216 m!5848652))

(assert (=> b!4850210 m!5848650))

(declare-fun m!5848654 () Bool)

(assert (=> d!1556750 m!5848654))

(declare-fun m!5848656 () Bool)

(assert (=> d!1556750 m!5848656))

(declare-fun m!5848658 () Bool)

(assert (=> b!4850212 m!5848658))

(assert (=> b!4850088 d!1556750))

(declare-fun d!1556754 () Bool)

(assert (=> d!1556754 (contains!19246 (toList!7871 lt!1989554) (tuple2!59297 lt!1989552 lt!1989557))))

(declare-fun lt!1989629 () Unit!145730)

(assert (=> d!1556754 (= lt!1989629 (choose!35495 lt!1989554 lt!1989552 lt!1989557))))

(assert (=> d!1556754 (contains!19245 lt!1989554 lt!1989552)))

(assert (=> d!1556754 (= (lemmaGetValueImpliesTupleContained!778 lt!1989554 lt!1989552 lt!1989557) lt!1989629)))

(declare-fun bs!1172826 () Bool)

(assert (= bs!1172826 d!1556754))

(declare-fun m!5848660 () Bool)

(assert (=> bs!1172826 m!5848660))

(declare-fun m!5848662 () Bool)

(assert (=> bs!1172826 m!5848662))

(assert (=> bs!1172826 m!5848496))

(assert (=> b!4850088 d!1556754))

(declare-fun bs!1172827 () Bool)

(declare-fun d!1556756 () Bool)

(assert (= bs!1172827 (and d!1556756 start!505922)))

(declare-fun lambda!242713 () Int)

(assert (=> bs!1172827 (not (= lambda!242713 lambda!242695))))

(declare-fun bs!1172828 () Bool)

(assert (= bs!1172828 (and d!1556756 d!1556736)))

(assert (=> bs!1172828 (not (= lambda!242713 lambda!242710))))

(assert (=> d!1556756 true))

(assert (=> d!1556756 (= (allKeysSameHashInMap!2827 lm!2646 hashF!1641) (forall!12964 (toList!7871 lm!2646) lambda!242713))))

(declare-fun bs!1172829 () Bool)

(assert (= bs!1172829 d!1556756))

(declare-fun m!5848664 () Bool)

(assert (=> bs!1172829 m!5848664))

(assert (=> b!4850082 d!1556756))

(declare-fun bs!1172830 () Bool)

(declare-fun d!1556758 () Bool)

(assert (= bs!1172830 (and d!1556758 start!505922)))

(declare-fun lambda!242714 () Int)

(assert (=> bs!1172830 (not (= lambda!242714 lambda!242695))))

(declare-fun bs!1172831 () Bool)

(assert (= bs!1172831 (and d!1556758 d!1556736)))

(assert (=> bs!1172831 (not (= lambda!242714 lambda!242710))))

(declare-fun bs!1172832 () Bool)

(assert (= bs!1172832 (and d!1556758 d!1556756)))

(assert (=> bs!1172832 (= lambda!242714 lambda!242713)))

(assert (=> d!1556758 true))

(assert (=> d!1556758 (= (allKeysSameHashInMap!2827 lt!1989554 hashF!1641) (forall!12964 (toList!7871 lt!1989554) lambda!242714))))

(declare-fun bs!1172833 () Bool)

(assert (= bs!1172833 d!1556758))

(declare-fun m!5848666 () Bool)

(assert (=> bs!1172833 m!5848666))

(assert (=> b!4850087 d!1556758))

(declare-fun d!1556760 () Bool)

(declare-fun res!2070019 () Bool)

(declare-fun e!3031935 () Bool)

(assert (=> d!1556760 (=> res!2070019 e!3031935)))

(assert (=> d!1556760 (= res!2070019 (is-Nil!55581 (toList!7871 lt!1989554)))))

(assert (=> d!1556760 (= (forall!12964 (toList!7871 lt!1989554) lambda!242695) e!3031935)))

(declare-fun b!4850220 () Bool)

(declare-fun e!3031936 () Bool)

(assert (=> b!4850220 (= e!3031935 e!3031936)))

(declare-fun res!2070020 () Bool)

(assert (=> b!4850220 (=> (not res!2070020) (not e!3031936))))

(assert (=> b!4850220 (= res!2070020 (dynLambda!22365 lambda!242695 (h!62018 (toList!7871 lt!1989554))))))

(declare-fun b!4850221 () Bool)

(assert (=> b!4850221 (= e!3031936 (forall!12964 (t!363201 (toList!7871 lt!1989554)) lambda!242695))))

(assert (= (and d!1556760 (not res!2070019)) b!4850220))

(assert (= (and b!4850220 res!2070020) b!4850221))

(declare-fun b_lambda!192875 () Bool)

(assert (=> (not b_lambda!192875) (not b!4850220)))

(declare-fun m!5848668 () Bool)

(assert (=> b!4850220 m!5848668))

(declare-fun m!5848670 () Bool)

(assert (=> b!4850221 m!5848670))

(assert (=> b!4850092 d!1556760))

(declare-fun d!1556762 () Bool)

(declare-fun tail!9547 (List!55705) List!55705)

(assert (=> d!1556762 (= (tail!9545 lm!2646) (ListLongMap!6486 (tail!9547 (toList!7871 lm!2646))))))

(declare-fun bs!1172834 () Bool)

(assert (= bs!1172834 d!1556762))

(declare-fun m!5848672 () Bool)

(assert (=> bs!1172834 m!5848672))

(assert (=> b!4850092 d!1556762))

(declare-fun d!1556764 () Bool)

(declare-fun lt!1989634 () Int)

(assert (=> d!1556764 (>= lt!1989634 0)))

(declare-fun e!3031939 () Int)

(assert (=> d!1556764 (= lt!1989634 e!3031939)))

(declare-fun c!825432 () Bool)

(assert (=> d!1556764 (= c!825432 (is-Nil!55581 (toList!7871 lt!1989554)))))

(assert (=> d!1556764 (= (size!36645 (toList!7871 lt!1989554)) lt!1989634)))

(declare-fun b!4850226 () Bool)

(assert (=> b!4850226 (= e!3031939 0)))

(declare-fun b!4850227 () Bool)

(assert (=> b!4850227 (= e!3031939 (+ 1 (size!36645 (t!363201 (toList!7871 lt!1989554)))))))

(assert (= (and d!1556764 c!825432) b!4850226))

(assert (= (and d!1556764 (not c!825432)) b!4850227))

(declare-fun m!5848674 () Bool)

(assert (=> b!4850227 m!5848674))

(assert (=> b!4850086 d!1556764))

(declare-fun d!1556766 () Bool)

(declare-fun lt!1989635 () Int)

(assert (=> d!1556766 (>= lt!1989635 0)))

(declare-fun e!3031940 () Int)

(assert (=> d!1556766 (= lt!1989635 e!3031940)))

(declare-fun c!825433 () Bool)

(assert (=> d!1556766 (= c!825433 (is-Nil!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556766 (= (size!36645 (toList!7871 lm!2646)) lt!1989635)))

(declare-fun b!4850228 () Bool)

(assert (=> b!4850228 (= e!3031940 0)))

(declare-fun b!4850229 () Bool)

(assert (=> b!4850229 (= e!3031940 (+ 1 (size!36645 (t!363201 (toList!7871 lm!2646)))))))

(assert (= (and d!1556766 c!825433) b!4850228))

(assert (= (and d!1556766 (not c!825433)) b!4850229))

(declare-fun m!5848676 () Bool)

(assert (=> b!4850229 m!5848676))

(assert (=> b!4850086 d!1556766))

(declare-fun d!1556768 () Bool)

(declare-fun e!3031942 () Bool)

(assert (=> d!1556768 e!3031942))

(declare-fun res!2070021 () Bool)

(assert (=> d!1556768 (=> res!2070021 e!3031942)))

(declare-fun lt!1989636 () Bool)

(assert (=> d!1556768 (= res!2070021 (not lt!1989636))))

(declare-fun lt!1989639 () Bool)

(assert (=> d!1556768 (= lt!1989636 lt!1989639)))

(declare-fun lt!1989638 () Unit!145730)

(declare-fun e!3031941 () Unit!145730)

(assert (=> d!1556768 (= lt!1989638 e!3031941)))

(declare-fun c!825434 () Bool)

(assert (=> d!1556768 (= c!825434 lt!1989639)))

(assert (=> d!1556768 (= lt!1989639 (containsKey!4705 (toList!7871 lm!2646) lt!1989552))))

(assert (=> d!1556768 (= (contains!19245 lm!2646 lt!1989552) lt!1989636)))

(declare-fun b!4850230 () Bool)

(declare-fun lt!1989637 () Unit!145730)

(assert (=> b!4850230 (= e!3031941 lt!1989637)))

(assert (=> b!4850230 (= lt!1989637 (lemmaContainsKeyImpliesGetValueByKeyDefined!2511 (toList!7871 lm!2646) lt!1989552))))

(assert (=> b!4850230 (isDefined!10786 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552))))

(declare-fun b!4850231 () Bool)

(declare-fun Unit!145735 () Unit!145730)

(assert (=> b!4850231 (= e!3031941 Unit!145735)))

(declare-fun b!4850232 () Bool)

(assert (=> b!4850232 (= e!3031942 (isDefined!10786 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552)))))

(assert (= (and d!1556768 c!825434) b!4850230))

(assert (= (and d!1556768 (not c!825434)) b!4850231))

(assert (= (and d!1556768 (not res!2070021)) b!4850232))

(declare-fun m!5848678 () Bool)

(assert (=> d!1556768 m!5848678))

(declare-fun m!5848680 () Bool)

(assert (=> b!4850230 m!5848680))

(assert (=> b!4850230 m!5848568))

(assert (=> b!4850230 m!5848568))

(declare-fun m!5848682 () Bool)

(assert (=> b!4850230 m!5848682))

(assert (=> b!4850232 m!5848568))

(assert (=> b!4850232 m!5848568))

(assert (=> b!4850232 m!5848682))

(assert (=> b!4850091 d!1556768))

(declare-fun d!1556770 () Bool)

(declare-fun hash!5629 (Hashable!7511 K!17382) (_ BitVec 64))

(assert (=> d!1556770 (= (hash!5625 hashF!1641 key!6445) (hash!5629 hashF!1641 key!6445))))

(declare-fun bs!1172836 () Bool)

(assert (= bs!1172836 d!1556770))

(declare-fun m!5848684 () Bool)

(assert (=> bs!1172836 m!5848684))

(assert (=> b!4850091 d!1556770))

(declare-fun b!4850237 () Bool)

(declare-fun e!3031945 () Bool)

(declare-fun tp!1364797 () Bool)

(declare-fun tp!1364798 () Bool)

(assert (=> b!4850237 (= e!3031945 (and tp!1364797 tp!1364798))))

(assert (=> b!4850089 (= tp!1364789 e!3031945)))

(assert (= (and b!4850089 (is-Cons!55581 (toList!7871 lm!2646))) b!4850237))

(declare-fun b_lambda!192877 () Bool)

(assert (= b_lambda!192871 (or start!505922 b_lambda!192877)))

(declare-fun bs!1172839 () Bool)

(declare-fun d!1556772 () Bool)

(assert (= bs!1172839 (and d!1556772 start!505922)))

(assert (=> bs!1172839 (= (dynLambda!22365 lambda!242695 (h!62018 (toList!7871 lm!2646))) (noDuplicateKeys!2599 (_2!32942 (h!62018 (toList!7871 lm!2646)))))))

(declare-fun m!5848686 () Bool)

(assert (=> bs!1172839 m!5848686))

(assert (=> b!4850189 d!1556772))

(declare-fun b_lambda!192879 () Bool)

(assert (= b_lambda!192875 (or start!505922 b_lambda!192879)))

(declare-fun bs!1172840 () Bool)

(declare-fun d!1556774 () Bool)

(assert (= bs!1172840 (and d!1556774 start!505922)))

(assert (=> bs!1172840 (= (dynLambda!22365 lambda!242695 (h!62018 (toList!7871 lt!1989554))) (noDuplicateKeys!2599 (_2!32942 (h!62018 (toList!7871 lt!1989554)))))))

(declare-fun m!5848688 () Bool)

(assert (=> bs!1172840 m!5848688))

(assert (=> b!4850220 d!1556774))

(declare-fun b_lambda!192881 () Bool)

(assert (= b_lambda!192867 (or start!505922 b_lambda!192881)))

(declare-fun bs!1172841 () Bool)

(declare-fun d!1556776 () Bool)

(assert (= bs!1172841 (and d!1556776 start!505922)))

(assert (=> bs!1172841 (= (dynLambda!22365 lambda!242695 lt!1989560) (noDuplicateKeys!2599 (_2!32942 lt!1989560)))))

(declare-fun m!5848692 () Bool)

(assert (=> bs!1172841 m!5848692))

(assert (=> d!1556712 d!1556776))

(declare-fun b_lambda!192883 () Bool)

(assert (= b_lambda!192873 (or start!505922 b_lambda!192883)))

(declare-fun bs!1172842 () Bool)

(declare-fun d!1556778 () Bool)

(assert (= bs!1172842 (and d!1556778 start!505922)))

(assert (=> bs!1172842 (= (dynLambda!22365 lambda!242695 lt!1989559) (noDuplicateKeys!2599 (_2!32942 lt!1989559)))))

(declare-fun m!5848696 () Bool)

(assert (=> bs!1172842 m!5848696))

(assert (=> d!1556742 d!1556778))

(push 1)

(assert (not d!1556728))

(assert (not d!1556762))

(assert (not d!1556750))

(assert (not d!1556770))

(assert (not b!4850154))

(assert tp_is_empty!35229)

(assert (not b!4850216))

(assert (not b_lambda!192879))

(assert (not d!1556704))

(assert (not b!4850232))

(assert (not b!4850177))

(assert (not d!1556718))

(assert (not d!1556736))

(assert (not b_lambda!192883))

(assert (not b!4850237))

(assert (not b!4850214))

(assert (not b!4850209))

(assert (not bs!1172842))

(assert (not bs!1172840))

(assert (not b!4850229))

(assert (not b!4850138))

(assert (not bs!1172839))

(assert (not b!4850210))

(assert (not d!1556756))

(assert (not d!1556758))

(assert (not d!1556768))

(assert (not b!4850204))

(assert (not b!4850212))

(assert (not d!1556744))

(assert (not d!1556700))

(assert (not b!4850221))

(assert (not b!4850182))

(assert (not b_lambda!192877))

(assert (not d!1556712))

(assert (not d!1556748))

(assert (not bs!1172841))

(assert (not b!4850181))

(assert (not b!4850146))

(assert (not d!1556742))

(assert (not d!1556714))

(assert (not d!1556746))

(assert (not b!4850183))

(assert (not b!4850227))

(assert (not b_lambda!192881))

(assert (not b!4850179))

(assert (not b!4850136))

(assert (not b!4850207))

(assert (not d!1556722))

(assert (not d!1556754))

(assert (not b!4850230))

(assert (not d!1556710))

(assert (not b!4850190))

(assert (not b!4850215))

(assert (not d!1556734))

(assert (not b!4850200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556824 () Bool)

(assert (=> d!1556824 (= (get!19059 (getValueByKey!2739 (toList!7871 lm!2646) (_1!32942 (h!62018 (toList!7871 lm!2646))))) (v!49478 (getValueByKey!2739 (toList!7871 lm!2646) (_1!32942 (h!62018 (toList!7871 lm!2646))))))))

(assert (=> d!1556734 d!1556824))

(declare-fun b!4850312 () Bool)

(declare-fun e!3031996 () Option!13694)

(assert (=> b!4850312 (= e!3031996 (getValueByKey!2739 (t!363201 (toList!7871 lm!2646)) (_1!32942 (h!62018 (toList!7871 lm!2646)))))))

(declare-fun b!4850310 () Bool)

(declare-fun e!3031995 () Option!13694)

(assert (=> b!4850310 (= e!3031995 (Some!13693 (_2!32942 (h!62018 (toList!7871 lm!2646)))))))

(declare-fun b!4850313 () Bool)

(assert (=> b!4850313 (= e!3031996 None!13693)))

(declare-fun d!1556826 () Bool)

(declare-fun c!825451 () Bool)

(assert (=> d!1556826 (= c!825451 (and (is-Cons!55581 (toList!7871 lm!2646)) (= (_1!32942 (h!62018 (toList!7871 lm!2646))) (_1!32942 (h!62018 (toList!7871 lm!2646))))))))

(assert (=> d!1556826 (= (getValueByKey!2739 (toList!7871 lm!2646) (_1!32942 (h!62018 (toList!7871 lm!2646)))) e!3031995)))

(declare-fun b!4850311 () Bool)

(assert (=> b!4850311 (= e!3031995 e!3031996)))

(declare-fun c!825452 () Bool)

(assert (=> b!4850311 (= c!825452 (and (is-Cons!55581 (toList!7871 lm!2646)) (not (= (_1!32942 (h!62018 (toList!7871 lm!2646))) (_1!32942 (h!62018 (toList!7871 lm!2646)))))))))

(assert (= (and d!1556826 c!825451) b!4850310))

(assert (= (and d!1556826 (not c!825451)) b!4850311))

(assert (= (and b!4850311 c!825452) b!4850312))

(assert (= (and b!4850311 (not c!825452)) b!4850313))

(declare-fun m!5848796 () Bool)

(assert (=> b!4850312 m!5848796))

(assert (=> d!1556734 d!1556826))

(declare-fun d!1556828 () Bool)

(declare-fun choose!35501 (Hashable!7511 K!17382) (_ BitVec 64))

(assert (=> d!1556828 (= (hash!5629 hashF!1641 key!6445) (choose!35501 hashF!1641 key!6445))))

(declare-fun bs!1172859 () Bool)

(assert (= bs!1172859 d!1556828))

(declare-fun m!5848798 () Bool)

(assert (=> bs!1172859 m!5848798))

(assert (=> d!1556770 d!1556828))

(declare-fun d!1556830 () Bool)

(assert (=> d!1556830 (= (get!19059 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552)) (v!49478 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552)))))

(assert (=> d!1556710 d!1556830))

(declare-fun b!4850316 () Bool)

(declare-fun e!3031998 () Option!13694)

(assert (=> b!4850316 (= e!3031998 (getValueByKey!2739 (t!363201 (toList!7871 lm!2646)) lt!1989552))))

(declare-fun b!4850314 () Bool)

(declare-fun e!3031997 () Option!13694)

(assert (=> b!4850314 (= e!3031997 (Some!13693 (_2!32942 (h!62018 (toList!7871 lm!2646)))))))

(declare-fun b!4850317 () Bool)

(assert (=> b!4850317 (= e!3031998 None!13693)))

(declare-fun d!1556832 () Bool)

(declare-fun c!825453 () Bool)

(assert (=> d!1556832 (= c!825453 (and (is-Cons!55581 (toList!7871 lm!2646)) (= (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552)))))

(assert (=> d!1556832 (= (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552) e!3031997)))

(declare-fun b!4850315 () Bool)

(assert (=> b!4850315 (= e!3031997 e!3031998)))

(declare-fun c!825454 () Bool)

(assert (=> b!4850315 (= c!825454 (and (is-Cons!55581 (toList!7871 lm!2646)) (not (= (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552))))))

(assert (= (and d!1556832 c!825453) b!4850314))

(assert (= (and d!1556832 (not c!825453)) b!4850315))

(assert (= (and b!4850315 c!825454) b!4850316))

(assert (= (and b!4850315 (not c!825454)) b!4850317))

(declare-fun m!5848800 () Bool)

(assert (=> b!4850316 m!5848800))

(assert (=> d!1556710 d!1556832))

(declare-fun d!1556834 () Bool)

(declare-fun res!2070056 () Bool)

(declare-fun e!3031999 () Bool)

(assert (=> d!1556834 (=> res!2070056 e!3031999)))

(assert (=> d!1556834 (= res!2070056 (and (is-Cons!55580 lt!1989557) (= (_1!32941 (h!62017 lt!1989557)) key!6445)))))

(assert (=> d!1556834 (= (containsKey!4703 lt!1989557 key!6445) e!3031999)))

(declare-fun b!4850318 () Bool)

(declare-fun e!3032000 () Bool)

(assert (=> b!4850318 (= e!3031999 e!3032000)))

(declare-fun res!2070057 () Bool)

(assert (=> b!4850318 (=> (not res!2070057) (not e!3032000))))

(assert (=> b!4850318 (= res!2070057 (is-Cons!55580 lt!1989557))))

(declare-fun b!4850319 () Bool)

(assert (=> b!4850319 (= e!3032000 (containsKey!4703 (t!363200 lt!1989557) key!6445))))

(assert (= (and d!1556834 (not res!2070056)) b!4850318))

(assert (= (and b!4850318 res!2070057) b!4850319))

(declare-fun m!5848802 () Bool)

(assert (=> b!4850319 m!5848802))

(assert (=> b!4850215 d!1556834))

(declare-fun d!1556836 () Bool)

(declare-fun c!825457 () Bool)

(assert (=> d!1556836 (= c!825457 (is-Nil!55581 (toList!7871 lt!1989554)))))

(declare-fun e!3032003 () (Set tuple2!59296))

(assert (=> d!1556836 (= (content!9897 (toList!7871 lt!1989554)) e!3032003)))

(declare-fun b!4850324 () Bool)

(assert (=> b!4850324 (= e!3032003 (as set.empty (Set tuple2!59296)))))

(declare-fun b!4850325 () Bool)

(assert (=> b!4850325 (= e!3032003 (set.union (set.insert (h!62018 (toList!7871 lt!1989554)) (as set.empty (Set tuple2!59296))) (content!9897 (t!363201 (toList!7871 lt!1989554)))))))

(assert (= (and d!1556836 c!825457) b!4850324))

(assert (= (and d!1556836 (not c!825457)) b!4850325))

(declare-fun m!5848804 () Bool)

(assert (=> b!4850325 m!5848804))

(declare-fun m!5848806 () Bool)

(assert (=> b!4850325 m!5848806))

(assert (=> d!1556748 d!1556836))

(declare-fun d!1556838 () Bool)

(declare-fun res!2070058 () Bool)

(declare-fun e!3032004 () Bool)

(assert (=> d!1556838 (=> res!2070058 e!3032004)))

(assert (=> d!1556838 (= res!2070058 (is-Nil!55581 (t!363201 (toList!7871 lm!2646))))))

(assert (=> d!1556838 (= (forall!12964 (t!363201 (toList!7871 lm!2646)) lambda!242695) e!3032004)))

(declare-fun b!4850326 () Bool)

(declare-fun e!3032005 () Bool)

(assert (=> b!4850326 (= e!3032004 e!3032005)))

(declare-fun res!2070059 () Bool)

(assert (=> b!4850326 (=> (not res!2070059) (not e!3032005))))

(assert (=> b!4850326 (= res!2070059 (dynLambda!22365 lambda!242695 (h!62018 (t!363201 (toList!7871 lm!2646)))))))

(declare-fun b!4850327 () Bool)

(assert (=> b!4850327 (= e!3032005 (forall!12964 (t!363201 (t!363201 (toList!7871 lm!2646))) lambda!242695))))

(assert (= (and d!1556838 (not res!2070058)) b!4850326))

(assert (= (and b!4850326 res!2070059) b!4850327))

(declare-fun b_lambda!192899 () Bool)

(assert (=> (not b_lambda!192899) (not b!4850326)))

(declare-fun m!5848808 () Bool)

(assert (=> b!4850326 m!5848808))

(declare-fun m!5848810 () Bool)

(assert (=> b!4850327 m!5848810))

(assert (=> b!4850190 d!1556838))

(declare-fun d!1556840 () Bool)

(assert (=> d!1556840 (isDefined!10786 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552))))

(declare-fun lt!1989675 () Unit!145730)

(declare-fun choose!35502 (List!55705 (_ BitVec 64)) Unit!145730)

(assert (=> d!1556840 (= lt!1989675 (choose!35502 (toList!7871 lm!2646) lt!1989552))))

(declare-fun e!3032008 () Bool)

(assert (=> d!1556840 e!3032008))

(declare-fun res!2070062 () Bool)

(assert (=> d!1556840 (=> (not res!2070062) (not e!3032008))))

(assert (=> d!1556840 (= res!2070062 (isStrictlySorted!1088 (toList!7871 lm!2646)))))

(assert (=> d!1556840 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2511 (toList!7871 lm!2646) lt!1989552) lt!1989675)))

(declare-fun b!4850330 () Bool)

(assert (=> b!4850330 (= e!3032008 (containsKey!4705 (toList!7871 lm!2646) lt!1989552))))

(assert (= (and d!1556840 res!2070062) b!4850330))

(assert (=> d!1556840 m!5848568))

(assert (=> d!1556840 m!5848568))

(assert (=> d!1556840 m!5848682))

(declare-fun m!5848812 () Bool)

(assert (=> d!1556840 m!5848812))

(assert (=> d!1556840 m!5848610))

(assert (=> b!4850330 m!5848678))

(assert (=> b!4850230 d!1556840))

(declare-fun d!1556842 () Bool)

(declare-fun isEmpty!29750 (Option!13694) Bool)

(assert (=> d!1556842 (= (isDefined!10786 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552)) (not (isEmpty!29750 (getValueByKey!2739 (toList!7871 lm!2646) lt!1989552))))))

(declare-fun bs!1172860 () Bool)

(assert (= bs!1172860 d!1556842))

(assert (=> bs!1172860 m!5848568))

(declare-fun m!5848814 () Bool)

(assert (=> bs!1172860 m!5848814))

(assert (=> b!4850230 d!1556842))

(assert (=> b!4850230 d!1556832))

(declare-fun d!1556844 () Bool)

(declare-fun res!2070067 () Bool)

(declare-fun e!3032013 () Bool)

(assert (=> d!1556844 (=> res!2070067 e!3032013)))

(assert (=> d!1556844 (= res!2070067 (not (is-Cons!55580 (_2!32942 lt!1989560))))))

(assert (=> d!1556844 (= (noDuplicateKeys!2599 (_2!32942 lt!1989560)) e!3032013)))

(declare-fun b!4850335 () Bool)

(declare-fun e!3032014 () Bool)

(assert (=> b!4850335 (= e!3032013 e!3032014)))

(declare-fun res!2070068 () Bool)

(assert (=> b!4850335 (=> (not res!2070068) (not e!3032014))))

(assert (=> b!4850335 (= res!2070068 (not (containsKey!4703 (t!363200 (_2!32942 lt!1989560)) (_1!32941 (h!62017 (_2!32942 lt!1989560))))))))

(declare-fun b!4850336 () Bool)

(assert (=> b!4850336 (= e!3032014 (noDuplicateKeys!2599 (t!363200 (_2!32942 lt!1989560))))))

(assert (= (and d!1556844 (not res!2070067)) b!4850335))

(assert (= (and b!4850335 res!2070068) b!4850336))

(declare-fun m!5848816 () Bool)

(assert (=> b!4850335 m!5848816))

(declare-fun m!5848818 () Bool)

(assert (=> b!4850336 m!5848818))

(assert (=> bs!1172841 d!1556844))

(assert (=> b!4850232 d!1556842))

(assert (=> b!4850232 d!1556832))

(declare-fun d!1556846 () Bool)

(declare-fun res!2070073 () Bool)

(declare-fun e!3032019 () Bool)

(assert (=> d!1556846 (=> res!2070073 e!3032019)))

(assert (=> d!1556846 (= res!2070073 (and (is-Cons!55581 (toList!7871 lt!1989554)) (= (_1!32942 (h!62018 (toList!7871 lt!1989554))) lt!1989552)))))

(assert (=> d!1556846 (= (containsKey!4705 (toList!7871 lt!1989554) lt!1989552) e!3032019)))

(declare-fun b!4850341 () Bool)

(declare-fun e!3032020 () Bool)

(assert (=> b!4850341 (= e!3032019 e!3032020)))

(declare-fun res!2070074 () Bool)

(assert (=> b!4850341 (=> (not res!2070074) (not e!3032020))))

(assert (=> b!4850341 (= res!2070074 (and (or (not (is-Cons!55581 (toList!7871 lt!1989554))) (bvsle (_1!32942 (h!62018 (toList!7871 lt!1989554))) lt!1989552)) (is-Cons!55581 (toList!7871 lt!1989554)) (bvslt (_1!32942 (h!62018 (toList!7871 lt!1989554))) lt!1989552)))))

(declare-fun b!4850342 () Bool)

(assert (=> b!4850342 (= e!3032020 (containsKey!4705 (t!363201 (toList!7871 lt!1989554)) lt!1989552))))

(assert (= (and d!1556846 (not res!2070073)) b!4850341))

(assert (= (and b!4850341 res!2070074) b!4850342))

(declare-fun m!5848820 () Bool)

(assert (=> b!4850342 m!5848820))

(assert (=> d!1556700 d!1556846))

(declare-fun d!1556848 () Bool)

(assert (=> d!1556848 (= (isDefined!10784 lt!1989622) (not (isEmpty!29748 lt!1989622)))))

(declare-fun bs!1172861 () Bool)

(assert (= bs!1172861 d!1556848))

(assert (=> bs!1172861 m!5848596))

(assert (=> b!4850179 d!1556848))

(declare-fun d!1556850 () Bool)

(assert (=> d!1556850 (= (get!19060 lt!1989622) (v!49475 lt!1989622))))

(assert (=> b!4850177 d!1556850))

(declare-fun d!1556852 () Bool)

(declare-fun res!2070079 () Bool)

(declare-fun e!3032025 () Bool)

(assert (=> d!1556852 (=> res!2070079 e!3032025)))

(assert (=> d!1556852 (= res!2070079 (or (is-Nil!55581 (toList!7871 lm!2646)) (is-Nil!55581 (t!363201 (toList!7871 lm!2646)))))))

(assert (=> d!1556852 (= (isStrictlySorted!1088 (toList!7871 lm!2646)) e!3032025)))

(declare-fun b!4850347 () Bool)

(declare-fun e!3032026 () Bool)

(assert (=> b!4850347 (= e!3032025 e!3032026)))

(declare-fun res!2070080 () Bool)

(assert (=> b!4850347 (=> (not res!2070080) (not e!3032026))))

(assert (=> b!4850347 (= res!2070080 (bvslt (_1!32942 (h!62018 (toList!7871 lm!2646))) (_1!32942 (h!62018 (t!363201 (toList!7871 lm!2646))))))))

(declare-fun b!4850348 () Bool)

(assert (=> b!4850348 (= e!3032026 (isStrictlySorted!1088 (t!363201 (toList!7871 lm!2646))))))

(assert (= (and d!1556852 (not res!2070079)) b!4850347))

(assert (= (and b!4850347 res!2070080) b!4850348))

(declare-fun m!5848822 () Bool)

(assert (=> b!4850348 m!5848822))

(assert (=> d!1556728 d!1556852))

(declare-fun b!4850349 () Bool)

(declare-fun res!2070082 () Bool)

(declare-fun e!3032029 () Bool)

(assert (=> b!4850349 (=> (not res!2070082) (not e!3032029))))

(declare-fun lt!1989676 () Option!13692)

(assert (=> b!4850349 (= res!2070082 (= (_1!32941 (get!19060 lt!1989676)) key!6445))))

(declare-fun b!4850350 () Bool)

(declare-fun e!3032031 () Option!13692)

(assert (=> b!4850350 (= e!3032031 (Some!13691 (h!62017 (t!363200 lt!1989561))))))

(declare-fun b!4850352 () Bool)

(declare-fun e!3032028 () Option!13692)

(assert (=> b!4850352 (= e!3032031 e!3032028)))

(declare-fun c!825458 () Bool)

(assert (=> b!4850352 (= c!825458 (is-Cons!55580 (t!363200 lt!1989561)))))

(declare-fun b!4850353 () Bool)

(assert (=> b!4850353 (= e!3032028 (getPair!1101 (t!363200 (t!363200 lt!1989561)) key!6445))))

(declare-fun b!4850354 () Bool)

(declare-fun e!3032027 () Bool)

(assert (=> b!4850354 (= e!3032027 (not (containsKey!4703 (t!363200 lt!1989561) key!6445)))))

(declare-fun b!4850355 () Bool)

(assert (=> b!4850355 (= e!3032029 (contains!19249 (t!363200 lt!1989561) (get!19060 lt!1989676)))))

(declare-fun b!4850356 () Bool)

(assert (=> b!4850356 (= e!3032028 None!13691)))

(declare-fun b!4850351 () Bool)

(declare-fun e!3032030 () Bool)

(assert (=> b!4850351 (= e!3032030 e!3032029)))

(declare-fun res!2070083 () Bool)

(assert (=> b!4850351 (=> (not res!2070083) (not e!3032029))))

(assert (=> b!4850351 (= res!2070083 (isDefined!10784 lt!1989676))))

(declare-fun d!1556854 () Bool)

(assert (=> d!1556854 e!3032030))

(declare-fun res!2070084 () Bool)

(assert (=> d!1556854 (=> res!2070084 e!3032030)))

(assert (=> d!1556854 (= res!2070084 e!3032027)))

(declare-fun res!2070081 () Bool)

(assert (=> d!1556854 (=> (not res!2070081) (not e!3032027))))

(assert (=> d!1556854 (= res!2070081 (isEmpty!29748 lt!1989676))))

(assert (=> d!1556854 (= lt!1989676 e!3032031)))

(declare-fun c!825459 () Bool)

(assert (=> d!1556854 (= c!825459 (and (is-Cons!55580 (t!363200 lt!1989561)) (= (_1!32941 (h!62017 (t!363200 lt!1989561))) key!6445)))))

(assert (=> d!1556854 (noDuplicateKeys!2599 (t!363200 lt!1989561))))

(assert (=> d!1556854 (= (getPair!1101 (t!363200 lt!1989561) key!6445) lt!1989676)))

(assert (= (and d!1556854 c!825459) b!4850350))

(assert (= (and d!1556854 (not c!825459)) b!4850352))

(assert (= (and b!4850352 c!825458) b!4850353))

(assert (= (and b!4850352 (not c!825458)) b!4850356))

(assert (= (and d!1556854 res!2070081) b!4850354))

(assert (= (and d!1556854 (not res!2070084)) b!4850351))

(assert (= (and b!4850351 res!2070083) b!4850349))

(assert (= (and b!4850349 res!2070082) b!4850355))

(declare-fun m!5848824 () Bool)

(assert (=> b!4850354 m!5848824))

(declare-fun m!5848826 () Bool)

(assert (=> b!4850353 m!5848826))

(declare-fun m!5848828 () Bool)

(assert (=> b!4850355 m!5848828))

(assert (=> b!4850355 m!5848828))

(declare-fun m!5848830 () Bool)

(assert (=> b!4850355 m!5848830))

(assert (=> b!4850349 m!5848828))

(declare-fun m!5848832 () Bool)

(assert (=> d!1556854 m!5848832))

(declare-fun m!5848834 () Bool)

(assert (=> d!1556854 m!5848834))

(declare-fun m!5848836 () Bool)

(assert (=> b!4850351 m!5848836))

(assert (=> b!4850181 d!1556854))

(assert (=> b!4850146 d!1556714))

(declare-fun d!1556856 () Bool)

(assert (=> d!1556856 (= (get!19060 lt!1989628) (v!49475 lt!1989628))))

(assert (=> b!4850210 d!1556856))

(declare-fun d!1556858 () Bool)

(declare-fun lt!1989677 () Int)

(assert (=> d!1556858 (>= lt!1989677 0)))

(declare-fun e!3032032 () Int)

(assert (=> d!1556858 (= lt!1989677 e!3032032)))

(declare-fun c!825460 () Bool)

(assert (=> d!1556858 (= c!825460 (is-Nil!55581 (t!363201 (toList!7871 lm!2646))))))

(assert (=> d!1556858 (= (size!36645 (t!363201 (toList!7871 lm!2646))) lt!1989677)))

(declare-fun b!4850357 () Bool)

(assert (=> b!4850357 (= e!3032032 0)))

(declare-fun b!4850358 () Bool)

(assert (=> b!4850358 (= e!3032032 (+ 1 (size!36645 (t!363201 (t!363201 (toList!7871 lm!2646))))))))

(assert (= (and d!1556858 c!825460) b!4850357))

(assert (= (and d!1556858 (not c!825460)) b!4850358))

(declare-fun m!5848838 () Bool)

(assert (=> b!4850358 m!5848838))

(assert (=> b!4850229 d!1556858))

(declare-fun d!1556860 () Bool)

(assert (=> d!1556860 (isDefined!10786 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552))))

(declare-fun lt!1989678 () Unit!145730)

(assert (=> d!1556860 (= lt!1989678 (choose!35502 (toList!7871 lt!1989554) lt!1989552))))

(declare-fun e!3032033 () Bool)

(assert (=> d!1556860 e!3032033))

(declare-fun res!2070085 () Bool)

(assert (=> d!1556860 (=> (not res!2070085) (not e!3032033))))

(assert (=> d!1556860 (= res!2070085 (isStrictlySorted!1088 (toList!7871 lt!1989554)))))

(assert (=> d!1556860 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2511 (toList!7871 lt!1989554) lt!1989552) lt!1989678)))

(declare-fun b!4850359 () Bool)

(assert (=> b!4850359 (= e!3032033 (containsKey!4705 (toList!7871 lt!1989554) lt!1989552))))

(assert (= (and d!1556860 res!2070085) b!4850359))

(assert (=> d!1556860 m!5848556))

(assert (=> d!1556860 m!5848556))

(assert (=> d!1556860 m!5848558))

(declare-fun m!5848840 () Bool)

(assert (=> d!1556860 m!5848840))

(declare-fun m!5848842 () Bool)

(assert (=> d!1556860 m!5848842))

(assert (=> b!4850359 m!5848552))

(assert (=> b!4850136 d!1556860))

(declare-fun d!1556862 () Bool)

(assert (=> d!1556862 (= (isDefined!10786 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552)) (not (isEmpty!29750 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552))))))

(declare-fun bs!1172862 () Bool)

(assert (= bs!1172862 d!1556862))

(assert (=> bs!1172862 m!5848556))

(declare-fun m!5848844 () Bool)

(assert (=> bs!1172862 m!5848844))

(assert (=> b!4850136 d!1556862))

(declare-fun b!4850362 () Bool)

(declare-fun e!3032035 () Option!13694)

(assert (=> b!4850362 (= e!3032035 (getValueByKey!2739 (t!363201 (toList!7871 lt!1989554)) lt!1989552))))

(declare-fun b!4850360 () Bool)

(declare-fun e!3032034 () Option!13694)

(assert (=> b!4850360 (= e!3032034 (Some!13693 (_2!32942 (h!62018 (toList!7871 lt!1989554)))))))

(declare-fun b!4850363 () Bool)

(assert (=> b!4850363 (= e!3032035 None!13693)))

(declare-fun d!1556864 () Bool)

(declare-fun c!825461 () Bool)

(assert (=> d!1556864 (= c!825461 (and (is-Cons!55581 (toList!7871 lt!1989554)) (= (_1!32942 (h!62018 (toList!7871 lt!1989554))) lt!1989552)))))

(assert (=> d!1556864 (= (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552) e!3032034)))

(declare-fun b!4850361 () Bool)

(assert (=> b!4850361 (= e!3032034 e!3032035)))

(declare-fun c!825462 () Bool)

(assert (=> b!4850361 (= c!825462 (and (is-Cons!55581 (toList!7871 lt!1989554)) (not (= (_1!32942 (h!62018 (toList!7871 lt!1989554))) lt!1989552))))))

(assert (= (and d!1556864 c!825461) b!4850360))

(assert (= (and d!1556864 (not c!825461)) b!4850361))

(assert (= (and b!4850361 c!825462) b!4850362))

(assert (= (and b!4850361 (not c!825462)) b!4850363))

(declare-fun m!5848846 () Bool)

(assert (=> b!4850362 m!5848846))

(assert (=> b!4850136 d!1556864))

(declare-fun d!1556866 () Bool)

(assert (=> d!1556866 (= (get!19059 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552)) (v!49478 (getValueByKey!2739 (toList!7871 lt!1989554) lt!1989552)))))

(assert (=> d!1556746 d!1556866))

(assert (=> d!1556746 d!1556864))

(declare-fun d!1556868 () Bool)

(declare-fun lt!1989681 () Bool)

(declare-fun content!9899 (List!55704) (Set tuple2!59294))

(assert (=> d!1556868 (= lt!1989681 (set.member (get!19060 lt!1989622) (content!9899 lt!1989561)))))

(declare-fun e!3032041 () Bool)

(assert (=> d!1556868 (= lt!1989681 e!3032041)))

(declare-fun res!2070091 () Bool)

(assert (=> d!1556868 (=> (not res!2070091) (not e!3032041))))

(assert (=> d!1556868 (= res!2070091 (is-Cons!55580 lt!1989561))))

(assert (=> d!1556868 (= (contains!19249 lt!1989561 (get!19060 lt!1989622)) lt!1989681)))

(declare-fun b!4850368 () Bool)

(declare-fun e!3032040 () Bool)

(assert (=> b!4850368 (= e!3032041 e!3032040)))

(declare-fun res!2070090 () Bool)

(assert (=> b!4850368 (=> res!2070090 e!3032040)))

(assert (=> b!4850368 (= res!2070090 (= (h!62017 lt!1989561) (get!19060 lt!1989622)))))

(declare-fun b!4850369 () Bool)

(assert (=> b!4850369 (= e!3032040 (contains!19249 (t!363200 lt!1989561) (get!19060 lt!1989622)))))

(assert (= (and d!1556868 res!2070091) b!4850368))

(assert (= (and b!4850368 (not res!2070090)) b!4850369))

(declare-fun m!5848848 () Bool)

(assert (=> d!1556868 m!5848848))

(assert (=> d!1556868 m!5848592))

(declare-fun m!5848850 () Bool)

(assert (=> d!1556868 m!5848850))

(assert (=> b!4850369 m!5848592))

(declare-fun m!5848852 () Bool)

(assert (=> b!4850369 m!5848852))

(assert (=> b!4850183 d!1556868))

(assert (=> b!4850183 d!1556850))

(declare-fun d!1556870 () Bool)

(declare-fun lt!1989682 () Bool)

(assert (=> d!1556870 (= lt!1989682 (set.member (tuple2!59297 lt!1989552 lt!1989557) (content!9897 (toList!7871 lt!1989554))))))

(declare-fun e!3032043 () Bool)

(assert (=> d!1556870 (= lt!1989682 e!3032043)))

(declare-fun res!2070093 () Bool)

(assert (=> d!1556870 (=> (not res!2070093) (not e!3032043))))

(assert (=> d!1556870 (= res!2070093 (is-Cons!55581 (toList!7871 lt!1989554)))))

(assert (=> d!1556870 (= (contains!19246 (toList!7871 lt!1989554) (tuple2!59297 lt!1989552 lt!1989557)) lt!1989682)))

(declare-fun b!4850370 () Bool)

(declare-fun e!3032042 () Bool)

(assert (=> b!4850370 (= e!3032043 e!3032042)))

(declare-fun res!2070092 () Bool)

(assert (=> b!4850370 (=> res!2070092 e!3032042)))

(assert (=> b!4850370 (= res!2070092 (= (h!62018 (toList!7871 lt!1989554)) (tuple2!59297 lt!1989552 lt!1989557)))))

(declare-fun b!4850371 () Bool)

(assert (=> b!4850371 (= e!3032042 (contains!19246 (t!363201 (toList!7871 lt!1989554)) (tuple2!59297 lt!1989552 lt!1989557)))))

(assert (= (and d!1556870 res!2070093) b!4850370))

(assert (= (and b!4850370 (not res!2070092)) b!4850371))

(assert (=> d!1556870 m!5848638))

(declare-fun m!5848854 () Bool)

(assert (=> d!1556870 m!5848854))

(declare-fun m!5848856 () Bool)

(assert (=> b!4850371 m!5848856))

(assert (=> d!1556754 d!1556870))

(declare-fun d!1556872 () Bool)

(assert (=> d!1556872 (contains!19246 (toList!7871 lt!1989554) (tuple2!59297 lt!1989552 lt!1989557))))

(assert (=> d!1556872 true))

(declare-fun _$41!575 () Unit!145730)

(assert (=> d!1556872 (= (choose!35495 lt!1989554 lt!1989552 lt!1989557) _$41!575)))

(declare-fun bs!1172863 () Bool)

(assert (= bs!1172863 d!1556872))

(assert (=> bs!1172863 m!5848660))

(assert (=> d!1556754 d!1556872))

(assert (=> d!1556754 d!1556700))

(declare-fun d!1556874 () Bool)

(assert (=> d!1556874 (= (isDefined!10784 lt!1989628) (not (isEmpty!29748 lt!1989628)))))

(declare-fun bs!1172864 () Bool)

(assert (= bs!1172864 d!1556874))

(assert (=> bs!1172864 m!5848654))

(assert (=> b!4850212 d!1556874))

(declare-fun d!1556876 () Bool)

(declare-fun lt!1989683 () Bool)

(assert (=> d!1556876 (= lt!1989683 (set.member (get!19060 lt!1989628) (content!9899 lt!1989557)))))

(declare-fun e!3032045 () Bool)

(assert (=> d!1556876 (= lt!1989683 e!3032045)))

(declare-fun res!2070095 () Bool)

(assert (=> d!1556876 (=> (not res!2070095) (not e!3032045))))

(assert (=> d!1556876 (= res!2070095 (is-Cons!55580 lt!1989557))))

(assert (=> d!1556876 (= (contains!19249 lt!1989557 (get!19060 lt!1989628)) lt!1989683)))

(declare-fun b!4850373 () Bool)

(declare-fun e!3032044 () Bool)

(assert (=> b!4850373 (= e!3032045 e!3032044)))

(declare-fun res!2070094 () Bool)

(assert (=> b!4850373 (=> res!2070094 e!3032044)))

(assert (=> b!4850373 (= res!2070094 (= (h!62017 lt!1989557) (get!19060 lt!1989628)))))

(declare-fun b!4850374 () Bool)

(assert (=> b!4850374 (= e!3032044 (contains!19249 (t!363200 lt!1989557) (get!19060 lt!1989628)))))

(assert (= (and d!1556876 res!2070095) b!4850373))

(assert (= (and b!4850373 (not res!2070094)) b!4850374))

(declare-fun m!5848858 () Bool)

(assert (=> d!1556876 m!5848858))

(assert (=> d!1556876 m!5848650))

(declare-fun m!5848860 () Bool)

(assert (=> d!1556876 m!5848860))

(assert (=> b!4850374 m!5848650))

(declare-fun m!5848862 () Bool)

(assert (=> b!4850374 m!5848862))

(assert (=> b!4850216 d!1556876))

(assert (=> b!4850216 d!1556856))

(declare-fun d!1556878 () Bool)

(declare-fun res!2070096 () Bool)

(declare-fun e!3032046 () Bool)

(assert (=> d!1556878 (=> res!2070096 e!3032046)))

(assert (=> d!1556878 (= res!2070096 (not (is-Cons!55580 (_2!32942 (h!62018 (toList!7871 lt!1989554))))))))

(assert (=> d!1556878 (= (noDuplicateKeys!2599 (_2!32942 (h!62018 (toList!7871 lt!1989554)))) e!3032046)))

(declare-fun b!4850375 () Bool)

(declare-fun e!3032047 () Bool)

(assert (=> b!4850375 (= e!3032046 e!3032047)))

(declare-fun res!2070097 () Bool)

(assert (=> b!4850375 (=> (not res!2070097) (not e!3032047))))

(assert (=> b!4850375 (= res!2070097 (not (containsKey!4703 (t!363200 (_2!32942 (h!62018 (toList!7871 lt!1989554)))) (_1!32941 (h!62017 (_2!32942 (h!62018 (toList!7871 lt!1989554))))))))))

(declare-fun b!4850376 () Bool)

(assert (=> b!4850376 (= e!3032047 (noDuplicateKeys!2599 (t!363200 (_2!32942 (h!62018 (toList!7871 lt!1989554))))))))

(assert (= (and d!1556878 (not res!2070096)) b!4850375))

(assert (= (and b!4850375 res!2070097) b!4850376))

(declare-fun m!5848864 () Bool)

(assert (=> b!4850375 m!5848864))

(declare-fun m!5848866 () Bool)

(assert (=> b!4850376 m!5848866))

(assert (=> bs!1172840 d!1556878))

(assert (=> b!4850138 d!1556862))

(assert (=> b!4850138 d!1556864))

(declare-fun d!1556880 () Bool)

(declare-fun res!2070098 () Bool)

(declare-fun e!3032048 () Bool)

(assert (=> d!1556880 (=> res!2070098 e!3032048)))

(assert (=> d!1556880 (= res!2070098 (and (is-Cons!55580 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646))))) (= (_1!32941 (h!62017 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646)))))) key!6445)))))

(assert (=> d!1556880 (= (containsKey!4703 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646)))) key!6445) e!3032048)))

(declare-fun b!4850377 () Bool)

(declare-fun e!3032049 () Bool)

(assert (=> b!4850377 (= e!3032048 e!3032049)))

(declare-fun res!2070099 () Bool)

(assert (=> b!4850377 (=> (not res!2070099) (not e!3032049))))

(assert (=> b!4850377 (= res!2070099 (is-Cons!55580 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646))))))))

(declare-fun b!4850378 () Bool)

(assert (=> b!4850378 (= e!3032049 (containsKey!4703 (t!363200 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646))))) key!6445))))

(assert (= (and d!1556880 (not res!2070098)) b!4850377))

(assert (= (and b!4850377 res!2070099) b!4850378))

(declare-fun m!5848868 () Bool)

(assert (=> b!4850378 m!5848868))

(assert (=> b!4850200 d!1556880))

(declare-fun b!4850379 () Bool)

(declare-fun res!2070101 () Bool)

(declare-fun e!3032052 () Bool)

(assert (=> b!4850379 (=> (not res!2070101) (not e!3032052))))

(declare-fun lt!1989684 () Option!13692)

(assert (=> b!4850379 (= res!2070101 (= (_1!32941 (get!19060 lt!1989684)) key!6445))))

(declare-fun b!4850380 () Bool)

(declare-fun e!3032054 () Option!13692)

(assert (=> b!4850380 (= e!3032054 (Some!13691 (h!62017 (t!363200 lt!1989557))))))

(declare-fun b!4850382 () Bool)

(declare-fun e!3032051 () Option!13692)

(assert (=> b!4850382 (= e!3032054 e!3032051)))

(declare-fun c!825463 () Bool)

(assert (=> b!4850382 (= c!825463 (is-Cons!55580 (t!363200 lt!1989557)))))

(declare-fun b!4850383 () Bool)

(assert (=> b!4850383 (= e!3032051 (getPair!1101 (t!363200 (t!363200 lt!1989557)) key!6445))))

(declare-fun b!4850384 () Bool)

(declare-fun e!3032050 () Bool)

(assert (=> b!4850384 (= e!3032050 (not (containsKey!4703 (t!363200 lt!1989557) key!6445)))))

(declare-fun b!4850385 () Bool)

(assert (=> b!4850385 (= e!3032052 (contains!19249 (t!363200 lt!1989557) (get!19060 lt!1989684)))))

(declare-fun b!4850386 () Bool)

(assert (=> b!4850386 (= e!3032051 None!13691)))

(declare-fun b!4850381 () Bool)

(declare-fun e!3032053 () Bool)

(assert (=> b!4850381 (= e!3032053 e!3032052)))

(declare-fun res!2070102 () Bool)

(assert (=> b!4850381 (=> (not res!2070102) (not e!3032052))))

(assert (=> b!4850381 (= res!2070102 (isDefined!10784 lt!1989684))))

(declare-fun d!1556882 () Bool)

(assert (=> d!1556882 e!3032053))

(declare-fun res!2070103 () Bool)

(assert (=> d!1556882 (=> res!2070103 e!3032053)))

(assert (=> d!1556882 (= res!2070103 e!3032050)))

(declare-fun res!2070100 () Bool)

(assert (=> d!1556882 (=> (not res!2070100) (not e!3032050))))

(assert (=> d!1556882 (= res!2070100 (isEmpty!29748 lt!1989684))))

(assert (=> d!1556882 (= lt!1989684 e!3032054)))

(declare-fun c!825464 () Bool)

(assert (=> d!1556882 (= c!825464 (and (is-Cons!55580 (t!363200 lt!1989557)) (= (_1!32941 (h!62017 (t!363200 lt!1989557))) key!6445)))))

(assert (=> d!1556882 (noDuplicateKeys!2599 (t!363200 lt!1989557))))

(assert (=> d!1556882 (= (getPair!1101 (t!363200 lt!1989557) key!6445) lt!1989684)))

(assert (= (and d!1556882 c!825464) b!4850380))

(assert (= (and d!1556882 (not c!825464)) b!4850382))

(assert (= (and b!4850382 c!825463) b!4850383))

(assert (= (and b!4850382 (not c!825463)) b!4850386))

(assert (= (and d!1556882 res!2070100) b!4850384))

(assert (= (and d!1556882 (not res!2070103)) b!4850381))

(assert (= (and b!4850381 res!2070102) b!4850379))

(assert (= (and b!4850379 res!2070101) b!4850385))

(assert (=> b!4850384 m!5848802))

(declare-fun m!5848870 () Bool)

(assert (=> b!4850383 m!5848870))

(declare-fun m!5848872 () Bool)

(assert (=> b!4850385 m!5848872))

(assert (=> b!4850385 m!5848872))

(declare-fun m!5848874 () Bool)

(assert (=> b!4850385 m!5848874))

(assert (=> b!4850379 m!5848872))

(declare-fun m!5848876 () Bool)

(assert (=> d!1556882 m!5848876))

(declare-fun m!5848878 () Bool)

(assert (=> d!1556882 m!5848878))

(declare-fun m!5848880 () Bool)

(assert (=> b!4850381 m!5848880))

(assert (=> b!4850214 d!1556882))

(declare-fun d!1556884 () Bool)

(declare-fun res!2070104 () Bool)

(declare-fun e!3032055 () Bool)

(assert (=> d!1556884 (=> res!2070104 e!3032055)))

(assert (=> d!1556884 (= res!2070104 (and (is-Cons!55581 (toList!7871 lm!2646)) (= (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552)))))

(assert (=> d!1556884 (= (containsKey!4705 (toList!7871 lm!2646) lt!1989552) e!3032055)))

(declare-fun b!4850387 () Bool)

(declare-fun e!3032056 () Bool)

(assert (=> b!4850387 (= e!3032055 e!3032056)))

(declare-fun res!2070105 () Bool)

(assert (=> b!4850387 (=> (not res!2070105) (not e!3032056))))

(assert (=> b!4850387 (= res!2070105 (and (or (not (is-Cons!55581 (toList!7871 lm!2646))) (bvsle (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552)) (is-Cons!55581 (toList!7871 lm!2646)) (bvslt (_1!32942 (h!62018 (toList!7871 lm!2646))) lt!1989552)))))

(declare-fun b!4850388 () Bool)

(assert (=> b!4850388 (= e!3032056 (containsKey!4705 (t!363201 (toList!7871 lm!2646)) lt!1989552))))

(assert (= (and d!1556884 (not res!2070104)) b!4850387))

(assert (= (and b!4850387 res!2070105) b!4850388))

(declare-fun m!5848882 () Bool)

(assert (=> b!4850388 m!5848882))

(assert (=> d!1556768 d!1556884))

(declare-fun d!1556886 () Bool)

(declare-fun c!825465 () Bool)

(assert (=> d!1556886 (= c!825465 (is-Nil!55581 (toList!7871 lm!2646)))))

(declare-fun e!3032057 () (Set tuple2!59296))

(assert (=> d!1556886 (= (content!9897 (toList!7871 lm!2646)) e!3032057)))

(declare-fun b!4850389 () Bool)

(assert (=> b!4850389 (= e!3032057 (as set.empty (Set tuple2!59296)))))

(declare-fun b!4850390 () Bool)

(assert (=> b!4850390 (= e!3032057 (set.union (set.insert (h!62018 (toList!7871 lm!2646)) (as set.empty (Set tuple2!59296))) (content!9897 (t!363201 (toList!7871 lm!2646)))))))

(assert (= (and d!1556886 c!825465) b!4850389))

(assert (= (and d!1556886 (not c!825465)) b!4850390))

(declare-fun m!5848884 () Bool)

(assert (=> b!4850390 m!5848884))

(declare-fun m!5848886 () Bool)

(assert (=> b!4850390 m!5848886))

(assert (=> d!1556714 d!1556886))

(declare-fun d!1556888 () Bool)

(assert (=> d!1556888 (dynLambda!22365 lambda!242695 lt!1989559)))

(assert (=> d!1556888 true))

(declare-fun _$7!2496 () Unit!145730)

(assert (=> d!1556888 (= (choose!35496 (toList!7871 lt!1989554) lambda!242695 lt!1989559) _$7!2496)))

(declare-fun b_lambda!192901 () Bool)

(assert (=> (not b_lambda!192901) (not d!1556888)))

(declare-fun bs!1172865 () Bool)

(assert (= bs!1172865 d!1556888))

(assert (=> bs!1172865 m!5848628))

(assert (=> d!1556742 d!1556888))

(assert (=> d!1556742 d!1556760))

(declare-fun d!1556890 () Bool)

(declare-fun lt!1989685 () Bool)

(assert (=> d!1556890 (= lt!1989685 (set.member lt!1989560 (content!9897 (t!363201 (toList!7871 lm!2646)))))))

(declare-fun e!3032059 () Bool)

(assert (=> d!1556890 (= lt!1989685 e!3032059)))

(declare-fun res!2070107 () Bool)

(assert (=> d!1556890 (=> (not res!2070107) (not e!3032059))))

(assert (=> d!1556890 (= res!2070107 (is-Cons!55581 (t!363201 (toList!7871 lm!2646))))))

(assert (=> d!1556890 (= (contains!19246 (t!363201 (toList!7871 lm!2646)) lt!1989560) lt!1989685)))

(declare-fun b!4850391 () Bool)

(declare-fun e!3032058 () Bool)

(assert (=> b!4850391 (= e!3032059 e!3032058)))

(declare-fun res!2070106 () Bool)

(assert (=> b!4850391 (=> res!2070106 e!3032058)))

(assert (=> b!4850391 (= res!2070106 (= (h!62018 (t!363201 (toList!7871 lm!2646))) lt!1989560))))

(declare-fun b!4850392 () Bool)

(assert (=> b!4850392 (= e!3032058 (contains!19246 (t!363201 (t!363201 (toList!7871 lm!2646))) lt!1989560))))

(assert (= (and d!1556890 res!2070107) b!4850391))

(assert (= (and b!4850391 (not res!2070106)) b!4850392))

(assert (=> d!1556890 m!5848886))

(declare-fun m!5848888 () Bool)

(assert (=> d!1556890 m!5848888))

(declare-fun m!5848890 () Bool)

(assert (=> b!4850392 m!5848890))

(assert (=> b!4850154 d!1556890))

(declare-fun d!1556892 () Bool)

(assert (=> d!1556892 (= (isEmpty!29748 lt!1989628) (not (is-Some!13691 lt!1989628)))))

(assert (=> d!1556750 d!1556892))

(declare-fun d!1556894 () Bool)

(declare-fun res!2070108 () Bool)

(declare-fun e!3032060 () Bool)

(assert (=> d!1556894 (=> res!2070108 e!3032060)))

(assert (=> d!1556894 (= res!2070108 (not (is-Cons!55580 lt!1989557)))))

(assert (=> d!1556894 (= (noDuplicateKeys!2599 lt!1989557) e!3032060)))

(declare-fun b!4850393 () Bool)

(declare-fun e!3032061 () Bool)

(assert (=> b!4850393 (= e!3032060 e!3032061)))

(declare-fun res!2070109 () Bool)

(assert (=> b!4850393 (=> (not res!2070109) (not e!3032061))))

(assert (=> b!4850393 (= res!2070109 (not (containsKey!4703 (t!363200 lt!1989557) (_1!32941 (h!62017 lt!1989557)))))))

(declare-fun b!4850394 () Bool)

(assert (=> b!4850394 (= e!3032061 (noDuplicateKeys!2599 (t!363200 lt!1989557)))))

(assert (= (and d!1556894 (not res!2070108)) b!4850393))

(assert (= (and b!4850393 res!2070109) b!4850394))

(declare-fun m!5848892 () Bool)

(assert (=> b!4850393 m!5848892))

(assert (=> b!4850394 m!5848878))

(assert (=> d!1556750 d!1556894))

(assert (=> b!4850207 d!1556748))

(declare-fun d!1556896 () Bool)

(declare-fun res!2070110 () Bool)

(declare-fun e!3032062 () Bool)

(assert (=> d!1556896 (=> res!2070110 e!3032062)))

(assert (=> d!1556896 (= res!2070110 (is-Nil!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556896 (= (forall!12964 (toList!7871 lm!2646) lambda!242713) e!3032062)))

(declare-fun b!4850395 () Bool)

(declare-fun e!3032063 () Bool)

(assert (=> b!4850395 (= e!3032062 e!3032063)))

(declare-fun res!2070111 () Bool)

(assert (=> b!4850395 (=> (not res!2070111) (not e!3032063))))

(assert (=> b!4850395 (= res!2070111 (dynLambda!22365 lambda!242713 (h!62018 (toList!7871 lm!2646))))))

(declare-fun b!4850396 () Bool)

(assert (=> b!4850396 (= e!3032063 (forall!12964 (t!363201 (toList!7871 lm!2646)) lambda!242713))))

(assert (= (and d!1556896 (not res!2070110)) b!4850395))

(assert (= (and b!4850395 res!2070111) b!4850396))

(declare-fun b_lambda!192903 () Bool)

(assert (=> (not b_lambda!192903) (not b!4850395)))

(declare-fun m!5848894 () Bool)

(assert (=> b!4850395 m!5848894))

(declare-fun m!5848896 () Bool)

(assert (=> b!4850396 m!5848896))

(assert (=> d!1556756 d!1556896))

(declare-fun d!1556898 () Bool)

(declare-fun res!2070112 () Bool)

(declare-fun e!3032064 () Bool)

(assert (=> d!1556898 (=> res!2070112 e!3032064)))

(assert (=> d!1556898 (= res!2070112 (is-Nil!55581 (t!363201 (toList!7871 lt!1989554))))))

(assert (=> d!1556898 (= (forall!12964 (t!363201 (toList!7871 lt!1989554)) lambda!242695) e!3032064)))

(declare-fun b!4850397 () Bool)

(declare-fun e!3032065 () Bool)

(assert (=> b!4850397 (= e!3032064 e!3032065)))

(declare-fun res!2070113 () Bool)

(assert (=> b!4850397 (=> (not res!2070113) (not e!3032065))))

(assert (=> b!4850397 (= res!2070113 (dynLambda!22365 lambda!242695 (h!62018 (t!363201 (toList!7871 lt!1989554)))))))

(declare-fun b!4850398 () Bool)

(assert (=> b!4850398 (= e!3032065 (forall!12964 (t!363201 (t!363201 (toList!7871 lt!1989554))) lambda!242695))))

(assert (= (and d!1556898 (not res!2070112)) b!4850397))

(assert (= (and b!4850397 res!2070113) b!4850398))

(declare-fun b_lambda!192905 () Bool)

(assert (=> (not b_lambda!192905) (not b!4850397)))

(declare-fun m!5848898 () Bool)

(assert (=> b!4850397 m!5848898))

(declare-fun m!5848900 () Bool)

(assert (=> b!4850398 m!5848900))

(assert (=> b!4850221 d!1556898))

(declare-fun d!1556900 () Bool)

(declare-fun lt!1989686 () Int)

(assert (=> d!1556900 (>= lt!1989686 0)))

(declare-fun e!3032066 () Int)

(assert (=> d!1556900 (= lt!1989686 e!3032066)))

(declare-fun c!825466 () Bool)

(assert (=> d!1556900 (= c!825466 (is-Nil!55581 (t!363201 (toList!7871 lt!1989554))))))

(assert (=> d!1556900 (= (size!36645 (t!363201 (toList!7871 lt!1989554))) lt!1989686)))

(declare-fun b!4850399 () Bool)

(assert (=> b!4850399 (= e!3032066 0)))

(declare-fun b!4850400 () Bool)

(assert (=> b!4850400 (= e!3032066 (+ 1 (size!36645 (t!363201 (t!363201 (toList!7871 lt!1989554))))))))

(assert (= (and d!1556900 c!825466) b!4850399))

(assert (= (and d!1556900 (not c!825466)) b!4850400))

(declare-fun m!5848902 () Bool)

(assert (=> b!4850400 m!5848902))

(assert (=> b!4850227 d!1556900))

(assert (=> d!1556736 d!1556732))

(assert (=> d!1556736 d!1556734))

(declare-fun d!1556902 () Bool)

(assert (=> d!1556902 (not (containsKey!4703 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))) key!6445))))

(assert (=> d!1556902 true))

(declare-fun _$39!514 () Unit!145730)

(assert (=> d!1556902 (= (choose!35497 lm!2646 key!6445 (_1!32942 (h!62018 (toList!7871 lm!2646))) hashF!1641) _$39!514)))

(declare-fun bs!1172866 () Bool)

(assert (= bs!1172866 d!1556902))

(assert (=> bs!1172866 m!5848446))

(assert (=> bs!1172866 m!5848446))

(assert (=> bs!1172866 m!5848448))

(assert (=> d!1556736 d!1556902))

(declare-fun d!1556904 () Bool)

(declare-fun res!2070114 () Bool)

(declare-fun e!3032067 () Bool)

(assert (=> d!1556904 (=> res!2070114 e!3032067)))

(assert (=> d!1556904 (= res!2070114 (is-Nil!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556904 (= (forall!12964 (toList!7871 lm!2646) lambda!242710) e!3032067)))

(declare-fun b!4850401 () Bool)

(declare-fun e!3032068 () Bool)

(assert (=> b!4850401 (= e!3032067 e!3032068)))

(declare-fun res!2070115 () Bool)

(assert (=> b!4850401 (=> (not res!2070115) (not e!3032068))))

(assert (=> b!4850401 (= res!2070115 (dynLambda!22365 lambda!242710 (h!62018 (toList!7871 lm!2646))))))

(declare-fun b!4850402 () Bool)

(assert (=> b!4850402 (= e!3032068 (forall!12964 (t!363201 (toList!7871 lm!2646)) lambda!242710))))

(assert (= (and d!1556904 (not res!2070114)) b!4850401))

(assert (= (and b!4850401 res!2070115) b!4850402))

(declare-fun b_lambda!192907 () Bool)

(assert (=> (not b_lambda!192907) (not b!4850401)))

(declare-fun m!5848904 () Bool)

(assert (=> b!4850401 m!5848904))

(declare-fun m!5848906 () Bool)

(assert (=> b!4850402 m!5848906))

(assert (=> d!1556736 d!1556904))

(declare-fun d!1556906 () Bool)

(assert (=> d!1556906 (dynLambda!22365 lambda!242695 lt!1989560)))

(assert (=> d!1556906 true))

(declare-fun _$7!2497 () Unit!145730)

(assert (=> d!1556906 (= (choose!35496 (toList!7871 lm!2646) lambda!242695 lt!1989560) _$7!2497)))

(declare-fun b_lambda!192909 () Bool)

(assert (=> (not b_lambda!192909) (not d!1556906)))

(declare-fun bs!1172867 () Bool)

(assert (= bs!1172867 d!1556906))

(assert (=> bs!1172867 m!5848572))

(assert (=> d!1556712 d!1556906))

(assert (=> d!1556712 d!1556724))

(declare-fun d!1556908 () Bool)

(assert (=> d!1556908 (= (isEmpty!29748 lt!1989622) (not (is-Some!13691 lt!1989622)))))

(assert (=> d!1556718 d!1556908))

(declare-fun d!1556910 () Bool)

(declare-fun res!2070116 () Bool)

(declare-fun e!3032069 () Bool)

(assert (=> d!1556910 (=> res!2070116 e!3032069)))

(assert (=> d!1556910 (= res!2070116 (not (is-Cons!55580 lt!1989561)))))

(assert (=> d!1556910 (= (noDuplicateKeys!2599 lt!1989561) e!3032069)))

(declare-fun b!4850403 () Bool)

(declare-fun e!3032070 () Bool)

(assert (=> b!4850403 (= e!3032069 e!3032070)))

(declare-fun res!2070117 () Bool)

(assert (=> b!4850403 (=> (not res!2070117) (not e!3032070))))

(assert (=> b!4850403 (= res!2070117 (not (containsKey!4703 (t!363200 lt!1989561) (_1!32941 (h!62017 lt!1989561)))))))

(declare-fun b!4850404 () Bool)

(assert (=> b!4850404 (= e!3032070 (noDuplicateKeys!2599 (t!363200 lt!1989561)))))

(assert (= (and d!1556910 (not res!2070116)) b!4850403))

(assert (= (and b!4850403 res!2070117) b!4850404))

(declare-fun m!5848908 () Bool)

(assert (=> b!4850403 m!5848908))

(assert (=> b!4850404 m!5848834))

(assert (=> d!1556718 d!1556910))

(declare-fun d!1556912 () Bool)

(declare-fun lt!1989687 () Bool)

(assert (=> d!1556912 (= lt!1989687 (set.member (tuple2!59297 lt!1989552 lt!1989561) (content!9897 (toList!7871 lm!2646))))))

(declare-fun e!3032072 () Bool)

(assert (=> d!1556912 (= lt!1989687 e!3032072)))

(declare-fun res!2070119 () Bool)

(assert (=> d!1556912 (=> (not res!2070119) (not e!3032072))))

(assert (=> d!1556912 (= res!2070119 (is-Cons!55581 (toList!7871 lm!2646)))))

(assert (=> d!1556912 (= (contains!19246 (toList!7871 lm!2646) (tuple2!59297 lt!1989552 lt!1989561)) lt!1989687)))

(declare-fun b!4850405 () Bool)

(declare-fun e!3032071 () Bool)

(assert (=> b!4850405 (= e!3032072 e!3032071)))

(declare-fun res!2070118 () Bool)

(assert (=> b!4850405 (=> res!2070118 e!3032071)))

(assert (=> b!4850405 (= res!2070118 (= (h!62018 (toList!7871 lm!2646)) (tuple2!59297 lt!1989552 lt!1989561)))))

(declare-fun b!4850406 () Bool)

(assert (=> b!4850406 (= e!3032071 (contains!19246 (t!363201 (toList!7871 lm!2646)) (tuple2!59297 lt!1989552 lt!1989561)))))

(assert (= (and d!1556912 res!2070119) b!4850405))

(assert (= (and b!4850405 (not res!2070118)) b!4850406))

(assert (=> d!1556912 m!5848578))

(declare-fun m!5848910 () Bool)

(assert (=> d!1556912 m!5848910))

(declare-fun m!5848912 () Bool)

(assert (=> b!4850406 m!5848912))

(assert (=> d!1556704 d!1556912))

(declare-fun d!1556914 () Bool)

(assert (=> d!1556914 (contains!19246 (toList!7871 lm!2646) (tuple2!59297 lt!1989552 lt!1989561))))

(assert (=> d!1556914 true))

(declare-fun _$41!576 () Unit!145730)

(assert (=> d!1556914 (= (choose!35495 lm!2646 lt!1989552 lt!1989561) _$41!576)))

(declare-fun bs!1172868 () Bool)

(assert (= bs!1172868 d!1556914))

(assert (=> bs!1172868 m!5848564))

(assert (=> d!1556704 d!1556914))

(assert (=> d!1556704 d!1556768))

(declare-fun d!1556916 () Bool)

(declare-fun res!2070120 () Bool)

(declare-fun e!3032073 () Bool)

(assert (=> d!1556916 (=> res!2070120 e!3032073)))

(assert (=> d!1556916 (= res!2070120 (is-Nil!55581 (toList!7871 lt!1989554)))))

(assert (=> d!1556916 (= (forall!12964 (toList!7871 lt!1989554) lambda!242714) e!3032073)))

(declare-fun b!4850407 () Bool)

(declare-fun e!3032074 () Bool)

(assert (=> b!4850407 (= e!3032073 e!3032074)))

(declare-fun res!2070121 () Bool)

(assert (=> b!4850407 (=> (not res!2070121) (not e!3032074))))

(assert (=> b!4850407 (= res!2070121 (dynLambda!22365 lambda!242714 (h!62018 (toList!7871 lt!1989554))))))

(declare-fun b!4850408 () Bool)

(assert (=> b!4850408 (= e!3032074 (forall!12964 (t!363201 (toList!7871 lt!1989554)) lambda!242714))))

(assert (= (and d!1556916 (not res!2070120)) b!4850407))

(assert (= (and b!4850407 res!2070121) b!4850408))

(declare-fun b_lambda!192911 () Bool)

(assert (=> (not b_lambda!192911) (not b!4850407)))

(declare-fun m!5848914 () Bool)

(assert (=> b!4850407 m!5848914))

(declare-fun m!5848916 () Bool)

(assert (=> b!4850408 m!5848916))

(assert (=> d!1556758 d!1556916))

(declare-fun d!1556918 () Bool)

(declare-fun lt!1989688 () Bool)

(assert (=> d!1556918 (= lt!1989688 (set.member lt!1989559 (content!9897 (t!363201 (toList!7871 lt!1989554)))))))

(declare-fun e!3032076 () Bool)

(assert (=> d!1556918 (= lt!1989688 e!3032076)))

(declare-fun res!2070123 () Bool)

(assert (=> d!1556918 (=> (not res!2070123) (not e!3032076))))

(assert (=> d!1556918 (= res!2070123 (is-Cons!55581 (t!363201 (toList!7871 lt!1989554))))))

(assert (=> d!1556918 (= (contains!19246 (t!363201 (toList!7871 lt!1989554)) lt!1989559) lt!1989688)))

(declare-fun b!4850409 () Bool)

(declare-fun e!3032075 () Bool)

(assert (=> b!4850409 (= e!3032076 e!3032075)))

(declare-fun res!2070122 () Bool)

(assert (=> b!4850409 (=> res!2070122 e!3032075)))

(assert (=> b!4850409 (= res!2070122 (= (h!62018 (t!363201 (toList!7871 lt!1989554))) lt!1989559))))

(declare-fun b!4850410 () Bool)

(assert (=> b!4850410 (= e!3032075 (contains!19246 (t!363201 (t!363201 (toList!7871 lt!1989554))) lt!1989559))))

(assert (= (and d!1556918 res!2070123) b!4850409))

(assert (= (and b!4850409 (not res!2070122)) b!4850410))

(assert (=> d!1556918 m!5848806))

(declare-fun m!5848918 () Bool)

(assert (=> d!1556918 m!5848918))

(declare-fun m!5848920 () Bool)

(assert (=> b!4850410 m!5848920))

(assert (=> b!4850209 d!1556918))

(declare-fun d!1556920 () Bool)

(declare-fun res!2070124 () Bool)

(declare-fun e!3032077 () Bool)

(assert (=> d!1556920 (=> res!2070124 e!3032077)))

(assert (=> d!1556920 (= res!2070124 (not (is-Cons!55580 (_2!32942 lt!1989559))))))

(assert (=> d!1556920 (= (noDuplicateKeys!2599 (_2!32942 lt!1989559)) e!3032077)))

(declare-fun b!4850411 () Bool)

(declare-fun e!3032078 () Bool)

(assert (=> b!4850411 (= e!3032077 e!3032078)))

(declare-fun res!2070125 () Bool)

(assert (=> b!4850411 (=> (not res!2070125) (not e!3032078))))

(assert (=> b!4850411 (= res!2070125 (not (containsKey!4703 (t!363200 (_2!32942 lt!1989559)) (_1!32941 (h!62017 (_2!32942 lt!1989559))))))))

(declare-fun b!4850412 () Bool)

(assert (=> b!4850412 (= e!3032078 (noDuplicateKeys!2599 (t!363200 (_2!32942 lt!1989559))))))

(assert (= (and d!1556920 (not res!2070124)) b!4850411))

(assert (= (and b!4850411 res!2070125) b!4850412))

(declare-fun m!5848922 () Bool)

(assert (=> b!4850411 m!5848922))

(declare-fun m!5848924 () Bool)

(assert (=> b!4850412 m!5848924))

(assert (=> bs!1172842 d!1556920))

(declare-fun d!1556922 () Bool)

(assert (=> d!1556922 (= (isEmpty!29748 (getPair!1101 lt!1989557 key!6445)) (not (is-Some!13691 (getPair!1101 lt!1989557 key!6445))))))

(assert (=> d!1556744 d!1556922))

(declare-fun d!1556924 () Bool)

(assert (=> d!1556924 (= (tail!9547 (toList!7871 lm!2646)) (t!363201 (toList!7871 lm!2646)))))

(assert (=> d!1556762 d!1556924))

(declare-fun d!1556926 () Bool)

(assert (=> d!1556926 (= (isEmpty!29748 (getPair!1101 lt!1989561 key!6445)) (not (is-Some!13691 (getPair!1101 lt!1989561 key!6445))))))

(assert (=> d!1556722 d!1556926))

(declare-fun d!1556928 () Bool)

(declare-fun res!2070126 () Bool)

(declare-fun e!3032079 () Bool)

(assert (=> d!1556928 (=> res!2070126 e!3032079)))

(assert (=> d!1556928 (= res!2070126 (and (is-Cons!55580 lt!1989561) (= (_1!32941 (h!62017 lt!1989561)) key!6445)))))

(assert (=> d!1556928 (= (containsKey!4703 lt!1989561 key!6445) e!3032079)))

(declare-fun b!4850413 () Bool)

(declare-fun e!3032080 () Bool)

(assert (=> b!4850413 (= e!3032079 e!3032080)))

(declare-fun res!2070127 () Bool)

(assert (=> b!4850413 (=> (not res!2070127) (not e!3032080))))

(assert (=> b!4850413 (= res!2070127 (is-Cons!55580 lt!1989561))))

(declare-fun b!4850414 () Bool)

(assert (=> b!4850414 (= e!3032080 (containsKey!4703 (t!363200 lt!1989561) key!6445))))

(assert (= (and d!1556928 (not res!2070126)) b!4850413))

(assert (= (and b!4850413 res!2070127) b!4850414))

(assert (=> b!4850414 m!5848824))

(assert (=> b!4850182 d!1556928))

(declare-fun d!1556930 () Bool)

(declare-fun res!2070128 () Bool)

(declare-fun e!3032081 () Bool)

(assert (=> d!1556930 (=> res!2070128 e!3032081)))

(assert (=> d!1556930 (= res!2070128 (not (is-Cons!55580 (_2!32942 (h!62018 (toList!7871 lm!2646))))))))

(assert (=> d!1556930 (= (noDuplicateKeys!2599 (_2!32942 (h!62018 (toList!7871 lm!2646)))) e!3032081)))

(declare-fun b!4850415 () Bool)

(declare-fun e!3032082 () Bool)

(assert (=> b!4850415 (= e!3032081 e!3032082)))

(declare-fun res!2070129 () Bool)

(assert (=> b!4850415 (=> (not res!2070129) (not e!3032082))))

(assert (=> b!4850415 (= res!2070129 (not (containsKey!4703 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646)))) (_1!32941 (h!62017 (_2!32942 (h!62018 (toList!7871 lm!2646))))))))))

(declare-fun b!4850416 () Bool)

(assert (=> b!4850416 (= e!3032082 (noDuplicateKeys!2599 (t!363200 (_2!32942 (h!62018 (toList!7871 lm!2646))))))))

(assert (= (and d!1556930 (not res!2070128)) b!4850415))

(assert (= (and b!4850415 res!2070129) b!4850416))

(declare-fun m!5848926 () Bool)

(assert (=> b!4850415 m!5848926))

(declare-fun m!5848928 () Bool)

(assert (=> b!4850416 m!5848928))

(assert (=> bs!1172839 d!1556930))

(declare-fun d!1556932 () Bool)

(declare-fun res!2070130 () Bool)

(declare-fun e!3032083 () Bool)

(assert (=> d!1556932 (=> res!2070130 e!3032083)))

(assert (=> d!1556932 (= res!2070130 (and (is-Cons!55580 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))))) (= (_1!32941 (h!62017 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646))))))) key!6445)))))

(assert (=> d!1556932 (= (containsKey!4703 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646))))) key!6445) e!3032083)))

(declare-fun b!4850417 () Bool)

(declare-fun e!3032084 () Bool)

(assert (=> b!4850417 (= e!3032083 e!3032084)))

(declare-fun res!2070131 () Bool)

(assert (=> b!4850417 (=> (not res!2070131) (not e!3032084))))

(assert (=> b!4850417 (= res!2070131 (is-Cons!55580 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))))))))

(declare-fun b!4850418 () Bool)

(assert (=> b!4850418 (= e!3032084 (containsKey!4703 (t!363200 (t!363200 (apply!13454 lm!2646 (_1!32942 (h!62018 (toList!7871 lm!2646)))))) key!6445))))

(assert (= (and d!1556932 (not res!2070130)) b!4850417))

(assert (= (and b!4850417 res!2070131) b!4850418))

(declare-fun m!5848930 () Bool)

(assert (=> b!4850418 m!5848930))

(assert (=> b!4850204 d!1556932))

(declare-fun tp!1364807 () Bool)

(declare-fun e!3032087 () Bool)

(declare-fun b!4850423 () Bool)

(declare-fun tp_is_empty!35233 () Bool)

(assert (=> b!4850423 (= e!3032087 (and tp_is_empty!35229 tp_is_empty!35233 tp!1364807))))

(assert (=> b!4850237 (= tp!1364797 e!3032087)))

(assert (= (and b!4850237 (is-Cons!55580 (_2!32942 (h!62018 (toList!7871 lm!2646))))) b!4850423))

(declare-fun b!4850424 () Bool)

(declare-fun e!3032088 () Bool)

(declare-fun tp!1364808 () Bool)

(declare-fun tp!1364809 () Bool)

(assert (=> b!4850424 (= e!3032088 (and tp!1364808 tp!1364809))))

(assert (=> b!4850237 (= tp!1364798 e!3032088)))

(assert (= (and b!4850237 (is-Cons!55581 (t!363201 (toList!7871 lm!2646)))) b!4850424))

(declare-fun b_lambda!192913 () Bool)

(assert (= b_lambda!192903 (or d!1556756 b_lambda!192913)))

(declare-fun bs!1172869 () Bool)

(declare-fun d!1556934 () Bool)

(assert (= bs!1172869 (and d!1556934 d!1556756)))

(declare-fun allKeysSameHash!2038 (List!55704 (_ BitVec 64) Hashable!7511) Bool)

(assert (=> bs!1172869 (= (dynLambda!22365 lambda!242713 (h!62018 (toList!7871 lm!2646))) (allKeysSameHash!2038 (_2!32942 (h!62018 (toList!7871 lm!2646))) (_1!32942 (h!62018 (toList!7871 lm!2646))) hashF!1641))))

(declare-fun m!5848932 () Bool)

(assert (=> bs!1172869 m!5848932))

(assert (=> b!4850395 d!1556934))

(declare-fun b_lambda!192915 () Bool)

(assert (= b_lambda!192907 (or d!1556736 b_lambda!192915)))

(declare-fun bs!1172870 () Bool)

(declare-fun d!1556936 () Bool)

(assert (= bs!1172870 (and d!1556936 d!1556736)))

(assert (=> bs!1172870 (= (dynLambda!22365 lambda!242710 (h!62018 (toList!7871 lm!2646))) (noDuplicateKeys!2599 (_2!32942 (h!62018 (toList!7871 lm!2646)))))))

(assert (=> bs!1172870 m!5848686))

(assert (=> b!4850401 d!1556936))

(declare-fun b_lambda!192917 () Bool)

(assert (= b_lambda!192905 (or start!505922 b_lambda!192917)))

(declare-fun bs!1172871 () Bool)

(declare-fun d!1556938 () Bool)

(assert (= bs!1172871 (and d!1556938 start!505922)))

(assert (=> bs!1172871 (= (dynLambda!22365 lambda!242695 (h!62018 (t!363201 (toList!7871 lt!1989554)))) (noDuplicateKeys!2599 (_2!32942 (h!62018 (t!363201 (toList!7871 lt!1989554))))))))

(declare-fun m!5848934 () Bool)

(assert (=> bs!1172871 m!5848934))

(assert (=> b!4850397 d!1556938))

(declare-fun b_lambda!192919 () Bool)

(assert (= b_lambda!192899 (or start!505922 b_lambda!192919)))

(declare-fun bs!1172872 () Bool)

(declare-fun d!1556940 () Bool)

(assert (= bs!1172872 (and d!1556940 start!505922)))

(assert (=> bs!1172872 (= (dynLambda!22365 lambda!242695 (h!62018 (t!363201 (toList!7871 lm!2646)))) (noDuplicateKeys!2599 (_2!32942 (h!62018 (t!363201 (toList!7871 lm!2646))))))))

(declare-fun m!5848936 () Bool)

(assert (=> bs!1172872 m!5848936))

(assert (=> b!4850326 d!1556940))

(declare-fun b_lambda!192921 () Bool)

(assert (= b_lambda!192901 (or start!505922 b_lambda!192921)))

(assert (=> d!1556888 d!1556778))

(declare-fun b_lambda!192923 () Bool)

(assert (= b_lambda!192911 (or d!1556758 b_lambda!192923)))

(declare-fun bs!1172873 () Bool)

(declare-fun d!1556942 () Bool)

(assert (= bs!1172873 (and d!1556942 d!1556758)))

(assert (=> bs!1172873 (= (dynLambda!22365 lambda!242714 (h!62018 (toList!7871 lt!1989554))) (allKeysSameHash!2038 (_2!32942 (h!62018 (toList!7871 lt!1989554))) (_1!32942 (h!62018 (toList!7871 lt!1989554))) hashF!1641))))

(declare-fun m!5848938 () Bool)

(assert (=> bs!1172873 m!5848938))

(assert (=> b!4850407 d!1556942))

(declare-fun b_lambda!192925 () Bool)

(assert (= b_lambda!192909 (or start!505922 b_lambda!192925)))

(assert (=> d!1556906 d!1556776))

(push 1)

(assert (not b!4850362))

(assert (not b!4850354))

(assert (not b!4850358))

(assert (not b!4850336))

(assert (not b!4850384))

(assert (not d!1556918))

(assert (not b!4850349))

(assert (not b!4850414))

(assert (not b!4850379))

(assert (not b!4850355))

(assert (not b!4850424))

(assert (not d!1556870))

(assert (not b!4850371))

(assert (not b_lambda!192923))

(assert (not b!4850406))

(assert (not bs!1172871))

(assert (not bs!1172870))

(assert (not b_lambda!192925))

(assert (not b_lambda!192921))

(assert (not d!1556876))

(assert (not b!4850408))

(assert (not b_lambda!192883))

(assert (not b!4850388))

(assert (not d!1556914))

(assert (not b!4850353))

(assert (not d!1556890))

(assert (not b_lambda!192915))

(assert (not b!4850316))

(assert (not d!1556848))

(assert (not d!1556872))

(assert (not b!4850418))

(assert (not d!1556902))

(assert (not b!4850351))

(assert (not b!4850403))

(assert (not d!1556882))

(assert (not b!4850396))

(assert (not d!1556840))

(assert (not b!4850312))

(assert (not b!4850392))

(assert (not d!1556842))

(assert (not b!4850410))

(assert (not b!4850390))

(assert (not b!4850393))

(assert (not d!1556862))

(assert (not b!4850383))

(assert (not b!4850412))

(assert (not b!4850398))

(assert (not b_lambda!192919))

(assert (not b!4850402))

(assert (not b!4850359))

(assert (not b_lambda!192917))

(assert (not bs!1172873))

(assert (not b!4850325))

(assert (not b_lambda!192877))

(assert (not b!4850319))

(assert (not b!4850376))

(assert tp_is_empty!35229)

(assert (not b!4850385))

(assert (not b!4850404))

(assert (not b!4850327))

(assert (not b!4850400))

(assert (not d!1556868))

(assert (not b!4850378))

(assert (not b!4850342))

(assert (not b!4850369))

(assert (not b_lambda!192879))

(assert (not bs!1172872))

(assert (not b!4850415))

(assert (not d!1556912))

(assert (not b!4850411))

(assert (not b!4850348))

(assert (not b!4850374))

(assert (not d!1556828))

(assert (not d!1556874))

(assert (not b_lambda!192913))

(assert (not d!1556854))

(assert tp_is_empty!35233)

(assert (not b_lambda!192881))

(assert (not b!4850423))

(assert (not bs!1172869))

(assert (not b!4850335))

(assert (not b!4850375))

(assert (not b!4850394))

(assert (not b!4850416))

(assert (not b!4850330))

(assert (not b!4850381))

(assert (not d!1556860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

