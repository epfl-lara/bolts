; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134484 () Bool)

(assert start!134484)

(assert (=> start!134484 false))

(assert (=> start!134484 true))

(declare-fun e!875025 () Bool)

(assert (=> start!134484 e!875025))

(declare-fun b!1569578 () Bool)

(declare-fun tp_is_empty!39081 () Bool)

(declare-fun tp!114169 () Bool)

(assert (=> b!1569578 (= e!875025 (and tp_is_empty!39081 tp!114169))))

(declare-datatypes ((B!2530 0))(
  ( (B!2531 (val!19627 Int)) )
))
(declare-datatypes ((tuple2!25520 0))(
  ( (tuple2!25521 (_1!12770 (_ BitVec 64)) (_2!12770 B!2530)) )
))
(declare-datatypes ((List!36908 0))(
  ( (Nil!36905) (Cons!36904 (h!38352 tuple2!25520) (t!51823 List!36908)) )
))
(declare-fun l!750 () List!36908)

(get-info :version)

(assert (= (and start!134484 ((_ is Cons!36904) l!750)) b!1569578))

(check-sat (not b!1569578) tp_is_empty!39081)
(check-sat)
