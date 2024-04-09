; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88444 () Bool)

(assert start!88444)

(assert (=> start!88444 false))

(declare-fun e!572440 () Bool)

(assert (=> start!88444 e!572440))

(assert (=> start!88444 true))

(declare-fun b!1017385 () Bool)

(declare-fun tp_is_empty!23637 () Bool)

(declare-fun tp!70877 () Bool)

(assert (=> b!1017385 (= e!572440 (and tp_is_empty!23637 tp!70877))))

(declare-datatypes ((B!1570 0))(
  ( (B!1571 (val!11869 Int)) )
))
(declare-datatypes ((tuple2!15374 0))(
  ( (tuple2!15375 (_1!7697 (_ BitVec 64)) (_2!7697 B!1570)) )
))
(declare-datatypes ((List!21671 0))(
  ( (Nil!21668) (Cons!21667 (h!22865 tuple2!15374) (t!30680 List!21671)) )
))
(declare-fun l!1036 () List!21671)

(get-info :version)

(assert (= (and start!88444 ((_ is Cons!21667) l!1036)) b!1017385))

(check-sat (not b!1017385) tp_is_empty!23637)
(check-sat)
