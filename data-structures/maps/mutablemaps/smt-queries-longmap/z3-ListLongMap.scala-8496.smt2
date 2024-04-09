; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103592 () Bool)

(assert start!103592)

(assert (=> start!103592 false))

(assert (=> start!103592 true))

(declare-fun e!703259 () Bool)

(assert (=> start!103592 e!703259))

(declare-fun b!1240665 () Bool)

(declare-fun tp_is_empty!31203 () Bool)

(declare-fun tp!92559 () Bool)

(assert (=> b!1240665 (= e!703259 (and tp_is_empty!31203 tp!92559))))

(declare-datatypes ((B!1804 0))(
  ( (B!1805 (val!15664 Int)) )
))
(declare-datatypes ((tuple2!20356 0))(
  ( (tuple2!20357 (_1!10188 (_ BitVec 64)) (_2!10188 B!1804)) )
))
(declare-datatypes ((List!27493 0))(
  ( (Nil!27490) (Cons!27489 (h!28698 tuple2!20356) (t!40963 List!27493)) )
))
(declare-fun l!644 () List!27493)

(get-info :version)

(assert (= (and start!103592 ((_ is Cons!27489) l!644)) b!1240665))

(check-sat (not b!1240665) tp_is_empty!31203)
(check-sat)
