; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476276 () Bool)

(assert start!476276)

(declare-fun b!4698699 () Bool)

(declare-fun res!1983396 () Bool)

(declare-fun e!2931097 () Bool)

(assert (=> b!4698699 (=> (not res!1983396) (not e!2931097))))

(declare-datatypes ((K!13875 0))(
  ( (K!13876 (val!19371 Int)) )
))
(declare-datatypes ((V!14121 0))(
  ( (V!14122 (val!19372 Int)) )
))
(declare-datatypes ((tuple2!53954 0))(
  ( (tuple2!53955 (_1!30271 K!13875) (_2!30271 V!14121)) )
))
(declare-datatypes ((List!52633 0))(
  ( (Nil!52509) (Cons!52509 (h!58782 tuple2!53954) (t!359837 List!52633)) )
))
(declare-datatypes ((tuple2!53956 0))(
  ( (tuple2!53957 (_1!30272 (_ BitVec 64)) (_2!30272 List!52633)) )
))
(declare-datatypes ((List!52634 0))(
  ( (Nil!52510) (Cons!52510 (h!58783 tuple2!53956) (t!359838 List!52634)) )
))
(declare-datatypes ((ListLongMap!4199 0))(
  ( (ListLongMap!4200 (toList!5669 List!52634)) )
))
(declare-fun lm!2023 () ListLongMap!4199)

(declare-datatypes ((Hashable!6259 0))(
  ( (HashableExt!6258 (__x!31962 Int)) )
))
(declare-fun hashF!1323 () Hashable!6259)

(declare-fun allKeysSameHashInMap!1804 (ListLongMap!4199 Hashable!6259) Bool)

(assert (=> b!4698699 (= res!1983396 (allKeysSameHashInMap!1804 lm!2023 hashF!1323))))

(declare-fun b!4698700 () Bool)

(declare-fun res!1983395 () Bool)

(declare-fun e!2931100 () Bool)

(assert (=> b!4698700 (=> res!1983395 e!2931100)))

(declare-fun oldBucket!34 () List!52633)

(declare-fun lt!1860868 () tuple2!53954)

(assert (=> b!4698700 (= res!1983395 (not (= (h!58782 oldBucket!34) lt!1860868)))))

(declare-fun b!4698701 () Bool)

(declare-fun res!1983399 () Bool)

(assert (=> b!4698701 (=> (not res!1983399) (not e!2931097))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52633)

(declare-fun allKeysSameHash!1716 (List!52633 (_ BitVec 64) Hashable!6259) Bool)

(assert (=> b!4698701 (= res!1983399 (allKeysSameHash!1716 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4698702 () Bool)

(declare-fun e!2931090 () Bool)

(assert (=> b!4698702 (= e!2931100 e!2931090)))

(declare-fun res!1983390 () Bool)

(assert (=> b!4698702 (=> res!1983390 e!2931090)))

(declare-datatypes ((ListMap!5033 0))(
  ( (ListMap!5034 (toList!5670 List!52633)) )
))
(declare-fun lt!1860851 () ListMap!5033)

(declare-fun lt!1860863 () ListMap!5033)

(declare-fun eq!1049 (ListMap!5033 ListMap!5033) Bool)

(assert (=> b!4698702 (= res!1983390 (not (eq!1049 lt!1860851 lt!1860863)))))

(declare-fun lt!1860866 () ListMap!5033)

(declare-fun key!4653 () K!13875)

(declare-fun -!694 (ListMap!5033 K!13875) ListMap!5033)

(assert (=> b!4698702 (= lt!1860863 (-!694 lt!1860866 key!4653))))

(declare-fun lt!1860858 () tuple2!53956)

(declare-fun extractMap!1916 (List!52634) ListMap!5033)

(assert (=> b!4698702 (= lt!1860851 (extractMap!1916 (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023)))))))

(declare-fun lt!1860839 () tuple2!53956)

(declare-fun lt!1860849 () List!52634)

(assert (=> b!4698702 (eq!1049 (extractMap!1916 (Cons!52510 lt!1860858 lt!1860849)) (-!694 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)) key!4653))))

(declare-fun lt!1860859 () List!52634)

(declare-fun tail!8695 (List!52634) List!52634)

(assert (=> b!4698702 (= lt!1860849 (tail!8695 lt!1860859))))

(declare-fun lt!1860843 () List!52633)

(assert (=> b!4698702 (= lt!1860858 (tuple2!53957 hash!405 lt!1860843))))

(declare-fun lt!1860865 () ListLongMap!4199)

(declare-datatypes ((Unit!125744 0))(
  ( (Unit!125745) )
))
(declare-fun lt!1860847 () Unit!125744)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!64 (ListLongMap!4199 (_ BitVec 64) List!52633 List!52633 K!13875 Hashable!6259) Unit!125744)

(assert (=> b!4698702 (= lt!1860847 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!64 lt!1860865 hash!405 (t!359837 oldBucket!34) lt!1860843 key!4653 hashF!1323))))

(declare-fun b!4698703 () Bool)

(declare-fun e!2931096 () Bool)

(declare-fun e!2931092 () Bool)

(assert (=> b!4698703 (= e!2931096 e!2931092)))

(declare-fun res!1983403 () Bool)

(assert (=> b!4698703 (=> res!1983403 e!2931092)))

(declare-fun containsKey!3145 (List!52633 K!13875) Bool)

(assert (=> b!4698703 (= res!1983403 (not (containsKey!3145 (t!359837 oldBucket!34) key!4653)))))

(assert (=> b!4698703 (containsKey!3145 oldBucket!34 key!4653)))

(declare-fun lt!1860870 () Unit!125744)

(declare-fun lemmaGetPairDefinedThenContainsKey!242 (List!52633 K!13875 Hashable!6259) Unit!125744)

(assert (=> b!4698703 (= lt!1860870 (lemmaGetPairDefinedThenContainsKey!242 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1860864 () List!52633)

(declare-datatypes ((Option!12169 0))(
  ( (None!12168) (Some!12168 (v!46639 tuple2!53954)) )
))
(declare-fun isDefined!9424 (Option!12169) Bool)

(declare-fun getPair!494 (List!52633 K!13875) Option!12169)

(assert (=> b!4698703 (isDefined!9424 (getPair!494 lt!1860864 key!4653))))

(declare-fun lambda!209567 () Int)

(declare-fun lt!1860872 () tuple2!53956)

(declare-fun lt!1860838 () Unit!125744)

(declare-fun forallContained!3492 (List!52634 Int tuple2!53956) Unit!125744)

(assert (=> b!4698703 (= lt!1860838 (forallContained!3492 (toList!5669 lm!2023) lambda!209567 lt!1860872))))

(declare-fun contains!15772 (List!52634 tuple2!53956) Bool)

(assert (=> b!4698703 (contains!15772 (toList!5669 lm!2023) lt!1860872)))

(declare-fun lt!1860862 () (_ BitVec 64))

(assert (=> b!4698703 (= lt!1860872 (tuple2!53957 lt!1860862 lt!1860864))))

(declare-fun lt!1860844 () Unit!125744)

(declare-fun lemmaGetValueImpliesTupleContained!299 (ListLongMap!4199 (_ BitVec 64) List!52633) Unit!125744)

(assert (=> b!4698703 (= lt!1860844 (lemmaGetValueImpliesTupleContained!299 lm!2023 lt!1860862 lt!1860864))))

(declare-fun apply!12373 (ListLongMap!4199 (_ BitVec 64)) List!52633)

(assert (=> b!4698703 (= lt!1860864 (apply!12373 lm!2023 lt!1860862))))

(declare-fun contains!15773 (ListLongMap!4199 (_ BitVec 64)) Bool)

(assert (=> b!4698703 (contains!15773 lm!2023 lt!1860862)))

(declare-fun lt!1860837 () Unit!125744)

(declare-fun lemmaInGenMapThenLongMapContainsHash!700 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> b!4698703 (= lt!1860837 (lemmaInGenMapThenLongMapContainsHash!700 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1860848 () Unit!125744)

(declare-fun lemmaInGenMapThenGetPairDefined!290 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> b!4698703 (= lt!1860848 (lemmaInGenMapThenGetPairDefined!290 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4698704 () Bool)

(declare-fun res!1983388 () Bool)

(declare-fun e!2931101 () Bool)

(assert (=> b!4698704 (=> res!1983388 e!2931101)))

(declare-fun lt!1860846 () ListMap!5033)

(declare-fun lt!1860857 () ListMap!5033)

(assert (=> b!4698704 (= res!1983388 (not (eq!1049 lt!1860846 lt!1860857)))))

(declare-fun b!4698705 () Bool)

(declare-fun res!1983408 () Bool)

(assert (=> b!4698705 (=> res!1983408 e!2931100)))

(declare-fun lt!1860840 () ListMap!5033)

(declare-fun +!2174 (ListMap!5033 tuple2!53954) ListMap!5033)

(assert (=> b!4698705 (= res!1983408 (not (eq!1049 lt!1860857 (+!2174 lt!1860840 lt!1860868))))))

(declare-fun b!4698706 () Bool)

(declare-fun e!2931094 () Bool)

(declare-fun e!2931093 () Bool)

(assert (=> b!4698706 (= e!2931094 e!2931093)))

(declare-fun res!1983391 () Bool)

(assert (=> b!4698706 (=> (not res!1983391) (not e!2931093))))

(declare-fun lt!1860852 () ListMap!5033)

(declare-fun contains!15774 (ListMap!5033 K!13875) Bool)

(assert (=> b!4698706 (= res!1983391 (contains!15774 lt!1860852 key!4653))))

(assert (=> b!4698706 (= lt!1860852 (extractMap!1916 (toList!5669 lm!2023)))))

(declare-fun res!1983401 () Bool)

(assert (=> start!476276 (=> (not res!1983401) (not e!2931094))))

(declare-fun forall!11385 (List!52634 Int) Bool)

(assert (=> start!476276 (= res!1983401 (forall!11385 (toList!5669 lm!2023) lambda!209567))))

(assert (=> start!476276 e!2931094))

(declare-fun e!2931091 () Bool)

(declare-fun inv!67749 (ListLongMap!4199) Bool)

(assert (=> start!476276 (and (inv!67749 lm!2023) e!2931091)))

(declare-fun tp_is_empty!30853 () Bool)

(assert (=> start!476276 tp_is_empty!30853))

(declare-fun e!2931098 () Bool)

(assert (=> start!476276 e!2931098))

(assert (=> start!476276 true))

(declare-fun e!2931102 () Bool)

(assert (=> start!476276 e!2931102))

(declare-fun b!4698707 () Bool)

(assert (=> b!4698707 (= e!2931101 (forall!11385 lt!1860859 lambda!209567))))

(declare-fun lt!1860845 () ListMap!5033)

(assert (=> b!4698707 (eq!1049 lt!1860845 (+!2174 lt!1860851 (h!58782 oldBucket!34)))))

(declare-fun lt!1860854 () Unit!125744)

(declare-fun lemmaAddToEqMapsPreservesEq!72 (ListMap!5033 ListMap!5033 K!13875 V!14121) Unit!125744)

(assert (=> b!4698707 (= lt!1860854 (lemmaAddToEqMapsPreservesEq!72 lt!1860863 lt!1860851 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(declare-fun b!4698708 () Bool)

(assert (=> b!4698708 (= e!2931093 e!2931097)))

(declare-fun res!1983406 () Bool)

(assert (=> b!4698708 (=> (not res!1983406) (not e!2931097))))

(assert (=> b!4698708 (= res!1983406 (= lt!1860862 hash!405))))

(declare-fun hash!4150 (Hashable!6259 K!13875) (_ BitVec 64))

(assert (=> b!4698708 (= lt!1860862 (hash!4150 hashF!1323 key!4653))))

(declare-fun tp_is_empty!30855 () Bool)

(declare-fun b!4698709 () Bool)

(declare-fun tp!1346519 () Bool)

(assert (=> b!4698709 (= e!2931098 (and tp_is_empty!30853 tp_is_empty!30855 tp!1346519))))

(declare-fun b!4698710 () Bool)

(declare-fun res!1983402 () Bool)

(assert (=> b!4698710 (=> res!1983402 e!2931101)))

(declare-fun lt!1860869 () ListMap!5033)

(declare-fun lt!1860861 () ListMap!5033)

(assert (=> b!4698710 (= res!1983402 (not (eq!1049 lt!1860869 lt!1860861)))))

(declare-fun b!4698711 () Bool)

(declare-fun tp!1346520 () Bool)

(assert (=> b!4698711 (= e!2931091 tp!1346520)))

(declare-fun b!4698712 () Bool)

(declare-fun res!1983394 () Bool)

(declare-fun e!2931095 () Bool)

(assert (=> b!4698712 (=> (not res!1983394) (not e!2931095))))

(get-info :version)

(assert (=> b!4698712 (= res!1983394 ((_ is Cons!52510) (toList!5669 lm!2023)))))

(declare-fun b!4698713 () Bool)

(declare-fun res!1983404 () Bool)

(declare-fun e!2931099 () Bool)

(assert (=> b!4698713 (=> res!1983404 e!2931099)))

(declare-fun removePairForKey!1485 (List!52633 K!13875) List!52633)

(assert (=> b!4698713 (= res!1983404 (not (= (removePairForKey!1485 (t!359837 oldBucket!34) key!4653) lt!1860843)))))

(declare-fun b!4698714 () Bool)

(assert (=> b!4698714 (= e!2931095 (not e!2931096))))

(declare-fun res!1983407 () Bool)

(assert (=> b!4698714 (=> res!1983407 e!2931096)))

(assert (=> b!4698714 (= res!1983407 (or (and ((_ is Cons!52509) oldBucket!34) (= (_1!30271 (h!58782 oldBucket!34)) key!4653)) (not ((_ is Cons!52509) oldBucket!34)) (= (_1!30271 (h!58782 oldBucket!34)) key!4653)))))

(declare-fun lt!1860871 () ListMap!5033)

(declare-fun addToMapMapFromBucket!1322 (List!52633 ListMap!5033) ListMap!5033)

(assert (=> b!4698714 (= lt!1860852 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (toList!5669 lm!2023))) lt!1860871))))

(assert (=> b!4698714 (= lt!1860871 (extractMap!1916 (t!359838 (toList!5669 lm!2023))))))

(declare-fun tail!8696 (ListLongMap!4199) ListLongMap!4199)

(assert (=> b!4698714 (= (t!359838 (toList!5669 lm!2023)) (toList!5669 (tail!8696 lm!2023)))))

(declare-fun b!4698715 () Bool)

(assert (=> b!4698715 (= e!2931090 e!2931101)))

(declare-fun res!1983392 () Bool)

(assert (=> b!4698715 (=> res!1983392 e!2931101)))

(assert (=> b!4698715 (= res!1983392 (not (= lt!1860869 lt!1860861)))))

(assert (=> b!4698715 (= lt!1860861 (+!2174 lt!1860863 (h!58782 oldBucket!34)))))

(assert (=> b!4698715 (= lt!1860869 (-!694 lt!1860846 key!4653))))

(assert (=> b!4698715 (= lt!1860846 (+!2174 lt!1860866 (h!58782 oldBucket!34)))))

(declare-fun lt!1860841 () ListMap!5033)

(assert (=> b!4698715 (= lt!1860841 lt!1860845)))

(assert (=> b!4698715 (= lt!1860845 (+!2174 lt!1860863 (h!58782 oldBucket!34)))))

(assert (=> b!4698715 (= lt!1860841 (-!694 (+!2174 lt!1860866 (h!58782 oldBucket!34)) key!4653))))

(declare-fun lt!1860867 () Unit!125744)

(declare-fun addRemoveCommutativeForDiffKeys!95 (ListMap!5033 K!13875 V!14121 K!13875) Unit!125744)

(assert (=> b!4698715 (= lt!1860867 (addRemoveCommutativeForDiffKeys!95 lt!1860866 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)) key!4653))))

(declare-fun b!4698716 () Bool)

(assert (=> b!4698716 (= e!2931092 e!2931099)))

(declare-fun res!1983398 () Bool)

(assert (=> b!4698716 (=> res!1983398 e!2931099)))

(declare-fun lt!1860850 () List!52633)

(assert (=> b!4698716 (= res!1983398 (not (= (removePairForKey!1485 lt!1860850 key!4653) lt!1860843)))))

(declare-fun tail!8697 (List!52633) List!52633)

(assert (=> b!4698716 (= lt!1860843 (tail!8697 newBucket!218))))

(assert (=> b!4698716 (= lt!1860850 (tail!8697 oldBucket!34))))

(declare-fun b!4698717 () Bool)

(assert (=> b!4698717 (= e!2931099 e!2931100)))

(declare-fun res!1983400 () Bool)

(assert (=> b!4698717 (=> res!1983400 e!2931100)))

(assert (=> b!4698717 (= res!1983400 (not (eq!1049 lt!1860857 (+!2174 lt!1860840 (h!58782 oldBucket!34)))))))

(assert (=> b!4698717 (= lt!1860840 (extractMap!1916 (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023)))))))

(declare-fun lt!1860856 () tuple2!53956)

(assert (=> b!4698717 (= lt!1860857 (extractMap!1916 (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023)))))))

(assert (=> b!4698717 (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860868 lt!1860843) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1860868))))

(declare-fun lt!1860853 () Unit!125744)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!298 (tuple2!53954 List!52633 ListMap!5033) Unit!125744)

(assert (=> b!4698717 (= lt!1860853 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!298 lt!1860868 lt!1860843 lt!1860871))))

(declare-fun head!10043 (List!52633) tuple2!53954)

(assert (=> b!4698717 (= lt!1860868 (head!10043 newBucket!218))))

(declare-fun lt!1860855 () tuple2!53954)

(assert (=> b!4698717 (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860855 lt!1860850) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1860855))))

(declare-fun lt!1860860 () Unit!125744)

(assert (=> b!4698717 (= lt!1860860 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!298 lt!1860855 lt!1860850 lt!1860871))))

(assert (=> b!4698717 (= lt!1860855 (head!10043 oldBucket!34))))

(assert (=> b!4698717 (contains!15774 lt!1860866 key!4653)))

(assert (=> b!4698717 (= lt!1860866 (extractMap!1916 lt!1860859))))

(declare-fun lt!1860842 () Unit!125744)

(declare-fun lemmaListContainsThenExtractedMapContains!482 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> b!4698717 (= lt!1860842 (lemmaListContainsThenExtractedMapContains!482 lt!1860865 key!4653 hashF!1323))))

(assert (=> b!4698717 (= lt!1860865 (ListLongMap!4200 lt!1860859))))

(assert (=> b!4698717 (= lt!1860859 (Cons!52510 lt!1860839 (t!359838 (toList!5669 lm!2023))))))

(assert (=> b!4698717 (= lt!1860839 (tuple2!53957 hash!405 (t!359837 oldBucket!34)))))

(declare-fun b!4698718 () Bool)

(declare-fun res!1983397 () Bool)

(assert (=> b!4698718 (=> (not res!1983397) (not e!2931094))))

(declare-fun noDuplicateKeys!1890 (List!52633) Bool)

(assert (=> b!4698718 (= res!1983397 (noDuplicateKeys!1890 newBucket!218))))

(declare-fun b!4698719 () Bool)

(assert (=> b!4698719 (= e!2931097 e!2931095)))

(declare-fun res!1983393 () Bool)

(assert (=> b!4698719 (=> (not res!1983393) (not e!2931095))))

(declare-fun head!10044 (List!52634) tuple2!53956)

(assert (=> b!4698719 (= res!1983393 (= (head!10044 (toList!5669 lm!2023)) lt!1860856))))

(assert (=> b!4698719 (= lt!1860856 (tuple2!53957 hash!405 oldBucket!34))))

(declare-fun b!4698720 () Bool)

(declare-fun res!1983389 () Bool)

(assert (=> b!4698720 (=> (not res!1983389) (not e!2931094))))

