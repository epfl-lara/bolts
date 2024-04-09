; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88438 () Bool)

(assert start!88438)

(assert (=> start!88438 false))

(declare-fun e!572431 () Bool)

(assert (=> start!88438 e!572431))

(declare-fun b!1017376 () Bool)

(declare-fun tp_is_empty!23631 () Bool)

(declare-fun tp!70868 () Bool)

(assert (=> b!1017376 (= e!572431 (and tp_is_empty!23631 tp!70868))))

(declare-datatypes ((B!1564 0))(
  ( (B!1565 (val!11866 Int)) )
))
(declare-datatypes ((tuple2!15368 0))(
  ( (tuple2!15369 (_1!7694 (_ BitVec 64)) (_2!7694 B!1564)) )
))
(declare-datatypes ((List!21668 0))(
  ( (Nil!21665) (Cons!21664 (h!22862 tuple2!15368) (t!30677 List!21668)) )
))
(declare-fun l!1036 () List!21668)

(get-info :version)

(assert (= (and start!88438 ((_ is Cons!21664) l!1036)) b!1017376))

(check-sat (not b!1017376) tp_is_empty!23631)
(check-sat)
