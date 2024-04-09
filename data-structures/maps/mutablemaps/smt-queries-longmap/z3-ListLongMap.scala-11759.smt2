; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138030 () Bool)

(assert start!138030)

(assert (=> start!138030 false))

(declare-fun e!884130 () Bool)

(assert (=> start!138030 e!884130))

(assert (=> start!138030 true))

(declare-fun b!1583831 () Bool)

(declare-fun tp_is_empty!39429 () Bool)

(declare-fun tp!115045 () Bool)

(assert (=> b!1583831 (= e!884130 (and tp_is_empty!39429 tp!115045))))

(declare-datatypes ((B!2896 0))(
  ( (B!2897 (val!19810 Int)) )
))
(declare-datatypes ((tuple2!25952 0))(
  ( (tuple2!25953 (_1!12986 (_ BitVec 64)) (_2!12986 B!2896)) )
))
(declare-datatypes ((List!37091 0))(
  ( (Nil!37088) (Cons!37087 (h!38631 tuple2!25952) (t!52012 List!37091)) )
))
(declare-fun l!1251 () List!37091)

(get-info :version)

(assert (= (and start!138030 ((_ is Cons!37087) l!1251)) b!1583831))

(check-sat (not b!1583831) tp_is_empty!39429)
(check-sat)
