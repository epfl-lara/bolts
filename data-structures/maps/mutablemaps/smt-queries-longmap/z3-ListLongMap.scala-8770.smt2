; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106644 () Bool)

(assert start!106644)

(declare-fun res!843322 () Bool)

(declare-fun e!721524 () Bool)

(assert (=> start!106644 (=> (not res!843322) (not e!721524))))

(declare-datatypes ((B!2014 0))(
  ( (B!2015 (val!16342 Int)) )
))
(declare-datatypes ((tuple2!21352 0))(
  ( (tuple2!21353 (_1!10686 (_ BitVec 64)) (_2!10686 B!2014)) )
))
(declare-datatypes ((List!28509 0))(
  ( (Nil!28506) (Cons!28505 (h!29714 tuple2!21352) (t!42043 List!28509)) )
))
(declare-datatypes ((ListLongMap!19159 0))(
  ( (ListLongMap!19160 (toList!9595 List!28509)) )
))
(declare-fun lm!209 () ListLongMap!19159)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7667 (ListLongMap!19159 (_ BitVec 64)) Bool)

(assert (=> start!106644 (= res!843322 (not (contains!7667 lm!209 a!499)))))

(assert (=> start!106644 e!721524))

(declare-fun e!721525 () Bool)

(declare-fun inv!44170 (ListLongMap!19159) Bool)

(assert (=> start!106644 (and (inv!44170 lm!209) e!721525)))

(assert (=> start!106644 true))

(declare-fun b!1266664 () Bool)

(assert (=> b!1266664 (= e!721524 false)))

(declare-fun b!1266665 () Bool)

(declare-fun tp!96465 () Bool)

(assert (=> b!1266665 (= e!721525 tp!96465)))

(assert (= (and start!106644 res!843322) b!1266664))

(assert (= start!106644 b!1266665))

(declare-fun m!1166347 () Bool)

(assert (=> start!106644 m!1166347))

(declare-fun m!1166349 () Bool)

(assert (=> start!106644 m!1166349))

(check-sat (not start!106644) (not b!1266665))
(check-sat)
