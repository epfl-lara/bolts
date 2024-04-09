; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7176 () Bool)

(assert start!7176)

(assert (=> start!7176 false))

(declare-fun e!29294 () Bool)

(assert (=> start!7176 e!29294))

(declare-fun b!46009 () Bool)

(declare-fun tp_is_empty!1947 () Bool)

(declare-fun tp!6032 () Bool)

(assert (=> b!46009 (= e!29294 (and tp_is_empty!1947 tp!6032))))

(declare-datatypes ((B!850 0))(
  ( (B!851 (val!1012 Int)) )
))
(declare-datatypes ((tuple2!1676 0))(
  ( (tuple2!1677 (_1!848 (_ BitVec 64)) (_2!848 B!850)) )
))
(declare-datatypes ((List!1246 0))(
  ( (Nil!1243) (Cons!1242 (h!1822 tuple2!1676) (t!4279 List!1246)) )
))
(declare-fun l!812 () List!1246)

(get-info :version)

(assert (= (and start!7176 ((_ is Cons!1242) l!812)) b!46009))

(check-sat (not b!46009) tp_is_empty!1947)
(check-sat)
