; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477412 () Bool)

(assert start!477412)

(declare-fun b!4703821 () Bool)

(declare-fun res!1986509 () Bool)

(declare-fun e!2934195 () Bool)

(assert (=> b!4703821 (=> res!1986509 e!2934195)))

(declare-datatypes ((K!13920 0))(
  ( (K!13921 (val!19407 Int)) )
))
(declare-datatypes ((V!14166 0))(
  ( (V!14167 (val!19408 Int)) )
))
(declare-datatypes ((tuple2!54026 0))(
  ( (tuple2!54027 (_1!30307 K!13920) (_2!30307 V!14166)) )
))
(declare-fun lt!1867782 () tuple2!54026)

(declare-datatypes ((List!52685 0))(
  ( (Nil!52561) (Cons!52561 (h!58850 tuple2!54026) (t!359905 List!52685)) )
))
(declare-datatypes ((ListMap!5069 0))(
  ( (ListMap!5070 (toList!5705 List!52685)) )
))
(declare-fun lt!1867772 () ListMap!5069)

(declare-fun lt!1867780 () ListMap!5069)

(declare-fun eq!1067 (ListMap!5069 ListMap!5069) Bool)

(declare-fun +!2192 (ListMap!5069 tuple2!54026) ListMap!5069)

(assert (=> b!4703821 (= res!1986509 (not (eq!1067 lt!1867780 (+!2192 lt!1867772 lt!1867782))))))

(declare-fun b!4703822 () Bool)

(declare-fun e!2934200 () Bool)

(assert (=> b!4703822 (= e!2934200 e!2934195)))

(declare-fun res!1986496 () Bool)

(assert (=> b!4703822 (=> res!1986496 e!2934195)))

(declare-fun oldBucket!34 () List!52685)

(assert (=> b!4703822 (= res!1986496 (not (eq!1067 lt!1867780 (+!2192 lt!1867772 (h!58850 oldBucket!34)))))))

(declare-datatypes ((tuple2!54028 0))(
  ( (tuple2!54029 (_1!30308 (_ BitVec 64)) (_2!30308 List!52685)) )
))
(declare-datatypes ((List!52686 0))(
  ( (Nil!52562) (Cons!52562 (h!58851 tuple2!54028) (t!359906 List!52686)) )
))
(declare-datatypes ((ListLongMap!4235 0))(
  ( (ListLongMap!4236 (toList!5706 List!52686)) )
))
(declare-fun lm!2023 () ListLongMap!4235)

(declare-fun lt!1867769 () List!52685)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun extractMap!1934 (List!52686) ListMap!5069)

(assert (=> b!4703822 (= lt!1867772 (extractMap!1934 (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023)))))))

(declare-fun lt!1867797 () tuple2!54028)

(assert (=> b!4703822 (= lt!1867780 (extractMap!1934 (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023)))))))

(declare-fun lt!1867775 () List!52685)

(declare-fun lt!1867764 () ListMap!5069)

(declare-fun addToMapMapFromBucket!1340 (List!52685 ListMap!5069) ListMap!5069)

(assert (=> b!4703822 (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867782 lt!1867775) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1867782))))

(declare-datatypes ((Unit!126740 0))(
  ( (Unit!126741) )
))
(declare-fun lt!1867786 () Unit!126740)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!316 (tuple2!54026 List!52685 ListMap!5069) Unit!126740)

(assert (=> b!4703822 (= lt!1867786 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!316 lt!1867782 lt!1867775 lt!1867764))))

(declare-fun newBucket!218 () List!52685)

(declare-fun head!10079 (List!52685) tuple2!54026)

(assert (=> b!4703822 (= lt!1867782 (head!10079 newBucket!218))))

(declare-fun lt!1867768 () tuple2!54026)

(assert (=> b!4703822 (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867768 lt!1867769) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1867768))))

(declare-fun lt!1867767 () Unit!126740)

(assert (=> b!4703822 (= lt!1867767 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!316 lt!1867768 lt!1867769 lt!1867764))))

(assert (=> b!4703822 (= lt!1867768 (head!10079 oldBucket!34))))

(declare-fun lt!1867790 () ListMap!5069)

(declare-fun key!4653 () K!13920)

(declare-fun contains!15858 (ListMap!5069 K!13920) Bool)

(assert (=> b!4703822 (contains!15858 lt!1867790 key!4653)))

(declare-fun lt!1867793 () List!52686)

(assert (=> b!4703822 (= lt!1867790 (extractMap!1934 lt!1867793))))

(declare-fun lt!1867785 () ListLongMap!4235)

(declare-datatypes ((Hashable!6277 0))(
  ( (HashableExt!6276 (__x!31980 Int)) )
))
(declare-fun hashF!1323 () Hashable!6277)

(declare-fun lt!1867789 () Unit!126740)

(declare-fun lemmaListContainsThenExtractedMapContains!500 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> b!4703822 (= lt!1867789 (lemmaListContainsThenExtractedMapContains!500 lt!1867785 key!4653 hashF!1323))))

(assert (=> b!4703822 (= lt!1867785 (ListLongMap!4236 lt!1867793))))

(declare-fun lt!1867791 () tuple2!54028)

(assert (=> b!4703822 (= lt!1867793 (Cons!52562 lt!1867791 (t!359906 (toList!5706 lm!2023))))))

(assert (=> b!4703822 (= lt!1867791 (tuple2!54029 hash!405 (t!359905 oldBucket!34)))))

(declare-fun b!4703823 () Bool)

(declare-fun e!2934194 () Bool)

(assert (=> b!4703823 (= e!2934194 e!2934200)))

(declare-fun res!1986503 () Bool)

(assert (=> b!4703823 (=> res!1986503 e!2934200)))

(declare-fun removePairForKey!1503 (List!52685 K!13920) List!52685)

(assert (=> b!4703823 (= res!1986503 (not (= (removePairForKey!1503 lt!1867769 key!4653) lt!1867775)))))

(declare-fun tail!8749 (List!52685) List!52685)

(assert (=> b!4703823 (= lt!1867775 (tail!8749 newBucket!218))))

(assert (=> b!4703823 (= lt!1867769 (tail!8749 oldBucket!34))))

(declare-fun b!4703824 () Bool)

(declare-fun e!2934193 () Bool)

(declare-fun tp!1346841 () Bool)

(assert (=> b!4703824 (= e!2934193 tp!1346841)))

(declare-fun b!4703825 () Bool)

(declare-fun e!2934189 () Bool)

(declare-fun lt!1867776 () List!52686)

(declare-fun lambda!210977 () Int)

(declare-fun forall!11419 (List!52686 Int) Bool)

(assert (=> b!4703825 (= e!2934189 (forall!11419 lt!1867776 lambda!210977))))

(declare-fun b!4703826 () Bool)

(declare-fun e!2934199 () Bool)

(assert (=> b!4703826 (= e!2934199 e!2934189)))

(declare-fun res!1986494 () Bool)

(assert (=> b!4703826 (=> res!1986494 e!2934189)))

(declare-fun lt!1867777 () ListMap!5069)

(declare-fun lt!1867801 () ListMap!5069)

(assert (=> b!4703826 (= res!1986494 (not (eq!1067 lt!1867777 lt!1867801)))))

(declare-fun lt!1867795 () ListMap!5069)

(assert (=> b!4703826 (eq!1067 lt!1867795 lt!1867801)))

(declare-fun -!712 (ListMap!5069 K!13920) ListMap!5069)

(assert (=> b!4703826 (= lt!1867801 (-!712 lt!1867780 key!4653))))

(declare-fun lt!1867766 () Unit!126740)

(declare-fun lt!1867773 () ListMap!5069)

(declare-fun lemmaRemovePreservesEq!94 (ListMap!5069 ListMap!5069 K!13920) Unit!126740)

(assert (=> b!4703826 (= lt!1867766 (lemmaRemovePreservesEq!94 lt!1867773 lt!1867780 key!4653))))

(declare-fun b!4703827 () Bool)

(declare-fun e!2934198 () Bool)

(declare-fun e!2934201 () Bool)

(assert (=> b!4703827 (= e!2934198 e!2934201)))

(declare-fun res!1986498 () Bool)

(assert (=> b!4703827 (=> (not res!1986498) (not e!2934201))))

(declare-fun lt!1867794 () ListMap!5069)

(assert (=> b!4703827 (= res!1986498 (contains!15858 lt!1867794 key!4653))))

(assert (=> b!4703827 (= lt!1867794 (extractMap!1934 (toList!5706 lm!2023)))))

(declare-fun b!4703828 () Bool)

(declare-fun e!2934197 () Bool)

(declare-fun e!2934191 () Bool)

(assert (=> b!4703828 (= e!2934197 (not e!2934191))))

(declare-fun res!1986512 () Bool)

(assert (=> b!4703828 (=> res!1986512 e!2934191)))

(get-info :version)

(assert (=> b!4703828 (= res!1986512 (or (and ((_ is Cons!52561) oldBucket!34) (= (_1!30307 (h!58850 oldBucket!34)) key!4653)) (not ((_ is Cons!52561) oldBucket!34)) (= (_1!30307 (h!58850 oldBucket!34)) key!4653)))))

(assert (=> b!4703828 (= lt!1867794 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (toList!5706 lm!2023))) lt!1867764))))

(assert (=> b!4703828 (= lt!1867764 (extractMap!1934 (t!359906 (toList!5706 lm!2023))))))

(declare-fun tail!8750 (ListLongMap!4235) ListLongMap!4235)

(assert (=> b!4703828 (= (t!359906 (toList!5706 lm!2023)) (toList!5706 (tail!8750 lm!2023)))))

(declare-fun b!4703829 () Bool)

(declare-fun e!2934188 () Bool)

(assert (=> b!4703829 (= e!2934195 e!2934188)))

(declare-fun res!1986515 () Bool)

(assert (=> b!4703829 (=> res!1986515 e!2934188)))

(declare-fun lt!1867799 () ListMap!5069)

(declare-fun lt!1867800 () ListMap!5069)

(assert (=> b!4703829 (= res!1986515 (not (eq!1067 lt!1867799 lt!1867800)))))

(assert (=> b!4703829 (= lt!1867800 (-!712 lt!1867790 key!4653))))

(assert (=> b!4703829 (= lt!1867799 (extractMap!1934 lt!1867776))))

(declare-fun lt!1867770 () tuple2!54028)

(assert (=> b!4703829 (= lt!1867776 (Cons!52562 lt!1867770 (t!359906 (toList!5706 lm!2023))))))

(declare-fun lt!1867781 () List!52686)

(assert (=> b!4703829 (eq!1067 (extractMap!1934 (Cons!52562 lt!1867770 lt!1867781)) (-!712 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)) key!4653))))

(declare-fun tail!8751 (List!52686) List!52686)

(assert (=> b!4703829 (= lt!1867781 (tail!8751 lt!1867793))))

(assert (=> b!4703829 (= lt!1867770 (tuple2!54029 hash!405 lt!1867775))))

(declare-fun lt!1867784 () Unit!126740)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!82 (ListLongMap!4235 (_ BitVec 64) List!52685 List!52685 K!13920 Hashable!6277) Unit!126740)

(assert (=> b!4703829 (= lt!1867784 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!82 lt!1867785 hash!405 (t!359905 oldBucket!34) lt!1867775 key!4653 hashF!1323))))

(declare-fun res!1986508 () Bool)

(assert (=> start!477412 (=> (not res!1986508) (not e!2934198))))

(assert (=> start!477412 (= res!1986508 (forall!11419 (toList!5706 lm!2023) lambda!210977))))

(assert (=> start!477412 e!2934198))

(declare-fun inv!67794 (ListLongMap!4235) Bool)

(assert (=> start!477412 (and (inv!67794 lm!2023) e!2934193)))

(declare-fun tp_is_empty!30925 () Bool)

(assert (=> start!477412 tp_is_empty!30925))

(declare-fun e!2934192 () Bool)

(assert (=> start!477412 e!2934192))

(assert (=> start!477412 true))

(declare-fun e!2934190 () Bool)

(assert (=> start!477412 e!2934190))

(declare-fun b!4703830 () Bool)

(declare-fun res!1986511 () Bool)

(assert (=> b!4703830 (=> (not res!1986511) (not e!2934198))))

(declare-fun noDuplicateKeys!1908 (List!52685) Bool)

(assert (=> b!4703830 (= res!1986511 (noDuplicateKeys!1908 oldBucket!34))))

(declare-fun b!4703831 () Bool)

(declare-fun res!1986501 () Bool)

(declare-fun e!2934196 () Bool)

(assert (=> b!4703831 (=> (not res!1986501) (not e!2934196))))

(declare-fun allKeysSameHash!1734 (List!52685 (_ BitVec 64) Hashable!6277) Bool)

