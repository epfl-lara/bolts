; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7110 () Bool)

(assert start!7110)

(assert (=> start!7110 false))

(declare-fun e!29009 () Bool)

(assert (=> start!7110 e!29009))

(declare-fun b!45556 () Bool)

(declare-fun tp_is_empty!1917 () Bool)

(declare-fun tp!5969 () Bool)

(assert (=> b!45556 (= e!29009 (and tp_is_empty!1917 tp!5969))))

(declare-datatypes ((B!820 0))(
  ( (B!821 (val!997 Int)) )
))
(declare-datatypes ((tuple2!1646 0))(
  ( (tuple2!1647 (_1!833 (_ BitVec 64)) (_2!833 B!820)) )
))
(declare-datatypes ((List!1231 0))(
  ( (Nil!1228) (Cons!1227 (h!1807 tuple2!1646) (t!4264 List!1231)) )
))
(declare-fun l!812 () List!1231)

(get-info :version)

(assert (= (and start!7110 ((_ is Cons!1227) l!812)) b!45556))

(check-sat (not b!45556) tp_is_empty!1917)
(check-sat)
