; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137574 () Bool)

(assert start!137574)

(assert (=> start!137574 false))

(declare-fun e!882696 () Bool)

(assert (=> start!137574 e!882696))

(declare-fun b!1581788 () Bool)

(declare-fun tp_is_empty!39267 () Bool)

(declare-fun tp!114637 () Bool)

(assert (=> b!1581788 (= e!882696 (and tp_is_empty!39267 tp!114637))))

(declare-datatypes ((B!2722 0))(
  ( (B!2723 (val!19723 Int)) )
))
(declare-datatypes ((tuple2!25778 0))(
  ( (tuple2!25779 (_1!12899 (_ BitVec 64)) (_2!12899 B!2722)) )
))
(declare-datatypes ((List!37004 0))(
  ( (Nil!37001) (Cons!37000 (h!38544 tuple2!25778) (t!51925 List!37004)) )
))
(declare-fun l!1356 () List!37004)

(get-info :version)

(assert (= (and start!137574 ((_ is Cons!37000) l!1356)) b!1581788))

(check-sat (not b!1581788) tp_is_empty!39267)
(check-sat)
