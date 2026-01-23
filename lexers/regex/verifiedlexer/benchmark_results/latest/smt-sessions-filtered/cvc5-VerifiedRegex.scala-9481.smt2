; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501158 () Bool)

(assert start!501158)

(declare-fun b!4827824 () Bool)

(declare-fun res!2055759 () Bool)

(declare-fun e!3016709 () Bool)

(assert (=> b!4827824 (=> res!2055759 e!3016709)))

(declare-datatypes ((V!16938 0))(
  ( (V!16939 (val!21659 Int)) )
))
(declare-datatypes ((K!16692 0))(
  ( (K!16693 (val!21660 Int)) )
))
(declare-datatypes ((tuple2!58254 0))(
  ( (tuple2!58255 (_1!32421 K!16692) (_2!32421 V!16938)) )
))
(declare-datatypes ((List!55132 0))(
  ( (Nil!55008) (Cons!55008 (h!61442 tuple2!58254) (t!362628 List!55132)) )
))
(declare-datatypes ((tuple2!58256 0))(
  ( (tuple2!58257 (_1!32422 (_ BitVec 64)) (_2!32422 List!55132)) )
))
(declare-datatypes ((List!55133 0))(
  ( (Nil!55009) (Cons!55009 (h!61443 tuple2!58256) (t!362629 List!55133)) )
))
(declare-datatypes ((ListLongMap!6025 0))(
  ( (ListLongMap!6026 (toList!7507 List!55133)) )
))
(declare-fun lt!1974640 () ListLongMap!6025)

(declare-datatypes ((Hashable!7281 0))(
  ( (HashableExt!7280 (__x!33556 Int)) )
))
(declare-fun hashF!1543 () Hashable!7281)

(declare-fun allKeysSameHashInMap!2597 (ListLongMap!6025 Hashable!7281) Bool)

(assert (=> b!4827824 (= res!2055759 (not (allKeysSameHashInMap!2597 lt!1974640 hashF!1543)))))

(declare-fun b!4827825 () Bool)

(declare-fun e!3016711 () Bool)

(declare-datatypes ((ListMap!6883 0))(
  ( (ListMap!6884 (toList!7508 List!55132)) )
))
(declare-fun lt!1974637 () ListMap!6883)

(declare-fun key!5594 () K!16692)

(declare-fun contains!18816 (ListMap!6883 K!16692) Bool)

(assert (=> b!4827825 (= e!3016711 (contains!18816 lt!1974637 key!5594))))

(declare-fun b!4827826 () Bool)

(declare-fun res!2055760 () Bool)

(declare-fun e!3016712 () Bool)

(assert (=> b!4827826 (=> (not res!2055760) (not e!3016712))))

(declare-fun lm!2325 () ListLongMap!6025)

(assert (=> b!4827826 (= res!2055760 (is-Cons!55009 (toList!7507 lm!2325)))))

(declare-fun b!4827827 () Bool)

(declare-fun res!2055758 () Bool)

(assert (=> b!4827827 (=> res!2055758 e!3016709)))

(declare-fun lt!1974641 () (_ BitVec 64))

(declare-fun contains!18817 (ListLongMap!6025 (_ BitVec 64)) Bool)

(assert (=> b!4827827 (= res!2055758 (contains!18817 lt!1974640 lt!1974641))))

(declare-fun b!4827828 () Bool)

(declare-fun res!2055761 () Bool)

(declare-fun e!3016708 () Bool)

(assert (=> b!4827828 (=> (not res!2055761) (not e!3016708))))

(assert (=> b!4827828 (= res!2055761 (allKeysSameHashInMap!2597 lm!2325 hashF!1543))))

(declare-fun res!2055762 () Bool)

(assert (=> start!501158 (=> (not res!2055762) (not e!3016708))))

(declare-fun lambda!237225 () Int)

(declare-fun forall!12635 (List!55133 Int) Bool)

(assert (=> start!501158 (= res!2055762 (forall!12635 (toList!7507 lm!2325) lambda!237225))))

(assert (=> start!501158 e!3016708))

(declare-fun e!3016710 () Bool)

(declare-fun inv!70593 (ListLongMap!6025) Bool)

(assert (=> start!501158 (and (inv!70593 lm!2325) e!3016710)))

(assert (=> start!501158 true))

(declare-fun tp_is_empty!34501 () Bool)

(assert (=> start!501158 tp_is_empty!34501))

(declare-fun b!4827829 () Bool)

(assert (=> b!4827829 (= e!3016712 (not e!3016709))))

(declare-fun res!2055764 () Bool)

(assert (=> b!4827829 (=> res!2055764 e!3016709)))

(assert (=> b!4827829 (= res!2055764 (not (forall!12635 (toList!7507 lt!1974640) lambda!237225)))))

(declare-fun tail!9417 (ListLongMap!6025) ListLongMap!6025)

(assert (=> b!4827829 (= lt!1974640 (tail!9417 lm!2325))))

(declare-fun containsKey!4395 (List!55132 K!16692) Bool)

(declare-fun apply!13360 (ListLongMap!6025 (_ BitVec 64)) List!55132)

