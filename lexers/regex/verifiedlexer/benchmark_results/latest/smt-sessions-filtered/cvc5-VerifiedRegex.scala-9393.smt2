; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497750 () Bool)

(assert start!497750)

(declare-fun b!4813529 () Bool)

(declare-fun e!3007378 () Bool)

(assert (=> b!4813529 (= e!3007378 true)))

(declare-fun b!4813531 () Bool)

(declare-fun res!2047324 () Bool)

(declare-fun e!3007377 () Bool)

(assert (=> b!4813531 (=> (not res!2047324) (not e!3007377))))

(declare-datatypes ((K!16252 0))(
  ( (K!16253 (val!21307 Int)) )
))
(declare-datatypes ((V!16498 0))(
  ( (V!16499 (val!21308 Int)) )
))
(declare-datatypes ((tuple2!57550 0))(
  ( (tuple2!57551 (_1!32069 K!16252) (_2!32069 V!16498)) )
))
(declare-datatypes ((List!54742 0))(
  ( (Nil!54618) (Cons!54618 (h!61050 tuple2!57550) (t!362238 List!54742)) )
))
(declare-datatypes ((tuple2!57552 0))(
  ( (tuple2!57553 (_1!32070 (_ BitVec 64)) (_2!32070 List!54742)) )
))
(declare-datatypes ((List!54743 0))(
  ( (Nil!54619) (Cons!54619 (h!61051 tuple2!57552) (t!362239 List!54743)) )
))
(declare-datatypes ((ListLongMap!5673 0))(
  ( (ListLongMap!5674 (toList!7193 List!54743)) )
))
(declare-fun lm!1254 () ListLongMap!5673)

(declare-fun key!2670 () K!16252)

(declare-datatypes ((ListMap!6607 0))(
  ( (ListMap!6608 (toList!7194 List!54742)) )
))
(declare-fun contains!18369 (ListMap!6607 K!16252) Bool)

(declare-fun extractMap!2555 (List!54743) ListMap!6607)

(assert (=> b!4813531 (= res!2047324 (contains!18369 (extractMap!2555 (toList!7193 lm!1254)) key!2670))))

(declare-fun res!2047321 () Bool)

(assert (=> start!497750 (=> (not res!2047321) (not e!3007377))))

(declare-fun lambda!233944 () Int)

(declare-fun forall!12409 (List!54743 Int) Bool)

(assert (=> start!497750 (= res!2047321 (forall!12409 (toList!7193 lm!1254) lambda!233944))))

(assert (=> start!497750 e!3007377))

(declare-fun e!3007379 () Bool)

(declare-fun inv!70153 (ListLongMap!5673) Bool)

(assert (=> start!497750 (and (inv!70153 lm!1254) e!3007379)))

(assert (=> start!497750 true))

(declare-fun tp_is_empty!34079 () Bool)

(assert (=> start!497750 tp_is_empty!34079))

(declare-fun b!4813530 () Bool)

(declare-fun res!2047322 () Bool)

(assert (=> b!4813530 (=> (not res!2047322) (not e!3007377))))

(declare-datatypes ((Hashable!7105 0))(
  ( (HashableExt!7104 (__x!33380 Int)) )
))
(declare-fun hashF!938 () Hashable!7105)

(declare-fun allKeysSameHashInMap!2421 (ListLongMap!5673 Hashable!7105) Bool)

(assert (=> b!4813530 (= res!2047322 (allKeysSameHashInMap!2421 lm!1254 hashF!938))))

(declare-fun b!4813532 () Bool)

(assert (=> b!4813532 (= e!3007377 (not e!3007378))))

(declare-fun res!2047323 () Bool)

(assert (=> b!4813532 (=> res!2047323 e!3007378)))

(declare-fun lt!1964486 () (_ BitVec 64))

(declare-fun contains!18370 (List!54743 tuple2!57552) Bool)

(declare-fun apply!13210 (ListLongMap!5673 (_ BitVec 64)) List!54742)

(assert (=> b!4813532 (= res!2047323 (contains!18370 (toList!7193 lm!1254) (tuple2!57553 lt!1964486 (apply!13210 lm!1254 lt!1964486))))))

(declare-fun contains!18371 (ListLongMap!5673 (_ BitVec 64)) Bool)

(assert (=> b!4813532 (contains!18371 lm!1254 lt!1964486)))

(declare-fun hash!5168 (Hashable!7105 K!16252) (_ BitVec 64))

(assert (=> b!4813532 (= lt!1964486 (hash!5168 hashF!938 key!2670))))

(declare-datatypes ((Unit!141717 0))(
  ( (Unit!141718) )
))
(declare-fun lt!1964487 () Unit!141717)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1043 (ListLongMap!5673 K!16252 Hashable!7105) Unit!141717)

(assert (=> b!4813532 (= lt!1964487 (lemmaInGenMapThenLongMapContainsHash!1043 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813533 () Bool)

(declare-fun tp!1361614 () Bool)

(assert (=> b!4813533 (= e!3007379 tp!1361614)))

(assert (= (and start!497750 res!2047321) b!4813530))

(assert (= (and b!4813530 res!2047322) b!4813531))

(assert (= (and b!4813531 res!2047324) b!4813532))

(assert (= (and b!4813532 (not res!2047323)) b!4813529))

(assert (= start!497750 b!4813533))

(declare-fun m!5799106 () Bool)

(assert (=> b!4813531 m!5799106))

(assert (=> b!4813531 m!5799106))

(declare-fun m!5799108 () Bool)

(assert (=> b!4813531 m!5799108))

(declare-fun m!5799110 () Bool)

(assert (=> start!497750 m!5799110))

(declare-fun m!5799112 () Bool)

(assert (=> start!497750 m!5799112))

(declare-fun m!5799114 () Bool)

(assert (=> b!4813530 m!5799114))

(declare-fun m!5799116 () Bool)

(assert (=> b!4813532 m!5799116))

(declare-fun m!5799118 () Bool)

(assert (=> b!4813532 m!5799118))

(declare-fun m!5799120 () Bool)

(assert (=> b!4813532 m!5799120))

(declare-fun m!5799122 () Bool)

(assert (=> b!4813532 m!5799122))

(declare-fun m!5799124 () Bool)

(assert (=> b!4813532 m!5799124))

(push 1)

(assert (not b!4813533))

(assert (not b!4813532))

(assert (not b!4813530))

(assert (not start!497750))

(assert tp_is_empty!34079)

(assert (not b!4813531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

