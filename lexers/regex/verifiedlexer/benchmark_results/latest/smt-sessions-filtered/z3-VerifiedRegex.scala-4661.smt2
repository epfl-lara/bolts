; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243148 () Bool)

(assert start!243148)

(declare-fun res!1053127 () Bool)

(declare-fun e!1579729 () Bool)

(assert (=> start!243148 (=> (not res!1053127) (not e!1579729))))

(declare-datatypes ((V!5892 0))(
  ( (V!5893 (val!9027 Int)) )
))
(declare-datatypes ((K!5690 0))(
  ( (K!5691 (val!9028 Int)) )
))
(declare-datatypes ((tuple2!29354 0))(
  ( (tuple2!29355 (_1!17219 K!5690) (_2!17219 V!5892)) )
))
(declare-datatypes ((List!29363 0))(
  ( (Nil!29263) (Cons!29263 (h!34683 tuple2!29354) (t!211062 List!29363)) )
))
(declare-datatypes ((tuple2!29356 0))(
  ( (tuple2!29357 (_1!17220 (_ BitVec 64)) (_2!17220 List!29363)) )
))
(declare-datatypes ((List!29364 0))(
  ( (Nil!29264) (Cons!29264 (h!34684 tuple2!29356) (t!211063 List!29364)) )
))
(declare-datatypes ((ListLongMap!665 0))(
  ( (ListLongMap!666 (toList!1712 List!29364)) )
))
(declare-fun lm!2245 () ListLongMap!665)

(declare-fun lambda!94829 () Int)

(declare-fun forall!6034 (List!29364 Int) Bool)

(assert (=> start!243148 (= res!1053127 (forall!6034 (toList!1712 lm!2245) lambda!94829))))

(assert (=> start!243148 e!1579729))

(declare-fun e!1579728 () Bool)

(declare-fun inv!39312 (ListLongMap!665) Bool)

(assert (=> start!243148 (and (inv!39312 lm!2245) e!1579728)))

(assert (=> start!243148 true))

(declare-fun tp_is_empty!12449 () Bool)

(assert (=> start!243148 tp_is_empty!12449))

(declare-fun b!2487783 () Bool)

(declare-fun e!1579730 () Bool)

(declare-datatypes ((ListMap!1189 0))(
  ( (ListMap!1190 (toList!1713 List!29363)) )
))
(declare-fun lt!893681 () ListMap!1189)

(declare-fun lt!893680 () ListMap!1189)

(assert (=> b!2487783 (= e!1579730 (not (= lt!893681 lt!893680)))))

(assert (=> b!2487783 (= lt!893680 lt!893681)))

(declare-fun key!5251 () K!5690)

(declare-fun -!134 (ListMap!1189 K!5690) ListMap!1189)

(assert (=> b!2487783 (= lt!893680 (-!134 lt!893681 key!5251))))

(declare-datatypes ((Unit!42959 0))(
  ( (Unit!42960) )
))
(declare-fun lt!893682 () Unit!42959)

(declare-fun removeNotPresentStillSame!5 (ListMap!1189 K!5690) Unit!42959)

(assert (=> b!2487783 (= lt!893682 (removeNotPresentStillSame!5 lt!893681 key!5251))))

(declare-fun b!2487781 () Bool)

(declare-fun res!1053126 () Bool)

(assert (=> b!2487781 (=> (not res!1053126) (not e!1579729))))

(declare-datatypes ((Hashable!3352 0))(
  ( (HashableExt!3351 (__x!19214 Int)) )
))
(declare-fun hashF!1483 () Hashable!3352)

(declare-fun allKeysSameHashInMap!215 (ListLongMap!665 Hashable!3352) Bool)

(assert (=> b!2487781 (= res!1053126 (allKeysSameHashInMap!215 lm!2245 hashF!1483))))

(declare-fun b!2487782 () Bool)

(assert (=> b!2487782 (= e!1579729 e!1579730)))

(declare-fun res!1053128 () Bool)

(assert (=> b!2487782 (=> (not res!1053128) (not e!1579730))))

(declare-fun contains!5273 (ListMap!1189 K!5690) Bool)

(assert (=> b!2487782 (= res!1053128 (not (contains!5273 lt!893681 key!5251)))))

(declare-fun extractMap!208 (List!29364) ListMap!1189)

(assert (=> b!2487782 (= lt!893681 (extractMap!208 (toList!1712 lm!2245)))))

(declare-fun b!2487784 () Bool)

(declare-fun tp!796266 () Bool)

(assert (=> b!2487784 (= e!1579728 tp!796266)))

(assert (= (and start!243148 res!1053127) b!2487781))

(assert (= (and b!2487781 res!1053126) b!2487782))

(assert (= (and b!2487782 res!1053128) b!2487783))

(assert (= start!243148 b!2487784))

(declare-fun m!2856635 () Bool)

(assert (=> start!243148 m!2856635))

(declare-fun m!2856637 () Bool)

(assert (=> start!243148 m!2856637))

(declare-fun m!2856639 () Bool)

(assert (=> b!2487783 m!2856639))

(declare-fun m!2856641 () Bool)

(assert (=> b!2487783 m!2856641))

(declare-fun m!2856643 () Bool)

(assert (=> b!2487781 m!2856643))

(declare-fun m!2856645 () Bool)

(assert (=> b!2487782 m!2856645))

(declare-fun m!2856647 () Bool)

(assert (=> b!2487782 m!2856647))

(check-sat (not b!2487784) tp_is_empty!12449 (not b!2487781) (not b!2487783) (not b!2487782) (not start!243148))
(check-sat)
