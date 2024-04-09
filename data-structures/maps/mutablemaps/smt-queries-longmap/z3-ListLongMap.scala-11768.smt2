; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138228 () Bool)

(assert start!138228)

(declare-fun res!1082708 () Bool)

(declare-fun e!884997 () Bool)

(assert (=> start!138228 (=> (not res!1082708) (not e!884997))))

(declare-datatypes ((B!2950 0))(
  ( (B!2951 (val!19837 Int)) )
))
(declare-datatypes ((tuple2!26006 0))(
  ( (tuple2!26007 (_1!13013 (_ BitVec 64)) (_2!13013 B!2950)) )
))
(declare-datatypes ((List!37118 0))(
  ( (Nil!37115) (Cons!37114 (h!38658 tuple2!26006) (t!52045 List!37118)) )
))
(declare-fun l!556 () List!37118)

(declare-fun isStrictlySorted!1180 (List!37118) Bool)

(assert (=> start!138228 (= res!1082708 (isStrictlySorted!1180 l!556))))

(assert (=> start!138228 e!884997))

(declare-fun e!884996 () Bool)

(assert (=> start!138228 e!884996))

(assert (=> start!138228 true))

(declare-fun tp_is_empty!39483 () Bool)

(assert (=> start!138228 tp_is_empty!39483))

(declare-fun b!1585116 () Bool)

(declare-fun res!1082707 () Bool)

(assert (=> b!1585116 (=> (not res!1082707) (not e!884997))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585116 (= res!1082707 (and (bvsge (_1!13013 (h!38658 l!556)) newKey!21) ((_ is Cons!37114) l!556) (= (_1!13013 (h!38658 l!556)) newKey!21)))))

(declare-fun b!1585117 () Bool)

(assert (=> b!1585117 (= e!884997 false)))

(declare-fun newValue!21 () B!2950)

(declare-fun lt!677260 () Bool)

(declare-fun $colon$colon!1032 (List!37118 tuple2!26006) List!37118)

(assert (=> b!1585117 (= lt!677260 (isStrictlySorted!1180 ($colon$colon!1032 (t!52045 l!556) (tuple2!26007 newKey!21 newValue!21))))))

(declare-fun b!1585118 () Bool)

(declare-fun tp!115195 () Bool)

(assert (=> b!1585118 (= e!884996 (and tp_is_empty!39483 tp!115195))))

(assert (= (and start!138228 res!1082708) b!1585116))

(assert (= (and b!1585116 res!1082707) b!1585117))

(assert (= (and start!138228 ((_ is Cons!37114) l!556)) b!1585118))

(declare-fun m!1454121 () Bool)

(assert (=> start!138228 m!1454121))

(declare-fun m!1454123 () Bool)

(assert (=> b!1585117 m!1454123))

(assert (=> b!1585117 m!1454123))

(declare-fun m!1454125 () Bool)

(assert (=> b!1585117 m!1454125))

(check-sat (not b!1585117) (not start!138228) (not b!1585118) tp_is_empty!39483)
