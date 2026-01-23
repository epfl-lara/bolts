; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475456 () Bool)

(assert start!475456)

(declare-fun b!4694901 () Bool)

(declare-fun e!2928812 () Bool)

(declare-datatypes ((K!13840 0))(
  ( (K!13841 (val!19343 Int)) )
))
(declare-datatypes ((V!14086 0))(
  ( (V!14087 (val!19344 Int)) )
))
(declare-datatypes ((tuple2!53898 0))(
  ( (tuple2!53899 (_1!30243 K!13840) (_2!30243 V!14086)) )
))
(declare-datatypes ((List!52593 0))(
  ( (Nil!52469) (Cons!52469 (h!58730 tuple2!53898) (t!359785 List!52593)) )
))
(declare-datatypes ((tuple2!53900 0))(
  ( (tuple2!53901 (_1!30244 (_ BitVec 64)) (_2!30244 List!52593)) )
))
(declare-datatypes ((List!52594 0))(
  ( (Nil!52470) (Cons!52470 (h!58731 tuple2!53900) (t!359786 List!52594)) )
))
(declare-fun lt!1855866 () List!52594)

(declare-fun lambda!208505 () Int)

(declare-fun forall!11359 (List!52594 Int) Bool)

(assert (=> b!4694901 (= e!2928812 (forall!11359 lt!1855866 lambda!208505))))

(declare-fun b!4694902 () Bool)

(declare-fun e!2928809 () Bool)

(declare-fun e!2928810 () Bool)

(assert (=> b!4694902 (= e!2928809 e!2928810)))

(declare-fun res!1981113 () Bool)

(assert (=> b!4694902 (=> (not res!1981113) (not e!2928810))))

(declare-datatypes ((ListMap!5005 0))(
  ( (ListMap!5006 (toList!5641 List!52593)) )
))
(declare-fun lt!1855856 () ListMap!5005)

(declare-fun key!4653 () K!13840)

(declare-fun contains!15706 (ListMap!5005 K!13840) Bool)

(assert (=> b!4694902 (= res!1981113 (contains!15706 lt!1855856 key!4653))))

(declare-datatypes ((ListLongMap!4171 0))(
  ( (ListLongMap!4172 (toList!5642 List!52594)) )
))
(declare-fun lm!2023 () ListLongMap!4171)

(declare-fun extractMap!1902 (List!52594) ListMap!5005)

(assert (=> b!4694902 (= lt!1855856 (extractMap!1902 (toList!5642 lm!2023)))))

(declare-fun b!4694903 () Bool)

(declare-fun res!1981121 () Bool)

(declare-fun e!2928807 () Bool)

(assert (=> b!4694903 (=> res!1981121 e!2928807)))

(declare-fun oldBucket!34 () List!52593)

(declare-fun lt!1855867 () tuple2!53898)

(assert (=> b!4694903 (= res!1981121 (not (= (h!58730 oldBucket!34) lt!1855867)))))

(declare-fun b!4694904 () Bool)

(declare-fun e!2928814 () Bool)

(declare-fun e!2928803 () Bool)

(assert (=> b!4694904 (= e!2928814 e!2928803)))

(declare-fun res!1981125 () Bool)

(assert (=> b!4694904 (=> res!1981125 e!2928803)))

(declare-fun containsKey!3107 (List!52593 K!13840) Bool)

(assert (=> b!4694904 (= res!1981125 (not (containsKey!3107 (t!359785 oldBucket!34) key!4653)))))

(assert (=> b!4694904 (containsKey!3107 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!125029 0))(
  ( (Unit!125030) )
))
(declare-fun lt!1855868 () Unit!125029)

(declare-datatypes ((Hashable!6245 0))(
  ( (HashableExt!6244 (__x!31948 Int)) )
))
(declare-fun hashF!1323 () Hashable!6245)

(declare-fun lemmaGetPairDefinedThenContainsKey!228 (List!52593 K!13840 Hashable!6245) Unit!125029)

(assert (=> b!4694904 (= lt!1855868 (lemmaGetPairDefinedThenContainsKey!228 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1855880 () List!52593)

(declare-datatypes ((Option!12131 0))(
  ( (None!12130) (Some!12130 (v!46577 tuple2!53898)) )
))
(declare-fun isDefined!9386 (Option!12131) Bool)

(declare-fun getPair!480 (List!52593 K!13840) Option!12131)

(assert (=> b!4694904 (isDefined!9386 (getPair!480 lt!1855880 key!4653))))

(declare-fun lt!1855858 () tuple2!53900)

(declare-fun lt!1855860 () Unit!125029)

(declare-fun forallContained!3466 (List!52594 Int tuple2!53900) Unit!125029)

(assert (=> b!4694904 (= lt!1855860 (forallContained!3466 (toList!5642 lm!2023) lambda!208505 lt!1855858))))

(declare-fun contains!15707 (List!52594 tuple2!53900) Bool)

(assert (=> b!4694904 (contains!15707 (toList!5642 lm!2023) lt!1855858)))

(declare-fun lt!1855870 () (_ BitVec 64))

(assert (=> b!4694904 (= lt!1855858 (tuple2!53901 lt!1855870 lt!1855880))))

(declare-fun lt!1855852 () Unit!125029)

(declare-fun lemmaGetValueImpliesTupleContained!285 (ListLongMap!4171 (_ BitVec 64) List!52593) Unit!125029)

(assert (=> b!4694904 (= lt!1855852 (lemmaGetValueImpliesTupleContained!285 lm!2023 lt!1855870 lt!1855880))))

(declare-fun apply!12359 (ListLongMap!4171 (_ BitVec 64)) List!52593)

(assert (=> b!4694904 (= lt!1855880 (apply!12359 lm!2023 lt!1855870))))

(declare-fun contains!15708 (ListLongMap!4171 (_ BitVec 64)) Bool)

(assert (=> b!4694904 (contains!15708 lm!2023 lt!1855870)))

(declare-fun lt!1855878 () Unit!125029)

(declare-fun lemmaInGenMapThenLongMapContainsHash!686 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> b!4694904 (= lt!1855878 (lemmaInGenMapThenLongMapContainsHash!686 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1855853 () Unit!125029)

(declare-fun lemmaInGenMapThenGetPairDefined!276 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> b!4694904 (= lt!1855853 (lemmaInGenMapThenGetPairDefined!276 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4694905 () Bool)

(declare-fun res!1981108 () Bool)

(assert (=> b!4694905 (=> res!1981108 e!2928807)))

(declare-fun lt!1855875 () ListMap!5005)

(declare-fun lt!1855873 () ListMap!5005)

(declare-fun eq!1035 (ListMap!5005 ListMap!5005) Bool)

(declare-fun +!2160 (ListMap!5005 tuple2!53898) ListMap!5005)

(assert (=> b!4694905 (= res!1981108 (not (eq!1035 lt!1855875 (+!2160 lt!1855873 lt!1855867))))))

(declare-fun b!4694906 () Bool)

(declare-fun res!1981123 () Bool)

(assert (=> b!4694906 (=> (not res!1981123) (not e!2928809))))

(declare-fun newBucket!218 () List!52593)

(declare-fun removePairForKey!1471 (List!52593 K!13840) List!52593)

(assert (=> b!4694906 (= res!1981123 (= (removePairForKey!1471 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4694907 () Bool)

(declare-fun e!2928808 () Bool)

(assert (=> b!4694907 (= e!2928807 e!2928808)))

(declare-fun res!1981114 () Bool)

(assert (=> b!4694907 (=> res!1981114 e!2928808)))

(declare-fun lt!1855877 () ListMap!5005)

(declare-fun lt!1855872 () ListMap!5005)

(assert (=> b!4694907 (= res!1981114 (not (eq!1035 lt!1855877 lt!1855872)))))

(declare-fun lt!1855876 () ListMap!5005)

(declare-fun -!680 (ListMap!5005 K!13840) ListMap!5005)

(assert (=> b!4694907 (= lt!1855872 (-!680 lt!1855876 key!4653))))

(declare-fun lt!1855854 () tuple2!53900)

(assert (=> b!4694907 (= lt!1855877 (extractMap!1902 (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023)))))))

(declare-fun lt!1855863 () List!52594)

(declare-fun lt!1855859 () tuple2!53900)

(assert (=> b!4694907 (eq!1035 (extractMap!1902 (Cons!52470 lt!1855854 lt!1855863)) (-!680 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)) key!4653))))

(declare-fun tail!8653 (List!52594) List!52594)

(assert (=> b!4694907 (= lt!1855863 (tail!8653 lt!1855866))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1855865 () List!52593)

(assert (=> b!4694907 (= lt!1855854 (tuple2!53901 hash!405 lt!1855865))))

(declare-fun lt!1855874 () Unit!125029)

(declare-fun lt!1855862 () ListLongMap!4171)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!50 (ListLongMap!4171 (_ BitVec 64) List!52593 List!52593 K!13840 Hashable!6245) Unit!125029)

(assert (=> b!4694907 (= lt!1855874 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!50 lt!1855862 hash!405 (t!359785 oldBucket!34) lt!1855865 key!4653 hashF!1323))))

(declare-fun b!4694908 () Bool)

(declare-fun e!2928813 () Bool)

(assert (=> b!4694908 (= e!2928813 (not e!2928814))))

(declare-fun res!1981122 () Bool)

(assert (=> b!4694908 (=> res!1981122 e!2928814)))

(get-info :version)

(assert (=> b!4694908 (= res!1981122 (or (and ((_ is Cons!52469) oldBucket!34) (= (_1!30243 (h!58730 oldBucket!34)) key!4653)) (not ((_ is Cons!52469) oldBucket!34)) (= (_1!30243 (h!58730 oldBucket!34)) key!4653)))))

(declare-fun lt!1855869 () ListMap!5005)

(declare-fun addToMapMapFromBucket!1308 (List!52593 ListMap!5005) ListMap!5005)

(assert (=> b!4694908 (= lt!1855856 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (toList!5642 lm!2023))) lt!1855869))))

(assert (=> b!4694908 (= lt!1855869 (extractMap!1902 (t!359786 (toList!5642 lm!2023))))))

(declare-fun tail!8654 (ListLongMap!4171) ListLongMap!4171)

(assert (=> b!4694908 (= (t!359786 (toList!5642 lm!2023)) (toList!5642 (tail!8654 lm!2023)))))

(declare-fun b!4694909 () Bool)

(declare-fun res!1981120 () Bool)

(assert (=> b!4694909 (=> (not res!1981120) (not e!2928809))))

(declare-fun noDuplicateKeys!1876 (List!52593) Bool)

(assert (=> b!4694909 (= res!1981120 (noDuplicateKeys!1876 newBucket!218))))

(declare-fun b!4694910 () Bool)

(declare-fun tp_is_empty!30797 () Bool)

(declare-fun tp!1346273 () Bool)

(declare-fun tp_is_empty!30799 () Bool)

(declare-fun e!2928806 () Bool)

(assert (=> b!4694910 (= e!2928806 (and tp_is_empty!30797 tp_is_empty!30799 tp!1346273))))

(declare-fun b!4694911 () Bool)

(declare-fun res!1981126 () Bool)

(declare-fun e!2928802 () Bool)

(assert (=> b!4694911 (=> (not res!1981126) (not e!2928802))))

(declare-fun allKeysSameHashInMap!1790 (ListLongMap!4171 Hashable!6245) Bool)

(assert (=> b!4694911 (= res!1981126 (allKeysSameHashInMap!1790 lm!2023 hashF!1323))))

(declare-fun tp!1346275 () Bool)

(declare-fun e!2928804 () Bool)

(declare-fun b!4694912 () Bool)

(assert (=> b!4694912 (= e!2928804 (and tp_is_empty!30797 tp_is_empty!30799 tp!1346275))))

(declare-fun res!1981111 () Bool)

(assert (=> start!475456 (=> (not res!1981111) (not e!2928809))))

(assert (=> start!475456 (= res!1981111 (forall!11359 (toList!5642 lm!2023) lambda!208505))))

(assert (=> start!475456 e!2928809))

(declare-fun e!2928805 () Bool)

(declare-fun inv!67714 (ListLongMap!4171) Bool)

(assert (=> start!475456 (and (inv!67714 lm!2023) e!2928805)))

(assert (=> start!475456 tp_is_empty!30797))

(assert (=> start!475456 e!2928806))

(assert (=> start!475456 true))

(assert (=> start!475456 e!2928804))

(declare-fun b!4694913 () Bool)

(declare-fun res!1981127 () Bool)

(assert (=> b!4694913 (=> (not res!1981127) (not e!2928802))))

(declare-fun allKeysSameHash!1702 (List!52593 (_ BitVec 64) Hashable!6245) Bool)

(assert (=> b!4694913 (= res!1981127 (allKeysSameHash!1702 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4694914 () Bool)

(assert (=> b!4694914 (= e!2928810 e!2928802)))

(declare-fun res!1981124 () Bool)

(assert (=> b!4694914 (=> (not res!1981124) (not e!2928802))))

(assert (=> b!4694914 (= res!1981124 (= lt!1855870 hash!405))))

(declare-fun hash!4113 (Hashable!6245 K!13840) (_ BitVec 64))

(assert (=> b!4694914 (= lt!1855870 (hash!4113 hashF!1323 key!4653))))

(declare-fun b!4694915 () Bool)

(declare-fun res!1981119 () Bool)

(declare-fun e!2928811 () Bool)

(assert (=> b!4694915 (=> res!1981119 e!2928811)))

(assert (=> b!4694915 (= res!1981119 (not (= (removePairForKey!1471 (t!359785 oldBucket!34) key!4653) lt!1855865)))))

(declare-fun b!4694916 () Bool)

(assert (=> b!4694916 (= e!2928808 e!2928812)))

(declare-fun res!1981116 () Bool)

(assert (=> b!4694916 (=> res!1981116 e!2928812)))

(assert (=> b!4694916 (= res!1981116 (not (= (-!680 (+!2160 lt!1855876 (h!58730 oldBucket!34)) key!4653) (+!2160 lt!1855872 (h!58730 oldBucket!34)))))))

(assert (=> b!4694916 (= (-!680 (+!2160 lt!1855876 (h!58730 oldBucket!34)) key!4653) (+!2160 lt!1855872 (h!58730 oldBucket!34)))))

(declare-fun lt!1855879 () Unit!125029)

(declare-fun addRemoveCommutativeForDiffKeys!81 (ListMap!5005 K!13840 V!14086 K!13840) Unit!125029)

(assert (=> b!4694916 (= lt!1855879 (addRemoveCommutativeForDiffKeys!81 lt!1855876 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34)) key!4653))))

(declare-fun b!4694917 () Bool)

(declare-fun res!1981112 () Bool)

(assert (=> b!4694917 (=> (not res!1981112) (not e!2928813))))

(assert (=> b!4694917 (= res!1981112 ((_ is Cons!52470) (toList!5642 lm!2023)))))

(declare-fun b!4694918 () Bool)

(declare-fun res!1981118 () Bool)

(assert (=> b!4694918 (=> (not res!1981118) (not e!2928809))))

(assert (=> b!4694918 (= res!1981118 (noDuplicateKeys!1876 oldBucket!34))))

(declare-fun b!4694919 () Bool)

(assert (=> b!4694919 (= e!2928802 e!2928813)))

(declare-fun res!1981115 () Bool)

(assert (=> b!4694919 (=> (not res!1981115) (not e!2928813))))

(declare-fun lt!1855851 () tuple2!53900)

(declare-fun head!10015 (List!52594) tuple2!53900)

(assert (=> b!4694919 (= res!1981115 (= (head!10015 (toList!5642 lm!2023)) lt!1855851))))

(assert (=> b!4694919 (= lt!1855851 (tuple2!53901 hash!405 oldBucket!34))))

(declare-fun b!4694920 () Bool)

(assert (=> b!4694920 (= e!2928811 e!2928807)))

(declare-fun res!1981117 () Bool)

(assert (=> b!4694920 (=> res!1981117 e!2928807)))

(assert (=> b!4694920 (= res!1981117 (not (eq!1035 lt!1855875 (+!2160 lt!1855873 (h!58730 oldBucket!34)))))))

(declare-fun lt!1855861 () List!52593)

(assert (=> b!4694920 (= lt!1855873 (extractMap!1902 (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023)))))))

(assert (=> b!4694920 (= lt!1855875 (extractMap!1902 (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023)))))))

(assert (=> b!4694920 (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855867 lt!1855865) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1855867))))

(declare-fun lt!1855857 () Unit!125029)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!284 (tuple2!53898 List!52593 ListMap!5005) Unit!125029)

(assert (=> b!4694920 (= lt!1855857 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!284 lt!1855867 lt!1855865 lt!1855869))))

(declare-fun head!10016 (List!52593) tuple2!53898)

(assert (=> b!4694920 (= lt!1855867 (head!10016 newBucket!218))))

(declare-fun lt!1855864 () tuple2!53898)

(assert (=> b!4694920 (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855864 lt!1855861) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1855864))))

(declare-fun lt!1855855 () Unit!125029)

(assert (=> b!4694920 (= lt!1855855 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!284 lt!1855864 lt!1855861 lt!1855869))))

(assert (=> b!4694920 (= lt!1855864 (head!10016 oldBucket!34))))

(assert (=> b!4694920 (contains!15706 lt!1855876 key!4653)))

(assert (=> b!4694920 (= lt!1855876 (extractMap!1902 lt!1855866))))

(declare-fun lt!1855871 () Unit!125029)

(declare-fun lemmaListContainsThenExtractedMapContains!468 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> b!4694920 (= lt!1855871 (lemmaListContainsThenExtractedMapContains!468 lt!1855862 key!4653 hashF!1323))))

(assert (=> b!4694920 (= lt!1855862 (ListLongMap!4172 lt!1855866))))

(assert (=> b!4694920 (= lt!1855866 (Cons!52470 lt!1855859 (t!359786 (toList!5642 lm!2023))))))

(assert (=> b!4694920 (= lt!1855859 (tuple2!53901 hash!405 (t!359785 oldBucket!34)))))

(declare-fun b!4694921 () Bool)

(declare-fun tp!1346274 () Bool)

(assert (=> b!4694921 (= e!2928805 tp!1346274)))

(declare-fun b!4694922 () Bool)

(assert (=> b!4694922 (= e!2928803 e!2928811)))

(declare-fun res!1981109 () Bool)

(assert (=> b!4694922 (=> res!1981109 e!2928811)))

(assert (=> b!4694922 (= res!1981109 (not (= (removePairForKey!1471 lt!1855861 key!4653) lt!1855865)))))

(declare-fun tail!8655 (List!52593) List!52593)

(assert (=> b!4694922 (= lt!1855865 (tail!8655 newBucket!218))))

(assert (=> b!4694922 (= lt!1855861 (tail!8655 oldBucket!34))))

(declare-fun b!4694923 () Bool)

(declare-fun res!1981110 () Bool)

(assert (=> b!4694923 (=> (not res!1981110) (not e!2928809))))

