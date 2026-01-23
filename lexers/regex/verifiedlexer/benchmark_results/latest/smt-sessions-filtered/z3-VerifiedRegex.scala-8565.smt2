; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453004 () Bool)

(assert start!453004)

(declare-fun b!4558973 () Bool)

(declare-fun res!1902182 () Bool)

(declare-fun e!2841812 () Bool)

(assert (=> b!4558973 (=> res!1902182 e!2841812)))

(declare-datatypes ((K!12230 0))(
  ( (K!12231 (val!18055 Int)) )
))
(declare-datatypes ((V!12476 0))(
  ( (V!12477 (val!18056 Int)) )
))
(declare-datatypes ((tuple2!51378 0))(
  ( (tuple2!51379 (_1!28983 K!12230) (_2!28983 V!12476)) )
))
(declare-datatypes ((List!50973 0))(
  ( (Nil!50849) (Cons!50849 (h!56754 tuple2!51378) (t!357947 List!50973)) )
))
(declare-fun newBucket!178 () List!50973)

(declare-fun noDuplicateKeys!1236 (List!50973) Bool)

(assert (=> b!4558973 (= res!1902182 (not (noDuplicateKeys!1236 newBucket!178)))))

(declare-fun b!4558974 () Bool)

(declare-fun res!1902194 () Bool)

(assert (=> b!4558974 (=> res!1902194 e!2841812)))

(declare-datatypes ((tuple2!51380 0))(
  ( (tuple2!51381 (_1!28984 (_ BitVec 64)) (_2!28984 List!50973)) )
))
(declare-datatypes ((List!50974 0))(
  ( (Nil!50850) (Cons!50850 (h!56755 tuple2!51380) (t!357948 List!50974)) )
))
(declare-datatypes ((ListLongMap!3111 0))(
  ( (ListLongMap!3112 (toList!4479 List!50974)) )
))
(declare-fun lm!1477 () ListLongMap!3111)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4558974 (= res!1902194 (or ((_ is Nil!50850) (toList!4479 lm!1477)) (not (= (_1!28984 (h!56755 (toList!4479 lm!1477))) hash!344))))))

(declare-fun b!4558976 () Bool)

(declare-fun e!2841807 () Bool)

(declare-fun e!2841806 () Bool)

(assert (=> b!4558976 (= e!2841807 e!2841806)))

(declare-fun res!1902185 () Bool)

(assert (=> b!4558976 (=> res!1902185 e!2841806)))

(declare-datatypes ((ListMap!3741 0))(
  ( (ListMap!3742 (toList!4480 List!50973)) )
))
(declare-fun lt!1730318 () ListMap!3741)

(declare-fun lt!1730323 () ListMap!3741)

(declare-fun eq!687 (ListMap!3741 ListMap!3741) Bool)

(declare-fun addToMapMapFromBucket!754 (List!50973 ListMap!3741) ListMap!3741)

(assert (=> b!4558976 (= res!1902185 (not (eq!687 lt!1730323 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lm!1477))) lt!1730318))))))

(declare-fun lt!1730316 () tuple2!51380)

(declare-fun extractMap!1292 (List!50974) ListMap!3741)

(declare-fun +!1658 (ListLongMap!3111 tuple2!51380) ListLongMap!3111)

(assert (=> b!4558976 (= lt!1730323 (extractMap!1292 (toList!4479 (+!1658 lm!1477 lt!1730316))))))

(declare-fun b!4558977 () Bool)

(declare-fun e!2841813 () Bool)

(assert (=> b!4558977 (= e!2841813 e!2841807)))

(declare-fun res!1902187 () Bool)

(assert (=> b!4558977 (=> res!1902187 e!2841807)))

(declare-fun lt!1730315 () ListMap!3741)

(assert (=> b!4558977 (= res!1902187 (not (eq!687 lt!1730315 (addToMapMapFromBucket!754 newBucket!178 lt!1730318))))))

(declare-fun lt!1730329 () ListLongMap!3111)

(assert (=> b!4558977 (= lt!1730315 (extractMap!1292 (toList!4479 lt!1730329)))))

(declare-fun b!4558978 () Bool)

(declare-fun e!2841820 () Bool)

(declare-fun e!2841810 () Bool)

(assert (=> b!4558978 (= e!2841820 e!2841810)))

(declare-fun res!1902192 () Bool)

(assert (=> b!4558978 (=> res!1902192 e!2841810)))

(declare-fun lt!1730322 () List!50974)

(declare-fun key!3287 () K!12230)

(declare-fun containsKeyBiggerList!214 (List!50974 K!12230) Bool)

(assert (=> b!4558978 (= res!1902192 (not (containsKeyBiggerList!214 lt!1730322 key!3287)))))

(assert (=> b!4558978 (= lt!1730322 (Cons!50850 (h!56755 (toList!4479 lm!1477)) Nil!50850))))

(declare-fun b!4558979 () Bool)

(declare-datatypes ((Unit!102334 0))(
  ( (Unit!102335) )
))
(declare-fun e!2841815 () Unit!102334)

(declare-fun Unit!102336 () Unit!102334)

(assert (=> b!4558979 (= e!2841815 Unit!102336)))

(declare-datatypes ((Hashable!5631 0))(
  ( (HashableExt!5630 (__x!31334 Int)) )
))
(declare-fun hashF!1107 () Hashable!5631)

(declare-fun lt!1730309 () ListLongMap!3111)

(declare-fun lt!1730321 () Unit!102334)

(declare-fun lemmaInGenMapThenLongMapContainsHash!310 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> b!4558979 (= lt!1730321 (lemmaInGenMapThenLongMapContainsHash!310 lt!1730309 key!3287 hashF!1107))))

(declare-fun res!1902195 () Bool)

(declare-fun lt!1730313 () (_ BitVec 64))

(declare-fun contains!13696 (ListLongMap!3111 (_ BitVec 64)) Bool)

(assert (=> b!4558979 (= res!1902195 (contains!13696 lt!1730309 lt!1730313))))

(declare-fun e!2841808 () Bool)

(assert (=> b!4558979 (=> (not res!1902195) (not e!2841808))))

(assert (=> b!4558979 e!2841808))

(declare-fun b!4558980 () Bool)

(declare-fun e!2841817 () Bool)

(declare-fun e!2841805 () Bool)

(assert (=> b!4558980 (= e!2841817 e!2841805)))

(declare-fun res!1902193 () Bool)

(assert (=> b!4558980 (=> (not res!1902193) (not e!2841805))))

(declare-fun lt!1730327 () ListMap!3741)

(declare-fun contains!13697 (ListMap!3741 K!12230) Bool)

(assert (=> b!4558980 (= res!1902193 (contains!13697 lt!1730327 key!3287))))

(assert (=> b!4558980 (= lt!1730327 (extractMap!1292 (toList!4479 lm!1477)))))

(declare-fun b!4558981 () Bool)

(declare-fun Unit!102337 () Unit!102334)

(assert (=> b!4558981 (= e!2841815 Unit!102337)))

(declare-fun b!4558982 () Bool)

(declare-fun e!2841819 () Bool)

(assert (=> b!4558982 (= e!2841819 e!2841813)))

(declare-fun res!1902181 () Bool)

(assert (=> b!4558982 (=> res!1902181 e!2841813)))

(declare-fun lt!1730334 () tuple2!51380)

(assert (=> b!4558982 (= res!1902181 (not (= (toList!4479 lt!1730329) (Cons!50850 lt!1730334 (t!357948 (toList!4479 lm!1477))))))))

(declare-fun lt!1730332 () List!50974)

(declare-fun -!456 (ListMap!3741 K!12230) ListMap!3741)

(assert (=> b!4558982 (eq!687 (extractMap!1292 (Cons!50850 lt!1730334 lt!1730332)) (-!456 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)) key!3287))))

(declare-fun tail!7853 (List!50974) List!50974)

(assert (=> b!4558982 (= lt!1730332 (tail!7853 (toList!4479 lm!1477)))))

(declare-fun lt!1730325 () Unit!102334)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!34 (ListLongMap!3111 (_ BitVec 64) List!50973 List!50973 K!12230 Hashable!5631) Unit!102334)

(assert (=> b!4558982 (= lt!1730325 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!34 lm!1477 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4558983 () Bool)

(assert (=> b!4558983 (= e!2841812 e!2841820)))

(declare-fun res!1902197 () Bool)

(assert (=> b!4558983 (=> res!1902197 e!2841820)))

(declare-fun lt!1730330 () Bool)

(assert (=> b!4558983 (= res!1902197 lt!1730330)))

(declare-fun lt!1730312 () Unit!102334)

(declare-fun e!2841821 () Unit!102334)

(assert (=> b!4558983 (= lt!1730312 e!2841821)))

(declare-fun c!779466 () Bool)

(assert (=> b!4558983 (= c!779466 lt!1730330)))

(declare-fun containsKey!1959 (List!50973 K!12230) Bool)

(assert (=> b!4558983 (= lt!1730330 (not (containsKey!1959 (_2!28984 (h!56755 (toList!4479 lm!1477))) key!3287)))))

(declare-fun b!4558984 () Bool)

(declare-fun Unit!102338 () Unit!102334)

(assert (=> b!4558984 (= e!2841821 Unit!102338)))

(declare-fun b!4558985 () Bool)

(declare-fun e!2841816 () Bool)

(assert (=> b!4558985 (= e!2841816 e!2841819)))

(declare-fun res!1902179 () Bool)

(assert (=> b!4558985 (=> res!1902179 e!2841819)))

(declare-fun lt!1730326 () Bool)

(assert (=> b!4558985 (= res!1902179 lt!1730326)))

(declare-fun lt!1730331 () Unit!102334)

(assert (=> b!4558985 (= lt!1730331 e!2841815)))

(declare-fun c!779465 () Bool)

(assert (=> b!4558985 (= c!779465 lt!1730326)))

(declare-fun lt!1730319 () ListMap!3741)

(assert (=> b!4558985 (= lt!1730326 (contains!13697 lt!1730319 key!3287))))

(declare-fun b!4558986 () Bool)

(declare-fun e!2841809 () Bool)

(assert (=> b!4558986 (= e!2841810 e!2841809)))

(declare-fun res!1902189 () Bool)

(assert (=> b!4558986 (=> res!1902189 e!2841809)))

(assert (=> b!4558986 (= res!1902189 (not (= (t!357948 (toList!4479 lm!1477)) (tail!7853 (toList!4479 lt!1730329)))))))

(assert (=> b!4558986 (= lt!1730329 (+!1658 lm!1477 lt!1730334))))

(assert (=> b!4558986 (eq!687 (extractMap!1292 (Cons!50850 lt!1730334 Nil!50850)) (-!456 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)) key!3287))))

(assert (=> b!4558986 (= lt!1730316 (tuple2!51381 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477)))))))

(assert (=> b!4558986 (= lt!1730334 (tuple2!51381 hash!344 newBucket!178))))

(declare-fun lt!1730314 () Unit!102334)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!76 ((_ BitVec 64) List!50973 List!50973 K!12230 Hashable!5631) Unit!102334)

(assert (=> b!4558986 (= lt!1730314 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!76 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4558986 (contains!13697 (extractMap!1292 lt!1730322) key!3287)))

(declare-fun lt!1730324 () Unit!102334)

(declare-fun lemmaListContainsThenExtractedMapContains!202 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> b!4558986 (= lt!1730324 (lemmaListContainsThenExtractedMapContains!202 (ListLongMap!3112 lt!1730322) key!3287 hashF!1107))))

(declare-fun b!4558987 () Bool)

(assert (=> b!4558987 (= e!2841806 (eq!687 lt!1730315 (-!456 lt!1730327 key!3287)))))

(declare-fun b!4558988 () Bool)

(declare-fun res!1902196 () Bool)

(assert (=> b!4558988 (=> (not res!1902196) (not e!2841817))))

(declare-fun allKeysSameHashInMap!1343 (ListLongMap!3111 Hashable!5631) Bool)

(assert (=> b!4558988 (= res!1902196 (allKeysSameHashInMap!1343 lm!1477 hashF!1107))))

(declare-fun b!4558989 () Bool)

(declare-fun e!2841818 () Bool)

(assert (=> b!4558989 (= e!2841809 e!2841818)))

(declare-fun res!1902190 () Bool)

(assert (=> b!4558989 (=> res!1902190 e!2841818)))

(assert (=> b!4558989 (= res!1902190 (not (= lt!1730329 (+!1658 lt!1730309 lt!1730334))))))

(declare-fun tail!7854 (ListLongMap!3111) ListLongMap!3111)

(assert (=> b!4558989 (= lt!1730309 (tail!7854 lm!1477))))

(declare-fun res!1902184 () Bool)

(assert (=> start!453004 (=> (not res!1902184) (not e!2841817))))

(declare-fun lambda!179561 () Int)

(declare-fun forall!10417 (List!50974 Int) Bool)

(assert (=> start!453004 (= res!1902184 (forall!10417 (toList!4479 lm!1477) lambda!179561))))

(assert (=> start!453004 e!2841817))

(assert (=> start!453004 true))

(declare-fun e!2841804 () Bool)

(declare-fun inv!66414 (ListLongMap!3111) Bool)

(assert (=> start!453004 (and (inv!66414 lm!1477) e!2841804)))

(declare-fun tp_is_empty!28221 () Bool)

(assert (=> start!453004 tp_is_empty!28221))

(declare-fun e!2841811 () Bool)

(assert (=> start!453004 e!2841811))

(declare-fun b!4558975 () Bool)

(assert (=> b!4558975 (= e!2841808 false)))

(declare-fun b!4558990 () Bool)

(declare-fun res!1902183 () Bool)

(declare-fun e!2841814 () Bool)

(assert (=> b!4558990 (=> (not res!1902183) (not e!2841814))))

(declare-fun allKeysSameHash!1090 (List!50973 (_ BitVec 64) Hashable!5631) Bool)

