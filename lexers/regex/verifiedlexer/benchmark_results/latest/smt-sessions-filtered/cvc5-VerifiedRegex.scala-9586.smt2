; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504478 () Bool)

(assert start!504478)

(declare-fun b!4844800 () Bool)

(declare-fun res!2066350 () Bool)

(declare-fun e!3027994 () Bool)

(assert (=> b!4844800 (=> (not res!2066350) (not e!3027994))))

(declare-datatypes ((K!17217 0))(
  ( (K!17218 (val!22079 Int)) )
))
(declare-fun key!6636 () K!17217)

(declare-datatypes ((V!17463 0))(
  ( (V!17464 (val!22080 Int)) )
))
(declare-datatypes ((tuple2!59030 0))(
  ( (tuple2!59031 (_1!32809 K!17217) (_2!32809 V!17463)) )
))
(declare-datatypes ((List!55572 0))(
  ( (Nil!55448) (Cons!55448 (h!61885 tuple2!59030) (t!363068 List!55572)) )
))
(declare-datatypes ((tuple2!59032 0))(
  ( (tuple2!59033 (_1!32810 (_ BitVec 64)) (_2!32810 List!55572)) )
))
(declare-datatypes ((List!55573 0))(
  ( (Nil!55449) (Cons!55449 (h!61886 tuple2!59032) (t!363069 List!55573)) )
))
(declare-datatypes ((ListLongMap!6381 0))(
  ( (ListLongMap!6382 (toList!7819 List!55573)) )
))
(declare-fun lm!2706 () ListLongMap!6381)

(declare-fun v!11578 () V!17463)

(declare-fun getValue!199 (List!55573 K!17217) V!17463)

(assert (=> b!4844800 (= res!2066350 (= v!11578 (getValue!199 (toList!7819 lm!2706) key!6636)))))

(declare-fun b!4844801 () Bool)

(declare-fun res!2066348 () Bool)

(assert (=> b!4844801 (=> (not res!2066348) (not e!3027994))))

(declare-datatypes ((Hashable!7459 0))(
  ( (HashableExt!7458 (__x!33734 Int)) )
))
(declare-fun hashF!1684 () Hashable!7459)

(declare-fun allKeysSameHashInMap!2775 (ListLongMap!6381 Hashable!7459) Bool)

(assert (=> b!4844801 (= res!2066348 (allKeysSameHashInMap!2775 lm!2706 hashF!1684))))

(declare-fun res!2066349 () Bool)

(assert (=> start!504478 (=> (not res!2066349) (not e!3027994))))

(declare-fun lambda!242185 () Int)

(declare-fun forall!12898 (List!55573 Int) Bool)

(assert (=> start!504478 (= res!2066349 (forall!12898 (toList!7819 lm!2706) lambda!242185))))

(assert (=> start!504478 e!3027994))

(declare-fun e!3027993 () Bool)

(declare-fun inv!71118 (ListLongMap!6381) Bool)

(assert (=> start!504478 (and (inv!71118 lm!2706) e!3027993)))

(assert (=> start!504478 true))

(declare-fun tp_is_empty!35029 () Bool)

(assert (=> start!504478 tp_is_empty!35029))

(declare-fun tp_is_empty!35031 () Bool)

(assert (=> start!504478 tp_is_empty!35031))

(declare-fun b!4844802 () Bool)

(declare-fun tp!1364141 () Bool)

(assert (=> b!4844802 (= e!3027993 tp!1364141)))

(declare-fun b!4844803 () Bool)

(assert (=> b!4844803 (= e!3027994 (= (toList!7819 lm!2706) Nil!55449))))

(declare-fun b!4844804 () Bool)

(declare-fun res!2066346 () Bool)

(assert (=> b!4844804 (=> (not res!2066346) (not e!3027994))))

(declare-fun containsKeyBiggerList!743 (List!55573 K!17217) Bool)

(assert (=> b!4844804 (= res!2066346 (containsKeyBiggerList!743 (toList!7819 lm!2706) key!6636))))

(declare-fun b!4844805 () Bool)