(assert (=> b!4694923 (= res!1981110 (allKeysSameHash!1702 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!475456 res!1981111) b!4694918))

(assert (= (and b!4694918 res!1981118) b!4694909))

(assert (= (and b!4694909 res!1981120) b!4694906))

(assert (= (and b!4694906 res!1981123) b!4694923))

(assert (= (and b!4694923 res!1981110) b!4694902))

(assert (= (and b!4694902 res!1981113) b!4694914))

(assert (= (and b!4694914 res!1981124) b!4694913))

(assert (= (and b!4694913 res!1981127) b!4694911))

(assert (= (and b!4694911 res!1981126) b!4694919))

(assert (= (and b!4694919 res!1981115) b!4694917))

(assert (= (and b!4694917 res!1981112) b!4694908))

(assert (= (and b!4694908 (not res!1981122)) b!4694904))

(assert (= (and b!4694904 (not res!1981125)) b!4694922))

(assert (= (and b!4694922 (not res!1981109)) b!4694915))

(assert (= (and b!4694915 (not res!1981119)) b!4694920))

(assert (= (and b!4694920 (not res!1981117)) b!4694903))

(assert (= (and b!4694903 (not res!1981121)) b!4694905))

(assert (= (and b!4694905 (not res!1981108)) b!4694907))

(assert (= (and b!4694907 (not res!1981114)) b!4694916))

(assert (= (and b!4694916 (not res!1981116)) b!4694901))

(assert (= start!475456 b!4694921))

(assert (= (and start!475456 ((_ is Cons!52469) oldBucket!34)) b!4694910))

(assert (= (and start!475456 ((_ is Cons!52469) newBucket!218)) b!4694912))

(declare-fun m!5602041 () Bool)

(assert (=> b!4694914 m!5602041))

(declare-fun m!5602043 () Bool)

(assert (=> b!4694902 m!5602043))

(declare-fun m!5602045 () Bool)

(assert (=> b!4694902 m!5602045))

(declare-fun m!5602047 () Bool)

(assert (=> b!4694920 m!5602047))

(declare-fun m!5602049 () Bool)

(assert (=> b!4694920 m!5602049))

(declare-fun m!5602051 () Bool)

(assert (=> b!4694920 m!5602051))

(declare-fun m!5602053 () Bool)

(assert (=> b!4694920 m!5602053))

(declare-fun m!5602055 () Bool)

(assert (=> b!4694920 m!5602055))

(declare-fun m!5602057 () Bool)

(assert (=> b!4694920 m!5602057))

(declare-fun m!5602059 () Bool)

(assert (=> b!4694920 m!5602059))

(declare-fun m!5602061 () Bool)

(assert (=> b!4694920 m!5602061))

(declare-fun m!5602063 () Bool)

(assert (=> b!4694920 m!5602063))

(declare-fun m!5602065 () Bool)

(assert (=> b!4694920 m!5602065))

(declare-fun m!5602067 () Bool)

(assert (=> b!4694920 m!5602067))

(assert (=> b!4694920 m!5602059))

(declare-fun m!5602069 () Bool)

(assert (=> b!4694920 m!5602069))

(assert (=> b!4694920 m!5602065))

(declare-fun m!5602071 () Bool)

(assert (=> b!4694920 m!5602071))

(declare-fun m!5602073 () Bool)

(assert (=> b!4694920 m!5602073))

(declare-fun m!5602075 () Bool)

(assert (=> b!4694920 m!5602075))

(declare-fun m!5602077 () Bool)

(assert (=> b!4694920 m!5602077))

(declare-fun m!5602079 () Bool)

(assert (=> b!4694920 m!5602079))

(assert (=> b!4694920 m!5602061))

(declare-fun m!5602081 () Bool)

(assert (=> b!4694920 m!5602081))

(assert (=> b!4694920 m!5602063))

(assert (=> b!4694920 m!5602067))

(declare-fun m!5602083 () Bool)

(assert (=> b!4694920 m!5602083))

(assert (=> b!4694920 m!5602049))

(assert (=> b!4694920 m!5602079))

(declare-fun m!5602085 () Bool)

(assert (=> b!4694916 m!5602085))

(assert (=> b!4694916 m!5602085))

(declare-fun m!5602087 () Bool)

(assert (=> b!4694916 m!5602087))

(declare-fun m!5602089 () Bool)

(assert (=> b!4694916 m!5602089))

(declare-fun m!5602091 () Bool)

(assert (=> b!4694916 m!5602091))

(declare-fun m!5602093 () Bool)

(assert (=> b!4694901 m!5602093))

(declare-fun m!5602095 () Bool)

(assert (=> b!4694923 m!5602095))

(declare-fun m!5602097 () Bool)

(assert (=> b!4694918 m!5602097))

(declare-fun m!5602099 () Bool)

(assert (=> b!4694915 m!5602099))

(declare-fun m!5602101 () Bool)

(assert (=> b!4694919 m!5602101))

(declare-fun m!5602103 () Bool)

(assert (=> b!4694907 m!5602103))

(declare-fun m!5602105 () Bool)

(assert (=> b!4694907 m!5602105))

(declare-fun m!5602107 () Bool)

(assert (=> b!4694907 m!5602107))

(declare-fun m!5602109 () Bool)

(assert (=> b!4694907 m!5602109))

(declare-fun m!5602111 () Bool)

(assert (=> b!4694907 m!5602111))

(declare-fun m!5602113 () Bool)

(assert (=> b!4694907 m!5602113))

(assert (=> b!4694907 m!5602113))

(declare-fun m!5602115 () Bool)

(assert (=> b!4694907 m!5602115))

(assert (=> b!4694907 m!5602111))

(assert (=> b!4694907 m!5602115))

(declare-fun m!5602117 () Bool)

(assert (=> b!4694907 m!5602117))

(declare-fun m!5602119 () Bool)

(assert (=> b!4694907 m!5602119))

(declare-fun m!5602121 () Bool)

(assert (=> b!4694906 m!5602121))

(declare-fun m!5602123 () Bool)

(assert (=> b!4694905 m!5602123))

(assert (=> b!4694905 m!5602123))

(declare-fun m!5602125 () Bool)

(assert (=> b!4694905 m!5602125))

(declare-fun m!5602127 () Bool)

(assert (=> b!4694911 m!5602127))

(declare-fun m!5602129 () Bool)

(assert (=> b!4694909 m!5602129))

(declare-fun m!5602131 () Bool)

(assert (=> b!4694913 m!5602131))

(declare-fun m!5602133 () Bool)

(assert (=> b!4694922 m!5602133))

(declare-fun m!5602135 () Bool)

(assert (=> b!4694922 m!5602135))

(declare-fun m!5602137 () Bool)

(assert (=> b!4694922 m!5602137))

(declare-fun m!5602139 () Bool)

(assert (=> b!4694904 m!5602139))

(declare-fun m!5602141 () Bool)

(assert (=> b!4694904 m!5602141))

(declare-fun m!5602143 () Bool)

(assert (=> b!4694904 m!5602143))

(declare-fun m!5602145 () Bool)

(assert (=> b!4694904 m!5602145))

(declare-fun m!5602147 () Bool)

(assert (=> b!4694904 m!5602147))

(assert (=> b!4694904 m!5602147))

(declare-fun m!5602149 () Bool)

(assert (=> b!4694904 m!5602149))

(declare-fun m!5602151 () Bool)

(assert (=> b!4694904 m!5602151))

(declare-fun m!5602153 () Bool)

(assert (=> b!4694904 m!5602153))

(declare-fun m!5602155 () Bool)

(assert (=> b!4694904 m!5602155))

(declare-fun m!5602157 () Bool)

(assert (=> b!4694904 m!5602157))

(declare-fun m!5602159 () Bool)

(assert (=> b!4694904 m!5602159))

(declare-fun m!5602161 () Bool)

(assert (=> b!4694904 m!5602161))

(declare-fun m!5602163 () Bool)

(assert (=> b!4694908 m!5602163))

(declare-fun m!5602165 () Bool)

(assert (=> b!4694908 m!5602165))

(declare-fun m!5602167 () Bool)

(assert (=> b!4694908 m!5602167))

(declare-fun m!5602169 () Bool)

(assert (=> start!475456 m!5602169))

(declare-fun m!5602171 () Bool)

(assert (=> start!475456 m!5602171))

(check-sat (not start!475456) (not b!4694914) (not b!4694915) (not b!4694902) (not b!4694908) (not b!4694910) (not b!4694901) (not b!4694905) (not b!4694920) (not b!4694922) (not b!4694919) (not b!4694923) (not b!4694912) (not b!4694913) (not b!4694907) tp_is_empty!30797 (not b!4694906) (not b!4694916) (not b!4694911) (not b!4694909) (not b!4694918) tp_is_empty!30799 (not b!4694921) (not b!4694904))
(check-sat)
(get-model)

(declare-fun d!1492404 () Bool)

(declare-fun res!1981141 () Bool)

(declare-fun e!2928837 () Bool)

(assert (=> d!1492404 (=> res!1981141 e!2928837)))

(assert (=> d!1492404 (= res!1981141 (not ((_ is Cons!52469) newBucket!218)))))

(assert (=> d!1492404 (= (noDuplicateKeys!1876 newBucket!218) e!2928837)))

(declare-fun b!4694955 () Bool)

(declare-fun e!2928838 () Bool)

(assert (=> b!4694955 (= e!2928837 e!2928838)))

(declare-fun res!1981142 () Bool)

(assert (=> b!4694955 (=> (not res!1981142) (not e!2928838))))

(assert (=> b!4694955 (= res!1981142 (not (containsKey!3107 (t!359785 newBucket!218) (_1!30243 (h!58730 newBucket!218)))))))

(declare-fun b!4694956 () Bool)

(assert (=> b!4694956 (= e!2928838 (noDuplicateKeys!1876 (t!359785 newBucket!218)))))

(assert (= (and d!1492404 (not res!1981141)) b!4694955))

(assert (= (and b!4694955 res!1981142) b!4694956))

(declare-fun m!5602217 () Bool)

(assert (=> b!4694955 m!5602217))

(declare-fun m!5602225 () Bool)

(assert (=> b!4694956 m!5602225))

(assert (=> b!4694909 d!1492404))

(declare-fun d!1492412 () Bool)

(declare-fun e!2928844 () Bool)

(assert (=> d!1492412 e!2928844))

(declare-fun res!1981148 () Bool)

(assert (=> d!1492412 (=> (not res!1981148) (not e!2928844))))

(declare-fun lt!1855907 () ListMap!5005)

(assert (=> d!1492412 (= res!1981148 (contains!15706 lt!1855907 (_1!30243 lt!1855864)))))

(declare-fun lt!1855904 () List!52593)

(assert (=> d!1492412 (= lt!1855907 (ListMap!5006 lt!1855904))))

(declare-fun lt!1855906 () Unit!125029)

(declare-fun lt!1855905 () Unit!125029)

(assert (=> d!1492412 (= lt!1855906 lt!1855905)))

(declare-datatypes ((Option!12133 0))(
  ( (None!12132) (Some!12132 (v!46583 V!14086)) )
))
(declare-fun getValueByKey!1811 (List!52593 K!13840) Option!12133)

(assert (=> d!1492412 (= (getValueByKey!1811 lt!1855904 (_1!30243 lt!1855864)) (Some!12132 (_2!30243 lt!1855864)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1016 (List!52593 K!13840 V!14086) Unit!125029)

(assert (=> d!1492412 (= lt!1855905 (lemmaContainsTupThenGetReturnValue!1016 lt!1855904 (_1!30243 lt!1855864) (_2!30243 lt!1855864)))))

(declare-fun insertNoDuplicatedKeys!524 (List!52593 K!13840 V!14086) List!52593)

(assert (=> d!1492412 (= lt!1855904 (insertNoDuplicatedKeys!524 (toList!5641 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869)) (_1!30243 lt!1855864) (_2!30243 lt!1855864)))))

(assert (=> d!1492412 (= (+!2160 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1855864) lt!1855907)))

(declare-fun b!4694966 () Bool)

(declare-fun res!1981149 () Bool)

(assert (=> b!4694966 (=> (not res!1981149) (not e!2928844))))

(assert (=> b!4694966 (= res!1981149 (= (getValueByKey!1811 (toList!5641 lt!1855907) (_1!30243 lt!1855864)) (Some!12132 (_2!30243 lt!1855864))))))

(declare-fun b!4694967 () Bool)

(declare-fun contains!15711 (List!52593 tuple2!53898) Bool)

(assert (=> b!4694967 (= e!2928844 (contains!15711 (toList!5641 lt!1855907) lt!1855864))))

(assert (= (and d!1492412 res!1981148) b!4694966))

(assert (= (and b!4694966 res!1981149) b!4694967))

(declare-fun m!5602261 () Bool)

(assert (=> d!1492412 m!5602261))

(declare-fun m!5602263 () Bool)

(assert (=> d!1492412 m!5602263))

(declare-fun m!5602265 () Bool)

(assert (=> d!1492412 m!5602265))

(declare-fun m!5602267 () Bool)

(assert (=> d!1492412 m!5602267))

(declare-fun m!5602269 () Bool)

(assert (=> b!4694966 m!5602269))

(declare-fun m!5602271 () Bool)

(assert (=> b!4694967 m!5602271))

(assert (=> b!4694920 d!1492412))

(declare-fun b!4695067 () Bool)

(assert (=> b!4695067 true))

(declare-fun bs!1090273 () Bool)

(declare-fun b!4695065 () Bool)

(assert (= bs!1090273 (and b!4695065 b!4695067)))

(declare-fun lambda!208587 () Int)

(declare-fun lambda!208586 () Int)

(assert (=> bs!1090273 (= lambda!208587 lambda!208586)))

(assert (=> b!4695065 true))

(declare-fun lt!1856132 () ListMap!5005)

(declare-fun lambda!208588 () Int)

(assert (=> bs!1090273 (= (= lt!1856132 lt!1855869) (= lambda!208588 lambda!208586))))

(assert (=> b!4695065 (= (= lt!1856132 lt!1855869) (= lambda!208588 lambda!208587))))

(assert (=> b!4695065 true))

(declare-fun bs!1090274 () Bool)

(declare-fun d!1492422 () Bool)

(assert (= bs!1090274 (and d!1492422 b!4695067)))

(declare-fun lambda!208589 () Int)

(declare-fun lt!1856127 () ListMap!5005)

(assert (=> bs!1090274 (= (= lt!1856127 lt!1855869) (= lambda!208589 lambda!208586))))

(declare-fun bs!1090275 () Bool)

(assert (= bs!1090275 (and d!1492422 b!4695065)))

(assert (=> bs!1090275 (= (= lt!1856127 lt!1855869) (= lambda!208589 lambda!208587))))

(assert (=> bs!1090275 (= (= lt!1856127 lt!1856132) (= lambda!208589 lambda!208588))))

(assert (=> d!1492422 true))

(declare-fun b!4695064 () Bool)

(declare-fun res!1981196 () Bool)

(declare-fun e!2928902 () Bool)

(assert (=> b!4695064 (=> (not res!1981196) (not e!2928902))))

(declare-fun forall!11361 (List!52593 Int) Bool)

(assert (=> b!4695064 (= res!1981196 (forall!11361 (toList!5641 lt!1855869) lambda!208589))))

(declare-fun c!802652 () Bool)

(declare-fun call!328184 () Bool)

(declare-fun bm!328178 () Bool)

(assert (=> bm!328178 (= call!328184 (forall!11361 (ite c!802652 (toList!5641 lt!1855869) (t!359785 lt!1855861)) (ite c!802652 lambda!208586 lambda!208588)))))

(declare-fun bm!328179 () Bool)

(declare-fun call!328183 () Unit!125029)

(declare-fun lemmaContainsAllItsOwnKeys!714 (ListMap!5005) Unit!125029)

(assert (=> bm!328179 (= call!328183 (lemmaContainsAllItsOwnKeys!714 lt!1855869))))

(declare-fun call!328185 () Bool)

(declare-fun bm!328180 () Bool)

(assert (=> bm!328180 (= call!328185 (forall!11361 (toList!5641 lt!1855869) (ite c!802652 lambda!208586 lambda!208588)))))

(declare-fun e!2928901 () ListMap!5005)

(assert (=> b!4695065 (= e!2928901 lt!1856132)))

(declare-fun lt!1856119 () ListMap!5005)

(assert (=> b!4695065 (= lt!1856119 (+!2160 lt!1855869 (h!58730 lt!1855861)))))

(assert (=> b!4695065 (= lt!1856132 (addToMapMapFromBucket!1308 (t!359785 lt!1855861) (+!2160 lt!1855869 (h!58730 lt!1855861))))))

(declare-fun lt!1856130 () Unit!125029)

(assert (=> b!4695065 (= lt!1856130 call!328183)))

(assert (=> b!4695065 (forall!11361 (toList!5641 lt!1855869) lambda!208587)))

(declare-fun lt!1856135 () Unit!125029)

(assert (=> b!4695065 (= lt!1856135 lt!1856130)))

(assert (=> b!4695065 (forall!11361 (toList!5641 lt!1856119) lambda!208588)))

(declare-fun lt!1856131 () Unit!125029)

(declare-fun Unit!125044 () Unit!125029)

(assert (=> b!4695065 (= lt!1856131 Unit!125044)))

(assert (=> b!4695065 call!328184))

(declare-fun lt!1856136 () Unit!125029)

(declare-fun Unit!125045 () Unit!125029)

(assert (=> b!4695065 (= lt!1856136 Unit!125045)))

(declare-fun lt!1856122 () Unit!125029)

(declare-fun Unit!125046 () Unit!125029)

(assert (=> b!4695065 (= lt!1856122 Unit!125046)))

(declare-fun lt!1856123 () Unit!125029)

(declare-fun forallContained!3468 (List!52593 Int tuple2!53898) Unit!125029)

(assert (=> b!4695065 (= lt!1856123 (forallContained!3468 (toList!5641 lt!1856119) lambda!208588 (h!58730 lt!1855861)))))

(assert (=> b!4695065 (contains!15706 lt!1856119 (_1!30243 (h!58730 lt!1855861)))))

(declare-fun lt!1856134 () Unit!125029)

(declare-fun Unit!125047 () Unit!125029)

(assert (=> b!4695065 (= lt!1856134 Unit!125047)))

(assert (=> b!4695065 (contains!15706 lt!1856132 (_1!30243 (h!58730 lt!1855861)))))

(declare-fun lt!1856121 () Unit!125029)

(declare-fun Unit!125048 () Unit!125029)

(assert (=> b!4695065 (= lt!1856121 Unit!125048)))

(assert (=> b!4695065 (forall!11361 lt!1855861 lambda!208588)))

(declare-fun lt!1856125 () Unit!125029)

(declare-fun Unit!125049 () Unit!125029)

(assert (=> b!4695065 (= lt!1856125 Unit!125049)))

(assert (=> b!4695065 (forall!11361 (toList!5641 lt!1856119) lambda!208588)))

(declare-fun lt!1856138 () Unit!125029)

(declare-fun Unit!125050 () Unit!125029)

(assert (=> b!4695065 (= lt!1856138 Unit!125050)))

(declare-fun lt!1856128 () Unit!125029)

(declare-fun Unit!125051 () Unit!125029)

(assert (=> b!4695065 (= lt!1856128 Unit!125051)))

(declare-fun lt!1856137 () Unit!125029)

(declare-fun addForallContainsKeyThenBeforeAdding!713 (ListMap!5005 ListMap!5005 K!13840 V!14086) Unit!125029)

(assert (=> b!4695065 (= lt!1856137 (addForallContainsKeyThenBeforeAdding!713 lt!1855869 lt!1856132 (_1!30243 (h!58730 lt!1855861)) (_2!30243 (h!58730 lt!1855861))))))

(assert (=> b!4695065 (forall!11361 (toList!5641 lt!1855869) lambda!208588)))

(declare-fun lt!1856120 () Unit!125029)

(assert (=> b!4695065 (= lt!1856120 lt!1856137)))

(assert (=> b!4695065 (forall!11361 (toList!5641 lt!1855869) lambda!208588)))

(declare-fun lt!1856118 () Unit!125029)

(declare-fun Unit!125052 () Unit!125029)

(assert (=> b!4695065 (= lt!1856118 Unit!125052)))

(declare-fun res!1981197 () Bool)

(assert (=> b!4695065 (= res!1981197 (forall!11361 lt!1855861 lambda!208588))))

(declare-fun e!2928903 () Bool)

(assert (=> b!4695065 (=> (not res!1981197) (not e!2928903))))

(assert (=> b!4695065 e!2928903))

(declare-fun lt!1856133 () Unit!125029)

(declare-fun Unit!125053 () Unit!125029)

(assert (=> b!4695065 (= lt!1856133 Unit!125053)))

(declare-fun b!4695066 () Bool)

(assert (=> b!4695066 (= e!2928903 call!328185)))

(assert (=> d!1492422 e!2928902))

(declare-fun res!1981198 () Bool)

(assert (=> d!1492422 (=> (not res!1981198) (not e!2928902))))

(assert (=> d!1492422 (= res!1981198 (forall!11361 lt!1855861 lambda!208589))))

(assert (=> d!1492422 (= lt!1856127 e!2928901)))

(assert (=> d!1492422 (= c!802652 ((_ is Nil!52469) lt!1855861))))

(assert (=> d!1492422 (noDuplicateKeys!1876 lt!1855861)))

(assert (=> d!1492422 (= (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1856127)))

(assert (=> b!4695067 (= e!2928901 lt!1855869)))

(declare-fun lt!1856124 () Unit!125029)

(assert (=> b!4695067 (= lt!1856124 call!328183)))

(assert (=> b!4695067 call!328184))

(declare-fun lt!1856129 () Unit!125029)

(assert (=> b!4695067 (= lt!1856129 lt!1856124)))

(assert (=> b!4695067 call!328185))

(declare-fun lt!1856126 () Unit!125029)

(declare-fun Unit!125054 () Unit!125029)

(assert (=> b!4695067 (= lt!1856126 Unit!125054)))

(declare-fun b!4695068 () Bool)

(declare-fun invariantList!1426 (List!52593) Bool)

(assert (=> b!4695068 (= e!2928902 (invariantList!1426 (toList!5641 lt!1856127)))))

(assert (= (and d!1492422 c!802652) b!4695067))

(assert (= (and d!1492422 (not c!802652)) b!4695065))

(assert (= (and b!4695065 res!1981197) b!4695066))

(assert (= (or b!4695067 b!4695065) bm!328179))

(assert (= (or b!4695067 b!4695066) bm!328180))

(assert (= (or b!4695067 b!4695065) bm!328178))

(assert (= (and d!1492422 res!1981198) b!4695064))

(assert (= (and b!4695064 res!1981196) b!4695068))

(declare-fun m!5602473 () Bool)

(assert (=> bm!328178 m!5602473))

(declare-fun m!5602475 () Bool)

(assert (=> b!4695068 m!5602475))

(declare-fun m!5602477 () Bool)

(assert (=> bm!328180 m!5602477))

(declare-fun m!5602479 () Bool)

(assert (=> b!4695064 m!5602479))

(declare-fun m!5602481 () Bool)

(assert (=> bm!328179 m!5602481))

(declare-fun m!5602483 () Bool)

(assert (=> d!1492422 m!5602483))

(declare-fun m!5602485 () Bool)

(assert (=> d!1492422 m!5602485))

(declare-fun m!5602487 () Bool)

(assert (=> b!4695065 m!5602487))

(declare-fun m!5602489 () Bool)

(assert (=> b!4695065 m!5602489))

(declare-fun m!5602491 () Bool)

(assert (=> b!4695065 m!5602491))

(declare-fun m!5602493 () Bool)

(assert (=> b!4695065 m!5602493))

(declare-fun m!5602495 () Bool)

(assert (=> b!4695065 m!5602495))

(assert (=> b!4695065 m!5602493))

(declare-fun m!5602497 () Bool)

(assert (=> b!4695065 m!5602497))

(declare-fun m!5602499 () Bool)

(assert (=> b!4695065 m!5602499))

(declare-fun m!5602501 () Bool)

(assert (=> b!4695065 m!5602501))

(declare-fun m!5602503 () Bool)

(assert (=> b!4695065 m!5602503))

(assert (=> b!4695065 m!5602489))

(assert (=> b!4695065 m!5602491))

(assert (=> b!4695065 m!5602497))

(declare-fun m!5602505 () Bool)

(assert (=> b!4695065 m!5602505))

(assert (=> b!4694920 d!1492422))

(declare-fun d!1492458 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9207 (List!52593) (InoxSet tuple2!53898))

(assert (=> d!1492458 (= (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855864 lt!1855861) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1855864)) (= (content!9207 (toList!5641 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855864 lt!1855861) lt!1855869))) (content!9207 (toList!5641 (+!2160 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1855864)))))))

(declare-fun bs!1090284 () Bool)

(assert (= bs!1090284 d!1492458))

(declare-fun m!5602539 () Bool)

(assert (=> bs!1090284 m!5602539))

(declare-fun m!5602541 () Bool)

(assert (=> bs!1090284 m!5602541))

(assert (=> b!4694920 d!1492458))

(declare-fun d!1492462 () Bool)

(assert (=> d!1492462 (= (head!10016 oldBucket!34) (h!58730 oldBucket!34))))

(assert (=> b!4694920 d!1492462))

(declare-fun bs!1090296 () Bool)

(declare-fun d!1492466 () Bool)

(assert (= bs!1090296 (and d!1492466 start!475456)))

(declare-fun lambda!208594 () Int)

(assert (=> bs!1090296 (= lambda!208594 lambda!208505)))

(declare-fun lt!1856169 () ListMap!5005)

(assert (=> d!1492466 (invariantList!1426 (toList!5641 lt!1856169))))

(declare-fun e!2928910 () ListMap!5005)

(assert (=> d!1492466 (= lt!1856169 e!2928910)))

(declare-fun c!802656 () Bool)

(assert (=> d!1492466 (= c!802656 ((_ is Cons!52470) (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023)))))))

(assert (=> d!1492466 (forall!11359 (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023))) lambda!208594)))

(assert (=> d!1492466 (= (extractMap!1902 (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023)))) lt!1856169)))

(declare-fun b!4695082 () Bool)

(assert (=> b!4695082 (= e!2928910 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023))))) (extractMap!1902 (t!359786 (Cons!52470 (tuple2!53901 hash!405 lt!1855861) (t!359786 (toList!5642 lm!2023)))))))))

(declare-fun b!4695083 () Bool)

(assert (=> b!4695083 (= e!2928910 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492466 c!802656) b!4695082))

(assert (= (and d!1492466 (not c!802656)) b!4695083))

(declare-fun m!5602561 () Bool)

(assert (=> d!1492466 m!5602561))

(declare-fun m!5602563 () Bool)

(assert (=> d!1492466 m!5602563))

(declare-fun m!5602565 () Bool)

(assert (=> b!4695082 m!5602565))

(assert (=> b!4695082 m!5602565))

(declare-fun m!5602567 () Bool)

(assert (=> b!4695082 m!5602567))

(assert (=> b!4694920 d!1492466))

(declare-fun bs!1090339 () Bool)

(declare-fun d!1492474 () Bool)

(assert (= bs!1090339 (and d!1492474 start!475456)))

(declare-fun lambda!208602 () Int)

(assert (=> bs!1090339 (= lambda!208602 lambda!208505)))

(declare-fun bs!1090340 () Bool)

(assert (= bs!1090340 (and d!1492474 d!1492466)))

(assert (=> bs!1090340 (= lambda!208602 lambda!208594)))

(assert (=> d!1492474 (contains!15706 (extractMap!1902 (toList!5642 lt!1855862)) key!4653)))

(declare-fun lt!1856193 () Unit!125029)

(declare-fun choose!32704 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> d!1492474 (= lt!1856193 (choose!32704 lt!1855862 key!4653 hashF!1323))))

(assert (=> d!1492474 (forall!11359 (toList!5642 lt!1855862) lambda!208602)))

(assert (=> d!1492474 (= (lemmaListContainsThenExtractedMapContains!468 lt!1855862 key!4653 hashF!1323) lt!1856193)))

(declare-fun bs!1090342 () Bool)

(assert (= bs!1090342 d!1492474))

(declare-fun m!5602601 () Bool)

(assert (=> bs!1090342 m!5602601))

(assert (=> bs!1090342 m!5602601))

(declare-fun m!5602603 () Bool)

(assert (=> bs!1090342 m!5602603))

(declare-fun m!5602605 () Bool)

(assert (=> bs!1090342 m!5602605))

(declare-fun m!5602607 () Bool)

(assert (=> bs!1090342 m!5602607))

(assert (=> b!4694920 d!1492474))

(declare-fun d!1492478 () Bool)

(assert (=> d!1492478 (= (head!10016 newBucket!218) (h!58730 newBucket!218))))

(assert (=> b!4694920 d!1492478))

(declare-fun bs!1090346 () Bool)

(declare-fun b!4695092 () Bool)

(assert (= bs!1090346 (and b!4695092 b!4695067)))

(declare-fun lambda!208604 () Int)

(assert (=> bs!1090346 (= lambda!208604 lambda!208586)))

(declare-fun bs!1090347 () Bool)

(assert (= bs!1090347 (and b!4695092 b!4695065)))

(assert (=> bs!1090347 (= lambda!208604 lambda!208587)))

(assert (=> bs!1090347 (= (= lt!1855869 lt!1856132) (= lambda!208604 lambda!208588))))

(declare-fun bs!1090348 () Bool)

(assert (= bs!1090348 (and b!4695092 d!1492422)))

(assert (=> bs!1090348 (= (= lt!1855869 lt!1856127) (= lambda!208604 lambda!208589))))

(assert (=> b!4695092 true))

(declare-fun bs!1090349 () Bool)

(declare-fun b!4695090 () Bool)

(assert (= bs!1090349 (and b!4695090 b!4695067)))

(declare-fun lambda!208605 () Int)

(assert (=> bs!1090349 (= lambda!208605 lambda!208586)))

(declare-fun bs!1090350 () Bool)

(assert (= bs!1090350 (and b!4695090 b!4695092)))

(assert (=> bs!1090350 (= lambda!208605 lambda!208604)))

(declare-fun bs!1090351 () Bool)

(assert (= bs!1090351 (and b!4695090 b!4695065)))

(assert (=> bs!1090351 (= lambda!208605 lambda!208587)))

(declare-fun bs!1090352 () Bool)

(assert (= bs!1090352 (and b!4695090 d!1492422)))

(assert (=> bs!1090352 (= (= lt!1855869 lt!1856127) (= lambda!208605 lambda!208589))))

(assert (=> bs!1090351 (= (= lt!1855869 lt!1856132) (= lambda!208605 lambda!208588))))

(assert (=> b!4695090 true))

(declare-fun lambda!208606 () Int)

(declare-fun lt!1856208 () ListMap!5005)

(assert (=> bs!1090349 (= (= lt!1856208 lt!1855869) (= lambda!208606 lambda!208586))))

(assert (=> bs!1090350 (= (= lt!1856208 lt!1855869) (= lambda!208606 lambda!208604))))

(assert (=> bs!1090351 (= (= lt!1856208 lt!1855869) (= lambda!208606 lambda!208587))))

(assert (=> b!4695090 (= (= lt!1856208 lt!1855869) (= lambda!208606 lambda!208605))))

(assert (=> bs!1090352 (= (= lt!1856208 lt!1856127) (= lambda!208606 lambda!208589))))

(assert (=> bs!1090351 (= (= lt!1856208 lt!1856132) (= lambda!208606 lambda!208588))))

(assert (=> b!4695090 true))

(declare-fun bs!1090362 () Bool)

(declare-fun d!1492480 () Bool)

(assert (= bs!1090362 (and d!1492480 b!4695090)))

(declare-fun lambda!208608 () Int)

(declare-fun lt!1856203 () ListMap!5005)

(assert (=> bs!1090362 (= (= lt!1856203 lt!1856208) (= lambda!208608 lambda!208606))))

(declare-fun bs!1090364 () Bool)

(assert (= bs!1090364 (and d!1492480 b!4695067)))

(assert (=> bs!1090364 (= (= lt!1856203 lt!1855869) (= lambda!208608 lambda!208586))))

(declare-fun bs!1090366 () Bool)

(assert (= bs!1090366 (and d!1492480 b!4695092)))

(assert (=> bs!1090366 (= (= lt!1856203 lt!1855869) (= lambda!208608 lambda!208604))))

(declare-fun bs!1090368 () Bool)

(assert (= bs!1090368 (and d!1492480 b!4695065)))

(assert (=> bs!1090368 (= (= lt!1856203 lt!1855869) (= lambda!208608 lambda!208587))))

(assert (=> bs!1090362 (= (= lt!1856203 lt!1855869) (= lambda!208608 lambda!208605))))

(declare-fun bs!1090369 () Bool)

(assert (= bs!1090369 (and d!1492480 d!1492422)))

(assert (=> bs!1090369 (= (= lt!1856203 lt!1856127) (= lambda!208608 lambda!208589))))

(assert (=> bs!1090368 (= (= lt!1856203 lt!1856132) (= lambda!208608 lambda!208588))))

(assert (=> d!1492480 true))

(declare-fun b!4695089 () Bool)

(declare-fun res!1981207 () Bool)

(declare-fun e!2928915 () Bool)

(assert (=> b!4695089 (=> (not res!1981207) (not e!2928915))))

(assert (=> b!4695089 (= res!1981207 (forall!11361 (toList!5641 lt!1855869) lambda!208608))))

(declare-fun c!802658 () Bool)

(declare-fun bm!328187 () Bool)

(declare-fun call!328193 () Bool)

(assert (=> bm!328187 (= call!328193 (forall!11361 (ite c!802658 (toList!5641 lt!1855869) (t!359785 (Cons!52469 lt!1855864 lt!1855861))) (ite c!802658 lambda!208604 lambda!208606)))))

(declare-fun bm!328188 () Bool)

(declare-fun call!328192 () Unit!125029)

(assert (=> bm!328188 (= call!328192 (lemmaContainsAllItsOwnKeys!714 lt!1855869))))

(declare-fun bm!328189 () Bool)

(declare-fun call!328194 () Bool)

(assert (=> bm!328189 (= call!328194 (forall!11361 (toList!5641 lt!1855869) (ite c!802658 lambda!208604 lambda!208606)))))

(declare-fun e!2928914 () ListMap!5005)

(assert (=> b!4695090 (= e!2928914 lt!1856208)))

(declare-fun lt!1856195 () ListMap!5005)

(assert (=> b!4695090 (= lt!1856195 (+!2160 lt!1855869 (h!58730 (Cons!52469 lt!1855864 lt!1855861))))))

(assert (=> b!4695090 (= lt!1856208 (addToMapMapFromBucket!1308 (t!359785 (Cons!52469 lt!1855864 lt!1855861)) (+!2160 lt!1855869 (h!58730 (Cons!52469 lt!1855864 lt!1855861)))))))

(declare-fun lt!1856206 () Unit!125029)

(assert (=> b!4695090 (= lt!1856206 call!328192)))

(assert (=> b!4695090 (forall!11361 (toList!5641 lt!1855869) lambda!208605)))

(declare-fun lt!1856211 () Unit!125029)

(assert (=> b!4695090 (= lt!1856211 lt!1856206)))

(assert (=> b!4695090 (forall!11361 (toList!5641 lt!1856195) lambda!208606)))

(declare-fun lt!1856207 () Unit!125029)

(declare-fun Unit!125058 () Unit!125029)

(assert (=> b!4695090 (= lt!1856207 Unit!125058)))

(assert (=> b!4695090 call!328193))

(declare-fun lt!1856212 () Unit!125029)

(declare-fun Unit!125059 () Unit!125029)

(assert (=> b!4695090 (= lt!1856212 Unit!125059)))

(declare-fun lt!1856198 () Unit!125029)

(declare-fun Unit!125060 () Unit!125029)

(assert (=> b!4695090 (= lt!1856198 Unit!125060)))

(declare-fun lt!1856199 () Unit!125029)

(assert (=> b!4695090 (= lt!1856199 (forallContained!3468 (toList!5641 lt!1856195) lambda!208606 (h!58730 (Cons!52469 lt!1855864 lt!1855861))))))

(assert (=> b!4695090 (contains!15706 lt!1856195 (_1!30243 (h!58730 (Cons!52469 lt!1855864 lt!1855861))))))

(declare-fun lt!1856210 () Unit!125029)

(declare-fun Unit!125061 () Unit!125029)

(assert (=> b!4695090 (= lt!1856210 Unit!125061)))

(assert (=> b!4695090 (contains!15706 lt!1856208 (_1!30243 (h!58730 (Cons!52469 lt!1855864 lt!1855861))))))

(declare-fun lt!1856197 () Unit!125029)

(declare-fun Unit!125062 () Unit!125029)

(assert (=> b!4695090 (= lt!1856197 Unit!125062)))

(assert (=> b!4695090 (forall!11361 (Cons!52469 lt!1855864 lt!1855861) lambda!208606)))

(declare-fun lt!1856201 () Unit!125029)

(declare-fun Unit!125064 () Unit!125029)

(assert (=> b!4695090 (= lt!1856201 Unit!125064)))

(assert (=> b!4695090 (forall!11361 (toList!5641 lt!1856195) lambda!208606)))

(declare-fun lt!1856214 () Unit!125029)

(declare-fun Unit!125066 () Unit!125029)

(assert (=> b!4695090 (= lt!1856214 Unit!125066)))

(declare-fun lt!1856204 () Unit!125029)

(declare-fun Unit!125068 () Unit!125029)

(assert (=> b!4695090 (= lt!1856204 Unit!125068)))

(declare-fun lt!1856213 () Unit!125029)

(assert (=> b!4695090 (= lt!1856213 (addForallContainsKeyThenBeforeAdding!713 lt!1855869 lt!1856208 (_1!30243 (h!58730 (Cons!52469 lt!1855864 lt!1855861))) (_2!30243 (h!58730 (Cons!52469 lt!1855864 lt!1855861)))))))

(assert (=> b!4695090 (forall!11361 (toList!5641 lt!1855869) lambda!208606)))

(declare-fun lt!1856196 () Unit!125029)

(assert (=> b!4695090 (= lt!1856196 lt!1856213)))

(assert (=> b!4695090 (forall!11361 (toList!5641 lt!1855869) lambda!208606)))

(declare-fun lt!1856194 () Unit!125029)

(declare-fun Unit!125070 () Unit!125029)

(assert (=> b!4695090 (= lt!1856194 Unit!125070)))

(declare-fun res!1981208 () Bool)

(assert (=> b!4695090 (= res!1981208 (forall!11361 (Cons!52469 lt!1855864 lt!1855861) lambda!208606))))

(declare-fun e!2928916 () Bool)

(assert (=> b!4695090 (=> (not res!1981208) (not e!2928916))))

(assert (=> b!4695090 e!2928916))

(declare-fun lt!1856209 () Unit!125029)

(declare-fun Unit!125073 () Unit!125029)

(assert (=> b!4695090 (= lt!1856209 Unit!125073)))

(declare-fun b!4695091 () Bool)

(assert (=> b!4695091 (= e!2928916 call!328194)))

(assert (=> d!1492480 e!2928915))

(declare-fun res!1981209 () Bool)

(assert (=> d!1492480 (=> (not res!1981209) (not e!2928915))))

(assert (=> d!1492480 (= res!1981209 (forall!11361 (Cons!52469 lt!1855864 lt!1855861) lambda!208608))))

(assert (=> d!1492480 (= lt!1856203 e!2928914)))

(assert (=> d!1492480 (= c!802658 ((_ is Nil!52469) (Cons!52469 lt!1855864 lt!1855861)))))

(assert (=> d!1492480 (noDuplicateKeys!1876 (Cons!52469 lt!1855864 lt!1855861))))

(assert (=> d!1492480 (= (addToMapMapFromBucket!1308 (Cons!52469 lt!1855864 lt!1855861) lt!1855869) lt!1856203)))

(assert (=> b!4695092 (= e!2928914 lt!1855869)))

(declare-fun lt!1856200 () Unit!125029)

(assert (=> b!4695092 (= lt!1856200 call!328192)))

(assert (=> b!4695092 call!328193))

(declare-fun lt!1856205 () Unit!125029)

(assert (=> b!4695092 (= lt!1856205 lt!1856200)))