(assert (=> b!4698720 (= res!1983389 (allKeysSameHash!1716 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4698721 () Bool)

(declare-fun tp!1346521 () Bool)

(assert (=> b!4698721 (= e!2931102 (and tp_is_empty!30853 tp_is_empty!30855 tp!1346521))))

(declare-fun b!4698722 () Bool)

(declare-fun res!1983405 () Bool)

(assert (=> b!4698722 (=> (not res!1983405) (not e!2931094))))

(assert (=> b!4698722 (= res!1983405 (= (removePairForKey!1485 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4698723 () Bool)

(declare-fun res!1983409 () Bool)

(assert (=> b!4698723 (=> (not res!1983409) (not e!2931094))))

(assert (=> b!4698723 (= res!1983409 (noDuplicateKeys!1890 oldBucket!34))))

(assert (= (and start!476276 res!1983401) b!4698723))

(assert (= (and b!4698723 res!1983409) b!4698718))

(assert (= (and b!4698718 res!1983397) b!4698722))

(assert (= (and b!4698722 res!1983405) b!4698720))

(assert (= (and b!4698720 res!1983389) b!4698706))

(assert (= (and b!4698706 res!1983391) b!4698708))

(assert (= (and b!4698708 res!1983406) b!4698701))

(assert (= (and b!4698701 res!1983399) b!4698699))

(assert (= (and b!4698699 res!1983396) b!4698719))

(assert (= (and b!4698719 res!1983393) b!4698712))

(assert (= (and b!4698712 res!1983394) b!4698714))

(assert (= (and b!4698714 (not res!1983407)) b!4698703))

(assert (= (and b!4698703 (not res!1983403)) b!4698716))

(assert (= (and b!4698716 (not res!1983398)) b!4698713))

(assert (= (and b!4698713 (not res!1983404)) b!4698717))

(assert (= (and b!4698717 (not res!1983400)) b!4698700))

(assert (= (and b!4698700 (not res!1983395)) b!4698705))

(assert (= (and b!4698705 (not res!1983408)) b!4698702))

(assert (= (and b!4698702 (not res!1983390)) b!4698715))

(assert (= (and b!4698715 (not res!1983392)) b!4698710))

(assert (= (and b!4698710 (not res!1983402)) b!4698704))

(assert (= (and b!4698704 (not res!1983388)) b!4698707))

(assert (= start!476276 b!4698711))

(assert (= (and start!476276 ((_ is Cons!52509) oldBucket!34)) b!4698709))

(assert (= (and start!476276 ((_ is Cons!52509) newBucket!218)) b!4698721))

(declare-fun m!5610619 () Bool)

(assert (=> b!4698720 m!5610619))

(declare-fun m!5610621 () Bool)

(assert (=> b!4698723 m!5610621))

(declare-fun m!5610623 () Bool)

(assert (=> b!4698702 m!5610623))

(declare-fun m!5610625 () Bool)

(assert (=> b!4698702 m!5610625))

(declare-fun m!5610627 () Bool)

(assert (=> b!4698702 m!5610627))

(declare-fun m!5610629 () Bool)

(assert (=> b!4698702 m!5610629))

(declare-fun m!5610631 () Bool)

(assert (=> b!4698702 m!5610631))

(declare-fun m!5610633 () Bool)

(assert (=> b!4698702 m!5610633))

(declare-fun m!5610635 () Bool)

(assert (=> b!4698702 m!5610635))

(assert (=> b!4698702 m!5610627))

(declare-fun m!5610637 () Bool)

(assert (=> b!4698702 m!5610637))

(assert (=> b!4698702 m!5610625))

(assert (=> b!4698702 m!5610629))

(declare-fun m!5610639 () Bool)

(assert (=> b!4698702 m!5610639))

(declare-fun m!5610641 () Bool)

(assert (=> b!4698699 m!5610641))

(declare-fun m!5610643 () Bool)

(assert (=> b!4698718 m!5610643))

(declare-fun m!5610645 () Bool)

(assert (=> b!4698707 m!5610645))

(declare-fun m!5610647 () Bool)

(assert (=> b!4698707 m!5610647))

(assert (=> b!4698707 m!5610647))

(declare-fun m!5610649 () Bool)

(assert (=> b!4698707 m!5610649))

(declare-fun m!5610651 () Bool)

(assert (=> b!4698707 m!5610651))

(declare-fun m!5610653 () Bool)

(assert (=> b!4698715 m!5610653))

(declare-fun m!5610655 () Bool)

(assert (=> b!4698715 m!5610655))

(declare-fun m!5610657 () Bool)

(assert (=> b!4698715 m!5610657))

(declare-fun m!5610659 () Bool)

(assert (=> b!4698715 m!5610659))

(assert (=> b!4698715 m!5610659))

(declare-fun m!5610661 () Bool)

(assert (=> b!4698715 m!5610661))

(declare-fun m!5610663 () Bool)

(assert (=> b!4698710 m!5610663))

(declare-fun m!5610665 () Bool)

(assert (=> b!4698703 m!5610665))

(declare-fun m!5610667 () Bool)

(assert (=> b!4698703 m!5610667))

(declare-fun m!5610669 () Bool)

(assert (=> b!4698703 m!5610669))

(declare-fun m!5610671 () Bool)

(assert (=> b!4698703 m!5610671))

(declare-fun m!5610673 () Bool)

(assert (=> b!4698703 m!5610673))

(declare-fun m!5610675 () Bool)

(assert (=> b!4698703 m!5610675))

(declare-fun m!5610677 () Bool)

(assert (=> b!4698703 m!5610677))

(declare-fun m!5610679 () Bool)

(assert (=> b!4698703 m!5610679))

(assert (=> b!4698703 m!5610669))

(declare-fun m!5610681 () Bool)

(assert (=> b!4698703 m!5610681))

(declare-fun m!5610683 () Bool)

(assert (=> b!4698703 m!5610683))

(declare-fun m!5610685 () Bool)

(assert (=> b!4698703 m!5610685))

(declare-fun m!5610687 () Bool)

(assert (=> b!4698703 m!5610687))

(declare-fun m!5610689 () Bool)

(assert (=> b!4698705 m!5610689))

(assert (=> b!4698705 m!5610689))

(declare-fun m!5610691 () Bool)

(assert (=> b!4698705 m!5610691))

(declare-fun m!5610693 () Bool)

(assert (=> b!4698719 m!5610693))

(declare-fun m!5610695 () Bool)

(assert (=> b!4698708 m!5610695))

(declare-fun m!5610697 () Bool)

(assert (=> start!476276 m!5610697))

(declare-fun m!5610699 () Bool)

(assert (=> start!476276 m!5610699))

(declare-fun m!5610701 () Bool)

(assert (=> b!4698716 m!5610701))

(declare-fun m!5610703 () Bool)

(assert (=> b!4698716 m!5610703))

(declare-fun m!5610705 () Bool)

(assert (=> b!4698716 m!5610705))

(declare-fun m!5610707 () Bool)

(assert (=> b!4698713 m!5610707))

(declare-fun m!5610709 () Bool)

(assert (=> b!4698706 m!5610709))

(declare-fun m!5610711 () Bool)

(assert (=> b!4698706 m!5610711))

(declare-fun m!5610713 () Bool)

(assert (=> b!4698717 m!5610713))

(declare-fun m!5610715 () Bool)

(assert (=> b!4698717 m!5610715))

(declare-fun m!5610717 () Bool)

(assert (=> b!4698717 m!5610717))

(declare-fun m!5610719 () Bool)

(assert (=> b!4698717 m!5610719))

(declare-fun m!5610721 () Bool)

(assert (=> b!4698717 m!5610721))

(declare-fun m!5610723 () Bool)

(assert (=> b!4698717 m!5610723))

(declare-fun m!5610725 () Bool)

(assert (=> b!4698717 m!5610725))

(declare-fun m!5610727 () Bool)

(assert (=> b!4698717 m!5610727))

(declare-fun m!5610729 () Bool)

(assert (=> b!4698717 m!5610729))

(declare-fun m!5610731 () Bool)

(assert (=> b!4698717 m!5610731))

(assert (=> b!4698717 m!5610719))

(declare-fun m!5610733 () Bool)

(assert (=> b!4698717 m!5610733))

(declare-fun m!5610735 () Bool)

(assert (=> b!4698717 m!5610735))

(declare-fun m!5610737 () Bool)

(assert (=> b!4698717 m!5610737))

(assert (=> b!4698717 m!5610715))

(assert (=> b!4698717 m!5610733))

(declare-fun m!5610739 () Bool)

(assert (=> b!4698717 m!5610739))

(declare-fun m!5610741 () Bool)

(assert (=> b!4698717 m!5610741))

(declare-fun m!5610743 () Bool)

(assert (=> b!4698717 m!5610743))

(assert (=> b!4698717 m!5610725))

(declare-fun m!5610745 () Bool)

(assert (=> b!4698717 m!5610745))

(assert (=> b!4698717 m!5610713))

(declare-fun m!5610747 () Bool)

(assert (=> b!4698717 m!5610747))

(assert (=> b!4698717 m!5610743))

(assert (=> b!4698717 m!5610727))

(declare-fun m!5610749 () Bool)

(assert (=> b!4698717 m!5610749))

(declare-fun m!5610751 () Bool)

(assert (=> b!4698722 m!5610751))

(declare-fun m!5610753 () Bool)

(assert (=> b!4698701 m!5610753))

(declare-fun m!5610755 () Bool)

(assert (=> b!4698704 m!5610755))

(declare-fun m!5610757 () Bool)

(assert (=> b!4698714 m!5610757))

(declare-fun m!5610759 () Bool)

(assert (=> b!4698714 m!5610759))

(declare-fun m!5610761 () Bool)

(assert (=> b!4698714 m!5610761))

(check-sat tp_is_empty!30855 (not b!4698723) (not b!4698720) tp_is_empty!30853 (not b!4698704) (not b!4698708) (not b!4698718) (not b!4698699) (not b!4698713) (not b!4698703) (not b!4698707) (not b!4698716) (not b!4698717) (not b!4698719) (not b!4698721) (not b!4698714) (not b!4698701) (not b!4698706) (not b!4698710) (not b!4698709) (not b!4698702) (not b!4698715) (not start!476276) (not b!4698711) (not b!4698705) (not b!4698722))
(check-sat)
(get-model)

(declare-fun d!1494095 () Bool)

(declare-fun res!1983414 () Bool)

(declare-fun e!2931107 () Bool)

(assert (=> d!1494095 (=> res!1983414 e!2931107)))

(assert (=> d!1494095 (= res!1983414 ((_ is Nil!52510) lt!1860859))))

(assert (=> d!1494095 (= (forall!11385 lt!1860859 lambda!209567) e!2931107)))

(declare-fun b!4698728 () Bool)

(declare-fun e!2931108 () Bool)

(assert (=> b!4698728 (= e!2931107 e!2931108)))

(declare-fun res!1983415 () Bool)

(assert (=> b!4698728 (=> (not res!1983415) (not e!2931108))))

(declare-fun dynLambda!21741 (Int tuple2!53956) Bool)

(assert (=> b!4698728 (= res!1983415 (dynLambda!21741 lambda!209567 (h!58783 lt!1860859)))))

(declare-fun b!4698729 () Bool)

(assert (=> b!4698729 (= e!2931108 (forall!11385 (t!359838 lt!1860859) lambda!209567))))

(assert (= (and d!1494095 (not res!1983414)) b!4698728))

(assert (= (and b!4698728 res!1983415) b!4698729))

(declare-fun b_lambda!177293 () Bool)

(assert (=> (not b_lambda!177293) (not b!4698728)))

(declare-fun m!5610765 () Bool)

(assert (=> b!4698728 m!5610765))

(declare-fun m!5610767 () Bool)

(assert (=> b!4698729 m!5610767))

(assert (=> b!4698707 d!1494095))

(declare-fun d!1494097 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9244 (List!52633) (InoxSet tuple2!53954))

(assert (=> d!1494097 (= (eq!1049 lt!1860845 (+!2174 lt!1860851 (h!58782 oldBucket!34))) (= (content!9244 (toList!5670 lt!1860845)) (content!9244 (toList!5670 (+!2174 lt!1860851 (h!58782 oldBucket!34))))))))

(declare-fun bs!1093261 () Bool)

(assert (= bs!1093261 d!1494097))

(declare-fun m!5610769 () Bool)

(assert (=> bs!1093261 m!5610769))

(declare-fun m!5610771 () Bool)

(assert (=> bs!1093261 m!5610771))

(assert (=> b!4698707 d!1494097))

(declare-fun d!1494099 () Bool)

(declare-fun e!2931138 () Bool)

(assert (=> d!1494099 e!2931138))

(declare-fun res!1983436 () Bool)

(assert (=> d!1494099 (=> (not res!1983436) (not e!2931138))))

(declare-fun lt!1860911 () ListMap!5033)

(assert (=> d!1494099 (= res!1983436 (contains!15774 lt!1860911 (_1!30271 (h!58782 oldBucket!34))))))

(declare-fun lt!1860910 () List!52633)

(assert (=> d!1494099 (= lt!1860911 (ListMap!5034 lt!1860910))))

(declare-fun lt!1860909 () Unit!125744)

(declare-fun lt!1860908 () Unit!125744)

(assert (=> d!1494099 (= lt!1860909 lt!1860908)))

(declare-datatypes ((Option!12172 0))(
  ( (None!12171) (Some!12171 (v!46646 V!14121)) )
))
(declare-fun getValueByKey!1836 (List!52633 K!13875) Option!12172)

(assert (=> d!1494099 (= (getValueByKey!1836 lt!1860910 (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1028 (List!52633 K!13875 V!14121) Unit!125744)

(assert (=> d!1494099 (= lt!1860908 (lemmaContainsTupThenGetReturnValue!1028 lt!1860910 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!536 (List!52633 K!13875 V!14121) List!52633)

(assert (=> d!1494099 (= lt!1860910 (insertNoDuplicatedKeys!536 (toList!5670 lt!1860851) (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494099 (= (+!2174 lt!1860851 (h!58782 oldBucket!34)) lt!1860911)))

(declare-fun b!4698773 () Bool)

(declare-fun res!1983435 () Bool)

(assert (=> b!4698773 (=> (not res!1983435) (not e!2931138))))

(assert (=> b!4698773 (= res!1983435 (= (getValueByKey!1836 (toList!5670 lt!1860911) (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun b!4698774 () Bool)

(declare-fun contains!15777 (List!52633 tuple2!53954) Bool)

(assert (=> b!4698774 (= e!2931138 (contains!15777 (toList!5670 lt!1860911) (h!58782 oldBucket!34)))))

(assert (= (and d!1494099 res!1983436) b!4698773))

(assert (= (and b!4698773 res!1983435) b!4698774))

(declare-fun m!5610805 () Bool)

(assert (=> d!1494099 m!5610805))

(declare-fun m!5610807 () Bool)

(assert (=> d!1494099 m!5610807))

(declare-fun m!5610809 () Bool)

(assert (=> d!1494099 m!5610809))

(declare-fun m!5610811 () Bool)

(assert (=> d!1494099 m!5610811))

(declare-fun m!5610813 () Bool)

(assert (=> b!4698773 m!5610813))

(declare-fun m!5610815 () Bool)

(assert (=> b!4698774 m!5610815))

(assert (=> b!4698707 d!1494099))

(declare-fun d!1494109 () Bool)

(assert (=> d!1494109 (eq!1049 (+!2174 lt!1860863 (tuple2!53955 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)))) (+!2174 lt!1860851 (tuple2!53955 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun lt!1860928 () Unit!125744)

(declare-fun choose!32816 (ListMap!5033 ListMap!5033 K!13875 V!14121) Unit!125744)

(assert (=> d!1494109 (= lt!1860928 (choose!32816 lt!1860863 lt!1860851 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494109 (eq!1049 lt!1860863 lt!1860851)))

(assert (=> d!1494109 (= (lemmaAddToEqMapsPreservesEq!72 lt!1860863 lt!1860851 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))) lt!1860928)))

(declare-fun bs!1093265 () Bool)

(assert (= bs!1093265 d!1494109))

(declare-fun m!5610847 () Bool)

(assert (=> bs!1093265 m!5610847))

(declare-fun m!5610853 () Bool)

(assert (=> bs!1093265 m!5610853))

(declare-fun m!5610855 () Bool)

(assert (=> bs!1093265 m!5610855))

(assert (=> bs!1093265 m!5610853))

(declare-fun m!5610857 () Bool)

(assert (=> bs!1093265 m!5610857))

(declare-fun m!5610859 () Bool)

(assert (=> bs!1093265 m!5610859))

(assert (=> bs!1093265 m!5610857))

(assert (=> b!4698707 d!1494109))

(declare-fun d!1494119 () Bool)

(declare-fun res!1983455 () Bool)

(declare-fun e!2931153 () Bool)

(assert (=> d!1494119 (=> res!1983455 e!2931153)))

(assert (=> d!1494119 (= res!1983455 (not ((_ is Cons!52509) newBucket!218)))))

(assert (=> d!1494119 (= (noDuplicateKeys!1890 newBucket!218) e!2931153)))

(declare-fun b!4698797 () Bool)

(declare-fun e!2931154 () Bool)

(assert (=> b!4698797 (= e!2931153 e!2931154)))

(declare-fun res!1983456 () Bool)

(assert (=> b!4698797 (=> (not res!1983456) (not e!2931154))))

(assert (=> b!4698797 (= res!1983456 (not (containsKey!3145 (t!359837 newBucket!218) (_1!30271 (h!58782 newBucket!218)))))))

(declare-fun b!4698798 () Bool)

(assert (=> b!4698798 (= e!2931154 (noDuplicateKeys!1890 (t!359837 newBucket!218)))))

(assert (= (and d!1494119 (not res!1983455)) b!4698797))

(assert (= (and b!4698797 res!1983456) b!4698798))

(declare-fun m!5610885 () Bool)

(assert (=> b!4698797 m!5610885))

(declare-fun m!5610887 () Bool)

(assert (=> b!4698798 m!5610887))

(assert (=> b!4698718 d!1494119))

(declare-fun b!4698820 () Bool)

(declare-fun e!2931166 () List!52633)

(declare-fun e!2931165 () List!52633)

(assert (=> b!4698820 (= e!2931166 e!2931165)))

(declare-fun c!803216 () Bool)

(assert (=> b!4698820 (= c!803216 ((_ is Cons!52509) lt!1860850))))

(declare-fun b!4698821 () Bool)

(assert (=> b!4698821 (= e!2931165 (Cons!52509 (h!58782 lt!1860850) (removePairForKey!1485 (t!359837 lt!1860850) key!4653)))))

(declare-fun b!4698822 () Bool)

(assert (=> b!4698822 (= e!2931165 Nil!52509)))

(declare-fun d!1494125 () Bool)

(declare-fun lt!1860943 () List!52633)

(assert (=> d!1494125 (not (containsKey!3145 lt!1860943 key!4653))))

(assert (=> d!1494125 (= lt!1860943 e!2931166)))

(declare-fun c!803217 () Bool)

(assert (=> d!1494125 (= c!803217 (and ((_ is Cons!52509) lt!1860850) (= (_1!30271 (h!58782 lt!1860850)) key!4653)))))

(assert (=> d!1494125 (noDuplicateKeys!1890 lt!1860850)))

(assert (=> d!1494125 (= (removePairForKey!1485 lt!1860850 key!4653) lt!1860943)))

(declare-fun b!4698819 () Bool)

(assert (=> b!4698819 (= e!2931166 (t!359837 lt!1860850))))

(assert (= (and d!1494125 c!803217) b!4698819))

(assert (= (and d!1494125 (not c!803217)) b!4698820))

(assert (= (and b!4698820 c!803216) b!4698821))

(assert (= (and b!4698820 (not c!803216)) b!4698822))

(declare-fun m!5610899 () Bool)

(assert (=> b!4698821 m!5610899))

(declare-fun m!5610901 () Bool)

(assert (=> d!1494125 m!5610901))

(declare-fun m!5610903 () Bool)

(assert (=> d!1494125 m!5610903))

(assert (=> b!4698716 d!1494125))

(declare-fun d!1494133 () Bool)

(assert (=> d!1494133 (= (tail!8697 newBucket!218) (t!359837 newBucket!218))))

(assert (=> b!4698716 d!1494133))

(declare-fun d!1494137 () Bool)

(assert (=> d!1494137 (= (tail!8697 oldBucket!34) (t!359837 oldBucket!34))))

(assert (=> b!4698716 d!1494137))

(declare-fun b!4698924 () Bool)

(assert (=> b!4698924 true))

(declare-fun bs!1093309 () Bool)

(declare-fun b!4698920 () Bool)

(assert (= bs!1093309 (and b!4698920 b!4698924)))

(declare-fun lambda!209620 () Int)

(declare-fun lambda!209619 () Int)

(assert (=> bs!1093309 (= lambda!209620 lambda!209619)))

(assert (=> b!4698920 true))

(declare-fun lambda!209621 () Int)

(declare-fun lt!1861063 () ListMap!5033)

(assert (=> bs!1093309 (= (= lt!1861063 lt!1860871) (= lambda!209621 lambda!209619))))

(assert (=> b!4698920 (= (= lt!1861063 lt!1860871) (= lambda!209621 lambda!209620))))

(assert (=> b!4698920 true))

(declare-fun bs!1093310 () Bool)

(declare-fun d!1494139 () Bool)

(assert (= bs!1093310 (and d!1494139 b!4698924)))

(declare-fun lambda!209622 () Int)

(declare-fun lt!1861075 () ListMap!5033)

(assert (=> bs!1093310 (= (= lt!1861075 lt!1860871) (= lambda!209622 lambda!209619))))

(declare-fun bs!1093311 () Bool)

(assert (= bs!1093311 (and d!1494139 b!4698920)))

(assert (=> bs!1093311 (= (= lt!1861075 lt!1860871) (= lambda!209622 lambda!209620))))

(assert (=> bs!1093311 (= (= lt!1861075 lt!1861063) (= lambda!209622 lambda!209621))))

(assert (=> d!1494139 true))

(declare-fun e!2931235 () Bool)

(assert (=> d!1494139 e!2931235))

(declare-fun res!1983522 () Bool)

(assert (=> d!1494139 (=> (not res!1983522) (not e!2931235))))

(declare-fun forall!11387 (List!52633 Int) Bool)

(assert (=> d!1494139 (= res!1983522 (forall!11387 (Cons!52509 lt!1860855 lt!1860850) lambda!209622))))

(declare-fun e!2931236 () ListMap!5033)

(assert (=> d!1494139 (= lt!1861075 e!2931236)))

(declare-fun c!803234 () Bool)

(assert (=> d!1494139 (= c!803234 ((_ is Nil!52509) (Cons!52509 lt!1860855 lt!1860850)))))

(assert (=> d!1494139 (noDuplicateKeys!1890 (Cons!52509 lt!1860855 lt!1860850))))

(assert (=> d!1494139 (= (addToMapMapFromBucket!1322 (Cons!52509 lt!1860855 lt!1860850) lt!1860871) lt!1861075)))

(assert (=> b!4698920 (= e!2931236 lt!1861063)))

(declare-fun lt!1861079 () ListMap!5033)

(assert (=> b!4698920 (= lt!1861079 (+!2174 lt!1860871 (h!58782 (Cons!52509 lt!1860855 lt!1860850))))))

(assert (=> b!4698920 (= lt!1861063 (addToMapMapFromBucket!1322 (t!359837 (Cons!52509 lt!1860855 lt!1860850)) (+!2174 lt!1860871 (h!58782 (Cons!52509 lt!1860855 lt!1860850)))))))

(declare-fun lt!1861069 () Unit!125744)

(declare-fun call!328467 () Unit!125744)

(assert (=> b!4698920 (= lt!1861069 call!328467)))

(assert (=> b!4698920 (forall!11387 (toList!5670 lt!1860871) lambda!209620)))

(declare-fun lt!1861080 () Unit!125744)

(assert (=> b!4698920 (= lt!1861080 lt!1861069)))

(assert (=> b!4698920 (forall!11387 (toList!5670 lt!1861079) lambda!209621)))

(declare-fun lt!1861071 () Unit!125744)

(declare-fun Unit!125749 () Unit!125744)

(assert (=> b!4698920 (= lt!1861071 Unit!125749)))

(declare-fun call!328469 () Bool)

(assert (=> b!4698920 call!328469))

(declare-fun lt!1861070 () Unit!125744)

(declare-fun Unit!125750 () Unit!125744)

(assert (=> b!4698920 (= lt!1861070 Unit!125750)))

(declare-fun lt!1861064 () Unit!125744)

(declare-fun Unit!125751 () Unit!125744)

(assert (=> b!4698920 (= lt!1861064 Unit!125751)))

(declare-fun lt!1861077 () Unit!125744)

(declare-fun forallContained!3493 (List!52633 Int tuple2!53954) Unit!125744)

(assert (=> b!4698920 (= lt!1861077 (forallContained!3493 (toList!5670 lt!1861079) lambda!209621 (h!58782 (Cons!52509 lt!1860855 lt!1860850))))))

(assert (=> b!4698920 (contains!15774 lt!1861079 (_1!30271 (h!58782 (Cons!52509 lt!1860855 lt!1860850))))))

(declare-fun lt!1861060 () Unit!125744)

(declare-fun Unit!125752 () Unit!125744)

(assert (=> b!4698920 (= lt!1861060 Unit!125752)))

(assert (=> b!4698920 (contains!15774 lt!1861063 (_1!30271 (h!58782 (Cons!52509 lt!1860855 lt!1860850))))))

(declare-fun lt!1861073 () Unit!125744)

(declare-fun Unit!125753 () Unit!125744)

(assert (=> b!4698920 (= lt!1861073 Unit!125753)))

(assert (=> b!4698920 (forall!11387 (Cons!52509 lt!1860855 lt!1860850) lambda!209621)))

(declare-fun lt!1861078 () Unit!125744)

(declare-fun Unit!125754 () Unit!125744)

(assert (=> b!4698920 (= lt!1861078 Unit!125754)))

(declare-fun call!328468 () Bool)

(assert (=> b!4698920 call!328468))

(declare-fun lt!1861062 () Unit!125744)

(declare-fun Unit!125755 () Unit!125744)

(assert (=> b!4698920 (= lt!1861062 Unit!125755)))

(declare-fun lt!1861066 () Unit!125744)

(declare-fun Unit!125756 () Unit!125744)

(assert (=> b!4698920 (= lt!1861066 Unit!125756)))

(declare-fun lt!1861076 () Unit!125744)

(declare-fun addForallContainsKeyThenBeforeAdding!724 (ListMap!5033 ListMap!5033 K!13875 V!14121) Unit!125744)

(assert (=> b!4698920 (= lt!1861076 (addForallContainsKeyThenBeforeAdding!724 lt!1860871 lt!1861063 (_1!30271 (h!58782 (Cons!52509 lt!1860855 lt!1860850))) (_2!30271 (h!58782 (Cons!52509 lt!1860855 lt!1860850)))))))

(assert (=> b!4698920 (forall!11387 (toList!5670 lt!1860871) lambda!209621)))

(declare-fun lt!1861065 () Unit!125744)

(assert (=> b!4698920 (= lt!1861065 lt!1861076)))

(assert (=> b!4698920 (forall!11387 (toList!5670 lt!1860871) lambda!209621)))

(declare-fun lt!1861072 () Unit!125744)

(declare-fun Unit!125757 () Unit!125744)

(assert (=> b!4698920 (= lt!1861072 Unit!125757)))

(declare-fun res!1983521 () Bool)

(assert (=> b!4698920 (= res!1983521 (forall!11387 (Cons!52509 lt!1860855 lt!1860850) lambda!209621))))

(declare-fun e!2931234 () Bool)

(assert (=> b!4698920 (=> (not res!1983521) (not e!2931234))))

(assert (=> b!4698920 e!2931234))

(declare-fun lt!1861067 () Unit!125744)

(declare-fun Unit!125758 () Unit!125744)

(assert (=> b!4698920 (= lt!1861067 Unit!125758)))

(declare-fun b!4698921 () Bool)

(declare-fun invariantList!1438 (List!52633) Bool)

(assert (=> b!4698921 (= e!2931235 (invariantList!1438 (toList!5670 lt!1861075)))))

(declare-fun b!4698922 () Bool)

(declare-fun res!1983523 () Bool)

(assert (=> b!4698922 (=> (not res!1983523) (not e!2931235))))

(assert (=> b!4698922 (= res!1983523 (forall!11387 (toList!5670 lt!1860871) lambda!209622))))

(declare-fun b!4698923 () Bool)

(assert (=> b!4698923 (= e!2931234 (forall!11387 (toList!5670 lt!1860871) lambda!209621))))

(declare-fun bm!328462 () Bool)

(assert (=> bm!328462 (= call!328468 (forall!11387 (ite c!803234 (toList!5670 lt!1860871) (toList!5670 lt!1861079)) (ite c!803234 lambda!209619 lambda!209621)))))

(declare-fun bm!328463 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!725 (ListMap!5033) Unit!125744)

(assert (=> bm!328463 (= call!328467 (lemmaContainsAllItsOwnKeys!725 lt!1860871))))

(assert (=> b!4698924 (= e!2931236 lt!1860871)))

(declare-fun lt!1861074 () Unit!125744)

(assert (=> b!4698924 (= lt!1861074 call!328467)))

(assert (=> b!4698924 call!328468))

(declare-fun lt!1861061 () Unit!125744)

(assert (=> b!4698924 (= lt!1861061 lt!1861074)))

(assert (=> b!4698924 call!328469))

(declare-fun lt!1861068 () Unit!125744)

(declare-fun Unit!125759 () Unit!125744)

(assert (=> b!4698924 (= lt!1861068 Unit!125759)))

(declare-fun bm!328464 () Bool)

(assert (=> bm!328464 (= call!328469 (forall!11387 (ite c!803234 (toList!5670 lt!1860871) (t!359837 (Cons!52509 lt!1860855 lt!1860850))) (ite c!803234 lambda!209619 lambda!209621)))))

(assert (= (and d!1494139 c!803234) b!4698924))

(assert (= (and d!1494139 (not c!803234)) b!4698920))

(assert (= (and b!4698920 res!1983521) b!4698923))

(assert (= (or b!4698924 b!4698920) bm!328463))

(assert (= (or b!4698924 b!4698920) bm!328464))

(assert (= (or b!4698924 b!4698920) bm!328462))

(assert (= (and d!1494139 res!1983522) b!4698922))

(assert (= (and b!4698922 res!1983523) b!4698921))

(declare-fun m!5611107 () Bool)

(assert (=> bm!328464 m!5611107))

(declare-fun m!5611109 () Bool)

(assert (=> bm!328463 m!5611109))

(declare-fun m!5611111 () Bool)

(assert (=> bm!328462 m!5611111))

(declare-fun m!5611113 () Bool)

(assert (=> b!4698922 m!5611113))

(declare-fun m!5611115 () Bool)

(assert (=> b!4698923 m!5611115))

(assert (=> b!4698920 m!5611115))

(declare-fun m!5611117 () Bool)

(assert (=> b!4698920 m!5611117))

(declare-fun m!5611119 () Bool)

(assert (=> b!4698920 m!5611119))

(declare-fun m!5611121 () Bool)

(assert (=> b!4698920 m!5611121))

(declare-fun m!5611123 () Bool)

(assert (=> b!4698920 m!5611123))

(declare-fun m!5611125 () Bool)

(assert (=> b!4698920 m!5611125))

(declare-fun m!5611127 () Bool)

(assert (=> b!4698920 m!5611127))

(assert (=> b!4698920 m!5611115))

(declare-fun m!5611129 () Bool)

(assert (=> b!4698920 m!5611129))

(declare-fun m!5611131 () Bool)

(assert (=> b!4698920 m!5611131))

(declare-fun m!5611133 () Bool)

(assert (=> b!4698920 m!5611133))

(assert (=> b!4698920 m!5611123))

(assert (=> b!4698920 m!5611121))

(declare-fun m!5611135 () Bool)

(assert (=> b!4698921 m!5611135))

(declare-fun m!5611137 () Bool)

(assert (=> d!1494139 m!5611137))

(declare-fun m!5611139 () Bool)

(assert (=> d!1494139 m!5611139))

(assert (=> b!4698717 d!1494139))

(declare-fun bs!1093312 () Bool)

(declare-fun d!1494203 () Bool)

(assert (= bs!1093312 (and d!1494203 start!476276)))

(declare-fun lambda!209625 () Int)

(assert (=> bs!1093312 (= lambda!209625 lambda!209567)))

(declare-fun lt!1861083 () ListMap!5033)

(assert (=> d!1494203 (invariantList!1438 (toList!5670 lt!1861083))))

(declare-fun e!2931239 () ListMap!5033)

(assert (=> d!1494203 (= lt!1861083 e!2931239)))

(declare-fun c!803237 () Bool)

(assert (=> d!1494203 (= c!803237 ((_ is Cons!52510) (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023)))))))

(assert (=> d!1494203 (forall!11385 (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023))) lambda!209625)))

(assert (=> d!1494203 (= (extractMap!1916 (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023)))) lt!1861083)))

(declare-fun b!4698931 () Bool)

(assert (=> b!4698931 (= e!2931239 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023))))) (extractMap!1916 (t!359838 (Cons!52510 lt!1860856 (t!359838 (toList!5669 lm!2023)))))))))

(declare-fun b!4698932 () Bool)

(assert (=> b!4698932 (= e!2931239 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494203 c!803237) b!4698931))

(assert (= (and d!1494203 (not c!803237)) b!4698932))

(declare-fun m!5611141 () Bool)

(assert (=> d!1494203 m!5611141))

(declare-fun m!5611143 () Bool)

(assert (=> d!1494203 m!5611143))

(declare-fun m!5611145 () Bool)

(assert (=> b!4698931 m!5611145))

(assert (=> b!4698931 m!5611145))

(declare-fun m!5611147 () Bool)

(assert (=> b!4698931 m!5611147))

(assert (=> b!4698717 d!1494203))

(declare-fun bm!328467 () Bool)

(declare-fun call!328472 () Bool)

(declare-datatypes ((List!52636 0))(
  ( (Nil!52512) (Cons!52512 (h!58787 K!13875) (t!359842 List!52636)) )
))
(declare-fun e!2931259 () List!52636)

(declare-fun contains!15778 (List!52636 K!13875) Bool)

(assert (=> bm!328467 (= call!328472 (contains!15778 e!2931259 key!4653))))

(declare-fun c!803248 () Bool)

(declare-fun c!803246 () Bool)

(assert (=> bm!328467 (= c!803248 c!803246)))

(declare-fun b!4698955 () Bool)

(declare-fun keys!18777 (ListMap!5033) List!52636)

(assert (=> b!4698955 (= e!2931259 (keys!18777 lt!1860866))))

(declare-fun b!4698956 () Bool)

(declare-fun e!2931255 () Unit!125744)

(declare-fun lt!1861142 () Unit!125744)

(assert (=> b!4698956 (= e!2931255 lt!1861142)))

(declare-fun lt!1861145 () Unit!125744)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1728 (List!52633 K!13875) Unit!125744)

(assert (=> b!4698956 (= lt!1861145 (lemmaContainsKeyImpliesGetValueByKeyDefined!1728 (toList!5670 lt!1860866) key!4653))))

(declare-fun isDefined!9427 (Option!12172) Bool)

(assert (=> b!4698956 (isDefined!9427 (getValueByKey!1836 (toList!5670 lt!1860866) key!4653))))

(declare-fun lt!1861138 () Unit!125744)

(assert (=> b!4698956 (= lt!1861138 lt!1861145)))

(declare-fun lemmaInListThenGetKeysListContains!873 (List!52633 K!13875) Unit!125744)

(assert (=> b!4698956 (= lt!1861142 (lemmaInListThenGetKeysListContains!873 (toList!5670 lt!1860866) key!4653))))

(assert (=> b!4698956 call!328472))

(declare-fun b!4698957 () Bool)

(assert (=> b!4698957 false))

(declare-fun lt!1861144 () Unit!125744)

(declare-fun lt!1861139 () Unit!125744)

(assert (=> b!4698957 (= lt!1861144 lt!1861139)))

(declare-fun containsKey!3148 (List!52633 K!13875) Bool)

(assert (=> b!4698957 (containsKey!3148 (toList!5670 lt!1860866) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!877 (List!52633 K!13875) Unit!125744)

(assert (=> b!4698957 (= lt!1861139 (lemmaInGetKeysListThenContainsKey!877 (toList!5670 lt!1860866) key!4653))))

(declare-fun e!2931258 () Unit!125744)

(declare-fun Unit!125760 () Unit!125744)

(assert (=> b!4698957 (= e!2931258 Unit!125760)))

(declare-fun b!4698958 () Bool)

(declare-fun e!2931257 () Bool)

(assert (=> b!4698958 (= e!2931257 (contains!15778 (keys!18777 lt!1860866) key!4653))))

(declare-fun d!1494205 () Bool)

(declare-fun e!2931254 () Bool)

(assert (=> d!1494205 e!2931254))

(declare-fun res!1983531 () Bool)

(assert (=> d!1494205 (=> res!1983531 e!2931254)))

(declare-fun e!2931256 () Bool)

(assert (=> d!1494205 (= res!1983531 e!2931256)))

(declare-fun res!1983532 () Bool)

(assert (=> d!1494205 (=> (not res!1983532) (not e!2931256))))

(declare-fun lt!1861140 () Bool)

(assert (=> d!1494205 (= res!1983532 (not lt!1861140))))

(declare-fun lt!1861143 () Bool)

(assert (=> d!1494205 (= lt!1861140 lt!1861143)))

(declare-fun lt!1861141 () Unit!125744)

(assert (=> d!1494205 (= lt!1861141 e!2931255)))

(assert (=> d!1494205 (= c!803246 lt!1861143)))

(assert (=> d!1494205 (= lt!1861143 (containsKey!3148 (toList!5670 lt!1860866) key!4653))))

(assert (=> d!1494205 (= (contains!15774 lt!1860866 key!4653) lt!1861140)))

(declare-fun b!4698959 () Bool)

(assert (=> b!4698959 (= e!2931254 e!2931257)))

(declare-fun res!1983530 () Bool)

(assert (=> b!4698959 (=> (not res!1983530) (not e!2931257))))

(assert (=> b!4698959 (= res!1983530 (isDefined!9427 (getValueByKey!1836 (toList!5670 lt!1860866) key!4653)))))

(declare-fun b!4698960 () Bool)

(assert (=> b!4698960 (= e!2931256 (not (contains!15778 (keys!18777 lt!1860866) key!4653)))))

(declare-fun b!4698961 () Bool)

(assert (=> b!4698961 (= e!2931255 e!2931258)))

(declare-fun c!803247 () Bool)

(assert (=> b!4698961 (= c!803247 call!328472)))

(declare-fun b!4698962 () Bool)

(declare-fun getKeysList!878 (List!52633) List!52636)

(assert (=> b!4698962 (= e!2931259 (getKeysList!878 (toList!5670 lt!1860866)))))

(declare-fun b!4698963 () Bool)

(declare-fun Unit!125761 () Unit!125744)

(assert (=> b!4698963 (= e!2931258 Unit!125761)))

(assert (= (and d!1494205 c!803246) b!4698956))

(assert (= (and d!1494205 (not c!803246)) b!4698961))

(assert (= (and b!4698961 c!803247) b!4698957))

(assert (= (and b!4698961 (not c!803247)) b!4698963))

(assert (= (or b!4698956 b!4698961) bm!328467))

(assert (= (and bm!328467 c!803248) b!4698962))

(assert (= (and bm!328467 (not c!803248)) b!4698955))

(assert (= (and d!1494205 res!1983532) b!4698960))

(assert (= (and d!1494205 (not res!1983531)) b!4698959))

(assert (= (and b!4698959 res!1983530) b!4698958))

(declare-fun m!5611149 () Bool)

(assert (=> b!4698955 m!5611149))

(assert (=> b!4698960 m!5611149))

(assert (=> b!4698960 m!5611149))

(declare-fun m!5611151 () Bool)

(assert (=> b!4698960 m!5611151))

(assert (=> b!4698958 m!5611149))

(assert (=> b!4698958 m!5611149))

(assert (=> b!4698958 m!5611151))

(declare-fun m!5611153 () Bool)

(assert (=> b!4698959 m!5611153))

(assert (=> b!4698959 m!5611153))

(declare-fun m!5611155 () Bool)

(assert (=> b!4698959 m!5611155))

(declare-fun m!5611157 () Bool)

(assert (=> b!4698957 m!5611157))

(declare-fun m!5611159 () Bool)

(assert (=> b!4698957 m!5611159))

(assert (=> d!1494205 m!5611157))

(declare-fun m!5611161 () Bool)

(assert (=> b!4698962 m!5611161))

(declare-fun m!5611163 () Bool)

(assert (=> bm!328467 m!5611163))

(declare-fun m!5611165 () Bool)

(assert (=> b!4698956 m!5611165))

(assert (=> b!4698956 m!5611153))

(assert (=> b!4698956 m!5611153))

(assert (=> b!4698956 m!5611155))

(declare-fun m!5611167 () Bool)

(assert (=> b!4698956 m!5611167))

(assert (=> b!4698717 d!1494205))

(declare-fun d!1494207 () Bool)

(assert (=> d!1494207 (= (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860855 lt!1860850) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1860855)) (= (content!9244 (toList!5670 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860855 lt!1860850) lt!1860871))) (content!9244 (toList!5670 (+!2174 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1860855)))))))

(declare-fun bs!1093313 () Bool)

(assert (= bs!1093313 d!1494207))

(declare-fun m!5611169 () Bool)

(assert (=> bs!1093313 m!5611169))

(declare-fun m!5611171 () Bool)

(assert (=> bs!1093313 m!5611171))

(assert (=> b!4698717 d!1494207))

(declare-fun bs!1093316 () Bool)

(declare-fun d!1494209 () Bool)

(assert (= bs!1093316 (and d!1494209 start!476276)))

(declare-fun lambda!209658 () Int)

(assert (=> bs!1093316 (= lambda!209658 lambda!209567)))

(declare-fun bs!1093318 () Bool)

(assert (= bs!1093318 (and d!1494209 d!1494203)))

(assert (=> bs!1093318 (= lambda!209658 lambda!209625)))

(assert (=> d!1494209 (contains!15774 (extractMap!1916 (toList!5669 lt!1860865)) key!4653)))

(declare-fun lt!1861173 () Unit!125744)

(declare-fun choose!32818 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> d!1494209 (= lt!1861173 (choose!32818 lt!1860865 key!4653 hashF!1323))))

(assert (=> d!1494209 (forall!11385 (toList!5669 lt!1860865) lambda!209658)))

(assert (=> d!1494209 (= (lemmaListContainsThenExtractedMapContains!482 lt!1860865 key!4653 hashF!1323) lt!1861173)))

(declare-fun bs!1093321 () Bool)

(assert (= bs!1093321 d!1494209))

(declare-fun m!5611173 () Bool)

(assert (=> bs!1093321 m!5611173))

(assert (=> bs!1093321 m!5611173))

(declare-fun m!5611175 () Bool)

(assert (=> bs!1093321 m!5611175))

(declare-fun m!5611177 () Bool)

(assert (=> bs!1093321 m!5611177))

(declare-fun m!5611179 () Bool)

(assert (=> bs!1093321 m!5611179))

(assert (=> b!4698717 d!1494209))

(declare-fun bs!1093322 () Bool)

(declare-fun b!4698981 () Bool)

(assert (= bs!1093322 (and b!4698981 b!4698924)))

(declare-fun lambda!209660 () Int)

(assert (=> bs!1093322 (= lambda!209660 lambda!209619)))

(declare-fun bs!1093323 () Bool)

(assert (= bs!1093323 (and b!4698981 b!4698920)))

(assert (=> bs!1093323 (= lambda!209660 lambda!209620)))

(assert (=> bs!1093323 (= (= lt!1860871 lt!1861063) (= lambda!209660 lambda!209621))))

(declare-fun bs!1093324 () Bool)

(assert (= bs!1093324 (and b!4698981 d!1494139)))

(assert (=> bs!1093324 (= (= lt!1860871 lt!1861075) (= lambda!209660 lambda!209622))))

(assert (=> b!4698981 true))

(declare-fun bs!1093325 () Bool)

(declare-fun b!4698977 () Bool)

(assert (= bs!1093325 (and b!4698977 d!1494139)))

(declare-fun lambda!209661 () Int)

(assert (=> bs!1093325 (= (= lt!1860871 lt!1861075) (= lambda!209661 lambda!209622))))

(declare-fun bs!1093326 () Bool)

(assert (= bs!1093326 (and b!4698977 b!4698920)))

(assert (=> bs!1093326 (= (= lt!1860871 lt!1861063) (= lambda!209661 lambda!209621))))

(declare-fun bs!1093327 () Bool)

(assert (= bs!1093327 (and b!4698977 b!4698981)))

(assert (=> bs!1093327 (= lambda!209661 lambda!209660)))

(assert (=> bs!1093326 (= lambda!209661 lambda!209620)))

(declare-fun bs!1093329 () Bool)

(assert (= bs!1093329 (and b!4698977 b!4698924)))

(assert (=> bs!1093329 (= lambda!209661 lambda!209619)))

(assert (=> b!4698977 true))

(declare-fun lambda!209663 () Int)

(declare-fun lt!1861177 () ListMap!5033)

(assert (=> bs!1093325 (= (= lt!1861177 lt!1861075) (= lambda!209663 lambda!209622))))

(assert (=> b!4698977 (= (= lt!1861177 lt!1860871) (= lambda!209663 lambda!209661))))

(assert (=> bs!1093326 (= (= lt!1861177 lt!1861063) (= lambda!209663 lambda!209621))))

(assert (=> bs!1093327 (= (= lt!1861177 lt!1860871) (= lambda!209663 lambda!209660))))

(assert (=> bs!1093326 (= (= lt!1861177 lt!1860871) (= lambda!209663 lambda!209620))))

(assert (=> bs!1093329 (= (= lt!1861177 lt!1860871) (= lambda!209663 lambda!209619))))

(assert (=> b!4698977 true))

(declare-fun bs!1093333 () Bool)

(declare-fun d!1494211 () Bool)

(assert (= bs!1093333 (and d!1494211 d!1494139)))

(declare-fun lt!1861189 () ListMap!5033)

(declare-fun lambda!209664 () Int)

(assert (=> bs!1093333 (= (= lt!1861189 lt!1861075) (= lambda!209664 lambda!209622))))

(declare-fun bs!1093334 () Bool)

(assert (= bs!1093334 (and d!1494211 b!4698977)))

(assert (=> bs!1093334 (= (= lt!1861189 lt!1860871) (= lambda!209664 lambda!209661))))

(declare-fun bs!1093335 () Bool)

(assert (= bs!1093335 (and d!1494211 b!4698920)))

(assert (=> bs!1093335 (= (= lt!1861189 lt!1861063) (= lambda!209664 lambda!209621))))

(declare-fun bs!1093336 () Bool)

(assert (= bs!1093336 (and d!1494211 b!4698981)))

(assert (=> bs!1093336 (= (= lt!1861189 lt!1860871) (= lambda!209664 lambda!209660))))

(assert (=> bs!1093335 (= (= lt!1861189 lt!1860871) (= lambda!209664 lambda!209620))))

(assert (=> bs!1093334 (= (= lt!1861189 lt!1861177) (= lambda!209664 lambda!209663))))

(declare-fun bs!1093337 () Bool)

(assert (= bs!1093337 (and d!1494211 b!4698924)))

(assert (=> bs!1093337 (= (= lt!1861189 lt!1860871) (= lambda!209664 lambda!209619))))

(assert (=> d!1494211 true))

(declare-fun e!2931268 () Bool)

(assert (=> d!1494211 e!2931268))

(declare-fun res!1983543 () Bool)

(assert (=> d!1494211 (=> (not res!1983543) (not e!2931268))))

(assert (=> d!1494211 (= res!1983543 (forall!11387 lt!1860843 lambda!209664))))

(declare-fun e!2931269 () ListMap!5033)

(assert (=> d!1494211 (= lt!1861189 e!2931269)))

(declare-fun c!803250 () Bool)

(assert (=> d!1494211 (= c!803250 ((_ is Nil!52509) lt!1860843))))

(assert (=> d!1494211 (noDuplicateKeys!1890 lt!1860843)))

(assert (=> d!1494211 (= (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1861189)))

(assert (=> b!4698977 (= e!2931269 lt!1861177)))

(declare-fun lt!1861193 () ListMap!5033)

(assert (=> b!4698977 (= lt!1861193 (+!2174 lt!1860871 (h!58782 lt!1860843)))))

(assert (=> b!4698977 (= lt!1861177 (addToMapMapFromBucket!1322 (t!359837 lt!1860843) (+!2174 lt!1860871 (h!58782 lt!1860843))))))

(declare-fun lt!1861183 () Unit!125744)

(declare-fun call!328482 () Unit!125744)

(assert (=> b!4698977 (= lt!1861183 call!328482)))

(assert (=> b!4698977 (forall!11387 (toList!5670 lt!1860871) lambda!209661)))

(declare-fun lt!1861194 () Unit!125744)

(assert (=> b!4698977 (= lt!1861194 lt!1861183)))

(assert (=> b!4698977 (forall!11387 (toList!5670 lt!1861193) lambda!209663)))

(declare-fun lt!1861185 () Unit!125744)

(declare-fun Unit!125762 () Unit!125744)

(assert (=> b!4698977 (= lt!1861185 Unit!125762)))

(declare-fun call!328484 () Bool)

(assert (=> b!4698977 call!328484))

(declare-fun lt!1861184 () Unit!125744)

(declare-fun Unit!125763 () Unit!125744)

(assert (=> b!4698977 (= lt!1861184 Unit!125763)))

(declare-fun lt!1861178 () Unit!125744)

(declare-fun Unit!125764 () Unit!125744)

(assert (=> b!4698977 (= lt!1861178 Unit!125764)))

(declare-fun lt!1861191 () Unit!125744)

(assert (=> b!4698977 (= lt!1861191 (forallContained!3493 (toList!5670 lt!1861193) lambda!209663 (h!58782 lt!1860843)))))

(assert (=> b!4698977 (contains!15774 lt!1861193 (_1!30271 (h!58782 lt!1860843)))))

(declare-fun lt!1861174 () Unit!125744)

(declare-fun Unit!125765 () Unit!125744)

(assert (=> b!4698977 (= lt!1861174 Unit!125765)))

(assert (=> b!4698977 (contains!15774 lt!1861177 (_1!30271 (h!58782 lt!1860843)))))

(declare-fun lt!1861187 () Unit!125744)

(declare-fun Unit!125766 () Unit!125744)

(assert (=> b!4698977 (= lt!1861187 Unit!125766)))

(assert (=> b!4698977 (forall!11387 lt!1860843 lambda!209663)))

(declare-fun lt!1861192 () Unit!125744)

(declare-fun Unit!125767 () Unit!125744)

(assert (=> b!4698977 (= lt!1861192 Unit!125767)))

(declare-fun call!328483 () Bool)

(assert (=> b!4698977 call!328483))

(declare-fun lt!1861176 () Unit!125744)

(declare-fun Unit!125768 () Unit!125744)

(assert (=> b!4698977 (= lt!1861176 Unit!125768)))

(declare-fun lt!1861180 () Unit!125744)

(declare-fun Unit!125769 () Unit!125744)

(assert (=> b!4698977 (= lt!1861180 Unit!125769)))

(declare-fun lt!1861190 () Unit!125744)

(assert (=> b!4698977 (= lt!1861190 (addForallContainsKeyThenBeforeAdding!724 lt!1860871 lt!1861177 (_1!30271 (h!58782 lt!1860843)) (_2!30271 (h!58782 lt!1860843))))))

(assert (=> b!4698977 (forall!11387 (toList!5670 lt!1860871) lambda!209663)))

(declare-fun lt!1861179 () Unit!125744)

(assert (=> b!4698977 (= lt!1861179 lt!1861190)))

(assert (=> b!4698977 (forall!11387 (toList!5670 lt!1860871) lambda!209663)))

(declare-fun lt!1861186 () Unit!125744)

(declare-fun Unit!125770 () Unit!125744)

(assert (=> b!4698977 (= lt!1861186 Unit!125770)))

(declare-fun res!1983542 () Bool)

(assert (=> b!4698977 (= res!1983542 (forall!11387 lt!1860843 lambda!209663))))

(declare-fun e!2931267 () Bool)

(assert (=> b!4698977 (=> (not res!1983542) (not e!2931267))))

(assert (=> b!4698977 e!2931267))

(declare-fun lt!1861181 () Unit!125744)

(declare-fun Unit!125771 () Unit!125744)

(assert (=> b!4698977 (= lt!1861181 Unit!125771)))

(declare-fun b!4698978 () Bool)

(assert (=> b!4698978 (= e!2931268 (invariantList!1438 (toList!5670 lt!1861189)))))

(declare-fun b!4698979 () Bool)

(declare-fun res!1983544 () Bool)

(assert (=> b!4698979 (=> (not res!1983544) (not e!2931268))))

(assert (=> b!4698979 (= res!1983544 (forall!11387 (toList!5670 lt!1860871) lambda!209664))))

(declare-fun b!4698980 () Bool)

(assert (=> b!4698980 (= e!2931267 (forall!11387 (toList!5670 lt!1860871) lambda!209663))))

(declare-fun bm!328477 () Bool)

(assert (=> bm!328477 (= call!328483 (forall!11387 (ite c!803250 (toList!5670 lt!1860871) (toList!5670 lt!1861193)) (ite c!803250 lambda!209660 lambda!209663)))))

(declare-fun bm!328478 () Bool)

(assert (=> bm!328478 (= call!328482 (lemmaContainsAllItsOwnKeys!725 lt!1860871))))

(assert (=> b!4698981 (= e!2931269 lt!1860871)))

(declare-fun lt!1861188 () Unit!125744)

(assert (=> b!4698981 (= lt!1861188 call!328482)))

(assert (=> b!4698981 call!328483))

(declare-fun lt!1861175 () Unit!125744)

(assert (=> b!4698981 (= lt!1861175 lt!1861188)))

(assert (=> b!4698981 call!328484))

(declare-fun lt!1861182 () Unit!125744)

(declare-fun Unit!125772 () Unit!125744)

(assert (=> b!4698981 (= lt!1861182 Unit!125772)))

(declare-fun bm!328479 () Bool)

(assert (=> bm!328479 (= call!328484 (forall!11387 (ite c!803250 (toList!5670 lt!1860871) (t!359837 lt!1860843)) (ite c!803250 lambda!209660 lambda!209663)))))

(assert (= (and d!1494211 c!803250) b!4698981))

(assert (= (and d!1494211 (not c!803250)) b!4698977))

(assert (= (and b!4698977 res!1983542) b!4698980))

(assert (= (or b!4698981 b!4698977) bm!328478))

(assert (= (or b!4698981 b!4698977) bm!328479))

(assert (= (or b!4698981 b!4698977) bm!328477))

(assert (= (and d!1494211 res!1983543) b!4698979))

(assert (= (and b!4698979 res!1983544) b!4698978))

(declare-fun m!5611215 () Bool)

(assert (=> bm!328479 m!5611215))

(assert (=> bm!328478 m!5611109))

(declare-fun m!5611217 () Bool)

(assert (=> bm!328477 m!5611217))

(declare-fun m!5611219 () Bool)

(assert (=> b!4698979 m!5611219))

(declare-fun m!5611221 () Bool)

(assert (=> b!4698980 m!5611221))

(assert (=> b!4698977 m!5611221))

(declare-fun m!5611225 () Bool)

(assert (=> b!4698977 m!5611225))

(declare-fun m!5611229 () Bool)

(assert (=> b!4698977 m!5611229))

(declare-fun m!5611232 () Bool)

(assert (=> b!4698977 m!5611232))

(declare-fun m!5611235 () Bool)

(assert (=> b!4698977 m!5611235))

(declare-fun m!5611237 () Bool)

(assert (=> b!4698977 m!5611237))

(declare-fun m!5611241 () Bool)

(assert (=> b!4698977 m!5611241))

(assert (=> b!4698977 m!5611221))

(declare-fun m!5611243 () Bool)

(assert (=> b!4698977 m!5611243))

(declare-fun m!5611245 () Bool)

(assert (=> b!4698977 m!5611245))

(declare-fun m!5611247 () Bool)

(assert (=> b!4698977 m!5611247))

(assert (=> b!4698977 m!5611235))

(assert (=> b!4698977 m!5611232))

(declare-fun m!5611249 () Bool)

(assert (=> b!4698978 m!5611249))

(declare-fun m!5611251 () Bool)

(assert (=> d!1494211 m!5611251))

(declare-fun m!5611253 () Bool)

(assert (=> d!1494211 m!5611253))

(assert (=> b!4698717 d!1494211))

(declare-fun d!1494217 () Bool)

(declare-fun e!2931271 () Bool)

(assert (=> d!1494217 e!2931271))

(declare-fun res!1983546 () Bool)

(assert (=> d!1494217 (=> (not res!1983546) (not e!2931271))))

(declare-fun lt!1861199 () ListMap!5033)

(assert (=> d!1494217 (= res!1983546 (contains!15774 lt!1861199 (_1!30271 lt!1860868)))))

(declare-fun lt!1861198 () List!52633)

(assert (=> d!1494217 (= lt!1861199 (ListMap!5034 lt!1861198))))

(declare-fun lt!1861197 () Unit!125744)

(declare-fun lt!1861196 () Unit!125744)

(assert (=> d!1494217 (= lt!1861197 lt!1861196)))

(assert (=> d!1494217 (= (getValueByKey!1836 lt!1861198 (_1!30271 lt!1860868)) (Some!12171 (_2!30271 lt!1860868)))))

(assert (=> d!1494217 (= lt!1861196 (lemmaContainsTupThenGetReturnValue!1028 lt!1861198 (_1!30271 lt!1860868) (_2!30271 lt!1860868)))))

(assert (=> d!1494217 (= lt!1861198 (insertNoDuplicatedKeys!536 (toList!5670 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871)) (_1!30271 lt!1860868) (_2!30271 lt!1860868)))))

(assert (=> d!1494217 (= (+!2174 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1860868) lt!1861199)))

(declare-fun b!4698984 () Bool)

(declare-fun res!1983545 () Bool)

(assert (=> b!4698984 (=> (not res!1983545) (not e!2931271))))

(assert (=> b!4698984 (= res!1983545 (= (getValueByKey!1836 (toList!5670 lt!1861199) (_1!30271 lt!1860868)) (Some!12171 (_2!30271 lt!1860868))))))

(declare-fun b!4698985 () Bool)

(assert (=> b!4698985 (= e!2931271 (contains!15777 (toList!5670 lt!1861199) lt!1860868))))

(assert (= (and d!1494217 res!1983546) b!4698984))

(assert (= (and b!4698984 res!1983545) b!4698985))

(declare-fun m!5611255 () Bool)

(assert (=> d!1494217 m!5611255))

(declare-fun m!5611257 () Bool)

(assert (=> d!1494217 m!5611257))

(declare-fun m!5611261 () Bool)

(assert (=> d!1494217 m!5611261))

(declare-fun m!5611263 () Bool)

(assert (=> d!1494217 m!5611263))

(declare-fun m!5611265 () Bool)

(assert (=> b!4698984 m!5611265))

(declare-fun m!5611267 () Bool)

(assert (=> b!4698985 m!5611267))

(assert (=> b!4698717 d!1494217))

(declare-fun bs!1093347 () Bool)

(declare-fun d!1494221 () Bool)

(assert (= bs!1093347 (and d!1494221 start!476276)))

(declare-fun lambda!209666 () Int)

(assert (=> bs!1093347 (= lambda!209666 lambda!209567)))

(declare-fun bs!1093348 () Bool)

(assert (= bs!1093348 (and d!1494221 d!1494203)))

(assert (=> bs!1093348 (= lambda!209666 lambda!209625)))

(declare-fun bs!1093349 () Bool)

(assert (= bs!1093349 (and d!1494221 d!1494209)))

(assert (=> bs!1093349 (= lambda!209666 lambda!209658)))

(declare-fun lt!1861208 () ListMap!5033)

(assert (=> d!1494221 (invariantList!1438 (toList!5670 lt!1861208))))

(declare-fun e!2931278 () ListMap!5033)

(assert (=> d!1494221 (= lt!1861208 e!2931278)))

(declare-fun c!803255 () Bool)

(assert (=> d!1494221 (= c!803255 ((_ is Cons!52510) lt!1860859))))

(assert (=> d!1494221 (forall!11385 lt!1860859 lambda!209666)))

(assert (=> d!1494221 (= (extractMap!1916 lt!1860859) lt!1861208)))

(declare-fun b!4698994 () Bool)

(assert (=> b!4698994 (= e!2931278 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 lt!1860859)) (extractMap!1916 (t!359838 lt!1860859))))))

(declare-fun b!4698995 () Bool)

(assert (=> b!4698995 (= e!2931278 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494221 c!803255) b!4698994))

(assert (= (and d!1494221 (not c!803255)) b!4698995))

(declare-fun m!5611269 () Bool)

(assert (=> d!1494221 m!5611269))

(declare-fun m!5611271 () Bool)

(assert (=> d!1494221 m!5611271))

(declare-fun m!5611275 () Bool)

(assert (=> b!4698994 m!5611275))

(assert (=> b!4698994 m!5611275))

(declare-fun m!5611283 () Bool)

(assert (=> b!4698994 m!5611283))

(assert (=> b!4698717 d!1494221))

(declare-fun bs!1093350 () Bool)

(declare-fun d!1494223 () Bool)

(assert (= bs!1093350 (and d!1494223 start!476276)))

(declare-fun lambda!209667 () Int)

(assert (=> bs!1093350 (= lambda!209667 lambda!209567)))

(declare-fun bs!1093351 () Bool)

(assert (= bs!1093351 (and d!1494223 d!1494203)))

(assert (=> bs!1093351 (= lambda!209667 lambda!209625)))

(declare-fun bs!1093352 () Bool)

(assert (= bs!1093352 (and d!1494223 d!1494209)))

(assert (=> bs!1093352 (= lambda!209667 lambda!209658)))

(declare-fun bs!1093353 () Bool)

(assert (= bs!1093353 (and d!1494223 d!1494221)))

(assert (=> bs!1093353 (= lambda!209667 lambda!209666)))

(declare-fun lt!1861209 () ListMap!5033)

(assert (=> d!1494223 (invariantList!1438 (toList!5670 lt!1861209))))

(declare-fun e!2931279 () ListMap!5033)

(assert (=> d!1494223 (= lt!1861209 e!2931279)))

(declare-fun c!803256 () Bool)

(assert (=> d!1494223 (= c!803256 ((_ is Cons!52510) (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023)))))))

(assert (=> d!1494223 (forall!11385 (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023))) lambda!209667)))

(assert (=> d!1494223 (= (extractMap!1916 (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023)))) lt!1861209)))

