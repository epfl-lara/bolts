; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87978 () Bool)

(assert start!87978)

(assert (=> start!87978 false))

(declare-fun e!571388 () Bool)

(assert (=> start!87978 e!571388))

(assert (=> start!87978 true))

(declare-fun tp_is_empty!23559 () Bool)

(assert (=> start!87978 tp_is_empty!23559))

(declare-fun b!1015591 () Bool)

(declare-fun tp!70677 () Bool)

(assert (=> b!1015591 (= e!571388 (and tp_is_empty!23559 tp!70677))))

(declare-datatypes ((B!1492 0))(
  ( (B!1493 (val!11830 Int)) )
))
(declare-datatypes ((tuple2!15296 0))(
  ( (tuple2!15297 (_1!7658 (_ BitVec 64)) (_2!7658 B!1492)) )
))
(declare-datatypes ((List!21599 0))(
  ( (Nil!21596) (Cons!21595 (h!22793 tuple2!15296) (t!30608 List!21599)) )
))
(declare-fun l!1114 () List!21599)

(get-info :version)

(assert (= (and start!87978 ((_ is Cons!21595) l!1114)) b!1015591))

(check-sat (not b!1015591) tp_is_empty!23559)
(check-sat)