(assert (=> b!4695092 call!328194))

(declare-fun lt!1856202 () Unit!125029)

(declare-fun Unit!125077 () Unit!125029)

(assert (=> b!4695092 (= lt!1856202 Unit!125077)))

(declare-fun b!4695093 () Bool)

(assert (=> b!4695093 (= e!2928915 (invariantList!1426 (toList!5641 lt!1856203)))))

(assert (= (and d!1492480 c!802658) b!4695092))

(assert (= (and d!1492480 (not c!802658)) b!4695090))

(assert (= (and b!4695090 res!1981208) b!4695091))

(assert (= (or b!4695092 b!4695090) bm!328188))

(assert (= (or b!4695092 b!4695091) bm!328189))

(assert (= (or b!4695092 b!4695090) bm!328187))

(assert (= (and d!1492480 res!1981209) b!4695089))

(assert (= (and b!4695089 res!1981207) b!4695093))

(declare-fun m!5602611 () Bool)

(assert (=> bm!328187 m!5602611))

(declare-fun m!5602615 () Bool)

(assert (=> b!4695093 m!5602615))

(declare-fun m!5602619 () Bool)

(assert (=> bm!328189 m!5602619))

(declare-fun m!5602623 () Bool)

(assert (=> b!4695089 m!5602623))

(assert (=> bm!328188 m!5602481))

(declare-fun m!5602629 () Bool)

(assert (=> d!1492480 m!5602629))

(declare-fun m!5602633 () Bool)

(assert (=> d!1492480 m!5602633))

(declare-fun m!5602637 () Bool)

(assert (=> b!4695090 m!5602637))

(declare-fun m!5602639 () Bool)

(assert (=> b!4695090 m!5602639))

(declare-fun m!5602643 () Bool)

(assert (=> b!4695090 m!5602643))

(declare-fun m!5602647 () Bool)

(assert (=> b!4695090 m!5602647))

(declare-fun m!5602651 () Bool)

(assert (=> b!4695090 m!5602651))

(assert (=> b!4695090 m!5602647))

(declare-fun m!5602657 () Bool)

(assert (=> b!4695090 m!5602657))

(declare-fun m!5602661 () Bool)

(assert (=> b!4695090 m!5602661))

(declare-fun m!5602665 () Bool)

(assert (=> b!4695090 m!5602665))

(declare-fun m!5602667 () Bool)

(assert (=> b!4695090 m!5602667))

(assert (=> b!4695090 m!5602639))

(assert (=> b!4695090 m!5602643))

(assert (=> b!4695090 m!5602657))

(declare-fun m!5602671 () Bool)

(assert (=> b!4695090 m!5602671))

(assert (=> b!4694920 d!1492480))

(declare-fun bs!1090372 () Bool)

(declare-fun d!1492484 () Bool)

(assert (= bs!1090372 (and d!1492484 start!475456)))

(declare-fun lambda!208609 () Int)

(assert (=> bs!1090372 (= lambda!208609 lambda!208505)))

(declare-fun bs!1090374 () Bool)

(assert (= bs!1090374 (and d!1492484 d!1492466)))

(assert (=> bs!1090374 (= lambda!208609 lambda!208594)))

(declare-fun bs!1090376 () Bool)

(assert (= bs!1090376 (and d!1492484 d!1492474)))

(assert (=> bs!1090376 (= lambda!208609 lambda!208602)))

(declare-fun lt!1856215 () ListMap!5005)

(assert (=> d!1492484 (invariantList!1426 (toList!5641 lt!1856215))))

(declare-fun e!2928917 () ListMap!5005)

(assert (=> d!1492484 (= lt!1856215 e!2928917)))

(declare-fun c!802659 () Bool)

(assert (=> d!1492484 (= c!802659 ((_ is Cons!52470) lt!1855866))))

(assert (=> d!1492484 (forall!11359 lt!1855866 lambda!208609)))

(assert (=> d!1492484 (= (extractMap!1902 lt!1855866) lt!1856215)))

(declare-fun b!4695094 () Bool)

(assert (=> b!4695094 (= e!2928917 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 lt!1855866)) (extractMap!1902 (t!359786 lt!1855866))))))

(declare-fun b!4695095 () Bool)

(assert (=> b!4695095 (= e!2928917 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492484 c!802659) b!4695094))

(assert (= (and d!1492484 (not c!802659)) b!4695095))

(declare-fun m!5602673 () Bool)

(assert (=> d!1492484 m!5602673))

(declare-fun m!5602675 () Bool)

(assert (=> d!1492484 m!5602675))

(declare-fun m!5602677 () Bool)

(assert (=> b!4695094 m!5602677))

(assert (=> b!4695094 m!5602677))

(declare-fun m!5602679 () Bool)

(assert (=> b!4695094 m!5602679))

(assert (=> b!4694920 d!1492484))

(declare-fun b!4695122 () Bool)

(declare-fun e!2928934 () Bool)

(declare-fun e!2928935 () Bool)

(assert (=> b!4695122 (= e!2928934 e!2928935)))

(declare-fun res!1981219 () Bool)

(assert (=> b!4695122 (=> (not res!1981219) (not e!2928935))))

(declare-fun isDefined!9388 (Option!12133) Bool)

(assert (=> b!4695122 (= res!1981219 (isDefined!9388 (getValueByKey!1811 (toList!5641 lt!1855876) key!4653)))))

(declare-fun b!4695124 () Bool)

(declare-fun e!2928939 () Unit!125029)

(declare-fun Unit!125079 () Unit!125029)

(assert (=> b!4695124 (= e!2928939 Unit!125079)))

(declare-fun b!4695125 () Bool)

(declare-datatypes ((List!52596 0))(
  ( (Nil!52472) (Cons!52472 (h!58735 K!13840) (t!359790 List!52596)) )
))
(declare-fun e!2928938 () List!52596)

(declare-fun keys!18751 (ListMap!5005) List!52596)

(assert (=> b!4695125 (= e!2928938 (keys!18751 lt!1855876))))

(declare-fun b!4695126 () Bool)

(declare-fun getKeysList!866 (List!52593) List!52596)

(assert (=> b!4695126 (= e!2928938 (getKeysList!866 (toList!5641 lt!1855876)))))

(declare-fun b!4695127 () Bool)

(assert (=> b!4695127 false))

(declare-fun lt!1856244 () Unit!125029)

(declare-fun lt!1856245 () Unit!125029)

(assert (=> b!4695127 (= lt!1856244 lt!1856245)))

(declare-fun containsKey!3109 (List!52593 K!13840) Bool)

(assert (=> b!4695127 (containsKey!3109 (toList!5641 lt!1855876) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!865 (List!52593 K!13840) Unit!125029)

(assert (=> b!4695127 (= lt!1856245 (lemmaInGetKeysListThenContainsKey!865 (toList!5641 lt!1855876) key!4653))))

(declare-fun Unit!125080 () Unit!125029)

(assert (=> b!4695127 (= e!2928939 Unit!125080)))

(declare-fun b!4695128 () Bool)

(declare-fun contains!15712 (List!52596 K!13840) Bool)

(assert (=> b!4695128 (= e!2928935 (contains!15712 (keys!18751 lt!1855876) key!4653))))

(declare-fun b!4695129 () Bool)

(declare-fun e!2928936 () Unit!125029)

(declare-fun lt!1856248 () Unit!125029)

(assert (=> b!4695129 (= e!2928936 lt!1856248)))

(declare-fun lt!1856250 () Unit!125029)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1703 (List!52593 K!13840) Unit!125029)

(assert (=> b!4695129 (= lt!1856250 (lemmaContainsKeyImpliesGetValueByKeyDefined!1703 (toList!5641 lt!1855876) key!4653))))

(assert (=> b!4695129 (isDefined!9388 (getValueByKey!1811 (toList!5641 lt!1855876) key!4653))))

(declare-fun lt!1856243 () Unit!125029)

(assert (=> b!4695129 (= lt!1856243 lt!1856250)))

(declare-fun lemmaInListThenGetKeysListContains!861 (List!52593 K!13840) Unit!125029)

(assert (=> b!4695129 (= lt!1856248 (lemmaInListThenGetKeysListContains!861 (toList!5641 lt!1855876) key!4653))))

(declare-fun call!328197 () Bool)

(assert (=> b!4695129 call!328197))

(declare-fun bm!328192 () Bool)

(assert (=> bm!328192 (= call!328197 (contains!15712 e!2928938 key!4653))))

(declare-fun c!802671 () Bool)

(declare-fun c!802670 () Bool)

(assert (=> bm!328192 (= c!802671 c!802670)))

(declare-fun b!4695130 () Bool)

(assert (=> b!4695130 (= e!2928936 e!2928939)))

(declare-fun c!802669 () Bool)

(assert (=> b!4695130 (= c!802669 call!328197)))

(declare-fun b!4695123 () Bool)

(declare-fun e!2928937 () Bool)

(assert (=> b!4695123 (= e!2928937 (not (contains!15712 (keys!18751 lt!1855876) key!4653)))))

(declare-fun d!1492486 () Bool)

(assert (=> d!1492486 e!2928934))

(declare-fun res!1981218 () Bool)

(assert (=> d!1492486 (=> res!1981218 e!2928934)))

(assert (=> d!1492486 (= res!1981218 e!2928937)))

(declare-fun res!1981220 () Bool)

(assert (=> d!1492486 (=> (not res!1981220) (not e!2928937))))

(declare-fun lt!1856247 () Bool)

(assert (=> d!1492486 (= res!1981220 (not lt!1856247))))

(declare-fun lt!1856246 () Bool)

(assert (=> d!1492486 (= lt!1856247 lt!1856246)))

(declare-fun lt!1856249 () Unit!125029)

(assert (=> d!1492486 (= lt!1856249 e!2928936)))

(assert (=> d!1492486 (= c!802670 lt!1856246)))

(assert (=> d!1492486 (= lt!1856246 (containsKey!3109 (toList!5641 lt!1855876) key!4653))))

(assert (=> d!1492486 (= (contains!15706 lt!1855876 key!4653) lt!1856247)))

(assert (= (and d!1492486 c!802670) b!4695129))

(assert (= (and d!1492486 (not c!802670)) b!4695130))

(assert (= (and b!4695130 c!802669) b!4695127))

(assert (= (and b!4695130 (not c!802669)) b!4695124))

(assert (= (or b!4695129 b!4695130) bm!328192))

(assert (= (and bm!328192 c!802671) b!4695126))

(assert (= (and bm!328192 (not c!802671)) b!4695125))

(assert (= (and d!1492486 res!1981220) b!4695123))

(assert (= (and d!1492486 (not res!1981218)) b!4695122))

(assert (= (and b!4695122 res!1981219) b!4695128))

(declare-fun m!5602729 () Bool)

(assert (=> b!4695128 m!5602729))

(assert (=> b!4695128 m!5602729))

(declare-fun m!5602731 () Bool)

(assert (=> b!4695128 m!5602731))

(declare-fun m!5602733 () Bool)

(assert (=> bm!328192 m!5602733))

(declare-fun m!5602735 () Bool)

(assert (=> b!4695129 m!5602735))

(declare-fun m!5602737 () Bool)

(assert (=> b!4695129 m!5602737))

(assert (=> b!4695129 m!5602737))

(declare-fun m!5602739 () Bool)

(assert (=> b!4695129 m!5602739))

(declare-fun m!5602741 () Bool)

(assert (=> b!4695129 m!5602741))

(assert (=> b!4695122 m!5602737))

(assert (=> b!4695122 m!5602737))

(assert (=> b!4695122 m!5602739))

(assert (=> b!4695123 m!5602729))

(assert (=> b!4695123 m!5602729))

(assert (=> b!4695123 m!5602731))

(declare-fun m!5602743 () Bool)

(assert (=> b!4695127 m!5602743))

(declare-fun m!5602745 () Bool)

(assert (=> b!4695127 m!5602745))

(assert (=> d!1492486 m!5602743))

(assert (=> b!4695125 m!5602729))

(declare-fun m!5602747 () Bool)

(assert (=> b!4695126 m!5602747))

(assert (=> b!4694920 d!1492486))

(declare-fun d!1492504 () Bool)

(assert (=> d!1492504 (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855867 lt!1855865) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1855867))))

(declare-fun lt!1856254 () Unit!125029)

(declare-fun choose!32705 (tuple2!53898 List!52593 ListMap!5005) Unit!125029)

(assert (=> d!1492504 (= lt!1856254 (choose!32705 lt!1855867 lt!1855865 lt!1855869))))

(assert (=> d!1492504 (noDuplicateKeys!1876 lt!1855865)))

(assert (=> d!1492504 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!284 lt!1855867 lt!1855865 lt!1855869) lt!1856254)))

(declare-fun bs!1090434 () Bool)

(assert (= bs!1090434 d!1492504))

(assert (=> bs!1090434 m!5602079))

(declare-fun m!5602769 () Bool)

(assert (=> bs!1090434 m!5602769))

(assert (=> bs!1090434 m!5602059))

(assert (=> bs!1090434 m!5602061))

(assert (=> bs!1090434 m!5602059))

(declare-fun m!5602771 () Bool)

(assert (=> bs!1090434 m!5602771))

(assert (=> bs!1090434 m!5602079))

(assert (=> bs!1090434 m!5602061))

(assert (=> bs!1090434 m!5602081))

(assert (=> b!4694920 d!1492504))

(declare-fun d!1492526 () Bool)

(assert (=> d!1492526 (= (eq!1035 lt!1855875 (+!2160 lt!1855873 (h!58730 oldBucket!34))) (= (content!9207 (toList!5641 lt!1855875)) (content!9207 (toList!5641 (+!2160 lt!1855873 (h!58730 oldBucket!34))))))))

(declare-fun bs!1090435 () Bool)

(assert (= bs!1090435 d!1492526))

(declare-fun m!5602773 () Bool)

(assert (=> bs!1090435 m!5602773))

(declare-fun m!5602775 () Bool)

(assert (=> bs!1090435 m!5602775))

(assert (=> b!4694920 d!1492526))

(declare-fun d!1492528 () Bool)

(assert (=> d!1492528 (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855864 lt!1855861) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855861 lt!1855869) lt!1855864))))

(declare-fun lt!1856255 () Unit!125029)

(assert (=> d!1492528 (= lt!1856255 (choose!32705 lt!1855864 lt!1855861 lt!1855869))))

(assert (=> d!1492528 (noDuplicateKeys!1876 lt!1855861)))

(assert (=> d!1492528 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!284 lt!1855864 lt!1855861 lt!1855869) lt!1856255)))

(declare-fun bs!1090436 () Bool)

(assert (= bs!1090436 d!1492528))

(assert (=> bs!1090436 m!5602063))

(declare-fun m!5602777 () Bool)

(assert (=> bs!1090436 m!5602777))

(assert (=> bs!1090436 m!5602065))

(assert (=> bs!1090436 m!5602067))

(assert (=> bs!1090436 m!5602065))

(assert (=> bs!1090436 m!5602485))

(assert (=> bs!1090436 m!5602063))

(assert (=> bs!1090436 m!5602067))

(assert (=> bs!1090436 m!5602083))

(assert (=> b!4694920 d!1492528))

(declare-fun bs!1090437 () Bool)

(declare-fun b!4695152 () Bool)

(assert (= bs!1090437 (and b!4695152 b!4695090)))

(declare-fun lambda!208619 () Int)

(assert (=> bs!1090437 (= (= lt!1855869 lt!1856208) (= lambda!208619 lambda!208606))))

(declare-fun bs!1090438 () Bool)

(assert (= bs!1090438 (and b!4695152 d!1492480)))

(assert (=> bs!1090438 (= (= lt!1855869 lt!1856203) (= lambda!208619 lambda!208608))))

(declare-fun bs!1090439 () Bool)

(assert (= bs!1090439 (and b!4695152 b!4695067)))

(assert (=> bs!1090439 (= lambda!208619 lambda!208586)))

(declare-fun bs!1090440 () Bool)

(assert (= bs!1090440 (and b!4695152 b!4695092)))

(assert (=> bs!1090440 (= lambda!208619 lambda!208604)))

(declare-fun bs!1090441 () Bool)

(assert (= bs!1090441 (and b!4695152 b!4695065)))

(assert (=> bs!1090441 (= lambda!208619 lambda!208587)))

(assert (=> bs!1090437 (= lambda!208619 lambda!208605)))

(declare-fun bs!1090442 () Bool)

(assert (= bs!1090442 (and b!4695152 d!1492422)))

(assert (=> bs!1090442 (= (= lt!1855869 lt!1856127) (= lambda!208619 lambda!208589))))

(assert (=> bs!1090441 (= (= lt!1855869 lt!1856132) (= lambda!208619 lambda!208588))))

(assert (=> b!4695152 true))

(declare-fun bs!1090443 () Bool)

(declare-fun b!4695150 () Bool)

(assert (= bs!1090443 (and b!4695150 b!4695090)))

(declare-fun lambda!208620 () Int)

(assert (=> bs!1090443 (= (= lt!1855869 lt!1856208) (= lambda!208620 lambda!208606))))

(declare-fun bs!1090444 () Bool)

(assert (= bs!1090444 (and b!4695150 d!1492480)))

(assert (=> bs!1090444 (= (= lt!1855869 lt!1856203) (= lambda!208620 lambda!208608))))

(declare-fun bs!1090445 () Bool)

(assert (= bs!1090445 (and b!4695150 b!4695152)))

(assert (=> bs!1090445 (= lambda!208620 lambda!208619)))

(declare-fun bs!1090446 () Bool)

(assert (= bs!1090446 (and b!4695150 b!4695067)))

(assert (=> bs!1090446 (= lambda!208620 lambda!208586)))

(declare-fun bs!1090447 () Bool)

(assert (= bs!1090447 (and b!4695150 b!4695092)))

(assert (=> bs!1090447 (= lambda!208620 lambda!208604)))

(declare-fun bs!1090448 () Bool)

(assert (= bs!1090448 (and b!4695150 b!4695065)))

(assert (=> bs!1090448 (= lambda!208620 lambda!208587)))

(assert (=> bs!1090443 (= lambda!208620 lambda!208605)))

(declare-fun bs!1090449 () Bool)

(assert (= bs!1090449 (and b!4695150 d!1492422)))

(assert (=> bs!1090449 (= (= lt!1855869 lt!1856127) (= lambda!208620 lambda!208589))))

(assert (=> bs!1090448 (= (= lt!1855869 lt!1856132) (= lambda!208620 lambda!208588))))

(assert (=> b!4695150 true))

(declare-fun lambda!208621 () Int)

(declare-fun lt!1856270 () ListMap!5005)

(assert (=> bs!1090443 (= (= lt!1856270 lt!1856208) (= lambda!208621 lambda!208606))))

(assert (=> bs!1090444 (= (= lt!1856270 lt!1856203) (= lambda!208621 lambda!208608))))

(assert (=> bs!1090445 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208619))))

(assert (=> bs!1090447 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208604))))

(assert (=> bs!1090448 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208587))))

(assert (=> bs!1090443 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208605))))

(assert (=> b!4695150 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208620))))

(assert (=> bs!1090446 (= (= lt!1856270 lt!1855869) (= lambda!208621 lambda!208586))))

(assert (=> bs!1090449 (= (= lt!1856270 lt!1856127) (= lambda!208621 lambda!208589))))

(assert (=> bs!1090448 (= (= lt!1856270 lt!1856132) (= lambda!208621 lambda!208588))))

(assert (=> b!4695150 true))

(declare-fun bs!1090450 () Bool)

(declare-fun d!1492530 () Bool)

(assert (= bs!1090450 (and d!1492530 b!4695090)))

(declare-fun lt!1856265 () ListMap!5005)

(declare-fun lambda!208622 () Int)

(assert (=> bs!1090450 (= (= lt!1856265 lt!1856208) (= lambda!208622 lambda!208606))))

(declare-fun bs!1090451 () Bool)

(assert (= bs!1090451 (and d!1492530 d!1492480)))

(assert (=> bs!1090451 (= (= lt!1856265 lt!1856203) (= lambda!208622 lambda!208608))))

(declare-fun bs!1090452 () Bool)

(assert (= bs!1090452 (and d!1492530 b!4695152)))

(assert (=> bs!1090452 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208619))))

(declare-fun bs!1090453 () Bool)

(assert (= bs!1090453 (and d!1492530 b!4695092)))

(assert (=> bs!1090453 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208604))))

(declare-fun bs!1090454 () Bool)

(assert (= bs!1090454 (and d!1492530 b!4695150)))

(assert (=> bs!1090454 (= (= lt!1856265 lt!1856270) (= lambda!208622 lambda!208621))))

(declare-fun bs!1090455 () Bool)

(assert (= bs!1090455 (and d!1492530 b!4695065)))

(assert (=> bs!1090455 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208587))))

(assert (=> bs!1090450 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208605))))

(assert (=> bs!1090454 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208620))))

(declare-fun bs!1090456 () Bool)

(assert (= bs!1090456 (and d!1492530 b!4695067)))

(assert (=> bs!1090456 (= (= lt!1856265 lt!1855869) (= lambda!208622 lambda!208586))))

(declare-fun bs!1090457 () Bool)

(assert (= bs!1090457 (and d!1492530 d!1492422)))

(assert (=> bs!1090457 (= (= lt!1856265 lt!1856127) (= lambda!208622 lambda!208589))))

(assert (=> bs!1090455 (= (= lt!1856265 lt!1856132) (= lambda!208622 lambda!208588))))

(assert (=> d!1492530 true))

(declare-fun b!4695149 () Bool)

(declare-fun res!1981231 () Bool)

(declare-fun e!2928953 () Bool)

(assert (=> b!4695149 (=> (not res!1981231) (not e!2928953))))

(assert (=> b!4695149 (= res!1981231 (forall!11361 (toList!5641 lt!1855869) lambda!208622))))

(declare-fun bm!328193 () Bool)

(declare-fun c!802674 () Bool)

(declare-fun call!328199 () Bool)

(assert (=> bm!328193 (= call!328199 (forall!11361 (ite c!802674 (toList!5641 lt!1855869) (t!359785 (Cons!52469 lt!1855867 lt!1855865))) (ite c!802674 lambda!208619 lambda!208621)))))

(declare-fun bm!328194 () Bool)

(declare-fun call!328198 () Unit!125029)

(assert (=> bm!328194 (= call!328198 (lemmaContainsAllItsOwnKeys!714 lt!1855869))))

(declare-fun bm!328195 () Bool)

(declare-fun call!328200 () Bool)

(assert (=> bm!328195 (= call!328200 (forall!11361 (toList!5641 lt!1855869) (ite c!802674 lambda!208619 lambda!208621)))))

(declare-fun e!2928952 () ListMap!5005)

(assert (=> b!4695150 (= e!2928952 lt!1856270)))

(declare-fun lt!1856257 () ListMap!5005)

(assert (=> b!4695150 (= lt!1856257 (+!2160 lt!1855869 (h!58730 (Cons!52469 lt!1855867 lt!1855865))))))

(assert (=> b!4695150 (= lt!1856270 (addToMapMapFromBucket!1308 (t!359785 (Cons!52469 lt!1855867 lt!1855865)) (+!2160 lt!1855869 (h!58730 (Cons!52469 lt!1855867 lt!1855865)))))))

(declare-fun lt!1856268 () Unit!125029)

(assert (=> b!4695150 (= lt!1856268 call!328198)))

(assert (=> b!4695150 (forall!11361 (toList!5641 lt!1855869) lambda!208620)))

(declare-fun lt!1856273 () Unit!125029)

(assert (=> b!4695150 (= lt!1856273 lt!1856268)))

(assert (=> b!4695150 (forall!11361 (toList!5641 lt!1856257) lambda!208621)))

(declare-fun lt!1856269 () Unit!125029)

(declare-fun Unit!125092 () Unit!125029)

(assert (=> b!4695150 (= lt!1856269 Unit!125092)))

(assert (=> b!4695150 call!328199))

(declare-fun lt!1856274 () Unit!125029)

(declare-fun Unit!125093 () Unit!125029)

(assert (=> b!4695150 (= lt!1856274 Unit!125093)))

(declare-fun lt!1856260 () Unit!125029)

(declare-fun Unit!125094 () Unit!125029)

(assert (=> b!4695150 (= lt!1856260 Unit!125094)))

(declare-fun lt!1856261 () Unit!125029)

(assert (=> b!4695150 (= lt!1856261 (forallContained!3468 (toList!5641 lt!1856257) lambda!208621 (h!58730 (Cons!52469 lt!1855867 lt!1855865))))))

(assert (=> b!4695150 (contains!15706 lt!1856257 (_1!30243 (h!58730 (Cons!52469 lt!1855867 lt!1855865))))))

(declare-fun lt!1856272 () Unit!125029)

(declare-fun Unit!125095 () Unit!125029)

(assert (=> b!4695150 (= lt!1856272 Unit!125095)))

(assert (=> b!4695150 (contains!15706 lt!1856270 (_1!30243 (h!58730 (Cons!52469 lt!1855867 lt!1855865))))))

(declare-fun lt!1856259 () Unit!125029)

(declare-fun Unit!125096 () Unit!125029)

(assert (=> b!4695150 (= lt!1856259 Unit!125096)))

(assert (=> b!4695150 (forall!11361 (Cons!52469 lt!1855867 lt!1855865) lambda!208621)))

(declare-fun lt!1856263 () Unit!125029)

(declare-fun Unit!125097 () Unit!125029)

(assert (=> b!4695150 (= lt!1856263 Unit!125097)))

(assert (=> b!4695150 (forall!11361 (toList!5641 lt!1856257) lambda!208621)))

(declare-fun lt!1856276 () Unit!125029)

(declare-fun Unit!125098 () Unit!125029)

(assert (=> b!4695150 (= lt!1856276 Unit!125098)))

(declare-fun lt!1856266 () Unit!125029)

(declare-fun Unit!125099 () Unit!125029)

(assert (=> b!4695150 (= lt!1856266 Unit!125099)))

(declare-fun lt!1856275 () Unit!125029)

(assert (=> b!4695150 (= lt!1856275 (addForallContainsKeyThenBeforeAdding!713 lt!1855869 lt!1856270 (_1!30243 (h!58730 (Cons!52469 lt!1855867 lt!1855865))) (_2!30243 (h!58730 (Cons!52469 lt!1855867 lt!1855865)))))))

(assert (=> b!4695150 (forall!11361 (toList!5641 lt!1855869) lambda!208621)))

(declare-fun lt!1856258 () Unit!125029)

(assert (=> b!4695150 (= lt!1856258 lt!1856275)))

(assert (=> b!4695150 (forall!11361 (toList!5641 lt!1855869) lambda!208621)))

(declare-fun lt!1856256 () Unit!125029)

(declare-fun Unit!125100 () Unit!125029)

(assert (=> b!4695150 (= lt!1856256 Unit!125100)))

(declare-fun res!1981232 () Bool)

(assert (=> b!4695150 (= res!1981232 (forall!11361 (Cons!52469 lt!1855867 lt!1855865) lambda!208621))))

(declare-fun e!2928954 () Bool)

(assert (=> b!4695150 (=> (not res!1981232) (not e!2928954))))

(assert (=> b!4695150 e!2928954))

(declare-fun lt!1856271 () Unit!125029)

(declare-fun Unit!125101 () Unit!125029)

(assert (=> b!4695150 (= lt!1856271 Unit!125101)))

(declare-fun b!4695151 () Bool)

(assert (=> b!4695151 (= e!2928954 call!328200)))

(assert (=> d!1492530 e!2928953))

(declare-fun res!1981233 () Bool)

(assert (=> d!1492530 (=> (not res!1981233) (not e!2928953))))

(assert (=> d!1492530 (= res!1981233 (forall!11361 (Cons!52469 lt!1855867 lt!1855865) lambda!208622))))

(assert (=> d!1492530 (= lt!1856265 e!2928952)))

(assert (=> d!1492530 (= c!802674 ((_ is Nil!52469) (Cons!52469 lt!1855867 lt!1855865)))))

(assert (=> d!1492530 (noDuplicateKeys!1876 (Cons!52469 lt!1855867 lt!1855865))))

(assert (=> d!1492530 (= (addToMapMapFromBucket!1308 (Cons!52469 lt!1855867 lt!1855865) lt!1855869) lt!1856265)))

(assert (=> b!4695152 (= e!2928952 lt!1855869)))

(declare-fun lt!1856262 () Unit!125029)

(assert (=> b!4695152 (= lt!1856262 call!328198)))

(assert (=> b!4695152 call!328199))

(declare-fun lt!1856267 () Unit!125029)

(assert (=> b!4695152 (= lt!1856267 lt!1856262)))

(assert (=> b!4695152 call!328200))

(declare-fun lt!1856264 () Unit!125029)

(declare-fun Unit!125102 () Unit!125029)

(assert (=> b!4695152 (= lt!1856264 Unit!125102)))

(declare-fun b!4695153 () Bool)

(assert (=> b!4695153 (= e!2928953 (invariantList!1426 (toList!5641 lt!1856265)))))

(assert (= (and d!1492530 c!802674) b!4695152))

(assert (= (and d!1492530 (not c!802674)) b!4695150))

(assert (= (and b!4695150 res!1981232) b!4695151))

(assert (= (or b!4695152 b!4695150) bm!328194))

(assert (= (or b!4695152 b!4695151) bm!328195))

(assert (= (or b!4695152 b!4695150) bm!328193))

(assert (= (and d!1492530 res!1981233) b!4695149))

(assert (= (and b!4695149 res!1981231) b!4695153))

(declare-fun m!5602793 () Bool)

(assert (=> bm!328193 m!5602793))

(declare-fun m!5602795 () Bool)

