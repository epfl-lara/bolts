; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137174 () Bool)

(assert start!137174)

(declare-fun b!1580186 () Bool)

(declare-fun res!1079611 () Bool)

(declare-fun e!881562 () Bool)

(assert (=> b!1580186 (=> (not res!1079611) (not e!881562))))

(declare-datatypes ((B!2646 0))(
  ( (B!2647 (val!19685 Int)) )
))
(declare-datatypes ((tuple2!25658 0))(
  ( (tuple2!25659 (_1!12839 (_ BitVec 64)) (_2!12839 B!2646)) )
))
(declare-datatypes ((List!36966 0))(
  ( (Nil!36963) (Cons!36962 (h!38506 tuple2!25658) (t!51887 List!36966)) )
))
(declare-fun l!1390 () List!36966)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!907 (List!36966 (_ BitVec 64)) Bool)

(assert (=> b!1580186 (= res!1079611 (containsKey!907 (t!51887 l!1390) key!405))))

(declare-fun b!1580187 () Bool)

(declare-fun e!881559 () Bool)

(assert (=> b!1580187 (= e!881559 e!881562)))

(declare-fun res!1079612 () Bool)

(assert (=> b!1580187 (=> (not res!1079612) (not e!881562))))

(declare-fun e!881561 () Bool)

(assert (=> b!1580187 (= res!1079612 e!881561)))

(declare-fun res!1079609 () Bool)

(assert (=> b!1580187 (=> res!1079609 e!881561)))

(declare-datatypes ((tuple2!25660 0))(
  ( (tuple2!25661 (_1!12840 tuple2!25658) (_2!12840 List!36966)) )
))
(declare-datatypes ((Option!901 0))(
  ( (Some!900 (v!22394 tuple2!25660)) (None!899) )
))
(declare-fun lt!676669 () Option!901)

(declare-fun isEmpty!1167 (Option!901) Bool)

(assert (=> b!1580187 (= res!1079609 (isEmpty!1167 lt!676669))))

(declare-fun unapply!81 (List!36966) Option!901)

(assert (=> b!1580187 (= lt!676669 (unapply!81 l!1390))))

(declare-fun b!1580188 () Bool)

(declare-fun get!26812 (Option!901) tuple2!25660)

(assert (=> b!1580188 (= e!881561 (not (is-Nil!36963 (_2!12840 (get!26812 lt!676669)))))))

(declare-fun b!1580189 () Bool)

(declare-fun res!1079604 () Bool)

(assert (=> b!1580189 (=> (not res!1079604) (not e!881562))))

(declare-fun isStrictlySorted!1061 (List!36966) Bool)

(assert (=> b!1580189 (= res!1079604 (isStrictlySorted!1061 (t!51887 l!1390)))))

(declare-fun b!1580190 () Bool)

(assert (=> b!1580190 (= e!881562 (not true))))

(declare-fun value!194 () B!2646)

(declare-datatypes ((Option!902 0))(
  ( (Some!901 (v!22395 B!2646)) (None!900) )
))
(declare-fun getValueByKey!815 (List!36966 (_ BitVec 64)) Option!902)

(assert (=> b!1580190 (= (getValueByKey!815 (t!51887 l!1390) key!405) (Some!901 value!194))))

(declare-datatypes ((Unit!52182 0))(
  ( (Unit!52183) )
))
(declare-fun lt!676668 () Unit!52182)

(declare-fun lemmaContainsTupThenGetReturnValue!398 (List!36966 (_ BitVec 64) B!2646) Unit!52182)

(assert (=> b!1580190 (= lt!676668 (lemmaContainsTupThenGetReturnValue!398 (t!51887 l!1390) key!405 value!194))))

(declare-fun res!1079608 () Bool)

(declare-fun e!881558 () Bool)

(assert (=> start!137174 (=> (not res!1079608) (not e!881558))))

(assert (=> start!137174 (= res!1079608 (isStrictlySorted!1061 l!1390))))

(assert (=> start!137174 e!881558))

(declare-fun e!881560 () Bool)

(assert (=> start!137174 e!881560))

(assert (=> start!137174 true))

(declare-fun tp_is_empty!39191 () Bool)

(assert (=> start!137174 tp_is_empty!39191))

(declare-fun b!1580191 () Bool)

(declare-fun tp!114448 () Bool)

(assert (=> b!1580191 (= e!881560 (and tp_is_empty!39191 tp!114448))))

(declare-fun b!1580192 () Bool)

(declare-fun res!1079605 () Bool)

(assert (=> b!1580192 (=> (not res!1079605) (not e!881562))))

(assert (=> b!1580192 (= res!1079605 (and (or (not (is-Cons!36962 l!1390)) (not (= (_1!12839 (h!38506 l!1390)) key!405))) (is-Cons!36962 l!1390)))))

(declare-fun b!1580193 () Bool)

(declare-fun res!1079606 () Bool)

(assert (=> b!1580193 (=> (not res!1079606) (not e!881558))))

(assert (=> b!1580193 (= res!1079606 (containsKey!907 l!1390 key!405))))

(declare-fun b!1580194 () Bool)

(declare-fun res!1079610 () Bool)

(assert (=> b!1580194 (=> (not res!1079610) (not e!881562))))

(declare-fun lt!676667 () tuple2!25658)

(declare-fun contains!10494 (List!36966 tuple2!25658) Bool)

(assert (=> b!1580194 (= res!1079610 (contains!10494 (t!51887 l!1390) lt!676667))))

(declare-fun b!1580195 () Bool)

(assert (=> b!1580195 (= e!881558 e!881559)))

(declare-fun res!1079607 () Bool)

(assert (=> b!1580195 (=> (not res!1079607) (not e!881559))))

(assert (=> b!1580195 (= res!1079607 (contains!10494 l!1390 lt!676667))))

(assert (=> b!1580195 (= lt!676667 (tuple2!25659 key!405 value!194))))

(assert (= (and start!137174 res!1079608) b!1580193))

(assert (= (and b!1580193 res!1079606) b!1580195))

(assert (= (and b!1580195 res!1079607) b!1580187))

(assert (= (and b!1580187 (not res!1079609)) b!1580188))

(assert (= (and b!1580187 res!1079612) b!1580192))

(assert (= (and b!1580192 res!1079605) b!1580189))

(assert (= (and b!1580189 res!1079604) b!1580186))

(assert (= (and b!1580186 res!1079611) b!1580194))

(assert (= (and b!1580194 res!1079610) b!1580190))

(assert (= (and start!137174 (is-Cons!36962 l!1390)) b!1580191))

(declare-fun m!1451689 () Bool)

(assert (=> b!1580189 m!1451689))

(declare-fun m!1451691 () Bool)

(assert (=> b!1580194 m!1451691))

(declare-fun m!1451693 () Bool)

(assert (=> b!1580186 m!1451693))

(declare-fun m!1451695 () Bool)

(assert (=> b!1580188 m!1451695))

(declare-fun m!1451697 () Bool)

(assert (=> b!1580195 m!1451697))

(declare-fun m!1451699 () Bool)

(assert (=> b!1580193 m!1451699))

(declare-fun m!1451701 () Bool)

(assert (=> b!1580190 m!1451701))

(declare-fun m!1451703 () Bool)

(assert (=> b!1580190 m!1451703))

(declare-fun m!1451705 () Bool)

(assert (=> start!137174 m!1451705))

(declare-fun m!1451707 () Bool)

(assert (=> b!1580187 m!1451707))

(declare-fun m!1451709 () Bool)

(assert (=> b!1580187 m!1451709))

(push 1)