(assert (=> b!4703831 (= res!1986501 (allKeysSameHash!1734 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4703832 () Bool)

(declare-fun e!2934202 () Bool)

(assert (=> b!4703832 (= e!2934202 e!2934199)))

(declare-fun res!1986497 () Bool)

(assert (=> b!4703832 (=> res!1986497 e!2934199)))

(assert (=> b!4703832 (= res!1986497 (not (eq!1067 lt!1867777 (+!2192 lt!1867799 (h!58850 oldBucket!34)))))))

(declare-fun lt!1867798 () ListMap!5069)

(assert (=> b!4703832 (eq!1067 lt!1867798 (+!2192 lt!1867799 (h!58850 oldBucket!34)))))

(declare-fun lt!1867774 () Unit!126740)

(declare-fun lemmaAddToEqMapsPreservesEq!90 (ListMap!5069 ListMap!5069 K!13920 V!14166) Unit!126740)

(assert (=> b!4703832 (= lt!1867774 (lemmaAddToEqMapsPreservesEq!90 lt!1867800 lt!1867799 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(declare-fun b!4703833 () Bool)

(assert (=> b!4703833 (= e!2934188 e!2934202)))

(declare-fun res!1986504 () Bool)

(assert (=> b!4703833 (=> res!1986504 e!2934202)))

(assert (=> b!4703833 (= res!1986504 (not (= lt!1867795 lt!1867777)))))

(assert (=> b!4703833 (= lt!1867777 (+!2192 lt!1867800 (h!58850 oldBucket!34)))))

(assert (=> b!4703833 (= lt!1867795 (-!712 lt!1867773 key!4653))))

(assert (=> b!4703833 (= lt!1867773 (+!2192 lt!1867790 (h!58850 oldBucket!34)))))

(declare-fun lt!1867802 () ListMap!5069)

(assert (=> b!4703833 (= lt!1867802 lt!1867798)))

(assert (=> b!4703833 (= lt!1867798 (+!2192 lt!1867800 (h!58850 oldBucket!34)))))

(assert (=> b!4703833 (= lt!1867802 (-!712 (+!2192 lt!1867790 (h!58850 oldBucket!34)) key!4653))))

(declare-fun lt!1867783 () Unit!126740)

(declare-fun addRemoveCommutativeForDiffKeys!113 (ListMap!5069 K!13920 V!14166 K!13920) Unit!126740)

(assert (=> b!4703833 (= lt!1867783 (addRemoveCommutativeForDiffKeys!113 lt!1867790 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)) key!4653))))

(declare-fun b!4703834 () Bool)

(declare-fun res!1986514 () Bool)

(assert (=> b!4703834 (=> (not res!1986514) (not e!2934197))))

(assert (=> b!4703834 (= res!1986514 ((_ is Cons!52562) (toList!5706 lm!2023)))))

(declare-fun b!4703835 () Bool)

(assert (=> b!4703835 (= e!2934191 e!2934194)))

(declare-fun res!1986500 () Bool)

(assert (=> b!4703835 (=> res!1986500 e!2934194)))

(declare-fun containsKey!3195 (List!52685 K!13920) Bool)

(assert (=> b!4703835 (= res!1986500 (not (containsKey!3195 (t!359905 oldBucket!34) key!4653)))))

(assert (=> b!4703835 (containsKey!3195 oldBucket!34 key!4653)))

(declare-fun lt!1867796 () Unit!126740)

(declare-fun lemmaGetPairDefinedThenContainsKey!260 (List!52685 K!13920 Hashable!6277) Unit!126740)

(assert (=> b!4703835 (= lt!1867796 (lemmaGetPairDefinedThenContainsKey!260 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1867787 () List!52685)

(declare-datatypes ((Option!12219 0))(
  ( (None!12218) (Some!12218 (v!46721 tuple2!54026)) )
))
(declare-fun isDefined!9474 (Option!12219) Bool)

(declare-fun getPair!512 (List!52685 K!13920) Option!12219)

(assert (=> b!4703835 (isDefined!9474 (getPair!512 lt!1867787 key!4653))))

(declare-fun lt!1867792 () tuple2!54028)

(declare-fun lt!1867779 () Unit!126740)

(declare-fun forallContained!3526 (List!52686 Int tuple2!54028) Unit!126740)

(assert (=> b!4703835 (= lt!1867779 (forallContained!3526 (toList!5706 lm!2023) lambda!210977 lt!1867792))))

(declare-fun contains!15859 (List!52686 tuple2!54028) Bool)

(assert (=> b!4703835 (contains!15859 (toList!5706 lm!2023) lt!1867792)))

(declare-fun lt!1867778 () (_ BitVec 64))

(assert (=> b!4703835 (= lt!1867792 (tuple2!54029 lt!1867778 lt!1867787))))

(declare-fun lt!1867765 () Unit!126740)

(declare-fun lemmaGetValueImpliesTupleContained!317 (ListLongMap!4235 (_ BitVec 64) List!52685) Unit!126740)

(assert (=> b!4703835 (= lt!1867765 (lemmaGetValueImpliesTupleContained!317 lm!2023 lt!1867778 lt!1867787))))

(declare-fun apply!12391 (ListLongMap!4235 (_ BitVec 64)) List!52685)

(assert (=> b!4703835 (= lt!1867787 (apply!12391 lm!2023 lt!1867778))))

(declare-fun contains!15860 (ListLongMap!4235 (_ BitVec 64)) Bool)

(assert (=> b!4703835 (contains!15860 lm!2023 lt!1867778)))

(declare-fun lt!1867771 () Unit!126740)

(declare-fun lemmaInGenMapThenLongMapContainsHash!718 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> b!4703835 (= lt!1867771 (lemmaInGenMapThenLongMapContainsHash!718 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1867788 () Unit!126740)

(declare-fun lemmaInGenMapThenGetPairDefined!308 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> b!4703835 (= lt!1867788 (lemmaInGenMapThenGetPairDefined!308 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4703836 () Bool)

(declare-fun res!1986506 () Bool)

(assert (=> b!4703836 (=> (not res!1986506) (not e!2934198))))

(assert (=> b!4703836 (= res!1986506 (noDuplicateKeys!1908 newBucket!218))))

(declare-fun b!4703837 () Bool)

(declare-fun tp!1346843 () Bool)

(declare-fun tp_is_empty!30927 () Bool)

(assert (=> b!4703837 (= e!2934190 (and tp_is_empty!30925 tp_is_empty!30927 tp!1346843))))

(declare-fun b!4703838 () Bool)

(declare-fun res!1986499 () Bool)

(assert (=> b!4703838 (=> (not res!1986499) (not e!2934198))))

(assert (=> b!4703838 (= res!1986499 (allKeysSameHash!1734 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4703839 () Bool)

(declare-fun res!1986493 () Bool)

(assert (=> b!4703839 (=> res!1986493 e!2934202)))

(assert (=> b!4703839 (= res!1986493 (not (eq!1067 lt!1867773 lt!1867780)))))

(declare-fun b!4703840 () Bool)

(declare-fun res!1986507 () Bool)

(assert (=> b!4703840 (=> res!1986507 e!2934195)))

(assert (=> b!4703840 (= res!1986507 (not (= (h!58850 oldBucket!34) lt!1867782)))))

(declare-fun b!4703841 () Bool)

(declare-fun tp!1346842 () Bool)

(assert (=> b!4703841 (= e!2934192 (and tp_is_empty!30925 tp_is_empty!30927 tp!1346842))))

(declare-fun b!4703842 () Bool)

(declare-fun res!1986502 () Bool)

(assert (=> b!4703842 (=> (not res!1986502) (not e!2934198))))

(assert (=> b!4703842 (= res!1986502 (= (removePairForKey!1503 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4703843 () Bool)

(declare-fun res!1986510 () Bool)

(assert (=> b!4703843 (=> res!1986510 e!2934202)))

(assert (=> b!4703843 (= res!1986510 (not (eq!1067 lt!1867795 lt!1867777)))))

(declare-fun b!4703844 () Bool)

(assert (=> b!4703844 (= e!2934201 e!2934196)))

(declare-fun res!1986513 () Bool)

(assert (=> b!4703844 (=> (not res!1986513) (not e!2934196))))

(assert (=> b!4703844 (= res!1986513 (= lt!1867778 hash!405))))

(declare-fun hash!4200 (Hashable!6277 K!13920) (_ BitVec 64))

(assert (=> b!4703844 (= lt!1867778 (hash!4200 hashF!1323 key!4653))))

(declare-fun b!4703845 () Bool)

(assert (=> b!4703845 (= e!2934196 e!2934197)))

(declare-fun res!1986495 () Bool)

(assert (=> b!4703845 (=> (not res!1986495) (not e!2934197))))

(declare-fun head!10080 (List!52686) tuple2!54028)

(assert (=> b!4703845 (= res!1986495 (= (head!10080 (toList!5706 lm!2023)) lt!1867797))))

(assert (=> b!4703845 (= lt!1867797 (tuple2!54029 hash!405 oldBucket!34))))

(declare-fun b!4703846 () Bool)

(declare-fun res!1986492 () Bool)

(assert (=> b!4703846 (=> res!1986492 e!2934200)))

(assert (=> b!4703846 (= res!1986492 (not (= (removePairForKey!1503 (t!359905 oldBucket!34) key!4653) lt!1867775)))))

(declare-fun b!4703847 () Bool)

(declare-fun res!1986505 () Bool)

(assert (=> b!4703847 (=> (not res!1986505) (not e!2934196))))

(declare-fun allKeysSameHashInMap!1822 (ListLongMap!4235 Hashable!6277) Bool)

(assert (=> b!4703847 (= res!1986505 (allKeysSameHashInMap!1822 lm!2023 hashF!1323))))

(assert (= (and start!477412 res!1986508) b!4703830))

(assert (= (and b!4703830 res!1986511) b!4703836))

(assert (= (and b!4703836 res!1986506) b!4703842))

(assert (= (and b!4703842 res!1986502) b!4703838))

(assert (= (and b!4703838 res!1986499) b!4703827))

(assert (= (and b!4703827 res!1986498) b!4703844))

(assert (= (and b!4703844 res!1986513) b!4703831))

(assert (= (and b!4703831 res!1986501) b!4703847))

(assert (= (and b!4703847 res!1986505) b!4703845))

(assert (= (and b!4703845 res!1986495) b!4703834))

(assert (= (and b!4703834 res!1986514) b!4703828))

(assert (= (and b!4703828 (not res!1986512)) b!4703835))

(assert (= (and b!4703835 (not res!1986500)) b!4703823))

(assert (= (and b!4703823 (not res!1986503)) b!4703846))

(assert (= (and b!4703846 (not res!1986492)) b!4703822))

(assert (= (and b!4703822 (not res!1986496)) b!4703840))

(assert (= (and b!4703840 (not res!1986507)) b!4703821))

(assert (= (and b!4703821 (not res!1986509)) b!4703829))

(assert (= (and b!4703829 (not res!1986515)) b!4703833))

(assert (= (and b!4703833 (not res!1986504)) b!4703843))

(assert (= (and b!4703843 (not res!1986510)) b!4703839))

(assert (= (and b!4703839 (not res!1986493)) b!4703832))

(assert (= (and b!4703832 (not res!1986497)) b!4703826))

(assert (= (and b!4703826 (not res!1986494)) b!4703825))

(assert (= start!477412 b!4703824))

(assert (= (and start!477412 ((_ is Cons!52561) oldBucket!34)) b!4703841))

(assert (= (and start!477412 ((_ is Cons!52561) newBucket!218)) b!4703837))

(declare-fun m!5622773 () Bool)

(assert (=> b!4703843 m!5622773))

(declare-fun m!5622775 () Bool)

(assert (=> b!4703829 m!5622775))

(declare-fun m!5622777 () Bool)

(assert (=> b!4703829 m!5622777))

(declare-fun m!5622779 () Bool)

(assert (=> b!4703829 m!5622779))

(declare-fun m!5622781 () Bool)

(assert (=> b!4703829 m!5622781))

(declare-fun m!5622783 () Bool)

(assert (=> b!4703829 m!5622783))

(declare-fun m!5622785 () Bool)

(assert (=> b!4703829 m!5622785))

(declare-fun m!5622787 () Bool)

(assert (=> b!4703829 m!5622787))

(assert (=> b!4703829 m!5622777))

(assert (=> b!4703829 m!5622781))

(declare-fun m!5622789 () Bool)

(assert (=> b!4703829 m!5622789))

(assert (=> b!4703829 m!5622779))

(declare-fun m!5622791 () Bool)

(assert (=> b!4703829 m!5622791))

(declare-fun m!5622793 () Bool)

(assert (=> start!477412 m!5622793))

(declare-fun m!5622795 () Bool)

(assert (=> start!477412 m!5622795))

(declare-fun m!5622797 () Bool)

(assert (=> b!4703835 m!5622797))

(declare-fun m!5622799 () Bool)

(assert (=> b!4703835 m!5622799))

(declare-fun m!5622801 () Bool)

(assert (=> b!4703835 m!5622801))

(declare-fun m!5622803 () Bool)

(assert (=> b!4703835 m!5622803))

(declare-fun m!5622805 () Bool)

(assert (=> b!4703835 m!5622805))

(declare-fun m!5622807 () Bool)

(assert (=> b!4703835 m!5622807))

(declare-fun m!5622809 () Bool)

(assert (=> b!4703835 m!5622809))

(declare-fun m!5622811 () Bool)

(assert (=> b!4703835 m!5622811))

(declare-fun m!5622813 () Bool)

(assert (=> b!4703835 m!5622813))

(declare-fun m!5622815 () Bool)

(assert (=> b!4703835 m!5622815))

(assert (=> b!4703835 m!5622805))

(declare-fun m!5622817 () Bool)

(assert (=> b!4703835 m!5622817))

(declare-fun m!5622819 () Bool)

(assert (=> b!4703835 m!5622819))

(declare-fun m!5622821 () Bool)

(assert (=> b!4703831 m!5622821))

(declare-fun m!5622823 () Bool)

(assert (=> b!4703825 m!5622823))

(declare-fun m!5622825 () Bool)

(assert (=> b!4703839 m!5622825))

(declare-fun m!5622827 () Bool)

(assert (=> b!4703830 m!5622827))

(declare-fun m!5622829 () Bool)

(assert (=> b!4703844 m!5622829))

(declare-fun m!5622831 () Bool)

(assert (=> b!4703828 m!5622831))

(declare-fun m!5622833 () Bool)

(assert (=> b!4703828 m!5622833))

(declare-fun m!5622835 () Bool)

(assert (=> b!4703828 m!5622835))

(declare-fun m!5622837 () Bool)

(assert (=> b!4703838 m!5622837))

(declare-fun m!5622839 () Bool)

(assert (=> b!4703842 m!5622839))

(declare-fun m!5622841 () Bool)

(assert (=> b!4703823 m!5622841))

(declare-fun m!5622843 () Bool)

(assert (=> b!4703823 m!5622843))

(declare-fun m!5622845 () Bool)

(assert (=> b!4703823 m!5622845))

(declare-fun m!5622847 () Bool)

(assert (=> b!4703827 m!5622847))

(declare-fun m!5622849 () Bool)

(assert (=> b!4703827 m!5622849))

(declare-fun m!5622851 () Bool)

(assert (=> b!4703821 m!5622851))

(assert (=> b!4703821 m!5622851))

(declare-fun m!5622853 () Bool)

(assert (=> b!4703821 m!5622853))

(declare-fun m!5622855 () Bool)

(assert (=> b!4703822 m!5622855))

(declare-fun m!5622857 () Bool)

(assert (=> b!4703822 m!5622857))

(declare-fun m!5622859 () Bool)

(assert (=> b!4703822 m!5622859))

(declare-fun m!5622861 () Bool)

(assert (=> b!4703822 m!5622861))

(declare-fun m!5622863 () Bool)

(assert (=> b!4703822 m!5622863))

(declare-fun m!5622865 () Bool)

(assert (=> b!4703822 m!5622865))

(declare-fun m!5622867 () Bool)

(assert (=> b!4703822 m!5622867))

(declare-fun m!5622869 () Bool)

(assert (=> b!4703822 m!5622869))

(declare-fun m!5622871 () Bool)

(assert (=> b!4703822 m!5622871))

(declare-fun m!5622873 () Bool)

(assert (=> b!4703822 m!5622873))

(declare-fun m!5622875 () Bool)

(assert (=> b!4703822 m!5622875))

(declare-fun m!5622877 () Bool)

(assert (=> b!4703822 m!5622877))

(assert (=> b!4703822 m!5622869))

(declare-fun m!5622879 () Bool)

(assert (=> b!4703822 m!5622879))

(declare-fun m!5622881 () Bool)

(assert (=> b!4703822 m!5622881))

(declare-fun m!5622883 () Bool)

(assert (=> b!4703822 m!5622883))

(assert (=> b!4703822 m!5622863))

(assert (=> b!4703822 m!5622879))

(declare-fun m!5622885 () Bool)

(assert (=> b!4703822 m!5622885))

(declare-fun m!5622887 () Bool)

(assert (=> b!4703822 m!5622887))

(assert (=> b!4703822 m!5622881))

(declare-fun m!5622889 () Bool)

(assert (=> b!4703822 m!5622889))

(assert (=> b!4703822 m!5622855))

(assert (=> b!4703822 m!5622861))

(assert (=> b!4703822 m!5622889))

(declare-fun m!5622891 () Bool)

(assert (=> b!4703822 m!5622891))

(declare-fun m!5622893 () Bool)

(assert (=> b!4703846 m!5622893))

(declare-fun m!5622895 () Bool)

(assert (=> b!4703832 m!5622895))

(assert (=> b!4703832 m!5622895))

(declare-fun m!5622897 () Bool)

(assert (=> b!4703832 m!5622897))

(assert (=> b!4703832 m!5622895))

(declare-fun m!5622899 () Bool)

(assert (=> b!4703832 m!5622899))

(declare-fun m!5622901 () Bool)

(assert (=> b!4703832 m!5622901))

(declare-fun m!5622903 () Bool)

(assert (=> b!4703847 m!5622903))

(declare-fun m!5622905 () Bool)

(assert (=> b!4703833 m!5622905))

(declare-fun m!5622907 () Bool)

(assert (=> b!4703833 m!5622907))

(declare-fun m!5622909 () Bool)

(assert (=> b!4703833 m!5622909))

(declare-fun m!5622911 () Bool)

(assert (=> b!4703833 m!5622911))

(declare-fun m!5622913 () Bool)

(assert (=> b!4703833 m!5622913))

(assert (=> b!4703833 m!5622911))

(declare-fun m!5622915 () Bool)

(assert (=> b!4703845 m!5622915))

(declare-fun m!5622917 () Bool)

(assert (=> b!4703826 m!5622917))

(declare-fun m!5622919 () Bool)

(assert (=> b!4703826 m!5622919))

(declare-fun m!5622921 () Bool)

(assert (=> b!4703826 m!5622921))

(declare-fun m!5622923 () Bool)

(assert (=> b!4703826 m!5622923))

(declare-fun m!5622925 () Bool)

(assert (=> b!4703836 m!5622925))

(check-sat (not b!4703837) (not b!4703841) (not b!4703838) (not b!4703829) (not b!4703831) (not b!4703826) (not b!4703839) (not b!4703846) (not b!4703842) (not b!4703824) (not b!4703825) (not b!4703823) (not b!4703836) (not b!4703822) (not b!4703827) (not b!4703843) (not start!477412) (not b!4703845) tp_is_empty!30925 (not b!4703847) (not b!4703832) (not b!4703835) (not b!4703821) (not b!4703844) (not b!4703828) (not b!4703833) tp_is_empty!30927 (not b!4703830))
(check-sat)
(get-model)

(declare-fun d!1496544 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9290 (List!52685) (InoxSet tuple2!54026))

(assert (=> d!1496544 (= (eq!1067 lt!1867777 (+!2192 lt!1867799 (h!58850 oldBucket!34))) (= (content!9290 (toList!5705 lt!1867777)) (content!9290 (toList!5705 (+!2192 lt!1867799 (h!58850 oldBucket!34))))))))

(declare-fun bs!1097394 () Bool)

(assert (= bs!1097394 d!1496544))

(declare-fun m!5622927 () Bool)

(assert (=> bs!1097394 m!5622927))

(declare-fun m!5622929 () Bool)

(assert (=> bs!1097394 m!5622929))

(assert (=> b!4703832 d!1496544))

(declare-fun d!1496546 () Bool)

(declare-fun e!2934205 () Bool)

(assert (=> d!1496546 e!2934205))

(declare-fun res!1986521 () Bool)

(assert (=> d!1496546 (=> (not res!1986521) (not e!2934205))))

(declare-fun lt!1867813 () ListMap!5069)

(assert (=> d!1496546 (= res!1986521 (contains!15858 lt!1867813 (_1!30307 (h!58850 oldBucket!34))))))

(declare-fun lt!1867814 () List!52685)

(assert (=> d!1496546 (= lt!1867813 (ListMap!5070 lt!1867814))))

(declare-fun lt!1867812 () Unit!126740)

(declare-fun lt!1867811 () Unit!126740)

(assert (=> d!1496546 (= lt!1867812 lt!1867811)))

(declare-datatypes ((Option!12221 0))(
  ( (None!12220) (Some!12220 (v!46727 V!14166)) )
))
(declare-fun getValueByKey!1867 (List!52685 K!13920) Option!12221)

(assert (=> d!1496546 (= (getValueByKey!1867 lt!1867814 (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1044 (List!52685 K!13920 V!14166) Unit!126740)

(assert (=> d!1496546 (= lt!1867811 (lemmaContainsTupThenGetReturnValue!1044 lt!1867814 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!552 (List!52685 K!13920 V!14166) List!52685)

(assert (=> d!1496546 (= lt!1867814 (insertNoDuplicatedKeys!552 (toList!5705 lt!1867799) (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496546 (= (+!2192 lt!1867799 (h!58850 oldBucket!34)) lt!1867813)))

(declare-fun b!4703852 () Bool)

(declare-fun res!1986520 () Bool)

(assert (=> b!4703852 (=> (not res!1986520) (not e!2934205))))

(assert (=> b!4703852 (= res!1986520 (= (getValueByKey!1867 (toList!5705 lt!1867813) (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun b!4703853 () Bool)

(declare-fun contains!15863 (List!52685 tuple2!54026) Bool)

(assert (=> b!4703853 (= e!2934205 (contains!15863 (toList!5705 lt!1867813) (h!58850 oldBucket!34)))))

(assert (= (and d!1496546 res!1986521) b!4703852))

(assert (= (and b!4703852 res!1986520) b!4703853))

(declare-fun m!5622931 () Bool)

(assert (=> d!1496546 m!5622931))

(declare-fun m!5622933 () Bool)

(assert (=> d!1496546 m!5622933))

(declare-fun m!5622935 () Bool)

(assert (=> d!1496546 m!5622935))

(declare-fun m!5622937 () Bool)

(assert (=> d!1496546 m!5622937))

(declare-fun m!5622939 () Bool)

(assert (=> b!4703852 m!5622939))

(declare-fun m!5622941 () Bool)

(assert (=> b!4703853 m!5622941))

(assert (=> b!4703832 d!1496546))

(declare-fun d!1496548 () Bool)

(assert (=> d!1496548 (= (eq!1067 lt!1867798 (+!2192 lt!1867799 (h!58850 oldBucket!34))) (= (content!9290 (toList!5705 lt!1867798)) (content!9290 (toList!5705 (+!2192 lt!1867799 (h!58850 oldBucket!34))))))))

(declare-fun bs!1097395 () Bool)

(assert (= bs!1097395 d!1496548))

(declare-fun m!5622943 () Bool)

(assert (=> bs!1097395 m!5622943))

(assert (=> bs!1097395 m!5622929))

(assert (=> b!4703832 d!1496548))

(declare-fun d!1496550 () Bool)

(assert (=> d!1496550 (eq!1067 (+!2192 lt!1867800 (tuple2!54027 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)))) (+!2192 lt!1867799 (tuple2!54027 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun lt!1867817 () Unit!126740)

(declare-fun choose!32977 (ListMap!5069 ListMap!5069 K!13920 V!14166) Unit!126740)

(assert (=> d!1496550 (= lt!1867817 (choose!32977 lt!1867800 lt!1867799 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496550 (eq!1067 lt!1867800 lt!1867799)))

(assert (=> d!1496550 (= (lemmaAddToEqMapsPreservesEq!90 lt!1867800 lt!1867799 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))) lt!1867817)))

(declare-fun bs!1097396 () Bool)

(assert (= bs!1097396 d!1496550))

(declare-fun m!5622945 () Bool)

(assert (=> bs!1097396 m!5622945))

(declare-fun m!5622947 () Bool)

(assert (=> bs!1097396 m!5622947))

(declare-fun m!5622949 () Bool)

(assert (=> bs!1097396 m!5622949))

(declare-fun m!5622951 () Bool)

(assert (=> bs!1097396 m!5622951))

(assert (=> bs!1097396 m!5622945))

(assert (=> bs!1097396 m!5622949))

(declare-fun m!5622953 () Bool)

(assert (=> bs!1097396 m!5622953))

(assert (=> b!4703832 d!1496550))

(declare-fun d!1496552 () Bool)

(declare-fun e!2934214 () Bool)

(assert (=> d!1496552 e!2934214))

(declare-fun res!1986524 () Bool)

(assert (=> d!1496552 (=> (not res!1986524) (not e!2934214))))

(declare-fun lt!1867823 () ListMap!5069)

(assert (=> d!1496552 (= res!1986524 (not (contains!15858 lt!1867823 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!375 (List!52685 K!13920) List!52685)

(assert (=> d!1496552 (= lt!1867823 (ListMap!5070 (removePresrvNoDuplicatedKeys!375 (toList!5705 (+!2192 lt!1867790 (h!58850 oldBucket!34))) key!4653)))))

(assert (=> d!1496552 (= (-!712 (+!2192 lt!1867790 (h!58850 oldBucket!34)) key!4653) lt!1867823)))

(declare-fun b!4703868 () Bool)

(declare-datatypes ((List!52688 0))(
  ( (Nil!52564) (Cons!52564 (h!58855 K!13920) (t!359910 List!52688)) )
))
(declare-fun content!9292 (List!52688) (InoxSet K!13920))

(declare-fun keys!18811 (ListMap!5069) List!52688)

(assert (=> b!4703868 (= e!2934214 (= ((_ map and) (content!9292 (keys!18811 (+!2192 lt!1867790 (h!58850 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13920 Bool)) false) key!4653 true))) (content!9292 (keys!18811 lt!1867823))))))

(assert (= (and d!1496552 res!1986524) b!4703868))

(declare-fun m!5622961 () Bool)

(assert (=> d!1496552 m!5622961))

(declare-fun m!5622963 () Bool)

(assert (=> d!1496552 m!5622963))

(declare-fun m!5622965 () Bool)

(assert (=> b!4703868 m!5622965))

(declare-fun m!5622967 () Bool)

(assert (=> b!4703868 m!5622967))

(declare-fun m!5622969 () Bool)

(assert (=> b!4703868 m!5622969))

(declare-fun m!5622971 () Bool)

(assert (=> b!4703868 m!5622971))

(declare-fun m!5622973 () Bool)

(assert (=> b!4703868 m!5622973))

(assert (=> b!4703868 m!5622971))

(assert (=> b!4703868 m!5622911))

(assert (=> b!4703868 m!5622967))

(assert (=> b!4703833 d!1496552))

(declare-fun d!1496562 () Bool)

(declare-fun e!2934217 () Bool)

(assert (=> d!1496562 e!2934217))

(declare-fun res!1986528 () Bool)

(assert (=> d!1496562 (=> (not res!1986528) (not e!2934217))))

(declare-fun lt!1867828 () ListMap!5069)

(assert (=> d!1496562 (= res!1986528 (contains!15858 lt!1867828 (_1!30307 (h!58850 oldBucket!34))))))

(declare-fun lt!1867829 () List!52685)

(assert (=> d!1496562 (= lt!1867828 (ListMap!5070 lt!1867829))))

(declare-fun lt!1867827 () Unit!126740)

(declare-fun lt!1867826 () Unit!126740)

(assert (=> d!1496562 (= lt!1867827 lt!1867826)))

(assert (=> d!1496562 (= (getValueByKey!1867 lt!1867829 (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496562 (= lt!1867826 (lemmaContainsTupThenGetReturnValue!1044 lt!1867829 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496562 (= lt!1867829 (insertNoDuplicatedKeys!552 (toList!5705 lt!1867790) (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496562 (= (+!2192 lt!1867790 (h!58850 oldBucket!34)) lt!1867828)))

(declare-fun b!4703871 () Bool)

(declare-fun res!1986527 () Bool)

(assert (=> b!4703871 (=> (not res!1986527) (not e!2934217))))

(assert (=> b!4703871 (= res!1986527 (= (getValueByKey!1867 (toList!5705 lt!1867828) (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun b!4703872 () Bool)

(assert (=> b!4703872 (= e!2934217 (contains!15863 (toList!5705 lt!1867828) (h!58850 oldBucket!34)))))

(assert (= (and d!1496562 res!1986528) b!4703871))

(assert (= (and b!4703871 res!1986527) b!4703872))

(declare-fun m!5622989 () Bool)

(assert (=> d!1496562 m!5622989))

(declare-fun m!5622991 () Bool)

(assert (=> d!1496562 m!5622991))

(declare-fun m!5622993 () Bool)

(assert (=> d!1496562 m!5622993))

(declare-fun m!5622995 () Bool)

(assert (=> d!1496562 m!5622995))

(declare-fun m!5622997 () Bool)

(assert (=> b!4703871 m!5622997))

(declare-fun m!5622999 () Bool)

(assert (=> b!4703872 m!5622999))

(assert (=> b!4703833 d!1496562))

(declare-fun d!1496566 () Bool)

(declare-fun e!2934219 () Bool)

(assert (=> d!1496566 e!2934219))

(declare-fun res!1986530 () Bool)

(assert (=> d!1496566 (=> (not res!1986530) (not e!2934219))))

(declare-fun lt!1867831 () ListMap!5069)

(assert (=> d!1496566 (= res!1986530 (not (contains!15858 lt!1867831 key!4653)))))

(assert (=> d!1496566 (= lt!1867831 (ListMap!5070 (removePresrvNoDuplicatedKeys!375 (toList!5705 lt!1867773) key!4653)))))

(assert (=> d!1496566 (= (-!712 lt!1867773 key!4653) lt!1867831)))

(declare-fun b!4703874 () Bool)

(assert (=> b!4703874 (= e!2934219 (= ((_ map and) (content!9292 (keys!18811 lt!1867773)) ((_ map not) (store ((as const (Array K!13920 Bool)) false) key!4653 true))) (content!9292 (keys!18811 lt!1867831))))))

(assert (= (and d!1496566 res!1986530) b!4703874))

(declare-fun m!5623001 () Bool)

(assert (=> d!1496566 m!5623001))

(declare-fun m!5623003 () Bool)

(assert (=> d!1496566 m!5623003))

(assert (=> b!4703874 m!5622965))

(declare-fun m!5623005 () Bool)

(assert (=> b!4703874 m!5623005))

(declare-fun m!5623007 () Bool)

(assert (=> b!4703874 m!5623007))

(declare-fun m!5623009 () Bool)

(assert (=> b!4703874 m!5623009))

(declare-fun m!5623011 () Bool)

(assert (=> b!4703874 m!5623011))

(assert (=> b!4703874 m!5623009))

(assert (=> b!4703874 m!5623005))

(assert (=> b!4703833 d!1496566))

(declare-fun d!1496568 () Bool)

(assert (=> d!1496568 (= (-!712 (+!2192 lt!1867790 (tuple2!54027 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)))) key!4653) (+!2192 (-!712 lt!1867790 key!4653) (tuple2!54027 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun lt!1867854 () Unit!126740)

(declare-fun choose!32979 (ListMap!5069 K!13920 V!14166 K!13920) Unit!126740)

(assert (=> d!1496568 (= lt!1867854 (choose!32979 lt!1867790 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)) key!4653))))

(assert (=> d!1496568 (not (= (_1!30307 (h!58850 oldBucket!34)) key!4653))))

(assert (=> d!1496568 (= (addRemoveCommutativeForDiffKeys!113 lt!1867790 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34)) key!4653) lt!1867854)))

(declare-fun bs!1097398 () Bool)

(assert (= bs!1097398 d!1496568))

(assert (=> bs!1097398 m!5622791))

(declare-fun m!5623057 () Bool)

(assert (=> bs!1097398 m!5623057))

(declare-fun m!5623059 () Bool)

(assert (=> bs!1097398 m!5623059))

(declare-fun m!5623061 () Bool)

(assert (=> bs!1097398 m!5623061))

(assert (=> bs!1097398 m!5623059))

(declare-fun m!5623063 () Bool)

(assert (=> bs!1097398 m!5623063))

(assert (=> bs!1097398 m!5622791))

(assert (=> b!4703833 d!1496568))

(declare-fun d!1496578 () Bool)

(declare-fun e!2934225 () Bool)

(assert (=> d!1496578 e!2934225))

(declare-fun res!1986541 () Bool)

(assert (=> d!1496578 (=> (not res!1986541) (not e!2934225))))

(declare-fun lt!1867857 () ListMap!5069)

(assert (=> d!1496578 (= res!1986541 (contains!15858 lt!1867857 (_1!30307 (h!58850 oldBucket!34))))))

(declare-fun lt!1867858 () List!52685)

(assert (=> d!1496578 (= lt!1867857 (ListMap!5070 lt!1867858))))

(declare-fun lt!1867856 () Unit!126740)

(declare-fun lt!1867855 () Unit!126740)

(assert (=> d!1496578 (= lt!1867856 lt!1867855)))

(assert (=> d!1496578 (= (getValueByKey!1867 lt!1867858 (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496578 (= lt!1867855 (lemmaContainsTupThenGetReturnValue!1044 lt!1867858 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496578 (= lt!1867858 (insertNoDuplicatedKeys!552 (toList!5705 lt!1867800) (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496578 (= (+!2192 lt!1867800 (h!58850 oldBucket!34)) lt!1867857)))

(declare-fun b!4703884 () Bool)

(declare-fun res!1986540 () Bool)

(assert (=> b!4703884 (=> (not res!1986540) (not e!2934225))))

(assert (=> b!4703884 (= res!1986540 (= (getValueByKey!1867 (toList!5705 lt!1867857) (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun b!4703885 () Bool)

(assert (=> b!4703885 (= e!2934225 (contains!15863 (toList!5705 lt!1867857) (h!58850 oldBucket!34)))))

(assert (= (and d!1496578 res!1986541) b!4703884))

(assert (= (and b!4703884 res!1986540) b!4703885))

(declare-fun m!5623065 () Bool)

(assert (=> d!1496578 m!5623065))

(declare-fun m!5623067 () Bool)

(assert (=> d!1496578 m!5623067))

(declare-fun m!5623069 () Bool)

(assert (=> d!1496578 m!5623069))

(declare-fun m!5623071 () Bool)

(assert (=> d!1496578 m!5623071))

(declare-fun m!5623073 () Bool)

(assert (=> b!4703884 m!5623073))

(declare-fun m!5623075 () Bool)

(assert (=> b!4703885 m!5623075))

(assert (=> b!4703833 d!1496578))

(declare-fun d!1496580 () Bool)

(assert (=> d!1496580 (= (tail!8751 lt!1867793) (t!359906 lt!1867793))))

(assert (=> b!4703829 d!1496580))

(declare-fun bs!1097400 () Bool)

(declare-fun d!1496582 () Bool)

(assert (= bs!1097400 (and d!1496582 start!477412)))

(declare-fun lambda!210983 () Int)

(assert (=> bs!1097400 (= lambda!210983 lambda!210977)))

(declare-fun lt!1867888 () ListMap!5069)

(declare-fun invariantList!1454 (List!52685) Bool)

(assert (=> d!1496582 (invariantList!1454 (toList!5705 lt!1867888))))

(declare-fun e!2934253 () ListMap!5069)

(assert (=> d!1496582 (= lt!1867888 e!2934253)))

(declare-fun c!803982 () Bool)

(assert (=> d!1496582 (= c!803982 ((_ is Cons!52562) (Cons!52562 lt!1867791 lt!1867781)))))

(assert (=> d!1496582 (forall!11419 (Cons!52562 lt!1867791 lt!1867781) lambda!210983)))

(assert (=> d!1496582 (= (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)) lt!1867888)))

(declare-fun b!4703927 () Bool)

(assert (=> b!4703927 (= e!2934253 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (Cons!52562 lt!1867791 lt!1867781))) (extractMap!1934 (t!359906 (Cons!52562 lt!1867791 lt!1867781)))))))

(declare-fun b!4703928 () Bool)

(assert (=> b!4703928 (= e!2934253 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496582 c!803982) b!4703927))

(assert (= (and d!1496582 (not c!803982)) b!4703928))

(declare-fun m!5623107 () Bool)

(assert (=> d!1496582 m!5623107))

(declare-fun m!5623109 () Bool)

(assert (=> d!1496582 m!5623109))

(declare-fun m!5623111 () Bool)

(assert (=> b!4703927 m!5623111))

(assert (=> b!4703927 m!5623111))

(declare-fun m!5623113 () Bool)

(assert (=> b!4703927 m!5623113))

(assert (=> b!4703829 d!1496582))

(declare-fun bs!1097402 () Bool)

(declare-fun d!1496590 () Bool)

(assert (= bs!1097402 (and d!1496590 start!477412)))

(declare-fun lambda!210984 () Int)

(assert (=> bs!1097402 (= lambda!210984 lambda!210977)))

(declare-fun bs!1097403 () Bool)

(assert (= bs!1097403 (and d!1496590 d!1496582)))

(assert (=> bs!1097403 (= lambda!210984 lambda!210983)))

(declare-fun lt!1867889 () ListMap!5069)

(assert (=> d!1496590 (invariantList!1454 (toList!5705 lt!1867889))))

(declare-fun e!2934256 () ListMap!5069)

(assert (=> d!1496590 (= lt!1867889 e!2934256)))

(declare-fun c!803983 () Bool)

(assert (=> d!1496590 (= c!803983 ((_ is Cons!52562) lt!1867776))))

(assert (=> d!1496590 (forall!11419 lt!1867776 lambda!210984)))

(assert (=> d!1496590 (= (extractMap!1934 lt!1867776) lt!1867889)))

(declare-fun b!4703931 () Bool)

(assert (=> b!4703931 (= e!2934256 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 lt!1867776)) (extractMap!1934 (t!359906 lt!1867776))))))

(declare-fun b!4703932 () Bool)

(assert (=> b!4703932 (= e!2934256 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496590 c!803983) b!4703931))

(assert (= (and d!1496590 (not c!803983)) b!4703932))

(declare-fun m!5623119 () Bool)

(assert (=> d!1496590 m!5623119))

(declare-fun m!5623121 () Bool)

(assert (=> d!1496590 m!5623121))

(declare-fun m!5623123 () Bool)

(assert (=> b!4703931 m!5623123))

(assert (=> b!4703931 m!5623123))

(declare-fun m!5623125 () Bool)

(assert (=> b!4703931 m!5623125))

(assert (=> b!4703829 d!1496590))

(declare-fun d!1496594 () Bool)

(assert (=> d!1496594 (= (eq!1067 lt!1867799 lt!1867800) (= (content!9290 (toList!5705 lt!1867799)) (content!9290 (toList!5705 lt!1867800))))))

(declare-fun bs!1097404 () Bool)

(assert (= bs!1097404 d!1496594))

(declare-fun m!5623127 () Bool)

(assert (=> bs!1097404 m!5623127))

(declare-fun m!5623129 () Bool)

(assert (=> bs!1097404 m!5623129))

(assert (=> b!4703829 d!1496594))

(declare-fun bs!1097409 () Bool)

(declare-fun d!1496596 () Bool)

(assert (= bs!1097409 (and d!1496596 start!477412)))

(declare-fun lambda!210993 () Int)

(assert (=> bs!1097409 (= lambda!210993 lambda!210977)))

(declare-fun bs!1097410 () Bool)

(assert (= bs!1097410 (and d!1496596 d!1496582)))

(assert (=> bs!1097410 (= lambda!210993 lambda!210983)))

(declare-fun bs!1097411 () Bool)

(assert (= bs!1097411 (and d!1496596 d!1496590)))

(assert (=> bs!1097411 (= lambda!210993 lambda!210984)))

(assert (=> d!1496596 (eq!1067 (extractMap!1934 (Cons!52562 (tuple2!54029 hash!405 lt!1867775) (tail!8751 (toList!5706 lt!1867785)))) (-!712 (extractMap!1934 (Cons!52562 (tuple2!54029 hash!405 (t!359905 oldBucket!34)) (tail!8751 (toList!5706 lt!1867785)))) key!4653))))

(declare-fun lt!1867895 () Unit!126740)

(declare-fun choose!32981 (ListLongMap!4235 (_ BitVec 64) List!52685 List!52685 K!13920 Hashable!6277) Unit!126740)

(assert (=> d!1496596 (= lt!1867895 (choose!32981 lt!1867785 hash!405 (t!359905 oldBucket!34) lt!1867775 key!4653 hashF!1323))))

(assert (=> d!1496596 (forall!11419 (toList!5706 lt!1867785) lambda!210993)))

(assert (=> d!1496596 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!82 lt!1867785 hash!405 (t!359905 oldBucket!34) lt!1867775 key!4653 hashF!1323) lt!1867895)))

(declare-fun bs!1097412 () Bool)

(assert (= bs!1097412 d!1496596))

(declare-fun m!5623141 () Bool)

(assert (=> bs!1097412 m!5623141))

(declare-fun m!5623143 () Bool)

(assert (=> bs!1097412 m!5623143))

(declare-fun m!5623145 () Bool)

(assert (=> bs!1097412 m!5623145))

(declare-fun m!5623147 () Bool)

(assert (=> bs!1097412 m!5623147))

(declare-fun m!5623149 () Bool)

(assert (=> bs!1097412 m!5623149))

(declare-fun m!5623151 () Bool)

(assert (=> bs!1097412 m!5623151))

(declare-fun m!5623153 () Bool)

(assert (=> bs!1097412 m!5623153))

(assert (=> bs!1097412 m!5623153))

(assert (=> bs!1097412 m!5623145))

(assert (=> bs!1097412 m!5623143))

(assert (=> b!4703829 d!1496596))

(declare-fun d!1496602 () Bool)

(declare-fun e!2934257 () Bool)

(assert (=> d!1496602 e!2934257))

(declare-fun res!1986557 () Bool)

(assert (=> d!1496602 (=> (not res!1986557) (not e!2934257))))

(declare-fun lt!1867896 () ListMap!5069)

(assert (=> d!1496602 (= res!1986557 (not (contains!15858 lt!1867896 key!4653)))))

(assert (=> d!1496602 (= lt!1867896 (ListMap!5070 (removePresrvNoDuplicatedKeys!375 (toList!5705 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781))) key!4653)))))

(assert (=> d!1496602 (= (-!712 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)) key!4653) lt!1867896)))

(declare-fun b!4703937 () Bool)

(assert (=> b!4703937 (= e!2934257 (= ((_ map and) (content!9292 (keys!18811 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)))) ((_ map not) (store ((as const (Array K!13920 Bool)) false) key!4653 true))) (content!9292 (keys!18811 lt!1867896))))))

(assert (= (and d!1496602 res!1986557) b!4703937))

(declare-fun m!5623155 () Bool)

(assert (=> d!1496602 m!5623155))

(declare-fun m!5623157 () Bool)

(assert (=> d!1496602 m!5623157))

(assert (=> b!4703937 m!5622965))

(declare-fun m!5623159 () Bool)

(assert (=> b!4703937 m!5623159))

(declare-fun m!5623161 () Bool)

(assert (=> b!4703937 m!5623161))

(declare-fun m!5623163 () Bool)

(assert (=> b!4703937 m!5623163))

(declare-fun m!5623165 () Bool)

(assert (=> b!4703937 m!5623165))

(assert (=> b!4703937 m!5623163))

(assert (=> b!4703937 m!5622779))

(assert (=> b!4703937 m!5623159))

(assert (=> b!4703829 d!1496602))

(declare-fun d!1496604 () Bool)

(assert (=> d!1496604 (= (eq!1067 (extractMap!1934 (Cons!52562 lt!1867770 lt!1867781)) (-!712 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)) key!4653)) (= (content!9290 (toList!5705 (extractMap!1934 (Cons!52562 lt!1867770 lt!1867781)))) (content!9290 (toList!5705 (-!712 (extractMap!1934 (Cons!52562 lt!1867791 lt!1867781)) key!4653)))))))

(declare-fun bs!1097413 () Bool)

(assert (= bs!1097413 d!1496604))

(declare-fun m!5623167 () Bool)

(assert (=> bs!1097413 m!5623167))

(declare-fun m!5623169 () Bool)

(assert (=> bs!1097413 m!5623169))

(assert (=> b!4703829 d!1496604))

(declare-fun d!1496606 () Bool)

(declare-fun e!2934258 () Bool)

(assert (=> d!1496606 e!2934258))

(declare-fun res!1986558 () Bool)

(assert (=> d!1496606 (=> (not res!1986558) (not e!2934258))))

(declare-fun lt!1867897 () ListMap!5069)

(assert (=> d!1496606 (= res!1986558 (not (contains!15858 lt!1867897 key!4653)))))

(assert (=> d!1496606 (= lt!1867897 (ListMap!5070 (removePresrvNoDuplicatedKeys!375 (toList!5705 lt!1867790) key!4653)))))

(assert (=> d!1496606 (= (-!712 lt!1867790 key!4653) lt!1867897)))

(declare-fun b!4703938 () Bool)

(assert (=> b!4703938 (= e!2934258 (= ((_ map and) (content!9292 (keys!18811 lt!1867790)) ((_ map not) (store ((as const (Array K!13920 Bool)) false) key!4653 true))) (content!9292 (keys!18811 lt!1867897))))))

(assert (= (and d!1496606 res!1986558) b!4703938))

(declare-fun m!5623171 () Bool)

(assert (=> d!1496606 m!5623171))

(declare-fun m!5623173 () Bool)

(assert (=> d!1496606 m!5623173))

(assert (=> b!4703938 m!5622965))

(declare-fun m!5623175 () Bool)

(assert (=> b!4703938 m!5623175))

(declare-fun m!5623177 () Bool)

(assert (=> b!4703938 m!5623177))

(declare-fun m!5623179 () Bool)

(assert (=> b!4703938 m!5623179))

(declare-fun m!5623181 () Bool)

(assert (=> b!4703938 m!5623181))

(assert (=> b!4703938 m!5623179))

(assert (=> b!4703938 m!5623175))

(assert (=> b!4703829 d!1496606))

(declare-fun bs!1097414 () Bool)

(declare-fun d!1496608 () Bool)

(assert (= bs!1097414 (and d!1496608 start!477412)))

(declare-fun lambda!210994 () Int)

(assert (=> bs!1097414 (= lambda!210994 lambda!210977)))

(declare-fun bs!1097415 () Bool)

(assert (= bs!1097415 (and d!1496608 d!1496582)))

(assert (=> bs!1097415 (= lambda!210994 lambda!210983)))

(declare-fun bs!1097416 () Bool)

(assert (= bs!1097416 (and d!1496608 d!1496590)))

(assert (=> bs!1097416 (= lambda!210994 lambda!210984)))

(declare-fun bs!1097417 () Bool)

(assert (= bs!1097417 (and d!1496608 d!1496596)))

(assert (=> bs!1097417 (= lambda!210994 lambda!210993)))

(declare-fun lt!1867898 () ListMap!5069)

(assert (=> d!1496608 (invariantList!1454 (toList!5705 lt!1867898))))

(declare-fun e!2934259 () ListMap!5069)

(assert (=> d!1496608 (= lt!1867898 e!2934259)))

(declare-fun c!803984 () Bool)

(assert (=> d!1496608 (= c!803984 ((_ is Cons!52562) (Cons!52562 lt!1867770 lt!1867781)))))

(assert (=> d!1496608 (forall!11419 (Cons!52562 lt!1867770 lt!1867781) lambda!210994)))

(assert (=> d!1496608 (= (extractMap!1934 (Cons!52562 lt!1867770 lt!1867781)) lt!1867898)))

(declare-fun b!4703939 () Bool)

(assert (=> b!4703939 (= e!2934259 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (Cons!52562 lt!1867770 lt!1867781))) (extractMap!1934 (t!359906 (Cons!52562 lt!1867770 lt!1867781)))))))

(declare-fun b!4703940 () Bool)

(assert (=> b!4703940 (= e!2934259 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496608 c!803984) b!4703939))

(assert (= (and d!1496608 (not c!803984)) b!4703940))

(declare-fun m!5623183 () Bool)

(assert (=> d!1496608 m!5623183))

(declare-fun m!5623185 () Bool)

(assert (=> d!1496608 m!5623185))

(declare-fun m!5623187 () Bool)

(assert (=> b!4703939 m!5623187))

(assert (=> b!4703939 m!5623187))

(declare-fun m!5623189 () Bool)

(assert (=> b!4703939 m!5623189))

(assert (=> b!4703829 d!1496608))

(declare-fun d!1496610 () Bool)

(declare-fun res!1986563 () Bool)

(declare-fun e!2934264 () Bool)

(assert (=> d!1496610 (=> res!1986563 e!2934264)))

(assert (=> d!1496610 (= res!1986563 (not ((_ is Cons!52561) oldBucket!34)))))

(assert (=> d!1496610 (= (noDuplicateKeys!1908 oldBucket!34) e!2934264)))

(declare-fun b!4703945 () Bool)

(declare-fun e!2934265 () Bool)

(assert (=> b!4703945 (= e!2934264 e!2934265)))

(declare-fun res!1986564 () Bool)

(assert (=> b!4703945 (=> (not res!1986564) (not e!2934265))))

(assert (=> b!4703945 (= res!1986564 (not (containsKey!3195 (t!359905 oldBucket!34) (_1!30307 (h!58850 oldBucket!34)))))))

(declare-fun b!4703946 () Bool)

(assert (=> b!4703946 (= e!2934265 (noDuplicateKeys!1908 (t!359905 oldBucket!34)))))

(assert (= (and d!1496610 (not res!1986563)) b!4703945))

(assert (= (and b!4703945 res!1986564) b!4703946))

(declare-fun m!5623191 () Bool)

(assert (=> b!4703945 m!5623191))

(declare-fun m!5623193 () Bool)

(assert (=> b!4703946 m!5623193))

(assert (=> b!4703830 d!1496610))

(declare-fun d!1496612 () Bool)

(assert (=> d!1496612 true))

(assert (=> d!1496612 true))

(declare-fun lambda!210997 () Int)

(declare-fun forall!11421 (List!52685 Int) Bool)

(assert (=> d!1496612 (= (allKeysSameHash!1734 newBucket!218 hash!405 hashF!1323) (forall!11421 newBucket!218 lambda!210997))))

(declare-fun bs!1097418 () Bool)

(assert (= bs!1097418 d!1496612))

(declare-fun m!5623195 () Bool)

(assert (=> bs!1097418 m!5623195))

(assert (=> b!4703831 d!1496612))

(declare-fun b!4703969 () Bool)

(declare-fun e!2934281 () Unit!126740)

(declare-fun e!2934282 () Unit!126740)

(assert (=> b!4703969 (= e!2934281 e!2934282)))

(declare-fun c!803991 () Bool)

(declare-fun call!328863 () Bool)

(assert (=> b!4703969 (= c!803991 call!328863)))

(declare-fun b!4703970 () Bool)

(declare-fun Unit!126755 () Unit!126740)

(assert (=> b!4703970 (= e!2934282 Unit!126755)))

(declare-fun d!1496614 () Bool)

(declare-fun e!2934279 () Bool)

(assert (=> d!1496614 e!2934279))

(declare-fun res!1986571 () Bool)

(assert (=> d!1496614 (=> res!1986571 e!2934279)))

(declare-fun e!2934278 () Bool)

(assert (=> d!1496614 (= res!1986571 e!2934278)))

(declare-fun res!1986573 () Bool)

(assert (=> d!1496614 (=> (not res!1986573) (not e!2934278))))

(declare-fun lt!1867919 () Bool)

(assert (=> d!1496614 (= res!1986573 (not lt!1867919))))

(declare-fun lt!1867915 () Bool)

(assert (=> d!1496614 (= lt!1867919 lt!1867915)))

(declare-fun lt!1867917 () Unit!126740)

(assert (=> d!1496614 (= lt!1867917 e!2934281)))

(declare-fun c!803993 () Bool)

(assert (=> d!1496614 (= c!803993 lt!1867915)))

(declare-fun containsKey!3197 (List!52685 K!13920) Bool)

(assert (=> d!1496614 (= lt!1867915 (containsKey!3197 (toList!5705 lt!1867794) key!4653))))

(assert (=> d!1496614 (= (contains!15858 lt!1867794 key!4653) lt!1867919)))

(declare-fun b!4703971 () Bool)

(declare-fun e!2934280 () Bool)

(declare-fun contains!15864 (List!52688 K!13920) Bool)

(assert (=> b!4703971 (= e!2934280 (contains!15864 (keys!18811 lt!1867794) key!4653))))

(declare-fun b!4703972 () Bool)

(declare-fun e!2934283 () List!52688)

(assert (=> b!4703972 (= e!2934283 (keys!18811 lt!1867794))))

(declare-fun b!4703973 () Bool)

(assert (=> b!4703973 (= e!2934278 (not (contains!15864 (keys!18811 lt!1867794) key!4653)))))

(declare-fun b!4703974 () Bool)

(assert (=> b!4703974 (= e!2934279 e!2934280)))

(declare-fun res!1986572 () Bool)

(assert (=> b!4703974 (=> (not res!1986572) (not e!2934280))))

(declare-fun isDefined!9476 (Option!12221) Bool)

(assert (=> b!4703974 (= res!1986572 (isDefined!9476 (getValueByKey!1867 (toList!5705 lt!1867794) key!4653)))))

(declare-fun b!4703975 () Bool)

(declare-fun lt!1867922 () Unit!126740)

(assert (=> b!4703975 (= e!2934281 lt!1867922)))

(declare-fun lt!1867921 () Unit!126740)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1759 (List!52685 K!13920) Unit!126740)

(assert (=> b!4703975 (= lt!1867921 (lemmaContainsKeyImpliesGetValueByKeyDefined!1759 (toList!5705 lt!1867794) key!4653))))

(assert (=> b!4703975 (isDefined!9476 (getValueByKey!1867 (toList!5705 lt!1867794) key!4653))))

(declare-fun lt!1867918 () Unit!126740)

(assert (=> b!4703975 (= lt!1867918 lt!1867921)))

(declare-fun lemmaInListThenGetKeysListContains!889 (List!52685 K!13920) Unit!126740)

(assert (=> b!4703975 (= lt!1867922 (lemmaInListThenGetKeysListContains!889 (toList!5705 lt!1867794) key!4653))))

(assert (=> b!4703975 call!328863))

(declare-fun b!4703976 () Bool)

(declare-fun getKeysList!894 (List!52685) List!52688)

(assert (=> b!4703976 (= e!2934283 (getKeysList!894 (toList!5705 lt!1867794)))))

(declare-fun bm!328858 () Bool)

(assert (=> bm!328858 (= call!328863 (contains!15864 e!2934283 key!4653))))

(declare-fun c!803992 () Bool)

(assert (=> bm!328858 (= c!803992 c!803993)))

(declare-fun b!4703977 () Bool)

(assert (=> b!4703977 false))

(declare-fun lt!1867920 () Unit!126740)

(declare-fun lt!1867916 () Unit!126740)

(assert (=> b!4703977 (= lt!1867920 lt!1867916)))

(assert (=> b!4703977 (containsKey!3197 (toList!5705 lt!1867794) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!893 (List!52685 K!13920) Unit!126740)

(assert (=> b!4703977 (= lt!1867916 (lemmaInGetKeysListThenContainsKey!893 (toList!5705 lt!1867794) key!4653))))

(declare-fun Unit!126765 () Unit!126740)

(assert (=> b!4703977 (= e!2934282 Unit!126765)))

(assert (= (and d!1496614 c!803993) b!4703975))

(assert (= (and d!1496614 (not c!803993)) b!4703969))

(assert (= (and b!4703969 c!803991) b!4703977))

(assert (= (and b!4703969 (not c!803991)) b!4703970))

(assert (= (or b!4703975 b!4703969) bm!328858))

(assert (= (and bm!328858 c!803992) b!4703976))

(assert (= (and bm!328858 (not c!803992)) b!4703972))

(assert (= (and d!1496614 res!1986573) b!4703973))

(assert (= (and d!1496614 (not res!1986571)) b!4703974))

(assert (= (and b!4703974 res!1986572) b!4703971))

(declare-fun m!5623197 () Bool)

(assert (=> b!4703972 m!5623197))

(declare-fun m!5623199 () Bool)

(assert (=> b!4703977 m!5623199))

(declare-fun m!5623201 () Bool)

(assert (=> b!4703977 m!5623201))

(declare-fun m!5623203 () Bool)

(assert (=> bm!328858 m!5623203))

(assert (=> b!4703973 m!5623197))

(assert (=> b!4703973 m!5623197))

(declare-fun m!5623205 () Bool)

(assert (=> b!4703973 m!5623205))

(assert (=> b!4703971 m!5623197))

(assert (=> b!4703971 m!5623197))

(assert (=> b!4703971 m!5623205))

(declare-fun m!5623207 () Bool)

(assert (=> b!4703974 m!5623207))

(assert (=> b!4703974 m!5623207))

(declare-fun m!5623209 () Bool)

(assert (=> b!4703974 m!5623209))

(assert (=> d!1496614 m!5623199))

(declare-fun m!5623211 () Bool)

(assert (=> b!4703976 m!5623211))

(declare-fun m!5623213 () Bool)

(assert (=> b!4703975 m!5623213))

(assert (=> b!4703975 m!5623207))

(assert (=> b!4703975 m!5623207))

(assert (=> b!4703975 m!5623209))

(declare-fun m!5623215 () Bool)

(assert (=> b!4703975 m!5623215))

(assert (=> b!4703827 d!1496614))

(declare-fun bs!1097419 () Bool)

(declare-fun d!1496616 () Bool)

(assert (= bs!1097419 (and d!1496616 start!477412)))

(declare-fun lambda!210998 () Int)

(assert (=> bs!1097419 (= lambda!210998 lambda!210977)))

(declare-fun bs!1097420 () Bool)

(assert (= bs!1097420 (and d!1496616 d!1496608)))

(assert (=> bs!1097420 (= lambda!210998 lambda!210994)))

(declare-fun bs!1097421 () Bool)

(assert (= bs!1097421 (and d!1496616 d!1496596)))

(assert (=> bs!1097421 (= lambda!210998 lambda!210993)))

(declare-fun bs!1097422 () Bool)

(assert (= bs!1097422 (and d!1496616 d!1496590)))

(assert (=> bs!1097422 (= lambda!210998 lambda!210984)))

(declare-fun bs!1097423 () Bool)

(assert (= bs!1097423 (and d!1496616 d!1496582)))

(assert (=> bs!1097423 (= lambda!210998 lambda!210983)))

(declare-fun lt!1867923 () ListMap!5069)

(assert (=> d!1496616 (invariantList!1454 (toList!5705 lt!1867923))))

(declare-fun e!2934284 () ListMap!5069)

(assert (=> d!1496616 (= lt!1867923 e!2934284)))

(declare-fun c!803994 () Bool)

(assert (=> d!1496616 (= c!803994 ((_ is Cons!52562) (toList!5706 lm!2023)))))

(assert (=> d!1496616 (forall!11419 (toList!5706 lm!2023) lambda!210998)))

(assert (=> d!1496616 (= (extractMap!1934 (toList!5706 lm!2023)) lt!1867923)))

(declare-fun b!4703978 () Bool)

(assert (=> b!4703978 (= e!2934284 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (toList!5706 lm!2023))) (extractMap!1934 (t!359906 (toList!5706 lm!2023)))))))

(declare-fun b!4703979 () Bool)

(assert (=> b!4703979 (= e!2934284 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496616 c!803994) b!4703978))

(assert (= (and d!1496616 (not c!803994)) b!4703979))

(declare-fun m!5623217 () Bool)

(assert (=> d!1496616 m!5623217))

(declare-fun m!5623219 () Bool)

(assert (=> d!1496616 m!5623219))

(assert (=> b!4703978 m!5622833))

(assert (=> b!4703978 m!5622833))

(declare-fun m!5623221 () Bool)

(assert (=> b!4703978 m!5623221))

(assert (=> b!4703827 d!1496616))

(declare-fun bs!1097540 () Bool)

(declare-fun b!4704045 () Bool)

(assert (= bs!1097540 (and b!4704045 d!1496612)))

(declare-fun lambda!211080 () Int)

(assert (=> bs!1097540 (not (= lambda!211080 lambda!210997))))

(assert (=> b!4704045 true))

(declare-fun bs!1097541 () Bool)

(declare-fun b!4704049 () Bool)

(assert (= bs!1097541 (and b!4704049 d!1496612)))

(declare-fun lambda!211081 () Int)

(assert (=> bs!1097541 (not (= lambda!211081 lambda!210997))))

(declare-fun bs!1097542 () Bool)

(assert (= bs!1097542 (and b!4704049 b!4704045)))

(assert (=> bs!1097542 (= lambda!211081 lambda!211080)))

(assert (=> b!4704049 true))

(declare-fun lambda!211082 () Int)

(assert (=> bs!1097541 (not (= lambda!211082 lambda!210997))))

(declare-fun lt!1868124 () ListMap!5069)

(assert (=> bs!1097542 (= (= lt!1868124 lt!1867764) (= lambda!211082 lambda!211080))))

(assert (=> b!4704049 (= (= lt!1868124 lt!1867764) (= lambda!211082 lambda!211081))))

(assert (=> b!4704049 true))

(declare-fun bs!1097546 () Bool)

(declare-fun d!1496618 () Bool)

(assert (= bs!1097546 (and d!1496618 d!1496612)))

(declare-fun lambda!211084 () Int)

(assert (=> bs!1097546 (not (= lambda!211084 lambda!210997))))

(declare-fun bs!1097548 () Bool)

(assert (= bs!1097548 (and d!1496618 b!4704045)))

(declare-fun lt!1868123 () ListMap!5069)

(assert (=> bs!1097548 (= (= lt!1868123 lt!1867764) (= lambda!211084 lambda!211080))))

(declare-fun bs!1097550 () Bool)

(assert (= bs!1097550 (and d!1496618 b!4704049)))

(assert (=> bs!1097550 (= (= lt!1868123 lt!1867764) (= lambda!211084 lambda!211081))))

(assert (=> bs!1097550 (= (= lt!1868123 lt!1868124) (= lambda!211084 lambda!211082))))

(assert (=> d!1496618 true))

(declare-fun e!2934323 () ListMap!5069)

(assert (=> b!4704045 (= e!2934323 lt!1867764)))

(declare-fun lt!1868138 () Unit!126740)

(declare-fun call!328889 () Unit!126740)

(assert (=> b!4704045 (= lt!1868138 call!328889)))

(declare-fun call!328890 () Bool)

(assert (=> b!4704045 call!328890))

(declare-fun lt!1868125 () Unit!126740)

(assert (=> b!4704045 (= lt!1868125 lt!1868138)))

(declare-fun call!328891 () Bool)

(assert (=> b!4704045 call!328891))

(declare-fun lt!1868136 () Unit!126740)

(declare-fun Unit!126768 () Unit!126740)

(assert (=> b!4704045 (= lt!1868136 Unit!126768)))

(declare-fun b!4704046 () Bool)

(declare-fun e!2934322 () Bool)

(assert (=> b!4704046 (= e!2934322 (forall!11421 (toList!5705 lt!1867764) lambda!211082))))

(declare-fun bm!328884 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!742 (ListMap!5069) Unit!126740)

(assert (=> bm!328884 (= call!328889 (lemmaContainsAllItsOwnKeys!742 lt!1867764))))

(declare-fun bm!328885 () Bool)

(declare-fun c!804009 () Bool)

(assert (=> bm!328885 (= call!328890 (forall!11421 (ite c!804009 (toList!5705 lt!1867764) (t!359905 (_2!30308 (h!58851 (toList!5706 lm!2023))))) (ite c!804009 lambda!211080 lambda!211082)))))

(declare-fun b!4704047 () Bool)

(declare-fun e!2934321 () Bool)

(assert (=> b!4704047 (= e!2934321 (invariantList!1454 (toList!5705 lt!1868123)))))

(assert (=> d!1496618 e!2934321))

(declare-fun res!1986607 () Bool)

(assert (=> d!1496618 (=> (not res!1986607) (not e!2934321))))

(assert (=> d!1496618 (= res!1986607 (forall!11421 (_2!30308 (h!58851 (toList!5706 lm!2023))) lambda!211084))))

(assert (=> d!1496618 (= lt!1868123 e!2934323)))

(assert (=> d!1496618 (= c!804009 ((_ is Nil!52561) (_2!30308 (h!58851 (toList!5706 lm!2023)))))))

(assert (=> d!1496618 (noDuplicateKeys!1908 (_2!30308 (h!58851 (toList!5706 lm!2023))))))

(assert (=> d!1496618 (= (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (toList!5706 lm!2023))) lt!1867764) lt!1868123)))

(declare-fun b!4704048 () Bool)

(declare-fun res!1986609 () Bool)

(assert (=> b!4704048 (=> (not res!1986609) (not e!2934321))))

(assert (=> b!4704048 (= res!1986609 (forall!11421 (toList!5705 lt!1867764) lambda!211084))))

(declare-fun bm!328886 () Bool)

(assert (=> bm!328886 (= call!328891 (forall!11421 (ite c!804009 (toList!5705 lt!1867764) (_2!30308 (h!58851 (toList!5706 lm!2023)))) (ite c!804009 lambda!211080 lambda!211082)))))

(assert (=> b!4704049 (= e!2934323 lt!1868124)))

(declare-fun lt!1868134 () ListMap!5069)

(assert (=> b!4704049 (= lt!1868134 (+!2192 lt!1867764 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023))))))))

(assert (=> b!4704049 (= lt!1868124 (addToMapMapFromBucket!1340 (t!359905 (_2!30308 (h!58851 (toList!5706 lm!2023)))) (+!2192 lt!1867764 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023)))))))))

(declare-fun lt!1868139 () Unit!126740)

(assert (=> b!4704049 (= lt!1868139 call!328889)))

(assert (=> b!4704049 (forall!11421 (toList!5705 lt!1867764) lambda!211081)))

(declare-fun lt!1868122 () Unit!126740)

(assert (=> b!4704049 (= lt!1868122 lt!1868139)))

(assert (=> b!4704049 (forall!11421 (toList!5705 lt!1868134) lambda!211082)))

(declare-fun lt!1868130 () Unit!126740)

(declare-fun Unit!126769 () Unit!126740)

(assert (=> b!4704049 (= lt!1868130 Unit!126769)))

(assert (=> b!4704049 call!328890))

(declare-fun lt!1868126 () Unit!126740)

(declare-fun Unit!126770 () Unit!126740)

(assert (=> b!4704049 (= lt!1868126 Unit!126770)))

(declare-fun lt!1868131 () Unit!126740)

(declare-fun Unit!126771 () Unit!126740)

(assert (=> b!4704049 (= lt!1868131 Unit!126771)))

(declare-fun lt!1868133 () Unit!126740)

(declare-fun forallContained!3528 (List!52685 Int tuple2!54026) Unit!126740)

(assert (=> b!4704049 (= lt!1868133 (forallContained!3528 (toList!5705 lt!1868134) lambda!211082 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023))))))))

(assert (=> b!4704049 (contains!15858 lt!1868134 (_1!30307 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023))))))))

(declare-fun lt!1868121 () Unit!126740)

(declare-fun Unit!126772 () Unit!126740)

(assert (=> b!4704049 (= lt!1868121 Unit!126772)))

(assert (=> b!4704049 (contains!15858 lt!1868124 (_1!30307 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023))))))))

(declare-fun lt!1868119 () Unit!126740)

(declare-fun Unit!126773 () Unit!126740)

(assert (=> b!4704049 (= lt!1868119 Unit!126773)))

(assert (=> b!4704049 (forall!11421 (_2!30308 (h!58851 (toList!5706 lm!2023))) lambda!211082)))

(declare-fun lt!1868132 () Unit!126740)

(declare-fun Unit!126774 () Unit!126740)

(assert (=> b!4704049 (= lt!1868132 Unit!126774)))

(assert (=> b!4704049 (forall!11421 (toList!5705 lt!1868134) lambda!211082)))

(declare-fun lt!1868127 () Unit!126740)

(declare-fun Unit!126775 () Unit!126740)

(assert (=> b!4704049 (= lt!1868127 Unit!126775)))

(declare-fun lt!1868120 () Unit!126740)

(declare-fun Unit!126776 () Unit!126740)

(assert (=> b!4704049 (= lt!1868120 Unit!126776)))

(declare-fun lt!1868135 () Unit!126740)

(declare-fun addForallContainsKeyThenBeforeAdding!741 (ListMap!5069 ListMap!5069 K!13920 V!14166) Unit!126740)

(assert (=> b!4704049 (= lt!1868135 (addForallContainsKeyThenBeforeAdding!741 lt!1867764 lt!1868124 (_1!30307 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023))))) (_2!30307 (h!58850 (_2!30308 (h!58851 (toList!5706 lm!2023)))))))))

(assert (=> b!4704049 (forall!11421 (toList!5705 lt!1867764) lambda!211082)))

(declare-fun lt!1868137 () Unit!126740)

(assert (=> b!4704049 (= lt!1868137 lt!1868135)))

(assert (=> b!4704049 (forall!11421 (toList!5705 lt!1867764) lambda!211082)))

(declare-fun lt!1868128 () Unit!126740)

(declare-fun Unit!126777 () Unit!126740)

(assert (=> b!4704049 (= lt!1868128 Unit!126777)))

(declare-fun res!1986608 () Bool)

(assert (=> b!4704049 (= res!1986608 call!328891)))

(assert (=> b!4704049 (=> (not res!1986608) (not e!2934322))))

(assert (=> b!4704049 e!2934322))

(declare-fun lt!1868129 () Unit!126740)

(declare-fun Unit!126778 () Unit!126740)

(assert (=> b!4704049 (= lt!1868129 Unit!126778)))

(assert (= (and d!1496618 c!804009) b!4704045))

(assert (= (and d!1496618 (not c!804009)) b!4704049))

(assert (= (and b!4704049 res!1986608) b!4704046))

(assert (= (or b!4704045 b!4704049) bm!328884))

(assert (= (or b!4704045 b!4704049) bm!328885))

(assert (= (or b!4704045 b!4704049) bm!328886))

(assert (= (and d!1496618 res!1986607) b!4704048))

(assert (= (and b!4704048 res!1986609) b!4704047))

(declare-fun m!5623465 () Bool)

(assert (=> b!4704046 m!5623465))

(declare-fun m!5623467 () Bool)

(assert (=> b!4704047 m!5623467))

(declare-fun m!5623469 () Bool)

(assert (=> d!1496618 m!5623469))

(declare-fun m!5623471 () Bool)

(assert (=> d!1496618 m!5623471))

(declare-fun m!5623473 () Bool)

(assert (=> b!4704048 m!5623473))

(declare-fun m!5623475 () Bool)

(assert (=> bm!328885 m!5623475))

(declare-fun m!5623477 () Bool)

(assert (=> bm!328886 m!5623477))

(declare-fun m!5623479 () Bool)

(assert (=> b!4704049 m!5623479))

(declare-fun m!5623481 () Bool)

(assert (=> b!4704049 m!5623481))

(assert (=> b!4704049 m!5623465))

(declare-fun m!5623483 () Bool)

(assert (=> b!4704049 m!5623483))

(declare-fun m!5623485 () Bool)

(assert (=> b!4704049 m!5623485))

(declare-fun m!5623487 () Bool)

(assert (=> b!4704049 m!5623487))

(declare-fun m!5623489 () Bool)

(assert (=> b!4704049 m!5623489))

(declare-fun m!5623491 () Bool)

(assert (=> b!4704049 m!5623491))

(assert (=> b!4704049 m!5623465))

(declare-fun m!5623493 () Bool)

(assert (=> b!4704049 m!5623493))

(declare-fun m!5623495 () Bool)

(assert (=> b!4704049 m!5623495))

(assert (=> b!4704049 m!5623483))

(assert (=> b!4704049 m!5623487))

(declare-fun m!5623497 () Bool)

(assert (=> bm!328884 m!5623497))

(assert (=> b!4703828 d!1496618))

(declare-fun bs!1097562 () Bool)

(declare-fun d!1496664 () Bool)

(assert (= bs!1097562 (and d!1496664 d!1496616)))

(declare-fun lambda!211086 () Int)

(assert (=> bs!1097562 (= lambda!211086 lambda!210998)))

(declare-fun bs!1097563 () Bool)

(assert (= bs!1097563 (and d!1496664 start!477412)))

(assert (=> bs!1097563 (= lambda!211086 lambda!210977)))

(declare-fun bs!1097564 () Bool)

(assert (= bs!1097564 (and d!1496664 d!1496608)))

(assert (=> bs!1097564 (= lambda!211086 lambda!210994)))

(declare-fun bs!1097565 () Bool)

(assert (= bs!1097565 (and d!1496664 d!1496596)))

(assert (=> bs!1097565 (= lambda!211086 lambda!210993)))

(declare-fun bs!1097566 () Bool)

(assert (= bs!1097566 (and d!1496664 d!1496590)))

(assert (=> bs!1097566 (= lambda!211086 lambda!210984)))

(declare-fun bs!1097567 () Bool)

(assert (= bs!1097567 (and d!1496664 d!1496582)))

(assert (=> bs!1097567 (= lambda!211086 lambda!210983)))

(declare-fun lt!1868144 () ListMap!5069)

(assert (=> d!1496664 (invariantList!1454 (toList!5705 lt!1868144))))

(declare-fun e!2934325 () ListMap!5069)

(assert (=> d!1496664 (= lt!1868144 e!2934325)))

(declare-fun c!804011 () Bool)

(assert (=> d!1496664 (= c!804011 ((_ is Cons!52562) (t!359906 (toList!5706 lm!2023))))))

(assert (=> d!1496664 (forall!11419 (t!359906 (toList!5706 lm!2023)) lambda!211086)))

(assert (=> d!1496664 (= (extractMap!1934 (t!359906 (toList!5706 lm!2023))) lt!1868144)))

(declare-fun b!4704054 () Bool)

(assert (=> b!4704054 (= e!2934325 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (t!359906 (toList!5706 lm!2023)))) (extractMap!1934 (t!359906 (t!359906 (toList!5706 lm!2023))))))))

(declare-fun b!4704055 () Bool)

(assert (=> b!4704055 (= e!2934325 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496664 c!804011) b!4704054))

(assert (= (and d!1496664 (not c!804011)) b!4704055))

(declare-fun m!5623517 () Bool)

(assert (=> d!1496664 m!5623517))

(declare-fun m!5623519 () Bool)

(assert (=> d!1496664 m!5623519))

(declare-fun m!5623521 () Bool)

(assert (=> b!4704054 m!5623521))

(assert (=> b!4704054 m!5623521))

(declare-fun m!5623523 () Bool)

(assert (=> b!4704054 m!5623523))

(assert (=> b!4703828 d!1496664))

(declare-fun d!1496670 () Bool)

(assert (=> d!1496670 (= (tail!8750 lm!2023) (ListLongMap!4236 (tail!8751 (toList!5706 lm!2023))))))

(declare-fun bs!1097570 () Bool)

(assert (= bs!1097570 d!1496670))

(declare-fun m!5623541 () Bool)

(assert (=> bs!1097570 m!5623541))

(assert (=> b!4703828 d!1496670))

(declare-fun d!1496676 () Bool)

(assert (=> d!1496676 (= (head!10080 (toList!5706 lm!2023)) (h!58851 (toList!5706 lm!2023)))))

(assert (=> b!4703845 d!1496676))

(declare-fun b!4704074 () Bool)

(declare-fun e!2934339 () List!52685)

(assert (=> b!4704074 (= e!2934339 (t!359905 (t!359905 oldBucket!34)))))

(declare-fun b!4704075 () Bool)

(declare-fun e!2934338 () List!52685)

(assert (=> b!4704075 (= e!2934339 e!2934338)))

(declare-fun c!804019 () Bool)

(assert (=> b!4704075 (= c!804019 ((_ is Cons!52561) (t!359905 oldBucket!34)))))

(declare-fun d!1496678 () Bool)

(declare-fun lt!1868151 () List!52685)

(assert (=> d!1496678 (not (containsKey!3195 lt!1868151 key!4653))))

(assert (=> d!1496678 (= lt!1868151 e!2934339)))

(declare-fun c!804018 () Bool)

(assert (=> d!1496678 (= c!804018 (and ((_ is Cons!52561) (t!359905 oldBucket!34)) (= (_1!30307 (h!58850 (t!359905 oldBucket!34))) key!4653)))))

(assert (=> d!1496678 (noDuplicateKeys!1908 (t!359905 oldBucket!34))))

(assert (=> d!1496678 (= (removePairForKey!1503 (t!359905 oldBucket!34) key!4653) lt!1868151)))

(declare-fun b!4704076 () Bool)

(assert (=> b!4704076 (= e!2934338 (Cons!52561 (h!58850 (t!359905 oldBucket!34)) (removePairForKey!1503 (t!359905 (t!359905 oldBucket!34)) key!4653)))))

(declare-fun b!4704077 () Bool)

(assert (=> b!4704077 (= e!2934338 Nil!52561)))

(assert (= (and d!1496678 c!804018) b!4704074))

(assert (= (and d!1496678 (not c!804018)) b!4704075))

(assert (= (and b!4704075 c!804019) b!4704076))

(assert (= (and b!4704075 (not c!804019)) b!4704077))

(declare-fun m!5623563 () Bool)

(assert (=> d!1496678 m!5623563))

(assert (=> d!1496678 m!5623193))

(declare-fun m!5623565 () Bool)

(assert (=> b!4704076 m!5623565))

(assert (=> b!4703846 d!1496678))

(declare-fun d!1496688 () Bool)

(declare-fun res!1986624 () Bool)

(declare-fun e!2934350 () Bool)

(assert (=> d!1496688 (=> res!1986624 e!2934350)))

(assert (=> d!1496688 (= res!1986624 ((_ is Nil!52562) lt!1867776))))

(assert (=> d!1496688 (= (forall!11419 lt!1867776 lambda!210977) e!2934350)))

(declare-fun b!4704090 () Bool)

(declare-fun e!2934351 () Bool)

(assert (=> b!4704090 (= e!2934350 e!2934351)))

(declare-fun res!1986625 () Bool)

(assert (=> b!4704090 (=> (not res!1986625) (not e!2934351))))

(declare-fun dynLambda!21757 (Int tuple2!54028) Bool)

(assert (=> b!4704090 (= res!1986625 (dynLambda!21757 lambda!210977 (h!58851 lt!1867776)))))

(declare-fun b!4704091 () Bool)

(assert (=> b!4704091 (= e!2934351 (forall!11419 (t!359906 lt!1867776) lambda!210977))))

(assert (= (and d!1496688 (not res!1986624)) b!4704090))

(assert (= (and b!4704090 res!1986625) b!4704091))

(declare-fun b_lambda!177471 () Bool)

(assert (=> (not b_lambda!177471) (not b!4704090)))

(declare-fun m!5623581 () Bool)

(assert (=> b!4704090 m!5623581))

(declare-fun m!5623583 () Bool)

(assert (=> b!4704091 m!5623583))

(assert (=> b!4703825 d!1496688))

(declare-fun bs!1097591 () Bool)

(declare-fun d!1496698 () Bool)

(assert (= bs!1097591 (and d!1496698 d!1496616)))

(declare-fun lambda!211091 () Int)

(assert (=> bs!1097591 (not (= lambda!211091 lambda!210998))))

(declare-fun bs!1097592 () Bool)

(assert (= bs!1097592 (and d!1496698 start!477412)))

(assert (=> bs!1097592 (not (= lambda!211091 lambda!210977))))

(declare-fun bs!1097593 () Bool)

(assert (= bs!1097593 (and d!1496698 d!1496608)))

(assert (=> bs!1097593 (not (= lambda!211091 lambda!210994))))

(declare-fun bs!1097594 () Bool)

(assert (= bs!1097594 (and d!1496698 d!1496596)))

(assert (=> bs!1097594 (not (= lambda!211091 lambda!210993))))

(declare-fun bs!1097595 () Bool)

(assert (= bs!1097595 (and d!1496698 d!1496590)))

(assert (=> bs!1097595 (not (= lambda!211091 lambda!210984))))

(declare-fun bs!1097596 () Bool)

(assert (= bs!1097596 (and d!1496698 d!1496664)))

(assert (=> bs!1097596 (not (= lambda!211091 lambda!211086))))

(declare-fun bs!1097597 () Bool)

(assert (= bs!1097597 (and d!1496698 d!1496582)))

(assert (=> bs!1097597 (not (= lambda!211091 lambda!210983))))

(assert (=> d!1496698 true))

(assert (=> d!1496698 (= (allKeysSameHashInMap!1822 lm!2023 hashF!1323) (forall!11419 (toList!5706 lm!2023) lambda!211091))))

(declare-fun bs!1097598 () Bool)

(assert (= bs!1097598 d!1496698))

(declare-fun m!5623585 () Bool)

(assert (=> bs!1097598 m!5623585))

(assert (=> b!4703847 d!1496698))

(declare-fun d!1496700 () Bool)

(assert (=> d!1496700 (= (eq!1067 lt!1867777 lt!1867801) (= (content!9290 (toList!5705 lt!1867777)) (content!9290 (toList!5705 lt!1867801))))))

(declare-fun bs!1097599 () Bool)

(assert (= bs!1097599 d!1496700))

(assert (=> bs!1097599 m!5622927))

(declare-fun m!5623587 () Bool)

(assert (=> bs!1097599 m!5623587))

(assert (=> b!4703826 d!1496700))

(declare-fun d!1496702 () Bool)

(assert (=> d!1496702 (= (eq!1067 lt!1867795 lt!1867801) (= (content!9290 (toList!5705 lt!1867795)) (content!9290 (toList!5705 lt!1867801))))))

(declare-fun bs!1097600 () Bool)

(assert (= bs!1097600 d!1496702))

(declare-fun m!5623589 () Bool)

(assert (=> bs!1097600 m!5623589))

(assert (=> bs!1097600 m!5623587))

(assert (=> b!4703826 d!1496702))

(declare-fun d!1496704 () Bool)

(declare-fun e!2934352 () Bool)

(assert (=> d!1496704 e!2934352))

(declare-fun res!1986626 () Bool)

(assert (=> d!1496704 (=> (not res!1986626) (not e!2934352))))

(declare-fun lt!1868153 () ListMap!5069)

(assert (=> d!1496704 (= res!1986626 (not (contains!15858 lt!1868153 key!4653)))))

(assert (=> d!1496704 (= lt!1868153 (ListMap!5070 (removePresrvNoDuplicatedKeys!375 (toList!5705 lt!1867780) key!4653)))))

(assert (=> d!1496704 (= (-!712 lt!1867780 key!4653) lt!1868153)))

(declare-fun b!4704094 () Bool)

(assert (=> b!4704094 (= e!2934352 (= ((_ map and) (content!9292 (keys!18811 lt!1867780)) ((_ map not) (store ((as const (Array K!13920 Bool)) false) key!4653 true))) (content!9292 (keys!18811 lt!1868153))))))

(assert (= (and d!1496704 res!1986626) b!4704094))

(declare-fun m!5623591 () Bool)

(assert (=> d!1496704 m!5623591))

(declare-fun m!5623593 () Bool)

(assert (=> d!1496704 m!5623593))

(assert (=> b!4704094 m!5622965))

(declare-fun m!5623595 () Bool)

(assert (=> b!4704094 m!5623595))

(declare-fun m!5623597 () Bool)

(assert (=> b!4704094 m!5623597))

(declare-fun m!5623599 () Bool)

(assert (=> b!4704094 m!5623599))

(declare-fun m!5623601 () Bool)

(assert (=> b!4704094 m!5623601))

(assert (=> b!4704094 m!5623599))

(assert (=> b!4704094 m!5623595))

(assert (=> b!4703826 d!1496704))

(declare-fun d!1496706 () Bool)

(assert (=> d!1496706 (eq!1067 (-!712 lt!1867773 key!4653) (-!712 lt!1867780 key!4653))))

(declare-fun lt!1868171 () Unit!126740)

(declare-fun choose!32982 (ListMap!5069 ListMap!5069 K!13920) Unit!126740)

(assert (=> d!1496706 (= lt!1868171 (choose!32982 lt!1867773 lt!1867780 key!4653))))

(assert (=> d!1496706 (eq!1067 lt!1867773 lt!1867780)))

(assert (=> d!1496706 (= (lemmaRemovePreservesEq!94 lt!1867773 lt!1867780 key!4653) lt!1868171)))

(declare-fun bs!1097602 () Bool)

(assert (= bs!1097602 d!1496706))

(assert (=> bs!1097602 m!5622905))

(assert (=> bs!1097602 m!5622921))

(declare-fun m!5623615 () Bool)

(assert (=> bs!1097602 m!5623615))

(assert (=> bs!1097602 m!5622921))

(assert (=> bs!1097602 m!5622905))

(declare-fun m!5623617 () Bool)

(assert (=> bs!1097602 m!5623617))

(assert (=> bs!1097602 m!5622825))

(assert (=> b!4703826 d!1496706))

(declare-fun d!1496712 () Bool)

(assert (=> d!1496712 (= (eq!1067 lt!1867780 (+!2192 lt!1867772 lt!1867782)) (= (content!9290 (toList!5705 lt!1867780)) (content!9290 (toList!5705 (+!2192 lt!1867772 lt!1867782)))))))

(declare-fun bs!1097603 () Bool)

(assert (= bs!1097603 d!1496712))

(declare-fun m!5623619 () Bool)

(assert (=> bs!1097603 m!5623619))

(declare-fun m!5623621 () Bool)

(assert (=> bs!1097603 m!5623621))

(assert (=> b!4703821 d!1496712))

(declare-fun d!1496714 () Bool)

(declare-fun e!2934359 () Bool)

(assert (=> d!1496714 e!2934359))

(declare-fun res!1986631 () Bool)

(assert (=> d!1496714 (=> (not res!1986631) (not e!2934359))))

(declare-fun lt!1868174 () ListMap!5069)

(assert (=> d!1496714 (= res!1986631 (contains!15858 lt!1868174 (_1!30307 lt!1867782)))))

(declare-fun lt!1868175 () List!52685)

(assert (=> d!1496714 (= lt!1868174 (ListMap!5070 lt!1868175))))

(declare-fun lt!1868173 () Unit!126740)

(declare-fun lt!1868172 () Unit!126740)

(assert (=> d!1496714 (= lt!1868173 lt!1868172)))

(assert (=> d!1496714 (= (getValueByKey!1867 lt!1868175 (_1!30307 lt!1867782)) (Some!12220 (_2!30307 lt!1867782)))))

(assert (=> d!1496714 (= lt!1868172 (lemmaContainsTupThenGetReturnValue!1044 lt!1868175 (_1!30307 lt!1867782) (_2!30307 lt!1867782)))))

(assert (=> d!1496714 (= lt!1868175 (insertNoDuplicatedKeys!552 (toList!5705 lt!1867772) (_1!30307 lt!1867782) (_2!30307 lt!1867782)))))

(assert (=> d!1496714 (= (+!2192 lt!1867772 lt!1867782) lt!1868174)))

(declare-fun b!4704105 () Bool)

(declare-fun res!1986630 () Bool)

(assert (=> b!4704105 (=> (not res!1986630) (not e!2934359))))

(assert (=> b!4704105 (= res!1986630 (= (getValueByKey!1867 (toList!5705 lt!1868174) (_1!30307 lt!1867782)) (Some!12220 (_2!30307 lt!1867782))))))

(declare-fun b!4704106 () Bool)

(assert (=> b!4704106 (= e!2934359 (contains!15863 (toList!5705 lt!1868174) lt!1867782))))

(assert (= (and d!1496714 res!1986631) b!4704105))

(assert (= (and b!4704105 res!1986630) b!4704106))

(declare-fun m!5623623 () Bool)

(assert (=> d!1496714 m!5623623))

(declare-fun m!5623625 () Bool)

(assert (=> d!1496714 m!5623625))

(declare-fun m!5623627 () Bool)

(assert (=> d!1496714 m!5623627))

(declare-fun m!5623629 () Bool)

(assert (=> d!1496714 m!5623629))

(declare-fun m!5623631 () Bool)

(assert (=> b!4704105 m!5623631))

(declare-fun m!5623633 () Bool)

(assert (=> b!4704106 m!5623633))

(assert (=> b!4703821 d!1496714))

(declare-fun d!1496716 () Bool)

(assert (=> d!1496716 (= (eq!1067 lt!1867795 lt!1867777) (= (content!9290 (toList!5705 lt!1867795)) (content!9290 (toList!5705 lt!1867777))))))

(declare-fun bs!1097604 () Bool)

(assert (= bs!1097604 d!1496716))

(assert (=> bs!1097604 m!5623589))

(assert (=> bs!1097604 m!5622927))

(assert (=> b!4703843 d!1496716))

(declare-fun d!1496718 () Bool)

(assert (=> d!1496718 (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867768 lt!1867769) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1867768))))

(declare-fun lt!1868183 () Unit!126740)

(declare-fun choose!32983 (tuple2!54026 List!52685 ListMap!5069) Unit!126740)

(assert (=> d!1496718 (= lt!1868183 (choose!32983 lt!1867768 lt!1867769 lt!1867764))))

(assert (=> d!1496718 (noDuplicateKeys!1908 lt!1867769)))

(assert (=> d!1496718 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!316 lt!1867768 lt!1867769 lt!1867764) lt!1868183)))

(declare-fun bs!1097605 () Bool)

(assert (= bs!1097605 d!1496718))

(declare-fun m!5623649 () Bool)

(assert (=> bs!1097605 m!5623649))

(assert (=> bs!1097605 m!5622869))

(assert (=> bs!1097605 m!5622879))

(declare-fun m!5623651 () Bool)

(assert (=> bs!1097605 m!5623651))

(assert (=> bs!1097605 m!5622863))

(assert (=> bs!1097605 m!5622869))

(assert (=> bs!1097605 m!5622863))

(assert (=> bs!1097605 m!5622879))

(assert (=> bs!1097605 m!5622885))

(assert (=> b!4703822 d!1496718))

(declare-fun b!4704131 () Bool)

(declare-fun e!2934378 () Unit!126740)

(declare-fun e!2934379 () Unit!126740)

(assert (=> b!4704131 (= e!2934378 e!2934379)))

(declare-fun c!804031 () Bool)

(declare-fun call!328892 () Bool)

(assert (=> b!4704131 (= c!804031 call!328892)))

(declare-fun b!4704132 () Bool)

(declare-fun Unit!126791 () Unit!126740)

(assert (=> b!4704132 (= e!2934379 Unit!126791)))

(declare-fun d!1496722 () Bool)

(declare-fun e!2934376 () Bool)

(assert (=> d!1496722 e!2934376))

(declare-fun res!1986644 () Bool)

(assert (=> d!1496722 (=> res!1986644 e!2934376)))

(declare-fun e!2934375 () Bool)

(assert (=> d!1496722 (= res!1986644 e!2934375)))

(declare-fun res!1986646 () Bool)

(assert (=> d!1496722 (=> (not res!1986646) (not e!2934375))))

(declare-fun lt!1868189 () Bool)

(assert (=> d!1496722 (= res!1986646 (not lt!1868189))))

(declare-fun lt!1868185 () Bool)

(assert (=> d!1496722 (= lt!1868189 lt!1868185)))

(declare-fun lt!1868187 () Unit!126740)

(assert (=> d!1496722 (= lt!1868187 e!2934378)))

(declare-fun c!804033 () Bool)

(assert (=> d!1496722 (= c!804033 lt!1868185)))

(assert (=> d!1496722 (= lt!1868185 (containsKey!3197 (toList!5705 lt!1867790) key!4653))))

(assert (=> d!1496722 (= (contains!15858 lt!1867790 key!4653) lt!1868189)))

(declare-fun b!4704133 () Bool)

(declare-fun e!2934377 () Bool)

(assert (=> b!4704133 (= e!2934377 (contains!15864 (keys!18811 lt!1867790) key!4653))))

(declare-fun b!4704134 () Bool)

(declare-fun e!2934380 () List!52688)

(assert (=> b!4704134 (= e!2934380 (keys!18811 lt!1867790))))

(declare-fun b!4704135 () Bool)

(assert (=> b!4704135 (= e!2934375 (not (contains!15864 (keys!18811 lt!1867790) key!4653)))))

(declare-fun b!4704136 () Bool)

(assert (=> b!4704136 (= e!2934376 e!2934377)))

(declare-fun res!1986645 () Bool)

(assert (=> b!4704136 (=> (not res!1986645) (not e!2934377))))

(assert (=> b!4704136 (= res!1986645 (isDefined!9476 (getValueByKey!1867 (toList!5705 lt!1867790) key!4653)))))

(declare-fun b!4704137 () Bool)

(declare-fun lt!1868192 () Unit!126740)

(assert (=> b!4704137 (= e!2934378 lt!1868192)))

(declare-fun lt!1868191 () Unit!126740)

(assert (=> b!4704137 (= lt!1868191 (lemmaContainsKeyImpliesGetValueByKeyDefined!1759 (toList!5705 lt!1867790) key!4653))))

(assert (=> b!4704137 (isDefined!9476 (getValueByKey!1867 (toList!5705 lt!1867790) key!4653))))

(declare-fun lt!1868188 () Unit!126740)

(assert (=> b!4704137 (= lt!1868188 lt!1868191)))

(assert (=> b!4704137 (= lt!1868192 (lemmaInListThenGetKeysListContains!889 (toList!5705 lt!1867790) key!4653))))

(assert (=> b!4704137 call!328892))

(declare-fun b!4704138 () Bool)

(assert (=> b!4704138 (= e!2934380 (getKeysList!894 (toList!5705 lt!1867790)))))

(declare-fun bm!328887 () Bool)

(assert (=> bm!328887 (= call!328892 (contains!15864 e!2934380 key!4653))))

(declare-fun c!804032 () Bool)

(assert (=> bm!328887 (= c!804032 c!804033)))

(declare-fun b!4704139 () Bool)

(assert (=> b!4704139 false))

(declare-fun lt!1868190 () Unit!126740)

(declare-fun lt!1868186 () Unit!126740)

(assert (=> b!4704139 (= lt!1868190 lt!1868186)))

(assert (=> b!4704139 (containsKey!3197 (toList!5705 lt!1867790) key!4653)))

(assert (=> b!4704139 (= lt!1868186 (lemmaInGetKeysListThenContainsKey!893 (toList!5705 lt!1867790) key!4653))))

(declare-fun Unit!126793 () Unit!126740)

(assert (=> b!4704139 (= e!2934379 Unit!126793)))

(assert (= (and d!1496722 c!804033) b!4704137))

(assert (= (and d!1496722 (not c!804033)) b!4704131))

(assert (= (and b!4704131 c!804031) b!4704139))

(assert (= (and b!4704131 (not c!804031)) b!4704132))

(assert (= (or b!4704137 b!4704131) bm!328887))

(assert (= (and bm!328887 c!804032) b!4704138))

(assert (= (and bm!328887 (not c!804032)) b!4704134))

(assert (= (and d!1496722 res!1986646) b!4704135))

(assert (= (and d!1496722 (not res!1986644)) b!4704136))

(assert (= (and b!4704136 res!1986645) b!4704133))

(assert (=> b!4704134 m!5623175))

(declare-fun m!5623659 () Bool)

(assert (=> b!4704139 m!5623659))

(declare-fun m!5623661 () Bool)

(assert (=> b!4704139 m!5623661))

(declare-fun m!5623663 () Bool)

(assert (=> bm!328887 m!5623663))

(assert (=> b!4704135 m!5623175))

(assert (=> b!4704135 m!5623175))

(declare-fun m!5623665 () Bool)

(assert (=> b!4704135 m!5623665))

(assert (=> b!4704133 m!5623175))

(assert (=> b!4704133 m!5623175))

(assert (=> b!4704133 m!5623665))

(declare-fun m!5623667 () Bool)

(assert (=> b!4704136 m!5623667))

(assert (=> b!4704136 m!5623667))

(declare-fun m!5623669 () Bool)

(assert (=> b!4704136 m!5623669))

(assert (=> d!1496722 m!5623659))

(declare-fun m!5623671 () Bool)

(assert (=> b!4704138 m!5623671))

(declare-fun m!5623673 () Bool)

(assert (=> b!4704137 m!5623673))

(assert (=> b!4704137 m!5623667))

(assert (=> b!4704137 m!5623667))

(assert (=> b!4704137 m!5623669))

(declare-fun m!5623675 () Bool)

(assert (=> b!4704137 m!5623675))

(assert (=> b!4703822 d!1496722))

(declare-fun d!1496726 () Bool)

(assert (=> d!1496726 (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867782 lt!1867775) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1867782))))

(declare-fun lt!1868193 () Unit!126740)

(assert (=> d!1496726 (= lt!1868193 (choose!32983 lt!1867782 lt!1867775 lt!1867764))))

(assert (=> d!1496726 (noDuplicateKeys!1908 lt!1867775)))

(assert (=> d!1496726 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!316 lt!1867782 lt!1867775 lt!1867764) lt!1868193)))

(declare-fun bs!1097619 () Bool)

(assert (= bs!1097619 d!1496726))

(declare-fun m!5623679 () Bool)

(assert (=> bs!1097619 m!5623679))

(assert (=> bs!1097619 m!5622881))

(assert (=> bs!1097619 m!5622889))

(declare-fun m!5623681 () Bool)

(assert (=> bs!1097619 m!5623681))

(assert (=> bs!1097619 m!5622861))

(assert (=> bs!1097619 m!5622881))

(assert (=> bs!1097619 m!5622861))

(assert (=> bs!1097619 m!5622889))

(assert (=> bs!1097619 m!5622891))

(assert (=> b!4703822 d!1496726))

(declare-fun bs!1097620 () Bool)

(declare-fun d!1496730 () Bool)

(assert (= bs!1097620 (and d!1496730 start!477412)))

(declare-fun lambda!211095 () Int)

(assert (=> bs!1097620 (= lambda!211095 lambda!210977)))

(declare-fun bs!1097621 () Bool)

(assert (= bs!1097621 (and d!1496730 d!1496608)))

(assert (=> bs!1097621 (= lambda!211095 lambda!210994)))

(declare-fun bs!1097622 () Bool)

(assert (= bs!1097622 (and d!1496730 d!1496596)))

(assert (=> bs!1097622 (= lambda!211095 lambda!210993)))

(declare-fun bs!1097623 () Bool)

(assert (= bs!1097623 (and d!1496730 d!1496590)))

(assert (=> bs!1097623 (= lambda!211095 lambda!210984)))

(declare-fun bs!1097624 () Bool)

(assert (= bs!1097624 (and d!1496730 d!1496664)))

(assert (=> bs!1097624 (= lambda!211095 lambda!211086)))

(declare-fun bs!1097625 () Bool)

(assert (= bs!1097625 (and d!1496730 d!1496582)))

(assert (=> bs!1097625 (= lambda!211095 lambda!210983)))

(declare-fun bs!1097626 () Bool)

(assert (= bs!1097626 (and d!1496730 d!1496698)))

(assert (=> bs!1097626 (not (= lambda!211095 lambda!211091))))

(declare-fun bs!1097627 () Bool)

(assert (= bs!1097627 (and d!1496730 d!1496616)))

(assert (=> bs!1097627 (= lambda!211095 lambda!210998)))

(declare-fun lt!1868194 () ListMap!5069)

(assert (=> d!1496730 (invariantList!1454 (toList!5705 lt!1868194))))

(declare-fun e!2934381 () ListMap!5069)

(assert (=> d!1496730 (= lt!1868194 e!2934381)))

(declare-fun c!804034 () Bool)

(assert (=> d!1496730 (= c!804034 ((_ is Cons!52562) (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023)))))))

(assert (=> d!1496730 (forall!11419 (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023))) lambda!211095)))

