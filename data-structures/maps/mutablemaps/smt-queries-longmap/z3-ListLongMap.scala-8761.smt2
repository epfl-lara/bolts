; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106428 () Bool)

(assert start!106428)

(assert (=> start!106428 false))

(declare-fun e!720550 () Bool)

(assert (=> start!106428 e!720550))

(assert (=> start!106428 true))

(declare-fun b!1265225 () Bool)

(declare-fun tp_is_empty!32493 () Bool)

(declare-fun tp!96315 () Bool)

(assert (=> b!1265225 (= e!720550 (and tp_is_empty!32493 tp!96315))))

(declare-datatypes ((B!1960 0))(
  ( (B!1961 (val!16315 Int)) )
))
(declare-datatypes ((tuple2!21298 0))(
  ( (tuple2!21299 (_1!10659 (_ BitVec 64)) (_2!10659 B!1960)) )
))
(declare-datatypes ((List!28482 0))(
  ( (Nil!28479) (Cons!28478 (h!29687 tuple2!21298) (t!42010 List!28482)) )
))
(declare-fun l!706 () List!28482)

(get-info :version)

(assert (= (and start!106428 ((_ is Cons!28478) l!706)) b!1265225))

(check-sat (not b!1265225) tp_is_empty!32493)
(check-sat)
