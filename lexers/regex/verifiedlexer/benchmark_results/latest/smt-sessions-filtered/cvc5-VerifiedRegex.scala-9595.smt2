; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504694 () Bool)

(assert start!504694)

(declare-fun b!4845906 () Bool)

(declare-fun res!2067104 () Bool)

(declare-fun e!3028799 () Bool)

(assert (=> b!4845906 (=> (not res!2067104) (not e!3028799))))

(declare-datatypes ((K!17262 0))(
  ( (K!17263 (val!22115 Int)) )
))
(declare-datatypes ((V!17508 0))(
  ( (V!17509 (val!22116 Int)) )
))
(declare-datatypes ((tuple2!59102 0))(
  ( (tuple2!59103 (_1!32845 K!17262) (_2!32845 V!17508)) )
))
(declare-datatypes ((List!55608 0))(
  ( (Nil!55484) (Cons!55484 (h!61921 tuple2!59102) (t!363104 List!55608)) )
))
(declare-datatypes ((tuple2!59104 0))(
  ( (tuple2!59105 (_1!32846 (_ BitVec 64)) (_2!32846 List!55608)) )
))
(declare-datatypes ((List!55609 0))(
  ( (Nil!55485) (Cons!55485 (h!61922 tuple2!59104) (t!363105 List!55609)) )
))
(declare-datatypes ((ListLongMap!6389 0))(
  ( (ListLongMap!6390 (toList!7823 List!55609)) )
))
(declare-fun lm!2837 () ListLongMap!6389)

(declare-fun key!6928 () K!17262)

(declare-fun containsKeyBiggerList!761 (List!55609 K!17262) Bool)

(assert (=> b!4845906 (= res!2067104 (containsKeyBiggerList!761 (toList!7823 lm!2837) key!6928))))

(declare-fun res!2067103 () Bool)

(assert (=> start!504694 (=> (not res!2067103) (not e!3028799))))

(declare-fun lambda!242255 () Int)

(declare-fun forall!12916 (List!55609 Int) Bool)

(assert (=> start!504694 (= res!2067103 (forall!12916 (toList!7823 lm!2837) lambda!242255))))

(assert (=> start!504694 e!3028799))

(declare-fun e!3028800 () Bool)

(declare-fun inv!71149 (ListLongMap!6389) Bool)

(assert (=> start!504694 (and (inv!71149 lm!2837) e!3028800)))

(assert (=> start!504694 true))

(declare-fun tp_is_empty!35101 () Bool)

(assert (=> start!504694 tp_is_empty!35101))

(declare-fun b!4845907 () Bool)

(assert (=> b!4845907 (= e!3028799 (= (toList!7823 lm!2837) Nil!55485))))

(declare-fun b!4845908 () Bool)

(declare-fun tp!1364397 () Bool)

(assert (=> b!4845908 (= e!3028800 tp!1364397)))

(declare-fun b!4845909 () Bool)

(declare-fun res!2067105 () Bool)

(assert (=> b!4845909 (=> (not res!2067105) (not e!3028799))))

(declare-fun containsKey!4649 (List!55608 K!17262) Bool)

(declare-fun head!10403 (List!55609) tuple2!59104)

(assert (=> b!4845909 (= res!2067105 (not (containsKey!4649 (_2!32846 (head!10403 (toList!7823 lm!2837))) key!6928)))))

(declare-fun b!4845910 () Bool)

(declare-fun res!2067102 () Bool)

(assert (=> b!4845910 (=> (not res!2067102) (not e!3028799))))

(declare-datatypes ((Hashable!7463 0))(
  ( (HashableExt!7462 (__x!33738 Int)) )
))
(declare-fun hashF!1793 () Hashable!7463)

(declare-fun allKeysSameHashInMap!2779 (ListLongMap!6389 Hashable!7463) Bool)

(assert (=> b!4845910 (= res!2067102 (allKeysSameHashInMap!2779 lm!2837 hashF!1793))))

(assert (= (and start!504694 res!2067103) b!4845910))

(assert (= (and b!4845910 res!2067102) b!4845906))

(assert (= (and b!4845906 res!2067104) b!4845909))

(assert (= (and b!4845909 res!2067105) b!4845907))

(assert (= start!504694 b!4845908))

(declare-fun m!5843900 () Bool)

(assert (=> b!4845906 m!5843900))

(declare-fun m!5843902 () Bool)

