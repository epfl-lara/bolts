; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137700 () Bool)

(assert start!137700)

(assert (=> start!137700 false))

(declare-fun e!883107 () Bool)

(assert (=> start!137700 e!883107))

(assert (=> start!137700 true))

(declare-fun b!1582331 () Bool)

(declare-fun tp_is_empty!39303 () Bool)

(declare-fun tp!114736 () Bool)

(assert (=> b!1582331 (= e!883107 (and tp_is_empty!39303 tp!114736))))

(declare-datatypes ((B!2758 0))(
  ( (B!2759 (val!19741 Int)) )
))
(declare-datatypes ((tuple2!25814 0))(
  ( (tuple2!25815 (_1!12917 (_ BitVec 64)) (_2!12917 B!2758)) )
))
(declare-datatypes ((List!37022 0))(
  ( (Nil!37019) (Cons!37018 (h!38562 tuple2!25814) (t!51943 List!37022)) )
))
(declare-fun l!1356 () List!37022)

(get-info :version)

(assert (= (and start!137700 ((_ is Cons!37018) l!1356)) b!1582331))

(check-sat (not b!1582331) tp_is_empty!39303)
(check-sat)