(assert (=> d!1496730 (= (extractMap!1934 (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023)))) lt!1868194)))

(declare-fun b!4704140 () Bool)

(assert (=> b!4704140 (= e!2934381 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023))))) (extractMap!1934 (t!359906 (Cons!52562 (tuple2!54029 hash!405 lt!1867769) (t!359906 (toList!5706 lm!2023)))))))))

(declare-fun b!4704141 () Bool)

(assert (=> b!4704141 (= e!2934381 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496730 c!804034) b!4704140))

(assert (= (and d!1496730 (not c!804034)) b!4704141))

(declare-fun m!5623683 () Bool)

(assert (=> d!1496730 m!5623683))

(declare-fun m!5623685 () Bool)

(assert (=> d!1496730 m!5623685))

(declare-fun m!5623687 () Bool)

(assert (=> b!4704140 m!5623687))

(assert (=> b!4704140 m!5623687))

(declare-fun m!5623689 () Bool)

(assert (=> b!4704140 m!5623689))

(assert (=> b!4703822 d!1496730))

(declare-fun bs!1097628 () Bool)

(declare-fun b!4704144 () Bool)

(assert (= bs!1097628 (and b!4704144 b!4704049)))

(declare-fun lambda!211096 () Int)

(assert (=> bs!1097628 (= (= lt!1867764 lt!1868124) (= lambda!211096 lambda!211082))))

