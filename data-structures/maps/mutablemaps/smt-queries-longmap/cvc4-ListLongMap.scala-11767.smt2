; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138224 () Bool)

(assert start!138224)

(declare-fun res!1082696 () Bool)

(declare-fun e!884984 () Bool)

(assert (=> start!138224 (=> (not res!1082696) (not e!884984))))

(declare-datatypes ((B!2946 0))(
  ( (B!2947 (val!19835 Int)) )
))
(declare-datatypes ((tuple2!26002 0))(
  ( (tuple2!26003 (_1!13011 (_ BitVec 64)) (_2!13011 B!2946)) )
))
(declare-datatypes ((List!37116 0))(
  ( (Nil!37113) (Cons!37112 (h!38656 tuple2!26002) (t!52043 List!37116)) )
))
(declare-fun l!556 () List!37116)

(declare-fun isStrictlySorted!1178 (List!37116) Bool)

(assert (=> start!138224 (= res!1082696 (isStrictlySorted!1178 l!556))))

(assert (=> start!138224 e!884984))

(declare-fun e!884985 () Bool)

(assert (=> start!138224 e!884985))

(assert (=> start!138224 true))

(declare-fun tp_is_empty!39479 () Bool)

(assert (=> start!138224 tp_is_empty!39479))

(declare-fun b!1585098 () Bool)

(declare-fun res!1082695 () Bool)

(assert (=> b!1585098 (=> (not res!1082695) (not e!884984))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585098 (= res!1082695 (and (is-Cons!37112 l!556) (bvslt (_1!13011 (h!38656 l!556)) newKey!21)))))

(declare-fun b!1585099 () Bool)

(assert (=> b!1585099 (= e!884984 false)))

(declare-fun newValue!21 () B!2946)

(declare-fun lt!677254 () Bool)

(declare-fun $colon$colon!1030 (List!37116 tuple2!26002) List!37116)

(declare-fun insertStrictlySorted!633 (List!37116 (_ BitVec 64) B!2946) List!37116)

(assert (=> b!1585099 (= lt!677254 (isStrictlySorted!1178 ($colon$colon!1030 (insertStrictlySorted!633 (t!52043 l!556) newKey!21 newValue!21) (h!38656 l!556))))))

(declare-fun b!1585100 () Bool)

(declare-fun tp!115189 () Bool)

(assert (=> b!1585100 (= e!884985 (and tp_is_empty!39479 tp!115189))))

(assert (= (and start!138224 res!1082696) b!1585098))

(assert (= (and b!1585098 res!1082695) b!1585099))

(assert (= (and start!138224 (is-Cons!37112 l!556)) b!1585100))

(declare-fun m!1454107 () Bool)

(assert (=> start!138224 m!1454107))

(declare-fun m!1454109 () Bool)

(assert (=> b!1585099 m!1454109))

(assert (=> b!1585099 m!1454109))

(declare-fun m!1454111 () Bool)

(assert (=> b!1585099 m!1454111))

(assert (=> b!1585099 m!1454111))

(declare-fun m!1454113 () Bool)

(assert (=> b!1585099 m!1454113))

(push 1)

(assert (not b!1585099))

(assert (not start!138224))

(assert (not b!1585100))

(assert tp_is_empty!39479)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

