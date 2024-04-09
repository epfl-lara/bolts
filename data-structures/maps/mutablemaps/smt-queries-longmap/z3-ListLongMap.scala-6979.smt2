; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88456 () Bool)

(assert start!88456)

(assert (=> start!88456 false))

(declare-fun e!572467 () Bool)

(assert (=> start!88456 e!572467))

(assert (=> start!88456 true))

(declare-fun b!1017448 () Bool)

(declare-fun tp_is_empty!23649 () Bool)

(declare-fun tp!70895 () Bool)

(assert (=> b!1017448 (= e!572467 (and tp_is_empty!23649 tp!70895))))

(declare-datatypes ((B!1582 0))(
  ( (B!1583 (val!11875 Int)) )
))
(declare-datatypes ((tuple2!15386 0))(
  ( (tuple2!15387 (_1!7703 (_ BitVec 64)) (_2!7703 B!1582)) )
))
(declare-datatypes ((List!21677 0))(
  ( (Nil!21674) (Cons!21673 (h!22871 tuple2!15386) (t!30686 List!21677)) )
))
(declare-fun l!1036 () List!21677)

(get-info :version)

(assert (= (and start!88456 ((_ is Cons!21673) l!1036)) b!1017448))

(check-sat (not b!1017448) tp_is_empty!23649)
(check-sat)
