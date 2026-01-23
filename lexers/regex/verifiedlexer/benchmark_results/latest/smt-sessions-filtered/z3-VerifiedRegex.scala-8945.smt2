; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479764 () Bool)

(assert start!479764)

(declare-fun b!4716714 () Bool)

(declare-fun res!1994647 () Bool)

(declare-fun e!2941721 () Bool)

(assert (=> b!4716714 (=> res!1994647 e!2941721)))

(declare-datatypes ((K!14130 0))(
  ( (K!14131 (val!19575 Int)) )
))
(declare-datatypes ((V!14376 0))(
  ( (V!14377 (val!19576 Int)) )
))
(declare-datatypes ((tuple2!54362 0))(
  ( (tuple2!54363 (_1!30475 K!14130) (_2!30475 V!14376)) )
))
(declare-datatypes ((List!52893 0))(
  ( (Nil!52769) (Cons!52769 (h!59098 tuple2!54362) (t!360145 List!52893)) )
))
(declare-datatypes ((ListMap!5237 0))(
  ( (ListMap!5238 (toList!5873 List!52893)) )
))
(declare-fun lt!1882084 () ListMap!5237)

(declare-fun lt!1882098 () tuple2!54362)

(declare-fun lt!1882074 () ListMap!5237)

(declare-fun eq!1119 (ListMap!5237 ListMap!5237) Bool)

(declare-fun +!2252 (ListMap!5237 tuple2!54362) ListMap!5237)

(assert (=> b!4716714 (= res!1994647 (not (eq!1119 lt!1882084 (+!2252 lt!1882074 lt!1882098))))))

(declare-fun b!4716715 () Bool)

(declare-fun e!2941722 () Bool)

(assert (=> b!4716715 (= e!2941722 e!2941721)))

(declare-fun res!1994648 () Bool)

(assert (=> b!4716715 (=> res!1994648 e!2941721)))

(declare-fun oldBucket!34 () List!52893)

(assert (=> b!4716715 (= res!1994648 (not (eq!1119 lt!1882084 (+!2252 lt!1882074 (h!59098 oldBucket!34)))))))

(declare-datatypes ((tuple2!54364 0))(
  ( (tuple2!54365 (_1!30476 (_ BitVec 64)) (_2!30476 List!52893)) )
))
(declare-datatypes ((List!52894 0))(
  ( (Nil!52770) (Cons!52770 (h!59099 tuple2!54364) (t!360146 List!52894)) )
))
(declare-datatypes ((ListLongMap!4403 0))(
  ( (ListLongMap!4404 (toList!5874 List!52894)) )
))
(declare-fun lm!2023 () ListLongMap!4403)

(declare-fun lt!1882090 () List!52893)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun extractMap!2018 (List!52894) ListMap!5237)

(assert (=> b!4716715 (= lt!1882074 (extractMap!2018 (Cons!52770 (tuple2!54365 hash!405 lt!1882090) (t!360146 (toList!5874 lm!2023)))))))

(declare-fun lt!1882086 () tuple2!54364)

(assert (=> b!4716715 (= lt!1882084 (extractMap!2018 (Cons!52770 lt!1882086 (t!360146 (toList!5874 lm!2023)))))))

(declare-fun lt!1882070 () List!52893)

(declare-fun lt!1882102 () ListMap!5237)

(declare-fun addToMapMapFromBucket!1422 (List!52893 ListMap!5237) ListMap!5237)

(assert (=> b!4716715 (eq!1119 (addToMapMapFromBucket!1422 (Cons!52769 lt!1882098 lt!1882070) lt!1882102) (+!2252 (addToMapMapFromBucket!1422 lt!1882070 lt!1882102) lt!1882098))))

(declare-datatypes ((Unit!128865 0))(
  ( (Unit!128866) )
))
(declare-fun lt!1882068 () Unit!128865)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!368 (tuple2!54362 List!52893 ListMap!5237) Unit!128865)

(assert (=> b!4716715 (= lt!1882068 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!368 lt!1882098 lt!1882070 lt!1882102))))

(declare-fun newBucket!218 () List!52893)

(declare-fun head!10213 (List!52893) tuple2!54362)

(assert (=> b!4716715 (= lt!1882098 (head!10213 newBucket!218))))

