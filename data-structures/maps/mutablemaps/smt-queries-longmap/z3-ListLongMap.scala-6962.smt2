; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87948 () Bool)

(assert start!87948)

(assert (=> start!87948 false))

(declare-fun e!571316 () Bool)

(assert (=> start!87948 e!571316))

(declare-fun b!1015483 () Bool)

(declare-fun tp_is_empty!23547 () Bool)

(declare-fun tp!70650 () Bool)

(assert (=> b!1015483 (= e!571316 (and tp_is_empty!23547 tp!70650))))

(declare-datatypes ((B!1480 0))(
  ( (B!1481 (val!11824 Int)) )
))
(declare-datatypes ((tuple2!15284 0))(
  ( (tuple2!15285 (_1!7652 (_ BitVec 64)) (_2!7652 B!1480)) )
))
(declare-datatypes ((List!21590 0))(
  ( (Nil!21587) (Cons!21586 (h!22784 tuple2!15284) (t!30599 List!21590)) )
))
(declare-fun l!1114 () List!21590)

(get-info :version)

(assert (= (and start!87948 ((_ is Cons!21586) l!1114)) b!1015483))

(check-sat (not b!1015483) tp_is_empty!23547)
(check-sat)
