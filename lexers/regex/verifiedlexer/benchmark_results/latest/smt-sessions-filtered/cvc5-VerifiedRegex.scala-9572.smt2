; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503892 () Bool)

(assert start!503892)

(declare-fun b!4841125 () Bool)

(declare-fun e!3025505 () Bool)

(declare-datatypes ((K!17147 0))(
  ( (K!17148 (val!22023 Int)) )
))
(declare-datatypes ((V!17393 0))(
  ( (V!17394 (val!22024 Int)) )
))
(declare-datatypes ((tuple2!58918 0))(
  ( (tuple2!58919 (_1!32753 K!17147) (_2!32753 V!17393)) )
))
(declare-datatypes ((List!55509 0))(
  ( (Nil!55385) (Cons!55385 (h!61820 tuple2!58918) (t!363005 List!55509)) )
))
(declare-datatypes ((tuple2!58920 0))(
  ( (tuple2!58921 (_1!32754 (_ BitVec 64)) (_2!32754 List!55509)) )
))
(declare-datatypes ((List!55510 0))(
  ( (Nil!55386) (Cons!55386 (h!61821 tuple2!58920) (t!363006 List!55510)) )
))
(declare-datatypes ((ListLongMap!6325 0))(
  ( (ListLongMap!6326 (toList!7769 List!55510)) )
))
(declare-fun lm!2671 () ListLongMap!6325)

(declare-fun lambda!241187 () Int)

(declare-fun forall!12857 (List!55510 Int) Bool)

(assert (=> b!4841125 (= e!3025505 (not (forall!12857 (toList!7769 lm!2671) lambda!241187)))))

(declare-fun b!4841126 () Bool)

(declare-fun res!2064009 () Bool)

(assert (=> b!4841126 (=> (not res!2064009) (not e!3025505))))

(declare-fun e!3025506 () Bool)

(assert (=> b!4841126 (= res!2064009 e!3025506)))

(declare-fun res!2064004 () Bool)

(assert (=> b!4841126 (=> res!2064004 e!3025506)))

(assert (=> b!4841126 (= res!2064004 (not (is-Cons!55386 (toList!7769 lm!2671))))))

(declare-fun b!4841127 () Bool)

(declare-fun res!2064006 () Bool)

(assert (=> b!4841127 (=> (not res!2064006) (not e!3025505))))

(declare-datatypes ((ListMap!7107 0))(
  ( (ListMap!7108 (toList!7770 List!55509)) )
))
(declare-fun extractMap!2773 (List!55510) ListMap!7107)

(declare-fun addToMapMapFromBucket!1913 (List!55509 ListMap!7107) ListMap!7107)

(assert (=> b!4841127 (= res!2064006 (= (extractMap!2773 (toList!7769 lm!2671)) (addToMapMapFromBucket!1913 (_2!32754 (h!61821 (toList!7769 lm!2671))) (extractMap!2773 (t!363006 (toList!7769 lm!2671))))))))

(declare-fun b!4841128 () Bool)

(declare-fun res!2064008 () Bool)

(assert (=> b!4841128 (=> (not res!2064008) (not e!3025505))))

(declare-fun key!6540 () K!17147)

(declare-fun containsKeyBiggerList!715 (List!55510 K!17147) Bool)

(assert (=> b!4841128 (= res!2064008 (containsKeyBiggerList!715 (toList!7769 lm!2671) key!6540))))

(declare-fun b!4841129 () Bool)

(declare-fun e!3025504 () Bool)

(declare-fun tp!1363921 () Bool)

(assert (=> b!4841129 (= e!3025504 tp!1363921)))

(declare-fun b!4841131 () Bool)

(declare-fun res!2064007 () Bool)

(assert (=> b!4841131 (=> (not res!2064007) (not e!3025505))))

(declare-datatypes ((Hashable!7431 0))(
  ( (HashableExt!7430 (__x!33706 Int)) )
))
(declare-fun hashF!1662 () Hashable!7431)

(declare-fun allKeysSameHashInMap!2747 (ListLongMap!6325 Hashable!7431) Bool)

(assert (=> b!4841131 (= res!2064007 (allKeysSameHashInMap!2747 lm!2671 hashF!1662))))

(declare-fun b!4841132 () Bool)

(declare-fun res!2064005 () Bool)

(assert (=> b!4841132 (=> (not res!2064005) (not e!3025505))))

(assert (=> b!4841132 (= res!2064005 (is-Cons!55386 (toList!7769 lm!2671)))))

(declare-fun res!2064003 () Bool)

(assert (=> start!503892 (=> (not res!2064003) (not e!3025505))))

(assert (=> start!503892 (= res!2064003 (forall!12857 (toList!7769 lm!2671) lambda!241187))))

(assert (=> start!503892 e!3025505))

(declare-fun inv!71048 (ListLongMap!6325) Bool)

(assert (=> start!503892 (and (inv!71048 lm!2671) e!3025504)))

(assert (=> start!503892 true))

(declare-fun tp_is_empty!34965 () Bool)

(assert (=> start!503892 tp_is_empty!34965))

(declare-fun b!4841130 () Bool)

(declare-fun containsKey!4598 (List!55509 K!17147) Bool)

(assert (=> b!4841130 (= e!3025506 (not (containsKey!4598 (_2!32754 (h!61821 (toList!7769 lm!2671))) key!6540)))))

(assert (= (and start!503892 res!2064003) b!4841131))

(assert (= (and b!4841131 res!2064007) b!4841128))

(assert (= (and b!4841128 res!2064008) b!4841126))

(assert (= (and b!4841126 (not res!2064004)) b!4841130))

(assert (= (and b!4841126 res!2064009) b!4841132))

(assert (= (and b!4841132 res!2064005) b!4841127))

(assert (= (and b!4841127 res!2064006) b!4841125))

(assert (= start!503892 b!4841129))

(declare-fun m!5836820 () Bool)

(assert (=> b!4841128 m!5836820))

(declare-fun m!5836822 () Bool)

(assert (=> b!4841127 m!5836822))

(declare-fun m!5836824 () Bool)

(assert (=> b!4841127 m!5836824))

(assert (=> b!4841127 m!5836824))

(declare-fun m!5836826 () Bool)

(assert (=> b!4841127 m!5836826))

(declare-fun m!5836828 () Bool)

(assert (=> b!4841131 m!5836828))

(declare-fun m!5836830 () Bool)

(assert (=> b!4841130 m!5836830))

(declare-fun m!5836832 () Bool)

(assert (=> start!503892 m!5836832))

(declare-fun m!5836834 () Bool)

(assert (=> start!503892 m!5836834))

(assert (=> b!4841125 m!5836832))

(push 1)

(assert (not b!4841130))

(assert (not start!503892))

(assert (not b!4841128))

(assert tp_is_empty!34965)

(assert (not b!4841125))

(assert (not b!4841131))

(assert (not b!4841127))

(assert (not b!4841129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