(assert (=> b!4558990 (= res!1902183 (allKeysSameHash!1090 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4558991 () Bool)

(declare-fun res!1902188 () Bool)

(assert (=> b!4558991 (=> res!1902188 e!2841806)))

(assert (=> b!4558991 (= res!1902188 (not (eq!687 lt!1730323 lt!1730327)))))

(declare-fun b!4558992 () Bool)

(declare-fun Unit!102339 () Unit!102334)

(assert (=> b!4558992 (= e!2841821 Unit!102339)))

(declare-fun lt!1730333 () Unit!102334)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!224 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> b!4558992 (= lt!1730333 (lemmaNotInItsHashBucketThenNotInMap!224 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4558992 false))

(declare-fun b!4558993 () Bool)

(declare-fun tp!1339139 () Bool)

(assert (=> b!4558993 (= e!2841804 tp!1339139)))

(declare-fun b!4558994 () Bool)

(declare-fun tp!1339138 () Bool)

(declare-fun tp_is_empty!28223 () Bool)

(assert (=> b!4558994 (= e!2841811 (and tp_is_empty!28221 tp_is_empty!28223 tp!1339138))))

(declare-fun b!4558995 () Bool)

(assert (=> b!4558995 (= e!2841805 e!2841814)))

(declare-fun res!1902180 () Bool)

(assert (=> b!4558995 (=> (not res!1902180) (not e!2841814))))

(assert (=> b!4558995 (= res!1902180 (= lt!1730313 hash!344))))

(declare-fun hash!3022 (Hashable!5631 K!12230) (_ BitVec 64))

(assert (=> b!4558995 (= lt!1730313 (hash!3022 hashF!1107 key!3287))))

(declare-fun b!4558996 () Bool)

(assert (=> b!4558996 (= e!2841818 e!2841816)))

(declare-fun res!1902186 () Bool)

(assert (=> b!4558996 (=> res!1902186 e!2841816)))

(assert (=> b!4558996 (= res!1902186 (not (= lt!1730319 lt!1730318)))))

(assert (=> b!4558996 (= lt!1730318 (extractMap!1292 (t!357948 (toList!4479 lm!1477))))))

(assert (=> b!4558996 (= lt!1730319 (extractMap!1292 (toList!4479 lt!1730309)))))

(declare-fun b!4558997 () Bool)

(assert (=> b!4558997 (= e!2841814 (not e!2841812))))

(declare-fun res!1902191 () Bool)

(assert (=> b!4558997 (=> res!1902191 e!2841812)))

(declare-fun lt!1730311 () List!50973)

(declare-fun removePairForKey!863 (List!50973 K!12230) List!50973)

(assert (=> b!4558997 (= res!1902191 (not (= newBucket!178 (removePairForKey!863 lt!1730311 key!3287))))))

(declare-fun lt!1730328 () Unit!102334)

(declare-fun lt!1730320 () tuple2!51380)

(declare-fun forallContained!2681 (List!50974 Int tuple2!51380) Unit!102334)

(assert (=> b!4558997 (= lt!1730328 (forallContained!2681 (toList!4479 lm!1477) lambda!179561 lt!1730320))))

(declare-fun contains!13698 (List!50974 tuple2!51380) Bool)

(assert (=> b!4558997 (contains!13698 (toList!4479 lm!1477) lt!1730320)))

(assert (=> b!4558997 (= lt!1730320 (tuple2!51381 hash!344 lt!1730311))))

(declare-fun lt!1730310 () Unit!102334)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!748 (List!50974 (_ BitVec 64) List!50973) Unit!102334)

(assert (=> b!4558997 (= lt!1730310 (lemmaGetValueByKeyImpliesContainsTuple!748 (toList!4479 lm!1477) hash!344 lt!1730311))))

(declare-fun apply!11973 (ListLongMap!3111 (_ BitVec 64)) List!50973)

(assert (=> b!4558997 (= lt!1730311 (apply!11973 lm!1477 hash!344))))

(assert (=> b!4558997 (contains!13696 lm!1477 lt!1730313)))

(declare-fun lt!1730317 () Unit!102334)

(assert (=> b!4558997 (= lt!1730317 (lemmaInGenMapThenLongMapContainsHash!310 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!453004 res!1902184) b!4558988))

(assert (= (and b!4558988 res!1902196) b!4558980))

(assert (= (and b!4558980 res!1902193) b!4558995))

(assert (= (and b!4558995 res!1902180) b!4558990))

(assert (= (and b!4558990 res!1902183) b!4558997))

(assert (= (and b!4558997 (not res!1902191)) b!4558973))

(assert (= (and b!4558973 (not res!1902182)) b!4558974))

(assert (= (and b!4558974 (not res!1902194)) b!4558983))

(assert (= (and b!4558983 c!779466) b!4558992))

(assert (= (and b!4558983 (not c!779466)) b!4558984))

(assert (= (and b!4558983 (not res!1902197)) b!4558978))

(assert (= (and b!4558978 (not res!1902192)) b!4558986))

(assert (= (and b!4558986 (not res!1902189)) b!4558989))

(assert (= (and b!4558989 (not res!1902190)) b!4558996))

(assert (= (and b!4558996 (not res!1902186)) b!4558985))

(assert (= (and b!4558985 c!779465) b!4558979))

(assert (= (and b!4558985 (not c!779465)) b!4558981))

(assert (= (and b!4558979 res!1902195) b!4558975))

(assert (= (and b!4558985 (not res!1902179)) b!4558982))

(assert (= (and b!4558982 (not res!1902181)) b!4558977))

(assert (= (and b!4558977 (not res!1902187)) b!4558976))

(assert (= (and b!4558976 (not res!1902185)) b!4558991))

(assert (= (and b!4558991 (not res!1902188)) b!4558987))

(assert (= start!453004 b!4558993))

(assert (= (and start!453004 ((_ is Cons!50849) newBucket!178)) b!4558994))

(declare-fun m!5348751 () Bool)

(assert (=> b!4558987 m!5348751))

(assert (=> b!4558987 m!5348751))

(declare-fun m!5348753 () Bool)

(assert (=> b!4558987 m!5348753))

(declare-fun m!5348755 () Bool)

(assert (=> b!4558976 m!5348755))

(assert (=> b!4558976 m!5348755))

(declare-fun m!5348757 () Bool)

(assert (=> b!4558976 m!5348757))

(declare-fun m!5348759 () Bool)

(assert (=> b!4558976 m!5348759))

(declare-fun m!5348761 () Bool)

(assert (=> b!4558976 m!5348761))

(declare-fun m!5348763 () Bool)

(assert (=> b!4558973 m!5348763))

(declare-fun m!5348765 () Bool)

(assert (=> b!4558991 m!5348765))

(declare-fun m!5348767 () Bool)

(assert (=> b!4558989 m!5348767))

(declare-fun m!5348769 () Bool)

(assert (=> b!4558989 m!5348769))

(declare-fun m!5348771 () Bool)

(assert (=> b!4558990 m!5348771))

(declare-fun m!5348773 () Bool)

(assert (=> b!4558977 m!5348773))

(assert (=> b!4558977 m!5348773))

(declare-fun m!5348775 () Bool)

(assert (=> b!4558977 m!5348775))

(declare-fun m!5348777 () Bool)

(assert (=> b!4558977 m!5348777))

(declare-fun m!5348779 () Bool)

(assert (=> b!4558997 m!5348779))

(declare-fun m!5348781 () Bool)

(assert (=> b!4558997 m!5348781))

(declare-fun m!5348783 () Bool)

(assert (=> b!4558997 m!5348783))

(declare-fun m!5348785 () Bool)

(assert (=> b!4558997 m!5348785))

(declare-fun m!5348787 () Bool)

(assert (=> b!4558997 m!5348787))

(declare-fun m!5348789 () Bool)

(assert (=> b!4558997 m!5348789))

(declare-fun m!5348791 () Bool)

(assert (=> b!4558997 m!5348791))

(declare-fun m!5348793 () Bool)

(assert (=> b!4558985 m!5348793))

(declare-fun m!5348795 () Bool)

(assert (=> b!4558978 m!5348795))

(declare-fun m!5348797 () Bool)

(assert (=> b!4558986 m!5348797))

(declare-fun m!5348799 () Bool)

(assert (=> b!4558986 m!5348799))

(declare-fun m!5348801 () Bool)

(assert (=> b!4558986 m!5348801))

(declare-fun m!5348803 () Bool)

(assert (=> b!4558986 m!5348803))

(declare-fun m!5348805 () Bool)

(assert (=> b!4558986 m!5348805))

(declare-fun m!5348807 () Bool)

(assert (=> b!4558986 m!5348807))

(declare-fun m!5348809 () Bool)

(assert (=> b!4558986 m!5348809))

(assert (=> b!4558986 m!5348797))

(declare-fun m!5348811 () Bool)

(assert (=> b!4558986 m!5348811))

(assert (=> b!4558986 m!5348799))

(assert (=> b!4558986 m!5348805))

(declare-fun m!5348813 () Bool)

(assert (=> b!4558986 m!5348813))

(declare-fun m!5348815 () Bool)

(assert (=> b!4558986 m!5348815))

(assert (=> b!4558986 m!5348803))

(declare-fun m!5348817 () Bool)

(assert (=> b!4558992 m!5348817))

(declare-fun m!5348819 () Bool)

(assert (=> b!4558996 m!5348819))

(declare-fun m!5348821 () Bool)

(assert (=> b!4558996 m!5348821))

(declare-fun m!5348823 () Bool)

(assert (=> b!4558983 m!5348823))

(declare-fun m!5348825 () Bool)

(assert (=> b!4558982 m!5348825))

(declare-fun m!5348827 () Bool)

(assert (=> b!4558982 m!5348827))

(declare-fun m!5348829 () Bool)

(assert (=> b!4558982 m!5348829))

(assert (=> b!4558982 m!5348827))

(declare-fun m!5348831 () Bool)

(assert (=> b!4558982 m!5348831))

(declare-fun m!5348833 () Bool)

(assert (=> b!4558982 m!5348833))

(assert (=> b!4558982 m!5348825))

(assert (=> b!4558982 m!5348831))

(declare-fun m!5348835 () Bool)

(assert (=> b!4558982 m!5348835))

(declare-fun m!5348837 () Bool)

(assert (=> b!4558980 m!5348837))

(declare-fun m!5348839 () Bool)

(assert (=> b!4558980 m!5348839))

(declare-fun m!5348841 () Bool)

(assert (=> b!4558988 m!5348841))

(declare-fun m!5348843 () Bool)

(assert (=> b!4558995 m!5348843))

(declare-fun m!5348845 () Bool)

(assert (=> b!4558979 m!5348845))

(declare-fun m!5348847 () Bool)

(assert (=> b!4558979 m!5348847))

(declare-fun m!5348849 () Bool)

(assert (=> start!453004 m!5348849))

(declare-fun m!5348851 () Bool)

(assert (=> start!453004 m!5348851))

(check-sat (not b!4558995) (not b!4558989) (not b!4558985) (not b!4558977) (not b!4558982) (not b!4558988) (not b!4558983) (not b!4558987) (not b!4558996) (not b!4558979) (not b!4558994) (not b!4558980) (not b!4558986) (not b!4558992) (not b!4558976) tp_is_empty!28221 (not b!4558991) (not b!4558997) (not b!4558990) (not b!4558973) (not start!453004) tp_is_empty!28223 (not b!4558978) (not b!4558993))
(check-sat)
(get-model)

(declare-fun d!1419020 () Bool)

(declare-fun res!1902214 () Bool)

(declare-fun e!2841841 () Bool)

(assert (=> d!1419020 (=> res!1902214 e!2841841)))

(assert (=> d!1419020 (= res!1902214 (and ((_ is Cons!50849) (_2!28984 (h!56755 (toList!4479 lm!1477)))) (= (_1!28983 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))) key!3287)))))

(assert (=> d!1419020 (= (containsKey!1959 (_2!28984 (h!56755 (toList!4479 lm!1477))) key!3287) e!2841841)))

(declare-fun b!4559020 () Bool)

(declare-fun e!2841842 () Bool)

(assert (=> b!4559020 (= e!2841841 e!2841842)))

(declare-fun res!1902215 () Bool)

(assert (=> b!4559020 (=> (not res!1902215) (not e!2841842))))

(assert (=> b!4559020 (= res!1902215 ((_ is Cons!50849) (_2!28984 (h!56755 (toList!4479 lm!1477)))))))

(declare-fun b!4559021 () Bool)

(assert (=> b!4559021 (= e!2841842 (containsKey!1959 (t!357947 (_2!28984 (h!56755 (toList!4479 lm!1477)))) key!3287))))

(assert (= (and d!1419020 (not res!1902214)) b!4559020))

(assert (= (and b!4559020 res!1902215) b!4559021))

(declare-fun m!5348889 () Bool)

(assert (=> b!4559021 m!5348889))

(assert (=> b!4558983 d!1419020))

(declare-fun d!1419022 () Bool)

(declare-fun res!1902220 () Bool)

(declare-fun e!2841847 () Bool)

(assert (=> d!1419022 (=> res!1902220 e!2841847)))

(assert (=> d!1419022 (= res!1902220 ((_ is Nil!50850) (toList!4479 lm!1477)))))

(assert (=> d!1419022 (= (forall!10417 (toList!4479 lm!1477) lambda!179561) e!2841847)))

(declare-fun b!4559026 () Bool)

(declare-fun e!2841848 () Bool)

(assert (=> b!4559026 (= e!2841847 e!2841848)))

(declare-fun res!1902221 () Bool)

(assert (=> b!4559026 (=> (not res!1902221) (not e!2841848))))

(declare-fun dynLambda!21267 (Int tuple2!51380) Bool)

(assert (=> b!4559026 (= res!1902221 (dynLambda!21267 lambda!179561 (h!56755 (toList!4479 lm!1477))))))

(declare-fun b!4559027 () Bool)

(assert (=> b!4559027 (= e!2841848 (forall!10417 (t!357948 (toList!4479 lm!1477)) lambda!179561))))

(assert (= (and d!1419022 (not res!1902220)) b!4559026))

(assert (= (and b!4559026 res!1902221) b!4559027))

(declare-fun b_lambda!162007 () Bool)

(assert (=> (not b_lambda!162007) (not b!4559026)))

(declare-fun m!5348891 () Bool)

(assert (=> b!4559026 m!5348891))

(declare-fun m!5348893 () Bool)

(assert (=> b!4559027 m!5348893))

(assert (=> start!453004 d!1419022))

(declare-fun d!1419024 () Bool)

(declare-fun isStrictlySorted!481 (List!50974) Bool)

(assert (=> d!1419024 (= (inv!66414 lm!1477) (isStrictlySorted!481 (toList!4479 lm!1477)))))

(declare-fun bs!939390 () Bool)

(assert (= bs!939390 d!1419024))

(declare-fun m!5348895 () Bool)

(assert (=> bs!939390 m!5348895))

(assert (=> start!453004 d!1419024))

(declare-fun d!1419026 () Bool)

(declare-fun hash!3027 (Hashable!5631 K!12230) (_ BitVec 64))

(assert (=> d!1419026 (= (hash!3022 hashF!1107 key!3287) (hash!3027 hashF!1107 key!3287))))

(declare-fun bs!939391 () Bool)

(assert (= bs!939391 d!1419026))

(declare-fun m!5348897 () Bool)

(assert (=> bs!939391 m!5348897))

(assert (=> b!4558995 d!1419026))

(declare-fun d!1419028 () Bool)

(declare-fun res!1902226 () Bool)

(declare-fun e!2841853 () Bool)

(assert (=> d!1419028 (=> res!1902226 e!2841853)))

(assert (=> d!1419028 (= res!1902226 (not ((_ is Cons!50849) newBucket!178)))))

(assert (=> d!1419028 (= (noDuplicateKeys!1236 newBucket!178) e!2841853)))

(declare-fun b!4559032 () Bool)

(declare-fun e!2841854 () Bool)

(assert (=> b!4559032 (= e!2841853 e!2841854)))

(declare-fun res!1902227 () Bool)

(assert (=> b!4559032 (=> (not res!1902227) (not e!2841854))))

(assert (=> b!4559032 (= res!1902227 (not (containsKey!1959 (t!357947 newBucket!178) (_1!28983 (h!56754 newBucket!178)))))))

(declare-fun b!4559033 () Bool)

(assert (=> b!4559033 (= e!2841854 (noDuplicateKeys!1236 (t!357947 newBucket!178)))))

(assert (= (and d!1419028 (not res!1902226)) b!4559032))

(assert (= (and b!4559032 res!1902227) b!4559033))

(declare-fun m!5348899 () Bool)

(assert (=> b!4559032 m!5348899))

(declare-fun m!5348901 () Bool)

(assert (=> b!4559033 m!5348901))

(assert (=> b!4558973 d!1419028))

(declare-fun d!1419030 () Bool)

(declare-fun e!2841857 () Bool)

(assert (=> d!1419030 e!2841857))

(declare-fun res!1902232 () Bool)

(assert (=> d!1419030 (=> (not res!1902232) (not e!2841857))))

(declare-fun lt!1730363 () ListLongMap!3111)

(assert (=> d!1419030 (= res!1902232 (contains!13696 lt!1730363 (_1!28984 lt!1730334)))))

(declare-fun lt!1730362 () List!50974)

(assert (=> d!1419030 (= lt!1730363 (ListLongMap!3112 lt!1730362))))

(declare-fun lt!1730364 () Unit!102334)

(declare-fun lt!1730361 () Unit!102334)

(assert (=> d!1419030 (= lt!1730364 lt!1730361)))

(declare-datatypes ((Option!11263 0))(
  ( (None!11262) (Some!11262 (v!45038 List!50973)) )
))
(declare-fun getValueByKey!1195 (List!50974 (_ BitVec 64)) Option!11263)

(assert (=> d!1419030 (= (getValueByKey!1195 lt!1730362 (_1!28984 lt!1730334)) (Some!11262 (_2!28984 lt!1730334)))))

(declare-fun lemmaContainsTupThenGetReturnValue!749 (List!50974 (_ BitVec 64) List!50973) Unit!102334)

(assert (=> d!1419030 (= lt!1730361 (lemmaContainsTupThenGetReturnValue!749 lt!1730362 (_1!28984 lt!1730334) (_2!28984 lt!1730334)))))

(declare-fun insertStrictlySorted!457 (List!50974 (_ BitVec 64) List!50973) List!50974)

(assert (=> d!1419030 (= lt!1730362 (insertStrictlySorted!457 (toList!4479 lm!1477) (_1!28984 lt!1730334) (_2!28984 lt!1730334)))))

(assert (=> d!1419030 (= (+!1658 lm!1477 lt!1730334) lt!1730363)))

(declare-fun b!4559038 () Bool)

(declare-fun res!1902233 () Bool)

(assert (=> b!4559038 (=> (not res!1902233) (not e!2841857))))

(assert (=> b!4559038 (= res!1902233 (= (getValueByKey!1195 (toList!4479 lt!1730363) (_1!28984 lt!1730334)) (Some!11262 (_2!28984 lt!1730334))))))

(declare-fun b!4559039 () Bool)

(assert (=> b!4559039 (= e!2841857 (contains!13698 (toList!4479 lt!1730363) lt!1730334))))

(assert (= (and d!1419030 res!1902232) b!4559038))

(assert (= (and b!4559038 res!1902233) b!4559039))

(declare-fun m!5348903 () Bool)

(assert (=> d!1419030 m!5348903))

(declare-fun m!5348905 () Bool)

(assert (=> d!1419030 m!5348905))

(declare-fun m!5348907 () Bool)

(assert (=> d!1419030 m!5348907))

(declare-fun m!5348909 () Bool)

(assert (=> d!1419030 m!5348909))

(declare-fun m!5348911 () Bool)

(assert (=> b!4559038 m!5348911))

(declare-fun m!5348913 () Bool)

(assert (=> b!4559039 m!5348913))

(assert (=> b!4558986 d!1419030))

(declare-fun bs!939392 () Bool)

(declare-fun d!1419032 () Bool)

(assert (= bs!939392 (and d!1419032 start!453004)))

(declare-fun lambda!179567 () Int)

(assert (=> bs!939392 (= lambda!179567 lambda!179561)))

(declare-fun lt!1730367 () ListMap!3741)

(declare-fun invariantList!1068 (List!50973) Bool)

(assert (=> d!1419032 (invariantList!1068 (toList!4480 lt!1730367))))

(declare-fun e!2841860 () ListMap!3741)

(assert (=> d!1419032 (= lt!1730367 e!2841860)))

(declare-fun c!779472 () Bool)

(assert (=> d!1419032 (= c!779472 ((_ is Cons!50850) (Cons!50850 lt!1730334 Nil!50850)))))

(assert (=> d!1419032 (forall!10417 (Cons!50850 lt!1730334 Nil!50850) lambda!179567)))

(assert (=> d!1419032 (= (extractMap!1292 (Cons!50850 lt!1730334 Nil!50850)) lt!1730367)))

(declare-fun b!4559044 () Bool)

(assert (=> b!4559044 (= e!2841860 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (Cons!50850 lt!1730334 Nil!50850))) (extractMap!1292 (t!357948 (Cons!50850 lt!1730334 Nil!50850)))))))

(declare-fun b!4559045 () Bool)

(assert (=> b!4559045 (= e!2841860 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419032 c!779472) b!4559044))

(assert (= (and d!1419032 (not c!779472)) b!4559045))

(declare-fun m!5348915 () Bool)

(assert (=> d!1419032 m!5348915))

(declare-fun m!5348917 () Bool)

(assert (=> d!1419032 m!5348917))

(declare-fun m!5348919 () Bool)

(assert (=> b!4559044 m!5348919))

(assert (=> b!4559044 m!5348919))

(declare-fun m!5348921 () Bool)

(assert (=> b!4559044 m!5348921))

(assert (=> b!4558986 d!1419032))

(declare-fun d!1419034 () Bool)

(declare-fun e!2841867 () Bool)

(assert (=> d!1419034 e!2841867))

(declare-fun res!1902238 () Bool)

(assert (=> d!1419034 (=> (not res!1902238) (not e!2841867))))

(declare-fun lt!1730412 () ListMap!3741)

(assert (=> d!1419034 (= res!1902238 (not (contains!13697 lt!1730412 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!191 (List!50973 K!12230) List!50973)

(assert (=> d!1419034 (= lt!1730412 (ListMap!3742 (removePresrvNoDuplicatedKeys!191 (toList!4480 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850))) key!3287)))))

(assert (=> d!1419034 (= (-!456 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)) key!3287) lt!1730412)))

(declare-fun b!4559052 () Bool)

(declare-datatypes ((List!50976 0))(
  ( (Nil!50852) (Cons!50852 (h!56759 K!12230) (t!357950 List!50976)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8507 (List!50976) (InoxSet K!12230))

(declare-fun keys!17727 (ListMap!3741) List!50976)

(assert (=> b!4559052 (= e!2841867 (= ((_ map and) (content!8507 (keys!17727 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)))) ((_ map not) (store ((as const (Array K!12230 Bool)) false) key!3287 true))) (content!8507 (keys!17727 lt!1730412))))))

(assert (= (and d!1419034 res!1902238) b!4559052))

(declare-fun m!5348923 () Bool)

(assert (=> d!1419034 m!5348923))

(declare-fun m!5348925 () Bool)

(assert (=> d!1419034 m!5348925))

(assert (=> b!4559052 m!5348799))

(declare-fun m!5348927 () Bool)

(assert (=> b!4559052 m!5348927))

(declare-fun m!5348929 () Bool)

(assert (=> b!4559052 m!5348929))

(assert (=> b!4559052 m!5348927))

(declare-fun m!5348931 () Bool)

(assert (=> b!4559052 m!5348931))

(declare-fun m!5348933 () Bool)

(assert (=> b!4559052 m!5348933))

(assert (=> b!4559052 m!5348929))

(declare-fun m!5348935 () Bool)

(assert (=> b!4559052 m!5348935))

(assert (=> b!4558986 d!1419034))

(declare-fun bs!939393 () Bool)

(declare-fun d!1419036 () Bool)

(assert (= bs!939393 (and d!1419036 start!453004)))

(declare-fun lambda!179592 () Int)

(assert (=> bs!939393 (= lambda!179592 lambda!179561)))

(declare-fun bs!939394 () Bool)

(assert (= bs!939394 (and d!1419036 d!1419032)))

(assert (=> bs!939394 (= lambda!179592 lambda!179567)))

(declare-fun lt!1730413 () ListMap!3741)

(assert (=> d!1419036 (invariantList!1068 (toList!4480 lt!1730413))))

(declare-fun e!2841868 () ListMap!3741)

(assert (=> d!1419036 (= lt!1730413 e!2841868)))

(declare-fun c!779475 () Bool)

(assert (=> d!1419036 (= c!779475 ((_ is Cons!50850) (Cons!50850 lt!1730316 Nil!50850)))))

(assert (=> d!1419036 (forall!10417 (Cons!50850 lt!1730316 Nil!50850) lambda!179592)))

(assert (=> d!1419036 (= (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)) lt!1730413)))

(declare-fun b!4559055 () Bool)

(assert (=> b!4559055 (= e!2841868 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (Cons!50850 lt!1730316 Nil!50850))) (extractMap!1292 (t!357948 (Cons!50850 lt!1730316 Nil!50850)))))))

(declare-fun b!4559056 () Bool)

(assert (=> b!4559056 (= e!2841868 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419036 c!779475) b!4559055))

(assert (= (and d!1419036 (not c!779475)) b!4559056))

(declare-fun m!5348937 () Bool)

(assert (=> d!1419036 m!5348937))

(declare-fun m!5348939 () Bool)

(assert (=> d!1419036 m!5348939))

(declare-fun m!5348941 () Bool)

(assert (=> b!4559055 m!5348941))

(assert (=> b!4559055 m!5348941))

(declare-fun m!5348943 () Bool)

(assert (=> b!4559055 m!5348943))

(assert (=> b!4558986 d!1419036))

(declare-fun bs!939395 () Bool)

(declare-fun d!1419038 () Bool)

(assert (= bs!939395 (and d!1419038 start!453004)))

(declare-fun lambda!179593 () Int)

(assert (=> bs!939395 (= lambda!179593 lambda!179561)))

(declare-fun bs!939396 () Bool)

(assert (= bs!939396 (and d!1419038 d!1419032)))

(assert (=> bs!939396 (= lambda!179593 lambda!179567)))

(declare-fun bs!939397 () Bool)

(assert (= bs!939397 (and d!1419038 d!1419036)))

(assert (=> bs!939397 (= lambda!179593 lambda!179592)))

(declare-fun lt!1730414 () ListMap!3741)

(assert (=> d!1419038 (invariantList!1068 (toList!4480 lt!1730414))))

(declare-fun e!2841869 () ListMap!3741)

(assert (=> d!1419038 (= lt!1730414 e!2841869)))

(declare-fun c!779476 () Bool)

(assert (=> d!1419038 (= c!779476 ((_ is Cons!50850) lt!1730322))))

(assert (=> d!1419038 (forall!10417 lt!1730322 lambda!179593)))

(assert (=> d!1419038 (= (extractMap!1292 lt!1730322) lt!1730414)))

(declare-fun b!4559057 () Bool)

(assert (=> b!4559057 (= e!2841869 (addToMapMapFromBucket!754 (_2!28984 (h!56755 lt!1730322)) (extractMap!1292 (t!357948 lt!1730322))))))

(declare-fun b!4559058 () Bool)

(assert (=> b!4559058 (= e!2841869 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419038 c!779476) b!4559057))

(assert (= (and d!1419038 (not c!779476)) b!4559058))

(declare-fun m!5348945 () Bool)

(assert (=> d!1419038 m!5348945))

(declare-fun m!5348947 () Bool)

(assert (=> d!1419038 m!5348947))

(declare-fun m!5348949 () Bool)

(assert (=> b!4559057 m!5348949))

(assert (=> b!4559057 m!5348949))