(declare-fun b!4698997 () Bool)

(assert (=> b!4698997 (= e!2931279 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023))))) (extractMap!1916 (t!359838 (Cons!52510 (tuple2!53957 hash!405 lt!1860850) (t!359838 (toList!5669 lm!2023)))))))))

(declare-fun b!4698998 () Bool)

(assert (=> b!4698998 (= e!2931279 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494223 c!803256) b!4698997))

(assert (= (and d!1494223 (not c!803256)) b!4698998))

(declare-fun m!5611295 () Bool)

(assert (=> d!1494223 m!5611295))

(declare-fun m!5611297 () Bool)

(assert (=> d!1494223 m!5611297))

(declare-fun m!5611299 () Bool)

(assert (=> b!4698997 m!5611299))

(assert (=> b!4698997 m!5611299))

(declare-fun m!5611301 () Bool)

(assert (=> b!4698997 m!5611301))

(assert (=> b!4698717 d!1494223))

(declare-fun d!1494227 () Bool)

(assert (=> d!1494227 (= (eq!1049 lt!1860857 (+!2174 lt!1860840 (h!58782 oldBucket!34))) (= (content!9244 (toList!5670 lt!1860857)) (content!9244 (toList!5670 (+!2174 lt!1860840 (h!58782 oldBucket!34))))))))

(declare-fun bs!1093359 () Bool)

(assert (= bs!1093359 d!1494227))

(declare-fun m!5611303 () Bool)

(assert (=> bs!1093359 m!5611303))

(declare-fun m!5611305 () Bool)

(assert (=> bs!1093359 m!5611305))

(assert (=> b!4698717 d!1494227))

(declare-fun d!1494229 () Bool)

(assert (=> d!1494229 (= (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860868 lt!1860843) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1860868)) (= (content!9244 (toList!5670 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860868 lt!1860843) lt!1860871))) (content!9244 (toList!5670 (+!2174 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1860868)))))))

(declare-fun bs!1093360 () Bool)

(assert (= bs!1093360 d!1494229))

(declare-fun m!5611307 () Bool)

(assert (=> bs!1093360 m!5611307))

(declare-fun m!5611309 () Bool)

(assert (=> bs!1093360 m!5611309))

(assert (=> b!4698717 d!1494229))

(declare-fun d!1494231 () Bool)

(declare-fun e!2931283 () Bool)

(assert (=> d!1494231 e!2931283))

(declare-fun res!1983554 () Bool)

(assert (=> d!1494231 (=> (not res!1983554) (not e!2931283))))

(declare-fun lt!1861234 () ListMap!5033)

(assert (=> d!1494231 (= res!1983554 (contains!15774 lt!1861234 (_1!30271 lt!1860855)))))

(declare-fun lt!1861233 () List!52633)

(assert (=> d!1494231 (= lt!1861234 (ListMap!5034 lt!1861233))))

(declare-fun lt!1861232 () Unit!125744)

(declare-fun lt!1861231 () Unit!125744)

(assert (=> d!1494231 (= lt!1861232 lt!1861231)))

(assert (=> d!1494231 (= (getValueByKey!1836 lt!1861233 (_1!30271 lt!1860855)) (Some!12171 (_2!30271 lt!1860855)))))

(assert (=> d!1494231 (= lt!1861231 (lemmaContainsTupThenGetReturnValue!1028 lt!1861233 (_1!30271 lt!1860855) (_2!30271 lt!1860855)))))

(assert (=> d!1494231 (= lt!1861233 (insertNoDuplicatedKeys!536 (toList!5670 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871)) (_1!30271 lt!1860855) (_2!30271 lt!1860855)))))

(assert (=> d!1494231 (= (+!2174 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1860855) lt!1861234)))

(declare-fun b!4699004 () Bool)

(declare-fun res!1983553 () Bool)

(assert (=> b!4699004 (=> (not res!1983553) (not e!2931283))))

(assert (=> b!4699004 (= res!1983553 (= (getValueByKey!1836 (toList!5670 lt!1861234) (_1!30271 lt!1860855)) (Some!12171 (_2!30271 lt!1860855))))))

(declare-fun b!4699005 () Bool)

(assert (=> b!4699005 (= e!2931283 (contains!15777 (toList!5670 lt!1861234) lt!1860855))))

(assert (= (and d!1494231 res!1983554) b!4699004))

(assert (= (and b!4699004 res!1983553) b!4699005))

(declare-fun m!5611311 () Bool)

(assert (=> d!1494231 m!5611311))

(declare-fun m!5611313 () Bool)

(assert (=> d!1494231 m!5611313))

(declare-fun m!5611315 () Bool)

(assert (=> d!1494231 m!5611315))

(declare-fun m!5611317 () Bool)

(assert (=> d!1494231 m!5611317))

(declare-fun m!5611319 () Bool)

(assert (=> b!4699004 m!5611319))

(declare-fun m!5611321 () Bool)

(assert (=> b!4699005 m!5611321))

(assert (=> b!4698717 d!1494231))

(declare-fun d!1494233 () Bool)

(assert (=> d!1494233 (= (head!10043 oldBucket!34) (h!58782 oldBucket!34))))

(assert (=> b!4698717 d!1494233))

(declare-fun d!1494235 () Bool)

(assert (=> d!1494235 (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860855 lt!1860850) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1860855))))

(declare-fun lt!1861237 () Unit!125744)

(declare-fun choose!32820 (tuple2!53954 List!52633 ListMap!5033) Unit!125744)

(assert (=> d!1494235 (= lt!1861237 (choose!32820 lt!1860855 lt!1860850 lt!1860871))))

(assert (=> d!1494235 (noDuplicateKeys!1890 lt!1860850)))

(assert (=> d!1494235 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!298 lt!1860855 lt!1860850 lt!1860871) lt!1861237)))

(declare-fun bs!1093374 () Bool)

(assert (= bs!1093374 d!1494235))

(assert (=> bs!1093374 m!5610725))

(assert (=> bs!1093374 m!5610727))

(assert (=> bs!1093374 m!5610903))

(assert (=> bs!1093374 m!5610743))

(assert (=> bs!1093374 m!5610725))

(assert (=> bs!1093374 m!5610743))

(assert (=> bs!1093374 m!5610727))

(assert (=> bs!1093374 m!5610749))

(declare-fun m!5611355 () Bool)

(assert (=> bs!1093374 m!5611355))

(assert (=> b!4698717 d!1494235))

(declare-fun d!1494239 () Bool)

(assert (=> d!1494239 (= (head!10043 newBucket!218) (h!58782 newBucket!218))))

(assert (=> b!4698717 d!1494239))

(declare-fun d!1494241 () Bool)

(assert (=> d!1494241 (eq!1049 (addToMapMapFromBucket!1322 (Cons!52509 lt!1860868 lt!1860843) lt!1860871) (+!2174 (addToMapMapFromBucket!1322 lt!1860843 lt!1860871) lt!1860868))))

(declare-fun lt!1861238 () Unit!125744)

(assert (=> d!1494241 (= lt!1861238 (choose!32820 lt!1860868 lt!1860843 lt!1860871))))

(assert (=> d!1494241 (noDuplicateKeys!1890 lt!1860843)))

(assert (=> d!1494241 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!298 lt!1860868 lt!1860843 lt!1860871) lt!1861238)))

(declare-fun bs!1093375 () Bool)

(assert (= bs!1093375 d!1494241))

(assert (=> bs!1093375 m!5610719))

(assert (=> bs!1093375 m!5610733))

(assert (=> bs!1093375 m!5611253))

(assert (=> bs!1093375 m!5610715))

(assert (=> bs!1093375 m!5610719))

(assert (=> bs!1093375 m!5610715))

(assert (=> bs!1093375 m!5610733))

(assert (=> bs!1093375 m!5610739))

(declare-fun m!5611357 () Bool)

(assert (=> bs!1093375 m!5611357))

(assert (=> b!4698717 d!1494241))

(declare-fun d!1494243 () Bool)

(declare-fun e!2931284 () Bool)

(assert (=> d!1494243 e!2931284))

(declare-fun res!1983556 () Bool)

(assert (=> d!1494243 (=> (not res!1983556) (not e!2931284))))

(declare-fun lt!1861242 () ListMap!5033)

(assert (=> d!1494243 (= res!1983556 (contains!15774 lt!1861242 (_1!30271 (h!58782 oldBucket!34))))))

(declare-fun lt!1861241 () List!52633)

(assert (=> d!1494243 (= lt!1861242 (ListMap!5034 lt!1861241))))

(declare-fun lt!1861240 () Unit!125744)

(declare-fun lt!1861239 () Unit!125744)

(assert (=> d!1494243 (= lt!1861240 lt!1861239)))

