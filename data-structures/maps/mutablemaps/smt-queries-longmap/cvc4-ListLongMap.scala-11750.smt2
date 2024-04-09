; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137894 () Bool)

(assert start!137894)

(declare-fun b!1583132 () Bool)

(declare-fun res!1081589 () Bool)

(declare-fun e!883668 () Bool)

(assert (=> b!1583132 (=> (not res!1081589) (not e!883668))))

(declare-datatypes ((B!2844 0))(
  ( (B!2845 (val!19784 Int)) )
))
(declare-datatypes ((tuple2!25900 0))(
  ( (tuple2!25901 (_1!12960 (_ BitVec 64)) (_2!12960 B!2844)) )
))
(declare-datatypes ((List!37065 0))(
  ( (Nil!37062) (Cons!37061 (h!38605 tuple2!25900) (t!51986 List!37065)) )
))
(declare-fun l!1065 () List!37065)

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!982 (List!37065 (_ BitVec 64)) Bool)

(assert (=> b!1583132 (= res!1081589 (containsKey!982 l!1065 key!287))))

(declare-fun b!1583134 () Bool)

(declare-datatypes ((Option!947 0))(
  ( (Some!946 (v!22470 B!2844)) (None!945) )
))
(declare-fun isDefined!607 (Option!947) Bool)

(declare-fun getValueByKey!839 (List!37065 (_ BitVec 64)) Option!947)

(assert (=> b!1583134 (= e!883668 (not (isDefined!607 (getValueByKey!839 l!1065 key!287))))))

(declare-fun res!1081588 () Bool)

(assert (=> start!137894 (=> (not res!1081588) (not e!883668))))

(declare-fun isStrictlySorted!1136 (List!37065) Bool)

(assert (=> start!137894 (= res!1081588 (isStrictlySorted!1136 l!1065))))

(assert (=> start!137894 e!883668))

(declare-fun e!883667 () Bool)

(assert (=> start!137894 e!883667))

(assert (=> start!137894 true))

(declare-fun b!1583133 () Bool)

(declare-fun res!1081587 () Bool)

(assert (=> b!1583133 (=> (not res!1081587) (not e!883668))))

(assert (=> b!1583133 (= res!1081587 (or (not (is-Cons!37061 l!1065)) (= (_1!12960 (h!38605 l!1065)) key!287)))))

(declare-fun b!1583135 () Bool)

(declare-fun tp_is_empty!39377 () Bool)

(declare-fun tp!114919 () Bool)

(assert (=> b!1583135 (= e!883667 (and tp_is_empty!39377 tp!114919))))

(assert (= (and start!137894 res!1081588) b!1583132))

(assert (= (and b!1583132 res!1081589) b!1583133))

(assert (= (and b!1583133 res!1081587) b!1583134))

(assert (= (and start!137894 (is-Cons!37061 l!1065)) b!1583135))

(declare-fun m!1453167 () Bool)

(assert (=> b!1583132 m!1453167))

(declare-fun m!1453169 () Bool)

(assert (=> b!1583134 m!1453169))

(assert (=> b!1583134 m!1453169))

(declare-fun m!1453171 () Bool)

(assert (=> b!1583134 m!1453171))

(declare-fun m!1453173 () Bool)

(assert (=> start!137894 m!1453173))

(push 1)

(assert (not b!1583135))

(assert tp_is_empty!39377)

(assert (not start!137894))

(assert (not b!1583132))

