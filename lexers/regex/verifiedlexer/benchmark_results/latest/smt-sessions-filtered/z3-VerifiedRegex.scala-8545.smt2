; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450368 () Bool)

(assert start!450368)

(declare-fun bs!875030 () Bool)

(declare-fun b!4537954 () Bool)

(assert (= bs!875030 (and b!4537954 start!450368)))

(declare-fun lambda!175744 () Int)

(declare-fun lambda!175743 () Int)

(assert (=> bs!875030 (not (= lambda!175744 lambda!175743))))

(assert (=> b!4537954 true))

(assert (=> b!4537954 true))

(assert (=> b!4537954 true))

(declare-fun b!4537952 () Bool)

(declare-fun e!2827776 () Bool)

(declare-fun e!2827789 () Bool)

(assert (=> b!4537952 (= e!2827776 e!2827789)))

(declare-fun res!1890902 () Bool)

(assert (=> b!4537952 (=> (not res!1890902) (not e!2827789))))

(declare-fun lt!1712889 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4537952 (= res!1890902 (= lt!1712889 hash!344))))

(declare-datatypes ((Hashable!5591 0))(
  ( (HashableExt!5590 (__x!31294 Int)) )
))
(declare-fun hashF!1107 () Hashable!5591)

(declare-datatypes ((K!12130 0))(
  ( (K!12131 (val!17975 Int)) )
))
(declare-fun key!3287 () K!12130)

(declare-fun hash!2909 (Hashable!5591 K!12130) (_ BitVec 64))

(assert (=> b!4537952 (= lt!1712889 (hash!2909 hashF!1107 key!3287))))

(declare-fun b!4537953 () Bool)

(declare-fun e!2827785 () Bool)

(declare-fun e!2827781 () Bool)

(assert (=> b!4537953 (= e!2827785 e!2827781)))

(declare-fun res!1890920 () Bool)

(assert (=> b!4537953 (=> res!1890920 e!2827781)))

(declare-datatypes ((V!12376 0))(
  ( (V!12377 (val!17976 Int)) )
))
(declare-datatypes ((tuple2!51218 0))(
  ( (tuple2!51219 (_1!28903 K!12130) (_2!28903 V!12376)) )
))
(declare-datatypes ((List!50868 0))(
  ( (Nil!50744) (Cons!50744 (h!56623 tuple2!51218) (t!357830 List!50868)) )
))
(declare-datatypes ((tuple2!51220 0))(
  ( (tuple2!51221 (_1!28904 (_ BitVec 64)) (_2!28904 List!50868)) )
))
(declare-datatypes ((List!50869 0))(
  ( (Nil!50745) (Cons!50745 (h!56624 tuple2!51220) (t!357831 List!50869)) )
))
(declare-datatypes ((ListLongMap!3031 0))(
  ( (ListLongMap!3032 (toList!4399 List!50869)) )
))
(declare-fun lm!1477 () ListLongMap!3031)

(declare-fun containsKeyBiggerList!176 (List!50869 K!12130) Bool)

(assert (=> b!4537953 (= res!1890920 (not (containsKeyBiggerList!176 (t!357831 (toList!4399 lm!1477)) key!3287)))))

(declare-fun lt!1712899 () ListLongMap!3031)

(assert (=> b!4537953 (containsKeyBiggerList!176 (toList!4399 lt!1712899) key!3287)))

(declare-datatypes ((Unit!98164 0))(
  ( (Unit!98165) )
))
(declare-fun lt!1712885 () Unit!98164)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!112 (ListLongMap!3031 K!12130 Hashable!5591) Unit!98164)

(assert (=> b!4537953 (= lt!1712885 (lemmaInLongMapThenContainsKeyBiggerList!112 lt!1712899 key!3287 hashF!1107))))

(declare-fun res!1890919 () Bool)

(declare-fun e!2827783 () Bool)

(assert (=> start!450368 (=> (not res!1890919) (not e!2827783))))

(declare-fun forall!10339 (List!50869 Int) Bool)

