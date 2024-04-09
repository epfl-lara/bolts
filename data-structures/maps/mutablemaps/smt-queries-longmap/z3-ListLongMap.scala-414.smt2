; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7788 () Bool)

(assert start!7788)

(assert (=> start!7788 false))

(declare-fun e!31783 () Bool)

(assert (=> start!7788 e!31783))

(assert (=> start!7788 true))

(declare-fun b!49467 () Bool)

(declare-fun tp_is_empty!2151 () Bool)

(declare-fun tp!6527 () Bool)

(assert (=> b!49467 (= e!31783 (and tp_is_empty!2151 tp!6527))))

(declare-datatypes ((B!1000 0))(
  ( (B!1001 (val!1120 Int)) )
))
(declare-datatypes ((tuple2!1826 0))(
  ( (tuple2!1827 (_1!923 (_ BitVec 64)) (_2!923 B!1000)) )
))
(declare-datatypes ((List!1336 0))(
  ( (Nil!1333) (Cons!1332 (h!1912 tuple2!1826) (t!4378 List!1336)) )
))
(declare-fun l!1333 () List!1336)

(get-info :version)

(assert (= (and start!7788 ((_ is Cons!1332) l!1333)) b!49467))

(check-sat (not b!49467) tp_is_empty!2151)
(check-sat)
