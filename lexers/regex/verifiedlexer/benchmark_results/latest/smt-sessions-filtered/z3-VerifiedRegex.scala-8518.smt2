; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445920 () Bool)

(assert start!445920)

(declare-fun b!4510639 () Bool)

(declare-fun res!1876170 () Bool)

(declare-fun e!2810005 () Bool)

(assert (=> b!4510639 (=> res!1876170 e!2810005)))

(declare-datatypes ((K!11995 0))(
  ( (K!11996 (val!17867 Int)) )
))
(declare-datatypes ((V!12241 0))(
  ( (V!12242 (val!17868 Int)) )
))
(declare-datatypes ((tuple2!51002 0))(
  ( (tuple2!51003 (_1!28795 K!11995) (_2!28795 V!12241)) )
))
(declare-datatypes ((List!50718 0))(
  ( (Nil!50594) (Cons!50594 (h!56431 tuple2!51002) (t!357680 List!50718)) )
))
(declare-datatypes ((tuple2!51004 0))(
  ( (tuple2!51005 (_1!28796 (_ BitVec 64)) (_2!28796 List!50718)) )
))
(declare-datatypes ((List!50719 0))(
  ( (Nil!50595) (Cons!50595 (h!56432 tuple2!51004) (t!357681 List!50719)) )
))
(declare-datatypes ((ListLongMap!2923 0))(
  ( (ListLongMap!2924 (toList!4291 List!50719)) )
))
(declare-fun lt!1688910 () ListLongMap!2923)

(declare-fun lt!1688901 () tuple2!51004)

(declare-fun head!9378 (ListLongMap!2923) tuple2!51004)

(assert (=> b!4510639 (= res!1876170 (not (= (head!9378 lt!1688910) lt!1688901)))))

(declare-fun b!4510640 () Bool)

(declare-fun e!2810003 () Bool)

(assert (=> b!4510640 (= e!2810003 e!2810005)))

(declare-fun res!1876166 () Bool)

(assert (=> b!4510640 (=> res!1876166 e!2810005)))

(declare-fun lt!1688913 () tuple2!51004)

(declare-fun lm!1477 () ListLongMap!2923)

(declare-fun +!1504 (ListLongMap!2923 tuple2!51004) ListLongMap!2923)

(assert (=> b!4510640 (= res!1876166 (not (= lt!1688910 (+!1504 lm!1477 lt!1688913))))))

(declare-fun lt!1688908 () ListLongMap!2923)

(assert (=> b!4510640 (= lt!1688910 (+!1504 lt!1688908 lt!1688901))))

(declare-fun b!4510641 () Bool)

(declare-fun res!1876173 () Bool)

(declare-fun e!2809995 () Bool)

(assert (=> b!4510641 (=> res!1876173 e!2809995)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4510641 (= res!1876173 (or ((_ is Nil!50595) (toList!4291 lm!1477)) (= (_1!28796 (h!56432 (toList!4291 lm!1477))) hash!344)))))

(declare-fun b!4510642 () Bool)

(assert (=> b!4510642 (= e!2810005 true)))

(declare-fun lt!1688903 () Bool)

(declare-fun noDuplicateKeys!1142 (List!50718) Bool)

(assert (=> b!4510642 (= lt!1688903 (noDuplicateKeys!1142 (_2!28796 lt!1688901)))))

(declare-fun b!4510643 () Bool)

(declare-fun e!2810001 () Bool)

(declare-fun e!2809998 () Bool)

(assert (=> b!4510643 (= e!2810001 e!2809998)))

(declare-fun res!1876175 () Bool)

(assert (=> b!4510643 (=> res!1876175 e!2809998)))

(declare-fun key!3287 () K!11995)

(declare-fun containsKeyBiggerList!122 (List!50719 K!11995) Bool)

(assert (=> b!4510643 (= res!1876175 (not (containsKeyBiggerList!122 (t!357681 (toList!4291 lm!1477)) key!3287)))))

(declare-fun lt!1688918 () ListLongMap!2923)