(assert (=> b!4695153 m!5602795))

(declare-fun m!5602797 () Bool)

(assert (=> bm!328195 m!5602797))

(declare-fun m!5602799 () Bool)

(assert (=> b!4695149 m!5602799))

(assert (=> bm!328194 m!5602481))

(declare-fun m!5602801 () Bool)

(assert (=> d!1492530 m!5602801))

(declare-fun m!5602803 () Bool)

(assert (=> d!1492530 m!5602803))

(declare-fun m!5602805 () Bool)

(assert (=> b!4695150 m!5602805))

(declare-fun m!5602807 () Bool)

(assert (=> b!4695150 m!5602807))

(declare-fun m!5602809 () Bool)

(assert (=> b!4695150 m!5602809))

(declare-fun m!5602811 () Bool)

(assert (=> b!4695150 m!5602811))

(declare-fun m!5602813 () Bool)

(assert (=> b!4695150 m!5602813))

(assert (=> b!4695150 m!5602811))

(declare-fun m!5602815 () Bool)

(assert (=> b!4695150 m!5602815))

(declare-fun m!5602817 () Bool)

(assert (=> b!4695150 m!5602817))

(declare-fun m!5602819 () Bool)

(assert (=> b!4695150 m!5602819))

(declare-fun m!5602821 () Bool)

(assert (=> b!4695150 m!5602821))

(assert (=> b!4695150 m!5602807))

(assert (=> b!4695150 m!5602809))

(assert (=> b!4695150 m!5602815))

(declare-fun m!5602823 () Bool)

(assert (=> b!4695150 m!5602823))

(assert (=> b!4694920 d!1492530))

(declare-fun bs!1090458 () Bool)

(declare-fun d!1492534 () Bool)

(assert (= bs!1090458 (and d!1492534 start!475456)))

(declare-fun lambda!208623 () Int)

(assert (=> bs!1090458 (= lambda!208623 lambda!208505)))

(declare-fun bs!1090459 () Bool)

(assert (= bs!1090459 (and d!1492534 d!1492466)))

(assert (=> bs!1090459 (= lambda!208623 lambda!208594)))

(declare-fun bs!1090460 () Bool)

(assert (= bs!1090460 (and d!1492534 d!1492474)))

(assert (=> bs!1090460 (= lambda!208623 lambda!208602)))

(declare-fun bs!1090461 () Bool)

(assert (= bs!1090461 (and d!1492534 d!1492484)))

(assert (=> bs!1090461 (= lambda!208623 lambda!208609)))

(declare-fun lt!1856283 () ListMap!5005)

(assert (=> d!1492534 (invariantList!1426 (toList!5641 lt!1856283))))

(declare-fun e!2928973 () ListMap!5005)

(assert (=> d!1492534 (= lt!1856283 e!2928973)))

(declare-fun c!802681 () Bool)

(assert (=> d!1492534 (= c!802681 ((_ is Cons!52470) (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023)))))))

(assert (=> d!1492534 (forall!11359 (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023))) lambda!208623)))

(assert (=> d!1492534 (= (extractMap!1902 (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023)))) lt!1856283)))

(declare-fun b!4695181 () Bool)

(assert (=> b!4695181 (= e!2928973 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023))))) (extractMap!1902 (t!359786 (Cons!52470 lt!1855851 (t!359786 (toList!5642 lm!2023)))))))))

(declare-fun b!4695182 () Bool)

(assert (=> b!4695182 (= e!2928973 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492534 c!802681) b!4695181))

(assert (= (and d!1492534 (not c!802681)) b!4695182))

(declare-fun m!5602829 () Bool)

(assert (=> d!1492534 m!5602829))

(declare-fun m!5602831 () Bool)

(assert (=> d!1492534 m!5602831))

(declare-fun m!5602833 () Bool)

(assert (=> b!4695181 m!5602833))

(assert (=> b!4695181 m!5602833))

(declare-fun m!5602835 () Bool)

(assert (=> b!4695181 m!5602835))

(assert (=> b!4694920 d!1492534))

(declare-fun d!1492538 () Bool)

(declare-fun e!2928974 () Bool)

(assert (=> d!1492538 e!2928974))

(declare-fun res!1981249 () Bool)

(assert (=> d!1492538 (=> (not res!1981249) (not e!2928974))))

(declare-fun lt!1856287 () ListMap!5005)

(assert (=> d!1492538 (= res!1981249 (contains!15706 lt!1856287 (_1!30243 lt!1855867)))))

(declare-fun lt!1856284 () List!52593)

(assert (=> d!1492538 (= lt!1856287 (ListMap!5006 lt!1856284))))

(declare-fun lt!1856286 () Unit!125029)

(declare-fun lt!1856285 () Unit!125029)

(assert (=> d!1492538 (= lt!1856286 lt!1856285)))

(assert (=> d!1492538 (= (getValueByKey!1811 lt!1856284 (_1!30243 lt!1855867)) (Some!12132 (_2!30243 lt!1855867)))))

(assert (=> d!1492538 (= lt!1856285 (lemmaContainsTupThenGetReturnValue!1016 lt!1856284 (_1!30243 lt!1855867) (_2!30243 lt!1855867)))))

(assert (=> d!1492538 (= lt!1856284 (insertNoDuplicatedKeys!524 (toList!5641 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869)) (_1!30243 lt!1855867) (_2!30243 lt!1855867)))))

(assert (=> d!1492538 (= (+!2160 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1855867) lt!1856287)))

(declare-fun b!4695183 () Bool)

(declare-fun res!1981250 () Bool)

(assert (=> b!4695183 (=> (not res!1981250) (not e!2928974))))

(assert (=> b!4695183 (= res!1981250 (= (getValueByKey!1811 (toList!5641 lt!1856287) (_1!30243 lt!1855867)) (Some!12132 (_2!30243 lt!1855867))))))

(declare-fun b!4695184 () Bool)

(assert (=> b!4695184 (= e!2928974 (contains!15711 (toList!5641 lt!1856287) lt!1855867))))

(assert (= (and d!1492538 res!1981249) b!4695183))

(assert (= (and b!4695183 res!1981250) b!4695184))

(declare-fun m!5602837 () Bool)

(assert (=> d!1492538 m!5602837))

(declare-fun m!5602839 () Bool)

(assert (=> d!1492538 m!5602839))

(declare-fun m!5602841 () Bool)

(assert (=> d!1492538 m!5602841))

(declare-fun m!5602843 () Bool)

(assert (=> d!1492538 m!5602843))

(declare-fun m!5602845 () Bool)

(assert (=> b!4695183 m!5602845))

(declare-fun m!5602847 () Bool)

(assert (=> b!4695184 m!5602847))

(assert (=> b!4694920 d!1492538))

(declare-fun d!1492540 () Bool)

(assert (=> d!1492540 (= (eq!1035 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855867 lt!1855865) lt!1855869) (+!2160 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1855867)) (= (content!9207 (toList!5641 (addToMapMapFromBucket!1308 (Cons!52469 lt!1855867 lt!1855865) lt!1855869))) (content!9207 (toList!5641 (+!2160 (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1855867)))))))

(declare-fun bs!1090462 () Bool)

(assert (= bs!1090462 d!1492540))

(declare-fun m!5602849 () Bool)

(assert (=> bs!1090462 m!5602849))

(declare-fun m!5602851 () Bool)

(assert (=> bs!1090462 m!5602851))

(assert (=> b!4694920 d!1492540))

(declare-fun bs!1090464 () Bool)

(declare-fun b!4695188 () Bool)

(assert (= bs!1090464 (and b!4695188 b!4695090)))

(declare-fun lambda!208624 () Int)

(assert (=> bs!1090464 (= (= lt!1855869 lt!1856208) (= lambda!208624 lambda!208606))))

(declare-fun bs!1090465 () Bool)

(assert (= bs!1090465 (and b!4695188 d!1492480)))

(assert (=> bs!1090465 (= (= lt!1855869 lt!1856203) (= lambda!208624 lambda!208608))))

(declare-fun bs!1090466 () Bool)

(assert (= bs!1090466 (and b!4695188 b!4695152)))

(assert (=> bs!1090466 (= lambda!208624 lambda!208619)))

(declare-fun bs!1090467 () Bool)

(assert (= bs!1090467 (and b!4695188 b!4695150)))

(assert (=> bs!1090467 (= (= lt!1855869 lt!1856270) (= lambda!208624 lambda!208621))))

(declare-fun bs!1090468 () Bool)

(assert (= bs!1090468 (and b!4695188 b!4695065)))

(assert (=> bs!1090468 (= lambda!208624 lambda!208587)))

(assert (=> bs!1090464 (= lambda!208624 lambda!208605)))

(assert (=> bs!1090467 (= lambda!208624 lambda!208620)))

(declare-fun bs!1090469 () Bool)

(assert (= bs!1090469 (and b!4695188 b!4695067)))

(assert (=> bs!1090469 (= lambda!208624 lambda!208586)))

(declare-fun bs!1090470 () Bool)

(assert (= bs!1090470 (and b!4695188 d!1492530)))

(assert (=> bs!1090470 (= (= lt!1855869 lt!1856265) (= lambda!208624 lambda!208622))))

(declare-fun bs!1090471 () Bool)

(assert (= bs!1090471 (and b!4695188 b!4695092)))

(assert (=> bs!1090471 (= lambda!208624 lambda!208604)))

(declare-fun bs!1090472 () Bool)

(assert (= bs!1090472 (and b!4695188 d!1492422)))

(assert (=> bs!1090472 (= (= lt!1855869 lt!1856127) (= lambda!208624 lambda!208589))))

(assert (=> bs!1090468 (= (= lt!1855869 lt!1856132) (= lambda!208624 lambda!208588))))

(assert (=> b!4695188 true))

(declare-fun bs!1090473 () Bool)

(declare-fun b!4695186 () Bool)

(assert (= bs!1090473 (and b!4695186 b!4695090)))

(declare-fun lambda!208625 () Int)

(assert (=> bs!1090473 (= (= lt!1855869 lt!1856208) (= lambda!208625 lambda!208606))))

(declare-fun bs!1090474 () Bool)

(assert (= bs!1090474 (and b!4695186 b!4695188)))

(assert (=> bs!1090474 (= lambda!208625 lambda!208624)))

(declare-fun bs!1090475 () Bool)

(assert (= bs!1090475 (and b!4695186 d!1492480)))

(assert (=> bs!1090475 (= (= lt!1855869 lt!1856203) (= lambda!208625 lambda!208608))))

(declare-fun bs!1090476 () Bool)

(assert (= bs!1090476 (and b!4695186 b!4695152)))

(assert (=> bs!1090476 (= lambda!208625 lambda!208619)))

(declare-fun bs!1090477 () Bool)

(assert (= bs!1090477 (and b!4695186 b!4695150)))

(assert (=> bs!1090477 (= (= lt!1855869 lt!1856270) (= lambda!208625 lambda!208621))))

(declare-fun bs!1090478 () Bool)

(assert (= bs!1090478 (and b!4695186 b!4695065)))

(assert (=> bs!1090478 (= lambda!208625 lambda!208587)))

(assert (=> bs!1090473 (= lambda!208625 lambda!208605)))

(assert (=> bs!1090477 (= lambda!208625 lambda!208620)))

(declare-fun bs!1090479 () Bool)

(assert (= bs!1090479 (and b!4695186 b!4695067)))

(assert (=> bs!1090479 (= lambda!208625 lambda!208586)))

(declare-fun bs!1090480 () Bool)

(assert (= bs!1090480 (and b!4695186 d!1492530)))

(assert (=> bs!1090480 (= (= lt!1855869 lt!1856265) (= lambda!208625 lambda!208622))))

(declare-fun bs!1090481 () Bool)

(assert (= bs!1090481 (and b!4695186 b!4695092)))

(assert (=> bs!1090481 (= lambda!208625 lambda!208604)))

(declare-fun bs!1090482 () Bool)

(assert (= bs!1090482 (and b!4695186 d!1492422)))

(assert (=> bs!1090482 (= (= lt!1855869 lt!1856127) (= lambda!208625 lambda!208589))))

(assert (=> bs!1090478 (= (= lt!1855869 lt!1856132) (= lambda!208625 lambda!208588))))

(assert (=> b!4695186 true))

(declare-fun lambda!208626 () Int)

(declare-fun lt!1856302 () ListMap!5005)

(assert (=> bs!1090473 (= (= lt!1856302 lt!1856208) (= lambda!208626 lambda!208606))))

(assert (=> bs!1090474 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208624))))

(assert (=> bs!1090475 (= (= lt!1856302 lt!1856203) (= lambda!208626 lambda!208608))))

(assert (=> bs!1090476 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208619))))

(assert (=> bs!1090477 (= (= lt!1856302 lt!1856270) (= lambda!208626 lambda!208621))))

(assert (=> bs!1090478 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208587))))

(assert (=> bs!1090477 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208620))))

(assert (=> bs!1090479 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208586))))

(assert (=> bs!1090480 (= (= lt!1856302 lt!1856265) (= lambda!208626 lambda!208622))))

(assert (=> bs!1090481 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208604))))

(assert (=> b!4695186 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208625))))

(assert (=> bs!1090473 (= (= lt!1856302 lt!1855869) (= lambda!208626 lambda!208605))))

(assert (=> bs!1090482 (= (= lt!1856302 lt!1856127) (= lambda!208626 lambda!208589))))

(assert (=> bs!1090478 (= (= lt!1856302 lt!1856132) (= lambda!208626 lambda!208588))))

(assert (=> b!4695186 true))

(declare-fun bs!1090483 () Bool)

(declare-fun d!1492542 () Bool)

(assert (= bs!1090483 (and d!1492542 b!4695090)))

(declare-fun lt!1856297 () ListMap!5005)

(declare-fun lambda!208627 () Int)

(assert (=> bs!1090483 (= (= lt!1856297 lt!1856208) (= lambda!208627 lambda!208606))))

(declare-fun bs!1090484 () Bool)

(assert (= bs!1090484 (and d!1492542 b!4695188)))

(assert (=> bs!1090484 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208624))))

(declare-fun bs!1090485 () Bool)

(assert (= bs!1090485 (and d!1492542 d!1492480)))

(assert (=> bs!1090485 (= (= lt!1856297 lt!1856203) (= lambda!208627 lambda!208608))))

(declare-fun bs!1090486 () Bool)

(assert (= bs!1090486 (and d!1492542 b!4695152)))

(assert (=> bs!1090486 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208619))))

(declare-fun bs!1090487 () Bool)

(assert (= bs!1090487 (and d!1492542 b!4695186)))

(assert (=> bs!1090487 (= (= lt!1856297 lt!1856302) (= lambda!208627 lambda!208626))))

(declare-fun bs!1090488 () Bool)

(assert (= bs!1090488 (and d!1492542 b!4695150)))

(assert (=> bs!1090488 (= (= lt!1856297 lt!1856270) (= lambda!208627 lambda!208621))))

(declare-fun bs!1090489 () Bool)

(assert (= bs!1090489 (and d!1492542 b!4695065)))

(assert (=> bs!1090489 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208587))))

(assert (=> bs!1090488 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208620))))

(declare-fun bs!1090490 () Bool)

(assert (= bs!1090490 (and d!1492542 b!4695067)))

(assert (=> bs!1090490 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208586))))

(declare-fun bs!1090491 () Bool)

(assert (= bs!1090491 (and d!1492542 d!1492530)))

(assert (=> bs!1090491 (= (= lt!1856297 lt!1856265) (= lambda!208627 lambda!208622))))

(declare-fun bs!1090492 () Bool)

(assert (= bs!1090492 (and d!1492542 b!4695092)))

(assert (=> bs!1090492 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208604))))

(assert (=> bs!1090487 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208625))))

(assert (=> bs!1090483 (= (= lt!1856297 lt!1855869) (= lambda!208627 lambda!208605))))

(declare-fun bs!1090493 () Bool)

(assert (= bs!1090493 (and d!1492542 d!1492422)))

(assert (=> bs!1090493 (= (= lt!1856297 lt!1856127) (= lambda!208627 lambda!208589))))

(assert (=> bs!1090489 (= (= lt!1856297 lt!1856132) (= lambda!208627 lambda!208588))))

(assert (=> d!1492542 true))

(declare-fun b!4695185 () Bool)

(declare-fun res!1981251 () Bool)

(declare-fun e!2928976 () Bool)

(assert (=> b!4695185 (=> (not res!1981251) (not e!2928976))))

(assert (=> b!4695185 (= res!1981251 (forall!11361 (toList!5641 lt!1855869) lambda!208627))))

(declare-fun call!328202 () Bool)

(declare-fun c!802682 () Bool)

(declare-fun bm!328196 () Bool)

(assert (=> bm!328196 (= call!328202 (forall!11361 (ite c!802682 (toList!5641 lt!1855869) (t!359785 lt!1855865)) (ite c!802682 lambda!208624 lambda!208626)))))

(declare-fun bm!328197 () Bool)

(declare-fun call!328201 () Unit!125029)

(assert (=> bm!328197 (= call!328201 (lemmaContainsAllItsOwnKeys!714 lt!1855869))))

(declare-fun call!328203 () Bool)

(declare-fun bm!328198 () Bool)

(assert (=> bm!328198 (= call!328203 (forall!11361 (toList!5641 lt!1855869) (ite c!802682 lambda!208624 lambda!208626)))))

(declare-fun e!2928975 () ListMap!5005)

(assert (=> b!4695186 (= e!2928975 lt!1856302)))

(declare-fun lt!1856289 () ListMap!5005)

(assert (=> b!4695186 (= lt!1856289 (+!2160 lt!1855869 (h!58730 lt!1855865)))))

(assert (=> b!4695186 (= lt!1856302 (addToMapMapFromBucket!1308 (t!359785 lt!1855865) (+!2160 lt!1855869 (h!58730 lt!1855865))))))

(declare-fun lt!1856300 () Unit!125029)

(assert (=> b!4695186 (= lt!1856300 call!328201)))

(assert (=> b!4695186 (forall!11361 (toList!5641 lt!1855869) lambda!208625)))

(declare-fun lt!1856305 () Unit!125029)

(assert (=> b!4695186 (= lt!1856305 lt!1856300)))

(assert (=> b!4695186 (forall!11361 (toList!5641 lt!1856289) lambda!208626)))

(declare-fun lt!1856301 () Unit!125029)

(declare-fun Unit!125114 () Unit!125029)

(assert (=> b!4695186 (= lt!1856301 Unit!125114)))

(assert (=> b!4695186 call!328202))

(declare-fun lt!1856306 () Unit!125029)

(declare-fun Unit!125115 () Unit!125029)

(assert (=> b!4695186 (= lt!1856306 Unit!125115)))

(declare-fun lt!1856292 () Unit!125029)

(declare-fun Unit!125116 () Unit!125029)

(assert (=> b!4695186 (= lt!1856292 Unit!125116)))

(declare-fun lt!1856293 () Unit!125029)

(assert (=> b!4695186 (= lt!1856293 (forallContained!3468 (toList!5641 lt!1856289) lambda!208626 (h!58730 lt!1855865)))))

(assert (=> b!4695186 (contains!15706 lt!1856289 (_1!30243 (h!58730 lt!1855865)))))

(declare-fun lt!1856304 () Unit!125029)

(declare-fun Unit!125117 () Unit!125029)

(assert (=> b!4695186 (= lt!1856304 Unit!125117)))

(assert (=> b!4695186 (contains!15706 lt!1856302 (_1!30243 (h!58730 lt!1855865)))))

(declare-fun lt!1856291 () Unit!125029)

(declare-fun Unit!125118 () Unit!125029)

(assert (=> b!4695186 (= lt!1856291 Unit!125118)))

(assert (=> b!4695186 (forall!11361 lt!1855865 lambda!208626)))

(declare-fun lt!1856295 () Unit!125029)

(declare-fun Unit!125119 () Unit!125029)

(assert (=> b!4695186 (= lt!1856295 Unit!125119)))

(assert (=> b!4695186 (forall!11361 (toList!5641 lt!1856289) lambda!208626)))

(declare-fun lt!1856308 () Unit!125029)

(declare-fun Unit!125120 () Unit!125029)

(assert (=> b!4695186 (= lt!1856308 Unit!125120)))

(declare-fun lt!1856298 () Unit!125029)

(declare-fun Unit!125121 () Unit!125029)

(assert (=> b!4695186 (= lt!1856298 Unit!125121)))

(declare-fun lt!1856307 () Unit!125029)

(assert (=> b!4695186 (= lt!1856307 (addForallContainsKeyThenBeforeAdding!713 lt!1855869 lt!1856302 (_1!30243 (h!58730 lt!1855865)) (_2!30243 (h!58730 lt!1855865))))))

(assert (=> b!4695186 (forall!11361 (toList!5641 lt!1855869) lambda!208626)))

(declare-fun lt!1856290 () Unit!125029)

(assert (=> b!4695186 (= lt!1856290 lt!1856307)))

(assert (=> b!4695186 (forall!11361 (toList!5641 lt!1855869) lambda!208626)))

(declare-fun lt!1856288 () Unit!125029)

(declare-fun Unit!125122 () Unit!125029)

(assert (=> b!4695186 (= lt!1856288 Unit!125122)))

(declare-fun res!1981252 () Bool)

(assert (=> b!4695186 (= res!1981252 (forall!11361 lt!1855865 lambda!208626))))

(declare-fun e!2928977 () Bool)

(assert (=> b!4695186 (=> (not res!1981252) (not e!2928977))))

(assert (=> b!4695186 e!2928977))

(declare-fun lt!1856303 () Unit!125029)

(declare-fun Unit!125123 () Unit!125029)

(assert (=> b!4695186 (= lt!1856303 Unit!125123)))

(declare-fun b!4695187 () Bool)

(assert (=> b!4695187 (= e!2928977 call!328203)))

(assert (=> d!1492542 e!2928976))

(declare-fun res!1981253 () Bool)

(assert (=> d!1492542 (=> (not res!1981253) (not e!2928976))))

(assert (=> d!1492542 (= res!1981253 (forall!11361 lt!1855865 lambda!208627))))

(assert (=> d!1492542 (= lt!1856297 e!2928975)))

(assert (=> d!1492542 (= c!802682 ((_ is Nil!52469) lt!1855865))))

(assert (=> d!1492542 (noDuplicateKeys!1876 lt!1855865)))

(assert (=> d!1492542 (= (addToMapMapFromBucket!1308 lt!1855865 lt!1855869) lt!1856297)))

(assert (=> b!4695188 (= e!2928975 lt!1855869)))

(declare-fun lt!1856294 () Unit!125029)

(assert (=> b!4695188 (= lt!1856294 call!328201)))

(assert (=> b!4695188 call!328202))

(declare-fun lt!1856299 () Unit!125029)

(assert (=> b!4695188 (= lt!1856299 lt!1856294)))

(assert (=> b!4695188 call!328203))

(declare-fun lt!1856296 () Unit!125029)

(declare-fun Unit!125124 () Unit!125029)

(assert (=> b!4695188 (= lt!1856296 Unit!125124)))

(declare-fun b!4695189 () Bool)

(assert (=> b!4695189 (= e!2928976 (invariantList!1426 (toList!5641 lt!1856297)))))

(assert (= (and d!1492542 c!802682) b!4695188))

(assert (= (and d!1492542 (not c!802682)) b!4695186))

(assert (= (and b!4695186 res!1981252) b!4695187))

(assert (= (or b!4695188 b!4695186) bm!328197))

(assert (= (or b!4695188 b!4695187) bm!328198))

(assert (= (or b!4695188 b!4695186) bm!328196))

(assert (= (and d!1492542 res!1981253) b!4695185))

(assert (= (and b!4695185 res!1981251) b!4695189))

(declare-fun m!5602857 () Bool)

(assert (=> bm!328196 m!5602857))

(declare-fun m!5602859 () Bool)

(assert (=> b!4695189 m!5602859))

(declare-fun m!5602861 () Bool)

(assert (=> bm!328198 m!5602861))

(declare-fun m!5602863 () Bool)

(assert (=> b!4695185 m!5602863))

(assert (=> bm!328197 m!5602481))

(declare-fun m!5602865 () Bool)

(assert (=> d!1492542 m!5602865))

(assert (=> d!1492542 m!5602771))

(declare-fun m!5602867 () Bool)

(assert (=> b!4695186 m!5602867))

(declare-fun m!5602869 () Bool)

(assert (=> b!4695186 m!5602869))

(declare-fun m!5602871 () Bool)

(assert (=> b!4695186 m!5602871))

(declare-fun m!5602873 () Bool)

(assert (=> b!4695186 m!5602873))

(declare-fun m!5602875 () Bool)

(assert (=> b!4695186 m!5602875))

(assert (=> b!4695186 m!5602873))

(declare-fun m!5602877 () Bool)

(assert (=> b!4695186 m!5602877))

(declare-fun m!5602879 () Bool)

(assert (=> b!4695186 m!5602879))

(declare-fun m!5602881 () Bool)

(assert (=> b!4695186 m!5602881))

(declare-fun m!5602883 () Bool)

(assert (=> b!4695186 m!5602883))

(assert (=> b!4695186 m!5602869))

(assert (=> b!4695186 m!5602871))

(assert (=> b!4695186 m!5602877))

(declare-fun m!5602885 () Bool)

(assert (=> b!4695186 m!5602885))

(assert (=> b!4694920 d!1492542))

(declare-fun d!1492546 () Bool)

(declare-fun e!2928978 () Bool)

(assert (=> d!1492546 e!2928978))

(declare-fun res!1981254 () Bool)

(assert (=> d!1492546 (=> (not res!1981254) (not e!2928978))))

(declare-fun lt!1856312 () ListMap!5005)

(assert (=> d!1492546 (= res!1981254 (contains!15706 lt!1856312 (_1!30243 (h!58730 oldBucket!34))))))

(declare-fun lt!1856309 () List!52593)

(assert (=> d!1492546 (= lt!1856312 (ListMap!5006 lt!1856309))))

(declare-fun lt!1856311 () Unit!125029)

(declare-fun lt!1856310 () Unit!125029)

(assert (=> d!1492546 (= lt!1856311 lt!1856310)))