(declare-fun m!5348951 () Bool)

(assert (=> b!4559057 m!5348951))

(assert (=> b!4558986 d!1419038))

(declare-fun d!1419040 () Bool)

(declare-fun e!2841894 () Bool)

(assert (=> d!1419040 e!2841894))

(declare-fun res!1902253 () Bool)

(assert (=> d!1419040 (=> res!1902253 e!2841894)))

(declare-fun e!2841893 () Bool)

(assert (=> d!1419040 (= res!1902253 e!2841893)))

(declare-fun res!1902252 () Bool)

(assert (=> d!1419040 (=> (not res!1902252) (not e!2841893))))

(declare-fun lt!1730455 () Bool)

(assert (=> d!1419040 (= res!1902252 (not lt!1730455))))

(declare-fun lt!1730458 () Bool)

(assert (=> d!1419040 (= lt!1730455 lt!1730458)))

(declare-fun lt!1730462 () Unit!102334)

(declare-fun e!2841891 () Unit!102334)

(assert (=> d!1419040 (= lt!1730462 e!2841891)))

(declare-fun c!779488 () Bool)

(assert (=> d!1419040 (= c!779488 lt!1730458)))

(declare-fun containsKey!1962 (List!50973 K!12230) Bool)

(assert (=> d!1419040 (= lt!1730458 (containsKey!1962 (toList!4480 (extractMap!1292 lt!1730322)) key!3287))))

(assert (=> d!1419040 (= (contains!13697 (extractMap!1292 lt!1730322) key!3287) lt!1730455)))

(declare-fun b!4559094 () Bool)

(declare-fun e!2841892 () Bool)

(assert (=> b!4559094 (= e!2841894 e!2841892)))

(declare-fun res!1902254 () Bool)

(assert (=> b!4559094 (=> (not res!1902254) (not e!2841892))))

(declare-datatypes ((Option!11264 0))(
  ( (None!11263) (Some!11263 (v!45039 V!12476)) )
))
(declare-fun isDefined!8535 (Option!11264) Bool)

(declare-fun getValueByKey!1196 (List!50973 K!12230) Option!11264)

(assert (=> b!4559094 (= res!1902254 (isDefined!8535 (getValueByKey!1196 (toList!4480 (extractMap!1292 lt!1730322)) key!3287)))))

(declare-fun b!4559095 () Bool)

(declare-fun e!2841890 () Unit!102334)

(assert (=> b!4559095 (= e!2841891 e!2841890)))

(declare-fun c!779489 () Bool)

(declare-fun call!318192 () Bool)

(assert (=> b!4559095 (= c!779489 call!318192)))

(declare-fun b!4559096 () Bool)

(declare-fun contains!13700 (List!50976 K!12230) Bool)

(assert (=> b!4559096 (= e!2841893 (not (contains!13700 (keys!17727 (extractMap!1292 lt!1730322)) key!3287)))))

(declare-fun b!4559097 () Bool)

(declare-fun Unit!102354 () Unit!102334)

(assert (=> b!4559097 (= e!2841890 Unit!102354)))

(declare-fun bm!318187 () Bool)

(declare-fun e!2841895 () List!50976)

(assert (=> bm!318187 (= call!318192 (contains!13700 e!2841895 key!3287))))

(declare-fun c!779487 () Bool)

(assert (=> bm!318187 (= c!779487 c!779488)))

(declare-fun b!4559098 () Bool)

(declare-fun lt!1730456 () Unit!102334)

(assert (=> b!4559098 (= e!2841891 lt!1730456)))

(declare-fun lt!1730461 () Unit!102334)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1099 (List!50973 K!12230) Unit!102334)

(assert (=> b!4559098 (= lt!1730461 (lemmaContainsKeyImpliesGetValueByKeyDefined!1099 (toList!4480 (extractMap!1292 lt!1730322)) key!3287))))

(assert (=> b!4559098 (isDefined!8535 (getValueByKey!1196 (toList!4480 (extractMap!1292 lt!1730322)) key!3287))))

(declare-fun lt!1730460 () Unit!102334)

(assert (=> b!4559098 (= lt!1730460 lt!1730461)))

(declare-fun lemmaInListThenGetKeysListContains!512 (List!50973 K!12230) Unit!102334)

(assert (=> b!4559098 (= lt!1730456 (lemmaInListThenGetKeysListContains!512 (toList!4480 (extractMap!1292 lt!1730322)) key!3287))))

(assert (=> b!4559098 call!318192))

(declare-fun b!4559099 () Bool)

(assert (=> b!4559099 (= e!2841895 (keys!17727 (extractMap!1292 lt!1730322)))))

(declare-fun b!4559100 () Bool)

(assert (=> b!4559100 (= e!2841892 (contains!13700 (keys!17727 (extractMap!1292 lt!1730322)) key!3287))))

(declare-fun b!4559101 () Bool)

(declare-fun getKeysList!516 (List!50973) List!50976)

(assert (=> b!4559101 (= e!2841895 (getKeysList!516 (toList!4480 (extractMap!1292 lt!1730322))))))

(declare-fun b!4559102 () Bool)

(assert (=> b!4559102 false))

(declare-fun lt!1730459 () Unit!102334)

(declare-fun lt!1730457 () Unit!102334)

(assert (=> b!4559102 (= lt!1730459 lt!1730457)))

(assert (=> b!4559102 (containsKey!1962 (toList!4480 (extractMap!1292 lt!1730322)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!515 (List!50973 K!12230) Unit!102334)

(assert (=> b!4559102 (= lt!1730457 (lemmaInGetKeysListThenContainsKey!515 (toList!4480 (extractMap!1292 lt!1730322)) key!3287))))

(declare-fun Unit!102355 () Unit!102334)

(assert (=> b!4559102 (= e!2841890 Unit!102355)))

(assert (= (and d!1419040 c!779488) b!4559098))

(assert (= (and d!1419040 (not c!779488)) b!4559095))

(assert (= (and b!4559095 c!779489) b!4559102))

(assert (= (and b!4559095 (not c!779489)) b!4559097))

(assert (= (or b!4559098 b!4559095) bm!318187))

(assert (= (and bm!318187 c!779487) b!4559101))

(assert (= (and bm!318187 (not c!779487)) b!4559099))

(assert (= (and d!1419040 res!1902252) b!4559096))

(assert (= (and d!1419040 (not res!1902253)) b!4559094))

(assert (= (and b!4559094 res!1902254) b!4559100))

(declare-fun m!5348991 () Bool)

(assert (=> bm!318187 m!5348991))

(assert (=> b!4559100 m!5348797))

(declare-fun m!5348993 () Bool)

(assert (=> b!4559100 m!5348993))

(assert (=> b!4559100 m!5348993))

(declare-fun m!5348995 () Bool)

(assert (=> b!4559100 m!5348995))

(assert (=> b!4559099 m!5348797))

(assert (=> b!4559099 m!5348993))

(declare-fun m!5348997 () Bool)

(assert (=> b!4559102 m!5348997))

(declare-fun m!5348999 () Bool)

(assert (=> b!4559102 m!5348999))

(assert (=> d!1419040 m!5348997))

(declare-fun m!5349001 () Bool)

(assert (=> b!4559094 m!5349001))

(assert (=> b!4559094 m!5349001))

(declare-fun m!5349003 () Bool)

(assert (=> b!4559094 m!5349003))

(assert (=> b!4559096 m!5348797))

(assert (=> b!4559096 m!5348993))

(assert (=> b!4559096 m!5348993))

(assert (=> b!4559096 m!5348995))

(declare-fun m!5349005 () Bool)

(assert (=> b!4559101 m!5349005))

(declare-fun m!5349007 () Bool)

(assert (=> b!4559098 m!5349007))

(assert (=> b!4559098 m!5349001))

(assert (=> b!4559098 m!5349001))

(assert (=> b!4559098 m!5349003))

(declare-fun m!5349009 () Bool)

(assert (=> b!4559098 m!5349009))

(assert (=> b!4558986 d!1419040))

(declare-fun bs!939403 () Bool)

(declare-fun d!1419046 () Bool)

(assert (= bs!939403 (and d!1419046 start!453004)))

(declare-fun lambda!179607 () Int)

(assert (=> bs!939403 (= lambda!179607 lambda!179561)))

(declare-fun bs!939404 () Bool)

(assert (= bs!939404 (and d!1419046 d!1419032)))

(assert (=> bs!939404 (= lambda!179607 lambda!179567)))

(declare-fun bs!939405 () Bool)

(assert (= bs!939405 (and d!1419046 d!1419036)))

(assert (=> bs!939405 (= lambda!179607 lambda!179592)))

(declare-fun bs!939406 () Bool)

(assert (= bs!939406 (and d!1419046 d!1419038)))

(assert (=> bs!939406 (= lambda!179607 lambda!179593)))

(assert (=> d!1419046 (contains!13697 (extractMap!1292 (toList!4479 (ListLongMap!3112 lt!1730322))) key!3287)))

(declare-fun lt!1730481 () Unit!102334)

(declare-fun choose!30175 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> d!1419046 (= lt!1730481 (choose!30175 (ListLongMap!3112 lt!1730322) key!3287 hashF!1107))))

(assert (=> d!1419046 (forall!10417 (toList!4479 (ListLongMap!3112 lt!1730322)) lambda!179607)))

(assert (=> d!1419046 (= (lemmaListContainsThenExtractedMapContains!202 (ListLongMap!3112 lt!1730322) key!3287 hashF!1107) lt!1730481)))

(declare-fun bs!939407 () Bool)

(assert (= bs!939407 d!1419046))

(declare-fun m!5349011 () Bool)

(assert (=> bs!939407 m!5349011))

(assert (=> bs!939407 m!5349011))

(declare-fun m!5349013 () Bool)

(assert (=> bs!939407 m!5349013))

(declare-fun m!5349015 () Bool)

(assert (=> bs!939407 m!5349015))

(declare-fun m!5349017 () Bool)

(assert (=> bs!939407 m!5349017))

(assert (=> b!4558986 d!1419046))

(declare-fun d!1419048 () Bool)

(assert (=> d!1419048 (eq!687 (extractMap!1292 (Cons!50850 (tuple2!51381 hash!344 newBucket!178) Nil!50850)) (-!456 (extractMap!1292 (Cons!50850 (tuple2!51381 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477)))) Nil!50850)) key!3287))))

(declare-fun lt!1730493 () Unit!102334)

(declare-fun choose!30176 ((_ BitVec 64) List!50973 List!50973 K!12230 Hashable!5631) Unit!102334)

(assert (=> d!1419048 (= lt!1730493 (choose!30176 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1419048 (noDuplicateKeys!1236 (_2!28984 (h!56755 (toList!4479 lm!1477))))))

(assert (=> d!1419048 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!76 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1730493)))

(declare-fun bs!939412 () Bool)

(assert (= bs!939412 d!1419048))

(declare-fun m!5349051 () Bool)

(assert (=> bs!939412 m!5349051))

(declare-fun m!5349053 () Bool)

(assert (=> bs!939412 m!5349053))

(declare-fun m!5349055 () Bool)

(assert (=> bs!939412 m!5349055))

(assert (=> bs!939412 m!5349053))

(declare-fun m!5349057 () Bool)

(assert (=> bs!939412 m!5349057))

(declare-fun m!5349059 () Bool)

(assert (=> bs!939412 m!5349059))

(declare-fun m!5349061 () Bool)

(assert (=> bs!939412 m!5349061))

(assert (=> bs!939412 m!5349061))

(assert (=> bs!939412 m!5349057))

(assert (=> b!4558986 d!1419048))

(declare-fun d!1419056 () Bool)

(declare-fun content!8508 (List!50973) (InoxSet tuple2!51378))

(assert (=> d!1419056 (= (eq!687 (extractMap!1292 (Cons!50850 lt!1730334 Nil!50850)) (-!456 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)) key!3287)) (= (content!8508 (toList!4480 (extractMap!1292 (Cons!50850 lt!1730334 Nil!50850)))) (content!8508 (toList!4480 (-!456 (extractMap!1292 (Cons!50850 lt!1730316 Nil!50850)) key!3287)))))))

(declare-fun bs!939413 () Bool)

(assert (= bs!939413 d!1419056))

(declare-fun m!5349063 () Bool)

(assert (=> bs!939413 m!5349063))

(declare-fun m!5349065 () Bool)

(assert (=> bs!939413 m!5349065))

(assert (=> b!4558986 d!1419056))

(declare-fun d!1419058 () Bool)

(assert (=> d!1419058 (= (tail!7853 (toList!4479 lt!1730329)) (t!357948 (toList!4479 lt!1730329)))))

(assert (=> b!4558986 d!1419058))

(declare-fun bs!939414 () Bool)

(declare-fun d!1419060 () Bool)

(assert (= bs!939414 (and d!1419060 d!1419032)))

(declare-fun lambda!179609 () Int)

(assert (=> bs!939414 (= lambda!179609 lambda!179567)))

(declare-fun bs!939415 () Bool)

(assert (= bs!939415 (and d!1419060 start!453004)))

(assert (=> bs!939415 (= lambda!179609 lambda!179561)))

(declare-fun bs!939416 () Bool)

(assert (= bs!939416 (and d!1419060 d!1419036)))

(assert (=> bs!939416 (= lambda!179609 lambda!179592)))

(declare-fun bs!939417 () Bool)

(assert (= bs!939417 (and d!1419060 d!1419038)))

(assert (=> bs!939417 (= lambda!179609 lambda!179593)))

(declare-fun bs!939418 () Bool)

(assert (= bs!939418 (and d!1419060 d!1419046)))

(assert (=> bs!939418 (= lambda!179609 lambda!179607)))

(declare-fun lt!1730494 () ListMap!3741)

(assert (=> d!1419060 (invariantList!1068 (toList!4480 lt!1730494))))

(declare-fun e!2841915 () ListMap!3741)

(assert (=> d!1419060 (= lt!1730494 e!2841915)))

(declare-fun c!779500 () Bool)

(assert (=> d!1419060 (= c!779500 ((_ is Cons!50850) (t!357948 (toList!4479 lm!1477))))))

(assert (=> d!1419060 (forall!10417 (t!357948 (toList!4479 lm!1477)) lambda!179609)))

(assert (=> d!1419060 (= (extractMap!1292 (t!357948 (toList!4479 lm!1477))) lt!1730494)))

(declare-fun b!4559132 () Bool)

(assert (=> b!4559132 (= e!2841915 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (t!357948 (toList!4479 lm!1477)))) (extractMap!1292 (t!357948 (t!357948 (toList!4479 lm!1477))))))))

(declare-fun b!4559133 () Bool)

(assert (=> b!4559133 (= e!2841915 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419060 c!779500) b!4559132))

(assert (= (and d!1419060 (not c!779500)) b!4559133))

(declare-fun m!5349067 () Bool)

(assert (=> d!1419060 m!5349067))

(declare-fun m!5349069 () Bool)

(assert (=> d!1419060 m!5349069))

(declare-fun m!5349071 () Bool)

(assert (=> b!4559132 m!5349071))

(assert (=> b!4559132 m!5349071))

(declare-fun m!5349073 () Bool)

(assert (=> b!4559132 m!5349073))

(assert (=> b!4558996 d!1419060))

(declare-fun bs!939419 () Bool)

(declare-fun d!1419062 () Bool)

(assert (= bs!939419 (and d!1419062 d!1419032)))

(declare-fun lambda!179610 () Int)

(assert (=> bs!939419 (= lambda!179610 lambda!179567)))

(declare-fun bs!939420 () Bool)

(assert (= bs!939420 (and d!1419062 d!1419060)))

(assert (=> bs!939420 (= lambda!179610 lambda!179609)))

(declare-fun bs!939421 () Bool)

(assert (= bs!939421 (and d!1419062 start!453004)))

(assert (=> bs!939421 (= lambda!179610 lambda!179561)))

(declare-fun bs!939422 () Bool)

(assert (= bs!939422 (and d!1419062 d!1419036)))

(assert (=> bs!939422 (= lambda!179610 lambda!179592)))

(declare-fun bs!939423 () Bool)

(assert (= bs!939423 (and d!1419062 d!1419038)))

(assert (=> bs!939423 (= lambda!179610 lambda!179593)))

(declare-fun bs!939424 () Bool)

(assert (= bs!939424 (and d!1419062 d!1419046)))

(assert (=> bs!939424 (= lambda!179610 lambda!179607)))

(declare-fun lt!1730495 () ListMap!3741)

(assert (=> d!1419062 (invariantList!1068 (toList!4480 lt!1730495))))

(declare-fun e!2841916 () ListMap!3741)

(assert (=> d!1419062 (= lt!1730495 e!2841916)))

(declare-fun c!779501 () Bool)

(assert (=> d!1419062 (= c!779501 ((_ is Cons!50850) (toList!4479 lt!1730309)))))

(assert (=> d!1419062 (forall!10417 (toList!4479 lt!1730309) lambda!179610)))

(assert (=> d!1419062 (= (extractMap!1292 (toList!4479 lt!1730309)) lt!1730495)))

(declare-fun b!4559134 () Bool)

(assert (=> b!4559134 (= e!2841916 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lt!1730309))) (extractMap!1292 (t!357948 (toList!4479 lt!1730309)))))))

(declare-fun b!4559135 () Bool)

(assert (=> b!4559135 (= e!2841916 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419062 c!779501) b!4559134))

(assert (= (and d!1419062 (not c!779501)) b!4559135))

(declare-fun m!5349075 () Bool)

(assert (=> d!1419062 m!5349075))

(declare-fun m!5349077 () Bool)

(assert (=> d!1419062 m!5349077))

(declare-fun m!5349079 () Bool)

(assert (=> b!4559134 m!5349079))

(assert (=> b!4559134 m!5349079))

(declare-fun m!5349081 () Bool)

(assert (=> b!4559134 m!5349081))

(assert (=> b!4558996 d!1419062))

(declare-fun d!1419064 () Bool)

(declare-fun e!2841921 () Bool)

(assert (=> d!1419064 e!2841921))

(declare-fun res!1902265 () Bool)

(assert (=> d!1419064 (=> res!1902265 e!2841921)))

(declare-fun e!2841920 () Bool)

(assert (=> d!1419064 (= res!1902265 e!2841920)))

(declare-fun res!1902264 () Bool)

(assert (=> d!1419064 (=> (not res!1902264) (not e!2841920))))

(declare-fun lt!1730496 () Bool)

(assert (=> d!1419064 (= res!1902264 (not lt!1730496))))

(declare-fun lt!1730499 () Bool)

(assert (=> d!1419064 (= lt!1730496 lt!1730499)))

(declare-fun lt!1730503 () Unit!102334)

(declare-fun e!2841918 () Unit!102334)

(assert (=> d!1419064 (= lt!1730503 e!2841918)))

(declare-fun c!779503 () Bool)

(assert (=> d!1419064 (= c!779503 lt!1730499)))

(assert (=> d!1419064 (= lt!1730499 (containsKey!1962 (toList!4480 lt!1730319) key!3287))))

(assert (=> d!1419064 (= (contains!13697 lt!1730319 key!3287) lt!1730496)))

(declare-fun b!4559136 () Bool)

(declare-fun e!2841919 () Bool)

(assert (=> b!4559136 (= e!2841921 e!2841919)))

(declare-fun res!1902266 () Bool)

(assert (=> b!4559136 (=> (not res!1902266) (not e!2841919))))

(assert (=> b!4559136 (= res!1902266 (isDefined!8535 (getValueByKey!1196 (toList!4480 lt!1730319) key!3287)))))

(declare-fun b!4559137 () Bool)

(declare-fun e!2841917 () Unit!102334)

(assert (=> b!4559137 (= e!2841918 e!2841917)))

(declare-fun c!779504 () Bool)

(declare-fun call!318196 () Bool)

(assert (=> b!4559137 (= c!779504 call!318196)))

(declare-fun b!4559138 () Bool)

(assert (=> b!4559138 (= e!2841920 (not (contains!13700 (keys!17727 lt!1730319) key!3287)))))

(declare-fun b!4559139 () Bool)

(declare-fun Unit!102369 () Unit!102334)

(assert (=> b!4559139 (= e!2841917 Unit!102369)))

(declare-fun bm!318191 () Bool)

(declare-fun e!2841922 () List!50976)

(assert (=> bm!318191 (= call!318196 (contains!13700 e!2841922 key!3287))))

(declare-fun c!779502 () Bool)

(assert (=> bm!318191 (= c!779502 c!779503)))

(declare-fun b!4559140 () Bool)

(declare-fun lt!1730497 () Unit!102334)

(assert (=> b!4559140 (= e!2841918 lt!1730497)))

(declare-fun lt!1730502 () Unit!102334)

(assert (=> b!4559140 (= lt!1730502 (lemmaContainsKeyImpliesGetValueByKeyDefined!1099 (toList!4480 lt!1730319) key!3287))))

(assert (=> b!4559140 (isDefined!8535 (getValueByKey!1196 (toList!4480 lt!1730319) key!3287))))