(assert (=> b!4510643 (containsKeyBiggerList!122 (toList!4291 lt!1688918) key!3287)))

(declare-datatypes ((Hashable!5537 0))(
  ( (HashableExt!5536 (__x!31240 Int)) )
))
(declare-fun hashF!1107 () Hashable!5537)

(declare-datatypes ((Unit!93474 0))(
  ( (Unit!93475) )
))
(declare-fun lt!1688917 () Unit!93474)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!58 (ListLongMap!2923 K!11995 Hashable!5537) Unit!93474)

(assert (=> b!4510643 (= lt!1688917 (lemmaInLongMapThenContainsKeyBiggerList!58 lt!1688918 key!3287 hashF!1107))))

(declare-fun b!4510644 () Bool)

(declare-fun e!2809997 () Bool)

(declare-fun e!2809996 () Bool)

(assert (=> b!4510644 (= e!2809997 e!2809996)))

(declare-fun res!1876176 () Bool)

(assert (=> b!4510644 (=> (not res!1876176) (not e!2809996))))

(declare-datatypes ((ListMap!3553 0))(
  ( (ListMap!3554 (toList!4292 List!50718)) )
))
(declare-fun lt!1688907 () ListMap!3553)

(declare-fun contains!13293 (ListMap!3553 K!11995) Bool)

(assert (=> b!4510644 (= res!1876176 (contains!13293 lt!1688907 key!3287))))

(declare-fun extractMap!1198 (List!50719) ListMap!3553)

(assert (=> b!4510644 (= lt!1688907 (extractMap!1198 (toList!4291 lm!1477)))))

(declare-fun b!4510645 () Bool)

(declare-fun e!2810002 () Bool)

(assert (=> b!4510645 (= e!2809998 e!2810002)))

(declare-fun res!1876183 () Bool)

(assert (=> b!4510645 (=> res!1876183 e!2810002)))

(assert (=> b!4510645 (= res!1876183 (not (contains!13293 (extractMap!1198 (t!357681 (toList!4291 lm!1477))) key!3287)))))

(declare-fun lt!1688912 () ListMap!3553)

(assert (=> b!4510645 (contains!13293 lt!1688912 key!3287)))

(assert (=> b!4510645 (= lt!1688912 (extractMap!1198 (toList!4291 lt!1688918)))))

(declare-fun lt!1688899 () Unit!93474)

(declare-fun lemmaListContainsThenExtractedMapContains!112 (ListLongMap!2923 K!11995 Hashable!5537) Unit!93474)

(assert (=> b!4510645 (= lt!1688899 (lemmaListContainsThenExtractedMapContains!112 lt!1688918 key!3287 hashF!1107))))

(declare-fun b!4510646 () Bool)

(declare-fun res!1876168 () Bool)

(declare-fun e!2809994 () Bool)

(assert (=> b!4510646 (=> (not res!1876168) (not e!2809994))))

(declare-fun newBucket!178 () List!50718)

(declare-fun allKeysSameHash!996 (List!50718 (_ BitVec 64) Hashable!5537) Bool)

