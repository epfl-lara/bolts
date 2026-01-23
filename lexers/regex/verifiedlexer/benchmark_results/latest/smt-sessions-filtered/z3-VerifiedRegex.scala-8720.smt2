; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465440 () Bool)

(assert start!465440)

(declare-fun b!4634158 () Bool)

(declare-fun res!1944905 () Bool)

(declare-fun e!2890891 () Bool)

(assert (=> b!4634158 (=> (not res!1944905) (not e!2890891))))

(declare-datatypes ((K!13005 0))(
  ( (K!13006 (val!18675 Int)) )
))
(declare-datatypes ((V!13251 0))(
  ( (V!13252 (val!18676 Int)) )
))
(declare-datatypes ((tuple2!52614 0))(
  ( (tuple2!52615 (_1!29601 K!13005) (_2!29601 V!13251)) )
))
(declare-datatypes ((List!51762 0))(
  ( (Nil!51638) (Cons!51638 (h!57720 tuple2!52614) (t!358826 List!51762)) )
))
(declare-fun newBucket!224 () List!51762)

(declare-fun noDuplicateKeys!1542 (List!51762) Bool)

(assert (=> b!4634158 (= res!1944905 (noDuplicateKeys!1542 newBucket!224))))

(declare-fun b!4634159 () Bool)

(declare-fun res!1944904 () Bool)

(assert (=> b!4634159 (=> (not res!1944904) (not e!2890891))))

(declare-fun oldBucket!40 () List!51762)

(declare-fun key!4968 () K!13005)

(declare-fun removePairForKey!1165 (List!51762 K!13005) List!51762)

(assert (=> b!4634159 (= res!1944904 (= (removePairForKey!1165 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1944912 () Bool)

(assert (=> start!465440 (=> (not res!1944912) (not e!2890891))))

(assert (=> start!465440 (= res!1944912 (noDuplicateKeys!1542 oldBucket!40))))

(assert (=> start!465440 e!2890891))

(assert (=> start!465440 true))

(declare-fun e!2890892 () Bool)

(assert (=> start!465440 e!2890892))

(declare-fun tp_is_empty!29461 () Bool)

(assert (=> start!465440 tp_is_empty!29461))

(declare-fun e!2890900 () Bool)

(assert (=> start!465440 e!2890900))

(declare-fun b!4634160 () Bool)

(declare-fun e!2890902 () Bool)

(declare-fun e!2890899 () Bool)

(assert (=> b!4634160 (= e!2890902 e!2890899)))

(declare-fun res!1944909 () Bool)

(assert (=> b!4634160 (=> res!1944909 e!2890899)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1795852 () List!51762)

(declare-datatypes ((ListMap!4353 0))(
  ( (ListMap!4354 (toList!5049 List!51762)) )
))
(declare-fun lt!1795868 () ListMap!4353)

(declare-fun eq!857 (ListMap!4353 ListMap!4353) Bool)

(declare-fun +!1908 (ListMap!4353 tuple2!52614) ListMap!4353)

(declare-datatypes ((tuple2!52616 0))(
  ( (tuple2!52617 (_1!29602 (_ BitVec 64)) (_2!29602 List!51762)) )
))
(declare-datatypes ((List!51763 0))(
  ( (Nil!51639) (Cons!51639 (h!57721 tuple2!52616) (t!358827 List!51763)) )
))
(declare-fun extractMap!1598 (List!51763) ListMap!4353)

(assert (=> b!4634160 (= res!1944909 (not (eq!857 lt!1795868 (+!1908 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)) (h!57720 oldBucket!40)))))))

(declare-fun lt!1795865 () tuple2!52614)

(declare-fun lt!1795850 () List!51762)

(declare-fun addToMapMapFromBucket!1003 (List!51762 ListMap!4353) ListMap!4353)

(assert (=> b!4634160 (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795865 lt!1795850) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1795865))))

(declare-datatypes ((Unit!114003 0))(
  ( (Unit!114004) )
))
(declare-fun lt!1795874 () Unit!114003)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!108 (tuple2!52614 List!51762 ListMap!4353) Unit!114003)

(assert (=> b!4634160 (= lt!1795874 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!108 lt!1795865 lt!1795850 (ListMap!4354 Nil!51638)))))

(declare-fun head!9676 (List!51762) tuple2!52614)

(assert (=> b!4634160 (= lt!1795865 (head!9676 newBucket!224))))

(declare-fun lt!1795869 () tuple2!52614)

(assert (=> b!4634160 (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795869 lt!1795852) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1795869))))

(declare-fun lt!1795878 () Unit!114003)

(assert (=> b!4634160 (= lt!1795878 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!108 lt!1795869 lt!1795852 (ListMap!4354 Nil!51638)))))

(assert (=> b!4634160 (= lt!1795869 (head!9676 oldBucket!40))))

(declare-fun lt!1795857 () ListMap!4353)

(declare-fun contains!14749 (ListMap!4353 K!13005) Bool)

(assert (=> b!4634160 (contains!14749 lt!1795857 key!4968)))

(declare-fun lt!1795862 () List!51763)

(assert (=> b!4634160 (= lt!1795857 (extractMap!1598 lt!1795862))))

(declare-datatypes ((Hashable!5939 0))(
  ( (HashableExt!5938 (__x!31642 Int)) )
))
(declare-fun hashF!1389 () Hashable!5939)

(declare-fun lt!1795861 () Unit!114003)

(declare-datatypes ((ListLongMap!3639 0))(
  ( (ListLongMap!3640 (toList!5050 List!51763)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!360 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> b!4634160 (= lt!1795861 (lemmaListContainsThenExtractedMapContains!360 (ListLongMap!3640 lt!1795862) key!4968 hashF!1389))))

(assert (=> b!4634160 (= lt!1795862 (Cons!51639 (tuple2!52617 hash!414 (t!358826 oldBucket!40)) Nil!51639))))

(declare-fun b!4634161 () Bool)

(declare-fun e!2890897 () Bool)

(declare-fun e!2890893 () Bool)

(assert (=> b!4634161 (= e!2890897 e!2890893)))

(declare-fun res!1944911 () Bool)

(assert (=> b!4634161 (=> res!1944911 e!2890893)))

(declare-fun lt!1795883 () ListMap!4353)

(declare-fun lt!1795851 () ListMap!4353)

(assert (=> b!4634161 (= res!1944911 (not (eq!857 lt!1795883 lt!1795851)))))

(declare-fun lt!1795876 () ListMap!4353)

(assert (=> b!4634161 (eq!857 lt!1795876 lt!1795883)))

(declare-fun -!582 (ListMap!4353 K!13005) ListMap!4353)

(assert (=> b!4634161 (= lt!1795883 (-!582 lt!1795868 key!4968))))

(declare-fun lt!1795873 () Unit!114003)

(declare-fun lt!1795864 () ListMap!4353)

(declare-fun lemmaRemovePreservesEq!38 (ListMap!4353 ListMap!4353 K!13005) Unit!114003)

(assert (=> b!4634161 (= lt!1795873 (lemmaRemovePreservesEq!38 lt!1795864 lt!1795868 key!4968))))

(declare-fun b!4634162 () Bool)

(declare-fun e!2890901 () Bool)

(assert (=> b!4634162 (= e!2890899 e!2890901)))

(declare-fun res!1944917 () Bool)

(assert (=> b!4634162 (=> res!1944917 e!2890901)))

(declare-fun lt!1795856 () ListMap!4353)

(declare-fun lt!1795875 () ListMap!4353)

(assert (=> b!4634162 (= res!1944917 (not (eq!857 lt!1795875 (+!1908 lt!1795856 lt!1795865))))))

(assert (=> b!4634162 (= lt!1795856 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639)))))

(assert (=> b!4634162 (= lt!1795875 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639)))))

(declare-fun b!4634163 () Bool)

(declare-fun e!2890896 () Bool)

(declare-fun e!2890890 () Bool)

(assert (=> b!4634163 (= e!2890896 e!2890890)))

(declare-fun res!1944915 () Bool)

(assert (=> b!4634163 (=> (not res!1944915) (not e!2890890))))

(declare-fun lt!1795881 () (_ BitVec 64))

(assert (=> b!4634163 (= res!1944915 (= lt!1795881 hash!414))))

(declare-fun hash!3598 (Hashable!5939 K!13005) (_ BitVec 64))

(assert (=> b!4634163 (= lt!1795881 (hash!3598 hashF!1389 key!4968))))

(declare-fun b!4634164 () Bool)

(declare-fun res!1944907 () Bool)

(assert (=> b!4634164 (=> res!1944907 e!2890893)))

(assert (=> b!4634164 (= res!1944907 (not (= lt!1795865 (h!57720 oldBucket!40))))))

(declare-fun b!4634165 () Bool)

(declare-fun res!1944918 () Bool)

(assert (=> b!4634165 (=> (not res!1944918) (not e!2890890))))

(declare-fun allKeysSameHash!1396 (List!51762 (_ BitVec 64) Hashable!5939) Bool)

