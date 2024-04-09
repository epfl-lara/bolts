; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103514 () Bool)

(assert start!103514)

(assert (=> start!103514 false))

(assert (=> start!103514 true))

(declare-datatypes ((B!1780 0))(
  ( (B!1781 (val!15652 Int)) )
))
(declare-datatypes ((tuple2!20332 0))(
  ( (tuple2!20333 (_1!10176 (_ BitVec 64)) (_2!10176 B!1780)) )
))
(declare-datatypes ((List!27481 0))(
  ( (Nil!27478) (Cons!27477 (h!28686 tuple2!20332) (t!40951 List!27481)) )
))
(declare-datatypes ((ListLongMap!18313 0))(
  ( (ListLongMap!18314 (toList!9172 List!27481)) )
))
(declare-fun lm!211 () ListLongMap!18313)

(declare-fun e!703043 () Bool)

(declare-fun inv!42750 (ListLongMap!18313) Bool)

(assert (=> start!103514 (and (inv!42750 lm!211) e!703043)))

(declare-fun b!1240332 () Bool)

(declare-fun tp!92505 () Bool)

(assert (=> b!1240332 (= e!703043 tp!92505)))

(assert (= start!103514 b!1240332))

(declare-fun m!1143661 () Bool)

(assert (=> start!103514 m!1143661))

(check-sat (not start!103514) (not b!1240332))
(check-sat)