(assert (=> bs!1097628 (= lambda!211096 lambda!211081)))

(declare-fun bs!1097629 () Bool)

(assert (= bs!1097629 (and b!4704144 d!1496612)))

(assert (=> bs!1097629 (not (= lambda!211096 lambda!210997))))

(declare-fun bs!1097630 () Bool)

(assert (= bs!1097630 (and b!4704144 b!4704045)))

(assert (=> bs!1097630 (= lambda!211096 lambda!211080)))

(declare-fun bs!1097631 () Bool)

(assert (= bs!1097631 (and b!4704144 d!1496618)))

(assert (=> bs!1097631 (= (= lt!1867764 lt!1868123) (= lambda!211096 lambda!211084))))

(assert (=> b!4704144 true))

(declare-fun bs!1097632 () Bool)

(declare-fun b!4704148 () Bool)

(assert (= bs!1097632 (and b!4704148 b!4704049)))

(declare-fun lambda!211097 () Int)

(assert (=> bs!1097632 (= (= lt!1867764 lt!1868124) (= lambda!211097 lambda!211082))))

(assert (=> bs!1097632 (= lambda!211097 lambda!211081)))

(declare-fun bs!1097633 () Bool)

(assert (= bs!1097633 (and b!4704148 d!1496612)))

(assert (=> bs!1097633 (not (= lambda!211097 lambda!210997))))

(declare-fun bs!1097634 () Bool)

(assert (= bs!1097634 (and b!4704148 b!4704144)))

(assert (=> bs!1097634 (= lambda!211097 lambda!211096)))

(declare-fun bs!1097635 () Bool)

(assert (= bs!1097635 (and b!4704148 b!4704045)))

(assert (=> bs!1097635 (= lambda!211097 lambda!211080)))

(declare-fun bs!1097636 () Bool)

(assert (= bs!1097636 (and b!4704148 d!1496618)))

(assert (=> bs!1097636 (= (= lt!1867764 lt!1868123) (= lambda!211097 lambda!211084))))

(assert (=> b!4704148 true))

(declare-fun lt!1868202 () ListMap!5069)

(declare-fun lambda!211098 () Int)

(assert (=> bs!1097632 (= (= lt!1868202 lt!1868124) (= lambda!211098 lambda!211082))))

(assert (=> bs!1097632 (= (= lt!1868202 lt!1867764) (= lambda!211098 lambda!211081))))

(assert (=> bs!1097633 (not (= lambda!211098 lambda!210997))))

(assert (=> b!4704148 (= (= lt!1868202 lt!1867764) (= lambda!211098 lambda!211097))))

(assert (=> bs!1097634 (= (= lt!1868202 lt!1867764) (= lambda!211098 lambda!211096))))

(assert (=> bs!1097635 (= (= lt!1868202 lt!1867764) (= lambda!211098 lambda!211080))))

(assert (=> bs!1097636 (= (= lt!1868202 lt!1868123) (= lambda!211098 lambda!211084))))

(assert (=> b!4704148 true))

(declare-fun bs!1097637 () Bool)

(declare-fun d!1496732 () Bool)

(assert (= bs!1097637 (and d!1496732 b!4704049)))

(declare-fun lambda!211099 () Int)

(declare-fun lt!1868201 () ListMap!5069)

(assert (=> bs!1097637 (= (= lt!1868201 lt!1868124) (= lambda!211099 lambda!211082))))

(assert (=> bs!1097637 (= (= lt!1868201 lt!1867764) (= lambda!211099 lambda!211081))))

(declare-fun bs!1097638 () Bool)

(assert (= bs!1097638 (and d!1496732 d!1496612)))

(assert (=> bs!1097638 (not (= lambda!211099 lambda!210997))))

(declare-fun bs!1097639 () Bool)

(assert (= bs!1097639 (and d!1496732 b!4704148)))

(assert (=> bs!1097639 (= (= lt!1868201 lt!1867764) (= lambda!211099 lambda!211097))))

(declare-fun bs!1097640 () Bool)

(assert (= bs!1097640 (and d!1496732 b!4704144)))

(assert (=> bs!1097640 (= (= lt!1868201 lt!1867764) (= lambda!211099 lambda!211096))))

(declare-fun bs!1097641 () Bool)

(assert (= bs!1097641 (and d!1496732 b!4704045)))

(assert (=> bs!1097641 (= (= lt!1868201 lt!1867764) (= lambda!211099 lambda!211080))))

(assert (=> bs!1097639 (= (= lt!1868201 lt!1868202) (= lambda!211099 lambda!211098))))

(declare-fun bs!1097642 () Bool)

(assert (= bs!1097642 (and d!1496732 d!1496618)))

(assert (=> bs!1097642 (= (= lt!1868201 lt!1868123) (= lambda!211099 lambda!211084))))

(assert (=> d!1496732 true))

(declare-fun e!2934386 () ListMap!5069)

(assert (=> b!4704144 (= e!2934386 lt!1867764)))

(declare-fun lt!1868216 () Unit!126740)

(declare-fun call!328893 () Unit!126740)

(assert (=> b!4704144 (= lt!1868216 call!328893)))

(declare-fun call!328894 () Bool)

(assert (=> b!4704144 call!328894))

(declare-fun lt!1868203 () Unit!126740)

(assert (=> b!4704144 (= lt!1868203 lt!1868216)))

(declare-fun call!328895 () Bool)

(assert (=> b!4704144 call!328895))

(declare-fun lt!1868214 () Unit!126740)

(declare-fun Unit!126794 () Unit!126740)

(assert (=> b!4704144 (= lt!1868214 Unit!126794)))

(declare-fun b!4704145 () Bool)

(declare-fun e!2934385 () Bool)

(assert (=> b!4704145 (= e!2934385 (forall!11421 (toList!5705 lt!1867764) lambda!211098))))

(declare-fun bm!328888 () Bool)

(assert (=> bm!328888 (= call!328893 (lemmaContainsAllItsOwnKeys!742 lt!1867764))))

(declare-fun c!804035 () Bool)

(declare-fun bm!328889 () Bool)

(assert (=> bm!328889 (= call!328894 (forall!11421 (ite c!804035 (toList!5705 lt!1867764) (t!359905 (Cons!52561 lt!1867782 lt!1867775))) (ite c!804035 lambda!211096 lambda!211098)))))

(declare-fun b!4704146 () Bool)

(declare-fun e!2934384 () Bool)

(assert (=> b!4704146 (= e!2934384 (invariantList!1454 (toList!5705 lt!1868201)))))

(assert (=> d!1496732 e!2934384))

(declare-fun res!1986649 () Bool)

(assert (=> d!1496732 (=> (not res!1986649) (not e!2934384))))

(assert (=> d!1496732 (= res!1986649 (forall!11421 (Cons!52561 lt!1867782 lt!1867775) lambda!211099))))

(assert (=> d!1496732 (= lt!1868201 e!2934386)))

(assert (=> d!1496732 (= c!804035 ((_ is Nil!52561) (Cons!52561 lt!1867782 lt!1867775)))))

(assert (=> d!1496732 (noDuplicateKeys!1908 (Cons!52561 lt!1867782 lt!1867775))))

(assert (=> d!1496732 (= (addToMapMapFromBucket!1340 (Cons!52561 lt!1867782 lt!1867775) lt!1867764) lt!1868201)))

(declare-fun b!4704147 () Bool)

(declare-fun res!1986651 () Bool)

(assert (=> b!4704147 (=> (not res!1986651) (not e!2934384))))

(assert (=> b!4704147 (= res!1986651 (forall!11421 (toList!5705 lt!1867764) lambda!211099))))

(declare-fun bm!328890 () Bool)

(assert (=> bm!328890 (= call!328895 (forall!11421 (ite c!804035 (toList!5705 lt!1867764) (Cons!52561 lt!1867782 lt!1867775)) (ite c!804035 lambda!211096 lambda!211098)))))

(assert (=> b!4704148 (= e!2934386 lt!1868202)))

(declare-fun lt!1868212 () ListMap!5069)

(assert (=> b!4704148 (= lt!1868212 (+!2192 lt!1867764 (h!58850 (Cons!52561 lt!1867782 lt!1867775))))))

(assert (=> b!4704148 (= lt!1868202 (addToMapMapFromBucket!1340 (t!359905 (Cons!52561 lt!1867782 lt!1867775)) (+!2192 lt!1867764 (h!58850 (Cons!52561 lt!1867782 lt!1867775)))))))

(declare-fun lt!1868217 () Unit!126740)

(assert (=> b!4704148 (= lt!1868217 call!328893)))

(assert (=> b!4704148 (forall!11421 (toList!5705 lt!1867764) lambda!211097)))

(declare-fun lt!1868200 () Unit!126740)

(assert (=> b!4704148 (= lt!1868200 lt!1868217)))

(assert (=> b!4704148 (forall!11421 (toList!5705 lt!1868212) lambda!211098)))

(declare-fun lt!1868208 () Unit!126740)

(declare-fun Unit!126795 () Unit!126740)

(assert (=> b!4704148 (= lt!1868208 Unit!126795)))

(assert (=> b!4704148 call!328894))

(declare-fun lt!1868204 () Unit!126740)

(declare-fun Unit!126796 () Unit!126740)

(assert (=> b!4704148 (= lt!1868204 Unit!126796)))

(declare-fun lt!1868209 () Unit!126740)

(declare-fun Unit!126797 () Unit!126740)

(assert (=> b!4704148 (= lt!1868209 Unit!126797)))

(declare-fun lt!1868211 () Unit!126740)

(assert (=> b!4704148 (= lt!1868211 (forallContained!3528 (toList!5705 lt!1868212) lambda!211098 (h!58850 (Cons!52561 lt!1867782 lt!1867775))))))

(assert (=> b!4704148 (contains!15858 lt!1868212 (_1!30307 (h!58850 (Cons!52561 lt!1867782 lt!1867775))))))

(declare-fun lt!1868199 () Unit!126740)

(declare-fun Unit!126799 () Unit!126740)

(assert (=> b!4704148 (= lt!1868199 Unit!126799)))

(assert (=> b!4704148 (contains!15858 lt!1868202 (_1!30307 (h!58850 (Cons!52561 lt!1867782 lt!1867775))))))

(declare-fun lt!1868197 () Unit!126740)

(declare-fun Unit!126801 () Unit!126740)

(assert (=> b!4704148 (= lt!1868197 Unit!126801)))

(assert (=> b!4704148 (forall!11421 (Cons!52561 lt!1867782 lt!1867775) lambda!211098)))

(declare-fun lt!1868210 () Unit!126740)

(declare-fun Unit!126803 () Unit!126740)

(assert (=> b!4704148 (= lt!1868210 Unit!126803)))

(assert (=> b!4704148 (forall!11421 (toList!5705 lt!1868212) lambda!211098)))

(declare-fun lt!1868205 () Unit!126740)

(declare-fun Unit!126804 () Unit!126740)

(assert (=> b!4704148 (= lt!1868205 Unit!126804)))

(declare-fun lt!1868198 () Unit!126740)

(declare-fun Unit!126806 () Unit!126740)

(assert (=> b!4704148 (= lt!1868198 Unit!126806)))

(declare-fun lt!1868213 () Unit!126740)

(assert (=> b!4704148 (= lt!1868213 (addForallContainsKeyThenBeforeAdding!741 lt!1867764 lt!1868202 (_1!30307 (h!58850 (Cons!52561 lt!1867782 lt!1867775))) (_2!30307 (h!58850 (Cons!52561 lt!1867782 lt!1867775)))))))

(assert (=> b!4704148 (forall!11421 (toList!5705 lt!1867764) lambda!211098)))

(declare-fun lt!1868215 () Unit!126740)

(assert (=> b!4704148 (= lt!1868215 lt!1868213)))

(assert (=> b!4704148 (forall!11421 (toList!5705 lt!1867764) lambda!211098)))

(declare-fun lt!1868206 () Unit!126740)

(declare-fun Unit!126809 () Unit!126740)

(assert (=> b!4704148 (= lt!1868206 Unit!126809)))

(declare-fun res!1986650 () Bool)

(assert (=> b!4704148 (= res!1986650 call!328895)))

(assert (=> b!4704148 (=> (not res!1986650) (not e!2934385))))

