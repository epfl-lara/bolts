; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503090 () Bool)

(assert start!503090)

(declare-fun b!4837245 () Bool)

(declare-fun res!2061486 () Bool)

(declare-fun e!3023000 () Bool)

(assert (=> b!4837245 (=> (not res!2061486) (not e!3023000))))

(declare-datatypes ((K!17019 0))(
  ( (K!17020 (val!21921 Int)) )
))
(declare-datatypes ((V!17265 0))(
  ( (V!17266 (val!21922 Int)) )
))
(declare-datatypes ((tuple2!58714 0))(
  ( (tuple2!58715 (_1!32651 K!17019) (_2!32651 V!17265)) )
))
(declare-datatypes ((List!55390 0))(
  ( (Nil!55266) (Cons!55266 (h!61701 tuple2!58714) (t!362886 List!55390)) )
))
(declare-datatypes ((tuple2!58716 0))(
  ( (tuple2!58717 (_1!32652 (_ BitVec 64)) (_2!32652 List!55390)) )
))
(declare-datatypes ((List!55391 0))(
  ( (Nil!55267) (Cons!55267 (h!61702 tuple2!58716) (t!362887 List!55391)) )
))
(declare-datatypes ((ListLongMap!6223 0))(
  ( (ListLongMap!6224 (toList!7683 List!55391)) )
))
(declare-fun lm!2671 () ListLongMap!6223)

(declare-fun key!6540 () K!17019)

(declare-fun containsKey!4530 (List!55390 K!17019) Bool)

(declare-fun head!10382 (List!55391) tuple2!58716)

(assert (=> b!4837245 (= res!2061486 (not (containsKey!4530 (_2!32652 (head!10382 (toList!7683 lm!2671))) key!6540)))))

(declare-fun b!4837246 () Bool)

(declare-fun e!3022999 () Bool)

(assert (=> b!4837246 (= e!3022999 (not (containsKey!4530 (_2!32652 (h!61702 (toList!7683 lm!2671))) key!6540)))))

(declare-fun b!4837247 () Bool)

(declare-fun res!2061485 () Bool)

(assert (=> b!4837247 (=> (not res!2061485) (not e!3023000))))

(declare-datatypes ((Hashable!7380 0))(
  ( (HashableExt!7379 (__x!33655 Int)) )
))
(declare-fun hashF!1662 () Hashable!7380)

(declare-fun allKeysSameHashInMap!2696 (ListLongMap!6223 Hashable!7380) Bool)

(assert (=> b!4837247 (= res!2061485 (allKeysSameHashInMap!2696 lm!2671 hashF!1662))))

(declare-fun res!2061492 () Bool)

(assert (=> start!503090 (=> (not res!2061492) (not e!3023000))))

(declare-fun lambda!239851 () Int)

(declare-fun forall!12785 (List!55391 Int) Bool)

(assert (=> start!503090 (= res!2061492 (forall!12785 (toList!7683 lm!2671) lambda!239851))))

(assert (=> start!503090 e!3023000))

(declare-fun e!3022998 () Bool)

(declare-fun inv!70919 (ListLongMap!6223) Bool)

(assert (=> start!503090 (and (inv!70919 lm!2671) e!3022998)))

(assert (=> start!503090 true))

(declare-fun tp_is_empty!34859 () Bool)

(assert (=> start!503090 tp_is_empty!34859))

(declare-fun b!4837248 () Bool)

(declare-fun res!2061487 () Bool)

(assert (=> b!4837248 (=> (not res!2061487) (not e!3023000))))

(assert (=> b!4837248 (= res!2061487 e!3022999)))

(declare-fun res!2061484 () Bool)

(assert (=> b!4837248 (=> res!2061484 e!3022999)))

(get-info :version)

(assert (=> b!4837248 (= res!2061484 (not ((_ is Cons!55267) (toList!7683 lm!2671))))))

(declare-fun b!4837249 () Bool)