(declare-fun lt!1882094 () tuple2!54362)

(assert (=> b!4716715 (eq!1119 (addToMapMapFromBucket!1422 (Cons!52769 lt!1882094 lt!1882090) lt!1882102) (+!2252 (addToMapMapFromBucket!1422 lt!1882090 lt!1882102) lt!1882094))))

(declare-fun lt!1882080 () Unit!128865)

(assert (=> b!4716715 (= lt!1882080 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!368 lt!1882094 lt!1882090 lt!1882102))))

(assert (=> b!4716715 (= lt!1882094 (head!10213 oldBucket!34))))

(declare-fun lt!1882082 () ListMap!5237)

(declare-fun key!4653 () K!14130)

(declare-fun contains!16115 (ListMap!5237 K!14130) Bool)

(assert (=> b!4716715 (contains!16115 lt!1882082 key!4653)))

(declare-fun lt!1882101 () List!52894)

(assert (=> b!4716715 (= lt!1882082 (extractMap!2018 lt!1882101))))

(declare-datatypes ((Hashable!6361 0))(
  ( (HashableExt!6360 (__x!32064 Int)) )
))
(declare-fun hashF!1323 () Hashable!6361)

(declare-fun lt!1882067 () Unit!128865)

(declare-fun lt!1882065 () ListLongMap!4403)

(declare-fun lemmaListContainsThenExtractedMapContains!538 (ListLongMap!4403 K!14130 Hashable!6361) Unit!128865)

(assert (=> b!4716715 (= lt!1882067 (lemmaListContainsThenExtractedMapContains!538 lt!1882065 key!4653 hashF!1323))))

(assert (=> b!4716715 (= lt!1882065 (ListLongMap!4404 lt!1882101))))

(declare-fun lt!1882066 () tuple2!54364)

(assert (=> b!4716715 (= lt!1882101 (Cons!52770 lt!1882066 (t!360146 (toList!5874 lm!2023))))))

(assert (=> b!4716715 (= lt!1882066 (tuple2!54365 hash!405 (t!360145 oldBucket!34)))))

(declare-fun b!4716716 () Bool)

(declare-fun res!1994655 () Bool)

(declare-fun e!2941712 () Bool)

(assert (=> b!4716716 (=> (not res!1994655) (not e!2941712))))

(declare-fun removePairForKey!1587 (List!52893 K!14130) List!52893)

