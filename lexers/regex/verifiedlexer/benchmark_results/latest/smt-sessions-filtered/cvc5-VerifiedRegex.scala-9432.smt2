; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498920 () Bool)

(assert start!498920)

(declare-fun b!4818162 () Bool)

(declare-fun res!2049848 () Bool)

(declare-fun e!3010371 () Bool)

(assert (=> b!4818162 (=> (not res!2049848) (not e!3010371))))

(declare-datatypes ((K!16447 0))(
  ( (K!16448 (val!21463 Int)) )
))
(declare-datatypes ((V!16693 0))(
  ( (V!16694 (val!21464 Int)) )
))
(declare-datatypes ((tuple2!57862 0))(
  ( (tuple2!57863 (_1!32225 K!16447) (_2!32225 V!16693)) )
))
(declare-datatypes ((List!54913 0))(
  ( (Nil!54789) (Cons!54789 (h!61223 tuple2!57862) (t!362409 List!54913)) )
))
(declare-datatypes ((tuple2!57864 0))(
  ( (tuple2!57865 (_1!32226 (_ BitVec 64)) (_2!32226 List!54913)) )
))
(declare-datatypes ((List!54914 0))(
  ( (Nil!54790) (Cons!54790 (h!61224 tuple2!57864) (t!362410 List!54914)) )
))
(declare-datatypes ((ListLongMap!5829 0))(
  ( (ListLongMap!5830 (toList!7349 List!54914)) )
))
(declare-fun lm!2315 () ListLongMap!5829)

(declare-fun key!5553 () K!16447)

(declare-datatypes ((ListMap!6763 0))(
  ( (ListMap!6764 (toList!7350 List!54913)) )
))
(declare-fun contains!18623 (ListMap!6763 K!16447) Bool)

(declare-fun extractMap!2633 (List!54914) ListMap!6763)

(assert (=> b!4818162 (= res!2049848 (contains!18623 (extractMap!2633 (toList!7349 lm!2315)) key!5553))))

(declare-fun b!4818163 () Bool)

(declare-fun res!2049852 () Bool)

(assert (=> b!4818163 (=> (not res!2049852) (not e!3010371))))

(declare-fun lambda!234973 () Int)

(declare-fun forall!12497 (List!54914 Int) Bool)

(assert (=> b!4818163 (= res!2049852 (forall!12497 (toList!7349 lm!2315) lambda!234973))))

(declare-fun b!4818164 () Bool)

(declare-fun res!2049849 () Bool)

(assert (=> b!4818164 (=> (not res!2049849) (not e!3010371))))

(declare-datatypes ((Hashable!7183 0))(
  ( (HashableExt!7182 (__x!33458 Int)) )
))
(declare-fun hashF!1533 () Hashable!7183)

(declare-fun contains!18624 (ListLongMap!5829 (_ BitVec 64)) Bool)

(declare-fun hash!5259 (Hashable!7183 K!16447) (_ BitVec 64))

(assert (=> b!4818164 (= res!2049849 (not (contains!18624 lm!2315 (hash!5259 hashF!1533 key!5553))))))

(declare-fun b!4818165 () Bool)

(declare-fun res!2049851 () Bool)

(assert (=> b!4818165 (=> (not res!2049851) (not e!3010371))))

(declare-fun allKeysSameHashInMap!2499 (ListLongMap!5829 Hashable!7183) Bool)

(assert (=> b!4818165 (= res!2049851 (allKeysSameHashInMap!2499 lm!2315 hashF!1533))))

(declare-fun b!4818166 () Bool)

(declare-fun e!3010370 () Bool)

(declare-fun tp!1362018 () Bool)

(assert (=> b!4818166 (= e!3010370 tp!1362018)))

(declare-fun res!2049850 () Bool)

(assert (=> start!498920 (=> (not res!2049850) (not e!3010371))))

(assert (=> start!498920 (= res!2049850 (forall!12497 (toList!7349 lm!2315) lambda!234973))))

(assert (=> start!498920 e!3010371))

(declare-fun inv!70348 (ListLongMap!5829) Bool)

(assert (=> start!498920 (and (inv!70348 lm!2315) e!3010370)))

(assert (=> start!498920 true))

(declare-fun tp_is_empty!34247 () Bool)

(assert (=> start!498920 tp_is_empty!34247))

(declare-fun b!4818167 () Bool)

(assert (=> b!4818167 (= e!3010371 (not (forall!12497 (toList!7349 lm!2315) lambda!234973)))))

(assert (= (and start!498920 res!2049850) b!4818165))

(assert (= (and b!4818165 res!2049851) b!4818162))

(assert (= (and b!4818162 res!2049848) b!4818164))

(assert (= (and b!4818164 res!2049849) b!4818163))

(assert (= (and b!4818163 res!2049852) b!4818167))

(assert (= start!498920 b!4818166))

(declare-fun m!5805124 () Bool)

(assert (=> b!4818165 m!5805124))

(declare-fun m!5805126 () Bool)

(assert (=> b!4818164 m!5805126))

(assert (=> b!4818164 m!5805126))

(declare-fun m!5805128 () Bool)

(assert (=> b!4818164 m!5805128))

(declare-fun m!5805130 () Bool)

(assert (=> start!498920 m!5805130))

(declare-fun m!5805132 () Bool)

(assert (=> start!498920 m!5805132))

(assert (=> b!4818163 m!5805130))

(declare-fun m!5805134 () Bool)

(assert (=> b!4818162 m!5805134))

(assert (=> b!4818162 m!5805134))

(declare-fun m!5805136 () Bool)

(assert (=> b!4818162 m!5805136))

(assert (=> b!4818167 m!5805130))

(push 1)

(assert (not b!4818167))

(assert (not start!498920))

(assert tp_is_empty!34247)

(assert (not b!4818162))

(assert (not b!4818164))

(assert (not b!4818163))

(assert (not b!4818166))

(assert (not b!4818165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