(assert (=> d!1494243 (= (getValueByKey!1836 lt!1861241 (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494243 (= lt!1861239 (lemmaContainsTupThenGetReturnValue!1028 lt!1861241 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494243 (= lt!1861241 (insertNoDuplicatedKeys!536 (toList!5670 lt!1860840) (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494243 (= (+!2174 lt!1860840 (h!58782 oldBucket!34)) lt!1861242)))

(declare-fun b!4699006 () Bool)

(declare-fun res!1983555 () Bool)

(assert (=> b!4699006 (=> (not res!1983555) (not e!2931284))))

(assert (=> b!4699006 (= res!1983555 (= (getValueByKey!1836 (toList!5670 lt!1861242) (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun b!4699007 () Bool)

(assert (=> b!4699007 (= e!2931284 (contains!15777 (toList!5670 lt!1861242) (h!58782 oldBucket!34)))))

(assert (= (and d!1494243 res!1983556) b!4699006))

(assert (= (and b!4699006 res!1983555) b!4699007))

(declare-fun m!5611359 () Bool)

(assert (=> d!1494243 m!5611359))

(declare-fun m!5611361 () Bool)

(assert (=> d!1494243 m!5611361))

(declare-fun m!5611363 () Bool)

(assert (=> d!1494243 m!5611363))

(declare-fun m!5611365 () Bool)

(assert (=> d!1494243 m!5611365))

(declare-fun m!5611367 () Bool)

(assert (=> b!4699006 m!5611367))

(declare-fun m!5611369 () Bool)

(assert (=> b!4699007 m!5611369))

(assert (=> b!4698717 d!1494243))

(declare-fun bs!1093376 () Bool)

(declare-fun b!4699012 () Bool)

(assert (= bs!1093376 (and b!4699012 d!1494139)))

(declare-fun lambda!209672 () Int)

(assert (=> bs!1093376 (= (= lt!1860871 lt!1861075) (= lambda!209672 lambda!209622))))

(declare-fun bs!1093377 () Bool)

(assert (= bs!1093377 (and b!4699012 b!4698977)))

(assert (=> bs!1093377 (= lambda!209672 lambda!209661)))

(declare-fun bs!1093378 () Bool)

(assert (= bs!1093378 (and b!4699012 b!4698920)))

(assert (=> bs!1093378 (= (= lt!1860871 lt!1861063) (= lambda!209672 lambda!209621))))

(declare-fun bs!1093379 () Bool)

(assert (= bs!1093379 (and b!4699012 b!4698981)))

(assert (=> bs!1093379 (= lambda!209672 lambda!209660)))

(declare-fun bs!1093380 () Bool)

(assert (= bs!1093380 (and b!4699012 d!1494211)))

(assert (=> bs!1093380 (= (= lt!1860871 lt!1861189) (= lambda!209672 lambda!209664))))

(assert (=> bs!1093378 (= lambda!209672 lambda!209620)))

(assert (=> bs!1093377 (= (= lt!1860871 lt!1861177) (= lambda!209672 lambda!209663))))

(declare-fun bs!1093381 () Bool)

(assert (= bs!1093381 (and b!4699012 b!4698924)))

(assert (=> bs!1093381 (= lambda!209672 lambda!209619)))

(assert (=> b!4699012 true))

(declare-fun bs!1093382 () Bool)

(declare-fun b!4699008 () Bool)

(assert (= bs!1093382 (and b!4699008 d!1494139)))

(declare-fun lambda!209673 () Int)

(assert (=> bs!1093382 (= (= lt!1860871 lt!1861075) (= lambda!209673 lambda!209622))))

(declare-fun bs!1093383 () Bool)

(assert (= bs!1093383 (and b!4699008 b!4698977)))

(assert (=> bs!1093383 (= lambda!209673 lambda!209661)))

(declare-fun bs!1093384 () Bool)

(assert (= bs!1093384 (and b!4699008 b!4698920)))

(assert (=> bs!1093384 (= (= lt!1860871 lt!1861063) (= lambda!209673 lambda!209621))))

(declare-fun bs!1093385 () Bool)

(assert (= bs!1093385 (and b!4699008 b!4698981)))

(assert (=> bs!1093385 (= lambda!209673 lambda!209660)))

(declare-fun bs!1093386 () Bool)

(assert (= bs!1093386 (and b!4699008 b!4699012)))

(assert (=> bs!1093386 (= lambda!209673 lambda!209672)))

(declare-fun bs!1093387 () Bool)

(assert (= bs!1093387 (and b!4699008 d!1494211)))

(assert (=> bs!1093387 (= (= lt!1860871 lt!1861189) (= lambda!209673 lambda!209664))))

(assert (=> bs!1093384 (= lambda!209673 lambda!209620)))

(assert (=> bs!1093383 (= (= lt!1860871 lt!1861177) (= lambda!209673 lambda!209663))))

(declare-fun bs!1093388 () Bool)

(assert (= bs!1093388 (and b!4699008 b!4698924)))

(assert (=> bs!1093388 (= lambda!209673 lambda!209619)))

(assert (=> b!4699008 true))

(declare-fun lambda!209674 () Int)

(declare-fun lt!1861246 () ListMap!5033)

(assert (=> bs!1093382 (= (= lt!1861246 lt!1861075) (= lambda!209674 lambda!209622))))

(assert (=> bs!1093384 (= (= lt!1861246 lt!1861063) (= lambda!209674 lambda!209621))))

(assert (=> bs!1093385 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209660))))

(assert (=> bs!1093386 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209672))))

(assert (=> bs!1093387 (= (= lt!1861246 lt!1861189) (= lambda!209674 lambda!209664))))

(assert (=> bs!1093384 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209620))))

(assert (=> bs!1093383 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209661))))

(assert (=> b!4699008 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209673))))

(assert (=> bs!1093383 (= (= lt!1861246 lt!1861177) (= lambda!209674 lambda!209663))))

(assert (=> bs!1093388 (= (= lt!1861246 lt!1860871) (= lambda!209674 lambda!209619))))

(assert (=> b!4699008 true))

(declare-fun bs!1093392 () Bool)

(declare-fun d!1494245 () Bool)

(assert (= bs!1093392 (and d!1494245 d!1494139)))

(declare-fun lt!1861258 () ListMap!5033)

(declare-fun lambda!209676 () Int)

(assert (=> bs!1093392 (= (= lt!1861258 lt!1861075) (= lambda!209676 lambda!209622))))

(declare-fun bs!1093394 () Bool)

(assert (= bs!1093394 (and d!1494245 b!4698920)))

(assert (=> bs!1093394 (= (= lt!1861258 lt!1861063) (= lambda!209676 lambda!209621))))

(declare-fun bs!1093396 () Bool)

(assert (= bs!1093396 (and d!1494245 b!4698981)))

(assert (=> bs!1093396 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209660))))

(declare-fun bs!1093398 () Bool)

(assert (= bs!1093398 (and d!1494245 b!4699012)))

(assert (=> bs!1093398 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209672))))

(declare-fun bs!1093400 () Bool)

(assert (= bs!1093400 (and d!1494245 d!1494211)))

(assert (=> bs!1093400 (= (= lt!1861258 lt!1861189) (= lambda!209676 lambda!209664))))

(assert (=> bs!1093394 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209620))))

(declare-fun bs!1093402 () Bool)

(assert (= bs!1093402 (and d!1494245 b!4699008)))

(assert (=> bs!1093402 (= (= lt!1861258 lt!1861246) (= lambda!209676 lambda!209674))))

(declare-fun bs!1093403 () Bool)

(assert (= bs!1093403 (and d!1494245 b!4698977)))

(assert (=> bs!1093403 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209661))))

(assert (=> bs!1093402 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209673))))

(assert (=> bs!1093403 (= (= lt!1861258 lt!1861177) (= lambda!209676 lambda!209663))))

(declare-fun bs!1093405 () Bool)

(assert (= bs!1093405 (and d!1494245 b!4698924)))

(assert (=> bs!1093405 (= (= lt!1861258 lt!1860871) (= lambda!209676 lambda!209619))))

(assert (=> d!1494245 true))

(declare-fun e!2931286 () Bool)

(assert (=> d!1494245 e!2931286))

(declare-fun res!1983558 () Bool)

(assert (=> d!1494245 (=> (not res!1983558) (not e!2931286))))

(assert (=> d!1494245 (= res!1983558 (forall!11387 (Cons!52509 lt!1860868 lt!1860843) lambda!209676))))

(declare-fun e!2931287 () ListMap!5033)

(assert (=> d!1494245 (= lt!1861258 e!2931287)))

(declare-fun c!803258 () Bool)

(assert (=> d!1494245 (= c!803258 ((_ is Nil!52509) (Cons!52509 lt!1860868 lt!1860843)))))

(assert (=> d!1494245 (noDuplicateKeys!1890 (Cons!52509 lt!1860868 lt!1860843))))

(assert (=> d!1494245 (= (addToMapMapFromBucket!1322 (Cons!52509 lt!1860868 lt!1860843) lt!1860871) lt!1861258)))

(assert (=> b!4699008 (= e!2931287 lt!1861246)))

(declare-fun lt!1861262 () ListMap!5033)

(assert (=> b!4699008 (= lt!1861262 (+!2174 lt!1860871 (h!58782 (Cons!52509 lt!1860868 lt!1860843))))))

(assert (=> b!4699008 (= lt!1861246 (addToMapMapFromBucket!1322 (t!359837 (Cons!52509 lt!1860868 lt!1860843)) (+!2174 lt!1860871 (h!58782 (Cons!52509 lt!1860868 lt!1860843)))))))

(declare-fun lt!1861252 () Unit!125744)

(declare-fun call!328489 () Unit!125744)

(assert (=> b!4699008 (= lt!1861252 call!328489)))

(assert (=> b!4699008 (forall!11387 (toList!5670 lt!1860871) lambda!209673)))

(declare-fun lt!1861263 () Unit!125744)

(assert (=> b!4699008 (= lt!1861263 lt!1861252)))

(assert (=> b!4699008 (forall!11387 (toList!5670 lt!1861262) lambda!209674)))

(declare-fun lt!1861254 () Unit!125744)

(declare-fun Unit!125784 () Unit!125744)

(assert (=> b!4699008 (= lt!1861254 Unit!125784)))

(declare-fun call!328491 () Bool)

(assert (=> b!4699008 call!328491))

(declare-fun lt!1861253 () Unit!125744)

(declare-fun Unit!125785 () Unit!125744)

(assert (=> b!4699008 (= lt!1861253 Unit!125785)))

(declare-fun lt!1861247 () Unit!125744)

(declare-fun Unit!125786 () Unit!125744)

(assert (=> b!4699008 (= lt!1861247 Unit!125786)))

(declare-fun lt!1861260 () Unit!125744)

(assert (=> b!4699008 (= lt!1861260 (forallContained!3493 (toList!5670 lt!1861262) lambda!209674 (h!58782 (Cons!52509 lt!1860868 lt!1860843))))))

(assert (=> b!4699008 (contains!15774 lt!1861262 (_1!30271 (h!58782 (Cons!52509 lt!1860868 lt!1860843))))))

(declare-fun lt!1861243 () Unit!125744)

(declare-fun Unit!125787 () Unit!125744)

(assert (=> b!4699008 (= lt!1861243 Unit!125787)))

(assert (=> b!4699008 (contains!15774 lt!1861246 (_1!30271 (h!58782 (Cons!52509 lt!1860868 lt!1860843))))))

(declare-fun lt!1861256 () Unit!125744)

(declare-fun Unit!125788 () Unit!125744)

(assert (=> b!4699008 (= lt!1861256 Unit!125788)))

(assert (=> b!4699008 (forall!11387 (Cons!52509 lt!1860868 lt!1860843) lambda!209674)))

(declare-fun lt!1861261 () Unit!125744)

(declare-fun Unit!125789 () Unit!125744)

(assert (=> b!4699008 (= lt!1861261 Unit!125789)))

(declare-fun call!328490 () Bool)

(assert (=> b!4699008 call!328490))

(declare-fun lt!1861245 () Unit!125744)

(declare-fun Unit!125790 () Unit!125744)

(assert (=> b!4699008 (= lt!1861245 Unit!125790)))

(declare-fun lt!1861249 () Unit!125744)

(declare-fun Unit!125791 () Unit!125744)

(assert (=> b!4699008 (= lt!1861249 Unit!125791)))

(declare-fun lt!1861259 () Unit!125744)

(assert (=> b!4699008 (= lt!1861259 (addForallContainsKeyThenBeforeAdding!724 lt!1860871 lt!1861246 (_1!30271 (h!58782 (Cons!52509 lt!1860868 lt!1860843))) (_2!30271 (h!58782 (Cons!52509 lt!1860868 lt!1860843)))))))

(assert (=> b!4699008 (forall!11387 (toList!5670 lt!1860871) lambda!209674)))

(declare-fun lt!1861248 () Unit!125744)

(assert (=> b!4699008 (= lt!1861248 lt!1861259)))

(assert (=> b!4699008 (forall!11387 (toList!5670 lt!1860871) lambda!209674)))

(declare-fun lt!1861255 () Unit!125744)

(declare-fun Unit!125792 () Unit!125744)

(assert (=> b!4699008 (= lt!1861255 Unit!125792)))

(declare-fun res!1983557 () Bool)

(assert (=> b!4699008 (= res!1983557 (forall!11387 (Cons!52509 lt!1860868 lt!1860843) lambda!209674))))

(declare-fun e!2931285 () Bool)

(assert (=> b!4699008 (=> (not res!1983557) (not e!2931285))))

(assert (=> b!4699008 e!2931285))

(declare-fun lt!1861250 () Unit!125744)

(declare-fun Unit!125793 () Unit!125744)

(assert (=> b!4699008 (= lt!1861250 Unit!125793)))

(declare-fun b!4699009 () Bool)

(assert (=> b!4699009 (= e!2931286 (invariantList!1438 (toList!5670 lt!1861258)))))

(declare-fun b!4699010 () Bool)

(declare-fun res!1983559 () Bool)

(assert (=> b!4699010 (=> (not res!1983559) (not e!2931286))))

(assert (=> b!4699010 (= res!1983559 (forall!11387 (toList!5670 lt!1860871) lambda!209676))))

(declare-fun b!4699011 () Bool)

(assert (=> b!4699011 (= e!2931285 (forall!11387 (toList!5670 lt!1860871) lambda!209674))))

(declare-fun bm!328484 () Bool)

(assert (=> bm!328484 (= call!328490 (forall!11387 (ite c!803258 (toList!5670 lt!1860871) (toList!5670 lt!1861262)) (ite c!803258 lambda!209672 lambda!209674)))))

(declare-fun bm!328485 () Bool)

(assert (=> bm!328485 (= call!328489 (lemmaContainsAllItsOwnKeys!725 lt!1860871))))

(assert (=> b!4699012 (= e!2931287 lt!1860871)))

(declare-fun lt!1861257 () Unit!125744)

(assert (=> b!4699012 (= lt!1861257 call!328489)))

(assert (=> b!4699012 call!328490))

(declare-fun lt!1861244 () Unit!125744)

(assert (=> b!4699012 (= lt!1861244 lt!1861257)))

(assert (=> b!4699012 call!328491))

(declare-fun lt!1861251 () Unit!125744)

(declare-fun Unit!125794 () Unit!125744)

(assert (=> b!4699012 (= lt!1861251 Unit!125794)))

(declare-fun bm!328486 () Bool)

(assert (=> bm!328486 (= call!328491 (forall!11387 (ite c!803258 (toList!5670 lt!1860871) (t!359837 (Cons!52509 lt!1860868 lt!1860843))) (ite c!803258 lambda!209672 lambda!209674)))))

(assert (= (and d!1494245 c!803258) b!4699012))

(assert (= (and d!1494245 (not c!803258)) b!4699008))

(assert (= (and b!4699008 res!1983557) b!4699011))

(assert (= (or b!4699012 b!4699008) bm!328485))

(assert (= (or b!4699012 b!4699008) bm!328486))

(assert (= (or b!4699012 b!4699008) bm!328484))

(assert (= (and d!1494245 res!1983558) b!4699010))

(assert (= (and b!4699010 res!1983559) b!4699009))

(declare-fun m!5611375 () Bool)

(assert (=> bm!328486 m!5611375))

(assert (=> bm!328485 m!5611109))

(declare-fun m!5611377 () Bool)

(assert (=> bm!328484 m!5611377))

(declare-fun m!5611379 () Bool)

(assert (=> b!4699010 m!5611379))

(declare-fun m!5611381 () Bool)

(assert (=> b!4699011 m!5611381))

(assert (=> b!4699008 m!5611381))

(declare-fun m!5611383 () Bool)

(assert (=> b!4699008 m!5611383))

(declare-fun m!5611385 () Bool)

(assert (=> b!4699008 m!5611385))

(declare-fun m!5611387 () Bool)

(assert (=> b!4699008 m!5611387))

(declare-fun m!5611389 () Bool)

(assert (=> b!4699008 m!5611389))

(declare-fun m!5611391 () Bool)

(assert (=> b!4699008 m!5611391))

(declare-fun m!5611393 () Bool)

(assert (=> b!4699008 m!5611393))

(assert (=> b!4699008 m!5611381))

(declare-fun m!5611395 () Bool)

(assert (=> b!4699008 m!5611395))

(declare-fun m!5611397 () Bool)

(assert (=> b!4699008 m!5611397))

(declare-fun m!5611399 () Bool)

(assert (=> b!4699008 m!5611399))

(assert (=> b!4699008 m!5611389))

(assert (=> b!4699008 m!5611387))

(declare-fun m!5611401 () Bool)

(assert (=> b!4699009 m!5611401))

(declare-fun m!5611403 () Bool)

(assert (=> d!1494245 m!5611403))

(declare-fun m!5611405 () Bool)

(assert (=> d!1494245 m!5611405))

(assert (=> b!4698717 d!1494245))

(declare-fun bs!1093415 () Bool)

(declare-fun b!4699022 () Bool)

(assert (= bs!1093415 (and b!4699022 d!1494139)))

(declare-fun lambda!209679 () Int)

(assert (=> bs!1093415 (= (= lt!1860871 lt!1861075) (= lambda!209679 lambda!209622))))

(declare-fun bs!1093416 () Bool)

(assert (= bs!1093416 (and b!4699022 b!4698920)))

(assert (=> bs!1093416 (= (= lt!1860871 lt!1861063) (= lambda!209679 lambda!209621))))

(declare-fun bs!1093417 () Bool)

(assert (= bs!1093417 (and b!4699022 b!4698981)))

(assert (=> bs!1093417 (= lambda!209679 lambda!209660)))

(declare-fun bs!1093418 () Bool)

(assert (= bs!1093418 (and b!4699022 b!4699012)))

(assert (=> bs!1093418 (= lambda!209679 lambda!209672)))

(declare-fun bs!1093419 () Bool)

(assert (= bs!1093419 (and b!4699022 d!1494211)))

(assert (=> bs!1093419 (= (= lt!1860871 lt!1861189) (= lambda!209679 lambda!209664))))

(assert (=> bs!1093416 (= lambda!209679 lambda!209620)))

(declare-fun bs!1093420 () Bool)

(assert (= bs!1093420 (and b!4699022 d!1494245)))

(assert (=> bs!1093420 (= (= lt!1860871 lt!1861258) (= lambda!209679 lambda!209676))))

(declare-fun bs!1093421 () Bool)

(assert (= bs!1093421 (and b!4699022 b!4699008)))

(assert (=> bs!1093421 (= (= lt!1860871 lt!1861246) (= lambda!209679 lambda!209674))))

(declare-fun bs!1093422 () Bool)

(assert (= bs!1093422 (and b!4699022 b!4698977)))

(assert (=> bs!1093422 (= lambda!209679 lambda!209661)))

(assert (=> bs!1093421 (= lambda!209679 lambda!209673)))

(assert (=> bs!1093422 (= (= lt!1860871 lt!1861177) (= lambda!209679 lambda!209663))))

(declare-fun bs!1093425 () Bool)

(assert (= bs!1093425 (and b!4699022 b!4698924)))

(assert (=> bs!1093425 (= lambda!209679 lambda!209619)))

(assert (=> b!4699022 true))

(declare-fun bs!1093430 () Bool)

(declare-fun b!4699018 () Bool)

(assert (= bs!1093430 (and b!4699018 d!1494139)))

(declare-fun lambda!209681 () Int)

(assert (=> bs!1093430 (= (= lt!1860871 lt!1861075) (= lambda!209681 lambda!209622))))

(declare-fun bs!1093432 () Bool)

(assert (= bs!1093432 (and b!4699018 b!4698920)))

(assert (=> bs!1093432 (= (= lt!1860871 lt!1861063) (= lambda!209681 lambda!209621))))

(declare-fun bs!1093434 () Bool)

(assert (= bs!1093434 (and b!4699018 b!4698981)))

(assert (=> bs!1093434 (= lambda!209681 lambda!209660)))

(declare-fun bs!1093435 () Bool)

(assert (= bs!1093435 (and b!4699018 b!4699012)))

(assert (=> bs!1093435 (= lambda!209681 lambda!209672)))

(assert (=> bs!1093432 (= lambda!209681 lambda!209620)))

(declare-fun bs!1093437 () Bool)

(assert (= bs!1093437 (and b!4699018 d!1494245)))

(assert (=> bs!1093437 (= (= lt!1860871 lt!1861258) (= lambda!209681 lambda!209676))))

(declare-fun bs!1093439 () Bool)

(assert (= bs!1093439 (and b!4699018 b!4699008)))

(assert (=> bs!1093439 (= (= lt!1860871 lt!1861246) (= lambda!209681 lambda!209674))))

(declare-fun bs!1093440 () Bool)

(assert (= bs!1093440 (and b!4699018 b!4698977)))

(assert (=> bs!1093440 (= lambda!209681 lambda!209661)))

(assert (=> bs!1093439 (= lambda!209681 lambda!209673)))

(declare-fun bs!1093441 () Bool)

(assert (= bs!1093441 (and b!4699018 b!4699022)))

(assert (=> bs!1093441 (= lambda!209681 lambda!209679)))

(declare-fun bs!1093442 () Bool)

(assert (= bs!1093442 (and b!4699018 d!1494211)))

(assert (=> bs!1093442 (= (= lt!1860871 lt!1861189) (= lambda!209681 lambda!209664))))

(assert (=> bs!1093440 (= (= lt!1860871 lt!1861177) (= lambda!209681 lambda!209663))))

(declare-fun bs!1093443 () Bool)

(assert (= bs!1093443 (and b!4699018 b!4698924)))

(assert (=> bs!1093443 (= lambda!209681 lambda!209619)))

(assert (=> b!4699018 true))

(declare-fun lambda!209682 () Int)

(declare-fun lt!1861291 () ListMap!5033)

(assert (=> bs!1093430 (= (= lt!1861291 lt!1861075) (= lambda!209682 lambda!209622))))

(assert (=> b!4699018 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209681))))

(assert (=> bs!1093432 (= (= lt!1861291 lt!1861063) (= lambda!209682 lambda!209621))))

(assert (=> bs!1093434 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209660))))

(assert (=> bs!1093435 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209672))))

(assert (=> bs!1093432 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209620))))

(assert (=> bs!1093437 (= (= lt!1861291 lt!1861258) (= lambda!209682 lambda!209676))))

(assert (=> bs!1093439 (= (= lt!1861291 lt!1861246) (= lambda!209682 lambda!209674))))

(assert (=> bs!1093440 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209661))))

(assert (=> bs!1093439 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209673))))

(assert (=> bs!1093441 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209679))))

(assert (=> bs!1093442 (= (= lt!1861291 lt!1861189) (= lambda!209682 lambda!209664))))

(assert (=> bs!1093440 (= (= lt!1861291 lt!1861177) (= lambda!209682 lambda!209663))))

(assert (=> bs!1093443 (= (= lt!1861291 lt!1860871) (= lambda!209682 lambda!209619))))

(assert (=> b!4699018 true))

(declare-fun bs!1093449 () Bool)

(declare-fun d!1494249 () Bool)

(assert (= bs!1093449 (and d!1494249 d!1494139)))

(declare-fun lt!1861303 () ListMap!5033)

(declare-fun lambda!209684 () Int)

(assert (=> bs!1093449 (= (= lt!1861303 lt!1861075) (= lambda!209684 lambda!209622))))

(declare-fun bs!1093451 () Bool)

(assert (= bs!1093451 (and d!1494249 b!4699018)))

(assert (=> bs!1093451 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209681))))

(declare-fun bs!1093453 () Bool)

(assert (= bs!1093453 (and d!1494249 b!4698920)))

(assert (=> bs!1093453 (= (= lt!1861303 lt!1861063) (= lambda!209684 lambda!209621))))

(declare-fun bs!1093455 () Bool)

(assert (= bs!1093455 (and d!1494249 b!4698981)))

(assert (=> bs!1093455 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209660))))

(declare-fun bs!1093457 () Bool)

(assert (= bs!1093457 (and d!1494249 b!4699012)))

(assert (=> bs!1093457 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209672))))

(assert (=> bs!1093453 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209620))))

(declare-fun bs!1093459 () Bool)

(assert (= bs!1093459 (and d!1494249 d!1494245)))

(assert (=> bs!1093459 (= (= lt!1861303 lt!1861258) (= lambda!209684 lambda!209676))))

(declare-fun bs!1093460 () Bool)

(assert (= bs!1093460 (and d!1494249 b!4698977)))

(assert (=> bs!1093460 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209661))))

(declare-fun bs!1093461 () Bool)

(assert (= bs!1093461 (and d!1494249 b!4699008)))

(assert (=> bs!1093461 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209673))))

(declare-fun bs!1093462 () Bool)

(assert (= bs!1093462 (and d!1494249 b!4699022)))

(assert (=> bs!1093462 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209679))))

(declare-fun bs!1093463 () Bool)

(assert (= bs!1093463 (and d!1494249 d!1494211)))

(assert (=> bs!1093463 (= (= lt!1861303 lt!1861189) (= lambda!209684 lambda!209664))))

(assert (=> bs!1093461 (= (= lt!1861303 lt!1861246) (= lambda!209684 lambda!209674))))

(assert (=> bs!1093451 (= (= lt!1861303 lt!1861291) (= lambda!209684 lambda!209682))))

(assert (=> bs!1093460 (= (= lt!1861303 lt!1861177) (= lambda!209684 lambda!209663))))

(declare-fun bs!1093464 () Bool)

(assert (= bs!1093464 (and d!1494249 b!4698924)))

(assert (=> bs!1093464 (= (= lt!1861303 lt!1860871) (= lambda!209684 lambda!209619))))

(assert (=> d!1494249 true))

(declare-fun e!2931292 () Bool)

(assert (=> d!1494249 e!2931292))

(declare-fun res!1983564 () Bool)

(assert (=> d!1494249 (=> (not res!1983564) (not e!2931292))))

(assert (=> d!1494249 (= res!1983564 (forall!11387 lt!1860850 lambda!209684))))

(declare-fun e!2931293 () ListMap!5033)

(assert (=> d!1494249 (= lt!1861303 e!2931293)))

(declare-fun c!803260 () Bool)

(assert (=> d!1494249 (= c!803260 ((_ is Nil!52509) lt!1860850))))

(assert (=> d!1494249 (noDuplicateKeys!1890 lt!1860850)))

(assert (=> d!1494249 (= (addToMapMapFromBucket!1322 lt!1860850 lt!1860871) lt!1861303)))

(assert (=> b!4699018 (= e!2931293 lt!1861291)))

(declare-fun lt!1861307 () ListMap!5033)

(assert (=> b!4699018 (= lt!1861307 (+!2174 lt!1860871 (h!58782 lt!1860850)))))

(assert (=> b!4699018 (= lt!1861291 (addToMapMapFromBucket!1322 (t!359837 lt!1860850) (+!2174 lt!1860871 (h!58782 lt!1860850))))))

(declare-fun lt!1861297 () Unit!125744)

(declare-fun call!328495 () Unit!125744)

(assert (=> b!4699018 (= lt!1861297 call!328495)))

(assert (=> b!4699018 (forall!11387 (toList!5670 lt!1860871) lambda!209681)))

(declare-fun lt!1861308 () Unit!125744)

(assert (=> b!4699018 (= lt!1861308 lt!1861297)))

(assert (=> b!4699018 (forall!11387 (toList!5670 lt!1861307) lambda!209682)))

(declare-fun lt!1861299 () Unit!125744)

(declare-fun Unit!125797 () Unit!125744)

(assert (=> b!4699018 (= lt!1861299 Unit!125797)))

(declare-fun call!328497 () Bool)

(assert (=> b!4699018 call!328497))

(declare-fun lt!1861298 () Unit!125744)

(declare-fun Unit!125798 () Unit!125744)

(assert (=> b!4699018 (= lt!1861298 Unit!125798)))

(declare-fun lt!1861292 () Unit!125744)

(declare-fun Unit!125799 () Unit!125744)

(assert (=> b!4699018 (= lt!1861292 Unit!125799)))

(declare-fun lt!1861305 () Unit!125744)

(assert (=> b!4699018 (= lt!1861305 (forallContained!3493 (toList!5670 lt!1861307) lambda!209682 (h!58782 lt!1860850)))))

(assert (=> b!4699018 (contains!15774 lt!1861307 (_1!30271 (h!58782 lt!1860850)))))

(declare-fun lt!1861288 () Unit!125744)

(declare-fun Unit!125800 () Unit!125744)

(assert (=> b!4699018 (= lt!1861288 Unit!125800)))

(assert (=> b!4699018 (contains!15774 lt!1861291 (_1!30271 (h!58782 lt!1860850)))))

(declare-fun lt!1861301 () Unit!125744)

(declare-fun Unit!125801 () Unit!125744)

(assert (=> b!4699018 (= lt!1861301 Unit!125801)))

(assert (=> b!4699018 (forall!11387 lt!1860850 lambda!209682)))

(declare-fun lt!1861306 () Unit!125744)

(declare-fun Unit!125802 () Unit!125744)

(assert (=> b!4699018 (= lt!1861306 Unit!125802)))

(declare-fun call!328496 () Bool)

(assert (=> b!4699018 call!328496))

(declare-fun lt!1861290 () Unit!125744)

(declare-fun Unit!125803 () Unit!125744)

(assert (=> b!4699018 (= lt!1861290 Unit!125803)))

(declare-fun lt!1861294 () Unit!125744)

(declare-fun Unit!125804 () Unit!125744)

(assert (=> b!4699018 (= lt!1861294 Unit!125804)))

(declare-fun lt!1861304 () Unit!125744)

(assert (=> b!4699018 (= lt!1861304 (addForallContainsKeyThenBeforeAdding!724 lt!1860871 lt!1861291 (_1!30271 (h!58782 lt!1860850)) (_2!30271 (h!58782 lt!1860850))))))

(assert (=> b!4699018 (forall!11387 (toList!5670 lt!1860871) lambda!209682)))

(declare-fun lt!1861293 () Unit!125744)

(assert (=> b!4699018 (= lt!1861293 lt!1861304)))

(assert (=> b!4699018 (forall!11387 (toList!5670 lt!1860871) lambda!209682)))

(declare-fun lt!1861300 () Unit!125744)

(declare-fun Unit!125805 () Unit!125744)

(assert (=> b!4699018 (= lt!1861300 Unit!125805)))

(declare-fun res!1983563 () Bool)

(assert (=> b!4699018 (= res!1983563 (forall!11387 lt!1860850 lambda!209682))))

(declare-fun e!2931291 () Bool)

(assert (=> b!4699018 (=> (not res!1983563) (not e!2931291))))

(assert (=> b!4699018 e!2931291))

(declare-fun lt!1861295 () Unit!125744)

(declare-fun Unit!125806 () Unit!125744)

(assert (=> b!4699018 (= lt!1861295 Unit!125806)))

(declare-fun b!4699019 () Bool)

(assert (=> b!4699019 (= e!2931292 (invariantList!1438 (toList!5670 lt!1861303)))))