(declare-fun lt!1730501 () Unit!102334)

(assert (=> b!4559140 (= lt!1730501 lt!1730502)))

(assert (=> b!4559140 (= lt!1730497 (lemmaInListThenGetKeysListContains!512 (toList!4480 lt!1730319) key!3287))))

(assert (=> b!4559140 call!318196))

(declare-fun b!4559141 () Bool)

(assert (=> b!4559141 (= e!2841922 (keys!17727 lt!1730319))))

(declare-fun b!4559142 () Bool)

(assert (=> b!4559142 (= e!2841919 (contains!13700 (keys!17727 lt!1730319) key!3287))))

(declare-fun b!4559143 () Bool)

(assert (=> b!4559143 (= e!2841922 (getKeysList!516 (toList!4480 lt!1730319)))))

(declare-fun b!4559144 () Bool)

(assert (=> b!4559144 false))

(declare-fun lt!1730500 () Unit!102334)

(declare-fun lt!1730498 () Unit!102334)

(assert (=> b!4559144 (= lt!1730500 lt!1730498)))

(assert (=> b!4559144 (containsKey!1962 (toList!4480 lt!1730319) key!3287)))

(assert (=> b!4559144 (= lt!1730498 (lemmaInGetKeysListThenContainsKey!515 (toList!4480 lt!1730319) key!3287))))

(declare-fun Unit!102370 () Unit!102334)

(assert (=> b!4559144 (= e!2841917 Unit!102370)))

(assert (= (and d!1419064 c!779503) b!4559140))

(assert (= (and d!1419064 (not c!779503)) b!4559137))

(assert (= (and b!4559137 c!779504) b!4559144))

(assert (= (and b!4559137 (not c!779504)) b!4559139))

(assert (= (or b!4559140 b!4559137) bm!318191))

(assert (= (and bm!318191 c!779502) b!4559143))

(assert (= (and bm!318191 (not c!779502)) b!4559141))

(assert (= (and d!1419064 res!1902264) b!4559138))

(assert (= (and d!1419064 (not res!1902265)) b!4559136))

(assert (= (and b!4559136 res!1902266) b!4559142))

(declare-fun m!5349083 () Bool)

(assert (=> bm!318191 m!5349083))

(declare-fun m!5349085 () Bool)

(assert (=> b!4559142 m!5349085))

(assert (=> b!4559142 m!5349085))

(declare-fun m!5349087 () Bool)

(assert (=> b!4559142 m!5349087))

(assert (=> b!4559141 m!5349085))

(declare-fun m!5349089 () Bool)

(assert (=> b!4559144 m!5349089))

(declare-fun m!5349091 () Bool)

(assert (=> b!4559144 m!5349091))

(assert (=> d!1419064 m!5349089))

(declare-fun m!5349093 () Bool)

(assert (=> b!4559136 m!5349093))

(assert (=> b!4559136 m!5349093))

(declare-fun m!5349095 () Bool)

(assert (=> b!4559136 m!5349095))

(assert (=> b!4559138 m!5349085))

(assert (=> b!4559138 m!5349085))

(assert (=> b!4559138 m!5349087))

(declare-fun m!5349097 () Bool)

(assert (=> b!4559143 m!5349097))

(declare-fun m!5349099 () Bool)

(assert (=> b!4559140 m!5349099))

(assert (=> b!4559140 m!5349093))

(assert (=> b!4559140 m!5349093))

(assert (=> b!4559140 m!5349095))

(declare-fun m!5349101 () Bool)

(assert (=> b!4559140 m!5349101))

(assert (=> b!4558985 d!1419064))

(declare-fun d!1419066 () Bool)

(assert (=> d!1419066 (= (eq!687 lt!1730315 (-!456 lt!1730327 key!3287)) (= (content!8508 (toList!4480 lt!1730315)) (content!8508 (toList!4480 (-!456 lt!1730327 key!3287)))))))

(declare-fun bs!939425 () Bool)

(assert (= bs!939425 d!1419066))

(declare-fun m!5349103 () Bool)

(assert (=> bs!939425 m!5349103))

(declare-fun m!5349105 () Bool)

(assert (=> bs!939425 m!5349105))

(assert (=> b!4558987 d!1419066))

(declare-fun d!1419068 () Bool)

(declare-fun e!2841923 () Bool)

(assert (=> d!1419068 e!2841923))

(declare-fun res!1902267 () Bool)

(assert (=> d!1419068 (=> (not res!1902267) (not e!2841923))))

(declare-fun lt!1730504 () ListMap!3741)

(assert (=> d!1419068 (= res!1902267 (not (contains!13697 lt!1730504 key!3287)))))

(assert (=> d!1419068 (= lt!1730504 (ListMap!3742 (removePresrvNoDuplicatedKeys!191 (toList!4480 lt!1730327) key!3287)))))

(assert (=> d!1419068 (= (-!456 lt!1730327 key!3287) lt!1730504)))

(declare-fun b!4559145 () Bool)

(assert (=> b!4559145 (= e!2841923 (= ((_ map and) (content!8507 (keys!17727 lt!1730327)) ((_ map not) (store ((as const (Array K!12230 Bool)) false) key!3287 true))) (content!8507 (keys!17727 lt!1730504))))))

(assert (= (and d!1419068 res!1902267) b!4559145))

(declare-fun m!5349107 () Bool)

(assert (=> d!1419068 m!5349107))

(declare-fun m!5349109 () Bool)

(assert (=> d!1419068 m!5349109))

(declare-fun m!5349111 () Bool)

(assert (=> b!4559145 m!5349111))

(declare-fun m!5349113 () Bool)

(assert (=> b!4559145 m!5349113))

(assert (=> b!4559145 m!5349111))

(declare-fun m!5349115 () Bool)

(assert (=> b!4559145 m!5349115))

(assert (=> b!4559145 m!5348933))

(assert (=> b!4559145 m!5349113))

(declare-fun m!5349117 () Bool)

(assert (=> b!4559145 m!5349117))

(assert (=> b!4558987 d!1419068))

(declare-fun d!1419070 () Bool)

(assert (=> d!1419070 (= (eq!687 lt!1730323 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lm!1477))) lt!1730318)) (= (content!8508 (toList!4480 lt!1730323)) (content!8508 (toList!4480 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lm!1477))) lt!1730318)))))))

(declare-fun bs!939426 () Bool)

(assert (= bs!939426 d!1419070))

(declare-fun m!5349119 () Bool)

(assert (=> bs!939426 m!5349119))

(declare-fun m!5349121 () Bool)

(assert (=> bs!939426 m!5349121))

(assert (=> b!4558976 d!1419070))

(declare-fun b!4559225 () Bool)

(assert (=> b!4559225 true))

(declare-fun bs!939525 () Bool)

(declare-fun b!4559226 () Bool)

(assert (= bs!939525 (and b!4559226 b!4559225)))

(declare-fun lambda!179660 () Int)

(declare-fun lambda!179658 () Int)

(assert (=> bs!939525 (= lambda!179660 lambda!179658)))

(assert (=> b!4559226 true))

(declare-fun lt!1730627 () ListMap!3741)

(declare-fun lambda!179661 () Int)

(assert (=> bs!939525 (= (= lt!1730627 lt!1730318) (= lambda!179661 lambda!179658))))

(assert (=> b!4559226 (= (= lt!1730627 lt!1730318) (= lambda!179661 lambda!179660))))

(assert (=> b!4559226 true))

(declare-fun bs!939533 () Bool)

(declare-fun d!1419072 () Bool)

(assert (= bs!939533 (and d!1419072 b!4559225)))

(declare-fun lambda!179662 () Int)

(declare-fun lt!1730633 () ListMap!3741)

(assert (=> bs!939533 (= (= lt!1730633 lt!1730318) (= lambda!179662 lambda!179658))))

(declare-fun bs!939535 () Bool)

(assert (= bs!939535 (and d!1419072 b!4559226)))

(assert (=> bs!939535 (= (= lt!1730633 lt!1730318) (= lambda!179662 lambda!179660))))

(assert (=> bs!939535 (= (= lt!1730633 lt!1730627) (= lambda!179662 lambda!179661))))

(assert (=> d!1419072 true))

(declare-fun bm!318203 () Bool)

(declare-fun call!318210 () Unit!102334)

(declare-fun lemmaContainsAllItsOwnKeys!388 (ListMap!3741) Unit!102334)

(assert (=> bm!318203 (= call!318210 (lemmaContainsAllItsOwnKeys!388 lt!1730318))))

(declare-fun bm!318204 () Bool)

(declare-fun lt!1730630 () ListMap!3741)

(declare-fun call!318208 () Bool)

(declare-fun c!779520 () Bool)

(declare-fun forall!10419 (List!50973 Int) Bool)

(assert (=> bm!318204 (= call!318208 (forall!10419 (ite c!779520 (toList!4480 lt!1730318) (toList!4480 lt!1730630)) (ite c!779520 lambda!179658 lambda!179661)))))

(declare-fun call!318209 () Bool)

(declare-fun bm!318205 () Bool)

(assert (=> bm!318205 (= call!318209 (forall!10419 (ite c!779520 (toList!4480 lt!1730318) (_2!28984 (h!56755 (toList!4479 lm!1477)))) (ite c!779520 lambda!179658 lambda!179661)))))

(declare-fun b!4559224 () Bool)

(declare-fun e!2841979 () Bool)

(assert (=> b!4559224 (= e!2841979 (invariantList!1068 (toList!4480 lt!1730633)))))

(declare-fun e!2841980 () ListMap!3741)

(assert (=> b!4559225 (= e!2841980 lt!1730318)))

(declare-fun lt!1730637 () Unit!102334)

(assert (=> b!4559225 (= lt!1730637 call!318210)))

(assert (=> b!4559225 call!318209))

(declare-fun lt!1730621 () Unit!102334)

(assert (=> b!4559225 (= lt!1730621 lt!1730637)))

(assert (=> b!4559225 call!318208))

(declare-fun lt!1730620 () Unit!102334)

(declare-fun Unit!102373 () Unit!102334)

(assert (=> b!4559225 (= lt!1730620 Unit!102373)))

(assert (=> b!4559226 (= e!2841980 lt!1730627)))

(declare-fun +!1660 (ListMap!3741 tuple2!51378) ListMap!3741)

(assert (=> b!4559226 (= lt!1730630 (+!1660 lt!1730318 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))))))

(assert (=> b!4559226 (= lt!1730627 (addToMapMapFromBucket!754 (t!357947 (_2!28984 (h!56755 (toList!4479 lm!1477)))) (+!1660 lt!1730318 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477)))))))))

(declare-fun lt!1730634 () Unit!102334)

(assert (=> b!4559226 (= lt!1730634 call!318210)))

(assert (=> b!4559226 (forall!10419 (toList!4480 lt!1730318) lambda!179660)))

(declare-fun lt!1730625 () Unit!102334)

(assert (=> b!4559226 (= lt!1730625 lt!1730634)))

(assert (=> b!4559226 call!318208))

(declare-fun lt!1730617 () Unit!102334)

(declare-fun Unit!102374 () Unit!102334)

(assert (=> b!4559226 (= lt!1730617 Unit!102374)))

(assert (=> b!4559226 (forall!10419 (t!357947 (_2!28984 (h!56755 (toList!4479 lm!1477)))) lambda!179661)))

(declare-fun lt!1730622 () Unit!102334)

(declare-fun Unit!102375 () Unit!102334)

(assert (=> b!4559226 (= lt!1730622 Unit!102375)))

(declare-fun lt!1730628 () Unit!102334)

(declare-fun Unit!102376 () Unit!102334)

(assert (=> b!4559226 (= lt!1730628 Unit!102376)))

(declare-fun lt!1730618 () Unit!102334)

(declare-fun forallContained!2683 (List!50973 Int tuple2!51378) Unit!102334)

(assert (=> b!4559226 (= lt!1730618 (forallContained!2683 (toList!4480 lt!1730630) lambda!179661 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))))))

(assert (=> b!4559226 (contains!13697 lt!1730630 (_1!28983 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))))))

(declare-fun lt!1730626 () Unit!102334)

(declare-fun Unit!102377 () Unit!102334)

(assert (=> b!4559226 (= lt!1730626 Unit!102377)))

(assert (=> b!4559226 (contains!13697 lt!1730627 (_1!28983 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))))))

(declare-fun lt!1730624 () Unit!102334)

(declare-fun Unit!102378 () Unit!102334)

(assert (=> b!4559226 (= lt!1730624 Unit!102378)))

(assert (=> b!4559226 call!318209))

(declare-fun lt!1730635 () Unit!102334)

(declare-fun Unit!102379 () Unit!102334)

(assert (=> b!4559226 (= lt!1730635 Unit!102379)))

(assert (=> b!4559226 (forall!10419 (toList!4480 lt!1730630) lambda!179661)))

(declare-fun lt!1730632 () Unit!102334)

(declare-fun Unit!102380 () Unit!102334)

(assert (=> b!4559226 (= lt!1730632 Unit!102380)))

(declare-fun lt!1730629 () Unit!102334)

(declare-fun Unit!102381 () Unit!102334)

(assert (=> b!4559226 (= lt!1730629 Unit!102381)))

(declare-fun lt!1730619 () Unit!102334)

(declare-fun addForallContainsKeyThenBeforeAdding!388 (ListMap!3741 ListMap!3741 K!12230 V!12476) Unit!102334)

(assert (=> b!4559226 (= lt!1730619 (addForallContainsKeyThenBeforeAdding!388 lt!1730318 lt!1730627 (_1!28983 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477))))) (_2!28983 (h!56754 (_2!28984 (h!56755 (toList!4479 lm!1477)))))))))

(assert (=> b!4559226 (forall!10419 (toList!4480 lt!1730318) lambda!179661)))

(declare-fun lt!1730631 () Unit!102334)

(assert (=> b!4559226 (= lt!1730631 lt!1730619)))

(assert (=> b!4559226 (forall!10419 (toList!4480 lt!1730318) lambda!179661)))

(declare-fun lt!1730623 () Unit!102334)

(declare-fun Unit!102382 () Unit!102334)

(assert (=> b!4559226 (= lt!1730623 Unit!102382)))

(declare-fun res!1902315 () Bool)

(assert (=> b!4559226 (= res!1902315 (forall!10419 (_2!28984 (h!56755 (toList!4479 lm!1477))) lambda!179661))))

(declare-fun e!2841978 () Bool)

(assert (=> b!4559226 (=> (not res!1902315) (not e!2841978))))

(assert (=> b!4559226 e!2841978))

(declare-fun lt!1730636 () Unit!102334)

(declare-fun Unit!102383 () Unit!102334)

(assert (=> b!4559226 (= lt!1730636 Unit!102383)))

(assert (=> d!1419072 e!2841979))

(declare-fun res!1902316 () Bool)

(assert (=> d!1419072 (=> (not res!1902316) (not e!2841979))))

(assert (=> d!1419072 (= res!1902316 (forall!10419 (_2!28984 (h!56755 (toList!4479 lm!1477))) lambda!179662))))

(assert (=> d!1419072 (= lt!1730633 e!2841980)))

(assert (=> d!1419072 (= c!779520 ((_ is Nil!50849) (_2!28984 (h!56755 (toList!4479 lm!1477)))))))

(assert (=> d!1419072 (noDuplicateKeys!1236 (_2!28984 (h!56755 (toList!4479 lm!1477))))))

(assert (=> d!1419072 (= (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lm!1477))) lt!1730318) lt!1730633)))

(declare-fun b!4559227 () Bool)

(declare-fun res!1902314 () Bool)

(assert (=> b!4559227 (=> (not res!1902314) (not e!2841979))))

(assert (=> b!4559227 (= res!1902314 (forall!10419 (toList!4480 lt!1730318) lambda!179662))))

(declare-fun b!4559228 () Bool)

(assert (=> b!4559228 (= e!2841978 (forall!10419 (toList!4480 lt!1730318) lambda!179661))))

(assert (= (and d!1419072 c!779520) b!4559225))

(assert (= (and d!1419072 (not c!779520)) b!4559226))

(assert (= (and b!4559226 res!1902315) b!4559228))

(assert (= (or b!4559225 b!4559226) bm!318205))

(assert (= (or b!4559225 b!4559226) bm!318204))

(assert (= (or b!4559225 b!4559226) bm!318203))

(assert (= (and d!1419072 res!1902316) b!4559227))

(assert (= (and b!4559227 res!1902314) b!4559224))

(declare-fun m!5349349 () Bool)

(assert (=> b!4559226 m!5349349))

(declare-fun m!5349351 () Bool)

(assert (=> b!4559226 m!5349351))

(declare-fun m!5349353 () Bool)

(assert (=> b!4559226 m!5349353))

(declare-fun m!5349355 () Bool)

(assert (=> b!4559226 m!5349355))

(assert (=> b!4559226 m!5349349))

(declare-fun m!5349357 () Bool)

(assert (=> b!4559226 m!5349357))

(declare-fun m!5349359 () Bool)

(assert (=> b!4559226 m!5349359))

(declare-fun m!5349361 () Bool)

(assert (=> b!4559226 m!5349361))

(declare-fun m!5349363 () Bool)

(assert (=> b!4559226 m!5349363))

(declare-fun m!5349365 () Bool)

(assert (=> b!4559226 m!5349365))

(declare-fun m!5349367 () Bool)

(assert (=> b!4559226 m!5349367))

(declare-fun m!5349373 () Bool)

(assert (=> b!4559226 m!5349373))

(assert (=> b!4559226 m!5349365))

(declare-fun m!5349377 () Bool)

(assert (=> bm!318203 m!5349377))

(declare-fun m!5349379 () Bool)

(assert (=> bm!318205 m!5349379))

(assert (=> b!4559228 m!5349365))

(declare-fun m!5349383 () Bool)

(assert (=> b!4559224 m!5349383))

(declare-fun m!5349385 () Bool)

(assert (=> b!4559227 m!5349385))

(declare-fun m!5349387 () Bool)

(assert (=> d!1419072 m!5349387))

(assert (=> d!1419072 m!5349055))

(declare-fun m!5349389 () Bool)

(assert (=> bm!318204 m!5349389))

(assert (=> b!4558976 d!1419072))

(declare-fun bs!939551 () Bool)

(declare-fun d!1419130 () Bool)

(assert (= bs!939551 (and d!1419130 d!1419062)))

(declare-fun lambda!179665 () Int)

(assert (=> bs!939551 (= lambda!179665 lambda!179610)))

(declare-fun bs!939553 () Bool)

(assert (= bs!939553 (and d!1419130 d!1419032)))

(assert (=> bs!939553 (= lambda!179665 lambda!179567)))

(declare-fun bs!939555 () Bool)

(assert (= bs!939555 (and d!1419130 d!1419060)))

(assert (=> bs!939555 (= lambda!179665 lambda!179609)))

(declare-fun bs!939557 () Bool)

(assert (= bs!939557 (and d!1419130 start!453004)))

(assert (=> bs!939557 (= lambda!179665 lambda!179561)))

(declare-fun bs!939558 () Bool)

(assert (= bs!939558 (and d!1419130 d!1419036)))

(assert (=> bs!939558 (= lambda!179665 lambda!179592)))

(declare-fun bs!939560 () Bool)

(assert (= bs!939560 (and d!1419130 d!1419038)))

(assert (=> bs!939560 (= lambda!179665 lambda!179593)))

(declare-fun bs!939562 () Bool)

(assert (= bs!939562 (and d!1419130 d!1419046)))

(assert (=> bs!939562 (= lambda!179665 lambda!179607)))

(declare-fun lt!1730641 () ListMap!3741)

(assert (=> d!1419130 (invariantList!1068 (toList!4480 lt!1730641))))

(declare-fun e!2841983 () ListMap!3741)

(assert (=> d!1419130 (= lt!1730641 e!2841983)))

(declare-fun c!779523 () Bool)

(assert (=> d!1419130 (= c!779523 ((_ is Cons!50850) (toList!4479 (+!1658 lm!1477 lt!1730316))))))

(assert (=> d!1419130 (forall!10417 (toList!4479 (+!1658 lm!1477 lt!1730316)) lambda!179665)))

(assert (=> d!1419130 (= (extractMap!1292 (toList!4479 (+!1658 lm!1477 lt!1730316))) lt!1730641)))

(declare-fun b!4559235 () Bool)

(assert (=> b!4559235 (= e!2841983 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 (+!1658 lm!1477 lt!1730316)))) (extractMap!1292 (t!357948 (toList!4479 (+!1658 lm!1477 lt!1730316))))))))

(declare-fun b!4559236 () Bool)

(assert (=> b!4559236 (= e!2841983 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419130 c!779523) b!4559235))

(assert (= (and d!1419130 (not c!779523)) b!4559236))

(declare-fun m!5349391 () Bool)

(assert (=> d!1419130 m!5349391))

(declare-fun m!5349393 () Bool)

(assert (=> d!1419130 m!5349393))