(assert (=> b!4634165 (= res!1944918 (allKeysSameHash!1396 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4634166 () Bool)

(declare-fun tp!1342451 () Bool)

(declare-fun tp_is_empty!29463 () Bool)

(assert (=> b!4634166 (= e!2890892 (and tp_is_empty!29461 tp_is_empty!29463 tp!1342451))))

(declare-fun b!4634167 () Bool)

(declare-fun res!1944914 () Bool)

(assert (=> b!4634167 (=> (not res!1944914) (not e!2890891))))

(assert (=> b!4634167 (= res!1944914 (allKeysSameHash!1396 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4634168 () Bool)

(declare-fun e!2890895 () Bool)

(declare-fun e!2890889 () Bool)

(assert (=> b!4634168 (= e!2890895 e!2890889)))

(declare-fun res!1944902 () Bool)

(assert (=> b!4634168 (=> res!1944902 e!2890889)))

(declare-fun containsKey!2546 (List!51762 K!13005) Bool)

(assert (=> b!4634168 (= res!1944902 (not (containsKey!2546 (t!358826 oldBucket!40) key!4968)))))

(assert (=> b!4634168 (containsKey!2546 oldBucket!40 key!4968)))

(declare-fun lt!1795867 () Unit!114003)

(declare-fun lemmaGetPairDefinedThenContainsKey!88 (List!51762 K!13005 Hashable!5939) Unit!114003)

(assert (=> b!4634168 (= lt!1795867 (lemmaGetPairDefinedThenContainsKey!88 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1795870 () List!51762)

(declare-datatypes ((Option!11688 0))(
  ( (None!11687) (Some!11687 (v!45877 tuple2!52614)) )
))
(declare-fun isDefined!8953 (Option!11688) Bool)

(declare-fun getPair!334 (List!51762 K!13005) Option!11688)

(assert (=> b!4634168 (isDefined!8953 (getPair!334 lt!1795870 key!4968))))

(declare-fun lt!1795882 () Unit!114003)

(declare-fun lt!1795866 () List!51763)

(declare-fun lambda!194478 () Int)

(declare-fun lt!1795872 () tuple2!52616)

(declare-fun forallContained!3118 (List!51763 Int tuple2!52616) Unit!114003)

(assert (=> b!4634168 (= lt!1795882 (forallContained!3118 lt!1795866 lambda!194478 lt!1795872))))

(declare-fun contains!14750 (List!51763 tuple2!52616) Bool)

(assert (=> b!4634168 (contains!14750 lt!1795866 lt!1795872)))

(assert (=> b!4634168 (= lt!1795872 (tuple2!52617 lt!1795881 lt!1795870))))

(declare-fun lt!1795854 () ListLongMap!3639)

(declare-fun lt!1795858 () Unit!114003)

(declare-fun lemmaGetValueImpliesTupleContained!139 (ListLongMap!3639 (_ BitVec 64) List!51762) Unit!114003)

(assert (=> b!4634168 (= lt!1795858 (lemmaGetValueImpliesTupleContained!139 lt!1795854 lt!1795881 lt!1795870))))

(declare-fun apply!12207 (ListLongMap!3639 (_ BitVec 64)) List!51762)

(assert (=> b!4634168 (= lt!1795870 (apply!12207 lt!1795854 lt!1795881))))

(declare-fun contains!14751 (ListLongMap!3639 (_ BitVec 64)) Bool)

(assert (=> b!4634168 (contains!14751 lt!1795854 lt!1795881)))

(declare-fun lt!1795853 () Unit!114003)

(declare-fun lemmaInGenMapThenLongMapContainsHash!540 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> b!4634168 (= lt!1795853 (lemmaInGenMapThenLongMapContainsHash!540 lt!1795854 key!4968 hashF!1389))))

(declare-fun lt!1795879 () Unit!114003)

(declare-fun lemmaInGenMapThenGetPairDefined!130 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> b!4634168 (= lt!1795879 (lemmaInGenMapThenGetPairDefined!130 lt!1795854 key!4968 hashF!1389))))

(assert (=> b!4634168 (= lt!1795854 (ListLongMap!3640 lt!1795866))))

(declare-fun b!4634169 () Bool)

(assert (=> b!4634169 (= e!2890901 e!2890897)))

(declare-fun res!1944908 () Bool)

(assert (=> b!4634169 (=> res!1944908 e!2890897)))

(assert (=> b!4634169 (= res!1944908 (not (= lt!1795876 lt!1795851)))))

(declare-fun lt!1795877 () ListMap!4353)

(assert (=> b!4634169 (= lt!1795851 (+!1908 lt!1795877 (h!57720 oldBucket!40)))))

(assert (=> b!4634169 (= lt!1795876 (-!582 lt!1795864 key!4968))))

(assert (=> b!4634169 (= lt!1795864 (+!1908 lt!1795857 (h!57720 oldBucket!40)))))

(declare-fun lt!1795863 () ListMap!4353)

(declare-fun lt!1795860 () ListMap!4353)

(assert (=> b!4634169 (= lt!1795863 lt!1795860)))

(assert (=> b!4634169 (= lt!1795860 (+!1908 lt!1795877 (h!57720 oldBucket!40)))))

(assert (=> b!4634169 (= lt!1795863 (-!582 (+!1908 lt!1795857 (h!57720 oldBucket!40)) key!4968))))

(declare-fun lt!1795871 () Unit!114003)

(declare-fun addRemoveCommutativeForDiffKeys!37 (ListMap!4353 K!13005 V!13251 K!13005) Unit!114003)

(assert (=> b!4634169 (= lt!1795871 (addRemoveCommutativeForDiffKeys!37 lt!1795857 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)) key!4968))))

(assert (=> b!4634169 (eq!857 lt!1795856 lt!1795877)))

(assert (=> b!4634169 (= lt!1795877 (-!582 lt!1795857 key!4968))))

(declare-fun lt!1795855 () Unit!114003)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!144 ((_ BitVec 64) List!51762 List!51762 K!13005 Hashable!5939) Unit!114003)

(assert (=> b!4634169 (= lt!1795855 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!144 hash!414 (t!358826 oldBucket!40) lt!1795850 key!4968 hashF!1389))))

(declare-fun b!4634170 () Bool)

(assert (=> b!4634170 (= e!2890889 e!2890902)))

(declare-fun res!1944916 () Bool)

(assert (=> b!4634170 (=> res!1944916 e!2890902)))

(assert (=> b!4634170 (= res!1944916 (not (= (removePairForKey!1165 lt!1795852 key!4968) lt!1795850)))))

(declare-fun tail!8177 (List!51762) List!51762)

(assert (=> b!4634170 (= lt!1795850 (tail!8177 newBucket!224))))

(assert (=> b!4634170 (= lt!1795852 (tail!8177 oldBucket!40))))

(declare-fun b!4634171 () Bool)

(assert (=> b!4634171 (= e!2890891 e!2890896)))

(declare-fun res!1944901 () Bool)

(assert (=> b!4634171 (=> (not res!1944901) (not e!2890896))))

(assert (=> b!4634171 (= res!1944901 (contains!14749 lt!1795868 key!4968))))

(assert (=> b!4634171 (= lt!1795868 (extractMap!1598 lt!1795866))))

(assert (=> b!4634171 (= lt!1795866 (Cons!51639 (tuple2!52617 hash!414 oldBucket!40) Nil!51639))))

(declare-fun b!4634172 () Bool)

(declare-fun tp!1342450 () Bool)

(assert (=> b!4634172 (= e!2890900 (and tp_is_empty!29461 tp_is_empty!29463 tp!1342450))))

(declare-fun b!4634173 () Bool)

(declare-fun res!1944903 () Bool)

(assert (=> b!4634173 (=> res!1944903 e!2890893)))

(assert (=> b!4634173 (= res!1944903 (not (eq!857 lt!1795875 (+!1908 lt!1795856 (h!57720 oldBucket!40)))))))

(declare-fun b!4634174 () Bool)

(declare-fun res!1944913 () Bool)

(assert (=> b!4634174 (=> res!1944913 e!2890902)))

(assert (=> b!4634174 (= res!1944913 (not (= (removePairForKey!1165 (t!358826 oldBucket!40) key!4968) lt!1795850)))))

(declare-fun b!4634175 () Bool)

(assert (=> b!4634175 (= e!2890890 (not e!2890895))))

(declare-fun res!1944900 () Bool)

(assert (=> b!4634175 (=> res!1944900 e!2890895)))

(get-info :version)

(assert (=> b!4634175 (= res!1944900 (or (and ((_ is Cons!51638) oldBucket!40) (= (_1!29601 (h!57720 oldBucket!40)) key!4968)) (not ((_ is Cons!51638) oldBucket!40)) (= (_1!29601 (h!57720 oldBucket!40)) key!4968)))))

(declare-fun e!2890898 () Bool)

(assert (=> b!4634175 e!2890898))

(declare-fun res!1944910 () Bool)

(assert (=> b!4634175 (=> (not res!1944910) (not e!2890898))))

(declare-fun lt!1795859 () ListMap!4353)

(assert (=> b!4634175 (= res!1944910 (= lt!1795868 (addToMapMapFromBucket!1003 oldBucket!40 lt!1795859)))))

(assert (=> b!4634175 (= lt!1795859 (extractMap!1598 Nil!51639))))

(assert (=> b!4634175 true))

(declare-fun b!4634176 () Bool)

(declare-fun e!2890894 () Bool)

(declare-fun forall!10886 (List!51763 Int) Bool)

(assert (=> b!4634176 (= e!2890894 (forall!10886 lt!1795862 lambda!194478))))

(declare-fun b!4634177 () Bool)

(assert (=> b!4634177 (= e!2890898 (= lt!1795859 (ListMap!4354 Nil!51638)))))

(declare-fun b!4634178 () Bool)

(assert (=> b!4634178 (= e!2890893 e!2890894)))

(declare-fun res!1944906 () Bool)

(assert (=> b!4634178 (=> res!1944906 e!2890894)))

(assert (=> b!4634178 (= res!1944906 (not (eq!857 lt!1795875 lt!1795851)))))

(assert (=> b!4634178 (eq!857 lt!1795860 (+!1908 lt!1795856 (h!57720 oldBucket!40)))))

(declare-fun lt!1795880 () Unit!114003)

(declare-fun lemmaAddToEqMapsPreservesEq!54 (ListMap!4353 ListMap!4353 K!13005 V!13251) Unit!114003)

(assert (=> b!4634178 (= lt!1795880 (lemmaAddToEqMapsPreservesEq!54 lt!1795877 lt!1795856 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (= (and start!465440 res!1944912) b!4634158))

(assert (= (and b!4634158 res!1944905) b!4634159))

(assert (= (and b!4634159 res!1944904) b!4634167))

(assert (= (and b!4634167 res!1944914) b!4634171))

(assert (= (and b!4634171 res!1944901) b!4634163))

(assert (= (and b!4634163 res!1944915) b!4634165))

(assert (= (and b!4634165 res!1944918) b!4634175))

(assert (= (and b!4634175 res!1944910) b!4634177))

(assert (= (and b!4634175 (not res!1944900)) b!4634168))

(assert (= (and b!4634168 (not res!1944902)) b!4634170))

(assert (= (and b!4634170 (not res!1944916)) b!4634174))

(assert (= (and b!4634174 (not res!1944913)) b!4634160))

(assert (= (and b!4634160 (not res!1944909)) b!4634162))

(assert (= (and b!4634162 (not res!1944917)) b!4634169))

(assert (= (and b!4634169 (not res!1944908)) b!4634161))

(assert (= (and b!4634161 (not res!1944911)) b!4634164))

(assert (= (and b!4634164 (not res!1944907)) b!4634173))

(assert (= (and b!4634173 (not res!1944903)) b!4634178))

(assert (= (and b!4634178 (not res!1944906)) b!4634176))

(assert (= (and start!465440 ((_ is Cons!51638) oldBucket!40)) b!4634166))

(assert (= (and start!465440 ((_ is Cons!51638) newBucket!224)) b!4634172))

(declare-fun m!5488053 () Bool)

(assert (=> b!4634159 m!5488053))

(declare-fun m!5488055 () Bool)

(assert (=> b!4634161 m!5488055))

(declare-fun m!5488057 () Bool)

(assert (=> b!4634161 m!5488057))

(declare-fun m!5488059 () Bool)

(assert (=> b!4634161 m!5488059))

(declare-fun m!5488061 () Bool)

(assert (=> b!4634161 m!5488061))

(declare-fun m!5488063 () Bool)

(assert (=> b!4634162 m!5488063))

(assert (=> b!4634162 m!5488063))

(declare-fun m!5488065 () Bool)

(assert (=> b!4634162 m!5488065))

(declare-fun m!5488067 () Bool)

(assert (=> b!4634162 m!5488067))

(declare-fun m!5488069 () Bool)

(assert (=> b!4634162 m!5488069))

(declare-fun m!5488071 () Bool)

(assert (=> b!4634158 m!5488071))

(declare-fun m!5488073 () Bool)

(assert (=> b!4634160 m!5488073))

(declare-fun m!5488075 () Bool)

(assert (=> b!4634160 m!5488075))

(declare-fun m!5488077 () Bool)

(assert (=> b!4634160 m!5488077))

(declare-fun m!5488079 () Bool)

(assert (=> b!4634160 m!5488079))

(declare-fun m!5488081 () Bool)

(assert (=> b!4634160 m!5488081))

(declare-fun m!5488083 () Bool)

(assert (=> b!4634160 m!5488083))

(declare-fun m!5488085 () Bool)

(assert (=> b!4634160 m!5488085))

(assert (=> b!4634160 m!5488077))

(declare-fun m!5488087 () Bool)

(assert (=> b!4634160 m!5488087))

(declare-fun m!5488089 () Bool)

(assert (=> b!4634160 m!5488089))

(declare-fun m!5488091 () Bool)

(assert (=> b!4634160 m!5488091))

(declare-fun m!5488093 () Bool)

(assert (=> b!4634160 m!5488093))

(declare-fun m!5488095 () Bool)

(assert (=> b!4634160 m!5488095))

(declare-fun m!5488097 () Bool)

(assert (=> b!4634160 m!5488097))

(declare-fun m!5488099 () Bool)

(assert (=> b!4634160 m!5488099))

(declare-fun m!5488101 () Bool)

(assert (=> b!4634160 m!5488101))

(assert (=> b!4634160 m!5488085))

(declare-fun m!5488103 () Bool)

(assert (=> b!4634160 m!5488103))

(assert (=> b!4634160 m!5488075))

(assert (=> b!4634160 m!5488083))

(declare-fun m!5488105 () Bool)

(assert (=> b!4634160 m!5488105))

(declare-fun m!5488107 () Bool)

(assert (=> b!4634160 m!5488107))

(assert (=> b!4634160 m!5488095))

(assert (=> b!4634160 m!5488107))

(assert (=> b!4634160 m!5488097))

(assert (=> b!4634160 m!5488081))

(declare-fun m!5488109 () Bool)

(assert (=> b!4634163 m!5488109))

(declare-fun m!5488111 () Bool)

(assert (=> b!4634165 m!5488111))

(declare-fun m!5488113 () Bool)

(assert (=> start!465440 m!5488113))

(declare-fun m!5488115 () Bool)

(assert (=> b!4634168 m!5488115))

(declare-fun m!5488117 () Bool)

(assert (=> b!4634168 m!5488117))

(declare-fun m!5488119 () Bool)

(assert (=> b!4634168 m!5488119))

(declare-fun m!5488121 () Bool)

(assert (=> b!4634168 m!5488121))

(declare-fun m!5488123 () Bool)

(assert (=> b!4634168 m!5488123))

(declare-fun m!5488125 () Bool)

(assert (=> b!4634168 m!5488125))

(declare-fun m!5488127 () Bool)

(assert (=> b!4634168 m!5488127))

(declare-fun m!5488129 () Bool)

(assert (=> b!4634168 m!5488129))

(declare-fun m!5488131 () Bool)

(assert (=> b!4634168 m!5488131))

(declare-fun m!5488133 () Bool)

(assert (=> b!4634168 m!5488133))

(assert (=> b!4634168 m!5488121))

(declare-fun m!5488135 () Bool)

(assert (=> b!4634168 m!5488135))

(declare-fun m!5488137 () Bool)

(assert (=> b!4634168 m!5488137))

(declare-fun m!5488139 () Bool)

(assert (=> b!4634173 m!5488139))

(assert (=> b!4634173 m!5488139))

(declare-fun m!5488141 () Bool)

(assert (=> b!4634173 m!5488141))

(declare-fun m!5488143 () Bool)

(assert (=> b!4634167 m!5488143))

(declare-fun m!5488145 () Bool)

(assert (=> b!4634169 m!5488145))

(declare-fun m!5488147 () Bool)

(assert (=> b!4634169 m!5488147))

(declare-fun m!5488149 () Bool)

(assert (=> b!4634169 m!5488149))

(declare-fun m!5488151 () Bool)

(assert (=> b!4634169 m!5488151))

(declare-fun m!5488153 () Bool)

(assert (=> b!4634169 m!5488153))

(declare-fun m!5488155 () Bool)

(assert (=> b!4634169 m!5488155))

(declare-fun m!5488157 () Bool)

(assert (=> b!4634169 m!5488157))

(assert (=> b!4634169 m!5488153))

(declare-fun m!5488159 () Bool)

(assert (=> b!4634169 m!5488159))

(declare-fun m!5488161 () Bool)

(assert (=> b!4634176 m!5488161))

(declare-fun m!5488163 () Bool)

(assert (=> b!4634170 m!5488163))

(declare-fun m!5488165 () Bool)

(assert (=> b!4634170 m!5488165))

(declare-fun m!5488167 () Bool)

(assert (=> b!4634170 m!5488167))

(declare-fun m!5488169 () Bool)

(assert (=> b!4634178 m!5488169))

(assert (=> b!4634178 m!5488139))

(assert (=> b!4634178 m!5488139))

(declare-fun m!5488171 () Bool)

(assert (=> b!4634178 m!5488171))

(declare-fun m!5488173 () Bool)

(assert (=> b!4634178 m!5488173))

(declare-fun m!5488175 () Bool)

(assert (=> b!4634174 m!5488175))

(declare-fun m!5488177 () Bool)

(assert (=> b!4634171 m!5488177))

(declare-fun m!5488179 () Bool)

(assert (=> b!4634171 m!5488179))

(declare-fun m!5488181 () Bool)

(assert (=> b!4634175 m!5488181))

(declare-fun m!5488183 () Bool)

(assert (=> b!4634175 m!5488183))

(check-sat tp_is_empty!29461 (not b!4634169) (not b!4634160) tp_is_empty!29463 (not b!4634175) (not b!4634172) (not b!4634174) (not b!4634176) (not b!4634173) (not b!4634163) (not b!4634165) (not b!4634171) (not b!4634168) (not b!4634167) (not b!4634158) (not b!4634170) (not start!465440) (not b!4634162) (not b!4634166) (not b!4634161) (not b!4634178) (not b!4634159))
(check-sat)
(get-model)

(declare-fun bm!323399 () Bool)

(declare-fun call!323404 () Bool)

(declare-datatypes ((List!51765 0))(
  ( (Nil!51641) (Cons!51641 (h!57725 K!13005) (t!358831 List!51765)) )
))
(declare-fun e!2890936 () List!51765)

(declare-fun contains!14753 (List!51765 K!13005) Bool)

(assert (=> bm!323399 (= call!323404 (contains!14753 e!2890936 key!4968))))

(declare-fun c!793185 () Bool)

(declare-fun c!793184 () Bool)

(assert (=> bm!323399 (= c!793185 c!793184)))

(declare-fun b!4634216 () Bool)

(declare-fun keys!18222 (ListMap!4353) List!51765)

(assert (=> b!4634216 (= e!2890936 (keys!18222 lt!1795868))))

(declare-fun b!4634217 () Bool)

(declare-fun e!2890937 () Unit!114003)

(declare-fun e!2890934 () Unit!114003)

(assert (=> b!4634217 (= e!2890937 e!2890934)))

(declare-fun c!793183 () Bool)

(assert (=> b!4634217 (= c!793183 call!323404)))

(declare-fun b!4634218 () Bool)

(declare-fun lt!1795928 () Unit!114003)

(assert (=> b!4634218 (= e!2890937 lt!1795928)))

(declare-fun lt!1795927 () Unit!114003)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1416 (List!51762 K!13005) Unit!114003)

(assert (=> b!4634218 (= lt!1795927 (lemmaContainsKeyImpliesGetValueByKeyDefined!1416 (toList!5049 lt!1795868) key!4968))))

(declare-datatypes ((Option!11691 0))(
  ( (None!11690) (Some!11690 (v!45884 V!13251)) )
))
(declare-fun isDefined!8955 (Option!11691) Bool)

(declare-fun getValueByKey!1515 (List!51762 K!13005) Option!11691)

(assert (=> b!4634218 (isDefined!8955 (getValueByKey!1515 (toList!5049 lt!1795868) key!4968))))

(declare-fun lt!1795922 () Unit!114003)

(assert (=> b!4634218 (= lt!1795922 lt!1795927)))

(declare-fun lemmaInListThenGetKeysListContains!681 (List!51762 K!13005) Unit!114003)

(assert (=> b!4634218 (= lt!1795928 (lemmaInListThenGetKeysListContains!681 (toList!5049 lt!1795868) key!4968))))

(assert (=> b!4634218 call!323404))

(declare-fun b!4634220 () Bool)

(declare-fun getKeysList!686 (List!51762) List!51765)

(assert (=> b!4634220 (= e!2890936 (getKeysList!686 (toList!5049 lt!1795868)))))

(declare-fun b!4634221 () Bool)

(declare-fun e!2890935 () Bool)

(assert (=> b!4634221 (= e!2890935 (not (contains!14753 (keys!18222 lt!1795868) key!4968)))))

(declare-fun b!4634222 () Bool)

(declare-fun e!2890932 () Bool)

(declare-fun e!2890933 () Bool)

(assert (=> b!4634222 (= e!2890932 e!2890933)))

(declare-fun res!1944941 () Bool)

(assert (=> b!4634222 (=> (not res!1944941) (not e!2890933))))

(assert (=> b!4634222 (= res!1944941 (isDefined!8955 (getValueByKey!1515 (toList!5049 lt!1795868) key!4968)))))

(declare-fun b!4634223 () Bool)

(assert (=> b!4634223 false))

(declare-fun lt!1795926 () Unit!114003)

(declare-fun lt!1795923 () Unit!114003)

(assert (=> b!4634223 (= lt!1795926 lt!1795923)))

(declare-fun containsKey!2548 (List!51762 K!13005) Bool)

(assert (=> b!4634223 (containsKey!2548 (toList!5049 lt!1795868) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!685 (List!51762 K!13005) Unit!114003)

(assert (=> b!4634223 (= lt!1795923 (lemmaInGetKeysListThenContainsKey!685 (toList!5049 lt!1795868) key!4968))))

(declare-fun Unit!114017 () Unit!114003)

(assert (=> b!4634223 (= e!2890934 Unit!114017)))

(declare-fun b!4634224 () Bool)

(declare-fun Unit!114018 () Unit!114003)

(assert (=> b!4634224 (= e!2890934 Unit!114018)))

(declare-fun d!1460879 () Bool)

(assert (=> d!1460879 e!2890932))

(declare-fun res!1944940 () Bool)

(assert (=> d!1460879 (=> res!1944940 e!2890932)))

(assert (=> d!1460879 (= res!1944940 e!2890935)))

(declare-fun res!1944942 () Bool)

(assert (=> d!1460879 (=> (not res!1944942) (not e!2890935))))

(declare-fun lt!1795925 () Bool)

(assert (=> d!1460879 (= res!1944942 (not lt!1795925))))

(declare-fun lt!1795924 () Bool)

(assert (=> d!1460879 (= lt!1795925 lt!1795924)))

(declare-fun lt!1795929 () Unit!114003)

(assert (=> d!1460879 (= lt!1795929 e!2890937)))

(assert (=> d!1460879 (= c!793184 lt!1795924)))

(assert (=> d!1460879 (= lt!1795924 (containsKey!2548 (toList!5049 lt!1795868) key!4968))))

(assert (=> d!1460879 (= (contains!14749 lt!1795868 key!4968) lt!1795925)))

(declare-fun b!4634219 () Bool)

(assert (=> b!4634219 (= e!2890933 (contains!14753 (keys!18222 lt!1795868) key!4968))))

(assert (= (and d!1460879 c!793184) b!4634218))

(assert (= (and d!1460879 (not c!793184)) b!4634217))

(assert (= (and b!4634217 c!793183) b!4634223))

(assert (= (and b!4634217 (not c!793183)) b!4634224))

(assert (= (or b!4634218 b!4634217) bm!323399))

(assert (= (and bm!323399 c!793185) b!4634220))

(assert (= (and bm!323399 (not c!793185)) b!4634216))

(assert (= (and d!1460879 res!1944942) b!4634221))

(assert (= (and d!1460879 (not res!1944940)) b!4634222))

(assert (= (and b!4634222 res!1944941) b!4634219))

(declare-fun m!5488219 () Bool)

(assert (=> b!4634222 m!5488219))

(assert (=> b!4634222 m!5488219))

(declare-fun m!5488221 () Bool)

(assert (=> b!4634222 m!5488221))

(declare-fun m!5488223 () Bool)

(assert (=> b!4634220 m!5488223))

(declare-fun m!5488225 () Bool)

(assert (=> b!4634218 m!5488225))

(assert (=> b!4634218 m!5488219))

(assert (=> b!4634218 m!5488219))

(assert (=> b!4634218 m!5488221))

(declare-fun m!5488227 () Bool)

(assert (=> b!4634218 m!5488227))

(declare-fun m!5488229 () Bool)

(assert (=> d!1460879 m!5488229))

(assert (=> b!4634223 m!5488229))

(declare-fun m!5488231 () Bool)

(assert (=> b!4634223 m!5488231))

(declare-fun m!5488233 () Bool)

(assert (=> bm!323399 m!5488233))

(declare-fun m!5488235 () Bool)

(assert (=> b!4634216 m!5488235))

(assert (=> b!4634221 m!5488235))

(assert (=> b!4634221 m!5488235))

(declare-fun m!5488237 () Bool)

(assert (=> b!4634221 m!5488237))

(assert (=> b!4634219 m!5488235))

(assert (=> b!4634219 m!5488235))

(assert (=> b!4634219 m!5488237))

(assert (=> b!4634171 d!1460879))

(declare-fun bs!1029680 () Bool)

(declare-fun d!1460881 () Bool)

(assert (= bs!1029680 (and d!1460881 b!4634168)))

(declare-fun lambda!194515 () Int)

(assert (=> bs!1029680 (= lambda!194515 lambda!194478)))

(declare-fun lt!1795981 () ListMap!4353)

(declare-fun invariantList!1236 (List!51762) Bool)

(assert (=> d!1460881 (invariantList!1236 (toList!5049 lt!1795981))))

(declare-fun e!2890949 () ListMap!4353)

(assert (=> d!1460881 (= lt!1795981 e!2890949)))

(declare-fun c!793191 () Bool)

(assert (=> d!1460881 (= c!793191 ((_ is Cons!51639) lt!1795866))))

(assert (=> d!1460881 (forall!10886 lt!1795866 lambda!194515)))

(assert (=> d!1460881 (= (extractMap!1598 lt!1795866) lt!1795981)))

(declare-fun b!4634246 () Bool)

(assert (=> b!4634246 (= e!2890949 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 lt!1795866)) (extractMap!1598 (t!358827 lt!1795866))))))

(declare-fun b!4634247 () Bool)

(assert (=> b!4634247 (= e!2890949 (ListMap!4354 Nil!51638))))

(assert (= (and d!1460881 c!793191) b!4634246))

(assert (= (and d!1460881 (not c!793191)) b!4634247))

(declare-fun m!5488269 () Bool)

(assert (=> d!1460881 m!5488269))

(declare-fun m!5488271 () Bool)

(assert (=> d!1460881 m!5488271))

(declare-fun m!5488273 () Bool)

(assert (=> b!4634246 m!5488273))

(assert (=> b!4634246 m!5488273))

(declare-fun m!5488281 () Bool)

(assert (=> b!4634246 m!5488281))

(assert (=> b!4634171 d!1460881))

(declare-fun d!1460887 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8893 (List!51762) (InoxSet tuple2!52614))

(assert (=> d!1460887 (= (eq!857 lt!1795883 lt!1795851) (= (content!8893 (toList!5049 lt!1795883)) (content!8893 (toList!5049 lt!1795851))))))

(declare-fun bs!1029683 () Bool)

(assert (= bs!1029683 d!1460887))

(declare-fun m!5488289 () Bool)

(assert (=> bs!1029683 m!5488289))

(declare-fun m!5488291 () Bool)

(assert (=> bs!1029683 m!5488291))

(assert (=> b!4634161 d!1460887))

(declare-fun d!1460891 () Bool)

(assert (=> d!1460891 (= (eq!857 lt!1795876 lt!1795883) (= (content!8893 (toList!5049 lt!1795876)) (content!8893 (toList!5049 lt!1795883))))))

(declare-fun bs!1029684 () Bool)

(assert (= bs!1029684 d!1460891))

(declare-fun m!5488293 () Bool)

(assert (=> bs!1029684 m!5488293))

(assert (=> bs!1029684 m!5488289))

(assert (=> b!4634161 d!1460891))

(declare-fun d!1460893 () Bool)

(declare-fun e!2890967 () Bool)

(assert (=> d!1460893 e!2890967))

(declare-fun res!1944961 () Bool)

(assert (=> d!1460893 (=> (not res!1944961) (not e!2890967))))

(declare-fun lt!1796004 () ListMap!4353)

(assert (=> d!1460893 (= res!1944961 (not (contains!14749 lt!1796004 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!285 (List!51762 K!13005) List!51762)

(assert (=> d!1460893 (= lt!1796004 (ListMap!4354 (removePresrvNoDuplicatedKeys!285 (toList!5049 lt!1795868) key!4968)))))

(assert (=> d!1460893 (= (-!582 lt!1795868 key!4968) lt!1796004)))

(declare-fun b!4634279 () Bool)

(declare-fun content!8894 (List!51765) (InoxSet K!13005))

(assert (=> b!4634279 (= e!2890967 (= ((_ map and) (content!8894 (keys!18222 lt!1795868)) ((_ map not) (store ((as const (Array K!13005 Bool)) false) key!4968 true))) (content!8894 (keys!18222 lt!1796004))))))

(assert (= (and d!1460893 res!1944961) b!4634279))

(declare-fun m!5488347 () Bool)

(assert (=> d!1460893 m!5488347))

(declare-fun m!5488349 () Bool)

(assert (=> d!1460893 m!5488349))

(assert (=> b!4634279 m!5488235))

(declare-fun m!5488351 () Bool)

(assert (=> b!4634279 m!5488351))

(assert (=> b!4634279 m!5488235))

(declare-fun m!5488353 () Bool)

(assert (=> b!4634279 m!5488353))

(declare-fun m!5488355 () Bool)

(assert (=> b!4634279 m!5488355))

(assert (=> b!4634279 m!5488355))

(declare-fun m!5488357 () Bool)

(assert (=> b!4634279 m!5488357))

(assert (=> b!4634161 d!1460893))

(declare-fun d!1460909 () Bool)

(assert (=> d!1460909 (eq!857 (-!582 lt!1795864 key!4968) (-!582 lt!1795868 key!4968))))

(declare-fun lt!1796019 () Unit!114003)

(declare-fun choose!31619 (ListMap!4353 ListMap!4353 K!13005) Unit!114003)

(assert (=> d!1460909 (= lt!1796019 (choose!31619 lt!1795864 lt!1795868 key!4968))))

(assert (=> d!1460909 (eq!857 lt!1795864 lt!1795868)))

(assert (=> d!1460909 (= (lemmaRemovePreservesEq!38 lt!1795864 lt!1795868 key!4968) lt!1796019)))

(declare-fun bs!1029692 () Bool)

(assert (= bs!1029692 d!1460909))

(declare-fun m!5488403 () Bool)

(assert (=> bs!1029692 m!5488403))

(assert (=> bs!1029692 m!5488159))

(assert (=> bs!1029692 m!5488059))

(declare-fun m!5488405 () Bool)

(assert (=> bs!1029692 m!5488405))

(assert (=> bs!1029692 m!5488159))

(assert (=> bs!1029692 m!5488059))

(declare-fun m!5488407 () Bool)

(assert (=> bs!1029692 m!5488407))

(assert (=> b!4634161 d!1460909))

(declare-fun b!4634294 () Bool)

(declare-fun e!2890976 () List!51762)

(declare-fun e!2890975 () List!51762)

(assert (=> b!4634294 (= e!2890976 e!2890975)))

(declare-fun c!793208 () Bool)

(assert (=> b!4634294 (= c!793208 ((_ is Cons!51638) oldBucket!40))))

(declare-fun b!4634295 () Bool)

(assert (=> b!4634295 (= e!2890975 (Cons!51638 (h!57720 oldBucket!40) (removePairForKey!1165 (t!358826 oldBucket!40) key!4968)))))

(declare-fun d!1460919 () Bool)

(declare-fun lt!1796024 () List!51762)

(assert (=> d!1460919 (not (containsKey!2546 lt!1796024 key!4968))))

(assert (=> d!1460919 (= lt!1796024 e!2890976)))

(declare-fun c!793207 () Bool)

(assert (=> d!1460919 (= c!793207 (and ((_ is Cons!51638) oldBucket!40) (= (_1!29601 (h!57720 oldBucket!40)) key!4968)))))

(assert (=> d!1460919 (noDuplicateKeys!1542 oldBucket!40)))

(assert (=> d!1460919 (= (removePairForKey!1165 oldBucket!40 key!4968) lt!1796024)))

(declare-fun b!4634293 () Bool)

(assert (=> b!4634293 (= e!2890976 (t!358826 oldBucket!40))))

(declare-fun b!4634296 () Bool)

(assert (=> b!4634296 (= e!2890975 Nil!51638)))

(assert (= (and d!1460919 c!793207) b!4634293))

(assert (= (and d!1460919 (not c!793207)) b!4634294))

(assert (= (and b!4634294 c!793208) b!4634295))

(assert (= (and b!4634294 (not c!793208)) b!4634296))

(assert (=> b!4634295 m!5488175))

(declare-fun m!5488417 () Bool)

(assert (=> d!1460919 m!5488417))

(assert (=> d!1460919 m!5488113))

(assert (=> b!4634159 d!1460919))

(declare-fun b!4634299 () Bool)

(declare-fun e!2890979 () List!51762)

(declare-fun e!2890978 () List!51762)

(assert (=> b!4634299 (= e!2890979 e!2890978)))

(declare-fun c!793210 () Bool)

(assert (=> b!4634299 (= c!793210 ((_ is Cons!51638) lt!1795852))))

(declare-fun b!4634300 () Bool)

(assert (=> b!4634300 (= e!2890978 (Cons!51638 (h!57720 lt!1795852) (removePairForKey!1165 (t!358826 lt!1795852) key!4968)))))

(declare-fun d!1460923 () Bool)

(declare-fun lt!1796027 () List!51762)

(assert (=> d!1460923 (not (containsKey!2546 lt!1796027 key!4968))))

(assert (=> d!1460923 (= lt!1796027 e!2890979)))

(declare-fun c!793209 () Bool)

(assert (=> d!1460923 (= c!793209 (and ((_ is Cons!51638) lt!1795852) (= (_1!29601 (h!57720 lt!1795852)) key!4968)))))

(assert (=> d!1460923 (noDuplicateKeys!1542 lt!1795852)))

(assert (=> d!1460923 (= (removePairForKey!1165 lt!1795852 key!4968) lt!1796027)))

(declare-fun b!4634298 () Bool)

(assert (=> b!4634298 (= e!2890979 (t!358826 lt!1795852))))

(declare-fun b!4634301 () Bool)

(assert (=> b!4634301 (= e!2890978 Nil!51638)))

(assert (= (and d!1460923 c!793209) b!4634298))

(assert (= (and d!1460923 (not c!793209)) b!4634299))

(assert (= (and b!4634299 c!793210) b!4634300))

(assert (= (and b!4634299 (not c!793210)) b!4634301))

(declare-fun m!5488431 () Bool)

(assert (=> b!4634300 m!5488431))

(declare-fun m!5488433 () Bool)

(assert (=> d!1460923 m!5488433))

(declare-fun m!5488435 () Bool)

(assert (=> d!1460923 m!5488435))

(assert (=> b!4634170 d!1460923))

(declare-fun d!1460927 () Bool)

(assert (=> d!1460927 (= (tail!8177 newBucket!224) (t!358826 newBucket!224))))

(assert (=> b!4634170 d!1460927))

(declare-fun d!1460933 () Bool)

(assert (=> d!1460933 (= (tail!8177 oldBucket!40) (t!358826 oldBucket!40))))

(assert (=> b!4634170 d!1460933))

(declare-fun d!1460935 () Bool)

(assert (=> d!1460935 (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795869 lt!1795852) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1795869))))

(declare-fun lt!1796046 () Unit!114003)

(declare-fun choose!31620 (tuple2!52614 List!51762 ListMap!4353) Unit!114003)

(assert (=> d!1460935 (= lt!1796046 (choose!31620 lt!1795869 lt!1795852 (ListMap!4354 Nil!51638)))))

(assert (=> d!1460935 (noDuplicateKeys!1542 lt!1795852)))

(assert (=> d!1460935 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!108 lt!1795869 lt!1795852 (ListMap!4354 Nil!51638)) lt!1796046)))

(declare-fun bs!1029694 () Bool)

(assert (= bs!1029694 d!1460935))

(declare-fun m!5488469 () Bool)

(assert (=> bs!1029694 m!5488469))

(assert (=> bs!1029694 m!5488075))

(assert (=> bs!1029694 m!5488077))

(assert (=> bs!1029694 m!5488435))

(assert (=> bs!1029694 m!5488085))

(assert (=> bs!1029694 m!5488077))

(assert (=> bs!1029694 m!5488087))

(assert (=> bs!1029694 m!5488075))

(assert (=> bs!1029694 m!5488085))

(assert (=> b!4634160 d!1460935))

(declare-fun d!1460947 () Bool)

(assert (=> d!1460947 (= (head!9676 oldBucket!40) (h!57720 oldBucket!40))))

(assert (=> b!4634160 d!1460947))

(declare-fun d!1460949 () Bool)

(assert (=> d!1460949 (= (head!9676 newBucket!224) (h!57720 newBucket!224))))

(assert (=> b!4634160 d!1460949))

(declare-fun b!4634437 () Bool)

(assert (=> b!4634437 true))

(declare-fun bs!1029804 () Bool)

(declare-fun b!4634441 () Bool)

(assert (= bs!1029804 (and b!4634441 b!4634437)))

(declare-fun lambda!194575 () Int)

(declare-fun lambda!194574 () Int)

(assert (=> bs!1029804 (= lambda!194575 lambda!194574)))

(assert (=> b!4634441 true))

(declare-fun lt!1796233 () ListMap!4353)

(declare-fun lambda!194576 () Int)

(assert (=> bs!1029804 (= (= lt!1796233 (ListMap!4354 Nil!51638)) (= lambda!194576 lambda!194574))))

(assert (=> b!4634441 (= (= lt!1796233 (ListMap!4354 Nil!51638)) (= lambda!194576 lambda!194575))))

(assert (=> b!4634441 true))

(declare-fun bs!1029806 () Bool)

(declare-fun d!1460951 () Bool)

(assert (= bs!1029806 (and d!1460951 b!4634437)))

(declare-fun lt!1796248 () ListMap!4353)

(declare-fun lambda!194577 () Int)

(assert (=> bs!1029806 (= (= lt!1796248 (ListMap!4354 Nil!51638)) (= lambda!194577 lambda!194574))))

(declare-fun bs!1029807 () Bool)

(assert (= bs!1029807 (and d!1460951 b!4634441)))

(assert (=> bs!1029807 (= (= lt!1796248 (ListMap!4354 Nil!51638)) (= lambda!194577 lambda!194575))))

(assert (=> bs!1029807 (= (= lt!1796248 lt!1796233) (= lambda!194577 lambda!194576))))

(assert (=> d!1460951 true))

(declare-fun e!2891068 () ListMap!4353)

(assert (=> b!4634437 (= e!2891068 (ListMap!4354 Nil!51638))))

(declare-fun lt!1796244 () Unit!114003)

(declare-fun call!323433 () Unit!114003)

(assert (=> b!4634437 (= lt!1796244 call!323433)))

(declare-fun call!323432 () Bool)

(assert (=> b!4634437 call!323432))

(declare-fun lt!1796242 () Unit!114003)

(assert (=> b!4634437 (= lt!1796242 lt!1796244)))

(declare-fun call!323434 () Bool)

(assert (=> b!4634437 call!323434))

(declare-fun lt!1796247 () Unit!114003)

(declare-fun Unit!114021 () Unit!114003)

(assert (=> b!4634437 (= lt!1796247 Unit!114021)))

(declare-fun e!2891067 () Bool)

(assert (=> d!1460951 e!2891067))

(declare-fun res!1945044 () Bool)

(assert (=> d!1460951 (=> (not res!1945044) (not e!2891067))))

(declare-fun forall!10888 (List!51762 Int) Bool)

(assert (=> d!1460951 (= res!1945044 (forall!10888 lt!1795852 lambda!194577))))

(assert (=> d!1460951 (= lt!1796248 e!2891068)))

(declare-fun c!793238 () Bool)

(assert (=> d!1460951 (= c!793238 ((_ is Nil!51638) lt!1795852))))

(assert (=> d!1460951 (noDuplicateKeys!1542 lt!1795852)))

(assert (=> d!1460951 (= (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1796248)))

(declare-fun bm!323427 () Bool)

(assert (=> bm!323427 (= call!323434 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) (ite c!793238 lambda!194574 lambda!194576)))))

(declare-fun bm!323428 () Bool)

(assert (=> bm!323428 (= call!323432 (forall!10888 (ite c!793238 (toList!5049 (ListMap!4354 Nil!51638)) lt!1795852) (ite c!793238 lambda!194574 lambda!194576)))))

(declare-fun b!4634438 () Bool)

(declare-fun res!1945046 () Bool)

(assert (=> b!4634438 (=> (not res!1945046) (not e!2891067))))

(assert (=> b!4634438 (= res!1945046 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194577))))

(declare-fun b!4634439 () Bool)

(assert (=> b!4634439 (= e!2891067 (invariantList!1236 (toList!5049 lt!1796248)))))

(declare-fun bm!323429 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!538 (ListMap!4353) Unit!114003)

(assert (=> bm!323429 (= call!323433 (lemmaContainsAllItsOwnKeys!538 (ListMap!4354 Nil!51638)))))

(declare-fun b!4634440 () Bool)

(declare-fun e!2891066 () Bool)

(assert (=> b!4634440 (= e!2891066 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194576))))

(assert (=> b!4634441 (= e!2891068 lt!1796233)))

(declare-fun lt!1796243 () ListMap!4353)

(assert (=> b!4634441 (= lt!1796243 (+!1908 (ListMap!4354 Nil!51638) (h!57720 lt!1795852)))))

(assert (=> b!4634441 (= lt!1796233 (addToMapMapFromBucket!1003 (t!358826 lt!1795852) (+!1908 (ListMap!4354 Nil!51638) (h!57720 lt!1795852))))))

(declare-fun lt!1796251 () Unit!114003)

(assert (=> b!4634441 (= lt!1796251 call!323433)))

(assert (=> b!4634441 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194575)))

(declare-fun lt!1796237 () Unit!114003)

(assert (=> b!4634441 (= lt!1796237 lt!1796251)))

(assert (=> b!4634441 (forall!10888 (toList!5049 lt!1796243) lambda!194576)))

(declare-fun lt!1796235 () Unit!114003)

(declare-fun Unit!114022 () Unit!114003)

(assert (=> b!4634441 (= lt!1796235 Unit!114022)))

(assert (=> b!4634441 (forall!10888 (t!358826 lt!1795852) lambda!194576)))

(declare-fun lt!1796246 () Unit!114003)

(declare-fun Unit!114023 () Unit!114003)

(assert (=> b!4634441 (= lt!1796246 Unit!114023)))

(declare-fun lt!1796240 () Unit!114003)

(declare-fun Unit!114024 () Unit!114003)

(assert (=> b!4634441 (= lt!1796240 Unit!114024)))

(declare-fun lt!1796239 () Unit!114003)

(declare-fun forallContained!3120 (List!51762 Int tuple2!52614) Unit!114003)

(assert (=> b!4634441 (= lt!1796239 (forallContained!3120 (toList!5049 lt!1796243) lambda!194576 (h!57720 lt!1795852)))))

(assert (=> b!4634441 (contains!14749 lt!1796243 (_1!29601 (h!57720 lt!1795852)))))

(declare-fun lt!1796245 () Unit!114003)

(declare-fun Unit!114025 () Unit!114003)

(assert (=> b!4634441 (= lt!1796245 Unit!114025)))

(assert (=> b!4634441 (contains!14749 lt!1796233 (_1!29601 (h!57720 lt!1795852)))))

(declare-fun lt!1796249 () Unit!114003)

(declare-fun Unit!114026 () Unit!114003)

(assert (=> b!4634441 (= lt!1796249 Unit!114026)))

(assert (=> b!4634441 (forall!10888 lt!1795852 lambda!194576)))

(declare-fun lt!1796232 () Unit!114003)

(declare-fun Unit!114027 () Unit!114003)

(assert (=> b!4634441 (= lt!1796232 Unit!114027)))

(assert (=> b!4634441 (forall!10888 (toList!5049 lt!1796243) lambda!194576)))

(declare-fun lt!1796250 () Unit!114003)

(declare-fun Unit!114028 () Unit!114003)

(assert (=> b!4634441 (= lt!1796250 Unit!114028)))

(declare-fun lt!1796252 () Unit!114003)

(declare-fun Unit!114029 () Unit!114003)

(assert (=> b!4634441 (= lt!1796252 Unit!114029)))

(declare-fun lt!1796236 () Unit!114003)

(declare-fun addForallContainsKeyThenBeforeAdding!537 (ListMap!4353 ListMap!4353 K!13005 V!13251) Unit!114003)

(assert (=> b!4634441 (= lt!1796236 (addForallContainsKeyThenBeforeAdding!537 (ListMap!4354 Nil!51638) lt!1796233 (_1!29601 (h!57720 lt!1795852)) (_2!29601 (h!57720 lt!1795852))))))

(assert (=> b!4634441 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194576)))

(declare-fun lt!1796238 () Unit!114003)

(assert (=> b!4634441 (= lt!1796238 lt!1796236)))

(assert (=> b!4634441 call!323434))

(declare-fun lt!1796241 () Unit!114003)

(declare-fun Unit!114030 () Unit!114003)

(assert (=> b!4634441 (= lt!1796241 Unit!114030)))

(declare-fun res!1945045 () Bool)

(assert (=> b!4634441 (= res!1945045 call!323432)))

(assert (=> b!4634441 (=> (not res!1945045) (not e!2891066))))

(assert (=> b!4634441 e!2891066))

(declare-fun lt!1796234 () Unit!114003)

(declare-fun Unit!114031 () Unit!114003)

(assert (=> b!4634441 (= lt!1796234 Unit!114031)))

(assert (= (and d!1460951 c!793238) b!4634437))

(assert (= (and d!1460951 (not c!793238)) b!4634441))

(assert (= (and b!4634441 res!1945045) b!4634440))

(assert (= (or b!4634437 b!4634441) bm!323429))

(assert (= (or b!4634437 b!4634441) bm!323428))

(assert (= (or b!4634437 b!4634441) bm!323427))

(assert (= (and d!1460951 res!1945044) b!4634438))

(assert (= (and b!4634438 res!1945046) b!4634439))

(declare-fun m!5488717 () Bool)

(assert (=> d!1460951 m!5488717))

(assert (=> d!1460951 m!5488435))

(declare-fun m!5488719 () Bool)

(assert (=> bm!323429 m!5488719))

(declare-fun m!5488721 () Bool)

(assert (=> bm!323427 m!5488721))

(declare-fun m!5488723 () Bool)

(assert (=> b!4634438 m!5488723))

(declare-fun m!5488725 () Bool)

(assert (=> b!4634441 m!5488725))

