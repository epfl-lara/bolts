; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107830 () Bool)

(assert start!107830)

(assert (=> start!107830 false))

(declare-fun e!727410 () Bool)

(assert (=> start!107830 e!727410))

(assert (=> start!107830 true))

(declare-fun b!1274539 () Bool)

(declare-fun tp_is_empty!33183 () Bool)

(declare-fun tp!97989 () Bool)

(assert (=> b!1274539 (= e!727410 (and tp_is_empty!33183 tp!97989))))

(declare-datatypes ((B!2140 0))(
  ( (B!2141 (val!16666 Int)) )
))
(declare-datatypes ((tuple2!21560 0))(
  ( (tuple2!21561 (_1!10790 (_ BitVec 64)) (_2!10790 B!2140)) )
))
(declare-datatypes ((List!28750 0))(
  ( (Nil!28747) (Cons!28746 (h!29955 tuple2!21560) (t!42290 List!28750)) )
))
(declare-fun l!595 () List!28750)

(get-info :version)

(assert (= (and start!107830 ((_ is Cons!28746) l!595)) b!1274539))

(check-sat (not b!1274539) tp_is_empty!33183)
(check-sat)