(assert (=> start!450368 (= res!1890919 (forall!10339 (toList!4399 lm!1477) lambda!175743))))

(assert (=> start!450368 e!2827783))

(assert (=> start!450368 true))

(declare-fun e!2827787 () Bool)

(declare-fun inv!66314 (ListLongMap!3031) Bool)

(assert (=> start!450368 (and (inv!66314 lm!1477) e!2827787)))

(declare-fun tp_is_empty!28061 () Bool)

(assert (=> start!450368 tp_is_empty!28061))

(declare-fun e!2827780 () Bool)

(assert (=> start!450368 e!2827780))

(declare-fun e!2827784 () Unit!98164)

(declare-fun Unit!98166 () Unit!98164)

(assert (=> b!4537954 (= e!2827784 Unit!98166)))

(declare-fun lt!1712898 () tuple2!51220)

(assert (=> b!4537954 (not (= hash!344 (_1!28904 lt!1712898)))))

(declare-datatypes ((Option!11195 0))(
  ( (None!11194) (Some!11194 (v!44882 tuple2!51218)) )
))
(declare-fun lt!1712883 () Option!11195)

(declare-fun getPair!212 (List!50868 K!12130) Option!11195)

(assert (=> b!4537954 (= lt!1712883 (getPair!212 (_2!28904 lt!1712898) key!3287))))

(declare-fun lt!1712891 () Unit!98164)

(declare-fun forallContained!2600 (List!50869 Int tuple2!51220) Unit!98164)

(assert (=> b!4537954 (= lt!1712891 (forallContained!2600 (toList!4399 lm!1477) lambda!175744 (h!56624 (toList!4399 lm!1477))))))

(declare-fun lt!1712900 () Unit!98164)

(declare-fun lambda!175745 () Int)

(declare-fun forallContained!2601 (List!50868 Int tuple2!51218) Unit!98164)

(declare-fun get!16678 (Option!11195) tuple2!51218)

(assert (=> b!4537954 (= lt!1712900 (forallContained!2601 (_2!28904 (h!56624 (toList!4399 lm!1477))) lambda!175745 (tuple2!51219 key!3287 (_2!28903 (get!16678 lt!1712883)))))))

(assert (=> b!4537954 false))

(declare-fun b!4537955 () Bool)

(declare-fun e!2827772 () Unit!98164)

(declare-fun Unit!98167 () Unit!98164)

(assert (=> b!4537955 (= e!2827772 Unit!98167)))

(declare-fun b!4537956 () Bool)

(declare-fun Unit!98168 () Unit!98164)

(assert (=> b!4537956 (= e!2827784 Unit!98168)))

(declare-fun b!4537957 () Bool)

(declare-fun e!2827774 () Bool)

(assert (=> b!4537957 (= e!2827774 e!2827785)))

(declare-fun res!1890918 () Bool)

(assert (=> b!4537957 (=> res!1890918 e!2827785)))

(declare-fun lt!1712906 () Bool)

(assert (=> b!4537957 (= res!1890918 lt!1712906)))

(declare-fun lt!1712897 () Unit!98164)

(assert (=> b!4537957 (= lt!1712897 e!2827772)))

(declare-fun c!775028 () Bool)

(assert (=> b!4537957 (= c!775028 lt!1712906)))

(declare-fun lt!1712880 () List!50868)

(declare-fun containsKey!1868 (List!50868 K!12130) Bool)

(assert (=> b!4537957 (= lt!1712906 (not (containsKey!1868 lt!1712880 key!3287)))))

(declare-fun b!4537958 () Bool)

(declare-fun e!2827786 () Bool)

(declare-fun e!2827779 () Bool)

(assert (=> b!4537958 (= e!2827786 e!2827779)))

(declare-fun res!1890911 () Bool)

(assert (=> b!4537958 (=> res!1890911 e!2827779)))

(declare-fun lt!1712882 () tuple2!51220)

(declare-fun lt!1712895 () ListLongMap!3031)

(declare-fun +!1600 (ListLongMap!3031 tuple2!51220) ListLongMap!3031)