(declare-fun m!5488727 () Bool)

(assert (=> b!4634441 m!5488727))

(assert (=> b!4634441 m!5488725))

(declare-fun m!5488729 () Bool)

(assert (=> b!4634441 m!5488729))

(declare-fun m!5488731 () Bool)

(assert (=> b!4634441 m!5488731))

(declare-fun m!5488733 () Bool)

(assert (=> b!4634441 m!5488733))

(declare-fun m!5488735 () Bool)

(assert (=> b!4634441 m!5488735))

(declare-fun m!5488737 () Bool)

(assert (=> b!4634441 m!5488737))

(declare-fun m!5488739 () Bool)

(assert (=> b!4634441 m!5488739))

(declare-fun m!5488741 () Bool)

(assert (=> b!4634441 m!5488741))

(declare-fun m!5488743 () Bool)

(assert (=> b!4634441 m!5488743))

(assert (=> b!4634441 m!5488739))

(declare-fun m!5488745 () Bool)

(assert (=> b!4634441 m!5488745))

(assert (=> b!4634440 m!5488733))

(declare-fun m!5488747 () Bool)

(assert (=> bm!323428 m!5488747))

(declare-fun m!5488749 () Bool)

(assert (=> b!4634439 m!5488749))

(assert (=> b!4634160 d!1460951))

(declare-fun bs!1029822 () Bool)

(declare-fun b!4634449 () Bool)

(assert (= bs!1029822 (and b!4634449 b!4634437)))

(declare-fun lambda!194579 () Int)

(assert (=> bs!1029822 (= lambda!194579 lambda!194574)))

(declare-fun bs!1029825 () Bool)

(assert (= bs!1029825 (and b!4634449 b!4634441)))

(assert (=> bs!1029825 (= lambda!194579 lambda!194575)))

(assert (=> bs!1029825 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194579 lambda!194576))))

(declare-fun bs!1029828 () Bool)

(assert (= bs!1029828 (and b!4634449 d!1460951)))

(assert (=> bs!1029828 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194579 lambda!194577))))

(assert (=> b!4634449 true))

(declare-fun bs!1029834 () Bool)

(declare-fun b!4634453 () Bool)

(assert (= bs!1029834 (and b!4634453 b!4634441)))

(declare-fun lambda!194581 () Int)

(assert (=> bs!1029834 (= lambda!194581 lambda!194575)))

(declare-fun bs!1029836 () Bool)

(assert (= bs!1029836 (and b!4634453 b!4634449)))

(assert (=> bs!1029836 (= lambda!194581 lambda!194579)))

(assert (=> bs!1029834 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194581 lambda!194576))))

(declare-fun bs!1029838 () Bool)

(assert (= bs!1029838 (and b!4634453 d!1460951)))

(assert (=> bs!1029838 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194581 lambda!194577))))

(declare-fun bs!1029840 () Bool)

(assert (= bs!1029840 (and b!4634453 b!4634437)))

(assert (=> bs!1029840 (= lambda!194581 lambda!194574)))

(assert (=> b!4634453 true))

(declare-fun lt!1796275 () ListMap!4353)

(declare-fun lambda!194582 () Int)

(assert (=> bs!1029834 (= (= lt!1796275 (ListMap!4354 Nil!51638)) (= lambda!194582 lambda!194575))))

(assert (=> bs!1029836 (= (= lt!1796275 (ListMap!4354 Nil!51638)) (= lambda!194582 lambda!194579))))

(assert (=> bs!1029834 (= (= lt!1796275 lt!1796233) (= lambda!194582 lambda!194576))))

(assert (=> b!4634453 (= (= lt!1796275 (ListMap!4354 Nil!51638)) (= lambda!194582 lambda!194581))))

(assert (=> bs!1029838 (= (= lt!1796275 lt!1796248) (= lambda!194582 lambda!194577))))

(assert (=> bs!1029840 (= (= lt!1796275 (ListMap!4354 Nil!51638)) (= lambda!194582 lambda!194574))))

(assert (=> b!4634453 true))

(declare-fun bs!1029843 () Bool)

(declare-fun d!1461011 () Bool)

(assert (= bs!1029843 (and d!1461011 b!4634441)))

(declare-fun lt!1796290 () ListMap!4353)

(declare-fun lambda!194584 () Int)

(assert (=> bs!1029843 (= (= lt!1796290 (ListMap!4354 Nil!51638)) (= lambda!194584 lambda!194575))))

(declare-fun bs!1029844 () Bool)

(assert (= bs!1029844 (and d!1461011 b!4634453)))

(assert (=> bs!1029844 (= (= lt!1796290 lt!1796275) (= lambda!194584 lambda!194582))))

(declare-fun bs!1029845 () Bool)

(assert (= bs!1029845 (and d!1461011 b!4634449)))

(assert (=> bs!1029845 (= (= lt!1796290 (ListMap!4354 Nil!51638)) (= lambda!194584 lambda!194579))))

(assert (=> bs!1029843 (= (= lt!1796290 lt!1796233) (= lambda!194584 lambda!194576))))

(assert (=> bs!1029844 (= (= lt!1796290 (ListMap!4354 Nil!51638)) (= lambda!194584 lambda!194581))))

(declare-fun bs!1029846 () Bool)

(assert (= bs!1029846 (and d!1461011 d!1460951)))

(assert (=> bs!1029846 (= (= lt!1796290 lt!1796248) (= lambda!194584 lambda!194577))))

(declare-fun bs!1029847 () Bool)

(assert (= bs!1029847 (and d!1461011 b!4634437)))

(assert (=> bs!1029847 (= (= lt!1796290 (ListMap!4354 Nil!51638)) (= lambda!194584 lambda!194574))))

(assert (=> d!1461011 true))

(declare-fun e!2891074 () ListMap!4353)

(assert (=> b!4634449 (= e!2891074 (ListMap!4354 Nil!51638))))

(declare-fun lt!1796286 () Unit!114003)

(declare-fun call!323439 () Unit!114003)

(assert (=> b!4634449 (= lt!1796286 call!323439)))

(declare-fun call!323438 () Bool)

(assert (=> b!4634449 call!323438))

(declare-fun lt!1796284 () Unit!114003)

(assert (=> b!4634449 (= lt!1796284 lt!1796286)))

(declare-fun call!323440 () Bool)

(assert (=> b!4634449 call!323440))

(declare-fun lt!1796289 () Unit!114003)

(declare-fun Unit!114032 () Unit!114003)

(assert (=> b!4634449 (= lt!1796289 Unit!114032)))

(declare-fun e!2891073 () Bool)

(assert (=> d!1461011 e!2891073))

(declare-fun res!1945050 () Bool)

(assert (=> d!1461011 (=> (not res!1945050) (not e!2891073))))

(assert (=> d!1461011 (= res!1945050 (forall!10888 lt!1795850 lambda!194584))))

(assert (=> d!1461011 (= lt!1796290 e!2891074)))

(declare-fun c!793240 () Bool)

(assert (=> d!1461011 (= c!793240 ((_ is Nil!51638) lt!1795850))))

(assert (=> d!1461011 (noDuplicateKeys!1542 lt!1795850)))

(assert (=> d!1461011 (= (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1796290)))

(declare-fun bm!323433 () Bool)

(assert (=> bm!323433 (= call!323440 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) (ite c!793240 lambda!194579 lambda!194582)))))

(declare-fun bm!323434 () Bool)

(assert (=> bm!323434 (= call!323438 (forall!10888 (ite c!793240 (toList!5049 (ListMap!4354 Nil!51638)) lt!1795850) (ite c!793240 lambda!194579 lambda!194582)))))

(declare-fun b!4634450 () Bool)

(declare-fun res!1945052 () Bool)

(assert (=> b!4634450 (=> (not res!1945052) (not e!2891073))))

(assert (=> b!4634450 (= res!1945052 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194584))))

(declare-fun b!4634451 () Bool)

(assert (=> b!4634451 (= e!2891073 (invariantList!1236 (toList!5049 lt!1796290)))))

(declare-fun bm!323435 () Bool)

(assert (=> bm!323435 (= call!323439 (lemmaContainsAllItsOwnKeys!538 (ListMap!4354 Nil!51638)))))

(declare-fun b!4634452 () Bool)

(declare-fun e!2891072 () Bool)

(assert (=> b!4634452 (= e!2891072 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194582))))

(assert (=> b!4634453 (= e!2891074 lt!1796275)))

(declare-fun lt!1796285 () ListMap!4353)

(assert (=> b!4634453 (= lt!1796285 (+!1908 (ListMap!4354 Nil!51638) (h!57720 lt!1795850)))))

(assert (=> b!4634453 (= lt!1796275 (addToMapMapFromBucket!1003 (t!358826 lt!1795850) (+!1908 (ListMap!4354 Nil!51638) (h!57720 lt!1795850))))))

(declare-fun lt!1796293 () Unit!114003)

(assert (=> b!4634453 (= lt!1796293 call!323439)))

(assert (=> b!4634453 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194581)))

(declare-fun lt!1796279 () Unit!114003)

(assert (=> b!4634453 (= lt!1796279 lt!1796293)))

(assert (=> b!4634453 (forall!10888 (toList!5049 lt!1796285) lambda!194582)))

(declare-fun lt!1796277 () Unit!114003)

(declare-fun Unit!114033 () Unit!114003)

(assert (=> b!4634453 (= lt!1796277 Unit!114033)))

(assert (=> b!4634453 (forall!10888 (t!358826 lt!1795850) lambda!194582)))

(declare-fun lt!1796288 () Unit!114003)

(declare-fun Unit!114034 () Unit!114003)

(assert (=> b!4634453 (= lt!1796288 Unit!114034)))

(declare-fun lt!1796282 () Unit!114003)

(declare-fun Unit!114035 () Unit!114003)

(assert (=> b!4634453 (= lt!1796282 Unit!114035)))

(declare-fun lt!1796281 () Unit!114003)

(assert (=> b!4634453 (= lt!1796281 (forallContained!3120 (toList!5049 lt!1796285) lambda!194582 (h!57720 lt!1795850)))))

(assert (=> b!4634453 (contains!14749 lt!1796285 (_1!29601 (h!57720 lt!1795850)))))

(declare-fun lt!1796287 () Unit!114003)

(declare-fun Unit!114036 () Unit!114003)

(assert (=> b!4634453 (= lt!1796287 Unit!114036)))

(assert (=> b!4634453 (contains!14749 lt!1796275 (_1!29601 (h!57720 lt!1795850)))))

(declare-fun lt!1796291 () Unit!114003)

(declare-fun Unit!114037 () Unit!114003)

(assert (=> b!4634453 (= lt!1796291 Unit!114037)))

(assert (=> b!4634453 (forall!10888 lt!1795850 lambda!194582)))

(declare-fun lt!1796274 () Unit!114003)

(declare-fun Unit!114038 () Unit!114003)

(assert (=> b!4634453 (= lt!1796274 Unit!114038)))

(assert (=> b!4634453 (forall!10888 (toList!5049 lt!1796285) lambda!194582)))

(declare-fun lt!1796292 () Unit!114003)

(declare-fun Unit!114039 () Unit!114003)

(assert (=> b!4634453 (= lt!1796292 Unit!114039)))

(declare-fun lt!1796294 () Unit!114003)

(declare-fun Unit!114040 () Unit!114003)

(assert (=> b!4634453 (= lt!1796294 Unit!114040)))

(declare-fun lt!1796278 () Unit!114003)

(assert (=> b!4634453 (= lt!1796278 (addForallContainsKeyThenBeforeAdding!537 (ListMap!4354 Nil!51638) lt!1796275 (_1!29601 (h!57720 lt!1795850)) (_2!29601 (h!57720 lt!1795850))))))

(assert (=> b!4634453 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194582)))

(declare-fun lt!1796280 () Unit!114003)

(assert (=> b!4634453 (= lt!1796280 lt!1796278)))

(assert (=> b!4634453 call!323440))

(declare-fun lt!1796283 () Unit!114003)

(declare-fun Unit!114041 () Unit!114003)

(assert (=> b!4634453 (= lt!1796283 Unit!114041)))

(declare-fun res!1945051 () Bool)

(assert (=> b!4634453 (= res!1945051 call!323438)))

(assert (=> b!4634453 (=> (not res!1945051) (not e!2891072))))

(assert (=> b!4634453 e!2891072))

(declare-fun lt!1796276 () Unit!114003)

(declare-fun Unit!114042 () Unit!114003)

(assert (=> b!4634453 (= lt!1796276 Unit!114042)))

(assert (= (and d!1461011 c!793240) b!4634449))

(assert (= (and d!1461011 (not c!793240)) b!4634453))

(assert (= (and b!4634453 res!1945051) b!4634452))

(assert (= (or b!4634449 b!4634453) bm!323435))

(assert (= (or b!4634449 b!4634453) bm!323434))

(assert (= (or b!4634449 b!4634453) bm!323433))

(assert (= (and d!1461011 res!1945050) b!4634450))

(assert (= (and b!4634450 res!1945052) b!4634451))

(declare-fun m!5488751 () Bool)

(assert (=> d!1461011 m!5488751))

(declare-fun m!5488753 () Bool)

(assert (=> d!1461011 m!5488753))

(assert (=> bm!323435 m!5488719))

(declare-fun m!5488755 () Bool)

(assert (=> bm!323433 m!5488755))

(declare-fun m!5488757 () Bool)

(assert (=> b!4634450 m!5488757))

(declare-fun m!5488759 () Bool)

(assert (=> b!4634453 m!5488759))

(declare-fun m!5488761 () Bool)

(assert (=> b!4634453 m!5488761))

(assert (=> b!4634453 m!5488759))

(declare-fun m!5488763 () Bool)

(assert (=> b!4634453 m!5488763))

(declare-fun m!5488765 () Bool)

(assert (=> b!4634453 m!5488765))

(declare-fun m!5488767 () Bool)

(assert (=> b!4634453 m!5488767))

(declare-fun m!5488769 () Bool)

(assert (=> b!4634453 m!5488769))

(declare-fun m!5488771 () Bool)

(assert (=> b!4634453 m!5488771))

(declare-fun m!5488773 () Bool)

(assert (=> b!4634453 m!5488773))

(declare-fun m!5488775 () Bool)

(assert (=> b!4634453 m!5488775))

(declare-fun m!5488777 () Bool)

(assert (=> b!4634453 m!5488777))

(assert (=> b!4634453 m!5488773))

(declare-fun m!5488779 () Bool)

(assert (=> b!4634453 m!5488779))

(assert (=> b!4634452 m!5488767))

(declare-fun m!5488781 () Bool)

(assert (=> bm!323434 m!5488781))

(declare-fun m!5488783 () Bool)

(assert (=> b!4634451 m!5488783))

(assert (=> b!4634160 d!1461011))

(declare-fun d!1461013 () Bool)

(assert (=> d!1461013 (= (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795865 lt!1795850) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1795865)) (= (content!8893 (toList!5049 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795865 lt!1795850) (ListMap!4354 Nil!51638)))) (content!8893 (toList!5049 (+!1908 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1795865)))))))

(declare-fun bs!1029863 () Bool)

(assert (= bs!1029863 d!1461013))

(declare-fun m!5488785 () Bool)

(assert (=> bs!1029863 m!5488785))

(declare-fun m!5488787 () Bool)

(assert (=> bs!1029863 m!5488787))

(assert (=> b!4634160 d!1461013))

(declare-fun d!1461015 () Bool)

(assert (=> d!1461015 (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795865 lt!1795850) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1795865))))

(declare-fun lt!1796295 () Unit!114003)

(assert (=> d!1461015 (= lt!1796295 (choose!31620 lt!1795865 lt!1795850 (ListMap!4354 Nil!51638)))))

(assert (=> d!1461015 (noDuplicateKeys!1542 lt!1795850)))

(assert (=> d!1461015 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!108 lt!1795865 lt!1795850 (ListMap!4354 Nil!51638)) lt!1796295)))

(declare-fun bs!1029864 () Bool)

(assert (= bs!1029864 d!1461015))

(declare-fun m!5488789 () Bool)

(assert (=> bs!1029864 m!5488789))

(assert (=> bs!1029864 m!5488107))

(assert (=> bs!1029864 m!5488097))

(assert (=> bs!1029864 m!5488753))

(assert (=> bs!1029864 m!5488095))

(assert (=> bs!1029864 m!5488097))

(assert (=> bs!1029864 m!5488099))

(assert (=> bs!1029864 m!5488107))

(assert (=> bs!1029864 m!5488095))

(assert (=> b!4634160 d!1461015))

(declare-fun bs!1029865 () Bool)

(declare-fun d!1461017 () Bool)

(assert (= bs!1029865 (and d!1461017 b!4634168)))

(declare-fun lambda!194586 () Int)

(assert (=> bs!1029865 (= lambda!194586 lambda!194478)))

(declare-fun bs!1029866 () Bool)

(assert (= bs!1029866 (and d!1461017 d!1460881)))

(assert (=> bs!1029866 (= lambda!194586 lambda!194515)))

(declare-fun lt!1796296 () ListMap!4353)

(assert (=> d!1461017 (invariantList!1236 (toList!5049 lt!1796296))))

(declare-fun e!2891075 () ListMap!4353)

(assert (=> d!1461017 (= lt!1796296 e!2891075)))

(declare-fun c!793241 () Bool)

(assert (=> d!1461017 (= c!793241 ((_ is Cons!51639) (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)))))

(assert (=> d!1461017 (forall!10886 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639) lambda!194586)))

(assert (=> d!1461017 (= (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)) lt!1796296)))

(declare-fun b!4634454 () Bool)

(assert (=> b!4634454 (= e!2891075 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639))) (extractMap!1598 (t!358827 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)))))))

(declare-fun b!4634455 () Bool)

(assert (=> b!4634455 (= e!2891075 (ListMap!4354 Nil!51638))))

(assert (= (and d!1461017 c!793241) b!4634454))

(assert (= (and d!1461017 (not c!793241)) b!4634455))

(declare-fun m!5488815 () Bool)

(assert (=> d!1461017 m!5488815))

(declare-fun m!5488817 () Bool)

(assert (=> d!1461017 m!5488817))

(declare-fun m!5488823 () Bool)

(assert (=> b!4634454 m!5488823))

(assert (=> b!4634454 m!5488823))

(declare-fun m!5488825 () Bool)

(assert (=> b!4634454 m!5488825))

(assert (=> b!4634160 d!1461017))

(declare-fun bs!1029870 () Bool)

(declare-fun d!1461021 () Bool)

(assert (= bs!1029870 (and d!1461021 b!4634168)))

(declare-fun lambda!194592 () Int)

(assert (=> bs!1029870 (= lambda!194592 lambda!194478)))

(declare-fun bs!1029872 () Bool)

(assert (= bs!1029872 (and d!1461021 d!1460881)))

(assert (=> bs!1029872 (= lambda!194592 lambda!194515)))

(declare-fun bs!1029874 () Bool)

(assert (= bs!1029874 (and d!1461021 d!1461017)))

(assert (=> bs!1029874 (= lambda!194592 lambda!194586)))

(assert (=> d!1461021 (contains!14749 (extractMap!1598 (toList!5050 (ListLongMap!3640 lt!1795862))) key!4968)))

(declare-fun lt!1796302 () Unit!114003)

(declare-fun choose!31622 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> d!1461021 (= lt!1796302 (choose!31622 (ListLongMap!3640 lt!1795862) key!4968 hashF!1389))))

(assert (=> d!1461021 (forall!10886 (toList!5050 (ListLongMap!3640 lt!1795862)) lambda!194592)))

(assert (=> d!1461021 (= (lemmaListContainsThenExtractedMapContains!360 (ListLongMap!3640 lt!1795862) key!4968 hashF!1389) lt!1796302)))

(declare-fun bs!1029878 () Bool)

(assert (= bs!1029878 d!1461021))

(declare-fun m!5488827 () Bool)

(assert (=> bs!1029878 m!5488827))

(assert (=> bs!1029878 m!5488827))

(declare-fun m!5488829 () Bool)

(assert (=> bs!1029878 m!5488829))

(declare-fun m!5488831 () Bool)

(assert (=> bs!1029878 m!5488831))

(declare-fun m!5488835 () Bool)

(assert (=> bs!1029878 m!5488835))

(assert (=> b!4634160 d!1461021))

(declare-fun d!1461023 () Bool)

(assert (=> d!1461023 (= (eq!857 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795869 lt!1795852) (ListMap!4354 Nil!51638)) (+!1908 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1795869)) (= (content!8893 (toList!5049 (addToMapMapFromBucket!1003 (Cons!51638 lt!1795869 lt!1795852) (ListMap!4354 Nil!51638)))) (content!8893 (toList!5049 (+!1908 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1795869)))))))

(declare-fun bs!1029880 () Bool)

(assert (= bs!1029880 d!1461023))

(declare-fun m!5488843 () Bool)

(assert (=> bs!1029880 m!5488843))

(declare-fun m!5488845 () Bool)

(assert (=> bs!1029880 m!5488845))

(assert (=> b!4634160 d!1461023))

(declare-fun d!1461027 () Bool)

(declare-fun e!2891079 () Bool)

(assert (=> d!1461027 e!2891079))

(declare-fun res!1945060 () Bool)

(assert (=> d!1461027 (=> (not res!1945060) (not e!2891079))))

(declare-fun lt!1796315 () ListMap!4353)

(assert (=> d!1461027 (= res!1945060 (contains!14749 lt!1796315 (_1!29601 lt!1795869)))))

(declare-fun lt!1796316 () List!51762)

(assert (=> d!1461027 (= lt!1796315 (ListMap!4354 lt!1796316))))

(declare-fun lt!1796318 () Unit!114003)

(declare-fun lt!1796317 () Unit!114003)

(assert (=> d!1461027 (= lt!1796318 lt!1796317)))

(assert (=> d!1461027 (= (getValueByKey!1515 lt!1796316 (_1!29601 lt!1795869)) (Some!11690 (_2!29601 lt!1795869)))))

(declare-fun lemmaContainsTupThenGetReturnValue!880 (List!51762 K!13005 V!13251) Unit!114003)

(assert (=> d!1461027 (= lt!1796317 (lemmaContainsTupThenGetReturnValue!880 lt!1796316 (_1!29601 lt!1795869) (_2!29601 lt!1795869)))))

(declare-fun insertNoDuplicatedKeys!388 (List!51762 K!13005 V!13251) List!51762)

(assert (=> d!1461027 (= lt!1796316 (insertNoDuplicatedKeys!388 (toList!5049 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638))) (_1!29601 lt!1795869) (_2!29601 lt!1795869)))))

(assert (=> d!1461027 (= (+!1908 (addToMapMapFromBucket!1003 lt!1795852 (ListMap!4354 Nil!51638)) lt!1795869) lt!1796315)))

(declare-fun b!4634462 () Bool)

(declare-fun res!1945059 () Bool)

(assert (=> b!4634462 (=> (not res!1945059) (not e!2891079))))

(assert (=> b!4634462 (= res!1945059 (= (getValueByKey!1515 (toList!5049 lt!1796315) (_1!29601 lt!1795869)) (Some!11690 (_2!29601 lt!1795869))))))

(declare-fun b!4634463 () Bool)

(declare-fun contains!14755 (List!51762 tuple2!52614) Bool)

(assert (=> b!4634463 (= e!2891079 (contains!14755 (toList!5049 lt!1796315) lt!1795869))))

(assert (= (and d!1461027 res!1945060) b!4634462))

(assert (= (and b!4634462 res!1945059) b!4634463))

(declare-fun m!5488859 () Bool)

(assert (=> d!1461027 m!5488859))

(declare-fun m!5488861 () Bool)

(assert (=> d!1461027 m!5488861))

(declare-fun m!5488863 () Bool)

(assert (=> d!1461027 m!5488863))

(declare-fun m!5488865 () Bool)

(assert (=> d!1461027 m!5488865))

(declare-fun m!5488867 () Bool)

(assert (=> b!4634462 m!5488867))

(declare-fun m!5488869 () Bool)

(assert (=> b!4634463 m!5488869))

(assert (=> b!4634160 d!1461027))

(declare-fun bs!1029881 () Bool)

(declare-fun d!1461031 () Bool)

(assert (= bs!1029881 (and d!1461031 b!4634168)))

(declare-fun lambda!194593 () Int)

(assert (=> bs!1029881 (= lambda!194593 lambda!194478)))

(declare-fun bs!1029882 () Bool)

(assert (= bs!1029882 (and d!1461031 d!1460881)))

(assert (=> bs!1029882 (= lambda!194593 lambda!194515)))

(declare-fun bs!1029883 () Bool)

(assert (= bs!1029883 (and d!1461031 d!1461017)))

(assert (=> bs!1029883 (= lambda!194593 lambda!194586)))

(declare-fun bs!1029885 () Bool)

(assert (= bs!1029885 (and d!1461031 d!1461021)))

(assert (=> bs!1029885 (= lambda!194593 lambda!194592)))

(declare-fun lt!1796321 () ListMap!4353)

(assert (=> d!1461031 (invariantList!1236 (toList!5049 lt!1796321))))

(declare-fun e!2891080 () ListMap!4353)

(assert (=> d!1461031 (= lt!1796321 e!2891080)))

(declare-fun c!793242 () Bool)

(assert (=> d!1461031 (= c!793242 ((_ is Cons!51639) lt!1795862))))

(assert (=> d!1461031 (forall!10886 lt!1795862 lambda!194593)))

(assert (=> d!1461031 (= (extractMap!1598 lt!1795862) lt!1796321)))

(declare-fun b!4634464 () Bool)

(assert (=> b!4634464 (= e!2891080 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 lt!1795862)) (extractMap!1598 (t!358827 lt!1795862))))))

(declare-fun b!4634465 () Bool)

(assert (=> b!4634465 (= e!2891080 (ListMap!4354 Nil!51638))))

(assert (= (and d!1461031 c!793242) b!4634464))

(assert (= (and d!1461031 (not c!793242)) b!4634465))

(declare-fun m!5488873 () Bool)

(assert (=> d!1461031 m!5488873))

(declare-fun m!5488875 () Bool)

(assert (=> d!1461031 m!5488875))

(declare-fun m!5488877 () Bool)

(assert (=> b!4634464 m!5488877))

(assert (=> b!4634464 m!5488877))

(declare-fun m!5488879 () Bool)

(assert (=> b!4634464 m!5488879))

(assert (=> b!4634160 d!1461031))

(declare-fun d!1461035 () Bool)

(declare-fun e!2891087 () Bool)

(assert (=> d!1461035 e!2891087))

(declare-fun res!1945065 () Bool)

(assert (=> d!1461035 (=> (not res!1945065) (not e!2891087))))

(declare-fun lt!1796331 () ListMap!4353)

(assert (=> d!1461035 (= res!1945065 (contains!14749 lt!1796331 (_1!29601 lt!1795865)))))

(declare-fun lt!1796332 () List!51762)

(assert (=> d!1461035 (= lt!1796331 (ListMap!4354 lt!1796332))))

(declare-fun lt!1796334 () Unit!114003)

(declare-fun lt!1796333 () Unit!114003)

(assert (=> d!1461035 (= lt!1796334 lt!1796333)))

(assert (=> d!1461035 (= (getValueByKey!1515 lt!1796332 (_1!29601 lt!1795865)) (Some!11690 (_2!29601 lt!1795865)))))

(assert (=> d!1461035 (= lt!1796333 (lemmaContainsTupThenGetReturnValue!880 lt!1796332 (_1!29601 lt!1795865) (_2!29601 lt!1795865)))))

(assert (=> d!1461035 (= lt!1796332 (insertNoDuplicatedKeys!388 (toList!5049 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638))) (_1!29601 lt!1795865) (_2!29601 lt!1795865)))))

(assert (=> d!1461035 (= (+!1908 (addToMapMapFromBucket!1003 lt!1795850 (ListMap!4354 Nil!51638)) lt!1795865) lt!1796331)))

(declare-fun b!4634475 () Bool)

(declare-fun res!1945064 () Bool)

(assert (=> b!4634475 (=> (not res!1945064) (not e!2891087))))

(assert (=> b!4634475 (= res!1945064 (= (getValueByKey!1515 (toList!5049 lt!1796331) (_1!29601 lt!1795865)) (Some!11690 (_2!29601 lt!1795865))))))

(declare-fun b!4634476 () Bool)

(assert (=> b!4634476 (= e!2891087 (contains!14755 (toList!5049 lt!1796331) lt!1795865))))

(assert (= (and d!1461035 res!1945065) b!4634475))

(assert (= (and b!4634475 res!1945064) b!4634476))

(declare-fun m!5488881 () Bool)

(assert (=> d!1461035 m!5488881))

(declare-fun m!5488883 () Bool)