(assert (=> b!4827829 (not (containsKey!4395 (apply!13360 lm!2325 (_1!32422 (h!61443 (toList!7507 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143356 0))(
  ( (Unit!143357) )
))
(declare-fun lt!1974639 () Unit!143356)

(declare-fun lemmaNotSameHashThenCannotContainKey!229 (ListLongMap!6025 K!16692 (_ BitVec 64) Hashable!7281) Unit!143356)

(assert (=> b!4827829 (= lt!1974639 (lemmaNotSameHashThenCannotContainKey!229 lm!2325 key!5594 (_1!32422 (h!61443 (toList!7507 lm!2325))) hashF!1543))))

(declare-fun addToMapMapFromBucket!1809 (List!55132 ListMap!6883) ListMap!6883)

(assert (=> b!4827829 (= (contains!18816 (addToMapMapFromBucket!1809 (_2!32422 (h!61443 (toList!7507 lm!2325))) lt!1974637) key!5594) e!3016711)))

(declare-fun res!2055765 () Bool)

(assert (=> b!4827829 (=> res!2055765 e!3016711)))

(assert (=> b!4827829 (= res!2055765 (containsKey!4395 (_2!32422 (h!61443 (toList!7507 lm!2325))) key!5594))))

(declare-fun lt!1974638 () Unit!143356)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!33 (List!55132 ListMap!6883 K!16692) Unit!143356)

(assert (=> b!4827829 (= lt!1974638 (lemmaAddToMapFromBucketContainsIIFInAccOrL!33 (_2!32422 (h!61443 (toList!7507 lm!2325))) lt!1974637 key!5594))))

(declare-fun extractMap!2693 (List!55133) ListMap!6883)

(assert (=> b!4827829 (= lt!1974637 (extractMap!2693 (t!362629 (toList!7507 lm!2325))))))

(declare-fun b!4827830 () Bool)

(declare-fun tp!1362709 () Bool)

(assert (=> b!4827830 (= e!3016710 tp!1362709)))

(declare-fun b!4827831 () Bool)

(assert (=> b!4827831 (= e!3016708 e!3016712)))

(declare-fun res!2055763 () Bool)

(assert (=> b!4827831 (=> (not res!2055763) (not e!3016712))))

(assert (=> b!4827831 (= res!2055763 (not (contains!18817 lm!2325 lt!1974641)))))

(declare-fun hash!5430 (Hashable!7281 K!16692) (_ BitVec 64))

(assert (=> b!4827831 (= lt!1974641 (hash!5430 hashF!1543 key!5594))))

(declare-fun b!4827832 () Bool)

(assert (=> b!4827832 (= e!3016709 true)))

(assert (= (and start!501158 res!2055762) b!4827828))

(assert (= (and b!4827828 res!2055761) b!4827831))

(assert (= (and b!4827831 res!2055763) b!4827826))

(assert (= (and b!4827826 res!2055760) b!4827829))

(assert (= (and b!4827829 (not res!2055765)) b!4827825))

(assert (= (and b!4827829 (not res!2055764)) b!4827824))

(assert (= (and b!4827824 (not res!2055759)) b!4827827))

(assert (= (and b!4827827 (not res!2055758)) b!4827832))

(assert (= start!501158 b!4827830))

(declare-fun m!5819362 () Bool)

(assert (=> b!4827828 m!5819362))

(declare-fun m!5819364 () Bool)

(assert (=> b!4827825 m!5819364))

(declare-fun m!5819366 () Bool)

(assert (=> b!4827827 m!5819366))

(declare-fun m!5819368 () Bool)

(assert (=> b!4827831 m!5819368))

(declare-fun m!5819370 () Bool)

(assert (=> b!4827831 m!5819370))

(declare-fun m!5819372 () Bool)

(assert (=> b!4827824 m!5819372))

(declare-fun m!5819374 () Bool)

(assert (=> b!4827829 m!5819374))

(declare-fun m!5819376 () Bool)

(assert (=> b!4827829 m!5819376))

(declare-fun m!5819378 () Bool)

(assert (=> b!4827829 m!5819378))

(declare-fun m!5819380 () Bool)

(assert (=> b!4827829 m!5819380))

(declare-fun m!5819382 () Bool)

(assert (=> b!4827829 m!5819382))

(declare-fun m!5819384 () Bool)

(assert (=> b!4827829 m!5819384))

(declare-fun m!5819386 () Bool)

(assert (=> b!4827829 m!5819386))

(declare-fun m!5819388 () Bool)

(assert (=> b!4827829 m!5819388))

(declare-fun m!5819390 () Bool)

(assert (=> b!4827829 m!5819390))

(assert (=> b!4827829 m!5819378))

(declare-fun m!5819392 () Bool)

(assert (=> b!4827829 m!5819392))

(assert (=> b!4827829 m!5819382))

(declare-fun m!5819394 () Bool)

(assert (=> start!501158 m!5819394))

(declare-fun m!5819396 () Bool)

(assert (=> start!501158 m!5819396))

(push 1)

(assert (not start!501158))

(assert (not b!4827830))

(assert (not b!4827831))

(assert (not b!4827825))

(assert tp_is_empty!34501)

(assert (not b!4827829))

(assert (not b!4827824))

(assert (not b!4827828))

(assert (not b!4827827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

