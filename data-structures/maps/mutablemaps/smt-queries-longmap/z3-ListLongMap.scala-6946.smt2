; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87510 () Bool)

(assert start!87510)

(assert (=> start!87510 false))

(declare-fun e!569927 () Bool)

(assert (=> start!87510 e!569927))

(declare-fun b!1013092 () Bool)

(declare-fun tp_is_empty!23451 () Bool)

(declare-fun tp!70386 () Bool)

(assert (=> b!1013092 (= e!569927 (and tp_is_empty!23451 tp!70386))))

(declare-datatypes ((B!1384 0))(
  ( (B!1385 (val!11776 Int)) )
))
(declare-datatypes ((tuple2!15188 0))(
  ( (tuple2!15189 (_1!7604 (_ BitVec 64)) (_2!7604 B!1384)) )
))
(declare-datatypes ((List!21509 0))(
  ( (Nil!21506) (Cons!21505 (h!22703 tuple2!15188) (t!30518 List!21509)) )
))
(declare-fun l!412 () List!21509)

(get-info :version)

(assert (= (and start!87510 ((_ is Cons!21505) l!412)) b!1013092))

(check-sat (not b!1013092) tp_is_empty!23451)
(check-sat)