(declare-fun m!5349395 () Bool)

(assert (=> b!4559235 m!5349395))

(assert (=> b!4559235 m!5349395))

(declare-fun m!5349397 () Bool)

(assert (=> b!4559235 m!5349397))

(assert (=> b!4558976 d!1419130))

(declare-fun d!1419132 () Bool)

(declare-fun e!2841984 () Bool)

(assert (=> d!1419132 e!2841984))

(declare-fun res!1902317 () Bool)

(assert (=> d!1419132 (=> (not res!1902317) (not e!2841984))))

(declare-fun lt!1730644 () ListLongMap!3111)

(assert (=> d!1419132 (= res!1902317 (contains!13696 lt!1730644 (_1!28984 lt!1730316)))))

(declare-fun lt!1730643 () List!50974)

(assert (=> d!1419132 (= lt!1730644 (ListLongMap!3112 lt!1730643))))

(declare-fun lt!1730645 () Unit!102334)

(declare-fun lt!1730642 () Unit!102334)

(assert (=> d!1419132 (= lt!1730645 lt!1730642)))

(assert (=> d!1419132 (= (getValueByKey!1195 lt!1730643 (_1!28984 lt!1730316)) (Some!11262 (_2!28984 lt!1730316)))))

(assert (=> d!1419132 (= lt!1730642 (lemmaContainsTupThenGetReturnValue!749 lt!1730643 (_1!28984 lt!1730316) (_2!28984 lt!1730316)))))

(assert (=> d!1419132 (= lt!1730643 (insertStrictlySorted!457 (toList!4479 lm!1477) (_1!28984 lt!1730316) (_2!28984 lt!1730316)))))

(assert (=> d!1419132 (= (+!1658 lm!1477 lt!1730316) lt!1730644)))

(declare-fun b!4559237 () Bool)

(declare-fun res!1902318 () Bool)

(assert (=> b!4559237 (=> (not res!1902318) (not e!2841984))))

(assert (=> b!4559237 (= res!1902318 (= (getValueByKey!1195 (toList!4479 lt!1730644) (_1!28984 lt!1730316)) (Some!11262 (_2!28984 lt!1730316))))))

(declare-fun b!4559238 () Bool)

(assert (=> b!4559238 (= e!2841984 (contains!13698 (toList!4479 lt!1730644) lt!1730316))))

(assert (= (and d!1419132 res!1902317) b!4559237))

(assert (= (and b!4559237 res!1902318) b!4559238))

(declare-fun m!5349399 () Bool)

(assert (=> d!1419132 m!5349399))

(declare-fun m!5349401 () Bool)

(assert (=> d!1419132 m!5349401))

(declare-fun m!5349403 () Bool)

(assert (=> d!1419132 m!5349403))

(declare-fun m!5349409 () Bool)

(assert (=> d!1419132 m!5349409))

(declare-fun m!5349413 () Bool)

(assert (=> b!4559237 m!5349413))

(declare-fun m!5349415 () Bool)

(assert (=> b!4559238 m!5349415))

(assert (=> b!4558976 d!1419132))

(declare-fun bs!939573 () Bool)

(declare-fun d!1419136 () Bool)

(assert (= bs!939573 (and d!1419136 d!1419062)))

(declare-fun lambda!179668 () Int)

(assert (=> bs!939573 (= lambda!179668 lambda!179610)))

(declare-fun bs!939574 () Bool)

(assert (= bs!939574 (and d!1419136 d!1419032)))

(assert (=> bs!939574 (= lambda!179668 lambda!179567)))

(declare-fun bs!939575 () Bool)

(assert (= bs!939575 (and d!1419136 d!1419060)))

(assert (=> bs!939575 (= lambda!179668 lambda!179609)))

(declare-fun bs!939576 () Bool)

(assert (= bs!939576 (and d!1419136 start!453004)))

(assert (=> bs!939576 (= lambda!179668 lambda!179561)))

(declare-fun bs!939577 () Bool)

(assert (= bs!939577 (and d!1419136 d!1419130)))

(assert (=> bs!939577 (= lambda!179668 lambda!179665)))

(declare-fun bs!939578 () Bool)

(assert (= bs!939578 (and d!1419136 d!1419036)))

(assert (=> bs!939578 (= lambda!179668 lambda!179592)))

(declare-fun bs!939579 () Bool)

(assert (= bs!939579 (and d!1419136 d!1419038)))

(assert (=> bs!939579 (= lambda!179668 lambda!179593)))

(declare-fun bs!939580 () Bool)

(assert (= bs!939580 (and d!1419136 d!1419046)))

(assert (=> bs!939580 (= lambda!179668 lambda!179607)))

(assert (=> d!1419136 (contains!13696 lm!1477 (hash!3022 hashF!1107 key!3287))))

(declare-fun lt!1730648 () Unit!102334)

(declare-fun choose!30178 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> d!1419136 (= lt!1730648 (choose!30178 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419136 (forall!10417 (toList!4479 lm!1477) lambda!179668)))

(assert (=> d!1419136 (= (lemmaInGenMapThenLongMapContainsHash!310 lm!1477 key!3287 hashF!1107) lt!1730648)))

(declare-fun bs!939581 () Bool)

(assert (= bs!939581 d!1419136))

(assert (=> bs!939581 m!5348843))

(assert (=> bs!939581 m!5348843))

(declare-fun m!5349421 () Bool)

(assert (=> bs!939581 m!5349421))

(declare-fun m!5349423 () Bool)

(assert (=> bs!939581 m!5349423))

(declare-fun m!5349425 () Bool)

(assert (=> bs!939581 m!5349425))

(assert (=> b!4558997 d!1419136))

(declare-fun d!1419140 () Bool)

(declare-fun get!16751 (Option!11263) List!50973)

(assert (=> d!1419140 (= (apply!11973 lm!1477 hash!344) (get!16751 (getValueByKey!1195 (toList!4479 lm!1477) hash!344)))))

(declare-fun bs!939582 () Bool)

(assert (= bs!939582 d!1419140))

(declare-fun m!5349427 () Bool)

(assert (=> bs!939582 m!5349427))

(assert (=> bs!939582 m!5349427))

(declare-fun m!5349429 () Bool)

(assert (=> bs!939582 m!5349429))

(assert (=> b!4558997 d!1419140))

(declare-fun d!1419142 () Bool)

(declare-fun e!2841999 () Bool)

(assert (=> d!1419142 e!2841999))

(declare-fun res!1902324 () Bool)

(assert (=> d!1419142 (=> res!1902324 e!2841999)))

(declare-fun lt!1730663 () Bool)

(assert (=> d!1419142 (= res!1902324 (not lt!1730663))))

(declare-fun lt!1730664 () Bool)

(assert (=> d!1419142 (= lt!1730663 lt!1730664)))

(declare-fun lt!1730665 () Unit!102334)

(declare-fun e!2841998 () Unit!102334)

(assert (=> d!1419142 (= lt!1730665 e!2841998)))

(declare-fun c!779532 () Bool)

(assert (=> d!1419142 (= c!779532 lt!1730664)))

(declare-fun containsKey!1963 (List!50974 (_ BitVec 64)) Bool)

(assert (=> d!1419142 (= lt!1730664 (containsKey!1963 (toList!4479 lm!1477) lt!1730313))))

(assert (=> d!1419142 (= (contains!13696 lm!1477 lt!1730313) lt!1730663)))

(declare-fun b!4559260 () Bool)

(declare-fun lt!1730666 () Unit!102334)

(assert (=> b!4559260 (= e!2841998 lt!1730666)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1100 (List!50974 (_ BitVec 64)) Unit!102334)

(assert (=> b!4559260 (= lt!1730666 (lemmaContainsKeyImpliesGetValueByKeyDefined!1100 (toList!4479 lm!1477) lt!1730313))))

(declare-fun isDefined!8536 (Option!11263) Bool)

(assert (=> b!4559260 (isDefined!8536 (getValueByKey!1195 (toList!4479 lm!1477) lt!1730313))))

(declare-fun b!4559261 () Bool)

(declare-fun Unit!102384 () Unit!102334)

(assert (=> b!4559261 (= e!2841998 Unit!102384)))

(declare-fun b!4559262 () Bool)

(assert (=> b!4559262 (= e!2841999 (isDefined!8536 (getValueByKey!1195 (toList!4479 lm!1477) lt!1730313)))))

(assert (= (and d!1419142 c!779532) b!4559260))

(assert (= (and d!1419142 (not c!779532)) b!4559261))

(assert (= (and d!1419142 (not res!1902324)) b!4559262))

(declare-fun m!5349441 () Bool)

(assert (=> d!1419142 m!5349441))

(declare-fun m!5349443 () Bool)

(assert (=> b!4559260 m!5349443))

(declare-fun m!5349445 () Bool)

(assert (=> b!4559260 m!5349445))

(assert (=> b!4559260 m!5349445))

(declare-fun m!5349447 () Bool)

(assert (=> b!4559260 m!5349447))

(assert (=> b!4559262 m!5349445))

(assert (=> b!4559262 m!5349445))

(assert (=> b!4559262 m!5349447))

(assert (=> b!4558997 d!1419142))

(declare-fun d!1419148 () Bool)

(assert (=> d!1419148 (contains!13698 (toList!4479 lm!1477) (tuple2!51381 hash!344 lt!1730311))))

(declare-fun lt!1730672 () Unit!102334)

(declare-fun choose!30179 (List!50974 (_ BitVec 64) List!50973) Unit!102334)

(assert (=> d!1419148 (= lt!1730672 (choose!30179 (toList!4479 lm!1477) hash!344 lt!1730311))))

(declare-fun e!2842005 () Bool)

(assert (=> d!1419148 e!2842005))

(declare-fun res!1902330 () Bool)

(assert (=> d!1419148 (=> (not res!1902330) (not e!2842005))))

(assert (=> d!1419148 (= res!1902330 (isStrictlySorted!481 (toList!4479 lm!1477)))))

(assert (=> d!1419148 (= (lemmaGetValueByKeyImpliesContainsTuple!748 (toList!4479 lm!1477) hash!344 lt!1730311) lt!1730672)))

(declare-fun b!4559268 () Bool)

(assert (=> b!4559268 (= e!2842005 (= (getValueByKey!1195 (toList!4479 lm!1477) hash!344) (Some!11262 lt!1730311)))))

(assert (= (and d!1419148 res!1902330) b!4559268))

(declare-fun m!5349453 () Bool)

(assert (=> d!1419148 m!5349453))

(declare-fun m!5349455 () Bool)

(assert (=> d!1419148 m!5349455))

(assert (=> d!1419148 m!5348895))

(assert (=> b!4559268 m!5349427))

(assert (=> b!4558997 d!1419148))

(declare-fun d!1419152 () Bool)

(declare-fun lt!1730677 () Bool)

(declare-fun content!8509 (List!50974) (InoxSet tuple2!51380))

(assert (=> d!1419152 (= lt!1730677 (select (content!8509 (toList!4479 lm!1477)) lt!1730320))))

(declare-fun e!2842015 () Bool)

(assert (=> d!1419152 (= lt!1730677 e!2842015)))

(declare-fun res!1902340 () Bool)

(assert (=> d!1419152 (=> (not res!1902340) (not e!2842015))))

(assert (=> d!1419152 (= res!1902340 ((_ is Cons!50850) (toList!4479 lm!1477)))))

(assert (=> d!1419152 (= (contains!13698 (toList!4479 lm!1477) lt!1730320) lt!1730677)))

(declare-fun b!4559277 () Bool)

(declare-fun e!2842014 () Bool)

(assert (=> b!4559277 (= e!2842015 e!2842014)))

(declare-fun res!1902339 () Bool)

(assert (=> b!4559277 (=> res!1902339 e!2842014)))

(assert (=> b!4559277 (= res!1902339 (= (h!56755 (toList!4479 lm!1477)) lt!1730320))))

(declare-fun b!4559278 () Bool)

(assert (=> b!4559278 (= e!2842014 (contains!13698 (t!357948 (toList!4479 lm!1477)) lt!1730320))))

(assert (= (and d!1419152 res!1902340) b!4559277))

(assert (= (and b!4559277 (not res!1902339)) b!4559278))

(declare-fun m!5349457 () Bool)

(assert (=> d!1419152 m!5349457))

(declare-fun m!5349459 () Bool)

(assert (=> d!1419152 m!5349459))

(declare-fun m!5349461 () Bool)

(assert (=> b!4559278 m!5349461))

(assert (=> b!4558997 d!1419152))

(declare-fun b!4559292 () Bool)

(declare-fun e!2842024 () List!50973)

(assert (=> b!4559292 (= e!2842024 (t!357947 lt!1730311))))

(declare-fun b!4559293 () Bool)

(declare-fun e!2842025 () List!50973)

(assert (=> b!4559293 (= e!2842024 e!2842025)))

(declare-fun c!779539 () Bool)

(assert (=> b!4559293 (= c!779539 ((_ is Cons!50849) lt!1730311))))

(declare-fun d!1419154 () Bool)

(declare-fun lt!1730685 () List!50973)

(assert (=> d!1419154 (not (containsKey!1959 lt!1730685 key!3287))))

(assert (=> d!1419154 (= lt!1730685 e!2842024)))

(declare-fun c!779538 () Bool)

(assert (=> d!1419154 (= c!779538 (and ((_ is Cons!50849) lt!1730311) (= (_1!28983 (h!56754 lt!1730311)) key!3287)))))

(assert (=> d!1419154 (noDuplicateKeys!1236 lt!1730311)))

(assert (=> d!1419154 (= (removePairForKey!863 lt!1730311 key!3287) lt!1730685)))

(declare-fun b!4559294 () Bool)

(assert (=> b!4559294 (= e!2842025 (Cons!50849 (h!56754 lt!1730311) (removePairForKey!863 (t!357947 lt!1730311) key!3287)))))

(declare-fun b!4559295 () Bool)

(assert (=> b!4559295 (= e!2842025 Nil!50849)))

(assert (= (and d!1419154 c!779538) b!4559292))

(assert (= (and d!1419154 (not c!779538)) b!4559293))

(assert (= (and b!4559293 c!779539) b!4559294))

(assert (= (and b!4559293 (not c!779539)) b!4559295))

(declare-fun m!5349477 () Bool)

(assert (=> d!1419154 m!5349477))

(declare-fun m!5349479 () Bool)

(assert (=> d!1419154 m!5349479))

(declare-fun m!5349481 () Bool)

(assert (=> b!4559294 m!5349481))

(assert (=> b!4558997 d!1419154))

(declare-fun d!1419160 () Bool)

(assert (=> d!1419160 (dynLambda!21267 lambda!179561 lt!1730320)))

(declare-fun lt!1730688 () Unit!102334)

(declare-fun choose!30180 (List!50974 Int tuple2!51380) Unit!102334)

(assert (=> d!1419160 (= lt!1730688 (choose!30180 (toList!4479 lm!1477) lambda!179561 lt!1730320))))

(declare-fun e!2842028 () Bool)

(assert (=> d!1419160 e!2842028))

(declare-fun res!1902346 () Bool)

(assert (=> d!1419160 (=> (not res!1902346) (not e!2842028))))

(assert (=> d!1419160 (= res!1902346 (forall!10417 (toList!4479 lm!1477) lambda!179561))))

(assert (=> d!1419160 (= (forallContained!2681 (toList!4479 lm!1477) lambda!179561 lt!1730320) lt!1730688)))

(declare-fun b!4559298 () Bool)

(assert (=> b!4559298 (= e!2842028 (contains!13698 (toList!4479 lm!1477) lt!1730320))))

(assert (= (and d!1419160 res!1902346) b!4559298))

(declare-fun b_lambda!162013 () Bool)

(assert (=> (not b_lambda!162013) (not d!1419160)))

(declare-fun m!5349483 () Bool)

(assert (=> d!1419160 m!5349483))

(declare-fun m!5349485 () Bool)

(assert (=> d!1419160 m!5349485))

(assert (=> d!1419160 m!5348849))

(assert (=> b!4559298 m!5348779))

(assert (=> b!4558997 d!1419160))

(declare-fun d!1419162 () Bool)

(declare-fun res!1902354 () Bool)

(declare-fun e!2842035 () Bool)

(assert (=> d!1419162 (=> res!1902354 e!2842035)))

(declare-fun e!2842037 () Bool)

(assert (=> d!1419162 (= res!1902354 e!2842037)))

(declare-fun res!1902355 () Bool)

(assert (=> d!1419162 (=> (not res!1902355) (not e!2842037))))

(assert (=> d!1419162 (= res!1902355 ((_ is Cons!50850) lt!1730322))))

(assert (=> d!1419162 (= (containsKeyBiggerList!214 lt!1730322 key!3287) e!2842035)))

(declare-fun b!4559305 () Bool)

(assert (=> b!4559305 (= e!2842037 (containsKey!1959 (_2!28984 (h!56755 lt!1730322)) key!3287))))

(declare-fun b!4559306 () Bool)

(declare-fun e!2842036 () Bool)

(assert (=> b!4559306 (= e!2842035 e!2842036)))

(declare-fun res!1902353 () Bool)

(assert (=> b!4559306 (=> (not res!1902353) (not e!2842036))))

(assert (=> b!4559306 (= res!1902353 ((_ is Cons!50850) lt!1730322))))

(declare-fun b!4559307 () Bool)

(assert (=> b!4559307 (= e!2842036 (containsKeyBiggerList!214 (t!357948 lt!1730322) key!3287))))

(assert (= (and d!1419162 res!1902355) b!4559305))

(assert (= (and d!1419162 (not res!1902354)) b!4559306))

(assert (= (and b!4559306 res!1902353) b!4559307))

(declare-fun m!5349487 () Bool)

(assert (=> b!4559305 m!5349487))

(declare-fun m!5349489 () Bool)

(assert (=> b!4559307 m!5349489))

(assert (=> b!4558978 d!1419162))

(declare-fun bs!939583 () Bool)

(declare-fun d!1419164 () Bool)

(assert (= bs!939583 (and d!1419164 d!1419136)))

(declare-fun lambda!179671 () Int)

(assert (=> bs!939583 (not (= lambda!179671 lambda!179668))))

(declare-fun bs!939584 () Bool)

(assert (= bs!939584 (and d!1419164 d!1419062)))

(assert (=> bs!939584 (not (= lambda!179671 lambda!179610))))

(declare-fun bs!939585 () Bool)

(assert (= bs!939585 (and d!1419164 d!1419032)))

(assert (=> bs!939585 (not (= lambda!179671 lambda!179567))))

(declare-fun bs!939586 () Bool)

(assert (= bs!939586 (and d!1419164 d!1419060)))

(assert (=> bs!939586 (not (= lambda!179671 lambda!179609))))

(declare-fun bs!939587 () Bool)

(assert (= bs!939587 (and d!1419164 start!453004)))

(assert (=> bs!939587 (not (= lambda!179671 lambda!179561))))

(declare-fun bs!939588 () Bool)

(assert (= bs!939588 (and d!1419164 d!1419130)))

(assert (=> bs!939588 (not (= lambda!179671 lambda!179665))))

(declare-fun bs!939589 () Bool)

(assert (= bs!939589 (and d!1419164 d!1419036)))

(assert (=> bs!939589 (not (= lambda!179671 lambda!179592))))

(declare-fun bs!939590 () Bool)

(assert (= bs!939590 (and d!1419164 d!1419038)))

(assert (=> bs!939590 (not (= lambda!179671 lambda!179593))))

(declare-fun bs!939591 () Bool)

(assert (= bs!939591 (and d!1419164 d!1419046)))

(assert (=> bs!939591 (not (= lambda!179671 lambda!179607))))

(assert (=> d!1419164 true))

(assert (=> d!1419164 (= (allKeysSameHashInMap!1343 lm!1477 hashF!1107) (forall!10417 (toList!4479 lm!1477) lambda!179671))))

(declare-fun bs!939592 () Bool)

(assert (= bs!939592 d!1419164))

(declare-fun m!5349491 () Bool)

(assert (=> bs!939592 m!5349491))

(assert (=> b!4558988 d!1419164))

(declare-fun d!1419166 () Bool)

(assert (=> d!1419166 (= (eq!687 lt!1730315 (addToMapMapFromBucket!754 newBucket!178 lt!1730318)) (= (content!8508 (toList!4480 lt!1730315)) (content!8508 (toList!4480 (addToMapMapFromBucket!754 newBucket!178 lt!1730318)))))))

(declare-fun bs!939593 () Bool)

(assert (= bs!939593 d!1419166))

(assert (=> bs!939593 m!5349103))

(declare-fun m!5349493 () Bool)

(assert (=> bs!939593 m!5349493))

(assert (=> b!4558977 d!1419166))

(declare-fun bs!939594 () Bool)

(declare-fun b!4559311 () Bool)

(assert (= bs!939594 (and b!4559311 b!4559225)))

(declare-fun lambda!179674 () Int)

(assert (=> bs!939594 (= lambda!179674 lambda!179658)))

(declare-fun bs!939595 () Bool)

(assert (= bs!939595 (and b!4559311 b!4559226)))

(assert (=> bs!939595 (= lambda!179674 lambda!179660)))

(assert (=> bs!939595 (= (= lt!1730318 lt!1730627) (= lambda!179674 lambda!179661))))

(declare-fun bs!939597 () Bool)

(assert (= bs!939597 (and b!4559311 d!1419072)))

(assert (=> bs!939597 (= (= lt!1730318 lt!1730633) (= lambda!179674 lambda!179662))))

(assert (=> b!4559311 true))

(declare-fun bs!939603 () Bool)

(declare-fun b!4559312 () Bool)

(assert (= bs!939603 (and b!4559312 b!4559226)))

(declare-fun lambda!179676 () Int)

(assert (=> bs!939603 (= lambda!179676 lambda!179660)))

(declare-fun bs!939605 () Bool)

(assert (= bs!939605 (and b!4559312 d!1419072)))

(assert (=> bs!939605 (= (= lt!1730318 lt!1730633) (= lambda!179676 lambda!179662))))

(declare-fun bs!939607 () Bool)

(assert (= bs!939607 (and b!4559312 b!4559311)))

(assert (=> bs!939607 (= lambda!179676 lambda!179674)))

(assert (=> bs!939603 (= (= lt!1730318 lt!1730627) (= lambda!179676 lambda!179661))))

(declare-fun bs!939610 () Bool)

(assert (= bs!939610 (and b!4559312 b!4559225)))

(assert (=> bs!939610 (= lambda!179676 lambda!179658)))

(assert (=> b!4559312 true))

(declare-fun lambda!179677 () Int)

(declare-fun lt!1730701 () ListMap!3741)

(assert (=> b!4559312 (= (= lt!1730701 lt!1730318) (= lambda!179677 lambda!179676))))

(assert (=> bs!939603 (= (= lt!1730701 lt!1730318) (= lambda!179677 lambda!179660))))

(assert (=> bs!939605 (= (= lt!1730701 lt!1730633) (= lambda!179677 lambda!179662))))

(assert (=> bs!939607 (= (= lt!1730701 lt!1730318) (= lambda!179677 lambda!179674))))

(assert (=> bs!939603 (= (= lt!1730701 lt!1730627) (= lambda!179677 lambda!179661))))

(assert (=> bs!939610 (= (= lt!1730701 lt!1730318) (= lambda!179677 lambda!179658))))

(assert (=> b!4559312 true))

(declare-fun bs!939618 () Bool)

(declare-fun d!1419168 () Bool)

(assert (= bs!939618 (and d!1419168 b!4559312)))

(declare-fun lt!1730707 () ListMap!3741)

(declare-fun lambda!179678 () Int)

(assert (=> bs!939618 (= (= lt!1730707 lt!1730318) (= lambda!179678 lambda!179676))))

(assert (=> bs!939618 (= (= lt!1730707 lt!1730701) (= lambda!179678 lambda!179677))))

(declare-fun bs!939619 () Bool)

(assert (= bs!939619 (and d!1419168 b!4559226)))

(assert (=> bs!939619 (= (= lt!1730707 lt!1730318) (= lambda!179678 lambda!179660))))

(declare-fun bs!939620 () Bool)

(assert (= bs!939620 (and d!1419168 d!1419072)))

(assert (=> bs!939620 (= (= lt!1730707 lt!1730633) (= lambda!179678 lambda!179662))))

(declare-fun bs!939621 () Bool)

(assert (= bs!939621 (and d!1419168 b!4559311)))

(assert (=> bs!939621 (= (= lt!1730707 lt!1730318) (= lambda!179678 lambda!179674))))

(assert (=> bs!939619 (= (= lt!1730707 lt!1730627) (= lambda!179678 lambda!179661))))

(declare-fun bs!939622 () Bool)

(assert (= bs!939622 (and d!1419168 b!4559225)))

(assert (=> bs!939622 (= (= lt!1730707 lt!1730318) (= lambda!179678 lambda!179658))))

(assert (=> d!1419168 true))

(declare-fun bm!318206 () Bool)

(declare-fun call!318213 () Unit!102334)

(assert (=> bm!318206 (= call!318213 (lemmaContainsAllItsOwnKeys!388 lt!1730318))))

(declare-fun lt!1730704 () ListMap!3741)

(declare-fun c!779540 () Bool)

(declare-fun call!318211 () Bool)

(declare-fun bm!318207 () Bool)

(assert (=> bm!318207 (= call!318211 (forall!10419 (ite c!779540 (toList!4480 lt!1730318) (toList!4480 lt!1730704)) (ite c!779540 lambda!179674 lambda!179677)))))

(declare-fun call!318212 () Bool)

(declare-fun bm!318208 () Bool)

(assert (=> bm!318208 (= call!318212 (forall!10419 (ite c!779540 (toList!4480 lt!1730318) newBucket!178) (ite c!779540 lambda!179674 lambda!179677)))))

(declare-fun b!4559310 () Bool)

(declare-fun e!2842039 () Bool)

(assert (=> b!4559310 (= e!2842039 (invariantList!1068 (toList!4480 lt!1730707)))))

(declare-fun e!2842040 () ListMap!3741)

(assert (=> b!4559311 (= e!2842040 lt!1730318)))

(declare-fun lt!1730711 () Unit!102334)

(assert (=> b!4559311 (= lt!1730711 call!318213)))

(assert (=> b!4559311 call!318212))

(declare-fun lt!1730695 () Unit!102334)

(assert (=> b!4559311 (= lt!1730695 lt!1730711)))

(assert (=> b!4559311 call!318211))

(declare-fun lt!1730694 () Unit!102334)

(declare-fun Unit!102386 () Unit!102334)

(assert (=> b!4559311 (= lt!1730694 Unit!102386)))

(assert (=> b!4559312 (= e!2842040 lt!1730701)))

(assert (=> b!4559312 (= lt!1730704 (+!1660 lt!1730318 (h!56754 newBucket!178)))))

(assert (=> b!4559312 (= lt!1730701 (addToMapMapFromBucket!754 (t!357947 newBucket!178) (+!1660 lt!1730318 (h!56754 newBucket!178))))))

(declare-fun lt!1730708 () Unit!102334)

(assert (=> b!4559312 (= lt!1730708 call!318213)))

(assert (=> b!4559312 (forall!10419 (toList!4480 lt!1730318) lambda!179676)))

(declare-fun lt!1730699 () Unit!102334)

(assert (=> b!4559312 (= lt!1730699 lt!1730708)))

(assert (=> b!4559312 call!318211))

(declare-fun lt!1730691 () Unit!102334)

(declare-fun Unit!102387 () Unit!102334)

(assert (=> b!4559312 (= lt!1730691 Unit!102387)))

(assert (=> b!4559312 (forall!10419 (t!357947 newBucket!178) lambda!179677)))

(declare-fun lt!1730696 () Unit!102334)

(declare-fun Unit!102388 () Unit!102334)

(assert (=> b!4559312 (= lt!1730696 Unit!102388)))

(declare-fun lt!1730702 () Unit!102334)

(declare-fun Unit!102389 () Unit!102334)

(assert (=> b!4559312 (= lt!1730702 Unit!102389)))

(declare-fun lt!1730692 () Unit!102334)

(assert (=> b!4559312 (= lt!1730692 (forallContained!2683 (toList!4480 lt!1730704) lambda!179677 (h!56754 newBucket!178)))))

(assert (=> b!4559312 (contains!13697 lt!1730704 (_1!28983 (h!56754 newBucket!178)))))

(declare-fun lt!1730700 () Unit!102334)

(declare-fun Unit!102390 () Unit!102334)

(assert (=> b!4559312 (= lt!1730700 Unit!102390)))

(assert (=> b!4559312 (contains!13697 lt!1730701 (_1!28983 (h!56754 newBucket!178)))))

(declare-fun lt!1730698 () Unit!102334)

(declare-fun Unit!102391 () Unit!102334)

(assert (=> b!4559312 (= lt!1730698 Unit!102391)))

(assert (=> b!4559312 call!318212))

(declare-fun lt!1730709 () Unit!102334)

(declare-fun Unit!102392 () Unit!102334)

(assert (=> b!4559312 (= lt!1730709 Unit!102392)))

(assert (=> b!4559312 (forall!10419 (toList!4480 lt!1730704) lambda!179677)))

(declare-fun lt!1730706 () Unit!102334)

(declare-fun Unit!102393 () Unit!102334)

(assert (=> b!4559312 (= lt!1730706 Unit!102393)))

(declare-fun lt!1730703 () Unit!102334)

(declare-fun Unit!102394 () Unit!102334)

(assert (=> b!4559312 (= lt!1730703 Unit!102394)))

(declare-fun lt!1730693 () Unit!102334)

(assert (=> b!4559312 (= lt!1730693 (addForallContainsKeyThenBeforeAdding!388 lt!1730318 lt!1730701 (_1!28983 (h!56754 newBucket!178)) (_2!28983 (h!56754 newBucket!178))))))

(assert (=> b!4559312 (forall!10419 (toList!4480 lt!1730318) lambda!179677)))

(declare-fun lt!1730705 () Unit!102334)

(assert (=> b!4559312 (= lt!1730705 lt!1730693)))

(assert (=> b!4559312 (forall!10419 (toList!4480 lt!1730318) lambda!179677)))

(declare-fun lt!1730697 () Unit!102334)

(declare-fun Unit!102395 () Unit!102334)

(assert (=> b!4559312 (= lt!1730697 Unit!102395)))

(declare-fun res!1902357 () Bool)

(assert (=> b!4559312 (= res!1902357 (forall!10419 newBucket!178 lambda!179677))))

(declare-fun e!2842038 () Bool)

(assert (=> b!4559312 (=> (not res!1902357) (not e!2842038))))

(assert (=> b!4559312 e!2842038))

(declare-fun lt!1730710 () Unit!102334)

(declare-fun Unit!102396 () Unit!102334)

(assert (=> b!4559312 (= lt!1730710 Unit!102396)))

(assert (=> d!1419168 e!2842039))

(declare-fun res!1902358 () Bool)

(assert (=> d!1419168 (=> (not res!1902358) (not e!2842039))))

(assert (=> d!1419168 (= res!1902358 (forall!10419 newBucket!178 lambda!179678))))

(assert (=> d!1419168 (= lt!1730707 e!2842040)))

(assert (=> d!1419168 (= c!779540 ((_ is Nil!50849) newBucket!178))))

(assert (=> d!1419168 (noDuplicateKeys!1236 newBucket!178)))

(assert (=> d!1419168 (= (addToMapMapFromBucket!754 newBucket!178 lt!1730318) lt!1730707)))

(declare-fun b!4559313 () Bool)

(declare-fun res!1902356 () Bool)

(assert (=> b!4559313 (=> (not res!1902356) (not e!2842039))))

(assert (=> b!4559313 (= res!1902356 (forall!10419 (toList!4480 lt!1730318) lambda!179678))))

(declare-fun b!4559314 () Bool)

(assert (=> b!4559314 (= e!2842038 (forall!10419 (toList!4480 lt!1730318) lambda!179677))))

(assert (= (and d!1419168 c!779540) b!4559311))

(assert (= (and d!1419168 (not c!779540)) b!4559312))

(assert (= (and b!4559312 res!1902357) b!4559314))

(assert (= (or b!4559311 b!4559312) bm!318208))

(assert (= (or b!4559311 b!4559312) bm!318207))

(assert (= (or b!4559311 b!4559312) bm!318206))

(assert (= (and d!1419168 res!1902358) b!4559313))

(assert (= (and b!4559313 res!1902356) b!4559310))

(declare-fun m!5349501 () Bool)

(assert (=> b!4559312 m!5349501))

(declare-fun m!5349503 () Bool)

(assert (=> b!4559312 m!5349503))

(declare-fun m!5349507 () Bool)

(assert (=> b!4559312 m!5349507))

(declare-fun m!5349509 () Bool)

(assert (=> b!4559312 m!5349509))

(assert (=> b!4559312 m!5349501))

(declare-fun m!5349511 () Bool)

(assert (=> b!4559312 m!5349511))

(declare-fun m!5349513 () Bool)

(assert (=> b!4559312 m!5349513))

(declare-fun m!5349515 () Bool)

(assert (=> b!4559312 m!5349515))

(declare-fun m!5349517 () Bool)

(assert (=> b!4559312 m!5349517))

(declare-fun m!5349519 () Bool)

(assert (=> b!4559312 m!5349519))

(declare-fun m!5349521 () Bool)

(assert (=> b!4559312 m!5349521))

(declare-fun m!5349523 () Bool)

(assert (=> b!4559312 m!5349523))

(assert (=> b!4559312 m!5349519))

(assert (=> bm!318206 m!5349377))

(declare-fun m!5349525 () Bool)

(assert (=> bm!318208 m!5349525))

(assert (=> b!4559314 m!5349519))

(declare-fun m!5349527 () Bool)

(assert (=> b!4559310 m!5349527))

(declare-fun m!5349529 () Bool)

(assert (=> b!4559313 m!5349529))

(declare-fun m!5349531 () Bool)

(assert (=> d!1419168 m!5349531))

(assert (=> d!1419168 m!5348763))

(declare-fun m!5349533 () Bool)

(assert (=> bm!318207 m!5349533))

(assert (=> b!4558977 d!1419168))

(declare-fun bs!939631 () Bool)

(declare-fun d!1419174 () Bool)

(assert (= bs!939631 (and d!1419174 d!1419136)))

(declare-fun lambda!179682 () Int)

(assert (=> bs!939631 (= lambda!179682 lambda!179668)))

(declare-fun bs!939632 () Bool)

(assert (= bs!939632 (and d!1419174 d!1419164)))

(assert (=> bs!939632 (not (= lambda!179682 lambda!179671))))

(declare-fun bs!939633 () Bool)

(assert (= bs!939633 (and d!1419174 d!1419062)))

(assert (=> bs!939633 (= lambda!179682 lambda!179610)))

(declare-fun bs!939634 () Bool)

(assert (= bs!939634 (and d!1419174 d!1419032)))

(assert (=> bs!939634 (= lambda!179682 lambda!179567)))

(declare-fun bs!939635 () Bool)

(assert (= bs!939635 (and d!1419174 d!1419060)))

(assert (=> bs!939635 (= lambda!179682 lambda!179609)))

(declare-fun bs!939636 () Bool)

(assert (= bs!939636 (and d!1419174 start!453004)))

(assert (=> bs!939636 (= lambda!179682 lambda!179561)))

(declare-fun bs!939637 () Bool)

(assert (= bs!939637 (and d!1419174 d!1419130)))

(assert (=> bs!939637 (= lambda!179682 lambda!179665)))

(declare-fun bs!939638 () Bool)

(assert (= bs!939638 (and d!1419174 d!1419036)))

(assert (=> bs!939638 (= lambda!179682 lambda!179592)))

(declare-fun bs!939639 () Bool)

(assert (= bs!939639 (and d!1419174 d!1419038)))

(assert (=> bs!939639 (= lambda!179682 lambda!179593)))

(declare-fun bs!939640 () Bool)

(assert (= bs!939640 (and d!1419174 d!1419046)))

(assert (=> bs!939640 (= lambda!179682 lambda!179607)))

(declare-fun lt!1730713 () ListMap!3741)

(assert (=> d!1419174 (invariantList!1068 (toList!4480 lt!1730713))))

(declare-fun e!2842041 () ListMap!3741)

(assert (=> d!1419174 (= lt!1730713 e!2842041)))

(declare-fun c!779541 () Bool)

(assert (=> d!1419174 (= c!779541 ((_ is Cons!50850) (toList!4479 lt!1730329)))))

(assert (=> d!1419174 (forall!10417 (toList!4479 lt!1730329) lambda!179682)))

(assert (=> d!1419174 (= (extractMap!1292 (toList!4479 lt!1730329)) lt!1730713)))

(declare-fun b!4559319 () Bool)

(assert (=> b!4559319 (= e!2842041 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lt!1730329))) (extractMap!1292 (t!357948 (toList!4479 lt!1730329)))))))