(assert (=> d!1461035 m!5488883))

(declare-fun m!5488885 () Bool)

(assert (=> d!1461035 m!5488885))

(declare-fun m!5488887 () Bool)

(assert (=> d!1461035 m!5488887))

(declare-fun m!5488889 () Bool)

(assert (=> b!4634475 m!5488889))

(declare-fun m!5488891 () Bool)

(assert (=> b!4634476 m!5488891))

(assert (=> b!4634160 d!1461035))

(declare-fun bm!323437 () Bool)

(declare-fun call!323442 () Bool)

(declare-fun e!2891092 () List!51765)

(assert (=> bm!323437 (= call!323442 (contains!14753 e!2891092 key!4968))))

(declare-fun c!793248 () Bool)

(declare-fun c!793247 () Bool)

(assert (=> bm!323437 (= c!793248 c!793247)))

(declare-fun b!4634477 () Bool)

(assert (=> b!4634477 (= e!2891092 (keys!18222 lt!1795857))))

(declare-fun b!4634478 () Bool)

(declare-fun e!2891093 () Unit!114003)

(declare-fun e!2891090 () Unit!114003)

(assert (=> b!4634478 (= e!2891093 e!2891090)))

(declare-fun c!793246 () Bool)

(assert (=> b!4634478 (= c!793246 call!323442)))

(declare-fun b!4634479 () Bool)

(declare-fun lt!1796341 () Unit!114003)

(assert (=> b!4634479 (= e!2891093 lt!1796341)))

(declare-fun lt!1796340 () Unit!114003)

(assert (=> b!4634479 (= lt!1796340 (lemmaContainsKeyImpliesGetValueByKeyDefined!1416 (toList!5049 lt!1795857) key!4968))))

(assert (=> b!4634479 (isDefined!8955 (getValueByKey!1515 (toList!5049 lt!1795857) key!4968))))

(declare-fun lt!1796335 () Unit!114003)

(assert (=> b!4634479 (= lt!1796335 lt!1796340)))

(assert (=> b!4634479 (= lt!1796341 (lemmaInListThenGetKeysListContains!681 (toList!5049 lt!1795857) key!4968))))

(assert (=> b!4634479 call!323442))

(declare-fun b!4634481 () Bool)

(assert (=> b!4634481 (= e!2891092 (getKeysList!686 (toList!5049 lt!1795857)))))

(declare-fun b!4634482 () Bool)

(declare-fun e!2891091 () Bool)

(assert (=> b!4634482 (= e!2891091 (not (contains!14753 (keys!18222 lt!1795857) key!4968)))))

(declare-fun b!4634483 () Bool)

(declare-fun e!2891088 () Bool)

(declare-fun e!2891089 () Bool)

(assert (=> b!4634483 (= e!2891088 e!2891089)))

(declare-fun res!1945067 () Bool)

(assert (=> b!4634483 (=> (not res!1945067) (not e!2891089))))

(assert (=> b!4634483 (= res!1945067 (isDefined!8955 (getValueByKey!1515 (toList!5049 lt!1795857) key!4968)))))

(declare-fun b!4634484 () Bool)

(assert (=> b!4634484 false))

(declare-fun lt!1796339 () Unit!114003)

(declare-fun lt!1796336 () Unit!114003)

(assert (=> b!4634484 (= lt!1796339 lt!1796336)))

(assert (=> b!4634484 (containsKey!2548 (toList!5049 lt!1795857) key!4968)))

(assert (=> b!4634484 (= lt!1796336 (lemmaInGetKeysListThenContainsKey!685 (toList!5049 lt!1795857) key!4968))))

(declare-fun Unit!114054 () Unit!114003)

(assert (=> b!4634484 (= e!2891090 Unit!114054)))

(declare-fun b!4634485 () Bool)

(declare-fun Unit!114055 () Unit!114003)

(assert (=> b!4634485 (= e!2891090 Unit!114055)))

(declare-fun d!1461037 () Bool)

(assert (=> d!1461037 e!2891088))

(declare-fun res!1945066 () Bool)

(assert (=> d!1461037 (=> res!1945066 e!2891088)))

(assert (=> d!1461037 (= res!1945066 e!2891091)))

(declare-fun res!1945068 () Bool)

(assert (=> d!1461037 (=> (not res!1945068) (not e!2891091))))

(declare-fun lt!1796338 () Bool)

(assert (=> d!1461037 (= res!1945068 (not lt!1796338))))

(declare-fun lt!1796337 () Bool)

(assert (=> d!1461037 (= lt!1796338 lt!1796337)))

(declare-fun lt!1796342 () Unit!114003)

(assert (=> d!1461037 (= lt!1796342 e!2891093)))

(assert (=> d!1461037 (= c!793247 lt!1796337)))

(assert (=> d!1461037 (= lt!1796337 (containsKey!2548 (toList!5049 lt!1795857) key!4968))))

(assert (=> d!1461037 (= (contains!14749 lt!1795857 key!4968) lt!1796338)))

(declare-fun b!4634480 () Bool)

(assert (=> b!4634480 (= e!2891089 (contains!14753 (keys!18222 lt!1795857) key!4968))))

(assert (= (and d!1461037 c!793247) b!4634479))

(assert (= (and d!1461037 (not c!793247)) b!4634478))

(assert (= (and b!4634478 c!793246) b!4634484))

(assert (= (and b!4634478 (not c!793246)) b!4634485))

(assert (= (or b!4634479 b!4634478) bm!323437))

(assert (= (and bm!323437 c!793248) b!4634481))

(assert (= (and bm!323437 (not c!793248)) b!4634477))

(assert (= (and d!1461037 res!1945068) b!4634482))

(assert (= (and d!1461037 (not res!1945066)) b!4634483))

(assert (= (and b!4634483 res!1945067) b!4634480))

(declare-fun m!5488911 () Bool)

(assert (=> b!4634483 m!5488911))

(assert (=> b!4634483 m!5488911))

(declare-fun m!5488913 () Bool)

(assert (=> b!4634483 m!5488913))

(declare-fun m!5488915 () Bool)

(assert (=> b!4634481 m!5488915))

(declare-fun m!5488917 () Bool)

(assert (=> b!4634479 m!5488917))

(assert (=> b!4634479 m!5488911))

(assert (=> b!4634479 m!5488911))

(assert (=> b!4634479 m!5488913))

(declare-fun m!5488919 () Bool)

(assert (=> b!4634479 m!5488919))

(declare-fun m!5488921 () Bool)

(assert (=> d!1461037 m!5488921))

(assert (=> b!4634484 m!5488921))

(declare-fun m!5488923 () Bool)

(assert (=> b!4634484 m!5488923))

(declare-fun m!5488925 () Bool)

(assert (=> bm!323437 m!5488925))

(declare-fun m!5488927 () Bool)

(assert (=> b!4634477 m!5488927))

(assert (=> b!4634482 m!5488927))

(assert (=> b!4634482 m!5488927))

(declare-fun m!5488931 () Bool)

(assert (=> b!4634482 m!5488931))

(assert (=> b!4634480 m!5488927))

(assert (=> b!4634480 m!5488927))

(assert (=> b!4634480 m!5488931))

(assert (=> b!4634160 d!1461037))

(declare-fun bs!1029894 () Bool)

(declare-fun b!4634488 () Bool)

(assert (= bs!1029894 (and b!4634488 b!4634441)))

(declare-fun lambda!194595 () Int)

(assert (=> bs!1029894 (= lambda!194595 lambda!194575)))

(declare-fun bs!1029896 () Bool)

(assert (= bs!1029896 (and b!4634488 b!4634453)))

(assert (=> bs!1029896 (= (= (ListMap!4354 Nil!51638) lt!1796275) (= lambda!194595 lambda!194582))))

(declare-fun bs!1029898 () Bool)

(assert (= bs!1029898 (and b!4634488 b!4634449)))

(assert (=> bs!1029898 (= lambda!194595 lambda!194579)))

(assert (=> bs!1029894 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194595 lambda!194576))))

(assert (=> bs!1029896 (= lambda!194595 lambda!194581)))

(declare-fun bs!1029899 () Bool)

(assert (= bs!1029899 (and b!4634488 d!1461011)))

(assert (=> bs!1029899 (= (= (ListMap!4354 Nil!51638) lt!1796290) (= lambda!194595 lambda!194584))))

(declare-fun bs!1029900 () Bool)

(assert (= bs!1029900 (and b!4634488 d!1460951)))

(assert (=> bs!1029900 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194595 lambda!194577))))

(declare-fun bs!1029901 () Bool)

(assert (= bs!1029901 (and b!4634488 b!4634437)))

(assert (=> bs!1029901 (= lambda!194595 lambda!194574)))

(assert (=> b!4634488 true))

(declare-fun bs!1029903 () Bool)

(declare-fun b!4634492 () Bool)

(assert (= bs!1029903 (and b!4634492 b!4634441)))

(declare-fun lambda!194597 () Int)

(assert (=> bs!1029903 (= lambda!194597 lambda!194575)))

(declare-fun bs!1029905 () Bool)

(assert (= bs!1029905 (and b!4634492 b!4634453)))

(assert (=> bs!1029905 (= (= (ListMap!4354 Nil!51638) lt!1796275) (= lambda!194597 lambda!194582))))

(declare-fun bs!1029907 () Bool)

(assert (= bs!1029907 (and b!4634492 b!4634449)))

(assert (=> bs!1029907 (= lambda!194597 lambda!194579)))

(declare-fun bs!1029908 () Bool)

(assert (= bs!1029908 (and b!4634492 b!4634488)))

(assert (=> bs!1029908 (= lambda!194597 lambda!194595)))

(assert (=> bs!1029903 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194597 lambda!194576))))

(assert (=> bs!1029905 (= lambda!194597 lambda!194581)))

(declare-fun bs!1029912 () Bool)

(assert (= bs!1029912 (and b!4634492 d!1461011)))

(assert (=> bs!1029912 (= (= (ListMap!4354 Nil!51638) lt!1796290) (= lambda!194597 lambda!194584))))

(declare-fun bs!1029914 () Bool)

(assert (= bs!1029914 (and b!4634492 d!1460951)))

(assert (=> bs!1029914 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194597 lambda!194577))))

(declare-fun bs!1029916 () Bool)

(assert (= bs!1029916 (and b!4634492 b!4634437)))

(assert (=> bs!1029916 (= lambda!194597 lambda!194574)))

(assert (=> b!4634492 true))

(declare-fun lt!1796346 () ListMap!4353)

(declare-fun lambda!194598 () Int)

(assert (=> bs!1029903 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194575))))

(assert (=> bs!1029905 (= (= lt!1796346 lt!1796275) (= lambda!194598 lambda!194582))))

(assert (=> bs!1029907 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194579))))

(assert (=> b!4634492 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194597))))

(assert (=> bs!1029908 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194595))))

(assert (=> bs!1029903 (= (= lt!1796346 lt!1796233) (= lambda!194598 lambda!194576))))

(assert (=> bs!1029905 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194581))))

(assert (=> bs!1029912 (= (= lt!1796346 lt!1796290) (= lambda!194598 lambda!194584))))

(assert (=> bs!1029914 (= (= lt!1796346 lt!1796248) (= lambda!194598 lambda!194577))))

(assert (=> bs!1029916 (= (= lt!1796346 (ListMap!4354 Nil!51638)) (= lambda!194598 lambda!194574))))

(assert (=> b!4634492 true))

(declare-fun bs!1029926 () Bool)

(declare-fun d!1461043 () Bool)

(assert (= bs!1029926 (and d!1461043 b!4634492)))

(declare-fun lt!1796361 () ListMap!4353)

(declare-fun lambda!194599 () Int)

(assert (=> bs!1029926 (= (= lt!1796361 lt!1796346) (= lambda!194599 lambda!194598))))

(declare-fun bs!1029927 () Bool)

(assert (= bs!1029927 (and d!1461043 b!4634441)))

(assert (=> bs!1029927 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194575))))

(declare-fun bs!1029929 () Bool)

(assert (= bs!1029929 (and d!1461043 b!4634453)))

(assert (=> bs!1029929 (= (= lt!1796361 lt!1796275) (= lambda!194599 lambda!194582))))

(declare-fun bs!1029931 () Bool)

(assert (= bs!1029931 (and d!1461043 b!4634449)))

(assert (=> bs!1029931 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194579))))

(assert (=> bs!1029926 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194597))))

(declare-fun bs!1029932 () Bool)

(assert (= bs!1029932 (and d!1461043 b!4634488)))

(assert (=> bs!1029932 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194595))))

(assert (=> bs!1029927 (= (= lt!1796361 lt!1796233) (= lambda!194599 lambda!194576))))

(assert (=> bs!1029929 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194581))))

(declare-fun bs!1029933 () Bool)

(assert (= bs!1029933 (and d!1461043 d!1461011)))

(assert (=> bs!1029933 (= (= lt!1796361 lt!1796290) (= lambda!194599 lambda!194584))))

(declare-fun bs!1029934 () Bool)

(assert (= bs!1029934 (and d!1461043 d!1460951)))

(assert (=> bs!1029934 (= (= lt!1796361 lt!1796248) (= lambda!194599 lambda!194577))))

(declare-fun bs!1029935 () Bool)

(assert (= bs!1029935 (and d!1461043 b!4634437)))

(assert (=> bs!1029935 (= (= lt!1796361 (ListMap!4354 Nil!51638)) (= lambda!194599 lambda!194574))))

(assert (=> d!1461043 true))

(declare-fun e!2891097 () ListMap!4353)

(assert (=> b!4634488 (= e!2891097 (ListMap!4354 Nil!51638))))

(declare-fun lt!1796357 () Unit!114003)

(declare-fun call!323444 () Unit!114003)

(assert (=> b!4634488 (= lt!1796357 call!323444)))

(declare-fun call!323443 () Bool)

(assert (=> b!4634488 call!323443))

(declare-fun lt!1796355 () Unit!114003)

(assert (=> b!4634488 (= lt!1796355 lt!1796357)))

(declare-fun call!323445 () Bool)

(assert (=> b!4634488 call!323445))

(declare-fun lt!1796360 () Unit!114003)

(declare-fun Unit!114067 () Unit!114003)

(assert (=> b!4634488 (= lt!1796360 Unit!114067)))

(declare-fun e!2891096 () Bool)

(assert (=> d!1461043 e!2891096))

(declare-fun res!1945069 () Bool)

(assert (=> d!1461043 (=> (not res!1945069) (not e!2891096))))

(assert (=> d!1461043 (= res!1945069 (forall!10888 (Cons!51638 lt!1795865 lt!1795850) lambda!194599))))

(assert (=> d!1461043 (= lt!1796361 e!2891097)))

(declare-fun c!793250 () Bool)

(assert (=> d!1461043 (= c!793250 ((_ is Nil!51638) (Cons!51638 lt!1795865 lt!1795850)))))

(assert (=> d!1461043 (noDuplicateKeys!1542 (Cons!51638 lt!1795865 lt!1795850))))

(assert (=> d!1461043 (= (addToMapMapFromBucket!1003 (Cons!51638 lt!1795865 lt!1795850) (ListMap!4354 Nil!51638)) lt!1796361)))

(declare-fun bm!323438 () Bool)

(assert (=> bm!323438 (= call!323445 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) (ite c!793250 lambda!194595 lambda!194598)))))

(declare-fun bm!323439 () Bool)

(assert (=> bm!323439 (= call!323443 (forall!10888 (ite c!793250 (toList!5049 (ListMap!4354 Nil!51638)) (Cons!51638 lt!1795865 lt!1795850)) (ite c!793250 lambda!194595 lambda!194598)))))

(declare-fun b!4634489 () Bool)

(declare-fun res!1945071 () Bool)

(assert (=> b!4634489 (=> (not res!1945071) (not e!2891096))))

(assert (=> b!4634489 (= res!1945071 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194599))))

(declare-fun b!4634490 () Bool)

(assert (=> b!4634490 (= e!2891096 (invariantList!1236 (toList!5049 lt!1796361)))))

(declare-fun bm!323440 () Bool)

(assert (=> bm!323440 (= call!323444 (lemmaContainsAllItsOwnKeys!538 (ListMap!4354 Nil!51638)))))

(declare-fun b!4634491 () Bool)

(declare-fun e!2891095 () Bool)

(assert (=> b!4634491 (= e!2891095 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194598))))

(assert (=> b!4634492 (= e!2891097 lt!1796346)))

(declare-fun lt!1796356 () ListMap!4353)

(assert (=> b!4634492 (= lt!1796356 (+!1908 (ListMap!4354 Nil!51638) (h!57720 (Cons!51638 lt!1795865 lt!1795850))))))

(assert (=> b!4634492 (= lt!1796346 (addToMapMapFromBucket!1003 (t!358826 (Cons!51638 lt!1795865 lt!1795850)) (+!1908 (ListMap!4354 Nil!51638) (h!57720 (Cons!51638 lt!1795865 lt!1795850)))))))

(declare-fun lt!1796364 () Unit!114003)

(assert (=> b!4634492 (= lt!1796364 call!323444)))

(assert (=> b!4634492 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194597)))

(declare-fun lt!1796350 () Unit!114003)

(assert (=> b!4634492 (= lt!1796350 lt!1796364)))

(assert (=> b!4634492 (forall!10888 (toList!5049 lt!1796356) lambda!194598)))

(declare-fun lt!1796348 () Unit!114003)

(declare-fun Unit!114068 () Unit!114003)

(assert (=> b!4634492 (= lt!1796348 Unit!114068)))

(assert (=> b!4634492 (forall!10888 (t!358826 (Cons!51638 lt!1795865 lt!1795850)) lambda!194598)))

(declare-fun lt!1796359 () Unit!114003)

(declare-fun Unit!114069 () Unit!114003)

(assert (=> b!4634492 (= lt!1796359 Unit!114069)))

(declare-fun lt!1796353 () Unit!114003)

(declare-fun Unit!114070 () Unit!114003)

(assert (=> b!4634492 (= lt!1796353 Unit!114070)))

(declare-fun lt!1796352 () Unit!114003)

(assert (=> b!4634492 (= lt!1796352 (forallContained!3120 (toList!5049 lt!1796356) lambda!194598 (h!57720 (Cons!51638 lt!1795865 lt!1795850))))))

(assert (=> b!4634492 (contains!14749 lt!1796356 (_1!29601 (h!57720 (Cons!51638 lt!1795865 lt!1795850))))))

(declare-fun lt!1796358 () Unit!114003)

(declare-fun Unit!114071 () Unit!114003)

(assert (=> b!4634492 (= lt!1796358 Unit!114071)))

(assert (=> b!4634492 (contains!14749 lt!1796346 (_1!29601 (h!57720 (Cons!51638 lt!1795865 lt!1795850))))))

(declare-fun lt!1796362 () Unit!114003)

(declare-fun Unit!114072 () Unit!114003)

(assert (=> b!4634492 (= lt!1796362 Unit!114072)))

(assert (=> b!4634492 (forall!10888 (Cons!51638 lt!1795865 lt!1795850) lambda!194598)))

(declare-fun lt!1796345 () Unit!114003)

(declare-fun Unit!114073 () Unit!114003)

(assert (=> b!4634492 (= lt!1796345 Unit!114073)))

(assert (=> b!4634492 (forall!10888 (toList!5049 lt!1796356) lambda!194598)))

(declare-fun lt!1796363 () Unit!114003)

(declare-fun Unit!114074 () Unit!114003)

(assert (=> b!4634492 (= lt!1796363 Unit!114074)))

(declare-fun lt!1796365 () Unit!114003)

(declare-fun Unit!114075 () Unit!114003)

(assert (=> b!4634492 (= lt!1796365 Unit!114075)))

(declare-fun lt!1796349 () Unit!114003)

(assert (=> b!4634492 (= lt!1796349 (addForallContainsKeyThenBeforeAdding!537 (ListMap!4354 Nil!51638) lt!1796346 (_1!29601 (h!57720 (Cons!51638 lt!1795865 lt!1795850))) (_2!29601 (h!57720 (Cons!51638 lt!1795865 lt!1795850)))))))

(assert (=> b!4634492 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194598)))

(declare-fun lt!1796351 () Unit!114003)

(assert (=> b!4634492 (= lt!1796351 lt!1796349)))

(assert (=> b!4634492 call!323445))

(declare-fun lt!1796354 () Unit!114003)

(declare-fun Unit!114076 () Unit!114003)

(assert (=> b!4634492 (= lt!1796354 Unit!114076)))

(declare-fun res!1945070 () Bool)

(assert (=> b!4634492 (= res!1945070 call!323443)))

(assert (=> b!4634492 (=> (not res!1945070) (not e!2891095))))

(assert (=> b!4634492 e!2891095))

(declare-fun lt!1796347 () Unit!114003)

(declare-fun Unit!114077 () Unit!114003)

(assert (=> b!4634492 (= lt!1796347 Unit!114077)))

(assert (= (and d!1461043 c!793250) b!4634488))

(assert (= (and d!1461043 (not c!793250)) b!4634492))

(assert (= (and b!4634492 res!1945070) b!4634491))

(assert (= (or b!4634488 b!4634492) bm!323440))

(assert (= (or b!4634488 b!4634492) bm!323439))

(assert (= (or b!4634488 b!4634492) bm!323438))

(assert (= (and d!1461043 res!1945069) b!4634489))

(assert (= (and b!4634489 res!1945071) b!4634490))

(declare-fun m!5488947 () Bool)

(assert (=> d!1461043 m!5488947))

(declare-fun m!5488949 () Bool)

(assert (=> d!1461043 m!5488949))

(assert (=> bm!323440 m!5488719))

(declare-fun m!5488951 () Bool)

(assert (=> bm!323438 m!5488951))

(declare-fun m!5488953 () Bool)

(assert (=> b!4634489 m!5488953))

(declare-fun m!5488955 () Bool)

(assert (=> b!4634492 m!5488955))

(declare-fun m!5488957 () Bool)

(assert (=> b!4634492 m!5488957))

(assert (=> b!4634492 m!5488955))

(declare-fun m!5488959 () Bool)

(assert (=> b!4634492 m!5488959))

(declare-fun m!5488961 () Bool)

(assert (=> b!4634492 m!5488961))

(declare-fun m!5488963 () Bool)

(assert (=> b!4634492 m!5488963))

(declare-fun m!5488965 () Bool)

(assert (=> b!4634492 m!5488965))

(declare-fun m!5488967 () Bool)

(assert (=> b!4634492 m!5488967))

(declare-fun m!5488969 () Bool)

(assert (=> b!4634492 m!5488969))

(declare-fun m!5488971 () Bool)

(assert (=> b!4634492 m!5488971))

(declare-fun m!5488973 () Bool)

(assert (=> b!4634492 m!5488973))

(assert (=> b!4634492 m!5488969))

(declare-fun m!5488975 () Bool)

(assert (=> b!4634492 m!5488975))

(assert (=> b!4634491 m!5488963))

(declare-fun m!5488977 () Bool)

(assert (=> bm!323439 m!5488977))

(declare-fun m!5488979 () Bool)

(assert (=> b!4634490 m!5488979))

(assert (=> b!4634160 d!1461043))

(declare-fun bs!1029936 () Bool)

(declare-fun b!4634499 () Bool)

(assert (= bs!1029936 (and b!4634499 b!4634492)))

(declare-fun lambda!194600 () Int)

(assert (=> bs!1029936 (= (= (ListMap!4354 Nil!51638) lt!1796346) (= lambda!194600 lambda!194598))))

(declare-fun bs!1029937 () Bool)

(assert (= bs!1029937 (and b!4634499 d!1461043)))

(assert (=> bs!1029937 (= (= (ListMap!4354 Nil!51638) lt!1796361) (= lambda!194600 lambda!194599))))

(declare-fun bs!1029938 () Bool)

(assert (= bs!1029938 (and b!4634499 b!4634441)))

(assert (=> bs!1029938 (= lambda!194600 lambda!194575)))

(declare-fun bs!1029939 () Bool)

(assert (= bs!1029939 (and b!4634499 b!4634453)))

(assert (=> bs!1029939 (= (= (ListMap!4354 Nil!51638) lt!1796275) (= lambda!194600 lambda!194582))))

(declare-fun bs!1029940 () Bool)

(assert (= bs!1029940 (and b!4634499 b!4634449)))

(assert (=> bs!1029940 (= lambda!194600 lambda!194579)))

(assert (=> bs!1029936 (= lambda!194600 lambda!194597)))

(declare-fun bs!1029941 () Bool)

(assert (= bs!1029941 (and b!4634499 b!4634488)))

(assert (=> bs!1029941 (= lambda!194600 lambda!194595)))

(assert (=> bs!1029938 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194600 lambda!194576))))

(assert (=> bs!1029939 (= lambda!194600 lambda!194581)))

(declare-fun bs!1029942 () Bool)

(assert (= bs!1029942 (and b!4634499 d!1461011)))

(assert (=> bs!1029942 (= (= (ListMap!4354 Nil!51638) lt!1796290) (= lambda!194600 lambda!194584))))

(declare-fun bs!1029943 () Bool)

(assert (= bs!1029943 (and b!4634499 d!1460951)))

(assert (=> bs!1029943 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194600 lambda!194577))))

(declare-fun bs!1029944 () Bool)

(assert (= bs!1029944 (and b!4634499 b!4634437)))

(assert (=> bs!1029944 (= lambda!194600 lambda!194574)))

(assert (=> b!4634499 true))

(declare-fun bs!1029945 () Bool)

(declare-fun b!4634503 () Bool)

(assert (= bs!1029945 (and b!4634503 b!4634492)))

(declare-fun lambda!194601 () Int)

(assert (=> bs!1029945 (= (= (ListMap!4354 Nil!51638) lt!1796346) (= lambda!194601 lambda!194598))))

(declare-fun bs!1029946 () Bool)

(assert (= bs!1029946 (and b!4634503 d!1461043)))

(assert (=> bs!1029946 (= (= (ListMap!4354 Nil!51638) lt!1796361) (= lambda!194601 lambda!194599))))

(declare-fun bs!1029947 () Bool)

(assert (= bs!1029947 (and b!4634503 b!4634499)))

(assert (=> bs!1029947 (= lambda!194601 lambda!194600)))

(declare-fun bs!1029948 () Bool)

(assert (= bs!1029948 (and b!4634503 b!4634441)))

(assert (=> bs!1029948 (= lambda!194601 lambda!194575)))

(declare-fun bs!1029949 () Bool)

(assert (= bs!1029949 (and b!4634503 b!4634453)))

(assert (=> bs!1029949 (= (= (ListMap!4354 Nil!51638) lt!1796275) (= lambda!194601 lambda!194582))))

(declare-fun bs!1029950 () Bool)

(assert (= bs!1029950 (and b!4634503 b!4634449)))

(assert (=> bs!1029950 (= lambda!194601 lambda!194579)))

(assert (=> bs!1029945 (= lambda!194601 lambda!194597)))

(declare-fun bs!1029951 () Bool)

(assert (= bs!1029951 (and b!4634503 b!4634488)))

(assert (=> bs!1029951 (= lambda!194601 lambda!194595)))

(assert (=> bs!1029948 (= (= (ListMap!4354 Nil!51638) lt!1796233) (= lambda!194601 lambda!194576))))

(assert (=> bs!1029949 (= lambda!194601 lambda!194581)))

(declare-fun bs!1029952 () Bool)

(assert (= bs!1029952 (and b!4634503 d!1461011)))

(assert (=> bs!1029952 (= (= (ListMap!4354 Nil!51638) lt!1796290) (= lambda!194601 lambda!194584))))

(declare-fun bs!1029953 () Bool)

(assert (= bs!1029953 (and b!4634503 d!1460951)))

(assert (=> bs!1029953 (= (= (ListMap!4354 Nil!51638) lt!1796248) (= lambda!194601 lambda!194577))))

(declare-fun bs!1029954 () Bool)

(assert (= bs!1029954 (and b!4634503 b!4634437)))

(assert (=> bs!1029954 (= lambda!194601 lambda!194574)))

(assert (=> b!4634503 true))

(declare-fun lambda!194602 () Int)

(declare-fun lt!1796367 () ListMap!4353)

(assert (=> bs!1029945 (= (= lt!1796367 lt!1796346) (= lambda!194602 lambda!194598))))

(assert (=> bs!1029946 (= (= lt!1796367 lt!1796361) (= lambda!194602 lambda!194599))))

(assert (=> b!4634503 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194601))))

(assert (=> bs!1029947 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194600))))

(assert (=> bs!1029948 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194575))))

(assert (=> bs!1029949 (= (= lt!1796367 lt!1796275) (= lambda!194602 lambda!194582))))

(assert (=> bs!1029950 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194579))))

