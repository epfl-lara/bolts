; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106244 () Bool)

(assert start!106244)

(declare-fun res!842122 () Bool)

(declare-fun e!720006 () Bool)

(assert (=> start!106244 (=> (not res!842122) (not e!720006))))

(declare-datatypes ((B!1902 0))(
  ( (B!1903 (val!16286 Int)) )
))
(declare-datatypes ((tuple2!21240 0))(
  ( (tuple2!21241 (_1!10630 (_ BitVec 64)) (_2!10630 B!1902)) )
))
(declare-datatypes ((List!28453 0))(
  ( (Nil!28450) (Cons!28449 (h!29658 tuple2!21240) (t!41981 List!28453)) )
))
(declare-datatypes ((ListLongMap!19125 0))(
  ( (ListLongMap!19126 (toList!9578 List!28453)) )
))
(declare-fun lm!212 () ListLongMap!19125)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7636 (ListLongMap!19125 (_ BitVec 64)) Bool)

(assert (=> start!106244 (= res!842122 (not (contains!7636 lm!212 a1!67)))))

(assert (=> start!106244 e!720006))

(declare-fun e!720007 () Bool)

(declare-fun inv!44058 (ListLongMap!19125) Bool)

(assert (=> start!106244 (and (inv!44058 lm!212) e!720007)))

(assert (=> start!106244 true))

(declare-fun b!1264381 () Bool)

(assert (=> b!1264381 (= e!720006 false)))

(declare-fun b!1264382 () Bool)

(declare-fun tp!96192 () Bool)

(assert (=> b!1264382 (= e!720007 tp!96192)))

(assert (= (and start!106244 res!842122) b!1264381))

(assert (= start!106244 b!1264382))

(declare-fun m!1165001 () Bool)

(assert (=> start!106244 m!1165001))

(declare-fun m!1165003 () Bool)

(assert (=> start!106244 m!1165003))

(push 1)

(assert (not start!106244))

(assert (not b!1264382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

