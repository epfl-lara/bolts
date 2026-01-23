; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502786 () Bool)

(assert start!502786)

(declare-fun res!2060440 () Bool)

(declare-fun e!3022161 () Bool)

(assert (=> start!502786 (=> (not res!2060440) (not e!3022161))))

(declare-datatypes ((K!16947 0))(
  ( (K!16948 (val!21863 Int)) )
))
(declare-datatypes ((V!17193 0))(
  ( (V!17194 (val!21864 Int)) )
))
(declare-datatypes ((tuple2!58598 0))(
  ( (tuple2!58599 (_1!32593 K!16947) (_2!32593 V!17193)) )
))
(declare-datatypes ((List!55332 0))(
  ( (Nil!55208) (Cons!55208 (h!61643 tuple2!58598) (t!362828 List!55332)) )
))
(declare-datatypes ((tuple2!58600 0))(
  ( (tuple2!58601 (_1!32594 (_ BitVec 64)) (_2!32594 List!55332)) )
))
(declare-datatypes ((List!55333 0))(
  ( (Nil!55209) (Cons!55209 (h!61644 tuple2!58600) (t!362829 List!55333)) )
))
(declare-datatypes ((ListLongMap!6165 0))(
  ( (ListLongMap!6166 (toList!7639 List!55333)) )
))
(declare-fun lm!2671 () ListLongMap!6165)

(declare-fun lambda!239408 () Int)

(declare-fun forall!12751 (List!55333 Int) Bool)

(assert (=> start!502786 (= res!2060440 (forall!12751 (toList!7639 lm!2671) lambda!239408))))

(assert (=> start!502786 e!3022161))

(declare-fun e!3022162 () Bool)

(declare-fun inv!70848 (ListLongMap!6165) Bool)

(assert (=> start!502786 (and (inv!70848 lm!2671) e!3022162)))

(assert (=> start!502786 true))

(declare-fun tp_is_empty!34801 () Bool)

(assert (=> start!502786 tp_is_empty!34801))

(declare-fun b!4835831 () Bool)

(declare-fun res!2060439 () Bool)

(assert (=> b!4835831 (=> (not res!2060439) (not e!3022161))))

(assert (=> b!4835831 (= res!2060439 (is-Cons!55209 (toList!7639 lm!2671)))))

(declare-fun b!4835832 () Bool)

(declare-fun res!2060441 () Bool)

(assert (=> b!4835832 (=> (not res!2060441) (not e!3022161))))

(declare-datatypes ((Hashable!7351 0))(
  ( (HashableExt!7350 (__x!33626 Int)) )
))
(declare-fun hashF!1662 () Hashable!7351)

(declare-fun allKeysSameHashInMap!2667 (ListLongMap!6165 Hashable!7351) Bool)

(assert (=> b!4835832 (= res!2060441 (allKeysSameHashInMap!2667 lm!2671 hashF!1662))))

(declare-fun b!4835833 () Bool)

(declare-fun res!2060437 () Bool)

(assert (=> b!4835833 (=> (not res!2060437) (not e!3022161))))

(declare-fun key!6540 () K!16947)

(declare-fun containsKeyBiggerList!635 (List!55333 K!16947) Bool)

(assert (=> b!4835833 (= res!2060437 (containsKeyBiggerList!635 (toList!7639 lm!2671) key!6540))))

(declare-fun b!4835834 () Bool)

(declare-fun tp!1363407 () Bool)

(assert (=> b!4835834 (= e!3022162 tp!1363407)))

(declare-fun b!4835835 () Bool)

(declare-fun res!2060438 () Bool)

(assert (=> b!4835835 (=> (not res!2060438) (not e!3022161))))

(declare-fun containsKey!4501 (List!55332 K!16947) Bool)

(assert (=> b!4835835 (= res!2060438 (containsKey!4501 (_2!32594 (h!61644 (toList!7639 lm!2671))) key!6540))))

(declare-fun b!4835836 () Bool)

(assert (=> b!4835836 (= e!3022161 (not (forall!12751 (toList!7639 lm!2671) lambda!239408)))))

(assert (= (and start!502786 res!2060440) b!4835832))

(assert (= (and b!4835832 res!2060441) b!4835833))

(assert (= (and b!4835833 res!2060437) b!4835831))

(assert (= (and b!4835831 res!2060439) b!4835835))

(assert (= (and b!4835835 res!2060438) b!4835836))

(assert (= start!502786 b!4835834))

(declare-fun m!5831130 () Bool)

(assert (=> b!4835836 m!5831130))

(declare-fun m!5831132 () Bool)

(assert (=> b!4835832 m!5831132))

(assert (=> start!502786 m!5831130))

(declare-fun m!5831134 () Bool)

(assert (=> start!502786 m!5831134))

(declare-fun m!5831136 () Bool)

(assert (=> b!4835835 m!5831136))

(declare-fun m!5831138 () Bool)

(assert (=> b!4835833 m!5831138))

(push 1)

(assert (not b!4835836))

(assert (not start!502786))

(assert (not b!4835835))

(assert tp_is_empty!34801)

(assert (not b!4835834))

(assert (not b!4835833))

(assert (not b!4835832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

