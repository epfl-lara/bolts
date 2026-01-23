; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501370 () Bool)

(assert start!501370)

(declare-fun b!4828842 () Bool)

(declare-fun res!2056385 () Bool)

(declare-fun e!3017353 () Bool)

(assert (=> b!4828842 (=> (not res!2056385) (not e!3017353))))

(declare-datatypes ((V!16978 0))(
  ( (V!16979 (val!21691 Int)) )
))
(declare-datatypes ((K!16732 0))(
  ( (K!16733 (val!21692 Int)) )
))
(declare-datatypes ((tuple2!58318 0))(
  ( (tuple2!58319 (_1!32453 K!16732) (_2!32453 V!16978)) )
))
(declare-datatypes ((List!55166 0))(
  ( (Nil!55042) (Cons!55042 (h!61476 tuple2!58318) (t!362662 List!55166)) )
))
(declare-datatypes ((tuple2!58320 0))(
  ( (tuple2!58321 (_1!32454 (_ BitVec 64)) (_2!32454 List!55166)) )
))
(declare-datatypes ((List!55167 0))(
  ( (Nil!55043) (Cons!55043 (h!61477 tuple2!58320) (t!362663 List!55167)) )
))
(declare-datatypes ((ListLongMap!6057 0))(
  ( (ListLongMap!6058 (toList!7535 List!55167)) )
))
(declare-fun lm!2325 () ListLongMap!6057)

(assert (=> b!4828842 (= res!2056385 (is-Cons!55043 (toList!7535 lm!2325)))))

(declare-fun b!4828843 () Bool)

(declare-fun e!3017349 () Bool)

(declare-datatypes ((ListMap!6907 0))(
  ( (ListMap!6908 (toList!7536 List!55166)) )
))
(declare-fun lt!1975302 () ListMap!6907)

(declare-fun key!5594 () K!16732)

(declare-fun contains!18846 (ListMap!6907 K!16732) Bool)

(assert (=> b!4828843 (= e!3017349 (contains!18846 lt!1975302 key!5594))))

(declare-fun b!4828844 () Bool)

(declare-fun e!3017351 () Bool)

(assert (=> b!4828844 (= e!3017353 (not e!3017351))))

(declare-fun res!2056383 () Bool)

(assert (=> b!4828844 (=> res!2056383 e!3017351)))

(declare-fun lambda!237473 () Int)

(declare-fun forall!12655 (List!55167 Int) Bool)

(assert (=> b!4828844 (= res!2056383 (not (forall!12655 (toList!7535 lm!2325) lambda!237473)))))

(declare-fun addToMapMapFromBucket!1820 (List!55166 ListMap!6907) ListMap!6907)

(assert (=> b!4828844 (= (contains!18846 (addToMapMapFromBucket!1820 (_2!32454 (h!61477 (toList!7535 lm!2325))) lt!1975302) key!5594) e!3017349)))

(declare-fun res!2056386 () Bool)

(assert (=> b!4828844 (=> res!2056386 e!3017349)))

(declare-fun containsKey!4412 (List!55166 K!16732) Bool)

