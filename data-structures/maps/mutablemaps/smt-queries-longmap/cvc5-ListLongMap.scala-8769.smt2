; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106636 () Bool)

(assert start!106636)

(declare-fun res!843310 () Bool)

(declare-fun e!721500 () Bool)

(assert (=> start!106636 (=> (not res!843310) (not e!721500))))

(declare-datatypes ((B!2006 0))(
  ( (B!2007 (val!16338 Int)) )
))
(declare-datatypes ((tuple2!21344 0))(
  ( (tuple2!21345 (_1!10682 (_ BitVec 64)) (_2!10682 B!2006)) )
))
(declare-datatypes ((List!28505 0))(
  ( (Nil!28502) (Cons!28501 (h!29710 tuple2!21344) (t!42039 List!28505)) )
))
(declare-datatypes ((ListLongMap!19151 0))(
  ( (ListLongMap!19152 (toList!9591 List!28505)) )
))
(declare-fun lm!209 () ListLongMap!19151)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7663 (ListLongMap!19151 (_ BitVec 64)) Bool)

(assert (=> start!106636 (= res!843310 (not (contains!7663 lm!209 a!499)))))

(assert (=> start!106636 e!721500))

(declare-fun e!721501 () Bool)

(declare-fun inv!44161 (ListLongMap!19151) Bool)

(assert (=> start!106636 (and (inv!44161 lm!209) e!721501)))

(assert (=> start!106636 true))

(declare-fun b!1266640 () Bool)

(assert (=> b!1266640 (= e!721500 false)))

(declare-fun b!1266641 () Bool)

(declare-fun tp!96453 () Bool)

(assert (=> b!1266641 (= e!721501 tp!96453)))

(assert (= (and start!106636 res!843310) b!1266640))

(assert (= start!106636 b!1266641))

(declare-fun m!1166331 () Bool)

(assert (=> start!106636 m!1166331))

(declare-fun m!1166333 () Bool)

(assert (=> start!106636 m!1166333))

(push 1)

(assert (not start!106636))

(assert (not b!1266641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

