; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43774 () Bool)

(assert start!43774)

(declare-fun res!288218 () Bool)

(declare-fun e!284676 () Bool)

(assert (=> start!43774 (=> (not res!288218) (not e!284676))))

(declare-datatypes ((B!1094 0))(
  ( (B!1095 (val!6999 Int)) )
))
(declare-datatypes ((tuple2!9196 0))(
  ( (tuple2!9197 (_1!4608 (_ BitVec 64)) (_2!4608 B!1094)) )
))
(declare-datatypes ((List!9298 0))(
  ( (Nil!9295) (Cons!9294 (h!10150 tuple2!9196) (t!15528 List!9298)) )
))
(declare-fun l!956 () List!9298)

(declare-fun isStrictlySorted!398 (List!9298) Bool)

(assert (=> start!43774 (= res!288218 (isStrictlySorted!398 l!956))))

(assert (=> start!43774 e!284676))

(declare-fun e!284677 () Bool)

(assert (=> start!43774 e!284677))

(assert (=> start!43774 true))

(declare-fun tp_is_empty!13903 () Bool)

(assert (=> start!43774 tp_is_empty!13903))

(declare-fun b!483642 () Bool)

(declare-fun res!288217 () Bool)

(assert (=> b!483642 (=> (not res!288217) (not e!284676))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!364 (List!9298 (_ BitVec 64)) Bool)

(assert (=> b!483642 (= res!288217 (not (containsKey!364 l!956 key!251)))))

(declare-fun b!483643 () Bool)

(assert (=> b!483643 (= e!284676 false)))

(declare-fun value!166 () B!1094)

(declare-fun lt!219251 () List!9298)

(declare-fun insertStrictlySorted!220 (List!9298 (_ BitVec 64) B!1094) List!9298)

(assert (=> b!483643 (= lt!219251 (insertStrictlySorted!220 l!956 key!251 value!166))))

(declare-fun b!483644 () Bool)

(declare-fun tp!43444 () Bool)

(assert (=> b!483644 (= e!284677 (and tp_is_empty!13903 tp!43444))))

(assert (= (and start!43774 res!288218) b!483642))

(assert (= (and b!483642 res!288217) b!483643))

(assert (= (and start!43774 (is-Cons!9294 l!956)) b!483644))

(declare-fun m!464575 () Bool)

(assert (=> start!43774 m!464575))

(declare-fun m!464577 () Bool)

(assert (=> b!483642 m!464577))

(declare-fun m!464579 () Bool)

(assert (=> b!483643 m!464579))

(push 1)

(assert (not start!43774))

(assert (not b!483643))

(assert (not b!483642))

(assert (not b!483644))

(assert tp_is_empty!13903)

(check-sat)

(pop 1)

