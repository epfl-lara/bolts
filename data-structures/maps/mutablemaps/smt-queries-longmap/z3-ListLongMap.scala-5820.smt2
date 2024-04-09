; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75112 () Bool)

(assert start!75112)

(assert (=> start!75112 false))

(declare-fun e!492629 () Bool)

(assert (=> start!75112 e!492629))

(assert (=> start!75112 true))

(declare-fun b!885103 () Bool)

(declare-fun tp_is_empty!17751 () Bool)

(declare-fun tp!54234 () Bool)

(assert (=> b!885103 (= e!492629 (and tp_is_empty!17751 tp!54234))))

(declare-datatypes ((B!1240 0))(
  ( (B!1241 (val!8926 Int)) )
))
(declare-datatypes ((tuple2!11872 0))(
  ( (tuple2!11873 (_1!5946 (_ BitVec 64)) (_2!5946 B!1240)) )
))
(declare-datatypes ((List!17726 0))(
  ( (Nil!17723) (Cons!17722 (h!18853 tuple2!11872) (t!25011 List!17726)) )
))
(declare-fun l!906 () List!17726)

(get-info :version)

(assert (= (and start!75112 ((_ is Cons!17722) l!906)) b!885103))

(check-sat (not b!885103) tp_is_empty!17751)
(check-sat)