(assert (=> b!4704148 e!2934385))

(declare-fun lt!1868207 () Unit!126740)

(declare-fun Unit!126812 () Unit!126740)

(assert (=> b!4704148 (= lt!1868207 Unit!126812)))

(assert (= (and d!1496732 c!804035) b!4704144))

(assert (= (and d!1496732 (not c!804035)) b!4704148))

(assert (= (and b!4704148 res!1986650) b!4704145))

(assert (= (or b!4704144 b!4704148) bm!328888))

(assert (= (or b!4704144 b!4704148) bm!328889))

(assert (= (or b!4704144 b!4704148) bm!328890))

(assert (= (and d!1496732 res!1986649) b!4704147))

(assert (= (and b!4704147 res!1986651) b!4704146))

(declare-fun m!5623699 () Bool)

(assert (=> b!4704145 m!5623699))

(declare-fun m!5623701 () Bool)

(assert (=> b!4704146 m!5623701))

(declare-fun m!5623703 () Bool)

(assert (=> d!1496732 m!5623703))

(declare-fun m!5623705 () Bool)

(assert (=> d!1496732 m!5623705))

(declare-fun m!5623707 () Bool)

(assert (=> b!4704147 m!5623707))

(declare-fun m!5623709 () Bool)

(assert (=> bm!328889 m!5623709))

(declare-fun m!5623711 () Bool)

(assert (=> bm!328890 m!5623711))

(declare-fun m!5623713 () Bool)

(assert (=> b!4704148 m!5623713))

(declare-fun m!5623715 () Bool)

(assert (=> b!4704148 m!5623715))

(assert (=> b!4704148 m!5623699))

(declare-fun m!5623717 () Bool)

(assert (=> b!4704148 m!5623717))

(declare-fun m!5623719 () Bool)

(assert (=> b!4704148 m!5623719))

(declare-fun m!5623721 () Bool)

(assert (=> b!4704148 m!5623721))

(declare-fun m!5623723 () Bool)

(assert (=> b!4704148 m!5623723))

(declare-fun m!5623725 () Bool)

(assert (=> b!4704148 m!5623725))

(assert (=> b!4704148 m!5623699))

(declare-fun m!5623727 () Bool)

(assert (=> b!4704148 m!5623727))

(declare-fun m!5623729 () Bool)

(assert (=> b!4704148 m!5623729))

(assert (=> b!4704148 m!5623717))

(assert (=> b!4704148 m!5623721))

(assert (=> bm!328888 m!5623497))

(assert (=> b!4703822 d!1496732))

(declare-fun d!1496742 () Bool)

(declare-fun e!2934396 () Bool)

(assert (=> d!1496742 e!2934396))

(declare-fun res!1986662 () Bool)

(assert (=> d!1496742 (=> (not res!1986662) (not e!2934396))))

(declare-fun lt!1868221 () ListMap!5069)

(assert (=> d!1496742 (= res!1986662 (contains!15858 lt!1868221 (_1!30307 lt!1867768)))))

(declare-fun lt!1868222 () List!52685)

(assert (=> d!1496742 (= lt!1868221 (ListMap!5070 lt!1868222))))

(declare-fun lt!1868220 () Unit!126740)

(declare-fun lt!1868219 () Unit!126740)

(assert (=> d!1496742 (= lt!1868220 lt!1868219)))

(assert (=> d!1496742 (= (getValueByKey!1867 lt!1868222 (_1!30307 lt!1867768)) (Some!12220 (_2!30307 lt!1867768)))))

(assert (=> d!1496742 (= lt!1868219 (lemmaContainsTupThenGetReturnValue!1044 lt!1868222 (_1!30307 lt!1867768) (_2!30307 lt!1867768)))))

(assert (=> d!1496742 (= lt!1868222 (insertNoDuplicatedKeys!552 (toList!5705 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764)) (_1!30307 lt!1867768) (_2!30307 lt!1867768)))))

(assert (=> d!1496742 (= (+!2192 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1867768) lt!1868221)))

(declare-fun b!4704158 () Bool)

(declare-fun res!1986661 () Bool)

(assert (=> b!4704158 (=> (not res!1986661) (not e!2934396))))

(assert (=> b!4704158 (= res!1986661 (= (getValueByKey!1867 (toList!5705 lt!1868221) (_1!30307 lt!1867768)) (Some!12220 (_2!30307 lt!1867768))))))

(declare-fun b!4704159 () Bool)

(assert (=> b!4704159 (= e!2934396 (contains!15863 (toList!5705 lt!1868221) lt!1867768))))

(assert (= (and d!1496742 res!1986662) b!4704158))

(assert (= (and b!4704158 res!1986661) b!4704159))

(declare-fun m!5623731 () Bool)

(assert (=> d!1496742 m!5623731))

(declare-fun m!5623733 () Bool)

(assert (=> d!1496742 m!5623733))

(declare-fun m!5623735 () Bool)

(assert (=> d!1496742 m!5623735))

(declare-fun m!5623737 () Bool)

(assert (=> d!1496742 m!5623737))

(declare-fun m!5623739 () Bool)

(assert (=> b!4704158 m!5623739))

(declare-fun m!5623741 () Bool)

(assert (=> b!4704159 m!5623741))

(assert (=> b!4703822 d!1496742))

(declare-fun bs!1097644 () Bool)

(declare-fun d!1496744 () Bool)

(assert (= bs!1097644 (and d!1496744 d!1496730)))

(declare-fun lambda!211102 () Int)

(assert (=> bs!1097644 (= lambda!211102 lambda!211095)))

(declare-fun bs!1097645 () Bool)

(assert (= bs!1097645 (and d!1496744 start!477412)))

(assert (=> bs!1097645 (= lambda!211102 lambda!210977)))

(declare-fun bs!1097646 () Bool)

(assert (= bs!1097646 (and d!1496744 d!1496608)))

(assert (=> bs!1097646 (= lambda!211102 lambda!210994)))

(declare-fun bs!1097647 () Bool)

(assert (= bs!1097647 (and d!1496744 d!1496596)))

(assert (=> bs!1097647 (= lambda!211102 lambda!210993)))

(declare-fun bs!1097648 () Bool)

(assert (= bs!1097648 (and d!1496744 d!1496590)))

(assert (=> bs!1097648 (= lambda!211102 lambda!210984)))

(declare-fun bs!1097649 () Bool)

(assert (= bs!1097649 (and d!1496744 d!1496664)))

(assert (=> bs!1097649 (= lambda!211102 lambda!211086)))

(declare-fun bs!1097650 () Bool)

(assert (= bs!1097650 (and d!1496744 d!1496582)))

(assert (=> bs!1097650 (= lambda!211102 lambda!210983)))

(declare-fun bs!1097651 () Bool)

(assert (= bs!1097651 (and d!1496744 d!1496698)))

(assert (=> bs!1097651 (not (= lambda!211102 lambda!211091))))

(declare-fun bs!1097652 () Bool)

(assert (= bs!1097652 (and d!1496744 d!1496616)))

(assert (=> bs!1097652 (= lambda!211102 lambda!210998)))

(assert (=> d!1496744 (contains!15858 (extractMap!1934 (toList!5706 lt!1867785)) key!4653)))

(declare-fun lt!1868225 () Unit!126740)

(declare-fun choose!32984 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> d!1496744 (= lt!1868225 (choose!32984 lt!1867785 key!4653 hashF!1323))))

(assert (=> d!1496744 (forall!11419 (toList!5706 lt!1867785) lambda!211102)))

(assert (=> d!1496744 (= (lemmaListContainsThenExtractedMapContains!500 lt!1867785 key!4653 hashF!1323) lt!1868225)))

(declare-fun bs!1097653 () Bool)

(assert (= bs!1097653 d!1496744))

(declare-fun m!5623743 () Bool)

(assert (=> bs!1097653 m!5623743))

(assert (=> bs!1097653 m!5623743))

(declare-fun m!5623745 () Bool)

(assert (=> bs!1097653 m!5623745))

(declare-fun m!5623747 () Bool)

(assert (=> bs!1097653 m!5623747))

(declare-fun m!5623749 () Bool)

(assert (=> bs!1097653 m!5623749))

(assert (=> b!4703822 d!1496744))

(declare-fun bs!1097654 () Bool)

(declare-fun b!4704160 () Bool)

(assert (= bs!1097654 (and b!4704160 b!4704049)))

(declare-fun lambda!211103 () Int)

(assert (=> bs!1097654 (= (= lt!1867764 lt!1868124) (= lambda!211103 lambda!211082))))

(assert (=> bs!1097654 (= lambda!211103 lambda!211081)))

(declare-fun bs!1097655 () Bool)

(assert (= bs!1097655 (and b!4704160 d!1496732)))

(assert (=> bs!1097655 (= (= lt!1867764 lt!1868201) (= lambda!211103 lambda!211099))))

(declare-fun bs!1097656 () Bool)

(assert (= bs!1097656 (and b!4704160 d!1496612)))

(assert (=> bs!1097656 (not (= lambda!211103 lambda!210997))))

(declare-fun bs!1097657 () Bool)

(assert (= bs!1097657 (and b!4704160 b!4704148)))

(assert (=> bs!1097657 (= lambda!211103 lambda!211097)))

(declare-fun bs!1097658 () Bool)

(assert (= bs!1097658 (and b!4704160 b!4704144)))

(assert (=> bs!1097658 (= lambda!211103 lambda!211096)))

(declare-fun bs!1097659 () Bool)

(assert (= bs!1097659 (and b!4704160 b!4704045)))

(assert (=> bs!1097659 (= lambda!211103 lambda!211080)))

(assert (=> bs!1097657 (= (= lt!1867764 lt!1868202) (= lambda!211103 lambda!211098))))

(declare-fun bs!1097660 () Bool)

(assert (= bs!1097660 (and b!4704160 d!1496618)))

(assert (=> bs!1097660 (= (= lt!1867764 lt!1868123) (= lambda!211103 lambda!211084))))

(assert (=> b!4704160 true))

(declare-fun bs!1097661 () Bool)

(declare-fun b!4704164 () Bool)

(assert (= bs!1097661 (and b!4704164 b!4704049)))

(declare-fun lambda!211104 () Int)

(assert (=> bs!1097661 (= (= lt!1867764 lt!1868124) (= lambda!211104 lambda!211082))))

(assert (=> bs!1097661 (= lambda!211104 lambda!211081)))

(declare-fun bs!1097662 () Bool)

(assert (= bs!1097662 (and b!4704164 b!4704160)))

(assert (=> bs!1097662 (= lambda!211104 lambda!211103)))

(declare-fun bs!1097663 () Bool)

(assert (= bs!1097663 (and b!4704164 d!1496732)))

(assert (=> bs!1097663 (= (= lt!1867764 lt!1868201) (= lambda!211104 lambda!211099))))

(declare-fun bs!1097664 () Bool)

(assert (= bs!1097664 (and b!4704164 d!1496612)))

(assert (=> bs!1097664 (not (= lambda!211104 lambda!210997))))

(declare-fun bs!1097665 () Bool)

(assert (= bs!1097665 (and b!4704164 b!4704148)))

(assert (=> bs!1097665 (= lambda!211104 lambda!211097)))

(declare-fun bs!1097666 () Bool)

(assert (= bs!1097666 (and b!4704164 b!4704144)))

(assert (=> bs!1097666 (= lambda!211104 lambda!211096)))

(declare-fun bs!1097667 () Bool)

(assert (= bs!1097667 (and b!4704164 b!4704045)))

(assert (=> bs!1097667 (= lambda!211104 lambda!211080)))

(assert (=> bs!1097665 (= (= lt!1867764 lt!1868202) (= lambda!211104 lambda!211098))))

(declare-fun bs!1097668 () Bool)

(assert (= bs!1097668 (and b!4704164 d!1496618)))

(assert (=> bs!1097668 (= (= lt!1867764 lt!1868123) (= lambda!211104 lambda!211084))))

(assert (=> b!4704164 true))

(declare-fun lt!1868231 () ListMap!5069)

(declare-fun lambda!211105 () Int)

(assert (=> bs!1097661 (= (= lt!1868231 lt!1868124) (= lambda!211105 lambda!211082))))

(assert (=> bs!1097661 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211081))))

(assert (=> bs!1097662 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211103))))

(assert (=> bs!1097663 (= (= lt!1868231 lt!1868201) (= lambda!211105 lambda!211099))))

(assert (=> bs!1097664 (not (= lambda!211105 lambda!210997))))

(assert (=> bs!1097665 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211097))))

(assert (=> bs!1097666 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211096))))

(assert (=> bs!1097667 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211080))))

(assert (=> bs!1097665 (= (= lt!1868231 lt!1868202) (= lambda!211105 lambda!211098))))

(assert (=> bs!1097668 (= (= lt!1868231 lt!1868123) (= lambda!211105 lambda!211084))))

(assert (=> b!4704164 (= (= lt!1868231 lt!1867764) (= lambda!211105 lambda!211104))))

(assert (=> b!4704164 true))

(declare-fun bs!1097669 () Bool)

(declare-fun d!1496746 () Bool)

(assert (= bs!1097669 (and d!1496746 b!4704049)))

(declare-fun lambda!211106 () Int)

(declare-fun lt!1868230 () ListMap!5069)

(assert (=> bs!1097669 (= (= lt!1868230 lt!1868124) (= lambda!211106 lambda!211082))))

(assert (=> bs!1097669 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211081))))

(declare-fun bs!1097670 () Bool)

(assert (= bs!1097670 (and d!1496746 b!4704160)))

(assert (=> bs!1097670 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211103))))

(declare-fun bs!1097671 () Bool)

(assert (= bs!1097671 (and d!1496746 d!1496732)))

(assert (=> bs!1097671 (= (= lt!1868230 lt!1868201) (= lambda!211106 lambda!211099))))

(declare-fun bs!1097672 () Bool)

(assert (= bs!1097672 (and d!1496746 d!1496612)))

(assert (=> bs!1097672 (not (= lambda!211106 lambda!210997))))

(declare-fun bs!1097673 () Bool)

(assert (= bs!1097673 (and d!1496746 b!4704148)))

(assert (=> bs!1097673 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211097))))

(declare-fun bs!1097674 () Bool)

(assert (= bs!1097674 (and d!1496746 b!4704144)))

(assert (=> bs!1097674 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211096))))

(declare-fun bs!1097675 () Bool)

(assert (= bs!1097675 (and d!1496746 b!4704164)))

(assert (=> bs!1097675 (= (= lt!1868230 lt!1868231) (= lambda!211106 lambda!211105))))

(declare-fun bs!1097676 () Bool)

(assert (= bs!1097676 (and d!1496746 b!4704045)))

(assert (=> bs!1097676 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211080))))

(assert (=> bs!1097673 (= (= lt!1868230 lt!1868202) (= lambda!211106 lambda!211098))))

(declare-fun bs!1097677 () Bool)

(assert (= bs!1097677 (and d!1496746 d!1496618)))

(assert (=> bs!1097677 (= (= lt!1868230 lt!1868123) (= lambda!211106 lambda!211084))))

(assert (=> bs!1097675 (= (= lt!1868230 lt!1867764) (= lambda!211106 lambda!211104))))

(assert (=> d!1496746 true))

(declare-fun e!2934399 () ListMap!5069)

(assert (=> b!4704160 (= e!2934399 lt!1867764)))

(declare-fun lt!1868245 () Unit!126740)

(declare-fun call!328896 () Unit!126740)

(assert (=> b!4704160 (= lt!1868245 call!328896)))

(declare-fun call!328897 () Bool)

(assert (=> b!4704160 call!328897))

(declare-fun lt!1868232 () Unit!126740)

(assert (=> b!4704160 (= lt!1868232 lt!1868245)))

(declare-fun call!328898 () Bool)

(assert (=> b!4704160 call!328898))

(declare-fun lt!1868243 () Unit!126740)

(declare-fun Unit!126816 () Unit!126740)

(assert (=> b!4704160 (= lt!1868243 Unit!126816)))

(declare-fun b!4704161 () Bool)

(declare-fun e!2934398 () Bool)

(assert (=> b!4704161 (= e!2934398 (forall!11421 (toList!5705 lt!1867764) lambda!211105))))

(declare-fun bm!328891 () Bool)

(assert (=> bm!328891 (= call!328896 (lemmaContainsAllItsOwnKeys!742 lt!1867764))))

(declare-fun bm!328892 () Bool)

(declare-fun c!804036 () Bool)

(assert (=> bm!328892 (= call!328897 (forall!11421 (ite c!804036 (toList!5705 lt!1867764) (t!359905 lt!1867775)) (ite c!804036 lambda!211103 lambda!211105)))))

(declare-fun b!4704162 () Bool)

(declare-fun e!2934397 () Bool)

(assert (=> b!4704162 (= e!2934397 (invariantList!1454 (toList!5705 lt!1868230)))))

(assert (=> d!1496746 e!2934397))

(declare-fun res!1986663 () Bool)

(assert (=> d!1496746 (=> (not res!1986663) (not e!2934397))))

(assert (=> d!1496746 (= res!1986663 (forall!11421 lt!1867775 lambda!211106))))

(assert (=> d!1496746 (= lt!1868230 e!2934399)))

(assert (=> d!1496746 (= c!804036 ((_ is Nil!52561) lt!1867775))))

(assert (=> d!1496746 (noDuplicateKeys!1908 lt!1867775)))

(assert (=> d!1496746 (= (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1868230)))

(declare-fun b!4704163 () Bool)

(declare-fun res!1986665 () Bool)

(assert (=> b!4704163 (=> (not res!1986665) (not e!2934397))))

(assert (=> b!4704163 (= res!1986665 (forall!11421 (toList!5705 lt!1867764) lambda!211106))))

(declare-fun bm!328893 () Bool)

(assert (=> bm!328893 (= call!328898 (forall!11421 (ite c!804036 (toList!5705 lt!1867764) lt!1867775) (ite c!804036 lambda!211103 lambda!211105)))))

(assert (=> b!4704164 (= e!2934399 lt!1868231)))

(declare-fun lt!1868241 () ListMap!5069)

(assert (=> b!4704164 (= lt!1868241 (+!2192 lt!1867764 (h!58850 lt!1867775)))))

(assert (=> b!4704164 (= lt!1868231 (addToMapMapFromBucket!1340 (t!359905 lt!1867775) (+!2192 lt!1867764 (h!58850 lt!1867775))))))

(declare-fun lt!1868246 () Unit!126740)

(assert (=> b!4704164 (= lt!1868246 call!328896)))

(assert (=> b!4704164 (forall!11421 (toList!5705 lt!1867764) lambda!211104)))

(declare-fun lt!1868229 () Unit!126740)

(assert (=> b!4704164 (= lt!1868229 lt!1868246)))

(assert (=> b!4704164 (forall!11421 (toList!5705 lt!1868241) lambda!211105)))

(declare-fun lt!1868237 () Unit!126740)

(declare-fun Unit!126817 () Unit!126740)

(assert (=> b!4704164 (= lt!1868237 Unit!126817)))

(assert (=> b!4704164 call!328897))

(declare-fun lt!1868233 () Unit!126740)

(declare-fun Unit!126818 () Unit!126740)

(assert (=> b!4704164 (= lt!1868233 Unit!126818)))

(declare-fun lt!1868238 () Unit!126740)

(declare-fun Unit!126819 () Unit!126740)

(assert (=> b!4704164 (= lt!1868238 Unit!126819)))

(declare-fun lt!1868240 () Unit!126740)

(assert (=> b!4704164 (= lt!1868240 (forallContained!3528 (toList!5705 lt!1868241) lambda!211105 (h!58850 lt!1867775)))))

(assert (=> b!4704164 (contains!15858 lt!1868241 (_1!30307 (h!58850 lt!1867775)))))

(declare-fun lt!1868228 () Unit!126740)

(declare-fun Unit!126820 () Unit!126740)

(assert (=> b!4704164 (= lt!1868228 Unit!126820)))

(assert (=> b!4704164 (contains!15858 lt!1868231 (_1!30307 (h!58850 lt!1867775)))))

(declare-fun lt!1868226 () Unit!126740)

(declare-fun Unit!126821 () Unit!126740)

(assert (=> b!4704164 (= lt!1868226 Unit!126821)))

(assert (=> b!4704164 (forall!11421 lt!1867775 lambda!211105)))

(declare-fun lt!1868239 () Unit!126740)

(declare-fun Unit!126822 () Unit!126740)

(assert (=> b!4704164 (= lt!1868239 Unit!126822)))

(assert (=> b!4704164 (forall!11421 (toList!5705 lt!1868241) lambda!211105)))

(declare-fun lt!1868234 () Unit!126740)

(declare-fun Unit!126823 () Unit!126740)

(assert (=> b!4704164 (= lt!1868234 Unit!126823)))

(declare-fun lt!1868227 () Unit!126740)

(declare-fun Unit!126824 () Unit!126740)

(assert (=> b!4704164 (= lt!1868227 Unit!126824)))

(declare-fun lt!1868242 () Unit!126740)

(assert (=> b!4704164 (= lt!1868242 (addForallContainsKeyThenBeforeAdding!741 lt!1867764 lt!1868231 (_1!30307 (h!58850 lt!1867775)) (_2!30307 (h!58850 lt!1867775))))))

(assert (=> b!4704164 (forall!11421 (toList!5705 lt!1867764) lambda!211105)))

(declare-fun lt!1868244 () Unit!126740)

(assert (=> b!4704164 (= lt!1868244 lt!1868242)))

(assert (=> b!4704164 (forall!11421 (toList!5705 lt!1867764) lambda!211105)))

(declare-fun lt!1868235 () Unit!126740)

(declare-fun Unit!126825 () Unit!126740)

(assert (=> b!4704164 (= lt!1868235 Unit!126825)))

(declare-fun res!1986664 () Bool)

(assert (=> b!4704164 (= res!1986664 call!328898)))

(assert (=> b!4704164 (=> (not res!1986664) (not e!2934398))))

(assert (=> b!4704164 e!2934398))

(declare-fun lt!1868236 () Unit!126740)

(declare-fun Unit!126826 () Unit!126740)

(assert (=> b!4704164 (= lt!1868236 Unit!126826)))

(assert (= (and d!1496746 c!804036) b!4704160))

(assert (= (and d!1496746 (not c!804036)) b!4704164))

(assert (= (and b!4704164 res!1986664) b!4704161))

(assert (= (or b!4704160 b!4704164) bm!328891))

(assert (= (or b!4704160 b!4704164) bm!328892))

(assert (= (or b!4704160 b!4704164) bm!328893))

(assert (= (and d!1496746 res!1986663) b!4704163))

(assert (= (and b!4704163 res!1986665) b!4704162))

(declare-fun m!5623751 () Bool)

(assert (=> b!4704161 m!5623751))

(declare-fun m!5623753 () Bool)

(assert (=> b!4704162 m!5623753))

(declare-fun m!5623755 () Bool)

(assert (=> d!1496746 m!5623755))

(assert (=> d!1496746 m!5623679))

(declare-fun m!5623757 () Bool)

(assert (=> b!4704163 m!5623757))

(declare-fun m!5623759 () Bool)

(assert (=> bm!328892 m!5623759))

(declare-fun m!5623761 () Bool)

(assert (=> bm!328893 m!5623761))

(declare-fun m!5623763 () Bool)

(assert (=> b!4704164 m!5623763))

(declare-fun m!5623765 () Bool)

(assert (=> b!4704164 m!5623765))

(assert (=> b!4704164 m!5623751))

(declare-fun m!5623767 () Bool)

(assert (=> b!4704164 m!5623767))

(declare-fun m!5623769 () Bool)

(assert (=> b!4704164 m!5623769))

(declare-fun m!5623771 () Bool)

(assert (=> b!4704164 m!5623771))

(declare-fun m!5623773 () Bool)

(assert (=> b!4704164 m!5623773))

(declare-fun m!5623775 () Bool)

(assert (=> b!4704164 m!5623775))

(assert (=> b!4704164 m!5623751))

(declare-fun m!5623777 () Bool)

(assert (=> b!4704164 m!5623777))

(declare-fun m!5623779 () Bool)

(assert (=> b!4704164 m!5623779))

(assert (=> b!4704164 m!5623767))

(assert (=> b!4704164 m!5623771))

(assert (=> bm!328891 m!5623497))

(assert (=> b!4703822 d!1496746))

(declare-fun bs!1097678 () Bool)

(declare-fun b!4704165 () Bool)

(assert (= bs!1097678 (and b!4704165 b!4704049)))

(declare-fun lambda!211107 () Int)

(assert (=> bs!1097678 (= (= lt!1867764 lt!1868124) (= lambda!211107 lambda!211082))))

(declare-fun bs!1097679 () Bool)

(assert (= bs!1097679 (and b!4704165 d!1496746)))

(assert (=> bs!1097679 (= (= lt!1867764 lt!1868230) (= lambda!211107 lambda!211106))))

(assert (=> bs!1097678 (= lambda!211107 lambda!211081)))

(declare-fun bs!1097680 () Bool)

(assert (= bs!1097680 (and b!4704165 b!4704160)))

(assert (=> bs!1097680 (= lambda!211107 lambda!211103)))

(declare-fun bs!1097681 () Bool)

(assert (= bs!1097681 (and b!4704165 d!1496732)))

(assert (=> bs!1097681 (= (= lt!1867764 lt!1868201) (= lambda!211107 lambda!211099))))

(declare-fun bs!1097682 () Bool)

(assert (= bs!1097682 (and b!4704165 d!1496612)))

(assert (=> bs!1097682 (not (= lambda!211107 lambda!210997))))

(declare-fun bs!1097683 () Bool)

(assert (= bs!1097683 (and b!4704165 b!4704148)))

(assert (=> bs!1097683 (= lambda!211107 lambda!211097)))

(declare-fun bs!1097684 () Bool)

(assert (= bs!1097684 (and b!4704165 b!4704144)))

(assert (=> bs!1097684 (= lambda!211107 lambda!211096)))

(declare-fun bs!1097685 () Bool)

(assert (= bs!1097685 (and b!4704165 b!4704164)))

(assert (=> bs!1097685 (= (= lt!1867764 lt!1868231) (= lambda!211107 lambda!211105))))

(declare-fun bs!1097686 () Bool)

(assert (= bs!1097686 (and b!4704165 b!4704045)))

(assert (=> bs!1097686 (= lambda!211107 lambda!211080)))

(assert (=> bs!1097683 (= (= lt!1867764 lt!1868202) (= lambda!211107 lambda!211098))))

(declare-fun bs!1097687 () Bool)

(assert (= bs!1097687 (and b!4704165 d!1496618)))

(assert (=> bs!1097687 (= (= lt!1867764 lt!1868123) (= lambda!211107 lambda!211084))))

(assert (=> bs!1097685 (= lambda!211107 lambda!211104)))

(assert (=> b!4704165 true))

(declare-fun bs!1097688 () Bool)

(declare-fun b!4704169 () Bool)

(assert (= bs!1097688 (and b!4704169 b!4704049)))

(declare-fun lambda!211108 () Int)

(assert (=> bs!1097688 (= (= lt!1867764 lt!1868124) (= lambda!211108 lambda!211082))))

(declare-fun bs!1097689 () Bool)

(assert (= bs!1097689 (and b!4704169 b!4704165)))

(assert (=> bs!1097689 (= lambda!211108 lambda!211107)))

(declare-fun bs!1097690 () Bool)

(assert (= bs!1097690 (and b!4704169 d!1496746)))

(assert (=> bs!1097690 (= (= lt!1867764 lt!1868230) (= lambda!211108 lambda!211106))))

(assert (=> bs!1097688 (= lambda!211108 lambda!211081)))

(declare-fun bs!1097691 () Bool)

(assert (= bs!1097691 (and b!4704169 b!4704160)))

(assert (=> bs!1097691 (= lambda!211108 lambda!211103)))

(declare-fun bs!1097692 () Bool)

(assert (= bs!1097692 (and b!4704169 d!1496732)))

(assert (=> bs!1097692 (= (= lt!1867764 lt!1868201) (= lambda!211108 lambda!211099))))

(declare-fun bs!1097693 () Bool)

(assert (= bs!1097693 (and b!4704169 d!1496612)))

(assert (=> bs!1097693 (not (= lambda!211108 lambda!210997))))

(declare-fun bs!1097694 () Bool)

(assert (= bs!1097694 (and b!4704169 b!4704148)))

(assert (=> bs!1097694 (= lambda!211108 lambda!211097)))

(declare-fun bs!1097695 () Bool)

(assert (= bs!1097695 (and b!4704169 b!4704144)))

(assert (=> bs!1097695 (= lambda!211108 lambda!211096)))

(declare-fun bs!1097696 () Bool)

(assert (= bs!1097696 (and b!4704169 b!4704164)))

(assert (=> bs!1097696 (= (= lt!1867764 lt!1868231) (= lambda!211108 lambda!211105))))

(declare-fun bs!1097697 () Bool)

(assert (= bs!1097697 (and b!4704169 b!4704045)))

(assert (=> bs!1097697 (= lambda!211108 lambda!211080)))

(assert (=> bs!1097694 (= (= lt!1867764 lt!1868202) (= lambda!211108 lambda!211098))))

(declare-fun bs!1097698 () Bool)

(assert (= bs!1097698 (and b!4704169 d!1496618)))

(assert (=> bs!1097698 (= (= lt!1867764 lt!1868123) (= lambda!211108 lambda!211084))))

(assert (=> bs!1097696 (= lambda!211108 lambda!211104)))

(assert (=> b!4704169 true))

(declare-fun lt!1868252 () ListMap!5069)

(declare-fun lambda!211109 () Int)

(assert (=> bs!1097688 (= (= lt!1868252 lt!1868124) (= lambda!211109 lambda!211082))))

(assert (=> bs!1097689 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211107))))

(assert (=> bs!1097690 (= (= lt!1868252 lt!1868230) (= lambda!211109 lambda!211106))))

(assert (=> b!4704169 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211108))))

(assert (=> bs!1097688 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211081))))

(assert (=> bs!1097691 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211103))))

(assert (=> bs!1097692 (= (= lt!1868252 lt!1868201) (= lambda!211109 lambda!211099))))

(assert (=> bs!1097693 (not (= lambda!211109 lambda!210997))))

(assert (=> bs!1097694 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211097))))

(assert (=> bs!1097695 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211096))))

(assert (=> bs!1097696 (= (= lt!1868252 lt!1868231) (= lambda!211109 lambda!211105))))

(assert (=> bs!1097697 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211080))))

(assert (=> bs!1097694 (= (= lt!1868252 lt!1868202) (= lambda!211109 lambda!211098))))

(assert (=> bs!1097698 (= (= lt!1868252 lt!1868123) (= lambda!211109 lambda!211084))))

(assert (=> bs!1097696 (= (= lt!1868252 lt!1867764) (= lambda!211109 lambda!211104))))

(assert (=> b!4704169 true))

(declare-fun bs!1097699 () Bool)

(declare-fun d!1496748 () Bool)

(assert (= bs!1097699 (and d!1496748 b!4704049)))

(declare-fun lambda!211110 () Int)

(declare-fun lt!1868251 () ListMap!5069)

(assert (=> bs!1097699 (= (= lt!1868251 lt!1868124) (= lambda!211110 lambda!211082))))

(declare-fun bs!1097700 () Bool)

(assert (= bs!1097700 (and d!1496748 b!4704165)))

(assert (=> bs!1097700 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211107))))

(declare-fun bs!1097701 () Bool)

(assert (= bs!1097701 (and d!1496748 d!1496746)))

(assert (=> bs!1097701 (= (= lt!1868251 lt!1868230) (= lambda!211110 lambda!211106))))

(declare-fun bs!1097702 () Bool)

(assert (= bs!1097702 (and d!1496748 b!4704169)))

(assert (=> bs!1097702 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211108))))

