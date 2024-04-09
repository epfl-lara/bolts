; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106758 () Bool)

(assert start!106758)

(assert (=> start!106758 false))

(declare-fun e!721798 () Bool)

(assert (=> start!106758 e!721798))

(assert (=> start!106758 true))

(declare-fun b!1267028 () Bool)

(declare-fun tp_is_empty!32565 () Bool)

(declare-fun tp!96537 () Bool)

(assert (=> b!1267028 (= e!721798 (and tp_is_empty!32565 tp!96537))))

(declare-datatypes ((B!2044 0))(
  ( (B!2045 (val!16357 Int)) )
))
(declare-datatypes ((tuple2!21382 0))(
  ( (tuple2!21383 (_1!10701 (_ BitVec 64)) (_2!10701 B!2044)) )
))
(declare-datatypes ((List!28524 0))(
  ( (Nil!28521) (Cons!28520 (h!29729 tuple2!21382) (t!42058 List!28524)) )
))
(declare-fun l!874 () List!28524)

(get-info :version)

(assert (= (and start!106758 ((_ is Cons!28520) l!874)) b!1267028))

(check-sat (not b!1267028) tp_is_empty!32565)
(check-sat)