(assert (=> b!4537958 (= res!1890911 (not (= lt!1712895 (+!1600 lm!1477 lt!1712882))))))

(declare-fun lt!1712908 () ListLongMap!3031)

(assert (=> b!4537958 (= lt!1712895 (+!1600 lt!1712908 lt!1712898))))

(declare-fun b!4537959 () Bool)

(declare-fun tp!1338587 () Bool)

(assert (=> b!4537959 (= e!2827787 tp!1338587)))

(declare-fun b!4537960 () Bool)

(declare-fun e!2827777 () Bool)

(declare-fun e!2827778 () Bool)

(assert (=> b!4537960 (= e!2827777 e!2827778)))

(declare-fun res!1890917 () Bool)

(assert (=> b!4537960 (=> res!1890917 e!2827778)))

(declare-fun lt!1712902 () Bool)

(assert (=> b!4537960 (= res!1890917 lt!1712902)))

(declare-fun lt!1712907 () Unit!98164)

(assert (=> b!4537960 (= lt!1712907 e!2827784)))

(declare-fun c!775029 () Bool)

(assert (=> b!4537960 (= c!775029 lt!1712902)))

(assert (=> b!4537960 (= lt!1712902 (containsKey!1868 (_2!28904 lt!1712898) key!3287))))

(declare-fun b!4537961 () Bool)

(declare-fun res!1890906 () Bool)

(assert (=> b!4537961 (=> res!1890906 e!2827774)))

(declare-fun apply!11933 (ListLongMap!3031 (_ BitVec 64)) List!50868)

(assert (=> b!4537961 (= res!1890906 (not (= (apply!11933 lt!1712899 hash!344) lt!1712880)))))

(declare-fun b!4537962 () Bool)

(declare-fun res!1890907 () Bool)

(assert (=> b!4537962 (=> res!1890907 e!2827786)))

(declare-datatypes ((ListMap!3661 0))(
  ( (ListMap!3662 (toList!4400 List!50868)) )
))
(declare-fun lt!1712881 () ListMap!3661)

(declare-fun lt!1712893 () ListMap!3661)

(declare-fun eq!653 (ListMap!3661 ListMap!3661) Bool)

(assert (=> b!4537962 (= res!1890907 (not (eq!653 lt!1712881 lt!1712893)))))

(declare-fun b!4537963 () Bool)

(declare-fun e!2827788 () Bool)

(assert (=> b!4537963 (= e!2827789 (not e!2827788))))

(declare-fun res!1890903 () Bool)

(assert (=> b!4537963 (=> res!1890903 e!2827788)))

(declare-fun newBucket!178 () List!50868)

(declare-fun removePairForKey!823 (List!50868 K!12130) List!50868)

(assert (=> b!4537963 (= res!1890903 (not (= newBucket!178 (removePairForKey!823 lt!1712880 key!3287))))))

(declare-fun lt!1712896 () Unit!98164)

(declare-fun lt!1712911 () tuple2!51220)

(assert (=> b!4537963 (= lt!1712896 (forallContained!2600 (toList!4399 lm!1477) lambda!175743 lt!1712911))))

(declare-fun contains!13531 (List!50869 tuple2!51220) Bool)

(assert (=> b!4537963 (contains!13531 (toList!4399 lm!1477) lt!1712911)))

(assert (=> b!4537963 (= lt!1712911 (tuple2!51221 hash!344 lt!1712880))))

(declare-fun lt!1712887 () Unit!98164)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!708 (List!50869 (_ BitVec 64) List!50868) Unit!98164)

(assert (=> b!4537963 (= lt!1712887 (lemmaGetValueByKeyImpliesContainsTuple!708 (toList!4399 lm!1477) hash!344 lt!1712880))))

(assert (=> b!4537963 (= lt!1712880 (apply!11933 lm!1477 hash!344))))

(declare-fun contains!13532 (ListLongMap!3031 (_ BitVec 64)) Bool)

(assert (=> b!4537963 (contains!13532 lm!1477 lt!1712889)))