(assert (=> bs!1029945 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194597))))

(assert (=> bs!1029951 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194595))))

(assert (=> bs!1029948 (= (= lt!1796367 lt!1796233) (= lambda!194602 lambda!194576))))

(assert (=> bs!1029949 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194581))))

(assert (=> bs!1029952 (= (= lt!1796367 lt!1796290) (= lambda!194602 lambda!194584))))

(assert (=> bs!1029953 (= (= lt!1796367 lt!1796248) (= lambda!194602 lambda!194577))))

(assert (=> bs!1029954 (= (= lt!1796367 (ListMap!4354 Nil!51638)) (= lambda!194602 lambda!194574))))

(assert (=> b!4634503 true))

(declare-fun bs!1029955 () Bool)

(declare-fun d!1461051 () Bool)

(assert (= bs!1029955 (and d!1461051 b!4634492)))

(declare-fun lambda!194603 () Int)

(declare-fun lt!1796382 () ListMap!4353)

(assert (=> bs!1029955 (= (= lt!1796382 lt!1796346) (= lambda!194603 lambda!194598))))

(declare-fun bs!1029956 () Bool)

(assert (= bs!1029956 (and d!1461051 d!1461043)))

(assert (=> bs!1029956 (= (= lt!1796382 lt!1796361) (= lambda!194603 lambda!194599))))

(declare-fun bs!1029957 () Bool)

(assert (= bs!1029957 (and d!1461051 b!4634503)))

(assert (=> bs!1029957 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194601))))

(declare-fun bs!1029958 () Bool)

(assert (= bs!1029958 (and d!1461051 b!4634499)))

(assert (=> bs!1029958 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194600))))

(declare-fun bs!1029959 () Bool)

(assert (= bs!1029959 (and d!1461051 b!4634441)))

(assert (=> bs!1029959 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194575))))

(declare-fun bs!1029960 () Bool)

(assert (= bs!1029960 (and d!1461051 b!4634453)))

(assert (=> bs!1029960 (= (= lt!1796382 lt!1796275) (= lambda!194603 lambda!194582))))

(declare-fun bs!1029961 () Bool)

(assert (= bs!1029961 (and d!1461051 b!4634449)))

(assert (=> bs!1029961 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194579))))

(assert (=> bs!1029955 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194597))))

(declare-fun bs!1029962 () Bool)

(assert (= bs!1029962 (and d!1461051 b!4634488)))

(assert (=> bs!1029962 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194595))))

(assert (=> bs!1029957 (= (= lt!1796382 lt!1796367) (= lambda!194603 lambda!194602))))

(assert (=> bs!1029959 (= (= lt!1796382 lt!1796233) (= lambda!194603 lambda!194576))))

(assert (=> bs!1029960 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194581))))

(declare-fun bs!1029963 () Bool)

(assert (= bs!1029963 (and d!1461051 d!1461011)))

(assert (=> bs!1029963 (= (= lt!1796382 lt!1796290) (= lambda!194603 lambda!194584))))

(declare-fun bs!1029964 () Bool)

(assert (= bs!1029964 (and d!1461051 d!1460951)))

(assert (=> bs!1029964 (= (= lt!1796382 lt!1796248) (= lambda!194603 lambda!194577))))

(declare-fun bs!1029965 () Bool)

(assert (= bs!1029965 (and d!1461051 b!4634437)))

(assert (=> bs!1029965 (= (= lt!1796382 (ListMap!4354 Nil!51638)) (= lambda!194603 lambda!194574))))

(assert (=> d!1461051 true))

(declare-fun e!2891104 () ListMap!4353)

(assert (=> b!4634499 (= e!2891104 (ListMap!4354 Nil!51638))))

(declare-fun lt!1796378 () Unit!114003)

(declare-fun call!323447 () Unit!114003)

(assert (=> b!4634499 (= lt!1796378 call!323447)))

(declare-fun call!323446 () Bool)

(assert (=> b!4634499 call!323446))

(declare-fun lt!1796376 () Unit!114003)

(assert (=> b!4634499 (= lt!1796376 lt!1796378)))

(declare-fun call!323448 () Bool)

(assert (=> b!4634499 call!323448))

(declare-fun lt!1796381 () Unit!114003)

(declare-fun Unit!114089 () Unit!114003)

(assert (=> b!4634499 (= lt!1796381 Unit!114089)))

(declare-fun e!2891103 () Bool)

(assert (=> d!1461051 e!2891103))

(declare-fun res!1945072 () Bool)

(assert (=> d!1461051 (=> (not res!1945072) (not e!2891103))))

(assert (=> d!1461051 (= res!1945072 (forall!10888 (Cons!51638 lt!1795869 lt!1795852) lambda!194603))))

(assert (=> d!1461051 (= lt!1796382 e!2891104)))

(declare-fun c!793251 () Bool)

(assert (=> d!1461051 (= c!793251 ((_ is Nil!51638) (Cons!51638 lt!1795869 lt!1795852)))))

(assert (=> d!1461051 (noDuplicateKeys!1542 (Cons!51638 lt!1795869 lt!1795852))))

(assert (=> d!1461051 (= (addToMapMapFromBucket!1003 (Cons!51638 lt!1795869 lt!1795852) (ListMap!4354 Nil!51638)) lt!1796382)))

(declare-fun bm!323441 () Bool)

(assert (=> bm!323441 (= call!323448 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) (ite c!793251 lambda!194600 lambda!194602)))))

(declare-fun bm!323442 () Bool)

(assert (=> bm!323442 (= call!323446 (forall!10888 (ite c!793251 (toList!5049 (ListMap!4354 Nil!51638)) (Cons!51638 lt!1795869 lt!1795852)) (ite c!793251 lambda!194600 lambda!194602)))))

(declare-fun b!4634500 () Bool)

(declare-fun res!1945074 () Bool)

(assert (=> b!4634500 (=> (not res!1945074) (not e!2891103))))

(assert (=> b!4634500 (= res!1945074 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194603))))

(declare-fun b!4634501 () Bool)

(assert (=> b!4634501 (= e!2891103 (invariantList!1236 (toList!5049 lt!1796382)))))

(declare-fun bm!323443 () Bool)

(assert (=> bm!323443 (= call!323447 (lemmaContainsAllItsOwnKeys!538 (ListMap!4354 Nil!51638)))))

(declare-fun b!4634502 () Bool)

(declare-fun e!2891102 () Bool)

(assert (=> b!4634502 (= e!2891102 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194602))))

(assert (=> b!4634503 (= e!2891104 lt!1796367)))

(declare-fun lt!1796377 () ListMap!4353)

(assert (=> b!4634503 (= lt!1796377 (+!1908 (ListMap!4354 Nil!51638) (h!57720 (Cons!51638 lt!1795869 lt!1795852))))))

(assert (=> b!4634503 (= lt!1796367 (addToMapMapFromBucket!1003 (t!358826 (Cons!51638 lt!1795869 lt!1795852)) (+!1908 (ListMap!4354 Nil!51638) (h!57720 (Cons!51638 lt!1795869 lt!1795852)))))))

(declare-fun lt!1796385 () Unit!114003)

(assert (=> b!4634503 (= lt!1796385 call!323447)))

(assert (=> b!4634503 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194601)))

(declare-fun lt!1796371 () Unit!114003)

(assert (=> b!4634503 (= lt!1796371 lt!1796385)))

(assert (=> b!4634503 (forall!10888 (toList!5049 lt!1796377) lambda!194602)))

(declare-fun lt!1796369 () Unit!114003)

(declare-fun Unit!114090 () Unit!114003)

(assert (=> b!4634503 (= lt!1796369 Unit!114090)))

(assert (=> b!4634503 (forall!10888 (t!358826 (Cons!51638 lt!1795869 lt!1795852)) lambda!194602)))

(declare-fun lt!1796380 () Unit!114003)

(declare-fun Unit!114091 () Unit!114003)

(assert (=> b!4634503 (= lt!1796380 Unit!114091)))

(declare-fun lt!1796374 () Unit!114003)

(declare-fun Unit!114092 () Unit!114003)

(assert (=> b!4634503 (= lt!1796374 Unit!114092)))

(declare-fun lt!1796373 () Unit!114003)

(assert (=> b!4634503 (= lt!1796373 (forallContained!3120 (toList!5049 lt!1796377) lambda!194602 (h!57720 (Cons!51638 lt!1795869 lt!1795852))))))

(assert (=> b!4634503 (contains!14749 lt!1796377 (_1!29601 (h!57720 (Cons!51638 lt!1795869 lt!1795852))))))

(declare-fun lt!1796379 () Unit!114003)

(declare-fun Unit!114093 () Unit!114003)

(assert (=> b!4634503 (= lt!1796379 Unit!114093)))

(assert (=> b!4634503 (contains!14749 lt!1796367 (_1!29601 (h!57720 (Cons!51638 lt!1795869 lt!1795852))))))

(declare-fun lt!1796383 () Unit!114003)

(declare-fun Unit!114094 () Unit!114003)

(assert (=> b!4634503 (= lt!1796383 Unit!114094)))

(assert (=> b!4634503 (forall!10888 (Cons!51638 lt!1795869 lt!1795852) lambda!194602)))

(declare-fun lt!1796366 () Unit!114003)

(declare-fun Unit!114095 () Unit!114003)

(assert (=> b!4634503 (= lt!1796366 Unit!114095)))

(assert (=> b!4634503 (forall!10888 (toList!5049 lt!1796377) lambda!194602)))

(declare-fun lt!1796384 () Unit!114003)

(declare-fun Unit!114096 () Unit!114003)

(assert (=> b!4634503 (= lt!1796384 Unit!114096)))

(declare-fun lt!1796386 () Unit!114003)

(declare-fun Unit!114097 () Unit!114003)

(assert (=> b!4634503 (= lt!1796386 Unit!114097)))

(declare-fun lt!1796370 () Unit!114003)

(assert (=> b!4634503 (= lt!1796370 (addForallContainsKeyThenBeforeAdding!537 (ListMap!4354 Nil!51638) lt!1796367 (_1!29601 (h!57720 (Cons!51638 lt!1795869 lt!1795852))) (_2!29601 (h!57720 (Cons!51638 lt!1795869 lt!1795852)))))))

(assert (=> b!4634503 (forall!10888 (toList!5049 (ListMap!4354 Nil!51638)) lambda!194602)))

(declare-fun lt!1796372 () Unit!114003)

(assert (=> b!4634503 (= lt!1796372 lt!1796370)))

(assert (=> b!4634503 call!323448))

(declare-fun lt!1796375 () Unit!114003)

(declare-fun Unit!114098 () Unit!114003)

(assert (=> b!4634503 (= lt!1796375 Unit!114098)))

(declare-fun res!1945073 () Bool)

(assert (=> b!4634503 (= res!1945073 call!323446)))

(assert (=> b!4634503 (=> (not res!1945073) (not e!2891102))))

(assert (=> b!4634503 e!2891102))

(declare-fun lt!1796368 () Unit!114003)

(declare-fun Unit!114099 () Unit!114003)

(assert (=> b!4634503 (= lt!1796368 Unit!114099)))

(assert (= (and d!1461051 c!793251) b!4634499))

(assert (= (and d!1461051 (not c!793251)) b!4634503))

(assert (= (and b!4634503 res!1945073) b!4634502))

(assert (= (or b!4634499 b!4634503) bm!323443))

(assert (= (or b!4634499 b!4634503) bm!323442))

(assert (= (or b!4634499 b!4634503) bm!323441))

(assert (= (and d!1461051 res!1945072) b!4634500))

(assert (= (and b!4634500 res!1945074) b!4634501))

(declare-fun m!5488981 () Bool)

(assert (=> d!1461051 m!5488981))

(declare-fun m!5488983 () Bool)

(assert (=> d!1461051 m!5488983))

(assert (=> bm!323443 m!5488719))

(declare-fun m!5488985 () Bool)

(assert (=> bm!323441 m!5488985))

(declare-fun m!5488987 () Bool)

(assert (=> b!4634500 m!5488987))

(declare-fun m!5488989 () Bool)

(assert (=> b!4634503 m!5488989))

(declare-fun m!5488991 () Bool)

(assert (=> b!4634503 m!5488991))

(assert (=> b!4634503 m!5488989))

(declare-fun m!5488993 () Bool)

(assert (=> b!4634503 m!5488993))

(declare-fun m!5488995 () Bool)

(assert (=> b!4634503 m!5488995))

(declare-fun m!5488997 () Bool)

(assert (=> b!4634503 m!5488997))

(declare-fun m!5488999 () Bool)

(assert (=> b!4634503 m!5488999))

(declare-fun m!5489001 () Bool)

(assert (=> b!4634503 m!5489001))

(declare-fun m!5489003 () Bool)

(assert (=> b!4634503 m!5489003))

(declare-fun m!5489005 () Bool)

(assert (=> b!4634503 m!5489005))

(declare-fun m!5489007 () Bool)

(assert (=> b!4634503 m!5489007))

(assert (=> b!4634503 m!5489003))

(declare-fun m!5489009 () Bool)

(assert (=> b!4634503 m!5489009))

(assert (=> b!4634502 m!5488997))

(declare-fun m!5489011 () Bool)

(assert (=> bm!323442 m!5489011))

(declare-fun m!5489013 () Bool)

(assert (=> b!4634501 m!5489013))

(assert (=> b!4634160 d!1461051))

(declare-fun d!1461053 () Bool)

(declare-fun e!2891105 () Bool)

(assert (=> d!1461053 e!2891105))

(declare-fun res!1945076 () Bool)

(assert (=> d!1461053 (=> (not res!1945076) (not e!2891105))))

(declare-fun lt!1796387 () ListMap!4353)

(assert (=> d!1461053 (= res!1945076 (contains!14749 lt!1796387 (_1!29601 (h!57720 oldBucket!40))))))

(declare-fun lt!1796388 () List!51762)

(assert (=> d!1461053 (= lt!1796387 (ListMap!4354 lt!1796388))))

(declare-fun lt!1796390 () Unit!114003)

(declare-fun lt!1796389 () Unit!114003)

(assert (=> d!1461053 (= lt!1796390 lt!1796389)))

