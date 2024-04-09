; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103512 () Bool)

(assert start!103512)

(assert (=> start!103512 false))

(assert (=> start!103512 true))

(declare-datatypes ((B!1778 0))(
  ( (B!1779 (val!15651 Int)) )
))
(declare-datatypes ((tuple2!20330 0))(
  ( (tuple2!20331 (_1!10175 (_ BitVec 64)) (_2!10175 B!1778)) )
))
(declare-datatypes ((List!27480 0))(
  ( (Nil!27477) (Cons!27476 (h!28685 tuple2!20330) (t!40950 List!27480)) )
))
(declare-datatypes ((ListLongMap!18311 0))(
  ( (ListLongMap!18312 (toList!9171 List!27480)) )
))
(declare-fun lm!211 () ListLongMap!18311)

(declare-fun e!703040 () Bool)

(declare-fun inv!42749 (ListLongMap!18311) Bool)

(assert (=> start!103512 (and (inv!42749 lm!211) e!703040)))

(declare-fun b!1240329 () Bool)

(declare-fun tp!92502 () Bool)

(assert (=> b!1240329 (= e!703040 tp!92502)))

(assert (= start!103512 b!1240329))

(declare-fun m!1143659 () Bool)

(assert (=> start!103512 m!1143659))

(push 1)

(assert (not start!103512))

(assert (not b!1240329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