(declare-fun b!4699020 () Bool)

(declare-fun res!1983565 () Bool)

(assert (=> b!4699020 (=> (not res!1983565) (not e!2931292))))

(assert (=> b!4699020 (= res!1983565 (forall!11387 (toList!5670 lt!1860871) lambda!209684))))

(declare-fun b!4699021 () Bool)

(assert (=> b!4699021 (= e!2931291 (forall!11387 (toList!5670 lt!1860871) lambda!209682))))

(declare-fun bm!328490 () Bool)

(assert (=> bm!328490 (= call!328496 (forall!11387 (ite c!803260 (toList!5670 lt!1860871) (toList!5670 lt!1861307)) (ite c!803260 lambda!209679 lambda!209682)))))

(declare-fun bm!328491 () Bool)

(assert (=> bm!328491 (= call!328495 (lemmaContainsAllItsOwnKeys!725 lt!1860871))))

(assert (=> b!4699022 (= e!2931293 lt!1860871)))

(declare-fun lt!1861302 () Unit!125744)

(assert (=> b!4699022 (= lt!1861302 call!328495)))

(assert (=> b!4699022 call!328496))

(declare-fun lt!1861289 () Unit!125744)

(assert (=> b!4699022 (= lt!1861289 lt!1861302)))

(assert (=> b!4699022 call!328497))

(declare-fun lt!1861296 () Unit!125744)

(declare-fun Unit!125807 () Unit!125744)

(assert (=> b!4699022 (= lt!1861296 Unit!125807)))

(declare-fun bm!328492 () Bool)

(assert (=> bm!328492 (= call!328497 (forall!11387 (ite c!803260 (toList!5670 lt!1860871) (t!359837 lt!1860850)) (ite c!803260 lambda!209679 lambda!209682)))))

(assert (= (and d!1494249 c!803260) b!4699022))

(assert (= (and d!1494249 (not c!803260)) b!4699018))

(assert (= (and b!4699018 res!1983563) b!4699021))

(assert (= (or b!4699022 b!4699018) bm!328491))

(assert (= (or b!4699022 b!4699018) bm!328492))

(assert (= (or b!4699022 b!4699018) bm!328490))

(assert (= (and d!1494249 res!1983564) b!4699020))

(assert (= (and b!4699020 res!1983565) b!4699019))

(declare-fun m!5611463 () Bool)

(assert (=> bm!328492 m!5611463))

(assert (=> bm!328491 m!5611109))

(declare-fun m!5611465 () Bool)

(assert (=> bm!328490 m!5611465))

(declare-fun m!5611467 () Bool)

(assert (=> b!4699020 m!5611467))

(declare-fun m!5611469 () Bool)

(assert (=> b!4699021 m!5611469))

(assert (=> b!4699018 m!5611469))

(declare-fun m!5611471 () Bool)

(assert (=> b!4699018 m!5611471))

(declare-fun m!5611473 () Bool)

(assert (=> b!4699018 m!5611473))

(declare-fun m!5611475 () Bool)

(assert (=> b!4699018 m!5611475))

(declare-fun m!5611477 () Bool)

(assert (=> b!4699018 m!5611477))

(declare-fun m!5611479 () Bool)

(assert (=> b!4699018 m!5611479))

(declare-fun m!5611481 () Bool)

(assert (=> b!4699018 m!5611481))

(assert (=> b!4699018 m!5611469))

(declare-fun m!5611483 () Bool)

(assert (=> b!4699018 m!5611483))

(declare-fun m!5611485 () Bool)

(assert (=> b!4699018 m!5611485))

(declare-fun m!5611487 () Bool)

(assert (=> b!4699018 m!5611487))

(assert (=> b!4699018 m!5611477))

(assert (=> b!4699018 m!5611475))

(declare-fun m!5611489 () Bool)

(assert (=> b!4699019 m!5611489))

(declare-fun m!5611491 () Bool)

(assert (=> d!1494249 m!5611491))

(assert (=> d!1494249 m!5610903))

(assert (=> b!4698717 d!1494249))

(declare-fun bm!328493 () Bool)

(declare-fun call!328498 () Bool)

(declare-fun e!2931302 () List!52636)

(assert (=> bm!328493 (= call!328498 (contains!15778 e!2931302 key!4653))))

(declare-fun c!803265 () Bool)

(declare-fun c!803263 () Bool)

(assert (=> bm!328493 (= c!803265 c!803263)))

(declare-fun b!4699029 () Bool)

(assert (=> b!4699029 (= e!2931302 (keys!18777 lt!1860852))))

(declare-fun b!4699030 () Bool)

(declare-fun e!2931298 () Unit!125744)

(declare-fun lt!1861320 () Unit!125744)

(assert (=> b!4699030 (= e!2931298 lt!1861320)))

(declare-fun lt!1861323 () Unit!125744)

(assert (=> b!4699030 (= lt!1861323 (lemmaContainsKeyImpliesGetValueByKeyDefined!1728 (toList!5670 lt!1860852) key!4653))))

(assert (=> b!4699030 (isDefined!9427 (getValueByKey!1836 (toList!5670 lt!1860852) key!4653))))

(declare-fun lt!1861316 () Unit!125744)

(assert (=> b!4699030 (= lt!1861316 lt!1861323)))

(assert (=> b!4699030 (= lt!1861320 (lemmaInListThenGetKeysListContains!873 (toList!5670 lt!1860852) key!4653))))

(assert (=> b!4699030 call!328498))

(declare-fun b!4699031 () Bool)

(assert (=> b!4699031 false))

(declare-fun lt!1861322 () Unit!125744)

(declare-fun lt!1861317 () Unit!125744)

(assert (=> b!4699031 (= lt!1861322 lt!1861317)))

(assert (=> b!4699031 (containsKey!3148 (toList!5670 lt!1860852) key!4653)))

(assert (=> b!4699031 (= lt!1861317 (lemmaInGetKeysListThenContainsKey!877 (toList!5670 lt!1860852) key!4653))))

(declare-fun e!2931301 () Unit!125744)

(declare-fun Unit!125808 () Unit!125744)

(assert (=> b!4699031 (= e!2931301 Unit!125808)))

(declare-fun b!4699032 () Bool)

(declare-fun e!2931300 () Bool)

(assert (=> b!4699032 (= e!2931300 (contains!15778 (keys!18777 lt!1860852) key!4653))))

(declare-fun d!1494261 () Bool)

(declare-fun e!2931297 () Bool)

(assert (=> d!1494261 e!2931297))

(declare-fun res!1983569 () Bool)

(assert (=> d!1494261 (=> res!1983569 e!2931297)))

(declare-fun e!2931299 () Bool)

(assert (=> d!1494261 (= res!1983569 e!2931299)))

(declare-fun res!1983570 () Bool)

(assert (=> d!1494261 (=> (not res!1983570) (not e!2931299))))

(declare-fun lt!1861318 () Bool)

(assert (=> d!1494261 (= res!1983570 (not lt!1861318))))

(declare-fun lt!1861321 () Bool)

(assert (=> d!1494261 (= lt!1861318 lt!1861321)))

(declare-fun lt!1861319 () Unit!125744)

(assert (=> d!1494261 (= lt!1861319 e!2931298)))

(assert (=> d!1494261 (= c!803263 lt!1861321)))

(assert (=> d!1494261 (= lt!1861321 (containsKey!3148 (toList!5670 lt!1860852) key!4653))))

(assert (=> d!1494261 (= (contains!15774 lt!1860852 key!4653) lt!1861318)))

(declare-fun b!4699033 () Bool)

(assert (=> b!4699033 (= e!2931297 e!2931300)))

(declare-fun res!1983568 () Bool)

(assert (=> b!4699033 (=> (not res!1983568) (not e!2931300))))

(assert (=> b!4699033 (= res!1983568 (isDefined!9427 (getValueByKey!1836 (toList!5670 lt!1860852) key!4653)))))

(declare-fun b!4699034 () Bool)

(assert (=> b!4699034 (= e!2931299 (not (contains!15778 (keys!18777 lt!1860852) key!4653)))))

(declare-fun b!4699035 () Bool)

(assert (=> b!4699035 (= e!2931298 e!2931301)))

(declare-fun c!803264 () Bool)

(assert (=> b!4699035 (= c!803264 call!328498)))

(declare-fun b!4699036 () Bool)

(assert (=> b!4699036 (= e!2931302 (getKeysList!878 (toList!5670 lt!1860852)))))

(declare-fun b!4699037 () Bool)

(declare-fun Unit!125809 () Unit!125744)

(assert (=> b!4699037 (= e!2931301 Unit!125809)))

(assert (= (and d!1494261 c!803263) b!4699030))

(assert (= (and d!1494261 (not c!803263)) b!4699035))

(assert (= (and b!4699035 c!803264) b!4699031))

(assert (= (and b!4699035 (not c!803264)) b!4699037))

(assert (= (or b!4699030 b!4699035) bm!328493))

(assert (= (and bm!328493 c!803265) b!4699036))

(assert (= (and bm!328493 (not c!803265)) b!4699029))

(assert (= (and d!1494261 res!1983570) b!4699034))

(assert (= (and d!1494261 (not res!1983569)) b!4699033))

(assert (= (and b!4699033 res!1983568) b!4699032))

(declare-fun m!5611501 () Bool)

(assert (=> b!4699029 m!5611501))

(assert (=> b!4699034 m!5611501))

(assert (=> b!4699034 m!5611501))

(declare-fun m!5611503 () Bool)

(assert (=> b!4699034 m!5611503))

(assert (=> b!4699032 m!5611501))

(assert (=> b!4699032 m!5611501))

(assert (=> b!4699032 m!5611503))

(declare-fun m!5611505 () Bool)

(assert (=> b!4699033 m!5611505))

(assert (=> b!4699033 m!5611505))

(declare-fun m!5611507 () Bool)

(assert (=> b!4699033 m!5611507))

(declare-fun m!5611509 () Bool)

(assert (=> b!4699031 m!5611509))

(declare-fun m!5611511 () Bool)

(assert (=> b!4699031 m!5611511))

(assert (=> d!1494261 m!5611509))

(declare-fun m!5611513 () Bool)

(assert (=> b!4699036 m!5611513))

(declare-fun m!5611515 () Bool)

(assert (=> bm!328493 m!5611515))

(declare-fun m!5611517 () Bool)

(assert (=> b!4699030 m!5611517))

(assert (=> b!4699030 m!5611505))

(assert (=> b!4699030 m!5611505))

(assert (=> b!4699030 m!5611507))

(declare-fun m!5611519 () Bool)

(assert (=> b!4699030 m!5611519))

(assert (=> b!4698706 d!1494261))

(declare-fun bs!1093482 () Bool)

(declare-fun d!1494265 () Bool)

(assert (= bs!1093482 (and d!1494265 start!476276)))

(declare-fun lambda!209687 () Int)

(assert (=> bs!1093482 (= lambda!209687 lambda!209567)))

(declare-fun bs!1093484 () Bool)

(assert (= bs!1093484 (and d!1494265 d!1494223)))

(assert (=> bs!1093484 (= lambda!209687 lambda!209667)))

(declare-fun bs!1093486 () Bool)

(assert (= bs!1093486 (and d!1494265 d!1494209)))

(assert (=> bs!1093486 (= lambda!209687 lambda!209658)))

(declare-fun bs!1093487 () Bool)

(assert (= bs!1093487 (and d!1494265 d!1494203)))

(assert (=> bs!1093487 (= lambda!209687 lambda!209625)))

(declare-fun bs!1093489 () Bool)

(assert (= bs!1093489 (and d!1494265 d!1494221)))

(assert (=> bs!1093489 (= lambda!209687 lambda!209666)))

(declare-fun lt!1861345 () ListMap!5033)

(assert (=> d!1494265 (invariantList!1438 (toList!5670 lt!1861345))))

(declare-fun e!2931306 () ListMap!5033)

(assert (=> d!1494265 (= lt!1861345 e!2931306)))

(declare-fun c!803267 () Bool)

(assert (=> d!1494265 (= c!803267 ((_ is Cons!52510) (toList!5669 lm!2023)))))

(assert (=> d!1494265 (forall!11385 (toList!5669 lm!2023) lambda!209687)))

(assert (=> d!1494265 (= (extractMap!1916 (toList!5669 lm!2023)) lt!1861345)))

(declare-fun b!4699043 () Bool)

(assert (=> b!4699043 (= e!2931306 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (toList!5669 lm!2023))) (extractMap!1916 (t!359838 (toList!5669 lm!2023)))))))

(declare-fun b!4699044 () Bool)

(assert (=> b!4699044 (= e!2931306 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494265 c!803267) b!4699043))

(assert (= (and d!1494265 (not c!803267)) b!4699044))

(declare-fun m!5611521 () Bool)

(assert (=> d!1494265 m!5611521))

(declare-fun m!5611523 () Bool)

(assert (=> d!1494265 m!5611523))

(assert (=> b!4699043 m!5610759))

(assert (=> b!4699043 m!5610759))

(declare-fun m!5611525 () Bool)

(assert (=> b!4699043 m!5611525))

(assert (=> b!4698706 d!1494265))

(declare-fun bs!1093504 () Bool)

(declare-fun d!1494267 () Bool)

(assert (= bs!1093504 (and d!1494267 start!476276)))

(declare-fun lambda!209692 () Int)

(assert (=> bs!1093504 (not (= lambda!209692 lambda!209567))))

(declare-fun bs!1093505 () Bool)

(assert (= bs!1093505 (and d!1494267 d!1494265)))

(assert (=> bs!1093505 (not (= lambda!209692 lambda!209687))))

(declare-fun bs!1093506 () Bool)

(assert (= bs!1093506 (and d!1494267 d!1494223)))

(assert (=> bs!1093506 (not (= lambda!209692 lambda!209667))))

(declare-fun bs!1093507 () Bool)

(assert (= bs!1093507 (and d!1494267 d!1494209)))

(assert (=> bs!1093507 (not (= lambda!209692 lambda!209658))))

(declare-fun bs!1093508 () Bool)

(assert (= bs!1093508 (and d!1494267 d!1494203)))

(assert (=> bs!1093508 (not (= lambda!209692 lambda!209625))))

(declare-fun bs!1093509 () Bool)

(assert (= bs!1093509 (and d!1494267 d!1494221)))

(assert (=> bs!1093509 (not (= lambda!209692 lambda!209666))))

(assert (=> d!1494267 true))

(assert (=> d!1494267 (= (allKeysSameHashInMap!1804 lm!2023 hashF!1323) (forall!11385 (toList!5669 lm!2023) lambda!209692))))

(declare-fun bs!1093510 () Bool)

(assert (= bs!1093510 d!1494267))

(declare-fun m!5611527 () Bool)

(assert (=> bs!1093510 m!5611527))

(assert (=> b!4698699 d!1494267))

(declare-fun bs!1093524 () Bool)

(declare-fun d!1494269 () Bool)

(assert (= bs!1093524 (and d!1494269 d!1494139)))

(declare-fun lambda!209696 () Int)

(assert (=> bs!1093524 (not (= lambda!209696 lambda!209622))))

(declare-fun bs!1093525 () Bool)

(assert (= bs!1093525 (and d!1494269 b!4699018)))

(assert (=> bs!1093525 (not (= lambda!209696 lambda!209681))))

(declare-fun bs!1093526 () Bool)

(assert (= bs!1093526 (and d!1494269 b!4698920)))

(assert (=> bs!1093526 (not (= lambda!209696 lambda!209621))))

(declare-fun bs!1093527 () Bool)

(assert (= bs!1093527 (and d!1494269 b!4698981)))

(assert (=> bs!1093527 (not (= lambda!209696 lambda!209660))))

(declare-fun bs!1093528 () Bool)

(assert (= bs!1093528 (and d!1494269 b!4699012)))

(assert (=> bs!1093528 (not (= lambda!209696 lambda!209672))))

(assert (=> bs!1093526 (not (= lambda!209696 lambda!209620))))

(declare-fun bs!1093529 () Bool)

(assert (= bs!1093529 (and d!1494269 d!1494245)))

(assert (=> bs!1093529 (not (= lambda!209696 lambda!209676))))

(declare-fun bs!1093530 () Bool)

(assert (= bs!1093530 (and d!1494269 d!1494249)))

(assert (=> bs!1093530 (not (= lambda!209696 lambda!209684))))

(declare-fun bs!1093531 () Bool)

(assert (= bs!1093531 (and d!1494269 b!4698977)))

(assert (=> bs!1093531 (not (= lambda!209696 lambda!209661))))

(declare-fun bs!1093532 () Bool)

(assert (= bs!1093532 (and d!1494269 b!4699008)))

(assert (=> bs!1093532 (not (= lambda!209696 lambda!209673))))

(declare-fun bs!1093533 () Bool)

(assert (= bs!1093533 (and d!1494269 b!4699022)))

(assert (=> bs!1093533 (not (= lambda!209696 lambda!209679))))

(declare-fun bs!1093534 () Bool)

(assert (= bs!1093534 (and d!1494269 d!1494211)))

(assert (=> bs!1093534 (not (= lambda!209696 lambda!209664))))

(assert (=> bs!1093532 (not (= lambda!209696 lambda!209674))))

(assert (=> bs!1093525 (not (= lambda!209696 lambda!209682))))

(assert (=> bs!1093531 (not (= lambda!209696 lambda!209663))))

(declare-fun bs!1093535 () Bool)

(assert (= bs!1093535 (and d!1494269 b!4698924)))

(assert (=> bs!1093535 (not (= lambda!209696 lambda!209619))))

(assert (=> d!1494269 true))

(assert (=> d!1494269 true))

(assert (=> d!1494269 (= (allKeysSameHash!1716 oldBucket!34 hash!405 hashF!1323) (forall!11387 oldBucket!34 lambda!209696))))

(declare-fun bs!1093536 () Bool)

(assert (= bs!1093536 d!1494269))

(declare-fun m!5611551 () Bool)

(assert (=> bs!1093536 m!5611551))

(assert (=> b!4698720 d!1494269))

(declare-fun d!1494271 () Bool)

(assert (=> d!1494271 (= (eq!1049 lt!1860869 lt!1860861) (= (content!9244 (toList!5670 lt!1860869)) (content!9244 (toList!5670 lt!1860861))))))

(declare-fun bs!1093537 () Bool)

(assert (= bs!1093537 d!1494271))

(declare-fun m!5611559 () Bool)

(assert (=> bs!1093537 m!5611559))

(declare-fun m!5611563 () Bool)

(assert (=> bs!1093537 m!5611563))

(assert (=> b!4698710 d!1494271))

(declare-fun d!1494273 () Bool)

(assert (=> d!1494273 (= (head!10044 (toList!5669 lm!2023)) (h!58783 (toList!5669 lm!2023)))))

(assert (=> b!4698719 d!1494273))

(declare-fun d!1494277 () Bool)

(declare-fun hash!4154 (Hashable!6259 K!13875) (_ BitVec 64))

(assert (=> d!1494277 (= (hash!4150 hashF!1323 key!4653) (hash!4154 hashF!1323 key!4653))))

(declare-fun bs!1093538 () Bool)

(assert (= bs!1093538 d!1494277))

(declare-fun m!5611565 () Bool)

(assert (=> bs!1093538 m!5611565))

(assert (=> b!4698708 d!1494277))

(declare-fun d!1494279 () Bool)

(declare-fun res!1983574 () Bool)

(declare-fun e!2931307 () Bool)

(assert (=> d!1494279 (=> res!1983574 e!2931307)))

(assert (=> d!1494279 (= res!1983574 (not ((_ is Cons!52509) oldBucket!34)))))

(assert (=> d!1494279 (= (noDuplicateKeys!1890 oldBucket!34) e!2931307)))

(declare-fun b!4699051 () Bool)

(declare-fun e!2931308 () Bool)

(assert (=> b!4699051 (= e!2931307 e!2931308)))

(declare-fun res!1983575 () Bool)

(assert (=> b!4699051 (=> (not res!1983575) (not e!2931308))))

(assert (=> b!4699051 (= res!1983575 (not (containsKey!3145 (t!359837 oldBucket!34) (_1!30271 (h!58782 oldBucket!34)))))))

(declare-fun b!4699052 () Bool)

(assert (=> b!4699052 (= e!2931308 (noDuplicateKeys!1890 (t!359837 oldBucket!34)))))

(assert (= (and d!1494279 (not res!1983574)) b!4699051))

(assert (= (and b!4699051 res!1983575) b!4699052))

(declare-fun m!5611567 () Bool)

(assert (=> b!4699051 m!5611567))

(declare-fun m!5611569 () Bool)

(assert (=> b!4699052 m!5611569))

(assert (=> b!4698723 d!1494279))

(declare-fun b!4699054 () Bool)

(declare-fun e!2931310 () List!52633)

(declare-fun e!2931309 () List!52633)

(assert (=> b!4699054 (= e!2931310 e!2931309)))

(declare-fun c!803268 () Bool)

(assert (=> b!4699054 (= c!803268 ((_ is Cons!52509) (t!359837 oldBucket!34)))))

(declare-fun b!4699055 () Bool)

(assert (=> b!4699055 (= e!2931309 (Cons!52509 (h!58782 (t!359837 oldBucket!34)) (removePairForKey!1485 (t!359837 (t!359837 oldBucket!34)) key!4653)))))

(declare-fun b!4699056 () Bool)

(assert (=> b!4699056 (= e!2931309 Nil!52509)))

(declare-fun d!1494281 () Bool)

(declare-fun lt!1861346 () List!52633)

(assert (=> d!1494281 (not (containsKey!3145 lt!1861346 key!4653))))

(assert (=> d!1494281 (= lt!1861346 e!2931310)))

(declare-fun c!803269 () Bool)

(assert (=> d!1494281 (= c!803269 (and ((_ is Cons!52509) (t!359837 oldBucket!34)) (= (_1!30271 (h!58782 (t!359837 oldBucket!34))) key!4653)))))

(assert (=> d!1494281 (noDuplicateKeys!1890 (t!359837 oldBucket!34))))

(assert (=> d!1494281 (= (removePairForKey!1485 (t!359837 oldBucket!34) key!4653) lt!1861346)))

(declare-fun b!4699053 () Bool)

(assert (=> b!4699053 (= e!2931310 (t!359837 (t!359837 oldBucket!34)))))

(assert (= (and d!1494281 c!803269) b!4699053))

(assert (= (and d!1494281 (not c!803269)) b!4699054))

(assert (= (and b!4699054 c!803268) b!4699055))

(assert (= (and b!4699054 (not c!803268)) b!4699056))

(declare-fun m!5611571 () Bool)

(assert (=> b!4699055 m!5611571))

(declare-fun m!5611573 () Bool)

(assert (=> d!1494281 m!5611573))

(assert (=> d!1494281 m!5611569))

(assert (=> b!4698713 d!1494281))

(declare-fun bs!1093581 () Bool)

(declare-fun d!1494283 () Bool)

(assert (= bs!1093581 (and d!1494283 start!476276)))

(declare-fun lambda!209704 () Int)

(assert (=> bs!1093581 (= lambda!209704 lambda!209567)))

(declare-fun bs!1093582 () Bool)

(assert (= bs!1093582 (and d!1494283 d!1494267)))

(assert (=> bs!1093582 (not (= lambda!209704 lambda!209692))))

(declare-fun bs!1093583 () Bool)

(assert (= bs!1093583 (and d!1494283 d!1494265)))

(assert (=> bs!1093583 (= lambda!209704 lambda!209687)))

(declare-fun bs!1093584 () Bool)

(assert (= bs!1093584 (and d!1494283 d!1494223)))

(assert (=> bs!1093584 (= lambda!209704 lambda!209667)))

(declare-fun bs!1093585 () Bool)

(assert (= bs!1093585 (and d!1494283 d!1494209)))

(assert (=> bs!1093585 (= lambda!209704 lambda!209658)))

(declare-fun bs!1093586 () Bool)

(assert (= bs!1093586 (and d!1494283 d!1494203)))

(assert (=> bs!1093586 (= lambda!209704 lambda!209625)))

(declare-fun bs!1093587 () Bool)

(assert (= bs!1093587 (and d!1494283 d!1494221)))

(assert (=> bs!1093587 (= lambda!209704 lambda!209666)))

(assert (=> d!1494283 (eq!1049 (extractMap!1916 (Cons!52510 (tuple2!53957 hash!405 lt!1860843) (tail!8695 (toList!5669 lt!1860865)))) (-!694 (extractMap!1916 (Cons!52510 (tuple2!53957 hash!405 (t!359837 oldBucket!34)) (tail!8695 (toList!5669 lt!1860865)))) key!4653))))

(declare-fun lt!1861377 () Unit!125744)

(declare-fun choose!32822 (ListLongMap!4199 (_ BitVec 64) List!52633 List!52633 K!13875 Hashable!6259) Unit!125744)

(assert (=> d!1494283 (= lt!1861377 (choose!32822 lt!1860865 hash!405 (t!359837 oldBucket!34) lt!1860843 key!4653 hashF!1323))))

(assert (=> d!1494283 (forall!11385 (toList!5669 lt!1860865) lambda!209704)))

(assert (=> d!1494283 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!64 lt!1860865 hash!405 (t!359837 oldBucket!34) lt!1860843 key!4653 hashF!1323) lt!1861377)))

(declare-fun bs!1093588 () Bool)

(assert (= bs!1093588 d!1494283))

(declare-fun m!5611599 () Bool)

(assert (=> bs!1093588 m!5611599))

(assert (=> bs!1093588 m!5611599))

(declare-fun m!5611601 () Bool)

(assert (=> bs!1093588 m!5611601))

(declare-fun m!5611603 () Bool)

(assert (=> bs!1093588 m!5611603))

(declare-fun m!5611605 () Bool)

(assert (=> bs!1093588 m!5611605))

(assert (=> bs!1093588 m!5611603))

(assert (=> bs!1093588 m!5611601))

(declare-fun m!5611607 () Bool)

(assert (=> bs!1093588 m!5611607))

(declare-fun m!5611609 () Bool)

(assert (=> bs!1093588 m!5611609))

(declare-fun m!5611611 () Bool)

(assert (=> bs!1093588 m!5611611))

(assert (=> b!4698702 d!1494283))

(declare-fun d!1494291 () Bool)

(assert (=> d!1494291 (= (tail!8695 lt!1860859) (t!359838 lt!1860859))))

(assert (=> b!4698702 d!1494291))

(declare-fun d!1494293 () Bool)

(declare-fun e!2931319 () Bool)

(assert (=> d!1494293 e!2931319))

(declare-fun res!1983585 () Bool)

(assert (=> d!1494293 (=> (not res!1983585) (not e!2931319))))

(declare-fun lt!1861385 () ListMap!5033)

(assert (=> d!1494293 (= res!1983585 (not (contains!15774 lt!1861385 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!359 (List!52633 K!13875) List!52633)

(assert (=> d!1494293 (= lt!1861385 (ListMap!5034 (removePresrvNoDuplicatedKeys!359 (toList!5670 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849))) key!4653)))))

(assert (=> d!1494293 (= (-!694 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)) key!4653) lt!1861385)))

(declare-fun b!4699070 () Bool)

(declare-fun content!9245 (List!52636) (InoxSet K!13875))

(assert (=> b!4699070 (= e!2931319 (= ((_ map and) (content!9245 (keys!18777 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)))) ((_ map not) (store ((as const (Array K!13875 Bool)) false) key!4653 true))) (content!9245 (keys!18777 lt!1861385))))))

(assert (= (and d!1494293 res!1983585) b!4699070))

(declare-fun m!5611669 () Bool)

(assert (=> d!1494293 m!5611669))

(declare-fun m!5611671 () Bool)

(assert (=> d!1494293 m!5611671))

(declare-fun m!5611673 () Bool)

(assert (=> b!4699070 m!5611673))

(assert (=> b!4699070 m!5610625))

(declare-fun m!5611675 () Bool)

(assert (=> b!4699070 m!5611675))

(declare-fun m!5611677 () Bool)

(assert (=> b!4699070 m!5611677))

(assert (=> b!4699070 m!5611677))

(declare-fun m!5611679 () Bool)

(assert (=> b!4699070 m!5611679))

(assert (=> b!4699070 m!5611675))

(declare-fun m!5611681 () Bool)

(assert (=> b!4699070 m!5611681))

(assert (=> b!4698702 d!1494293))

(declare-fun d!1494307 () Bool)

(declare-fun e!2931322 () Bool)

(assert (=> d!1494307 e!2931322))

(declare-fun res!1983586 () Bool)

(assert (=> d!1494307 (=> (not res!1983586) (not e!2931322))))

(declare-fun lt!1861387 () ListMap!5033)

(assert (=> d!1494307 (= res!1983586 (not (contains!15774 lt!1861387 key!4653)))))

(assert (=> d!1494307 (= lt!1861387 (ListMap!5034 (removePresrvNoDuplicatedKeys!359 (toList!5670 lt!1860866) key!4653)))))

(assert (=> d!1494307 (= (-!694 lt!1860866 key!4653) lt!1861387)))

(declare-fun b!4699075 () Bool)

(assert (=> b!4699075 (= e!2931322 (= ((_ map and) (content!9245 (keys!18777 lt!1860866)) ((_ map not) (store ((as const (Array K!13875 Bool)) false) key!4653 true))) (content!9245 (keys!18777 lt!1861387))))))

(assert (= (and d!1494307 res!1983586) b!4699075))

(declare-fun m!5611687 () Bool)

(assert (=> d!1494307 m!5611687))

(declare-fun m!5611689 () Bool)

(assert (=> d!1494307 m!5611689))

(assert (=> b!4699075 m!5611673))

(assert (=> b!4699075 m!5611149))

(declare-fun m!5611691 () Bool)

(assert (=> b!4699075 m!5611691))

(assert (=> b!4699075 m!5611691))

(declare-fun m!5611693 () Bool)

(assert (=> b!4699075 m!5611693))

(assert (=> b!4699075 m!5611149))

(declare-fun m!5611695 () Bool)

(assert (=> b!4699075 m!5611695))

(assert (=> b!4698702 d!1494307))

(declare-fun d!1494311 () Bool)

(assert (=> d!1494311 (= (eq!1049 lt!1860851 lt!1860863) (= (content!9244 (toList!5670 lt!1860851)) (content!9244 (toList!5670 lt!1860863))))))

(declare-fun bs!1093618 () Bool)

(assert (= bs!1093618 d!1494311))

(declare-fun m!5611697 () Bool)

(assert (=> bs!1093618 m!5611697))

(declare-fun m!5611699 () Bool)

(assert (=> bs!1093618 m!5611699))

(assert (=> b!4698702 d!1494311))

(declare-fun bs!1093619 () Bool)

(declare-fun d!1494315 () Bool)

(assert (= bs!1093619 (and d!1494315 d!1494283)))

(declare-fun lambda!209708 () Int)

(assert (=> bs!1093619 (= lambda!209708 lambda!209704)))

