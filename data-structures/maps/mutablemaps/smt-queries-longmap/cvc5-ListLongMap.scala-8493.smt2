; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103518 () Bool)

(assert start!103518)

(assert (=> start!103518 false))

(assert (=> start!103518 true))

(declare-datatypes ((B!1784 0))(
  ( (B!1785 (val!15654 Int)) )
))
(declare-datatypes ((tuple2!20336 0))(
  ( (tuple2!20337 (_1!10178 (_ BitVec 64)) (_2!10178 B!1784)) )
))
(declare-datatypes ((List!27483 0))(
  ( (Nil!27480) (Cons!27479 (h!28688 tuple2!20336) (t!40953 List!27483)) )
))
(declare-datatypes ((ListLongMap!18317 0))(
  ( (ListLongMap!18318 (toList!9174 List!27483)) )
))
(declare-fun lm!211 () ListLongMap!18317)

(declare-fun e!703049 () Bool)

(declare-fun inv!42757 (ListLongMap!18317) Bool)

(assert (=> start!103518 (and (inv!42757 lm!211) e!703049)))

(declare-fun b!1240338 () Bool)

(declare-fun tp!92511 () Bool)

(assert (=> b!1240338 (= e!703049 tp!92511)))

(assert (= start!103518 b!1240338))

(declare-fun m!1143665 () Bool)

(assert (=> start!103518 m!1143665))

(push 1)

(assert (not start!103518))

(assert (not b!1240338))

(check-sat)

(pop 1)

