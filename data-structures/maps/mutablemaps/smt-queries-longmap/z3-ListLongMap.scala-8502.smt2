; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103676 () Bool)

(assert start!103676)

(assert (=> start!103676 false))

(assert (=> start!103676 true))

(declare-fun e!703643 () Bool)

(assert (=> start!103676 e!703643))

(declare-fun b!1241358 () Bool)

(declare-fun tp_is_empty!31239 () Bool)

(declare-fun tp!92631 () Bool)

(assert (=> b!1241358 (= e!703643 (and tp_is_empty!31239 tp!92631))))

(declare-datatypes ((B!1840 0))(
  ( (B!1841 (val!15682 Int)) )
))
(declare-datatypes ((tuple2!20392 0))(
  ( (tuple2!20393 (_1!10206 (_ BitVec 64)) (_2!10206 B!1840)) )
))
(declare-datatypes ((List!27511 0))(
  ( (Nil!27508) (Cons!27507 (h!28716 tuple2!20392) (t!40981 List!27511)) )
))
(declare-fun l!644 () List!27511)

(get-info :version)

(assert (= (and start!103676 ((_ is Cons!27507) l!644)) b!1241358))

(check-sat (not b!1241358) tp_is_empty!31239)
(check-sat)