(declare-fun bs!1093620 () Bool)

(assert (= bs!1093620 (and d!1494315 start!476276)))

(assert (=> bs!1093620 (= lambda!209708 lambda!209567)))

(declare-fun bs!1093621 () Bool)

(assert (= bs!1093621 (and d!1494315 d!1494267)))

(assert (=> bs!1093621 (not (= lambda!209708 lambda!209692))))

(declare-fun bs!1093622 () Bool)

(assert (= bs!1093622 (and d!1494315 d!1494265)))

(assert (=> bs!1093622 (= lambda!209708 lambda!209687)))

(declare-fun bs!1093623 () Bool)

(assert (= bs!1093623 (and d!1494315 d!1494223)))

(assert (=> bs!1093623 (= lambda!209708 lambda!209667)))

(declare-fun bs!1093624 () Bool)

(assert (= bs!1093624 (and d!1494315 d!1494209)))

(assert (=> bs!1093624 (= lambda!209708 lambda!209658)))

(declare-fun bs!1093625 () Bool)

(assert (= bs!1093625 (and d!1494315 d!1494203)))

(assert (=> bs!1093625 (= lambda!209708 lambda!209625)))

(declare-fun bs!1093626 () Bool)

(assert (= bs!1093626 (and d!1494315 d!1494221)))

(assert (=> bs!1093626 (= lambda!209708 lambda!209666)))

(declare-fun lt!1861388 () ListMap!5033)

(assert (=> d!1494315 (invariantList!1438 (toList!5670 lt!1861388))))

(declare-fun e!2931323 () ListMap!5033)

(assert (=> d!1494315 (= lt!1861388 e!2931323)))

(declare-fun c!803274 () Bool)

(assert (=> d!1494315 (= c!803274 ((_ is Cons!52510) (Cons!52510 lt!1860858 lt!1860849)))))

(assert (=> d!1494315 (forall!11385 (Cons!52510 lt!1860858 lt!1860849) lambda!209708)))

(assert (=> d!1494315 (= (extractMap!1916 (Cons!52510 lt!1860858 lt!1860849)) lt!1861388)))

(declare-fun b!4699076 () Bool)

(assert (=> b!4699076 (= e!2931323 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (Cons!52510 lt!1860858 lt!1860849))) (extractMap!1916 (t!359838 (Cons!52510 lt!1860858 lt!1860849)))))))

(declare-fun b!4699077 () Bool)

(assert (=> b!4699077 (= e!2931323 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494315 c!803274) b!4699076))

(assert (= (and d!1494315 (not c!803274)) b!4699077))

(declare-fun m!5611701 () Bool)

(assert (=> d!1494315 m!5611701))

(declare-fun m!5611703 () Bool)

(assert (=> d!1494315 m!5611703))

(declare-fun m!5611705 () Bool)

(assert (=> b!4699076 m!5611705))

(assert (=> b!4699076 m!5611705))

(declare-fun m!5611707 () Bool)

(assert (=> b!4699076 m!5611707))

(assert (=> b!4698702 d!1494315))

(declare-fun bs!1093627 () Bool)

(declare-fun d!1494319 () Bool)

(assert (= bs!1093627 (and d!1494319 d!1494283)))

(declare-fun lambda!209711 () Int)

(assert (=> bs!1093627 (= lambda!209711 lambda!209704)))

(declare-fun bs!1093628 () Bool)

(assert (= bs!1093628 (and d!1494319 start!476276)))

(assert (=> bs!1093628 (= lambda!209711 lambda!209567)))

(declare-fun bs!1093629 () Bool)

(assert (= bs!1093629 (and d!1494319 d!1494267)))

(assert (=> bs!1093629 (not (= lambda!209711 lambda!209692))))

(declare-fun bs!1093630 () Bool)

(assert (= bs!1093630 (and d!1494319 d!1494265)))

(assert (=> bs!1093630 (= lambda!209711 lambda!209687)))

(declare-fun bs!1093631 () Bool)

(assert (= bs!1093631 (and d!1494319 d!1494315)))

(assert (=> bs!1093631 (= lambda!209711 lambda!209708)))

(declare-fun bs!1093632 () Bool)

(assert (= bs!1093632 (and d!1494319 d!1494223)))

(assert (=> bs!1093632 (= lambda!209711 lambda!209667)))

(declare-fun bs!1093633 () Bool)

(assert (= bs!1093633 (and d!1494319 d!1494209)))

(assert (=> bs!1093633 (= lambda!209711 lambda!209658)))

(declare-fun bs!1093635 () Bool)

(assert (= bs!1093635 (and d!1494319 d!1494203)))

(assert (=> bs!1093635 (= lambda!209711 lambda!209625)))

(declare-fun bs!1093637 () Bool)

(assert (= bs!1093637 (and d!1494319 d!1494221)))

(assert (=> bs!1093637 (= lambda!209711 lambda!209666)))

(declare-fun lt!1861389 () ListMap!5033)

(assert (=> d!1494319 (invariantList!1438 (toList!5670 lt!1861389))))

(declare-fun e!2931324 () ListMap!5033)

(assert (=> d!1494319 (= lt!1861389 e!2931324)))

(declare-fun c!803275 () Bool)

(assert (=> d!1494319 (= c!803275 ((_ is Cons!52510) (Cons!52510 lt!1860839 lt!1860849)))))

(assert (=> d!1494319 (forall!11385 (Cons!52510 lt!1860839 lt!1860849) lambda!209711)))

(assert (=> d!1494319 (= (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)) lt!1861389)))

(declare-fun b!4699078 () Bool)

(assert (=> b!4699078 (= e!2931324 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (Cons!52510 lt!1860839 lt!1860849))) (extractMap!1916 (t!359838 (Cons!52510 lt!1860839 lt!1860849)))))))

(declare-fun b!4699079 () Bool)

(assert (=> b!4699079 (= e!2931324 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494319 c!803275) b!4699078))

(assert (= (and d!1494319 (not c!803275)) b!4699079))

(declare-fun m!5611709 () Bool)

(assert (=> d!1494319 m!5611709))

(declare-fun m!5611711 () Bool)

(assert (=> d!1494319 m!5611711))

(declare-fun m!5611713 () Bool)

(assert (=> b!4699078 m!5611713))

(assert (=> b!4699078 m!5611713))

(declare-fun m!5611715 () Bool)

(assert (=> b!4699078 m!5611715))

(assert (=> b!4698702 d!1494319))

(declare-fun d!1494321 () Bool)

(assert (=> d!1494321 (= (eq!1049 (extractMap!1916 (Cons!52510 lt!1860858 lt!1860849)) (-!694 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)) key!4653)) (= (content!9244 (toList!5670 (extractMap!1916 (Cons!52510 lt!1860858 lt!1860849)))) (content!9244 (toList!5670 (-!694 (extractMap!1916 (Cons!52510 lt!1860839 lt!1860849)) key!4653)))))))

(declare-fun bs!1093648 () Bool)

(assert (= bs!1093648 d!1494321))

(declare-fun m!5611717 () Bool)

(assert (=> bs!1093648 m!5611717))

(declare-fun m!5611719 () Bool)

(assert (=> bs!1093648 m!5611719))

(assert (=> b!4698702 d!1494321))

(declare-fun bs!1093651 () Bool)

(declare-fun d!1494323 () Bool)

(assert (= bs!1093651 (and d!1494323 d!1494283)))

(declare-fun lambda!209713 () Int)

(assert (=> bs!1093651 (= lambda!209713 lambda!209704)))

(declare-fun bs!1093652 () Bool)

(assert (= bs!1093652 (and d!1494323 start!476276)))

(assert (=> bs!1093652 (= lambda!209713 lambda!209567)))

(declare-fun bs!1093653 () Bool)

(assert (= bs!1093653 (and d!1494323 d!1494267)))

(assert (=> bs!1093653 (not (= lambda!209713 lambda!209692))))

(declare-fun bs!1093654 () Bool)

(assert (= bs!1093654 (and d!1494323 d!1494265)))

(assert (=> bs!1093654 (= lambda!209713 lambda!209687)))

(declare-fun bs!1093655 () Bool)

(assert (= bs!1093655 (and d!1494323 d!1494315)))

(assert (=> bs!1093655 (= lambda!209713 lambda!209708)))

(declare-fun bs!1093656 () Bool)

(assert (= bs!1093656 (and d!1494323 d!1494223)))

(assert (=> bs!1093656 (= lambda!209713 lambda!209667)))

(declare-fun bs!1093657 () Bool)

(assert (= bs!1093657 (and d!1494323 d!1494209)))

(assert (=> bs!1093657 (= lambda!209713 lambda!209658)))

(declare-fun bs!1093658 () Bool)

(assert (= bs!1093658 (and d!1494323 d!1494203)))

(assert (=> bs!1093658 (= lambda!209713 lambda!209625)))

(declare-fun bs!1093659 () Bool)

(assert (= bs!1093659 (and d!1494323 d!1494221)))

(assert (=> bs!1093659 (= lambda!209713 lambda!209666)))

(declare-fun bs!1093660 () Bool)

(assert (= bs!1093660 (and d!1494323 d!1494319)))

(assert (=> bs!1093660 (= lambda!209713 lambda!209711)))

(declare-fun lt!1861390 () ListMap!5033)

(assert (=> d!1494323 (invariantList!1438 (toList!5670 lt!1861390))))

(declare-fun e!2931325 () ListMap!5033)

(assert (=> d!1494323 (= lt!1861390 e!2931325)))

(declare-fun c!803276 () Bool)

(assert (=> d!1494323 (= c!803276 ((_ is Cons!52510) (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023)))))))

(assert (=> d!1494323 (forall!11385 (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023))) lambda!209713)))

(assert (=> d!1494323 (= (extractMap!1916 (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023)))) lt!1861390)))

(declare-fun b!4699082 () Bool)

(assert (=> b!4699082 (= e!2931325 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023))))) (extractMap!1916 (t!359838 (Cons!52510 lt!1860858 (t!359838 (toList!5669 lm!2023)))))))))

(declare-fun b!4699083 () Bool)

(assert (=> b!4699083 (= e!2931325 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494323 c!803276) b!4699082))

(assert (= (and d!1494323 (not c!803276)) b!4699083))

(declare-fun m!5611723 () Bool)

(assert (=> d!1494323 m!5611723))

(declare-fun m!5611725 () Bool)

(assert (=> d!1494323 m!5611725))

(declare-fun m!5611727 () Bool)

(assert (=> b!4699082 m!5611727))

(assert (=> b!4699082 m!5611727))

(declare-fun m!5611729 () Bool)

(assert (=> b!4699082 m!5611729))

(assert (=> b!4698702 d!1494323))

(declare-fun bs!1093661 () Bool)

(declare-fun d!1494325 () Bool)

(assert (= bs!1093661 (and d!1494325 d!1494139)))

(declare-fun lambda!209714 () Int)

(assert (=> bs!1093661 (not (= lambda!209714 lambda!209622))))

(declare-fun bs!1093662 () Bool)

(assert (= bs!1093662 (and d!1494325 b!4699018)))

(assert (=> bs!1093662 (not (= lambda!209714 lambda!209681))))

(declare-fun bs!1093663 () Bool)

(assert (= bs!1093663 (and d!1494325 b!4698920)))

(assert (=> bs!1093663 (not (= lambda!209714 lambda!209621))))

(declare-fun bs!1093664 () Bool)

(assert (= bs!1093664 (and d!1494325 b!4698981)))

(assert (=> bs!1093664 (not (= lambda!209714 lambda!209660))))

(declare-fun bs!1093665 () Bool)

(assert (= bs!1093665 (and d!1494325 b!4699012)))

(assert (=> bs!1093665 (not (= lambda!209714 lambda!209672))))

(assert (=> bs!1093663 (not (= lambda!209714 lambda!209620))))

(declare-fun bs!1093667 () Bool)

(assert (= bs!1093667 (and d!1494325 d!1494245)))

(assert (=> bs!1093667 (not (= lambda!209714 lambda!209676))))

(declare-fun bs!1093669 () Bool)

(assert (= bs!1093669 (and d!1494325 b!4698977)))

(assert (=> bs!1093669 (not (= lambda!209714 lambda!209661))))

(declare-fun bs!1093671 () Bool)

(assert (= bs!1093671 (and d!1494325 b!4699008)))

(assert (=> bs!1093671 (not (= lambda!209714 lambda!209673))))

(declare-fun bs!1093672 () Bool)

(assert (= bs!1093672 (and d!1494325 b!4699022)))

(assert (=> bs!1093672 (not (= lambda!209714 lambda!209679))))

(declare-fun bs!1093673 () Bool)

(assert (= bs!1093673 (and d!1494325 d!1494211)))

(assert (=> bs!1093673 (not (= lambda!209714 lambda!209664))))

(declare-fun bs!1093674 () Bool)

(assert (= bs!1093674 (and d!1494325 d!1494249)))

(assert (=> bs!1093674 (not (= lambda!209714 lambda!209684))))

(declare-fun bs!1093675 () Bool)

(assert (= bs!1093675 (and d!1494325 d!1494269)))

(assert (=> bs!1093675 (= lambda!209714 lambda!209696)))

(assert (=> bs!1093671 (not (= lambda!209714 lambda!209674))))

(assert (=> bs!1093662 (not (= lambda!209714 lambda!209682))))

(assert (=> bs!1093669 (not (= lambda!209714 lambda!209663))))

(declare-fun bs!1093676 () Bool)

(assert (= bs!1093676 (and d!1494325 b!4698924)))

(assert (=> bs!1093676 (not (= lambda!209714 lambda!209619))))

(assert (=> d!1494325 true))

(assert (=> d!1494325 true))

(assert (=> d!1494325 (= (allKeysSameHash!1716 newBucket!218 hash!405 hashF!1323) (forall!11387 newBucket!218 lambda!209714))))

(declare-fun bs!1093677 () Bool)

(assert (= bs!1093677 d!1494325))

(declare-fun m!5611735 () Bool)

(assert (=> bs!1093677 m!5611735))

(assert (=> b!4698701 d!1494325))

(declare-fun b!4699096 () Bool)

(declare-fun e!2931334 () List!52633)

(declare-fun e!2931333 () List!52633)

(assert (=> b!4699096 (= e!2931334 e!2931333)))

(declare-fun c!803277 () Bool)

(assert (=> b!4699096 (= c!803277 ((_ is Cons!52509) oldBucket!34))))

(declare-fun b!4699097 () Bool)

(assert (=> b!4699097 (= e!2931333 (Cons!52509 (h!58782 oldBucket!34) (removePairForKey!1485 (t!359837 oldBucket!34) key!4653)))))

(declare-fun b!4699098 () Bool)

(assert (=> b!4699098 (= e!2931333 Nil!52509)))

(declare-fun d!1494333 () Bool)

(declare-fun lt!1861391 () List!52633)

(assert (=> d!1494333 (not (containsKey!3145 lt!1861391 key!4653))))

(assert (=> d!1494333 (= lt!1861391 e!2931334)))

(declare-fun c!803278 () Bool)

(assert (=> d!1494333 (= c!803278 (and ((_ is Cons!52509) oldBucket!34) (= (_1!30271 (h!58782 oldBucket!34)) key!4653)))))

(assert (=> d!1494333 (noDuplicateKeys!1890 oldBucket!34)))

(assert (=> d!1494333 (= (removePairForKey!1485 oldBucket!34 key!4653) lt!1861391)))

(declare-fun b!4699095 () Bool)

(assert (=> b!4699095 (= e!2931334 (t!359837 oldBucket!34))))

(assert (= (and d!1494333 c!803278) b!4699095))

(assert (= (and d!1494333 (not c!803278)) b!4699096))

(assert (= (and b!4699096 c!803277) b!4699097))

(assert (= (and b!4699096 (not c!803277)) b!4699098))

(assert (=> b!4699097 m!5610707))

(declare-fun m!5611737 () Bool)

(assert (=> d!1494333 m!5611737))

(assert (=> d!1494333 m!5610621))

(assert (=> b!4698722 d!1494333))

(declare-fun d!1494335 () Bool)

(declare-fun res!1983587 () Bool)

(declare-fun e!2931335 () Bool)

(assert (=> d!1494335 (=> res!1983587 e!2931335)))

(assert (=> d!1494335 (= res!1983587 ((_ is Nil!52510) (toList!5669 lm!2023)))))

(assert (=> d!1494335 (= (forall!11385 (toList!5669 lm!2023) lambda!209567) e!2931335)))

(declare-fun b!4699099 () Bool)

(declare-fun e!2931336 () Bool)

(assert (=> b!4699099 (= e!2931335 e!2931336)))

(declare-fun res!1983588 () Bool)

(assert (=> b!4699099 (=> (not res!1983588) (not e!2931336))))

(assert (=> b!4699099 (= res!1983588 (dynLambda!21741 lambda!209567 (h!58783 (toList!5669 lm!2023))))))

(declare-fun b!4699100 () Bool)

(assert (=> b!4699100 (= e!2931336 (forall!11385 (t!359838 (toList!5669 lm!2023)) lambda!209567))))

(assert (= (and d!1494335 (not res!1983587)) b!4699099))

(assert (= (and b!4699099 res!1983588) b!4699100))

(declare-fun b_lambda!177307 () Bool)

(assert (=> (not b_lambda!177307) (not b!4699099)))

(declare-fun m!5611739 () Bool)

(assert (=> b!4699099 m!5611739))

(declare-fun m!5611741 () Bool)

(assert (=> b!4699100 m!5611741))

(assert (=> start!476276 d!1494335))

(declare-fun d!1494337 () Bool)

(declare-fun isStrictlySorted!677 (List!52634) Bool)

(assert (=> d!1494337 (= (inv!67749 lm!2023) (isStrictlySorted!677 (toList!5669 lm!2023)))))

(declare-fun bs!1093678 () Bool)

(assert (= bs!1093678 d!1494337))

(declare-fun m!5611743 () Bool)

(assert (=> bs!1093678 m!5611743))

(assert (=> start!476276 d!1494337))

(declare-fun d!1494339 () Bool)

(declare-fun e!2931337 () Bool)

(assert (=> d!1494339 e!2931337))

(declare-fun res!1983590 () Bool)

(assert (=> d!1494339 (=> (not res!1983590) (not e!2931337))))

(declare-fun lt!1861395 () ListMap!5033)

(assert (=> d!1494339 (= res!1983590 (contains!15774 lt!1861395 (_1!30271 (h!58782 oldBucket!34))))))

(declare-fun lt!1861394 () List!52633)

(assert (=> d!1494339 (= lt!1861395 (ListMap!5034 lt!1861394))))

(declare-fun lt!1861393 () Unit!125744)

(declare-fun lt!1861392 () Unit!125744)

(assert (=> d!1494339 (= lt!1861393 lt!1861392)))