(assert (=> d!1492546 (= (getValueByKey!1811 lt!1856309 (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492546 (= lt!1856310 (lemmaContainsTupThenGetReturnValue!1016 lt!1856309 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492546 (= lt!1856309 (insertNoDuplicatedKeys!524 (toList!5641 lt!1855873) (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492546 (= (+!2160 lt!1855873 (h!58730 oldBucket!34)) lt!1856312)))

(declare-fun b!4695190 () Bool)

(declare-fun res!1981255 () Bool)

(assert (=> b!4695190 (=> (not res!1981255) (not e!2928978))))

(assert (=> b!4695190 (= res!1981255 (= (getValueByKey!1811 (toList!5641 lt!1856312) (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34)))))))

(declare-fun b!4695191 () Bool)

(assert (=> b!4695191 (= e!2928978 (contains!15711 (toList!5641 lt!1856312) (h!58730 oldBucket!34)))))

(assert (= (and d!1492546 res!1981254) b!4695190))

(assert (= (and b!4695190 res!1981255) b!4695191))

(declare-fun m!5602887 () Bool)

(assert (=> d!1492546 m!5602887))

(declare-fun m!5602889 () Bool)

(assert (=> d!1492546 m!5602889))

(declare-fun m!5602891 () Bool)

(assert (=> d!1492546 m!5602891))

(declare-fun m!5602893 () Bool)

(assert (=> d!1492546 m!5602893))

(declare-fun m!5602895 () Bool)

(assert (=> b!4695190 m!5602895))

(declare-fun m!5602897 () Bool)

(assert (=> b!4695191 m!5602897))

(assert (=> b!4694920 d!1492546))

(declare-fun d!1492548 () Bool)

(assert (=> d!1492548 (= (head!10015 (toList!5642 lm!2023)) (h!58731 (toList!5642 lm!2023)))))

(assert (=> b!4694919 d!1492548))

(declare-fun bs!1090494 () Bool)

(declare-fun b!4695195 () Bool)

(assert (= bs!1090494 (and b!4695195 b!4695090)))

(declare-fun lambda!208628 () Int)

(assert (=> bs!1090494 (= (= lt!1855869 lt!1856208) (= lambda!208628 lambda!208606))))

(declare-fun bs!1090495 () Bool)

(assert (= bs!1090495 (and b!4695195 b!4695188)))

(assert (=> bs!1090495 (= lambda!208628 lambda!208624)))

(declare-fun bs!1090496 () Bool)

(assert (= bs!1090496 (and b!4695195 d!1492542)))

(assert (=> bs!1090496 (= (= lt!1855869 lt!1856297) (= lambda!208628 lambda!208627))))

(declare-fun bs!1090497 () Bool)

(assert (= bs!1090497 (and b!4695195 d!1492480)))

(assert (=> bs!1090497 (= (= lt!1855869 lt!1856203) (= lambda!208628 lambda!208608))))

(declare-fun bs!1090498 () Bool)

(assert (= bs!1090498 (and b!4695195 b!4695152)))

(assert (=> bs!1090498 (= lambda!208628 lambda!208619)))

(declare-fun bs!1090499 () Bool)

(assert (= bs!1090499 (and b!4695195 b!4695186)))

(assert (=> bs!1090499 (= (= lt!1855869 lt!1856302) (= lambda!208628 lambda!208626))))

(declare-fun bs!1090500 () Bool)

(assert (= bs!1090500 (and b!4695195 b!4695150)))

(assert (=> bs!1090500 (= (= lt!1855869 lt!1856270) (= lambda!208628 lambda!208621))))

(declare-fun bs!1090501 () Bool)

(assert (= bs!1090501 (and b!4695195 b!4695065)))

(assert (=> bs!1090501 (= lambda!208628 lambda!208587)))

(assert (=> bs!1090500 (= lambda!208628 lambda!208620)))

(declare-fun bs!1090502 () Bool)

(assert (= bs!1090502 (and b!4695195 b!4695067)))

(assert (=> bs!1090502 (= lambda!208628 lambda!208586)))

(declare-fun bs!1090503 () Bool)

(assert (= bs!1090503 (and b!4695195 d!1492530)))

(assert (=> bs!1090503 (= (= lt!1855869 lt!1856265) (= lambda!208628 lambda!208622))))

(declare-fun bs!1090504 () Bool)

(assert (= bs!1090504 (and b!4695195 b!4695092)))

(assert (=> bs!1090504 (= lambda!208628 lambda!208604)))

(assert (=> bs!1090499 (= lambda!208628 lambda!208625)))

(assert (=> bs!1090494 (= lambda!208628 lambda!208605)))

(declare-fun bs!1090505 () Bool)

(assert (= bs!1090505 (and b!4695195 d!1492422)))

(assert (=> bs!1090505 (= (= lt!1855869 lt!1856127) (= lambda!208628 lambda!208589))))

(assert (=> bs!1090501 (= (= lt!1855869 lt!1856132) (= lambda!208628 lambda!208588))))

(assert (=> b!4695195 true))

(declare-fun bs!1090506 () Bool)

(declare-fun b!4695193 () Bool)

(assert (= bs!1090506 (and b!4695193 b!4695090)))

(declare-fun lambda!208629 () Int)

(assert (=> bs!1090506 (= (= lt!1855869 lt!1856208) (= lambda!208629 lambda!208606))))

(declare-fun bs!1090507 () Bool)

(assert (= bs!1090507 (and b!4695193 b!4695188)))

(assert (=> bs!1090507 (= lambda!208629 lambda!208624)))

(declare-fun bs!1090508 () Bool)

(assert (= bs!1090508 (and b!4695193 d!1492542)))

(assert (=> bs!1090508 (= (= lt!1855869 lt!1856297) (= lambda!208629 lambda!208627))))

(declare-fun bs!1090509 () Bool)

(assert (= bs!1090509 (and b!4695193 d!1492480)))

(assert (=> bs!1090509 (= (= lt!1855869 lt!1856203) (= lambda!208629 lambda!208608))))

(declare-fun bs!1090510 () Bool)

(assert (= bs!1090510 (and b!4695193 b!4695186)))

(assert (=> bs!1090510 (= (= lt!1855869 lt!1856302) (= lambda!208629 lambda!208626))))

(declare-fun bs!1090511 () Bool)

(assert (= bs!1090511 (and b!4695193 b!4695150)))

(assert (=> bs!1090511 (= (= lt!1855869 lt!1856270) (= lambda!208629 lambda!208621))))

(declare-fun bs!1090512 () Bool)

(assert (= bs!1090512 (and b!4695193 b!4695065)))

(assert (=> bs!1090512 (= lambda!208629 lambda!208587)))

(declare-fun bs!1090513 () Bool)

(assert (= bs!1090513 (and b!4695193 b!4695152)))

(assert (=> bs!1090513 (= lambda!208629 lambda!208619)))

(declare-fun bs!1090514 () Bool)

(assert (= bs!1090514 (and b!4695193 b!4695195)))

(assert (=> bs!1090514 (= lambda!208629 lambda!208628)))

(assert (=> bs!1090511 (= lambda!208629 lambda!208620)))

(declare-fun bs!1090515 () Bool)

(assert (= bs!1090515 (and b!4695193 b!4695067)))

(assert (=> bs!1090515 (= lambda!208629 lambda!208586)))

(declare-fun bs!1090516 () Bool)

(assert (= bs!1090516 (and b!4695193 d!1492530)))

(assert (=> bs!1090516 (= (= lt!1855869 lt!1856265) (= lambda!208629 lambda!208622))))

(declare-fun bs!1090517 () Bool)

(assert (= bs!1090517 (and b!4695193 b!4695092)))

(assert (=> bs!1090517 (= lambda!208629 lambda!208604)))

(assert (=> bs!1090510 (= lambda!208629 lambda!208625)))

(assert (=> bs!1090506 (= lambda!208629 lambda!208605)))

(declare-fun bs!1090518 () Bool)

(assert (= bs!1090518 (and b!4695193 d!1492422)))

(assert (=> bs!1090518 (= (= lt!1855869 lt!1856127) (= lambda!208629 lambda!208589))))

(assert (=> bs!1090512 (= (= lt!1855869 lt!1856132) (= lambda!208629 lambda!208588))))

(assert (=> b!4695193 true))

(declare-fun lambda!208630 () Int)

(declare-fun lt!1856327 () ListMap!5005)

(assert (=> bs!1090506 (= (= lt!1856327 lt!1856208) (= lambda!208630 lambda!208606))))

(assert (=> bs!1090507 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208624))))

(assert (=> bs!1090508 (= (= lt!1856327 lt!1856297) (= lambda!208630 lambda!208627))))

(assert (=> bs!1090509 (= (= lt!1856327 lt!1856203) (= lambda!208630 lambda!208608))))

(assert (=> b!4695193 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208629))))

(assert (=> bs!1090510 (= (= lt!1856327 lt!1856302) (= lambda!208630 lambda!208626))))

(assert (=> bs!1090511 (= (= lt!1856327 lt!1856270) (= lambda!208630 lambda!208621))))

(assert (=> bs!1090512 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208587))))

(assert (=> bs!1090513 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208619))))

(assert (=> bs!1090514 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208628))))

(assert (=> bs!1090511 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208620))))

(assert (=> bs!1090515 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208586))))

(assert (=> bs!1090516 (= (= lt!1856327 lt!1856265) (= lambda!208630 lambda!208622))))

(assert (=> bs!1090517 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208604))))

(assert (=> bs!1090510 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208625))))

(assert (=> bs!1090506 (= (= lt!1856327 lt!1855869) (= lambda!208630 lambda!208605))))

(assert (=> bs!1090518 (= (= lt!1856327 lt!1856127) (= lambda!208630 lambda!208589))))

(assert (=> bs!1090512 (= (= lt!1856327 lt!1856132) (= lambda!208630 lambda!208588))))

(assert (=> b!4695193 true))

(declare-fun bs!1090519 () Bool)

(declare-fun d!1492550 () Bool)

(assert (= bs!1090519 (and d!1492550 b!4695090)))

(declare-fun lambda!208631 () Int)

(declare-fun lt!1856322 () ListMap!5005)

(assert (=> bs!1090519 (= (= lt!1856322 lt!1856208) (= lambda!208631 lambda!208606))))

(declare-fun bs!1090520 () Bool)

(assert (= bs!1090520 (and d!1492550 b!4695188)))

(assert (=> bs!1090520 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208624))))

(declare-fun bs!1090521 () Bool)

(assert (= bs!1090521 (and d!1492550 d!1492542)))

(assert (=> bs!1090521 (= (= lt!1856322 lt!1856297) (= lambda!208631 lambda!208627))))

(declare-fun bs!1090522 () Bool)

(assert (= bs!1090522 (and d!1492550 d!1492480)))

(assert (=> bs!1090522 (= (= lt!1856322 lt!1856203) (= lambda!208631 lambda!208608))))

(declare-fun bs!1090523 () Bool)

(assert (= bs!1090523 (and d!1492550 b!4695193)))

(assert (=> bs!1090523 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208629))))

(declare-fun bs!1090524 () Bool)

(assert (= bs!1090524 (and d!1492550 b!4695186)))

(assert (=> bs!1090524 (= (= lt!1856322 lt!1856302) (= lambda!208631 lambda!208626))))

(assert (=> bs!1090523 (= (= lt!1856322 lt!1856327) (= lambda!208631 lambda!208630))))

(declare-fun bs!1090525 () Bool)

(assert (= bs!1090525 (and d!1492550 b!4695150)))

(assert (=> bs!1090525 (= (= lt!1856322 lt!1856270) (= lambda!208631 lambda!208621))))

(declare-fun bs!1090526 () Bool)

(assert (= bs!1090526 (and d!1492550 b!4695065)))

(assert (=> bs!1090526 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208587))))

(declare-fun bs!1090527 () Bool)

(assert (= bs!1090527 (and d!1492550 b!4695152)))

(assert (=> bs!1090527 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208619))))

(declare-fun bs!1090528 () Bool)

(assert (= bs!1090528 (and d!1492550 b!4695195)))

(assert (=> bs!1090528 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208628))))

(assert (=> bs!1090525 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208620))))

(declare-fun bs!1090529 () Bool)

(assert (= bs!1090529 (and d!1492550 b!4695067)))

(assert (=> bs!1090529 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208586))))

(declare-fun bs!1090530 () Bool)

(assert (= bs!1090530 (and d!1492550 d!1492530)))

(assert (=> bs!1090530 (= (= lt!1856322 lt!1856265) (= lambda!208631 lambda!208622))))

(declare-fun bs!1090531 () Bool)

(assert (= bs!1090531 (and d!1492550 b!4695092)))

(assert (=> bs!1090531 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208604))))

(assert (=> bs!1090524 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208625))))

(assert (=> bs!1090519 (= (= lt!1856322 lt!1855869) (= lambda!208631 lambda!208605))))

(declare-fun bs!1090532 () Bool)

(assert (= bs!1090532 (and d!1492550 d!1492422)))

(assert (=> bs!1090532 (= (= lt!1856322 lt!1856127) (= lambda!208631 lambda!208589))))

(assert (=> bs!1090526 (= (= lt!1856322 lt!1856132) (= lambda!208631 lambda!208588))))

(assert (=> d!1492550 true))

(declare-fun b!4695192 () Bool)

(declare-fun res!1981256 () Bool)

(declare-fun e!2928980 () Bool)

(assert (=> b!4695192 (=> (not res!1981256) (not e!2928980))))

(assert (=> b!4695192 (= res!1981256 (forall!11361 (toList!5641 lt!1855869) lambda!208631))))

(declare-fun call!328205 () Bool)

(declare-fun bm!328199 () Bool)

(declare-fun c!802683 () Bool)

(assert (=> bm!328199 (= call!328205 (forall!11361 (ite c!802683 (toList!5641 lt!1855869) (t!359785 (_2!30244 (h!58731 (toList!5642 lm!2023))))) (ite c!802683 lambda!208628 lambda!208630)))))

(declare-fun bm!328200 () Bool)

(declare-fun call!328204 () Unit!125029)

(assert (=> bm!328200 (= call!328204 (lemmaContainsAllItsOwnKeys!714 lt!1855869))))

(declare-fun call!328206 () Bool)

(declare-fun bm!328201 () Bool)

(assert (=> bm!328201 (= call!328206 (forall!11361 (toList!5641 lt!1855869) (ite c!802683 lambda!208628 lambda!208630)))))

(declare-fun e!2928979 () ListMap!5005)

(assert (=> b!4695193 (= e!2928979 lt!1856327)))

(declare-fun lt!1856314 () ListMap!5005)

(assert (=> b!4695193 (= lt!1856314 (+!2160 lt!1855869 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023))))))))

(assert (=> b!4695193 (= lt!1856327 (addToMapMapFromBucket!1308 (t!359785 (_2!30244 (h!58731 (toList!5642 lm!2023)))) (+!2160 lt!1855869 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023)))))))))

(declare-fun lt!1856325 () Unit!125029)

(assert (=> b!4695193 (= lt!1856325 call!328204)))

(assert (=> b!4695193 (forall!11361 (toList!5641 lt!1855869) lambda!208629)))

(declare-fun lt!1856330 () Unit!125029)

(assert (=> b!4695193 (= lt!1856330 lt!1856325)))

(assert (=> b!4695193 (forall!11361 (toList!5641 lt!1856314) lambda!208630)))

(declare-fun lt!1856326 () Unit!125029)

(declare-fun Unit!125136 () Unit!125029)

(assert (=> b!4695193 (= lt!1856326 Unit!125136)))

(assert (=> b!4695193 call!328205))

(declare-fun lt!1856331 () Unit!125029)

(declare-fun Unit!125137 () Unit!125029)

(assert (=> b!4695193 (= lt!1856331 Unit!125137)))

(declare-fun lt!1856317 () Unit!125029)

(declare-fun Unit!125138 () Unit!125029)

(assert (=> b!4695193 (= lt!1856317 Unit!125138)))

(declare-fun lt!1856318 () Unit!125029)

(assert (=> b!4695193 (= lt!1856318 (forallContained!3468 (toList!5641 lt!1856314) lambda!208630 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023))))))))

(assert (=> b!4695193 (contains!15706 lt!1856314 (_1!30243 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023))))))))

(declare-fun lt!1856329 () Unit!125029)

(declare-fun Unit!125139 () Unit!125029)

(assert (=> b!4695193 (= lt!1856329 Unit!125139)))

(assert (=> b!4695193 (contains!15706 lt!1856327 (_1!30243 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023))))))))

(declare-fun lt!1856316 () Unit!125029)

(declare-fun Unit!125140 () Unit!125029)

(assert (=> b!4695193 (= lt!1856316 Unit!125140)))

(assert (=> b!4695193 (forall!11361 (_2!30244 (h!58731 (toList!5642 lm!2023))) lambda!208630)))

(declare-fun lt!1856320 () Unit!125029)

(declare-fun Unit!125141 () Unit!125029)

(assert (=> b!4695193 (= lt!1856320 Unit!125141)))

(assert (=> b!4695193 (forall!11361 (toList!5641 lt!1856314) lambda!208630)))

(declare-fun lt!1856333 () Unit!125029)

(declare-fun Unit!125142 () Unit!125029)

(assert (=> b!4695193 (= lt!1856333 Unit!125142)))

(declare-fun lt!1856323 () Unit!125029)

(declare-fun Unit!125143 () Unit!125029)

(assert (=> b!4695193 (= lt!1856323 Unit!125143)))

(declare-fun lt!1856332 () Unit!125029)

(assert (=> b!4695193 (= lt!1856332 (addForallContainsKeyThenBeforeAdding!713 lt!1855869 lt!1856327 (_1!30243 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023))))) (_2!30243 (h!58730 (_2!30244 (h!58731 (toList!5642 lm!2023)))))))))

(assert (=> b!4695193 (forall!11361 (toList!5641 lt!1855869) lambda!208630)))

(declare-fun lt!1856315 () Unit!125029)

(assert (=> b!4695193 (= lt!1856315 lt!1856332)))

(assert (=> b!4695193 (forall!11361 (toList!5641 lt!1855869) lambda!208630)))

(declare-fun lt!1856313 () Unit!125029)

(declare-fun Unit!125144 () Unit!125029)

(assert (=> b!4695193 (= lt!1856313 Unit!125144)))

(declare-fun res!1981257 () Bool)

(assert (=> b!4695193 (= res!1981257 (forall!11361 (_2!30244 (h!58731 (toList!5642 lm!2023))) lambda!208630))))

(declare-fun e!2928981 () Bool)

(assert (=> b!4695193 (=> (not res!1981257) (not e!2928981))))

(assert (=> b!4695193 e!2928981))

(declare-fun lt!1856328 () Unit!125029)

(declare-fun Unit!125145 () Unit!125029)

(assert (=> b!4695193 (= lt!1856328 Unit!125145)))

(declare-fun b!4695194 () Bool)

(assert (=> b!4695194 (= e!2928981 call!328206)))

(assert (=> d!1492550 e!2928980))

(declare-fun res!1981258 () Bool)

(assert (=> d!1492550 (=> (not res!1981258) (not e!2928980))))

(assert (=> d!1492550 (= res!1981258 (forall!11361 (_2!30244 (h!58731 (toList!5642 lm!2023))) lambda!208631))))

(assert (=> d!1492550 (= lt!1856322 e!2928979)))

(assert (=> d!1492550 (= c!802683 ((_ is Nil!52469) (_2!30244 (h!58731 (toList!5642 lm!2023)))))))

(assert (=> d!1492550 (noDuplicateKeys!1876 (_2!30244 (h!58731 (toList!5642 lm!2023))))))

(assert (=> d!1492550 (= (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (toList!5642 lm!2023))) lt!1855869) lt!1856322)))

(assert (=> b!4695195 (= e!2928979 lt!1855869)))

(declare-fun lt!1856319 () Unit!125029)

(assert (=> b!4695195 (= lt!1856319 call!328204)))

(assert (=> b!4695195 call!328205))

(declare-fun lt!1856324 () Unit!125029)

(assert (=> b!4695195 (= lt!1856324 lt!1856319)))

(assert (=> b!4695195 call!328206))

(declare-fun lt!1856321 () Unit!125029)

(declare-fun Unit!125146 () Unit!125029)

(assert (=> b!4695195 (= lt!1856321 Unit!125146)))

(declare-fun b!4695196 () Bool)

(assert (=> b!4695196 (= e!2928980 (invariantList!1426 (toList!5641 lt!1856322)))))

(assert (= (and d!1492550 c!802683) b!4695195))

(assert (= (and d!1492550 (not c!802683)) b!4695193))

(assert (= (and b!4695193 res!1981257) b!4695194))

(assert (= (or b!4695195 b!4695193) bm!328200))

(assert (= (or b!4695195 b!4695194) bm!328201))

(assert (= (or b!4695195 b!4695193) bm!328199))

(assert (= (and d!1492550 res!1981258) b!4695192))

(assert (= (and b!4695192 res!1981256) b!4695196))

(declare-fun m!5602899 () Bool)

(assert (=> bm!328199 m!5602899))

(declare-fun m!5602901 () Bool)

(assert (=> b!4695196 m!5602901))

(declare-fun m!5602903 () Bool)

(assert (=> bm!328201 m!5602903))

(declare-fun m!5602905 () Bool)

(assert (=> b!4695192 m!5602905))

(assert (=> bm!328200 m!5602481))

(declare-fun m!5602907 () Bool)

(assert (=> d!1492550 m!5602907))

(declare-fun m!5602909 () Bool)

(assert (=> d!1492550 m!5602909))

(declare-fun m!5602911 () Bool)

(assert (=> b!4695193 m!5602911))

(declare-fun m!5602913 () Bool)

(assert (=> b!4695193 m!5602913))

(declare-fun m!5602915 () Bool)

(assert (=> b!4695193 m!5602915))

(declare-fun m!5602917 () Bool)

(assert (=> b!4695193 m!5602917))

(declare-fun m!5602919 () Bool)

(assert (=> b!4695193 m!5602919))

(assert (=> b!4695193 m!5602917))

(declare-fun m!5602921 () Bool)

(assert (=> b!4695193 m!5602921))

(declare-fun m!5602923 () Bool)

(assert (=> b!4695193 m!5602923))

(declare-fun m!5602925 () Bool)

(assert (=> b!4695193 m!5602925))

(declare-fun m!5602927 () Bool)

(assert (=> b!4695193 m!5602927))

(assert (=> b!4695193 m!5602913))

(assert (=> b!4695193 m!5602915))

(assert (=> b!4695193 m!5602921))

(declare-fun m!5602929 () Bool)

(assert (=> b!4695193 m!5602929))

(assert (=> b!4694908 d!1492550))

(declare-fun bs!1090533 () Bool)

(declare-fun d!1492552 () Bool)

(assert (= bs!1090533 (and d!1492552 d!1492534)))

(declare-fun lambda!208632 () Int)

(assert (=> bs!1090533 (= lambda!208632 lambda!208623)))

(declare-fun bs!1090534 () Bool)

(assert (= bs!1090534 (and d!1492552 start!475456)))

(assert (=> bs!1090534 (= lambda!208632 lambda!208505)))

(declare-fun bs!1090535 () Bool)

(assert (= bs!1090535 (and d!1492552 d!1492466)))

(assert (=> bs!1090535 (= lambda!208632 lambda!208594)))

(declare-fun bs!1090536 () Bool)

(assert (= bs!1090536 (and d!1492552 d!1492484)))

(assert (=> bs!1090536 (= lambda!208632 lambda!208609)))

(declare-fun bs!1090537 () Bool)

(assert (= bs!1090537 (and d!1492552 d!1492474)))

(assert (=> bs!1090537 (= lambda!208632 lambda!208602)))

(declare-fun lt!1856334 () ListMap!5005)

(assert (=> d!1492552 (invariantList!1426 (toList!5641 lt!1856334))))

(declare-fun e!2928982 () ListMap!5005)

(assert (=> d!1492552 (= lt!1856334 e!2928982)))

(declare-fun c!802684 () Bool)

(assert (=> d!1492552 (= c!802684 ((_ is Cons!52470) (t!359786 (toList!5642 lm!2023))))))

(assert (=> d!1492552 (forall!11359 (t!359786 (toList!5642 lm!2023)) lambda!208632)))

(assert (=> d!1492552 (= (extractMap!1902 (t!359786 (toList!5642 lm!2023))) lt!1856334)))

(declare-fun b!4695197 () Bool)

(assert (=> b!4695197 (= e!2928982 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (t!359786 (toList!5642 lm!2023)))) (extractMap!1902 (t!359786 (t!359786 (toList!5642 lm!2023))))))))

(declare-fun b!4695198 () Bool)

(assert (=> b!4695198 (= e!2928982 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492552 c!802684) b!4695197))

(assert (= (and d!1492552 (not c!802684)) b!4695198))

(declare-fun m!5602931 () Bool)

(assert (=> d!1492552 m!5602931))

(declare-fun m!5602933 () Bool)

(assert (=> d!1492552 m!5602933))

(declare-fun m!5602935 () Bool)

(assert (=> b!4695197 m!5602935))

(assert (=> b!4695197 m!5602935))

(declare-fun m!5602937 () Bool)

(assert (=> b!4695197 m!5602937))

(assert (=> b!4694908 d!1492552))

(declare-fun d!1492554 () Bool)

(assert (=> d!1492554 (= (tail!8654 lm!2023) (ListLongMap!4172 (tail!8653 (toList!5642 lm!2023))))))

(declare-fun bs!1090538 () Bool)

(assert (= bs!1090538 d!1492554))

(declare-fun m!5602939 () Bool)

(assert (=> bs!1090538 m!5602939))

(assert (=> b!4694908 d!1492554))

(declare-fun bs!1090539 () Bool)

(declare-fun d!1492556 () Bool)

(assert (= bs!1090539 (and d!1492556 b!4695090)))

(declare-fun lambda!208635 () Int)

(assert (=> bs!1090539 (not (= lambda!208635 lambda!208606))))

(declare-fun bs!1090540 () Bool)

(assert (= bs!1090540 (and d!1492556 b!4695188)))

(assert (=> bs!1090540 (not (= lambda!208635 lambda!208624))))

(declare-fun bs!1090541 () Bool)

(assert (= bs!1090541 (and d!1492556 d!1492542)))

(assert (=> bs!1090541 (not (= lambda!208635 lambda!208627))))

(declare-fun bs!1090542 () Bool)

(assert (= bs!1090542 (and d!1492556 d!1492480)))

(assert (=> bs!1090542 (not (= lambda!208635 lambda!208608))))

(declare-fun bs!1090543 () Bool)

(assert (= bs!1090543 (and d!1492556 b!4695193)))

(assert (=> bs!1090543 (not (= lambda!208635 lambda!208629))))

(declare-fun bs!1090544 () Bool)

(assert (= bs!1090544 (and d!1492556 b!4695186)))

(assert (=> bs!1090544 (not (= lambda!208635 lambda!208626))))

(assert (=> bs!1090543 (not (= lambda!208635 lambda!208630))))

(declare-fun bs!1090545 () Bool)

(assert (= bs!1090545 (and d!1492556 b!4695150)))

(assert (=> bs!1090545 (not (= lambda!208635 lambda!208621))))

(declare-fun bs!1090546 () Bool)

(assert (= bs!1090546 (and d!1492556 b!4695065)))

(assert (=> bs!1090546 (not (= lambda!208635 lambda!208587))))

(declare-fun bs!1090547 () Bool)

(assert (= bs!1090547 (and d!1492556 d!1492550)))

(assert (=> bs!1090547 (not (= lambda!208635 lambda!208631))))

(declare-fun bs!1090548 () Bool)

(assert (= bs!1090548 (and d!1492556 b!4695152)))

(assert (=> bs!1090548 (not (= lambda!208635 lambda!208619))))

(declare-fun bs!1090549 () Bool)

(assert (= bs!1090549 (and d!1492556 b!4695195)))

(assert (=> bs!1090549 (not (= lambda!208635 lambda!208628))))

(assert (=> bs!1090545 (not (= lambda!208635 lambda!208620))))

(declare-fun bs!1090550 () Bool)

(assert (= bs!1090550 (and d!1492556 b!4695067)))

(assert (=> bs!1090550 (not (= lambda!208635 lambda!208586))))

(declare-fun bs!1090551 () Bool)

(assert (= bs!1090551 (and d!1492556 d!1492530)))

(assert (=> bs!1090551 (not (= lambda!208635 lambda!208622))))

(declare-fun bs!1090552 () Bool)

(assert (= bs!1090552 (and d!1492556 b!4695092)))

(assert (=> bs!1090552 (not (= lambda!208635 lambda!208604))))

(assert (=> bs!1090544 (not (= lambda!208635 lambda!208625))))

(assert (=> bs!1090539 (not (= lambda!208635 lambda!208605))))

(declare-fun bs!1090553 () Bool)

(assert (= bs!1090553 (and d!1492556 d!1492422)))

(assert (=> bs!1090553 (not (= lambda!208635 lambda!208589))))

(assert (=> bs!1090546 (not (= lambda!208635 lambda!208588))))

(assert (=> d!1492556 true))

(assert (=> d!1492556 true))

(assert (=> d!1492556 (= (allKeysSameHash!1702 oldBucket!34 hash!405 hashF!1323) (forall!11361 oldBucket!34 lambda!208635))))

(declare-fun bs!1090554 () Bool)

(assert (= bs!1090554 d!1492556))

(declare-fun m!5602941 () Bool)

(assert (=> bs!1090554 m!5602941))

(assert (=> b!4694923 d!1492556))

(declare-fun b!4695203 () Bool)

(declare-fun e!2928983 () Bool)

(declare-fun e!2928984 () Bool)

(assert (=> b!4695203 (= e!2928983 e!2928984)))

(declare-fun res!1981260 () Bool)

(assert (=> b!4695203 (=> (not res!1981260) (not e!2928984))))

(assert (=> b!4695203 (= res!1981260 (isDefined!9388 (getValueByKey!1811 (toList!5641 lt!1855856) key!4653)))))

(declare-fun b!4695205 () Bool)

(declare-fun e!2928988 () Unit!125029)

(declare-fun Unit!125147 () Unit!125029)

(assert (=> b!4695205 (= e!2928988 Unit!125147)))

(declare-fun b!4695206 () Bool)

(declare-fun e!2928987 () List!52596)

(assert (=> b!4695206 (= e!2928987 (keys!18751 lt!1855856))))

(declare-fun b!4695207 () Bool)

(assert (=> b!4695207 (= e!2928987 (getKeysList!866 (toList!5641 lt!1855856)))))

(declare-fun b!4695208 () Bool)

(assert (=> b!4695208 false))

(declare-fun lt!1856336 () Unit!125029)

(declare-fun lt!1856337 () Unit!125029)

(assert (=> b!4695208 (= lt!1856336 lt!1856337)))

(assert (=> b!4695208 (containsKey!3109 (toList!5641 lt!1855856) key!4653)))

(assert (=> b!4695208 (= lt!1856337 (lemmaInGetKeysListThenContainsKey!865 (toList!5641 lt!1855856) key!4653))))

(declare-fun Unit!125148 () Unit!125029)

(assert (=> b!4695208 (= e!2928988 Unit!125148)))

(declare-fun b!4695209 () Bool)

(assert (=> b!4695209 (= e!2928984 (contains!15712 (keys!18751 lt!1855856) key!4653))))

(declare-fun b!4695210 () Bool)

(declare-fun e!2928985 () Unit!125029)

(declare-fun lt!1856340 () Unit!125029)

(assert (=> b!4695210 (= e!2928985 lt!1856340)))

(declare-fun lt!1856342 () Unit!125029)

(assert (=> b!4695210 (= lt!1856342 (lemmaContainsKeyImpliesGetValueByKeyDefined!1703 (toList!5641 lt!1855856) key!4653))))

(assert (=> b!4695210 (isDefined!9388 (getValueByKey!1811 (toList!5641 lt!1855856) key!4653))))

(declare-fun lt!1856335 () Unit!125029)

(assert (=> b!4695210 (= lt!1856335 lt!1856342)))

(assert (=> b!4695210 (= lt!1856340 (lemmaInListThenGetKeysListContains!861 (toList!5641 lt!1855856) key!4653))))

(declare-fun call!328207 () Bool)

(assert (=> b!4695210 call!328207))

(declare-fun bm!328202 () Bool)

(assert (=> bm!328202 (= call!328207 (contains!15712 e!2928987 key!4653))))

(declare-fun c!802687 () Bool)

(declare-fun c!802686 () Bool)

(assert (=> bm!328202 (= c!802687 c!802686)))

(declare-fun b!4695211 () Bool)

(assert (=> b!4695211 (= e!2928985 e!2928988)))

(declare-fun c!802685 () Bool)

(assert (=> b!4695211 (= c!802685 call!328207)))

(declare-fun b!4695204 () Bool)

(declare-fun e!2928986 () Bool)

(assert (=> b!4695204 (= e!2928986 (not (contains!15712 (keys!18751 lt!1855856) key!4653)))))

(declare-fun d!1492558 () Bool)

(assert (=> d!1492558 e!2928983))

(declare-fun res!1981259 () Bool)