(assert (not b!1583134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167119 () Bool)

(declare-fun isEmpty!1192 (Option!947) Bool)

(assert (=> d!167119 (= (isDefined!607 (getValueByKey!839 l!1065 key!287)) (not (isEmpty!1192 (getValueByKey!839 l!1065 key!287))))))

(declare-fun bs!45883 () Bool)

(assert (= bs!45883 d!167119))

(assert (=> bs!45883 m!1453169))

(declare-fun m!1453175 () Bool)

(assert (=> bs!45883 m!1453175))

(assert (=> b!1583134 d!167119))

(declare-fun b!1583163 () Bool)

(declare-fun e!883691 () Option!947)

(declare-fun e!883692 () Option!947)

(assert (=> b!1583163 (= e!883691 e!883692)))

(declare-fun c!146652 () Bool)

(assert (=> b!1583163 (= c!146652 (and (is-Cons!37061 l!1065) (not (= (_1!12960 (h!38605 l!1065)) key!287))))))

(declare-fun b!1583164 () Bool)

(assert (=> b!1583164 (= e!883692 (getValueByKey!839 (t!51986 l!1065) key!287))))

(declare-fun b!1583165 () Bool)

(assert (=> b!1583165 (= e!883692 None!945)))

(declare-fun d!167121 () Bool)

(declare-fun c!146651 () Bool)

(assert (=> d!167121 (= c!146651 (and (is-Cons!37061 l!1065) (= (_1!12960 (h!38605 l!1065)) key!287)))))

(assert (=> d!167121 (= (getValueByKey!839 l!1065 key!287) e!883691)))

(declare-fun b!1583162 () Bool)

(assert (=> b!1583162 (= e!883691 (Some!946 (_2!12960 (h!38605 l!1065))))))

(assert (= (and d!167121 c!146651) b!1583162))

(assert (= (and d!167121 (not c!146651)) b!1583163))

(assert (= (and b!1583163 c!146652) b!1583164))

(assert (= (and b!1583163 (not c!146652)) b!1583165))

(declare-fun m!1453185 () Bool)

(assert (=> b!1583164 m!1453185))

(assert (=> b!1583134 d!167121))

(declare-fun d!167131 () Bool)

(declare-fun res!1081612 () Bool)

(declare-fun e!883707 () Bool)

(assert (=> d!167131 (=> res!1081612 e!883707)))

(assert (=> d!167131 (= res!1081612 (and (is-Cons!37061 l!1065) (= (_1!12960 (h!38605 l!1065)) key!287)))))

(assert (=> d!167131 (= (containsKey!982 l!1065 key!287) e!883707)))

(declare-fun b!1583190 () Bool)

(declare-fun e!883708 () Bool)

(assert (=> b!1583190 (= e!883707 e!883708)))

(declare-fun res!1081613 () Bool)

(assert (=> b!1583190 (=> (not res!1081613) (not e!883708))))

(assert (=> b!1583190 (= res!1081613 (and (or (not (is-Cons!37061 l!1065)) (bvsle (_1!12960 (h!38605 l!1065)) key!287)) (is-Cons!37061 l!1065) (bvslt (_1!12960 (h!38605 l!1065)) key!287)))))

(declare-fun b!1583191 () Bool)

(assert (=> b!1583191 (= e!883708 (containsKey!982 (t!51986 l!1065) key!287))))

(assert (= (and d!167131 (not res!1081612)) b!1583190))

(assert (= (and b!1583190 res!1081613) b!1583191))

(declare-fun m!1453191 () Bool)

(assert (=> b!1583191 m!1453191))

(assert (=> b!1583132 d!167131))

(declare-fun d!167137 () Bool)

(declare-fun res!1081624 () Bool)

(declare-fun e!883726 () Bool)

(assert (=> d!167137 (=> res!1081624 e!883726)))

(assert (=> d!167137 (= res!1081624 (or (is-Nil!37062 l!1065) (is-Nil!37062 (t!51986 l!1065))))))

(assert (=> d!167137 (= (isStrictlySorted!1136 l!1065) e!883726)))

(declare-fun b!1583215 () Bool)

(declare-fun e!883727 () Bool)

(assert (=> b!1583215 (= e!883726 e!883727)))

(declare-fun res!1081625 () Bool)

(assert (=> b!1583215 (=> (not res!1081625) (not e!883727))))

(assert (=> b!1583215 (= res!1081625 (bvslt (_1!12960 (h!38605 l!1065)) (_1!12960 (h!38605 (t!51986 l!1065)))))))

(declare-fun b!1583216 () Bool)

(assert (=> b!1583216 (= e!883727 (isStrictlySorted!1136 (t!51986 l!1065)))))

(assert (= (and d!167137 (not res!1081624)) b!1583215))

(assert (= (and b!1583215 res!1081625) b!1583216))

(declare-fun m!1453197 () Bool)

(assert (=> b!1583216 m!1453197))

(assert (=> start!137894 d!167137))

(declare-fun b!1583222 () Bool)

(declare-fun e!883731 () Bool)

(declare-fun tp!114928 () Bool)

(assert (=> b!1583222 (= e!883731 (and tp_is_empty!39377 tp!114928))))

(assert (=> b!1583135 (= tp!114919 e!883731)))

(assert (= (and b!1583135 (is-Cons!37061 (t!51986 l!1065))) b!1583222))

(push 1)

(assert (not b!1583222))

(assert tp_is_empty!39377)

(assert (not b!1583216))

(assert (not b!1583164))

(assert (not d!167119))

(assert (not b!1583191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1583242 () Bool)

(declare-fun e!883746 () Option!947)

(declare-fun e!883747 () Option!947)

