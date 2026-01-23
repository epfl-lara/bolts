; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498932 () Bool)

(assert start!498932)

(declare-fun b!4818256 () Bool)

(declare-fun res!2049925 () Bool)

(declare-fun e!3010407 () Bool)

(assert (=> b!4818256 (=> (not res!2049925) (not e!3010407))))

(declare-datatypes ((K!16462 0))(
  ( (K!16463 (val!21475 Int)) )
))
(declare-datatypes ((V!16708 0))(
  ( (V!16709 (val!21476 Int)) )
))
(declare-datatypes ((tuple2!57886 0))(
  ( (tuple2!57887 (_1!32237 K!16462) (_2!32237 V!16708)) )
))
(declare-datatypes ((List!54925 0))(
  ( (Nil!54801) (Cons!54801 (h!61235 tuple2!57886) (t!362421 List!54925)) )
))
(declare-datatypes ((tuple2!57888 0))(
  ( (tuple2!57889 (_1!32238 (_ BitVec 64)) (_2!32238 List!54925)) )
))
(declare-datatypes ((List!54926 0))(
  ( (Nil!54802) (Cons!54802 (h!61236 tuple2!57888) (t!362422 List!54926)) )
))
(declare-datatypes ((ListLongMap!5841 0))(
  ( (ListLongMap!5842 (toList!7361 List!54926)) )
))
(declare-fun lm!2315 () ListLongMap!5841)

(declare-datatypes ((Hashable!7189 0))(
  ( (HashableExt!7188 (__x!33464 Int)) )
))
(declare-fun hashF!1533 () Hashable!7189)

(declare-fun allKeysSameHashInMap!2505 (ListLongMap!5841 Hashable!7189) Bool)

(assert (=> b!4818256 (= res!2049925 (allKeysSameHashInMap!2505 lm!2315 hashF!1533))))

(declare-fun b!4818257 () Bool)

(declare-fun res!2049924 () Bool)

(assert (=> b!4818257 (=> (not res!2049924) (not e!3010407))))

(declare-fun key!5553 () K!16462)

(declare-datatypes ((ListMap!6775 0))(
  ( (ListMap!6776 (toList!7362 List!54925)) )
))
(declare-fun contains!18635 (ListMap!6775 K!16462) Bool)

(declare-fun extractMap!2639 (List!54926) ListMap!6775)

(assert (=> b!4818257 (= res!2049924 (contains!18635 (extractMap!2639 (toList!7361 lm!2315)) key!5553))))

(declare-fun res!2049927 () Bool)

(assert (=> start!498932 (=> (not res!2049927) (not e!3010407))))

(declare-fun lambda!235001 () Int)

(declare-fun forall!12503 (List!54926 Int) Bool)

(assert (=> start!498932 (= res!2049927 (forall!12503 (toList!7361 lm!2315) lambda!235001))))

(assert (=> start!498932 e!3010407))

(declare-fun e!3010406 () Bool)

(declare-fun inv!70363 (ListLongMap!5841) Bool)

(assert (=> start!498932 (and (inv!70363 lm!2315) e!3010406)))

(assert (=> start!498932 true))

(declare-fun tp_is_empty!34259 () Bool)

(assert (=> start!498932 tp_is_empty!34259))

(declare-fun b!4818258 () Bool)

(assert (=> b!4818258 (= e!3010407 (not (forall!12503 (toList!7361 lm!2315) lambda!235001)))))

(declare-fun b!4818259 () Bool)

(declare-fun tp!1362036 () Bool)

(assert (=> b!4818259 (= e!3010406 tp!1362036)))

(declare-fun b!4818260 () Bool)

(declare-fun res!2049926 () Bool)

(assert (=> b!4818260 (=> (not res!2049926) (not e!3010407))))

(declare-fun contains!18636 (ListLongMap!5841 (_ BitVec 64)) Bool)

(declare-fun hash!5265 (Hashable!7189 K!16462) (_ BitVec 64))

(assert (=> b!4818260 (= res!2049926 (not (contains!18636 lm!2315 (hash!5265 hashF!1533 key!5553))))))

(assert (= (and start!498932 res!2049927) b!4818256))

(assert (= (and b!4818256 res!2049925) b!4818257))

(assert (= (and b!4818257 res!2049924) b!4818260))

(assert (= (and b!4818260 res!2049926) b!4818258))

(assert (= start!498932 b!4818259))

(declare-fun m!5805212 () Bool)

(assert (=> start!498932 m!5805212))

(declare-fun m!5805214 () Bool)

(assert (=> start!498932 m!5805214))

(declare-fun m!5805216 () Bool)

(assert (=> b!4818260 m!5805216))

(assert (=> b!4818260 m!5805216))

(declare-fun m!5805218 () Bool)

(assert (=> b!4818260 m!5805218))

(assert (=> b!4818258 m!5805212))

(declare-fun m!5805220 () Bool)

(assert (=> b!4818256 m!5805220))

(declare-fun m!5805222 () Bool)

(assert (=> b!4818257 m!5805222))

(assert (=> b!4818257 m!5805222))

(declare-fun m!5805224 () Bool)

(assert (=> b!4818257 m!5805224))

(push 1)

(assert (not b!4818256))

(assert tp_is_empty!34259)

(assert (not b!4818257))

(assert (not start!498932))

(assert (not b!4818258))

(assert (not b!4818260))

(assert (not b!4818259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