(assert (=> bs!1097699 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211081))))

(declare-fun bs!1097703 () Bool)

(assert (= bs!1097703 (and d!1496748 b!4704160)))

(assert (=> bs!1097703 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211103))))

(declare-fun bs!1097704 () Bool)

(assert (= bs!1097704 (and d!1496748 d!1496732)))

(assert (=> bs!1097704 (= (= lt!1868251 lt!1868201) (= lambda!211110 lambda!211099))))

(declare-fun bs!1097705 () Bool)

(assert (= bs!1097705 (and d!1496748 d!1496612)))

(assert (=> bs!1097705 (not (= lambda!211110 lambda!210997))))

(declare-fun bs!1097706 () Bool)

(assert (= bs!1097706 (and d!1496748 b!4704148)))

(assert (=> bs!1097706 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211097))))

(assert (=> bs!1097702 (= (= lt!1868251 lt!1868252) (= lambda!211110 lambda!211109))))

(declare-fun bs!1097707 () Bool)

(assert (= bs!1097707 (and d!1496748 b!4704144)))

(assert (=> bs!1097707 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211096))))

(declare-fun bs!1097708 () Bool)

(assert (= bs!1097708 (and d!1496748 b!4704164)))

(assert (=> bs!1097708 (= (= lt!1868251 lt!1868231) (= lambda!211110 lambda!211105))))

(declare-fun bs!1097709 () Bool)

(assert (= bs!1097709 (and d!1496748 b!4704045)))

(assert (=> bs!1097709 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211080))))

(assert (=> bs!1097706 (= (= lt!1868251 lt!1868202) (= lambda!211110 lambda!211098))))

(declare-fun bs!1097710 () Bool)

(assert (= bs!1097710 (and d!1496748 d!1496618)))

(assert (=> bs!1097710 (= (= lt!1868251 lt!1868123) (= lambda!211110 lambda!211084))))

(assert (=> bs!1097708 (= (= lt!1868251 lt!1867764) (= lambda!211110 lambda!211104))))

(assert (=> d!1496748 true))

(declare-fun e!2934402 () ListMap!5069)

(assert (=> b!4704165 (= e!2934402 lt!1867764)))

(declare-fun lt!1868266 () Unit!126740)

(declare-fun call!328899 () Unit!126740)

(assert (=> b!4704165 (= lt!1868266 call!328899)))

(declare-fun call!328900 () Bool)

(assert (=> b!4704165 call!328900))

(declare-fun lt!1868253 () Unit!126740)

(assert (=> b!4704165 (= lt!1868253 lt!1868266)))

(declare-fun call!328901 () Bool)

(assert (=> b!4704165 call!328901))

(declare-fun lt!1868264 () Unit!126740)

(declare-fun Unit!126827 () Unit!126740)

(assert (=> b!4704165 (= lt!1868264 Unit!126827)))

(declare-fun b!4704166 () Bool)

(declare-fun e!2934401 () Bool)

(assert (=> b!4704166 (= e!2934401 (forall!11421 (toList!5705 lt!1867764) lambda!211109))))

(declare-fun bm!328894 () Bool)

(assert (=> bm!328894 (= call!328899 (lemmaContainsAllItsOwnKeys!742 lt!1867764))))

(declare-fun c!804037 () Bool)

(declare-fun bm!328895 () Bool)

(assert (=> bm!328895 (= call!328900 (forall!11421 (ite c!804037 (toList!5705 lt!1867764) (t!359905 lt!1867769)) (ite c!804037 lambda!211107 lambda!211109)))))

(declare-fun b!4704167 () Bool)

(declare-fun e!2934400 () Bool)

(assert (=> b!4704167 (= e!2934400 (invariantList!1454 (toList!5705 lt!1868251)))))

(assert (=> d!1496748 e!2934400))

(declare-fun res!1986666 () Bool)

(assert (=> d!1496748 (=> (not res!1986666) (not e!2934400))))

(assert (=> d!1496748 (= res!1986666 (forall!11421 lt!1867769 lambda!211110))))

(assert (=> d!1496748 (= lt!1868251 e!2934402)))

(assert (=> d!1496748 (= c!804037 ((_ is Nil!52561) lt!1867769))))

(assert (=> d!1496748 (noDuplicateKeys!1908 lt!1867769)))

(assert (=> d!1496748 (= (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1868251)))

(declare-fun b!4704168 () Bool)

(declare-fun res!1986668 () Bool)

(assert (=> b!4704168 (=> (not res!1986668) (not e!2934400))))

(assert (=> b!4704168 (= res!1986668 (forall!11421 (toList!5705 lt!1867764) lambda!211110))))

(declare-fun bm!328896 () Bool)

(assert (=> bm!328896 (= call!328901 (forall!11421 (ite c!804037 (toList!5705 lt!1867764) lt!1867769) (ite c!804037 lambda!211107 lambda!211109)))))

(assert (=> b!4704169 (= e!2934402 lt!1868252)))

(declare-fun lt!1868262 () ListMap!5069)

(assert (=> b!4704169 (= lt!1868262 (+!2192 lt!1867764 (h!58850 lt!1867769)))))

(assert (=> b!4704169 (= lt!1868252 (addToMapMapFromBucket!1340 (t!359905 lt!1867769) (+!2192 lt!1867764 (h!58850 lt!1867769))))))

(declare-fun lt!1868267 () Unit!126740)

(assert (=> b!4704169 (= lt!1868267 call!328899)))

(assert (=> b!4704169 (forall!11421 (toList!5705 lt!1867764) lambda!211108)))

(declare-fun lt!1868250 () Unit!126740)

(assert (=> b!4704169 (= lt!1868250 lt!1868267)))

(assert (=> b!4704169 (forall!11421 (toList!5705 lt!1868262) lambda!211109)))

(declare-fun lt!1868258 () Unit!126740)

(declare-fun Unit!126828 () Unit!126740)

(assert (=> b!4704169 (= lt!1868258 Unit!126828)))

(assert (=> b!4704169 call!328900))

(declare-fun lt!1868254 () Unit!126740)

(declare-fun Unit!126829 () Unit!126740)

(assert (=> b!4704169 (= lt!1868254 Unit!126829)))

(declare-fun lt!1868259 () Unit!126740)

(declare-fun Unit!126830 () Unit!126740)

(assert (=> b!4704169 (= lt!1868259 Unit!126830)))

(declare-fun lt!1868261 () Unit!126740)

(assert (=> b!4704169 (= lt!1868261 (forallContained!3528 (toList!5705 lt!1868262) lambda!211109 (h!58850 lt!1867769)))))

(assert (=> b!4704169 (contains!15858 lt!1868262 (_1!30307 (h!58850 lt!1867769)))))

(declare-fun lt!1868249 () Unit!126740)

(declare-fun Unit!126831 () Unit!126740)

(assert (=> b!4704169 (= lt!1868249 Unit!126831)))

(assert (=> b!4704169 (contains!15858 lt!1868252 (_1!30307 (h!58850 lt!1867769)))))

(declare-fun lt!1868247 () Unit!126740)

(declare-fun Unit!126832 () Unit!126740)

(assert (=> b!4704169 (= lt!1868247 Unit!126832)))

(assert (=> b!4704169 (forall!11421 lt!1867769 lambda!211109)))

(declare-fun lt!1868260 () Unit!126740)

(declare-fun Unit!126833 () Unit!126740)

(assert (=> b!4704169 (= lt!1868260 Unit!126833)))

(assert (=> b!4704169 (forall!11421 (toList!5705 lt!1868262) lambda!211109)))

(declare-fun lt!1868255 () Unit!126740)

(declare-fun Unit!126834 () Unit!126740)

(assert (=> b!4704169 (= lt!1868255 Unit!126834)))

(declare-fun lt!1868248 () Unit!126740)

(declare-fun Unit!126835 () Unit!126740)

(assert (=> b!4704169 (= lt!1868248 Unit!126835)))

(declare-fun lt!1868263 () Unit!126740)

(assert (=> b!4704169 (= lt!1868263 (addForallContainsKeyThenBeforeAdding!741 lt!1867764 lt!1868252 (_1!30307 (h!58850 lt!1867769)) (_2!30307 (h!58850 lt!1867769))))))

(assert (=> b!4704169 (forall!11421 (toList!5705 lt!1867764) lambda!211109)))

(declare-fun lt!1868265 () Unit!126740)

(assert (=> b!4704169 (= lt!1868265 lt!1868263)))

(assert (=> b!4704169 (forall!11421 (toList!5705 lt!1867764) lambda!211109)))

(declare-fun lt!1868256 () Unit!126740)

(declare-fun Unit!126837 () Unit!126740)

(assert (=> b!4704169 (= lt!1868256 Unit!126837)))

(declare-fun res!1986667 () Bool)

(assert (=> b!4704169 (= res!1986667 call!328901)))

(assert (=> b!4704169 (=> (not res!1986667) (not e!2934401))))

(assert (=> b!4704169 e!2934401))

(declare-fun lt!1868257 () Unit!126740)

(declare-fun Unit!126838 () Unit!126740)

(assert (=> b!4704169 (= lt!1868257 Unit!126838)))

(assert (= (and d!1496748 c!804037) b!4704165))

(assert (= (and d!1496748 (not c!804037)) b!4704169))

(assert (= (and b!4704169 res!1986667) b!4704166))

(assert (= (or b!4704165 b!4704169) bm!328894))

(assert (= (or b!4704165 b!4704169) bm!328895))

(assert (= (or b!4704165 b!4704169) bm!328896))

(assert (= (and d!1496748 res!1986666) b!4704168))

(assert (= (and b!4704168 res!1986668) b!4704167))

(declare-fun m!5623781 () Bool)

(assert (=> b!4704166 m!5623781))

(declare-fun m!5623783 () Bool)

(assert (=> b!4704167 m!5623783))

(declare-fun m!5623785 () Bool)

(assert (=> d!1496748 m!5623785))

(assert (=> d!1496748 m!5623649))

(declare-fun m!5623787 () Bool)

(assert (=> b!4704168 m!5623787))

(declare-fun m!5623789 () Bool)

(assert (=> bm!328895 m!5623789))

(declare-fun m!5623791 () Bool)

(assert (=> bm!328896 m!5623791))

(declare-fun m!5623793 () Bool)

(assert (=> b!4704169 m!5623793))

(declare-fun m!5623795 () Bool)

(assert (=> b!4704169 m!5623795))

(assert (=> b!4704169 m!5623781))

(declare-fun m!5623797 () Bool)

(assert (=> b!4704169 m!5623797))

(declare-fun m!5623799 () Bool)

(assert (=> b!4704169 m!5623799))

(declare-fun m!5623801 () Bool)

(assert (=> b!4704169 m!5623801))

(declare-fun m!5623803 () Bool)

(assert (=> b!4704169 m!5623803))

(declare-fun m!5623805 () Bool)

(assert (=> b!4704169 m!5623805))

(assert (=> b!4704169 m!5623781))

(declare-fun m!5623807 () Bool)

(assert (=> b!4704169 m!5623807))

(declare-fun m!5623809 () Bool)

(assert (=> b!4704169 m!5623809))

(assert (=> b!4704169 m!5623797))

(assert (=> b!4704169 m!5623801))

(assert (=> bm!328894 m!5623497))

(assert (=> b!4703822 d!1496748))

(declare-fun d!1496750 () Bool)

(declare-fun e!2934403 () Bool)

(assert (=> d!1496750 e!2934403))

(declare-fun res!1986670 () Bool)

(assert (=> d!1496750 (=> (not res!1986670) (not e!2934403))))

(declare-fun lt!1868270 () ListMap!5069)

(assert (=> d!1496750 (= res!1986670 (contains!15858 lt!1868270 (_1!30307 (h!58850 oldBucket!34))))))

(declare-fun lt!1868271 () List!52685)

(assert (=> d!1496750 (= lt!1868270 (ListMap!5070 lt!1868271))))

(declare-fun lt!1868269 () Unit!126740)

(declare-fun lt!1868268 () Unit!126740)

(assert (=> d!1496750 (= lt!1868269 lt!1868268)))

(assert (=> d!1496750 (= (getValueByKey!1867 lt!1868271 (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496750 (= lt!1868268 (lemmaContainsTupThenGetReturnValue!1044 lt!1868271 (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496750 (= lt!1868271 (insertNoDuplicatedKeys!552 (toList!5705 lt!1867772) (_1!30307 (h!58850 oldBucket!34)) (_2!30307 (h!58850 oldBucket!34))))))

(assert (=> d!1496750 (= (+!2192 lt!1867772 (h!58850 oldBucket!34)) lt!1868270)))

(declare-fun b!4704170 () Bool)

(declare-fun res!1986669 () Bool)

(assert (=> b!4704170 (=> (not res!1986669) (not e!2934403))))

(assert (=> b!4704170 (= res!1986669 (= (getValueByKey!1867 (toList!5705 lt!1868270) (_1!30307 (h!58850 oldBucket!34))) (Some!12220 (_2!30307 (h!58850 oldBucket!34)))))))

(declare-fun b!4704171 () Bool)

(assert (=> b!4704171 (= e!2934403 (contains!15863 (toList!5705 lt!1868270) (h!58850 oldBucket!34)))))

(assert (= (and d!1496750 res!1986670) b!4704170))

(assert (= (and b!4704170 res!1986669) b!4704171))

(declare-fun m!5623811 () Bool)

(assert (=> d!1496750 m!5623811))

(declare-fun m!5623813 () Bool)

(assert (=> d!1496750 m!5623813))

(declare-fun m!5623815 () Bool)

(assert (=> d!1496750 m!5623815))

(declare-fun m!5623817 () Bool)

(assert (=> d!1496750 m!5623817))

(declare-fun m!5623819 () Bool)

(assert (=> b!4704170 m!5623819))

(declare-fun m!5623821 () Bool)

(assert (=> b!4704171 m!5623821))

(assert (=> b!4703822 d!1496750))

(declare-fun d!1496752 () Bool)

(assert (=> d!1496752 (= (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867768 lt!1867769) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1867768)) (= (content!9290 (toList!5705 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867768 lt!1867769) lt!1867764))) (content!9290 (toList!5705 (+!2192 (addToMapMapFromBucket!1340 lt!1867769 lt!1867764) lt!1867768)))))))

(declare-fun bs!1097711 () Bool)

(assert (= bs!1097711 d!1496752))

(declare-fun m!5623823 () Bool)

(assert (=> bs!1097711 m!5623823))

(declare-fun m!5623825 () Bool)

(assert (=> bs!1097711 m!5623825))

(assert (=> b!4703822 d!1496752))

(declare-fun d!1496754 () Bool)

(declare-fun e!2934404 () Bool)

(assert (=> d!1496754 e!2934404))

(declare-fun res!1986672 () Bool)

(assert (=> d!1496754 (=> (not res!1986672) (not e!2934404))))

(declare-fun lt!1868274 () ListMap!5069)

(assert (=> d!1496754 (= res!1986672 (contains!15858 lt!1868274 (_1!30307 lt!1867782)))))

(declare-fun lt!1868275 () List!52685)

(assert (=> d!1496754 (= lt!1868274 (ListMap!5070 lt!1868275))))

(declare-fun lt!1868273 () Unit!126740)

(declare-fun lt!1868272 () Unit!126740)

(assert (=> d!1496754 (= lt!1868273 lt!1868272)))

(assert (=> d!1496754 (= (getValueByKey!1867 lt!1868275 (_1!30307 lt!1867782)) (Some!12220 (_2!30307 lt!1867782)))))

(assert (=> d!1496754 (= lt!1868272 (lemmaContainsTupThenGetReturnValue!1044 lt!1868275 (_1!30307 lt!1867782) (_2!30307 lt!1867782)))))

(assert (=> d!1496754 (= lt!1868275 (insertNoDuplicatedKeys!552 (toList!5705 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764)) (_1!30307 lt!1867782) (_2!30307 lt!1867782)))))

(assert (=> d!1496754 (= (+!2192 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1867782) lt!1868274)))

(declare-fun b!4704172 () Bool)

(declare-fun res!1986671 () Bool)

(assert (=> b!4704172 (=> (not res!1986671) (not e!2934404))))

(assert (=> b!4704172 (= res!1986671 (= (getValueByKey!1867 (toList!5705 lt!1868274) (_1!30307 lt!1867782)) (Some!12220 (_2!30307 lt!1867782))))))

(declare-fun b!4704173 () Bool)

(assert (=> b!4704173 (= e!2934404 (contains!15863 (toList!5705 lt!1868274) lt!1867782))))

(assert (= (and d!1496754 res!1986672) b!4704172))

(assert (= (and b!4704172 res!1986671) b!4704173))

(declare-fun m!5623827 () Bool)

(assert (=> d!1496754 m!5623827))

(declare-fun m!5623829 () Bool)

(assert (=> d!1496754 m!5623829))

(declare-fun m!5623831 () Bool)

(assert (=> d!1496754 m!5623831))

(declare-fun m!5623833 () Bool)

(assert (=> d!1496754 m!5623833))

(declare-fun m!5623835 () Bool)

(assert (=> b!4704172 m!5623835))

(declare-fun m!5623837 () Bool)

(assert (=> b!4704173 m!5623837))

(assert (=> b!4703822 d!1496754))

(declare-fun d!1496756 () Bool)

(assert (=> d!1496756 (= (eq!1067 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867782 lt!1867775) lt!1867764) (+!2192 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1867782)) (= (content!9290 (toList!5705 (addToMapMapFromBucket!1340 (Cons!52561 lt!1867782 lt!1867775) lt!1867764))) (content!9290 (toList!5705 (+!2192 (addToMapMapFromBucket!1340 lt!1867775 lt!1867764) lt!1867782)))))))

(declare-fun bs!1097712 () Bool)

(assert (= bs!1097712 d!1496756))

(declare-fun m!5623839 () Bool)

(assert (=> bs!1097712 m!5623839))

(declare-fun m!5623841 () Bool)

(assert (=> bs!1097712 m!5623841))

(assert (=> b!4703822 d!1496756))

(declare-fun d!1496758 () Bool)

(assert (=> d!1496758 (= (head!10079 oldBucket!34) (h!58850 oldBucket!34))))

(assert (=> b!4703822 d!1496758))

(declare-fun bs!1097713 () Bool)

(declare-fun d!1496760 () Bool)

(assert (= bs!1097713 (and d!1496760 d!1496730)))

(declare-fun lambda!211115 () Int)

(assert (=> bs!1097713 (= lambda!211115 lambda!211095)))

(declare-fun bs!1097714 () Bool)

(assert (= bs!1097714 (and d!1496760 start!477412)))

(assert (=> bs!1097714 (= lambda!211115 lambda!210977)))

(declare-fun bs!1097715 () Bool)

(assert (= bs!1097715 (and d!1496760 d!1496608)))

(assert (=> bs!1097715 (= lambda!211115 lambda!210994)))

(declare-fun bs!1097716 () Bool)

(assert (= bs!1097716 (and d!1496760 d!1496596)))

(assert (=> bs!1097716 (= lambda!211115 lambda!210993)))

(declare-fun bs!1097717 () Bool)

(assert (= bs!1097717 (and d!1496760 d!1496664)))

(assert (=> bs!1097717 (= lambda!211115 lambda!211086)))

(declare-fun bs!1097718 () Bool)

(assert (= bs!1097718 (and d!1496760 d!1496582)))

(assert (=> bs!1097718 (= lambda!211115 lambda!210983)))

(declare-fun bs!1097719 () Bool)

(assert (= bs!1097719 (and d!1496760 d!1496698)))

(assert (=> bs!1097719 (not (= lambda!211115 lambda!211091))))

(declare-fun bs!1097720 () Bool)

(assert (= bs!1097720 (and d!1496760 d!1496616)))

(assert (=> bs!1097720 (= lambda!211115 lambda!210998)))

(declare-fun bs!1097721 () Bool)

(assert (= bs!1097721 (and d!1496760 d!1496590)))

(assert (=> bs!1097721 (= lambda!211115 lambda!210984)))

(declare-fun bs!1097722 () Bool)

(assert (= bs!1097722 (and d!1496760 d!1496744)))

(assert (=> bs!1097722 (= lambda!211115 lambda!211102)))

(declare-fun lt!1868278 () ListMap!5069)

(assert (=> d!1496760 (invariantList!1454 (toList!5705 lt!1868278))))

(declare-fun e!2934407 () ListMap!5069)

(assert (=> d!1496760 (= lt!1868278 e!2934407)))

(declare-fun c!804038 () Bool)

(assert (=> d!1496760 (= c!804038 ((_ is Cons!52562) (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023)))))))

(assert (=> d!1496760 (forall!11419 (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023))) lambda!211115)))

(assert (=> d!1496760 (= (extractMap!1934 (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023)))) lt!1868278)))

(declare-fun b!4704174 () Bool)

(assert (=> b!4704174 (= e!2934407 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023))))) (extractMap!1934 (t!359906 (Cons!52562 lt!1867797 (t!359906 (toList!5706 lm!2023)))))))))

(declare-fun b!4704175 () Bool)

(assert (=> b!4704175 (= e!2934407 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496760 c!804038) b!4704174))

(assert (= (and d!1496760 (not c!804038)) b!4704175))

(declare-fun m!5623843 () Bool)

(assert (=> d!1496760 m!5623843))

(declare-fun m!5623845 () Bool)

(assert (=> d!1496760 m!5623845))

(declare-fun m!5623847 () Bool)

(assert (=> b!4704174 m!5623847))

(assert (=> b!4704174 m!5623847))

(declare-fun m!5623849 () Bool)

(assert (=> b!4704174 m!5623849))

(assert (=> b!4703822 d!1496760))

(declare-fun d!1496762 () Bool)

(assert (=> d!1496762 (= (eq!1067 lt!1867780 (+!2192 lt!1867772 (h!58850 oldBucket!34))) (= (content!9290 (toList!5705 lt!1867780)) (content!9290 (toList!5705 (+!2192 lt!1867772 (h!58850 oldBucket!34))))))))

(declare-fun bs!1097723 () Bool)

(assert (= bs!1097723 d!1496762))

(assert (=> bs!1097723 m!5623619))

(declare-fun m!5623851 () Bool)

(assert (=> bs!1097723 m!5623851))

(assert (=> b!4703822 d!1496762))

(declare-fun d!1496764 () Bool)

(assert (=> d!1496764 (= (head!10079 newBucket!218) (h!58850 newBucket!218))))

(assert (=> b!4703822 d!1496764))

(declare-fun bs!1097724 () Bool)

(declare-fun d!1496766 () Bool)

(assert (= bs!1097724 (and d!1496766 d!1496730)))

(declare-fun lambda!211118 () Int)

(assert (=> bs!1097724 (= lambda!211118 lambda!211095)))

(declare-fun bs!1097725 () Bool)

(assert (= bs!1097725 (and d!1496766 start!477412)))

(assert (=> bs!1097725 (= lambda!211118 lambda!210977)))

(declare-fun bs!1097726 () Bool)

(assert (= bs!1097726 (and d!1496766 d!1496608)))

(assert (=> bs!1097726 (= lambda!211118 lambda!210994)))

(declare-fun bs!1097727 () Bool)

(assert (= bs!1097727 (and d!1496766 d!1496596)))

(assert (=> bs!1097727 (= lambda!211118 lambda!210993)))

(declare-fun bs!1097728 () Bool)

(assert (= bs!1097728 (and d!1496766 d!1496664)))

(assert (=> bs!1097728 (= lambda!211118 lambda!211086)))

(declare-fun bs!1097729 () Bool)

(assert (= bs!1097729 (and d!1496766 d!1496582)))

(assert (=> bs!1097729 (= lambda!211118 lambda!210983)))

(declare-fun bs!1097730 () Bool)

(assert (= bs!1097730 (and d!1496766 d!1496760)))

(assert (=> bs!1097730 (= lambda!211118 lambda!211115)))

(declare-fun bs!1097731 () Bool)

(assert (= bs!1097731 (and d!1496766 d!1496698)))

(assert (=> bs!1097731 (not (= lambda!211118 lambda!211091))))

(declare-fun bs!1097732 () Bool)

(assert (= bs!1097732 (and d!1496766 d!1496616)))

(assert (=> bs!1097732 (= lambda!211118 lambda!210998)))

(declare-fun bs!1097733 () Bool)

(assert (= bs!1097733 (and d!1496766 d!1496590)))

(assert (=> bs!1097733 (= lambda!211118 lambda!210984)))

(declare-fun bs!1097734 () Bool)

(assert (= bs!1097734 (and d!1496766 d!1496744)))

(assert (=> bs!1097734 (= lambda!211118 lambda!211102)))

(declare-fun lt!1868293 () ListMap!5069)

(assert (=> d!1496766 (invariantList!1454 (toList!5705 lt!1868293))))

(declare-fun e!2934410 () ListMap!5069)

(assert (=> d!1496766 (= lt!1868293 e!2934410)))

(declare-fun c!804039 () Bool)

(assert (=> d!1496766 (= c!804039 ((_ is Cons!52562) lt!1867793))))

(assert (=> d!1496766 (forall!11419 lt!1867793 lambda!211118)))

(assert (=> d!1496766 (= (extractMap!1934 lt!1867793) lt!1868293)))

(declare-fun b!4704184 () Bool)

(assert (=> b!4704184 (= e!2934410 (addToMapMapFromBucket!1340 (_2!30308 (h!58851 lt!1867793)) (extractMap!1934 (t!359906 lt!1867793))))))

(declare-fun b!4704185 () Bool)

(assert (=> b!4704185 (= e!2934410 (ListMap!5070 Nil!52561))))

(assert (= (and d!1496766 c!804039) b!4704184))

(assert (= (and d!1496766 (not c!804039)) b!4704185))

(declare-fun m!5623853 () Bool)

(assert (=> d!1496766 m!5623853))

(declare-fun m!5623855 () Bool)

(assert (=> d!1496766 m!5623855))

(declare-fun m!5623857 () Bool)

(assert (=> b!4704184 m!5623857))

(assert (=> b!4704184 m!5623857))

(declare-fun m!5623859 () Bool)

(assert (=> b!4704184 m!5623859))

(assert (=> b!4703822 d!1496766))

(declare-fun bs!1097735 () Bool)

(declare-fun b!4704186 () Bool)

(assert (= bs!1097735 (and b!4704186 b!4704049)))

(declare-fun lambda!211119 () Int)

(assert (=> bs!1097735 (= (= lt!1867764 lt!1868124) (= lambda!211119 lambda!211082))))

(declare-fun bs!1097736 () Bool)

(assert (= bs!1097736 (and b!4704186 b!4704165)))

(assert (=> bs!1097736 (= lambda!211119 lambda!211107)))

(declare-fun bs!1097737 () Bool)

(assert (= bs!1097737 (and b!4704186 d!1496746)))

(assert (=> bs!1097737 (= (= lt!1867764 lt!1868230) (= lambda!211119 lambda!211106))))

(declare-fun bs!1097738 () Bool)

(assert (= bs!1097738 (and b!4704186 b!4704169)))

(assert (=> bs!1097738 (= lambda!211119 lambda!211108)))

(assert (=> bs!1097735 (= lambda!211119 lambda!211081)))

(declare-fun bs!1097739 () Bool)

(assert (= bs!1097739 (and b!4704186 b!4704160)))

(assert (=> bs!1097739 (= lambda!211119 lambda!211103)))

(declare-fun bs!1097740 () Bool)

(assert (= bs!1097740 (and b!4704186 d!1496732)))

(assert (=> bs!1097740 (= (= lt!1867764 lt!1868201) (= lambda!211119 lambda!211099))))

(declare-fun bs!1097741 () Bool)

(assert (= bs!1097741 (and b!4704186 b!4704148)))

(assert (=> bs!1097741 (= lambda!211119 lambda!211097)))

(assert (=> bs!1097738 (= (= lt!1867764 lt!1868252) (= lambda!211119 lambda!211109))))

(declare-fun bs!1097742 () Bool)

(assert (= bs!1097742 (and b!4704186 b!4704144)))

(assert (=> bs!1097742 (= lambda!211119 lambda!211096)))

(declare-fun bs!1097743 () Bool)

(assert (= bs!1097743 (and b!4704186 b!4704164)))

(assert (=> bs!1097743 (= (= lt!1867764 lt!1868231) (= lambda!211119 lambda!211105))))

(declare-fun bs!1097744 () Bool)

(assert (= bs!1097744 (and b!4704186 b!4704045)))

(assert (=> bs!1097744 (= lambda!211119 lambda!211080)))

(assert (=> bs!1097741 (= (= lt!1867764 lt!1868202) (= lambda!211119 lambda!211098))))

(declare-fun bs!1097745 () Bool)

(assert (= bs!1097745 (and b!4704186 d!1496618)))

(assert (=> bs!1097745 (= (= lt!1867764 lt!1868123) (= lambda!211119 lambda!211084))))

(assert (=> bs!1097743 (= lambda!211119 lambda!211104)))

(declare-fun bs!1097746 () Bool)

(assert (= bs!1097746 (and b!4704186 d!1496612)))

(assert (=> bs!1097746 (not (= lambda!211119 lambda!210997))))

(declare-fun bs!1097747 () Bool)

(assert (= bs!1097747 (and b!4704186 d!1496748)))

(assert (=> bs!1097747 (= (= lt!1867764 lt!1868251) (= lambda!211119 lambda!211110))))

(assert (=> b!4704186 true))

(declare-fun bs!1097749 () Bool)

(declare-fun b!4704190 () Bool)

(assert (= bs!1097749 (and b!4704190 b!4704049)))

(declare-fun lambda!211121 () Int)

(assert (=> bs!1097749 (= (= lt!1867764 lt!1868124) (= lambda!211121 lambda!211082))))

(declare-fun bs!1097751 () Bool)

(assert (= bs!1097751 (and b!4704190 b!4704165)))

(assert (=> bs!1097751 (= lambda!211121 lambda!211107)))

(declare-fun bs!1097753 () Bool)

(assert (= bs!1097753 (and b!4704190 d!1496746)))

(assert (=> bs!1097753 (= (= lt!1867764 lt!1868230) (= lambda!211121 lambda!211106))))

(declare-fun bs!1097755 () Bool)

(assert (= bs!1097755 (and b!4704190 b!4704169)))

(assert (=> bs!1097755 (= lambda!211121 lambda!211108)))

(assert (=> bs!1097749 (= lambda!211121 lambda!211081)))

(declare-fun bs!1097757 () Bool)

(assert (= bs!1097757 (and b!4704190 b!4704160)))

(assert (=> bs!1097757 (= lambda!211121 lambda!211103)))

(declare-fun bs!1097759 () Bool)

(assert (= bs!1097759 (and b!4704190 d!1496732)))

(assert (=> bs!1097759 (= (= lt!1867764 lt!1868201) (= lambda!211121 lambda!211099))))

(declare-fun bs!1097761 () Bool)

(assert (= bs!1097761 (and b!4704190 b!4704148)))

(assert (=> bs!1097761 (= lambda!211121 lambda!211097)))

(assert (=> bs!1097755 (= (= lt!1867764 lt!1868252) (= lambda!211121 lambda!211109))))

(declare-fun bs!1097764 () Bool)

(assert (= bs!1097764 (and b!4704190 b!4704144)))

(assert (=> bs!1097764 (= lambda!211121 lambda!211096)))

(declare-fun bs!1097766 () Bool)

(assert (= bs!1097766 (and b!4704190 b!4704045)))

(assert (=> bs!1097766 (= lambda!211121 lambda!211080)))

(assert (=> bs!1097761 (= (= lt!1867764 lt!1868202) (= lambda!211121 lambda!211098))))

(declare-fun bs!1097769 () Bool)

(assert (= bs!1097769 (and b!4704190 d!1496618)))

(assert (=> bs!1097769 (= (= lt!1867764 lt!1868123) (= lambda!211121 lambda!211084))))

