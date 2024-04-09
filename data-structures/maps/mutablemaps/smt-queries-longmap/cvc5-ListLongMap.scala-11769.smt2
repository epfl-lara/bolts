; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138232 () Bool)

(assert start!138232)

(declare-fun res!1082720 () Bool)

(declare-fun e!885008 () Bool)

(assert (=> start!138232 (=> (not res!1082720) (not e!885008))))

(declare-datatypes ((B!2954 0))(
  ( (B!2955 (val!19839 Int)) )
))
(declare-datatypes ((tuple2!26010 0))(
  ( (tuple2!26011 (_1!13015 (_ BitVec 64)) (_2!13015 B!2954)) )
))
(declare-datatypes ((List!37120 0))(
  ( (Nil!37117) (Cons!37116 (h!38660 tuple2!26010) (t!52047 List!37120)) )
))
(declare-fun l!556 () List!37120)

(declare-fun isStrictlySorted!1182 (List!37120) Bool)

(assert (=> start!138232 (= res!1082720 (isStrictlySorted!1182 l!556))))

(assert (=> start!138232 e!885008))

(declare-fun e!885009 () Bool)

(assert (=> start!138232 e!885009))

(assert (=> start!138232 true))

(declare-fun tp_is_empty!39487 () Bool)

(assert (=> start!138232 tp_is_empty!39487))

(declare-fun b!1585134 () Bool)

(declare-fun res!1082719 () Bool)

(assert (=> b!1585134 (=> (not res!1082719) (not e!885008))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585134 (= res!1082719 (and (or (not (is-Cons!37116 l!556)) (bvsge (_1!13015 (h!38660 l!556)) newKey!21)) (not (= (_1!13015 (h!38660 l!556)) newKey!21)) (is-Cons!37116 l!556) (bvsgt (_1!13015 (h!38660 l!556)) newKey!21)))))

(declare-fun b!1585135 () Bool)

(assert (=> b!1585135 (= e!885008 false)))

(declare-fun lt!677266 () Bool)

(declare-fun newValue!21 () B!2954)

(declare-fun $colon$colon!1034 (List!37120 tuple2!26010) List!37120)

(assert (=> b!1585135 (= lt!677266 (isStrictlySorted!1182 ($colon$colon!1034 l!556 (tuple2!26011 newKey!21 newValue!21))))))

(declare-fun b!1585136 () Bool)

(declare-fun tp!115201 () Bool)

(assert (=> b!1585136 (= e!885009 (and tp_is_empty!39487 tp!115201))))

(assert (= (and start!138232 res!1082720) b!1585134))

(assert (= (and b!1585134 res!1082719) b!1585135))

(assert (= (and start!138232 (is-Cons!37116 l!556)) b!1585136))

(declare-fun m!1454133 () Bool)

(assert (=> start!138232 m!1454133))

(declare-fun m!1454135 () Bool)

(assert (=> b!1585135 m!1454135))

(assert (=> b!1585135 m!1454135))

(declare-fun m!1454137 () Bool)

(assert (=> b!1585135 m!1454137))

(push 1)

(assert (not b!1585135))

(assert (not start!138232))

(assert (not b!1585136))

(assert tp_is_empty!39487)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

