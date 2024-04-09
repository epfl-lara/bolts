; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134352 () Bool)

(assert start!134352)

(assert (=> start!134352 false))

(assert (=> start!134352 true))

(declare-fun e!874392 () Bool)

(assert (=> start!134352 e!874392))

(declare-fun b!1568453 () Bool)

(declare-fun tp_is_empty!39021 () Bool)

(declare-fun tp!114034 () Bool)

(assert (=> b!1568453 (= e!874392 (and tp_is_empty!39021 tp!114034))))

(declare-datatypes ((B!2470 0))(
  ( (B!2471 (val!19597 Int)) )
))
(declare-datatypes ((tuple2!25460 0))(
  ( (tuple2!25461 (_1!12740 (_ BitVec 64)) (_2!12740 B!2470)) )
))
(declare-datatypes ((List!36878 0))(
  ( (Nil!36875) (Cons!36874 (h!38322 tuple2!25460) (t!51793 List!36878)) )
))
(declare-fun l!750 () List!36878)

(get-info :version)

(assert (= (and start!134352 ((_ is Cons!36874) l!750)) b!1568453))

(check-sat (not b!1568453) tp_is_empty!39021)
(check-sat)
