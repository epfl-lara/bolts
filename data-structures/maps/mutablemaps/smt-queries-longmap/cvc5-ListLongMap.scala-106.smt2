; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1722 () Bool)

(assert start!1722)

(declare-fun b!12103 () Bool)

(declare-fun e!7222 () Bool)

(declare-fun tp_is_empty!613 () Bool)

(declare-fun tp!2042 () Bool)

(assert (=> b!12103 (= e!7222 (and tp_is_empty!613 tp!2042))))

(declare-fun key!303 () (_ BitVec 64))

(declare-fun b!12104 () Bool)

(declare-datatypes ((B!440 0))(
  ( (B!441 (val!315 Int)) )
))
(declare-datatypes ((tuple2!412 0))(
  ( (tuple2!413 (_1!206 (_ BitVec 64)) (_2!206 B!440)) )
))
(declare-datatypes ((List!362 0))(
  ( (Nil!359) (Cons!358 (h!924 tuple2!412) (t!2749 List!362)) )
))
(declare-fun l!1094 () List!362)

(declare-datatypes ((Option!47 0))(
  ( (Some!46 (v!1361 B!440)) (None!45) )
))
(declare-fun lt!3099 () Option!47)

(declare-fun e!7221 () Bool)

(declare-fun getValueByKey!41 (List!362 (_ BitVec 64)) Option!47)

(assert (=> b!12104 (= e!7221 (not (= (getValueByKey!41 (t!2749 l!1094) key!303) lt!3099)))))

(declare-fun res!9863 () Bool)

(declare-fun e!7220 () Bool)

(assert (=> start!1722 (=> (not res!9863) (not e!7220))))

(declare-fun isStrictlySorted!59 (List!362) Bool)

(assert (=> start!1722 (= res!9863 (isStrictlySorted!59 l!1094))))

(assert (=> start!1722 e!7220))

(assert (=> start!1722 e!7222))

(assert (=> start!1722 tp_is_empty!613))

(assert (=> start!1722 true))

(declare-fun b!12105 () Bool)

(declare-fun e!7223 () Bool)

(assert (=> b!12105 (= e!7223 e!7221)))

(declare-fun res!9864 () Bool)

(assert (=> b!12105 (=> res!9864 e!7221)))

(assert (=> b!12105 (= res!9864 (not (isStrictlySorted!59 (t!2749 l!1094))))))

(declare-fun b!12106 () Bool)

(assert (=> b!12106 (= e!7220 e!7223)))

(declare-fun res!9865 () Bool)

(assert (=> b!12106 (=> (not res!9865) (not e!7223))))

(assert (=> b!12106 (= res!9865 (= (getValueByKey!41 l!1094 key!303) lt!3099))))

(declare-fun v!194 () B!440)

(assert (=> b!12106 (= lt!3099 (Some!46 v!194))))

(declare-fun b!12107 () Bool)

(declare-fun res!9862 () Bool)

(assert (=> b!12107 (=> (not res!9862) (not e!7223))))

(assert (=> b!12107 (= res!9862 (and (is-Cons!358 l!1094) (not (= (_1!206 (h!924 l!1094)) key!303))))))

(assert (= (and start!1722 res!9863) b!12106))

(assert (= (and b!12106 res!9865) b!12107))

(assert (= (and b!12107 res!9862) b!12105))

(assert (= (and b!12105 (not res!9864)) b!12104))

(assert (= (and start!1722 (is-Cons!358 l!1094)) b!12103))

(declare-fun m!8363 () Bool)

(assert (=> b!12104 m!8363))

(declare-fun m!8365 () Bool)

(assert (=> start!1722 m!8365))

(declare-fun m!8367 () Bool)

(assert (=> b!12105 m!8367))

(declare-fun m!8369 () Bool)

(assert (=> b!12106 m!8369))

(push 1)

(assert (not b!12106))

(assert (not b!12104))

(assert (not b!12105))

(assert (not start!1722))

(assert (not b!12103))

(assert tp_is_empty!613)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!12170 () Bool)

(declare-fun e!7268 () Option!47)

(assert (=> b!12170 (= e!7268 (Some!46 (_2!206 (h!924 l!1094))))))

(declare-fun d!1691 () Bool)

(declare-fun c!1053 () Bool)

(assert (=> d!1691 (= c!1053 (and (is-Cons!358 l!1094) (= (_1!206 (h!924 l!1094)) key!303)))))

(assert (=> d!1691 (= (getValueByKey!41 l!1094 key!303) e!7268)))

(declare-fun b!12171 () Bool)

(declare-fun e!7269 () Option!47)

(assert (=> b!12171 (= e!7268 e!7269)))

(declare-fun c!1054 () Bool)

(assert (=> b!12171 (= c!1054 (and (is-Cons!358 l!1094) (not (= (_1!206 (h!924 l!1094)) key!303))))))

(declare-fun b!12172 () Bool)

(assert (=> b!12172 (= e!7269 (getValueByKey!41 (t!2749 l!1094) key!303))))

(declare-fun b!12173 () Bool)