(assert (=> d!1461053 (= (getValueByKey!1515 lt!1796388 (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461053 (= lt!1796389 (lemmaContainsTupThenGetReturnValue!880 lt!1796388 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461053 (= lt!1796388 (insertNoDuplicatedKeys!388 (toList!5049 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639))) (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461053 (= (+!1908 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)) (h!57720 oldBucket!40)) lt!1796387)))

(declare-fun b!4634504 () Bool)

(declare-fun res!1945075 () Bool)

(assert (=> b!4634504 (=> (not res!1945075) (not e!2891105))))

(assert (=> b!4634504 (= res!1945075 (= (getValueByKey!1515 (toList!5049 lt!1796387) (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun b!4634505 () Bool)

(assert (=> b!4634505 (= e!2891105 (contains!14755 (toList!5049 lt!1796387) (h!57720 oldBucket!40)))))

(assert (= (and d!1461053 res!1945076) b!4634504))

(assert (= (and b!4634504 res!1945075) b!4634505))

(declare-fun m!5489015 () Bool)

(assert (=> d!1461053 m!5489015))

(declare-fun m!5489017 () Bool)

(assert (=> d!1461053 m!5489017))

(declare-fun m!5489019 () Bool)

(assert (=> d!1461053 m!5489019))

(declare-fun m!5489021 () Bool)

(assert (=> d!1461053 m!5489021))

(declare-fun m!5489023 () Bool)

(assert (=> b!4634504 m!5489023))

(declare-fun m!5489025 () Bool)

(assert (=> b!4634505 m!5489025))

(assert (=> b!4634160 d!1461053))

(declare-fun d!1461055 () Bool)

(assert (=> d!1461055 (= (eq!857 lt!1795868 (+!1908 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)) (h!57720 oldBucket!40))) (= (content!8893 (toList!5049 lt!1795868)) (content!8893 (toList!5049 (+!1908 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795852) Nil!51639)) (h!57720 oldBucket!40))))))))

(declare-fun bs!1029966 () Bool)

(assert (= bs!1029966 d!1461055))

(declare-fun m!5489027 () Bool)

(assert (=> bs!1029966 m!5489027))

(declare-fun m!5489029 () Bool)

(assert (=> bs!1029966 m!5489029))

(assert (=> b!4634160 d!1461055))

(declare-fun d!1461057 () Bool)

(declare-fun res!1945081 () Bool)

(declare-fun e!2891110 () Bool)

(assert (=> d!1461057 (=> res!1945081 e!2891110)))

(assert (=> d!1461057 (= res!1945081 (not ((_ is Cons!51638) newBucket!224)))))

(assert (=> d!1461057 (= (noDuplicateKeys!1542 newBucket!224) e!2891110)))

(declare-fun b!4634510 () Bool)

(declare-fun e!2891111 () Bool)

(assert (=> b!4634510 (= e!2891110 e!2891111)))

(declare-fun res!1945082 () Bool)

(assert (=> b!4634510 (=> (not res!1945082) (not e!2891111))))

(assert (=> b!4634510 (= res!1945082 (not (containsKey!2546 (t!358826 newBucket!224) (_1!29601 (h!57720 newBucket!224)))))))

(declare-fun b!4634511 () Bool)

(assert (=> b!4634511 (= e!2891111 (noDuplicateKeys!1542 (t!358826 newBucket!224)))))

(assert (= (and d!1461057 (not res!1945081)) b!4634510))

(assert (= (and b!4634510 res!1945082) b!4634511))

(declare-fun m!5489031 () Bool)

(assert (=> b!4634510 m!5489031))

(declare-fun m!5489033 () Bool)

(assert (=> b!4634511 m!5489033))

(assert (=> b!4634158 d!1461057))

(declare-fun d!1461059 () Bool)

(declare-fun e!2891112 () Bool)

(assert (=> d!1461059 e!2891112))

(declare-fun res!1945084 () Bool)

(assert (=> d!1461059 (=> (not res!1945084) (not e!2891112))))

(declare-fun lt!1796391 () ListMap!4353)

(assert (=> d!1461059 (= res!1945084 (contains!14749 lt!1796391 (_1!29601 (h!57720 oldBucket!40))))))

(declare-fun lt!1796392 () List!51762)

(assert (=> d!1461059 (= lt!1796391 (ListMap!4354 lt!1796392))))

(declare-fun lt!1796394 () Unit!114003)

(declare-fun lt!1796393 () Unit!114003)

(assert (=> d!1461059 (= lt!1796394 lt!1796393)))

(assert (=> d!1461059 (= (getValueByKey!1515 lt!1796392 (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461059 (= lt!1796393 (lemmaContainsTupThenGetReturnValue!880 lt!1796392 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461059 (= lt!1796392 (insertNoDuplicatedKeys!388 (toList!5049 lt!1795857) (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461059 (= (+!1908 lt!1795857 (h!57720 oldBucket!40)) lt!1796391)))

(declare-fun b!4634512 () Bool)

(declare-fun res!1945083 () Bool)

(assert (=> b!4634512 (=> (not res!1945083) (not e!2891112))))

(assert (=> b!4634512 (= res!1945083 (= (getValueByKey!1515 (toList!5049 lt!1796391) (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun b!4634513 () Bool)

(assert (=> b!4634513 (= e!2891112 (contains!14755 (toList!5049 lt!1796391) (h!57720 oldBucket!40)))))

(assert (= (and d!1461059 res!1945084) b!4634512))

(assert (= (and b!4634512 res!1945083) b!4634513))

(declare-fun m!5489035 () Bool)

(assert (=> d!1461059 m!5489035))

(declare-fun m!5489037 () Bool)

(assert (=> d!1461059 m!5489037))

(declare-fun m!5489039 () Bool)

(assert (=> d!1461059 m!5489039))

(declare-fun m!5489041 () Bool)

(assert (=> d!1461059 m!5489041))

(declare-fun m!5489043 () Bool)

(assert (=> b!4634512 m!5489043))

(declare-fun m!5489045 () Bool)

(assert (=> b!4634513 m!5489045))

(assert (=> b!4634169 d!1461059))

(declare-fun d!1461061 () Bool)

(declare-fun e!2891113 () Bool)

(assert (=> d!1461061 e!2891113))

(declare-fun res!1945085 () Bool)

(assert (=> d!1461061 (=> (not res!1945085) (not e!2891113))))

(declare-fun lt!1796395 () ListMap!4353)

(assert (=> d!1461061 (= res!1945085 (not (contains!14749 lt!1796395 key!4968)))))

(assert (=> d!1461061 (= lt!1796395 (ListMap!4354 (removePresrvNoDuplicatedKeys!285 (toList!5049 lt!1795864) key!4968)))))

(assert (=> d!1461061 (= (-!582 lt!1795864 key!4968) lt!1796395)))

(declare-fun b!4634514 () Bool)

(assert (=> b!4634514 (= e!2891113 (= ((_ map and) (content!8894 (keys!18222 lt!1795864)) ((_ map not) (store ((as const (Array K!13005 Bool)) false) key!4968 true))) (content!8894 (keys!18222 lt!1796395))))))

(assert (= (and d!1461061 res!1945085) b!4634514))

(declare-fun m!5489047 () Bool)

(assert (=> d!1461061 m!5489047))

(declare-fun m!5489049 () Bool)

(assert (=> d!1461061 m!5489049))

(declare-fun m!5489051 () Bool)

(assert (=> b!4634514 m!5489051))

(declare-fun m!5489053 () Bool)

(assert (=> b!4634514 m!5489053))

(assert (=> b!4634514 m!5489051))

(assert (=> b!4634514 m!5488353))

(declare-fun m!5489055 () Bool)

(assert (=> b!4634514 m!5489055))

(assert (=> b!4634514 m!5489055))

(declare-fun m!5489057 () Bool)

(assert (=> b!4634514 m!5489057))

(assert (=> b!4634169 d!1461061))

(declare-fun d!1461063 () Bool)

(declare-fun e!2891114 () Bool)

(assert (=> d!1461063 e!2891114))

(declare-fun res!1945086 () Bool)

(assert (=> d!1461063 (=> (not res!1945086) (not e!2891114))))

(declare-fun lt!1796396 () ListMap!4353)

(assert (=> d!1461063 (= res!1945086 (not (contains!14749 lt!1796396 key!4968)))))

(assert (=> d!1461063 (= lt!1796396 (ListMap!4354 (removePresrvNoDuplicatedKeys!285 (toList!5049 (+!1908 lt!1795857 (h!57720 oldBucket!40))) key!4968)))))

(assert (=> d!1461063 (= (-!582 (+!1908 lt!1795857 (h!57720 oldBucket!40)) key!4968) lt!1796396)))

(declare-fun b!4634515 () Bool)

(assert (=> b!4634515 (= e!2891114 (= ((_ map and) (content!8894 (keys!18222 (+!1908 lt!1795857 (h!57720 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13005 Bool)) false) key!4968 true))) (content!8894 (keys!18222 lt!1796396))))))

(assert (= (and d!1461063 res!1945086) b!4634515))

(declare-fun m!5489059 () Bool)

(assert (=> d!1461063 m!5489059))

(declare-fun m!5489061 () Bool)

(assert (=> d!1461063 m!5489061))

(declare-fun m!5489063 () Bool)

(assert (=> b!4634515 m!5489063))

(declare-fun m!5489065 () Bool)

(assert (=> b!4634515 m!5489065))

(assert (=> b!4634515 m!5488153))

(assert (=> b!4634515 m!5489063))

(assert (=> b!4634515 m!5488353))

(declare-fun m!5489067 () Bool)

(assert (=> b!4634515 m!5489067))

(assert (=> b!4634515 m!5489067))

(declare-fun m!5489069 () Bool)

(assert (=> b!4634515 m!5489069))

(assert (=> b!4634169 d!1461063))

(declare-fun d!1461065 () Bool)

(assert (=> d!1461065 (= (eq!857 lt!1795856 lt!1795877) (= (content!8893 (toList!5049 lt!1795856)) (content!8893 (toList!5049 lt!1795877))))))

(declare-fun bs!1029967 () Bool)

(assert (= bs!1029967 d!1461065))

(declare-fun m!5489071 () Bool)

(assert (=> bs!1029967 m!5489071))

(declare-fun m!5489073 () Bool)

(assert (=> bs!1029967 m!5489073))

(assert (=> b!4634169 d!1461065))

(declare-fun d!1461067 () Bool)

(assert (=> d!1461067 (= (-!582 (+!1908 lt!1795857 (tuple2!52615 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)))) key!4968) (+!1908 (-!582 lt!1795857 key!4968) (tuple2!52615 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun lt!1796399 () Unit!114003)

(declare-fun choose!31623 (ListMap!4353 K!13005 V!13251 K!13005) Unit!114003)

(assert (=> d!1461067 (= lt!1796399 (choose!31623 lt!1795857 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)) key!4968))))

(assert (=> d!1461067 (not (= (_1!29601 (h!57720 oldBucket!40)) key!4968))))

(assert (=> d!1461067 (= (addRemoveCommutativeForDiffKeys!37 lt!1795857 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)) key!4968) lt!1796399)))

(declare-fun bs!1029968 () Bool)

(assert (= bs!1029968 d!1461067))

(assert (=> bs!1029968 m!5488149))

(declare-fun m!5489075 () Bool)

(assert (=> bs!1029968 m!5489075))

(declare-fun m!5489077 () Bool)

(assert (=> bs!1029968 m!5489077))

(declare-fun m!5489079 () Bool)

(assert (=> bs!1029968 m!5489079))

(assert (=> bs!1029968 m!5489077))

(assert (=> bs!1029968 m!5488149))

(declare-fun m!5489081 () Bool)

(assert (=> bs!1029968 m!5489081))

(assert (=> b!4634169 d!1461067))

(declare-fun d!1461069 () Bool)

(assert (=> d!1461069 (eq!857 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639)) (-!582 (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 (t!358826 oldBucket!40)) Nil!51639)) key!4968))))

(declare-fun lt!1796402 () Unit!114003)

(declare-fun choose!31624 ((_ BitVec 64) List!51762 List!51762 K!13005 Hashable!5939) Unit!114003)

(assert (=> d!1461069 (= lt!1796402 (choose!31624 hash!414 (t!358826 oldBucket!40) lt!1795850 key!4968 hashF!1389))))

(assert (=> d!1461069 (noDuplicateKeys!1542 (t!358826 oldBucket!40))))

(assert (=> d!1461069 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!144 hash!414 (t!358826 oldBucket!40) lt!1795850 key!4968 hashF!1389) lt!1796402)))

(declare-fun bs!1029969 () Bool)

(assert (= bs!1029969 d!1461069))

(assert (=> bs!1029969 m!5488067))

(declare-fun m!5489083 () Bool)

(assert (=> bs!1029969 m!5489083))

(declare-fun m!5489085 () Bool)

(assert (=> bs!1029969 m!5489085))

(declare-fun m!5489087 () Bool)

(assert (=> bs!1029969 m!5489087))

(assert (=> bs!1029969 m!5489083))

(assert (=> bs!1029969 m!5488067))

(assert (=> bs!1029969 m!5489085))

(declare-fun m!5489089 () Bool)

(assert (=> bs!1029969 m!5489089))

(declare-fun m!5489091 () Bool)

(assert (=> bs!1029969 m!5489091))

(assert (=> b!4634169 d!1461069))

(declare-fun d!1461071 () Bool)

(declare-fun e!2891115 () Bool)

(assert (=> d!1461071 e!2891115))

(declare-fun res!1945088 () Bool)

(assert (=> d!1461071 (=> (not res!1945088) (not e!2891115))))

(declare-fun lt!1796403 () ListMap!4353)

(assert (=> d!1461071 (= res!1945088 (contains!14749 lt!1796403 (_1!29601 (h!57720 oldBucket!40))))))

(declare-fun lt!1796404 () List!51762)

(assert (=> d!1461071 (= lt!1796403 (ListMap!4354 lt!1796404))))

(declare-fun lt!1796406 () Unit!114003)

(declare-fun lt!1796405 () Unit!114003)

(assert (=> d!1461071 (= lt!1796406 lt!1796405)))

(assert (=> d!1461071 (= (getValueByKey!1515 lt!1796404 (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461071 (= lt!1796405 (lemmaContainsTupThenGetReturnValue!880 lt!1796404 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461071 (= lt!1796404 (insertNoDuplicatedKeys!388 (toList!5049 lt!1795877) (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461071 (= (+!1908 lt!1795877 (h!57720 oldBucket!40)) lt!1796403)))

(declare-fun b!4634516 () Bool)

(declare-fun res!1945087 () Bool)

(assert (=> b!4634516 (=> (not res!1945087) (not e!2891115))))

(assert (=> b!4634516 (= res!1945087 (= (getValueByKey!1515 (toList!5049 lt!1796403) (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun b!4634517 () Bool)

(assert (=> b!4634517 (= e!2891115 (contains!14755 (toList!5049 lt!1796403) (h!57720 oldBucket!40)))))

(assert (= (and d!1461071 res!1945088) b!4634516))

(assert (= (and b!4634516 res!1945087) b!4634517))

(declare-fun m!5489093 () Bool)

(assert (=> d!1461071 m!5489093))

(declare-fun m!5489095 () Bool)

(assert (=> d!1461071 m!5489095))

(declare-fun m!5489097 () Bool)

(assert (=> d!1461071 m!5489097))

(declare-fun m!5489099 () Bool)

(assert (=> d!1461071 m!5489099))

(declare-fun m!5489101 () Bool)

(assert (=> b!4634516 m!5489101))

(declare-fun m!5489103 () Bool)

(assert (=> b!4634517 m!5489103))

(assert (=> b!4634169 d!1461071))

(declare-fun d!1461073 () Bool)

(declare-fun e!2891116 () Bool)

(assert (=> d!1461073 e!2891116))

(declare-fun res!1945089 () Bool)

(assert (=> d!1461073 (=> (not res!1945089) (not e!2891116))))

(declare-fun lt!1796407 () ListMap!4353)

(assert (=> d!1461073 (= res!1945089 (not (contains!14749 lt!1796407 key!4968)))))

(assert (=> d!1461073 (= lt!1796407 (ListMap!4354 (removePresrvNoDuplicatedKeys!285 (toList!5049 lt!1795857) key!4968)))))

(assert (=> d!1461073 (= (-!582 lt!1795857 key!4968) lt!1796407)))

(declare-fun b!4634518 () Bool)

(assert (=> b!4634518 (= e!2891116 (= ((_ map and) (content!8894 (keys!18222 lt!1795857)) ((_ map not) (store ((as const (Array K!13005 Bool)) false) key!4968 true))) (content!8894 (keys!18222 lt!1796407))))))

(assert (= (and d!1461073 res!1945089) b!4634518))

(declare-fun m!5489105 () Bool)

(assert (=> d!1461073 m!5489105))

(declare-fun m!5489107 () Bool)

(assert (=> d!1461073 m!5489107))

(assert (=> b!4634518 m!5488927))

(declare-fun m!5489109 () Bool)

(assert (=> b!4634518 m!5489109))

(assert (=> b!4634518 m!5488927))

(assert (=> b!4634518 m!5488353))

(declare-fun m!5489111 () Bool)

(assert (=> b!4634518 m!5489111))

(assert (=> b!4634518 m!5489111))

(declare-fun m!5489113 () Bool)

(assert (=> b!4634518 m!5489113))

(assert (=> b!4634169 d!1461073))

(declare-fun bs!1029970 () Bool)

(declare-fun d!1461075 () Bool)

(assert (= bs!1029970 (and d!1461075 b!4634492)))

(declare-fun lambda!194606 () Int)

(assert (=> bs!1029970 (not (= lambda!194606 lambda!194598))))

(declare-fun bs!1029971 () Bool)

(assert (= bs!1029971 (and d!1461075 d!1461043)))

(assert (=> bs!1029971 (not (= lambda!194606 lambda!194599))))

(declare-fun bs!1029972 () Bool)

(assert (= bs!1029972 (and d!1461075 b!4634503)))

(assert (=> bs!1029972 (not (= lambda!194606 lambda!194601))))

(declare-fun bs!1029973 () Bool)

(assert (= bs!1029973 (and d!1461075 b!4634499)))

(assert (=> bs!1029973 (not (= lambda!194606 lambda!194600))))

(declare-fun bs!1029974 () Bool)

(assert (= bs!1029974 (and d!1461075 b!4634441)))

(assert (=> bs!1029974 (not (= lambda!194606 lambda!194575))))

(declare-fun bs!1029975 () Bool)

(assert (= bs!1029975 (and d!1461075 b!4634453)))

(assert (=> bs!1029975 (not (= lambda!194606 lambda!194582))))

(declare-fun bs!1029976 () Bool)

(assert (= bs!1029976 (and d!1461075 b!4634449)))

(assert (=> bs!1029976 (not (= lambda!194606 lambda!194579))))

(assert (=> bs!1029970 (not (= lambda!194606 lambda!194597))))

(declare-fun bs!1029977 () Bool)

(assert (= bs!1029977 (and d!1461075 d!1461051)))

(assert (=> bs!1029977 (not (= lambda!194606 lambda!194603))))

(declare-fun bs!1029978 () Bool)

(assert (= bs!1029978 (and d!1461075 b!4634488)))

(assert (=> bs!1029978 (not (= lambda!194606 lambda!194595))))

(assert (=> bs!1029972 (not (= lambda!194606 lambda!194602))))

(assert (=> bs!1029974 (not (= lambda!194606 lambda!194576))))

(assert (=> bs!1029975 (not (= lambda!194606 lambda!194581))))

(declare-fun bs!1029979 () Bool)

(assert (= bs!1029979 (and d!1461075 d!1461011)))

(assert (=> bs!1029979 (not (= lambda!194606 lambda!194584))))

(declare-fun bs!1029980 () Bool)

(assert (= bs!1029980 (and d!1461075 d!1460951)))

(assert (=> bs!1029980 (not (= lambda!194606 lambda!194577))))

(declare-fun bs!1029981 () Bool)

(assert (= bs!1029981 (and d!1461075 b!4634437)))

(assert (=> bs!1029981 (not (= lambda!194606 lambda!194574))))

(assert (=> d!1461075 true))

(assert (=> d!1461075 true))

(assert (=> d!1461075 (= (allKeysSameHash!1396 oldBucket!40 hash!414 hashF!1389) (forall!10888 oldBucket!40 lambda!194606))))

(declare-fun bs!1029982 () Bool)

(assert (= bs!1029982 d!1461075))

(declare-fun m!5489115 () Bool)

(assert (=> bs!1029982 m!5489115))

(assert (=> b!4634167 d!1461075))

(declare-fun d!1461077 () Bool)

(assert (=> d!1461077 (= (eq!857 lt!1795875 lt!1795851) (= (content!8893 (toList!5049 lt!1795875)) (content!8893 (toList!5049 lt!1795851))))))

(declare-fun bs!1029983 () Bool)

(assert (= bs!1029983 d!1461077))

(declare-fun m!5489117 () Bool)

(assert (=> bs!1029983 m!5489117))

(assert (=> bs!1029983 m!5488291))

(assert (=> b!4634178 d!1461077))

(declare-fun d!1461079 () Bool)

(assert (=> d!1461079 (= (eq!857 lt!1795860 (+!1908 lt!1795856 (h!57720 oldBucket!40))) (= (content!8893 (toList!5049 lt!1795860)) (content!8893 (toList!5049 (+!1908 lt!1795856 (h!57720 oldBucket!40))))))))

(declare-fun bs!1029984 () Bool)

(assert (= bs!1029984 d!1461079))

(declare-fun m!5489119 () Bool)

(assert (=> bs!1029984 m!5489119))

(declare-fun m!5489121 () Bool)

(assert (=> bs!1029984 m!5489121))

(assert (=> b!4634178 d!1461079))

(declare-fun d!1461081 () Bool)

(declare-fun e!2891117 () Bool)

(assert (=> d!1461081 e!2891117))

(declare-fun res!1945091 () Bool)

(assert (=> d!1461081 (=> (not res!1945091) (not e!2891117))))

(declare-fun lt!1796408 () ListMap!4353)

(assert (=> d!1461081 (= res!1945091 (contains!14749 lt!1796408 (_1!29601 (h!57720 oldBucket!40))))))

(declare-fun lt!1796409 () List!51762)

(assert (=> d!1461081 (= lt!1796408 (ListMap!4354 lt!1796409))))

(declare-fun lt!1796411 () Unit!114003)

(declare-fun lt!1796410 () Unit!114003)

(assert (=> d!1461081 (= lt!1796411 lt!1796410)))

(assert (=> d!1461081 (= (getValueByKey!1515 lt!1796409 (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461081 (= lt!1796410 (lemmaContainsTupThenGetReturnValue!880 lt!1796409 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461081 (= lt!1796409 (insertNoDuplicatedKeys!388 (toList!5049 lt!1795856) (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461081 (= (+!1908 lt!1795856 (h!57720 oldBucket!40)) lt!1796408)))

(declare-fun b!4634523 () Bool)

(declare-fun res!1945090 () Bool)

(assert (=> b!4634523 (=> (not res!1945090) (not e!2891117))))

(assert (=> b!4634523 (= res!1945090 (= (getValueByKey!1515 (toList!5049 lt!1796408) (_1!29601 (h!57720 oldBucket!40))) (Some!11690 (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun b!4634524 () Bool)

(assert (=> b!4634524 (= e!2891117 (contains!14755 (toList!5049 lt!1796408) (h!57720 oldBucket!40)))))

(assert (= (and d!1461081 res!1945091) b!4634523))

(assert (= (and b!4634523 res!1945090) b!4634524))

(declare-fun m!5489123 () Bool)

(assert (=> d!1461081 m!5489123))

(declare-fun m!5489125 () Bool)

(assert (=> d!1461081 m!5489125))

(declare-fun m!5489127 () Bool)

(assert (=> d!1461081 m!5489127))

(declare-fun m!5489129 () Bool)

(assert (=> d!1461081 m!5489129))

(declare-fun m!5489131 () Bool)

(assert (=> b!4634523 m!5489131))

(declare-fun m!5489133 () Bool)

(assert (=> b!4634524 m!5489133))

(assert (=> b!4634178 d!1461081))

(declare-fun d!1461083 () Bool)

(assert (=> d!1461083 (eq!857 (+!1908 lt!1795877 (tuple2!52615 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)))) (+!1908 lt!1795856 (tuple2!52615 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40)))))))

(declare-fun lt!1796414 () Unit!114003)

(declare-fun choose!31627 (ListMap!4353 ListMap!4353 K!13005 V!13251) Unit!114003)

(assert (=> d!1461083 (= lt!1796414 (choose!31627 lt!1795877 lt!1795856 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> d!1461083 (eq!857 lt!1795877 lt!1795856)))

(assert (=> d!1461083 (= (lemmaAddToEqMapsPreservesEq!54 lt!1795877 lt!1795856 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))) lt!1796414)))

(declare-fun bs!1029985 () Bool)

(assert (= bs!1029985 d!1461083))

(declare-fun m!5489135 () Bool)

(assert (=> bs!1029985 m!5489135))

(declare-fun m!5489137 () Bool)

(assert (=> bs!1029985 m!5489137))

(declare-fun m!5489139 () Bool)

(assert (=> bs!1029985 m!5489139))

(declare-fun m!5489141 () Bool)

(assert (=> bs!1029985 m!5489141))

(declare-fun m!5489143 () Bool)

(assert (=> bs!1029985 m!5489143))

(assert (=> bs!1029985 m!5489139))

(assert (=> bs!1029985 m!5489137))

(assert (=> b!4634178 d!1461083))

(declare-fun d!1461085 () Bool)

(declare-datatypes ((Option!11692 0))(
  ( (None!11691) (Some!11691 (v!45885 List!51762)) )
))
(declare-fun get!17159 (Option!11692) List!51762)

(declare-fun getValueByKey!1516 (List!51763 (_ BitVec 64)) Option!11692)

(assert (=> d!1461085 (= (apply!12207 lt!1795854 lt!1795881) (get!17159 (getValueByKey!1516 (toList!5050 lt!1795854) lt!1795881)))))

(declare-fun bs!1029986 () Bool)

(assert (= bs!1029986 d!1461085))

(declare-fun m!5489145 () Bool)

(assert (=> bs!1029986 m!5489145))

(assert (=> bs!1029986 m!5489145))

(declare-fun m!5489147 () Bool)

(assert (=> bs!1029986 m!5489147))

(assert (=> b!4634168 d!1461085))

(declare-fun d!1461087 () Bool)

(assert (=> d!1461087 (contains!14750 (toList!5050 lt!1795854) (tuple2!52617 lt!1795881 lt!1795870))))

(declare-fun lt!1796417 () Unit!114003)

(declare-fun choose!31628 (ListLongMap!3639 (_ BitVec 64) List!51762) Unit!114003)

(assert (=> d!1461087 (= lt!1796417 (choose!31628 lt!1795854 lt!1795881 lt!1795870))))

(assert (=> d!1461087 (contains!14751 lt!1795854 lt!1795881)))

(assert (=> d!1461087 (= (lemmaGetValueImpliesTupleContained!139 lt!1795854 lt!1795881 lt!1795870) lt!1796417)))

(declare-fun bs!1029987 () Bool)

(assert (= bs!1029987 d!1461087))

(declare-fun m!5489149 () Bool)

(assert (=> bs!1029987 m!5489149))

(declare-fun m!5489151 () Bool)

(assert (=> bs!1029987 m!5489151))

(assert (=> bs!1029987 m!5488127))

(assert (=> b!4634168 d!1461087))

(declare-fun d!1461089 () Bool)

(declare-fun res!1945096 () Bool)

(declare-fun e!2891122 () Bool)

(assert (=> d!1461089 (=> res!1945096 e!2891122)))

(assert (=> d!1461089 (= res!1945096 (and ((_ is Cons!51638) (t!358826 oldBucket!40)) (= (_1!29601 (h!57720 (t!358826 oldBucket!40))) key!4968)))))

(assert (=> d!1461089 (= (containsKey!2546 (t!358826 oldBucket!40) key!4968) e!2891122)))

(declare-fun b!4634530 () Bool)

(declare-fun e!2891123 () Bool)

(assert (=> b!4634530 (= e!2891122 e!2891123)))

(declare-fun res!1945097 () Bool)

(assert (=> b!4634530 (=> (not res!1945097) (not e!2891123))))

(assert (=> b!4634530 (= res!1945097 ((_ is Cons!51638) (t!358826 oldBucket!40)))))

(declare-fun b!4634531 () Bool)

(assert (=> b!4634531 (= e!2891123 (containsKey!2546 (t!358826 (t!358826 oldBucket!40)) key!4968))))

(assert (= (and d!1461089 (not res!1945096)) b!4634530))

(assert (= (and b!4634530 res!1945097) b!4634531))

(declare-fun m!5489153 () Bool)

(assert (=> b!4634531 m!5489153))

(assert (=> b!4634168 d!1461089))

(declare-fun d!1461091 () Bool)

(declare-fun e!2891128 () Bool)

(assert (=> d!1461091 e!2891128))

(declare-fun res!1945100 () Bool)

(assert (=> d!1461091 (=> res!1945100 e!2891128)))

(declare-fun lt!1796426 () Bool)

(assert (=> d!1461091 (= res!1945100 (not lt!1796426))))

(declare-fun lt!1796427 () Bool)

(assert (=> d!1461091 (= lt!1796426 lt!1796427)))

(declare-fun lt!1796428 () Unit!114003)

(declare-fun e!2891129 () Unit!114003)

(assert (=> d!1461091 (= lt!1796428 e!2891129)))

(declare-fun c!793254 () Bool)

(assert (=> d!1461091 (= c!793254 lt!1796427)))

(declare-fun containsKey!2550 (List!51763 (_ BitVec 64)) Bool)

(assert (=> d!1461091 (= lt!1796427 (containsKey!2550 (toList!5050 lt!1795854) lt!1795881))))

(assert (=> d!1461091 (= (contains!14751 lt!1795854 lt!1795881) lt!1796426)))

(declare-fun b!4634538 () Bool)

(declare-fun lt!1796429 () Unit!114003)

(assert (=> b!4634538 (= e!2891129 lt!1796429)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1418 (List!51763 (_ BitVec 64)) Unit!114003)

(assert (=> b!4634538 (= lt!1796429 (lemmaContainsKeyImpliesGetValueByKeyDefined!1418 (toList!5050 lt!1795854) lt!1795881))))

(declare-fun isDefined!8957 (Option!11692) Bool)

(assert (=> b!4634538 (isDefined!8957 (getValueByKey!1516 (toList!5050 lt!1795854) lt!1795881))))

(declare-fun b!4634539 () Bool)

(declare-fun Unit!114113 () Unit!114003)

(assert (=> b!4634539 (= e!2891129 Unit!114113)))

(declare-fun b!4634540 () Bool)

(assert (=> b!4634540 (= e!2891128 (isDefined!8957 (getValueByKey!1516 (toList!5050 lt!1795854) lt!1795881)))))

(assert (= (and d!1461091 c!793254) b!4634538))

(assert (= (and d!1461091 (not c!793254)) b!4634539))

(assert (= (and d!1461091 (not res!1945100)) b!4634540))

(declare-fun m!5489155 () Bool)

(assert (=> d!1461091 m!5489155))

(declare-fun m!5489157 () Bool)

(assert (=> b!4634538 m!5489157))

(assert (=> b!4634538 m!5489145))

(assert (=> b!4634538 m!5489145))

(declare-fun m!5489159 () Bool)

(assert (=> b!4634538 m!5489159))

(assert (=> b!4634540 m!5489145))

(assert (=> b!4634540 m!5489145))

(assert (=> b!4634540 m!5489159))

(assert (=> b!4634168 d!1461091))

(declare-fun bs!1029988 () Bool)

(declare-fun d!1461093 () Bool)

(assert (= bs!1029988 (and d!1461093 d!1460881)))

(declare-fun lambda!194609 () Int)

(assert (=> bs!1029988 (= lambda!194609 lambda!194515)))

(declare-fun bs!1029989 () Bool)

(assert (= bs!1029989 (and d!1461093 b!4634168)))

(assert (=> bs!1029989 (= lambda!194609 lambda!194478)))

(declare-fun bs!1029990 () Bool)

(assert (= bs!1029990 (and d!1461093 d!1461031)))

(assert (=> bs!1029990 (= lambda!194609 lambda!194593)))

(declare-fun bs!1029991 () Bool)

(assert (= bs!1029991 (and d!1461093 d!1461021)))

(assert (=> bs!1029991 (= lambda!194609 lambda!194592)))

(declare-fun bs!1029992 () Bool)

(assert (= bs!1029992 (and d!1461093 d!1461017)))

(assert (=> bs!1029992 (= lambda!194609 lambda!194586)))

(assert (=> d!1461093 (contains!14751 lt!1795854 (hash!3598 hashF!1389 key!4968))))

(declare-fun lt!1796432 () Unit!114003)

(declare-fun choose!31629 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> d!1461093 (= lt!1796432 (choose!31629 lt!1795854 key!4968 hashF!1389))))

(assert (=> d!1461093 (forall!10886 (toList!5050 lt!1795854) lambda!194609)))

(assert (=> d!1461093 (= (lemmaInGenMapThenLongMapContainsHash!540 lt!1795854 key!4968 hashF!1389) lt!1796432)))

(declare-fun bs!1029993 () Bool)

(assert (= bs!1029993 d!1461093))

(assert (=> bs!1029993 m!5488109))

(assert (=> bs!1029993 m!5488109))

(declare-fun m!5489161 () Bool)

(assert (=> bs!1029993 m!5489161))

(declare-fun m!5489163 () Bool)

(assert (=> bs!1029993 m!5489163))

(declare-fun m!5489165 () Bool)

(assert (=> bs!1029993 m!5489165))

(assert (=> b!4634168 d!1461093))

(declare-fun d!1461095 () Bool)

(declare-fun lt!1796435 () Bool)

(declare-fun content!8895 (List!51763) (InoxSet tuple2!52616))

(assert (=> d!1461095 (= lt!1796435 (select (content!8895 lt!1795866) lt!1795872))))

(declare-fun e!2891134 () Bool)

(assert (=> d!1461095 (= lt!1796435 e!2891134)))

(declare-fun res!1945106 () Bool)

(assert (=> d!1461095 (=> (not res!1945106) (not e!2891134))))

(assert (=> d!1461095 (= res!1945106 ((_ is Cons!51639) lt!1795866))))

(assert (=> d!1461095 (= (contains!14750 lt!1795866 lt!1795872) lt!1796435)))

(declare-fun b!4634545 () Bool)

(declare-fun e!2891135 () Bool)

(assert (=> b!4634545 (= e!2891134 e!2891135)))

(declare-fun res!1945105 () Bool)

(assert (=> b!4634545 (=> res!1945105 e!2891135)))

(assert (=> b!4634545 (= res!1945105 (= (h!57721 lt!1795866) lt!1795872))))

(declare-fun b!4634546 () Bool)

(assert (=> b!4634546 (= e!2891135 (contains!14750 (t!358827 lt!1795866) lt!1795872))))

(assert (= (and d!1461095 res!1945106) b!4634545))

(assert (= (and b!4634545 (not res!1945105)) b!4634546))

(declare-fun m!5489167 () Bool)

(assert (=> d!1461095 m!5489167))

(declare-fun m!5489169 () Bool)

(assert (=> d!1461095 m!5489169))

(declare-fun m!5489171 () Bool)

(assert (=> b!4634546 m!5489171))

(assert (=> b!4634168 d!1461095))

(declare-fun d!1461097 () Bool)

(declare-fun res!1945107 () Bool)

(declare-fun e!2891136 () Bool)

(assert (=> d!1461097 (=> res!1945107 e!2891136)))

(assert (=> d!1461097 (= res!1945107 (and ((_ is Cons!51638) oldBucket!40) (= (_1!29601 (h!57720 oldBucket!40)) key!4968)))))

(assert (=> d!1461097 (= (containsKey!2546 oldBucket!40 key!4968) e!2891136)))

(declare-fun b!4634547 () Bool)

(declare-fun e!2891137 () Bool)

(assert (=> b!4634547 (= e!2891136 e!2891137)))

(declare-fun res!1945108 () Bool)

(assert (=> b!4634547 (=> (not res!1945108) (not e!2891137))))

(assert (=> b!4634547 (= res!1945108 ((_ is Cons!51638) oldBucket!40))))

(declare-fun b!4634548 () Bool)

(assert (=> b!4634548 (= e!2891137 (containsKey!2546 (t!358826 oldBucket!40) key!4968))))

(assert (= (and d!1461097 (not res!1945107)) b!4634547))

(assert (= (and b!4634547 res!1945108) b!4634548))

(assert (=> b!4634548 m!5488131))

(assert (=> b!4634168 d!1461097))

(declare-fun bs!1029994 () Bool)

(declare-fun d!1461099 () Bool)

(assert (= bs!1029994 (and d!1461099 d!1460881)))

(declare-fun lambda!194616 () Int)

(assert (=> bs!1029994 (= lambda!194616 lambda!194515)))

(declare-fun bs!1029995 () Bool)

(assert (= bs!1029995 (and d!1461099 b!4634168)))

(assert (=> bs!1029995 (= lambda!194616 lambda!194478)))

(declare-fun bs!1029996 () Bool)

(assert (= bs!1029996 (and d!1461099 d!1461031)))

(assert (=> bs!1029996 (= lambda!194616 lambda!194593)))

(declare-fun bs!1029997 () Bool)

(assert (= bs!1029997 (and d!1461099 d!1461021)))

(assert (=> bs!1029997 (= lambda!194616 lambda!194592)))

(declare-fun bs!1029998 () Bool)

(assert (= bs!1029998 (and d!1461099 d!1461093)))

(assert (=> bs!1029998 (= lambda!194616 lambda!194609)))

(declare-fun bs!1029999 () Bool)

(assert (= bs!1029999 (and d!1461099 d!1461017)))

(assert (=> bs!1029999 (= lambda!194616 lambda!194586)))

(declare-fun b!4634557 () Bool)

(declare-fun res!1945119 () Bool)

(declare-fun e!2891142 () Bool)

(assert (=> b!4634557 (=> (not res!1945119) (not e!2891142))))

(declare-fun allKeysSameHashInMap!1562 (ListLongMap!3639 Hashable!5939) Bool)

(assert (=> b!4634557 (= res!1945119 (allKeysSameHashInMap!1562 lt!1795854 hashF!1389))))

(assert (=> d!1461099 e!2891142))

(declare-fun res!1945117 () Bool)

(assert (=> d!1461099 (=> (not res!1945117) (not e!2891142))))

(assert (=> d!1461099 (= res!1945117 (forall!10886 (toList!5050 lt!1795854) lambda!194616))))

(declare-fun lt!1796458 () Unit!114003)

(declare-fun choose!31630 (ListLongMap!3639 K!13005 Hashable!5939) Unit!114003)

(assert (=> d!1461099 (= lt!1796458 (choose!31630 lt!1795854 key!4968 hashF!1389))))

(assert (=> d!1461099 (forall!10886 (toList!5050 lt!1795854) lambda!194616)))

(assert (=> d!1461099 (= (lemmaInGenMapThenGetPairDefined!130 lt!1795854 key!4968 hashF!1389) lt!1796458)))

(declare-fun lt!1796455 () List!51762)

(declare-fun e!2891143 () Bool)

(declare-fun lt!1796457 () (_ BitVec 64))

(declare-fun b!4634560 () Bool)

(assert (=> b!4634560 (= e!2891143 (= (getValueByKey!1516 (toList!5050 lt!1795854) lt!1796457) (Some!11691 lt!1796455)))))

(declare-fun b!4634559 () Bool)

(assert (=> b!4634559 (= e!2891142 (isDefined!8953 (getPair!334 (apply!12207 lt!1795854 (hash!3598 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1796459 () Unit!114003)

(assert (=> b!4634559 (= lt!1796459 (forallContained!3118 (toList!5050 lt!1795854) lambda!194616 (tuple2!52617 (hash!3598 hashF!1389 key!4968) (apply!12207 lt!1795854 (hash!3598 hashF!1389 key!4968)))))))

(declare-fun lt!1796456 () Unit!114003)

(declare-fun lt!1796454 () Unit!114003)

(assert (=> b!4634559 (= lt!1796456 lt!1796454)))

(assert (=> b!4634559 (contains!14750 (toList!5050 lt!1795854) (tuple2!52617 lt!1796457 lt!1796455))))

(assert (=> b!4634559 (= lt!1796454 (lemmaGetValueImpliesTupleContained!139 lt!1795854 lt!1796457 lt!1796455))))

(assert (=> b!4634559 e!2891143))

(declare-fun res!1945120 () Bool)

(assert (=> b!4634559 (=> (not res!1945120) (not e!2891143))))

(assert (=> b!4634559 (= res!1945120 (contains!14751 lt!1795854 lt!1796457))))

(assert (=> b!4634559 (= lt!1796455 (apply!12207 lt!1795854 (hash!3598 hashF!1389 key!4968)))))

(assert (=> b!4634559 (= lt!1796457 (hash!3598 hashF!1389 key!4968))))

(declare-fun lt!1796453 () Unit!114003)

(declare-fun lt!1796452 () Unit!114003)

(assert (=> b!4634559 (= lt!1796453 lt!1796452)))

(assert (=> b!4634559 (contains!14751 lt!1795854 (hash!3598 hashF!1389 key!4968))))

(assert (=> b!4634559 (= lt!1796452 (lemmaInGenMapThenLongMapContainsHash!540 lt!1795854 key!4968 hashF!1389))))

(declare-fun b!4634558 () Bool)

(declare-fun res!1945118 () Bool)

(assert (=> b!4634558 (=> (not res!1945118) (not e!2891142))))

(assert (=> b!4634558 (= res!1945118 (contains!14749 (extractMap!1598 (toList!5050 lt!1795854)) key!4968))))

(assert (= (and d!1461099 res!1945117) b!4634557))

(assert (= (and b!4634557 res!1945119) b!4634558))

(assert (= (and b!4634558 res!1945118) b!4634559))

(assert (= (and b!4634559 res!1945120) b!4634560))

(declare-fun m!5489173 () Bool)

(assert (=> b!4634560 m!5489173))

(declare-fun m!5489175 () Bool)

(assert (=> b!4634558 m!5489175))

(assert (=> b!4634558 m!5489175))

(declare-fun m!5489177 () Bool)

(assert (=> b!4634558 m!5489177))

(declare-fun m!5489179 () Bool)

(assert (=> b!4634557 m!5489179))

(declare-fun m!5489181 () Bool)

(assert (=> d!1461099 m!5489181))

(declare-fun m!5489183 () Bool)

(assert (=> d!1461099 m!5489183))

(assert (=> d!1461099 m!5489181))

(declare-fun m!5489185 () Bool)

(assert (=> b!4634559 m!5489185))

(assert (=> b!4634559 m!5488109))

(assert (=> b!4634559 m!5489161))

(assert (=> b!4634559 m!5488125))

(declare-fun m!5489187 () Bool)

(assert (=> b!4634559 m!5489187))

(declare-fun m!5489189 () Bool)

(assert (=> b!4634559 m!5489189))

(declare-fun m!5489191 () Bool)

(assert (=> b!4634559 m!5489191))

(declare-fun m!5489193 () Bool)

(assert (=> b!4634559 m!5489193))

(declare-fun m!5489195 () Bool)

(assert (=> b!4634559 m!5489195))

(assert (=> b!4634559 m!5488109))

(assert (=> b!4634559 m!5489191))

(declare-fun m!5489197 () Bool)

(assert (=> b!4634559 m!5489197))

(assert (=> b!4634559 m!5488109))

(assert (=> b!4634559 m!5489189))

(assert (=> b!4634168 d!1461099))

(declare-fun d!1461101 () Bool)

(declare-fun dynLambda!21530 (Int tuple2!52616) Bool)

(assert (=> d!1461101 (dynLambda!21530 lambda!194478 lt!1795872)))

(declare-fun lt!1796462 () Unit!114003)

(declare-fun choose!31631 (List!51763 Int tuple2!52616) Unit!114003)

(assert (=> d!1461101 (= lt!1796462 (choose!31631 lt!1795866 lambda!194478 lt!1795872))))

(declare-fun e!2891146 () Bool)

(assert (=> d!1461101 e!2891146))

(declare-fun res!1945123 () Bool)

(assert (=> d!1461101 (=> (not res!1945123) (not e!2891146))))

(assert (=> d!1461101 (= res!1945123 (forall!10886 lt!1795866 lambda!194478))))

(assert (=> d!1461101 (= (forallContained!3118 lt!1795866 lambda!194478 lt!1795872) lt!1796462)))

(declare-fun b!4634563 () Bool)

(assert (=> b!4634563 (= e!2891146 (contains!14750 lt!1795866 lt!1795872))))

(assert (= (and d!1461101 res!1945123) b!4634563))

(declare-fun b_lambda!170965 () Bool)

(assert (=> (not b_lambda!170965) (not d!1461101)))

(declare-fun m!5489199 () Bool)

(assert (=> d!1461101 m!5489199))

(declare-fun m!5489201 () Bool)

(assert (=> d!1461101 m!5489201))

(declare-fun m!5489203 () Bool)

(assert (=> d!1461101 m!5489203))

(assert (=> b!4634563 m!5488129))

(assert (=> b!4634168 d!1461101))

(declare-fun d!1461103 () Bool)

(assert (=> d!1461103 (containsKey!2546 oldBucket!40 key!4968)))

(declare-fun lt!1796465 () Unit!114003)

(declare-fun choose!31632 (List!51762 K!13005 Hashable!5939) Unit!114003)

(assert (=> d!1461103 (= lt!1796465 (choose!31632 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1461103 (noDuplicateKeys!1542 oldBucket!40)))

(assert (=> d!1461103 (= (lemmaGetPairDefinedThenContainsKey!88 oldBucket!40 key!4968 hashF!1389) lt!1796465)))

(declare-fun bs!1030000 () Bool)

(assert (= bs!1030000 d!1461103))

(assert (=> bs!1030000 m!5488119))

(declare-fun m!5489205 () Bool)

(assert (=> bs!1030000 m!5489205))

(assert (=> bs!1030000 m!5488113))

(assert (=> b!4634168 d!1461103))

(declare-fun b!4634580 () Bool)

(declare-fun e!2891161 () Option!11688)

(assert (=> b!4634580 (= e!2891161 (getPair!334 (t!358826 lt!1795870) key!4968))))

(declare-fun b!4634581 () Bool)

(assert (=> b!4634581 (= e!2891161 None!11687)))

(declare-fun b!4634582 () Bool)

(declare-fun e!2891157 () Bool)

(declare-fun lt!1796468 () Option!11688)

(declare-fun get!17160 (Option!11688) tuple2!52614)

(assert (=> b!4634582 (= e!2891157 (contains!14755 lt!1795870 (get!17160 lt!1796468)))))

(declare-fun b!4634583 () Bool)

(declare-fun res!1945135 () Bool)

(assert (=> b!4634583 (=> (not res!1945135) (not e!2891157))))

(assert (=> b!4634583 (= res!1945135 (= (_1!29601 (get!17160 lt!1796468)) key!4968))))

(declare-fun d!1461105 () Bool)

(declare-fun e!2891160 () Bool)

(assert (=> d!1461105 e!2891160))

(declare-fun res!1945134 () Bool)

(assert (=> d!1461105 (=> res!1945134 e!2891160)))

(declare-fun e!2891159 () Bool)

(assert (=> d!1461105 (= res!1945134 e!2891159)))

(declare-fun res!1945133 () Bool)

(assert (=> d!1461105 (=> (not res!1945133) (not e!2891159))))

(declare-fun isEmpty!28962 (Option!11688) Bool)

(assert (=> d!1461105 (= res!1945133 (isEmpty!28962 lt!1796468))))

(declare-fun e!2891158 () Option!11688)

(assert (=> d!1461105 (= lt!1796468 e!2891158)))

(declare-fun c!793260 () Bool)

(assert (=> d!1461105 (= c!793260 (and ((_ is Cons!51638) lt!1795870) (= (_1!29601 (h!57720 lt!1795870)) key!4968)))))

(assert (=> d!1461105 (noDuplicateKeys!1542 lt!1795870)))

(assert (=> d!1461105 (= (getPair!334 lt!1795870 key!4968) lt!1796468)))

(declare-fun b!4634584 () Bool)

(assert (=> b!4634584 (= e!2891158 e!2891161)))

(declare-fun c!793259 () Bool)

(assert (=> b!4634584 (= c!793259 ((_ is Cons!51638) lt!1795870))))

(declare-fun b!4634585 () Bool)

(assert (=> b!4634585 (= e!2891159 (not (containsKey!2546 lt!1795870 key!4968)))))

(declare-fun b!4634586 () Bool)

(assert (=> b!4634586 (= e!2891160 e!2891157)))

(declare-fun res!1945132 () Bool)

(assert (=> b!4634586 (=> (not res!1945132) (not e!2891157))))

(assert (=> b!4634586 (= res!1945132 (isDefined!8953 lt!1796468))))

(declare-fun b!4634587 () Bool)

(assert (=> b!4634587 (= e!2891158 (Some!11687 (h!57720 lt!1795870)))))

(assert (= (and d!1461105 c!793260) b!4634587))

(assert (= (and d!1461105 (not c!793260)) b!4634584))

(assert (= (and b!4634584 c!793259) b!4634580))

(assert (= (and b!4634584 (not c!793259)) b!4634581))

(assert (= (and d!1461105 res!1945133) b!4634585))

(assert (= (and d!1461105 (not res!1945134)) b!4634586))

(assert (= (and b!4634586 res!1945132) b!4634583))

(assert (= (and b!4634583 res!1945135) b!4634582))

(declare-fun m!5489207 () Bool)

(assert (=> b!4634585 m!5489207))

(declare-fun m!5489209 () Bool)

(assert (=> b!4634586 m!5489209))

(declare-fun m!5489211 () Bool)

(assert (=> b!4634580 m!5489211))

(declare-fun m!5489213 () Bool)

(assert (=> d!1461105 m!5489213))

(declare-fun m!5489215 () Bool)

(assert (=> d!1461105 m!5489215))

(declare-fun m!5489217 () Bool)

(assert (=> b!4634582 m!5489217))

(assert (=> b!4634582 m!5489217))

(declare-fun m!5489219 () Bool)

(assert (=> b!4634582 m!5489219))

(assert (=> b!4634583 m!5489217))

(assert (=> b!4634168 d!1461105))

(declare-fun d!1461107 () Bool)

(assert (=> d!1461107 (= (isDefined!8953 (getPair!334 lt!1795870 key!4968)) (not (isEmpty!28962 (getPair!334 lt!1795870 key!4968))))))

(declare-fun bs!1030001 () Bool)

(assert (= bs!1030001 d!1461107))

(assert (=> bs!1030001 m!5488121))

(declare-fun m!5489221 () Bool)

(assert (=> bs!1030001 m!5489221))

(assert (=> b!4634168 d!1461107))

(declare-fun bs!1030002 () Bool)

(declare-fun b!4634588 () Bool)

(assert (= bs!1030002 (and b!4634588 b!4634492)))

(declare-fun lambda!194617 () Int)

(assert (=> bs!1030002 (= (= lt!1795859 lt!1796346) (= lambda!194617 lambda!194598))))

(declare-fun bs!1030003 () Bool)

(assert (= bs!1030003 (and b!4634588 d!1461043)))

(assert (=> bs!1030003 (= (= lt!1795859 lt!1796361) (= lambda!194617 lambda!194599))))

(declare-fun bs!1030004 () Bool)

(assert (= bs!1030004 (and b!4634588 b!4634503)))

(assert (=> bs!1030004 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194601))))

(declare-fun bs!1030005 () Bool)

(assert (= bs!1030005 (and b!4634588 b!4634441)))

(assert (=> bs!1030005 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194575))))

(declare-fun bs!1030006 () Bool)

(assert (= bs!1030006 (and b!4634588 b!4634453)))

(assert (=> bs!1030006 (= (= lt!1795859 lt!1796275) (= lambda!194617 lambda!194582))))

(declare-fun bs!1030007 () Bool)

(assert (= bs!1030007 (and b!4634588 b!4634449)))

(assert (=> bs!1030007 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194579))))

(assert (=> bs!1030002 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194597))))

(declare-fun bs!1030008 () Bool)

(assert (= bs!1030008 (and b!4634588 d!1461051)))

(assert (=> bs!1030008 (= (= lt!1795859 lt!1796382) (= lambda!194617 lambda!194603))))

(declare-fun bs!1030009 () Bool)

(assert (= bs!1030009 (and b!4634588 b!4634488)))

(assert (=> bs!1030009 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194595))))

(assert (=> bs!1030004 (= (= lt!1795859 lt!1796367) (= lambda!194617 lambda!194602))))

(assert (=> bs!1030005 (= (= lt!1795859 lt!1796233) (= lambda!194617 lambda!194576))))

(assert (=> bs!1030006 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194581))))

(declare-fun bs!1030010 () Bool)

(assert (= bs!1030010 (and b!4634588 d!1461011)))

(assert (=> bs!1030010 (= (= lt!1795859 lt!1796290) (= lambda!194617 lambda!194584))))

(declare-fun bs!1030011 () Bool)

(assert (= bs!1030011 (and b!4634588 d!1460951)))

(assert (=> bs!1030011 (= (= lt!1795859 lt!1796248) (= lambda!194617 lambda!194577))))

(declare-fun bs!1030012 () Bool)

(assert (= bs!1030012 (and b!4634588 b!4634437)))

(assert (=> bs!1030012 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194574))))

(declare-fun bs!1030013 () Bool)

(assert (= bs!1030013 (and b!4634588 d!1461075)))

(assert (=> bs!1030013 (not (= lambda!194617 lambda!194606))))

(declare-fun bs!1030014 () Bool)

(assert (= bs!1030014 (and b!4634588 b!4634499)))

(assert (=> bs!1030014 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194617 lambda!194600))))

(assert (=> b!4634588 true))

(declare-fun bs!1030015 () Bool)

(declare-fun b!4634592 () Bool)

(assert (= bs!1030015 (and b!4634592 b!4634492)))

(declare-fun lambda!194618 () Int)

(assert (=> bs!1030015 (= (= lt!1795859 lt!1796346) (= lambda!194618 lambda!194598))))

(declare-fun bs!1030016 () Bool)

(assert (= bs!1030016 (and b!4634592 d!1461043)))

(assert (=> bs!1030016 (= (= lt!1795859 lt!1796361) (= lambda!194618 lambda!194599))))

(declare-fun bs!1030017 () Bool)

(assert (= bs!1030017 (and b!4634592 b!4634503)))

(assert (=> bs!1030017 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194601))))

(declare-fun bs!1030018 () Bool)

(assert (= bs!1030018 (and b!4634592 b!4634441)))

(assert (=> bs!1030018 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194575))))

(declare-fun bs!1030019 () Bool)

(assert (= bs!1030019 (and b!4634592 b!4634453)))

(assert (=> bs!1030019 (= (= lt!1795859 lt!1796275) (= lambda!194618 lambda!194582))))

(declare-fun bs!1030020 () Bool)

(assert (= bs!1030020 (and b!4634592 b!4634449)))

(assert (=> bs!1030020 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194579))))

(assert (=> bs!1030015 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194597))))

(declare-fun bs!1030021 () Bool)

(assert (= bs!1030021 (and b!4634592 d!1461051)))

(assert (=> bs!1030021 (= (= lt!1795859 lt!1796382) (= lambda!194618 lambda!194603))))

(declare-fun bs!1030022 () Bool)

(assert (= bs!1030022 (and b!4634592 b!4634488)))

(assert (=> bs!1030022 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194595))))

(assert (=> bs!1030017 (= (= lt!1795859 lt!1796367) (= lambda!194618 lambda!194602))))

(assert (=> bs!1030018 (= (= lt!1795859 lt!1796233) (= lambda!194618 lambda!194576))))

(assert (=> bs!1030019 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194581))))

(declare-fun bs!1030023 () Bool)

(assert (= bs!1030023 (and b!4634592 d!1461011)))

(assert (=> bs!1030023 (= (= lt!1795859 lt!1796290) (= lambda!194618 lambda!194584))))

(declare-fun bs!1030024 () Bool)

(assert (= bs!1030024 (and b!4634592 d!1460951)))

(assert (=> bs!1030024 (= (= lt!1795859 lt!1796248) (= lambda!194618 lambda!194577))))

(declare-fun bs!1030025 () Bool)

(assert (= bs!1030025 (and b!4634592 b!4634437)))

(assert (=> bs!1030025 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194574))))

(declare-fun bs!1030026 () Bool)

(assert (= bs!1030026 (and b!4634592 d!1461075)))

(assert (=> bs!1030026 (not (= lambda!194618 lambda!194606))))

(declare-fun bs!1030027 () Bool)

(assert (= bs!1030027 (and b!4634592 b!4634588)))

(assert (=> bs!1030027 (= lambda!194618 lambda!194617)))

(declare-fun bs!1030028 () Bool)

(assert (= bs!1030028 (and b!4634592 b!4634499)))

(assert (=> bs!1030028 (= (= lt!1795859 (ListMap!4354 Nil!51638)) (= lambda!194618 lambda!194600))))

(assert (=> b!4634592 true))

(declare-fun lt!1796470 () ListMap!4353)

(declare-fun lambda!194619 () Int)

(assert (=> bs!1030015 (= (= lt!1796470 lt!1796346) (= lambda!194619 lambda!194598))))

(assert (=> b!4634592 (= (= lt!1796470 lt!1795859) (= lambda!194619 lambda!194618))))

(assert (=> bs!1030016 (= (= lt!1796470 lt!1796361) (= lambda!194619 lambda!194599))))

(assert (=> bs!1030017 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194601))))

(assert (=> bs!1030018 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194575))))

(assert (=> bs!1030019 (= (= lt!1796470 lt!1796275) (= lambda!194619 lambda!194582))))

(assert (=> bs!1030020 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194579))))

(assert (=> bs!1030015 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194597))))

