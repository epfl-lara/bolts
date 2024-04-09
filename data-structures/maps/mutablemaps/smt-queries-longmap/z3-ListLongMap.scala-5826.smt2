; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75178 () Bool)

(assert start!75178)

(assert (=> start!75178 false))

(declare-fun e!492926 () Bool)

(assert (=> start!75178 e!492926))

(declare-fun b!885610 () Bool)

(declare-fun tp_is_empty!17787 () Bool)

(declare-fun tp!54306 () Bool)

(assert (=> b!885610 (= e!492926 (and tp_is_empty!17787 tp!54306))))

(declare-datatypes ((B!1276 0))(
  ( (B!1277 (val!8944 Int)) )
))
(declare-datatypes ((tuple2!11908 0))(
  ( (tuple2!11909 (_1!5964 (_ BitVec 64)) (_2!5964 B!1276)) )
))
(declare-datatypes ((List!17744 0))(
  ( (Nil!17741) (Cons!17740 (h!18871 tuple2!11908) (t!25029 List!17744)) )
))
(declare-fun l!906 () List!17744)

(get-info :version)

(assert (= (and start!75178 ((_ is Cons!17740) l!906)) b!885610))

(check-sat (not b!885610) tp_is_empty!17787)
(check-sat)