(assert (=> d!1494339 (= (getValueByKey!1836 lt!1861394 (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494339 (= lt!1861392 (lemmaContainsTupThenGetReturnValue!1028 lt!1861394 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494339 (= lt!1861394 (insertNoDuplicatedKeys!536 (toList!5670 lt!1860863) (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494339 (= (+!2174 lt!1860863 (h!58782 oldBucket!34)) lt!1861395)))

(declare-fun b!4699101 () Bool)

(declare-fun res!1983589 () Bool)

(assert (=> b!4699101 (=> (not res!1983589) (not e!2931337))))

(assert (=> b!4699101 (= res!1983589 (= (getValueByKey!1836 (toList!5670 lt!1861395) (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun b!4699102 () Bool)

(assert (=> b!4699102 (= e!2931337 (contains!15777 (toList!5670 lt!1861395) (h!58782 oldBucket!34)))))

(assert (= (and d!1494339 res!1983590) b!4699101))

(assert (= (and b!4699101 res!1983589) b!4699102))

(declare-fun m!5611745 () Bool)

(assert (=> d!1494339 m!5611745))

(declare-fun m!5611747 () Bool)

(assert (=> d!1494339 m!5611747))

(declare-fun m!5611749 () Bool)

(assert (=> d!1494339 m!5611749))

(declare-fun m!5611751 () Bool)

(assert (=> d!1494339 m!5611751))

(declare-fun m!5611753 () Bool)

(assert (=> b!4699101 m!5611753))

(declare-fun m!5611755 () Bool)

(assert (=> b!4699102 m!5611755))

(assert (=> b!4698715 d!1494339))

(declare-fun d!1494341 () Bool)

(declare-fun e!2931338 () Bool)

(assert (=> d!1494341 e!2931338))

(declare-fun res!1983591 () Bool)

(assert (=> d!1494341 (=> (not res!1983591) (not e!2931338))))

(declare-fun lt!1861396 () ListMap!5033)

(assert (=> d!1494341 (= res!1983591 (not (contains!15774 lt!1861396 key!4653)))))

(assert (=> d!1494341 (= lt!1861396 (ListMap!5034 (removePresrvNoDuplicatedKeys!359 (toList!5670 lt!1860846) key!4653)))))

(assert (=> d!1494341 (= (-!694 lt!1860846 key!4653) lt!1861396)))

(declare-fun b!4699103 () Bool)

(assert (=> b!4699103 (= e!2931338 (= ((_ map and) (content!9245 (keys!18777 lt!1860846)) ((_ map not) (store ((as const (Array K!13875 Bool)) false) key!4653 true))) (content!9245 (keys!18777 lt!1861396))))))

(assert (= (and d!1494341 res!1983591) b!4699103))

(declare-fun m!5611757 () Bool)

(assert (=> d!1494341 m!5611757))

(declare-fun m!5611759 () Bool)

(assert (=> d!1494341 m!5611759))

(assert (=> b!4699103 m!5611673))

(declare-fun m!5611761 () Bool)

(assert (=> b!4699103 m!5611761))

(declare-fun m!5611763 () Bool)

(assert (=> b!4699103 m!5611763))

(assert (=> b!4699103 m!5611763))

(declare-fun m!5611765 () Bool)

(assert (=> b!4699103 m!5611765))

(assert (=> b!4699103 m!5611761))

(declare-fun m!5611767 () Bool)

(assert (=> b!4699103 m!5611767))

(assert (=> b!4698715 d!1494341))

(declare-fun d!1494343 () Bool)

(declare-fun e!2931339 () Bool)

(assert (=> d!1494343 e!2931339))

(declare-fun res!1983593 () Bool)

(assert (=> d!1494343 (=> (not res!1983593) (not e!2931339))))

(declare-fun lt!1861400 () ListMap!5033)

(assert (=> d!1494343 (= res!1983593 (contains!15774 lt!1861400 (_1!30271 (h!58782 oldBucket!34))))))

(declare-fun lt!1861399 () List!52633)

(assert (=> d!1494343 (= lt!1861400 (ListMap!5034 lt!1861399))))

(declare-fun lt!1861398 () Unit!125744)

(declare-fun lt!1861397 () Unit!125744)

(assert (=> d!1494343 (= lt!1861398 lt!1861397)))

(assert (=> d!1494343 (= (getValueByKey!1836 lt!1861399 (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494343 (= lt!1861397 (lemmaContainsTupThenGetReturnValue!1028 lt!1861399 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494343 (= lt!1861399 (insertNoDuplicatedKeys!536 (toList!5670 lt!1860866) (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34))))))

(assert (=> d!1494343 (= (+!2174 lt!1860866 (h!58782 oldBucket!34)) lt!1861400)))

(declare-fun b!4699104 () Bool)

(declare-fun res!1983592 () Bool)

(assert (=> b!4699104 (=> (not res!1983592) (not e!2931339))))

(assert (=> b!4699104 (= res!1983592 (= (getValueByKey!1836 (toList!5670 lt!1861400) (_1!30271 (h!58782 oldBucket!34))) (Some!12171 (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun b!4699105 () Bool)

(assert (=> b!4699105 (= e!2931339 (contains!15777 (toList!5670 lt!1861400) (h!58782 oldBucket!34)))))

(assert (= (and d!1494343 res!1983593) b!4699104))

(assert (= (and b!4699104 res!1983592) b!4699105))

(declare-fun m!5611769 () Bool)

(assert (=> d!1494343 m!5611769))

(declare-fun m!5611771 () Bool)

(assert (=> d!1494343 m!5611771))

(declare-fun m!5611773 () Bool)

(assert (=> d!1494343 m!5611773))

(declare-fun m!5611775 () Bool)

(assert (=> d!1494343 m!5611775))

(declare-fun m!5611777 () Bool)

(assert (=> b!4699104 m!5611777))

(declare-fun m!5611779 () Bool)

(assert (=> b!4699105 m!5611779))

(assert (=> b!4698715 d!1494343))

(declare-fun d!1494345 () Bool)

(assert (=> d!1494345 (= (-!694 (+!2174 lt!1860866 (tuple2!53955 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)))) key!4653) (+!2174 (-!694 lt!1860866 key!4653) (tuple2!53955 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)))))))

(declare-fun lt!1861403 () Unit!125744)

(declare-fun choose!32823 (ListMap!5033 K!13875 V!14121 K!13875) Unit!125744)

(assert (=> d!1494345 (= lt!1861403 (choose!32823 lt!1860866 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)) key!4653))))

(assert (=> d!1494345 (not (= (_1!30271 (h!58782 oldBucket!34)) key!4653))))

(assert (=> d!1494345 (= (addRemoveCommutativeForDiffKeys!95 lt!1860866 (_1!30271 (h!58782 oldBucket!34)) (_2!30271 (h!58782 oldBucket!34)) key!4653) lt!1861403)))

(declare-fun bs!1093679 () Bool)

(assert (= bs!1093679 d!1494345))

(assert (=> bs!1093679 m!5610633))

(declare-fun m!5611781 () Bool)

(assert (=> bs!1093679 m!5611781))

(declare-fun m!5611783 () Bool)

(assert (=> bs!1093679 m!5611783))

(assert (=> bs!1093679 m!5610633))

(declare-fun m!5611785 () Bool)

(assert (=> bs!1093679 m!5611785))

(assert (=> bs!1093679 m!5611785))

(declare-fun m!5611787 () Bool)

(assert (=> bs!1093679 m!5611787))

(assert (=> b!4698715 d!1494345))

(declare-fun d!1494347 () Bool)

(declare-fun e!2931340 () Bool)

(assert (=> d!1494347 e!2931340))

(declare-fun res!1983594 () Bool)

(assert (=> d!1494347 (=> (not res!1983594) (not e!2931340))))

(declare-fun lt!1861404 () ListMap!5033)

(assert (=> d!1494347 (= res!1983594 (not (contains!15774 lt!1861404 key!4653)))))

(assert (=> d!1494347 (= lt!1861404 (ListMap!5034 (removePresrvNoDuplicatedKeys!359 (toList!5670 (+!2174 lt!1860866 (h!58782 oldBucket!34))) key!4653)))))

(assert (=> d!1494347 (= (-!694 (+!2174 lt!1860866 (h!58782 oldBucket!34)) key!4653) lt!1861404)))

(declare-fun b!4699106 () Bool)

(assert (=> b!4699106 (= e!2931340 (= ((_ map and) (content!9245 (keys!18777 (+!2174 lt!1860866 (h!58782 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13875 Bool)) false) key!4653 true))) (content!9245 (keys!18777 lt!1861404))))))

(assert (= (and d!1494347 res!1983594) b!4699106))

(declare-fun m!5611789 () Bool)

(assert (=> d!1494347 m!5611789))

(declare-fun m!5611791 () Bool)

(assert (=> d!1494347 m!5611791))

(assert (=> b!4699106 m!5611673))

(assert (=> b!4699106 m!5610659))

(declare-fun m!5611793 () Bool)

(assert (=> b!4699106 m!5611793))

(declare-fun m!5611795 () Bool)

(assert (=> b!4699106 m!5611795))

(assert (=> b!4699106 m!5611795))

(declare-fun m!5611797 () Bool)

(assert (=> b!4699106 m!5611797))

(assert (=> b!4699106 m!5611793))

(declare-fun m!5611799 () Bool)

(assert (=> b!4699106 m!5611799))

(assert (=> b!4698715 d!1494347))

(declare-fun d!1494349 () Bool)

(assert (=> d!1494349 (= (eq!1049 lt!1860846 lt!1860857) (= (content!9244 (toList!5670 lt!1860846)) (content!9244 (toList!5670 lt!1860857))))))

(declare-fun bs!1093680 () Bool)

(assert (= bs!1093680 d!1494349))

(declare-fun m!5611801 () Bool)

(assert (=> bs!1093680 m!5611801))

(assert (=> bs!1093680 m!5611303))

(assert (=> b!4698704 d!1494349))

(declare-fun d!1494351 () Bool)

(assert (=> d!1494351 (= (eq!1049 lt!1860857 (+!2174 lt!1860840 lt!1860868)) (= (content!9244 (toList!5670 lt!1860857)) (content!9244 (toList!5670 (+!2174 lt!1860840 lt!1860868)))))))

(declare-fun bs!1093681 () Bool)

(assert (= bs!1093681 d!1494351))

(assert (=> bs!1093681 m!5611303))

(declare-fun m!5611803 () Bool)

(assert (=> bs!1093681 m!5611803))

(assert (=> b!4698705 d!1494351))

(declare-fun d!1494353 () Bool)

(declare-fun e!2931341 () Bool)

(assert (=> d!1494353 e!2931341))

(declare-fun res!1983596 () Bool)

(assert (=> d!1494353 (=> (not res!1983596) (not e!2931341))))

(declare-fun lt!1861408 () ListMap!5033)

(assert (=> d!1494353 (= res!1983596 (contains!15774 lt!1861408 (_1!30271 lt!1860868)))))

(declare-fun lt!1861407 () List!52633)

(assert (=> d!1494353 (= lt!1861408 (ListMap!5034 lt!1861407))))

(declare-fun lt!1861406 () Unit!125744)

(declare-fun lt!1861405 () Unit!125744)

(assert (=> d!1494353 (= lt!1861406 lt!1861405)))

(assert (=> d!1494353 (= (getValueByKey!1836 lt!1861407 (_1!30271 lt!1860868)) (Some!12171 (_2!30271 lt!1860868)))))

(assert (=> d!1494353 (= lt!1861405 (lemmaContainsTupThenGetReturnValue!1028 lt!1861407 (_1!30271 lt!1860868) (_2!30271 lt!1860868)))))

(assert (=> d!1494353 (= lt!1861407 (insertNoDuplicatedKeys!536 (toList!5670 lt!1860840) (_1!30271 lt!1860868) (_2!30271 lt!1860868)))))

(assert (=> d!1494353 (= (+!2174 lt!1860840 lt!1860868) lt!1861408)))

(declare-fun b!4699107 () Bool)

(declare-fun res!1983595 () Bool)

(assert (=> b!4699107 (=> (not res!1983595) (not e!2931341))))

(assert (=> b!4699107 (= res!1983595 (= (getValueByKey!1836 (toList!5670 lt!1861408) (_1!30271 lt!1860868)) (Some!12171 (_2!30271 lt!1860868))))))

(declare-fun b!4699108 () Bool)

(assert (=> b!4699108 (= e!2931341 (contains!15777 (toList!5670 lt!1861408) lt!1860868))))

(assert (= (and d!1494353 res!1983596) b!4699107))

(assert (= (and b!4699107 res!1983595) b!4699108))

(declare-fun m!5611805 () Bool)

(assert (=> d!1494353 m!5611805))

(declare-fun m!5611807 () Bool)

(assert (=> d!1494353 m!5611807))

(declare-fun m!5611809 () Bool)

(assert (=> d!1494353 m!5611809))

(declare-fun m!5611811 () Bool)

(assert (=> d!1494353 m!5611811))

(declare-fun m!5611813 () Bool)

(assert (=> b!4699107 m!5611813))

(declare-fun m!5611815 () Bool)

(assert (=> b!4699108 m!5611815))

(assert (=> b!4698705 d!1494353))

(declare-fun d!1494355 () Bool)

(declare-fun isEmpty!29122 (Option!12169) Bool)

(assert (=> d!1494355 (= (isDefined!9424 (getPair!494 lt!1860864 key!4653)) (not (isEmpty!29122 (getPair!494 lt!1860864 key!4653))))))

(declare-fun bs!1093682 () Bool)

(assert (= bs!1093682 d!1494355))

(assert (=> bs!1093682 m!5610669))

(declare-fun m!5611817 () Bool)

(assert (=> bs!1093682 m!5611817))

(assert (=> b!4698703 d!1494355))

(declare-fun d!1494357 () Bool)

(declare-fun lt!1861411 () Bool)

(declare-fun content!9246 (List!52634) (InoxSet tuple2!53956))

(assert (=> d!1494357 (= lt!1861411 (select (content!9246 (toList!5669 lm!2023)) lt!1860872))))

(declare-fun e!2931347 () Bool)

(assert (=> d!1494357 (= lt!1861411 e!2931347)))

(declare-fun res!1983602 () Bool)

(assert (=> d!1494357 (=> (not res!1983602) (not e!2931347))))

(assert (=> d!1494357 (= res!1983602 ((_ is Cons!52510) (toList!5669 lm!2023)))))

(assert (=> d!1494357 (= (contains!15772 (toList!5669 lm!2023) lt!1860872) lt!1861411)))

(declare-fun b!4699113 () Bool)

(declare-fun e!2931346 () Bool)

(assert (=> b!4699113 (= e!2931347 e!2931346)))

(declare-fun res!1983601 () Bool)

(assert (=> b!4699113 (=> res!1983601 e!2931346)))

(assert (=> b!4699113 (= res!1983601 (= (h!58783 (toList!5669 lm!2023)) lt!1860872))))

(declare-fun b!4699114 () Bool)

(assert (=> b!4699114 (= e!2931346 (contains!15772 (t!359838 (toList!5669 lm!2023)) lt!1860872))))

(assert (= (and d!1494357 res!1983602) b!4699113))

(assert (= (and b!4699113 (not res!1983601)) b!4699114))

(declare-fun m!5611819 () Bool)

(assert (=> d!1494357 m!5611819))

(declare-fun m!5611821 () Bool)

(assert (=> d!1494357 m!5611821))

(declare-fun m!5611823 () Bool)

(assert (=> b!4699114 m!5611823))

(assert (=> b!4698703 d!1494357))

(declare-fun d!1494359 () Bool)

(assert (=> d!1494359 (contains!15772 (toList!5669 lm!2023) (tuple2!53957 lt!1860862 lt!1860864))))

(declare-fun lt!1861414 () Unit!125744)

(declare-fun choose!32824 (ListLongMap!4199 (_ BitVec 64) List!52633) Unit!125744)

(assert (=> d!1494359 (= lt!1861414 (choose!32824 lm!2023 lt!1860862 lt!1860864))))

(assert (=> d!1494359 (contains!15773 lm!2023 lt!1860862)))

(assert (=> d!1494359 (= (lemmaGetValueImpliesTupleContained!299 lm!2023 lt!1860862 lt!1860864) lt!1861414)))

(declare-fun bs!1093683 () Bool)

(assert (= bs!1093683 d!1494359))

(declare-fun m!5611825 () Bool)

(assert (=> bs!1093683 m!5611825))

(declare-fun m!5611827 () Bool)

(assert (=> bs!1093683 m!5611827))

(assert (=> bs!1093683 m!5610687))

(assert (=> b!4698703 d!1494359))

(declare-fun d!1494361 () Bool)

(declare-fun e!2931353 () Bool)

(assert (=> d!1494361 e!2931353))

(declare-fun res!1983605 () Bool)

(assert (=> d!1494361 (=> res!1983605 e!2931353)))

(declare-fun lt!1861426 () Bool)

(assert (=> d!1494361 (= res!1983605 (not lt!1861426))))

(declare-fun lt!1861424 () Bool)

(assert (=> d!1494361 (= lt!1861426 lt!1861424)))

(declare-fun lt!1861423 () Unit!125744)

(declare-fun e!2931352 () Unit!125744)

(assert (=> d!1494361 (= lt!1861423 e!2931352)))

(declare-fun c!803281 () Bool)

(assert (=> d!1494361 (= c!803281 lt!1861424)))

(declare-fun containsKey!3149 (List!52634 (_ BitVec 64)) Bool)

(assert (=> d!1494361 (= lt!1861424 (containsKey!3149 (toList!5669 lm!2023) lt!1860862))))

(assert (=> d!1494361 (= (contains!15773 lm!2023 lt!1860862) lt!1861426)))

(declare-fun b!4699122 () Bool)

(declare-fun lt!1861425 () Unit!125744)

(assert (=> b!4699122 (= e!2931352 lt!1861425)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1729 (List!52634 (_ BitVec 64)) Unit!125744)

(assert (=> b!4699122 (= lt!1861425 (lemmaContainsKeyImpliesGetValueByKeyDefined!1729 (toList!5669 lm!2023) lt!1860862))))

(declare-datatypes ((Option!12173 0))(
  ( (None!12172) (Some!12172 (v!46647 List!52633)) )
))
(declare-fun isDefined!9428 (Option!12173) Bool)

(declare-fun getValueByKey!1837 (List!52634 (_ BitVec 64)) Option!12173)

(assert (=> b!4699122 (isDefined!9428 (getValueByKey!1837 (toList!5669 lm!2023) lt!1860862))))

(declare-fun b!4699123 () Bool)

(declare-fun Unit!125832 () Unit!125744)

(assert (=> b!4699123 (= e!2931352 Unit!125832)))

(declare-fun b!4699124 () Bool)

(assert (=> b!4699124 (= e!2931353 (isDefined!9428 (getValueByKey!1837 (toList!5669 lm!2023) lt!1860862)))))

(assert (= (and d!1494361 c!803281) b!4699122))

(assert (= (and d!1494361 (not c!803281)) b!4699123))

(assert (= (and d!1494361 (not res!1983605)) b!4699124))

(declare-fun m!5611829 () Bool)

(assert (=> d!1494361 m!5611829))

(declare-fun m!5611831 () Bool)

(assert (=> b!4699122 m!5611831))

(declare-fun m!5611833 () Bool)

(assert (=> b!4699122 m!5611833))

(assert (=> b!4699122 m!5611833))

(declare-fun m!5611835 () Bool)

(assert (=> b!4699122 m!5611835))

(assert (=> b!4699124 m!5611833))

(assert (=> b!4699124 m!5611833))

(assert (=> b!4699124 m!5611835))

(assert (=> b!4698703 d!1494361))

(declare-fun d!1494363 () Bool)

(declare-fun get!17567 (Option!12173) List!52633)

(assert (=> d!1494363 (= (apply!12373 lm!2023 lt!1860862) (get!17567 (getValueByKey!1837 (toList!5669 lm!2023) lt!1860862)))))

(declare-fun bs!1093684 () Bool)

(assert (= bs!1093684 d!1494363))

(assert (=> bs!1093684 m!5611833))

(assert (=> bs!1093684 m!5611833))

(declare-fun m!5611837 () Bool)

(assert (=> bs!1093684 m!5611837))

(assert (=> b!4698703 d!1494363))

(declare-fun bs!1093685 () Bool)

(declare-fun d!1494365 () Bool)

(assert (= bs!1093685 (and d!1494365 d!1494283)))

(declare-fun lambda!209717 () Int)

(assert (=> bs!1093685 (= lambda!209717 lambda!209704)))

(declare-fun bs!1093686 () Bool)

(assert (= bs!1093686 (and d!1494365 start!476276)))

(assert (=> bs!1093686 (= lambda!209717 lambda!209567)))

(declare-fun bs!1093687 () Bool)

(assert (= bs!1093687 (and d!1494365 d!1494267)))

(assert (=> bs!1093687 (not (= lambda!209717 lambda!209692))))

(declare-fun bs!1093688 () Bool)

(assert (= bs!1093688 (and d!1494365 d!1494265)))

(assert (=> bs!1093688 (= lambda!209717 lambda!209687)))

(declare-fun bs!1093689 () Bool)

(assert (= bs!1093689 (and d!1494365 d!1494323)))

(assert (=> bs!1093689 (= lambda!209717 lambda!209713)))

(declare-fun bs!1093690 () Bool)

(assert (= bs!1093690 (and d!1494365 d!1494315)))

(assert (=> bs!1093690 (= lambda!209717 lambda!209708)))

(declare-fun bs!1093691 () Bool)

(assert (= bs!1093691 (and d!1494365 d!1494223)))

(assert (=> bs!1093691 (= lambda!209717 lambda!209667)))

(declare-fun bs!1093692 () Bool)

(assert (= bs!1093692 (and d!1494365 d!1494209)))

(assert (=> bs!1093692 (= lambda!209717 lambda!209658)))

(declare-fun bs!1093693 () Bool)

(assert (= bs!1093693 (and d!1494365 d!1494203)))

(assert (=> bs!1093693 (= lambda!209717 lambda!209625)))

(declare-fun bs!1093694 () Bool)

(assert (= bs!1093694 (and d!1494365 d!1494221)))

(assert (=> bs!1093694 (= lambda!209717 lambda!209666)))

(declare-fun bs!1093695 () Bool)

(assert (= bs!1093695 (and d!1494365 d!1494319)))

(assert (=> bs!1093695 (= lambda!209717 lambda!209711)))

(assert (=> d!1494365 (contains!15773 lm!2023 (hash!4150 hashF!1323 key!4653))))

(declare-fun lt!1861429 () Unit!125744)

(declare-fun choose!32825 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> d!1494365 (= lt!1861429 (choose!32825 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494365 (forall!11385 (toList!5669 lm!2023) lambda!209717)))

(assert (=> d!1494365 (= (lemmaInGenMapThenLongMapContainsHash!700 lm!2023 key!4653 hashF!1323) lt!1861429)))

(declare-fun bs!1093696 () Bool)

(assert (= bs!1093696 d!1494365))

(assert (=> bs!1093696 m!5610695))

(assert (=> bs!1093696 m!5610695))

(declare-fun m!5611839 () Bool)

(assert (=> bs!1093696 m!5611839))

(declare-fun m!5611841 () Bool)

(assert (=> bs!1093696 m!5611841))

(declare-fun m!5611843 () Bool)

(assert (=> bs!1093696 m!5611843))

(assert (=> b!4698703 d!1494365))

(declare-fun d!1494367 () Bool)

(assert (=> d!1494367 (containsKey!3145 oldBucket!34 key!4653)))

(declare-fun lt!1861432 () Unit!125744)

(declare-fun choose!32826 (List!52633 K!13875 Hashable!6259) Unit!125744)

(assert (=> d!1494367 (= lt!1861432 (choose!32826 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1494367 (noDuplicateKeys!1890 oldBucket!34)))

(assert (=> d!1494367 (= (lemmaGetPairDefinedThenContainsKey!242 oldBucket!34 key!4653 hashF!1323) lt!1861432)))

(declare-fun bs!1093697 () Bool)

(assert (= bs!1093697 d!1494367))

(assert (=> bs!1093697 m!5610681))

(declare-fun m!5611845 () Bool)

(assert (=> bs!1093697 m!5611845))

(assert (=> bs!1093697 m!5610621))

(assert (=> b!4698703 d!1494367))

(declare-fun d!1494369 () Bool)

(declare-fun res!1983610 () Bool)

(declare-fun e!2931358 () Bool)

(assert (=> d!1494369 (=> res!1983610 e!2931358)))

(assert (=> d!1494369 (= res!1983610 (and ((_ is Cons!52509) oldBucket!34) (= (_1!30271 (h!58782 oldBucket!34)) key!4653)))))

(assert (=> d!1494369 (= (containsKey!3145 oldBucket!34 key!4653) e!2931358)))

(declare-fun b!4699129 () Bool)

(declare-fun e!2931359 () Bool)

(assert (=> b!4699129 (= e!2931358 e!2931359)))

(declare-fun res!1983611 () Bool)

(assert (=> b!4699129 (=> (not res!1983611) (not e!2931359))))

(assert (=> b!4699129 (= res!1983611 ((_ is Cons!52509) oldBucket!34))))

(declare-fun b!4699130 () Bool)

(assert (=> b!4699130 (= e!2931359 (containsKey!3145 (t!359837 oldBucket!34) key!4653))))

(assert (= (and d!1494369 (not res!1983610)) b!4699129))

(assert (= (and b!4699129 res!1983611) b!4699130))

(assert (=> b!4699130 m!5610677))

(assert (=> b!4698703 d!1494369))

(declare-fun b!4699147 () Bool)

(declare-fun res!1983623 () Bool)

(declare-fun e!2931372 () Bool)

(assert (=> b!4699147 (=> (not res!1983623) (not e!2931372))))

(declare-fun lt!1861435 () Option!12169)

(declare-fun get!17568 (Option!12169) tuple2!53954)

(assert (=> b!4699147 (= res!1983623 (= (_1!30271 (get!17568 lt!1861435)) key!4653))))

(declare-fun b!4699148 () Bool)

(declare-fun e!2931374 () Option!12169)

(assert (=> b!4699148 (= e!2931374 (Some!12168 (h!58782 lt!1860864)))))

(declare-fun b!4699149 () Bool)

(declare-fun e!2931371 () Bool)

(assert (=> b!4699149 (= e!2931371 e!2931372)))

(declare-fun res!1983622 () Bool)

(assert (=> b!4699149 (=> (not res!1983622) (not e!2931372))))

(assert (=> b!4699149 (= res!1983622 (isDefined!9424 lt!1861435))))

(declare-fun b!4699150 () Bool)

(declare-fun e!2931373 () Option!12169)

(assert (=> b!4699150 (= e!2931373 (getPair!494 (t!359837 lt!1860864) key!4653))))

(declare-fun b!4699151 () Bool)

(assert (=> b!4699151 (= e!2931373 None!12168)))

(declare-fun b!4699153 () Bool)

(assert (=> b!4699153 (= e!2931372 (contains!15777 lt!1860864 (get!17568 lt!1861435)))))

(declare-fun b!4699154 () Bool)

(declare-fun e!2931370 () Bool)

(assert (=> b!4699154 (= e!2931370 (not (containsKey!3145 lt!1860864 key!4653)))))

(declare-fun d!1494371 () Bool)

(assert (=> d!1494371 e!2931371))

(declare-fun res!1983620 () Bool)

(assert (=> d!1494371 (=> res!1983620 e!2931371)))

(assert (=> d!1494371 (= res!1983620 e!2931370)))

(declare-fun res!1983621 () Bool)

(assert (=> d!1494371 (=> (not res!1983621) (not e!2931370))))

(assert (=> d!1494371 (= res!1983621 (isEmpty!29122 lt!1861435))))

(assert (=> d!1494371 (= lt!1861435 e!2931374)))

(declare-fun c!803286 () Bool)

(assert (=> d!1494371 (= c!803286 (and ((_ is Cons!52509) lt!1860864) (= (_1!30271 (h!58782 lt!1860864)) key!4653)))))

(assert (=> d!1494371 (noDuplicateKeys!1890 lt!1860864)))

(assert (=> d!1494371 (= (getPair!494 lt!1860864 key!4653) lt!1861435)))

(declare-fun b!4699152 () Bool)

(assert (=> b!4699152 (= e!2931374 e!2931373)))

(declare-fun c!803287 () Bool)

(assert (=> b!4699152 (= c!803287 ((_ is Cons!52509) lt!1860864))))

(assert (= (and d!1494371 c!803286) b!4699148))

(assert (= (and d!1494371 (not c!803286)) b!4699152))

(assert (= (and b!4699152 c!803287) b!4699150))

(assert (= (and b!4699152 (not c!803287)) b!4699151))

(assert (= (and d!1494371 res!1983621) b!4699154))

(assert (= (and d!1494371 (not res!1983620)) b!4699149))

(assert (= (and b!4699149 res!1983622) b!4699147))

(assert (= (and b!4699147 res!1983623) b!4699153))

(declare-fun m!5611847 () Bool)

(assert (=> d!1494371 m!5611847))

(declare-fun m!5611849 () Bool)

(assert (=> d!1494371 m!5611849))

(declare-fun m!5611851 () Bool)

(assert (=> b!4699154 m!5611851))

(declare-fun m!5611853 () Bool)

(assert (=> b!4699149 m!5611853))

(declare-fun m!5611855 () Bool)

(assert (=> b!4699153 m!5611855))

(assert (=> b!4699153 m!5611855))

(declare-fun m!5611857 () Bool)

(assert (=> b!4699153 m!5611857))

(declare-fun m!5611859 () Bool)

(assert (=> b!4699150 m!5611859))

(assert (=> b!4699147 m!5611855))

(assert (=> b!4698703 d!1494371))

(declare-fun bs!1093698 () Bool)

(declare-fun d!1494373 () Bool)

(assert (= bs!1093698 (and d!1494373 d!1494283)))

(declare-fun lambda!209724 () Int)

(assert (=> bs!1093698 (= lambda!209724 lambda!209704)))

(declare-fun bs!1093699 () Bool)

(assert (= bs!1093699 (and d!1494373 d!1494267)))

(assert (=> bs!1093699 (not (= lambda!209724 lambda!209692))))

(declare-fun bs!1093700 () Bool)

(assert (= bs!1093700 (and d!1494373 d!1494265)))

(assert (=> bs!1093700 (= lambda!209724 lambda!209687)))

(declare-fun bs!1093701 () Bool)

(assert (= bs!1093701 (and d!1494373 d!1494323)))

(assert (=> bs!1093701 (= lambda!209724 lambda!209713)))

(declare-fun bs!1093702 () Bool)

(assert (= bs!1093702 (and d!1494373 d!1494315)))

(assert (=> bs!1093702 (= lambda!209724 lambda!209708)))

(declare-fun bs!1093703 () Bool)

(assert (= bs!1093703 (and d!1494373 d!1494223)))

(assert (=> bs!1093703 (= lambda!209724 lambda!209667)))

(declare-fun bs!1093704 () Bool)

(assert (= bs!1093704 (and d!1494373 d!1494209)))

(assert (=> bs!1093704 (= lambda!209724 lambda!209658)))

(declare-fun bs!1093705 () Bool)

(assert (= bs!1093705 (and d!1494373 d!1494203)))

(assert (=> bs!1093705 (= lambda!209724 lambda!209625)))

(declare-fun bs!1093706 () Bool)

(assert (= bs!1093706 (and d!1494373 d!1494221)))

(assert (=> bs!1093706 (= lambda!209724 lambda!209666)))

(declare-fun bs!1093707 () Bool)

(assert (= bs!1093707 (and d!1494373 d!1494319)))

(assert (=> bs!1093707 (= lambda!209724 lambda!209711)))

(declare-fun bs!1093708 () Bool)

(assert (= bs!1093708 (and d!1494373 start!476276)))

(assert (=> bs!1093708 (= lambda!209724 lambda!209567)))

(declare-fun bs!1093709 () Bool)

(assert (= bs!1093709 (and d!1494373 d!1494365)))

(assert (=> bs!1093709 (= lambda!209724 lambda!209717)))

(declare-fun e!2931379 () Bool)

(assert (=> d!1494373 e!2931379))

(declare-fun res!1983632 () Bool)

(assert (=> d!1494373 (=> (not res!1983632) (not e!2931379))))

(assert (=> d!1494373 (= res!1983632 (forall!11385 (toList!5669 lm!2023) lambda!209724))))

(declare-fun lt!1861458 () Unit!125744)

(declare-fun choose!32827 (ListLongMap!4199 K!13875 Hashable!6259) Unit!125744)

(assert (=> d!1494373 (= lt!1861458 (choose!32827 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494373 (forall!11385 (toList!5669 lm!2023) lambda!209724)))

(assert (=> d!1494373 (= (lemmaInGenMapThenGetPairDefined!290 lm!2023 key!4653 hashF!1323) lt!1861458)))

(declare-fun b!4699164 () Bool)

(declare-fun res!1983634 () Bool)

(assert (=> b!4699164 (=> (not res!1983634) (not e!2931379))))

(assert (=> b!4699164 (= res!1983634 (contains!15774 (extractMap!1916 (toList!5669 lm!2023)) key!4653))))

(declare-fun lt!1861457 () (_ BitVec 64))

(declare-fun e!2931380 () Bool)

(declare-fun lt!1861452 () List!52633)

(declare-fun b!4699166 () Bool)

(assert (=> b!4699166 (= e!2931380 (= (getValueByKey!1837 (toList!5669 lm!2023) lt!1861457) (Some!12172 lt!1861452)))))

(declare-fun b!4699165 () Bool)

(assert (=> b!4699165 (= e!2931379 (isDefined!9424 (getPair!494 (apply!12373 lm!2023 (hash!4150 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1861453 () Unit!125744)

(assert (=> b!4699165 (= lt!1861453 (forallContained!3492 (toList!5669 lm!2023) lambda!209724 (tuple2!53957 (hash!4150 hashF!1323 key!4653) (apply!12373 lm!2023 (hash!4150 hashF!1323 key!4653)))))))

(declare-fun lt!1861455 () Unit!125744)

(declare-fun lt!1861459 () Unit!125744)

(assert (=> b!4699165 (= lt!1861455 lt!1861459)))

(assert (=> b!4699165 (contains!15772 (toList!5669 lm!2023) (tuple2!53957 lt!1861457 lt!1861452))))

(assert (=> b!4699165 (= lt!1861459 (lemmaGetValueImpliesTupleContained!299 lm!2023 lt!1861457 lt!1861452))))

(assert (=> b!4699165 e!2931380))

(declare-fun res!1983635 () Bool)

(assert (=> b!4699165 (=> (not res!1983635) (not e!2931380))))

(assert (=> b!4699165 (= res!1983635 (contains!15773 lm!2023 lt!1861457))))

(assert (=> b!4699165 (= lt!1861452 (apply!12373 lm!2023 (hash!4150 hashF!1323 key!4653)))))

(assert (=> b!4699165 (= lt!1861457 (hash!4150 hashF!1323 key!4653))))

(declare-fun lt!1861454 () Unit!125744)

(declare-fun lt!1861456 () Unit!125744)

(assert (=> b!4699165 (= lt!1861454 lt!1861456)))

(assert (=> b!4699165 (contains!15773 lm!2023 (hash!4150 hashF!1323 key!4653))))

(assert (=> b!4699165 (= lt!1861456 (lemmaInGenMapThenLongMapContainsHash!700 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4699163 () Bool)

(declare-fun res!1983633 () Bool)

(assert (=> b!4699163 (=> (not res!1983633) (not e!2931379))))

(assert (=> b!4699163 (= res!1983633 (allKeysSameHashInMap!1804 lm!2023 hashF!1323))))

(assert (= (and d!1494373 res!1983632) b!4699163))

(assert (= (and b!4699163 res!1983633) b!4699164))

(assert (= (and b!4699164 res!1983634) b!4699165))

(assert (= (and b!4699165 res!1983635) b!4699166))

(declare-fun m!5611861 () Bool)

(assert (=> b!4699166 m!5611861))

(assert (=> b!4699163 m!5610641))

(declare-fun m!5611863 () Bool)

(assert (=> d!1494373 m!5611863))

(declare-fun m!5611865 () Bool)

(assert (=> d!1494373 m!5611865))

(assert (=> d!1494373 m!5611863))

(assert (=> b!4699165 m!5610695))

(assert (=> b!4699165 m!5611839))

(declare-fun m!5611867 () Bool)

(assert (=> b!4699165 m!5611867))

(declare-fun m!5611869 () Bool)

(assert (=> b!4699165 m!5611869))

(declare-fun m!5611871 () Bool)

(assert (=> b!4699165 m!5611871))

(assert (=> b!4699165 m!5610675))

(declare-fun m!5611873 () Bool)

(assert (=> b!4699165 m!5611873))

(assert (=> b!4699165 m!5611867))

(assert (=> b!4699165 m!5610695))

(assert (=> b!4699165 m!5610695))

(assert (=> b!4699165 m!5611873))

(declare-fun m!5611875 () Bool)

(assert (=> b!4699165 m!5611875))

(declare-fun m!5611877 () Bool)

(assert (=> b!4699165 m!5611877))

(declare-fun m!5611879 () Bool)

(assert (=> b!4699165 m!5611879))

(assert (=> b!4699164 m!5610711))

(assert (=> b!4699164 m!5610711))

(declare-fun m!5611881 () Bool)

(assert (=> b!4699164 m!5611881))

(assert (=> b!4698703 d!1494373))

(declare-fun d!1494375 () Bool)

(declare-fun res!1983636 () Bool)

(declare-fun e!2931381 () Bool)

(assert (=> d!1494375 (=> res!1983636 e!2931381)))

(assert (=> d!1494375 (= res!1983636 (and ((_ is Cons!52509) (t!359837 oldBucket!34)) (= (_1!30271 (h!58782 (t!359837 oldBucket!34))) key!4653)))))

(assert (=> d!1494375 (= (containsKey!3145 (t!359837 oldBucket!34) key!4653) e!2931381)))

(declare-fun b!4699167 () Bool)

(declare-fun e!2931382 () Bool)

(assert (=> b!4699167 (= e!2931381 e!2931382)))

(declare-fun res!1983637 () Bool)

(assert (=> b!4699167 (=> (not res!1983637) (not e!2931382))))

(assert (=> b!4699167 (= res!1983637 ((_ is Cons!52509) (t!359837 oldBucket!34)))))

(declare-fun b!4699168 () Bool)

(assert (=> b!4699168 (= e!2931382 (containsKey!3145 (t!359837 (t!359837 oldBucket!34)) key!4653))))

(assert (= (and d!1494375 (not res!1983636)) b!4699167))

(assert (= (and b!4699167 res!1983637) b!4699168))

(declare-fun m!5611883 () Bool)

(assert (=> b!4699168 m!5611883))

(assert (=> b!4698703 d!1494375))

(declare-fun d!1494377 () Bool)

(assert (=> d!1494377 (dynLambda!21741 lambda!209567 lt!1860872)))

(declare-fun lt!1861462 () Unit!125744)

(declare-fun choose!32828 (List!52634 Int tuple2!53956) Unit!125744)

(assert (=> d!1494377 (= lt!1861462 (choose!32828 (toList!5669 lm!2023) lambda!209567 lt!1860872))))

(declare-fun e!2931385 () Bool)

(assert (=> d!1494377 e!2931385))

(declare-fun res!1983640 () Bool)

(assert (=> d!1494377 (=> (not res!1983640) (not e!2931385))))

(assert (=> d!1494377 (= res!1983640 (forall!11385 (toList!5669 lm!2023) lambda!209567))))

(assert (=> d!1494377 (= (forallContained!3492 (toList!5669 lm!2023) lambda!209567 lt!1860872) lt!1861462)))

(declare-fun b!4699171 () Bool)

(assert (=> b!4699171 (= e!2931385 (contains!15772 (toList!5669 lm!2023) lt!1860872))))

(assert (= (and d!1494377 res!1983640) b!4699171))

(declare-fun b_lambda!177309 () Bool)

(assert (=> (not b_lambda!177309) (not d!1494377)))

(declare-fun m!5611885 () Bool)

(assert (=> d!1494377 m!5611885))

(declare-fun m!5611887 () Bool)

(assert (=> d!1494377 m!5611887))

(assert (=> d!1494377 m!5610697))

(assert (=> b!4699171 m!5610665))

(assert (=> b!4698703 d!1494377))

(declare-fun bs!1093710 () Bool)

(declare-fun b!4699176 () Bool)

(assert (= bs!1093710 (and b!4699176 d!1494139)))

(declare-fun lambda!209725 () Int)

(assert (=> bs!1093710 (= (= lt!1860871 lt!1861075) (= lambda!209725 lambda!209622))))

(declare-fun bs!1093711 () Bool)

(assert (= bs!1093711 (and b!4699176 b!4699018)))

(assert (=> bs!1093711 (= lambda!209725 lambda!209681)))

(declare-fun bs!1093712 () Bool)

(assert (= bs!1093712 (and b!4699176 b!4698920)))

(assert (=> bs!1093712 (= (= lt!1860871 lt!1861063) (= lambda!209725 lambda!209621))))

(declare-fun bs!1093713 () Bool)

(assert (= bs!1093713 (and b!4699176 b!4698981)))

(assert (=> bs!1093713 (= lambda!209725 lambda!209660)))

(declare-fun bs!1093714 () Bool)

(assert (= bs!1093714 (and b!4699176 b!4699012)))

(assert (=> bs!1093714 (= lambda!209725 lambda!209672)))

(assert (=> bs!1093712 (= lambda!209725 lambda!209620)))

(declare-fun bs!1093715 () Bool)

(assert (= bs!1093715 (and b!4699176 d!1494245)))

(assert (=> bs!1093715 (= (= lt!1860871 lt!1861258) (= lambda!209725 lambda!209676))))

(declare-fun bs!1093716 () Bool)

(assert (= bs!1093716 (and b!4699176 d!1494325)))

(assert (=> bs!1093716 (not (= lambda!209725 lambda!209714))))

(declare-fun bs!1093717 () Bool)

(assert (= bs!1093717 (and b!4699176 b!4698977)))

(assert (=> bs!1093717 (= lambda!209725 lambda!209661)))

(declare-fun bs!1093718 () Bool)

(assert (= bs!1093718 (and b!4699176 b!4699008)))

(assert (=> bs!1093718 (= lambda!209725 lambda!209673)))

(declare-fun bs!1093719 () Bool)

(assert (= bs!1093719 (and b!4699176 b!4699022)))

(assert (=> bs!1093719 (= lambda!209725 lambda!209679)))

(declare-fun bs!1093720 () Bool)

(assert (= bs!1093720 (and b!4699176 d!1494211)))

(assert (=> bs!1093720 (= (= lt!1860871 lt!1861189) (= lambda!209725 lambda!209664))))

(declare-fun bs!1093721 () Bool)

(assert (= bs!1093721 (and b!4699176 d!1494249)))

(assert (=> bs!1093721 (= (= lt!1860871 lt!1861303) (= lambda!209725 lambda!209684))))

(declare-fun bs!1093722 () Bool)

(assert (= bs!1093722 (and b!4699176 d!1494269)))

(assert (=> bs!1093722 (not (= lambda!209725 lambda!209696))))

(assert (=> bs!1093718 (= (= lt!1860871 lt!1861246) (= lambda!209725 lambda!209674))))

(assert (=> bs!1093711 (= (= lt!1860871 lt!1861291) (= lambda!209725 lambda!209682))))

(assert (=> bs!1093717 (= (= lt!1860871 lt!1861177) (= lambda!209725 lambda!209663))))

(declare-fun bs!1093723 () Bool)

(assert (= bs!1093723 (and b!4699176 b!4698924)))

(assert (=> bs!1093723 (= lambda!209725 lambda!209619)))

(assert (=> b!4699176 true))

(declare-fun bs!1093724 () Bool)

(declare-fun b!4699172 () Bool)

(assert (= bs!1093724 (and b!4699172 d!1494139)))

(declare-fun lambda!209726 () Int)

(assert (=> bs!1093724 (= (= lt!1860871 lt!1861075) (= lambda!209726 lambda!209622))))

(declare-fun bs!1093725 () Bool)

(assert (= bs!1093725 (and b!4699172 b!4698920)))

(assert (=> bs!1093725 (= (= lt!1860871 lt!1861063) (= lambda!209726 lambda!209621))))

(declare-fun bs!1093726 () Bool)

(assert (= bs!1093726 (and b!4699172 b!4698981)))

(assert (=> bs!1093726 (= lambda!209726 lambda!209660)))

(declare-fun bs!1093727 () Bool)

(assert (= bs!1093727 (and b!4699172 b!4699012)))

(assert (=> bs!1093727 (= lambda!209726 lambda!209672)))

(assert (=> bs!1093725 (= lambda!209726 lambda!209620)))

(declare-fun bs!1093728 () Bool)

(assert (= bs!1093728 (and b!4699172 d!1494245)))

(assert (=> bs!1093728 (= (= lt!1860871 lt!1861258) (= lambda!209726 lambda!209676))))

(declare-fun bs!1093729 () Bool)

(assert (= bs!1093729 (and b!4699172 d!1494325)))

(assert (=> bs!1093729 (not (= lambda!209726 lambda!209714))))

(declare-fun bs!1093730 () Bool)

(assert (= bs!1093730 (and b!4699172 b!4699176)))

(assert (=> bs!1093730 (= lambda!209726 lambda!209725)))

(declare-fun bs!1093731 () Bool)

(assert (= bs!1093731 (and b!4699172 b!4699018)))

(assert (=> bs!1093731 (= lambda!209726 lambda!209681)))

(declare-fun bs!1093732 () Bool)

(assert (= bs!1093732 (and b!4699172 b!4698977)))

(assert (=> bs!1093732 (= lambda!209726 lambda!209661)))

(declare-fun bs!1093733 () Bool)

(assert (= bs!1093733 (and b!4699172 b!4699008)))

(assert (=> bs!1093733 (= lambda!209726 lambda!209673)))

(declare-fun bs!1093734 () Bool)

(assert (= bs!1093734 (and b!4699172 b!4699022)))

(assert (=> bs!1093734 (= lambda!209726 lambda!209679)))

(declare-fun bs!1093735 () Bool)

(assert (= bs!1093735 (and b!4699172 d!1494211)))

(assert (=> bs!1093735 (= (= lt!1860871 lt!1861189) (= lambda!209726 lambda!209664))))

(declare-fun bs!1093736 () Bool)

(assert (= bs!1093736 (and b!4699172 d!1494249)))

(assert (=> bs!1093736 (= (= lt!1860871 lt!1861303) (= lambda!209726 lambda!209684))))

(declare-fun bs!1093737 () Bool)

(assert (= bs!1093737 (and b!4699172 d!1494269)))

(assert (=> bs!1093737 (not (= lambda!209726 lambda!209696))))

(assert (=> bs!1093733 (= (= lt!1860871 lt!1861246) (= lambda!209726 lambda!209674))))

(assert (=> bs!1093731 (= (= lt!1860871 lt!1861291) (= lambda!209726 lambda!209682))))

(assert (=> bs!1093732 (= (= lt!1860871 lt!1861177) (= lambda!209726 lambda!209663))))

(declare-fun bs!1093738 () Bool)

(assert (= bs!1093738 (and b!4699172 b!4698924)))

(assert (=> bs!1093738 (= lambda!209726 lambda!209619)))

(assert (=> b!4699172 true))

(declare-fun lt!1861466 () ListMap!5033)

(declare-fun lambda!209727 () Int)

(assert (=> bs!1093724 (= (= lt!1861466 lt!1861075) (= lambda!209727 lambda!209622))))

(assert (=> bs!1093725 (= (= lt!1861466 lt!1861063) (= lambda!209727 lambda!209621))))

(assert (=> bs!1093726 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209660))))

(assert (=> bs!1093727 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209672))))

(assert (=> bs!1093725 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209620))))

(assert (=> bs!1093728 (= (= lt!1861466 lt!1861258) (= lambda!209727 lambda!209676))))

(assert (=> b!4699172 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209726))))

(assert (=> bs!1093729 (not (= lambda!209727 lambda!209714))))

(assert (=> bs!1093730 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209725))))

(assert (=> bs!1093731 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209681))))

(assert (=> bs!1093732 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209661))))

(assert (=> bs!1093733 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209673))))

(assert (=> bs!1093734 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209679))))

(assert (=> bs!1093735 (= (= lt!1861466 lt!1861189) (= lambda!209727 lambda!209664))))

(assert (=> bs!1093736 (= (= lt!1861466 lt!1861303) (= lambda!209727 lambda!209684))))

(assert (=> bs!1093737 (not (= lambda!209727 lambda!209696))))

(assert (=> bs!1093733 (= (= lt!1861466 lt!1861246) (= lambda!209727 lambda!209674))))

(assert (=> bs!1093731 (= (= lt!1861466 lt!1861291) (= lambda!209727 lambda!209682))))

(assert (=> bs!1093732 (= (= lt!1861466 lt!1861177) (= lambda!209727 lambda!209663))))

(assert (=> bs!1093738 (= (= lt!1861466 lt!1860871) (= lambda!209727 lambda!209619))))

(assert (=> b!4699172 true))

(declare-fun bs!1093739 () Bool)

(declare-fun d!1494379 () Bool)

(assert (= bs!1093739 (and d!1494379 d!1494139)))

(declare-fun lambda!209728 () Int)

(declare-fun lt!1861478 () ListMap!5033)

(assert (=> bs!1093739 (= (= lt!1861478 lt!1861075) (= lambda!209728 lambda!209622))))

(declare-fun bs!1093740 () Bool)

(assert (= bs!1093740 (and d!1494379 b!4698920)))

(assert (=> bs!1093740 (= (= lt!1861478 lt!1861063) (= lambda!209728 lambda!209621))))

(declare-fun bs!1093741 () Bool)

(assert (= bs!1093741 (and d!1494379 b!4698981)))

(assert (=> bs!1093741 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209660))))

(declare-fun bs!1093742 () Bool)

(assert (= bs!1093742 (and d!1494379 b!4699012)))

(assert (=> bs!1093742 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209672))))

(assert (=> bs!1093740 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209620))))

(declare-fun bs!1093743 () Bool)

(assert (= bs!1093743 (and d!1494379 d!1494245)))

(assert (=> bs!1093743 (= (= lt!1861478 lt!1861258) (= lambda!209728 lambda!209676))))

(declare-fun bs!1093744 () Bool)

(assert (= bs!1093744 (and d!1494379 d!1494325)))

(assert (=> bs!1093744 (not (= lambda!209728 lambda!209714))))

(declare-fun bs!1093745 () Bool)

(assert (= bs!1093745 (and d!1494379 b!4699176)))

(assert (=> bs!1093745 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209725))))

(declare-fun bs!1093746 () Bool)

(assert (= bs!1093746 (and d!1494379 b!4699018)))

(assert (=> bs!1093746 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209681))))

(declare-fun bs!1093747 () Bool)

(assert (= bs!1093747 (and d!1494379 b!4698977)))

(assert (=> bs!1093747 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209661))))

