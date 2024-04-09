; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137766 () Bool)

(assert start!137766)

(assert (=> start!137766 false))

(declare-fun e!883260 () Bool)

(assert (=> start!137766 e!883260))

(declare-fun b!1582505 () Bool)

(declare-fun tp_is_empty!39327 () Bool)

(declare-fun tp!114808 () Bool)

(assert (=> b!1582505 (= e!883260 (and tp_is_empty!39327 tp!114808))))

(declare-datatypes ((B!2794 0))(
  ( (B!2795 (val!19759 Int)) )
))
(declare-datatypes ((tuple2!25850 0))(
  ( (tuple2!25851 (_1!12935 (_ BitVec 64)) (_2!12935 B!2794)) )
))
(declare-datatypes ((List!37040 0))(
  ( (Nil!37037) (Cons!37036 (h!38580 tuple2!25850) (t!51961 List!37040)) )
))
(declare-fun l!1065 () List!37040)

(get-info :version)

(assert (= (and start!137766 ((_ is Cons!37036) l!1065)) b!1582505))

(check-sat (not b!1582505) tp_is_empty!39327)
(check-sat)
