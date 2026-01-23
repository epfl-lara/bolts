; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!448016 () Bool)

(assert start!448016)

(declare-fun bs!857894 () Bool)

(declare-fun b!4522898 () Bool)

(assert (= bs!857894 (and b!4522898 start!448016)))

(declare-fun lambda!172948 () Int)

(declare-fun lambda!172947 () Int)

(assert (=> bs!857894 (not (= lambda!172948 lambda!172947))))

(assert (=> b!4522898 true))

(assert (=> b!4522898 true))

(assert (=> b!4522898 true))

(declare-fun b!4522877 () Bool)

(declare-fun res!1882792 () Bool)

(declare-fun e!2817936 () Bool)

(assert (=> b!4522877 (=> res!1882792 e!2817936)))

(declare-datatypes ((K!12060 0))(
  ( (K!12061 (val!17919 Int)) )
))
(declare-datatypes ((V!12306 0))(
  ( (V!12307 (val!17920 Int)) )
))
(declare-datatypes ((tuple2!51106 0))(
  ( (tuple2!51107 (_1!28847 K!12060) (_2!28847 V!12306)) )
))
(declare-datatypes ((List!50792 0))(
  ( (Nil!50668) (Cons!50668 (h!56527 tuple2!51106) (t!357754 List!50792)) )
))
(declare-fun newBucket!178 () List!50792)

(declare-fun noDuplicateKeys!1168 (List!50792) Bool)

(assert (=> b!4522877 (= res!1882792 (not (noDuplicateKeys!1168 newBucket!178)))))

(declare-fun b!4522878 () Bool)

(declare-fun res!1882782 () Bool)

(declare-fun e!2817940 () Bool)

(assert (=> b!4522878 (=> res!1882782 e!2817940)))

(declare-datatypes ((tuple2!51108 0))(
  ( (tuple2!51109 (_1!28848 (_ BitVec 64)) (_2!28848 List!50792)) )
))
(declare-fun lt!1699794 () tuple2!51108)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4522878 (= res!1882782 (bvsge (_1!28848 lt!1699794) hash!344))))

(declare-fun b!4522879 () Bool)

(declare-fun res!1882794 () Bool)

(declare-fun e!2817941 () Bool)

(assert (=> b!4522879 (=> (not res!1882794) (not e!2817941))))

(declare-datatypes ((Hashable!5563 0))(
  ( (HashableExt!5562 (__x!31266 Int)) )
))
(declare-fun hashF!1107 () Hashable!5563)

(declare-fun allKeysSameHash!1022 (List!50792 (_ BitVec 64) Hashable!5563) Bool)

(assert (=> b!4522879 (= res!1882794 (allKeysSameHash!1022 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4522880 () Bool)

(declare-fun e!2817938 () Bool)

(assert (=> b!4522880 (= e!2817938 e!2817940)))

(declare-fun res!1882789 () Bool)

(assert (=> b!4522880 (=> res!1882789 e!2817940)))

(declare-datatypes ((ListMap!3605 0))(
  ( (ListMap!3606 (toList!4343 List!50792)) )
))
(declare-fun lt!1699769 () ListMap!3605)

(declare-fun lt!1699778 () ListMap!3605)

(declare-fun eq!625 (ListMap!3605 ListMap!3605) Bool)

(assert (=> b!4522880 (= res!1882789 (not (eq!625 lt!1699769 lt!1699778)))))

(declare-datatypes ((List!50793 0))(
  ( (Nil!50669) (Cons!50669 (h!56528 tuple2!51108) (t!357755 List!50793)) )
))
(declare-datatypes ((ListLongMap!2975 0))(
  ( (ListLongMap!2976 (toList!4344 List!50793)) )
))
(declare-fun lt!1699792 () ListLongMap!2975)

(declare-fun extractMap!1224 (List!50793) ListMap!3605)

(declare-fun +!1552 (ListLongMap!2975 tuple2!51108) ListLongMap!2975)

(assert (=> b!4522880 (= lt!1699769 (extractMap!1224 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))

(declare-fun lm!1477 () ListLongMap!2975)

(declare-fun head!9426 (ListLongMap!2975) tuple2!51108)

(assert (=> b!4522880 (= lt!1699794 (head!9426 lm!1477))))

(declare-fun lt!1699771 () ListMap!3605)

(declare-fun lt!1699770 () ListMap!3605)

(assert (=> b!4522880 (eq!625 lt!1699771 lt!1699770)))

(declare-fun lt!1699768 () ListMap!3605)

(declare-fun key!3287 () K!12060)

(declare-fun -!394 (ListMap!3605 K!12060) ListMap!3605)

(assert (=> b!4522880 (= lt!1699770 (-!394 lt!1699768 key!3287))))

(declare-fun lt!1699796 () ListLongMap!2975)

(assert (=> b!4522880 (= lt!1699771 (extractMap!1224 (toList!4344 lt!1699796)))))

(declare-fun lt!1699772 () tuple2!51108)

(assert (=> b!4522880 (= lt!1699796 (+!1552 lt!1699792 lt!1699772))))

(assert (=> b!4522880 (= lt!1699772 (tuple2!51109 hash!344 newBucket!178))))

(declare-datatypes ((Unit!95506 0))(
  ( (Unit!95507) )
))
(declare-fun lt!1699779 () Unit!95506)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!153 (ListLongMap!2975 (_ BitVec 64) List!50792 K!12060 Hashable!5563) Unit!95506)

(assert (=> b!4522880 (= lt!1699779 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!153 lt!1699792 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun e!2817939 () Bool)

(declare-fun tp!1338191 () Bool)

(declare-fun b!4522881 () Bool)

(declare-fun tp_is_empty!27949 () Bool)

(declare-fun tp_is_empty!27951 () Bool)

(assert (=> b!4522881 (= e!2817939 (and tp_is_empty!27949 tp_is_empty!27951 tp!1338191))))

(declare-fun b!4522882 () Bool)

(declare-fun e!2817946 () Bool)

(declare-fun e!2817942 () Bool)

(assert (=> b!4522882 (= e!2817946 e!2817942)))

(declare-fun res!1882786 () Bool)

(assert (=> b!4522882 (=> res!1882786 e!2817942)))

(declare-fun lt!1699780 () ListMap!3605)

(declare-fun lt!1699777 () ListMap!3605)

(assert (=> b!4522882 (= res!1882786 (not (eq!625 lt!1699780 lt!1699777)))))

(declare-fun lt!1699787 () ListMap!3605)

(assert (=> b!4522882 (eq!625 lt!1699787 lt!1699777)))

(declare-fun addToMapMapFromBucket!695 (List!50792 ListMap!3605) ListMap!3605)

(assert (=> b!4522882 (= lt!1699777 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770))))

(declare-fun lt!1699784 () Unit!95506)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!44 (ListMap!3605 ListMap!3605 List!50792) Unit!95506)

(assert (=> b!4522882 (= lt!1699784 (lemmaAddToMapFromBucketPreservesEquivalence!44 lt!1699771 lt!1699770 (_2!28848 lt!1699794)))))

(declare-fun b!4522883 () Bool)

(declare-fun res!1882777 () Bool)

(declare-fun e!2817951 () Bool)

(assert (=> b!4522883 (=> res!1882777 e!2817951)))

(declare-fun lt!1699789 () List!50792)

(declare-fun apply!11905 (ListLongMap!2975 (_ BitVec 64)) List!50792)

(assert (=> b!4522883 (= res!1882777 (not (= (apply!11905 lt!1699792 hash!344) lt!1699789)))))

(declare-fun b!4522884 () Bool)

(assert (=> b!4522884 (= e!2817936 e!2817951)))

(declare-fun res!1882778 () Bool)

(assert (=> b!4522884 (=> res!1882778 e!2817951)))

(declare-fun contains!13408 (ListLongMap!2975 (_ BitVec 64)) Bool)

(assert (=> b!4522884 (= res!1882778 (not (contains!13408 lt!1699792 hash!344)))))

(declare-fun tail!7748 (ListLongMap!2975) ListLongMap!2975)

(assert (=> b!4522884 (= lt!1699792 (tail!7748 lm!1477))))

(declare-fun b!4522885 () Bool)

(declare-fun res!1882785 () Bool)

(declare-fun e!2817947 () Bool)

(assert (=> b!4522885 (=> res!1882785 e!2817947)))

(declare-fun lt!1699795 () ListLongMap!2975)

(assert (=> b!4522885 (= res!1882785 (not (= (head!9426 lt!1699795) lt!1699794)))))

(declare-fun b!4522886 () Bool)

(declare-fun e!2817944 () Bool)

(declare-fun e!2817945 () Bool)

(assert (=> b!4522886 (= e!2817944 e!2817945)))

(declare-fun res!1882791 () Bool)

(assert (=> b!4522886 (=> res!1882791 e!2817945)))

(declare-fun containsKeyBiggerList!148 (List!50793 K!12060) Bool)

(assert (=> b!4522886 (= res!1882791 (not (containsKeyBiggerList!148 (t!357755 (toList!4344 lm!1477)) key!3287)))))

(assert (=> b!4522886 (containsKeyBiggerList!148 (toList!4344 lt!1699792) key!3287)))

(declare-fun lt!1699790 () Unit!95506)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!84 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> b!4522886 (= lt!1699790 (lemmaInLongMapThenContainsKeyBiggerList!84 lt!1699792 key!3287 hashF!1107))))

(declare-fun b!4522887 () Bool)

(declare-fun e!2817950 () Bool)

(assert (=> b!4522887 (= e!2817950 e!2817941)))

(declare-fun res!1882779 () Bool)

(assert (=> b!4522887 (=> (not res!1882779) (not e!2817941))))

(declare-fun lt!1699786 () (_ BitVec 64))

(assert (=> b!4522887 (= res!1882779 (= lt!1699786 hash!344))))

(declare-fun hash!2829 (Hashable!5563 K!12060) (_ BitVec 64))

(assert (=> b!4522887 (= lt!1699786 (hash!2829 hashF!1107 key!3287))))

(declare-fun b!4522888 () Bool)

(declare-fun res!1882788 () Bool)

(declare-fun e!2817949 () Bool)

(assert (=> b!4522888 (=> res!1882788 e!2817949)))

(declare-fun containsKey!1800 (List!50792 K!12060) Bool)

(assert (=> b!4522888 (= res!1882788 (not (containsKey!1800 (_2!28848 lt!1699794) key!3287)))))

(declare-fun b!4522889 () Bool)

(assert (=> b!4522889 (= e!2817951 e!2817944)))

(declare-fun res!1882781 () Bool)

(assert (=> b!4522889 (=> res!1882781 e!2817944)))

(declare-fun lt!1699782 () Bool)

(assert (=> b!4522889 (= res!1882781 lt!1699782)))

(declare-fun lt!1699783 () Unit!95506)

(declare-fun e!2817937 () Unit!95506)

(assert (=> b!4522889 (= lt!1699783 e!2817937)))

(declare-fun c!771909 () Bool)

(assert (=> b!4522889 (= c!771909 lt!1699782)))

(assert (=> b!4522889 (= lt!1699782 (not (containsKey!1800 lt!1699789 key!3287)))))

(declare-fun b!4522890 () Bool)

(assert (=> b!4522890 (= e!2817940 e!2817947)))

(declare-fun res!1882784 () Bool)

(assert (=> b!4522890 (=> res!1882784 e!2817947)))

(assert (=> b!4522890 (= res!1882784 (not (= lt!1699795 (+!1552 lm!1477 lt!1699772))))))

(assert (=> b!4522890 (= lt!1699795 (+!1552 lt!1699796 lt!1699794))))

(declare-fun b!4522891 () Bool)

(declare-fun Unit!95508 () Unit!95506)

(assert (=> b!4522891 (= e!2817937 Unit!95508)))

(declare-fun lt!1699774 () Unit!95506)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!156 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> b!4522891 (= lt!1699774 (lemmaNotInItsHashBucketThenNotInMap!156 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4522891 false))

(declare-fun b!4522892 () Bool)

(declare-fun e!2817943 () Bool)

(declare-fun tp!1338190 () Bool)

(assert (=> b!4522892 (= e!2817943 tp!1338190)))

(declare-fun b!4522893 () Bool)

(assert (=> b!4522893 (= e!2817947 e!2817946)))

(declare-fun res!1882795 () Bool)

(assert (=> b!4522893 (=> res!1882795 e!2817946)))

(assert (=> b!4522893 (= res!1882795 (not (eq!625 lt!1699780 lt!1699787)))))

(assert (=> b!4522893 (= lt!1699787 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771))))

(assert (=> b!4522893 (= lt!1699780 (extractMap!1224 (toList!4344 lt!1699795)))))

(declare-fun b!4522894 () Bool)

(declare-fun res!1882776 () Bool)

(assert (=> b!4522894 (=> res!1882776 e!2817936)))

(get-info :version)

(assert (=> b!4522894 (= res!1882776 (or ((_ is Nil!50669) (toList!4344 lm!1477)) (= (_1!28848 (h!56528 (toList!4344 lm!1477))) hash!344)))))

(declare-fun b!4522895 () Bool)

(declare-fun e!2817935 () Bool)

(assert (=> b!4522895 (= e!2817935 e!2817950)))

(declare-fun res!1882793 () Bool)

(assert (=> b!4522895 (=> (not res!1882793) (not e!2817950))))

(declare-fun contains!13409 (ListMap!3605 K!12060) Bool)

(assert (=> b!4522895 (= res!1882793 (contains!13409 lt!1699778 key!3287))))

(assert (=> b!4522895 (= lt!1699778 (extractMap!1224 (toList!4344 lm!1477)))))

(declare-fun b!4522896 () Bool)

(assert (=> b!4522896 (= e!2817945 e!2817938)))

(declare-fun res!1882780 () Bool)

(assert (=> b!4522896 (=> res!1882780 e!2817938)))

(assert (=> b!4522896 (= res!1882780 (not (contains!13409 (extractMap!1224 (t!357755 (toList!4344 lm!1477))) key!3287)))))

(assert (=> b!4522896 (contains!13409 lt!1699768 key!3287)))

(assert (=> b!4522896 (= lt!1699768 (extractMap!1224 (toList!4344 lt!1699792)))))

(declare-fun lt!1699788 () Unit!95506)

(declare-fun lemmaListContainsThenExtractedMapContains!138 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> b!4522896 (= lt!1699788 (lemmaListContainsThenExtractedMapContains!138 lt!1699792 key!3287 hashF!1107))))

(declare-fun b!4522897 () Bool)

(declare-fun res!1882774 () Bool)

(assert (=> b!4522897 (=> res!1882774 e!2817951)))

(declare-fun lt!1699785 () tuple2!51108)

(declare-fun contains!13410 (List!50793 tuple2!51108) Bool)

(assert (=> b!4522897 (= res!1882774 (not (contains!13410 (t!357755 (toList!4344 lm!1477)) lt!1699785)))))

(declare-fun e!2817948 () Bool)

(assert (=> b!4522898 (= e!2817949 e!2817948)))

(declare-fun res!1882787 () Bool)

(assert (=> b!4522898 (=> (not res!1882787) (not e!2817948))))

(declare-fun lambda!172949 () Int)

(declare-fun forall!10280 (List!50792 Int) Bool)

(assert (=> b!4522898 (= res!1882787 (forall!10280 (_2!28848 (h!56528 (toList!4344 lm!1477))) lambda!172949))))

(declare-fun lt!1699773 () Unit!95506)

(declare-fun forallContained!2531 (List!50793 Int tuple2!51108) Unit!95506)

(assert (=> b!4522898 (= lt!1699773 (forallContained!2531 (toList!4344 lm!1477) lambda!172948 (h!56528 (toList!4344 lm!1477))))))

(declare-datatypes ((Option!11127 0))(
  ( (None!11126) (Some!11126 (v!44738 tuple2!51106)) )
))
(declare-fun lt!1699781 () Option!11127)

(declare-fun getPair!184 (List!50792 K!12060) Option!11127)

(assert (=> b!4522898 (= lt!1699781 (getPair!184 (_2!28848 lt!1699794) key!3287))))

(assert (=> b!4522898 (not (= hash!344 (_1!28848 lt!1699794)))))

(declare-fun b!4522899 () Bool)

(declare-fun Unit!95509 () Unit!95506)

(assert (=> b!4522899 (= e!2817937 Unit!95509)))

(declare-fun b!4522900 () Bool)

(assert (=> b!4522900 (= e!2817941 (not e!2817936))))

(declare-fun res!1882796 () Bool)

(assert (=> b!4522900 (=> res!1882796 e!2817936)))

(declare-fun removePairForKey!795 (List!50792 K!12060) List!50792)

(assert (=> b!4522900 (= res!1882796 (not (= newBucket!178 (removePairForKey!795 lt!1699789 key!3287))))))

(declare-fun lt!1699775 () Unit!95506)

(assert (=> b!4522900 (= lt!1699775 (forallContained!2531 (toList!4344 lm!1477) lambda!172947 lt!1699785))))

(assert (=> b!4522900 (contains!13410 (toList!4344 lm!1477) lt!1699785)))

(assert (=> b!4522900 (= lt!1699785 (tuple2!51109 hash!344 lt!1699789))))

(declare-fun lt!1699793 () Unit!95506)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!680 (List!50793 (_ BitVec 64) List!50792) Unit!95506)

(assert (=> b!4522900 (= lt!1699793 (lemmaGetValueByKeyImpliesContainsTuple!680 (toList!4344 lm!1477) hash!344 lt!1699789))))

(assert (=> b!4522900 (= lt!1699789 (apply!11905 lm!1477 hash!344))))

(assert (=> b!4522900 (contains!13408 lm!1477 lt!1699786)))

(declare-fun lt!1699791 () Unit!95506)

(declare-fun lemmaInGenMapThenLongMapContainsHash!242 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> b!4522900 (= lt!1699791 (lemmaInGenMapThenLongMapContainsHash!242 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4522901 () Bool)

(assert (=> b!4522901 (= e!2817942 e!2817949)))

(declare-fun res!1882783 () Bool)

(assert (=> b!4522901 (=> res!1882783 e!2817949)))

(assert (=> b!4522901 (= res!1882783 (not (noDuplicateKeys!1168 (_2!28848 lt!1699794))))))

(declare-fun lt!1699776 () Unit!95506)

(assert (=> b!4522901 (= lt!1699776 (forallContained!2531 (toList!4344 lm!1477) lambda!172947 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4522902 () Bool)

(declare-fun res!1882790 () Bool)

(assert (=> b!4522902 (=> (not res!1882790) (not e!2817935))))

(declare-fun allKeysSameHashInMap!1275 (ListLongMap!2975 Hashable!5563) Bool)

(assert (=> b!4522902 (= res!1882790 (allKeysSameHashInMap!1275 lm!1477 hashF!1107))))

(declare-fun res!1882773 () Bool)

(assert (=> start!448016 (=> (not res!1882773) (not e!2817935))))

(declare-fun forall!10281 (List!50793 Int) Bool)

(assert (=> start!448016 (= res!1882773 (forall!10281 (toList!4344 lm!1477) lambda!172947))))

(assert (=> start!448016 e!2817935))

(assert (=> start!448016 true))

(declare-fun inv!66244 (ListLongMap!2975) Bool)

(assert (=> start!448016 (and (inv!66244 lm!1477) e!2817943)))

(assert (=> start!448016 tp_is_empty!27949))

(assert (=> start!448016 e!2817939))

(declare-fun b!4522903 () Bool)

(declare-fun contains!13411 (List!50792 tuple2!51106) Bool)

(declare-fun get!16604 (Option!11127) tuple2!51106)

(assert (=> b!4522903 (= e!2817948 (contains!13411 (_2!28848 (h!56528 (toList!4344 lm!1477))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(declare-fun b!4522904 () Bool)

(declare-fun res!1882775 () Bool)

(assert (=> b!4522904 (=> res!1882775 e!2817940)))

(assert (=> b!4522904 (= res!1882775 (not (eq!625 lt!1699778 lt!1699769)))))

(assert (= (and start!448016 res!1882773) b!4522902))

(assert (= (and b!4522902 res!1882790) b!4522895))

(assert (= (and b!4522895 res!1882793) b!4522887))

(assert (= (and b!4522887 res!1882779) b!4522879))

(assert (= (and b!4522879 res!1882794) b!4522900))

(assert (= (and b!4522900 (not res!1882796)) b!4522877))

(assert (= (and b!4522877 (not res!1882792)) b!4522894))

(assert (= (and b!4522894 (not res!1882776)) b!4522884))

(assert (= (and b!4522884 (not res!1882778)) b!4522883))

(assert (= (and b!4522883 (not res!1882777)) b!4522897))

(assert (= (and b!4522897 (not res!1882774)) b!4522889))

(assert (= (and b!4522889 c!771909) b!4522891))

(assert (= (and b!4522889 (not c!771909)) b!4522899))

(assert (= (and b!4522889 (not res!1882781)) b!4522886))

(assert (= (and b!4522886 (not res!1882791)) b!4522896))

(assert (= (and b!4522896 (not res!1882780)) b!4522880))

(assert (= (and b!4522880 (not res!1882789)) b!4522904))

(assert (= (and b!4522904 (not res!1882775)) b!4522878))

(assert (= (and b!4522878 (not res!1882782)) b!4522890))

(assert (= (and b!4522890 (not res!1882784)) b!4522885))

(assert (= (and b!4522885 (not res!1882785)) b!4522893))

(assert (= (and b!4522893 (not res!1882795)) b!4522882))

(assert (= (and b!4522882 (not res!1882786)) b!4522901))

(assert (= (and b!4522901 (not res!1882783)) b!4522888))

(assert (= (and b!4522888 (not res!1882788)) b!4522898))

(assert (= (and b!4522898 res!1882787) b!4522903))

(assert (= start!448016 b!4522892))

(assert (= (and start!448016 ((_ is Cons!50668) newBucket!178)) b!4522881))

(declare-fun m!5273101 () Bool)

(assert (=> b!4522880 m!5273101))

(declare-fun m!5273103 () Bool)

(assert (=> b!4522880 m!5273103))

(declare-fun m!5273105 () Bool)

(assert (=> b!4522880 m!5273105))

(declare-fun m!5273107 () Bool)

(assert (=> b!4522880 m!5273107))

(declare-fun m!5273109 () Bool)

(assert (=> b!4522880 m!5273109))

(declare-fun m!5273111 () Bool)

(assert (=> b!4522880 m!5273111))

(declare-fun m!5273113 () Bool)

(assert (=> b!4522880 m!5273113))

(declare-fun m!5273115 () Bool)

(assert (=> b!4522880 m!5273115))

(declare-fun m!5273117 () Bool)

(assert (=> b!4522880 m!5273117))

(declare-fun m!5273119 () Bool)

(assert (=> start!448016 m!5273119))

(declare-fun m!5273121 () Bool)

(assert (=> start!448016 m!5273121))

(declare-fun m!5273123 () Bool)

(assert (=> b!4522902 m!5273123))

(declare-fun m!5273125 () Bool)

(assert (=> b!4522883 m!5273125))

(declare-fun m!5273127 () Bool)

(assert (=> b!4522900 m!5273127))

(declare-fun m!5273129 () Bool)

(assert (=> b!4522900 m!5273129))

(declare-fun m!5273131 () Bool)

(assert (=> b!4522900 m!5273131))

(declare-fun m!5273133 () Bool)

(assert (=> b!4522900 m!5273133))

(declare-fun m!5273135 () Bool)

(assert (=> b!4522900 m!5273135))

(declare-fun m!5273137 () Bool)

(assert (=> b!4522900 m!5273137))

(declare-fun m!5273139 () Bool)

(assert (=> b!4522900 m!5273139))

(declare-fun m!5273141 () Bool)

(assert (=> b!4522882 m!5273141))

(declare-fun m!5273143 () Bool)

(assert (=> b!4522882 m!5273143))

(declare-fun m!5273145 () Bool)

(assert (=> b!4522882 m!5273145))

(declare-fun m!5273147 () Bool)

(assert (=> b!4522882 m!5273147))

(declare-fun m!5273149 () Bool)

(assert (=> b!4522889 m!5273149))

(declare-fun m!5273151 () Bool)

(assert (=> b!4522891 m!5273151))

(declare-fun m!5273153 () Bool)

(assert (=> b!4522901 m!5273153))

(declare-fun m!5273155 () Bool)

(assert (=> b!4522901 m!5273155))

(declare-fun m!5273157 () Bool)

(assert (=> b!4522887 m!5273157))

(declare-fun m!5273159 () Bool)

(assert (=> b!4522895 m!5273159))

(declare-fun m!5273161 () Bool)

(assert (=> b!4522895 m!5273161))

(declare-fun m!5273163 () Bool)

(assert (=> b!4522877 m!5273163))

(declare-fun m!5273165 () Bool)

(assert (=> b!4522890 m!5273165))

(declare-fun m!5273167 () Bool)

(assert (=> b!4522890 m!5273167))

(declare-fun m!5273169 () Bool)

(assert (=> b!4522886 m!5273169))

(declare-fun m!5273171 () Bool)

(assert (=> b!4522886 m!5273171))

(declare-fun m!5273173 () Bool)

(assert (=> b!4522886 m!5273173))

(declare-fun m!5273175 () Bool)

(assert (=> b!4522888 m!5273175))

(declare-fun m!5273177 () Bool)

(assert (=> b!4522885 m!5273177))

(declare-fun m!5273179 () Bool)

(assert (=> b!4522903 m!5273179))

(declare-fun m!5273181 () Bool)

(assert (=> b!4522903 m!5273181))

(declare-fun m!5273183 () Bool)

(assert (=> b!4522898 m!5273183))

(declare-fun m!5273185 () Bool)

(assert (=> b!4522898 m!5273185))

(declare-fun m!5273187 () Bool)

(assert (=> b!4522898 m!5273187))

(declare-fun m!5273189 () Bool)

(assert (=> b!4522884 m!5273189))

(declare-fun m!5273191 () Bool)

(assert (=> b!4522884 m!5273191))

(declare-fun m!5273193 () Bool)

(assert (=> b!4522904 m!5273193))

(declare-fun m!5273195 () Bool)

(assert (=> b!4522897 m!5273195))

(declare-fun m!5273197 () Bool)

(assert (=> b!4522879 m!5273197))

(declare-fun m!5273199 () Bool)

(assert (=> b!4522893 m!5273199))

(declare-fun m!5273201 () Bool)

(assert (=> b!4522893 m!5273201))

(declare-fun m!5273203 () Bool)

(assert (=> b!4522893 m!5273203))

(declare-fun m!5273205 () Bool)

(assert (=> b!4522896 m!5273205))

(declare-fun m!5273207 () Bool)

(assert (=> b!4522896 m!5273207))

(declare-fun m!5273209 () Bool)

(assert (=> b!4522896 m!5273209))

(declare-fun m!5273211 () Bool)

(assert (=> b!4522896 m!5273211))

(assert (=> b!4522896 m!5273209))

(declare-fun m!5273213 () Bool)

(assert (=> b!4522896 m!5273213))

(check-sat (not b!4522880) (not b!4522896) (not b!4522888) (not b!4522892) (not b!4522902) (not b!4522881) (not b!4522904) (not b!4522877) (not b!4522886) (not start!448016) (not b!4522887) (not b!4522882) (not b!4522891) (not b!4522900) (not b!4522883) tp_is_empty!27949 tp_is_empty!27951 (not b!4522893) (not b!4522897) (not b!4522885) (not b!4522884) (not b!4522889) (not b!4522901) (not b!4522890) (not b!4522879) (not b!4522898) (not b!4522895) (not b!4522903))
(check-sat)
(get-model)

(declare-fun d!1393888 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8374 (List!50792) (InoxSet tuple2!51106))

(assert (=> d!1393888 (= (eq!625 lt!1699780 lt!1699777) (= (content!8374 (toList!4343 lt!1699780)) (content!8374 (toList!4343 lt!1699777))))))

(declare-fun bs!857895 () Bool)

(assert (= bs!857895 d!1393888))

(declare-fun m!5273215 () Bool)

(assert (=> bs!857895 m!5273215))

(declare-fun m!5273217 () Bool)

(assert (=> bs!857895 m!5273217))

(assert (=> b!4522882 d!1393888))

(declare-fun d!1393890 () Bool)

(assert (=> d!1393890 (= (eq!625 lt!1699787 lt!1699777) (= (content!8374 (toList!4343 lt!1699787)) (content!8374 (toList!4343 lt!1699777))))))

(declare-fun bs!857896 () Bool)

(assert (= bs!857896 d!1393890))

(declare-fun m!5273219 () Bool)

(assert (=> bs!857896 m!5273219))

(assert (=> bs!857896 m!5273217))

(assert (=> b!4522882 d!1393890))

(declare-fun bs!857943 () Bool)

(declare-fun b!4523057 () Bool)

(assert (= bs!857943 (and b!4523057 b!4522898)))

(declare-fun lambda!172995 () Int)

(assert (=> bs!857943 (not (= lambda!172995 lambda!172949))))

(assert (=> b!4523057 true))

(declare-fun bs!857944 () Bool)

(declare-fun b!4523060 () Bool)

(assert (= bs!857944 (and b!4523060 b!4522898)))

(declare-fun lambda!172996 () Int)

(assert (=> bs!857944 (not (= lambda!172996 lambda!172949))))

(declare-fun bs!857945 () Bool)

(assert (= bs!857945 (and b!4523060 b!4523057)))

(assert (=> bs!857945 (= lambda!172996 lambda!172995)))

(assert (=> b!4523060 true))

(declare-fun lambda!172997 () Int)

(assert (=> bs!857944 (not (= lambda!172997 lambda!172949))))

(declare-fun lt!1699955 () ListMap!3605)

(assert (=> bs!857945 (= (= lt!1699955 lt!1699770) (= lambda!172997 lambda!172995))))

(assert (=> b!4523060 (= (= lt!1699955 lt!1699770) (= lambda!172997 lambda!172996))))

(assert (=> b!4523060 true))

(declare-fun bs!857946 () Bool)

(declare-fun d!1393892 () Bool)

(assert (= bs!857946 (and d!1393892 b!4522898)))

(declare-fun lambda!172998 () Int)

(assert (=> bs!857946 (not (= lambda!172998 lambda!172949))))

(declare-fun bs!857947 () Bool)

(assert (= bs!857947 (and d!1393892 b!4523057)))

(declare-fun lt!1699952 () ListMap!3605)

(assert (=> bs!857947 (= (= lt!1699952 lt!1699770) (= lambda!172998 lambda!172995))))

(declare-fun bs!857948 () Bool)

(assert (= bs!857948 (and d!1393892 b!4523060)))

(assert (=> bs!857948 (= (= lt!1699952 lt!1699770) (= lambda!172998 lambda!172996))))

(assert (=> bs!857948 (= (= lt!1699952 lt!1699955) (= lambda!172998 lambda!172997))))

(assert (=> d!1393892 true))

(declare-fun call!315148 () Bool)

(declare-fun bm!315142 () Bool)

(declare-fun c!771942 () Bool)

(assert (=> bm!315142 (= call!315148 (forall!10280 (ite c!771942 (toList!4343 lt!1699770) (t!357754 (_2!28848 lt!1699794))) (ite c!771942 lambda!172995 lambda!172997)))))

(declare-fun e!2818062 () ListMap!3605)

(assert (=> b!4523057 (= e!2818062 lt!1699770)))

(declare-fun lt!1699962 () Unit!95506)

(declare-fun call!315147 () Unit!95506)

(assert (=> b!4523057 (= lt!1699962 call!315147)))

(declare-fun call!315149 () Bool)

(assert (=> b!4523057 call!315149))

(declare-fun lt!1699959 () Unit!95506)

(assert (=> b!4523057 (= lt!1699959 lt!1699962)))

(assert (=> b!4523057 call!315148))

(declare-fun lt!1699964 () Unit!95506)

(declare-fun Unit!95512 () Unit!95506)

(assert (=> b!4523057 (= lt!1699964 Unit!95512)))

(declare-fun bm!315143 () Bool)

(assert (=> bm!315143 (= call!315149 (forall!10280 (ite c!771942 (toList!4343 lt!1699770) (_2!28848 lt!1699794)) (ite c!771942 lambda!172995 lambda!172997)))))

(declare-fun b!4523058 () Bool)

(declare-fun res!1882881 () Bool)

(declare-fun e!2818060 () Bool)

(assert (=> b!4523058 (=> (not res!1882881) (not e!2818060))))

(assert (=> b!4523058 (= res!1882881 (forall!10280 (toList!4343 lt!1699770) lambda!172998))))

(declare-fun b!4523059 () Bool)

(declare-fun e!2818061 () Bool)

(assert (=> b!4523059 (= e!2818061 (forall!10280 (toList!4343 lt!1699770) lambda!172997))))

(declare-fun bm!315144 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!343 (ListMap!3605) Unit!95506)

(assert (=> bm!315144 (= call!315147 (lemmaContainsAllItsOwnKeys!343 lt!1699770))))

(assert (=> b!4523060 (= e!2818062 lt!1699955)))

(declare-fun lt!1699954 () ListMap!3605)

(declare-fun +!1553 (ListMap!3605 tuple2!51106) ListMap!3605)

(assert (=> b!4523060 (= lt!1699954 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523060 (= lt!1699955 (addToMapMapFromBucket!695 (t!357754 (_2!28848 lt!1699794)) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1699963 () Unit!95506)

(assert (=> b!4523060 (= lt!1699963 call!315147)))

(assert (=> b!4523060 (forall!10280 (toList!4343 lt!1699770) lambda!172996)))

(declare-fun lt!1699965 () Unit!95506)

(assert (=> b!4523060 (= lt!1699965 lt!1699963)))

(assert (=> b!4523060 (forall!10280 (toList!4343 lt!1699954) lambda!172997)))

(declare-fun lt!1699946 () Unit!95506)

(declare-fun Unit!95513 () Unit!95506)

(assert (=> b!4523060 (= lt!1699946 Unit!95513)))

(assert (=> b!4523060 call!315148))

(declare-fun lt!1699957 () Unit!95506)

(declare-fun Unit!95514 () Unit!95506)

(assert (=> b!4523060 (= lt!1699957 Unit!95514)))

(declare-fun lt!1699945 () Unit!95506)

(declare-fun Unit!95515 () Unit!95506)

(assert (=> b!4523060 (= lt!1699945 Unit!95515)))

(declare-fun lt!1699948 () Unit!95506)

(declare-fun forallContained!2532 (List!50792 Int tuple2!51106) Unit!95506)

(assert (=> b!4523060 (= lt!1699948 (forallContained!2532 (toList!4343 lt!1699954) lambda!172997 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523060 (contains!13409 lt!1699954 (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1699947 () Unit!95506)

(declare-fun Unit!95516 () Unit!95506)

(assert (=> b!4523060 (= lt!1699947 Unit!95516)))

(assert (=> b!4523060 (contains!13409 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1699960 () Unit!95506)

(declare-fun Unit!95517 () Unit!95506)

(assert (=> b!4523060 (= lt!1699960 Unit!95517)))

(assert (=> b!4523060 call!315149))

(declare-fun lt!1699949 () Unit!95506)

(declare-fun Unit!95518 () Unit!95506)

(assert (=> b!4523060 (= lt!1699949 Unit!95518)))

(assert (=> b!4523060 (forall!10280 (toList!4343 lt!1699954) lambda!172997)))

(declare-fun lt!1699951 () Unit!95506)

(declare-fun Unit!95519 () Unit!95506)

(assert (=> b!4523060 (= lt!1699951 Unit!95519)))

(declare-fun lt!1699961 () Unit!95506)

(declare-fun Unit!95520 () Unit!95506)

(assert (=> b!4523060 (= lt!1699961 Unit!95520)))

(declare-fun lt!1699956 () Unit!95506)

(declare-fun addForallContainsKeyThenBeforeAdding!343 (ListMap!3605 ListMap!3605 K!12060 V!12306) Unit!95506)

(assert (=> b!4523060 (= lt!1699956 (addForallContainsKeyThenBeforeAdding!343 lt!1699770 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523060 (forall!10280 (toList!4343 lt!1699770) lambda!172997)))

(declare-fun lt!1699950 () Unit!95506)

(assert (=> b!4523060 (= lt!1699950 lt!1699956)))

(assert (=> b!4523060 (forall!10280 (toList!4343 lt!1699770) lambda!172997)))

(declare-fun lt!1699953 () Unit!95506)

(declare-fun Unit!95521 () Unit!95506)

(assert (=> b!4523060 (= lt!1699953 Unit!95521)))

(declare-fun res!1882879 () Bool)

(assert (=> b!4523060 (= res!1882879 (forall!10280 (_2!28848 lt!1699794) lambda!172997))))

(assert (=> b!4523060 (=> (not res!1882879) (not e!2818061))))

(assert (=> b!4523060 e!2818061))

(declare-fun lt!1699958 () Unit!95506)

(declare-fun Unit!95523 () Unit!95506)

(assert (=> b!4523060 (= lt!1699958 Unit!95523)))

(assert (=> d!1393892 e!2818060))

(declare-fun res!1882880 () Bool)

(assert (=> d!1393892 (=> (not res!1882880) (not e!2818060))))

(assert (=> d!1393892 (= res!1882880 (forall!10280 (_2!28848 lt!1699794) lambda!172998))))

(assert (=> d!1393892 (= lt!1699952 e!2818062)))

(assert (=> d!1393892 (= c!771942 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1393892 (noDuplicateKeys!1168 (_2!28848 lt!1699794))))

(assert (=> d!1393892 (= (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770) lt!1699952)))

(declare-fun b!4523061 () Bool)

(declare-fun invariantList!1023 (List!50792) Bool)

(assert (=> b!4523061 (= e!2818060 (invariantList!1023 (toList!4343 lt!1699952)))))

(assert (= (and d!1393892 c!771942) b!4523057))

(assert (= (and d!1393892 (not c!771942)) b!4523060))

(assert (= (and b!4523060 res!1882879) b!4523059))

(assert (= (or b!4523057 b!4523060) bm!315142))

(assert (= (or b!4523057 b!4523060) bm!315143))

(assert (= (or b!4523057 b!4523060) bm!315144))

(assert (= (and d!1393892 res!1882880) b!4523058))

(assert (= (and b!4523058 res!1882881) b!4523061))

(declare-fun m!5273443 () Bool)

(assert (=> b!4523060 m!5273443))

(declare-fun m!5273445 () Bool)

(assert (=> b!4523060 m!5273445))

(declare-fun m!5273447 () Bool)

(assert (=> b!4523060 m!5273447))

(declare-fun m!5273449 () Bool)

(assert (=> b!4523060 m!5273449))

(assert (=> b!4523060 m!5273449))

(declare-fun m!5273451 () Bool)

(assert (=> b!4523060 m!5273451))

(assert (=> b!4523060 m!5273451))

(declare-fun m!5273453 () Bool)

(assert (=> b!4523060 m!5273453))

(declare-fun m!5273455 () Bool)

(assert (=> b!4523060 m!5273455))

(assert (=> b!4523060 m!5273445))

(declare-fun m!5273457 () Bool)

(assert (=> b!4523060 m!5273457))

(declare-fun m!5273459 () Bool)

(assert (=> b!4523060 m!5273459))

(declare-fun m!5273461 () Bool)

(assert (=> b!4523060 m!5273461))

(declare-fun m!5273463 () Bool)

(assert (=> b!4523058 m!5273463))

(assert (=> b!4523059 m!5273449))

(declare-fun m!5273465 () Bool)

(assert (=> bm!315143 m!5273465))

(declare-fun m!5273467 () Bool)

(assert (=> bm!315144 m!5273467))

(declare-fun m!5273469 () Bool)

(assert (=> bm!315142 m!5273469))

(declare-fun m!5273471 () Bool)

(assert (=> d!1393892 m!5273471))

(assert (=> d!1393892 m!5273153))

(declare-fun m!5273473 () Bool)

(assert (=> b!4523061 m!5273473))

(assert (=> b!4522882 d!1393892))

(declare-fun d!1393966 () Bool)

(assert (=> d!1393966 (eq!625 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771) (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770))))

(declare-fun lt!1699968 () Unit!95506)

(declare-fun choose!29578 (ListMap!3605 ListMap!3605 List!50792) Unit!95506)

(assert (=> d!1393966 (= lt!1699968 (choose!29578 lt!1699771 lt!1699770 (_2!28848 lt!1699794)))))

(assert (=> d!1393966 (noDuplicateKeys!1168 (_2!28848 lt!1699794))))

(assert (=> d!1393966 (= (lemmaAddToMapFromBucketPreservesEquivalence!44 lt!1699771 lt!1699770 (_2!28848 lt!1699794)) lt!1699968)))

(declare-fun bs!857949 () Bool)

(assert (= bs!857949 d!1393966))

(assert (=> bs!857949 m!5273201))

(assert (=> bs!857949 m!5273145))

(declare-fun m!5273475 () Bool)

(assert (=> bs!857949 m!5273475))

(assert (=> bs!857949 m!5273201))

(assert (=> bs!857949 m!5273153))

(declare-fun m!5273477 () Bool)

(assert (=> bs!857949 m!5273477))

(assert (=> bs!857949 m!5273145))

(assert (=> b!4522882 d!1393966))

(declare-fun lt!1699971 () Bool)

(declare-fun d!1393968 () Bool)

(assert (=> d!1393968 (= lt!1699971 (select (content!8374 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(declare-fun e!2818068 () Bool)

(assert (=> d!1393968 (= lt!1699971 e!2818068)))

(declare-fun res!1882887 () Bool)

(assert (=> d!1393968 (=> (not res!1882887) (not e!2818068))))

(assert (=> d!1393968 (= res!1882887 ((_ is Cons!50668) (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> d!1393968 (= (contains!13411 (_2!28848 (h!56528 (toList!4344 lm!1477))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))) lt!1699971)))

(declare-fun b!4523068 () Bool)

(declare-fun e!2818067 () Bool)

(assert (=> b!4523068 (= e!2818068 e!2818067)))

(declare-fun res!1882886 () Bool)

(assert (=> b!4523068 (=> res!1882886 e!2818067)))

(assert (=> b!4523068 (= res!1882886 (= (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(declare-fun b!4523069 () Bool)

(assert (=> b!4523069 (= e!2818067 (contains!13411 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(assert (= (and d!1393968 res!1882887) b!4523068))

(assert (= (and b!4523068 (not res!1882886)) b!4523069))

(declare-fun m!5273479 () Bool)

(assert (=> d!1393968 m!5273479))

(declare-fun m!5273481 () Bool)

(assert (=> d!1393968 m!5273481))

(declare-fun m!5273483 () Bool)

(assert (=> b!4523069 m!5273483))

(assert (=> b!4522903 d!1393968))

(declare-fun d!1393970 () Bool)

(assert (=> d!1393970 (= (get!16604 lt!1699781) (v!44738 lt!1699781))))

(assert (=> b!4522903 d!1393970))

(declare-fun d!1393972 () Bool)

(assert (=> d!1393972 (= (eq!625 lt!1699778 lt!1699769) (= (content!8374 (toList!4343 lt!1699778)) (content!8374 (toList!4343 lt!1699769))))))

(declare-fun bs!857950 () Bool)

(assert (= bs!857950 d!1393972))

(declare-fun m!5273485 () Bool)

(assert (=> bs!857950 m!5273485))

(declare-fun m!5273487 () Bool)

(assert (=> bs!857950 m!5273487))

(assert (=> b!4522904 d!1393972))

(declare-fun d!1393974 () Bool)

(declare-datatypes ((Option!11130 0))(
  ( (None!11129) (Some!11129 (v!44747 List!50792)) )
))
(declare-fun get!16606 (Option!11130) List!50792)

(declare-fun getValueByKey!1104 (List!50793 (_ BitVec 64)) Option!11130)

(assert (=> d!1393974 (= (apply!11905 lt!1699792 hash!344) (get!16606 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344)))))

(declare-fun bs!857951 () Bool)

(assert (= bs!857951 d!1393974))

(declare-fun m!5273489 () Bool)

(assert (=> bs!857951 m!5273489))

(assert (=> bs!857951 m!5273489))

(declare-fun m!5273491 () Bool)

(assert (=> bs!857951 m!5273491))

(assert (=> b!4522883 d!1393974))

(declare-fun d!1393976 () Bool)

(declare-fun e!2818073 () Bool)

(assert (=> d!1393976 e!2818073))

(declare-fun res!1882890 () Bool)

(assert (=> d!1393976 (=> res!1882890 e!2818073)))

(declare-fun lt!1699983 () Bool)

(assert (=> d!1393976 (= res!1882890 (not lt!1699983))))

(declare-fun lt!1699982 () Bool)

(assert (=> d!1393976 (= lt!1699983 lt!1699982)))

(declare-fun lt!1699980 () Unit!95506)

(declare-fun e!2818074 () Unit!95506)

(assert (=> d!1393976 (= lt!1699980 e!2818074)))

(declare-fun c!771945 () Bool)

(assert (=> d!1393976 (= c!771945 lt!1699982)))

(declare-fun containsKey!1802 (List!50793 (_ BitVec 64)) Bool)

(assert (=> d!1393976 (= lt!1699982 (containsKey!1802 (toList!4344 lt!1699792) hash!344))))

(assert (=> d!1393976 (= (contains!13408 lt!1699792 hash!344) lt!1699983)))

(declare-fun b!4523076 () Bool)

(declare-fun lt!1699981 () Unit!95506)

(assert (=> b!4523076 (= e!2818074 lt!1699981)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (List!50793 (_ BitVec 64)) Unit!95506)

(assert (=> b!4523076 (= lt!1699981 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1699792) hash!344))))

(declare-fun isDefined!8414 (Option!11130) Bool)

(assert (=> b!4523076 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344))))

(declare-fun b!4523077 () Bool)

(declare-fun Unit!95525 () Unit!95506)

(assert (=> b!4523077 (= e!2818074 Unit!95525)))

(declare-fun b!4523078 () Bool)

(assert (=> b!4523078 (= e!2818073 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344)))))

(assert (= (and d!1393976 c!771945) b!4523076))

(assert (= (and d!1393976 (not c!771945)) b!4523077))

(assert (= (and d!1393976 (not res!1882890)) b!4523078))

(declare-fun m!5273493 () Bool)

(assert (=> d!1393976 m!5273493))

(declare-fun m!5273495 () Bool)

(assert (=> b!4523076 m!5273495))

(assert (=> b!4523076 m!5273489))

(assert (=> b!4523076 m!5273489))

(declare-fun m!5273497 () Bool)

(assert (=> b!4523076 m!5273497))

(assert (=> b!4523078 m!5273489))

(assert (=> b!4523078 m!5273489))

(assert (=> b!4523078 m!5273497))

(assert (=> b!4522884 d!1393976))

(declare-fun d!1393978 () Bool)

(declare-fun tail!7749 (List!50793) List!50793)

(assert (=> d!1393978 (= (tail!7748 lm!1477) (ListLongMap!2976 (tail!7749 (toList!4344 lm!1477))))))

(declare-fun bs!857952 () Bool)

(assert (= bs!857952 d!1393978))

(declare-fun m!5273499 () Bool)

(assert (=> bs!857952 m!5273499))

(assert (=> b!4522884 d!1393978))

(declare-fun d!1393980 () Bool)

(declare-fun res!1882895 () Bool)

(declare-fun e!2818079 () Bool)

(assert (=> d!1393980 (=> res!1882895 e!2818079)))

(assert (=> d!1393980 (= res!1882895 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1393980 (= (forall!10281 (toList!4344 lm!1477) lambda!172947) e!2818079)))

(declare-fun b!4523083 () Bool)

(declare-fun e!2818080 () Bool)

(assert (=> b!4523083 (= e!2818079 e!2818080)))

(declare-fun res!1882896 () Bool)

(assert (=> b!4523083 (=> (not res!1882896) (not e!2818080))))

(declare-fun dynLambda!21171 (Int tuple2!51108) Bool)

(assert (=> b!4523083 (= res!1882896 (dynLambda!21171 lambda!172947 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4523084 () Bool)

(assert (=> b!4523084 (= e!2818080 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!172947))))

(assert (= (and d!1393980 (not res!1882895)) b!4523083))

(assert (= (and b!4523083 res!1882896) b!4523084))

(declare-fun b_lambda!155273 () Bool)

(assert (=> (not b_lambda!155273) (not b!4523083)))

(declare-fun m!5273501 () Bool)

(assert (=> b!4523083 m!5273501))

(declare-fun m!5273503 () Bool)

(assert (=> b!4523084 m!5273503))

(assert (=> start!448016 d!1393980))

(declare-fun d!1393982 () Bool)

(declare-fun isStrictlySorted!436 (List!50793) Bool)

(assert (=> d!1393982 (= (inv!66244 lm!1477) (isStrictlySorted!436 (toList!4344 lm!1477)))))

(declare-fun bs!857953 () Bool)

(assert (= bs!857953 d!1393982))

(declare-fun m!5273505 () Bool)

(assert (=> bs!857953 m!5273505))

(assert (=> start!448016 d!1393982))

(declare-fun d!1393984 () Bool)

(declare-fun head!9427 (List!50793) tuple2!51108)

(assert (=> d!1393984 (= (head!9426 lt!1699795) (head!9427 (toList!4344 lt!1699795)))))

(declare-fun bs!857954 () Bool)

(assert (= bs!857954 d!1393984))

(declare-fun m!5273507 () Bool)

(assert (=> bs!857954 m!5273507))

(assert (=> b!4522885 d!1393984))

(declare-fun d!1393986 () Bool)

(declare-fun res!1882903 () Bool)

(declare-fun e!2818087 () Bool)

(assert (=> d!1393986 (=> res!1882903 e!2818087)))

(declare-fun e!2818088 () Bool)

(assert (=> d!1393986 (= res!1882903 e!2818088)))

(declare-fun res!1882905 () Bool)

(assert (=> d!1393986 (=> (not res!1882905) (not e!2818088))))

(assert (=> d!1393986 (= res!1882905 ((_ is Cons!50669) (t!357755 (toList!4344 lm!1477))))))

(assert (=> d!1393986 (= (containsKeyBiggerList!148 (t!357755 (toList!4344 lm!1477)) key!3287) e!2818087)))

(declare-fun b!4523091 () Bool)

(assert (=> b!4523091 (= e!2818088 (containsKey!1800 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(declare-fun b!4523092 () Bool)

(declare-fun e!2818089 () Bool)

(assert (=> b!4523092 (= e!2818087 e!2818089)))

(declare-fun res!1882904 () Bool)

(assert (=> b!4523092 (=> (not res!1882904) (not e!2818089))))

(assert (=> b!4523092 (= res!1882904 ((_ is Cons!50669) (t!357755 (toList!4344 lm!1477))))))

(declare-fun b!4523093 () Bool)

(assert (=> b!4523093 (= e!2818089 (containsKeyBiggerList!148 (t!357755 (t!357755 (toList!4344 lm!1477))) key!3287))))

(assert (= (and d!1393986 res!1882905) b!4523091))

(assert (= (and d!1393986 (not res!1882903)) b!4523092))

(assert (= (and b!4523092 res!1882904) b!4523093))

(declare-fun m!5273509 () Bool)

(assert (=> b!4523091 m!5273509))

(declare-fun m!5273511 () Bool)

(assert (=> b!4523093 m!5273511))

(assert (=> b!4522886 d!1393986))

(declare-fun d!1393988 () Bool)

(declare-fun res!1882906 () Bool)

(declare-fun e!2818090 () Bool)

(assert (=> d!1393988 (=> res!1882906 e!2818090)))

(declare-fun e!2818091 () Bool)

(assert (=> d!1393988 (= res!1882906 e!2818091)))

(declare-fun res!1882908 () Bool)

(assert (=> d!1393988 (=> (not res!1882908) (not e!2818091))))

(assert (=> d!1393988 (= res!1882908 ((_ is Cons!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1393988 (= (containsKeyBiggerList!148 (toList!4344 lt!1699792) key!3287) e!2818090)))

(declare-fun b!4523094 () Bool)

(assert (=> b!4523094 (= e!2818091 (containsKey!1800 (_2!28848 (h!56528 (toList!4344 lt!1699792))) key!3287))))

(declare-fun b!4523095 () Bool)

(declare-fun e!2818092 () Bool)

(assert (=> b!4523095 (= e!2818090 e!2818092)))

(declare-fun res!1882907 () Bool)

(assert (=> b!4523095 (=> (not res!1882907) (not e!2818092))))

(assert (=> b!4523095 (= res!1882907 ((_ is Cons!50669) (toList!4344 lt!1699792)))))

(declare-fun b!4523096 () Bool)

(assert (=> b!4523096 (= e!2818092 (containsKeyBiggerList!148 (t!357755 (toList!4344 lt!1699792)) key!3287))))

(assert (= (and d!1393988 res!1882908) b!4523094))

(assert (= (and d!1393988 (not res!1882906)) b!4523095))

(assert (= (and b!4523095 res!1882907) b!4523096))

(declare-fun m!5273513 () Bool)

(assert (=> b!4523094 m!5273513))

(declare-fun m!5273515 () Bool)

(assert (=> b!4523096 m!5273515))

(assert (=> b!4522886 d!1393988))

(declare-fun bs!857955 () Bool)

(declare-fun d!1393990 () Bool)

(assert (= bs!857955 (and d!1393990 start!448016)))

(declare-fun lambda!173001 () Int)

(assert (=> bs!857955 (= lambda!173001 lambda!172947)))

(declare-fun bs!857956 () Bool)

(assert (= bs!857956 (and d!1393990 b!4522898)))

(assert (=> bs!857956 (not (= lambda!173001 lambda!172948))))

(assert (=> d!1393990 (containsKeyBiggerList!148 (toList!4344 lt!1699792) key!3287)))

(declare-fun lt!1699986 () Unit!95506)

(declare-fun choose!29580 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> d!1393990 (= lt!1699986 (choose!29580 lt!1699792 key!3287 hashF!1107))))

(assert (=> d!1393990 (forall!10281 (toList!4344 lt!1699792) lambda!173001)))

(assert (=> d!1393990 (= (lemmaInLongMapThenContainsKeyBiggerList!84 lt!1699792 key!3287 hashF!1107) lt!1699986)))

(declare-fun bs!857957 () Bool)

(assert (= bs!857957 d!1393990))

(assert (=> bs!857957 m!5273171))

(declare-fun m!5273517 () Bool)

(assert (=> bs!857957 m!5273517))

(declare-fun m!5273519 () Bool)

(assert (=> bs!857957 m!5273519))

(assert (=> b!4522886 d!1393990))

(declare-fun d!1393992 () Bool)

(declare-fun lt!1699989 () Bool)

(declare-fun content!8375 (List!50793) (InoxSet tuple2!51108))

(assert (=> d!1393992 (= lt!1699989 (select (content!8375 (t!357755 (toList!4344 lm!1477))) lt!1699785))))

(declare-fun e!2818098 () Bool)

(assert (=> d!1393992 (= lt!1699989 e!2818098)))

(declare-fun res!1882914 () Bool)

(assert (=> d!1393992 (=> (not res!1882914) (not e!2818098))))

(assert (=> d!1393992 (= res!1882914 ((_ is Cons!50669) (t!357755 (toList!4344 lm!1477))))))

(assert (=> d!1393992 (= (contains!13410 (t!357755 (toList!4344 lm!1477)) lt!1699785) lt!1699989)))

(declare-fun b!4523101 () Bool)

(declare-fun e!2818097 () Bool)

(assert (=> b!4523101 (= e!2818098 e!2818097)))

(declare-fun res!1882913 () Bool)

(assert (=> b!4523101 (=> res!1882913 e!2818097)))

(assert (=> b!4523101 (= res!1882913 (= (h!56528 (t!357755 (toList!4344 lm!1477))) lt!1699785))))

(declare-fun b!4523102 () Bool)

(assert (=> b!4523102 (= e!2818097 (contains!13410 (t!357755 (t!357755 (toList!4344 lm!1477))) lt!1699785))))

(assert (= (and d!1393992 res!1882914) b!4523101))

(assert (= (and b!4523101 (not res!1882913)) b!4523102))

(declare-fun m!5273521 () Bool)

(assert (=> d!1393992 m!5273521))

(declare-fun m!5273523 () Bool)

(assert (=> d!1393992 m!5273523))

(declare-fun m!5273525 () Bool)

(assert (=> b!4523102 m!5273525))

(assert (=> b!4522897 d!1393992))

(declare-fun d!1393994 () Bool)

(declare-fun res!1882919 () Bool)

(declare-fun e!2818103 () Bool)

(assert (=> d!1393994 (=> res!1882919 e!2818103)))

(assert (=> d!1393994 (= res!1882919 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> d!1393994 (= (forall!10280 (_2!28848 (h!56528 (toList!4344 lm!1477))) lambda!172949) e!2818103)))

(declare-fun b!4523107 () Bool)

(declare-fun e!2818104 () Bool)

(assert (=> b!4523107 (= e!2818103 e!2818104)))

(declare-fun res!1882920 () Bool)

(assert (=> b!4523107 (=> (not res!1882920) (not e!2818104))))

(declare-fun dynLambda!21172 (Int tuple2!51106) Bool)

(assert (=> b!4523107 (= res!1882920 (dynLambda!21172 lambda!172949 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(declare-fun b!4523108 () Bool)

(assert (=> b!4523108 (= e!2818104 (forall!10280 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) lambda!172949))))

(assert (= (and d!1393994 (not res!1882919)) b!4523107))

(assert (= (and b!4523107 res!1882920) b!4523108))

(declare-fun b_lambda!155275 () Bool)

(assert (=> (not b_lambda!155275) (not b!4523107)))

(declare-fun m!5273527 () Bool)

(assert (=> b!4523107 m!5273527))

(declare-fun m!5273529 () Bool)

(assert (=> b!4523108 m!5273529))

(assert (=> b!4522898 d!1393994))

(declare-fun d!1393996 () Bool)

(assert (=> d!1393996 (dynLambda!21171 lambda!172948 (h!56528 (toList!4344 lm!1477)))))

(declare-fun lt!1699998 () Unit!95506)

(declare-fun choose!29581 (List!50793 Int tuple2!51108) Unit!95506)

(assert (=> d!1393996 (= lt!1699998 (choose!29581 (toList!4344 lm!1477) lambda!172948 (h!56528 (toList!4344 lm!1477))))))

(declare-fun e!2818109 () Bool)

(assert (=> d!1393996 e!2818109))

(declare-fun res!1882923 () Bool)

(assert (=> d!1393996 (=> (not res!1882923) (not e!2818109))))

(assert (=> d!1393996 (= res!1882923 (forall!10281 (toList!4344 lm!1477) lambda!172948))))

(assert (=> d!1393996 (= (forallContained!2531 (toList!4344 lm!1477) lambda!172948 (h!56528 (toList!4344 lm!1477))) lt!1699998)))

(declare-fun b!4523115 () Bool)

(assert (=> b!4523115 (= e!2818109 (contains!13410 (toList!4344 lm!1477) (h!56528 (toList!4344 lm!1477))))))

(assert (= (and d!1393996 res!1882923) b!4523115))

(declare-fun b_lambda!155277 () Bool)

(assert (=> (not b_lambda!155277) (not d!1393996)))

(declare-fun m!5273531 () Bool)

(assert (=> d!1393996 m!5273531))

(declare-fun m!5273533 () Bool)

(assert (=> d!1393996 m!5273533))

(declare-fun m!5273535 () Bool)

(assert (=> d!1393996 m!5273535))

(declare-fun m!5273537 () Bool)

(assert (=> b!4523115 m!5273537))

(assert (=> b!4522898 d!1393996))

(declare-fun b!4523132 () Bool)

(declare-fun e!2818120 () Option!11127)

(declare-fun e!2818123 () Option!11127)

(assert (=> b!4523132 (= e!2818120 e!2818123)))

(declare-fun c!771952 () Bool)

(assert (=> b!4523132 (= c!771952 ((_ is Cons!50668) (_2!28848 lt!1699794)))))

(declare-fun b!4523133 () Bool)

(declare-fun e!2818124 () Bool)

(declare-fun lt!1700033 () Option!11127)

(assert (=> b!4523133 (= e!2818124 (contains!13411 (_2!28848 lt!1699794) (get!16604 lt!1700033)))))

(declare-fun b!4523134 () Bool)

(assert (=> b!4523134 (= e!2818120 (Some!11126 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun b!4523135 () Bool)

(assert (=> b!4523135 (= e!2818123 None!11126)))

(declare-fun b!4523136 () Bool)

(declare-fun e!2818121 () Bool)

(assert (=> b!4523136 (= e!2818121 e!2818124)))

(declare-fun res!1882932 () Bool)

(assert (=> b!4523136 (=> (not res!1882932) (not e!2818124))))

(declare-fun isDefined!8415 (Option!11127) Bool)

(assert (=> b!4523136 (= res!1882932 (isDefined!8415 lt!1700033))))

(declare-fun d!1393998 () Bool)

(assert (=> d!1393998 e!2818121))

(declare-fun res!1882935 () Bool)

(assert (=> d!1393998 (=> res!1882935 e!2818121)))

(declare-fun e!2818122 () Bool)

(assert (=> d!1393998 (= res!1882935 e!2818122)))

(declare-fun res!1882933 () Bool)

(assert (=> d!1393998 (=> (not res!1882933) (not e!2818122))))

(declare-fun isEmpty!28678 (Option!11127) Bool)

(assert (=> d!1393998 (= res!1882933 (isEmpty!28678 lt!1700033))))

(assert (=> d!1393998 (= lt!1700033 e!2818120)))

(declare-fun c!771953 () Bool)

(assert (=> d!1393998 (= c!771953 (and ((_ is Cons!50668) (_2!28848 lt!1699794)) (= (_1!28847 (h!56527 (_2!28848 lt!1699794))) key!3287)))))

(assert (=> d!1393998 (noDuplicateKeys!1168 (_2!28848 lt!1699794))))

(assert (=> d!1393998 (= (getPair!184 (_2!28848 lt!1699794) key!3287) lt!1700033)))

(declare-fun b!4523137 () Bool)

(assert (=> b!4523137 (= e!2818123 (getPair!184 (t!357754 (_2!28848 lt!1699794)) key!3287))))

(declare-fun b!4523138 () Bool)

(assert (=> b!4523138 (= e!2818122 (not (containsKey!1800 (_2!28848 lt!1699794) key!3287)))))

(declare-fun b!4523139 () Bool)

(declare-fun res!1882934 () Bool)

(assert (=> b!4523139 (=> (not res!1882934) (not e!2818124))))

(assert (=> b!4523139 (= res!1882934 (= (_1!28847 (get!16604 lt!1700033)) key!3287))))

(assert (= (and d!1393998 c!771953) b!4523134))

(assert (= (and d!1393998 (not c!771953)) b!4523132))

(assert (= (and b!4523132 c!771952) b!4523137))

(assert (= (and b!4523132 (not c!771952)) b!4523135))

(assert (= (and d!1393998 res!1882933) b!4523138))

(assert (= (and d!1393998 (not res!1882935)) b!4523136))

(assert (= (and b!4523136 res!1882932) b!4523139))

(assert (= (and b!4523139 res!1882934) b!4523133))

(declare-fun m!5273539 () Bool)

(assert (=> b!4523139 m!5273539))

(declare-fun m!5273541 () Bool)

(assert (=> b!4523136 m!5273541))

(declare-fun m!5273543 () Bool)

(assert (=> b!4523137 m!5273543))

(declare-fun m!5273545 () Bool)

(assert (=> d!1393998 m!5273545))

(assert (=> d!1393998 m!5273153))

(assert (=> b!4523138 m!5273175))

(assert (=> b!4523133 m!5273539))

(assert (=> b!4523133 m!5273539))

(declare-fun m!5273547 () Bool)

(assert (=> b!4523133 m!5273547))

(assert (=> b!4522898 d!1393998))

(declare-fun d!1394000 () Bool)

(declare-fun res!1882942 () Bool)

(declare-fun e!2818131 () Bool)

(assert (=> d!1394000 (=> res!1882942 e!2818131)))

(assert (=> d!1394000 (= res!1882942 (not ((_ is Cons!50668) newBucket!178)))))

(assert (=> d!1394000 (= (noDuplicateKeys!1168 newBucket!178) e!2818131)))

(declare-fun b!4523146 () Bool)

(declare-fun e!2818132 () Bool)

(assert (=> b!4523146 (= e!2818131 e!2818132)))

(declare-fun res!1882943 () Bool)

(assert (=> b!4523146 (=> (not res!1882943) (not e!2818132))))

(assert (=> b!4523146 (= res!1882943 (not (containsKey!1800 (t!357754 newBucket!178) (_1!28847 (h!56527 newBucket!178)))))))

(declare-fun b!4523147 () Bool)

(assert (=> b!4523147 (= e!2818132 (noDuplicateKeys!1168 (t!357754 newBucket!178)))))

(assert (= (and d!1394000 (not res!1882942)) b!4523146))

(assert (= (and b!4523146 res!1882943) b!4523147))

(declare-fun m!5273549 () Bool)

(assert (=> b!4523146 m!5273549))

(declare-fun m!5273551 () Bool)

(assert (=> b!4523147 m!5273551))

(assert (=> b!4522877 d!1394000))

(declare-fun d!1394002 () Bool)

(assert (=> d!1394002 (= (apply!11905 lm!1477 hash!344) (get!16606 (getValueByKey!1104 (toList!4344 lm!1477) hash!344)))))

(declare-fun bs!857958 () Bool)

(assert (= bs!857958 d!1394002))

(declare-fun m!5273553 () Bool)

(assert (=> bs!857958 m!5273553))

(assert (=> bs!857958 m!5273553))

(declare-fun m!5273555 () Bool)

(assert (=> bs!857958 m!5273555))

(assert (=> b!4522900 d!1394002))

(declare-fun d!1394004 () Bool)

(assert (=> d!1394004 (dynLambda!21171 lambda!172947 lt!1699785)))

(declare-fun lt!1700038 () Unit!95506)

(assert (=> d!1394004 (= lt!1700038 (choose!29581 (toList!4344 lm!1477) lambda!172947 lt!1699785))))

(declare-fun e!2818133 () Bool)

(assert (=> d!1394004 e!2818133))

(declare-fun res!1882944 () Bool)

(assert (=> d!1394004 (=> (not res!1882944) (not e!2818133))))

(assert (=> d!1394004 (= res!1882944 (forall!10281 (toList!4344 lm!1477) lambda!172947))))

(assert (=> d!1394004 (= (forallContained!2531 (toList!4344 lm!1477) lambda!172947 lt!1699785) lt!1700038)))

(declare-fun b!4523148 () Bool)

(assert (=> b!4523148 (= e!2818133 (contains!13410 (toList!4344 lm!1477) lt!1699785))))

(assert (= (and d!1394004 res!1882944) b!4523148))

(declare-fun b_lambda!155279 () Bool)

(assert (=> (not b_lambda!155279) (not d!1394004)))

(declare-fun m!5273557 () Bool)

(assert (=> d!1394004 m!5273557))

(declare-fun m!5273559 () Bool)

(assert (=> d!1394004 m!5273559))

(assert (=> d!1394004 m!5273119))

(assert (=> b!4523148 m!5273127))

(assert (=> b!4522900 d!1394004))

(declare-fun d!1394006 () Bool)

(declare-fun lt!1700041 () List!50792)

(assert (=> d!1394006 (not (containsKey!1800 lt!1700041 key!3287))))

(declare-fun e!2818141 () List!50792)

(assert (=> d!1394006 (= lt!1700041 e!2818141)))

(declare-fun c!771958 () Bool)

(assert (=> d!1394006 (= c!771958 (and ((_ is Cons!50668) lt!1699789) (= (_1!28847 (h!56527 lt!1699789)) key!3287)))))

(assert (=> d!1394006 (noDuplicateKeys!1168 lt!1699789)))

(assert (=> d!1394006 (= (removePairForKey!795 lt!1699789 key!3287) lt!1700041)))

(declare-fun b!4523163 () Bool)

(declare-fun e!2818140 () List!50792)

(assert (=> b!4523163 (= e!2818140 (Cons!50668 (h!56527 lt!1699789) (removePairForKey!795 (t!357754 lt!1699789) key!3287)))))

(declare-fun b!4523164 () Bool)

(assert (=> b!4523164 (= e!2818140 Nil!50668)))

(declare-fun b!4523162 () Bool)

(assert (=> b!4523162 (= e!2818141 e!2818140)))

(declare-fun c!771959 () Bool)

(assert (=> b!4523162 (= c!771959 ((_ is Cons!50668) lt!1699789))))

(declare-fun b!4523161 () Bool)

(assert (=> b!4523161 (= e!2818141 (t!357754 lt!1699789))))

(assert (= (and d!1394006 c!771958) b!4523161))

(assert (= (and d!1394006 (not c!771958)) b!4523162))

(assert (= (and b!4523162 c!771959) b!4523163))

(assert (= (and b!4523162 (not c!771959)) b!4523164))

(declare-fun m!5273561 () Bool)

(assert (=> d!1394006 m!5273561))

(declare-fun m!5273563 () Bool)

(assert (=> d!1394006 m!5273563))

(declare-fun m!5273565 () Bool)

(assert (=> b!4523163 m!5273565))

(assert (=> b!4522900 d!1394006))

(declare-fun d!1394008 () Bool)

(assert (=> d!1394008 (contains!13410 (toList!4344 lm!1477) (tuple2!51109 hash!344 lt!1699789))))

(declare-fun lt!1700044 () Unit!95506)

(declare-fun choose!29584 (List!50793 (_ BitVec 64) List!50792) Unit!95506)

(assert (=> d!1394008 (= lt!1700044 (choose!29584 (toList!4344 lm!1477) hash!344 lt!1699789))))

(declare-fun e!2818144 () Bool)

(assert (=> d!1394008 e!2818144))

(declare-fun res!1882951 () Bool)

(assert (=> d!1394008 (=> (not res!1882951) (not e!2818144))))

(assert (=> d!1394008 (= res!1882951 (isStrictlySorted!436 (toList!4344 lm!1477)))))

(assert (=> d!1394008 (= (lemmaGetValueByKeyImpliesContainsTuple!680 (toList!4344 lm!1477) hash!344 lt!1699789) lt!1700044)))

(declare-fun b!4523167 () Bool)

(assert (=> b!4523167 (= e!2818144 (= (getValueByKey!1104 (toList!4344 lm!1477) hash!344) (Some!11129 lt!1699789)))))

(assert (= (and d!1394008 res!1882951) b!4523167))

(declare-fun m!5273567 () Bool)

(assert (=> d!1394008 m!5273567))

(declare-fun m!5273569 () Bool)

(assert (=> d!1394008 m!5273569))

(assert (=> d!1394008 m!5273505))

(assert (=> b!4523167 m!5273553))

(assert (=> b!4522900 d!1394008))

(declare-fun bs!857965 () Bool)

(declare-fun d!1394010 () Bool)

(assert (= bs!857965 (and d!1394010 start!448016)))

(declare-fun lambda!173036 () Int)

(assert (=> bs!857965 (= lambda!173036 lambda!172947)))

(declare-fun bs!857966 () Bool)

(assert (= bs!857966 (and d!1394010 b!4522898)))

(assert (=> bs!857966 (not (= lambda!173036 lambda!172948))))

(declare-fun bs!857967 () Bool)

(assert (= bs!857967 (and d!1394010 d!1393990)))

(assert (=> bs!857967 (= lambda!173036 lambda!173001)))

(assert (=> d!1394010 (contains!13408 lm!1477 (hash!2829 hashF!1107 key!3287))))

(declare-fun lt!1700068 () Unit!95506)

(declare-fun choose!29585 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> d!1394010 (= lt!1700068 (choose!29585 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1394010 (forall!10281 (toList!4344 lm!1477) lambda!173036)))

(assert (=> d!1394010 (= (lemmaInGenMapThenLongMapContainsHash!242 lm!1477 key!3287 hashF!1107) lt!1700068)))

(declare-fun bs!857968 () Bool)

(assert (= bs!857968 d!1394010))

(assert (=> bs!857968 m!5273157))

(assert (=> bs!857968 m!5273157))

(declare-fun m!5273571 () Bool)

(assert (=> bs!857968 m!5273571))

(declare-fun m!5273573 () Bool)

(assert (=> bs!857968 m!5273573))

(declare-fun m!5273575 () Bool)

(assert (=> bs!857968 m!5273575))

(assert (=> b!4522900 d!1394010))

(declare-fun d!1394012 () Bool)

(declare-fun lt!1700069 () Bool)

(assert (=> d!1394012 (= lt!1700069 (select (content!8375 (toList!4344 lm!1477)) lt!1699785))))

(declare-fun e!2818149 () Bool)

(assert (=> d!1394012 (= lt!1700069 e!2818149)))

(declare-fun res!1882956 () Bool)

(assert (=> d!1394012 (=> (not res!1882956) (not e!2818149))))

(assert (=> d!1394012 (= res!1882956 ((_ is Cons!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394012 (= (contains!13410 (toList!4344 lm!1477) lt!1699785) lt!1700069)))

(declare-fun b!4523175 () Bool)

(declare-fun e!2818148 () Bool)

(assert (=> b!4523175 (= e!2818149 e!2818148)))

(declare-fun res!1882955 () Bool)

(assert (=> b!4523175 (=> res!1882955 e!2818148)))

(assert (=> b!4523175 (= res!1882955 (= (h!56528 (toList!4344 lm!1477)) lt!1699785))))

(declare-fun b!4523176 () Bool)

(assert (=> b!4523176 (= e!2818148 (contains!13410 (t!357755 (toList!4344 lm!1477)) lt!1699785))))

(assert (= (and d!1394012 res!1882956) b!4523175))

(assert (= (and b!4523175 (not res!1882955)) b!4523176))

(declare-fun m!5273577 () Bool)

(assert (=> d!1394012 m!5273577))

(declare-fun m!5273579 () Bool)

(assert (=> d!1394012 m!5273579))

(assert (=> b!4523176 m!5273195))

(assert (=> b!4522900 d!1394012))

(declare-fun d!1394014 () Bool)

(declare-fun e!2818150 () Bool)

(assert (=> d!1394014 e!2818150))

(declare-fun res!1882957 () Bool)

(assert (=> d!1394014 (=> res!1882957 e!2818150)))

(declare-fun lt!1700073 () Bool)

(assert (=> d!1394014 (= res!1882957 (not lt!1700073))))

(declare-fun lt!1700072 () Bool)

(assert (=> d!1394014 (= lt!1700073 lt!1700072)))

(declare-fun lt!1700070 () Unit!95506)

(declare-fun e!2818151 () Unit!95506)

(assert (=> d!1394014 (= lt!1700070 e!2818151)))

(declare-fun c!771961 () Bool)

(assert (=> d!1394014 (= c!771961 lt!1700072)))

(assert (=> d!1394014 (= lt!1700072 (containsKey!1802 (toList!4344 lm!1477) lt!1699786))))

(assert (=> d!1394014 (= (contains!13408 lm!1477 lt!1699786) lt!1700073)))

(declare-fun b!4523177 () Bool)

(declare-fun lt!1700071 () Unit!95506)

(assert (=> b!4523177 (= e!2818151 lt!1700071)))

(assert (=> b!4523177 (= lt!1700071 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lm!1477) lt!1699786))))

(assert (=> b!4523177 (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786))))

(declare-fun b!4523178 () Bool)

(declare-fun Unit!95529 () Unit!95506)

(assert (=> b!4523178 (= e!2818151 Unit!95529)))

(declare-fun b!4523179 () Bool)

(assert (=> b!4523179 (= e!2818150 (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786)))))

(assert (= (and d!1394014 c!771961) b!4523177))

(assert (= (and d!1394014 (not c!771961)) b!4523178))

(assert (= (and d!1394014 (not res!1882957)) b!4523179))

(declare-fun m!5273601 () Bool)

(assert (=> d!1394014 m!5273601))

(declare-fun m!5273605 () Bool)

(assert (=> b!4523177 m!5273605))

(declare-fun m!5273607 () Bool)

(assert (=> b!4523177 m!5273607))

(assert (=> b!4523177 m!5273607))

(declare-fun m!5273611 () Bool)

(assert (=> b!4523177 m!5273611))

(assert (=> b!4523179 m!5273607))

(assert (=> b!4523179 m!5273607))

(assert (=> b!4523179 m!5273611))

(assert (=> b!4522900 d!1394014))

(declare-fun bs!857978 () Bool)

(declare-fun d!1394016 () Bool)

(assert (= bs!857978 (and d!1394016 b!4523057)))

(declare-fun lambda!173040 () Int)

(assert (=> bs!857978 (not (= lambda!173040 lambda!172995))))

(declare-fun bs!857979 () Bool)

(assert (= bs!857979 (and d!1394016 d!1393892)))

(assert (=> bs!857979 (not (= lambda!173040 lambda!172998))))

(declare-fun bs!857980 () Bool)

(assert (= bs!857980 (and d!1394016 b!4522898)))

(assert (=> bs!857980 (= (= hash!344 (_1!28848 (h!56528 (toList!4344 lm!1477)))) (= lambda!173040 lambda!172949))))

(declare-fun bs!857981 () Bool)

(assert (= bs!857981 (and d!1394016 b!4523060)))

(assert (=> bs!857981 (not (= lambda!173040 lambda!172996))))

(assert (=> bs!857981 (not (= lambda!173040 lambda!172997))))

(assert (=> d!1394016 true))

(assert (=> d!1394016 true))

(assert (=> d!1394016 (= (allKeysSameHash!1022 newBucket!178 hash!344 hashF!1107) (forall!10280 newBucket!178 lambda!173040))))

(declare-fun bs!857982 () Bool)

(assert (= bs!857982 d!1394016))

(declare-fun m!5273631 () Bool)

(assert (=> bs!857982 m!5273631))

(assert (=> b!4522879 d!1394016))

(declare-fun d!1394022 () Bool)

(assert (=> d!1394022 (= (eq!625 lt!1699769 lt!1699778) (= (content!8374 (toList!4343 lt!1699769)) (content!8374 (toList!4343 lt!1699778))))))

(declare-fun bs!857983 () Bool)

(assert (= bs!857983 d!1394022))

(assert (=> bs!857983 m!5273487))

(assert (=> bs!857983 m!5273485))

(assert (=> b!4522880 d!1394022))

(declare-fun bs!858012 () Bool)

(declare-fun d!1394024 () Bool)

(assert (= bs!858012 (and d!1394024 start!448016)))

(declare-fun lambda!173050 () Int)

(assert (=> bs!858012 (= lambda!173050 lambda!172947)))

(declare-fun bs!858013 () Bool)

(assert (= bs!858013 (and d!1394024 b!4522898)))

(assert (=> bs!858013 (not (= lambda!173050 lambda!172948))))

(declare-fun bs!858014 () Bool)

(assert (= bs!858014 (and d!1394024 d!1393990)))

(assert (=> bs!858014 (= lambda!173050 lambda!173001)))

(declare-fun bs!858015 () Bool)

(assert (= bs!858015 (and d!1394024 d!1394010)))

(assert (=> bs!858015 (= lambda!173050 lambda!173036)))

(declare-fun lt!1700098 () ListMap!3605)

(assert (=> d!1394024 (invariantList!1023 (toList!4343 lt!1700098))))

(declare-fun e!2818158 () ListMap!3605)

(assert (=> d!1394024 (= lt!1700098 e!2818158)))

(declare-fun c!771966 () Bool)

(assert (=> d!1394024 (= c!771966 ((_ is Cons!50669) (toList!4344 (+!1552 lt!1699792 lt!1699794))))))

(assert (=> d!1394024 (forall!10281 (toList!4344 (+!1552 lt!1699792 lt!1699794)) lambda!173050)))

(assert (=> d!1394024 (= (extractMap!1224 (toList!4344 (+!1552 lt!1699792 lt!1699794))) lt!1700098)))

(declare-fun b!4523193 () Bool)

(assert (=> b!4523193 (= e!2818158 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))

(declare-fun b!4523194 () Bool)

(assert (=> b!4523194 (= e!2818158 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394024 c!771966) b!4523193))

(assert (= (and d!1394024 (not c!771966)) b!4523194))

(declare-fun m!5273671 () Bool)

(assert (=> d!1394024 m!5273671))

(declare-fun m!5273673 () Bool)

(assert (=> d!1394024 m!5273673))

(declare-fun m!5273675 () Bool)

(assert (=> b!4523193 m!5273675))

(assert (=> b!4523193 m!5273675))

(declare-fun m!5273677 () Bool)

(assert (=> b!4523193 m!5273677))

(assert (=> b!4522880 d!1394024))

(declare-fun d!1394034 () Bool)

(declare-fun e!2818165 () Bool)

(assert (=> d!1394034 e!2818165))

(declare-fun res!1882969 () Bool)

(assert (=> d!1394034 (=> (not res!1882969) (not e!2818165))))

(declare-fun lt!1700112 () ListLongMap!2975)

(assert (=> d!1394034 (= res!1882969 (contains!13408 lt!1700112 (_1!28848 lt!1699772)))))

(declare-fun lt!1700113 () List!50793)

(assert (=> d!1394034 (= lt!1700112 (ListLongMap!2976 lt!1700113))))

(declare-fun lt!1700111 () Unit!95506)

(declare-fun lt!1700110 () Unit!95506)

(assert (=> d!1394034 (= lt!1700111 lt!1700110)))

(assert (=> d!1394034 (= (getValueByKey!1104 lt!1700113 (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772)))))

(declare-fun lemmaContainsTupThenGetReturnValue!686 (List!50793 (_ BitVec 64) List!50792) Unit!95506)

(assert (=> d!1394034 (= lt!1700110 (lemmaContainsTupThenGetReturnValue!686 lt!1700113 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(declare-fun insertStrictlySorted!414 (List!50793 (_ BitVec 64) List!50792) List!50793)

(assert (=> d!1394034 (= lt!1700113 (insertStrictlySorted!414 (toList!4344 lt!1699792) (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(assert (=> d!1394034 (= (+!1552 lt!1699792 lt!1699772) lt!1700112)))

(declare-fun b!4523203 () Bool)

(declare-fun res!1882970 () Bool)

(assert (=> b!4523203 (=> (not res!1882970) (not e!2818165))))

(assert (=> b!4523203 (= res!1882970 (= (getValueByKey!1104 (toList!4344 lt!1700112) (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772))))))

(declare-fun b!4523204 () Bool)

(assert (=> b!4523204 (= e!2818165 (contains!13410 (toList!4344 lt!1700112) lt!1699772))))

(assert (= (and d!1394034 res!1882969) b!4523203))

(assert (= (and b!4523203 res!1882970) b!4523204))

(declare-fun m!5273683 () Bool)

(assert (=> d!1394034 m!5273683))

(declare-fun m!5273685 () Bool)

(assert (=> d!1394034 m!5273685))

(declare-fun m!5273687 () Bool)

(assert (=> d!1394034 m!5273687))

(declare-fun m!5273689 () Bool)

(assert (=> d!1394034 m!5273689))

(declare-fun m!5273691 () Bool)

(assert (=> b!4523203 m!5273691))

(declare-fun m!5273693 () Bool)

(assert (=> b!4523204 m!5273693))

(assert (=> b!4522880 d!1394034))

(declare-fun bs!858017 () Bool)

(declare-fun d!1394038 () Bool)

(assert (= bs!858017 (and d!1394038 d!1394024)))

(declare-fun lambda!173051 () Int)

(assert (=> bs!858017 (= lambda!173051 lambda!173050)))

(declare-fun bs!858018 () Bool)

(assert (= bs!858018 (and d!1394038 d!1393990)))

(assert (=> bs!858018 (= lambda!173051 lambda!173001)))

(declare-fun bs!858019 () Bool)

(assert (= bs!858019 (and d!1394038 start!448016)))

(assert (=> bs!858019 (= lambda!173051 lambda!172947)))

(declare-fun bs!858020 () Bool)

(assert (= bs!858020 (and d!1394038 d!1394010)))

(assert (=> bs!858020 (= lambda!173051 lambda!173036)))

(declare-fun bs!858021 () Bool)

(assert (= bs!858021 (and d!1394038 b!4522898)))

(assert (=> bs!858021 (not (= lambda!173051 lambda!172948))))

(declare-fun lt!1700114 () ListMap!3605)

(assert (=> d!1394038 (invariantList!1023 (toList!4343 lt!1700114))))

(declare-fun e!2818168 () ListMap!3605)

(assert (=> d!1394038 (= lt!1700114 e!2818168)))

(declare-fun c!771967 () Bool)

(assert (=> d!1394038 (= c!771967 ((_ is Cons!50669) (toList!4344 lt!1699796)))))

(assert (=> d!1394038 (forall!10281 (toList!4344 lt!1699796) lambda!173051)))

(assert (=> d!1394038 (= (extractMap!1224 (toList!4344 lt!1699796)) lt!1700114)))

(declare-fun b!4523207 () Bool)

(assert (=> b!4523207 (= e!2818168 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))))))

(declare-fun b!4523208 () Bool)

(assert (=> b!4523208 (= e!2818168 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394038 c!771967) b!4523207))

(assert (= (and d!1394038 (not c!771967)) b!4523208))

(declare-fun m!5273697 () Bool)

(assert (=> d!1394038 m!5273697))

(declare-fun m!5273699 () Bool)

(assert (=> d!1394038 m!5273699))

(declare-fun m!5273701 () Bool)

(assert (=> b!4523207 m!5273701))

(assert (=> b!4523207 m!5273701))

(declare-fun m!5273703 () Bool)

(assert (=> b!4523207 m!5273703))

(assert (=> b!4522880 d!1394038))

(declare-fun d!1394044 () Bool)

(assert (=> d!1394044 (= (eq!625 lt!1699771 lt!1699770) (= (content!8374 (toList!4343 lt!1699771)) (content!8374 (toList!4343 lt!1699770))))))

(declare-fun bs!858023 () Bool)

(assert (= bs!858023 d!1394044))

(declare-fun m!5273705 () Bool)

(assert (=> bs!858023 m!5273705))

(declare-fun m!5273707 () Bool)

(assert (=> bs!858023 m!5273707))

(assert (=> b!4522880 d!1394044))

(declare-fun d!1394046 () Bool)

(declare-fun e!2818178 () Bool)

(assert (=> d!1394046 e!2818178))

(declare-fun res!1882982 () Bool)

(assert (=> d!1394046 (=> (not res!1882982) (not e!2818178))))

(declare-fun lt!1700118 () ListMap!3605)

(assert (=> d!1394046 (= res!1882982 (not (contains!13409 lt!1700118 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!146 (List!50792 K!12060) List!50792)

(assert (=> d!1394046 (= lt!1700118 (ListMap!3606 (removePresrvNoDuplicatedKeys!146 (toList!4343 lt!1699768) key!3287)))))

(assert (=> d!1394046 (= (-!394 lt!1699768 key!3287) lt!1700118)))

(declare-fun b!4523220 () Bool)

(declare-datatypes ((List!50795 0))(
  ( (Nil!50671) (Cons!50671 (h!56532 K!12060) (t!357757 List!50795)) )
))
(declare-fun content!8376 (List!50795) (InoxSet K!12060))

(declare-fun keys!17608 (ListMap!3605) List!50795)

(assert (=> b!4523220 (= e!2818178 (= ((_ map and) (content!8376 (keys!17608 lt!1699768)) ((_ map not) (store ((as const (Array K!12060 Bool)) false) key!3287 true))) (content!8376 (keys!17608 lt!1700118))))))

(assert (= (and d!1394046 res!1882982) b!4523220))

(declare-fun m!5273721 () Bool)

(assert (=> d!1394046 m!5273721))

(declare-fun m!5273723 () Bool)

(assert (=> d!1394046 m!5273723))

(declare-fun m!5273725 () Bool)

(assert (=> b!4523220 m!5273725))

(assert (=> b!4523220 m!5273725))

(declare-fun m!5273727 () Bool)

(assert (=> b!4523220 m!5273727))

(declare-fun m!5273729 () Bool)

(assert (=> b!4523220 m!5273729))

(assert (=> b!4523220 m!5273729))

(declare-fun m!5273731 () Bool)

(assert (=> b!4523220 m!5273731))

(declare-fun m!5273733 () Bool)

(assert (=> b!4523220 m!5273733))

(assert (=> b!4522880 d!1394046))

(declare-fun bs!858055 () Bool)

(declare-fun d!1394054 () Bool)

(assert (= bs!858055 (and d!1394054 d!1394024)))

(declare-fun lambda!173059 () Int)

(assert (=> bs!858055 (= lambda!173059 lambda!173050)))

(declare-fun bs!858056 () Bool)

(assert (= bs!858056 (and d!1394054 d!1394038)))

(assert (=> bs!858056 (= lambda!173059 lambda!173051)))

(declare-fun bs!858057 () Bool)

(assert (= bs!858057 (and d!1394054 d!1393990)))

(assert (=> bs!858057 (= lambda!173059 lambda!173001)))

(declare-fun bs!858058 () Bool)

(assert (= bs!858058 (and d!1394054 start!448016)))

(assert (=> bs!858058 (= lambda!173059 lambda!172947)))

(declare-fun bs!858059 () Bool)

(assert (= bs!858059 (and d!1394054 d!1394010)))

(assert (=> bs!858059 (= lambda!173059 lambda!173036)))

(declare-fun bs!858060 () Bool)

(assert (= bs!858060 (and d!1394054 b!4522898)))

(assert (=> bs!858060 (not (= lambda!173059 lambda!172948))))

(assert (=> d!1394054 (eq!625 (extractMap!1224 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))) (-!394 (extractMap!1224 (toList!4344 lt!1699792)) key!3287))))

(declare-fun lt!1700126 () Unit!95506)

(declare-fun choose!29587 (ListLongMap!2975 (_ BitVec 64) List!50792 K!12060 Hashable!5563) Unit!95506)

(assert (=> d!1394054 (= lt!1700126 (choose!29587 lt!1699792 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1394054 (forall!10281 (toList!4344 lt!1699792) lambda!173059)))

(assert (=> d!1394054 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!153 lt!1699792 hash!344 newBucket!178 key!3287 hashF!1107) lt!1700126)))

(declare-fun bs!858061 () Bool)

(assert (= bs!858061 d!1394054))

(declare-fun m!5273761 () Bool)

(assert (=> bs!858061 m!5273761))

(declare-fun m!5273763 () Bool)

(assert (=> bs!858061 m!5273763))

(declare-fun m!5273765 () Bool)

(assert (=> bs!858061 m!5273765))

(assert (=> bs!858061 m!5273205))

(declare-fun m!5273767 () Bool)

(assert (=> bs!858061 m!5273767))

(assert (=> bs!858061 m!5273763))

(declare-fun m!5273769 () Bool)

(assert (=> bs!858061 m!5273769))

(declare-fun m!5273771 () Bool)

(assert (=> bs!858061 m!5273771))

(assert (=> bs!858061 m!5273205))

(assert (=> bs!858061 m!5273769))

(assert (=> b!4522880 d!1394054))

(declare-fun d!1394062 () Bool)

(assert (=> d!1394062 (= (head!9426 lm!1477) (head!9427 (toList!4344 lm!1477)))))

(declare-fun bs!858062 () Bool)

(assert (= bs!858062 d!1394062))

(declare-fun m!5273773 () Bool)

(assert (=> bs!858062 m!5273773))

(assert (=> b!4522880 d!1394062))

(declare-fun d!1394064 () Bool)

(declare-fun e!2818196 () Bool)

(assert (=> d!1394064 e!2818196))

(declare-fun res!1882995 () Bool)

(assert (=> d!1394064 (=> (not res!1882995) (not e!2818196))))

(declare-fun lt!1700129 () ListLongMap!2975)

(assert (=> d!1394064 (= res!1882995 (contains!13408 lt!1700129 (_1!28848 lt!1699794)))))

(declare-fun lt!1700130 () List!50793)

(assert (=> d!1394064 (= lt!1700129 (ListLongMap!2976 lt!1700130))))

(declare-fun lt!1700128 () Unit!95506)

(declare-fun lt!1700127 () Unit!95506)

(assert (=> d!1394064 (= lt!1700128 lt!1700127)))

(assert (=> d!1394064 (= (getValueByKey!1104 lt!1700130 (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794)))))

(assert (=> d!1394064 (= lt!1700127 (lemmaContainsTupThenGetReturnValue!686 lt!1700130 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(assert (=> d!1394064 (= lt!1700130 (insertStrictlySorted!414 (toList!4344 lt!1699792) (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(assert (=> d!1394064 (= (+!1552 lt!1699792 lt!1699794) lt!1700129)))

(declare-fun b!4523249 () Bool)

(declare-fun res!1882996 () Bool)

(assert (=> b!4523249 (=> (not res!1882996) (not e!2818196))))

(assert (=> b!4523249 (= res!1882996 (= (getValueByKey!1104 (toList!4344 lt!1700129) (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794))))))

(declare-fun b!4523250 () Bool)

(assert (=> b!4523250 (= e!2818196 (contains!13410 (toList!4344 lt!1700129) lt!1699794))))

(assert (= (and d!1394064 res!1882995) b!4523249))

(assert (= (and b!4523249 res!1882996) b!4523250))

(declare-fun m!5273775 () Bool)

(assert (=> d!1394064 m!5273775))

(declare-fun m!5273777 () Bool)

(assert (=> d!1394064 m!5273777))

(declare-fun m!5273779 () Bool)

(assert (=> d!1394064 m!5273779))

(declare-fun m!5273781 () Bool)

(assert (=> d!1394064 m!5273781))

(declare-fun m!5273783 () Bool)

(assert (=> b!4523249 m!5273783))

(declare-fun m!5273785 () Bool)

(assert (=> b!4523250 m!5273785))

(assert (=> b!4522880 d!1394064))

(declare-fun d!1394066 () Bool)

(declare-fun res!1882997 () Bool)

(declare-fun e!2818197 () Bool)

(assert (=> d!1394066 (=> res!1882997 e!2818197)))

(assert (=> d!1394066 (= res!1882997 (not ((_ is Cons!50668) (_2!28848 lt!1699794))))))

(assert (=> d!1394066 (= (noDuplicateKeys!1168 (_2!28848 lt!1699794)) e!2818197)))

(declare-fun b!4523251 () Bool)

(declare-fun e!2818198 () Bool)

(assert (=> b!4523251 (= e!2818197 e!2818198)))

(declare-fun res!1882998 () Bool)

(assert (=> b!4523251 (=> (not res!1882998) (not e!2818198))))

(assert (=> b!4523251 (= res!1882998 (not (containsKey!1800 (t!357754 (_2!28848 lt!1699794)) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523252 () Bool)

(assert (=> b!4523252 (= e!2818198 (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699794))))))

(assert (= (and d!1394066 (not res!1882997)) b!4523251))

(assert (= (and b!4523251 res!1882998) b!4523252))

(declare-fun m!5273787 () Bool)

(assert (=> b!4523251 m!5273787))

(declare-fun m!5273789 () Bool)

(assert (=> b!4523252 m!5273789))

(assert (=> b!4522901 d!1394066))

(declare-fun d!1394068 () Bool)

(assert (=> d!1394068 (dynLambda!21171 lambda!172947 (h!56528 (toList!4344 lm!1477)))))

(declare-fun lt!1700131 () Unit!95506)

(assert (=> d!1394068 (= lt!1700131 (choose!29581 (toList!4344 lm!1477) lambda!172947 (h!56528 (toList!4344 lm!1477))))))

(declare-fun e!2818199 () Bool)

(assert (=> d!1394068 e!2818199))

(declare-fun res!1882999 () Bool)

(assert (=> d!1394068 (=> (not res!1882999) (not e!2818199))))

(assert (=> d!1394068 (= res!1882999 (forall!10281 (toList!4344 lm!1477) lambda!172947))))

(assert (=> d!1394068 (= (forallContained!2531 (toList!4344 lm!1477) lambda!172947 (h!56528 (toList!4344 lm!1477))) lt!1700131)))

(declare-fun b!4523253 () Bool)

(assert (=> b!4523253 (= e!2818199 (contains!13410 (toList!4344 lm!1477) (h!56528 (toList!4344 lm!1477))))))

(assert (= (and d!1394068 res!1882999) b!4523253))

(declare-fun b_lambda!155287 () Bool)

(assert (=> (not b_lambda!155287) (not d!1394068)))

(assert (=> d!1394068 m!5273501))

(declare-fun m!5273791 () Bool)

(assert (=> d!1394068 m!5273791))

(assert (=> d!1394068 m!5273119))

(assert (=> b!4523253 m!5273537))

(assert (=> b!4522901 d!1394068))

(declare-fun bs!858063 () Bool)

(declare-fun d!1394070 () Bool)

(assert (= bs!858063 (and d!1394070 d!1394024)))

(declare-fun lambda!173062 () Int)

(assert (=> bs!858063 (not (= lambda!173062 lambda!173050))))

(declare-fun bs!858064 () Bool)

(assert (= bs!858064 (and d!1394070 d!1394038)))

(assert (=> bs!858064 (not (= lambda!173062 lambda!173051))))

(declare-fun bs!858065 () Bool)

(assert (= bs!858065 (and d!1394070 d!1393990)))

(assert (=> bs!858065 (not (= lambda!173062 lambda!173001))))

(declare-fun bs!858066 () Bool)

(assert (= bs!858066 (and d!1394070 start!448016)))

(assert (=> bs!858066 (not (= lambda!173062 lambda!172947))))

(declare-fun bs!858067 () Bool)

(assert (= bs!858067 (and d!1394070 d!1394010)))

(assert (=> bs!858067 (not (= lambda!173062 lambda!173036))))

(declare-fun bs!858068 () Bool)

(assert (= bs!858068 (and d!1394070 b!4522898)))

(assert (=> bs!858068 (= lambda!173062 lambda!172948)))

(declare-fun bs!858069 () Bool)

(assert (= bs!858069 (and d!1394070 d!1394054)))

(assert (=> bs!858069 (not (= lambda!173062 lambda!173059))))

(assert (=> d!1394070 true))

(assert (=> d!1394070 (= (allKeysSameHashInMap!1275 lm!1477 hashF!1107) (forall!10281 (toList!4344 lm!1477) lambda!173062))))

(declare-fun bs!858070 () Bool)

(assert (= bs!858070 d!1394070))

(declare-fun m!5273793 () Bool)

(assert (=> bs!858070 m!5273793))

(assert (=> b!4522902 d!1394070))

(declare-fun d!1394072 () Bool)

(assert (=> d!1394072 (= (eq!625 lt!1699780 lt!1699787) (= (content!8374 (toList!4343 lt!1699780)) (content!8374 (toList!4343 lt!1699787))))))

(declare-fun bs!858071 () Bool)

(assert (= bs!858071 d!1394072))

(assert (=> bs!858071 m!5273215))

(assert (=> bs!858071 m!5273219))

(assert (=> b!4522893 d!1394072))

(declare-fun bs!858072 () Bool)

(declare-fun b!4523254 () Bool)

(assert (= bs!858072 (and b!4523254 d!1394016)))

(declare-fun lambda!173063 () Int)

(assert (=> bs!858072 (not (= lambda!173063 lambda!173040))))

(declare-fun bs!858073 () Bool)

(assert (= bs!858073 (and b!4523254 b!4523057)))

(assert (=> bs!858073 (= (= lt!1699771 lt!1699770) (= lambda!173063 lambda!172995))))

(declare-fun bs!858074 () Bool)

(assert (= bs!858074 (and b!4523254 d!1393892)))

(assert (=> bs!858074 (= (= lt!1699771 lt!1699952) (= lambda!173063 lambda!172998))))

(declare-fun bs!858075 () Bool)

(assert (= bs!858075 (and b!4523254 b!4522898)))

(assert (=> bs!858075 (not (= lambda!173063 lambda!172949))))

(declare-fun bs!858076 () Bool)

(assert (= bs!858076 (and b!4523254 b!4523060)))

(assert (=> bs!858076 (= (= lt!1699771 lt!1699770) (= lambda!173063 lambda!172996))))

(assert (=> bs!858076 (= (= lt!1699771 lt!1699955) (= lambda!173063 lambda!172997))))

(assert (=> b!4523254 true))

(declare-fun bs!858077 () Bool)

(declare-fun b!4523257 () Bool)

(assert (= bs!858077 (and b!4523257 b!4523254)))

(declare-fun lambda!173066 () Int)

(assert (=> bs!858077 (= lambda!173066 lambda!173063)))

(declare-fun bs!858078 () Bool)

(assert (= bs!858078 (and b!4523257 d!1394016)))

(assert (=> bs!858078 (not (= lambda!173066 lambda!173040))))

(declare-fun bs!858079 () Bool)

(assert (= bs!858079 (and b!4523257 b!4523057)))

(assert (=> bs!858079 (= (= lt!1699771 lt!1699770) (= lambda!173066 lambda!172995))))

(declare-fun bs!858080 () Bool)

(assert (= bs!858080 (and b!4523257 d!1393892)))

(assert (=> bs!858080 (= (= lt!1699771 lt!1699952) (= lambda!173066 lambda!172998))))

(declare-fun bs!858081 () Bool)

(assert (= bs!858081 (and b!4523257 b!4522898)))

(assert (=> bs!858081 (not (= lambda!173066 lambda!172949))))

(declare-fun bs!858082 () Bool)

(assert (= bs!858082 (and b!4523257 b!4523060)))

(assert (=> bs!858082 (= (= lt!1699771 lt!1699770) (= lambda!173066 lambda!172996))))

(assert (=> bs!858082 (= (= lt!1699771 lt!1699955) (= lambda!173066 lambda!172997))))

(assert (=> b!4523257 true))

(declare-fun lambda!173067 () Int)

(declare-fun lt!1700142 () ListMap!3605)

(assert (=> bs!858077 (= (= lt!1700142 lt!1699771) (= lambda!173067 lambda!173063))))

(assert (=> bs!858078 (not (= lambda!173067 lambda!173040))))

(assert (=> bs!858079 (= (= lt!1700142 lt!1699770) (= lambda!173067 lambda!172995))))

(assert (=> bs!858080 (= (= lt!1700142 lt!1699952) (= lambda!173067 lambda!172998))))

(assert (=> b!4523257 (= (= lt!1700142 lt!1699771) (= lambda!173067 lambda!173066))))

(assert (=> bs!858081 (not (= lambda!173067 lambda!172949))))

(assert (=> bs!858082 (= (= lt!1700142 lt!1699770) (= lambda!173067 lambda!172996))))

(assert (=> bs!858082 (= (= lt!1700142 lt!1699955) (= lambda!173067 lambda!172997))))

(assert (=> b!4523257 true))

(declare-fun bs!858096 () Bool)

(declare-fun d!1394074 () Bool)

(assert (= bs!858096 (and d!1394074 b!4523254)))

(declare-fun lt!1700139 () ListMap!3605)

(declare-fun lambda!173069 () Int)

(assert (=> bs!858096 (= (= lt!1700139 lt!1699771) (= lambda!173069 lambda!173063))))

(declare-fun bs!858097 () Bool)

(assert (= bs!858097 (and d!1394074 d!1394016)))

(assert (=> bs!858097 (not (= lambda!173069 lambda!173040))))

(declare-fun bs!858099 () Bool)

(assert (= bs!858099 (and d!1394074 b!4523057)))

(assert (=> bs!858099 (= (= lt!1700139 lt!1699770) (= lambda!173069 lambda!172995))))

(declare-fun bs!858100 () Bool)

(assert (= bs!858100 (and d!1394074 d!1393892)))

(assert (=> bs!858100 (= (= lt!1700139 lt!1699952) (= lambda!173069 lambda!172998))))

(declare-fun bs!858101 () Bool)

(assert (= bs!858101 (and d!1394074 b!4523257)))

(assert (=> bs!858101 (= (= lt!1700139 lt!1700142) (= lambda!173069 lambda!173067))))

(assert (=> bs!858101 (= (= lt!1700139 lt!1699771) (= lambda!173069 lambda!173066))))

(declare-fun bs!858102 () Bool)

(assert (= bs!858102 (and d!1394074 b!4522898)))

(assert (=> bs!858102 (not (= lambda!173069 lambda!172949))))

(declare-fun bs!858103 () Bool)

(assert (= bs!858103 (and d!1394074 b!4523060)))

(assert (=> bs!858103 (= (= lt!1700139 lt!1699770) (= lambda!173069 lambda!172996))))

(assert (=> bs!858103 (= (= lt!1700139 lt!1699955) (= lambda!173069 lambda!172997))))

(assert (=> d!1394074 true))

(declare-fun c!771976 () Bool)

(declare-fun call!315163 () Bool)

(declare-fun bm!315157 () Bool)

(assert (=> bm!315157 (= call!315163 (forall!10280 (ite c!771976 (toList!4343 lt!1699771) (t!357754 (_2!28848 lt!1699794))) (ite c!771976 lambda!173063 lambda!173067)))))

(declare-fun e!2818202 () ListMap!3605)

(assert (=> b!4523254 (= e!2818202 lt!1699771)))

(declare-fun lt!1700149 () Unit!95506)

(declare-fun call!315162 () Unit!95506)

(assert (=> b!4523254 (= lt!1700149 call!315162)))

(declare-fun call!315164 () Bool)

(assert (=> b!4523254 call!315164))

(declare-fun lt!1700146 () Unit!95506)

(assert (=> b!4523254 (= lt!1700146 lt!1700149)))

(assert (=> b!4523254 call!315163))

(declare-fun lt!1700151 () Unit!95506)

(declare-fun Unit!95542 () Unit!95506)

(assert (=> b!4523254 (= lt!1700151 Unit!95542)))

(declare-fun bm!315158 () Bool)

(assert (=> bm!315158 (= call!315164 (forall!10280 (ite c!771976 (toList!4343 lt!1699771) (_2!28848 lt!1699794)) (ite c!771976 lambda!173063 lambda!173067)))))

(declare-fun b!4523255 () Bool)

(declare-fun res!1883002 () Bool)

(declare-fun e!2818200 () Bool)

(assert (=> b!4523255 (=> (not res!1883002) (not e!2818200))))

(assert (=> b!4523255 (= res!1883002 (forall!10280 (toList!4343 lt!1699771) lambda!173069))))

(declare-fun b!4523256 () Bool)

(declare-fun e!2818201 () Bool)

(assert (=> b!4523256 (= e!2818201 (forall!10280 (toList!4343 lt!1699771) lambda!173067))))

(declare-fun bm!315159 () Bool)

(assert (=> bm!315159 (= call!315162 (lemmaContainsAllItsOwnKeys!343 lt!1699771))))

(assert (=> b!4523257 (= e!2818202 lt!1700142)))

(declare-fun lt!1700141 () ListMap!3605)

(assert (=> b!4523257 (= lt!1700141 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523257 (= lt!1700142 (addToMapMapFromBucket!695 (t!357754 (_2!28848 lt!1699794)) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700150 () Unit!95506)

(assert (=> b!4523257 (= lt!1700150 call!315162)))

(assert (=> b!4523257 (forall!10280 (toList!4343 lt!1699771) lambda!173066)))

(declare-fun lt!1700152 () Unit!95506)

(assert (=> b!4523257 (= lt!1700152 lt!1700150)))

(assert (=> b!4523257 (forall!10280 (toList!4343 lt!1700141) lambda!173067)))

(declare-fun lt!1700133 () Unit!95506)

(declare-fun Unit!95544 () Unit!95506)

(assert (=> b!4523257 (= lt!1700133 Unit!95544)))

(assert (=> b!4523257 call!315163))

(declare-fun lt!1700144 () Unit!95506)

(declare-fun Unit!95545 () Unit!95506)

(assert (=> b!4523257 (= lt!1700144 Unit!95545)))

(declare-fun lt!1700132 () Unit!95506)

(declare-fun Unit!95546 () Unit!95506)

(assert (=> b!4523257 (= lt!1700132 Unit!95546)))

(declare-fun lt!1700135 () Unit!95506)

(assert (=> b!4523257 (= lt!1700135 (forallContained!2532 (toList!4343 lt!1700141) lambda!173067 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523257 (contains!13409 lt!1700141 (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1700134 () Unit!95506)

(declare-fun Unit!95547 () Unit!95506)

(assert (=> b!4523257 (= lt!1700134 Unit!95547)))

(assert (=> b!4523257 (contains!13409 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1700147 () Unit!95506)

(declare-fun Unit!95548 () Unit!95506)

(assert (=> b!4523257 (= lt!1700147 Unit!95548)))

(assert (=> b!4523257 call!315164))

(declare-fun lt!1700136 () Unit!95506)

(declare-fun Unit!95549 () Unit!95506)

(assert (=> b!4523257 (= lt!1700136 Unit!95549)))

(assert (=> b!4523257 (forall!10280 (toList!4343 lt!1700141) lambda!173067)))

(declare-fun lt!1700138 () Unit!95506)

(declare-fun Unit!95550 () Unit!95506)

(assert (=> b!4523257 (= lt!1700138 Unit!95550)))

(declare-fun lt!1700148 () Unit!95506)

(declare-fun Unit!95551 () Unit!95506)

(assert (=> b!4523257 (= lt!1700148 Unit!95551)))

(declare-fun lt!1700143 () Unit!95506)

(assert (=> b!4523257 (= lt!1700143 (addForallContainsKeyThenBeforeAdding!343 lt!1699771 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523257 (forall!10280 (toList!4343 lt!1699771) lambda!173067)))

(declare-fun lt!1700137 () Unit!95506)

(assert (=> b!4523257 (= lt!1700137 lt!1700143)))

(assert (=> b!4523257 (forall!10280 (toList!4343 lt!1699771) lambda!173067)))

(declare-fun lt!1700140 () Unit!95506)

(declare-fun Unit!95555 () Unit!95506)

(assert (=> b!4523257 (= lt!1700140 Unit!95555)))

(declare-fun res!1883000 () Bool)

(assert (=> b!4523257 (= res!1883000 (forall!10280 (_2!28848 lt!1699794) lambda!173067))))

(assert (=> b!4523257 (=> (not res!1883000) (not e!2818201))))

(assert (=> b!4523257 e!2818201))

(declare-fun lt!1700145 () Unit!95506)

(declare-fun Unit!95557 () Unit!95506)

(assert (=> b!4523257 (= lt!1700145 Unit!95557)))

(assert (=> d!1394074 e!2818200))

(declare-fun res!1883001 () Bool)

(assert (=> d!1394074 (=> (not res!1883001) (not e!2818200))))

(assert (=> d!1394074 (= res!1883001 (forall!10280 (_2!28848 lt!1699794) lambda!173069))))

(assert (=> d!1394074 (= lt!1700139 e!2818202)))

(assert (=> d!1394074 (= c!771976 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394074 (noDuplicateKeys!1168 (_2!28848 lt!1699794))))

(assert (=> d!1394074 (= (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771) lt!1700139)))

(declare-fun b!4523258 () Bool)

(assert (=> b!4523258 (= e!2818200 (invariantList!1023 (toList!4343 lt!1700139)))))

(assert (= (and d!1394074 c!771976) b!4523254))

(assert (= (and d!1394074 (not c!771976)) b!4523257))

(assert (= (and b!4523257 res!1883000) b!4523256))

(assert (= (or b!4523254 b!4523257) bm!315157))

(assert (= (or b!4523254 b!4523257) bm!315158))

(assert (= (or b!4523254 b!4523257) bm!315159))

(assert (= (and d!1394074 res!1883001) b!4523255))

(assert (= (and b!4523255 res!1883002) b!4523258))

(declare-fun m!5273807 () Bool)

(assert (=> b!4523257 m!5273807))

(declare-fun m!5273809 () Bool)

(assert (=> b!4523257 m!5273809))

(declare-fun m!5273811 () Bool)

(assert (=> b!4523257 m!5273811))

(declare-fun m!5273813 () Bool)

(assert (=> b!4523257 m!5273813))

(assert (=> b!4523257 m!5273813))

(declare-fun m!5273815 () Bool)

(assert (=> b!4523257 m!5273815))

(assert (=> b!4523257 m!5273815))

(declare-fun m!5273817 () Bool)

(assert (=> b!4523257 m!5273817))

(declare-fun m!5273819 () Bool)

(assert (=> b!4523257 m!5273819))

(assert (=> b!4523257 m!5273809))

(declare-fun m!5273821 () Bool)

(assert (=> b!4523257 m!5273821))

(declare-fun m!5273823 () Bool)

(assert (=> b!4523257 m!5273823))

(declare-fun m!5273825 () Bool)

(assert (=> b!4523257 m!5273825))

(declare-fun m!5273827 () Bool)

(assert (=> b!4523255 m!5273827))

(assert (=> b!4523256 m!5273813))

(declare-fun m!5273829 () Bool)

(assert (=> bm!315158 m!5273829))

(declare-fun m!5273831 () Bool)

(assert (=> bm!315159 m!5273831))

(declare-fun m!5273833 () Bool)

(assert (=> bm!315157 m!5273833))

(declare-fun m!5273835 () Bool)

(assert (=> d!1394074 m!5273835))

(assert (=> d!1394074 m!5273153))

(declare-fun m!5273837 () Bool)

(assert (=> b!4523258 m!5273837))

(assert (=> b!4522893 d!1394074))

(declare-fun bs!858105 () Bool)

(declare-fun d!1394080 () Bool)

(assert (= bs!858105 (and d!1394080 d!1394024)))

(declare-fun lambda!173070 () Int)

(assert (=> bs!858105 (= lambda!173070 lambda!173050)))

(declare-fun bs!858106 () Bool)

(assert (= bs!858106 (and d!1394080 d!1394070)))

(assert (=> bs!858106 (not (= lambda!173070 lambda!173062))))

(declare-fun bs!858107 () Bool)

(assert (= bs!858107 (and d!1394080 d!1394038)))

(assert (=> bs!858107 (= lambda!173070 lambda!173051)))

(declare-fun bs!858108 () Bool)

(assert (= bs!858108 (and d!1394080 d!1393990)))

(assert (=> bs!858108 (= lambda!173070 lambda!173001)))

(declare-fun bs!858109 () Bool)

(assert (= bs!858109 (and d!1394080 start!448016)))

(assert (=> bs!858109 (= lambda!173070 lambda!172947)))

(declare-fun bs!858110 () Bool)

(assert (= bs!858110 (and d!1394080 d!1394010)))

(assert (=> bs!858110 (= lambda!173070 lambda!173036)))

(declare-fun bs!858111 () Bool)

(assert (= bs!858111 (and d!1394080 b!4522898)))

(assert (=> bs!858111 (not (= lambda!173070 lambda!172948))))

(declare-fun bs!858112 () Bool)

(assert (= bs!858112 (and d!1394080 d!1394054)))

(assert (=> bs!858112 (= lambda!173070 lambda!173059)))

(declare-fun lt!1700156 () ListMap!3605)

(assert (=> d!1394080 (invariantList!1023 (toList!4343 lt!1700156))))

(declare-fun e!2818203 () ListMap!3605)

(assert (=> d!1394080 (= lt!1700156 e!2818203)))

(declare-fun c!771977 () Bool)

(assert (=> d!1394080 (= c!771977 ((_ is Cons!50669) (toList!4344 lt!1699795)))))

(assert (=> d!1394080 (forall!10281 (toList!4344 lt!1699795) lambda!173070)))

(assert (=> d!1394080 (= (extractMap!1224 (toList!4344 lt!1699795)) lt!1700156)))

(declare-fun b!4523259 () Bool)

(assert (=> b!4523259 (= e!2818203 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))))))

(declare-fun b!4523260 () Bool)

(assert (=> b!4523260 (= e!2818203 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394080 c!771977) b!4523259))

(assert (= (and d!1394080 (not c!771977)) b!4523260))

(declare-fun m!5273839 () Bool)

(assert (=> d!1394080 m!5273839))

(declare-fun m!5273841 () Bool)

(assert (=> d!1394080 m!5273841))

(declare-fun m!5273843 () Bool)

(assert (=> b!4523259 m!5273843))

(assert (=> b!4523259 m!5273843))

(declare-fun m!5273845 () Bool)

(assert (=> b!4523259 m!5273845))

(assert (=> b!4522893 d!1394080))

(declare-fun d!1394082 () Bool)

(declare-fun e!2818231 () Bool)

(assert (=> d!1394082 e!2818231))

(declare-fun res!1883017 () Bool)

(assert (=> d!1394082 (=> res!1883017 e!2818231)))

(declare-fun e!2818232 () Bool)

(assert (=> d!1394082 (= res!1883017 e!2818232)))

(declare-fun res!1883016 () Bool)

(assert (=> d!1394082 (=> (not res!1883016) (not e!2818232))))

(declare-fun lt!1700184 () Bool)

(assert (=> d!1394082 (= res!1883016 (not lt!1700184))))

(declare-fun lt!1700189 () Bool)

(assert (=> d!1394082 (= lt!1700184 lt!1700189)))

(declare-fun lt!1700186 () Unit!95506)

(declare-fun e!2818230 () Unit!95506)

(assert (=> d!1394082 (= lt!1700186 e!2818230)))

(declare-fun c!771984 () Bool)

(assert (=> d!1394082 (= c!771984 lt!1700189)))

(declare-fun containsKey!1804 (List!50792 K!12060) Bool)

(assert (=> d!1394082 (= lt!1700189 (containsKey!1804 (toList!4343 lt!1699778) key!3287))))

(assert (=> d!1394082 (= (contains!13409 lt!1699778 key!3287) lt!1700184)))

(declare-fun b!4523296 () Bool)

(declare-fun e!2818227 () List!50795)

(declare-fun getKeysList!471 (List!50792) List!50795)

(assert (=> b!4523296 (= e!2818227 (getKeysList!471 (toList!4343 lt!1699778)))))

(declare-fun b!4523297 () Bool)

(declare-fun e!2818228 () Unit!95506)

(assert (=> b!4523297 (= e!2818230 e!2818228)))

(declare-fun c!771986 () Bool)

(declare-fun call!315167 () Bool)

(assert (=> b!4523297 (= c!771986 call!315167)))

(declare-fun b!4523298 () Bool)

(declare-fun e!2818229 () Bool)

(declare-fun contains!13413 (List!50795 K!12060) Bool)

(assert (=> b!4523298 (= e!2818229 (contains!13413 (keys!17608 lt!1699778) key!3287))))

(declare-fun b!4523299 () Bool)

(declare-fun Unit!95564 () Unit!95506)

(assert (=> b!4523299 (= e!2818228 Unit!95564)))

(declare-fun b!4523300 () Bool)

(assert (=> b!4523300 (= e!2818231 e!2818229)))

(declare-fun res!1883018 () Bool)

(assert (=> b!4523300 (=> (not res!1883018) (not e!2818229))))

(declare-datatypes ((Option!11131 0))(
  ( (None!11130) (Some!11130 (v!44748 V!12306)) )
))
(declare-fun isDefined!8417 (Option!11131) Bool)

(declare-fun getValueByKey!1105 (List!50792 K!12060) Option!11131)

(assert (=> b!4523300 (= res!1883018 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699778) key!3287)))))

(declare-fun b!4523301 () Bool)

(assert (=> b!4523301 (= e!2818232 (not (contains!13413 (keys!17608 lt!1699778) key!3287)))))

(declare-fun b!4523302 () Bool)

(assert (=> b!4523302 false))

(declare-fun lt!1700190 () Unit!95506)

(declare-fun lt!1700188 () Unit!95506)

(assert (=> b!4523302 (= lt!1700190 lt!1700188)))

(assert (=> b!4523302 (containsKey!1804 (toList!4343 lt!1699778) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!470 (List!50792 K!12060) Unit!95506)

(assert (=> b!4523302 (= lt!1700188 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699778) key!3287))))

(declare-fun Unit!95565 () Unit!95506)

(assert (=> b!4523302 (= e!2818228 Unit!95565)))

(declare-fun b!4523303 () Bool)

(assert (=> b!4523303 (= e!2818227 (keys!17608 lt!1699778))))

(declare-fun b!4523304 () Bool)

(declare-fun lt!1700187 () Unit!95506)

(assert (=> b!4523304 (= e!2818230 lt!1700187)))

(declare-fun lt!1700185 () Unit!95506)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (List!50792 K!12060) Unit!95506)

(assert (=> b!4523304 (= lt!1700185 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699778) key!3287))))

(assert (=> b!4523304 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699778) key!3287))))

(declare-fun lt!1700191 () Unit!95506)

(assert (=> b!4523304 (= lt!1700191 lt!1700185)))

(declare-fun lemmaInListThenGetKeysListContains!467 (List!50792 K!12060) Unit!95506)

(assert (=> b!4523304 (= lt!1700187 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699778) key!3287))))

(assert (=> b!4523304 call!315167))

(declare-fun bm!315162 () Bool)

(assert (=> bm!315162 (= call!315167 (contains!13413 e!2818227 key!3287))))

(declare-fun c!771985 () Bool)

(assert (=> bm!315162 (= c!771985 c!771984)))

(assert (= (and d!1394082 c!771984) b!4523304))

(assert (= (and d!1394082 (not c!771984)) b!4523297))

(assert (= (and b!4523297 c!771986) b!4523302))

(assert (= (and b!4523297 (not c!771986)) b!4523299))

(assert (= (or b!4523304 b!4523297) bm!315162))

(assert (= (and bm!315162 c!771985) b!4523296))

(assert (= (and bm!315162 (not c!771985)) b!4523303))

(assert (= (and d!1394082 res!1883016) b!4523301))

(assert (= (and d!1394082 (not res!1883017)) b!4523300))

(assert (= (and b!4523300 res!1883018) b!4523298))

(declare-fun m!5273897 () Bool)

(assert (=> bm!315162 m!5273897))

(declare-fun m!5273899 () Bool)

(assert (=> b!4523303 m!5273899))

(declare-fun m!5273901 () Bool)

(assert (=> b!4523300 m!5273901))

(assert (=> b!4523300 m!5273901))

(declare-fun m!5273903 () Bool)

(assert (=> b!4523300 m!5273903))

(declare-fun m!5273905 () Bool)

(assert (=> b!4523296 m!5273905))

(declare-fun m!5273907 () Bool)

(assert (=> b!4523302 m!5273907))

(declare-fun m!5273909 () Bool)

(assert (=> b!4523302 m!5273909))

(assert (=> b!4523301 m!5273899))

(assert (=> b!4523301 m!5273899))

(declare-fun m!5273911 () Bool)

(assert (=> b!4523301 m!5273911))

(declare-fun m!5273913 () Bool)

(assert (=> b!4523304 m!5273913))

(assert (=> b!4523304 m!5273901))

(assert (=> b!4523304 m!5273901))

(assert (=> b!4523304 m!5273903))

(declare-fun m!5273915 () Bool)

(assert (=> b!4523304 m!5273915))

(assert (=> b!4523298 m!5273899))

(assert (=> b!4523298 m!5273899))

(assert (=> b!4523298 m!5273911))

(assert (=> d!1394082 m!5273907))

(assert (=> b!4522895 d!1394082))

(declare-fun bs!858119 () Bool)

(declare-fun d!1394100 () Bool)

(assert (= bs!858119 (and d!1394100 d!1394024)))

(declare-fun lambda!173071 () Int)

(assert (=> bs!858119 (= lambda!173071 lambda!173050)))

(declare-fun bs!858120 () Bool)

(assert (= bs!858120 (and d!1394100 d!1394070)))

(assert (=> bs!858120 (not (= lambda!173071 lambda!173062))))

(declare-fun bs!858121 () Bool)

(assert (= bs!858121 (and d!1394100 d!1394038)))

(assert (=> bs!858121 (= lambda!173071 lambda!173051)))

(declare-fun bs!858122 () Bool)

(assert (= bs!858122 (and d!1394100 d!1393990)))

(assert (=> bs!858122 (= lambda!173071 lambda!173001)))

(declare-fun bs!858123 () Bool)

(assert (= bs!858123 (and d!1394100 start!448016)))

(assert (=> bs!858123 (= lambda!173071 lambda!172947)))

(declare-fun bs!858124 () Bool)

(assert (= bs!858124 (and d!1394100 d!1394010)))

(assert (=> bs!858124 (= lambda!173071 lambda!173036)))

(declare-fun bs!858125 () Bool)

(assert (= bs!858125 (and d!1394100 b!4522898)))

(assert (=> bs!858125 (not (= lambda!173071 lambda!172948))))

(declare-fun bs!858126 () Bool)

(assert (= bs!858126 (and d!1394100 d!1394080)))

(assert (=> bs!858126 (= lambda!173071 lambda!173070)))

(declare-fun bs!858127 () Bool)

(assert (= bs!858127 (and d!1394100 d!1394054)))

(assert (=> bs!858127 (= lambda!173071 lambda!173059)))

(declare-fun lt!1700192 () ListMap!3605)

(assert (=> d!1394100 (invariantList!1023 (toList!4343 lt!1700192))))

(declare-fun e!2818233 () ListMap!3605)

(assert (=> d!1394100 (= lt!1700192 e!2818233)))

(declare-fun c!771987 () Bool)

(assert (=> d!1394100 (= c!771987 ((_ is Cons!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394100 (forall!10281 (toList!4344 lm!1477) lambda!173071)))

(assert (=> d!1394100 (= (extractMap!1224 (toList!4344 lm!1477)) lt!1700192)))

(declare-fun b!4523305 () Bool)

(assert (=> b!4523305 (= e!2818233 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun b!4523306 () Bool)

(assert (=> b!4523306 (= e!2818233 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394100 c!771987) b!4523305))

(assert (= (and d!1394100 (not c!771987)) b!4523306))

(declare-fun m!5273917 () Bool)

(assert (=> d!1394100 m!5273917))

(declare-fun m!5273919 () Bool)

(assert (=> d!1394100 m!5273919))

(assert (=> b!4523305 m!5273209))

(assert (=> b!4523305 m!5273209))

(declare-fun m!5273921 () Bool)

(assert (=> b!4523305 m!5273921))

(assert (=> b!4522895 d!1394100))

(declare-fun d!1394102 () Bool)

(declare-fun e!2818238 () Bool)

(assert (=> d!1394102 e!2818238))

(declare-fun res!1883020 () Bool)

(assert (=> d!1394102 (=> res!1883020 e!2818238)))

(declare-fun e!2818239 () Bool)

(assert (=> d!1394102 (= res!1883020 e!2818239)))

(declare-fun res!1883019 () Bool)

(assert (=> d!1394102 (=> (not res!1883019) (not e!2818239))))

(declare-fun lt!1700193 () Bool)

(assert (=> d!1394102 (= res!1883019 (not lt!1700193))))

(declare-fun lt!1700198 () Bool)

(assert (=> d!1394102 (= lt!1700193 lt!1700198)))

(declare-fun lt!1700195 () Unit!95506)

(declare-fun e!2818237 () Unit!95506)

(assert (=> d!1394102 (= lt!1700195 e!2818237)))

(declare-fun c!771988 () Bool)

(assert (=> d!1394102 (= c!771988 lt!1700198)))

(assert (=> d!1394102 (= lt!1700198 (containsKey!1804 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> d!1394102 (= (contains!13409 (extractMap!1224 (t!357755 (toList!4344 lm!1477))) key!3287) lt!1700193)))

(declare-fun b!4523307 () Bool)

(declare-fun e!2818234 () List!50795)

(assert (=> b!4523307 (= e!2818234 (getKeysList!471 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))

(declare-fun b!4523308 () Bool)

(declare-fun e!2818235 () Unit!95506)

(assert (=> b!4523308 (= e!2818237 e!2818235)))

(declare-fun c!771990 () Bool)

(declare-fun call!315168 () Bool)

(assert (=> b!4523308 (= c!771990 call!315168)))

(declare-fun b!4523309 () Bool)

(declare-fun e!2818236 () Bool)

(assert (=> b!4523309 (= e!2818236 (contains!13413 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(declare-fun b!4523310 () Bool)

(declare-fun Unit!95566 () Unit!95506)

(assert (=> b!4523310 (= e!2818235 Unit!95566)))

(declare-fun b!4523311 () Bool)

(assert (=> b!4523311 (= e!2818238 e!2818236)))

(declare-fun res!1883021 () Bool)

(assert (=> b!4523311 (=> (not res!1883021) (not e!2818236))))

(assert (=> b!4523311 (= res!1883021 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287)))))

(declare-fun b!4523312 () Bool)

(assert (=> b!4523312 (= e!2818239 (not (contains!13413 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287)))))

(declare-fun b!4523313 () Bool)

(assert (=> b!4523313 false))

(declare-fun lt!1700199 () Unit!95506)

(declare-fun lt!1700197 () Unit!95506)

(assert (=> b!4523313 (= lt!1700199 lt!1700197)))

(assert (=> b!4523313 (containsKey!1804 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287)))

(assert (=> b!4523313 (= lt!1700197 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(declare-fun Unit!95567 () Unit!95506)

(assert (=> b!4523313 (= e!2818235 Unit!95567)))

(declare-fun b!4523314 () Bool)

(assert (=> b!4523314 (= e!2818234 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun b!4523315 () Bool)

(declare-fun lt!1700196 () Unit!95506)

(assert (=> b!4523315 (= e!2818237 lt!1700196)))

(declare-fun lt!1700194 () Unit!95506)

(assert (=> b!4523315 (= lt!1700194 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> b!4523315 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(declare-fun lt!1700200 () Unit!95506)

(assert (=> b!4523315 (= lt!1700200 lt!1700194)))

(assert (=> b!4523315 (= lt!1700196 (lemmaInListThenGetKeysListContains!467 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> b!4523315 call!315168))

(declare-fun bm!315163 () Bool)

(assert (=> bm!315163 (= call!315168 (contains!13413 e!2818234 key!3287))))

(declare-fun c!771989 () Bool)

(assert (=> bm!315163 (= c!771989 c!771988)))

(assert (= (and d!1394102 c!771988) b!4523315))

(assert (= (and d!1394102 (not c!771988)) b!4523308))

(assert (= (and b!4523308 c!771990) b!4523313))

(assert (= (and b!4523308 (not c!771990)) b!4523310))

(assert (= (or b!4523315 b!4523308) bm!315163))

(assert (= (and bm!315163 c!771989) b!4523307))

(assert (= (and bm!315163 (not c!771989)) b!4523314))

(assert (= (and d!1394102 res!1883019) b!4523312))

(assert (= (and d!1394102 (not res!1883020)) b!4523311))

(assert (= (and b!4523311 res!1883021) b!4523309))

(declare-fun m!5273923 () Bool)

(assert (=> bm!315163 m!5273923))

(assert (=> b!4523314 m!5273209))

(declare-fun m!5273925 () Bool)

(assert (=> b!4523314 m!5273925))

(declare-fun m!5273927 () Bool)

(assert (=> b!4523311 m!5273927))

(assert (=> b!4523311 m!5273927))

(declare-fun m!5273929 () Bool)

(assert (=> b!4523311 m!5273929))

(declare-fun m!5273931 () Bool)

(assert (=> b!4523307 m!5273931))

(declare-fun m!5273933 () Bool)

(assert (=> b!4523313 m!5273933))

(declare-fun m!5273935 () Bool)

(assert (=> b!4523313 m!5273935))

(assert (=> b!4523312 m!5273209))

(assert (=> b!4523312 m!5273925))

(assert (=> b!4523312 m!5273925))

(declare-fun m!5273937 () Bool)

(assert (=> b!4523312 m!5273937))

(declare-fun m!5273939 () Bool)

(assert (=> b!4523315 m!5273939))

(assert (=> b!4523315 m!5273927))

(assert (=> b!4523315 m!5273927))

(assert (=> b!4523315 m!5273929))

(declare-fun m!5273941 () Bool)

(assert (=> b!4523315 m!5273941))

(assert (=> b!4523309 m!5273209))

(assert (=> b!4523309 m!5273925))

(assert (=> b!4523309 m!5273925))

(assert (=> b!4523309 m!5273937))

(assert (=> d!1394102 m!5273933))

(assert (=> b!4522896 d!1394102))

(declare-fun bs!858128 () Bool)

(declare-fun d!1394104 () Bool)

(assert (= bs!858128 (and d!1394104 d!1394024)))

(declare-fun lambda!173072 () Int)

(assert (=> bs!858128 (= lambda!173072 lambda!173050)))

(declare-fun bs!858129 () Bool)

(assert (= bs!858129 (and d!1394104 d!1394100)))

(assert (=> bs!858129 (= lambda!173072 lambda!173071)))

(declare-fun bs!858130 () Bool)

(assert (= bs!858130 (and d!1394104 d!1394070)))

(assert (=> bs!858130 (not (= lambda!173072 lambda!173062))))

(declare-fun bs!858131 () Bool)

(assert (= bs!858131 (and d!1394104 d!1394038)))

(assert (=> bs!858131 (= lambda!173072 lambda!173051)))

(declare-fun bs!858132 () Bool)

(assert (= bs!858132 (and d!1394104 d!1393990)))

(assert (=> bs!858132 (= lambda!173072 lambda!173001)))

(declare-fun bs!858133 () Bool)

(assert (= bs!858133 (and d!1394104 start!448016)))

(assert (=> bs!858133 (= lambda!173072 lambda!172947)))

(declare-fun bs!858134 () Bool)

(assert (= bs!858134 (and d!1394104 d!1394010)))

(assert (=> bs!858134 (= lambda!173072 lambda!173036)))

(declare-fun bs!858135 () Bool)

(assert (= bs!858135 (and d!1394104 b!4522898)))

(assert (=> bs!858135 (not (= lambda!173072 lambda!172948))))

(declare-fun bs!858136 () Bool)

(assert (= bs!858136 (and d!1394104 d!1394080)))

(assert (=> bs!858136 (= lambda!173072 lambda!173070)))

(declare-fun bs!858137 () Bool)

(assert (= bs!858137 (and d!1394104 d!1394054)))

(assert (=> bs!858137 (= lambda!173072 lambda!173059)))

(declare-fun lt!1700201 () ListMap!3605)

(assert (=> d!1394104 (invariantList!1023 (toList!4343 lt!1700201))))

(declare-fun e!2818240 () ListMap!3605)

(assert (=> d!1394104 (= lt!1700201 e!2818240)))

(declare-fun c!771991 () Bool)

(assert (=> d!1394104 (= c!771991 ((_ is Cons!50669) (t!357755 (toList!4344 lm!1477))))))

(assert (=> d!1394104 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173072)))

(assert (=> d!1394104 (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700201)))

(declare-fun b!4523316 () Bool)

(assert (=> b!4523316 (= e!2818240 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))))))

(declare-fun b!4523317 () Bool)

(assert (=> b!4523317 (= e!2818240 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394104 c!771991) b!4523316))

(assert (= (and d!1394104 (not c!771991)) b!4523317))

(declare-fun m!5273943 () Bool)

(assert (=> d!1394104 m!5273943))

(declare-fun m!5273945 () Bool)

(assert (=> d!1394104 m!5273945))

(declare-fun m!5273947 () Bool)

(assert (=> b!4523316 m!5273947))

(assert (=> b!4523316 m!5273947))

(declare-fun m!5273949 () Bool)

(assert (=> b!4523316 m!5273949))

(assert (=> b!4522896 d!1394104))

(declare-fun bs!858138 () Bool)

(declare-fun d!1394106 () Bool)

(assert (= bs!858138 (and d!1394106 d!1394104)))

(declare-fun lambda!173075 () Int)

(assert (=> bs!858138 (= lambda!173075 lambda!173072)))

(declare-fun bs!858139 () Bool)

(assert (= bs!858139 (and d!1394106 d!1394024)))

(assert (=> bs!858139 (= lambda!173075 lambda!173050)))

(declare-fun bs!858140 () Bool)

(assert (= bs!858140 (and d!1394106 d!1394100)))

(assert (=> bs!858140 (= lambda!173075 lambda!173071)))

(declare-fun bs!858141 () Bool)

(assert (= bs!858141 (and d!1394106 d!1394070)))

(assert (=> bs!858141 (not (= lambda!173075 lambda!173062))))

(declare-fun bs!858142 () Bool)

(assert (= bs!858142 (and d!1394106 d!1394038)))

(assert (=> bs!858142 (= lambda!173075 lambda!173051)))

(declare-fun bs!858143 () Bool)

(assert (= bs!858143 (and d!1394106 d!1393990)))

(assert (=> bs!858143 (= lambda!173075 lambda!173001)))

(declare-fun bs!858144 () Bool)

(assert (= bs!858144 (and d!1394106 start!448016)))

(assert (=> bs!858144 (= lambda!173075 lambda!172947)))

(declare-fun bs!858145 () Bool)

(assert (= bs!858145 (and d!1394106 d!1394010)))

(assert (=> bs!858145 (= lambda!173075 lambda!173036)))

(declare-fun bs!858146 () Bool)

(assert (= bs!858146 (and d!1394106 b!4522898)))

(assert (=> bs!858146 (not (= lambda!173075 lambda!172948))))

(declare-fun bs!858147 () Bool)

(assert (= bs!858147 (and d!1394106 d!1394080)))

(assert (=> bs!858147 (= lambda!173075 lambda!173070)))

(declare-fun bs!858148 () Bool)

(assert (= bs!858148 (and d!1394106 d!1394054)))

(assert (=> bs!858148 (= lambda!173075 lambda!173059)))

(assert (=> d!1394106 (contains!13409 (extractMap!1224 (toList!4344 lt!1699792)) key!3287)))

(declare-fun lt!1700204 () Unit!95506)

(declare-fun choose!29589 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> d!1394106 (= lt!1700204 (choose!29589 lt!1699792 key!3287 hashF!1107))))

(assert (=> d!1394106 (forall!10281 (toList!4344 lt!1699792) lambda!173075)))

(assert (=> d!1394106 (= (lemmaListContainsThenExtractedMapContains!138 lt!1699792 key!3287 hashF!1107) lt!1700204)))

(declare-fun bs!858149 () Bool)

(assert (= bs!858149 d!1394106))

(assert (=> bs!858149 m!5273205))

(assert (=> bs!858149 m!5273205))

(declare-fun m!5273951 () Bool)

(assert (=> bs!858149 m!5273951))

(declare-fun m!5273953 () Bool)

(assert (=> bs!858149 m!5273953))

(declare-fun m!5273955 () Bool)

(assert (=> bs!858149 m!5273955))

(assert (=> b!4522896 d!1394106))

(declare-fun d!1394108 () Bool)

(declare-fun e!2818245 () Bool)

(assert (=> d!1394108 e!2818245))

(declare-fun res!1883023 () Bool)

(assert (=> d!1394108 (=> res!1883023 e!2818245)))

(declare-fun e!2818246 () Bool)

(assert (=> d!1394108 (= res!1883023 e!2818246)))

(declare-fun res!1883022 () Bool)

(assert (=> d!1394108 (=> (not res!1883022) (not e!2818246))))

(declare-fun lt!1700205 () Bool)

(assert (=> d!1394108 (= res!1883022 (not lt!1700205))))

(declare-fun lt!1700210 () Bool)

(assert (=> d!1394108 (= lt!1700205 lt!1700210)))

(declare-fun lt!1700207 () Unit!95506)

(declare-fun e!2818244 () Unit!95506)

(assert (=> d!1394108 (= lt!1700207 e!2818244)))

(declare-fun c!771992 () Bool)

(assert (=> d!1394108 (= c!771992 lt!1700210)))

(assert (=> d!1394108 (= lt!1700210 (containsKey!1804 (toList!4343 lt!1699768) key!3287))))

(assert (=> d!1394108 (= (contains!13409 lt!1699768 key!3287) lt!1700205)))

(declare-fun b!4523318 () Bool)

(declare-fun e!2818241 () List!50795)

(assert (=> b!4523318 (= e!2818241 (getKeysList!471 (toList!4343 lt!1699768)))))

(declare-fun b!4523319 () Bool)

(declare-fun e!2818242 () Unit!95506)

(assert (=> b!4523319 (= e!2818244 e!2818242)))

(declare-fun c!771994 () Bool)

(declare-fun call!315169 () Bool)

(assert (=> b!4523319 (= c!771994 call!315169)))

(declare-fun b!4523320 () Bool)

(declare-fun e!2818243 () Bool)

(assert (=> b!4523320 (= e!2818243 (contains!13413 (keys!17608 lt!1699768) key!3287))))

(declare-fun b!4523321 () Bool)

(declare-fun Unit!95568 () Unit!95506)

(assert (=> b!4523321 (= e!2818242 Unit!95568)))

(declare-fun b!4523322 () Bool)

(assert (=> b!4523322 (= e!2818245 e!2818243)))

(declare-fun res!1883024 () Bool)

(assert (=> b!4523322 (=> (not res!1883024) (not e!2818243))))

(assert (=> b!4523322 (= res!1883024 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287)))))

(declare-fun b!4523323 () Bool)

(assert (=> b!4523323 (= e!2818246 (not (contains!13413 (keys!17608 lt!1699768) key!3287)))))

(declare-fun b!4523324 () Bool)

(assert (=> b!4523324 false))

(declare-fun lt!1700211 () Unit!95506)

(declare-fun lt!1700209 () Unit!95506)

(assert (=> b!4523324 (= lt!1700211 lt!1700209)))

(assert (=> b!4523324 (containsKey!1804 (toList!4343 lt!1699768) key!3287)))

(assert (=> b!4523324 (= lt!1700209 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699768) key!3287))))

(declare-fun Unit!95569 () Unit!95506)

(assert (=> b!4523324 (= e!2818242 Unit!95569)))

(declare-fun b!4523325 () Bool)

(assert (=> b!4523325 (= e!2818241 (keys!17608 lt!1699768))))

(declare-fun b!4523326 () Bool)

(declare-fun lt!1700208 () Unit!95506)

(assert (=> b!4523326 (= e!2818244 lt!1700208)))

(declare-fun lt!1700206 () Unit!95506)

(assert (=> b!4523326 (= lt!1700206 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699768) key!3287))))

(assert (=> b!4523326 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))))

(declare-fun lt!1700212 () Unit!95506)

(assert (=> b!4523326 (= lt!1700212 lt!1700206)))

(assert (=> b!4523326 (= lt!1700208 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699768) key!3287))))

(assert (=> b!4523326 call!315169))

(declare-fun bm!315164 () Bool)

(assert (=> bm!315164 (= call!315169 (contains!13413 e!2818241 key!3287))))

(declare-fun c!771993 () Bool)

(assert (=> bm!315164 (= c!771993 c!771992)))

(assert (= (and d!1394108 c!771992) b!4523326))

(assert (= (and d!1394108 (not c!771992)) b!4523319))

(assert (= (and b!4523319 c!771994) b!4523324))

(assert (= (and b!4523319 (not c!771994)) b!4523321))

(assert (= (or b!4523326 b!4523319) bm!315164))

(assert (= (and bm!315164 c!771993) b!4523318))

(assert (= (and bm!315164 (not c!771993)) b!4523325))

(assert (= (and d!1394108 res!1883022) b!4523323))

(assert (= (and d!1394108 (not res!1883023)) b!4523322))

(assert (= (and b!4523322 res!1883024) b!4523320))

(declare-fun m!5273957 () Bool)

(assert (=> bm!315164 m!5273957))

(assert (=> b!4523325 m!5273729))

(declare-fun m!5273959 () Bool)

(assert (=> b!4523322 m!5273959))

(assert (=> b!4523322 m!5273959))

(declare-fun m!5273961 () Bool)

(assert (=> b!4523322 m!5273961))

(declare-fun m!5273963 () Bool)

(assert (=> b!4523318 m!5273963))

(declare-fun m!5273965 () Bool)

(assert (=> b!4523324 m!5273965))

(declare-fun m!5273967 () Bool)

(assert (=> b!4523324 m!5273967))

(assert (=> b!4523323 m!5273729))

(assert (=> b!4523323 m!5273729))

(declare-fun m!5273969 () Bool)

(assert (=> b!4523323 m!5273969))

(declare-fun m!5273971 () Bool)

(assert (=> b!4523326 m!5273971))

(assert (=> b!4523326 m!5273959))

(assert (=> b!4523326 m!5273959))

(assert (=> b!4523326 m!5273961))

(declare-fun m!5273973 () Bool)

(assert (=> b!4523326 m!5273973))

(assert (=> b!4523320 m!5273729))

(assert (=> b!4523320 m!5273729))

(assert (=> b!4523320 m!5273969))

(assert (=> d!1394108 m!5273965))

(assert (=> b!4522896 d!1394108))

(declare-fun bs!858150 () Bool)

(declare-fun d!1394110 () Bool)

(assert (= bs!858150 (and d!1394110 d!1394104)))

(declare-fun lambda!173076 () Int)

(assert (=> bs!858150 (= lambda!173076 lambda!173072)))

(declare-fun bs!858151 () Bool)

(assert (= bs!858151 (and d!1394110 d!1394024)))

(assert (=> bs!858151 (= lambda!173076 lambda!173050)))

(declare-fun bs!858152 () Bool)

(assert (= bs!858152 (and d!1394110 d!1394100)))

(assert (=> bs!858152 (= lambda!173076 lambda!173071)))

(declare-fun bs!858153 () Bool)

(assert (= bs!858153 (and d!1394110 d!1394070)))

(assert (=> bs!858153 (not (= lambda!173076 lambda!173062))))

(declare-fun bs!858154 () Bool)

(assert (= bs!858154 (and d!1394110 d!1393990)))

(assert (=> bs!858154 (= lambda!173076 lambda!173001)))

(declare-fun bs!858155 () Bool)

(assert (= bs!858155 (and d!1394110 start!448016)))

(assert (=> bs!858155 (= lambda!173076 lambda!172947)))

(declare-fun bs!858156 () Bool)

(assert (= bs!858156 (and d!1394110 d!1394010)))

(assert (=> bs!858156 (= lambda!173076 lambda!173036)))

(declare-fun bs!858157 () Bool)

(assert (= bs!858157 (and d!1394110 b!4522898)))

(assert (=> bs!858157 (not (= lambda!173076 lambda!172948))))

(declare-fun bs!858158 () Bool)

(assert (= bs!858158 (and d!1394110 d!1394080)))

(assert (=> bs!858158 (= lambda!173076 lambda!173070)))

(declare-fun bs!858159 () Bool)

(assert (= bs!858159 (and d!1394110 d!1394054)))

(assert (=> bs!858159 (= lambda!173076 lambda!173059)))

(declare-fun bs!858160 () Bool)

(assert (= bs!858160 (and d!1394110 d!1394038)))

(assert (=> bs!858160 (= lambda!173076 lambda!173051)))

(declare-fun bs!858161 () Bool)

(assert (= bs!858161 (and d!1394110 d!1394106)))

(assert (=> bs!858161 (= lambda!173076 lambda!173075)))

(declare-fun lt!1700213 () ListMap!3605)

(assert (=> d!1394110 (invariantList!1023 (toList!4343 lt!1700213))))

(declare-fun e!2818247 () ListMap!3605)

(assert (=> d!1394110 (= lt!1700213 e!2818247)))

(declare-fun c!771995 () Bool)

(assert (=> d!1394110 (= c!771995 ((_ is Cons!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1394110 (forall!10281 (toList!4344 lt!1699792) lambda!173076)))

(assert (=> d!1394110 (= (extractMap!1224 (toList!4344 lt!1699792)) lt!1700213)))

(declare-fun b!4523327 () Bool)

(assert (=> b!4523327 (= e!2818247 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))))))

(declare-fun b!4523328 () Bool)

(assert (=> b!4523328 (= e!2818247 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394110 c!771995) b!4523327))

(assert (= (and d!1394110 (not c!771995)) b!4523328))

(declare-fun m!5273975 () Bool)

(assert (=> d!1394110 m!5273975))

(declare-fun m!5273977 () Bool)

(assert (=> d!1394110 m!5273977))

(declare-fun m!5273979 () Bool)

(assert (=> b!4523327 m!5273979))

(assert (=> b!4523327 m!5273979))

(declare-fun m!5273981 () Bool)

(assert (=> b!4523327 m!5273981))

(assert (=> b!4522896 d!1394110))

(declare-fun d!1394112 () Bool)

(declare-fun hash!2833 (Hashable!5563 K!12060) (_ BitVec 64))

(assert (=> d!1394112 (= (hash!2829 hashF!1107 key!3287) (hash!2833 hashF!1107 key!3287))))

(declare-fun bs!858162 () Bool)

(assert (= bs!858162 d!1394112))

(declare-fun m!5273983 () Bool)

(assert (=> bs!858162 m!5273983))

(assert (=> b!4522887 d!1394112))

(declare-fun d!1394114 () Bool)

(declare-fun res!1883029 () Bool)

(declare-fun e!2818252 () Bool)

(assert (=> d!1394114 (=> res!1883029 e!2818252)))

(assert (=> d!1394114 (= res!1883029 (and ((_ is Cons!50668) (_2!28848 lt!1699794)) (= (_1!28847 (h!56527 (_2!28848 lt!1699794))) key!3287)))))

(assert (=> d!1394114 (= (containsKey!1800 (_2!28848 lt!1699794) key!3287) e!2818252)))

(declare-fun b!4523333 () Bool)

(declare-fun e!2818253 () Bool)

(assert (=> b!4523333 (= e!2818252 e!2818253)))

(declare-fun res!1883030 () Bool)

(assert (=> b!4523333 (=> (not res!1883030) (not e!2818253))))

(assert (=> b!4523333 (= res!1883030 ((_ is Cons!50668) (_2!28848 lt!1699794)))))

(declare-fun b!4523334 () Bool)

(assert (=> b!4523334 (= e!2818253 (containsKey!1800 (t!357754 (_2!28848 lt!1699794)) key!3287))))

(assert (= (and d!1394114 (not res!1883029)) b!4523333))

(assert (= (and b!4523333 res!1883030) b!4523334))

(declare-fun m!5273985 () Bool)

(assert (=> b!4523334 m!5273985))

(assert (=> b!4522888 d!1394114))

(declare-fun d!1394116 () Bool)

(declare-fun res!1883031 () Bool)

(declare-fun e!2818254 () Bool)

(assert (=> d!1394116 (=> res!1883031 e!2818254)))

(assert (=> d!1394116 (= res!1883031 (and ((_ is Cons!50668) lt!1699789) (= (_1!28847 (h!56527 lt!1699789)) key!3287)))))

(assert (=> d!1394116 (= (containsKey!1800 lt!1699789 key!3287) e!2818254)))

(declare-fun b!4523335 () Bool)

(declare-fun e!2818255 () Bool)

(assert (=> b!4523335 (= e!2818254 e!2818255)))

(declare-fun res!1883032 () Bool)

(assert (=> b!4523335 (=> (not res!1883032) (not e!2818255))))

(assert (=> b!4523335 (= res!1883032 ((_ is Cons!50668) lt!1699789))))

(declare-fun b!4523336 () Bool)

(assert (=> b!4523336 (= e!2818255 (containsKey!1800 (t!357754 lt!1699789) key!3287))))

(assert (= (and d!1394116 (not res!1883031)) b!4523335))

(assert (= (and b!4523335 res!1883032) b!4523336))

(declare-fun m!5273987 () Bool)

(assert (=> b!4523336 m!5273987))

(assert (=> b!4522889 d!1394116))

(declare-fun d!1394118 () Bool)

(declare-fun e!2818256 () Bool)

(assert (=> d!1394118 e!2818256))

(declare-fun res!1883033 () Bool)

(assert (=> d!1394118 (=> (not res!1883033) (not e!2818256))))

(declare-fun lt!1700216 () ListLongMap!2975)

(assert (=> d!1394118 (= res!1883033 (contains!13408 lt!1700216 (_1!28848 lt!1699772)))))

(declare-fun lt!1700217 () List!50793)

(assert (=> d!1394118 (= lt!1700216 (ListLongMap!2976 lt!1700217))))

(declare-fun lt!1700215 () Unit!95506)

(declare-fun lt!1700214 () Unit!95506)

(assert (=> d!1394118 (= lt!1700215 lt!1700214)))

(assert (=> d!1394118 (= (getValueByKey!1104 lt!1700217 (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772)))))

(assert (=> d!1394118 (= lt!1700214 (lemmaContainsTupThenGetReturnValue!686 lt!1700217 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(assert (=> d!1394118 (= lt!1700217 (insertStrictlySorted!414 (toList!4344 lm!1477) (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(assert (=> d!1394118 (= (+!1552 lm!1477 lt!1699772) lt!1700216)))

(declare-fun b!4523337 () Bool)

(declare-fun res!1883034 () Bool)

(assert (=> b!4523337 (=> (not res!1883034) (not e!2818256))))

(assert (=> b!4523337 (= res!1883034 (= (getValueByKey!1104 (toList!4344 lt!1700216) (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772))))))

(declare-fun b!4523338 () Bool)

(assert (=> b!4523338 (= e!2818256 (contains!13410 (toList!4344 lt!1700216) lt!1699772))))

(assert (= (and d!1394118 res!1883033) b!4523337))

(assert (= (and b!4523337 res!1883034) b!4523338))

(declare-fun m!5273989 () Bool)

(assert (=> d!1394118 m!5273989))

(declare-fun m!5273991 () Bool)

(assert (=> d!1394118 m!5273991))

(declare-fun m!5273993 () Bool)

(assert (=> d!1394118 m!5273993))

(declare-fun m!5273995 () Bool)

(assert (=> d!1394118 m!5273995))

(declare-fun m!5273997 () Bool)

(assert (=> b!4523337 m!5273997))

(declare-fun m!5273999 () Bool)

(assert (=> b!4523338 m!5273999))

(assert (=> b!4522890 d!1394118))

(declare-fun d!1394120 () Bool)

(declare-fun e!2818257 () Bool)

(assert (=> d!1394120 e!2818257))

(declare-fun res!1883035 () Bool)

(assert (=> d!1394120 (=> (not res!1883035) (not e!2818257))))

(declare-fun lt!1700220 () ListLongMap!2975)

(assert (=> d!1394120 (= res!1883035 (contains!13408 lt!1700220 (_1!28848 lt!1699794)))))

(declare-fun lt!1700221 () List!50793)

(assert (=> d!1394120 (= lt!1700220 (ListLongMap!2976 lt!1700221))))

(declare-fun lt!1700219 () Unit!95506)

(declare-fun lt!1700218 () Unit!95506)

(assert (=> d!1394120 (= lt!1700219 lt!1700218)))

(assert (=> d!1394120 (= (getValueByKey!1104 lt!1700221 (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794)))))

(assert (=> d!1394120 (= lt!1700218 (lemmaContainsTupThenGetReturnValue!686 lt!1700221 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(assert (=> d!1394120 (= lt!1700221 (insertStrictlySorted!414 (toList!4344 lt!1699796) (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(assert (=> d!1394120 (= (+!1552 lt!1699796 lt!1699794) lt!1700220)))

(declare-fun b!4523339 () Bool)

(declare-fun res!1883036 () Bool)

(assert (=> b!4523339 (=> (not res!1883036) (not e!2818257))))

(assert (=> b!4523339 (= res!1883036 (= (getValueByKey!1104 (toList!4344 lt!1700220) (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794))))))

(declare-fun b!4523340 () Bool)

(assert (=> b!4523340 (= e!2818257 (contains!13410 (toList!4344 lt!1700220) lt!1699794))))

(assert (= (and d!1394120 res!1883035) b!4523339))

(assert (= (and b!4523339 res!1883036) b!4523340))

(declare-fun m!5274001 () Bool)

(assert (=> d!1394120 m!5274001))

(declare-fun m!5274003 () Bool)

(assert (=> d!1394120 m!5274003))

(declare-fun m!5274005 () Bool)

(assert (=> d!1394120 m!5274005))

(declare-fun m!5274007 () Bool)

(assert (=> d!1394120 m!5274007))

(declare-fun m!5274009 () Bool)

(assert (=> b!4523339 m!5274009))

(declare-fun m!5274011 () Bool)

(assert (=> b!4523340 m!5274011))

(assert (=> b!4522890 d!1394120))

(declare-fun bs!858163 () Bool)

(declare-fun d!1394122 () Bool)

(assert (= bs!858163 (and d!1394122 d!1394104)))

(declare-fun lambda!173079 () Int)

(assert (=> bs!858163 (= lambda!173079 lambda!173072)))

(declare-fun bs!858164 () Bool)

(assert (= bs!858164 (and d!1394122 d!1394024)))

(assert (=> bs!858164 (= lambda!173079 lambda!173050)))

(declare-fun bs!858165 () Bool)

(assert (= bs!858165 (and d!1394122 d!1394100)))

(assert (=> bs!858165 (= lambda!173079 lambda!173071)))

(declare-fun bs!858166 () Bool)

(assert (= bs!858166 (and d!1394122 d!1394070)))

(assert (=> bs!858166 (not (= lambda!173079 lambda!173062))))

(declare-fun bs!858167 () Bool)

(assert (= bs!858167 (and d!1394122 d!1393990)))

(assert (=> bs!858167 (= lambda!173079 lambda!173001)))

(declare-fun bs!858168 () Bool)

(assert (= bs!858168 (and d!1394122 d!1394110)))

(assert (=> bs!858168 (= lambda!173079 lambda!173076)))

(declare-fun bs!858169 () Bool)

(assert (= bs!858169 (and d!1394122 start!448016)))

(assert (=> bs!858169 (= lambda!173079 lambda!172947)))

(declare-fun bs!858170 () Bool)

(assert (= bs!858170 (and d!1394122 d!1394010)))

(assert (=> bs!858170 (= lambda!173079 lambda!173036)))

(declare-fun bs!858171 () Bool)

(assert (= bs!858171 (and d!1394122 b!4522898)))

(assert (=> bs!858171 (not (= lambda!173079 lambda!172948))))

(declare-fun bs!858172 () Bool)

(assert (= bs!858172 (and d!1394122 d!1394080)))

(assert (=> bs!858172 (= lambda!173079 lambda!173070)))

(declare-fun bs!858173 () Bool)

(assert (= bs!858173 (and d!1394122 d!1394054)))

(assert (=> bs!858173 (= lambda!173079 lambda!173059)))

(declare-fun bs!858174 () Bool)

(assert (= bs!858174 (and d!1394122 d!1394038)))

(assert (=> bs!858174 (= lambda!173079 lambda!173051)))

(declare-fun bs!858175 () Bool)

(assert (= bs!858175 (and d!1394122 d!1394106)))

(assert (=> bs!858175 (= lambda!173079 lambda!173075)))

(assert (=> d!1394122 (not (contains!13409 (extractMap!1224 (toList!4344 lm!1477)) key!3287))))

(declare-fun lt!1700224 () Unit!95506)

(declare-fun choose!29591 (ListLongMap!2975 K!12060 Hashable!5563) Unit!95506)

(assert (=> d!1394122 (= lt!1700224 (choose!29591 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1394122 (forall!10281 (toList!4344 lm!1477) lambda!173079)))

(assert (=> d!1394122 (= (lemmaNotInItsHashBucketThenNotInMap!156 lm!1477 key!3287 hashF!1107) lt!1700224)))

(declare-fun bs!858176 () Bool)

(assert (= bs!858176 d!1394122))

(assert (=> bs!858176 m!5273161))

(assert (=> bs!858176 m!5273161))

(declare-fun m!5274013 () Bool)

(assert (=> bs!858176 m!5274013))

(declare-fun m!5274015 () Bool)

(assert (=> bs!858176 m!5274015))

(declare-fun m!5274017 () Bool)

(assert (=> bs!858176 m!5274017))

(assert (=> b!4522891 d!1394122))

(declare-fun b!4523345 () Bool)

(declare-fun e!2818260 () Bool)

(declare-fun tp!1338205 () Bool)

(declare-fun tp!1338206 () Bool)

(assert (=> b!4523345 (= e!2818260 (and tp!1338205 tp!1338206))))

(assert (=> b!4522892 (= tp!1338190 e!2818260)))

(assert (= (and b!4522892 ((_ is Cons!50669) (toList!4344 lm!1477))) b!4523345))

(declare-fun tp!1338209 () Bool)

(declare-fun e!2818263 () Bool)

(declare-fun b!4523350 () Bool)

(assert (=> b!4523350 (= e!2818263 (and tp_is_empty!27949 tp_is_empty!27951 tp!1338209))))

(assert (=> b!4522881 (= tp!1338191 e!2818263)))

(assert (= (and b!4522881 ((_ is Cons!50668) (t!357754 newBucket!178))) b!4523350))

(declare-fun b_lambda!155299 () Bool)

(assert (= b_lambda!155273 (or start!448016 b_lambda!155299)))

(declare-fun bs!858177 () Bool)

(declare-fun d!1394124 () Bool)

(assert (= bs!858177 (and d!1394124 start!448016)))

(assert (=> bs!858177 (= (dynLambda!21171 lambda!172947 (h!56528 (toList!4344 lm!1477))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun m!5274019 () Bool)

(assert (=> bs!858177 m!5274019))

(assert (=> b!4523083 d!1394124))

(declare-fun b_lambda!155301 () Bool)

(assert (= b_lambda!155277 (or b!4522898 b_lambda!155301)))

(declare-fun bs!858178 () Bool)

(declare-fun d!1394126 () Bool)

(assert (= bs!858178 (and d!1394126 b!4522898)))

(assert (=> bs!858178 (= (dynLambda!21171 lambda!172948 (h!56528 (toList!4344 lm!1477))) (allKeysSameHash!1022 (_2!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 (h!56528 (toList!4344 lm!1477))) hashF!1107))))

(declare-fun m!5274021 () Bool)

(assert (=> bs!858178 m!5274021))

(assert (=> d!1393996 d!1394126))

(declare-fun b_lambda!155303 () Bool)

(assert (= b_lambda!155279 (or start!448016 b_lambda!155303)))

(declare-fun bs!858179 () Bool)

(declare-fun d!1394128 () Bool)

(assert (= bs!858179 (and d!1394128 start!448016)))

(assert (=> bs!858179 (= (dynLambda!21171 lambda!172947 lt!1699785) (noDuplicateKeys!1168 (_2!28848 lt!1699785)))))

(declare-fun m!5274023 () Bool)

(assert (=> bs!858179 m!5274023))

(assert (=> d!1394004 d!1394128))

(declare-fun b_lambda!155305 () Bool)

(assert (= b_lambda!155287 (or start!448016 b_lambda!155305)))

(assert (=> d!1394068 d!1394124))

(declare-fun b_lambda!155307 () Bool)

(assert (= b_lambda!155275 (or b!4522898 b_lambda!155307)))

(declare-fun bs!858180 () Bool)

(declare-fun d!1394130 () Bool)

(assert (= bs!858180 (and d!1394130 b!4522898)))

(assert (=> bs!858180 (= (dynLambda!21172 lambda!172949 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (= (hash!2829 hashF!1107 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))))) (_1!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun m!5274025 () Bool)

(assert (=> bs!858180 m!5274025))

(assert (=> b!4523107 d!1394130))

(check-sat (not b!4523179) (not b!4523312) (not bm!315164) tp_is_empty!27951 (not b!4523305) (not b_lambda!155303) (not d!1394010) (not b!4523309) tp_is_empty!27949 (not b!4523250) (not bm!315144) (not b!4523163) (not bm!315143) (not d!1393984) (not bs!858179) (not b!4523252) (not b!4523318) (not d!1393982) (not bs!858178) (not b!4523256) (not b!4523084) (not b!4523296) (not b!4523177) (not bm!315163) (not bm!315158) (not b!4523061) (not b_lambda!155301) (not b!4523350) (not d!1394108) (not b!4523322) (not d!1394074) (not b!4523298) (not d!1394068) (not b!4523146) (not b!4523324) (not b!4523096) (not d!1394110) (not b!4523176) (not b!4523253) (not b!4523338) (not d!1394004) (not b!4523315) (not b!4523102) (not b!4523259) (not b!4523136) (not b!4523251) (not b!4523059) (not b!4523339) (not b!4523307) (not d!1393968) (not d!1394014) (not b!4523133) (not b!4523311) (not d!1393892) (not d!1393890) (not b!4523167) (not d!1394022) (not b!4523327) (not b!4523220) (not b!4523320) (not d!1394038) (not bm!315159) (not bs!858180) (not d!1394104) (not b!4523257) (not d!1393966) (not d!1394072) (not b!4523076) (not d!1394024) (not b!4523139) (not b!4523138) (not b!4523336) (not b!4523058) (not d!1394062) (not d!1394002) (not b!4523148) (not b!4523115) (not b!4523147) (not b!4523093) (not d!1394006) (not b!4523304) (not d!1394012) (not b_lambda!155305) (not d!1394082) (not b!4523302) (not d!1393996) (not d!1394120) (not d!1394070) (not b!4523334) (not d!1394044) (not d!1393976) (not b!4523301) (not bm!315142) (not b!4523300) (not b!4523255) (not b!4523303) (not d!1394080) (not d!1393992) (not b!4523313) (not b!4523094) (not b!4523325) (not d!1393974) (not b!4523326) (not d!1394106) (not b_lambda!155299) (not d!1394064) (not b!4523108) (not bm!315162) (not b!4523091) (not b!4523193) (not b!4523323) (not b!4523316) (not d!1394046) (not b!4523069) (not d!1394054) (not d!1394112) (not bm!315157) (not d!1394016) (not bs!858177) (not d!1394100) (not b!4523203) (not d!1394118) (not b_lambda!155307) (not d!1393990) (not d!1394008) (not b!4523345) (not d!1394102) (not d!1393998) (not d!1393972) (not d!1394122) (not b!4523258) (not b!4523060) (not b!4523207) (not d!1393978) (not b!4523340) (not b!4523078) (not b!4523314) (not d!1394034) (not b!4523337) (not b!4523204) (not b!4523249) (not b!4523137) (not d!1393888))
(check-sat)
(get-model)

(declare-fun d!1394132 () Bool)

(declare-fun res!1883037 () Bool)

(declare-fun e!2818264 () Bool)

(assert (=> d!1394132 (=> res!1883037 e!2818264)))

(assert (=> d!1394132 (= res!1883037 (and ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))) (= (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(assert (=> d!1394132 (= (containsKey!1800 (t!357754 (_2!28848 lt!1699794)) (_1!28847 (h!56527 (_2!28848 lt!1699794)))) e!2818264)))

(declare-fun b!4523351 () Bool)

(declare-fun e!2818265 () Bool)

(assert (=> b!4523351 (= e!2818264 e!2818265)))

(declare-fun res!1883038 () Bool)

(assert (=> b!4523351 (=> (not res!1883038) (not e!2818265))))

(assert (=> b!4523351 (= res!1883038 ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))))))

(declare-fun b!4523352 () Bool)

(assert (=> b!4523352 (= e!2818265 (containsKey!1800 (t!357754 (t!357754 (_2!28848 lt!1699794))) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (= (and d!1394132 (not res!1883037)) b!4523351))

(assert (= (and b!4523351 res!1883038) b!4523352))

(declare-fun m!5274027 () Bool)

(assert (=> b!4523352 m!5274027))

(assert (=> b!4523251 d!1394132))

(declare-fun d!1394134 () Bool)

(assert (=> d!1394134 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344))))

(declare-fun lt!1700227 () Unit!95506)

(declare-fun choose!29592 (List!50793 (_ BitVec 64)) Unit!95506)

(assert (=> d!1394134 (= lt!1700227 (choose!29592 (toList!4344 lt!1699792) hash!344))))

(declare-fun e!2818268 () Bool)

(assert (=> d!1394134 e!2818268))

(declare-fun res!1883041 () Bool)

(assert (=> d!1394134 (=> (not res!1883041) (not e!2818268))))

(assert (=> d!1394134 (= res!1883041 (isStrictlySorted!436 (toList!4344 lt!1699792)))))

(assert (=> d!1394134 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1699792) hash!344) lt!1700227)))

(declare-fun b!4523355 () Bool)

(assert (=> b!4523355 (= e!2818268 (containsKey!1802 (toList!4344 lt!1699792) hash!344))))

(assert (= (and d!1394134 res!1883041) b!4523355))

(assert (=> d!1394134 m!5273489))

(assert (=> d!1394134 m!5273489))

(assert (=> d!1394134 m!5273497))

(declare-fun m!5274029 () Bool)

(assert (=> d!1394134 m!5274029))

(declare-fun m!5274031 () Bool)

(assert (=> d!1394134 m!5274031))

(assert (=> b!4523355 m!5273493))

(assert (=> b!4523076 d!1394134))

(declare-fun d!1394136 () Bool)

(declare-fun isEmpty!28680 (Option!11130) Bool)

(assert (=> d!1394136 (= (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344)) (not (isEmpty!28680 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344))))))

(declare-fun bs!858181 () Bool)

(assert (= bs!858181 d!1394136))

(assert (=> bs!858181 m!5273489))

(declare-fun m!5274033 () Bool)

(assert (=> bs!858181 m!5274033))

(assert (=> b!4523076 d!1394136))

(declare-fun b!4523365 () Bool)

(declare-fun e!2818273 () Option!11130)

(declare-fun e!2818274 () Option!11130)

(assert (=> b!4523365 (= e!2818273 e!2818274)))

(declare-fun c!772001 () Bool)

(assert (=> b!4523365 (= c!772001 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (not (= (_1!28848 (h!56528 (toList!4344 lt!1699792))) hash!344))))))

(declare-fun d!1394138 () Bool)

(declare-fun c!772000 () Bool)

(assert (=> d!1394138 (= c!772000 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (= (_1!28848 (h!56528 (toList!4344 lt!1699792))) hash!344)))))

(assert (=> d!1394138 (= (getValueByKey!1104 (toList!4344 lt!1699792) hash!344) e!2818273)))

(declare-fun b!4523366 () Bool)

(assert (=> b!4523366 (= e!2818274 (getValueByKey!1104 (t!357755 (toList!4344 lt!1699792)) hash!344))))

(declare-fun b!4523364 () Bool)

(assert (=> b!4523364 (= e!2818273 (Some!11129 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(declare-fun b!4523367 () Bool)

(assert (=> b!4523367 (= e!2818274 None!11129)))

(assert (= (and d!1394138 c!772000) b!4523364))

(assert (= (and d!1394138 (not c!772000)) b!4523365))

(assert (= (and b!4523365 c!772001) b!4523366))

(assert (= (and b!4523365 (not c!772001)) b!4523367))

(declare-fun m!5274035 () Bool)

(assert (=> b!4523366 m!5274035))

(assert (=> b!4523076 d!1394138))

(declare-fun d!1394140 () Bool)

(declare-fun res!1883042 () Bool)

(declare-fun e!2818275 () Bool)

(assert (=> d!1394140 (=> res!1883042 e!2818275)))

(assert (=> d!1394140 (= res!1883042 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394140 (= (forall!10280 (_2!28848 lt!1699794) lambda!173069) e!2818275)))

(declare-fun b!4523368 () Bool)

(declare-fun e!2818276 () Bool)

(assert (=> b!4523368 (= e!2818275 e!2818276)))

(declare-fun res!1883043 () Bool)

(assert (=> b!4523368 (=> (not res!1883043) (not e!2818276))))

(assert (=> b!4523368 (= res!1883043 (dynLambda!21172 lambda!173069 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun b!4523369 () Bool)

(assert (=> b!4523369 (= e!2818276 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173069))))

(assert (= (and d!1394140 (not res!1883042)) b!4523368))

(assert (= (and b!4523368 res!1883043) b!4523369))

(declare-fun b_lambda!155309 () Bool)

(assert (=> (not b_lambda!155309) (not b!4523368)))

(declare-fun m!5274037 () Bool)

(assert (=> b!4523368 m!5274037))

(declare-fun m!5274039 () Bool)

(assert (=> b!4523369 m!5274039))

(assert (=> d!1394074 d!1394140))

(assert (=> d!1394074 d!1394066))

(declare-fun d!1394142 () Bool)

(declare-fun res!1883044 () Bool)

(declare-fun e!2818277 () Bool)

(assert (=> d!1394142 (=> res!1883044 e!2818277)))

(assert (=> d!1394142 (= res!1883044 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394142 (= (forall!10280 (_2!28848 lt!1699794) lambda!172998) e!2818277)))

(declare-fun b!4523370 () Bool)

(declare-fun e!2818278 () Bool)

(assert (=> b!4523370 (= e!2818277 e!2818278)))

(declare-fun res!1883045 () Bool)

(assert (=> b!4523370 (=> (not res!1883045) (not e!2818278))))

(assert (=> b!4523370 (= res!1883045 (dynLambda!21172 lambda!172998 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun b!4523371 () Bool)

(assert (=> b!4523371 (= e!2818278 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!172998))))

(assert (= (and d!1394142 (not res!1883044)) b!4523370))

(assert (= (and b!4523370 res!1883045) b!4523371))

(declare-fun b_lambda!155311 () Bool)

(assert (=> (not b_lambda!155311) (not b!4523370)))

(declare-fun m!5274041 () Bool)

(assert (=> b!4523370 m!5274041))

(declare-fun m!5274043 () Bool)

(assert (=> b!4523371 m!5274043))

(assert (=> d!1393892 d!1394142))

(assert (=> d!1393892 d!1394066))

(declare-fun d!1394144 () Bool)

(declare-fun res!1883050 () Bool)

(declare-fun e!2818283 () Bool)

(assert (=> d!1394144 (=> res!1883050 e!2818283)))

(assert (=> d!1394144 (= res!1883050 (and ((_ is Cons!50668) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) key!3287)))))

(assert (=> d!1394144 (= (containsKey!1804 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) e!2818283)))

(declare-fun b!4523376 () Bool)

(declare-fun e!2818284 () Bool)

(assert (=> b!4523376 (= e!2818283 e!2818284)))

(declare-fun res!1883051 () Bool)

(assert (=> b!4523376 (=> (not res!1883051) (not e!2818284))))

(assert (=> b!4523376 (= res!1883051 ((_ is Cons!50668) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))

(declare-fun b!4523377 () Bool)

(assert (=> b!4523377 (= e!2818284 (containsKey!1804 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(assert (= (and d!1394144 (not res!1883050)) b!4523376))

(assert (= (and b!4523376 res!1883051) b!4523377))

(declare-fun m!5274045 () Bool)

(assert (=> b!4523377 m!5274045))

(assert (=> b!4523313 d!1394144))

(declare-fun d!1394146 () Bool)

(assert (=> d!1394146 (containsKey!1804 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287)))

(declare-fun lt!1700230 () Unit!95506)

(declare-fun choose!29593 (List!50792 K!12060) Unit!95506)

(assert (=> d!1394146 (= lt!1700230 (choose!29593 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> d!1394146 (invariantList!1023 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394146 (= (lemmaInGetKeysListThenContainsKey!470 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) lt!1700230)))

(declare-fun bs!858182 () Bool)

(assert (= bs!858182 d!1394146))

(assert (=> bs!858182 m!5273933))

(declare-fun m!5274047 () Bool)

(assert (=> bs!858182 m!5274047))

(declare-fun m!5274049 () Bool)

(assert (=> bs!858182 m!5274049))

(assert (=> b!4523313 d!1394146))

(declare-fun d!1394148 () Bool)

(declare-fun res!1883056 () Bool)

(declare-fun e!2818289 () Bool)

(assert (=> d!1394148 (=> res!1883056 e!2818289)))

(assert (=> d!1394148 (= res!1883056 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (= (_1!28848 (h!56528 (toList!4344 lm!1477))) lt!1699786)))))

(assert (=> d!1394148 (= (containsKey!1802 (toList!4344 lm!1477) lt!1699786) e!2818289)))

(declare-fun b!4523382 () Bool)

(declare-fun e!2818290 () Bool)

(assert (=> b!4523382 (= e!2818289 e!2818290)))

(declare-fun res!1883057 () Bool)

(assert (=> b!4523382 (=> (not res!1883057) (not e!2818290))))

(assert (=> b!4523382 (= res!1883057 (and (or (not ((_ is Cons!50669) (toList!4344 lm!1477))) (bvsle (_1!28848 (h!56528 (toList!4344 lm!1477))) lt!1699786)) ((_ is Cons!50669) (toList!4344 lm!1477)) (bvslt (_1!28848 (h!56528 (toList!4344 lm!1477))) lt!1699786)))))

(declare-fun b!4523383 () Bool)

(assert (=> b!4523383 (= e!2818290 (containsKey!1802 (t!357755 (toList!4344 lm!1477)) lt!1699786))))

(assert (= (and d!1394148 (not res!1883056)) b!4523382))

(assert (= (and b!4523382 res!1883057) b!4523383))

(declare-fun m!5274051 () Bool)

(assert (=> b!4523383 m!5274051))

(assert (=> d!1394014 d!1394148))

(declare-fun d!1394150 () Bool)

(declare-fun res!1883058 () Bool)

(declare-fun e!2818291 () Bool)

(assert (=> d!1394150 (=> res!1883058 e!2818291)))

(assert (=> d!1394150 (= res!1883058 ((_ is Nil!50668) (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (=> d!1394150 (= (forall!10280 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) lambda!172949) e!2818291)))

(declare-fun b!4523384 () Bool)

(declare-fun e!2818292 () Bool)

(assert (=> b!4523384 (= e!2818291 e!2818292)))

(declare-fun res!1883059 () Bool)

(assert (=> b!4523384 (=> (not res!1883059) (not e!2818292))))

(assert (=> b!4523384 (= res!1883059 (dynLambda!21172 lambda!172949 (h!56527 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))))

(declare-fun b!4523385 () Bool)

(assert (=> b!4523385 (= e!2818292 (forall!10280 (t!357754 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))) lambda!172949))))

(assert (= (and d!1394150 (not res!1883058)) b!4523384))

(assert (= (and b!4523384 res!1883059) b!4523385))

(declare-fun b_lambda!155313 () Bool)

(assert (=> (not b_lambda!155313) (not b!4523384)))

(declare-fun m!5274053 () Bool)

(assert (=> b!4523384 m!5274053))

(declare-fun m!5274055 () Bool)

(assert (=> b!4523385 m!5274055))

(assert (=> b!4523108 d!1394150))

(declare-fun d!1394152 () Bool)

(declare-fun e!2818293 () Bool)

(assert (=> d!1394152 e!2818293))

(declare-fun res!1883060 () Bool)

(assert (=> d!1394152 (=> res!1883060 e!2818293)))

(declare-fun lt!1700234 () Bool)

(assert (=> d!1394152 (= res!1883060 (not lt!1700234))))

(declare-fun lt!1700233 () Bool)

(assert (=> d!1394152 (= lt!1700234 lt!1700233)))

(declare-fun lt!1700231 () Unit!95506)

(declare-fun e!2818294 () Unit!95506)

(assert (=> d!1394152 (= lt!1700231 e!2818294)))

(declare-fun c!772002 () Bool)

(assert (=> d!1394152 (= c!772002 lt!1700233)))

(assert (=> d!1394152 (= lt!1700233 (containsKey!1802 (toList!4344 lt!1700112) (_1!28848 lt!1699772)))))

(assert (=> d!1394152 (= (contains!13408 lt!1700112 (_1!28848 lt!1699772)) lt!1700234)))

(declare-fun b!4523386 () Bool)

(declare-fun lt!1700232 () Unit!95506)

(assert (=> b!4523386 (= e!2818294 lt!1700232)))

(assert (=> b!4523386 (= lt!1700232 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1700112) (_1!28848 lt!1699772)))))

(assert (=> b!4523386 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700112) (_1!28848 lt!1699772)))))

(declare-fun b!4523387 () Bool)

(declare-fun Unit!95570 () Unit!95506)

(assert (=> b!4523387 (= e!2818294 Unit!95570)))

(declare-fun b!4523388 () Bool)

(assert (=> b!4523388 (= e!2818293 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700112) (_1!28848 lt!1699772))))))

(assert (= (and d!1394152 c!772002) b!4523386))

(assert (= (and d!1394152 (not c!772002)) b!4523387))

(assert (= (and d!1394152 (not res!1883060)) b!4523388))

(declare-fun m!5274057 () Bool)

(assert (=> d!1394152 m!5274057))

(declare-fun m!5274059 () Bool)

(assert (=> b!4523386 m!5274059))

(assert (=> b!4523386 m!5273691))

(assert (=> b!4523386 m!5273691))

(declare-fun m!5274061 () Bool)

(assert (=> b!4523386 m!5274061))

(assert (=> b!4523388 m!5273691))

(assert (=> b!4523388 m!5273691))

(assert (=> b!4523388 m!5274061))

(assert (=> d!1394034 d!1394152))

(declare-fun b!4523390 () Bool)

(declare-fun e!2818295 () Option!11130)

(declare-fun e!2818296 () Option!11130)

(assert (=> b!4523390 (= e!2818295 e!2818296)))

(declare-fun c!772004 () Bool)

(assert (=> b!4523390 (= c!772004 (and ((_ is Cons!50669) lt!1700113) (not (= (_1!28848 (h!56528 lt!1700113)) (_1!28848 lt!1699772)))))))

(declare-fun d!1394154 () Bool)

(declare-fun c!772003 () Bool)

(assert (=> d!1394154 (= c!772003 (and ((_ is Cons!50669) lt!1700113) (= (_1!28848 (h!56528 lt!1700113)) (_1!28848 lt!1699772))))))

(assert (=> d!1394154 (= (getValueByKey!1104 lt!1700113 (_1!28848 lt!1699772)) e!2818295)))

(declare-fun b!4523391 () Bool)

(assert (=> b!4523391 (= e!2818296 (getValueByKey!1104 (t!357755 lt!1700113) (_1!28848 lt!1699772)))))

(declare-fun b!4523389 () Bool)

(assert (=> b!4523389 (= e!2818295 (Some!11129 (_2!28848 (h!56528 lt!1700113))))))

(declare-fun b!4523392 () Bool)

(assert (=> b!4523392 (= e!2818296 None!11129)))

(assert (= (and d!1394154 c!772003) b!4523389))

(assert (= (and d!1394154 (not c!772003)) b!4523390))

(assert (= (and b!4523390 c!772004) b!4523391))

(assert (= (and b!4523390 (not c!772004)) b!4523392))

(declare-fun m!5274063 () Bool)

(assert (=> b!4523391 m!5274063))

(assert (=> d!1394034 d!1394154))

(declare-fun d!1394156 () Bool)

(assert (=> d!1394156 (= (getValueByKey!1104 lt!1700113 (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772)))))

(declare-fun lt!1700237 () Unit!95506)

(declare-fun choose!29594 (List!50793 (_ BitVec 64) List!50792) Unit!95506)

(assert (=> d!1394156 (= lt!1700237 (choose!29594 lt!1700113 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(declare-fun e!2818299 () Bool)

(assert (=> d!1394156 e!2818299))

(declare-fun res!1883065 () Bool)

(assert (=> d!1394156 (=> (not res!1883065) (not e!2818299))))

(assert (=> d!1394156 (= res!1883065 (isStrictlySorted!436 lt!1700113))))

(assert (=> d!1394156 (= (lemmaContainsTupThenGetReturnValue!686 lt!1700113 (_1!28848 lt!1699772) (_2!28848 lt!1699772)) lt!1700237)))

(declare-fun b!4523397 () Bool)

(declare-fun res!1883066 () Bool)

(assert (=> b!4523397 (=> (not res!1883066) (not e!2818299))))

(assert (=> b!4523397 (= res!1883066 (containsKey!1802 lt!1700113 (_1!28848 lt!1699772)))))

(declare-fun b!4523398 () Bool)

(assert (=> b!4523398 (= e!2818299 (contains!13410 lt!1700113 (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772))))))

(assert (= (and d!1394156 res!1883065) b!4523397))

(assert (= (and b!4523397 res!1883066) b!4523398))

(assert (=> d!1394156 m!5273685))

(declare-fun m!5274065 () Bool)

(assert (=> d!1394156 m!5274065))

(declare-fun m!5274067 () Bool)

(assert (=> d!1394156 m!5274067))

(declare-fun m!5274069 () Bool)

(assert (=> b!4523397 m!5274069))

(declare-fun m!5274071 () Bool)

(assert (=> b!4523398 m!5274071))

(assert (=> d!1394034 d!1394156))

(declare-fun b!4523419 () Bool)

(declare-fun e!2818311 () Bool)

(declare-fun lt!1700240 () List!50793)

(assert (=> b!4523419 (= e!2818311 (contains!13410 lt!1700240 (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772))))))

(declare-fun b!4523420 () Bool)

(declare-fun e!2818313 () List!50793)

(declare-fun call!315177 () List!50793)

(assert (=> b!4523420 (= e!2818313 call!315177)))

(declare-fun b!4523421 () Bool)

(declare-fun e!2818314 () List!50793)

(assert (=> b!4523421 (= e!2818313 e!2818314)))

(declare-fun c!772016 () Bool)

(assert (=> b!4523421 (= c!772016 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (= (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699772))))))

(declare-fun bm!315171 () Bool)

(declare-fun call!315176 () List!50793)

(assert (=> bm!315171 (= call!315176 call!315177)))

(declare-fun d!1394158 () Bool)

(assert (=> d!1394158 e!2818311))

(declare-fun res!1883072 () Bool)

(assert (=> d!1394158 (=> (not res!1883072) (not e!2818311))))

(assert (=> d!1394158 (= res!1883072 (isStrictlySorted!436 lt!1700240))))

(assert (=> d!1394158 (= lt!1700240 e!2818313)))

(declare-fun c!772014 () Bool)

(assert (=> d!1394158 (= c!772014 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (bvslt (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699772))))))

(assert (=> d!1394158 (isStrictlySorted!436 (toList!4344 lt!1699792))))

(assert (=> d!1394158 (= (insertStrictlySorted!414 (toList!4344 lt!1699792) (_1!28848 lt!1699772) (_2!28848 lt!1699772)) lt!1700240)))

(declare-fun b!4523422 () Bool)

(declare-fun res!1883071 () Bool)

(assert (=> b!4523422 (=> (not res!1883071) (not e!2818311))))

(assert (=> b!4523422 (= res!1883071 (containsKey!1802 lt!1700240 (_1!28848 lt!1699772)))))

(declare-fun b!4523423 () Bool)

(declare-fun e!2818312 () List!50793)

(declare-fun call!315178 () List!50793)

(assert (=> b!4523423 (= e!2818312 call!315178)))

(declare-fun b!4523424 () Bool)

(declare-fun c!772013 () Bool)

(assert (=> b!4523424 (= c!772013 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (bvsgt (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699772))))))

(assert (=> b!4523424 (= e!2818314 e!2818312)))

(declare-fun b!4523425 () Bool)

(assert (=> b!4523425 (= e!2818312 call!315178)))

(declare-fun b!4523426 () Bool)

(assert (=> b!4523426 (= e!2818314 call!315176)))

(declare-fun bm!315172 () Bool)

(declare-fun e!2818310 () List!50793)

(declare-fun $colon$colon!939 (List!50793 tuple2!51108) List!50793)

(assert (=> bm!315172 (= call!315177 ($colon$colon!939 e!2818310 (ite c!772014 (h!56528 (toList!4344 lt!1699792)) (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))))

(declare-fun c!772015 () Bool)

(assert (=> bm!315172 (= c!772015 c!772014)))

(declare-fun b!4523427 () Bool)

(assert (=> b!4523427 (= e!2818310 (ite c!772016 (t!357755 (toList!4344 lt!1699792)) (ite c!772013 (Cons!50669 (h!56528 (toList!4344 lt!1699792)) (t!357755 (toList!4344 lt!1699792))) Nil!50669)))))

(declare-fun b!4523428 () Bool)

(assert (=> b!4523428 (= e!2818310 (insertStrictlySorted!414 (t!357755 (toList!4344 lt!1699792)) (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(declare-fun bm!315173 () Bool)

(assert (=> bm!315173 (= call!315178 call!315176)))

(assert (= (and d!1394158 c!772014) b!4523420))

(assert (= (and d!1394158 (not c!772014)) b!4523421))

(assert (= (and b!4523421 c!772016) b!4523426))

(assert (= (and b!4523421 (not c!772016)) b!4523424))

(assert (= (and b!4523424 c!772013) b!4523425))

(assert (= (and b!4523424 (not c!772013)) b!4523423))

(assert (= (or b!4523425 b!4523423) bm!315173))

(assert (= (or b!4523426 bm!315173) bm!315171))

(assert (= (or b!4523420 bm!315171) bm!315172))

(assert (= (and bm!315172 c!772015) b!4523428))

(assert (= (and bm!315172 (not c!772015)) b!4523427))

(assert (= (and d!1394158 res!1883072) b!4523422))

(assert (= (and b!4523422 res!1883071) b!4523419))

(declare-fun m!5274073 () Bool)

(assert (=> b!4523422 m!5274073))

(declare-fun m!5274075 () Bool)

(assert (=> b!4523428 m!5274075))

(declare-fun m!5274077 () Bool)

(assert (=> b!4523419 m!5274077))

(declare-fun m!5274079 () Bool)

(assert (=> bm!315172 m!5274079))

(declare-fun m!5274081 () Bool)

(assert (=> d!1394158 m!5274081))

(assert (=> d!1394158 m!5274031))

(assert (=> d!1394034 d!1394158))

(declare-fun d!1394160 () Bool)

(declare-fun res!1883073 () Bool)

(declare-fun e!2818315 () Bool)

(assert (=> d!1394160 (=> res!1883073 e!2818315)))

(assert (=> d!1394160 (= res!1883073 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394160 (= (forall!10281 (toList!4344 lm!1477) lambda!173062) e!2818315)))

(declare-fun b!4523429 () Bool)

(declare-fun e!2818316 () Bool)

(assert (=> b!4523429 (= e!2818315 e!2818316)))

(declare-fun res!1883074 () Bool)

(assert (=> b!4523429 (=> (not res!1883074) (not e!2818316))))

(assert (=> b!4523429 (= res!1883074 (dynLambda!21171 lambda!173062 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4523430 () Bool)

(assert (=> b!4523430 (= e!2818316 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173062))))

(assert (= (and d!1394160 (not res!1883073)) b!4523429))

(assert (= (and b!4523429 res!1883074) b!4523430))

(declare-fun b_lambda!155315 () Bool)

(assert (=> (not b_lambda!155315) (not b!4523429)))

(declare-fun m!5274083 () Bool)

(assert (=> b!4523429 m!5274083))

(declare-fun m!5274085 () Bool)

(assert (=> b!4523430 m!5274085))

(assert (=> d!1394070 d!1394160))

(declare-fun d!1394162 () Bool)

(declare-fun lt!1700243 () Bool)

(assert (=> d!1394162 (= lt!1700243 (select (content!8376 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(declare-fun e!2818321 () Bool)

(assert (=> d!1394162 (= lt!1700243 e!2818321)))

(declare-fun res!1883079 () Bool)

(assert (=> d!1394162 (=> (not res!1883079) (not e!2818321))))

(assert (=> d!1394162 (= res!1883079 ((_ is Cons!50671) (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> d!1394162 (= (contains!13413 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) lt!1700243)))

(declare-fun b!4523435 () Bool)

(declare-fun e!2818322 () Bool)

(assert (=> b!4523435 (= e!2818321 e!2818322)))

(declare-fun res!1883080 () Bool)

(assert (=> b!4523435 (=> res!1883080 e!2818322)))

(assert (=> b!4523435 (= res!1883080 (= (h!56532 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(declare-fun b!4523436 () Bool)

(assert (=> b!4523436 (= e!2818322 (contains!13413 (t!357757 (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(assert (= (and d!1394162 res!1883079) b!4523435))

(assert (= (and b!4523435 (not res!1883080)) b!4523436))

(assert (=> d!1394162 m!5273925))

(declare-fun m!5274087 () Bool)

(assert (=> d!1394162 m!5274087))

(declare-fun m!5274089 () Bool)

(assert (=> d!1394162 m!5274089))

(declare-fun m!5274091 () Bool)

(assert (=> b!4523436 m!5274091))

(assert (=> b!4523309 d!1394162))

(declare-fun b!4523444 () Bool)

(assert (=> b!4523444 true))

(declare-fun d!1394164 () Bool)

(declare-fun e!2818325 () Bool)

(assert (=> d!1394164 e!2818325))

(declare-fun res!1883088 () Bool)

(assert (=> d!1394164 (=> (not res!1883088) (not e!2818325))))

(declare-fun lt!1700246 () List!50795)

(declare-fun noDuplicate!750 (List!50795) Bool)

(assert (=> d!1394164 (= res!1883088 (noDuplicate!750 lt!1700246))))

(assert (=> d!1394164 (= lt!1700246 (getKeysList!471 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> d!1394164 (= (keys!17608 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lt!1700246)))

(declare-fun b!4523443 () Bool)

(declare-fun res!1883087 () Bool)

(assert (=> b!4523443 (=> (not res!1883087) (not e!2818325))))

(declare-fun length!356 (List!50795) Int)

(declare-fun length!357 (List!50792) Int)

(assert (=> b!4523443 (= res!1883087 (= (length!356 lt!1700246) (length!357 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))))

(declare-fun res!1883089 () Bool)

(assert (=> b!4523444 (=> (not res!1883089) (not e!2818325))))

(declare-fun lambda!173084 () Int)

(declare-fun forall!10283 (List!50795 Int) Bool)

(assert (=> b!4523444 (= res!1883089 (forall!10283 lt!1700246 lambda!173084))))

(declare-fun lambda!173085 () Int)

(declare-fun b!4523445 () Bool)

(declare-fun map!11145 (List!50792 Int) List!50795)

(assert (=> b!4523445 (= e!2818325 (= (content!8376 lt!1700246) (content!8376 (map!11145 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173085))))))

(assert (= (and d!1394164 res!1883088) b!4523443))

(assert (= (and b!4523443 res!1883087) b!4523444))

(assert (= (and b!4523444 res!1883089) b!4523445))

(declare-fun m!5274093 () Bool)

(assert (=> d!1394164 m!5274093))

(assert (=> d!1394164 m!5273931))

(declare-fun m!5274095 () Bool)

(assert (=> b!4523443 m!5274095))

(declare-fun m!5274097 () Bool)

(assert (=> b!4523443 m!5274097))

(declare-fun m!5274099 () Bool)

(assert (=> b!4523444 m!5274099))

(declare-fun m!5274101 () Bool)

(assert (=> b!4523445 m!5274101))

(declare-fun m!5274103 () Bool)

(assert (=> b!4523445 m!5274103))

(assert (=> b!4523445 m!5274103))

(declare-fun m!5274105 () Bool)

(assert (=> b!4523445 m!5274105))

(assert (=> b!4523309 d!1394164))

(declare-fun d!1394168 () Bool)

(declare-fun res!1883090 () Bool)

(declare-fun e!2818326 () Bool)

(assert (=> d!1394168 (=> res!1883090 e!2818326)))

(assert (=> d!1394168 (= res!1883090 (and ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))) (= (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))) key!3287)))))

(assert (=> d!1394168 (= (containsKey!1800 (t!357754 (_2!28848 lt!1699794)) key!3287) e!2818326)))

(declare-fun b!4523448 () Bool)

(declare-fun e!2818327 () Bool)

(assert (=> b!4523448 (= e!2818326 e!2818327)))

(declare-fun res!1883091 () Bool)

(assert (=> b!4523448 (=> (not res!1883091) (not e!2818327))))

(assert (=> b!4523448 (= res!1883091 ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))))))

(declare-fun b!4523449 () Bool)

(assert (=> b!4523449 (= e!2818327 (containsKey!1800 (t!357754 (t!357754 (_2!28848 lt!1699794))) key!3287))))

(assert (= (and d!1394168 (not res!1883090)) b!4523448))

(assert (= (and b!4523448 res!1883091) b!4523449))

(declare-fun m!5274107 () Bool)

(assert (=> b!4523449 m!5274107))

(assert (=> b!4523334 d!1394168))

(declare-fun d!1394170 () Bool)

(declare-fun lt!1700247 () Bool)

(assert (=> d!1394170 (= lt!1700247 (select (content!8376 (keys!17608 lt!1699778)) key!3287))))

(declare-fun e!2818328 () Bool)

(assert (=> d!1394170 (= lt!1700247 e!2818328)))

(declare-fun res!1883092 () Bool)

(assert (=> d!1394170 (=> (not res!1883092) (not e!2818328))))

(assert (=> d!1394170 (= res!1883092 ((_ is Cons!50671) (keys!17608 lt!1699778)))))

(assert (=> d!1394170 (= (contains!13413 (keys!17608 lt!1699778) key!3287) lt!1700247)))

(declare-fun b!4523450 () Bool)

(declare-fun e!2818329 () Bool)

(assert (=> b!4523450 (= e!2818328 e!2818329)))

(declare-fun res!1883093 () Bool)

(assert (=> b!4523450 (=> res!1883093 e!2818329)))

(assert (=> b!4523450 (= res!1883093 (= (h!56532 (keys!17608 lt!1699778)) key!3287))))

(declare-fun b!4523451 () Bool)

(assert (=> b!4523451 (= e!2818329 (contains!13413 (t!357757 (keys!17608 lt!1699778)) key!3287))))

(assert (= (and d!1394170 res!1883092) b!4523450))

(assert (= (and b!4523450 (not res!1883093)) b!4523451))

(assert (=> d!1394170 m!5273899))

(declare-fun m!5274109 () Bool)

(assert (=> d!1394170 m!5274109))

(declare-fun m!5274111 () Bool)

(assert (=> d!1394170 m!5274111))

(declare-fun m!5274113 () Bool)

(assert (=> b!4523451 m!5274113))

(assert (=> b!4523298 d!1394170))

(declare-fun bs!858183 () Bool)

(declare-fun b!4523453 () Bool)

(assert (= bs!858183 (and b!4523453 b!4523444)))

(declare-fun lambda!173086 () Int)

(assert (=> bs!858183 (= (= (toList!4343 lt!1699778) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173086 lambda!173084))))

(assert (=> b!4523453 true))

(declare-fun bs!858184 () Bool)

(declare-fun b!4523454 () Bool)

(assert (= bs!858184 (and b!4523454 b!4523445)))

(declare-fun lambda!173087 () Int)

(assert (=> bs!858184 (= lambda!173087 lambda!173085)))

(declare-fun d!1394172 () Bool)

(declare-fun e!2818330 () Bool)

(assert (=> d!1394172 e!2818330))

(declare-fun res!1883095 () Bool)

(assert (=> d!1394172 (=> (not res!1883095) (not e!2818330))))

(declare-fun lt!1700248 () List!50795)

(assert (=> d!1394172 (= res!1883095 (noDuplicate!750 lt!1700248))))

(assert (=> d!1394172 (= lt!1700248 (getKeysList!471 (toList!4343 lt!1699778)))))

(assert (=> d!1394172 (= (keys!17608 lt!1699778) lt!1700248)))

(declare-fun b!4523452 () Bool)

(declare-fun res!1883094 () Bool)

(assert (=> b!4523452 (=> (not res!1883094) (not e!2818330))))

(assert (=> b!4523452 (= res!1883094 (= (length!356 lt!1700248) (length!357 (toList!4343 lt!1699778))))))

(declare-fun res!1883096 () Bool)

(assert (=> b!4523453 (=> (not res!1883096) (not e!2818330))))

(assert (=> b!4523453 (= res!1883096 (forall!10283 lt!1700248 lambda!173086))))

(assert (=> b!4523454 (= e!2818330 (= (content!8376 lt!1700248) (content!8376 (map!11145 (toList!4343 lt!1699778) lambda!173087))))))

(assert (= (and d!1394172 res!1883095) b!4523452))

(assert (= (and b!4523452 res!1883094) b!4523453))

(assert (= (and b!4523453 res!1883096) b!4523454))

(declare-fun m!5274115 () Bool)

(assert (=> d!1394172 m!5274115))

(assert (=> d!1394172 m!5273905))

(declare-fun m!5274117 () Bool)

(assert (=> b!4523452 m!5274117))

(declare-fun m!5274119 () Bool)

(assert (=> b!4523452 m!5274119))

(declare-fun m!5274121 () Bool)

(assert (=> b!4523453 m!5274121))

(declare-fun m!5274123 () Bool)

(assert (=> b!4523454 m!5274123))

(declare-fun m!5274125 () Bool)

(assert (=> b!4523454 m!5274125))

(assert (=> b!4523454 m!5274125))

(declare-fun m!5274127 () Bool)

(assert (=> b!4523454 m!5274127))

(assert (=> b!4523298 d!1394172))

(declare-fun d!1394174 () Bool)

(declare-fun noDuplicatedKeys!264 (List!50792) Bool)

(assert (=> d!1394174 (= (invariantList!1023 (toList!4343 lt!1700201)) (noDuplicatedKeys!264 (toList!4343 lt!1700201)))))

(declare-fun bs!858185 () Bool)

(assert (= bs!858185 d!1394174))

(declare-fun m!5274129 () Bool)

(assert (=> bs!858185 m!5274129))

(assert (=> d!1394104 d!1394174))

(declare-fun d!1394176 () Bool)

(declare-fun res!1883103 () Bool)

(declare-fun e!2818337 () Bool)

(assert (=> d!1394176 (=> res!1883103 e!2818337)))

(assert (=> d!1394176 (= res!1883103 ((_ is Nil!50669) (t!357755 (toList!4344 lm!1477))))))

(assert (=> d!1394176 (= (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173072) e!2818337)))

(declare-fun b!4523461 () Bool)

(declare-fun e!2818338 () Bool)

(assert (=> b!4523461 (= e!2818337 e!2818338)))

(declare-fun res!1883104 () Bool)

(assert (=> b!4523461 (=> (not res!1883104) (not e!2818338))))

(assert (=> b!4523461 (= res!1883104 (dynLambda!21171 lambda!173072 (h!56528 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun b!4523462 () Bool)

(assert (=> b!4523462 (= e!2818338 (forall!10281 (t!357755 (t!357755 (toList!4344 lm!1477))) lambda!173072))))

(assert (= (and d!1394176 (not res!1883103)) b!4523461))

(assert (= (and b!4523461 res!1883104) b!4523462))

(declare-fun b_lambda!155317 () Bool)

(assert (=> (not b_lambda!155317) (not b!4523461)))

(declare-fun m!5274137 () Bool)

(assert (=> b!4523461 m!5274137))

(declare-fun m!5274139 () Bool)

(assert (=> b!4523462 m!5274139))

(assert (=> d!1394104 d!1394176))

(declare-fun d!1394180 () Bool)

(assert (=> d!1394180 (= (get!16604 lt!1700033) (v!44738 lt!1700033))))

(assert (=> b!4523139 d!1394180))

(declare-fun d!1394182 () Bool)

(assert (=> d!1394182 (= (get!16606 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344)) (v!44747 (getValueByKey!1104 (toList!4344 lt!1699792) hash!344)))))

(assert (=> d!1393974 d!1394182))

(assert (=> d!1393974 d!1394138))

(declare-fun d!1394184 () Bool)

(declare-fun c!772019 () Bool)

(assert (=> d!1394184 (= c!772019 ((_ is Nil!50668) (toList!4343 lt!1699769)))))

(declare-fun e!2818341 () (InoxSet tuple2!51106))

(assert (=> d!1394184 (= (content!8374 (toList!4343 lt!1699769)) e!2818341)))

(declare-fun b!4523467 () Bool)

(assert (=> b!4523467 (= e!2818341 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523468 () Bool)

(assert (=> b!4523468 (= e!2818341 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699769)) true) (content!8374 (t!357754 (toList!4343 lt!1699769)))))))

(assert (= (and d!1394184 c!772019) b!4523467))

(assert (= (and d!1394184 (not c!772019)) b!4523468))

(declare-fun m!5274141 () Bool)

(assert (=> b!4523468 m!5274141))

(declare-fun m!5274143 () Bool)

(assert (=> b!4523468 m!5274143))

(assert (=> d!1394022 d!1394184))

(declare-fun d!1394186 () Bool)

(declare-fun c!772020 () Bool)

(assert (=> d!1394186 (= c!772020 ((_ is Nil!50668) (toList!4343 lt!1699778)))))

(declare-fun e!2818342 () (InoxSet tuple2!51106))

(assert (=> d!1394186 (= (content!8374 (toList!4343 lt!1699778)) e!2818342)))

(declare-fun b!4523469 () Bool)

(assert (=> b!4523469 (= e!2818342 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523470 () Bool)

(assert (=> b!4523470 (= e!2818342 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699778)) true) (content!8374 (t!357754 (toList!4343 lt!1699778)))))))

(assert (= (and d!1394186 c!772020) b!4523469))

(assert (= (and d!1394186 (not c!772020)) b!4523470))

(declare-fun m!5274145 () Bool)

(assert (=> b!4523470 m!5274145))

(declare-fun m!5274147 () Bool)

(assert (=> b!4523470 m!5274147))

(assert (=> d!1394022 d!1394186))

(assert (=> b!4523303 d!1394172))

(declare-fun d!1394188 () Bool)

(assert (=> d!1394188 (= (head!9427 (toList!4344 lm!1477)) (h!56528 (toList!4344 lm!1477)))))

(assert (=> d!1394062 d!1394188))

(declare-fun d!1394190 () Bool)

(declare-fun res!1883105 () Bool)

(declare-fun e!2818343 () Bool)

(assert (=> d!1394190 (=> res!1883105 e!2818343)))

(assert (=> d!1394190 (= res!1883105 ((_ is Nil!50668) (toList!4343 lt!1699770)))))

(assert (=> d!1394190 (= (forall!10280 (toList!4343 lt!1699770) lambda!172997) e!2818343)))

(declare-fun b!4523471 () Bool)

(declare-fun e!2818344 () Bool)

(assert (=> b!4523471 (= e!2818343 e!2818344)))

(declare-fun res!1883106 () Bool)

(assert (=> b!4523471 (=> (not res!1883106) (not e!2818344))))

(assert (=> b!4523471 (= res!1883106 (dynLambda!21172 lambda!172997 (h!56527 (toList!4343 lt!1699770))))))

(declare-fun b!4523472 () Bool)

(assert (=> b!4523472 (= e!2818344 (forall!10280 (t!357754 (toList!4343 lt!1699770)) lambda!172997))))

(assert (= (and d!1394190 (not res!1883105)) b!4523471))

(assert (= (and b!4523471 res!1883106) b!4523472))

(declare-fun b_lambda!155319 () Bool)

(assert (=> (not b_lambda!155319) (not b!4523471)))

(declare-fun m!5274149 () Bool)

(assert (=> b!4523471 m!5274149))

(declare-fun m!5274151 () Bool)

(assert (=> b!4523472 m!5274151))

(assert (=> b!4523059 d!1394190))

(declare-fun d!1394192 () Bool)

(declare-fun e!2818349 () Bool)

(assert (=> d!1394192 e!2818349))

(declare-fun res!1883108 () Bool)

(assert (=> d!1394192 (=> res!1883108 e!2818349)))

(declare-fun e!2818350 () Bool)

(assert (=> d!1394192 (= res!1883108 e!2818350)))

(declare-fun res!1883107 () Bool)

(assert (=> d!1394192 (=> (not res!1883107) (not e!2818350))))

(declare-fun lt!1700252 () Bool)

(assert (=> d!1394192 (= res!1883107 (not lt!1700252))))

(declare-fun lt!1700257 () Bool)

(assert (=> d!1394192 (= lt!1700252 lt!1700257)))

(declare-fun lt!1700254 () Unit!95506)

(declare-fun e!2818348 () Unit!95506)

(assert (=> d!1394192 (= lt!1700254 e!2818348)))

(declare-fun c!772021 () Bool)

(assert (=> d!1394192 (= c!772021 lt!1700257)))

(assert (=> d!1394192 (= lt!1700257 (containsKey!1804 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(assert (=> d!1394192 (= (contains!13409 (extractMap!1224 (toList!4344 lt!1699792)) key!3287) lt!1700252)))

(declare-fun b!4523473 () Bool)

(declare-fun e!2818345 () List!50795)

(assert (=> b!4523473 (= e!2818345 (getKeysList!471 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792)))))))

(declare-fun b!4523474 () Bool)

(declare-fun e!2818346 () Unit!95506)

(assert (=> b!4523474 (= e!2818348 e!2818346)))

(declare-fun c!772023 () Bool)

(declare-fun call!315179 () Bool)

(assert (=> b!4523474 (= c!772023 call!315179)))

(declare-fun b!4523475 () Bool)

(declare-fun e!2818347 () Bool)

(assert (=> b!4523475 (= e!2818347 (contains!13413 (keys!17608 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(declare-fun b!4523476 () Bool)

(declare-fun Unit!95582 () Unit!95506)

(assert (=> b!4523476 (= e!2818346 Unit!95582)))

(declare-fun b!4523477 () Bool)

(assert (=> b!4523477 (= e!2818349 e!2818347)))

(declare-fun res!1883109 () Bool)

(assert (=> b!4523477 (=> (not res!1883109) (not e!2818347))))

(assert (=> b!4523477 (= res!1883109 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287)))))

(declare-fun b!4523478 () Bool)

(assert (=> b!4523478 (= e!2818350 (not (contains!13413 (keys!17608 (extractMap!1224 (toList!4344 lt!1699792))) key!3287)))))

(declare-fun b!4523479 () Bool)

(assert (=> b!4523479 false))

(declare-fun lt!1700258 () Unit!95506)

(declare-fun lt!1700256 () Unit!95506)

(assert (=> b!4523479 (= lt!1700258 lt!1700256)))

(assert (=> b!4523479 (containsKey!1804 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287)))

(assert (=> b!4523479 (= lt!1700256 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(declare-fun Unit!95583 () Unit!95506)

(assert (=> b!4523479 (= e!2818346 Unit!95583)))

(declare-fun b!4523480 () Bool)

(assert (=> b!4523480 (= e!2818345 (keys!17608 (extractMap!1224 (toList!4344 lt!1699792))))))

(declare-fun b!4523481 () Bool)

(declare-fun lt!1700255 () Unit!95506)

(assert (=> b!4523481 (= e!2818348 lt!1700255)))

(declare-fun lt!1700253 () Unit!95506)

(assert (=> b!4523481 (= lt!1700253 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(assert (=> b!4523481 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(declare-fun lt!1700259 () Unit!95506)

(assert (=> b!4523481 (= lt!1700259 lt!1700253)))

(assert (=> b!4523481 (= lt!1700255 (lemmaInListThenGetKeysListContains!467 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287))))

(assert (=> b!4523481 call!315179))

(declare-fun bm!315174 () Bool)

(assert (=> bm!315174 (= call!315179 (contains!13413 e!2818345 key!3287))))

(declare-fun c!772022 () Bool)

(assert (=> bm!315174 (= c!772022 c!772021)))

(assert (= (and d!1394192 c!772021) b!4523481))

(assert (= (and d!1394192 (not c!772021)) b!4523474))

(assert (= (and b!4523474 c!772023) b!4523479))

(assert (= (and b!4523474 (not c!772023)) b!4523476))

(assert (= (or b!4523481 b!4523474) bm!315174))

(assert (= (and bm!315174 c!772022) b!4523473))

(assert (= (and bm!315174 (not c!772022)) b!4523480))

(assert (= (and d!1394192 res!1883107) b!4523478))

(assert (= (and d!1394192 (not res!1883108)) b!4523477))

(assert (= (and b!4523477 res!1883109) b!4523475))

(declare-fun m!5274153 () Bool)

(assert (=> bm!315174 m!5274153))

(assert (=> b!4523480 m!5273205))

(declare-fun m!5274155 () Bool)

(assert (=> b!4523480 m!5274155))

(declare-fun m!5274157 () Bool)

(assert (=> b!4523477 m!5274157))

(assert (=> b!4523477 m!5274157))

(declare-fun m!5274159 () Bool)

(assert (=> b!4523477 m!5274159))

(declare-fun m!5274161 () Bool)

(assert (=> b!4523473 m!5274161))

(declare-fun m!5274163 () Bool)

(assert (=> b!4523479 m!5274163))

(declare-fun m!5274165 () Bool)

(assert (=> b!4523479 m!5274165))

(assert (=> b!4523478 m!5273205))

(assert (=> b!4523478 m!5274155))

(assert (=> b!4523478 m!5274155))

(declare-fun m!5274167 () Bool)

(assert (=> b!4523478 m!5274167))

(declare-fun m!5274169 () Bool)

(assert (=> b!4523481 m!5274169))

(assert (=> b!4523481 m!5274157))

(assert (=> b!4523481 m!5274157))

(assert (=> b!4523481 m!5274159))

(declare-fun m!5274171 () Bool)

(assert (=> b!4523481 m!5274171))

(assert (=> b!4523475 m!5273205))

(assert (=> b!4523475 m!5274155))

(assert (=> b!4523475 m!5274155))

(assert (=> b!4523475 m!5274167))

(assert (=> d!1394192 m!5274163))

(assert (=> d!1394106 d!1394192))

(assert (=> d!1394106 d!1394110))

(declare-fun d!1394194 () Bool)

(assert (=> d!1394194 (contains!13409 (extractMap!1224 (toList!4344 lt!1699792)) key!3287)))

(assert (=> d!1394194 true))

(declare-fun _$34!685 () Unit!95506)

(assert (=> d!1394194 (= (choose!29589 lt!1699792 key!3287 hashF!1107) _$34!685)))

(declare-fun bs!858213 () Bool)

(assert (= bs!858213 d!1394194))

(assert (=> bs!858213 m!5273205))

(assert (=> bs!858213 m!5273205))

(assert (=> bs!858213 m!5273951))

(assert (=> d!1394106 d!1394194))

(declare-fun d!1394198 () Bool)

(declare-fun res!1883122 () Bool)

(declare-fun e!2818357 () Bool)

(assert (=> d!1394198 (=> res!1883122 e!2818357)))

(assert (=> d!1394198 (= res!1883122 ((_ is Nil!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1394198 (= (forall!10281 (toList!4344 lt!1699792) lambda!173075) e!2818357)))

(declare-fun b!4523498 () Bool)

(declare-fun e!2818358 () Bool)

(assert (=> b!4523498 (= e!2818357 e!2818358)))

(declare-fun res!1883123 () Bool)

(assert (=> b!4523498 (=> (not res!1883123) (not e!2818358))))

(assert (=> b!4523498 (= res!1883123 (dynLambda!21171 lambda!173075 (h!56528 (toList!4344 lt!1699792))))))

(declare-fun b!4523499 () Bool)

(assert (=> b!4523499 (= e!2818358 (forall!10281 (t!357755 (toList!4344 lt!1699792)) lambda!173075))))

(assert (= (and d!1394198 (not res!1883122)) b!4523498))

(assert (= (and b!4523498 res!1883123) b!4523499))

(declare-fun b_lambda!155321 () Bool)

(assert (=> (not b_lambda!155321) (not b!4523498)))

(declare-fun m!5274187 () Bool)

(assert (=> b!4523498 m!5274187))

(declare-fun m!5274189 () Bool)

(assert (=> b!4523499 m!5274189))

(assert (=> d!1394106 d!1394198))

(declare-fun d!1394200 () Bool)

(declare-fun res!1883124 () Bool)

(declare-fun e!2818359 () Bool)

(assert (=> d!1394200 (=> res!1883124 e!2818359)))

(assert (=> d!1394200 (= res!1883124 (and ((_ is Cons!50668) (toList!4343 lt!1699768)) (= (_1!28847 (h!56527 (toList!4343 lt!1699768))) key!3287)))))

(assert (=> d!1394200 (= (containsKey!1804 (toList!4343 lt!1699768) key!3287) e!2818359)))

(declare-fun b!4523500 () Bool)

(declare-fun e!2818360 () Bool)

(assert (=> b!4523500 (= e!2818359 e!2818360)))

(declare-fun res!1883125 () Bool)

(assert (=> b!4523500 (=> (not res!1883125) (not e!2818360))))

(assert (=> b!4523500 (= res!1883125 ((_ is Cons!50668) (toList!4343 lt!1699768)))))

(declare-fun b!4523501 () Bool)

(assert (=> b!4523501 (= e!2818360 (containsKey!1804 (t!357754 (toList!4343 lt!1699768)) key!3287))))

(assert (= (and d!1394200 (not res!1883124)) b!4523500))

(assert (= (and b!4523500 res!1883125) b!4523501))

(declare-fun m!5274191 () Bool)

(assert (=> b!4523501 m!5274191))

(assert (=> b!4523324 d!1394200))

(declare-fun d!1394202 () Bool)

(assert (=> d!1394202 (containsKey!1804 (toList!4343 lt!1699768) key!3287)))

(declare-fun lt!1700284 () Unit!95506)

(assert (=> d!1394202 (= lt!1700284 (choose!29593 (toList!4343 lt!1699768) key!3287))))

(assert (=> d!1394202 (invariantList!1023 (toList!4343 lt!1699768))))

(assert (=> d!1394202 (= (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699768) key!3287) lt!1700284)))

(declare-fun bs!858214 () Bool)

(assert (= bs!858214 d!1394202))

(assert (=> bs!858214 m!5273965))

(declare-fun m!5274193 () Bool)

(assert (=> bs!858214 m!5274193))

(declare-fun m!5274195 () Bool)

(assert (=> bs!858214 m!5274195))

(assert (=> b!4523324 d!1394202))

(declare-fun bs!858215 () Bool)

(declare-fun b!4523502 () Bool)

(assert (= bs!858215 (and b!4523502 b!4523254)))

(declare-fun lambda!173098 () Int)

(assert (=> bs!858215 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173098 lambda!173063))))

(declare-fun bs!858216 () Bool)

(assert (= bs!858216 (and b!4523502 d!1394016)))

(assert (=> bs!858216 (not (= lambda!173098 lambda!173040))))

(declare-fun bs!858217 () Bool)

(assert (= bs!858217 (and b!4523502 b!4523057)))

(assert (=> bs!858217 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173098 lambda!172995))))

(declare-fun bs!858218 () Bool)

(assert (= bs!858218 (and b!4523502 d!1393892)))

(assert (=> bs!858218 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699952) (= lambda!173098 lambda!172998))))

(declare-fun bs!858219 () Bool)

(assert (= bs!858219 (and b!4523502 b!4523257)))

(assert (=> bs!858219 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173098 lambda!173067))))

(declare-fun bs!858220 () Bool)

(assert (= bs!858220 (and b!4523502 b!4522898)))

(assert (=> bs!858220 (not (= lambda!173098 lambda!172949))))

(assert (=> bs!858219 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173098 lambda!173066))))

(declare-fun bs!858221 () Bool)

(assert (= bs!858221 (and b!4523502 d!1394074)))

(assert (=> bs!858221 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700139) (= lambda!173098 lambda!173069))))

(declare-fun bs!858222 () Bool)

(assert (= bs!858222 (and b!4523502 b!4523060)))

(assert (=> bs!858222 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173098 lambda!172996))))

(assert (=> bs!858222 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173098 lambda!172997))))

(assert (=> b!4523502 true))

(declare-fun bs!858223 () Bool)

(declare-fun b!4523505 () Bool)

(assert (= bs!858223 (and b!4523505 b!4523254)))

(declare-fun lambda!173099 () Int)

(assert (=> bs!858223 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173099 lambda!173063))))

(declare-fun bs!858224 () Bool)

(assert (= bs!858224 (and b!4523505 d!1394016)))

(assert (=> bs!858224 (not (= lambda!173099 lambda!173040))))

(declare-fun bs!858225 () Bool)

(assert (= bs!858225 (and b!4523505 b!4523057)))

(assert (=> bs!858225 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173099 lambda!172995))))

(declare-fun bs!858226 () Bool)

(assert (= bs!858226 (and b!4523505 d!1393892)))

(assert (=> bs!858226 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699952) (= lambda!173099 lambda!172998))))

(declare-fun bs!858227 () Bool)

(assert (= bs!858227 (and b!4523505 b!4523257)))

(assert (=> bs!858227 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173099 lambda!173067))))

(declare-fun bs!858228 () Bool)

(assert (= bs!858228 (and b!4523505 b!4522898)))

(assert (=> bs!858228 (not (= lambda!173099 lambda!172949))))

(declare-fun bs!858229 () Bool)

(assert (= bs!858229 (and b!4523505 b!4523502)))

(assert (=> bs!858229 (= lambda!173099 lambda!173098)))

(assert (=> bs!858227 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173099 lambda!173066))))

(declare-fun bs!858230 () Bool)

(assert (= bs!858230 (and b!4523505 d!1394074)))

(assert (=> bs!858230 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700139) (= lambda!173099 lambda!173069))))

(declare-fun bs!858231 () Bool)

(assert (= bs!858231 (and b!4523505 b!4523060)))

(assert (=> bs!858231 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173099 lambda!172996))))

(assert (=> bs!858231 (= (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173099 lambda!172997))))

(assert (=> b!4523505 true))

(declare-fun lambda!173102 () Int)

(declare-fun lt!1700295 () ListMap!3605)

(assert (=> bs!858223 (= (= lt!1700295 lt!1699771) (= lambda!173102 lambda!173063))))

(assert (=> bs!858224 (not (= lambda!173102 lambda!173040))))

(assert (=> bs!858225 (= (= lt!1700295 lt!1699770) (= lambda!173102 lambda!172995))))

(assert (=> b!4523505 (= (= lt!1700295 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173102 lambda!173099))))

(assert (=> bs!858226 (= (= lt!1700295 lt!1699952) (= lambda!173102 lambda!172998))))

(assert (=> bs!858227 (= (= lt!1700295 lt!1700142) (= lambda!173102 lambda!173067))))

(assert (=> bs!858228 (not (= lambda!173102 lambda!172949))))

(assert (=> bs!858229 (= (= lt!1700295 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173102 lambda!173098))))

(assert (=> bs!858227 (= (= lt!1700295 lt!1699771) (= lambda!173102 lambda!173066))))

(assert (=> bs!858230 (= (= lt!1700295 lt!1700139) (= lambda!173102 lambda!173069))))

(assert (=> bs!858231 (= (= lt!1700295 lt!1699770) (= lambda!173102 lambda!172996))))

(assert (=> bs!858231 (= (= lt!1700295 lt!1699955) (= lambda!173102 lambda!172997))))

(assert (=> b!4523505 true))

(declare-fun bs!858234 () Bool)

(declare-fun d!1394204 () Bool)

(assert (= bs!858234 (and d!1394204 b!4523254)))

(declare-fun lambda!173103 () Int)

(declare-fun lt!1700292 () ListMap!3605)

(assert (=> bs!858234 (= (= lt!1700292 lt!1699771) (= lambda!173103 lambda!173063))))

(declare-fun bs!858235 () Bool)

(assert (= bs!858235 (and d!1394204 d!1394016)))

(assert (=> bs!858235 (not (= lambda!173103 lambda!173040))))

(declare-fun bs!858236 () Bool)

(assert (= bs!858236 (and d!1394204 b!4523057)))

(assert (=> bs!858236 (= (= lt!1700292 lt!1699770) (= lambda!173103 lambda!172995))))

(declare-fun bs!858237 () Bool)

(assert (= bs!858237 (and d!1394204 b!4523505)))

(assert (=> bs!858237 (= (= lt!1700292 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173103 lambda!173099))))

(declare-fun bs!858238 () Bool)

(assert (= bs!858238 (and d!1394204 d!1393892)))

(assert (=> bs!858238 (= (= lt!1700292 lt!1699952) (= lambda!173103 lambda!172998))))

(declare-fun bs!858239 () Bool)

(assert (= bs!858239 (and d!1394204 b!4522898)))

(assert (=> bs!858239 (not (= lambda!173103 lambda!172949))))

(assert (=> bs!858237 (= (= lt!1700292 lt!1700295) (= lambda!173103 lambda!173102))))

(declare-fun bs!858240 () Bool)

(assert (= bs!858240 (and d!1394204 b!4523257)))

(assert (=> bs!858240 (= (= lt!1700292 lt!1700142) (= lambda!173103 lambda!173067))))

(declare-fun bs!858241 () Bool)

(assert (= bs!858241 (and d!1394204 b!4523502)))

(assert (=> bs!858241 (= (= lt!1700292 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173103 lambda!173098))))

(assert (=> bs!858240 (= (= lt!1700292 lt!1699771) (= lambda!173103 lambda!173066))))

(declare-fun bs!858242 () Bool)

(assert (= bs!858242 (and d!1394204 d!1394074)))

(assert (=> bs!858242 (= (= lt!1700292 lt!1700139) (= lambda!173103 lambda!173069))))

(declare-fun bs!858243 () Bool)

(assert (= bs!858243 (and d!1394204 b!4523060)))

(assert (=> bs!858243 (= (= lt!1700292 lt!1699770) (= lambda!173103 lambda!172996))))

(assert (=> bs!858243 (= (= lt!1700292 lt!1699955) (= lambda!173103 lambda!172997))))

(assert (=> d!1394204 true))

(declare-fun call!315184 () Bool)

(declare-fun bm!315178 () Bool)

(declare-fun c!772025 () Bool)

(assert (=> bm!315178 (= call!315184 (forall!10280 (ite c!772025 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (t!357754 (t!357754 (_2!28848 lt!1699794)))) (ite c!772025 lambda!173098 lambda!173102)))))

(declare-fun e!2818363 () ListMap!3605)

(assert (=> b!4523502 (= e!2818363 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1700302 () Unit!95506)

(declare-fun call!315183 () Unit!95506)

(assert (=> b!4523502 (= lt!1700302 call!315183)))

(declare-fun call!315185 () Bool)

(assert (=> b!4523502 call!315185))

(declare-fun lt!1700299 () Unit!95506)

(assert (=> b!4523502 (= lt!1700299 lt!1700302)))

(assert (=> b!4523502 call!315184))

(declare-fun lt!1700304 () Unit!95506)

(declare-fun Unit!95584 () Unit!95506)

(assert (=> b!4523502 (= lt!1700304 Unit!95584)))

(declare-fun bm!315179 () Bool)

(assert (=> bm!315179 (= call!315185 (forall!10280 (ite c!772025 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (t!357754 (_2!28848 lt!1699794))) (ite c!772025 lambda!173098 lambda!173102)))))

(declare-fun b!4523503 () Bool)

(declare-fun res!1883128 () Bool)

(declare-fun e!2818361 () Bool)

(assert (=> b!4523503 (=> (not res!1883128) (not e!2818361))))

(assert (=> b!4523503 (= res!1883128 (forall!10280 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lambda!173103))))

(declare-fun e!2818362 () Bool)

(declare-fun b!4523504 () Bool)

(assert (=> b!4523504 (= e!2818362 (forall!10280 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lambda!173102))))

(declare-fun bm!315180 () Bool)

(assert (=> bm!315180 (= call!315183 (lemmaContainsAllItsOwnKeys!343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523505 (= e!2818363 lt!1700295)))

(declare-fun lt!1700294 () ListMap!3605)

(assert (=> b!4523505 (= lt!1700294 (+!1553 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> b!4523505 (= lt!1700295 (addToMapMapFromBucket!695 (t!357754 (t!357754 (_2!28848 lt!1699794))) (+!1553 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) (h!56527 (t!357754 (_2!28848 lt!1699794))))))))

(declare-fun lt!1700303 () Unit!95506)

(assert (=> b!4523505 (= lt!1700303 call!315183)))

(assert (=> b!4523505 (forall!10280 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lambda!173099)))

(declare-fun lt!1700305 () Unit!95506)

(assert (=> b!4523505 (= lt!1700305 lt!1700303)))

(assert (=> b!4523505 (forall!10280 (toList!4343 lt!1700294) lambda!173102)))

(declare-fun lt!1700286 () Unit!95506)

(declare-fun Unit!95585 () Unit!95506)

(assert (=> b!4523505 (= lt!1700286 Unit!95585)))

(assert (=> b!4523505 call!315184))

(declare-fun lt!1700297 () Unit!95506)

(declare-fun Unit!95586 () Unit!95506)

(assert (=> b!4523505 (= lt!1700297 Unit!95586)))

(declare-fun lt!1700285 () Unit!95506)

(declare-fun Unit!95587 () Unit!95506)

(assert (=> b!4523505 (= lt!1700285 Unit!95587)))

(declare-fun lt!1700288 () Unit!95506)

(assert (=> b!4523505 (= lt!1700288 (forallContained!2532 (toList!4343 lt!1700294) lambda!173102 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> b!4523505 (contains!13409 lt!1700294 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700287 () Unit!95506)

(declare-fun Unit!95588 () Unit!95506)

(assert (=> b!4523505 (= lt!1700287 Unit!95588)))

(assert (=> b!4523505 (contains!13409 lt!1700295 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700300 () Unit!95506)

(declare-fun Unit!95589 () Unit!95506)

(assert (=> b!4523505 (= lt!1700300 Unit!95589)))

(assert (=> b!4523505 call!315185))

(declare-fun lt!1700289 () Unit!95506)

(declare-fun Unit!95590 () Unit!95506)

(assert (=> b!4523505 (= lt!1700289 Unit!95590)))

(assert (=> b!4523505 (forall!10280 (toList!4343 lt!1700294) lambda!173102)))

(declare-fun lt!1700291 () Unit!95506)

(declare-fun Unit!95591 () Unit!95506)

(assert (=> b!4523505 (= lt!1700291 Unit!95591)))

(declare-fun lt!1700301 () Unit!95506)

(declare-fun Unit!95592 () Unit!95506)

(assert (=> b!4523505 (= lt!1700301 Unit!95592)))

(declare-fun lt!1700296 () Unit!95506)

(assert (=> b!4523505 (= lt!1700296 (addForallContainsKeyThenBeforeAdding!343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700295 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))) (_2!28847 (h!56527 (t!357754 (_2!28848 lt!1699794))))))))

(assert (=> b!4523505 (forall!10280 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lambda!173102)))

(declare-fun lt!1700290 () Unit!95506)

(assert (=> b!4523505 (= lt!1700290 lt!1700296)))

(assert (=> b!4523505 (forall!10280 (toList!4343 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lambda!173102)))

(declare-fun lt!1700293 () Unit!95506)

(declare-fun Unit!95593 () Unit!95506)

(assert (=> b!4523505 (= lt!1700293 Unit!95593)))

(declare-fun res!1883126 () Bool)

(assert (=> b!4523505 (= res!1883126 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173102))))

(assert (=> b!4523505 (=> (not res!1883126) (not e!2818362))))

(assert (=> b!4523505 e!2818362))

(declare-fun lt!1700298 () Unit!95506)

(declare-fun Unit!95594 () Unit!95506)

(assert (=> b!4523505 (= lt!1700298 Unit!95594)))

(assert (=> d!1394204 e!2818361))

(declare-fun res!1883127 () Bool)

(assert (=> d!1394204 (=> (not res!1883127) (not e!2818361))))

(assert (=> d!1394204 (= res!1883127 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173103))))

(assert (=> d!1394204 (= lt!1700292 e!2818363)))

(assert (=> d!1394204 (= c!772025 ((_ is Nil!50668) (t!357754 (_2!28848 lt!1699794))))))

(assert (=> d!1394204 (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699794)))))

(assert (=> d!1394204 (= (addToMapMapFromBucket!695 (t!357754 (_2!28848 lt!1699794)) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) lt!1700292)))

(declare-fun b!4523506 () Bool)

(assert (=> b!4523506 (= e!2818361 (invariantList!1023 (toList!4343 lt!1700292)))))

(assert (= (and d!1394204 c!772025) b!4523502))

(assert (= (and d!1394204 (not c!772025)) b!4523505))

(assert (= (and b!4523505 res!1883126) b!4523504))

(assert (= (or b!4523502 b!4523505) bm!315178))

(assert (= (or b!4523502 b!4523505) bm!315179))

(assert (= (or b!4523502 b!4523505) bm!315180))

(assert (= (and d!1394204 res!1883127) b!4523503))

(assert (= (and b!4523503 res!1883128) b!4523506))

(declare-fun m!5274259 () Bool)

(assert (=> b!4523505 m!5274259))

(declare-fun m!5274263 () Bool)

(assert (=> b!4523505 m!5274263))

(declare-fun m!5274265 () Bool)

(assert (=> b!4523505 m!5274265))

(declare-fun m!5274267 () Bool)

(assert (=> b!4523505 m!5274267))

(assert (=> b!4523505 m!5274267))

(declare-fun m!5274269 () Bool)

(assert (=> b!4523505 m!5274269))

(assert (=> b!4523505 m!5274269))

(declare-fun m!5274271 () Bool)

(assert (=> b!4523505 m!5274271))

(assert (=> b!4523505 m!5273809))

(declare-fun m!5274279 () Bool)

(assert (=> b!4523505 m!5274279))

(assert (=> b!4523505 m!5273809))

(assert (=> b!4523505 m!5274263))

(declare-fun m!5274281 () Bool)

(assert (=> b!4523505 m!5274281))

(declare-fun m!5274283 () Bool)

(assert (=> b!4523505 m!5274283))

(declare-fun m!5274285 () Bool)

(assert (=> b!4523505 m!5274285))

(declare-fun m!5274289 () Bool)

(assert (=> b!4523503 m!5274289))

(assert (=> b!4523504 m!5274267))

(declare-fun m!5274293 () Bool)

(assert (=> bm!315179 m!5274293))

(assert (=> bm!315180 m!5273809))

(declare-fun m!5274295 () Bool)

(assert (=> bm!315180 m!5274295))

(declare-fun m!5274297 () Bool)

(assert (=> bm!315178 m!5274297))

(declare-fun m!5274299 () Bool)

(assert (=> d!1394204 m!5274299))

(assert (=> d!1394204 m!5273789))

(declare-fun m!5274301 () Bool)

(assert (=> b!4523506 m!5274301))

(assert (=> b!4523257 d!1394204))

(declare-fun d!1394226 () Bool)

(declare-fun res!1883148 () Bool)

(declare-fun e!2818381 () Bool)

(assert (=> d!1394226 (=> res!1883148 e!2818381)))

(assert (=> d!1394226 (= res!1883148 ((_ is Nil!50668) (toList!4343 lt!1699771)))))

(assert (=> d!1394226 (= (forall!10280 (toList!4343 lt!1699771) lambda!173067) e!2818381)))

(declare-fun b!4523526 () Bool)

(declare-fun e!2818382 () Bool)

(assert (=> b!4523526 (= e!2818381 e!2818382)))

(declare-fun res!1883149 () Bool)

(assert (=> b!4523526 (=> (not res!1883149) (not e!2818382))))

(assert (=> b!4523526 (= res!1883149 (dynLambda!21172 lambda!173067 (h!56527 (toList!4343 lt!1699771))))))

(declare-fun b!4523527 () Bool)

(assert (=> b!4523527 (= e!2818382 (forall!10280 (t!357754 (toList!4343 lt!1699771)) lambda!173067))))

(assert (= (and d!1394226 (not res!1883148)) b!4523526))

(assert (= (and b!4523526 res!1883149) b!4523527))

(declare-fun b_lambda!155327 () Bool)

(assert (=> (not b_lambda!155327) (not b!4523526)))

(declare-fun m!5274303 () Bool)

(assert (=> b!4523526 m!5274303))

(declare-fun m!5274305 () Bool)

(assert (=> b!4523527 m!5274305))

(assert (=> b!4523257 d!1394226))

(declare-fun d!1394228 () Bool)

(declare-fun res!1883150 () Bool)

(declare-fun e!2818383 () Bool)

(assert (=> d!1394228 (=> res!1883150 e!2818383)))

(assert (=> d!1394228 (= res!1883150 ((_ is Nil!50668) (toList!4343 lt!1700141)))))

(assert (=> d!1394228 (= (forall!10280 (toList!4343 lt!1700141) lambda!173067) e!2818383)))

(declare-fun b!4523528 () Bool)

(declare-fun e!2818384 () Bool)

(assert (=> b!4523528 (= e!2818383 e!2818384)))

(declare-fun res!1883151 () Bool)

(assert (=> b!4523528 (=> (not res!1883151) (not e!2818384))))

(assert (=> b!4523528 (= res!1883151 (dynLambda!21172 lambda!173067 (h!56527 (toList!4343 lt!1700141))))))

(declare-fun b!4523529 () Bool)

(assert (=> b!4523529 (= e!2818384 (forall!10280 (t!357754 (toList!4343 lt!1700141)) lambda!173067))))

(assert (= (and d!1394228 (not res!1883150)) b!4523528))

(assert (= (and b!4523528 res!1883151) b!4523529))

(declare-fun b_lambda!155329 () Bool)

(assert (=> (not b_lambda!155329) (not b!4523528)))

(declare-fun m!5274307 () Bool)

(assert (=> b!4523528 m!5274307))

(declare-fun m!5274309 () Bool)

(assert (=> b!4523529 m!5274309))

(assert (=> b!4523257 d!1394228))

(declare-fun d!1394230 () Bool)

(declare-fun e!2818389 () Bool)

(assert (=> d!1394230 e!2818389))

(declare-fun res!1883153 () Bool)

(assert (=> d!1394230 (=> res!1883153 e!2818389)))

(declare-fun e!2818390 () Bool)

(assert (=> d!1394230 (= res!1883153 e!2818390)))

(declare-fun res!1883152 () Bool)

(assert (=> d!1394230 (=> (not res!1883152) (not e!2818390))))

(declare-fun lt!1700309 () Bool)

(assert (=> d!1394230 (= res!1883152 (not lt!1700309))))

(declare-fun lt!1700314 () Bool)

(assert (=> d!1394230 (= lt!1700309 lt!1700314)))

(declare-fun lt!1700311 () Unit!95506)

(declare-fun e!2818388 () Unit!95506)

(assert (=> d!1394230 (= lt!1700311 e!2818388)))

(declare-fun c!772026 () Bool)

(assert (=> d!1394230 (= c!772026 lt!1700314)))

(assert (=> d!1394230 (= lt!1700314 (containsKey!1804 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394230 (= (contains!13409 lt!1700141 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700309)))

(declare-fun b!4523530 () Bool)

(declare-fun e!2818385 () List!50795)

(assert (=> b!4523530 (= e!2818385 (getKeysList!471 (toList!4343 lt!1700141)))))

(declare-fun b!4523531 () Bool)

(declare-fun e!2818386 () Unit!95506)

(assert (=> b!4523531 (= e!2818388 e!2818386)))

(declare-fun c!772028 () Bool)

(declare-fun call!315186 () Bool)

(assert (=> b!4523531 (= c!772028 call!315186)))

(declare-fun b!4523532 () Bool)

(declare-fun e!2818387 () Bool)

(assert (=> b!4523532 (= e!2818387 (contains!13413 (keys!17608 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun b!4523533 () Bool)

(declare-fun Unit!95596 () Unit!95506)

(assert (=> b!4523533 (= e!2818386 Unit!95596)))

(declare-fun b!4523534 () Bool)

(assert (=> b!4523534 (= e!2818389 e!2818387)))

(declare-fun res!1883154 () Bool)

(assert (=> b!4523534 (=> (not res!1883154) (not e!2818387))))

(assert (=> b!4523534 (= res!1883154 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523535 () Bool)

(assert (=> b!4523535 (= e!2818390 (not (contains!13413 (keys!17608 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523536 () Bool)

(assert (=> b!4523536 false))

(declare-fun lt!1700315 () Unit!95506)

(declare-fun lt!1700313 () Unit!95506)

(assert (=> b!4523536 (= lt!1700315 lt!1700313)))

(assert (=> b!4523536 (containsKey!1804 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523536 (= lt!1700313 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun Unit!95597 () Unit!95506)

(assert (=> b!4523536 (= e!2818386 Unit!95597)))

(declare-fun b!4523537 () Bool)

(assert (=> b!4523537 (= e!2818385 (keys!17608 lt!1700141))))

(declare-fun b!4523538 () Bool)

(declare-fun lt!1700312 () Unit!95506)

(assert (=> b!4523538 (= e!2818388 lt!1700312)))

(declare-fun lt!1700310 () Unit!95506)

(assert (=> b!4523538 (= lt!1700310 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523538 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700316 () Unit!95506)

(assert (=> b!4523538 (= lt!1700316 lt!1700310)))

(assert (=> b!4523538 (= lt!1700312 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1700141) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523538 call!315186))

(declare-fun bm!315181 () Bool)

(assert (=> bm!315181 (= call!315186 (contains!13413 e!2818385 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun c!772027 () Bool)

(assert (=> bm!315181 (= c!772027 c!772026)))

(assert (= (and d!1394230 c!772026) b!4523538))

(assert (= (and d!1394230 (not c!772026)) b!4523531))

(assert (= (and b!4523531 c!772028) b!4523536))

(assert (= (and b!4523531 (not c!772028)) b!4523533))

(assert (= (or b!4523538 b!4523531) bm!315181))

(assert (= (and bm!315181 c!772027) b!4523530))

(assert (= (and bm!315181 (not c!772027)) b!4523537))

(assert (= (and d!1394230 res!1883152) b!4523535))

(assert (= (and d!1394230 (not res!1883153)) b!4523534))

(assert (= (and b!4523534 res!1883154) b!4523532))

(declare-fun m!5274311 () Bool)

(assert (=> bm!315181 m!5274311))

(declare-fun m!5274313 () Bool)

(assert (=> b!4523537 m!5274313))

(declare-fun m!5274315 () Bool)

(assert (=> b!4523534 m!5274315))

(assert (=> b!4523534 m!5274315))

(declare-fun m!5274317 () Bool)

(assert (=> b!4523534 m!5274317))

(declare-fun m!5274319 () Bool)

(assert (=> b!4523530 m!5274319))

(declare-fun m!5274321 () Bool)

(assert (=> b!4523536 m!5274321))

(declare-fun m!5274323 () Bool)

(assert (=> b!4523536 m!5274323))

(assert (=> b!4523535 m!5274313))

(assert (=> b!4523535 m!5274313))

(declare-fun m!5274325 () Bool)

(assert (=> b!4523535 m!5274325))

(declare-fun m!5274327 () Bool)

(assert (=> b!4523538 m!5274327))

(assert (=> b!4523538 m!5274315))

(assert (=> b!4523538 m!5274315))

(assert (=> b!4523538 m!5274317))

(declare-fun m!5274329 () Bool)

(assert (=> b!4523538 m!5274329))

(assert (=> b!4523532 m!5274313))

(assert (=> b!4523532 m!5274313))

(assert (=> b!4523532 m!5274325))

(assert (=> d!1394230 m!5274321))

(assert (=> b!4523257 d!1394230))

(declare-fun d!1394232 () Bool)

(declare-fun e!2818402 () Bool)

(assert (=> d!1394232 e!2818402))

(declare-fun res!1883170 () Bool)

(assert (=> d!1394232 (=> (not res!1883170) (not e!2818402))))

(declare-fun lt!1700332 () ListMap!3605)

(assert (=> d!1394232 (= res!1883170 (contains!13409 lt!1700332 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700331 () List!50792)

(assert (=> d!1394232 (= lt!1700332 (ListMap!3606 lt!1700331))))

(declare-fun lt!1700330 () Unit!95506)

(declare-fun lt!1700329 () Unit!95506)

(assert (=> d!1394232 (= lt!1700330 lt!1700329)))

(assert (=> d!1394232 (= (getValueByKey!1105 lt!1700331 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) (Some!11130 (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!687 (List!50792 K!12060 V!12306) Unit!95506)

(assert (=> d!1394232 (= lt!1700329 (lemmaContainsTupThenGetReturnValue!687 lt!1700331 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun insertNoDuplicatedKeys!281 (List!50792 K!12060 V!12306) List!50792)

(assert (=> d!1394232 (= lt!1700331 (insertNoDuplicatedKeys!281 (toList!4343 lt!1699771) (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394232 (= (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794))) lt!1700332)))

(declare-fun b!4523554 () Bool)

(declare-fun res!1883171 () Bool)

(assert (=> b!4523554 (=> (not res!1883171) (not e!2818402))))

(assert (=> b!4523554 (= res!1883171 (= (getValueByKey!1105 (toList!4343 lt!1700332) (_1!28847 (h!56527 (_2!28848 lt!1699794)))) (Some!11130 (_2!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523555 () Bool)

(assert (=> b!4523555 (= e!2818402 (contains!13411 (toList!4343 lt!1700332) (h!56527 (_2!28848 lt!1699794))))))

(assert (= (and d!1394232 res!1883170) b!4523554))

(assert (= (and b!4523554 res!1883171) b!4523555))

(declare-fun m!5274369 () Bool)

(assert (=> d!1394232 m!5274369))

(declare-fun m!5274371 () Bool)

(assert (=> d!1394232 m!5274371))

(declare-fun m!5274373 () Bool)

(assert (=> d!1394232 m!5274373))

(declare-fun m!5274375 () Bool)

(assert (=> d!1394232 m!5274375))

(declare-fun m!5274377 () Bool)

(assert (=> b!4523554 m!5274377))

(declare-fun m!5274379 () Bool)

(assert (=> b!4523555 m!5274379))

(assert (=> b!4523257 d!1394232))

(declare-fun d!1394248 () Bool)

(assert (=> d!1394248 (dynLambda!21172 lambda!173067 (h!56527 (_2!28848 lt!1699794)))))

(declare-fun lt!1700336 () Unit!95506)

(declare-fun choose!29597 (List!50792 Int tuple2!51106) Unit!95506)

(assert (=> d!1394248 (= lt!1700336 (choose!29597 (toList!4343 lt!1700141) lambda!173067 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun e!2818410 () Bool)

(assert (=> d!1394248 e!2818410))

(declare-fun res!1883177 () Bool)

(assert (=> d!1394248 (=> (not res!1883177) (not e!2818410))))

(assert (=> d!1394248 (= res!1883177 (forall!10280 (toList!4343 lt!1700141) lambda!173067))))

(assert (=> d!1394248 (= (forallContained!2532 (toList!4343 lt!1700141) lambda!173067 (h!56527 (_2!28848 lt!1699794))) lt!1700336)))

(declare-fun b!4523569 () Bool)

(assert (=> b!4523569 (= e!2818410 (contains!13411 (toList!4343 lt!1700141) (h!56527 (_2!28848 lt!1699794))))))

(assert (= (and d!1394248 res!1883177) b!4523569))

(declare-fun b_lambda!155333 () Bool)

(assert (=> (not b_lambda!155333) (not d!1394248)))

(declare-fun m!5274405 () Bool)

(assert (=> d!1394248 m!5274405))

(declare-fun m!5274407 () Bool)

(assert (=> d!1394248 m!5274407))

(assert (=> d!1394248 m!5273815))

(declare-fun m!5274409 () Bool)

(assert (=> b!4523569 m!5274409))

(assert (=> b!4523257 d!1394248))

(declare-fun d!1394256 () Bool)

(declare-fun e!2818415 () Bool)

(assert (=> d!1394256 e!2818415))

(declare-fun res!1883179 () Bool)

(assert (=> d!1394256 (=> res!1883179 e!2818415)))

(declare-fun e!2818416 () Bool)

(assert (=> d!1394256 (= res!1883179 e!2818416)))

(declare-fun res!1883178 () Bool)

(assert (=> d!1394256 (=> (not res!1883178) (not e!2818416))))

(declare-fun lt!1700337 () Bool)

(assert (=> d!1394256 (= res!1883178 (not lt!1700337))))

(declare-fun lt!1700342 () Bool)

(assert (=> d!1394256 (= lt!1700337 lt!1700342)))

(declare-fun lt!1700339 () Unit!95506)

(declare-fun e!2818414 () Unit!95506)

(assert (=> d!1394256 (= lt!1700339 e!2818414)))

(declare-fun c!772033 () Bool)

(assert (=> d!1394256 (= c!772033 lt!1700342)))

(assert (=> d!1394256 (= lt!1700342 (containsKey!1804 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394256 (= (contains!13409 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700337)))

(declare-fun b!4523570 () Bool)

(declare-fun e!2818411 () List!50795)

(assert (=> b!4523570 (= e!2818411 (getKeysList!471 (toList!4343 lt!1700142)))))

(declare-fun b!4523571 () Bool)

(declare-fun e!2818412 () Unit!95506)

(assert (=> b!4523571 (= e!2818414 e!2818412)))

(declare-fun c!772035 () Bool)

(declare-fun call!315187 () Bool)

(assert (=> b!4523571 (= c!772035 call!315187)))

(declare-fun b!4523572 () Bool)

(declare-fun e!2818413 () Bool)

(assert (=> b!4523572 (= e!2818413 (contains!13413 (keys!17608 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun b!4523573 () Bool)

(declare-fun Unit!95598 () Unit!95506)

(assert (=> b!4523573 (= e!2818412 Unit!95598)))

(declare-fun b!4523574 () Bool)

(assert (=> b!4523574 (= e!2818415 e!2818413)))

(declare-fun res!1883180 () Bool)

(assert (=> b!4523574 (=> (not res!1883180) (not e!2818413))))

(assert (=> b!4523574 (= res!1883180 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523575 () Bool)

(assert (=> b!4523575 (= e!2818416 (not (contains!13413 (keys!17608 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4523576 () Bool)

(assert (=> b!4523576 false))

(declare-fun lt!1700343 () Unit!95506)

(declare-fun lt!1700341 () Unit!95506)

(assert (=> b!4523576 (= lt!1700343 lt!1700341)))

(assert (=> b!4523576 (containsKey!1804 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4523576 (= lt!1700341 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun Unit!95599 () Unit!95506)

(assert (=> b!4523576 (= e!2818412 Unit!95599)))

(declare-fun b!4523577 () Bool)

(assert (=> b!4523577 (= e!2818411 (keys!17608 lt!1700142))))

(declare-fun b!4523578 () Bool)

(declare-fun lt!1700340 () Unit!95506)

(assert (=> b!4523578 (= e!2818414 lt!1700340)))

(declare-fun lt!1700338 () Unit!95506)

(assert (=> b!4523578 (= lt!1700338 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523578 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700344 () Unit!95506)

(assert (=> b!4523578 (= lt!1700344 lt!1700338)))

(assert (=> b!4523578 (= lt!1700340 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1700142) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4523578 call!315187))

(declare-fun bm!315182 () Bool)

(assert (=> bm!315182 (= call!315187 (contains!13413 e!2818411 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun c!772034 () Bool)

(assert (=> bm!315182 (= c!772034 c!772033)))

(assert (= (and d!1394256 c!772033) b!4523578))

(assert (= (and d!1394256 (not c!772033)) b!4523571))

(assert (= (and b!4523571 c!772035) b!4523576))

(assert (= (and b!4523571 (not c!772035)) b!4523573))

(assert (= (or b!4523578 b!4523571) bm!315182))

(assert (= (and bm!315182 c!772034) b!4523570))

(assert (= (and bm!315182 (not c!772034)) b!4523577))

(assert (= (and d!1394256 res!1883178) b!4523575))

(assert (= (and d!1394256 (not res!1883179)) b!4523574))

(assert (= (and b!4523574 res!1883180) b!4523572))

(declare-fun m!5274411 () Bool)

(assert (=> bm!315182 m!5274411))

(declare-fun m!5274413 () Bool)

(assert (=> b!4523577 m!5274413))

(declare-fun m!5274415 () Bool)

(assert (=> b!4523574 m!5274415))

(assert (=> b!4523574 m!5274415))

(declare-fun m!5274417 () Bool)

(assert (=> b!4523574 m!5274417))

(declare-fun m!5274419 () Bool)

(assert (=> b!4523570 m!5274419))

(declare-fun m!5274421 () Bool)

(assert (=> b!4523576 m!5274421))

(declare-fun m!5274423 () Bool)

(assert (=> b!4523576 m!5274423))

(assert (=> b!4523575 m!5274413))

(assert (=> b!4523575 m!5274413))

(declare-fun m!5274425 () Bool)

(assert (=> b!4523575 m!5274425))

(declare-fun m!5274427 () Bool)

(assert (=> b!4523578 m!5274427))

(assert (=> b!4523578 m!5274415))

(assert (=> b!4523578 m!5274415))

(assert (=> b!4523578 m!5274417))

(declare-fun m!5274429 () Bool)

(assert (=> b!4523578 m!5274429))

(assert (=> b!4523572 m!5274413))

(assert (=> b!4523572 m!5274413))

(assert (=> b!4523572 m!5274425))

(assert (=> d!1394256 m!5274421))

(assert (=> b!4523257 d!1394256))

(declare-fun d!1394258 () Bool)

(declare-fun res!1883181 () Bool)

(declare-fun e!2818417 () Bool)

(assert (=> d!1394258 (=> res!1883181 e!2818417)))

(assert (=> d!1394258 (= res!1883181 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394258 (= (forall!10280 (_2!28848 lt!1699794) lambda!173067) e!2818417)))

(declare-fun b!4523579 () Bool)

(declare-fun e!2818418 () Bool)

(assert (=> b!4523579 (= e!2818417 e!2818418)))

(declare-fun res!1883182 () Bool)

(assert (=> b!4523579 (=> (not res!1883182) (not e!2818418))))

(assert (=> b!4523579 (= res!1883182 (dynLambda!21172 lambda!173067 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun b!4523580 () Bool)

(assert (=> b!4523580 (= e!2818418 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173067))))

(assert (= (and d!1394258 (not res!1883181)) b!4523579))

(assert (= (and b!4523579 res!1883182) b!4523580))

(declare-fun b_lambda!155335 () Bool)

(assert (=> (not b_lambda!155335) (not b!4523579)))

(assert (=> b!4523579 m!5274405))

(declare-fun m!5274431 () Bool)

(assert (=> b!4523580 m!5274431))

(assert (=> b!4523257 d!1394258))

(declare-fun bs!858270 () Bool)

(declare-fun d!1394260 () Bool)

(assert (= bs!858270 (and d!1394260 b!4523254)))

(declare-fun lambda!173115 () Int)

(assert (=> bs!858270 (= (= lt!1700142 lt!1699771) (= lambda!173115 lambda!173063))))

(declare-fun bs!858271 () Bool)

(assert (= bs!858271 (and d!1394260 d!1394016)))

(assert (=> bs!858271 (not (= lambda!173115 lambda!173040))))

(declare-fun bs!858272 () Bool)

(assert (= bs!858272 (and d!1394260 d!1394204)))

(assert (=> bs!858272 (= (= lt!1700142 lt!1700292) (= lambda!173115 lambda!173103))))

(declare-fun bs!858273 () Bool)

(assert (= bs!858273 (and d!1394260 b!4523057)))

(assert (=> bs!858273 (= (= lt!1700142 lt!1699770) (= lambda!173115 lambda!172995))))

(declare-fun bs!858274 () Bool)

(assert (= bs!858274 (and d!1394260 b!4523505)))

(assert (=> bs!858274 (= (= lt!1700142 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173115 lambda!173099))))

(declare-fun bs!858275 () Bool)

(assert (= bs!858275 (and d!1394260 d!1393892)))

(assert (=> bs!858275 (= (= lt!1700142 lt!1699952) (= lambda!173115 lambda!172998))))

(declare-fun bs!858276 () Bool)

(assert (= bs!858276 (and d!1394260 b!4522898)))

(assert (=> bs!858276 (not (= lambda!173115 lambda!172949))))

(assert (=> bs!858274 (= (= lt!1700142 lt!1700295) (= lambda!173115 lambda!173102))))

(declare-fun bs!858277 () Bool)

(assert (= bs!858277 (and d!1394260 b!4523257)))

(assert (=> bs!858277 (= lambda!173115 lambda!173067)))

(declare-fun bs!858278 () Bool)

(assert (= bs!858278 (and d!1394260 b!4523502)))

(assert (=> bs!858278 (= (= lt!1700142 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173115 lambda!173098))))

(assert (=> bs!858277 (= (= lt!1700142 lt!1699771) (= lambda!173115 lambda!173066))))

(declare-fun bs!858279 () Bool)

(assert (= bs!858279 (and d!1394260 d!1394074)))

(assert (=> bs!858279 (= (= lt!1700142 lt!1700139) (= lambda!173115 lambda!173069))))

(declare-fun bs!858280 () Bool)

(assert (= bs!858280 (and d!1394260 b!4523060)))

(assert (=> bs!858280 (= (= lt!1700142 lt!1699770) (= lambda!173115 lambda!172996))))

(assert (=> bs!858280 (= (= lt!1700142 lt!1699955) (= lambda!173115 lambda!172997))))

(assert (=> d!1394260 true))

(assert (=> d!1394260 (forall!10280 (toList!4343 lt!1699771) lambda!173115)))

(declare-fun lt!1700350 () Unit!95506)

(declare-fun choose!29600 (ListMap!3605 ListMap!3605 K!12060 V!12306) Unit!95506)

(assert (=> d!1394260 (= lt!1700350 (choose!29600 lt!1699771 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394260 (forall!10280 (toList!4343 (+!1553 lt!1699771 (tuple2!51107 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))) lambda!173115)))

(assert (=> d!1394260 (= (addForallContainsKeyThenBeforeAdding!343 lt!1699771 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700350)))

(declare-fun bs!858281 () Bool)

(assert (= bs!858281 d!1394260))

(declare-fun m!5274447 () Bool)

(assert (=> bs!858281 m!5274447))

(declare-fun m!5274449 () Bool)

(assert (=> bs!858281 m!5274449))

(declare-fun m!5274451 () Bool)

(assert (=> bs!858281 m!5274451))

(declare-fun m!5274453 () Bool)

(assert (=> bs!858281 m!5274453))

(assert (=> b!4523257 d!1394260))

(declare-fun d!1394272 () Bool)

(declare-fun res!1883189 () Bool)

(declare-fun e!2818429 () Bool)

(assert (=> d!1394272 (=> res!1883189 e!2818429)))

(assert (=> d!1394272 (= res!1883189 ((_ is Nil!50668) (toList!4343 lt!1699771)))))

(assert (=> d!1394272 (= (forall!10280 (toList!4343 lt!1699771) lambda!173066) e!2818429)))

(declare-fun b!4523600 () Bool)

(declare-fun e!2818430 () Bool)

(assert (=> b!4523600 (= e!2818429 e!2818430)))

(declare-fun res!1883190 () Bool)

(assert (=> b!4523600 (=> (not res!1883190) (not e!2818430))))

(assert (=> b!4523600 (= res!1883190 (dynLambda!21172 lambda!173066 (h!56527 (toList!4343 lt!1699771))))))

(declare-fun b!4523601 () Bool)

(assert (=> b!4523601 (= e!2818430 (forall!10280 (t!357754 (toList!4343 lt!1699771)) lambda!173066))))

(assert (= (and d!1394272 (not res!1883189)) b!4523600))

(assert (= (and b!4523600 res!1883190) b!4523601))

(declare-fun b_lambda!155339 () Bool)

(assert (=> (not b_lambda!155339) (not b!4523600)))

(declare-fun m!5274455 () Bool)

(assert (=> b!4523600 m!5274455))

(declare-fun m!5274457 () Bool)

(assert (=> b!4523601 m!5274457))

(assert (=> b!4523257 d!1394272))

(declare-fun d!1394274 () Bool)

(assert (=> d!1394274 (= (hash!2829 hashF!1107 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))))) (hash!2833 hashF!1107 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))))

(declare-fun bs!858282 () Bool)

(assert (= bs!858282 d!1394274))

(declare-fun m!5274459 () Bool)

(assert (=> bs!858282 m!5274459))

(assert (=> bs!858180 d!1394274))

(declare-fun d!1394276 () Bool)

(declare-fun c!772044 () Bool)

(assert (=> d!1394276 (= c!772044 ((_ is Nil!50668) (toList!4343 lt!1699780)))))

(declare-fun e!2818435 () (InoxSet tuple2!51106))

(assert (=> d!1394276 (= (content!8374 (toList!4343 lt!1699780)) e!2818435)))

(declare-fun b!4523606 () Bool)

(assert (=> b!4523606 (= e!2818435 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523607 () Bool)

(assert (=> b!4523607 (= e!2818435 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699780)) true) (content!8374 (t!357754 (toList!4343 lt!1699780)))))))

(assert (= (and d!1394276 c!772044) b!4523606))

(assert (= (and d!1394276 (not c!772044)) b!4523607))

(declare-fun m!5274461 () Bool)

(assert (=> b!4523607 m!5274461))

(declare-fun m!5274463 () Bool)

(assert (=> b!4523607 m!5274463))

(assert (=> d!1393888 d!1394276))

(declare-fun d!1394278 () Bool)

(declare-fun c!772045 () Bool)

(assert (=> d!1394278 (= c!772045 ((_ is Nil!50668) (toList!4343 lt!1699777)))))

(declare-fun e!2818436 () (InoxSet tuple2!51106))

(assert (=> d!1394278 (= (content!8374 (toList!4343 lt!1699777)) e!2818436)))

(declare-fun b!4523608 () Bool)

(assert (=> b!4523608 (= e!2818436 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523609 () Bool)

(assert (=> b!4523609 (= e!2818436 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699777)) true) (content!8374 (t!357754 (toList!4343 lt!1699777)))))))

(assert (= (and d!1394278 c!772045) b!4523608))

(assert (= (and d!1394278 (not c!772045)) b!4523609))

(declare-fun m!5274465 () Bool)

(assert (=> b!4523609 m!5274465))

(declare-fun m!5274467 () Bool)

(assert (=> b!4523609 m!5274467))

(assert (=> d!1393888 d!1394278))

(declare-fun d!1394280 () Bool)

(declare-fun e!2818441 () Bool)

(assert (=> d!1394280 e!2818441))

(declare-fun res!1883192 () Bool)

(assert (=> d!1394280 (=> res!1883192 e!2818441)))

(declare-fun e!2818442 () Bool)

(assert (=> d!1394280 (= res!1883192 e!2818442)))

(declare-fun res!1883191 () Bool)

(assert (=> d!1394280 (=> (not res!1883191) (not e!2818442))))

(declare-fun lt!1700351 () Bool)

(assert (=> d!1394280 (= res!1883191 (not lt!1700351))))

(declare-fun lt!1700356 () Bool)

(assert (=> d!1394280 (= lt!1700351 lt!1700356)))

(declare-fun lt!1700353 () Unit!95506)

(declare-fun e!2818440 () Unit!95506)

(assert (=> d!1394280 (= lt!1700353 e!2818440)))

(declare-fun c!772046 () Bool)

(assert (=> d!1394280 (= c!772046 lt!1700356)))

(assert (=> d!1394280 (= lt!1700356 (containsKey!1804 (toList!4343 lt!1700118) key!3287))))

(assert (=> d!1394280 (= (contains!13409 lt!1700118 key!3287) lt!1700351)))

(declare-fun b!4523610 () Bool)

(declare-fun e!2818437 () List!50795)

(assert (=> b!4523610 (= e!2818437 (getKeysList!471 (toList!4343 lt!1700118)))))

(declare-fun b!4523611 () Bool)

(declare-fun e!2818438 () Unit!95506)

(assert (=> b!4523611 (= e!2818440 e!2818438)))

(declare-fun c!772048 () Bool)

(declare-fun call!315188 () Bool)

(assert (=> b!4523611 (= c!772048 call!315188)))

(declare-fun b!4523612 () Bool)

(declare-fun e!2818439 () Bool)

(assert (=> b!4523612 (= e!2818439 (contains!13413 (keys!17608 lt!1700118) key!3287))))

(declare-fun b!4523613 () Bool)

(declare-fun Unit!95600 () Unit!95506)

(assert (=> b!4523613 (= e!2818438 Unit!95600)))

(declare-fun b!4523614 () Bool)

(assert (=> b!4523614 (= e!2818441 e!2818439)))

(declare-fun res!1883193 () Bool)

(assert (=> b!4523614 (=> (not res!1883193) (not e!2818439))))

(assert (=> b!4523614 (= res!1883193 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700118) key!3287)))))

(declare-fun b!4523615 () Bool)

(assert (=> b!4523615 (= e!2818442 (not (contains!13413 (keys!17608 lt!1700118) key!3287)))))

(declare-fun b!4523616 () Bool)

(assert (=> b!4523616 false))

(declare-fun lt!1700357 () Unit!95506)

(declare-fun lt!1700355 () Unit!95506)

(assert (=> b!4523616 (= lt!1700357 lt!1700355)))

(assert (=> b!4523616 (containsKey!1804 (toList!4343 lt!1700118) key!3287)))

(assert (=> b!4523616 (= lt!1700355 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1700118) key!3287))))

(declare-fun Unit!95601 () Unit!95506)

(assert (=> b!4523616 (= e!2818438 Unit!95601)))

(declare-fun b!4523617 () Bool)

(assert (=> b!4523617 (= e!2818437 (keys!17608 lt!1700118))))

(declare-fun b!4523618 () Bool)

(declare-fun lt!1700354 () Unit!95506)

(assert (=> b!4523618 (= e!2818440 lt!1700354)))

(declare-fun lt!1700352 () Unit!95506)

(assert (=> b!4523618 (= lt!1700352 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1700118) key!3287))))

(assert (=> b!4523618 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1700118) key!3287))))

(declare-fun lt!1700358 () Unit!95506)

(assert (=> b!4523618 (= lt!1700358 lt!1700352)))

(assert (=> b!4523618 (= lt!1700354 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1700118) key!3287))))

(assert (=> b!4523618 call!315188))

(declare-fun bm!315183 () Bool)

(assert (=> bm!315183 (= call!315188 (contains!13413 e!2818437 key!3287))))

(declare-fun c!772047 () Bool)

(assert (=> bm!315183 (= c!772047 c!772046)))

(assert (= (and d!1394280 c!772046) b!4523618))

(assert (= (and d!1394280 (not c!772046)) b!4523611))

(assert (= (and b!4523611 c!772048) b!4523616))

(assert (= (and b!4523611 (not c!772048)) b!4523613))

(assert (= (or b!4523618 b!4523611) bm!315183))

(assert (= (and bm!315183 c!772047) b!4523610))

(assert (= (and bm!315183 (not c!772047)) b!4523617))

(assert (= (and d!1394280 res!1883191) b!4523615))

(assert (= (and d!1394280 (not res!1883192)) b!4523614))

(assert (= (and b!4523614 res!1883193) b!4523612))

(declare-fun m!5274469 () Bool)

(assert (=> bm!315183 m!5274469))

(assert (=> b!4523617 m!5273725))

(declare-fun m!5274473 () Bool)

(assert (=> b!4523614 m!5274473))

(assert (=> b!4523614 m!5274473))

(declare-fun m!5274475 () Bool)

(assert (=> b!4523614 m!5274475))

(declare-fun m!5274477 () Bool)

(assert (=> b!4523610 m!5274477))

(declare-fun m!5274479 () Bool)

(assert (=> b!4523616 m!5274479))

(declare-fun m!5274481 () Bool)

(assert (=> b!4523616 m!5274481))

(assert (=> b!4523615 m!5273725))

(assert (=> b!4523615 m!5273725))

(declare-fun m!5274483 () Bool)

(assert (=> b!4523615 m!5274483))

(declare-fun m!5274485 () Bool)

(assert (=> b!4523618 m!5274485))

(assert (=> b!4523618 m!5274473))

(assert (=> b!4523618 m!5274473))

(assert (=> b!4523618 m!5274475))

(declare-fun m!5274487 () Bool)

(assert (=> b!4523618 m!5274487))

(assert (=> b!4523612 m!5273725))

(assert (=> b!4523612 m!5273725))

(assert (=> b!4523612 m!5274483))

(assert (=> d!1394280 m!5274479))

(assert (=> d!1394046 d!1394280))

(declare-fun bm!315208 () Bool)

(declare-fun call!315215 () (InoxSet tuple2!51106))

(declare-fun lt!1700451 () List!50792)

(assert (=> bm!315208 (= call!315215 (content!8374 lt!1700451))))

(declare-fun b!4523781 () Bool)

(declare-fun e!2818547 () List!50792)

(assert (=> b!4523781 (= e!2818547 Nil!50668)))

(declare-fun b!4523782 () Bool)

(declare-fun e!2818550 () Bool)

(declare-fun call!315216 () (InoxSet tuple2!51106))

(assert (=> b!4523782 (= e!2818550 (= call!315215 call!315216))))

(declare-fun b!4523783 () Bool)

(declare-fun e!2818548 () Unit!95506)

(declare-fun Unit!95602 () Unit!95506)

(assert (=> b!4523783 (= e!2818548 Unit!95602)))

(declare-fun lt!1700446 () V!12306)

(declare-fun get!16607 (Option!11131) V!12306)

(assert (=> b!4523783 (= lt!1700446 (get!16607 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287)))))

(declare-fun lt!1700447 () K!12060)

(assert (=> b!4523783 (= lt!1700447 key!3287)))

(declare-fun lt!1700449 () K!12060)

(assert (=> b!4523783 (= lt!1700449 key!3287)))

(declare-fun lt!1700460 () Unit!95506)

(declare-fun lemmaContainsTupleThenContainsKey!64 (List!50792 K!12060 V!12306) Unit!95506)

(assert (=> b!4523783 (= lt!1700460 (lemmaContainsTupleThenContainsKey!64 (t!357754 (toList!4343 lt!1699768)) lt!1700447 (get!16607 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))))))

(declare-fun call!315218 () Bool)

(assert (=> b!4523783 call!315218))

(declare-fun lt!1700452 () Unit!95506)

(assert (=> b!4523783 (= lt!1700452 lt!1700460)))

(assert (=> b!4523783 false))

(declare-fun b!4523784 () Bool)

(declare-fun e!2818546 () Unit!95506)

(declare-fun Unit!95603 () Unit!95506)

(assert (=> b!4523784 (= e!2818546 Unit!95603)))

(declare-fun b!4523785 () Bool)

(declare-fun call!315214 () (InoxSet tuple2!51106))

(declare-fun call!315213 () (InoxSet tuple2!51106))

(assert (=> b!4523785 (= call!315214 call!315213)))

(declare-fun e!2818554 () Unit!95506)

(declare-fun Unit!95604 () Unit!95506)

(assert (=> b!4523785 (= e!2818554 Unit!95604)))

(declare-fun b!4523786 () Bool)

(declare-fun Unit!95605 () Unit!95506)

(assert (=> b!4523786 (= e!2818546 Unit!95605)))

(declare-fun lt!1700459 () Unit!95506)

(assert (=> b!4523786 (= lt!1700459 (lemmaInGetKeysListThenContainsKey!470 (t!357754 (toList!4343 lt!1699768)) (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(assert (=> b!4523786 call!315218))

(declare-fun lt!1700453 () Unit!95506)

(assert (=> b!4523786 (= lt!1700453 lt!1700459)))

(assert (=> b!4523786 false))

(declare-fun bm!315209 () Bool)

(assert (=> bm!315209 (= call!315216 (content!8374 (toList!4343 lt!1699768)))))

(declare-fun bm!315210 () Bool)

(assert (=> bm!315210 (= call!315214 (content!8374 (t!357754 (toList!4343 lt!1699768))))))

(declare-fun b!4523787 () Bool)

(declare-fun e!2818552 () List!50792)

(assert (=> b!4523787 (= e!2818552 (t!357754 (toList!4343 lt!1699768)))))

(declare-fun c!772099 () Bool)

(declare-fun call!315217 () Bool)

(assert (=> b!4523787 (= c!772099 call!315217)))

(declare-fun lt!1700458 () Unit!95506)

(assert (=> b!4523787 (= lt!1700458 e!2818554)))

(declare-fun d!1394284 () Bool)

(declare-fun e!2818549 () Bool)

(assert (=> d!1394284 e!2818549))

(declare-fun res!1883256 () Bool)

(assert (=> d!1394284 (=> (not res!1883256) (not e!2818549))))

(assert (=> d!1394284 (= res!1883256 (invariantList!1023 lt!1700451))))

(assert (=> d!1394284 (= lt!1700451 e!2818552)))

(declare-fun c!772103 () Bool)

(assert (=> d!1394284 (= c!772103 (and ((_ is Cons!50668) (toList!4343 lt!1699768)) (= (_1!28847 (h!56527 (toList!4343 lt!1699768))) key!3287)))))

(assert (=> d!1394284 (invariantList!1023 (toList!4343 lt!1699768))))

(assert (=> d!1394284 (= (removePresrvNoDuplicatedKeys!146 (toList!4343 lt!1699768) key!3287) lt!1700451)))

(declare-fun b!4523788 () Bool)

(declare-fun res!1883257 () Bool)

(assert (=> b!4523788 (=> (not res!1883257) (not e!2818549))))

(assert (=> b!4523788 (= res!1883257 (= (content!8376 (getKeysList!471 lt!1700451)) ((_ map and) (content!8376 (getKeysList!471 (toList!4343 lt!1699768))) ((_ map not) (store ((as const (Array K!12060 Bool)) false) key!3287 true)))))))

(declare-fun b!4523789 () Bool)

(declare-fun e!2818553 () Unit!95506)

(declare-fun Unit!95606 () Unit!95506)

(assert (=> b!4523789 (= e!2818553 Unit!95606)))

(declare-fun lt!1700448 () List!50792)

(assert (=> b!4523789 (= lt!1700448 (removePresrvNoDuplicatedKeys!146 (t!357754 (toList!4343 lt!1699768)) key!3287))))

(declare-fun lt!1700457 () Unit!95506)

(assert (=> b!4523789 (= lt!1700457 (lemmaInListThenGetKeysListContains!467 lt!1700448 (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(assert (=> b!4523789 (contains!13413 (getKeysList!471 lt!1700448) (_1!28847 (h!56527 (toList!4343 lt!1699768))))))

(declare-fun lt!1700456 () Unit!95506)

(assert (=> b!4523789 (= lt!1700456 lt!1700457)))

(assert (=> b!4523789 false))

(declare-fun b!4523790 () Bool)

(assert (=> b!4523790 (= e!2818549 e!2818550)))

(declare-fun c!772101 () Bool)

(assert (=> b!4523790 (= c!772101 (containsKey!1804 (toList!4343 lt!1699768) key!3287))))

(declare-fun bm!315211 () Bool)

(assert (=> bm!315211 (= call!315218 (containsKey!1804 (t!357754 (toList!4343 lt!1699768)) (ite c!772103 lt!1700447 (_1!28847 (h!56527 (toList!4343 lt!1699768))))))))

(declare-fun b!4523791 () Bool)

(declare-fun lt!1700454 () Unit!95506)

(assert (=> b!4523791 (= lt!1700454 e!2818553)))

(declare-fun c!772100 () Bool)

(assert (=> b!4523791 (= c!772100 call!315217)))

(declare-fun lt!1700444 () Unit!95506)

(assert (=> b!4523791 (= lt!1700444 e!2818546)))

(declare-fun c!772104 () Bool)

(assert (=> b!4523791 (= c!772104 (contains!13413 (getKeysList!471 (t!357754 (toList!4343 lt!1699768))) (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(declare-fun lt!1700450 () List!50792)

(declare-fun $colon$colon!941 (List!50792 tuple2!51106) List!50792)

(assert (=> b!4523791 (= lt!1700450 ($colon$colon!941 (removePresrvNoDuplicatedKeys!146 (t!357754 (toList!4343 lt!1699768)) key!3287) (h!56527 (toList!4343 lt!1699768))))))

(assert (=> b!4523791 (= e!2818547 lt!1700450)))

(declare-fun b!4523792 () Bool)

(declare-fun Unit!95607 () Unit!95506)

(assert (=> b!4523792 (= e!2818553 Unit!95607)))

(declare-fun b!4523793 () Bool)

(declare-fun Unit!95608 () Unit!95506)

(assert (=> b!4523793 (= e!2818548 Unit!95608)))

(declare-fun b!4523794 () Bool)

(assert (=> b!4523794 (= e!2818550 (= call!315215 ((_ map and) call!315216 ((_ map not) (store ((as const (Array tuple2!51106 Bool)) false) (tuple2!51107 key!3287 (get!16607 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))) true)))))))

(assert (=> b!4523794 (containsKey!1804 (toList!4343 lt!1699768) key!3287)))

(declare-fun lt!1700461 () Unit!95506)

(assert (=> b!4523794 (= lt!1700461 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699768) key!3287))))

(assert (=> b!4523794 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))))

(declare-fun lt!1700455 () Unit!95506)

(assert (=> b!4523794 (= lt!1700455 lt!1700461)))

(declare-fun b!4523795 () Bool)

(assert (=> b!4523795 (= call!315214 ((_ map and) call!315213 ((_ map not) (store ((as const (Array tuple2!51106 Bool)) false) (tuple2!51107 key!3287 (get!16607 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))) true))))))

(declare-fun lt!1700445 () Unit!95506)

(assert (=> b!4523795 (= lt!1700445 e!2818548)))

(declare-fun c!772105 () Bool)

(assert (=> b!4523795 (= c!772105 (contains!13411 (t!357754 (toList!4343 lt!1699768)) (tuple2!51107 key!3287 (get!16607 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287)))))))

(declare-fun Unit!95609 () Unit!95506)

(assert (=> b!4523795 (= e!2818554 Unit!95609)))

(declare-fun bm!315212 () Bool)

(declare-fun e!2818551 () List!50792)

(assert (=> bm!315212 (= call!315217 (containsKey!1804 e!2818551 (ite c!772103 key!3287 (_1!28847 (h!56527 (toList!4343 lt!1699768))))))))

(declare-fun c!772102 () Bool)

(assert (=> bm!315212 (= c!772102 c!772103)))

(declare-fun b!4523796 () Bool)

(declare-fun res!1883258 () Bool)

(assert (=> b!4523796 (=> (not res!1883258) (not e!2818549))))

(assert (=> b!4523796 (= res!1883258 (not (containsKey!1804 lt!1700451 key!3287)))))

(declare-fun b!4523797 () Bool)

(assert (=> b!4523797 (= e!2818551 (removePresrvNoDuplicatedKeys!146 (t!357754 (toList!4343 lt!1699768)) key!3287))))

(declare-fun b!4523798 () Bool)

(assert (=> b!4523798 (= e!2818552 e!2818547)))

(declare-fun c!772106 () Bool)

(assert (=> b!4523798 (= c!772106 (and ((_ is Cons!50668) (toList!4343 lt!1699768)) (not (= (_1!28847 (h!56527 (toList!4343 lt!1699768))) key!3287))))))

(declare-fun bm!315213 () Bool)

(assert (=> bm!315213 (= call!315213 (content!8374 (toList!4343 lt!1699768)))))

(declare-fun b!4523799 () Bool)

(assert (=> b!4523799 (= e!2818551 (toList!4343 lt!1699768))))

(assert (= (and d!1394284 c!772103) b!4523787))

(assert (= (and d!1394284 (not c!772103)) b!4523798))

(assert (= (and b!4523787 c!772099) b!4523795))

(assert (= (and b!4523787 (not c!772099)) b!4523785))

(assert (= (and b!4523795 c!772105) b!4523783))

(assert (= (and b!4523795 (not c!772105)) b!4523793))

(assert (= (or b!4523795 b!4523785) bm!315210))

(assert (= (or b!4523795 b!4523785) bm!315213))

(assert (= (and b!4523798 c!772106) b!4523791))

(assert (= (and b!4523798 (not c!772106)) b!4523781))

(assert (= (and b!4523791 c!772104) b!4523786))

(assert (= (and b!4523791 (not c!772104)) b!4523784))

(assert (= (and b!4523791 c!772100) b!4523789))

(assert (= (and b!4523791 (not c!772100)) b!4523792))

(assert (= (or b!4523783 b!4523786) bm!315211))

(assert (= (or b!4523787 b!4523791) bm!315212))

(assert (= (and bm!315212 c!772102) b!4523799))

(assert (= (and bm!315212 (not c!772102)) b!4523797))

(assert (= (and d!1394284 res!1883256) b!4523796))

(assert (= (and b!4523796 res!1883258) b!4523788))

(assert (= (and b!4523788 res!1883257) b!4523790))

(assert (= (and b!4523790 c!772101) b!4523794))

(assert (= (and b!4523790 (not c!772101)) b!4523782))

(assert (= (or b!4523794 b!4523782) bm!315208))

(assert (= (or b!4523794 b!4523782) bm!315209))

(assert (=> b!4523794 m!5273959))

(declare-fun m!5274633 () Bool)

(assert (=> b!4523794 m!5274633))

(assert (=> b!4523794 m!5273959))

(assert (=> b!4523794 m!5273965))

(declare-fun m!5274635 () Bool)

(assert (=> b!4523794 m!5274635))

(assert (=> b!4523794 m!5273971))

(assert (=> b!4523794 m!5273959))

(assert (=> b!4523794 m!5273961))

(declare-fun m!5274637 () Bool)

(assert (=> b!4523797 m!5274637))

(assert (=> b!4523788 m!5273733))

(declare-fun m!5274639 () Bool)

(assert (=> b!4523788 m!5274639))

(declare-fun m!5274641 () Bool)

(assert (=> b!4523788 m!5274641))

(assert (=> b!4523788 m!5274639))

(assert (=> b!4523788 m!5273963))

(assert (=> b!4523788 m!5273963))

(declare-fun m!5274643 () Bool)

(assert (=> b!4523788 m!5274643))

(declare-fun m!5274645 () Bool)

(assert (=> bm!315210 m!5274645))

(declare-fun m!5274649 () Bool)

(assert (=> b!4523786 m!5274649))

(assert (=> b!4523789 m!5274637))

(declare-fun m!5274653 () Bool)

(assert (=> b!4523789 m!5274653))

(declare-fun m!5274655 () Bool)

(assert (=> b!4523789 m!5274655))

(assert (=> b!4523789 m!5274655))

(declare-fun m!5274661 () Bool)

(assert (=> b!4523789 m!5274661))

(assert (=> b!4523795 m!5273959))

(assert (=> b!4523795 m!5273959))

(assert (=> b!4523795 m!5274633))

(assert (=> b!4523795 m!5274635))

(declare-fun m!5274667 () Bool)

(assert (=> b!4523795 m!5274667))

(declare-fun m!5274671 () Bool)

(assert (=> bm!315209 m!5274671))

(declare-fun m!5274673 () Bool)

(assert (=> bm!315208 m!5274673))

(assert (=> bm!315213 m!5274671))

(declare-fun m!5274675 () Bool)

(assert (=> b!4523796 m!5274675))

(declare-fun m!5274679 () Bool)

(assert (=> d!1394284 m!5274679))

(assert (=> d!1394284 m!5274195))

(assert (=> b!4523790 m!5273965))

(assert (=> b!4523783 m!5273959))

(assert (=> b!4523783 m!5273959))

(assert (=> b!4523783 m!5274633))

(assert (=> b!4523783 m!5274633))

(declare-fun m!5274687 () Bool)

(assert (=> b!4523783 m!5274687))

(declare-fun m!5274689 () Bool)

(assert (=> bm!315211 m!5274689))

(declare-fun m!5274691 () Bool)

(assert (=> b!4523791 m!5274691))

(assert (=> b!4523791 m!5274691))

(declare-fun m!5274693 () Bool)

(assert (=> b!4523791 m!5274693))

(assert (=> b!4523791 m!5274637))

(assert (=> b!4523791 m!5274637))

(declare-fun m!5274699 () Bool)

(assert (=> b!4523791 m!5274699))

(declare-fun m!5274703 () Bool)

(assert (=> bm!315212 m!5274703))

(assert (=> d!1394046 d!1394284))

(declare-fun d!1394376 () Bool)

(declare-fun res!1883259 () Bool)

(declare-fun e!2818555 () Bool)

(assert (=> d!1394376 (=> res!1883259 e!2818555)))

(assert (=> d!1394376 (= res!1883259 (and ((_ is Cons!50668) (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))) (= (_1!28847 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))) key!3287)))))

(assert (=> d!1394376 (= (containsKey!1800 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) key!3287) e!2818555)))

(declare-fun b!4523800 () Bool)

(declare-fun e!2818556 () Bool)

(assert (=> b!4523800 (= e!2818555 e!2818556)))

(declare-fun res!1883260 () Bool)

(assert (=> b!4523800 (=> (not res!1883260) (not e!2818556))))

(assert (=> b!4523800 (= res!1883260 ((_ is Cons!50668) (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))

(declare-fun b!4523801 () Bool)

(assert (=> b!4523801 (= e!2818556 (containsKey!1800 (t!357754 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(assert (= (and d!1394376 (not res!1883259)) b!4523800))

(assert (= (and b!4523800 res!1883260) b!4523801))

(declare-fun m!5274713 () Bool)

(assert (=> b!4523801 m!5274713))

(assert (=> b!4523091 d!1394376))

(declare-fun d!1394380 () Bool)

(declare-fun res!1883261 () Bool)

(declare-fun e!2818558 () Bool)

(assert (=> d!1394380 (=> res!1883261 e!2818558)))

(assert (=> d!1394380 (= res!1883261 ((_ is Nil!50668) (ite c!771942 (toList!4343 lt!1699770) (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> d!1394380 (= (forall!10280 (ite c!771942 (toList!4343 lt!1699770) (t!357754 (_2!28848 lt!1699794))) (ite c!771942 lambda!172995 lambda!172997)) e!2818558)))

(declare-fun b!4523804 () Bool)

(declare-fun e!2818559 () Bool)

(assert (=> b!4523804 (= e!2818558 e!2818559)))

(declare-fun res!1883262 () Bool)

(assert (=> b!4523804 (=> (not res!1883262) (not e!2818559))))

(assert (=> b!4523804 (= res!1883262 (dynLambda!21172 (ite c!771942 lambda!172995 lambda!172997) (h!56527 (ite c!771942 (toList!4343 lt!1699770) (t!357754 (_2!28848 lt!1699794))))))))

(declare-fun b!4523805 () Bool)

(assert (=> b!4523805 (= e!2818559 (forall!10280 (t!357754 (ite c!771942 (toList!4343 lt!1699770) (t!357754 (_2!28848 lt!1699794)))) (ite c!771942 lambda!172995 lambda!172997)))))

(assert (= (and d!1394380 (not res!1883261)) b!4523804))

(assert (= (and b!4523804 res!1883262) b!4523805))

(declare-fun b_lambda!155353 () Bool)

(assert (=> (not b_lambda!155353) (not b!4523804)))

(declare-fun m!5274715 () Bool)

(assert (=> b!4523804 m!5274715))

(declare-fun m!5274717 () Bool)

(assert (=> b!4523805 m!5274717))

(assert (=> bm!315142 d!1394380))

(declare-fun d!1394382 () Bool)

(declare-fun res!1883263 () Bool)

(declare-fun e!2818560 () Bool)

(assert (=> d!1394382 (=> res!1883263 e!2818560)))

(assert (=> d!1394382 (= res!1883263 ((_ is Nil!50668) (ite c!771976 (toList!4343 lt!1699771) (_2!28848 lt!1699794))))))

(assert (=> d!1394382 (= (forall!10280 (ite c!771976 (toList!4343 lt!1699771) (_2!28848 lt!1699794)) (ite c!771976 lambda!173063 lambda!173067)) e!2818560)))

(declare-fun b!4523806 () Bool)

(declare-fun e!2818561 () Bool)

(assert (=> b!4523806 (= e!2818560 e!2818561)))

(declare-fun res!1883264 () Bool)

(assert (=> b!4523806 (=> (not res!1883264) (not e!2818561))))

(assert (=> b!4523806 (= res!1883264 (dynLambda!21172 (ite c!771976 lambda!173063 lambda!173067) (h!56527 (ite c!771976 (toList!4343 lt!1699771) (_2!28848 lt!1699794)))))))

(declare-fun b!4523807 () Bool)

(assert (=> b!4523807 (= e!2818561 (forall!10280 (t!357754 (ite c!771976 (toList!4343 lt!1699771) (_2!28848 lt!1699794))) (ite c!771976 lambda!173063 lambda!173067)))))

(assert (= (and d!1394382 (not res!1883263)) b!4523806))

(assert (= (and b!4523806 res!1883264) b!4523807))

(declare-fun b_lambda!155355 () Bool)

(assert (=> (not b_lambda!155355) (not b!4523806)))

(declare-fun m!5274721 () Bool)

(assert (=> b!4523806 m!5274721))

(declare-fun m!5274725 () Bool)

(assert (=> b!4523807 m!5274725))

(assert (=> bm!315158 d!1394382))

(declare-fun d!1394384 () Bool)

(assert (=> d!1394384 (= (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786)) (not (isEmpty!28680 (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786))))))

(declare-fun bs!858351 () Bool)

(assert (= bs!858351 d!1394384))

(assert (=> bs!858351 m!5273607))

(declare-fun m!5274731 () Bool)

(assert (=> bs!858351 m!5274731))

(assert (=> b!4523179 d!1394384))

(declare-fun b!4523811 () Bool)

(declare-fun e!2818564 () Option!11130)

(declare-fun e!2818565 () Option!11130)

(assert (=> b!4523811 (= e!2818564 e!2818565)))

(declare-fun c!772109 () Bool)

(assert (=> b!4523811 (= c!772109 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (not (= (_1!28848 (h!56528 (toList!4344 lm!1477))) lt!1699786))))))

(declare-fun d!1394388 () Bool)

(declare-fun c!772108 () Bool)

(assert (=> d!1394388 (= c!772108 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (= (_1!28848 (h!56528 (toList!4344 lm!1477))) lt!1699786)))))

(assert (=> d!1394388 (= (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786) e!2818564)))

(declare-fun b!4523812 () Bool)

(assert (=> b!4523812 (= e!2818565 (getValueByKey!1104 (t!357755 (toList!4344 lm!1477)) lt!1699786))))

(declare-fun b!4523810 () Bool)

(assert (=> b!4523810 (= e!2818564 (Some!11129 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun b!4523813 () Bool)

(assert (=> b!4523813 (= e!2818565 None!11129)))

(assert (= (and d!1394388 c!772108) b!4523810))

(assert (= (and d!1394388 (not c!772108)) b!4523811))

(assert (= (and b!4523811 c!772109) b!4523812))

(assert (= (and b!4523811 (not c!772109)) b!4523813))

(declare-fun m!5274737 () Bool)

(assert (=> b!4523812 m!5274737))

(assert (=> b!4523179 d!1394388))

(declare-fun d!1394392 () Bool)

(assert (=> d!1394392 (= (isDefined!8415 lt!1700033) (not (isEmpty!28678 lt!1700033)))))

(declare-fun bs!858352 () Bool)

(assert (= bs!858352 d!1394392))

(assert (=> bs!858352 m!5273545))

(assert (=> b!4523136 d!1394392))

(declare-fun d!1394394 () Bool)

(declare-fun res!1883267 () Bool)

(declare-fun e!2818566 () Bool)

(assert (=> d!1394394 (=> res!1883267 e!2818566)))

(assert (=> d!1394394 (= res!1883267 (not ((_ is Cons!50668) (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (=> d!1394394 (= (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477)))) e!2818566)))

(declare-fun b!4523814 () Bool)

(declare-fun e!2818567 () Bool)

(assert (=> b!4523814 (= e!2818566 e!2818567)))

(declare-fun res!1883268 () Bool)

(assert (=> b!4523814 (=> (not res!1883268) (not e!2818567))))

(assert (=> b!4523814 (= res!1883268 (not (containsKey!1800 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))))

(declare-fun b!4523815 () Bool)

(assert (=> b!4523815 (= e!2818567 (noDuplicateKeys!1168 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (= (and d!1394394 (not res!1883267)) b!4523814))

(assert (= (and b!4523814 res!1883268) b!4523815))

(declare-fun m!5274739 () Bool)

(assert (=> b!4523814 m!5274739))

(declare-fun m!5274741 () Bool)

(assert (=> b!4523815 m!5274741))

(assert (=> bs!858177 d!1394394))

(declare-fun d!1394396 () Bool)

(declare-fun res!1883269 () Bool)

(declare-fun e!2818568 () Bool)

(assert (=> d!1394396 (=> res!1883269 e!2818568)))

(assert (=> d!1394396 (= res!1883269 (and ((_ is Cons!50668) (t!357754 newBucket!178)) (= (_1!28847 (h!56527 (t!357754 newBucket!178))) (_1!28847 (h!56527 newBucket!178)))))))

(assert (=> d!1394396 (= (containsKey!1800 (t!357754 newBucket!178) (_1!28847 (h!56527 newBucket!178))) e!2818568)))

(declare-fun b!4523816 () Bool)

(declare-fun e!2818569 () Bool)

(assert (=> b!4523816 (= e!2818568 e!2818569)))

(declare-fun res!1883270 () Bool)

(assert (=> b!4523816 (=> (not res!1883270) (not e!2818569))))

(assert (=> b!4523816 (= res!1883270 ((_ is Cons!50668) (t!357754 newBucket!178)))))

(declare-fun b!4523817 () Bool)

(assert (=> b!4523817 (= e!2818569 (containsKey!1800 (t!357754 (t!357754 newBucket!178)) (_1!28847 (h!56527 newBucket!178))))))

(assert (= (and d!1394396 (not res!1883269)) b!4523816))

(assert (= (and b!4523816 res!1883270) b!4523817))

(declare-fun m!5274743 () Bool)

(assert (=> b!4523817 m!5274743))

(assert (=> b!4523146 d!1394396))

(declare-fun d!1394398 () Bool)

(assert (=> d!1394398 (= (isEmpty!28678 lt!1700033) (not ((_ is Some!11126) lt!1700033)))))

(assert (=> d!1393998 d!1394398))

(assert (=> d!1393998 d!1394066))

(declare-fun d!1394400 () Bool)

(declare-fun e!2818574 () Bool)

(assert (=> d!1394400 e!2818574))

(declare-fun res!1883275 () Bool)

(assert (=> d!1394400 (=> res!1883275 e!2818574)))

(declare-fun lt!1700466 () Bool)

(assert (=> d!1394400 (= res!1883275 (not lt!1700466))))

(declare-fun lt!1700465 () Bool)

(assert (=> d!1394400 (= lt!1700466 lt!1700465)))

(declare-fun lt!1700463 () Unit!95506)

(declare-fun e!2818575 () Unit!95506)

(assert (=> d!1394400 (= lt!1700463 e!2818575)))

(declare-fun c!772110 () Bool)

(assert (=> d!1394400 (= c!772110 lt!1700465)))

(assert (=> d!1394400 (= lt!1700465 (containsKey!1802 (toList!4344 lt!1700216) (_1!28848 lt!1699772)))))

(assert (=> d!1394400 (= (contains!13408 lt!1700216 (_1!28848 lt!1699772)) lt!1700466)))

(declare-fun b!4523822 () Bool)

(declare-fun lt!1700464 () Unit!95506)

(assert (=> b!4523822 (= e!2818575 lt!1700464)))

(assert (=> b!4523822 (= lt!1700464 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1700216) (_1!28848 lt!1699772)))))

(assert (=> b!4523822 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700216) (_1!28848 lt!1699772)))))

(declare-fun b!4523823 () Bool)

(declare-fun Unit!95621 () Unit!95506)

(assert (=> b!4523823 (= e!2818575 Unit!95621)))

(declare-fun b!4523824 () Bool)

(assert (=> b!4523824 (= e!2818574 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700216) (_1!28848 lt!1699772))))))

(assert (= (and d!1394400 c!772110) b!4523822))

(assert (= (and d!1394400 (not c!772110)) b!4523823))

(assert (= (and d!1394400 (not res!1883275)) b!4523824))

(declare-fun m!5274745 () Bool)

(assert (=> d!1394400 m!5274745))

(declare-fun m!5274749 () Bool)

(assert (=> b!4523822 m!5274749))

(assert (=> b!4523822 m!5273997))

(assert (=> b!4523822 m!5273997))

(declare-fun m!5274751 () Bool)

(assert (=> b!4523822 m!5274751))

(assert (=> b!4523824 m!5273997))

(assert (=> b!4523824 m!5273997))

(assert (=> b!4523824 m!5274751))

(assert (=> d!1394118 d!1394400))

(declare-fun b!4523828 () Bool)

(declare-fun e!2818578 () Option!11130)

(declare-fun e!2818579 () Option!11130)

(assert (=> b!4523828 (= e!2818578 e!2818579)))

(declare-fun c!772112 () Bool)

(assert (=> b!4523828 (= c!772112 (and ((_ is Cons!50669) lt!1700217) (not (= (_1!28848 (h!56528 lt!1700217)) (_1!28848 lt!1699772)))))))

(declare-fun d!1394404 () Bool)

(declare-fun c!772111 () Bool)

(assert (=> d!1394404 (= c!772111 (and ((_ is Cons!50669) lt!1700217) (= (_1!28848 (h!56528 lt!1700217)) (_1!28848 lt!1699772))))))

(assert (=> d!1394404 (= (getValueByKey!1104 lt!1700217 (_1!28848 lt!1699772)) e!2818578)))

(declare-fun b!4523829 () Bool)

(assert (=> b!4523829 (= e!2818579 (getValueByKey!1104 (t!357755 lt!1700217) (_1!28848 lt!1699772)))))

(declare-fun b!4523827 () Bool)

(assert (=> b!4523827 (= e!2818578 (Some!11129 (_2!28848 (h!56528 lt!1700217))))))

(declare-fun b!4523830 () Bool)

(assert (=> b!4523830 (= e!2818579 None!11129)))

(assert (= (and d!1394404 c!772111) b!4523827))

(assert (= (and d!1394404 (not c!772111)) b!4523828))

(assert (= (and b!4523828 c!772112) b!4523829))

(assert (= (and b!4523828 (not c!772112)) b!4523830))

(declare-fun m!5274755 () Bool)

(assert (=> b!4523829 m!5274755))

(assert (=> d!1394118 d!1394404))

(declare-fun d!1394408 () Bool)

(assert (=> d!1394408 (= (getValueByKey!1104 lt!1700217 (_1!28848 lt!1699772)) (Some!11129 (_2!28848 lt!1699772)))))

(declare-fun lt!1700468 () Unit!95506)

(assert (=> d!1394408 (= lt!1700468 (choose!29594 lt!1700217 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(declare-fun e!2818580 () Bool)

(assert (=> d!1394408 e!2818580))

(declare-fun res!1883278 () Bool)

(assert (=> d!1394408 (=> (not res!1883278) (not e!2818580))))

(assert (=> d!1394408 (= res!1883278 (isStrictlySorted!436 lt!1700217))))

(assert (=> d!1394408 (= (lemmaContainsTupThenGetReturnValue!686 lt!1700217 (_1!28848 lt!1699772) (_2!28848 lt!1699772)) lt!1700468)))

(declare-fun b!4523831 () Bool)

(declare-fun res!1883279 () Bool)

(assert (=> b!4523831 (=> (not res!1883279) (not e!2818580))))

(assert (=> b!4523831 (= res!1883279 (containsKey!1802 lt!1700217 (_1!28848 lt!1699772)))))

(declare-fun b!4523832 () Bool)

(assert (=> b!4523832 (= e!2818580 (contains!13410 lt!1700217 (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772))))))

(assert (= (and d!1394408 res!1883278) b!4523831))

(assert (= (and b!4523831 res!1883279) b!4523832))

(assert (=> d!1394408 m!5273991))

(declare-fun m!5274757 () Bool)

(assert (=> d!1394408 m!5274757))

(declare-fun m!5274759 () Bool)

(assert (=> d!1394408 m!5274759))

(declare-fun m!5274761 () Bool)

(assert (=> b!4523831 m!5274761))

(declare-fun m!5274763 () Bool)

(assert (=> b!4523832 m!5274763))

(assert (=> d!1394118 d!1394408))

(declare-fun b!4523835 () Bool)

(declare-fun e!2818584 () Bool)

(declare-fun lt!1700469 () List!50793)

(assert (=> b!4523835 (= e!2818584 (contains!13410 lt!1700469 (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772))))))

(declare-fun b!4523836 () Bool)

(declare-fun e!2818586 () List!50793)

(declare-fun call!315220 () List!50793)

(assert (=> b!4523836 (= e!2818586 call!315220)))

(declare-fun b!4523837 () Bool)

(declare-fun e!2818587 () List!50793)

(assert (=> b!4523837 (= e!2818586 e!2818587)))

(declare-fun c!772116 () Bool)

(assert (=> b!4523837 (= c!772116 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (= (_1!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 lt!1699772))))))

(declare-fun bm!315214 () Bool)

(declare-fun call!315219 () List!50793)

(assert (=> bm!315214 (= call!315219 call!315220)))

(declare-fun d!1394412 () Bool)

(assert (=> d!1394412 e!2818584))

(declare-fun res!1883283 () Bool)

(assert (=> d!1394412 (=> (not res!1883283) (not e!2818584))))

(assert (=> d!1394412 (= res!1883283 (isStrictlySorted!436 lt!1700469))))

(assert (=> d!1394412 (= lt!1700469 e!2818586)))

(declare-fun c!772114 () Bool)

(assert (=> d!1394412 (= c!772114 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (bvslt (_1!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 lt!1699772))))))

(assert (=> d!1394412 (isStrictlySorted!436 (toList!4344 lm!1477))))

(assert (=> d!1394412 (= (insertStrictlySorted!414 (toList!4344 lm!1477) (_1!28848 lt!1699772) (_2!28848 lt!1699772)) lt!1700469)))

(declare-fun b!4523838 () Bool)

(declare-fun res!1883282 () Bool)

(assert (=> b!4523838 (=> (not res!1883282) (not e!2818584))))

(assert (=> b!4523838 (= res!1883282 (containsKey!1802 lt!1700469 (_1!28848 lt!1699772)))))

(declare-fun b!4523839 () Bool)

(declare-fun e!2818585 () List!50793)

(declare-fun call!315221 () List!50793)

(assert (=> b!4523839 (= e!2818585 call!315221)))

(declare-fun b!4523840 () Bool)

(declare-fun c!772113 () Bool)

(assert (=> b!4523840 (= c!772113 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (bvsgt (_1!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 lt!1699772))))))

(assert (=> b!4523840 (= e!2818587 e!2818585)))

(declare-fun b!4523841 () Bool)

(assert (=> b!4523841 (= e!2818585 call!315221)))

(declare-fun b!4523842 () Bool)

(assert (=> b!4523842 (= e!2818587 call!315219)))

(declare-fun e!2818583 () List!50793)

(declare-fun bm!315215 () Bool)

(assert (=> bm!315215 (= call!315220 ($colon$colon!939 e!2818583 (ite c!772114 (h!56528 (toList!4344 lm!1477)) (tuple2!51109 (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))))

(declare-fun c!772115 () Bool)

(assert (=> bm!315215 (= c!772115 c!772114)))

(declare-fun b!4523843 () Bool)

(assert (=> b!4523843 (= e!2818583 (ite c!772116 (t!357755 (toList!4344 lm!1477)) (ite c!772113 (Cons!50669 (h!56528 (toList!4344 lm!1477)) (t!357755 (toList!4344 lm!1477))) Nil!50669)))))

(declare-fun b!4523844 () Bool)

(assert (=> b!4523844 (= e!2818583 (insertStrictlySorted!414 (t!357755 (toList!4344 lm!1477)) (_1!28848 lt!1699772) (_2!28848 lt!1699772)))))

(declare-fun bm!315216 () Bool)

(assert (=> bm!315216 (= call!315221 call!315219)))

(assert (= (and d!1394412 c!772114) b!4523836))

(assert (= (and d!1394412 (not c!772114)) b!4523837))

(assert (= (and b!4523837 c!772116) b!4523842))

(assert (= (and b!4523837 (not c!772116)) b!4523840))

(assert (= (and b!4523840 c!772113) b!4523841))

(assert (= (and b!4523840 (not c!772113)) b!4523839))

(assert (= (or b!4523841 b!4523839) bm!315216))

(assert (= (or b!4523842 bm!315216) bm!315214))

(assert (= (or b!4523836 bm!315214) bm!315215))

(assert (= (and bm!315215 c!772115) b!4523844))

(assert (= (and bm!315215 (not c!772115)) b!4523843))

(assert (= (and d!1394412 res!1883283) b!4523838))

(assert (= (and b!4523838 res!1883282) b!4523835))

(declare-fun m!5274779 () Bool)

(assert (=> b!4523838 m!5274779))

(declare-fun m!5274783 () Bool)

(assert (=> b!4523844 m!5274783))

(declare-fun m!5274785 () Bool)

(assert (=> b!4523835 m!5274785))

(declare-fun m!5274787 () Bool)

(assert (=> bm!315215 m!5274787))

(declare-fun m!5274789 () Bool)

(assert (=> d!1394412 m!5274789))

(assert (=> d!1394412 m!5273505))

(assert (=> d!1394118 d!1394412))

(declare-fun d!1394422 () Bool)

(declare-fun res!1883292 () Bool)

(declare-fun e!2818596 () Bool)

(assert (=> d!1394422 (=> res!1883292 e!2818596)))

(declare-fun e!2818597 () Bool)

(assert (=> d!1394422 (= res!1883292 e!2818597)))

(declare-fun res!1883294 () Bool)

(assert (=> d!1394422 (=> (not res!1883294) (not e!2818597))))

(assert (=> d!1394422 (= res!1883294 ((_ is Cons!50669) (t!357755 (toList!4344 lt!1699792))))))

(assert (=> d!1394422 (= (containsKeyBiggerList!148 (t!357755 (toList!4344 lt!1699792)) key!3287) e!2818596)))

(declare-fun b!4523853 () Bool)

(assert (=> b!4523853 (= e!2818597 (containsKey!1800 (_2!28848 (h!56528 (t!357755 (toList!4344 lt!1699792)))) key!3287))))

(declare-fun b!4523854 () Bool)

(declare-fun e!2818598 () Bool)

(assert (=> b!4523854 (= e!2818596 e!2818598)))

(declare-fun res!1883293 () Bool)

(assert (=> b!4523854 (=> (not res!1883293) (not e!2818598))))

(assert (=> b!4523854 (= res!1883293 ((_ is Cons!50669) (t!357755 (toList!4344 lt!1699792))))))

(declare-fun b!4523855 () Bool)

(assert (=> b!4523855 (= e!2818598 (containsKeyBiggerList!148 (t!357755 (t!357755 (toList!4344 lt!1699792))) key!3287))))

(assert (= (and d!1394422 res!1883294) b!4523853))

(assert (= (and d!1394422 (not res!1883292)) b!4523854))

(assert (= (and b!4523854 res!1883293) b!4523855))

(declare-fun m!5274795 () Bool)

(assert (=> b!4523853 m!5274795))

(declare-fun m!5274797 () Bool)

(assert (=> b!4523855 m!5274797))

(assert (=> b!4523096 d!1394422))

(assert (=> d!1394072 d!1394276))

(declare-fun d!1394426 () Bool)

(declare-fun c!772117 () Bool)

(assert (=> d!1394426 (= c!772117 ((_ is Nil!50668) (toList!4343 lt!1699787)))))

(declare-fun e!2818599 () (InoxSet tuple2!51106))

(assert (=> d!1394426 (= (content!8374 (toList!4343 lt!1699787)) e!2818599)))

(declare-fun b!4523856 () Bool)

(assert (=> b!4523856 (= e!2818599 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523857 () Bool)

(assert (=> b!4523857 (= e!2818599 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699787)) true) (content!8374 (t!357754 (toList!4343 lt!1699787)))))))

(assert (= (and d!1394426 c!772117) b!4523856))

(assert (= (and d!1394426 (not c!772117)) b!4523857))

(declare-fun m!5274799 () Bool)

(assert (=> b!4523857 m!5274799))

(declare-fun m!5274801 () Bool)

(assert (=> b!4523857 m!5274801))

(assert (=> d!1394072 d!1394426))

(declare-fun d!1394428 () Bool)

(assert (=> d!1394428 (= (invariantList!1023 (toList!4343 lt!1700139)) (noDuplicatedKeys!264 (toList!4343 lt!1700139)))))

(declare-fun bs!858354 () Bool)

(assert (= bs!858354 d!1394428))

(declare-fun m!5274803 () Bool)

(assert (=> bs!858354 m!5274803))

(assert (=> b!4523258 d!1394428))

(declare-fun b!4523859 () Bool)

(declare-fun e!2818600 () Option!11130)

(declare-fun e!2818601 () Option!11130)

(assert (=> b!4523859 (= e!2818600 e!2818601)))

(declare-fun c!772119 () Bool)

(assert (=> b!4523859 (= c!772119 (and ((_ is Cons!50669) (toList!4344 lt!1700216)) (not (= (_1!28848 (h!56528 (toList!4344 lt!1700216))) (_1!28848 lt!1699772)))))))

(declare-fun d!1394430 () Bool)

(declare-fun c!772118 () Bool)

(assert (=> d!1394430 (= c!772118 (and ((_ is Cons!50669) (toList!4344 lt!1700216)) (= (_1!28848 (h!56528 (toList!4344 lt!1700216))) (_1!28848 lt!1699772))))))

(assert (=> d!1394430 (= (getValueByKey!1104 (toList!4344 lt!1700216) (_1!28848 lt!1699772)) e!2818600)))

(declare-fun b!4523860 () Bool)

(assert (=> b!4523860 (= e!2818601 (getValueByKey!1104 (t!357755 (toList!4344 lt!1700216)) (_1!28848 lt!1699772)))))

(declare-fun b!4523858 () Bool)

(assert (=> b!4523858 (= e!2818600 (Some!11129 (_2!28848 (h!56528 (toList!4344 lt!1700216)))))))

(declare-fun b!4523861 () Bool)

(assert (=> b!4523861 (= e!2818601 None!11129)))

(assert (= (and d!1394430 c!772118) b!4523858))

(assert (= (and d!1394430 (not c!772118)) b!4523859))

(assert (= (and b!4523859 c!772119) b!4523860))

(assert (= (and b!4523859 (not c!772119)) b!4523861))

(declare-fun m!5274805 () Bool)

(assert (=> b!4523860 m!5274805))

(assert (=> b!4523337 d!1394430))

(declare-fun d!1394432 () Bool)

(declare-fun c!772120 () Bool)

(assert (=> d!1394432 (= c!772120 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun e!2818602 () (InoxSet tuple2!51106))

(assert (=> d!1394432 (= (content!8374 (_2!28848 (h!56528 (toList!4344 lm!1477)))) e!2818602)))

(declare-fun b!4523862 () Bool)

(assert (=> b!4523862 (= e!2818602 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523863 () Bool)

(assert (=> b!4523863 (= e!2818602 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))) true) (content!8374 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))))

(assert (= (and d!1394432 c!772120) b!4523862))

(assert (= (and d!1394432 (not c!772120)) b!4523863))

(declare-fun m!5274807 () Bool)

(assert (=> b!4523863 m!5274807))

(declare-fun m!5274809 () Bool)

(assert (=> b!4523863 m!5274809))

(assert (=> d!1393968 d!1394432))

(declare-fun bs!858358 () Bool)

(declare-fun b!4523864 () Bool)

(assert (= bs!858358 (and b!4523864 b!4523254)))

(declare-fun lambda!173122 () Int)

(assert (=> bs!858358 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699771) (= lambda!173122 lambda!173063))))

(declare-fun bs!858361 () Bool)

(assert (= bs!858361 (and b!4523864 d!1394016)))

(assert (=> bs!858361 (not (= lambda!173122 lambda!173040))))

(declare-fun bs!858363 () Bool)

(assert (= bs!858363 (and b!4523864 d!1394204)))

(assert (=> bs!858363 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700292) (= lambda!173122 lambda!173103))))

(declare-fun bs!858365 () Bool)

(assert (= bs!858365 (and b!4523864 b!4523057)))

(assert (=> bs!858365 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699770) (= lambda!173122 lambda!172995))))

(declare-fun bs!858367 () Bool)

(assert (= bs!858367 (and b!4523864 b!4523505)))

(assert (=> bs!858367 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173122 lambda!173099))))

(declare-fun bs!858369 () Bool)

(assert (= bs!858369 (and b!4523864 d!1394260)))

(assert (=> bs!858369 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700142) (= lambda!173122 lambda!173115))))

(declare-fun bs!858371 () Bool)

(assert (= bs!858371 (and b!4523864 d!1393892)))

(assert (=> bs!858371 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699952) (= lambda!173122 lambda!172998))))

(declare-fun bs!858373 () Bool)

(assert (= bs!858373 (and b!4523864 b!4522898)))

(assert (=> bs!858373 (not (= lambda!173122 lambda!172949))))

(assert (=> bs!858367 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700295) (= lambda!173122 lambda!173102))))

(declare-fun bs!858376 () Bool)

(assert (= bs!858376 (and b!4523864 b!4523257)))

(assert (=> bs!858376 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700142) (= lambda!173122 lambda!173067))))

(declare-fun bs!858379 () Bool)

(assert (= bs!858379 (and b!4523864 b!4523502)))

(assert (=> bs!858379 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173122 lambda!173098))))

(assert (=> bs!858376 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699771) (= lambda!173122 lambda!173066))))

(declare-fun bs!858381 () Bool)

(assert (= bs!858381 (and b!4523864 d!1394074)))

(assert (=> bs!858381 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700139) (= lambda!173122 lambda!173069))))

(declare-fun bs!858382 () Bool)

(assert (= bs!858382 (and b!4523864 b!4523060)))

(assert (=> bs!858382 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699770) (= lambda!173122 lambda!172996))))

(assert (=> bs!858382 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699955) (= lambda!173122 lambda!172997))))

(assert (=> b!4523864 true))

(declare-fun bs!858385 () Bool)

(declare-fun b!4523867 () Bool)

(assert (= bs!858385 (and b!4523867 b!4523254)))

(declare-fun lambda!173123 () Int)

(assert (=> bs!858385 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699771) (= lambda!173123 lambda!173063))))

(declare-fun bs!858386 () Bool)

(assert (= bs!858386 (and b!4523867 d!1394016)))

(assert (=> bs!858386 (not (= lambda!173123 lambda!173040))))

(declare-fun bs!858387 () Bool)

(assert (= bs!858387 (and b!4523867 d!1394204)))

(assert (=> bs!858387 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700292) (= lambda!173123 lambda!173103))))

(declare-fun bs!858388 () Bool)

(assert (= bs!858388 (and b!4523867 b!4523864)))

(assert (=> bs!858388 (= lambda!173123 lambda!173122)))

(declare-fun bs!858389 () Bool)

(assert (= bs!858389 (and b!4523867 b!4523057)))

(assert (=> bs!858389 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699770) (= lambda!173123 lambda!172995))))

(declare-fun bs!858390 () Bool)

(assert (= bs!858390 (and b!4523867 b!4523505)))

(assert (=> bs!858390 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173123 lambda!173099))))

(declare-fun bs!858391 () Bool)

(assert (= bs!858391 (and b!4523867 d!1394260)))

(assert (=> bs!858391 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700142) (= lambda!173123 lambda!173115))))

(declare-fun bs!858392 () Bool)

(assert (= bs!858392 (and b!4523867 d!1393892)))

(assert (=> bs!858392 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699952) (= lambda!173123 lambda!172998))))

(declare-fun bs!858393 () Bool)

(assert (= bs!858393 (and b!4523867 b!4522898)))

(assert (=> bs!858393 (not (= lambda!173123 lambda!172949))))

(assert (=> bs!858390 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700295) (= lambda!173123 lambda!173102))))

(declare-fun bs!858394 () Bool)

(assert (= bs!858394 (and b!4523867 b!4523257)))

(assert (=> bs!858394 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700142) (= lambda!173123 lambda!173067))))

(declare-fun bs!858395 () Bool)

(assert (= bs!858395 (and b!4523867 b!4523502)))

(assert (=> bs!858395 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173123 lambda!173098))))

(assert (=> bs!858394 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699771) (= lambda!173123 lambda!173066))))

(declare-fun bs!858397 () Bool)

(assert (= bs!858397 (and b!4523867 d!1394074)))

(assert (=> bs!858397 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700139) (= lambda!173123 lambda!173069))))

(declare-fun bs!858398 () Bool)

(assert (= bs!858398 (and b!4523867 b!4523060)))

(assert (=> bs!858398 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699770) (= lambda!173123 lambda!172996))))

(assert (=> bs!858398 (= (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1699955) (= lambda!173123 lambda!172997))))

(assert (=> b!4523867 true))

(declare-fun lt!1700482 () ListMap!3605)

(declare-fun lambda!173124 () Int)

(assert (=> bs!858385 (= (= lt!1700482 lt!1699771) (= lambda!173124 lambda!173063))))

(assert (=> bs!858386 (not (= lambda!173124 lambda!173040))))

(assert (=> bs!858387 (= (= lt!1700482 lt!1700292) (= lambda!173124 lambda!173103))))

(assert (=> bs!858389 (= (= lt!1700482 lt!1699770) (= lambda!173124 lambda!172995))))

(assert (=> bs!858390 (= (= lt!1700482 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173124 lambda!173099))))

(assert (=> bs!858391 (= (= lt!1700482 lt!1700142) (= lambda!173124 lambda!173115))))

(assert (=> bs!858392 (= (= lt!1700482 lt!1699952) (= lambda!173124 lambda!172998))))

(assert (=> bs!858393 (not (= lambda!173124 lambda!172949))))

(assert (=> b!4523867 (= (= lt!1700482 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173124 lambda!173123))))

(assert (=> bs!858388 (= (= lt!1700482 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173124 lambda!173122))))

(assert (=> bs!858390 (= (= lt!1700482 lt!1700295) (= lambda!173124 lambda!173102))))

(assert (=> bs!858394 (= (= lt!1700482 lt!1700142) (= lambda!173124 lambda!173067))))

(assert (=> bs!858395 (= (= lt!1700482 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173124 lambda!173098))))

(assert (=> bs!858394 (= (= lt!1700482 lt!1699771) (= lambda!173124 lambda!173066))))

(assert (=> bs!858397 (= (= lt!1700482 lt!1700139) (= lambda!173124 lambda!173069))))

(assert (=> bs!858398 (= (= lt!1700482 lt!1699770) (= lambda!173124 lambda!172996))))

(assert (=> bs!858398 (= (= lt!1700482 lt!1699955) (= lambda!173124 lambda!172997))))

(assert (=> b!4523867 true))

(declare-fun bs!858399 () Bool)

(declare-fun d!1394436 () Bool)

(assert (= bs!858399 (and d!1394436 b!4523254)))

(declare-fun lt!1700479 () ListMap!3605)

(declare-fun lambda!173125 () Int)

(assert (=> bs!858399 (= (= lt!1700479 lt!1699771) (= lambda!173125 lambda!173063))))

(declare-fun bs!858400 () Bool)

(assert (= bs!858400 (and d!1394436 d!1394016)))

(assert (=> bs!858400 (not (= lambda!173125 lambda!173040))))

(declare-fun bs!858401 () Bool)

(assert (= bs!858401 (and d!1394436 d!1394204)))

(assert (=> bs!858401 (= (= lt!1700479 lt!1700292) (= lambda!173125 lambda!173103))))

(declare-fun bs!858402 () Bool)

(assert (= bs!858402 (and d!1394436 b!4523057)))

(assert (=> bs!858402 (= (= lt!1700479 lt!1699770) (= lambda!173125 lambda!172995))))

(declare-fun bs!858403 () Bool)

(assert (= bs!858403 (and d!1394436 b!4523505)))

(assert (=> bs!858403 (= (= lt!1700479 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173125 lambda!173099))))

(declare-fun bs!858404 () Bool)

(assert (= bs!858404 (and d!1394436 d!1394260)))

(assert (=> bs!858404 (= (= lt!1700479 lt!1700142) (= lambda!173125 lambda!173115))))

(declare-fun bs!858405 () Bool)

(assert (= bs!858405 (and d!1394436 d!1393892)))

(assert (=> bs!858405 (= (= lt!1700479 lt!1699952) (= lambda!173125 lambda!172998))))

(declare-fun bs!858406 () Bool)

(assert (= bs!858406 (and d!1394436 b!4523867)))

(assert (=> bs!858406 (= (= lt!1700479 lt!1700482) (= lambda!173125 lambda!173124))))

(declare-fun bs!858407 () Bool)

(assert (= bs!858407 (and d!1394436 b!4522898)))

(assert (=> bs!858407 (not (= lambda!173125 lambda!172949))))

(assert (=> bs!858406 (= (= lt!1700479 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173125 lambda!173123))))

(declare-fun bs!858408 () Bool)

(assert (= bs!858408 (and d!1394436 b!4523864)))

(assert (=> bs!858408 (= (= lt!1700479 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173125 lambda!173122))))

(assert (=> bs!858403 (= (= lt!1700479 lt!1700295) (= lambda!173125 lambda!173102))))

(declare-fun bs!858409 () Bool)

(assert (= bs!858409 (and d!1394436 b!4523257)))

(assert (=> bs!858409 (= (= lt!1700479 lt!1700142) (= lambda!173125 lambda!173067))))

(declare-fun bs!858410 () Bool)

(assert (= bs!858410 (and d!1394436 b!4523502)))

(assert (=> bs!858410 (= (= lt!1700479 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173125 lambda!173098))))

(assert (=> bs!858409 (= (= lt!1700479 lt!1699771) (= lambda!173125 lambda!173066))))

(declare-fun bs!858411 () Bool)

(assert (= bs!858411 (and d!1394436 d!1394074)))

(assert (=> bs!858411 (= (= lt!1700479 lt!1700139) (= lambda!173125 lambda!173069))))

(declare-fun bs!858412 () Bool)

(assert (= bs!858412 (and d!1394436 b!4523060)))

(assert (=> bs!858412 (= (= lt!1700479 lt!1699770) (= lambda!173125 lambda!172996))))

(assert (=> bs!858412 (= (= lt!1700479 lt!1699955) (= lambda!173125 lambda!172997))))

(assert (=> d!1394436 true))

(declare-fun call!315223 () Bool)

(declare-fun c!772121 () Bool)

(declare-fun bm!315217 () Bool)

(assert (=> bm!315217 (= call!315223 (forall!10280 (ite c!772121 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (t!357754 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))) (ite c!772121 lambda!173122 lambda!173124)))))

(declare-fun e!2818605 () ListMap!3605)

(assert (=> b!4523864 (= e!2818605 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))

(declare-fun lt!1700489 () Unit!95506)

(declare-fun call!315222 () Unit!95506)

(assert (=> b!4523864 (= lt!1700489 call!315222)))

(declare-fun call!315224 () Bool)

(assert (=> b!4523864 call!315224))

(declare-fun lt!1700486 () Unit!95506)

(assert (=> b!4523864 (= lt!1700486 lt!1700489)))

(assert (=> b!4523864 call!315223))

(declare-fun lt!1700491 () Unit!95506)

(declare-fun Unit!95632 () Unit!95506)

(assert (=> b!4523864 (= lt!1700491 Unit!95632)))

(declare-fun bm!315218 () Bool)

(assert (=> bm!315218 (= call!315224 (forall!10280 (ite c!772121 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (ite c!772121 lambda!173122 lambda!173124)))))

(declare-fun b!4523865 () Bool)

(declare-fun res!1883297 () Bool)

(declare-fun e!2818603 () Bool)

(assert (=> b!4523865 (=> (not res!1883297) (not e!2818603))))

(assert (=> b!4523865 (= res!1883297 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lambda!173125))))

(declare-fun b!4523866 () Bool)

(declare-fun e!2818604 () Bool)

(assert (=> b!4523866 (= e!2818604 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lambda!173124))))

(declare-fun bm!315219 () Bool)

(assert (=> bm!315219 (= call!315222 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))

(assert (=> b!4523867 (= e!2818605 lt!1700482)))

(declare-fun lt!1700481 () ListMap!3605)

(assert (=> b!4523867 (= lt!1700481 (+!1553 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))))

(assert (=> b!4523867 (= lt!1700482 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (+!1553 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))))

(declare-fun lt!1700490 () Unit!95506)

(assert (=> b!4523867 (= lt!1700490 call!315222)))

(assert (=> b!4523867 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lambda!173123)))

(declare-fun lt!1700492 () Unit!95506)

(assert (=> b!4523867 (= lt!1700492 lt!1700490)))

(assert (=> b!4523867 (forall!10280 (toList!4343 lt!1700481) lambda!173124)))

(declare-fun lt!1700473 () Unit!95506)

(declare-fun Unit!95633 () Unit!95506)

(assert (=> b!4523867 (= lt!1700473 Unit!95633)))

(assert (=> b!4523867 call!315223))

(declare-fun lt!1700484 () Unit!95506)

(declare-fun Unit!95634 () Unit!95506)

(assert (=> b!4523867 (= lt!1700484 Unit!95634)))

(declare-fun lt!1700472 () Unit!95506)

(declare-fun Unit!95635 () Unit!95506)

(assert (=> b!4523867 (= lt!1700472 Unit!95635)))

(declare-fun lt!1700475 () Unit!95506)

(assert (=> b!4523867 (= lt!1700475 (forallContained!2532 (toList!4343 lt!1700481) lambda!173124 (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))))

(assert (=> b!4523867 (contains!13409 lt!1700481 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))))

(declare-fun lt!1700474 () Unit!95506)

(declare-fun Unit!95636 () Unit!95506)

(assert (=> b!4523867 (= lt!1700474 Unit!95636)))

(assert (=> b!4523867 (contains!13409 lt!1700482 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))))

(declare-fun lt!1700487 () Unit!95506)

(declare-fun Unit!95637 () Unit!95506)

(assert (=> b!4523867 (= lt!1700487 Unit!95637)))

(assert (=> b!4523867 call!315224))

(declare-fun lt!1700476 () Unit!95506)

(declare-fun Unit!95638 () Unit!95506)

(assert (=> b!4523867 (= lt!1700476 Unit!95638)))

(assert (=> b!4523867 (forall!10280 (toList!4343 lt!1700481) lambda!173124)))

(declare-fun lt!1700478 () Unit!95506)

(declare-fun Unit!95639 () Unit!95506)

(assert (=> b!4523867 (= lt!1700478 Unit!95639)))

(declare-fun lt!1700488 () Unit!95506)

(declare-fun Unit!95640 () Unit!95506)

(assert (=> b!4523867 (= lt!1700488 Unit!95640)))

(declare-fun lt!1700483 () Unit!95506)

(assert (=> b!4523867 (= lt!1700483 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700482 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))))

(assert (=> b!4523867 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lambda!173124)))

(declare-fun lt!1700477 () Unit!95506)

(assert (=> b!4523867 (= lt!1700477 lt!1700483)))

(assert (=> b!4523867 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lambda!173124)))

(declare-fun lt!1700480 () Unit!95506)

(declare-fun Unit!95642 () Unit!95506)

(assert (=> b!4523867 (= lt!1700480 Unit!95642)))

(declare-fun res!1883295 () Bool)

(assert (=> b!4523867 (= res!1883295 (forall!10280 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lambda!173124))))

(assert (=> b!4523867 (=> (not res!1883295) (not e!2818604))))

(assert (=> b!4523867 e!2818604))

(declare-fun lt!1700485 () Unit!95506)

(declare-fun Unit!95643 () Unit!95506)

(assert (=> b!4523867 (= lt!1700485 Unit!95643)))

(assert (=> d!1394436 e!2818603))

(declare-fun res!1883296 () Bool)

(assert (=> d!1394436 (=> (not res!1883296) (not e!2818603))))

(assert (=> d!1394436 (= res!1883296 (forall!10280 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lambda!173125))))

(assert (=> d!1394436 (= lt!1700479 e!2818605)))

(assert (=> d!1394436 (= c!772121 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))

(assert (=> d!1394436 (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))

(assert (=> d!1394436 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) lt!1700479)))

(declare-fun b!4523868 () Bool)

(assert (=> b!4523868 (= e!2818603 (invariantList!1023 (toList!4343 lt!1700479)))))

(assert (= (and d!1394436 c!772121) b!4523864))

(assert (= (and d!1394436 (not c!772121)) b!4523867))

(assert (= (and b!4523867 res!1883295) b!4523866))

(assert (= (or b!4523864 b!4523867) bm!315217))

(assert (= (or b!4523864 b!4523867) bm!315218))

(assert (= (or b!4523864 b!4523867) bm!315219))

(assert (= (and d!1394436 res!1883296) b!4523865))

(assert (= (and b!4523865 res!1883297) b!4523868))

(declare-fun m!5274841 () Bool)

(assert (=> b!4523867 m!5274841))

(declare-fun m!5274843 () Bool)

(assert (=> b!4523867 m!5274843))

(declare-fun m!5274845 () Bool)

(assert (=> b!4523867 m!5274845))

(declare-fun m!5274847 () Bool)

(assert (=> b!4523867 m!5274847))

(assert (=> b!4523867 m!5274847))

(declare-fun m!5274849 () Bool)

(assert (=> b!4523867 m!5274849))

(assert (=> b!4523867 m!5274849))

(declare-fun m!5274851 () Bool)

(assert (=> b!4523867 m!5274851))

(assert (=> b!4523867 m!5273675))

(declare-fun m!5274853 () Bool)

(assert (=> b!4523867 m!5274853))

(assert (=> b!4523867 m!5273675))

(assert (=> b!4523867 m!5274843))

(declare-fun m!5274855 () Bool)

(assert (=> b!4523867 m!5274855))

(declare-fun m!5274857 () Bool)

(assert (=> b!4523867 m!5274857))

(declare-fun m!5274859 () Bool)

(assert (=> b!4523867 m!5274859))

(declare-fun m!5274861 () Bool)

(assert (=> b!4523865 m!5274861))

(assert (=> b!4523866 m!5274847))

(declare-fun m!5274863 () Bool)

(assert (=> bm!315218 m!5274863))

(assert (=> bm!315219 m!5273675))

(declare-fun m!5274865 () Bool)

(assert (=> bm!315219 m!5274865))

(declare-fun m!5274867 () Bool)

(assert (=> bm!315217 m!5274867))

(declare-fun m!5274869 () Bool)

(assert (=> d!1394436 m!5274869))

(declare-fun m!5274871 () Bool)

(assert (=> d!1394436 m!5274871))

(declare-fun m!5274873 () Bool)

(assert (=> b!4523868 m!5274873))

(assert (=> b!4523193 d!1394436))

(declare-fun bs!858413 () Bool)

(declare-fun d!1394452 () Bool)

(assert (= bs!858413 (and d!1394452 d!1394104)))

(declare-fun lambda!173126 () Int)

(assert (=> bs!858413 (= lambda!173126 lambda!173072)))

(declare-fun bs!858414 () Bool)

(assert (= bs!858414 (and d!1394452 d!1394024)))

(assert (=> bs!858414 (= lambda!173126 lambda!173050)))

(declare-fun bs!858415 () Bool)

(assert (= bs!858415 (and d!1394452 d!1394100)))

(assert (=> bs!858415 (= lambda!173126 lambda!173071)))

(declare-fun bs!858416 () Bool)

(assert (= bs!858416 (and d!1394452 d!1394070)))

(assert (=> bs!858416 (not (= lambda!173126 lambda!173062))))

(declare-fun bs!858417 () Bool)

(assert (= bs!858417 (and d!1394452 d!1394110)))

(assert (=> bs!858417 (= lambda!173126 lambda!173076)))

(declare-fun bs!858418 () Bool)

(assert (= bs!858418 (and d!1394452 start!448016)))

(assert (=> bs!858418 (= lambda!173126 lambda!172947)))

(declare-fun bs!858419 () Bool)

(assert (= bs!858419 (and d!1394452 d!1394010)))

(assert (=> bs!858419 (= lambda!173126 lambda!173036)))

(declare-fun bs!858420 () Bool)

(assert (= bs!858420 (and d!1394452 b!4522898)))

(assert (=> bs!858420 (not (= lambda!173126 lambda!172948))))

(declare-fun bs!858421 () Bool)

(assert (= bs!858421 (and d!1394452 d!1394080)))

(assert (=> bs!858421 (= lambda!173126 lambda!173070)))

(declare-fun bs!858422 () Bool)

(assert (= bs!858422 (and d!1394452 d!1394054)))

(assert (=> bs!858422 (= lambda!173126 lambda!173059)))

(declare-fun bs!858423 () Bool)

(assert (= bs!858423 (and d!1394452 d!1394038)))

(assert (=> bs!858423 (= lambda!173126 lambda!173051)))

(declare-fun bs!858424 () Bool)

(assert (= bs!858424 (and d!1394452 d!1394106)))

(assert (=> bs!858424 (= lambda!173126 lambda!173075)))

(declare-fun bs!858425 () Bool)

(assert (= bs!858425 (and d!1394452 d!1394122)))

(assert (=> bs!858425 (= lambda!173126 lambda!173079)))

(declare-fun bs!858426 () Bool)

(assert (= bs!858426 (and d!1394452 d!1393990)))

(assert (=> bs!858426 (= lambda!173126 lambda!173001)))

(declare-fun lt!1700504 () ListMap!3605)

(assert (=> d!1394452 (invariantList!1023 (toList!4343 lt!1700504))))

(declare-fun e!2818617 () ListMap!3605)

(assert (=> d!1394452 (= lt!1700504 e!2818617)))

(declare-fun c!772129 () Bool)

(assert (=> d!1394452 (= c!772129 ((_ is Cons!50669) (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))

(assert (=> d!1394452 (forall!10281 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))) lambda!173126)))

(assert (=> d!1394452 (= (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) lt!1700504)))

(declare-fun b!4523887 () Bool)

(assert (=> b!4523887 (= e!2818617 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))))

(declare-fun b!4523888 () Bool)

(assert (=> b!4523888 (= e!2818617 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394452 c!772129) b!4523887))

(assert (= (and d!1394452 (not c!772129)) b!4523888))

(declare-fun m!5274875 () Bool)

(assert (=> d!1394452 m!5274875))

(declare-fun m!5274877 () Bool)

(assert (=> d!1394452 m!5274877))

(declare-fun m!5274879 () Bool)

(assert (=> b!4523887 m!5274879))

(assert (=> b!4523887 m!5274879))

(declare-fun m!5274881 () Bool)

(assert (=> b!4523887 m!5274881))

(assert (=> b!4523193 d!1394452))

(declare-fun d!1394454 () Bool)

(declare-fun lt!1700505 () Bool)

(assert (=> d!1394454 (= lt!1700505 (select (content!8376 (keys!17608 lt!1699768)) key!3287))))

(declare-fun e!2818618 () Bool)

(assert (=> d!1394454 (= lt!1700505 e!2818618)))

(declare-fun res!1883302 () Bool)

(assert (=> d!1394454 (=> (not res!1883302) (not e!2818618))))

(assert (=> d!1394454 (= res!1883302 ((_ is Cons!50671) (keys!17608 lt!1699768)))))

(assert (=> d!1394454 (= (contains!13413 (keys!17608 lt!1699768) key!3287) lt!1700505)))

(declare-fun b!4523889 () Bool)

(declare-fun e!2818619 () Bool)

(assert (=> b!4523889 (= e!2818618 e!2818619)))

(declare-fun res!1883303 () Bool)

(assert (=> b!4523889 (=> res!1883303 e!2818619)))

(assert (=> b!4523889 (= res!1883303 (= (h!56532 (keys!17608 lt!1699768)) key!3287))))

(declare-fun b!4523890 () Bool)

(assert (=> b!4523890 (= e!2818619 (contains!13413 (t!357757 (keys!17608 lt!1699768)) key!3287))))

(assert (= (and d!1394454 res!1883302) b!4523889))

(assert (= (and b!4523889 (not res!1883303)) b!4523890))

(assert (=> d!1394454 m!5273729))

(assert (=> d!1394454 m!5273731))

(declare-fun m!5274883 () Bool)

(assert (=> d!1394454 m!5274883))

(declare-fun m!5274885 () Bool)

(assert (=> b!4523890 m!5274885))

(assert (=> b!4523320 d!1394454))

(declare-fun bs!858427 () Bool)

(declare-fun b!4523892 () Bool)

(assert (= bs!858427 (and b!4523892 b!4523444)))

(declare-fun lambda!173127 () Int)

(assert (=> bs!858427 (= (= (toList!4343 lt!1699768) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173127 lambda!173084))))

(declare-fun bs!858428 () Bool)

(assert (= bs!858428 (and b!4523892 b!4523453)))

(assert (=> bs!858428 (= (= (toList!4343 lt!1699768) (toList!4343 lt!1699778)) (= lambda!173127 lambda!173086))))

(assert (=> b!4523892 true))

(declare-fun bs!858429 () Bool)

(declare-fun b!4523893 () Bool)

(assert (= bs!858429 (and b!4523893 b!4523445)))

(declare-fun lambda!173128 () Int)

(assert (=> bs!858429 (= lambda!173128 lambda!173085)))

(declare-fun bs!858430 () Bool)

(assert (= bs!858430 (and b!4523893 b!4523454)))

(assert (=> bs!858430 (= lambda!173128 lambda!173087)))

(declare-fun d!1394456 () Bool)

(declare-fun e!2818620 () Bool)

(assert (=> d!1394456 e!2818620))

(declare-fun res!1883305 () Bool)

(assert (=> d!1394456 (=> (not res!1883305) (not e!2818620))))

(declare-fun lt!1700506 () List!50795)

(assert (=> d!1394456 (= res!1883305 (noDuplicate!750 lt!1700506))))

(assert (=> d!1394456 (= lt!1700506 (getKeysList!471 (toList!4343 lt!1699768)))))

(assert (=> d!1394456 (= (keys!17608 lt!1699768) lt!1700506)))

(declare-fun b!4523891 () Bool)

(declare-fun res!1883304 () Bool)

(assert (=> b!4523891 (=> (not res!1883304) (not e!2818620))))

(assert (=> b!4523891 (= res!1883304 (= (length!356 lt!1700506) (length!357 (toList!4343 lt!1699768))))))

(declare-fun res!1883306 () Bool)

(assert (=> b!4523892 (=> (not res!1883306) (not e!2818620))))

(assert (=> b!4523892 (= res!1883306 (forall!10283 lt!1700506 lambda!173127))))

(assert (=> b!4523893 (= e!2818620 (= (content!8376 lt!1700506) (content!8376 (map!11145 (toList!4343 lt!1699768) lambda!173128))))))

(assert (= (and d!1394456 res!1883305) b!4523891))

(assert (= (and b!4523891 res!1883304) b!4523892))

(assert (= (and b!4523892 res!1883306) b!4523893))

(declare-fun m!5274887 () Bool)

(assert (=> d!1394456 m!5274887))

(assert (=> d!1394456 m!5273963))

(declare-fun m!5274889 () Bool)

(assert (=> b!4523891 m!5274889))

(declare-fun m!5274891 () Bool)

(assert (=> b!4523891 m!5274891))

(declare-fun m!5274893 () Bool)

(assert (=> b!4523892 m!5274893))

(declare-fun m!5274895 () Bool)

(assert (=> b!4523893 m!5274895))

(declare-fun m!5274897 () Bool)

(assert (=> b!4523893 m!5274897))

(assert (=> b!4523893 m!5274897))

(declare-fun m!5274899 () Bool)

(assert (=> b!4523893 m!5274899))

(assert (=> b!4523320 d!1394456))

(declare-fun d!1394458 () Bool)

(declare-fun lt!1700507 () List!50792)

(assert (=> d!1394458 (not (containsKey!1800 lt!1700507 key!3287))))

(declare-fun e!2818622 () List!50792)

(assert (=> d!1394458 (= lt!1700507 e!2818622)))

(declare-fun c!772130 () Bool)

(assert (=> d!1394458 (= c!772130 (and ((_ is Cons!50668) (t!357754 lt!1699789)) (= (_1!28847 (h!56527 (t!357754 lt!1699789))) key!3287)))))

(assert (=> d!1394458 (noDuplicateKeys!1168 (t!357754 lt!1699789))))

(assert (=> d!1394458 (= (removePairForKey!795 (t!357754 lt!1699789) key!3287) lt!1700507)))

(declare-fun b!4523896 () Bool)

(declare-fun e!2818621 () List!50792)

(assert (=> b!4523896 (= e!2818621 (Cons!50668 (h!56527 (t!357754 lt!1699789)) (removePairForKey!795 (t!357754 (t!357754 lt!1699789)) key!3287)))))

(declare-fun b!4523897 () Bool)

(assert (=> b!4523897 (= e!2818621 Nil!50668)))

(declare-fun b!4523895 () Bool)

(assert (=> b!4523895 (= e!2818622 e!2818621)))

(declare-fun c!772131 () Bool)

(assert (=> b!4523895 (= c!772131 ((_ is Cons!50668) (t!357754 lt!1699789)))))

(declare-fun b!4523894 () Bool)

(assert (=> b!4523894 (= e!2818622 (t!357754 (t!357754 lt!1699789)))))

(assert (= (and d!1394458 c!772130) b!4523894))

(assert (= (and d!1394458 (not c!772130)) b!4523895))

(assert (= (and b!4523895 c!772131) b!4523896))

(assert (= (and b!4523895 (not c!772131)) b!4523897))

(declare-fun m!5274901 () Bool)

(assert (=> d!1394458 m!5274901))

(declare-fun m!5274903 () Bool)

(assert (=> d!1394458 m!5274903))

(declare-fun m!5274905 () Bool)

(assert (=> b!4523896 m!5274905))

(assert (=> b!4523163 d!1394458))

(declare-fun lt!1700508 () Bool)

(declare-fun d!1394460 () Bool)

(assert (=> d!1394460 (= lt!1700508 (select (content!8374 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(declare-fun e!2818624 () Bool)

(assert (=> d!1394460 (= lt!1700508 e!2818624)))

(declare-fun res!1883308 () Bool)

(assert (=> d!1394460 (=> (not res!1883308) (not e!2818624))))

(assert (=> d!1394460 (= res!1883308 ((_ is Cons!50668) (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (=> d!1394460 (= (contains!13411 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))) lt!1700508)))

(declare-fun b!4523898 () Bool)

(declare-fun e!2818623 () Bool)

(assert (=> b!4523898 (= e!2818624 e!2818623)))

(declare-fun res!1883307 () Bool)

(assert (=> b!4523898 (=> res!1883307 e!2818623)))

(assert (=> b!4523898 (= res!1883307 (= (h!56527 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(declare-fun b!4523899 () Bool)

(assert (=> b!4523899 (= e!2818623 (contains!13411 (t!357754 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (tuple2!51107 key!3287 (_2!28847 (get!16604 lt!1699781)))))))

(assert (= (and d!1394460 res!1883308) b!4523898))

(assert (= (and b!4523898 (not res!1883307)) b!4523899))

(assert (=> d!1394460 m!5274809))

(declare-fun m!5274907 () Bool)

(assert (=> d!1394460 m!5274907))

(declare-fun m!5274909 () Bool)

(assert (=> b!4523899 m!5274909))

(assert (=> b!4523069 d!1394460))

(declare-fun b!4523901 () Bool)

(declare-fun e!2818625 () Option!11130)

(declare-fun e!2818626 () Option!11130)

(assert (=> b!4523901 (= e!2818625 e!2818626)))

(declare-fun c!772133 () Bool)

(assert (=> b!4523901 (= c!772133 (and ((_ is Cons!50669) (toList!4344 lt!1700129)) (not (= (_1!28848 (h!56528 (toList!4344 lt!1700129))) (_1!28848 lt!1699794)))))))

(declare-fun d!1394462 () Bool)

(declare-fun c!772132 () Bool)

(assert (=> d!1394462 (= c!772132 (and ((_ is Cons!50669) (toList!4344 lt!1700129)) (= (_1!28848 (h!56528 (toList!4344 lt!1700129))) (_1!28848 lt!1699794))))))

(assert (=> d!1394462 (= (getValueByKey!1104 (toList!4344 lt!1700129) (_1!28848 lt!1699794)) e!2818625)))

(declare-fun b!4523902 () Bool)

(assert (=> b!4523902 (= e!2818626 (getValueByKey!1104 (t!357755 (toList!4344 lt!1700129)) (_1!28848 lt!1699794)))))

(declare-fun b!4523900 () Bool)

(assert (=> b!4523900 (= e!2818625 (Some!11129 (_2!28848 (h!56528 (toList!4344 lt!1700129)))))))

(declare-fun b!4523903 () Bool)

(assert (=> b!4523903 (= e!2818626 None!11129)))

(assert (= (and d!1394462 c!772132) b!4523900))

(assert (= (and d!1394462 (not c!772132)) b!4523901))

(assert (= (and b!4523901 c!772133) b!4523902))

(assert (= (and b!4523901 (not c!772133)) b!4523903))

(declare-fun m!5274911 () Bool)

(assert (=> b!4523902 m!5274911))

(assert (=> b!4523249 d!1394462))

(declare-fun d!1394464 () Bool)

(declare-fun res!1883309 () Bool)

(declare-fun e!2818627 () Bool)

(assert (=> d!1394464 (=> res!1883309 e!2818627)))

(assert (=> d!1394464 (= res!1883309 (not ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> d!1394464 (= (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699794))) e!2818627)))

(declare-fun b!4523904 () Bool)

(declare-fun e!2818628 () Bool)

(assert (=> b!4523904 (= e!2818627 e!2818628)))

(declare-fun res!1883310 () Bool)

(assert (=> b!4523904 (=> (not res!1883310) (not e!2818628))))

(assert (=> b!4523904 (= res!1883310 (not (containsKey!1800 (t!357754 (t!357754 (_2!28848 lt!1699794))) (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))))

(declare-fun b!4523905 () Bool)

(assert (=> b!4523905 (= e!2818628 (noDuplicateKeys!1168 (t!357754 (t!357754 (_2!28848 lt!1699794)))))))

(assert (= (and d!1394464 (not res!1883309)) b!4523904))

(assert (= (and b!4523904 res!1883310) b!4523905))

(declare-fun m!5274913 () Bool)

(assert (=> b!4523904 m!5274913))

(declare-fun m!5274915 () Bool)

(assert (=> b!4523905 m!5274915))

(assert (=> b!4523252 d!1394464))

(assert (=> b!4523314 d!1394164))

(declare-fun d!1394466 () Bool)

(declare-fun e!2818633 () Bool)

(assert (=> d!1394466 e!2818633))

(declare-fun res!1883312 () Bool)

(assert (=> d!1394466 (=> res!1883312 e!2818633)))

(declare-fun e!2818634 () Bool)

(assert (=> d!1394466 (= res!1883312 e!2818634)))

(declare-fun res!1883311 () Bool)

(assert (=> d!1394466 (=> (not res!1883311) (not e!2818634))))

(declare-fun lt!1700509 () Bool)

(assert (=> d!1394466 (= res!1883311 (not lt!1700509))))

(declare-fun lt!1700514 () Bool)

(assert (=> d!1394466 (= lt!1700509 lt!1700514)))

(declare-fun lt!1700511 () Unit!95506)

(declare-fun e!2818632 () Unit!95506)

(assert (=> d!1394466 (= lt!1700511 e!2818632)))

(declare-fun c!772134 () Bool)

(assert (=> d!1394466 (= c!772134 lt!1700514)))

(assert (=> d!1394466 (= lt!1700514 (containsKey!1804 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(assert (=> d!1394466 (= (contains!13409 (extractMap!1224 (toList!4344 lm!1477)) key!3287) lt!1700509)))

(declare-fun b!4523906 () Bool)

(declare-fun e!2818629 () List!50795)

(assert (=> b!4523906 (= e!2818629 (getKeysList!471 (toList!4343 (extractMap!1224 (toList!4344 lm!1477)))))))

(declare-fun b!4523907 () Bool)

(declare-fun e!2818630 () Unit!95506)

(assert (=> b!4523907 (= e!2818632 e!2818630)))

(declare-fun c!772136 () Bool)

(declare-fun call!315226 () Bool)

(assert (=> b!4523907 (= c!772136 call!315226)))

(declare-fun b!4523908 () Bool)

(declare-fun e!2818631 () Bool)

(assert (=> b!4523908 (= e!2818631 (contains!13413 (keys!17608 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(declare-fun b!4523909 () Bool)

(declare-fun Unit!95646 () Unit!95506)

(assert (=> b!4523909 (= e!2818630 Unit!95646)))

(declare-fun b!4523910 () Bool)

(assert (=> b!4523910 (= e!2818633 e!2818631)))

(declare-fun res!1883313 () Bool)

(assert (=> b!4523910 (=> (not res!1883313) (not e!2818631))))

(assert (=> b!4523910 (= res!1883313 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287)))))

(declare-fun b!4523911 () Bool)

(assert (=> b!4523911 (= e!2818634 (not (contains!13413 (keys!17608 (extractMap!1224 (toList!4344 lm!1477))) key!3287)))))

(declare-fun b!4523912 () Bool)

(assert (=> b!4523912 false))

(declare-fun lt!1700515 () Unit!95506)

(declare-fun lt!1700513 () Unit!95506)

(assert (=> b!4523912 (= lt!1700515 lt!1700513)))

(assert (=> b!4523912 (containsKey!1804 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287)))

(assert (=> b!4523912 (= lt!1700513 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(declare-fun Unit!95647 () Unit!95506)

(assert (=> b!4523912 (= e!2818630 Unit!95647)))

(declare-fun b!4523913 () Bool)

(assert (=> b!4523913 (= e!2818629 (keys!17608 (extractMap!1224 (toList!4344 lm!1477))))))

(declare-fun b!4523914 () Bool)

(declare-fun lt!1700512 () Unit!95506)

(assert (=> b!4523914 (= e!2818632 lt!1700512)))

(declare-fun lt!1700510 () Unit!95506)

(assert (=> b!4523914 (= lt!1700510 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(assert (=> b!4523914 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(declare-fun lt!1700516 () Unit!95506)

(assert (=> b!4523914 (= lt!1700516 lt!1700510)))

(assert (=> b!4523914 (= lt!1700512 (lemmaInListThenGetKeysListContains!467 (toList!4343 (extractMap!1224 (toList!4344 lm!1477))) key!3287))))

(assert (=> b!4523914 call!315226))

(declare-fun bm!315221 () Bool)

(assert (=> bm!315221 (= call!315226 (contains!13413 e!2818629 key!3287))))

(declare-fun c!772135 () Bool)

(assert (=> bm!315221 (= c!772135 c!772134)))

(assert (= (and d!1394466 c!772134) b!4523914))

(assert (= (and d!1394466 (not c!772134)) b!4523907))

(assert (= (and b!4523907 c!772136) b!4523912))

(assert (= (and b!4523907 (not c!772136)) b!4523909))

(assert (= (or b!4523914 b!4523907) bm!315221))

(assert (= (and bm!315221 c!772135) b!4523906))

(assert (= (and bm!315221 (not c!772135)) b!4523913))

(assert (= (and d!1394466 res!1883311) b!4523911))

(assert (= (and d!1394466 (not res!1883312)) b!4523910))

(assert (= (and b!4523910 res!1883313) b!4523908))

(declare-fun m!5274917 () Bool)

(assert (=> bm!315221 m!5274917))

(assert (=> b!4523913 m!5273161))

(declare-fun m!5274919 () Bool)

(assert (=> b!4523913 m!5274919))

(declare-fun m!5274921 () Bool)

(assert (=> b!4523910 m!5274921))

(assert (=> b!4523910 m!5274921))

(declare-fun m!5274923 () Bool)

(assert (=> b!4523910 m!5274923))

(declare-fun m!5274925 () Bool)

(assert (=> b!4523906 m!5274925))

(declare-fun m!5274927 () Bool)

(assert (=> b!4523912 m!5274927))

(declare-fun m!5274929 () Bool)

(assert (=> b!4523912 m!5274929))

(assert (=> b!4523911 m!5273161))

(assert (=> b!4523911 m!5274919))

(assert (=> b!4523911 m!5274919))

(declare-fun m!5274931 () Bool)

(assert (=> b!4523911 m!5274931))

(declare-fun m!5274933 () Bool)

(assert (=> b!4523914 m!5274933))

(assert (=> b!4523914 m!5274921))

(assert (=> b!4523914 m!5274921))

(assert (=> b!4523914 m!5274923))

(declare-fun m!5274935 () Bool)

(assert (=> b!4523914 m!5274935))

(assert (=> b!4523908 m!5273161))

(assert (=> b!4523908 m!5274919))

(assert (=> b!4523908 m!5274919))

(assert (=> b!4523908 m!5274931))

(assert (=> d!1394466 m!5274927))

(assert (=> d!1394122 d!1394466))

(assert (=> d!1394122 d!1394100))

(declare-fun d!1394468 () Bool)

(assert (=> d!1394468 (not (contains!13409 (extractMap!1224 (toList!4344 lm!1477)) key!3287))))

(assert (=> d!1394468 true))

(declare-fun _$26!380 () Unit!95506)

(assert (=> d!1394468 (= (choose!29591 lm!1477 key!3287 hashF!1107) _$26!380)))

(declare-fun bs!858431 () Bool)

(assert (= bs!858431 d!1394468))

(assert (=> bs!858431 m!5273161))

(assert (=> bs!858431 m!5273161))

(assert (=> bs!858431 m!5274013))

(assert (=> d!1394122 d!1394468))

(declare-fun d!1394470 () Bool)

(declare-fun res!1883314 () Bool)

(declare-fun e!2818635 () Bool)

(assert (=> d!1394470 (=> res!1883314 e!2818635)))

(assert (=> d!1394470 (= res!1883314 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394470 (= (forall!10281 (toList!4344 lm!1477) lambda!173079) e!2818635)))

(declare-fun b!4523915 () Bool)

(declare-fun e!2818636 () Bool)

(assert (=> b!4523915 (= e!2818635 e!2818636)))

(declare-fun res!1883315 () Bool)

(assert (=> b!4523915 (=> (not res!1883315) (not e!2818636))))

(assert (=> b!4523915 (= res!1883315 (dynLambda!21171 lambda!173079 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4523916 () Bool)

(assert (=> b!4523916 (= e!2818636 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173079))))

(assert (= (and d!1394470 (not res!1883314)) b!4523915))

(assert (= (and b!4523915 res!1883315) b!4523916))

(declare-fun b_lambda!155363 () Bool)

(assert (=> (not b_lambda!155363) (not b!4523915)))

(declare-fun m!5274937 () Bool)

(assert (=> b!4523915 m!5274937))

(declare-fun m!5274939 () Bool)

(assert (=> b!4523916 m!5274939))

(assert (=> d!1394122 d!1394470))

(declare-fun d!1394472 () Bool)

(assert (=> d!1394472 (= (tail!7749 (toList!4344 lm!1477)) (t!357755 (toList!4344 lm!1477)))))

(assert (=> d!1393978 d!1394472))

(declare-fun lt!1700517 () Bool)

(declare-fun d!1394474 () Bool)

(assert (=> d!1394474 (= lt!1700517 (select (content!8375 (toList!4344 lm!1477)) (tuple2!51109 hash!344 lt!1699789)))))

(declare-fun e!2818638 () Bool)

(assert (=> d!1394474 (= lt!1700517 e!2818638)))

(declare-fun res!1883317 () Bool)

(assert (=> d!1394474 (=> (not res!1883317) (not e!2818638))))

(assert (=> d!1394474 (= res!1883317 ((_ is Cons!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394474 (= (contains!13410 (toList!4344 lm!1477) (tuple2!51109 hash!344 lt!1699789)) lt!1700517)))

(declare-fun b!4523917 () Bool)

(declare-fun e!2818637 () Bool)

(assert (=> b!4523917 (= e!2818638 e!2818637)))

(declare-fun res!1883316 () Bool)

(assert (=> b!4523917 (=> res!1883316 e!2818637)))

(assert (=> b!4523917 (= res!1883316 (= (h!56528 (toList!4344 lm!1477)) (tuple2!51109 hash!344 lt!1699789)))))

(declare-fun b!4523918 () Bool)

(assert (=> b!4523918 (= e!2818637 (contains!13410 (t!357755 (toList!4344 lm!1477)) (tuple2!51109 hash!344 lt!1699789)))))

(assert (= (and d!1394474 res!1883317) b!4523917))

(assert (= (and b!4523917 (not res!1883316)) b!4523918))

(assert (=> d!1394474 m!5273577))

(declare-fun m!5274941 () Bool)

(assert (=> d!1394474 m!5274941))

(declare-fun m!5274943 () Bool)

(assert (=> b!4523918 m!5274943))

(assert (=> d!1394008 d!1394474))

(declare-fun d!1394476 () Bool)

(assert (=> d!1394476 (contains!13410 (toList!4344 lm!1477) (tuple2!51109 hash!344 lt!1699789))))

(assert (=> d!1394476 true))

(declare-fun _$14!1170 () Unit!95506)

(assert (=> d!1394476 (= (choose!29584 (toList!4344 lm!1477) hash!344 lt!1699789) _$14!1170)))

(declare-fun bs!858432 () Bool)

(assert (= bs!858432 d!1394476))

(assert (=> bs!858432 m!5273567))

(assert (=> d!1394008 d!1394476))

(declare-fun d!1394478 () Bool)

(declare-fun res!1883322 () Bool)

(declare-fun e!2818645 () Bool)

(assert (=> d!1394478 (=> res!1883322 e!2818645)))

(assert (=> d!1394478 (= res!1883322 (or ((_ is Nil!50669) (toList!4344 lm!1477)) ((_ is Nil!50669) (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394478 (= (isStrictlySorted!436 (toList!4344 lm!1477)) e!2818645)))

(declare-fun b!4523923 () Bool)

(declare-fun e!2818646 () Bool)

(assert (=> b!4523923 (= e!2818645 e!2818646)))

(declare-fun res!1883323 () Bool)

(assert (=> b!4523923 (=> (not res!1883323) (not e!2818646))))

(assert (=> b!4523923 (= res!1883323 (bvslt (_1!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))

(declare-fun b!4523924 () Bool)

(assert (=> b!4523924 (= e!2818646 (isStrictlySorted!436 (t!357755 (toList!4344 lm!1477))))))

(assert (= (and d!1394478 (not res!1883322)) b!4523923))

(assert (= (and b!4523923 res!1883323) b!4523924))

(declare-fun m!5274945 () Bool)

(assert (=> b!4523924 m!5274945))

(assert (=> d!1394008 d!1394478))

(declare-fun d!1394480 () Bool)

(assert (=> d!1394480 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699778) key!3287))))

(declare-fun lt!1700520 () Unit!95506)

(declare-fun choose!29603 (List!50792 K!12060) Unit!95506)

(assert (=> d!1394480 (= lt!1700520 (choose!29603 (toList!4343 lt!1699778) key!3287))))

(assert (=> d!1394480 (invariantList!1023 (toList!4343 lt!1699778))))

(assert (=> d!1394480 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699778) key!3287) lt!1700520)))

(declare-fun bs!858433 () Bool)

(assert (= bs!858433 d!1394480))

(assert (=> bs!858433 m!5273901))

(assert (=> bs!858433 m!5273901))

(assert (=> bs!858433 m!5273903))

(declare-fun m!5274947 () Bool)

(assert (=> bs!858433 m!5274947))

(declare-fun m!5274949 () Bool)

(assert (=> bs!858433 m!5274949))

(assert (=> b!4523304 d!1394480))

(declare-fun d!1394482 () Bool)

(declare-fun isEmpty!28683 (Option!11131) Bool)

(assert (=> d!1394482 (= (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699778) key!3287)) (not (isEmpty!28683 (getValueByKey!1105 (toList!4343 lt!1699778) key!3287))))))

(declare-fun bs!858434 () Bool)

(assert (= bs!858434 d!1394482))

(assert (=> bs!858434 m!5273901))

(declare-fun m!5274951 () Bool)

(assert (=> bs!858434 m!5274951))

(assert (=> b!4523304 d!1394482))

(declare-fun b!4523935 () Bool)

(declare-fun e!2818652 () Option!11131)

(assert (=> b!4523935 (= e!2818652 (getValueByKey!1105 (t!357754 (toList!4343 lt!1699778)) key!3287))))

(declare-fun b!4523934 () Bool)

(declare-fun e!2818651 () Option!11131)

(assert (=> b!4523934 (= e!2818651 e!2818652)))

(declare-fun c!772142 () Bool)

(assert (=> b!4523934 (= c!772142 (and ((_ is Cons!50668) (toList!4343 lt!1699778)) (not (= (_1!28847 (h!56527 (toList!4343 lt!1699778))) key!3287))))))

(declare-fun b!4523936 () Bool)

(assert (=> b!4523936 (= e!2818652 None!11130)))

(declare-fun b!4523933 () Bool)

(assert (=> b!4523933 (= e!2818651 (Some!11130 (_2!28847 (h!56527 (toList!4343 lt!1699778)))))))

(declare-fun d!1394484 () Bool)

(declare-fun c!772141 () Bool)

(assert (=> d!1394484 (= c!772141 (and ((_ is Cons!50668) (toList!4343 lt!1699778)) (= (_1!28847 (h!56527 (toList!4343 lt!1699778))) key!3287)))))

(assert (=> d!1394484 (= (getValueByKey!1105 (toList!4343 lt!1699778) key!3287) e!2818651)))

(assert (= (and d!1394484 c!772141) b!4523933))

(assert (= (and d!1394484 (not c!772141)) b!4523934))

(assert (= (and b!4523934 c!772142) b!4523935))

(assert (= (and b!4523934 (not c!772142)) b!4523936))

(declare-fun m!5274953 () Bool)

(assert (=> b!4523935 m!5274953))

(assert (=> b!4523304 d!1394484))

(declare-fun d!1394486 () Bool)

(assert (=> d!1394486 (contains!13413 (getKeysList!471 (toList!4343 lt!1699778)) key!3287)))

(declare-fun lt!1700539 () Unit!95506)

(declare-fun choose!29604 (List!50792 K!12060) Unit!95506)

(assert (=> d!1394486 (= lt!1700539 (choose!29604 (toList!4343 lt!1699778) key!3287))))

(assert (=> d!1394486 (invariantList!1023 (toList!4343 lt!1699778))))

(assert (=> d!1394486 (= (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699778) key!3287) lt!1700539)))

(declare-fun bs!858435 () Bool)

(assert (= bs!858435 d!1394486))

(assert (=> bs!858435 m!5273905))

(assert (=> bs!858435 m!5273905))

(declare-fun m!5274955 () Bool)

(assert (=> bs!858435 m!5274955))

(declare-fun m!5274957 () Bool)

(assert (=> bs!858435 m!5274957))

(assert (=> bs!858435 m!5274949))

(assert (=> b!4523304 d!1394486))

(assert (=> d!1393972 d!1394186))

(assert (=> d!1393972 d!1394184))

(declare-fun bs!858436 () Bool)

(declare-fun d!1394488 () Bool)

(assert (= bs!858436 (and d!1394488 b!4523254)))

(declare-fun lambda!173131 () Int)

(assert (=> bs!858436 (= (= lt!1699770 lt!1699771) (= lambda!173131 lambda!173063))))

(declare-fun bs!858437 () Bool)

(assert (= bs!858437 (and d!1394488 d!1394016)))

(assert (=> bs!858437 (not (= lambda!173131 lambda!173040))))

(declare-fun bs!858438 () Bool)

(assert (= bs!858438 (and d!1394488 d!1394204)))

(assert (=> bs!858438 (= (= lt!1699770 lt!1700292) (= lambda!173131 lambda!173103))))

(declare-fun bs!858439 () Bool)

(assert (= bs!858439 (and d!1394488 b!4523057)))

(assert (=> bs!858439 (= lambda!173131 lambda!172995)))

(declare-fun bs!858440 () Bool)

(assert (= bs!858440 (and d!1394488 d!1394260)))

(assert (=> bs!858440 (= (= lt!1699770 lt!1700142) (= lambda!173131 lambda!173115))))

(declare-fun bs!858441 () Bool)

(assert (= bs!858441 (and d!1394488 d!1393892)))

(assert (=> bs!858441 (= (= lt!1699770 lt!1699952) (= lambda!173131 lambda!172998))))

(declare-fun bs!858442 () Bool)

(assert (= bs!858442 (and d!1394488 b!4523867)))

(assert (=> bs!858442 (= (= lt!1699770 lt!1700482) (= lambda!173131 lambda!173124))))

(declare-fun bs!858443 () Bool)

(assert (= bs!858443 (and d!1394488 b!4522898)))

(assert (=> bs!858443 (not (= lambda!173131 lambda!172949))))

(assert (=> bs!858442 (= (= lt!1699770 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173131 lambda!173123))))

(declare-fun bs!858444 () Bool)

(assert (= bs!858444 (and d!1394488 b!4523864)))

(assert (=> bs!858444 (= (= lt!1699770 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173131 lambda!173122))))

(declare-fun bs!858445 () Bool)

(assert (= bs!858445 (and d!1394488 b!4523505)))

(assert (=> bs!858445 (= (= lt!1699770 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173131 lambda!173099))))

(declare-fun bs!858446 () Bool)

(assert (= bs!858446 (and d!1394488 d!1394436)))

(assert (=> bs!858446 (= (= lt!1699770 lt!1700479) (= lambda!173131 lambda!173125))))

(assert (=> bs!858445 (= (= lt!1699770 lt!1700295) (= lambda!173131 lambda!173102))))

(declare-fun bs!858447 () Bool)

(assert (= bs!858447 (and d!1394488 b!4523257)))

(assert (=> bs!858447 (= (= lt!1699770 lt!1700142) (= lambda!173131 lambda!173067))))

(declare-fun bs!858448 () Bool)

(assert (= bs!858448 (and d!1394488 b!4523502)))

(assert (=> bs!858448 (= (= lt!1699770 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173131 lambda!173098))))

(assert (=> bs!858447 (= (= lt!1699770 lt!1699771) (= lambda!173131 lambda!173066))))

(declare-fun bs!858449 () Bool)

(assert (= bs!858449 (and d!1394488 d!1394074)))

(assert (=> bs!858449 (= (= lt!1699770 lt!1700139) (= lambda!173131 lambda!173069))))

(declare-fun bs!858450 () Bool)

(assert (= bs!858450 (and d!1394488 b!4523060)))

(assert (=> bs!858450 (= lambda!173131 lambda!172996)))

(assert (=> bs!858450 (= (= lt!1699770 lt!1699955) (= lambda!173131 lambda!172997))))

(assert (=> d!1394488 true))

(assert (=> d!1394488 (forall!10280 (toList!4343 lt!1699770) lambda!173131)))

(declare-fun lt!1700562 () Unit!95506)

(declare-fun choose!29605 (ListMap!3605) Unit!95506)

(assert (=> d!1394488 (= lt!1700562 (choose!29605 lt!1699770))))

(assert (=> d!1394488 (= (lemmaContainsAllItsOwnKeys!343 lt!1699770) lt!1700562)))

(declare-fun bs!858451 () Bool)

(assert (= bs!858451 d!1394488))

(declare-fun m!5274959 () Bool)

(assert (=> bs!858451 m!5274959))

(declare-fun m!5274961 () Bool)

(assert (=> bs!858451 m!5274961))

(assert (=> bm!315144 d!1394488))

(assert (=> b!4523325 d!1394456))

(declare-fun d!1394490 () Bool)

(assert (=> d!1394490 (= (head!9427 (toList!4344 lt!1699795)) (h!56528 (toList!4344 lt!1699795)))))

(assert (=> d!1393984 d!1394490))

(declare-fun d!1394492 () Bool)

(declare-fun c!772159 () Bool)

(assert (=> d!1394492 (= c!772159 ((_ is Nil!50668) (toList!4343 lt!1699771)))))

(declare-fun e!2818671 () (InoxSet tuple2!51106))

(assert (=> d!1394492 (= (content!8374 (toList!4343 lt!1699771)) e!2818671)))

(declare-fun b!4523975 () Bool)

(assert (=> b!4523975 (= e!2818671 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523976 () Bool)

(assert (=> b!4523976 (= e!2818671 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699771)) true) (content!8374 (t!357754 (toList!4343 lt!1699771)))))))

(assert (= (and d!1394492 c!772159) b!4523975))

(assert (= (and d!1394492 (not c!772159)) b!4523976))

(declare-fun m!5274963 () Bool)

(assert (=> b!4523976 m!5274963))

(declare-fun m!5274965 () Bool)

(assert (=> b!4523976 m!5274965))

(assert (=> d!1394044 d!1394492))

(declare-fun d!1394494 () Bool)

(declare-fun c!772160 () Bool)

(assert (=> d!1394494 (= c!772160 ((_ is Nil!50668) (toList!4343 lt!1699770)))))

(declare-fun e!2818672 () (InoxSet tuple2!51106))

(assert (=> d!1394494 (= (content!8374 (toList!4343 lt!1699770)) e!2818672)))

(declare-fun b!4523977 () Bool)

(assert (=> b!4523977 (= e!2818672 ((as const (Array tuple2!51106 Bool)) false))))

(declare-fun b!4523978 () Bool)

(assert (=> b!4523978 (= e!2818672 ((_ map or) (store ((as const (Array tuple2!51106 Bool)) false) (h!56527 (toList!4343 lt!1699770)) true) (content!8374 (t!357754 (toList!4343 lt!1699770)))))))

(assert (= (and d!1394494 c!772160) b!4523977))

(assert (= (and d!1394494 (not c!772160)) b!4523978))

(declare-fun m!5274967 () Bool)

(assert (=> b!4523978 m!5274967))

(declare-fun m!5274969 () Bool)

(assert (=> b!4523978 m!5274969))

(assert (=> d!1394044 d!1394494))

(declare-fun b!4523980 () Bool)

(declare-fun e!2818673 () Option!11130)

(declare-fun e!2818674 () Option!11130)

(assert (=> b!4523980 (= e!2818673 e!2818674)))

(declare-fun c!772162 () Bool)

(assert (=> b!4523980 (= c!772162 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (not (= (_1!28848 (h!56528 (toList!4344 lm!1477))) hash!344))))))

(declare-fun d!1394496 () Bool)

(declare-fun c!772161 () Bool)

(assert (=> d!1394496 (= c!772161 (and ((_ is Cons!50669) (toList!4344 lm!1477)) (= (_1!28848 (h!56528 (toList!4344 lm!1477))) hash!344)))))

(assert (=> d!1394496 (= (getValueByKey!1104 (toList!4344 lm!1477) hash!344) e!2818673)))

(declare-fun b!4523981 () Bool)

(assert (=> b!4523981 (= e!2818674 (getValueByKey!1104 (t!357755 (toList!4344 lm!1477)) hash!344))))

(declare-fun b!4523979 () Bool)

(assert (=> b!4523979 (= e!2818673 (Some!11129 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun b!4523982 () Bool)

(assert (=> b!4523982 (= e!2818674 None!11129)))

(assert (= (and d!1394496 c!772161) b!4523979))

(assert (= (and d!1394496 (not c!772161)) b!4523980))

(assert (= (and b!4523980 c!772162) b!4523981))

(assert (= (and b!4523980 (not c!772162)) b!4523982))

(declare-fun m!5274971 () Bool)

(assert (=> b!4523981 m!5274971))

(assert (=> b!4523167 d!1394496))

(assert (=> b!4523300 d!1394482))

(assert (=> b!4523300 d!1394484))

(declare-fun d!1394498 () Bool)

(declare-fun lt!1700563 () Bool)

(assert (=> d!1394498 (= lt!1700563 (select (content!8375 (toList!4344 lt!1700216)) lt!1699772))))

(declare-fun e!2818676 () Bool)

(assert (=> d!1394498 (= lt!1700563 e!2818676)))

(declare-fun res!1883331 () Bool)

(assert (=> d!1394498 (=> (not res!1883331) (not e!2818676))))

(assert (=> d!1394498 (= res!1883331 ((_ is Cons!50669) (toList!4344 lt!1700216)))))

(assert (=> d!1394498 (= (contains!13410 (toList!4344 lt!1700216) lt!1699772) lt!1700563)))

(declare-fun b!4523983 () Bool)

(declare-fun e!2818675 () Bool)

(assert (=> b!4523983 (= e!2818676 e!2818675)))

(declare-fun res!1883330 () Bool)

(assert (=> b!4523983 (=> res!1883330 e!2818675)))

(assert (=> b!4523983 (= res!1883330 (= (h!56528 (toList!4344 lt!1700216)) lt!1699772))))

(declare-fun b!4523984 () Bool)

(assert (=> b!4523984 (= e!2818675 (contains!13410 (t!357755 (toList!4344 lt!1700216)) lt!1699772))))

(assert (= (and d!1394498 res!1883331) b!4523983))

(assert (= (and b!4523983 (not res!1883330)) b!4523984))

(declare-fun m!5274973 () Bool)

(assert (=> d!1394498 m!5274973))

(declare-fun m!5274975 () Bool)

(assert (=> d!1394498 m!5274975))

(declare-fun m!5274977 () Bool)

(assert (=> b!4523984 m!5274977))

(assert (=> b!4523338 d!1394498))

(assert (=> d!1393982 d!1394478))

(declare-fun d!1394500 () Bool)

(declare-fun res!1883332 () Bool)

(declare-fun e!2818677 () Bool)

(assert (=> d!1394500 (=> res!1883332 e!2818677)))

(assert (=> d!1394500 (= res!1883332 (and ((_ is Cons!50668) (t!357754 lt!1699789)) (= (_1!28847 (h!56527 (t!357754 lt!1699789))) key!3287)))))

(assert (=> d!1394500 (= (containsKey!1800 (t!357754 lt!1699789) key!3287) e!2818677)))

(declare-fun b!4523985 () Bool)

(declare-fun e!2818678 () Bool)

(assert (=> b!4523985 (= e!2818677 e!2818678)))

(declare-fun res!1883333 () Bool)

(assert (=> b!4523985 (=> (not res!1883333) (not e!2818678))))

(assert (=> b!4523985 (= res!1883333 ((_ is Cons!50668) (t!357754 lt!1699789)))))

(declare-fun b!4523986 () Bool)

(assert (=> b!4523986 (= e!2818678 (containsKey!1800 (t!357754 (t!357754 lt!1699789)) key!3287))))

(assert (= (and d!1394500 (not res!1883332)) b!4523985))

(assert (= (and b!4523985 res!1883333) b!4523986))

(declare-fun m!5274979 () Bool)

(assert (=> b!4523986 m!5274979))

(assert (=> b!4523336 d!1394500))

(declare-fun d!1394502 () Bool)

(declare-fun lt!1700564 () Bool)

(assert (=> d!1394502 (= lt!1700564 (select (content!8375 (toList!4344 lm!1477)) (h!56528 (toList!4344 lm!1477))))))

(declare-fun e!2818680 () Bool)

(assert (=> d!1394502 (= lt!1700564 e!2818680)))

(declare-fun res!1883335 () Bool)

(assert (=> d!1394502 (=> (not res!1883335) (not e!2818680))))

(assert (=> d!1394502 (= res!1883335 ((_ is Cons!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394502 (= (contains!13410 (toList!4344 lm!1477) (h!56528 (toList!4344 lm!1477))) lt!1700564)))

(declare-fun b!4523987 () Bool)

(declare-fun e!2818679 () Bool)

(assert (=> b!4523987 (= e!2818680 e!2818679)))

(declare-fun res!1883334 () Bool)

(assert (=> b!4523987 (=> res!1883334 e!2818679)))

(assert (=> b!4523987 (= res!1883334 (= (h!56528 (toList!4344 lm!1477)) (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4523988 () Bool)

(assert (=> b!4523988 (= e!2818679 (contains!13410 (t!357755 (toList!4344 lm!1477)) (h!56528 (toList!4344 lm!1477))))))

(assert (= (and d!1394502 res!1883335) b!4523987))

(assert (= (and b!4523987 (not res!1883334)) b!4523988))

(assert (=> d!1394502 m!5273577))

(declare-fun m!5274981 () Bool)

(assert (=> d!1394502 m!5274981))

(declare-fun m!5274983 () Bool)

(assert (=> b!4523988 m!5274983))

(assert (=> b!4523115 d!1394502))

(declare-fun d!1394504 () Bool)

(declare-fun e!2818681 () Bool)

(assert (=> d!1394504 e!2818681))

(declare-fun res!1883336 () Bool)

(assert (=> d!1394504 (=> res!1883336 e!2818681)))

(declare-fun lt!1700568 () Bool)

(assert (=> d!1394504 (= res!1883336 (not lt!1700568))))

(declare-fun lt!1700567 () Bool)

(assert (=> d!1394504 (= lt!1700568 lt!1700567)))

(declare-fun lt!1700565 () Unit!95506)

(declare-fun e!2818682 () Unit!95506)

(assert (=> d!1394504 (= lt!1700565 e!2818682)))

(declare-fun c!772163 () Bool)

(assert (=> d!1394504 (= c!772163 lt!1700567)))

(assert (=> d!1394504 (= lt!1700567 (containsKey!1802 (toList!4344 lt!1700129) (_1!28848 lt!1699794)))))

(assert (=> d!1394504 (= (contains!13408 lt!1700129 (_1!28848 lt!1699794)) lt!1700568)))

(declare-fun b!4523989 () Bool)

(declare-fun lt!1700566 () Unit!95506)

(assert (=> b!4523989 (= e!2818682 lt!1700566)))

(assert (=> b!4523989 (= lt!1700566 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1700129) (_1!28848 lt!1699794)))))

(assert (=> b!4523989 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700129) (_1!28848 lt!1699794)))))

(declare-fun b!4523990 () Bool)

(declare-fun Unit!95662 () Unit!95506)

(assert (=> b!4523990 (= e!2818682 Unit!95662)))

(declare-fun b!4523991 () Bool)

(assert (=> b!4523991 (= e!2818681 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700129) (_1!28848 lt!1699794))))))

(assert (= (and d!1394504 c!772163) b!4523989))

(assert (= (and d!1394504 (not c!772163)) b!4523990))

(assert (= (and d!1394504 (not res!1883336)) b!4523991))

(declare-fun m!5274985 () Bool)

(assert (=> d!1394504 m!5274985))

(declare-fun m!5274987 () Bool)

(assert (=> b!4523989 m!5274987))

(assert (=> b!4523989 m!5273783))

(assert (=> b!4523989 m!5273783))

(declare-fun m!5274989 () Bool)

(assert (=> b!4523989 m!5274989))

(assert (=> b!4523991 m!5273783))

(assert (=> b!4523991 m!5273783))

(assert (=> b!4523991 m!5274989))

(assert (=> d!1394064 d!1394504))

(declare-fun b!4523993 () Bool)

(declare-fun e!2818683 () Option!11130)

(declare-fun e!2818684 () Option!11130)

(assert (=> b!4523993 (= e!2818683 e!2818684)))

(declare-fun c!772165 () Bool)

(assert (=> b!4523993 (= c!772165 (and ((_ is Cons!50669) lt!1700130) (not (= (_1!28848 (h!56528 lt!1700130)) (_1!28848 lt!1699794)))))))

(declare-fun d!1394506 () Bool)

(declare-fun c!772164 () Bool)

(assert (=> d!1394506 (= c!772164 (and ((_ is Cons!50669) lt!1700130) (= (_1!28848 (h!56528 lt!1700130)) (_1!28848 lt!1699794))))))

(assert (=> d!1394506 (= (getValueByKey!1104 lt!1700130 (_1!28848 lt!1699794)) e!2818683)))

(declare-fun b!4523994 () Bool)

(assert (=> b!4523994 (= e!2818684 (getValueByKey!1104 (t!357755 lt!1700130) (_1!28848 lt!1699794)))))

(declare-fun b!4523992 () Bool)

(assert (=> b!4523992 (= e!2818683 (Some!11129 (_2!28848 (h!56528 lt!1700130))))))

(declare-fun b!4523995 () Bool)

(assert (=> b!4523995 (= e!2818684 None!11129)))

(assert (= (and d!1394506 c!772164) b!4523992))

(assert (= (and d!1394506 (not c!772164)) b!4523993))

(assert (= (and b!4523993 c!772165) b!4523994))

(assert (= (and b!4523993 (not c!772165)) b!4523995))

(declare-fun m!5274991 () Bool)

(assert (=> b!4523994 m!5274991))

(assert (=> d!1394064 d!1394506))

(declare-fun d!1394508 () Bool)

(assert (=> d!1394508 (= (getValueByKey!1104 lt!1700130 (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794)))))

(declare-fun lt!1700569 () Unit!95506)

(assert (=> d!1394508 (= lt!1700569 (choose!29594 lt!1700130 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(declare-fun e!2818685 () Bool)

(assert (=> d!1394508 e!2818685))

(declare-fun res!1883337 () Bool)

(assert (=> d!1394508 (=> (not res!1883337) (not e!2818685))))

(assert (=> d!1394508 (= res!1883337 (isStrictlySorted!436 lt!1700130))))

(assert (=> d!1394508 (= (lemmaContainsTupThenGetReturnValue!686 lt!1700130 (_1!28848 lt!1699794) (_2!28848 lt!1699794)) lt!1700569)))

(declare-fun b!4523996 () Bool)

(declare-fun res!1883338 () Bool)

(assert (=> b!4523996 (=> (not res!1883338) (not e!2818685))))

(assert (=> b!4523996 (= res!1883338 (containsKey!1802 lt!1700130 (_1!28848 lt!1699794)))))

(declare-fun b!4523997 () Bool)

(assert (=> b!4523997 (= e!2818685 (contains!13410 lt!1700130 (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794))))))

(assert (= (and d!1394508 res!1883337) b!4523996))

(assert (= (and b!4523996 res!1883338) b!4523997))

(assert (=> d!1394508 m!5273777))

(declare-fun m!5274993 () Bool)

(assert (=> d!1394508 m!5274993))

(declare-fun m!5274995 () Bool)

(assert (=> d!1394508 m!5274995))

(declare-fun m!5274997 () Bool)

(assert (=> b!4523996 m!5274997))

(declare-fun m!5274999 () Bool)

(assert (=> b!4523997 m!5274999))

(assert (=> d!1394064 d!1394508))

(declare-fun b!4523998 () Bool)

(declare-fun e!2818687 () Bool)

(declare-fun lt!1700570 () List!50793)

(assert (=> b!4523998 (= e!2818687 (contains!13410 lt!1700570 (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794))))))

(declare-fun b!4523999 () Bool)

(declare-fun e!2818689 () List!50793)

(declare-fun call!315240 () List!50793)

(assert (=> b!4523999 (= e!2818689 call!315240)))

(declare-fun b!4524000 () Bool)

(declare-fun e!2818690 () List!50793)

(assert (=> b!4524000 (= e!2818689 e!2818690)))

(declare-fun c!772169 () Bool)

(assert (=> b!4524000 (= c!772169 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (= (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699794))))))

(declare-fun bm!315234 () Bool)

(declare-fun call!315239 () List!50793)

(assert (=> bm!315234 (= call!315239 call!315240)))

(declare-fun d!1394510 () Bool)

(assert (=> d!1394510 e!2818687))

(declare-fun res!1883340 () Bool)

(assert (=> d!1394510 (=> (not res!1883340) (not e!2818687))))

(assert (=> d!1394510 (= res!1883340 (isStrictlySorted!436 lt!1700570))))

(assert (=> d!1394510 (= lt!1700570 e!2818689)))

(declare-fun c!772167 () Bool)

(assert (=> d!1394510 (= c!772167 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (bvslt (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699794))))))

(assert (=> d!1394510 (isStrictlySorted!436 (toList!4344 lt!1699792))))

(assert (=> d!1394510 (= (insertStrictlySorted!414 (toList!4344 lt!1699792) (_1!28848 lt!1699794) (_2!28848 lt!1699794)) lt!1700570)))

(declare-fun b!4524001 () Bool)

(declare-fun res!1883339 () Bool)

(assert (=> b!4524001 (=> (not res!1883339) (not e!2818687))))

(assert (=> b!4524001 (= res!1883339 (containsKey!1802 lt!1700570 (_1!28848 lt!1699794)))))

(declare-fun b!4524002 () Bool)

(declare-fun e!2818688 () List!50793)

(declare-fun call!315241 () List!50793)

(assert (=> b!4524002 (= e!2818688 call!315241)))

(declare-fun b!4524003 () Bool)

(declare-fun c!772166 () Bool)

(assert (=> b!4524003 (= c!772166 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (bvsgt (_1!28848 (h!56528 (toList!4344 lt!1699792))) (_1!28848 lt!1699794))))))

(assert (=> b!4524003 (= e!2818690 e!2818688)))

(declare-fun b!4524004 () Bool)

(assert (=> b!4524004 (= e!2818688 call!315241)))

(declare-fun b!4524005 () Bool)

(assert (=> b!4524005 (= e!2818690 call!315239)))

(declare-fun e!2818686 () List!50793)

(declare-fun bm!315235 () Bool)

(assert (=> bm!315235 (= call!315240 ($colon$colon!939 e!2818686 (ite c!772167 (h!56528 (toList!4344 lt!1699792)) (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))))

(declare-fun c!772168 () Bool)

(assert (=> bm!315235 (= c!772168 c!772167)))

(declare-fun b!4524006 () Bool)

(assert (=> b!4524006 (= e!2818686 (ite c!772169 (t!357755 (toList!4344 lt!1699792)) (ite c!772166 (Cons!50669 (h!56528 (toList!4344 lt!1699792)) (t!357755 (toList!4344 lt!1699792))) Nil!50669)))))

(declare-fun b!4524007 () Bool)

(assert (=> b!4524007 (= e!2818686 (insertStrictlySorted!414 (t!357755 (toList!4344 lt!1699792)) (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(declare-fun bm!315236 () Bool)

(assert (=> bm!315236 (= call!315241 call!315239)))

(assert (= (and d!1394510 c!772167) b!4523999))

(assert (= (and d!1394510 (not c!772167)) b!4524000))

(assert (= (and b!4524000 c!772169) b!4524005))

(assert (= (and b!4524000 (not c!772169)) b!4524003))

(assert (= (and b!4524003 c!772166) b!4524004))

(assert (= (and b!4524003 (not c!772166)) b!4524002))

(assert (= (or b!4524004 b!4524002) bm!315236))

(assert (= (or b!4524005 bm!315236) bm!315234))

(assert (= (or b!4523999 bm!315234) bm!315235))

(assert (= (and bm!315235 c!772168) b!4524007))

(assert (= (and bm!315235 (not c!772168)) b!4524006))

(assert (= (and d!1394510 res!1883340) b!4524001))

(assert (= (and b!4524001 res!1883339) b!4523998))

(declare-fun m!5275001 () Bool)

(assert (=> b!4524001 m!5275001))

(declare-fun m!5275003 () Bool)

(assert (=> b!4524007 m!5275003))

(declare-fun m!5275005 () Bool)

(assert (=> b!4523998 m!5275005))

(declare-fun m!5275007 () Bool)

(assert (=> bm!315235 m!5275007))

(declare-fun m!5275009 () Bool)

(assert (=> d!1394510 m!5275009))

(assert (=> d!1394510 m!5274031))

(assert (=> d!1394064 d!1394510))

(declare-fun d!1394512 () Bool)

(declare-fun res!1883341 () Bool)

(declare-fun e!2818691 () Bool)

(assert (=> d!1394512 (=> res!1883341 e!2818691)))

(assert (=> d!1394512 (= res!1883341 (and ((_ is Cons!50668) (toList!4343 lt!1699778)) (= (_1!28847 (h!56527 (toList!4343 lt!1699778))) key!3287)))))

(assert (=> d!1394512 (= (containsKey!1804 (toList!4343 lt!1699778) key!3287) e!2818691)))

(declare-fun b!4524008 () Bool)

(declare-fun e!2818692 () Bool)

(assert (=> b!4524008 (= e!2818691 e!2818692)))

(declare-fun res!1883342 () Bool)

(assert (=> b!4524008 (=> (not res!1883342) (not e!2818692))))

(assert (=> b!4524008 (= res!1883342 ((_ is Cons!50668) (toList!4343 lt!1699778)))))

(declare-fun b!4524009 () Bool)

(assert (=> b!4524009 (= e!2818692 (containsKey!1804 (t!357754 (toList!4343 lt!1699778)) key!3287))))

(assert (= (and d!1394512 (not res!1883341)) b!4524008))

(assert (= (and b!4524008 res!1883342) b!4524009))

(declare-fun m!5275011 () Bool)

(assert (=> b!4524009 m!5275011))

(assert (=> d!1394082 d!1394512))

(assert (=> d!1394102 d!1394144))

(declare-fun d!1394514 () Bool)

(declare-fun e!2818693 () Bool)

(assert (=> d!1394514 e!2818693))

(declare-fun res!1883343 () Bool)

(assert (=> d!1394514 (=> (not res!1883343) (not e!2818693))))

(declare-fun lt!1700573 () ListLongMap!2975)

(assert (=> d!1394514 (= res!1883343 (contains!13408 lt!1700573 (_1!28848 (tuple2!51109 hash!344 newBucket!178))))))

(declare-fun lt!1700574 () List!50793)

(assert (=> d!1394514 (= lt!1700573 (ListLongMap!2976 lt!1700574))))

(declare-fun lt!1700572 () Unit!95506)

(declare-fun lt!1700571 () Unit!95506)

(assert (=> d!1394514 (= lt!1700572 lt!1700571)))

(assert (=> d!1394514 (= (getValueByKey!1104 lt!1700574 (_1!28848 (tuple2!51109 hash!344 newBucket!178))) (Some!11129 (_2!28848 (tuple2!51109 hash!344 newBucket!178))))))

(assert (=> d!1394514 (= lt!1700571 (lemmaContainsTupThenGetReturnValue!686 lt!1700574 (_1!28848 (tuple2!51109 hash!344 newBucket!178)) (_2!28848 (tuple2!51109 hash!344 newBucket!178))))))

(assert (=> d!1394514 (= lt!1700574 (insertStrictlySorted!414 (toList!4344 lt!1699792) (_1!28848 (tuple2!51109 hash!344 newBucket!178)) (_2!28848 (tuple2!51109 hash!344 newBucket!178))))))

(assert (=> d!1394514 (= (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)) lt!1700573)))

(declare-fun b!4524010 () Bool)

(declare-fun res!1883344 () Bool)

(assert (=> b!4524010 (=> (not res!1883344) (not e!2818693))))

(assert (=> b!4524010 (= res!1883344 (= (getValueByKey!1104 (toList!4344 lt!1700573) (_1!28848 (tuple2!51109 hash!344 newBucket!178))) (Some!11129 (_2!28848 (tuple2!51109 hash!344 newBucket!178)))))))

(declare-fun b!4524011 () Bool)

(assert (=> b!4524011 (= e!2818693 (contains!13410 (toList!4344 lt!1700573) (tuple2!51109 hash!344 newBucket!178)))))

(assert (= (and d!1394514 res!1883343) b!4524010))

(assert (= (and b!4524010 res!1883344) b!4524011))

(declare-fun m!5275013 () Bool)

(assert (=> d!1394514 m!5275013))

(declare-fun m!5275015 () Bool)

(assert (=> d!1394514 m!5275015))

(declare-fun m!5275017 () Bool)

(assert (=> d!1394514 m!5275017))

(declare-fun m!5275019 () Bool)

(assert (=> d!1394514 m!5275019))

(declare-fun m!5275021 () Bool)

(assert (=> b!4524010 m!5275021))

(declare-fun m!5275023 () Bool)

(assert (=> b!4524011 m!5275023))

(assert (=> d!1394054 d!1394514))

(declare-fun d!1394516 () Bool)

(declare-fun res!1883345 () Bool)

(declare-fun e!2818694 () Bool)

(assert (=> d!1394516 (=> res!1883345 e!2818694)))

(assert (=> d!1394516 (= res!1883345 ((_ is Nil!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1394516 (= (forall!10281 (toList!4344 lt!1699792) lambda!173059) e!2818694)))

(declare-fun b!4524012 () Bool)

(declare-fun e!2818695 () Bool)

(assert (=> b!4524012 (= e!2818694 e!2818695)))

(declare-fun res!1883346 () Bool)

(assert (=> b!4524012 (=> (not res!1883346) (not e!2818695))))

(assert (=> b!4524012 (= res!1883346 (dynLambda!21171 lambda!173059 (h!56528 (toList!4344 lt!1699792))))))

(declare-fun b!4524013 () Bool)

(assert (=> b!4524013 (= e!2818695 (forall!10281 (t!357755 (toList!4344 lt!1699792)) lambda!173059))))

(assert (= (and d!1394516 (not res!1883345)) b!4524012))

(assert (= (and b!4524012 res!1883346) b!4524013))

(declare-fun b_lambda!155365 () Bool)

(assert (=> (not b_lambda!155365) (not b!4524012)))

(declare-fun m!5275025 () Bool)

(assert (=> b!4524012 m!5275025))

(declare-fun m!5275027 () Bool)

(assert (=> b!4524013 m!5275027))

(assert (=> d!1394054 d!1394516))

(declare-fun d!1394518 () Bool)

(assert (=> d!1394518 (eq!625 (extractMap!1224 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))) (-!394 (extractMap!1224 (toList!4344 lt!1699792)) key!3287))))

(assert (=> d!1394518 true))

(declare-fun _$8!659 () Unit!95506)

(assert (=> d!1394518 (= (choose!29587 lt!1699792 hash!344 newBucket!178 key!3287 hashF!1107) _$8!659)))

(declare-fun bs!858452 () Bool)

(assert (= bs!858452 d!1394518))

(assert (=> bs!858452 m!5273767))

(assert (=> bs!858452 m!5273205))

(assert (=> bs!858452 m!5273769))

(assert (=> bs!858452 m!5273763))

(assert (=> bs!858452 m!5273205))

(assert (=> bs!858452 m!5273763))

(assert (=> bs!858452 m!5273769))

(assert (=> bs!858452 m!5273771))

(assert (=> d!1394054 d!1394518))

(declare-fun bs!858453 () Bool)

(declare-fun d!1394526 () Bool)

(assert (= bs!858453 (and d!1394526 d!1394104)))

(declare-fun lambda!173132 () Int)

(assert (=> bs!858453 (= lambda!173132 lambda!173072)))

(declare-fun bs!858454 () Bool)

(assert (= bs!858454 (and d!1394526 d!1394024)))

(assert (=> bs!858454 (= lambda!173132 lambda!173050)))

(declare-fun bs!858455 () Bool)

(assert (= bs!858455 (and d!1394526 d!1394100)))

(assert (=> bs!858455 (= lambda!173132 lambda!173071)))

(declare-fun bs!858456 () Bool)

(assert (= bs!858456 (and d!1394526 d!1394070)))

(assert (=> bs!858456 (not (= lambda!173132 lambda!173062))))

(declare-fun bs!858457 () Bool)

(assert (= bs!858457 (and d!1394526 d!1394110)))

(assert (=> bs!858457 (= lambda!173132 lambda!173076)))

(declare-fun bs!858458 () Bool)

(assert (= bs!858458 (and d!1394526 start!448016)))

(assert (=> bs!858458 (= lambda!173132 lambda!172947)))

(declare-fun bs!858459 () Bool)

(assert (= bs!858459 (and d!1394526 d!1394010)))

(assert (=> bs!858459 (= lambda!173132 lambda!173036)))

(declare-fun bs!858460 () Bool)

(assert (= bs!858460 (and d!1394526 b!4522898)))

(assert (=> bs!858460 (not (= lambda!173132 lambda!172948))))

(declare-fun bs!858461 () Bool)

(assert (= bs!858461 (and d!1394526 d!1394080)))

(assert (=> bs!858461 (= lambda!173132 lambda!173070)))

(declare-fun bs!858462 () Bool)

(assert (= bs!858462 (and d!1394526 d!1394054)))

(assert (=> bs!858462 (= lambda!173132 lambda!173059)))

(declare-fun bs!858463 () Bool)

(assert (= bs!858463 (and d!1394526 d!1394038)))

(assert (=> bs!858463 (= lambda!173132 lambda!173051)))

(declare-fun bs!858464 () Bool)

(assert (= bs!858464 (and d!1394526 d!1394452)))

(assert (=> bs!858464 (= lambda!173132 lambda!173126)))

(declare-fun bs!858465 () Bool)

(assert (= bs!858465 (and d!1394526 d!1394106)))

(assert (=> bs!858465 (= lambda!173132 lambda!173075)))

(declare-fun bs!858466 () Bool)

(assert (= bs!858466 (and d!1394526 d!1394122)))

(assert (=> bs!858466 (= lambda!173132 lambda!173079)))

(declare-fun bs!858468 () Bool)

(assert (= bs!858468 (and d!1394526 d!1393990)))

(assert (=> bs!858468 (= lambda!173132 lambda!173001)))

(declare-fun lt!1700602 () ListMap!3605)

(assert (=> d!1394526 (invariantList!1023 (toList!4343 lt!1700602))))

(declare-fun e!2818713 () ListMap!3605)

(assert (=> d!1394526 (= lt!1700602 e!2818713)))

(declare-fun c!772181 () Bool)

(assert (=> d!1394526 (= c!772181 ((_ is Cons!50669) (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))))))

(assert (=> d!1394526 (forall!10281 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178))) lambda!173132)))

(assert (=> d!1394526 (= (extractMap!1224 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))) lt!1700602)))

(declare-fun b!4524044 () Bool)

(assert (=> b!4524044 (= e!2818713 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178))))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))))))))

(declare-fun b!4524045 () Bool)

(assert (=> b!4524045 (= e!2818713 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394526 c!772181) b!4524044))

(assert (= (and d!1394526 (not c!772181)) b!4524045))

(declare-fun m!5275099 () Bool)

(assert (=> d!1394526 m!5275099))

(declare-fun m!5275101 () Bool)

(assert (=> d!1394526 m!5275101))

(declare-fun m!5275103 () Bool)

(assert (=> b!4524044 m!5275103))

(assert (=> b!4524044 m!5275103))

(declare-fun m!5275105 () Bool)

(assert (=> b!4524044 m!5275105))

(assert (=> d!1394054 d!1394526))

(declare-fun d!1394530 () Bool)

(declare-fun e!2818716 () Bool)

(assert (=> d!1394530 e!2818716))

(declare-fun res!1883357 () Bool)

(assert (=> d!1394530 (=> (not res!1883357) (not e!2818716))))

(declare-fun lt!1700603 () ListMap!3605)

(assert (=> d!1394530 (= res!1883357 (not (contains!13409 lt!1700603 key!3287)))))

(assert (=> d!1394530 (= lt!1700603 (ListMap!3606 (removePresrvNoDuplicatedKeys!146 (toList!4343 (extractMap!1224 (toList!4344 lt!1699792))) key!3287)))))

(assert (=> d!1394530 (= (-!394 (extractMap!1224 (toList!4344 lt!1699792)) key!3287) lt!1700603)))

(declare-fun b!4524048 () Bool)

(assert (=> b!4524048 (= e!2818716 (= ((_ map and) (content!8376 (keys!17608 (extractMap!1224 (toList!4344 lt!1699792)))) ((_ map not) (store ((as const (Array K!12060 Bool)) false) key!3287 true))) (content!8376 (keys!17608 lt!1700603))))))

(assert (= (and d!1394530 res!1883357) b!4524048))

(declare-fun m!5275111 () Bool)

(assert (=> d!1394530 m!5275111))

(declare-fun m!5275113 () Bool)

(assert (=> d!1394530 m!5275113))

(declare-fun m!5275115 () Bool)

(assert (=> b!4524048 m!5275115))

(assert (=> b!4524048 m!5275115))

(declare-fun m!5275119 () Bool)

(assert (=> b!4524048 m!5275119))

(assert (=> b!4524048 m!5273205))

(assert (=> b!4524048 m!5274155))

(assert (=> b!4524048 m!5274155))

(declare-fun m!5275121 () Bool)

(assert (=> b!4524048 m!5275121))

(assert (=> b!4524048 m!5273733))

(assert (=> d!1394054 d!1394530))

(assert (=> d!1394054 d!1394110))

(declare-fun d!1394536 () Bool)

(assert (=> d!1394536 (= (eq!625 (extractMap!1224 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))) (-!394 (extractMap!1224 (toList!4344 lt!1699792)) key!3287)) (= (content!8374 (toList!4343 (extractMap!1224 (toList!4344 (+!1552 lt!1699792 (tuple2!51109 hash!344 newBucket!178)))))) (content!8374 (toList!4343 (-!394 (extractMap!1224 (toList!4344 lt!1699792)) key!3287)))))))

(declare-fun bs!858469 () Bool)

(assert (= bs!858469 d!1394536))

(declare-fun m!5275123 () Bool)

(assert (=> bs!858469 m!5275123))

(declare-fun m!5275125 () Bool)

(assert (=> bs!858469 m!5275125))

(assert (=> d!1394054 d!1394536))

(declare-fun d!1394538 () Bool)

(declare-fun res!1883358 () Bool)

(declare-fun e!2818719 () Bool)

(assert (=> d!1394538 (=> res!1883358 e!2818719)))

(assert (=> d!1394538 (= res!1883358 ((_ is Nil!50668) (toList!4343 lt!1699771)))))

(assert (=> d!1394538 (= (forall!10280 (toList!4343 lt!1699771) lambda!173069) e!2818719)))

(declare-fun b!4524053 () Bool)

(declare-fun e!2818720 () Bool)

(assert (=> b!4524053 (= e!2818719 e!2818720)))

(declare-fun res!1883359 () Bool)

(assert (=> b!4524053 (=> (not res!1883359) (not e!2818720))))

(assert (=> b!4524053 (= res!1883359 (dynLambda!21172 lambda!173069 (h!56527 (toList!4343 lt!1699771))))))

(declare-fun b!4524054 () Bool)

(assert (=> b!4524054 (= e!2818720 (forall!10280 (t!357754 (toList!4343 lt!1699771)) lambda!173069))))

(assert (= (and d!1394538 (not res!1883358)) b!4524053))

(assert (= (and b!4524053 res!1883359) b!4524054))

(declare-fun b_lambda!155369 () Bool)

(assert (=> (not b_lambda!155369) (not b!4524053)))

(declare-fun m!5275127 () Bool)

(assert (=> b!4524053 m!5275127))

(declare-fun m!5275129 () Bool)

(assert (=> b!4524054 m!5275129))

(assert (=> b!4523255 d!1394538))

(declare-fun d!1394540 () Bool)

(declare-fun res!1883360 () Bool)

(declare-fun e!2818723 () Bool)

(assert (=> d!1394540 (=> res!1883360 e!2818723)))

(assert (=> d!1394540 (= res!1883360 (not ((_ is Cons!50668) (t!357754 newBucket!178))))))

(assert (=> d!1394540 (= (noDuplicateKeys!1168 (t!357754 newBucket!178)) e!2818723)))

(declare-fun b!4524059 () Bool)

(declare-fun e!2818724 () Bool)

(assert (=> b!4524059 (= e!2818723 e!2818724)))

(declare-fun res!1883361 () Bool)

(assert (=> b!4524059 (=> (not res!1883361) (not e!2818724))))

(assert (=> b!4524059 (= res!1883361 (not (containsKey!1800 (t!357754 (t!357754 newBucket!178)) (_1!28847 (h!56527 (t!357754 newBucket!178))))))))

(declare-fun b!4524060 () Bool)

(assert (=> b!4524060 (= e!2818724 (noDuplicateKeys!1168 (t!357754 (t!357754 newBucket!178))))))

(assert (= (and d!1394540 (not res!1883360)) b!4524059))

(assert (= (and b!4524059 res!1883361) b!4524060))

(declare-fun m!5275131 () Bool)

(assert (=> b!4524059 m!5275131))

(declare-fun m!5275133 () Bool)

(assert (=> b!4524060 m!5275133))

(assert (=> b!4523147 d!1394540))

(assert (=> d!1394108 d!1394200))

(declare-fun bs!858470 () Bool)

(declare-fun b!4524061 () Bool)

(assert (= bs!858470 (and b!4524061 b!4523254)))

(declare-fun lambda!173133 () Int)

(assert (=> bs!858470 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699771) (= lambda!173133 lambda!173063))))

(declare-fun bs!858471 () Bool)

(assert (= bs!858471 (and b!4524061 d!1394016)))

(assert (=> bs!858471 (not (= lambda!173133 lambda!173040))))

(declare-fun bs!858472 () Bool)

(assert (= bs!858472 (and b!4524061 d!1394204)))

(assert (=> bs!858472 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700292) (= lambda!173133 lambda!173103))))

(declare-fun bs!858473 () Bool)

(assert (= bs!858473 (and b!4524061 b!4523057)))

(assert (=> bs!858473 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173133 lambda!172995))))

(declare-fun bs!858474 () Bool)

(assert (= bs!858474 (and b!4524061 d!1394260)))

(assert (=> bs!858474 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700142) (= lambda!173133 lambda!173115))))

(declare-fun bs!858475 () Bool)

(assert (= bs!858475 (and b!4524061 d!1393892)))

(assert (=> bs!858475 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699952) (= lambda!173133 lambda!172998))))

(declare-fun bs!858476 () Bool)

(assert (= bs!858476 (and b!4524061 d!1394488)))

(assert (=> bs!858476 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173133 lambda!173131))))

(declare-fun bs!858477 () Bool)

(assert (= bs!858477 (and b!4524061 b!4523867)))

(assert (=> bs!858477 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700482) (= lambda!173133 lambda!173124))))

(declare-fun bs!858478 () Bool)

(assert (= bs!858478 (and b!4524061 b!4522898)))

(assert (=> bs!858478 (not (= lambda!173133 lambda!172949))))

(assert (=> bs!858477 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173133 lambda!173123))))

(declare-fun bs!858479 () Bool)

(assert (= bs!858479 (and b!4524061 b!4523864)))

(assert (=> bs!858479 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173133 lambda!173122))))

(declare-fun bs!858480 () Bool)

(assert (= bs!858480 (and b!4524061 b!4523505)))

(assert (=> bs!858480 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173133 lambda!173099))))

(declare-fun bs!858481 () Bool)

(assert (= bs!858481 (and b!4524061 d!1394436)))

(assert (=> bs!858481 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700479) (= lambda!173133 lambda!173125))))

(assert (=> bs!858480 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700295) (= lambda!173133 lambda!173102))))

(declare-fun bs!858482 () Bool)

(assert (= bs!858482 (and b!4524061 b!4523257)))

(assert (=> bs!858482 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700142) (= lambda!173133 lambda!173067))))

(declare-fun bs!858483 () Bool)

(assert (= bs!858483 (and b!4524061 b!4523502)))

(assert (=> bs!858483 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173133 lambda!173098))))

(assert (=> bs!858482 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699771) (= lambda!173133 lambda!173066))))

(declare-fun bs!858484 () Bool)

(assert (= bs!858484 (and b!4524061 d!1394074)))

(assert (=> bs!858484 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700139) (= lambda!173133 lambda!173069))))

(declare-fun bs!858485 () Bool)

(assert (= bs!858485 (and b!4524061 b!4523060)))

(assert (=> bs!858485 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173133 lambda!172996))))

(assert (=> bs!858485 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699955) (= lambda!173133 lambda!172997))))

(assert (=> b!4524061 true))

(declare-fun bs!858486 () Bool)

(declare-fun b!4524064 () Bool)

(assert (= bs!858486 (and b!4524064 b!4523254)))

(declare-fun lambda!173134 () Int)

(assert (=> bs!858486 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699771) (= lambda!173134 lambda!173063))))

(declare-fun bs!858487 () Bool)

(assert (= bs!858487 (and b!4524064 b!4524061)))

(assert (=> bs!858487 (= lambda!173134 lambda!173133)))

(declare-fun bs!858488 () Bool)

(assert (= bs!858488 (and b!4524064 d!1394016)))

(assert (=> bs!858488 (not (= lambda!173134 lambda!173040))))

(declare-fun bs!858489 () Bool)

(assert (= bs!858489 (and b!4524064 d!1394204)))

(assert (=> bs!858489 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700292) (= lambda!173134 lambda!173103))))

(declare-fun bs!858490 () Bool)

(assert (= bs!858490 (and b!4524064 b!4523057)))

(assert (=> bs!858490 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173134 lambda!172995))))

(declare-fun bs!858491 () Bool)

(assert (= bs!858491 (and b!4524064 d!1394260)))

(assert (=> bs!858491 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700142) (= lambda!173134 lambda!173115))))

(declare-fun bs!858492 () Bool)

(assert (= bs!858492 (and b!4524064 d!1393892)))

(assert (=> bs!858492 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699952) (= lambda!173134 lambda!172998))))

(declare-fun bs!858493 () Bool)

(assert (= bs!858493 (and b!4524064 d!1394488)))

(assert (=> bs!858493 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173134 lambda!173131))))

(declare-fun bs!858494 () Bool)

(assert (= bs!858494 (and b!4524064 b!4523867)))

(assert (=> bs!858494 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700482) (= lambda!173134 lambda!173124))))

(declare-fun bs!858495 () Bool)

(assert (= bs!858495 (and b!4524064 b!4522898)))

(assert (=> bs!858495 (not (= lambda!173134 lambda!172949))))

(assert (=> bs!858494 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173134 lambda!173123))))

(declare-fun bs!858496 () Bool)

(assert (= bs!858496 (and b!4524064 b!4523864)))

(assert (=> bs!858496 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173134 lambda!173122))))

(declare-fun bs!858497 () Bool)

(assert (= bs!858497 (and b!4524064 b!4523505)))

(assert (=> bs!858497 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173134 lambda!173099))))

(declare-fun bs!858498 () Bool)

(assert (= bs!858498 (and b!4524064 d!1394436)))

(assert (=> bs!858498 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700479) (= lambda!173134 lambda!173125))))

(assert (=> bs!858497 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700295) (= lambda!173134 lambda!173102))))

(declare-fun bs!858499 () Bool)

(assert (= bs!858499 (and b!4524064 b!4523257)))

(assert (=> bs!858499 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700142) (= lambda!173134 lambda!173067))))

(declare-fun bs!858500 () Bool)

(assert (= bs!858500 (and b!4524064 b!4523502)))

(assert (=> bs!858500 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173134 lambda!173098))))

(assert (=> bs!858499 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699771) (= lambda!173134 lambda!173066))))

(declare-fun bs!858501 () Bool)

(assert (= bs!858501 (and b!4524064 d!1394074)))

(assert (=> bs!858501 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700139) (= lambda!173134 lambda!173069))))

(declare-fun bs!858502 () Bool)

(assert (= bs!858502 (and b!4524064 b!4523060)))

(assert (=> bs!858502 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699770) (= lambda!173134 lambda!172996))))

(assert (=> bs!858502 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1699955) (= lambda!173134 lambda!172997))))

(assert (=> b!4524064 true))

(declare-fun lt!1700614 () ListMap!3605)

(declare-fun lambda!173135 () Int)

(assert (=> bs!858486 (= (= lt!1700614 lt!1699771) (= lambda!173135 lambda!173063))))

(assert (=> bs!858487 (= (= lt!1700614 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173135 lambda!173133))))

(assert (=> bs!858488 (not (= lambda!173135 lambda!173040))))

(assert (=> bs!858489 (= (= lt!1700614 lt!1700292) (= lambda!173135 lambda!173103))))

(assert (=> bs!858490 (= (= lt!1700614 lt!1699770) (= lambda!173135 lambda!172995))))

(assert (=> bs!858491 (= (= lt!1700614 lt!1700142) (= lambda!173135 lambda!173115))))

(assert (=> bs!858492 (= (= lt!1700614 lt!1699952) (= lambda!173135 lambda!172998))))

(assert (=> bs!858493 (= (= lt!1700614 lt!1699770) (= lambda!173135 lambda!173131))))

(assert (=> bs!858494 (= (= lt!1700614 lt!1700482) (= lambda!173135 lambda!173124))))

(assert (=> b!4524064 (= (= lt!1700614 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173135 lambda!173134))))

(assert (=> bs!858495 (not (= lambda!173135 lambda!172949))))

(assert (=> bs!858494 (= (= lt!1700614 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173135 lambda!173123))))

(assert (=> bs!858496 (= (= lt!1700614 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173135 lambda!173122))))

(assert (=> bs!858497 (= (= lt!1700614 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173135 lambda!173099))))

(assert (=> bs!858498 (= (= lt!1700614 lt!1700479) (= lambda!173135 lambda!173125))))

(assert (=> bs!858497 (= (= lt!1700614 lt!1700295) (= lambda!173135 lambda!173102))))

(assert (=> bs!858499 (= (= lt!1700614 lt!1700142) (= lambda!173135 lambda!173067))))

(assert (=> bs!858500 (= (= lt!1700614 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173135 lambda!173098))))

(assert (=> bs!858499 (= (= lt!1700614 lt!1699771) (= lambda!173135 lambda!173066))))

(assert (=> bs!858501 (= (= lt!1700614 lt!1700139) (= lambda!173135 lambda!173069))))

(assert (=> bs!858502 (= (= lt!1700614 lt!1699770) (= lambda!173135 lambda!172996))))

(assert (=> bs!858502 (= (= lt!1700614 lt!1699955) (= lambda!173135 lambda!172997))))

(assert (=> b!4524064 true))

(declare-fun bs!858525 () Bool)

(declare-fun d!1394542 () Bool)

(assert (= bs!858525 (and d!1394542 b!4523254)))

(declare-fun lt!1700611 () ListMap!3605)

(declare-fun lambda!173138 () Int)

(assert (=> bs!858525 (= (= lt!1700611 lt!1699771) (= lambda!173138 lambda!173063))))

(declare-fun bs!858528 () Bool)

(assert (= bs!858528 (and d!1394542 b!4524061)))

(assert (=> bs!858528 (= (= lt!1700611 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173138 lambda!173133))))

(declare-fun bs!858530 () Bool)

(assert (= bs!858530 (and d!1394542 d!1394016)))

(assert (=> bs!858530 (not (= lambda!173138 lambda!173040))))

(declare-fun bs!858532 () Bool)

(assert (= bs!858532 (and d!1394542 d!1394204)))

(assert (=> bs!858532 (= (= lt!1700611 lt!1700292) (= lambda!173138 lambda!173103))))

(declare-fun bs!858534 () Bool)

(assert (= bs!858534 (and d!1394542 b!4523057)))

(assert (=> bs!858534 (= (= lt!1700611 lt!1699770) (= lambda!173138 lambda!172995))))

(declare-fun bs!858535 () Bool)

(assert (= bs!858535 (and d!1394542 d!1394260)))

(assert (=> bs!858535 (= (= lt!1700611 lt!1700142) (= lambda!173138 lambda!173115))))

(declare-fun bs!858537 () Bool)

(assert (= bs!858537 (and d!1394542 d!1393892)))

(assert (=> bs!858537 (= (= lt!1700611 lt!1699952) (= lambda!173138 lambda!172998))))

(declare-fun bs!858539 () Bool)

(assert (= bs!858539 (and d!1394542 d!1394488)))

(assert (=> bs!858539 (= (= lt!1700611 lt!1699770) (= lambda!173138 lambda!173131))))

(declare-fun bs!858541 () Bool)

(assert (= bs!858541 (and d!1394542 b!4523867)))

(assert (=> bs!858541 (= (= lt!1700611 lt!1700482) (= lambda!173138 lambda!173124))))

(declare-fun bs!858543 () Bool)

(assert (= bs!858543 (and d!1394542 b!4524064)))

(assert (=> bs!858543 (= (= lt!1700611 lt!1700614) (= lambda!173138 lambda!173135))))

(assert (=> bs!858543 (= (= lt!1700611 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173138 lambda!173134))))

(declare-fun bs!858546 () Bool)

(assert (= bs!858546 (and d!1394542 b!4522898)))

(assert (=> bs!858546 (not (= lambda!173138 lambda!172949))))

(assert (=> bs!858541 (= (= lt!1700611 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173138 lambda!173123))))

(declare-fun bs!858547 () Bool)

(assert (= bs!858547 (and d!1394542 b!4523864)))

(assert (=> bs!858547 (= (= lt!1700611 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173138 lambda!173122))))

(declare-fun bs!858548 () Bool)

(assert (= bs!858548 (and d!1394542 b!4523505)))

(assert (=> bs!858548 (= (= lt!1700611 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173138 lambda!173099))))

(declare-fun bs!858549 () Bool)

(assert (= bs!858549 (and d!1394542 d!1394436)))

(assert (=> bs!858549 (= (= lt!1700611 lt!1700479) (= lambda!173138 lambda!173125))))

(assert (=> bs!858548 (= (= lt!1700611 lt!1700295) (= lambda!173138 lambda!173102))))

(declare-fun bs!858550 () Bool)

(assert (= bs!858550 (and d!1394542 b!4523257)))

(assert (=> bs!858550 (= (= lt!1700611 lt!1700142) (= lambda!173138 lambda!173067))))

(declare-fun bs!858551 () Bool)

(assert (= bs!858551 (and d!1394542 b!4523502)))

(assert (=> bs!858551 (= (= lt!1700611 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173138 lambda!173098))))

(assert (=> bs!858550 (= (= lt!1700611 lt!1699771) (= lambda!173138 lambda!173066))))

(declare-fun bs!858552 () Bool)

(assert (= bs!858552 (and d!1394542 d!1394074)))

(assert (=> bs!858552 (= (= lt!1700611 lt!1700139) (= lambda!173138 lambda!173069))))

(declare-fun bs!858553 () Bool)

(assert (= bs!858553 (and d!1394542 b!4523060)))

(assert (=> bs!858553 (= (= lt!1700611 lt!1699770) (= lambda!173138 lambda!172996))))

(assert (=> bs!858553 (= (= lt!1700611 lt!1699955) (= lambda!173138 lambda!172997))))

(assert (=> d!1394542 true))

(declare-fun call!315250 () Bool)

(declare-fun bm!315244 () Bool)

(declare-fun c!772186 () Bool)

(assert (=> bm!315244 (= call!315250 (forall!10280 (ite c!772186 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699796))))) (ite c!772186 lambda!173133 lambda!173135)))))

(declare-fun e!2818727 () ListMap!3605)

(assert (=> b!4524061 (= e!2818727 (extractMap!1224 (t!357755 (toList!4344 lt!1699796))))))

(declare-fun lt!1700621 () Unit!95506)

(declare-fun call!315249 () Unit!95506)

(assert (=> b!4524061 (= lt!1700621 call!315249)))

(declare-fun call!315251 () Bool)

(assert (=> b!4524061 call!315251))

(declare-fun lt!1700618 () Unit!95506)

(assert (=> b!4524061 (= lt!1700618 lt!1700621)))

(assert (=> b!4524061 call!315250))

(declare-fun lt!1700623 () Unit!95506)

(declare-fun Unit!95664 () Unit!95506)

(assert (=> b!4524061 (= lt!1700623 Unit!95664)))

(declare-fun bm!315245 () Bool)

(assert (=> bm!315245 (= call!315251 (forall!10280 (ite c!772186 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (_2!28848 (h!56528 (toList!4344 lt!1699796)))) (ite c!772186 lambda!173133 lambda!173135)))))

(declare-fun b!4524062 () Bool)

(declare-fun res!1883364 () Bool)

(declare-fun e!2818725 () Bool)

(assert (=> b!4524062 (=> (not res!1883364) (not e!2818725))))

(assert (=> b!4524062 (= res!1883364 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lambda!173138))))

(declare-fun b!4524063 () Bool)

(declare-fun e!2818726 () Bool)

(assert (=> b!4524063 (= e!2818726 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lambda!173135))))

(declare-fun bm!315246 () Bool)

(assert (=> bm!315246 (= call!315249 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))))))

(assert (=> b!4524064 (= e!2818727 lt!1700614)))

(declare-fun lt!1700613 () ListMap!3605)

(assert (=> b!4524064 (= lt!1700613 (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796))))))))

(assert (=> b!4524064 (= lt!1700614 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699796)))) (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796)))))))))

(declare-fun lt!1700622 () Unit!95506)

(assert (=> b!4524064 (= lt!1700622 call!315249)))

(assert (=> b!4524064 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lambda!173134)))

(declare-fun lt!1700624 () Unit!95506)

(assert (=> b!4524064 (= lt!1700624 lt!1700622)))

(assert (=> b!4524064 (forall!10280 (toList!4343 lt!1700613) lambda!173135)))

(declare-fun lt!1700605 () Unit!95506)

(declare-fun Unit!95665 () Unit!95506)

(assert (=> b!4524064 (= lt!1700605 Unit!95665)))

(assert (=> b!4524064 call!315250))

(declare-fun lt!1700616 () Unit!95506)

(declare-fun Unit!95666 () Unit!95506)

(assert (=> b!4524064 (= lt!1700616 Unit!95666)))

(declare-fun lt!1700604 () Unit!95506)

(declare-fun Unit!95667 () Unit!95506)

(assert (=> b!4524064 (= lt!1700604 Unit!95667)))

(declare-fun lt!1700607 () Unit!95506)

(assert (=> b!4524064 (= lt!1700607 (forallContained!2532 (toList!4343 lt!1700613) lambda!173135 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796))))))))

(assert (=> b!4524064 (contains!13409 lt!1700613 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796))))))))

(declare-fun lt!1700606 () Unit!95506)

(declare-fun Unit!95668 () Unit!95506)

(assert (=> b!4524064 (= lt!1700606 Unit!95668)))

(assert (=> b!4524064 (contains!13409 lt!1700614 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796))))))))

(declare-fun lt!1700619 () Unit!95506)

(declare-fun Unit!95669 () Unit!95506)

(assert (=> b!4524064 (= lt!1700619 Unit!95669)))

(assert (=> b!4524064 call!315251))

(declare-fun lt!1700608 () Unit!95506)

(declare-fun Unit!95670 () Unit!95506)

(assert (=> b!4524064 (= lt!1700608 Unit!95670)))

(assert (=> b!4524064 (forall!10280 (toList!4343 lt!1700613) lambda!173135)))

(declare-fun lt!1700610 () Unit!95506)

(declare-fun Unit!95671 () Unit!95506)

(assert (=> b!4524064 (= lt!1700610 Unit!95671)))

(declare-fun lt!1700620 () Unit!95506)

(declare-fun Unit!95672 () Unit!95506)

(assert (=> b!4524064 (= lt!1700620 Unit!95672)))

(declare-fun lt!1700615 () Unit!95506)

(assert (=> b!4524064 (= lt!1700615 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700614 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699796)))))))))

(assert (=> b!4524064 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lambda!173135)))

(declare-fun lt!1700609 () Unit!95506)

(assert (=> b!4524064 (= lt!1700609 lt!1700615)))

(assert (=> b!4524064 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lambda!173135)))

(declare-fun lt!1700612 () Unit!95506)

(declare-fun Unit!95673 () Unit!95506)

(assert (=> b!4524064 (= lt!1700612 Unit!95673)))

(declare-fun res!1883362 () Bool)

(assert (=> b!4524064 (= res!1883362 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699796))) lambda!173135))))

(assert (=> b!4524064 (=> (not res!1883362) (not e!2818726))))

(assert (=> b!4524064 e!2818726))

(declare-fun lt!1700617 () Unit!95506)

(declare-fun Unit!95674 () Unit!95506)

(assert (=> b!4524064 (= lt!1700617 Unit!95674)))

(assert (=> d!1394542 e!2818725))

(declare-fun res!1883363 () Bool)

(assert (=> d!1394542 (=> (not res!1883363) (not e!2818725))))

(assert (=> d!1394542 (= res!1883363 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699796))) lambda!173138))))

(assert (=> d!1394542 (= lt!1700611 e!2818727)))

(assert (=> d!1394542 (= c!772186 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lt!1699796)))))))

(assert (=> d!1394542 (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699796))))))

(assert (=> d!1394542 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699796))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) lt!1700611)))

(declare-fun b!4524065 () Bool)

(assert (=> b!4524065 (= e!2818725 (invariantList!1023 (toList!4343 lt!1700611)))))

(assert (= (and d!1394542 c!772186) b!4524061))

(assert (= (and d!1394542 (not c!772186)) b!4524064))

(assert (= (and b!4524064 res!1883362) b!4524063))

(assert (= (or b!4524061 b!4524064) bm!315244))

(assert (= (or b!4524061 b!4524064) bm!315245))

(assert (= (or b!4524061 b!4524064) bm!315246))

(assert (= (and d!1394542 res!1883363) b!4524062))

(assert (= (and b!4524062 res!1883364) b!4524065))

(declare-fun m!5275163 () Bool)

(assert (=> b!4524064 m!5275163))

(declare-fun m!5275165 () Bool)

(assert (=> b!4524064 m!5275165))

(declare-fun m!5275167 () Bool)

(assert (=> b!4524064 m!5275167))

(declare-fun m!5275169 () Bool)

(assert (=> b!4524064 m!5275169))

(assert (=> b!4524064 m!5275169))

(declare-fun m!5275171 () Bool)

(assert (=> b!4524064 m!5275171))

(assert (=> b!4524064 m!5275171))

(declare-fun m!5275173 () Bool)

(assert (=> b!4524064 m!5275173))

(assert (=> b!4524064 m!5273701))

(declare-fun m!5275175 () Bool)

(assert (=> b!4524064 m!5275175))

(assert (=> b!4524064 m!5273701))

(assert (=> b!4524064 m!5275165))

(declare-fun m!5275177 () Bool)

(assert (=> b!4524064 m!5275177))

(declare-fun m!5275179 () Bool)

(assert (=> b!4524064 m!5275179))

(declare-fun m!5275181 () Bool)

(assert (=> b!4524064 m!5275181))

(declare-fun m!5275183 () Bool)

(assert (=> b!4524062 m!5275183))

(assert (=> b!4524063 m!5275169))

(declare-fun m!5275185 () Bool)

(assert (=> bm!315245 m!5275185))

(assert (=> bm!315246 m!5273701))

(declare-fun m!5275187 () Bool)

(assert (=> bm!315246 m!5275187))

(declare-fun m!5275189 () Bool)

(assert (=> bm!315244 m!5275189))

(declare-fun m!5275191 () Bool)

(assert (=> d!1394542 m!5275191))

(declare-fun m!5275193 () Bool)

(assert (=> d!1394542 m!5275193))

(declare-fun m!5275195 () Bool)

(assert (=> b!4524065 m!5275195))

(assert (=> b!4523207 d!1394542))

(declare-fun bs!858557 () Bool)

(declare-fun d!1394554 () Bool)

(assert (= bs!858557 (and d!1394554 d!1394104)))

(declare-fun lambda!173141 () Int)

(assert (=> bs!858557 (= lambda!173141 lambda!173072)))

(declare-fun bs!858560 () Bool)

(assert (= bs!858560 (and d!1394554 d!1394024)))

(assert (=> bs!858560 (= lambda!173141 lambda!173050)))

(declare-fun bs!858562 () Bool)

(assert (= bs!858562 (and d!1394554 d!1394100)))

(assert (=> bs!858562 (= lambda!173141 lambda!173071)))

(declare-fun bs!858564 () Bool)

(assert (= bs!858564 (and d!1394554 d!1394070)))

(assert (=> bs!858564 (not (= lambda!173141 lambda!173062))))

(declare-fun bs!858566 () Bool)

(assert (= bs!858566 (and d!1394554 d!1394110)))

(assert (=> bs!858566 (= lambda!173141 lambda!173076)))

(declare-fun bs!858568 () Bool)

(assert (= bs!858568 (and d!1394554 d!1394526)))

(assert (=> bs!858568 (= lambda!173141 lambda!173132)))

(declare-fun bs!858570 () Bool)

(assert (= bs!858570 (and d!1394554 start!448016)))

(assert (=> bs!858570 (= lambda!173141 lambda!172947)))

(declare-fun bs!858572 () Bool)

(assert (= bs!858572 (and d!1394554 d!1394010)))

(assert (=> bs!858572 (= lambda!173141 lambda!173036)))

(declare-fun bs!858574 () Bool)

(assert (= bs!858574 (and d!1394554 b!4522898)))

(assert (=> bs!858574 (not (= lambda!173141 lambda!172948))))

(declare-fun bs!858576 () Bool)

(assert (= bs!858576 (and d!1394554 d!1394080)))

(assert (=> bs!858576 (= lambda!173141 lambda!173070)))

(declare-fun bs!858578 () Bool)

(assert (= bs!858578 (and d!1394554 d!1394054)))

(assert (=> bs!858578 (= lambda!173141 lambda!173059)))

(declare-fun bs!858580 () Bool)

(assert (= bs!858580 (and d!1394554 d!1394038)))

(assert (=> bs!858580 (= lambda!173141 lambda!173051)))

(declare-fun bs!858581 () Bool)

(assert (= bs!858581 (and d!1394554 d!1394452)))

(assert (=> bs!858581 (= lambda!173141 lambda!173126)))

(declare-fun bs!858583 () Bool)

(assert (= bs!858583 (and d!1394554 d!1394106)))

(assert (=> bs!858583 (= lambda!173141 lambda!173075)))

(declare-fun bs!858585 () Bool)

(assert (= bs!858585 (and d!1394554 d!1394122)))

(assert (=> bs!858585 (= lambda!173141 lambda!173079)))

(declare-fun bs!858587 () Bool)

(assert (= bs!858587 (and d!1394554 d!1393990)))

(assert (=> bs!858587 (= lambda!173141 lambda!173001)))

(declare-fun lt!1700652 () ListMap!3605)

(assert (=> d!1394554 (invariantList!1023 (toList!4343 lt!1700652))))

(declare-fun e!2818742 () ListMap!3605)

(assert (=> d!1394554 (= lt!1700652 e!2818742)))

(declare-fun c!772196 () Bool)

(assert (=> d!1394554 (= c!772196 ((_ is Cons!50669) (t!357755 (toList!4344 lt!1699796))))))

(assert (=> d!1394554 (forall!10281 (t!357755 (toList!4344 lt!1699796)) lambda!173141)))

(assert (=> d!1394554 (= (extractMap!1224 (t!357755 (toList!4344 lt!1699796))) lt!1700652)))

(declare-fun b!4524092 () Bool)

(assert (=> b!4524092 (= e!2818742 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 lt!1699796)))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lt!1699796))))))))

(declare-fun b!4524093 () Bool)

(assert (=> b!4524093 (= e!2818742 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394554 c!772196) b!4524092))

(assert (= (and d!1394554 (not c!772196)) b!4524093))

(declare-fun m!5275197 () Bool)

(assert (=> d!1394554 m!5275197))

(declare-fun m!5275199 () Bool)

(assert (=> d!1394554 m!5275199))

(declare-fun m!5275201 () Bool)

(assert (=> b!4524092 m!5275201))

(assert (=> b!4524092 m!5275201))

(declare-fun m!5275203 () Bool)

(assert (=> b!4524092 m!5275203))

(assert (=> b!4523207 d!1394554))

(assert (=> b!4523078 d!1394136))

(assert (=> b!4523078 d!1394138))

(declare-fun d!1394556 () Bool)

(declare-fun lt!1700653 () Bool)

(assert (=> d!1394556 (= lt!1700653 (select (content!8374 (_2!28848 lt!1699794)) (get!16604 lt!1700033)))))

(declare-fun e!2818744 () Bool)

(assert (=> d!1394556 (= lt!1700653 e!2818744)))

(declare-fun res!1883374 () Bool)

(assert (=> d!1394556 (=> (not res!1883374) (not e!2818744))))

(assert (=> d!1394556 (= res!1883374 ((_ is Cons!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394556 (= (contains!13411 (_2!28848 lt!1699794) (get!16604 lt!1700033)) lt!1700653)))

(declare-fun b!4524094 () Bool)

(declare-fun e!2818743 () Bool)

(assert (=> b!4524094 (= e!2818744 e!2818743)))

(declare-fun res!1883373 () Bool)

(assert (=> b!4524094 (=> res!1883373 e!2818743)))

(assert (=> b!4524094 (= res!1883373 (= (h!56527 (_2!28848 lt!1699794)) (get!16604 lt!1700033)))))

(declare-fun b!4524095 () Bool)

(assert (=> b!4524095 (= e!2818743 (contains!13411 (t!357754 (_2!28848 lt!1699794)) (get!16604 lt!1700033)))))

(assert (= (and d!1394556 res!1883374) b!4524094))

(assert (= (and b!4524094 (not res!1883373)) b!4524095))

(declare-fun m!5275205 () Bool)

(assert (=> d!1394556 m!5275205))

(assert (=> d!1394556 m!5273539))

(declare-fun m!5275207 () Bool)

(assert (=> d!1394556 m!5275207))

(assert (=> b!4524095 m!5273539))

(declare-fun m!5275209 () Bool)

(assert (=> b!4524095 m!5275209))

(assert (=> b!4523133 d!1394556))

(assert (=> b!4523133 d!1394180))

(declare-fun d!1394558 () Bool)

(declare-fun c!772199 () Bool)

(assert (=> d!1394558 (= c!772199 ((_ is Nil!50671) (keys!17608 lt!1699768)))))

(declare-fun e!2818747 () (InoxSet K!12060))

(assert (=> d!1394558 (= (content!8376 (keys!17608 lt!1699768)) e!2818747)))

(declare-fun b!4524100 () Bool)

(assert (=> b!4524100 (= e!2818747 ((as const (Array K!12060 Bool)) false))))

(declare-fun b!4524101 () Bool)

(assert (=> b!4524101 (= e!2818747 ((_ map or) (store ((as const (Array K!12060 Bool)) false) (h!56532 (keys!17608 lt!1699768)) true) (content!8376 (t!357757 (keys!17608 lt!1699768)))))))

(assert (= (and d!1394558 c!772199) b!4524100))

(assert (= (and d!1394558 (not c!772199)) b!4524101))

(declare-fun m!5275247 () Bool)

(assert (=> b!4524101 m!5275247))

(declare-fun m!5275249 () Bool)

(assert (=> b!4524101 m!5275249))

(assert (=> b!4523220 d!1394558))

(assert (=> b!4523220 d!1394456))

(declare-fun d!1394562 () Bool)

(declare-fun c!772201 () Bool)

(assert (=> d!1394562 (= c!772201 ((_ is Nil!50671) (keys!17608 lt!1700118)))))

(declare-fun e!2818749 () (InoxSet K!12060))

(assert (=> d!1394562 (= (content!8376 (keys!17608 lt!1700118)) e!2818749)))

(declare-fun b!4524104 () Bool)

(assert (=> b!4524104 (= e!2818749 ((as const (Array K!12060 Bool)) false))))

(declare-fun b!4524105 () Bool)

(assert (=> b!4524105 (= e!2818749 ((_ map or) (store ((as const (Array K!12060 Bool)) false) (h!56532 (keys!17608 lt!1700118)) true) (content!8376 (t!357757 (keys!17608 lt!1700118)))))))

(assert (= (and d!1394562 c!772201) b!4524104))

(assert (= (and d!1394562 (not c!772201)) b!4524105))

(declare-fun m!5275251 () Bool)

(assert (=> b!4524105 m!5275251))

(declare-fun m!5275253 () Bool)

(assert (=> b!4524105 m!5275253))

(assert (=> b!4523220 d!1394562))

(declare-fun bs!858595 () Bool)

(declare-fun b!4524107 () Bool)

(assert (= bs!858595 (and b!4524107 b!4523444)))

(declare-fun lambda!173143 () Int)

(assert (=> bs!858595 (= (= (toList!4343 lt!1700118) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173143 lambda!173084))))

(declare-fun bs!858597 () Bool)

(assert (= bs!858597 (and b!4524107 b!4523453)))

(assert (=> bs!858597 (= (= (toList!4343 lt!1700118) (toList!4343 lt!1699778)) (= lambda!173143 lambda!173086))))

(declare-fun bs!858599 () Bool)

(assert (= bs!858599 (and b!4524107 b!4523892)))

(assert (=> bs!858599 (= (= (toList!4343 lt!1700118) (toList!4343 lt!1699768)) (= lambda!173143 lambda!173127))))

(assert (=> b!4524107 true))

(declare-fun bs!858603 () Bool)

(declare-fun b!4524108 () Bool)

(assert (= bs!858603 (and b!4524108 b!4523445)))

(declare-fun lambda!173144 () Int)

(assert (=> bs!858603 (= lambda!173144 lambda!173085)))

(declare-fun bs!858605 () Bool)

(assert (= bs!858605 (and b!4524108 b!4523454)))

(assert (=> bs!858605 (= lambda!173144 lambda!173087)))

(declare-fun bs!858607 () Bool)

(assert (= bs!858607 (and b!4524108 b!4523893)))

(assert (=> bs!858607 (= lambda!173144 lambda!173128)))

(declare-fun d!1394564 () Bool)

(declare-fun e!2818750 () Bool)

(assert (=> d!1394564 e!2818750))

(declare-fun res!1883376 () Bool)

(assert (=> d!1394564 (=> (not res!1883376) (not e!2818750))))

(declare-fun lt!1700655 () List!50795)

(assert (=> d!1394564 (= res!1883376 (noDuplicate!750 lt!1700655))))

(assert (=> d!1394564 (= lt!1700655 (getKeysList!471 (toList!4343 lt!1700118)))))

(assert (=> d!1394564 (= (keys!17608 lt!1700118) lt!1700655)))

(declare-fun b!4524106 () Bool)

(declare-fun res!1883375 () Bool)

(assert (=> b!4524106 (=> (not res!1883375) (not e!2818750))))

(assert (=> b!4524106 (= res!1883375 (= (length!356 lt!1700655) (length!357 (toList!4343 lt!1700118))))))

(declare-fun res!1883377 () Bool)

(assert (=> b!4524107 (=> (not res!1883377) (not e!2818750))))

(assert (=> b!4524107 (= res!1883377 (forall!10283 lt!1700655 lambda!173143))))

(assert (=> b!4524108 (= e!2818750 (= (content!8376 lt!1700655) (content!8376 (map!11145 (toList!4343 lt!1700118) lambda!173144))))))

(assert (= (and d!1394564 res!1883376) b!4524106))

(assert (= (and b!4524106 res!1883375) b!4524107))

(assert (= (and b!4524107 res!1883377) b!4524108))

(declare-fun m!5275255 () Bool)

(assert (=> d!1394564 m!5275255))

(assert (=> d!1394564 m!5274477))

(declare-fun m!5275265 () Bool)

(assert (=> b!4524106 m!5275265))

(declare-fun m!5275267 () Bool)

(assert (=> b!4524106 m!5275267))

(declare-fun m!5275269 () Bool)

(assert (=> b!4524107 m!5275269))

(declare-fun m!5275271 () Bool)

(assert (=> b!4524108 m!5275271))

(declare-fun m!5275273 () Bool)

(assert (=> b!4524108 m!5275273))

(assert (=> b!4524108 m!5275273))

(declare-fun m!5275275 () Bool)

(assert (=> b!4524108 m!5275275))

(assert (=> b!4523220 d!1394564))

(declare-fun d!1394568 () Bool)

(assert (=> d!1394568 (= (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287)) (not (isEmpty!28683 (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))))

(declare-fun bs!858610 () Bool)

(assert (= bs!858610 d!1394568))

(assert (=> bs!858610 m!5273927))

(declare-fun m!5275277 () Bool)

(assert (=> bs!858610 m!5275277))

(assert (=> b!4523311 d!1394568))

(declare-fun b!4524111 () Bool)

(declare-fun e!2818752 () Option!11131)

(assert (=> b!4524111 (= e!2818752 (getValueByKey!1105 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(declare-fun b!4524110 () Bool)

(declare-fun e!2818751 () Option!11131)

(assert (=> b!4524110 (= e!2818751 e!2818752)))

(declare-fun c!772203 () Bool)

(assert (=> b!4524110 (= c!772203 (and ((_ is Cons!50668) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (not (= (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) key!3287))))))

(declare-fun b!4524112 () Bool)

(assert (=> b!4524112 (= e!2818752 None!11130)))

(declare-fun b!4524109 () Bool)

(assert (=> b!4524109 (= e!2818751 (Some!11130 (_2!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun d!1394570 () Bool)

(declare-fun c!772202 () Bool)

(assert (=> d!1394570 (= c!772202 (and ((_ is Cons!50668) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) key!3287)))))

(assert (=> d!1394570 (= (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) e!2818751)))

(assert (= (and d!1394570 c!772202) b!4524109))

(assert (= (and d!1394570 (not c!772202)) b!4524110))

(assert (= (and b!4524110 c!772203) b!4524111))

(assert (= (and b!4524110 (not c!772203)) b!4524112))

(declare-fun m!5275279 () Bool)

(assert (=> b!4524111 m!5275279))

(assert (=> b!4523311 d!1394570))

(assert (=> b!4523148 d!1394012))

(declare-fun b!4524117 () Bool)

(declare-fun e!2818755 () Option!11130)

(declare-fun e!2818756 () Option!11130)

(assert (=> b!4524117 (= e!2818755 e!2818756)))

(declare-fun c!772206 () Bool)

(assert (=> b!4524117 (= c!772206 (and ((_ is Cons!50669) (toList!4344 lt!1700112)) (not (= (_1!28848 (h!56528 (toList!4344 lt!1700112))) (_1!28848 lt!1699772)))))))

(declare-fun d!1394574 () Bool)

(declare-fun c!772205 () Bool)

(assert (=> d!1394574 (= c!772205 (and ((_ is Cons!50669) (toList!4344 lt!1700112)) (= (_1!28848 (h!56528 (toList!4344 lt!1700112))) (_1!28848 lt!1699772))))))

(assert (=> d!1394574 (= (getValueByKey!1104 (toList!4344 lt!1700112) (_1!28848 lt!1699772)) e!2818755)))

(declare-fun b!4524118 () Bool)

(assert (=> b!4524118 (= e!2818756 (getValueByKey!1104 (t!357755 (toList!4344 lt!1700112)) (_1!28848 lt!1699772)))))

(declare-fun b!4524116 () Bool)

(assert (=> b!4524116 (= e!2818755 (Some!11129 (_2!28848 (h!56528 (toList!4344 lt!1700112)))))))

(declare-fun b!4524119 () Bool)

(assert (=> b!4524119 (= e!2818756 None!11129)))

(assert (= (and d!1394574 c!772205) b!4524116))

(assert (= (and d!1394574 (not c!772205)) b!4524117))

(assert (= (and b!4524117 c!772206) b!4524118))

(assert (= (and b!4524117 (not c!772206)) b!4524119))

(declare-fun m!5275289 () Bool)

(assert (=> b!4524118 m!5275289))

(assert (=> b!4523203 d!1394574))

(declare-fun d!1394578 () Bool)

(assert (=> d!1394578 (= (invariantList!1023 (toList!4343 lt!1700114)) (noDuplicatedKeys!264 (toList!4343 lt!1700114)))))

(declare-fun bs!858611 () Bool)

(assert (= bs!858611 d!1394578))

(declare-fun m!5275291 () Bool)

(assert (=> bs!858611 m!5275291))

(assert (=> d!1394038 d!1394578))

(declare-fun d!1394580 () Bool)

(declare-fun res!1883379 () Bool)

(declare-fun e!2818757 () Bool)

(assert (=> d!1394580 (=> res!1883379 e!2818757)))

(assert (=> d!1394580 (= res!1883379 ((_ is Nil!50669) (toList!4344 lt!1699796)))))

(assert (=> d!1394580 (= (forall!10281 (toList!4344 lt!1699796) lambda!173051) e!2818757)))

(declare-fun b!4524120 () Bool)

(declare-fun e!2818758 () Bool)

(assert (=> b!4524120 (= e!2818757 e!2818758)))

(declare-fun res!1883380 () Bool)

(assert (=> b!4524120 (=> (not res!1883380) (not e!2818758))))

(assert (=> b!4524120 (= res!1883380 (dynLambda!21171 lambda!173051 (h!56528 (toList!4344 lt!1699796))))))

(declare-fun b!4524121 () Bool)

(assert (=> b!4524121 (= e!2818758 (forall!10281 (t!357755 (toList!4344 lt!1699796)) lambda!173051))))

(assert (= (and d!1394580 (not res!1883379)) b!4524120))

(assert (= (and b!4524120 res!1883380) b!4524121))

(declare-fun b_lambda!155373 () Bool)

(assert (=> (not b_lambda!155373) (not b!4524120)))

(declare-fun m!5275293 () Bool)

(assert (=> b!4524120 m!5275293))

(declare-fun m!5275295 () Bool)

(assert (=> b!4524121 m!5275295))

(assert (=> d!1394038 d!1394580))

(declare-fun bs!858612 () Bool)

(declare-fun d!1394582 () Bool)

(assert (= bs!858612 (and d!1394582 b!4523254)))

(declare-fun lambda!173145 () Int)

(assert (=> bs!858612 (not (= lambda!173145 lambda!173063))))

(declare-fun bs!858613 () Bool)

(assert (= bs!858613 (and d!1394582 b!4524061)))

(assert (=> bs!858613 (not (= lambda!173145 lambda!173133))))

(declare-fun bs!858614 () Bool)

(assert (= bs!858614 (and d!1394582 d!1394016)))

(assert (=> bs!858614 (= (= (_1!28848 (h!56528 (toList!4344 lm!1477))) hash!344) (= lambda!173145 lambda!173040))))

(declare-fun bs!858615 () Bool)

(assert (= bs!858615 (and d!1394582 d!1394204)))

(assert (=> bs!858615 (not (= lambda!173145 lambda!173103))))

(declare-fun bs!858616 () Bool)

(assert (= bs!858616 (and d!1394582 b!4523057)))

(assert (=> bs!858616 (not (= lambda!173145 lambda!172995))))

(declare-fun bs!858617 () Bool)

(assert (= bs!858617 (and d!1394582 d!1394260)))

(assert (=> bs!858617 (not (= lambda!173145 lambda!173115))))

(declare-fun bs!858618 () Bool)

(assert (= bs!858618 (and d!1394582 d!1393892)))

(assert (=> bs!858618 (not (= lambda!173145 lambda!172998))))

(declare-fun bs!858619 () Bool)

(assert (= bs!858619 (and d!1394582 d!1394488)))

(assert (=> bs!858619 (not (= lambda!173145 lambda!173131))))

(declare-fun bs!858621 () Bool)

(assert (= bs!858621 (and d!1394582 b!4523867)))

(assert (=> bs!858621 (not (= lambda!173145 lambda!173124))))

(declare-fun bs!858622 () Bool)

(assert (= bs!858622 (and d!1394582 b!4524064)))

(assert (=> bs!858622 (not (= lambda!173145 lambda!173135))))

(assert (=> bs!858622 (not (= lambda!173145 lambda!173134))))

(declare-fun bs!858623 () Bool)

(assert (= bs!858623 (and d!1394582 b!4522898)))

(assert (=> bs!858623 (= lambda!173145 lambda!172949)))

(assert (=> bs!858621 (not (= lambda!173145 lambda!173123))))

(declare-fun bs!858624 () Bool)

(assert (= bs!858624 (and d!1394582 b!4523864)))

(assert (=> bs!858624 (not (= lambda!173145 lambda!173122))))

(declare-fun bs!858625 () Bool)

(assert (= bs!858625 (and d!1394582 b!4523505)))

(assert (=> bs!858625 (not (= lambda!173145 lambda!173099))))

(declare-fun bs!858626 () Bool)

(assert (= bs!858626 (and d!1394582 d!1394436)))

(assert (=> bs!858626 (not (= lambda!173145 lambda!173125))))

(assert (=> bs!858625 (not (= lambda!173145 lambda!173102))))

(declare-fun bs!858627 () Bool)

(assert (= bs!858627 (and d!1394582 d!1394542)))

(assert (=> bs!858627 (not (= lambda!173145 lambda!173138))))

(declare-fun bs!858629 () Bool)

(assert (= bs!858629 (and d!1394582 b!4523257)))

(assert (=> bs!858629 (not (= lambda!173145 lambda!173067))))

(declare-fun bs!858630 () Bool)

(assert (= bs!858630 (and d!1394582 b!4523502)))

(assert (=> bs!858630 (not (= lambda!173145 lambda!173098))))

(assert (=> bs!858629 (not (= lambda!173145 lambda!173066))))

(declare-fun bs!858631 () Bool)

(assert (= bs!858631 (and d!1394582 d!1394074)))

(assert (=> bs!858631 (not (= lambda!173145 lambda!173069))))

(declare-fun bs!858632 () Bool)

(assert (= bs!858632 (and d!1394582 b!4523060)))

(assert (=> bs!858632 (not (= lambda!173145 lambda!172996))))

(assert (=> bs!858632 (not (= lambda!173145 lambda!172997))))

(assert (=> d!1394582 true))

(assert (=> d!1394582 true))

(assert (=> d!1394582 (= (allKeysSameHash!1022 (_2!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 (h!56528 (toList!4344 lm!1477))) hashF!1107) (forall!10280 (_2!28848 (h!56528 (toList!4344 lm!1477))) lambda!173145))))

(declare-fun bs!858633 () Bool)

(assert (= bs!858633 d!1394582))

(declare-fun m!5275307 () Bool)

(assert (=> bs!858633 m!5275307))

(assert (=> bs!858178 d!1394582))

(declare-fun bs!858637 () Bool)

(declare-fun b!4524203 () Bool)

(assert (= bs!858637 (and b!4524203 b!4523444)))

(declare-fun lambda!173154 () Int)

(assert (=> bs!858637 (= (= (t!357754 (toList!4343 lt!1699778)) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173154 lambda!173084))))

(declare-fun bs!858638 () Bool)

(assert (= bs!858638 (and b!4524203 b!4523453)))

(assert (=> bs!858638 (= (= (t!357754 (toList!4343 lt!1699778)) (toList!4343 lt!1699778)) (= lambda!173154 lambda!173086))))

(declare-fun bs!858639 () Bool)

(assert (= bs!858639 (and b!4524203 b!4523892)))

(assert (=> bs!858639 (= (= (t!357754 (toList!4343 lt!1699778)) (toList!4343 lt!1699768)) (= lambda!173154 lambda!173127))))

(declare-fun bs!858640 () Bool)

(assert (= bs!858640 (and b!4524203 b!4524107)))

(assert (=> bs!858640 (= (= (t!357754 (toList!4343 lt!1699778)) (toList!4343 lt!1700118)) (= lambda!173154 lambda!173143))))

(assert (=> b!4524203 true))

(declare-fun bs!858641 () Bool)

(declare-fun b!4524206 () Bool)

(assert (= bs!858641 (and b!4524206 b!4523892)))

(declare-fun lambda!173155 () Int)

(assert (=> bs!858641 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778))) (toList!4343 lt!1699768)) (= lambda!173155 lambda!173127))))

(declare-fun bs!858642 () Bool)

(assert (= bs!858642 (and b!4524206 b!4523453)))

(assert (=> bs!858642 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778))) (toList!4343 lt!1699778)) (= lambda!173155 lambda!173086))))

(declare-fun bs!858643 () Bool)

(assert (= bs!858643 (and b!4524206 b!4524107)))

(assert (=> bs!858643 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778))) (toList!4343 lt!1700118)) (= lambda!173155 lambda!173143))))

(declare-fun bs!858644 () Bool)

(assert (= bs!858644 (and b!4524206 b!4523444)))

(assert (=> bs!858644 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778))) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173155 lambda!173084))))

(declare-fun bs!858645 () Bool)

(assert (= bs!858645 (and b!4524206 b!4524203)))

(assert (=> bs!858645 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778))) (t!357754 (toList!4343 lt!1699778))) (= lambda!173155 lambda!173154))))

(assert (=> b!4524206 true))

(declare-fun bs!858646 () Bool)

(declare-fun b!4524211 () Bool)

(assert (= bs!858646 (and b!4524211 b!4523892)))

(declare-fun lambda!173156 () Int)

(assert (=> bs!858646 (= (= (toList!4343 lt!1699778) (toList!4343 lt!1699768)) (= lambda!173156 lambda!173127))))

(declare-fun bs!858647 () Bool)

(assert (= bs!858647 (and b!4524211 b!4523453)))

(assert (=> bs!858647 (= lambda!173156 lambda!173086)))

(declare-fun bs!858648 () Bool)

(assert (= bs!858648 (and b!4524211 b!4524107)))

(assert (=> bs!858648 (= (= (toList!4343 lt!1699778) (toList!4343 lt!1700118)) (= lambda!173156 lambda!173143))))

(declare-fun bs!858649 () Bool)

(assert (= bs!858649 (and b!4524211 b!4524203)))

(assert (=> bs!858649 (= (= (toList!4343 lt!1699778) (t!357754 (toList!4343 lt!1699778))) (= lambda!173156 lambda!173154))))

(declare-fun bs!858650 () Bool)

(assert (= bs!858650 (and b!4524211 b!4524206)))

(assert (=> bs!858650 (= (= (toList!4343 lt!1699778) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173156 lambda!173155))))

(declare-fun bs!858651 () Bool)

(assert (= bs!858651 (and b!4524211 b!4523444)))

(assert (=> bs!858651 (= (= (toList!4343 lt!1699778) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173156 lambda!173084))))

(assert (=> b!4524211 true))

(declare-fun bs!858652 () Bool)

(declare-fun b!4524209 () Bool)

(assert (= bs!858652 (and b!4524209 b!4523445)))

(declare-fun lambda!173157 () Int)

(assert (=> bs!858652 (= lambda!173157 lambda!173085)))

(declare-fun bs!858653 () Bool)

(assert (= bs!858653 (and b!4524209 b!4523454)))

(assert (=> bs!858653 (= lambda!173157 lambda!173087)))

(declare-fun bs!858654 () Bool)

(assert (= bs!858654 (and b!4524209 b!4523893)))

(assert (=> bs!858654 (= lambda!173157 lambda!173128)))

(declare-fun bs!858655 () Bool)

(assert (= bs!858655 (and b!4524209 b!4524108)))

(assert (=> bs!858655 (= lambda!173157 lambda!173144)))

(assert (=> b!4524203 false))

(declare-fun lt!1700694 () Unit!95506)

(declare-fun forallContained!2534 (List!50795 Int K!12060) Unit!95506)

(assert (=> b!4524203 (= lt!1700694 (forallContained!2534 (getKeysList!471 (t!357754 (toList!4343 lt!1699778))) lambda!173154 (_1!28847 (h!56527 (toList!4343 lt!1699778)))))))

(declare-fun e!2818810 () Unit!95506)

(declare-fun Unit!95686 () Unit!95506)

(assert (=> b!4524203 (= e!2818810 Unit!95686)))

(declare-fun d!1394592 () Bool)

(declare-fun e!2818809 () Bool)

(assert (=> d!1394592 e!2818809))

(declare-fun res!1883417 () Bool)

(assert (=> d!1394592 (=> (not res!1883417) (not e!2818809))))

(declare-fun lt!1700700 () List!50795)

(assert (=> d!1394592 (= res!1883417 (noDuplicate!750 lt!1700700))))

(declare-fun e!2818811 () List!50795)

(assert (=> d!1394592 (= lt!1700700 e!2818811)))

(declare-fun c!772232 () Bool)

(assert (=> d!1394592 (= c!772232 ((_ is Cons!50668) (toList!4343 lt!1699778)))))

(assert (=> d!1394592 (invariantList!1023 (toList!4343 lt!1699778))))

(assert (=> d!1394592 (= (getKeysList!471 (toList!4343 lt!1699778)) lt!1700700)))

(declare-fun b!4524204 () Bool)

(assert (=> b!4524204 (= e!2818811 Nil!50671)))

(declare-fun b!4524205 () Bool)

(declare-fun res!1883418 () Bool)

(assert (=> b!4524205 (=> (not res!1883418) (not e!2818809))))

(assert (=> b!4524205 (= res!1883418 (= (length!356 lt!1700700) (length!357 (toList!4343 lt!1699778))))))

(assert (=> b!4524206 (= e!2818811 (Cons!50671 (_1!28847 (h!56527 (toList!4343 lt!1699778))) (getKeysList!471 (t!357754 (toList!4343 lt!1699778)))))))

(declare-fun c!772230 () Bool)

(assert (=> b!4524206 (= c!772230 (containsKey!1804 (t!357754 (toList!4343 lt!1699778)) (_1!28847 (h!56527 (toList!4343 lt!1699778)))))))

(declare-fun lt!1700696 () Unit!95506)

(declare-fun e!2818812 () Unit!95506)

(assert (=> b!4524206 (= lt!1700696 e!2818812)))

(declare-fun c!772231 () Bool)

(assert (=> b!4524206 (= c!772231 (contains!13413 (getKeysList!471 (t!357754 (toList!4343 lt!1699778))) (_1!28847 (h!56527 (toList!4343 lt!1699778)))))))

(declare-fun lt!1700695 () Unit!95506)

(assert (=> b!4524206 (= lt!1700695 e!2818810)))

(declare-fun lt!1700699 () List!50795)

(assert (=> b!4524206 (= lt!1700699 (getKeysList!471 (t!357754 (toList!4343 lt!1699778))))))

(declare-fun lt!1700698 () Unit!95506)

(declare-fun lemmaForallContainsAddHeadPreserves!170 (List!50792 List!50795 tuple2!51106) Unit!95506)

(assert (=> b!4524206 (= lt!1700698 (lemmaForallContainsAddHeadPreserves!170 (t!357754 (toList!4343 lt!1699778)) lt!1700699 (h!56527 (toList!4343 lt!1699778))))))

(assert (=> b!4524206 (forall!10283 lt!1700699 lambda!173155)))

(declare-fun lt!1700697 () Unit!95506)

(assert (=> b!4524206 (= lt!1700697 lt!1700698)))

(declare-fun b!4524207 () Bool)

(assert (=> b!4524207 false))

(declare-fun Unit!95688 () Unit!95506)

(assert (=> b!4524207 (= e!2818812 Unit!95688)))

(declare-fun b!4524208 () Bool)

(declare-fun Unit!95689 () Unit!95506)

(assert (=> b!4524208 (= e!2818812 Unit!95689)))

(assert (=> b!4524209 (= e!2818809 (= (content!8376 lt!1700700) (content!8376 (map!11145 (toList!4343 lt!1699778) lambda!173157))))))

(declare-fun b!4524210 () Bool)

(declare-fun Unit!95690 () Unit!95506)

(assert (=> b!4524210 (= e!2818810 Unit!95690)))

(declare-fun res!1883416 () Bool)

(assert (=> b!4524211 (=> (not res!1883416) (not e!2818809))))

(assert (=> b!4524211 (= res!1883416 (forall!10283 lt!1700700 lambda!173156))))

(assert (= (and d!1394592 c!772232) b!4524206))

(assert (= (and d!1394592 (not c!772232)) b!4524204))

(assert (= (and b!4524206 c!772230) b!4524207))

(assert (= (and b!4524206 (not c!772230)) b!4524208))

(assert (= (and b!4524206 c!772231) b!4524203))

(assert (= (and b!4524206 (not c!772231)) b!4524210))

(assert (= (and d!1394592 res!1883417) b!4524205))

(assert (= (and b!4524205 res!1883418) b!4524211))

(assert (= (and b!4524211 res!1883416) b!4524209))

(declare-fun m!5275425 () Bool)

(assert (=> d!1394592 m!5275425))

(assert (=> d!1394592 m!5274949))

(declare-fun m!5275427 () Bool)

(assert (=> b!4524203 m!5275427))

(assert (=> b!4524203 m!5275427))

(declare-fun m!5275429 () Bool)

(assert (=> b!4524203 m!5275429))

(declare-fun m!5275431 () Bool)

(assert (=> b!4524209 m!5275431))

(declare-fun m!5275433 () Bool)

(assert (=> b!4524209 m!5275433))

(assert (=> b!4524209 m!5275433))

(declare-fun m!5275435 () Bool)

(assert (=> b!4524209 m!5275435))

(assert (=> b!4524206 m!5275427))

(declare-fun m!5275437 () Bool)

(assert (=> b!4524206 m!5275437))

(declare-fun m!5275439 () Bool)

(assert (=> b!4524206 m!5275439))

(assert (=> b!4524206 m!5275427))

(declare-fun m!5275441 () Bool)

(assert (=> b!4524206 m!5275441))

(declare-fun m!5275443 () Bool)

(assert (=> b!4524206 m!5275443))

(declare-fun m!5275445 () Bool)

(assert (=> b!4524205 m!5275445))

(assert (=> b!4524205 m!5274119))

(declare-fun m!5275447 () Bool)

(assert (=> b!4524211 m!5275447))

(assert (=> b!4523296 d!1394592))

(declare-fun d!1394634 () Bool)

(declare-fun res!1883419 () Bool)

(declare-fun e!2818813 () Bool)

(assert (=> d!1394634 (=> res!1883419 e!2818813)))

(assert (=> d!1394634 (= res!1883419 ((_ is Nil!50669) (t!357755 (toList!4344 lm!1477))))))

(assert (=> d!1394634 (= (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!172947) e!2818813)))

(declare-fun b!4524214 () Bool)

(declare-fun e!2818814 () Bool)

(assert (=> b!4524214 (= e!2818813 e!2818814)))

(declare-fun res!1883420 () Bool)

(assert (=> b!4524214 (=> (not res!1883420) (not e!2818814))))

(assert (=> b!4524214 (= res!1883420 (dynLambda!21171 lambda!172947 (h!56528 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun b!4524215 () Bool)

(assert (=> b!4524215 (= e!2818814 (forall!10281 (t!357755 (t!357755 (toList!4344 lm!1477))) lambda!172947))))

(assert (= (and d!1394634 (not res!1883419)) b!4524214))

(assert (= (and b!4524214 res!1883420) b!4524215))

(declare-fun b_lambda!155389 () Bool)

(assert (=> (not b_lambda!155389) (not b!4524214)))

(declare-fun m!5275449 () Bool)

(assert (=> b!4524214 m!5275449))

(declare-fun m!5275451 () Bool)

(assert (=> b!4524215 m!5275451))

(assert (=> b!4523084 d!1394634))

(declare-fun d!1394636 () Bool)

(declare-fun lt!1700701 () Bool)

(assert (=> d!1394636 (= lt!1700701 (select (content!8375 (toList!4344 lt!1700129)) lt!1699794))))

(declare-fun e!2818816 () Bool)

(assert (=> d!1394636 (= lt!1700701 e!2818816)))

(declare-fun res!1883422 () Bool)

(assert (=> d!1394636 (=> (not res!1883422) (not e!2818816))))

(assert (=> d!1394636 (= res!1883422 ((_ is Cons!50669) (toList!4344 lt!1700129)))))

(assert (=> d!1394636 (= (contains!13410 (toList!4344 lt!1700129) lt!1699794) lt!1700701)))

(declare-fun b!4524216 () Bool)

(declare-fun e!2818815 () Bool)

(assert (=> b!4524216 (= e!2818816 e!2818815)))

(declare-fun res!1883421 () Bool)

(assert (=> b!4524216 (=> res!1883421 e!2818815)))

(assert (=> b!4524216 (= res!1883421 (= (h!56528 (toList!4344 lt!1700129)) lt!1699794))))

(declare-fun b!4524217 () Bool)

(assert (=> b!4524217 (= e!2818815 (contains!13410 (t!357755 (toList!4344 lt!1700129)) lt!1699794))))

(assert (= (and d!1394636 res!1883422) b!4524216))

(assert (= (and b!4524216 (not res!1883421)) b!4524217))

(declare-fun m!5275453 () Bool)

(assert (=> d!1394636 m!5275453))

(declare-fun m!5275455 () Bool)

(assert (=> d!1394636 m!5275455))

(declare-fun m!5275457 () Bool)

(assert (=> b!4524217 m!5275457))

(assert (=> b!4523250 d!1394636))

(declare-fun b!4524218 () Bool)

(declare-fun e!2818817 () Option!11127)

(declare-fun e!2818820 () Option!11127)

(assert (=> b!4524218 (= e!2818817 e!2818820)))

(declare-fun c!772233 () Bool)

(assert (=> b!4524218 (= c!772233 ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))))))

(declare-fun b!4524219 () Bool)

(declare-fun e!2818821 () Bool)

(declare-fun lt!1700702 () Option!11127)

(assert (=> b!4524219 (= e!2818821 (contains!13411 (t!357754 (_2!28848 lt!1699794)) (get!16604 lt!1700702)))))

(declare-fun b!4524220 () Bool)

(assert (=> b!4524220 (= e!2818817 (Some!11126 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(declare-fun b!4524221 () Bool)

(assert (=> b!4524221 (= e!2818820 None!11126)))

(declare-fun b!4524222 () Bool)

(declare-fun e!2818818 () Bool)

(assert (=> b!4524222 (= e!2818818 e!2818821)))

(declare-fun res!1883423 () Bool)

(assert (=> b!4524222 (=> (not res!1883423) (not e!2818821))))

(assert (=> b!4524222 (= res!1883423 (isDefined!8415 lt!1700702))))

(declare-fun d!1394638 () Bool)

(assert (=> d!1394638 e!2818818))

(declare-fun res!1883426 () Bool)

(assert (=> d!1394638 (=> res!1883426 e!2818818)))

(declare-fun e!2818819 () Bool)

(assert (=> d!1394638 (= res!1883426 e!2818819)))

(declare-fun res!1883424 () Bool)

(assert (=> d!1394638 (=> (not res!1883424) (not e!2818819))))

(assert (=> d!1394638 (= res!1883424 (isEmpty!28678 lt!1700702))))

(assert (=> d!1394638 (= lt!1700702 e!2818817)))

(declare-fun c!772234 () Bool)

(assert (=> d!1394638 (= c!772234 (and ((_ is Cons!50668) (t!357754 (_2!28848 lt!1699794))) (= (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))) key!3287)))))

(assert (=> d!1394638 (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699794)))))

(assert (=> d!1394638 (= (getPair!184 (t!357754 (_2!28848 lt!1699794)) key!3287) lt!1700702)))

(declare-fun b!4524223 () Bool)

(assert (=> b!4524223 (= e!2818820 (getPair!184 (t!357754 (t!357754 (_2!28848 lt!1699794))) key!3287))))

(declare-fun b!4524224 () Bool)

(assert (=> b!4524224 (= e!2818819 (not (containsKey!1800 (t!357754 (_2!28848 lt!1699794)) key!3287)))))

(declare-fun b!4524225 () Bool)

(declare-fun res!1883425 () Bool)

(assert (=> b!4524225 (=> (not res!1883425) (not e!2818821))))

(assert (=> b!4524225 (= res!1883425 (= (_1!28847 (get!16604 lt!1700702)) key!3287))))

(assert (= (and d!1394638 c!772234) b!4524220))

(assert (= (and d!1394638 (not c!772234)) b!4524218))

(assert (= (and b!4524218 c!772233) b!4524223))

(assert (= (and b!4524218 (not c!772233)) b!4524221))

(assert (= (and d!1394638 res!1883424) b!4524224))

(assert (= (and d!1394638 (not res!1883426)) b!4524222))

(assert (= (and b!4524222 res!1883423) b!4524225))

(assert (= (and b!4524225 res!1883425) b!4524219))

(declare-fun m!5275459 () Bool)

(assert (=> b!4524225 m!5275459))

(declare-fun m!5275461 () Bool)

(assert (=> b!4524222 m!5275461))

(declare-fun m!5275463 () Bool)

(assert (=> b!4524223 m!5275463))

(declare-fun m!5275465 () Bool)

(assert (=> d!1394638 m!5275465))

(assert (=> d!1394638 m!5273789))

(assert (=> b!4524224 m!5273985))

(assert (=> b!4524219 m!5275459))

(assert (=> b!4524219 m!5275459))

(declare-fun m!5275467 () Bool)

(assert (=> b!4524219 m!5275467))

(assert (=> b!4523137 d!1394638))

(declare-fun d!1394640 () Bool)

(assert (=> d!1394640 (isDefined!8417 (getValueByKey!1105 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(declare-fun lt!1700703 () Unit!95506)

(assert (=> d!1394640 (= lt!1700703 (choose!29603 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> d!1394640 (invariantList!1023 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394640 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) lt!1700703)))

(declare-fun bs!858656 () Bool)

(assert (= bs!858656 d!1394640))

(assert (=> bs!858656 m!5273927))

(assert (=> bs!858656 m!5273927))

(assert (=> bs!858656 m!5273929))

(declare-fun m!5275469 () Bool)

(assert (=> bs!858656 m!5275469))

(assert (=> bs!858656 m!5274049))

(assert (=> b!4523315 d!1394640))

(assert (=> b!4523315 d!1394568))

(assert (=> b!4523315 d!1394570))

(declare-fun d!1394642 () Bool)

(assert (=> d!1394642 (contains!13413 (getKeysList!471 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) key!3287)))

(declare-fun lt!1700704 () Unit!95506)

(assert (=> d!1394642 (= lt!1700704 (choose!29604 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (=> d!1394642 (invariantList!1023 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394642 (= (lemmaInListThenGetKeysListContains!467 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) key!3287) lt!1700704)))

(declare-fun bs!858657 () Bool)

(assert (= bs!858657 d!1394642))

(assert (=> bs!858657 m!5273931))

(assert (=> bs!858657 m!5273931))

(declare-fun m!5275471 () Bool)

(assert (=> bs!858657 m!5275471))

(declare-fun m!5275473 () Bool)

(assert (=> bs!858657 m!5275473))

(assert (=> bs!858657 m!5274049))

(assert (=> b!4523315 d!1394642))

(assert (=> b!4523253 d!1394502))

(declare-fun d!1394644 () Bool)

(declare-fun res!1883427 () Bool)

(declare-fun e!2818822 () Bool)

(assert (=> d!1394644 (=> res!1883427 e!2818822)))

(assert (=> d!1394644 (= res!1883427 ((_ is Nil!50668) (ite c!771976 (toList!4343 lt!1699771) (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> d!1394644 (= (forall!10280 (ite c!771976 (toList!4343 lt!1699771) (t!357754 (_2!28848 lt!1699794))) (ite c!771976 lambda!173063 lambda!173067)) e!2818822)))

(declare-fun b!4524226 () Bool)

(declare-fun e!2818823 () Bool)

(assert (=> b!4524226 (= e!2818822 e!2818823)))

(declare-fun res!1883428 () Bool)

(assert (=> b!4524226 (=> (not res!1883428) (not e!2818823))))

(assert (=> b!4524226 (= res!1883428 (dynLambda!21172 (ite c!771976 lambda!173063 lambda!173067) (h!56527 (ite c!771976 (toList!4343 lt!1699771) (t!357754 (_2!28848 lt!1699794))))))))

(declare-fun b!4524227 () Bool)

(assert (=> b!4524227 (= e!2818823 (forall!10280 (t!357754 (ite c!771976 (toList!4343 lt!1699771) (t!357754 (_2!28848 lt!1699794)))) (ite c!771976 lambda!173063 lambda!173067)))))

(assert (= (and d!1394644 (not res!1883427)) b!4524226))

(assert (= (and b!4524226 res!1883428) b!4524227))

(declare-fun b_lambda!155391 () Bool)

(assert (=> (not b_lambda!155391) (not b!4524226)))

(declare-fun m!5275475 () Bool)

(assert (=> b!4524226 m!5275475))

(declare-fun m!5275477 () Bool)

(assert (=> b!4524227 m!5275477))

(assert (=> bm!315157 d!1394644))

(declare-fun d!1394646 () Bool)

(assert (=> d!1394646 (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) lt!1699786))))

(declare-fun lt!1700705 () Unit!95506)

(assert (=> d!1394646 (= lt!1700705 (choose!29592 (toList!4344 lm!1477) lt!1699786))))

(declare-fun e!2818824 () Bool)

(assert (=> d!1394646 e!2818824))

(declare-fun res!1883429 () Bool)

(assert (=> d!1394646 (=> (not res!1883429) (not e!2818824))))

(assert (=> d!1394646 (= res!1883429 (isStrictlySorted!436 (toList!4344 lm!1477)))))

(assert (=> d!1394646 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lm!1477) lt!1699786) lt!1700705)))

(declare-fun b!4524228 () Bool)

(assert (=> b!4524228 (= e!2818824 (containsKey!1802 (toList!4344 lm!1477) lt!1699786))))

(assert (= (and d!1394646 res!1883429) b!4524228))

(assert (=> d!1394646 m!5273607))

(assert (=> d!1394646 m!5273607))

(assert (=> d!1394646 m!5273611))

(declare-fun m!5275479 () Bool)

(assert (=> d!1394646 m!5275479))

(assert (=> d!1394646 m!5273505))

(assert (=> b!4524228 m!5273601))

(assert (=> b!4523177 d!1394646))

(assert (=> b!4523177 d!1394384))

(assert (=> b!4523177 d!1394388))

(declare-fun d!1394648 () Bool)

(declare-fun res!1883430 () Bool)

(declare-fun e!2818825 () Bool)

(assert (=> d!1394648 (=> res!1883430 e!2818825)))

(assert (=> d!1394648 (= res!1883430 (not ((_ is Cons!50668) (_2!28848 lt!1699785))))))

(assert (=> d!1394648 (= (noDuplicateKeys!1168 (_2!28848 lt!1699785)) e!2818825)))

(declare-fun b!4524229 () Bool)

(declare-fun e!2818826 () Bool)

(assert (=> b!4524229 (= e!2818825 e!2818826)))

(declare-fun res!1883431 () Bool)

(assert (=> b!4524229 (=> (not res!1883431) (not e!2818826))))

(assert (=> b!4524229 (= res!1883431 (not (containsKey!1800 (t!357754 (_2!28848 lt!1699785)) (_1!28847 (h!56527 (_2!28848 lt!1699785))))))))

(declare-fun b!4524230 () Bool)

(assert (=> b!4524230 (= e!2818826 (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699785))))))

(assert (= (and d!1394648 (not res!1883430)) b!4524229))

(assert (= (and b!4524229 res!1883431) b!4524230))

(declare-fun m!5275481 () Bool)

(assert (=> b!4524229 m!5275481))

(declare-fun m!5275483 () Bool)

(assert (=> b!4524230 m!5275483))

(assert (=> bs!858179 d!1394648))

(declare-fun d!1394650 () Bool)

(assert (=> d!1394650 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))))

(declare-fun lt!1700706 () Unit!95506)

(assert (=> d!1394650 (= lt!1700706 (choose!29603 (toList!4343 lt!1699768) key!3287))))

(assert (=> d!1394650 (invariantList!1023 (toList!4343 lt!1699768))))

(assert (=> d!1394650 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699768) key!3287) lt!1700706)))

(declare-fun bs!858658 () Bool)

(assert (= bs!858658 d!1394650))

(assert (=> bs!858658 m!5273959))

(assert (=> bs!858658 m!5273959))

(assert (=> bs!858658 m!5273961))

(declare-fun m!5275485 () Bool)

(assert (=> bs!858658 m!5275485))

(assert (=> bs!858658 m!5274195))

(assert (=> b!4523326 d!1394650))

(declare-fun d!1394652 () Bool)

(assert (=> d!1394652 (= (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287)) (not (isEmpty!28683 (getValueByKey!1105 (toList!4343 lt!1699768) key!3287))))))

(declare-fun bs!858659 () Bool)

(assert (= bs!858659 d!1394652))

(assert (=> bs!858659 m!5273959))

(declare-fun m!5275487 () Bool)

(assert (=> bs!858659 m!5275487))

(assert (=> b!4523326 d!1394652))

(declare-fun b!4524233 () Bool)

(declare-fun e!2818828 () Option!11131)

(assert (=> b!4524233 (= e!2818828 (getValueByKey!1105 (t!357754 (toList!4343 lt!1699768)) key!3287))))

(declare-fun b!4524232 () Bool)

(declare-fun e!2818827 () Option!11131)

(assert (=> b!4524232 (= e!2818827 e!2818828)))

(declare-fun c!772236 () Bool)

(assert (=> b!4524232 (= c!772236 (and ((_ is Cons!50668) (toList!4343 lt!1699768)) (not (= (_1!28847 (h!56527 (toList!4343 lt!1699768))) key!3287))))))

(declare-fun b!4524234 () Bool)

(assert (=> b!4524234 (= e!2818828 None!11130)))

(declare-fun b!4524231 () Bool)

(assert (=> b!4524231 (= e!2818827 (Some!11130 (_2!28847 (h!56527 (toList!4343 lt!1699768)))))))

(declare-fun d!1394654 () Bool)

(declare-fun c!772235 () Bool)

(assert (=> d!1394654 (= c!772235 (and ((_ is Cons!50668) (toList!4343 lt!1699768)) (= (_1!28847 (h!56527 (toList!4343 lt!1699768))) key!3287)))))

(assert (=> d!1394654 (= (getValueByKey!1105 (toList!4343 lt!1699768) key!3287) e!2818827)))

(assert (= (and d!1394654 c!772235) b!4524231))

(assert (= (and d!1394654 (not c!772235)) b!4524232))

(assert (= (and b!4524232 c!772236) b!4524233))

(assert (= (and b!4524232 (not c!772236)) b!4524234))

(declare-fun m!5275489 () Bool)

(assert (=> b!4524233 m!5275489))

(assert (=> b!4523326 d!1394654))

(declare-fun d!1394656 () Bool)

(assert (=> d!1394656 (contains!13413 (getKeysList!471 (toList!4343 lt!1699768)) key!3287)))

(declare-fun lt!1700707 () Unit!95506)

(assert (=> d!1394656 (= lt!1700707 (choose!29604 (toList!4343 lt!1699768) key!3287))))

(assert (=> d!1394656 (invariantList!1023 (toList!4343 lt!1699768))))

(assert (=> d!1394656 (= (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699768) key!3287) lt!1700707)))

(declare-fun bs!858660 () Bool)

(assert (= bs!858660 d!1394656))

(assert (=> bs!858660 m!5273963))

(assert (=> bs!858660 m!5273963))

(declare-fun m!5275491 () Bool)

(assert (=> bs!858660 m!5275491))

(declare-fun m!5275493 () Bool)

(assert (=> bs!858660 m!5275493))

(assert (=> bs!858660 m!5274195))

(assert (=> b!4523326 d!1394656))

(assert (=> b!4523301 d!1394170))

(assert (=> b!4523301 d!1394172))

(declare-fun d!1394658 () Bool)

(declare-fun res!1883432 () Bool)

(declare-fun e!2818829 () Bool)

(assert (=> d!1394658 (=> res!1883432 e!2818829)))

(assert (=> d!1394658 (= res!1883432 ((_ is Nil!50668) (toList!4343 lt!1699770)))))

(assert (=> d!1394658 (= (forall!10280 (toList!4343 lt!1699770) lambda!172996) e!2818829)))

(declare-fun b!4524235 () Bool)

(declare-fun e!2818830 () Bool)

(assert (=> b!4524235 (= e!2818829 e!2818830)))

(declare-fun res!1883433 () Bool)

(assert (=> b!4524235 (=> (not res!1883433) (not e!2818830))))

(assert (=> b!4524235 (= res!1883433 (dynLambda!21172 lambda!172996 (h!56527 (toList!4343 lt!1699770))))))

(declare-fun b!4524236 () Bool)

(assert (=> b!4524236 (= e!2818830 (forall!10280 (t!357754 (toList!4343 lt!1699770)) lambda!172996))))

(assert (= (and d!1394658 (not res!1883432)) b!4524235))

(assert (= (and b!4524235 res!1883433) b!4524236))

(declare-fun b_lambda!155393 () Bool)

(assert (=> (not b_lambda!155393) (not b!4524235)))

(declare-fun m!5275495 () Bool)

(assert (=> b!4524235 m!5275495))

(declare-fun m!5275497 () Bool)

(assert (=> b!4524236 m!5275497))

(assert (=> b!4523060 d!1394658))

(declare-fun d!1394660 () Bool)

(assert (=> d!1394660 (dynLambda!21172 lambda!172997 (h!56527 (_2!28848 lt!1699794)))))

(declare-fun lt!1700708 () Unit!95506)

(assert (=> d!1394660 (= lt!1700708 (choose!29597 (toList!4343 lt!1699954) lambda!172997 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun e!2818831 () Bool)

(assert (=> d!1394660 e!2818831))

(declare-fun res!1883434 () Bool)

(assert (=> d!1394660 (=> (not res!1883434) (not e!2818831))))

(assert (=> d!1394660 (= res!1883434 (forall!10280 (toList!4343 lt!1699954) lambda!172997))))

(assert (=> d!1394660 (= (forallContained!2532 (toList!4343 lt!1699954) lambda!172997 (h!56527 (_2!28848 lt!1699794))) lt!1700708)))

(declare-fun b!4524237 () Bool)

(assert (=> b!4524237 (= e!2818831 (contains!13411 (toList!4343 lt!1699954) (h!56527 (_2!28848 lt!1699794))))))

(assert (= (and d!1394660 res!1883434) b!4524237))

(declare-fun b_lambda!155395 () Bool)

(assert (=> (not b_lambda!155395) (not d!1394660)))

(declare-fun m!5275499 () Bool)

(assert (=> d!1394660 m!5275499))

(declare-fun m!5275501 () Bool)

(assert (=> d!1394660 m!5275501))

(assert (=> d!1394660 m!5273451))

(declare-fun m!5275503 () Bool)

(assert (=> b!4524237 m!5275503))

(assert (=> b!4523060 d!1394660))

(declare-fun bs!858661 () Bool)

(declare-fun d!1394662 () Bool)

(assert (= bs!858661 (and d!1394662 b!4523254)))

(declare-fun lambda!173158 () Int)

(assert (=> bs!858661 (= (= lt!1699955 lt!1699771) (= lambda!173158 lambda!173063))))

(declare-fun bs!858662 () Bool)

(assert (= bs!858662 (and d!1394662 d!1394582)))

(assert (=> bs!858662 (not (= lambda!173158 lambda!173145))))

(declare-fun bs!858663 () Bool)

(assert (= bs!858663 (and d!1394662 b!4524061)))

(assert (=> bs!858663 (= (= lt!1699955 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173158 lambda!173133))))

(declare-fun bs!858664 () Bool)

(assert (= bs!858664 (and d!1394662 d!1394016)))

(assert (=> bs!858664 (not (= lambda!173158 lambda!173040))))

(declare-fun bs!858665 () Bool)

(assert (= bs!858665 (and d!1394662 d!1394204)))

(assert (=> bs!858665 (= (= lt!1699955 lt!1700292) (= lambda!173158 lambda!173103))))

(declare-fun bs!858666 () Bool)

(assert (= bs!858666 (and d!1394662 b!4523057)))

(assert (=> bs!858666 (= (= lt!1699955 lt!1699770) (= lambda!173158 lambda!172995))))

(declare-fun bs!858667 () Bool)

(assert (= bs!858667 (and d!1394662 d!1394260)))

(assert (=> bs!858667 (= (= lt!1699955 lt!1700142) (= lambda!173158 lambda!173115))))

(declare-fun bs!858668 () Bool)

(assert (= bs!858668 (and d!1394662 d!1393892)))

(assert (=> bs!858668 (= (= lt!1699955 lt!1699952) (= lambda!173158 lambda!172998))))

(declare-fun bs!858669 () Bool)

(assert (= bs!858669 (and d!1394662 d!1394488)))

(assert (=> bs!858669 (= (= lt!1699955 lt!1699770) (= lambda!173158 lambda!173131))))

(declare-fun bs!858670 () Bool)

(assert (= bs!858670 (and d!1394662 b!4523867)))

(assert (=> bs!858670 (= (= lt!1699955 lt!1700482) (= lambda!173158 lambda!173124))))

(declare-fun bs!858671 () Bool)

(assert (= bs!858671 (and d!1394662 b!4524064)))

(assert (=> bs!858671 (= (= lt!1699955 lt!1700614) (= lambda!173158 lambda!173135))))

(assert (=> bs!858671 (= (= lt!1699955 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173158 lambda!173134))))

(declare-fun bs!858672 () Bool)

(assert (= bs!858672 (and d!1394662 b!4522898)))

(assert (=> bs!858672 (not (= lambda!173158 lambda!172949))))

(assert (=> bs!858670 (= (= lt!1699955 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173158 lambda!173123))))

(declare-fun bs!858673 () Bool)

(assert (= bs!858673 (and d!1394662 b!4523864)))

(assert (=> bs!858673 (= (= lt!1699955 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173158 lambda!173122))))

(declare-fun bs!858674 () Bool)

(assert (= bs!858674 (and d!1394662 b!4523505)))

(assert (=> bs!858674 (= (= lt!1699955 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173158 lambda!173099))))

(declare-fun bs!858675 () Bool)

(assert (= bs!858675 (and d!1394662 d!1394436)))

(assert (=> bs!858675 (= (= lt!1699955 lt!1700479) (= lambda!173158 lambda!173125))))

(assert (=> bs!858674 (= (= lt!1699955 lt!1700295) (= lambda!173158 lambda!173102))))

(declare-fun bs!858676 () Bool)

(assert (= bs!858676 (and d!1394662 d!1394542)))

(assert (=> bs!858676 (= (= lt!1699955 lt!1700611) (= lambda!173158 lambda!173138))))

(declare-fun bs!858678 () Bool)

(assert (= bs!858678 (and d!1394662 b!4523257)))

(assert (=> bs!858678 (= (= lt!1699955 lt!1700142) (= lambda!173158 lambda!173067))))

(declare-fun bs!858679 () Bool)

(assert (= bs!858679 (and d!1394662 b!4523502)))

(assert (=> bs!858679 (= (= lt!1699955 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173158 lambda!173098))))

(assert (=> bs!858678 (= (= lt!1699955 lt!1699771) (= lambda!173158 lambda!173066))))

(declare-fun bs!858680 () Bool)

(assert (= bs!858680 (and d!1394662 d!1394074)))

(assert (=> bs!858680 (= (= lt!1699955 lt!1700139) (= lambda!173158 lambda!173069))))

(declare-fun bs!858681 () Bool)

(assert (= bs!858681 (and d!1394662 b!4523060)))

(assert (=> bs!858681 (= (= lt!1699955 lt!1699770) (= lambda!173158 lambda!172996))))

(assert (=> bs!858681 (= lambda!173158 lambda!172997)))

(assert (=> d!1394662 true))

(assert (=> d!1394662 (forall!10280 (toList!4343 lt!1699770) lambda!173158)))

(declare-fun lt!1700709 () Unit!95506)

(assert (=> d!1394662 (= lt!1700709 (choose!29600 lt!1699770 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394662 (forall!10280 (toList!4343 (+!1553 lt!1699770 (tuple2!51107 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))) lambda!173158)))

(assert (=> d!1394662 (= (addForallContainsKeyThenBeforeAdding!343 lt!1699770 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700709)))

(declare-fun bs!858686 () Bool)

(assert (= bs!858686 d!1394662))

(declare-fun m!5275505 () Bool)

(assert (=> bs!858686 m!5275505))

(declare-fun m!5275507 () Bool)

(assert (=> bs!858686 m!5275507))

(declare-fun m!5275509 () Bool)

(assert (=> bs!858686 m!5275509))

(declare-fun m!5275511 () Bool)

(assert (=> bs!858686 m!5275511))

(assert (=> b!4523060 d!1394662))

(assert (=> b!4523060 d!1394190))

(declare-fun d!1394666 () Bool)

(declare-fun res!1883435 () Bool)

(declare-fun e!2818833 () Bool)

(assert (=> d!1394666 (=> res!1883435 e!2818833)))

(assert (=> d!1394666 (= res!1883435 ((_ is Nil!50668) (_2!28848 lt!1699794)))))

(assert (=> d!1394666 (= (forall!10280 (_2!28848 lt!1699794) lambda!172997) e!2818833)))

(declare-fun b!4524240 () Bool)

(declare-fun e!2818834 () Bool)

(assert (=> b!4524240 (= e!2818833 e!2818834)))

(declare-fun res!1883436 () Bool)

(assert (=> b!4524240 (=> (not res!1883436) (not e!2818834))))

(assert (=> b!4524240 (= res!1883436 (dynLambda!21172 lambda!172997 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun b!4524241 () Bool)

(assert (=> b!4524241 (= e!2818834 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!172997))))

(assert (= (and d!1394666 (not res!1883435)) b!4524240))

(assert (= (and b!4524240 res!1883436) b!4524241))

(declare-fun b_lambda!155397 () Bool)

(assert (=> (not b_lambda!155397) (not b!4524240)))

(assert (=> b!4524240 m!5275499))

(declare-fun m!5275513 () Bool)

(assert (=> b!4524241 m!5275513))

(assert (=> b!4523060 d!1394666))

(declare-fun d!1394668 () Bool)

(declare-fun e!2818839 () Bool)

(assert (=> d!1394668 e!2818839))

(declare-fun res!1883438 () Bool)

(assert (=> d!1394668 (=> res!1883438 e!2818839)))

(declare-fun e!2818840 () Bool)

(assert (=> d!1394668 (= res!1883438 e!2818840)))

(declare-fun res!1883437 () Bool)

(assert (=> d!1394668 (=> (not res!1883437) (not e!2818840))))

(declare-fun lt!1700711 () Bool)

(assert (=> d!1394668 (= res!1883437 (not lt!1700711))))

(declare-fun lt!1700716 () Bool)

(assert (=> d!1394668 (= lt!1700711 lt!1700716)))

(declare-fun lt!1700713 () Unit!95506)

(declare-fun e!2818838 () Unit!95506)

(assert (=> d!1394668 (= lt!1700713 e!2818838)))

(declare-fun c!772238 () Bool)

(assert (=> d!1394668 (= c!772238 lt!1700716)))

(assert (=> d!1394668 (= lt!1700716 (containsKey!1804 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394668 (= (contains!13409 lt!1699954 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700711)))

(declare-fun b!4524242 () Bool)

(declare-fun e!2818835 () List!50795)

(assert (=> b!4524242 (= e!2818835 (getKeysList!471 (toList!4343 lt!1699954)))))

(declare-fun b!4524243 () Bool)

(declare-fun e!2818836 () Unit!95506)

(assert (=> b!4524243 (= e!2818838 e!2818836)))

(declare-fun c!772240 () Bool)

(declare-fun call!315262 () Bool)

(assert (=> b!4524243 (= c!772240 call!315262)))

(declare-fun b!4524244 () Bool)

(declare-fun e!2818837 () Bool)

(assert (=> b!4524244 (= e!2818837 (contains!13413 (keys!17608 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun b!4524245 () Bool)

(declare-fun Unit!95705 () Unit!95506)

(assert (=> b!4524245 (= e!2818836 Unit!95705)))

(declare-fun b!4524246 () Bool)

(assert (=> b!4524246 (= e!2818839 e!2818837)))

(declare-fun res!1883439 () Bool)

(assert (=> b!4524246 (=> (not res!1883439) (not e!2818837))))

(assert (=> b!4524246 (= res!1883439 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4524247 () Bool)

(assert (=> b!4524247 (= e!2818840 (not (contains!13413 (keys!17608 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4524248 () Bool)

(assert (=> b!4524248 false))

(declare-fun lt!1700717 () Unit!95506)

(declare-fun lt!1700715 () Unit!95506)

(assert (=> b!4524248 (= lt!1700717 lt!1700715)))

(assert (=> b!4524248 (containsKey!1804 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4524248 (= lt!1700715 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun Unit!95706 () Unit!95506)

(assert (=> b!4524248 (= e!2818836 Unit!95706)))

(declare-fun b!4524249 () Bool)

(assert (=> b!4524249 (= e!2818835 (keys!17608 lt!1699954))))

(declare-fun b!4524250 () Bool)

(declare-fun lt!1700714 () Unit!95506)

(assert (=> b!4524250 (= e!2818838 lt!1700714)))

(declare-fun lt!1700712 () Unit!95506)

(assert (=> b!4524250 (= lt!1700712 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4524250 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700718 () Unit!95506)

(assert (=> b!4524250 (= lt!1700718 lt!1700712)))

(assert (=> b!4524250 (= lt!1700714 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699954) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4524250 call!315262))

(declare-fun bm!315257 () Bool)

(assert (=> bm!315257 (= call!315262 (contains!13413 e!2818835 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun c!772239 () Bool)

(assert (=> bm!315257 (= c!772239 c!772238)))

(assert (= (and d!1394668 c!772238) b!4524250))

(assert (= (and d!1394668 (not c!772238)) b!4524243))

(assert (= (and b!4524243 c!772240) b!4524248))

(assert (= (and b!4524243 (not c!772240)) b!4524245))

(assert (= (or b!4524250 b!4524243) bm!315257))

(assert (= (and bm!315257 c!772239) b!4524242))

(assert (= (and bm!315257 (not c!772239)) b!4524249))

(assert (= (and d!1394668 res!1883437) b!4524247))

(assert (= (and d!1394668 (not res!1883438)) b!4524246))

(assert (= (and b!4524246 res!1883439) b!4524244))

(declare-fun m!5275523 () Bool)

(assert (=> bm!315257 m!5275523))

(declare-fun m!5275525 () Bool)

(assert (=> b!4524249 m!5275525))

(declare-fun m!5275527 () Bool)

(assert (=> b!4524246 m!5275527))

(assert (=> b!4524246 m!5275527))

(declare-fun m!5275529 () Bool)

(assert (=> b!4524246 m!5275529))

(declare-fun m!5275531 () Bool)

(assert (=> b!4524242 m!5275531))

(declare-fun m!5275533 () Bool)

(assert (=> b!4524248 m!5275533))

(declare-fun m!5275535 () Bool)

(assert (=> b!4524248 m!5275535))

(assert (=> b!4524247 m!5275525))

(assert (=> b!4524247 m!5275525))

(declare-fun m!5275539 () Bool)

(assert (=> b!4524247 m!5275539))

(declare-fun m!5275543 () Bool)

(assert (=> b!4524250 m!5275543))

(assert (=> b!4524250 m!5275527))

(assert (=> b!4524250 m!5275527))

(assert (=> b!4524250 m!5275529))

(declare-fun m!5275545 () Bool)

(assert (=> b!4524250 m!5275545))

(assert (=> b!4524244 m!5275525))

(assert (=> b!4524244 m!5275525))

(assert (=> b!4524244 m!5275539))

(assert (=> d!1394668 m!5275533))

(assert (=> b!4523060 d!1394668))

(declare-fun d!1394674 () Bool)

(declare-fun e!2818847 () Bool)

(assert (=> d!1394674 e!2818847))

(declare-fun res!1883443 () Bool)

(assert (=> d!1394674 (=> res!1883443 e!2818847)))

(declare-fun e!2818848 () Bool)

(assert (=> d!1394674 (= res!1883443 e!2818848)))

(declare-fun res!1883442 () Bool)

(assert (=> d!1394674 (=> (not res!1883442) (not e!2818848))))

(declare-fun lt!1700719 () Bool)

(assert (=> d!1394674 (= res!1883442 (not lt!1700719))))

(declare-fun lt!1700724 () Bool)

(assert (=> d!1394674 (= lt!1700719 lt!1700724)))

(declare-fun lt!1700721 () Unit!95506)

(declare-fun e!2818846 () Unit!95506)

(assert (=> d!1394674 (= lt!1700721 e!2818846)))

(declare-fun c!772241 () Bool)

(assert (=> d!1394674 (= c!772241 lt!1700724)))

(assert (=> d!1394674 (= lt!1700724 (containsKey!1804 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394674 (= (contains!13409 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) lt!1700719)))

(declare-fun b!4524253 () Bool)

(declare-fun e!2818843 () List!50795)

(assert (=> b!4524253 (= e!2818843 (getKeysList!471 (toList!4343 lt!1699955)))))

(declare-fun b!4524254 () Bool)

(declare-fun e!2818844 () Unit!95506)

(assert (=> b!4524254 (= e!2818846 e!2818844)))

(declare-fun c!772243 () Bool)

(declare-fun call!315263 () Bool)

(assert (=> b!4524254 (= c!772243 call!315263)))

(declare-fun b!4524255 () Bool)

(declare-fun e!2818845 () Bool)

(assert (=> b!4524255 (= e!2818845 (contains!13413 (keys!17608 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun b!4524256 () Bool)

(declare-fun Unit!95707 () Unit!95506)

(assert (=> b!4524256 (= e!2818844 Unit!95707)))

(declare-fun b!4524257 () Bool)

(assert (=> b!4524257 (= e!2818847 e!2818845)))

(declare-fun res!1883444 () Bool)

(assert (=> b!4524257 (=> (not res!1883444) (not e!2818845))))

(assert (=> b!4524257 (= res!1883444 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4524258 () Bool)

(assert (=> b!4524258 (= e!2818848 (not (contains!13413 (keys!17608 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4524259 () Bool)

(assert (=> b!4524259 false))

(declare-fun lt!1700725 () Unit!95506)

(declare-fun lt!1700723 () Unit!95506)

(assert (=> b!4524259 (= lt!1700725 lt!1700723)))

(assert (=> b!4524259 (containsKey!1804 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794))))))

(assert (=> b!4524259 (= lt!1700723 (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun Unit!95708 () Unit!95506)

(assert (=> b!4524259 (= e!2818844 Unit!95708)))

(declare-fun b!4524260 () Bool)

(assert (=> b!4524260 (= e!2818843 (keys!17608 lt!1699955))))

(declare-fun b!4524261 () Bool)

(declare-fun lt!1700722 () Unit!95506)

(assert (=> b!4524261 (= e!2818846 lt!1700722)))

(declare-fun lt!1700720 () Unit!95506)

(assert (=> b!4524261 (= lt!1700720 (lemmaContainsKeyImpliesGetValueByKeyDefined!1009 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4524261 (isDefined!8417 (getValueByKey!1105 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700726 () Unit!95506)

(assert (=> b!4524261 (= lt!1700726 lt!1700720)))

(assert (=> b!4524261 (= lt!1700722 (lemmaInListThenGetKeysListContains!467 (toList!4343 lt!1699955) (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4524261 call!315263))

(declare-fun bm!315258 () Bool)

(assert (=> bm!315258 (= call!315263 (contains!13413 e!2818843 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun c!772242 () Bool)

(assert (=> bm!315258 (= c!772242 c!772241)))

(assert (= (and d!1394674 c!772241) b!4524261))

(assert (= (and d!1394674 (not c!772241)) b!4524254))

(assert (= (and b!4524254 c!772243) b!4524259))

(assert (= (and b!4524254 (not c!772243)) b!4524256))

(assert (= (or b!4524261 b!4524254) bm!315258))

(assert (= (and bm!315258 c!772242) b!4524253))

(assert (= (and bm!315258 (not c!772242)) b!4524260))

(assert (= (and d!1394674 res!1883442) b!4524258))

(assert (= (and d!1394674 (not res!1883443)) b!4524257))

(assert (= (and b!4524257 res!1883444) b!4524255))

(declare-fun m!5275549 () Bool)

(assert (=> bm!315258 m!5275549))

(declare-fun m!5275553 () Bool)

(assert (=> b!4524260 m!5275553))

(declare-fun m!5275557 () Bool)

(assert (=> b!4524257 m!5275557))

(assert (=> b!4524257 m!5275557))

(declare-fun m!5275559 () Bool)

(assert (=> b!4524257 m!5275559))

(declare-fun m!5275561 () Bool)

(assert (=> b!4524253 m!5275561))

(declare-fun m!5275563 () Bool)

(assert (=> b!4524259 m!5275563))

(declare-fun m!5275565 () Bool)

(assert (=> b!4524259 m!5275565))

(assert (=> b!4524258 m!5275553))

(assert (=> b!4524258 m!5275553))

(declare-fun m!5275567 () Bool)

(assert (=> b!4524258 m!5275567))

(declare-fun m!5275569 () Bool)

(assert (=> b!4524261 m!5275569))

(assert (=> b!4524261 m!5275557))

(assert (=> b!4524261 m!5275557))

(assert (=> b!4524261 m!5275559))

(declare-fun m!5275571 () Bool)

(assert (=> b!4524261 m!5275571))

(assert (=> b!4524255 m!5275553))

(assert (=> b!4524255 m!5275553))

(assert (=> b!4524255 m!5275567))

(assert (=> d!1394674 m!5275563))

(assert (=> b!4523060 d!1394674))

(declare-fun bs!858704 () Bool)

(declare-fun b!4524269 () Bool)

(assert (= bs!858704 (and b!4524269 b!4523254)))

(declare-fun lambda!173161 () Int)

(assert (=> bs!858704 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173161 lambda!173063))))

(declare-fun bs!858706 () Bool)

(assert (= bs!858706 (and b!4524269 d!1394582)))

(assert (=> bs!858706 (not (= lambda!173161 lambda!173145))))

(declare-fun bs!858708 () Bool)

(assert (= bs!858708 (and b!4524269 b!4524061)))

(assert (=> bs!858708 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173161 lambda!173133))))

(declare-fun bs!858709 () Bool)

(assert (= bs!858709 (and b!4524269 d!1394016)))

(assert (=> bs!858709 (not (= lambda!173161 lambda!173040))))

(declare-fun bs!858710 () Bool)

(assert (= bs!858710 (and b!4524269 d!1394204)))

(assert (=> bs!858710 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700292) (= lambda!173161 lambda!173103))))

(declare-fun bs!858712 () Bool)

(assert (= bs!858712 (and b!4524269 b!4523057)))

(assert (=> bs!858712 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173161 lambda!172995))))

(declare-fun bs!858714 () Bool)

(assert (= bs!858714 (and b!4524269 d!1394260)))

(assert (=> bs!858714 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173161 lambda!173115))))

(declare-fun bs!858716 () Bool)

(assert (= bs!858716 (and b!4524269 d!1393892)))

(assert (=> bs!858716 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699952) (= lambda!173161 lambda!172998))))

(declare-fun bs!858718 () Bool)

(assert (= bs!858718 (and b!4524269 d!1394488)))

(assert (=> bs!858718 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173161 lambda!173131))))

(declare-fun bs!858720 () Bool)

(assert (= bs!858720 (and b!4524269 b!4523867)))

(assert (=> bs!858720 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700482) (= lambda!173161 lambda!173124))))

(declare-fun bs!858722 () Bool)

(assert (= bs!858722 (and b!4524269 b!4524064)))

(assert (=> bs!858722 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173161 lambda!173134))))

(declare-fun bs!858723 () Bool)

(assert (= bs!858723 (and b!4524269 b!4522898)))

(assert (=> bs!858723 (not (= lambda!173161 lambda!172949))))

(assert (=> bs!858720 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173161 lambda!173123))))

(declare-fun bs!858726 () Bool)

(assert (= bs!858726 (and b!4524269 b!4523864)))

(assert (=> bs!858726 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173161 lambda!173122))))

(declare-fun bs!858728 () Bool)

(assert (= bs!858728 (and b!4524269 b!4523505)))

(assert (=> bs!858728 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173161 lambda!173099))))

(declare-fun bs!858730 () Bool)

(assert (= bs!858730 (and b!4524269 d!1394436)))

(assert (=> bs!858730 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700479) (= lambda!173161 lambda!173125))))

(assert (=> bs!858728 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700295) (= lambda!173161 lambda!173102))))

(declare-fun bs!858732 () Bool)

(assert (= bs!858732 (and b!4524269 d!1394542)))

(assert (=> bs!858732 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700611) (= lambda!173161 lambda!173138))))

(declare-fun bs!858734 () Bool)

(assert (= bs!858734 (and b!4524269 b!4523257)))

(assert (=> bs!858734 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173161 lambda!173067))))

(assert (=> bs!858722 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700614) (= lambda!173161 lambda!173135))))

(declare-fun bs!858736 () Bool)

(assert (= bs!858736 (and b!4524269 d!1394662)))

(assert (=> bs!858736 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173161 lambda!173158))))

(declare-fun bs!858737 () Bool)

(assert (= bs!858737 (and b!4524269 b!4523502)))

(assert (=> bs!858737 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173161 lambda!173098))))

(assert (=> bs!858734 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173161 lambda!173066))))

(declare-fun bs!858738 () Bool)

(assert (= bs!858738 (and b!4524269 d!1394074)))

(assert (=> bs!858738 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700139) (= lambda!173161 lambda!173069))))

(declare-fun bs!858739 () Bool)

(assert (= bs!858739 (and b!4524269 b!4523060)))

(assert (=> bs!858739 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173161 lambda!172996))))

(assert (=> bs!858739 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173161 lambda!172997))))

(assert (=> b!4524269 true))

(declare-fun bs!858743 () Bool)

(declare-fun b!4524272 () Bool)

(assert (= bs!858743 (and b!4524272 b!4523254)))

(declare-fun lambda!173163 () Int)

(assert (=> bs!858743 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173163 lambda!173063))))

(declare-fun bs!858745 () Bool)

(assert (= bs!858745 (and b!4524272 d!1394582)))

(assert (=> bs!858745 (not (= lambda!173163 lambda!173145))))

(declare-fun bs!858747 () Bool)

(assert (= bs!858747 (and b!4524272 b!4524061)))

(assert (=> bs!858747 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173163 lambda!173133))))

(declare-fun bs!858749 () Bool)

(assert (= bs!858749 (and b!4524272 d!1394016)))

(assert (=> bs!858749 (not (= lambda!173163 lambda!173040))))

(declare-fun bs!858751 () Bool)

(assert (= bs!858751 (and b!4524272 d!1394204)))

(assert (=> bs!858751 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700292) (= lambda!173163 lambda!173103))))

(declare-fun bs!858753 () Bool)

(assert (= bs!858753 (and b!4524272 b!4523057)))

(assert (=> bs!858753 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173163 lambda!172995))))

(declare-fun bs!858755 () Bool)

(assert (= bs!858755 (and b!4524272 d!1394260)))

(assert (=> bs!858755 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173163 lambda!173115))))

(declare-fun bs!858757 () Bool)

(assert (= bs!858757 (and b!4524272 d!1393892)))

(assert (=> bs!858757 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699952) (= lambda!173163 lambda!172998))))

(declare-fun bs!858759 () Bool)

(assert (= bs!858759 (and b!4524272 d!1394488)))

(assert (=> bs!858759 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173163 lambda!173131))))

(declare-fun bs!858761 () Bool)

(assert (= bs!858761 (and b!4524272 b!4523867)))

(assert (=> bs!858761 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700482) (= lambda!173163 lambda!173124))))

(declare-fun bs!858763 () Bool)

(assert (= bs!858763 (and b!4524272 b!4524064)))

(assert (=> bs!858763 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173163 lambda!173134))))

(declare-fun bs!858765 () Bool)

(assert (= bs!858765 (and b!4524272 b!4522898)))

(assert (=> bs!858765 (not (= lambda!173163 lambda!172949))))

(assert (=> bs!858761 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173163 lambda!173123))))

(declare-fun bs!858768 () Bool)

(assert (= bs!858768 (and b!4524272 b!4523864)))

(assert (=> bs!858768 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173163 lambda!173122))))

(declare-fun bs!858770 () Bool)

(assert (= bs!858770 (and b!4524272 b!4524269)))

(assert (=> bs!858770 (= lambda!173163 lambda!173161)))

(declare-fun bs!858771 () Bool)

(assert (= bs!858771 (and b!4524272 b!4523505)))

(assert (=> bs!858771 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173163 lambda!173099))))

(declare-fun bs!858773 () Bool)

(assert (= bs!858773 (and b!4524272 d!1394436)))

(assert (=> bs!858773 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700479) (= lambda!173163 lambda!173125))))

(assert (=> bs!858771 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700295) (= lambda!173163 lambda!173102))))

(declare-fun bs!858776 () Bool)

(assert (= bs!858776 (and b!4524272 d!1394542)))

(assert (=> bs!858776 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700611) (= lambda!173163 lambda!173138))))

(declare-fun bs!858777 () Bool)

(assert (= bs!858777 (and b!4524272 b!4523257)))

(assert (=> bs!858777 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700142) (= lambda!173163 lambda!173067))))

(assert (=> bs!858763 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700614) (= lambda!173163 lambda!173135))))

(declare-fun bs!858778 () Bool)

(assert (= bs!858778 (and b!4524272 d!1394662)))

(assert (=> bs!858778 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173163 lambda!173158))))

(declare-fun bs!858779 () Bool)

(assert (= bs!858779 (and b!4524272 b!4523502)))

(assert (=> bs!858779 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173163 lambda!173098))))

(assert (=> bs!858777 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699771) (= lambda!173163 lambda!173066))))

(declare-fun bs!858780 () Bool)

(assert (= bs!858780 (and b!4524272 d!1394074)))

(assert (=> bs!858780 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700139) (= lambda!173163 lambda!173069))))

(declare-fun bs!858781 () Bool)

(assert (= bs!858781 (and b!4524272 b!4523060)))

(assert (=> bs!858781 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699770) (= lambda!173163 lambda!172996))))

(assert (=> bs!858781 (= (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1699955) (= lambda!173163 lambda!172997))))

(assert (=> b!4524272 true))

(declare-fun lambda!173165 () Int)

(declare-fun lt!1700758 () ListMap!3605)

(assert (=> bs!858743 (= (= lt!1700758 lt!1699771) (= lambda!173165 lambda!173063))))

(assert (=> bs!858745 (not (= lambda!173165 lambda!173145))))

(assert (=> bs!858747 (= (= lt!1700758 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173165 lambda!173133))))

(assert (=> bs!858749 (not (= lambda!173165 lambda!173040))))

(assert (=> bs!858751 (= (= lt!1700758 lt!1700292) (= lambda!173165 lambda!173103))))

(assert (=> bs!858753 (= (= lt!1700758 lt!1699770) (= lambda!173165 lambda!172995))))

(assert (=> bs!858755 (= (= lt!1700758 lt!1700142) (= lambda!173165 lambda!173115))))

(assert (=> b!4524272 (= (= lt!1700758 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173165 lambda!173163))))

(assert (=> bs!858757 (= (= lt!1700758 lt!1699952) (= lambda!173165 lambda!172998))))

(assert (=> bs!858759 (= (= lt!1700758 lt!1699770) (= lambda!173165 lambda!173131))))

(assert (=> bs!858761 (= (= lt!1700758 lt!1700482) (= lambda!173165 lambda!173124))))

(assert (=> bs!858763 (= (= lt!1700758 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173165 lambda!173134))))

(assert (=> bs!858765 (not (= lambda!173165 lambda!172949))))

(assert (=> bs!858761 (= (= lt!1700758 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173165 lambda!173123))))

(assert (=> bs!858768 (= (= lt!1700758 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173165 lambda!173122))))

(assert (=> bs!858770 (= (= lt!1700758 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173165 lambda!173161))))

(assert (=> bs!858771 (= (= lt!1700758 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173165 lambda!173099))))

(assert (=> bs!858773 (= (= lt!1700758 lt!1700479) (= lambda!173165 lambda!173125))))

(assert (=> bs!858771 (= (= lt!1700758 lt!1700295) (= lambda!173165 lambda!173102))))

(assert (=> bs!858776 (= (= lt!1700758 lt!1700611) (= lambda!173165 lambda!173138))))

(assert (=> bs!858777 (= (= lt!1700758 lt!1700142) (= lambda!173165 lambda!173067))))

(assert (=> bs!858763 (= (= lt!1700758 lt!1700614) (= lambda!173165 lambda!173135))))

(assert (=> bs!858778 (= (= lt!1700758 lt!1699955) (= lambda!173165 lambda!173158))))

(assert (=> bs!858779 (= (= lt!1700758 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173165 lambda!173098))))

(assert (=> bs!858777 (= (= lt!1700758 lt!1699771) (= lambda!173165 lambda!173066))))

(assert (=> bs!858780 (= (= lt!1700758 lt!1700139) (= lambda!173165 lambda!173069))))

(assert (=> bs!858781 (= (= lt!1700758 lt!1699770) (= lambda!173165 lambda!172996))))

(assert (=> bs!858781 (= (= lt!1700758 lt!1699955) (= lambda!173165 lambda!172997))))

(assert (=> b!4524272 true))

(declare-fun bs!858788 () Bool)

(declare-fun d!1394680 () Bool)

(assert (= bs!858788 (and d!1394680 b!4523254)))

(declare-fun lambda!173167 () Int)

(declare-fun lt!1700755 () ListMap!3605)

(assert (=> bs!858788 (= (= lt!1700755 lt!1699771) (= lambda!173167 lambda!173063))))

(declare-fun bs!858790 () Bool)

(assert (= bs!858790 (and d!1394680 d!1394582)))

(assert (=> bs!858790 (not (= lambda!173167 lambda!173145))))

(declare-fun bs!858792 () Bool)

(assert (= bs!858792 (and d!1394680 b!4524061)))

(assert (=> bs!858792 (= (= lt!1700755 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173167 lambda!173133))))

(declare-fun bs!858794 () Bool)

(assert (= bs!858794 (and d!1394680 d!1394016)))

(assert (=> bs!858794 (not (= lambda!173167 lambda!173040))))

(declare-fun bs!858796 () Bool)

(assert (= bs!858796 (and d!1394680 d!1394204)))

(assert (=> bs!858796 (= (= lt!1700755 lt!1700292) (= lambda!173167 lambda!173103))))

(declare-fun bs!858798 () Bool)

(assert (= bs!858798 (and d!1394680 b!4523057)))

(assert (=> bs!858798 (= (= lt!1700755 lt!1699770) (= lambda!173167 lambda!172995))))

(declare-fun bs!858800 () Bool)

(assert (= bs!858800 (and d!1394680 d!1394260)))

(assert (=> bs!858800 (= (= lt!1700755 lt!1700142) (= lambda!173167 lambda!173115))))

(declare-fun bs!858802 () Bool)

(assert (= bs!858802 (and d!1394680 b!4524272)))

(assert (=> bs!858802 (= (= lt!1700755 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173167 lambda!173163))))

(declare-fun bs!858804 () Bool)

(assert (= bs!858804 (and d!1394680 d!1393892)))

(assert (=> bs!858804 (= (= lt!1700755 lt!1699952) (= lambda!173167 lambda!172998))))

(declare-fun bs!858806 () Bool)

(assert (= bs!858806 (and d!1394680 d!1394488)))

(assert (=> bs!858806 (= (= lt!1700755 lt!1699770) (= lambda!173167 lambda!173131))))

(assert (=> bs!858802 (= (= lt!1700755 lt!1700758) (= lambda!173167 lambda!173165))))

(declare-fun bs!858809 () Bool)

(assert (= bs!858809 (and d!1394680 b!4523867)))

(assert (=> bs!858809 (= (= lt!1700755 lt!1700482) (= lambda!173167 lambda!173124))))

(declare-fun bs!858810 () Bool)

(assert (= bs!858810 (and d!1394680 b!4524064)))

(assert (=> bs!858810 (= (= lt!1700755 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173167 lambda!173134))))

(declare-fun bs!858811 () Bool)

(assert (= bs!858811 (and d!1394680 b!4522898)))

(assert (=> bs!858811 (not (= lambda!173167 lambda!172949))))

(assert (=> bs!858809 (= (= lt!1700755 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173167 lambda!173123))))

(declare-fun bs!858814 () Bool)

(assert (= bs!858814 (and d!1394680 b!4523864)))

(assert (=> bs!858814 (= (= lt!1700755 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173167 lambda!173122))))

(declare-fun bs!858816 () Bool)

(assert (= bs!858816 (and d!1394680 b!4524269)))

(assert (=> bs!858816 (= (= lt!1700755 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173167 lambda!173161))))

(declare-fun bs!858818 () Bool)

(assert (= bs!858818 (and d!1394680 b!4523505)))

(assert (=> bs!858818 (= (= lt!1700755 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173167 lambda!173099))))

(declare-fun bs!858819 () Bool)

(assert (= bs!858819 (and d!1394680 d!1394436)))

(assert (=> bs!858819 (= (= lt!1700755 lt!1700479) (= lambda!173167 lambda!173125))))

(assert (=> bs!858818 (= (= lt!1700755 lt!1700295) (= lambda!173167 lambda!173102))))

(declare-fun bs!858820 () Bool)

(assert (= bs!858820 (and d!1394680 d!1394542)))

(assert (=> bs!858820 (= (= lt!1700755 lt!1700611) (= lambda!173167 lambda!173138))))

(declare-fun bs!858821 () Bool)

(assert (= bs!858821 (and d!1394680 b!4523257)))

(assert (=> bs!858821 (= (= lt!1700755 lt!1700142) (= lambda!173167 lambda!173067))))

(assert (=> bs!858810 (= (= lt!1700755 lt!1700614) (= lambda!173167 lambda!173135))))

(declare-fun bs!858822 () Bool)

(assert (= bs!858822 (and d!1394680 d!1394662)))

(assert (=> bs!858822 (= (= lt!1700755 lt!1699955) (= lambda!173167 lambda!173158))))

(declare-fun bs!858823 () Bool)

(assert (= bs!858823 (and d!1394680 b!4523502)))

(assert (=> bs!858823 (= (= lt!1700755 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173167 lambda!173098))))

(assert (=> bs!858821 (= (= lt!1700755 lt!1699771) (= lambda!173167 lambda!173066))))

(declare-fun bs!858824 () Bool)

(assert (= bs!858824 (and d!1394680 d!1394074)))

(assert (=> bs!858824 (= (= lt!1700755 lt!1700139) (= lambda!173167 lambda!173069))))

(declare-fun bs!858825 () Bool)

(assert (= bs!858825 (and d!1394680 b!4523060)))

(assert (=> bs!858825 (= (= lt!1700755 lt!1699770) (= lambda!173167 lambda!172996))))

(assert (=> bs!858825 (= (= lt!1700755 lt!1699955) (= lambda!173167 lambda!172997))))

(assert (=> d!1394680 true))

(declare-fun c!772245 () Bool)

(declare-fun bm!315262 () Bool)

(declare-fun call!315268 () Bool)

(assert (=> bm!315262 (= call!315268 (forall!10280 (ite c!772245 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (t!357754 (t!357754 (_2!28848 lt!1699794)))) (ite c!772245 lambda!173161 lambda!173165)))))

(declare-fun e!2818856 () ListMap!3605)

(assert (=> b!4524269 (= e!2818856 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))))))

(declare-fun lt!1700765 () Unit!95506)

(declare-fun call!315267 () Unit!95506)

(assert (=> b!4524269 (= lt!1700765 call!315267)))

(declare-fun call!315269 () Bool)

(assert (=> b!4524269 call!315269))

(declare-fun lt!1700762 () Unit!95506)

(assert (=> b!4524269 (= lt!1700762 lt!1700765)))

(assert (=> b!4524269 call!315268))

(declare-fun lt!1700767 () Unit!95506)

(declare-fun Unit!95713 () Unit!95506)

(assert (=> b!4524269 (= lt!1700767 Unit!95713)))

(declare-fun bm!315263 () Bool)

(assert (=> bm!315263 (= call!315269 (forall!10280 (ite c!772245 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (t!357754 (_2!28848 lt!1699794))) (ite c!772245 lambda!173161 lambda!173165)))))

(declare-fun b!4524270 () Bool)

(declare-fun res!1883452 () Bool)

(declare-fun e!2818854 () Bool)

(assert (=> b!4524270 (=> (not res!1883452) (not e!2818854))))

(assert (=> b!4524270 (= res!1883452 (forall!10280 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lambda!173167))))

(declare-fun b!4524271 () Bool)

(declare-fun e!2818855 () Bool)

(assert (=> b!4524271 (= e!2818855 (forall!10280 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lambda!173165))))

(declare-fun bm!315264 () Bool)

(assert (=> bm!315264 (= call!315267 (lemmaContainsAllItsOwnKeys!343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> b!4524272 (= e!2818856 lt!1700758)))

(declare-fun lt!1700757 () ListMap!3605)

(assert (=> b!4524272 (= lt!1700757 (+!1553 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> b!4524272 (= lt!1700758 (addToMapMapFromBucket!695 (t!357754 (t!357754 (_2!28848 lt!1699794))) (+!1553 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) (h!56527 (t!357754 (_2!28848 lt!1699794))))))))

(declare-fun lt!1700766 () Unit!95506)

(assert (=> b!4524272 (= lt!1700766 call!315267)))

(assert (=> b!4524272 (forall!10280 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lambda!173163)))

(declare-fun lt!1700768 () Unit!95506)

(assert (=> b!4524272 (= lt!1700768 lt!1700766)))

(assert (=> b!4524272 (forall!10280 (toList!4343 lt!1700757) lambda!173165)))

(declare-fun lt!1700749 () Unit!95506)

(declare-fun Unit!95714 () Unit!95506)

(assert (=> b!4524272 (= lt!1700749 Unit!95714)))

(assert (=> b!4524272 call!315268))

(declare-fun lt!1700760 () Unit!95506)

(declare-fun Unit!95715 () Unit!95506)

(assert (=> b!4524272 (= lt!1700760 Unit!95715)))

(declare-fun lt!1700748 () Unit!95506)

(declare-fun Unit!95716 () Unit!95506)

(assert (=> b!4524272 (= lt!1700748 Unit!95716)))

(declare-fun lt!1700751 () Unit!95506)

(assert (=> b!4524272 (= lt!1700751 (forallContained!2532 (toList!4343 lt!1700757) lambda!173165 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(assert (=> b!4524272 (contains!13409 lt!1700757 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700750 () Unit!95506)

(declare-fun Unit!95717 () Unit!95506)

(assert (=> b!4524272 (= lt!1700750 Unit!95717)))

(assert (=> b!4524272 (contains!13409 lt!1700758 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700763 () Unit!95506)

(declare-fun Unit!95718 () Unit!95506)

(assert (=> b!4524272 (= lt!1700763 Unit!95718)))

(assert (=> b!4524272 call!315269))

(declare-fun lt!1700752 () Unit!95506)

(declare-fun Unit!95719 () Unit!95506)

(assert (=> b!4524272 (= lt!1700752 Unit!95719)))

(assert (=> b!4524272 (forall!10280 (toList!4343 lt!1700757) lambda!173165)))

(declare-fun lt!1700754 () Unit!95506)

(declare-fun Unit!95720 () Unit!95506)

(assert (=> b!4524272 (= lt!1700754 Unit!95720)))

(declare-fun lt!1700764 () Unit!95506)

(declare-fun Unit!95721 () Unit!95506)

(assert (=> b!4524272 (= lt!1700764 Unit!95721)))

(declare-fun lt!1700759 () Unit!95506)

(assert (=> b!4524272 (= lt!1700759 (addForallContainsKeyThenBeforeAdding!343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700758 (_1!28847 (h!56527 (t!357754 (_2!28848 lt!1699794)))) (_2!28847 (h!56527 (t!357754 (_2!28848 lt!1699794))))))))

(assert (=> b!4524272 (forall!10280 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lambda!173165)))

(declare-fun lt!1700753 () Unit!95506)

(assert (=> b!4524272 (= lt!1700753 lt!1700759)))

(assert (=> b!4524272 (forall!10280 (toList!4343 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lambda!173165)))

(declare-fun lt!1700756 () Unit!95506)

(declare-fun Unit!95722 () Unit!95506)

(assert (=> b!4524272 (= lt!1700756 Unit!95722)))

(declare-fun res!1883450 () Bool)

(assert (=> b!4524272 (= res!1883450 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173165))))

(assert (=> b!4524272 (=> (not res!1883450) (not e!2818855))))

(assert (=> b!4524272 e!2818855))

(declare-fun lt!1700761 () Unit!95506)

(declare-fun Unit!95723 () Unit!95506)

(assert (=> b!4524272 (= lt!1700761 Unit!95723)))

(assert (=> d!1394680 e!2818854))

(declare-fun res!1883451 () Bool)

(assert (=> d!1394680 (=> (not res!1883451) (not e!2818854))))

(assert (=> d!1394680 (= res!1883451 (forall!10280 (t!357754 (_2!28848 lt!1699794)) lambda!173167))))

(assert (=> d!1394680 (= lt!1700755 e!2818856)))

(assert (=> d!1394680 (= c!772245 ((_ is Nil!50668) (t!357754 (_2!28848 lt!1699794))))))

(assert (=> d!1394680 (noDuplicateKeys!1168 (t!357754 (_2!28848 lt!1699794)))))

(assert (=> d!1394680 (= (addToMapMapFromBucket!695 (t!357754 (_2!28848 lt!1699794)) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) lt!1700755)))

(declare-fun b!4524273 () Bool)

(assert (=> b!4524273 (= e!2818854 (invariantList!1023 (toList!4343 lt!1700755)))))

(assert (= (and d!1394680 c!772245) b!4524269))

(assert (= (and d!1394680 (not c!772245)) b!4524272))

(assert (= (and b!4524272 res!1883450) b!4524271))

(assert (= (or b!4524269 b!4524272) bm!315262))

(assert (= (or b!4524269 b!4524272) bm!315263))

(assert (= (or b!4524269 b!4524272) bm!315264))

(assert (= (and d!1394680 res!1883451) b!4524270))

(assert (= (and b!4524270 res!1883452) b!4524273))

(declare-fun m!5275603 () Bool)

(assert (=> b!4524272 m!5275603))

(declare-fun m!5275611 () Bool)

(assert (=> b!4524272 m!5275611))

(declare-fun m!5275613 () Bool)

(assert (=> b!4524272 m!5275613))

(declare-fun m!5275615 () Bool)

(assert (=> b!4524272 m!5275615))

(assert (=> b!4524272 m!5275615))

(declare-fun m!5275617 () Bool)

(assert (=> b!4524272 m!5275617))

(assert (=> b!4524272 m!5275617))

(declare-fun m!5275619 () Bool)

(assert (=> b!4524272 m!5275619))

(assert (=> b!4524272 m!5273445))

(declare-fun m!5275621 () Bool)

(assert (=> b!4524272 m!5275621))

(assert (=> b!4524272 m!5273445))

(assert (=> b!4524272 m!5275611))

(declare-fun m!5275623 () Bool)

(assert (=> b!4524272 m!5275623))

(declare-fun m!5275625 () Bool)

(assert (=> b!4524272 m!5275625))

(declare-fun m!5275627 () Bool)

(assert (=> b!4524272 m!5275627))

(declare-fun m!5275629 () Bool)

(assert (=> b!4524270 m!5275629))

(assert (=> b!4524271 m!5275615))

(declare-fun m!5275631 () Bool)

(assert (=> bm!315263 m!5275631))

(assert (=> bm!315264 m!5273445))

(declare-fun m!5275633 () Bool)

(assert (=> bm!315264 m!5275633))

(declare-fun m!5275635 () Bool)

(assert (=> bm!315262 m!5275635))

(declare-fun m!5275637 () Bool)

(assert (=> d!1394680 m!5275637))

(assert (=> d!1394680 m!5273789))

(declare-fun m!5275639 () Bool)

(assert (=> b!4524273 m!5275639))

(assert (=> b!4523060 d!1394680))

(declare-fun d!1394684 () Bool)

(declare-fun res!1883453 () Bool)

(declare-fun e!2818858 () Bool)

(assert (=> d!1394684 (=> res!1883453 e!2818858)))

(assert (=> d!1394684 (= res!1883453 ((_ is Nil!50668) (toList!4343 lt!1699954)))))

(assert (=> d!1394684 (= (forall!10280 (toList!4343 lt!1699954) lambda!172997) e!2818858)))

(declare-fun b!4524276 () Bool)

(declare-fun e!2818859 () Bool)

(assert (=> b!4524276 (= e!2818858 e!2818859)))

(declare-fun res!1883454 () Bool)

(assert (=> b!4524276 (=> (not res!1883454) (not e!2818859))))

(assert (=> b!4524276 (= res!1883454 (dynLambda!21172 lambda!172997 (h!56527 (toList!4343 lt!1699954))))))

(declare-fun b!4524277 () Bool)

(assert (=> b!4524277 (= e!2818859 (forall!10280 (t!357754 (toList!4343 lt!1699954)) lambda!172997))))

(assert (= (and d!1394684 (not res!1883453)) b!4524276))

(assert (= (and b!4524276 res!1883454) b!4524277))

(declare-fun b_lambda!155401 () Bool)

(assert (=> (not b_lambda!155401) (not b!4524276)))

(declare-fun m!5275641 () Bool)

(assert (=> b!4524276 m!5275641))

(declare-fun m!5275643 () Bool)

(assert (=> b!4524277 m!5275643))

(assert (=> b!4523060 d!1394684))

(declare-fun d!1394686 () Bool)

(declare-fun e!2818860 () Bool)

(assert (=> d!1394686 e!2818860))

(declare-fun res!1883455 () Bool)

(assert (=> d!1394686 (=> (not res!1883455) (not e!2818860))))

(declare-fun lt!1700773 () ListMap!3605)

(assert (=> d!1394686 (= res!1883455 (contains!13409 lt!1700773 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun lt!1700772 () List!50792)

(assert (=> d!1394686 (= lt!1700773 (ListMap!3606 lt!1700772))))

(declare-fun lt!1700771 () Unit!95506)

(declare-fun lt!1700770 () Unit!95506)

(assert (=> d!1394686 (= lt!1700771 lt!1700770)))

(assert (=> d!1394686 (= (getValueByKey!1105 lt!1700772 (_1!28847 (h!56527 (_2!28848 lt!1699794)))) (Some!11130 (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394686 (= lt!1700770 (lemmaContainsTupThenGetReturnValue!687 lt!1700772 (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394686 (= lt!1700772 (insertNoDuplicatedKeys!281 (toList!4343 lt!1699770) (_1!28847 (h!56527 (_2!28848 lt!1699794))) (_2!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> d!1394686 (= (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794))) lt!1700773)))

(declare-fun b!4524278 () Bool)

(declare-fun res!1883456 () Bool)

(assert (=> b!4524278 (=> (not res!1883456) (not e!2818860))))

(assert (=> b!4524278 (= res!1883456 (= (getValueByKey!1105 (toList!4343 lt!1700773) (_1!28847 (h!56527 (_2!28848 lt!1699794)))) (Some!11130 (_2!28847 (h!56527 (_2!28848 lt!1699794))))))))

(declare-fun b!4524279 () Bool)

(assert (=> b!4524279 (= e!2818860 (contains!13411 (toList!4343 lt!1700773) (h!56527 (_2!28848 lt!1699794))))))

(assert (= (and d!1394686 res!1883455) b!4524278))

(assert (= (and b!4524278 res!1883456) b!4524279))

(declare-fun m!5275645 () Bool)

(assert (=> d!1394686 m!5275645))

(declare-fun m!5275647 () Bool)

(assert (=> d!1394686 m!5275647))

(declare-fun m!5275649 () Bool)

(assert (=> d!1394686 m!5275649))

(declare-fun m!5275651 () Bool)

(assert (=> d!1394686 m!5275651))

(declare-fun m!5275653 () Bool)

(assert (=> b!4524278 m!5275653))

(declare-fun m!5275655 () Bool)

(assert (=> b!4524279 m!5275655))

(assert (=> b!4523060 d!1394686))

(declare-fun d!1394688 () Bool)

(assert (=> d!1394688 (dynLambda!21171 lambda!172947 (h!56528 (toList!4344 lm!1477)))))

(assert (=> d!1394688 true))

(declare-fun _$7!1853 () Unit!95506)

(assert (=> d!1394688 (= (choose!29581 (toList!4344 lm!1477) lambda!172947 (h!56528 (toList!4344 lm!1477))) _$7!1853)))

(declare-fun b_lambda!155405 () Bool)

(assert (=> (not b_lambda!155405) (not d!1394688)))

(declare-fun bs!858844 () Bool)

(assert (= bs!858844 d!1394688))

(assert (=> bs!858844 m!5273501))

(assert (=> d!1394068 d!1394688))

(assert (=> d!1394068 d!1393980))

(declare-fun b!4524287 () Bool)

(declare-fun e!2818866 () Option!11130)

(declare-fun e!2818867 () Option!11130)

(assert (=> b!4524287 (= e!2818866 e!2818867)))

(declare-fun c!772249 () Bool)

(assert (=> b!4524287 (= c!772249 (and ((_ is Cons!50669) (toList!4344 lt!1700220)) (not (= (_1!28848 (h!56528 (toList!4344 lt!1700220))) (_1!28848 lt!1699794)))))))

(declare-fun d!1394700 () Bool)

(declare-fun c!772248 () Bool)

(assert (=> d!1394700 (= c!772248 (and ((_ is Cons!50669) (toList!4344 lt!1700220)) (= (_1!28848 (h!56528 (toList!4344 lt!1700220))) (_1!28848 lt!1699794))))))

(assert (=> d!1394700 (= (getValueByKey!1104 (toList!4344 lt!1700220) (_1!28848 lt!1699794)) e!2818866)))

(declare-fun b!4524288 () Bool)

(assert (=> b!4524288 (= e!2818867 (getValueByKey!1104 (t!357755 (toList!4344 lt!1700220)) (_1!28848 lt!1699794)))))

(declare-fun b!4524286 () Bool)

(assert (=> b!4524286 (= e!2818866 (Some!11129 (_2!28848 (h!56528 (toList!4344 lt!1700220)))))))

(declare-fun b!4524289 () Bool)

(assert (=> b!4524289 (= e!2818867 None!11129)))

(assert (= (and d!1394700 c!772248) b!4524286))

(assert (= (and d!1394700 (not c!772248)) b!4524287))

(assert (= (and b!4524287 c!772249) b!4524288))

(assert (= (and b!4524287 (not c!772249)) b!4524289))

(declare-fun m!5275681 () Bool)

(assert (=> b!4524288 m!5275681))

(assert (=> b!4523339 d!1394700))

(declare-fun bs!858846 () Bool)

(declare-fun b!4524295 () Bool)

(assert (= bs!858846 (and b!4524295 b!4523254)))

(declare-fun lambda!173170 () Int)

(assert (=> bs!858846 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699771) (= lambda!173170 lambda!173063))))

(declare-fun bs!858848 () Bool)

(assert (= bs!858848 (and b!4524295 d!1394582)))

(assert (=> bs!858848 (not (= lambda!173170 lambda!173145))))

(declare-fun bs!858850 () Bool)

(assert (= bs!858850 (and b!4524295 b!4524061)))

(assert (=> bs!858850 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173170 lambda!173133))))

(declare-fun bs!858852 () Bool)

(assert (= bs!858852 (and b!4524295 d!1394016)))

(assert (=> bs!858852 (not (= lambda!173170 lambda!173040))))

(declare-fun bs!858854 () Bool)

(assert (= bs!858854 (and b!4524295 d!1394204)))

(assert (=> bs!858854 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700292) (= lambda!173170 lambda!173103))))

(declare-fun bs!858856 () Bool)

(assert (= bs!858856 (and b!4524295 b!4523057)))

(assert (=> bs!858856 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173170 lambda!172995))))

(declare-fun bs!858858 () Bool)

(assert (= bs!858858 (and b!4524295 d!1394260)))

(assert (=> bs!858858 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700142) (= lambda!173170 lambda!173115))))

(declare-fun bs!858860 () Bool)

(assert (= bs!858860 (and b!4524295 b!4524272)))

(assert (=> bs!858860 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173170 lambda!173163))))

(declare-fun bs!858862 () Bool)

(assert (= bs!858862 (and b!4524295 d!1393892)))

(assert (=> bs!858862 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699952) (= lambda!173170 lambda!172998))))

(declare-fun bs!858864 () Bool)

(assert (= bs!858864 (and b!4524295 d!1394488)))

(assert (=> bs!858864 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173170 lambda!173131))))

(assert (=> bs!858860 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700758) (= lambda!173170 lambda!173165))))

(declare-fun bs!858867 () Bool)

(assert (= bs!858867 (and b!4524295 b!4523867)))

(assert (=> bs!858867 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700482) (= lambda!173170 lambda!173124))))

(declare-fun bs!858869 () Bool)

(assert (= bs!858869 (and b!4524295 d!1394680)))

(assert (=> bs!858869 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700755) (= lambda!173170 lambda!173167))))

(declare-fun bs!858871 () Bool)

(assert (= bs!858871 (and b!4524295 b!4524064)))

(assert (=> bs!858871 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173170 lambda!173134))))

(declare-fun bs!858873 () Bool)

(assert (= bs!858873 (and b!4524295 b!4522898)))

(assert (=> bs!858873 (not (= lambda!173170 lambda!172949))))

(assert (=> bs!858867 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173170 lambda!173123))))

(declare-fun bs!858875 () Bool)

(assert (= bs!858875 (and b!4524295 b!4523864)))

(assert (=> bs!858875 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173170 lambda!173122))))

(declare-fun bs!858876 () Bool)

(assert (= bs!858876 (and b!4524295 b!4524269)))

(assert (=> bs!858876 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173170 lambda!173161))))

(declare-fun bs!858878 () Bool)

(assert (= bs!858878 (and b!4524295 b!4523505)))

(assert (=> bs!858878 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173170 lambda!173099))))

(declare-fun bs!858880 () Bool)

(assert (= bs!858880 (and b!4524295 d!1394436)))

(assert (=> bs!858880 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700479) (= lambda!173170 lambda!173125))))

(assert (=> bs!858878 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700295) (= lambda!173170 lambda!173102))))

(declare-fun bs!858883 () Bool)

(assert (= bs!858883 (and b!4524295 d!1394542)))

(assert (=> bs!858883 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700611) (= lambda!173170 lambda!173138))))

(declare-fun bs!858884 () Bool)

(assert (= bs!858884 (and b!4524295 b!4523257)))

(assert (=> bs!858884 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700142) (= lambda!173170 lambda!173067))))

(assert (=> bs!858871 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700614) (= lambda!173170 lambda!173135))))

(declare-fun bs!858887 () Bool)

(assert (= bs!858887 (and b!4524295 d!1394662)))

(assert (=> bs!858887 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699955) (= lambda!173170 lambda!173158))))

(declare-fun bs!858888 () Bool)

(assert (= bs!858888 (and b!4524295 b!4523502)))

(assert (=> bs!858888 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173170 lambda!173098))))

(assert (=> bs!858884 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699771) (= lambda!173170 lambda!173066))))

(declare-fun bs!858889 () Bool)

(assert (= bs!858889 (and b!4524295 d!1394074)))

(assert (=> bs!858889 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700139) (= lambda!173170 lambda!173069))))

(declare-fun bs!858890 () Bool)

(assert (= bs!858890 (and b!4524295 b!4523060)))

(assert (=> bs!858890 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173170 lambda!172996))))

(assert (=> bs!858890 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699955) (= lambda!173170 lambda!172997))))

(assert (=> b!4524295 true))

(declare-fun bs!858895 () Bool)

(declare-fun b!4524298 () Bool)

(assert (= bs!858895 (and b!4524298 b!4523254)))

(declare-fun lambda!173172 () Int)

(assert (=> bs!858895 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699771) (= lambda!173172 lambda!173063))))

(declare-fun bs!858897 () Bool)

(assert (= bs!858897 (and b!4524298 d!1394582)))

(assert (=> bs!858897 (not (= lambda!173172 lambda!173145))))

(declare-fun bs!858899 () Bool)

(assert (= bs!858899 (and b!4524298 b!4524061)))

(assert (=> bs!858899 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173172 lambda!173133))))

(declare-fun bs!858901 () Bool)

(assert (= bs!858901 (and b!4524298 d!1394016)))

(assert (=> bs!858901 (not (= lambda!173172 lambda!173040))))

(declare-fun bs!858903 () Bool)

(assert (= bs!858903 (and b!4524298 d!1394204)))

(assert (=> bs!858903 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700292) (= lambda!173172 lambda!173103))))

(declare-fun bs!858905 () Bool)

(assert (= bs!858905 (and b!4524298 b!4523057)))

(assert (=> bs!858905 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173172 lambda!172995))))

(declare-fun bs!858907 () Bool)

(assert (= bs!858907 (and b!4524298 d!1394260)))

(assert (=> bs!858907 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700142) (= lambda!173172 lambda!173115))))

(declare-fun bs!858909 () Bool)

(assert (= bs!858909 (and b!4524298 b!4524272)))

(assert (=> bs!858909 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173172 lambda!173163))))

(declare-fun bs!858911 () Bool)

(assert (= bs!858911 (and b!4524298 d!1393892)))

(assert (=> bs!858911 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699952) (= lambda!173172 lambda!172998))))

(declare-fun bs!858913 () Bool)

(assert (= bs!858913 (and b!4524298 d!1394488)))

(assert (=> bs!858913 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173172 lambda!173131))))

(assert (=> bs!858909 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700758) (= lambda!173172 lambda!173165))))

(declare-fun bs!858916 () Bool)

(assert (= bs!858916 (and b!4524298 b!4523867)))

(assert (=> bs!858916 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700482) (= lambda!173172 lambda!173124))))

(declare-fun bs!858918 () Bool)

(assert (= bs!858918 (and b!4524298 d!1394680)))

(assert (=> bs!858918 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700755) (= lambda!173172 lambda!173167))))

(declare-fun bs!858919 () Bool)

(assert (= bs!858919 (and b!4524298 b!4524064)))

(assert (=> bs!858919 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173172 lambda!173134))))

(declare-fun bs!858920 () Bool)

(assert (= bs!858920 (and b!4524298 b!4522898)))

(assert (=> bs!858920 (not (= lambda!173172 lambda!172949))))

(declare-fun bs!858922 () Bool)

(assert (= bs!858922 (and b!4524298 b!4524295)))

(assert (=> bs!858922 (= lambda!173172 lambda!173170)))

(assert (=> bs!858916 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173172 lambda!173123))))

(declare-fun bs!858924 () Bool)

(assert (= bs!858924 (and b!4524298 b!4523864)))

(assert (=> bs!858924 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173172 lambda!173122))))

(declare-fun bs!858926 () Bool)

(assert (= bs!858926 (and b!4524298 b!4524269)))

(assert (=> bs!858926 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173172 lambda!173161))))

(declare-fun bs!858928 () Bool)

(assert (= bs!858928 (and b!4524298 b!4523505)))

(assert (=> bs!858928 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173172 lambda!173099))))

(declare-fun bs!858930 () Bool)

(assert (= bs!858930 (and b!4524298 d!1394436)))

(assert (=> bs!858930 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700479) (= lambda!173172 lambda!173125))))

(assert (=> bs!858928 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700295) (= lambda!173172 lambda!173102))))

(declare-fun bs!858932 () Bool)

(assert (= bs!858932 (and b!4524298 d!1394542)))

(assert (=> bs!858932 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700611) (= lambda!173172 lambda!173138))))

(declare-fun bs!858934 () Bool)

(assert (= bs!858934 (and b!4524298 b!4523257)))

(assert (=> bs!858934 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700142) (= lambda!173172 lambda!173067))))

(assert (=> bs!858919 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700614) (= lambda!173172 lambda!173135))))

(declare-fun bs!858935 () Bool)

(assert (= bs!858935 (and b!4524298 d!1394662)))

(assert (=> bs!858935 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699955) (= lambda!173172 lambda!173158))))

(declare-fun bs!858936 () Bool)

(assert (= bs!858936 (and b!4524298 b!4523502)))

(assert (=> bs!858936 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173172 lambda!173098))))

(assert (=> bs!858934 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699771) (= lambda!173172 lambda!173066))))

(declare-fun bs!858937 () Bool)

(assert (= bs!858937 (and b!4524298 d!1394074)))

(assert (=> bs!858937 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700139) (= lambda!173172 lambda!173069))))

(declare-fun bs!858938 () Bool)

(assert (= bs!858938 (and b!4524298 b!4523060)))

(assert (=> bs!858938 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699770) (= lambda!173172 lambda!172996))))

(assert (=> bs!858938 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1699955) (= lambda!173172 lambda!172997))))

(assert (=> b!4524298 true))

(declare-fun lt!1700806 () ListMap!3605)

(declare-fun lambda!173174 () Int)

(assert (=> bs!858895 (= (= lt!1700806 lt!1699771) (= lambda!173174 lambda!173063))))

(assert (=> bs!858897 (not (= lambda!173174 lambda!173145))))

(assert (=> bs!858899 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173174 lambda!173133))))

(assert (=> bs!858901 (not (= lambda!173174 lambda!173040))))

(assert (=> bs!858903 (= (= lt!1700806 lt!1700292) (= lambda!173174 lambda!173103))))

(assert (=> bs!858905 (= (= lt!1700806 lt!1699770) (= lambda!173174 lambda!172995))))

(assert (=> bs!858907 (= (= lt!1700806 lt!1700142) (= lambda!173174 lambda!173115))))

(assert (=> bs!858909 (= (= lt!1700806 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173174 lambda!173163))))

(assert (=> bs!858911 (= (= lt!1700806 lt!1699952) (= lambda!173174 lambda!172998))))

(assert (=> bs!858913 (= (= lt!1700806 lt!1699770) (= lambda!173174 lambda!173131))))

(assert (=> bs!858909 (= (= lt!1700806 lt!1700758) (= lambda!173174 lambda!173165))))

(assert (=> bs!858916 (= (= lt!1700806 lt!1700482) (= lambda!173174 lambda!173124))))

(assert (=> bs!858918 (= (= lt!1700806 lt!1700755) (= lambda!173174 lambda!173167))))

(assert (=> bs!858919 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173174 lambda!173134))))

(assert (=> bs!858920 (not (= lambda!173174 lambda!172949))))

(assert (=> bs!858922 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173174 lambda!173170))))

(assert (=> bs!858916 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173174 lambda!173123))))

(assert (=> bs!858924 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173174 lambda!173122))))

(assert (=> bs!858926 (= (= lt!1700806 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173174 lambda!173161))))

(assert (=> bs!858928 (= (= lt!1700806 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173174 lambda!173099))))

(assert (=> b!4524298 (= (= lt!1700806 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173174 lambda!173172))))

(assert (=> bs!858930 (= (= lt!1700806 lt!1700479) (= lambda!173174 lambda!173125))))

(assert (=> bs!858928 (= (= lt!1700806 lt!1700295) (= lambda!173174 lambda!173102))))

(assert (=> bs!858932 (= (= lt!1700806 lt!1700611) (= lambda!173174 lambda!173138))))

(assert (=> bs!858934 (= (= lt!1700806 lt!1700142) (= lambda!173174 lambda!173067))))

(assert (=> bs!858919 (= (= lt!1700806 lt!1700614) (= lambda!173174 lambda!173135))))

(assert (=> bs!858935 (= (= lt!1700806 lt!1699955) (= lambda!173174 lambda!173158))))

(assert (=> bs!858936 (= (= lt!1700806 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173174 lambda!173098))))

(assert (=> bs!858934 (= (= lt!1700806 lt!1699771) (= lambda!173174 lambda!173066))))

(assert (=> bs!858937 (= (= lt!1700806 lt!1700139) (= lambda!173174 lambda!173069))))

(assert (=> bs!858938 (= (= lt!1700806 lt!1699770) (= lambda!173174 lambda!172996))))

(assert (=> bs!858938 (= (= lt!1700806 lt!1699955) (= lambda!173174 lambda!172997))))

(assert (=> b!4524298 true))

(declare-fun bs!858946 () Bool)

(declare-fun d!1394704 () Bool)

(assert (= bs!858946 (and d!1394704 b!4523254)))

(declare-fun lambda!173176 () Int)

(declare-fun lt!1700803 () ListMap!3605)

(assert (=> bs!858946 (= (= lt!1700803 lt!1699771) (= lambda!173176 lambda!173063))))

(declare-fun bs!858949 () Bool)

(assert (= bs!858949 (and d!1394704 d!1394582)))

(assert (=> bs!858949 (not (= lambda!173176 lambda!173145))))

(declare-fun bs!858951 () Bool)

(assert (= bs!858951 (and d!1394704 b!4524061)))

(assert (=> bs!858951 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173176 lambda!173133))))

(declare-fun bs!858953 () Bool)

(assert (= bs!858953 (and d!1394704 d!1394016)))

(assert (=> bs!858953 (not (= lambda!173176 lambda!173040))))

(declare-fun bs!858955 () Bool)

(assert (= bs!858955 (and d!1394704 d!1394204)))

(assert (=> bs!858955 (= (= lt!1700803 lt!1700292) (= lambda!173176 lambda!173103))))

(declare-fun bs!858957 () Bool)

(assert (= bs!858957 (and d!1394704 b!4523057)))

(assert (=> bs!858957 (= (= lt!1700803 lt!1699770) (= lambda!173176 lambda!172995))))

(declare-fun bs!858959 () Bool)

(assert (= bs!858959 (and d!1394704 d!1394260)))

(assert (=> bs!858959 (= (= lt!1700803 lt!1700142) (= lambda!173176 lambda!173115))))

(declare-fun bs!858960 () Bool)

(assert (= bs!858960 (and d!1394704 b!4524272)))

(assert (=> bs!858960 (= (= lt!1700803 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173176 lambda!173163))))

(declare-fun bs!858962 () Bool)

(assert (= bs!858962 (and d!1394704 d!1394488)))

(assert (=> bs!858962 (= (= lt!1700803 lt!1699770) (= lambda!173176 lambda!173131))))

(assert (=> bs!858960 (= (= lt!1700803 lt!1700758) (= lambda!173176 lambda!173165))))

(declare-fun bs!858965 () Bool)

(assert (= bs!858965 (and d!1394704 b!4523867)))

(assert (=> bs!858965 (= (= lt!1700803 lt!1700482) (= lambda!173176 lambda!173124))))

(declare-fun bs!858966 () Bool)

(assert (= bs!858966 (and d!1394704 d!1394680)))

(assert (=> bs!858966 (= (= lt!1700803 lt!1700755) (= lambda!173176 lambda!173167))))

(declare-fun bs!858967 () Bool)

(assert (= bs!858967 (and d!1394704 b!4524064)))

(assert (=> bs!858967 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173176 lambda!173134))))

(declare-fun bs!858969 () Bool)

(assert (= bs!858969 (and d!1394704 b!4522898)))

(assert (=> bs!858969 (not (= lambda!173176 lambda!172949))))

(declare-fun bs!858971 () Bool)

(assert (= bs!858971 (and d!1394704 b!4524295)))

(assert (=> bs!858971 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173176 lambda!173170))))

(assert (=> bs!858965 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173176 lambda!173123))))

(declare-fun bs!858973 () Bool)

(assert (= bs!858973 (and d!1394704 b!4523864)))

(assert (=> bs!858973 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173176 lambda!173122))))

(declare-fun bs!858975 () Bool)

(assert (= bs!858975 (and d!1394704 b!4524269)))

(assert (=> bs!858975 (= (= lt!1700803 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173176 lambda!173161))))

(declare-fun bs!858977 () Bool)

(assert (= bs!858977 (and d!1394704 b!4523505)))

(assert (=> bs!858977 (= (= lt!1700803 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173176 lambda!173099))))

(declare-fun bs!858979 () Bool)

(assert (= bs!858979 (and d!1394704 b!4524298)))

(assert (=> bs!858979 (= (= lt!1700803 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173176 lambda!173172))))

(declare-fun bs!858981 () Bool)

(assert (= bs!858981 (and d!1394704 d!1394436)))

(assert (=> bs!858981 (= (= lt!1700803 lt!1700479) (= lambda!173176 lambda!173125))))

(declare-fun bs!858982 () Bool)

(assert (= bs!858982 (and d!1394704 d!1393892)))

(assert (=> bs!858982 (= (= lt!1700803 lt!1699952) (= lambda!173176 lambda!172998))))

(assert (=> bs!858979 (= (= lt!1700803 lt!1700806) (= lambda!173176 lambda!173174))))

(assert (=> bs!858977 (= (= lt!1700803 lt!1700295) (= lambda!173176 lambda!173102))))

(declare-fun bs!858983 () Bool)

(assert (= bs!858983 (and d!1394704 d!1394542)))

(assert (=> bs!858983 (= (= lt!1700803 lt!1700611) (= lambda!173176 lambda!173138))))

(declare-fun bs!858984 () Bool)

(assert (= bs!858984 (and d!1394704 b!4523257)))

(assert (=> bs!858984 (= (= lt!1700803 lt!1700142) (= lambda!173176 lambda!173067))))

(assert (=> bs!858967 (= (= lt!1700803 lt!1700614) (= lambda!173176 lambda!173135))))

(declare-fun bs!858985 () Bool)

(assert (= bs!858985 (and d!1394704 d!1394662)))

(assert (=> bs!858985 (= (= lt!1700803 lt!1699955) (= lambda!173176 lambda!173158))))

(declare-fun bs!858986 () Bool)

(assert (= bs!858986 (and d!1394704 b!4523502)))

(assert (=> bs!858986 (= (= lt!1700803 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173176 lambda!173098))))

(assert (=> bs!858984 (= (= lt!1700803 lt!1699771) (= lambda!173176 lambda!173066))))

(declare-fun bs!858987 () Bool)

(assert (= bs!858987 (and d!1394704 d!1394074)))

(assert (=> bs!858987 (= (= lt!1700803 lt!1700139) (= lambda!173176 lambda!173069))))

(declare-fun bs!858988 () Bool)

(assert (= bs!858988 (and d!1394704 b!4523060)))

(assert (=> bs!858988 (= (= lt!1700803 lt!1699770) (= lambda!173176 lambda!172996))))

(assert (=> bs!858988 (= (= lt!1700803 lt!1699955) (= lambda!173176 lambda!172997))))

(assert (=> d!1394704 true))

(declare-fun bm!315268 () Bool)

(declare-fun c!772251 () Bool)

(declare-fun call!315274 () Bool)

(assert (=> bm!315268 (= call!315274 (forall!10280 (ite c!772251 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699795))))) (ite c!772251 lambda!173170 lambda!173174)))))

(declare-fun e!2818873 () ListMap!3605)

(assert (=> b!4524295 (= e!2818873 (extractMap!1224 (t!357755 (toList!4344 lt!1699795))))))

(declare-fun lt!1700813 () Unit!95506)

(declare-fun call!315273 () Unit!95506)

(assert (=> b!4524295 (= lt!1700813 call!315273)))

(declare-fun call!315275 () Bool)

(assert (=> b!4524295 call!315275))

(declare-fun lt!1700810 () Unit!95506)

(assert (=> b!4524295 (= lt!1700810 lt!1700813)))

(assert (=> b!4524295 call!315274))

(declare-fun lt!1700815 () Unit!95506)

(declare-fun Unit!95728 () Unit!95506)

(assert (=> b!4524295 (= lt!1700815 Unit!95728)))

(declare-fun bm!315269 () Bool)

(assert (=> bm!315269 (= call!315275 (forall!10280 (ite c!772251 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (_2!28848 (h!56528 (toList!4344 lt!1699795)))) (ite c!772251 lambda!173170 lambda!173174)))))

(declare-fun b!4524296 () Bool)

(declare-fun res!1883466 () Bool)

(declare-fun e!2818871 () Bool)

(assert (=> b!4524296 (=> (not res!1883466) (not e!2818871))))

(assert (=> b!4524296 (= res!1883466 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lambda!173176))))

(declare-fun b!4524297 () Bool)

(declare-fun e!2818872 () Bool)

(assert (=> b!4524297 (= e!2818872 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lambda!173174))))

(declare-fun bm!315270 () Bool)

(assert (=> bm!315270 (= call!315273 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))))))

(assert (=> b!4524298 (= e!2818873 lt!1700806)))

(declare-fun lt!1700805 () ListMap!3605)

(assert (=> b!4524298 (= lt!1700805 (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795))))))))

(assert (=> b!4524298 (= lt!1700806 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699795)))) (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795)))))))))

(declare-fun lt!1700814 () Unit!95506)

(assert (=> b!4524298 (= lt!1700814 call!315273)))

(assert (=> b!4524298 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lambda!173172)))

(declare-fun lt!1700816 () Unit!95506)

(assert (=> b!4524298 (= lt!1700816 lt!1700814)))

(assert (=> b!4524298 (forall!10280 (toList!4343 lt!1700805) lambda!173174)))

(declare-fun lt!1700797 () Unit!95506)

(declare-fun Unit!95730 () Unit!95506)

(assert (=> b!4524298 (= lt!1700797 Unit!95730)))

(assert (=> b!4524298 call!315274))

(declare-fun lt!1700808 () Unit!95506)

(declare-fun Unit!95731 () Unit!95506)

(assert (=> b!4524298 (= lt!1700808 Unit!95731)))

(declare-fun lt!1700796 () Unit!95506)

(declare-fun Unit!95732 () Unit!95506)

(assert (=> b!4524298 (= lt!1700796 Unit!95732)))

(declare-fun lt!1700799 () Unit!95506)

(assert (=> b!4524298 (= lt!1700799 (forallContained!2532 (toList!4343 lt!1700805) lambda!173174 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795))))))))

(assert (=> b!4524298 (contains!13409 lt!1700805 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795))))))))

(declare-fun lt!1700798 () Unit!95506)

(declare-fun Unit!95734 () Unit!95506)

(assert (=> b!4524298 (= lt!1700798 Unit!95734)))

(assert (=> b!4524298 (contains!13409 lt!1700806 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795))))))))

(declare-fun lt!1700811 () Unit!95506)

(declare-fun Unit!95736 () Unit!95506)

(assert (=> b!4524298 (= lt!1700811 Unit!95736)))

(assert (=> b!4524298 call!315275))

(declare-fun lt!1700800 () Unit!95506)

(declare-fun Unit!95738 () Unit!95506)

(assert (=> b!4524298 (= lt!1700800 Unit!95738)))

(assert (=> b!4524298 (forall!10280 (toList!4343 lt!1700805) lambda!173174)))

(declare-fun lt!1700802 () Unit!95506)

(declare-fun Unit!95739 () Unit!95506)

(assert (=> b!4524298 (= lt!1700802 Unit!95739)))

(declare-fun lt!1700812 () Unit!95506)

(declare-fun Unit!95741 () Unit!95506)

(assert (=> b!4524298 (= lt!1700812 Unit!95741)))

(declare-fun lt!1700807 () Unit!95506)

(assert (=> b!4524298 (= lt!1700807 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700806 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699795)))))))))

(assert (=> b!4524298 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lambda!173174)))

(declare-fun lt!1700801 () Unit!95506)

(assert (=> b!4524298 (= lt!1700801 lt!1700807)))

(assert (=> b!4524298 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lambda!173174)))

(declare-fun lt!1700804 () Unit!95506)

(declare-fun Unit!95745 () Unit!95506)

(assert (=> b!4524298 (= lt!1700804 Unit!95745)))

(declare-fun res!1883464 () Bool)

(assert (=> b!4524298 (= res!1883464 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699795))) lambda!173174))))

(assert (=> b!4524298 (=> (not res!1883464) (not e!2818872))))

(assert (=> b!4524298 e!2818872))

(declare-fun lt!1700809 () Unit!95506)

(declare-fun Unit!95747 () Unit!95506)

(assert (=> b!4524298 (= lt!1700809 Unit!95747)))

(assert (=> d!1394704 e!2818871))

(declare-fun res!1883465 () Bool)

(assert (=> d!1394704 (=> (not res!1883465) (not e!2818871))))

(assert (=> d!1394704 (= res!1883465 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699795))) lambda!173176))))

(assert (=> d!1394704 (= lt!1700803 e!2818873)))

(assert (=> d!1394704 (= c!772251 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lt!1699795)))))))

(assert (=> d!1394704 (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699795))))))

(assert (=> d!1394704 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699795))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) lt!1700803)))

(declare-fun b!4524299 () Bool)

(assert (=> b!4524299 (= e!2818871 (invariantList!1023 (toList!4343 lt!1700803)))))

(assert (= (and d!1394704 c!772251) b!4524295))

(assert (= (and d!1394704 (not c!772251)) b!4524298))

(assert (= (and b!4524298 res!1883464) b!4524297))

(assert (= (or b!4524295 b!4524298) bm!315268))

(assert (= (or b!4524295 b!4524298) bm!315269))

(assert (= (or b!4524295 b!4524298) bm!315270))

(assert (= (and d!1394704 res!1883465) b!4524296))

(assert (= (and b!4524296 res!1883466) b!4524299))

(declare-fun m!5275717 () Bool)

(assert (=> b!4524298 m!5275717))

(declare-fun m!5275719 () Bool)

(assert (=> b!4524298 m!5275719))

(declare-fun m!5275721 () Bool)

(assert (=> b!4524298 m!5275721))

(declare-fun m!5275723 () Bool)

(assert (=> b!4524298 m!5275723))

(assert (=> b!4524298 m!5275723))

(declare-fun m!5275725 () Bool)

(assert (=> b!4524298 m!5275725))

(assert (=> b!4524298 m!5275725))

(declare-fun m!5275727 () Bool)

(assert (=> b!4524298 m!5275727))

(assert (=> b!4524298 m!5273843))

(declare-fun m!5275729 () Bool)

(assert (=> b!4524298 m!5275729))

(assert (=> b!4524298 m!5273843))

(assert (=> b!4524298 m!5275719))

(declare-fun m!5275731 () Bool)

(assert (=> b!4524298 m!5275731))

(declare-fun m!5275733 () Bool)

(assert (=> b!4524298 m!5275733))

(declare-fun m!5275737 () Bool)

(assert (=> b!4524298 m!5275737))

(declare-fun m!5275741 () Bool)

(assert (=> b!4524296 m!5275741))

(assert (=> b!4524297 m!5275723))

(declare-fun m!5275743 () Bool)

(assert (=> bm!315269 m!5275743))

(assert (=> bm!315270 m!5273843))

(declare-fun m!5275745 () Bool)

(assert (=> bm!315270 m!5275745))

(declare-fun m!5275747 () Bool)

(assert (=> bm!315268 m!5275747))

(declare-fun m!5275749 () Bool)

(assert (=> d!1394704 m!5275749))

(declare-fun m!5275751 () Bool)

(assert (=> d!1394704 m!5275751))

(declare-fun m!5275753 () Bool)

(assert (=> b!4524299 m!5275753))

(assert (=> b!4523259 d!1394704))

(declare-fun bs!858989 () Bool)

(declare-fun d!1394710 () Bool)

(assert (= bs!858989 (and d!1394710 d!1394104)))

(declare-fun lambda!173177 () Int)

(assert (=> bs!858989 (= lambda!173177 lambda!173072)))

(declare-fun bs!858990 () Bool)

(assert (= bs!858990 (and d!1394710 d!1394024)))

(assert (=> bs!858990 (= lambda!173177 lambda!173050)))

(declare-fun bs!858991 () Bool)

(assert (= bs!858991 (and d!1394710 d!1394100)))

(assert (=> bs!858991 (= lambda!173177 lambda!173071)))

(declare-fun bs!858992 () Bool)

(assert (= bs!858992 (and d!1394710 d!1394070)))

(assert (=> bs!858992 (not (= lambda!173177 lambda!173062))))

(declare-fun bs!858993 () Bool)

(assert (= bs!858993 (and d!1394710 d!1394110)))

(assert (=> bs!858993 (= lambda!173177 lambda!173076)))

(declare-fun bs!858994 () Bool)

(assert (= bs!858994 (and d!1394710 d!1394526)))

(assert (=> bs!858994 (= lambda!173177 lambda!173132)))

(declare-fun bs!858995 () Bool)

(assert (= bs!858995 (and d!1394710 start!448016)))

(assert (=> bs!858995 (= lambda!173177 lambda!172947)))

(declare-fun bs!858996 () Bool)

(assert (= bs!858996 (and d!1394710 d!1394010)))

(assert (=> bs!858996 (= lambda!173177 lambda!173036)))

(declare-fun bs!858997 () Bool)

(assert (= bs!858997 (and d!1394710 b!4522898)))

(assert (=> bs!858997 (not (= lambda!173177 lambda!172948))))

(declare-fun bs!858998 () Bool)

(assert (= bs!858998 (and d!1394710 d!1394080)))

(assert (=> bs!858998 (= lambda!173177 lambda!173070)))

(declare-fun bs!858999 () Bool)

(assert (= bs!858999 (and d!1394710 d!1394038)))

(assert (=> bs!858999 (= lambda!173177 lambda!173051)))

(declare-fun bs!859000 () Bool)

(assert (= bs!859000 (and d!1394710 d!1394452)))

(assert (=> bs!859000 (= lambda!173177 lambda!173126)))

(declare-fun bs!859001 () Bool)

(assert (= bs!859001 (and d!1394710 d!1394106)))

(assert (=> bs!859001 (= lambda!173177 lambda!173075)))

(declare-fun bs!859002 () Bool)

(assert (= bs!859002 (and d!1394710 d!1394122)))

(assert (=> bs!859002 (= lambda!173177 lambda!173079)))

(declare-fun bs!859003 () Bool)

(assert (= bs!859003 (and d!1394710 d!1393990)))

(assert (=> bs!859003 (= lambda!173177 lambda!173001)))

(declare-fun bs!859004 () Bool)

(assert (= bs!859004 (and d!1394710 d!1394554)))

(assert (=> bs!859004 (= lambda!173177 lambda!173141)))

(declare-fun bs!859005 () Bool)

(assert (= bs!859005 (and d!1394710 d!1394054)))

(assert (=> bs!859005 (= lambda!173177 lambda!173059)))

(declare-fun lt!1700825 () ListMap!3605)

(assert (=> d!1394710 (invariantList!1023 (toList!4343 lt!1700825))))

(declare-fun e!2818882 () ListMap!3605)

(assert (=> d!1394710 (= lt!1700825 e!2818882)))

(declare-fun c!772255 () Bool)

(assert (=> d!1394710 (= c!772255 ((_ is Cons!50669) (t!357755 (toList!4344 lt!1699795))))))

(assert (=> d!1394710 (forall!10281 (t!357755 (toList!4344 lt!1699795)) lambda!173177)))

(assert (=> d!1394710 (= (extractMap!1224 (t!357755 (toList!4344 lt!1699795))) lt!1700825)))

(declare-fun b!4524311 () Bool)

(assert (=> b!4524311 (= e!2818882 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 lt!1699795)))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lt!1699795))))))))

(declare-fun b!4524312 () Bool)

(assert (=> b!4524312 (= e!2818882 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394710 c!772255) b!4524311))

(assert (= (and d!1394710 (not c!772255)) b!4524312))

(declare-fun m!5275775 () Bool)

(assert (=> d!1394710 m!5275775))

(declare-fun m!5275777 () Bool)

(assert (=> d!1394710 m!5275777))

(declare-fun m!5275779 () Bool)

(assert (=> b!4524311 m!5275779))

(assert (=> b!4524311 m!5275779))

(declare-fun m!5275781 () Bool)

(assert (=> b!4524311 m!5275781))

(assert (=> b!4523259 d!1394710))

(declare-fun d!1394714 () Bool)

(declare-fun choose!29609 (Hashable!5563 K!12060) (_ BitVec 64))

(assert (=> d!1394714 (= (hash!2833 hashF!1107 key!3287) (choose!29609 hashF!1107 key!3287))))

(declare-fun bs!859006 () Bool)

(assert (= bs!859006 d!1394714))

(declare-fun m!5275783 () Bool)

(assert (=> bs!859006 m!5275783))

(assert (=> d!1394112 d!1394714))

(declare-fun bs!859007 () Bool)

(declare-fun b!4524313 () Bool)

(assert (= bs!859007 (and b!4524313 b!4523892)))

(declare-fun lambda!173178 () Int)

(assert (=> bs!859007 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (toList!4343 lt!1699768)) (= lambda!173178 lambda!173127))))

(declare-fun bs!859008 () Bool)

(assert (= bs!859008 (and b!4524313 b!4523453)))

(assert (=> bs!859008 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (toList!4343 lt!1699778)) (= lambda!173178 lambda!173086))))

(declare-fun bs!859009 () Bool)

(assert (= bs!859009 (and b!4524313 b!4524211)))

(assert (=> bs!859009 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (toList!4343 lt!1699778)) (= lambda!173178 lambda!173156))))

(declare-fun bs!859010 () Bool)

(assert (= bs!859010 (and b!4524313 b!4524107)))

(assert (=> bs!859010 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (toList!4343 lt!1700118)) (= lambda!173178 lambda!173143))))

(declare-fun bs!859011 () Bool)

(assert (= bs!859011 (and b!4524313 b!4524203)))

(assert (=> bs!859011 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 lt!1699778))) (= lambda!173178 lambda!173154))))

(declare-fun bs!859012 () Bool)

(assert (= bs!859012 (and b!4524313 b!4524206)))

(assert (=> bs!859012 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173178 lambda!173155))))

(declare-fun bs!859013 () Bool)

(assert (= bs!859013 (and b!4524313 b!4523444)))

(assert (=> bs!859013 (= (= (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173178 lambda!173084))))

(assert (=> b!4524313 true))

(declare-fun bs!859014 () Bool)

(declare-fun b!4524316 () Bool)

(assert (= bs!859014 (and b!4524316 b!4524313)))

(declare-fun lambda!173179 () Int)

(assert (=> bs!859014 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (= lambda!173179 lambda!173178))))

(declare-fun bs!859015 () Bool)

(assert (= bs!859015 (and b!4524316 b!4523892)))

(assert (=> bs!859015 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (toList!4343 lt!1699768)) (= lambda!173179 lambda!173127))))

(declare-fun bs!859016 () Bool)

(assert (= bs!859016 (and b!4524316 b!4523453)))

(assert (=> bs!859016 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (toList!4343 lt!1699778)) (= lambda!173179 lambda!173086))))

(declare-fun bs!859017 () Bool)

(assert (= bs!859017 (and b!4524316 b!4524211)))

(assert (=> bs!859017 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (toList!4343 lt!1699778)) (= lambda!173179 lambda!173156))))

(declare-fun bs!859018 () Bool)

(assert (= bs!859018 (and b!4524316 b!4524107)))

(assert (=> bs!859018 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (toList!4343 lt!1700118)) (= lambda!173179 lambda!173143))))

(declare-fun bs!859019 () Bool)

(assert (= bs!859019 (and b!4524316 b!4524203)))

(assert (=> bs!859019 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (t!357754 (toList!4343 lt!1699778))) (= lambda!173179 lambda!173154))))

(declare-fun bs!859020 () Bool)

(assert (= bs!859020 (and b!4524316 b!4524206)))

(assert (=> bs!859020 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173179 lambda!173155))))

(declare-fun bs!859021 () Bool)

(assert (= bs!859021 (and b!4524316 b!4523444)))

(assert (=> bs!859021 (= (= (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173179 lambda!173084))))

(assert (=> b!4524316 true))

(declare-fun bs!859022 () Bool)

(declare-fun b!4524321 () Bool)

(assert (= bs!859022 (and b!4524321 b!4524313)))

(declare-fun lambda!173180 () Int)

(assert (=> bs!859022 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (= lambda!173180 lambda!173178))))

(declare-fun bs!859023 () Bool)

(assert (= bs!859023 (and b!4524321 b!4523892)))

(assert (=> bs!859023 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (toList!4343 lt!1699768)) (= lambda!173180 lambda!173127))))

(declare-fun bs!859024 () Bool)

(assert (= bs!859024 (and b!4524321 b!4523453)))

(assert (=> bs!859024 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (toList!4343 lt!1699778)) (= lambda!173180 lambda!173086))))

(declare-fun bs!859025 () Bool)

(assert (= bs!859025 (and b!4524321 b!4524107)))

(assert (=> bs!859025 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (toList!4343 lt!1700118)) (= lambda!173180 lambda!173143))))

(declare-fun bs!859026 () Bool)

(assert (= bs!859026 (and b!4524321 b!4524203)))

(assert (=> bs!859026 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (t!357754 (toList!4343 lt!1699778))) (= lambda!173180 lambda!173154))))

(declare-fun bs!859027 () Bool)

(assert (= bs!859027 (and b!4524321 b!4524316)))

(assert (=> bs!859027 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))) (= lambda!173180 lambda!173179))))

(declare-fun bs!859028 () Bool)

(assert (= bs!859028 (and b!4524321 b!4524211)))

(assert (=> bs!859028 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (toList!4343 lt!1699778)) (= lambda!173180 lambda!173156))))

(declare-fun bs!859029 () Bool)

(assert (= bs!859029 (and b!4524321 b!4524206)))

(assert (=> bs!859029 (= (= (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173180 lambda!173155))))

(declare-fun bs!859030 () Bool)

(assert (= bs!859030 (and b!4524321 b!4523444)))

(assert (=> bs!859030 (= lambda!173180 lambda!173084)))

(assert (=> b!4524321 true))

(declare-fun bs!859031 () Bool)

(declare-fun b!4524319 () Bool)

(assert (= bs!859031 (and b!4524319 b!4524209)))

(declare-fun lambda!173181 () Int)

(assert (=> bs!859031 (= lambda!173181 lambda!173157)))

(declare-fun bs!859032 () Bool)

(assert (= bs!859032 (and b!4524319 b!4523454)))

(assert (=> bs!859032 (= lambda!173181 lambda!173087)))

(declare-fun bs!859033 () Bool)

(assert (= bs!859033 (and b!4524319 b!4524108)))

(assert (=> bs!859033 (= lambda!173181 lambda!173144)))

(declare-fun bs!859034 () Bool)

(assert (= bs!859034 (and b!4524319 b!4523445)))

(assert (=> bs!859034 (= lambda!173181 lambda!173085)))

(declare-fun bs!859035 () Bool)

(assert (= bs!859035 (and b!4524319 b!4523893)))

(assert (=> bs!859035 (= lambda!173181 lambda!173128)))

(assert (=> b!4524313 false))

(declare-fun lt!1700826 () Unit!95506)

(assert (=> b!4524313 (= lt!1700826 (forallContained!2534 (getKeysList!471 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) lambda!173178 (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun e!2818884 () Unit!95506)

(declare-fun Unit!95750 () Unit!95506)

(assert (=> b!4524313 (= e!2818884 Unit!95750)))

(declare-fun d!1394716 () Bool)

(declare-fun e!2818883 () Bool)

(assert (=> d!1394716 e!2818883))

(declare-fun res!1883473 () Bool)

(assert (=> d!1394716 (=> (not res!1883473) (not e!2818883))))

(declare-fun lt!1700832 () List!50795)

(assert (=> d!1394716 (= res!1883473 (noDuplicate!750 lt!1700832))))

(declare-fun e!2818885 () List!50795)

(assert (=> d!1394716 (= lt!1700832 e!2818885)))

(declare-fun c!772258 () Bool)

(assert (=> d!1394716 (= c!772258 ((_ is Cons!50668) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> d!1394716 (invariantList!1023 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394716 (= (getKeysList!471 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) lt!1700832)))

(declare-fun b!4524314 () Bool)

(assert (=> b!4524314 (= e!2818885 Nil!50671)))

(declare-fun b!4524315 () Bool)

(declare-fun res!1883474 () Bool)

(assert (=> b!4524315 (=> (not res!1883474) (not e!2818883))))

(assert (=> b!4524315 (= res!1883474 (= (length!356 lt!1700832) (length!357 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))))

(assert (=> b!4524316 (= e!2818885 (Cons!50671 (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (getKeysList!471 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun c!772256 () Bool)

(assert (=> b!4524316 (= c!772256 (containsKey!1804 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun lt!1700828 () Unit!95506)

(declare-fun e!2818886 () Unit!95506)

(assert (=> b!4524316 (= lt!1700828 e!2818886)))

(declare-fun c!772257 () Bool)

(assert (=> b!4524316 (= c!772257 (contains!13413 (getKeysList!471 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (_1!28847 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun lt!1700827 () Unit!95506)

(assert (=> b!4524316 (= lt!1700827 e!2818884)))

(declare-fun lt!1700831 () List!50795)

(assert (=> b!4524316 (= lt!1700831 (getKeysList!471 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))))

(declare-fun lt!1700830 () Unit!95506)

(assert (=> b!4524316 (= lt!1700830 (lemmaForallContainsAddHeadPreserves!170 (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) lt!1700831 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))))

(assert (=> b!4524316 (forall!10283 lt!1700831 lambda!173179)))

(declare-fun lt!1700829 () Unit!95506)

(assert (=> b!4524316 (= lt!1700829 lt!1700830)))

(declare-fun b!4524317 () Bool)

(assert (=> b!4524317 false))

(declare-fun Unit!95752 () Unit!95506)

(assert (=> b!4524317 (= e!2818886 Unit!95752)))

(declare-fun b!4524318 () Bool)

(declare-fun Unit!95753 () Unit!95506)

(assert (=> b!4524318 (= e!2818886 Unit!95753)))

(assert (=> b!4524319 (= e!2818883 (= (content!8376 lt!1700832) (content!8376 (map!11145 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173181))))))

(declare-fun b!4524320 () Bool)

(declare-fun Unit!95754 () Unit!95506)

(assert (=> b!4524320 (= e!2818884 Unit!95754)))

(declare-fun res!1883472 () Bool)

(assert (=> b!4524321 (=> (not res!1883472) (not e!2818883))))

(assert (=> b!4524321 (= res!1883472 (forall!10283 lt!1700832 lambda!173180))))

(assert (= (and d!1394716 c!772258) b!4524316))

(assert (= (and d!1394716 (not c!772258)) b!4524314))

(assert (= (and b!4524316 c!772256) b!4524317))

(assert (= (and b!4524316 (not c!772256)) b!4524318))

(assert (= (and b!4524316 c!772257) b!4524313))

(assert (= (and b!4524316 (not c!772257)) b!4524320))

(assert (= (and d!1394716 res!1883473) b!4524315))

(assert (= (and b!4524315 res!1883474) b!4524321))

(assert (= (and b!4524321 res!1883472) b!4524319))

(declare-fun m!5275785 () Bool)

(assert (=> d!1394716 m!5275785))

(assert (=> d!1394716 m!5274049))

(declare-fun m!5275787 () Bool)

(assert (=> b!4524313 m!5275787))

(assert (=> b!4524313 m!5275787))

(declare-fun m!5275789 () Bool)

(assert (=> b!4524313 m!5275789))

(declare-fun m!5275791 () Bool)

(assert (=> b!4524319 m!5275791))

(declare-fun m!5275793 () Bool)

(assert (=> b!4524319 m!5275793))

(assert (=> b!4524319 m!5275793))

(declare-fun m!5275795 () Bool)

(assert (=> b!4524319 m!5275795))

(assert (=> b!4524316 m!5275787))

(declare-fun m!5275797 () Bool)

(assert (=> b!4524316 m!5275797))

(declare-fun m!5275799 () Bool)

(assert (=> b!4524316 m!5275799))

(assert (=> b!4524316 m!5275787))

(declare-fun m!5275801 () Bool)

(assert (=> b!4524316 m!5275801))

(declare-fun m!5275803 () Bool)

(assert (=> b!4524316 m!5275803))

(declare-fun m!5275805 () Bool)

(assert (=> b!4524315 m!5275805))

(assert (=> b!4524315 m!5274097))

(declare-fun m!5275807 () Bool)

(assert (=> b!4524321 m!5275807))

(assert (=> b!4523307 d!1394716))

(assert (=> b!4523176 d!1393992))

(assert (=> b!4523256 d!1394226))

(declare-fun d!1394718 () Bool)

(declare-fun res!1883475 () Bool)

(declare-fun e!2818887 () Bool)

(assert (=> d!1394718 (=> res!1883475 e!2818887)))

(assert (=> d!1394718 (= res!1883475 (and ((_ is Cons!50669) (toList!4344 lt!1699792)) (= (_1!28848 (h!56528 (toList!4344 lt!1699792))) hash!344)))))

(assert (=> d!1394718 (= (containsKey!1802 (toList!4344 lt!1699792) hash!344) e!2818887)))

(declare-fun b!4524323 () Bool)

(declare-fun e!2818888 () Bool)

(assert (=> b!4524323 (= e!2818887 e!2818888)))

(declare-fun res!1883476 () Bool)

(assert (=> b!4524323 (=> (not res!1883476) (not e!2818888))))

(assert (=> b!4524323 (= res!1883476 (and (or (not ((_ is Cons!50669) (toList!4344 lt!1699792))) (bvsle (_1!28848 (h!56528 (toList!4344 lt!1699792))) hash!344)) ((_ is Cons!50669) (toList!4344 lt!1699792)) (bvslt (_1!28848 (h!56528 (toList!4344 lt!1699792))) hash!344)))))

(declare-fun b!4524324 () Bool)

(assert (=> b!4524324 (= e!2818888 (containsKey!1802 (t!357755 (toList!4344 lt!1699792)) hash!344))))

(assert (= (and d!1394718 (not res!1883475)) b!4524323))

(assert (= (and b!4524323 res!1883476) b!4524324))

(declare-fun m!5275809 () Bool)

(assert (=> b!4524324 m!5275809))

(assert (=> d!1393976 d!1394718))

(declare-fun d!1394720 () Bool)

(assert (=> d!1394720 (dynLambda!21171 lambda!172947 lt!1699785)))

(assert (=> d!1394720 true))

(declare-fun _$7!1854 () Unit!95506)

(assert (=> d!1394720 (= (choose!29581 (toList!4344 lm!1477) lambda!172947 lt!1699785) _$7!1854)))

(declare-fun b_lambda!155409 () Bool)

(assert (=> (not b_lambda!155409) (not d!1394720)))

(declare-fun bs!859036 () Bool)

(assert (= bs!859036 d!1394720))

(assert (=> bs!859036 m!5273557))

(assert (=> d!1394004 d!1394720))

(assert (=> d!1394004 d!1393980))

(declare-fun d!1394722 () Bool)

(declare-fun lt!1700835 () Bool)

(assert (=> d!1394722 (= lt!1700835 (select (content!8376 e!2818227) key!3287))))

(declare-fun e!2818889 () Bool)

(assert (=> d!1394722 (= lt!1700835 e!2818889)))

(declare-fun res!1883477 () Bool)

(assert (=> d!1394722 (=> (not res!1883477) (not e!2818889))))

(assert (=> d!1394722 (= res!1883477 ((_ is Cons!50671) e!2818227))))

(assert (=> d!1394722 (= (contains!13413 e!2818227 key!3287) lt!1700835)))

(declare-fun b!4524325 () Bool)

(declare-fun e!2818890 () Bool)

(assert (=> b!4524325 (= e!2818889 e!2818890)))

(declare-fun res!1883478 () Bool)

(assert (=> b!4524325 (=> res!1883478 e!2818890)))

(assert (=> b!4524325 (= res!1883478 (= (h!56532 e!2818227) key!3287))))

(declare-fun b!4524326 () Bool)

(assert (=> b!4524326 (= e!2818890 (contains!13413 (t!357757 e!2818227) key!3287))))

(assert (= (and d!1394722 res!1883477) b!4524325))

(assert (= (and b!4524325 (not res!1883478)) b!4524326))

(declare-fun m!5275811 () Bool)

(assert (=> d!1394722 m!5275811))

(declare-fun m!5275813 () Bool)

(assert (=> d!1394722 m!5275813))

(declare-fun m!5275815 () Bool)

(assert (=> b!4524326 m!5275815))

(assert (=> bm!315162 d!1394722))

(declare-fun d!1394724 () Bool)

(assert (=> d!1394724 (= (invariantList!1023 (toList!4343 lt!1700156)) (noDuplicatedKeys!264 (toList!4343 lt!1700156)))))

(declare-fun bs!859037 () Bool)

(assert (= bs!859037 d!1394724))

(declare-fun m!5275817 () Bool)

(assert (=> bs!859037 m!5275817))

(assert (=> d!1394080 d!1394724))

(declare-fun d!1394726 () Bool)

(declare-fun res!1883479 () Bool)

(declare-fun e!2818891 () Bool)

(assert (=> d!1394726 (=> res!1883479 e!2818891)))

(assert (=> d!1394726 (= res!1883479 ((_ is Nil!50669) (toList!4344 lt!1699795)))))

(assert (=> d!1394726 (= (forall!10281 (toList!4344 lt!1699795) lambda!173070) e!2818891)))

(declare-fun b!4524327 () Bool)

(declare-fun e!2818892 () Bool)

(assert (=> b!4524327 (= e!2818891 e!2818892)))

(declare-fun res!1883480 () Bool)

(assert (=> b!4524327 (=> (not res!1883480) (not e!2818892))))

(assert (=> b!4524327 (= res!1883480 (dynLambda!21171 lambda!173070 (h!56528 (toList!4344 lt!1699795))))))

(declare-fun b!4524328 () Bool)

(assert (=> b!4524328 (= e!2818892 (forall!10281 (t!357755 (toList!4344 lt!1699795)) lambda!173070))))

(assert (= (and d!1394726 (not res!1883479)) b!4524327))

(assert (= (and b!4524327 res!1883480) b!4524328))

(declare-fun b_lambda!155411 () Bool)

(assert (=> (not b_lambda!155411) (not b!4524327)))

(declare-fun m!5275819 () Bool)

(assert (=> b!4524327 m!5275819))

(declare-fun m!5275821 () Bool)

(assert (=> b!4524328 m!5275821))

(assert (=> d!1394080 d!1394726))

(assert (=> d!1393990 d!1393988))

(declare-fun d!1394728 () Bool)

(assert (=> d!1394728 (containsKeyBiggerList!148 (toList!4344 lt!1699792) key!3287)))

(assert (=> d!1394728 true))

(declare-fun _$33!676 () Unit!95506)

(assert (=> d!1394728 (= (choose!29580 lt!1699792 key!3287 hashF!1107) _$33!676)))

(declare-fun bs!859041 () Bool)

(assert (= bs!859041 d!1394728))

(assert (=> bs!859041 m!5273171))

(assert (=> d!1393990 d!1394728))

(declare-fun d!1394730 () Bool)

(declare-fun res!1883481 () Bool)

(declare-fun e!2818893 () Bool)

(assert (=> d!1394730 (=> res!1883481 e!2818893)))

(assert (=> d!1394730 (= res!1883481 ((_ is Nil!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1394730 (= (forall!10281 (toList!4344 lt!1699792) lambda!173001) e!2818893)))

(declare-fun b!4524329 () Bool)

(declare-fun e!2818894 () Bool)

(assert (=> b!4524329 (= e!2818893 e!2818894)))

(declare-fun res!1883482 () Bool)

(assert (=> b!4524329 (=> (not res!1883482) (not e!2818894))))

(assert (=> b!4524329 (= res!1883482 (dynLambda!21171 lambda!173001 (h!56528 (toList!4344 lt!1699792))))))

(declare-fun b!4524330 () Bool)

(assert (=> b!4524330 (= e!2818894 (forall!10281 (t!357755 (toList!4344 lt!1699792)) lambda!173001))))

(assert (= (and d!1394730 (not res!1883481)) b!4524329))

(assert (= (and b!4524329 res!1883482) b!4524330))

(declare-fun b_lambda!155413 () Bool)

(assert (=> (not b_lambda!155413) (not b!4524329)))

(declare-fun m!5275823 () Bool)

(assert (=> b!4524329 m!5275823))

(declare-fun m!5275825 () Bool)

(assert (=> b!4524330 m!5275825))

(assert (=> d!1393990 d!1394730))

(declare-fun d!1394732 () Bool)

(declare-fun res!1883483 () Bool)

(declare-fun e!2818895 () Bool)

(assert (=> d!1394732 (=> res!1883483 e!2818895)))

(declare-fun e!2818896 () Bool)

(assert (=> d!1394732 (= res!1883483 e!2818896)))

(declare-fun res!1883485 () Bool)

(assert (=> d!1394732 (=> (not res!1883485) (not e!2818896))))

(assert (=> d!1394732 (= res!1883485 ((_ is Cons!50669) (t!357755 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394732 (= (containsKeyBiggerList!148 (t!357755 (t!357755 (toList!4344 lm!1477))) key!3287) e!2818895)))

(declare-fun b!4524331 () Bool)

(assert (=> b!4524331 (= e!2818896 (containsKey!1800 (_2!28848 (h!56528 (t!357755 (t!357755 (toList!4344 lm!1477))))) key!3287))))

(declare-fun b!4524332 () Bool)

(declare-fun e!2818897 () Bool)

(assert (=> b!4524332 (= e!2818895 e!2818897)))

(declare-fun res!1883484 () Bool)

(assert (=> b!4524332 (=> (not res!1883484) (not e!2818897))))

(assert (=> b!4524332 (= res!1883484 ((_ is Cons!50669) (t!357755 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun b!4524333 () Bool)

(assert (=> b!4524333 (= e!2818897 (containsKeyBiggerList!148 (t!357755 (t!357755 (t!357755 (toList!4344 lm!1477)))) key!3287))))

(assert (= (and d!1394732 res!1883485) b!4524331))

(assert (= (and d!1394732 (not res!1883483)) b!4524332))

(assert (= (and b!4524332 res!1883484) b!4524333))

(declare-fun m!5275827 () Bool)

(assert (=> b!4524331 m!5275827))

(declare-fun m!5275829 () Bool)

(assert (=> b!4524333 m!5275829))

(assert (=> b!4523093 d!1394732))

(declare-fun d!1394734 () Bool)

(declare-fun res!1883486 () Bool)

(declare-fun e!2818898 () Bool)

(assert (=> d!1394734 (=> res!1883486 e!2818898)))

(assert (=> d!1394734 (= res!1883486 ((_ is Nil!50668) (ite c!771942 (toList!4343 lt!1699770) (_2!28848 lt!1699794))))))

(assert (=> d!1394734 (= (forall!10280 (ite c!771942 (toList!4343 lt!1699770) (_2!28848 lt!1699794)) (ite c!771942 lambda!172995 lambda!172997)) e!2818898)))

(declare-fun b!4524334 () Bool)

(declare-fun e!2818899 () Bool)

(assert (=> b!4524334 (= e!2818898 e!2818899)))

(declare-fun res!1883487 () Bool)

(assert (=> b!4524334 (=> (not res!1883487) (not e!2818899))))

(assert (=> b!4524334 (= res!1883487 (dynLambda!21172 (ite c!771942 lambda!172995 lambda!172997) (h!56527 (ite c!771942 (toList!4343 lt!1699770) (_2!28848 lt!1699794)))))))

(declare-fun b!4524335 () Bool)

(assert (=> b!4524335 (= e!2818899 (forall!10280 (t!357754 (ite c!771942 (toList!4343 lt!1699770) (_2!28848 lt!1699794))) (ite c!771942 lambda!172995 lambda!172997)))))

(assert (= (and d!1394734 (not res!1883486)) b!4524334))

(assert (= (and b!4524334 res!1883487) b!4524335))

(declare-fun b_lambda!155415 () Bool)

(assert (=> (not b_lambda!155415) (not b!4524334)))

(declare-fun m!5275831 () Bool)

(assert (=> b!4524334 m!5275831))

(declare-fun m!5275833 () Bool)

(assert (=> b!4524335 m!5275833))

(assert (=> bm!315143 d!1394734))

(declare-fun d!1394736 () Bool)

(assert (=> d!1394736 (eq!625 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771) (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770))))

(assert (=> d!1394736 true))

(declare-fun _$16!227 () Unit!95506)

(assert (=> d!1394736 (= (choose!29578 lt!1699771 lt!1699770 (_2!28848 lt!1699794)) _$16!227)))

(declare-fun bs!859065 () Bool)

(assert (= bs!859065 d!1394736))

(assert (=> bs!859065 m!5273201))

(assert (=> bs!859065 m!5273145))

(assert (=> bs!859065 m!5273201))

(assert (=> bs!859065 m!5273145))

(assert (=> bs!859065 m!5273475))

(assert (=> d!1393966 d!1394736))

(assert (=> d!1393966 d!1394066))

(assert (=> d!1393966 d!1394074))

(declare-fun d!1394746 () Bool)

(assert (=> d!1394746 (= (eq!625 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771) (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770)) (= (content!8374 (toList!4343 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699771))) (content!8374 (toList!4343 (addToMapMapFromBucket!695 (_2!28848 lt!1699794) lt!1699770)))))))

(declare-fun bs!859066 () Bool)

(assert (= bs!859066 d!1394746))

(declare-fun m!5275869 () Bool)

(assert (=> bs!859066 m!5275869))

(declare-fun m!5275871 () Bool)

(assert (=> bs!859066 m!5275871))

(assert (=> d!1393966 d!1394746))

(assert (=> d!1393966 d!1393892))

(assert (=> b!4523312 d!1394162))

(assert (=> b!4523312 d!1394164))

(declare-fun d!1394748 () Bool)

(declare-fun e!2818910 () Bool)

(assert (=> d!1394748 e!2818910))

(declare-fun res!1883495 () Bool)

(assert (=> d!1394748 (=> res!1883495 e!2818910)))

(declare-fun lt!1700848 () Bool)

(assert (=> d!1394748 (= res!1883495 (not lt!1700848))))

(declare-fun lt!1700847 () Bool)

(assert (=> d!1394748 (= lt!1700848 lt!1700847)))

(declare-fun lt!1700845 () Unit!95506)

(declare-fun e!2818911 () Unit!95506)

(assert (=> d!1394748 (= lt!1700845 e!2818911)))

(declare-fun c!772262 () Bool)

(assert (=> d!1394748 (= c!772262 lt!1700847)))

(assert (=> d!1394748 (= lt!1700847 (containsKey!1802 (toList!4344 lt!1700220) (_1!28848 lt!1699794)))))

(assert (=> d!1394748 (= (contains!13408 lt!1700220 (_1!28848 lt!1699794)) lt!1700848)))

(declare-fun b!4524349 () Bool)

(declare-fun lt!1700846 () Unit!95506)

(assert (=> b!4524349 (= e!2818911 lt!1700846)))

(assert (=> b!4524349 (= lt!1700846 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lt!1700220) (_1!28848 lt!1699794)))))

(assert (=> b!4524349 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700220) (_1!28848 lt!1699794)))))

(declare-fun b!4524350 () Bool)

(declare-fun Unit!95756 () Unit!95506)

(assert (=> b!4524350 (= e!2818911 Unit!95756)))

(declare-fun b!4524351 () Bool)

(assert (=> b!4524351 (= e!2818910 (isDefined!8414 (getValueByKey!1104 (toList!4344 lt!1700220) (_1!28848 lt!1699794))))))

(assert (= (and d!1394748 c!772262) b!4524349))

(assert (= (and d!1394748 (not c!772262)) b!4524350))

(assert (= (and d!1394748 (not res!1883495)) b!4524351))

(declare-fun m!5275873 () Bool)

(assert (=> d!1394748 m!5275873))

(declare-fun m!5275875 () Bool)

(assert (=> b!4524349 m!5275875))

(assert (=> b!4524349 m!5274009))

(assert (=> b!4524349 m!5274009))

(declare-fun m!5275877 () Bool)

(assert (=> b!4524349 m!5275877))

(assert (=> b!4524351 m!5274009))

(assert (=> b!4524351 m!5274009))

(assert (=> b!4524351 m!5275877))

(assert (=> d!1394120 d!1394748))

(declare-fun b!4524353 () Bool)

(declare-fun e!2818912 () Option!11130)

(declare-fun e!2818913 () Option!11130)

(assert (=> b!4524353 (= e!2818912 e!2818913)))

(declare-fun c!772264 () Bool)

(assert (=> b!4524353 (= c!772264 (and ((_ is Cons!50669) lt!1700221) (not (= (_1!28848 (h!56528 lt!1700221)) (_1!28848 lt!1699794)))))))

(declare-fun d!1394750 () Bool)

(declare-fun c!772263 () Bool)

(assert (=> d!1394750 (= c!772263 (and ((_ is Cons!50669) lt!1700221) (= (_1!28848 (h!56528 lt!1700221)) (_1!28848 lt!1699794))))))

(assert (=> d!1394750 (= (getValueByKey!1104 lt!1700221 (_1!28848 lt!1699794)) e!2818912)))

(declare-fun b!4524354 () Bool)

(assert (=> b!4524354 (= e!2818913 (getValueByKey!1104 (t!357755 lt!1700221) (_1!28848 lt!1699794)))))

(declare-fun b!4524352 () Bool)

(assert (=> b!4524352 (= e!2818912 (Some!11129 (_2!28848 (h!56528 lt!1700221))))))

(declare-fun b!4524355 () Bool)

(assert (=> b!4524355 (= e!2818913 None!11129)))

(assert (= (and d!1394750 c!772263) b!4524352))

(assert (= (and d!1394750 (not c!772263)) b!4524353))

(assert (= (and b!4524353 c!772264) b!4524354))

(assert (= (and b!4524353 (not c!772264)) b!4524355))

(declare-fun m!5275879 () Bool)

(assert (=> b!4524354 m!5275879))

(assert (=> d!1394120 d!1394750))

(declare-fun d!1394752 () Bool)

(assert (=> d!1394752 (= (getValueByKey!1104 lt!1700221 (_1!28848 lt!1699794)) (Some!11129 (_2!28848 lt!1699794)))))

(declare-fun lt!1700849 () Unit!95506)

(assert (=> d!1394752 (= lt!1700849 (choose!29594 lt!1700221 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(declare-fun e!2818914 () Bool)

(assert (=> d!1394752 e!2818914))

(declare-fun res!1883496 () Bool)

(assert (=> d!1394752 (=> (not res!1883496) (not e!2818914))))

(assert (=> d!1394752 (= res!1883496 (isStrictlySorted!436 lt!1700221))))

(assert (=> d!1394752 (= (lemmaContainsTupThenGetReturnValue!686 lt!1700221 (_1!28848 lt!1699794) (_2!28848 lt!1699794)) lt!1700849)))

(declare-fun b!4524356 () Bool)

(declare-fun res!1883497 () Bool)

(assert (=> b!4524356 (=> (not res!1883497) (not e!2818914))))

(assert (=> b!4524356 (= res!1883497 (containsKey!1802 lt!1700221 (_1!28848 lt!1699794)))))

(declare-fun b!4524357 () Bool)

(assert (=> b!4524357 (= e!2818914 (contains!13410 lt!1700221 (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794))))))

(assert (= (and d!1394752 res!1883496) b!4524356))

(assert (= (and b!4524356 res!1883497) b!4524357))

(assert (=> d!1394752 m!5274003))

(declare-fun m!5275881 () Bool)

(assert (=> d!1394752 m!5275881))

(declare-fun m!5275883 () Bool)

(assert (=> d!1394752 m!5275883))

(declare-fun m!5275885 () Bool)

(assert (=> b!4524356 m!5275885))

(declare-fun m!5275887 () Bool)

(assert (=> b!4524357 m!5275887))

(assert (=> d!1394120 d!1394752))

(declare-fun b!4524360 () Bool)

(declare-fun e!2818918 () Bool)

(declare-fun lt!1700858 () List!50793)

(assert (=> b!4524360 (= e!2818918 (contains!13410 lt!1700858 (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794))))))

(declare-fun b!4524361 () Bool)

(declare-fun e!2818920 () List!50793)

(declare-fun call!315279 () List!50793)

(assert (=> b!4524361 (= e!2818920 call!315279)))

(declare-fun b!4524362 () Bool)

(declare-fun e!2818921 () List!50793)

(assert (=> b!4524362 (= e!2818920 e!2818921)))

(declare-fun c!772268 () Bool)

(assert (=> b!4524362 (= c!772268 (and ((_ is Cons!50669) (toList!4344 lt!1699796)) (= (_1!28848 (h!56528 (toList!4344 lt!1699796))) (_1!28848 lt!1699794))))))

(declare-fun bm!315273 () Bool)

(declare-fun call!315278 () List!50793)

(assert (=> bm!315273 (= call!315278 call!315279)))

(declare-fun d!1394754 () Bool)

(assert (=> d!1394754 e!2818918))

(declare-fun res!1883499 () Bool)

(assert (=> d!1394754 (=> (not res!1883499) (not e!2818918))))

(assert (=> d!1394754 (= res!1883499 (isStrictlySorted!436 lt!1700858))))

(assert (=> d!1394754 (= lt!1700858 e!2818920)))

(declare-fun c!772266 () Bool)

(assert (=> d!1394754 (= c!772266 (and ((_ is Cons!50669) (toList!4344 lt!1699796)) (bvslt (_1!28848 (h!56528 (toList!4344 lt!1699796))) (_1!28848 lt!1699794))))))

(assert (=> d!1394754 (isStrictlySorted!436 (toList!4344 lt!1699796))))

(assert (=> d!1394754 (= (insertStrictlySorted!414 (toList!4344 lt!1699796) (_1!28848 lt!1699794) (_2!28848 lt!1699794)) lt!1700858)))

(declare-fun b!4524363 () Bool)

(declare-fun res!1883498 () Bool)

(assert (=> b!4524363 (=> (not res!1883498) (not e!2818918))))

(assert (=> b!4524363 (= res!1883498 (containsKey!1802 lt!1700858 (_1!28848 lt!1699794)))))

(declare-fun b!4524364 () Bool)

(declare-fun e!2818919 () List!50793)

(declare-fun call!315280 () List!50793)

(assert (=> b!4524364 (= e!2818919 call!315280)))

(declare-fun b!4524365 () Bool)

(declare-fun c!772265 () Bool)

(assert (=> b!4524365 (= c!772265 (and ((_ is Cons!50669) (toList!4344 lt!1699796)) (bvsgt (_1!28848 (h!56528 (toList!4344 lt!1699796))) (_1!28848 lt!1699794))))))

(assert (=> b!4524365 (= e!2818921 e!2818919)))

(declare-fun b!4524366 () Bool)

(assert (=> b!4524366 (= e!2818919 call!315280)))

(declare-fun b!4524367 () Bool)

(assert (=> b!4524367 (= e!2818921 call!315278)))

(declare-fun bm!315274 () Bool)

(declare-fun e!2818915 () List!50793)

(assert (=> bm!315274 (= call!315279 ($colon$colon!939 e!2818915 (ite c!772266 (h!56528 (toList!4344 lt!1699796)) (tuple2!51109 (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))))

(declare-fun c!772267 () Bool)

(assert (=> bm!315274 (= c!772267 c!772266)))

(declare-fun b!4524368 () Bool)

(assert (=> b!4524368 (= e!2818915 (ite c!772268 (t!357755 (toList!4344 lt!1699796)) (ite c!772265 (Cons!50669 (h!56528 (toList!4344 lt!1699796)) (t!357755 (toList!4344 lt!1699796))) Nil!50669)))))

(declare-fun b!4524369 () Bool)

(assert (=> b!4524369 (= e!2818915 (insertStrictlySorted!414 (t!357755 (toList!4344 lt!1699796)) (_1!28848 lt!1699794) (_2!28848 lt!1699794)))))

(declare-fun bm!315275 () Bool)

(assert (=> bm!315275 (= call!315280 call!315278)))

(assert (= (and d!1394754 c!772266) b!4524361))

(assert (= (and d!1394754 (not c!772266)) b!4524362))

(assert (= (and b!4524362 c!772268) b!4524367))

(assert (= (and b!4524362 (not c!772268)) b!4524365))

(assert (= (and b!4524365 c!772265) b!4524366))

(assert (= (and b!4524365 (not c!772265)) b!4524364))

(assert (= (or b!4524366 b!4524364) bm!315275))

(assert (= (or b!4524367 bm!315275) bm!315273))

(assert (= (or b!4524361 bm!315273) bm!315274))

(assert (= (and bm!315274 c!772267) b!4524369))

(assert (= (and bm!315274 (not c!772267)) b!4524368))

(assert (= (and d!1394754 res!1883499) b!4524363))

(assert (= (and b!4524363 res!1883498) b!4524360))

(declare-fun m!5275889 () Bool)

(assert (=> b!4524363 m!5275889))

(declare-fun m!5275891 () Bool)

(assert (=> b!4524369 m!5275891))

(declare-fun m!5275893 () Bool)

(assert (=> b!4524360 m!5275893))

(declare-fun m!5275895 () Bool)

(assert (=> bm!315274 m!5275895))

(declare-fun m!5275897 () Bool)

(assert (=> d!1394754 m!5275897))

(declare-fun m!5275899 () Bool)

(assert (=> d!1394754 m!5275899))

(assert (=> d!1394120 d!1394754))

(declare-fun d!1394756 () Bool)

(declare-fun res!1883504 () Bool)

(declare-fun e!2818922 () Bool)

(assert (=> d!1394756 (=> res!1883504 e!2818922)))

(assert (=> d!1394756 (= res!1883504 (and ((_ is Cons!50668) (_2!28848 (h!56528 (toList!4344 lt!1699792)))) (= (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))) key!3287)))))

(assert (=> d!1394756 (= (containsKey!1800 (_2!28848 (h!56528 (toList!4344 lt!1699792))) key!3287) e!2818922)))

(declare-fun b!4524372 () Bool)

(declare-fun e!2818923 () Bool)

(assert (=> b!4524372 (= e!2818922 e!2818923)))

(declare-fun res!1883505 () Bool)

(assert (=> b!4524372 (=> (not res!1883505) (not e!2818923))))

(assert (=> b!4524372 (= res!1883505 ((_ is Cons!50668) (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(declare-fun b!4524373 () Bool)

(assert (=> b!4524373 (= e!2818923 (containsKey!1800 (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699792)))) key!3287))))

(assert (= (and d!1394756 (not res!1883504)) b!4524372))

(assert (= (and b!4524372 res!1883505) b!4524373))

(declare-fun m!5275901 () Bool)

(assert (=> b!4524373 m!5275901))

(assert (=> b!4523094 d!1394756))

(declare-fun d!1394758 () Bool)

(declare-fun lt!1700859 () Bool)

(assert (=> d!1394758 (= lt!1700859 (select (content!8375 (toList!4344 lt!1700112)) lt!1699772))))

(declare-fun e!2818925 () Bool)

(assert (=> d!1394758 (= lt!1700859 e!2818925)))

(declare-fun res!1883507 () Bool)

(assert (=> d!1394758 (=> (not res!1883507) (not e!2818925))))

(assert (=> d!1394758 (= res!1883507 ((_ is Cons!50669) (toList!4344 lt!1700112)))))

(assert (=> d!1394758 (= (contains!13410 (toList!4344 lt!1700112) lt!1699772) lt!1700859)))

(declare-fun b!4524374 () Bool)

(declare-fun e!2818924 () Bool)

(assert (=> b!4524374 (= e!2818925 e!2818924)))

(declare-fun res!1883506 () Bool)

(assert (=> b!4524374 (=> res!1883506 e!2818924)))

(assert (=> b!4524374 (= res!1883506 (= (h!56528 (toList!4344 lt!1700112)) lt!1699772))))

(declare-fun b!4524375 () Bool)

(assert (=> b!4524375 (= e!2818924 (contains!13410 (t!357755 (toList!4344 lt!1700112)) lt!1699772))))

(assert (= (and d!1394758 res!1883507) b!4524374))

(assert (= (and b!4524374 (not res!1883506)) b!4524375))

(declare-fun m!5275903 () Bool)

(assert (=> d!1394758 m!5275903))

(declare-fun m!5275905 () Bool)

(assert (=> d!1394758 m!5275905))

(declare-fun m!5275907 () Bool)

(assert (=> b!4524375 m!5275907))

(assert (=> b!4523204 d!1394758))

(declare-fun bs!859067 () Bool)

(declare-fun b!4524378 () Bool)

(assert (= bs!859067 (and b!4524378 d!1394582)))

(declare-fun lambda!173187 () Int)

(assert (=> bs!859067 (not (= lambda!173187 lambda!173145))))

(declare-fun bs!859068 () Bool)

(assert (= bs!859068 (and b!4524378 b!4524061)))

(assert (=> bs!859068 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173187 lambda!173133))))

(declare-fun bs!859069 () Bool)

(assert (= bs!859069 (and b!4524378 d!1394016)))

(assert (=> bs!859069 (not (= lambda!173187 lambda!173040))))

(declare-fun bs!859070 () Bool)

(assert (= bs!859070 (and b!4524378 d!1394204)))

(assert (=> bs!859070 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700292) (= lambda!173187 lambda!173103))))

(declare-fun bs!859071 () Bool)

(assert (= bs!859071 (and b!4524378 b!4523057)))

(assert (=> bs!859071 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173187 lambda!172995))))

(declare-fun bs!859072 () Bool)

(assert (= bs!859072 (and b!4524378 d!1394260)))

(assert (=> bs!859072 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700142) (= lambda!173187 lambda!173115))))

(declare-fun bs!859073 () Bool)

(assert (= bs!859073 (and b!4524378 b!4524272)))

(assert (=> bs!859073 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173187 lambda!173163))))

(declare-fun bs!859074 () Bool)

(assert (= bs!859074 (and b!4524378 d!1394488)))

(assert (=> bs!859074 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173187 lambda!173131))))

(assert (=> bs!859073 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700758) (= lambda!173187 lambda!173165))))

(declare-fun bs!859075 () Bool)

(assert (= bs!859075 (and b!4524378 b!4523867)))

(assert (=> bs!859075 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700482) (= lambda!173187 lambda!173124))))

(declare-fun bs!859076 () Bool)

(assert (= bs!859076 (and b!4524378 d!1394680)))

(assert (=> bs!859076 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700755) (= lambda!173187 lambda!173167))))

(declare-fun bs!859077 () Bool)

(assert (= bs!859077 (and b!4524378 b!4524064)))

(assert (=> bs!859077 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173187 lambda!173134))))

(declare-fun bs!859078 () Bool)

(assert (= bs!859078 (and b!4524378 b!4522898)))

(assert (=> bs!859078 (not (= lambda!173187 lambda!172949))))

(declare-fun bs!859079 () Bool)

(assert (= bs!859079 (and b!4524378 b!4524295)))

(assert (=> bs!859079 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173187 lambda!173170))))

(declare-fun bs!859080 () Bool)

(assert (= bs!859080 (and b!4524378 b!4523254)))

(assert (=> bs!859080 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699771) (= lambda!173187 lambda!173063))))

(declare-fun bs!859081 () Bool)

(assert (= bs!859081 (and b!4524378 d!1394704)))

(assert (=> bs!859081 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700803) (= lambda!173187 lambda!173176))))

(assert (=> bs!859075 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173187 lambda!173123))))

(declare-fun bs!859082 () Bool)

(assert (= bs!859082 (and b!4524378 b!4523864)))

(assert (=> bs!859082 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173187 lambda!173122))))

(declare-fun bs!859083 () Bool)

(assert (= bs!859083 (and b!4524378 b!4524269)))

(assert (=> bs!859083 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173187 lambda!173161))))

(declare-fun bs!859084 () Bool)

(assert (= bs!859084 (and b!4524378 b!4523505)))

(assert (=> bs!859084 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173187 lambda!173099))))

(declare-fun bs!859085 () Bool)

(assert (= bs!859085 (and b!4524378 b!4524298)))

(assert (=> bs!859085 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173187 lambda!173172))))

(declare-fun bs!859086 () Bool)

(assert (= bs!859086 (and b!4524378 d!1394436)))

(assert (=> bs!859086 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700479) (= lambda!173187 lambda!173125))))

(declare-fun bs!859087 () Bool)

(assert (= bs!859087 (and b!4524378 d!1393892)))

(assert (=> bs!859087 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699952) (= lambda!173187 lambda!172998))))

(assert (=> bs!859085 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700806) (= lambda!173187 lambda!173174))))

(assert (=> bs!859084 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700295) (= lambda!173187 lambda!173102))))

(declare-fun bs!859088 () Bool)

(assert (= bs!859088 (and b!4524378 d!1394542)))

(assert (=> bs!859088 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700611) (= lambda!173187 lambda!173138))))

(declare-fun bs!859089 () Bool)

(assert (= bs!859089 (and b!4524378 b!4523257)))

(assert (=> bs!859089 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700142) (= lambda!173187 lambda!173067))))

(assert (=> bs!859077 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700614) (= lambda!173187 lambda!173135))))

(declare-fun bs!859090 () Bool)

(assert (= bs!859090 (and b!4524378 d!1394662)))

(assert (=> bs!859090 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699955) (= lambda!173187 lambda!173158))))

(declare-fun bs!859091 () Bool)

(assert (= bs!859091 (and b!4524378 b!4523502)))

(assert (=> bs!859091 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173187 lambda!173098))))

(assert (=> bs!859089 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699771) (= lambda!173187 lambda!173066))))

(declare-fun bs!859092 () Bool)

(assert (= bs!859092 (and b!4524378 d!1394074)))

(assert (=> bs!859092 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700139) (= lambda!173187 lambda!173069))))

(declare-fun bs!859093 () Bool)

(assert (= bs!859093 (and b!4524378 b!4523060)))

(assert (=> bs!859093 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173187 lambda!172996))))

(assert (=> bs!859093 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699955) (= lambda!173187 lambda!172997))))

(assert (=> b!4524378 true))

(declare-fun bs!859094 () Bool)

(declare-fun b!4524381 () Bool)

(assert (= bs!859094 (and b!4524381 d!1394582)))

(declare-fun lambda!173188 () Int)

(assert (=> bs!859094 (not (= lambda!173188 lambda!173145))))

(declare-fun bs!859095 () Bool)

(assert (= bs!859095 (and b!4524381 b!4524061)))

(assert (=> bs!859095 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173188 lambda!173133))))

(declare-fun bs!859096 () Bool)

(assert (= bs!859096 (and b!4524381 d!1394204)))

(assert (=> bs!859096 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700292) (= lambda!173188 lambda!173103))))

(declare-fun bs!859097 () Bool)

(assert (= bs!859097 (and b!4524381 b!4523057)))

(assert (=> bs!859097 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173188 lambda!172995))))

(declare-fun bs!859098 () Bool)

(assert (= bs!859098 (and b!4524381 d!1394260)))

(assert (=> bs!859098 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700142) (= lambda!173188 lambda!173115))))

(declare-fun bs!859099 () Bool)

(assert (= bs!859099 (and b!4524381 b!4524272)))

(assert (=> bs!859099 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173188 lambda!173163))))

(declare-fun bs!859101 () Bool)

(assert (= bs!859101 (and b!4524381 d!1394488)))

(assert (=> bs!859101 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173188 lambda!173131))))

(assert (=> bs!859099 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700758) (= lambda!173188 lambda!173165))))

(declare-fun bs!859102 () Bool)

(assert (= bs!859102 (and b!4524381 b!4523867)))

(assert (=> bs!859102 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700482) (= lambda!173188 lambda!173124))))

(declare-fun bs!859103 () Bool)

(assert (= bs!859103 (and b!4524381 d!1394680)))

(assert (=> bs!859103 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700755) (= lambda!173188 lambda!173167))))

(declare-fun bs!859104 () Bool)

(assert (= bs!859104 (and b!4524381 b!4524064)))

(assert (=> bs!859104 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173188 lambda!173134))))

(declare-fun bs!859105 () Bool)

(assert (= bs!859105 (and b!4524381 b!4522898)))

(assert (=> bs!859105 (not (= lambda!173188 lambda!172949))))

(declare-fun bs!859106 () Bool)

(assert (= bs!859106 (and b!4524381 b!4524295)))

(assert (=> bs!859106 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173188 lambda!173170))))

(declare-fun bs!859107 () Bool)

(assert (= bs!859107 (and b!4524381 b!4523254)))

(assert (=> bs!859107 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699771) (= lambda!173188 lambda!173063))))

(declare-fun bs!859108 () Bool)

(assert (= bs!859108 (and b!4524381 d!1394704)))

(assert (=> bs!859108 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700803) (= lambda!173188 lambda!173176))))

(declare-fun bs!859109 () Bool)

(assert (= bs!859109 (and b!4524381 d!1394016)))

(assert (=> bs!859109 (not (= lambda!173188 lambda!173040))))

(declare-fun bs!859110 () Bool)

(assert (= bs!859110 (and b!4524381 b!4524378)))

(assert (=> bs!859110 (= lambda!173188 lambda!173187)))

(assert (=> bs!859102 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173188 lambda!173123))))

(declare-fun bs!859111 () Bool)

(assert (= bs!859111 (and b!4524381 b!4523864)))

(assert (=> bs!859111 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173188 lambda!173122))))

(declare-fun bs!859112 () Bool)

(assert (= bs!859112 (and b!4524381 b!4524269)))

(assert (=> bs!859112 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173188 lambda!173161))))

(declare-fun bs!859113 () Bool)

(assert (= bs!859113 (and b!4524381 b!4523505)))

(assert (=> bs!859113 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173188 lambda!173099))))

(declare-fun bs!859114 () Bool)

(assert (= bs!859114 (and b!4524381 b!4524298)))

(assert (=> bs!859114 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173188 lambda!173172))))

(declare-fun bs!859115 () Bool)

(assert (= bs!859115 (and b!4524381 d!1394436)))

(assert (=> bs!859115 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700479) (= lambda!173188 lambda!173125))))

(declare-fun bs!859116 () Bool)

(assert (= bs!859116 (and b!4524381 d!1393892)))

(assert (=> bs!859116 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699952) (= lambda!173188 lambda!172998))))

(assert (=> bs!859114 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700806) (= lambda!173188 lambda!173174))))

(assert (=> bs!859113 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700295) (= lambda!173188 lambda!173102))))

(declare-fun bs!859117 () Bool)

(assert (= bs!859117 (and b!4524381 d!1394542)))

(assert (=> bs!859117 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700611) (= lambda!173188 lambda!173138))))

(declare-fun bs!859118 () Bool)

(assert (= bs!859118 (and b!4524381 b!4523257)))

(assert (=> bs!859118 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700142) (= lambda!173188 lambda!173067))))

(assert (=> bs!859104 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700614) (= lambda!173188 lambda!173135))))

(declare-fun bs!859119 () Bool)

(assert (= bs!859119 (and b!4524381 d!1394662)))

(assert (=> bs!859119 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699955) (= lambda!173188 lambda!173158))))

(declare-fun bs!859120 () Bool)

(assert (= bs!859120 (and b!4524381 b!4523502)))

(assert (=> bs!859120 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173188 lambda!173098))))

(assert (=> bs!859118 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699771) (= lambda!173188 lambda!173066))))

(declare-fun bs!859121 () Bool)

(assert (= bs!859121 (and b!4524381 d!1394074)))

(assert (=> bs!859121 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700139) (= lambda!173188 lambda!173069))))

(declare-fun bs!859122 () Bool)

(assert (= bs!859122 (and b!4524381 b!4523060)))

(assert (=> bs!859122 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699770) (= lambda!173188 lambda!172996))))

(assert (=> bs!859122 (= (= (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1699955) (= lambda!173188 lambda!172997))))

(assert (=> b!4524381 true))

(declare-fun lambda!173189 () Int)

(assert (=> bs!859094 (not (= lambda!173189 lambda!173145))))

(declare-fun lt!1700874 () ListMap!3605)

(assert (=> bs!859095 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173189 lambda!173133))))

(assert (=> bs!859096 (= (= lt!1700874 lt!1700292) (= lambda!173189 lambda!173103))))

(assert (=> bs!859097 (= (= lt!1700874 lt!1699770) (= lambda!173189 lambda!172995))))

(assert (=> bs!859098 (= (= lt!1700874 lt!1700142) (= lambda!173189 lambda!173115))))

(assert (=> bs!859099 (= (= lt!1700874 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173189 lambda!173163))))

(assert (=> bs!859101 (= (= lt!1700874 lt!1699770) (= lambda!173189 lambda!173131))))

(assert (=> bs!859099 (= (= lt!1700874 lt!1700758) (= lambda!173189 lambda!173165))))

(assert (=> bs!859102 (= (= lt!1700874 lt!1700482) (= lambda!173189 lambda!173124))))

(assert (=> bs!859103 (= (= lt!1700874 lt!1700755) (= lambda!173189 lambda!173167))))

(assert (=> bs!859104 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173189 lambda!173134))))

(assert (=> bs!859105 (not (= lambda!173189 lambda!172949))))

(assert (=> bs!859106 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173189 lambda!173170))))

(assert (=> bs!859107 (= (= lt!1700874 lt!1699771) (= lambda!173189 lambda!173063))))

(assert (=> bs!859108 (= (= lt!1700874 lt!1700803) (= lambda!173189 lambda!173176))))

(assert (=> bs!859109 (not (= lambda!173189 lambda!173040))))

(assert (=> bs!859110 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173189 lambda!173187))))

(assert (=> bs!859102 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173189 lambda!173123))))

(assert (=> bs!859111 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173189 lambda!173122))))

(assert (=> bs!859112 (= (= lt!1700874 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173189 lambda!173161))))

(assert (=> bs!859113 (= (= lt!1700874 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173189 lambda!173099))))

(assert (=> bs!859114 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173189 lambda!173172))))

(assert (=> bs!859115 (= (= lt!1700874 lt!1700479) (= lambda!173189 lambda!173125))))

(assert (=> bs!859116 (= (= lt!1700874 lt!1699952) (= lambda!173189 lambda!172998))))

(assert (=> bs!859114 (= (= lt!1700874 lt!1700806) (= lambda!173189 lambda!173174))))

(assert (=> bs!859113 (= (= lt!1700874 lt!1700295) (= lambda!173189 lambda!173102))))

(assert (=> bs!859117 (= (= lt!1700874 lt!1700611) (= lambda!173189 lambda!173138))))

(assert (=> bs!859118 (= (= lt!1700874 lt!1700142) (= lambda!173189 lambda!173067))))

(assert (=> bs!859104 (= (= lt!1700874 lt!1700614) (= lambda!173189 lambda!173135))))

(assert (=> b!4524381 (= (= lt!1700874 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173189 lambda!173188))))

(assert (=> bs!859119 (= (= lt!1700874 lt!1699955) (= lambda!173189 lambda!173158))))

(assert (=> bs!859120 (= (= lt!1700874 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173189 lambda!173098))))

(assert (=> bs!859118 (= (= lt!1700874 lt!1699771) (= lambda!173189 lambda!173066))))

(assert (=> bs!859121 (= (= lt!1700874 lt!1700139) (= lambda!173189 lambda!173069))))

(assert (=> bs!859122 (= (= lt!1700874 lt!1699770) (= lambda!173189 lambda!172996))))

(assert (=> bs!859122 (= (= lt!1700874 lt!1699955) (= lambda!173189 lambda!172997))))

(assert (=> b!4524381 true))

(declare-fun bs!859124 () Bool)

(declare-fun d!1394760 () Bool)

(assert (= bs!859124 (and d!1394760 d!1394582)))

(declare-fun lambda!173190 () Int)

(assert (=> bs!859124 (not (= lambda!173190 lambda!173145))))

(declare-fun bs!859125 () Bool)

(assert (= bs!859125 (and d!1394760 b!4524061)))

(declare-fun lt!1700871 () ListMap!3605)

(assert (=> bs!859125 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173190 lambda!173133))))

(declare-fun bs!859126 () Bool)

(assert (= bs!859126 (and d!1394760 d!1394204)))

(assert (=> bs!859126 (= (= lt!1700871 lt!1700292) (= lambda!173190 lambda!173103))))

(declare-fun bs!859127 () Bool)

(assert (= bs!859127 (and d!1394760 b!4523057)))

(assert (=> bs!859127 (= (= lt!1700871 lt!1699770) (= lambda!173190 lambda!172995))))

(declare-fun bs!859128 () Bool)

(assert (= bs!859128 (and d!1394760 d!1394260)))

(assert (=> bs!859128 (= (= lt!1700871 lt!1700142) (= lambda!173190 lambda!173115))))

(declare-fun bs!859129 () Bool)

(assert (= bs!859129 (and d!1394760 b!4524272)))

(assert (=> bs!859129 (= (= lt!1700871 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173190 lambda!173163))))

(declare-fun bs!859130 () Bool)

(assert (= bs!859130 (and d!1394760 d!1394488)))

(assert (=> bs!859130 (= (= lt!1700871 lt!1699770) (= lambda!173190 lambda!173131))))

(assert (=> bs!859129 (= (= lt!1700871 lt!1700758) (= lambda!173190 lambda!173165))))

(declare-fun bs!859131 () Bool)

(assert (= bs!859131 (and d!1394760 b!4523867)))

(assert (=> bs!859131 (= (= lt!1700871 lt!1700482) (= lambda!173190 lambda!173124))))

(declare-fun bs!859132 () Bool)

(assert (= bs!859132 (and d!1394760 d!1394680)))

(assert (=> bs!859132 (= (= lt!1700871 lt!1700755) (= lambda!173190 lambda!173167))))

(declare-fun bs!859133 () Bool)

(assert (= bs!859133 (and d!1394760 b!4524064)))

(assert (=> bs!859133 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173190 lambda!173134))))

(declare-fun bs!859134 () Bool)

(assert (= bs!859134 (and d!1394760 b!4522898)))

(assert (=> bs!859134 (not (= lambda!173190 lambda!172949))))

(declare-fun bs!859135 () Bool)

(assert (= bs!859135 (and d!1394760 b!4524295)))

(assert (=> bs!859135 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173190 lambda!173170))))

(declare-fun bs!859136 () Bool)

(assert (= bs!859136 (and d!1394760 b!4523254)))

(assert (=> bs!859136 (= (= lt!1700871 lt!1699771) (= lambda!173190 lambda!173063))))

(declare-fun bs!859137 () Bool)

(assert (= bs!859137 (and d!1394760 d!1394704)))

(assert (=> bs!859137 (= (= lt!1700871 lt!1700803) (= lambda!173190 lambda!173176))))

(declare-fun bs!859138 () Bool)

(assert (= bs!859138 (and d!1394760 d!1394016)))

(assert (=> bs!859138 (not (= lambda!173190 lambda!173040))))

(declare-fun bs!859139 () Bool)

(assert (= bs!859139 (and d!1394760 b!4524378)))

(assert (=> bs!859139 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173190 lambda!173187))))

(assert (=> bs!859131 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173190 lambda!173123))))

(declare-fun bs!859140 () Bool)

(assert (= bs!859140 (and d!1394760 b!4523864)))

(assert (=> bs!859140 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173190 lambda!173122))))

(declare-fun bs!859141 () Bool)

(assert (= bs!859141 (and d!1394760 b!4524269)))

(assert (=> bs!859141 (= (= lt!1700871 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173190 lambda!173161))))

(declare-fun bs!859142 () Bool)

(assert (= bs!859142 (and d!1394760 b!4523505)))

(assert (=> bs!859142 (= (= lt!1700871 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173190 lambda!173099))))

(declare-fun bs!859143 () Bool)

(assert (= bs!859143 (and d!1394760 b!4524298)))

(assert (=> bs!859143 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173190 lambda!173172))))

(declare-fun bs!859144 () Bool)

(assert (= bs!859144 (and d!1394760 d!1394436)))

(assert (=> bs!859144 (= (= lt!1700871 lt!1700479) (= lambda!173190 lambda!173125))))

(declare-fun bs!859145 () Bool)

(assert (= bs!859145 (and d!1394760 d!1393892)))

(assert (=> bs!859145 (= (= lt!1700871 lt!1699952) (= lambda!173190 lambda!172998))))

(assert (=> bs!859143 (= (= lt!1700871 lt!1700806) (= lambda!173190 lambda!173174))))

(declare-fun bs!859146 () Bool)

(assert (= bs!859146 (and d!1394760 b!4524381)))

(assert (=> bs!859146 (= (= lt!1700871 lt!1700874) (= lambda!173190 lambda!173189))))

(assert (=> bs!859142 (= (= lt!1700871 lt!1700295) (= lambda!173190 lambda!173102))))

(declare-fun bs!859147 () Bool)

(assert (= bs!859147 (and d!1394760 d!1394542)))

(assert (=> bs!859147 (= (= lt!1700871 lt!1700611) (= lambda!173190 lambda!173138))))

(declare-fun bs!859148 () Bool)

(assert (= bs!859148 (and d!1394760 b!4523257)))

(assert (=> bs!859148 (= (= lt!1700871 lt!1700142) (= lambda!173190 lambda!173067))))

(assert (=> bs!859133 (= (= lt!1700871 lt!1700614) (= lambda!173190 lambda!173135))))

(assert (=> bs!859146 (= (= lt!1700871 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173190 lambda!173188))))

(declare-fun bs!859149 () Bool)

(assert (= bs!859149 (and d!1394760 d!1394662)))

(assert (=> bs!859149 (= (= lt!1700871 lt!1699955) (= lambda!173190 lambda!173158))))

(declare-fun bs!859150 () Bool)

(assert (= bs!859150 (and d!1394760 b!4523502)))

(assert (=> bs!859150 (= (= lt!1700871 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173190 lambda!173098))))

(assert (=> bs!859148 (= (= lt!1700871 lt!1699771) (= lambda!173190 lambda!173066))))

(declare-fun bs!859151 () Bool)

(assert (= bs!859151 (and d!1394760 d!1394074)))

(assert (=> bs!859151 (= (= lt!1700871 lt!1700139) (= lambda!173190 lambda!173069))))

(declare-fun bs!859152 () Bool)

(assert (= bs!859152 (and d!1394760 b!4523060)))

(assert (=> bs!859152 (= (= lt!1700871 lt!1699770) (= lambda!173190 lambda!172996))))

(assert (=> bs!859152 (= (= lt!1700871 lt!1699955) (= lambda!173190 lambda!172997))))

(assert (=> d!1394760 true))

(declare-fun c!772269 () Bool)

(declare-fun call!315282 () Bool)

(declare-fun bm!315276 () Bool)

(assert (=> bm!315276 (= call!315282 (forall!10280 (ite c!772269 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (ite c!772269 lambda!173187 lambda!173189)))))

(declare-fun e!2818929 () ListMap!3605)

(assert (=> b!4524378 (= e!2818929 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))

(declare-fun lt!1700881 () Unit!95506)

(declare-fun call!315281 () Unit!95506)

(assert (=> b!4524378 (= lt!1700881 call!315281)))

(declare-fun call!315283 () Bool)

(assert (=> b!4524378 call!315283))

(declare-fun lt!1700878 () Unit!95506)

(assert (=> b!4524378 (= lt!1700878 lt!1700881)))

(assert (=> b!4524378 call!315282))

(declare-fun lt!1700883 () Unit!95506)

(declare-fun Unit!95770 () Unit!95506)

(assert (=> b!4524378 (= lt!1700883 Unit!95770)))

(declare-fun bm!315277 () Bool)

(assert (=> bm!315277 (= call!315283 (forall!10280 (ite c!772269 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (_2!28848 (h!56528 (toList!4344 lm!1477)))) (ite c!772269 lambda!173187 lambda!173189)))))

(declare-fun b!4524379 () Bool)

(declare-fun res!1883512 () Bool)

(declare-fun e!2818927 () Bool)

(assert (=> b!4524379 (=> (not res!1883512) (not e!2818927))))

(assert (=> b!4524379 (= res!1883512 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173190))))

(declare-fun b!4524380 () Bool)

(declare-fun e!2818928 () Bool)

(assert (=> b!4524380 (= e!2818928 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173189))))

(declare-fun bm!315278 () Bool)

(assert (=> bm!315278 (= call!315281 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> b!4524381 (= e!2818929 lt!1700874)))

(declare-fun lt!1700873 () ListMap!3605)

(assert (=> b!4524381 (= lt!1700873 (+!1553 (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (=> b!4524381 (= lt!1700874 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))) (+!1553 (extractMap!1224 (t!357755 (toList!4344 lm!1477))) (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))))

(declare-fun lt!1700882 () Unit!95506)

(assert (=> b!4524381 (= lt!1700882 call!315281)))

(assert (=> b!4524381 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173188)))

(declare-fun lt!1700884 () Unit!95506)

(assert (=> b!4524381 (= lt!1700884 lt!1700882)))

(assert (=> b!4524381 (forall!10280 (toList!4343 lt!1700873) lambda!173189)))

(declare-fun lt!1700865 () Unit!95506)

(declare-fun Unit!95771 () Unit!95506)

(assert (=> b!4524381 (= lt!1700865 Unit!95771)))

(assert (=> b!4524381 call!315282))

(declare-fun lt!1700876 () Unit!95506)

(declare-fun Unit!95772 () Unit!95506)

(assert (=> b!4524381 (= lt!1700876 Unit!95772)))

(declare-fun lt!1700864 () Unit!95506)

(declare-fun Unit!95773 () Unit!95506)

(assert (=> b!4524381 (= lt!1700864 Unit!95773)))

(declare-fun lt!1700867 () Unit!95506)

(assert (=> b!4524381 (= lt!1700867 (forallContained!2532 (toList!4343 lt!1700873) lambda!173189 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(assert (=> b!4524381 (contains!13409 lt!1700873 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(declare-fun lt!1700866 () Unit!95506)

(declare-fun Unit!95774 () Unit!95506)

(assert (=> b!4524381 (= lt!1700866 Unit!95774)))

(assert (=> b!4524381 (contains!13409 lt!1700874 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))))))

(declare-fun lt!1700879 () Unit!95506)

(declare-fun Unit!95775 () Unit!95506)

(assert (=> b!4524381 (= lt!1700879 Unit!95775)))

(assert (=> b!4524381 call!315283))

(declare-fun lt!1700868 () Unit!95506)

(declare-fun Unit!95776 () Unit!95506)

(assert (=> b!4524381 (= lt!1700868 Unit!95776)))

(assert (=> b!4524381 (forall!10280 (toList!4343 lt!1700873) lambda!173189)))

(declare-fun lt!1700870 () Unit!95506)

(declare-fun Unit!95777 () Unit!95506)

(assert (=> b!4524381 (= lt!1700870 Unit!95777)))

(declare-fun lt!1700880 () Unit!95506)

(declare-fun Unit!95778 () Unit!95506)

(assert (=> b!4524381 (= lt!1700880 Unit!95778)))

(declare-fun lt!1700875 () Unit!95506)

(assert (=> b!4524381 (= lt!1700875 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))) lt!1700874 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))))

(assert (=> b!4524381 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173189)))

(declare-fun lt!1700869 () Unit!95506)

(assert (=> b!4524381 (= lt!1700869 lt!1700875)))

(assert (=> b!4524381 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lambda!173189)))

(declare-fun lt!1700872 () Unit!95506)

(declare-fun Unit!95779 () Unit!95506)

(assert (=> b!4524381 (= lt!1700872 Unit!95779)))

(declare-fun res!1883510 () Bool)

(assert (=> b!4524381 (= res!1883510 (forall!10280 (_2!28848 (h!56528 (toList!4344 lm!1477))) lambda!173189))))

(assert (=> b!4524381 (=> (not res!1883510) (not e!2818928))))

(assert (=> b!4524381 e!2818928))

(declare-fun lt!1700877 () Unit!95506)

(declare-fun Unit!95780 () Unit!95506)

(assert (=> b!4524381 (= lt!1700877 Unit!95780)))

(assert (=> d!1394760 e!2818927))

(declare-fun res!1883511 () Bool)

(assert (=> d!1394760 (=> (not res!1883511) (not e!2818927))))

(assert (=> d!1394760 (= res!1883511 (forall!10280 (_2!28848 (h!56528 (toList!4344 lm!1477))) lambda!173190))))

(assert (=> d!1394760 (= lt!1700871 e!2818929)))

(assert (=> d!1394760 (= c!772269 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> d!1394760 (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477))))))

(assert (=> d!1394760 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lm!1477))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) lt!1700871)))

(declare-fun b!4524382 () Bool)

(assert (=> b!4524382 (= e!2818927 (invariantList!1023 (toList!4343 lt!1700871)))))

(assert (= (and d!1394760 c!772269) b!4524378))

(assert (= (and d!1394760 (not c!772269)) b!4524381))

(assert (= (and b!4524381 res!1883510) b!4524380))

(assert (= (or b!4524378 b!4524381) bm!315276))

(assert (= (or b!4524378 b!4524381) bm!315277))

(assert (= (or b!4524378 b!4524381) bm!315278))

(assert (= (and d!1394760 res!1883511) b!4524379))

(assert (= (and b!4524379 res!1883512) b!4524382))

(declare-fun m!5275953 () Bool)

(assert (=> b!4524381 m!5275953))

(declare-fun m!5275955 () Bool)

(assert (=> b!4524381 m!5275955))

(declare-fun m!5275957 () Bool)

(assert (=> b!4524381 m!5275957))

(declare-fun m!5275959 () Bool)

(assert (=> b!4524381 m!5275959))

(assert (=> b!4524381 m!5275959))

(declare-fun m!5275961 () Bool)

(assert (=> b!4524381 m!5275961))

(assert (=> b!4524381 m!5275961))

(declare-fun m!5275963 () Bool)

(assert (=> b!4524381 m!5275963))

(assert (=> b!4524381 m!5273209))

(declare-fun m!5275965 () Bool)

(assert (=> b!4524381 m!5275965))

(assert (=> b!4524381 m!5273209))

(assert (=> b!4524381 m!5275955))

(declare-fun m!5275967 () Bool)

(assert (=> b!4524381 m!5275967))

(declare-fun m!5275969 () Bool)

(assert (=> b!4524381 m!5275969))

(declare-fun m!5275971 () Bool)

(assert (=> b!4524381 m!5275971))

(declare-fun m!5275973 () Bool)

(assert (=> b!4524379 m!5275973))

(assert (=> b!4524380 m!5275959))

(declare-fun m!5275975 () Bool)

(assert (=> bm!315277 m!5275975))

(assert (=> bm!315278 m!5273209))

(declare-fun m!5275977 () Bool)

(assert (=> bm!315278 m!5275977))

(declare-fun m!5275979 () Bool)

(assert (=> bm!315276 m!5275979))

(declare-fun m!5275981 () Bool)

(assert (=> d!1394760 m!5275981))

(assert (=> d!1394760 m!5274019))

(declare-fun m!5275983 () Bool)

(assert (=> b!4524382 m!5275983))

(assert (=> b!4523305 d!1394760))

(assert (=> b!4523305 d!1394104))

(declare-fun d!1394784 () Bool)

(declare-fun res!1883528 () Bool)

(declare-fun e!2818945 () Bool)

(assert (=> d!1394784 (=> res!1883528 e!2818945)))

(assert (=> d!1394784 (= res!1883528 ((_ is Nil!50668) newBucket!178))))

(assert (=> d!1394784 (= (forall!10280 newBucket!178 lambda!173040) e!2818945)))

(declare-fun b!4524398 () Bool)

(declare-fun e!2818946 () Bool)

(assert (=> b!4524398 (= e!2818945 e!2818946)))

(declare-fun res!1883529 () Bool)

(assert (=> b!4524398 (=> (not res!1883529) (not e!2818946))))

(assert (=> b!4524398 (= res!1883529 (dynLambda!21172 lambda!173040 (h!56527 newBucket!178)))))

(declare-fun b!4524399 () Bool)

(assert (=> b!4524399 (= e!2818946 (forall!10280 (t!357754 newBucket!178) lambda!173040))))

(assert (= (and d!1394784 (not res!1883528)) b!4524398))

(assert (= (and b!4524398 res!1883529) b!4524399))

(declare-fun b_lambda!155429 () Bool)

(assert (=> (not b_lambda!155429) (not b!4524398)))

(declare-fun m!5275985 () Bool)

(assert (=> b!4524398 m!5275985))

(declare-fun m!5275987 () Bool)

(assert (=> b!4524399 m!5275987))

(assert (=> d!1394016 d!1394784))

(assert (=> d!1393890 d!1394426))

(assert (=> d!1393890 d!1394278))

(assert (=> b!4523322 d!1394652))

(assert (=> b!4523322 d!1394654))

(declare-fun d!1394786 () Bool)

(assert (=> d!1394786 (= (invariantList!1023 (toList!4343 lt!1700098)) (noDuplicatedKeys!264 (toList!4343 lt!1700098)))))

(declare-fun bs!859153 () Bool)

(assert (= bs!859153 d!1394786))

(declare-fun m!5275989 () Bool)

(assert (=> bs!859153 m!5275989))

(assert (=> d!1394024 d!1394786))

(declare-fun d!1394788 () Bool)

(declare-fun res!1883530 () Bool)

(declare-fun e!2818947 () Bool)

(assert (=> d!1394788 (=> res!1883530 e!2818947)))

(assert (=> d!1394788 (= res!1883530 ((_ is Nil!50669) (toList!4344 (+!1552 lt!1699792 lt!1699794))))))

(assert (=> d!1394788 (= (forall!10281 (toList!4344 (+!1552 lt!1699792 lt!1699794)) lambda!173050) e!2818947)))

(declare-fun b!4524400 () Bool)

(declare-fun e!2818948 () Bool)

(assert (=> b!4524400 (= e!2818947 e!2818948)))

(declare-fun res!1883531 () Bool)

(assert (=> b!4524400 (=> (not res!1883531) (not e!2818948))))

(assert (=> b!4524400 (= res!1883531 (dynLambda!21171 lambda!173050 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))))))

(declare-fun b!4524401 () Bool)

(assert (=> b!4524401 (= e!2818948 (forall!10281 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))) lambda!173050))))

(assert (= (and d!1394788 (not res!1883530)) b!4524400))

(assert (= (and b!4524400 res!1883531) b!4524401))

(declare-fun b_lambda!155431 () Bool)

(assert (=> (not b_lambda!155431) (not b!4524400)))

(declare-fun m!5275991 () Bool)

(assert (=> b!4524400 m!5275991))

(declare-fun m!5275993 () Bool)

(assert (=> b!4524401 m!5275993))

(assert (=> d!1394024 d!1394788))

(declare-fun d!1394790 () Bool)

(declare-fun lt!1700889 () Bool)

(assert (=> d!1394790 (= lt!1700889 (select (content!8376 e!2818234) key!3287))))

(declare-fun e!2818949 () Bool)

(assert (=> d!1394790 (= lt!1700889 e!2818949)))

(declare-fun res!1883532 () Bool)

(assert (=> d!1394790 (=> (not res!1883532) (not e!2818949))))

(assert (=> d!1394790 (= res!1883532 ((_ is Cons!50671) e!2818234))))

(assert (=> d!1394790 (= (contains!13413 e!2818234 key!3287) lt!1700889)))

(declare-fun b!4524402 () Bool)

(declare-fun e!2818950 () Bool)

(assert (=> b!4524402 (= e!2818949 e!2818950)))

(declare-fun res!1883533 () Bool)

(assert (=> b!4524402 (=> res!1883533 e!2818950)))

(assert (=> b!4524402 (= res!1883533 (= (h!56532 e!2818234) key!3287))))

(declare-fun b!4524403 () Bool)

(assert (=> b!4524403 (= e!2818950 (contains!13413 (t!357757 e!2818234) key!3287))))

(assert (= (and d!1394790 res!1883532) b!4524402))

(assert (= (and b!4524402 (not res!1883533)) b!4524403))

(declare-fun m!5275995 () Bool)

(assert (=> d!1394790 m!5275995))

(declare-fun m!5275997 () Bool)

(assert (=> d!1394790 m!5275997))

(declare-fun m!5275999 () Bool)

(assert (=> b!4524403 m!5275999))

(assert (=> bm!315163 d!1394790))

(assert (=> b!4523138 d!1394114))

(declare-fun bs!859154 () Bool)

(declare-fun b!4524404 () Bool)

(assert (= bs!859154 (and b!4524404 b!4524313)))

(declare-fun lambda!173191 () Int)

(assert (=> bs!859154 (= (= (t!357754 (toList!4343 lt!1699768)) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (= lambda!173191 lambda!173178))))

(declare-fun bs!859155 () Bool)

(assert (= bs!859155 (and b!4524404 b!4523892)))

(assert (=> bs!859155 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 lt!1699768)) (= lambda!173191 lambda!173127))))

(declare-fun bs!859156 () Bool)

(assert (= bs!859156 (and b!4524404 b!4524321)))

(assert (=> bs!859156 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173191 lambda!173180))))

(declare-fun bs!859157 () Bool)

(assert (= bs!859157 (and b!4524404 b!4523453)))

(assert (=> bs!859157 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 lt!1699778)) (= lambda!173191 lambda!173086))))

(declare-fun bs!859158 () Bool)

(assert (= bs!859158 (and b!4524404 b!4524107)))

(assert (=> bs!859158 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 lt!1700118)) (= lambda!173191 lambda!173143))))

(declare-fun bs!859159 () Bool)

(assert (= bs!859159 (and b!4524404 b!4524203)))

(assert (=> bs!859159 (= (= (t!357754 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699778))) (= lambda!173191 lambda!173154))))

(declare-fun bs!859160 () Bool)

(assert (= bs!859160 (and b!4524404 b!4524316)))

(assert (=> bs!859160 (= (= (t!357754 (toList!4343 lt!1699768)) (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))) (= lambda!173191 lambda!173179))))

(declare-fun bs!859161 () Bool)

(assert (= bs!859161 (and b!4524404 b!4524211)))

(assert (=> bs!859161 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 lt!1699778)) (= lambda!173191 lambda!173156))))

(declare-fun bs!859162 () Bool)

(assert (= bs!859162 (and b!4524404 b!4524206)))

(assert (=> bs!859162 (= (= (t!357754 (toList!4343 lt!1699768)) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173191 lambda!173155))))

(declare-fun bs!859163 () Bool)

(assert (= bs!859163 (and b!4524404 b!4523444)))

(assert (=> bs!859163 (= (= (t!357754 (toList!4343 lt!1699768)) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173191 lambda!173084))))

(assert (=> b!4524404 true))

(declare-fun bs!859164 () Bool)

(declare-fun b!4524407 () Bool)

(assert (= bs!859164 (and b!4524407 b!4524313)))

(declare-fun lambda!173192 () Int)

(assert (=> bs!859164 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (= lambda!173192 lambda!173178))))

(declare-fun bs!859165 () Bool)

(assert (= bs!859165 (and b!4524407 b!4524321)))

(assert (=> bs!859165 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173192 lambda!173180))))

(declare-fun bs!859166 () Bool)

(assert (= bs!859166 (and b!4524407 b!4523453)))

(assert (=> bs!859166 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 lt!1699778)) (= lambda!173192 lambda!173086))))

(declare-fun bs!859167 () Bool)

(assert (= bs!859167 (and b!4524407 b!4524107)))

(assert (=> bs!859167 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 lt!1700118)) (= lambda!173192 lambda!173143))))

(declare-fun bs!859168 () Bool)

(assert (= bs!859168 (and b!4524407 b!4524203)))

(assert (=> bs!859168 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (t!357754 (toList!4343 lt!1699778))) (= lambda!173192 lambda!173154))))

(declare-fun bs!859169 () Bool)

(assert (= bs!859169 (and b!4524407 b!4523892)))

(assert (=> bs!859169 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 lt!1699768)) (= lambda!173192 lambda!173127))))

(declare-fun bs!859170 () Bool)

(assert (= bs!859170 (and b!4524407 b!4524404)))

(assert (=> bs!859170 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (t!357754 (toList!4343 lt!1699768))) (= lambda!173192 lambda!173191))))

(declare-fun bs!859171 () Bool)

(assert (= bs!859171 (and b!4524407 b!4524316)))

(assert (=> bs!859171 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))) (= lambda!173192 lambda!173179))))

(declare-fun bs!859172 () Bool)

(assert (= bs!859172 (and b!4524407 b!4524211)))

(assert (=> bs!859172 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 lt!1699778)) (= lambda!173192 lambda!173156))))

(declare-fun bs!859173 () Bool)

(assert (= bs!859173 (and b!4524407 b!4524206)))

(assert (=> bs!859173 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173192 lambda!173155))))

(declare-fun bs!859174 () Bool)

(assert (= bs!859174 (and b!4524407 b!4523444)))

(assert (=> bs!859174 (= (= (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768))) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173192 lambda!173084))))

(assert (=> b!4524407 true))

(declare-fun bs!859175 () Bool)

(declare-fun b!4524412 () Bool)

(assert (= bs!859175 (and b!4524412 b!4524313)))

(declare-fun lambda!173193 () Int)

(assert (=> bs!859175 (= (= (toList!4343 lt!1699768) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))))) (= lambda!173193 lambda!173178))))

(declare-fun bs!859176 () Bool)

(assert (= bs!859176 (and b!4524412 b!4524321)))

(assert (=> bs!859176 (= (= (toList!4343 lt!1699768) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173193 lambda!173180))))

(declare-fun bs!859177 () Bool)

(assert (= bs!859177 (and b!4524412 b!4523453)))

(assert (=> bs!859177 (= (= (toList!4343 lt!1699768) (toList!4343 lt!1699778)) (= lambda!173193 lambda!173086))))

(declare-fun bs!859178 () Bool)

(assert (= bs!859178 (and b!4524412 b!4524407)))

(assert (=> bs!859178 (= (= (toList!4343 lt!1699768) (Cons!50668 (h!56527 (toList!4343 lt!1699768)) (t!357754 (toList!4343 lt!1699768)))) (= lambda!173193 lambda!173192))))

(declare-fun bs!859179 () Bool)

(assert (= bs!859179 (and b!4524412 b!4524107)))

(assert (=> bs!859179 (= (= (toList!4343 lt!1699768) (toList!4343 lt!1700118)) (= lambda!173193 lambda!173143))))

(declare-fun bs!859180 () Bool)

(assert (= bs!859180 (and b!4524412 b!4524203)))

(assert (=> bs!859180 (= (= (toList!4343 lt!1699768) (t!357754 (toList!4343 lt!1699778))) (= lambda!173193 lambda!173154))))

(declare-fun bs!859181 () Bool)

(assert (= bs!859181 (and b!4524412 b!4523892)))

(assert (=> bs!859181 (= lambda!173193 lambda!173127)))

(declare-fun bs!859182 () Bool)

(assert (= bs!859182 (and b!4524412 b!4524404)))

(assert (=> bs!859182 (= (= (toList!4343 lt!1699768) (t!357754 (toList!4343 lt!1699768))) (= lambda!173193 lambda!173191))))

(declare-fun bs!859183 () Bool)

(assert (= bs!859183 (and b!4524412 b!4524316)))

(assert (=> bs!859183 (= (= (toList!4343 lt!1699768) (Cons!50668 (h!56527 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (t!357754 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))))) (= lambda!173193 lambda!173179))))

(declare-fun bs!859184 () Bool)

(assert (= bs!859184 (and b!4524412 b!4524211)))

(assert (=> bs!859184 (= (= (toList!4343 lt!1699768) (toList!4343 lt!1699778)) (= lambda!173193 lambda!173156))))

(declare-fun bs!859185 () Bool)

(assert (= bs!859185 (and b!4524412 b!4524206)))

(assert (=> bs!859185 (= (= (toList!4343 lt!1699768) (Cons!50668 (h!56527 (toList!4343 lt!1699778)) (t!357754 (toList!4343 lt!1699778)))) (= lambda!173193 lambda!173155))))

(declare-fun bs!859186 () Bool)

(assert (= bs!859186 (and b!4524412 b!4523444)))

(assert (=> bs!859186 (= (= (toList!4343 lt!1699768) (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lm!1477))))) (= lambda!173193 lambda!173084))))

(assert (=> b!4524412 true))

(declare-fun bs!859187 () Bool)

(declare-fun b!4524410 () Bool)

(assert (= bs!859187 (and b!4524410 b!4524209)))

(declare-fun lambda!173195 () Int)

(assert (=> bs!859187 (= lambda!173195 lambda!173157)))

(declare-fun bs!859188 () Bool)

(assert (= bs!859188 (and b!4524410 b!4523454)))

(assert (=> bs!859188 (= lambda!173195 lambda!173087)))

(declare-fun bs!859189 () Bool)

(assert (= bs!859189 (and b!4524410 b!4524108)))

(assert (=> bs!859189 (= lambda!173195 lambda!173144)))

(declare-fun bs!859190 () Bool)

(assert (= bs!859190 (and b!4524410 b!4523445)))

(assert (=> bs!859190 (= lambda!173195 lambda!173085)))

(declare-fun bs!859191 () Bool)

(assert (= bs!859191 (and b!4524410 b!4523893)))

(assert (=> bs!859191 (= lambda!173195 lambda!173128)))

(declare-fun bs!859192 () Bool)

(assert (= bs!859192 (and b!4524410 b!4524319)))

(assert (=> bs!859192 (= lambda!173195 lambda!173181)))

(assert (=> b!4524404 false))

(declare-fun lt!1700890 () Unit!95506)

(assert (=> b!4524404 (= lt!1700890 (forallContained!2534 (getKeysList!471 (t!357754 (toList!4343 lt!1699768))) lambda!173191 (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(declare-fun e!2818952 () Unit!95506)

(declare-fun Unit!95786 () Unit!95506)

(assert (=> b!4524404 (= e!2818952 Unit!95786)))

(declare-fun d!1394792 () Bool)

(declare-fun e!2818951 () Bool)

(assert (=> d!1394792 e!2818951))

(declare-fun res!1883535 () Bool)

(assert (=> d!1394792 (=> (not res!1883535) (not e!2818951))))

(declare-fun lt!1700896 () List!50795)

(assert (=> d!1394792 (= res!1883535 (noDuplicate!750 lt!1700896))))

(declare-fun e!2818953 () List!50795)

(assert (=> d!1394792 (= lt!1700896 e!2818953)))

(declare-fun c!772272 () Bool)

(assert (=> d!1394792 (= c!772272 ((_ is Cons!50668) (toList!4343 lt!1699768)))))

(assert (=> d!1394792 (invariantList!1023 (toList!4343 lt!1699768))))

(assert (=> d!1394792 (= (getKeysList!471 (toList!4343 lt!1699768)) lt!1700896)))

(declare-fun b!4524405 () Bool)

(assert (=> b!4524405 (= e!2818953 Nil!50671)))

(declare-fun b!4524406 () Bool)

(declare-fun res!1883536 () Bool)

(assert (=> b!4524406 (=> (not res!1883536) (not e!2818951))))

(assert (=> b!4524406 (= res!1883536 (= (length!356 lt!1700896) (length!357 (toList!4343 lt!1699768))))))

(assert (=> b!4524407 (= e!2818953 (Cons!50671 (_1!28847 (h!56527 (toList!4343 lt!1699768))) (getKeysList!471 (t!357754 (toList!4343 lt!1699768)))))))

(declare-fun c!772270 () Bool)

(assert (=> b!4524407 (= c!772270 (containsKey!1804 (t!357754 (toList!4343 lt!1699768)) (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(declare-fun lt!1700892 () Unit!95506)

(declare-fun e!2818954 () Unit!95506)

(assert (=> b!4524407 (= lt!1700892 e!2818954)))

(declare-fun c!772271 () Bool)

(assert (=> b!4524407 (= c!772271 (contains!13413 (getKeysList!471 (t!357754 (toList!4343 lt!1699768))) (_1!28847 (h!56527 (toList!4343 lt!1699768)))))))

(declare-fun lt!1700891 () Unit!95506)

(assert (=> b!4524407 (= lt!1700891 e!2818952)))

(declare-fun lt!1700895 () List!50795)

(assert (=> b!4524407 (= lt!1700895 (getKeysList!471 (t!357754 (toList!4343 lt!1699768))))))

(declare-fun lt!1700894 () Unit!95506)

(assert (=> b!4524407 (= lt!1700894 (lemmaForallContainsAddHeadPreserves!170 (t!357754 (toList!4343 lt!1699768)) lt!1700895 (h!56527 (toList!4343 lt!1699768))))))

(assert (=> b!4524407 (forall!10283 lt!1700895 lambda!173192)))

(declare-fun lt!1700893 () Unit!95506)

(assert (=> b!4524407 (= lt!1700893 lt!1700894)))

(declare-fun b!4524408 () Bool)

(assert (=> b!4524408 false))

(declare-fun Unit!95787 () Unit!95506)

(assert (=> b!4524408 (= e!2818954 Unit!95787)))

(declare-fun b!4524409 () Bool)

(declare-fun Unit!95788 () Unit!95506)

(assert (=> b!4524409 (= e!2818954 Unit!95788)))

(assert (=> b!4524410 (= e!2818951 (= (content!8376 lt!1700896) (content!8376 (map!11145 (toList!4343 lt!1699768) lambda!173195))))))

(declare-fun b!4524411 () Bool)

(declare-fun Unit!95789 () Unit!95506)

(assert (=> b!4524411 (= e!2818952 Unit!95789)))

(declare-fun res!1883534 () Bool)

(assert (=> b!4524412 (=> (not res!1883534) (not e!2818951))))

(assert (=> b!4524412 (= res!1883534 (forall!10283 lt!1700896 lambda!173193))))

(assert (= (and d!1394792 c!772272) b!4524407))

(assert (= (and d!1394792 (not c!772272)) b!4524405))

(assert (= (and b!4524407 c!772270) b!4524408))

(assert (= (and b!4524407 (not c!772270)) b!4524409))

(assert (= (and b!4524407 c!772271) b!4524404))

(assert (= (and b!4524407 (not c!772271)) b!4524411))

(assert (= (and d!1394792 res!1883535) b!4524406))

(assert (= (and b!4524406 res!1883536) b!4524412))

(assert (= (and b!4524412 res!1883534) b!4524410))

(declare-fun m!5276001 () Bool)

(assert (=> d!1394792 m!5276001))

(assert (=> d!1394792 m!5274195))

(assert (=> b!4524404 m!5274691))

(assert (=> b!4524404 m!5274691))

(declare-fun m!5276003 () Bool)

(assert (=> b!4524404 m!5276003))

(declare-fun m!5276005 () Bool)

(assert (=> b!4524410 m!5276005))

(declare-fun m!5276007 () Bool)

(assert (=> b!4524410 m!5276007))

(assert (=> b!4524410 m!5276007))

(declare-fun m!5276009 () Bool)

(assert (=> b!4524410 m!5276009))

(assert (=> b!4524407 m!5274691))

(declare-fun m!5276011 () Bool)

(assert (=> b!4524407 m!5276011))

(declare-fun m!5276013 () Bool)

(assert (=> b!4524407 m!5276013))

(assert (=> b!4524407 m!5274691))

(assert (=> b!4524407 m!5274693))

(declare-fun m!5276015 () Bool)

(assert (=> b!4524407 m!5276015))

(declare-fun m!5276017 () Bool)

(assert (=> b!4524406 m!5276017))

(assert (=> b!4524406 m!5274891))

(declare-fun m!5276019 () Bool)

(assert (=> b!4524412 m!5276019))

(assert (=> b!4523318 d!1394792))

(declare-fun d!1394794 () Bool)

(declare-fun c!772281 () Bool)

(assert (=> d!1394794 (= c!772281 ((_ is Nil!50669) (t!357755 (toList!4344 lm!1477))))))

(declare-fun e!2818965 () (InoxSet tuple2!51108))

(assert (=> d!1394794 (= (content!8375 (t!357755 (toList!4344 lm!1477))) e!2818965)))

(declare-fun b!4524435 () Bool)

(assert (=> b!4524435 (= e!2818965 ((as const (Array tuple2!51108 Bool)) false))))

(declare-fun b!4524436 () Bool)

(assert (=> b!4524436 (= e!2818965 ((_ map or) (store ((as const (Array tuple2!51108 Bool)) false) (h!56528 (t!357755 (toList!4344 lm!1477))) true) (content!8375 (t!357755 (t!357755 (toList!4344 lm!1477))))))))

(assert (= (and d!1394794 c!772281) b!4524435))

(assert (= (and d!1394794 (not c!772281)) b!4524436))

(declare-fun m!5276021 () Bool)

(assert (=> b!4524436 m!5276021))

(declare-fun m!5276023 () Bool)

(assert (=> b!4524436 m!5276023))

(assert (=> d!1393992 d!1394794))

(declare-fun d!1394796 () Bool)

(declare-fun res!1883543 () Bool)

(declare-fun e!2818966 () Bool)

(assert (=> d!1394796 (=> res!1883543 e!2818966)))

(assert (=> d!1394796 (= res!1883543 ((_ is Nil!50668) (toList!4343 lt!1699770)))))

(assert (=> d!1394796 (= (forall!10280 (toList!4343 lt!1699770) lambda!172998) e!2818966)))

(declare-fun b!4524437 () Bool)

(declare-fun e!2818967 () Bool)

(assert (=> b!4524437 (= e!2818966 e!2818967)))

(declare-fun res!1883544 () Bool)

(assert (=> b!4524437 (=> (not res!1883544) (not e!2818967))))

(assert (=> b!4524437 (= res!1883544 (dynLambda!21172 lambda!172998 (h!56527 (toList!4343 lt!1699770))))))

(declare-fun b!4524438 () Bool)

(assert (=> b!4524438 (= e!2818967 (forall!10280 (t!357754 (toList!4343 lt!1699770)) lambda!172998))))

(assert (= (and d!1394796 (not res!1883543)) b!4524437))

(assert (= (and b!4524437 res!1883544) b!4524438))

(declare-fun b_lambda!155433 () Bool)

(assert (=> (not b_lambda!155433) (not b!4524437)))

(declare-fun m!5276025 () Bool)

(assert (=> b!4524437 m!5276025))

(declare-fun m!5276027 () Bool)

(assert (=> b!4524438 m!5276027))

(assert (=> b!4523058 d!1394796))

(declare-fun d!1394798 () Bool)

(declare-fun lt!1700911 () Bool)

(assert (=> d!1394798 (= lt!1700911 (select (content!8376 e!2818241) key!3287))))

(declare-fun e!2818968 () Bool)

(assert (=> d!1394798 (= lt!1700911 e!2818968)))

(declare-fun res!1883545 () Bool)

(assert (=> d!1394798 (=> (not res!1883545) (not e!2818968))))

(assert (=> d!1394798 (= res!1883545 ((_ is Cons!50671) e!2818241))))

(assert (=> d!1394798 (= (contains!13413 e!2818241 key!3287) lt!1700911)))

(declare-fun b!4524439 () Bool)

(declare-fun e!2818969 () Bool)

(assert (=> b!4524439 (= e!2818968 e!2818969)))

(declare-fun res!1883546 () Bool)

(assert (=> b!4524439 (=> res!1883546 e!2818969)))

(assert (=> b!4524439 (= res!1883546 (= (h!56532 e!2818241) key!3287))))

(declare-fun b!4524440 () Bool)

(assert (=> b!4524440 (= e!2818969 (contains!13413 (t!357757 e!2818241) key!3287))))

(assert (= (and d!1394798 res!1883545) b!4524439))

(assert (= (and b!4524439 (not res!1883546)) b!4524440))

(declare-fun m!5276029 () Bool)

(assert (=> d!1394798 m!5276029))

(declare-fun m!5276031 () Bool)

(assert (=> d!1394798 m!5276031))

(declare-fun m!5276033 () Bool)

(assert (=> b!4524440 m!5276033))

(assert (=> bm!315164 d!1394798))

(declare-fun d!1394800 () Bool)

(assert (=> d!1394800 (= (invariantList!1023 (toList!4343 lt!1700213)) (noDuplicatedKeys!264 (toList!4343 lt!1700213)))))

(declare-fun bs!859193 () Bool)

(assert (= bs!859193 d!1394800))

(declare-fun m!5276035 () Bool)

(assert (=> bs!859193 m!5276035))

(assert (=> d!1394110 d!1394800))

(declare-fun d!1394802 () Bool)

(declare-fun res!1883547 () Bool)

(declare-fun e!2818970 () Bool)

(assert (=> d!1394802 (=> res!1883547 e!2818970)))

(assert (=> d!1394802 (= res!1883547 ((_ is Nil!50669) (toList!4344 lt!1699792)))))

(assert (=> d!1394802 (= (forall!10281 (toList!4344 lt!1699792) lambda!173076) e!2818970)))

(declare-fun b!4524441 () Bool)

(declare-fun e!2818971 () Bool)

(assert (=> b!4524441 (= e!2818970 e!2818971)))

(declare-fun res!1883548 () Bool)

(assert (=> b!4524441 (=> (not res!1883548) (not e!2818971))))

(assert (=> b!4524441 (= res!1883548 (dynLambda!21171 lambda!173076 (h!56528 (toList!4344 lt!1699792))))))

(declare-fun b!4524442 () Bool)

(assert (=> b!4524442 (= e!2818971 (forall!10281 (t!357755 (toList!4344 lt!1699792)) lambda!173076))))

(assert (= (and d!1394802 (not res!1883547)) b!4524441))

(assert (= (and b!4524441 res!1883548) b!4524442))

(declare-fun b_lambda!155435 () Bool)

(assert (=> (not b_lambda!155435) (not b!4524441)))

(declare-fun m!5276037 () Bool)

(assert (=> b!4524441 m!5276037))

(declare-fun m!5276039 () Bool)

(assert (=> b!4524442 m!5276039))

(assert (=> d!1394110 d!1394802))

(assert (=> b!4523302 d!1394512))

(declare-fun d!1394804 () Bool)

(assert (=> d!1394804 (containsKey!1804 (toList!4343 lt!1699778) key!3287)))

(declare-fun lt!1700912 () Unit!95506)

(assert (=> d!1394804 (= lt!1700912 (choose!29593 (toList!4343 lt!1699778) key!3287))))

(assert (=> d!1394804 (invariantList!1023 (toList!4343 lt!1699778))))

(assert (=> d!1394804 (= (lemmaInGetKeysListThenContainsKey!470 (toList!4343 lt!1699778) key!3287) lt!1700912)))

(declare-fun bs!859194 () Bool)

(assert (= bs!859194 d!1394804))

(assert (=> bs!859194 m!5273907))

(declare-fun m!5276041 () Bool)

(assert (=> bs!859194 m!5276041))

(assert (=> bs!859194 m!5274949))

(assert (=> b!4523302 d!1394804))

(declare-fun d!1394806 () Bool)

(declare-fun lt!1700913 () Bool)

(assert (=> d!1394806 (= lt!1700913 (select (content!8375 (toList!4344 lt!1700220)) lt!1699794))))

(declare-fun e!2818973 () Bool)

(assert (=> d!1394806 (= lt!1700913 e!2818973)))

(declare-fun res!1883550 () Bool)

(assert (=> d!1394806 (=> (not res!1883550) (not e!2818973))))

(assert (=> d!1394806 (= res!1883550 ((_ is Cons!50669) (toList!4344 lt!1700220)))))

(assert (=> d!1394806 (= (contains!13410 (toList!4344 lt!1700220) lt!1699794) lt!1700913)))

(declare-fun b!4524443 () Bool)

(declare-fun e!2818972 () Bool)

(assert (=> b!4524443 (= e!2818973 e!2818972)))

(declare-fun res!1883549 () Bool)

(assert (=> b!4524443 (=> res!1883549 e!2818972)))

(assert (=> b!4524443 (= res!1883549 (= (h!56528 (toList!4344 lt!1700220)) lt!1699794))))

(declare-fun b!4524444 () Bool)

(assert (=> b!4524444 (= e!2818972 (contains!13410 (t!357755 (toList!4344 lt!1700220)) lt!1699794))))

(assert (= (and d!1394806 res!1883550) b!4524443))

(assert (= (and b!4524443 (not res!1883549)) b!4524444))

(declare-fun m!5276043 () Bool)

(assert (=> d!1394806 m!5276043))

(declare-fun m!5276045 () Bool)

(assert (=> d!1394806 m!5276045))

(declare-fun m!5276047 () Bool)

(assert (=> b!4524444 m!5276047))

(assert (=> b!4523340 d!1394806))

(declare-fun bs!859195 () Bool)

(declare-fun b!4524445 () Bool)

(assert (= bs!859195 (and b!4524445 d!1394582)))

(declare-fun lambda!173203 () Int)

(assert (=> bs!859195 (not (= lambda!173203 lambda!173145))))

(declare-fun bs!859196 () Bool)

(assert (= bs!859196 (and b!4524445 b!4524061)))

(assert (=> bs!859196 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173203 lambda!173133))))

(declare-fun bs!859197 () Bool)

(assert (= bs!859197 (and b!4524445 d!1394204)))

(assert (=> bs!859197 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700292) (= lambda!173203 lambda!173103))))

(declare-fun bs!859198 () Bool)

(assert (= bs!859198 (and b!4524445 b!4523057)))

(assert (=> bs!859198 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173203 lambda!172995))))

(declare-fun bs!859199 () Bool)

(assert (= bs!859199 (and b!4524445 d!1394260)))

(assert (=> bs!859199 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700142) (= lambda!173203 lambda!173115))))

(declare-fun bs!859200 () Bool)

(assert (= bs!859200 (and b!4524445 b!4524272)))

(assert (=> bs!859200 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173203 lambda!173163))))

(declare-fun bs!859201 () Bool)

(assert (= bs!859201 (and b!4524445 d!1394488)))

(assert (=> bs!859201 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173203 lambda!173131))))

(assert (=> bs!859200 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700758) (= lambda!173203 lambda!173165))))

(declare-fun bs!859202 () Bool)

(assert (= bs!859202 (and b!4524445 b!4523867)))

(assert (=> bs!859202 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700482) (= lambda!173203 lambda!173124))))

(declare-fun bs!859203 () Bool)

(assert (= bs!859203 (and b!4524445 d!1394680)))

(assert (=> bs!859203 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700755) (= lambda!173203 lambda!173167))))

(declare-fun bs!859204 () Bool)

(assert (= bs!859204 (and b!4524445 b!4524064)))

(assert (=> bs!859204 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173203 lambda!173134))))

(declare-fun bs!859205 () Bool)

(assert (= bs!859205 (and b!4524445 b!4522898)))

(assert (=> bs!859205 (not (= lambda!173203 lambda!172949))))

(declare-fun bs!859207 () Bool)

(assert (= bs!859207 (and b!4524445 b!4524295)))

(assert (=> bs!859207 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173203 lambda!173170))))

(declare-fun bs!859208 () Bool)

(assert (= bs!859208 (and b!4524445 b!4523254)))

(assert (=> bs!859208 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699771) (= lambda!173203 lambda!173063))))

(declare-fun bs!859210 () Bool)

(assert (= bs!859210 (and b!4524445 d!1394704)))

(assert (=> bs!859210 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700803) (= lambda!173203 lambda!173176))))

(declare-fun bs!859212 () Bool)

(assert (= bs!859212 (and b!4524445 d!1394016)))

(assert (=> bs!859212 (not (= lambda!173203 lambda!173040))))

(declare-fun bs!859214 () Bool)

(assert (= bs!859214 (and b!4524445 b!4524378)))

(assert (=> bs!859214 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173203 lambda!173187))))

(assert (=> bs!859202 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173203 lambda!173123))))

(declare-fun bs!859215 () Bool)

(assert (= bs!859215 (and b!4524445 b!4523864)))

(assert (=> bs!859215 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173203 lambda!173122))))

(declare-fun bs!859216 () Bool)

(assert (= bs!859216 (and b!4524445 b!4524269)))

(assert (=> bs!859216 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173203 lambda!173161))))

(declare-fun bs!859217 () Bool)

(assert (= bs!859217 (and b!4524445 b!4523505)))

(assert (=> bs!859217 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173203 lambda!173099))))

(declare-fun bs!859223 () Bool)

(assert (= bs!859223 (and b!4524445 b!4524298)))

(assert (=> bs!859223 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173203 lambda!173172))))

(declare-fun bs!859224 () Bool)

(assert (= bs!859224 (and b!4524445 d!1394436)))

(assert (=> bs!859224 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700479) (= lambda!173203 lambda!173125))))

(declare-fun bs!859225 () Bool)

(assert (= bs!859225 (and b!4524445 d!1394760)))

(assert (=> bs!859225 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700871) (= lambda!173203 lambda!173190))))

(declare-fun bs!859226 () Bool)

(assert (= bs!859226 (and b!4524445 d!1393892)))

(assert (=> bs!859226 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699952) (= lambda!173203 lambda!172998))))

(assert (=> bs!859223 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700806) (= lambda!173203 lambda!173174))))

(declare-fun bs!859229 () Bool)

(assert (= bs!859229 (and b!4524445 b!4524381)))

(assert (=> bs!859229 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700874) (= lambda!173203 lambda!173189))))

(assert (=> bs!859217 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700295) (= lambda!173203 lambda!173102))))

(declare-fun bs!859231 () Bool)

(assert (= bs!859231 (and b!4524445 d!1394542)))

(assert (=> bs!859231 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700611) (= lambda!173203 lambda!173138))))

(declare-fun bs!859233 () Bool)

(assert (= bs!859233 (and b!4524445 b!4523257)))

(assert (=> bs!859233 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700142) (= lambda!173203 lambda!173067))))

(assert (=> bs!859204 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700614) (= lambda!173203 lambda!173135))))

(assert (=> bs!859229 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173203 lambda!173188))))

(declare-fun bs!859236 () Bool)

(assert (= bs!859236 (and b!4524445 d!1394662)))

(assert (=> bs!859236 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699955) (= lambda!173203 lambda!173158))))

(declare-fun bs!859237 () Bool)

(assert (= bs!859237 (and b!4524445 b!4523502)))

(assert (=> bs!859237 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173203 lambda!173098))))

(assert (=> bs!859233 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699771) (= lambda!173203 lambda!173066))))

(declare-fun bs!859240 () Bool)

(assert (= bs!859240 (and b!4524445 d!1394074)))

(assert (=> bs!859240 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700139) (= lambda!173203 lambda!173069))))

(declare-fun bs!859242 () Bool)

(assert (= bs!859242 (and b!4524445 b!4523060)))

(assert (=> bs!859242 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173203 lambda!172996))))

(assert (=> bs!859242 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699955) (= lambda!173203 lambda!172997))))

(assert (=> b!4524445 true))

(declare-fun bs!859244 () Bool)

(declare-fun b!4524448 () Bool)

(assert (= bs!859244 (and b!4524448 d!1394582)))

(declare-fun lambda!173208 () Int)

(assert (=> bs!859244 (not (= lambda!173208 lambda!173145))))

(declare-fun bs!859245 () Bool)

(assert (= bs!859245 (and b!4524448 b!4524061)))

(assert (=> bs!859245 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173208 lambda!173133))))

(declare-fun bs!859246 () Bool)

(assert (= bs!859246 (and b!4524448 d!1394204)))

(assert (=> bs!859246 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700292) (= lambda!173208 lambda!173103))))

(declare-fun bs!859247 () Bool)

(assert (= bs!859247 (and b!4524448 b!4523057)))

(assert (=> bs!859247 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173208 lambda!172995))))

(declare-fun bs!859248 () Bool)

(assert (= bs!859248 (and b!4524448 d!1394260)))

(assert (=> bs!859248 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700142) (= lambda!173208 lambda!173115))))

(declare-fun bs!859249 () Bool)

(assert (= bs!859249 (and b!4524448 b!4524272)))

(assert (=> bs!859249 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173208 lambda!173163))))

(declare-fun bs!859250 () Bool)

(assert (= bs!859250 (and b!4524448 d!1394488)))

(assert (=> bs!859250 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173208 lambda!173131))))

(declare-fun bs!859251 () Bool)

(assert (= bs!859251 (and b!4524448 b!4523867)))

(assert (=> bs!859251 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700482) (= lambda!173208 lambda!173124))))

(declare-fun bs!859252 () Bool)

(assert (= bs!859252 (and b!4524448 d!1394680)))

(assert (=> bs!859252 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700755) (= lambda!173208 lambda!173167))))

(declare-fun bs!859253 () Bool)

(assert (= bs!859253 (and b!4524448 b!4524064)))

(assert (=> bs!859253 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173208 lambda!173134))))

(declare-fun bs!859254 () Bool)

(assert (= bs!859254 (and b!4524448 b!4522898)))

(assert (=> bs!859254 (not (= lambda!173208 lambda!172949))))

(declare-fun bs!859255 () Bool)

(assert (= bs!859255 (and b!4524448 b!4524295)))

(assert (=> bs!859255 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173208 lambda!173170))))

(declare-fun bs!859256 () Bool)

(assert (= bs!859256 (and b!4524448 b!4523254)))

(assert (=> bs!859256 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699771) (= lambda!173208 lambda!173063))))

(declare-fun bs!859257 () Bool)

(assert (= bs!859257 (and b!4524448 d!1394704)))

(assert (=> bs!859257 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700803) (= lambda!173208 lambda!173176))))

(declare-fun bs!859258 () Bool)

(assert (= bs!859258 (and b!4524448 d!1394016)))

(assert (=> bs!859258 (not (= lambda!173208 lambda!173040))))

(declare-fun bs!859259 () Bool)

(assert (= bs!859259 (and b!4524448 b!4524378)))

(assert (=> bs!859259 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173208 lambda!173187))))

(assert (=> bs!859251 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173208 lambda!173123))))

(declare-fun bs!859260 () Bool)

(assert (= bs!859260 (and b!4524448 b!4523864)))

(assert (=> bs!859260 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173208 lambda!173122))))

(declare-fun bs!859261 () Bool)

(assert (= bs!859261 (and b!4524448 b!4524269)))

(assert (=> bs!859261 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173208 lambda!173161))))

(declare-fun bs!859262 () Bool)

(assert (= bs!859262 (and b!4524448 b!4523505)))

(assert (=> bs!859262 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173208 lambda!173099))))

(declare-fun bs!859263 () Bool)

(assert (= bs!859263 (and b!4524448 b!4524298)))

(assert (=> bs!859263 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173208 lambda!173172))))

(declare-fun bs!859264 () Bool)

(assert (= bs!859264 (and b!4524448 d!1394436)))

(assert (=> bs!859264 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700479) (= lambda!173208 lambda!173125))))

(declare-fun bs!859265 () Bool)

(assert (= bs!859265 (and b!4524448 d!1394760)))

(assert (=> bs!859265 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700871) (= lambda!173208 lambda!173190))))

(declare-fun bs!859266 () Bool)

(assert (= bs!859266 (and b!4524448 d!1393892)))

(assert (=> bs!859266 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699952) (= lambda!173208 lambda!172998))))

(assert (=> bs!859263 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700806) (= lambda!173208 lambda!173174))))

(declare-fun bs!859267 () Bool)

(assert (= bs!859267 (and b!4524448 b!4524381)))

(assert (=> bs!859267 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700874) (= lambda!173208 lambda!173189))))

(assert (=> bs!859262 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700295) (= lambda!173208 lambda!173102))))

(declare-fun bs!859268 () Bool)

(assert (= bs!859268 (and b!4524448 d!1394542)))

(assert (=> bs!859268 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700611) (= lambda!173208 lambda!173138))))

(declare-fun bs!859269 () Bool)

(assert (= bs!859269 (and b!4524448 b!4523257)))

(assert (=> bs!859269 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700142) (= lambda!173208 lambda!173067))))

(declare-fun bs!859270 () Bool)

(assert (= bs!859270 (and b!4524448 b!4524445)))

(assert (=> bs!859270 (= lambda!173208 lambda!173203)))

(assert (=> bs!859249 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700758) (= lambda!173208 lambda!173165))))

(assert (=> bs!859253 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700614) (= lambda!173208 lambda!173135))))

(assert (=> bs!859267 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173208 lambda!173188))))

(declare-fun bs!859271 () Bool)

(assert (= bs!859271 (and b!4524448 d!1394662)))

(assert (=> bs!859271 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699955) (= lambda!173208 lambda!173158))))

(declare-fun bs!859272 () Bool)

(assert (= bs!859272 (and b!4524448 b!4523502)))

(assert (=> bs!859272 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173208 lambda!173098))))

(assert (=> bs!859269 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699771) (= lambda!173208 lambda!173066))))

(declare-fun bs!859273 () Bool)

(assert (= bs!859273 (and b!4524448 d!1394074)))

(assert (=> bs!859273 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700139) (= lambda!173208 lambda!173069))))

(declare-fun bs!859274 () Bool)

(assert (= bs!859274 (and b!4524448 b!4523060)))

(assert (=> bs!859274 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699770) (= lambda!173208 lambda!172996))))

(assert (=> bs!859274 (= (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699955) (= lambda!173208 lambda!172997))))

(assert (=> b!4524448 true))

(declare-fun lambda!173209 () Int)

(assert (=> bs!859244 (not (= lambda!173209 lambda!173145))))

(declare-fun lt!1700924 () ListMap!3605)

(assert (=> bs!859245 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173209 lambda!173133))))

(assert (=> bs!859246 (= (= lt!1700924 lt!1700292) (= lambda!173209 lambda!173103))))

(assert (=> bs!859247 (= (= lt!1700924 lt!1699770) (= lambda!173209 lambda!172995))))

(assert (=> bs!859248 (= (= lt!1700924 lt!1700142) (= lambda!173209 lambda!173115))))

(assert (=> bs!859249 (= (= lt!1700924 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173209 lambda!173163))))

(assert (=> bs!859250 (= (= lt!1700924 lt!1699770) (= lambda!173209 lambda!173131))))

(assert (=> bs!859251 (= (= lt!1700924 lt!1700482) (= lambda!173209 lambda!173124))))

(assert (=> bs!859252 (= (= lt!1700924 lt!1700755) (= lambda!173209 lambda!173167))))

(assert (=> bs!859253 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173209 lambda!173134))))

(assert (=> bs!859254 (not (= lambda!173209 lambda!172949))))

(assert (=> bs!859255 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173209 lambda!173170))))

(assert (=> bs!859256 (= (= lt!1700924 lt!1699771) (= lambda!173209 lambda!173063))))

(assert (=> bs!859257 (= (= lt!1700924 lt!1700803) (= lambda!173209 lambda!173176))))

(assert (=> bs!859258 (not (= lambda!173209 lambda!173040))))

(assert (=> bs!859259 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173209 lambda!173187))))

(assert (=> bs!859251 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173209 lambda!173123))))

(assert (=> bs!859260 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173209 lambda!173122))))

(assert (=> bs!859261 (= (= lt!1700924 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173209 lambda!173161))))

(assert (=> b!4524448 (= (= lt!1700924 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173209 lambda!173208))))

(assert (=> bs!859262 (= (= lt!1700924 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173209 lambda!173099))))

(assert (=> bs!859263 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173209 lambda!173172))))

(assert (=> bs!859264 (= (= lt!1700924 lt!1700479) (= lambda!173209 lambda!173125))))

(assert (=> bs!859265 (= (= lt!1700924 lt!1700871) (= lambda!173209 lambda!173190))))

(assert (=> bs!859266 (= (= lt!1700924 lt!1699952) (= lambda!173209 lambda!172998))))

(assert (=> bs!859263 (= (= lt!1700924 lt!1700806) (= lambda!173209 lambda!173174))))

(assert (=> bs!859267 (= (= lt!1700924 lt!1700874) (= lambda!173209 lambda!173189))))

(assert (=> bs!859262 (= (= lt!1700924 lt!1700295) (= lambda!173209 lambda!173102))))

(assert (=> bs!859268 (= (= lt!1700924 lt!1700611) (= lambda!173209 lambda!173138))))

(assert (=> bs!859269 (= (= lt!1700924 lt!1700142) (= lambda!173209 lambda!173067))))

(assert (=> bs!859270 (= (= lt!1700924 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173209 lambda!173203))))

(assert (=> bs!859249 (= (= lt!1700924 lt!1700758) (= lambda!173209 lambda!173165))))

(assert (=> bs!859253 (= (= lt!1700924 lt!1700614) (= lambda!173209 lambda!173135))))

(assert (=> bs!859267 (= (= lt!1700924 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173209 lambda!173188))))

(assert (=> bs!859271 (= (= lt!1700924 lt!1699955) (= lambda!173209 lambda!173158))))

(assert (=> bs!859272 (= (= lt!1700924 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173209 lambda!173098))))

(assert (=> bs!859269 (= (= lt!1700924 lt!1699771) (= lambda!173209 lambda!173066))))

(assert (=> bs!859273 (= (= lt!1700924 lt!1700139) (= lambda!173209 lambda!173069))))

(assert (=> bs!859274 (= (= lt!1700924 lt!1699770) (= lambda!173209 lambda!172996))))

(assert (=> bs!859274 (= (= lt!1700924 lt!1699955) (= lambda!173209 lambda!172997))))

(assert (=> b!4524448 true))

(declare-fun bs!859304 () Bool)

(declare-fun d!1394808 () Bool)

(assert (= bs!859304 (and d!1394808 d!1394582)))

(declare-fun lambda!173214 () Int)

(assert (=> bs!859304 (not (= lambda!173214 lambda!173145))))

(declare-fun bs!859305 () Bool)

(assert (= bs!859305 (and d!1394808 b!4524061)))

(declare-fun lt!1700921 () ListMap!3605)

(assert (=> bs!859305 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173214 lambda!173133))))

(declare-fun bs!859306 () Bool)

(assert (= bs!859306 (and d!1394808 d!1394204)))

(assert (=> bs!859306 (= (= lt!1700921 lt!1700292) (= lambda!173214 lambda!173103))))

(declare-fun bs!859307 () Bool)

(assert (= bs!859307 (and d!1394808 b!4523057)))

(assert (=> bs!859307 (= (= lt!1700921 lt!1699770) (= lambda!173214 lambda!172995))))

(declare-fun bs!859308 () Bool)

(assert (= bs!859308 (and d!1394808 d!1394260)))

(assert (=> bs!859308 (= (= lt!1700921 lt!1700142) (= lambda!173214 lambda!173115))))

(declare-fun bs!859309 () Bool)

(assert (= bs!859309 (and d!1394808 b!4524272)))

(assert (=> bs!859309 (= (= lt!1700921 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173214 lambda!173163))))

(declare-fun bs!859310 () Bool)

(assert (= bs!859310 (and d!1394808 d!1394488)))

(assert (=> bs!859310 (= (= lt!1700921 lt!1699770) (= lambda!173214 lambda!173131))))

(declare-fun bs!859311 () Bool)

(assert (= bs!859311 (and d!1394808 b!4523867)))

(assert (=> bs!859311 (= (= lt!1700921 lt!1700482) (= lambda!173214 lambda!173124))))

(declare-fun bs!859312 () Bool)

(assert (= bs!859312 (and d!1394808 d!1394680)))

(assert (=> bs!859312 (= (= lt!1700921 lt!1700755) (= lambda!173214 lambda!173167))))

(declare-fun bs!859313 () Bool)

(assert (= bs!859313 (and d!1394808 b!4524064)))

(assert (=> bs!859313 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173214 lambda!173134))))

(declare-fun bs!859314 () Bool)

(assert (= bs!859314 (and d!1394808 b!4522898)))

(assert (=> bs!859314 (not (= lambda!173214 lambda!172949))))

(declare-fun bs!859315 () Bool)

(assert (= bs!859315 (and d!1394808 b!4524295)))

(assert (=> bs!859315 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173214 lambda!173170))))

(declare-fun bs!859316 () Bool)

(assert (= bs!859316 (and d!1394808 b!4524448)))

(assert (=> bs!859316 (= (= lt!1700921 lt!1700924) (= lambda!173214 lambda!173209))))

(declare-fun bs!859317 () Bool)

(assert (= bs!859317 (and d!1394808 b!4523254)))

(assert (=> bs!859317 (= (= lt!1700921 lt!1699771) (= lambda!173214 lambda!173063))))

(declare-fun bs!859318 () Bool)

(assert (= bs!859318 (and d!1394808 d!1394704)))

(assert (=> bs!859318 (= (= lt!1700921 lt!1700803) (= lambda!173214 lambda!173176))))

(declare-fun bs!859319 () Bool)

(assert (= bs!859319 (and d!1394808 d!1394016)))

(assert (=> bs!859319 (not (= lambda!173214 lambda!173040))))

(declare-fun bs!859320 () Bool)

(assert (= bs!859320 (and d!1394808 b!4524378)))

(assert (=> bs!859320 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173214 lambda!173187))))

(assert (=> bs!859311 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173214 lambda!173123))))

(declare-fun bs!859323 () Bool)

(assert (= bs!859323 (and d!1394808 b!4523864)))

(assert (=> bs!859323 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173214 lambda!173122))))

(declare-fun bs!859325 () Bool)

(assert (= bs!859325 (and d!1394808 b!4524269)))

(assert (=> bs!859325 (= (= lt!1700921 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173214 lambda!173161))))

(assert (=> bs!859316 (= (= lt!1700921 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173214 lambda!173208))))

(declare-fun bs!859328 () Bool)

(assert (= bs!859328 (and d!1394808 b!4523505)))

(assert (=> bs!859328 (= (= lt!1700921 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173214 lambda!173099))))

(declare-fun bs!859330 () Bool)

(assert (= bs!859330 (and d!1394808 b!4524298)))

(assert (=> bs!859330 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173214 lambda!173172))))

(declare-fun bs!859332 () Bool)

(assert (= bs!859332 (and d!1394808 d!1394436)))

(assert (=> bs!859332 (= (= lt!1700921 lt!1700479) (= lambda!173214 lambda!173125))))

(declare-fun bs!859334 () Bool)

(assert (= bs!859334 (and d!1394808 d!1394760)))

(assert (=> bs!859334 (= (= lt!1700921 lt!1700871) (= lambda!173214 lambda!173190))))

(declare-fun bs!859336 () Bool)

(assert (= bs!859336 (and d!1394808 d!1393892)))

(assert (=> bs!859336 (= (= lt!1700921 lt!1699952) (= lambda!173214 lambda!172998))))

(assert (=> bs!859330 (= (= lt!1700921 lt!1700806) (= lambda!173214 lambda!173174))))

(declare-fun bs!859338 () Bool)

(assert (= bs!859338 (and d!1394808 b!4524381)))

(assert (=> bs!859338 (= (= lt!1700921 lt!1700874) (= lambda!173214 lambda!173189))))

(assert (=> bs!859328 (= (= lt!1700921 lt!1700295) (= lambda!173214 lambda!173102))))

(declare-fun bs!859341 () Bool)

(assert (= bs!859341 (and d!1394808 d!1394542)))

(assert (=> bs!859341 (= (= lt!1700921 lt!1700611) (= lambda!173214 lambda!173138))))

(declare-fun bs!859342 () Bool)

(assert (= bs!859342 (and d!1394808 b!4523257)))

(assert (=> bs!859342 (= (= lt!1700921 lt!1700142) (= lambda!173214 lambda!173067))))

(declare-fun bs!859344 () Bool)

(assert (= bs!859344 (and d!1394808 b!4524445)))

(assert (=> bs!859344 (= (= lt!1700921 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173214 lambda!173203))))

(assert (=> bs!859309 (= (= lt!1700921 lt!1700758) (= lambda!173214 lambda!173165))))

(assert (=> bs!859313 (= (= lt!1700921 lt!1700614) (= lambda!173214 lambda!173135))))

(assert (=> bs!859338 (= (= lt!1700921 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173214 lambda!173188))))

(declare-fun bs!859347 () Bool)

(assert (= bs!859347 (and d!1394808 d!1394662)))

(assert (=> bs!859347 (= (= lt!1700921 lt!1699955) (= lambda!173214 lambda!173158))))

(declare-fun bs!859349 () Bool)

(assert (= bs!859349 (and d!1394808 b!4523502)))

(assert (=> bs!859349 (= (= lt!1700921 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173214 lambda!173098))))

(assert (=> bs!859342 (= (= lt!1700921 lt!1699771) (= lambda!173214 lambda!173066))))

(declare-fun bs!859351 () Bool)

(assert (= bs!859351 (and d!1394808 d!1394074)))

(assert (=> bs!859351 (= (= lt!1700921 lt!1700139) (= lambda!173214 lambda!173069))))

(declare-fun bs!859352 () Bool)

(assert (= bs!859352 (and d!1394808 b!4523060)))

(assert (=> bs!859352 (= (= lt!1700921 lt!1699770) (= lambda!173214 lambda!172996))))

(assert (=> bs!859352 (= (= lt!1700921 lt!1699955) (= lambda!173214 lambda!172997))))

(assert (=> d!1394808 true))

(declare-fun c!772282 () Bool)

(declare-fun call!315285 () Bool)

(declare-fun bm!315279 () Bool)

(assert (=> bm!315279 (= call!315285 (forall!10280 (ite c!772282 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (t!357754 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))) (ite c!772282 lambda!173203 lambda!173209)))))

(declare-fun e!2818976 () ListMap!3605)

(assert (=> b!4524445 (= e!2818976 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))))))

(declare-fun lt!1700931 () Unit!95506)

(declare-fun call!315284 () Unit!95506)

(assert (=> b!4524445 (= lt!1700931 call!315284)))

(declare-fun call!315286 () Bool)

(assert (=> b!4524445 call!315286))

(declare-fun lt!1700928 () Unit!95506)

(assert (=> b!4524445 (= lt!1700928 lt!1700931)))

(assert (=> b!4524445 call!315285))

(declare-fun lt!1700933 () Unit!95506)

(declare-fun Unit!95791 () Unit!95506)

(assert (=> b!4524445 (= lt!1700933 Unit!95791)))

(declare-fun bm!315280 () Bool)

(assert (=> bm!315280 (= call!315286 (forall!10280 (ite c!772282 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))) (ite c!772282 lambda!173203 lambda!173209)))))

(declare-fun b!4524446 () Bool)

(declare-fun res!1883553 () Bool)

(declare-fun e!2818974 () Bool)

(assert (=> b!4524446 (=> (not res!1883553) (not e!2818974))))

(assert (=> b!4524446 (= res!1883553 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lambda!173214))))

(declare-fun b!4524447 () Bool)

(declare-fun e!2818975 () Bool)

(assert (=> b!4524447 (= e!2818975 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lambda!173209))))

(declare-fun bm!315281 () Bool)

(assert (=> bm!315281 (= call!315284 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> b!4524448 (= e!2818976 lt!1700924)))

(declare-fun lt!1700923 () ListMap!3605)

(assert (=> b!4524448 (= lt!1700923 (+!1553 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))))))

(assert (=> b!4524448 (= lt!1700924 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))) (+!1553 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))))

(declare-fun lt!1700932 () Unit!95506)

(assert (=> b!4524448 (= lt!1700932 call!315284)))

(assert (=> b!4524448 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lambda!173208)))

(declare-fun lt!1700934 () Unit!95506)

(assert (=> b!4524448 (= lt!1700934 lt!1700932)))

(assert (=> b!4524448 (forall!10280 (toList!4343 lt!1700923) lambda!173209)))

(declare-fun lt!1700915 () Unit!95506)

(declare-fun Unit!95793 () Unit!95506)

(assert (=> b!4524448 (= lt!1700915 Unit!95793)))

(assert (=> b!4524448 call!315285))

(declare-fun lt!1700926 () Unit!95506)

(declare-fun Unit!95796 () Unit!95506)

(assert (=> b!4524448 (= lt!1700926 Unit!95796)))

(declare-fun lt!1700914 () Unit!95506)

(declare-fun Unit!95797 () Unit!95506)

(assert (=> b!4524448 (= lt!1700914 Unit!95797)))

(declare-fun lt!1700917 () Unit!95506)

(assert (=> b!4524448 (= lt!1700917 (forallContained!2532 (toList!4343 lt!1700923) lambda!173209 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))))))

(assert (=> b!4524448 (contains!13409 lt!1700923 (_1!28847 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))))))

(declare-fun lt!1700916 () Unit!95506)

(declare-fun Unit!95799 () Unit!95506)

(assert (=> b!4524448 (= lt!1700916 Unit!95799)))

(assert (=> b!4524448 (contains!13409 lt!1700924 (_1!28847 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))))))

(declare-fun lt!1700929 () Unit!95506)

(declare-fun Unit!95801 () Unit!95506)

(assert (=> b!4524448 (= lt!1700929 Unit!95801)))

(assert (=> b!4524448 call!315286))

(declare-fun lt!1700918 () Unit!95506)

(declare-fun Unit!95803 () Unit!95506)

(assert (=> b!4524448 (= lt!1700918 Unit!95803)))

(assert (=> b!4524448 (forall!10280 (toList!4343 lt!1700923) lambda!173209)))

(declare-fun lt!1700920 () Unit!95506)

(declare-fun Unit!95806 () Unit!95506)

(assert (=> b!4524448 (= lt!1700920 Unit!95806)))

(declare-fun lt!1700930 () Unit!95506)

(declare-fun Unit!95807 () Unit!95506)

(assert (=> b!4524448 (= lt!1700930 Unit!95807)))

(declare-fun lt!1700925 () Unit!95506)

(assert (=> b!4524448 (= lt!1700925 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700924 (_1!28847 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))))

(assert (=> b!4524448 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lambda!173209)))

(declare-fun lt!1700919 () Unit!95506)

(assert (=> b!4524448 (= lt!1700919 lt!1700925)))

(assert (=> b!4524448 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lambda!173209)))

(declare-fun lt!1700922 () Unit!95506)

(declare-fun Unit!95809 () Unit!95506)

(assert (=> b!4524448 (= lt!1700922 Unit!95809)))

(declare-fun res!1883551 () Bool)

(assert (=> b!4524448 (= res!1883551 (forall!10280 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) lambda!173209))))

(assert (=> b!4524448 (=> (not res!1883551) (not e!2818975))))

(assert (=> b!4524448 e!2818975))

(declare-fun lt!1700927 () Unit!95506)

(declare-fun Unit!95811 () Unit!95506)

(assert (=> b!4524448 (= lt!1700927 Unit!95811)))

(assert (=> d!1394808 e!2818974))

(declare-fun res!1883552 () Bool)

(assert (=> d!1394808 (=> (not res!1883552) (not e!2818974))))

(assert (=> d!1394808 (= res!1883552 (forall!10280 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) lambda!173214))))

(assert (=> d!1394808 (= lt!1700921 e!2818976)))

(assert (=> d!1394808 (= c!772282 ((_ is Nil!50668) (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> d!1394808 (noDuplicateKeys!1168 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394808 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477)))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) lt!1700921)))

(declare-fun b!4524449 () Bool)

(assert (=> b!4524449 (= e!2818974 (invariantList!1023 (toList!4343 lt!1700921)))))

(assert (= (and d!1394808 c!772282) b!4524445))

(assert (= (and d!1394808 (not c!772282)) b!4524448))

(assert (= (and b!4524448 res!1883551) b!4524447))

(assert (= (or b!4524445 b!4524448) bm!315279))

(assert (= (or b!4524445 b!4524448) bm!315280))

(assert (= (or b!4524445 b!4524448) bm!315281))

(assert (= (and d!1394808 res!1883552) b!4524446))

(assert (= (and b!4524446 res!1883553) b!4524449))

(declare-fun m!5276105 () Bool)

(assert (=> b!4524448 m!5276105))

(declare-fun m!5276107 () Bool)

(assert (=> b!4524448 m!5276107))

(declare-fun m!5276109 () Bool)

(assert (=> b!4524448 m!5276109))

(declare-fun m!5276111 () Bool)

(assert (=> b!4524448 m!5276111))

(assert (=> b!4524448 m!5276111))

(declare-fun m!5276113 () Bool)

(assert (=> b!4524448 m!5276113))

(assert (=> b!4524448 m!5276113))

(declare-fun m!5276115 () Bool)

(assert (=> b!4524448 m!5276115))

(assert (=> b!4524448 m!5273947))

(declare-fun m!5276117 () Bool)

(assert (=> b!4524448 m!5276117))

(assert (=> b!4524448 m!5273947))

(assert (=> b!4524448 m!5276107))

(declare-fun m!5276119 () Bool)

(assert (=> b!4524448 m!5276119))

(declare-fun m!5276121 () Bool)

(assert (=> b!4524448 m!5276121))

(declare-fun m!5276123 () Bool)

(assert (=> b!4524448 m!5276123))

(declare-fun m!5276125 () Bool)

(assert (=> b!4524446 m!5276125))

(assert (=> b!4524447 m!5276111))

(declare-fun m!5276127 () Bool)

(assert (=> bm!315280 m!5276127))

(assert (=> bm!315281 m!5273947))

(declare-fun m!5276129 () Bool)

(assert (=> bm!315281 m!5276129))

(declare-fun m!5276131 () Bool)

(assert (=> bm!315279 m!5276131))

(declare-fun m!5276133 () Bool)

(assert (=> d!1394808 m!5276133))

(declare-fun m!5276135 () Bool)

(assert (=> d!1394808 m!5276135))

(declare-fun m!5276137 () Bool)

(assert (=> b!4524449 m!5276137))

(assert (=> b!4523316 d!1394808))

(declare-fun bs!859382 () Bool)

(declare-fun d!1394826 () Bool)

(assert (= bs!859382 (and d!1394826 d!1394104)))

(declare-fun lambda!173217 () Int)

(assert (=> bs!859382 (= lambda!173217 lambda!173072)))

(declare-fun bs!859384 () Bool)

(assert (= bs!859384 (and d!1394826 d!1394024)))

(assert (=> bs!859384 (= lambda!173217 lambda!173050)))

(declare-fun bs!859385 () Bool)

(assert (= bs!859385 (and d!1394826 d!1394100)))

(assert (=> bs!859385 (= lambda!173217 lambda!173071)))

(declare-fun bs!859387 () Bool)

(assert (= bs!859387 (and d!1394826 d!1394070)))

(assert (=> bs!859387 (not (= lambda!173217 lambda!173062))))

(declare-fun bs!859389 () Bool)

(assert (= bs!859389 (and d!1394826 d!1394110)))

(assert (=> bs!859389 (= lambda!173217 lambda!173076)))

(declare-fun bs!859390 () Bool)

(assert (= bs!859390 (and d!1394826 d!1394526)))

(assert (=> bs!859390 (= lambda!173217 lambda!173132)))

(declare-fun bs!859391 () Bool)

(assert (= bs!859391 (and d!1394826 start!448016)))

(assert (=> bs!859391 (= lambda!173217 lambda!172947)))

(declare-fun bs!859393 () Bool)

(assert (= bs!859393 (and d!1394826 d!1394010)))

(assert (=> bs!859393 (= lambda!173217 lambda!173036)))

(declare-fun bs!859395 () Bool)

(assert (= bs!859395 (and d!1394826 b!4522898)))

(assert (=> bs!859395 (not (= lambda!173217 lambda!172948))))

(declare-fun bs!859397 () Bool)

(assert (= bs!859397 (and d!1394826 d!1394080)))

(assert (=> bs!859397 (= lambda!173217 lambda!173070)))

(declare-fun bs!859399 () Bool)

(assert (= bs!859399 (and d!1394826 d!1394038)))

(assert (=> bs!859399 (= lambda!173217 lambda!173051)))

(declare-fun bs!859400 () Bool)

(assert (= bs!859400 (and d!1394826 d!1394452)))

(assert (=> bs!859400 (= lambda!173217 lambda!173126)))

(declare-fun bs!859401 () Bool)

(assert (= bs!859401 (and d!1394826 d!1394106)))

(assert (=> bs!859401 (= lambda!173217 lambda!173075)))

(declare-fun bs!859402 () Bool)

(assert (= bs!859402 (and d!1394826 d!1394122)))

(assert (=> bs!859402 (= lambda!173217 lambda!173079)))

(declare-fun bs!859403 () Bool)

(assert (= bs!859403 (and d!1394826 d!1393990)))

(assert (=> bs!859403 (= lambda!173217 lambda!173001)))

(declare-fun bs!859404 () Bool)

(assert (= bs!859404 (and d!1394826 d!1394554)))

(assert (=> bs!859404 (= lambda!173217 lambda!173141)))

(declare-fun bs!859405 () Bool)

(assert (= bs!859405 (and d!1394826 d!1394054)))

(assert (=> bs!859405 (= lambda!173217 lambda!173059)))

(declare-fun bs!859406 () Bool)

(assert (= bs!859406 (and d!1394826 d!1394710)))

(assert (=> bs!859406 (= lambda!173217 lambda!173177)))

(declare-fun lt!1700970 () ListMap!3605)

(assert (=> d!1394826 (invariantList!1023 (toList!4343 lt!1700970))))

(declare-fun e!2818996 () ListMap!3605)

(assert (=> d!1394826 (= lt!1700970 e!2818996)))

(declare-fun c!772293 () Bool)

(assert (=> d!1394826 (= c!772293 ((_ is Cons!50669) (t!357755 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394826 (forall!10281 (t!357755 (t!357755 (toList!4344 lm!1477))) lambda!173217)))

(assert (=> d!1394826 (= (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1700970)))

(declare-fun b!4524486 () Bool)

(assert (=> b!4524486 (= e!2818996 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (t!357755 (toList!4344 lm!1477))))) (extractMap!1224 (t!357755 (t!357755 (t!357755 (toList!4344 lm!1477)))))))))

(declare-fun b!4524487 () Bool)

(assert (=> b!4524487 (= e!2818996 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394826 c!772293) b!4524486))

(assert (= (and d!1394826 (not c!772293)) b!4524487))

(declare-fun m!5276139 () Bool)

(assert (=> d!1394826 m!5276139))

(declare-fun m!5276141 () Bool)

(assert (=> d!1394826 m!5276141))

(declare-fun m!5276143 () Bool)

(assert (=> b!4524486 m!5276143))

(assert (=> b!4524486 m!5276143))

(declare-fun m!5276145 () Bool)

(assert (=> b!4524486 m!5276145))

(assert (=> b!4523316 d!1394826))

(declare-fun d!1394828 () Bool)

(declare-fun lt!1700971 () Bool)

(assert (=> d!1394828 (= lt!1700971 (select (content!8375 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699785))))

(declare-fun e!2818998 () Bool)

(assert (=> d!1394828 (= lt!1700971 e!2818998)))

(declare-fun res!1883569 () Bool)

(assert (=> d!1394828 (=> (not res!1883569) (not e!2818998))))

(assert (=> d!1394828 (= res!1883569 ((_ is Cons!50669) (t!357755 (t!357755 (toList!4344 lm!1477)))))))

(assert (=> d!1394828 (= (contains!13410 (t!357755 (t!357755 (toList!4344 lm!1477))) lt!1699785) lt!1700971)))

(declare-fun b!4524488 () Bool)

(declare-fun e!2818997 () Bool)

(assert (=> b!4524488 (= e!2818998 e!2818997)))

(declare-fun res!1883568 () Bool)

(assert (=> b!4524488 (=> res!1883568 e!2818997)))

(assert (=> b!4524488 (= res!1883568 (= (h!56528 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699785))))

(declare-fun b!4524489 () Bool)

(assert (=> b!4524489 (= e!2818997 (contains!13410 (t!357755 (t!357755 (t!357755 (toList!4344 lm!1477)))) lt!1699785))))

(assert (= (and d!1394828 res!1883569) b!4524488))

(assert (= (and b!4524488 (not res!1883568)) b!4524489))

(assert (=> d!1394828 m!5276023))

(declare-fun m!5276147 () Bool)

(assert (=> d!1394828 m!5276147))

(declare-fun m!5276149 () Bool)

(assert (=> b!4524489 m!5276149))

(assert (=> b!4523102 d!1394828))

(declare-fun d!1394830 () Bool)

(declare-fun c!772294 () Bool)

(assert (=> d!1394830 (= c!772294 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(declare-fun e!2818999 () (InoxSet tuple2!51108))

(assert (=> d!1394830 (= (content!8375 (toList!4344 lm!1477)) e!2818999)))

(declare-fun b!4524490 () Bool)

(assert (=> b!4524490 (= e!2818999 ((as const (Array tuple2!51108 Bool)) false))))

(declare-fun b!4524491 () Bool)

(assert (=> b!4524491 (= e!2818999 ((_ map or) (store ((as const (Array tuple2!51108 Bool)) false) (h!56528 (toList!4344 lm!1477)) true) (content!8375 (t!357755 (toList!4344 lm!1477)))))))

(assert (= (and d!1394830 c!772294) b!4524490))

(assert (= (and d!1394830 (not c!772294)) b!4524491))

(declare-fun m!5276151 () Bool)

(assert (=> b!4524491 m!5276151))

(assert (=> b!4524491 m!5273521))

(assert (=> d!1394012 d!1394830))

(declare-fun d!1394832 () Bool)

(assert (=> d!1394832 (= (invariantList!1023 (toList!4343 lt!1699952)) (noDuplicatedKeys!264 (toList!4343 lt!1699952)))))

(declare-fun bs!859407 () Bool)

(assert (= bs!859407 d!1394832))

(declare-fun m!5276153 () Bool)

(assert (=> bs!859407 m!5276153))

(assert (=> b!4523061 d!1394832))

(declare-fun d!1394834 () Bool)

(assert (=> d!1394834 (= (get!16606 (getValueByKey!1104 (toList!4344 lm!1477) hash!344)) (v!44747 (getValueByKey!1104 (toList!4344 lm!1477) hash!344)))))

(assert (=> d!1394002 d!1394834))

(assert (=> d!1394002 d!1394496))

(assert (=> b!4523323 d!1394454))

(assert (=> b!4523323 d!1394456))

(declare-fun d!1394836 () Bool)

(declare-fun res!1883570 () Bool)

(declare-fun e!2819000 () Bool)

(assert (=> d!1394836 (=> res!1883570 e!2819000)))

(assert (=> d!1394836 (= res!1883570 (and ((_ is Cons!50668) lt!1700041) (= (_1!28847 (h!56527 lt!1700041)) key!3287)))))

(assert (=> d!1394836 (= (containsKey!1800 lt!1700041 key!3287) e!2819000)))

(declare-fun b!4524492 () Bool)

(declare-fun e!2819001 () Bool)

(assert (=> b!4524492 (= e!2819000 e!2819001)))

(declare-fun res!1883571 () Bool)

(assert (=> b!4524492 (=> (not res!1883571) (not e!2819001))))

(assert (=> b!4524492 (= res!1883571 ((_ is Cons!50668) lt!1700041))))

(declare-fun b!4524493 () Bool)

(assert (=> b!4524493 (= e!2819001 (containsKey!1800 (t!357754 lt!1700041) key!3287))))

(assert (= (and d!1394836 (not res!1883570)) b!4524492))

(assert (= (and b!4524492 res!1883571) b!4524493))

(declare-fun m!5276155 () Bool)

(assert (=> b!4524493 m!5276155))

(assert (=> d!1394006 d!1394836))

(declare-fun d!1394838 () Bool)

(declare-fun res!1883572 () Bool)

(declare-fun e!2819002 () Bool)

(assert (=> d!1394838 (=> res!1883572 e!2819002)))

(assert (=> d!1394838 (= res!1883572 (not ((_ is Cons!50668) lt!1699789)))))

(assert (=> d!1394838 (= (noDuplicateKeys!1168 lt!1699789) e!2819002)))

(declare-fun b!4524494 () Bool)

(declare-fun e!2819003 () Bool)

(assert (=> b!4524494 (= e!2819002 e!2819003)))

(declare-fun res!1883573 () Bool)

(assert (=> b!4524494 (=> (not res!1883573) (not e!2819003))))

(assert (=> b!4524494 (= res!1883573 (not (containsKey!1800 (t!357754 lt!1699789) (_1!28847 (h!56527 lt!1699789)))))))

(declare-fun b!4524495 () Bool)

(assert (=> b!4524495 (= e!2819003 (noDuplicateKeys!1168 (t!357754 lt!1699789)))))

(assert (= (and d!1394838 (not res!1883572)) b!4524494))

(assert (= (and b!4524494 res!1883573) b!4524495))

(declare-fun m!5276157 () Bool)

(assert (=> b!4524494 m!5276157))

(assert (=> b!4524495 m!5274903))

(assert (=> d!1394006 d!1394838))

(declare-fun bs!859408 () Bool)

(declare-fun d!1394840 () Bool)

(assert (= bs!859408 (and d!1394840 d!1394582)))

(declare-fun lambda!173219 () Int)

(assert (=> bs!859408 (not (= lambda!173219 lambda!173145))))

(declare-fun bs!859409 () Bool)

(assert (= bs!859409 (and d!1394840 b!4524061)))

(assert (=> bs!859409 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173219 lambda!173133))))

(declare-fun bs!859410 () Bool)

(assert (= bs!859410 (and d!1394840 d!1394204)))

(assert (=> bs!859410 (= (= lt!1699771 lt!1700292) (= lambda!173219 lambda!173103))))

(declare-fun bs!859411 () Bool)

(assert (= bs!859411 (and d!1394840 b!4523057)))

(assert (=> bs!859411 (= (= lt!1699771 lt!1699770) (= lambda!173219 lambda!172995))))

(declare-fun bs!859412 () Bool)

(assert (= bs!859412 (and d!1394840 d!1394260)))

(assert (=> bs!859412 (= (= lt!1699771 lt!1700142) (= lambda!173219 lambda!173115))))

(declare-fun bs!859413 () Bool)

(assert (= bs!859413 (and d!1394840 b!4524272)))

(assert (=> bs!859413 (= (= lt!1699771 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173219 lambda!173163))))

(declare-fun bs!859414 () Bool)

(assert (= bs!859414 (and d!1394840 d!1394488)))

(assert (=> bs!859414 (= (= lt!1699771 lt!1699770) (= lambda!173219 lambda!173131))))

(declare-fun bs!859415 () Bool)

(assert (= bs!859415 (and d!1394840 b!4523867)))

(assert (=> bs!859415 (= (= lt!1699771 lt!1700482) (= lambda!173219 lambda!173124))))

(declare-fun bs!859416 () Bool)

(assert (= bs!859416 (and d!1394840 d!1394680)))

(assert (=> bs!859416 (= (= lt!1699771 lt!1700755) (= lambda!173219 lambda!173167))))

(declare-fun bs!859417 () Bool)

(assert (= bs!859417 (and d!1394840 b!4524064)))

(assert (=> bs!859417 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173219 lambda!173134))))

(declare-fun bs!859418 () Bool)

(assert (= bs!859418 (and d!1394840 d!1394808)))

(assert (=> bs!859418 (= (= lt!1699771 lt!1700921) (= lambda!173219 lambda!173214))))

(declare-fun bs!859419 () Bool)

(assert (= bs!859419 (and d!1394840 b!4522898)))

(assert (=> bs!859419 (not (= lambda!173219 lambda!172949))))

(declare-fun bs!859420 () Bool)

(assert (= bs!859420 (and d!1394840 b!4524295)))

(assert (=> bs!859420 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173219 lambda!173170))))

(declare-fun bs!859422 () Bool)

(assert (= bs!859422 (and d!1394840 b!4524448)))

(assert (=> bs!859422 (= (= lt!1699771 lt!1700924) (= lambda!173219 lambda!173209))))

(declare-fun bs!859424 () Bool)

(assert (= bs!859424 (and d!1394840 b!4523254)))

(assert (=> bs!859424 (= lambda!173219 lambda!173063)))

(declare-fun bs!859426 () Bool)

(assert (= bs!859426 (and d!1394840 d!1394704)))

(assert (=> bs!859426 (= (= lt!1699771 lt!1700803) (= lambda!173219 lambda!173176))))

(declare-fun bs!859428 () Bool)

(assert (= bs!859428 (and d!1394840 d!1394016)))

(assert (=> bs!859428 (not (= lambda!173219 lambda!173040))))

(declare-fun bs!859430 () Bool)

(assert (= bs!859430 (and d!1394840 b!4524378)))

(assert (=> bs!859430 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173219 lambda!173187))))

(assert (=> bs!859415 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173219 lambda!173123))))

(declare-fun bs!859433 () Bool)

(assert (= bs!859433 (and d!1394840 b!4523864)))

(assert (=> bs!859433 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173219 lambda!173122))))

(declare-fun bs!859435 () Bool)

(assert (= bs!859435 (and d!1394840 b!4524269)))

(assert (=> bs!859435 (= (= lt!1699771 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173219 lambda!173161))))

(assert (=> bs!859422 (= (= lt!1699771 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173219 lambda!173208))))

(declare-fun bs!859438 () Bool)

(assert (= bs!859438 (and d!1394840 b!4523505)))

(assert (=> bs!859438 (= (= lt!1699771 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173219 lambda!173099))))

(declare-fun bs!859440 () Bool)

(assert (= bs!859440 (and d!1394840 b!4524298)))

(assert (=> bs!859440 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173219 lambda!173172))))

(declare-fun bs!859442 () Bool)

(assert (= bs!859442 (and d!1394840 d!1394436)))

(assert (=> bs!859442 (= (= lt!1699771 lt!1700479) (= lambda!173219 lambda!173125))))

(declare-fun bs!859443 () Bool)

(assert (= bs!859443 (and d!1394840 d!1394760)))

(assert (=> bs!859443 (= (= lt!1699771 lt!1700871) (= lambda!173219 lambda!173190))))

(declare-fun bs!859445 () Bool)

(assert (= bs!859445 (and d!1394840 d!1393892)))

(assert (=> bs!859445 (= (= lt!1699771 lt!1699952) (= lambda!173219 lambda!172998))))

(assert (=> bs!859440 (= (= lt!1699771 lt!1700806) (= lambda!173219 lambda!173174))))

(declare-fun bs!859448 () Bool)

(assert (= bs!859448 (and d!1394840 b!4524381)))

(assert (=> bs!859448 (= (= lt!1699771 lt!1700874) (= lambda!173219 lambda!173189))))

(assert (=> bs!859438 (= (= lt!1699771 lt!1700295) (= lambda!173219 lambda!173102))))

(declare-fun bs!859449 () Bool)

(assert (= bs!859449 (and d!1394840 d!1394542)))

(assert (=> bs!859449 (= (= lt!1699771 lt!1700611) (= lambda!173219 lambda!173138))))

(declare-fun bs!859451 () Bool)

(assert (= bs!859451 (and d!1394840 b!4523257)))

(assert (=> bs!859451 (= (= lt!1699771 lt!1700142) (= lambda!173219 lambda!173067))))

(declare-fun bs!859453 () Bool)

(assert (= bs!859453 (and d!1394840 b!4524445)))

(assert (=> bs!859453 (= (= lt!1699771 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173219 lambda!173203))))

(assert (=> bs!859413 (= (= lt!1699771 lt!1700758) (= lambda!173219 lambda!173165))))

(assert (=> bs!859417 (= (= lt!1699771 lt!1700614) (= lambda!173219 lambda!173135))))

(assert (=> bs!859448 (= (= lt!1699771 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173219 lambda!173188))))

(declare-fun bs!859456 () Bool)

(assert (= bs!859456 (and d!1394840 d!1394662)))

(assert (=> bs!859456 (= (= lt!1699771 lt!1699955) (= lambda!173219 lambda!173158))))

(declare-fun bs!859458 () Bool)

(assert (= bs!859458 (and d!1394840 b!4523502)))

(assert (=> bs!859458 (= (= lt!1699771 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173219 lambda!173098))))

(assert (=> bs!859451 (= lambda!173219 lambda!173066)))

(declare-fun bs!859461 () Bool)

(assert (= bs!859461 (and d!1394840 d!1394074)))

(assert (=> bs!859461 (= (= lt!1699771 lt!1700139) (= lambda!173219 lambda!173069))))

(declare-fun bs!859462 () Bool)

(assert (= bs!859462 (and d!1394840 b!4523060)))

(assert (=> bs!859462 (= (= lt!1699771 lt!1699770) (= lambda!173219 lambda!172996))))

(assert (=> bs!859462 (= (= lt!1699771 lt!1699955) (= lambda!173219 lambda!172997))))

(assert (=> d!1394840 true))

(assert (=> d!1394840 (forall!10280 (toList!4343 lt!1699771) lambda!173219)))

(declare-fun lt!1700972 () Unit!95506)

(assert (=> d!1394840 (= lt!1700972 (choose!29605 lt!1699771))))

(assert (=> d!1394840 (= (lemmaContainsAllItsOwnKeys!343 lt!1699771) lt!1700972)))

(declare-fun bs!859466 () Bool)

(assert (= bs!859466 d!1394840))

(declare-fun m!5276159 () Bool)

(assert (=> bs!859466 m!5276159))

(declare-fun m!5276161 () Bool)

(assert (=> bs!859466 m!5276161))

(assert (=> bm!315159 d!1394840))

(declare-fun bs!859470 () Bool)

(declare-fun b!4524496 () Bool)

(assert (= bs!859470 (and b!4524496 d!1394582)))

(declare-fun lambda!173221 () Int)

(assert (=> bs!859470 (not (= lambda!173221 lambda!173145))))

(declare-fun bs!859471 () Bool)

(assert (= bs!859471 (and b!4524496 b!4524061)))

(assert (=> bs!859471 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173221 lambda!173133))))

(declare-fun bs!859472 () Bool)

(assert (= bs!859472 (and b!4524496 d!1394204)))

(assert (=> bs!859472 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700292) (= lambda!173221 lambda!173103))))

(declare-fun bs!859473 () Bool)

(assert (= bs!859473 (and b!4524496 b!4523057)))

(assert (=> bs!859473 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173221 lambda!172995))))

(declare-fun bs!859474 () Bool)

(assert (= bs!859474 (and b!4524496 d!1394260)))

(assert (=> bs!859474 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700142) (= lambda!173221 lambda!173115))))

(declare-fun bs!859475 () Bool)

(assert (= bs!859475 (and b!4524496 b!4524272)))

(assert (=> bs!859475 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173221 lambda!173163))))

(declare-fun bs!859476 () Bool)

(assert (= bs!859476 (and b!4524496 d!1394488)))

(assert (=> bs!859476 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173221 lambda!173131))))

(declare-fun bs!859477 () Bool)

(assert (= bs!859477 (and b!4524496 b!4523867)))

(assert (=> bs!859477 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700482) (= lambda!173221 lambda!173124))))

(declare-fun bs!859478 () Bool)

(assert (= bs!859478 (and b!4524496 d!1394680)))

(assert (=> bs!859478 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700755) (= lambda!173221 lambda!173167))))

(declare-fun bs!859479 () Bool)

(assert (= bs!859479 (and b!4524496 b!4524064)))

(assert (=> bs!859479 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173221 lambda!173134))))

(declare-fun bs!859480 () Bool)

(assert (= bs!859480 (and b!4524496 d!1394808)))

(assert (=> bs!859480 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700921) (= lambda!173221 lambda!173214))))

(declare-fun bs!859481 () Bool)

(assert (= bs!859481 (and b!4524496 b!4522898)))

(assert (=> bs!859481 (not (= lambda!173221 lambda!172949))))

(declare-fun bs!859482 () Bool)

(assert (= bs!859482 (and b!4524496 b!4524295)))

(assert (=> bs!859482 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173221 lambda!173170))))

(declare-fun bs!859483 () Bool)

(assert (= bs!859483 (and b!4524496 b!4524448)))

(assert (=> bs!859483 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700924) (= lambda!173221 lambda!173209))))

(declare-fun bs!859484 () Bool)

(assert (= bs!859484 (and b!4524496 b!4523254)))

(assert (=> bs!859484 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173221 lambda!173063))))

(declare-fun bs!859485 () Bool)

(assert (= bs!859485 (and b!4524496 d!1394704)))

(assert (=> bs!859485 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700803) (= lambda!173221 lambda!173176))))

(declare-fun bs!859486 () Bool)

(assert (= bs!859486 (and b!4524496 d!1394016)))

(assert (=> bs!859486 (not (= lambda!173221 lambda!173040))))

(declare-fun bs!859487 () Bool)

(assert (= bs!859487 (and b!4524496 b!4524378)))

(assert (=> bs!859487 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173221 lambda!173187))))

(assert (=> bs!859477 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173221 lambda!173123))))

(declare-fun bs!859488 () Bool)

(assert (= bs!859488 (and b!4524496 b!4523864)))

(assert (=> bs!859488 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173221 lambda!173122))))

(declare-fun bs!859489 () Bool)

(assert (= bs!859489 (and b!4524496 b!4524269)))

(assert (=> bs!859489 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173221 lambda!173161))))

(assert (=> bs!859483 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173221 lambda!173208))))

(declare-fun bs!859490 () Bool)

(assert (= bs!859490 (and b!4524496 b!4523505)))

(assert (=> bs!859490 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173221 lambda!173099))))

(declare-fun bs!859491 () Bool)

(assert (= bs!859491 (and b!4524496 b!4524298)))

(assert (=> bs!859491 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173221 lambda!173172))))

(declare-fun bs!859492 () Bool)

(assert (= bs!859492 (and b!4524496 d!1394436)))

(assert (=> bs!859492 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700479) (= lambda!173221 lambda!173125))))

(declare-fun bs!859493 () Bool)

(assert (= bs!859493 (and b!4524496 d!1394840)))

(assert (=> bs!859493 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173221 lambda!173219))))

(declare-fun bs!859494 () Bool)

(assert (= bs!859494 (and b!4524496 d!1394760)))

(assert (=> bs!859494 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700871) (= lambda!173221 lambda!173190))))

(declare-fun bs!859495 () Bool)

(assert (= bs!859495 (and b!4524496 d!1393892)))

(assert (=> bs!859495 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699952) (= lambda!173221 lambda!172998))))

(assert (=> bs!859491 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700806) (= lambda!173221 lambda!173174))))

(declare-fun bs!859496 () Bool)

(assert (= bs!859496 (and b!4524496 b!4524381)))

(assert (=> bs!859496 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700874) (= lambda!173221 lambda!173189))))

(assert (=> bs!859490 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700295) (= lambda!173221 lambda!173102))))

(declare-fun bs!859497 () Bool)

(assert (= bs!859497 (and b!4524496 d!1394542)))

(assert (=> bs!859497 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700611) (= lambda!173221 lambda!173138))))

(declare-fun bs!859499 () Bool)

(assert (= bs!859499 (and b!4524496 b!4523257)))

(assert (=> bs!859499 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700142) (= lambda!173221 lambda!173067))))

(declare-fun bs!859501 () Bool)

(assert (= bs!859501 (and b!4524496 b!4524445)))

(assert (=> bs!859501 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173221 lambda!173203))))

(assert (=> bs!859475 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700758) (= lambda!173221 lambda!173165))))

(assert (=> bs!859479 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700614) (= lambda!173221 lambda!173135))))

(assert (=> bs!859496 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173221 lambda!173188))))

(declare-fun bs!859505 () Bool)

(assert (= bs!859505 (and b!4524496 d!1394662)))

(assert (=> bs!859505 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699955) (= lambda!173221 lambda!173158))))

(declare-fun bs!859507 () Bool)

(assert (= bs!859507 (and b!4524496 b!4523502)))

(assert (=> bs!859507 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173221 lambda!173098))))

(assert (=> bs!859499 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173221 lambda!173066))))

(declare-fun bs!859510 () Bool)

(assert (= bs!859510 (and b!4524496 d!1394074)))

(assert (=> bs!859510 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700139) (= lambda!173221 lambda!173069))))

(declare-fun bs!859512 () Bool)

(assert (= bs!859512 (and b!4524496 b!4523060)))

(assert (=> bs!859512 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173221 lambda!172996))))

(assert (=> bs!859512 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699955) (= lambda!173221 lambda!172997))))

(assert (=> b!4524496 true))

(declare-fun bs!859522 () Bool)

(declare-fun b!4524499 () Bool)

(assert (= bs!859522 (and b!4524499 d!1394582)))

(declare-fun lambda!173223 () Int)

(assert (=> bs!859522 (not (= lambda!173223 lambda!173145))))

(declare-fun bs!859523 () Bool)

(assert (= bs!859523 (and b!4524499 b!4524061)))

(assert (=> bs!859523 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173223 lambda!173133))))

(declare-fun bs!859524 () Bool)

(assert (= bs!859524 (and b!4524499 d!1394204)))

(assert (=> bs!859524 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700292) (= lambda!173223 lambda!173103))))

(declare-fun bs!859525 () Bool)

(assert (= bs!859525 (and b!4524499 b!4523057)))

(assert (=> bs!859525 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173223 lambda!172995))))

(declare-fun bs!859526 () Bool)

(assert (= bs!859526 (and b!4524499 d!1394260)))

(assert (=> bs!859526 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700142) (= lambda!173223 lambda!173115))))

(declare-fun bs!859527 () Bool)

(assert (= bs!859527 (and b!4524499 b!4524272)))

(assert (=> bs!859527 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173223 lambda!173163))))

(declare-fun bs!859528 () Bool)

(assert (= bs!859528 (and b!4524499 d!1394488)))

(assert (=> bs!859528 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173223 lambda!173131))))

(declare-fun bs!859529 () Bool)

(assert (= bs!859529 (and b!4524499 b!4523867)))

(assert (=> bs!859529 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700482) (= lambda!173223 lambda!173124))))

(declare-fun bs!859530 () Bool)

(assert (= bs!859530 (and b!4524499 d!1394680)))

(assert (=> bs!859530 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700755) (= lambda!173223 lambda!173167))))

(declare-fun bs!859531 () Bool)

(assert (= bs!859531 (and b!4524499 b!4524064)))

(assert (=> bs!859531 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173223 lambda!173134))))

(declare-fun bs!859532 () Bool)

(assert (= bs!859532 (and b!4524499 b!4524496)))

(assert (=> bs!859532 (= lambda!173223 lambda!173221)))

(declare-fun bs!859533 () Bool)

(assert (= bs!859533 (and b!4524499 d!1394808)))

(assert (=> bs!859533 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700921) (= lambda!173223 lambda!173214))))

(declare-fun bs!859535 () Bool)

(assert (= bs!859535 (and b!4524499 b!4522898)))

(assert (=> bs!859535 (not (= lambda!173223 lambda!172949))))

(declare-fun bs!859536 () Bool)

(assert (= bs!859536 (and b!4524499 b!4524295)))

(assert (=> bs!859536 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173223 lambda!173170))))

(declare-fun bs!859537 () Bool)

(assert (= bs!859537 (and b!4524499 b!4524448)))

(assert (=> bs!859537 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700924) (= lambda!173223 lambda!173209))))

(declare-fun bs!859538 () Bool)

(assert (= bs!859538 (and b!4524499 b!4523254)))

(assert (=> bs!859538 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173223 lambda!173063))))

(declare-fun bs!859539 () Bool)

(assert (= bs!859539 (and b!4524499 d!1394704)))

(assert (=> bs!859539 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700803) (= lambda!173223 lambda!173176))))

(declare-fun bs!859540 () Bool)

(assert (= bs!859540 (and b!4524499 d!1394016)))

(assert (=> bs!859540 (not (= lambda!173223 lambda!173040))))

(declare-fun bs!859541 () Bool)

(assert (= bs!859541 (and b!4524499 b!4524378)))

(assert (=> bs!859541 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173223 lambda!173187))))

(assert (=> bs!859529 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173223 lambda!173123))))

(declare-fun bs!859542 () Bool)

(assert (= bs!859542 (and b!4524499 b!4523864)))

(assert (=> bs!859542 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173223 lambda!173122))))

(declare-fun bs!859543 () Bool)

(assert (= bs!859543 (and b!4524499 b!4524269)))

(assert (=> bs!859543 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173223 lambda!173161))))

(assert (=> bs!859537 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173223 lambda!173208))))

(declare-fun bs!859544 () Bool)

(assert (= bs!859544 (and b!4524499 b!4523505)))

(assert (=> bs!859544 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173223 lambda!173099))))

(declare-fun bs!859545 () Bool)

(assert (= bs!859545 (and b!4524499 b!4524298)))

(assert (=> bs!859545 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173223 lambda!173172))))

(declare-fun bs!859546 () Bool)

(assert (= bs!859546 (and b!4524499 d!1394436)))

(assert (=> bs!859546 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700479) (= lambda!173223 lambda!173125))))

(declare-fun bs!859547 () Bool)

(assert (= bs!859547 (and b!4524499 d!1394840)))

(assert (=> bs!859547 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173223 lambda!173219))))

(declare-fun bs!859548 () Bool)

(assert (= bs!859548 (and b!4524499 d!1394760)))

(assert (=> bs!859548 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700871) (= lambda!173223 lambda!173190))))

(declare-fun bs!859549 () Bool)

(assert (= bs!859549 (and b!4524499 d!1393892)))

(assert (=> bs!859549 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699952) (= lambda!173223 lambda!172998))))

(assert (=> bs!859545 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700806) (= lambda!173223 lambda!173174))))

(declare-fun bs!859550 () Bool)

(assert (= bs!859550 (and b!4524499 b!4524381)))

(assert (=> bs!859550 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700874) (= lambda!173223 lambda!173189))))

(assert (=> bs!859544 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700295) (= lambda!173223 lambda!173102))))

(declare-fun bs!859551 () Bool)

(assert (= bs!859551 (and b!4524499 d!1394542)))

(assert (=> bs!859551 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700611) (= lambda!173223 lambda!173138))))

(declare-fun bs!859552 () Bool)

(assert (= bs!859552 (and b!4524499 b!4523257)))

(assert (=> bs!859552 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700142) (= lambda!173223 lambda!173067))))

(declare-fun bs!859553 () Bool)

(assert (= bs!859553 (and b!4524499 b!4524445)))

(assert (=> bs!859553 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173223 lambda!173203))))

(assert (=> bs!859527 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700758) (= lambda!173223 lambda!173165))))

(assert (=> bs!859531 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700614) (= lambda!173223 lambda!173135))))

(assert (=> bs!859550 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173223 lambda!173188))))

(declare-fun bs!859554 () Bool)

(assert (= bs!859554 (and b!4524499 d!1394662)))

(assert (=> bs!859554 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699955) (= lambda!173223 lambda!173158))))

(declare-fun bs!859555 () Bool)

(assert (= bs!859555 (and b!4524499 b!4523502)))

(assert (=> bs!859555 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173223 lambda!173098))))

(assert (=> bs!859552 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699771) (= lambda!173223 lambda!173066))))

(declare-fun bs!859556 () Bool)

(assert (= bs!859556 (and b!4524499 d!1394074)))

(assert (=> bs!859556 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700139) (= lambda!173223 lambda!173069))))

(declare-fun bs!859557 () Bool)

(assert (= bs!859557 (and b!4524499 b!4523060)))

(assert (=> bs!859557 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699770) (= lambda!173223 lambda!172996))))

(assert (=> bs!859557 (= (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1699955) (= lambda!173223 lambda!172997))))

(assert (=> b!4524499 true))

(declare-fun lambda!173224 () Int)

(assert (=> bs!859522 (not (= lambda!173224 lambda!173145))))

(declare-fun lt!1700983 () ListMap!3605)

(assert (=> bs!859523 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173224 lambda!173133))))

(assert (=> bs!859524 (= (= lt!1700983 lt!1700292) (= lambda!173224 lambda!173103))))

(assert (=> bs!859525 (= (= lt!1700983 lt!1699770) (= lambda!173224 lambda!172995))))

(assert (=> bs!859526 (= (= lt!1700983 lt!1700142) (= lambda!173224 lambda!173115))))

(assert (=> bs!859527 (= (= lt!1700983 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173224 lambda!173163))))

(assert (=> bs!859528 (= (= lt!1700983 lt!1699770) (= lambda!173224 lambda!173131))))

(assert (=> bs!859529 (= (= lt!1700983 lt!1700482) (= lambda!173224 lambda!173124))))

(assert (=> bs!859530 (= (= lt!1700983 lt!1700755) (= lambda!173224 lambda!173167))))

(assert (=> bs!859531 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173224 lambda!173134))))

(assert (=> bs!859532 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (= lambda!173224 lambda!173221))))

(assert (=> bs!859533 (= (= lt!1700983 lt!1700921) (= lambda!173224 lambda!173214))))

(assert (=> bs!859535 (not (= lambda!173224 lambda!172949))))

(assert (=> bs!859536 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173224 lambda!173170))))

(assert (=> bs!859537 (= (= lt!1700983 lt!1700924) (= lambda!173224 lambda!173209))))

(assert (=> bs!859538 (= (= lt!1700983 lt!1699771) (= lambda!173224 lambda!173063))))

(assert (=> bs!859539 (= (= lt!1700983 lt!1700803) (= lambda!173224 lambda!173176))))

(assert (=> bs!859540 (not (= lambda!173224 lambda!173040))))

(assert (=> bs!859541 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173224 lambda!173187))))

(assert (=> b!4524499 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (= lambda!173224 lambda!173223))))

(assert (=> bs!859529 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173224 lambda!173123))))

(assert (=> bs!859542 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173224 lambda!173122))))

(assert (=> bs!859543 (= (= lt!1700983 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173224 lambda!173161))))

(assert (=> bs!859537 (= (= lt!1700983 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173224 lambda!173208))))

(assert (=> bs!859544 (= (= lt!1700983 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173224 lambda!173099))))

(assert (=> bs!859545 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173224 lambda!173172))))

(assert (=> bs!859546 (= (= lt!1700983 lt!1700479) (= lambda!173224 lambda!173125))))

(assert (=> bs!859547 (= (= lt!1700983 lt!1699771) (= lambda!173224 lambda!173219))))

(assert (=> bs!859548 (= (= lt!1700983 lt!1700871) (= lambda!173224 lambda!173190))))

(assert (=> bs!859549 (= (= lt!1700983 lt!1699952) (= lambda!173224 lambda!172998))))

(assert (=> bs!859545 (= (= lt!1700983 lt!1700806) (= lambda!173224 lambda!173174))))

(assert (=> bs!859550 (= (= lt!1700983 lt!1700874) (= lambda!173224 lambda!173189))))

(assert (=> bs!859544 (= (= lt!1700983 lt!1700295) (= lambda!173224 lambda!173102))))

(assert (=> bs!859551 (= (= lt!1700983 lt!1700611) (= lambda!173224 lambda!173138))))

(assert (=> bs!859552 (= (= lt!1700983 lt!1700142) (= lambda!173224 lambda!173067))))

(assert (=> bs!859553 (= (= lt!1700983 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173224 lambda!173203))))

(assert (=> bs!859527 (= (= lt!1700983 lt!1700758) (= lambda!173224 lambda!173165))))

(assert (=> bs!859531 (= (= lt!1700983 lt!1700614) (= lambda!173224 lambda!173135))))

(assert (=> bs!859550 (= (= lt!1700983 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173224 lambda!173188))))

(assert (=> bs!859554 (= (= lt!1700983 lt!1699955) (= lambda!173224 lambda!173158))))

(assert (=> bs!859555 (= (= lt!1700983 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173224 lambda!173098))))

(assert (=> bs!859552 (= (= lt!1700983 lt!1699771) (= lambda!173224 lambda!173066))))

(assert (=> bs!859556 (= (= lt!1700983 lt!1700139) (= lambda!173224 lambda!173069))))

(assert (=> bs!859557 (= (= lt!1700983 lt!1699770) (= lambda!173224 lambda!172996))))

(assert (=> bs!859557 (= (= lt!1700983 lt!1699955) (= lambda!173224 lambda!172997))))

(assert (=> b!4524499 true))

(declare-fun bs!859581 () Bool)

(declare-fun d!1394842 () Bool)

(assert (= bs!859581 (and d!1394842 d!1394582)))

(declare-fun lambda!173226 () Int)

(assert (=> bs!859581 (not (= lambda!173226 lambda!173145))))

(declare-fun bs!859583 () Bool)

(assert (= bs!859583 (and d!1394842 b!4524061)))

(declare-fun lt!1700980 () ListMap!3605)

(assert (=> bs!859583 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173226 lambda!173133))))

(declare-fun bs!859585 () Bool)

(assert (= bs!859585 (and d!1394842 d!1394204)))

(assert (=> bs!859585 (= (= lt!1700980 lt!1700292) (= lambda!173226 lambda!173103))))

(declare-fun bs!859586 () Bool)

(assert (= bs!859586 (and d!1394842 b!4523057)))

(assert (=> bs!859586 (= (= lt!1700980 lt!1699770) (= lambda!173226 lambda!172995))))

(declare-fun bs!859587 () Bool)

(assert (= bs!859587 (and d!1394842 d!1394260)))

(assert (=> bs!859587 (= (= lt!1700980 lt!1700142) (= lambda!173226 lambda!173115))))

(declare-fun bs!859588 () Bool)

(assert (= bs!859588 (and d!1394842 b!4524272)))

(assert (=> bs!859588 (= (= lt!1700980 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173226 lambda!173163))))

(declare-fun bs!859590 () Bool)

(assert (= bs!859590 (and d!1394842 b!4523867)))

(assert (=> bs!859590 (= (= lt!1700980 lt!1700482) (= lambda!173226 lambda!173124))))

(declare-fun bs!859592 () Bool)

(assert (= bs!859592 (and d!1394842 d!1394680)))

(assert (=> bs!859592 (= (= lt!1700980 lt!1700755) (= lambda!173226 lambda!173167))))

(declare-fun bs!859594 () Bool)

(assert (= bs!859594 (and d!1394842 b!4524064)))

(assert (=> bs!859594 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699796)))) (= lambda!173226 lambda!173134))))

(declare-fun bs!859596 () Bool)

(assert (= bs!859596 (and d!1394842 b!4524496)))

(assert (=> bs!859596 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (= lambda!173226 lambda!173221))))

(declare-fun bs!859597 () Bool)

(assert (= bs!859597 (and d!1394842 d!1394808)))

(assert (=> bs!859597 (= (= lt!1700980 lt!1700921) (= lambda!173226 lambda!173214))))

(declare-fun bs!859598 () Bool)

(assert (= bs!859598 (and d!1394842 b!4522898)))

(assert (=> bs!859598 (not (= lambda!173226 lambda!172949))))

(declare-fun bs!859599 () Bool)

(assert (= bs!859599 (and d!1394842 b!4524295)))

(assert (=> bs!859599 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173226 lambda!173170))))

(declare-fun bs!859600 () Bool)

(assert (= bs!859600 (and d!1394842 b!4524448)))

(assert (=> bs!859600 (= (= lt!1700980 lt!1700924) (= lambda!173226 lambda!173209))))

(declare-fun bs!859601 () Bool)

(assert (= bs!859601 (and d!1394842 b!4523254)))

(assert (=> bs!859601 (= (= lt!1700980 lt!1699771) (= lambda!173226 lambda!173063))))

(declare-fun bs!859602 () Bool)

(assert (= bs!859602 (and d!1394842 d!1394704)))

(assert (=> bs!859602 (= (= lt!1700980 lt!1700803) (= lambda!173226 lambda!173176))))

(declare-fun bs!859603 () Bool)

(assert (= bs!859603 (and d!1394842 d!1394016)))

(assert (=> bs!859603 (not (= lambda!173226 lambda!173040))))

(declare-fun bs!859605 () Bool)

(assert (= bs!859605 (and d!1394842 b!4524378)))

(assert (=> bs!859605 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173226 lambda!173187))))

(declare-fun bs!859607 () Bool)

(assert (= bs!859607 (and d!1394842 b!4524499)))

(assert (=> bs!859607 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (= lambda!173226 lambda!173223))))

(assert (=> bs!859590 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173226 lambda!173123))))

(declare-fun bs!859609 () Bool)

(assert (= bs!859609 (and d!1394842 b!4523864)))

(assert (=> bs!859609 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 (+!1552 lt!1699792 lt!1699794))))) (= lambda!173226 lambda!173122))))

(declare-fun bs!859611 () Bool)

(assert (= bs!859611 (and d!1394842 b!4524269)))

(assert (=> bs!859611 (= (= lt!1700980 (+!1553 lt!1699770 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173226 lambda!173161))))

(assert (=> bs!859600 (= (= lt!1700980 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173226 lambda!173208))))

(declare-fun bs!859614 () Bool)

(assert (= bs!859614 (and d!1394842 b!4523505)))

(assert (=> bs!859614 (= (= lt!1700980 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173226 lambda!173099))))

(declare-fun bs!859616 () Bool)

(assert (= bs!859616 (and d!1394842 b!4524298)))

(assert (=> bs!859616 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lt!1699795)))) (= lambda!173226 lambda!173172))))

(declare-fun bs!859618 () Bool)

(assert (= bs!859618 (and d!1394842 d!1394436)))

(assert (=> bs!859618 (= (= lt!1700980 lt!1700479) (= lambda!173226 lambda!173125))))

(declare-fun bs!859620 () Bool)

(assert (= bs!859620 (and d!1394842 d!1394840)))

(assert (=> bs!859620 (= (= lt!1700980 lt!1699771) (= lambda!173226 lambda!173219))))

(declare-fun bs!859622 () Bool)

(assert (= bs!859622 (and d!1394842 d!1394760)))

(assert (=> bs!859622 (= (= lt!1700980 lt!1700871) (= lambda!173226 lambda!173190))))

(declare-fun bs!859624 () Bool)

(assert (= bs!859624 (and d!1394842 d!1393892)))

(assert (=> bs!859624 (= (= lt!1700980 lt!1699952) (= lambda!173226 lambda!172998))))

(assert (=> bs!859616 (= (= lt!1700980 lt!1700806) (= lambda!173226 lambda!173174))))

(assert (=> bs!859607 (= (= lt!1700980 lt!1700983) (= lambda!173226 lambda!173224))))

(declare-fun bs!859627 () Bool)

(assert (= bs!859627 (and d!1394842 d!1394488)))

(assert (=> bs!859627 (= (= lt!1700980 lt!1699770) (= lambda!173226 lambda!173131))))

(declare-fun bs!859629 () Bool)

(assert (= bs!859629 (and d!1394842 b!4524381)))

(assert (=> bs!859629 (= (= lt!1700980 lt!1700874) (= lambda!173226 lambda!173189))))

(assert (=> bs!859614 (= (= lt!1700980 lt!1700295) (= lambda!173226 lambda!173102))))

(declare-fun bs!859632 () Bool)

(assert (= bs!859632 (and d!1394842 d!1394542)))

(assert (=> bs!859632 (= (= lt!1700980 lt!1700611) (= lambda!173226 lambda!173138))))

(declare-fun bs!859633 () Bool)

(assert (= bs!859633 (and d!1394842 b!4523257)))

(assert (=> bs!859633 (= (= lt!1700980 lt!1700142) (= lambda!173226 lambda!173067))))

(declare-fun bs!859634 () Bool)

(assert (= bs!859634 (and d!1394842 b!4524445)))

(assert (=> bs!859634 (= (= lt!1700980 (extractMap!1224 (t!357755 (t!357755 (toList!4344 lm!1477))))) (= lambda!173226 lambda!173203))))

(assert (=> bs!859588 (= (= lt!1700980 lt!1700758) (= lambda!173226 lambda!173165))))

(assert (=> bs!859594 (= (= lt!1700980 lt!1700614) (= lambda!173226 lambda!173135))))

(assert (=> bs!859629 (= (= lt!1700980 (extractMap!1224 (t!357755 (toList!4344 lm!1477)))) (= lambda!173226 lambda!173188))))

(declare-fun bs!859637 () Bool)

(assert (= bs!859637 (and d!1394842 d!1394662)))

(assert (=> bs!859637 (= (= lt!1700980 lt!1699955) (= lambda!173226 lambda!173158))))

(declare-fun bs!859639 () Bool)

(assert (= bs!859639 (and d!1394842 b!4523502)))

(assert (=> bs!859639 (= (= lt!1700980 (+!1553 lt!1699771 (h!56527 (_2!28848 lt!1699794)))) (= lambda!173226 lambda!173098))))

(assert (=> bs!859633 (= (= lt!1700980 lt!1699771) (= lambda!173226 lambda!173066))))

(declare-fun bs!859642 () Bool)

(assert (= bs!859642 (and d!1394842 d!1394074)))

(assert (=> bs!859642 (= (= lt!1700980 lt!1700139) (= lambda!173226 lambda!173069))))

(declare-fun bs!859644 () Bool)

(assert (= bs!859644 (and d!1394842 b!4523060)))

(assert (=> bs!859644 (= (= lt!1700980 lt!1699770) (= lambda!173226 lambda!172996))))

(assert (=> bs!859644 (= (= lt!1700980 lt!1699955) (= lambda!173226 lambda!172997))))

(assert (=> d!1394842 true))

(declare-fun call!315291 () Bool)

(declare-fun c!772295 () Bool)

(declare-fun bm!315285 () Bool)

(assert (=> bm!315285 (= call!315291 (forall!10280 (ite c!772295 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699792))))) (ite c!772295 lambda!173221 lambda!173224)))))

(declare-fun e!2819006 () ListMap!3605)

(assert (=> b!4524496 (= e!2819006 (extractMap!1224 (t!357755 (toList!4344 lt!1699792))))))

(declare-fun lt!1700990 () Unit!95506)

(declare-fun call!315290 () Unit!95506)

(assert (=> b!4524496 (= lt!1700990 call!315290)))

(declare-fun call!315292 () Bool)

(assert (=> b!4524496 call!315292))

(declare-fun lt!1700987 () Unit!95506)

(assert (=> b!4524496 (= lt!1700987 lt!1700990)))

(assert (=> b!4524496 call!315291))

(declare-fun lt!1700992 () Unit!95506)

(declare-fun Unit!95812 () Unit!95506)

(assert (=> b!4524496 (= lt!1700992 Unit!95812)))

(declare-fun bm!315286 () Bool)

(assert (=> bm!315286 (= call!315292 (forall!10280 (ite c!772295 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) (_2!28848 (h!56528 (toList!4344 lt!1699792)))) (ite c!772295 lambda!173221 lambda!173224)))))

(declare-fun b!4524497 () Bool)

(declare-fun res!1883576 () Bool)

(declare-fun e!2819004 () Bool)

(assert (=> b!4524497 (=> (not res!1883576) (not e!2819004))))

(assert (=> b!4524497 (= res!1883576 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lambda!173226))))

(declare-fun b!4524498 () Bool)

(declare-fun e!2819005 () Bool)

(assert (=> b!4524498 (= e!2819005 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lambda!173224))))

(declare-fun bm!315287 () Bool)

(assert (=> bm!315287 (= call!315290 (lemmaContainsAllItsOwnKeys!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))))))

(assert (=> b!4524499 (= e!2819006 lt!1700983)))

(declare-fun lt!1700982 () ListMap!3605)

(assert (=> b!4524499 (= lt!1700982 (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))))))

(assert (=> b!4524499 (= lt!1700983 (addToMapMapFromBucket!695 (t!357754 (_2!28848 (h!56528 (toList!4344 lt!1699792)))) (+!1553 (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))))

(declare-fun lt!1700991 () Unit!95506)

(assert (=> b!4524499 (= lt!1700991 call!315290)))

(assert (=> b!4524499 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lambda!173223)))

(declare-fun lt!1700993 () Unit!95506)

(assert (=> b!4524499 (= lt!1700993 lt!1700991)))

(assert (=> b!4524499 (forall!10280 (toList!4343 lt!1700982) lambda!173224)))

(declare-fun lt!1700974 () Unit!95506)

(declare-fun Unit!95813 () Unit!95506)

(assert (=> b!4524499 (= lt!1700974 Unit!95813)))

(assert (=> b!4524499 call!315291))

(declare-fun lt!1700985 () Unit!95506)

(declare-fun Unit!95814 () Unit!95506)

(assert (=> b!4524499 (= lt!1700985 Unit!95814)))

(declare-fun lt!1700973 () Unit!95506)

(declare-fun Unit!95815 () Unit!95506)

(assert (=> b!4524499 (= lt!1700973 Unit!95815)))

(declare-fun lt!1700976 () Unit!95506)

(assert (=> b!4524499 (= lt!1700976 (forallContained!2532 (toList!4343 lt!1700982) lambda!173224 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))))))

(assert (=> b!4524499 (contains!13409 lt!1700982 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))))))

(declare-fun lt!1700975 () Unit!95506)

(declare-fun Unit!95816 () Unit!95506)

(assert (=> b!4524499 (= lt!1700975 Unit!95816)))

(assert (=> b!4524499 (contains!13409 lt!1700983 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))))))

(declare-fun lt!1700988 () Unit!95506)

(declare-fun Unit!95817 () Unit!95506)

(assert (=> b!4524499 (= lt!1700988 Unit!95817)))

(assert (=> b!4524499 call!315292))

(declare-fun lt!1700977 () Unit!95506)

(declare-fun Unit!95818 () Unit!95506)

(assert (=> b!4524499 (= lt!1700977 Unit!95818)))

(assert (=> b!4524499 (forall!10280 (toList!4343 lt!1700982) lambda!173224)))

(declare-fun lt!1700979 () Unit!95506)

(declare-fun Unit!95819 () Unit!95506)

(assert (=> b!4524499 (= lt!1700979 Unit!95819)))

(declare-fun lt!1700989 () Unit!95506)

(declare-fun Unit!95820 () Unit!95506)

(assert (=> b!4524499 (= lt!1700989 Unit!95820)))

(declare-fun lt!1700984 () Unit!95506)

(assert (=> b!4524499 (= lt!1700984 (addForallContainsKeyThenBeforeAdding!343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1700983 (_1!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792))))) (_2!28847 (h!56527 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))))

(assert (=> b!4524499 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lambda!173224)))

(declare-fun lt!1700978 () Unit!95506)

(assert (=> b!4524499 (= lt!1700978 lt!1700984)))

(assert (=> b!4524499 (forall!10280 (toList!4343 (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lambda!173224)))

(declare-fun lt!1700981 () Unit!95506)

(declare-fun Unit!95821 () Unit!95506)

(assert (=> b!4524499 (= lt!1700981 Unit!95821)))

(declare-fun res!1883574 () Bool)

(assert (=> b!4524499 (= res!1883574 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699792))) lambda!173224))))

(assert (=> b!4524499 (=> (not res!1883574) (not e!2819005))))

(assert (=> b!4524499 e!2819005))

(declare-fun lt!1700986 () Unit!95506)

(declare-fun Unit!95822 () Unit!95506)

(assert (=> b!4524499 (= lt!1700986 Unit!95822)))

(assert (=> d!1394842 e!2819004))

(declare-fun res!1883575 () Bool)

(assert (=> d!1394842 (=> (not res!1883575) (not e!2819004))))

(assert (=> d!1394842 (= res!1883575 (forall!10280 (_2!28848 (h!56528 (toList!4344 lt!1699792))) lambda!173226))))

(assert (=> d!1394842 (= lt!1700980 e!2819006)))

(assert (=> d!1394842 (= c!772295 ((_ is Nil!50668) (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(assert (=> d!1394842 (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699792))))))

(assert (=> d!1394842 (= (addToMapMapFromBucket!695 (_2!28848 (h!56528 (toList!4344 lt!1699792))) (extractMap!1224 (t!357755 (toList!4344 lt!1699792)))) lt!1700980)))

(declare-fun b!4524500 () Bool)

(assert (=> b!4524500 (= e!2819004 (invariantList!1023 (toList!4343 lt!1700980)))))

(assert (= (and d!1394842 c!772295) b!4524496))

(assert (= (and d!1394842 (not c!772295)) b!4524499))

(assert (= (and b!4524499 res!1883574) b!4524498))

(assert (= (or b!4524496 b!4524499) bm!315285))

(assert (= (or b!4524496 b!4524499) bm!315286))

(assert (= (or b!4524496 b!4524499) bm!315287))

(assert (= (and d!1394842 res!1883575) b!4524497))

(assert (= (and b!4524497 res!1883576) b!4524500))

(declare-fun m!5276261 () Bool)

(assert (=> b!4524499 m!5276261))

(declare-fun m!5276263 () Bool)

(assert (=> b!4524499 m!5276263))

(declare-fun m!5276265 () Bool)

(assert (=> b!4524499 m!5276265))

(declare-fun m!5276267 () Bool)

(assert (=> b!4524499 m!5276267))

(assert (=> b!4524499 m!5276267))

(declare-fun m!5276269 () Bool)

(assert (=> b!4524499 m!5276269))

(assert (=> b!4524499 m!5276269))

(declare-fun m!5276271 () Bool)

(assert (=> b!4524499 m!5276271))

(assert (=> b!4524499 m!5273979))

(declare-fun m!5276273 () Bool)

(assert (=> b!4524499 m!5276273))

(assert (=> b!4524499 m!5273979))

(assert (=> b!4524499 m!5276263))

(declare-fun m!5276275 () Bool)

(assert (=> b!4524499 m!5276275))

(declare-fun m!5276277 () Bool)

(assert (=> b!4524499 m!5276277))

(declare-fun m!5276279 () Bool)

(assert (=> b!4524499 m!5276279))

(declare-fun m!5276281 () Bool)

(assert (=> b!4524497 m!5276281))

(assert (=> b!4524498 m!5276267))

(declare-fun m!5276283 () Bool)

(assert (=> bm!315286 m!5276283))

(assert (=> bm!315287 m!5273979))

(declare-fun m!5276285 () Bool)

(assert (=> bm!315287 m!5276285))

(declare-fun m!5276287 () Bool)

(assert (=> bm!315285 m!5276287))

(declare-fun m!5276289 () Bool)

(assert (=> d!1394842 m!5276289))

(declare-fun m!5276291 () Bool)

(assert (=> d!1394842 m!5276291))

(declare-fun m!5276293 () Bool)

(assert (=> b!4524500 m!5276293))

(assert (=> b!4523327 d!1394842))

(declare-fun bs!859653 () Bool)

(declare-fun d!1394866 () Bool)

(assert (= bs!859653 (and d!1394866 d!1394104)))

(declare-fun lambda!173229 () Int)

(assert (=> bs!859653 (= lambda!173229 lambda!173072)))

(declare-fun bs!859654 () Bool)

(assert (= bs!859654 (and d!1394866 d!1394024)))

(assert (=> bs!859654 (= lambda!173229 lambda!173050)))

(declare-fun bs!859655 () Bool)

(assert (= bs!859655 (and d!1394866 d!1394100)))

(assert (=> bs!859655 (= lambda!173229 lambda!173071)))

(declare-fun bs!859656 () Bool)

(assert (= bs!859656 (and d!1394866 d!1394070)))

(assert (=> bs!859656 (not (= lambda!173229 lambda!173062))))

(declare-fun bs!859657 () Bool)

(assert (= bs!859657 (and d!1394866 d!1394110)))

(assert (=> bs!859657 (= lambda!173229 lambda!173076)))

(declare-fun bs!859658 () Bool)

(assert (= bs!859658 (and d!1394866 d!1394826)))

(assert (=> bs!859658 (= lambda!173229 lambda!173217)))

(declare-fun bs!859659 () Bool)

(assert (= bs!859659 (and d!1394866 d!1394526)))

(assert (=> bs!859659 (= lambda!173229 lambda!173132)))

(declare-fun bs!859660 () Bool)

(assert (= bs!859660 (and d!1394866 start!448016)))

(assert (=> bs!859660 (= lambda!173229 lambda!172947)))

(declare-fun bs!859661 () Bool)

(assert (= bs!859661 (and d!1394866 d!1394010)))

(assert (=> bs!859661 (= lambda!173229 lambda!173036)))

(declare-fun bs!859662 () Bool)

(assert (= bs!859662 (and d!1394866 b!4522898)))

(assert (=> bs!859662 (not (= lambda!173229 lambda!172948))))

(declare-fun bs!859663 () Bool)

(assert (= bs!859663 (and d!1394866 d!1394080)))

(assert (=> bs!859663 (= lambda!173229 lambda!173070)))

(declare-fun bs!859664 () Bool)

(assert (= bs!859664 (and d!1394866 d!1394038)))

(assert (=> bs!859664 (= lambda!173229 lambda!173051)))

(declare-fun bs!859665 () Bool)

(assert (= bs!859665 (and d!1394866 d!1394452)))

(assert (=> bs!859665 (= lambda!173229 lambda!173126)))

(declare-fun bs!859666 () Bool)

(assert (= bs!859666 (and d!1394866 d!1394106)))

(assert (=> bs!859666 (= lambda!173229 lambda!173075)))

(declare-fun bs!859667 () Bool)

(assert (= bs!859667 (and d!1394866 d!1394122)))

(assert (=> bs!859667 (= lambda!173229 lambda!173079)))

(declare-fun bs!859668 () Bool)

(assert (= bs!859668 (and d!1394866 d!1393990)))

(assert (=> bs!859668 (= lambda!173229 lambda!173001)))

(declare-fun bs!859669 () Bool)

(assert (= bs!859669 (and d!1394866 d!1394554)))

(assert (=> bs!859669 (= lambda!173229 lambda!173141)))

(declare-fun bs!859670 () Bool)

(assert (= bs!859670 (and d!1394866 d!1394054)))

(assert (=> bs!859670 (= lambda!173229 lambda!173059)))

(declare-fun bs!859671 () Bool)

(assert (= bs!859671 (and d!1394866 d!1394710)))

(assert (=> bs!859671 (= lambda!173229 lambda!173177)))

(declare-fun lt!1701030 () ListMap!3605)

(assert (=> d!1394866 (invariantList!1023 (toList!4343 lt!1701030))))

(declare-fun e!2819027 () ListMap!3605)

(assert (=> d!1394866 (= lt!1701030 e!2819027)))

(declare-fun c!772301 () Bool)

(assert (=> d!1394866 (= c!772301 ((_ is Cons!50669) (t!357755 (toList!4344 lt!1699792))))))

(assert (=> d!1394866 (forall!10281 (t!357755 (toList!4344 lt!1699792)) lambda!173229)))

(assert (=> d!1394866 (= (extractMap!1224 (t!357755 (toList!4344 lt!1699792))) lt!1701030)))

(declare-fun b!4524528 () Bool)

(assert (=> b!4524528 (= e!2819027 (addToMapMapFromBucket!695 (_2!28848 (h!56528 (t!357755 (toList!4344 lt!1699792)))) (extractMap!1224 (t!357755 (t!357755 (toList!4344 lt!1699792))))))))

(declare-fun b!4524529 () Bool)

(assert (=> b!4524529 (= e!2819027 (ListMap!3606 Nil!50668))))

(assert (= (and d!1394866 c!772301) b!4524528))

(assert (= (and d!1394866 (not c!772301)) b!4524529))

(declare-fun m!5276295 () Bool)

(assert (=> d!1394866 m!5276295))

(declare-fun m!5276297 () Bool)

(assert (=> d!1394866 m!5276297))

(declare-fun m!5276299 () Bool)

(assert (=> b!4524528 m!5276299))

(assert (=> b!4524528 m!5276299))

(declare-fun m!5276301 () Bool)

(assert (=> b!4524528 m!5276301))

(assert (=> b!4523327 d!1394866))

(declare-fun d!1394868 () Bool)

(assert (=> d!1394868 (= (invariantList!1023 (toList!4343 lt!1700192)) (noDuplicatedKeys!264 (toList!4343 lt!1700192)))))

(declare-fun bs!859672 () Bool)

(assert (= bs!859672 d!1394868))

(declare-fun m!5276303 () Bool)

(assert (=> bs!859672 m!5276303))

(assert (=> d!1394100 d!1394868))

(declare-fun d!1394870 () Bool)

(declare-fun res!1883594 () Bool)

(declare-fun e!2819028 () Bool)

(assert (=> d!1394870 (=> res!1883594 e!2819028)))

(assert (=> d!1394870 (= res!1883594 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394870 (= (forall!10281 (toList!4344 lm!1477) lambda!173071) e!2819028)))

(declare-fun b!4524530 () Bool)

(declare-fun e!2819029 () Bool)

(assert (=> b!4524530 (= e!2819028 e!2819029)))

(declare-fun res!1883595 () Bool)

(assert (=> b!4524530 (=> (not res!1883595) (not e!2819029))))

(assert (=> b!4524530 (= res!1883595 (dynLambda!21171 lambda!173071 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4524531 () Bool)

(assert (=> b!4524531 (= e!2819029 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173071))))

(assert (= (and d!1394870 (not res!1883594)) b!4524530))

(assert (= (and b!4524530 res!1883595) b!4524531))

(declare-fun b_lambda!155447 () Bool)

(assert (=> (not b_lambda!155447) (not b!4524530)))

(declare-fun m!5276305 () Bool)

(assert (=> b!4524530 m!5276305))

(declare-fun m!5276307 () Bool)

(assert (=> b!4524531 m!5276307))

(assert (=> d!1394100 d!1394870))

(declare-fun d!1394872 () Bool)

(declare-fun e!2819030 () Bool)

(assert (=> d!1394872 e!2819030))

(declare-fun res!1883596 () Bool)

(assert (=> d!1394872 (=> res!1883596 e!2819030)))

(declare-fun lt!1701034 () Bool)

(assert (=> d!1394872 (= res!1883596 (not lt!1701034))))

(declare-fun lt!1701033 () Bool)

(assert (=> d!1394872 (= lt!1701034 lt!1701033)))

(declare-fun lt!1701031 () Unit!95506)

(declare-fun e!2819031 () Unit!95506)

(assert (=> d!1394872 (= lt!1701031 e!2819031)))

(declare-fun c!772302 () Bool)

(assert (=> d!1394872 (= c!772302 lt!1701033)))

(assert (=> d!1394872 (= lt!1701033 (containsKey!1802 (toList!4344 lm!1477) (hash!2829 hashF!1107 key!3287)))))

(assert (=> d!1394872 (= (contains!13408 lm!1477 (hash!2829 hashF!1107 key!3287)) lt!1701034)))

(declare-fun b!4524532 () Bool)

(declare-fun lt!1701032 () Unit!95506)

(assert (=> b!4524532 (= e!2819031 lt!1701032)))

(assert (=> b!4524532 (= lt!1701032 (lemmaContainsKeyImpliesGetValueByKeyDefined!1007 (toList!4344 lm!1477) (hash!2829 hashF!1107 key!3287)))))

(assert (=> b!4524532 (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) (hash!2829 hashF!1107 key!3287)))))

(declare-fun b!4524533 () Bool)

(declare-fun Unit!95823 () Unit!95506)

(assert (=> b!4524533 (= e!2819031 Unit!95823)))

(declare-fun b!4524534 () Bool)

(assert (=> b!4524534 (= e!2819030 (isDefined!8414 (getValueByKey!1104 (toList!4344 lm!1477) (hash!2829 hashF!1107 key!3287))))))

(assert (= (and d!1394872 c!772302) b!4524532))

(assert (= (and d!1394872 (not c!772302)) b!4524533))

(assert (= (and d!1394872 (not res!1883596)) b!4524534))

(assert (=> d!1394872 m!5273157))

(declare-fun m!5276309 () Bool)

(assert (=> d!1394872 m!5276309))

(assert (=> b!4524532 m!5273157))

(declare-fun m!5276311 () Bool)

(assert (=> b!4524532 m!5276311))

(assert (=> b!4524532 m!5273157))

(declare-fun m!5276313 () Bool)

(assert (=> b!4524532 m!5276313))

(assert (=> b!4524532 m!5276313))

(declare-fun m!5276315 () Bool)

(assert (=> b!4524532 m!5276315))

(assert (=> b!4524534 m!5273157))

(assert (=> b!4524534 m!5276313))

(assert (=> b!4524534 m!5276313))

(assert (=> b!4524534 m!5276315))

(assert (=> d!1394010 d!1394872))

(assert (=> d!1394010 d!1394112))

(declare-fun d!1394874 () Bool)

(assert (=> d!1394874 (contains!13408 lm!1477 (hash!2829 hashF!1107 key!3287))))

(assert (=> d!1394874 true))

(declare-fun _$27!1242 () Unit!95506)

(assert (=> d!1394874 (= (choose!29585 lm!1477 key!3287 hashF!1107) _$27!1242)))

(declare-fun bs!859700 () Bool)

(assert (= bs!859700 d!1394874))

(assert (=> bs!859700 m!5273157))

(assert (=> bs!859700 m!5273157))

(assert (=> bs!859700 m!5273571))

(assert (=> d!1394010 d!1394874))

(declare-fun d!1394876 () Bool)

(declare-fun res!1883597 () Bool)

(declare-fun e!2819032 () Bool)

(assert (=> d!1394876 (=> res!1883597 e!2819032)))

(assert (=> d!1394876 (= res!1883597 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394876 (= (forall!10281 (toList!4344 lm!1477) lambda!173036) e!2819032)))

(declare-fun b!4524535 () Bool)

(declare-fun e!2819033 () Bool)

(assert (=> b!4524535 (= e!2819032 e!2819033)))

(declare-fun res!1883598 () Bool)

(assert (=> b!4524535 (=> (not res!1883598) (not e!2819033))))

(assert (=> b!4524535 (= res!1883598 (dynLambda!21171 lambda!173036 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4524536 () Bool)

(assert (=> b!4524536 (= e!2819033 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!173036))))

(assert (= (and d!1394876 (not res!1883597)) b!4524535))

(assert (= (and b!4524535 res!1883598) b!4524536))

(declare-fun b_lambda!155449 () Bool)

(assert (=> (not b_lambda!155449) (not b!4524535)))

(declare-fun m!5276317 () Bool)

(assert (=> b!4524535 m!5276317))

(declare-fun m!5276319 () Bool)

(assert (=> b!4524536 m!5276319))

(assert (=> d!1394010 d!1394876))

(declare-fun d!1394878 () Bool)

(assert (=> d!1394878 (dynLambda!21171 lambda!172948 (h!56528 (toList!4344 lm!1477)))))

(assert (=> d!1394878 true))

(declare-fun _$7!1855 () Unit!95506)

(assert (=> d!1394878 (= (choose!29581 (toList!4344 lm!1477) lambda!172948 (h!56528 (toList!4344 lm!1477))) _$7!1855)))

(declare-fun b_lambda!155451 () Bool)

(assert (=> (not b_lambda!155451) (not d!1394878)))

(declare-fun bs!859705 () Bool)

(assert (= bs!859705 d!1394878))

(assert (=> bs!859705 m!5273531))

(assert (=> d!1393996 d!1394878))

(declare-fun d!1394880 () Bool)

(declare-fun res!1883599 () Bool)

(declare-fun e!2819034 () Bool)

(assert (=> d!1394880 (=> res!1883599 e!2819034)))

(assert (=> d!1394880 (= res!1883599 ((_ is Nil!50669) (toList!4344 lm!1477)))))

(assert (=> d!1394880 (= (forall!10281 (toList!4344 lm!1477) lambda!172948) e!2819034)))

(declare-fun b!4524537 () Bool)

(declare-fun e!2819035 () Bool)

(assert (=> b!4524537 (= e!2819034 e!2819035)))

(declare-fun res!1883600 () Bool)

(assert (=> b!4524537 (=> (not res!1883600) (not e!2819035))))

(assert (=> b!4524537 (= res!1883600 (dynLambda!21171 lambda!172948 (h!56528 (toList!4344 lm!1477))))))

(declare-fun b!4524538 () Bool)

(assert (=> b!4524538 (= e!2819035 (forall!10281 (t!357755 (toList!4344 lm!1477)) lambda!172948))))

(assert (= (and d!1394880 (not res!1883599)) b!4524537))

(assert (= (and b!4524537 res!1883600) b!4524538))

(declare-fun b_lambda!155453 () Bool)

(assert (=> (not b_lambda!155453) (not b!4524537)))

(assert (=> b!4524537 m!5273531))

(declare-fun m!5276321 () Bool)

(assert (=> b!4524538 m!5276321))

(assert (=> d!1393996 d!1394880))

(declare-fun e!2819036 () Bool)

(declare-fun tp!1338210 () Bool)

(declare-fun b!4524539 () Bool)

(assert (=> b!4524539 (= e!2819036 (and tp_is_empty!27949 tp_is_empty!27951 tp!1338210))))

(assert (=> b!4523350 (= tp!1338209 e!2819036)))

(assert (= (and b!4523350 ((_ is Cons!50668) (t!357754 (t!357754 newBucket!178)))) b!4524539))

(declare-fun tp!1338211 () Bool)

(declare-fun e!2819037 () Bool)

(declare-fun b!4524540 () Bool)

(assert (=> b!4524540 (= e!2819037 (and tp_is_empty!27949 tp_is_empty!27951 tp!1338211))))

(assert (=> b!4523345 (= tp!1338205 e!2819037)))

(assert (= (and b!4523345 ((_ is Cons!50668) (_2!28848 (h!56528 (toList!4344 lm!1477))))) b!4524540))

(declare-fun b!4524541 () Bool)

(declare-fun e!2819038 () Bool)

(declare-fun tp!1338212 () Bool)

(declare-fun tp!1338213 () Bool)

(assert (=> b!4524541 (= e!2819038 (and tp!1338212 tp!1338213))))

(assert (=> b!4523345 (= tp!1338206 e!2819038)))

(assert (= (and b!4523345 ((_ is Cons!50669) (t!357755 (toList!4344 lm!1477)))) b!4524541))

(declare-fun b_lambda!155455 () Bool)

(assert (= b_lambda!155393 (or b!4523060 b_lambda!155455)))

(declare-fun bs!859706 () Bool)

(declare-fun d!1394884 () Bool)

(assert (= bs!859706 (and d!1394884 b!4523060)))

(assert (=> bs!859706 (= (dynLambda!21172 lambda!172996 (h!56527 (toList!4343 lt!1699770))) (contains!13409 lt!1699770 (_1!28847 (h!56527 (toList!4343 lt!1699770)))))))

(declare-fun m!5276361 () Bool)

(assert (=> bs!859706 m!5276361))

(assert (=> b!4524235 d!1394884))

(declare-fun b_lambda!155457 () Bool)

(assert (= b_lambda!155409 (or start!448016 b_lambda!155457)))

(assert (=> d!1394720 d!1394128))

(declare-fun b_lambda!155459 () Bool)

(assert (= b_lambda!155321 (or d!1394106 b_lambda!155459)))

(declare-fun bs!859707 () Bool)

(declare-fun d!1394886 () Bool)

(assert (= bs!859707 (and d!1394886 d!1394106)))

(assert (=> bs!859707 (= (dynLambda!21171 lambda!173075 (h!56528 (toList!4344 lt!1699792))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(assert (=> bs!859707 m!5276291))

(assert (=> b!4523498 d!1394886))

(declare-fun b_lambda!155461 () Bool)

(assert (= b_lambda!155363 (or d!1394122 b_lambda!155461)))

(declare-fun bs!859708 () Bool)

(declare-fun d!1394888 () Bool)

(assert (= bs!859708 (and d!1394888 d!1394122)))

(assert (=> bs!859708 (= (dynLambda!21171 lambda!173079 (h!56528 (toList!4344 lm!1477))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> bs!859708 m!5274019))

(assert (=> b!4523915 d!1394888))

(declare-fun b_lambda!155463 () Bool)

(assert (= b_lambda!155447 (or d!1394100 b_lambda!155463)))

(declare-fun bs!859709 () Bool)

(declare-fun d!1394890 () Bool)

(assert (= bs!859709 (and d!1394890 d!1394100)))

(assert (=> bs!859709 (= (dynLambda!21171 lambda!173071 (h!56528 (toList!4344 lm!1477))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> bs!859709 m!5274019))

(assert (=> b!4524530 d!1394890))

(declare-fun b_lambda!155465 () Bool)

(assert (= b_lambda!155411 (or d!1394080 b_lambda!155465)))

(declare-fun bs!859710 () Bool)

(declare-fun d!1394894 () Bool)

(assert (= bs!859710 (and d!1394894 d!1394080)))

(assert (=> bs!859710 (= (dynLambda!21171 lambda!173070 (h!56528 (toList!4344 lt!1699795))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699795)))))))

(assert (=> bs!859710 m!5275751))

(assert (=> b!4524327 d!1394894))

(declare-fun b_lambda!155467 () Bool)

(assert (= b_lambda!155311 (or d!1393892 b_lambda!155467)))

(declare-fun bs!859711 () Bool)

(declare-fun d!1394896 () Bool)

(assert (= bs!859711 (and d!1394896 d!1393892)))

(assert (=> bs!859711 (= (dynLambda!21172 lambda!172998 (h!56527 (_2!28848 lt!1699794))) (contains!13409 lt!1699952 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun m!5276379 () Bool)

(assert (=> bs!859711 m!5276379))

(assert (=> b!4523370 d!1394896))

(declare-fun b_lambda!155469 () Bool)

(assert (= b_lambda!155335 (or b!4523257 b_lambda!155469)))

(declare-fun bs!859712 () Bool)

(declare-fun d!1394898 () Bool)

(assert (= bs!859712 (and d!1394898 b!4523257)))

(assert (=> bs!859712 (= (dynLambda!21172 lambda!173067 (h!56527 (_2!28848 lt!1699794))) (contains!13409 lt!1700142 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> bs!859712 m!5273807))

(assert (=> b!4523579 d!1394898))

(declare-fun b_lambda!155471 () Bool)

(assert (= b_lambda!155339 (or b!4523257 b_lambda!155471)))

(declare-fun bs!859713 () Bool)

(declare-fun d!1394900 () Bool)

(assert (= bs!859713 (and d!1394900 b!4523257)))

(assert (=> bs!859713 (= (dynLambda!21172 lambda!173066 (h!56527 (toList!4343 lt!1699771))) (contains!13409 lt!1699771 (_1!28847 (h!56527 (toList!4343 lt!1699771)))))))

(declare-fun m!5276381 () Bool)

(assert (=> bs!859713 m!5276381))

(assert (=> b!4523600 d!1394900))

(declare-fun b_lambda!155473 () Bool)

(assert (= b_lambda!155327 (or b!4523257 b_lambda!155473)))

(declare-fun bs!859714 () Bool)

(declare-fun d!1394902 () Bool)

(assert (= bs!859714 (and d!1394902 b!4523257)))

(assert (=> bs!859714 (= (dynLambda!21172 lambda!173067 (h!56527 (toList!4343 lt!1699771))) (contains!13409 lt!1700142 (_1!28847 (h!56527 (toList!4343 lt!1699771)))))))

(declare-fun m!5276387 () Bool)

(assert (=> bs!859714 m!5276387))

(assert (=> b!4523526 d!1394902))

(declare-fun b_lambda!155475 () Bool)

(assert (= b_lambda!155313 (or b!4522898 b_lambda!155475)))

(declare-fun bs!859715 () Bool)

(declare-fun d!1394906 () Bool)

(assert (= bs!859715 (and d!1394906 b!4522898)))

(assert (=> bs!859715 (= (dynLambda!21172 lambda!172949 (h!56527 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477)))))) (= (hash!2829 hashF!1107 (_1!28847 (h!56527 (t!357754 (_2!28848 (h!56528 (toList!4344 lm!1477))))))) (_1!28848 (h!56528 (toList!4344 lm!1477)))))))

(declare-fun m!5276389 () Bool)

(assert (=> bs!859715 m!5276389))

(assert (=> b!4523384 d!1394906))

(declare-fun b_lambda!155477 () Bool)

(assert (= b_lambda!155405 (or start!448016 b_lambda!155477)))

(assert (=> d!1394688 d!1394124))

(declare-fun b_lambda!155479 () Bool)

(assert (= b_lambda!155369 (or d!1394074 b_lambda!155479)))

(declare-fun bs!859716 () Bool)

(declare-fun d!1394908 () Bool)

(assert (= bs!859716 (and d!1394908 d!1394074)))

(assert (=> bs!859716 (= (dynLambda!21172 lambda!173069 (h!56527 (toList!4343 lt!1699771))) (contains!13409 lt!1700139 (_1!28847 (h!56527 (toList!4343 lt!1699771)))))))

(declare-fun m!5276391 () Bool)

(assert (=> bs!859716 m!5276391))

(assert (=> b!4524053 d!1394908))

(declare-fun b_lambda!155481 () Bool)

(assert (= b_lambda!155329 (or b!4523257 b_lambda!155481)))

(declare-fun bs!859717 () Bool)

(declare-fun d!1394910 () Bool)

(assert (= bs!859717 (and d!1394910 b!4523257)))

(assert (=> bs!859717 (= (dynLambda!21172 lambda!173067 (h!56527 (toList!4343 lt!1700141))) (contains!13409 lt!1700142 (_1!28847 (h!56527 (toList!4343 lt!1700141)))))))

(declare-fun m!5276393 () Bool)

(assert (=> bs!859717 m!5276393))

(assert (=> b!4523528 d!1394910))

(declare-fun b_lambda!155483 () Bool)

(assert (= b_lambda!155397 (or b!4523060 b_lambda!155483)))

(declare-fun bs!859718 () Bool)

(declare-fun d!1394912 () Bool)

(assert (= bs!859718 (and d!1394912 b!4523060)))

(assert (=> bs!859718 (= (dynLambda!21172 lambda!172997 (h!56527 (_2!28848 lt!1699794))) (contains!13409 lt!1699955 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(assert (=> bs!859718 m!5273443))

(assert (=> b!4524240 d!1394912))

(declare-fun b_lambda!155485 () Bool)

(assert (= b_lambda!155449 (or d!1394010 b_lambda!155485)))

(declare-fun bs!859719 () Bool)

(declare-fun d!1394916 () Bool)

(assert (= bs!859719 (and d!1394916 d!1394010)))

(assert (=> bs!859719 (= (dynLambda!21171 lambda!173036 (h!56528 (toList!4344 lm!1477))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lm!1477)))))))

(assert (=> bs!859719 m!5274019))

(assert (=> b!4524535 d!1394916))

(declare-fun b_lambda!155487 () Bool)

(assert (= b_lambda!155373 (or d!1394038 b_lambda!155487)))

(declare-fun bs!859720 () Bool)

(declare-fun d!1394918 () Bool)

(assert (= bs!859720 (and d!1394918 d!1394038)))

(assert (=> bs!859720 (= (dynLambda!21171 lambda!173051 (h!56528 (toList!4344 lt!1699796))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699796)))))))

(assert (=> bs!859720 m!5275193))

(assert (=> b!4524120 d!1394918))

(declare-fun b_lambda!155489 () Bool)

(assert (= b_lambda!155389 (or start!448016 b_lambda!155489)))

(declare-fun bs!859721 () Bool)

(declare-fun d!1394920 () Bool)

(assert (= bs!859721 (and d!1394920 start!448016)))

(assert (=> bs!859721 (= (dynLambda!21171 lambda!172947 (h!56528 (t!357755 (toList!4344 lm!1477)))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> bs!859721 m!5276135))

(assert (=> b!4524214 d!1394920))

(declare-fun b_lambda!155491 () Bool)

(assert (= b_lambda!155433 (or d!1393892 b_lambda!155491)))

(declare-fun bs!859722 () Bool)

(declare-fun d!1394922 () Bool)

(assert (= bs!859722 (and d!1394922 d!1393892)))

(assert (=> bs!859722 (= (dynLambda!21172 lambda!172998 (h!56527 (toList!4343 lt!1699770))) (contains!13409 lt!1699952 (_1!28847 (h!56527 (toList!4343 lt!1699770)))))))

(declare-fun m!5276399 () Bool)

(assert (=> bs!859722 m!5276399))

(assert (=> b!4524437 d!1394922))

(declare-fun b_lambda!155493 () Bool)

(assert (= b_lambda!155451 (or b!4522898 b_lambda!155493)))

(assert (=> d!1394878 d!1394126))

(declare-fun b_lambda!155495 () Bool)

(assert (= b_lambda!155435 (or d!1394110 b_lambda!155495)))

(declare-fun bs!859724 () Bool)

(declare-fun d!1394924 () Bool)

(assert (= bs!859724 (and d!1394924 d!1394110)))

(assert (=> bs!859724 (= (dynLambda!21171 lambda!173076 (h!56528 (toList!4344 lt!1699792))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(assert (=> bs!859724 m!5276291))

(assert (=> b!4524441 d!1394924))

(declare-fun b_lambda!155497 () Bool)

(assert (= b_lambda!155333 (or b!4523257 b_lambda!155497)))

(assert (=> d!1394248 d!1394898))

(declare-fun b_lambda!155499 () Bool)

(assert (= b_lambda!155309 (or d!1394074 b_lambda!155499)))

(declare-fun bs!859727 () Bool)

(declare-fun d!1394926 () Bool)

(assert (= bs!859727 (and d!1394926 d!1394074)))

(assert (=> bs!859727 (= (dynLambda!21172 lambda!173069 (h!56527 (_2!28848 lt!1699794))) (contains!13409 lt!1700139 (_1!28847 (h!56527 (_2!28848 lt!1699794)))))))

(declare-fun m!5276401 () Bool)

(assert (=> bs!859727 m!5276401))

(assert (=> b!4523368 d!1394926))

(declare-fun b_lambda!155501 () Bool)

(assert (= b_lambda!155365 (or d!1394054 b_lambda!155501)))

(declare-fun bs!859729 () Bool)

(declare-fun d!1394928 () Bool)

(assert (= bs!859729 (and d!1394928 d!1394054)))

(assert (=> bs!859729 (= (dynLambda!21171 lambda!173059 (h!56528 (toList!4344 lt!1699792))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(assert (=> bs!859729 m!5276291))

(assert (=> b!4524012 d!1394928))

(declare-fun b_lambda!155503 () Bool)

(assert (= b_lambda!155319 (or b!4523060 b_lambda!155503)))

(declare-fun bs!859731 () Bool)

(declare-fun d!1394930 () Bool)

(assert (= bs!859731 (and d!1394930 b!4523060)))

(assert (=> bs!859731 (= (dynLambda!21172 lambda!172997 (h!56527 (toList!4343 lt!1699770))) (contains!13409 lt!1699955 (_1!28847 (h!56527 (toList!4343 lt!1699770)))))))

(declare-fun m!5276403 () Bool)

(assert (=> bs!859731 m!5276403))

(assert (=> b!4523471 d!1394930))

(declare-fun b_lambda!155505 () Bool)

(assert (= b_lambda!155453 (or b!4522898 b_lambda!155505)))

(assert (=> b!4524537 d!1394126))

(declare-fun b_lambda!155507 () Bool)

(assert (= b_lambda!155431 (or d!1394024 b_lambda!155507)))

(declare-fun bs!859734 () Bool)

(declare-fun d!1394932 () Bool)

(assert (= bs!859734 (and d!1394932 d!1394024)))

(assert (=> bs!859734 (= (dynLambda!21171 lambda!173050 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794)))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 (+!1552 lt!1699792 lt!1699794))))))))

(assert (=> bs!859734 m!5274871))

(assert (=> b!4524400 d!1394932))

(declare-fun b_lambda!155509 () Bool)

(assert (= b_lambda!155315 (or d!1394070 b_lambda!155509)))

(declare-fun bs!859736 () Bool)

(declare-fun d!1394934 () Bool)

(assert (= bs!859736 (and d!1394934 d!1394070)))

(assert (=> bs!859736 (= (dynLambda!21171 lambda!173062 (h!56528 (toList!4344 lm!1477))) (allKeysSameHash!1022 (_2!28848 (h!56528 (toList!4344 lm!1477))) (_1!28848 (h!56528 (toList!4344 lm!1477))) hashF!1107))))

(assert (=> bs!859736 m!5274021))

(assert (=> b!4523429 d!1394934))

(declare-fun b_lambda!155511 () Bool)

(assert (= b_lambda!155429 (or d!1394016 b_lambda!155511)))

(declare-fun bs!859739 () Bool)

(declare-fun d!1394936 () Bool)

(assert (= bs!859739 (and d!1394936 d!1394016)))

(assert (=> bs!859739 (= (dynLambda!21172 lambda!173040 (h!56527 newBucket!178)) (= (hash!2829 hashF!1107 (_1!28847 (h!56527 newBucket!178))) hash!344))))

(declare-fun m!5276405 () Bool)

(assert (=> bs!859739 m!5276405))

(assert (=> b!4524398 d!1394936))

(declare-fun b_lambda!155513 () Bool)

(assert (= b_lambda!155317 (or d!1394104 b_lambda!155513)))

(declare-fun bs!859741 () Bool)

(declare-fun d!1394938 () Bool)

(assert (= bs!859741 (and d!1394938 d!1394104)))

(assert (=> bs!859741 (= (dynLambda!21171 lambda!173072 (h!56528 (t!357755 (toList!4344 lm!1477)))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (t!357755 (toList!4344 lm!1477))))))))

(assert (=> bs!859741 m!5276135))

(assert (=> b!4523461 d!1394938))

(declare-fun b_lambda!155515 () Bool)

(assert (= b_lambda!155401 (or b!4523060 b_lambda!155515)))

(declare-fun bs!859742 () Bool)

(declare-fun d!1394940 () Bool)

(assert (= bs!859742 (and d!1394940 b!4523060)))

(assert (=> bs!859742 (= (dynLambda!21172 lambda!172997 (h!56527 (toList!4343 lt!1699954))) (contains!13409 lt!1699955 (_1!28847 (h!56527 (toList!4343 lt!1699954)))))))

(declare-fun m!5276407 () Bool)

(assert (=> bs!859742 m!5276407))

(assert (=> b!4524276 d!1394940))

(declare-fun b_lambda!155517 () Bool)

(assert (= b_lambda!155395 (or b!4523060 b_lambda!155517)))

(assert (=> d!1394660 d!1394912))

(declare-fun b_lambda!155519 () Bool)

(assert (= b_lambda!155413 (or d!1393990 b_lambda!155519)))

(declare-fun bs!859745 () Bool)

(declare-fun d!1394942 () Bool)

(assert (= bs!859745 (and d!1394942 d!1393990)))

(assert (=> bs!859745 (= (dynLambda!21171 lambda!173001 (h!56528 (toList!4344 lt!1699792))) (noDuplicateKeys!1168 (_2!28848 (h!56528 (toList!4344 lt!1699792)))))))

(assert (=> bs!859745 m!5276291))

(assert (=> b!4524329 d!1394942))

(check-sat (not d!1394136) (not d!1394256) tp_is_empty!27949 (not bm!315274) (not d!1394474) (not bs!859717) (not b!4524315) (not b!4524311) (not d!1394510) (not bm!315264) (not b_lambda!155303) (not b!4524217) (not bm!315172) (not b!4524375) (not b!4524237) tp_is_empty!27951 (not b!4523829) (not b_lambda!155497) (not b!4523887) (not b_lambda!155503) (not b!4523468) (not b!4524260) (not b!4523817) (not b!4523914) (not b!4524380) (not b!4524489) (not b!4524296) (not d!1394248) (not b!4523997) (not b!4524062) (not bm!315178) (not b!4523867) (not d!1394748) (not b!4524257) (not b_lambda!155491) (not d!1394486) (not b!4524063) (not b!4523831) (not b!4523989) (not b!4523832) (not b!4523610) (not d!1394728) (not b_lambda!155461) (not b!4524101) (not b!4523863) (not d!1394260) (not b!4524499) (not b!4523844) (not d!1394158) (not d!1394436) (not bs!859714) (not bs!859710) (not b!4523912) (not b!4523913) (not d!1394866) (not b!4523822) (not b!4523795) (not b!4523981) (not b!4524447) (not d!1394204) (not bm!315208) (not b!4523428) (not b!4523998) (not b!4524541) (not b!4523904) (not d!1394556) (not bm!315179) (not b!4524228) (not bm!315269) (not bs!859741) (not b!4524255) (not b!4524438) (not b!4524009) (not b!4523866) (not b!4524335) (not b_lambda!155301) (not b!4523535) (not b_lambda!155487) (not d!1394452) (not b!4523501) (not bm!315211) (not b!4524105) (not d!1394146) (not b!4524495) (not b!4523783) (not bs!859720) (not d!1394408) (not b!4524229) (not bm!315263) (not b!4523388) (not b!4523386) (not b!4524328) (not bm!315287) (not b!4523445) (not b!4523899) (not d!1394680) (not b_lambda!155455) (not b!4523576) (not d!1394274) (not b!4524351) (not bs!859712) (not b!4524013) (not d!1394202) (not b!4523824) (not b_lambda!155505) (not d!1394798) (not b!4524493) (not b!4524538) (not b!4523377) (not b!4524316) (not d!1394456) (not d!1394468) (not b!4524209) (not bs!859711) (not b!4523537) (not b!4524536) (not b!4524095) (not d!1394828) (not b!4524223) (not d!1394482) (not b_lambda!155511) (not d!1394662) (not b!4523570) (not b!4523853) (not b_lambda!155471) (not b_lambda!155481) (not b!4523504) (not b!4524381) (not b!4524531) (not b!4524407) (not b!4523890) (not bs!859736) (not bm!315268) (not d!1394652) (not b!4523797) (not b!4524219) (not bs!859729) (not bm!315183) (not d!1394842) (not b!4523419) (not bm!315258) (not b!4523444) (not d!1394758) (not b!4524360) (not b!4523807) (not d!1394536) (not b_lambda!155391) (not b!4523385) (not d!1394704) (not bm!315209) (not b!4524244) (not d!1394466) (not bm!315280) (not b!4523473) (not b!4523534) (not bs!859719) (not d!1394230) (not b!4524279) (not bm!315217) (not d!1394454) (not b!4524106) (not d!1394736) (not b!4523577) (not b!4523355) (not b!4523789) (not b!4523835) (not b_lambda!155483) (not bm!315218) (not b_lambda!155479) (not b!4524436) (not b!4523506) (not b!4524333) (not b!4523397) (not b!4523988) (not d!1394428) (not d!1394174) (not bm!315235) (not b!4523857) (not b!4523527) (not d!1394800) (not bs!859724) (not b!4523996) (not b!4523791) (not b!4524486) (not d!1394786) (not d!1394518) (not b!4523572) (not b!4523991) (not b!4523815) (not bm!315285) (not b!4524044) (not bm!315277) (not b!4523838) (not b!4524324) (not b!4523612) (not b_lambda!155519) (not b!4523436) (not b_lambda!155355) (not b!4523503) (not d!1394806) (not b!4523855) (not b!4524299) (not b!4523601) (not b!4523391) (not d!1394874) (not d!1394412) (not b!4523911) (not b!4524410) (not b!4524230) (not b!4524331) (not b_lambda!155459) (not d!1394650) (not bs!859707) (not b_lambda!155473) (not b!4523617) (not b!4524288) (not d!1394754) (not b!4523475) (not bm!315246) (not d!1394808) (not b_lambda!155485) (not bm!315174) (not b!4524054) (not b!4524532) (not b!4524369) (not b!4524242) (not b!4524205) (not d!1394156) (not b!4524065) (not b!4523918) (not b!4524382) (not bm!315278) (not bm!315245) (not b!4523575) (not b!4523369) (not b_lambda!155509) (not bs!859708) (not b!4524236) (not d!1394760) (not b!4524259) (not b!4523801) (not b!4524048) (not d!1394804) (not b!4523616) (not b!4523481) (not bm!315180) (not b!4523796) (not b!4524363) (not bm!315212) (not b!4524297) (not bs!859742) (not d!1394868) (not b!4524448) (not b!4523554) (not d!1394170) (not bm!315270) (not b!4523614) (not b!4523452) (not b!4524248) (not b_lambda!155515) (not b!4523794) (not bs!859709) (not b!4523470) (not b!4523449) (not d!1394642) (not b!4523472) (not b!4524319) (not b!4523896) (not d!1394568) (not d!1394554) (not b!4523905) (not b!4524211) (not bm!315286) (not bs!859716) (not b!4524203) (not d!1394162) (not b!4523906) (not d!1394384) (not b!4523902) (not b!4523480) (not d!1394674) (not b!4524497) (not b!4523924) (not b!4524001) (not d!1394232) (not d!1394504) (not b_lambda!155457) (not b!4523422) (not b_lambda!155501) (not b!4524270) (not b!4524354) (not b!4523578) (not b_lambda!155495) (not b!4523868) (not b!4524373) (not b!4524246) (not b!4523786) (not d!1394530) (not d!1394164) (not d!1394710) (not b!4523790) (not d!1394724) (not bm!315262) (not b!4524250) (not b!4524059) (not d!1394284) (not b!4523383) (not b_lambda!155465) (not b_lambda!155305) (not b!4523935) (not bs!859713) (not b!4523892) (not d!1394668) (not d!1394636) (not bs!859727) (not b!4524247) (not b!4524298) (not b!4524271) (not b!4523478) (not b!4524404) (not b!4524500) (not b_lambda!155499) (not b!4523479) (not d!1394660) (not b!4523499) (not d!1394172) (not b!4524356) (not b!4523812) (not b!4524498) (not bm!315213) (not bm!315276) (not b!4524118) (not d!1394832) (not b!4523398) (not b!4524446) (not b_lambda!155493) (not b!4524060) (not b!4523860) (not bs!859722) (not d!1394564) (not bm!315219) (not b_lambda!155477) (not b_lambda!155507) (not b_lambda!155469) (not d!1394152) (not b!4524227) (not d!1394542) (not d!1394480) (not d!1394638) (not b!4523986) (not b!4523615) (not bs!859706) (not b!4524258) (not b!4523430) (not b!4523443) (not bm!315210) (not b!4523891) (not bs!859731) (not d!1394498) (not b!4524261) (not b!4524449) (not d!1394716) (not b_lambda!155467) (not b_lambda!155299) (not d!1394722) (not b!4523984) (not d!1394578) (not b!4523555) (not bm!315281) (not b!4523569) (not d!1394826) (not b!4524007) (not b!4524272) (not b!4524412) (not bs!859745) (not b!4523371) (not b!4523352) (not d!1394134) (not d!1394792) (not bm!315257) (not b_lambda!155517) (not b!4524540) (not b!4523618) (not bm!315182) (not d!1394194) (not b!4523453) (not d!1394488) (not b!4524399) (not b!4524379) (not d!1394460) (not d!1394714) (not bs!859721) (not b!4524241) (not d!1394280) (not bs!859734) (not d!1394840) (not b!4523580) (not b!4524321) (not b!4524224) (not b!4524249) (not d!1394392) (not b!4524111) (not b!4524403) (not b!4523462) (not b!4524108) (not b!4524539) (not d!1394752) (not b!4523451) (not d!1394592) (not b!4524225) (not b!4523536) (not b!4524330) (not d!1394476) (not b_lambda!155415) (not bs!859715) (not d!1394502) (not b!4524528) (not b!4524011) (not b!4523994) (not d!1394400) (not bm!315244) (not d!1394656) (not b!4524442) (not d!1394686) (not b!4524010) (not d!1394458) (not b!4523908) (not d!1394872) (not b!4523978) (not b!4524313) (not b!4524357) (not bm!315279) (not b!4523916) (not b!4523505) (not b!4523976) (not b!4524215) (not d!1394640) (not d!1394526) (not b!4524222) (not bm!315181) (not b!4524491) (not b!4524206) (not b_lambda!155353) (not b!4524440) (not b!4523910) (not b!4524064) (not b_lambda!155307) (not b!4524107) (not b!4523530) (not b!4523814) (not b_lambda!155475) (not b!4524233) (not b!4524253) (not bm!315221) (not bs!859718) (not d!1394508) (not b!4523366) (not b_lambda!155463) (not b!4524401) (not b!4523893) (not b!4524534) (not d!1394582) (not b!4523529) (not d!1394746) (not b!4523805) (not b!4524349) (not b!4523865) (not b!4524326) (not b!4523574) (not bs!859739) (not b!4524121) (not d!1394790) (not b!4524406) (not d!1394646) (not b!4523788) (not b!4524444) (not b!4523532) (not d!1394514) (not b_lambda!155489) (not b!4523538) (not b!4523477) (not b!4524494) (not b!4524273) (not b!4524277) (not b_lambda!155513) (not b!4523607) (not b!4523609) (not b!4524092) (not d!1394192) (not bm!315215) (not b!4523454) (not b!4524278))
(check-sat)
