; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501166 () Bool)

(assert start!501166)

(declare-fun b!4827924 () Bool)

(declare-fun res!2055849 () Bool)

(declare-fun e!3016762 () Bool)

(assert (=> b!4827924 (=> (not res!2055849) (not e!3016762))))

(declare-datatypes ((V!16948 0))(
  ( (V!16949 (val!21667 Int)) )
))
(declare-datatypes ((K!16702 0))(
  ( (K!16703 (val!21668 Int)) )
))
(declare-datatypes ((tuple2!58270 0))(
  ( (tuple2!58271 (_1!32429 K!16702) (_2!32429 V!16948)) )
))
(declare-datatypes ((List!55140 0))(
  ( (Nil!55016) (Cons!55016 (h!61450 tuple2!58270) (t!362636 List!55140)) )
))
(declare-datatypes ((tuple2!58272 0))(
  ( (tuple2!58273 (_1!32430 (_ BitVec 64)) (_2!32430 List!55140)) )
))
(declare-datatypes ((List!55141 0))(
  ( (Nil!55017) (Cons!55017 (h!61451 tuple2!58272) (t!362637 List!55141)) )
))
(declare-datatypes ((ListLongMap!6033 0))(
  ( (ListLongMap!6034 (toList!7515 List!55141)) )
))
(declare-fun lm!2325 () ListLongMap!6033)

(declare-datatypes ((Hashable!7285 0))(
  ( (HashableExt!7284 (__x!33560 Int)) )
))
(declare-fun hashF!1543 () Hashable!7285)

(declare-fun key!5594 () K!16702)

(declare-fun contains!18824 (ListLongMap!6033 (_ BitVec 64)) Bool)

(declare-fun hash!5434 (Hashable!7285 K!16702) (_ BitVec 64))

(assert (=> b!4827924 (= res!2055849 (not (contains!18824 lm!2325 (hash!5434 hashF!1543 key!5594))))))

(declare-fun b!4827925 () Bool)

(declare-fun e!3016763 () Bool)

(declare-fun tp!1362721 () Bool)

(assert (=> b!4827925 (= e!3016763 tp!1362721)))

(declare-fun b!4827926 () Bool)

(declare-fun res!2055846 () Bool)

(assert (=> b!4827926 (=> (not res!2055846) (not e!3016762))))

(assert (=> b!4827926 (= res!2055846 (not (is-Cons!55017 (toList!7515 lm!2325))))))

(declare-fun b!4827927 () Bool)

(declare-fun res!2055847 () Bool)

(assert (=> b!4827927 (=> (not res!2055847) (not e!3016762))))

(declare-fun allKeysSameHashInMap!2601 (ListLongMap!6033 Hashable!7285) Bool)

(assert (=> b!4827927 (= res!2055847 (allKeysSameHashInMap!2601 lm!2325 hashF!1543))))

(declare-fun res!2055848 () Bool)

(assert (=> start!501166 (=> (not res!2055848) (not e!3016762))))

(declare-fun lambda!237249 () Int)

(declare-fun forall!12639 (List!55141 Int) Bool)

(assert (=> start!501166 (= res!2055848 (forall!12639 (toList!7515 lm!2325) lambda!237249))))

(assert (=> start!501166 e!3016762))

(declare-fun inv!70603 (ListLongMap!6033) Bool)

(assert (=> start!501166 (and (inv!70603 lm!2325) e!3016763)))

(assert (=> start!501166 true))

(declare-fun tp_is_empty!34509 () Bool)

(assert (=> start!501166 tp_is_empty!34509))

(declare-fun b!4827928 () Bool)

(assert (=> b!4827928 (= e!3016762 (not (forall!12639 (toList!7515 lm!2325) lambda!237249)))))

(assert (= (and start!501166 res!2055848) b!4827927))

(assert (= (and b!4827927 res!2055847) b!4827924))

(assert (= (and b!4827924 res!2055849) b!4827926))

(assert (= (and b!4827926 res!2055846) b!4827928))

(assert (= start!501166 b!4827925))

(declare-fun m!5819518 () Bool)

(assert (=> b!4827924 m!5819518))

(assert (=> b!4827924 m!5819518))

(declare-fun m!5819520 () Bool)

(assert (=> b!4827924 m!5819520))

(declare-fun m!5819522 () Bool)

(assert (=> b!4827927 m!5819522))

(declare-fun m!5819524 () Bool)

(assert (=> start!501166 m!5819524))

(declare-fun m!5819526 () Bool)

(assert (=> start!501166 m!5819526))

(assert (=> b!4827928 m!5819524))

(push 1)

(assert (not b!4827928))

(assert tp_is_empty!34509)

(assert (not start!501166))

(assert (not b!4827925))

(assert (not b!4827927))

(assert (not b!4827924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

