; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43786 () Bool)

(assert start!43786)

(declare-fun res!288281 () Bool)

(declare-fun e!284721 () Bool)

(assert (=> start!43786 (=> (not res!288281) (not e!284721))))

(declare-datatypes ((B!1106 0))(
  ( (B!1107 (val!7005 Int)) )
))
(declare-datatypes ((tuple2!9208 0))(
  ( (tuple2!9209 (_1!4614 (_ BitVec 64)) (_2!4614 B!1106)) )
))
(declare-datatypes ((List!9304 0))(
  ( (Nil!9301) (Cons!9300 (h!10156 tuple2!9208) (t!15534 List!9304)) )
))
(declare-fun l!956 () List!9304)

(declare-fun isStrictlySorted!404 (List!9304) Bool)

(assert (=> start!43786 (= res!288281 (isStrictlySorted!404 l!956))))

(assert (=> start!43786 e!284721))

(declare-fun e!284722 () Bool)

(assert (=> start!43786 e!284722))

(assert (=> start!43786 true))

(declare-fun tp_is_empty!13915 () Bool)

(assert (=> start!43786 tp_is_empty!13915))

(declare-fun b!483723 () Bool)

(declare-fun res!288280 () Bool)

(assert (=> b!483723 (=> (not res!288280) (not e!284721))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!370 (List!9304 (_ BitVec 64)) Bool)

(assert (=> b!483723 (= res!288280 (not (containsKey!370 l!956 key!251)))))

(declare-fun b!483724 () Bool)

(assert (=> b!483724 (= e!284721 false)))

(declare-fun lt!219278 () List!9304)

(declare-fun value!166 () B!1106)

(declare-fun insertStrictlySorted!226 (List!9304 (_ BitVec 64) B!1106) List!9304)

(assert (=> b!483724 (= lt!219278 (insertStrictlySorted!226 l!956 key!251 value!166))))

(declare-fun b!483725 () Bool)

(declare-fun tp!43462 () Bool)

(assert (=> b!483725 (= e!284722 (and tp_is_empty!13915 tp!43462))))

(assert (= (and start!43786 res!288281) b!483723))

(assert (= (and b!483723 res!288280) b!483724))

(assert (= (and start!43786 (is-Cons!9300 l!956)) b!483725))

(declare-fun m!464647 () Bool)

(assert (=> start!43786 m!464647))

(declare-fun m!464649 () Bool)

(assert (=> b!483723 m!464649))

(declare-fun m!464651 () Bool)

(assert (=> b!483724 m!464651))

(push 1)

(assert (not b!483725))

(assert tp_is_empty!13915)

(assert (not start!43786))

(assert (not b!483723))

(assert (not b!483724))

(check-sat)

(pop 1)

