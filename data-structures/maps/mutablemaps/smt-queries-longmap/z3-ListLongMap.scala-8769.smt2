; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106638 () Bool)

(assert start!106638)

(declare-fun res!843313 () Bool)

(declare-fun e!721506 () Bool)

(assert (=> start!106638 (=> (not res!843313) (not e!721506))))

(declare-datatypes ((B!2008 0))(
  ( (B!2009 (val!16339 Int)) )
))
(declare-datatypes ((tuple2!21346 0))(
  ( (tuple2!21347 (_1!10683 (_ BitVec 64)) (_2!10683 B!2008)) )
))
(declare-datatypes ((List!28506 0))(
  ( (Nil!28503) (Cons!28502 (h!29711 tuple2!21346) (t!42040 List!28506)) )
))
(declare-datatypes ((ListLongMap!19153 0))(
  ( (ListLongMap!19154 (toList!9592 List!28506)) )
))
(declare-fun lm!209 () ListLongMap!19153)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7664 (ListLongMap!19153 (_ BitVec 64)) Bool)

(assert (=> start!106638 (= res!843313 (not (contains!7664 lm!209 a!499)))))

(assert (=> start!106638 e!721506))

(declare-fun e!721507 () Bool)

(declare-fun inv!44162 (ListLongMap!19153) Bool)

(assert (=> start!106638 (and (inv!44162 lm!209) e!721507)))

(assert (=> start!106638 true))

(declare-fun b!1266646 () Bool)

(assert (=> b!1266646 (= e!721506 false)))

(declare-fun b!1266647 () Bool)

(declare-fun tp!96456 () Bool)

(assert (=> b!1266647 (= e!721507 tp!96456)))

(assert (= (and start!106638 res!843313) b!1266646))

(assert (= start!106638 b!1266647))

(declare-fun m!1166335 () Bool)

(assert (=> start!106638 m!1166335))

(declare-fun m!1166337 () Bool)

(assert (=> start!106638 m!1166337))

(check-sat (not start!106638) (not b!1266647))
(check-sat)
