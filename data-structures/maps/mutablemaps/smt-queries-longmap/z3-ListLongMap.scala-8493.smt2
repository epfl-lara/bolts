; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103520 () Bool)

(assert start!103520)

(assert (=> start!103520 false))

(assert (=> start!103520 true))

(declare-datatypes ((B!1786 0))(
  ( (B!1787 (val!15655 Int)) )
))
(declare-datatypes ((tuple2!20338 0))(
  ( (tuple2!20339 (_1!10179 (_ BitVec 64)) (_2!10179 B!1786)) )
))
(declare-datatypes ((List!27484 0))(
  ( (Nil!27481) (Cons!27480 (h!28689 tuple2!20338) (t!40954 List!27484)) )
))
(declare-datatypes ((ListLongMap!18319 0))(
  ( (ListLongMap!18320 (toList!9175 List!27484)) )
))
(declare-fun lm!211 () ListLongMap!18319)

(declare-fun e!703052 () Bool)

(declare-fun inv!42758 (ListLongMap!18319) Bool)

(assert (=> start!103520 (and (inv!42758 lm!211) e!703052)))

(declare-fun b!1240341 () Bool)

(declare-fun tp!92514 () Bool)

(assert (=> b!1240341 (= e!703052 tp!92514)))

(assert (= start!103520 b!1240341))

(declare-fun m!1143667 () Bool)

(assert (=> start!103520 m!1143667))

(check-sat (not start!103520) (not b!1240341))
(check-sat)
