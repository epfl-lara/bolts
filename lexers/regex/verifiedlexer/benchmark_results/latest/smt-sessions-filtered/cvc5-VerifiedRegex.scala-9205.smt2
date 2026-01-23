; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489292 () Bool)

(assert start!489292)

(declare-fun b!4774611 () Bool)

(declare-fun e!2980759 () Bool)

(declare-datatypes ((K!15312 0))(
  ( (K!15313 (val!20555 Int)) )
))
(declare-datatypes ((V!15558 0))(
  ( (V!15559 (val!20556 Int)) )
))
(declare-datatypes ((tuple2!56084 0))(
  ( (tuple2!56085 (_1!31336 K!15312) (_2!31336 V!15558)) )
))
(declare-datatypes ((List!53901 0))(
  ( (Nil!53777) (Cons!53777 (h!60191 tuple2!56084) (t!361351 List!53901)) )
))
(declare-datatypes ((tuple2!56086 0))(
  ( (tuple2!56087 (_1!31337 (_ BitVec 64)) (_2!31337 List!53901)) )
))
(declare-datatypes ((List!53902 0))(
  ( (Nil!53778) (Cons!53778 (h!60192 tuple2!56086) (t!361352 List!53902)) )
))
(declare-datatypes ((ListLongMap!4959 0))(
  ( (ListLongMap!4960 (toList!6545 List!53902)) )
))
(declare-fun lm!2709 () ListLongMap!4959)

(declare-fun lambda!226300 () Int)

(declare-fun forall!11997 (List!53902 Int) Bool)

(assert (=> b!4774611 (= e!2980759 (not (forall!11997 (toList!6545 lm!2709) lambda!226300)))))

(declare-fun b!4774612 () Bool)

(declare-fun res!2025823 () Bool)

(assert (=> b!4774612 (=> (not res!2025823) (not e!2980759))))

(declare-datatypes ((Hashable!6729 0))(
  ( (HashableExt!6728 (__x!32752 Int)) )
))
(declare-fun hashF!1687 () Hashable!6729)

(declare-fun allKeysSameHashInMap!2134 (ListLongMap!4959 Hashable!6729) Bool)

(assert (=> b!4774612 (= res!2025823 (allKeysSameHashInMap!2134 lm!2709 hashF!1687))))

(declare-fun b!4774613 () Bool)

(declare-fun e!2980760 () Bool)

(declare-fun tp!1356957 () Bool)

(assert (=> b!4774613 (= e!2980760 tp!1356957)))

(declare-fun res!2025821 () Bool)

(assert (=> start!489292 (=> (not res!2025821) (not e!2980759))))

(assert (=> start!489292 (= res!2025821 (forall!11997 (toList!6545 lm!2709) lambda!226300))))

(assert (=> start!489292 e!2980759))

(declare-fun inv!69339 (ListLongMap!4959) Bool)

(assert (=> start!489292 (and (inv!69339 lm!2709) e!2980760)))

(assert (=> start!489292 true))

(declare-fun tp_is_empty!32893 () Bool)

(assert (=> start!489292 tp_is_empty!32893))

(declare-fun b!4774614 () Bool)

(declare-fun res!2025822 () Bool)

(assert (=> b!4774614 (=> (not res!2025822) (not e!2980759))))

(assert (=> b!4774614 (= res!2025822 (forall!11997 (toList!6545 lm!2709) lambda!226300))))

(declare-fun b!4774615 () Bool)

(declare-fun res!2025824 () Bool)

(assert (=> b!4774615 (=> (not res!2025824) (not e!2980759))))

(declare-fun key!6641 () K!15312)

(declare-fun containsKeyBiggerList!385 (List!53902 K!15312) Bool)

(assert (=> b!4774615 (= res!2025824 (containsKeyBiggerList!385 (toList!6545 lm!2709) key!6641))))

(assert (= (and start!489292 res!2025821) b!4774612))

(assert (= (and b!4774612 res!2025823) b!4774615))

(assert (= (and b!4774615 res!2025824) b!4774614))

(assert (= (and b!4774614 res!2025822) b!4774611))

(assert (= start!489292 b!4774613))

(declare-fun m!5748728 () Bool)

(assert (=> b!4774612 m!5748728))

(declare-fun m!5748730 () Bool)

(assert (=> b!4774615 m!5748730))

(declare-fun m!5748732 () Bool)

(assert (=> b!4774611 m!5748732))

(assert (=> b!4774614 m!5748732))

(assert (=> start!489292 m!5748732))

(declare-fun m!5748734 () Bool)

(assert (=> start!489292 m!5748734))

(push 1)

(assert (not b!4774615))

(assert tp_is_empty!32893)

(assert (not b!4774614))

(assert (not b!4774612))

(assert (not start!489292))

(assert (not b!4774611))

(assert (not b!4774613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

