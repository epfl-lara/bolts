; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103598 () Bool)

(assert start!103598)

(assert (=> start!103598 false))

(assert (=> start!103598 true))

(declare-fun e!703268 () Bool)

(assert (=> start!103598 e!703268))

(declare-fun b!1240674 () Bool)

(declare-fun tp_is_empty!31209 () Bool)

(declare-fun tp!92568 () Bool)

(assert (=> b!1240674 (= e!703268 (and tp_is_empty!31209 tp!92568))))

(declare-datatypes ((B!1810 0))(
  ( (B!1811 (val!15667 Int)) )
))
(declare-datatypes ((tuple2!20362 0))(
  ( (tuple2!20363 (_1!10191 (_ BitVec 64)) (_2!10191 B!1810)) )
))
(declare-datatypes ((List!27496 0))(
  ( (Nil!27493) (Cons!27492 (h!28701 tuple2!20362) (t!40966 List!27496)) )
))
(declare-fun l!644 () List!27496)

(get-info :version)

(assert (= (and start!103598 ((_ is Cons!27492) l!644)) b!1240674))

(check-sat (not b!1240674) tp_is_empty!31209)
(check-sat)
