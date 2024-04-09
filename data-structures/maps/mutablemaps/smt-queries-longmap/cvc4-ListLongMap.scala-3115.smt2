; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43796 () Bool)

(assert start!43796)

(declare-fun res!288310 () Bool)

(declare-fun e!284751 () Bool)

(assert (=> start!43796 (=> (not res!288310) (not e!284751))))

(declare-datatypes ((B!1116 0))(
  ( (B!1117 (val!7010 Int)) )
))
(declare-datatypes ((tuple2!9218 0))(
  ( (tuple2!9219 (_1!4619 (_ BitVec 64)) (_2!4619 B!1116)) )
))
(declare-datatypes ((List!9309 0))(
  ( (Nil!9306) (Cons!9305 (h!10161 tuple2!9218) (t!15539 List!9309)) )
))
(declare-fun l!956 () List!9309)

(declare-fun isStrictlySorted!409 (List!9309) Bool)

(assert (=> start!43796 (= res!288310 (isStrictlySorted!409 l!956))))

(assert (=> start!43796 e!284751))

(declare-fun e!284752 () Bool)

(assert (=> start!43796 e!284752))

(assert (=> start!43796 true))

(declare-fun tp_is_empty!13925 () Bool)

(assert (=> start!43796 tp_is_empty!13925))

(declare-fun b!483768 () Bool)

(declare-fun res!288311 () Bool)

(assert (=> b!483768 (=> (not res!288311) (not e!284751))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!375 (List!9309 (_ BitVec 64)) Bool)

(assert (=> b!483768 (= res!288311 (not (containsKey!375 l!956 key!251)))))

(declare-fun b!483769 () Bool)

(assert (=> b!483769 (= e!284751 false)))

(declare-fun lt!219293 () List!9309)

(declare-fun value!166 () B!1116)

(declare-fun insertStrictlySorted!231 (List!9309 (_ BitVec 64) B!1116) List!9309)

(assert (=> b!483769 (= lt!219293 (insertStrictlySorted!231 l!956 key!251 value!166))))

(declare-fun b!483770 () Bool)

(declare-fun tp!43477 () Bool)

(assert (=> b!483770 (= e!284752 (and tp_is_empty!13925 tp!43477))))

(assert (= (and start!43796 res!288310) b!483768))

(assert (= (and b!483768 res!288311) b!483769))

(assert (= (and start!43796 (is-Cons!9305 l!956)) b!483770))

(declare-fun m!464677 () Bool)

(assert (=> start!43796 m!464677))

(declare-fun m!464679 () Bool)

(assert (=> b!483768 m!464679))

(declare-fun m!464681 () Bool)

(assert (=> b!483769 m!464681))

(push 1)

(assert (not b!483770))

(assert (not start!43796))

(assert (not b!483769))

(assert tp_is_empty!13925)

(assert (not b!483768))

(check-sat)

