; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7782 () Bool)

(assert start!7782)

(assert (=> start!7782 false))

(declare-fun e!31774 () Bool)

(assert (=> start!7782 e!31774))

(assert (=> start!7782 true))

(declare-fun b!49458 () Bool)

(declare-fun tp_is_empty!2145 () Bool)

(declare-fun tp!6518 () Bool)

(assert (=> b!49458 (= e!31774 (and tp_is_empty!2145 tp!6518))))

(declare-datatypes ((B!994 0))(
  ( (B!995 (val!1117 Int)) )
))
(declare-datatypes ((tuple2!1820 0))(
  ( (tuple2!1821 (_1!920 (_ BitVec 64)) (_2!920 B!994)) )
))
(declare-datatypes ((List!1333 0))(
  ( (Nil!1330) (Cons!1329 (h!1909 tuple2!1820) (t!4375 List!1333)) )
))
(declare-fun l!1333 () List!1333)

(get-info :version)

(assert (= (and start!7782 ((_ is Cons!1329) l!1333)) b!49458))

(check-sat (not b!49458) tp_is_empty!2145)
(check-sat)
