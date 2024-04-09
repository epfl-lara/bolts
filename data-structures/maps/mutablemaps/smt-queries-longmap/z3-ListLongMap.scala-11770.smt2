; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138240 () Bool)

(assert start!138240)

(declare-fun res!1082743 () Bool)

(declare-fun e!885033 () Bool)

(assert (=> start!138240 (=> (not res!1082743) (not e!885033))))

(declare-datatypes ((B!2962 0))(
  ( (B!2963 (val!19843 Int)) )
))
(declare-datatypes ((tuple2!26018 0))(
  ( (tuple2!26019 (_1!13019 (_ BitVec 64)) (_2!13019 B!2962)) )
))
(declare-datatypes ((List!37124 0))(
  ( (Nil!37121) (Cons!37120 (h!38664 tuple2!26018) (t!52051 List!37124)) )
))
(declare-fun l!556 () List!37124)

(declare-fun isStrictlySorted!1186 (List!37124) Bool)

(assert (=> start!138240 (= res!1082743 (isStrictlySorted!1186 l!556))))

(assert (=> start!138240 e!885033))

(declare-fun e!885032 () Bool)

(assert (=> start!138240 e!885032))

(assert (=> start!138240 true))

(declare-fun tp_is_empty!39495 () Bool)

(assert (=> start!138240 tp_is_empty!39495))

(declare-fun b!1585170 () Bool)

(declare-fun res!1082744 () Bool)

(assert (=> b!1585170 (=> (not res!1082744) (not e!885033))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585170 (= res!1082744 (and (or (not ((_ is Cons!37120) l!556)) (bvsge (_1!13019 (h!38664 l!556)) newKey!21)) (or (not ((_ is Cons!37120) l!556)) (not (= (_1!13019 (h!38664 l!556)) newKey!21))) (or (not ((_ is Cons!37120) l!556)) (bvsle (_1!13019 (h!38664 l!556)) newKey!21)) ((_ is Nil!37121) l!556)))))

(declare-fun b!1585171 () Bool)

(assert (=> b!1585171 (= e!885033 false)))

(declare-fun lt!677278 () Bool)

(declare-fun newValue!21 () B!2962)

(declare-fun $colon$colon!1038 (List!37124 tuple2!26018) List!37124)

(assert (=> b!1585171 (= lt!677278 (isStrictlySorted!1186 ($colon$colon!1038 Nil!37121 (tuple2!26019 newKey!21 newValue!21))))))

(declare-fun b!1585172 () Bool)

(declare-fun tp!115213 () Bool)

(assert (=> b!1585172 (= e!885032 (and tp_is_empty!39495 tp!115213))))

(assert (= (and start!138240 res!1082743) b!1585170))

(assert (= (and b!1585170 res!1082744) b!1585171))

(assert (= (and start!138240 ((_ is Cons!37120) l!556)) b!1585172))

(declare-fun m!1454157 () Bool)

(assert (=> start!138240 m!1454157))

(declare-fun m!1454159 () Bool)

(assert (=> b!1585171 m!1454159))

(assert (=> b!1585171 m!1454159))

(declare-fun m!1454161 () Bool)

(assert (=> b!1585171 m!1454161))

(check-sat (not b!1585171) (not start!138240) (not b!1585172) tp_is_empty!39495)
