; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1698 () Bool)

(assert start!1698)

(declare-fun res!9822 () Bool)

(declare-fun e!7145 () Bool)

(assert (=> start!1698 (=> (not res!9822) (not e!7145))))

(declare-datatypes ((B!434 0))(
  ( (B!435 (val!312 Int)) )
))
(declare-datatypes ((tuple2!406 0))(
  ( (tuple2!407 (_1!203 (_ BitVec 64)) (_2!203 B!434)) )
))
(declare-datatypes ((List!359 0))(
  ( (Nil!356) (Cons!355 (h!921 tuple2!406) (t!2746 List!359)) )
))
(declare-fun l!1094 () List!359)

(declare-fun isStrictlySorted!56 (List!359) Bool)

(assert (=> start!1698 (= res!9822 (isStrictlySorted!56 l!1094))))

(assert (=> start!1698 e!7145))

(declare-fun e!7144 () Bool)

(assert (=> start!1698 e!7144))

(assert (=> start!1698 true))

(declare-fun tp_is_empty!607 () Bool)

(assert (=> start!1698 tp_is_empty!607))

(declare-fun b!11985 () Bool)

(declare-fun res!9823 () Bool)

(assert (=> b!11985 (=> (not res!9823) (not e!7145))))

(declare-fun v!194 () B!434)

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((Option!44 0))(
  ( (Some!43 (v!1358 B!434)) (None!42) )
))
(declare-fun getValueByKey!38 (List!359 (_ BitVec 64)) Option!44)

(assert (=> b!11985 (= res!9823 (= (getValueByKey!38 l!1094 key!303) (Some!43 v!194)))))

(declare-fun b!11986 () Bool)

(declare-fun ListPrimitiveSize!13 (List!359) Int)

(assert (=> b!11986 (= e!7145 (< (ListPrimitiveSize!13 l!1094) 0))))

(declare-fun b!11987 () Bool)

(declare-fun tp!2024 () Bool)

(assert (=> b!11987 (= e!7144 (and tp_is_empty!607 tp!2024))))

(assert (= (and start!1698 res!9822) b!11985))

(assert (= (and b!11985 res!9823) b!11986))

(assert (= (and start!1698 (is-Cons!355 l!1094)) b!11987))

(declare-fun m!8327 () Bool)

(assert (=> start!1698 m!8327))

(declare-fun m!8329 () Bool)

(assert (=> b!11985 m!8329))

(declare-fun m!8331 () Bool)

(assert (=> b!11986 m!8331))

(push 1)

(assert (not b!11985))

(assert tp_is_empty!607)

(assert (not b!11987))

(assert (not b!11986))

(assert (not start!1698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1669 () Bool)

(declare-fun c!1018 () Bool)

(assert (=> d!1669 (= c!1018 (and (is-Cons!355 l!1094) (= (_1!203 (h!921 l!1094)) key!303)))))

(declare-fun e!7162 () Option!44)

(assert (=> d!1669 (= (getValueByKey!38 l!1094 key!303) e!7162)))

(declare-fun b!12016 () Bool)

(declare-fun e!7163 () Option!44)

(assert (=> b!12016 (= e!7163 (getValueByKey!38 (t!2746 l!1094) key!303))))

(declare-fun b!12014 () Bool)

(assert (=> b!12014 (= e!7162 (Some!43 (_2!203 (h!921 l!1094))))))

(declare-fun b!12017 () Bool)

(assert (=> b!12017 (= e!7163 None!42)))

(declare-fun b!12015 () Bool)

(assert (=> b!12015 (= e!7162 e!7163)))

(declare-fun c!1019 () Bool)

(assert (=> b!12015 (= c!1019 (and (is-Cons!355 l!1094) (not (= (_1!203 (h!921 l!1094)) key!303))))))

(assert (= (and d!1669 c!1018) b!12014))

(assert (= (and d!1669 (not c!1018)) b!12015))

(assert (= (and b!12015 c!1019) b!12016))

(assert (= (and b!12015 (not c!1019)) b!12017))

(declare-fun m!8345 () Bool)

(assert (=> b!12016 m!8345))

(assert (=> b!11985 d!1669))

(declare-fun d!1675 () Bool)

(declare-fun lt!3090 () Int)

(assert (=> d!1675 (>= lt!3090 0)))

(declare-fun e!7174 () Int)

(assert (=> d!1675 (= lt!3090 e!7174)))

(declare-fun c!1030 () Bool)

(assert (=> d!1675 (= c!1030 (is-Nil!356 l!1094))))

(assert (=> d!1675 (= (ListPrimitiveSize!13 l!1094) lt!3090)))

(declare-fun b!12038 () Bool)

(assert (=> b!12038 (= e!7174 0)))

(declare-fun b!12039 () Bool)

(assert (=> b!12039 (= e!7174 (+ 1 (ListPrimitiveSize!13 (t!2746 l!1094))))))

(assert (= (and d!1675 c!1030) b!12038))

(assert (= (and d!1675 (not c!1030)) b!12039))

(declare-fun m!8347 () Bool)

(assert (=> b!12039 m!8347))

(assert (=> b!11986 d!1675))

(declare-fun d!1677 () Bool)

(declare-fun res!9840 () Bool)

(declare-fun e!7189 () Bool)

(assert (=> d!1677 (=> res!9840 e!7189)))

(assert (=> d!1677 (= res!9840 (or (is-Nil!356 l!1094) (is-Nil!356 (t!2746 l!1094))))))

(assert (=> d!1677 (= (isStrictlySorted!56 l!1094) e!7189)))

(declare-fun b!12064 () Bool)

(declare-fun e!7190 () Bool)

(assert (=> b!12064 (= e!7189 e!7190)))

(declare-fun res!9841 () Bool)

(assert (=> b!12064 (=> (not res!9841) (not e!7190))))

(assert (=> b!12064 (= res!9841 (bvslt (_1!203 (h!921 l!1094)) (_1!203 (h!921 (t!2746 l!1094)))))))

(declare-fun b!12065 () Bool)

(assert (=> b!12065 (= e!7190 (isStrictlySorted!56 (t!2746 l!1094)))))

(assert (= (and d!1677 (not res!9840)) b!12064))

(assert (= (and b!12064 res!9841) b!12065))

(declare-fun m!8357 () Bool)

(assert (=> b!12065 m!8357))

(assert (=> start!1698 d!1677))

(declare-fun b!12070 () Bool)

(declare-fun e!7193 () Bool)

(declare-fun tp!2033 () Bool)

(assert (=> b!12070 (= e!7193 (and tp_is_empty!607 tp!2033))))

(assert (=> b!11987 (= tp!2024 e!7193)))

(assert (= (and b!11987 (is-Cons!355 (t!2746 l!1094))) b!12070))

(push 1)

(assert (not b!12039))

(assert (not b!12065))

(assert tp_is_empty!607)

(assert (not b!12016))

(assert (not b!12070))

(check-sat)

