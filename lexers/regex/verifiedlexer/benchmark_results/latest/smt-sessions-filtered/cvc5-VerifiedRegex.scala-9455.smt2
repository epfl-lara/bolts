; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499312 () Bool)

(assert start!499312)

(declare-fun b!4820035 () Bool)

(declare-fun e!3011474 () Bool)

(declare-fun e!3011472 () Bool)

(assert (=> b!4820035 (= e!3011474 e!3011472)))

(declare-fun res!2051148 () Bool)

(assert (=> b!4820035 (=> (not res!2051148) (not e!3011472))))

(declare-datatypes ((V!16808 0))(
  ( (V!16809 (val!21555 Int)) )
))
(declare-datatypes ((K!16562 0))(
  ( (K!16563 (val!21556 Int)) )
))
(declare-datatypes ((tuple2!58046 0))(
  ( (tuple2!58047 (_1!32317 K!16562) (_2!32317 V!16808)) )
))
(declare-datatypes ((List!55008 0))(
  ( (Nil!54884) (Cons!54884 (h!61318 tuple2!58046) (t!362504 List!55008)) )
))
(declare-datatypes ((tuple2!58048 0))(
  ( (tuple2!58049 (_1!32318 (_ BitVec 64)) (_2!32318 List!55008)) )
))
(declare-datatypes ((List!55009 0))(
  ( (Nil!54885) (Cons!54885 (h!61319 tuple2!58048) (t!362505 List!55009)) )
))
(declare-datatypes ((ListLongMap!5921 0))(
  ( (ListLongMap!5922 (toList!7425 List!55009)) )
))
(declare-fun lm!2280 () ListLongMap!5921)

(declare-fun lt!1969206 () (_ BitVec 64))

(declare-fun contains!18702 (ListLongMap!5921 (_ BitVec 64)) Bool)

(assert (=> b!4820035 (= res!2051148 (contains!18702 lm!2280 lt!1969206))))

(declare-datatypes ((Hashable!7229 0))(
  ( (HashableExt!7228 (__x!33504 Int)) )
))
(declare-fun hashF!1509 () Hashable!7229)

(declare-fun key!5428 () K!16562)

(declare-fun hash!5318 (Hashable!7229 K!16562) (_ BitVec 64))

(assert (=> b!4820035 (= lt!1969206 (hash!5318 hashF!1509 key!5428))))

(declare-fun res!2051150 () Bool)

(assert (=> start!499312 (=> (not res!2051150) (not e!3011474))))

(declare-fun lambda!235383 () Int)

(declare-fun forall!12547 (List!55009 Int) Bool)

(assert (=> start!499312 (= res!2051150 (forall!12547 (toList!7425 lm!2280) lambda!235383))))

(assert (=> start!499312 e!3011474))

(declare-fun e!3011473 () Bool)

(declare-fun inv!70463 (ListLongMap!5921) Bool)

(assert (=> start!499312 (and (inv!70463 lm!2280) e!3011473)))

(assert (=> start!499312 true))

(declare-fun tp_is_empty!34347 () Bool)

(assert (=> start!499312 tp_is_empty!34347))

(declare-fun b!4820036 () Bool)

(assert (=> b!4820036 (= e!3011472 false)))

(declare-fun lt!1969205 () Bool)

(declare-fun containsKey!4297 (List!55008 K!16562) Bool)

(declare-fun apply!13316 (ListLongMap!5921 (_ BitVec 64)) List!55008)

(assert (=> b!4820036 (= lt!1969205 (containsKey!4297 (apply!13316 lm!2280 lt!1969206) key!5428))))

(declare-fun b!4820034 () Bool)

(declare-fun res!2051149 () Bool)

(assert (=> b!4820034 (=> (not res!2051149) (not e!3011474))))

(declare-fun allKeysSameHashInMap!2545 (ListLongMap!5921 Hashable!7229) Bool)

(assert (=> b!4820034 (= res!2051149 (allKeysSameHashInMap!2545 lm!2280 hashF!1509))))

(declare-fun b!4820037 () Bool)

(declare-fun tp!1362224 () Bool)

(assert (=> b!4820037 (= e!3011473 tp!1362224)))

(assert (= (and start!499312 res!2051150) b!4820034))

(assert (= (and b!4820034 res!2051149) b!4820035))

(assert (= (and b!4820035 res!2051148) b!4820036))

(assert (= start!499312 b!4820037))

(declare-fun m!5807448 () Bool)

(assert (=> b!4820035 m!5807448))

(declare-fun m!5807450 () Bool)

(assert (=> b!4820035 m!5807450))

(declare-fun m!5807452 () Bool)

(assert (=> start!499312 m!5807452))

(declare-fun m!5807454 () Bool)

(assert (=> start!499312 m!5807454))

(declare-fun m!5807456 () Bool)

(assert (=> b!4820036 m!5807456))

(assert (=> b!4820036 m!5807456))

(declare-fun m!5807458 () Bool)

(assert (=> b!4820036 m!5807458))

(declare-fun m!5807460 () Bool)

(assert (=> b!4820034 m!5807460))

(push 1)

(assert (not b!4820037))

(assert (not start!499312))

(assert tp_is_empty!34347)

(assert (not b!4820035))

(assert (not b!4820036))

(assert (not b!4820034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