(assert (=> d!1492558 (=> res!1981259 e!2928983)))

(assert (=> d!1492558 (= res!1981259 e!2928986)))

(declare-fun res!1981261 () Bool)

(assert (=> d!1492558 (=> (not res!1981261) (not e!2928986))))

(declare-fun lt!1856339 () Bool)

(assert (=> d!1492558 (= res!1981261 (not lt!1856339))))

(declare-fun lt!1856338 () Bool)

(assert (=> d!1492558 (= lt!1856339 lt!1856338)))

(declare-fun lt!1856341 () Unit!125029)

(assert (=> d!1492558 (= lt!1856341 e!2928985)))

(assert (=> d!1492558 (= c!802686 lt!1856338)))

(assert (=> d!1492558 (= lt!1856338 (containsKey!3109 (toList!5641 lt!1855856) key!4653))))

(assert (=> d!1492558 (= (contains!15706 lt!1855856 key!4653) lt!1856339)))

(assert (= (and d!1492558 c!802686) b!4695210))

(assert (= (and d!1492558 (not c!802686)) b!4695211))

(assert (= (and b!4695211 c!802685) b!4695208))

(assert (= (and b!4695211 (not c!802685)) b!4695205))

(assert (= (or b!4695210 b!4695211) bm!328202))

(assert (= (and bm!328202 c!802687) b!4695207))

(assert (= (and bm!328202 (not c!802687)) b!4695206))

(assert (= (and d!1492558 res!1981261) b!4695204))

(assert (= (and d!1492558 (not res!1981259)) b!4695203))

(assert (= (and b!4695203 res!1981260) b!4695209))

(declare-fun m!5602943 () Bool)

(assert (=> b!4695209 m!5602943))

(assert (=> b!4695209 m!5602943))

(declare-fun m!5602945 () Bool)

(assert (=> b!4695209 m!5602945))

(declare-fun m!5602947 () Bool)

(assert (=> bm!328202 m!5602947))

(declare-fun m!5602949 () Bool)

(assert (=> b!4695210 m!5602949))

(declare-fun m!5602951 () Bool)

(assert (=> b!4695210 m!5602951))

(assert (=> b!4695210 m!5602951))

(declare-fun m!5602953 () Bool)

(assert (=> b!4695210 m!5602953))

(declare-fun m!5602955 () Bool)

(assert (=> b!4695210 m!5602955))

(assert (=> b!4695203 m!5602951))

(assert (=> b!4695203 m!5602951))

(assert (=> b!4695203 m!5602953))

(assert (=> b!4695204 m!5602943))

(assert (=> b!4695204 m!5602943))

(assert (=> b!4695204 m!5602945))

(declare-fun m!5602957 () Bool)

(assert (=> b!4695208 m!5602957))

(declare-fun m!5602959 () Bool)

(assert (=> b!4695208 m!5602959))

(assert (=> d!1492558 m!5602957))

(assert (=> b!4695206 m!5602943))

(declare-fun m!5602961 () Bool)

(assert (=> b!4695207 m!5602961))

(assert (=> b!4694902 d!1492558))

(declare-fun bs!1090555 () Bool)

(declare-fun d!1492560 () Bool)

(assert (= bs!1090555 (and d!1492560 d!1492534)))

(declare-fun lambda!208636 () Int)

(assert (=> bs!1090555 (= lambda!208636 lambda!208623)))

(declare-fun bs!1090556 () Bool)

(assert (= bs!1090556 (and d!1492560 d!1492552)))

(assert (=> bs!1090556 (= lambda!208636 lambda!208632)))

(declare-fun bs!1090557 () Bool)

(assert (= bs!1090557 (and d!1492560 start!475456)))

(assert (=> bs!1090557 (= lambda!208636 lambda!208505)))

(declare-fun bs!1090558 () Bool)

(assert (= bs!1090558 (and d!1492560 d!1492466)))

(assert (=> bs!1090558 (= lambda!208636 lambda!208594)))

(declare-fun bs!1090559 () Bool)

(assert (= bs!1090559 (and d!1492560 d!1492484)))

(assert (=> bs!1090559 (= lambda!208636 lambda!208609)))

(declare-fun bs!1090560 () Bool)

(assert (= bs!1090560 (and d!1492560 d!1492474)))

(assert (=> bs!1090560 (= lambda!208636 lambda!208602)))

(declare-fun lt!1856343 () ListMap!5005)

(assert (=> d!1492560 (invariantList!1426 (toList!5641 lt!1856343))))

(declare-fun e!2928989 () ListMap!5005)

(assert (=> d!1492560 (= lt!1856343 e!2928989)))

(declare-fun c!802688 () Bool)

(assert (=> d!1492560 (= c!802688 ((_ is Cons!52470) (toList!5642 lm!2023)))))

(assert (=> d!1492560 (forall!11359 (toList!5642 lm!2023) lambda!208636)))

(assert (=> d!1492560 (= (extractMap!1902 (toList!5642 lm!2023)) lt!1856343)))

(declare-fun b!4695212 () Bool)

(assert (=> b!4695212 (= e!2928989 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (toList!5642 lm!2023))) (extractMap!1902 (t!359786 (toList!5642 lm!2023)))))))

(declare-fun b!4695213 () Bool)

(assert (=> b!4695213 (= e!2928989 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492560 c!802688) b!4695212))

(assert (= (and d!1492560 (not c!802688)) b!4695213))

(declare-fun m!5602963 () Bool)

(assert (=> d!1492560 m!5602963))

(declare-fun m!5602965 () Bool)

(assert (=> d!1492560 m!5602965))

(assert (=> b!4695212 m!5602165))

(assert (=> b!4695212 m!5602165))

(declare-fun m!5602967 () Bool)

(assert (=> b!4695212 m!5602967))

(assert (=> b!4694902 d!1492560))

(declare-fun d!1492562 () Bool)

(declare-fun res!1981266 () Bool)

(declare-fun e!2928994 () Bool)

(assert (=> d!1492562 (=> res!1981266 e!2928994)))

(assert (=> d!1492562 (= res!1981266 ((_ is Nil!52470) lt!1855866))))

(assert (=> d!1492562 (= (forall!11359 lt!1855866 lambda!208505) e!2928994)))

(declare-fun b!4695218 () Bool)

(declare-fun e!2928995 () Bool)

(assert (=> b!4695218 (= e!2928994 e!2928995)))

(declare-fun res!1981267 () Bool)

(assert (=> b!4695218 (=> (not res!1981267) (not e!2928995))))

(declare-fun dynLambda!21729 (Int tuple2!53900) Bool)

(assert (=> b!4695218 (= res!1981267 (dynLambda!21729 lambda!208505 (h!58731 lt!1855866)))))

(declare-fun b!4695219 () Bool)

(assert (=> b!4695219 (= e!2928995 (forall!11359 (t!359786 lt!1855866) lambda!208505))))

(assert (= (and d!1492562 (not res!1981266)) b!4695218))

(assert (= (and b!4695218 res!1981267) b!4695219))

(declare-fun b_lambda!177163 () Bool)

(assert (=> (not b_lambda!177163) (not b!4695218)))

(declare-fun m!5602969 () Bool)

(assert (=> b!4695218 m!5602969))

(declare-fun m!5602971 () Bool)

(assert (=> b!4695219 m!5602971))

(assert (=> b!4694901 d!1492562))

(declare-fun bs!1090561 () Bool)

(declare-fun d!1492564 () Bool)

(assert (= bs!1090561 (and d!1492564 d!1492534)))

(declare-fun lambda!208643 () Int)

(assert (=> bs!1090561 (not (= lambda!208643 lambda!208623))))

(declare-fun bs!1090562 () Bool)

(assert (= bs!1090562 (and d!1492564 d!1492552)))

(assert (=> bs!1090562 (not (= lambda!208643 lambda!208632))))

(declare-fun bs!1090563 () Bool)

(assert (= bs!1090563 (and d!1492564 start!475456)))

(assert (=> bs!1090563 (not (= lambda!208643 lambda!208505))))

(declare-fun bs!1090564 () Bool)

(assert (= bs!1090564 (and d!1492564 d!1492466)))

(assert (=> bs!1090564 (not (= lambda!208643 lambda!208594))))

(declare-fun bs!1090565 () Bool)

(assert (= bs!1090565 (and d!1492564 d!1492484)))

(assert (=> bs!1090565 (not (= lambda!208643 lambda!208609))))

(declare-fun bs!1090566 () Bool)

(assert (= bs!1090566 (and d!1492564 d!1492474)))

(assert (=> bs!1090566 (not (= lambda!208643 lambda!208602))))

(declare-fun bs!1090567 () Bool)

(assert (= bs!1090567 (and d!1492564 d!1492560)))

(assert (=> bs!1090567 (not (= lambda!208643 lambda!208636))))

(assert (=> d!1492564 true))

(assert (=> d!1492564 (= (allKeysSameHashInMap!1790 lm!2023 hashF!1323) (forall!11359 (toList!5642 lm!2023) lambda!208643))))

(declare-fun bs!1090568 () Bool)

(assert (= bs!1090568 d!1492564))

(declare-fun m!5602973 () Bool)

(assert (=> bs!1090568 m!5602973))

(assert (=> b!4694911 d!1492564))

(declare-fun b!4695238 () Bool)

(declare-fun e!2929004 () List!52593)

(assert (=> b!4695238 (= e!2929004 (t!359785 lt!1855861))))

(declare-fun d!1492566 () Bool)

(declare-fun lt!1856362 () List!52593)

(assert (=> d!1492566 (not (containsKey!3107 lt!1856362 key!4653))))

(assert (=> d!1492566 (= lt!1856362 e!2929004)))

(declare-fun c!802693 () Bool)

(assert (=> d!1492566 (= c!802693 (and ((_ is Cons!52469) lt!1855861) (= (_1!30243 (h!58730 lt!1855861)) key!4653)))))

(assert (=> d!1492566 (noDuplicateKeys!1876 lt!1855861)))

(assert (=> d!1492566 (= (removePairForKey!1471 lt!1855861 key!4653) lt!1856362)))

(declare-fun b!4695241 () Bool)

(declare-fun e!2929005 () List!52593)

(assert (=> b!4695241 (= e!2929005 Nil!52469)))

(declare-fun b!4695240 () Bool)

(assert (=> b!4695240 (= e!2929005 (Cons!52469 (h!58730 lt!1855861) (removePairForKey!1471 (t!359785 lt!1855861) key!4653)))))

(declare-fun b!4695239 () Bool)

(assert (=> b!4695239 (= e!2929004 e!2929005)))

(declare-fun c!802694 () Bool)

(assert (=> b!4695239 (= c!802694 ((_ is Cons!52469) lt!1855861))))

(assert (= (and d!1492566 c!802693) b!4695238))

(assert (= (and d!1492566 (not c!802693)) b!4695239))

(assert (= (and b!4695239 c!802694) b!4695240))

(assert (= (and b!4695239 (not c!802694)) b!4695241))

(declare-fun m!5602975 () Bool)

(assert (=> d!1492566 m!5602975))

(assert (=> d!1492566 m!5602485))

(declare-fun m!5602977 () Bool)

(assert (=> b!4695240 m!5602977))

(assert (=> b!4694922 d!1492566))

(declare-fun d!1492568 () Bool)

(assert (=> d!1492568 (= (tail!8655 newBucket!218) (t!359785 newBucket!218))))

(assert (=> b!4694922 d!1492568))

(declare-fun d!1492570 () Bool)

(assert (=> d!1492570 (= (tail!8655 oldBucket!34) (t!359785 oldBucket!34))))

(assert (=> b!4694922 d!1492570))

(declare-fun b!4695242 () Bool)

(declare-fun e!2929006 () List!52593)

(assert (=> b!4695242 (= e!2929006 (t!359785 (t!359785 oldBucket!34)))))

(declare-fun d!1492572 () Bool)

(declare-fun lt!1856363 () List!52593)

(assert (=> d!1492572 (not (containsKey!3107 lt!1856363 key!4653))))

(assert (=> d!1492572 (= lt!1856363 e!2929006)))

(declare-fun c!802695 () Bool)

(assert (=> d!1492572 (= c!802695 (and ((_ is Cons!52469) (t!359785 oldBucket!34)) (= (_1!30243 (h!58730 (t!359785 oldBucket!34))) key!4653)))))

(assert (=> d!1492572 (noDuplicateKeys!1876 (t!359785 oldBucket!34))))

(assert (=> d!1492572 (= (removePairForKey!1471 (t!359785 oldBucket!34) key!4653) lt!1856363)))

(declare-fun b!4695245 () Bool)

(declare-fun e!2929007 () List!52593)

(assert (=> b!4695245 (= e!2929007 Nil!52469)))

(declare-fun b!4695244 () Bool)

(assert (=> b!4695244 (= e!2929007 (Cons!52469 (h!58730 (t!359785 oldBucket!34)) (removePairForKey!1471 (t!359785 (t!359785 oldBucket!34)) key!4653)))))

(declare-fun b!4695243 () Bool)

(assert (=> b!4695243 (= e!2929006 e!2929007)))

(declare-fun c!802696 () Bool)

(assert (=> b!4695243 (= c!802696 ((_ is Cons!52469) (t!359785 oldBucket!34)))))

(assert (= (and d!1492572 c!802695) b!4695242))

(assert (= (and d!1492572 (not c!802695)) b!4695243))

(assert (= (and b!4695243 c!802696) b!4695244))

(assert (= (and b!4695243 (not c!802696)) b!4695245))

(declare-fun m!5602979 () Bool)

(assert (=> d!1492572 m!5602979))

(declare-fun m!5602981 () Bool)

(assert (=> d!1492572 m!5602981))

(declare-fun m!5602983 () Bool)

(assert (=> b!4695244 m!5602983))

(assert (=> b!4694915 d!1492572))

(declare-fun d!1492574 () Bool)

(declare-fun lt!1856374 () Bool)

(declare-fun content!9208 (List!52594) (InoxSet tuple2!53900))

(assert (=> d!1492574 (= lt!1856374 (select (content!9208 (toList!5642 lm!2023)) lt!1855858))))

(declare-fun e!2929015 () Bool)

(assert (=> d!1492574 (= lt!1856374 e!2929015)))

(declare-fun res!1981284 () Bool)

(assert (=> d!1492574 (=> (not res!1981284) (not e!2929015))))

(assert (=> d!1492574 (= res!1981284 ((_ is Cons!52470) (toList!5642 lm!2023)))))

(assert (=> d!1492574 (= (contains!15707 (toList!5642 lm!2023) lt!1855858) lt!1856374)))

(declare-fun b!4695254 () Bool)

(declare-fun e!2929014 () Bool)

(assert (=> b!4695254 (= e!2929015 e!2929014)))

(declare-fun res!1981285 () Bool)

(assert (=> b!4695254 (=> res!1981285 e!2929014)))

(assert (=> b!4695254 (= res!1981285 (= (h!58731 (toList!5642 lm!2023)) lt!1855858))))

(declare-fun b!4695255 () Bool)

(assert (=> b!4695255 (= e!2929014 (contains!15707 (t!359786 (toList!5642 lm!2023)) lt!1855858))))

(assert (= (and d!1492574 res!1981284) b!4695254))

(assert (= (and b!4695254 (not res!1981285)) b!4695255))

(declare-fun m!5602985 () Bool)

(assert (=> d!1492574 m!5602985))

(declare-fun m!5602987 () Bool)

(assert (=> d!1492574 m!5602987))

(declare-fun m!5602989 () Bool)

(assert (=> b!4695255 m!5602989))

(assert (=> b!4694904 d!1492574))

(declare-fun bs!1090582 () Bool)

(declare-fun d!1492576 () Bool)

(assert (= bs!1090582 (and d!1492576 d!1492534)))

(declare-fun lambda!208649 () Int)

(assert (=> bs!1090582 (= lambda!208649 lambda!208623)))

(declare-fun bs!1090583 () Bool)

(assert (= bs!1090583 (and d!1492576 d!1492564)))

(assert (=> bs!1090583 (not (= lambda!208649 lambda!208643))))

(declare-fun bs!1090584 () Bool)

(assert (= bs!1090584 (and d!1492576 d!1492552)))

(assert (=> bs!1090584 (= lambda!208649 lambda!208632)))

(declare-fun bs!1090585 () Bool)

(assert (= bs!1090585 (and d!1492576 start!475456)))

(assert (=> bs!1090585 (= lambda!208649 lambda!208505)))

(declare-fun bs!1090586 () Bool)

(assert (= bs!1090586 (and d!1492576 d!1492466)))

(assert (=> bs!1090586 (= lambda!208649 lambda!208594)))

(declare-fun bs!1090587 () Bool)

(assert (= bs!1090587 (and d!1492576 d!1492484)))

(assert (=> bs!1090587 (= lambda!208649 lambda!208609)))

(declare-fun bs!1090588 () Bool)

(assert (= bs!1090588 (and d!1492576 d!1492474)))

(assert (=> bs!1090588 (= lambda!208649 lambda!208602)))

(declare-fun bs!1090589 () Bool)

(assert (= bs!1090589 (and d!1492576 d!1492560)))

(assert (=> bs!1090589 (= lambda!208649 lambda!208636)))

(assert (=> d!1492576 (contains!15708 lm!2023 (hash!4113 hashF!1323 key!4653))))

(declare-fun lt!1856380 () Unit!125029)

