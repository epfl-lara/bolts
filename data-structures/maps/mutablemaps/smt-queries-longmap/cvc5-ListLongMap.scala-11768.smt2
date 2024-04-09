; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138226 () Bool)

(assert start!138226)

(declare-fun res!1082701 () Bool)

(declare-fun e!884990 () Bool)

(assert (=> start!138226 (=> (not res!1082701) (not e!884990))))

(declare-datatypes ((B!2948 0))(
  ( (B!2949 (val!19836 Int)) )
))
(declare-datatypes ((tuple2!26004 0))(
  ( (tuple2!26005 (_1!13012 (_ BitVec 64)) (_2!13012 B!2948)) )
))
(declare-datatypes ((List!37117 0))(
  ( (Nil!37114) (Cons!37113 (h!38657 tuple2!26004) (t!52044 List!37117)) )
))
(declare-fun l!556 () List!37117)

(declare-fun isStrictlySorted!1179 (List!37117) Bool)

(assert (=> start!138226 (= res!1082701 (isStrictlySorted!1179 l!556))))

(assert (=> start!138226 e!884990))

(declare-fun e!884991 () Bool)

(assert (=> start!138226 e!884991))

(assert (=> start!138226 true))

(declare-fun tp_is_empty!39481 () Bool)

(assert (=> start!138226 tp_is_empty!39481))

(declare-fun b!1585107 () Bool)

(declare-fun res!1082702 () Bool)

(assert (=> b!1585107 (=> (not res!1082702) (not e!884990))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585107 (= res!1082702 (and (bvsge (_1!13012 (h!38657 l!556)) newKey!21) (is-Cons!37113 l!556) (= (_1!13012 (h!38657 l!556)) newKey!21)))))

(declare-fun b!1585108 () Bool)

(assert (=> b!1585108 (= e!884990 false)))

(declare-fun newValue!21 () B!2948)

(declare-fun lt!677257 () Bool)

(declare-fun $colon$colon!1031 (List!37117 tuple2!26004) List!37117)

(assert (=> b!1585108 (= lt!677257 (isStrictlySorted!1179 ($colon$colon!1031 (t!52044 l!556) (tuple2!26005 newKey!21 newValue!21))))))

(declare-fun b!1585109 () Bool)

(declare-fun tp!115192 () Bool)

(assert (=> b!1585109 (= e!884991 (and tp_is_empty!39481 tp!115192))))

(assert (= (and start!138226 res!1082701) b!1585107))

(assert (= (and b!1585107 res!1082702) b!1585108))

(assert (= (and start!138226 (is-Cons!37113 l!556)) b!1585109))

(declare-fun m!1454115 () Bool)

(assert (=> start!138226 m!1454115))

(declare-fun m!1454117 () Bool)

(assert (=> b!1585108 m!1454117))

(assert (=> b!1585108 m!1454117))

(declare-fun m!1454119 () Bool)

(assert (=> b!1585108 m!1454119))

(push 1)

(assert (not b!1585108))

(assert (not start!138226))

(assert (not b!1585109))

(assert tp_is_empty!39481)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