(declare-fun res!2066347 () Bool)

(assert (=> b!4844805 (=> (not res!2066347) (not e!3027994))))

(declare-fun containsKey!4632 (List!55572 K!17217) Bool)

(declare-fun head!10399 (List!55573) tuple2!59032)

(assert (=> b!4844805 (= res!2066347 (containsKey!4632 (_2!32810 (head!10399 (toList!7819 lm!2706))) key!6636))))

(assert (= (and start!504478 res!2066349) b!4844801))

(assert (= (and b!4844801 res!2066348) b!4844804))

(assert (= (and b!4844804 res!2066346) b!4844805))

(assert (= (and b!4844805 res!2066347) b!4844800))

(assert (= (and b!4844800 res!2066350) b!4844803))

(assert (= start!504478 b!4844802))

(declare-fun m!5843336 () Bool)

(assert (=> b!4844805 m!5843336))

(declare-fun m!5843338 () Bool)

(assert (=> b!4844805 m!5843338))

(declare-fun m!5843340 () Bool)

(assert (=> b!4844804 m!5843340))

(declare-fun m!5843342 () Bool)

(assert (=> start!504478 m!5843342))

(declare-fun m!5843344 () Bool)

(assert (=> start!504478 m!5843344))

(declare-fun m!5843346 () Bool)

(assert (=> b!4844800 m!5843346))

(declare-fun m!5843348 () Bool)

(assert (=> b!4844801 m!5843348))

(push 1)

(assert (not b!4844800))

(assert tp_is_empty!35029)

(assert (not b!4844804))

(assert tp_is_empty!35031)

(assert (not b!4844805))

(assert (not b!4844801))

(assert (not start!504478))

