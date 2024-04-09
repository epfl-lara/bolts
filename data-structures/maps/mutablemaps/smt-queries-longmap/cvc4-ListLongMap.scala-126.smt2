; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2192 () Bool)

(assert start!2192)

(declare-fun b!14772 () Bool)

(assert (=> b!14772 true))

(declare-fun res!11346 () Bool)

(declare-fun e!8868 () Bool)

(assert (=> start!2192 (=> (not res!11346) (not e!8868))))

(declare-datatypes ((B!558 0))(
  ( (B!559 (val!377 Int)) )
))
(declare-datatypes ((tuple2!536 0))(
  ( (tuple2!537 (_1!268 (_ BitVec 64)) (_2!268 B!558)) )
))
(declare-datatypes ((List!427 0))(
  ( (Nil!424) (Cons!423 (h!989 tuple2!536) (t!2829 List!427)) )
))
(declare-fun l!522 () List!427)

(declare-fun isStrictlySorted!118 (List!427) Bool)

(assert (=> start!2192 (= res!11346 (isStrictlySorted!118 l!522))))

(assert (=> start!2192 e!8868))

(declare-fun e!8870 () Bool)

(assert (=> start!2192 e!8870))

(declare-fun tp_is_empty!737 () Bool)

(assert (=> start!2192 tp_is_empty!737))

(declare-fun b!14768 () Bool)

(declare-fun e!8872 () Bool)

(declare-fun e!8871 () Bool)

(assert (=> b!14768 (= e!8872 e!8871)))

(declare-fun c!1400 () Bool)

(declare-fun isEmpty!107 (List!427) Bool)

(assert (=> b!14768 (= c!1400 (isEmpty!107 l!522))))

(declare-fun b!14769 () Bool)

(assert (=> b!14769 (= e!8868 e!8872)))

(declare-fun res!11345 () Bool)

(assert (=> b!14769 (=> res!11345 e!8872)))

(assert (=> b!14769 (= res!11345 false)))

(declare-fun b!14770 () Bool)

(declare-fun e!8869 () Bool)

(declare-fun head!796 (List!427) tuple2!536)

(assert (=> b!14770 (= e!8869 (bvslt (_1!268 (head!796 Nil!424)) (_1!268 (head!796 l!522))))))

(declare-fun b!14771 () Bool)

(declare-fun tp!2369 () Bool)

(assert (=> b!14771 (= e!8870 (and tp_is_empty!737 tp!2369))))

(declare-fun res!11344 () Bool)

(assert (=> b!14772 (=> res!11344 e!8872)))

(declare-fun lambda!182 () Int)

(declare-fun forall!100 (List!427 Int) Bool)

(assert (=> b!14772 (= res!11344 (not (forall!100 Nil!424 lambda!182)))))

(declare-fun b!14773 () Bool)

(assert (=> b!14773 (= e!8871 false)))

(declare-fun b!14774 () Bool)

(assert (=> b!14774 (= e!8871 e!8869)))

(declare-fun res!11347 () Bool)

(assert (=> b!14774 (= res!11347 false)))

(assert (=> b!14774 (=> (not res!11347) (not e!8869))))

(declare-fun b!14775 () Bool)

(declare-fun res!11343 () Bool)

(assert (=> b!14775 (=> (not res!11343) (not e!8868))))

(declare-fun value!159 () B!558)

(assert (=> b!14775 (= res!11343 (and (or (not (is-Cons!423 l!522)) (not (= (_2!268 (h!989 l!522)) value!159))) (or (not (is-Cons!423 l!522)) (= (_2!268 (h!989 l!522)) value!159)) (is-Nil!424 l!522)))))

(assert (= (and start!2192 res!11346) b!14775))

(assert (= (and b!14775 res!11343) b!14769))

(assert (= (and b!14769 (not res!11345)) b!14772))

(assert (= (and b!14772 (not res!11344)) b!14768))

(assert (= (and b!14768 c!1400) b!14773))

(assert (= (and b!14768 (not c!1400)) b!14774))

(assert (= (and b!14774 res!11347) b!14770))

(assert (= (and start!2192 (is-Cons!423 l!522)) b!14771))

(declare-fun m!9861 () Bool)

(assert (=> start!2192 m!9861))

(declare-fun m!9863 () Bool)

(assert (=> b!14768 m!9863))

(declare-fun m!9865 () Bool)

(assert (=> b!14770 m!9865))

