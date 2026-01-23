; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243144 () Bool)

(assert start!243144)

(declare-fun b!2487760 () Bool)

(declare-fun e!1579710 () Bool)

(declare-fun tp!796260 () Bool)

(assert (=> b!2487760 (= e!1579710 tp!796260)))

(declare-fun b!2487758 () Bool)

(declare-fun e!1579712 () Bool)

(declare-fun e!1579711 () Bool)

(assert (=> b!2487758 (= e!1579712 e!1579711)))

(declare-fun res!1053109 () Bool)

(assert (=> b!2487758 (=> (not res!1053109) (not e!1579711))))

(declare-datatypes ((V!5887 0))(
  ( (V!5888 (val!9023 Int)) )
))
(declare-datatypes ((K!5685 0))(
  ( (K!5686 (val!9024 Int)) )
))
(declare-datatypes ((tuple2!29346 0))(
  ( (tuple2!29347 (_1!17215 K!5685) (_2!17215 V!5887)) )
))
(declare-datatypes ((List!29359 0))(
  ( (Nil!29259) (Cons!29259 (h!34679 tuple2!29346) (t!211058 List!29359)) )
))
(declare-datatypes ((ListMap!1185 0))(
  ( (ListMap!1186 (toList!1708 List!29359)) )
))
(declare-fun lt!893663 () ListMap!1185)

(declare-fun key!5251 () K!5685)

(declare-fun contains!5271 (ListMap!1185 K!5685) Bool)

(assert (=> b!2487758 (= res!1053109 (not (contains!5271 lt!893663 key!5251)))))

(declare-datatypes ((tuple2!29348 0))(
  ( (tuple2!29349 (_1!17216 (_ BitVec 64)) (_2!17216 List!29359)) )
))
(declare-datatypes ((List!29360 0))(
  ( (Nil!29260) (Cons!29260 (h!34680 tuple2!29348) (t!211059 List!29360)) )
))
(declare-datatypes ((ListLongMap!661 0))(
  ( (ListLongMap!662 (toList!1709 List!29360)) )
))
(declare-fun lm!2245 () ListLongMap!661)

(declare-fun extractMap!206 (List!29360) ListMap!1185)

(assert (=> b!2487758 (= lt!893663 (extractMap!206 (toList!1709 lm!2245)))))

(declare-fun res!1053110 () Bool)

(assert (=> start!243144 (=> (not res!1053110) (not e!1579712))))

(declare-fun lambda!94823 () Int)

(declare-fun forall!6032 (List!29360 Int) Bool)

(assert (=> start!243144 (= res!1053110 (forall!6032 (toList!1709 lm!2245) lambda!94823))))

(assert (=> start!243144 e!1579712))

(declare-fun inv!39307 (ListLongMap!661) Bool)

(assert (=> start!243144 (and (inv!39307 lm!2245) e!1579710)))

(assert (=> start!243144 true))

(declare-fun tp_is_empty!12445 () Bool)

(assert (=> start!243144 tp_is_empty!12445))

(declare-fun b!2487759 () Bool)

(assert (=> b!2487759 (= e!1579711 (not (forall!6032 (toList!1709 lm!2245) lambda!94823)))))

(declare-fun -!132 (ListMap!1185 K!5685) ListMap!1185)

(assert (=> b!2487759 (= (-!132 lt!893663 key!5251) lt!893663)))

(declare-datatypes ((Unit!42955 0))(
  ( (Unit!42956) )
))
(declare-fun lt!893664 () Unit!42955)

(declare-fun removeNotPresentStillSame!3 (ListMap!1185 K!5685) Unit!42955)

(assert (=> b!2487759 (= lt!893664 (removeNotPresentStillSame!3 lt!893663 key!5251))))

(declare-fun b!2487757 () Bool)

(declare-fun res!1053108 () Bool)

(assert (=> b!2487757 (=> (not res!1053108) (not e!1579712))))

(declare-datatypes ((Hashable!3350 0))(
  ( (HashableExt!3349 (__x!19212 Int)) )
))
(declare-fun hashF!1483 () Hashable!3350)

(declare-fun allKeysSameHashInMap!213 (ListLongMap!661 Hashable!3350) Bool)

(assert (=> b!2487757 (= res!1053108 (allKeysSameHashInMap!213 lm!2245 hashF!1483))))

(assert (= (and start!243144 res!1053110) b!2487757))

(assert (= (and b!2487757 res!1053108) b!2487758))

(assert (= (and b!2487758 res!1053109) b!2487759))

(assert (= start!243144 b!2487760))

(declare-fun m!2856607 () Bool)

(assert (=> b!2487758 m!2856607))

(declare-fun m!2856609 () Bool)

(assert (=> b!2487758 m!2856609))

(declare-fun m!2856611 () Bool)

(assert (=> start!243144 m!2856611))

(declare-fun m!2856613 () Bool)

(assert (=> start!243144 m!2856613))

(assert (=> b!2487759 m!2856611))

(declare-fun m!2856615 () Bool)

(assert (=> b!2487759 m!2856615))

(declare-fun m!2856617 () Bool)

(assert (=> b!2487759 m!2856617))

(declare-fun m!2856619 () Bool)

(assert (=> b!2487757 m!2856619))

(check-sat (not b!2487760) (not b!2487759) tp_is_empty!12445 (not start!243144) (not b!2487758) (not b!2487757))
(check-sat)
