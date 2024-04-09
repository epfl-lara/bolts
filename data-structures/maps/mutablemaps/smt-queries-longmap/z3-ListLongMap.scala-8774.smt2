; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106752 () Bool)

(assert start!106752)

(assert (=> start!106752 false))

(declare-fun e!721789 () Bool)

(assert (=> start!106752 e!721789))

(declare-fun b!1267019 () Bool)

(declare-fun tp_is_empty!32559 () Bool)

(declare-fun tp!96528 () Bool)

(assert (=> b!1267019 (= e!721789 (and tp_is_empty!32559 tp!96528))))

(declare-datatypes ((B!2038 0))(
  ( (B!2039 (val!16354 Int)) )
))
(declare-datatypes ((tuple2!21376 0))(
  ( (tuple2!21377 (_1!10698 (_ BitVec 64)) (_2!10698 B!2038)) )
))
(declare-datatypes ((List!28521 0))(
  ( (Nil!28518) (Cons!28517 (h!29726 tuple2!21376) (t!42055 List!28521)) )
))
(declare-fun l!874 () List!28521)

(get-info :version)

(assert (= (and start!106752 ((_ is Cons!28517) l!874)) b!1267019))

(check-sat (not b!1267019) tp_is_empty!32559)
(check-sat)