(declare-fun b!4559320 () Bool)

(assert (=> b!4559320 (= e!2842041 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419174 c!779541) b!4559319))

(assert (= (and d!1419174 (not c!779541)) b!4559320))

(declare-fun m!5349549 () Bool)

(assert (=> d!1419174 m!5349549))

(declare-fun m!5349551 () Bool)

(assert (=> d!1419174 m!5349551))

(declare-fun m!5349553 () Bool)

(assert (=> b!4559319 m!5349553))

(assert (=> b!4559319 m!5349553))

(declare-fun m!5349555 () Bool)

(assert (=> b!4559319 m!5349555))

(assert (=> b!4558977 d!1419174))

(declare-fun bs!939644 () Bool)

(declare-fun d!1419180 () Bool)

(assert (= bs!939644 (and d!1419180 b!4559312)))

(declare-fun lambda!179685 () Int)

(assert (=> bs!939644 (not (= lambda!179685 lambda!179676))))

(declare-fun bs!939645 () Bool)

(assert (= bs!939645 (and d!1419180 d!1419168)))

(assert (=> bs!939645 (not (= lambda!179685 lambda!179678))))

(assert (=> bs!939644 (not (= lambda!179685 lambda!179677))))

(declare-fun bs!939646 () Bool)

(assert (= bs!939646 (and d!1419180 b!4559226)))

(assert (=> bs!939646 (not (= lambda!179685 lambda!179660))))

(declare-fun bs!939647 () Bool)

(assert (= bs!939647 (and d!1419180 d!1419072)))

(assert (=> bs!939647 (not (= lambda!179685 lambda!179662))))

(declare-fun bs!939648 () Bool)

(assert (= bs!939648 (and d!1419180 b!4559311)))

(assert (=> bs!939648 (not (= lambda!179685 lambda!179674))))

(assert (=> bs!939646 (not (= lambda!179685 lambda!179661))))

(declare-fun bs!939649 () Bool)

(assert (= bs!939649 (and d!1419180 b!4559225)))

(assert (=> bs!939649 (not (= lambda!179685 lambda!179658))))

(assert (=> d!1419180 true))

(assert (=> d!1419180 true))

(assert (=> d!1419180 (= (allKeysSameHash!1090 newBucket!178 hash!344 hashF!1107) (forall!10419 newBucket!178 lambda!179685))))

(declare-fun bs!939650 () Bool)

(assert (= bs!939650 d!1419180))

(declare-fun m!5349559 () Bool)

(assert (=> bs!939650 m!5349559))

(assert (=> b!4558990 d!1419180))

(declare-fun bs!939651 () Bool)

(declare-fun d!1419186 () Bool)

(assert (= bs!939651 (and d!1419186 d!1419136)))

(declare-fun lambda!179686 () Int)

(assert (=> bs!939651 (= lambda!179686 lambda!179668)))

(declare-fun bs!939652 () Bool)

(assert (= bs!939652 (and d!1419186 d!1419062)))

(assert (=> bs!939652 (= lambda!179686 lambda!179610)))

(declare-fun bs!939653 () Bool)

(assert (= bs!939653 (and d!1419186 d!1419032)))

(assert (=> bs!939653 (= lambda!179686 lambda!179567)))

(declare-fun bs!939654 () Bool)

(assert (= bs!939654 (and d!1419186 d!1419060)))

(assert (=> bs!939654 (= lambda!179686 lambda!179609)))

(declare-fun bs!939655 () Bool)

(assert (= bs!939655 (and d!1419186 start!453004)))

(assert (=> bs!939655 (= lambda!179686 lambda!179561)))

(declare-fun bs!939656 () Bool)

(assert (= bs!939656 (and d!1419186 d!1419130)))

(assert (=> bs!939656 (= lambda!179686 lambda!179665)))

(declare-fun bs!939657 () Bool)

(assert (= bs!939657 (and d!1419186 d!1419036)))

(assert (=> bs!939657 (= lambda!179686 lambda!179592)))

(declare-fun bs!939658 () Bool)

(assert (= bs!939658 (and d!1419186 d!1419164)))

(assert (=> bs!939658 (not (= lambda!179686 lambda!179671))))

(declare-fun bs!939659 () Bool)

(assert (= bs!939659 (and d!1419186 d!1419174)))

(assert (=> bs!939659 (= lambda!179686 lambda!179682)))

(declare-fun bs!939660 () Bool)

(assert (= bs!939660 (and d!1419186 d!1419038)))

(assert (=> bs!939660 (= lambda!179686 lambda!179593)))

(declare-fun bs!939661 () Bool)

(assert (= bs!939661 (and d!1419186 d!1419046)))

(assert (=> bs!939661 (= lambda!179686 lambda!179607)))

(assert (=> d!1419186 (contains!13696 lt!1730309 (hash!3022 hashF!1107 key!3287))))

(declare-fun lt!1730718 () Unit!102334)

(assert (=> d!1419186 (= lt!1730718 (choose!30178 lt!1730309 key!3287 hashF!1107))))

