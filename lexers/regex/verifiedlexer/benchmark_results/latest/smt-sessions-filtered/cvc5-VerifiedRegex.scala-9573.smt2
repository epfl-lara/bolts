; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503896 () Bool)

(assert start!503896)

(declare-fun b!4841173 () Bool)

(declare-fun e!3025524 () Bool)

(declare-fun tp!1363927 () Bool)

(assert (=> b!4841173 (= e!3025524 tp!1363927)))

(declare-fun b!4841174 () Bool)

(declare-fun res!2064050 () Bool)

(declare-fun e!3025523 () Bool)

(assert (=> b!4841174 (=> (not res!2064050) (not e!3025523))))

(declare-datatypes ((K!17152 0))(
  ( (K!17153 (val!22027 Int)) )
))
(declare-datatypes ((V!17398 0))(
  ( (V!17399 (val!22028 Int)) )
))
(declare-datatypes ((tuple2!58926 0))(
  ( (tuple2!58927 (_1!32757 K!17152) (_2!32757 V!17398)) )
))
(declare-datatypes ((List!55513 0))(
  ( (Nil!55389) (Cons!55389 (h!61824 tuple2!58926) (t!363009 List!55513)) )
))
(declare-datatypes ((tuple2!58928 0))(
  ( (tuple2!58929 (_1!32758 (_ BitVec 64)) (_2!32758 List!55513)) )
))
(declare-datatypes ((List!55514 0))(
  ( (Nil!55390) (Cons!55390 (h!61825 tuple2!58928) (t!363010 List!55514)) )
))
(declare-datatypes ((ListLongMap!6329 0))(
  ( (ListLongMap!6330 (toList!7773 List!55514)) )
))
(declare-fun lm!2671 () ListLongMap!6329)

(assert (=> b!4841174 (= res!2064050 (is-Cons!55390 (toList!7773 lm!2671)))))

(declare-fun b!4841175 () Bool)

(declare-fun res!2064045 () Bool)

(assert (=> b!4841175 (=> (not res!2064045) (not e!3025523))))

(declare-fun e!3025522 () Bool)

(assert (=> b!4841175 (= res!2064045 e!3025522)))

(declare-fun res!2064046 () Bool)

(assert (=> b!4841175 (=> res!2064046 e!3025522)))

(assert (=> b!4841175 (= res!2064046 (not (is-Cons!55390 (toList!7773 lm!2671))))))

(declare-fun res!2064048 () Bool)

(assert (=> start!503896 (=> (not res!2064048) (not e!3025523))))

(declare-fun lambda!241195 () Int)

(declare-fun forall!12859 (List!55514 Int) Bool)

(assert (=> start!503896 (= res!2064048 (forall!12859 (toList!7773 lm!2671) lambda!241195))))

(assert (=> start!503896 e!3025523))

(declare-fun inv!71053 (ListLongMap!6329) Bool)

(assert (=> start!503896 (and (inv!71053 lm!2671) e!3025524)))

(assert (=> start!503896 true))

(declare-fun tp_is_empty!34969 () Bool)

(assert (=> start!503896 tp_is_empty!34969))

(declare-fun b!4841176 () Bool)

(declare-fun key!6540 () K!17152)

(declare-fun containsKey!4600 (List!55513 K!17152) Bool)

(assert (=> b!4841176 (= e!3025522 (not (containsKey!4600 (_2!32758 (h!61825 (toList!7773 lm!2671))) key!6540)))))

(declare-fun b!4841177 () Bool)

(declare-fun res!2064049 () Bool)

(assert (=> b!4841177 (=> (not res!2064049) (not e!3025523))))

(declare-datatypes ((Hashable!7433 0))(
  ( (HashableExt!7432 (__x!33708 Int)) )
))
(declare-fun hashF!1662 () Hashable!7433)

(declare-fun allKeysSameHashInMap!2749 (ListLongMap!6329 Hashable!7433) Bool)

(assert (=> b!4841177 (= res!2064049 (allKeysSameHashInMap!2749 lm!2671 hashF!1662))))

(declare-fun b!4841178 () Bool)

(assert (=> b!4841178 (= e!3025523 false)))

(declare-fun b!4841179 () Bool)

(declare-fun res!2064047 () Bool)

(assert (=> b!4841179 (=> (not res!2064047) (not e!3025523))))

(declare-datatypes ((ListMap!7111 0))(
  ( (ListMap!7112 (toList!7774 List!55513)) )
))
(declare-fun extractMap!2775 (List!55514) ListMap!7111)

(declare-fun addToMapMapFromBucket!1915 (List!55513 ListMap!7111) ListMap!7111)

(assert (=> b!4841179 (= res!2064047 (= (extractMap!2775 (toList!7773 lm!2671)) (addToMapMapFromBucket!1915 (_2!32758 (h!61825 (toList!7773 lm!2671))) (extractMap!2775 (t!363010 (toList!7773 lm!2671))))))))

(declare-fun b!4841180 () Bool)

(declare-fun res!2064051 () Bool)

(assert (=> b!4841180 (=> (not res!2064051) (not e!3025523))))

(declare-fun containsKeyBiggerList!717 (List!55514 K!17152) Bool)

(assert (=> b!4841180 (= res!2064051 (containsKeyBiggerList!717 (toList!7773 lm!2671) key!6540))))

(assert (= (and start!503896 res!2064048) b!4841177))

(assert (= (and b!4841177 res!2064049) b!4841180))

(assert (= (and b!4841180 res!2064051) b!4841175))

(assert (= (and b!4841175 (not res!2064046)) b!4841176))

(assert (= (and b!4841175 res!2064045) b!4841174))

(assert (= (and b!4841174 res!2064050) b!4841179))

(assert (= (and b!4841179 res!2064047) b!4841178))

(assert (= start!503896 b!4841173))

(declare-fun m!5836852 () Bool)

(assert (=> b!4841176 m!5836852))

(declare-fun m!5836854 () Bool)

(assert (=> b!4841179 m!5836854))

(declare-fun m!5836856 () Bool)

(assert (=> b!4841179 m!5836856))

(assert (=> b!4841179 m!5836856))

(declare-fun m!5836858 () Bool)

(assert (=> b!4841179 m!5836858))

(declare-fun m!5836860 () Bool)

(assert (=> start!503896 m!5836860))

(declare-fun m!5836862 () Bool)

(assert (=> start!503896 m!5836862))

(declare-fun m!5836864 () Bool)

(assert (=> b!4841180 m!5836864))

(declare-fun m!5836866 () Bool)

(assert (=> b!4841177 m!5836866))

(push 1)

(assert (not start!503896))

(assert (not b!4841176))

(assert tp_is_empty!34969)

(assert (not b!4841173))

(assert (not b!4841179))

(assert (not b!4841180))

(assert (not b!4841177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