(assert (=> start!504694 m!5843902))

(declare-fun m!5843904 () Bool)

(assert (=> start!504694 m!5843904))

(declare-fun m!5843906 () Bool)

(assert (=> b!4845909 m!5843906))

(declare-fun m!5843908 () Bool)

(assert (=> b!4845909 m!5843908))

(declare-fun m!5843910 () Bool)

(assert (=> b!4845910 m!5843910))

(push 1)

(assert tp_is_empty!35101)

(assert (not b!4845909))

(assert (not b!4845906))

(assert (not start!504694))

(assert (not b!4845908))

(assert (not b!4845910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1172287 () Bool)

(declare-fun d!1554582 () Bool)

(assert (= bs!1172287 (and d!1554582 start!504694)))

(declare-fun lambda!242261 () Int)

(assert (=> bs!1172287 (not (= lambda!242261 lambda!242255))))

(assert (=> d!1554582 true))

(assert (=> d!1554582 (= (allKeysSameHashInMap!2779 lm!2837 hashF!1793) (forall!12916 (toList!7823 lm!2837) lambda!242261))))

(declare-fun bs!1172288 () Bool)

(assert (= bs!1172288 d!1554582))

(declare-fun m!5843924 () Bool)

(assert (=> bs!1172288 m!5843924))

(assert (=> b!4845910 d!1554582))

(declare-fun d!1554584 () Bool)

(declare-fun res!2067122 () Bool)

(declare-fun e!3028811 () Bool)

(assert (=> d!1554584 (=> res!2067122 e!3028811)))

(assert (=> d!1554584 (= res!2067122 (is-Nil!55485 (toList!7823 lm!2837)))))

(assert (=> d!1554584 (= (forall!12916 (toList!7823 lm!2837) lambda!242255) e!3028811)))

(declare-fun b!4845932 () Bool)

(declare-fun e!3028812 () Bool)

(assert (=> b!4845932 (= e!3028811 e!3028812)))

(declare-fun res!2067123 () Bool)

(assert (=> b!4845932 (=> (not res!2067123) (not e!3028812))))

(declare-fun dynLambda!22340 (Int tuple2!59104) Bool)

(assert (=> b!4845932 (= res!2067123 (dynLambda!22340 lambda!242255 (h!61922 (toList!7823 lm!2837))))))

(declare-fun b!4845933 () Bool)

(assert (=> b!4845933 (= e!3028812 (forall!12916 (t!363105 (toList!7823 lm!2837)) lambda!242255))))

(assert (= (and d!1554584 (not res!2067122)) b!4845932))

(assert (= (and b!4845932 res!2067123) b!4845933))

(declare-fun b_lambda!192339 () Bool)

(assert (=> (not b_lambda!192339) (not b!4845932)))

(declare-fun m!5843926 () Bool)

(assert (=> b!4845932 m!5843926))

(declare-fun m!5843928 () Bool)

(assert (=> b!4845933 m!5843928))

(assert (=> start!504694 d!1554584))

(declare-fun d!1554586 () Bool)

(declare-fun isStrictlySorted!1063 (List!55609) Bool)

(assert (=> d!1554586 (= (inv!71149 lm!2837) (isStrictlySorted!1063 (toList!7823 lm!2837)))))

(declare-fun bs!1172289 () Bool)

(assert (= bs!1172289 d!1554586))

(declare-fun m!5843930 () Bool)

(assert (=> bs!1172289 m!5843930))

(assert (=> start!504694 d!1554586))

(declare-fun d!1554590 () Bool)

(declare-fun res!2067138 () Bool)

(declare-fun e!3028825 () Bool)

(assert (=> d!1554590 (=> res!2067138 e!3028825)))

(declare-fun e!3028827 () Bool)

(assert (=> d!1554590 (= res!2067138 e!3028827)))

(declare-fun res!2067136 () Bool)

(assert (=> d!1554590 (=> (not res!2067136) (not e!3028827))))

(assert (=> d!1554590 (= res!2067136 (is-Cons!55485 (toList!7823 lm!2837)))))

(assert (=> d!1554590 (= (containsKeyBiggerList!761 (toList!7823 lm!2837) key!6928) e!3028825)))

(declare-fun b!4845946 () Bool)

(assert (=> b!4845946 (= e!3028827 (containsKey!4649 (_2!32846 (h!61922 (toList!7823 lm!2837))) key!6928))))

(declare-fun b!4845947 () Bool)

(declare-fun e!3028826 () Bool)

(assert (=> b!4845947 (= e!3028825 e!3028826)))

(declare-fun res!2067137 () Bool)

(assert (=> b!4845947 (=> (not res!2067137) (not e!3028826))))

(assert (=> b!4845947 (= res!2067137 (is-Cons!55485 (toList!7823 lm!2837)))))

(declare-fun b!4845948 () Bool)

(assert (=> b!4845948 (= e!3028826 (containsKeyBiggerList!761 (t!363105 (toList!7823 lm!2837)) key!6928))))

(assert (= (and d!1554590 res!2067136) b!4845946))

(assert (= (and d!1554590 (not res!2067138)) b!4845947))

(assert (= (and b!4845947 res!2067137) b!4845948))

(declare-fun m!5843932 () Bool)

(assert (=> b!4845946 m!5843932))

(declare-fun m!5843934 () Bool)

(assert (=> b!4845948 m!5843934))

(assert (=> b!4845906 d!1554590))

(declare-fun d!1554592 () Bool)

(declare-fun res!2067146 () Bool)

(declare-fun e!3028835 () Bool)

(assert (=> d!1554592 (=> res!2067146 e!3028835)))

(assert (=> d!1554592 (= res!2067146 (and (is-Cons!55484 (_2!32846 (head!10403 (toList!7823 lm!2837)))) (= (_1!32845 (h!61921 (_2!32846 (head!10403 (toList!7823 lm!2837))))) key!6928)))))

(assert (=> d!1554592 (= (containsKey!4649 (_2!32846 (head!10403 (toList!7823 lm!2837))) key!6928) e!3028835)))

(declare-fun b!4845956 () Bool)

(declare-fun e!3028836 () Bool)

(assert (=> b!4845956 (= e!3028835 e!3028836)))

(declare-fun res!2067147 () Bool)

(assert (=> b!4845956 (=> (not res!2067147) (not e!3028836))))

(assert (=> b!4845956 (= res!2067147 (is-Cons!55484 (_2!32846 (head!10403 (toList!7823 lm!2837)))))))

(declare-fun b!4845957 () Bool)

(assert (=> b!4845957 (= e!3028836 (containsKey!4649 (t!363104 (_2!32846 (head!10403 (toList!7823 lm!2837)))) key!6928))))

(assert (= (and d!1554592 (not res!2067146)) b!4845956))

(assert (= (and b!4845956 res!2067147) b!4845957))

(declare-fun m!5843940 () Bool)

(assert (=> b!4845957 m!5843940))

(assert (=> b!4845909 d!1554592))

(declare-fun d!1554596 () Bool)

(assert (=> d!1554596 (= (head!10403 (toList!7823 lm!2837)) (h!61922 (toList!7823 lm!2837)))))

(assert (=> b!4845909 d!1554596))

(declare-fun b!4845962 () Bool)

(declare-fun e!3028839 () Bool)

(declare-fun tp!1364405 () Bool)

(declare-fun tp!1364406 () Bool)

(assert (=> b!4845962 (= e!3028839 (and tp!1364405 tp!1364406))))

(assert (=> b!4845908 (= tp!1364397 e!3028839)))

(assert (= (and b!4845908 (is-Cons!55485 (toList!7823 lm!2837))) b!4845962))

(declare-fun b_lambda!192341 () Bool)

(assert (= b_lambda!192339 (or start!504694 b_lambda!192341)))

(declare-fun bs!1172290 () Bool)

(declare-fun d!1554598 () Bool)

(assert (= bs!1172290 (and d!1554598 start!504694)))

(declare-fun noDuplicateKeys!2573 (List!55608) Bool)

(assert (=> bs!1172290 (= (dynLambda!22340 lambda!242255 (h!61922 (toList!7823 lm!2837))) (noDuplicateKeys!2573 (_2!32846 (h!61922 (toList!7823 lm!2837)))))))

(declare-fun m!5843942 () Bool)

(assert (=> bs!1172290 m!5843942))

(assert (=> b!4845932 d!1554598))

(push 1)

(assert (not d!1554586))

(assert (not b!4845948))

(assert tp_is_empty!35101)

(assert (not b!4845946))

(assert (not b!4845933))

(assert (not b!4845957))

(assert (not d!1554582))

(assert (not b_lambda!192341))

(assert (not bs!1172290))

(assert (not b!4845962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

