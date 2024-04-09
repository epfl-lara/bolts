; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4716 () Bool)

(assert start!4716)

(declare-fun b_free!1305 () Bool)

(declare-fun b_next!1305 () Bool)

(assert (=> start!4716 (= b_free!1305 (not b_next!1305))))

(declare-fun tp!5378 () Bool)

(declare-fun b_and!2153 () Bool)

(assert (=> start!4716 (= tp!5378 b_and!2153)))

(declare-fun b!36553 () Bool)

(declare-fun e!23103 () Bool)

(declare-fun e!23102 () Bool)

(assert (=> b!36553 (= e!23103 e!23102)))

(declare-fun res!22102 () Bool)

(assert (=> b!36553 (=> (not res!22102) (not e!23102))))

(declare-datatypes ((B!712 0))(
  ( (B!713 (val!856 Int)) )
))
(declare-datatypes ((tuple2!1376 0))(
  ( (tuple2!1377 (_1!698 (_ BitVec 64)) (_2!698 B!712)) )
))
(declare-datatypes ((List!976 0))(
  ( (Nil!973) (Cons!972 (h!1540 tuple2!1376) (t!3703 List!976)) )
))
(declare-datatypes ((ListLongMap!957 0))(
  ( (ListLongMap!958 (toList!494 List!976)) )
))
(declare-fun lt!13522 () ListLongMap!957)

(declare-fun p!304 () Int)

(declare-fun forall!156 (List!976 Int) Bool)

(assert (=> b!36553 (= res!22102 (forall!156 (toList!494 lt!13522) p!304))))

(declare-fun lm!252 () ListLongMap!957)

(declare-fun tail!87 (ListLongMap!957) ListLongMap!957)

(assert (=> b!36553 (= lt!13522 (tail!87 lm!252))))

(declare-fun res!22103 () Bool)

(assert (=> start!4716 (=> (not res!22103) (not e!23103))))

(assert (=> start!4716 (= res!22103 (forall!156 (toList!494 lm!252) p!304))))

(assert (=> start!4716 e!23103))

(declare-fun e!23101 () Bool)

(declare-fun inv!1591 (ListLongMap!957) Bool)

(assert (=> start!4716 (and (inv!1591 lm!252) e!23101)))

(assert (=> start!4716 tp!5378))

(assert (=> start!4716 true))

(declare-fun b!36554 () Bool)

(assert (=> b!36554 (= e!23102 false)))

(declare-fun lt!13521 () Bool)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!442 (ListLongMap!957 (_ BitVec 64)) Bool)

(assert (=> b!36554 (= lt!13521 (contains!442 lt!13522 k0!388))))

(declare-fun b!36555 () Bool)

(declare-fun tp!5377 () Bool)

(assert (=> b!36555 (= e!23101 tp!5377)))

(declare-fun b!36556 () Bool)

(declare-fun res!22105 () Bool)

(assert (=> b!36556 (=> (not res!22105) (not e!23103))))

(assert (=> b!36556 (= res!22105 (contains!442 lm!252 k0!388))))

(declare-fun b!36557 () Bool)

(declare-fun res!22104 () Bool)

(assert (=> b!36557 (=> (not res!22104) (not e!23103))))

(declare-fun head!834 (List!976) tuple2!1376)

(assert (=> b!36557 (= res!22104 (not (= (_1!698 (head!834 (toList!494 lm!252))) k0!388)))))

(declare-fun b!36558 () Bool)

(declare-fun res!22101 () Bool)

(assert (=> b!36558 (=> (not res!22101) (not e!23103))))

(declare-fun isEmpty!186 (ListLongMap!957) Bool)

(assert (=> b!36558 (= res!22101 (not (isEmpty!186 lm!252)))))

(assert (= (and start!4716 res!22103) b!36556))

(assert (= (and b!36556 res!22105) b!36558))

(assert (= (and b!36558 res!22101) b!36557))

(assert (= (and b!36557 res!22104) b!36553))

(assert (= (and b!36553 res!22102) b!36554))

(assert (= start!4716 b!36555))

(declare-fun m!29445 () Bool)

(assert (=> b!36558 m!29445))

(declare-fun m!29447 () Bool)

(assert (=> b!36556 m!29447))

(declare-fun m!29449 () Bool)

(assert (=> b!36557 m!29449))

(declare-fun m!29451 () Bool)

(assert (=> start!4716 m!29451))

(declare-fun m!29453 () Bool)

(assert (=> start!4716 m!29453))

(declare-fun m!29455 () Bool)

(assert (=> b!36554 m!29455))

(declare-fun m!29457 () Bool)

(assert (=> b!36553 m!29457))

(declare-fun m!29459 () Bool)

(assert (=> b!36553 m!29459))

(check-sat (not b!36556) (not b!36557) (not b!36558) (not b!36554) (not start!4716) (not b_next!1305) b_and!2153 (not b!36555) (not b!36553))
(check-sat b_and!2153 (not b_next!1305))