(declare-fun choose!32709 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> d!1492576 (= lt!1856380 (choose!32709 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492576 (forall!11359 (toList!5642 lm!2023) lambda!208649)))

(assert (=> d!1492576 (= (lemmaInGenMapThenLongMapContainsHash!686 lm!2023 key!4653 hashF!1323) lt!1856380)))

(declare-fun bs!1090590 () Bool)

(assert (= bs!1090590 d!1492576))

(assert (=> bs!1090590 m!5602041))

(assert (=> bs!1090590 m!5602041))

(declare-fun m!5603019 () Bool)

(assert (=> bs!1090590 m!5603019))

(declare-fun m!5603021 () Bool)

(assert (=> bs!1090590 m!5603021))

(declare-fun m!5603023 () Bool)

(assert (=> bs!1090590 m!5603023))

(assert (=> b!4694904 d!1492576))

(declare-fun bs!1090626 () Bool)

(declare-fun d!1492584 () Bool)

(assert (= bs!1090626 (and d!1492584 d!1492534)))

(declare-fun lambda!208660 () Int)

(assert (=> bs!1090626 (= lambda!208660 lambda!208623)))

(declare-fun bs!1090627 () Bool)

(assert (= bs!1090627 (and d!1492584 d!1492564)))

(assert (=> bs!1090627 (not (= lambda!208660 lambda!208643))))

(declare-fun bs!1090628 () Bool)

(assert (= bs!1090628 (and d!1492584 d!1492552)))

(assert (=> bs!1090628 (= lambda!208660 lambda!208632)))

(declare-fun bs!1090629 () Bool)

(assert (= bs!1090629 (and d!1492584 start!475456)))

(assert (=> bs!1090629 (= lambda!208660 lambda!208505)))

(declare-fun bs!1090630 () Bool)

(assert (= bs!1090630 (and d!1492584 d!1492466)))

(assert (=> bs!1090630 (= lambda!208660 lambda!208594)))

(declare-fun bs!1090631 () Bool)

(assert (= bs!1090631 (and d!1492584 d!1492484)))

(assert (=> bs!1090631 (= lambda!208660 lambda!208609)))

(declare-fun bs!1090632 () Bool)

(assert (= bs!1090632 (and d!1492584 d!1492474)))

(assert (=> bs!1090632 (= lambda!208660 lambda!208602)))

(declare-fun bs!1090633 () Bool)

(assert (= bs!1090633 (and d!1492584 d!1492576)))

(assert (=> bs!1090633 (= lambda!208660 lambda!208649)))

(declare-fun bs!1090634 () Bool)

(assert (= bs!1090634 (and d!1492584 d!1492560)))

(assert (=> bs!1090634 (= lambda!208660 lambda!208636)))

(declare-fun b!4695301 () Bool)

(declare-fun e!2929048 () Bool)

(assert (=> b!4695301 (= e!2929048 (isDefined!9386 (getPair!480 (apply!12359 lm!2023 (hash!4113 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1856423 () Unit!125029)

(assert (=> b!4695301 (= lt!1856423 (forallContained!3466 (toList!5642 lm!2023) lambda!208660 (tuple2!53901 (hash!4113 hashF!1323 key!4653) (apply!12359 lm!2023 (hash!4113 hashF!1323 key!4653)))))))

(declare-fun lt!1856421 () Unit!125029)

(declare-fun lt!1856420 () Unit!125029)

(assert (=> b!4695301 (= lt!1856421 lt!1856420)))

(declare-fun lt!1856424 () (_ BitVec 64))

(declare-fun lt!1856422 () List!52593)

(assert (=> b!4695301 (contains!15707 (toList!5642 lm!2023) (tuple2!53901 lt!1856424 lt!1856422))))

(assert (=> b!4695301 (= lt!1856420 (lemmaGetValueImpliesTupleContained!285 lm!2023 lt!1856424 lt!1856422))))

(declare-fun e!2929047 () Bool)

(assert (=> b!4695301 e!2929047))

(declare-fun res!1981313 () Bool)

(assert (=> b!4695301 (=> (not res!1981313) (not e!2929047))))

(assert (=> b!4695301 (= res!1981313 (contains!15708 lm!2023 lt!1856424))))

(assert (=> b!4695301 (= lt!1856422 (apply!12359 lm!2023 (hash!4113 hashF!1323 key!4653)))))

(assert (=> b!4695301 (= lt!1856424 (hash!4113 hashF!1323 key!4653))))

(declare-fun lt!1856418 () Unit!125029)

(declare-fun lt!1856419 () Unit!125029)

(assert (=> b!4695301 (= lt!1856418 lt!1856419)))

(assert (=> b!4695301 (contains!15708 lm!2023 (hash!4113 hashF!1323 key!4653))))

(assert (=> b!4695301 (= lt!1856419 (lemmaInGenMapThenLongMapContainsHash!686 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4695299 () Bool)

(declare-fun res!1981311 () Bool)

(assert (=> b!4695299 (=> (not res!1981311) (not e!2929048))))

(assert (=> b!4695299 (= res!1981311 (allKeysSameHashInMap!1790 lm!2023 hashF!1323))))

(assert (=> d!1492584 e!2929048))

(declare-fun res!1981314 () Bool)

(assert (=> d!1492584 (=> (not res!1981314) (not e!2929048))))

(assert (=> d!1492584 (= res!1981314 (forall!11359 (toList!5642 lm!2023) lambda!208660))))

(declare-fun lt!1856425 () Unit!125029)

(declare-fun choose!32710 (ListLongMap!4171 K!13840 Hashable!6245) Unit!125029)

(assert (=> d!1492584 (= lt!1856425 (choose!32710 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492584 (forall!11359 (toList!5642 lm!2023) lambda!208660)))

(assert (=> d!1492584 (= (lemmaInGenMapThenGetPairDefined!276 lm!2023 key!4653 hashF!1323) lt!1856425)))

(declare-fun b!4695302 () Bool)

(declare-datatypes ((Option!12135 0))(
  ( (None!12134) (Some!12134 (v!46585 List!52593)) )
))
(declare-fun getValueByKey!1813 (List!52594 (_ BitVec 64)) Option!12135)

(assert (=> b!4695302 (= e!2929047 (= (getValueByKey!1813 (toList!5642 lm!2023) lt!1856424) (Some!12134 lt!1856422)))))

(declare-fun b!4695300 () Bool)

(declare-fun res!1981312 () Bool)

(assert (=> b!4695300 (=> (not res!1981312) (not e!2929048))))

(assert (=> b!4695300 (= res!1981312 (contains!15706 (extractMap!1902 (toList!5642 lm!2023)) key!4653))))

(assert (= (and d!1492584 res!1981314) b!4695299))

(assert (= (and b!4695299 res!1981311) b!4695300))

(assert (= (and b!4695300 res!1981312) b!4695301))

(assert (= (and b!4695301 res!1981313) b!4695302))

(declare-fun m!5603051 () Bool)

(assert (=> b!4695302 m!5603051))

(declare-fun m!5603053 () Bool)

(assert (=> b!4695301 m!5603053))

(assert (=> b!4695301 m!5602041))

(declare-fun m!5603055 () Bool)

(assert (=> b!4695301 m!5603055))

(declare-fun m!5603057 () Bool)

(assert (=> b!4695301 m!5603057))

(declare-fun m!5603059 () Bool)

(assert (=> b!4695301 m!5603059))

(declare-fun m!5603061 () Bool)

(assert (=> b!4695301 m!5603061))

(assert (=> b!4695301 m!5603055))

(declare-fun m!5603063 () Bool)

(assert (=> b!4695301 m!5603063))

(declare-fun m!5603065 () Bool)

(assert (=> b!4695301 m!5603065))

(assert (=> b!4695301 m!5602041))

(assert (=> b!4695301 m!5603061))

(assert (=> b!4695301 m!5602041))

(assert (=> b!4695301 m!5603019))

(assert (=> b!4695301 m!5602145))

(declare-fun m!5603067 () Bool)

(assert (=> d!1492584 m!5603067))

(declare-fun m!5603069 () Bool)

(assert (=> d!1492584 m!5603069))

(assert (=> d!1492584 m!5603067))

(assert (=> b!4695299 m!5602127))

(assert (=> b!4695300 m!5602045))

(assert (=> b!4695300 m!5602045))

(declare-fun m!5603071 () Bool)

(assert (=> b!4695300 m!5603071))

(assert (=> b!4694904 d!1492584))

(declare-fun b!4695319 () Bool)

(declare-fun e!2929061 () Bool)

(declare-fun lt!1856428 () Option!12131)

(declare-fun get!17536 (Option!12131) tuple2!53898)

(assert (=> b!4695319 (= e!2929061 (contains!15711 lt!1855880 (get!17536 lt!1856428)))))

(declare-fun b!4695320 () Bool)

(declare-fun e!2929059 () Bool)

(assert (=> b!4695320 (= e!2929059 (not (containsKey!3107 lt!1855880 key!4653)))))

(declare-fun b!4695321 () Bool)

(declare-fun e!2929063 () Option!12131)

(declare-fun e!2929060 () Option!12131)

(assert (=> b!4695321 (= e!2929063 e!2929060)))

(declare-fun c!802705 () Bool)

(assert (=> b!4695321 (= c!802705 ((_ is Cons!52469) lt!1855880))))

(declare-fun b!4695322 () Bool)

(assert (=> b!4695322 (= e!2929060 (getPair!480 (t!359785 lt!1855880) key!4653))))

(declare-fun b!4695323 () Bool)

(assert (=> b!4695323 (= e!2929063 (Some!12130 (h!58730 lt!1855880)))))

(declare-fun b!4695324 () Bool)

(declare-fun res!1981324 () Bool)

(assert (=> b!4695324 (=> (not res!1981324) (not e!2929061))))

(assert (=> b!4695324 (= res!1981324 (= (_1!30243 (get!17536 lt!1856428)) key!4653))))

(declare-fun b!4695325 () Bool)

(assert (=> b!4695325 (= e!2929060 None!12130)))

(declare-fun b!4695326 () Bool)

(declare-fun e!2929062 () Bool)

(assert (=> b!4695326 (= e!2929062 e!2929061)))

(declare-fun res!1981326 () Bool)

(assert (=> b!4695326 (=> (not res!1981326) (not e!2929061))))

(assert (=> b!4695326 (= res!1981326 (isDefined!9386 lt!1856428))))

(declare-fun d!1492602 () Bool)

(assert (=> d!1492602 e!2929062))

(declare-fun res!1981323 () Bool)

(assert (=> d!1492602 (=> res!1981323 e!2929062)))

(assert (=> d!1492602 (= res!1981323 e!2929059)))

(declare-fun res!1981325 () Bool)

(assert (=> d!1492602 (=> (not res!1981325) (not e!2929059))))

(declare-fun isEmpty!29110 (Option!12131) Bool)

(assert (=> d!1492602 (= res!1981325 (isEmpty!29110 lt!1856428))))

(assert (=> d!1492602 (= lt!1856428 e!2929063)))

(declare-fun c!802704 () Bool)

(assert (=> d!1492602 (= c!802704 (and ((_ is Cons!52469) lt!1855880) (= (_1!30243 (h!58730 lt!1855880)) key!4653)))))

(assert (=> d!1492602 (noDuplicateKeys!1876 lt!1855880)))

(assert (=> d!1492602 (= (getPair!480 lt!1855880 key!4653) lt!1856428)))

(assert (= (and d!1492602 c!802704) b!4695323))

(assert (= (and d!1492602 (not c!802704)) b!4695321))

(assert (= (and b!4695321 c!802705) b!4695322))

(assert (= (and b!4695321 (not c!802705)) b!4695325))

(assert (= (and d!1492602 res!1981325) b!4695320))

(assert (= (and d!1492602 (not res!1981323)) b!4695326))

(assert (= (and b!4695326 res!1981326) b!4695324))

(assert (= (and b!4695324 res!1981324) b!4695319))

(declare-fun m!5603073 () Bool)

(assert (=> b!4695319 m!5603073))

(assert (=> b!4695319 m!5603073))

(declare-fun m!5603075 () Bool)

(assert (=> b!4695319 m!5603075))

(declare-fun m!5603077 () Bool)

(assert (=> d!1492602 m!5603077))

(declare-fun m!5603079 () Bool)

(assert (=> d!1492602 m!5603079))

(declare-fun m!5603081 () Bool)

(assert (=> b!4695322 m!5603081))

(declare-fun m!5603083 () Bool)

(assert (=> b!4695326 m!5603083))

(declare-fun m!5603085 () Bool)

(assert (=> b!4695320 m!5603085))

(assert (=> b!4695324 m!5603073))

(assert (=> b!4694904 d!1492602))

(declare-fun d!1492604 () Bool)

(assert (=> d!1492604 (containsKey!3107 oldBucket!34 key!4653)))

(declare-fun lt!1856431 () Unit!125029)

(declare-fun choose!32713 (List!52593 K!13840 Hashable!6245) Unit!125029)

(assert (=> d!1492604 (= lt!1856431 (choose!32713 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1492604 (noDuplicateKeys!1876 oldBucket!34)))

(assert (=> d!1492604 (= (lemmaGetPairDefinedThenContainsKey!228 oldBucket!34 key!4653 hashF!1323) lt!1856431)))

(declare-fun bs!1090635 () Bool)

(assert (= bs!1090635 d!1492604))

(assert (=> bs!1090635 m!5602157))

(declare-fun m!5603087 () Bool)

(assert (=> bs!1090635 m!5603087))

(assert (=> bs!1090635 m!5602097))

(assert (=> b!4694904 d!1492604))

(declare-fun d!1492606 () Bool)

(declare-fun res!1981331 () Bool)

(declare-fun e!2929068 () Bool)

(assert (=> d!1492606 (=> res!1981331 e!2929068)))

(assert (=> d!1492606 (= res!1981331 (and ((_ is Cons!52469) (t!359785 oldBucket!34)) (= (_1!30243 (h!58730 (t!359785 oldBucket!34))) key!4653)))))

(assert (=> d!1492606 (= (containsKey!3107 (t!359785 oldBucket!34) key!4653) e!2929068)))

(declare-fun b!4695331 () Bool)

(declare-fun e!2929069 () Bool)

(assert (=> b!4695331 (= e!2929068 e!2929069)))

(declare-fun res!1981332 () Bool)

(assert (=> b!4695331 (=> (not res!1981332) (not e!2929069))))

(assert (=> b!4695331 (= res!1981332 ((_ is Cons!52469) (t!359785 oldBucket!34)))))

(declare-fun b!4695332 () Bool)

(assert (=> b!4695332 (= e!2929069 (containsKey!3107 (t!359785 (t!359785 oldBucket!34)) key!4653))))

(assert (= (and d!1492606 (not res!1981331)) b!4695331))

(assert (= (and b!4695331 res!1981332) b!4695332))

(declare-fun m!5603089 () Bool)

(assert (=> b!4695332 m!5603089))

(assert (=> b!4694904 d!1492606))

(declare-fun d!1492608 () Bool)

(declare-fun res!1981333 () Bool)

(declare-fun e!2929070 () Bool)

(assert (=> d!1492608 (=> res!1981333 e!2929070)))

(assert (=> d!1492608 (= res!1981333 (and ((_ is Cons!52469) oldBucket!34) (= (_1!30243 (h!58730 oldBucket!34)) key!4653)))))

(assert (=> d!1492608 (= (containsKey!3107 oldBucket!34 key!4653) e!2929070)))

(declare-fun b!4695333 () Bool)

(declare-fun e!2929071 () Bool)

(assert (=> b!4695333 (= e!2929070 e!2929071)))

(declare-fun res!1981334 () Bool)

(assert (=> b!4695333 (=> (not res!1981334) (not e!2929071))))

(assert (=> b!4695333 (= res!1981334 ((_ is Cons!52469) oldBucket!34))))

(declare-fun b!4695334 () Bool)

(assert (=> b!4695334 (= e!2929071 (containsKey!3107 (t!359785 oldBucket!34) key!4653))))

(assert (= (and d!1492608 (not res!1981333)) b!4695333))

(assert (= (and b!4695333 res!1981334) b!4695334))

(assert (=> b!4695334 m!5602151))

(assert (=> b!4694904 d!1492608))

(declare-fun d!1492610 () Bool)

(declare-fun e!2929076 () Bool)

(assert (=> d!1492610 e!2929076))

(declare-fun res!1981337 () Bool)

(assert (=> d!1492610 (=> res!1981337 e!2929076)))

(declare-fun lt!1856443 () Bool)

(assert (=> d!1492610 (= res!1981337 (not lt!1856443))))

(declare-fun lt!1856442 () Bool)

(assert (=> d!1492610 (= lt!1856443 lt!1856442)))

(declare-fun lt!1856440 () Unit!125029)

(declare-fun e!2929077 () Unit!125029)

(assert (=> d!1492610 (= lt!1856440 e!2929077)))

(declare-fun c!802708 () Bool)

(assert (=> d!1492610 (= c!802708 lt!1856442)))

(declare-fun containsKey!3110 (List!52594 (_ BitVec 64)) Bool)

(assert (=> d!1492610 (= lt!1856442 (containsKey!3110 (toList!5642 lm!2023) lt!1855870))))

(assert (=> d!1492610 (= (contains!15708 lm!2023 lt!1855870) lt!1856443)))

(declare-fun b!4695341 () Bool)

(declare-fun lt!1856441 () Unit!125029)

(assert (=> b!4695341 (= e!2929077 lt!1856441)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1704 (List!52594 (_ BitVec 64)) Unit!125029)

(assert (=> b!4695341 (= lt!1856441 (lemmaContainsKeyImpliesGetValueByKeyDefined!1704 (toList!5642 lm!2023) lt!1855870))))

(declare-fun isDefined!9389 (Option!12135) Bool)

(assert (=> b!4695341 (isDefined!9389 (getValueByKey!1813 (toList!5642 lm!2023) lt!1855870))))

(declare-fun b!4695342 () Bool)

(declare-fun Unit!125149 () Unit!125029)

(assert (=> b!4695342 (= e!2929077 Unit!125149)))

(declare-fun b!4695343 () Bool)

(assert (=> b!4695343 (= e!2929076 (isDefined!9389 (getValueByKey!1813 (toList!5642 lm!2023) lt!1855870)))))

(assert (= (and d!1492610 c!802708) b!4695341))

(assert (= (and d!1492610 (not c!802708)) b!4695342))

(assert (= (and d!1492610 (not res!1981337)) b!4695343))

(declare-fun m!5603091 () Bool)

(assert (=> d!1492610 m!5603091))

(declare-fun m!5603093 () Bool)

(assert (=> b!4695341 m!5603093))

(declare-fun m!5603095 () Bool)

(assert (=> b!4695341 m!5603095))

(assert (=> b!4695341 m!5603095))

(declare-fun m!5603097 () Bool)

(assert (=> b!4695341 m!5603097))

(assert (=> b!4695343 m!5603095))

(assert (=> b!4695343 m!5603095))

(assert (=> b!4695343 m!5603097))

(assert (=> b!4694904 d!1492610))

(declare-fun d!1492612 () Bool)

(assert (=> d!1492612 (dynLambda!21729 lambda!208505 lt!1855858)))

(declare-fun lt!1856446 () Unit!125029)

(declare-fun choose!32716 (List!52594 Int tuple2!53900) Unit!125029)

(assert (=> d!1492612 (= lt!1856446 (choose!32716 (toList!5642 lm!2023) lambda!208505 lt!1855858))))

(declare-fun e!2929080 () Bool)

(assert (=> d!1492612 e!2929080))

(declare-fun res!1981340 () Bool)

(assert (=> d!1492612 (=> (not res!1981340) (not e!2929080))))

(assert (=> d!1492612 (= res!1981340 (forall!11359 (toList!5642 lm!2023) lambda!208505))))

(assert (=> d!1492612 (= (forallContained!3466 (toList!5642 lm!2023) lambda!208505 lt!1855858) lt!1856446)))

(declare-fun b!4695346 () Bool)

(assert (=> b!4695346 (= e!2929080 (contains!15707 (toList!5642 lm!2023) lt!1855858))))

(assert (= (and d!1492612 res!1981340) b!4695346))

(declare-fun b_lambda!177171 () Bool)

(assert (=> (not b_lambda!177171) (not d!1492612)))

(declare-fun m!5603099 () Bool)

(assert (=> d!1492612 m!5603099))

(declare-fun m!5603101 () Bool)

(assert (=> d!1492612 m!5603101))

(assert (=> d!1492612 m!5602169))

(assert (=> b!4695346 m!5602159))

(assert (=> b!4694904 d!1492612))

(declare-fun d!1492614 () Bool)

(assert (=> d!1492614 (contains!15707 (toList!5642 lm!2023) (tuple2!53901 lt!1855870 lt!1855880))))

(declare-fun lt!1856449 () Unit!125029)

(declare-fun choose!32717 (ListLongMap!4171 (_ BitVec 64) List!52593) Unit!125029)

(assert (=> d!1492614 (= lt!1856449 (choose!32717 lm!2023 lt!1855870 lt!1855880))))

(assert (=> d!1492614 (contains!15708 lm!2023 lt!1855870)))

(assert (=> d!1492614 (= (lemmaGetValueImpliesTupleContained!285 lm!2023 lt!1855870 lt!1855880) lt!1856449)))

(declare-fun bs!1090636 () Bool)

(assert (= bs!1090636 d!1492614))

(declare-fun m!5603103 () Bool)

(assert (=> bs!1090636 m!5603103))

(declare-fun m!5603105 () Bool)

(assert (=> bs!1090636 m!5603105))

(assert (=> bs!1090636 m!5602161))

(assert (=> b!4694904 d!1492614))

(declare-fun d!1492616 () Bool)

(assert (=> d!1492616 (= (isDefined!9386 (getPair!480 lt!1855880 key!4653)) (not (isEmpty!29110 (getPair!480 lt!1855880 key!4653))))))

(declare-fun bs!1090637 () Bool)

(assert (= bs!1090637 d!1492616))

(assert (=> bs!1090637 m!5602147))

(declare-fun m!5603107 () Bool)

(assert (=> bs!1090637 m!5603107))

(assert (=> b!4694904 d!1492616))

(declare-fun d!1492618 () Bool)

(declare-fun get!17537 (Option!12135) List!52593)

(assert (=> d!1492618 (= (apply!12359 lm!2023 lt!1855870) (get!17537 (getValueByKey!1813 (toList!5642 lm!2023) lt!1855870)))))

(declare-fun bs!1090638 () Bool)

(assert (= bs!1090638 d!1492618))

(assert (=> bs!1090638 m!5603095))

(assert (=> bs!1090638 m!5603095))

(declare-fun m!5603109 () Bool)

(assert (=> bs!1090638 m!5603109))

(assert (=> b!4694904 d!1492618))

(declare-fun d!1492620 () Bool)

(declare-fun hash!4117 (Hashable!6245 K!13840) (_ BitVec 64))

(assert (=> d!1492620 (= (hash!4113 hashF!1323 key!4653) (hash!4117 hashF!1323 key!4653))))

(declare-fun bs!1090639 () Bool)

(assert (= bs!1090639 d!1492620))

(declare-fun m!5603111 () Bool)

(assert (=> bs!1090639 m!5603111))

(assert (=> b!4694914 d!1492620))

(declare-fun d!1492622 () Bool)

(declare-fun res!1981341 () Bool)

(declare-fun e!2929081 () Bool)

(assert (=> d!1492622 (=> res!1981341 e!2929081)))

(assert (=> d!1492622 (= res!1981341 ((_ is Nil!52470) (toList!5642 lm!2023)))))

(assert (=> d!1492622 (= (forall!11359 (toList!5642 lm!2023) lambda!208505) e!2929081)))

(declare-fun b!4695348 () Bool)

(declare-fun e!2929082 () Bool)

(assert (=> b!4695348 (= e!2929081 e!2929082)))

(declare-fun res!1981342 () Bool)

(assert (=> b!4695348 (=> (not res!1981342) (not e!2929082))))

(assert (=> b!4695348 (= res!1981342 (dynLambda!21729 lambda!208505 (h!58731 (toList!5642 lm!2023))))))

(declare-fun b!4695349 () Bool)

(assert (=> b!4695349 (= e!2929082 (forall!11359 (t!359786 (toList!5642 lm!2023)) lambda!208505))))

(assert (= (and d!1492622 (not res!1981341)) b!4695348))

(assert (= (and b!4695348 res!1981342) b!4695349))

(declare-fun b_lambda!177173 () Bool)

(assert (=> (not b_lambda!177173) (not b!4695348)))

(declare-fun m!5603113 () Bool)

(assert (=> b!4695348 m!5603113))

(declare-fun m!5603115 () Bool)

(assert (=> b!4695349 m!5603115))

(assert (=> start!475456 d!1492622))

(declare-fun d!1492624 () Bool)

(declare-fun isStrictlySorted!666 (List!52594) Bool)

(assert (=> d!1492624 (= (inv!67714 lm!2023) (isStrictlySorted!666 (toList!5642 lm!2023)))))

(declare-fun bs!1090640 () Bool)

(assert (= bs!1090640 d!1492624))

(declare-fun m!5603117 () Bool)

(assert (=> bs!1090640 m!5603117))

(assert (=> start!475456 d!1492624))

(declare-fun bs!1090641 () Bool)

(declare-fun d!1492626 () Bool)

(assert (= bs!1090641 (and d!1492626 b!4695090)))

(declare-fun lambda!208661 () Int)

(assert (=> bs!1090641 (not (= lambda!208661 lambda!208606))))

(declare-fun bs!1090642 () Bool)

(assert (= bs!1090642 (and d!1492626 b!4695188)))

(assert (=> bs!1090642 (not (= lambda!208661 lambda!208624))))

(declare-fun bs!1090643 () Bool)

(assert (= bs!1090643 (and d!1492626 d!1492542)))

(assert (=> bs!1090643 (not (= lambda!208661 lambda!208627))))

(declare-fun bs!1090644 () Bool)

(assert (= bs!1090644 (and d!1492626 d!1492480)))

(assert (=> bs!1090644 (not (= lambda!208661 lambda!208608))))

(declare-fun bs!1090645 () Bool)

(assert (= bs!1090645 (and d!1492626 b!4695193)))

(assert (=> bs!1090645 (not (= lambda!208661 lambda!208629))))

(declare-fun bs!1090646 () Bool)

(assert (= bs!1090646 (and d!1492626 b!4695186)))

(assert (=> bs!1090646 (not (= lambda!208661 lambda!208626))))

(assert (=> bs!1090645 (not (= lambda!208661 lambda!208630))))

(declare-fun bs!1090647 () Bool)

(assert (= bs!1090647 (and d!1492626 b!4695150)))

(assert (=> bs!1090647 (not (= lambda!208661 lambda!208621))))

(declare-fun bs!1090648 () Bool)

(assert (= bs!1090648 (and d!1492626 b!4695065)))

(assert (=> bs!1090648 (not (= lambda!208661 lambda!208587))))

(declare-fun bs!1090649 () Bool)

(assert (= bs!1090649 (and d!1492626 d!1492550)))

(assert (=> bs!1090649 (not (= lambda!208661 lambda!208631))))

(declare-fun bs!1090650 () Bool)

(assert (= bs!1090650 (and d!1492626 b!4695152)))

(assert (=> bs!1090650 (not (= lambda!208661 lambda!208619))))

(declare-fun bs!1090651 () Bool)

(assert (= bs!1090651 (and d!1492626 b!4695195)))

(assert (=> bs!1090651 (not (= lambda!208661 lambda!208628))))

(assert (=> bs!1090647 (not (= lambda!208661 lambda!208620))))

(declare-fun bs!1090652 () Bool)

(assert (= bs!1090652 (and d!1492626 d!1492556)))

(assert (=> bs!1090652 (= lambda!208661 lambda!208635)))

(declare-fun bs!1090653 () Bool)

(assert (= bs!1090653 (and d!1492626 b!4695067)))

(assert (=> bs!1090653 (not (= lambda!208661 lambda!208586))))

(declare-fun bs!1090654 () Bool)

(assert (= bs!1090654 (and d!1492626 d!1492530)))

(assert (=> bs!1090654 (not (= lambda!208661 lambda!208622))))

(declare-fun bs!1090655 () Bool)

(assert (= bs!1090655 (and d!1492626 b!4695092)))

(assert (=> bs!1090655 (not (= lambda!208661 lambda!208604))))

(assert (=> bs!1090646 (not (= lambda!208661 lambda!208625))))

(assert (=> bs!1090641 (not (= lambda!208661 lambda!208605))))

(declare-fun bs!1090656 () Bool)

(assert (= bs!1090656 (and d!1492626 d!1492422)))

(assert (=> bs!1090656 (not (= lambda!208661 lambda!208589))))

(assert (=> bs!1090648 (not (= lambda!208661 lambda!208588))))

(assert (=> d!1492626 true))

(assert (=> d!1492626 true))

(assert (=> d!1492626 (= (allKeysSameHash!1702 newBucket!218 hash!405 hashF!1323) (forall!11361 newBucket!218 lambda!208661))))

(declare-fun bs!1090657 () Bool)

(assert (= bs!1090657 d!1492626))

(declare-fun m!5603119 () Bool)

(assert (=> bs!1090657 m!5603119))

(assert (=> b!4694913 d!1492626))

(declare-fun bs!1090658 () Bool)

(declare-fun d!1492628 () Bool)

(assert (= bs!1090658 (and d!1492628 d!1492534)))

(declare-fun lambda!208662 () Int)

(assert (=> bs!1090658 (= lambda!208662 lambda!208623)))

(declare-fun bs!1090659 () Bool)

(assert (= bs!1090659 (and d!1492628 d!1492564)))

(assert (=> bs!1090659 (not (= lambda!208662 lambda!208643))))

(declare-fun bs!1090660 () Bool)

(assert (= bs!1090660 (and d!1492628 start!475456)))

(assert (=> bs!1090660 (= lambda!208662 lambda!208505)))

(declare-fun bs!1090661 () Bool)

(assert (= bs!1090661 (and d!1492628 d!1492466)))

(assert (=> bs!1090661 (= lambda!208662 lambda!208594)))

(declare-fun bs!1090662 () Bool)

(assert (= bs!1090662 (and d!1492628 d!1492484)))

(assert (=> bs!1090662 (= lambda!208662 lambda!208609)))

(declare-fun bs!1090663 () Bool)

(assert (= bs!1090663 (and d!1492628 d!1492474)))

(assert (=> bs!1090663 (= lambda!208662 lambda!208602)))

(declare-fun bs!1090664 () Bool)

(assert (= bs!1090664 (and d!1492628 d!1492576)))

(assert (=> bs!1090664 (= lambda!208662 lambda!208649)))

(declare-fun bs!1090665 () Bool)

(assert (= bs!1090665 (and d!1492628 d!1492560)))

(assert (=> bs!1090665 (= lambda!208662 lambda!208636)))

(declare-fun bs!1090666 () Bool)

(assert (= bs!1090666 (and d!1492628 d!1492584)))

(assert (=> bs!1090666 (= lambda!208662 lambda!208660)))

(declare-fun bs!1090667 () Bool)

(assert (= bs!1090667 (and d!1492628 d!1492552)))

(assert (=> bs!1090667 (= lambda!208662 lambda!208632)))

(declare-fun lt!1856450 () ListMap!5005)

(assert (=> d!1492628 (invariantList!1426 (toList!5641 lt!1856450))))

(declare-fun e!2929083 () ListMap!5005)

(assert (=> d!1492628 (= lt!1856450 e!2929083)))

(declare-fun c!802709 () Bool)

(assert (=> d!1492628 (= c!802709 ((_ is Cons!52470) (Cons!52470 lt!1855854 lt!1855863)))))

(assert (=> d!1492628 (forall!11359 (Cons!52470 lt!1855854 lt!1855863) lambda!208662)))

(assert (=> d!1492628 (= (extractMap!1902 (Cons!52470 lt!1855854 lt!1855863)) lt!1856450)))

(declare-fun b!4695350 () Bool)

(assert (=> b!4695350 (= e!2929083 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (Cons!52470 lt!1855854 lt!1855863))) (extractMap!1902 (t!359786 (Cons!52470 lt!1855854 lt!1855863)))))))

(declare-fun b!4695351 () Bool)

(assert (=> b!4695351 (= e!2929083 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492628 c!802709) b!4695350))

(assert (= (and d!1492628 (not c!802709)) b!4695351))

(declare-fun m!5603121 () Bool)

(assert (=> d!1492628 m!5603121))

(declare-fun m!5603123 () Bool)

(assert (=> d!1492628 m!5603123))

(declare-fun m!5603125 () Bool)

(assert (=> b!4695350 m!5603125))

(assert (=> b!4695350 m!5603125))

(declare-fun m!5603127 () Bool)

(assert (=> b!4695350 m!5603127))

(assert (=> b!4694907 d!1492628))

(declare-fun d!1492630 () Bool)

(assert (=> d!1492630 (= (eq!1035 lt!1855877 lt!1855872) (= (content!9207 (toList!5641 lt!1855877)) (content!9207 (toList!5641 lt!1855872))))))

(declare-fun bs!1090668 () Bool)

(assert (= bs!1090668 d!1492630))

(declare-fun m!5603129 () Bool)

(assert (=> bs!1090668 m!5603129))

(declare-fun m!5603131 () Bool)

(assert (=> bs!1090668 m!5603131))

(assert (=> b!4694907 d!1492630))

(declare-fun bs!1090669 () Bool)

(declare-fun d!1492632 () Bool)

(assert (= bs!1090669 (and d!1492632 d!1492534)))

(declare-fun lambda!208663 () Int)

(assert (=> bs!1090669 (= lambda!208663 lambda!208623)))

(declare-fun bs!1090670 () Bool)

(assert (= bs!1090670 (and d!1492632 d!1492564)))

(assert (=> bs!1090670 (not (= lambda!208663 lambda!208643))))

(declare-fun bs!1090671 () Bool)

(assert (= bs!1090671 (and d!1492632 d!1492628)))

(assert (=> bs!1090671 (= lambda!208663 lambda!208662)))

(declare-fun bs!1090672 () Bool)

(assert (= bs!1090672 (and d!1492632 start!475456)))

(assert (=> bs!1090672 (= lambda!208663 lambda!208505)))

(declare-fun bs!1090673 () Bool)

(assert (= bs!1090673 (and d!1492632 d!1492466)))

(assert (=> bs!1090673 (= lambda!208663 lambda!208594)))

(declare-fun bs!1090674 () Bool)

(assert (= bs!1090674 (and d!1492632 d!1492484)))

(assert (=> bs!1090674 (= lambda!208663 lambda!208609)))

(declare-fun bs!1090675 () Bool)

(assert (= bs!1090675 (and d!1492632 d!1492474)))

(assert (=> bs!1090675 (= lambda!208663 lambda!208602)))

(declare-fun bs!1090676 () Bool)

(assert (= bs!1090676 (and d!1492632 d!1492576)))

(assert (=> bs!1090676 (= lambda!208663 lambda!208649)))

(declare-fun bs!1090677 () Bool)

(assert (= bs!1090677 (and d!1492632 d!1492560)))

(assert (=> bs!1090677 (= lambda!208663 lambda!208636)))

(declare-fun bs!1090678 () Bool)

(assert (= bs!1090678 (and d!1492632 d!1492584)))

(assert (=> bs!1090678 (= lambda!208663 lambda!208660)))

(declare-fun bs!1090679 () Bool)

(assert (= bs!1090679 (and d!1492632 d!1492552)))

(assert (=> bs!1090679 (= lambda!208663 lambda!208632)))

(declare-fun lt!1856451 () ListMap!5005)

(assert (=> d!1492632 (invariantList!1426 (toList!5641 lt!1856451))))

(declare-fun e!2929084 () ListMap!5005)

(assert (=> d!1492632 (= lt!1856451 e!2929084)))

(declare-fun c!802710 () Bool)

(assert (=> d!1492632 (= c!802710 ((_ is Cons!52470) (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023)))))))

(assert (=> d!1492632 (forall!11359 (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023))) lambda!208663)))

(assert (=> d!1492632 (= (extractMap!1902 (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023)))) lt!1856451)))

(declare-fun b!4695352 () Bool)

(assert (=> b!4695352 (= e!2929084 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023))))) (extractMap!1902 (t!359786 (Cons!52470 lt!1855854 (t!359786 (toList!5642 lm!2023)))))))))

(declare-fun b!4695353 () Bool)

(assert (=> b!4695353 (= e!2929084 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492632 c!802710) b!4695352))

(assert (= (and d!1492632 (not c!802710)) b!4695353))

(declare-fun m!5603133 () Bool)

(assert (=> d!1492632 m!5603133))

(declare-fun m!5603135 () Bool)

(assert (=> d!1492632 m!5603135))

(declare-fun m!5603137 () Bool)

(assert (=> b!4695352 m!5603137))

(assert (=> b!4695352 m!5603137))

(declare-fun m!5603139 () Bool)

(assert (=> b!4695352 m!5603139))

(assert (=> b!4694907 d!1492632))

(declare-fun bs!1090680 () Bool)

(declare-fun d!1492634 () Bool)

(assert (= bs!1090680 (and d!1492634 d!1492632)))

(declare-fun lambda!208666 () Int)

(assert (=> bs!1090680 (= lambda!208666 lambda!208663)))

(declare-fun bs!1090681 () Bool)

(assert (= bs!1090681 (and d!1492634 d!1492534)))

(assert (=> bs!1090681 (= lambda!208666 lambda!208623)))

(declare-fun bs!1090682 () Bool)

(assert (= bs!1090682 (and d!1492634 d!1492564)))

(assert (=> bs!1090682 (not (= lambda!208666 lambda!208643))))

(declare-fun bs!1090683 () Bool)

(assert (= bs!1090683 (and d!1492634 d!1492628)))

(assert (=> bs!1090683 (= lambda!208666 lambda!208662)))

(declare-fun bs!1090684 () Bool)

(assert (= bs!1090684 (and d!1492634 start!475456)))

(assert (=> bs!1090684 (= lambda!208666 lambda!208505)))

(declare-fun bs!1090685 () Bool)

(assert (= bs!1090685 (and d!1492634 d!1492466)))

(assert (=> bs!1090685 (= lambda!208666 lambda!208594)))

(declare-fun bs!1090686 () Bool)

(assert (= bs!1090686 (and d!1492634 d!1492484)))

(assert (=> bs!1090686 (= lambda!208666 lambda!208609)))

(declare-fun bs!1090687 () Bool)

(assert (= bs!1090687 (and d!1492634 d!1492474)))

(assert (=> bs!1090687 (= lambda!208666 lambda!208602)))

(declare-fun bs!1090688 () Bool)

(assert (= bs!1090688 (and d!1492634 d!1492576)))

(assert (=> bs!1090688 (= lambda!208666 lambda!208649)))

(declare-fun bs!1090689 () Bool)

(assert (= bs!1090689 (and d!1492634 d!1492560)))

(assert (=> bs!1090689 (= lambda!208666 lambda!208636)))

(declare-fun bs!1090690 () Bool)

(assert (= bs!1090690 (and d!1492634 d!1492584)))

(assert (=> bs!1090690 (= lambda!208666 lambda!208660)))

(declare-fun bs!1090691 () Bool)

(assert (= bs!1090691 (and d!1492634 d!1492552)))

(assert (=> bs!1090691 (= lambda!208666 lambda!208632)))

(assert (=> d!1492634 (eq!1035 (extractMap!1902 (Cons!52470 (tuple2!53901 hash!405 lt!1855865) (tail!8653 (toList!5642 lt!1855862)))) (-!680 (extractMap!1902 (Cons!52470 (tuple2!53901 hash!405 (t!359785 oldBucket!34)) (tail!8653 (toList!5642 lt!1855862)))) key!4653))))

(declare-fun lt!1856454 () Unit!125029)

(declare-fun choose!32718 (ListLongMap!4171 (_ BitVec 64) List!52593 List!52593 K!13840 Hashable!6245) Unit!125029)

(assert (=> d!1492634 (= lt!1856454 (choose!32718 lt!1855862 hash!405 (t!359785 oldBucket!34) lt!1855865 key!4653 hashF!1323))))

(assert (=> d!1492634 (forall!11359 (toList!5642 lt!1855862) lambda!208666)))

(assert (=> d!1492634 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!50 lt!1855862 hash!405 (t!359785 oldBucket!34) lt!1855865 key!4653 hashF!1323) lt!1856454)))

(declare-fun bs!1090692 () Bool)

(assert (= bs!1090692 d!1492634))

(declare-fun m!5603141 () Bool)

(assert (=> bs!1090692 m!5603141))

(declare-fun m!5603143 () Bool)

(assert (=> bs!1090692 m!5603143))

(declare-fun m!5603145 () Bool)

(assert (=> bs!1090692 m!5603145))

(assert (=> bs!1090692 m!5603141))

(declare-fun m!5603147 () Bool)

(assert (=> bs!1090692 m!5603147))

(declare-fun m!5603149 () Bool)

(assert (=> bs!1090692 m!5603149))

(assert (=> bs!1090692 m!5603143))

(declare-fun m!5603151 () Bool)

(assert (=> bs!1090692 m!5603151))

(declare-fun m!5603153 () Bool)

(assert (=> bs!1090692 m!5603153))

(assert (=> bs!1090692 m!5603149))

(assert (=> b!4694907 d!1492634))

(declare-fun d!1492636 () Bool)

(declare-fun e!2929087 () Bool)

(assert (=> d!1492636 e!2929087))

(declare-fun res!1981345 () Bool)

(assert (=> d!1492636 (=> (not res!1981345) (not e!2929087))))

(declare-fun lt!1856457 () ListMap!5005)

(assert (=> d!1492636 (= res!1981345 (not (contains!15706 lt!1856457 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!347 (List!52593 K!13840) List!52593)

(assert (=> d!1492636 (= lt!1856457 (ListMap!5006 (removePresrvNoDuplicatedKeys!347 (toList!5641 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863))) key!4653)))))

(assert (=> d!1492636 (= (-!680 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)) key!4653) lt!1856457)))

