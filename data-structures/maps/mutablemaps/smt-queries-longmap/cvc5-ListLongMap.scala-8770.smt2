; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106642 () Bool)

(assert start!106642)

(declare-fun res!843319 () Bool)

(declare-fun e!721518 () Bool)

(assert (=> start!106642 (=> (not res!843319) (not e!721518))))

(declare-datatypes ((B!2012 0))(
  ( (B!2013 (val!16341 Int)) )
))
(declare-datatypes ((tuple2!21350 0))(
  ( (tuple2!21351 (_1!10685 (_ BitVec 64)) (_2!10685 B!2012)) )
))
(declare-datatypes ((List!28508 0))(
  ( (Nil!28505) (Cons!28504 (h!29713 tuple2!21350) (t!42042 List!28508)) )
))
(declare-datatypes ((ListLongMap!19157 0))(
  ( (ListLongMap!19158 (toList!9594 List!28508)) )
))
(declare-fun lm!209 () ListLongMap!19157)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7666 (ListLongMap!19157 (_ BitVec 64)) Bool)

(assert (=> start!106642 (= res!843319 (not (contains!7666 lm!209 a!499)))))

(assert (=> start!106642 e!721518))

(declare-fun e!721519 () Bool)

(declare-fun inv!44169 (ListLongMap!19157) Bool)

(assert (=> start!106642 (and (inv!44169 lm!209) e!721519)))

(assert (=> start!106642 true))

(declare-fun b!1266658 () Bool)

(assert (=> b!1266658 (= e!721518 false)))

(declare-fun b!1266659 () Bool)

(declare-fun tp!96462 () Bool)

(assert (=> b!1266659 (= e!721519 tp!96462)))

(assert (= (and start!106642 res!843319) b!1266658))

(assert (= start!106642 b!1266659))

(declare-fun m!1166343 () Bool)

(assert (=> start!106642 m!1166343))

(declare-fun m!1166345 () Bool)

(assert (=> start!106642 m!1166345))

(push 1)

(assert (not start!106642))

(assert (not b!1266659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

