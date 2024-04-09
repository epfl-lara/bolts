; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1694 () Bool)

(assert start!1694)

(assert (=> start!1694 false))

(declare-fun e!7136 () Bool)

(assert (=> start!1694 e!7136))

(assert (=> start!1694 true))

(declare-fun tp_is_empty!603 () Bool)

(assert (=> start!1694 tp_is_empty!603))

(declare-fun b!11975 () Bool)

(declare-fun tp!2018 () Bool)

(assert (=> b!11975 (= e!7136 (and tp_is_empty!603 tp!2018))))

(declare-datatypes ((B!430 0))(
  ( (B!431 (val!310 Int)) )
))
(declare-datatypes ((tuple2!402 0))(
  ( (tuple2!403 (_1!201 (_ BitVec 64)) (_2!201 B!430)) )
))
(declare-datatypes ((List!357 0))(
  ( (Nil!354) (Cons!353 (h!919 tuple2!402) (t!2744 List!357)) )
))
(declare-fun l!1094 () List!357)

(get-info :version)

(assert (= (and start!1694 ((_ is Cons!353) l!1094)) b!11975))

(check-sat (not b!11975) tp_is_empty!603)
(check-sat)