(declare-fun b!4695356 () Bool)

(declare-fun content!9210 (List!52596) (InoxSet K!13840))

(assert (=> b!4695356 (= e!2929087 (= ((_ map and) (content!9210 (keys!18751 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)))) ((_ map not) (store ((as const (Array K!13840 Bool)) false) key!4653 true))) (content!9210 (keys!18751 lt!1856457))))))

(assert (= (and d!1492636 res!1981345) b!4695356))

(declare-fun m!5603155 () Bool)

(assert (=> d!1492636 m!5603155))

(declare-fun m!5603157 () Bool)

(assert (=> d!1492636 m!5603157))

(declare-fun m!5603159 () Bool)

(assert (=> b!4695356 m!5603159))

(declare-fun m!5603161 () Bool)

(assert (=> b!4695356 m!5603161))

(declare-fun m!5603163 () Bool)

(assert (=> b!4695356 m!5603163))

(declare-fun m!5603165 () Bool)

(assert (=> b!4695356 m!5603165))

(assert (=> b!4695356 m!5603163))

(declare-fun m!5603167 () Bool)

(assert (=> b!4695356 m!5603167))

(assert (=> b!4695356 m!5602113))

(assert (=> b!4695356 m!5603159))

(assert (=> b!4694907 d!1492636))

(declare-fun d!1492638 () Bool)

(assert (=> d!1492638 (= (tail!8653 lt!1855866) (t!359786 lt!1855866))))

(assert (=> b!4694907 d!1492638))

(declare-fun d!1492640 () Bool)

(declare-fun e!2929088 () Bool)

(assert (=> d!1492640 e!2929088))

(declare-fun res!1981346 () Bool)

(assert (=> d!1492640 (=> (not res!1981346) (not e!2929088))))

(declare-fun lt!1856458 () ListMap!5005)

(assert (=> d!1492640 (= res!1981346 (not (contains!15706 lt!1856458 key!4653)))))

(assert (=> d!1492640 (= lt!1856458 (ListMap!5006 (removePresrvNoDuplicatedKeys!347 (toList!5641 lt!1855876) key!4653)))))

(assert (=> d!1492640 (= (-!680 lt!1855876 key!4653) lt!1856458)))

(declare-fun b!4695357 () Bool)

(assert (=> b!4695357 (= e!2929088 (= ((_ map and) (content!9210 (keys!18751 lt!1855876)) ((_ map not) (store ((as const (Array K!13840 Bool)) false) key!4653 true))) (content!9210 (keys!18751 lt!1856458))))))

(assert (= (and d!1492640 res!1981346) b!4695357))

(declare-fun m!5603169 () Bool)

(assert (=> d!1492640 m!5603169))

(declare-fun m!5603171 () Bool)

(assert (=> d!1492640 m!5603171))

(assert (=> b!4695357 m!5602729))

(declare-fun m!5603173 () Bool)

(assert (=> b!4695357 m!5603173))

(declare-fun m!5603175 () Bool)

(assert (=> b!4695357 m!5603175))

(declare-fun m!5603177 () Bool)

(assert (=> b!4695357 m!5603177))

(assert (=> b!4695357 m!5603175))

(assert (=> b!4695357 m!5603167))

(assert (=> b!4695357 m!5602729))

(assert (=> b!4694907 d!1492640))

(declare-fun d!1492642 () Bool)

(assert (=> d!1492642 (= (eq!1035 (extractMap!1902 (Cons!52470 lt!1855854 lt!1855863)) (-!680 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)) key!4653)) (= (content!9207 (toList!5641 (extractMap!1902 (Cons!52470 lt!1855854 lt!1855863)))) (content!9207 (toList!5641 (-!680 (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)) key!4653)))))))

(declare-fun bs!1090693 () Bool)

(assert (= bs!1090693 d!1492642))

(declare-fun m!5603179 () Bool)

(assert (=> bs!1090693 m!5603179))

(declare-fun m!5603181 () Bool)

(assert (=> bs!1090693 m!5603181))

(assert (=> b!4694907 d!1492642))

(declare-fun bs!1090694 () Bool)

(declare-fun d!1492644 () Bool)

(assert (= bs!1090694 (and d!1492644 d!1492632)))

(declare-fun lambda!208667 () Int)

(assert (=> bs!1090694 (= lambda!208667 lambda!208663)))

(declare-fun bs!1090695 () Bool)

(assert (= bs!1090695 (and d!1492644 d!1492534)))

(assert (=> bs!1090695 (= lambda!208667 lambda!208623)))

(declare-fun bs!1090696 () Bool)

(assert (= bs!1090696 (and d!1492644 d!1492564)))

(assert (=> bs!1090696 (not (= lambda!208667 lambda!208643))))

(declare-fun bs!1090697 () Bool)

(assert (= bs!1090697 (and d!1492644 d!1492628)))

(assert (=> bs!1090697 (= lambda!208667 lambda!208662)))

(declare-fun bs!1090698 () Bool)

(assert (= bs!1090698 (and d!1492644 start!475456)))

(assert (=> bs!1090698 (= lambda!208667 lambda!208505)))

(declare-fun bs!1090699 () Bool)

(assert (= bs!1090699 (and d!1492644 d!1492466)))

(assert (=> bs!1090699 (= lambda!208667 lambda!208594)))

(declare-fun bs!1090700 () Bool)

(assert (= bs!1090700 (and d!1492644 d!1492634)))

(assert (=> bs!1090700 (= lambda!208667 lambda!208666)))

(declare-fun bs!1090701 () Bool)

(assert (= bs!1090701 (and d!1492644 d!1492484)))

(assert (=> bs!1090701 (= lambda!208667 lambda!208609)))

(declare-fun bs!1090702 () Bool)

(assert (= bs!1090702 (and d!1492644 d!1492474)))

(assert (=> bs!1090702 (= lambda!208667 lambda!208602)))

(declare-fun bs!1090703 () Bool)

(assert (= bs!1090703 (and d!1492644 d!1492576)))

(assert (=> bs!1090703 (= lambda!208667 lambda!208649)))

(declare-fun bs!1090704 () Bool)

(assert (= bs!1090704 (and d!1492644 d!1492560)))

(assert (=> bs!1090704 (= lambda!208667 lambda!208636)))

(declare-fun bs!1090705 () Bool)

(assert (= bs!1090705 (and d!1492644 d!1492584)))

(assert (=> bs!1090705 (= lambda!208667 lambda!208660)))

(declare-fun bs!1090706 () Bool)

(assert (= bs!1090706 (and d!1492644 d!1492552)))

(assert (=> bs!1090706 (= lambda!208667 lambda!208632)))

(declare-fun lt!1856459 () ListMap!5005)

(assert (=> d!1492644 (invariantList!1426 (toList!5641 lt!1856459))))

(declare-fun e!2929089 () ListMap!5005)

(assert (=> d!1492644 (= lt!1856459 e!2929089)))

(declare-fun c!802711 () Bool)

(assert (=> d!1492644 (= c!802711 ((_ is Cons!52470) (Cons!52470 lt!1855859 lt!1855863)))))

(assert (=> d!1492644 (forall!11359 (Cons!52470 lt!1855859 lt!1855863) lambda!208667)))

(assert (=> d!1492644 (= (extractMap!1902 (Cons!52470 lt!1855859 lt!1855863)) lt!1856459)))

(declare-fun b!4695358 () Bool)

(assert (=> b!4695358 (= e!2929089 (addToMapMapFromBucket!1308 (_2!30244 (h!58731 (Cons!52470 lt!1855859 lt!1855863))) (extractMap!1902 (t!359786 (Cons!52470 lt!1855859 lt!1855863)))))))

(declare-fun b!4695359 () Bool)

(assert (=> b!4695359 (= e!2929089 (ListMap!5006 Nil!52469))))

(assert (= (and d!1492644 c!802711) b!4695358))

(assert (= (and d!1492644 (not c!802711)) b!4695359))

(declare-fun m!5603183 () Bool)

(assert (=> d!1492644 m!5603183))

(declare-fun m!5603185 () Bool)

(assert (=> d!1492644 m!5603185))

(declare-fun m!5603187 () Bool)

(assert (=> b!4695358 m!5603187))

(assert (=> b!4695358 m!5603187))

(declare-fun m!5603189 () Bool)

(assert (=> b!4695358 m!5603189))

(assert (=> b!4694907 d!1492644))

(declare-fun d!1492646 () Bool)

(declare-fun res!1981347 () Bool)

(declare-fun e!2929090 () Bool)

(assert (=> d!1492646 (=> res!1981347 e!2929090)))

(assert (=> d!1492646 (= res!1981347 (not ((_ is Cons!52469) oldBucket!34)))))

(assert (=> d!1492646 (= (noDuplicateKeys!1876 oldBucket!34) e!2929090)))

(declare-fun b!4695360 () Bool)

(declare-fun e!2929091 () Bool)

(assert (=> b!4695360 (= e!2929090 e!2929091)))

(declare-fun res!1981348 () Bool)

(assert (=> b!4695360 (=> (not res!1981348) (not e!2929091))))

(assert (=> b!4695360 (= res!1981348 (not (containsKey!3107 (t!359785 oldBucket!34) (_1!30243 (h!58730 oldBucket!34)))))))

(declare-fun b!4695361 () Bool)

(assert (=> b!4695361 (= e!2929091 (noDuplicateKeys!1876 (t!359785 oldBucket!34)))))

(assert (= (and d!1492646 (not res!1981347)) b!4695360))

(assert (= (and b!4695360 res!1981348) b!4695361))

(declare-fun m!5603191 () Bool)

(assert (=> b!4695360 m!5603191))

(assert (=> b!4695361 m!5602981))

(assert (=> b!4694918 d!1492646))

(declare-fun b!4695362 () Bool)

(declare-fun e!2929092 () List!52593)

(assert (=> b!4695362 (= e!2929092 (t!359785 oldBucket!34))))

(declare-fun d!1492648 () Bool)

(declare-fun lt!1856460 () List!52593)

(assert (=> d!1492648 (not (containsKey!3107 lt!1856460 key!4653))))

(assert (=> d!1492648 (= lt!1856460 e!2929092)))

(declare-fun c!802712 () Bool)

(assert (=> d!1492648 (= c!802712 (and ((_ is Cons!52469) oldBucket!34) (= (_1!30243 (h!58730 oldBucket!34)) key!4653)))))

(assert (=> d!1492648 (noDuplicateKeys!1876 oldBucket!34)))

(assert (=> d!1492648 (= (removePairForKey!1471 oldBucket!34 key!4653) lt!1856460)))

(declare-fun b!4695365 () Bool)

(declare-fun e!2929093 () List!52593)

(assert (=> b!4695365 (= e!2929093 Nil!52469)))

(declare-fun b!4695364 () Bool)

(assert (=> b!4695364 (= e!2929093 (Cons!52469 (h!58730 oldBucket!34) (removePairForKey!1471 (t!359785 oldBucket!34) key!4653)))))

(declare-fun b!4695363 () Bool)

(assert (=> b!4695363 (= e!2929092 e!2929093)))

(declare-fun c!802713 () Bool)

(assert (=> b!4695363 (= c!802713 ((_ is Cons!52469) oldBucket!34))))

(assert (= (and d!1492648 c!802712) b!4695362))

(assert (= (and d!1492648 (not c!802712)) b!4695363))

(assert (= (and b!4695363 c!802713) b!4695364))

(assert (= (and b!4695363 (not c!802713)) b!4695365))

(declare-fun m!5603193 () Bool)

(assert (=> d!1492648 m!5603193))

(assert (=> d!1492648 m!5602097))

(assert (=> b!4695364 m!5602099))

(assert (=> b!4694906 d!1492648))

(declare-fun d!1492650 () Bool)

(assert (=> d!1492650 (= (eq!1035 lt!1855875 (+!2160 lt!1855873 lt!1855867)) (= (content!9207 (toList!5641 lt!1855875)) (content!9207 (toList!5641 (+!2160 lt!1855873 lt!1855867)))))))

(declare-fun bs!1090707 () Bool)

(assert (= bs!1090707 d!1492650))

(assert (=> bs!1090707 m!5602773))

(declare-fun m!5603195 () Bool)

(assert (=> bs!1090707 m!5603195))

(assert (=> b!4694905 d!1492650))

(declare-fun d!1492652 () Bool)

(declare-fun e!2929094 () Bool)

(assert (=> d!1492652 e!2929094))

(declare-fun res!1981349 () Bool)

(assert (=> d!1492652 (=> (not res!1981349) (not e!2929094))))

(declare-fun lt!1856464 () ListMap!5005)

(assert (=> d!1492652 (= res!1981349 (contains!15706 lt!1856464 (_1!30243 lt!1855867)))))

(declare-fun lt!1856461 () List!52593)

(assert (=> d!1492652 (= lt!1856464 (ListMap!5006 lt!1856461))))

(declare-fun lt!1856463 () Unit!125029)

(declare-fun lt!1856462 () Unit!125029)

(assert (=> d!1492652 (= lt!1856463 lt!1856462)))

(assert (=> d!1492652 (= (getValueByKey!1811 lt!1856461 (_1!30243 lt!1855867)) (Some!12132 (_2!30243 lt!1855867)))))

(assert (=> d!1492652 (= lt!1856462 (lemmaContainsTupThenGetReturnValue!1016 lt!1856461 (_1!30243 lt!1855867) (_2!30243 lt!1855867)))))

(assert (=> d!1492652 (= lt!1856461 (insertNoDuplicatedKeys!524 (toList!5641 lt!1855873) (_1!30243 lt!1855867) (_2!30243 lt!1855867)))))

(assert (=> d!1492652 (= (+!2160 lt!1855873 lt!1855867) lt!1856464)))

(declare-fun b!4695366 () Bool)

(declare-fun res!1981350 () Bool)

(assert (=> b!4695366 (=> (not res!1981350) (not e!2929094))))

(assert (=> b!4695366 (= res!1981350 (= (getValueByKey!1811 (toList!5641 lt!1856464) (_1!30243 lt!1855867)) (Some!12132 (_2!30243 lt!1855867))))))

(declare-fun b!4695367 () Bool)

(assert (=> b!4695367 (= e!2929094 (contains!15711 (toList!5641 lt!1856464) lt!1855867))))

(assert (= (and d!1492652 res!1981349) b!4695366))

(assert (= (and b!4695366 res!1981350) b!4695367))

(declare-fun m!5603197 () Bool)

(assert (=> d!1492652 m!5603197))

(declare-fun m!5603199 () Bool)

(assert (=> d!1492652 m!5603199))

(declare-fun m!5603201 () Bool)

(assert (=> d!1492652 m!5603201))

(declare-fun m!5603203 () Bool)

(assert (=> d!1492652 m!5603203))

(declare-fun m!5603205 () Bool)

(assert (=> b!4695366 m!5603205))

(declare-fun m!5603207 () Bool)

(assert (=> b!4695367 m!5603207))

(assert (=> b!4694905 d!1492652))

(declare-fun d!1492654 () Bool)

(declare-fun e!2929095 () Bool)

(assert (=> d!1492654 e!2929095))

(declare-fun res!1981351 () Bool)

(assert (=> d!1492654 (=> (not res!1981351) (not e!2929095))))

(declare-fun lt!1856465 () ListMap!5005)

(assert (=> d!1492654 (= res!1981351 (not (contains!15706 lt!1856465 key!4653)))))

(assert (=> d!1492654 (= lt!1856465 (ListMap!5006 (removePresrvNoDuplicatedKeys!347 (toList!5641 (+!2160 lt!1855876 (h!58730 oldBucket!34))) key!4653)))))

(assert (=> d!1492654 (= (-!680 (+!2160 lt!1855876 (h!58730 oldBucket!34)) key!4653) lt!1856465)))

(declare-fun b!4695368 () Bool)

(assert (=> b!4695368 (= e!2929095 (= ((_ map and) (content!9210 (keys!18751 (+!2160 lt!1855876 (h!58730 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13840 Bool)) false) key!4653 true))) (content!9210 (keys!18751 lt!1856465))))))

(assert (= (and d!1492654 res!1981351) b!4695368))

(declare-fun m!5603209 () Bool)

(assert (=> d!1492654 m!5603209))

(declare-fun m!5603211 () Bool)

(assert (=> d!1492654 m!5603211))

(declare-fun m!5603213 () Bool)

(assert (=> b!4695368 m!5603213))

(declare-fun m!5603215 () Bool)

(assert (=> b!4695368 m!5603215))

(declare-fun m!5603217 () Bool)

(assert (=> b!4695368 m!5603217))

(declare-fun m!5603219 () Bool)

(assert (=> b!4695368 m!5603219))

(assert (=> b!4695368 m!5603217))

(assert (=> b!4695368 m!5603167))

(assert (=> b!4695368 m!5602085))

(assert (=> b!4695368 m!5603213))

(assert (=> b!4694916 d!1492654))

(declare-fun d!1492656 () Bool)

(declare-fun e!2929096 () Bool)

(assert (=> d!1492656 e!2929096))

(declare-fun res!1981352 () Bool)

(assert (=> d!1492656 (=> (not res!1981352) (not e!2929096))))

(declare-fun lt!1856469 () ListMap!5005)

(assert (=> d!1492656 (= res!1981352 (contains!15706 lt!1856469 (_1!30243 (h!58730 oldBucket!34))))))

(declare-fun lt!1856466 () List!52593)

(assert (=> d!1492656 (= lt!1856469 (ListMap!5006 lt!1856466))))

(declare-fun lt!1856468 () Unit!125029)

(declare-fun lt!1856467 () Unit!125029)

(assert (=> d!1492656 (= lt!1856468 lt!1856467)))

(assert (=> d!1492656 (= (getValueByKey!1811 lt!1856466 (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492656 (= lt!1856467 (lemmaContainsTupThenGetReturnValue!1016 lt!1856466 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492656 (= lt!1856466 (insertNoDuplicatedKeys!524 (toList!5641 lt!1855876) (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492656 (= (+!2160 lt!1855876 (h!58730 oldBucket!34)) lt!1856469)))

(declare-fun b!4695369 () Bool)

(declare-fun res!1981353 () Bool)

(assert (=> b!4695369 (=> (not res!1981353) (not e!2929096))))

(assert (=> b!4695369 (= res!1981353 (= (getValueByKey!1811 (toList!5641 lt!1856469) (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34)))))))

(declare-fun b!4695370 () Bool)

(assert (=> b!4695370 (= e!2929096 (contains!15711 (toList!5641 lt!1856469) (h!58730 oldBucket!34)))))

(assert (= (and d!1492656 res!1981352) b!4695369))

(assert (= (and b!4695369 res!1981353) b!4695370))

(declare-fun m!5603221 () Bool)

(assert (=> d!1492656 m!5603221))

(declare-fun m!5603223 () Bool)

(assert (=> d!1492656 m!5603223))

(declare-fun m!5603225 () Bool)

(assert (=> d!1492656 m!5603225))

(declare-fun m!5603227 () Bool)

(assert (=> d!1492656 m!5603227))

(declare-fun m!5603229 () Bool)

(assert (=> b!4695369 m!5603229))

(declare-fun m!5603231 () Bool)

(assert (=> b!4695370 m!5603231))

(assert (=> b!4694916 d!1492656))

(declare-fun d!1492658 () Bool)

(declare-fun e!2929097 () Bool)

(assert (=> d!1492658 e!2929097))

(declare-fun res!1981354 () Bool)

(assert (=> d!1492658 (=> (not res!1981354) (not e!2929097))))

(declare-fun lt!1856473 () ListMap!5005)

(assert (=> d!1492658 (= res!1981354 (contains!15706 lt!1856473 (_1!30243 (h!58730 oldBucket!34))))))

(declare-fun lt!1856470 () List!52593)

(assert (=> d!1492658 (= lt!1856473 (ListMap!5006 lt!1856470))))

(declare-fun lt!1856472 () Unit!125029)

(declare-fun lt!1856471 () Unit!125029)

(assert (=> d!1492658 (= lt!1856472 lt!1856471)))

(assert (=> d!1492658 (= (getValueByKey!1811 lt!1856470 (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492658 (= lt!1856471 (lemmaContainsTupThenGetReturnValue!1016 lt!1856470 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492658 (= lt!1856470 (insertNoDuplicatedKeys!524 (toList!5641 lt!1855872) (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34))))))

(assert (=> d!1492658 (= (+!2160 lt!1855872 (h!58730 oldBucket!34)) lt!1856473)))

(declare-fun b!4695371 () Bool)

(declare-fun res!1981355 () Bool)

(assert (=> b!4695371 (=> (not res!1981355) (not e!2929097))))

(assert (=> b!4695371 (= res!1981355 (= (getValueByKey!1811 (toList!5641 lt!1856473) (_1!30243 (h!58730 oldBucket!34))) (Some!12132 (_2!30243 (h!58730 oldBucket!34)))))))

(declare-fun b!4695372 () Bool)

(assert (=> b!4695372 (= e!2929097 (contains!15711 (toList!5641 lt!1856473) (h!58730 oldBucket!34)))))

(assert (= (and d!1492658 res!1981354) b!4695371))

(assert (= (and b!4695371 res!1981355) b!4695372))

(declare-fun m!5603233 () Bool)

(assert (=> d!1492658 m!5603233))

(declare-fun m!5603235 () Bool)

(assert (=> d!1492658 m!5603235))

(declare-fun m!5603237 () Bool)

(assert (=> d!1492658 m!5603237))

(declare-fun m!5603239 () Bool)

(assert (=> d!1492658 m!5603239))

(declare-fun m!5603241 () Bool)

(assert (=> b!4695371 m!5603241))

(declare-fun m!5603243 () Bool)

(assert (=> b!4695372 m!5603243))

(assert (=> b!4694916 d!1492658))

(declare-fun d!1492660 () Bool)

(assert (=> d!1492660 (= (-!680 (+!2160 lt!1855876 (tuple2!53899 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34)))) key!4653) (+!2160 (-!680 lt!1855876 key!4653) (tuple2!53899 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34)))))))

(declare-fun lt!1856476 () Unit!125029)

(declare-fun choose!32719 (ListMap!5005 K!13840 V!14086 K!13840) Unit!125029)

(assert (=> d!1492660 (= lt!1856476 (choose!32719 lt!1855876 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34)) key!4653))))

(assert (=> d!1492660 (not (= (_1!30243 (h!58730 oldBucket!34)) key!4653))))

(assert (=> d!1492660 (= (addRemoveCommutativeForDiffKeys!81 lt!1855876 (_1!30243 (h!58730 oldBucket!34)) (_2!30243 (h!58730 oldBucket!34)) key!4653) lt!1856476)))

(declare-fun bs!1090708 () Bool)

(assert (= bs!1090708 d!1492660))

(declare-fun m!5603245 () Bool)

(assert (=> bs!1090708 m!5603245))

(assert (=> bs!1090708 m!5603245))

(declare-fun m!5603247 () Bool)

(assert (=> bs!1090708 m!5603247))

(declare-fun m!5603249 () Bool)

(assert (=> bs!1090708 m!5603249))

(assert (=> bs!1090708 m!5602119))

(declare-fun m!5603251 () Bool)

(assert (=> bs!1090708 m!5603251))

(assert (=> bs!1090708 m!5602119))

(assert (=> b!4694916 d!1492660))

(declare-fun b!4695377 () Bool)

(declare-fun tp!1346288 () Bool)

(declare-fun e!2929100 () Bool)

(assert (=> b!4695377 (= e!2929100 (and tp_is_empty!30797 tp_is_empty!30799 tp!1346288))))

(assert (=> b!4694910 (= tp!1346273 e!2929100)))

(assert (= (and b!4694910 ((_ is Cons!52469) (t!359785 oldBucket!34))) b!4695377))

(declare-fun e!2929101 () Bool)

(declare-fun tp!1346289 () Bool)

(declare-fun b!4695378 () Bool)

(assert (=> b!4695378 (= e!2929101 (and tp_is_empty!30797 tp_is_empty!30799 tp!1346289))))

(assert (=> b!4694912 (= tp!1346275 e!2929101)))

(assert (= (and b!4694912 ((_ is Cons!52469) (t!359785 newBucket!218))) b!4695378))

(declare-fun b!4695383 () Bool)

(declare-fun e!2929104 () Bool)

(declare-fun tp!1346294 () Bool)

(declare-fun tp!1346295 () Bool)

(assert (=> b!4695383 (= e!2929104 (and tp!1346294 tp!1346295))))

(assert (=> b!4694921 (= tp!1346274 e!2929104)))

(assert (= (and b!4694921 ((_ is Cons!52470) (toList!5642 lm!2023))) b!4695383))

(declare-fun b_lambda!177175 () Bool)

(assert (= b_lambda!177171 (or start!475456 b_lambda!177175)))

(declare-fun bs!1090709 () Bool)

(declare-fun d!1492662 () Bool)

(assert (= bs!1090709 (and d!1492662 start!475456)))

(assert (=> bs!1090709 (= (dynLambda!21729 lambda!208505 lt!1855858) (noDuplicateKeys!1876 (_2!30244 lt!1855858)))))

(declare-fun m!5603253 () Bool)

(assert (=> bs!1090709 m!5603253))

(assert (=> d!1492612 d!1492662))

(declare-fun b_lambda!177177 () Bool)

(assert (= b_lambda!177173 (or start!475456 b_lambda!177177)))

(declare-fun bs!1090710 () Bool)

(declare-fun d!1492664 () Bool)

(assert (= bs!1090710 (and d!1492664 start!475456)))

(assert (=> bs!1090710 (= (dynLambda!21729 lambda!208505 (h!58731 (toList!5642 lm!2023))) (noDuplicateKeys!1876 (_2!30244 (h!58731 (toList!5642 lm!2023)))))))

(assert (=> bs!1090710 m!5602909))

(assert (=> b!4695348 d!1492664))

(declare-fun b_lambda!177179 () Bool)

(assert (= b_lambda!177163 (or start!475456 b_lambda!177179)))

(declare-fun bs!1090711 () Bool)

(declare-fun d!1492666 () Bool)

(assert (= bs!1090711 (and d!1492666 start!475456)))

(assert (=> bs!1090711 (= (dynLambda!21729 lambda!208505 (h!58731 lt!1855866)) (noDuplicateKeys!1876 (_2!30244 (h!58731 lt!1855866))))))

(declare-fun m!5603255 () Bool)

(assert (=> bs!1090711 m!5603255))

(assert (=> b!4695218 d!1492666))

(check-sat (not b!4695361) (not d!1492412) (not b!4695358) (not d!1492640) (not d!1492458) (not b_lambda!177177) (not d!1492530) (not d!1492576) (not b!4695181) (not b!4695356) (not d!1492642) (not b!4695212) (not b!4695184) (not d!1492636) (not d!1492620) (not b!4695370) (not b!4695219) (not d!1492574) (not b!4695094) (not d!1492656) (not b!4695192) (not bm!328188) (not b!4695125) (not b!4695301) (not b!4695209) (not bm!328179) (not b!4695129) (not b!4695334) (not d!1492618) (not b!4695208) (not b!4695122) (not b!4695322) (not b!4695153) (not b!4695326) (not b!4694956) (not b!4695082) (not bm!328193) (not b!4695357) (not b!4695368) (not d!1492634) (not bs!1090711) (not b!4695377) (not b!4695068) (not b!4695128) (not d!1492654) tp_is_empty!30797 (not b!4695383) (not b!4695372) (not bm!328196) (not d!1492614) (not b!4695378) (not b!4695364) (not d!1492624) (not bs!1090709) (not bm!328189) (not d!1492572) (not b!4695360) (not b!4695203) (not b!4694967) (not d!1492602) (not b!4695369) (not d!1492564) (not bs!1090710) (not d!1492604) (not b!4695150) (not b!4695126) (not b!4695255) (not d!1492652) (not bm!328180) (not b!4695206) (not d!1492554) (not d!1492466) (not b!4695189) (not bm!328197) (not b!4695186) (not d!1492552) (not b!4695319) (not d!1492612) (not d!1492480) (not bm!328192) (not b!4695240) (not bm!328178) (not b!4695149) (not b!4695299) (not bm!328202) (not b!4695367) (not b!4695123) (not b!4695300) (not b!4695089) (not b_lambda!177175) (not b!4695193) (not d!1492486) tp_is_empty!30799 (not d!1492546) (not b!4695371) (not b!4695127) (not b!4695349) (not b!4695191) (not b_lambda!177179) (not d!1492504) (not b!4695341) (not d!1492560) (not b!4694955) (not b!4695210) (not bm!328199) (not d!1492538) (not bm!328200) (not d!1492630) (not b!4694966) (not d!1492526) (not b!4695350) (not d!1492550) (not d!1492626) (not b!4695065) (not d!1492474) (not b!4695190) (not b!4695332) (not b!4695197) (not bm!328194) (not b!4695346) (not b!4695183) (not d!1492658) (not d!1492484) (not bm!328187) (not b!4695064) (not b!4695207) (not d!1492650) (not bm!328198) (not d!1492422) (not b!4695320) (not b!4695366) (not b!4695185) (not d!1492632) (not b!4695324) (not d!1492610) (not b!4695302) (not b!4695204) (not bm!328201) (not d!1492566) (not d!1492648) (not b!4695093) (not d!1492542) (not bm!328195) (not d!1492628) (not d!1492528) (not b!4695343) (not d!1492540) (not d!1492584) (not b!4695196) (not b!4695090) (not d!1492534) (not b!4695244) (not b!4695352) (not d!1492660) (not d!1492558) (not d!1492616) (not d!1492556) (not d!1492644))
(check-sat)
