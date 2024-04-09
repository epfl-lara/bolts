; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106776 () Bool)

(assert start!106776)

(assert (=> start!106776 false))

(declare-fun e!721834 () Bool)

(assert (=> start!106776 e!721834))

(assert (=> start!106776 true))

(declare-fun b!1267100 () Bool)

(declare-fun tp_is_empty!32583 () Bool)

(declare-fun tp!96564 () Bool)

(assert (=> b!1267100 (= e!721834 (and tp_is_empty!32583 tp!96564))))

(declare-datatypes ((B!2062 0))(
  ( (B!2063 (val!16366 Int)) )
))
(declare-datatypes ((tuple2!21400 0))(
  ( (tuple2!21401 (_1!10710 (_ BitVec 64)) (_2!10710 B!2062)) )
))
(declare-datatypes ((List!28533 0))(
  ( (Nil!28530) (Cons!28529 (h!29738 tuple2!21400) (t!42067 List!28533)) )
))
(declare-fun l!874 () List!28533)

(get-info :version)

(assert (= (and start!106776 ((_ is Cons!28529) l!874)) b!1267100))

(check-sat (not b!1267100) tp_is_empty!32583)
(check-sat)
