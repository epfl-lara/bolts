; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138220 () Bool)

(assert start!138220)

(declare-fun res!1082683 () Bool)

(declare-fun e!884972 () Bool)

(assert (=> start!138220 (=> (not res!1082683) (not e!884972))))

(declare-datatypes ((B!2942 0))(
  ( (B!2943 (val!19833 Int)) )
))
(declare-datatypes ((tuple2!25998 0))(
  ( (tuple2!25999 (_1!13009 (_ BitVec 64)) (_2!13009 B!2942)) )
))
(declare-datatypes ((List!37114 0))(
  ( (Nil!37111) (Cons!37110 (h!38654 tuple2!25998) (t!52041 List!37114)) )
))
(declare-fun l!556 () List!37114)

(declare-fun isStrictlySorted!1176 (List!37114) Bool)

(assert (=> start!138220 (= res!1082683 (isStrictlySorted!1176 l!556))))

(assert (=> start!138220 e!884972))

(declare-fun e!884973 () Bool)

(assert (=> start!138220 e!884973))

(assert (=> start!138220 true))

(declare-fun tp_is_empty!39475 () Bool)

(assert (=> start!138220 tp_is_empty!39475))

(declare-fun b!1585080 () Bool)

(declare-fun res!1082684 () Bool)

(assert (=> b!1585080 (=> (not res!1082684) (not e!884972))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585080 (= res!1082684 (and (is-Cons!37110 l!556) (bvslt (_1!13009 (h!38654 l!556)) newKey!21)))))

(declare-fun b!1585081 () Bool)

(assert (=> b!1585081 (= e!884972 false)))

(declare-fun newValue!21 () B!2942)

(declare-fun lt!677248 () Bool)

(declare-fun $colon$colon!1028 (List!37114 tuple2!25998) List!37114)

(declare-fun insertStrictlySorted!631 (List!37114 (_ BitVec 64) B!2942) List!37114)

(assert (=> b!1585081 (= lt!677248 (isStrictlySorted!1176 ($colon$colon!1028 (insertStrictlySorted!631 (t!52041 l!556) newKey!21 newValue!21) (h!38654 l!556))))))

(declare-fun b!1585082 () Bool)

(declare-fun tp!115183 () Bool)

(assert (=> b!1585082 (= e!884973 (and tp_is_empty!39475 tp!115183))))

(assert (= (and start!138220 res!1082683) b!1585080))

(assert (= (and b!1585080 res!1082684) b!1585081))

(assert (= (and start!138220 (is-Cons!37110 l!556)) b!1585082))

(declare-fun m!1454091 () Bool)

(assert (=> start!138220 m!1454091))

(declare-fun m!1454093 () Bool)

(assert (=> b!1585081 m!1454093))

(assert (=> b!1585081 m!1454093))

(declare-fun m!1454095 () Bool)

(assert (=> b!1585081 m!1454095))

(assert (=> b!1585081 m!1454095))

(declare-fun m!1454097 () Bool)

(assert (=> b!1585081 m!1454097))

(push 1)

(assert (not b!1585081))

(assert (not start!138220))

(assert (not b!1585082))

(assert tp_is_empty!39475)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

