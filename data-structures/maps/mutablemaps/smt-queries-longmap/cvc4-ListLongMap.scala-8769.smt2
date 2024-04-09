; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106640 () Bool)

(assert start!106640)

(declare-fun res!843316 () Bool)

(declare-fun e!721512 () Bool)

(assert (=> start!106640 (=> (not res!843316) (not e!721512))))

(declare-datatypes ((B!2010 0))(
  ( (B!2011 (val!16340 Int)) )
))
(declare-datatypes ((tuple2!21348 0))(
  ( (tuple2!21349 (_1!10684 (_ BitVec 64)) (_2!10684 B!2010)) )
))
(declare-datatypes ((List!28507 0))(
  ( (Nil!28504) (Cons!28503 (h!29712 tuple2!21348) (t!42041 List!28507)) )
))
(declare-datatypes ((ListLongMap!19155 0))(
  ( (ListLongMap!19156 (toList!9593 List!28507)) )
))
(declare-fun lm!209 () ListLongMap!19155)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7665 (ListLongMap!19155 (_ BitVec 64)) Bool)

(assert (=> start!106640 (= res!843316 (not (contains!7665 lm!209 a!499)))))

(assert (=> start!106640 e!721512))

(declare-fun e!721513 () Bool)

(declare-fun inv!44163 (ListLongMap!19155) Bool)

(assert (=> start!106640 (and (inv!44163 lm!209) e!721513)))

(assert (=> start!106640 true))

(declare-fun b!1266652 () Bool)

(assert (=> b!1266652 (= e!721512 false)))

(declare-fun b!1266653 () Bool)

(declare-fun tp!96459 () Bool)

(assert (=> b!1266653 (= e!721513 tp!96459)))

(assert (= (and start!106640 res!843316) b!1266652))

(assert (= start!106640 b!1266653))

(declare-fun m!1166339 () Bool)

(assert (=> start!106640 m!1166339))

(declare-fun m!1166341 () Bool)

(assert (=> start!106640 m!1166341))

(push 1)

(assert (not start!106640))

(assert (not b!1266653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

