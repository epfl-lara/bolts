; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137784 () Bool)

(assert start!137784)

(assert (=> start!137784 false))

(declare-fun e!883296 () Bool)

(assert (=> start!137784 e!883296))

(assert (=> start!137784 true))

(declare-fun b!1582577 () Bool)

(declare-fun tp_is_empty!39345 () Bool)

(declare-fun tp!114835 () Bool)

(assert (=> b!1582577 (= e!883296 (and tp_is_empty!39345 tp!114835))))

(declare-datatypes ((B!2812 0))(
  ( (B!2813 (val!19768 Int)) )
))
(declare-datatypes ((tuple2!25868 0))(
  ( (tuple2!25869 (_1!12944 (_ BitVec 64)) (_2!12944 B!2812)) )
))
(declare-datatypes ((List!37049 0))(
  ( (Nil!37046) (Cons!37045 (h!38589 tuple2!25868) (t!51970 List!37049)) )
))
(declare-fun l!1065 () List!37049)

(get-info :version)

(assert (= (and start!137784 ((_ is Cons!37045) l!1065)) b!1582577))

(check-sat (not b!1582577) tp_is_empty!39345)
(check-sat)