(assert (=> bs!1030021 (= (= lt!1796470 lt!1796382) (= lambda!194619 lambda!194603))))

(assert (=> bs!1030022 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194595))))

(assert (=> bs!1030017 (= (= lt!1796470 lt!1796367) (= lambda!194619 lambda!194602))))

(assert (=> bs!1030018 (= (= lt!1796470 lt!1796233) (= lambda!194619 lambda!194576))))

(assert (=> bs!1030019 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194581))))

(assert (=> bs!1030023 (= (= lt!1796470 lt!1796290) (= lambda!194619 lambda!194584))))

(assert (=> bs!1030024 (= (= lt!1796470 lt!1796248) (= lambda!194619 lambda!194577))))

(assert (=> bs!1030025 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194574))))

(assert (=> bs!1030026 (not (= lambda!194619 lambda!194606))))

(assert (=> bs!1030027 (= (= lt!1796470 lt!1795859) (= lambda!194619 lambda!194617))))

(assert (=> bs!1030028 (= (= lt!1796470 (ListMap!4354 Nil!51638)) (= lambda!194619 lambda!194600))))

(assert (=> b!4634592 true))

(declare-fun bs!1030029 () Bool)

(declare-fun d!1461109 () Bool)

(assert (= bs!1030029 (and d!1461109 b!4634492)))

(declare-fun lt!1796485 () ListMap!4353)

(declare-fun lambda!194620 () Int)

(assert (=> bs!1030029 (= (= lt!1796485 lt!1796346) (= lambda!194620 lambda!194598))))

(declare-fun bs!1030030 () Bool)

(assert (= bs!1030030 (and d!1461109 b!4634592)))

(assert (=> bs!1030030 (= (= lt!1796485 lt!1795859) (= lambda!194620 lambda!194618))))

(assert (=> bs!1030030 (= (= lt!1796485 lt!1796470) (= lambda!194620 lambda!194619))))

(declare-fun bs!1030031 () Bool)

(assert (= bs!1030031 (and d!1461109 d!1461043)))

(assert (=> bs!1030031 (= (= lt!1796485 lt!1796361) (= lambda!194620 lambda!194599))))

(declare-fun bs!1030032 () Bool)

(assert (= bs!1030032 (and d!1461109 b!4634503)))

(assert (=> bs!1030032 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194601))))

(declare-fun bs!1030033 () Bool)

(assert (= bs!1030033 (and d!1461109 b!4634441)))

(assert (=> bs!1030033 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194575))))

(declare-fun bs!1030034 () Bool)

(assert (= bs!1030034 (and d!1461109 b!4634453)))

(assert (=> bs!1030034 (= (= lt!1796485 lt!1796275) (= lambda!194620 lambda!194582))))

(declare-fun bs!1030035 () Bool)

(assert (= bs!1030035 (and d!1461109 b!4634449)))

(assert (=> bs!1030035 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194579))))

(assert (=> bs!1030029 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194597))))

(declare-fun bs!1030036 () Bool)

(assert (= bs!1030036 (and d!1461109 d!1461051)))

(assert (=> bs!1030036 (= (= lt!1796485 lt!1796382) (= lambda!194620 lambda!194603))))

(declare-fun bs!1030037 () Bool)

(assert (= bs!1030037 (and d!1461109 b!4634488)))

(assert (=> bs!1030037 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194595))))

(assert (=> bs!1030032 (= (= lt!1796485 lt!1796367) (= lambda!194620 lambda!194602))))

(assert (=> bs!1030033 (= (= lt!1796485 lt!1796233) (= lambda!194620 lambda!194576))))

(assert (=> bs!1030034 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194581))))

(declare-fun bs!1030038 () Bool)

(assert (= bs!1030038 (and d!1461109 d!1461011)))

(assert (=> bs!1030038 (= (= lt!1796485 lt!1796290) (= lambda!194620 lambda!194584))))

(declare-fun bs!1030039 () Bool)

(assert (= bs!1030039 (and d!1461109 d!1460951)))

(assert (=> bs!1030039 (= (= lt!1796485 lt!1796248) (= lambda!194620 lambda!194577))))

(declare-fun bs!1030040 () Bool)

(assert (= bs!1030040 (and d!1461109 b!4634437)))

(assert (=> bs!1030040 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194574))))

(declare-fun bs!1030041 () Bool)

(assert (= bs!1030041 (and d!1461109 d!1461075)))

(assert (=> bs!1030041 (not (= lambda!194620 lambda!194606))))

(declare-fun bs!1030042 () Bool)

(assert (= bs!1030042 (and d!1461109 b!4634588)))

(assert (=> bs!1030042 (= (= lt!1796485 lt!1795859) (= lambda!194620 lambda!194617))))

(declare-fun bs!1030043 () Bool)

(assert (= bs!1030043 (and d!1461109 b!4634499)))

(assert (=> bs!1030043 (= (= lt!1796485 (ListMap!4354 Nil!51638)) (= lambda!194620 lambda!194600))))

(assert (=> d!1461109 true))

(declare-fun e!2891164 () ListMap!4353)

(assert (=> b!4634588 (= e!2891164 lt!1795859)))

(declare-fun lt!1796481 () Unit!114003)

(declare-fun call!323450 () Unit!114003)

(assert (=> b!4634588 (= lt!1796481 call!323450)))

(declare-fun call!323449 () Bool)

(assert (=> b!4634588 call!323449))

(declare-fun lt!1796479 () Unit!114003)

(assert (=> b!4634588 (= lt!1796479 lt!1796481)))

(declare-fun call!323451 () Bool)

(assert (=> b!4634588 call!323451))

(declare-fun lt!1796484 () Unit!114003)

(declare-fun Unit!114114 () Unit!114003)

(assert (=> b!4634588 (= lt!1796484 Unit!114114)))

(declare-fun e!2891163 () Bool)

(assert (=> d!1461109 e!2891163))

(declare-fun res!1945136 () Bool)

(assert (=> d!1461109 (=> (not res!1945136) (not e!2891163))))

(assert (=> d!1461109 (= res!1945136 (forall!10888 oldBucket!40 lambda!194620))))

(assert (=> d!1461109 (= lt!1796485 e!2891164)))

(declare-fun c!793261 () Bool)

(assert (=> d!1461109 (= c!793261 ((_ is Nil!51638) oldBucket!40))))

(assert (=> d!1461109 (noDuplicateKeys!1542 oldBucket!40)))

(assert (=> d!1461109 (= (addToMapMapFromBucket!1003 oldBucket!40 lt!1795859) lt!1796485)))

(declare-fun bm!323444 () Bool)

(assert (=> bm!323444 (= call!323451 (forall!10888 (toList!5049 lt!1795859) (ite c!793261 lambda!194617 lambda!194619)))))

(declare-fun bm!323445 () Bool)

(assert (=> bm!323445 (= call!323449 (forall!10888 (ite c!793261 (toList!5049 lt!1795859) oldBucket!40) (ite c!793261 lambda!194617 lambda!194619)))))

(declare-fun b!4634589 () Bool)

(declare-fun res!1945138 () Bool)

(assert (=> b!4634589 (=> (not res!1945138) (not e!2891163))))

(assert (=> b!4634589 (= res!1945138 (forall!10888 (toList!5049 lt!1795859) lambda!194620))))

(declare-fun b!4634590 () Bool)

(assert (=> b!4634590 (= e!2891163 (invariantList!1236 (toList!5049 lt!1796485)))))

(declare-fun bm!323446 () Bool)

(assert (=> bm!323446 (= call!323450 (lemmaContainsAllItsOwnKeys!538 lt!1795859))))

(declare-fun b!4634591 () Bool)

(declare-fun e!2891162 () Bool)

(assert (=> b!4634591 (= e!2891162 (forall!10888 (toList!5049 lt!1795859) lambda!194619))))

(assert (=> b!4634592 (= e!2891164 lt!1796470)))

(declare-fun lt!1796480 () ListMap!4353)

(assert (=> b!4634592 (= lt!1796480 (+!1908 lt!1795859 (h!57720 oldBucket!40)))))

(assert (=> b!4634592 (= lt!1796470 (addToMapMapFromBucket!1003 (t!358826 oldBucket!40) (+!1908 lt!1795859 (h!57720 oldBucket!40))))))

(declare-fun lt!1796488 () Unit!114003)

(assert (=> b!4634592 (= lt!1796488 call!323450)))

(assert (=> b!4634592 (forall!10888 (toList!5049 lt!1795859) lambda!194618)))

(declare-fun lt!1796474 () Unit!114003)

(assert (=> b!4634592 (= lt!1796474 lt!1796488)))

(assert (=> b!4634592 (forall!10888 (toList!5049 lt!1796480) lambda!194619)))

(declare-fun lt!1796472 () Unit!114003)

(declare-fun Unit!114115 () Unit!114003)

(assert (=> b!4634592 (= lt!1796472 Unit!114115)))

(assert (=> b!4634592 (forall!10888 (t!358826 oldBucket!40) lambda!194619)))

(declare-fun lt!1796483 () Unit!114003)

(declare-fun Unit!114116 () Unit!114003)

(assert (=> b!4634592 (= lt!1796483 Unit!114116)))

(declare-fun lt!1796477 () Unit!114003)

(declare-fun Unit!114117 () Unit!114003)

(assert (=> b!4634592 (= lt!1796477 Unit!114117)))

(declare-fun lt!1796476 () Unit!114003)

(assert (=> b!4634592 (= lt!1796476 (forallContained!3120 (toList!5049 lt!1796480) lambda!194619 (h!57720 oldBucket!40)))))

(assert (=> b!4634592 (contains!14749 lt!1796480 (_1!29601 (h!57720 oldBucket!40)))))

(declare-fun lt!1796482 () Unit!114003)

(declare-fun Unit!114118 () Unit!114003)

(assert (=> b!4634592 (= lt!1796482 Unit!114118)))

(assert (=> b!4634592 (contains!14749 lt!1796470 (_1!29601 (h!57720 oldBucket!40)))))

(declare-fun lt!1796486 () Unit!114003)

(declare-fun Unit!114119 () Unit!114003)

(assert (=> b!4634592 (= lt!1796486 Unit!114119)))

(assert (=> b!4634592 (forall!10888 oldBucket!40 lambda!194619)))

(declare-fun lt!1796469 () Unit!114003)

(declare-fun Unit!114120 () Unit!114003)

(assert (=> b!4634592 (= lt!1796469 Unit!114120)))

(assert (=> b!4634592 (forall!10888 (toList!5049 lt!1796480) lambda!194619)))

(declare-fun lt!1796487 () Unit!114003)

(declare-fun Unit!114121 () Unit!114003)

(assert (=> b!4634592 (= lt!1796487 Unit!114121)))

(declare-fun lt!1796489 () Unit!114003)

(declare-fun Unit!114122 () Unit!114003)

(assert (=> b!4634592 (= lt!1796489 Unit!114122)))

(declare-fun lt!1796473 () Unit!114003)

(assert (=> b!4634592 (= lt!1796473 (addForallContainsKeyThenBeforeAdding!537 lt!1795859 lt!1796470 (_1!29601 (h!57720 oldBucket!40)) (_2!29601 (h!57720 oldBucket!40))))))

(assert (=> b!4634592 (forall!10888 (toList!5049 lt!1795859) lambda!194619)))

(declare-fun lt!1796475 () Unit!114003)

(assert (=> b!4634592 (= lt!1796475 lt!1796473)))

(assert (=> b!4634592 call!323451))

(declare-fun lt!1796478 () Unit!114003)

(declare-fun Unit!114123 () Unit!114003)

(assert (=> b!4634592 (= lt!1796478 Unit!114123)))

(declare-fun res!1945137 () Bool)

(assert (=> b!4634592 (= res!1945137 call!323449)))

(assert (=> b!4634592 (=> (not res!1945137) (not e!2891162))))

(assert (=> b!4634592 e!2891162))

(declare-fun lt!1796471 () Unit!114003)

(declare-fun Unit!114124 () Unit!114003)

(assert (=> b!4634592 (= lt!1796471 Unit!114124)))

(assert (= (and d!1461109 c!793261) b!4634588))

(assert (= (and d!1461109 (not c!793261)) b!4634592))

(assert (= (and b!4634592 res!1945137) b!4634591))

(assert (= (or b!4634588 b!4634592) bm!323446))

(assert (= (or b!4634588 b!4634592) bm!323445))

(assert (= (or b!4634588 b!4634592) bm!323444))

(assert (= (and d!1461109 res!1945136) b!4634589))

(assert (= (and b!4634589 res!1945138) b!4634590))

(declare-fun m!5489223 () Bool)

(assert (=> d!1461109 m!5489223))

(assert (=> d!1461109 m!5488113))

(declare-fun m!5489225 () Bool)

(assert (=> bm!323446 m!5489225))

(declare-fun m!5489227 () Bool)

(assert (=> bm!323444 m!5489227))

(declare-fun m!5489229 () Bool)

(assert (=> b!4634589 m!5489229))

(declare-fun m!5489231 () Bool)

(assert (=> b!4634592 m!5489231))

(declare-fun m!5489233 () Bool)

(assert (=> b!4634592 m!5489233))

(assert (=> b!4634592 m!5489231))

(declare-fun m!5489235 () Bool)

(assert (=> b!4634592 m!5489235))

(declare-fun m!5489237 () Bool)

(assert (=> b!4634592 m!5489237))

(declare-fun m!5489239 () Bool)

(assert (=> b!4634592 m!5489239))

(declare-fun m!5489241 () Bool)

(assert (=> b!4634592 m!5489241))

(declare-fun m!5489243 () Bool)

(assert (=> b!4634592 m!5489243))

(declare-fun m!5489245 () Bool)

(assert (=> b!4634592 m!5489245))

(declare-fun m!5489247 () Bool)

(assert (=> b!4634592 m!5489247))

(declare-fun m!5489249 () Bool)