(assert (=> b!4716716 (= res!1994655 (= (removePairForKey!1587 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4716717 () Bool)

(declare-fun e!2941710 () Bool)

(declare-fun e!2941716 () Bool)

(assert (=> b!4716717 (= e!2941710 e!2941716)))

(declare-fun res!1994634 () Bool)

(assert (=> b!4716717 (=> (not res!1994634) (not e!2941716))))

(declare-fun head!10214 (List!52894) tuple2!54364)

(assert (=> b!4716717 (= res!1994634 (= (head!10214 (toList!5874 lm!2023)) lt!1882086))))

(assert (=> b!4716717 (= lt!1882086 (tuple2!54365 hash!405 oldBucket!34))))

(declare-fun b!4716718 () Bool)

(declare-fun e!2941711 () Bool)

(assert (=> b!4716718 (= e!2941712 e!2941711)))

(declare-fun res!1994644 () Bool)

(assert (=> b!4716718 (=> (not res!1994644) (not e!2941711))))

(declare-fun lt!1882073 () ListMap!5237)

(assert (=> b!4716718 (= res!1994644 (contains!16115 lt!1882073 key!4653))))

(assert (=> b!4716718 (= lt!1882073 (extractMap!2018 (toList!5874 lm!2023)))))

(declare-fun b!4716719 () Bool)

(declare-fun res!1994642 () Bool)

(assert (=> b!4716719 (=> (not res!1994642) (not e!2941710))))

(declare-fun allKeysSameHashInMap!1906 (ListLongMap!4403 Hashable!6361) Bool)

(assert (=> b!4716719 (= res!1994642 (allKeysSameHashInMap!1906 lm!2023 hashF!1323))))

(declare-fun b!4716720 () Bool)

(declare-fun e!2941718 () Bool)

(declare-fun e!2941714 () Bool)

(assert (=> b!4716720 (= e!2941718 e!2941714)))

(declare-fun res!1994653 () Bool)

(assert (=> b!4716720 (=> res!1994653 e!2941714)))

(declare-fun lt!1882079 () ListMap!5237)

(declare-fun lt!1882100 () ListMap!5237)

(assert (=> b!4716720 (= res!1994653 (not (eq!1119 lt!1882079 (+!2252 lt!1882100 (h!59098 oldBucket!34)))))))

(declare-fun lt!1882087 () ListMap!5237)

(assert (=> b!4716720 (eq!1119 lt!1882087 (+!2252 lt!1882100 (h!59098 oldBucket!34)))))

(declare-fun lt!1882085 () ListMap!5237)

(declare-fun lt!1882075 () Unit!128865)

(declare-fun lemmaAddToEqMapsPreservesEq!110 (ListMap!5237 ListMap!5237 K!14130 V!14376) Unit!128865)

(assert (=> b!4716720 (= lt!1882075 (lemmaAddToEqMapsPreservesEq!110 lt!1882085 lt!1882100 (_1!30475 (h!59098 oldBucket!34)) (_2!30475 (h!59098 oldBucket!34))))))

(declare-fun b!4716722 () Bool)

(declare-fun e!2941720 () Bool)

(assert (=> b!4716722 (= e!2941716 (not e!2941720))))

(declare-fun res!1994637 () Bool)

(assert (=> b!4716722 (=> res!1994637 e!2941720)))

(get-info :version)

(assert (=> b!4716722 (= res!1994637 (or (and ((_ is Cons!52769) oldBucket!34) (= (_1!30475 (h!59098 oldBucket!34)) key!4653)) (not ((_ is Cons!52769) oldBucket!34)) (= (_1!30475 (h!59098 oldBucket!34)) key!4653)))))

(assert (=> b!4716722 (= lt!1882073 (addToMapMapFromBucket!1422 (_2!30476 (h!59099 (toList!5874 lm!2023))) lt!1882102))))

(assert (=> b!4716722 (= lt!1882102 (extractMap!2018 (t!360146 (toList!5874 lm!2023))))))

(declare-fun tail!8950 (ListLongMap!4403) ListLongMap!4403)

(assert (=> b!4716722 (= (t!360146 (toList!5874 lm!2023)) (toList!5874 (tail!8950 lm!2023)))))

(declare-fun tp_is_empty!31261 () Bool)

(declare-fun tp!1347999 () Bool)

(declare-fun b!4716723 () Bool)

(declare-fun e!2941715 () Bool)

(declare-fun tp_is_empty!31263 () Bool)

(assert (=> b!4716723 (= e!2941715 (and tp_is_empty!31261 tp_is_empty!31263 tp!1347999))))

(declare-fun b!4716724 () Bool)

(declare-fun e!2941713 () Bool)

(assert (=> b!4716724 (= e!2941713 e!2941722)))

(declare-fun res!1994640 () Bool)

(assert (=> b!4716724 (=> res!1994640 e!2941722)))

(assert (=> b!4716724 (= res!1994640 (not (= (removePairForKey!1587 lt!1882090 key!4653) lt!1882070)))))

(declare-fun tail!8951 (List!52893) List!52893)

(assert (=> b!4716724 (= lt!1882070 (tail!8951 newBucket!218))))

(assert (=> b!4716724 (= lt!1882090 (tail!8951 oldBucket!34))))

(declare-fun b!4716725 () Bool)

(declare-fun res!1994635 () Bool)

(assert (=> b!4716725 (=> res!1994635 e!2941718)))

(declare-fun lt!1882069 () ListMap!5237)

(assert (=> b!4716725 (= res!1994635 (not (eq!1119 lt!1882069 lt!1882079)))))

(declare-fun b!4716726 () Bool)

(declare-fun res!1994645 () Bool)

(assert (=> b!4716726 (=> (not res!1994645) (not e!2941712))))

(declare-fun noDuplicateKeys!1992 (List!52893) Bool)

(assert (=> b!4716726 (= res!1994645 (noDuplicateKeys!1992 oldBucket!34))))

(declare-fun b!4716727 () Bool)

(declare-fun res!1994652 () Bool)

(assert (=> b!4716727 (=> (not res!1994652) (not e!2941710))))

(declare-fun allKeysSameHash!1818 (List!52893 (_ BitVec 64) Hashable!6361) Bool)

(assert (=> b!4716727 (= res!1994652 (allKeysSameHash!1818 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4716728 () Bool)

(declare-fun e!2941709 () Bool)

(assert (=> b!4716728 (= e!2941721 e!2941709)))

(declare-fun res!1994651 () Bool)

(assert (=> b!4716728 (=> res!1994651 e!2941709)))

(assert (=> b!4716728 (= res!1994651 (not (eq!1119 lt!1882100 lt!1882085)))))

(declare-fun -!748 (ListMap!5237 K!14130) ListMap!5237)

(assert (=> b!4716728 (= lt!1882085 (-!748 lt!1882082 key!4653))))

(declare-fun lt!1882099 () tuple2!54364)

(assert (=> b!4716728 (= lt!1882100 (extractMap!2018 (Cons!52770 lt!1882099 (t!360146 (toList!5874 lm!2023)))))))

(declare-fun lt!1882083 () List!52894)

(assert (=> b!4716728 (eq!1119 (extractMap!2018 (Cons!52770 lt!1882099 lt!1882083)) (-!748 (extractMap!2018 (Cons!52770 lt!1882066 lt!1882083)) key!4653))))

(declare-fun tail!8952 (List!52894) List!52894)

(assert (=> b!4716728 (= lt!1882083 (tail!8952 lt!1882101))))

(assert (=> b!4716728 (= lt!1882099 (tuple2!54365 hash!405 lt!1882070))))

(declare-fun lt!1882095 () Unit!128865)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!110 (ListLongMap!4403 (_ BitVec 64) List!52893 List!52893 K!14130 Hashable!6361) Unit!128865)

(assert (=> b!4716728 (= lt!1882095 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!110 lt!1882065 hash!405 (t!360145 oldBucket!34) lt!1882070 key!4653 hashF!1323))))

(declare-fun b!4716729 () Bool)

(assert (=> b!4716729 (= e!2941711 e!2941710)))

(declare-fun res!1994641 () Bool)

(assert (=> b!4716729 (=> (not res!1994641) (not e!2941710))))

(declare-fun lt!1882071 () (_ BitVec 64))

(assert (=> b!4716729 (= res!1994641 (= lt!1882071 hash!405))))

(declare-fun hash!4341 (Hashable!6361 K!14130) (_ BitVec 64))

(assert (=> b!4716729 (= lt!1882071 (hash!4341 hashF!1323 key!4653))))

(declare-fun b!4716730 () Bool)

(declare-fun res!1994649 () Bool)

(assert (=> b!4716730 (=> (not res!1994649) (not e!2941716))))

(assert (=> b!4716730 (= res!1994649 ((_ is Cons!52770) (toList!5874 lm!2023)))))

(declare-fun b!4716731 () Bool)

(declare-fun lt!1882088 () ListMap!5237)

(assert (=> b!4716731 (= e!2941714 (eq!1119 lt!1882079 lt!1882088))))

(assert (=> b!4716731 (eq!1119 lt!1882069 lt!1882088)))

(assert (=> b!4716731 (= lt!1882088 (-!748 lt!1882084 key!4653))))

(declare-fun lt!1882092 () ListMap!5237)

(declare-fun lt!1882089 () Unit!128865)

(declare-fun lemmaRemovePreservesEq!116 (ListMap!5237 ListMap!5237 K!14130) Unit!128865)

(assert (=> b!4716731 (= lt!1882089 (lemmaRemovePreservesEq!116 lt!1882092 lt!1882084 key!4653))))

(declare-fun b!4716732 () Bool)

(assert (=> b!4716732 (= e!2941720 e!2941713)))

(declare-fun res!1994643 () Bool)

(assert (=> b!4716732 (=> res!1994643 e!2941713)))

(declare-fun containsKey!3329 (List!52893 K!14130) Bool)

(assert (=> b!4716732 (= res!1994643 (not (containsKey!3329 (t!360145 oldBucket!34) key!4653)))))

(assert (=> b!4716732 (containsKey!3329 oldBucket!34 key!4653)))

(declare-fun lt!1882091 () Unit!128865)

(declare-fun lemmaGetPairDefinedThenContainsKey!306 (List!52893 K!14130 Hashable!6361) Unit!128865)

(assert (=> b!4716732 (= lt!1882091 (lemmaGetPairDefinedThenContainsKey!306 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1882081 () List!52893)

(declare-datatypes ((Option!12332 0))(
  ( (None!12331) (Some!12331 (v!46890 tuple2!54362)) )
))
(declare-fun isDefined!9586 (Option!12332) Bool)

(declare-fun getPair!558 (List!52893 K!14130) Option!12332)

(assert (=> b!4716732 (isDefined!9586 (getPair!558 lt!1882081 key!4653))))

(declare-fun lt!1882096 () Unit!128865)

(declare-fun lt!1882072 () tuple2!54364)

(declare-fun lambda!214159 () Int)

(declare-fun forallContained!3612 (List!52894 Int tuple2!54364) Unit!128865)

(assert (=> b!4716732 (= lt!1882096 (forallContained!3612 (toList!5874 lm!2023) lambda!214159 lt!1882072))))

(declare-fun contains!16116 (List!52894 tuple2!54364) Bool)

(assert (=> b!4716732 (contains!16116 (toList!5874 lm!2023) lt!1882072)))

(assert (=> b!4716732 (= lt!1882072 (tuple2!54365 lt!1882071 lt!1882081))))

(declare-fun lt!1882077 () Unit!128865)

(declare-fun lemmaGetValueImpliesTupleContained!363 (ListLongMap!4403 (_ BitVec 64) List!52893) Unit!128865)

(assert (=> b!4716732 (= lt!1882077 (lemmaGetValueImpliesTupleContained!363 lm!2023 lt!1882071 lt!1882081))))

(declare-fun apply!12441 (ListLongMap!4403 (_ BitVec 64)) List!52893)

(assert (=> b!4716732 (= lt!1882081 (apply!12441 lm!2023 lt!1882071))))

(declare-fun contains!16117 (ListLongMap!4403 (_ BitVec 64)) Bool)

(assert (=> b!4716732 (contains!16117 lm!2023 lt!1882071)))

(declare-fun lt!1882097 () Unit!128865)

(declare-fun lemmaInGenMapThenLongMapContainsHash!764 (ListLongMap!4403 K!14130 Hashable!6361) Unit!128865)

(assert (=> b!4716732 (= lt!1882097 (lemmaInGenMapThenLongMapContainsHash!764 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1882093 () Unit!128865)

(declare-fun lemmaInGenMapThenGetPairDefined!354 (ListLongMap!4403 K!14130 Hashable!6361) Unit!128865)

(assert (=> b!4716732 (= lt!1882093 (lemmaInGenMapThenGetPairDefined!354 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716733 () Bool)

(declare-fun res!1994636 () Bool)

(assert (=> b!4716733 (=> res!1994636 e!2941718)))

(assert (=> b!4716733 (= res!1994636 (not (eq!1119 lt!1882092 lt!1882084)))))

(declare-fun res!1994639 () Bool)

(assert (=> start!479764 (=> (not res!1994639) (not e!2941712))))

(declare-fun forall!11543 (List!52894 Int) Bool)

(assert (=> start!479764 (= res!1994639 (forall!11543 (toList!5874 lm!2023) lambda!214159))))

(assert (=> start!479764 e!2941712))

(declare-fun e!2941717 () Bool)

(declare-fun inv!68004 (ListLongMap!4403) Bool)

(assert (=> start!479764 (and (inv!68004 lm!2023) e!2941717)))

(assert (=> start!479764 tp_is_empty!31261))

(declare-fun e!2941719 () Bool)

(assert (=> start!479764 e!2941719))

(assert (=> start!479764 true))

(assert (=> start!479764 e!2941715))

(declare-fun tp!1347997 () Bool)

(declare-fun b!4716721 () Bool)

(assert (=> b!4716721 (= e!2941719 (and tp_is_empty!31261 tp_is_empty!31263 tp!1347997))))

(declare-fun b!4716734 () Bool)

(declare-fun res!1994638 () Bool)

(assert (=> b!4716734 (=> (not res!1994638) (not e!2941712))))

(assert (=> b!4716734 (= res!1994638 (allKeysSameHash!1818 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4716735 () Bool)

(assert (=> b!4716735 (= e!2941709 e!2941718)))

(declare-fun res!1994654 () Bool)

(assert (=> b!4716735 (=> res!1994654 e!2941718)))

(assert (=> b!4716735 (= res!1994654 (not (= lt!1882069 lt!1882079)))))

(assert (=> b!4716735 (= lt!1882079 (+!2252 lt!1882085 (h!59098 oldBucket!34)))))

(assert (=> b!4716735 (= lt!1882069 (-!748 lt!1882092 key!4653))))

(assert (=> b!4716735 (= lt!1882092 (+!2252 lt!1882082 (h!59098 oldBucket!34)))))

(declare-fun lt!1882078 () ListMap!5237)

(assert (=> b!4716735 (= lt!1882078 lt!1882087)))

(assert (=> b!4716735 (= lt!1882087 (+!2252 lt!1882085 (h!59098 oldBucket!34)))))

(assert (=> b!4716735 (= lt!1882078 (-!748 (+!2252 lt!1882082 (h!59098 oldBucket!34)) key!4653))))

(declare-fun lt!1882076 () Unit!128865)

(declare-fun addRemoveCommutativeForDiffKeys!139 (ListMap!5237 K!14130 V!14376 K!14130) Unit!128865)

(assert (=> b!4716735 (= lt!1882076 (addRemoveCommutativeForDiffKeys!139 lt!1882082 (_1!30475 (h!59098 oldBucket!34)) (_2!30475 (h!59098 oldBucket!34)) key!4653))))

(declare-fun b!4716736 () Bool)

(declare-fun tp!1347998 () Bool)

(assert (=> b!4716736 (= e!2941717 tp!1347998)))

(declare-fun b!4716737 () Bool)

(declare-fun res!1994650 () Bool)

(assert (=> b!4716737 (=> res!1994650 e!2941722)))

(assert (=> b!4716737 (= res!1994650 (not (= (removePairForKey!1587 (t!360145 oldBucket!34) key!4653) lt!1882070)))))

(declare-fun b!4716738 () Bool)

(declare-fun res!1994646 () Bool)

(assert (=> b!4716738 (=> (not res!1994646) (not e!2941712))))

(assert (=> b!4716738 (= res!1994646 (noDuplicateKeys!1992 newBucket!218))))

(declare-fun b!4716739 () Bool)

(declare-fun res!1994633 () Bool)

(assert (=> b!4716739 (=> res!1994633 e!2941721)))

(assert (=> b!4716739 (= res!1994633 (not (= (h!59098 oldBucket!34) lt!1882098)))))

(assert (= (and start!479764 res!1994639) b!4716726))

(assert (= (and b!4716726 res!1994645) b!4716738))

(assert (= (and b!4716738 res!1994646) b!4716716))

(assert (= (and b!4716716 res!1994655) b!4716734))

(assert (= (and b!4716734 res!1994638) b!4716718))

(assert (= (and b!4716718 res!1994644) b!4716729))

(assert (= (and b!4716729 res!1994641) b!4716727))

(assert (= (and b!4716727 res!1994652) b!4716719))

(assert (= (and b!4716719 res!1994642) b!4716717))

(assert (= (and b!4716717 res!1994634) b!4716730))

(assert (= (and b!4716730 res!1994649) b!4716722))

(assert (= (and b!4716722 (not res!1994637)) b!4716732))

(assert (= (and b!4716732 (not res!1994643)) b!4716724))

(assert (= (and b!4716724 (not res!1994640)) b!4716737))

(assert (= (and b!4716737 (not res!1994650)) b!4716715))

(assert (= (and b!4716715 (not res!1994648)) b!4716739))

(assert (= (and b!4716739 (not res!1994633)) b!4716714))

(assert (= (and b!4716714 (not res!1994647)) b!4716728))

(assert (= (and b!4716728 (not res!1994651)) b!4716735))

(assert (= (and b!4716735 (not res!1994654)) b!4716725))

(assert (= (and b!4716725 (not res!1994635)) b!4716733))

(assert (= (and b!4716733 (not res!1994636)) b!4716720))

(assert (= (and b!4716720 (not res!1994653)) b!4716731))

(assert (= start!479764 b!4716736))

(assert (= (and start!479764 ((_ is Cons!52769) oldBucket!34)) b!4716721))

(assert (= (and start!479764 ((_ is Cons!52769) newBucket!218)) b!4716723))

(declare-fun m!5646851 () Bool)

(assert (=> b!4716722 m!5646851))

(declare-fun m!5646853 () Bool)

(assert (=> b!4716722 m!5646853))

(declare-fun m!5646855 () Bool)

(assert (=> b!4716722 m!5646855))

(declare-fun m!5646857 () Bool)

(assert (=> b!4716728 m!5646857))

(declare-fun m!5646859 () Bool)

(assert (=> b!4716728 m!5646859))

(declare-fun m!5646861 () Bool)

(assert (=> b!4716728 m!5646861))

(declare-fun m!5646863 () Bool)

(assert (=> b!4716728 m!5646863))

(declare-fun m!5646865 () Bool)

(assert (=> b!4716728 m!5646865))

(declare-fun m!5646867 () Bool)

(assert (=> b!4716728 m!5646867))

(assert (=> b!4716728 m!5646863))

(assert (=> b!4716728 m!5646861))

(assert (=> b!4716728 m!5646865))

(declare-fun m!5646869 () Bool)

(assert (=> b!4716728 m!5646869))

(declare-fun m!5646871 () Bool)

(assert (=> b!4716728 m!5646871))

(declare-fun m!5646873 () Bool)

(assert (=> b!4716728 m!5646873))

(declare-fun m!5646875 () Bool)

(assert (=> b!4716720 m!5646875))

(assert (=> b!4716720 m!5646875))

(declare-fun m!5646877 () Bool)

(assert (=> b!4716720 m!5646877))

(assert (=> b!4716720 m!5646875))

(declare-fun m!5646879 () Bool)

(assert (=> b!4716720 m!5646879))

(declare-fun m!5646881 () Bool)

(assert (=> b!4716720 m!5646881))

(declare-fun m!5646883 () Bool)

(assert (=> b!4716714 m!5646883))

(assert (=> b!4716714 m!5646883))

(declare-fun m!5646885 () Bool)

(assert (=> b!4716714 m!5646885))

(declare-fun m!5646887 () Bool)

(assert (=> b!4716733 m!5646887))

(declare-fun m!5646889 () Bool)

(assert (=> b!4716737 m!5646889))

(declare-fun m!5646891 () Bool)

(assert (=> b!4716734 m!5646891))

(declare-fun m!5646893 () Bool)

(assert (=> b!4716725 m!5646893))

(declare-fun m!5646895 () Bool)

(assert (=> b!4716726 m!5646895))

(declare-fun m!5646897 () Bool)

(assert (=> b!4716727 m!5646897))

(declare-fun m!5646899 () Bool)

(assert (=> b!4716718 m!5646899))

(declare-fun m!5646901 () Bool)

(assert (=> b!4716718 m!5646901))

(declare-fun m!5646903 () Bool)

(assert (=> b!4716724 m!5646903))

(declare-fun m!5646905 () Bool)

(assert (=> b!4716724 m!5646905))

(declare-fun m!5646907 () Bool)

(assert (=> b!4716724 m!5646907))

(declare-fun m!5646909 () Bool)

(assert (=> b!4716735 m!5646909))

(declare-fun m!5646911 () Bool)

(assert (=> b!4716735 m!5646911))

(declare-fun m!5646913 () Bool)

(assert (=> b!4716735 m!5646913))

(assert (=> b!4716735 m!5646909))

(declare-fun m!5646915 () Bool)

(assert (=> b!4716735 m!5646915))

(declare-fun m!5646917 () Bool)

(assert (=> b!4716735 m!5646917))

(declare-fun m!5646919 () Bool)

(assert (=> b!4716717 m!5646919))

(declare-fun m!5646921 () Bool)

(assert (=> b!4716716 m!5646921))

(declare-fun m!5646923 () Bool)

(assert (=> b!4716738 m!5646923))

(declare-fun m!5646925 () Bool)

(assert (=> b!4716732 m!5646925))

(declare-fun m!5646927 () Bool)

(assert (=> b!4716732 m!5646927))

(declare-fun m!5646929 () Bool)

(assert (=> b!4716732 m!5646929))

(declare-fun m!5646931 () Bool)

(assert (=> b!4716732 m!5646931))

(declare-fun m!5646933 () Bool)

(assert (=> b!4716732 m!5646933))

(declare-fun m!5646935 () Bool)

(assert (=> b!4716732 m!5646935))

(declare-fun m!5646937 () Bool)

(assert (=> b!4716732 m!5646937))

(assert (=> b!4716732 m!5646937))

(declare-fun m!5646939 () Bool)

(assert (=> b!4716732 m!5646939))

(declare-fun m!5646941 () Bool)

(assert (=> b!4716732 m!5646941))

(declare-fun m!5646943 () Bool)

(assert (=> b!4716732 m!5646943))

(declare-fun m!5646945 () Bool)

(assert (=> b!4716732 m!5646945))

(declare-fun m!5646947 () Bool)

(assert (=> b!4716732 m!5646947))

(declare-fun m!5646949 () Bool)

(assert (=> start!479764 m!5646949))

(declare-fun m!5646951 () Bool)

(assert (=> start!479764 m!5646951))

(declare-fun m!5646953 () Bool)

(assert (=> b!4716719 m!5646953))

(declare-fun m!5646955 () Bool)

(assert (=> b!4716729 m!5646955))

(declare-fun m!5646957 () Bool)

(assert (=> b!4716715 m!5646957))

(declare-fun m!5646959 () Bool)

(assert (=> b!4716715 m!5646959))

(declare-fun m!5646961 () Bool)

(assert (=> b!4716715 m!5646961))

(declare-fun m!5646963 () Bool)

(assert (=> b!4716715 m!5646963))

(assert (=> b!4716715 m!5646961))

(declare-fun m!5646965 () Bool)

(assert (=> b!4716715 m!5646965))

(declare-fun m!5646967 () Bool)

(assert (=> b!4716715 m!5646967))

(declare-fun m!5646969 () Bool)

(assert (=> b!4716715 m!5646969))

(assert (=> b!4716715 m!5646969))

(declare-fun m!5646971 () Bool)

(assert (=> b!4716715 m!5646971))

(declare-fun m!5646973 () Bool)

(assert (=> b!4716715 m!5646973))

(declare-fun m!5646975 () Bool)

(assert (=> b!4716715 m!5646975))

(declare-fun m!5646977 () Bool)

(assert (=> b!4716715 m!5646977))

(declare-fun m!5646979 () Bool)

(assert (=> b!4716715 m!5646979))

(declare-fun m!5646981 () Bool)

(assert (=> b!4716715 m!5646981))

(declare-fun m!5646983 () Bool)

(assert (=> b!4716715 m!5646983))

(declare-fun m!5646985 () Bool)

(assert (=> b!4716715 m!5646985))

(declare-fun m!5646987 () Bool)

(assert (=> b!4716715 m!5646987))

(assert (=> b!4716715 m!5646979))

(declare-fun m!5646989 () Bool)

(assert (=> b!4716715 m!5646989))

(assert (=> b!4716715 m!5646963))

(assert (=> b!4716715 m!5646957))

(assert (=> b!4716715 m!5646981))

(declare-fun m!5646991 () Bool)

(assert (=> b!4716715 m!5646991))

(assert (=> b!4716715 m!5646959))

(declare-fun m!5646993 () Bool)

(assert (=> b!4716715 m!5646993))

(declare-fun m!5646995 () Bool)

(assert (=> b!4716731 m!5646995))

(declare-fun m!5646997 () Bool)

(assert (=> b!4716731 m!5646997))

(declare-fun m!5646999 () Bool)

(assert (=> b!4716731 m!5646999))

(declare-fun m!5647001 () Bool)

(assert (=> b!4716731 m!5647001))

(check-sat (not b!4716728) (not b!4716722) (not b!4716729) (not b!4716725) (not b!4716716) (not b!4716720) (not b!4716717) tp_is_empty!31263 (not b!4716719) (not b!4716721) (not b!4716736) (not b!4716735) (not b!4716732) (not b!4716723) (not b!4716715) (not b!4716726) tp_is_empty!31261 (not b!4716727) (not b!4716733) (not start!479764) (not b!4716734) (not b!4716737) (not b!4716731) (not b!4716718) (not b!4716738) (not b!4716714) (not b!4716724))
(check-sat)
