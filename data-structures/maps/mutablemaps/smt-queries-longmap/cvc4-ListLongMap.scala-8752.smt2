; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106250 () Bool)

(assert start!106250)

(declare-fun res!842131 () Bool)

(declare-fun e!720024 () Bool)

(assert (=> start!106250 (=> (not res!842131) (not e!720024))))

(declare-datatypes ((B!1908 0))(
  ( (B!1909 (val!16289 Int)) )
))
(declare-datatypes ((tuple2!21246 0))(
  ( (tuple2!21247 (_1!10633 (_ BitVec 64)) (_2!10633 B!1908)) )
))
(declare-datatypes ((List!28456 0))(
  ( (Nil!28453) (Cons!28452 (h!29661 tuple2!21246) (t!41984 List!28456)) )
))
(declare-datatypes ((ListLongMap!19131 0))(
  ( (ListLongMap!19132 (toList!9581 List!28456)) )
))
(declare-fun lm!212 () ListLongMap!19131)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7639 (ListLongMap!19131 (_ BitVec 64)) Bool)

(assert (=> start!106250 (= res!842131 (not (contains!7639 lm!212 a1!67)))))

(assert (=> start!106250 e!720024))

(declare-fun e!720025 () Bool)

(declare-fun inv!44066 (ListLongMap!19131) Bool)

(assert (=> start!106250 (and (inv!44066 lm!212) e!720025)))

(assert (=> start!106250 true))

(declare-fun b!1264399 () Bool)

(assert (=> b!1264399 (= e!720024 false)))

(declare-fun b!1264400 () Bool)

(declare-fun tp!96201 () Bool)

(assert (=> b!1264400 (= e!720025 tp!96201)))

(assert (= (and start!106250 res!842131) b!1264399))

(assert (= start!106250 b!1264400))

(declare-fun m!1165013 () Bool)

(assert (=> start!106250 m!1165013))

(declare-fun m!1165015 () Bool)

(assert (=> start!106250 m!1165015))

(push 1)

(assert (not start!106250))

(assert (not b!1264400))

(check-sat)

(pop 1)