(assert (=> b!4634592 m!5489249))

(assert (=> b!4634592 m!5489245))

(declare-fun m!5489251 () Bool)

(assert (=> b!4634592 m!5489251))

(assert (=> b!4634591 m!5489239))

(declare-fun m!5489253 () Bool)

(assert (=> bm!323445 m!5489253))

(declare-fun m!5489255 () Bool)

(assert (=> b!4634590 m!5489255))

(assert (=> b!4634175 d!1461109))

(declare-fun bs!1030044 () Bool)

(declare-fun d!1461111 () Bool)

(assert (= bs!1030044 (and d!1461111 d!1460881)))

(declare-fun lambda!194621 () Int)

(assert (=> bs!1030044 (= lambda!194621 lambda!194515)))

(declare-fun bs!1030045 () Bool)

(assert (= bs!1030045 (and d!1461111 b!4634168)))

(assert (=> bs!1030045 (= lambda!194621 lambda!194478)))

(declare-fun bs!1030046 () Bool)

(assert (= bs!1030046 (and d!1461111 d!1461031)))

(assert (=> bs!1030046 (= lambda!194621 lambda!194593)))

(declare-fun bs!1030047 () Bool)

(assert (= bs!1030047 (and d!1461111 d!1461021)))

(assert (=> bs!1030047 (= lambda!194621 lambda!194592)))

(declare-fun bs!1030048 () Bool)

(assert (= bs!1030048 (and d!1461111 d!1461093)))

(assert (=> bs!1030048 (= lambda!194621 lambda!194609)))

(declare-fun bs!1030049 () Bool)

(assert (= bs!1030049 (and d!1461111 d!1461099)))

(assert (=> bs!1030049 (= lambda!194621 lambda!194616)))

(declare-fun bs!1030050 () Bool)

(assert (= bs!1030050 (and d!1461111 d!1461017)))

(assert (=> bs!1030050 (= lambda!194621 lambda!194586)))

(declare-fun lt!1796490 () ListMap!4353)

(assert (=> d!1461111 (invariantList!1236 (toList!5049 lt!1796490))))

(declare-fun e!2891165 () ListMap!4353)

(assert (=> d!1461111 (= lt!1796490 e!2891165)))

(declare-fun c!793262 () Bool)

(assert (=> d!1461111 (= c!793262 ((_ is Cons!51639) Nil!51639))))

(assert (=> d!1461111 (forall!10886 Nil!51639 lambda!194621)))

(assert (=> d!1461111 (= (extractMap!1598 Nil!51639) lt!1796490)))

(declare-fun b!4634593 () Bool)

(assert (=> b!4634593 (= e!2891165 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 Nil!51639)) (extractMap!1598 (t!358827 Nil!51639))))))

(declare-fun b!4634594 () Bool)

(assert (=> b!4634594 (= e!2891165 (ListMap!4354 Nil!51638))))

(assert (= (and d!1461111 c!793262) b!4634593))

(assert (= (and d!1461111 (not c!793262)) b!4634594))

(declare-fun m!5489257 () Bool)

(assert (=> d!1461111 m!5489257))

(declare-fun m!5489259 () Bool)

(assert (=> d!1461111 m!5489259))

(declare-fun m!5489261 () Bool)

(assert (=> b!4634593 m!5489261))

(assert (=> b!4634593 m!5489261))

(declare-fun m!5489263 () Bool)

(assert (=> b!4634593 m!5489263))

(assert (=> b!4634175 d!1461111))

(declare-fun bs!1030051 () Bool)

(declare-fun d!1461113 () Bool)

(assert (= bs!1030051 (and d!1461113 b!4634492)))

(declare-fun lambda!194622 () Int)

(assert (=> bs!1030051 (not (= lambda!194622 lambda!194598))))

(declare-fun bs!1030052 () Bool)

(assert (= bs!1030052 (and d!1461113 b!4634592)))

(assert (=> bs!1030052 (not (= lambda!194622 lambda!194618))))

(assert (=> bs!1030052 (not (= lambda!194622 lambda!194619))))

(declare-fun bs!1030053 () Bool)

(assert (= bs!1030053 (and d!1461113 b!4634503)))

(assert (=> bs!1030053 (not (= lambda!194622 lambda!194601))))

(declare-fun bs!1030054 () Bool)

(assert (= bs!1030054 (and d!1461113 b!4634441)))

(assert (=> bs!1030054 (not (= lambda!194622 lambda!194575))))

(declare-fun bs!1030055 () Bool)

(assert (= bs!1030055 (and d!1461113 b!4634453)))

(assert (=> bs!1030055 (not (= lambda!194622 lambda!194582))))

(declare-fun bs!1030056 () Bool)

(assert (= bs!1030056 (and d!1461113 b!4634449)))

(assert (=> bs!1030056 (not (= lambda!194622 lambda!194579))))

(assert (=> bs!1030051 (not (= lambda!194622 lambda!194597))))

(declare-fun bs!1030057 () Bool)

(assert (= bs!1030057 (and d!1461113 d!1461051)))

(assert (=> bs!1030057 (not (= lambda!194622 lambda!194603))))

(declare-fun bs!1030058 () Bool)

(assert (= bs!1030058 (and d!1461113 b!4634488)))

(assert (=> bs!1030058 (not (= lambda!194622 lambda!194595))))

(assert (=> bs!1030053 (not (= lambda!194622 lambda!194602))))

(assert (=> bs!1030054 (not (= lambda!194622 lambda!194576))))

(assert (=> bs!1030055 (not (= lambda!194622 lambda!194581))))

(declare-fun bs!1030059 () Bool)

(assert (= bs!1030059 (and d!1461113 d!1461011)))

(assert (=> bs!1030059 (not (= lambda!194622 lambda!194584))))

(declare-fun bs!1030060 () Bool)

(assert (= bs!1030060 (and d!1461113 d!1460951)))

(assert (=> bs!1030060 (not (= lambda!194622 lambda!194577))))

(declare-fun bs!1030061 () Bool)

(assert (= bs!1030061 (and d!1461113 b!4634437)))

(assert (=> bs!1030061 (not (= lambda!194622 lambda!194574))))

(declare-fun bs!1030062 () Bool)

(assert (= bs!1030062 (and d!1461113 d!1461043)))

(assert (=> bs!1030062 (not (= lambda!194622 lambda!194599))))

(declare-fun bs!1030063 () Bool)

(assert (= bs!1030063 (and d!1461113 d!1461109)))

(assert (=> bs!1030063 (not (= lambda!194622 lambda!194620))))

(declare-fun bs!1030064 () Bool)

(assert (= bs!1030064 (and d!1461113 d!1461075)))

(assert (=> bs!1030064 (= lambda!194622 lambda!194606)))

(declare-fun bs!1030065 () Bool)

(assert (= bs!1030065 (and d!1461113 b!4634588)))

(assert (=> bs!1030065 (not (= lambda!194622 lambda!194617))))

(declare-fun bs!1030066 () Bool)

(assert (= bs!1030066 (and d!1461113 b!4634499)))

(assert (=> bs!1030066 (not (= lambda!194622 lambda!194600))))

(assert (=> d!1461113 true))

(assert (=> d!1461113 true))

(assert (=> d!1461113 (= (allKeysSameHash!1396 newBucket!224 hash!414 hashF!1389) (forall!10888 newBucket!224 lambda!194622))))

(declare-fun bs!1030067 () Bool)

(assert (= bs!1030067 d!1461113))

(declare-fun m!5489265 () Bool)

(assert (=> bs!1030067 m!5489265))

(assert (=> b!4634165 d!1461113))

(declare-fun d!1461115 () Bool)

(declare-fun res!1945143 () Bool)

(declare-fun e!2891170 () Bool)

(assert (=> d!1461115 (=> res!1945143 e!2891170)))

(assert (=> d!1461115 (= res!1945143 ((_ is Nil!51639) lt!1795862))))

(assert (=> d!1461115 (= (forall!10886 lt!1795862 lambda!194478) e!2891170)))

(declare-fun b!4634599 () Bool)

(declare-fun e!2891171 () Bool)

(assert (=> b!4634599 (= e!2891170 e!2891171)))

(declare-fun res!1945144 () Bool)

(assert (=> b!4634599 (=> (not res!1945144) (not e!2891171))))

(assert (=> b!4634599 (= res!1945144 (dynLambda!21530 lambda!194478 (h!57721 lt!1795862)))))

(declare-fun b!4634600 () Bool)

(assert (=> b!4634600 (= e!2891171 (forall!10886 (t!358827 lt!1795862) lambda!194478))))

(assert (= (and d!1461115 (not res!1945143)) b!4634599))

(assert (= (and b!4634599 res!1945144) b!4634600))

(declare-fun b_lambda!170967 () Bool)

(assert (=> (not b_lambda!170967) (not b!4634599)))

(declare-fun m!5489267 () Bool)

(assert (=> b!4634599 m!5489267))

(declare-fun m!5489269 () Bool)

(assert (=> b!4634600 m!5489269))

(assert (=> b!4634176 d!1461115))

(declare-fun d!1461117 () Bool)

(declare-fun hash!3602 (Hashable!5939 K!13005) (_ BitVec 64))

(assert (=> d!1461117 (= (hash!3598 hashF!1389 key!4968) (hash!3602 hashF!1389 key!4968))))

(declare-fun bs!1030068 () Bool)

(assert (= bs!1030068 d!1461117))

(declare-fun m!5489271 () Bool)

(assert (=> bs!1030068 m!5489271))

(assert (=> b!4634163 d!1461117))

(declare-fun b!4634602 () Bool)

(declare-fun e!2891173 () List!51762)

(declare-fun e!2891172 () List!51762)

(assert (=> b!4634602 (= e!2891173 e!2891172)))

(declare-fun c!793264 () Bool)

(assert (=> b!4634602 (= c!793264 ((_ is Cons!51638) (t!358826 oldBucket!40)))))

(declare-fun b!4634603 () Bool)

(assert (=> b!4634603 (= e!2891172 (Cons!51638 (h!57720 (t!358826 oldBucket!40)) (removePairForKey!1165 (t!358826 (t!358826 oldBucket!40)) key!4968)))))

(declare-fun d!1461119 () Bool)

(declare-fun lt!1796491 () List!51762)

(assert (=> d!1461119 (not (containsKey!2546 lt!1796491 key!4968))))

(assert (=> d!1461119 (= lt!1796491 e!2891173)))

(declare-fun c!793263 () Bool)

(assert (=> d!1461119 (= c!793263 (and ((_ is Cons!51638) (t!358826 oldBucket!40)) (= (_1!29601 (h!57720 (t!358826 oldBucket!40))) key!4968)))))

(assert (=> d!1461119 (noDuplicateKeys!1542 (t!358826 oldBucket!40))))

(assert (=> d!1461119 (= (removePairForKey!1165 (t!358826 oldBucket!40) key!4968) lt!1796491)))

(declare-fun b!4634601 () Bool)

(assert (=> b!4634601 (= e!2891173 (t!358826 (t!358826 oldBucket!40)))))

(declare-fun b!4634604 () Bool)

(assert (=> b!4634604 (= e!2891172 Nil!51638)))

(assert (= (and d!1461119 c!793263) b!4634601))

(assert (= (and d!1461119 (not c!793263)) b!4634602))

(assert (= (and b!4634602 c!793264) b!4634603))

(assert (= (and b!4634602 (not c!793264)) b!4634604))

(declare-fun m!5489273 () Bool)

(assert (=> b!4634603 m!5489273))

(declare-fun m!5489275 () Bool)

(assert (=> d!1461119 m!5489275))

(assert (=> d!1461119 m!5489091))

(assert (=> b!4634174 d!1461119))

(declare-fun d!1461121 () Bool)

(assert (=> d!1461121 (= (eq!857 lt!1795875 (+!1908 lt!1795856 lt!1795865)) (= (content!8893 (toList!5049 lt!1795875)) (content!8893 (toList!5049 (+!1908 lt!1795856 lt!1795865)))))))

(declare-fun bs!1030069 () Bool)

(assert (= bs!1030069 d!1461121))

(assert (=> bs!1030069 m!5489117))

(declare-fun m!5489277 () Bool)

(assert (=> bs!1030069 m!5489277))

(assert (=> b!4634162 d!1461121))

(declare-fun d!1461123 () Bool)

(declare-fun e!2891174 () Bool)

(assert (=> d!1461123 e!2891174))

(declare-fun res!1945146 () Bool)

(assert (=> d!1461123 (=> (not res!1945146) (not e!2891174))))

(declare-fun lt!1796492 () ListMap!4353)

(assert (=> d!1461123 (= res!1945146 (contains!14749 lt!1796492 (_1!29601 lt!1795865)))))

(declare-fun lt!1796493 () List!51762)

(assert (=> d!1461123 (= lt!1796492 (ListMap!4354 lt!1796493))))

(declare-fun lt!1796495 () Unit!114003)

(declare-fun lt!1796494 () Unit!114003)

(assert (=> d!1461123 (= lt!1796495 lt!1796494)))

(assert (=> d!1461123 (= (getValueByKey!1515 lt!1796493 (_1!29601 lt!1795865)) (Some!11690 (_2!29601 lt!1795865)))))

(assert (=> d!1461123 (= lt!1796494 (lemmaContainsTupThenGetReturnValue!880 lt!1796493 (_1!29601 lt!1795865) (_2!29601 lt!1795865)))))

(assert (=> d!1461123 (= lt!1796493 (insertNoDuplicatedKeys!388 (toList!5049 lt!1795856) (_1!29601 lt!1795865) (_2!29601 lt!1795865)))))

(assert (=> d!1461123 (= (+!1908 lt!1795856 lt!1795865) lt!1796492)))

(declare-fun b!4634605 () Bool)

(declare-fun res!1945145 () Bool)

(assert (=> b!4634605 (=> (not res!1945145) (not e!2891174))))

(assert (=> b!4634605 (= res!1945145 (= (getValueByKey!1515 (toList!5049 lt!1796492) (_1!29601 lt!1795865)) (Some!11690 (_2!29601 lt!1795865))))))

(declare-fun b!4634606 () Bool)

(assert (=> b!4634606 (= e!2891174 (contains!14755 (toList!5049 lt!1796492) lt!1795865))))

(assert (= (and d!1461123 res!1945146) b!4634605))

(assert (= (and b!4634605 res!1945145) b!4634606))

(declare-fun m!5489279 () Bool)

(assert (=> d!1461123 m!5489279))

(declare-fun m!5489281 () Bool)

(assert (=> d!1461123 m!5489281))

(declare-fun m!5489283 () Bool)

(assert (=> d!1461123 m!5489283))

(declare-fun m!5489285 () Bool)

(assert (=> d!1461123 m!5489285))

(declare-fun m!5489287 () Bool)

(assert (=> b!4634605 m!5489287))

(declare-fun m!5489289 () Bool)

(assert (=> b!4634606 m!5489289))

(assert (=> b!4634162 d!1461123))

(declare-fun bs!1030070 () Bool)

(declare-fun d!1461125 () Bool)

(assert (= bs!1030070 (and d!1461125 d!1460881)))

(declare-fun lambda!194623 () Int)

(assert (=> bs!1030070 (= lambda!194623 lambda!194515)))

(declare-fun bs!1030071 () Bool)

(assert (= bs!1030071 (and d!1461125 b!4634168)))

(assert (=> bs!1030071 (= lambda!194623 lambda!194478)))

(declare-fun bs!1030072 () Bool)

(assert (= bs!1030072 (and d!1461125 d!1461031)))

(assert (=> bs!1030072 (= lambda!194623 lambda!194593)))

(declare-fun bs!1030073 () Bool)

(assert (= bs!1030073 (and d!1461125 d!1461021)))

(assert (=> bs!1030073 (= lambda!194623 lambda!194592)))

(declare-fun bs!1030074 () Bool)

(assert (= bs!1030074 (and d!1461125 d!1461093)))

(assert (=> bs!1030074 (= lambda!194623 lambda!194609)))

(declare-fun bs!1030075 () Bool)

(assert (= bs!1030075 (and d!1461125 d!1461099)))

(assert (=> bs!1030075 (= lambda!194623 lambda!194616)))

(declare-fun bs!1030076 () Bool)

(assert (= bs!1030076 (and d!1461125 d!1461017)))

(assert (=> bs!1030076 (= lambda!194623 lambda!194586)))

(declare-fun bs!1030077 () Bool)

(assert (= bs!1030077 (and d!1461125 d!1461111)))

(assert (=> bs!1030077 (= lambda!194623 lambda!194621)))

(declare-fun lt!1796496 () ListMap!4353)

(assert (=> d!1461125 (invariantList!1236 (toList!5049 lt!1796496))))

(declare-fun e!2891175 () ListMap!4353)

(assert (=> d!1461125 (= lt!1796496 e!2891175)))

(declare-fun c!793265 () Bool)

(assert (=> d!1461125 (= c!793265 ((_ is Cons!51639) (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639)))))

(assert (=> d!1461125 (forall!10886 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639) lambda!194623)))

(assert (=> d!1461125 (= (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639)) lt!1796496)))

(declare-fun b!4634607 () Bool)

(assert (=> b!4634607 (= e!2891175 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639))) (extractMap!1598 (t!358827 (Cons!51639 (tuple2!52617 hash!414 lt!1795850) Nil!51639)))))))

(declare-fun b!4634608 () Bool)

(assert (=> b!4634608 (= e!2891175 (ListMap!4354 Nil!51638))))

(assert (= (and d!1461125 c!793265) b!4634607))

(assert (= (and d!1461125 (not c!793265)) b!4634608))

(declare-fun m!5489291 () Bool)

(assert (=> d!1461125 m!5489291))

(declare-fun m!5489293 () Bool)

(assert (=> d!1461125 m!5489293))

(declare-fun m!5489295 () Bool)

(assert (=> b!4634607 m!5489295))

(assert (=> b!4634607 m!5489295))

(declare-fun m!5489297 () Bool)

(assert (=> b!4634607 m!5489297))

(assert (=> b!4634162 d!1461125))

(declare-fun bs!1030078 () Bool)

(declare-fun d!1461127 () Bool)

(assert (= bs!1030078 (and d!1461127 d!1460881)))

(declare-fun lambda!194624 () Int)

(assert (=> bs!1030078 (= lambda!194624 lambda!194515)))

(declare-fun bs!1030079 () Bool)

(assert (= bs!1030079 (and d!1461127 b!4634168)))

(assert (=> bs!1030079 (= lambda!194624 lambda!194478)))

(declare-fun bs!1030080 () Bool)

(assert (= bs!1030080 (and d!1461127 d!1461031)))

(assert (=> bs!1030080 (= lambda!194624 lambda!194593)))

(declare-fun bs!1030081 () Bool)

(assert (= bs!1030081 (and d!1461127 d!1461021)))

(assert (=> bs!1030081 (= lambda!194624 lambda!194592)))

(declare-fun bs!1030082 () Bool)

(assert (= bs!1030082 (and d!1461127 d!1461093)))

(assert (=> bs!1030082 (= lambda!194624 lambda!194609)))

(declare-fun bs!1030083 () Bool)

(assert (= bs!1030083 (and d!1461127 d!1461125)))

(assert (=> bs!1030083 (= lambda!194624 lambda!194623)))

(declare-fun bs!1030084 () Bool)

(assert (= bs!1030084 (and d!1461127 d!1461099)))

(assert (=> bs!1030084 (= lambda!194624 lambda!194616)))

(declare-fun bs!1030085 () Bool)

(assert (= bs!1030085 (and d!1461127 d!1461017)))

(assert (=> bs!1030085 (= lambda!194624 lambda!194586)))

(declare-fun bs!1030086 () Bool)

(assert (= bs!1030086 (and d!1461127 d!1461111)))

(assert (=> bs!1030086 (= lambda!194624 lambda!194621)))

(declare-fun lt!1796497 () ListMap!4353)

(assert (=> d!1461127 (invariantList!1236 (toList!5049 lt!1796497))))

(declare-fun e!2891176 () ListMap!4353)

(assert (=> d!1461127 (= lt!1796497 e!2891176)))

(declare-fun c!793266 () Bool)

(assert (=> d!1461127 (= c!793266 ((_ is Cons!51639) (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639)))))

(assert (=> d!1461127 (forall!10886 (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639) lambda!194624)))

(assert (=> d!1461127 (= (extractMap!1598 (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639)) lt!1796497)))

(declare-fun b!4634609 () Bool)

(assert (=> b!4634609 (= e!2891176 (addToMapMapFromBucket!1003 (_2!29602 (h!57721 (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639))) (extractMap!1598 (t!358827 (Cons!51639 (tuple2!52617 hash!414 newBucket!224) Nil!51639)))))))

(declare-fun b!4634610 () Bool)

(assert (=> b!4634610 (= e!2891176 (ListMap!4354 Nil!51638))))

(assert (= (and d!1461127 c!793266) b!4634609))

(assert (= (and d!1461127 (not c!793266)) b!4634610))

(declare-fun m!5489299 () Bool)

(assert (=> d!1461127 m!5489299))

(declare-fun m!5489301 () Bool)

(assert (=> d!1461127 m!5489301))

(declare-fun m!5489303 () Bool)

(assert (=> b!4634609 m!5489303))

(assert (=> b!4634609 m!5489303))

(declare-fun m!5489305 () Bool)

(assert (=> b!4634609 m!5489305))

(assert (=> b!4634162 d!1461127))

(declare-fun d!1461129 () Bool)

(assert (=> d!1461129 (= (eq!857 lt!1795875 (+!1908 lt!1795856 (h!57720 oldBucket!40))) (= (content!8893 (toList!5049 lt!1795875)) (content!8893 (toList!5049 (+!1908 lt!1795856 (h!57720 oldBucket!40))))))))

(declare-fun bs!1030087 () Bool)

(assert (= bs!1030087 d!1461129))

(assert (=> bs!1030087 m!5489117))

(assert (=> bs!1030087 m!5489121))

(assert (=> b!4634173 d!1461129))

(assert (=> b!4634173 d!1461081))

(declare-fun d!1461131 () Bool)

(declare-fun res!1945147 () Bool)

(declare-fun e!2891177 () Bool)

(assert (=> d!1461131 (=> res!1945147 e!2891177)))

(assert (=> d!1461131 (= res!1945147 (not ((_ is Cons!51638) oldBucket!40)))))

(assert (=> d!1461131 (= (noDuplicateKeys!1542 oldBucket!40) e!2891177)))

(declare-fun b!4634611 () Bool)

(declare-fun e!2891178 () Bool)

(assert (=> b!4634611 (= e!2891177 e!2891178)))

(declare-fun res!1945148 () Bool)

(assert (=> b!4634611 (=> (not res!1945148) (not e!2891178))))

(assert (=> b!4634611 (= res!1945148 (not (containsKey!2546 (t!358826 oldBucket!40) (_1!29601 (h!57720 oldBucket!40)))))))

(declare-fun b!4634612 () Bool)

(assert (=> b!4634612 (= e!2891178 (noDuplicateKeys!1542 (t!358826 oldBucket!40)))))

(assert (= (and d!1461131 (not res!1945147)) b!4634611))

(assert (= (and b!4634611 res!1945148) b!4634612))

(declare-fun m!5489307 () Bool)

(assert (=> b!4634611 m!5489307))

(assert (=> b!4634612 m!5489091))

(assert (=> start!465440 d!1461131))

(declare-fun tp!1342458 () Bool)

(declare-fun e!2891181 () Bool)

(declare-fun b!4634617 () Bool)

(assert (=> b!4634617 (= e!2891181 (and tp_is_empty!29461 tp_is_empty!29463 tp!1342458))))

(assert (=> b!4634166 (= tp!1342451 e!2891181)))

(assert (= (and b!4634166 ((_ is Cons!51638) (t!358826 oldBucket!40))) b!4634617))

(declare-fun b!4634618 () Bool)

(declare-fun e!2891182 () Bool)

(declare-fun tp!1342459 () Bool)

(assert (=> b!4634618 (= e!2891182 (and tp_is_empty!29461 tp_is_empty!29463 tp!1342459))))

(assert (=> b!4634172 (= tp!1342450 e!2891182)))

(assert (= (and b!4634172 ((_ is Cons!51638) (t!358826 newBucket!224))) b!4634618))

(declare-fun b_lambda!170969 () Bool)

(assert (= b_lambda!170967 (or b!4634168 b_lambda!170969)))

(declare-fun bs!1030088 () Bool)

(declare-fun d!1461133 () Bool)

(assert (= bs!1030088 (and d!1461133 b!4634168)))

(assert (=> bs!1030088 (= (dynLambda!21530 lambda!194478 (h!57721 lt!1795862)) (noDuplicateKeys!1542 (_2!29602 (h!57721 lt!1795862))))))

(declare-fun m!5489309 () Bool)

(assert (=> bs!1030088 m!5489309))

(assert (=> b!4634599 d!1461133))

(declare-fun b_lambda!170971 () Bool)

(assert (= b_lambda!170965 (or b!4634168 b_lambda!170971)))

(declare-fun bs!1030089 () Bool)

(declare-fun d!1461135 () Bool)

(assert (= bs!1030089 (and d!1461135 b!4634168)))

(assert (=> bs!1030089 (= (dynLambda!21530 lambda!194478 lt!1795872) (noDuplicateKeys!1542 (_2!29602 lt!1795872)))))

(declare-fun m!5489311 () Bool)

(assert (=> bs!1030089 m!5489311))

(assert (=> d!1461101 d!1461135))

(check-sat (not b!4634559) (not bm!323428) (not b!4634462) (not b!4634524) (not b!4634490) (not bm!323433) (not d!1461109) (not b!4634603) (not bm!323441) (not b!4634295) (not b!4634600) (not d!1461055) (not b!4634514) (not bm!323445) tp_is_empty!29461 (not b!4634439) (not b!4634510) (not b!4634463) (not d!1461059) (not b!4634592) (not b!4634453) (not b!4634531) (not b!4634475) (not b!4634590) (not d!1461017) (not bm!323443) (not b!4634219) (not b!4634582) (not b!4634560) (not d!1461087) (not d!1460935) (not bm!323440) (not d!1461093) (not bm!323427) (not b!4634617) (not bs!1030088) (not b!4634476) (not b!4634479) (not d!1461077) (not d!1461015) (not d!1461051) (not b!4634518) (not d!1461111) (not d!1461037) (not b!4634546) (not b!4634279) (not d!1461073) (not b!4634589) (not b!4634548) (not b!4634216) (not bm!323439) (not bs!1030089) (not b!4634523) (not b!4634515) (not b!4634223) (not d!1461085) (not b!4634441) (not d!1461027) (not d!1461053) (not b!4634492) (not b!4634558) (not d!1461011) (not d!1460893) (not bm!323437) (not b!4634580) (not d!1461061) (not d!1461023) (not b!4634612) tp_is_empty!29463 (not d!1461069) (not bm!323429) (not b!4634540) (not d!1460879) (not b!4634300) (not b!4634606) (not d!1460923) (not bm!323444) (not bm!323399) (not d!1461095) (not b!4634513) (not b!4634583) (not d!1461117) (not b!4634480) (not d!1461127) (not bm!323438) (not bm!323446) (not b!4634607) (not b!4634221) (not b!4634477) (not b!4634591) (not d!1461079) (not b!4634438) (not d!1461083) (not d!1461105) (not d!1461021) (not b!4634451) (not b!4634246) (not d!1461063) (not b!4634557) (not d!1461013) (not d!1460887) (not d!1461081) (not d!1461125) (not b!4634500) (not b!4634538) (not d!1461031) (not b!4634450) (not b!4634454) (not d!1461107) (not d!1461103) (not b!4634491) (not b!4634609) (not d!1461075) (not b!4634505) (not b!4634452) (not b_lambda!170969) (not d!1461119) (not b!4634605) (not b!4634484) (not d!1461091) (not d!1461035) (not b!4634482) (not d!1461101) (not d!1460919) (not d!1461121) (not b!4634586) (not b!4634220) (not b!4634222) (not d!1461123) (not d!1460909) (not b!4634611) (not d!1461067) (not d!1461071) (not d!1460891) (not b!4634517) (not b!4634512) (not d!1461099) (not d!1461065) (not b!4634218) (not b!4634618) (not b!4634483) (not b!4634464) (not b!4634502) (not b!4634585) (not b!4634593) (not b!4634516) (not d!1461113) (not d!1461043) (not b!4634504) (not bm!323434) (not d!1460951) (not b!4634481) (not b!4634501) (not b!4634489) (not bm!323442) (not bm!323435) (not d!1460881) (not b!4634563) (not b!4634440) (not b_lambda!170971) (not b!4634511) (not b!4634503) (not d!1461129))
(check-sat)
