; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1700 () Bool)

(assert start!1700)

(declare-fun res!9829 () Bool)

(declare-fun e!7151 () Bool)

(assert (=> start!1700 (=> (not res!9829) (not e!7151))))

(declare-datatypes ((B!436 0))(
  ( (B!437 (val!313 Int)) )
))
(declare-datatypes ((tuple2!408 0))(
  ( (tuple2!409 (_1!204 (_ BitVec 64)) (_2!204 B!436)) )
))
(declare-datatypes ((List!360 0))(
  ( (Nil!357) (Cons!356 (h!922 tuple2!408) (t!2747 List!360)) )
))
(declare-fun l!1094 () List!360)

(declare-fun isStrictlySorted!57 (List!360) Bool)

(assert (=> start!1700 (= res!9829 (isStrictlySorted!57 l!1094))))

(assert (=> start!1700 e!7151))

(declare-fun e!7150 () Bool)

(assert (=> start!1700 e!7150))

(assert (=> start!1700 true))

(declare-fun tp_is_empty!609 () Bool)

(assert (=> start!1700 tp_is_empty!609))

(declare-fun b!11994 () Bool)

(declare-fun res!9828 () Bool)

(assert (=> b!11994 (=> (not res!9828) (not e!7151))))

(declare-fun key!303 () (_ BitVec 64))

(declare-fun v!194 () B!436)

(declare-datatypes ((Option!45 0))(
  ( (Some!44 (v!1359 B!436)) (None!43) )
))
(declare-fun getValueByKey!39 (List!360 (_ BitVec 64)) Option!45)

(assert (=> b!11994 (= res!9828 (= (getValueByKey!39 l!1094 key!303) (Some!44 v!194)))))

(declare-fun b!11995 () Bool)

(declare-fun ListPrimitiveSize!14 (List!360) Int)

(assert (=> b!11995 (= e!7151 (< (ListPrimitiveSize!14 l!1094) 0))))

(declare-fun b!11996 () Bool)

(declare-fun tp!2027 () Bool)

(assert (=> b!11996 (= e!7150 (and tp_is_empty!609 tp!2027))))

(assert (= (and start!1700 res!9829) b!11994))

(assert (= (and b!11994 res!9828) b!11995))

(get-info :version)

(assert (= (and start!1700 ((_ is Cons!356) l!1094)) b!11996))

(declare-fun m!8333 () Bool)

(assert (=> start!1700 m!8333))

(declare-fun m!8335 () Bool)

(assert (=> b!11994 m!8335))

(declare-fun m!8337 () Bool)

(assert (=> b!11995 m!8337))

(check-sat (not b!11994) (not b!11995) (not start!1700) tp_is_empty!609 (not b!11996))
(check-sat)
(get-model)

(declare-fun b!12045 () Bool)

(declare-fun e!7178 () Option!45)

(assert (=> b!12045 (= e!7178 (getValueByKey!39 (t!2747 l!1094) key!303))))

(declare-fun d!1671 () Bool)

(declare-fun c!1032 () Bool)

(assert (=> d!1671 (= c!1032 (and ((_ is Cons!356) l!1094) (= (_1!204 (h!922 l!1094)) key!303)))))

(declare-fun e!7176 () Option!45)

(assert (=> d!1671 (= (getValueByKey!39 l!1094 key!303) e!7176)))

(declare-fun b!12043 () Bool)

(assert (=> b!12043 (= e!7176 e!7178)))

(declare-fun c!1034 () Bool)

(assert (=> b!12043 (= c!1034 (and ((_ is Cons!356) l!1094) (not (= (_1!204 (h!922 l!1094)) key!303))))))

(declare-fun b!12041 () Bool)

(assert (=> b!12041 (= e!7176 (Some!44 (_2!204 (h!922 l!1094))))))

(declare-fun b!12047 () Bool)

(assert (=> b!12047 (= e!7178 None!43)))

(assert (= (and d!1671 c!1032) b!12041))

(assert (= (and d!1671 (not c!1032)) b!12043))

(assert (= (and b!12043 c!1034) b!12045))

(assert (= (and b!12043 (not c!1034)) b!12047))

(declare-fun m!8351 () Bool)

(assert (=> b!12045 m!8351))

(assert (=> b!11994 d!1671))

(declare-fun d!1681 () Bool)

(declare-fun lt!3095 () Int)

(assert (=> d!1681 (>= lt!3095 0)))

(declare-fun e!7187 () Int)

(assert (=> d!1681 (= lt!3095 e!7187)))

(declare-fun c!1039 () Bool)

(assert (=> d!1681 (= c!1039 ((_ is Nil!357) l!1094))))

(assert (=> d!1681 (= (ListPrimitiveSize!14 l!1094) lt!3095)))

(declare-fun b!12060 () Bool)

(assert (=> b!12060 (= e!7187 0)))

(declare-fun b!12061 () Bool)

(assert (=> b!12061 (= e!7187 (+ 1 (ListPrimitiveSize!14 (t!2747 l!1094))))))

(assert (= (and d!1681 c!1039) b!12060))

(assert (= (and d!1681 (not c!1039)) b!12061))

(declare-fun m!8353 () Bool)

(assert (=> b!12061 m!8353))

(assert (=> b!11995 d!1681))

(declare-fun d!1683 () Bool)

(declare-fun res!9852 () Bool)

(declare-fun e!7204 () Bool)

(assert (=> d!1683 (=> res!9852 e!7204)))

(assert (=> d!1683 (= res!9852 (or ((_ is Nil!357) l!1094) ((_ is Nil!357) (t!2747 l!1094))))))

(assert (=> d!1683 (= (isStrictlySorted!57 l!1094) e!7204)))

(declare-fun b!12081 () Bool)

(declare-fun e!7205 () Bool)

(assert (=> b!12081 (= e!7204 e!7205)))

(declare-fun res!9853 () Bool)

(assert (=> b!12081 (=> (not res!9853) (not e!7205))))

(assert (=> b!12081 (= res!9853 (bvslt (_1!204 (h!922 l!1094)) (_1!204 (h!922 (t!2747 l!1094)))))))

(declare-fun b!12082 () Bool)

(assert (=> b!12082 (= e!7205 (isStrictlySorted!57 (t!2747 l!1094)))))

(assert (= (and d!1683 (not res!9852)) b!12081))

(assert (= (and b!12081 res!9853) b!12082))

(declare-fun m!8361 () Bool)

(assert (=> b!12082 m!8361))

(assert (=> start!1700 d!1683))

(declare-fun b!12092 () Bool)

(declare-fun e!7211 () Bool)

(declare-fun tp!2039 () Bool)

(assert (=> b!12092 (= e!7211 (and tp_is_empty!609 tp!2039))))

(assert (=> b!11996 (= tp!2027 e!7211)))

(assert (= (and b!11996 ((_ is Cons!356) (t!2747 l!1094))) b!12092))

(check-sat (not b!12045) (not b!12092) (not b!12061) (not b!12082) tp_is_empty!609)
(check-sat)