(declare-fun res!2061489 () Bool)

(assert (=> b!4837249 (=> (not res!2061489) (not e!3023000))))

(declare-fun containsKeyBiggerList!664 (List!55391 K!17019) Bool)

(assert (=> b!4837249 (= res!2061489 (containsKeyBiggerList!664 (toList!7683 lm!2671) key!6540))))

(declare-fun b!4837250 () Bool)

(assert (=> b!4837250 (= e!3023000 false)))

(declare-fun b!4837251 () Bool)

(declare-fun res!2061490 () Bool)

(assert (=> b!4837251 (=> (not res!2061490) (not e!3023000))))

(declare-datatypes ((ListMap!7037 0))(
  ( (ListMap!7038 (toList!7684 List!55390)) )
))
(declare-fun extractMap!2738 (List!55391) ListMap!7037)

(declare-fun addToMapMapFromBucket!1878 (List!55390 ListMap!7037) ListMap!7037)

(assert (=> b!4837251 (= res!2061490 (= (extractMap!2738 (toList!7683 lm!2671)) (addToMapMapFromBucket!1878 (_2!32652 (h!61702 (toList!7683 lm!2671))) (extractMap!2738 (t!362887 (toList!7683 lm!2671))))))))

(declare-fun b!4837252 () Bool)

(declare-fun tp!1363578 () Bool)

(assert (=> b!4837252 (= e!3022998 tp!1363578)))

(declare-fun b!4837253 () Bool)

(declare-fun res!2061491 () Bool)

(assert (=> b!4837253 (=> (not res!2061491) (not e!3023000))))

(assert (=> b!4837253 (= res!2061491 ((_ is Cons!55267) (toList!7683 lm!2671)))))

(declare-fun b!4837254 () Bool)

(declare-fun res!2061488 () Bool)

(assert (=> b!4837254 (=> (not res!2061488) (not e!3023000))))

(assert (=> b!4837254 (= res!2061488 (forall!12785 (toList!7683 lm!2671) lambda!239851))))

(assert (= (and start!503090 res!2061492) b!4837247))

(assert (= (and b!4837247 res!2061485) b!4837249))

(assert (= (and b!4837249 res!2061489) b!4837248))

(assert (= (and b!4837248 (not res!2061484)) b!4837246))

(assert (= (and b!4837248 res!2061487) b!4837253))

(assert (= (and b!4837253 res!2061491) b!4837251))

(assert (= (and b!4837251 res!2061490) b!4837254))

(assert (= (and b!4837254 res!2061488) b!4837245))

(assert (= (and b!4837245 res!2061486) b!4837250))

(assert (= start!503090 b!4837252))

(declare-fun m!5832406 () Bool)

(assert (=> b!4837245 m!5832406))

(declare-fun m!5832408 () Bool)

(assert (=> b!4837245 m!5832408))

(declare-fun m!5832410 () Bool)

(assert (=> b!4837246 m!5832410))

(declare-fun m!5832412 () Bool)

(assert (=> b!4837249 m!5832412))

(declare-fun m!5832414 () Bool)

(assert (=> b!4837254 m!5832414))

(declare-fun m!5832416 () Bool)

(assert (=> b!4837247 m!5832416))

(assert (=> start!503090 m!5832414))

(declare-fun m!5832418 () Bool)

(assert (=> start!503090 m!5832418))

(declare-fun m!5832420 () Bool)

(assert (=> b!4837251 m!5832420))

(declare-fun m!5832422 () Bool)

(assert (=> b!4837251 m!5832422))

(assert (=> b!4837251 m!5832422))

(declare-fun m!5832424 () Bool)

(assert (=> b!4837251 m!5832424))

(check-sat (not b!4837254) (not b!4837252) (not b!4837245) tp_is_empty!34859 (not start!503090) (not b!4837249) (not b!4837246) (not b!4837251) (not b!4837247))
(check-sat)