(assert (=> b!4828844 (= res!2056386 (containsKey!4412 (_2!32454 (h!61477 (toList!7535 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143469 0))(
  ( (Unit!143470) )
))
(declare-fun lt!1975301 () Unit!143469)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!43 (List!55166 ListMap!6907 K!16732) Unit!143469)

(assert (=> b!4828844 (= lt!1975301 (lemmaAddToMapFromBucketContainsIIFInAccOrL!43 (_2!32454 (h!61477 (toList!7535 lm!2325))) lt!1975302 key!5594))))

(declare-fun extractMap!2705 (List!55167) ListMap!6907)

(assert (=> b!4828844 (= lt!1975302 (extractMap!2705 (t!362663 (toList!7535 lm!2325))))))

(declare-fun b!4828845 () Bool)

(declare-fun lt!1975300 () (_ BitVec 64))

(assert (=> b!4828845 (= e!3017351 (not (= (_1!32454 (h!61477 (toList!7535 lm!2325))) lt!1975300)))))

(declare-fun b!4828847 () Bool)

(declare-fun e!3017350 () Bool)

(declare-fun tp!1362803 () Bool)

(assert (=> b!4828847 (= e!3017350 tp!1362803)))

(declare-fun b!4828848 () Bool)

(declare-fun res!2056382 () Bool)

(assert (=> b!4828848 (=> res!2056382 e!3017351)))

(declare-fun contains!18847 (ListLongMap!6057 (_ BitVec 64)) Bool)

(assert (=> b!4828848 (= res!2056382 (not (contains!18847 lm!2325 (_1!32454 (h!61477 (toList!7535 lm!2325))))))))

(declare-fun b!4828849 () Bool)

(declare-fun e!3017352 () Bool)

(assert (=> b!4828849 (= e!3017352 e!3017353)))

(declare-fun res!2056384 () Bool)

(assert (=> b!4828849 (=> (not res!2056384) (not e!3017353))))

(assert (=> b!4828849 (= res!2056384 (not (contains!18847 lm!2325 lt!1975300)))))

(declare-datatypes ((Hashable!7297 0))(
  ( (HashableExt!7296 (__x!33572 Int)) )
))
(declare-fun hashF!1543 () Hashable!7297)

(declare-fun hash!5450 (Hashable!7297 K!16732) (_ BitVec 64))

(assert (=> b!4828849 (= lt!1975300 (hash!5450 hashF!1543 key!5594))))

(declare-fun res!2056388 () Bool)

(assert (=> start!501370 (=> (not res!2056388) (not e!3017352))))

(assert (=> start!501370 (= res!2056388 (forall!12655 (toList!7535 lm!2325) lambda!237473))))

(assert (=> start!501370 e!3017352))

(declare-fun inv!70633 (ListLongMap!6057) Bool)

(assert (=> start!501370 (and (inv!70633 lm!2325) e!3017350)))

(assert (=> start!501370 true))

(declare-fun tp_is_empty!34537 () Bool)

(assert (=> start!501370 tp_is_empty!34537))

(declare-fun b!4828846 () Bool)

(declare-fun res!2056387 () Bool)

(assert (=> b!4828846 (=> (not res!2056387) (not e!3017352))))

(declare-fun allKeysSameHashInMap!2613 (ListLongMap!6057 Hashable!7297) Bool)

(assert (=> b!4828846 (= res!2056387 (allKeysSameHashInMap!2613 lm!2325 hashF!1543))))

(assert (= (and start!501370 res!2056388) b!4828846))

(assert (= (and b!4828846 res!2056387) b!4828849))

(assert (= (and b!4828849 res!2056384) b!4828842))

(assert (= (and b!4828842 res!2056385) b!4828844))

(assert (= (and b!4828844 (not res!2056386)) b!4828843))

(assert (= (and b!4828844 (not res!2056383)) b!4828848))

(assert (= (and b!4828848 (not res!2056382)) b!4828845))

(assert (= start!501370 b!4828847))

(declare-fun m!5820750 () Bool)

(assert (=> b!4828843 m!5820750))

(declare-fun m!5820752 () Bool)

(assert (=> b!4828849 m!5820752))

(declare-fun m!5820754 () Bool)

(assert (=> b!4828849 m!5820754))

(declare-fun m!5820756 () Bool)

(assert (=> b!4828844 m!5820756))

(declare-fun m!5820758 () Bool)

(assert (=> b!4828844 m!5820758))

(declare-fun m!5820760 () Bool)

(assert (=> b!4828844 m!5820760))

(assert (=> b!4828844 m!5820758))

(declare-fun m!5820762 () Bool)

(assert (=> b!4828844 m!5820762))

(declare-fun m!5820764 () Bool)

(assert (=> b!4828844 m!5820764))

(declare-fun m!5820766 () Bool)

(assert (=> b!4828844 m!5820766))

(declare-fun m!5820768 () Bool)

(assert (=> b!4828848 m!5820768))

(assert (=> start!501370 m!5820766))

(declare-fun m!5820770 () Bool)

(assert (=> start!501370 m!5820770))

(declare-fun m!5820772 () Bool)

(assert (=> b!4828846 m!5820772))

(push 1)

(assert (not b!4828849))

(assert (not b!4828847))

(assert tp_is_empty!34537)

(assert (not start!501370))

(assert (not b!4828844))

(assert (not b!4828846))

(assert (not b!4828843))

(assert (not b!4828848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

