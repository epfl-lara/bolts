; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103516 () Bool)

(assert start!103516)

(assert (=> start!103516 false))

(assert (=> start!103516 true))

(declare-datatypes ((B!1782 0))(
  ( (B!1783 (val!15653 Int)) )
))
(declare-datatypes ((tuple2!20334 0))(
  ( (tuple2!20335 (_1!10177 (_ BitVec 64)) (_2!10177 B!1782)) )
))
(declare-datatypes ((List!27482 0))(
  ( (Nil!27479) (Cons!27478 (h!28687 tuple2!20334) (t!40952 List!27482)) )
))
(declare-datatypes ((ListLongMap!18315 0))(
  ( (ListLongMap!18316 (toList!9173 List!27482)) )
))
(declare-fun lm!211 () ListLongMap!18315)

(declare-fun e!703046 () Bool)

(declare-fun inv!42751 (ListLongMap!18315) Bool)

(assert (=> start!103516 (and (inv!42751 lm!211) e!703046)))

(declare-fun b!1240335 () Bool)

(declare-fun tp!92508 () Bool)

(assert (=> b!1240335 (= e!703046 tp!92508)))

(assert (= start!103516 b!1240335))

(declare-fun m!1143663 () Bool)

(assert (=> start!103516 m!1143663))

(push 1)

(assert (not start!103516))

(assert (not b!1240335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

