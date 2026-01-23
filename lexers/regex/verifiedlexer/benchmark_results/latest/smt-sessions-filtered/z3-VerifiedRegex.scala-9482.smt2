; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!501164 () Bool)

(assert start!501164)

(declare-fun b!4827905 () Bool)

(declare-fun res!2055836 () Bool)

(declare-fun e!3016753 () Bool)

(assert (=> b!4827905 (=> res!2055836 e!3016753)))

(declare-datatypes ((V!16945 0))(
  ( (V!16946 (val!21665 Int)) )
))
(declare-datatypes ((K!16699 0))(
  ( (K!16700 (val!21666 Int)) )
))
(declare-datatypes ((tuple2!58266 0))(
  ( (tuple2!58267 (_1!32427 K!16699) (_2!32427 V!16945)) )
))
(declare-datatypes ((List!55138 0))(
  ( (Nil!55014) (Cons!55014 (h!61448 tuple2!58266) (t!362634 List!55138)) )
))
(declare-datatypes ((tuple2!58268 0))(
  ( (tuple2!58269 (_1!32428 (_ BitVec 64)) (_2!32428 List!55138)) )
))
(declare-datatypes ((List!55139 0))(
  ( (Nil!55015) (Cons!55015 (h!61449 tuple2!58268) (t!362635 List!55139)) )
))
(declare-datatypes ((ListLongMap!6031 0))(
  ( (ListLongMap!6032 (toList!7513 List!55139)) )
))
(declare-fun lt!1974690 () ListLongMap!6031)

(declare-datatypes ((Hashable!7284 0))(
  ( (HashableExt!7283 (__x!33559 Int)) )
))
(declare-fun hashF!1543 () Hashable!7284)

(declare-fun allKeysSameHashInMap!2600 (ListLongMap!6031 Hashable!7284) Bool)

(assert (=> b!4827905 (= res!2055836 (not (allKeysSameHashInMap!2600 lt!1974690 hashF!1543)))))

(declare-fun b!4827906 () Bool)

(declare-fun e!3016755 () Bool)

(assert (=> b!4827906 (= e!3016755 (not e!3016753))))

(declare-fun res!2055830 () Bool)

(assert (=> b!4827906 (=> res!2055830 e!3016753)))

(declare-fun lambda!237244 () Int)

(declare-fun forall!12638 (List!55139 Int) Bool)

(assert (=> b!4827906 (= res!2055830 (not (forall!12638 (toList!7513 lt!1974690) lambda!237244)))))

(declare-fun lm!2325 () ListLongMap!6031)

(declare-fun tail!9420 (ListLongMap!6031) ListLongMap!6031)

(assert (=> b!4827906 (= lt!1974690 (tail!9420 lm!2325))))

(declare-fun key!5594 () K!16699)

(declare-fun containsKey!4398 (List!55138 K!16699) Bool)

(declare-fun apply!13363 (ListLongMap!6031 (_ BitVec 64)) List!55138)