(assert (not b!4844802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554303 () Bool)

(declare-fun res!2066370 () Bool)

(declare-fun e!3028005 () Bool)

(assert (=> d!1554303 (=> res!2066370 e!3028005)))

(assert (=> d!1554303 (= res!2066370 (is-Nil!55449 (toList!7819 lm!2706)))))

(assert (=> d!1554303 (= (forall!12898 (toList!7819 lm!2706) lambda!242185) e!3028005)))

(declare-fun b!4844828 () Bool)

(declare-fun e!3028006 () Bool)

(assert (=> b!4844828 (= e!3028005 e!3028006)))

(declare-fun res!2066371 () Bool)

(assert (=> b!4844828 (=> (not res!2066371) (not e!3028006))))

(declare-fun dynLambda!22325 (Int tuple2!59032) Bool)

(assert (=> b!4844828 (= res!2066371 (dynLambda!22325 lambda!242185 (h!61886 (toList!7819 lm!2706))))))

(declare-fun b!4844829 () Bool)

(assert (=> b!4844829 (= e!3028006 (forall!12898 (t!363069 (toList!7819 lm!2706)) lambda!242185))))

(assert (= (and d!1554303 (not res!2066370)) b!4844828))

(assert (= (and b!4844828 res!2066371) b!4844829))

(declare-fun b_lambda!192247 () Bool)

(assert (=> (not b_lambda!192247) (not b!4844828)))

(declare-fun m!5843364 () Bool)

(assert (=> b!4844828 m!5843364))

(declare-fun m!5843366 () Bool)

(assert (=> b!4844829 m!5843366))

(assert (=> start!504478 d!1554303))

(declare-fun d!1554305 () Bool)

(declare-fun isStrictlySorted!1059 (List!55573) Bool)

(assert (=> d!1554305 (= (inv!71118 lm!2706) (isStrictlySorted!1059 (toList!7819 lm!2706)))))

(declare-fun bs!1172232 () Bool)

(assert (= bs!1172232 d!1554305))

(declare-fun m!5843368 () Bool)

(assert (=> bs!1172232 m!5843368))

(assert (=> start!504478 d!1554305))

(declare-fun d!1554307 () Bool)

(declare-fun res!2066376 () Bool)

(declare-fun e!3028011 () Bool)

(assert (=> d!1554307 (=> res!2066376 e!3028011)))

(assert (=> d!1554307 (= res!2066376 (and (is-Cons!55448 (_2!32810 (head!10399 (toList!7819 lm!2706)))) (= (_1!32809 (h!61885 (_2!32810 (head!10399 (toList!7819 lm!2706))))) key!6636)))))

(assert (=> d!1554307 (= (containsKey!4632 (_2!32810 (head!10399 (toList!7819 lm!2706))) key!6636) e!3028011)))

(declare-fun b!4844834 () Bool)

(declare-fun e!3028012 () Bool)

(assert (=> b!4844834 (= e!3028011 e!3028012)))

(declare-fun res!2066377 () Bool)

(assert (=> b!4844834 (=> (not res!2066377) (not e!3028012))))

(assert (=> b!4844834 (= res!2066377 (is-Cons!55448 (_2!32810 (head!10399 (toList!7819 lm!2706)))))))

(declare-fun b!4844835 () Bool)

(assert (=> b!4844835 (= e!3028012 (containsKey!4632 (t!363068 (_2!32810 (head!10399 (toList!7819 lm!2706)))) key!6636))))

(assert (= (and d!1554307 (not res!2066376)) b!4844834))

(assert (= (and b!4844834 res!2066377) b!4844835))

(declare-fun m!5843370 () Bool)

(assert (=> b!4844835 m!5843370))

(assert (=> b!4844805 d!1554307))

(declare-fun d!1554309 () Bool)

(assert (=> d!1554309 (= (head!10399 (toList!7819 lm!2706)) (h!61886 (toList!7819 lm!2706)))))

(assert (=> b!4844805 d!1554309))

(declare-fun d!1554311 () Bool)

(declare-fun c!824917 () Bool)

(declare-fun e!3028018 () Bool)

(assert (=> d!1554311 (= c!824917 e!3028018)))

(declare-fun res!2066380 () Bool)

(assert (=> d!1554311 (=> (not res!2066380) (not e!3028018))))

(assert (=> d!1554311 (= res!2066380 (is-Cons!55449 (toList!7819 lm!2706)))))

(declare-fun e!3028017 () V!17463)

(assert (=> d!1554311 (= (getValue!199 (toList!7819 lm!2706) key!6636) e!3028017)))

(declare-fun b!4844844 () Bool)

(assert (=> b!4844844 (= e!3028018 (containsKey!4632 (_2!32810 (h!61886 (toList!7819 lm!2706))) key!6636))))

(declare-fun b!4844842 () Bool)

(declare-datatypes ((Option!13624 0))(
  ( (None!13623) (Some!13623 (v!49367 tuple2!59030)) )
))
(declare-fun get!18979 (Option!13624) tuple2!59030)

(declare-fun getPair!1054 (List!55572 K!17217) Option!13624)

(assert (=> b!4844842 (= e!3028017 (_2!32809 (get!18979 (getPair!1054 (_2!32810 (h!61886 (toList!7819 lm!2706))) key!6636))))))

(declare-fun b!4844843 () Bool)

(assert (=> b!4844843 (= e!3028017 (getValue!199 (t!363069 (toList!7819 lm!2706)) key!6636))))

(assert (= (and d!1554311 res!2066380) b!4844844))

(assert (= (and d!1554311 c!824917) b!4844842))

(assert (= (and d!1554311 (not c!824917)) b!4844843))

(declare-fun m!5843372 () Bool)

(assert (=> b!4844844 m!5843372))

(declare-fun m!5843374 () Bool)

(assert (=> b!4844842 m!5843374))

(assert (=> b!4844842 m!5843374))

(declare-fun m!5843376 () Bool)

(assert (=> b!4844842 m!5843376))

(declare-fun m!5843378 () Bool)

(assert (=> b!4844843 m!5843378))

(assert (=> b!4844800 d!1554311))

(declare-fun bs!1172233 () Bool)

(declare-fun d!1554315 () Bool)

(assert (= bs!1172233 (and d!1554315 start!504478)))

(declare-fun lambda!242191 () Int)

(assert (=> bs!1172233 (not (= lambda!242191 lambda!242185))))

(assert (=> d!1554315 true))

(assert (=> d!1554315 (= (allKeysSameHashInMap!2775 lm!2706 hashF!1684) (forall!12898 (toList!7819 lm!2706) lambda!242191))))

(declare-fun bs!1172234 () Bool)

(assert (= bs!1172234 d!1554315))

(declare-fun m!5843382 () Bool)

(assert (=> bs!1172234 m!5843382))

(assert (=> b!4844801 d!1554315))

(declare-fun d!1554319 () Bool)

(declare-fun res!2066397 () Bool)

(declare-fun e!3028036 () Bool)

(assert (=> d!1554319 (=> res!2066397 e!3028036)))

(declare-fun e!3028035 () Bool)

(assert (=> d!1554319 (= res!2066397 e!3028035)))

(declare-fun res!2066399 () Bool)

(assert (=> d!1554319 (=> (not res!2066399) (not e!3028035))))

(assert (=> d!1554319 (= res!2066399 (is-Cons!55449 (toList!7819 lm!2706)))))

(assert (=> d!1554319 (= (containsKeyBiggerList!743 (toList!7819 lm!2706) key!6636) e!3028036)))

(declare-fun b!4844863 () Bool)

(assert (=> b!4844863 (= e!3028035 (containsKey!4632 (_2!32810 (h!61886 (toList!7819 lm!2706))) key!6636))))

(declare-fun b!4844864 () Bool)

(declare-fun e!3028037 () Bool)

(assert (=> b!4844864 (= e!3028036 e!3028037)))

(declare-fun res!2066398 () Bool)

(assert (=> b!4844864 (=> (not res!2066398) (not e!3028037))))

(assert (=> b!4844864 (= res!2066398 (is-Cons!55449 (toList!7819 lm!2706)))))

(declare-fun b!4844865 () Bool)

(assert (=> b!4844865 (= e!3028037 (containsKeyBiggerList!743 (t!363069 (toList!7819 lm!2706)) key!6636))))

(assert (= (and d!1554319 res!2066399) b!4844863))

(assert (= (and d!1554319 (not res!2066397)) b!4844864))

(assert (= (and b!4844864 res!2066398) b!4844865))

(assert (=> b!4844863 m!5843372))

(declare-fun m!5843384 () Bool)

(assert (=> b!4844865 m!5843384))

(assert (=> b!4844804 d!1554319))

(declare-fun b!4844870 () Bool)

(declare-fun e!3028040 () Bool)

(declare-fun tp!1364149 () Bool)

(declare-fun tp!1364150 () Bool)

(assert (=> b!4844870 (= e!3028040 (and tp!1364149 tp!1364150))))

(assert (=> b!4844802 (= tp!1364141 e!3028040)))

(assert (= (and b!4844802 (is-Cons!55449 (toList!7819 lm!2706))) b!4844870))

(declare-fun b_lambda!192249 () Bool)

(assert (= b_lambda!192247 (or start!504478 b_lambda!192249)))

(declare-fun bs!1172235 () Bool)

(declare-fun d!1554323 () Bool)

(assert (= bs!1172235 (and d!1554323 start!504478)))

(declare-fun noDuplicateKeys!2560 (List!55572) Bool)

(assert (=> bs!1172235 (= (dynLambda!22325 lambda!242185 (h!61886 (toList!7819 lm!2706))) (noDuplicateKeys!2560 (_2!32810 (h!61886 (toList!7819 lm!2706)))))))

(declare-fun m!5843386 () Bool)

(assert (=> bs!1172235 m!5843386))

(assert (=> b!4844828 d!1554323))

(push 1)

(assert (not b!4844835))

(assert (not bs!1172235))

(assert (not b!4844842))

(assert (not d!1554305))

(assert tp_is_empty!35031)

(assert (not b!4844865))

(assert (not b_lambda!192249))

(assert (not b!4844829))

(assert (not d!1554315))

(assert (not b!4844870))

(assert (not b!4844843))

(assert tp_is_empty!35029)

(assert (not b!4844863))

(assert (not b!4844844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

