; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138234 () Bool)

(assert start!138234)

(declare-fun res!1082726 () Bool)

(declare-fun e!885015 () Bool)

(assert (=> start!138234 (=> (not res!1082726) (not e!885015))))

(declare-datatypes ((B!2956 0))(
  ( (B!2957 (val!19840 Int)) )
))
(declare-datatypes ((tuple2!26012 0))(
  ( (tuple2!26013 (_1!13016 (_ BitVec 64)) (_2!13016 B!2956)) )
))
(declare-datatypes ((List!37121 0))(
  ( (Nil!37118) (Cons!37117 (h!38661 tuple2!26012) (t!52048 List!37121)) )
))
(declare-fun l!556 () List!37121)

(declare-fun isStrictlySorted!1183 (List!37121) Bool)

(assert (=> start!138234 (= res!1082726 (isStrictlySorted!1183 l!556))))

(assert (=> start!138234 e!885015))

(declare-fun e!885014 () Bool)

(assert (=> start!138234 e!885014))

(assert (=> start!138234 true))

(declare-fun tp_is_empty!39489 () Bool)

(assert (=> start!138234 tp_is_empty!39489))

(declare-fun b!1585143 () Bool)

(declare-fun res!1082725 () Bool)

(assert (=> b!1585143 (=> (not res!1082725) (not e!885015))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585143 (= res!1082725 (and (or (not ((_ is Cons!37117) l!556)) (bvsge (_1!13016 (h!38661 l!556)) newKey!21)) (not (= (_1!13016 (h!38661 l!556)) newKey!21)) ((_ is Cons!37117) l!556) (bvsgt (_1!13016 (h!38661 l!556)) newKey!21)))))

(declare-fun b!1585144 () Bool)

(assert (=> b!1585144 (= e!885015 false)))

(declare-fun lt!677269 () Bool)

(declare-fun newValue!21 () B!2956)

(declare-fun $colon$colon!1035 (List!37121 tuple2!26012) List!37121)

(assert (=> b!1585144 (= lt!677269 (isStrictlySorted!1183 ($colon$colon!1035 l!556 (tuple2!26013 newKey!21 newValue!21))))))

(declare-fun b!1585145 () Bool)

(declare-fun tp!115204 () Bool)

(assert (=> b!1585145 (= e!885014 (and tp_is_empty!39489 tp!115204))))

(assert (= (and start!138234 res!1082726) b!1585143))

(assert (= (and b!1585143 res!1082725) b!1585144))

(assert (= (and start!138234 ((_ is Cons!37117) l!556)) b!1585145))

(declare-fun m!1454139 () Bool)

(assert (=> start!138234 m!1454139))

(declare-fun m!1454141 () Bool)

(assert (=> b!1585144 m!1454141))

(assert (=> b!1585144 m!1454141))

(declare-fun m!1454143 () Bool)

(assert (=> b!1585144 m!1454143))

(check-sat (not start!138234) (not b!1585144) (not b!1585145) tp_is_empty!39489)
