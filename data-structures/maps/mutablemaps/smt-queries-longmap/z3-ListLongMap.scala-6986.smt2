; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88624 () Bool)

(assert start!88624)

(assert (=> start!88624 false))

(declare-fun e!572938 () Bool)

(assert (=> start!88624 e!572938))

(assert (=> start!88624 true))

(declare-fun b!1018201 () Bool)

(declare-fun tp_is_empty!23691 () Bool)

(declare-fun tp!71006 () Bool)

(assert (=> b!1018201 (= e!572938 (and tp_is_empty!23691 tp!71006))))

(declare-datatypes ((B!1624 0))(
  ( (B!1625 (val!11896 Int)) )
))
(declare-datatypes ((tuple2!15428 0))(
  ( (tuple2!15429 (_1!7724 (_ BitVec 64)) (_2!7724 B!1624)) )
))
(declare-datatypes ((List!21698 0))(
  ( (Nil!21695) (Cons!21694 (h!22892 tuple2!15428) (t!30707 List!21698)) )
))
(declare-fun l!996 () List!21698)

(get-info :version)

(assert (= (and start!88624 ((_ is Cons!21694) l!996)) b!1018201))

(check-sat (not b!1018201) tp_is_empty!23691)
(check-sat)
