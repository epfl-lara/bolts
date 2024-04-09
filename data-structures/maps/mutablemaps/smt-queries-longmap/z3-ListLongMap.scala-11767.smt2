; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138222 () Bool)

(assert start!138222)

(declare-fun res!1082689 () Bool)

(declare-fun e!884979 () Bool)

(assert (=> start!138222 (=> (not res!1082689) (not e!884979))))

(declare-datatypes ((B!2944 0))(
  ( (B!2945 (val!19834 Int)) )
))
(declare-datatypes ((tuple2!26000 0))(
  ( (tuple2!26001 (_1!13010 (_ BitVec 64)) (_2!13010 B!2944)) )
))
(declare-datatypes ((List!37115 0))(
  ( (Nil!37112) (Cons!37111 (h!38655 tuple2!26000) (t!52042 List!37115)) )
))
(declare-fun l!556 () List!37115)

(declare-fun isStrictlySorted!1177 (List!37115) Bool)

(assert (=> start!138222 (= res!1082689 (isStrictlySorted!1177 l!556))))

(assert (=> start!138222 e!884979))

(declare-fun e!884978 () Bool)

(assert (=> start!138222 e!884978))

(assert (=> start!138222 true))

(declare-fun tp_is_empty!39477 () Bool)

(assert (=> start!138222 tp_is_empty!39477))

(declare-fun b!1585089 () Bool)

(declare-fun res!1082690 () Bool)

(assert (=> b!1585089 (=> (not res!1082690) (not e!884979))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585089 (= res!1082690 (and ((_ is Cons!37111) l!556) (bvslt (_1!13010 (h!38655 l!556)) newKey!21)))))

(declare-fun b!1585090 () Bool)

(assert (=> b!1585090 (= e!884979 false)))

(declare-fun newValue!21 () B!2944)

(declare-fun lt!677251 () Bool)

(declare-fun $colon$colon!1029 (List!37115 tuple2!26000) List!37115)

(declare-fun insertStrictlySorted!632 (List!37115 (_ BitVec 64) B!2944) List!37115)

(assert (=> b!1585090 (= lt!677251 (isStrictlySorted!1177 ($colon$colon!1029 (insertStrictlySorted!632 (t!52042 l!556) newKey!21 newValue!21) (h!38655 l!556))))))

(declare-fun b!1585091 () Bool)

(declare-fun tp!115186 () Bool)

(assert (=> b!1585091 (= e!884978 (and tp_is_empty!39477 tp!115186))))

(assert (= (and start!138222 res!1082689) b!1585089))

(assert (= (and b!1585089 res!1082690) b!1585090))

(assert (= (and start!138222 ((_ is Cons!37111) l!556)) b!1585091))

(declare-fun m!1454099 () Bool)

(assert (=> start!138222 m!1454099))

(declare-fun m!1454101 () Bool)

(assert (=> b!1585090 m!1454101))

(assert (=> b!1585090 m!1454101))

(declare-fun m!1454103 () Bool)

(assert (=> b!1585090 m!1454103))

(assert (=> b!1585090 m!1454103))

(declare-fun m!1454105 () Bool)

(assert (=> b!1585090 m!1454105))

(check-sat (not b!1585090) (not start!138222) (not b!1585091) tp_is_empty!39477)
(check-sat)