(declare-fun lt!1712905 () Unit!98164)

(declare-fun lemmaInGenMapThenLongMapContainsHash!270 (ListLongMap!3031 K!12130 Hashable!5591) Unit!98164)

(assert (=> b!4537963 (= lt!1712905 (lemmaInGenMapThenLongMapContainsHash!270 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4537964 () Bool)

(assert (=> b!4537964 (= e!2827788 e!2827774)))

(declare-fun res!1890910 () Bool)

(assert (=> b!4537964 (=> res!1890910 e!2827774)))

(assert (=> b!4537964 (= res!1890910 (not (contains!13532 lt!1712899 hash!344)))))

(declare-fun tail!7796 (ListLongMap!3031) ListLongMap!3031)

(assert (=> b!4537964 (= lt!1712899 (tail!7796 lm!1477))))

(declare-fun b!4537965 () Bool)

(declare-fun res!1890900 () Bool)

(assert (=> b!4537965 (=> res!1890900 e!2827779)))

(declare-fun head!9474 (ListLongMap!3031) tuple2!51220)

(assert (=> b!4537965 (= res!1890900 (not (= (head!9474 lt!1712895) lt!1712898)))))

(declare-fun b!4537966 () Bool)

(declare-fun e!2827775 () Bool)

(assert (=> b!4537966 (= e!2827775 (forall!10339 (toList!4399 lm!1477) lambda!175743))))

(declare-fun b!4537967 () Bool)

(declare-fun res!1890908 () Bool)

(assert (=> b!4537967 (=> res!1890908 e!2827788)))

(get-info :version)

(assert (=> b!4537967 (= res!1890908 (or ((_ is Nil!50745) (toList!4399 lm!1477)) (= (_1!28904 (h!56624 (toList!4399 lm!1477))) hash!344)))))

(declare-fun b!4537968 () Bool)

(declare-fun e!2827782 () Bool)

(assert (=> b!4537968 (= e!2827781 e!2827782)))

(declare-fun res!1890904 () Bool)

(assert (=> b!4537968 (=> res!1890904 e!2827782)))

(declare-fun contains!13533 (ListMap!3661 K!12130) Bool)

(declare-fun extractMap!1252 (List!50869) ListMap!3661)

(assert (=> b!4537968 (= res!1890904 (not (contains!13533 (extractMap!1252 (t!357831 (toList!4399 lm!1477))) key!3287)))))

(declare-fun lt!1712879 () ListMap!3661)

(assert (=> b!4537968 (contains!13533 lt!1712879 key!3287)))

(assert (=> b!4537968 (= lt!1712879 (extractMap!1252 (toList!4399 lt!1712899)))))

(declare-fun lt!1712890 () Unit!98164)

(declare-fun lemmaListContainsThenExtractedMapContains!166 (ListLongMap!3031 K!12130 Hashable!5591) Unit!98164)

(assert (=> b!4537968 (= lt!1712890 (lemmaListContainsThenExtractedMapContains!166 lt!1712899 key!3287 hashF!1107))))

(declare-fun b!4537969 () Bool)

(declare-fun res!1890915 () Bool)

(assert (=> b!4537969 (=> (not res!1890915) (not e!2827789))))

(declare-fun allKeysSameHash!1050 (List!50868 (_ BitVec 64) Hashable!5591) Bool)

(assert (=> b!4537969 (= res!1890915 (allKeysSameHash!1050 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4537970 () Bool)

(assert (=> b!4537970 (= e!2827782 e!2827786)))

(declare-fun res!1890898 () Bool)

(assert (=> b!4537970 (=> res!1890898 e!2827786)))

(assert (=> b!4537970 (= res!1890898 (not (eq!653 lt!1712893 lt!1712881)))))

(assert (=> b!4537970 (= lt!1712893 (extractMap!1252 (toList!4399 (+!1600 lt!1712899 lt!1712898))))))

(assert (=> b!4537970 (= lt!1712898 (head!9474 lm!1477))))

(declare-fun lt!1712903 () ListMap!3661)

(declare-fun lt!1712894 () ListMap!3661)

(assert (=> b!4537970 (eq!653 lt!1712903 lt!1712894)))

(declare-fun -!422 (ListMap!3661 K!12130) ListMap!3661)

(assert (=> b!4537970 (= lt!1712894 (-!422 lt!1712879 key!3287))))

(assert (=> b!4537970 (= lt!1712903 (extractMap!1252 (toList!4399 lt!1712908)))))

(assert (=> b!4537970 (= lt!1712908 (+!1600 lt!1712899 lt!1712882))))

(assert (=> b!4537970 (= lt!1712882 (tuple2!51221 hash!344 newBucket!178))))

(declare-fun lt!1712909 () Unit!98164)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!181 (ListLongMap!3031 (_ BitVec 64) List!50868 K!12130 Hashable!5591) Unit!98164)

(assert (=> b!4537970 (= lt!1712909 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!181 lt!1712899 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4537971 () Bool)

(assert (=> b!4537971 (= e!2827783 e!2827776)))

(declare-fun res!1890905 () Bool)

(assert (=> b!4537971 (=> (not res!1890905) (not e!2827776))))

(assert (=> b!4537971 (= res!1890905 (contains!13533 lt!1712881 key!3287))))

(assert (=> b!4537971 (= lt!1712881 (extractMap!1252 (toList!4399 lm!1477)))))

(declare-fun b!4537972 () Bool)

(declare-fun res!1890913 () Bool)

(assert (=> b!4537972 (=> res!1890913 e!2827788)))

(declare-fun noDuplicateKeys!1196 (List!50868) Bool)

(assert (=> b!4537972 (= res!1890913 (not (noDuplicateKeys!1196 newBucket!178)))))

(declare-fun b!4537973 () Bool)

(declare-fun res!1890909 () Bool)

(assert (=> b!4537973 (=> res!1890909 e!2827775)))

(declare-fun lt!1712884 () ListMap!3661)

(assert (=> b!4537973 (= res!1890909 (not (eq!653 lt!1712884 (-!422 lt!1712881 key!3287))))))

(declare-fun b!4537974 () Bool)

(declare-fun Unit!98169 () Unit!98164)

(assert (=> b!4537974 (= e!2827772 Unit!98169)))

(declare-fun lt!1712892 () Unit!98164)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!184 (ListLongMap!3031 K!12130 Hashable!5591) Unit!98164)

(assert (=> b!4537974 (= lt!1712892 (lemmaNotInItsHashBucketThenNotInMap!184 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4537974 false))

(declare-fun b!4537975 () Bool)

(declare-fun res!1890899 () Bool)

(assert (=> b!4537975 (=> (not res!1890899) (not e!2827783))))

(declare-fun allKeysSameHashInMap!1303 (ListLongMap!3031 Hashable!5591) Bool)

(assert (=> b!4537975 (= res!1890899 (allKeysSameHashInMap!1303 lm!1477 hashF!1107))))

(declare-fun b!4537976 () Bool)

(declare-fun res!1890912 () Bool)

(assert (=> b!4537976 (=> res!1890912 e!2827786)))

(assert (=> b!4537976 (= res!1890912 (bvsge (_1!28904 lt!1712898) hash!344))))

(declare-fun tp_is_empty!28063 () Bool)

(declare-fun tp!1338586 () Bool)

(declare-fun b!4537977 () Bool)

(assert (=> b!4537977 (= e!2827780 (and tp_is_empty!28061 tp_is_empty!28063 tp!1338586))))

(declare-fun b!4537978 () Bool)

(declare-fun e!2827773 () Bool)

(assert (=> b!4537978 (= e!2827773 e!2827777)))

(declare-fun res!1890916 () Bool)

(assert (=> b!4537978 (=> res!1890916 e!2827777)))

(assert (=> b!4537978 (= res!1890916 (not (noDuplicateKeys!1196 (_2!28904 lt!1712898))))))

(declare-fun lt!1712904 () Unit!98164)

(assert (=> b!4537978 (= lt!1712904 (forallContained!2600 (toList!4399 lm!1477) lambda!175743 (h!56624 (toList!4399 lm!1477))))))

(declare-fun b!4537979 () Bool)

(declare-fun e!2827771 () Bool)

(assert (=> b!4537979 (= e!2827779 e!2827771)))

(declare-fun res!1890914 () Bool)

(assert (=> b!4537979 (=> res!1890914 e!2827771)))

(declare-fun lt!1712901 () ListMap!3661)

(declare-fun lt!1712912 () ListMap!3661)

(assert (=> b!4537979 (= res!1890914 (not (eq!653 lt!1712901 lt!1712912)))))

(declare-fun addToMapMapFromBucket!723 (List!50868 ListMap!3661) ListMap!3661)

(assert (=> b!4537979 (= lt!1712912 (addToMapMapFromBucket!723 (_2!28904 lt!1712898) lt!1712903))))

(assert (=> b!4537979 (= lt!1712901 (extractMap!1252 (toList!4399 lt!1712895)))))

(declare-fun b!4537980 () Bool)

(declare-fun res!1890901 () Bool)

(assert (=> b!4537980 (=> res!1890901 e!2827774)))

(assert (=> b!4537980 (= res!1890901 (not (contains!13531 (t!357831 (toList!4399 lm!1477)) lt!1712911)))))

(declare-fun b!4537981 () Bool)

(assert (=> b!4537981 (= e!2827771 e!2827773)))

(declare-fun res!1890922 () Bool)

(assert (=> b!4537981 (=> res!1890922 e!2827773)))

(assert (=> b!4537981 (= res!1890922 (not (eq!653 lt!1712901 lt!1712884)))))

(assert (=> b!4537981 (eq!653 lt!1712912 lt!1712884)))

(assert (=> b!4537981 (= lt!1712884 (addToMapMapFromBucket!723 (_2!28904 lt!1712898) lt!1712894))))

(declare-fun lt!1712910 () Unit!98164)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!72 (ListMap!3661 ListMap!3661 List!50868) Unit!98164)

(assert (=> b!4537981 (= lt!1712910 (lemmaAddToMapFromBucketPreservesEquivalence!72 lt!1712903 lt!1712894 (_2!28904 lt!1712898)))))

(declare-fun b!4537982 () Bool)

(assert (=> b!4537982 (= e!2827778 e!2827775)))

(declare-fun res!1890921 () Bool)

(assert (=> b!4537982 (=> res!1890921 e!2827775)))

(declare-fun lt!1712886 () ListMap!3661)

(assert (=> b!4537982 (= res!1890921 (not (eq!653 lt!1712884 lt!1712886)))))

(assert (=> b!4537982 (= lt!1712884 lt!1712886)))

(assert (=> b!4537982 (= lt!1712886 (-!422 (addToMapMapFromBucket!723 (_2!28904 lt!1712898) lt!1712879) key!3287))))

(declare-fun lt!1712888 () Unit!98164)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!20 (ListMap!3661 K!12130 List!50868) Unit!98164)

(assert (=> b!4537982 (= lt!1712888 (lemmaAddToMapFromBucketMinusKeyIsCommutative!20 lt!1712879 key!3287 (_2!28904 lt!1712898)))))

(assert (= (and start!450368 res!1890919) b!4537975))

(assert (= (and b!4537975 res!1890899) b!4537971))

(assert (= (and b!4537971 res!1890905) b!4537952))

(assert (= (and b!4537952 res!1890902) b!4537969))

(assert (= (and b!4537969 res!1890915) b!4537963))

(assert (= (and b!4537963 (not res!1890903)) b!4537972))

(assert (= (and b!4537972 (not res!1890913)) b!4537967))

(assert (= (and b!4537967 (not res!1890908)) b!4537964))

(assert (= (and b!4537964 (not res!1890910)) b!4537961))

(assert (= (and b!4537961 (not res!1890906)) b!4537980))

(assert (= (and b!4537980 (not res!1890901)) b!4537957))

(assert (= (and b!4537957 c!775028) b!4537974))

(assert (= (and b!4537957 (not c!775028)) b!4537955))

(assert (= (and b!4537957 (not res!1890918)) b!4537953))

(assert (= (and b!4537953 (not res!1890920)) b!4537968))

(assert (= (and b!4537968 (not res!1890904)) b!4537970))

(assert (= (and b!4537970 (not res!1890898)) b!4537962))

(assert (= (and b!4537962 (not res!1890907)) b!4537976))

(assert (= (and b!4537976 (not res!1890912)) b!4537958))

(assert (= (and b!4537958 (not res!1890911)) b!4537965))

(assert (= (and b!4537965 (not res!1890900)) b!4537979))

(assert (= (and b!4537979 (not res!1890914)) b!4537981))

(assert (= (and b!4537981 (not res!1890922)) b!4537978))

(assert (= (and b!4537978 (not res!1890916)) b!4537960))

(assert (= (and b!4537960 c!775029) b!4537954))

(assert (= (and b!4537960 (not c!775029)) b!4537956))

(assert (= (and b!4537960 (not res!1890917)) b!4537982))

(assert (= (and b!4537982 (not res!1890921)) b!4537973))

(assert (= (and b!4537973 (not res!1890909)) b!4537966))

(assert (= start!450368 b!4537959))

(assert (= (and start!450368 ((_ is Cons!50744) newBucket!178)) b!4537977))

(declare-fun m!5302215 () Bool)

(assert (=> b!4537970 m!5302215))

(declare-fun m!5302217 () Bool)

(assert (=> b!4537970 m!5302217))

(declare-fun m!5302219 () Bool)

(assert (=> b!4537970 m!5302219))

(declare-fun m!5302221 () Bool)

(assert (=> b!4537970 m!5302221))

(declare-fun m!5302223 () Bool)

(assert (=> b!4537970 m!5302223))

(declare-fun m!5302225 () Bool)

(assert (=> b!4537970 m!5302225))

(declare-fun m!5302227 () Bool)

(assert (=> b!4537970 m!5302227))

(declare-fun m!5302229 () Bool)

(assert (=> b!4537970 m!5302229))

(declare-fun m!5302231 () Bool)

(assert (=> b!4537970 m!5302231))

(declare-fun m!5302233 () Bool)

(assert (=> b!4537957 m!5302233))

(declare-fun m!5302235 () Bool)

(assert (=> b!4537960 m!5302235))

(declare-fun m!5302237 () Bool)

(assert (=> b!4537971 m!5302237))

(declare-fun m!5302239 () Bool)

(assert (=> b!4537971 m!5302239))

(declare-fun m!5302241 () Bool)

(assert (=> b!4537953 m!5302241))

(declare-fun m!5302243 () Bool)

(assert (=> b!4537953 m!5302243))

(declare-fun m!5302245 () Bool)

(assert (=> b!4537953 m!5302245))

(declare-fun m!5302247 () Bool)

(assert (=> b!4537972 m!5302247))

(declare-fun m!5302249 () Bool)

(assert (=> b!4537961 m!5302249))

(declare-fun m!5302251 () Bool)

(assert (=> b!4537954 m!5302251))

(declare-fun m!5302253 () Bool)

(assert (=> b!4537954 m!5302253))

(declare-fun m!5302255 () Bool)

(assert (=> b!4537954 m!5302255))

(declare-fun m!5302257 () Bool)

(assert (=> b!4537954 m!5302257))

(declare-fun m!5302259 () Bool)

(assert (=> b!4537958 m!5302259))

(declare-fun m!5302261 () Bool)

(assert (=> b!4537958 m!5302261))

(declare-fun m!5302263 () Bool)

(assert (=> b!4537979 m!5302263))

(declare-fun m!5302265 () Bool)

(assert (=> b!4537979 m!5302265))

(declare-fun m!5302267 () Bool)

(assert (=> b!4537979 m!5302267))

(declare-fun m!5302269 () Bool)

(assert (=> b!4537975 m!5302269))

(declare-fun m!5302271 () Bool)

(assert (=> b!4537964 m!5302271))

(declare-fun m!5302273 () Bool)

(assert (=> b!4537964 m!5302273))

(declare-fun m!5302275 () Bool)

(assert (=> start!450368 m!5302275))

(declare-fun m!5302277 () Bool)

(assert (=> start!450368 m!5302277))

(declare-fun m!5302279 () Bool)

(assert (=> b!4537952 m!5302279))

(declare-fun m!5302281 () Bool)

(assert (=> b!4537980 m!5302281))

(declare-fun m!5302283 () Bool)

(assert (=> b!4537973 m!5302283))

(assert (=> b!4537973 m!5302283))

(declare-fun m!5302285 () Bool)

(assert (=> b!4537973 m!5302285))

(declare-fun m!5302287 () Bool)

(assert (=> b!4537978 m!5302287))

(declare-fun m!5302289 () Bool)

(assert (=> b!4537978 m!5302289))

(declare-fun m!5302291 () Bool)

(assert (=> b!4537963 m!5302291))

(declare-fun m!5302293 () Bool)

(assert (=> b!4537963 m!5302293))

(declare-fun m!5302295 () Bool)

(assert (=> b!4537963 m!5302295))

(declare-fun m!5302297 () Bool)

(assert (=> b!4537963 m!5302297))

(declare-fun m!5302299 () Bool)

(assert (=> b!4537963 m!5302299))

(declare-fun m!5302301 () Bool)

(assert (=> b!4537963 m!5302301))

(declare-fun m!5302303 () Bool)

(assert (=> b!4537963 m!5302303))

(declare-fun m!5302305 () Bool)

(assert (=> b!4537965 m!5302305))

(declare-fun m!5302307 () Bool)

(assert (=> b!4537968 m!5302307))

(declare-fun m!5302309 () Bool)

(assert (=> b!4537968 m!5302309))

(declare-fun m!5302311 () Bool)

(assert (=> b!4537968 m!5302311))

(declare-fun m!5302313 () Bool)

(assert (=> b!4537968 m!5302313))

(assert (=> b!4537968 m!5302311))

(declare-fun m!5302315 () Bool)

(assert (=> b!4537968 m!5302315))

(declare-fun m!5302317 () Bool)

(assert (=> b!4537962 m!5302317))

(declare-fun m!5302319 () Bool)

(assert (=> b!4537969 m!5302319))

(declare-fun m!5302321 () Bool)

(assert (=> b!4537981 m!5302321))

(declare-fun m!5302323 () Bool)

(assert (=> b!4537981 m!5302323))

(declare-fun m!5302325 () Bool)

(assert (=> b!4537981 m!5302325))

(declare-fun m!5302327 () Bool)

(assert (=> b!4537981 m!5302327))

(declare-fun m!5302329 () Bool)

(assert (=> b!4537974 m!5302329))

(declare-fun m!5302331 () Bool)

(assert (=> b!4537982 m!5302331))

(declare-fun m!5302333 () Bool)

(assert (=> b!4537982 m!5302333))

(assert (=> b!4537982 m!5302333))

(declare-fun m!5302335 () Bool)

(assert (=> b!4537982 m!5302335))

(declare-fun m!5302337 () Bool)

(assert (=> b!4537982 m!5302337))

(assert (=> b!4537966 m!5302275))

(check-sat (not b!4537969) (not b!4537962) (not b!4537958) (not b!4537961) (not b!4537954) tp_is_empty!28063 (not b!4537974) (not b!4537971) tp_is_empty!28061 (not b!4537978) (not b!4537957) (not b!4537972) (not b!4537979) (not b!4537982) (not b!4537952) (not b!4537970) (not b!4537980) (not b!4537965) (not b!4537960) (not b!4537981) (not b!4537953) (not b!4537973) (not b!4537975) (not b!4537977) (not start!450368) (not b!4537966) (not b!4537963) (not b!4537968) (not b!4537959) (not b!4537964))
(check-sat)