(assert (=> d!1419186 (forall!10417 (toList!4479 lt!1730309) lambda!179686)))

(assert (=> d!1419186 (= (lemmaInGenMapThenLongMapContainsHash!310 lt!1730309 key!3287 hashF!1107) lt!1730718)))

(declare-fun bs!939662 () Bool)

(assert (= bs!939662 d!1419186))

(assert (=> bs!939662 m!5348843))

(assert (=> bs!939662 m!5348843))

(declare-fun m!5349561 () Bool)

(assert (=> bs!939662 m!5349561))

(declare-fun m!5349563 () Bool)

(assert (=> bs!939662 m!5349563))

(declare-fun m!5349565 () Bool)

(assert (=> bs!939662 m!5349565))

(assert (=> b!4558979 d!1419186))

(declare-fun d!1419188 () Bool)

(declare-fun e!2842050 () Bool)

(assert (=> d!1419188 e!2842050))

(declare-fun res!1902361 () Bool)

(assert (=> d!1419188 (=> res!1902361 e!2842050)))

(declare-fun lt!1730719 () Bool)

(assert (=> d!1419188 (= res!1902361 (not lt!1730719))))

(declare-fun lt!1730720 () Bool)

(assert (=> d!1419188 (= lt!1730719 lt!1730720)))

(declare-fun lt!1730721 () Unit!102334)

(declare-fun e!2842049 () Unit!102334)

(assert (=> d!1419188 (= lt!1730721 e!2842049)))

(declare-fun c!779542 () Bool)

(assert (=> d!1419188 (= c!779542 lt!1730720)))

(assert (=> d!1419188 (= lt!1730720 (containsKey!1963 (toList!4479 lt!1730309) lt!1730313))))

(assert (=> d!1419188 (= (contains!13696 lt!1730309 lt!1730313) lt!1730719)))

(declare-fun b!4559337 () Bool)

(declare-fun lt!1730722 () Unit!102334)

(assert (=> b!4559337 (= e!2842049 lt!1730722)))

(assert (=> b!4559337 (= lt!1730722 (lemmaContainsKeyImpliesGetValueByKeyDefined!1100 (toList!4479 lt!1730309) lt!1730313))))

(assert (=> b!4559337 (isDefined!8536 (getValueByKey!1195 (toList!4479 lt!1730309) lt!1730313))))

(declare-fun b!4559338 () Bool)

(declare-fun Unit!102397 () Unit!102334)

(assert (=> b!4559338 (= e!2842049 Unit!102397)))

(declare-fun b!4559339 () Bool)

(assert (=> b!4559339 (= e!2842050 (isDefined!8536 (getValueByKey!1195 (toList!4479 lt!1730309) lt!1730313)))))

(assert (= (and d!1419188 c!779542) b!4559337))

(assert (= (and d!1419188 (not c!779542)) b!4559338))

(assert (= (and d!1419188 (not res!1902361)) b!4559339))

(declare-fun m!5349567 () Bool)

(assert (=> d!1419188 m!5349567))

(declare-fun m!5349569 () Bool)

(assert (=> b!4559337 m!5349569))

(declare-fun m!5349571 () Bool)

(assert (=> b!4559337 m!5349571))

(assert (=> b!4559337 m!5349571))

(declare-fun m!5349573 () Bool)

(assert (=> b!4559337 m!5349573))

(assert (=> b!4559339 m!5349571))

(assert (=> b!4559339 m!5349571))

(assert (=> b!4559339 m!5349573))

(assert (=> b!4558979 d!1419188))

(declare-fun d!1419190 () Bool)

(declare-fun e!2842051 () Bool)

(assert (=> d!1419190 e!2842051))

(declare-fun res!1902362 () Bool)

(assert (=> d!1419190 (=> (not res!1902362) (not e!2842051))))

(declare-fun lt!1730725 () ListLongMap!3111)

(assert (=> d!1419190 (= res!1902362 (contains!13696 lt!1730725 (_1!28984 lt!1730334)))))

(declare-fun lt!1730724 () List!50974)

(assert (=> d!1419190 (= lt!1730725 (ListLongMap!3112 lt!1730724))))

(declare-fun lt!1730726 () Unit!102334)

(declare-fun lt!1730723 () Unit!102334)

(assert (=> d!1419190 (= lt!1730726 lt!1730723)))

(assert (=> d!1419190 (= (getValueByKey!1195 lt!1730724 (_1!28984 lt!1730334)) (Some!11262 (_2!28984 lt!1730334)))))

(assert (=> d!1419190 (= lt!1730723 (lemmaContainsTupThenGetReturnValue!749 lt!1730724 (_1!28984 lt!1730334) (_2!28984 lt!1730334)))))

(assert (=> d!1419190 (= lt!1730724 (insertStrictlySorted!457 (toList!4479 lt!1730309) (_1!28984 lt!1730334) (_2!28984 lt!1730334)))))

(assert (=> d!1419190 (= (+!1658 lt!1730309 lt!1730334) lt!1730725)))

(declare-fun b!4559340 () Bool)

(declare-fun res!1902363 () Bool)

(assert (=> b!4559340 (=> (not res!1902363) (not e!2842051))))

(assert (=> b!4559340 (= res!1902363 (= (getValueByKey!1195 (toList!4479 lt!1730725) (_1!28984 lt!1730334)) (Some!11262 (_2!28984 lt!1730334))))))

(declare-fun b!4559341 () Bool)

(assert (=> b!4559341 (= e!2842051 (contains!13698 (toList!4479 lt!1730725) lt!1730334))))

(assert (= (and d!1419190 res!1902362) b!4559340))

(assert (= (and b!4559340 res!1902363) b!4559341))

(declare-fun m!5349575 () Bool)

(assert (=> d!1419190 m!5349575))

(declare-fun m!5349577 () Bool)

(assert (=> d!1419190 m!5349577))

(declare-fun m!5349579 () Bool)

(assert (=> d!1419190 m!5349579))

(declare-fun m!5349581 () Bool)

(assert (=> d!1419190 m!5349581))

(declare-fun m!5349583 () Bool)

(assert (=> b!4559340 m!5349583))

(declare-fun m!5349585 () Bool)

(assert (=> b!4559341 m!5349585))

(assert (=> b!4558989 d!1419190))

(declare-fun d!1419192 () Bool)

(assert (=> d!1419192 (= (tail!7854 lm!1477) (ListLongMap!3112 (tail!7853 (toList!4479 lm!1477))))))

(declare-fun bs!939663 () Bool)

(assert (= bs!939663 d!1419192))

(assert (=> bs!939663 m!5348835))

(assert (=> b!4558989 d!1419192))

(declare-fun d!1419194 () Bool)

(assert (=> d!1419194 (= (eq!687 lt!1730323 lt!1730327) (= (content!8508 (toList!4480 lt!1730323)) (content!8508 (toList!4480 lt!1730327))))))

(declare-fun bs!939664 () Bool)

(assert (= bs!939664 d!1419194))

(assert (=> bs!939664 m!5349119))

(declare-fun m!5349587 () Bool)

(assert (=> bs!939664 m!5349587))

(assert (=> b!4558991 d!1419194))

(declare-fun d!1419196 () Bool)

(declare-fun e!2842056 () Bool)

(assert (=> d!1419196 e!2842056))

(declare-fun res!1902365 () Bool)

(assert (=> d!1419196 (=> res!1902365 e!2842056)))

(declare-fun e!2842055 () Bool)

(assert (=> d!1419196 (= res!1902365 e!2842055)))

(declare-fun res!1902364 () Bool)

(assert (=> d!1419196 (=> (not res!1902364) (not e!2842055))))

(declare-fun lt!1730727 () Bool)

(assert (=> d!1419196 (= res!1902364 (not lt!1730727))))

(declare-fun lt!1730730 () Bool)

(assert (=> d!1419196 (= lt!1730727 lt!1730730)))

(declare-fun lt!1730734 () Unit!102334)

(declare-fun e!2842053 () Unit!102334)

(assert (=> d!1419196 (= lt!1730734 e!2842053)))

(declare-fun c!779544 () Bool)

(assert (=> d!1419196 (= c!779544 lt!1730730)))

(assert (=> d!1419196 (= lt!1730730 (containsKey!1962 (toList!4480 lt!1730327) key!3287))))

(assert (=> d!1419196 (= (contains!13697 lt!1730327 key!3287) lt!1730727)))

(declare-fun b!4559342 () Bool)

(declare-fun e!2842054 () Bool)

(assert (=> b!4559342 (= e!2842056 e!2842054)))

(declare-fun res!1902366 () Bool)

(assert (=> b!4559342 (=> (not res!1902366) (not e!2842054))))

(assert (=> b!4559342 (= res!1902366 (isDefined!8535 (getValueByKey!1196 (toList!4480 lt!1730327) key!3287)))))

(declare-fun b!4559343 () Bool)

(declare-fun e!2842052 () Unit!102334)

(assert (=> b!4559343 (= e!2842053 e!2842052)))

(declare-fun c!779545 () Bool)

(declare-fun call!318214 () Bool)

(assert (=> b!4559343 (= c!779545 call!318214)))

(declare-fun b!4559344 () Bool)

(assert (=> b!4559344 (= e!2842055 (not (contains!13700 (keys!17727 lt!1730327) key!3287)))))

(declare-fun b!4559345 () Bool)

(declare-fun Unit!102398 () Unit!102334)

(assert (=> b!4559345 (= e!2842052 Unit!102398)))

(declare-fun bm!318209 () Bool)

(declare-fun e!2842057 () List!50976)

(assert (=> bm!318209 (= call!318214 (contains!13700 e!2842057 key!3287))))

(declare-fun c!779543 () Bool)

(assert (=> bm!318209 (= c!779543 c!779544)))

(declare-fun b!4559346 () Bool)

(declare-fun lt!1730728 () Unit!102334)

(assert (=> b!4559346 (= e!2842053 lt!1730728)))

(declare-fun lt!1730733 () Unit!102334)

(assert (=> b!4559346 (= lt!1730733 (lemmaContainsKeyImpliesGetValueByKeyDefined!1099 (toList!4480 lt!1730327) key!3287))))

(assert (=> b!4559346 (isDefined!8535 (getValueByKey!1196 (toList!4480 lt!1730327) key!3287))))

(declare-fun lt!1730732 () Unit!102334)

(assert (=> b!4559346 (= lt!1730732 lt!1730733)))

(assert (=> b!4559346 (= lt!1730728 (lemmaInListThenGetKeysListContains!512 (toList!4480 lt!1730327) key!3287))))

(assert (=> b!4559346 call!318214))

(declare-fun b!4559347 () Bool)

(assert (=> b!4559347 (= e!2842057 (keys!17727 lt!1730327))))

(declare-fun b!4559348 () Bool)

(assert (=> b!4559348 (= e!2842054 (contains!13700 (keys!17727 lt!1730327) key!3287))))

(declare-fun b!4559349 () Bool)

(assert (=> b!4559349 (= e!2842057 (getKeysList!516 (toList!4480 lt!1730327)))))

(declare-fun b!4559350 () Bool)

(assert (=> b!4559350 false))

(declare-fun lt!1730731 () Unit!102334)

(declare-fun lt!1730729 () Unit!102334)

(assert (=> b!4559350 (= lt!1730731 lt!1730729)))

(assert (=> b!4559350 (containsKey!1962 (toList!4480 lt!1730327) key!3287)))

(assert (=> b!4559350 (= lt!1730729 (lemmaInGetKeysListThenContainsKey!515 (toList!4480 lt!1730327) key!3287))))

(declare-fun Unit!102399 () Unit!102334)

(assert (=> b!4559350 (= e!2842052 Unit!102399)))

(assert (= (and d!1419196 c!779544) b!4559346))

(assert (= (and d!1419196 (not c!779544)) b!4559343))

(assert (= (and b!4559343 c!779545) b!4559350))

(assert (= (and b!4559343 (not c!779545)) b!4559345))

(assert (= (or b!4559346 b!4559343) bm!318209))

(assert (= (and bm!318209 c!779543) b!4559349))

(assert (= (and bm!318209 (not c!779543)) b!4559347))

(assert (= (and d!1419196 res!1902364) b!4559344))

(assert (= (and d!1419196 (not res!1902365)) b!4559342))

(assert (= (and b!4559342 res!1902366) b!4559348))

(declare-fun m!5349589 () Bool)

(assert (=> bm!318209 m!5349589))

(assert (=> b!4559348 m!5349111))

(assert (=> b!4559348 m!5349111))

(declare-fun m!5349591 () Bool)

(assert (=> b!4559348 m!5349591))

(assert (=> b!4559347 m!5349111))

(declare-fun m!5349593 () Bool)

(assert (=> b!4559350 m!5349593))

(declare-fun m!5349595 () Bool)

(assert (=> b!4559350 m!5349595))

(assert (=> d!1419196 m!5349593))

(declare-fun m!5349597 () Bool)

(assert (=> b!4559342 m!5349597))

(assert (=> b!4559342 m!5349597))

(declare-fun m!5349599 () Bool)

(assert (=> b!4559342 m!5349599))

(assert (=> b!4559344 m!5349111))

(assert (=> b!4559344 m!5349111))

(assert (=> b!4559344 m!5349591))

(declare-fun m!5349601 () Bool)

(assert (=> b!4559349 m!5349601))

(declare-fun m!5349603 () Bool)

(assert (=> b!4559346 m!5349603))

(assert (=> b!4559346 m!5349597))

(assert (=> b!4559346 m!5349597))

(assert (=> b!4559346 m!5349599))

(declare-fun m!5349605 () Bool)

(assert (=> b!4559346 m!5349605))

(assert (=> b!4558980 d!1419196))

(declare-fun bs!939665 () Bool)

(declare-fun d!1419198 () Bool)

(assert (= bs!939665 (and d!1419198 d!1419136)))

(declare-fun lambda!179687 () Int)

(assert (=> bs!939665 (= lambda!179687 lambda!179668)))

(declare-fun bs!939666 () Bool)

(assert (= bs!939666 (and d!1419198 d!1419062)))

(assert (=> bs!939666 (= lambda!179687 lambda!179610)))

(declare-fun bs!939667 () Bool)

(assert (= bs!939667 (and d!1419198 d!1419032)))

(assert (=> bs!939667 (= lambda!179687 lambda!179567)))

(declare-fun bs!939668 () Bool)

(assert (= bs!939668 (and d!1419198 start!453004)))

(assert (=> bs!939668 (= lambda!179687 lambda!179561)))

(declare-fun bs!939669 () Bool)

(assert (= bs!939669 (and d!1419198 d!1419130)))

(assert (=> bs!939669 (= lambda!179687 lambda!179665)))

(declare-fun bs!939670 () Bool)

(assert (= bs!939670 (and d!1419198 d!1419036)))

(assert (=> bs!939670 (= lambda!179687 lambda!179592)))

(declare-fun bs!939671 () Bool)

(assert (= bs!939671 (and d!1419198 d!1419164)))

(assert (=> bs!939671 (not (= lambda!179687 lambda!179671))))

(declare-fun bs!939672 () Bool)

(assert (= bs!939672 (and d!1419198 d!1419174)))

(assert (=> bs!939672 (= lambda!179687 lambda!179682)))

(declare-fun bs!939673 () Bool)

(assert (= bs!939673 (and d!1419198 d!1419038)))

(assert (=> bs!939673 (= lambda!179687 lambda!179593)))

(declare-fun bs!939674 () Bool)

(assert (= bs!939674 (and d!1419198 d!1419046)))

(assert (=> bs!939674 (= lambda!179687 lambda!179607)))

(declare-fun bs!939675 () Bool)

(assert (= bs!939675 (and d!1419198 d!1419060)))

(assert (=> bs!939675 (= lambda!179687 lambda!179609)))

(declare-fun bs!939676 () Bool)

(assert (= bs!939676 (and d!1419198 d!1419186)))

(assert (=> bs!939676 (= lambda!179687 lambda!179686)))

(declare-fun lt!1730735 () ListMap!3741)

(assert (=> d!1419198 (invariantList!1068 (toList!4480 lt!1730735))))

(declare-fun e!2842058 () ListMap!3741)

(assert (=> d!1419198 (= lt!1730735 e!2842058)))

(declare-fun c!779546 () Bool)

(assert (=> d!1419198 (= c!779546 ((_ is Cons!50850) (toList!4479 lm!1477)))))

(assert (=> d!1419198 (forall!10417 (toList!4479 lm!1477) lambda!179687)))

(assert (=> d!1419198 (= (extractMap!1292 (toList!4479 lm!1477)) lt!1730735)))

(declare-fun b!4559351 () Bool)

(assert (=> b!4559351 (= e!2842058 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (toList!4479 lm!1477))) (extractMap!1292 (t!357948 (toList!4479 lm!1477)))))))

(declare-fun b!4559352 () Bool)

(assert (=> b!4559352 (= e!2842058 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419198 c!779546) b!4559351))

(assert (= (and d!1419198 (not c!779546)) b!4559352))

(declare-fun m!5349607 () Bool)

(assert (=> d!1419198 m!5349607))

(declare-fun m!5349609 () Bool)

(assert (=> d!1419198 m!5349609))

(assert (=> b!4559351 m!5348819))

(assert (=> b!4559351 m!5348819))

(declare-fun m!5349611 () Bool)

(assert (=> b!4559351 m!5349611))

(assert (=> b!4558980 d!1419198))

(declare-fun d!1419200 () Bool)

(assert (=> d!1419200 (= (tail!7853 (toList!4479 lm!1477)) (t!357948 (toList!4479 lm!1477)))))

(assert (=> b!4558982 d!1419200))

(declare-fun bs!939677 () Bool)

(declare-fun d!1419202 () Bool)

(assert (= bs!939677 (and d!1419202 d!1419136)))

(declare-fun lambda!179690 () Int)

(assert (=> bs!939677 (= lambda!179690 lambda!179668)))

(declare-fun bs!939678 () Bool)

(assert (= bs!939678 (and d!1419202 d!1419062)))

(assert (=> bs!939678 (= lambda!179690 lambda!179610)))

(declare-fun bs!939679 () Bool)

(assert (= bs!939679 (and d!1419202 d!1419032)))

(assert (=> bs!939679 (= lambda!179690 lambda!179567)))

(declare-fun bs!939680 () Bool)

(assert (= bs!939680 (and d!1419202 start!453004)))

(assert (=> bs!939680 (= lambda!179690 lambda!179561)))

(declare-fun bs!939681 () Bool)

(assert (= bs!939681 (and d!1419202 d!1419198)))

(assert (=> bs!939681 (= lambda!179690 lambda!179687)))

(declare-fun bs!939682 () Bool)

(assert (= bs!939682 (and d!1419202 d!1419130)))

(assert (=> bs!939682 (= lambda!179690 lambda!179665)))

(declare-fun bs!939683 () Bool)

(assert (= bs!939683 (and d!1419202 d!1419036)))

(assert (=> bs!939683 (= lambda!179690 lambda!179592)))

(declare-fun bs!939684 () Bool)

(assert (= bs!939684 (and d!1419202 d!1419164)))

(assert (=> bs!939684 (not (= lambda!179690 lambda!179671))))

(declare-fun bs!939685 () Bool)

(assert (= bs!939685 (and d!1419202 d!1419174)))

(assert (=> bs!939685 (= lambda!179690 lambda!179682)))

(declare-fun bs!939686 () Bool)

(assert (= bs!939686 (and d!1419202 d!1419038)))

(assert (=> bs!939686 (= lambda!179690 lambda!179593)))

(declare-fun bs!939687 () Bool)

(assert (= bs!939687 (and d!1419202 d!1419046)))

(assert (=> bs!939687 (= lambda!179690 lambda!179607)))

(declare-fun bs!939688 () Bool)

(assert (= bs!939688 (and d!1419202 d!1419060)))

(assert (=> bs!939688 (= lambda!179690 lambda!179609)))

(declare-fun bs!939689 () Bool)

(assert (= bs!939689 (and d!1419202 d!1419186)))

(assert (=> bs!939689 (= lambda!179690 lambda!179686)))

(assert (=> d!1419202 (eq!687 (extractMap!1292 (Cons!50850 (tuple2!51381 hash!344 newBucket!178) (tail!7853 (toList!4479 lm!1477)))) (-!456 (extractMap!1292 (Cons!50850 (tuple2!51381 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477)))) (tail!7853 (toList!4479 lm!1477)))) key!3287))))

(declare-fun lt!1730738 () Unit!102334)

(declare-fun choose!30184 (ListLongMap!3111 (_ BitVec 64) List!50973 List!50973 K!12230 Hashable!5631) Unit!102334)

