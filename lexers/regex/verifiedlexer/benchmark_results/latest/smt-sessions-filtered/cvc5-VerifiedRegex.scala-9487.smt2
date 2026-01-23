; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501230 () Bool)

(assert start!501230)

(declare-fun b!4828164 () Bool)

(declare-fun e!3016901 () Bool)

(declare-fun tp!1362769 () Bool)

(assert (=> b!4828164 (= e!3016901 tp!1362769)))

(declare-fun b!4828165 () Bool)

(declare-fun res!2055995 () Bool)

(declare-fun e!3016899 () Bool)

(assert (=> b!4828165 (=> (not res!2055995) (not e!3016899))))

(declare-datatypes ((V!16968 0))(
  ( (V!16969 (val!21683 Int)) )
))
(declare-datatypes ((K!16722 0))(
  ( (K!16723 (val!21684 Int)) )
))
(declare-datatypes ((tuple2!58302 0))(
  ( (tuple2!58303 (_1!32445 K!16722) (_2!32445 V!16968)) )
))
(declare-datatypes ((List!55156 0))(
  ( (Nil!55032) (Cons!55032 (h!61466 tuple2!58302) (t!362652 List!55156)) )
))
(declare-datatypes ((tuple2!58304 0))(
  ( (tuple2!58305 (_1!32446 (_ BitVec 64)) (_2!32446 List!55156)) )
))
(declare-datatypes ((List!55157 0))(
  ( (Nil!55033) (Cons!55033 (h!61467 tuple2!58304) (t!362653 List!55157)) )
))
(declare-datatypes ((ListLongMap!6049 0))(
  ( (ListLongMap!6050 (toList!7527 List!55157)) )
))
(declare-fun lm!2325 () ListLongMap!6049)

(assert (=> b!4828165 (= res!2055995 (is-Cons!55033 (toList!7527 lm!2325)))))

(declare-fun b!4828166 () Bool)

(declare-fun res!2055996 () Bool)

(assert (=> b!4828166 (=> (not res!2055996) (not e!3016899))))

(declare-datatypes ((Hashable!7293 0))(
  ( (HashableExt!7292 (__x!33568 Int)) )
))
(declare-fun hashF!1543 () Hashable!7293)

(declare-fun allKeysSameHashInMap!2609 (ListLongMap!6049 Hashable!7293) Bool)

(assert (=> b!4828166 (= res!2055996 (allKeysSameHashInMap!2609 lm!2325 hashF!1543))))

(declare-fun b!4828167 () Bool)

(declare-fun res!2055994 () Bool)

(assert (=> b!4828167 (=> (not res!2055994) (not e!3016899))))

(declare-fun key!5594 () K!16722)

(declare-fun contains!18834 (ListLongMap!6049 (_ BitVec 64)) Bool)

(declare-fun hash!5444 (Hashable!7293 K!16722) (_ BitVec 64))

(assert (=> b!4828167 (= res!2055994 (not (contains!18834 lm!2325 (hash!5444 hashF!1543 key!5594))))))

(declare-fun res!2055993 () Bool)

(assert (=> start!501230 (=> (not res!2055993) (not e!3016899))))

(declare-fun lambda!237297 () Int)

(declare-fun forall!12647 (List!55157 Int) Bool)

(assert (=> start!501230 (= res!2055993 (forall!12647 (toList!7527 lm!2325) lambda!237297))))

(assert (=> start!501230 e!3016899))

(declare-fun inv!70623 (ListLongMap!6049) Bool)

(assert (=> start!501230 (and (inv!70623 lm!2325) e!3016901)))

(assert (=> start!501230 true))

(declare-fun tp_is_empty!34525 () Bool)

(assert (=> start!501230 tp_is_empty!34525))

(declare-fun b!4828168 () Bool)

(assert (=> b!4828168 (= e!3016899 (not true))))

(declare-datatypes ((ListMap!6899 0))(
  ( (ListMap!6900 (toList!7528 List!55156)) )
))
(declare-fun lt!1974773 () ListMap!6899)

(declare-fun e!3016900 () Bool)

(declare-fun contains!18835 (ListMap!6899 K!16722) Bool)

(declare-fun addToMapMapFromBucket!1816 (List!55156 ListMap!6899) ListMap!6899)

(assert (=> b!4828168 (= (contains!18835 (addToMapMapFromBucket!1816 (_2!32446 (h!61467 (toList!7527 lm!2325))) lt!1974773) key!5594) e!3016900)))

(declare-fun res!2055992 () Bool)

(assert (=> b!4828168 (=> res!2055992 e!3016900)))

(declare-fun containsKey!4404 (List!55156 K!16722) Bool)

(assert (=> b!4828168 (= res!2055992 (containsKey!4404 (_2!32446 (h!61467 (toList!7527 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143374 0))(
  ( (Unit!143375) )
))
(declare-fun lt!1974772 () Unit!143374)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!39 (List!55156 ListMap!6899 K!16722) Unit!143374)

(assert (=> b!4828168 (= lt!1974772 (lemmaAddToMapFromBucketContainsIIFInAccOrL!39 (_2!32446 (h!61467 (toList!7527 lm!2325))) lt!1974773 key!5594))))

(declare-fun extractMap!2701 (List!55157) ListMap!6899)

(assert (=> b!4828168 (= lt!1974773 (extractMap!2701 (t!362653 (toList!7527 lm!2325))))))

(declare-fun b!4828169 () Bool)

(assert (=> b!4828169 (= e!3016900 (contains!18835 lt!1974773 key!5594))))

(assert (= (and start!501230 res!2055993) b!4828166))

(assert (= (and b!4828166 res!2055996) b!4828167))

(assert (= (and b!4828167 res!2055994) b!4828165))

(assert (= (and b!4828165 res!2055995) b!4828168))

(assert (= (and b!4828168 (not res!2055992)) b!4828169))

(assert (= start!501230 b!4828164))

(declare-fun m!5819716 () Bool)

(assert (=> b!4828167 m!5819716))

(assert (=> b!4828167 m!5819716))

(declare-fun m!5819718 () Bool)

(assert (=> b!4828167 m!5819718))

(declare-fun m!5819720 () Bool)

(assert (=> b!4828168 m!5819720))

(declare-fun m!5819722 () Bool)

(assert (=> b!4828168 m!5819722))

(declare-fun m!5819724 () Bool)

(assert (=> b!4828168 m!5819724))

(declare-fun m!5819726 () Bool)

(assert (=> b!4828168 m!5819726))

(declare-fun m!5819728 () Bool)

(assert (=> b!4828168 m!5819728))

(assert (=> b!4828168 m!5819724))

(declare-fun m!5819730 () Bool)

(assert (=> b!4828166 m!5819730))

(declare-fun m!5819732 () Bool)

(assert (=> b!4828169 m!5819732))

(declare-fun m!5819734 () Bool)

(assert (=> start!501230 m!5819734))

(declare-fun m!5819736 () Bool)

(assert (=> start!501230 m!5819736))

(push 1)

(assert (not b!4828164))

(assert (not b!4828167))

(assert (not start!501230))

(assert (not b!4828166))

(assert (not b!4828169))

(assert tp_is_empty!34525)

(assert (not b!4828168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

