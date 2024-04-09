; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106646 () Bool)

(assert start!106646)

(declare-fun res!843325 () Bool)

(declare-fun e!721530 () Bool)

(assert (=> start!106646 (=> (not res!843325) (not e!721530))))

(declare-datatypes ((B!2016 0))(
  ( (B!2017 (val!16343 Int)) )
))
(declare-datatypes ((tuple2!21354 0))(
  ( (tuple2!21355 (_1!10687 (_ BitVec 64)) (_2!10687 B!2016)) )
))
(declare-datatypes ((List!28510 0))(
  ( (Nil!28507) (Cons!28506 (h!29715 tuple2!21354) (t!42044 List!28510)) )
))
(declare-datatypes ((ListLongMap!19161 0))(
  ( (ListLongMap!19162 (toList!9596 List!28510)) )
))
(declare-fun lm!209 () ListLongMap!19161)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7668 (ListLongMap!19161 (_ BitVec 64)) Bool)

(assert (=> start!106646 (= res!843325 (not (contains!7668 lm!209 a!499)))))

(assert (=> start!106646 e!721530))

(declare-fun e!721531 () Bool)

(declare-fun inv!44171 (ListLongMap!19161) Bool)

(assert (=> start!106646 (and (inv!44171 lm!209) e!721531)))

(assert (=> start!106646 true))

(declare-fun b!1266670 () Bool)

(assert (=> b!1266670 (= e!721530 false)))

(declare-fun b!1266671 () Bool)

(declare-fun tp!96468 () Bool)

(assert (=> b!1266671 (= e!721531 tp!96468)))

(assert (= (and start!106646 res!843325) b!1266670))

(assert (= start!106646 b!1266671))

(declare-fun m!1166351 () Bool)

(assert (=> start!106646 m!1166351))

(declare-fun m!1166353 () Bool)

(assert (=> start!106646 m!1166353))

(push 1)

(assert (not start!106646))

(assert (not b!1266671))

(check-sat)

(pop 1)