(declare-fun bs!1097770 () Bool)

(assert (= bs!1097770 (and b!4704190 b!4704164)))

(assert (=> bs!1097770 (= lambda!211121 lambda!211104)))

(declare-fun bs!1097771 () Bool)

(assert (= bs!1097771 (and b!4704190 d!1496612)))

(assert (=> bs!1097771 (not (= lambda!211121 lambda!210997))))

(declare-fun bs!1097772 () Bool)

(assert (= bs!1097772 (and b!4704190 d!1496748)))

(assert (=> bs!1097772 (= (= lt!1867764 lt!1868251) (= lambda!211121 lambda!211110))))

(declare-fun bs!1097773 () Bool)

(assert (= bs!1097773 (and b!4704190 b!4704186)))

(assert (=> bs!1097773 (= lambda!211121 lambda!211119)))

(assert (=> bs!1097770 (= (= lt!1867764 lt!1868231) (= lambda!211121 lambda!211105))))

(assert (=> b!4704190 true))

(declare-fun lambda!211122 () Int)

(declare-fun lt!1868299 () ListMap!5069)

(assert (=> bs!1097749 (= (= lt!1868299 lt!1868124) (= lambda!211122 lambda!211082))))

(assert (=> bs!1097751 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211107))))

(assert (=> b!4704190 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211121))))

(assert (=> bs!1097753 (= (= lt!1868299 lt!1868230) (= lambda!211122 lambda!211106))))

(assert (=> bs!1097755 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211108))))

(assert (=> bs!1097749 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211081))))

(assert (=> bs!1097757 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211103))))

(assert (=> bs!1097759 (= (= lt!1868299 lt!1868201) (= lambda!211122 lambda!211099))))

(assert (=> bs!1097761 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211097))))

(assert (=> bs!1097755 (= (= lt!1868299 lt!1868252) (= lambda!211122 lambda!211109))))

(assert (=> bs!1097764 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211096))))

(assert (=> bs!1097766 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211080))))

(assert (=> bs!1097761 (= (= lt!1868299 lt!1868202) (= lambda!211122 lambda!211098))))

(assert (=> bs!1097769 (= (= lt!1868299 lt!1868123) (= lambda!211122 lambda!211084))))

(assert (=> bs!1097770 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211104))))

(assert (=> bs!1097771 (not (= lambda!211122 lambda!210997))))

(assert (=> bs!1097772 (= (= lt!1868299 lt!1868251) (= lambda!211122 lambda!211110))))

(assert (=> bs!1097773 (= (= lt!1868299 lt!1867764) (= lambda!211122 lambda!211119))))

(assert (=> bs!1097770 (= (= lt!1868299 lt!1868231) (= lambda!211122 lambda!211105))))

(assert (=> b!4704190 true))

(declare-fun bs!1097774 () Bool)

(declare-fun d!1496768 () Bool)

(assert (= bs!1097774 (and d!1496768 b!4704049)))

(declare-fun lt!1868298 () ListMap!5069)

(declare-fun lambda!211123 () Int)

(assert (=> bs!1097774 (= (= lt!1868298 lt!1868124) (= lambda!211123 lambda!211082))))

(declare-fun bs!1097775 () Bool)

(assert (= bs!1097775 (and d!1496768 b!4704165)))

(assert (=> bs!1097775 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211107))))

(declare-fun bs!1097776 () Bool)

(assert (= bs!1097776 (and d!1496768 b!4704190)))

(assert (=> bs!1097776 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211121))))

(declare-fun bs!1097777 () Bool)

(assert (= bs!1097777 (and d!1496768 d!1496746)))

(assert (=> bs!1097777 (= (= lt!1868298 lt!1868230) (= lambda!211123 lambda!211106))))

(declare-fun bs!1097778 () Bool)

(assert (= bs!1097778 (and d!1496768 b!4704169)))

(assert (=> bs!1097778 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211108))))

(declare-fun bs!1097779 () Bool)

(assert (= bs!1097779 (and d!1496768 b!4704160)))

(assert (=> bs!1097779 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211103))))

(declare-fun bs!1097780 () Bool)

(assert (= bs!1097780 (and d!1496768 d!1496732)))

(assert (=> bs!1097780 (= (= lt!1868298 lt!1868201) (= lambda!211123 lambda!211099))))

(declare-fun bs!1097781 () Bool)

(assert (= bs!1097781 (and d!1496768 b!4704148)))

(assert (=> bs!1097781 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211097))))

(assert (=> bs!1097778 (= (= lt!1868298 lt!1868252) (= lambda!211123 lambda!211109))))

(declare-fun bs!1097782 () Bool)

(assert (= bs!1097782 (and d!1496768 b!4704144)))

(assert (=> bs!1097782 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211096))))

(assert (=> bs!1097776 (= (= lt!1868298 lt!1868299) (= lambda!211123 lambda!211122))))

(assert (=> bs!1097774 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211081))))

(declare-fun bs!1097783 () Bool)

(assert (= bs!1097783 (and d!1496768 b!4704045)))

(assert (=> bs!1097783 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211080))))

(assert (=> bs!1097781 (= (= lt!1868298 lt!1868202) (= lambda!211123 lambda!211098))))

(declare-fun bs!1097785 () Bool)

(assert (= bs!1097785 (and d!1496768 d!1496618)))

(assert (=> bs!1097785 (= (= lt!1868298 lt!1868123) (= lambda!211123 lambda!211084))))

(declare-fun bs!1097786 () Bool)

(assert (= bs!1097786 (and d!1496768 b!4704164)))

(assert (=> bs!1097786 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211104))))

(declare-fun bs!1097787 () Bool)

(assert (= bs!1097787 (and d!1496768 d!1496612)))

(assert (=> bs!1097787 (not (= lambda!211123 lambda!210997))))

(declare-fun bs!1097788 () Bool)

(assert (= bs!1097788 (and d!1496768 d!1496748)))

(assert (=> bs!1097788 (= (= lt!1868298 lt!1868251) (= lambda!211123 lambda!211110))))

(declare-fun bs!1097789 () Bool)

(assert (= bs!1097789 (and d!1496768 b!4704186)))

(assert (=> bs!1097789 (= (= lt!1868298 lt!1867764) (= lambda!211123 lambda!211119))))

(assert (=> bs!1097786 (= (= lt!1868298 lt!1868231) (= lambda!211123 lambda!211105))))

(assert (=> d!1496768 true))

(declare-fun e!2934413 () ListMap!5069)

(assert (=> b!4704186 (= e!2934413 lt!1867764)))

(declare-fun lt!1868313 () Unit!126740)

(declare-fun call!328902 () Unit!126740)

(assert (=> b!4704186 (= lt!1868313 call!328902)))

(declare-fun call!328903 () Bool)

(assert (=> b!4704186 call!328903))

(declare-fun lt!1868300 () Unit!126740)

(assert (=> b!4704186 (= lt!1868300 lt!1868313)))

(declare-fun call!328904 () Bool)

(assert (=> b!4704186 call!328904))

(declare-fun lt!1868311 () Unit!126740)

(declare-fun Unit!126839 () Unit!126740)

(assert (=> b!4704186 (= lt!1868311 Unit!126839)))

(declare-fun b!4704187 () Bool)

(declare-fun e!2934412 () Bool)

(assert (=> b!4704187 (= e!2934412 (forall!11421 (toList!5705 lt!1867764) lambda!211122))))

(declare-fun bm!328897 () Bool)

(assert (=> bm!328897 (= call!328902 (lemmaContainsAllItsOwnKeys!742 lt!1867764))))

(declare-fun bm!328898 () Bool)

(declare-fun c!804040 () Bool)

(assert (=> bm!328898 (= call!328903 (forall!11421 (ite c!804040 (toList!5705 lt!1867764) (t!359905 (Cons!52561 lt!1867768 lt!1867769))) (ite c!804040 lambda!211119 lambda!211122)))))

(declare-fun b!4704188 () Bool)

(declare-fun e!2934411 () Bool)

(assert (=> b!4704188 (= e!2934411 (invariantList!1454 (toList!5705 lt!1868298)))))

(assert (=> d!1496768 e!2934411))

(declare-fun res!1986681 () Bool)

(assert (=> d!1496768 (=> (not res!1986681) (not e!2934411))))

(assert (=> d!1496768 (= res!1986681 (forall!11421 (Cons!52561 lt!1867768 lt!1867769) lambda!211123))))

(assert (=> d!1496768 (= lt!1868298 e!2934413)))

(assert (=> d!1496768 (= c!804040 ((_ is Nil!52561) (Cons!52561 lt!1867768 lt!1867769)))))

(assert (=> d!1496768 (noDuplicateKeys!1908 (Cons!52561 lt!1867768 lt!1867769))))

(assert (=> d!1496768 (= (addToMapMapFromBucket!1340 (Cons!52561 lt!1867768 lt!1867769) lt!1867764) lt!1868298)))

(declare-fun b!4704189 () Bool)

(declare-fun res!1986683 () Bool)

(assert (=> b!4704189 (=> (not res!1986683) (not e!2934411))))

(assert (=> b!4704189 (= res!1986683 (forall!11421 (toList!5705 lt!1867764) lambda!211123))))

(declare-fun bm!328899 () Bool)

(assert (=> bm!328899 (= call!328904 (forall!11421 (ite c!804040 (toList!5705 lt!1867764) (Cons!52561 lt!1867768 lt!1867769)) (ite c!804040 lambda!211119 lambda!211122)))))

(assert (=> b!4704190 (= e!2934413 lt!1868299)))

(declare-fun lt!1868309 () ListMap!5069)

(assert (=> b!4704190 (= lt!1868309 (+!2192 lt!1867764 (h!58850 (Cons!52561 lt!1867768 lt!1867769))))))

(assert (=> b!4704190 (= lt!1868299 (addToMapMapFromBucket!1340 (t!359905 (Cons!52561 lt!1867768 lt!1867769)) (+!2192 lt!1867764 (h!58850 (Cons!52561 lt!1867768 lt!1867769)))))))

(declare-fun lt!1868314 () Unit!126740)

(assert (=> b!4704190 (= lt!1868314 call!328902)))

(assert (=> b!4704190 (forall!11421 (toList!5705 lt!1867764) lambda!211121)))

(declare-fun lt!1868297 () Unit!126740)

(assert (=> b!4704190 (= lt!1868297 lt!1868314)))

(assert (=> b!4704190 (forall!11421 (toList!5705 lt!1868309) lambda!211122)))

(declare-fun lt!1868305 () Unit!126740)

(declare-fun Unit!126840 () Unit!126740)

(assert (=> b!4704190 (= lt!1868305 Unit!126840)))

(assert (=> b!4704190 call!328903))

(declare-fun lt!1868301 () Unit!126740)

(declare-fun Unit!126841 () Unit!126740)

(assert (=> b!4704190 (= lt!1868301 Unit!126841)))

(declare-fun lt!1868306 () Unit!126740)

(declare-fun Unit!126842 () Unit!126740)

(assert (=> b!4704190 (= lt!1868306 Unit!126842)))

(declare-fun lt!1868308 () Unit!126740)

(assert (=> b!4704190 (= lt!1868308 (forallContained!3528 (toList!5705 lt!1868309) lambda!211122 (h!58850 (Cons!52561 lt!1867768 lt!1867769))))))

(assert (=> b!4704190 (contains!15858 lt!1868309 (_1!30307 (h!58850 (Cons!52561 lt!1867768 lt!1867769))))))

(declare-fun lt!1868296 () Unit!126740)

(declare-fun Unit!126843 () Unit!126740)

(assert (=> b!4704190 (= lt!1868296 Unit!126843)))

(assert (=> b!4704190 (contains!15858 lt!1868299 (_1!30307 (h!58850 (Cons!52561 lt!1867768 lt!1867769))))))

(declare-fun lt!1868294 () Unit!126740)

(declare-fun Unit!126844 () Unit!126740)

(assert (=> b!4704190 (= lt!1868294 Unit!126844)))

(assert (=> b!4704190 (forall!11421 (Cons!52561 lt!1867768 lt!1867769) lambda!211122)))

(declare-fun lt!1868307 () Unit!126740)

(declare-fun Unit!126845 () Unit!126740)

(assert (=> b!4704190 (= lt!1868307 Unit!126845)))

(assert (=> b!4704190 (forall!11421 (toList!5705 lt!1868309) lambda!211122)))

(declare-fun lt!1868302 () Unit!126740)

(declare-fun Unit!126846 () Unit!126740)

(assert (=> b!4704190 (= lt!1868302 Unit!126846)))

(declare-fun lt!1868295 () Unit!126740)

(declare-fun Unit!126847 () Unit!126740)

(assert (=> b!4704190 (= lt!1868295 Unit!126847)))

(declare-fun lt!1868310 () Unit!126740)

(assert (=> b!4704190 (= lt!1868310 (addForallContainsKeyThenBeforeAdding!741 lt!1867764 lt!1868299 (_1!30307 (h!58850 (Cons!52561 lt!1867768 lt!1867769))) (_2!30307 (h!58850 (Cons!52561 lt!1867768 lt!1867769)))))))

(assert (=> b!4704190 (forall!11421 (toList!5705 lt!1867764) lambda!211122)))

(declare-fun lt!1868312 () Unit!126740)

(assert (=> b!4704190 (= lt!1868312 lt!1868310)))

(assert (=> b!4704190 (forall!11421 (toList!5705 lt!1867764) lambda!211122)))

(declare-fun lt!1868303 () Unit!126740)

(declare-fun Unit!126848 () Unit!126740)

(assert (=> b!4704190 (= lt!1868303 Unit!126848)))

(declare-fun res!1986682 () Bool)

(assert (=> b!4704190 (= res!1986682 call!328904)))

(assert (=> b!4704190 (=> (not res!1986682) (not e!2934412))))

(assert (=> b!4704190 e!2934412))

(declare-fun lt!1868304 () Unit!126740)

(declare-fun Unit!126849 () Unit!126740)

(assert (=> b!4704190 (= lt!1868304 Unit!126849)))

(assert (= (and d!1496768 c!804040) b!4704186))

(assert (= (and d!1496768 (not c!804040)) b!4704190))

(assert (= (and b!4704190 res!1986682) b!4704187))

(assert (= (or b!4704186 b!4704190) bm!328897))

(assert (= (or b!4704186 b!4704190) bm!328898))

(assert (= (or b!4704186 b!4704190) bm!328899))

(assert (= (and d!1496768 res!1986681) b!4704189))

(assert (= (and b!4704189 res!1986683) b!4704188))

(declare-fun m!5623885 () Bool)

(assert (=> b!4704187 m!5623885))

(declare-fun m!5623887 () Bool)

(assert (=> b!4704188 m!5623887))

(declare-fun m!5623889 () Bool)

(assert (=> d!1496768 m!5623889))

(declare-fun m!5623891 () Bool)

(assert (=> d!1496768 m!5623891))

(declare-fun m!5623893 () Bool)

(assert (=> b!4704189 m!5623893))

(declare-fun m!5623895 () Bool)

(assert (=> bm!328898 m!5623895))

(declare-fun m!5623897 () Bool)

(assert (=> bm!328899 m!5623897))

(declare-fun m!5623899 () Bool)

(assert (=> b!4704190 m!5623899))

(declare-fun m!5623901 () Bool)

(assert (=> b!4704190 m!5623901))

(assert (=> b!4704190 m!5623885))

(declare-fun m!5623903 () Bool)

(assert (=> b!4704190 m!5623903))

(declare-fun m!5623905 () Bool)

(assert (=> b!4704190 m!5623905))

(declare-fun m!5623907 () Bool)

(assert (=> b!4704190 m!5623907))

(declare-fun m!5623909 () Bool)

(assert (=> b!4704190 m!5623909))

(declare-fun m!5623911 () Bool)

(assert (=> b!4704190 m!5623911))

(assert (=> b!4704190 m!5623885))

(declare-fun m!5623913 () Bool)

(assert (=> b!4704190 m!5623913))

(declare-fun m!5623915 () Bool)

(assert (=> b!4704190 m!5623915))

(assert (=> b!4704190 m!5623903))

(assert (=> b!4704190 m!5623907))

(assert (=> bm!328897 m!5623497))

(assert (=> b!4703822 d!1496768))

(declare-fun d!1496774 () Bool)

(declare-fun hash!4203 (Hashable!6277 K!13920) (_ BitVec 64))

(assert (=> d!1496774 (= (hash!4200 hashF!1323 key!4653) (hash!4203 hashF!1323 key!4653))))

(declare-fun bs!1097790 () Bool)

(assert (= bs!1097790 d!1496774))

(declare-fun m!5623923 () Bool)

(assert (=> bs!1097790 m!5623923))

(assert (=> b!4703844 d!1496774))

(declare-fun b!4704203 () Bool)

(declare-fun e!2934425 () List!52685)

(assert (=> b!4704203 (= e!2934425 (t!359905 lt!1867769))))

(declare-fun b!4704204 () Bool)

(declare-fun e!2934424 () List!52685)

(assert (=> b!4704204 (= e!2934425 e!2934424)))

(declare-fun c!804042 () Bool)

(assert (=> b!4704204 (= c!804042 ((_ is Cons!52561) lt!1867769))))

(declare-fun d!1496778 () Bool)

(declare-fun lt!1868329 () List!52685)

(assert (=> d!1496778 (not (containsKey!3195 lt!1868329 key!4653))))

(assert (=> d!1496778 (= lt!1868329 e!2934425)))

(declare-fun c!804041 () Bool)

(assert (=> d!1496778 (= c!804041 (and ((_ is Cons!52561) lt!1867769) (= (_1!30307 (h!58850 lt!1867769)) key!4653)))))

(assert (=> d!1496778 (noDuplicateKeys!1908 lt!1867769)))

(assert (=> d!1496778 (= (removePairForKey!1503 lt!1867769 key!4653) lt!1868329)))

(declare-fun b!4704205 () Bool)

(assert (=> b!4704205 (= e!2934424 (Cons!52561 (h!58850 lt!1867769) (removePairForKey!1503 (t!359905 lt!1867769) key!4653)))))

(declare-fun b!4704206 () Bool)

(assert (=> b!4704206 (= e!2934424 Nil!52561)))

(assert (= (and d!1496778 c!804041) b!4704203))

(assert (= (and d!1496778 (not c!804041)) b!4704204))

(assert (= (and b!4704204 c!804042) b!4704205))

(assert (= (and b!4704204 (not c!804042)) b!4704206))

(declare-fun m!5623929 () Bool)

(assert (=> d!1496778 m!5623929))

(assert (=> d!1496778 m!5623649))

(declare-fun m!5623931 () Bool)

(assert (=> b!4704205 m!5623931))

(assert (=> b!4703823 d!1496778))

(declare-fun d!1496782 () Bool)

(assert (=> d!1496782 (= (tail!8749 newBucket!218) (t!359905 newBucket!218))))

(assert (=> b!4703823 d!1496782))

(declare-fun d!1496784 () Bool)

(assert (=> d!1496784 (= (tail!8749 oldBucket!34) (t!359905 oldBucket!34))))

(assert (=> b!4703823 d!1496784))

(declare-fun d!1496786 () Bool)

(declare-fun res!1986696 () Bool)

(declare-fun e!2934426 () Bool)

(assert (=> d!1496786 (=> res!1986696 e!2934426)))

(assert (=> d!1496786 (= res!1986696 ((_ is Nil!52562) (toList!5706 lm!2023)))))

(assert (=> d!1496786 (= (forall!11419 (toList!5706 lm!2023) lambda!210977) e!2934426)))

(declare-fun b!4704207 () Bool)

(declare-fun e!2934427 () Bool)

(assert (=> b!4704207 (= e!2934426 e!2934427)))

(declare-fun res!1986697 () Bool)

(assert (=> b!4704207 (=> (not res!1986697) (not e!2934427))))

(assert (=> b!4704207 (= res!1986697 (dynLambda!21757 lambda!210977 (h!58851 (toList!5706 lm!2023))))))

(declare-fun b!4704208 () Bool)

(assert (=> b!4704208 (= e!2934427 (forall!11419 (t!359906 (toList!5706 lm!2023)) lambda!210977))))

(assert (= (and d!1496786 (not res!1986696)) b!4704207))

(assert (= (and b!4704207 res!1986697) b!4704208))

(declare-fun b_lambda!177477 () Bool)

(assert (=> (not b_lambda!177477) (not b!4704207)))

(declare-fun m!5623937 () Bool)

(assert (=> b!4704207 m!5623937))

(declare-fun m!5623939 () Bool)

(assert (=> b!4704208 m!5623939))

(assert (=> start!477412 d!1496786))

(declare-fun d!1496792 () Bool)

(declare-fun isStrictlySorted!693 (List!52686) Bool)

(assert (=> d!1496792 (= (inv!67794 lm!2023) (isStrictlySorted!693 (toList!5706 lm!2023)))))

(declare-fun bs!1097796 () Bool)

(assert (= bs!1097796 d!1496792))

(declare-fun m!5623953 () Bool)

(assert (=> bs!1097796 m!5623953))

(assert (=> start!477412 d!1496792))

(declare-fun b!4704216 () Bool)

(declare-fun e!2934433 () List!52685)

(assert (=> b!4704216 (= e!2934433 (t!359905 oldBucket!34))))

(declare-fun b!4704217 () Bool)

(declare-fun e!2934432 () List!52685)

(assert (=> b!4704217 (= e!2934433 e!2934432)))

(declare-fun c!804045 () Bool)

(assert (=> b!4704217 (= c!804045 ((_ is Cons!52561) oldBucket!34))))

(declare-fun d!1496796 () Bool)

(declare-fun lt!1868355 () List!52685)

(assert (=> d!1496796 (not (containsKey!3195 lt!1868355 key!4653))))

(assert (=> d!1496796 (= lt!1868355 e!2934433)))

(declare-fun c!804044 () Bool)

(assert (=> d!1496796 (= c!804044 (and ((_ is Cons!52561) oldBucket!34) (= (_1!30307 (h!58850 oldBucket!34)) key!4653)))))

(assert (=> d!1496796 (noDuplicateKeys!1908 oldBucket!34)))

(assert (=> d!1496796 (= (removePairForKey!1503 oldBucket!34 key!4653) lt!1868355)))

(declare-fun b!4704218 () Bool)

(assert (=> b!4704218 (= e!2934432 (Cons!52561 (h!58850 oldBucket!34) (removePairForKey!1503 (t!359905 oldBucket!34) key!4653)))))

(declare-fun b!4704219 () Bool)

(assert (=> b!4704219 (= e!2934432 Nil!52561)))

(assert (= (and d!1496796 c!804044) b!4704216))

(assert (= (and d!1496796 (not c!804044)) b!4704217))

(assert (= (and b!4704217 c!804045) b!4704218))

(assert (= (and b!4704217 (not c!804045)) b!4704219))

(declare-fun m!5623955 () Bool)

(assert (=> d!1496796 m!5623955))

(assert (=> d!1496796 m!5622827))

(assert (=> b!4704218 m!5622893))

(assert (=> b!4703842 d!1496796))

(declare-fun bs!1097806 () Bool)

(declare-fun d!1496798 () Bool)

(assert (= bs!1097806 (and d!1496798 b!4704049)))

(declare-fun lambda!211125 () Int)

(assert (=> bs!1097806 (not (= lambda!211125 lambda!211082))))

(declare-fun bs!1097807 () Bool)

(assert (= bs!1097807 (and d!1496798 b!4704165)))

(assert (=> bs!1097807 (not (= lambda!211125 lambda!211107))))

(declare-fun bs!1097809 () Bool)

(assert (= bs!1097809 (and d!1496798 b!4704190)))

(assert (=> bs!1097809 (not (= lambda!211125 lambda!211121))))

(declare-fun bs!1097811 () Bool)

(assert (= bs!1097811 (and d!1496798 d!1496746)))

(assert (=> bs!1097811 (not (= lambda!211125 lambda!211106))))

(declare-fun bs!1097812 () Bool)

(assert (= bs!1097812 (and d!1496798 b!4704169)))

(assert (=> bs!1097812 (not (= lambda!211125 lambda!211108))))

(declare-fun bs!1097813 () Bool)

(assert (= bs!1097813 (and d!1496798 d!1496768)))

(assert (=> bs!1097813 (not (= lambda!211125 lambda!211123))))

(declare-fun bs!1097814 () Bool)

(assert (= bs!1097814 (and d!1496798 b!4704160)))

(assert (=> bs!1097814 (not (= lambda!211125 lambda!211103))))

(declare-fun bs!1097815 () Bool)

(assert (= bs!1097815 (and d!1496798 d!1496732)))

(assert (=> bs!1097815 (not (= lambda!211125 lambda!211099))))

(declare-fun bs!1097816 () Bool)

(assert (= bs!1097816 (and d!1496798 b!4704148)))

(assert (=> bs!1097816 (not (= lambda!211125 lambda!211097))))

(assert (=> bs!1097812 (not (= lambda!211125 lambda!211109))))

(declare-fun bs!1097818 () Bool)

(assert (= bs!1097818 (and d!1496798 b!4704144)))

(assert (=> bs!1097818 (not (= lambda!211125 lambda!211096))))

(assert (=> bs!1097809 (not (= lambda!211125 lambda!211122))))

(assert (=> bs!1097806 (not (= lambda!211125 lambda!211081))))

(declare-fun bs!1097821 () Bool)

(assert (= bs!1097821 (and d!1496798 b!4704045)))

(assert (=> bs!1097821 (not (= lambda!211125 lambda!211080))))

(assert (=> bs!1097816 (not (= lambda!211125 lambda!211098))))

(declare-fun bs!1097824 () Bool)

(assert (= bs!1097824 (and d!1496798 d!1496618)))

(assert (=> bs!1097824 (not (= lambda!211125 lambda!211084))))

(declare-fun bs!1097826 () Bool)

(assert (= bs!1097826 (and d!1496798 b!4704164)))

(assert (=> bs!1097826 (not (= lambda!211125 lambda!211104))))

(declare-fun bs!1097828 () Bool)

(assert (= bs!1097828 (and d!1496798 d!1496612)))

(assert (=> bs!1097828 (= lambda!211125 lambda!210997)))

(declare-fun bs!1097830 () Bool)

(assert (= bs!1097830 (and d!1496798 d!1496748)))

(assert (=> bs!1097830 (not (= lambda!211125 lambda!211110))))

(declare-fun bs!1097832 () Bool)

(assert (= bs!1097832 (and d!1496798 b!4704186)))

(assert (=> bs!1097832 (not (= lambda!211125 lambda!211119))))

(assert (=> bs!1097826 (not (= lambda!211125 lambda!211105))))

(assert (=> d!1496798 true))

(assert (=> d!1496798 true))

(assert (=> d!1496798 (= (allKeysSameHash!1734 oldBucket!34 hash!405 hashF!1323) (forall!11421 oldBucket!34 lambda!211125))))

(declare-fun bs!1097836 () Bool)

(assert (= bs!1097836 d!1496798))

(declare-fun m!5623957 () Bool)

(assert (=> bs!1097836 m!5623957))

(assert (=> b!4703838 d!1496798))

(declare-fun d!1496800 () Bool)

(assert (=> d!1496800 (= (eq!1067 lt!1867773 lt!1867780) (= (content!9290 (toList!5705 lt!1867773)) (content!9290 (toList!5705 lt!1867780))))))

(declare-fun bs!1097838 () Bool)

(assert (= bs!1097838 d!1496800))

(declare-fun m!5623959 () Bool)

(assert (=> bs!1097838 m!5623959))

(assert (=> bs!1097838 m!5623619))

(assert (=> b!4703839 d!1496800))

(declare-fun b!4704238 () Bool)

(declare-fun res!1986714 () Bool)

(declare-fun e!2934448 () Bool)

(assert (=> b!4704238 (=> (not res!1986714) (not e!2934448))))

(declare-fun lt!1868359 () Option!12219)

(declare-fun get!17608 (Option!12219) tuple2!54026)

(assert (=> b!4704238 (= res!1986714 (= (_1!30307 (get!17608 lt!1868359)) key!4653))))

(declare-fun b!4704239 () Bool)

(assert (=> b!4704239 (= e!2934448 (contains!15863 lt!1867787 (get!17608 lt!1868359)))))

(declare-fun b!4704240 () Bool)

(declare-fun e!2934445 () Bool)

(assert (=> b!4704240 (= e!2934445 e!2934448)))

(declare-fun res!1986712 () Bool)

(assert (=> b!4704240 (=> (not res!1986712) (not e!2934448))))

(assert (=> b!4704240 (= res!1986712 (isDefined!9474 lt!1868359))))

(declare-fun b!4704241 () Bool)

(declare-fun e!2934446 () Option!12219)

(declare-fun e!2934449 () Option!12219)

(assert (=> b!4704241 (= e!2934446 e!2934449)))

(declare-fun c!804051 () Bool)

(assert (=> b!4704241 (= c!804051 ((_ is Cons!52561) lt!1867787))))

(declare-fun b!4704242 () Bool)

(assert (=> b!4704242 (= e!2934449 (getPair!512 (t!359905 lt!1867787) key!4653))))

(declare-fun b!4704243 () Bool)

(assert (=> b!4704243 (= e!2934446 (Some!12218 (h!58850 lt!1867787)))))

(declare-fun b!4704244 () Bool)

(declare-fun e!2934447 () Bool)

(assert (=> b!4704244 (= e!2934447 (not (containsKey!3195 lt!1867787 key!4653)))))

(declare-fun d!1496802 () Bool)

(assert (=> d!1496802 e!2934445))

(declare-fun res!1986713 () Bool)

(assert (=> d!1496802 (=> res!1986713 e!2934445)))

(assert (=> d!1496802 (= res!1986713 e!2934447)))

(declare-fun res!1986711 () Bool)

(assert (=> d!1496802 (=> (not res!1986711) (not e!2934447))))

(declare-fun isEmpty!29138 (Option!12219) Bool)

(assert (=> d!1496802 (= res!1986711 (isEmpty!29138 lt!1868359))))

(assert (=> d!1496802 (= lt!1868359 e!2934446)))

(declare-fun c!804052 () Bool)

(assert (=> d!1496802 (= c!804052 (and ((_ is Cons!52561) lt!1867787) (= (_1!30307 (h!58850 lt!1867787)) key!4653)))))

(assert (=> d!1496802 (noDuplicateKeys!1908 lt!1867787)))

(assert (=> d!1496802 (= (getPair!512 lt!1867787 key!4653) lt!1868359)))

(declare-fun b!4704245 () Bool)

(assert (=> b!4704245 (= e!2934449 None!12218)))

(assert (= (and d!1496802 c!804052) b!4704243))

(assert (= (and d!1496802 (not c!804052)) b!4704241))

(assert (= (and b!4704241 c!804051) b!4704242))

(assert (= (and b!4704241 (not c!804051)) b!4704245))

(assert (= (and d!1496802 res!1986711) b!4704244))

(assert (= (and d!1496802 (not res!1986713)) b!4704240))

(assert (= (and b!4704240 res!1986712) b!4704238))

(assert (= (and b!4704238 res!1986714) b!4704239))

(declare-fun m!5623993 () Bool)

(assert (=> b!4704238 m!5623993))

(declare-fun m!5623995 () Bool)

(assert (=> b!4704242 m!5623995))

(assert (=> b!4704239 m!5623993))

(assert (=> b!4704239 m!5623993))

(declare-fun m!5623997 () Bool)

(assert (=> b!4704239 m!5623997))

(declare-fun m!5623999 () Bool)

(assert (=> b!4704244 m!5623999))

(declare-fun m!5624001 () Bool)

(assert (=> b!4704240 m!5624001))

(declare-fun m!5624003 () Bool)

(assert (=> d!1496802 m!5624003))

