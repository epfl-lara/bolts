; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106380 () Bool)

(assert start!106380)

(assert (=> start!106380 false))

(declare-fun e!720355 () Bool)

(assert (=> start!106380 e!720355))

(assert (=> start!106380 true))

(declare-fun b!1264874 () Bool)

(declare-fun tp_is_empty!32475 () Bool)

(declare-fun tp!96279 () Bool)

(assert (=> b!1264874 (= e!720355 (and tp_is_empty!32475 tp!96279))))

(declare-datatypes ((B!1942 0))(
  ( (B!1943 (val!16306 Int)) )
))
(declare-datatypes ((tuple2!21280 0))(
  ( (tuple2!21281 (_1!10650 (_ BitVec 64)) (_2!10650 B!1942)) )
))
(declare-datatypes ((List!28473 0))(
  ( (Nil!28470) (Cons!28469 (h!29678 tuple2!21280) (t!42001 List!28473)) )
))
(declare-fun l!706 () List!28473)

(get-info :version)

(assert (= (and start!106380 ((_ is Cons!28469) l!706)) b!1264874))

(check-sat (not b!1264874) tp_is_empty!32475)
(check-sat)
