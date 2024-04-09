; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103522 () Bool)

(assert start!103522)

(assert (=> start!103522 false))

(assert (=> start!103522 true))

(declare-datatypes ((B!1788 0))(
  ( (B!1789 (val!15656 Int)) )
))
(declare-datatypes ((tuple2!20340 0))(
  ( (tuple2!20341 (_1!10180 (_ BitVec 64)) (_2!10180 B!1788)) )
))
(declare-datatypes ((List!27485 0))(
  ( (Nil!27482) (Cons!27481 (h!28690 tuple2!20340) (t!40955 List!27485)) )
))
(declare-datatypes ((ListLongMap!18321 0))(
  ( (ListLongMap!18322 (toList!9176 List!27485)) )
))
(declare-fun lm!211 () ListLongMap!18321)

(declare-fun e!703055 () Bool)

(declare-fun inv!42759 (ListLongMap!18321) Bool)

(assert (=> start!103522 (and (inv!42759 lm!211) e!703055)))

(declare-fun b!1240344 () Bool)

(declare-fun tp!92517 () Bool)

(assert (=> b!1240344 (= e!703055 tp!92517)))

(assert (= start!103522 b!1240344))

(declare-fun m!1143669 () Bool)

(assert (=> start!103522 m!1143669))

(push 1)

(assert (not start!103522))

(assert (not b!1240344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