(assert (=> d!1419202 (= lt!1730738 (choose!30184 lm!1477 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1419202 (forall!10417 (toList!4479 lm!1477) lambda!179690)))

(assert (=> d!1419202 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!34 lm!1477 hash!344 (_2!28984 (h!56755 (toList!4479 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1730738)))

(declare-fun bs!939690 () Bool)

(assert (= bs!939690 d!1419202))

(declare-fun m!5349613 () Bool)

(assert (=> bs!939690 m!5349613))

(declare-fun m!5349615 () Bool)

(assert (=> bs!939690 m!5349615))

(declare-fun m!5349617 () Bool)

(assert (=> bs!939690 m!5349617))

(declare-fun m!5349619 () Bool)

(assert (=> bs!939690 m!5349619))

(assert (=> bs!939690 m!5349615))

(assert (=> bs!939690 m!5348835))

(declare-fun m!5349621 () Bool)

(assert (=> bs!939690 m!5349621))

(assert (=> bs!939690 m!5349619))

(declare-fun m!5349623 () Bool)

(assert (=> bs!939690 m!5349623))

(assert (=> bs!939690 m!5349613))

(assert (=> b!4558982 d!1419202))

(declare-fun bs!939691 () Bool)

(declare-fun d!1419204 () Bool)

(assert (= bs!939691 (and d!1419204 d!1419136)))

(declare-fun lambda!179691 () Int)

(assert (=> bs!939691 (= lambda!179691 lambda!179668)))

(declare-fun bs!939692 () Bool)

(assert (= bs!939692 (and d!1419204 d!1419062)))

(assert (=> bs!939692 (= lambda!179691 lambda!179610)))

(declare-fun bs!939693 () Bool)

(assert (= bs!939693 (and d!1419204 d!1419032)))

(assert (=> bs!939693 (= lambda!179691 lambda!179567)))

(declare-fun bs!939694 () Bool)

(assert (= bs!939694 (and d!1419204 start!453004)))

(assert (=> bs!939694 (= lambda!179691 lambda!179561)))

(declare-fun bs!939695 () Bool)

(assert (= bs!939695 (and d!1419204 d!1419198)))

(assert (=> bs!939695 (= lambda!179691 lambda!179687)))

(declare-fun bs!939696 () Bool)

(assert (= bs!939696 (and d!1419204 d!1419130)))

(assert (=> bs!939696 (= lambda!179691 lambda!179665)))

(declare-fun bs!939697 () Bool)

(assert (= bs!939697 (and d!1419204 d!1419202)))

(assert (=> bs!939697 (= lambda!179691 lambda!179690)))

(declare-fun bs!939698 () Bool)

(assert (= bs!939698 (and d!1419204 d!1419036)))

(assert (=> bs!939698 (= lambda!179691 lambda!179592)))

(declare-fun bs!939699 () Bool)

(assert (= bs!939699 (and d!1419204 d!1419164)))

(assert (=> bs!939699 (not (= lambda!179691 lambda!179671))))

(declare-fun bs!939700 () Bool)

(assert (= bs!939700 (and d!1419204 d!1419174)))

(assert (=> bs!939700 (= lambda!179691 lambda!179682)))

(declare-fun bs!939701 () Bool)

(assert (= bs!939701 (and d!1419204 d!1419038)))

(assert (=> bs!939701 (= lambda!179691 lambda!179593)))

(declare-fun bs!939702 () Bool)

(assert (= bs!939702 (and d!1419204 d!1419046)))

(assert (=> bs!939702 (= lambda!179691 lambda!179607)))

(declare-fun bs!939703 () Bool)

(assert (= bs!939703 (and d!1419204 d!1419060)))

(assert (=> bs!939703 (= lambda!179691 lambda!179609)))

(declare-fun bs!939704 () Bool)

(assert (= bs!939704 (and d!1419204 d!1419186)))

(assert (=> bs!939704 (= lambda!179691 lambda!179686)))

(declare-fun lt!1730739 () ListMap!3741)

(assert (=> d!1419204 (invariantList!1068 (toList!4480 lt!1730739))))

(declare-fun e!2842059 () ListMap!3741)

(assert (=> d!1419204 (= lt!1730739 e!2842059)))

(declare-fun c!779547 () Bool)

(assert (=> d!1419204 (= c!779547 ((_ is Cons!50850) (Cons!50850 lt!1730316 lt!1730332)))))

(assert (=> d!1419204 (forall!10417 (Cons!50850 lt!1730316 lt!1730332) lambda!179691)))

(assert (=> d!1419204 (= (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)) lt!1730739)))

(declare-fun b!4559353 () Bool)

(assert (=> b!4559353 (= e!2842059 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (Cons!50850 lt!1730316 lt!1730332))) (extractMap!1292 (t!357948 (Cons!50850 lt!1730316 lt!1730332)))))))

(declare-fun b!4559354 () Bool)

(assert (=> b!4559354 (= e!2842059 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419204 c!779547) b!4559353))

(assert (= (and d!1419204 (not c!779547)) b!4559354))

(declare-fun m!5349625 () Bool)

(assert (=> d!1419204 m!5349625))

(declare-fun m!5349627 () Bool)

(assert (=> d!1419204 m!5349627))

(declare-fun m!5349629 () Bool)

(assert (=> b!4559353 m!5349629))

(assert (=> b!4559353 m!5349629))

(declare-fun m!5349631 () Bool)

(assert (=> b!4559353 m!5349631))

(assert (=> b!4558982 d!1419204))

(declare-fun d!1419206 () Bool)

(assert (=> d!1419206 (= (eq!687 (extractMap!1292 (Cons!50850 lt!1730334 lt!1730332)) (-!456 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)) key!3287)) (= (content!8508 (toList!4480 (extractMap!1292 (Cons!50850 lt!1730334 lt!1730332)))) (content!8508 (toList!4480 (-!456 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)) key!3287)))))))

(declare-fun bs!939705 () Bool)

(assert (= bs!939705 d!1419206))

(declare-fun m!5349633 () Bool)

(assert (=> bs!939705 m!5349633))

(declare-fun m!5349635 () Bool)

(assert (=> bs!939705 m!5349635))

(assert (=> b!4558982 d!1419206))

(declare-fun bs!939706 () Bool)

(declare-fun d!1419208 () Bool)

(assert (= bs!939706 (and d!1419208 d!1419136)))

(declare-fun lambda!179692 () Int)

(assert (=> bs!939706 (= lambda!179692 lambda!179668)))

(declare-fun bs!939707 () Bool)

(assert (= bs!939707 (and d!1419208 d!1419062)))

(assert (=> bs!939707 (= lambda!179692 lambda!179610)))

(declare-fun bs!939708 () Bool)

(assert (= bs!939708 (and d!1419208 d!1419032)))

(assert (=> bs!939708 (= lambda!179692 lambda!179567)))

(declare-fun bs!939709 () Bool)

(assert (= bs!939709 (and d!1419208 start!453004)))

(assert (=> bs!939709 (= lambda!179692 lambda!179561)))

(declare-fun bs!939710 () Bool)

(assert (= bs!939710 (and d!1419208 d!1419198)))

(assert (=> bs!939710 (= lambda!179692 lambda!179687)))

(declare-fun bs!939711 () Bool)

(assert (= bs!939711 (and d!1419208 d!1419204)))

(assert (=> bs!939711 (= lambda!179692 lambda!179691)))

(declare-fun bs!939712 () Bool)

(assert (= bs!939712 (and d!1419208 d!1419130)))

(assert (=> bs!939712 (= lambda!179692 lambda!179665)))

(declare-fun bs!939713 () Bool)

(assert (= bs!939713 (and d!1419208 d!1419202)))

(assert (=> bs!939713 (= lambda!179692 lambda!179690)))

(declare-fun bs!939714 () Bool)

(assert (= bs!939714 (and d!1419208 d!1419036)))

(assert (=> bs!939714 (= lambda!179692 lambda!179592)))

(declare-fun bs!939715 () Bool)

(assert (= bs!939715 (and d!1419208 d!1419164)))

(assert (=> bs!939715 (not (= lambda!179692 lambda!179671))))

(declare-fun bs!939716 () Bool)

(assert (= bs!939716 (and d!1419208 d!1419174)))

(assert (=> bs!939716 (= lambda!179692 lambda!179682)))

(declare-fun bs!939717 () Bool)

(assert (= bs!939717 (and d!1419208 d!1419038)))

(assert (=> bs!939717 (= lambda!179692 lambda!179593)))

(declare-fun bs!939718 () Bool)

(assert (= bs!939718 (and d!1419208 d!1419046)))

(assert (=> bs!939718 (= lambda!179692 lambda!179607)))

(declare-fun bs!939719 () Bool)

(assert (= bs!939719 (and d!1419208 d!1419060)))

(assert (=> bs!939719 (= lambda!179692 lambda!179609)))

(declare-fun bs!939720 () Bool)

(assert (= bs!939720 (and d!1419208 d!1419186)))

(assert (=> bs!939720 (= lambda!179692 lambda!179686)))

(declare-fun lt!1730740 () ListMap!3741)

(assert (=> d!1419208 (invariantList!1068 (toList!4480 lt!1730740))))

(declare-fun e!2842060 () ListMap!3741)

(assert (=> d!1419208 (= lt!1730740 e!2842060)))

(declare-fun c!779548 () Bool)

(assert (=> d!1419208 (= c!779548 ((_ is Cons!50850) (Cons!50850 lt!1730334 lt!1730332)))))

(assert (=> d!1419208 (forall!10417 (Cons!50850 lt!1730334 lt!1730332) lambda!179692)))

(assert (=> d!1419208 (= (extractMap!1292 (Cons!50850 lt!1730334 lt!1730332)) lt!1730740)))

(declare-fun b!4559355 () Bool)

(assert (=> b!4559355 (= e!2842060 (addToMapMapFromBucket!754 (_2!28984 (h!56755 (Cons!50850 lt!1730334 lt!1730332))) (extractMap!1292 (t!357948 (Cons!50850 lt!1730334 lt!1730332)))))))

(declare-fun b!4559356 () Bool)

(assert (=> b!4559356 (= e!2842060 (ListMap!3742 Nil!50849))))

(assert (= (and d!1419208 c!779548) b!4559355))

(assert (= (and d!1419208 (not c!779548)) b!4559356))

(declare-fun m!5349637 () Bool)

(assert (=> d!1419208 m!5349637))

(declare-fun m!5349639 () Bool)

(assert (=> d!1419208 m!5349639))

(declare-fun m!5349641 () Bool)

(assert (=> b!4559355 m!5349641))

(assert (=> b!4559355 m!5349641))

(declare-fun m!5349643 () Bool)

(assert (=> b!4559355 m!5349643))

(assert (=> b!4558982 d!1419208))

(declare-fun d!1419210 () Bool)

(declare-fun e!2842061 () Bool)

(assert (=> d!1419210 e!2842061))

(declare-fun res!1902367 () Bool)

(assert (=> d!1419210 (=> (not res!1902367) (not e!2842061))))

(declare-fun lt!1730741 () ListMap!3741)

(assert (=> d!1419210 (= res!1902367 (not (contains!13697 lt!1730741 key!3287)))))

(assert (=> d!1419210 (= lt!1730741 (ListMap!3742 (removePresrvNoDuplicatedKeys!191 (toList!4480 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332))) key!3287)))))

(assert (=> d!1419210 (= (-!456 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)) key!3287) lt!1730741)))

(declare-fun b!4559357 () Bool)

(assert (=> b!4559357 (= e!2842061 (= ((_ map and) (content!8507 (keys!17727 (extractMap!1292 (Cons!50850 lt!1730316 lt!1730332)))) ((_ map not) (store ((as const (Array K!12230 Bool)) false) key!3287 true))) (content!8507 (keys!17727 lt!1730741))))))

(assert (= (and d!1419210 res!1902367) b!4559357))

(declare-fun m!5349645 () Bool)

(assert (=> d!1419210 m!5349645))

(declare-fun m!5349647 () Bool)

(assert (=> d!1419210 m!5349647))

(assert (=> b!4559357 m!5348825))

(declare-fun m!5349649 () Bool)

(assert (=> b!4559357 m!5349649))

(declare-fun m!5349651 () Bool)

(assert (=> b!4559357 m!5349651))

(assert (=> b!4559357 m!5349649))

(declare-fun m!5349653 () Bool)

(assert (=> b!4559357 m!5349653))

(assert (=> b!4559357 m!5348933))

(assert (=> b!4559357 m!5349651))

(declare-fun m!5349655 () Bool)

(assert (=> b!4559357 m!5349655))

(assert (=> b!4558982 d!1419210))

(declare-fun bs!939721 () Bool)

(declare-fun d!1419212 () Bool)

(assert (= bs!939721 (and d!1419212 d!1419136)))

(declare-fun lambda!179695 () Int)

(assert (=> bs!939721 (= lambda!179695 lambda!179668)))

(declare-fun bs!939722 () Bool)

(assert (= bs!939722 (and d!1419212 d!1419062)))

(assert (=> bs!939722 (= lambda!179695 lambda!179610)))

(declare-fun bs!939723 () Bool)

(assert (= bs!939723 (and d!1419212 d!1419032)))

(assert (=> bs!939723 (= lambda!179695 lambda!179567)))

(declare-fun bs!939724 () Bool)

(assert (= bs!939724 (and d!1419212 start!453004)))

(assert (=> bs!939724 (= lambda!179695 lambda!179561)))

(declare-fun bs!939725 () Bool)

(assert (= bs!939725 (and d!1419212 d!1419198)))

(assert (=> bs!939725 (= lambda!179695 lambda!179687)))

(declare-fun bs!939726 () Bool)

(assert (= bs!939726 (and d!1419212 d!1419204)))

(assert (=> bs!939726 (= lambda!179695 lambda!179691)))

(declare-fun bs!939727 () Bool)

(assert (= bs!939727 (and d!1419212 d!1419208)))

(assert (=> bs!939727 (= lambda!179695 lambda!179692)))

(declare-fun bs!939728 () Bool)

(assert (= bs!939728 (and d!1419212 d!1419130)))

(assert (=> bs!939728 (= lambda!179695 lambda!179665)))

(declare-fun bs!939729 () Bool)

(assert (= bs!939729 (and d!1419212 d!1419202)))

(assert (=> bs!939729 (= lambda!179695 lambda!179690)))

(declare-fun bs!939730 () Bool)

(assert (= bs!939730 (and d!1419212 d!1419036)))

(assert (=> bs!939730 (= lambda!179695 lambda!179592)))

(declare-fun bs!939731 () Bool)

(assert (= bs!939731 (and d!1419212 d!1419164)))

(assert (=> bs!939731 (not (= lambda!179695 lambda!179671))))

(declare-fun bs!939732 () Bool)

(assert (= bs!939732 (and d!1419212 d!1419174)))

(assert (=> bs!939732 (= lambda!179695 lambda!179682)))

(declare-fun bs!939733 () Bool)

(assert (= bs!939733 (and d!1419212 d!1419038)))

(assert (=> bs!939733 (= lambda!179695 lambda!179593)))

(declare-fun bs!939734 () Bool)

(assert (= bs!939734 (and d!1419212 d!1419046)))

(assert (=> bs!939734 (= lambda!179695 lambda!179607)))

(declare-fun bs!939735 () Bool)

(assert (= bs!939735 (and d!1419212 d!1419060)))

(assert (=> bs!939735 (= lambda!179695 lambda!179609)))

(declare-fun bs!939736 () Bool)

(assert (= bs!939736 (and d!1419212 d!1419186)))

(assert (=> bs!939736 (= lambda!179695 lambda!179686)))

(assert (=> d!1419212 (not (contains!13697 (extractMap!1292 (toList!4479 lm!1477)) key!3287))))

(declare-fun lt!1730744 () Unit!102334)

(declare-fun choose!30185 (ListLongMap!3111 K!12230 Hashable!5631) Unit!102334)

(assert (=> d!1419212 (= lt!1730744 (choose!30185 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419212 (forall!10417 (toList!4479 lm!1477) lambda!179695)))

(assert (=> d!1419212 (= (lemmaNotInItsHashBucketThenNotInMap!224 lm!1477 key!3287 hashF!1107) lt!1730744)))

(declare-fun bs!939737 () Bool)

(assert (= bs!939737 d!1419212))

(assert (=> bs!939737 m!5348839))

(assert (=> bs!939737 m!5348839))

(declare-fun m!5349657 () Bool)

(assert (=> bs!939737 m!5349657))

(declare-fun m!5349659 () Bool)

(assert (=> bs!939737 m!5349659))

(declare-fun m!5349661 () Bool)

(assert (=> bs!939737 m!5349661))

(assert (=> b!4558992 d!1419212))

(declare-fun e!2842064 () Bool)

(declare-fun tp!1339151 () Bool)

(declare-fun b!4559362 () Bool)

(assert (=> b!4559362 (= e!2842064 (and tp_is_empty!28221 tp_is_empty!28223 tp!1339151))))

(assert (=> b!4558994 (= tp!1339138 e!2842064)))

(assert (= (and b!4558994 ((_ is Cons!50849) (t!357947 newBucket!178))) b!4559362))

(declare-fun b!4559367 () Bool)

(declare-fun e!2842067 () Bool)

(declare-fun tp!1339156 () Bool)

(declare-fun tp!1339157 () Bool)

(assert (=> b!4559367 (= e!2842067 (and tp!1339156 tp!1339157))))

(assert (=> b!4558993 (= tp!1339139 e!2842067)))

(assert (= (and b!4558993 ((_ is Cons!50850) (toList!4479 lm!1477))) b!4559367))

(declare-fun b_lambda!162019 () Bool)

(assert (= b_lambda!162007 (or start!453004 b_lambda!162019)))

(declare-fun bs!939738 () Bool)

(declare-fun d!1419214 () Bool)

(assert (= bs!939738 (and d!1419214 start!453004)))

(assert (=> bs!939738 (= (dynLambda!21267 lambda!179561 (h!56755 (toList!4479 lm!1477))) (noDuplicateKeys!1236 (_2!28984 (h!56755 (toList!4479 lm!1477)))))))

(assert (=> bs!939738 m!5349055))

(assert (=> b!4559026 d!1419214))

(declare-fun b_lambda!162021 () Bool)

(assert (= b_lambda!162013 (or start!453004 b_lambda!162021)))

(declare-fun bs!939739 () Bool)

(declare-fun d!1419216 () Bool)

(assert (= bs!939739 (and d!1419216 start!453004)))

(assert (=> bs!939739 (= (dynLambda!21267 lambda!179561 lt!1730320) (noDuplicateKeys!1236 (_2!28984 lt!1730320)))))

(declare-fun m!5349663 () Bool)

(assert (=> bs!939739 m!5349663))

(assert (=> d!1419160 d!1419216))

(check-sat (not bm!318187) (not b!4559339) (not d!1419208) (not d!1419030) (not b!4559337) (not d!1419202) (not bm!318203) (not d!1419154) (not d!1419036) (not b!4559142) (not b!4559357) (not b!4559033) (not b!4559278) (not b!4559140) (not d!1419048) (not b!4559055) (not d!1419064) (not d!1419174) (not d!1419034) (not b!4559136) (not d!1419148) (not d!1419024) (not d!1419038) (not b!4559346) (not d!1419164) (not b!4559134) (not b_lambda!162021) (not b!4559057) (not b!4559349) (not b!4559307) (not d!1419062) (not d!1419056) (not d!1419168) (not b!4559032) (not d!1419180) (not b!4559099) (not b!4559098) (not b!4559319) (not b!4559313) (not b!4559228) (not b!4559367) (not d!1419072) (not d!1419140) (not b!4559052) (not b!4559226) (not b!4559260) (not b!4559145) (not d!1419160) (not d!1419070) (not b!4559350) (not b!4559141) (not b!4559096) (not d!1419196) (not b!4559044) (not bm!318191) (not b!4559362) (not bm!318209) (not b!4559314) (not b!4559347) (not b!4559038) (not d!1419186) (not b!4559102) (not bm!318207) (not d!1419166) (not d!1419046) (not b!4559353) (not b!4559027) (not d!1419198) (not b!4559268) (not b!4559340) (not b!4559298) (not d!1419032) (not b!4559039) (not b!4559094) (not d!1419194) (not b_lambda!162019) (not b!4559344) tp_is_empty!28221 (not bm!318208) (not b!4559312) (not b!4559144) (not b!4559355) (not d!1419132) (not b!4559224) (not d!1419026) (not b!4559138) (not d!1419152) (not d!1419206) (not d!1419188) (not b!4559132) (not d!1419066) (not b!4559235) (not b!4559342) (not d!1419060) (not d!1419130) (not b!4559238) (not b!4559100) (not b!4559310) (not b!4559101) (not bm!318205) (not d!1419136) (not bs!939738) (not b!4559294) tp_is_empty!28223 (not b!4559143) (not b!4559262) (not b!4559305) (not b!4559021) (not d!1419190) (not d!1419040) (not b!4559237) (not b!4559351) (not d!1419142) (not d!1419068) (not d!1419210) (not bm!318206) (not b!4559341) (not d!1419204) (not d!1419192) (not bs!939739) (not b!4559227) (not b!4559348) (not bm!318204) (not d!1419212))
(check-sat)