(assert (=> b!4510646 (= res!1876168 (allKeysSameHash!996 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4510647 () Bool)

(declare-fun e!2810004 () Bool)

(declare-fun tp!1337797 () Bool)

(assert (=> b!4510647 (= e!2810004 tp!1337797)))

(declare-fun res!1876178 () Bool)

(assert (=> start!445920 (=> (not res!1876178) (not e!2809997))))

(declare-fun lambda!170527 () Int)

(declare-fun forall!10221 (List!50719 Int) Bool)

(assert (=> start!445920 (= res!1876178 (forall!10221 (toList!4291 lm!1477) lambda!170527))))

(assert (=> start!445920 e!2809997))

(assert (=> start!445920 true))

(declare-fun inv!66179 (ListLongMap!2923) Bool)

(assert (=> start!445920 (and (inv!66179 lm!1477) e!2810004)))

(declare-fun tp_is_empty!27845 () Bool)

(assert (=> start!445920 tp_is_empty!27845))

(declare-fun e!2809999 () Bool)

(assert (=> start!445920 e!2809999))

(declare-fun b!4510648 () Bool)

(declare-fun res!1876174 () Bool)

(assert (=> b!4510648 (=> res!1876174 e!2810003)))

(assert (=> b!4510648 (= res!1876174 (bvsge (_1!28796 lt!1688901) hash!344))))

(declare-fun b!4510649 () Bool)

(declare-fun e!2809993 () Unit!93474)

(declare-fun Unit!93476 () Unit!93474)

(assert (=> b!4510649 (= e!2809993 Unit!93476)))

(declare-fun b!4510650 () Bool)

(declare-fun Unit!93477 () Unit!93474)

(assert (=> b!4510650 (= e!2809993 Unit!93477)))

(declare-fun lt!1688911 () Unit!93474)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!130 (ListLongMap!2923 K!11995 Hashable!5537) Unit!93474)

(assert (=> b!4510650 (= lt!1688911 (lemmaNotInItsHashBucketThenNotInMap!130 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4510650 false))

(declare-fun b!4510651 () Bool)

(declare-fun res!1876172 () Bool)

(declare-fun e!2810000 () Bool)

(assert (=> b!4510651 (=> res!1876172 e!2810000)))

(declare-fun lt!1688904 () List!50718)

(declare-fun apply!11879 (ListLongMap!2923 (_ BitVec 64)) List!50718)

(assert (=> b!4510651 (= res!1876172 (not (= (apply!11879 lt!1688918 hash!344) lt!1688904)))))

(declare-fun b!4510652 () Bool)

(declare-fun res!1876169 () Bool)

(assert (=> b!4510652 (=> res!1876169 e!2809995)))

(assert (=> b!4510652 (= res!1876169 (not (noDuplicateKeys!1142 newBucket!178)))))

(declare-fun b!4510653 () Bool)

(declare-fun res!1876177 () Bool)

(assert (=> b!4510653 (=> res!1876177 e!2810005)))

(declare-fun lt!1688914 () ListMap!3553)

(declare-fun eq!599 (ListMap!3553 ListMap!3553) Bool)

(declare-fun addToMapMapFromBucket!669 (List!50718 ListMap!3553) ListMap!3553)

(assert (=> b!4510653 (= res!1876177 (not (eq!599 (extractMap!1198 (toList!4291 lt!1688910)) (addToMapMapFromBucket!669 (_2!28796 lt!1688901) lt!1688914))))))

(declare-fun b!4510654 () Bool)

(assert (=> b!4510654 (= e!2810002 e!2810003)))

(declare-fun res!1876179 () Bool)

(assert (=> b!4510654 (=> res!1876179 e!2810003)))

(declare-fun lt!1688898 () ListMap!3553)

(assert (=> b!4510654 (= res!1876179 (not (eq!599 lt!1688898 lt!1688907)))))

(assert (=> b!4510654 (= lt!1688898 (extractMap!1198 (toList!4291 (+!1504 lt!1688918 lt!1688901))))))

(assert (=> b!4510654 (= lt!1688901 (head!9378 lm!1477))))

(declare-fun -!368 (ListMap!3553 K!11995) ListMap!3553)

(assert (=> b!4510654 (eq!599 lt!1688914 (-!368 lt!1688912 key!3287))))

(assert (=> b!4510654 (= lt!1688914 (extractMap!1198 (toList!4291 lt!1688908)))))

(assert (=> b!4510654 (= lt!1688908 (+!1504 lt!1688918 lt!1688913))))

(assert (=> b!4510654 (= lt!1688913 (tuple2!51005 hash!344 newBucket!178))))

(declare-fun lt!1688909 () Unit!93474)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!127 (ListLongMap!2923 (_ BitVec 64) List!50718 K!11995 Hashable!5537) Unit!93474)

(assert (=> b!4510654 (= lt!1688909 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!127 lt!1688918 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4510655 () Bool)

(assert (=> b!4510655 (= e!2809996 e!2809994)))

(declare-fun res!1876184 () Bool)

(assert (=> b!4510655 (=> (not res!1876184) (not e!2809994))))

(declare-fun lt!1688915 () (_ BitVec 64))

(assert (=> b!4510655 (= res!1876184 (= lt!1688915 hash!344))))

(declare-fun hash!2749 (Hashable!5537 K!11995) (_ BitVec 64))

(assert (=> b!4510655 (= lt!1688915 (hash!2749 hashF!1107 key!3287))))

(declare-fun b!4510656 () Bool)

(assert (=> b!4510656 (= e!2809994 (not e!2809995))))

(declare-fun res!1876165 () Bool)

(assert (=> b!4510656 (=> res!1876165 e!2809995)))

(declare-fun removePairForKey!769 (List!50718 K!11995) List!50718)

(assert (=> b!4510656 (= res!1876165 (not (= newBucket!178 (removePairForKey!769 lt!1688904 key!3287))))))

(declare-fun lt!1688897 () Unit!93474)

(declare-fun lt!1688916 () tuple2!51004)

(declare-fun forallContained!2473 (List!50719 Int tuple2!51004) Unit!93474)

(assert (=> b!4510656 (= lt!1688897 (forallContained!2473 (toList!4291 lm!1477) lambda!170527 lt!1688916))))

(declare-fun contains!13294 (List!50719 tuple2!51004) Bool)

(assert (=> b!4510656 (contains!13294 (toList!4291 lm!1477) lt!1688916)))

(assert (=> b!4510656 (= lt!1688916 (tuple2!51005 hash!344 lt!1688904))))

(declare-fun lt!1688902 () Unit!93474)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!654 (List!50719 (_ BitVec 64) List!50718) Unit!93474)

(assert (=> b!4510656 (= lt!1688902 (lemmaGetValueByKeyImpliesContainsTuple!654 (toList!4291 lm!1477) hash!344 lt!1688904))))

(assert (=> b!4510656 (= lt!1688904 (apply!11879 lm!1477 hash!344))))

(declare-fun contains!13295 (ListLongMap!2923 (_ BitVec 64)) Bool)

(assert (=> b!4510656 (contains!13295 lm!1477 lt!1688915)))

(declare-fun lt!1688905 () Unit!93474)

(declare-fun lemmaInGenMapThenLongMapContainsHash!216 (ListLongMap!2923 K!11995 Hashable!5537) Unit!93474)

(assert (=> b!4510656 (= lt!1688905 (lemmaInGenMapThenLongMapContainsHash!216 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4510657 () Bool)

(assert (=> b!4510657 (= e!2809995 e!2810000)))

(declare-fun res!1876181 () Bool)

(assert (=> b!4510657 (=> res!1876181 e!2810000)))

(assert (=> b!4510657 (= res!1876181 (not (contains!13295 lt!1688918 hash!344)))))

(declare-fun tail!7700 (ListLongMap!2923) ListLongMap!2923)

(assert (=> b!4510657 (= lt!1688918 (tail!7700 lm!1477))))

(declare-fun b!4510658 () Bool)

(declare-fun res!1876167 () Bool)

(assert (=> b!4510658 (=> res!1876167 e!2810000)))

(assert (=> b!4510658 (= res!1876167 (not (contains!13294 (t!357681 (toList!4291 lm!1477)) lt!1688916)))))

(declare-fun b!4510659 () Bool)

(assert (=> b!4510659 (= e!2810000 e!2810001)))

(declare-fun res!1876171 () Bool)

(assert (=> b!4510659 (=> res!1876171 e!2810001)))

(declare-fun lt!1688900 () Bool)

(assert (=> b!4510659 (= res!1876171 lt!1688900)))

(declare-fun lt!1688906 () Unit!93474)

(assert (=> b!4510659 (= lt!1688906 e!2809993)))

(declare-fun c!769413 () Bool)

(assert (=> b!4510659 (= c!769413 lt!1688900)))

(declare-fun containsKey!1730 (List!50718 K!11995) Bool)

(assert (=> b!4510659 (= lt!1688900 (not (containsKey!1730 lt!1688904 key!3287)))))

(declare-fun b!4510660 () Bool)

(declare-fun res!1876180 () Bool)

(assert (=> b!4510660 (=> res!1876180 e!2810003)))

(assert (=> b!4510660 (= res!1876180 (not (eq!599 lt!1688907 lt!1688898)))))

(declare-fun tp!1337796 () Bool)

(declare-fun tp_is_empty!27847 () Bool)

(declare-fun b!4510661 () Bool)

(assert (=> b!4510661 (= e!2809999 (and tp_is_empty!27845 tp_is_empty!27847 tp!1337796))))

(declare-fun b!4510662 () Bool)

(declare-fun res!1876182 () Bool)

(assert (=> b!4510662 (=> (not res!1876182) (not e!2809997))))

(declare-fun allKeysSameHashInMap!1249 (ListLongMap!2923 Hashable!5537) Bool)

(assert (=> b!4510662 (= res!1876182 (allKeysSameHashInMap!1249 lm!1477 hashF!1107))))

(assert (= (and start!445920 res!1876178) b!4510662))

(assert (= (and b!4510662 res!1876182) b!4510644))

(assert (= (and b!4510644 res!1876176) b!4510655))

(assert (= (and b!4510655 res!1876184) b!4510646))

(assert (= (and b!4510646 res!1876168) b!4510656))

(assert (= (and b!4510656 (not res!1876165)) b!4510652))

(assert (= (and b!4510652 (not res!1876169)) b!4510641))

(assert (= (and b!4510641 (not res!1876173)) b!4510657))

(assert (= (and b!4510657 (not res!1876181)) b!4510651))

(assert (= (and b!4510651 (not res!1876172)) b!4510658))

(assert (= (and b!4510658 (not res!1876167)) b!4510659))

(assert (= (and b!4510659 c!769413) b!4510650))

(assert (= (and b!4510659 (not c!769413)) b!4510649))

(assert (= (and b!4510659 (not res!1876171)) b!4510643))

(assert (= (and b!4510643 (not res!1876175)) b!4510645))

(assert (= (and b!4510645 (not res!1876183)) b!4510654))

(assert (= (and b!4510654 (not res!1876179)) b!4510660))

(assert (= (and b!4510660 (not res!1876180)) b!4510648))

(assert (= (and b!4510648 (not res!1876174)) b!4510640))

(assert (= (and b!4510640 (not res!1876166)) b!4510639))

(assert (= (and b!4510639 (not res!1876170)) b!4510653))

(assert (= (and b!4510653 (not res!1876177)) b!4510642))

(assert (= start!445920 b!4510647))

(assert (= (and start!445920 ((_ is Cons!50594) newBucket!178)) b!4510661))

(declare-fun m!5250037 () Bool)

(assert (=> b!4510642 m!5250037))

(declare-fun m!5250039 () Bool)

(assert (=> b!4510646 m!5250039))

(declare-fun m!5250041 () Bool)

(assert (=> b!4510654 m!5250041))

(declare-fun m!5250043 () Bool)

(assert (=> b!4510654 m!5250043))

(declare-fun m!5250045 () Bool)

(assert (=> b!4510654 m!5250045))

(declare-fun m!5250047 () Bool)

(assert (=> b!4510654 m!5250047))

(declare-fun m!5250049 () Bool)

(assert (=> b!4510654 m!5250049))

(declare-fun m!5250051 () Bool)

(assert (=> b!4510654 m!5250051))

(declare-fun m!5250053 () Bool)

(assert (=> b!4510654 m!5250053))

(assert (=> b!4510654 m!5250049))

(declare-fun m!5250055 () Bool)

(assert (=> b!4510654 m!5250055))

(declare-fun m!5250057 () Bool)

(assert (=> b!4510654 m!5250057))

(declare-fun m!5250059 () Bool)

(assert (=> b!4510657 m!5250059))

(declare-fun m!5250061 () Bool)

(assert (=> b!4510657 m!5250061))

(declare-fun m!5250063 () Bool)

(assert (=> b!4510640 m!5250063))

(declare-fun m!5250065 () Bool)

(assert (=> b!4510640 m!5250065))

(declare-fun m!5250067 () Bool)

(assert (=> b!4510660 m!5250067))

(declare-fun m!5250069 () Bool)

(assert (=> b!4510643 m!5250069))

(declare-fun m!5250071 () Bool)

(assert (=> b!4510643 m!5250071))

(declare-fun m!5250073 () Bool)

(assert (=> b!4510643 m!5250073))

(declare-fun m!5250075 () Bool)

(assert (=> b!4510650 m!5250075))

(declare-fun m!5250077 () Bool)

(assert (=> b!4510644 m!5250077))

(declare-fun m!5250079 () Bool)

(assert (=> b!4510644 m!5250079))

(declare-fun m!5250081 () Bool)

(assert (=> b!4510656 m!5250081))

(declare-fun m!5250083 () Bool)

(assert (=> b!4510656 m!5250083))

(declare-fun m!5250085 () Bool)

(assert (=> b!4510656 m!5250085))

(declare-fun m!5250087 () Bool)

(assert (=> b!4510656 m!5250087))

(declare-fun m!5250089 () Bool)

(assert (=> b!4510656 m!5250089))

(declare-fun m!5250091 () Bool)

(assert (=> b!4510656 m!5250091))

(declare-fun m!5250093 () Bool)

(assert (=> b!4510656 m!5250093))

(declare-fun m!5250095 () Bool)

(assert (=> b!4510662 m!5250095))

(declare-fun m!5250097 () Bool)

(assert (=> b!4510651 m!5250097))

(declare-fun m!5250099 () Bool)

(assert (=> b!4510639 m!5250099))

(declare-fun m!5250101 () Bool)

(assert (=> b!4510653 m!5250101))

(declare-fun m!5250103 () Bool)

(assert (=> b!4510653 m!5250103))

(assert (=> b!4510653 m!5250101))

(assert (=> b!4510653 m!5250103))

(declare-fun m!5250105 () Bool)

(assert (=> b!4510653 m!5250105))

(declare-fun m!5250107 () Bool)

(assert (=> start!445920 m!5250107))

(declare-fun m!5250109 () Bool)

(assert (=> start!445920 m!5250109))

(declare-fun m!5250111 () Bool)

(assert (=> b!4510652 m!5250111))

(declare-fun m!5250113 () Bool)

(assert (=> b!4510655 m!5250113))

(declare-fun m!5250115 () Bool)

(assert (=> b!4510659 m!5250115))

(declare-fun m!5250117 () Bool)

(assert (=> b!4510658 m!5250117))

(declare-fun m!5250119 () Bool)

(assert (=> b!4510645 m!5250119))

(declare-fun m!5250121 () Bool)

(assert (=> b!4510645 m!5250121))

(declare-fun m!5250123 () Bool)

(assert (=> b!4510645 m!5250123))

(declare-fun m!5250125 () Bool)

(assert (=> b!4510645 m!5250125))

(assert (=> b!4510645 m!5250123))

(declare-fun m!5250127 () Bool)

(assert (=> b!4510645 m!5250127))

(check-sat (not b!4510653) (not b!4510642) (not b!4510662) (not b!4510650) tp_is_empty!27845 (not b!4510640) (not b!4510659) (not b!4510661) (not b!4510647) (not b!4510645) (not b!4510657) (not b!4510654) (not start!445920) (not b!4510644) tp_is_empty!27847 (not b!4510639) (not b!4510643) (not b!4510652) (not b!4510658) (not b!4510646) (not b!4510655) (not b!4510656) (not b!4510660) (not b!4510651))
(check-sat)