(declare-fun m!9867 () Bool)

(assert (=> b!14770 m!9867))

(declare-fun m!9869 () Bool)

(assert (=> b!14772 m!9869))

(push 1)

(assert (not b!14768))

(assert tp_is_empty!737)

(assert (not b!14772))

(assert (not b!14770))

(assert (not start!2192))

(assert (not b!14771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391 () Bool)

(assert (=> d!2391 (= (isEmpty!107 l!522) (is-Nil!424 l!522))))

(assert (=> b!14768 d!2391))

(declare-fun d!2395 () Bool)

(declare-fun res!11356 () Bool)

(declare-fun e!8881 () Bool)

(assert (=> d!2395 (=> res!11356 e!8881)))

(assert (=> d!2395 (= res!11356 (or (is-Nil!424 l!522) (is-Nil!424 (t!2829 l!522))))))

(assert (=> d!2395 (= (isStrictlySorted!118 l!522) e!8881)))

(declare-fun b!14786 () Bool)

(declare-fun e!8882 () Bool)

(assert (=> b!14786 (= e!8881 e!8882)))

(declare-fun res!11357 () Bool)

(assert (=> b!14786 (=> (not res!11357) (not e!8882))))

(assert (=> b!14786 (= res!11357 (bvslt (_1!268 (h!989 l!522)) (_1!268 (h!989 (t!2829 l!522)))))))

(declare-fun b!14787 () Bool)

(assert (=> b!14787 (= e!8882 (isStrictlySorted!118 (t!2829 l!522)))))

(assert (= (and d!2395 (not res!11356)) b!14786))

(assert (= (and b!14786 res!11357) b!14787))

(declare-fun m!9871 () Bool)

(assert (=> b!14787 m!9871))

(assert (=> start!2192 d!2395))

(declare-fun d!2409 () Bool)

(assert (not d!2409))

(assert (=> b!14770 d!2409))

(declare-fun d!2413 () Bool)

(assert (=> d!2413 (= (head!796 l!522) (h!989 l!522))))

(assert (=> b!14770 d!2413))

(declare-fun d!2415 () Bool)

(declare-fun res!11380 () Bool)

(declare-fun e!8908 () Bool)

(assert (=> d!2415 (=> res!11380 e!8908)))

(assert (=> d!2415 (= res!11380 (is-Nil!424 Nil!424))))

(assert (=> d!2415 (= (forall!100 Nil!424 lambda!182) e!8908)))

(declare-fun b!14813 () Bool)

(declare-fun e!8909 () Bool)

(assert (=> b!14813 (= e!8908 e!8909)))

(declare-fun res!11381 () Bool)

(assert (=> b!14813 (=> (not res!11381) (not e!8909))))

(declare-fun dynLambda!96 (Int tuple2!536) Bool)

(assert (=> b!14813 (= res!11381 (dynLambda!96 lambda!182 (h!989 Nil!424)))))

(declare-fun b!14814 () Bool)

(assert (=> b!14814 (= e!8909 (forall!100 (t!2829 Nil!424) lambda!182))))

(assert (= (and d!2415 (not res!11380)) b!14813))

(assert (= (and b!14813 res!11381) b!14814))

(declare-fun b_lambda!965 () Bool)

(assert (=> (not b_lambda!965) (not b!14813)))

(declare-fun m!9883 () Bool)

(assert (=> b!14813 m!9883))

(declare-fun m!9885 () Bool)

(assert (=> b!14814 m!9885))

(assert (=> b!14772 d!2415))

(declare-fun b!14827 () Bool)

(declare-fun e!8916 () Bool)

(declare-fun tp!2377 () Bool)

(assert (=> b!14827 (= e!8916 (and tp_is_empty!737 tp!2377))))

(assert (=> b!14771 (= tp!2369 e!8916)))

(assert (= (and b!14771 (is-Cons!423 (t!2829 l!522))) b!14827))

(declare-fun b_lambda!967 () Bool)

(assert (= b_lambda!965 (or b!14772 b_lambda!967)))

(declare-fun bs!600 () Bool)

(declare-fun d!2423 () Bool)

(assert (= bs!600 (and d!2423 b!14772)))

(assert (=> bs!600 (= (dynLambda!96 lambda!182 (h!989 Nil!424)) (= (_2!268 (h!989 Nil!424)) value!159))))

(assert (=> b!14813 d!2423))

(push 1)