(declare-fun bs!1093748 () Bool)

(assert (= bs!1093748 (and d!1494379 b!4699008)))

(assert (=> bs!1093748 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209673))))

(declare-fun bs!1093749 () Bool)

(assert (= bs!1093749 (and d!1494379 b!4699022)))

(assert (=> bs!1093749 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209679))))

(declare-fun bs!1093750 () Bool)

(assert (= bs!1093750 (and d!1494379 d!1494211)))

(assert (=> bs!1093750 (= (= lt!1861478 lt!1861189) (= lambda!209728 lambda!209664))))

(declare-fun bs!1093751 () Bool)

(assert (= bs!1093751 (and d!1494379 b!4699172)))

(assert (=> bs!1093751 (= (= lt!1861478 lt!1861466) (= lambda!209728 lambda!209727))))

(assert (=> bs!1093751 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209726))))

(declare-fun bs!1093752 () Bool)

(assert (= bs!1093752 (and d!1494379 d!1494249)))

(assert (=> bs!1093752 (= (= lt!1861478 lt!1861303) (= lambda!209728 lambda!209684))))

(declare-fun bs!1093753 () Bool)

(assert (= bs!1093753 (and d!1494379 d!1494269)))

(assert (=> bs!1093753 (not (= lambda!209728 lambda!209696))))

(assert (=> bs!1093748 (= (= lt!1861478 lt!1861246) (= lambda!209728 lambda!209674))))

(assert (=> bs!1093746 (= (= lt!1861478 lt!1861291) (= lambda!209728 lambda!209682))))

(assert (=> bs!1093747 (= (= lt!1861478 lt!1861177) (= lambda!209728 lambda!209663))))

(declare-fun bs!1093754 () Bool)

(assert (= bs!1093754 (and d!1494379 b!4698924)))

(assert (=> bs!1093754 (= (= lt!1861478 lt!1860871) (= lambda!209728 lambda!209619))))

(assert (=> d!1494379 true))

(declare-fun e!2931387 () Bool)

(assert (=> d!1494379 e!2931387))

(declare-fun res!1983642 () Bool)

(assert (=> d!1494379 (=> (not res!1983642) (not e!2931387))))

(assert (=> d!1494379 (= res!1983642 (forall!11387 (_2!30272 (h!58783 (toList!5669 lm!2023))) lambda!209728))))

(declare-fun e!2931388 () ListMap!5033)

(assert (=> d!1494379 (= lt!1861478 e!2931388)))

(declare-fun c!803288 () Bool)

(assert (=> d!1494379 (= c!803288 ((_ is Nil!52509) (_2!30272 (h!58783 (toList!5669 lm!2023)))))))

(assert (=> d!1494379 (noDuplicateKeys!1890 (_2!30272 (h!58783 (toList!5669 lm!2023))))))

(assert (=> d!1494379 (= (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (toList!5669 lm!2023))) lt!1860871) lt!1861478)))

(assert (=> b!4699172 (= e!2931388 lt!1861466)))

(declare-fun lt!1861482 () ListMap!5033)

(assert (=> b!4699172 (= lt!1861482 (+!2174 lt!1860871 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023))))))))

(assert (=> b!4699172 (= lt!1861466 (addToMapMapFromBucket!1322 (t!359837 (_2!30272 (h!58783 (toList!5669 lm!2023)))) (+!2174 lt!1860871 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023)))))))))

(declare-fun lt!1861472 () Unit!125744)

(declare-fun call!328505 () Unit!125744)

(assert (=> b!4699172 (= lt!1861472 call!328505)))

(assert (=> b!4699172 (forall!11387 (toList!5670 lt!1860871) lambda!209726)))

(declare-fun lt!1861483 () Unit!125744)

(assert (=> b!4699172 (= lt!1861483 lt!1861472)))

(assert (=> b!4699172 (forall!11387 (toList!5670 lt!1861482) lambda!209727)))

(declare-fun lt!1861474 () Unit!125744)

(declare-fun Unit!125844 () Unit!125744)

(assert (=> b!4699172 (= lt!1861474 Unit!125844)))

(declare-fun call!328507 () Bool)

(assert (=> b!4699172 call!328507))

(declare-fun lt!1861473 () Unit!125744)

(declare-fun Unit!125845 () Unit!125744)

(assert (=> b!4699172 (= lt!1861473 Unit!125845)))

(declare-fun lt!1861467 () Unit!125744)

(declare-fun Unit!125846 () Unit!125744)

(assert (=> b!4699172 (= lt!1861467 Unit!125846)))

(declare-fun lt!1861480 () Unit!125744)

(assert (=> b!4699172 (= lt!1861480 (forallContained!3493 (toList!5670 lt!1861482) lambda!209727 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023))))))))

(assert (=> b!4699172 (contains!15774 lt!1861482 (_1!30271 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023))))))))

(declare-fun lt!1861463 () Unit!125744)

(declare-fun Unit!125847 () Unit!125744)

(assert (=> b!4699172 (= lt!1861463 Unit!125847)))

(assert (=> b!4699172 (contains!15774 lt!1861466 (_1!30271 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023))))))))

(declare-fun lt!1861476 () Unit!125744)

(declare-fun Unit!125848 () Unit!125744)

(assert (=> b!4699172 (= lt!1861476 Unit!125848)))

(assert (=> b!4699172 (forall!11387 (_2!30272 (h!58783 (toList!5669 lm!2023))) lambda!209727)))

(declare-fun lt!1861481 () Unit!125744)

(declare-fun Unit!125849 () Unit!125744)

(assert (=> b!4699172 (= lt!1861481 Unit!125849)))

(declare-fun call!328506 () Bool)

(assert (=> b!4699172 call!328506))

(declare-fun lt!1861465 () Unit!125744)

(declare-fun Unit!125850 () Unit!125744)

(assert (=> b!4699172 (= lt!1861465 Unit!125850)))

(declare-fun lt!1861469 () Unit!125744)

(declare-fun Unit!125851 () Unit!125744)

(assert (=> b!4699172 (= lt!1861469 Unit!125851)))

(declare-fun lt!1861479 () Unit!125744)

(assert (=> b!4699172 (= lt!1861479 (addForallContainsKeyThenBeforeAdding!724 lt!1860871 lt!1861466 (_1!30271 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023))))) (_2!30271 (h!58782 (_2!30272 (h!58783 (toList!5669 lm!2023)))))))))

(assert (=> b!4699172 (forall!11387 (toList!5670 lt!1860871) lambda!209727)))

(declare-fun lt!1861468 () Unit!125744)

(assert (=> b!4699172 (= lt!1861468 lt!1861479)))

(assert (=> b!4699172 (forall!11387 (toList!5670 lt!1860871) lambda!209727)))

(declare-fun lt!1861475 () Unit!125744)

(declare-fun Unit!125852 () Unit!125744)

(assert (=> b!4699172 (= lt!1861475 Unit!125852)))

(declare-fun res!1983641 () Bool)

(assert (=> b!4699172 (= res!1983641 (forall!11387 (_2!30272 (h!58783 (toList!5669 lm!2023))) lambda!209727))))

(declare-fun e!2931386 () Bool)

(assert (=> b!4699172 (=> (not res!1983641) (not e!2931386))))

(assert (=> b!4699172 e!2931386))

(declare-fun lt!1861470 () Unit!125744)

(declare-fun Unit!125853 () Unit!125744)

(assert (=> b!4699172 (= lt!1861470 Unit!125853)))

(declare-fun b!4699173 () Bool)

(assert (=> b!4699173 (= e!2931387 (invariantList!1438 (toList!5670 lt!1861478)))))

(declare-fun b!4699174 () Bool)

(declare-fun res!1983643 () Bool)

(assert (=> b!4699174 (=> (not res!1983643) (not e!2931387))))

(assert (=> b!4699174 (= res!1983643 (forall!11387 (toList!5670 lt!1860871) lambda!209728))))

(declare-fun b!4699175 () Bool)

(assert (=> b!4699175 (= e!2931386 (forall!11387 (toList!5670 lt!1860871) lambda!209727))))

(declare-fun bm!328500 () Bool)

(assert (=> bm!328500 (= call!328506 (forall!11387 (ite c!803288 (toList!5670 lt!1860871) (toList!5670 lt!1861482)) (ite c!803288 lambda!209725 lambda!209727)))))

(declare-fun bm!328501 () Bool)

(assert (=> bm!328501 (= call!328505 (lemmaContainsAllItsOwnKeys!725 lt!1860871))))

(assert (=> b!4699176 (= e!2931388 lt!1860871)))

(declare-fun lt!1861477 () Unit!125744)

(assert (=> b!4699176 (= lt!1861477 call!328505)))

(assert (=> b!4699176 call!328506))

(declare-fun lt!1861464 () Unit!125744)

(assert (=> b!4699176 (= lt!1861464 lt!1861477)))

(assert (=> b!4699176 call!328507))

(declare-fun lt!1861471 () Unit!125744)

(declare-fun Unit!125854 () Unit!125744)

(assert (=> b!4699176 (= lt!1861471 Unit!125854)))

(declare-fun bm!328502 () Bool)

(assert (=> bm!328502 (= call!328507 (forall!11387 (ite c!803288 (toList!5670 lt!1860871) (t!359837 (_2!30272 (h!58783 (toList!5669 lm!2023))))) (ite c!803288 lambda!209725 lambda!209727)))))

(assert (= (and d!1494379 c!803288) b!4699176))

(assert (= (and d!1494379 (not c!803288)) b!4699172))

(assert (= (and b!4699172 res!1983641) b!4699175))

(assert (= (or b!4699176 b!4699172) bm!328501))

(assert (= (or b!4699176 b!4699172) bm!328502))

(assert (= (or b!4699176 b!4699172) bm!328500))

(assert (= (and d!1494379 res!1983642) b!4699174))

(assert (= (and b!4699174 res!1983643) b!4699173))

(declare-fun m!5611889 () Bool)

(assert (=> bm!328502 m!5611889))

(assert (=> bm!328501 m!5611109))

(declare-fun m!5611891 () Bool)

(assert (=> bm!328500 m!5611891))

(declare-fun m!5611893 () Bool)

(assert (=> b!4699174 m!5611893))

(declare-fun m!5611895 () Bool)

(assert (=> b!4699175 m!5611895))

(assert (=> b!4699172 m!5611895))

(declare-fun m!5611897 () Bool)

(assert (=> b!4699172 m!5611897))

(declare-fun m!5611899 () Bool)

(assert (=> b!4699172 m!5611899))

(declare-fun m!5611901 () Bool)

(assert (=> b!4699172 m!5611901))

(declare-fun m!5611903 () Bool)

(assert (=> b!4699172 m!5611903))

(declare-fun m!5611905 () Bool)

(assert (=> b!4699172 m!5611905))

(declare-fun m!5611907 () Bool)

(assert (=> b!4699172 m!5611907))

(assert (=> b!4699172 m!5611895))

(declare-fun m!5611909 () Bool)

(assert (=> b!4699172 m!5611909))

(declare-fun m!5611911 () Bool)

(assert (=> b!4699172 m!5611911))

(declare-fun m!5611913 () Bool)

(assert (=> b!4699172 m!5611913))

(assert (=> b!4699172 m!5611903))

(assert (=> b!4699172 m!5611901))

(declare-fun m!5611915 () Bool)

(assert (=> b!4699173 m!5611915))

(declare-fun m!5611917 () Bool)

(assert (=> d!1494379 m!5611917))

(declare-fun m!5611919 () Bool)

(assert (=> d!1494379 m!5611919))

(assert (=> b!4698714 d!1494379))

(declare-fun bs!1093755 () Bool)

(declare-fun d!1494381 () Bool)

(assert (= bs!1093755 (and d!1494381 d!1494283)))

(declare-fun lambda!209729 () Int)

(assert (=> bs!1093755 (= lambda!209729 lambda!209704)))

(declare-fun bs!1093756 () Bool)

(assert (= bs!1093756 (and d!1494381 d!1494267)))

(assert (=> bs!1093756 (not (= lambda!209729 lambda!209692))))

(declare-fun bs!1093757 () Bool)

(assert (= bs!1093757 (and d!1494381 d!1494265)))

(assert (=> bs!1093757 (= lambda!209729 lambda!209687)))

(declare-fun bs!1093758 () Bool)

(assert (= bs!1093758 (and d!1494381 d!1494323)))

(assert (=> bs!1093758 (= lambda!209729 lambda!209713)))

(declare-fun bs!1093759 () Bool)

(assert (= bs!1093759 (and d!1494381 d!1494315)))

(assert (=> bs!1093759 (= lambda!209729 lambda!209708)))

(declare-fun bs!1093760 () Bool)

(assert (= bs!1093760 (and d!1494381 d!1494223)))

(assert (=> bs!1093760 (= lambda!209729 lambda!209667)))

(declare-fun bs!1093761 () Bool)

(assert (= bs!1093761 (and d!1494381 d!1494373)))

(assert (=> bs!1093761 (= lambda!209729 lambda!209724)))

(declare-fun bs!1093762 () Bool)

(assert (= bs!1093762 (and d!1494381 d!1494209)))

(assert (=> bs!1093762 (= lambda!209729 lambda!209658)))

(declare-fun bs!1093763 () Bool)

(assert (= bs!1093763 (and d!1494381 d!1494203)))

(assert (=> bs!1093763 (= lambda!209729 lambda!209625)))

(declare-fun bs!1093764 () Bool)

(assert (= bs!1093764 (and d!1494381 d!1494221)))

(assert (=> bs!1093764 (= lambda!209729 lambda!209666)))

(declare-fun bs!1093765 () Bool)

(assert (= bs!1093765 (and d!1494381 d!1494319)))

(assert (=> bs!1093765 (= lambda!209729 lambda!209711)))

(declare-fun bs!1093766 () Bool)

(assert (= bs!1093766 (and d!1494381 start!476276)))

(assert (=> bs!1093766 (= lambda!209729 lambda!209567)))

(declare-fun bs!1093767 () Bool)

(assert (= bs!1093767 (and d!1494381 d!1494365)))

(assert (=> bs!1093767 (= lambda!209729 lambda!209717)))

(declare-fun lt!1861484 () ListMap!5033)

(assert (=> d!1494381 (invariantList!1438 (toList!5670 lt!1861484))))

(declare-fun e!2931389 () ListMap!5033)

(assert (=> d!1494381 (= lt!1861484 e!2931389)))

(declare-fun c!803289 () Bool)

(assert (=> d!1494381 (= c!803289 ((_ is Cons!52510) (t!359838 (toList!5669 lm!2023))))))

(assert (=> d!1494381 (forall!11385 (t!359838 (toList!5669 lm!2023)) lambda!209729)))

(assert (=> d!1494381 (= (extractMap!1916 (t!359838 (toList!5669 lm!2023))) lt!1861484)))

(declare-fun b!4699177 () Bool)

(assert (=> b!4699177 (= e!2931389 (addToMapMapFromBucket!1322 (_2!30272 (h!58783 (t!359838 (toList!5669 lm!2023)))) (extractMap!1916 (t!359838 (t!359838 (toList!5669 lm!2023))))))))

(declare-fun b!4699178 () Bool)

(assert (=> b!4699178 (= e!2931389 (ListMap!5034 Nil!52509))))

(assert (= (and d!1494381 c!803289) b!4699177))

(assert (= (and d!1494381 (not c!803289)) b!4699178))

(declare-fun m!5611921 () Bool)

(assert (=> d!1494381 m!5611921))

(declare-fun m!5611923 () Bool)

(assert (=> d!1494381 m!5611923))

(declare-fun m!5611925 () Bool)

(assert (=> b!4699177 m!5611925))

(assert (=> b!4699177 m!5611925))

(declare-fun m!5611927 () Bool)

(assert (=> b!4699177 m!5611927))

(assert (=> b!4698714 d!1494381))

(declare-fun d!1494383 () Bool)

(assert (=> d!1494383 (= (tail!8696 lm!2023) (ListLongMap!4200 (tail!8695 (toList!5669 lm!2023))))))

(declare-fun bs!1093768 () Bool)

(assert (= bs!1093768 d!1494383))

(declare-fun m!5611929 () Bool)

(assert (=> bs!1093768 m!5611929))

(assert (=> b!4698714 d!1494383))

(declare-fun b!4699183 () Bool)

(declare-fun e!2931392 () Bool)

(declare-fun tp!1346536 () Bool)

(declare-fun tp!1346537 () Bool)

(assert (=> b!4699183 (= e!2931392 (and tp!1346536 tp!1346537))))

(assert (=> b!4698711 (= tp!1346520 e!2931392)))

(assert (= (and b!4698711 ((_ is Cons!52510) (toList!5669 lm!2023))) b!4699183))

(declare-fun e!2931395 () Bool)

(declare-fun tp!1346540 () Bool)

(declare-fun b!4699188 () Bool)

(assert (=> b!4699188 (= e!2931395 (and tp_is_empty!30853 tp_is_empty!30855 tp!1346540))))

(assert (=> b!4698721 (= tp!1346521 e!2931395)))

(assert (= (and b!4698721 ((_ is Cons!52509) (t!359837 newBucket!218))) b!4699188))

(declare-fun b!4699189 () Bool)

(declare-fun e!2931396 () Bool)

(declare-fun tp!1346541 () Bool)

(assert (=> b!4699189 (= e!2931396 (and tp_is_empty!30853 tp_is_empty!30855 tp!1346541))))

(assert (=> b!4698709 (= tp!1346519 e!2931396)))

(assert (= (and b!4698709 ((_ is Cons!52509) (t!359837 oldBucket!34))) b!4699189))

(declare-fun b_lambda!177311 () Bool)

(assert (= b_lambda!177307 (or start!476276 b_lambda!177311)))

(declare-fun bs!1093769 () Bool)

(declare-fun d!1494385 () Bool)

(assert (= bs!1093769 (and d!1494385 start!476276)))

(assert (=> bs!1093769 (= (dynLambda!21741 lambda!209567 (h!58783 (toList!5669 lm!2023))) (noDuplicateKeys!1890 (_2!30272 (h!58783 (toList!5669 lm!2023)))))))

(assert (=> bs!1093769 m!5611919))

(assert (=> b!4699099 d!1494385))

(declare-fun b_lambda!177313 () Bool)

(assert (= b_lambda!177293 (or start!476276 b_lambda!177313)))

(declare-fun bs!1093770 () Bool)

(declare-fun d!1494387 () Bool)

(assert (= bs!1093770 (and d!1494387 start!476276)))

(assert (=> bs!1093770 (= (dynLambda!21741 lambda!209567 (h!58783 lt!1860859)) (noDuplicateKeys!1890 (_2!30272 (h!58783 lt!1860859))))))

(declare-fun m!5611931 () Bool)

(assert (=> bs!1093770 m!5611931))

(assert (=> b!4698728 d!1494387))

(declare-fun b_lambda!177315 () Bool)

(assert (= b_lambda!177309 (or start!476276 b_lambda!177315)))

(declare-fun bs!1093771 () Bool)

(declare-fun d!1494389 () Bool)

(assert (= bs!1093771 (and d!1494389 start!476276)))

(assert (=> bs!1093771 (= (dynLambda!21741 lambda!209567 lt!1860872) (noDuplicateKeys!1890 (_2!30272 lt!1860872)))))

(declare-fun m!5611933 () Bool)

(assert (=> bs!1093771 m!5611933))

(assert (=> d!1494377 d!1494389))

(check-sat (not d!1494281) (not d!1494223) (not bm!328463) (not bs!1093770) tp_is_empty!30855 (not b!4699173) (not d!1494381) (not b!4699124) (not d!1494319) (not d!1494265) (not b!4699031) (not b!4698960) (not b!4699007) (not d!1494261) (not b!4699104) (not b!4699034) (not d!1494311) (not d!1494229) (not b!4699174) (not d!1494323) (not b!4699107) (not b!4699097) (not b!4698962) tp_is_empty!30853 (not b_lambda!177311) (not d!1494357) (not d!1494227) (not d!1494315) (not d!1494321) (not d!1494243) (not bm!328462) (not bs!1093771) (not b!4699043) (not b!4698994) (not d!1494367) (not b!4699011) (not d!1494217) (not b!4699153) (not bm!328493) (not d!1494211) (not bm!328478) (not b!4699175) (not b!4699105) (not b!4699164) (not d!1494269) (not b!4698773) (not bm!328490) (not d!1494293) (not d!1494099) (not d!1494235) (not b!4699021) (not b!4699036) (not bm!328502) (not b!4699076) (not b!4699051) (not b!4699183) (not d!1494205) (not b!4699147) (not b!4699108) (not bm!328484) (not d!1494349) (not b!4698957) (not d!1494209) (not b!4699010) (not b!4698956) (not d!1494325) (not d!1494355) (not b!4698797) (not b!4699019) (not b!4699030) (not d!1494343) (not d!1494267) (not d!1494271) (not b!4699102) (not d!1494351) (not b!4699172) (not b!4699154) (not b!4699018) (not b!4699168) (not b!4699122) (not b!4698985) (not bm!328479) (not bm!328500) (not d!1494345) (not d!1494373) (not d!1494347) (not d!1494337) (not b!4698984) (not d!1494377) (not b!4699150) (not b_lambda!177313) (not d!1494339) (not d!1494379) (not b!4699055) (not b!4698931) (not b!4699100) (not d!1494203) (not d!1494231) (not b!4698798) (not bm!328477) (not b!4699070) (not b!4699101) (not d!1494277) (not bm!328464) (not b!4698997) (not d!1494245) (not d!1494241) (not d!1494139) (not b!4699004) (not b!4699188) (not b!4699033) (not b!4698921) (not b!4698955) (not bm!328492) (not b!4699008) (not bm!328491) (not d!1494341) (not b!4698923) (not b!4699020) (not b!4699103) (not b!4699189) (not b!4699177) (not d!1494207) (not b!4699106) (not b!4698978) (not b!4699114) (not b!4698821) (not d!1494371) (not d!1494383) (not d!1494097) (not d!1494221) (not bm!328486) (not b!4698979) (not b!4699005) (not b!4698958) (not b!4699171) (not b!4699075) (not d!1494307) (not b!4699082) (not b!4698774) (not bs!1093769) (not d!1494125) (not b!4699029) (not b!4698729) (not b!4698977) (not d!1494249) (not b!4699149) (not d!1494363) (not b!4699130) (not b!4698920) (not b!4698922) (not b!4699009) (not b_lambda!177315) (not b!4698980) (not bm!328467) (not b!4699163) (not bm!328501) (not d!1494361) (not d!1494109) (not d!1494333) (not b!4699052) (not d!1494365) (not d!1494353) (not b!4699032) (not bm!328485) (not d!1494283) (not b!4699006) (not d!1494359) (not b!4698959) (not b!4699078) (not b!4699165) (not b!4699166))
(check-sat)
