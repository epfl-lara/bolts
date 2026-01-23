; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502796 () Bool)

(assert start!502796)

(declare-fun b!4835943 () Bool)

(declare-fun res!2060536 () Bool)

(declare-fun e!3022204 () Bool)

(assert (=> b!4835943 (=> (not res!2060536) (not e!3022204))))

(declare-datatypes ((K!16959 0))(
  ( (K!16960 (val!21873 Int)) )
))
(declare-datatypes ((V!17205 0))(
  ( (V!17206 (val!21874 Int)) )
))
(declare-datatypes ((tuple2!58618 0))(
  ( (tuple2!58619 (_1!32603 K!16959) (_2!32603 V!17205)) )
))
(declare-datatypes ((List!55342 0))(
  ( (Nil!55218) (Cons!55218 (h!61653 tuple2!58618) (t!362838 List!55342)) )
))
(declare-datatypes ((tuple2!58620 0))(
  ( (tuple2!58621 (_1!32604 (_ BitVec 64)) (_2!32604 List!55342)) )
))
(declare-datatypes ((List!55343 0))(
  ( (Nil!55219) (Cons!55219 (h!61654 tuple2!58620) (t!362839 List!55343)) )
))
(declare-datatypes ((ListLongMap!6175 0))(
  ( (ListLongMap!6176 (toList!7644 List!55343)) )
))
(declare-fun lm!2671 () ListLongMap!6175)

(declare-fun key!6540 () K!16959)

(declare-fun containsKeyBiggerList!640 (List!55343 K!16959) Bool)

(assert (=> b!4835943 (= res!2060536 (containsKeyBiggerList!640 (toList!7644 lm!2671) key!6540))))

(declare-fun b!4835944 () Bool)

(declare-fun e!3022202 () Bool)

(assert (=> b!4835944 (= e!3022204 e!3022202)))

(declare-fun res!2060534 () Bool)

(assert (=> b!4835944 (=> (not res!2060534) (not e!3022202))))

(declare-fun lambda!239437 () Int)

(declare-fun forall!12756 (List!55343 Int) Bool)

(assert (=> b!4835944 (= res!2060534 (forall!12756 (toList!7644 lm!2671) lambda!239437))))

(declare-fun lt!1981627 () V!17205)

(declare-fun getValue!170 (List!55343 K!16959) V!17205)

(assert (=> b!4835944 (= lt!1981627 (getValue!170 (toList!7644 lm!2671) key!6540))))

(declare-fun b!4835945 () Bool)

(declare-fun e!3022203 () Bool)

(declare-fun tp!1363422 () Bool)

(assert (=> b!4835945 (= e!3022203 tp!1363422)))

(declare-fun b!4835946 () Bool)

(declare-fun res!2060540 () Bool)

(assert (=> b!4835946 (=> (not res!2060540) (not e!3022202))))

(declare-fun containsKey!4506 (List!55342 K!16959) Bool)

(declare-fun head!10364 (List!55343) tuple2!58620)

(assert (=> b!4835946 (= res!2060540 (containsKey!4506 (_2!32604 (head!10364 (toList!7644 lm!2671))) key!6540))))

(declare-fun b!4835947 () Bool)

(assert (=> b!4835947 (= e!3022202 false)))

(declare-fun b!4835948 () Bool)

(declare-fun res!2060538 () Bool)

(assert (=> b!4835948 (=> (not res!2060538) (not e!3022204))))

(assert (=> b!4835948 (= res!2060538 (containsKey!4506 (_2!32604 (h!61654 (toList!7644 lm!2671))) key!6540))))

(declare-fun res!2060539 () Bool)

(assert (=> start!502796 (=> (not res!2060539) (not e!3022204))))

(assert (=> start!502796 (= res!2060539 (forall!12756 (toList!7644 lm!2671) lambda!239437))))

(assert (=> start!502796 e!3022204))

(declare-fun inv!70859 (ListLongMap!6175) Bool)

(assert (=> start!502796 (and (inv!70859 lm!2671) e!3022203)))

(assert (=> start!502796 true))

(declare-fun tp_is_empty!34811 () Bool)

(assert (=> start!502796 tp_is_empty!34811))

(declare-fun b!4835949 () Bool)

(declare-fun res!2060537 () Bool)

(assert (=> b!4835949 (=> (not res!2060537) (not e!3022204))))

(declare-datatypes ((Hashable!7356 0))(
  ( (HashableExt!7355 (__x!33631 Int)) )
))
(declare-fun hashF!1662 () Hashable!7356)

(declare-fun allKeysSameHashInMap!2672 (ListLongMap!6175 Hashable!7356) Bool)

(assert (=> b!4835949 (= res!2060537 (allKeysSameHashInMap!2672 lm!2671 hashF!1662))))

(declare-fun b!4835950 () Bool)

(declare-fun res!2060535 () Bool)

(assert (=> b!4835950 (=> (not res!2060535) (not e!3022204))))

(get-info :version)

(assert (=> b!4835950 (= res!2060535 ((_ is Cons!55219) (toList!7644 lm!2671)))))

(assert (= (and start!502796 res!2060539) b!4835949))

(assert (= (and b!4835949 res!2060537) b!4835943))

(assert (= (and b!4835943 res!2060536) b!4835950))

(assert (= (and b!4835950 res!2060535) b!4835948))

(assert (= (and b!4835948 res!2060538) b!4835944))

(assert (= (and b!4835944 res!2060534) b!4835946))

(assert (= (and b!4835946 res!2060540) b!4835947))

(assert (= start!502796 b!4835945))

(declare-fun m!5831198 () Bool)

(assert (=> b!4835943 m!5831198))

(declare-fun m!5831200 () Bool)

(assert (=> b!4835948 m!5831200))

(declare-fun m!5831202 () Bool)

(assert (=> b!4835946 m!5831202))

(declare-fun m!5831204 () Bool)

(assert (=> b!4835946 m!5831204))

(declare-fun m!5831206 () Bool)

(assert (=> b!4835944 m!5831206))

(declare-fun m!5831208 () Bool)

(assert (=> b!4835944 m!5831208))

(assert (=> start!502796 m!5831206))

(declare-fun m!5831210 () Bool)

(assert (=> start!502796 m!5831210))

(declare-fun m!5831212 () Bool)

(assert (=> b!4835949 m!5831212))

(check-sat tp_is_empty!34811 (not b!4835944) (not start!502796) (not b!4835946) (not b!4835948) (not b!4835949) (not b!4835945) (not b!4835943))
(check-sat)