(assert (=> b!4827906 (not (containsKey!4398 (apply!13363 lm!2325 (_1!32428 (h!61449 (toList!7513 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143362 0))(
  ( (Unit!143363) )
))
(declare-fun lt!1974689 () Unit!143362)

(declare-fun lemmaNotSameHashThenCannotContainKey!232 (ListLongMap!6031 K!16699 (_ BitVec 64) Hashable!7284) Unit!143362)

(assert (=> b!4827906 (= lt!1974689 (lemmaNotSameHashThenCannotContainKey!232 lm!2325 key!5594 (_1!32428 (h!61449 (toList!7513 lm!2325))) hashF!1543))))

(declare-fun e!3016756 () Bool)

(declare-datatypes ((ListMap!6889 0))(
  ( (ListMap!6890 (toList!7514 List!55138)) )
))
(declare-fun lt!1974691 () ListMap!6889)

(declare-fun contains!18822 (ListMap!6889 K!16699) Bool)

(declare-fun addToMapMapFromBucket!1812 (List!55138 ListMap!6889) ListMap!6889)

(assert (=> b!4827906 (= (contains!18822 (addToMapMapFromBucket!1812 (_2!32428 (h!61449 (toList!7513 lm!2325))) lt!1974691) key!5594) e!3016756)))

(declare-fun res!2055833 () Bool)

(assert (=> b!4827906 (=> res!2055833 e!3016756)))

(assert (=> b!4827906 (= res!2055833 (containsKey!4398 (_2!32428 (h!61449 (toList!7513 lm!2325))) key!5594))))

(declare-fun lt!1974688 () Unit!143362)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!36 (List!55138 ListMap!6889 K!16699) Unit!143362)

(assert (=> b!4827906 (= lt!1974688 (lemmaAddToMapFromBucketContainsIIFInAccOrL!36 (_2!32428 (h!61449 (toList!7513 lm!2325))) lt!1974691 key!5594))))

(declare-fun extractMap!2696 (List!55139) ListMap!6889)

(assert (=> b!4827906 (= lt!1974691 (extractMap!2696 (t!362635 (toList!7513 lm!2325))))))

(declare-fun b!4827907 () Bool)

(declare-fun res!2055832 () Bool)

(assert (=> b!4827907 (=> res!2055832 e!3016753)))

(declare-fun lt!1974692 () (_ BitVec 64))

(declare-fun contains!18823 (ListLongMap!6031 (_ BitVec 64)) Bool)

(assert (=> b!4827907 (= res!2055832 (contains!18823 lt!1974690 lt!1974692))))

(declare-fun b!4827908 () Bool)

(declare-fun e!3016754 () Bool)

(assert (=> b!4827908 (= e!3016754 e!3016755)))

(declare-fun res!2055831 () Bool)

(assert (=> b!4827908 (=> (not res!2055831) (not e!3016755))))

(assert (=> b!4827908 (= res!2055831 (not (contains!18823 lm!2325 lt!1974692)))))

(declare-fun hash!5433 (Hashable!7284 K!16699) (_ BitVec 64))

(assert (=> b!4827908 (= lt!1974692 (hash!5433 hashF!1543 key!5594))))

(declare-fun b!4827910 () Bool)

(assert (=> b!4827910 (= e!3016756 (contains!18822 lt!1974691 key!5594))))

(declare-fun b!4827911 () Bool)

(assert (=> b!4827911 (= e!3016753 (forall!12638 (toList!7513 lm!2325) lambda!237244))))

(assert (=> b!4827911 (not (contains!18822 (extractMap!2696 (toList!7513 lt!1974690)) key!5594))))

(declare-fun lt!1974687 () Unit!143362)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!90 (ListLongMap!6031 K!16699 Hashable!7284) Unit!143362)

(assert (=> b!4827911 (= lt!1974687 (lemmaHashNotInLongMapThenNotInGenerated!90 lt!1974690 key!5594 hashF!1543))))

(declare-fun b!4827912 () Bool)

(declare-fun e!3016757 () Bool)

(declare-fun tp!1362718 () Bool)

(assert (=> b!4827912 (= e!3016757 tp!1362718)))

(declare-fun b!4827913 () Bool)

(declare-fun res!2055835 () Bool)

(assert (=> b!4827913 (=> (not res!2055835) (not e!3016754))))

(assert (=> b!4827913 (= res!2055835 (allKeysSameHashInMap!2600 lm!2325 hashF!1543))))

(declare-fun b!4827909 () Bool)

(declare-fun res!2055834 () Bool)

(assert (=> b!4827909 (=> (not res!2055834) (not e!3016755))))

(get-info :version)

(assert (=> b!4827909 (= res!2055834 ((_ is Cons!55015) (toList!7513 lm!2325)))))

(declare-fun res!2055837 () Bool)

(assert (=> start!501164 (=> (not res!2055837) (not e!3016754))))

(assert (=> start!501164 (= res!2055837 (forall!12638 (toList!7513 lm!2325) lambda!237244))))

(assert (=> start!501164 e!3016754))

(declare-fun inv!70599 (ListLongMap!6031) Bool)

(assert (=> start!501164 (and (inv!70599 lm!2325) e!3016757)))

(assert (=> start!501164 true))

(declare-fun tp_is_empty!34507 () Bool)

(assert (=> start!501164 tp_is_empty!34507))

(assert (= (and start!501164 res!2055837) b!4827913))

(assert (= (and b!4827913 res!2055835) b!4827908))

(assert (= (and b!4827908 res!2055831) b!4827909))

(assert (= (and b!4827909 res!2055834) b!4827906))

(assert (= (and b!4827906 (not res!2055833)) b!4827910))

(assert (= (and b!4827906 (not res!2055830)) b!4827905))

(assert (= (and b!4827905 (not res!2055836)) b!4827907))

(assert (= (and b!4827907 (not res!2055832)) b!4827911))

(assert (= start!501164 b!4827912))

(declare-fun m!5819476 () Bool)

(assert (=> b!4827910 m!5819476))

(declare-fun m!5819478 () Bool)

(assert (=> b!4827913 m!5819478))

(declare-fun m!5819480 () Bool)

(assert (=> start!501164 m!5819480))

(declare-fun m!5819482 () Bool)

(assert (=> start!501164 m!5819482))

(declare-fun m!5819484 () Bool)

(assert (=> b!4827905 m!5819484))

(declare-fun m!5819486 () Bool)

(assert (=> b!4827906 m!5819486))

(declare-fun m!5819488 () Bool)

(assert (=> b!4827906 m!5819488))

(declare-fun m!5819490 () Bool)

(assert (=> b!4827906 m!5819490))

(declare-fun m!5819492 () Bool)

(assert (=> b!4827906 m!5819492))

(declare-fun m!5819494 () Bool)

(assert (=> b!4827906 m!5819494))

(declare-fun m!5819496 () Bool)

(assert (=> b!4827906 m!5819496))

(declare-fun m!5819498 () Bool)

(assert (=> b!4827906 m!5819498))

(declare-fun m!5819500 () Bool)

(assert (=> b!4827906 m!5819500))

(assert (=> b!4827906 m!5819496))

(declare-fun m!5819502 () Bool)

(assert (=> b!4827906 m!5819502))

(declare-fun m!5819504 () Bool)

(assert (=> b!4827906 m!5819504))

(assert (=> b!4827906 m!5819490))

(declare-fun m!5819506 () Bool)

(assert (=> b!4827908 m!5819506))

(declare-fun m!5819508 () Bool)

(assert (=> b!4827908 m!5819508))

(assert (=> b!4827911 m!5819480))

(declare-fun m!5819510 () Bool)

(assert (=> b!4827911 m!5819510))

(assert (=> b!4827911 m!5819510))

(declare-fun m!5819512 () Bool)

(assert (=> b!4827911 m!5819512))

(declare-fun m!5819514 () Bool)

(assert (=> b!4827911 m!5819514))

(declare-fun m!5819516 () Bool)

(assert (=> b!4827907 m!5819516))

(check-sat (not b!4827907) (not b!4827911) (not start!501164) (not b!4827908) (not b!4827905) (not b!4827913) (not b!4827906) (not b!4827910) tp_is_empty!34507 (not b!4827912))
(check-sat)
