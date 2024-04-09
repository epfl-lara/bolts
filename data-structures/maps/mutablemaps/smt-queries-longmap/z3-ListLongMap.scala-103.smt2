; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1688 () Bool)

(assert start!1688)

(assert (=> start!1688 false))

(declare-fun e!7127 () Bool)

(assert (=> start!1688 e!7127))

(declare-fun b!11966 () Bool)

(declare-fun tp_is_empty!597 () Bool)

(declare-fun tp!2009 () Bool)

(assert (=> b!11966 (= e!7127 (and tp_is_empty!597 tp!2009))))

(declare-datatypes ((B!424 0))(
  ( (B!425 (val!307 Int)) )
))
(declare-datatypes ((tuple2!396 0))(
  ( (tuple2!397 (_1!198 (_ BitVec 64)) (_2!198 B!424)) )
))
(declare-datatypes ((List!354 0))(
  ( (Nil!351) (Cons!350 (h!916 tuple2!396) (t!2741 List!354)) )
))
(declare-fun l!1094 () List!354)

(get-info :version)

(assert (= (and start!1688 ((_ is Cons!350) l!1094)) b!11966))

(check-sat (not b!11966) tp_is_empty!597)
(check-sat)
