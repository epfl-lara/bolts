; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502602 () Bool)

(assert start!502602)

(declare-fun b!4834990 () Bool)

(declare-fun res!2059820 () Bool)

(declare-fun e!3021536 () Bool)

(assert (=> b!4834990 (=> (not res!2059820) (not e!3021536))))

(declare-datatypes ((K!16849 0))(
  ( (K!16850 (val!21785 Int)) )
))
(declare-datatypes ((V!17095 0))(
  ( (V!17096 (val!21786 Int)) )
))
(declare-datatypes ((tuple2!58442 0))(
  ( (tuple2!58443 (_1!32515 K!16849) (_2!32515 V!17095)) )
))
(declare-datatypes ((List!55254 0))(
  ( (Nil!55130) (Cons!55130 (h!61564 tuple2!58442) (t!362750 List!55254)) )
))
(declare-datatypes ((tuple2!58444 0))(
  ( (tuple2!58445 (_1!32516 (_ BitVec 64)) (_2!32516 List!55254)) )
))
(declare-datatypes ((List!55255 0))(
  ( (Nil!55131) (Cons!55131 (h!61565 tuple2!58444) (t!362751 List!55255)) )
))
(declare-datatypes ((ListLongMap!6087 0))(
  ( (ListLongMap!6088 (toList!7596 List!55255)) )
))
(declare-fun lm!1282 () ListLongMap!6087)

(declare-datatypes ((Hashable!7312 0))(
  ( (HashableExt!7311 (__x!33587 Int)) )
))
(declare-fun hashF!961 () Hashable!7312)

(declare-fun allKeysSameHashInMap!2628 (ListLongMap!6087 Hashable!7312) Bool)

(assert (=> b!4834990 (= res!2059820 (allKeysSameHashInMap!2628 lm!1282 hashF!961))))

(declare-fun b!4834991 () Bool)

(declare-fun e!3021535 () Bool)

(assert (=> b!4834991 (= e!3021536 e!3021535)))

(declare-fun res!2059821 () Bool)

(assert (=> b!4834991 (=> (not res!2059821) (not e!3021535))))

(declare-fun lt!1980985 () (_ BitVec 64))

(declare-fun contains!18955 (ListLongMap!6087 (_ BitVec 64)) Bool)

(assert (=> b!4834991 (= res!2059821 (contains!18955 lm!1282 lt!1980985))))

(declare-fun key!2791 () K!16849)

(declare-fun hash!5497 (Hashable!7312 K!16849) (_ BitVec 64))

(assert (=> b!4834991 (= lt!1980985 (hash!5497 hashF!961 key!2791))))

(declare-fun res!2059819 () Bool)

(assert (=> start!502602 (=> (not res!2059819) (not e!3021536))))

(declare-fun lambda!239142 () Int)

(declare-fun forall!12711 (List!55255 Int) Bool)

(assert (=> start!502602 (= res!2059819 (forall!12711 (toList!7596 lm!1282) lambda!239142))))

(assert (=> start!502602 e!3021536))

(declare-fun e!3021537 () Bool)

(declare-fun inv!70749 (ListLongMap!6087) Bool)

(assert (=> start!502602 (and (inv!70749 lm!1282) e!3021537)))

(assert (=> start!502602 true))

(declare-fun tp_is_empty!34719 () Bool)

(assert (=> start!502602 tp_is_empty!34719))

(declare-fun b!4834993 () Bool)

(declare-fun tp!1363252 () Bool)

(assert (=> b!4834993 (= e!3021537 tp!1363252)))

(declare-fun b!4834992 () Bool)

(assert (=> b!4834992 (= e!3021535 false)))

(declare-fun lt!1980984 () List!55254)

(declare-fun apply!13375 (ListLongMap!6087 (_ BitVec 64)) List!55254)

(assert (=> b!4834992 (= lt!1980984 (apply!13375 lm!1282 lt!1980985))))

(assert (= (and start!502602 res!2059819) b!4834990))

(assert (= (and b!4834990 res!2059820) b!4834991))

(assert (= (and b!4834991 res!2059821) b!4834992))

(assert (= start!502602 b!4834993))

(declare-fun m!5830092 () Bool)

(assert (=> b!4834990 m!5830092))

(declare-fun m!5830094 () Bool)

(assert (=> b!4834991 m!5830094))

(declare-fun m!5830096 () Bool)

(assert (=> b!4834991 m!5830096))

(declare-fun m!5830098 () Bool)

(assert (=> start!502602 m!5830098))

(declare-fun m!5830100 () Bool)

(assert (=> start!502602 m!5830100))

(declare-fun m!5830102 () Bool)

(assert (=> b!4834992 m!5830102))

(check-sat (not b!4834990) (not start!502602) (not b!4834993) (not b!4834992) tp_is_empty!34719 (not b!4834991))
(check-sat)
