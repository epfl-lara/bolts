; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138230 () Bool)

(assert start!138230)

(declare-fun res!1082714 () Bool)

(declare-fun e!885002 () Bool)

(assert (=> start!138230 (=> (not res!1082714) (not e!885002))))

(declare-datatypes ((B!2952 0))(
  ( (B!2953 (val!19838 Int)) )
))
(declare-datatypes ((tuple2!26008 0))(
  ( (tuple2!26009 (_1!13014 (_ BitVec 64)) (_2!13014 B!2952)) )
))
(declare-datatypes ((List!37119 0))(
  ( (Nil!37116) (Cons!37115 (h!38659 tuple2!26008) (t!52046 List!37119)) )
))
(declare-fun l!556 () List!37119)

(declare-fun isStrictlySorted!1181 (List!37119) Bool)

(assert (=> start!138230 (= res!1082714 (isStrictlySorted!1181 l!556))))

(assert (=> start!138230 e!885002))

(declare-fun e!885003 () Bool)

(assert (=> start!138230 e!885003))

(assert (=> start!138230 true))

(declare-fun tp_is_empty!39485 () Bool)

(assert (=> start!138230 tp_is_empty!39485))

(declare-fun b!1585125 () Bool)

(declare-fun res!1082713 () Bool)

(assert (=> b!1585125 (=> (not res!1082713) (not e!885002))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585125 (= res!1082713 (and (bvsge (_1!13014 (h!38659 l!556)) newKey!21) (is-Cons!37115 l!556) (= (_1!13014 (h!38659 l!556)) newKey!21)))))

(declare-fun b!1585126 () Bool)

(assert (=> b!1585126 (= e!885002 false)))

(declare-fun newValue!21 () B!2952)

(declare-fun lt!677263 () Bool)

(declare-fun $colon$colon!1033 (List!37119 tuple2!26008) List!37119)

(assert (=> b!1585126 (= lt!677263 (isStrictlySorted!1181 ($colon$colon!1033 (t!52046 l!556) (tuple2!26009 newKey!21 newValue!21))))))

(declare-fun b!1585127 () Bool)

(declare-fun tp!115198 () Bool)

(assert (=> b!1585127 (= e!885003 (and tp_is_empty!39485 tp!115198))))

(assert (= (and start!138230 res!1082714) b!1585125))

(assert (= (and b!1585125 res!1082713) b!1585126))

(assert (= (and start!138230 (is-Cons!37115 l!556)) b!1585127))

(declare-fun m!1454127 () Bool)

(assert (=> start!138230 m!1454127))

(declare-fun m!1454129 () Bool)

(assert (=> b!1585126 m!1454129))

(assert (=> b!1585126 m!1454129))

(declare-fun m!1454131 () Bool)

(assert (=> b!1585126 m!1454131))

(push 1)

(assert (not b!1585126))

(assert (not start!138230))

(assert (not b!1585127))

(assert tp_is_empty!39485)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

