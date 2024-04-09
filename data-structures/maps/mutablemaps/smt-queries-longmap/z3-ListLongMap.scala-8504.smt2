; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103700 () Bool)

(assert start!103700)

(assert (=> start!103700 false))

(assert (=> start!103700 true))

(declare-fun e!703730 () Bool)

(assert (=> start!103700 e!703730))

(declare-fun b!1241487 () Bool)

(declare-fun tp_is_empty!31251 () Bool)

(declare-fun tp!92658 () Bool)

(assert (=> b!1241487 (= e!703730 (and tp_is_empty!31251 tp!92658))))

(declare-datatypes ((B!1852 0))(
  ( (B!1853 (val!15688 Int)) )
))
(declare-datatypes ((tuple2!20404 0))(
  ( (tuple2!20405 (_1!10212 (_ BitVec 64)) (_2!10212 B!1852)) )
))
(declare-datatypes ((List!27517 0))(
  ( (Nil!27514) (Cons!27513 (h!28722 tuple2!20404) (t!40987 List!27517)) )
))
(declare-fun l!644 () List!27517)

(get-info :version)

(assert (= (and start!103700 ((_ is Cons!27513) l!644)) b!1241487))

(check-sat (not b!1241487) tp_is_empty!31251)
(check-sat)