(declare-fun m!5624005 () Bool)

(assert (=> d!1496802 m!5624005))

(assert (=> b!4703835 d!1496802))

(declare-fun d!1496806 () Bool)

(assert (=> d!1496806 (dynLambda!21757 lambda!210977 lt!1867792)))

(declare-fun lt!1868367 () Unit!126740)

(declare-fun choose!32991 (List!52686 Int tuple2!54028) Unit!126740)

(assert (=> d!1496806 (= lt!1868367 (choose!32991 (toList!5706 lm!2023) lambda!210977 lt!1867792))))

(declare-fun e!2934455 () Bool)

(assert (=> d!1496806 e!2934455))

(declare-fun res!1986719 () Bool)

(assert (=> d!1496806 (=> (not res!1986719) (not e!2934455))))

(assert (=> d!1496806 (= res!1986719 (forall!11419 (toList!5706 lm!2023) lambda!210977))))

(assert (=> d!1496806 (= (forallContained!3526 (toList!5706 lm!2023) lambda!210977 lt!1867792) lt!1868367)))

(declare-fun b!4704254 () Bool)

(assert (=> b!4704254 (= e!2934455 (contains!15859 (toList!5706 lm!2023) lt!1867792))))

(assert (= (and d!1496806 res!1986719) b!4704254))

(declare-fun b_lambda!177479 () Bool)

(assert (=> (not b_lambda!177479) (not d!1496806)))

(declare-fun m!5624035 () Bool)

(assert (=> d!1496806 m!5624035))

(declare-fun m!5624037 () Bool)

(assert (=> d!1496806 m!5624037))

(assert (=> d!1496806 m!5622793))

(assert (=> b!4704254 m!5622815))

(assert (=> b!4703835 d!1496806))

(declare-fun d!1496820 () Bool)

(declare-fun e!2934461 () Bool)

(assert (=> d!1496820 e!2934461))

(declare-fun res!1986722 () Bool)

(assert (=> d!1496820 (=> res!1986722 e!2934461)))

(declare-fun lt!1868381 () Bool)

(assert (=> d!1496820 (= res!1986722 (not lt!1868381))))

(declare-fun lt!1868378 () Bool)

(assert (=> d!1496820 (= lt!1868381 lt!1868378)))

(declare-fun lt!1868380 () Unit!126740)

(declare-fun e!2934460 () Unit!126740)

(assert (=> d!1496820 (= lt!1868380 e!2934460)))

(declare-fun c!804057 () Bool)

(assert (=> d!1496820 (= c!804057 lt!1868378)))

(declare-fun containsKey!3199 (List!52686 (_ BitVec 64)) Bool)

(assert (=> d!1496820 (= lt!1868378 (containsKey!3199 (toList!5706 lm!2023) lt!1867778))))

(assert (=> d!1496820 (= (contains!15860 lm!2023 lt!1867778) lt!1868381)))

(declare-fun b!4704261 () Bool)

(declare-fun lt!1868379 () Unit!126740)

(assert (=> b!4704261 (= e!2934460 lt!1868379)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1761 (List!52686 (_ BitVec 64)) Unit!126740)

(assert (=> b!4704261 (= lt!1868379 (lemmaContainsKeyImpliesGetValueByKeyDefined!1761 (toList!5706 lm!2023) lt!1867778))))

(declare-datatypes ((Option!12223 0))(
  ( (None!12222) (Some!12222 (v!46729 List!52685)) )
))
(declare-fun isDefined!9478 (Option!12223) Bool)

(declare-fun getValueByKey!1869 (List!52686 (_ BitVec 64)) Option!12223)

(assert (=> b!4704261 (isDefined!9478 (getValueByKey!1869 (toList!5706 lm!2023) lt!1867778))))

(declare-fun b!4704262 () Bool)

(declare-fun Unit!126861 () Unit!126740)

(assert (=> b!4704262 (= e!2934460 Unit!126861)))

(declare-fun b!4704263 () Bool)

(assert (=> b!4704263 (= e!2934461 (isDefined!9478 (getValueByKey!1869 (toList!5706 lm!2023) lt!1867778)))))

(assert (= (and d!1496820 c!804057) b!4704261))

(assert (= (and d!1496820 (not c!804057)) b!4704262))

(assert (= (and d!1496820 (not res!1986722)) b!4704263))

(declare-fun m!5624039 () Bool)

(assert (=> d!1496820 m!5624039))

(declare-fun m!5624041 () Bool)

(assert (=> b!4704261 m!5624041))

(declare-fun m!5624043 () Bool)

(assert (=> b!4704261 m!5624043))

(assert (=> b!4704261 m!5624043))

(declare-fun m!5624045 () Bool)

(assert (=> b!4704261 m!5624045))

(assert (=> b!4704263 m!5624043))

(assert (=> b!4704263 m!5624043))

(assert (=> b!4704263 m!5624045))

(assert (=> b!4703835 d!1496820))

(declare-fun bs!1097876 () Bool)

(declare-fun d!1496822 () Bool)

(assert (= bs!1097876 (and d!1496822 d!1496730)))

(declare-fun lambda!211132 () Int)

(assert (=> bs!1097876 (= lambda!211132 lambda!211095)))

(declare-fun bs!1097877 () Bool)

(assert (= bs!1097877 (and d!1496822 start!477412)))

(assert (=> bs!1097877 (= lambda!211132 lambda!210977)))

(declare-fun bs!1097878 () Bool)

(assert (= bs!1097878 (and d!1496822 d!1496608)))

(assert (=> bs!1097878 (= lambda!211132 lambda!210994)))

(declare-fun bs!1097879 () Bool)

(assert (= bs!1097879 (and d!1496822 d!1496596)))

(assert (=> bs!1097879 (= lambda!211132 lambda!210993)))

(declare-fun bs!1097880 () Bool)

(assert (= bs!1097880 (and d!1496822 d!1496664)))

(assert (=> bs!1097880 (= lambda!211132 lambda!211086)))

(declare-fun bs!1097881 () Bool)

(assert (= bs!1097881 (and d!1496822 d!1496582)))

(assert (=> bs!1097881 (= lambda!211132 lambda!210983)))

(declare-fun bs!1097882 () Bool)

(assert (= bs!1097882 (and d!1496822 d!1496766)))

(assert (=> bs!1097882 (= lambda!211132 lambda!211118)))

(declare-fun bs!1097883 () Bool)

(assert (= bs!1097883 (and d!1496822 d!1496760)))

(assert (=> bs!1097883 (= lambda!211132 lambda!211115)))

(declare-fun bs!1097884 () Bool)

(assert (= bs!1097884 (and d!1496822 d!1496698)))

(assert (=> bs!1097884 (not (= lambda!211132 lambda!211091))))

(declare-fun bs!1097885 () Bool)

(assert (= bs!1097885 (and d!1496822 d!1496616)))

(assert (=> bs!1097885 (= lambda!211132 lambda!210998)))

(declare-fun bs!1097886 () Bool)

(assert (= bs!1097886 (and d!1496822 d!1496590)))

(assert (=> bs!1097886 (= lambda!211132 lambda!210984)))

(declare-fun bs!1097887 () Bool)

(assert (= bs!1097887 (and d!1496822 d!1496744)))

(assert (=> bs!1097887 (= lambda!211132 lambda!211102)))

(assert (=> d!1496822 (contains!15860 lm!2023 (hash!4200 hashF!1323 key!4653))))

(declare-fun lt!1868386 () Unit!126740)

(declare-fun choose!32992 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> d!1496822 (= lt!1868386 (choose!32992 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496822 (forall!11419 (toList!5706 lm!2023) lambda!211132)))

(assert (=> d!1496822 (= (lemmaInGenMapThenLongMapContainsHash!718 lm!2023 key!4653 hashF!1323) lt!1868386)))

(declare-fun bs!1097888 () Bool)

(assert (= bs!1097888 d!1496822))

(assert (=> bs!1097888 m!5622829))

(assert (=> bs!1097888 m!5622829))

(declare-fun m!5624071 () Bool)

(assert (=> bs!1097888 m!5624071))

(declare-fun m!5624073 () Bool)

(assert (=> bs!1097888 m!5624073))

(declare-fun m!5624075 () Bool)

(assert (=> bs!1097888 m!5624075))

(assert (=> b!4703835 d!1496822))

(declare-fun bs!1097894 () Bool)

(declare-fun d!1496832 () Bool)

(assert (= bs!1097894 (and d!1496832 d!1496730)))

(declare-fun lambda!211139 () Int)

(assert (=> bs!1097894 (= lambda!211139 lambda!211095)))

(declare-fun bs!1097895 () Bool)

(assert (= bs!1097895 (and d!1496832 start!477412)))

(assert (=> bs!1097895 (= lambda!211139 lambda!210977)))

(declare-fun bs!1097896 () Bool)

(assert (= bs!1097896 (and d!1496832 d!1496608)))

(assert (=> bs!1097896 (= lambda!211139 lambda!210994)))

(declare-fun bs!1097897 () Bool)

(assert (= bs!1097897 (and d!1496832 d!1496596)))

(assert (=> bs!1097897 (= lambda!211139 lambda!210993)))

(declare-fun bs!1097898 () Bool)

(assert (= bs!1097898 (and d!1496832 d!1496664)))

(assert (=> bs!1097898 (= lambda!211139 lambda!211086)))

(declare-fun bs!1097899 () Bool)

(assert (= bs!1097899 (and d!1496832 d!1496582)))

(assert (=> bs!1097899 (= lambda!211139 lambda!210983)))

(declare-fun bs!1097900 () Bool)

(assert (= bs!1097900 (and d!1496832 d!1496822)))

(assert (=> bs!1097900 (= lambda!211139 lambda!211132)))

(declare-fun bs!1097901 () Bool)

(assert (= bs!1097901 (and d!1496832 d!1496766)))

(assert (=> bs!1097901 (= lambda!211139 lambda!211118)))

(declare-fun bs!1097902 () Bool)

(assert (= bs!1097902 (and d!1496832 d!1496760)))

(assert (=> bs!1097902 (= lambda!211139 lambda!211115)))

(declare-fun bs!1097903 () Bool)

(assert (= bs!1097903 (and d!1496832 d!1496698)))

(assert (=> bs!1097903 (not (= lambda!211139 lambda!211091))))

(declare-fun bs!1097904 () Bool)

(assert (= bs!1097904 (and d!1496832 d!1496616)))

(assert (=> bs!1097904 (= lambda!211139 lambda!210998)))

(declare-fun bs!1097905 () Bool)

(assert (= bs!1097905 (and d!1496832 d!1496590)))

(assert (=> bs!1097905 (= lambda!211139 lambda!210984)))

(declare-fun bs!1097906 () Bool)

(assert (= bs!1097906 (and d!1496832 d!1496744)))

(assert (=> bs!1097906 (= lambda!211139 lambda!211102)))

(declare-fun b!4704286 () Bool)

(declare-fun e!2934475 () Bool)

(assert (=> b!4704286 (= e!2934475 (isDefined!9474 (getPair!512 (apply!12391 lm!2023 (hash!4200 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1868406 () Unit!126740)

(assert (=> b!4704286 (= lt!1868406 (forallContained!3526 (toList!5706 lm!2023) lambda!211139 (tuple2!54029 (hash!4200 hashF!1323 key!4653) (apply!12391 lm!2023 (hash!4200 hashF!1323 key!4653)))))))

(declare-fun lt!1868407 () Unit!126740)

(declare-fun lt!1868410 () Unit!126740)

(assert (=> b!4704286 (= lt!1868407 lt!1868410)))

(declare-fun lt!1868411 () (_ BitVec 64))

(declare-fun lt!1868412 () List!52685)

(assert (=> b!4704286 (contains!15859 (toList!5706 lm!2023) (tuple2!54029 lt!1868411 lt!1868412))))

(assert (=> b!4704286 (= lt!1868410 (lemmaGetValueImpliesTupleContained!317 lm!2023 lt!1868411 lt!1868412))))

(declare-fun e!2934474 () Bool)

(assert (=> b!4704286 e!2934474))

(declare-fun res!1986733 () Bool)

(assert (=> b!4704286 (=> (not res!1986733) (not e!2934474))))

(assert (=> b!4704286 (= res!1986733 (contains!15860 lm!2023 lt!1868411))))

(assert (=> b!4704286 (= lt!1868412 (apply!12391 lm!2023 (hash!4200 hashF!1323 key!4653)))))

(assert (=> b!4704286 (= lt!1868411 (hash!4200 hashF!1323 key!4653))))

(declare-fun lt!1868413 () Unit!126740)

(declare-fun lt!1868408 () Unit!126740)

(assert (=> b!4704286 (= lt!1868413 lt!1868408)))

(assert (=> b!4704286 (contains!15860 lm!2023 (hash!4200 hashF!1323 key!4653))))

(assert (=> b!4704286 (= lt!1868408 (lemmaInGenMapThenLongMapContainsHash!718 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496832 e!2934475))

(declare-fun res!1986734 () Bool)

(assert (=> d!1496832 (=> (not res!1986734) (not e!2934475))))

(assert (=> d!1496832 (= res!1986734 (forall!11419 (toList!5706 lm!2023) lambda!211139))))

(declare-fun lt!1868409 () Unit!126740)

(declare-fun choose!32993 (ListLongMap!4235 K!13920 Hashable!6277) Unit!126740)

(assert (=> d!1496832 (= lt!1868409 (choose!32993 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496832 (forall!11419 (toList!5706 lm!2023) lambda!211139)))

(assert (=> d!1496832 (= (lemmaInGenMapThenGetPairDefined!308 lm!2023 key!4653 hashF!1323) lt!1868409)))

(declare-fun b!4704285 () Bool)

(declare-fun res!1986732 () Bool)

(assert (=> b!4704285 (=> (not res!1986732) (not e!2934475))))

(assert (=> b!4704285 (= res!1986732 (contains!15858 (extractMap!1934 (toList!5706 lm!2023)) key!4653))))

(declare-fun b!4704284 () Bool)

(declare-fun res!1986735 () Bool)

(assert (=> b!4704284 (=> (not res!1986735) (not e!2934475))))

(assert (=> b!4704284 (= res!1986735 (allKeysSameHashInMap!1822 lm!2023 hashF!1323))))

(declare-fun b!4704287 () Bool)

(assert (=> b!4704287 (= e!2934474 (= (getValueByKey!1869 (toList!5706 lm!2023) lt!1868411) (Some!12222 lt!1868412)))))

(assert (= (and d!1496832 res!1986734) b!4704284))

(assert (= (and b!4704284 res!1986735) b!4704285))

(assert (= (and b!4704285 res!1986732) b!4704286))

(assert (= (and b!4704286 res!1986733) b!4704287))

(declare-fun m!5624087 () Bool)

(assert (=> b!4704286 m!5624087))

(declare-fun m!5624089 () Bool)

(assert (=> b!4704286 m!5624089))

(assert (=> b!4704286 m!5622829))

(assert (=> b!4704286 m!5624071))

(assert (=> b!4704286 m!5622799))

(declare-fun m!5624091 () Bool)

(assert (=> b!4704286 m!5624091))

(assert (=> b!4704286 m!5622829))

(declare-fun m!5624093 () Bool)

(assert (=> b!4704286 m!5624093))

(declare-fun m!5624095 () Bool)

(assert (=> b!4704286 m!5624095))

(assert (=> b!4704286 m!5622829))

(assert (=> b!4704286 m!5624093))

(assert (=> b!4704286 m!5624095))

(declare-fun m!5624097 () Bool)

(assert (=> b!4704286 m!5624097))

(declare-fun m!5624099 () Bool)

(assert (=> b!4704286 m!5624099))

(declare-fun m!5624101 () Bool)

(assert (=> d!1496832 m!5624101))

(declare-fun m!5624103 () Bool)

(assert (=> d!1496832 m!5624103))

(assert (=> d!1496832 m!5624101))

(assert (=> b!4704284 m!5622903))

(assert (=> b!4704285 m!5622849))

(assert (=> b!4704285 m!5622849))

(declare-fun m!5624105 () Bool)

(assert (=> b!4704285 m!5624105))

(declare-fun m!5624107 () Bool)

(assert (=> b!4704287 m!5624107))

(assert (=> b!4703835 d!1496832))

(declare-fun d!1496842 () Bool)

(assert (=> d!1496842 (containsKey!3195 oldBucket!34 key!4653)))

(declare-fun lt!1868416 () Unit!126740)

(declare-fun choose!32995 (List!52685 K!13920 Hashable!6277) Unit!126740)

(assert (=> d!1496842 (= lt!1868416 (choose!32995 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1496842 (noDuplicateKeys!1908 oldBucket!34)))

(assert (=> d!1496842 (= (lemmaGetPairDefinedThenContainsKey!260 oldBucket!34 key!4653 hashF!1323) lt!1868416)))

(declare-fun bs!1097907 () Bool)

(assert (= bs!1097907 d!1496842))

(assert (=> bs!1097907 m!5622807))

(declare-fun m!5624109 () Bool)

(assert (=> bs!1097907 m!5624109))

(assert (=> bs!1097907 m!5622827))

(assert (=> b!4703835 d!1496842))

(declare-fun d!1496844 () Bool)

(declare-fun lt!1868419 () Bool)

(declare-fun content!9294 (List!52686) (InoxSet tuple2!54028))

(assert (=> d!1496844 (= lt!1868419 (select (content!9294 (toList!5706 lm!2023)) lt!1867792))))

(declare-fun e!2934480 () Bool)

(assert (=> d!1496844 (= lt!1868419 e!2934480)))

(declare-fun res!1986740 () Bool)

(assert (=> d!1496844 (=> (not res!1986740) (not e!2934480))))

(assert (=> d!1496844 (= res!1986740 ((_ is Cons!52562) (toList!5706 lm!2023)))))

(assert (=> d!1496844 (= (contains!15859 (toList!5706 lm!2023) lt!1867792) lt!1868419)))

(declare-fun b!4704292 () Bool)

(declare-fun e!2934481 () Bool)

(assert (=> b!4704292 (= e!2934480 e!2934481)))

(declare-fun res!1986741 () Bool)

(assert (=> b!4704292 (=> res!1986741 e!2934481)))

(assert (=> b!4704292 (= res!1986741 (= (h!58851 (toList!5706 lm!2023)) lt!1867792))))

(declare-fun b!4704293 () Bool)

(assert (=> b!4704293 (= e!2934481 (contains!15859 (t!359906 (toList!5706 lm!2023)) lt!1867792))))

(assert (= (and d!1496844 res!1986740) b!4704292))

(assert (= (and b!4704292 (not res!1986741)) b!4704293))

(declare-fun m!5624111 () Bool)

(assert (=> d!1496844 m!5624111))

(declare-fun m!5624113 () Bool)

(assert (=> d!1496844 m!5624113))

(declare-fun m!5624115 () Bool)

(assert (=> b!4704293 m!5624115))

(assert (=> b!4703835 d!1496844))

(declare-fun d!1496846 () Bool)

(declare-fun res!1986746 () Bool)

(declare-fun e!2934486 () Bool)

(assert (=> d!1496846 (=> res!1986746 e!2934486)))

(assert (=> d!1496846 (= res!1986746 (and ((_ is Cons!52561) (t!359905 oldBucket!34)) (= (_1!30307 (h!58850 (t!359905 oldBucket!34))) key!4653)))))

(assert (=> d!1496846 (= (containsKey!3195 (t!359905 oldBucket!34) key!4653) e!2934486)))

(declare-fun b!4704298 () Bool)

(declare-fun e!2934487 () Bool)

(assert (=> b!4704298 (= e!2934486 e!2934487)))

(declare-fun res!1986747 () Bool)

(assert (=> b!4704298 (=> (not res!1986747) (not e!2934487))))

(assert (=> b!4704298 (= res!1986747 ((_ is Cons!52561) (t!359905 oldBucket!34)))))

(declare-fun b!4704299 () Bool)

(assert (=> b!4704299 (= e!2934487 (containsKey!3195 (t!359905 (t!359905 oldBucket!34)) key!4653))))

(assert (= (and d!1496846 (not res!1986746)) b!4704298))

(assert (= (and b!4704298 res!1986747) b!4704299))

(declare-fun m!5624117 () Bool)

(assert (=> b!4704299 m!5624117))

(assert (=> b!4703835 d!1496846))

(declare-fun d!1496848 () Bool)

(declare-fun get!17609 (Option!12223) List!52685)

(assert (=> d!1496848 (= (apply!12391 lm!2023 lt!1867778) (get!17609 (getValueByKey!1869 (toList!5706 lm!2023) lt!1867778)))))

(declare-fun bs!1097908 () Bool)

(assert (= bs!1097908 d!1496848))

(assert (=> bs!1097908 m!5624043))

(assert (=> bs!1097908 m!5624043))

(declare-fun m!5624119 () Bool)

(assert (=> bs!1097908 m!5624119))

(assert (=> b!4703835 d!1496848))

(declare-fun d!1496850 () Bool)

(declare-fun res!1986748 () Bool)

(declare-fun e!2934488 () Bool)

(assert (=> d!1496850 (=> res!1986748 e!2934488)))

(assert (=> d!1496850 (= res!1986748 (and ((_ is Cons!52561) oldBucket!34) (= (_1!30307 (h!58850 oldBucket!34)) key!4653)))))

(assert (=> d!1496850 (= (containsKey!3195 oldBucket!34 key!4653) e!2934488)))

(declare-fun b!4704300 () Bool)

(declare-fun e!2934489 () Bool)

(assert (=> b!4704300 (= e!2934488 e!2934489)))

(declare-fun res!1986749 () Bool)

(assert (=> b!4704300 (=> (not res!1986749) (not e!2934489))))

(assert (=> b!4704300 (= res!1986749 ((_ is Cons!52561) oldBucket!34))))

(declare-fun b!4704301 () Bool)

(assert (=> b!4704301 (= e!2934489 (containsKey!3195 (t!359905 oldBucket!34) key!4653))))

(assert (= (and d!1496850 (not res!1986748)) b!4704300))

(assert (= (and b!4704300 res!1986749) b!4704301))

(assert (=> b!4704301 m!5622801))

(assert (=> b!4703835 d!1496850))

(declare-fun d!1496852 () Bool)

(assert (=> d!1496852 (= (isDefined!9474 (getPair!512 lt!1867787 key!4653)) (not (isEmpty!29138 (getPair!512 lt!1867787 key!4653))))))

(declare-fun bs!1097909 () Bool)

(assert (= bs!1097909 d!1496852))

(assert (=> bs!1097909 m!5622805))

(declare-fun m!5624121 () Bool)

(assert (=> bs!1097909 m!5624121))

(assert (=> b!4703835 d!1496852))

(declare-fun d!1496854 () Bool)

(assert (=> d!1496854 (contains!15859 (toList!5706 lm!2023) (tuple2!54029 lt!1867778 lt!1867787))))

(declare-fun lt!1868422 () Unit!126740)

(declare-fun choose!32997 (ListLongMap!4235 (_ BitVec 64) List!52685) Unit!126740)

(assert (=> d!1496854 (= lt!1868422 (choose!32997 lm!2023 lt!1867778 lt!1867787))))

(assert (=> d!1496854 (contains!15860 lm!2023 lt!1867778)))

(assert (=> d!1496854 (= (lemmaGetValueImpliesTupleContained!317 lm!2023 lt!1867778 lt!1867787) lt!1868422)))

(declare-fun bs!1097910 () Bool)

(assert (= bs!1097910 d!1496854))

(declare-fun m!5624123 () Bool)

(assert (=> bs!1097910 m!5624123))

(declare-fun m!5624125 () Bool)

(assert (=> bs!1097910 m!5624125))

(assert (=> bs!1097910 m!5622813))

(assert (=> b!4703835 d!1496854))

(declare-fun d!1496856 () Bool)

(declare-fun res!1986750 () Bool)

(declare-fun e!2934490 () Bool)

(assert (=> d!1496856 (=> res!1986750 e!2934490)))

(assert (=> d!1496856 (= res!1986750 (not ((_ is Cons!52561) newBucket!218)))))

(assert (=> d!1496856 (= (noDuplicateKeys!1908 newBucket!218) e!2934490)))

(declare-fun b!4704303 () Bool)

(declare-fun e!2934491 () Bool)

(assert (=> b!4704303 (= e!2934490 e!2934491)))

(declare-fun res!1986751 () Bool)

(assert (=> b!4704303 (=> (not res!1986751) (not e!2934491))))

(assert (=> b!4704303 (= res!1986751 (not (containsKey!3195 (t!359905 newBucket!218) (_1!30307 (h!58850 newBucket!218)))))))

(declare-fun b!4704304 () Bool)

(assert (=> b!4704304 (= e!2934491 (noDuplicateKeys!1908 (t!359905 newBucket!218)))))

(assert (= (and d!1496856 (not res!1986750)) b!4704303))

(assert (= (and b!4704303 res!1986751) b!4704304))

(declare-fun m!5624127 () Bool)

(assert (=> b!4704303 m!5624127))

(declare-fun m!5624129 () Bool)

(assert (=> b!4704304 m!5624129))

(assert (=> b!4703836 d!1496856))

(declare-fun b!4704309 () Bool)

(declare-fun e!2934494 () Bool)

(declare-fun tp!1346856 () Bool)

(assert (=> b!4704309 (= e!2934494 (and tp_is_empty!30925 tp_is_empty!30927 tp!1346856))))

(assert (=> b!4703837 (= tp!1346843 e!2934494)))

(assert (= (and b!4703837 ((_ is Cons!52561) (t!359905 newBucket!218))) b!4704309))

(declare-fun b!4704314 () Bool)

(declare-fun e!2934497 () Bool)

(declare-fun tp!1346861 () Bool)

(declare-fun tp!1346862 () Bool)

(assert (=> b!4704314 (= e!2934497 (and tp!1346861 tp!1346862))))

(assert (=> b!4703824 (= tp!1346841 e!2934497)))

(assert (= (and b!4703824 ((_ is Cons!52562) (toList!5706 lm!2023))) b!4704314))

(declare-fun e!2934498 () Bool)

(declare-fun tp!1346863 () Bool)

(declare-fun b!4704315 () Bool)

(assert (=> b!4704315 (= e!2934498 (and tp_is_empty!30925 tp_is_empty!30927 tp!1346863))))

(assert (=> b!4703841 (= tp!1346842 e!2934498)))

(assert (= (and b!4703841 ((_ is Cons!52561) (t!359905 oldBucket!34))) b!4704315))

(declare-fun b_lambda!177487 () Bool)

(assert (= b_lambda!177479 (or start!477412 b_lambda!177487)))

(declare-fun bs!1097911 () Bool)

(declare-fun d!1496858 () Bool)

(assert (= bs!1097911 (and d!1496858 start!477412)))

(assert (=> bs!1097911 (= (dynLambda!21757 lambda!210977 lt!1867792) (noDuplicateKeys!1908 (_2!30308 lt!1867792)))))

(declare-fun m!5624131 () Bool)

(assert (=> bs!1097911 m!5624131))

(assert (=> d!1496806 d!1496858))

(declare-fun b_lambda!177489 () Bool)

(assert (= b_lambda!177471 (or start!477412 b_lambda!177489)))

(declare-fun bs!1097912 () Bool)

(declare-fun d!1496860 () Bool)

(assert (= bs!1097912 (and d!1496860 start!477412)))

(assert (=> bs!1097912 (= (dynLambda!21757 lambda!210977 (h!58851 lt!1867776)) (noDuplicateKeys!1908 (_2!30308 (h!58851 lt!1867776))))))

(declare-fun m!5624133 () Bool)

(assert (=> bs!1097912 m!5624133))

(assert (=> b!4704090 d!1496860))

(declare-fun b_lambda!177491 () Bool)

(assert (= b_lambda!177477 (or start!477412 b_lambda!177491)))

(declare-fun bs!1097913 () Bool)

(declare-fun d!1496862 () Bool)

(assert (= bs!1097913 (and d!1496862 start!477412)))

(assert (=> bs!1097913 (= (dynLambda!21757 lambda!210977 (h!58851 (toList!5706 lm!2023))) (noDuplicateKeys!1908 (_2!30308 (h!58851 (toList!5706 lm!2023)))))))

(assert (=> bs!1097913 m!5623471))

(assert (=> b!4704207 d!1496862))

(check-sat (not d!1496678) (not bs!1097911) (not bm!328898) (not b!4704218) (not b!4704205) (not d!1496618) (not d!1496568) (not d!1496616) (not d!1496700) (not b!4704136) (not b!4704208) (not b!4704146) (not bm!328895) (not d!1496552) (not d!1496718) (not b!4703938) (not bm!328886) (not b!4704145) (not d!1496752) (not b!4704049) (not d!1496852) (not b!4704054) (not b!4703978) (not b!4704301) (not b!4703872) (not d!1496566) (not b!4704171) (not d!1496748) (not b!4704284) (not b!4704047) (not b!4703885) (not b_lambda!177491) (not b!4704174) (not b!4704239) (not bm!328884) (not bs!1097912) (not d!1496714) (not b!4704148) (not bm!328889) (not d!1496706) (not d!1496806) (not b!4703852) (not b!4704159) (not b!4704048) (not d!1496562) (not d!1496792) (not b!4703927) (not d!1496608) (not b!4703868) (not b!4703945) (not b!4704094) (not bm!328888) (not b!4704314) (not b!4704169) (not b!4704106) (not b!4704164) (not b!4704188) tp_is_empty!30925 (not d!1496768) (not d!1496582) (not d!1496842) (not b!4704285) (not b!4703884) (not b!4704303) (not b!4704309) (not b!4703975) (not d!1496760) (not b!4703931) (not d!1496550) (not bm!328897) (not b!4704238) (not d!1496712) (not b!4704184) (not bs!1097913) (not bm!328892) (not b!4704244) (not d!1496744) (not b!4703971) (not d!1496742) (not b!4703939) (not b!4704140) (not bm!328885) (not d!1496614) (not b!4704133) (not d!1496754) (not bm!328887) (not b!4703937) (not d!1496594) (not b!4704242) (not d!1496778) (not b!4704161) (not b!4704293) (not d!1496578) (not b!4703974) (not d!1496800) (not b!4704172) (not d!1496774) (not bm!328894) (not d!1496698) (not d!1496704) (not d!1496722) (not b!4704091) (not b!4704138) (not b!4703977) (not d!1496612) (not d!1496756) (not bm!328893) (not d!1496702) (not b!4704170) (not b_lambda!177489) (not d!1496820) (not b!4704168) (not d!1496802) (not b!4704134) (not d!1496844) (not b_lambda!177487) (not d!1496796) (not b!4704261) (not b!4704263) (not d!1496604) (not d!1496546) (not bm!328896) (not b!4704167) (not b!4704166) (not d!1496590) (not d!1496750) (not d!1496746) (not d!1496730) (not b!4704240) (not b!4704315) (not d!1496848) (not d!1496544) (not b!4704137) (not b!4703874) (not d!1496766) (not b!4704135) (not b!4704287) (not d!1496798) (not d!1496596) (not b!4704254) (not b!4703972) (not b!4703976) (not b!4703853) (not bm!328891) (not b!4704189) (not b!4703973) (not d!1496664) (not b!4704304) (not d!1496716) (not d!1496822) (not d!1496832) (not b!4704139) tp_is_empty!30927 (not b!4704163) (not bm!328890) (not b!4704286) (not b!4704173) (not b!4704299) (not b!4704190) (not d!1496854) (not d!1496606) (not d!1496602) (not d!1496762) (not bm!328899) (not b!4704046) (not b!4704105) (not d!1496670) (not d!1496726) (not b!4704162) (not b!4703871) (not d!1496548) (not b!4704076) (not b!4703946) (not d!1496732) (not b!4704158) (not b!4704147) (not bm!328858) (not b!4704187))
(check-sat)
