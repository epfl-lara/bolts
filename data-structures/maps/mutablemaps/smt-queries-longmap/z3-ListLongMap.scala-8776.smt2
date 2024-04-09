; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106764 () Bool)

(assert start!106764)

(assert (=> start!106764 false))

(declare-fun e!721807 () Bool)

(assert (=> start!106764 e!721807))

(assert (=> start!106764 true))

(declare-fun b!1267037 () Bool)

(declare-fun tp_is_empty!32571 () Bool)

(declare-fun tp!96546 () Bool)

(assert (=> b!1267037 (= e!721807 (and tp_is_empty!32571 tp!96546))))

(declare-datatypes ((B!2050 0))(
  ( (B!2051 (val!16360 Int)) )
))
(declare-datatypes ((tuple2!21388 0))(
  ( (tuple2!21389 (_1!10704 (_ BitVec 64)) (_2!10704 B!2050)) )
))
(declare-datatypes ((List!28527 0))(
  ( (Nil!28524) (Cons!28523 (h!29732 tuple2!21388) (t!42061 List!28527)) )
))
(declare-fun l!874 () List!28527)

(get-info :version)

(assert (= (and start!106764 ((_ is Cons!28523) l!874)) b!1267037))

(check-sat (not b!1267037) tp_is_empty!32571)
(check-sat)