(assert (=> b!12173 (= e!7269 None!45)))

(assert (= (and d!1691 c!1053) b!12170))

(assert (= (and d!1691 (not c!1053)) b!12171))

(assert (= (and b!12171 c!1054) b!12172))

(assert (= (and b!12171 (not c!1054)) b!12173))

(assert (=> b!12172 m!8363))

(assert (=> b!12106 d!1691))

(declare-fun d!1701 () Bool)

(declare-fun res!9906 () Bool)

(declare-fun e!7289 () Bool)

(assert (=> d!1701 (=> res!9906 e!7289)))

(assert (=> d!1701 (= res!9906 (or (is-Nil!359 l!1094) (is-Nil!359 (t!2749 l!1094))))))

(assert (=> d!1701 (= (isStrictlySorted!59 l!1094) e!7289)))

(declare-fun b!12203 () Bool)

(declare-fun e!7290 () Bool)

(assert (=> b!12203 (= e!7289 e!7290)))

(declare-fun res!9907 () Bool)

(assert (=> b!12203 (=> (not res!9907) (not e!7290))))

(assert (=> b!12203 (= res!9907 (bvslt (_1!206 (h!924 l!1094)) (_1!206 (h!924 (t!2749 l!1094)))))))

(declare-fun b!12204 () Bool)

(assert (=> b!12204 (= e!7290 (isStrictlySorted!59 (t!2749 l!1094)))))

(assert (= (and d!1701 (not res!9906)) b!12203))

(assert (= (and b!12203 res!9907) b!12204))

(assert (=> b!12204 m!8367))

(assert (=> start!1722 d!1701))

(declare-fun b!12205 () Bool)

(declare-fun e!7291 () Option!47)

(assert (=> b!12205 (= e!7291 (Some!46 (_2!206 (h!924 (t!2749 l!1094)))))))

(declare-fun d!1707 () Bool)

(declare-fun c!1063 () Bool)

(assert (=> d!1707 (= c!1063 (and (is-Cons!358 (t!2749 l!1094)) (= (_1!206 (h!924 (t!2749 l!1094))) key!303)))))

(assert (=> d!1707 (= (getValueByKey!41 (t!2749 l!1094) key!303) e!7291)))

(declare-fun b!12206 () Bool)

(declare-fun e!7292 () Option!47)

(assert (=> b!12206 (= e!7291 e!7292)))

(declare-fun c!1064 () Bool)

(assert (=> b!12206 (= c!1064 (and (is-Cons!358 (t!2749 l!1094)) (not (= (_1!206 (h!924 (t!2749 l!1094))) key!303))))))

(declare-fun b!12207 () Bool)

(assert (=> b!12207 (= e!7292 (getValueByKey!41 (t!2749 (t!2749 l!1094)) key!303))))

(declare-fun b!12208 () Bool)

(assert (=> b!12208 (= e!7292 None!45)))

(assert (= (and d!1707 c!1063) b!12205))

(assert (= (and d!1707 (not c!1063)) b!12206))

(assert (= (and b!12206 c!1064) b!12207))

(assert (= (and b!12206 (not c!1064)) b!12208))

(declare-fun m!8393 () Bool)

(assert (=> b!12207 m!8393))

(assert (=> b!12104 d!1707))

(declare-fun d!1709 () Bool)

(declare-fun res!9910 () Bool)

(declare-fun e!7295 () Bool)

(assert (=> d!1709 (=> res!9910 e!7295)))

(assert (=> d!1709 (= res!9910 (or (is-Nil!359 (t!2749 l!1094)) (is-Nil!359 (t!2749 (t!2749 l!1094)))))))

(assert (=> d!1709 (= (isStrictlySorted!59 (t!2749 l!1094)) e!7295)))

(declare-fun b!12211 () Bool)

(declare-fun e!7296 () Bool)

(assert (=> b!12211 (= e!7295 e!7296)))

(declare-fun res!9911 () Bool)

(assert (=> b!12211 (=> (not res!9911) (not e!7296))))

(assert (=> b!12211 (= res!9911 (bvslt (_1!206 (h!924 (t!2749 l!1094))) (_1!206 (h!924 (t!2749 (t!2749 l!1094))))))))

(declare-fun b!12212 () Bool)

(assert (=> b!12212 (= e!7296 (isStrictlySorted!59 (t!2749 (t!2749 l!1094))))))

(assert (= (and d!1709 (not res!9910)) b!12211))

(assert (= (and b!12211 res!9911) b!12212))

(declare-fun m!8397 () Bool)

(assert (=> b!12212 m!8397))

(assert (=> b!12105 d!1709))

(declare-fun b!12223 () Bool)

(declare-fun e!7303 () Bool)

(declare-fun tp!2056 () Bool)

(assert (=> b!12223 (= e!7303 (and tp_is_empty!613 tp!2056))))

(assert (=> b!12103 (= tp!2042 e!7303)))

(assert (= (and b!12103 (is-Cons!358 (t!2749 l!1094))) b!12223))

(push 1)

