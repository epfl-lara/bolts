; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445924 () Bool)

(assert start!445924)

(declare-fun b!4510783 () Bool)

(declare-fun e!2810084 () Bool)

(declare-fun e!2810077 () Bool)

(assert (=> b!4510783 (= e!2810084 e!2810077)))

(declare-fun res!1876295 () Bool)

(assert (=> b!4510783 (=> (not res!1876295) (not e!2810077))))

(declare-datatypes ((K!12000 0))(
  ( (K!12001 (val!17871 Int)) )
))
(declare-datatypes ((V!12246 0))(
  ( (V!12247 (val!17872 Int)) )
))
(declare-datatypes ((tuple2!51010 0))(
  ( (tuple2!51011 (_1!28799 K!12000) (_2!28799 V!12246)) )
))
(declare-datatypes ((List!50722 0))(
  ( (Nil!50598) (Cons!50598 (h!56435 tuple2!51010) (t!357684 List!50722)) )
))
(declare-datatypes ((ListMap!3557 0))(
  ( (ListMap!3558 (toList!4295 List!50722)) )
))
(declare-fun lt!1689045 () ListMap!3557)

(declare-fun key!3287 () K!12000)

(declare-fun contains!13299 (ListMap!3557 K!12000) Bool)

(assert (=> b!4510783 (= res!1876295 (contains!13299 lt!1689045 key!3287))))

(declare-datatypes ((tuple2!51012 0))(
  ( (tuple2!51013 (_1!28800 (_ BitVec 64)) (_2!28800 List!50722)) )
))
(declare-datatypes ((List!50723 0))(
  ( (Nil!50599) (Cons!50599 (h!56436 tuple2!51012) (t!357685 List!50723)) )
))
(declare-datatypes ((ListLongMap!2927 0))(
  ( (ListLongMap!2928 (toList!4296 List!50723)) )
))
(declare-fun lm!1477 () ListLongMap!2927)

(declare-fun extractMap!1200 (List!50723) ListMap!3557)

(assert (=> b!4510783 (= lt!1689045 (extractMap!1200 (toList!4296 lm!1477)))))

(declare-fun b!4510784 () Bool)

(declare-fun res!1876298 () Bool)

(declare-fun e!2810081 () Bool)

(assert (=> b!4510784 (=> res!1876298 e!2810081)))

(declare-fun lt!1689051 () ListLongMap!2927)

(declare-fun lt!1689065 () tuple2!51012)

(declare-fun head!9380 (ListLongMap!2927) tuple2!51012)

(assert (=> b!4510784 (= res!1876298 (not (= (head!9380 lt!1689051) lt!1689065)))))

(declare-fun b!4510786 () Bool)

(declare-fun e!2810089 () Bool)

(declare-fun tp!1337809 () Bool)

(assert (=> b!4510786 (= e!2810089 tp!1337809)))

(declare-fun b!4510787 () Bool)

(declare-fun res!1876291 () Bool)

(declare-fun e!2810076 () Bool)

(assert (=> b!4510787 (=> res!1876291 e!2810076)))

(declare-fun lt!1689050 () ListMap!3557)

(declare-fun eq!601 (ListMap!3557 ListMap!3557) Bool)

(assert (=> b!4510787 (= res!1876291 (not (eq!601 lt!1689045 lt!1689050)))))

(declare-fun b!4510788 () Bool)

(declare-fun e!2810083 () Bool)

(assert (=> b!4510788 (= e!2810081 e!2810083)))

(declare-fun res!1876290 () Bool)

(assert (=> b!4510788 (=> res!1876290 e!2810083)))

(declare-fun lt!1689055 () ListMap!3557)

(declare-fun lt!1689049 () ListMap!3557)

(assert (=> b!4510788 (= res!1876290 (not (eq!601 lt!1689055 lt!1689049)))))

(declare-fun lt!1689058 () ListMap!3557)

(declare-fun addToMapMapFromBucket!671 (List!50722 ListMap!3557) ListMap!3557)

(assert (=> b!4510788 (= lt!1689049 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058))))

(assert (=> b!4510788 (= lt!1689055 (extractMap!1200 (toList!4296 lt!1689051)))))

(declare-fun b!4510789 () Bool)

(declare-fun e!2810078 () Bool)

(declare-fun e!2810086 () Bool)

(assert (=> b!4510789 (= e!2810078 e!2810086)))

(declare-fun res!1876301 () Bool)

(assert (=> b!4510789 (=> res!1876301 e!2810086)))

(assert (=> b!4510789 (= res!1876301 (not (contains!13299 (extractMap!1200 (t!357685 (toList!4296 lm!1477))) key!3287)))))

(declare-fun lt!1689046 () ListMap!3557)

(assert (=> b!4510789 (contains!13299 lt!1689046 key!3287)))

(declare-fun lt!1689057 () ListLongMap!2927)

(assert (=> b!4510789 (= lt!1689046 (extractMap!1200 (toList!4296 lt!1689057)))))

(declare-datatypes ((Unit!93482 0))(
  ( (Unit!93483) )
))
(declare-fun lt!1689068 () Unit!93482)

(declare-datatypes ((Hashable!5539 0))(
  ( (HashableExt!5538 (__x!31242 Int)) )
))
(declare-fun hashF!1107 () Hashable!5539)

(declare-fun lemmaListContainsThenExtractedMapContains!114 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> b!4510789 (= lt!1689068 (lemmaListContainsThenExtractedMapContains!114 lt!1689057 key!3287 hashF!1107))))

(declare-fun b!4510790 () Bool)

(declare-fun res!1876287 () Bool)

(declare-fun e!2810080 () Bool)

(assert (=> b!4510790 (=> res!1876287 e!2810080)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4510790 (= res!1876287 (or ((_ is Nil!50599) (toList!4296 lm!1477)) (= (_1!28800 (h!56436 (toList!4296 lm!1477))) hash!344)))))

(declare-fun b!4510791 () Bool)

(declare-fun res!1876289 () Bool)

(assert (=> b!4510791 (=> (not res!1876289) (not e!2810084))))

(declare-fun allKeysSameHashInMap!1251 (ListLongMap!2927 Hashable!5539) Bool)

(assert (=> b!4510791 (= res!1876289 (allKeysSameHashInMap!1251 lm!1477 hashF!1107))))

(declare-fun b!4510792 () Bool)

(declare-fun e!2810082 () Unit!93482)

(declare-fun Unit!93484 () Unit!93482)

(assert (=> b!4510792 (= e!2810082 Unit!93484)))

(declare-fun lt!1689061 () Unit!93482)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!132 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> b!4510792 (= lt!1689061 (lemmaNotInItsHashBucketThenNotInMap!132 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4510792 false))

(declare-fun b!4510793 () Bool)

(declare-fun Unit!93485 () Unit!93482)

(assert (=> b!4510793 (= e!2810082 Unit!93485)))

(declare-fun b!4510794 () Bool)

(declare-fun e!2810079 () Bool)

(assert (=> b!4510794 (= e!2810080 e!2810079)))

(declare-fun res!1876302 () Bool)

(assert (=> b!4510794 (=> res!1876302 e!2810079)))

(declare-fun contains!13300 (ListLongMap!2927 (_ BitVec 64)) Bool)

(assert (=> b!4510794 (= res!1876302 (not (contains!13300 lt!1689057 hash!344)))))

(declare-fun tail!7702 (ListLongMap!2927) ListLongMap!2927)

(assert (=> b!4510794 (= lt!1689057 (tail!7702 lm!1477))))

(declare-fun b!4510795 () Bool)

(declare-fun res!1876286 () Bool)

(assert (=> b!4510795 (=> res!1876286 e!2810076)))

(assert (=> b!4510795 (= res!1876286 (bvsge (_1!28800 lt!1689065) hash!344))))

(declare-fun b!4510796 () Bool)

(declare-fun res!1876285 () Bool)

(declare-fun e!2810087 () Bool)

(assert (=> b!4510796 (=> (not res!1876285) (not e!2810087))))

(declare-fun newBucket!178 () List!50722)

(declare-fun allKeysSameHash!998 (List!50722 (_ BitVec 64) Hashable!5539) Bool)

(assert (=> b!4510796 (= res!1876285 (allKeysSameHash!998 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4510797 () Bool)

(declare-fun isEmpty!28635 (ListLongMap!2927) Bool)

(assert (=> b!4510797 (= e!2810083 (not (isEmpty!28635 lm!1477)))))

(declare-fun lt!1689048 () ListMap!3557)

(assert (=> b!4510797 (eq!601 lt!1689049 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))))

(declare-fun lt!1689056 () Unit!93482)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!20 (ListMap!3557 ListMap!3557 List!50722) Unit!93482)

(assert (=> b!4510797 (= lt!1689056 (lemmaAddToMapFromBucketPreservesEquivalence!20 lt!1689058 lt!1689048 (_2!28800 lt!1689065)))))

(declare-fun b!4510798 () Bool)

(declare-fun res!1876297 () Bool)

(assert (=> b!4510798 (=> res!1876297 e!2810079)))

(declare-fun lt!1689047 () List!50722)

(declare-fun apply!11881 (ListLongMap!2927 (_ BitVec 64)) List!50722)

(assert (=> b!4510798 (= res!1876297 (not (= (apply!11881 lt!1689057 hash!344) lt!1689047)))))

(declare-fun res!1876304 () Bool)

(assert (=> start!445924 (=> (not res!1876304) (not e!2810084))))

(declare-fun lambda!170537 () Int)

(declare-fun forall!10223 (List!50723 Int) Bool)

(assert (=> start!445924 (= res!1876304 (forall!10223 (toList!4296 lm!1477) lambda!170537))))

(assert (=> start!445924 e!2810084))

(assert (=> start!445924 true))

(declare-fun inv!66184 (ListLongMap!2927) Bool)

(assert (=> start!445924 (and (inv!66184 lm!1477) e!2810089)))

(declare-fun tp_is_empty!27853 () Bool)

(assert (=> start!445924 tp_is_empty!27853))

(declare-fun e!2810088 () Bool)

(assert (=> start!445924 e!2810088))

(declare-fun tp_is_empty!27855 () Bool)

(declare-fun tp!1337808 () Bool)

(declare-fun b!4510785 () Bool)

(assert (=> b!4510785 (= e!2810088 (and tp_is_empty!27853 tp_is_empty!27855 tp!1337808))))

(declare-fun b!4510799 () Bool)

(assert (=> b!4510799 (= e!2810077 e!2810087)))

(declare-fun res!1876296 () Bool)

(assert (=> b!4510799 (=> (not res!1876296) (not e!2810087))))

(declare-fun lt!1689054 () (_ BitVec 64))

(assert (=> b!4510799 (= res!1876296 (= lt!1689054 hash!344))))

(declare-fun hash!2751 (Hashable!5539 K!12000) (_ BitVec 64))

(assert (=> b!4510799 (= lt!1689054 (hash!2751 hashF!1107 key!3287))))

(declare-fun b!4510800 () Bool)

(assert (=> b!4510800 (= e!2810076 e!2810081)))

(declare-fun res!1876292 () Bool)

(assert (=> b!4510800 (=> res!1876292 e!2810081)))

(declare-fun lt!1689059 () tuple2!51012)

(declare-fun +!1506 (ListLongMap!2927 tuple2!51012) ListLongMap!2927)

(assert (=> b!4510800 (= res!1876292 (not (= lt!1689051 (+!1506 lm!1477 lt!1689059))))))

(declare-fun lt!1689063 () ListLongMap!2927)

(assert (=> b!4510800 (= lt!1689051 (+!1506 lt!1689063 lt!1689065))))

(declare-fun b!4510801 () Bool)

(declare-fun res!1876294 () Bool)

(assert (=> b!4510801 (=> res!1876294 e!2810079)))

(declare-fun lt!1689062 () tuple2!51012)

(declare-fun contains!13301 (List!50723 tuple2!51012) Bool)

(assert (=> b!4510801 (= res!1876294 (not (contains!13301 (t!357685 (toList!4296 lm!1477)) lt!1689062)))))

(declare-fun b!4510802 () Bool)

(assert (=> b!4510802 (= e!2810087 (not e!2810080))))

(declare-fun res!1876299 () Bool)

(assert (=> b!4510802 (=> res!1876299 e!2810080)))

(declare-fun removePairForKey!771 (List!50722 K!12000) List!50722)

(assert (=> b!4510802 (= res!1876299 (not (= newBucket!178 (removePairForKey!771 lt!1689047 key!3287))))))

(declare-fun lt!1689052 () Unit!93482)

(declare-fun forallContained!2475 (List!50723 Int tuple2!51012) Unit!93482)

(assert (=> b!4510802 (= lt!1689052 (forallContained!2475 (toList!4296 lm!1477) lambda!170537 lt!1689062))))

(assert (=> b!4510802 (contains!13301 (toList!4296 lm!1477) lt!1689062)))

(assert (=> b!4510802 (= lt!1689062 (tuple2!51013 hash!344 lt!1689047))))

(declare-fun lt!1689053 () Unit!93482)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!656 (List!50723 (_ BitVec 64) List!50722) Unit!93482)

(assert (=> b!4510802 (= lt!1689053 (lemmaGetValueByKeyImpliesContainsTuple!656 (toList!4296 lm!1477) hash!344 lt!1689047))))

(assert (=> b!4510802 (= lt!1689047 (apply!11881 lm!1477 hash!344))))

(assert (=> b!4510802 (contains!13300 lm!1477 lt!1689054)))

(declare-fun lt!1689066 () Unit!93482)

(declare-fun lemmaInGenMapThenLongMapContainsHash!218 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> b!4510802 (= lt!1689066 (lemmaInGenMapThenLongMapContainsHash!218 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4510803 () Bool)

(declare-fun e!2810085 () Bool)

(assert (=> b!4510803 (= e!2810079 e!2810085)))

(declare-fun res!1876303 () Bool)

(assert (=> b!4510803 (=> res!1876303 e!2810085)))

(declare-fun lt!1689060 () Bool)

(assert (=> b!4510803 (= res!1876303 lt!1689060)))

(declare-fun lt!1689044 () Unit!93482)

(assert (=> b!4510803 (= lt!1689044 e!2810082)))

(declare-fun c!769419 () Bool)

(assert (=> b!4510803 (= c!769419 lt!1689060)))

(declare-fun containsKey!1732 (List!50722 K!12000) Bool)

(assert (=> b!4510803 (= lt!1689060 (not (containsKey!1732 lt!1689047 key!3287)))))

(declare-fun b!4510804 () Bool)

(declare-fun res!1876300 () Bool)

(assert (=> b!4510804 (=> res!1876300 e!2810080)))

(declare-fun noDuplicateKeys!1144 (List!50722) Bool)

(assert (=> b!4510804 (= res!1876300 (not (noDuplicateKeys!1144 newBucket!178)))))

(declare-fun b!4510805 () Bool)

(assert (=> b!4510805 (= e!2810086 e!2810076)))

(declare-fun res!1876293 () Bool)

(assert (=> b!4510805 (=> res!1876293 e!2810076)))

(assert (=> b!4510805 (= res!1876293 (not (eq!601 lt!1689050 lt!1689045)))))

(assert (=> b!4510805 (= lt!1689050 (extractMap!1200 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))

(assert (=> b!4510805 (= lt!1689065 (head!9380 lm!1477))))

(assert (=> b!4510805 (eq!601 lt!1689058 lt!1689048)))

(declare-fun -!370 (ListMap!3557 K!12000) ListMap!3557)

(assert (=> b!4510805 (= lt!1689048 (-!370 lt!1689046 key!3287))))

(assert (=> b!4510805 (= lt!1689058 (extractMap!1200 (toList!4296 lt!1689063)))))

(assert (=> b!4510805 (= lt!1689063 (+!1506 lt!1689057 lt!1689059))))

(assert (=> b!4510805 (= lt!1689059 (tuple2!51013 hash!344 newBucket!178))))

(declare-fun lt!1689067 () Unit!93482)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!129 (ListLongMap!2927 (_ BitVec 64) List!50722 K!12000 Hashable!5539) Unit!93482)

(assert (=> b!4510805 (= lt!1689067 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!129 lt!1689057 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4510806 () Bool)

(assert (=> b!4510806 (= e!2810085 e!2810078)))

(declare-fun res!1876288 () Bool)

(assert (=> b!4510806 (=> res!1876288 e!2810078)))

(declare-fun containsKeyBiggerList!124 (List!50723 K!12000) Bool)

(assert (=> b!4510806 (= res!1876288 (not (containsKeyBiggerList!124 (t!357685 (toList!4296 lm!1477)) key!3287)))))

(assert (=> b!4510806 (containsKeyBiggerList!124 (toList!4296 lt!1689057) key!3287)))

(declare-fun lt!1689064 () Unit!93482)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!60 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> b!4510806 (= lt!1689064 (lemmaInLongMapThenContainsKeyBiggerList!60 lt!1689057 key!3287 hashF!1107))))

(assert (= (and start!445924 res!1876304) b!4510791))

(assert (= (and b!4510791 res!1876289) b!4510783))

(assert (= (and b!4510783 res!1876295) b!4510799))

(assert (= (and b!4510799 res!1876296) b!4510796))

(assert (= (and b!4510796 res!1876285) b!4510802))

(assert (= (and b!4510802 (not res!1876299)) b!4510804))

(assert (= (and b!4510804 (not res!1876300)) b!4510790))

(assert (= (and b!4510790 (not res!1876287)) b!4510794))

(assert (= (and b!4510794 (not res!1876302)) b!4510798))

(assert (= (and b!4510798 (not res!1876297)) b!4510801))

(assert (= (and b!4510801 (not res!1876294)) b!4510803))

(assert (= (and b!4510803 c!769419) b!4510792))

(assert (= (and b!4510803 (not c!769419)) b!4510793))

(assert (= (and b!4510803 (not res!1876303)) b!4510806))

(assert (= (and b!4510806 (not res!1876288)) b!4510789))

(assert (= (and b!4510789 (not res!1876301)) b!4510805))

(assert (= (and b!4510805 (not res!1876293)) b!4510787))

(assert (= (and b!4510787 (not res!1876291)) b!4510795))

(assert (= (and b!4510795 (not res!1876286)) b!4510800))

(assert (= (and b!4510800 (not res!1876292)) b!4510784))

(assert (= (and b!4510784 (not res!1876298)) b!4510788))

(assert (= (and b!4510788 (not res!1876290)) b!4510797))

(assert (= start!445924 b!4510786))

(assert (= (and start!445924 ((_ is Cons!50598) newBucket!178)) b!4510785))

(declare-fun m!5250227 () Bool)

(assert (=> b!4510796 m!5250227))

(declare-fun m!5250229 () Bool)

(assert (=> b!4510804 m!5250229))

(declare-fun m!5250231 () Bool)

(assert (=> b!4510806 m!5250231))

(declare-fun m!5250233 () Bool)

(assert (=> b!4510806 m!5250233))

(declare-fun m!5250235 () Bool)

(assert (=> b!4510806 m!5250235))

(declare-fun m!5250237 () Bool)

(assert (=> b!4510783 m!5250237))

(declare-fun m!5250239 () Bool)

(assert (=> b!4510783 m!5250239))

(declare-fun m!5250241 () Bool)

(assert (=> b!4510789 m!5250241))

(declare-fun m!5250243 () Bool)

(assert (=> b!4510789 m!5250243))

(declare-fun m!5250245 () Bool)

(assert (=> b!4510789 m!5250245))

(assert (=> b!4510789 m!5250243))

(declare-fun m!5250247 () Bool)

(assert (=> b!4510789 m!5250247))

(declare-fun m!5250249 () Bool)

(assert (=> b!4510789 m!5250249))

(declare-fun m!5250251 () Bool)

(assert (=> b!4510797 m!5250251))

(declare-fun m!5250253 () Bool)

(assert (=> b!4510797 m!5250253))

(assert (=> b!4510797 m!5250253))

(declare-fun m!5250255 () Bool)

(assert (=> b!4510797 m!5250255))

(declare-fun m!5250257 () Bool)

(assert (=> b!4510797 m!5250257))

(declare-fun m!5250259 () Bool)

(assert (=> start!445924 m!5250259))

(declare-fun m!5250261 () Bool)

(assert (=> start!445924 m!5250261))

(declare-fun m!5250263 () Bool)

(assert (=> b!4510798 m!5250263))

(declare-fun m!5250265 () Bool)

(assert (=> b!4510788 m!5250265))

(declare-fun m!5250267 () Bool)

(assert (=> b!4510788 m!5250267))

(declare-fun m!5250269 () Bool)

(assert (=> b!4510788 m!5250269))

(declare-fun m!5250271 () Bool)

(assert (=> b!4510802 m!5250271))

(declare-fun m!5250273 () Bool)

(assert (=> b!4510802 m!5250273))

(declare-fun m!5250275 () Bool)

(assert (=> b!4510802 m!5250275))

(declare-fun m!5250277 () Bool)

(assert (=> b!4510802 m!5250277))

(declare-fun m!5250279 () Bool)

(assert (=> b!4510802 m!5250279))

(declare-fun m!5250281 () Bool)

(assert (=> b!4510802 m!5250281))

(declare-fun m!5250283 () Bool)

(assert (=> b!4510802 m!5250283))

(declare-fun m!5250285 () Bool)

(assert (=> b!4510787 m!5250285))

(declare-fun m!5250287 () Bool)

(assert (=> b!4510800 m!5250287))

(declare-fun m!5250289 () Bool)

(assert (=> b!4510800 m!5250289))

(declare-fun m!5250291 () Bool)

(assert (=> b!4510784 m!5250291))

(declare-fun m!5250293 () Bool)

(assert (=> b!4510805 m!5250293))

(declare-fun m!5250295 () Bool)

(assert (=> b!4510805 m!5250295))

(declare-fun m!5250297 () Bool)

(assert (=> b!4510805 m!5250297))

(declare-fun m!5250299 () Bool)

(assert (=> b!4510805 m!5250299))

(declare-fun m!5250301 () Bool)

(assert (=> b!4510805 m!5250301))

(declare-fun m!5250303 () Bool)

(assert (=> b!4510805 m!5250303))

(declare-fun m!5250305 () Bool)

(assert (=> b!4510805 m!5250305))

(declare-fun m!5250307 () Bool)

(assert (=> b!4510805 m!5250307))

(declare-fun m!5250309 () Bool)

(assert (=> b!4510805 m!5250309))

(declare-fun m!5250311 () Bool)

(assert (=> b!4510791 m!5250311))

(declare-fun m!5250313 () Bool)

(assert (=> b!4510794 m!5250313))

(declare-fun m!5250315 () Bool)

(assert (=> b!4510794 m!5250315))

(declare-fun m!5250317 () Bool)

(assert (=> b!4510803 m!5250317))

(declare-fun m!5250319 () Bool)

(assert (=> b!4510799 m!5250319))

(declare-fun m!5250321 () Bool)

(assert (=> b!4510801 m!5250321))

(declare-fun m!5250323 () Bool)

(assert (=> b!4510792 m!5250323))

(check-sat (not b!4510785) (not b!4510800) (not b!4510783) (not b!4510805) (not b!4510801) (not b!4510802) tp_is_empty!27855 (not b!4510791) (not b!4510799) (not b!4510796) (not b!4510786) (not b!4510784) (not b!4510803) (not start!445924) (not b!4510806) (not b!4510787) (not b!4510794) (not b!4510797) (not b!4510804) (not b!4510798) (not b!4510788) tp_is_empty!27853 (not b!4510792) (not b!4510789))
(check-sat)
(get-model)

(declare-fun d!1387368 () Bool)

(declare-fun res!1876309 () Bool)

(declare-fun e!2810094 () Bool)

(assert (=> d!1387368 (=> res!1876309 e!2810094)))

(assert (=> d!1387368 (= res!1876309 (and ((_ is Cons!50598) lt!1689047) (= (_1!28799 (h!56435 lt!1689047)) key!3287)))))

(assert (=> d!1387368 (= (containsKey!1732 lt!1689047 key!3287) e!2810094)))

(declare-fun b!4510811 () Bool)

(declare-fun e!2810095 () Bool)

(assert (=> b!4510811 (= e!2810094 e!2810095)))

(declare-fun res!1876310 () Bool)

(assert (=> b!4510811 (=> (not res!1876310) (not e!2810095))))

(assert (=> b!4510811 (= res!1876310 ((_ is Cons!50598) lt!1689047))))

(declare-fun b!4510812 () Bool)

(assert (=> b!4510812 (= e!2810095 (containsKey!1732 (t!357684 lt!1689047) key!3287))))

(assert (= (and d!1387368 (not res!1876309)) b!4510811))

(assert (= (and b!4510811 res!1876310) b!4510812))

(declare-fun m!5250325 () Bool)

(assert (=> b!4510812 m!5250325))

(assert (=> b!4510803 d!1387368))

(declare-fun bs!846849 () Bool)

(declare-fun d!1387370 () Bool)

(assert (= bs!846849 (and d!1387370 start!445924)))

(declare-fun lambda!170540 () Int)

(assert (=> bs!846849 (= lambda!170540 lambda!170537)))

(assert (=> d!1387370 (not (contains!13299 (extractMap!1200 (toList!4296 lm!1477)) key!3287))))

(declare-fun lt!1689071 () Unit!93482)

(declare-fun choose!29311 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> d!1387370 (= lt!1689071 (choose!29311 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387370 (forall!10223 (toList!4296 lm!1477) lambda!170540)))

(assert (=> d!1387370 (= (lemmaNotInItsHashBucketThenNotInMap!132 lm!1477 key!3287 hashF!1107) lt!1689071)))

(declare-fun bs!846850 () Bool)

(assert (= bs!846850 d!1387370))

(assert (=> bs!846850 m!5250239))

(assert (=> bs!846850 m!5250239))

(declare-fun m!5250327 () Bool)

(assert (=> bs!846850 m!5250327))

(declare-fun m!5250329 () Bool)

(assert (=> bs!846850 m!5250329))

(declare-fun m!5250331 () Bool)

(assert (=> bs!846850 m!5250331))

(assert (=> b!4510792 d!1387370))

(declare-fun bs!846851 () Bool)

(declare-fun d!1387372 () Bool)

(assert (= bs!846851 (and d!1387372 start!445924)))

(declare-fun lambda!170543 () Int)

(assert (=> bs!846851 (= lambda!170543 lambda!170537)))

(declare-fun bs!846852 () Bool)

(assert (= bs!846852 (and d!1387372 d!1387370)))

(assert (=> bs!846852 (= lambda!170543 lambda!170540)))

(assert (=> d!1387372 (contains!13300 lm!1477 (hash!2751 hashF!1107 key!3287))))

(declare-fun lt!1689074 () Unit!93482)

(declare-fun choose!29312 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> d!1387372 (= lt!1689074 (choose!29312 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387372 (forall!10223 (toList!4296 lm!1477) lambda!170543)))

(assert (=> d!1387372 (= (lemmaInGenMapThenLongMapContainsHash!218 lm!1477 key!3287 hashF!1107) lt!1689074)))

(declare-fun bs!846853 () Bool)

(assert (= bs!846853 d!1387372))

(assert (=> bs!846853 m!5250319))

(assert (=> bs!846853 m!5250319))

(declare-fun m!5250333 () Bool)

(assert (=> bs!846853 m!5250333))

(declare-fun m!5250335 () Bool)

(assert (=> bs!846853 m!5250335))

(declare-fun m!5250337 () Bool)

(assert (=> bs!846853 m!5250337))

(assert (=> b!4510802 d!1387372))

(declare-fun d!1387376 () Bool)

(declare-datatypes ((Option!11080 0))(
  ( (None!11079) (Some!11079 (v!44631 List!50722)) )
))
(declare-fun get!16555 (Option!11080) List!50722)

(declare-fun getValueByKey!1060 (List!50723 (_ BitVec 64)) Option!11080)

(assert (=> d!1387376 (= (apply!11881 lm!1477 hash!344) (get!16555 (getValueByKey!1060 (toList!4296 lm!1477) hash!344)))))

(declare-fun bs!846854 () Bool)

(assert (= bs!846854 d!1387376))

(declare-fun m!5250339 () Bool)

(assert (=> bs!846854 m!5250339))

(assert (=> bs!846854 m!5250339))

(declare-fun m!5250341 () Bool)

(assert (=> bs!846854 m!5250341))

(assert (=> b!4510802 d!1387376))

(declare-fun d!1387378 () Bool)

(assert (=> d!1387378 (contains!13301 (toList!4296 lm!1477) (tuple2!51013 hash!344 lt!1689047))))

(declare-fun lt!1689101 () Unit!93482)

(declare-fun choose!29313 (List!50723 (_ BitVec 64) List!50722) Unit!93482)

(assert (=> d!1387378 (= lt!1689101 (choose!29313 (toList!4296 lm!1477) hash!344 lt!1689047))))

(declare-fun e!2810116 () Bool)

(assert (=> d!1387378 e!2810116))

(declare-fun res!1876322 () Bool)

(assert (=> d!1387378 (=> (not res!1876322) (not e!2810116))))

(declare-fun isStrictlySorted!415 (List!50723) Bool)

(assert (=> d!1387378 (= res!1876322 (isStrictlySorted!415 (toList!4296 lm!1477)))))

(assert (=> d!1387378 (= (lemmaGetValueByKeyImpliesContainsTuple!656 (toList!4296 lm!1477) hash!344 lt!1689047) lt!1689101)))

(declare-fun b!4510842 () Bool)

(assert (=> b!4510842 (= e!2810116 (= (getValueByKey!1060 (toList!4296 lm!1477) hash!344) (Some!11079 lt!1689047)))))

(assert (= (and d!1387378 res!1876322) b!4510842))

(declare-fun m!5250363 () Bool)

(assert (=> d!1387378 m!5250363))

(declare-fun m!5250365 () Bool)

(assert (=> d!1387378 m!5250365))

(declare-fun m!5250367 () Bool)

(assert (=> d!1387378 m!5250367))

(assert (=> b!4510842 m!5250339))

(assert (=> b!4510802 d!1387378))

(declare-fun b!4510852 () Bool)

(declare-fun e!2810122 () List!50722)

(declare-fun e!2810121 () List!50722)

(assert (=> b!4510852 (= e!2810122 e!2810121)))

(declare-fun c!769433 () Bool)

(assert (=> b!4510852 (= c!769433 ((_ is Cons!50598) lt!1689047))))

(declare-fun b!4510854 () Bool)

(assert (=> b!4510854 (= e!2810121 Nil!50598)))

(declare-fun b!4510853 () Bool)

(assert (=> b!4510853 (= e!2810121 (Cons!50598 (h!56435 lt!1689047) (removePairForKey!771 (t!357684 lt!1689047) key!3287)))))

(declare-fun d!1387382 () Bool)

(declare-fun lt!1689104 () List!50722)

(assert (=> d!1387382 (not (containsKey!1732 lt!1689104 key!3287))))

(assert (=> d!1387382 (= lt!1689104 e!2810122)))

(declare-fun c!769434 () Bool)

(assert (=> d!1387382 (= c!769434 (and ((_ is Cons!50598) lt!1689047) (= (_1!28799 (h!56435 lt!1689047)) key!3287)))))

(assert (=> d!1387382 (noDuplicateKeys!1144 lt!1689047)))

(assert (=> d!1387382 (= (removePairForKey!771 lt!1689047 key!3287) lt!1689104)))

(declare-fun b!4510851 () Bool)

(assert (=> b!4510851 (= e!2810122 (t!357684 lt!1689047))))

(assert (= (and d!1387382 c!769434) b!4510851))

(assert (= (and d!1387382 (not c!769434)) b!4510852))

(assert (= (and b!4510852 c!769433) b!4510853))

(assert (= (and b!4510852 (not c!769433)) b!4510854))

(declare-fun m!5250369 () Bool)

(assert (=> b!4510853 m!5250369))

(declare-fun m!5250371 () Bool)

(assert (=> d!1387382 m!5250371))

(declare-fun m!5250373 () Bool)

(assert (=> d!1387382 m!5250373))

(assert (=> b!4510802 d!1387382))

(declare-fun d!1387384 () Bool)

(declare-fun e!2810132 () Bool)

(assert (=> d!1387384 e!2810132))

(declare-fun res!1876325 () Bool)

(assert (=> d!1387384 (=> res!1876325 e!2810132)))

(declare-fun lt!1689120 () Bool)

(assert (=> d!1387384 (= res!1876325 (not lt!1689120))))

(declare-fun lt!1689122 () Bool)

(assert (=> d!1387384 (= lt!1689120 lt!1689122)))

(declare-fun lt!1689123 () Unit!93482)

(declare-fun e!2810131 () Unit!93482)

(assert (=> d!1387384 (= lt!1689123 e!2810131)))

(declare-fun c!769441 () Bool)

(assert (=> d!1387384 (= c!769441 lt!1689122)))

(declare-fun containsKey!1735 (List!50723 (_ BitVec 64)) Bool)

(assert (=> d!1387384 (= lt!1689122 (containsKey!1735 (toList!4296 lm!1477) lt!1689054))))

(assert (=> d!1387384 (= (contains!13300 lm!1477 lt!1689054) lt!1689120)))

(declare-fun b!4510869 () Bool)

(declare-fun lt!1689121 () Unit!93482)

(assert (=> b!4510869 (= e!2810131 lt!1689121)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!964 (List!50723 (_ BitVec 64)) Unit!93482)

(assert (=> b!4510869 (= lt!1689121 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lm!1477) lt!1689054))))

(declare-fun isDefined!8367 (Option!11080) Bool)

(assert (=> b!4510869 (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054))))

(declare-fun b!4510870 () Bool)

(declare-fun Unit!93491 () Unit!93482)

(assert (=> b!4510870 (= e!2810131 Unit!93491)))

(declare-fun b!4510871 () Bool)

(assert (=> b!4510871 (= e!2810132 (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054)))))

(assert (= (and d!1387384 c!769441) b!4510869))

(assert (= (and d!1387384 (not c!769441)) b!4510870))

(assert (= (and d!1387384 (not res!1876325)) b!4510871))

(declare-fun m!5250397 () Bool)

(assert (=> d!1387384 m!5250397))

(declare-fun m!5250399 () Bool)

(assert (=> b!4510869 m!5250399))

(declare-fun m!5250401 () Bool)

(assert (=> b!4510869 m!5250401))

(assert (=> b!4510869 m!5250401))

(declare-fun m!5250403 () Bool)

(assert (=> b!4510869 m!5250403))

(assert (=> b!4510871 m!5250401))

(assert (=> b!4510871 m!5250401))

(assert (=> b!4510871 m!5250403))

(assert (=> b!4510802 d!1387384))

(declare-fun d!1387392 () Bool)

(declare-fun lt!1689134 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8308 (List!50723) (InoxSet tuple2!51012))

(assert (=> d!1387392 (= lt!1689134 (select (content!8308 (toList!4296 lm!1477)) lt!1689062))))

(declare-fun e!2810149 () Bool)

(assert (=> d!1387392 (= lt!1689134 e!2810149)))

(declare-fun res!1876339 () Bool)

(assert (=> d!1387392 (=> (not res!1876339) (not e!2810149))))

(assert (=> d!1387392 (= res!1876339 ((_ is Cons!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387392 (= (contains!13301 (toList!4296 lm!1477) lt!1689062) lt!1689134)))

(declare-fun b!4510891 () Bool)

(declare-fun e!2810150 () Bool)

(assert (=> b!4510891 (= e!2810149 e!2810150)))

(declare-fun res!1876340 () Bool)

(assert (=> b!4510891 (=> res!1876340 e!2810150)))

(assert (=> b!4510891 (= res!1876340 (= (h!56436 (toList!4296 lm!1477)) lt!1689062))))

(declare-fun b!4510892 () Bool)

(assert (=> b!4510892 (= e!2810150 (contains!13301 (t!357685 (toList!4296 lm!1477)) lt!1689062))))

(assert (= (and d!1387392 res!1876339) b!4510891))

(assert (= (and b!4510891 (not res!1876340)) b!4510892))

(declare-fun m!5250433 () Bool)

(assert (=> d!1387392 m!5250433))

(declare-fun m!5250435 () Bool)

(assert (=> d!1387392 m!5250435))

(assert (=> b!4510892 m!5250321))

(assert (=> b!4510802 d!1387392))

(declare-fun d!1387400 () Bool)

(declare-fun dynLambda!21139 (Int tuple2!51012) Bool)

(assert (=> d!1387400 (dynLambda!21139 lambda!170537 lt!1689062)))

(declare-fun lt!1689153 () Unit!93482)

(declare-fun choose!29315 (List!50723 Int tuple2!51012) Unit!93482)

(assert (=> d!1387400 (= lt!1689153 (choose!29315 (toList!4296 lm!1477) lambda!170537 lt!1689062))))

(declare-fun e!2810157 () Bool)

(assert (=> d!1387400 e!2810157))

(declare-fun res!1876351 () Bool)

(assert (=> d!1387400 (=> (not res!1876351) (not e!2810157))))

(assert (=> d!1387400 (= res!1876351 (forall!10223 (toList!4296 lm!1477) lambda!170537))))

(assert (=> d!1387400 (= (forallContained!2475 (toList!4296 lm!1477) lambda!170537 lt!1689062) lt!1689153)))

(declare-fun b!4510903 () Bool)

(assert (=> b!4510903 (= e!2810157 (contains!13301 (toList!4296 lm!1477) lt!1689062))))

(assert (= (and d!1387400 res!1876351) b!4510903))

(declare-fun b_lambda!153753 () Bool)

(assert (=> (not b_lambda!153753) (not d!1387400)))

(declare-fun m!5250461 () Bool)

(assert (=> d!1387400 m!5250461))

(declare-fun m!5250463 () Bool)

(assert (=> d!1387400 m!5250463))

(assert (=> d!1387400 m!5250259))

(assert (=> b!4510903 m!5250279))

(assert (=> b!4510802 d!1387400))

(declare-fun bs!846864 () Bool)

(declare-fun d!1387406 () Bool)

(assert (= bs!846864 (and d!1387406 start!445924)))

(declare-fun lambda!170553 () Int)

(assert (=> bs!846864 (not (= lambda!170553 lambda!170537))))

(declare-fun bs!846865 () Bool)

(assert (= bs!846865 (and d!1387406 d!1387370)))

(assert (=> bs!846865 (not (= lambda!170553 lambda!170540))))

(declare-fun bs!846866 () Bool)

(assert (= bs!846866 (and d!1387406 d!1387372)))

(assert (=> bs!846866 (not (= lambda!170553 lambda!170543))))

(assert (=> d!1387406 true))

(assert (=> d!1387406 (= (allKeysSameHashInMap!1251 lm!1477 hashF!1107) (forall!10223 (toList!4296 lm!1477) lambda!170553))))

(declare-fun bs!846867 () Bool)

(assert (= bs!846867 d!1387406))

(declare-fun m!5250471 () Bool)

(assert (=> bs!846867 m!5250471))

(assert (=> b!4510791 d!1387406))

(declare-fun d!1387412 () Bool)

(declare-fun lt!1689162 () Bool)

(assert (=> d!1387412 (= lt!1689162 (select (content!8308 (t!357685 (toList!4296 lm!1477))) lt!1689062))))

(declare-fun e!2810168 () Bool)

(assert (=> d!1387412 (= lt!1689162 e!2810168)))

(declare-fun res!1876360 () Bool)

(assert (=> d!1387412 (=> (not res!1876360) (not e!2810168))))

(assert (=> d!1387412 (= res!1876360 ((_ is Cons!50599) (t!357685 (toList!4296 lm!1477))))))

(assert (=> d!1387412 (= (contains!13301 (t!357685 (toList!4296 lm!1477)) lt!1689062) lt!1689162)))

(declare-fun b!4510918 () Bool)

(declare-fun e!2810169 () Bool)

(assert (=> b!4510918 (= e!2810168 e!2810169)))

(declare-fun res!1876361 () Bool)

(assert (=> b!4510918 (=> res!1876361 e!2810169)))

(assert (=> b!4510918 (= res!1876361 (= (h!56436 (t!357685 (toList!4296 lm!1477))) lt!1689062))))

(declare-fun b!4510919 () Bool)

(assert (=> b!4510919 (= e!2810169 (contains!13301 (t!357685 (t!357685 (toList!4296 lm!1477))) lt!1689062))))

(assert (= (and d!1387412 res!1876360) b!4510918))

(assert (= (and b!4510918 (not res!1876361)) b!4510919))

(declare-fun m!5250473 () Bool)

(assert (=> d!1387412 m!5250473))

(declare-fun m!5250475 () Bool)

(assert (=> d!1387412 m!5250475))

(declare-fun m!5250477 () Bool)

(assert (=> b!4510919 m!5250477))

(assert (=> b!4510801 d!1387412))

(declare-fun d!1387414 () Bool)

(declare-fun e!2810179 () Bool)

(assert (=> d!1387414 e!2810179))

(declare-fun res!1876373 () Bool)

(assert (=> d!1387414 (=> (not res!1876373) (not e!2810179))))

(declare-fun lt!1689186 () ListLongMap!2927)

(assert (=> d!1387414 (= res!1876373 (contains!13300 lt!1689186 (_1!28800 lt!1689059)))))

(declare-fun lt!1689185 () List!50723)

(assert (=> d!1387414 (= lt!1689186 (ListLongMap!2928 lt!1689185))))

(declare-fun lt!1689184 () Unit!93482)

(declare-fun lt!1689183 () Unit!93482)

(assert (=> d!1387414 (= lt!1689184 lt!1689183)))

(assert (=> d!1387414 (= (getValueByKey!1060 lt!1689185 (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059)))))

(declare-fun lemmaContainsTupThenGetReturnValue!654 (List!50723 (_ BitVec 64) List!50722) Unit!93482)

(assert (=> d!1387414 (= lt!1689183 (lemmaContainsTupThenGetReturnValue!654 lt!1689185 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(declare-fun insertStrictlySorted!392 (List!50723 (_ BitVec 64) List!50722) List!50723)

(assert (=> d!1387414 (= lt!1689185 (insertStrictlySorted!392 (toList!4296 lm!1477) (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(assert (=> d!1387414 (= (+!1506 lm!1477 lt!1689059) lt!1689186)))

(declare-fun b!4510934 () Bool)

(declare-fun res!1876372 () Bool)

(assert (=> b!4510934 (=> (not res!1876372) (not e!2810179))))

(assert (=> b!4510934 (= res!1876372 (= (getValueByKey!1060 (toList!4296 lt!1689186) (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059))))))

(declare-fun b!4510935 () Bool)

(assert (=> b!4510935 (= e!2810179 (contains!13301 (toList!4296 lt!1689186) lt!1689059))))

(assert (= (and d!1387414 res!1876373) b!4510934))

(assert (= (and b!4510934 res!1876372) b!4510935))

(declare-fun m!5250521 () Bool)

(assert (=> d!1387414 m!5250521))

(declare-fun m!5250523 () Bool)

(assert (=> d!1387414 m!5250523))

(declare-fun m!5250525 () Bool)

(assert (=> d!1387414 m!5250525))

(declare-fun m!5250527 () Bool)

(assert (=> d!1387414 m!5250527))

(declare-fun m!5250529 () Bool)

(assert (=> b!4510934 m!5250529))

(declare-fun m!5250531 () Bool)

(assert (=> b!4510935 m!5250531))

(assert (=> b!4510800 d!1387414))

(declare-fun d!1387426 () Bool)

(declare-fun e!2810180 () Bool)

(assert (=> d!1387426 e!2810180))

(declare-fun res!1876375 () Bool)

(assert (=> d!1387426 (=> (not res!1876375) (not e!2810180))))

(declare-fun lt!1689190 () ListLongMap!2927)

(assert (=> d!1387426 (= res!1876375 (contains!13300 lt!1689190 (_1!28800 lt!1689065)))))

(declare-fun lt!1689189 () List!50723)

(assert (=> d!1387426 (= lt!1689190 (ListLongMap!2928 lt!1689189))))

(declare-fun lt!1689188 () Unit!93482)

(declare-fun lt!1689187 () Unit!93482)

(assert (=> d!1387426 (= lt!1689188 lt!1689187)))

(assert (=> d!1387426 (= (getValueByKey!1060 lt!1689189 (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065)))))

(assert (=> d!1387426 (= lt!1689187 (lemmaContainsTupThenGetReturnValue!654 lt!1689189 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(assert (=> d!1387426 (= lt!1689189 (insertStrictlySorted!392 (toList!4296 lt!1689063) (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(assert (=> d!1387426 (= (+!1506 lt!1689063 lt!1689065) lt!1689190)))

(declare-fun b!4510936 () Bool)

(declare-fun res!1876374 () Bool)

(assert (=> b!4510936 (=> (not res!1876374) (not e!2810180))))

(assert (=> b!4510936 (= res!1876374 (= (getValueByKey!1060 (toList!4296 lt!1689190) (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065))))))

(declare-fun b!4510937 () Bool)

(assert (=> b!4510937 (= e!2810180 (contains!13301 (toList!4296 lt!1689190) lt!1689065))))

(assert (= (and d!1387426 res!1876375) b!4510936))

(assert (= (and b!4510936 res!1876374) b!4510937))

(declare-fun m!5250533 () Bool)

(assert (=> d!1387426 m!5250533))

(declare-fun m!5250535 () Bool)

(assert (=> d!1387426 m!5250535))

(declare-fun m!5250537 () Bool)

(assert (=> d!1387426 m!5250537))

(declare-fun m!5250539 () Bool)

(assert (=> d!1387426 m!5250539))

(declare-fun m!5250541 () Bool)

(assert (=> b!4510936 m!5250541))

(declare-fun m!5250543 () Bool)

(assert (=> b!4510937 m!5250543))

(assert (=> b!4510800 d!1387426))

(declare-fun bs!846890 () Bool)

(declare-fun d!1387428 () Bool)

(assert (= bs!846890 (and d!1387428 start!445924)))

(declare-fun lambda!170561 () Int)

(assert (=> bs!846890 (= lambda!170561 lambda!170537)))

(declare-fun bs!846891 () Bool)

(assert (= bs!846891 (and d!1387428 d!1387370)))

(assert (=> bs!846891 (= lambda!170561 lambda!170540)))

(declare-fun bs!846892 () Bool)

(assert (= bs!846892 (and d!1387428 d!1387372)))

(assert (=> bs!846892 (= lambda!170561 lambda!170543)))

(declare-fun bs!846893 () Bool)

(assert (= bs!846893 (and d!1387428 d!1387406)))

(assert (=> bs!846893 (not (= lambda!170561 lambda!170553))))

(declare-fun lt!1689201 () ListMap!3557)

(declare-fun invariantList!1001 (List!50722) Bool)

(assert (=> d!1387428 (invariantList!1001 (toList!4295 lt!1689201))))

(declare-fun e!2810185 () ListMap!3557)

(assert (=> d!1387428 (= lt!1689201 e!2810185)))

(declare-fun c!769452 () Bool)

(assert (=> d!1387428 (= c!769452 ((_ is Cons!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1387428 (forall!10223 (toList!4296 lt!1689057) lambda!170561)))

(assert (=> d!1387428 (= (extractMap!1200 (toList!4296 lt!1689057)) lt!1689201)))

(declare-fun b!4510946 () Bool)

(assert (=> b!4510946 (= e!2810185 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))))))

(declare-fun b!4510947 () Bool)

(assert (=> b!4510947 (= e!2810185 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387428 c!769452) b!4510946))

(assert (= (and d!1387428 (not c!769452)) b!4510947))

(declare-fun m!5250589 () Bool)

(assert (=> d!1387428 m!5250589))

(declare-fun m!5250591 () Bool)

(assert (=> d!1387428 m!5250591))

(declare-fun m!5250593 () Bool)

(assert (=> b!4510946 m!5250593))

(assert (=> b!4510946 m!5250593))

(declare-fun m!5250595 () Bool)

(assert (=> b!4510946 m!5250595))

(assert (=> b!4510789 d!1387428))

(declare-fun b!4510966 () Bool)

(declare-fun e!2810201 () Unit!93482)

(declare-fun lt!1689218 () Unit!93482)

(assert (=> b!4510966 (= e!2810201 lt!1689218)))

(declare-fun lt!1689224 () Unit!93482)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!965 (List!50722 K!12000) Unit!93482)

(assert (=> b!4510966 (= lt!1689224 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11081 0))(
  ( (None!11080) (Some!11080 (v!44632 V!12246)) )
))
(declare-fun isDefined!8368 (Option!11081) Bool)

(declare-fun getValueByKey!1061 (List!50722 K!12000) Option!11081)

(assert (=> b!4510966 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun lt!1689222 () Unit!93482)

(assert (=> b!4510966 (= lt!1689222 lt!1689224)))

(declare-fun lemmaInListThenGetKeysListContains!445 (List!50722 K!12000) Unit!93482)

(assert (=> b!4510966 (= lt!1689218 (lemmaInListThenGetKeysListContains!445 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun call!314098 () Bool)

(assert (=> b!4510966 call!314098))

(declare-fun b!4510967 () Bool)

(declare-datatypes ((List!50725 0))(
  ( (Nil!50601) (Cons!50601 (h!56440 K!12000) (t!357687 List!50725)) )
))
(declare-fun e!2810199 () List!50725)

(declare-fun keys!17562 (ListMap!3557) List!50725)

(assert (=> b!4510967 (= e!2810199 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun b!4510968 () Bool)

(declare-fun e!2810200 () Unit!93482)

(declare-fun Unit!93492 () Unit!93482)

(assert (=> b!4510968 (= e!2810200 Unit!93492)))

(declare-fun b!4510969 () Bool)

(declare-fun getKeysList!449 (List!50722) List!50725)

(assert (=> b!4510969 (= e!2810199 (getKeysList!449 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun b!4510970 () Bool)

(declare-fun e!2810203 () Bool)

(declare-fun contains!13303 (List!50725 K!12000) Bool)

(assert (=> b!4510970 (= e!2810203 (not (contains!13303 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287)))))

(declare-fun b!4510971 () Bool)

(declare-fun e!2810202 () Bool)

(declare-fun e!2810198 () Bool)

(assert (=> b!4510971 (= e!2810202 e!2810198)))

(declare-fun res!1876385 () Bool)

(assert (=> b!4510971 (=> (not res!1876385) (not e!2810198))))

(assert (=> b!4510971 (= res!1876385 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287)))))

(declare-fun b!4510972 () Bool)

(assert (=> b!4510972 (= e!2810201 e!2810200)))

(declare-fun c!769461 () Bool)

(assert (=> b!4510972 (= c!769461 call!314098)))

(declare-fun b!4510973 () Bool)

(assert (=> b!4510973 false))

(declare-fun lt!1689219 () Unit!93482)

(declare-fun lt!1689220 () Unit!93482)

(assert (=> b!4510973 (= lt!1689219 lt!1689220)))

(declare-fun containsKey!1736 (List!50722 K!12000) Bool)

(assert (=> b!4510973 (containsKey!1736 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!448 (List!50722 K!12000) Unit!93482)

(assert (=> b!4510973 (= lt!1689220 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun Unit!93493 () Unit!93482)

(assert (=> b!4510973 (= e!2810200 Unit!93493)))

(declare-fun b!4510974 () Bool)

(assert (=> b!4510974 (= e!2810198 (contains!13303 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun d!1387446 () Bool)

(assert (=> d!1387446 e!2810202))

(declare-fun res!1876384 () Bool)

(assert (=> d!1387446 (=> res!1876384 e!2810202)))

(assert (=> d!1387446 (= res!1876384 e!2810203)))

(declare-fun res!1876386 () Bool)

(assert (=> d!1387446 (=> (not res!1876386) (not e!2810203))))

(declare-fun lt!1689225 () Bool)

(assert (=> d!1387446 (= res!1876386 (not lt!1689225))))

(declare-fun lt!1689221 () Bool)

(assert (=> d!1387446 (= lt!1689225 lt!1689221)))

(declare-fun lt!1689223 () Unit!93482)

(assert (=> d!1387446 (= lt!1689223 e!2810201)))

(declare-fun c!769459 () Bool)

(assert (=> d!1387446 (= c!769459 lt!1689221)))

(assert (=> d!1387446 (= lt!1689221 (containsKey!1736 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(assert (=> d!1387446 (= (contains!13299 (extractMap!1200 (t!357685 (toList!4296 lm!1477))) key!3287) lt!1689225)))

(declare-fun bm!314093 () Bool)

(assert (=> bm!314093 (= call!314098 (contains!13303 e!2810199 key!3287))))

(declare-fun c!769460 () Bool)

(assert (=> bm!314093 (= c!769460 c!769459)))

(assert (= (and d!1387446 c!769459) b!4510966))

(assert (= (and d!1387446 (not c!769459)) b!4510972))

(assert (= (and b!4510972 c!769461) b!4510973))

(assert (= (and b!4510972 (not c!769461)) b!4510968))

(assert (= (or b!4510966 b!4510972) bm!314093))

(assert (= (and bm!314093 c!769460) b!4510969))

(assert (= (and bm!314093 (not c!769460)) b!4510967))

(assert (= (and d!1387446 res!1876386) b!4510970))

(assert (= (and d!1387446 (not res!1876384)) b!4510971))

(assert (= (and b!4510971 res!1876385) b!4510974))

(declare-fun m!5250597 () Bool)

(assert (=> d!1387446 m!5250597))

(assert (=> b!4510974 m!5250243))

(declare-fun m!5250599 () Bool)

(assert (=> b!4510974 m!5250599))

(assert (=> b!4510974 m!5250599))

(declare-fun m!5250601 () Bool)

(assert (=> b!4510974 m!5250601))

(assert (=> b!4510973 m!5250597))

(declare-fun m!5250603 () Bool)

(assert (=> b!4510973 m!5250603))

(declare-fun m!5250605 () Bool)

(assert (=> b!4510966 m!5250605))

(declare-fun m!5250607 () Bool)

(assert (=> b!4510966 m!5250607))

(assert (=> b!4510966 m!5250607))

(declare-fun m!5250609 () Bool)

(assert (=> b!4510966 m!5250609))

(declare-fun m!5250611 () Bool)

(assert (=> b!4510966 m!5250611))

(assert (=> b!4510967 m!5250243))

(assert (=> b!4510967 m!5250599))

(declare-fun m!5250613 () Bool)

(assert (=> b!4510969 m!5250613))

(assert (=> b!4510971 m!5250607))

(assert (=> b!4510971 m!5250607))

(assert (=> b!4510971 m!5250609))

(assert (=> b!4510970 m!5250243))

(assert (=> b!4510970 m!5250599))

(assert (=> b!4510970 m!5250599))

(assert (=> b!4510970 m!5250601))

(declare-fun m!5250615 () Bool)

(assert (=> bm!314093 m!5250615))

(assert (=> b!4510789 d!1387446))

(declare-fun bs!846894 () Bool)

(declare-fun d!1387448 () Bool)

(assert (= bs!846894 (and d!1387448 d!1387406)))

(declare-fun lambda!170562 () Int)

(assert (=> bs!846894 (not (= lambda!170562 lambda!170553))))

(declare-fun bs!846895 () Bool)

(assert (= bs!846895 (and d!1387448 start!445924)))

(assert (=> bs!846895 (= lambda!170562 lambda!170537)))

(declare-fun bs!846896 () Bool)

(assert (= bs!846896 (and d!1387448 d!1387370)))

(assert (=> bs!846896 (= lambda!170562 lambda!170540)))

(declare-fun bs!846897 () Bool)

(assert (= bs!846897 (and d!1387448 d!1387428)))

(assert (=> bs!846897 (= lambda!170562 lambda!170561)))

(declare-fun bs!846898 () Bool)

(assert (= bs!846898 (and d!1387448 d!1387372)))

(assert (=> bs!846898 (= lambda!170562 lambda!170543)))

(declare-fun lt!1689226 () ListMap!3557)

(assert (=> d!1387448 (invariantList!1001 (toList!4295 lt!1689226))))

(declare-fun e!2810204 () ListMap!3557)

(assert (=> d!1387448 (= lt!1689226 e!2810204)))

(declare-fun c!769462 () Bool)

(assert (=> d!1387448 (= c!769462 ((_ is Cons!50599) (t!357685 (toList!4296 lm!1477))))))

(assert (=> d!1387448 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170562)))

(assert (=> d!1387448 (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689226)))

(declare-fun b!4510975 () Bool)

(assert (=> b!4510975 (= e!2810204 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun b!4510976 () Bool)

(assert (=> b!4510976 (= e!2810204 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387448 c!769462) b!4510975))

(assert (= (and d!1387448 (not c!769462)) b!4510976))

(declare-fun m!5250617 () Bool)

(assert (=> d!1387448 m!5250617))

(declare-fun m!5250619 () Bool)

(assert (=> d!1387448 m!5250619))

(declare-fun m!5250621 () Bool)

(assert (=> b!4510975 m!5250621))

(assert (=> b!4510975 m!5250621))

(declare-fun m!5250623 () Bool)

(assert (=> b!4510975 m!5250623))

(assert (=> b!4510789 d!1387448))

(declare-fun bs!846899 () Bool)

(declare-fun d!1387450 () Bool)

(assert (= bs!846899 (and d!1387450 d!1387406)))

(declare-fun lambda!170565 () Int)

(assert (=> bs!846899 (not (= lambda!170565 lambda!170553))))

(declare-fun bs!846900 () Bool)

(assert (= bs!846900 (and d!1387450 start!445924)))

(assert (=> bs!846900 (= lambda!170565 lambda!170537)))

(declare-fun bs!846901 () Bool)

(assert (= bs!846901 (and d!1387450 d!1387370)))

(assert (=> bs!846901 (= lambda!170565 lambda!170540)))

(declare-fun bs!846902 () Bool)

(assert (= bs!846902 (and d!1387450 d!1387428)))

(assert (=> bs!846902 (= lambda!170565 lambda!170561)))

(declare-fun bs!846903 () Bool)

(assert (= bs!846903 (and d!1387450 d!1387448)))

(assert (=> bs!846903 (= lambda!170565 lambda!170562)))

(declare-fun bs!846904 () Bool)

(assert (= bs!846904 (and d!1387450 d!1387372)))

(assert (=> bs!846904 (= lambda!170565 lambda!170543)))

(assert (=> d!1387450 (contains!13299 (extractMap!1200 (toList!4296 lt!1689057)) key!3287)))

(declare-fun lt!1689229 () Unit!93482)

(declare-fun choose!29316 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> d!1387450 (= lt!1689229 (choose!29316 lt!1689057 key!3287 hashF!1107))))

(assert (=> d!1387450 (forall!10223 (toList!4296 lt!1689057) lambda!170565)))

(assert (=> d!1387450 (= (lemmaListContainsThenExtractedMapContains!114 lt!1689057 key!3287 hashF!1107) lt!1689229)))

(declare-fun bs!846905 () Bool)

(assert (= bs!846905 d!1387450))

(assert (=> bs!846905 m!5250241))

(assert (=> bs!846905 m!5250241))

(declare-fun m!5250625 () Bool)

(assert (=> bs!846905 m!5250625))

(declare-fun m!5250627 () Bool)

(assert (=> bs!846905 m!5250627))

(declare-fun m!5250629 () Bool)

(assert (=> bs!846905 m!5250629))

(assert (=> b!4510789 d!1387450))

(declare-fun b!4510977 () Bool)

(declare-fun e!2810208 () Unit!93482)

(declare-fun lt!1689230 () Unit!93482)

(assert (=> b!4510977 (= e!2810208 lt!1689230)))

(declare-fun lt!1689236 () Unit!93482)

(assert (=> b!4510977 (= lt!1689236 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689046) key!3287))))

(assert (=> b!4510977 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))))

(declare-fun lt!1689234 () Unit!93482)

(assert (=> b!4510977 (= lt!1689234 lt!1689236)))

(assert (=> b!4510977 (= lt!1689230 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689046) key!3287))))

(declare-fun call!314099 () Bool)

(assert (=> b!4510977 call!314099))

(declare-fun b!4510978 () Bool)

(declare-fun e!2810206 () List!50725)

(assert (=> b!4510978 (= e!2810206 (keys!17562 lt!1689046))))

(declare-fun b!4510979 () Bool)

(declare-fun e!2810207 () Unit!93482)

(declare-fun Unit!93505 () Unit!93482)

(assert (=> b!4510979 (= e!2810207 Unit!93505)))

(declare-fun b!4510980 () Bool)

(assert (=> b!4510980 (= e!2810206 (getKeysList!449 (toList!4295 lt!1689046)))))

(declare-fun b!4510981 () Bool)

(declare-fun e!2810210 () Bool)

(assert (=> b!4510981 (= e!2810210 (not (contains!13303 (keys!17562 lt!1689046) key!3287)))))

(declare-fun b!4510982 () Bool)

(declare-fun e!2810209 () Bool)

(declare-fun e!2810205 () Bool)

(assert (=> b!4510982 (= e!2810209 e!2810205)))

(declare-fun res!1876388 () Bool)

(assert (=> b!4510982 (=> (not res!1876388) (not e!2810205))))

(assert (=> b!4510982 (= res!1876388 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287)))))

(declare-fun b!4510983 () Bool)

(assert (=> b!4510983 (= e!2810208 e!2810207)))

(declare-fun c!769465 () Bool)

(assert (=> b!4510983 (= c!769465 call!314099)))

(declare-fun b!4510984 () Bool)

(assert (=> b!4510984 false))

(declare-fun lt!1689231 () Unit!93482)

(declare-fun lt!1689232 () Unit!93482)

(assert (=> b!4510984 (= lt!1689231 lt!1689232)))

(assert (=> b!4510984 (containsKey!1736 (toList!4295 lt!1689046) key!3287)))

(assert (=> b!4510984 (= lt!1689232 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689046) key!3287))))

(declare-fun Unit!93506 () Unit!93482)

(assert (=> b!4510984 (= e!2810207 Unit!93506)))

(declare-fun b!4510985 () Bool)

(assert (=> b!4510985 (= e!2810205 (contains!13303 (keys!17562 lt!1689046) key!3287))))

(declare-fun d!1387452 () Bool)

(assert (=> d!1387452 e!2810209))

(declare-fun res!1876387 () Bool)

(assert (=> d!1387452 (=> res!1876387 e!2810209)))

(assert (=> d!1387452 (= res!1876387 e!2810210)))

(declare-fun res!1876389 () Bool)

(assert (=> d!1387452 (=> (not res!1876389) (not e!2810210))))

(declare-fun lt!1689237 () Bool)

(assert (=> d!1387452 (= res!1876389 (not lt!1689237))))

(declare-fun lt!1689233 () Bool)

(assert (=> d!1387452 (= lt!1689237 lt!1689233)))

(declare-fun lt!1689235 () Unit!93482)

(assert (=> d!1387452 (= lt!1689235 e!2810208)))

(declare-fun c!769463 () Bool)

(assert (=> d!1387452 (= c!769463 lt!1689233)))

(assert (=> d!1387452 (= lt!1689233 (containsKey!1736 (toList!4295 lt!1689046) key!3287))))

(assert (=> d!1387452 (= (contains!13299 lt!1689046 key!3287) lt!1689237)))

(declare-fun bm!314094 () Bool)

(assert (=> bm!314094 (= call!314099 (contains!13303 e!2810206 key!3287))))

(declare-fun c!769464 () Bool)

(assert (=> bm!314094 (= c!769464 c!769463)))

(assert (= (and d!1387452 c!769463) b!4510977))

(assert (= (and d!1387452 (not c!769463)) b!4510983))

(assert (= (and b!4510983 c!769465) b!4510984))

(assert (= (and b!4510983 (not c!769465)) b!4510979))

(assert (= (or b!4510977 b!4510983) bm!314094))

(assert (= (and bm!314094 c!769464) b!4510980))

(assert (= (and bm!314094 (not c!769464)) b!4510978))

(assert (= (and d!1387452 res!1876389) b!4510981))

(assert (= (and d!1387452 (not res!1876387)) b!4510982))

(assert (= (and b!4510982 res!1876388) b!4510985))

(declare-fun m!5250631 () Bool)

(assert (=> d!1387452 m!5250631))

(declare-fun m!5250633 () Bool)

(assert (=> b!4510985 m!5250633))

(assert (=> b!4510985 m!5250633))

(declare-fun m!5250635 () Bool)

(assert (=> b!4510985 m!5250635))

(assert (=> b!4510984 m!5250631))

(declare-fun m!5250637 () Bool)

(assert (=> b!4510984 m!5250637))

(declare-fun m!5250639 () Bool)

(assert (=> b!4510977 m!5250639))

(declare-fun m!5250641 () Bool)

(assert (=> b!4510977 m!5250641))

(assert (=> b!4510977 m!5250641))

(declare-fun m!5250643 () Bool)

(assert (=> b!4510977 m!5250643))

(declare-fun m!5250645 () Bool)

(assert (=> b!4510977 m!5250645))

(assert (=> b!4510978 m!5250633))

(declare-fun m!5250647 () Bool)

(assert (=> b!4510980 m!5250647))

(assert (=> b!4510982 m!5250641))

(assert (=> b!4510982 m!5250641))

(assert (=> b!4510982 m!5250643))

(assert (=> b!4510981 m!5250633))

(assert (=> b!4510981 m!5250633))

(assert (=> b!4510981 m!5250635))

(declare-fun m!5250649 () Bool)

(assert (=> bm!314094 m!5250649))

(assert (=> b!4510789 d!1387452))

(declare-fun d!1387454 () Bool)

(declare-fun hash!2754 (Hashable!5539 K!12000) (_ BitVec 64))

(assert (=> d!1387454 (= (hash!2751 hashF!1107 key!3287) (hash!2754 hashF!1107 key!3287))))

(declare-fun bs!846906 () Bool)

(assert (= bs!846906 d!1387454))

(declare-fun m!5250651 () Bool)

(assert (=> bs!846906 m!5250651))

(assert (=> b!4510799 d!1387454))

(declare-fun d!1387456 () Bool)

(declare-fun content!8309 (List!50722) (InoxSet tuple2!51010))

(assert (=> d!1387456 (= (eq!601 lt!1689055 lt!1689049) (= (content!8309 (toList!4295 lt!1689055)) (content!8309 (toList!4295 lt!1689049))))))

(declare-fun bs!846907 () Bool)

(assert (= bs!846907 d!1387456))

(declare-fun m!5250653 () Bool)

(assert (=> bs!846907 m!5250653))

(declare-fun m!5250655 () Bool)

(assert (=> bs!846907 m!5250655))

(assert (=> b!4510788 d!1387456))

(declare-fun b!4511070 () Bool)

(assert (=> b!4511070 true))

(declare-fun bs!846997 () Bool)

(declare-fun b!4511066 () Bool)

(assert (= bs!846997 (and b!4511066 b!4511070)))

(declare-fun lambda!170648 () Int)

(declare-fun lambda!170647 () Int)

(assert (=> bs!846997 (= lambda!170648 lambda!170647)))

(assert (=> b!4511066 true))

(declare-fun lt!1689409 () ListMap!3557)

(declare-fun lambda!170649 () Int)

(assert (=> bs!846997 (= (= lt!1689409 lt!1689058) (= lambda!170649 lambda!170647))))

(assert (=> b!4511066 (= (= lt!1689409 lt!1689058) (= lambda!170649 lambda!170648))))

(assert (=> b!4511066 true))

(declare-fun bs!846998 () Bool)

(declare-fun d!1387458 () Bool)

(assert (= bs!846998 (and d!1387458 b!4511070)))

(declare-fun lt!1689398 () ListMap!3557)

(declare-fun lambda!170650 () Int)

(assert (=> bs!846998 (= (= lt!1689398 lt!1689058) (= lambda!170650 lambda!170647))))

(declare-fun bs!846999 () Bool)

(assert (= bs!846999 (and d!1387458 b!4511066)))

(assert (=> bs!846999 (= (= lt!1689398 lt!1689058) (= lambda!170650 lambda!170648))))

(assert (=> bs!846999 (= (= lt!1689398 lt!1689409) (= lambda!170650 lambda!170649))))

(assert (=> d!1387458 true))

(declare-fun bm!314114 () Bool)

(declare-fun call!314119 () Unit!93482)

(declare-fun lemmaContainsAllItsOwnKeys!322 (ListMap!3557) Unit!93482)

(assert (=> bm!314114 (= call!314119 (lemmaContainsAllItsOwnKeys!322 lt!1689058))))

(declare-fun c!769477 () Bool)

(declare-fun bm!314115 () Bool)

(declare-fun call!314120 () Bool)

(declare-fun forall!10225 (List!50722 Int) Bool)

(assert (=> bm!314115 (= call!314120 (forall!10225 (toList!4295 lt!1689058) (ite c!769477 lambda!170647 lambda!170649)))))

(declare-fun e!2810267 () ListMap!3557)

(assert (=> b!4511066 (= e!2810267 lt!1689409)))

(declare-fun lt!1689394 () ListMap!3557)

(declare-fun +!1508 (ListMap!3557 tuple2!51010) ListMap!3557)

(assert (=> b!4511066 (= lt!1689394 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511066 (= lt!1689409 (addToMapMapFromBucket!671 (t!357684 (_2!28800 lt!1689065)) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689406 () Unit!93482)

(assert (=> b!4511066 (= lt!1689406 call!314119)))

(declare-fun call!314121 () Bool)

(assert (=> b!4511066 call!314121))

(declare-fun lt!1689402 () Unit!93482)

(assert (=> b!4511066 (= lt!1689402 lt!1689406)))

(assert (=> b!4511066 (forall!10225 (toList!4295 lt!1689394) lambda!170649)))

(declare-fun lt!1689395 () Unit!93482)

(declare-fun Unit!93507 () Unit!93482)

(assert (=> b!4511066 (= lt!1689395 Unit!93507)))

(assert (=> b!4511066 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170649)))

(declare-fun lt!1689405 () Unit!93482)

(declare-fun Unit!93508 () Unit!93482)

(assert (=> b!4511066 (= lt!1689405 Unit!93508)))

(declare-fun lt!1689412 () Unit!93482)

(declare-fun Unit!93509 () Unit!93482)

(assert (=> b!4511066 (= lt!1689412 Unit!93509)))

(declare-fun lt!1689401 () Unit!93482)

(declare-fun forallContained!2477 (List!50722 Int tuple2!51010) Unit!93482)

(assert (=> b!4511066 (= lt!1689401 (forallContained!2477 (toList!4295 lt!1689394) lambda!170649 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511066 (contains!13299 lt!1689394 (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689413 () Unit!93482)

(declare-fun Unit!93510 () Unit!93482)

(assert (=> b!4511066 (= lt!1689413 Unit!93510)))

(assert (=> b!4511066 (contains!13299 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689408 () Unit!93482)

(declare-fun Unit!93511 () Unit!93482)

(assert (=> b!4511066 (= lt!1689408 Unit!93511)))

(assert (=> b!4511066 (forall!10225 (_2!28800 lt!1689065) lambda!170649)))

(declare-fun lt!1689403 () Unit!93482)

(declare-fun Unit!93512 () Unit!93482)

(assert (=> b!4511066 (= lt!1689403 Unit!93512)))

(assert (=> b!4511066 (forall!10225 (toList!4295 lt!1689394) lambda!170649)))

(declare-fun lt!1689411 () Unit!93482)

(declare-fun Unit!93513 () Unit!93482)

(assert (=> b!4511066 (= lt!1689411 Unit!93513)))

(declare-fun lt!1689397 () Unit!93482)

(declare-fun Unit!93514 () Unit!93482)

(assert (=> b!4511066 (= lt!1689397 Unit!93514)))

(declare-fun lt!1689400 () Unit!93482)

(declare-fun addForallContainsKeyThenBeforeAdding!322 (ListMap!3557 ListMap!3557 K!12000 V!12246) Unit!93482)

(assert (=> b!4511066 (= lt!1689400 (addForallContainsKeyThenBeforeAdding!322 lt!1689058 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511066 call!314120))

(declare-fun lt!1689393 () Unit!93482)

(assert (=> b!4511066 (= lt!1689393 lt!1689400)))

(assert (=> b!4511066 (forall!10225 (toList!4295 lt!1689058) lambda!170649)))

(declare-fun lt!1689399 () Unit!93482)

(declare-fun Unit!93515 () Unit!93482)

(assert (=> b!4511066 (= lt!1689399 Unit!93515)))

(declare-fun res!1876440 () Bool)

(assert (=> b!4511066 (= res!1876440 (forall!10225 (_2!28800 lt!1689065) lambda!170649))))

(declare-fun e!2810268 () Bool)

(assert (=> b!4511066 (=> (not res!1876440) (not e!2810268))))

(assert (=> b!4511066 e!2810268))

(declare-fun lt!1689410 () Unit!93482)

(declare-fun Unit!93516 () Unit!93482)

(assert (=> b!4511066 (= lt!1689410 Unit!93516)))

(declare-fun b!4511067 () Bool)

(declare-fun e!2810266 () Bool)

(assert (=> b!4511067 (= e!2810266 (invariantList!1001 (toList!4295 lt!1689398)))))

(declare-fun b!4511068 () Bool)

(declare-fun res!1876441 () Bool)

(assert (=> b!4511068 (=> (not res!1876441) (not e!2810266))))

(assert (=> b!4511068 (= res!1876441 (forall!10225 (toList!4295 lt!1689058) lambda!170650))))

(declare-fun b!4511069 () Bool)

(assert (=> b!4511069 (= e!2810268 (forall!10225 (toList!4295 lt!1689058) lambda!170649))))

(assert (=> b!4511070 (= e!2810267 lt!1689058)))

(declare-fun lt!1689404 () Unit!93482)

(assert (=> b!4511070 (= lt!1689404 call!314119)))

(assert (=> b!4511070 call!314121))

(declare-fun lt!1689407 () Unit!93482)

(assert (=> b!4511070 (= lt!1689407 lt!1689404)))

(assert (=> b!4511070 call!314120))

(declare-fun lt!1689396 () Unit!93482)

(declare-fun Unit!93517 () Unit!93482)

(assert (=> b!4511070 (= lt!1689396 Unit!93517)))

(assert (=> d!1387458 e!2810266))

(declare-fun res!1876442 () Bool)

(assert (=> d!1387458 (=> (not res!1876442) (not e!2810266))))

(assert (=> d!1387458 (= res!1876442 (forall!10225 (_2!28800 lt!1689065) lambda!170650))))

(assert (=> d!1387458 (= lt!1689398 e!2810267)))

(assert (=> d!1387458 (= c!769477 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1387458 (noDuplicateKeys!1144 (_2!28800 lt!1689065))))

(assert (=> d!1387458 (= (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058) lt!1689398)))

(declare-fun bm!314116 () Bool)

(assert (=> bm!314116 (= call!314121 (forall!10225 (toList!4295 lt!1689058) (ite c!769477 lambda!170647 lambda!170648)))))

(assert (= (and d!1387458 c!769477) b!4511070))

(assert (= (and d!1387458 (not c!769477)) b!4511066))

(assert (= (and b!4511066 res!1876440) b!4511069))

(assert (= (or b!4511070 b!4511066) bm!314116))

(assert (= (or b!4511070 b!4511066) bm!314115))

(assert (= (or b!4511070 b!4511066) bm!314114))

(assert (= (and d!1387458 res!1876442) b!4511068))

(assert (= (and b!4511068 res!1876441) b!4511067))

(declare-fun m!5250819 () Bool)

(assert (=> b!4511066 m!5250819))

(declare-fun m!5250821 () Bool)

(assert (=> b!4511066 m!5250821))

(declare-fun m!5250823 () Bool)

(assert (=> b!4511066 m!5250823))

(declare-fun m!5250825 () Bool)

(assert (=> b!4511066 m!5250825))

(declare-fun m!5250827 () Bool)

(assert (=> b!4511066 m!5250827))

(declare-fun m!5250829 () Bool)

(assert (=> b!4511066 m!5250829))

(declare-fun m!5250831 () Bool)

(assert (=> b!4511066 m!5250831))

(declare-fun m!5250833 () Bool)

(assert (=> b!4511066 m!5250833))

(assert (=> b!4511066 m!5250829))

(assert (=> b!4511066 m!5250833))

(declare-fun m!5250835 () Bool)

(assert (=> b!4511066 m!5250835))

(assert (=> b!4511066 m!5250835))

(declare-fun m!5250837 () Bool)

(assert (=> b!4511066 m!5250837))

(assert (=> b!4511069 m!5250819))

(declare-fun m!5250839 () Bool)

(assert (=> bm!314115 m!5250839))

(declare-fun m!5250841 () Bool)

(assert (=> bm!314114 m!5250841))

(declare-fun m!5250843 () Bool)

(assert (=> b!4511068 m!5250843))

(declare-fun m!5250845 () Bool)

(assert (=> b!4511067 m!5250845))

(declare-fun m!5250847 () Bool)

(assert (=> bm!314116 m!5250847))

(declare-fun m!5250849 () Bool)

(assert (=> d!1387458 m!5250849))

(declare-fun m!5250851 () Bool)

(assert (=> d!1387458 m!5250851))

(assert (=> b!4510788 d!1387458))

(declare-fun bs!847000 () Bool)

(declare-fun d!1387506 () Bool)

(assert (= bs!847000 (and d!1387506 d!1387406)))

(declare-fun lambda!170651 () Int)

(assert (=> bs!847000 (not (= lambda!170651 lambda!170553))))

(declare-fun bs!847001 () Bool)

(assert (= bs!847001 (and d!1387506 d!1387450)))

(assert (=> bs!847001 (= lambda!170651 lambda!170565)))

(declare-fun bs!847002 () Bool)

(assert (= bs!847002 (and d!1387506 start!445924)))

(assert (=> bs!847002 (= lambda!170651 lambda!170537)))

(declare-fun bs!847003 () Bool)

(assert (= bs!847003 (and d!1387506 d!1387370)))

(assert (=> bs!847003 (= lambda!170651 lambda!170540)))

(declare-fun bs!847004 () Bool)

(assert (= bs!847004 (and d!1387506 d!1387428)))

(assert (=> bs!847004 (= lambda!170651 lambda!170561)))

(declare-fun bs!847005 () Bool)

(assert (= bs!847005 (and d!1387506 d!1387448)))

(assert (=> bs!847005 (= lambda!170651 lambda!170562)))

(declare-fun bs!847006 () Bool)

(assert (= bs!847006 (and d!1387506 d!1387372)))

(assert (=> bs!847006 (= lambda!170651 lambda!170543)))

(declare-fun lt!1689419 () ListMap!3557)

(assert (=> d!1387506 (invariantList!1001 (toList!4295 lt!1689419))))

(declare-fun e!2810277 () ListMap!3557)

(assert (=> d!1387506 (= lt!1689419 e!2810277)))

(declare-fun c!769484 () Bool)

(assert (=> d!1387506 (= c!769484 ((_ is Cons!50599) (toList!4296 lt!1689051)))))

(assert (=> d!1387506 (forall!10223 (toList!4296 lt!1689051) lambda!170651)))

(assert (=> d!1387506 (= (extractMap!1200 (toList!4296 lt!1689051)) lt!1689419)))

(declare-fun b!4511087 () Bool)

(assert (=> b!4511087 (= e!2810277 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))))))

(declare-fun b!4511088 () Bool)

(assert (=> b!4511088 (= e!2810277 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387506 c!769484) b!4511087))

(assert (= (and d!1387506 (not c!769484)) b!4511088))

(declare-fun m!5250857 () Bool)

(assert (=> d!1387506 m!5250857))

(declare-fun m!5250859 () Bool)

(assert (=> d!1387506 m!5250859))

(declare-fun m!5250863 () Bool)

(assert (=> b!4511087 m!5250863))

(assert (=> b!4511087 m!5250863))

(declare-fun m!5250869 () Bool)

(assert (=> b!4511087 m!5250869))

(assert (=> b!4510788 d!1387506))

(declare-fun d!1387510 () Bool)

(declare-fun res!1876451 () Bool)

(declare-fun e!2810291 () Bool)

(assert (=> d!1387510 (=> res!1876451 e!2810291)))

(assert (=> d!1387510 (= res!1876451 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387510 (= (forall!10223 (toList!4296 lm!1477) lambda!170537) e!2810291)))

(declare-fun b!4511107 () Bool)

(declare-fun e!2810292 () Bool)

(assert (=> b!4511107 (= e!2810291 e!2810292)))

(declare-fun res!1876452 () Bool)

(assert (=> b!4511107 (=> (not res!1876452) (not e!2810292))))

(assert (=> b!4511107 (= res!1876452 (dynLambda!21139 lambda!170537 (h!56436 (toList!4296 lm!1477))))))

(declare-fun b!4511108 () Bool)

(assert (=> b!4511108 (= e!2810292 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170537))))

(assert (= (and d!1387510 (not res!1876451)) b!4511107))

(assert (= (and b!4511107 res!1876452) b!4511108))

(declare-fun b_lambda!153763 () Bool)

(assert (=> (not b_lambda!153763) (not b!4511107)))

(declare-fun m!5250877 () Bool)

(assert (=> b!4511107 m!5250877))

(declare-fun m!5250879 () Bool)

(assert (=> b!4511108 m!5250879))

(assert (=> start!445924 d!1387510))

(declare-fun d!1387516 () Bool)

(assert (=> d!1387516 (= (inv!66184 lm!1477) (isStrictlySorted!415 (toList!4296 lm!1477)))))

(declare-fun bs!847009 () Bool)

(assert (= bs!847009 d!1387516))

(assert (=> bs!847009 m!5250367))

(assert (=> start!445924 d!1387516))

(declare-fun d!1387518 () Bool)

(assert (=> d!1387518 (= (apply!11881 lt!1689057 hash!344) (get!16555 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344)))))

(declare-fun bs!847010 () Bool)

(assert (= bs!847010 d!1387518))

(declare-fun m!5250881 () Bool)

(assert (=> bs!847010 m!5250881))

(assert (=> bs!847010 m!5250881))

(declare-fun m!5250883 () Bool)

(assert (=> bs!847010 m!5250883))

(assert (=> b!4510798 d!1387518))

(declare-fun d!1387520 () Bool)

(assert (=> d!1387520 (= (eq!601 lt!1689045 lt!1689050) (= (content!8309 (toList!4295 lt!1689045)) (content!8309 (toList!4295 lt!1689050))))))

(declare-fun bs!847011 () Bool)

(assert (= bs!847011 d!1387520))

(declare-fun m!5250885 () Bool)

(assert (=> bs!847011 m!5250885))

(declare-fun m!5250887 () Bool)

(assert (=> bs!847011 m!5250887))

(assert (=> b!4510787 d!1387520))

(declare-fun d!1387522 () Bool)

(declare-fun isEmpty!28637 (List!50723) Bool)

(assert (=> d!1387522 (= (isEmpty!28635 lm!1477) (isEmpty!28637 (toList!4296 lm!1477)))))

(declare-fun bs!847012 () Bool)

(assert (= bs!847012 d!1387522))

(declare-fun m!5250889 () Bool)

(assert (=> bs!847012 m!5250889))

(assert (=> b!4510797 d!1387522))

(declare-fun d!1387524 () Bool)

(assert (=> d!1387524 (= (eq!601 lt!1689049 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048)) (= (content!8309 (toList!4295 lt!1689049)) (content!8309 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048)))))))

(declare-fun bs!847013 () Bool)

(assert (= bs!847013 d!1387524))

(assert (=> bs!847013 m!5250655))

(declare-fun m!5250891 () Bool)

(assert (=> bs!847013 m!5250891))

(assert (=> b!4510797 d!1387524))

(declare-fun bs!847014 () Bool)

(declare-fun b!4511113 () Bool)

(assert (= bs!847014 (and b!4511113 b!4511070)))

(declare-fun lambda!170652 () Int)

(assert (=> bs!847014 (= (= lt!1689048 lt!1689058) (= lambda!170652 lambda!170647))))

(declare-fun bs!847015 () Bool)

(assert (= bs!847015 (and b!4511113 b!4511066)))

(assert (=> bs!847015 (= (= lt!1689048 lt!1689058) (= lambda!170652 lambda!170648))))

(assert (=> bs!847015 (= (= lt!1689048 lt!1689409) (= lambda!170652 lambda!170649))))

(declare-fun bs!847016 () Bool)

(assert (= bs!847016 (and b!4511113 d!1387458)))

(assert (=> bs!847016 (= (= lt!1689048 lt!1689398) (= lambda!170652 lambda!170650))))

(assert (=> b!4511113 true))

(declare-fun bs!847017 () Bool)

(declare-fun b!4511109 () Bool)

(assert (= bs!847017 (and b!4511109 b!4511066)))

(declare-fun lambda!170653 () Int)

(assert (=> bs!847017 (= (= lt!1689048 lt!1689058) (= lambda!170653 lambda!170648))))

(assert (=> bs!847017 (= (= lt!1689048 lt!1689409) (= lambda!170653 lambda!170649))))

(declare-fun bs!847018 () Bool)

(assert (= bs!847018 (and b!4511109 b!4511113)))

(assert (=> bs!847018 (= lambda!170653 lambda!170652)))

(declare-fun bs!847019 () Bool)

(assert (= bs!847019 (and b!4511109 d!1387458)))

(assert (=> bs!847019 (= (= lt!1689048 lt!1689398) (= lambda!170653 lambda!170650))))

(declare-fun bs!847020 () Bool)

(assert (= bs!847020 (and b!4511109 b!4511070)))

(assert (=> bs!847020 (= (= lt!1689048 lt!1689058) (= lambda!170653 lambda!170647))))

(assert (=> b!4511109 true))

(declare-fun lt!1689441 () ListMap!3557)

(declare-fun lambda!170654 () Int)

(assert (=> bs!847017 (= (= lt!1689441 lt!1689058) (= lambda!170654 lambda!170648))))

(assert (=> bs!847017 (= (= lt!1689441 lt!1689409) (= lambda!170654 lambda!170649))))

(assert (=> b!4511109 (= (= lt!1689441 lt!1689048) (= lambda!170654 lambda!170653))))

(assert (=> bs!847018 (= (= lt!1689441 lt!1689048) (= lambda!170654 lambda!170652))))

(assert (=> bs!847019 (= (= lt!1689441 lt!1689398) (= lambda!170654 lambda!170650))))

(assert (=> bs!847020 (= (= lt!1689441 lt!1689058) (= lambda!170654 lambda!170647))))

(assert (=> b!4511109 true))

(declare-fun bs!847021 () Bool)

(declare-fun d!1387526 () Bool)

(assert (= bs!847021 (and d!1387526 b!4511066)))

(declare-fun lt!1689430 () ListMap!3557)

(declare-fun lambda!170655 () Int)

(assert (=> bs!847021 (= (= lt!1689430 lt!1689058) (= lambda!170655 lambda!170648))))

(assert (=> bs!847021 (= (= lt!1689430 lt!1689409) (= lambda!170655 lambda!170649))))

(declare-fun bs!847022 () Bool)

(assert (= bs!847022 (and d!1387526 b!4511109)))

(assert (=> bs!847022 (= (= lt!1689430 lt!1689048) (= lambda!170655 lambda!170653))))

(declare-fun bs!847023 () Bool)

(assert (= bs!847023 (and d!1387526 b!4511113)))

(assert (=> bs!847023 (= (= lt!1689430 lt!1689048) (= lambda!170655 lambda!170652))))

(assert (=> bs!847022 (= (= lt!1689430 lt!1689441) (= lambda!170655 lambda!170654))))

(declare-fun bs!847024 () Bool)

(assert (= bs!847024 (and d!1387526 d!1387458)))

(assert (=> bs!847024 (= (= lt!1689430 lt!1689398) (= lambda!170655 lambda!170650))))

(declare-fun bs!847025 () Bool)

(assert (= bs!847025 (and d!1387526 b!4511070)))

(assert (=> bs!847025 (= (= lt!1689430 lt!1689058) (= lambda!170655 lambda!170647))))

(assert (=> d!1387526 true))

(declare-fun bm!314117 () Bool)

(declare-fun call!314122 () Unit!93482)

(assert (=> bm!314117 (= call!314122 (lemmaContainsAllItsOwnKeys!322 lt!1689048))))

(declare-fun c!769486 () Bool)

(declare-fun bm!314118 () Bool)

(declare-fun call!314123 () Bool)

(assert (=> bm!314118 (= call!314123 (forall!10225 (toList!4295 lt!1689048) (ite c!769486 lambda!170652 lambda!170654)))))

(declare-fun e!2810294 () ListMap!3557)

(assert (=> b!4511109 (= e!2810294 lt!1689441)))

(declare-fun lt!1689426 () ListMap!3557)

(assert (=> b!4511109 (= lt!1689426 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511109 (= lt!1689441 (addToMapMapFromBucket!671 (t!357684 (_2!28800 lt!1689065)) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689438 () Unit!93482)

(assert (=> b!4511109 (= lt!1689438 call!314122)))

(declare-fun call!314124 () Bool)

(assert (=> b!4511109 call!314124))

(declare-fun lt!1689434 () Unit!93482)

(assert (=> b!4511109 (= lt!1689434 lt!1689438)))

(assert (=> b!4511109 (forall!10225 (toList!4295 lt!1689426) lambda!170654)))

(declare-fun lt!1689427 () Unit!93482)

(declare-fun Unit!93520 () Unit!93482)

(assert (=> b!4511109 (= lt!1689427 Unit!93520)))

(assert (=> b!4511109 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170654)))

(declare-fun lt!1689437 () Unit!93482)

(declare-fun Unit!93521 () Unit!93482)

(assert (=> b!4511109 (= lt!1689437 Unit!93521)))

(declare-fun lt!1689444 () Unit!93482)

(declare-fun Unit!93522 () Unit!93482)

(assert (=> b!4511109 (= lt!1689444 Unit!93522)))

(declare-fun lt!1689433 () Unit!93482)

(assert (=> b!4511109 (= lt!1689433 (forallContained!2477 (toList!4295 lt!1689426) lambda!170654 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511109 (contains!13299 lt!1689426 (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689445 () Unit!93482)

(declare-fun Unit!93523 () Unit!93482)

(assert (=> b!4511109 (= lt!1689445 Unit!93523)))

(assert (=> b!4511109 (contains!13299 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689440 () Unit!93482)

(declare-fun Unit!93524 () Unit!93482)

(assert (=> b!4511109 (= lt!1689440 Unit!93524)))

(assert (=> b!4511109 (forall!10225 (_2!28800 lt!1689065) lambda!170654)))

(declare-fun lt!1689435 () Unit!93482)

(declare-fun Unit!93525 () Unit!93482)

(assert (=> b!4511109 (= lt!1689435 Unit!93525)))

(assert (=> b!4511109 (forall!10225 (toList!4295 lt!1689426) lambda!170654)))

(declare-fun lt!1689443 () Unit!93482)

(declare-fun Unit!93526 () Unit!93482)

(assert (=> b!4511109 (= lt!1689443 Unit!93526)))

(declare-fun lt!1689429 () Unit!93482)

(declare-fun Unit!93527 () Unit!93482)

(assert (=> b!4511109 (= lt!1689429 Unit!93527)))

(declare-fun lt!1689432 () Unit!93482)

(assert (=> b!4511109 (= lt!1689432 (addForallContainsKeyThenBeforeAdding!322 lt!1689048 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511109 call!314123))

(declare-fun lt!1689425 () Unit!93482)

(assert (=> b!4511109 (= lt!1689425 lt!1689432)))

(assert (=> b!4511109 (forall!10225 (toList!4295 lt!1689048) lambda!170654)))

(declare-fun lt!1689431 () Unit!93482)

(declare-fun Unit!93528 () Unit!93482)

(assert (=> b!4511109 (= lt!1689431 Unit!93528)))

(declare-fun res!1876453 () Bool)

(assert (=> b!4511109 (= res!1876453 (forall!10225 (_2!28800 lt!1689065) lambda!170654))))

(declare-fun e!2810295 () Bool)

(assert (=> b!4511109 (=> (not res!1876453) (not e!2810295))))

(assert (=> b!4511109 e!2810295))

(declare-fun lt!1689442 () Unit!93482)

(declare-fun Unit!93529 () Unit!93482)

(assert (=> b!4511109 (= lt!1689442 Unit!93529)))

(declare-fun b!4511110 () Bool)

(declare-fun e!2810293 () Bool)

(assert (=> b!4511110 (= e!2810293 (invariantList!1001 (toList!4295 lt!1689430)))))

(declare-fun b!4511111 () Bool)

(declare-fun res!1876454 () Bool)

(assert (=> b!4511111 (=> (not res!1876454) (not e!2810293))))

(assert (=> b!4511111 (= res!1876454 (forall!10225 (toList!4295 lt!1689048) lambda!170655))))

(declare-fun b!4511112 () Bool)

(assert (=> b!4511112 (= e!2810295 (forall!10225 (toList!4295 lt!1689048) lambda!170654))))

(assert (=> b!4511113 (= e!2810294 lt!1689048)))

(declare-fun lt!1689436 () Unit!93482)

(assert (=> b!4511113 (= lt!1689436 call!314122)))

(assert (=> b!4511113 call!314124))

(declare-fun lt!1689439 () Unit!93482)

(assert (=> b!4511113 (= lt!1689439 lt!1689436)))

(assert (=> b!4511113 call!314123))

(declare-fun lt!1689428 () Unit!93482)

(declare-fun Unit!93530 () Unit!93482)

(assert (=> b!4511113 (= lt!1689428 Unit!93530)))

(assert (=> d!1387526 e!2810293))

(declare-fun res!1876455 () Bool)

(assert (=> d!1387526 (=> (not res!1876455) (not e!2810293))))

(assert (=> d!1387526 (= res!1876455 (forall!10225 (_2!28800 lt!1689065) lambda!170655))))

(assert (=> d!1387526 (= lt!1689430 e!2810294)))

(assert (=> d!1387526 (= c!769486 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1387526 (noDuplicateKeys!1144 (_2!28800 lt!1689065))))

(assert (=> d!1387526 (= (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048) lt!1689430)))

(declare-fun bm!314119 () Bool)

(assert (=> bm!314119 (= call!314124 (forall!10225 (toList!4295 lt!1689048) (ite c!769486 lambda!170652 lambda!170653)))))

(assert (= (and d!1387526 c!769486) b!4511113))

(assert (= (and d!1387526 (not c!769486)) b!4511109))

(assert (= (and b!4511109 res!1876453) b!4511112))

(assert (= (or b!4511113 b!4511109) bm!314119))

(assert (= (or b!4511113 b!4511109) bm!314118))

(assert (= (or b!4511113 b!4511109) bm!314117))

(assert (= (and d!1387526 res!1876455) b!4511111))

(assert (= (and b!4511111 res!1876454) b!4511110))

(declare-fun m!5250893 () Bool)

(assert (=> b!4511109 m!5250893))

(declare-fun m!5250895 () Bool)

(assert (=> b!4511109 m!5250895))

(declare-fun m!5250897 () Bool)

(assert (=> b!4511109 m!5250897))

(declare-fun m!5250899 () Bool)

(assert (=> b!4511109 m!5250899))

(declare-fun m!5250901 () Bool)

(assert (=> b!4511109 m!5250901))

(declare-fun m!5250903 () Bool)

(assert (=> b!4511109 m!5250903))

(declare-fun m!5250905 () Bool)

(assert (=> b!4511109 m!5250905))

(declare-fun m!5250907 () Bool)

(assert (=> b!4511109 m!5250907))

(assert (=> b!4511109 m!5250903))

(assert (=> b!4511109 m!5250907))

(declare-fun m!5250909 () Bool)

(assert (=> b!4511109 m!5250909))

(assert (=> b!4511109 m!5250909))

(declare-fun m!5250911 () Bool)

(assert (=> b!4511109 m!5250911))

(assert (=> b!4511112 m!5250893))

(declare-fun m!5250913 () Bool)

(assert (=> bm!314118 m!5250913))

(declare-fun m!5250915 () Bool)

(assert (=> bm!314117 m!5250915))

(declare-fun m!5250917 () Bool)

(assert (=> b!4511111 m!5250917))

(declare-fun m!5250919 () Bool)

(assert (=> b!4511110 m!5250919))

(declare-fun m!5250921 () Bool)

(assert (=> bm!314119 m!5250921))

(declare-fun m!5250923 () Bool)

(assert (=> d!1387526 m!5250923))

(assert (=> d!1387526 m!5250851))

(assert (=> b!4510797 d!1387526))

(declare-fun d!1387528 () Bool)

(assert (=> d!1387528 (eq!601 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058) (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))))

(declare-fun lt!1689448 () Unit!93482)

(declare-fun choose!29320 (ListMap!3557 ListMap!3557 List!50722) Unit!93482)

(assert (=> d!1387528 (= lt!1689448 (choose!29320 lt!1689058 lt!1689048 (_2!28800 lt!1689065)))))

(assert (=> d!1387528 (noDuplicateKeys!1144 (_2!28800 lt!1689065))))

(assert (=> d!1387528 (= (lemmaAddToMapFromBucketPreservesEquivalence!20 lt!1689058 lt!1689048 (_2!28800 lt!1689065)) lt!1689448)))

(declare-fun bs!847026 () Bool)

(assert (= bs!847026 d!1387528))

(declare-fun m!5250925 () Bool)

(assert (=> bs!847026 m!5250925))

(assert (=> bs!847026 m!5250267))

(assert (=> bs!847026 m!5250253))

(declare-fun m!5250927 () Bool)

(assert (=> bs!847026 m!5250927))

(assert (=> bs!847026 m!5250851))

(assert (=> bs!847026 m!5250267))

(assert (=> bs!847026 m!5250253))

(assert (=> b!4510797 d!1387528))

(declare-fun bs!847027 () Bool)

(declare-fun d!1387530 () Bool)

(assert (= bs!847027 (and d!1387530 b!4511066)))

(declare-fun lambda!170658 () Int)

(assert (=> bs!847027 (not (= lambda!170658 lambda!170649))))

(declare-fun bs!847028 () Bool)

(assert (= bs!847028 (and d!1387530 b!4511109)))

(assert (=> bs!847028 (not (= lambda!170658 lambda!170653))))

(declare-fun bs!847029 () Bool)

(assert (= bs!847029 (and d!1387530 b!4511113)))

(assert (=> bs!847029 (not (= lambda!170658 lambda!170652))))

(assert (=> bs!847027 (not (= lambda!170658 lambda!170648))))

(declare-fun bs!847030 () Bool)

(assert (= bs!847030 (and d!1387530 d!1387526)))

(assert (=> bs!847030 (not (= lambda!170658 lambda!170655))))

(assert (=> bs!847028 (not (= lambda!170658 lambda!170654))))

(declare-fun bs!847031 () Bool)

(assert (= bs!847031 (and d!1387530 d!1387458)))

(assert (=> bs!847031 (not (= lambda!170658 lambda!170650))))

(declare-fun bs!847032 () Bool)

(assert (= bs!847032 (and d!1387530 b!4511070)))

(assert (=> bs!847032 (not (= lambda!170658 lambda!170647))))

(assert (=> d!1387530 true))

(assert (=> d!1387530 true))

(assert (=> d!1387530 (= (allKeysSameHash!998 newBucket!178 hash!344 hashF!1107) (forall!10225 newBucket!178 lambda!170658))))

(declare-fun bs!847033 () Bool)

(assert (= bs!847033 d!1387530))

(declare-fun m!5250929 () Bool)

(assert (=> bs!847033 m!5250929))

(assert (=> b!4510796 d!1387530))

(declare-fun d!1387532 () Bool)

(declare-fun res!1876464 () Bool)

(declare-fun e!2810304 () Bool)

(assert (=> d!1387532 (=> res!1876464 e!2810304)))

(declare-fun e!2810303 () Bool)

(assert (=> d!1387532 (= res!1876464 e!2810303)))

(declare-fun res!1876462 () Bool)

(assert (=> d!1387532 (=> (not res!1876462) (not e!2810303))))

(assert (=> d!1387532 (= res!1876462 ((_ is Cons!50599) (t!357685 (toList!4296 lm!1477))))))

(assert (=> d!1387532 (= (containsKeyBiggerList!124 (t!357685 (toList!4296 lm!1477)) key!3287) e!2810304)))

(declare-fun b!4511124 () Bool)

(assert (=> b!4511124 (= e!2810303 (containsKey!1732 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun b!4511125 () Bool)

(declare-fun e!2810302 () Bool)

(assert (=> b!4511125 (= e!2810304 e!2810302)))

(declare-fun res!1876463 () Bool)

(assert (=> b!4511125 (=> (not res!1876463) (not e!2810302))))

(assert (=> b!4511125 (= res!1876463 ((_ is Cons!50599) (t!357685 (toList!4296 lm!1477))))))

(declare-fun b!4511126 () Bool)

(assert (=> b!4511126 (= e!2810302 (containsKeyBiggerList!124 (t!357685 (t!357685 (toList!4296 lm!1477))) key!3287))))

(assert (= (and d!1387532 res!1876462) b!4511124))

(assert (= (and d!1387532 (not res!1876464)) b!4511125))

(assert (= (and b!4511125 res!1876463) b!4511126))

(declare-fun m!5250931 () Bool)

(assert (=> b!4511124 m!5250931))

(declare-fun m!5250933 () Bool)

(assert (=> b!4511126 m!5250933))

(assert (=> b!4510806 d!1387532))

(declare-fun d!1387534 () Bool)

(declare-fun res!1876467 () Bool)

(declare-fun e!2810307 () Bool)

(assert (=> d!1387534 (=> res!1876467 e!2810307)))

(declare-fun e!2810306 () Bool)

(assert (=> d!1387534 (= res!1876467 e!2810306)))

(declare-fun res!1876465 () Bool)

(assert (=> d!1387534 (=> (not res!1876465) (not e!2810306))))

(assert (=> d!1387534 (= res!1876465 ((_ is Cons!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1387534 (= (containsKeyBiggerList!124 (toList!4296 lt!1689057) key!3287) e!2810307)))

(declare-fun b!4511127 () Bool)

(assert (=> b!4511127 (= e!2810306 (containsKey!1732 (_2!28800 (h!56436 (toList!4296 lt!1689057))) key!3287))))

(declare-fun b!4511128 () Bool)

(declare-fun e!2810305 () Bool)

(assert (=> b!4511128 (= e!2810307 e!2810305)))

(declare-fun res!1876466 () Bool)

(assert (=> b!4511128 (=> (not res!1876466) (not e!2810305))))

(assert (=> b!4511128 (= res!1876466 ((_ is Cons!50599) (toList!4296 lt!1689057)))))

(declare-fun b!4511129 () Bool)

(assert (=> b!4511129 (= e!2810305 (containsKeyBiggerList!124 (t!357685 (toList!4296 lt!1689057)) key!3287))))

(assert (= (and d!1387534 res!1876465) b!4511127))

(assert (= (and d!1387534 (not res!1876467)) b!4511128))

(assert (= (and b!4511128 res!1876466) b!4511129))

(declare-fun m!5250935 () Bool)

(assert (=> b!4511127 m!5250935))

(declare-fun m!5250937 () Bool)

(assert (=> b!4511129 m!5250937))

(assert (=> b!4510806 d!1387534))

(declare-fun bs!847034 () Bool)

(declare-fun d!1387536 () Bool)

(assert (= bs!847034 (and d!1387536 d!1387406)))

(declare-fun lambda!170661 () Int)

(assert (=> bs!847034 (not (= lambda!170661 lambda!170553))))

(declare-fun bs!847035 () Bool)

(assert (= bs!847035 (and d!1387536 d!1387450)))

(assert (=> bs!847035 (= lambda!170661 lambda!170565)))

(declare-fun bs!847036 () Bool)

(assert (= bs!847036 (and d!1387536 start!445924)))

(assert (=> bs!847036 (= lambda!170661 lambda!170537)))

(declare-fun bs!847037 () Bool)

(assert (= bs!847037 (and d!1387536 d!1387370)))

(assert (=> bs!847037 (= lambda!170661 lambda!170540)))

(declare-fun bs!847038 () Bool)

(assert (= bs!847038 (and d!1387536 d!1387506)))

(assert (=> bs!847038 (= lambda!170661 lambda!170651)))

(declare-fun bs!847039 () Bool)

(assert (= bs!847039 (and d!1387536 d!1387428)))

(assert (=> bs!847039 (= lambda!170661 lambda!170561)))

(declare-fun bs!847040 () Bool)

(assert (= bs!847040 (and d!1387536 d!1387448)))

(assert (=> bs!847040 (= lambda!170661 lambda!170562)))

(declare-fun bs!847041 () Bool)

(assert (= bs!847041 (and d!1387536 d!1387372)))

(assert (=> bs!847041 (= lambda!170661 lambda!170543)))

(assert (=> d!1387536 (containsKeyBiggerList!124 (toList!4296 lt!1689057) key!3287)))

(declare-fun lt!1689451 () Unit!93482)

(declare-fun choose!29321 (ListLongMap!2927 K!12000 Hashable!5539) Unit!93482)

(assert (=> d!1387536 (= lt!1689451 (choose!29321 lt!1689057 key!3287 hashF!1107))))

(assert (=> d!1387536 (forall!10223 (toList!4296 lt!1689057) lambda!170661)))

(assert (=> d!1387536 (= (lemmaInLongMapThenContainsKeyBiggerList!60 lt!1689057 key!3287 hashF!1107) lt!1689451)))

(declare-fun bs!847042 () Bool)

(assert (= bs!847042 d!1387536))

(assert (=> bs!847042 m!5250233))

(declare-fun m!5250939 () Bool)

(assert (=> bs!847042 m!5250939))

(declare-fun m!5250941 () Bool)

(assert (=> bs!847042 m!5250941))

(assert (=> b!4510806 d!1387536))

(declare-fun d!1387538 () Bool)

(declare-fun head!9382 (List!50723) tuple2!51012)

(assert (=> d!1387538 (= (head!9380 lt!1689051) (head!9382 (toList!4296 lt!1689051)))))

(declare-fun bs!847043 () Bool)

(assert (= bs!847043 d!1387538))

(declare-fun m!5250943 () Bool)

(assert (=> bs!847043 m!5250943))

(assert (=> b!4510784 d!1387538))

(declare-fun d!1387540 () Bool)

(declare-fun e!2810310 () Bool)

(assert (=> d!1387540 e!2810310))

(declare-fun res!1876470 () Bool)

(assert (=> d!1387540 (=> (not res!1876470) (not e!2810310))))

(declare-fun lt!1689454 () ListMap!3557)

(assert (=> d!1387540 (= res!1876470 (not (contains!13299 lt!1689454 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!125 (List!50722 K!12000) List!50722)

(assert (=> d!1387540 (= lt!1689454 (ListMap!3558 (removePresrvNoDuplicatedKeys!125 (toList!4295 lt!1689046) key!3287)))))

(assert (=> d!1387540 (= (-!370 lt!1689046 key!3287) lt!1689454)))

(declare-fun b!4511132 () Bool)

(declare-fun content!8311 (List!50725) (InoxSet K!12000))

(assert (=> b!4511132 (= e!2810310 (= ((_ map and) (content!8311 (keys!17562 lt!1689046)) ((_ map not) (store ((as const (Array K!12000 Bool)) false) key!3287 true))) (content!8311 (keys!17562 lt!1689454))))))

(assert (= (and d!1387540 res!1876470) b!4511132))

(declare-fun m!5250945 () Bool)

(assert (=> d!1387540 m!5250945))

(declare-fun m!5250947 () Bool)

(assert (=> d!1387540 m!5250947))

(declare-fun m!5250949 () Bool)

(assert (=> b!4511132 m!5250949))

(assert (=> b!4511132 m!5250633))

(declare-fun m!5250951 () Bool)

(assert (=> b!4511132 m!5250951))

(assert (=> b!4511132 m!5250633))

(declare-fun m!5250953 () Bool)

(assert (=> b!4511132 m!5250953))

(assert (=> b!4511132 m!5250951))

(declare-fun m!5250955 () Bool)

(assert (=> b!4511132 m!5250955))

(assert (=> b!4510805 d!1387540))

(declare-fun d!1387542 () Bool)

(declare-fun e!2810311 () Bool)

(assert (=> d!1387542 e!2810311))

(declare-fun res!1876472 () Bool)

(assert (=> d!1387542 (=> (not res!1876472) (not e!2810311))))

(declare-fun lt!1689458 () ListLongMap!2927)

(assert (=> d!1387542 (= res!1876472 (contains!13300 lt!1689458 (_1!28800 lt!1689059)))))

(declare-fun lt!1689457 () List!50723)

(assert (=> d!1387542 (= lt!1689458 (ListLongMap!2928 lt!1689457))))

(declare-fun lt!1689456 () Unit!93482)

(declare-fun lt!1689455 () Unit!93482)

(assert (=> d!1387542 (= lt!1689456 lt!1689455)))

(assert (=> d!1387542 (= (getValueByKey!1060 lt!1689457 (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059)))))

(assert (=> d!1387542 (= lt!1689455 (lemmaContainsTupThenGetReturnValue!654 lt!1689457 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(assert (=> d!1387542 (= lt!1689457 (insertStrictlySorted!392 (toList!4296 lt!1689057) (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(assert (=> d!1387542 (= (+!1506 lt!1689057 lt!1689059) lt!1689458)))

(declare-fun b!4511133 () Bool)

(declare-fun res!1876471 () Bool)

(assert (=> b!4511133 (=> (not res!1876471) (not e!2810311))))

(assert (=> b!4511133 (= res!1876471 (= (getValueByKey!1060 (toList!4296 lt!1689458) (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059))))))

(declare-fun b!4511134 () Bool)

(assert (=> b!4511134 (= e!2810311 (contains!13301 (toList!4296 lt!1689458) lt!1689059))))

(assert (= (and d!1387542 res!1876472) b!4511133))

(assert (= (and b!4511133 res!1876471) b!4511134))

(declare-fun m!5250957 () Bool)

(assert (=> d!1387542 m!5250957))

(declare-fun m!5250959 () Bool)

(assert (=> d!1387542 m!5250959))

(declare-fun m!5250961 () Bool)

(assert (=> d!1387542 m!5250961))

(declare-fun m!5250963 () Bool)

(assert (=> d!1387542 m!5250963))

(declare-fun m!5250965 () Bool)

(assert (=> b!4511133 m!5250965))

(declare-fun m!5250967 () Bool)

(assert (=> b!4511134 m!5250967))

(assert (=> b!4510805 d!1387542))

(declare-fun d!1387544 () Bool)

(assert (=> d!1387544 (= (eq!601 lt!1689058 lt!1689048) (= (content!8309 (toList!4295 lt!1689058)) (content!8309 (toList!4295 lt!1689048))))))

(declare-fun bs!847044 () Bool)

(assert (= bs!847044 d!1387544))

(declare-fun m!5250969 () Bool)

(assert (=> bs!847044 m!5250969))

(declare-fun m!5250971 () Bool)

(assert (=> bs!847044 m!5250971))

(assert (=> b!4510805 d!1387544))

(declare-fun d!1387546 () Bool)

(assert (=> d!1387546 (= (head!9380 lm!1477) (head!9382 (toList!4296 lm!1477)))))

(declare-fun bs!847045 () Bool)

(assert (= bs!847045 d!1387546))

(declare-fun m!5250973 () Bool)

(assert (=> bs!847045 m!5250973))

(assert (=> b!4510805 d!1387546))

(declare-fun bs!847046 () Bool)

(declare-fun d!1387548 () Bool)

(assert (= bs!847046 (and d!1387548 d!1387406)))

(declare-fun lambda!170662 () Int)

(assert (=> bs!847046 (not (= lambda!170662 lambda!170553))))

(declare-fun bs!847047 () Bool)

(assert (= bs!847047 (and d!1387548 d!1387450)))

(assert (=> bs!847047 (= lambda!170662 lambda!170565)))

(declare-fun bs!847048 () Bool)

(assert (= bs!847048 (and d!1387548 start!445924)))

(assert (=> bs!847048 (= lambda!170662 lambda!170537)))

(declare-fun bs!847049 () Bool)

(assert (= bs!847049 (and d!1387548 d!1387370)))

(assert (=> bs!847049 (= lambda!170662 lambda!170540)))

(declare-fun bs!847050 () Bool)

(assert (= bs!847050 (and d!1387548 d!1387506)))

(assert (=> bs!847050 (= lambda!170662 lambda!170651)))

(declare-fun bs!847051 () Bool)

(assert (= bs!847051 (and d!1387548 d!1387428)))

(assert (=> bs!847051 (= lambda!170662 lambda!170561)))

(declare-fun bs!847052 () Bool)

(assert (= bs!847052 (and d!1387548 d!1387448)))

(assert (=> bs!847052 (= lambda!170662 lambda!170562)))

(declare-fun bs!847053 () Bool)

(assert (= bs!847053 (and d!1387548 d!1387536)))

(assert (=> bs!847053 (= lambda!170662 lambda!170661)))

(declare-fun bs!847054 () Bool)

(assert (= bs!847054 (and d!1387548 d!1387372)))

(assert (=> bs!847054 (= lambda!170662 lambda!170543)))

(declare-fun lt!1689459 () ListMap!3557)

(assert (=> d!1387548 (invariantList!1001 (toList!4295 lt!1689459))))

(declare-fun e!2810312 () ListMap!3557)

(assert (=> d!1387548 (= lt!1689459 e!2810312)))

(declare-fun c!769487 () Bool)

(assert (=> d!1387548 (= c!769487 ((_ is Cons!50599) (toList!4296 (+!1506 lt!1689057 lt!1689065))))))

(assert (=> d!1387548 (forall!10223 (toList!4296 (+!1506 lt!1689057 lt!1689065)) lambda!170662)))

(assert (=> d!1387548 (= (extractMap!1200 (toList!4296 (+!1506 lt!1689057 lt!1689065))) lt!1689459)))

(declare-fun b!4511135 () Bool)

(assert (=> b!4511135 (= e!2810312 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))

(declare-fun b!4511136 () Bool)

(assert (=> b!4511136 (= e!2810312 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387548 c!769487) b!4511135))

(assert (= (and d!1387548 (not c!769487)) b!4511136))

(declare-fun m!5250975 () Bool)

(assert (=> d!1387548 m!5250975))

(declare-fun m!5250977 () Bool)

(assert (=> d!1387548 m!5250977))

(declare-fun m!5250979 () Bool)

(assert (=> b!4511135 m!5250979))

(assert (=> b!4511135 m!5250979))

(declare-fun m!5250981 () Bool)

(assert (=> b!4511135 m!5250981))

(assert (=> b!4510805 d!1387548))

(declare-fun bs!847055 () Bool)

(declare-fun d!1387550 () Bool)

(assert (= bs!847055 (and d!1387550 d!1387548)))

(declare-fun lambda!170665 () Int)

(assert (=> bs!847055 (= lambda!170665 lambda!170662)))

(declare-fun bs!847056 () Bool)

(assert (= bs!847056 (and d!1387550 d!1387406)))

(assert (=> bs!847056 (not (= lambda!170665 lambda!170553))))

(declare-fun bs!847057 () Bool)

(assert (= bs!847057 (and d!1387550 d!1387450)))

(assert (=> bs!847057 (= lambda!170665 lambda!170565)))

(declare-fun bs!847058 () Bool)

(assert (= bs!847058 (and d!1387550 start!445924)))

(assert (=> bs!847058 (= lambda!170665 lambda!170537)))

(declare-fun bs!847059 () Bool)

(assert (= bs!847059 (and d!1387550 d!1387370)))

(assert (=> bs!847059 (= lambda!170665 lambda!170540)))

(declare-fun bs!847060 () Bool)

(assert (= bs!847060 (and d!1387550 d!1387506)))

(assert (=> bs!847060 (= lambda!170665 lambda!170651)))

(declare-fun bs!847061 () Bool)

(assert (= bs!847061 (and d!1387550 d!1387428)))

(assert (=> bs!847061 (= lambda!170665 lambda!170561)))

(declare-fun bs!847062 () Bool)

(assert (= bs!847062 (and d!1387550 d!1387448)))

(assert (=> bs!847062 (= lambda!170665 lambda!170562)))

(declare-fun bs!847063 () Bool)

(assert (= bs!847063 (and d!1387550 d!1387536)))

(assert (=> bs!847063 (= lambda!170665 lambda!170661)))

(declare-fun bs!847064 () Bool)

(assert (= bs!847064 (and d!1387550 d!1387372)))

(assert (=> bs!847064 (= lambda!170665 lambda!170543)))

(assert (=> d!1387550 (eq!601 (extractMap!1200 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))) (-!370 (extractMap!1200 (toList!4296 lt!1689057)) key!3287))))

(declare-fun lt!1689462 () Unit!93482)

(declare-fun choose!29322 (ListLongMap!2927 (_ BitVec 64) List!50722 K!12000 Hashable!5539) Unit!93482)

(assert (=> d!1387550 (= lt!1689462 (choose!29322 lt!1689057 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1387550 (forall!10223 (toList!4296 lt!1689057) lambda!170665)))

(assert (=> d!1387550 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!129 lt!1689057 hash!344 newBucket!178 key!3287 hashF!1107) lt!1689462)))

(declare-fun bs!847065 () Bool)

(assert (= bs!847065 d!1387550))

(declare-fun m!5250983 () Bool)

(assert (=> bs!847065 m!5250983))

(declare-fun m!5250985 () Bool)

(assert (=> bs!847065 m!5250985))

(declare-fun m!5250987 () Bool)

(assert (=> bs!847065 m!5250987))

(declare-fun m!5250989 () Bool)

(assert (=> bs!847065 m!5250989))

(assert (=> bs!847065 m!5250241))

(declare-fun m!5250991 () Bool)

(assert (=> bs!847065 m!5250991))

(declare-fun m!5250993 () Bool)

(assert (=> bs!847065 m!5250993))

(assert (=> bs!847065 m!5250241))

(assert (=> bs!847065 m!5250985))

(assert (=> bs!847065 m!5250983))

(assert (=> b!4510805 d!1387550))

(declare-fun d!1387552 () Bool)

(declare-fun e!2810313 () Bool)

(assert (=> d!1387552 e!2810313))

(declare-fun res!1876474 () Bool)

(assert (=> d!1387552 (=> (not res!1876474) (not e!2810313))))

(declare-fun lt!1689466 () ListLongMap!2927)

(assert (=> d!1387552 (= res!1876474 (contains!13300 lt!1689466 (_1!28800 lt!1689065)))))

(declare-fun lt!1689465 () List!50723)

(assert (=> d!1387552 (= lt!1689466 (ListLongMap!2928 lt!1689465))))

(declare-fun lt!1689464 () Unit!93482)

(declare-fun lt!1689463 () Unit!93482)

(assert (=> d!1387552 (= lt!1689464 lt!1689463)))

(assert (=> d!1387552 (= (getValueByKey!1060 lt!1689465 (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065)))))

(assert (=> d!1387552 (= lt!1689463 (lemmaContainsTupThenGetReturnValue!654 lt!1689465 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(assert (=> d!1387552 (= lt!1689465 (insertStrictlySorted!392 (toList!4296 lt!1689057) (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(assert (=> d!1387552 (= (+!1506 lt!1689057 lt!1689065) lt!1689466)))

(declare-fun b!4511137 () Bool)

(declare-fun res!1876473 () Bool)

(assert (=> b!4511137 (=> (not res!1876473) (not e!2810313))))

(assert (=> b!4511137 (= res!1876473 (= (getValueByKey!1060 (toList!4296 lt!1689466) (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065))))))

(declare-fun b!4511138 () Bool)

(assert (=> b!4511138 (= e!2810313 (contains!13301 (toList!4296 lt!1689466) lt!1689065))))

(assert (= (and d!1387552 res!1876474) b!4511137))

(assert (= (and b!4511137 res!1876473) b!4511138))

(declare-fun m!5250995 () Bool)

(assert (=> d!1387552 m!5250995))

(declare-fun m!5250997 () Bool)

(assert (=> d!1387552 m!5250997))

(declare-fun m!5250999 () Bool)

(assert (=> d!1387552 m!5250999))

(declare-fun m!5251001 () Bool)

(assert (=> d!1387552 m!5251001))

(declare-fun m!5251003 () Bool)

(assert (=> b!4511137 m!5251003))

(declare-fun m!5251005 () Bool)

(assert (=> b!4511138 m!5251005))

(assert (=> b!4510805 d!1387552))

(declare-fun d!1387554 () Bool)

(assert (=> d!1387554 (= (eq!601 lt!1689050 lt!1689045) (= (content!8309 (toList!4295 lt!1689050)) (content!8309 (toList!4295 lt!1689045))))))

(declare-fun bs!847066 () Bool)

(assert (= bs!847066 d!1387554))

(assert (=> bs!847066 m!5250887))

(assert (=> bs!847066 m!5250885))

(assert (=> b!4510805 d!1387554))

(declare-fun bs!847067 () Bool)

(declare-fun d!1387556 () Bool)

(assert (= bs!847067 (and d!1387556 d!1387548)))

(declare-fun lambda!170666 () Int)

(assert (=> bs!847067 (= lambda!170666 lambda!170662)))

(declare-fun bs!847068 () Bool)

(assert (= bs!847068 (and d!1387556 d!1387406)))

(assert (=> bs!847068 (not (= lambda!170666 lambda!170553))))

(declare-fun bs!847069 () Bool)

(assert (= bs!847069 (and d!1387556 d!1387450)))

(assert (=> bs!847069 (= lambda!170666 lambda!170565)))

(declare-fun bs!847070 () Bool)

(assert (= bs!847070 (and d!1387556 start!445924)))

(assert (=> bs!847070 (= lambda!170666 lambda!170537)))

(declare-fun bs!847071 () Bool)

(assert (= bs!847071 (and d!1387556 d!1387370)))

(assert (=> bs!847071 (= lambda!170666 lambda!170540)))

(declare-fun bs!847072 () Bool)

(assert (= bs!847072 (and d!1387556 d!1387506)))

(assert (=> bs!847072 (= lambda!170666 lambda!170651)))

(declare-fun bs!847073 () Bool)

(assert (= bs!847073 (and d!1387556 d!1387428)))

(assert (=> bs!847073 (= lambda!170666 lambda!170561)))

(declare-fun bs!847074 () Bool)

(assert (= bs!847074 (and d!1387556 d!1387448)))

(assert (=> bs!847074 (= lambda!170666 lambda!170562)))

(declare-fun bs!847075 () Bool)

(assert (= bs!847075 (and d!1387556 d!1387550)))

(assert (=> bs!847075 (= lambda!170666 lambda!170665)))

(declare-fun bs!847076 () Bool)

(assert (= bs!847076 (and d!1387556 d!1387536)))

(assert (=> bs!847076 (= lambda!170666 lambda!170661)))

(declare-fun bs!847077 () Bool)

(assert (= bs!847077 (and d!1387556 d!1387372)))

(assert (=> bs!847077 (= lambda!170666 lambda!170543)))

(declare-fun lt!1689467 () ListMap!3557)

(assert (=> d!1387556 (invariantList!1001 (toList!4295 lt!1689467))))

(declare-fun e!2810314 () ListMap!3557)

(assert (=> d!1387556 (= lt!1689467 e!2810314)))

(declare-fun c!769488 () Bool)

(assert (=> d!1387556 (= c!769488 ((_ is Cons!50599) (toList!4296 lt!1689063)))))

(assert (=> d!1387556 (forall!10223 (toList!4296 lt!1689063) lambda!170666)))

(assert (=> d!1387556 (= (extractMap!1200 (toList!4296 lt!1689063)) lt!1689467)))

(declare-fun b!4511139 () Bool)

(assert (=> b!4511139 (= e!2810314 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))))))

(declare-fun b!4511140 () Bool)

(assert (=> b!4511140 (= e!2810314 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387556 c!769488) b!4511139))

(assert (= (and d!1387556 (not c!769488)) b!4511140))

(declare-fun m!5251007 () Bool)

(assert (=> d!1387556 m!5251007))

(declare-fun m!5251009 () Bool)

(assert (=> d!1387556 m!5251009))

(declare-fun m!5251011 () Bool)

(assert (=> b!4511139 m!5251011))

(assert (=> b!4511139 m!5251011))

(declare-fun m!5251013 () Bool)

(assert (=> b!4511139 m!5251013))

(assert (=> b!4510805 d!1387556))

(declare-fun d!1387558 () Bool)

(declare-fun e!2810316 () Bool)

(assert (=> d!1387558 e!2810316))

(declare-fun res!1876475 () Bool)

(assert (=> d!1387558 (=> res!1876475 e!2810316)))

(declare-fun lt!1689468 () Bool)

(assert (=> d!1387558 (= res!1876475 (not lt!1689468))))

(declare-fun lt!1689470 () Bool)

(assert (=> d!1387558 (= lt!1689468 lt!1689470)))

(declare-fun lt!1689471 () Unit!93482)

(declare-fun e!2810315 () Unit!93482)

(assert (=> d!1387558 (= lt!1689471 e!2810315)))

(declare-fun c!769489 () Bool)

(assert (=> d!1387558 (= c!769489 lt!1689470)))

(assert (=> d!1387558 (= lt!1689470 (containsKey!1735 (toList!4296 lt!1689057) hash!344))))

(assert (=> d!1387558 (= (contains!13300 lt!1689057 hash!344) lt!1689468)))

(declare-fun b!4511141 () Bool)

(declare-fun lt!1689469 () Unit!93482)

(assert (=> b!4511141 (= e!2810315 lt!1689469)))

(assert (=> b!4511141 (= lt!1689469 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689057) hash!344))))

(assert (=> b!4511141 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344))))

(declare-fun b!4511142 () Bool)

(declare-fun Unit!93542 () Unit!93482)

(assert (=> b!4511142 (= e!2810315 Unit!93542)))

(declare-fun b!4511143 () Bool)

(assert (=> b!4511143 (= e!2810316 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344)))))

(assert (= (and d!1387558 c!769489) b!4511141))

(assert (= (and d!1387558 (not c!769489)) b!4511142))

(assert (= (and d!1387558 (not res!1876475)) b!4511143))

(declare-fun m!5251015 () Bool)

(assert (=> d!1387558 m!5251015))

(declare-fun m!5251017 () Bool)

(assert (=> b!4511141 m!5251017))

(assert (=> b!4511141 m!5250881))

(assert (=> b!4511141 m!5250881))

(declare-fun m!5251019 () Bool)

(assert (=> b!4511141 m!5251019))

(assert (=> b!4511143 m!5250881))

(assert (=> b!4511143 m!5250881))

(assert (=> b!4511143 m!5251019))

(assert (=> b!4510794 d!1387558))

(declare-fun d!1387560 () Bool)

(declare-fun tail!7704 (List!50723) List!50723)

(assert (=> d!1387560 (= (tail!7702 lm!1477) (ListLongMap!2928 (tail!7704 (toList!4296 lm!1477))))))

(declare-fun bs!847078 () Bool)

(assert (= bs!847078 d!1387560))

(declare-fun m!5251021 () Bool)

(assert (=> bs!847078 m!5251021))

(assert (=> b!4510794 d!1387560))

(declare-fun b!4511144 () Bool)

(declare-fun e!2810320 () Unit!93482)

(declare-fun lt!1689472 () Unit!93482)

(assert (=> b!4511144 (= e!2810320 lt!1689472)))

(declare-fun lt!1689478 () Unit!93482)

(assert (=> b!4511144 (= lt!1689478 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689045) key!3287))))

(assert (=> b!4511144 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689045) key!3287))))

(declare-fun lt!1689476 () Unit!93482)

(assert (=> b!4511144 (= lt!1689476 lt!1689478)))

(assert (=> b!4511144 (= lt!1689472 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689045) key!3287))))

(declare-fun call!314125 () Bool)

(assert (=> b!4511144 call!314125))

(declare-fun b!4511145 () Bool)

(declare-fun e!2810318 () List!50725)

(assert (=> b!4511145 (= e!2810318 (keys!17562 lt!1689045))))

(declare-fun b!4511146 () Bool)

(declare-fun e!2810319 () Unit!93482)

(declare-fun Unit!93543 () Unit!93482)

(assert (=> b!4511146 (= e!2810319 Unit!93543)))

(declare-fun b!4511147 () Bool)

(assert (=> b!4511147 (= e!2810318 (getKeysList!449 (toList!4295 lt!1689045)))))

(declare-fun b!4511148 () Bool)

(declare-fun e!2810322 () Bool)

(assert (=> b!4511148 (= e!2810322 (not (contains!13303 (keys!17562 lt!1689045) key!3287)))))

(declare-fun b!4511149 () Bool)

(declare-fun e!2810321 () Bool)

(declare-fun e!2810317 () Bool)

(assert (=> b!4511149 (= e!2810321 e!2810317)))

(declare-fun res!1876477 () Bool)

(assert (=> b!4511149 (=> (not res!1876477) (not e!2810317))))

(assert (=> b!4511149 (= res!1876477 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689045) key!3287)))))

(declare-fun b!4511150 () Bool)

(assert (=> b!4511150 (= e!2810320 e!2810319)))

(declare-fun c!769492 () Bool)

(assert (=> b!4511150 (= c!769492 call!314125)))

(declare-fun b!4511151 () Bool)

(assert (=> b!4511151 false))

(declare-fun lt!1689473 () Unit!93482)

(declare-fun lt!1689474 () Unit!93482)

(assert (=> b!4511151 (= lt!1689473 lt!1689474)))

(assert (=> b!4511151 (containsKey!1736 (toList!4295 lt!1689045) key!3287)))

(assert (=> b!4511151 (= lt!1689474 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689045) key!3287))))

(declare-fun Unit!93544 () Unit!93482)

(assert (=> b!4511151 (= e!2810319 Unit!93544)))

(declare-fun b!4511152 () Bool)

(assert (=> b!4511152 (= e!2810317 (contains!13303 (keys!17562 lt!1689045) key!3287))))

(declare-fun d!1387562 () Bool)

(assert (=> d!1387562 e!2810321))

(declare-fun res!1876476 () Bool)

(assert (=> d!1387562 (=> res!1876476 e!2810321)))

(assert (=> d!1387562 (= res!1876476 e!2810322)))

(declare-fun res!1876478 () Bool)

(assert (=> d!1387562 (=> (not res!1876478) (not e!2810322))))

(declare-fun lt!1689479 () Bool)

(assert (=> d!1387562 (= res!1876478 (not lt!1689479))))

(declare-fun lt!1689475 () Bool)

(assert (=> d!1387562 (= lt!1689479 lt!1689475)))

(declare-fun lt!1689477 () Unit!93482)

(assert (=> d!1387562 (= lt!1689477 e!2810320)))

(declare-fun c!769490 () Bool)

(assert (=> d!1387562 (= c!769490 lt!1689475)))

(assert (=> d!1387562 (= lt!1689475 (containsKey!1736 (toList!4295 lt!1689045) key!3287))))

(assert (=> d!1387562 (= (contains!13299 lt!1689045 key!3287) lt!1689479)))

(declare-fun bm!314120 () Bool)

(assert (=> bm!314120 (= call!314125 (contains!13303 e!2810318 key!3287))))

(declare-fun c!769491 () Bool)

(assert (=> bm!314120 (= c!769491 c!769490)))

(assert (= (and d!1387562 c!769490) b!4511144))

(assert (= (and d!1387562 (not c!769490)) b!4511150))

(assert (= (and b!4511150 c!769492) b!4511151))

(assert (= (and b!4511150 (not c!769492)) b!4511146))

(assert (= (or b!4511144 b!4511150) bm!314120))

(assert (= (and bm!314120 c!769491) b!4511147))

(assert (= (and bm!314120 (not c!769491)) b!4511145))

(assert (= (and d!1387562 res!1876478) b!4511148))

(assert (= (and d!1387562 (not res!1876476)) b!4511149))

(assert (= (and b!4511149 res!1876477) b!4511152))

(declare-fun m!5251023 () Bool)

(assert (=> d!1387562 m!5251023))

(declare-fun m!5251025 () Bool)

(assert (=> b!4511152 m!5251025))

(assert (=> b!4511152 m!5251025))

(declare-fun m!5251027 () Bool)

(assert (=> b!4511152 m!5251027))

(assert (=> b!4511151 m!5251023))

(declare-fun m!5251029 () Bool)

(assert (=> b!4511151 m!5251029))

(declare-fun m!5251031 () Bool)

(assert (=> b!4511144 m!5251031))

(declare-fun m!5251033 () Bool)

(assert (=> b!4511144 m!5251033))

(assert (=> b!4511144 m!5251033))

(declare-fun m!5251035 () Bool)

(assert (=> b!4511144 m!5251035))

(declare-fun m!5251037 () Bool)

(assert (=> b!4511144 m!5251037))

(assert (=> b!4511145 m!5251025))

(declare-fun m!5251039 () Bool)

(assert (=> b!4511147 m!5251039))

(assert (=> b!4511149 m!5251033))

(assert (=> b!4511149 m!5251033))

(assert (=> b!4511149 m!5251035))

(assert (=> b!4511148 m!5251025))

(assert (=> b!4511148 m!5251025))

(assert (=> b!4511148 m!5251027))

(declare-fun m!5251041 () Bool)

(assert (=> bm!314120 m!5251041))

(assert (=> b!4510783 d!1387562))

(declare-fun bs!847079 () Bool)

(declare-fun d!1387564 () Bool)

(assert (= bs!847079 (and d!1387564 d!1387548)))

(declare-fun lambda!170667 () Int)

(assert (=> bs!847079 (= lambda!170667 lambda!170662)))

(declare-fun bs!847080 () Bool)

(assert (= bs!847080 (and d!1387564 d!1387406)))

(assert (=> bs!847080 (not (= lambda!170667 lambda!170553))))

(declare-fun bs!847081 () Bool)

(assert (= bs!847081 (and d!1387564 d!1387450)))

(assert (=> bs!847081 (= lambda!170667 lambda!170565)))

(declare-fun bs!847082 () Bool)

(assert (= bs!847082 (and d!1387564 start!445924)))

(assert (=> bs!847082 (= lambda!170667 lambda!170537)))

(declare-fun bs!847083 () Bool)

(assert (= bs!847083 (and d!1387564 d!1387370)))

(assert (=> bs!847083 (= lambda!170667 lambda!170540)))

(declare-fun bs!847084 () Bool)

(assert (= bs!847084 (and d!1387564 d!1387506)))

(assert (=> bs!847084 (= lambda!170667 lambda!170651)))

(declare-fun bs!847085 () Bool)

(assert (= bs!847085 (and d!1387564 d!1387556)))

(assert (=> bs!847085 (= lambda!170667 lambda!170666)))

(declare-fun bs!847086 () Bool)

(assert (= bs!847086 (and d!1387564 d!1387428)))

(assert (=> bs!847086 (= lambda!170667 lambda!170561)))

(declare-fun bs!847087 () Bool)

(assert (= bs!847087 (and d!1387564 d!1387448)))

(assert (=> bs!847087 (= lambda!170667 lambda!170562)))

(declare-fun bs!847088 () Bool)

(assert (= bs!847088 (and d!1387564 d!1387550)))

(assert (=> bs!847088 (= lambda!170667 lambda!170665)))

(declare-fun bs!847089 () Bool)

(assert (= bs!847089 (and d!1387564 d!1387536)))

(assert (=> bs!847089 (= lambda!170667 lambda!170661)))

(declare-fun bs!847090 () Bool)

(assert (= bs!847090 (and d!1387564 d!1387372)))

(assert (=> bs!847090 (= lambda!170667 lambda!170543)))

(declare-fun lt!1689480 () ListMap!3557)

(assert (=> d!1387564 (invariantList!1001 (toList!4295 lt!1689480))))

(declare-fun e!2810323 () ListMap!3557)

(assert (=> d!1387564 (= lt!1689480 e!2810323)))

(declare-fun c!769493 () Bool)

(assert (=> d!1387564 (= c!769493 ((_ is Cons!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387564 (forall!10223 (toList!4296 lm!1477) lambda!170667)))

(assert (=> d!1387564 (= (extractMap!1200 (toList!4296 lm!1477)) lt!1689480)))

(declare-fun b!4511153 () Bool)

(assert (=> b!4511153 (= e!2810323 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun b!4511154 () Bool)

(assert (=> b!4511154 (= e!2810323 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387564 c!769493) b!4511153))

(assert (= (and d!1387564 (not c!769493)) b!4511154))

(declare-fun m!5251043 () Bool)

(assert (=> d!1387564 m!5251043))

(declare-fun m!5251045 () Bool)

(assert (=> d!1387564 m!5251045))

(assert (=> b!4511153 m!5250243))

(assert (=> b!4511153 m!5250243))

(declare-fun m!5251047 () Bool)

(assert (=> b!4511153 m!5251047))

(assert (=> b!4510783 d!1387564))

(declare-fun d!1387566 () Bool)

(declare-fun res!1876483 () Bool)

(declare-fun e!2810328 () Bool)

(assert (=> d!1387566 (=> res!1876483 e!2810328)))

(assert (=> d!1387566 (= res!1876483 (not ((_ is Cons!50598) newBucket!178)))))

(assert (=> d!1387566 (= (noDuplicateKeys!1144 newBucket!178) e!2810328)))

(declare-fun b!4511159 () Bool)

(declare-fun e!2810329 () Bool)

(assert (=> b!4511159 (= e!2810328 e!2810329)))

(declare-fun res!1876484 () Bool)

(assert (=> b!4511159 (=> (not res!1876484) (not e!2810329))))

(assert (=> b!4511159 (= res!1876484 (not (containsKey!1732 (t!357684 newBucket!178) (_1!28799 (h!56435 newBucket!178)))))))

(declare-fun b!4511160 () Bool)

(assert (=> b!4511160 (= e!2810329 (noDuplicateKeys!1144 (t!357684 newBucket!178)))))

(assert (= (and d!1387566 (not res!1876483)) b!4511159))

(assert (= (and b!4511159 res!1876484) b!4511160))

(declare-fun m!5251049 () Bool)

(assert (=> b!4511159 m!5251049))

(declare-fun m!5251051 () Bool)

(assert (=> b!4511160 m!5251051))

(assert (=> b!4510804 d!1387566))

(declare-fun b!4511165 () Bool)

(declare-fun e!2810332 () Bool)

(declare-fun tp!1337823 () Bool)

(declare-fun tp!1337824 () Bool)

(assert (=> b!4511165 (= e!2810332 (and tp!1337823 tp!1337824))))

(assert (=> b!4510786 (= tp!1337809 e!2810332)))

(assert (= (and b!4510786 ((_ is Cons!50599) (toList!4296 lm!1477))) b!4511165))

(declare-fun b!4511170 () Bool)

(declare-fun e!2810335 () Bool)

(declare-fun tp!1337827 () Bool)

(assert (=> b!4511170 (= e!2810335 (and tp_is_empty!27853 tp_is_empty!27855 tp!1337827))))

(assert (=> b!4510785 (= tp!1337808 e!2810335)))

(assert (= (and b!4510785 ((_ is Cons!50598) (t!357684 newBucket!178))) b!4511170))

(declare-fun b_lambda!153765 () Bool)

(assert (= b_lambda!153753 (or start!445924 b_lambda!153765)))

(declare-fun bs!847091 () Bool)

(declare-fun d!1387568 () Bool)

(assert (= bs!847091 (and d!1387568 start!445924)))

(assert (=> bs!847091 (= (dynLambda!21139 lambda!170537 lt!1689062) (noDuplicateKeys!1144 (_2!28800 lt!1689062)))))

(declare-fun m!5251053 () Bool)

(assert (=> bs!847091 m!5251053))

(assert (=> d!1387400 d!1387568))

(declare-fun b_lambda!153767 () Bool)

(assert (= b_lambda!153763 (or start!445924 b_lambda!153767)))

(declare-fun bs!847092 () Bool)

(declare-fun d!1387570 () Bool)

(assert (= bs!847092 (and d!1387570 start!445924)))

(assert (=> bs!847092 (= (dynLambda!21139 lambda!170537 (h!56436 (toList!4296 lm!1477))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(declare-fun m!5251055 () Bool)

(assert (=> bs!847092 m!5251055))

(assert (=> b!4511107 d!1387570))

(check-sat (not d!1387382) (not d!1387550) (not b!4510984) (not b!4510975) (not b!4511133) (not bs!847092) (not d!1387562) (not b!4510936) (not b!4511144) (not b!4510982) (not b!4511112) (not b!4511153) (not d!1387538) (not b!4510903) (not b!4510869) (not b!4511132) (not d!1387556) (not d!1387526) (not d!1387564) (not b!4510974) (not d!1387426) (not b!4511135) (not b!4511165) (not b!4510842) (not d!1387456) (not bm!314118) (not b!4510934) (not d!1387450) (not d!1387448) (not b!4510977) (not b!4511111) (not d!1387384) tp_is_empty!27855 (not d!1387370) (not b!4510892) (not d!1387392) (not b!4511127) (not b!4511069) (not b_lambda!153765) (not b!4511138) (not d!1387520) (not b!4511159) (not b!4510981) (not d!1387376) (not b!4511108) (not d!1387560) (not d!1387428) (not b!4511110) (not d!1387412) (not b!4510853) (not b!4511147) (not d!1387530) (not bm!314114) (not b!4511129) (not b!4511137) (not b!4511126) (not d!1387542) (not b!4511160) (not d!1387406) (not b!4511139) (not d!1387446) (not b!4511148) (not b!4510973) (not b!4511124) (not b!4511151) (not d!1387548) (not d!1387454) (not b!4511068) (not d!1387518) (not b!4510978) (not d!1387544) (not bm!314117) (not b!4510812) (not d!1387506) (not bm!314093) (not d!1387540) (not b!4510946) (not bm!314119) (not d!1387546) (not b!4510919) (not b!4510967) (not d!1387536) (not bm!314116) (not d!1387414) (not b!4510871) (not bm!314120) (not d!1387524) (not b!4510970) (not d!1387378) (not b!4511170) (not d!1387552) (not d!1387554) (not b!4510969) (not b_lambda!153767) (not b!4510985) (not b!4511145) (not b!4511087) (not b!4510937) (not b!4511067) (not d!1387372) (not b!4511152) (not b!4510980) (not b!4510966) (not d!1387452) (not d!1387458) (not b!4511141) (not b!4511066) (not b!4510971) (not b!4511149) (not bm!314115) (not d!1387522) (not d!1387516) (not b!4510935) (not d!1387400) tp_is_empty!27853 (not b!4511143) (not bs!847091) (not bm!314094) (not b!4511134) (not d!1387528) (not d!1387558) (not b!4511109))
(check-sat)
(get-model)

(assert (=> d!1387550 d!1387428))

(declare-fun d!1387572 () Bool)

(declare-fun res!1876485 () Bool)

(declare-fun e!2810336 () Bool)

(assert (=> d!1387572 (=> res!1876485 e!2810336)))

(assert (=> d!1387572 (= res!1876485 ((_ is Nil!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1387572 (= (forall!10223 (toList!4296 lt!1689057) lambda!170665) e!2810336)))

(declare-fun b!4511171 () Bool)

(declare-fun e!2810337 () Bool)

(assert (=> b!4511171 (= e!2810336 e!2810337)))

(declare-fun res!1876486 () Bool)

(assert (=> b!4511171 (=> (not res!1876486) (not e!2810337))))

(assert (=> b!4511171 (= res!1876486 (dynLambda!21139 lambda!170665 (h!56436 (toList!4296 lt!1689057))))))

(declare-fun b!4511172 () Bool)

(assert (=> b!4511172 (= e!2810337 (forall!10223 (t!357685 (toList!4296 lt!1689057)) lambda!170665))))

(assert (= (and d!1387572 (not res!1876485)) b!4511171))

(assert (= (and b!4511171 res!1876486) b!4511172))

(declare-fun b_lambda!153769 () Bool)

(assert (=> (not b_lambda!153769) (not b!4511171)))

(declare-fun m!5251057 () Bool)

(assert (=> b!4511171 m!5251057))

(declare-fun m!5251059 () Bool)

(assert (=> b!4511172 m!5251059))

(assert (=> d!1387550 d!1387572))

(declare-fun d!1387574 () Bool)

(assert (=> d!1387574 (eq!601 (extractMap!1200 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))) (-!370 (extractMap!1200 (toList!4296 lt!1689057)) key!3287))))

(assert (=> d!1387574 true))

(declare-fun _$8!629 () Unit!93482)

(assert (=> d!1387574 (= (choose!29322 lt!1689057 hash!344 newBucket!178 key!3287 hashF!1107) _$8!629)))

(declare-fun bs!847093 () Bool)

(assert (= bs!847093 d!1387574))

(assert (=> bs!847093 m!5250241))

(assert (=> bs!847093 m!5250983))

(assert (=> bs!847093 m!5250983))

(assert (=> bs!847093 m!5250985))

(assert (=> bs!847093 m!5250987))

(assert (=> bs!847093 m!5250989))

(assert (=> bs!847093 m!5250241))

(assert (=> bs!847093 m!5250985))

(assert (=> d!1387550 d!1387574))

(declare-fun d!1387576 () Bool)

(assert (=> d!1387576 (= (eq!601 (extractMap!1200 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))) (-!370 (extractMap!1200 (toList!4296 lt!1689057)) key!3287)) (= (content!8309 (toList!4295 (extractMap!1200 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))))) (content!8309 (toList!4295 (-!370 (extractMap!1200 (toList!4296 lt!1689057)) key!3287)))))))

(declare-fun bs!847094 () Bool)

(assert (= bs!847094 d!1387576))

(declare-fun m!5251061 () Bool)

(assert (=> bs!847094 m!5251061))

(declare-fun m!5251063 () Bool)

(assert (=> bs!847094 m!5251063))

(assert (=> d!1387550 d!1387576))

(declare-fun d!1387578 () Bool)

(declare-fun e!2810338 () Bool)

(assert (=> d!1387578 e!2810338))

(declare-fun res!1876488 () Bool)

(assert (=> d!1387578 (=> (not res!1876488) (not e!2810338))))

(declare-fun lt!1689484 () ListLongMap!2927)

(assert (=> d!1387578 (= res!1876488 (contains!13300 lt!1689484 (_1!28800 (tuple2!51013 hash!344 newBucket!178))))))

(declare-fun lt!1689483 () List!50723)

(assert (=> d!1387578 (= lt!1689484 (ListLongMap!2928 lt!1689483))))

(declare-fun lt!1689482 () Unit!93482)

(declare-fun lt!1689481 () Unit!93482)

(assert (=> d!1387578 (= lt!1689482 lt!1689481)))

(assert (=> d!1387578 (= (getValueByKey!1060 lt!1689483 (_1!28800 (tuple2!51013 hash!344 newBucket!178))) (Some!11079 (_2!28800 (tuple2!51013 hash!344 newBucket!178))))))

(assert (=> d!1387578 (= lt!1689481 (lemmaContainsTupThenGetReturnValue!654 lt!1689483 (_1!28800 (tuple2!51013 hash!344 newBucket!178)) (_2!28800 (tuple2!51013 hash!344 newBucket!178))))))

(assert (=> d!1387578 (= lt!1689483 (insertStrictlySorted!392 (toList!4296 lt!1689057) (_1!28800 (tuple2!51013 hash!344 newBucket!178)) (_2!28800 (tuple2!51013 hash!344 newBucket!178))))))

(assert (=> d!1387578 (= (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)) lt!1689484)))

(declare-fun b!4511173 () Bool)

(declare-fun res!1876487 () Bool)

(assert (=> b!4511173 (=> (not res!1876487) (not e!2810338))))

(assert (=> b!4511173 (= res!1876487 (= (getValueByKey!1060 (toList!4296 lt!1689484) (_1!28800 (tuple2!51013 hash!344 newBucket!178))) (Some!11079 (_2!28800 (tuple2!51013 hash!344 newBucket!178)))))))

(declare-fun b!4511174 () Bool)

(assert (=> b!4511174 (= e!2810338 (contains!13301 (toList!4296 lt!1689484) (tuple2!51013 hash!344 newBucket!178)))))

(assert (= (and d!1387578 res!1876488) b!4511173))

(assert (= (and b!4511173 res!1876487) b!4511174))

(declare-fun m!5251065 () Bool)

(assert (=> d!1387578 m!5251065))

(declare-fun m!5251067 () Bool)

(assert (=> d!1387578 m!5251067))

(declare-fun m!5251069 () Bool)

(assert (=> d!1387578 m!5251069))

(declare-fun m!5251071 () Bool)

(assert (=> d!1387578 m!5251071))

(declare-fun m!5251073 () Bool)

(assert (=> b!4511173 m!5251073))

(declare-fun m!5251075 () Bool)

(assert (=> b!4511174 m!5251075))

(assert (=> d!1387550 d!1387578))

(declare-fun d!1387580 () Bool)

(declare-fun e!2810339 () Bool)

(assert (=> d!1387580 e!2810339))

(declare-fun res!1876489 () Bool)

(assert (=> d!1387580 (=> (not res!1876489) (not e!2810339))))

(declare-fun lt!1689485 () ListMap!3557)

(assert (=> d!1387580 (= res!1876489 (not (contains!13299 lt!1689485 key!3287)))))

(assert (=> d!1387580 (= lt!1689485 (ListMap!3558 (removePresrvNoDuplicatedKeys!125 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287)))))

(assert (=> d!1387580 (= (-!370 (extractMap!1200 (toList!4296 lt!1689057)) key!3287) lt!1689485)))

(declare-fun b!4511175 () Bool)

(assert (=> b!4511175 (= e!2810339 (= ((_ map and) (content!8311 (keys!17562 (extractMap!1200 (toList!4296 lt!1689057)))) ((_ map not) (store ((as const (Array K!12000 Bool)) false) key!3287 true))) (content!8311 (keys!17562 lt!1689485))))))

(assert (= (and d!1387580 res!1876489) b!4511175))

(declare-fun m!5251077 () Bool)

(assert (=> d!1387580 m!5251077))

(declare-fun m!5251079 () Bool)

(assert (=> d!1387580 m!5251079))

(assert (=> b!4511175 m!5250949))

(assert (=> b!4511175 m!5250241))

(declare-fun m!5251081 () Bool)

(assert (=> b!4511175 m!5251081))

(declare-fun m!5251083 () Bool)

(assert (=> b!4511175 m!5251083))

(assert (=> b!4511175 m!5251081))

(declare-fun m!5251085 () Bool)

(assert (=> b!4511175 m!5251085))

(assert (=> b!4511175 m!5251083))

(declare-fun m!5251087 () Bool)

(assert (=> b!4511175 m!5251087))

(assert (=> d!1387550 d!1387580))

(declare-fun bs!847095 () Bool)

(declare-fun d!1387582 () Bool)

(assert (= bs!847095 (and d!1387582 d!1387548)))

(declare-fun lambda!170668 () Int)

(assert (=> bs!847095 (= lambda!170668 lambda!170662)))

(declare-fun bs!847096 () Bool)

(assert (= bs!847096 (and d!1387582 d!1387564)))

(assert (=> bs!847096 (= lambda!170668 lambda!170667)))

(declare-fun bs!847097 () Bool)

(assert (= bs!847097 (and d!1387582 d!1387406)))

(assert (=> bs!847097 (not (= lambda!170668 lambda!170553))))

(declare-fun bs!847098 () Bool)

(assert (= bs!847098 (and d!1387582 d!1387450)))

(assert (=> bs!847098 (= lambda!170668 lambda!170565)))

(declare-fun bs!847099 () Bool)

(assert (= bs!847099 (and d!1387582 start!445924)))

(assert (=> bs!847099 (= lambda!170668 lambda!170537)))

(declare-fun bs!847100 () Bool)

(assert (= bs!847100 (and d!1387582 d!1387370)))

(assert (=> bs!847100 (= lambda!170668 lambda!170540)))

(declare-fun bs!847101 () Bool)

(assert (= bs!847101 (and d!1387582 d!1387506)))

(assert (=> bs!847101 (= lambda!170668 lambda!170651)))

(declare-fun bs!847102 () Bool)

(assert (= bs!847102 (and d!1387582 d!1387556)))

(assert (=> bs!847102 (= lambda!170668 lambda!170666)))

(declare-fun bs!847103 () Bool)

(assert (= bs!847103 (and d!1387582 d!1387428)))

(assert (=> bs!847103 (= lambda!170668 lambda!170561)))

(declare-fun bs!847104 () Bool)

(assert (= bs!847104 (and d!1387582 d!1387448)))

(assert (=> bs!847104 (= lambda!170668 lambda!170562)))

(declare-fun bs!847105 () Bool)

(assert (= bs!847105 (and d!1387582 d!1387550)))

(assert (=> bs!847105 (= lambda!170668 lambda!170665)))

(declare-fun bs!847106 () Bool)

(assert (= bs!847106 (and d!1387582 d!1387536)))

(assert (=> bs!847106 (= lambda!170668 lambda!170661)))

(declare-fun bs!847107 () Bool)

(assert (= bs!847107 (and d!1387582 d!1387372)))

(assert (=> bs!847107 (= lambda!170668 lambda!170543)))

(declare-fun lt!1689486 () ListMap!3557)

(assert (=> d!1387582 (invariantList!1001 (toList!4295 lt!1689486))))

(declare-fun e!2810340 () ListMap!3557)

(assert (=> d!1387582 (= lt!1689486 e!2810340)))

(declare-fun c!769494 () Bool)

(assert (=> d!1387582 (= c!769494 ((_ is Cons!50599) (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))))))

(assert (=> d!1387582 (forall!10223 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178))) lambda!170668)))

(assert (=> d!1387582 (= (extractMap!1200 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))) lt!1689486)))

(declare-fun b!4511176 () Bool)

(assert (=> b!4511176 (= e!2810340 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178))))) (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 (tuple2!51013 hash!344 newBucket!178)))))))))

(declare-fun b!4511177 () Bool)

(assert (=> b!4511177 (= e!2810340 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387582 c!769494) b!4511176))

(assert (= (and d!1387582 (not c!769494)) b!4511177))

(declare-fun m!5251089 () Bool)

(assert (=> d!1387582 m!5251089))

(declare-fun m!5251091 () Bool)

(assert (=> d!1387582 m!5251091))

(declare-fun m!5251093 () Bool)

(assert (=> b!4511176 m!5251093))

(assert (=> b!4511176 m!5251093))

(declare-fun m!5251095 () Bool)

(assert (=> b!4511176 m!5251095))

(assert (=> d!1387550 d!1387582))

(declare-fun b!4511179 () Bool)

(declare-fun e!2810342 () List!50722)

(declare-fun e!2810341 () List!50722)

(assert (=> b!4511179 (= e!2810342 e!2810341)))

(declare-fun c!769495 () Bool)

(assert (=> b!4511179 (= c!769495 ((_ is Cons!50598) (t!357684 lt!1689047)))))

(declare-fun b!4511181 () Bool)

(assert (=> b!4511181 (= e!2810341 Nil!50598)))

(declare-fun b!4511180 () Bool)

(assert (=> b!4511180 (= e!2810341 (Cons!50598 (h!56435 (t!357684 lt!1689047)) (removePairForKey!771 (t!357684 (t!357684 lt!1689047)) key!3287)))))

(declare-fun d!1387584 () Bool)

(declare-fun lt!1689487 () List!50722)

(assert (=> d!1387584 (not (containsKey!1732 lt!1689487 key!3287))))

(assert (=> d!1387584 (= lt!1689487 e!2810342)))

(declare-fun c!769496 () Bool)

(assert (=> d!1387584 (= c!769496 (and ((_ is Cons!50598) (t!357684 lt!1689047)) (= (_1!28799 (h!56435 (t!357684 lt!1689047))) key!3287)))))

(assert (=> d!1387584 (noDuplicateKeys!1144 (t!357684 lt!1689047))))

(assert (=> d!1387584 (= (removePairForKey!771 (t!357684 lt!1689047) key!3287) lt!1689487)))

(declare-fun b!4511178 () Bool)

(assert (=> b!4511178 (= e!2810342 (t!357684 (t!357684 lt!1689047)))))

(assert (= (and d!1387584 c!769496) b!4511178))

(assert (= (and d!1387584 (not c!769496)) b!4511179))

(assert (= (and b!4511179 c!769495) b!4511180))

(assert (= (and b!4511179 (not c!769495)) b!4511181))

(declare-fun m!5251097 () Bool)

(assert (=> b!4511180 m!5251097))

(declare-fun m!5251099 () Bool)

(assert (=> d!1387584 m!5251099))

(declare-fun m!5251101 () Bool)

(assert (=> d!1387584 m!5251101))

(assert (=> b!4510853 d!1387584))

(declare-fun d!1387586 () Bool)

(declare-fun res!1876494 () Bool)

(declare-fun e!2810347 () Bool)

(assert (=> d!1387586 (=> res!1876494 e!2810347)))

(assert (=> d!1387586 (= res!1876494 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (= (_1!28800 (h!56436 (toList!4296 lm!1477))) lt!1689054)))))

(assert (=> d!1387586 (= (containsKey!1735 (toList!4296 lm!1477) lt!1689054) e!2810347)))

(declare-fun b!4511186 () Bool)

(declare-fun e!2810348 () Bool)

(assert (=> b!4511186 (= e!2810347 e!2810348)))

(declare-fun res!1876495 () Bool)

(assert (=> b!4511186 (=> (not res!1876495) (not e!2810348))))

(assert (=> b!4511186 (= res!1876495 (and (or (not ((_ is Cons!50599) (toList!4296 lm!1477))) (bvsle (_1!28800 (h!56436 (toList!4296 lm!1477))) lt!1689054)) ((_ is Cons!50599) (toList!4296 lm!1477)) (bvslt (_1!28800 (h!56436 (toList!4296 lm!1477))) lt!1689054)))))

(declare-fun b!4511187 () Bool)

(assert (=> b!4511187 (= e!2810348 (containsKey!1735 (t!357685 (toList!4296 lm!1477)) lt!1689054))))

(assert (= (and d!1387586 (not res!1876494)) b!4511186))

(assert (= (and b!4511186 res!1876495) b!4511187))

(declare-fun m!5251103 () Bool)

(assert (=> b!4511187 m!5251103))

(assert (=> d!1387384 d!1387586))

(declare-fun d!1387588 () Bool)

(declare-fun noDuplicatedKeys!254 (List!50722) Bool)

(assert (=> d!1387588 (= (invariantList!1001 (toList!4295 lt!1689430)) (noDuplicatedKeys!254 (toList!4295 lt!1689430)))))

(declare-fun bs!847108 () Bool)

(assert (= bs!847108 d!1387588))

(declare-fun m!5251105 () Bool)

(assert (=> bs!847108 m!5251105))

(assert (=> b!4511110 d!1387588))

(declare-fun bs!847109 () Bool)

(declare-fun b!4511192 () Bool)

(assert (= bs!847109 (and b!4511192 b!4511066)))

(declare-fun lambda!170669 () Int)

(assert (=> bs!847109 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689409) (= lambda!170669 lambda!170649))))

(declare-fun bs!847110 () Bool)

(assert (= bs!847110 (and b!4511192 b!4511109)))

(assert (=> bs!847110 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689048) (= lambda!170669 lambda!170653))))

(declare-fun bs!847111 () Bool)

(assert (= bs!847111 (and b!4511192 b!4511113)))

(assert (=> bs!847111 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689048) (= lambda!170669 lambda!170652))))

(assert (=> bs!847109 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689058) (= lambda!170669 lambda!170648))))

(declare-fun bs!847112 () Bool)

(assert (= bs!847112 (and b!4511192 d!1387526)))

(assert (=> bs!847112 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689430) (= lambda!170669 lambda!170655))))

(declare-fun bs!847113 () Bool)

(assert (= bs!847113 (and b!4511192 d!1387530)))

(assert (=> bs!847113 (not (= lambda!170669 lambda!170658))))

(assert (=> bs!847110 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689441) (= lambda!170669 lambda!170654))))

(declare-fun bs!847114 () Bool)

(assert (= bs!847114 (and b!4511192 d!1387458)))

(assert (=> bs!847114 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689398) (= lambda!170669 lambda!170650))))

(declare-fun bs!847115 () Bool)

(assert (= bs!847115 (and b!4511192 b!4511070)))

(assert (=> bs!847115 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689058) (= lambda!170669 lambda!170647))))

(assert (=> b!4511192 true))

(declare-fun bs!847116 () Bool)

(declare-fun b!4511188 () Bool)

(assert (= bs!847116 (and b!4511188 b!4511066)))

(declare-fun lambda!170670 () Int)

(assert (=> bs!847116 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689409) (= lambda!170670 lambda!170649))))

(declare-fun bs!847117 () Bool)

(assert (= bs!847117 (and b!4511188 b!4511192)))

(assert (=> bs!847117 (= lambda!170670 lambda!170669)))

(declare-fun bs!847118 () Bool)

(assert (= bs!847118 (and b!4511188 b!4511109)))

(assert (=> bs!847118 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689048) (= lambda!170670 lambda!170653))))

(declare-fun bs!847119 () Bool)

(assert (= bs!847119 (and b!4511188 b!4511113)))

(assert (=> bs!847119 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689048) (= lambda!170670 lambda!170652))))

(assert (=> bs!847116 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689058) (= lambda!170670 lambda!170648))))

(declare-fun bs!847120 () Bool)

(assert (= bs!847120 (and b!4511188 d!1387526)))

(assert (=> bs!847120 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689430) (= lambda!170670 lambda!170655))))

(declare-fun bs!847121 () Bool)

(assert (= bs!847121 (and b!4511188 d!1387530)))

(assert (=> bs!847121 (not (= lambda!170670 lambda!170658))))

(assert (=> bs!847118 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689441) (= lambda!170670 lambda!170654))))

(declare-fun bs!847122 () Bool)

(assert (= bs!847122 (and b!4511188 d!1387458)))

(assert (=> bs!847122 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689398) (= lambda!170670 lambda!170650))))

(declare-fun bs!847123 () Bool)

(assert (= bs!847123 (and b!4511188 b!4511070)))

(assert (=> bs!847123 (= (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689058) (= lambda!170670 lambda!170647))))

(assert (=> b!4511188 true))

(declare-fun lambda!170671 () Int)

(declare-fun lt!1689504 () ListMap!3557)

(assert (=> b!4511188 (= (= lt!1689504 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170671 lambda!170670))))

(assert (=> bs!847116 (= (= lt!1689504 lt!1689409) (= lambda!170671 lambda!170649))))

(assert (=> bs!847117 (= (= lt!1689504 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170671 lambda!170669))))

(assert (=> bs!847118 (= (= lt!1689504 lt!1689048) (= lambda!170671 lambda!170653))))

(assert (=> bs!847119 (= (= lt!1689504 lt!1689048) (= lambda!170671 lambda!170652))))

(assert (=> bs!847116 (= (= lt!1689504 lt!1689058) (= lambda!170671 lambda!170648))))

(assert (=> bs!847120 (= (= lt!1689504 lt!1689430) (= lambda!170671 lambda!170655))))

(assert (=> bs!847121 (not (= lambda!170671 lambda!170658))))

(assert (=> bs!847118 (= (= lt!1689504 lt!1689441) (= lambda!170671 lambda!170654))))

(assert (=> bs!847122 (= (= lt!1689504 lt!1689398) (= lambda!170671 lambda!170650))))

(assert (=> bs!847123 (= (= lt!1689504 lt!1689058) (= lambda!170671 lambda!170647))))

(assert (=> b!4511188 true))

(declare-fun bs!847124 () Bool)

(declare-fun d!1387590 () Bool)

(assert (= bs!847124 (and d!1387590 b!4511188)))

(declare-fun lambda!170672 () Int)

(declare-fun lt!1689493 () ListMap!3557)

(assert (=> bs!847124 (= (= lt!1689493 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170672 lambda!170670))))

(declare-fun bs!847125 () Bool)

(assert (= bs!847125 (and d!1387590 b!4511066)))

(assert (=> bs!847125 (= (= lt!1689493 lt!1689409) (= lambda!170672 lambda!170649))))

(declare-fun bs!847126 () Bool)

(assert (= bs!847126 (and d!1387590 b!4511192)))

(assert (=> bs!847126 (= (= lt!1689493 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170672 lambda!170669))))

(declare-fun bs!847127 () Bool)

(assert (= bs!847127 (and d!1387590 b!4511109)))

(assert (=> bs!847127 (= (= lt!1689493 lt!1689048) (= lambda!170672 lambda!170653))))

(assert (=> bs!847124 (= (= lt!1689493 lt!1689504) (= lambda!170672 lambda!170671))))

(declare-fun bs!847128 () Bool)

(assert (= bs!847128 (and d!1387590 b!4511113)))

(assert (=> bs!847128 (= (= lt!1689493 lt!1689048) (= lambda!170672 lambda!170652))))

(assert (=> bs!847125 (= (= lt!1689493 lt!1689058) (= lambda!170672 lambda!170648))))

(declare-fun bs!847129 () Bool)

(assert (= bs!847129 (and d!1387590 d!1387526)))

(assert (=> bs!847129 (= (= lt!1689493 lt!1689430) (= lambda!170672 lambda!170655))))

(declare-fun bs!847130 () Bool)

(assert (= bs!847130 (and d!1387590 d!1387530)))

(assert (=> bs!847130 (not (= lambda!170672 lambda!170658))))

(assert (=> bs!847127 (= (= lt!1689493 lt!1689441) (= lambda!170672 lambda!170654))))

(declare-fun bs!847131 () Bool)

(assert (= bs!847131 (and d!1387590 d!1387458)))

(assert (=> bs!847131 (= (= lt!1689493 lt!1689398) (= lambda!170672 lambda!170650))))

(declare-fun bs!847132 () Bool)

(assert (= bs!847132 (and d!1387590 b!4511070)))

(assert (=> bs!847132 (= (= lt!1689493 lt!1689058) (= lambda!170672 lambda!170647))))

(assert (=> d!1387590 true))

(declare-fun bm!314121 () Bool)

(declare-fun call!314126 () Unit!93482)

(assert (=> bm!314121 (= call!314126 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun bm!314122 () Bool)

(declare-fun c!769497 () Bool)

(declare-fun call!314127 () Bool)

(assert (=> bm!314122 (= call!314127 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (ite c!769497 lambda!170669 lambda!170671)))))

(declare-fun e!2810350 () ListMap!3557)

(assert (=> b!4511188 (= e!2810350 lt!1689504)))

(declare-fun lt!1689489 () ListMap!3557)

(assert (=> b!4511188 (= lt!1689489 (+!1508 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))))))

(assert (=> b!4511188 (= lt!1689504 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))) (+!1508 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))))

(declare-fun lt!1689501 () Unit!93482)

(assert (=> b!4511188 (= lt!1689501 call!314126)))

(declare-fun call!314128 () Bool)

(assert (=> b!4511188 call!314128))

(declare-fun lt!1689497 () Unit!93482)

(assert (=> b!4511188 (= lt!1689497 lt!1689501)))

(assert (=> b!4511188 (forall!10225 (toList!4295 lt!1689489) lambda!170671)))

(declare-fun lt!1689490 () Unit!93482)

(declare-fun Unit!93546 () Unit!93482)

(assert (=> b!4511188 (= lt!1689490 Unit!93546)))

(assert (=> b!4511188 (forall!10225 (t!357684 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))) lambda!170671)))

(declare-fun lt!1689500 () Unit!93482)

(declare-fun Unit!93547 () Unit!93482)

(assert (=> b!4511188 (= lt!1689500 Unit!93547)))

(declare-fun lt!1689507 () Unit!93482)

(declare-fun Unit!93548 () Unit!93482)

(assert (=> b!4511188 (= lt!1689507 Unit!93548)))

(declare-fun lt!1689496 () Unit!93482)

(assert (=> b!4511188 (= lt!1689496 (forallContained!2477 (toList!4295 lt!1689489) lambda!170671 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))))))

(assert (=> b!4511188 (contains!13299 lt!1689489 (_1!28799 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun lt!1689508 () Unit!93482)

(declare-fun Unit!93549 () Unit!93482)

(assert (=> b!4511188 (= lt!1689508 Unit!93549)))

(assert (=> b!4511188 (contains!13299 lt!1689504 (_1!28799 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun lt!1689503 () Unit!93482)

(declare-fun Unit!93550 () Unit!93482)

(assert (=> b!4511188 (= lt!1689503 Unit!93550)))

(assert (=> b!4511188 (forall!10225 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) lambda!170671)))

(declare-fun lt!1689498 () Unit!93482)

(declare-fun Unit!93551 () Unit!93482)

(assert (=> b!4511188 (= lt!1689498 Unit!93551)))

(assert (=> b!4511188 (forall!10225 (toList!4295 lt!1689489) lambda!170671)))

(declare-fun lt!1689506 () Unit!93482)

(declare-fun Unit!93552 () Unit!93482)

(assert (=> b!4511188 (= lt!1689506 Unit!93552)))

(declare-fun lt!1689492 () Unit!93482)

(declare-fun Unit!93553 () Unit!93482)

(assert (=> b!4511188 (= lt!1689492 Unit!93553)))

(declare-fun lt!1689495 () Unit!93482)

(assert (=> b!4511188 (= lt!1689495 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689504 (_1!28799 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))))

(assert (=> b!4511188 call!314127))

(declare-fun lt!1689488 () Unit!93482)

(assert (=> b!4511188 (= lt!1689488 lt!1689495)))

(assert (=> b!4511188 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) lambda!170671)))

(declare-fun lt!1689494 () Unit!93482)

(declare-fun Unit!93554 () Unit!93482)

(assert (=> b!4511188 (= lt!1689494 Unit!93554)))

(declare-fun res!1876496 () Bool)

(assert (=> b!4511188 (= res!1876496 (forall!10225 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) lambda!170671))))

(declare-fun e!2810351 () Bool)

(assert (=> b!4511188 (=> (not res!1876496) (not e!2810351))))

(assert (=> b!4511188 e!2810351))

(declare-fun lt!1689505 () Unit!93482)

(declare-fun Unit!93555 () Unit!93482)

(assert (=> b!4511188 (= lt!1689505 Unit!93555)))

(declare-fun b!4511189 () Bool)

(declare-fun e!2810349 () Bool)

(assert (=> b!4511189 (= e!2810349 (invariantList!1001 (toList!4295 lt!1689493)))))

(declare-fun b!4511190 () Bool)

(declare-fun res!1876497 () Bool)

(assert (=> b!4511190 (=> (not res!1876497) (not e!2810349))))

(assert (=> b!4511190 (= res!1876497 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) lambda!170672))))

(declare-fun b!4511191 () Bool)

(assert (=> b!4511191 (= e!2810351 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) lambda!170671))))

(assert (=> b!4511192 (= e!2810350 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun lt!1689499 () Unit!93482)

(assert (=> b!4511192 (= lt!1689499 call!314126)))

(assert (=> b!4511192 call!314128))

(declare-fun lt!1689502 () Unit!93482)

(assert (=> b!4511192 (= lt!1689502 lt!1689499)))

(assert (=> b!4511192 call!314127))

(declare-fun lt!1689491 () Unit!93482)

(declare-fun Unit!93556 () Unit!93482)

(assert (=> b!4511192 (= lt!1689491 Unit!93556)))

(assert (=> d!1387590 e!2810349))

(declare-fun res!1876498 () Bool)

(assert (=> d!1387590 (=> (not res!1876498) (not e!2810349))))

(assert (=> d!1387590 (= res!1876498 (forall!10225 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) lambda!170672))))

(assert (=> d!1387590 (= lt!1689493 e!2810350)))

(assert (=> d!1387590 (= c!769497 ((_ is Nil!50598) (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> d!1387590 (noDuplicateKeys!1144 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387590 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) lt!1689493)))

(declare-fun bm!314123 () Bool)

(assert (=> bm!314123 (= call!314128 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (ite c!769497 lambda!170669 lambda!170670)))))

(assert (= (and d!1387590 c!769497) b!4511192))

(assert (= (and d!1387590 (not c!769497)) b!4511188))

(assert (= (and b!4511188 res!1876496) b!4511191))

(assert (= (or b!4511192 b!4511188) bm!314123))

(assert (= (or b!4511192 b!4511188) bm!314122))

(assert (= (or b!4511192 b!4511188) bm!314121))

(assert (= (and d!1387590 res!1876498) b!4511190))

(assert (= (and b!4511190 res!1876497) b!4511189))

(declare-fun m!5251107 () Bool)

(assert (=> b!4511188 m!5251107))

(declare-fun m!5251109 () Bool)

(assert (=> b!4511188 m!5251109))

(declare-fun m!5251111 () Bool)

(assert (=> b!4511188 m!5251111))

(declare-fun m!5251113 () Bool)

(assert (=> b!4511188 m!5251113))

(assert (=> b!4511188 m!5250621))

(declare-fun m!5251115 () Bool)

(assert (=> b!4511188 m!5251115))

(declare-fun m!5251117 () Bool)

(assert (=> b!4511188 m!5251117))

(declare-fun m!5251119 () Bool)

(assert (=> b!4511188 m!5251119))

(declare-fun m!5251121 () Bool)

(assert (=> b!4511188 m!5251121))

(assert (=> b!4511188 m!5250621))

(assert (=> b!4511188 m!5251117))

(assert (=> b!4511188 m!5251121))

(declare-fun m!5251123 () Bool)

(assert (=> b!4511188 m!5251123))

(assert (=> b!4511188 m!5251123))

(declare-fun m!5251125 () Bool)

(assert (=> b!4511188 m!5251125))

(assert (=> b!4511191 m!5251107))

(declare-fun m!5251127 () Bool)

(assert (=> bm!314122 m!5251127))

(assert (=> bm!314121 m!5250621))

(declare-fun m!5251129 () Bool)

(assert (=> bm!314121 m!5251129))

(declare-fun m!5251131 () Bool)

(assert (=> b!4511190 m!5251131))

(declare-fun m!5251133 () Bool)

(assert (=> b!4511189 m!5251133))

(declare-fun m!5251135 () Bool)

(assert (=> bm!314123 m!5251135))

(declare-fun m!5251137 () Bool)

(assert (=> d!1387590 m!5251137))

(declare-fun m!5251139 () Bool)

(assert (=> d!1387590 m!5251139))

(assert (=> b!4510975 d!1387590))

(declare-fun bs!847133 () Bool)

(declare-fun d!1387592 () Bool)

(assert (= bs!847133 (and d!1387592 d!1387548)))

(declare-fun lambda!170673 () Int)

(assert (=> bs!847133 (= lambda!170673 lambda!170662)))

(declare-fun bs!847134 () Bool)

(assert (= bs!847134 (and d!1387592 d!1387564)))

(assert (=> bs!847134 (= lambda!170673 lambda!170667)))

(declare-fun bs!847135 () Bool)

(assert (= bs!847135 (and d!1387592 d!1387406)))

(assert (=> bs!847135 (not (= lambda!170673 lambda!170553))))

(declare-fun bs!847136 () Bool)

(assert (= bs!847136 (and d!1387592 d!1387450)))

(assert (=> bs!847136 (= lambda!170673 lambda!170565)))

(declare-fun bs!847137 () Bool)

(assert (= bs!847137 (and d!1387592 start!445924)))

(assert (=> bs!847137 (= lambda!170673 lambda!170537)))

(declare-fun bs!847138 () Bool)

(assert (= bs!847138 (and d!1387592 d!1387370)))

(assert (=> bs!847138 (= lambda!170673 lambda!170540)))

(declare-fun bs!847139 () Bool)

(assert (= bs!847139 (and d!1387592 d!1387506)))

(assert (=> bs!847139 (= lambda!170673 lambda!170651)))

(declare-fun bs!847140 () Bool)

(assert (= bs!847140 (and d!1387592 d!1387556)))

(assert (=> bs!847140 (= lambda!170673 lambda!170666)))

(declare-fun bs!847141 () Bool)

(assert (= bs!847141 (and d!1387592 d!1387582)))

(assert (=> bs!847141 (= lambda!170673 lambda!170668)))

(declare-fun bs!847142 () Bool)

(assert (= bs!847142 (and d!1387592 d!1387428)))

(assert (=> bs!847142 (= lambda!170673 lambda!170561)))

(declare-fun bs!847143 () Bool)

(assert (= bs!847143 (and d!1387592 d!1387448)))

(assert (=> bs!847143 (= lambda!170673 lambda!170562)))

(declare-fun bs!847144 () Bool)

(assert (= bs!847144 (and d!1387592 d!1387550)))

(assert (=> bs!847144 (= lambda!170673 lambda!170665)))

(declare-fun bs!847145 () Bool)

(assert (= bs!847145 (and d!1387592 d!1387536)))

(assert (=> bs!847145 (= lambda!170673 lambda!170661)))

(declare-fun bs!847146 () Bool)

(assert (= bs!847146 (and d!1387592 d!1387372)))

(assert (=> bs!847146 (= lambda!170673 lambda!170543)))

(declare-fun lt!1689509 () ListMap!3557)

(assert (=> d!1387592 (invariantList!1001 (toList!4295 lt!1689509))))

(declare-fun e!2810352 () ListMap!3557)

(assert (=> d!1387592 (= lt!1689509 e!2810352)))

(declare-fun c!769498 () Bool)

(assert (=> d!1387592 (= c!769498 ((_ is Cons!50599) (t!357685 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387592 (forall!10223 (t!357685 (t!357685 (toList!4296 lm!1477))) lambda!170673)))

(assert (=> d!1387592 (= (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689509)))

(declare-fun b!4511193 () Bool)

(assert (=> b!4511193 (= e!2810352 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (t!357685 (toList!4296 lm!1477))))) (extractMap!1200 (t!357685 (t!357685 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun b!4511194 () Bool)

(assert (=> b!4511194 (= e!2810352 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387592 c!769498) b!4511193))

(assert (= (and d!1387592 (not c!769498)) b!4511194))

(declare-fun m!5251141 () Bool)

(assert (=> d!1387592 m!5251141))

(declare-fun m!5251143 () Bool)

(assert (=> d!1387592 m!5251143))

(declare-fun m!5251145 () Bool)

(assert (=> b!4511193 m!5251145))

(assert (=> b!4511193 m!5251145))

(declare-fun m!5251147 () Bool)

(assert (=> b!4511193 m!5251147))

(assert (=> b!4510975 d!1387592))

(declare-fun d!1387594 () Bool)

(declare-fun res!1876499 () Bool)

(declare-fun e!2810353 () Bool)

(assert (=> d!1387594 (=> res!1876499 e!2810353)))

(assert (=> d!1387594 (= res!1876499 (and ((_ is Cons!50598) (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))) (= (_1!28799 (h!56435 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))))) key!3287)))))

(assert (=> d!1387594 (= (containsKey!1732 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477)))) key!3287) e!2810353)))

(declare-fun b!4511195 () Bool)

(declare-fun e!2810354 () Bool)

(assert (=> b!4511195 (= e!2810353 e!2810354)))

(declare-fun res!1876500 () Bool)

(assert (=> b!4511195 (=> (not res!1876500) (not e!2810354))))

(assert (=> b!4511195 (= res!1876500 ((_ is Cons!50598) (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun b!4511196 () Bool)

(assert (=> b!4511196 (= e!2810354 (containsKey!1732 (t!357684 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(assert (= (and d!1387594 (not res!1876499)) b!4511195))

(assert (= (and b!4511195 res!1876500) b!4511196))

(declare-fun m!5251149 () Bool)

(assert (=> b!4511196 m!5251149))

(assert (=> b!4511124 d!1387594))

(declare-fun d!1387596 () Bool)

(declare-fun lt!1689512 () Bool)

(assert (=> d!1387596 (= lt!1689512 (select (content!8311 (keys!17562 lt!1689045)) key!3287))))

(declare-fun e!2810360 () Bool)

(assert (=> d!1387596 (= lt!1689512 e!2810360)))

(declare-fun res!1876505 () Bool)

(assert (=> d!1387596 (=> (not res!1876505) (not e!2810360))))

(assert (=> d!1387596 (= res!1876505 ((_ is Cons!50601) (keys!17562 lt!1689045)))))

(assert (=> d!1387596 (= (contains!13303 (keys!17562 lt!1689045) key!3287) lt!1689512)))

(declare-fun b!4511201 () Bool)

(declare-fun e!2810359 () Bool)

(assert (=> b!4511201 (= e!2810360 e!2810359)))

(declare-fun res!1876506 () Bool)

(assert (=> b!4511201 (=> res!1876506 e!2810359)))

(assert (=> b!4511201 (= res!1876506 (= (h!56440 (keys!17562 lt!1689045)) key!3287))))

(declare-fun b!4511202 () Bool)

(assert (=> b!4511202 (= e!2810359 (contains!13303 (t!357687 (keys!17562 lt!1689045)) key!3287))))

(assert (= (and d!1387596 res!1876505) b!4511201))

(assert (= (and b!4511201 (not res!1876506)) b!4511202))

(assert (=> d!1387596 m!5251025))

(declare-fun m!5251151 () Bool)

(assert (=> d!1387596 m!5251151))

(declare-fun m!5251153 () Bool)

(assert (=> d!1387596 m!5251153))

(declare-fun m!5251155 () Bool)

(assert (=> b!4511202 m!5251155))

(assert (=> b!4511148 d!1387596))

(declare-fun b!4511210 () Bool)

(assert (=> b!4511210 true))

(declare-fun d!1387598 () Bool)

(declare-fun e!2810363 () Bool)

(assert (=> d!1387598 e!2810363))

(declare-fun res!1876514 () Bool)

(assert (=> d!1387598 (=> (not res!1876514) (not e!2810363))))

(declare-fun lt!1689515 () List!50725)

(declare-fun noDuplicate!739 (List!50725) Bool)

(assert (=> d!1387598 (= res!1876514 (noDuplicate!739 lt!1689515))))

(assert (=> d!1387598 (= lt!1689515 (getKeysList!449 (toList!4295 lt!1689045)))))

(assert (=> d!1387598 (= (keys!17562 lt!1689045) lt!1689515)))

(declare-fun b!4511209 () Bool)

(declare-fun res!1876515 () Bool)

(assert (=> b!4511209 (=> (not res!1876515) (not e!2810363))))

(declare-fun length!334 (List!50725) Int)

(declare-fun length!335 (List!50722) Int)

(assert (=> b!4511209 (= res!1876515 (= (length!334 lt!1689515) (length!335 (toList!4295 lt!1689045))))))

(declare-fun res!1876513 () Bool)

(assert (=> b!4511210 (=> (not res!1876513) (not e!2810363))))

(declare-fun lambda!170678 () Int)

(declare-fun forall!10226 (List!50725 Int) Bool)

(assert (=> b!4511210 (= res!1876513 (forall!10226 lt!1689515 lambda!170678))))

(declare-fun b!4511211 () Bool)

(declare-fun lambda!170679 () Int)

(declare-fun map!11122 (List!50722 Int) List!50725)

(assert (=> b!4511211 (= e!2810363 (= (content!8311 lt!1689515) (content!8311 (map!11122 (toList!4295 lt!1689045) lambda!170679))))))

(assert (= (and d!1387598 res!1876514) b!4511209))

(assert (= (and b!4511209 res!1876515) b!4511210))

(assert (= (and b!4511210 res!1876513) b!4511211))

(declare-fun m!5251157 () Bool)

(assert (=> d!1387598 m!5251157))

(assert (=> d!1387598 m!5251039))

(declare-fun m!5251159 () Bool)

(assert (=> b!4511209 m!5251159))

(declare-fun m!5251161 () Bool)

(assert (=> b!4511209 m!5251161))

(declare-fun m!5251163 () Bool)

(assert (=> b!4511210 m!5251163))

(declare-fun m!5251165 () Bool)

(assert (=> b!4511211 m!5251165))

(declare-fun m!5251167 () Bool)

(assert (=> b!4511211 m!5251167))

(assert (=> b!4511211 m!5251167))

(declare-fun m!5251169 () Bool)

(assert (=> b!4511211 m!5251169))

(assert (=> b!4511148 d!1387598))

(declare-fun d!1387600 () Bool)

(declare-fun lt!1689516 () Bool)

(assert (=> d!1387600 (= lt!1689516 (select (content!8311 (keys!17562 lt!1689046)) key!3287))))

(declare-fun e!2810365 () Bool)

(assert (=> d!1387600 (= lt!1689516 e!2810365)))

(declare-fun res!1876516 () Bool)

(assert (=> d!1387600 (=> (not res!1876516) (not e!2810365))))

(assert (=> d!1387600 (= res!1876516 ((_ is Cons!50601) (keys!17562 lt!1689046)))))

(assert (=> d!1387600 (= (contains!13303 (keys!17562 lt!1689046) key!3287) lt!1689516)))

(declare-fun b!4511214 () Bool)

(declare-fun e!2810364 () Bool)

(assert (=> b!4511214 (= e!2810365 e!2810364)))

(declare-fun res!1876517 () Bool)

(assert (=> b!4511214 (=> res!1876517 e!2810364)))

(assert (=> b!4511214 (= res!1876517 (= (h!56440 (keys!17562 lt!1689046)) key!3287))))

(declare-fun b!4511215 () Bool)

(assert (=> b!4511215 (= e!2810364 (contains!13303 (t!357687 (keys!17562 lt!1689046)) key!3287))))

(assert (= (and d!1387600 res!1876516) b!4511214))

(assert (= (and b!4511214 (not res!1876517)) b!4511215))

(assert (=> d!1387600 m!5250633))

(assert (=> d!1387600 m!5250953))

(declare-fun m!5251171 () Bool)

(assert (=> d!1387600 m!5251171))

(declare-fun m!5251173 () Bool)

(assert (=> b!4511215 m!5251173))

(assert (=> b!4510981 d!1387600))

(declare-fun bs!847147 () Bool)

(declare-fun b!4511217 () Bool)

(assert (= bs!847147 (and b!4511217 b!4511210)))

(declare-fun lambda!170680 () Int)

(assert (=> bs!847147 (= (= (toList!4295 lt!1689046) (toList!4295 lt!1689045)) (= lambda!170680 lambda!170678))))

(assert (=> b!4511217 true))

(declare-fun bs!847148 () Bool)

(declare-fun b!4511218 () Bool)

(assert (= bs!847148 (and b!4511218 b!4511211)))

(declare-fun lambda!170681 () Int)

(assert (=> bs!847148 (= lambda!170681 lambda!170679)))

(declare-fun d!1387602 () Bool)

(declare-fun e!2810366 () Bool)

(assert (=> d!1387602 e!2810366))

(declare-fun res!1876519 () Bool)

(assert (=> d!1387602 (=> (not res!1876519) (not e!2810366))))

(declare-fun lt!1689517 () List!50725)

(assert (=> d!1387602 (= res!1876519 (noDuplicate!739 lt!1689517))))

(assert (=> d!1387602 (= lt!1689517 (getKeysList!449 (toList!4295 lt!1689046)))))

(assert (=> d!1387602 (= (keys!17562 lt!1689046) lt!1689517)))

(declare-fun b!4511216 () Bool)

(declare-fun res!1876520 () Bool)

(assert (=> b!4511216 (=> (not res!1876520) (not e!2810366))))

(assert (=> b!4511216 (= res!1876520 (= (length!334 lt!1689517) (length!335 (toList!4295 lt!1689046))))))

(declare-fun res!1876518 () Bool)

(assert (=> b!4511217 (=> (not res!1876518) (not e!2810366))))

(assert (=> b!4511217 (= res!1876518 (forall!10226 lt!1689517 lambda!170680))))

(assert (=> b!4511218 (= e!2810366 (= (content!8311 lt!1689517) (content!8311 (map!11122 (toList!4295 lt!1689046) lambda!170681))))))

(assert (= (and d!1387602 res!1876519) b!4511216))

(assert (= (and b!4511216 res!1876520) b!4511217))

(assert (= (and b!4511217 res!1876518) b!4511218))

(declare-fun m!5251175 () Bool)

(assert (=> d!1387602 m!5251175))

(assert (=> d!1387602 m!5250647))

(declare-fun m!5251177 () Bool)

(assert (=> b!4511216 m!5251177))

(declare-fun m!5251179 () Bool)

(assert (=> b!4511216 m!5251179))

(declare-fun m!5251181 () Bool)

(assert (=> b!4511217 m!5251181))

(declare-fun m!5251183 () Bool)

(assert (=> b!4511218 m!5251183))

(declare-fun m!5251185 () Bool)

(assert (=> b!4511218 m!5251185))

(assert (=> b!4511218 m!5251185))

(declare-fun m!5251187 () Bool)

(assert (=> b!4511218 m!5251187))

(assert (=> b!4510981 d!1387602))

(declare-fun d!1387604 () Bool)

(declare-fun isEmpty!28638 (Option!11080) Bool)

(assert (=> d!1387604 (= (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344)) (not (isEmpty!28638 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344))))))

(declare-fun bs!847149 () Bool)

(assert (= bs!847149 d!1387604))

(assert (=> bs!847149 m!5250881))

(declare-fun m!5251189 () Bool)

(assert (=> bs!847149 m!5251189))

(assert (=> b!4511143 d!1387604))

(declare-fun b!4511228 () Bool)

(declare-fun e!2810371 () Option!11080)

(declare-fun e!2810372 () Option!11080)

(assert (=> b!4511228 (= e!2810371 e!2810372)))

(declare-fun c!769504 () Bool)

(assert (=> b!4511228 (= c!769504 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (not (= (_1!28800 (h!56436 (toList!4296 lt!1689057))) hash!344))))))

(declare-fun b!4511227 () Bool)

(assert (=> b!4511227 (= e!2810371 (Some!11079 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(declare-fun b!4511229 () Bool)

(assert (=> b!4511229 (= e!2810372 (getValueByKey!1060 (t!357685 (toList!4296 lt!1689057)) hash!344))))

(declare-fun d!1387606 () Bool)

(declare-fun c!769503 () Bool)

(assert (=> d!1387606 (= c!769503 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (= (_1!28800 (h!56436 (toList!4296 lt!1689057))) hash!344)))))

(assert (=> d!1387606 (= (getValueByKey!1060 (toList!4296 lt!1689057) hash!344) e!2810371)))

(declare-fun b!4511230 () Bool)

(assert (=> b!4511230 (= e!2810372 None!11079)))

(assert (= (and d!1387606 c!769503) b!4511227))

(assert (= (and d!1387606 (not c!769503)) b!4511228))

(assert (= (and b!4511228 c!769504) b!4511229))

(assert (= (and b!4511228 (not c!769504)) b!4511230))

(declare-fun m!5251191 () Bool)

(assert (=> b!4511229 m!5251191))

(assert (=> b!4511143 d!1387606))

(declare-fun d!1387608 () Bool)

(declare-fun c!769507 () Bool)

(assert (=> d!1387608 (= c!769507 ((_ is Nil!50598) (toList!4295 lt!1689058)))))

(declare-fun e!2810375 () (InoxSet tuple2!51010))

(assert (=> d!1387608 (= (content!8309 (toList!4295 lt!1689058)) e!2810375)))

(declare-fun b!4511235 () Bool)

(assert (=> b!4511235 (= e!2810375 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511236 () Bool)

(assert (=> b!4511236 (= e!2810375 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689058)) true) (content!8309 (t!357684 (toList!4295 lt!1689058)))))))

(assert (= (and d!1387608 c!769507) b!4511235))

(assert (= (and d!1387608 (not c!769507)) b!4511236))

(declare-fun m!5251193 () Bool)

(assert (=> b!4511236 m!5251193))

(declare-fun m!5251195 () Bool)

(assert (=> b!4511236 m!5251195))

(assert (=> d!1387544 d!1387608))

(declare-fun d!1387610 () Bool)

(declare-fun c!769508 () Bool)

(assert (=> d!1387610 (= c!769508 ((_ is Nil!50598) (toList!4295 lt!1689048)))))

(declare-fun e!2810376 () (InoxSet tuple2!51010))

(assert (=> d!1387610 (= (content!8309 (toList!4295 lt!1689048)) e!2810376)))

(declare-fun b!4511237 () Bool)

(assert (=> b!4511237 (= e!2810376 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511238 () Bool)

(assert (=> b!4511238 (= e!2810376 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689048)) true) (content!8309 (t!357684 (toList!4295 lt!1689048)))))))

(assert (= (and d!1387610 c!769508) b!4511237))

(assert (= (and d!1387610 (not c!769508)) b!4511238))

(declare-fun m!5251197 () Bool)

(assert (=> b!4511238 m!5251197))

(declare-fun m!5251199 () Bool)

(assert (=> b!4511238 m!5251199))

(assert (=> d!1387544 d!1387610))

(declare-fun d!1387612 () Bool)

(declare-fun res!1876525 () Bool)

(declare-fun e!2810381 () Bool)

(assert (=> d!1387612 (=> res!1876525 e!2810381)))

(assert (=> d!1387612 (= res!1876525 ((_ is Nil!50598) (toList!4295 lt!1689048)))))

(assert (=> d!1387612 (= (forall!10225 (toList!4295 lt!1689048) (ite c!769486 lambda!170652 lambda!170653)) e!2810381)))

(declare-fun b!4511243 () Bool)

(declare-fun e!2810382 () Bool)

(assert (=> b!4511243 (= e!2810381 e!2810382)))

(declare-fun res!1876526 () Bool)

(assert (=> b!4511243 (=> (not res!1876526) (not e!2810382))))

(declare-fun dynLambda!21140 (Int tuple2!51010) Bool)

(assert (=> b!4511243 (= res!1876526 (dynLambda!21140 (ite c!769486 lambda!170652 lambda!170653) (h!56435 (toList!4295 lt!1689048))))))

(declare-fun b!4511244 () Bool)

(assert (=> b!4511244 (= e!2810382 (forall!10225 (t!357684 (toList!4295 lt!1689048)) (ite c!769486 lambda!170652 lambda!170653)))))

(assert (= (and d!1387612 (not res!1876525)) b!4511243))

(assert (= (and b!4511243 res!1876526) b!4511244))

(declare-fun b_lambda!153771 () Bool)

(assert (=> (not b_lambda!153771) (not b!4511243)))

(declare-fun m!5251201 () Bool)

(assert (=> b!4511243 m!5251201))

(declare-fun m!5251203 () Bool)

(assert (=> b!4511244 m!5251203))

(assert (=> bm!314119 d!1387612))

(declare-fun d!1387614 () Bool)

(assert (=> d!1387614 (= (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054)) (not (isEmpty!28638 (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054))))))

(declare-fun bs!847150 () Bool)

(assert (= bs!847150 d!1387614))

(assert (=> bs!847150 m!5250401))

(declare-fun m!5251205 () Bool)

(assert (=> bs!847150 m!5251205))

(assert (=> b!4510871 d!1387614))

(declare-fun b!4511246 () Bool)

(declare-fun e!2810383 () Option!11080)

(declare-fun e!2810384 () Option!11080)

(assert (=> b!4511246 (= e!2810383 e!2810384)))

(declare-fun c!769510 () Bool)

(assert (=> b!4511246 (= c!769510 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (not (= (_1!28800 (h!56436 (toList!4296 lm!1477))) lt!1689054))))))

(declare-fun b!4511245 () Bool)

(assert (=> b!4511245 (= e!2810383 (Some!11079 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(declare-fun b!4511247 () Bool)

(assert (=> b!4511247 (= e!2810384 (getValueByKey!1060 (t!357685 (toList!4296 lm!1477)) lt!1689054))))

(declare-fun d!1387616 () Bool)

(declare-fun c!769509 () Bool)

(assert (=> d!1387616 (= c!769509 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (= (_1!28800 (h!56436 (toList!4296 lm!1477))) lt!1689054)))))

(assert (=> d!1387616 (= (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054) e!2810383)))

(declare-fun b!4511248 () Bool)

(assert (=> b!4511248 (= e!2810384 None!11079)))

(assert (= (and d!1387616 c!769509) b!4511245))

(assert (= (and d!1387616 (not c!769509)) b!4511246))

(assert (= (and b!4511246 c!769510) b!4511247))

(assert (= (and b!4511246 (not c!769510)) b!4511248))

(declare-fun m!5251207 () Bool)

(assert (=> b!4511247 m!5251207))

(assert (=> b!4510871 d!1387616))

(declare-fun d!1387618 () Bool)

(assert (=> d!1387618 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689045) key!3287))))

(declare-fun lt!1689520 () Unit!93482)

(declare-fun choose!29326 (List!50722 K!12000) Unit!93482)

(assert (=> d!1387618 (= lt!1689520 (choose!29326 (toList!4295 lt!1689045) key!3287))))

(assert (=> d!1387618 (invariantList!1001 (toList!4295 lt!1689045))))

(assert (=> d!1387618 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689045) key!3287) lt!1689520)))

(declare-fun bs!847151 () Bool)

(assert (= bs!847151 d!1387618))

(assert (=> bs!847151 m!5251033))

(assert (=> bs!847151 m!5251033))

(assert (=> bs!847151 m!5251035))

(declare-fun m!5251209 () Bool)

(assert (=> bs!847151 m!5251209))

(declare-fun m!5251211 () Bool)

(assert (=> bs!847151 m!5251211))

(assert (=> b!4511144 d!1387618))

(declare-fun d!1387620 () Bool)

(declare-fun isEmpty!28639 (Option!11081) Bool)

(assert (=> d!1387620 (= (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689045) key!3287)) (not (isEmpty!28639 (getValueByKey!1061 (toList!4295 lt!1689045) key!3287))))))

(declare-fun bs!847152 () Bool)

(assert (= bs!847152 d!1387620))

(assert (=> bs!847152 m!5251033))

(declare-fun m!5251213 () Bool)

(assert (=> bs!847152 m!5251213))

(assert (=> b!4511144 d!1387620))

(declare-fun b!4511260 () Bool)

(declare-fun e!2810390 () Option!11081)

(assert (=> b!4511260 (= e!2810390 None!11080)))

(declare-fun d!1387622 () Bool)

(declare-fun c!769515 () Bool)

(assert (=> d!1387622 (= c!769515 (and ((_ is Cons!50598) (toList!4295 lt!1689045)) (= (_1!28799 (h!56435 (toList!4295 lt!1689045))) key!3287)))))

(declare-fun e!2810389 () Option!11081)

(assert (=> d!1387622 (= (getValueByKey!1061 (toList!4295 lt!1689045) key!3287) e!2810389)))

(declare-fun b!4511259 () Bool)

(assert (=> b!4511259 (= e!2810390 (getValueByKey!1061 (t!357684 (toList!4295 lt!1689045)) key!3287))))

(declare-fun b!4511258 () Bool)

(assert (=> b!4511258 (= e!2810389 e!2810390)))

(declare-fun c!769516 () Bool)

(assert (=> b!4511258 (= c!769516 (and ((_ is Cons!50598) (toList!4295 lt!1689045)) (not (= (_1!28799 (h!56435 (toList!4295 lt!1689045))) key!3287))))))

(declare-fun b!4511257 () Bool)

(assert (=> b!4511257 (= e!2810389 (Some!11080 (_2!28799 (h!56435 (toList!4295 lt!1689045)))))))

(assert (= (and d!1387622 c!769515) b!4511257))

(assert (= (and d!1387622 (not c!769515)) b!4511258))

(assert (= (and b!4511258 c!769516) b!4511259))

(assert (= (and b!4511258 (not c!769516)) b!4511260))

(declare-fun m!5251215 () Bool)

(assert (=> b!4511259 m!5251215))

(assert (=> b!4511144 d!1387622))

(declare-fun d!1387624 () Bool)

(assert (=> d!1387624 (contains!13303 (getKeysList!449 (toList!4295 lt!1689045)) key!3287)))

(declare-fun lt!1689523 () Unit!93482)

(declare-fun choose!29327 (List!50722 K!12000) Unit!93482)

(assert (=> d!1387624 (= lt!1689523 (choose!29327 (toList!4295 lt!1689045) key!3287))))

(assert (=> d!1387624 (invariantList!1001 (toList!4295 lt!1689045))))

(assert (=> d!1387624 (= (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689045) key!3287) lt!1689523)))

(declare-fun bs!847153 () Bool)

(assert (= bs!847153 d!1387624))

(assert (=> bs!847153 m!5251039))

(assert (=> bs!847153 m!5251039))

(declare-fun m!5251217 () Bool)

(assert (=> bs!847153 m!5251217))

(declare-fun m!5251219 () Bool)

(assert (=> bs!847153 m!5251219))

(assert (=> bs!847153 m!5251211))

(assert (=> b!4511144 d!1387624))

(declare-fun d!1387626 () Bool)

(assert (=> d!1387626 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))))

(declare-fun lt!1689524 () Unit!93482)

(assert (=> d!1387626 (= lt!1689524 (choose!29326 (toList!4295 lt!1689046) key!3287))))

(assert (=> d!1387626 (invariantList!1001 (toList!4295 lt!1689046))))

(assert (=> d!1387626 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689046) key!3287) lt!1689524)))

(declare-fun bs!847154 () Bool)

(assert (= bs!847154 d!1387626))

(assert (=> bs!847154 m!5250641))

(assert (=> bs!847154 m!5250641))

(assert (=> bs!847154 m!5250643))

(declare-fun m!5251221 () Bool)

(assert (=> bs!847154 m!5251221))

(declare-fun m!5251223 () Bool)

(assert (=> bs!847154 m!5251223))

(assert (=> b!4510977 d!1387626))

(declare-fun d!1387628 () Bool)

(assert (=> d!1387628 (= (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287)) (not (isEmpty!28639 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))))))

(declare-fun bs!847155 () Bool)

(assert (= bs!847155 d!1387628))

(assert (=> bs!847155 m!5250641))

(declare-fun m!5251225 () Bool)

(assert (=> bs!847155 m!5251225))

(assert (=> b!4510977 d!1387628))

(declare-fun b!4511264 () Bool)

(declare-fun e!2810392 () Option!11081)

(assert (=> b!4511264 (= e!2810392 None!11080)))

(declare-fun d!1387630 () Bool)

(declare-fun c!769517 () Bool)

(assert (=> d!1387630 (= c!769517 (and ((_ is Cons!50598) (toList!4295 lt!1689046)) (= (_1!28799 (h!56435 (toList!4295 lt!1689046))) key!3287)))))

(declare-fun e!2810391 () Option!11081)

(assert (=> d!1387630 (= (getValueByKey!1061 (toList!4295 lt!1689046) key!3287) e!2810391)))

(declare-fun b!4511263 () Bool)

(assert (=> b!4511263 (= e!2810392 (getValueByKey!1061 (t!357684 (toList!4295 lt!1689046)) key!3287))))

(declare-fun b!4511262 () Bool)

(assert (=> b!4511262 (= e!2810391 e!2810392)))

(declare-fun c!769518 () Bool)

(assert (=> b!4511262 (= c!769518 (and ((_ is Cons!50598) (toList!4295 lt!1689046)) (not (= (_1!28799 (h!56435 (toList!4295 lt!1689046))) key!3287))))))

(declare-fun b!4511261 () Bool)

(assert (=> b!4511261 (= e!2810391 (Some!11080 (_2!28799 (h!56435 (toList!4295 lt!1689046)))))))

(assert (= (and d!1387630 c!769517) b!4511261))

(assert (= (and d!1387630 (not c!769517)) b!4511262))

(assert (= (and b!4511262 c!769518) b!4511263))

(assert (= (and b!4511262 (not c!769518)) b!4511264))

(declare-fun m!5251227 () Bool)

(assert (=> b!4511263 m!5251227))

(assert (=> b!4510977 d!1387630))

(declare-fun d!1387632 () Bool)

(assert (=> d!1387632 (contains!13303 (getKeysList!449 (toList!4295 lt!1689046)) key!3287)))

(declare-fun lt!1689525 () Unit!93482)

(assert (=> d!1387632 (= lt!1689525 (choose!29327 (toList!4295 lt!1689046) key!3287))))

(assert (=> d!1387632 (invariantList!1001 (toList!4295 lt!1689046))))

(assert (=> d!1387632 (= (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689046) key!3287) lt!1689525)))

(declare-fun bs!847156 () Bool)

(assert (= bs!847156 d!1387632))

(assert (=> bs!847156 m!5250647))

(assert (=> bs!847156 m!5250647))

(declare-fun m!5251229 () Bool)

(assert (=> bs!847156 m!5251229))

(declare-fun m!5251231 () Bool)

(assert (=> bs!847156 m!5251231))

(assert (=> bs!847156 m!5251223))

(assert (=> b!4510977 d!1387632))

(declare-fun d!1387634 () Bool)

(declare-fun lt!1689526 () Bool)

(assert (=> d!1387634 (= lt!1689526 (select (content!8311 e!2810199) key!3287))))

(declare-fun e!2810394 () Bool)

(assert (=> d!1387634 (= lt!1689526 e!2810394)))

(declare-fun res!1876527 () Bool)

(assert (=> d!1387634 (=> (not res!1876527) (not e!2810394))))

(assert (=> d!1387634 (= res!1876527 ((_ is Cons!50601) e!2810199))))

(assert (=> d!1387634 (= (contains!13303 e!2810199 key!3287) lt!1689526)))

(declare-fun b!4511265 () Bool)

(declare-fun e!2810393 () Bool)

(assert (=> b!4511265 (= e!2810394 e!2810393)))

(declare-fun res!1876528 () Bool)

(assert (=> b!4511265 (=> res!1876528 e!2810393)))

(assert (=> b!4511265 (= res!1876528 (= (h!56440 e!2810199) key!3287))))

(declare-fun b!4511266 () Bool)

(assert (=> b!4511266 (= e!2810393 (contains!13303 (t!357687 e!2810199) key!3287))))

(assert (= (and d!1387634 res!1876527) b!4511265))

(assert (= (and b!4511265 (not res!1876528)) b!4511266))

(declare-fun m!5251233 () Bool)

(assert (=> d!1387634 m!5251233))

(declare-fun m!5251235 () Bool)

(assert (=> d!1387634 m!5251235))

(declare-fun m!5251237 () Bool)

(assert (=> b!4511266 m!5251237))

(assert (=> bm!314093 d!1387634))

(declare-fun d!1387636 () Bool)

(assert (=> d!1387636 (= (invariantList!1001 (toList!4295 lt!1689467)) (noDuplicatedKeys!254 (toList!4295 lt!1689467)))))

(declare-fun bs!847157 () Bool)

(assert (= bs!847157 d!1387636))

(declare-fun m!5251239 () Bool)

(assert (=> bs!847157 m!5251239))

(assert (=> d!1387556 d!1387636))

(declare-fun d!1387638 () Bool)

(declare-fun res!1876529 () Bool)

(declare-fun e!2810395 () Bool)

(assert (=> d!1387638 (=> res!1876529 e!2810395)))

(assert (=> d!1387638 (= res!1876529 ((_ is Nil!50599) (toList!4296 lt!1689063)))))

(assert (=> d!1387638 (= (forall!10223 (toList!4296 lt!1689063) lambda!170666) e!2810395)))

(declare-fun b!4511267 () Bool)

(declare-fun e!2810396 () Bool)

(assert (=> b!4511267 (= e!2810395 e!2810396)))

(declare-fun res!1876530 () Bool)

(assert (=> b!4511267 (=> (not res!1876530) (not e!2810396))))

(assert (=> b!4511267 (= res!1876530 (dynLambda!21139 lambda!170666 (h!56436 (toList!4296 lt!1689063))))))

(declare-fun b!4511268 () Bool)

(assert (=> b!4511268 (= e!2810396 (forall!10223 (t!357685 (toList!4296 lt!1689063)) lambda!170666))))

(assert (= (and d!1387638 (not res!1876529)) b!4511267))

(assert (= (and b!4511267 res!1876530) b!4511268))

(declare-fun b_lambda!153773 () Bool)

(assert (=> (not b_lambda!153773) (not b!4511267)))

(declare-fun m!5251241 () Bool)

(assert (=> b!4511267 m!5251241))

(declare-fun m!5251243 () Bool)

(assert (=> b!4511268 m!5251243))

(assert (=> d!1387556 d!1387638))

(declare-fun d!1387640 () Bool)

(declare-fun c!769521 () Bool)

(assert (=> d!1387640 (= c!769521 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(declare-fun e!2810399 () (InoxSet tuple2!51012))

(assert (=> d!1387640 (= (content!8308 (toList!4296 lm!1477)) e!2810399)))

(declare-fun b!4511273 () Bool)

(assert (=> b!4511273 (= e!2810399 ((as const (Array tuple2!51012 Bool)) false))))

(declare-fun b!4511274 () Bool)

(assert (=> b!4511274 (= e!2810399 ((_ map or) (store ((as const (Array tuple2!51012 Bool)) false) (h!56436 (toList!4296 lm!1477)) true) (content!8308 (t!357685 (toList!4296 lm!1477)))))))

(assert (= (and d!1387640 c!769521) b!4511273))

(assert (= (and d!1387640 (not c!769521)) b!4511274))

(declare-fun m!5251245 () Bool)

(assert (=> b!4511274 m!5251245))

(assert (=> b!4511274 m!5250473))

(assert (=> d!1387392 d!1387640))

(declare-fun d!1387642 () Bool)

(declare-fun res!1876531 () Bool)

(declare-fun e!2810400 () Bool)

(assert (=> d!1387642 (=> res!1876531 e!2810400)))

(assert (=> d!1387642 (= res!1876531 ((_ is Nil!50598) (toList!4295 lt!1689058)))))

(assert (=> d!1387642 (= (forall!10225 (toList!4295 lt!1689058) (ite c!769477 lambda!170647 lambda!170649)) e!2810400)))

(declare-fun b!4511275 () Bool)

(declare-fun e!2810401 () Bool)

(assert (=> b!4511275 (= e!2810400 e!2810401)))

(declare-fun res!1876532 () Bool)

(assert (=> b!4511275 (=> (not res!1876532) (not e!2810401))))

(assert (=> b!4511275 (= res!1876532 (dynLambda!21140 (ite c!769477 lambda!170647 lambda!170649) (h!56435 (toList!4295 lt!1689058))))))

(declare-fun b!4511276 () Bool)

(assert (=> b!4511276 (= e!2810401 (forall!10225 (t!357684 (toList!4295 lt!1689058)) (ite c!769477 lambda!170647 lambda!170649)))))

(assert (= (and d!1387642 (not res!1876531)) b!4511275))

(assert (= (and b!4511275 res!1876532) b!4511276))

(declare-fun b_lambda!153775 () Bool)

(assert (=> (not b_lambda!153775) (not b!4511275)))

(declare-fun m!5251247 () Bool)

(assert (=> b!4511275 m!5251247))

(declare-fun m!5251249 () Bool)

(assert (=> b!4511276 m!5251249))

(assert (=> bm!314115 d!1387642))

(declare-fun d!1387644 () Bool)

(declare-fun res!1876537 () Bool)

(declare-fun e!2810406 () Bool)

(assert (=> d!1387644 (=> res!1876537 e!2810406)))

(assert (=> d!1387644 (= res!1876537 (and ((_ is Cons!50598) (toList!4295 lt!1689045)) (= (_1!28799 (h!56435 (toList!4295 lt!1689045))) key!3287)))))

(assert (=> d!1387644 (= (containsKey!1736 (toList!4295 lt!1689045) key!3287) e!2810406)))

(declare-fun b!4511281 () Bool)

(declare-fun e!2810407 () Bool)

(assert (=> b!4511281 (= e!2810406 e!2810407)))

(declare-fun res!1876538 () Bool)

(assert (=> b!4511281 (=> (not res!1876538) (not e!2810407))))

(assert (=> b!4511281 (= res!1876538 ((_ is Cons!50598) (toList!4295 lt!1689045)))))

(declare-fun b!4511282 () Bool)

(assert (=> b!4511282 (= e!2810407 (containsKey!1736 (t!357684 (toList!4295 lt!1689045)) key!3287))))

(assert (= (and d!1387644 (not res!1876537)) b!4511281))

(assert (= (and b!4511281 res!1876538) b!4511282))

(declare-fun m!5251251 () Bool)

(assert (=> b!4511282 m!5251251))

(assert (=> b!4511151 d!1387644))

(declare-fun d!1387646 () Bool)

(assert (=> d!1387646 (containsKey!1736 (toList!4295 lt!1689045) key!3287)))

(declare-fun lt!1689529 () Unit!93482)

(declare-fun choose!29328 (List!50722 K!12000) Unit!93482)

(assert (=> d!1387646 (= lt!1689529 (choose!29328 (toList!4295 lt!1689045) key!3287))))

(assert (=> d!1387646 (invariantList!1001 (toList!4295 lt!1689045))))

(assert (=> d!1387646 (= (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689045) key!3287) lt!1689529)))

(declare-fun bs!847158 () Bool)

(assert (= bs!847158 d!1387646))

(assert (=> bs!847158 m!5251023))

(declare-fun m!5251253 () Bool)

(assert (=> bs!847158 m!5251253))

(assert (=> bs!847158 m!5251211))

(assert (=> b!4511151 d!1387646))

(declare-fun d!1387648 () Bool)

(declare-fun res!1876539 () Bool)

(declare-fun e!2810408 () Bool)

(assert (=> d!1387648 (=> res!1876539 e!2810408)))

(assert (=> d!1387648 (= res!1876539 (and ((_ is Cons!50598) (toList!4295 lt!1689046)) (= (_1!28799 (h!56435 (toList!4295 lt!1689046))) key!3287)))))

(assert (=> d!1387648 (= (containsKey!1736 (toList!4295 lt!1689046) key!3287) e!2810408)))

(declare-fun b!4511283 () Bool)

(declare-fun e!2810409 () Bool)

(assert (=> b!4511283 (= e!2810408 e!2810409)))

(declare-fun res!1876540 () Bool)

(assert (=> b!4511283 (=> (not res!1876540) (not e!2810409))))

(assert (=> b!4511283 (= res!1876540 ((_ is Cons!50598) (toList!4295 lt!1689046)))))

(declare-fun b!4511284 () Bool)

(assert (=> b!4511284 (= e!2810409 (containsKey!1736 (t!357684 (toList!4295 lt!1689046)) key!3287))))

(assert (= (and d!1387648 (not res!1876539)) b!4511283))

(assert (= (and b!4511283 res!1876540) b!4511284))

(declare-fun m!5251255 () Bool)

(assert (=> b!4511284 m!5251255))

(assert (=> b!4510984 d!1387648))

(declare-fun d!1387650 () Bool)

(assert (=> d!1387650 (containsKey!1736 (toList!4295 lt!1689046) key!3287)))

(declare-fun lt!1689530 () Unit!93482)

(assert (=> d!1387650 (= lt!1689530 (choose!29328 (toList!4295 lt!1689046) key!3287))))

(assert (=> d!1387650 (invariantList!1001 (toList!4295 lt!1689046))))

(assert (=> d!1387650 (= (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689046) key!3287) lt!1689530)))

(declare-fun bs!847159 () Bool)

(assert (= bs!847159 d!1387650))

(assert (=> bs!847159 m!5250631))

(declare-fun m!5251257 () Bool)

(assert (=> bs!847159 m!5251257))

(assert (=> bs!847159 m!5251223))

(assert (=> b!4510984 d!1387650))

(declare-fun d!1387652 () Bool)

(declare-fun res!1876541 () Bool)

(declare-fun e!2810410 () Bool)

(assert (=> d!1387652 (=> res!1876541 e!2810410)))

(assert (=> d!1387652 (= res!1876541 (and ((_ is Cons!50598) (t!357684 lt!1689047)) (= (_1!28799 (h!56435 (t!357684 lt!1689047))) key!3287)))))

(assert (=> d!1387652 (= (containsKey!1732 (t!357684 lt!1689047) key!3287) e!2810410)))

(declare-fun b!4511285 () Bool)

(declare-fun e!2810411 () Bool)

(assert (=> b!4511285 (= e!2810410 e!2810411)))

(declare-fun res!1876542 () Bool)

(assert (=> b!4511285 (=> (not res!1876542) (not e!2810411))))

(assert (=> b!4511285 (= res!1876542 ((_ is Cons!50598) (t!357684 lt!1689047)))))

(declare-fun b!4511286 () Bool)

(assert (=> b!4511286 (= e!2810411 (containsKey!1732 (t!357684 (t!357684 lt!1689047)) key!3287))))

(assert (= (and d!1387652 (not res!1876541)) b!4511285))

(assert (= (and b!4511285 res!1876542) b!4511286))

(declare-fun m!5251259 () Bool)

(assert (=> b!4511286 m!5251259))

(assert (=> b!4510812 d!1387652))

(declare-fun bs!847160 () Bool)

(declare-fun b!4511291 () Bool)

(assert (= bs!847160 (and b!4511291 b!4511188)))

(declare-fun lambda!170682 () Int)

(assert (=> bs!847160 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170682 lambda!170670))))

(declare-fun bs!847161 () Bool)

(assert (= bs!847161 (and b!4511291 d!1387590)))

(assert (=> bs!847161 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689493) (= lambda!170682 lambda!170672))))

(declare-fun bs!847162 () Bool)

(assert (= bs!847162 (and b!4511291 b!4511066)))

(assert (=> bs!847162 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689409) (= lambda!170682 lambda!170649))))

(declare-fun bs!847163 () Bool)

(assert (= bs!847163 (and b!4511291 b!4511192)))

(assert (=> bs!847163 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170682 lambda!170669))))

(declare-fun bs!847164 () Bool)

(assert (= bs!847164 (and b!4511291 b!4511109)))

(assert (=> bs!847164 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689048) (= lambda!170682 lambda!170653))))

(assert (=> bs!847160 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689504) (= lambda!170682 lambda!170671))))

(declare-fun bs!847165 () Bool)

(assert (= bs!847165 (and b!4511291 b!4511113)))

(assert (=> bs!847165 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689048) (= lambda!170682 lambda!170652))))

(assert (=> bs!847162 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689058) (= lambda!170682 lambda!170648))))

(declare-fun bs!847166 () Bool)

(assert (= bs!847166 (and b!4511291 d!1387526)))

(assert (=> bs!847166 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689430) (= lambda!170682 lambda!170655))))

(declare-fun bs!847167 () Bool)

(assert (= bs!847167 (and b!4511291 d!1387530)))

(assert (=> bs!847167 (not (= lambda!170682 lambda!170658))))

(assert (=> bs!847164 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689441) (= lambda!170682 lambda!170654))))

(declare-fun bs!847168 () Bool)

(assert (= bs!847168 (and b!4511291 d!1387458)))

(assert (=> bs!847168 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689398) (= lambda!170682 lambda!170650))))

(declare-fun bs!847169 () Bool)

(assert (= bs!847169 (and b!4511291 b!4511070)))

(assert (=> bs!847169 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689058) (= lambda!170682 lambda!170647))))

(assert (=> b!4511291 true))

(declare-fun bs!847170 () Bool)

(declare-fun b!4511287 () Bool)

(assert (= bs!847170 (and b!4511287 b!4511188)))

(declare-fun lambda!170683 () Int)

(assert (=> bs!847170 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170683 lambda!170670))))

(declare-fun bs!847171 () Bool)

(assert (= bs!847171 (and b!4511287 b!4511291)))

(assert (=> bs!847171 (= lambda!170683 lambda!170682)))

(declare-fun bs!847172 () Bool)

(assert (= bs!847172 (and b!4511287 d!1387590)))

(assert (=> bs!847172 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689493) (= lambda!170683 lambda!170672))))

(declare-fun bs!847173 () Bool)

(assert (= bs!847173 (and b!4511287 b!4511066)))

(assert (=> bs!847173 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689409) (= lambda!170683 lambda!170649))))

(declare-fun bs!847174 () Bool)

(assert (= bs!847174 (and b!4511287 b!4511192)))

(assert (=> bs!847174 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170683 lambda!170669))))

(declare-fun bs!847175 () Bool)

(assert (= bs!847175 (and b!4511287 b!4511109)))

(assert (=> bs!847175 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689048) (= lambda!170683 lambda!170653))))

(assert (=> bs!847170 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689504) (= lambda!170683 lambda!170671))))

(declare-fun bs!847176 () Bool)

(assert (= bs!847176 (and b!4511287 b!4511113)))

(assert (=> bs!847176 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689048) (= lambda!170683 lambda!170652))))

(assert (=> bs!847173 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689058) (= lambda!170683 lambda!170648))))

(declare-fun bs!847177 () Bool)

(assert (= bs!847177 (and b!4511287 d!1387526)))

(assert (=> bs!847177 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689430) (= lambda!170683 lambda!170655))))

(declare-fun bs!847178 () Bool)

(assert (= bs!847178 (and b!4511287 d!1387530)))

(assert (=> bs!847178 (not (= lambda!170683 lambda!170658))))

(assert (=> bs!847175 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689441) (= lambda!170683 lambda!170654))))

(declare-fun bs!847179 () Bool)

(assert (= bs!847179 (and b!4511287 d!1387458)))

(assert (=> bs!847179 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689398) (= lambda!170683 lambda!170650))))

(declare-fun bs!847180 () Bool)

(assert (= bs!847180 (and b!4511287 b!4511070)))

(assert (=> bs!847180 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689058) (= lambda!170683 lambda!170647))))

(assert (=> b!4511287 true))

(declare-fun lt!1689547 () ListMap!3557)

(declare-fun lambda!170684 () Int)

(assert (=> bs!847170 (= (= lt!1689547 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170684 lambda!170670))))

(assert (=> bs!847171 (= (= lt!1689547 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170684 lambda!170682))))

(assert (=> b!4511287 (= (= lt!1689547 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170684 lambda!170683))))

(assert (=> bs!847172 (= (= lt!1689547 lt!1689493) (= lambda!170684 lambda!170672))))

(assert (=> bs!847173 (= (= lt!1689547 lt!1689409) (= lambda!170684 lambda!170649))))

(assert (=> bs!847174 (= (= lt!1689547 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170684 lambda!170669))))

(assert (=> bs!847175 (= (= lt!1689547 lt!1689048) (= lambda!170684 lambda!170653))))

(assert (=> bs!847170 (= (= lt!1689547 lt!1689504) (= lambda!170684 lambda!170671))))

(assert (=> bs!847176 (= (= lt!1689547 lt!1689048) (= lambda!170684 lambda!170652))))

(assert (=> bs!847173 (= (= lt!1689547 lt!1689058) (= lambda!170684 lambda!170648))))

(assert (=> bs!847177 (= (= lt!1689547 lt!1689430) (= lambda!170684 lambda!170655))))

(assert (=> bs!847178 (not (= lambda!170684 lambda!170658))))

(assert (=> bs!847175 (= (= lt!1689547 lt!1689441) (= lambda!170684 lambda!170654))))

(assert (=> bs!847179 (= (= lt!1689547 lt!1689398) (= lambda!170684 lambda!170650))))

(assert (=> bs!847180 (= (= lt!1689547 lt!1689058) (= lambda!170684 lambda!170647))))

(assert (=> b!4511287 true))

(declare-fun bs!847181 () Bool)

(declare-fun d!1387654 () Bool)

(assert (= bs!847181 (and d!1387654 b!4511188)))

(declare-fun lt!1689536 () ListMap!3557)

(declare-fun lambda!170685 () Int)

(assert (=> bs!847181 (= (= lt!1689536 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170685 lambda!170670))))

(declare-fun bs!847182 () Bool)

(assert (= bs!847182 (and d!1387654 b!4511291)))

(assert (=> bs!847182 (= (= lt!1689536 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170685 lambda!170682))))

(declare-fun bs!847183 () Bool)

(assert (= bs!847183 (and d!1387654 b!4511287)))

(assert (=> bs!847183 (= (= lt!1689536 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170685 lambda!170683))))

(declare-fun bs!847184 () Bool)

(assert (= bs!847184 (and d!1387654 d!1387590)))

(assert (=> bs!847184 (= (= lt!1689536 lt!1689493) (= lambda!170685 lambda!170672))))

(declare-fun bs!847185 () Bool)

(assert (= bs!847185 (and d!1387654 b!4511066)))

(assert (=> bs!847185 (= (= lt!1689536 lt!1689409) (= lambda!170685 lambda!170649))))

(declare-fun bs!847186 () Bool)

(assert (= bs!847186 (and d!1387654 b!4511192)))

(assert (=> bs!847186 (= (= lt!1689536 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170685 lambda!170669))))

(declare-fun bs!847187 () Bool)

(assert (= bs!847187 (and d!1387654 b!4511109)))

(assert (=> bs!847187 (= (= lt!1689536 lt!1689048) (= lambda!170685 lambda!170653))))

(assert (=> bs!847181 (= (= lt!1689536 lt!1689504) (= lambda!170685 lambda!170671))))

(assert (=> bs!847185 (= (= lt!1689536 lt!1689058) (= lambda!170685 lambda!170648))))

(declare-fun bs!847188 () Bool)

(assert (= bs!847188 (and d!1387654 d!1387526)))

(assert (=> bs!847188 (= (= lt!1689536 lt!1689430) (= lambda!170685 lambda!170655))))

(declare-fun bs!847189 () Bool)

(assert (= bs!847189 (and d!1387654 d!1387530)))

(assert (=> bs!847189 (not (= lambda!170685 lambda!170658))))

(assert (=> bs!847187 (= (= lt!1689536 lt!1689441) (= lambda!170685 lambda!170654))))

(declare-fun bs!847190 () Bool)

(assert (= bs!847190 (and d!1387654 d!1387458)))

(assert (=> bs!847190 (= (= lt!1689536 lt!1689398) (= lambda!170685 lambda!170650))))

(declare-fun bs!847191 () Bool)

(assert (= bs!847191 (and d!1387654 b!4511070)))

(assert (=> bs!847191 (= (= lt!1689536 lt!1689058) (= lambda!170685 lambda!170647))))

(assert (=> bs!847183 (= (= lt!1689536 lt!1689547) (= lambda!170685 lambda!170684))))

(declare-fun bs!847192 () Bool)

(assert (= bs!847192 (and d!1387654 b!4511113)))

(assert (=> bs!847192 (= (= lt!1689536 lt!1689048) (= lambda!170685 lambda!170652))))

(assert (=> d!1387654 true))

(declare-fun bm!314124 () Bool)

(declare-fun call!314129 () Unit!93482)

(assert (=> bm!314124 (= call!314129 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))))))

(declare-fun call!314130 () Bool)

(declare-fun c!769522 () Bool)

(declare-fun bm!314125 () Bool)

(assert (=> bm!314125 (= call!314130 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (ite c!769522 lambda!170682 lambda!170684)))))

(declare-fun e!2810413 () ListMap!3557)

(assert (=> b!4511287 (= e!2810413 lt!1689547)))

(declare-fun lt!1689532 () ListMap!3557)

(assert (=> b!4511287 (= lt!1689532 (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))))))

(assert (=> b!4511287 (= lt!1689547 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689057)))) (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))))

(declare-fun lt!1689544 () Unit!93482)

(assert (=> b!4511287 (= lt!1689544 call!314129)))

(declare-fun call!314131 () Bool)

(assert (=> b!4511287 call!314131))

(declare-fun lt!1689540 () Unit!93482)

(assert (=> b!4511287 (= lt!1689540 lt!1689544)))

(assert (=> b!4511287 (forall!10225 (toList!4295 lt!1689532) lambda!170684)))

(declare-fun lt!1689533 () Unit!93482)

(declare-fun Unit!93557 () Unit!93482)

(assert (=> b!4511287 (= lt!1689533 Unit!93557)))

(assert (=> b!4511287 (forall!10225 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689057)))) lambda!170684)))

(declare-fun lt!1689543 () Unit!93482)

(declare-fun Unit!93558 () Unit!93482)

(assert (=> b!4511287 (= lt!1689543 Unit!93558)))

(declare-fun lt!1689550 () Unit!93482)

(declare-fun Unit!93559 () Unit!93482)

(assert (=> b!4511287 (= lt!1689550 Unit!93559)))

(declare-fun lt!1689539 () Unit!93482)

(assert (=> b!4511287 (= lt!1689539 (forallContained!2477 (toList!4295 lt!1689532) lambda!170684 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))))))

(assert (=> b!4511287 (contains!13299 lt!1689532 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))))))

(declare-fun lt!1689551 () Unit!93482)

(declare-fun Unit!93560 () Unit!93482)

(assert (=> b!4511287 (= lt!1689551 Unit!93560)))

(assert (=> b!4511287 (contains!13299 lt!1689547 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))))))

(declare-fun lt!1689546 () Unit!93482)

(declare-fun Unit!93561 () Unit!93482)

(assert (=> b!4511287 (= lt!1689546 Unit!93561)))

(assert (=> b!4511287 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689057))) lambda!170684)))

(declare-fun lt!1689541 () Unit!93482)

(declare-fun Unit!93562 () Unit!93482)

(assert (=> b!4511287 (= lt!1689541 Unit!93562)))

(assert (=> b!4511287 (forall!10225 (toList!4295 lt!1689532) lambda!170684)))

(declare-fun lt!1689549 () Unit!93482)

(declare-fun Unit!93563 () Unit!93482)

(assert (=> b!4511287 (= lt!1689549 Unit!93563)))

(declare-fun lt!1689535 () Unit!93482)

(declare-fun Unit!93564 () Unit!93482)

(assert (=> b!4511287 (= lt!1689535 Unit!93564)))

(declare-fun lt!1689538 () Unit!93482)

(assert (=> b!4511287 (= lt!1689538 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689547 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))))

(assert (=> b!4511287 call!314130))

(declare-fun lt!1689531 () Unit!93482)

(assert (=> b!4511287 (= lt!1689531 lt!1689538)))

(assert (=> b!4511287 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) lambda!170684)))

(declare-fun lt!1689537 () Unit!93482)

(declare-fun Unit!93565 () Unit!93482)

(assert (=> b!4511287 (= lt!1689537 Unit!93565)))

(declare-fun res!1876543 () Bool)

(assert (=> b!4511287 (= res!1876543 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689057))) lambda!170684))))

(declare-fun e!2810414 () Bool)

(assert (=> b!4511287 (=> (not res!1876543) (not e!2810414))))

(assert (=> b!4511287 e!2810414))

(declare-fun lt!1689548 () Unit!93482)

(declare-fun Unit!93566 () Unit!93482)

(assert (=> b!4511287 (= lt!1689548 Unit!93566)))

(declare-fun b!4511288 () Bool)

(declare-fun e!2810412 () Bool)

(assert (=> b!4511288 (= e!2810412 (invariantList!1001 (toList!4295 lt!1689536)))))

(declare-fun b!4511289 () Bool)

(declare-fun res!1876544 () Bool)

(assert (=> b!4511289 (=> (not res!1876544) (not e!2810412))))

(assert (=> b!4511289 (= res!1876544 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) lambda!170685))))

(declare-fun b!4511290 () Bool)

(assert (=> b!4511290 (= e!2810414 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) lambda!170684))))

(assert (=> b!4511291 (= e!2810413 (extractMap!1200 (t!357685 (toList!4296 lt!1689057))))))

(declare-fun lt!1689542 () Unit!93482)

(assert (=> b!4511291 (= lt!1689542 call!314129)))

(assert (=> b!4511291 call!314131))

(declare-fun lt!1689545 () Unit!93482)

(assert (=> b!4511291 (= lt!1689545 lt!1689542)))

(assert (=> b!4511291 call!314130))

(declare-fun lt!1689534 () Unit!93482)

(declare-fun Unit!93567 () Unit!93482)

(assert (=> b!4511291 (= lt!1689534 Unit!93567)))

(assert (=> d!1387654 e!2810412))

(declare-fun res!1876545 () Bool)

(assert (=> d!1387654 (=> (not res!1876545) (not e!2810412))))

(assert (=> d!1387654 (= res!1876545 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689057))) lambda!170685))))

(assert (=> d!1387654 (= lt!1689536 e!2810413)))

(assert (=> d!1387654 (= c!769522 ((_ is Nil!50598) (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(assert (=> d!1387654 (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689057))))))

(assert (=> d!1387654 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689057))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) lt!1689536)))

(declare-fun bm!314126 () Bool)

(assert (=> bm!314126 (= call!314131 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (ite c!769522 lambda!170682 lambda!170683)))))

(assert (= (and d!1387654 c!769522) b!4511291))

(assert (= (and d!1387654 (not c!769522)) b!4511287))

(assert (= (and b!4511287 res!1876543) b!4511290))

(assert (= (or b!4511291 b!4511287) bm!314126))

(assert (= (or b!4511291 b!4511287) bm!314125))

(assert (= (or b!4511291 b!4511287) bm!314124))

(assert (= (and d!1387654 res!1876545) b!4511289))

(assert (= (and b!4511289 res!1876544) b!4511288))

(declare-fun m!5251261 () Bool)

(assert (=> b!4511287 m!5251261))

(declare-fun m!5251263 () Bool)

(assert (=> b!4511287 m!5251263))

(declare-fun m!5251265 () Bool)

(assert (=> b!4511287 m!5251265))

(declare-fun m!5251267 () Bool)

(assert (=> b!4511287 m!5251267))

(assert (=> b!4511287 m!5250593))

(declare-fun m!5251269 () Bool)

(assert (=> b!4511287 m!5251269))

(declare-fun m!5251271 () Bool)

(assert (=> b!4511287 m!5251271))

(declare-fun m!5251273 () Bool)

(assert (=> b!4511287 m!5251273))

(declare-fun m!5251275 () Bool)

(assert (=> b!4511287 m!5251275))

(assert (=> b!4511287 m!5250593))

(assert (=> b!4511287 m!5251271))

(assert (=> b!4511287 m!5251275))

(declare-fun m!5251277 () Bool)

(assert (=> b!4511287 m!5251277))

(assert (=> b!4511287 m!5251277))

(declare-fun m!5251279 () Bool)

(assert (=> b!4511287 m!5251279))

(assert (=> b!4511290 m!5251261))

(declare-fun m!5251281 () Bool)

(assert (=> bm!314125 m!5251281))

(assert (=> bm!314124 m!5250593))

(declare-fun m!5251283 () Bool)

(assert (=> bm!314124 m!5251283))

(declare-fun m!5251285 () Bool)

(assert (=> b!4511289 m!5251285))

(declare-fun m!5251287 () Bool)

(assert (=> b!4511288 m!5251287))

(declare-fun m!5251289 () Bool)

(assert (=> bm!314126 m!5251289))

(declare-fun m!5251291 () Bool)

(assert (=> d!1387654 m!5251291))

(declare-fun m!5251293 () Bool)

(assert (=> d!1387654 m!5251293))

(assert (=> b!4510946 d!1387654))

(declare-fun bs!847193 () Bool)

(declare-fun d!1387656 () Bool)

(assert (= bs!847193 (and d!1387656 d!1387548)))

(declare-fun lambda!170686 () Int)

(assert (=> bs!847193 (= lambda!170686 lambda!170662)))

(declare-fun bs!847194 () Bool)

(assert (= bs!847194 (and d!1387656 d!1387564)))

(assert (=> bs!847194 (= lambda!170686 lambda!170667)))

(declare-fun bs!847195 () Bool)

(assert (= bs!847195 (and d!1387656 d!1387592)))

(assert (=> bs!847195 (= lambda!170686 lambda!170673)))

(declare-fun bs!847196 () Bool)

(assert (= bs!847196 (and d!1387656 d!1387406)))

(assert (=> bs!847196 (not (= lambda!170686 lambda!170553))))

(declare-fun bs!847197 () Bool)

(assert (= bs!847197 (and d!1387656 d!1387450)))

(assert (=> bs!847197 (= lambda!170686 lambda!170565)))

(declare-fun bs!847198 () Bool)

(assert (= bs!847198 (and d!1387656 start!445924)))

(assert (=> bs!847198 (= lambda!170686 lambda!170537)))

(declare-fun bs!847199 () Bool)

(assert (= bs!847199 (and d!1387656 d!1387370)))

(assert (=> bs!847199 (= lambda!170686 lambda!170540)))

(declare-fun bs!847200 () Bool)

(assert (= bs!847200 (and d!1387656 d!1387506)))

(assert (=> bs!847200 (= lambda!170686 lambda!170651)))

(declare-fun bs!847201 () Bool)

(assert (= bs!847201 (and d!1387656 d!1387556)))

(assert (=> bs!847201 (= lambda!170686 lambda!170666)))

(declare-fun bs!847202 () Bool)

(assert (= bs!847202 (and d!1387656 d!1387582)))

(assert (=> bs!847202 (= lambda!170686 lambda!170668)))

(declare-fun bs!847203 () Bool)

(assert (= bs!847203 (and d!1387656 d!1387428)))

(assert (=> bs!847203 (= lambda!170686 lambda!170561)))

(declare-fun bs!847204 () Bool)

(assert (= bs!847204 (and d!1387656 d!1387448)))

(assert (=> bs!847204 (= lambda!170686 lambda!170562)))

(declare-fun bs!847205 () Bool)

(assert (= bs!847205 (and d!1387656 d!1387550)))

(assert (=> bs!847205 (= lambda!170686 lambda!170665)))

(declare-fun bs!847206 () Bool)

(assert (= bs!847206 (and d!1387656 d!1387536)))

(assert (=> bs!847206 (= lambda!170686 lambda!170661)))

(declare-fun bs!847207 () Bool)

(assert (= bs!847207 (and d!1387656 d!1387372)))

(assert (=> bs!847207 (= lambda!170686 lambda!170543)))

(declare-fun lt!1689552 () ListMap!3557)

(assert (=> d!1387656 (invariantList!1001 (toList!4295 lt!1689552))))

(declare-fun e!2810415 () ListMap!3557)

(assert (=> d!1387656 (= lt!1689552 e!2810415)))

(declare-fun c!769523 () Bool)

(assert (=> d!1387656 (= c!769523 ((_ is Cons!50599) (t!357685 (toList!4296 lt!1689057))))))

(assert (=> d!1387656 (forall!10223 (t!357685 (toList!4296 lt!1689057)) lambda!170686)))

(assert (=> d!1387656 (= (extractMap!1200 (t!357685 (toList!4296 lt!1689057))) lt!1689552)))

(declare-fun b!4511292 () Bool)

(assert (=> b!4511292 (= e!2810415 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 lt!1689057)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lt!1689057))))))))

(declare-fun b!4511293 () Bool)

(assert (=> b!4511293 (= e!2810415 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387656 c!769523) b!4511292))

(assert (= (and d!1387656 (not c!769523)) b!4511293))

(declare-fun m!5251295 () Bool)

(assert (=> d!1387656 m!5251295))

(declare-fun m!5251297 () Bool)

(assert (=> d!1387656 m!5251297))

(declare-fun m!5251299 () Bool)

(assert (=> b!4511292 m!5251299))

(assert (=> b!4511292 m!5251299))

(declare-fun m!5251301 () Bool)

(assert (=> b!4511292 m!5251301))

(assert (=> b!4510946 d!1387656))

(declare-fun bs!847208 () Bool)

(declare-fun b!4511295 () Bool)

(assert (= bs!847208 (and b!4511295 b!4511210)))

(declare-fun lambda!170687 () Int)

(assert (=> bs!847208 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (toList!4295 lt!1689045)) (= lambda!170687 lambda!170678))))

(declare-fun bs!847209 () Bool)

(assert (= bs!847209 (and b!4511295 b!4511217)))

(assert (=> bs!847209 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (toList!4295 lt!1689046)) (= lambda!170687 lambda!170680))))

(assert (=> b!4511295 true))

(declare-fun bs!847210 () Bool)

(declare-fun b!4511296 () Bool)

(assert (= bs!847210 (and b!4511296 b!4511211)))

(declare-fun lambda!170688 () Int)

(assert (=> bs!847210 (= lambda!170688 lambda!170679)))

(declare-fun bs!847211 () Bool)

(assert (= bs!847211 (and b!4511296 b!4511218)))

(assert (=> bs!847211 (= lambda!170688 lambda!170681)))

(declare-fun d!1387658 () Bool)

(declare-fun e!2810416 () Bool)

(assert (=> d!1387658 e!2810416))

(declare-fun res!1876547 () Bool)

(assert (=> d!1387658 (=> (not res!1876547) (not e!2810416))))

(declare-fun lt!1689553 () List!50725)

(assert (=> d!1387658 (= res!1876547 (noDuplicate!739 lt!1689553))))

(assert (=> d!1387658 (= lt!1689553 (getKeysList!449 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> d!1387658 (= (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lt!1689553)))

(declare-fun b!4511294 () Bool)

(declare-fun res!1876548 () Bool)

(assert (=> b!4511294 (=> (not res!1876548) (not e!2810416))))

(assert (=> b!4511294 (= res!1876548 (= (length!334 lt!1689553) (length!335 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun res!1876546 () Bool)

(assert (=> b!4511295 (=> (not res!1876546) (not e!2810416))))

(assert (=> b!4511295 (= res!1876546 (forall!10226 lt!1689553 lambda!170687))))

(assert (=> b!4511296 (= e!2810416 (= (content!8311 lt!1689553) (content!8311 (map!11122 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lambda!170688))))))

(assert (= (and d!1387658 res!1876547) b!4511294))

(assert (= (and b!4511294 res!1876548) b!4511295))

(assert (= (and b!4511295 res!1876546) b!4511296))

(declare-fun m!5251303 () Bool)

(assert (=> d!1387658 m!5251303))

(assert (=> d!1387658 m!5250613))

(declare-fun m!5251305 () Bool)

(assert (=> b!4511294 m!5251305))

(declare-fun m!5251307 () Bool)

(assert (=> b!4511294 m!5251307))

(declare-fun m!5251309 () Bool)

(assert (=> b!4511295 m!5251309))

(declare-fun m!5251311 () Bool)

(assert (=> b!4511296 m!5251311))

(declare-fun m!5251313 () Bool)

(assert (=> b!4511296 m!5251313))

(assert (=> b!4511296 m!5251313))

(declare-fun m!5251315 () Bool)

(assert (=> b!4511296 m!5251315))

(assert (=> b!4510967 d!1387658))

(declare-fun d!1387660 () Bool)

(declare-fun lt!1689554 () Bool)

(assert (=> d!1387660 (= lt!1689554 (select (content!8308 (toList!4296 lt!1689186)) lt!1689059))))

(declare-fun e!2810417 () Bool)

(assert (=> d!1387660 (= lt!1689554 e!2810417)))

(declare-fun res!1876549 () Bool)

(assert (=> d!1387660 (=> (not res!1876549) (not e!2810417))))

(assert (=> d!1387660 (= res!1876549 ((_ is Cons!50599) (toList!4296 lt!1689186)))))

(assert (=> d!1387660 (= (contains!13301 (toList!4296 lt!1689186) lt!1689059) lt!1689554)))

(declare-fun b!4511297 () Bool)

(declare-fun e!2810418 () Bool)

(assert (=> b!4511297 (= e!2810417 e!2810418)))

(declare-fun res!1876550 () Bool)

(assert (=> b!4511297 (=> res!1876550 e!2810418)))

(assert (=> b!4511297 (= res!1876550 (= (h!56436 (toList!4296 lt!1689186)) lt!1689059))))

(declare-fun b!4511298 () Bool)

(assert (=> b!4511298 (= e!2810418 (contains!13301 (t!357685 (toList!4296 lt!1689186)) lt!1689059))))

(assert (= (and d!1387660 res!1876549) b!4511297))

(assert (= (and b!4511297 (not res!1876550)) b!4511298))

(declare-fun m!5251317 () Bool)

(assert (=> d!1387660 m!5251317))

(declare-fun m!5251319 () Bool)

(assert (=> d!1387660 m!5251319))

(declare-fun m!5251321 () Bool)

(assert (=> b!4511298 m!5251321))

(assert (=> b!4510935 d!1387660))

(declare-fun d!1387662 () Bool)

(assert (=> d!1387662 (= (invariantList!1001 (toList!4295 lt!1689459)) (noDuplicatedKeys!254 (toList!4295 lt!1689459)))))

(declare-fun bs!847212 () Bool)

(assert (= bs!847212 d!1387662))

(declare-fun m!5251323 () Bool)

(assert (=> bs!847212 m!5251323))

(assert (=> d!1387548 d!1387662))

(declare-fun d!1387664 () Bool)

(declare-fun res!1876551 () Bool)

(declare-fun e!2810419 () Bool)

(assert (=> d!1387664 (=> res!1876551 e!2810419)))

(assert (=> d!1387664 (= res!1876551 ((_ is Nil!50599) (toList!4296 (+!1506 lt!1689057 lt!1689065))))))

(assert (=> d!1387664 (= (forall!10223 (toList!4296 (+!1506 lt!1689057 lt!1689065)) lambda!170662) e!2810419)))

(declare-fun b!4511299 () Bool)

(declare-fun e!2810420 () Bool)

(assert (=> b!4511299 (= e!2810419 e!2810420)))

(declare-fun res!1876552 () Bool)

(assert (=> b!4511299 (=> (not res!1876552) (not e!2810420))))

(assert (=> b!4511299 (= res!1876552 (dynLambda!21139 lambda!170662 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))

(declare-fun b!4511300 () Bool)

(assert (=> b!4511300 (= e!2810420 (forall!10223 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))) lambda!170662))))

(assert (= (and d!1387664 (not res!1876551)) b!4511299))

(assert (= (and b!4511299 res!1876552) b!4511300))

(declare-fun b_lambda!153777 () Bool)

(assert (=> (not b_lambda!153777) (not b!4511299)))

(declare-fun m!5251325 () Bool)

(assert (=> b!4511299 m!5251325))

(declare-fun m!5251327 () Bool)

(assert (=> b!4511300 m!5251327))

(assert (=> d!1387548 d!1387664))

(declare-fun d!1387666 () Bool)

(declare-fun lt!1689555 () Bool)

(assert (=> d!1387666 (= lt!1689555 (select (content!8311 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(declare-fun e!2810422 () Bool)

(assert (=> d!1387666 (= lt!1689555 e!2810422)))

(declare-fun res!1876553 () Bool)

(assert (=> d!1387666 (=> (not res!1876553) (not e!2810422))))

(assert (=> d!1387666 (= res!1876553 ((_ is Cons!50601) (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> d!1387666 (= (contains!13303 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) lt!1689555)))

(declare-fun b!4511301 () Bool)

(declare-fun e!2810421 () Bool)

(assert (=> b!4511301 (= e!2810422 e!2810421)))

(declare-fun res!1876554 () Bool)

(assert (=> b!4511301 (=> res!1876554 e!2810421)))

(assert (=> b!4511301 (= res!1876554 (= (h!56440 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(declare-fun b!4511302 () Bool)

(assert (=> b!4511302 (= e!2810421 (contains!13303 (t!357687 (keys!17562 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(assert (= (and d!1387666 res!1876553) b!4511301))

(assert (= (and b!4511301 (not res!1876554)) b!4511302))

(assert (=> d!1387666 m!5250599))

(declare-fun m!5251329 () Bool)

(assert (=> d!1387666 m!5251329))

(declare-fun m!5251331 () Bool)

(assert (=> d!1387666 m!5251331))

(declare-fun m!5251333 () Bool)

(assert (=> b!4511302 m!5251333))

(assert (=> b!4510974 d!1387666))

(assert (=> b!4510974 d!1387658))

(assert (=> b!4510903 d!1387392))

(declare-fun bs!847213 () Bool)

(declare-fun b!4511307 () Bool)

(assert (= bs!847213 (and b!4511307 b!4511188)))

(declare-fun lambda!170689 () Int)

(assert (=> bs!847213 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170689 lambda!170670))))

(declare-fun bs!847214 () Bool)

(assert (= bs!847214 (and b!4511307 b!4511291)))

(assert (=> bs!847214 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170689 lambda!170682))))

(declare-fun bs!847215 () Bool)

(assert (= bs!847215 (and b!4511307 b!4511287)))

(assert (=> bs!847215 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170689 lambda!170683))))

(declare-fun bs!847216 () Bool)

(assert (= bs!847216 (and b!4511307 d!1387590)))

(assert (=> bs!847216 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689493) (= lambda!170689 lambda!170672))))

(declare-fun bs!847217 () Bool)

(assert (= bs!847217 (and b!4511307 b!4511066)))

(assert (=> bs!847217 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689409) (= lambda!170689 lambda!170649))))

(declare-fun bs!847218 () Bool)

(assert (= bs!847218 (and b!4511307 b!4511192)))

(assert (=> bs!847218 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170689 lambda!170669))))

(declare-fun bs!847219 () Bool)

(assert (= bs!847219 (and b!4511307 b!4511109)))

(assert (=> bs!847219 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689048) (= lambda!170689 lambda!170653))))

(declare-fun bs!847220 () Bool)

(assert (= bs!847220 (and b!4511307 d!1387654)))

(assert (=> bs!847220 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689536) (= lambda!170689 lambda!170685))))

(assert (=> bs!847213 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689504) (= lambda!170689 lambda!170671))))

(assert (=> bs!847217 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689058) (= lambda!170689 lambda!170648))))

(declare-fun bs!847221 () Bool)

(assert (= bs!847221 (and b!4511307 d!1387526)))

(assert (=> bs!847221 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689430) (= lambda!170689 lambda!170655))))

(declare-fun bs!847222 () Bool)

(assert (= bs!847222 (and b!4511307 d!1387530)))

(assert (=> bs!847222 (not (= lambda!170689 lambda!170658))))

(assert (=> bs!847219 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689441) (= lambda!170689 lambda!170654))))

(declare-fun bs!847223 () Bool)

(assert (= bs!847223 (and b!4511307 d!1387458)))

(assert (=> bs!847223 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689398) (= lambda!170689 lambda!170650))))

(declare-fun bs!847224 () Bool)

(assert (= bs!847224 (and b!4511307 b!4511070)))

(assert (=> bs!847224 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689058) (= lambda!170689 lambda!170647))))

(assert (=> bs!847215 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689547) (= lambda!170689 lambda!170684))))

(declare-fun bs!847225 () Bool)

(assert (= bs!847225 (and b!4511307 b!4511113)))

(assert (=> bs!847225 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689048) (= lambda!170689 lambda!170652))))

(assert (=> b!4511307 true))

(declare-fun bs!847226 () Bool)

(declare-fun b!4511303 () Bool)

(assert (= bs!847226 (and b!4511303 b!4511307)))

(declare-fun lambda!170690 () Int)

(assert (=> bs!847226 (= lambda!170690 lambda!170689)))

(declare-fun bs!847227 () Bool)

(assert (= bs!847227 (and b!4511303 b!4511188)))

(assert (=> bs!847227 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170690 lambda!170670))))

(declare-fun bs!847228 () Bool)

(assert (= bs!847228 (and b!4511303 b!4511291)))

(assert (=> bs!847228 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170690 lambda!170682))))

(declare-fun bs!847229 () Bool)

(assert (= bs!847229 (and b!4511303 b!4511287)))

(assert (=> bs!847229 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170690 lambda!170683))))

(declare-fun bs!847230 () Bool)

(assert (= bs!847230 (and b!4511303 d!1387590)))

(assert (=> bs!847230 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689493) (= lambda!170690 lambda!170672))))

(declare-fun bs!847231 () Bool)

(assert (= bs!847231 (and b!4511303 b!4511066)))

(assert (=> bs!847231 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689409) (= lambda!170690 lambda!170649))))

(declare-fun bs!847232 () Bool)

(assert (= bs!847232 (and b!4511303 b!4511192)))

(assert (=> bs!847232 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170690 lambda!170669))))

(declare-fun bs!847233 () Bool)

(assert (= bs!847233 (and b!4511303 b!4511109)))

(assert (=> bs!847233 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689048) (= lambda!170690 lambda!170653))))

(declare-fun bs!847234 () Bool)

(assert (= bs!847234 (and b!4511303 d!1387654)))

(assert (=> bs!847234 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689536) (= lambda!170690 lambda!170685))))

(assert (=> bs!847227 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689504) (= lambda!170690 lambda!170671))))

(assert (=> bs!847231 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689058) (= lambda!170690 lambda!170648))))

(declare-fun bs!847235 () Bool)

(assert (= bs!847235 (and b!4511303 d!1387526)))

(assert (=> bs!847235 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689430) (= lambda!170690 lambda!170655))))

(declare-fun bs!847236 () Bool)

(assert (= bs!847236 (and b!4511303 d!1387530)))

(assert (=> bs!847236 (not (= lambda!170690 lambda!170658))))

(assert (=> bs!847233 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689441) (= lambda!170690 lambda!170654))))

(declare-fun bs!847237 () Bool)

(assert (= bs!847237 (and b!4511303 d!1387458)))

(assert (=> bs!847237 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689398) (= lambda!170690 lambda!170650))))

(declare-fun bs!847238 () Bool)

(assert (= bs!847238 (and b!4511303 b!4511070)))

(assert (=> bs!847238 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689058) (= lambda!170690 lambda!170647))))

(assert (=> bs!847229 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689547) (= lambda!170690 lambda!170684))))

(declare-fun bs!847239 () Bool)

(assert (= bs!847239 (and b!4511303 b!4511113)))

(assert (=> bs!847239 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689048) (= lambda!170690 lambda!170652))))

(assert (=> b!4511303 true))

(declare-fun lambda!170691 () Int)

(declare-fun lt!1689572 () ListMap!3557)

(assert (=> bs!847226 (= (= lt!1689572 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170691 lambda!170689))))

(assert (=> bs!847227 (= (= lt!1689572 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170691 lambda!170670))))

(assert (=> bs!847228 (= (= lt!1689572 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170691 lambda!170682))))

(assert (=> bs!847229 (= (= lt!1689572 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170691 lambda!170683))))

(assert (=> b!4511303 (= (= lt!1689572 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170691 lambda!170690))))

(assert (=> bs!847230 (= (= lt!1689572 lt!1689493) (= lambda!170691 lambda!170672))))

(assert (=> bs!847231 (= (= lt!1689572 lt!1689409) (= lambda!170691 lambda!170649))))

(assert (=> bs!847232 (= (= lt!1689572 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170691 lambda!170669))))

(assert (=> bs!847233 (= (= lt!1689572 lt!1689048) (= lambda!170691 lambda!170653))))

(assert (=> bs!847234 (= (= lt!1689572 lt!1689536) (= lambda!170691 lambda!170685))))

(assert (=> bs!847227 (= (= lt!1689572 lt!1689504) (= lambda!170691 lambda!170671))))

(assert (=> bs!847231 (= (= lt!1689572 lt!1689058) (= lambda!170691 lambda!170648))))

(assert (=> bs!847235 (= (= lt!1689572 lt!1689430) (= lambda!170691 lambda!170655))))

(assert (=> bs!847236 (not (= lambda!170691 lambda!170658))))

(assert (=> bs!847233 (= (= lt!1689572 lt!1689441) (= lambda!170691 lambda!170654))))

(assert (=> bs!847237 (= (= lt!1689572 lt!1689398) (= lambda!170691 lambda!170650))))

(assert (=> bs!847238 (= (= lt!1689572 lt!1689058) (= lambda!170691 lambda!170647))))

(assert (=> bs!847229 (= (= lt!1689572 lt!1689547) (= lambda!170691 lambda!170684))))

(assert (=> bs!847239 (= (= lt!1689572 lt!1689048) (= lambda!170691 lambda!170652))))

(assert (=> b!4511303 true))

(declare-fun bs!847240 () Bool)

(declare-fun d!1387668 () Bool)

(assert (= bs!847240 (and d!1387668 b!4511307)))

(declare-fun lt!1689561 () ListMap!3557)

(declare-fun lambda!170692 () Int)

(assert (=> bs!847240 (= (= lt!1689561 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170692 lambda!170689))))

(declare-fun bs!847241 () Bool)

(assert (= bs!847241 (and d!1387668 b!4511188)))

(assert (=> bs!847241 (= (= lt!1689561 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170692 lambda!170670))))

(declare-fun bs!847242 () Bool)

(assert (= bs!847242 (and d!1387668 b!4511291)))

(assert (=> bs!847242 (= (= lt!1689561 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170692 lambda!170682))))

(declare-fun bs!847243 () Bool)

(assert (= bs!847243 (and d!1387668 b!4511287)))

(assert (=> bs!847243 (= (= lt!1689561 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170692 lambda!170683))))

(declare-fun bs!847244 () Bool)

(assert (= bs!847244 (and d!1387668 b!4511303)))

(assert (=> bs!847244 (= (= lt!1689561 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170692 lambda!170690))))

(declare-fun bs!847245 () Bool)

(assert (= bs!847245 (and d!1387668 d!1387590)))

(assert (=> bs!847245 (= (= lt!1689561 lt!1689493) (= lambda!170692 lambda!170672))))

(declare-fun bs!847246 () Bool)

(assert (= bs!847246 (and d!1387668 b!4511066)))

(assert (=> bs!847246 (= (= lt!1689561 lt!1689409) (= lambda!170692 lambda!170649))))

(declare-fun bs!847247 () Bool)

(assert (= bs!847247 (and d!1387668 b!4511192)))

(assert (=> bs!847247 (= (= lt!1689561 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170692 lambda!170669))))

(declare-fun bs!847248 () Bool)

(assert (= bs!847248 (and d!1387668 b!4511109)))

(assert (=> bs!847248 (= (= lt!1689561 lt!1689048) (= lambda!170692 lambda!170653))))

(declare-fun bs!847249 () Bool)

(assert (= bs!847249 (and d!1387668 d!1387654)))

(assert (=> bs!847249 (= (= lt!1689561 lt!1689536) (= lambda!170692 lambda!170685))))

(assert (=> bs!847241 (= (= lt!1689561 lt!1689504) (= lambda!170692 lambda!170671))))

(assert (=> bs!847244 (= (= lt!1689561 lt!1689572) (= lambda!170692 lambda!170691))))

(assert (=> bs!847246 (= (= lt!1689561 lt!1689058) (= lambda!170692 lambda!170648))))

(declare-fun bs!847250 () Bool)

(assert (= bs!847250 (and d!1387668 d!1387526)))

(assert (=> bs!847250 (= (= lt!1689561 lt!1689430) (= lambda!170692 lambda!170655))))

(declare-fun bs!847251 () Bool)

(assert (= bs!847251 (and d!1387668 d!1387530)))

(assert (=> bs!847251 (not (= lambda!170692 lambda!170658))))

(assert (=> bs!847248 (= (= lt!1689561 lt!1689441) (= lambda!170692 lambda!170654))))

(declare-fun bs!847252 () Bool)

(assert (= bs!847252 (and d!1387668 d!1387458)))

(assert (=> bs!847252 (= (= lt!1689561 lt!1689398) (= lambda!170692 lambda!170650))))

(declare-fun bs!847253 () Bool)

(assert (= bs!847253 (and d!1387668 b!4511070)))

(assert (=> bs!847253 (= (= lt!1689561 lt!1689058) (= lambda!170692 lambda!170647))))

(assert (=> bs!847243 (= (= lt!1689561 lt!1689547) (= lambda!170692 lambda!170684))))

(declare-fun bs!847254 () Bool)

(assert (= bs!847254 (and d!1387668 b!4511113)))

(assert (=> bs!847254 (= (= lt!1689561 lt!1689048) (= lambda!170692 lambda!170652))))

(assert (=> d!1387668 true))

(declare-fun bm!314127 () Bool)

(declare-fun call!314132 () Unit!93482)

(assert (=> bm!314127 (= call!314132 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))))))

(declare-fun c!769524 () Bool)

(declare-fun bm!314128 () Bool)

(declare-fun call!314133 () Bool)

(assert (=> bm!314128 (= call!314133 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (ite c!769524 lambda!170689 lambda!170691)))))

(declare-fun e!2810424 () ListMap!3557)

(assert (=> b!4511303 (= e!2810424 lt!1689572)))

(declare-fun lt!1689557 () ListMap!3557)

(assert (=> b!4511303 (= lt!1689557 (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063))))))))

(assert (=> b!4511303 (= lt!1689572 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689063)))) (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063)))))))))

(declare-fun lt!1689569 () Unit!93482)

(assert (=> b!4511303 (= lt!1689569 call!314132)))

(declare-fun call!314134 () Bool)

(assert (=> b!4511303 call!314134))

(declare-fun lt!1689565 () Unit!93482)

(assert (=> b!4511303 (= lt!1689565 lt!1689569)))

(assert (=> b!4511303 (forall!10225 (toList!4295 lt!1689557) lambda!170691)))

(declare-fun lt!1689558 () Unit!93482)

(declare-fun Unit!93579 () Unit!93482)

(assert (=> b!4511303 (= lt!1689558 Unit!93579)))

(assert (=> b!4511303 (forall!10225 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689063)))) lambda!170691)))

(declare-fun lt!1689568 () Unit!93482)

(declare-fun Unit!93580 () Unit!93482)

(assert (=> b!4511303 (= lt!1689568 Unit!93580)))

(declare-fun lt!1689575 () Unit!93482)

(declare-fun Unit!93581 () Unit!93482)

(assert (=> b!4511303 (= lt!1689575 Unit!93581)))

(declare-fun lt!1689564 () Unit!93482)

(assert (=> b!4511303 (= lt!1689564 (forallContained!2477 (toList!4295 lt!1689557) lambda!170691 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063))))))))

(assert (=> b!4511303 (contains!13299 lt!1689557 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063))))))))

(declare-fun lt!1689576 () Unit!93482)

(declare-fun Unit!93582 () Unit!93482)

(assert (=> b!4511303 (= lt!1689576 Unit!93582)))

(assert (=> b!4511303 (contains!13299 lt!1689572 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063))))))))

(declare-fun lt!1689571 () Unit!93482)

(declare-fun Unit!93583 () Unit!93482)

(assert (=> b!4511303 (= lt!1689571 Unit!93583)))

(assert (=> b!4511303 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689063))) lambda!170691)))

(declare-fun lt!1689566 () Unit!93482)

(declare-fun Unit!93584 () Unit!93482)

(assert (=> b!4511303 (= lt!1689566 Unit!93584)))

(assert (=> b!4511303 (forall!10225 (toList!4295 lt!1689557) lambda!170691)))

(declare-fun lt!1689574 () Unit!93482)

(declare-fun Unit!93585 () Unit!93482)

(assert (=> b!4511303 (= lt!1689574 Unit!93585)))

(declare-fun lt!1689560 () Unit!93482)

(declare-fun Unit!93586 () Unit!93482)

(assert (=> b!4511303 (= lt!1689560 Unit!93586)))

(declare-fun lt!1689563 () Unit!93482)

(assert (=> b!4511303 (= lt!1689563 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689572 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689063)))))))))

(assert (=> b!4511303 call!314133))

(declare-fun lt!1689556 () Unit!93482)

(assert (=> b!4511303 (= lt!1689556 lt!1689563)))

(assert (=> b!4511303 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) lambda!170691)))

(declare-fun lt!1689562 () Unit!93482)

(declare-fun Unit!93588 () Unit!93482)

(assert (=> b!4511303 (= lt!1689562 Unit!93588)))

(declare-fun res!1876555 () Bool)

(assert (=> b!4511303 (= res!1876555 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689063))) lambda!170691))))

(declare-fun e!2810425 () Bool)

(assert (=> b!4511303 (=> (not res!1876555) (not e!2810425))))

(assert (=> b!4511303 e!2810425))

(declare-fun lt!1689573 () Unit!93482)

(declare-fun Unit!93589 () Unit!93482)

(assert (=> b!4511303 (= lt!1689573 Unit!93589)))

(declare-fun b!4511304 () Bool)

(declare-fun e!2810423 () Bool)

(assert (=> b!4511304 (= e!2810423 (invariantList!1001 (toList!4295 lt!1689561)))))

(declare-fun b!4511305 () Bool)

(declare-fun res!1876556 () Bool)

(assert (=> b!4511305 (=> (not res!1876556) (not e!2810423))))

(assert (=> b!4511305 (= res!1876556 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) lambda!170692))))

(declare-fun b!4511306 () Bool)

(assert (=> b!4511306 (= e!2810425 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) lambda!170691))))

(assert (=> b!4511307 (= e!2810424 (extractMap!1200 (t!357685 (toList!4296 lt!1689063))))))

(declare-fun lt!1689567 () Unit!93482)

(assert (=> b!4511307 (= lt!1689567 call!314132)))

(assert (=> b!4511307 call!314134))

(declare-fun lt!1689570 () Unit!93482)

(assert (=> b!4511307 (= lt!1689570 lt!1689567)))

(assert (=> b!4511307 call!314133))

(declare-fun lt!1689559 () Unit!93482)

(declare-fun Unit!93591 () Unit!93482)

(assert (=> b!4511307 (= lt!1689559 Unit!93591)))

(assert (=> d!1387668 e!2810423))

(declare-fun res!1876557 () Bool)

(assert (=> d!1387668 (=> (not res!1876557) (not e!2810423))))

(assert (=> d!1387668 (= res!1876557 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689063))) lambda!170692))))

(assert (=> d!1387668 (= lt!1689561 e!2810424)))

(assert (=> d!1387668 (= c!769524 ((_ is Nil!50598) (_2!28800 (h!56436 (toList!4296 lt!1689063)))))))

(assert (=> d!1387668 (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689063))))))

(assert (=> d!1387668 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689063))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) lt!1689561)))

(declare-fun bm!314129 () Bool)

(assert (=> bm!314129 (= call!314134 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (ite c!769524 lambda!170689 lambda!170690)))))

(assert (= (and d!1387668 c!769524) b!4511307))

(assert (= (and d!1387668 (not c!769524)) b!4511303))

(assert (= (and b!4511303 res!1876555) b!4511306))

(assert (= (or b!4511307 b!4511303) bm!314129))

(assert (= (or b!4511307 b!4511303) bm!314128))

(assert (= (or b!4511307 b!4511303) bm!314127))

(assert (= (and d!1387668 res!1876557) b!4511305))

(assert (= (and b!4511305 res!1876556) b!4511304))

(declare-fun m!5251335 () Bool)

(assert (=> b!4511303 m!5251335))

(declare-fun m!5251337 () Bool)

(assert (=> b!4511303 m!5251337))

(declare-fun m!5251339 () Bool)

(assert (=> b!4511303 m!5251339))

(declare-fun m!5251341 () Bool)

(assert (=> b!4511303 m!5251341))

(assert (=> b!4511303 m!5251011))

(declare-fun m!5251343 () Bool)

(assert (=> b!4511303 m!5251343))

(declare-fun m!5251345 () Bool)

(assert (=> b!4511303 m!5251345))

(declare-fun m!5251347 () Bool)

(assert (=> b!4511303 m!5251347))

(declare-fun m!5251349 () Bool)

(assert (=> b!4511303 m!5251349))

(assert (=> b!4511303 m!5251011))

(assert (=> b!4511303 m!5251345))

(assert (=> b!4511303 m!5251349))

(declare-fun m!5251351 () Bool)

(assert (=> b!4511303 m!5251351))

(assert (=> b!4511303 m!5251351))

(declare-fun m!5251353 () Bool)

(assert (=> b!4511303 m!5251353))

(assert (=> b!4511306 m!5251335))

(declare-fun m!5251355 () Bool)

(assert (=> bm!314128 m!5251355))

(assert (=> bm!314127 m!5251011))

(declare-fun m!5251357 () Bool)

(assert (=> bm!314127 m!5251357))

(declare-fun m!5251359 () Bool)

(assert (=> b!4511305 m!5251359))

(declare-fun m!5251361 () Bool)

(assert (=> b!4511304 m!5251361))

(declare-fun m!5251363 () Bool)

(assert (=> bm!314129 m!5251363))

(declare-fun m!5251365 () Bool)

(assert (=> d!1387668 m!5251365))

(declare-fun m!5251367 () Bool)

(assert (=> d!1387668 m!5251367))

(assert (=> b!4511139 d!1387668))

(declare-fun bs!847255 () Bool)

(declare-fun d!1387670 () Bool)

(assert (= bs!847255 (and d!1387670 d!1387548)))

(declare-fun lambda!170693 () Int)

(assert (=> bs!847255 (= lambda!170693 lambda!170662)))

(declare-fun bs!847256 () Bool)

(assert (= bs!847256 (and d!1387670 d!1387564)))

(assert (=> bs!847256 (= lambda!170693 lambda!170667)))

(declare-fun bs!847257 () Bool)

(assert (= bs!847257 (and d!1387670 d!1387592)))

(assert (=> bs!847257 (= lambda!170693 lambda!170673)))

(declare-fun bs!847258 () Bool)

(assert (= bs!847258 (and d!1387670 d!1387406)))

(assert (=> bs!847258 (not (= lambda!170693 lambda!170553))))

(declare-fun bs!847259 () Bool)

(assert (= bs!847259 (and d!1387670 d!1387450)))

(assert (=> bs!847259 (= lambda!170693 lambda!170565)))

(declare-fun bs!847260 () Bool)

(assert (= bs!847260 (and d!1387670 start!445924)))

(assert (=> bs!847260 (= lambda!170693 lambda!170537)))

(declare-fun bs!847261 () Bool)

(assert (= bs!847261 (and d!1387670 d!1387370)))

(assert (=> bs!847261 (= lambda!170693 lambda!170540)))

(declare-fun bs!847262 () Bool)

(assert (= bs!847262 (and d!1387670 d!1387506)))

(assert (=> bs!847262 (= lambda!170693 lambda!170651)))

(declare-fun bs!847263 () Bool)

(assert (= bs!847263 (and d!1387670 d!1387556)))

(assert (=> bs!847263 (= lambda!170693 lambda!170666)))

(declare-fun bs!847264 () Bool)

(assert (= bs!847264 (and d!1387670 d!1387582)))

(assert (=> bs!847264 (= lambda!170693 lambda!170668)))

(declare-fun bs!847265 () Bool)

(assert (= bs!847265 (and d!1387670 d!1387428)))

(assert (=> bs!847265 (= lambda!170693 lambda!170561)))

(declare-fun bs!847266 () Bool)

(assert (= bs!847266 (and d!1387670 d!1387448)))

(assert (=> bs!847266 (= lambda!170693 lambda!170562)))

(declare-fun bs!847267 () Bool)

(assert (= bs!847267 (and d!1387670 d!1387550)))

(assert (=> bs!847267 (= lambda!170693 lambda!170665)))

(declare-fun bs!847268 () Bool)

(assert (= bs!847268 (and d!1387670 d!1387536)))

(assert (=> bs!847268 (= lambda!170693 lambda!170661)))

(declare-fun bs!847269 () Bool)

(assert (= bs!847269 (and d!1387670 d!1387656)))

(assert (=> bs!847269 (= lambda!170693 lambda!170686)))

(declare-fun bs!847270 () Bool)

(assert (= bs!847270 (and d!1387670 d!1387372)))

(assert (=> bs!847270 (= lambda!170693 lambda!170543)))

(declare-fun lt!1689577 () ListMap!3557)

(assert (=> d!1387670 (invariantList!1001 (toList!4295 lt!1689577))))

(declare-fun e!2810426 () ListMap!3557)

(assert (=> d!1387670 (= lt!1689577 e!2810426)))

(declare-fun c!769525 () Bool)

(assert (=> d!1387670 (= c!769525 ((_ is Cons!50599) (t!357685 (toList!4296 lt!1689063))))))

(assert (=> d!1387670 (forall!10223 (t!357685 (toList!4296 lt!1689063)) lambda!170693)))

(assert (=> d!1387670 (= (extractMap!1200 (t!357685 (toList!4296 lt!1689063))) lt!1689577)))

(declare-fun b!4511308 () Bool)

(assert (=> b!4511308 (= e!2810426 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 lt!1689063)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lt!1689063))))))))

(declare-fun b!4511309 () Bool)

(assert (=> b!4511309 (= e!2810426 (ListMap!3558 Nil!50598))))

(assert (= (and d!1387670 c!769525) b!4511308))

(assert (= (and d!1387670 (not c!769525)) b!4511309))

(declare-fun m!5251369 () Bool)

(assert (=> d!1387670 m!5251369))

(declare-fun m!5251371 () Bool)

(assert (=> d!1387670 m!5251371))

(declare-fun m!5251373 () Bool)

(assert (=> b!4511308 m!5251373))

(assert (=> b!4511308 m!5251373))

(declare-fun m!5251375 () Bool)

(assert (=> b!4511308 m!5251375))

(assert (=> b!4511139 d!1387670))

(declare-fun d!1387672 () Bool)

(declare-fun lt!1689578 () Bool)

(assert (=> d!1387672 (= lt!1689578 (select (content!8308 (toList!4296 lt!1689466)) lt!1689065))))

(declare-fun e!2810427 () Bool)

(assert (=> d!1387672 (= lt!1689578 e!2810427)))

(declare-fun res!1876558 () Bool)

(assert (=> d!1387672 (=> (not res!1876558) (not e!2810427))))

(assert (=> d!1387672 (= res!1876558 ((_ is Cons!50599) (toList!4296 lt!1689466)))))

(assert (=> d!1387672 (= (contains!13301 (toList!4296 lt!1689466) lt!1689065) lt!1689578)))

(declare-fun b!4511310 () Bool)

(declare-fun e!2810428 () Bool)

(assert (=> b!4511310 (= e!2810427 e!2810428)))

(declare-fun res!1876559 () Bool)

(assert (=> b!4511310 (=> res!1876559 e!2810428)))

(assert (=> b!4511310 (= res!1876559 (= (h!56436 (toList!4296 lt!1689466)) lt!1689065))))

(declare-fun b!4511311 () Bool)

(assert (=> b!4511311 (= e!2810428 (contains!13301 (t!357685 (toList!4296 lt!1689466)) lt!1689065))))

(assert (= (and d!1387672 res!1876558) b!4511310))

(assert (= (and b!4511310 (not res!1876559)) b!4511311))

(declare-fun m!5251377 () Bool)

(assert (=> d!1387672 m!5251377))

(declare-fun m!5251379 () Bool)

(assert (=> d!1387672 m!5251379))

(declare-fun m!5251381 () Bool)

(assert (=> b!4511311 m!5251381))

(assert (=> b!4511138 d!1387672))

(declare-fun d!1387674 () Bool)

(declare-fun res!1876560 () Bool)

(declare-fun e!2810429 () Bool)

(assert (=> d!1387674 (=> res!1876560 e!2810429)))

(assert (=> d!1387674 (= res!1876560 ((_ is Nil!50598) (toList!4295 lt!1689058)))))

(assert (=> d!1387674 (= (forall!10225 (toList!4295 lt!1689058) lambda!170649) e!2810429)))

(declare-fun b!4511312 () Bool)

(declare-fun e!2810430 () Bool)

(assert (=> b!4511312 (= e!2810429 e!2810430)))

(declare-fun res!1876561 () Bool)

(assert (=> b!4511312 (=> (not res!1876561) (not e!2810430))))

(assert (=> b!4511312 (= res!1876561 (dynLambda!21140 lambda!170649 (h!56435 (toList!4295 lt!1689058))))))

(declare-fun b!4511313 () Bool)

(assert (=> b!4511313 (= e!2810430 (forall!10225 (t!357684 (toList!4295 lt!1689058)) lambda!170649))))

(assert (= (and d!1387674 (not res!1876560)) b!4511312))

(assert (= (and b!4511312 res!1876561) b!4511313))

(declare-fun b_lambda!153779 () Bool)

(assert (=> (not b_lambda!153779) (not b!4511312)))

(declare-fun m!5251383 () Bool)

(assert (=> b!4511312 m!5251383))

(declare-fun m!5251385 () Bool)

(assert (=> b!4511313 m!5251385))

(assert (=> b!4511069 d!1387674))

(declare-fun d!1387676 () Bool)

(assert (=> d!1387676 (= (tail!7704 (toList!4296 lm!1477)) (t!357685 (toList!4296 lm!1477)))))

(assert (=> d!1387560 d!1387676))

(declare-fun b!4511314 () Bool)

(declare-fun e!2810434 () Unit!93482)

(declare-fun lt!1689579 () Unit!93482)

(assert (=> b!4511314 (= e!2810434 lt!1689579)))

(declare-fun lt!1689585 () Unit!93482)

(assert (=> b!4511314 (= lt!1689585 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(assert (=> b!4511314 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(declare-fun lt!1689583 () Unit!93482)

(assert (=> b!4511314 (= lt!1689583 lt!1689585)))

(assert (=> b!4511314 (= lt!1689579 (lemmaInListThenGetKeysListContains!445 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(declare-fun call!314135 () Bool)

(assert (=> b!4511314 call!314135))

(declare-fun b!4511315 () Bool)

(declare-fun e!2810432 () List!50725)

(assert (=> b!4511315 (= e!2810432 (keys!17562 (extractMap!1200 (toList!4296 lm!1477))))))

(declare-fun b!4511316 () Bool)

(declare-fun e!2810433 () Unit!93482)

(declare-fun Unit!93601 () Unit!93482)

(assert (=> b!4511316 (= e!2810433 Unit!93601)))

(declare-fun b!4511317 () Bool)

(assert (=> b!4511317 (= e!2810432 (getKeysList!449 (toList!4295 (extractMap!1200 (toList!4296 lm!1477)))))))

(declare-fun b!4511318 () Bool)

(declare-fun e!2810436 () Bool)

(assert (=> b!4511318 (= e!2810436 (not (contains!13303 (keys!17562 (extractMap!1200 (toList!4296 lm!1477))) key!3287)))))

(declare-fun b!4511319 () Bool)

(declare-fun e!2810435 () Bool)

(declare-fun e!2810431 () Bool)

(assert (=> b!4511319 (= e!2810435 e!2810431)))

(declare-fun res!1876563 () Bool)

(assert (=> b!4511319 (=> (not res!1876563) (not e!2810431))))

(assert (=> b!4511319 (= res!1876563 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287)))))

(declare-fun b!4511320 () Bool)

(assert (=> b!4511320 (= e!2810434 e!2810433)))

(declare-fun c!769528 () Bool)

(assert (=> b!4511320 (= c!769528 call!314135)))

(declare-fun b!4511321 () Bool)

(assert (=> b!4511321 false))

(declare-fun lt!1689580 () Unit!93482)

(declare-fun lt!1689581 () Unit!93482)

(assert (=> b!4511321 (= lt!1689580 lt!1689581)))

(assert (=> b!4511321 (containsKey!1736 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287)))

(assert (=> b!4511321 (= lt!1689581 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(declare-fun Unit!93602 () Unit!93482)

(assert (=> b!4511321 (= e!2810433 Unit!93602)))

(declare-fun b!4511322 () Bool)

(assert (=> b!4511322 (= e!2810431 (contains!13303 (keys!17562 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(declare-fun d!1387678 () Bool)

(assert (=> d!1387678 e!2810435))

(declare-fun res!1876562 () Bool)

(assert (=> d!1387678 (=> res!1876562 e!2810435)))

(assert (=> d!1387678 (= res!1876562 e!2810436)))

(declare-fun res!1876564 () Bool)

(assert (=> d!1387678 (=> (not res!1876564) (not e!2810436))))

(declare-fun lt!1689586 () Bool)

(assert (=> d!1387678 (= res!1876564 (not lt!1689586))))

(declare-fun lt!1689582 () Bool)

(assert (=> d!1387678 (= lt!1689586 lt!1689582)))

(declare-fun lt!1689584 () Unit!93482)

(assert (=> d!1387678 (= lt!1689584 e!2810434)))

(declare-fun c!769526 () Bool)

(assert (=> d!1387678 (= c!769526 lt!1689582)))

(assert (=> d!1387678 (= lt!1689582 (containsKey!1736 (toList!4295 (extractMap!1200 (toList!4296 lm!1477))) key!3287))))

(assert (=> d!1387678 (= (contains!13299 (extractMap!1200 (toList!4296 lm!1477)) key!3287) lt!1689586)))

(declare-fun bm!314130 () Bool)

(assert (=> bm!314130 (= call!314135 (contains!13303 e!2810432 key!3287))))

(declare-fun c!769527 () Bool)

(assert (=> bm!314130 (= c!769527 c!769526)))

(assert (= (and d!1387678 c!769526) b!4511314))

(assert (= (and d!1387678 (not c!769526)) b!4511320))

(assert (= (and b!4511320 c!769528) b!4511321))

(assert (= (and b!4511320 (not c!769528)) b!4511316))

(assert (= (or b!4511314 b!4511320) bm!314130))

(assert (= (and bm!314130 c!769527) b!4511317))

(assert (= (and bm!314130 (not c!769527)) b!4511315))

(assert (= (and d!1387678 res!1876564) b!4511318))

(assert (= (and d!1387678 (not res!1876562)) b!4511319))

(assert (= (and b!4511319 res!1876563) b!4511322))

(declare-fun m!5251387 () Bool)

(assert (=> d!1387678 m!5251387))

(assert (=> b!4511322 m!5250239))

(declare-fun m!5251389 () Bool)

(assert (=> b!4511322 m!5251389))

(assert (=> b!4511322 m!5251389))

(declare-fun m!5251391 () Bool)

(assert (=> b!4511322 m!5251391))

(assert (=> b!4511321 m!5251387))

(declare-fun m!5251393 () Bool)

(assert (=> b!4511321 m!5251393))

(declare-fun m!5251395 () Bool)

(assert (=> b!4511314 m!5251395))

(declare-fun m!5251397 () Bool)

(assert (=> b!4511314 m!5251397))

(assert (=> b!4511314 m!5251397))

(declare-fun m!5251399 () Bool)

(assert (=> b!4511314 m!5251399))

(declare-fun m!5251401 () Bool)

(assert (=> b!4511314 m!5251401))

(assert (=> b!4511315 m!5250239))

(assert (=> b!4511315 m!5251389))

(declare-fun m!5251403 () Bool)

(assert (=> b!4511317 m!5251403))

(assert (=> b!4511319 m!5251397))

(assert (=> b!4511319 m!5251397))

(assert (=> b!4511319 m!5251399))

(assert (=> b!4511318 m!5250239))

(assert (=> b!4511318 m!5251389))

(assert (=> b!4511318 m!5251389))

(assert (=> b!4511318 m!5251391))

(declare-fun m!5251405 () Bool)

(assert (=> bm!314130 m!5251405))

(assert (=> d!1387370 d!1387678))

(assert (=> d!1387370 d!1387564))

(declare-fun d!1387680 () Bool)

(assert (=> d!1387680 (not (contains!13299 (extractMap!1200 (toList!4296 lm!1477)) key!3287))))

(assert (=> d!1387680 true))

(declare-fun _$26!350 () Unit!93482)

(assert (=> d!1387680 (= (choose!29311 lm!1477 key!3287 hashF!1107) _$26!350)))

(declare-fun bs!847271 () Bool)

(assert (= bs!847271 d!1387680))

(assert (=> bs!847271 m!5250239))

(assert (=> bs!847271 m!5250239))

(assert (=> bs!847271 m!5250327))

(assert (=> d!1387370 d!1387680))

(declare-fun d!1387682 () Bool)

(declare-fun res!1876565 () Bool)

(declare-fun e!2810437 () Bool)

(assert (=> d!1387682 (=> res!1876565 e!2810437)))

(assert (=> d!1387682 (= res!1876565 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387682 (= (forall!10223 (toList!4296 lm!1477) lambda!170540) e!2810437)))

(declare-fun b!4511323 () Bool)

(declare-fun e!2810438 () Bool)

(assert (=> b!4511323 (= e!2810437 e!2810438)))

(declare-fun res!1876566 () Bool)

(assert (=> b!4511323 (=> (not res!1876566) (not e!2810438))))

(assert (=> b!4511323 (= res!1876566 (dynLambda!21139 lambda!170540 (h!56436 (toList!4296 lm!1477))))))

(declare-fun b!4511324 () Bool)

(assert (=> b!4511324 (= e!2810438 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170540))))

(assert (= (and d!1387682 (not res!1876565)) b!4511323))

(assert (= (and b!4511323 res!1876566) b!4511324))

(declare-fun b_lambda!153781 () Bool)

(assert (=> (not b_lambda!153781) (not b!4511323)))

(declare-fun m!5251407 () Bool)

(assert (=> b!4511323 m!5251407))

(declare-fun m!5251409 () Bool)

(assert (=> b!4511324 m!5251409))

(assert (=> d!1387370 d!1387682))

(declare-fun d!1387684 () Bool)

(assert (=> d!1387684 (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) lt!1689054))))

(declare-fun lt!1689589 () Unit!93482)

(declare-fun choose!29331 (List!50723 (_ BitVec 64)) Unit!93482)

(assert (=> d!1387684 (= lt!1689589 (choose!29331 (toList!4296 lm!1477) lt!1689054))))

(declare-fun e!2810441 () Bool)

(assert (=> d!1387684 e!2810441))

(declare-fun res!1876569 () Bool)

(assert (=> d!1387684 (=> (not res!1876569) (not e!2810441))))

(assert (=> d!1387684 (= res!1876569 (isStrictlySorted!415 (toList!4296 lm!1477)))))

(assert (=> d!1387684 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lm!1477) lt!1689054) lt!1689589)))

(declare-fun b!4511327 () Bool)

(assert (=> b!4511327 (= e!2810441 (containsKey!1735 (toList!4296 lm!1477) lt!1689054))))

(assert (= (and d!1387684 res!1876569) b!4511327))

(assert (=> d!1387684 m!5250401))

(assert (=> d!1387684 m!5250401))

(assert (=> d!1387684 m!5250403))

(declare-fun m!5251411 () Bool)

(assert (=> d!1387684 m!5251411))

(assert (=> d!1387684 m!5250367))

(assert (=> b!4511327 m!5250397))

(assert (=> b!4510869 d!1387684))

(assert (=> b!4510869 d!1387614))

(assert (=> b!4510869 d!1387616))

(declare-fun d!1387686 () Bool)

(declare-fun e!2810443 () Bool)

(assert (=> d!1387686 e!2810443))

(declare-fun res!1876570 () Bool)

(assert (=> d!1387686 (=> res!1876570 e!2810443)))

(declare-fun lt!1689590 () Bool)

(assert (=> d!1387686 (= res!1876570 (not lt!1689590))))

(declare-fun lt!1689592 () Bool)

(assert (=> d!1387686 (= lt!1689590 lt!1689592)))

(declare-fun lt!1689593 () Unit!93482)

(declare-fun e!2810442 () Unit!93482)

(assert (=> d!1387686 (= lt!1689593 e!2810442)))

(declare-fun c!769529 () Bool)

(assert (=> d!1387686 (= c!769529 lt!1689592)))

(assert (=> d!1387686 (= lt!1689592 (containsKey!1735 (toList!4296 lt!1689190) (_1!28800 lt!1689065)))))

(assert (=> d!1387686 (= (contains!13300 lt!1689190 (_1!28800 lt!1689065)) lt!1689590)))

(declare-fun b!4511328 () Bool)

(declare-fun lt!1689591 () Unit!93482)

(assert (=> b!4511328 (= e!2810442 lt!1689591)))

(assert (=> b!4511328 (= lt!1689591 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689190) (_1!28800 lt!1689065)))))

(assert (=> b!4511328 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689190) (_1!28800 lt!1689065)))))

(declare-fun b!4511329 () Bool)

(declare-fun Unit!93604 () Unit!93482)

(assert (=> b!4511329 (= e!2810442 Unit!93604)))

(declare-fun b!4511330 () Bool)

(assert (=> b!4511330 (= e!2810443 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689190) (_1!28800 lt!1689065))))))

(assert (= (and d!1387686 c!769529) b!4511328))

(assert (= (and d!1387686 (not c!769529)) b!4511329))

(assert (= (and d!1387686 (not res!1876570)) b!4511330))

(declare-fun m!5251413 () Bool)

(assert (=> d!1387686 m!5251413))

(declare-fun m!5251415 () Bool)

(assert (=> b!4511328 m!5251415))

(assert (=> b!4511328 m!5250541))

(assert (=> b!4511328 m!5250541))

(declare-fun m!5251417 () Bool)

(assert (=> b!4511328 m!5251417))

(assert (=> b!4511330 m!5250541))

(assert (=> b!4511330 m!5250541))

(assert (=> b!4511330 m!5251417))

(assert (=> d!1387426 d!1387686))

(declare-fun b!4511332 () Bool)

(declare-fun e!2810444 () Option!11080)

(declare-fun e!2810445 () Option!11080)

(assert (=> b!4511332 (= e!2810444 e!2810445)))

(declare-fun c!769531 () Bool)

(assert (=> b!4511332 (= c!769531 (and ((_ is Cons!50599) lt!1689189) (not (= (_1!28800 (h!56436 lt!1689189)) (_1!28800 lt!1689065)))))))

(declare-fun b!4511331 () Bool)

(assert (=> b!4511331 (= e!2810444 (Some!11079 (_2!28800 (h!56436 lt!1689189))))))

(declare-fun b!4511333 () Bool)

(assert (=> b!4511333 (= e!2810445 (getValueByKey!1060 (t!357685 lt!1689189) (_1!28800 lt!1689065)))))

(declare-fun d!1387688 () Bool)

(declare-fun c!769530 () Bool)

(assert (=> d!1387688 (= c!769530 (and ((_ is Cons!50599) lt!1689189) (= (_1!28800 (h!56436 lt!1689189)) (_1!28800 lt!1689065))))))

(assert (=> d!1387688 (= (getValueByKey!1060 lt!1689189 (_1!28800 lt!1689065)) e!2810444)))

(declare-fun b!4511334 () Bool)

(assert (=> b!4511334 (= e!2810445 None!11079)))

(assert (= (and d!1387688 c!769530) b!4511331))

(assert (= (and d!1387688 (not c!769530)) b!4511332))

(assert (= (and b!4511332 c!769531) b!4511333))

(assert (= (and b!4511332 (not c!769531)) b!4511334))

(declare-fun m!5251419 () Bool)

(assert (=> b!4511333 m!5251419))

(assert (=> d!1387426 d!1387688))

(declare-fun d!1387690 () Bool)

(assert (=> d!1387690 (= (getValueByKey!1060 lt!1689189 (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065)))))

(declare-fun lt!1689596 () Unit!93482)

(declare-fun choose!29332 (List!50723 (_ BitVec 64) List!50722) Unit!93482)

(assert (=> d!1387690 (= lt!1689596 (choose!29332 lt!1689189 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(declare-fun e!2810448 () Bool)

(assert (=> d!1387690 e!2810448))

(declare-fun res!1876575 () Bool)

(assert (=> d!1387690 (=> (not res!1876575) (not e!2810448))))

(assert (=> d!1387690 (= res!1876575 (isStrictlySorted!415 lt!1689189))))

(assert (=> d!1387690 (= (lemmaContainsTupThenGetReturnValue!654 lt!1689189 (_1!28800 lt!1689065) (_2!28800 lt!1689065)) lt!1689596)))

(declare-fun b!4511339 () Bool)

(declare-fun res!1876576 () Bool)

(assert (=> b!4511339 (=> (not res!1876576) (not e!2810448))))

(assert (=> b!4511339 (= res!1876576 (containsKey!1735 lt!1689189 (_1!28800 lt!1689065)))))

(declare-fun b!4511340 () Bool)

(assert (=> b!4511340 (= e!2810448 (contains!13301 lt!1689189 (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065))))))

(assert (= (and d!1387690 res!1876575) b!4511339))

(assert (= (and b!4511339 res!1876576) b!4511340))

(assert (=> d!1387690 m!5250535))

(declare-fun m!5251421 () Bool)

(assert (=> d!1387690 m!5251421))

(declare-fun m!5251423 () Bool)

(assert (=> d!1387690 m!5251423))

(declare-fun m!5251425 () Bool)

(assert (=> b!4511339 m!5251425))

(declare-fun m!5251427 () Bool)

(assert (=> b!4511340 m!5251427))

(assert (=> d!1387426 d!1387690))

(declare-fun e!2810461 () List!50723)

(declare-fun c!769543 () Bool)

(declare-fun c!769542 () Bool)

(declare-fun b!4511361 () Bool)

(assert (=> b!4511361 (= e!2810461 (ite c!769542 (t!357685 (toList!4296 lt!1689063)) (ite c!769543 (Cons!50599 (h!56436 (toList!4296 lt!1689063)) (t!357685 (toList!4296 lt!1689063))) Nil!50599)))))

(declare-fun bm!314137 () Bool)

(declare-fun call!314142 () List!50723)

(declare-fun call!314144 () List!50723)

(assert (=> bm!314137 (= call!314142 call!314144)))

(declare-fun b!4511362 () Bool)

(declare-fun res!1876581 () Bool)

(declare-fun e!2810463 () Bool)

(assert (=> b!4511362 (=> (not res!1876581) (not e!2810463))))

(declare-fun lt!1689599 () List!50723)

(assert (=> b!4511362 (= res!1876581 (containsKey!1735 lt!1689599 (_1!28800 lt!1689065)))))

(declare-fun d!1387692 () Bool)

(assert (=> d!1387692 e!2810463))

(declare-fun res!1876582 () Bool)

(assert (=> d!1387692 (=> (not res!1876582) (not e!2810463))))

(assert (=> d!1387692 (= res!1876582 (isStrictlySorted!415 lt!1689599))))

(declare-fun e!2810462 () List!50723)

(assert (=> d!1387692 (= lt!1689599 e!2810462)))

(declare-fun c!769540 () Bool)

(assert (=> d!1387692 (= c!769540 (and ((_ is Cons!50599) (toList!4296 lt!1689063)) (bvslt (_1!28800 (h!56436 (toList!4296 lt!1689063))) (_1!28800 lt!1689065))))))

(assert (=> d!1387692 (isStrictlySorted!415 (toList!4296 lt!1689063))))

(assert (=> d!1387692 (= (insertStrictlySorted!392 (toList!4296 lt!1689063) (_1!28800 lt!1689065) (_2!28800 lt!1689065)) lt!1689599)))

(declare-fun b!4511363 () Bool)

(declare-fun e!2810459 () List!50723)

(declare-fun call!314143 () List!50723)

(assert (=> b!4511363 (= e!2810459 call!314143)))

(declare-fun b!4511364 () Bool)

(declare-fun e!2810460 () List!50723)

(assert (=> b!4511364 (= e!2810460 call!314142)))

(declare-fun bm!314138 () Bool)

(assert (=> bm!314138 (= call!314143 call!314142)))

(declare-fun b!4511365 () Bool)

(assert (=> b!4511365 (= e!2810461 (insertStrictlySorted!392 (t!357685 (toList!4296 lt!1689063)) (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(declare-fun b!4511366 () Bool)

(assert (=> b!4511366 (= e!2810462 e!2810460)))

(assert (=> b!4511366 (= c!769542 (and ((_ is Cons!50599) (toList!4296 lt!1689063)) (= (_1!28800 (h!56436 (toList!4296 lt!1689063))) (_1!28800 lt!1689065))))))

(declare-fun bm!314139 () Bool)

(declare-fun $colon$colon!919 (List!50723 tuple2!51012) List!50723)

(assert (=> bm!314139 (= call!314144 ($colon$colon!919 e!2810461 (ite c!769540 (h!56436 (toList!4296 lt!1689063)) (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))))

(declare-fun c!769541 () Bool)

(assert (=> bm!314139 (= c!769541 c!769540)))

(declare-fun b!4511367 () Bool)

(assert (=> b!4511367 (= e!2810459 call!314143)))

(declare-fun b!4511368 () Bool)

(assert (=> b!4511368 (= e!2810463 (contains!13301 lt!1689599 (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065))))))

(declare-fun b!4511369 () Bool)

(assert (=> b!4511369 (= c!769543 (and ((_ is Cons!50599) (toList!4296 lt!1689063)) (bvsgt (_1!28800 (h!56436 (toList!4296 lt!1689063))) (_1!28800 lt!1689065))))))

(assert (=> b!4511369 (= e!2810460 e!2810459)))

(declare-fun b!4511370 () Bool)

(assert (=> b!4511370 (= e!2810462 call!314144)))

(assert (= (and d!1387692 c!769540) b!4511370))

(assert (= (and d!1387692 (not c!769540)) b!4511366))

(assert (= (and b!4511366 c!769542) b!4511364))

(assert (= (and b!4511366 (not c!769542)) b!4511369))

(assert (= (and b!4511369 c!769543) b!4511363))

(assert (= (and b!4511369 (not c!769543)) b!4511367))

(assert (= (or b!4511363 b!4511367) bm!314138))

(assert (= (or b!4511364 bm!314138) bm!314137))

(assert (= (or b!4511370 bm!314137) bm!314139))

(assert (= (and bm!314139 c!769541) b!4511365))

(assert (= (and bm!314139 (not c!769541)) b!4511361))

(assert (= (and d!1387692 res!1876582) b!4511362))

(assert (= (and b!4511362 res!1876581) b!4511368))

(declare-fun m!5251429 () Bool)

(assert (=> b!4511368 m!5251429))

(declare-fun m!5251431 () Bool)

(assert (=> bm!314139 m!5251431))

(declare-fun m!5251433 () Bool)

(assert (=> b!4511362 m!5251433))

(declare-fun m!5251435 () Bool)

(assert (=> d!1387692 m!5251435))

(declare-fun m!5251437 () Bool)

(assert (=> d!1387692 m!5251437))

(declare-fun m!5251439 () Bool)

(assert (=> b!4511365 m!5251439))

(assert (=> d!1387426 d!1387692))

(declare-fun bs!847272 () Bool)

(declare-fun d!1387694 () Bool)

(assert (= bs!847272 (and d!1387694 b!4511307)))

(declare-fun lambda!170696 () Int)

(assert (=> bs!847272 (= (= lt!1689048 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170696 lambda!170689))))

(declare-fun bs!847273 () Bool)

(assert (= bs!847273 (and d!1387694 b!4511188)))

(assert (=> bs!847273 (= (= lt!1689048 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170696 lambda!170670))))

(declare-fun bs!847274 () Bool)

(assert (= bs!847274 (and d!1387694 b!4511291)))

(assert (=> bs!847274 (= (= lt!1689048 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170696 lambda!170682))))

(declare-fun bs!847275 () Bool)

(assert (= bs!847275 (and d!1387694 b!4511287)))

(assert (=> bs!847275 (= (= lt!1689048 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170696 lambda!170683))))

(declare-fun bs!847276 () Bool)

(assert (= bs!847276 (and d!1387694 b!4511303)))

(assert (=> bs!847276 (= (= lt!1689048 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170696 lambda!170690))))

(declare-fun bs!847277 () Bool)

(assert (= bs!847277 (and d!1387694 d!1387590)))

(assert (=> bs!847277 (= (= lt!1689048 lt!1689493) (= lambda!170696 lambda!170672))))

(declare-fun bs!847278 () Bool)

(assert (= bs!847278 (and d!1387694 b!4511066)))

(assert (=> bs!847278 (= (= lt!1689048 lt!1689409) (= lambda!170696 lambda!170649))))

(declare-fun bs!847279 () Bool)

(assert (= bs!847279 (and d!1387694 b!4511192)))

(assert (=> bs!847279 (= (= lt!1689048 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170696 lambda!170669))))

(declare-fun bs!847280 () Bool)

(assert (= bs!847280 (and d!1387694 b!4511109)))

(assert (=> bs!847280 (= lambda!170696 lambda!170653)))

(declare-fun bs!847281 () Bool)

(assert (= bs!847281 (and d!1387694 d!1387654)))

(assert (=> bs!847281 (= (= lt!1689048 lt!1689536) (= lambda!170696 lambda!170685))))

(assert (=> bs!847273 (= (= lt!1689048 lt!1689504) (= lambda!170696 lambda!170671))))

(assert (=> bs!847276 (= (= lt!1689048 lt!1689572) (= lambda!170696 lambda!170691))))

(assert (=> bs!847278 (= (= lt!1689048 lt!1689058) (= lambda!170696 lambda!170648))))

(declare-fun bs!847282 () Bool)

(assert (= bs!847282 (and d!1387694 d!1387668)))

(assert (=> bs!847282 (= (= lt!1689048 lt!1689561) (= lambda!170696 lambda!170692))))

(declare-fun bs!847283 () Bool)

(assert (= bs!847283 (and d!1387694 d!1387526)))

(assert (=> bs!847283 (= (= lt!1689048 lt!1689430) (= lambda!170696 lambda!170655))))

(declare-fun bs!847284 () Bool)

(assert (= bs!847284 (and d!1387694 d!1387530)))

(assert (=> bs!847284 (not (= lambda!170696 lambda!170658))))

(assert (=> bs!847280 (= (= lt!1689048 lt!1689441) (= lambda!170696 lambda!170654))))

(declare-fun bs!847285 () Bool)

(assert (= bs!847285 (and d!1387694 d!1387458)))

(assert (=> bs!847285 (= (= lt!1689048 lt!1689398) (= lambda!170696 lambda!170650))))

(declare-fun bs!847286 () Bool)

(assert (= bs!847286 (and d!1387694 b!4511070)))

(assert (=> bs!847286 (= (= lt!1689048 lt!1689058) (= lambda!170696 lambda!170647))))

(assert (=> bs!847275 (= (= lt!1689048 lt!1689547) (= lambda!170696 lambda!170684))))

(declare-fun bs!847287 () Bool)

(assert (= bs!847287 (and d!1387694 b!4511113)))

(assert (=> bs!847287 (= lambda!170696 lambda!170652)))

(assert (=> d!1387694 true))

(assert (=> d!1387694 (forall!10225 (toList!4295 lt!1689048) lambda!170696)))

(declare-fun lt!1689602 () Unit!93482)

(declare-fun choose!29333 (ListMap!3557) Unit!93482)

(assert (=> d!1387694 (= lt!1689602 (choose!29333 lt!1689048))))

(assert (=> d!1387694 (= (lemmaContainsAllItsOwnKeys!322 lt!1689048) lt!1689602)))

(declare-fun bs!847288 () Bool)

(assert (= bs!847288 d!1387694))

(declare-fun m!5251441 () Bool)

(assert (=> bs!847288 m!5251441))

(declare-fun m!5251443 () Bool)

(assert (=> bs!847288 m!5251443))

(assert (=> bm!314117 d!1387694))

(declare-fun d!1387696 () Bool)

(declare-fun e!2810465 () Bool)

(assert (=> d!1387696 e!2810465))

(declare-fun res!1876583 () Bool)

(assert (=> d!1387696 (=> res!1876583 e!2810465)))

(declare-fun lt!1689603 () Bool)

(assert (=> d!1387696 (= res!1876583 (not lt!1689603))))

(declare-fun lt!1689605 () Bool)

(assert (=> d!1387696 (= lt!1689603 lt!1689605)))

(declare-fun lt!1689606 () Unit!93482)

(declare-fun e!2810464 () Unit!93482)

(assert (=> d!1387696 (= lt!1689606 e!2810464)))

(declare-fun c!769544 () Bool)

(assert (=> d!1387696 (= c!769544 lt!1689605)))

(assert (=> d!1387696 (= lt!1689605 (containsKey!1735 (toList!4296 lm!1477) (hash!2751 hashF!1107 key!3287)))))

(assert (=> d!1387696 (= (contains!13300 lm!1477 (hash!2751 hashF!1107 key!3287)) lt!1689603)))

(declare-fun b!4511371 () Bool)

(declare-fun lt!1689604 () Unit!93482)

(assert (=> b!4511371 (= e!2810464 lt!1689604)))

(assert (=> b!4511371 (= lt!1689604 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lm!1477) (hash!2751 hashF!1107 key!3287)))))

(assert (=> b!4511371 (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) (hash!2751 hashF!1107 key!3287)))))

(declare-fun b!4511372 () Bool)

(declare-fun Unit!93616 () Unit!93482)

(assert (=> b!4511372 (= e!2810464 Unit!93616)))

(declare-fun b!4511373 () Bool)

(assert (=> b!4511373 (= e!2810465 (isDefined!8367 (getValueByKey!1060 (toList!4296 lm!1477) (hash!2751 hashF!1107 key!3287))))))

(assert (= (and d!1387696 c!769544) b!4511371))

(assert (= (and d!1387696 (not c!769544)) b!4511372))

(assert (= (and d!1387696 (not res!1876583)) b!4511373))

(assert (=> d!1387696 m!5250319))

(declare-fun m!5251445 () Bool)

(assert (=> d!1387696 m!5251445))

(assert (=> b!4511371 m!5250319))

(declare-fun m!5251447 () Bool)

(assert (=> b!4511371 m!5251447))

(assert (=> b!4511371 m!5250319))

(declare-fun m!5251449 () Bool)

(assert (=> b!4511371 m!5251449))

(assert (=> b!4511371 m!5251449))

(declare-fun m!5251451 () Bool)

(assert (=> b!4511371 m!5251451))

(assert (=> b!4511373 m!5250319))

(assert (=> b!4511373 m!5251449))

(assert (=> b!4511373 m!5251449))

(assert (=> b!4511373 m!5251451))

(assert (=> d!1387372 d!1387696))

(assert (=> d!1387372 d!1387454))

(declare-fun d!1387698 () Bool)

(assert (=> d!1387698 (contains!13300 lm!1477 (hash!2751 hashF!1107 key!3287))))

(assert (=> d!1387698 true))

(declare-fun _$27!1209 () Unit!93482)

(assert (=> d!1387698 (= (choose!29312 lm!1477 key!3287 hashF!1107) _$27!1209)))

(declare-fun bs!847289 () Bool)

(assert (= bs!847289 d!1387698))

(assert (=> bs!847289 m!5250319))

(assert (=> bs!847289 m!5250319))

(assert (=> bs!847289 m!5250333))

(assert (=> d!1387372 d!1387698))

(declare-fun d!1387700 () Bool)

(declare-fun res!1876584 () Bool)

(declare-fun e!2810466 () Bool)

(assert (=> d!1387700 (=> res!1876584 e!2810466)))

(assert (=> d!1387700 (= res!1876584 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387700 (= (forall!10223 (toList!4296 lm!1477) lambda!170543) e!2810466)))

(declare-fun b!4511374 () Bool)

(declare-fun e!2810467 () Bool)

(assert (=> b!4511374 (= e!2810466 e!2810467)))

(declare-fun res!1876585 () Bool)

(assert (=> b!4511374 (=> (not res!1876585) (not e!2810467))))

(assert (=> b!4511374 (= res!1876585 (dynLambda!21139 lambda!170543 (h!56436 (toList!4296 lm!1477))))))

(declare-fun b!4511375 () Bool)

(assert (=> b!4511375 (= e!2810467 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170543))))

(assert (= (and d!1387700 (not res!1876584)) b!4511374))

(assert (= (and b!4511374 res!1876585) b!4511375))

(declare-fun b_lambda!153783 () Bool)

(assert (=> (not b_lambda!153783) (not b!4511374)))

(declare-fun m!5251453 () Bool)

(assert (=> b!4511374 m!5251453))

(declare-fun m!5251455 () Bool)

(assert (=> b!4511375 m!5251455))

(assert (=> d!1387372 d!1387700))

(declare-fun d!1387702 () Bool)

(declare-fun res!1876586 () Bool)

(declare-fun e!2810468 () Bool)

(assert (=> d!1387702 (=> res!1876586 e!2810468)))

(assert (=> d!1387702 (= res!1876586 (not ((_ is Cons!50598) (_2!28800 lt!1689062))))))

(assert (=> d!1387702 (= (noDuplicateKeys!1144 (_2!28800 lt!1689062)) e!2810468)))

(declare-fun b!4511376 () Bool)

(declare-fun e!2810469 () Bool)

(assert (=> b!4511376 (= e!2810468 e!2810469)))

(declare-fun res!1876587 () Bool)

(assert (=> b!4511376 (=> (not res!1876587) (not e!2810469))))

(assert (=> b!4511376 (= res!1876587 (not (containsKey!1732 (t!357684 (_2!28800 lt!1689062)) (_1!28799 (h!56435 (_2!28800 lt!1689062))))))))

(declare-fun b!4511377 () Bool)

(assert (=> b!4511377 (= e!2810469 (noDuplicateKeys!1144 (t!357684 (_2!28800 lt!1689062))))))

(assert (= (and d!1387702 (not res!1876586)) b!4511376))

(assert (= (and b!4511376 res!1876587) b!4511377))

(declare-fun m!5251457 () Bool)

(assert (=> b!4511376 m!5251457))

(declare-fun m!5251459 () Bool)

(assert (=> b!4511377 m!5251459))

(assert (=> bs!847091 d!1387702))

(declare-fun d!1387704 () Bool)

(declare-fun res!1876588 () Bool)

(declare-fun e!2810470 () Bool)

(assert (=> d!1387704 (=> res!1876588 e!2810470)))

(assert (=> d!1387704 (= res!1876588 ((_ is Nil!50599) (t!357685 (toList!4296 lm!1477))))))

(assert (=> d!1387704 (= (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170537) e!2810470)))

(declare-fun b!4511378 () Bool)

(declare-fun e!2810471 () Bool)

(assert (=> b!4511378 (= e!2810470 e!2810471)))

(declare-fun res!1876589 () Bool)

(assert (=> b!4511378 (=> (not res!1876589) (not e!2810471))))

(assert (=> b!4511378 (= res!1876589 (dynLambda!21139 lambda!170537 (h!56436 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun b!4511379 () Bool)

(assert (=> b!4511379 (= e!2810471 (forall!10223 (t!357685 (t!357685 (toList!4296 lm!1477))) lambda!170537))))

(assert (= (and d!1387704 (not res!1876588)) b!4511378))

(assert (= (and b!4511378 res!1876589) b!4511379))

(declare-fun b_lambda!153785 () Bool)

(assert (=> (not b_lambda!153785) (not b!4511378)))

(declare-fun m!5251461 () Bool)

(assert (=> b!4511378 m!5251461))

(declare-fun m!5251463 () Bool)

(assert (=> b!4511379 m!5251463))

(assert (=> b!4511108 d!1387704))

(assert (=> b!4511145 d!1387598))

(declare-fun d!1387706 () Bool)

(declare-fun e!2810473 () Bool)

(assert (=> d!1387706 e!2810473))

(declare-fun res!1876590 () Bool)

(assert (=> d!1387706 (=> res!1876590 e!2810473)))

(declare-fun lt!1689607 () Bool)

(assert (=> d!1387706 (= res!1876590 (not lt!1689607))))

(declare-fun lt!1689609 () Bool)

(assert (=> d!1387706 (= lt!1689607 lt!1689609)))

(declare-fun lt!1689610 () Unit!93482)

(declare-fun e!2810472 () Unit!93482)

(assert (=> d!1387706 (= lt!1689610 e!2810472)))

(declare-fun c!769545 () Bool)

(assert (=> d!1387706 (= c!769545 lt!1689609)))

(assert (=> d!1387706 (= lt!1689609 (containsKey!1735 (toList!4296 lt!1689186) (_1!28800 lt!1689059)))))

(assert (=> d!1387706 (= (contains!13300 lt!1689186 (_1!28800 lt!1689059)) lt!1689607)))

(declare-fun b!4511380 () Bool)

(declare-fun lt!1689608 () Unit!93482)

(assert (=> b!4511380 (= e!2810472 lt!1689608)))

(assert (=> b!4511380 (= lt!1689608 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689186) (_1!28800 lt!1689059)))))

(assert (=> b!4511380 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689186) (_1!28800 lt!1689059)))))

(declare-fun b!4511381 () Bool)

(declare-fun Unit!93617 () Unit!93482)

(assert (=> b!4511381 (= e!2810472 Unit!93617)))

(declare-fun b!4511382 () Bool)

(assert (=> b!4511382 (= e!2810473 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689186) (_1!28800 lt!1689059))))))

(assert (= (and d!1387706 c!769545) b!4511380))

(assert (= (and d!1387706 (not c!769545)) b!4511381))

(assert (= (and d!1387706 (not res!1876590)) b!4511382))

(declare-fun m!5251465 () Bool)

(assert (=> d!1387706 m!5251465))

(declare-fun m!5251467 () Bool)

(assert (=> b!4511380 m!5251467))

(assert (=> b!4511380 m!5250529))

(assert (=> b!4511380 m!5250529))

(declare-fun m!5251469 () Bool)

(assert (=> b!4511380 m!5251469))

(assert (=> b!4511382 m!5250529))

(assert (=> b!4511382 m!5250529))

(assert (=> b!4511382 m!5251469))

(assert (=> d!1387414 d!1387706))

(declare-fun b!4511384 () Bool)

(declare-fun e!2810474 () Option!11080)

(declare-fun e!2810475 () Option!11080)

(assert (=> b!4511384 (= e!2810474 e!2810475)))

(declare-fun c!769547 () Bool)

(assert (=> b!4511384 (= c!769547 (and ((_ is Cons!50599) lt!1689185) (not (= (_1!28800 (h!56436 lt!1689185)) (_1!28800 lt!1689059)))))))

(declare-fun b!4511383 () Bool)

(assert (=> b!4511383 (= e!2810474 (Some!11079 (_2!28800 (h!56436 lt!1689185))))))

(declare-fun b!4511385 () Bool)

(assert (=> b!4511385 (= e!2810475 (getValueByKey!1060 (t!357685 lt!1689185) (_1!28800 lt!1689059)))))

(declare-fun d!1387708 () Bool)

(declare-fun c!769546 () Bool)

(assert (=> d!1387708 (= c!769546 (and ((_ is Cons!50599) lt!1689185) (= (_1!28800 (h!56436 lt!1689185)) (_1!28800 lt!1689059))))))

(assert (=> d!1387708 (= (getValueByKey!1060 lt!1689185 (_1!28800 lt!1689059)) e!2810474)))

(declare-fun b!4511386 () Bool)

(assert (=> b!4511386 (= e!2810475 None!11079)))

(assert (= (and d!1387708 c!769546) b!4511383))

(assert (= (and d!1387708 (not c!769546)) b!4511384))

(assert (= (and b!4511384 c!769547) b!4511385))

(assert (= (and b!4511384 (not c!769547)) b!4511386))

(declare-fun m!5251471 () Bool)

(assert (=> b!4511385 m!5251471))

(assert (=> d!1387414 d!1387708))

(declare-fun d!1387710 () Bool)

(assert (=> d!1387710 (= (getValueByKey!1060 lt!1689185 (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059)))))

(declare-fun lt!1689611 () Unit!93482)

(assert (=> d!1387710 (= lt!1689611 (choose!29332 lt!1689185 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(declare-fun e!2810476 () Bool)

(assert (=> d!1387710 e!2810476))

(declare-fun res!1876591 () Bool)

(assert (=> d!1387710 (=> (not res!1876591) (not e!2810476))))

(assert (=> d!1387710 (= res!1876591 (isStrictlySorted!415 lt!1689185))))

(assert (=> d!1387710 (= (lemmaContainsTupThenGetReturnValue!654 lt!1689185 (_1!28800 lt!1689059) (_2!28800 lt!1689059)) lt!1689611)))

(declare-fun b!4511387 () Bool)

(declare-fun res!1876592 () Bool)

(assert (=> b!4511387 (=> (not res!1876592) (not e!2810476))))

(assert (=> b!4511387 (= res!1876592 (containsKey!1735 lt!1689185 (_1!28800 lt!1689059)))))

(declare-fun b!4511388 () Bool)

(assert (=> b!4511388 (= e!2810476 (contains!13301 lt!1689185 (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059))))))

(assert (= (and d!1387710 res!1876591) b!4511387))

(assert (= (and b!4511387 res!1876592) b!4511388))

(assert (=> d!1387710 m!5250523))

(declare-fun m!5251473 () Bool)

(assert (=> d!1387710 m!5251473))

(declare-fun m!5251475 () Bool)

(assert (=> d!1387710 m!5251475))

(declare-fun m!5251477 () Bool)

(assert (=> b!4511387 m!5251477))

(declare-fun m!5251479 () Bool)

(assert (=> b!4511388 m!5251479))

(assert (=> d!1387414 d!1387710))

(declare-fun b!4511389 () Bool)

(declare-fun e!2810479 () List!50723)

(declare-fun c!769551 () Bool)

(declare-fun c!769550 () Bool)

(assert (=> b!4511389 (= e!2810479 (ite c!769550 (t!357685 (toList!4296 lm!1477)) (ite c!769551 (Cons!50599 (h!56436 (toList!4296 lm!1477)) (t!357685 (toList!4296 lm!1477))) Nil!50599)))))

(declare-fun bm!314140 () Bool)

(declare-fun call!314145 () List!50723)

(declare-fun call!314147 () List!50723)

(assert (=> bm!314140 (= call!314145 call!314147)))

(declare-fun b!4511390 () Bool)

(declare-fun res!1876593 () Bool)

(declare-fun e!2810481 () Bool)

(assert (=> b!4511390 (=> (not res!1876593) (not e!2810481))))

(declare-fun lt!1689612 () List!50723)

(assert (=> b!4511390 (= res!1876593 (containsKey!1735 lt!1689612 (_1!28800 lt!1689059)))))

(declare-fun d!1387712 () Bool)

(assert (=> d!1387712 e!2810481))

(declare-fun res!1876594 () Bool)

(assert (=> d!1387712 (=> (not res!1876594) (not e!2810481))))

(assert (=> d!1387712 (= res!1876594 (isStrictlySorted!415 lt!1689612))))

(declare-fun e!2810480 () List!50723)

(assert (=> d!1387712 (= lt!1689612 e!2810480)))

(declare-fun c!769548 () Bool)

(assert (=> d!1387712 (= c!769548 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (bvslt (_1!28800 (h!56436 (toList!4296 lm!1477))) (_1!28800 lt!1689059))))))

(assert (=> d!1387712 (isStrictlySorted!415 (toList!4296 lm!1477))))

(assert (=> d!1387712 (= (insertStrictlySorted!392 (toList!4296 lm!1477) (_1!28800 lt!1689059) (_2!28800 lt!1689059)) lt!1689612)))

(declare-fun b!4511391 () Bool)

(declare-fun e!2810477 () List!50723)

(declare-fun call!314146 () List!50723)

(assert (=> b!4511391 (= e!2810477 call!314146)))

(declare-fun b!4511392 () Bool)

(declare-fun e!2810478 () List!50723)

(assert (=> b!4511392 (= e!2810478 call!314145)))

(declare-fun bm!314141 () Bool)

(assert (=> bm!314141 (= call!314146 call!314145)))

(declare-fun b!4511393 () Bool)

(assert (=> b!4511393 (= e!2810479 (insertStrictlySorted!392 (t!357685 (toList!4296 lm!1477)) (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(declare-fun b!4511394 () Bool)

(assert (=> b!4511394 (= e!2810480 e!2810478)))

(assert (=> b!4511394 (= c!769550 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (= (_1!28800 (h!56436 (toList!4296 lm!1477))) (_1!28800 lt!1689059))))))

(declare-fun bm!314142 () Bool)

(assert (=> bm!314142 (= call!314147 ($colon$colon!919 e!2810479 (ite c!769548 (h!56436 (toList!4296 lm!1477)) (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))))

(declare-fun c!769549 () Bool)

(assert (=> bm!314142 (= c!769549 c!769548)))

(declare-fun b!4511395 () Bool)

(assert (=> b!4511395 (= e!2810477 call!314146)))

(declare-fun b!4511396 () Bool)

(assert (=> b!4511396 (= e!2810481 (contains!13301 lt!1689612 (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059))))))

(declare-fun b!4511397 () Bool)

(assert (=> b!4511397 (= c!769551 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (bvsgt (_1!28800 (h!56436 (toList!4296 lm!1477))) (_1!28800 lt!1689059))))))

(assert (=> b!4511397 (= e!2810478 e!2810477)))

(declare-fun b!4511398 () Bool)

(assert (=> b!4511398 (= e!2810480 call!314147)))

(assert (= (and d!1387712 c!769548) b!4511398))

(assert (= (and d!1387712 (not c!769548)) b!4511394))

(assert (= (and b!4511394 c!769550) b!4511392))

(assert (= (and b!4511394 (not c!769550)) b!4511397))

(assert (= (and b!4511397 c!769551) b!4511391))

(assert (= (and b!4511397 (not c!769551)) b!4511395))

(assert (= (or b!4511391 b!4511395) bm!314141))

(assert (= (or b!4511392 bm!314141) bm!314140))

(assert (= (or b!4511398 bm!314140) bm!314142))

(assert (= (and bm!314142 c!769549) b!4511393))

(assert (= (and bm!314142 (not c!769549)) b!4511389))

(assert (= (and d!1387712 res!1876594) b!4511390))

(assert (= (and b!4511390 res!1876593) b!4511396))

(declare-fun m!5251481 () Bool)

(assert (=> b!4511396 m!5251481))

(declare-fun m!5251483 () Bool)

(assert (=> bm!314142 m!5251483))

(declare-fun m!5251485 () Bool)

(assert (=> b!4511390 m!5251485))

(declare-fun m!5251487 () Bool)

(assert (=> d!1387712 m!5251487))

(assert (=> d!1387712 m!5250367))

(declare-fun m!5251489 () Bool)

(assert (=> b!4511393 m!5251489))

(assert (=> d!1387414 d!1387712))

(assert (=> b!4510978 d!1387602))

(declare-fun d!1387714 () Bool)

(declare-fun res!1876595 () Bool)

(declare-fun e!2810482 () Bool)

(assert (=> d!1387714 (=> res!1876595 e!2810482)))

(assert (=> d!1387714 (= res!1876595 ((_ is Nil!50598) (toList!4295 lt!1689048)))))

(assert (=> d!1387714 (= (forall!10225 (toList!4295 lt!1689048) lambda!170655) e!2810482)))

(declare-fun b!4511399 () Bool)

(declare-fun e!2810483 () Bool)

(assert (=> b!4511399 (= e!2810482 e!2810483)))

(declare-fun res!1876596 () Bool)

(assert (=> b!4511399 (=> (not res!1876596) (not e!2810483))))

(assert (=> b!4511399 (= res!1876596 (dynLambda!21140 lambda!170655 (h!56435 (toList!4295 lt!1689048))))))

(declare-fun b!4511400 () Bool)

(assert (=> b!4511400 (= e!2810483 (forall!10225 (t!357684 (toList!4295 lt!1689048)) lambda!170655))))

(assert (= (and d!1387714 (not res!1876595)) b!4511399))

(assert (= (and b!4511399 res!1876596) b!4511400))

(declare-fun b_lambda!153787 () Bool)

(assert (=> (not b_lambda!153787) (not b!4511399)))

(declare-fun m!5251491 () Bool)

(assert (=> b!4511399 m!5251491))

(declare-fun m!5251493 () Bool)

(assert (=> b!4511400 m!5251493))

(assert (=> b!4511111 d!1387714))

(declare-fun d!1387716 () Bool)

(declare-fun c!769552 () Bool)

(assert (=> d!1387716 (= c!769552 ((_ is Nil!50598) (toList!4295 lt!1689049)))))

(declare-fun e!2810484 () (InoxSet tuple2!51010))

(assert (=> d!1387716 (= (content!8309 (toList!4295 lt!1689049)) e!2810484)))

(declare-fun b!4511401 () Bool)

(assert (=> b!4511401 (= e!2810484 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511402 () Bool)

(assert (=> b!4511402 (= e!2810484 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689049)) true) (content!8309 (t!357684 (toList!4295 lt!1689049)))))))

(assert (= (and d!1387716 c!769552) b!4511401))

(assert (= (and d!1387716 (not c!769552)) b!4511402))

(declare-fun m!5251495 () Bool)

(assert (=> b!4511402 m!5251495))

(declare-fun m!5251497 () Bool)

(assert (=> b!4511402 m!5251497))

(assert (=> d!1387524 d!1387716))

(declare-fun d!1387718 () Bool)

(declare-fun c!769553 () Bool)

(assert (=> d!1387718 (= c!769553 ((_ is Nil!50598) (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))))))

(declare-fun e!2810485 () (InoxSet tuple2!51010))

(assert (=> d!1387718 (= (content!8309 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))) e!2810485)))

(declare-fun b!4511403 () Bool)

(assert (=> b!4511403 (= e!2810485 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511404 () Bool)

(assert (=> b!4511404 (= e!2810485 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))) true) (content!8309 (t!357684 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))))))))

(assert (= (and d!1387718 c!769553) b!4511403))

(assert (= (and d!1387718 (not c!769553)) b!4511404))

(declare-fun m!5251499 () Bool)

(assert (=> b!4511404 m!5251499))

(declare-fun m!5251501 () Bool)

(assert (=> b!4511404 m!5251501))

(assert (=> d!1387524 d!1387718))

(declare-fun d!1387720 () Bool)

(declare-fun res!1876601 () Bool)

(declare-fun e!2810490 () Bool)

(assert (=> d!1387720 (=> res!1876601 e!2810490)))

(assert (=> d!1387720 (= res!1876601 (or ((_ is Nil!50599) (toList!4296 lm!1477)) ((_ is Nil!50599) (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387720 (= (isStrictlySorted!415 (toList!4296 lm!1477)) e!2810490)))

(declare-fun b!4511409 () Bool)

(declare-fun e!2810491 () Bool)

(assert (=> b!4511409 (= e!2810490 e!2810491)))

(declare-fun res!1876602 () Bool)

(assert (=> b!4511409 (=> (not res!1876602) (not e!2810491))))

(assert (=> b!4511409 (= res!1876602 (bvslt (_1!28800 (h!56436 (toList!4296 lm!1477))) (_1!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun b!4511410 () Bool)

(assert (=> b!4511410 (= e!2810491 (isStrictlySorted!415 (t!357685 (toList!4296 lm!1477))))))

(assert (= (and d!1387720 (not res!1876601)) b!4511409))

(assert (= (and b!4511409 res!1876602) b!4511410))

(declare-fun m!5251503 () Bool)

(assert (=> b!4511410 m!5251503))

(assert (=> d!1387516 d!1387720))

(assert (=> b!4511152 d!1387596))

(assert (=> b!4511152 d!1387598))

(declare-fun bs!847290 () Bool)

(declare-fun b!4511415 () Bool)

(assert (= bs!847290 (and b!4511415 b!4511307)))

(declare-fun lambda!170697 () Int)

(assert (=> bs!847290 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170697 lambda!170689))))

(declare-fun bs!847291 () Bool)

(assert (= bs!847291 (and b!4511415 b!4511188)))

(assert (=> bs!847291 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170697 lambda!170670))))

(declare-fun bs!847292 () Bool)

(assert (= bs!847292 (and b!4511415 b!4511291)))

(assert (=> bs!847292 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170697 lambda!170682))))

(declare-fun bs!847293 () Bool)

(assert (= bs!847293 (and b!4511415 b!4511287)))

(assert (=> bs!847293 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170697 lambda!170683))))

(declare-fun bs!847294 () Bool)

(assert (= bs!847294 (and b!4511415 b!4511303)))

(assert (=> bs!847294 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170697 lambda!170690))))

(declare-fun bs!847295 () Bool)

(assert (= bs!847295 (and b!4511415 d!1387590)))

(assert (=> bs!847295 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689493) (= lambda!170697 lambda!170672))))

(declare-fun bs!847296 () Bool)

(assert (= bs!847296 (and b!4511415 b!4511066)))

(assert (=> bs!847296 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170697 lambda!170649))))

(declare-fun bs!847297 () Bool)

(assert (= bs!847297 (and b!4511415 b!4511192)))

(assert (=> bs!847297 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170697 lambda!170669))))

(declare-fun bs!847298 () Bool)

(assert (= bs!847298 (and b!4511415 b!4511109)))

(assert (=> bs!847298 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170697 lambda!170653))))

(declare-fun bs!847299 () Bool)

(assert (= bs!847299 (and b!4511415 d!1387654)))

(assert (=> bs!847299 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689536) (= lambda!170697 lambda!170685))))

(assert (=> bs!847291 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689504) (= lambda!170697 lambda!170671))))

(assert (=> bs!847296 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170697 lambda!170648))))

(declare-fun bs!847300 () Bool)

(assert (= bs!847300 (and b!4511415 d!1387668)))

(assert (=> bs!847300 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689561) (= lambda!170697 lambda!170692))))

(declare-fun bs!847301 () Bool)

(assert (= bs!847301 (and b!4511415 d!1387526)))

(assert (=> bs!847301 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689430) (= lambda!170697 lambda!170655))))

(declare-fun bs!847302 () Bool)

(assert (= bs!847302 (and b!4511415 d!1387530)))

(assert (=> bs!847302 (not (= lambda!170697 lambda!170658))))

(assert (=> bs!847298 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689441) (= lambda!170697 lambda!170654))))

(declare-fun bs!847303 () Bool)

(assert (= bs!847303 (and b!4511415 d!1387458)))

(assert (=> bs!847303 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689398) (= lambda!170697 lambda!170650))))

(declare-fun bs!847304 () Bool)

(assert (= bs!847304 (and b!4511415 b!4511070)))

(assert (=> bs!847304 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170697 lambda!170647))))

(assert (=> bs!847293 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689547) (= lambda!170697 lambda!170684))))

(declare-fun bs!847305 () Bool)

(assert (= bs!847305 (and b!4511415 b!4511113)))

(assert (=> bs!847305 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170697 lambda!170652))))

(assert (=> bs!847294 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689572) (= lambda!170697 lambda!170691))))

(declare-fun bs!847306 () Bool)

(assert (= bs!847306 (and b!4511415 d!1387694)))

(assert (=> bs!847306 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170697 lambda!170696))))

(assert (=> b!4511415 true))

(declare-fun bs!847307 () Bool)

(declare-fun b!4511411 () Bool)

(assert (= bs!847307 (and b!4511411 b!4511307)))

(declare-fun lambda!170698 () Int)

(assert (=> bs!847307 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170698 lambda!170689))))

(declare-fun bs!847308 () Bool)

(assert (= bs!847308 (and b!4511411 b!4511188)))

(assert (=> bs!847308 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170698 lambda!170670))))

(declare-fun bs!847309 () Bool)

(assert (= bs!847309 (and b!4511411 b!4511291)))

(assert (=> bs!847309 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170698 lambda!170682))))

(declare-fun bs!847310 () Bool)

(assert (= bs!847310 (and b!4511411 b!4511287)))

(assert (=> bs!847310 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170698 lambda!170683))))

(declare-fun bs!847311 () Bool)

(assert (= bs!847311 (and b!4511411 b!4511303)))

(assert (=> bs!847311 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170698 lambda!170690))))

(declare-fun bs!847312 () Bool)

(assert (= bs!847312 (and b!4511411 d!1387590)))

(assert (=> bs!847312 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689493) (= lambda!170698 lambda!170672))))

(declare-fun bs!847313 () Bool)

(assert (= bs!847313 (and b!4511411 b!4511066)))

(assert (=> bs!847313 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170698 lambda!170649))))

(declare-fun bs!847314 () Bool)

(assert (= bs!847314 (and b!4511411 b!4511192)))

(assert (=> bs!847314 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170698 lambda!170669))))

(declare-fun bs!847315 () Bool)

(assert (= bs!847315 (and b!4511411 b!4511109)))

(assert (=> bs!847315 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170698 lambda!170653))))

(declare-fun bs!847316 () Bool)

(assert (= bs!847316 (and b!4511411 b!4511415)))

(assert (=> bs!847316 (= lambda!170698 lambda!170697)))

(declare-fun bs!847317 () Bool)

(assert (= bs!847317 (and b!4511411 d!1387654)))

(assert (=> bs!847317 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689536) (= lambda!170698 lambda!170685))))

(assert (=> bs!847308 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689504) (= lambda!170698 lambda!170671))))

(assert (=> bs!847313 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170698 lambda!170648))))

(declare-fun bs!847318 () Bool)

(assert (= bs!847318 (and b!4511411 d!1387668)))

(assert (=> bs!847318 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689561) (= lambda!170698 lambda!170692))))

(declare-fun bs!847319 () Bool)

(assert (= bs!847319 (and b!4511411 d!1387526)))

(assert (=> bs!847319 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689430) (= lambda!170698 lambda!170655))))

(declare-fun bs!847320 () Bool)

(assert (= bs!847320 (and b!4511411 d!1387530)))

(assert (=> bs!847320 (not (= lambda!170698 lambda!170658))))

(assert (=> bs!847315 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689441) (= lambda!170698 lambda!170654))))

(declare-fun bs!847321 () Bool)

(assert (= bs!847321 (and b!4511411 d!1387458)))

(assert (=> bs!847321 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689398) (= lambda!170698 lambda!170650))))

(declare-fun bs!847322 () Bool)

(assert (= bs!847322 (and b!4511411 b!4511070)))

(assert (=> bs!847322 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170698 lambda!170647))))

(assert (=> bs!847310 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689547) (= lambda!170698 lambda!170684))))

(declare-fun bs!847323 () Bool)

(assert (= bs!847323 (and b!4511411 b!4511113)))

(assert (=> bs!847323 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170698 lambda!170652))))

(assert (=> bs!847311 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689572) (= lambda!170698 lambda!170691))))

(declare-fun bs!847324 () Bool)

(assert (= bs!847324 (and b!4511411 d!1387694)))

(assert (=> bs!847324 (= (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170698 lambda!170696))))

(assert (=> b!4511411 true))

(declare-fun lambda!170699 () Int)

(declare-fun lt!1689629 () ListMap!3557)

(assert (=> bs!847307 (= (= lt!1689629 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170699 lambda!170689))))

(assert (=> b!4511411 (= (= lt!1689629 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170699 lambda!170698))))

(assert (=> bs!847308 (= (= lt!1689629 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170699 lambda!170670))))

(assert (=> bs!847309 (= (= lt!1689629 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170699 lambda!170682))))

(assert (=> bs!847310 (= (= lt!1689629 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170699 lambda!170683))))

(assert (=> bs!847311 (= (= lt!1689629 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170699 lambda!170690))))

(assert (=> bs!847312 (= (= lt!1689629 lt!1689493) (= lambda!170699 lambda!170672))))

(assert (=> bs!847313 (= (= lt!1689629 lt!1689409) (= lambda!170699 lambda!170649))))

(assert (=> bs!847314 (= (= lt!1689629 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170699 lambda!170669))))

(assert (=> bs!847315 (= (= lt!1689629 lt!1689048) (= lambda!170699 lambda!170653))))

(assert (=> bs!847316 (= (= lt!1689629 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170699 lambda!170697))))

(assert (=> bs!847317 (= (= lt!1689629 lt!1689536) (= lambda!170699 lambda!170685))))

(assert (=> bs!847308 (= (= lt!1689629 lt!1689504) (= lambda!170699 lambda!170671))))

(assert (=> bs!847313 (= (= lt!1689629 lt!1689058) (= lambda!170699 lambda!170648))))

(assert (=> bs!847318 (= (= lt!1689629 lt!1689561) (= lambda!170699 lambda!170692))))

(assert (=> bs!847319 (= (= lt!1689629 lt!1689430) (= lambda!170699 lambda!170655))))

(assert (=> bs!847320 (not (= lambda!170699 lambda!170658))))

(assert (=> bs!847315 (= (= lt!1689629 lt!1689441) (= lambda!170699 lambda!170654))))

(assert (=> bs!847321 (= (= lt!1689629 lt!1689398) (= lambda!170699 lambda!170650))))

(assert (=> bs!847322 (= (= lt!1689629 lt!1689058) (= lambda!170699 lambda!170647))))

(assert (=> bs!847310 (= (= lt!1689629 lt!1689547) (= lambda!170699 lambda!170684))))

(assert (=> bs!847323 (= (= lt!1689629 lt!1689048) (= lambda!170699 lambda!170652))))

(assert (=> bs!847311 (= (= lt!1689629 lt!1689572) (= lambda!170699 lambda!170691))))

(assert (=> bs!847324 (= (= lt!1689629 lt!1689048) (= lambda!170699 lambda!170696))))

(assert (=> b!4511411 true))

(declare-fun bs!847325 () Bool)

(declare-fun d!1387722 () Bool)

(assert (= bs!847325 (and d!1387722 b!4511307)))

(declare-fun lt!1689618 () ListMap!3557)

(declare-fun lambda!170700 () Int)

(assert (=> bs!847325 (= (= lt!1689618 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170700 lambda!170689))))

(declare-fun bs!847326 () Bool)

(assert (= bs!847326 (and d!1387722 b!4511411)))

(assert (=> bs!847326 (= (= lt!1689618 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170700 lambda!170698))))

(declare-fun bs!847327 () Bool)

(assert (= bs!847327 (and d!1387722 b!4511188)))

(assert (=> bs!847327 (= (= lt!1689618 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170700 lambda!170670))))

(declare-fun bs!847328 () Bool)

(assert (= bs!847328 (and d!1387722 b!4511291)))

(assert (=> bs!847328 (= (= lt!1689618 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170700 lambda!170682))))

(declare-fun bs!847329 () Bool)

(assert (= bs!847329 (and d!1387722 b!4511287)))

(assert (=> bs!847329 (= (= lt!1689618 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170700 lambda!170683))))

(declare-fun bs!847330 () Bool)

(assert (= bs!847330 (and d!1387722 b!4511303)))

(assert (=> bs!847330 (= (= lt!1689618 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170700 lambda!170690))))

(declare-fun bs!847331 () Bool)

(assert (= bs!847331 (and d!1387722 d!1387590)))

(assert (=> bs!847331 (= (= lt!1689618 lt!1689493) (= lambda!170700 lambda!170672))))

(declare-fun bs!847332 () Bool)

(assert (= bs!847332 (and d!1387722 b!4511066)))

(assert (=> bs!847332 (= (= lt!1689618 lt!1689409) (= lambda!170700 lambda!170649))))

(declare-fun bs!847333 () Bool)

(assert (= bs!847333 (and d!1387722 b!4511192)))

(assert (=> bs!847333 (= (= lt!1689618 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170700 lambda!170669))))

(declare-fun bs!847334 () Bool)

(assert (= bs!847334 (and d!1387722 b!4511109)))

(assert (=> bs!847334 (= (= lt!1689618 lt!1689048) (= lambda!170700 lambda!170653))))

(assert (=> bs!847326 (= (= lt!1689618 lt!1689629) (= lambda!170700 lambda!170699))))

(declare-fun bs!847335 () Bool)

(assert (= bs!847335 (and d!1387722 b!4511415)))

(assert (=> bs!847335 (= (= lt!1689618 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170700 lambda!170697))))

(declare-fun bs!847336 () Bool)

(assert (= bs!847336 (and d!1387722 d!1387654)))

(assert (=> bs!847336 (= (= lt!1689618 lt!1689536) (= lambda!170700 lambda!170685))))

(assert (=> bs!847327 (= (= lt!1689618 lt!1689504) (= lambda!170700 lambda!170671))))

(assert (=> bs!847332 (= (= lt!1689618 lt!1689058) (= lambda!170700 lambda!170648))))

(declare-fun bs!847337 () Bool)

(assert (= bs!847337 (and d!1387722 d!1387668)))

(assert (=> bs!847337 (= (= lt!1689618 lt!1689561) (= lambda!170700 lambda!170692))))

(declare-fun bs!847338 () Bool)

(assert (= bs!847338 (and d!1387722 d!1387526)))

(assert (=> bs!847338 (= (= lt!1689618 lt!1689430) (= lambda!170700 lambda!170655))))

(declare-fun bs!847339 () Bool)

(assert (= bs!847339 (and d!1387722 d!1387530)))

(assert (=> bs!847339 (not (= lambda!170700 lambda!170658))))

(assert (=> bs!847334 (= (= lt!1689618 lt!1689441) (= lambda!170700 lambda!170654))))

(declare-fun bs!847340 () Bool)

(assert (= bs!847340 (and d!1387722 d!1387458)))

(assert (=> bs!847340 (= (= lt!1689618 lt!1689398) (= lambda!170700 lambda!170650))))

(declare-fun bs!847341 () Bool)

(assert (= bs!847341 (and d!1387722 b!4511070)))

(assert (=> bs!847341 (= (= lt!1689618 lt!1689058) (= lambda!170700 lambda!170647))))

(assert (=> bs!847329 (= (= lt!1689618 lt!1689547) (= lambda!170700 lambda!170684))))

(declare-fun bs!847342 () Bool)

(assert (= bs!847342 (and d!1387722 b!4511113)))

(assert (=> bs!847342 (= (= lt!1689618 lt!1689048) (= lambda!170700 lambda!170652))))

(assert (=> bs!847330 (= (= lt!1689618 lt!1689572) (= lambda!170700 lambda!170691))))

(declare-fun bs!847343 () Bool)

(assert (= bs!847343 (and d!1387722 d!1387694)))

(assert (=> bs!847343 (= (= lt!1689618 lt!1689048) (= lambda!170700 lambda!170696))))

(assert (=> d!1387722 true))

(declare-fun bm!314143 () Bool)

(declare-fun call!314148 () Unit!93482)

(assert (=> bm!314143 (= call!314148 (lemmaContainsAllItsOwnKeys!322 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun c!769554 () Bool)

(declare-fun bm!314144 () Bool)

(declare-fun call!314149 () Bool)

(assert (=> bm!314144 (= call!314149 (forall!10225 (toList!4295 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (ite c!769554 lambda!170697 lambda!170699)))))

(declare-fun e!2810493 () ListMap!3557)

(assert (=> b!4511411 (= e!2810493 lt!1689629)))

(declare-fun lt!1689614 () ListMap!3557)

(assert (=> b!4511411 (= lt!1689614 (+!1508 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(assert (=> b!4511411 (= lt!1689629 (addToMapMapFromBucket!671 (t!357684 (t!357684 (_2!28800 lt!1689065))) (+!1508 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(declare-fun lt!1689626 () Unit!93482)

(assert (=> b!4511411 (= lt!1689626 call!314148)))

(declare-fun call!314150 () Bool)

(assert (=> b!4511411 call!314150))

(declare-fun lt!1689622 () Unit!93482)

(assert (=> b!4511411 (= lt!1689622 lt!1689626)))

(assert (=> b!4511411 (forall!10225 (toList!4295 lt!1689614) lambda!170699)))

(declare-fun lt!1689615 () Unit!93482)

(declare-fun Unit!93619 () Unit!93482)

(assert (=> b!4511411 (= lt!1689615 Unit!93619)))

(assert (=> b!4511411 (forall!10225 (t!357684 (t!357684 (_2!28800 lt!1689065))) lambda!170699)))

(declare-fun lt!1689625 () Unit!93482)

(declare-fun Unit!93620 () Unit!93482)

(assert (=> b!4511411 (= lt!1689625 Unit!93620)))

(declare-fun lt!1689632 () Unit!93482)

(declare-fun Unit!93621 () Unit!93482)

(assert (=> b!4511411 (= lt!1689632 Unit!93621)))

(declare-fun lt!1689621 () Unit!93482)

(assert (=> b!4511411 (= lt!1689621 (forallContained!2477 (toList!4295 lt!1689614) lambda!170699 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(assert (=> b!4511411 (contains!13299 lt!1689614 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689633 () Unit!93482)

(declare-fun Unit!93622 () Unit!93482)

(assert (=> b!4511411 (= lt!1689633 Unit!93622)))

(assert (=> b!4511411 (contains!13299 lt!1689629 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689628 () Unit!93482)

(declare-fun Unit!93623 () Unit!93482)

(assert (=> b!4511411 (= lt!1689628 Unit!93623)))

(assert (=> b!4511411 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170699)))

(declare-fun lt!1689623 () Unit!93482)

(declare-fun Unit!93624 () Unit!93482)

(assert (=> b!4511411 (= lt!1689623 Unit!93624)))

(assert (=> b!4511411 (forall!10225 (toList!4295 lt!1689614) lambda!170699)))

(declare-fun lt!1689631 () Unit!93482)

(declare-fun Unit!93625 () Unit!93482)

(assert (=> b!4511411 (= lt!1689631 Unit!93625)))

(declare-fun lt!1689617 () Unit!93482)

(declare-fun Unit!93626 () Unit!93482)

(assert (=> b!4511411 (= lt!1689617 Unit!93626)))

(declare-fun lt!1689620 () Unit!93482)

(assert (=> b!4511411 (= lt!1689620 (addForallContainsKeyThenBeforeAdding!322 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689629 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))) (_2!28799 (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(assert (=> b!4511411 call!314149))

(declare-fun lt!1689613 () Unit!93482)

(assert (=> b!4511411 (= lt!1689613 lt!1689620)))

(assert (=> b!4511411 (forall!10225 (toList!4295 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) lambda!170699)))

(declare-fun lt!1689619 () Unit!93482)

(declare-fun Unit!93627 () Unit!93482)

(assert (=> b!4511411 (= lt!1689619 Unit!93627)))

(declare-fun res!1876603 () Bool)

(assert (=> b!4511411 (= res!1876603 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170699))))

(declare-fun e!2810494 () Bool)

(assert (=> b!4511411 (=> (not res!1876603) (not e!2810494))))

(assert (=> b!4511411 e!2810494))

(declare-fun lt!1689630 () Unit!93482)

(declare-fun Unit!93628 () Unit!93482)

(assert (=> b!4511411 (= lt!1689630 Unit!93628)))

(declare-fun b!4511412 () Bool)

(declare-fun e!2810492 () Bool)

(assert (=> b!4511412 (= e!2810492 (invariantList!1001 (toList!4295 lt!1689618)))))

(declare-fun b!4511413 () Bool)

(declare-fun res!1876604 () Bool)

(assert (=> b!4511413 (=> (not res!1876604) (not e!2810492))))

(assert (=> b!4511413 (= res!1876604 (forall!10225 (toList!4295 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) lambda!170700))))

(declare-fun b!4511414 () Bool)

(assert (=> b!4511414 (= e!2810494 (forall!10225 (toList!4295 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) lambda!170699))))

(assert (=> b!4511415 (= e!2810493 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689624 () Unit!93482)

(assert (=> b!4511415 (= lt!1689624 call!314148)))

(assert (=> b!4511415 call!314150))

(declare-fun lt!1689627 () Unit!93482)

(assert (=> b!4511415 (= lt!1689627 lt!1689624)))

(assert (=> b!4511415 call!314149))

(declare-fun lt!1689616 () Unit!93482)

(declare-fun Unit!93629 () Unit!93482)

(assert (=> b!4511415 (= lt!1689616 Unit!93629)))

(assert (=> d!1387722 e!2810492))

(declare-fun res!1876605 () Bool)

(assert (=> d!1387722 (=> (not res!1876605) (not e!2810492))))

(assert (=> d!1387722 (= res!1876605 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170700))))

(assert (=> d!1387722 (= lt!1689618 e!2810493)))

(assert (=> d!1387722 (= c!769554 ((_ is Nil!50598) (t!357684 (_2!28800 lt!1689065))))))

(assert (=> d!1387722 (noDuplicateKeys!1144 (t!357684 (_2!28800 lt!1689065)))))

(assert (=> d!1387722 (= (addToMapMapFromBucket!671 (t!357684 (_2!28800 lt!1689065)) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) lt!1689618)))

(declare-fun bm!314145 () Bool)

(assert (=> bm!314145 (= call!314150 (forall!10225 (toList!4295 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (ite c!769554 lambda!170697 lambda!170698)))))

(assert (= (and d!1387722 c!769554) b!4511415))

(assert (= (and d!1387722 (not c!769554)) b!4511411))

(assert (= (and b!4511411 res!1876603) b!4511414))

(assert (= (or b!4511415 b!4511411) bm!314145))

(assert (= (or b!4511415 b!4511411) bm!314144))

(assert (= (or b!4511415 b!4511411) bm!314143))

(assert (= (and d!1387722 res!1876605) b!4511413))

(assert (= (and b!4511413 res!1876604) b!4511412))

(declare-fun m!5251505 () Bool)

(assert (=> b!4511411 m!5251505))

(declare-fun m!5251507 () Bool)

(assert (=> b!4511411 m!5251507))

(declare-fun m!5251509 () Bool)

(assert (=> b!4511411 m!5251509))

(declare-fun m!5251511 () Bool)

(assert (=> b!4511411 m!5251511))

(assert (=> b!4511411 m!5250829))

(declare-fun m!5251513 () Bool)

(assert (=> b!4511411 m!5251513))

(declare-fun m!5251515 () Bool)

(assert (=> b!4511411 m!5251515))

(declare-fun m!5251517 () Bool)

(assert (=> b!4511411 m!5251517))

(declare-fun m!5251519 () Bool)

(assert (=> b!4511411 m!5251519))

(assert (=> b!4511411 m!5250829))

(assert (=> b!4511411 m!5251515))

(assert (=> b!4511411 m!5251519))

(declare-fun m!5251521 () Bool)

(assert (=> b!4511411 m!5251521))

(assert (=> b!4511411 m!5251521))

(declare-fun m!5251523 () Bool)

(assert (=> b!4511411 m!5251523))

(assert (=> b!4511414 m!5251505))

(declare-fun m!5251525 () Bool)

(assert (=> bm!314144 m!5251525))

(assert (=> bm!314143 m!5250829))

(declare-fun m!5251527 () Bool)

(assert (=> bm!314143 m!5251527))

(declare-fun m!5251529 () Bool)

(assert (=> b!4511413 m!5251529))

(declare-fun m!5251531 () Bool)

(assert (=> b!4511412 m!5251531))

(declare-fun m!5251533 () Bool)

(assert (=> bm!314145 m!5251533))

(declare-fun m!5251535 () Bool)

(assert (=> d!1387722 m!5251535))

(declare-fun m!5251537 () Bool)

(assert (=> d!1387722 m!5251537))

(assert (=> b!4511066 d!1387722))

(declare-fun d!1387724 () Bool)

(declare-fun res!1876606 () Bool)

(declare-fun e!2810495 () Bool)

(assert (=> d!1387724 (=> res!1876606 e!2810495)))

(assert (=> d!1387724 (= res!1876606 ((_ is Nil!50598) (t!357684 (_2!28800 lt!1689065))))))

(assert (=> d!1387724 (= (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170649) e!2810495)))

(declare-fun b!4511416 () Bool)

(declare-fun e!2810496 () Bool)

(assert (=> b!4511416 (= e!2810495 e!2810496)))

(declare-fun res!1876607 () Bool)

(assert (=> b!4511416 (=> (not res!1876607) (not e!2810496))))

(assert (=> b!4511416 (= res!1876607 (dynLambda!21140 lambda!170649 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun b!4511417 () Bool)

(assert (=> b!4511417 (= e!2810496 (forall!10225 (t!357684 (t!357684 (_2!28800 lt!1689065))) lambda!170649))))

(assert (= (and d!1387724 (not res!1876606)) b!4511416))

(assert (= (and b!4511416 res!1876607) b!4511417))

(declare-fun b_lambda!153789 () Bool)

(assert (=> (not b_lambda!153789) (not b!4511416)))

(declare-fun m!5251539 () Bool)

(assert (=> b!4511416 m!5251539))

(declare-fun m!5251541 () Bool)

(assert (=> b!4511417 m!5251541))

(assert (=> b!4511066 d!1387724))

(declare-fun b!4511418 () Bool)

(declare-fun e!2810500 () Unit!93482)

(declare-fun lt!1689634 () Unit!93482)

(assert (=> b!4511418 (= e!2810500 lt!1689634)))

(declare-fun lt!1689640 () Unit!93482)

(assert (=> b!4511418 (= lt!1689640 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511418 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689638 () Unit!93482)

(assert (=> b!4511418 (= lt!1689638 lt!1689640)))

(assert (=> b!4511418 (= lt!1689634 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun call!314151 () Bool)

(assert (=> b!4511418 call!314151))

(declare-fun b!4511419 () Bool)

(declare-fun e!2810498 () List!50725)

(assert (=> b!4511419 (= e!2810498 (keys!17562 lt!1689394))))

(declare-fun b!4511420 () Bool)

(declare-fun e!2810499 () Unit!93482)

(declare-fun Unit!93630 () Unit!93482)

(assert (=> b!4511420 (= e!2810499 Unit!93630)))

(declare-fun b!4511421 () Bool)

(assert (=> b!4511421 (= e!2810498 (getKeysList!449 (toList!4295 lt!1689394)))))

(declare-fun b!4511422 () Bool)

(declare-fun e!2810502 () Bool)

(assert (=> b!4511422 (= e!2810502 (not (contains!13303 (keys!17562 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511423 () Bool)

(declare-fun e!2810501 () Bool)

(declare-fun e!2810497 () Bool)

(assert (=> b!4511423 (= e!2810501 e!2810497)))

(declare-fun res!1876609 () Bool)

(assert (=> b!4511423 (=> (not res!1876609) (not e!2810497))))

(assert (=> b!4511423 (= res!1876609 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511424 () Bool)

(assert (=> b!4511424 (= e!2810500 e!2810499)))

(declare-fun c!769557 () Bool)

(assert (=> b!4511424 (= c!769557 call!314151)))

(declare-fun b!4511425 () Bool)

(assert (=> b!4511425 false))

(declare-fun lt!1689635 () Unit!93482)

(declare-fun lt!1689636 () Unit!93482)

(assert (=> b!4511425 (= lt!1689635 lt!1689636)))

(assert (=> b!4511425 (containsKey!1736 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511425 (= lt!1689636 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun Unit!93631 () Unit!93482)

(assert (=> b!4511425 (= e!2810499 Unit!93631)))

(declare-fun b!4511426 () Bool)

(assert (=> b!4511426 (= e!2810497 (contains!13303 (keys!17562 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun d!1387726 () Bool)

(assert (=> d!1387726 e!2810501))

(declare-fun res!1876608 () Bool)

(assert (=> d!1387726 (=> res!1876608 e!2810501)))

(assert (=> d!1387726 (= res!1876608 e!2810502)))

(declare-fun res!1876610 () Bool)

(assert (=> d!1387726 (=> (not res!1876610) (not e!2810502))))

(declare-fun lt!1689641 () Bool)

(assert (=> d!1387726 (= res!1876610 (not lt!1689641))))

(declare-fun lt!1689637 () Bool)

(assert (=> d!1387726 (= lt!1689641 lt!1689637)))

(declare-fun lt!1689639 () Unit!93482)

(assert (=> d!1387726 (= lt!1689639 e!2810500)))

(declare-fun c!769555 () Bool)

(assert (=> d!1387726 (= c!769555 lt!1689637)))

(assert (=> d!1387726 (= lt!1689637 (containsKey!1736 (toList!4295 lt!1689394) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1387726 (= (contains!13299 lt!1689394 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1689641)))

(declare-fun bm!314146 () Bool)

(assert (=> bm!314146 (= call!314151 (contains!13303 e!2810498 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun c!769556 () Bool)

(assert (=> bm!314146 (= c!769556 c!769555)))

(assert (= (and d!1387726 c!769555) b!4511418))

(assert (= (and d!1387726 (not c!769555)) b!4511424))

(assert (= (and b!4511424 c!769557) b!4511425))

(assert (= (and b!4511424 (not c!769557)) b!4511420))

(assert (= (or b!4511418 b!4511424) bm!314146))

(assert (= (and bm!314146 c!769556) b!4511421))

(assert (= (and bm!314146 (not c!769556)) b!4511419))

(assert (= (and d!1387726 res!1876610) b!4511422))

(assert (= (and d!1387726 (not res!1876608)) b!4511423))

(assert (= (and b!4511423 res!1876609) b!4511426))

(declare-fun m!5251543 () Bool)

(assert (=> d!1387726 m!5251543))

(declare-fun m!5251545 () Bool)

(assert (=> b!4511426 m!5251545))

(assert (=> b!4511426 m!5251545))

(declare-fun m!5251547 () Bool)

(assert (=> b!4511426 m!5251547))

(assert (=> b!4511425 m!5251543))

(declare-fun m!5251549 () Bool)

(assert (=> b!4511425 m!5251549))

(declare-fun m!5251551 () Bool)

(assert (=> b!4511418 m!5251551))

(declare-fun m!5251553 () Bool)

(assert (=> b!4511418 m!5251553))

(assert (=> b!4511418 m!5251553))

(declare-fun m!5251555 () Bool)

(assert (=> b!4511418 m!5251555))

(declare-fun m!5251557 () Bool)

(assert (=> b!4511418 m!5251557))

(assert (=> b!4511419 m!5251545))

(declare-fun m!5251559 () Bool)

(assert (=> b!4511421 m!5251559))

(assert (=> b!4511423 m!5251553))

(assert (=> b!4511423 m!5251553))

(assert (=> b!4511423 m!5251555))

(assert (=> b!4511422 m!5251545))

(assert (=> b!4511422 m!5251545))

(assert (=> b!4511422 m!5251547))

(declare-fun m!5251561 () Bool)

(assert (=> bm!314146 m!5251561))

(assert (=> b!4511066 d!1387726))

(declare-fun d!1387728 () Bool)

(declare-fun res!1876611 () Bool)

(declare-fun e!2810503 () Bool)

(assert (=> d!1387728 (=> res!1876611 e!2810503)))

(assert (=> d!1387728 (= res!1876611 ((_ is Nil!50598) (toList!4295 lt!1689394)))))

(assert (=> d!1387728 (= (forall!10225 (toList!4295 lt!1689394) lambda!170649) e!2810503)))

(declare-fun b!4511427 () Bool)

(declare-fun e!2810504 () Bool)

(assert (=> b!4511427 (= e!2810503 e!2810504)))

(declare-fun res!1876612 () Bool)

(assert (=> b!4511427 (=> (not res!1876612) (not e!2810504))))

(assert (=> b!4511427 (= res!1876612 (dynLambda!21140 lambda!170649 (h!56435 (toList!4295 lt!1689394))))))

(declare-fun b!4511428 () Bool)

(assert (=> b!4511428 (= e!2810504 (forall!10225 (t!357684 (toList!4295 lt!1689394)) lambda!170649))))

(assert (= (and d!1387728 (not res!1876611)) b!4511427))

(assert (= (and b!4511427 res!1876612) b!4511428))

(declare-fun b_lambda!153791 () Bool)

(assert (=> (not b_lambda!153791) (not b!4511427)))

(declare-fun m!5251563 () Bool)

(assert (=> b!4511427 m!5251563))

(declare-fun m!5251565 () Bool)

(assert (=> b!4511428 m!5251565))

(assert (=> b!4511066 d!1387728))

(declare-fun b!4511429 () Bool)

(declare-fun e!2810508 () Unit!93482)

(declare-fun lt!1689642 () Unit!93482)

(assert (=> b!4511429 (= e!2810508 lt!1689642)))

(declare-fun lt!1689648 () Unit!93482)

(assert (=> b!4511429 (= lt!1689648 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511429 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689646 () Unit!93482)

(assert (=> b!4511429 (= lt!1689646 lt!1689648)))

(assert (=> b!4511429 (= lt!1689642 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun call!314152 () Bool)

(assert (=> b!4511429 call!314152))

(declare-fun b!4511430 () Bool)

(declare-fun e!2810506 () List!50725)

(assert (=> b!4511430 (= e!2810506 (keys!17562 lt!1689409))))

(declare-fun b!4511431 () Bool)

(declare-fun e!2810507 () Unit!93482)

(declare-fun Unit!93632 () Unit!93482)

(assert (=> b!4511431 (= e!2810507 Unit!93632)))

(declare-fun b!4511432 () Bool)

(assert (=> b!4511432 (= e!2810506 (getKeysList!449 (toList!4295 lt!1689409)))))

(declare-fun b!4511433 () Bool)

(declare-fun e!2810510 () Bool)

(assert (=> b!4511433 (= e!2810510 (not (contains!13303 (keys!17562 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511434 () Bool)

(declare-fun e!2810509 () Bool)

(declare-fun e!2810505 () Bool)

(assert (=> b!4511434 (= e!2810509 e!2810505)))

(declare-fun res!1876614 () Bool)

(assert (=> b!4511434 (=> (not res!1876614) (not e!2810505))))

(assert (=> b!4511434 (= res!1876614 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511435 () Bool)

(assert (=> b!4511435 (= e!2810508 e!2810507)))

(declare-fun c!769560 () Bool)

(assert (=> b!4511435 (= c!769560 call!314152)))

(declare-fun b!4511436 () Bool)

(assert (=> b!4511436 false))

(declare-fun lt!1689643 () Unit!93482)

(declare-fun lt!1689644 () Unit!93482)

(assert (=> b!4511436 (= lt!1689643 lt!1689644)))

(assert (=> b!4511436 (containsKey!1736 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511436 (= lt!1689644 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun Unit!93633 () Unit!93482)

(assert (=> b!4511436 (= e!2810507 Unit!93633)))

(declare-fun b!4511437 () Bool)

(assert (=> b!4511437 (= e!2810505 (contains!13303 (keys!17562 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun d!1387730 () Bool)

(assert (=> d!1387730 e!2810509))

(declare-fun res!1876613 () Bool)

(assert (=> d!1387730 (=> res!1876613 e!2810509)))

(assert (=> d!1387730 (= res!1876613 e!2810510)))

(declare-fun res!1876615 () Bool)

(assert (=> d!1387730 (=> (not res!1876615) (not e!2810510))))

(declare-fun lt!1689649 () Bool)

(assert (=> d!1387730 (= res!1876615 (not lt!1689649))))

(declare-fun lt!1689645 () Bool)

(assert (=> d!1387730 (= lt!1689649 lt!1689645)))

(declare-fun lt!1689647 () Unit!93482)

(assert (=> d!1387730 (= lt!1689647 e!2810508)))

(declare-fun c!769558 () Bool)

(assert (=> d!1387730 (= c!769558 lt!1689645)))

(assert (=> d!1387730 (= lt!1689645 (containsKey!1736 (toList!4295 lt!1689409) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1387730 (= (contains!13299 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1689649)))

(declare-fun bm!314147 () Bool)

(assert (=> bm!314147 (= call!314152 (contains!13303 e!2810506 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun c!769559 () Bool)

(assert (=> bm!314147 (= c!769559 c!769558)))

(assert (= (and d!1387730 c!769558) b!4511429))

(assert (= (and d!1387730 (not c!769558)) b!4511435))

(assert (= (and b!4511435 c!769560) b!4511436))

(assert (= (and b!4511435 (not c!769560)) b!4511431))

(assert (= (or b!4511429 b!4511435) bm!314147))

(assert (= (and bm!314147 c!769559) b!4511432))

(assert (= (and bm!314147 (not c!769559)) b!4511430))

(assert (= (and d!1387730 res!1876615) b!4511433))

(assert (= (and d!1387730 (not res!1876613)) b!4511434))

(assert (= (and b!4511434 res!1876614) b!4511437))

(declare-fun m!5251567 () Bool)

(assert (=> d!1387730 m!5251567))

(declare-fun m!5251569 () Bool)

(assert (=> b!4511437 m!5251569))

(assert (=> b!4511437 m!5251569))

(declare-fun m!5251571 () Bool)

(assert (=> b!4511437 m!5251571))

(assert (=> b!4511436 m!5251567))

(declare-fun m!5251573 () Bool)

(assert (=> b!4511436 m!5251573))

(declare-fun m!5251575 () Bool)

(assert (=> b!4511429 m!5251575))

(declare-fun m!5251577 () Bool)

(assert (=> b!4511429 m!5251577))

(assert (=> b!4511429 m!5251577))

(declare-fun m!5251579 () Bool)

(assert (=> b!4511429 m!5251579))

(declare-fun m!5251581 () Bool)

(assert (=> b!4511429 m!5251581))

(assert (=> b!4511430 m!5251569))

(declare-fun m!5251583 () Bool)

(assert (=> b!4511432 m!5251583))

(assert (=> b!4511434 m!5251577))

(assert (=> b!4511434 m!5251577))

(assert (=> b!4511434 m!5251579))

(assert (=> b!4511433 m!5251569))

(assert (=> b!4511433 m!5251569))

(assert (=> b!4511433 m!5251571))

(declare-fun m!5251585 () Bool)

(assert (=> bm!314147 m!5251585))

(assert (=> b!4511066 d!1387730))

(declare-fun bs!847344 () Bool)

(declare-fun d!1387732 () Bool)

(assert (= bs!847344 (and d!1387732 d!1387722)))

(declare-fun lambda!170705 () Int)

(assert (=> bs!847344 (= (= lt!1689409 lt!1689618) (= lambda!170705 lambda!170700))))

(declare-fun bs!847345 () Bool)

(assert (= bs!847345 (and d!1387732 b!4511307)))

(assert (=> bs!847345 (= (= lt!1689409 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170705 lambda!170689))))

(declare-fun bs!847346 () Bool)

(assert (= bs!847346 (and d!1387732 b!4511411)))

(assert (=> bs!847346 (= (= lt!1689409 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170705 lambda!170698))))

(declare-fun bs!847347 () Bool)

(assert (= bs!847347 (and d!1387732 b!4511188)))

(assert (=> bs!847347 (= (= lt!1689409 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170705 lambda!170670))))

(declare-fun bs!847348 () Bool)

(assert (= bs!847348 (and d!1387732 b!4511291)))

(assert (=> bs!847348 (= (= lt!1689409 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170705 lambda!170682))))

(declare-fun bs!847349 () Bool)

(assert (= bs!847349 (and d!1387732 b!4511287)))

(assert (=> bs!847349 (= (= lt!1689409 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170705 lambda!170683))))

(declare-fun bs!847350 () Bool)

(assert (= bs!847350 (and d!1387732 b!4511303)))

(assert (=> bs!847350 (= (= lt!1689409 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170705 lambda!170690))))

(declare-fun bs!847351 () Bool)

(assert (= bs!847351 (and d!1387732 d!1387590)))

(assert (=> bs!847351 (= (= lt!1689409 lt!1689493) (= lambda!170705 lambda!170672))))

(declare-fun bs!847352 () Bool)

(assert (= bs!847352 (and d!1387732 b!4511066)))

(assert (=> bs!847352 (= lambda!170705 lambda!170649)))

(declare-fun bs!847353 () Bool)

(assert (= bs!847353 (and d!1387732 b!4511192)))

(assert (=> bs!847353 (= (= lt!1689409 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170705 lambda!170669))))

(declare-fun bs!847354 () Bool)

(assert (= bs!847354 (and d!1387732 b!4511109)))

(assert (=> bs!847354 (= (= lt!1689409 lt!1689048) (= lambda!170705 lambda!170653))))

(assert (=> bs!847346 (= (= lt!1689409 lt!1689629) (= lambda!170705 lambda!170699))))

(declare-fun bs!847355 () Bool)

(assert (= bs!847355 (and d!1387732 b!4511415)))

(assert (=> bs!847355 (= (= lt!1689409 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170705 lambda!170697))))

(declare-fun bs!847356 () Bool)

(assert (= bs!847356 (and d!1387732 d!1387654)))

(assert (=> bs!847356 (= (= lt!1689409 lt!1689536) (= lambda!170705 lambda!170685))))

(assert (=> bs!847347 (= (= lt!1689409 lt!1689504) (= lambda!170705 lambda!170671))))

(assert (=> bs!847352 (= (= lt!1689409 lt!1689058) (= lambda!170705 lambda!170648))))

(declare-fun bs!847357 () Bool)

(assert (= bs!847357 (and d!1387732 d!1387668)))

(assert (=> bs!847357 (= (= lt!1689409 lt!1689561) (= lambda!170705 lambda!170692))))

(declare-fun bs!847358 () Bool)

(assert (= bs!847358 (and d!1387732 d!1387526)))

(assert (=> bs!847358 (= (= lt!1689409 lt!1689430) (= lambda!170705 lambda!170655))))

(declare-fun bs!847359 () Bool)

(assert (= bs!847359 (and d!1387732 d!1387530)))

(assert (=> bs!847359 (not (= lambda!170705 lambda!170658))))

(assert (=> bs!847354 (= (= lt!1689409 lt!1689441) (= lambda!170705 lambda!170654))))

(declare-fun bs!847360 () Bool)

(assert (= bs!847360 (and d!1387732 d!1387458)))

(assert (=> bs!847360 (= (= lt!1689409 lt!1689398) (= lambda!170705 lambda!170650))))

(declare-fun bs!847361 () Bool)

(assert (= bs!847361 (and d!1387732 b!4511070)))

(assert (=> bs!847361 (= (= lt!1689409 lt!1689058) (= lambda!170705 lambda!170647))))

(assert (=> bs!847349 (= (= lt!1689409 lt!1689547) (= lambda!170705 lambda!170684))))

(declare-fun bs!847362 () Bool)

(assert (= bs!847362 (and d!1387732 b!4511113)))

(assert (=> bs!847362 (= (= lt!1689409 lt!1689048) (= lambda!170705 lambda!170652))))

(assert (=> bs!847350 (= (= lt!1689409 lt!1689572) (= lambda!170705 lambda!170691))))

(declare-fun bs!847363 () Bool)

(assert (= bs!847363 (and d!1387732 d!1387694)))

(assert (=> bs!847363 (= (= lt!1689409 lt!1689048) (= lambda!170705 lambda!170696))))

(assert (=> d!1387732 true))

(assert (=> d!1387732 (forall!10225 (toList!4295 lt!1689058) lambda!170705)))

(declare-fun lt!1689652 () Unit!93482)

(declare-fun choose!29336 (ListMap!3557 ListMap!3557 K!12000 V!12246) Unit!93482)

(assert (=> d!1387732 (= lt!1689652 (choose!29336 lt!1689058 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1387732 (forall!10225 (toList!4295 (+!1508 lt!1689058 (tuple2!51011 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))) lambda!170705)))

(assert (=> d!1387732 (= (addForallContainsKeyThenBeforeAdding!322 lt!1689058 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1689652)))

(declare-fun bs!847364 () Bool)

(assert (= bs!847364 d!1387732))

(declare-fun m!5251587 () Bool)

(assert (=> bs!847364 m!5251587))

(declare-fun m!5251589 () Bool)

(assert (=> bs!847364 m!5251589))

(declare-fun m!5251591 () Bool)

(assert (=> bs!847364 m!5251591))

(declare-fun m!5251593 () Bool)

(assert (=> bs!847364 m!5251593))

(assert (=> b!4511066 d!1387732))

(declare-fun d!1387736 () Bool)

(declare-fun e!2810516 () Bool)

(assert (=> d!1387736 e!2810516))

(declare-fun res!1876623 () Bool)

(assert (=> d!1387736 (=> (not res!1876623) (not e!2810516))))

(declare-fun lt!1689683 () ListMap!3557)

(assert (=> d!1387736 (= res!1876623 (contains!13299 lt!1689683 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689684 () List!50722)

(assert (=> d!1387736 (= lt!1689683 (ListMap!3558 lt!1689684))))

(declare-fun lt!1689682 () Unit!93482)

(declare-fun lt!1689685 () Unit!93482)

(assert (=> d!1387736 (= lt!1689682 lt!1689685)))

(assert (=> d!1387736 (= (getValueByKey!1061 lt!1689684 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) (Some!11080 (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!655 (List!50722 K!12000 V!12246) Unit!93482)

(assert (=> d!1387736 (= lt!1689685 (lemmaContainsTupThenGetReturnValue!655 lt!1689684 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun insertNoDuplicatedKeys!271 (List!50722 K!12000 V!12246) List!50722)

(assert (=> d!1387736 (= lt!1689684 (insertNoDuplicatedKeys!271 (toList!4295 lt!1689058) (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1387736 (= (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065))) lt!1689683)))

(declare-fun b!4511448 () Bool)

(declare-fun res!1876624 () Bool)

(assert (=> b!4511448 (=> (not res!1876624) (not e!2810516))))

(assert (=> b!4511448 (= res!1876624 (= (getValueByKey!1061 (toList!4295 lt!1689683) (_1!28799 (h!56435 (_2!28800 lt!1689065)))) (Some!11080 (_2!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511449 () Bool)

(declare-fun contains!13304 (List!50722 tuple2!51010) Bool)

(assert (=> b!4511449 (= e!2810516 (contains!13304 (toList!4295 lt!1689683) (h!56435 (_2!28800 lt!1689065))))))

(assert (= (and d!1387736 res!1876623) b!4511448))

(assert (= (and b!4511448 res!1876624) b!4511449))

(declare-fun m!5251595 () Bool)

(assert (=> d!1387736 m!5251595))

(declare-fun m!5251597 () Bool)

(assert (=> d!1387736 m!5251597))

(declare-fun m!5251599 () Bool)

(assert (=> d!1387736 m!5251599))

(declare-fun m!5251601 () Bool)

(assert (=> d!1387736 m!5251601))

(declare-fun m!5251603 () Bool)

(assert (=> b!4511448 m!5251603))

(declare-fun m!5251605 () Bool)

(assert (=> b!4511449 m!5251605))

(assert (=> b!4511066 d!1387736))

(declare-fun d!1387738 () Bool)

(declare-fun res!1876625 () Bool)

(declare-fun e!2810517 () Bool)

(assert (=> d!1387738 (=> res!1876625 e!2810517)))

(assert (=> d!1387738 (= res!1876625 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1387738 (= (forall!10225 (_2!28800 lt!1689065) lambda!170649) e!2810517)))

(declare-fun b!4511450 () Bool)

(declare-fun e!2810518 () Bool)

(assert (=> b!4511450 (= e!2810517 e!2810518)))

(declare-fun res!1876626 () Bool)

(assert (=> b!4511450 (=> (not res!1876626) (not e!2810518))))

(assert (=> b!4511450 (= res!1876626 (dynLambda!21140 lambda!170649 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun b!4511451 () Bool)

(assert (=> b!4511451 (= e!2810518 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170649))))

(assert (= (and d!1387738 (not res!1876625)) b!4511450))

(assert (= (and b!4511450 res!1876626) b!4511451))

(declare-fun b_lambda!153793 () Bool)

(assert (=> (not b_lambda!153793) (not b!4511450)))

(declare-fun m!5251607 () Bool)

(assert (=> b!4511450 m!5251607))

(assert (=> b!4511451 m!5250821))

(assert (=> b!4511066 d!1387738))

(declare-fun d!1387740 () Bool)

(assert (=> d!1387740 (dynLambda!21140 lambda!170649 (h!56435 (_2!28800 lt!1689065)))))

(declare-fun lt!1689688 () Unit!93482)

(declare-fun choose!29337 (List!50722 Int tuple2!51010) Unit!93482)

(assert (=> d!1387740 (= lt!1689688 (choose!29337 (toList!4295 lt!1689394) lambda!170649 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun e!2810521 () Bool)

(assert (=> d!1387740 e!2810521))

(declare-fun res!1876629 () Bool)

(assert (=> d!1387740 (=> (not res!1876629) (not e!2810521))))

(assert (=> d!1387740 (= res!1876629 (forall!10225 (toList!4295 lt!1689394) lambda!170649))))

(assert (=> d!1387740 (= (forallContained!2477 (toList!4295 lt!1689394) lambda!170649 (h!56435 (_2!28800 lt!1689065))) lt!1689688)))

(declare-fun b!4511454 () Bool)

(assert (=> b!4511454 (= e!2810521 (contains!13304 (toList!4295 lt!1689394) (h!56435 (_2!28800 lt!1689065))))))

(assert (= (and d!1387740 res!1876629) b!4511454))

(declare-fun b_lambda!153795 () Bool)

(assert (=> (not b_lambda!153795) (not d!1387740)))

(assert (=> d!1387740 m!5251607))

(declare-fun m!5251609 () Bool)

(assert (=> d!1387740 m!5251609))

(assert (=> d!1387740 m!5250835))

(declare-fun m!5251611 () Bool)

(assert (=> b!4511454 m!5251611))

(assert (=> b!4511066 d!1387740))

(assert (=> b!4511066 d!1387674))

(assert (=> b!4510985 d!1387600))

(assert (=> b!4510985 d!1387602))

(declare-fun d!1387742 () Bool)

(declare-fun res!1876630 () Bool)

(declare-fun e!2810522 () Bool)

(assert (=> d!1387742 (=> res!1876630 e!2810522)))

(assert (=> d!1387742 (= res!1876630 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1387742 (= (forall!10225 (_2!28800 lt!1689065) lambda!170650) e!2810522)))

(declare-fun b!4511455 () Bool)

(declare-fun e!2810523 () Bool)

(assert (=> b!4511455 (= e!2810522 e!2810523)))

(declare-fun res!1876631 () Bool)

(assert (=> b!4511455 (=> (not res!1876631) (not e!2810523))))

(assert (=> b!4511455 (= res!1876631 (dynLambda!21140 lambda!170650 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun b!4511456 () Bool)

(assert (=> b!4511456 (= e!2810523 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170650))))

(assert (= (and d!1387742 (not res!1876630)) b!4511455))

(assert (= (and b!4511455 res!1876631) b!4511456))

(declare-fun b_lambda!153797 () Bool)

(assert (=> (not b_lambda!153797) (not b!4511455)))

(declare-fun m!5251613 () Bool)

(assert (=> b!4511455 m!5251613))

(declare-fun m!5251615 () Bool)

(assert (=> b!4511456 m!5251615))

(assert (=> d!1387458 d!1387742))

(declare-fun d!1387744 () Bool)

(declare-fun res!1876632 () Bool)

(declare-fun e!2810524 () Bool)

(assert (=> d!1387744 (=> res!1876632 e!2810524)))

(assert (=> d!1387744 (= res!1876632 (not ((_ is Cons!50598) (_2!28800 lt!1689065))))))

(assert (=> d!1387744 (= (noDuplicateKeys!1144 (_2!28800 lt!1689065)) e!2810524)))

(declare-fun b!4511457 () Bool)

(declare-fun e!2810525 () Bool)

(assert (=> b!4511457 (= e!2810524 e!2810525)))

(declare-fun res!1876633 () Bool)

(assert (=> b!4511457 (=> (not res!1876633) (not e!2810525))))

(assert (=> b!4511457 (= res!1876633 (not (containsKey!1732 (t!357684 (_2!28800 lt!1689065)) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511458 () Bool)

(assert (=> b!4511458 (= e!2810525 (noDuplicateKeys!1144 (t!357684 (_2!28800 lt!1689065))))))

(assert (= (and d!1387744 (not res!1876632)) b!4511457))

(assert (= (and b!4511457 res!1876633) b!4511458))

(declare-fun m!5251625 () Bool)

(assert (=> b!4511457 m!5251625))

(assert (=> b!4511458 m!5251537))

(assert (=> d!1387458 d!1387744))

(assert (=> b!4510892 d!1387412))

(declare-fun d!1387746 () Bool)

(declare-fun c!769565 () Bool)

(assert (=> d!1387746 (= c!769565 ((_ is Nil!50601) (keys!17562 lt!1689046)))))

(declare-fun e!2810529 () (InoxSet K!12000))

(assert (=> d!1387746 (= (content!8311 (keys!17562 lt!1689046)) e!2810529)))

(declare-fun b!4511465 () Bool)

(assert (=> b!4511465 (= e!2810529 ((as const (Array K!12000 Bool)) false))))

(declare-fun b!4511466 () Bool)

(assert (=> b!4511466 (= e!2810529 ((_ map or) (store ((as const (Array K!12000 Bool)) false) (h!56440 (keys!17562 lt!1689046)) true) (content!8311 (t!357687 (keys!17562 lt!1689046)))))))

(assert (= (and d!1387746 c!769565) b!4511465))

(assert (= (and d!1387746 (not c!769565)) b!4511466))

(declare-fun m!5251651 () Bool)

(assert (=> b!4511466 m!5251651))

(declare-fun m!5251653 () Bool)

(assert (=> b!4511466 m!5251653))

(assert (=> b!4511132 d!1387746))

(assert (=> b!4511132 d!1387602))

(declare-fun d!1387750 () Bool)

(declare-fun c!769566 () Bool)

(assert (=> d!1387750 (= c!769566 ((_ is Nil!50601) (keys!17562 lt!1689454)))))

(declare-fun e!2810530 () (InoxSet K!12000))

(assert (=> d!1387750 (= (content!8311 (keys!17562 lt!1689454)) e!2810530)))

(declare-fun b!4511467 () Bool)

(assert (=> b!4511467 (= e!2810530 ((as const (Array K!12000 Bool)) false))))

(declare-fun b!4511468 () Bool)

(assert (=> b!4511468 (= e!2810530 ((_ map or) (store ((as const (Array K!12000 Bool)) false) (h!56440 (keys!17562 lt!1689454)) true) (content!8311 (t!357687 (keys!17562 lt!1689454)))))))

(assert (= (and d!1387750 c!769566) b!4511467))

(assert (= (and d!1387750 (not c!769566)) b!4511468))

(declare-fun m!5251655 () Bool)

(assert (=> b!4511468 m!5251655))

(declare-fun m!5251657 () Bool)

(assert (=> b!4511468 m!5251657))

(assert (=> b!4511132 d!1387750))

(declare-fun bs!847393 () Bool)

(declare-fun b!4511470 () Bool)

(assert (= bs!847393 (and b!4511470 b!4511210)))

(declare-fun lambda!170711 () Int)

(assert (=> bs!847393 (= (= (toList!4295 lt!1689454) (toList!4295 lt!1689045)) (= lambda!170711 lambda!170678))))

(declare-fun bs!847395 () Bool)

(assert (= bs!847395 (and b!4511470 b!4511217)))

(assert (=> bs!847395 (= (= (toList!4295 lt!1689454) (toList!4295 lt!1689046)) (= lambda!170711 lambda!170680))))

(declare-fun bs!847397 () Bool)

(assert (= bs!847397 (and b!4511470 b!4511295)))

(assert (=> bs!847397 (= (= (toList!4295 lt!1689454) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170711 lambda!170687))))

(assert (=> b!4511470 true))

(declare-fun bs!847399 () Bool)

(declare-fun b!4511471 () Bool)

(assert (= bs!847399 (and b!4511471 b!4511211)))

(declare-fun lambda!170712 () Int)

(assert (=> bs!847399 (= lambda!170712 lambda!170679)))

(declare-fun bs!847400 () Bool)

(assert (= bs!847400 (and b!4511471 b!4511218)))

(assert (=> bs!847400 (= lambda!170712 lambda!170681)))

(declare-fun bs!847402 () Bool)

(assert (= bs!847402 (and b!4511471 b!4511296)))

(assert (=> bs!847402 (= lambda!170712 lambda!170688)))

(declare-fun d!1387752 () Bool)

(declare-fun e!2810531 () Bool)

(assert (=> d!1387752 e!2810531))

(declare-fun res!1876635 () Bool)

(assert (=> d!1387752 (=> (not res!1876635) (not e!2810531))))

(declare-fun lt!1689690 () List!50725)

(assert (=> d!1387752 (= res!1876635 (noDuplicate!739 lt!1689690))))

(assert (=> d!1387752 (= lt!1689690 (getKeysList!449 (toList!4295 lt!1689454)))))

(assert (=> d!1387752 (= (keys!17562 lt!1689454) lt!1689690)))

(declare-fun b!4511469 () Bool)

(declare-fun res!1876636 () Bool)

(assert (=> b!4511469 (=> (not res!1876636) (not e!2810531))))

(assert (=> b!4511469 (= res!1876636 (= (length!334 lt!1689690) (length!335 (toList!4295 lt!1689454))))))

(declare-fun res!1876634 () Bool)

(assert (=> b!4511470 (=> (not res!1876634) (not e!2810531))))

(assert (=> b!4511470 (= res!1876634 (forall!10226 lt!1689690 lambda!170711))))

(assert (=> b!4511471 (= e!2810531 (= (content!8311 lt!1689690) (content!8311 (map!11122 (toList!4295 lt!1689454) lambda!170712))))))

(assert (= (and d!1387752 res!1876635) b!4511469))

(assert (= (and b!4511469 res!1876636) b!4511470))

(assert (= (and b!4511470 res!1876634) b!4511471))

(declare-fun m!5251659 () Bool)

(assert (=> d!1387752 m!5251659))

(declare-fun m!5251661 () Bool)

(assert (=> d!1387752 m!5251661))

(declare-fun m!5251663 () Bool)

(assert (=> b!4511469 m!5251663))

(declare-fun m!5251665 () Bool)

(assert (=> b!4511469 m!5251665))

(declare-fun m!5251667 () Bool)

(assert (=> b!4511470 m!5251667))

(declare-fun m!5251669 () Bool)

(assert (=> b!4511471 m!5251669))

(declare-fun m!5251671 () Bool)

(assert (=> b!4511471 m!5251671))

(assert (=> b!4511471 m!5251671))

(declare-fun m!5251673 () Bool)

(assert (=> b!4511471 m!5251673))

(assert (=> b!4511132 d!1387752))

(declare-fun d!1387754 () Bool)

(declare-fun c!769567 () Bool)

(assert (=> d!1387754 (= c!769567 ((_ is Nil!50598) (toList!4295 lt!1689050)))))

(declare-fun e!2810532 () (InoxSet tuple2!51010))

(assert (=> d!1387754 (= (content!8309 (toList!4295 lt!1689050)) e!2810532)))

(declare-fun b!4511472 () Bool)

(assert (=> b!4511472 (= e!2810532 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511473 () Bool)

(assert (=> b!4511473 (= e!2810532 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689050)) true) (content!8309 (t!357684 (toList!4295 lt!1689050)))))))

(assert (= (and d!1387754 c!769567) b!4511472))

(assert (= (and d!1387754 (not c!769567)) b!4511473))

(declare-fun m!5251675 () Bool)

(assert (=> b!4511473 m!5251675))

(declare-fun m!5251677 () Bool)

(assert (=> b!4511473 m!5251677))

(assert (=> d!1387554 d!1387754))

(declare-fun d!1387756 () Bool)

(declare-fun c!769568 () Bool)

(assert (=> d!1387756 (= c!769568 ((_ is Nil!50598) (toList!4295 lt!1689045)))))

(declare-fun e!2810533 () (InoxSet tuple2!51010))

(assert (=> d!1387756 (= (content!8309 (toList!4295 lt!1689045)) e!2810533)))

(declare-fun b!4511474 () Bool)

(assert (=> b!4511474 (= e!2810533 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511475 () Bool)

(assert (=> b!4511475 (= e!2810533 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689045)) true) (content!8309 (t!357684 (toList!4295 lt!1689045)))))))

(assert (= (and d!1387756 c!769568) b!4511474))

(assert (= (and d!1387756 (not c!769568)) b!4511475))

(declare-fun m!5251679 () Bool)

(assert (=> b!4511475 m!5251679))

(declare-fun m!5251681 () Bool)

(assert (=> b!4511475 m!5251681))

(assert (=> d!1387554 d!1387756))

(declare-fun b!4511477 () Bool)

(declare-fun e!2810534 () Option!11080)

(declare-fun e!2810535 () Option!11080)

(assert (=> b!4511477 (= e!2810534 e!2810535)))

(declare-fun c!769570 () Bool)

(assert (=> b!4511477 (= c!769570 (and ((_ is Cons!50599) (toList!4296 lt!1689190)) (not (= (_1!28800 (h!56436 (toList!4296 lt!1689190))) (_1!28800 lt!1689065)))))))

(declare-fun b!4511476 () Bool)

(assert (=> b!4511476 (= e!2810534 (Some!11079 (_2!28800 (h!56436 (toList!4296 lt!1689190)))))))

(declare-fun b!4511478 () Bool)

(assert (=> b!4511478 (= e!2810535 (getValueByKey!1060 (t!357685 (toList!4296 lt!1689190)) (_1!28800 lt!1689065)))))

(declare-fun d!1387758 () Bool)

(declare-fun c!769569 () Bool)

(assert (=> d!1387758 (= c!769569 (and ((_ is Cons!50599) (toList!4296 lt!1689190)) (= (_1!28800 (h!56436 (toList!4296 lt!1689190))) (_1!28800 lt!1689065))))))

(assert (=> d!1387758 (= (getValueByKey!1060 (toList!4296 lt!1689190) (_1!28800 lt!1689065)) e!2810534)))

(declare-fun b!4511479 () Bool)

(assert (=> b!4511479 (= e!2810535 None!11079)))

(assert (= (and d!1387758 c!769569) b!4511476))

(assert (= (and d!1387758 (not c!769569)) b!4511477))

(assert (= (and b!4511477 c!769570) b!4511478))

(assert (= (and b!4511477 (not c!769570)) b!4511479))

(declare-fun m!5251689 () Bool)

(assert (=> b!4511478 m!5251689))

(assert (=> b!4510936 d!1387758))

(declare-fun d!1387760 () Bool)

(declare-fun lt!1689691 () Bool)

(assert (=> d!1387760 (= lt!1689691 (select (content!8311 e!2810318) key!3287))))

(declare-fun e!2810537 () Bool)

(assert (=> d!1387760 (= lt!1689691 e!2810537)))

(declare-fun res!1876637 () Bool)

(assert (=> d!1387760 (=> (not res!1876637) (not e!2810537))))

(assert (=> d!1387760 (= res!1876637 ((_ is Cons!50601) e!2810318))))

(assert (=> d!1387760 (= (contains!13303 e!2810318 key!3287) lt!1689691)))

(declare-fun b!4511480 () Bool)

(declare-fun e!2810536 () Bool)

(assert (=> b!4511480 (= e!2810537 e!2810536)))

(declare-fun res!1876638 () Bool)

(assert (=> b!4511480 (=> res!1876638 e!2810536)))

(assert (=> b!4511480 (= res!1876638 (= (h!56440 e!2810318) key!3287))))

(declare-fun b!4511481 () Bool)

(assert (=> b!4511481 (= e!2810536 (contains!13303 (t!357687 e!2810318) key!3287))))

(assert (= (and d!1387760 res!1876637) b!4511480))

(assert (= (and b!4511480 (not res!1876638)) b!4511481))

(declare-fun m!5251693 () Bool)

(assert (=> d!1387760 m!5251693))

(declare-fun m!5251695 () Bool)

(assert (=> d!1387760 m!5251695))

(declare-fun m!5251697 () Bool)

(assert (=> b!4511481 m!5251697))

(assert (=> bm!314120 d!1387760))

(declare-fun d!1387764 () Bool)

(assert (=> d!1387764 (= (head!9382 (toList!4296 lt!1689051)) (h!56436 (toList!4296 lt!1689051)))))

(assert (=> d!1387538 d!1387764))

(declare-fun d!1387766 () Bool)

(declare-fun lt!1689693 () Bool)

(assert (=> d!1387766 (= lt!1689693 (select (content!8311 e!2810206) key!3287))))

(declare-fun e!2810541 () Bool)

(assert (=> d!1387766 (= lt!1689693 e!2810541)))

(declare-fun res!1876641 () Bool)

(assert (=> d!1387766 (=> (not res!1876641) (not e!2810541))))

(assert (=> d!1387766 (= res!1876641 ((_ is Cons!50601) e!2810206))))

(assert (=> d!1387766 (= (contains!13303 e!2810206 key!3287) lt!1689693)))

(declare-fun b!4511484 () Bool)

(declare-fun e!2810540 () Bool)

(assert (=> b!4511484 (= e!2810541 e!2810540)))

(declare-fun res!1876642 () Bool)

(assert (=> b!4511484 (=> res!1876642 e!2810540)))

(assert (=> b!4511484 (= res!1876642 (= (h!56440 e!2810206) key!3287))))

(declare-fun b!4511485 () Bool)

(assert (=> b!4511485 (= e!2810540 (contains!13303 (t!357687 e!2810206) key!3287))))

(assert (= (and d!1387766 res!1876641) b!4511484))

(assert (= (and b!4511484 (not res!1876642)) b!4511485))

(declare-fun m!5251703 () Bool)

(assert (=> d!1387766 m!5251703))

(declare-fun m!5251705 () Bool)

(assert (=> d!1387766 m!5251705))

(declare-fun m!5251707 () Bool)

(assert (=> b!4511485 m!5251707))

(assert (=> bm!314094 d!1387766))

(declare-fun d!1387770 () Bool)

(assert (=> d!1387770 (= (invariantList!1001 (toList!4295 lt!1689226)) (noDuplicatedKeys!254 (toList!4295 lt!1689226)))))

(declare-fun bs!847408 () Bool)

(assert (= bs!847408 d!1387770))

(declare-fun m!5251709 () Bool)

(assert (=> bs!847408 m!5251709))

(assert (=> d!1387448 d!1387770))

(declare-fun d!1387772 () Bool)

(declare-fun res!1876643 () Bool)

(declare-fun e!2810542 () Bool)

(assert (=> d!1387772 (=> res!1876643 e!2810542)))

(assert (=> d!1387772 (= res!1876643 ((_ is Nil!50599) (t!357685 (toList!4296 lm!1477))))))

(assert (=> d!1387772 (= (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170562) e!2810542)))

(declare-fun b!4511486 () Bool)

(declare-fun e!2810543 () Bool)

(assert (=> b!4511486 (= e!2810542 e!2810543)))

(declare-fun res!1876644 () Bool)

(assert (=> b!4511486 (=> (not res!1876644) (not e!2810543))))

(assert (=> b!4511486 (= res!1876644 (dynLambda!21139 lambda!170562 (h!56436 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun b!4511487 () Bool)

(assert (=> b!4511487 (= e!2810543 (forall!10223 (t!357685 (t!357685 (toList!4296 lm!1477))) lambda!170562))))

(assert (= (and d!1387772 (not res!1876643)) b!4511486))

(assert (= (and b!4511486 res!1876644) b!4511487))

(declare-fun b_lambda!153799 () Bool)

(assert (=> (not b_lambda!153799) (not b!4511486)))

(declare-fun m!5251711 () Bool)

(assert (=> b!4511486 m!5251711))

(declare-fun m!5251713 () Bool)

(assert (=> b!4511487 m!5251713))

(assert (=> d!1387448 d!1387772))

(declare-fun b!4511488 () Bool)

(declare-fun e!2810547 () Unit!93482)

(declare-fun lt!1689694 () Unit!93482)

(assert (=> b!4511488 (= e!2810547 lt!1689694)))

(declare-fun lt!1689700 () Unit!93482)

(assert (=> b!4511488 (= lt!1689700 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689454) key!3287))))

(assert (=> b!4511488 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689454) key!3287))))

(declare-fun lt!1689698 () Unit!93482)

(assert (=> b!4511488 (= lt!1689698 lt!1689700)))

(assert (=> b!4511488 (= lt!1689694 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689454) key!3287))))

(declare-fun call!314156 () Bool)

(assert (=> b!4511488 call!314156))

(declare-fun b!4511489 () Bool)

(declare-fun e!2810545 () List!50725)

(assert (=> b!4511489 (= e!2810545 (keys!17562 lt!1689454))))

(declare-fun b!4511490 () Bool)

(declare-fun e!2810546 () Unit!93482)

(declare-fun Unit!93649 () Unit!93482)

(assert (=> b!4511490 (= e!2810546 Unit!93649)))

(declare-fun b!4511491 () Bool)

(assert (=> b!4511491 (= e!2810545 (getKeysList!449 (toList!4295 lt!1689454)))))

(declare-fun b!4511492 () Bool)

(declare-fun e!2810549 () Bool)

(assert (=> b!4511492 (= e!2810549 (not (contains!13303 (keys!17562 lt!1689454) key!3287)))))

(declare-fun b!4511493 () Bool)

(declare-fun e!2810548 () Bool)

(declare-fun e!2810544 () Bool)

(assert (=> b!4511493 (= e!2810548 e!2810544)))

(declare-fun res!1876646 () Bool)

(assert (=> b!4511493 (=> (not res!1876646) (not e!2810544))))

(assert (=> b!4511493 (= res!1876646 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689454) key!3287)))))

(declare-fun b!4511494 () Bool)

(assert (=> b!4511494 (= e!2810547 e!2810546)))

(declare-fun c!769573 () Bool)

(assert (=> b!4511494 (= c!769573 call!314156)))

(declare-fun b!4511495 () Bool)

(assert (=> b!4511495 false))

(declare-fun lt!1689695 () Unit!93482)

(declare-fun lt!1689696 () Unit!93482)

(assert (=> b!4511495 (= lt!1689695 lt!1689696)))

(assert (=> b!4511495 (containsKey!1736 (toList!4295 lt!1689454) key!3287)))

(assert (=> b!4511495 (= lt!1689696 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689454) key!3287))))

(declare-fun Unit!93650 () Unit!93482)

(assert (=> b!4511495 (= e!2810546 Unit!93650)))

(declare-fun b!4511496 () Bool)

(assert (=> b!4511496 (= e!2810544 (contains!13303 (keys!17562 lt!1689454) key!3287))))

(declare-fun d!1387774 () Bool)

(assert (=> d!1387774 e!2810548))

(declare-fun res!1876645 () Bool)

(assert (=> d!1387774 (=> res!1876645 e!2810548)))

(assert (=> d!1387774 (= res!1876645 e!2810549)))

(declare-fun res!1876647 () Bool)

(assert (=> d!1387774 (=> (not res!1876647) (not e!2810549))))

(declare-fun lt!1689701 () Bool)

(assert (=> d!1387774 (= res!1876647 (not lt!1689701))))

(declare-fun lt!1689697 () Bool)

(assert (=> d!1387774 (= lt!1689701 lt!1689697)))

(declare-fun lt!1689699 () Unit!93482)

(assert (=> d!1387774 (= lt!1689699 e!2810547)))

(declare-fun c!769571 () Bool)

(assert (=> d!1387774 (= c!769571 lt!1689697)))

(assert (=> d!1387774 (= lt!1689697 (containsKey!1736 (toList!4295 lt!1689454) key!3287))))

(assert (=> d!1387774 (= (contains!13299 lt!1689454 key!3287) lt!1689701)))

(declare-fun bm!314151 () Bool)

(assert (=> bm!314151 (= call!314156 (contains!13303 e!2810545 key!3287))))

(declare-fun c!769572 () Bool)

(assert (=> bm!314151 (= c!769572 c!769571)))

(assert (= (and d!1387774 c!769571) b!4511488))

(assert (= (and d!1387774 (not c!769571)) b!4511494))

(assert (= (and b!4511494 c!769573) b!4511495))

(assert (= (and b!4511494 (not c!769573)) b!4511490))

(assert (= (or b!4511488 b!4511494) bm!314151))

(assert (= (and bm!314151 c!769572) b!4511491))

(assert (= (and bm!314151 (not c!769572)) b!4511489))

(assert (= (and d!1387774 res!1876647) b!4511492))

(assert (= (and d!1387774 (not res!1876645)) b!4511493))

(assert (= (and b!4511493 res!1876646) b!4511496))

(declare-fun m!5251715 () Bool)

(assert (=> d!1387774 m!5251715))

(assert (=> b!4511496 m!5250951))

(assert (=> b!4511496 m!5250951))

(declare-fun m!5251717 () Bool)

(assert (=> b!4511496 m!5251717))

(assert (=> b!4511495 m!5251715))

(declare-fun m!5251719 () Bool)

(assert (=> b!4511495 m!5251719))

(declare-fun m!5251721 () Bool)

(assert (=> b!4511488 m!5251721))

(declare-fun m!5251723 () Bool)

(assert (=> b!4511488 m!5251723))

(assert (=> b!4511488 m!5251723))

(declare-fun m!5251725 () Bool)

(assert (=> b!4511488 m!5251725))

(declare-fun m!5251727 () Bool)

(assert (=> b!4511488 m!5251727))

(assert (=> b!4511489 m!5250951))

(assert (=> b!4511491 m!5251661))

(assert (=> b!4511493 m!5251723))

(assert (=> b!4511493 m!5251723))

(assert (=> b!4511493 m!5251725))

(assert (=> b!4511492 m!5250951))

(assert (=> b!4511492 m!5250951))

(assert (=> b!4511492 m!5251717))

(declare-fun m!5251729 () Bool)

(assert (=> bm!314151 m!5251729))

(assert (=> d!1387540 d!1387774))

(declare-fun b!4511583 () Bool)

(declare-fun e!2810606 () Unit!93482)

(declare-fun Unit!93651 () Unit!93482)

(assert (=> b!4511583 (= e!2810606 Unit!93651)))

(declare-fun lt!1689773 () Unit!93482)

(assert (=> b!4511583 (= lt!1689773 (lemmaInGetKeysListThenContainsKey!448 (t!357684 (toList!4295 lt!1689046)) (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(declare-fun call!314173 () Bool)

(assert (=> b!4511583 call!314173))

(declare-fun lt!1689788 () Unit!93482)

(assert (=> b!4511583 (= lt!1689788 lt!1689773)))

(assert (=> b!4511583 false))

(declare-fun b!4511584 () Bool)

(declare-fun e!2810610 () List!50722)

(declare-fun e!2810608 () List!50722)

(assert (=> b!4511584 (= e!2810610 e!2810608)))

(declare-fun c!769600 () Bool)

(assert (=> b!4511584 (= c!769600 (and ((_ is Cons!50598) (toList!4295 lt!1689046)) (not (= (_1!28799 (h!56435 (toList!4295 lt!1689046))) key!3287))))))

(declare-fun b!4511585 () Bool)

(declare-fun res!1876685 () Bool)

(declare-fun e!2810613 () Bool)

(assert (=> b!4511585 (=> (not res!1876685) (not e!2810613))))

(declare-fun lt!1689777 () List!50722)

(assert (=> b!4511585 (= res!1876685 (= (content!8311 (getKeysList!449 lt!1689777)) ((_ map and) (content!8311 (getKeysList!449 (toList!4295 lt!1689046))) ((_ map not) (store ((as const (Array K!12000 Bool)) false) key!3287 true)))))))

(declare-fun b!4511586 () Bool)

(declare-fun e!2810607 () Unit!93482)

(declare-fun Unit!93652 () Unit!93482)

(assert (=> b!4511586 (= e!2810607 Unit!93652)))

(declare-fun b!4511587 () Bool)

(declare-fun e!2810609 () Bool)

(assert (=> b!4511587 (= e!2810613 e!2810609)))

(declare-fun c!769602 () Bool)

(assert (=> b!4511587 (= c!769602 (containsKey!1736 (toList!4295 lt!1689046) key!3287))))

(declare-fun bm!314167 () Bool)

(declare-fun call!314177 () (InoxSet tuple2!51010))

(assert (=> bm!314167 (= call!314177 (content!8309 (toList!4295 lt!1689046)))))

(declare-fun bm!314168 () Bool)

(declare-fun call!314176 () (InoxSet tuple2!51010))

(assert (=> bm!314168 (= call!314176 (content!8309 (t!357684 (toList!4295 lt!1689046))))))

(declare-fun bm!314169 () Bool)

(declare-fun c!769605 () Bool)

(declare-fun lt!1689784 () K!12000)

(assert (=> bm!314169 (= call!314173 (containsKey!1736 (t!357684 (toList!4295 lt!1689046)) (ite c!769605 lt!1689784 (_1!28799 (h!56435 (toList!4295 lt!1689046))))))))

(declare-fun b!4511588 () Bool)

(assert (=> b!4511588 (= e!2810608 Nil!50598)))

(declare-fun bm!314170 () Bool)

(declare-fun call!314174 () (InoxSet tuple2!51010))

(assert (=> bm!314170 (= call!314174 (content!8309 (toList!4295 lt!1689046)))))

(declare-fun b!4511589 () Bool)

(declare-fun get!16557 (Option!11081) V!12246)

(assert (=> b!4511589 (= call!314176 ((_ map and) call!314177 ((_ map not) (store ((as const (Array tuple2!51010 Bool)) false) (tuple2!51011 key!3287 (get!16557 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))) true))))))

(declare-fun lt!1689772 () Unit!93482)

(declare-fun e!2810605 () Unit!93482)

(assert (=> b!4511589 (= lt!1689772 e!2810605)))

(declare-fun c!769603 () Bool)

(assert (=> b!4511589 (= c!769603 (contains!13304 (t!357684 (toList!4295 lt!1689046)) (tuple2!51011 key!3287 (get!16557 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287)))))))

(declare-fun e!2810612 () Unit!93482)

(declare-fun Unit!93653 () Unit!93482)

(assert (=> b!4511589 (= e!2810612 Unit!93653)))

(declare-fun call!314175 () (InoxSet tuple2!51010))

(declare-fun b!4511590 () Bool)

(assert (=> b!4511590 (= e!2810609 (= call!314175 ((_ map and) call!314174 ((_ map not) (store ((as const (Array tuple2!51010 Bool)) false) (tuple2!51011 key!3287 (get!16557 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))) true)))))))

(assert (=> b!4511590 (containsKey!1736 (toList!4295 lt!1689046) key!3287)))

(declare-fun lt!1689780 () Unit!93482)

(assert (=> b!4511590 (= lt!1689780 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689046) key!3287))))

(assert (=> b!4511590 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))))

(declare-fun lt!1689787 () Unit!93482)

(assert (=> b!4511590 (= lt!1689787 lt!1689780)))

(declare-fun b!4511591 () Bool)

(declare-fun Unit!93654 () Unit!93482)

(assert (=> b!4511591 (= e!2810605 Unit!93654)))

(declare-fun b!4511592 () Bool)

(declare-fun res!1876686 () Bool)

(assert (=> b!4511592 (=> (not res!1876686) (not e!2810613))))

(assert (=> b!4511592 (= res!1876686 (not (containsKey!1736 lt!1689777 key!3287)))))

(declare-fun b!4511593 () Bool)

(assert (=> b!4511593 (= e!2810609 (= call!314175 call!314174))))

(declare-fun b!4511594 () Bool)

(assert (=> b!4511594 (= e!2810610 (t!357684 (toList!4295 lt!1689046)))))

(declare-fun c!769601 () Bool)

(declare-fun call!314172 () Bool)

(assert (=> b!4511594 (= c!769601 call!314172)))

(declare-fun lt!1689781 () Unit!93482)

(assert (=> b!4511594 (= lt!1689781 e!2810612)))

(declare-fun b!4511595 () Bool)

(declare-fun lt!1689774 () Unit!93482)

(assert (=> b!4511595 (= lt!1689774 e!2810607)))

(declare-fun c!769604 () Bool)

(assert (=> b!4511595 (= c!769604 call!314172)))

(declare-fun lt!1689782 () Unit!93482)

(assert (=> b!4511595 (= lt!1689782 e!2810606)))

(declare-fun c!769607 () Bool)

(assert (=> b!4511595 (= c!769607 (contains!13303 (getKeysList!449 (t!357684 (toList!4295 lt!1689046))) (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(declare-fun lt!1689771 () List!50722)

(declare-fun $colon$colon!921 (List!50722 tuple2!51010) List!50722)

(assert (=> b!4511595 (= lt!1689771 ($colon$colon!921 (removePresrvNoDuplicatedKeys!125 (t!357684 (toList!4295 lt!1689046)) key!3287) (h!56435 (toList!4295 lt!1689046))))))

(assert (=> b!4511595 (= e!2810608 lt!1689771)))

(declare-fun b!4511596 () Bool)

(declare-fun Unit!93655 () Unit!93482)

(assert (=> b!4511596 (= e!2810605 Unit!93655)))

(declare-fun lt!1689778 () V!12246)

(assert (=> b!4511596 (= lt!1689778 (get!16557 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287)))))

(assert (=> b!4511596 (= lt!1689784 key!3287)))

(declare-fun lt!1689783 () K!12000)

(assert (=> b!4511596 (= lt!1689783 key!3287)))

(declare-fun lt!1689775 () Unit!93482)

(declare-fun lemmaContainsTupleThenContainsKey!54 (List!50722 K!12000 V!12246) Unit!93482)

(assert (=> b!4511596 (= lt!1689775 (lemmaContainsTupleThenContainsKey!54 (t!357684 (toList!4295 lt!1689046)) lt!1689784 (get!16557 (getValueByKey!1061 (toList!4295 lt!1689046) key!3287))))))

(assert (=> b!4511596 call!314173))

(declare-fun lt!1689786 () Unit!93482)

(assert (=> b!4511596 (= lt!1689786 lt!1689775)))

(assert (=> b!4511596 false))

(declare-fun bm!314171 () Bool)

(assert (=> bm!314171 (= call!314175 (content!8309 lt!1689777))))

(declare-fun d!1387776 () Bool)

(assert (=> d!1387776 e!2810613))

(declare-fun res!1876684 () Bool)

(assert (=> d!1387776 (=> (not res!1876684) (not e!2810613))))

(assert (=> d!1387776 (= res!1876684 (invariantList!1001 lt!1689777))))

(assert (=> d!1387776 (= lt!1689777 e!2810610)))

(assert (=> d!1387776 (= c!769605 (and ((_ is Cons!50598) (toList!4295 lt!1689046)) (= (_1!28799 (h!56435 (toList!4295 lt!1689046))) key!3287)))))

(assert (=> d!1387776 (invariantList!1001 (toList!4295 lt!1689046))))

(assert (=> d!1387776 (= (removePresrvNoDuplicatedKeys!125 (toList!4295 lt!1689046) key!3287) lt!1689777)))

(declare-fun b!4511597 () Bool)

(assert (=> b!4511597 (= call!314176 call!314177)))

(declare-fun Unit!93656 () Unit!93482)

(assert (=> b!4511597 (= e!2810612 Unit!93656)))

(declare-fun bm!314172 () Bool)

(declare-fun e!2810611 () List!50722)

(assert (=> bm!314172 (= call!314172 (containsKey!1736 e!2810611 (ite c!769605 key!3287 (_1!28799 (h!56435 (toList!4295 lt!1689046))))))))

(declare-fun c!769606 () Bool)

(assert (=> bm!314172 (= c!769606 c!769605)))

(declare-fun b!4511598 () Bool)

(declare-fun Unit!93657 () Unit!93482)

(assert (=> b!4511598 (= e!2810607 Unit!93657)))

(declare-fun lt!1689785 () List!50722)

(assert (=> b!4511598 (= lt!1689785 (removePresrvNoDuplicatedKeys!125 (t!357684 (toList!4295 lt!1689046)) key!3287))))

(declare-fun lt!1689779 () Unit!93482)

(assert (=> b!4511598 (= lt!1689779 (lemmaInListThenGetKeysListContains!445 lt!1689785 (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(assert (=> b!4511598 (contains!13303 (getKeysList!449 lt!1689785) (_1!28799 (h!56435 (toList!4295 lt!1689046))))))

(declare-fun lt!1689776 () Unit!93482)

(assert (=> b!4511598 (= lt!1689776 lt!1689779)))

(assert (=> b!4511598 false))

(declare-fun b!4511599 () Bool)

(assert (=> b!4511599 (= e!2810611 (removePresrvNoDuplicatedKeys!125 (t!357684 (toList!4295 lt!1689046)) key!3287))))

(declare-fun b!4511600 () Bool)

(declare-fun Unit!93658 () Unit!93482)

(assert (=> b!4511600 (= e!2810606 Unit!93658)))

(declare-fun b!4511601 () Bool)

(assert (=> b!4511601 (= e!2810611 (toList!4295 lt!1689046))))

(assert (= (and d!1387776 c!769605) b!4511594))

(assert (= (and d!1387776 (not c!769605)) b!4511584))

(assert (= (and b!4511594 c!769601) b!4511589))

(assert (= (and b!4511594 (not c!769601)) b!4511597))

(assert (= (and b!4511589 c!769603) b!4511596))

(assert (= (and b!4511589 (not c!769603)) b!4511591))

(assert (= (or b!4511589 b!4511597) bm!314168))

(assert (= (or b!4511589 b!4511597) bm!314167))

(assert (= (and b!4511584 c!769600) b!4511595))

(assert (= (and b!4511584 (not c!769600)) b!4511588))

(assert (= (and b!4511595 c!769607) b!4511583))

(assert (= (and b!4511595 (not c!769607)) b!4511600))

(assert (= (and b!4511595 c!769604) b!4511598))

(assert (= (and b!4511595 (not c!769604)) b!4511586))

(assert (= (or b!4511596 b!4511583) bm!314169))

(assert (= (or b!4511594 b!4511595) bm!314172))

(assert (= (and bm!314172 c!769606) b!4511601))

(assert (= (and bm!314172 (not c!769606)) b!4511599))

(assert (= (and d!1387776 res!1876684) b!4511592))

(assert (= (and b!4511592 res!1876686) b!4511585))

(assert (= (and b!4511585 res!1876685) b!4511587))

(assert (= (and b!4511587 c!769602) b!4511590))

(assert (= (and b!4511587 (not c!769602)) b!4511593))

(assert (= (or b!4511590 b!4511593) bm!314171))

(assert (= (or b!4511590 b!4511593) bm!314170))

(declare-fun m!5251793 () Bool)

(assert (=> bm!314171 m!5251793))

(declare-fun m!5251795 () Bool)

(assert (=> bm!314172 m!5251795))

(assert (=> b!4511587 m!5250631))

(declare-fun m!5251797 () Bool)

(assert (=> bm!314168 m!5251797))

(assert (=> b!4511596 m!5250641))

(assert (=> b!4511596 m!5250641))

(declare-fun m!5251799 () Bool)

(assert (=> b!4511596 m!5251799))

(assert (=> b!4511596 m!5251799))

(declare-fun m!5251801 () Bool)

(assert (=> b!4511596 m!5251801))

(declare-fun m!5251803 () Bool)

(assert (=> bm!314169 m!5251803))

(assert (=> b!4511585 m!5250949))

(assert (=> b!4511585 m!5250647))

(declare-fun m!5251805 () Bool)

(assert (=> b!4511585 m!5251805))

(declare-fun m!5251807 () Bool)

(assert (=> b!4511585 m!5251807))

(assert (=> b!4511585 m!5251805))

(assert (=> b!4511585 m!5250647))

(declare-fun m!5251809 () Bool)

(assert (=> b!4511585 m!5251809))

(declare-fun m!5251811 () Bool)

(assert (=> b!4511583 m!5251811))

(assert (=> b!4511590 m!5250641))

(assert (=> b!4511590 m!5250639))

(assert (=> b!4511590 m!5250641))

(assert (=> b!4511590 m!5250643))

(assert (=> b!4511590 m!5250631))

(assert (=> b!4511590 m!5250641))

(assert (=> b!4511590 m!5251799))

(declare-fun m!5251813 () Bool)

(assert (=> b!4511590 m!5251813))

(declare-fun m!5251817 () Bool)

(assert (=> bm!314167 m!5251817))

(declare-fun m!5251819 () Bool)

(assert (=> d!1387776 m!5251819))

(assert (=> d!1387776 m!5251223))

(assert (=> b!4511589 m!5250641))

(assert (=> b!4511589 m!5250641))

(assert (=> b!4511589 m!5251799))

(assert (=> b!4511589 m!5251813))

(declare-fun m!5251833 () Bool)

(assert (=> b!4511589 m!5251833))

(declare-fun m!5251835 () Bool)

(assert (=> b!4511598 m!5251835))

(declare-fun m!5251837 () Bool)

(assert (=> b!4511598 m!5251837))

(declare-fun m!5251839 () Bool)

(assert (=> b!4511598 m!5251839))

(assert (=> b!4511598 m!5251839))

(declare-fun m!5251841 () Bool)

(assert (=> b!4511598 m!5251841))

(declare-fun m!5251843 () Bool)

(assert (=> b!4511592 m!5251843))

(assert (=> b!4511599 m!5251835))

(declare-fun m!5251847 () Bool)

(assert (=> b!4511595 m!5251847))

(assert (=> b!4511595 m!5251847))

(declare-fun m!5251849 () Bool)

(assert (=> b!4511595 m!5251849))

(assert (=> b!4511595 m!5251835))

(assert (=> b!4511595 m!5251835))

(declare-fun m!5251851 () Bool)

(assert (=> b!4511595 m!5251851))

(assert (=> bm!314170 m!5251817))

(assert (=> d!1387540 d!1387776))

(declare-fun b!4511615 () Bool)

(declare-fun e!2810622 () Unit!93482)

(declare-fun lt!1689790 () Unit!93482)

(assert (=> b!4511615 (= e!2810622 lt!1689790)))

(declare-fun lt!1689797 () Unit!93482)

(assert (=> b!4511615 (= lt!1689797 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(assert (=> b!4511615 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(declare-fun lt!1689795 () Unit!93482)

(assert (=> b!4511615 (= lt!1689795 lt!1689797)))

(assert (=> b!4511615 (= lt!1689790 (lemmaInListThenGetKeysListContains!445 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(declare-fun call!314178 () Bool)

(assert (=> b!4511615 call!314178))

(declare-fun b!4511616 () Bool)

(declare-fun e!2810620 () List!50725)

(assert (=> b!4511616 (= e!2810620 (keys!17562 (extractMap!1200 (toList!4296 lt!1689057))))))

(declare-fun b!4511617 () Bool)

(declare-fun e!2810621 () Unit!93482)

(declare-fun Unit!93670 () Unit!93482)

(assert (=> b!4511617 (= e!2810621 Unit!93670)))

(declare-fun b!4511618 () Bool)

(assert (=> b!4511618 (= e!2810620 (getKeysList!449 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057)))))))

(declare-fun b!4511619 () Bool)

(declare-fun e!2810626 () Bool)

(assert (=> b!4511619 (= e!2810626 (not (contains!13303 (keys!17562 (extractMap!1200 (toList!4296 lt!1689057))) key!3287)))))

(declare-fun b!4511620 () Bool)

(declare-fun e!2810625 () Bool)

(declare-fun e!2810619 () Bool)

(assert (=> b!4511620 (= e!2810625 e!2810619)))

(declare-fun res!1876697 () Bool)

(assert (=> b!4511620 (=> (not res!1876697) (not e!2810619))))

(assert (=> b!4511620 (= res!1876697 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287)))))

(declare-fun b!4511621 () Bool)

(assert (=> b!4511621 (= e!2810622 e!2810621)))

(declare-fun c!769610 () Bool)

(assert (=> b!4511621 (= c!769610 call!314178)))

(declare-fun b!4511622 () Bool)

(assert (=> b!4511622 false))

(declare-fun lt!1689791 () Unit!93482)

(declare-fun lt!1689793 () Unit!93482)

(assert (=> b!4511622 (= lt!1689791 lt!1689793)))

(assert (=> b!4511622 (containsKey!1736 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287)))

(assert (=> b!4511622 (= lt!1689793 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(declare-fun Unit!93671 () Unit!93482)

(assert (=> b!4511622 (= e!2810621 Unit!93671)))

(declare-fun b!4511623 () Bool)

(assert (=> b!4511623 (= e!2810619 (contains!13303 (keys!17562 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(declare-fun d!1387804 () Bool)

(assert (=> d!1387804 e!2810625))

(declare-fun res!1876694 () Bool)

(assert (=> d!1387804 (=> res!1876694 e!2810625)))

(assert (=> d!1387804 (= res!1876694 e!2810626)))

(declare-fun res!1876698 () Bool)

(assert (=> d!1387804 (=> (not res!1876698) (not e!2810626))))

(declare-fun lt!1689798 () Bool)

(assert (=> d!1387804 (= res!1876698 (not lt!1689798))))

(declare-fun lt!1689794 () Bool)

(assert (=> d!1387804 (= lt!1689798 lt!1689794)))

(declare-fun lt!1689796 () Unit!93482)

(assert (=> d!1387804 (= lt!1689796 e!2810622)))

(declare-fun c!769608 () Bool)

(assert (=> d!1387804 (= c!769608 lt!1689794)))

(assert (=> d!1387804 (= lt!1689794 (containsKey!1736 (toList!4295 (extractMap!1200 (toList!4296 lt!1689057))) key!3287))))

(assert (=> d!1387804 (= (contains!13299 (extractMap!1200 (toList!4296 lt!1689057)) key!3287) lt!1689798)))

(declare-fun bm!314173 () Bool)

(assert (=> bm!314173 (= call!314178 (contains!13303 e!2810620 key!3287))))

(declare-fun c!769609 () Bool)

(assert (=> bm!314173 (= c!769609 c!769608)))

(assert (= (and d!1387804 c!769608) b!4511615))

(assert (= (and d!1387804 (not c!769608)) b!4511621))

(assert (= (and b!4511621 c!769610) b!4511622))

(assert (= (and b!4511621 (not c!769610)) b!4511617))

(assert (= (or b!4511615 b!4511621) bm!314173))

(assert (= (and bm!314173 c!769609) b!4511618))

(assert (= (and bm!314173 (not c!769609)) b!4511616))

(assert (= (and d!1387804 res!1876698) b!4511619))

(assert (= (and d!1387804 (not res!1876694)) b!4511620))

(assert (= (and b!4511620 res!1876697) b!4511623))

(declare-fun m!5251869 () Bool)

(assert (=> d!1387804 m!5251869))

(assert (=> b!4511623 m!5250241))

(assert (=> b!4511623 m!5251081))

(assert (=> b!4511623 m!5251081))

(declare-fun m!5251873 () Bool)

(assert (=> b!4511623 m!5251873))

(assert (=> b!4511622 m!5251869))

(declare-fun m!5251875 () Bool)

(assert (=> b!4511622 m!5251875))

(declare-fun m!5251877 () Bool)

(assert (=> b!4511615 m!5251877))

(declare-fun m!5251879 () Bool)

(assert (=> b!4511615 m!5251879))

(assert (=> b!4511615 m!5251879))

(declare-fun m!5251881 () Bool)

(assert (=> b!4511615 m!5251881))

(declare-fun m!5251883 () Bool)

(assert (=> b!4511615 m!5251883))

(assert (=> b!4511616 m!5250241))

(assert (=> b!4511616 m!5251081))

(declare-fun m!5251885 () Bool)

(assert (=> b!4511618 m!5251885))

(assert (=> b!4511620 m!5251879))

(assert (=> b!4511620 m!5251879))

(assert (=> b!4511620 m!5251881))

(assert (=> b!4511619 m!5250241))

(assert (=> b!4511619 m!5251081))

(assert (=> b!4511619 m!5251081))

(assert (=> b!4511619 m!5251873))

(declare-fun m!5251887 () Bool)

(assert (=> bm!314173 m!5251887))

(assert (=> d!1387450 d!1387804))

(assert (=> d!1387450 d!1387428))

(declare-fun d!1387812 () Bool)

(assert (=> d!1387812 (contains!13299 (extractMap!1200 (toList!4296 lt!1689057)) key!3287)))

(assert (=> d!1387812 true))

(declare-fun _$34!655 () Unit!93482)

(assert (=> d!1387812 (= (choose!29316 lt!1689057 key!3287 hashF!1107) _$34!655)))

(declare-fun bs!847488 () Bool)

(assert (= bs!847488 d!1387812))

(assert (=> bs!847488 m!5250241))

(assert (=> bs!847488 m!5250241))

(assert (=> bs!847488 m!5250625))

(assert (=> d!1387450 d!1387812))

(declare-fun d!1387830 () Bool)

(declare-fun res!1876709 () Bool)

(declare-fun e!2810642 () Bool)

(assert (=> d!1387830 (=> res!1876709 e!2810642)))

(assert (=> d!1387830 (= res!1876709 ((_ is Nil!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1387830 (= (forall!10223 (toList!4296 lt!1689057) lambda!170565) e!2810642)))

(declare-fun b!4511646 () Bool)

(declare-fun e!2810643 () Bool)

(assert (=> b!4511646 (= e!2810642 e!2810643)))

(declare-fun res!1876710 () Bool)

(assert (=> b!4511646 (=> (not res!1876710) (not e!2810643))))

(assert (=> b!4511646 (= res!1876710 (dynLambda!21139 lambda!170565 (h!56436 (toList!4296 lt!1689057))))))

(declare-fun b!4511647 () Bool)

(assert (=> b!4511647 (= e!2810643 (forall!10223 (t!357685 (toList!4296 lt!1689057)) lambda!170565))))

(assert (= (and d!1387830 (not res!1876709)) b!4511646))

(assert (= (and b!4511646 res!1876710) b!4511647))

(declare-fun b_lambda!153805 () Bool)

(assert (=> (not b_lambda!153805) (not b!4511646)))

(declare-fun m!5251915 () Bool)

(assert (=> b!4511646 m!5251915))

(declare-fun m!5251917 () Bool)

(assert (=> b!4511647 m!5251917))

(assert (=> d!1387450 d!1387830))

(declare-fun d!1387832 () Bool)

(assert (=> d!1387832 (= (isEmpty!28637 (toList!4296 lm!1477)) ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387522 d!1387832))

(declare-fun d!1387834 () Bool)

(declare-fun res!1876713 () Bool)

(declare-fun e!2810646 () Bool)

(assert (=> d!1387834 (=> res!1876713 e!2810646)))

(declare-fun e!2810645 () Bool)

(assert (=> d!1387834 (= res!1876713 e!2810645)))

(declare-fun res!1876711 () Bool)

(assert (=> d!1387834 (=> (not res!1876711) (not e!2810645))))

(assert (=> d!1387834 (= res!1876711 ((_ is Cons!50599) (t!357685 (toList!4296 lt!1689057))))))

(assert (=> d!1387834 (= (containsKeyBiggerList!124 (t!357685 (toList!4296 lt!1689057)) key!3287) e!2810646)))

(declare-fun b!4511648 () Bool)

(assert (=> b!4511648 (= e!2810645 (containsKey!1732 (_2!28800 (h!56436 (t!357685 (toList!4296 lt!1689057)))) key!3287))))

(declare-fun b!4511649 () Bool)

(declare-fun e!2810644 () Bool)

(assert (=> b!4511649 (= e!2810646 e!2810644)))

(declare-fun res!1876712 () Bool)

(assert (=> b!4511649 (=> (not res!1876712) (not e!2810644))))

(assert (=> b!4511649 (= res!1876712 ((_ is Cons!50599) (t!357685 (toList!4296 lt!1689057))))))

(declare-fun b!4511650 () Bool)

(assert (=> b!4511650 (= e!2810644 (containsKeyBiggerList!124 (t!357685 (t!357685 (toList!4296 lt!1689057))) key!3287))))

(assert (= (and d!1387834 res!1876711) b!4511648))

(assert (= (and d!1387834 (not res!1876713)) b!4511649))

(assert (= (and b!4511649 res!1876712) b!4511650))

(declare-fun m!5251919 () Bool)

(assert (=> b!4511648 m!5251919))

(declare-fun m!5251921 () Bool)

(assert (=> b!4511650 m!5251921))

(assert (=> b!4511129 d!1387834))

(declare-fun lt!1689825 () Bool)

(declare-fun d!1387836 () Bool)

(assert (=> d!1387836 (= lt!1689825 (select (content!8308 (toList!4296 lm!1477)) (tuple2!51013 hash!344 lt!1689047)))))

(declare-fun e!2810647 () Bool)

(assert (=> d!1387836 (= lt!1689825 e!2810647)))

(declare-fun res!1876714 () Bool)

(assert (=> d!1387836 (=> (not res!1876714) (not e!2810647))))

(assert (=> d!1387836 (= res!1876714 ((_ is Cons!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387836 (= (contains!13301 (toList!4296 lm!1477) (tuple2!51013 hash!344 lt!1689047)) lt!1689825)))

(declare-fun b!4511651 () Bool)

(declare-fun e!2810648 () Bool)

(assert (=> b!4511651 (= e!2810647 e!2810648)))

(declare-fun res!1876715 () Bool)

(assert (=> b!4511651 (=> res!1876715 e!2810648)))

(assert (=> b!4511651 (= res!1876715 (= (h!56436 (toList!4296 lm!1477)) (tuple2!51013 hash!344 lt!1689047)))))

(declare-fun b!4511652 () Bool)

(assert (=> b!4511652 (= e!2810648 (contains!13301 (t!357685 (toList!4296 lm!1477)) (tuple2!51013 hash!344 lt!1689047)))))

(assert (= (and d!1387836 res!1876714) b!4511651))

(assert (= (and b!4511651 (not res!1876715)) b!4511652))

(assert (=> d!1387836 m!5250433))

(declare-fun m!5251923 () Bool)

(assert (=> d!1387836 m!5251923))

(declare-fun m!5251925 () Bool)

(assert (=> b!4511652 m!5251925))

(assert (=> d!1387378 d!1387836))

(declare-fun d!1387838 () Bool)

(assert (=> d!1387838 (contains!13301 (toList!4296 lm!1477) (tuple2!51013 hash!344 lt!1689047))))

(assert (=> d!1387838 true))

(declare-fun _$14!1140 () Unit!93482)

(assert (=> d!1387838 (= (choose!29313 (toList!4296 lm!1477) hash!344 lt!1689047) _$14!1140)))

(declare-fun bs!847495 () Bool)

(assert (= bs!847495 d!1387838))

(assert (=> bs!847495 m!5250363))

(assert (=> d!1387378 d!1387838))

(assert (=> d!1387378 d!1387720))

(declare-fun d!1387840 () Bool)

(assert (=> d!1387840 (= (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287)) (not (isEmpty!28639 (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))))

(declare-fun bs!847497 () Bool)

(assert (= bs!847497 d!1387840))

(assert (=> bs!847497 m!5250607))

(declare-fun m!5251927 () Bool)

(assert (=> bs!847497 m!5251927))

(assert (=> b!4510971 d!1387840))

(declare-fun b!4511656 () Bool)

(declare-fun e!2810650 () Option!11081)

(assert (=> b!4511656 (= e!2810650 None!11080)))

(declare-fun d!1387842 () Bool)

(declare-fun c!769617 () Bool)

(assert (=> d!1387842 (= c!769617 (and ((_ is Cons!50598) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) key!3287)))))

(declare-fun e!2810649 () Option!11081)

(assert (=> d!1387842 (= (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) e!2810649)))

(declare-fun b!4511655 () Bool)

(assert (=> b!4511655 (= e!2810650 (getValueByKey!1061 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(declare-fun b!4511654 () Bool)

(assert (=> b!4511654 (= e!2810649 e!2810650)))

(declare-fun c!769618 () Bool)

(assert (=> b!4511654 (= c!769618 (and ((_ is Cons!50598) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (not (= (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) key!3287))))))

(declare-fun b!4511653 () Bool)

(assert (=> b!4511653 (= e!2810649 (Some!11080 (_2!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))))

(assert (= (and d!1387842 c!769617) b!4511653))

(assert (= (and d!1387842 (not c!769617)) b!4511654))

(assert (= (and b!4511654 c!769618) b!4511655))

(assert (= (and b!4511654 (not c!769618)) b!4511656))

(declare-fun m!5251929 () Bool)

(assert (=> b!4511655 m!5251929))

(assert (=> b!4510971 d!1387842))

(assert (=> d!1387536 d!1387534))

(declare-fun d!1387844 () Bool)

(assert (=> d!1387844 (containsKeyBiggerList!124 (toList!4296 lt!1689057) key!3287)))

(assert (=> d!1387844 true))

(declare-fun _$33!643 () Unit!93482)

(assert (=> d!1387844 (= (choose!29321 lt!1689057 key!3287 hashF!1107) _$33!643)))

(declare-fun bs!847507 () Bool)

(assert (= bs!847507 d!1387844))

(assert (=> bs!847507 m!5250233))

(assert (=> d!1387536 d!1387844))

(declare-fun d!1387846 () Bool)

(declare-fun res!1876716 () Bool)

(declare-fun e!2810651 () Bool)

(assert (=> d!1387846 (=> res!1876716 e!2810651)))

(assert (=> d!1387846 (= res!1876716 ((_ is Nil!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1387846 (= (forall!10223 (toList!4296 lt!1689057) lambda!170661) e!2810651)))

(declare-fun b!4511657 () Bool)

(declare-fun e!2810652 () Bool)

(assert (=> b!4511657 (= e!2810651 e!2810652)))

(declare-fun res!1876717 () Bool)

(assert (=> b!4511657 (=> (not res!1876717) (not e!2810652))))

(assert (=> b!4511657 (= res!1876717 (dynLambda!21139 lambda!170661 (h!56436 (toList!4296 lt!1689057))))))

(declare-fun b!4511658 () Bool)

(assert (=> b!4511658 (= e!2810652 (forall!10223 (t!357685 (toList!4296 lt!1689057)) lambda!170661))))

(assert (= (and d!1387846 (not res!1876716)) b!4511657))

(assert (= (and b!4511657 res!1876717) b!4511658))

(declare-fun b_lambda!153807 () Bool)

(assert (=> (not b_lambda!153807) (not b!4511657)))

(declare-fun m!5251931 () Bool)

(assert (=> b!4511657 m!5251931))

(declare-fun m!5251933 () Bool)

(assert (=> b!4511658 m!5251933))

(assert (=> d!1387536 d!1387846))

(declare-fun d!1387848 () Bool)

(declare-fun res!1876720 () Bool)

(declare-fun e!2810655 () Bool)

(assert (=> d!1387848 (=> res!1876720 e!2810655)))

(declare-fun e!2810654 () Bool)

(assert (=> d!1387848 (= res!1876720 e!2810654)))

(declare-fun res!1876718 () Bool)

(assert (=> d!1387848 (=> (not res!1876718) (not e!2810654))))

(assert (=> d!1387848 (= res!1876718 ((_ is Cons!50599) (t!357685 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387848 (= (containsKeyBiggerList!124 (t!357685 (t!357685 (toList!4296 lm!1477))) key!3287) e!2810655)))

(declare-fun b!4511659 () Bool)

(assert (=> b!4511659 (= e!2810654 (containsKey!1732 (_2!28800 (h!56436 (t!357685 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(declare-fun b!4511660 () Bool)

(declare-fun e!2810653 () Bool)

(assert (=> b!4511660 (= e!2810655 e!2810653)))

(declare-fun res!1876719 () Bool)

(assert (=> b!4511660 (=> (not res!1876719) (not e!2810653))))

(assert (=> b!4511660 (= res!1876719 ((_ is Cons!50599) (t!357685 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun b!4511661 () Bool)

(assert (=> b!4511661 (= e!2810653 (containsKeyBiggerList!124 (t!357685 (t!357685 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(assert (= (and d!1387848 res!1876718) b!4511659))

(assert (= (and d!1387848 (not res!1876720)) b!4511660))

(assert (= (and b!4511660 res!1876719) b!4511661))

(declare-fun m!5251935 () Bool)

(assert (=> b!4511659 m!5251935))

(declare-fun m!5251937 () Bool)

(assert (=> b!4511661 m!5251937))

(assert (=> b!4511126 d!1387848))

(declare-fun b!4511663 () Bool)

(declare-fun e!2810656 () Option!11080)

(declare-fun e!2810657 () Option!11080)

(assert (=> b!4511663 (= e!2810656 e!2810657)))

(declare-fun c!769620 () Bool)

(assert (=> b!4511663 (= c!769620 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (not (= (_1!28800 (h!56436 (toList!4296 lm!1477))) hash!344))))))

(declare-fun b!4511662 () Bool)

(assert (=> b!4511662 (= e!2810656 (Some!11079 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(declare-fun b!4511664 () Bool)

(assert (=> b!4511664 (= e!2810657 (getValueByKey!1060 (t!357685 (toList!4296 lm!1477)) hash!344))))

(declare-fun d!1387850 () Bool)

(declare-fun c!769619 () Bool)

(assert (=> d!1387850 (= c!769619 (and ((_ is Cons!50599) (toList!4296 lm!1477)) (= (_1!28800 (h!56436 (toList!4296 lm!1477))) hash!344)))))

(assert (=> d!1387850 (= (getValueByKey!1060 (toList!4296 lm!1477) hash!344) e!2810656)))

(declare-fun b!4511665 () Bool)

(assert (=> b!4511665 (= e!2810657 None!11079)))

(assert (= (and d!1387850 c!769619) b!4511662))

(assert (= (and d!1387850 (not c!769619)) b!4511663))

(assert (= (and b!4511663 c!769620) b!4511664))

(assert (= (and b!4511663 (not c!769620)) b!4511665))

(declare-fun m!5251955 () Bool)

(assert (=> b!4511664 m!5251955))

(assert (=> b!4510842 d!1387850))

(declare-fun d!1387852 () Bool)

(declare-fun res!1876721 () Bool)

(declare-fun e!2810658 () Bool)

(assert (=> d!1387852 (=> res!1876721 e!2810658)))

(assert (=> d!1387852 (= res!1876721 ((_ is Nil!50598) (toList!4295 lt!1689048)))))

(assert (=> d!1387852 (= (forall!10225 (toList!4295 lt!1689048) (ite c!769486 lambda!170652 lambda!170654)) e!2810658)))

(declare-fun b!4511666 () Bool)

(declare-fun e!2810659 () Bool)

(assert (=> b!4511666 (= e!2810658 e!2810659)))

(declare-fun res!1876722 () Bool)

(assert (=> b!4511666 (=> (not res!1876722) (not e!2810659))))

(assert (=> b!4511666 (= res!1876722 (dynLambda!21140 (ite c!769486 lambda!170652 lambda!170654) (h!56435 (toList!4295 lt!1689048))))))

(declare-fun b!4511667 () Bool)

(assert (=> b!4511667 (= e!2810659 (forall!10225 (t!357684 (toList!4295 lt!1689048)) (ite c!769486 lambda!170652 lambda!170654)))))

(assert (= (and d!1387852 (not res!1876721)) b!4511666))

(assert (= (and b!4511666 res!1876722) b!4511667))

(declare-fun b_lambda!153809 () Bool)

(assert (=> (not b_lambda!153809) (not b!4511666)))

(declare-fun m!5251973 () Bool)

(assert (=> b!4511666 m!5251973))

(declare-fun m!5251975 () Bool)

(assert (=> b!4511667 m!5251975))

(assert (=> bm!314118 d!1387852))

(declare-fun d!1387856 () Bool)

(declare-fun c!769622 () Bool)

(assert (=> d!1387856 (= c!769622 ((_ is Nil!50598) (toList!4295 lt!1689055)))))

(declare-fun e!2810661 () (InoxSet tuple2!51010))

(assert (=> d!1387856 (= (content!8309 (toList!4295 lt!1689055)) e!2810661)))

(declare-fun b!4511670 () Bool)

(assert (=> b!4511670 (= e!2810661 ((as const (Array tuple2!51010 Bool)) false))))

(declare-fun b!4511671 () Bool)

(assert (=> b!4511671 (= e!2810661 ((_ map or) (store ((as const (Array tuple2!51010 Bool)) false) (h!56435 (toList!4295 lt!1689055)) true) (content!8309 (t!357684 (toList!4295 lt!1689055)))))))

(assert (= (and d!1387856 c!769622) b!4511670))

(assert (= (and d!1387856 (not c!769622)) b!4511671))

(declare-fun m!5251977 () Bool)

(assert (=> b!4511671 m!5251977))

(declare-fun m!5251979 () Bool)

(assert (=> b!4511671 m!5251979))

(assert (=> d!1387456 d!1387856))

(assert (=> d!1387456 d!1387716))

(declare-fun d!1387858 () Bool)

(declare-fun res!1876723 () Bool)

(declare-fun e!2810662 () Bool)

(assert (=> d!1387858 (=> res!1876723 e!2810662)))

(assert (=> d!1387858 (= res!1876723 ((_ is Nil!50598) newBucket!178))))

(assert (=> d!1387858 (= (forall!10225 newBucket!178 lambda!170658) e!2810662)))

(declare-fun b!4511672 () Bool)

(declare-fun e!2810663 () Bool)

(assert (=> b!4511672 (= e!2810662 e!2810663)))

(declare-fun res!1876724 () Bool)

(assert (=> b!4511672 (=> (not res!1876724) (not e!2810663))))

(assert (=> b!4511672 (= res!1876724 (dynLambda!21140 lambda!170658 (h!56435 newBucket!178)))))

(declare-fun b!4511673 () Bool)

(assert (=> b!4511673 (= e!2810663 (forall!10225 (t!357684 newBucket!178) lambda!170658))))

(assert (= (and d!1387858 (not res!1876723)) b!4511672))

(assert (= (and b!4511672 res!1876724) b!4511673))

(declare-fun b_lambda!153811 () Bool)

(assert (=> (not b_lambda!153811) (not b!4511672)))

(declare-fun m!5251981 () Bool)

(assert (=> b!4511672 m!5251981))

(declare-fun m!5251983 () Bool)

(assert (=> b!4511673 m!5251983))

(assert (=> d!1387530 d!1387858))

(declare-fun d!1387860 () Bool)

(declare-fun res!1876725 () Bool)

(declare-fun e!2810664 () Bool)

(assert (=> d!1387860 (=> res!1876725 e!2810664)))

(assert (=> d!1387860 (= res!1876725 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387860 (= (forall!10223 (toList!4296 lm!1477) lambda!170553) e!2810664)))

(declare-fun b!4511674 () Bool)

(declare-fun e!2810665 () Bool)

(assert (=> b!4511674 (= e!2810664 e!2810665)))

(declare-fun res!1876726 () Bool)

(assert (=> b!4511674 (=> (not res!1876726) (not e!2810665))))

(assert (=> b!4511674 (= res!1876726 (dynLambda!21139 lambda!170553 (h!56436 (toList!4296 lm!1477))))))

(declare-fun b!4511675 () Bool)

(assert (=> b!4511675 (= e!2810665 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170553))))

(assert (= (and d!1387860 (not res!1876725)) b!4511674))

(assert (= (and b!4511674 res!1876726) b!4511675))

(declare-fun b_lambda!153813 () Bool)

(assert (=> (not b_lambda!153813) (not b!4511674)))

(declare-fun m!5251985 () Bool)

(assert (=> b!4511674 m!5251985))

(declare-fun m!5251987 () Bool)

(assert (=> b!4511675 m!5251987))

(assert (=> d!1387406 d!1387860))

(declare-fun d!1387862 () Bool)

(assert (=> d!1387862 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344))))

(declare-fun lt!1689827 () Unit!93482)

(assert (=> d!1387862 (= lt!1689827 (choose!29331 (toList!4296 lt!1689057) hash!344))))

(declare-fun e!2810666 () Bool)

(assert (=> d!1387862 e!2810666))

(declare-fun res!1876727 () Bool)

(assert (=> d!1387862 (=> (not res!1876727) (not e!2810666))))

(assert (=> d!1387862 (= res!1876727 (isStrictlySorted!415 (toList!4296 lt!1689057)))))

(assert (=> d!1387862 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689057) hash!344) lt!1689827)))

(declare-fun b!4511676 () Bool)

(assert (=> b!4511676 (= e!2810666 (containsKey!1735 (toList!4296 lt!1689057) hash!344))))

(assert (= (and d!1387862 res!1876727) b!4511676))

(assert (=> d!1387862 m!5250881))

(assert (=> d!1387862 m!5250881))

(assert (=> d!1387862 m!5251019))

(declare-fun m!5251997 () Bool)

(assert (=> d!1387862 m!5251997))

(declare-fun m!5251999 () Bool)

(assert (=> d!1387862 m!5251999))

(assert (=> b!4511676 m!5251015))

(assert (=> b!4511141 d!1387862))

(assert (=> b!4511141 d!1387604))

(assert (=> b!4511141 d!1387606))

(declare-fun d!1387866 () Bool)

(declare-fun res!1876728 () Bool)

(declare-fun e!2810667 () Bool)

(assert (=> d!1387866 (=> res!1876728 e!2810667)))

(assert (=> d!1387866 (= res!1876728 ((_ is Nil!50598) (toList!4295 lt!1689048)))))

(assert (=> d!1387866 (= (forall!10225 (toList!4295 lt!1689048) lambda!170654) e!2810667)))

(declare-fun b!4511677 () Bool)

(declare-fun e!2810668 () Bool)

(assert (=> b!4511677 (= e!2810667 e!2810668)))

(declare-fun res!1876729 () Bool)

(assert (=> b!4511677 (=> (not res!1876729) (not e!2810668))))

(assert (=> b!4511677 (= res!1876729 (dynLambda!21140 lambda!170654 (h!56435 (toList!4295 lt!1689048))))))

(declare-fun b!4511678 () Bool)

(assert (=> b!4511678 (= e!2810668 (forall!10225 (t!357684 (toList!4295 lt!1689048)) lambda!170654))))

(assert (= (and d!1387866 (not res!1876728)) b!4511677))

(assert (= (and b!4511677 res!1876729) b!4511678))

(declare-fun b_lambda!153815 () Bool)

(assert (=> (not b_lambda!153815) (not b!4511677)))

(declare-fun m!5252001 () Bool)

(assert (=> b!4511677 m!5252001))

(declare-fun m!5252003 () Bool)

(assert (=> b!4511678 m!5252003))

(assert (=> b!4511112 d!1387866))

(declare-fun d!1387868 () Bool)

(declare-fun e!2810670 () Bool)

(assert (=> d!1387868 e!2810670))

(declare-fun res!1876730 () Bool)

(assert (=> d!1387868 (=> res!1876730 e!2810670)))

(declare-fun lt!1689828 () Bool)

(assert (=> d!1387868 (= res!1876730 (not lt!1689828))))

(declare-fun lt!1689830 () Bool)

(assert (=> d!1387868 (= lt!1689828 lt!1689830)))

(declare-fun lt!1689831 () Unit!93482)

(declare-fun e!2810669 () Unit!93482)

(assert (=> d!1387868 (= lt!1689831 e!2810669)))

(declare-fun c!769623 () Bool)

(assert (=> d!1387868 (= c!769623 lt!1689830)))

(assert (=> d!1387868 (= lt!1689830 (containsKey!1735 (toList!4296 lt!1689458) (_1!28800 lt!1689059)))))

(assert (=> d!1387868 (= (contains!13300 lt!1689458 (_1!28800 lt!1689059)) lt!1689828)))

(declare-fun b!4511679 () Bool)

(declare-fun lt!1689829 () Unit!93482)

(assert (=> b!4511679 (= e!2810669 lt!1689829)))

(assert (=> b!4511679 (= lt!1689829 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689458) (_1!28800 lt!1689059)))))

(assert (=> b!4511679 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689458) (_1!28800 lt!1689059)))))

(declare-fun b!4511680 () Bool)

(declare-fun Unit!93674 () Unit!93482)

(assert (=> b!4511680 (= e!2810669 Unit!93674)))

(declare-fun b!4511681 () Bool)

(assert (=> b!4511681 (= e!2810670 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689458) (_1!28800 lt!1689059))))))

(assert (= (and d!1387868 c!769623) b!4511679))

(assert (= (and d!1387868 (not c!769623)) b!4511680))

(assert (= (and d!1387868 (not res!1876730)) b!4511681))

(declare-fun m!5252005 () Bool)

(assert (=> d!1387868 m!5252005))

(declare-fun m!5252007 () Bool)

(assert (=> b!4511679 m!5252007))

(assert (=> b!4511679 m!5250965))

(assert (=> b!4511679 m!5250965))

(declare-fun m!5252009 () Bool)

(assert (=> b!4511679 m!5252009))

(assert (=> b!4511681 m!5250965))

(assert (=> b!4511681 m!5250965))

(assert (=> b!4511681 m!5252009))

(assert (=> d!1387542 d!1387868))

(declare-fun b!4511683 () Bool)

(declare-fun e!2810671 () Option!11080)

(declare-fun e!2810672 () Option!11080)

(assert (=> b!4511683 (= e!2810671 e!2810672)))

(declare-fun c!769625 () Bool)

(assert (=> b!4511683 (= c!769625 (and ((_ is Cons!50599) lt!1689457) (not (= (_1!28800 (h!56436 lt!1689457)) (_1!28800 lt!1689059)))))))

(declare-fun b!4511682 () Bool)

(assert (=> b!4511682 (= e!2810671 (Some!11079 (_2!28800 (h!56436 lt!1689457))))))

(declare-fun b!4511684 () Bool)

(assert (=> b!4511684 (= e!2810672 (getValueByKey!1060 (t!357685 lt!1689457) (_1!28800 lt!1689059)))))

(declare-fun d!1387870 () Bool)

(declare-fun c!769624 () Bool)

(assert (=> d!1387870 (= c!769624 (and ((_ is Cons!50599) lt!1689457) (= (_1!28800 (h!56436 lt!1689457)) (_1!28800 lt!1689059))))))

(assert (=> d!1387870 (= (getValueByKey!1060 lt!1689457 (_1!28800 lt!1689059)) e!2810671)))

(declare-fun b!4511685 () Bool)

(assert (=> b!4511685 (= e!2810672 None!11079)))

(assert (= (and d!1387870 c!769624) b!4511682))

(assert (= (and d!1387870 (not c!769624)) b!4511683))

(assert (= (and b!4511683 c!769625) b!4511684))

(assert (= (and b!4511683 (not c!769625)) b!4511685))

(declare-fun m!5252011 () Bool)

(assert (=> b!4511684 m!5252011))

(assert (=> d!1387542 d!1387870))

(declare-fun d!1387874 () Bool)

(assert (=> d!1387874 (= (getValueByKey!1060 lt!1689457 (_1!28800 lt!1689059)) (Some!11079 (_2!28800 lt!1689059)))))

(declare-fun lt!1689832 () Unit!93482)

(assert (=> d!1387874 (= lt!1689832 (choose!29332 lt!1689457 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(declare-fun e!2810675 () Bool)

(assert (=> d!1387874 e!2810675))

(declare-fun res!1876733 () Bool)

(assert (=> d!1387874 (=> (not res!1876733) (not e!2810675))))

(assert (=> d!1387874 (= res!1876733 (isStrictlySorted!415 lt!1689457))))

(assert (=> d!1387874 (= (lemmaContainsTupThenGetReturnValue!654 lt!1689457 (_1!28800 lt!1689059) (_2!28800 lt!1689059)) lt!1689832)))

(declare-fun b!4511688 () Bool)

(declare-fun res!1876734 () Bool)

(assert (=> b!4511688 (=> (not res!1876734) (not e!2810675))))

(assert (=> b!4511688 (= res!1876734 (containsKey!1735 lt!1689457 (_1!28800 lt!1689059)))))

(declare-fun b!4511689 () Bool)

(assert (=> b!4511689 (= e!2810675 (contains!13301 lt!1689457 (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059))))))

(assert (= (and d!1387874 res!1876733) b!4511688))

(assert (= (and b!4511688 res!1876734) b!4511689))

(assert (=> d!1387874 m!5250959))

(declare-fun m!5252017 () Bool)

(assert (=> d!1387874 m!5252017))

(declare-fun m!5252019 () Bool)

(assert (=> d!1387874 m!5252019))

(declare-fun m!5252021 () Bool)

(assert (=> b!4511688 m!5252021))

(declare-fun m!5252025 () Bool)

(assert (=> b!4511689 m!5252025))

(assert (=> d!1387542 d!1387874))

(declare-fun c!769629 () Bool)

(declare-fun e!2810683 () List!50723)

(declare-fun c!769628 () Bool)

(declare-fun b!4511695 () Bool)

(assert (=> b!4511695 (= e!2810683 (ite c!769628 (t!357685 (toList!4296 lt!1689057)) (ite c!769629 (Cons!50599 (h!56436 (toList!4296 lt!1689057)) (t!357685 (toList!4296 lt!1689057))) Nil!50599)))))

(declare-fun bm!314177 () Bool)

(declare-fun call!314182 () List!50723)

(declare-fun call!314184 () List!50723)

(assert (=> bm!314177 (= call!314182 call!314184)))

(declare-fun b!4511696 () Bool)

(declare-fun res!1876740 () Bool)

(declare-fun e!2810685 () Bool)

(assert (=> b!4511696 (=> (not res!1876740) (not e!2810685))))

(declare-fun lt!1689833 () List!50723)

(assert (=> b!4511696 (= res!1876740 (containsKey!1735 lt!1689833 (_1!28800 lt!1689059)))))

(declare-fun d!1387878 () Bool)

(assert (=> d!1387878 e!2810685))

(declare-fun res!1876741 () Bool)

(assert (=> d!1387878 (=> (not res!1876741) (not e!2810685))))

(assert (=> d!1387878 (= res!1876741 (isStrictlySorted!415 lt!1689833))))

(declare-fun e!2810684 () List!50723)

(assert (=> d!1387878 (= lt!1689833 e!2810684)))

(declare-fun c!769626 () Bool)

(assert (=> d!1387878 (= c!769626 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (bvslt (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689059))))))

(assert (=> d!1387878 (isStrictlySorted!415 (toList!4296 lt!1689057))))

(assert (=> d!1387878 (= (insertStrictlySorted!392 (toList!4296 lt!1689057) (_1!28800 lt!1689059) (_2!28800 lt!1689059)) lt!1689833)))

(declare-fun b!4511697 () Bool)

(declare-fun e!2810681 () List!50723)

(declare-fun call!314183 () List!50723)

(assert (=> b!4511697 (= e!2810681 call!314183)))

(declare-fun b!4511698 () Bool)

(declare-fun e!2810682 () List!50723)

(assert (=> b!4511698 (= e!2810682 call!314182)))

(declare-fun bm!314178 () Bool)

(assert (=> bm!314178 (= call!314183 call!314182)))

(declare-fun b!4511699 () Bool)

(assert (=> b!4511699 (= e!2810683 (insertStrictlySorted!392 (t!357685 (toList!4296 lt!1689057)) (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))

(declare-fun b!4511700 () Bool)

(assert (=> b!4511700 (= e!2810684 e!2810682)))

(assert (=> b!4511700 (= c!769628 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (= (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689059))))))

(declare-fun bm!314179 () Bool)

(assert (=> bm!314179 (= call!314184 ($colon$colon!919 e!2810683 (ite c!769626 (h!56436 (toList!4296 lt!1689057)) (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059)))))))

(declare-fun c!769627 () Bool)

(assert (=> bm!314179 (= c!769627 c!769626)))

(declare-fun b!4511701 () Bool)

(assert (=> b!4511701 (= e!2810681 call!314183)))

(declare-fun b!4511702 () Bool)

(assert (=> b!4511702 (= e!2810685 (contains!13301 lt!1689833 (tuple2!51013 (_1!28800 lt!1689059) (_2!28800 lt!1689059))))))

(declare-fun b!4511703 () Bool)

(assert (=> b!4511703 (= c!769629 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (bvsgt (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689059))))))

(assert (=> b!4511703 (= e!2810682 e!2810681)))

(declare-fun b!4511704 () Bool)

(assert (=> b!4511704 (= e!2810684 call!314184)))

(assert (= (and d!1387878 c!769626) b!4511704))

(assert (= (and d!1387878 (not c!769626)) b!4511700))

(assert (= (and b!4511700 c!769628) b!4511698))

(assert (= (and b!4511700 (not c!769628)) b!4511703))

(assert (= (and b!4511703 c!769629) b!4511697))

(assert (= (and b!4511703 (not c!769629)) b!4511701))

(assert (= (or b!4511697 b!4511701) bm!314178))

(assert (= (or b!4511698 bm!314178) bm!314177))

(assert (= (or b!4511704 bm!314177) bm!314179))

(assert (= (and bm!314179 c!769627) b!4511699))

(assert (= (and bm!314179 (not c!769627)) b!4511695))

(assert (= (and d!1387878 res!1876741) b!4511696))

(assert (= (and b!4511696 res!1876740) b!4511702))

(declare-fun m!5252041 () Bool)

(assert (=> b!4511702 m!5252041))

(declare-fun m!5252043 () Bool)

(assert (=> bm!314179 m!5252043))

(declare-fun m!5252045 () Bool)

(assert (=> b!4511696 m!5252045))

(declare-fun m!5252047 () Bool)

(assert (=> d!1387878 m!5252047))

(assert (=> d!1387878 m!5251999))

(declare-fun m!5252049 () Bool)

(assert (=> b!4511699 m!5252049))

(assert (=> d!1387542 d!1387878))

(declare-fun d!1387888 () Bool)

(declare-fun res!1876742 () Bool)

(declare-fun e!2810688 () Bool)

(assert (=> d!1387888 (=> res!1876742 e!2810688)))

(assert (=> d!1387888 (= res!1876742 (not ((_ is Cons!50598) (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(assert (=> d!1387888 (= (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477)))) e!2810688)))

(declare-fun b!4511709 () Bool)

(declare-fun e!2810689 () Bool)

(assert (=> b!4511709 (= e!2810688 e!2810689)))

(declare-fun res!1876743 () Bool)

(assert (=> b!4511709 (=> (not res!1876743) (not e!2810689))))

(assert (=> b!4511709 (= res!1876743 (not (containsKey!1732 (t!357684 (_2!28800 (h!56436 (toList!4296 lm!1477)))) (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))))

(declare-fun b!4511710 () Bool)

(assert (=> b!4511710 (= e!2810689 (noDuplicateKeys!1144 (t!357684 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(assert (= (and d!1387888 (not res!1876742)) b!4511709))

(assert (= (and b!4511709 res!1876743) b!4511710))

(declare-fun m!5252051 () Bool)

(assert (=> b!4511709 m!5252051))

(declare-fun m!5252053 () Bool)

(assert (=> b!4511710 m!5252053))

(assert (=> bs!847092 d!1387888))

(declare-fun d!1387890 () Bool)

(assert (=> d!1387890 (= (get!16555 (getValueByKey!1060 (toList!4296 lm!1477) hash!344)) (v!44631 (getValueByKey!1060 (toList!4296 lm!1477) hash!344)))))

(assert (=> d!1387376 d!1387890))

(assert (=> d!1387376 d!1387850))

(declare-fun d!1387892 () Bool)

(declare-fun choose!29338 (Hashable!5539 K!12000) (_ BitVec 64))

(assert (=> d!1387892 (= (hash!2754 hashF!1107 key!3287) (choose!29338 hashF!1107 key!3287))))

(declare-fun bs!847524 () Bool)

(assert (= bs!847524 d!1387892))

(declare-fun m!5252055 () Bool)

(assert (=> bs!847524 m!5252055))

(assert (=> d!1387454 d!1387892))

(declare-fun b!4511718 () Bool)

(declare-fun e!2810696 () Option!11080)

(declare-fun e!2810697 () Option!11080)

(assert (=> b!4511718 (= e!2810696 e!2810697)))

(declare-fun c!769633 () Bool)

(assert (=> b!4511718 (= c!769633 (and ((_ is Cons!50599) (toList!4296 lt!1689458)) (not (= (_1!28800 (h!56436 (toList!4296 lt!1689458))) (_1!28800 lt!1689059)))))))

(declare-fun b!4511717 () Bool)

(assert (=> b!4511717 (= e!2810696 (Some!11079 (_2!28800 (h!56436 (toList!4296 lt!1689458)))))))

(declare-fun b!4511719 () Bool)

(assert (=> b!4511719 (= e!2810697 (getValueByKey!1060 (t!357685 (toList!4296 lt!1689458)) (_1!28800 lt!1689059)))))

(declare-fun d!1387894 () Bool)

(declare-fun c!769632 () Bool)

(assert (=> d!1387894 (= c!769632 (and ((_ is Cons!50599) (toList!4296 lt!1689458)) (= (_1!28800 (h!56436 (toList!4296 lt!1689458))) (_1!28800 lt!1689059))))))

(assert (=> d!1387894 (= (getValueByKey!1060 (toList!4296 lt!1689458) (_1!28800 lt!1689059)) e!2810696)))

(declare-fun b!4511720 () Bool)

(assert (=> b!4511720 (= e!2810697 None!11079)))

(assert (= (and d!1387894 c!769632) b!4511717))

(assert (= (and d!1387894 (not c!769632)) b!4511718))

(assert (= (and b!4511718 c!769633) b!4511719))

(assert (= (and b!4511718 (not c!769633)) b!4511720))

(declare-fun m!5252061 () Bool)

(assert (=> b!4511719 m!5252061))

(assert (=> b!4511133 d!1387894))

(declare-fun d!1387898 () Bool)

(assert (=> d!1387898 (= (invariantList!1001 (toList!4295 lt!1689398)) (noDuplicatedKeys!254 (toList!4295 lt!1689398)))))

(declare-fun bs!847525 () Bool)

(assert (= bs!847525 d!1387898))

(declare-fun m!5252063 () Bool)

(assert (=> bs!847525 m!5252063))

(assert (=> b!4511067 d!1387898))

(declare-fun d!1387900 () Bool)

(assert (=> d!1387900 (= (invariantList!1001 (toList!4295 lt!1689480)) (noDuplicatedKeys!254 (toList!4295 lt!1689480)))))

(declare-fun bs!847526 () Bool)

(assert (= bs!847526 d!1387900))

(declare-fun m!5252065 () Bool)

(assert (=> bs!847526 m!5252065))

(assert (=> d!1387564 d!1387900))

(declare-fun d!1387902 () Bool)

(declare-fun res!1876752 () Bool)

(declare-fun e!2810700 () Bool)

(assert (=> d!1387902 (=> res!1876752 e!2810700)))

(assert (=> d!1387902 (= res!1876752 ((_ is Nil!50599) (toList!4296 lm!1477)))))

(assert (=> d!1387902 (= (forall!10223 (toList!4296 lm!1477) lambda!170667) e!2810700)))

(declare-fun b!4511723 () Bool)

(declare-fun e!2810701 () Bool)

(assert (=> b!4511723 (= e!2810700 e!2810701)))

(declare-fun res!1876753 () Bool)

(assert (=> b!4511723 (=> (not res!1876753) (not e!2810701))))

(assert (=> b!4511723 (= res!1876753 (dynLambda!21139 lambda!170667 (h!56436 (toList!4296 lm!1477))))))

(declare-fun b!4511724 () Bool)

(assert (=> b!4511724 (= e!2810701 (forall!10223 (t!357685 (toList!4296 lm!1477)) lambda!170667))))

(assert (= (and d!1387902 (not res!1876752)) b!4511723))

(assert (= (and b!4511723 res!1876753) b!4511724))

(declare-fun b_lambda!153825 () Bool)

(assert (=> (not b_lambda!153825) (not b!4511723)))

(declare-fun m!5252067 () Bool)

(assert (=> b!4511723 m!5252067))

(declare-fun m!5252069 () Bool)

(assert (=> b!4511724 m!5252069))

(assert (=> d!1387564 d!1387902))

(declare-fun d!1387904 () Bool)

(declare-fun lt!1689834 () Bool)

(assert (=> d!1387904 (= lt!1689834 (select (content!8308 (toList!4296 lt!1689190)) lt!1689065))))

(declare-fun e!2810702 () Bool)

(assert (=> d!1387904 (= lt!1689834 e!2810702)))

(declare-fun res!1876754 () Bool)

(assert (=> d!1387904 (=> (not res!1876754) (not e!2810702))))

(assert (=> d!1387904 (= res!1876754 ((_ is Cons!50599) (toList!4296 lt!1689190)))))

(assert (=> d!1387904 (= (contains!13301 (toList!4296 lt!1689190) lt!1689065) lt!1689834)))

(declare-fun b!4511725 () Bool)

(declare-fun e!2810703 () Bool)

(assert (=> b!4511725 (= e!2810702 e!2810703)))

(declare-fun res!1876755 () Bool)

(assert (=> b!4511725 (=> res!1876755 e!2810703)))

(assert (=> b!4511725 (= res!1876755 (= (h!56436 (toList!4296 lt!1689190)) lt!1689065))))

(declare-fun b!4511726 () Bool)

(assert (=> b!4511726 (= e!2810703 (contains!13301 (t!357685 (toList!4296 lt!1689190)) lt!1689065))))

(assert (= (and d!1387904 res!1876754) b!4511725))

(assert (= (and b!4511725 (not res!1876755)) b!4511726))

(declare-fun m!5252075 () Bool)

(assert (=> d!1387904 m!5252075))

(declare-fun m!5252077 () Bool)

(assert (=> d!1387904 m!5252077))

(declare-fun m!5252079 () Bool)

(assert (=> b!4511726 m!5252079))

(assert (=> b!4510937 d!1387904))

(declare-fun bs!847527 () Bool)

(declare-fun b!4511806 () Bool)

(assert (= bs!847527 (and b!4511806 b!4511210)))

(declare-fun lambda!170737 () Int)

(assert (=> bs!847527 (= (= (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (toList!4295 lt!1689045)) (= lambda!170737 lambda!170678))))

(declare-fun bs!847528 () Bool)

(assert (= bs!847528 (and b!4511806 b!4511217)))

(assert (=> bs!847528 (= (= (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (toList!4295 lt!1689046)) (= lambda!170737 lambda!170680))))

(declare-fun bs!847529 () Bool)

(assert (= bs!847529 (and b!4511806 b!4511295)))

(assert (=> bs!847529 (= (= (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170737 lambda!170687))))

(declare-fun bs!847530 () Bool)

(assert (= bs!847530 (and b!4511806 b!4511470)))

(assert (=> bs!847530 (= (= (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (toList!4295 lt!1689454)) (= lambda!170737 lambda!170711))))

(assert (=> b!4511806 true))

(declare-fun bs!847531 () Bool)

(declare-fun b!4511809 () Bool)

(assert (= bs!847531 (and b!4511809 b!4511470)))

(declare-fun lambda!170738 () Int)

(assert (=> bs!847531 (= (= (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (toList!4295 lt!1689454)) (= lambda!170738 lambda!170711))))

(declare-fun bs!847532 () Bool)

(assert (= bs!847532 (and b!4511809 b!4511295)))

(assert (=> bs!847532 (= (= (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170738 lambda!170687))))

(declare-fun bs!847533 () Bool)

(assert (= bs!847533 (and b!4511809 b!4511210)))

(assert (=> bs!847533 (= (= (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (toList!4295 lt!1689045)) (= lambda!170738 lambda!170678))))

(declare-fun bs!847534 () Bool)

(assert (= bs!847534 (and b!4511809 b!4511806)))

(assert (=> bs!847534 (= (= (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170738 lambda!170737))))

(declare-fun bs!847535 () Bool)

(assert (= bs!847535 (and b!4511809 b!4511217)))

(assert (=> bs!847535 (= (= (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (toList!4295 lt!1689046)) (= lambda!170738 lambda!170680))))

(assert (=> b!4511809 true))

(declare-fun bs!847536 () Bool)

(declare-fun b!4511804 () Bool)

(assert (= bs!847536 (and b!4511804 b!4511470)))

(declare-fun lambda!170739 () Int)

(assert (=> bs!847536 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (toList!4295 lt!1689454)) (= lambda!170739 lambda!170711))))

(declare-fun bs!847537 () Bool)

(assert (= bs!847537 (and b!4511804 b!4511295)))

(assert (=> bs!847537 (= lambda!170739 lambda!170687)))

(declare-fun bs!847538 () Bool)

(assert (= bs!847538 (and b!4511804 b!4511210)))

(assert (=> bs!847538 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (toList!4295 lt!1689045)) (= lambda!170739 lambda!170678))))

(declare-fun bs!847539 () Bool)

(assert (= bs!847539 (and b!4511804 b!4511806)))

(assert (=> bs!847539 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170739 lambda!170737))))

(declare-fun bs!847540 () Bool)

(assert (= bs!847540 (and b!4511804 b!4511809)))

(assert (=> bs!847540 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170739 lambda!170738))))

(declare-fun bs!847541 () Bool)

(assert (= bs!847541 (and b!4511804 b!4511217)))

(assert (=> bs!847541 (= (= (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (toList!4295 lt!1689046)) (= lambda!170739 lambda!170680))))

(assert (=> b!4511804 true))

(declare-fun bs!847542 () Bool)

(declare-fun b!4511802 () Bool)

(assert (= bs!847542 (and b!4511802 b!4511211)))

(declare-fun lambda!170740 () Int)

(assert (=> bs!847542 (= lambda!170740 lambda!170679)))

(declare-fun bs!847543 () Bool)

(assert (= bs!847543 (and b!4511802 b!4511218)))

(assert (=> bs!847543 (= lambda!170740 lambda!170681)))

(declare-fun bs!847544 () Bool)

(assert (= bs!847544 (and b!4511802 b!4511296)))

(assert (=> bs!847544 (= lambda!170740 lambda!170688)))

(declare-fun bs!847545 () Bool)

(assert (= bs!847545 (and b!4511802 b!4511471)))

(assert (=> bs!847545 (= lambda!170740 lambda!170712)))

(declare-fun lt!1689863 () List!50725)

(declare-fun e!2810747 () Bool)

(assert (=> b!4511802 (= e!2810747 (= (content!8311 lt!1689863) (content!8311 (map!11122 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lambda!170740))))))

(declare-fun b!4511803 () Bool)

(declare-fun res!1876782 () Bool)

(assert (=> b!4511803 (=> (not res!1876782) (not e!2810747))))

(assert (=> b!4511803 (= res!1876782 (= (length!334 lt!1689863) (length!335 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun res!1876783 () Bool)

(assert (=> b!4511804 (=> (not res!1876783) (not e!2810747))))

(assert (=> b!4511804 (= res!1876783 (forall!10226 lt!1689863 lambda!170739))))

(declare-fun b!4511805 () Bool)

(assert (=> b!4511805 false))

(declare-fun e!2810746 () Unit!93482)

(declare-fun Unit!93684 () Unit!93482)

(assert (=> b!4511805 (= e!2810746 Unit!93684)))

(declare-fun b!4511807 () Bool)

(declare-fun e!2810744 () Unit!93482)

(declare-fun Unit!93685 () Unit!93482)

(assert (=> b!4511807 (= e!2810744 Unit!93685)))

(declare-fun b!4511808 () Bool)

(declare-fun e!2810745 () List!50725)

(assert (=> b!4511808 (= e!2810745 Nil!50601)))

(assert (=> b!4511809 (= e!2810745 (Cons!50601 (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (getKeysList!449 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))))

(declare-fun c!769661 () Bool)

(assert (=> b!4511809 (= c!769661 (containsKey!1736 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))))

(declare-fun lt!1689860 () Unit!93482)

(assert (=> b!4511809 (= lt!1689860 e!2810746)))

(declare-fun c!769659 () Bool)

(assert (=> b!4511809 (= c!769659 (contains!13303 (getKeysList!449 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))))

(declare-fun lt!1689862 () Unit!93482)

(assert (=> b!4511809 (= lt!1689862 e!2810744)))

(declare-fun lt!1689861 () List!50725)

(assert (=> b!4511809 (= lt!1689861 (getKeysList!449 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))))

(declare-fun lt!1689866 () Unit!93482)

(declare-fun lemmaForallContainsAddHeadPreserves!161 (List!50722 List!50725 tuple2!51010) Unit!93482)

(assert (=> b!4511809 (= lt!1689866 (lemmaForallContainsAddHeadPreserves!161 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) lt!1689861 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))))

(assert (=> b!4511809 (forall!10226 lt!1689861 lambda!170738)))

(declare-fun lt!1689865 () Unit!93482)

(assert (=> b!4511809 (= lt!1689865 lt!1689866)))

(declare-fun b!4511810 () Bool)

(declare-fun Unit!93688 () Unit!93482)

(assert (=> b!4511810 (= e!2810746 Unit!93688)))

(assert (=> b!4511806 false))

(declare-fun lt!1689864 () Unit!93482)

(declare-fun forallContained!2479 (List!50725 Int K!12000) Unit!93482)

(assert (=> b!4511806 (= lt!1689864 (forallContained!2479 (getKeysList!449 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) lambda!170737 (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))))

(declare-fun Unit!93689 () Unit!93482)

(assert (=> b!4511806 (= e!2810744 Unit!93689)))

(declare-fun d!1387908 () Bool)

(assert (=> d!1387908 e!2810747))

(declare-fun res!1876781 () Bool)

(assert (=> d!1387908 (=> (not res!1876781) (not e!2810747))))

(assert (=> d!1387908 (= res!1876781 (noDuplicate!739 lt!1689863))))

(assert (=> d!1387908 (= lt!1689863 e!2810745)))

(declare-fun c!769660 () Bool)

(assert (=> d!1387908 (= c!769660 ((_ is Cons!50598) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> d!1387908 (invariantList!1001 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387908 (= (getKeysList!449 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) lt!1689863)))

(assert (= (and d!1387908 c!769660) b!4511809))

(assert (= (and d!1387908 (not c!769660)) b!4511808))

(assert (= (and b!4511809 c!769661) b!4511805))

(assert (= (and b!4511809 (not c!769661)) b!4511810))

(assert (= (and b!4511809 c!769659) b!4511806))

(assert (= (and b!4511809 (not c!769659)) b!4511807))

(assert (= (and d!1387908 res!1876781) b!4511803))

(assert (= (and b!4511803 res!1876782) b!4511804))

(assert (= (and b!4511804 res!1876783) b!4511802))

(declare-fun m!5252125 () Bool)

(assert (=> b!4511806 m!5252125))

(assert (=> b!4511806 m!5252125))

(declare-fun m!5252127 () Bool)

(assert (=> b!4511806 m!5252127))

(declare-fun m!5252129 () Bool)

(assert (=> b!4511804 m!5252129))

(declare-fun m!5252131 () Bool)

(assert (=> b!4511802 m!5252131))

(declare-fun m!5252133 () Bool)

(assert (=> b!4511802 m!5252133))

(assert (=> b!4511802 m!5252133))

(declare-fun m!5252135 () Bool)

(assert (=> b!4511802 m!5252135))

(assert (=> b!4511809 m!5252125))

(assert (=> b!4511809 m!5252125))

(declare-fun m!5252137 () Bool)

(assert (=> b!4511809 m!5252137))

(declare-fun m!5252139 () Bool)

(assert (=> b!4511809 m!5252139))

(declare-fun m!5252141 () Bool)

(assert (=> b!4511809 m!5252141))

(declare-fun m!5252143 () Bool)

(assert (=> b!4511809 m!5252143))

(declare-fun m!5252145 () Bool)

(assert (=> d!1387908 m!5252145))

(declare-fun m!5252147 () Bool)

(assert (=> d!1387908 m!5252147))

(declare-fun m!5252149 () Bool)

(assert (=> b!4511803 m!5252149))

(assert (=> b!4511803 m!5251307))

(assert (=> b!4510969 d!1387908))

(declare-fun d!1387928 () Bool)

(assert (=> d!1387928 (= (invariantList!1001 (toList!4295 lt!1689419)) (noDuplicatedKeys!254 (toList!4295 lt!1689419)))))

(declare-fun bs!847555 () Bool)

(assert (= bs!847555 d!1387928))

(declare-fun m!5252151 () Bool)

(assert (=> bs!847555 m!5252151))

(assert (=> d!1387506 d!1387928))

(declare-fun d!1387930 () Bool)

(declare-fun res!1876784 () Bool)

(declare-fun e!2810748 () Bool)

(assert (=> d!1387930 (=> res!1876784 e!2810748)))

(assert (=> d!1387930 (= res!1876784 ((_ is Nil!50599) (toList!4296 lt!1689051)))))

(assert (=> d!1387930 (= (forall!10223 (toList!4296 lt!1689051) lambda!170651) e!2810748)))

(declare-fun b!4511813 () Bool)

(declare-fun e!2810749 () Bool)

(assert (=> b!4511813 (= e!2810748 e!2810749)))

(declare-fun res!1876785 () Bool)

(assert (=> b!4511813 (=> (not res!1876785) (not e!2810749))))

(assert (=> b!4511813 (= res!1876785 (dynLambda!21139 lambda!170651 (h!56436 (toList!4296 lt!1689051))))))

(declare-fun b!4511814 () Bool)

(assert (=> b!4511814 (= e!2810749 (forall!10223 (t!357685 (toList!4296 lt!1689051)) lambda!170651))))

(assert (= (and d!1387930 (not res!1876784)) b!4511813))

(assert (= (and b!4511813 res!1876785) b!4511814))

(declare-fun b_lambda!153829 () Bool)

(assert (=> (not b_lambda!153829) (not b!4511813)))

(declare-fun m!5252153 () Bool)

(assert (=> b!4511813 m!5252153))

(declare-fun m!5252155 () Bool)

(assert (=> b!4511814 m!5252155))

(assert (=> d!1387506 d!1387930))

(declare-fun d!1387932 () Bool)

(declare-fun res!1876786 () Bool)

(declare-fun e!2810750 () Bool)

(assert (=> d!1387932 (=> res!1876786 e!2810750)))

(assert (=> d!1387932 (= res!1876786 (and ((_ is Cons!50598) lt!1689104) (= (_1!28799 (h!56435 lt!1689104)) key!3287)))))

(assert (=> d!1387932 (= (containsKey!1732 lt!1689104 key!3287) e!2810750)))

(declare-fun b!4511815 () Bool)

(declare-fun e!2810751 () Bool)

(assert (=> b!4511815 (= e!2810750 e!2810751)))

(declare-fun res!1876787 () Bool)

(assert (=> b!4511815 (=> (not res!1876787) (not e!2810751))))

(assert (=> b!4511815 (= res!1876787 ((_ is Cons!50598) lt!1689104))))

(declare-fun b!4511816 () Bool)

(assert (=> b!4511816 (= e!2810751 (containsKey!1732 (t!357684 lt!1689104) key!3287))))

(assert (= (and d!1387932 (not res!1876786)) b!4511815))

(assert (= (and b!4511815 res!1876787) b!4511816))

(declare-fun m!5252157 () Bool)

(assert (=> b!4511816 m!5252157))

(assert (=> d!1387382 d!1387932))

(declare-fun d!1387934 () Bool)

(declare-fun res!1876788 () Bool)

(declare-fun e!2810752 () Bool)

(assert (=> d!1387934 (=> res!1876788 e!2810752)))

(assert (=> d!1387934 (= res!1876788 (not ((_ is Cons!50598) lt!1689047)))))

(assert (=> d!1387934 (= (noDuplicateKeys!1144 lt!1689047) e!2810752)))

(declare-fun b!4511817 () Bool)

(declare-fun e!2810753 () Bool)

(assert (=> b!4511817 (= e!2810752 e!2810753)))

(declare-fun res!1876789 () Bool)

(assert (=> b!4511817 (=> (not res!1876789) (not e!2810753))))

(assert (=> b!4511817 (= res!1876789 (not (containsKey!1732 (t!357684 lt!1689047) (_1!28799 (h!56435 lt!1689047)))))))

(declare-fun b!4511818 () Bool)

(assert (=> b!4511818 (= e!2810753 (noDuplicateKeys!1144 (t!357684 lt!1689047)))))

(assert (= (and d!1387934 (not res!1876788)) b!4511817))

(assert (= (and b!4511817 res!1876789) b!4511818))

(declare-fun m!5252163 () Bool)

(assert (=> b!4511817 m!5252163))

(assert (=> b!4511818 m!5251101))

(assert (=> d!1387382 d!1387934))

(assert (=> b!4510982 d!1387628))

(assert (=> b!4510982 d!1387630))

(assert (=> d!1387520 d!1387756))

(assert (=> d!1387520 d!1387754))

(declare-fun d!1387938 () Bool)

(declare-fun res!1876792 () Bool)

(declare-fun e!2810756 () Bool)

(assert (=> d!1387938 (=> res!1876792 e!2810756)))

(assert (=> d!1387938 (= res!1876792 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1387938 (= (forall!10225 (_2!28800 lt!1689065) lambda!170655) e!2810756)))

(declare-fun b!4511821 () Bool)

(declare-fun e!2810757 () Bool)

(assert (=> b!4511821 (= e!2810756 e!2810757)))

(declare-fun res!1876793 () Bool)

(assert (=> b!4511821 (=> (not res!1876793) (not e!2810757))))

(assert (=> b!4511821 (= res!1876793 (dynLambda!21140 lambda!170655 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun b!4511822 () Bool)

(assert (=> b!4511822 (= e!2810757 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170655))))

(assert (= (and d!1387938 (not res!1876792)) b!4511821))

(assert (= (and b!4511821 res!1876793) b!4511822))

(declare-fun b_lambda!153831 () Bool)

(assert (=> (not b_lambda!153831) (not b!4511821)))

(declare-fun m!5252167 () Bool)

(assert (=> b!4511821 m!5252167))

(declare-fun m!5252169 () Bool)

(assert (=> b!4511822 m!5252169))

(assert (=> d!1387526 d!1387938))

(assert (=> d!1387526 d!1387744))

(assert (=> b!4511149 d!1387620))

(assert (=> b!4511149 d!1387622))

(declare-fun d!1387942 () Bool)

(declare-fun lt!1689871 () Bool)

(assert (=> d!1387942 (= lt!1689871 (select (content!8308 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689062))))

(declare-fun e!2810758 () Bool)

(assert (=> d!1387942 (= lt!1689871 e!2810758)))

(declare-fun res!1876794 () Bool)

(assert (=> d!1387942 (=> (not res!1876794) (not e!2810758))))

(assert (=> d!1387942 (= res!1876794 ((_ is Cons!50599) (t!357685 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1387942 (= (contains!13301 (t!357685 (t!357685 (toList!4296 lm!1477))) lt!1689062) lt!1689871)))

(declare-fun b!4511823 () Bool)

(declare-fun e!2810759 () Bool)

(assert (=> b!4511823 (= e!2810758 e!2810759)))

(declare-fun res!1876795 () Bool)

(assert (=> b!4511823 (=> res!1876795 e!2810759)))

(assert (=> b!4511823 (= res!1876795 (= (h!56436 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689062))))

(declare-fun b!4511824 () Bool)

(assert (=> b!4511824 (= e!2810759 (contains!13301 (t!357685 (t!357685 (t!357685 (toList!4296 lm!1477)))) lt!1689062))))

(assert (= (and d!1387942 res!1876794) b!4511823))

(assert (= (and b!4511823 (not res!1876795)) b!4511824))

(declare-fun m!5252175 () Bool)

(assert (=> d!1387942 m!5252175))

(declare-fun m!5252177 () Bool)

(assert (=> d!1387942 m!5252177))

(declare-fun m!5252179 () Bool)

(assert (=> b!4511824 m!5252179))

(assert (=> b!4510919 d!1387942))

(declare-fun d!1387946 () Bool)

(declare-fun res!1876796 () Bool)

(declare-fun e!2810760 () Bool)

(assert (=> d!1387946 (=> res!1876796 e!2810760)))

(assert (=> d!1387946 (= res!1876796 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (= (_1!28800 (h!56436 (toList!4296 lt!1689057))) hash!344)))))

(assert (=> d!1387946 (= (containsKey!1735 (toList!4296 lt!1689057) hash!344) e!2810760)))

(declare-fun b!4511825 () Bool)

(declare-fun e!2810761 () Bool)

(assert (=> b!4511825 (= e!2810760 e!2810761)))

(declare-fun res!1876797 () Bool)

(assert (=> b!4511825 (=> (not res!1876797) (not e!2810761))))

(assert (=> b!4511825 (= res!1876797 (and (or (not ((_ is Cons!50599) (toList!4296 lt!1689057))) (bvsle (_1!28800 (h!56436 (toList!4296 lt!1689057))) hash!344)) ((_ is Cons!50599) (toList!4296 lt!1689057)) (bvslt (_1!28800 (h!56436 (toList!4296 lt!1689057))) hash!344)))))

(declare-fun b!4511826 () Bool)

(assert (=> b!4511826 (= e!2810761 (containsKey!1735 (t!357685 (toList!4296 lt!1689057)) hash!344))))

(assert (= (and d!1387946 (not res!1876796)) b!4511825))

(assert (= (and b!4511825 res!1876797) b!4511826))

(declare-fun m!5252181 () Bool)

(assert (=> b!4511826 m!5252181))

(assert (=> d!1387558 d!1387946))

(declare-fun d!1387948 () Bool)

(declare-fun res!1876798 () Bool)

(declare-fun e!2810762 () Bool)

(assert (=> d!1387948 (=> res!1876798 e!2810762)))

(assert (=> d!1387948 (= res!1876798 (and ((_ is Cons!50598) (t!357684 newBucket!178)) (= (_1!28799 (h!56435 (t!357684 newBucket!178))) (_1!28799 (h!56435 newBucket!178)))))))

(assert (=> d!1387948 (= (containsKey!1732 (t!357684 newBucket!178) (_1!28799 (h!56435 newBucket!178))) e!2810762)))

(declare-fun b!4511827 () Bool)

(declare-fun e!2810763 () Bool)

(assert (=> b!4511827 (= e!2810762 e!2810763)))

(declare-fun res!1876799 () Bool)

(assert (=> b!4511827 (=> (not res!1876799) (not e!2810763))))

(assert (=> b!4511827 (= res!1876799 ((_ is Cons!50598) (t!357684 newBucket!178)))))

(declare-fun b!4511828 () Bool)

(assert (=> b!4511828 (= e!2810763 (containsKey!1732 (t!357684 (t!357684 newBucket!178)) (_1!28799 (h!56435 newBucket!178))))))

(assert (= (and d!1387948 (not res!1876798)) b!4511827))

(assert (= (and b!4511827 res!1876799) b!4511828))

(declare-fun m!5252185 () Bool)

(assert (=> b!4511828 m!5252185))

(assert (=> b!4511159 d!1387948))

(declare-fun d!1387952 () Bool)

(declare-fun res!1876800 () Bool)

(declare-fun e!2810764 () Bool)

(assert (=> d!1387952 (=> res!1876800 e!2810764)))

(assert (=> d!1387952 (= res!1876800 ((_ is Nil!50598) (toList!4295 lt!1689058)))))

(assert (=> d!1387952 (= (forall!10225 (toList!4295 lt!1689058) (ite c!769477 lambda!170647 lambda!170648)) e!2810764)))

(declare-fun b!4511829 () Bool)

(declare-fun e!2810765 () Bool)

(assert (=> b!4511829 (= e!2810764 e!2810765)))

(declare-fun res!1876801 () Bool)

(assert (=> b!4511829 (=> (not res!1876801) (not e!2810765))))

(assert (=> b!4511829 (= res!1876801 (dynLambda!21140 (ite c!769477 lambda!170647 lambda!170648) (h!56435 (toList!4295 lt!1689058))))))

(declare-fun b!4511830 () Bool)

(assert (=> b!4511830 (= e!2810765 (forall!10225 (t!357684 (toList!4295 lt!1689058)) (ite c!769477 lambda!170647 lambda!170648)))))

(assert (= (and d!1387952 (not res!1876800)) b!4511829))

(assert (= (and b!4511829 res!1876801) b!4511830))

(declare-fun b_lambda!153833 () Bool)

(assert (=> (not b_lambda!153833) (not b!4511829)))

(declare-fun m!5252187 () Bool)

(assert (=> b!4511829 m!5252187))

(declare-fun m!5252189 () Bool)

(assert (=> b!4511830 m!5252189))

(assert (=> bm!314116 d!1387952))

(declare-fun bs!847566 () Bool)

(declare-fun b!4511837 () Bool)

(assert (= bs!847566 (and b!4511837 d!1387722)))

(declare-fun lambda!170744 () Int)

(assert (=> bs!847566 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689618) (= lambda!170744 lambda!170700))))

(declare-fun bs!847567 () Bool)

(assert (= bs!847567 (and b!4511837 b!4511307)))

(assert (=> bs!847567 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170744 lambda!170689))))

(declare-fun bs!847568 () Bool)

(assert (= bs!847568 (and b!4511837 b!4511411)))

(assert (=> bs!847568 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170744 lambda!170698))))

(declare-fun bs!847569 () Bool)

(assert (= bs!847569 (and b!4511837 b!4511188)))

(assert (=> bs!847569 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170744 lambda!170670))))

(declare-fun bs!847570 () Bool)

(assert (= bs!847570 (and b!4511837 b!4511291)))

(assert (=> bs!847570 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170744 lambda!170682))))

(declare-fun bs!847571 () Bool)

(assert (= bs!847571 (and b!4511837 b!4511287)))

(assert (=> bs!847571 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170744 lambda!170683))))

(declare-fun bs!847572 () Bool)

(assert (= bs!847572 (and b!4511837 b!4511303)))

(assert (=> bs!847572 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170744 lambda!170690))))

(declare-fun bs!847573 () Bool)

(assert (= bs!847573 (and b!4511837 d!1387590)))

(assert (=> bs!847573 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689493) (= lambda!170744 lambda!170672))))

(declare-fun bs!847574 () Bool)

(assert (= bs!847574 (and b!4511837 b!4511066)))

(assert (=> bs!847574 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689409) (= lambda!170744 lambda!170649))))

(declare-fun bs!847575 () Bool)

(assert (= bs!847575 (and b!4511837 b!4511192)))

(assert (=> bs!847575 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170744 lambda!170669))))

(declare-fun bs!847576 () Bool)

(assert (= bs!847576 (and b!4511837 b!4511109)))

(assert (=> bs!847576 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170744 lambda!170653))))

(assert (=> bs!847568 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689629) (= lambda!170744 lambda!170699))))

(declare-fun bs!847577 () Bool)

(assert (= bs!847577 (and b!4511837 b!4511415)))

(assert (=> bs!847577 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170744 lambda!170697))))

(declare-fun bs!847578 () Bool)

(assert (= bs!847578 (and b!4511837 d!1387654)))

(assert (=> bs!847578 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689536) (= lambda!170744 lambda!170685))))

(assert (=> bs!847569 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689504) (= lambda!170744 lambda!170671))))

(assert (=> bs!847574 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689058) (= lambda!170744 lambda!170648))))

(declare-fun bs!847579 () Bool)

(assert (= bs!847579 (and b!4511837 d!1387668)))

(assert (=> bs!847579 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689561) (= lambda!170744 lambda!170692))))

(declare-fun bs!847580 () Bool)

(assert (= bs!847580 (and b!4511837 d!1387526)))

(assert (=> bs!847580 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689430) (= lambda!170744 lambda!170655))))

(declare-fun bs!847581 () Bool)

(assert (= bs!847581 (and b!4511837 d!1387530)))

(assert (=> bs!847581 (not (= lambda!170744 lambda!170658))))

(assert (=> bs!847576 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689441) (= lambda!170744 lambda!170654))))

(declare-fun bs!847583 () Bool)

(assert (= bs!847583 (and b!4511837 d!1387458)))

(assert (=> bs!847583 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689398) (= lambda!170744 lambda!170650))))

(declare-fun bs!847584 () Bool)

(assert (= bs!847584 (and b!4511837 d!1387732)))

(assert (=> bs!847584 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689409) (= lambda!170744 lambda!170705))))

(declare-fun bs!847585 () Bool)

(assert (= bs!847585 (and b!4511837 b!4511070)))

(assert (=> bs!847585 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689058) (= lambda!170744 lambda!170647))))

(assert (=> bs!847571 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689547) (= lambda!170744 lambda!170684))))

(declare-fun bs!847586 () Bool)

(assert (= bs!847586 (and b!4511837 b!4511113)))

(assert (=> bs!847586 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170744 lambda!170652))))

(assert (=> bs!847572 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689572) (= lambda!170744 lambda!170691))))

(declare-fun bs!847587 () Bool)

(assert (= bs!847587 (and b!4511837 d!1387694)))

(assert (=> bs!847587 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170744 lambda!170696))))

(assert (=> b!4511837 true))

(declare-fun bs!847588 () Bool)

(declare-fun b!4511833 () Bool)

(assert (= bs!847588 (and b!4511833 d!1387722)))

(declare-fun lambda!170745 () Int)

(assert (=> bs!847588 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689618) (= lambda!170745 lambda!170700))))

(declare-fun bs!847589 () Bool)

(assert (= bs!847589 (and b!4511833 b!4511307)))

(assert (=> bs!847589 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170745 lambda!170689))))

(declare-fun bs!847590 () Bool)

(assert (= bs!847590 (and b!4511833 b!4511411)))

(assert (=> bs!847590 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170745 lambda!170698))))

(declare-fun bs!847591 () Bool)

(assert (= bs!847591 (and b!4511833 b!4511188)))

(assert (=> bs!847591 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170745 lambda!170670))))

(declare-fun bs!847592 () Bool)

(assert (= bs!847592 (and b!4511833 b!4511291)))

(assert (=> bs!847592 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170745 lambda!170682))))

(declare-fun bs!847594 () Bool)

(assert (= bs!847594 (and b!4511833 b!4511287)))

(assert (=> bs!847594 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170745 lambda!170683))))

(declare-fun bs!847595 () Bool)

(assert (= bs!847595 (and b!4511833 b!4511303)))

(assert (=> bs!847595 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170745 lambda!170690))))

(declare-fun bs!847596 () Bool)

(assert (= bs!847596 (and b!4511833 d!1387590)))

(assert (=> bs!847596 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689493) (= lambda!170745 lambda!170672))))

(declare-fun bs!847598 () Bool)

(assert (= bs!847598 (and b!4511833 b!4511066)))

(assert (=> bs!847598 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689409) (= lambda!170745 lambda!170649))))

(declare-fun bs!847599 () Bool)

(assert (= bs!847599 (and b!4511833 b!4511192)))

(assert (=> bs!847599 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170745 lambda!170669))))

(declare-fun bs!847600 () Bool)

(assert (= bs!847600 (and b!4511833 b!4511109)))

(assert (=> bs!847600 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170745 lambda!170653))))

(assert (=> bs!847590 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689629) (= lambda!170745 lambda!170699))))

(declare-fun bs!847601 () Bool)

(assert (= bs!847601 (and b!4511833 b!4511415)))

(assert (=> bs!847601 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170745 lambda!170697))))

(declare-fun bs!847602 () Bool)

(assert (= bs!847602 (and b!4511833 d!1387654)))

(assert (=> bs!847602 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689536) (= lambda!170745 lambda!170685))))

(assert (=> bs!847591 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689504) (= lambda!170745 lambda!170671))))

(assert (=> bs!847598 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689058) (= lambda!170745 lambda!170648))))

(declare-fun bs!847603 () Bool)

(assert (= bs!847603 (and b!4511833 d!1387668)))

(assert (=> bs!847603 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689561) (= lambda!170745 lambda!170692))))

(declare-fun bs!847604 () Bool)

(assert (= bs!847604 (and b!4511833 d!1387526)))

(assert (=> bs!847604 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689430) (= lambda!170745 lambda!170655))))

(declare-fun bs!847605 () Bool)

(assert (= bs!847605 (and b!4511833 d!1387530)))

(assert (=> bs!847605 (not (= lambda!170745 lambda!170658))))

(assert (=> bs!847600 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689441) (= lambda!170745 lambda!170654))))

(declare-fun bs!847607 () Bool)

(assert (= bs!847607 (and b!4511833 d!1387458)))

(assert (=> bs!847607 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689398) (= lambda!170745 lambda!170650))))

(declare-fun bs!847608 () Bool)

(assert (= bs!847608 (and b!4511833 d!1387732)))

(assert (=> bs!847608 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689409) (= lambda!170745 lambda!170705))))

(declare-fun bs!847609 () Bool)

(assert (= bs!847609 (and b!4511833 b!4511070)))

(assert (=> bs!847609 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689058) (= lambda!170745 lambda!170647))))

(assert (=> bs!847594 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689547) (= lambda!170745 lambda!170684))))

(declare-fun bs!847610 () Bool)

(assert (= bs!847610 (and b!4511833 b!4511113)))

(assert (=> bs!847610 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170745 lambda!170652))))

(assert (=> bs!847595 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689572) (= lambda!170745 lambda!170691))))

(declare-fun bs!847611 () Bool)

(assert (= bs!847611 (and b!4511833 b!4511837)))

(assert (=> bs!847611 (= lambda!170745 lambda!170744)))

(declare-fun bs!847612 () Bool)

(assert (= bs!847612 (and b!4511833 d!1387694)))

(assert (=> bs!847612 (= (= (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689048) (= lambda!170745 lambda!170696))))

(assert (=> b!4511833 true))

(declare-fun lambda!170748 () Int)

(declare-fun lt!1689888 () ListMap!3557)

(assert (=> bs!847588 (= (= lt!1689888 lt!1689618) (= lambda!170748 lambda!170700))))

(assert (=> bs!847590 (= (= lt!1689888 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170748 lambda!170698))))

(assert (=> bs!847591 (= (= lt!1689888 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170748 lambda!170670))))

(assert (=> bs!847592 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170748 lambda!170682))))

(assert (=> bs!847594 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170748 lambda!170683))))

(assert (=> bs!847595 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170748 lambda!170690))))

(assert (=> bs!847596 (= (= lt!1689888 lt!1689493) (= lambda!170748 lambda!170672))))

(assert (=> bs!847598 (= (= lt!1689888 lt!1689409) (= lambda!170748 lambda!170649))))

(assert (=> bs!847599 (= (= lt!1689888 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170748 lambda!170669))))

(assert (=> bs!847600 (= (= lt!1689888 lt!1689048) (= lambda!170748 lambda!170653))))

(assert (=> bs!847590 (= (= lt!1689888 lt!1689629) (= lambda!170748 lambda!170699))))

(assert (=> bs!847601 (= (= lt!1689888 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170748 lambda!170697))))

(assert (=> bs!847602 (= (= lt!1689888 lt!1689536) (= lambda!170748 lambda!170685))))

(assert (=> bs!847591 (= (= lt!1689888 lt!1689504) (= lambda!170748 lambda!170671))))

(assert (=> bs!847589 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170748 lambda!170689))))

(assert (=> b!4511833 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170748 lambda!170745))))

(assert (=> bs!847598 (= (= lt!1689888 lt!1689058) (= lambda!170748 lambda!170648))))

(assert (=> bs!847603 (= (= lt!1689888 lt!1689561) (= lambda!170748 lambda!170692))))

(assert (=> bs!847604 (= (= lt!1689888 lt!1689430) (= lambda!170748 lambda!170655))))

(assert (=> bs!847605 (not (= lambda!170748 lambda!170658))))

(assert (=> bs!847600 (= (= lt!1689888 lt!1689441) (= lambda!170748 lambda!170654))))

(assert (=> bs!847607 (= (= lt!1689888 lt!1689398) (= lambda!170748 lambda!170650))))

(assert (=> bs!847608 (= (= lt!1689888 lt!1689409) (= lambda!170748 lambda!170705))))

(assert (=> bs!847609 (= (= lt!1689888 lt!1689058) (= lambda!170748 lambda!170647))))

(assert (=> bs!847594 (= (= lt!1689888 lt!1689547) (= lambda!170748 lambda!170684))))

(assert (=> bs!847610 (= (= lt!1689888 lt!1689048) (= lambda!170748 lambda!170652))))

(assert (=> bs!847595 (= (= lt!1689888 lt!1689572) (= lambda!170748 lambda!170691))))

(assert (=> bs!847611 (= (= lt!1689888 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170748 lambda!170744))))

(assert (=> bs!847612 (= (= lt!1689888 lt!1689048) (= lambda!170748 lambda!170696))))

(assert (=> b!4511833 true))

(declare-fun bs!847613 () Bool)

(declare-fun d!1387954 () Bool)

(assert (= bs!847613 (and d!1387954 d!1387722)))

(declare-fun lt!1689877 () ListMap!3557)

(declare-fun lambda!170749 () Int)

(assert (=> bs!847613 (= (= lt!1689877 lt!1689618) (= lambda!170749 lambda!170700))))

(declare-fun bs!847614 () Bool)

(assert (= bs!847614 (and d!1387954 b!4511411)))

(assert (=> bs!847614 (= (= lt!1689877 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170749 lambda!170698))))

(declare-fun bs!847615 () Bool)

(assert (= bs!847615 (and d!1387954 b!4511188)))

(assert (=> bs!847615 (= (= lt!1689877 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170749 lambda!170670))))

(declare-fun bs!847616 () Bool)

(assert (= bs!847616 (and d!1387954 b!4511291)))

(assert (=> bs!847616 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170749 lambda!170682))))

(declare-fun bs!847617 () Bool)

(assert (= bs!847617 (and d!1387954 b!4511287)))

(assert (=> bs!847617 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170749 lambda!170683))))

(declare-fun bs!847618 () Bool)

(assert (= bs!847618 (and d!1387954 b!4511303)))

(assert (=> bs!847618 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170749 lambda!170690))))

(declare-fun bs!847619 () Bool)

(assert (= bs!847619 (and d!1387954 d!1387590)))

(assert (=> bs!847619 (= (= lt!1689877 lt!1689493) (= lambda!170749 lambda!170672))))

(declare-fun bs!847620 () Bool)

(assert (= bs!847620 (and d!1387954 b!4511066)))

(assert (=> bs!847620 (= (= lt!1689877 lt!1689409) (= lambda!170749 lambda!170649))))

(declare-fun bs!847621 () Bool)

(assert (= bs!847621 (and d!1387954 b!4511192)))

(assert (=> bs!847621 (= (= lt!1689877 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170749 lambda!170669))))

(declare-fun bs!847622 () Bool)

(assert (= bs!847622 (and d!1387954 b!4511109)))

(assert (=> bs!847622 (= (= lt!1689877 lt!1689048) (= lambda!170749 lambda!170653))))

(assert (=> bs!847614 (= (= lt!1689877 lt!1689629) (= lambda!170749 lambda!170699))))

(declare-fun bs!847623 () Bool)

(assert (= bs!847623 (and d!1387954 b!4511415)))

(assert (=> bs!847623 (= (= lt!1689877 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170749 lambda!170697))))

(declare-fun bs!847624 () Bool)

(assert (= bs!847624 (and d!1387954 d!1387654)))

(assert (=> bs!847624 (= (= lt!1689877 lt!1689536) (= lambda!170749 lambda!170685))))

(assert (=> bs!847615 (= (= lt!1689877 lt!1689504) (= lambda!170749 lambda!170671))))

(declare-fun bs!847625 () Bool)

(assert (= bs!847625 (and d!1387954 b!4511307)))

(assert (=> bs!847625 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170749 lambda!170689))))

(declare-fun bs!847626 () Bool)

(assert (= bs!847626 (and d!1387954 b!4511833)))

(assert (=> bs!847626 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170749 lambda!170745))))

(assert (=> bs!847620 (= (= lt!1689877 lt!1689058) (= lambda!170749 lambda!170648))))

(declare-fun bs!847629 () Bool)

(assert (= bs!847629 (and d!1387954 d!1387668)))

(assert (=> bs!847629 (= (= lt!1689877 lt!1689561) (= lambda!170749 lambda!170692))))

(declare-fun bs!847630 () Bool)

(assert (= bs!847630 (and d!1387954 d!1387526)))

(assert (=> bs!847630 (= (= lt!1689877 lt!1689430) (= lambda!170749 lambda!170655))))

(declare-fun bs!847631 () Bool)

(assert (= bs!847631 (and d!1387954 d!1387530)))

(assert (=> bs!847631 (not (= lambda!170749 lambda!170658))))

(assert (=> bs!847626 (= (= lt!1689877 lt!1689888) (= lambda!170749 lambda!170748))))

(assert (=> bs!847622 (= (= lt!1689877 lt!1689441) (= lambda!170749 lambda!170654))))

(declare-fun bs!847634 () Bool)

(assert (= bs!847634 (and d!1387954 d!1387458)))

(assert (=> bs!847634 (= (= lt!1689877 lt!1689398) (= lambda!170749 lambda!170650))))

(declare-fun bs!847635 () Bool)

(assert (= bs!847635 (and d!1387954 d!1387732)))

(assert (=> bs!847635 (= (= lt!1689877 lt!1689409) (= lambda!170749 lambda!170705))))

(declare-fun bs!847636 () Bool)

(assert (= bs!847636 (and d!1387954 b!4511070)))

(assert (=> bs!847636 (= (= lt!1689877 lt!1689058) (= lambda!170749 lambda!170647))))

(assert (=> bs!847617 (= (= lt!1689877 lt!1689547) (= lambda!170749 lambda!170684))))

(declare-fun bs!847637 () Bool)

(assert (= bs!847637 (and d!1387954 b!4511113)))

(assert (=> bs!847637 (= (= lt!1689877 lt!1689048) (= lambda!170749 lambda!170652))))

(assert (=> bs!847618 (= (= lt!1689877 lt!1689572) (= lambda!170749 lambda!170691))))

(declare-fun bs!847638 () Bool)

(assert (= bs!847638 (and d!1387954 b!4511837)))

(assert (=> bs!847638 (= (= lt!1689877 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170749 lambda!170744))))

(declare-fun bs!847639 () Bool)

(assert (= bs!847639 (and d!1387954 d!1387694)))

(assert (=> bs!847639 (= (= lt!1689877 lt!1689048) (= lambda!170749 lambda!170696))))

(assert (=> d!1387954 true))

(declare-fun bm!314189 () Bool)

(declare-fun call!314194 () Unit!93482)

(assert (=> bm!314189 (= call!314194 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(declare-fun c!769662 () Bool)

(declare-fun call!314195 () Bool)

(declare-fun bm!314190 () Bool)

(assert (=> bm!314190 (= call!314195 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (ite c!769662 lambda!170744 lambda!170748)))))

(declare-fun e!2810767 () ListMap!3557)

(assert (=> b!4511833 (= e!2810767 lt!1689888)))

(declare-fun lt!1689873 () ListMap!3557)

(assert (=> b!4511833 (= lt!1689873 (+!1508 (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(assert (=> b!4511833 (= lt!1689888 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (toList!4296 lm!1477)))) (+!1508 (extractMap!1200 (t!357685 (toList!4296 lm!1477))) (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))))

(declare-fun lt!1689885 () Unit!93482)

(assert (=> b!4511833 (= lt!1689885 call!314194)))

(declare-fun call!314196 () Bool)

(assert (=> b!4511833 call!314196))

(declare-fun lt!1689881 () Unit!93482)

(assert (=> b!4511833 (= lt!1689881 lt!1689885)))

(assert (=> b!4511833 (forall!10225 (toList!4295 lt!1689873) lambda!170748)))

(declare-fun lt!1689874 () Unit!93482)

(declare-fun Unit!93701 () Unit!93482)

(assert (=> b!4511833 (= lt!1689874 Unit!93701)))

(assert (=> b!4511833 (forall!10225 (t!357684 (_2!28800 (h!56436 (toList!4296 lm!1477)))) lambda!170748)))

(declare-fun lt!1689884 () Unit!93482)

(declare-fun Unit!93702 () Unit!93482)

(assert (=> b!4511833 (= lt!1689884 Unit!93702)))

(declare-fun lt!1689891 () Unit!93482)

(declare-fun Unit!93703 () Unit!93482)

(assert (=> b!4511833 (= lt!1689891 Unit!93703)))

(declare-fun lt!1689880 () Unit!93482)

(assert (=> b!4511833 (= lt!1689880 (forallContained!2477 (toList!4295 lt!1689873) lambda!170748 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(assert (=> b!4511833 (contains!13299 lt!1689873 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(declare-fun lt!1689892 () Unit!93482)

(declare-fun Unit!93704 () Unit!93482)

(assert (=> b!4511833 (= lt!1689892 Unit!93704)))

(assert (=> b!4511833 (contains!13299 lt!1689888 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))))))

(declare-fun lt!1689887 () Unit!93482)

(declare-fun Unit!93705 () Unit!93482)

(assert (=> b!4511833 (= lt!1689887 Unit!93705)))

(assert (=> b!4511833 (forall!10225 (_2!28800 (h!56436 (toList!4296 lm!1477))) lambda!170748)))

(declare-fun lt!1689882 () Unit!93482)

(declare-fun Unit!93706 () Unit!93482)

(assert (=> b!4511833 (= lt!1689882 Unit!93706)))

(assert (=> b!4511833 (forall!10225 (toList!4295 lt!1689873) lambda!170748)))

(declare-fun lt!1689890 () Unit!93482)

(declare-fun Unit!93707 () Unit!93482)

(assert (=> b!4511833 (= lt!1689890 Unit!93707)))

(declare-fun lt!1689876 () Unit!93482)

(declare-fun Unit!93709 () Unit!93482)

(assert (=> b!4511833 (= lt!1689876 Unit!93709)))

(declare-fun lt!1689879 () Unit!93482)

(assert (=> b!4511833 (= lt!1689879 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (toList!4296 lm!1477))) lt!1689888 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))))

(assert (=> b!4511833 call!314195))

(declare-fun lt!1689872 () Unit!93482)

(assert (=> b!4511833 (= lt!1689872 lt!1689879)))

(assert (=> b!4511833 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lambda!170748)))

(declare-fun lt!1689878 () Unit!93482)

(declare-fun Unit!93710 () Unit!93482)

(assert (=> b!4511833 (= lt!1689878 Unit!93710)))

(declare-fun res!1876802 () Bool)

(assert (=> b!4511833 (= res!1876802 (forall!10225 (_2!28800 (h!56436 (toList!4296 lm!1477))) lambda!170748))))

(declare-fun e!2810768 () Bool)

(assert (=> b!4511833 (=> (not res!1876802) (not e!2810768))))

(assert (=> b!4511833 e!2810768))

(declare-fun lt!1689889 () Unit!93482)

(declare-fun Unit!93711 () Unit!93482)

(assert (=> b!4511833 (= lt!1689889 Unit!93711)))

(declare-fun b!4511834 () Bool)

(declare-fun e!2810766 () Bool)

(assert (=> b!4511834 (= e!2810766 (invariantList!1001 (toList!4295 lt!1689877)))))

(declare-fun b!4511835 () Bool)

(declare-fun res!1876803 () Bool)

(assert (=> b!4511835 (=> (not res!1876803) (not e!2810766))))

(assert (=> b!4511835 (= res!1876803 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lambda!170749))))

(declare-fun b!4511836 () Bool)

(assert (=> b!4511836 (= e!2810768 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lambda!170748))))

(assert (=> b!4511837 (= e!2810767 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))

(declare-fun lt!1689883 () Unit!93482)

(assert (=> b!4511837 (= lt!1689883 call!314194)))

(assert (=> b!4511837 call!314196))

(declare-fun lt!1689886 () Unit!93482)

(assert (=> b!4511837 (= lt!1689886 lt!1689883)))

(assert (=> b!4511837 call!314195))

(declare-fun lt!1689875 () Unit!93482)

(declare-fun Unit!93713 () Unit!93482)

(assert (=> b!4511837 (= lt!1689875 Unit!93713)))

(assert (=> d!1387954 e!2810766))

(declare-fun res!1876804 () Bool)

(assert (=> d!1387954 (=> (not res!1876804) (not e!2810766))))

(assert (=> d!1387954 (= res!1876804 (forall!10225 (_2!28800 (h!56436 (toList!4296 lm!1477))) lambda!170749))))

(assert (=> d!1387954 (= lt!1689877 e!2810767)))

(assert (=> d!1387954 (= c!769662 ((_ is Nil!50598) (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(assert (=> d!1387954 (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477))))))

(assert (=> d!1387954 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lm!1477))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) lt!1689877)))

(declare-fun bm!314191 () Bool)

(assert (=> bm!314191 (= call!314196 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (ite c!769662 lambda!170744 lambda!170745)))))

(assert (= (and d!1387954 c!769662) b!4511837))

(assert (= (and d!1387954 (not c!769662)) b!4511833))

(assert (= (and b!4511833 res!1876802) b!4511836))

(assert (= (or b!4511837 b!4511833) bm!314191))

(assert (= (or b!4511837 b!4511833) bm!314190))

(assert (= (or b!4511837 b!4511833) bm!314189))

(assert (= (and d!1387954 res!1876804) b!4511835))

(assert (= (and b!4511835 res!1876803) b!4511834))

(declare-fun m!5252259 () Bool)

(assert (=> b!4511833 m!5252259))

(declare-fun m!5252261 () Bool)

(assert (=> b!4511833 m!5252261))

(declare-fun m!5252263 () Bool)

(assert (=> b!4511833 m!5252263))

(declare-fun m!5252265 () Bool)

(assert (=> b!4511833 m!5252265))

(assert (=> b!4511833 m!5250243))

(declare-fun m!5252267 () Bool)

(assert (=> b!4511833 m!5252267))

(declare-fun m!5252269 () Bool)

(assert (=> b!4511833 m!5252269))

(declare-fun m!5252271 () Bool)

(assert (=> b!4511833 m!5252271))

(declare-fun m!5252273 () Bool)

(assert (=> b!4511833 m!5252273))

(assert (=> b!4511833 m!5250243))

(assert (=> b!4511833 m!5252269))

(assert (=> b!4511833 m!5252273))

(declare-fun m!5252275 () Bool)

(assert (=> b!4511833 m!5252275))

(assert (=> b!4511833 m!5252275))

(declare-fun m!5252277 () Bool)

(assert (=> b!4511833 m!5252277))

(assert (=> b!4511836 m!5252259))

(declare-fun m!5252279 () Bool)

(assert (=> bm!314190 m!5252279))

(assert (=> bm!314189 m!5250243))

(declare-fun m!5252281 () Bool)

(assert (=> bm!314189 m!5252281))

(declare-fun m!5252283 () Bool)

(assert (=> b!4511835 m!5252283))

(declare-fun m!5252285 () Bool)

(assert (=> b!4511834 m!5252285))

(declare-fun m!5252287 () Bool)

(assert (=> bm!314191 m!5252287))

(declare-fun m!5252289 () Bool)

(assert (=> d!1387954 m!5252289))

(assert (=> d!1387954 m!5251055))

(assert (=> b!4511153 d!1387954))

(assert (=> b!4511153 d!1387448))

(declare-fun bs!847660 () Bool)

(declare-fun b!4511895 () Bool)

(assert (= bs!847660 (and b!4511895 d!1387722)))

(declare-fun lambda!170754 () Int)

(assert (=> bs!847660 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689618) (= lambda!170754 lambda!170700))))

(declare-fun bs!847662 () Bool)

(assert (= bs!847662 (and b!4511895 b!4511411)))

(assert (=> bs!847662 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170754 lambda!170698))))

(declare-fun bs!847664 () Bool)

(assert (= bs!847664 (and b!4511895 b!4511188)))

(assert (=> bs!847664 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170754 lambda!170670))))

(declare-fun bs!847666 () Bool)

(assert (= bs!847666 (and b!4511895 b!4511291)))

(assert (=> bs!847666 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170754 lambda!170682))))

(declare-fun bs!847668 () Bool)

(assert (= bs!847668 (and b!4511895 b!4511287)))

(assert (=> bs!847668 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170754 lambda!170683))))

(declare-fun bs!847670 () Bool)

(assert (= bs!847670 (and b!4511895 b!4511303)))

(assert (=> bs!847670 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170754 lambda!170690))))

(declare-fun bs!847672 () Bool)

(assert (= bs!847672 (and b!4511895 d!1387954)))

(assert (=> bs!847672 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689877) (= lambda!170754 lambda!170749))))

(declare-fun bs!847674 () Bool)

(assert (= bs!847674 (and b!4511895 d!1387590)))

(assert (=> bs!847674 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689493) (= lambda!170754 lambda!170672))))

(declare-fun bs!847676 () Bool)

(assert (= bs!847676 (and b!4511895 b!4511066)))

(assert (=> bs!847676 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689409) (= lambda!170754 lambda!170649))))

(declare-fun bs!847678 () Bool)

(assert (= bs!847678 (and b!4511895 b!4511192)))

(assert (=> bs!847678 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170754 lambda!170669))))

(declare-fun bs!847680 () Bool)

(assert (= bs!847680 (and b!4511895 b!4511109)))

(assert (=> bs!847680 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170754 lambda!170653))))

(assert (=> bs!847662 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689629) (= lambda!170754 lambda!170699))))

(declare-fun bs!847683 () Bool)

(assert (= bs!847683 (and b!4511895 b!4511415)))

(assert (=> bs!847683 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170754 lambda!170697))))

(declare-fun bs!847684 () Bool)

(assert (= bs!847684 (and b!4511895 d!1387654)))

(assert (=> bs!847684 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689536) (= lambda!170754 lambda!170685))))

(assert (=> bs!847664 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689504) (= lambda!170754 lambda!170671))))

(declare-fun bs!847687 () Bool)

(assert (= bs!847687 (and b!4511895 b!4511307)))

(assert (=> bs!847687 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170754 lambda!170689))))

(declare-fun bs!847689 () Bool)

(assert (= bs!847689 (and b!4511895 b!4511833)))

(assert (=> bs!847689 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170754 lambda!170745))))

(assert (=> bs!847676 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689058) (= lambda!170754 lambda!170648))))

(declare-fun bs!847690 () Bool)

(assert (= bs!847690 (and b!4511895 d!1387668)))

(assert (=> bs!847690 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689561) (= lambda!170754 lambda!170692))))

(declare-fun bs!847691 () Bool)

(assert (= bs!847691 (and b!4511895 d!1387526)))

(assert (=> bs!847691 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689430) (= lambda!170754 lambda!170655))))

(declare-fun bs!847692 () Bool)

(assert (= bs!847692 (and b!4511895 d!1387530)))

(assert (=> bs!847692 (not (= lambda!170754 lambda!170658))))

(assert (=> bs!847689 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689888) (= lambda!170754 lambda!170748))))

(assert (=> bs!847680 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689441) (= lambda!170754 lambda!170654))))

(declare-fun bs!847693 () Bool)

(assert (= bs!847693 (and b!4511895 d!1387458)))

(assert (=> bs!847693 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689398) (= lambda!170754 lambda!170650))))

(declare-fun bs!847694 () Bool)

(assert (= bs!847694 (and b!4511895 d!1387732)))

(assert (=> bs!847694 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689409) (= lambda!170754 lambda!170705))))

(declare-fun bs!847695 () Bool)

(assert (= bs!847695 (and b!4511895 b!4511070)))

(assert (=> bs!847695 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689058) (= lambda!170754 lambda!170647))))

(assert (=> bs!847668 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689547) (= lambda!170754 lambda!170684))))

(declare-fun bs!847696 () Bool)

(assert (= bs!847696 (and b!4511895 b!4511113)))

(assert (=> bs!847696 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170754 lambda!170652))))

(assert (=> bs!847670 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689572) (= lambda!170754 lambda!170691))))

(declare-fun bs!847697 () Bool)

(assert (= bs!847697 (and b!4511895 b!4511837)))

(assert (=> bs!847697 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170754 lambda!170744))))

(declare-fun bs!847698 () Bool)

(assert (= bs!847698 (and b!4511895 d!1387694)))

(assert (=> bs!847698 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170754 lambda!170696))))

(assert (=> b!4511895 true))

(declare-fun bs!847699 () Bool)

(declare-fun b!4511891 () Bool)

(assert (= bs!847699 (and b!4511891 d!1387722)))

(declare-fun lambda!170756 () Int)

(assert (=> bs!847699 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689618) (= lambda!170756 lambda!170700))))

(declare-fun bs!847700 () Bool)

(assert (= bs!847700 (and b!4511891 b!4511411)))

(assert (=> bs!847700 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170756 lambda!170698))))

(declare-fun bs!847701 () Bool)

(assert (= bs!847701 (and b!4511891 b!4511188)))

(assert (=> bs!847701 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170756 lambda!170670))))

(declare-fun bs!847702 () Bool)

(assert (= bs!847702 (and b!4511891 b!4511291)))

(assert (=> bs!847702 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170756 lambda!170682))))

(declare-fun bs!847703 () Bool)

(assert (= bs!847703 (and b!4511891 b!4511287)))

(assert (=> bs!847703 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170756 lambda!170683))))

(declare-fun bs!847704 () Bool)

(assert (= bs!847704 (and b!4511891 b!4511303)))

(assert (=> bs!847704 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170756 lambda!170690))))

(declare-fun bs!847705 () Bool)

(assert (= bs!847705 (and b!4511891 d!1387954)))

(assert (=> bs!847705 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689877) (= lambda!170756 lambda!170749))))

(declare-fun bs!847706 () Bool)

(assert (= bs!847706 (and b!4511891 d!1387590)))

(assert (=> bs!847706 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689493) (= lambda!170756 lambda!170672))))

(declare-fun bs!847707 () Bool)

(assert (= bs!847707 (and b!4511891 b!4511066)))

(assert (=> bs!847707 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689409) (= lambda!170756 lambda!170649))))

(declare-fun bs!847708 () Bool)

(assert (= bs!847708 (and b!4511891 b!4511192)))

(assert (=> bs!847708 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170756 lambda!170669))))

(declare-fun bs!847709 () Bool)

(assert (= bs!847709 (and b!4511891 b!4511109)))

(assert (=> bs!847709 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170756 lambda!170653))))

(assert (=> bs!847700 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689629) (= lambda!170756 lambda!170699))))

(declare-fun bs!847710 () Bool)

(assert (= bs!847710 (and b!4511891 b!4511415)))

(assert (=> bs!847710 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170756 lambda!170697))))

(declare-fun bs!847711 () Bool)

(assert (= bs!847711 (and b!4511891 d!1387654)))

(assert (=> bs!847711 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689536) (= lambda!170756 lambda!170685))))

(assert (=> bs!847701 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689504) (= lambda!170756 lambda!170671))))

(declare-fun bs!847712 () Bool)

(assert (= bs!847712 (and b!4511891 b!4511895)))

(assert (=> bs!847712 (= lambda!170756 lambda!170754)))

(declare-fun bs!847713 () Bool)

(assert (= bs!847713 (and b!4511891 b!4511307)))

(assert (=> bs!847713 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170756 lambda!170689))))

(declare-fun bs!847714 () Bool)

(assert (= bs!847714 (and b!4511891 b!4511833)))

(assert (=> bs!847714 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170756 lambda!170745))))

(assert (=> bs!847707 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689058) (= lambda!170756 lambda!170648))))

(declare-fun bs!847715 () Bool)

(assert (= bs!847715 (and b!4511891 d!1387668)))

(assert (=> bs!847715 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689561) (= lambda!170756 lambda!170692))))

(declare-fun bs!847716 () Bool)

(assert (= bs!847716 (and b!4511891 d!1387526)))

(assert (=> bs!847716 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689430) (= lambda!170756 lambda!170655))))

(declare-fun bs!847717 () Bool)

(assert (= bs!847717 (and b!4511891 d!1387530)))

(assert (=> bs!847717 (not (= lambda!170756 lambda!170658))))

(assert (=> bs!847714 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689888) (= lambda!170756 lambda!170748))))

(assert (=> bs!847709 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689441) (= lambda!170756 lambda!170654))))

(declare-fun bs!847719 () Bool)

(assert (= bs!847719 (and b!4511891 d!1387458)))

(assert (=> bs!847719 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689398) (= lambda!170756 lambda!170650))))

(declare-fun bs!847721 () Bool)

(assert (= bs!847721 (and b!4511891 d!1387732)))

(assert (=> bs!847721 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689409) (= lambda!170756 lambda!170705))))

(declare-fun bs!847723 () Bool)

(assert (= bs!847723 (and b!4511891 b!4511070)))

(assert (=> bs!847723 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689058) (= lambda!170756 lambda!170647))))

(assert (=> bs!847703 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689547) (= lambda!170756 lambda!170684))))

(declare-fun bs!847725 () Bool)

(assert (= bs!847725 (and b!4511891 b!4511113)))

(assert (=> bs!847725 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170756 lambda!170652))))

(assert (=> bs!847704 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689572) (= lambda!170756 lambda!170691))))

(declare-fun bs!847728 () Bool)

(assert (= bs!847728 (and b!4511891 b!4511837)))

(assert (=> bs!847728 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170756 lambda!170744))))

(declare-fun bs!847729 () Bool)

(assert (= bs!847729 (and b!4511891 d!1387694)))

(assert (=> bs!847729 (= (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689048) (= lambda!170756 lambda!170696))))

(assert (=> b!4511891 true))

(declare-fun lt!1689934 () ListMap!3557)

(declare-fun lambda!170758 () Int)

(assert (=> bs!847699 (= (= lt!1689934 lt!1689618) (= lambda!170758 lambda!170700))))

(assert (=> bs!847700 (= (= lt!1689934 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170758 lambda!170698))))

(assert (=> bs!847701 (= (= lt!1689934 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170758 lambda!170670))))

(assert (=> bs!847702 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170758 lambda!170682))))

(assert (=> bs!847703 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170758 lambda!170683))))

(assert (=> bs!847704 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170758 lambda!170690))))

(assert (=> bs!847705 (= (= lt!1689934 lt!1689877) (= lambda!170758 lambda!170749))))

(assert (=> bs!847706 (= (= lt!1689934 lt!1689493) (= lambda!170758 lambda!170672))))

(assert (=> bs!847707 (= (= lt!1689934 lt!1689409) (= lambda!170758 lambda!170649))))

(assert (=> bs!847708 (= (= lt!1689934 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170758 lambda!170669))))

(assert (=> bs!847709 (= (= lt!1689934 lt!1689048) (= lambda!170758 lambda!170653))))

(assert (=> bs!847700 (= (= lt!1689934 lt!1689629) (= lambda!170758 lambda!170699))))

(assert (=> bs!847710 (= (= lt!1689934 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170758 lambda!170697))))

(assert (=> bs!847711 (= (= lt!1689934 lt!1689536) (= lambda!170758 lambda!170685))))

(assert (=> bs!847701 (= (= lt!1689934 lt!1689504) (= lambda!170758 lambda!170671))))

(assert (=> bs!847712 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170758 lambda!170754))))

(assert (=> bs!847713 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170758 lambda!170689))))

(assert (=> bs!847714 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170758 lambda!170745))))

(assert (=> bs!847707 (= (= lt!1689934 lt!1689058) (= lambda!170758 lambda!170648))))

(assert (=> bs!847715 (= (= lt!1689934 lt!1689561) (= lambda!170758 lambda!170692))))

(assert (=> bs!847716 (= (= lt!1689934 lt!1689430) (= lambda!170758 lambda!170655))))

(assert (=> bs!847717 (not (= lambda!170758 lambda!170658))))

(assert (=> bs!847714 (= (= lt!1689934 lt!1689888) (= lambda!170758 lambda!170748))))

(assert (=> bs!847709 (= (= lt!1689934 lt!1689441) (= lambda!170758 lambda!170654))))

(assert (=> bs!847719 (= (= lt!1689934 lt!1689398) (= lambda!170758 lambda!170650))))

(assert (=> bs!847721 (= (= lt!1689934 lt!1689409) (= lambda!170758 lambda!170705))))

(assert (=> bs!847723 (= (= lt!1689934 lt!1689058) (= lambda!170758 lambda!170647))))

(assert (=> bs!847703 (= (= lt!1689934 lt!1689547) (= lambda!170758 lambda!170684))))

(assert (=> bs!847725 (= (= lt!1689934 lt!1689048) (= lambda!170758 lambda!170652))))

(assert (=> b!4511891 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170758 lambda!170756))))

(assert (=> bs!847704 (= (= lt!1689934 lt!1689572) (= lambda!170758 lambda!170691))))

(assert (=> bs!847728 (= (= lt!1689934 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170758 lambda!170744))))

(assert (=> bs!847729 (= (= lt!1689934 lt!1689048) (= lambda!170758 lambda!170696))))

(assert (=> b!4511891 true))

(declare-fun bs!847743 () Bool)

(declare-fun d!1387984 () Bool)

(assert (= bs!847743 (and d!1387984 d!1387722)))

(declare-fun lambda!170759 () Int)

(declare-fun lt!1689923 () ListMap!3557)

(assert (=> bs!847743 (= (= lt!1689923 lt!1689618) (= lambda!170759 lambda!170700))))

(declare-fun bs!847744 () Bool)

(assert (= bs!847744 (and d!1387984 b!4511891)))

(assert (=> bs!847744 (= (= lt!1689923 lt!1689934) (= lambda!170759 lambda!170758))))

(declare-fun bs!847745 () Bool)

(assert (= bs!847745 (and d!1387984 b!4511411)))

(assert (=> bs!847745 (= (= lt!1689923 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170759 lambda!170698))))

(declare-fun bs!847746 () Bool)

(assert (= bs!847746 (and d!1387984 b!4511188)))

(assert (=> bs!847746 (= (= lt!1689923 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170759 lambda!170670))))

(declare-fun bs!847747 () Bool)

(assert (= bs!847747 (and d!1387984 b!4511291)))

(assert (=> bs!847747 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170759 lambda!170682))))

(declare-fun bs!847748 () Bool)

(assert (= bs!847748 (and d!1387984 b!4511287)))

(assert (=> bs!847748 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170759 lambda!170683))))

(declare-fun bs!847749 () Bool)

(assert (= bs!847749 (and d!1387984 b!4511303)))

(assert (=> bs!847749 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170759 lambda!170690))))

(declare-fun bs!847750 () Bool)

(assert (= bs!847750 (and d!1387984 d!1387954)))

(assert (=> bs!847750 (= (= lt!1689923 lt!1689877) (= lambda!170759 lambda!170749))))

(declare-fun bs!847751 () Bool)

(assert (= bs!847751 (and d!1387984 d!1387590)))

(assert (=> bs!847751 (= (= lt!1689923 lt!1689493) (= lambda!170759 lambda!170672))))

(declare-fun bs!847752 () Bool)

(assert (= bs!847752 (and d!1387984 b!4511066)))

(assert (=> bs!847752 (= (= lt!1689923 lt!1689409) (= lambda!170759 lambda!170649))))

(declare-fun bs!847753 () Bool)

(assert (= bs!847753 (and d!1387984 b!4511192)))

(assert (=> bs!847753 (= (= lt!1689923 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170759 lambda!170669))))

(declare-fun bs!847754 () Bool)

(assert (= bs!847754 (and d!1387984 b!4511109)))

(assert (=> bs!847754 (= (= lt!1689923 lt!1689048) (= lambda!170759 lambda!170653))))

(assert (=> bs!847745 (= (= lt!1689923 lt!1689629) (= lambda!170759 lambda!170699))))

(declare-fun bs!847755 () Bool)

(assert (= bs!847755 (and d!1387984 b!4511415)))

(assert (=> bs!847755 (= (= lt!1689923 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170759 lambda!170697))))

(declare-fun bs!847756 () Bool)

(assert (= bs!847756 (and d!1387984 d!1387654)))

(assert (=> bs!847756 (= (= lt!1689923 lt!1689536) (= lambda!170759 lambda!170685))))

(assert (=> bs!847746 (= (= lt!1689923 lt!1689504) (= lambda!170759 lambda!170671))))

(declare-fun bs!847758 () Bool)

(assert (= bs!847758 (and d!1387984 b!4511895)))

(assert (=> bs!847758 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170759 lambda!170754))))

(declare-fun bs!847759 () Bool)

(assert (= bs!847759 (and d!1387984 b!4511307)))

(assert (=> bs!847759 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170759 lambda!170689))))

(declare-fun bs!847760 () Bool)

(assert (= bs!847760 (and d!1387984 b!4511833)))

(assert (=> bs!847760 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170759 lambda!170745))))

(assert (=> bs!847752 (= (= lt!1689923 lt!1689058) (= lambda!170759 lambda!170648))))

(declare-fun bs!847761 () Bool)

(assert (= bs!847761 (and d!1387984 d!1387668)))

(assert (=> bs!847761 (= (= lt!1689923 lt!1689561) (= lambda!170759 lambda!170692))))

(declare-fun bs!847762 () Bool)

(assert (= bs!847762 (and d!1387984 d!1387526)))

(assert (=> bs!847762 (= (= lt!1689923 lt!1689430) (= lambda!170759 lambda!170655))))

(declare-fun bs!847763 () Bool)

(assert (= bs!847763 (and d!1387984 d!1387530)))

(assert (=> bs!847763 (not (= lambda!170759 lambda!170658))))

(assert (=> bs!847760 (= (= lt!1689923 lt!1689888) (= lambda!170759 lambda!170748))))

(assert (=> bs!847754 (= (= lt!1689923 lt!1689441) (= lambda!170759 lambda!170654))))

(declare-fun bs!847764 () Bool)

(assert (= bs!847764 (and d!1387984 d!1387458)))

(assert (=> bs!847764 (= (= lt!1689923 lt!1689398) (= lambda!170759 lambda!170650))))

(declare-fun bs!847765 () Bool)

(assert (= bs!847765 (and d!1387984 d!1387732)))

(assert (=> bs!847765 (= (= lt!1689923 lt!1689409) (= lambda!170759 lambda!170705))))

(declare-fun bs!847766 () Bool)

(assert (= bs!847766 (and d!1387984 b!4511070)))

(assert (=> bs!847766 (= (= lt!1689923 lt!1689058) (= lambda!170759 lambda!170647))))

(assert (=> bs!847748 (= (= lt!1689923 lt!1689547) (= lambda!170759 lambda!170684))))

(declare-fun bs!847767 () Bool)

(assert (= bs!847767 (and d!1387984 b!4511113)))

(assert (=> bs!847767 (= (= lt!1689923 lt!1689048) (= lambda!170759 lambda!170652))))

(assert (=> bs!847744 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170759 lambda!170756))))

(assert (=> bs!847749 (= (= lt!1689923 lt!1689572) (= lambda!170759 lambda!170691))))

(declare-fun bs!847768 () Bool)

(assert (= bs!847768 (and d!1387984 b!4511837)))

(assert (=> bs!847768 (= (= lt!1689923 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170759 lambda!170744))))

(declare-fun bs!847769 () Bool)

(assert (= bs!847769 (and d!1387984 d!1387694)))

(assert (=> bs!847769 (= (= lt!1689923 lt!1689048) (= lambda!170759 lambda!170696))))

(assert (=> d!1387984 true))

(declare-fun bm!314195 () Bool)

(declare-fun call!314200 () Unit!93482)

(assert (=> bm!314195 (= call!314200 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))))))

(declare-fun call!314201 () Bool)

(declare-fun bm!314196 () Bool)

(declare-fun c!769683 () Bool)

(assert (=> bm!314196 (= call!314201 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (ite c!769683 lambda!170754 lambda!170758)))))

(declare-fun e!2810800 () ListMap!3557)

(assert (=> b!4511891 (= e!2810800 lt!1689934)))

(declare-fun lt!1689919 () ListMap!3557)

(assert (=> b!4511891 (= lt!1689919 (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051))))))))

(assert (=> b!4511891 (= lt!1689934 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689051)))) (+!1508 (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051)))))))))

(declare-fun lt!1689931 () Unit!93482)

(assert (=> b!4511891 (= lt!1689931 call!314200)))

(declare-fun call!314202 () Bool)

(assert (=> b!4511891 call!314202))

(declare-fun lt!1689927 () Unit!93482)

(assert (=> b!4511891 (= lt!1689927 lt!1689931)))

(assert (=> b!4511891 (forall!10225 (toList!4295 lt!1689919) lambda!170758)))

(declare-fun lt!1689920 () Unit!93482)

(declare-fun Unit!93720 () Unit!93482)

(assert (=> b!4511891 (= lt!1689920 Unit!93720)))

(assert (=> b!4511891 (forall!10225 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689051)))) lambda!170758)))

(declare-fun lt!1689930 () Unit!93482)

(declare-fun Unit!93721 () Unit!93482)

(assert (=> b!4511891 (= lt!1689930 Unit!93721)))

(declare-fun lt!1689937 () Unit!93482)

(declare-fun Unit!93722 () Unit!93482)

(assert (=> b!4511891 (= lt!1689937 Unit!93722)))

(declare-fun lt!1689926 () Unit!93482)

(assert (=> b!4511891 (= lt!1689926 (forallContained!2477 (toList!4295 lt!1689919) lambda!170758 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051))))))))

(assert (=> b!4511891 (contains!13299 lt!1689919 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051))))))))

(declare-fun lt!1689938 () Unit!93482)

(declare-fun Unit!93723 () Unit!93482)

(assert (=> b!4511891 (= lt!1689938 Unit!93723)))

(assert (=> b!4511891 (contains!13299 lt!1689934 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051))))))))

(declare-fun lt!1689933 () Unit!93482)

(declare-fun Unit!93724 () Unit!93482)

(assert (=> b!4511891 (= lt!1689933 Unit!93724)))

(assert (=> b!4511891 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689051))) lambda!170758)))

(declare-fun lt!1689928 () Unit!93482)

(declare-fun Unit!93725 () Unit!93482)

(assert (=> b!4511891 (= lt!1689928 Unit!93725)))

(assert (=> b!4511891 (forall!10225 (toList!4295 lt!1689919) lambda!170758)))

(declare-fun lt!1689936 () Unit!93482)

(declare-fun Unit!93726 () Unit!93482)

(assert (=> b!4511891 (= lt!1689936 Unit!93726)))

(declare-fun lt!1689922 () Unit!93482)

(declare-fun Unit!93727 () Unit!93482)

(assert (=> b!4511891 (= lt!1689922 Unit!93727)))

(declare-fun lt!1689925 () Unit!93482)

(assert (=> b!4511891 (= lt!1689925 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689934 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689051)))))))))

(assert (=> b!4511891 call!314201))

(declare-fun lt!1689918 () Unit!93482)

(assert (=> b!4511891 (= lt!1689918 lt!1689925)))

(assert (=> b!4511891 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) lambda!170758)))

(declare-fun lt!1689924 () Unit!93482)

(declare-fun Unit!93728 () Unit!93482)

(assert (=> b!4511891 (= lt!1689924 Unit!93728)))

(declare-fun res!1876820 () Bool)

(assert (=> b!4511891 (= res!1876820 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689051))) lambda!170758))))

(declare-fun e!2810801 () Bool)

(assert (=> b!4511891 (=> (not res!1876820) (not e!2810801))))

(assert (=> b!4511891 e!2810801))

(declare-fun lt!1689935 () Unit!93482)

(declare-fun Unit!93729 () Unit!93482)

(assert (=> b!4511891 (= lt!1689935 Unit!93729)))

(declare-fun b!4511892 () Bool)

(declare-fun e!2810799 () Bool)

(assert (=> b!4511892 (= e!2810799 (invariantList!1001 (toList!4295 lt!1689923)))))

(declare-fun b!4511893 () Bool)

(declare-fun res!1876821 () Bool)

(assert (=> b!4511893 (=> (not res!1876821) (not e!2810799))))

(assert (=> b!4511893 (= res!1876821 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) lambda!170759))))

(declare-fun b!4511894 () Bool)

(assert (=> b!4511894 (= e!2810801 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) lambda!170758))))

(assert (=> b!4511895 (= e!2810800 (extractMap!1200 (t!357685 (toList!4296 lt!1689051))))))

(declare-fun lt!1689929 () Unit!93482)

(assert (=> b!4511895 (= lt!1689929 call!314200)))

(assert (=> b!4511895 call!314202))

(declare-fun lt!1689932 () Unit!93482)

(assert (=> b!4511895 (= lt!1689932 lt!1689929)))

(assert (=> b!4511895 call!314201))

(declare-fun lt!1689921 () Unit!93482)

(declare-fun Unit!93730 () Unit!93482)

(assert (=> b!4511895 (= lt!1689921 Unit!93730)))

(assert (=> d!1387984 e!2810799))

(declare-fun res!1876822 () Bool)

(assert (=> d!1387984 (=> (not res!1876822) (not e!2810799))))

(assert (=> d!1387984 (= res!1876822 (forall!10225 (_2!28800 (h!56436 (toList!4296 lt!1689051))) lambda!170759))))

(assert (=> d!1387984 (= lt!1689923 e!2810800)))

(assert (=> d!1387984 (= c!769683 ((_ is Nil!50598) (_2!28800 (h!56436 (toList!4296 lt!1689051)))))))

(assert (=> d!1387984 (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689051))))))

(assert (=> d!1387984 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 lt!1689051))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) lt!1689923)))

(declare-fun bm!314197 () Bool)

(assert (=> bm!314197 (= call!314202 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (ite c!769683 lambda!170754 lambda!170756)))))

(assert (= (and d!1387984 c!769683) b!4511895))

(assert (= (and d!1387984 (not c!769683)) b!4511891))

(assert (= (and b!4511891 res!1876820) b!4511894))

(assert (= (or b!4511895 b!4511891) bm!314197))

(assert (= (or b!4511895 b!4511891) bm!314196))

(assert (= (or b!4511895 b!4511891) bm!314195))

(assert (= (and d!1387984 res!1876822) b!4511893))

(assert (= (and b!4511893 res!1876821) b!4511892))

(declare-fun m!5252345 () Bool)

(assert (=> b!4511891 m!5252345))

(declare-fun m!5252347 () Bool)

(assert (=> b!4511891 m!5252347))

(declare-fun m!5252349 () Bool)

(assert (=> b!4511891 m!5252349))

(declare-fun m!5252351 () Bool)

(assert (=> b!4511891 m!5252351))

(assert (=> b!4511891 m!5250863))

(declare-fun m!5252353 () Bool)

(assert (=> b!4511891 m!5252353))

(declare-fun m!5252355 () Bool)

(assert (=> b!4511891 m!5252355))

(declare-fun m!5252357 () Bool)

(assert (=> b!4511891 m!5252357))

(declare-fun m!5252359 () Bool)

(assert (=> b!4511891 m!5252359))

(assert (=> b!4511891 m!5250863))

(assert (=> b!4511891 m!5252355))

(assert (=> b!4511891 m!5252359))

(declare-fun m!5252361 () Bool)

(assert (=> b!4511891 m!5252361))

(assert (=> b!4511891 m!5252361))

(declare-fun m!5252363 () Bool)

(assert (=> b!4511891 m!5252363))

(assert (=> b!4511894 m!5252345))

(declare-fun m!5252365 () Bool)

(assert (=> bm!314196 m!5252365))

(assert (=> bm!314195 m!5250863))

(declare-fun m!5252367 () Bool)

(assert (=> bm!314195 m!5252367))

(declare-fun m!5252369 () Bool)

(assert (=> b!4511893 m!5252369))

(declare-fun m!5252371 () Bool)

(assert (=> b!4511892 m!5252371))

(declare-fun m!5252373 () Bool)

(assert (=> bm!314197 m!5252373))

(declare-fun m!5252375 () Bool)

(assert (=> d!1387984 m!5252375))

(declare-fun m!5252377 () Bool)

(assert (=> d!1387984 m!5252377))

(assert (=> b!4511087 d!1387984))

(declare-fun bs!847770 () Bool)

(declare-fun d!1388004 () Bool)

(assert (= bs!847770 (and d!1388004 d!1387548)))

(declare-fun lambda!170760 () Int)

(assert (=> bs!847770 (= lambda!170760 lambda!170662)))

(declare-fun bs!847771 () Bool)

(assert (= bs!847771 (and d!1388004 d!1387564)))

(assert (=> bs!847771 (= lambda!170760 lambda!170667)))

(declare-fun bs!847772 () Bool)

(assert (= bs!847772 (and d!1388004 d!1387592)))

(assert (=> bs!847772 (= lambda!170760 lambda!170673)))

(declare-fun bs!847773 () Bool)

(assert (= bs!847773 (and d!1388004 d!1387406)))

(assert (=> bs!847773 (not (= lambda!170760 lambda!170553))))

(declare-fun bs!847774 () Bool)

(assert (= bs!847774 (and d!1388004 start!445924)))

(assert (=> bs!847774 (= lambda!170760 lambda!170537)))

(declare-fun bs!847775 () Bool)

(assert (= bs!847775 (and d!1388004 d!1387370)))

(assert (=> bs!847775 (= lambda!170760 lambda!170540)))

(declare-fun bs!847776 () Bool)

(assert (= bs!847776 (and d!1388004 d!1387506)))

(assert (=> bs!847776 (= lambda!170760 lambda!170651)))

(declare-fun bs!847777 () Bool)

(assert (= bs!847777 (and d!1388004 d!1387556)))

(assert (=> bs!847777 (= lambda!170760 lambda!170666)))

(declare-fun bs!847778 () Bool)

(assert (= bs!847778 (and d!1388004 d!1387582)))

(assert (=> bs!847778 (= lambda!170760 lambda!170668)))

(declare-fun bs!847779 () Bool)

(assert (= bs!847779 (and d!1388004 d!1387428)))

(assert (=> bs!847779 (= lambda!170760 lambda!170561)))

(declare-fun bs!847780 () Bool)

(assert (= bs!847780 (and d!1388004 d!1387448)))

(assert (=> bs!847780 (= lambda!170760 lambda!170562)))

(declare-fun bs!847781 () Bool)

(assert (= bs!847781 (and d!1388004 d!1387550)))

(assert (=> bs!847781 (= lambda!170760 lambda!170665)))

(declare-fun bs!847782 () Bool)

(assert (= bs!847782 (and d!1388004 d!1387536)))

(assert (=> bs!847782 (= lambda!170760 lambda!170661)))

(declare-fun bs!847783 () Bool)

(assert (= bs!847783 (and d!1388004 d!1387656)))

(assert (=> bs!847783 (= lambda!170760 lambda!170686)))

(declare-fun bs!847784 () Bool)

(assert (= bs!847784 (and d!1388004 d!1387372)))

(assert (=> bs!847784 (= lambda!170760 lambda!170543)))

(declare-fun bs!847785 () Bool)

(assert (= bs!847785 (and d!1388004 d!1387670)))

(assert (=> bs!847785 (= lambda!170760 lambda!170693)))

(declare-fun bs!847786 () Bool)

(assert (= bs!847786 (and d!1388004 d!1387450)))

(assert (=> bs!847786 (= lambda!170760 lambda!170565)))

(declare-fun lt!1689940 () ListMap!3557)

(assert (=> d!1388004 (invariantList!1001 (toList!4295 lt!1689940))))

(declare-fun e!2810812 () ListMap!3557)

(assert (=> d!1388004 (= lt!1689940 e!2810812)))

(declare-fun c!769688 () Bool)

(assert (=> d!1388004 (= c!769688 ((_ is Cons!50599) (t!357685 (toList!4296 lt!1689051))))))

(assert (=> d!1388004 (forall!10223 (t!357685 (toList!4296 lt!1689051)) lambda!170760)))

(assert (=> d!1388004 (= (extractMap!1200 (t!357685 (toList!4296 lt!1689051))) lt!1689940)))

(declare-fun b!4511910 () Bool)

(assert (=> b!4511910 (= e!2810812 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 lt!1689051)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lt!1689051))))))))

(declare-fun b!4511911 () Bool)

(assert (=> b!4511911 (= e!2810812 (ListMap!3558 Nil!50598))))

(assert (= (and d!1388004 c!769688) b!4511910))

(assert (= (and d!1388004 (not c!769688)) b!4511911))

(declare-fun m!5252379 () Bool)

(assert (=> d!1388004 m!5252379))

(declare-fun m!5252381 () Bool)

(assert (=> d!1388004 m!5252381))

(declare-fun m!5252383 () Bool)

(assert (=> b!4511910 m!5252383))

(assert (=> b!4511910 m!5252383))

(declare-fun m!5252385 () Bool)

(assert (=> b!4511910 m!5252385))

(assert (=> b!4511087 d!1388004))

(assert (=> d!1387452 d!1387648))

(declare-fun d!1388006 () Bool)

(assert (=> d!1388006 (= (get!16555 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344)) (v!44631 (getValueByKey!1060 (toList!4296 lt!1689057) hash!344)))))

(assert (=> d!1387518 d!1388006))

(assert (=> d!1387518 d!1387606))

(assert (=> d!1387562 d!1387644))

(declare-fun d!1388008 () Bool)

(declare-fun e!2810813 () Bool)

(assert (=> d!1388008 e!2810813))

(declare-fun res!1876829 () Bool)

(assert (=> d!1388008 (=> (not res!1876829) (not e!2810813))))

(declare-fun lt!1689942 () ListMap!3557)

(assert (=> d!1388008 (= res!1876829 (contains!13299 lt!1689942 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689943 () List!50722)

(assert (=> d!1388008 (= lt!1689942 (ListMap!3558 lt!1689943))))

(declare-fun lt!1689941 () Unit!93482)

(declare-fun lt!1689944 () Unit!93482)

(assert (=> d!1388008 (= lt!1689941 lt!1689944)))

(assert (=> d!1388008 (= (getValueByKey!1061 lt!1689943 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) (Some!11080 (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388008 (= lt!1689944 (lemmaContainsTupThenGetReturnValue!655 lt!1689943 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388008 (= lt!1689943 (insertNoDuplicatedKeys!271 (toList!4295 lt!1689048) (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388008 (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689942)))

(declare-fun b!4511912 () Bool)

(declare-fun res!1876830 () Bool)

(assert (=> b!4511912 (=> (not res!1876830) (not e!2810813))))

(assert (=> b!4511912 (= res!1876830 (= (getValueByKey!1061 (toList!4295 lt!1689942) (_1!28799 (h!56435 (_2!28800 lt!1689065)))) (Some!11080 (_2!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511913 () Bool)

(assert (=> b!4511913 (= e!2810813 (contains!13304 (toList!4295 lt!1689942) (h!56435 (_2!28800 lt!1689065))))))

(assert (= (and d!1388008 res!1876829) b!4511912))

(assert (= (and b!4511912 res!1876830) b!4511913))

(declare-fun m!5252387 () Bool)

(assert (=> d!1388008 m!5252387))

(declare-fun m!5252389 () Bool)

(assert (=> d!1388008 m!5252389))

(declare-fun m!5252391 () Bool)

(assert (=> d!1388008 m!5252391))

(declare-fun m!5252393 () Bool)

(assert (=> d!1388008 m!5252393))

(declare-fun m!5252395 () Bool)

(assert (=> b!4511912 m!5252395))

(declare-fun m!5252397 () Bool)

(assert (=> b!4511913 m!5252397))

(assert (=> b!4511109 d!1388008))

(declare-fun bs!847787 () Bool)

(declare-fun b!4511918 () Bool)

(assert (= bs!847787 (and b!4511918 d!1387722)))

(declare-fun lambda!170761 () Int)

(assert (=> bs!847787 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689618) (= lambda!170761 lambda!170700))))

(declare-fun bs!847788 () Bool)

(assert (= bs!847788 (and b!4511918 b!4511891)))

(assert (=> bs!847788 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689934) (= lambda!170761 lambda!170758))))

(declare-fun bs!847789 () Bool)

(assert (= bs!847789 (and b!4511918 b!4511411)))

(assert (=> bs!847789 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170761 lambda!170698))))

(declare-fun bs!847790 () Bool)

(assert (= bs!847790 (and b!4511918 b!4511291)))

(assert (=> bs!847790 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170761 lambda!170682))))

(declare-fun bs!847791 () Bool)

(assert (= bs!847791 (and b!4511918 b!4511287)))

(assert (=> bs!847791 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170761 lambda!170683))))

(declare-fun bs!847792 () Bool)

(assert (= bs!847792 (and b!4511918 b!4511303)))

(assert (=> bs!847792 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170761 lambda!170690))))

(declare-fun bs!847793 () Bool)

(assert (= bs!847793 (and b!4511918 d!1387954)))

(assert (=> bs!847793 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689877) (= lambda!170761 lambda!170749))))

(declare-fun bs!847794 () Bool)

(assert (= bs!847794 (and b!4511918 d!1387590)))

(assert (=> bs!847794 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689493) (= lambda!170761 lambda!170672))))

(declare-fun bs!847795 () Bool)

(assert (= bs!847795 (and b!4511918 b!4511066)))

(assert (=> bs!847795 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170761 lambda!170649))))

(declare-fun bs!847796 () Bool)

(assert (= bs!847796 (and b!4511918 b!4511192)))

(assert (=> bs!847796 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170761 lambda!170669))))

(declare-fun bs!847797 () Bool)

(assert (= bs!847797 (and b!4511918 b!4511109)))

(assert (=> bs!847797 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170761 lambda!170653))))

(assert (=> bs!847789 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689629) (= lambda!170761 lambda!170699))))

(declare-fun bs!847798 () Bool)

(assert (= bs!847798 (and b!4511918 b!4511415)))

(assert (=> bs!847798 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170761 lambda!170697))))

(declare-fun bs!847799 () Bool)

(assert (= bs!847799 (and b!4511918 d!1387654)))

(assert (=> bs!847799 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689536) (= lambda!170761 lambda!170685))))

(declare-fun bs!847800 () Bool)

(assert (= bs!847800 (and b!4511918 b!4511188)))

(assert (=> bs!847800 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689504) (= lambda!170761 lambda!170671))))

(declare-fun bs!847801 () Bool)

(assert (= bs!847801 (and b!4511918 b!4511895)))

(assert (=> bs!847801 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170761 lambda!170754))))

(declare-fun bs!847802 () Bool)

(assert (= bs!847802 (and b!4511918 b!4511307)))

(assert (=> bs!847802 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170761 lambda!170689))))

(declare-fun bs!847803 () Bool)

(assert (= bs!847803 (and b!4511918 b!4511833)))

(assert (=> bs!847803 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170761 lambda!170745))))

(assert (=> bs!847795 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170761 lambda!170648))))

(declare-fun bs!847804 () Bool)

(assert (= bs!847804 (and b!4511918 d!1387668)))

(assert (=> bs!847804 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689561) (= lambda!170761 lambda!170692))))

(declare-fun bs!847805 () Bool)

(assert (= bs!847805 (and b!4511918 d!1387526)))

(assert (=> bs!847805 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689430) (= lambda!170761 lambda!170655))))

(declare-fun bs!847806 () Bool)

(assert (= bs!847806 (and b!4511918 d!1387530)))

(assert (=> bs!847806 (not (= lambda!170761 lambda!170658))))

(assert (=> bs!847800 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170761 lambda!170670))))

(declare-fun bs!847807 () Bool)

(assert (= bs!847807 (and b!4511918 d!1387984)))

(assert (=> bs!847807 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689923) (= lambda!170761 lambda!170759))))

(assert (=> bs!847803 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689888) (= lambda!170761 lambda!170748))))

(assert (=> bs!847797 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689441) (= lambda!170761 lambda!170654))))

(declare-fun bs!847808 () Bool)

(assert (= bs!847808 (and b!4511918 d!1387458)))

(assert (=> bs!847808 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689398) (= lambda!170761 lambda!170650))))

(declare-fun bs!847809 () Bool)

(assert (= bs!847809 (and b!4511918 d!1387732)))

(assert (=> bs!847809 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170761 lambda!170705))))

(declare-fun bs!847810 () Bool)

(assert (= bs!847810 (and b!4511918 b!4511070)))

(assert (=> bs!847810 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170761 lambda!170647))))

(assert (=> bs!847791 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689547) (= lambda!170761 lambda!170684))))

(declare-fun bs!847811 () Bool)

(assert (= bs!847811 (and b!4511918 b!4511113)))

(assert (=> bs!847811 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170761 lambda!170652))))

(assert (=> bs!847788 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170761 lambda!170756))))

(assert (=> bs!847792 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689572) (= lambda!170761 lambda!170691))))

(declare-fun bs!847812 () Bool)

(assert (= bs!847812 (and b!4511918 b!4511837)))

(assert (=> bs!847812 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170761 lambda!170744))))

(declare-fun bs!847813 () Bool)

(assert (= bs!847813 (and b!4511918 d!1387694)))

(assert (=> bs!847813 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170761 lambda!170696))))

(assert (=> b!4511918 true))

(declare-fun bs!847814 () Bool)

(declare-fun b!4511914 () Bool)

(assert (= bs!847814 (and b!4511914 d!1387722)))

(declare-fun lambda!170762 () Int)

(assert (=> bs!847814 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689618) (= lambda!170762 lambda!170700))))

(declare-fun bs!847815 () Bool)

(assert (= bs!847815 (and b!4511914 b!4511891)))

(assert (=> bs!847815 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689934) (= lambda!170762 lambda!170758))))

(declare-fun bs!847816 () Bool)

(assert (= bs!847816 (and b!4511914 b!4511411)))

(assert (=> bs!847816 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170762 lambda!170698))))

(declare-fun bs!847817 () Bool)

(assert (= bs!847817 (and b!4511914 b!4511291)))

(assert (=> bs!847817 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170762 lambda!170682))))

(declare-fun bs!847818 () Bool)

(assert (= bs!847818 (and b!4511914 b!4511287)))

(assert (=> bs!847818 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170762 lambda!170683))))

(declare-fun bs!847819 () Bool)

(assert (= bs!847819 (and b!4511914 b!4511303)))

(assert (=> bs!847819 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170762 lambda!170690))))

(declare-fun bs!847820 () Bool)

(assert (= bs!847820 (and b!4511914 d!1387954)))

(assert (=> bs!847820 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689877) (= lambda!170762 lambda!170749))))

(declare-fun bs!847821 () Bool)

(assert (= bs!847821 (and b!4511914 d!1387590)))

(assert (=> bs!847821 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689493) (= lambda!170762 lambda!170672))))

(declare-fun bs!847822 () Bool)

(assert (= bs!847822 (and b!4511914 b!4511918)))

(assert (=> bs!847822 (= lambda!170762 lambda!170761)))

(declare-fun bs!847823 () Bool)

(assert (= bs!847823 (and b!4511914 b!4511066)))

(assert (=> bs!847823 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170762 lambda!170649))))

(declare-fun bs!847824 () Bool)

(assert (= bs!847824 (and b!4511914 b!4511192)))

(assert (=> bs!847824 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170762 lambda!170669))))

(declare-fun bs!847825 () Bool)

(assert (= bs!847825 (and b!4511914 b!4511109)))

(assert (=> bs!847825 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170762 lambda!170653))))

(assert (=> bs!847816 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689629) (= lambda!170762 lambda!170699))))

(declare-fun bs!847826 () Bool)

(assert (= bs!847826 (and b!4511914 b!4511415)))

(assert (=> bs!847826 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170762 lambda!170697))))

(declare-fun bs!847827 () Bool)

(assert (= bs!847827 (and b!4511914 d!1387654)))

(assert (=> bs!847827 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689536) (= lambda!170762 lambda!170685))))

(declare-fun bs!847828 () Bool)

(assert (= bs!847828 (and b!4511914 b!4511188)))

(assert (=> bs!847828 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689504) (= lambda!170762 lambda!170671))))

(declare-fun bs!847829 () Bool)

(assert (= bs!847829 (and b!4511914 b!4511895)))

(assert (=> bs!847829 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170762 lambda!170754))))

(declare-fun bs!847830 () Bool)

(assert (= bs!847830 (and b!4511914 b!4511307)))

(assert (=> bs!847830 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170762 lambda!170689))))

(declare-fun bs!847831 () Bool)

(assert (= bs!847831 (and b!4511914 b!4511833)))

(assert (=> bs!847831 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170762 lambda!170745))))

(assert (=> bs!847823 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170762 lambda!170648))))

(declare-fun bs!847832 () Bool)

(assert (= bs!847832 (and b!4511914 d!1387668)))

(assert (=> bs!847832 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689561) (= lambda!170762 lambda!170692))))

(declare-fun bs!847833 () Bool)

(assert (= bs!847833 (and b!4511914 d!1387526)))

(assert (=> bs!847833 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689430) (= lambda!170762 lambda!170655))))

(declare-fun bs!847834 () Bool)

(assert (= bs!847834 (and b!4511914 d!1387530)))

(assert (=> bs!847834 (not (= lambda!170762 lambda!170658))))

(assert (=> bs!847828 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170762 lambda!170670))))

(declare-fun bs!847835 () Bool)

(assert (= bs!847835 (and b!4511914 d!1387984)))

(assert (=> bs!847835 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689923) (= lambda!170762 lambda!170759))))

(assert (=> bs!847831 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689888) (= lambda!170762 lambda!170748))))

(assert (=> bs!847825 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689441) (= lambda!170762 lambda!170654))))

(declare-fun bs!847836 () Bool)

(assert (= bs!847836 (and b!4511914 d!1387458)))

(assert (=> bs!847836 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689398) (= lambda!170762 lambda!170650))))

(declare-fun bs!847837 () Bool)

(assert (= bs!847837 (and b!4511914 d!1387732)))

(assert (=> bs!847837 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689409) (= lambda!170762 lambda!170705))))

(declare-fun bs!847838 () Bool)

(assert (= bs!847838 (and b!4511914 b!4511070)))

(assert (=> bs!847838 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689058) (= lambda!170762 lambda!170647))))

(assert (=> bs!847818 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689547) (= lambda!170762 lambda!170684))))

(declare-fun bs!847839 () Bool)

(assert (= bs!847839 (and b!4511914 b!4511113)))

(assert (=> bs!847839 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170762 lambda!170652))))

(assert (=> bs!847815 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170762 lambda!170756))))

(assert (=> bs!847819 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689572) (= lambda!170762 lambda!170691))))

(declare-fun bs!847840 () Bool)

(assert (= bs!847840 (and b!4511914 b!4511837)))

(assert (=> bs!847840 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170762 lambda!170744))))

(declare-fun bs!847841 () Bool)

(assert (= bs!847841 (and b!4511914 d!1387694)))

(assert (=> bs!847841 (= (= (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689048) (= lambda!170762 lambda!170696))))

(assert (=> b!4511914 true))

(declare-fun lt!1689961 () ListMap!3557)

(declare-fun lambda!170763 () Int)

(assert (=> bs!847814 (= (= lt!1689961 lt!1689618) (= lambda!170763 lambda!170700))))

(assert (=> bs!847815 (= (= lt!1689961 lt!1689934) (= lambda!170763 lambda!170758))))

(assert (=> bs!847816 (= (= lt!1689961 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170763 lambda!170698))))

(assert (=> bs!847817 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170763 lambda!170682))))

(assert (=> bs!847818 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170763 lambda!170683))))

(assert (=> bs!847819 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170763 lambda!170690))))

(assert (=> bs!847820 (= (= lt!1689961 lt!1689877) (= lambda!170763 lambda!170749))))

(assert (=> bs!847821 (= (= lt!1689961 lt!1689493) (= lambda!170763 lambda!170672))))

(assert (=> bs!847822 (= (= lt!1689961 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170763 lambda!170761))))

(assert (=> bs!847823 (= (= lt!1689961 lt!1689409) (= lambda!170763 lambda!170649))))

(assert (=> bs!847824 (= (= lt!1689961 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170763 lambda!170669))))

(assert (=> bs!847825 (= (= lt!1689961 lt!1689048) (= lambda!170763 lambda!170653))))

(assert (=> bs!847816 (= (= lt!1689961 lt!1689629) (= lambda!170763 lambda!170699))))

(assert (=> bs!847826 (= (= lt!1689961 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170763 lambda!170697))))

(assert (=> bs!847827 (= (= lt!1689961 lt!1689536) (= lambda!170763 lambda!170685))))

(assert (=> bs!847828 (= (= lt!1689961 lt!1689504) (= lambda!170763 lambda!170671))))

(assert (=> bs!847829 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170763 lambda!170754))))

(assert (=> bs!847830 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170763 lambda!170689))))

(assert (=> bs!847831 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170763 lambda!170745))))

(assert (=> bs!847823 (= (= lt!1689961 lt!1689058) (= lambda!170763 lambda!170648))))

(assert (=> bs!847832 (= (= lt!1689961 lt!1689561) (= lambda!170763 lambda!170692))))

(assert (=> bs!847833 (= (= lt!1689961 lt!1689430) (= lambda!170763 lambda!170655))))

(assert (=> bs!847834 (not (= lambda!170763 lambda!170658))))

(assert (=> bs!847828 (= (= lt!1689961 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170763 lambda!170670))))

(assert (=> bs!847835 (= (= lt!1689961 lt!1689923) (= lambda!170763 lambda!170759))))

(assert (=> bs!847831 (= (= lt!1689961 lt!1689888) (= lambda!170763 lambda!170748))))

(assert (=> bs!847825 (= (= lt!1689961 lt!1689441) (= lambda!170763 lambda!170654))))

(assert (=> bs!847836 (= (= lt!1689961 lt!1689398) (= lambda!170763 lambda!170650))))

(assert (=> bs!847837 (= (= lt!1689961 lt!1689409) (= lambda!170763 lambda!170705))))

(assert (=> bs!847838 (= (= lt!1689961 lt!1689058) (= lambda!170763 lambda!170647))))

(assert (=> bs!847818 (= (= lt!1689961 lt!1689547) (= lambda!170763 lambda!170684))))

(assert (=> b!4511914 (= (= lt!1689961 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170763 lambda!170762))))

(assert (=> bs!847839 (= (= lt!1689961 lt!1689048) (= lambda!170763 lambda!170652))))

(assert (=> bs!847815 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170763 lambda!170756))))

(assert (=> bs!847819 (= (= lt!1689961 lt!1689572) (= lambda!170763 lambda!170691))))

(assert (=> bs!847840 (= (= lt!1689961 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170763 lambda!170744))))

(assert (=> bs!847841 (= (= lt!1689961 lt!1689048) (= lambda!170763 lambda!170696))))

(assert (=> b!4511914 true))

(declare-fun bs!847842 () Bool)

(declare-fun d!1388010 () Bool)

(assert (= bs!847842 (and d!1388010 d!1387722)))

(declare-fun lambda!170768 () Int)

(declare-fun lt!1689950 () ListMap!3557)

(assert (=> bs!847842 (= (= lt!1689950 lt!1689618) (= lambda!170768 lambda!170700))))

(declare-fun bs!847843 () Bool)

(assert (= bs!847843 (and d!1388010 b!4511891)))

(assert (=> bs!847843 (= (= lt!1689950 lt!1689934) (= lambda!170768 lambda!170758))))

(declare-fun bs!847844 () Bool)

(assert (= bs!847844 (and d!1388010 b!4511411)))

(assert (=> bs!847844 (= (= lt!1689950 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170768 lambda!170698))))

(declare-fun bs!847845 () Bool)

(assert (= bs!847845 (and d!1388010 b!4511291)))

(assert (=> bs!847845 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170768 lambda!170682))))

(declare-fun bs!847846 () Bool)

(assert (= bs!847846 (and d!1388010 b!4511287)))

(assert (=> bs!847846 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170768 lambda!170683))))

(declare-fun bs!847847 () Bool)

(assert (= bs!847847 (and d!1388010 b!4511303)))

(assert (=> bs!847847 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170768 lambda!170690))))

(declare-fun bs!847848 () Bool)

(assert (= bs!847848 (and d!1388010 d!1387954)))

(assert (=> bs!847848 (= (= lt!1689950 lt!1689877) (= lambda!170768 lambda!170749))))

(declare-fun bs!847849 () Bool)

(assert (= bs!847849 (and d!1388010 d!1387590)))

(assert (=> bs!847849 (= (= lt!1689950 lt!1689493) (= lambda!170768 lambda!170672))))

(declare-fun bs!847850 () Bool)

(assert (= bs!847850 (and d!1388010 b!4511918)))

(assert (=> bs!847850 (= (= lt!1689950 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170768 lambda!170761))))

(declare-fun bs!847851 () Bool)

(assert (= bs!847851 (and d!1388010 b!4511066)))

(assert (=> bs!847851 (= (= lt!1689950 lt!1689409) (= lambda!170768 lambda!170649))))

(declare-fun bs!847852 () Bool)

(assert (= bs!847852 (and d!1388010 b!4511192)))

(assert (=> bs!847852 (= (= lt!1689950 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170768 lambda!170669))))

(declare-fun bs!847853 () Bool)

(assert (= bs!847853 (and d!1388010 b!4511109)))

(assert (=> bs!847853 (= (= lt!1689950 lt!1689048) (= lambda!170768 lambda!170653))))

(assert (=> bs!847844 (= (= lt!1689950 lt!1689629) (= lambda!170768 lambda!170699))))

(declare-fun bs!847854 () Bool)

(assert (= bs!847854 (and d!1388010 b!4511415)))

(assert (=> bs!847854 (= (= lt!1689950 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170768 lambda!170697))))

(declare-fun bs!847855 () Bool)

(assert (= bs!847855 (and d!1388010 d!1387654)))

(assert (=> bs!847855 (= (= lt!1689950 lt!1689536) (= lambda!170768 lambda!170685))))

(declare-fun bs!847856 () Bool)

(assert (= bs!847856 (and d!1388010 b!4511188)))

(assert (=> bs!847856 (= (= lt!1689950 lt!1689504) (= lambda!170768 lambda!170671))))

(declare-fun bs!847857 () Bool)

(assert (= bs!847857 (and d!1388010 b!4511895)))

(assert (=> bs!847857 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170768 lambda!170754))))

(declare-fun bs!847858 () Bool)

(assert (= bs!847858 (and d!1388010 b!4511307)))

(assert (=> bs!847858 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170768 lambda!170689))))

(declare-fun bs!847859 () Bool)

(assert (= bs!847859 (and d!1388010 b!4511833)))

(assert (=> bs!847859 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170768 lambda!170745))))

(assert (=> bs!847851 (= (= lt!1689950 lt!1689058) (= lambda!170768 lambda!170648))))

(declare-fun bs!847860 () Bool)

(assert (= bs!847860 (and d!1388010 d!1387668)))

(assert (=> bs!847860 (= (= lt!1689950 lt!1689561) (= lambda!170768 lambda!170692))))

(declare-fun bs!847861 () Bool)

(assert (= bs!847861 (and d!1388010 d!1387526)))

(assert (=> bs!847861 (= (= lt!1689950 lt!1689430) (= lambda!170768 lambda!170655))))

(declare-fun bs!847862 () Bool)

(assert (= bs!847862 (and d!1388010 d!1387530)))

(assert (=> bs!847862 (not (= lambda!170768 lambda!170658))))

(assert (=> bs!847856 (= (= lt!1689950 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170768 lambda!170670))))

(declare-fun bs!847863 () Bool)

(assert (= bs!847863 (and d!1388010 d!1387984)))

(assert (=> bs!847863 (= (= lt!1689950 lt!1689923) (= lambda!170768 lambda!170759))))

(assert (=> bs!847859 (= (= lt!1689950 lt!1689888) (= lambda!170768 lambda!170748))))

(assert (=> bs!847853 (= (= lt!1689950 lt!1689441) (= lambda!170768 lambda!170654))))

(declare-fun bs!847864 () Bool)

(assert (= bs!847864 (and d!1388010 d!1387458)))

(assert (=> bs!847864 (= (= lt!1689950 lt!1689398) (= lambda!170768 lambda!170650))))

(declare-fun bs!847865 () Bool)

(assert (= bs!847865 (and d!1388010 d!1387732)))

(assert (=> bs!847865 (= (= lt!1689950 lt!1689409) (= lambda!170768 lambda!170705))))

(declare-fun bs!847866 () Bool)

(assert (= bs!847866 (and d!1388010 b!4511070)))

(assert (=> bs!847866 (= (= lt!1689950 lt!1689058) (= lambda!170768 lambda!170647))))

(assert (=> bs!847846 (= (= lt!1689950 lt!1689547) (= lambda!170768 lambda!170684))))

(declare-fun bs!847867 () Bool)

(assert (= bs!847867 (and d!1388010 b!4511914)))

(assert (=> bs!847867 (= (= lt!1689950 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170768 lambda!170762))))

(declare-fun bs!847868 () Bool)

(assert (= bs!847868 (and d!1388010 b!4511113)))

(assert (=> bs!847868 (= (= lt!1689950 lt!1689048) (= lambda!170768 lambda!170652))))

(assert (=> bs!847843 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170768 lambda!170756))))

(assert (=> bs!847847 (= (= lt!1689950 lt!1689572) (= lambda!170768 lambda!170691))))

(declare-fun bs!847869 () Bool)

(assert (= bs!847869 (and d!1388010 b!4511837)))

(assert (=> bs!847869 (= (= lt!1689950 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170768 lambda!170744))))

(declare-fun bs!847870 () Bool)

(assert (= bs!847870 (and d!1388010 d!1387694)))

(assert (=> bs!847870 (= (= lt!1689950 lt!1689048) (= lambda!170768 lambda!170696))))

(assert (=> bs!847867 (= (= lt!1689950 lt!1689961) (= lambda!170768 lambda!170763))))

(assert (=> d!1388010 true))

(declare-fun bm!314198 () Bool)

(declare-fun call!314203 () Unit!93482)

(assert (=> bm!314198 (= call!314203 (lemmaContainsAllItsOwnKeys!322 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun call!314204 () Bool)

(declare-fun c!769689 () Bool)

(declare-fun bm!314199 () Bool)

(assert (=> bm!314199 (= call!314204 (forall!10225 (toList!4295 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (ite c!769689 lambda!170761 lambda!170763)))))

(declare-fun e!2810815 () ListMap!3557)

(assert (=> b!4511914 (= e!2810815 lt!1689961)))

(declare-fun lt!1689946 () ListMap!3557)

(assert (=> b!4511914 (= lt!1689946 (+!1508 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(assert (=> b!4511914 (= lt!1689961 (addToMapMapFromBucket!671 (t!357684 (t!357684 (_2!28800 lt!1689065))) (+!1508 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(declare-fun lt!1689958 () Unit!93482)

(assert (=> b!4511914 (= lt!1689958 call!314203)))

(declare-fun call!314205 () Bool)

(assert (=> b!4511914 call!314205))

(declare-fun lt!1689954 () Unit!93482)

(assert (=> b!4511914 (= lt!1689954 lt!1689958)))

(assert (=> b!4511914 (forall!10225 (toList!4295 lt!1689946) lambda!170763)))

(declare-fun lt!1689947 () Unit!93482)

(declare-fun Unit!93742 () Unit!93482)

(assert (=> b!4511914 (= lt!1689947 Unit!93742)))

(assert (=> b!4511914 (forall!10225 (t!357684 (t!357684 (_2!28800 lt!1689065))) lambda!170763)))

(declare-fun lt!1689957 () Unit!93482)

(declare-fun Unit!93743 () Unit!93482)

(assert (=> b!4511914 (= lt!1689957 Unit!93743)))

(declare-fun lt!1689964 () Unit!93482)

(declare-fun Unit!93744 () Unit!93482)

(assert (=> b!4511914 (= lt!1689964 Unit!93744)))

(declare-fun lt!1689953 () Unit!93482)

(assert (=> b!4511914 (= lt!1689953 (forallContained!2477 (toList!4295 lt!1689946) lambda!170763 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(assert (=> b!4511914 (contains!13299 lt!1689946 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689965 () Unit!93482)

(declare-fun Unit!93745 () Unit!93482)

(assert (=> b!4511914 (= lt!1689965 Unit!93745)))

(assert (=> b!4511914 (contains!13299 lt!1689961 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689960 () Unit!93482)

(declare-fun Unit!93746 () Unit!93482)

(assert (=> b!4511914 (= lt!1689960 Unit!93746)))

(assert (=> b!4511914 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170763)))

(declare-fun lt!1689955 () Unit!93482)

(declare-fun Unit!93747 () Unit!93482)

(assert (=> b!4511914 (= lt!1689955 Unit!93747)))

(assert (=> b!4511914 (forall!10225 (toList!4295 lt!1689946) lambda!170763)))

(declare-fun lt!1689963 () Unit!93482)

(declare-fun Unit!93748 () Unit!93482)

(assert (=> b!4511914 (= lt!1689963 Unit!93748)))

(declare-fun lt!1689949 () Unit!93482)

(declare-fun Unit!93749 () Unit!93482)

(assert (=> b!4511914 (= lt!1689949 Unit!93749)))

(declare-fun lt!1689952 () Unit!93482)

(assert (=> b!4511914 (= lt!1689952 (addForallContainsKeyThenBeforeAdding!322 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))) lt!1689961 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065)))) (_2!28799 (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(assert (=> b!4511914 call!314204))

(declare-fun lt!1689945 () Unit!93482)

(assert (=> b!4511914 (= lt!1689945 lt!1689952)))

(assert (=> b!4511914 (forall!10225 (toList!4295 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) lambda!170763)))

(declare-fun lt!1689951 () Unit!93482)

(declare-fun Unit!93750 () Unit!93482)

(assert (=> b!4511914 (= lt!1689951 Unit!93750)))

(declare-fun res!1876831 () Bool)

(assert (=> b!4511914 (= res!1876831 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170763))))

(declare-fun e!2810816 () Bool)

(assert (=> b!4511914 (=> (not res!1876831) (not e!2810816))))

(assert (=> b!4511914 e!2810816))

(declare-fun lt!1689962 () Unit!93482)

(declare-fun Unit!93751 () Unit!93482)

(assert (=> b!4511914 (= lt!1689962 Unit!93751)))

(declare-fun b!4511915 () Bool)

(declare-fun e!2810814 () Bool)

(assert (=> b!4511915 (= e!2810814 (invariantList!1001 (toList!4295 lt!1689950)))))

(declare-fun b!4511916 () Bool)

(declare-fun res!1876832 () Bool)

(assert (=> b!4511916 (=> (not res!1876832) (not e!2810814))))

(assert (=> b!4511916 (= res!1876832 (forall!10225 (toList!4295 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) lambda!170768))))

(declare-fun b!4511917 () Bool)

(assert (=> b!4511917 (= e!2810816 (forall!10225 (toList!4295 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) lambda!170763))))

(assert (=> b!4511918 (= e!2810815 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun lt!1689956 () Unit!93482)

(assert (=> b!4511918 (= lt!1689956 call!314203)))

(assert (=> b!4511918 call!314205))

(declare-fun lt!1689959 () Unit!93482)

(assert (=> b!4511918 (= lt!1689959 lt!1689956)))

(assert (=> b!4511918 call!314204))

(declare-fun lt!1689948 () Unit!93482)

(declare-fun Unit!93752 () Unit!93482)

(assert (=> b!4511918 (= lt!1689948 Unit!93752)))

(assert (=> d!1388010 e!2810814))

(declare-fun res!1876833 () Bool)

(assert (=> d!1388010 (=> (not res!1876833) (not e!2810814))))

(assert (=> d!1388010 (= res!1876833 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170768))))

(assert (=> d!1388010 (= lt!1689950 e!2810815)))

(assert (=> d!1388010 (= c!769689 ((_ is Nil!50598) (t!357684 (_2!28800 lt!1689065))))))

(assert (=> d!1388010 (noDuplicateKeys!1144 (t!357684 (_2!28800 lt!1689065)))))

(assert (=> d!1388010 (= (addToMapMapFromBucket!671 (t!357684 (_2!28800 lt!1689065)) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) lt!1689950)))

(declare-fun bm!314200 () Bool)

(assert (=> bm!314200 (= call!314205 (forall!10225 (toList!4295 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (ite c!769689 lambda!170761 lambda!170762)))))

(assert (= (and d!1388010 c!769689) b!4511918))

(assert (= (and d!1388010 (not c!769689)) b!4511914))

(assert (= (and b!4511914 res!1876831) b!4511917))

(assert (= (or b!4511918 b!4511914) bm!314200))

(assert (= (or b!4511918 b!4511914) bm!314199))

(assert (= (or b!4511918 b!4511914) bm!314198))

(assert (= (and d!1388010 res!1876833) b!4511916))

(assert (= (and b!4511916 res!1876832) b!4511915))

(declare-fun m!5252399 () Bool)

(assert (=> b!4511914 m!5252399))

(declare-fun m!5252401 () Bool)

(assert (=> b!4511914 m!5252401))

(declare-fun m!5252403 () Bool)

(assert (=> b!4511914 m!5252403))

(declare-fun m!5252405 () Bool)

(assert (=> b!4511914 m!5252405))

(assert (=> b!4511914 m!5250903))

(declare-fun m!5252407 () Bool)

(assert (=> b!4511914 m!5252407))

(declare-fun m!5252409 () Bool)

(assert (=> b!4511914 m!5252409))

(declare-fun m!5252411 () Bool)

(assert (=> b!4511914 m!5252411))

(declare-fun m!5252413 () Bool)

(assert (=> b!4511914 m!5252413))

(assert (=> b!4511914 m!5250903))

(assert (=> b!4511914 m!5252409))

(assert (=> b!4511914 m!5252413))

(declare-fun m!5252415 () Bool)

(assert (=> b!4511914 m!5252415))

(assert (=> b!4511914 m!5252415))

(declare-fun m!5252417 () Bool)

(assert (=> b!4511914 m!5252417))

(assert (=> b!4511917 m!5252399))

(declare-fun m!5252419 () Bool)

(assert (=> bm!314199 m!5252419))

(assert (=> bm!314198 m!5250903))

(declare-fun m!5252421 () Bool)

(assert (=> bm!314198 m!5252421))

(declare-fun m!5252423 () Bool)

(assert (=> b!4511916 m!5252423))

(declare-fun m!5252425 () Bool)

(assert (=> b!4511915 m!5252425))

(declare-fun m!5252427 () Bool)

(assert (=> bm!314200 m!5252427))

(declare-fun m!5252429 () Bool)

(assert (=> d!1388010 m!5252429))

(assert (=> d!1388010 m!5251537))

(assert (=> b!4511109 d!1388010))

(declare-fun d!1388012 () Bool)

(declare-fun res!1876843 () Bool)

(declare-fun e!2810829 () Bool)

(assert (=> d!1388012 (=> res!1876843 e!2810829)))

(assert (=> d!1388012 (= res!1876843 ((_ is Nil!50598) (_2!28800 lt!1689065)))))

(assert (=> d!1388012 (= (forall!10225 (_2!28800 lt!1689065) lambda!170654) e!2810829)))

(declare-fun b!4511948 () Bool)

(declare-fun e!2810830 () Bool)

(assert (=> b!4511948 (= e!2810829 e!2810830)))

(declare-fun res!1876844 () Bool)

(assert (=> b!4511948 (=> (not res!1876844) (not e!2810830))))

(assert (=> b!4511948 (= res!1876844 (dynLambda!21140 lambda!170654 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun b!4511949 () Bool)

(assert (=> b!4511949 (= e!2810830 (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170654))))

(assert (= (and d!1388012 (not res!1876843)) b!4511948))

(assert (= (and b!4511948 res!1876844) b!4511949))

(declare-fun b_lambda!153841 () Bool)

(assert (=> (not b_lambda!153841) (not b!4511948)))

(declare-fun m!5252431 () Bool)

(assert (=> b!4511948 m!5252431))

(assert (=> b!4511949 m!5250895))

(assert (=> b!4511109 d!1388012))

(declare-fun b!4511950 () Bool)

(declare-fun e!2810834 () Unit!93482)

(declare-fun lt!1689987 () Unit!93482)

(assert (=> b!4511950 (= e!2810834 lt!1689987)))

(declare-fun lt!1689993 () Unit!93482)

(assert (=> b!4511950 (= lt!1689993 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511950 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689991 () Unit!93482)

(assert (=> b!4511950 (= lt!1689991 lt!1689993)))

(assert (=> b!4511950 (= lt!1689987 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun call!314206 () Bool)

(assert (=> b!4511950 call!314206))

(declare-fun b!4511951 () Bool)

(declare-fun e!2810832 () List!50725)

(assert (=> b!4511951 (= e!2810832 (keys!17562 lt!1689441))))

(declare-fun b!4511952 () Bool)

(declare-fun e!2810833 () Unit!93482)

(declare-fun Unit!93753 () Unit!93482)

(assert (=> b!4511952 (= e!2810833 Unit!93753)))

(declare-fun b!4511953 () Bool)

(assert (=> b!4511953 (= e!2810832 (getKeysList!449 (toList!4295 lt!1689441)))))

(declare-fun b!4511954 () Bool)

(declare-fun e!2810836 () Bool)

(assert (=> b!4511954 (= e!2810836 (not (contains!13303 (keys!17562 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511955 () Bool)

(declare-fun e!2810835 () Bool)

(declare-fun e!2810831 () Bool)

(assert (=> b!4511955 (= e!2810835 e!2810831)))

(declare-fun res!1876846 () Bool)

(assert (=> b!4511955 (=> (not res!1876846) (not e!2810831))))

(assert (=> b!4511955 (= res!1876846 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511956 () Bool)

(assert (=> b!4511956 (= e!2810834 e!2810833)))

(declare-fun c!769701 () Bool)

(assert (=> b!4511956 (= c!769701 call!314206)))

(declare-fun b!4511957 () Bool)

(assert (=> b!4511957 false))

(declare-fun lt!1689988 () Unit!93482)

(declare-fun lt!1689989 () Unit!93482)

(assert (=> b!4511957 (= lt!1689988 lt!1689989)))

(assert (=> b!4511957 (containsKey!1736 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511957 (= lt!1689989 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun Unit!93754 () Unit!93482)

(assert (=> b!4511957 (= e!2810833 Unit!93754)))

(declare-fun b!4511958 () Bool)

(assert (=> b!4511958 (= e!2810831 (contains!13303 (keys!17562 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun d!1388014 () Bool)

(assert (=> d!1388014 e!2810835))

(declare-fun res!1876845 () Bool)

(assert (=> d!1388014 (=> res!1876845 e!2810835)))

(assert (=> d!1388014 (= res!1876845 e!2810836)))

(declare-fun res!1876847 () Bool)

(assert (=> d!1388014 (=> (not res!1876847) (not e!2810836))))

(declare-fun lt!1689994 () Bool)

(assert (=> d!1388014 (= res!1876847 (not lt!1689994))))

(declare-fun lt!1689990 () Bool)

(assert (=> d!1388014 (= lt!1689994 lt!1689990)))

(declare-fun lt!1689992 () Unit!93482)

(assert (=> d!1388014 (= lt!1689992 e!2810834)))

(declare-fun c!769699 () Bool)

(assert (=> d!1388014 (= c!769699 lt!1689990)))

(assert (=> d!1388014 (= lt!1689990 (containsKey!1736 (toList!4295 lt!1689441) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388014 (= (contains!13299 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1689994)))

(declare-fun bm!314201 () Bool)

(assert (=> bm!314201 (= call!314206 (contains!13303 e!2810832 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun c!769700 () Bool)

(assert (=> bm!314201 (= c!769700 c!769699)))

(assert (= (and d!1388014 c!769699) b!4511950))

(assert (= (and d!1388014 (not c!769699)) b!4511956))

(assert (= (and b!4511956 c!769701) b!4511957))

(assert (= (and b!4511956 (not c!769701)) b!4511952))

(assert (= (or b!4511950 b!4511956) bm!314201))

(assert (= (and bm!314201 c!769700) b!4511953))

(assert (= (and bm!314201 (not c!769700)) b!4511951))

(assert (= (and d!1388014 res!1876847) b!4511954))

(assert (= (and d!1388014 (not res!1876845)) b!4511955))

(assert (= (and b!4511955 res!1876846) b!4511958))

(declare-fun m!5252433 () Bool)

(assert (=> d!1388014 m!5252433))

(declare-fun m!5252435 () Bool)

(assert (=> b!4511958 m!5252435))

(assert (=> b!4511958 m!5252435))

(declare-fun m!5252437 () Bool)

(assert (=> b!4511958 m!5252437))

(assert (=> b!4511957 m!5252433))

(declare-fun m!5252439 () Bool)

(assert (=> b!4511957 m!5252439))

(declare-fun m!5252441 () Bool)

(assert (=> b!4511950 m!5252441))

(declare-fun m!5252443 () Bool)

(assert (=> b!4511950 m!5252443))

(assert (=> b!4511950 m!5252443))

(declare-fun m!5252445 () Bool)

(assert (=> b!4511950 m!5252445))

(declare-fun m!5252447 () Bool)

(assert (=> b!4511950 m!5252447))

(assert (=> b!4511951 m!5252435))

(declare-fun m!5252449 () Bool)

(assert (=> b!4511953 m!5252449))

(assert (=> b!4511955 m!5252443))

(assert (=> b!4511955 m!5252443))

(assert (=> b!4511955 m!5252445))

(assert (=> b!4511954 m!5252435))

(assert (=> b!4511954 m!5252435))

(assert (=> b!4511954 m!5252437))

(declare-fun m!5252451 () Bool)

(assert (=> bm!314201 m!5252451))

(assert (=> b!4511109 d!1388014))

(declare-fun b!4511959 () Bool)

(declare-fun e!2810840 () Unit!93482)

(declare-fun lt!1689995 () Unit!93482)

(assert (=> b!4511959 (= e!2810840 lt!1689995)))

(declare-fun lt!1690001 () Unit!93482)

(assert (=> b!4511959 (= lt!1690001 (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> b!4511959 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun lt!1689999 () Unit!93482)

(assert (=> b!4511959 (= lt!1689999 lt!1690001)))

(assert (=> b!4511959 (= lt!1689995 (lemmaInListThenGetKeysListContains!445 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun call!314207 () Bool)

(assert (=> b!4511959 call!314207))

(declare-fun b!4511960 () Bool)

(declare-fun e!2810838 () List!50725)

(assert (=> b!4511960 (= e!2810838 (keys!17562 lt!1689426))))

(declare-fun b!4511961 () Bool)

(declare-fun e!2810839 () Unit!93482)

(declare-fun Unit!93755 () Unit!93482)

(assert (=> b!4511961 (= e!2810839 Unit!93755)))

(declare-fun b!4511962 () Bool)

(assert (=> b!4511962 (= e!2810838 (getKeysList!449 (toList!4295 lt!1689426)))))

(declare-fun b!4511963 () Bool)

(declare-fun e!2810842 () Bool)

(assert (=> b!4511963 (= e!2810842 (not (contains!13303 (keys!17562 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511964 () Bool)

(declare-fun e!2810841 () Bool)

(declare-fun e!2810837 () Bool)

(assert (=> b!4511964 (= e!2810841 e!2810837)))

(declare-fun res!1876849 () Bool)

(assert (=> b!4511964 (=> (not res!1876849) (not e!2810837))))

(assert (=> b!4511964 (= res!1876849 (isDefined!8368 (getValueByKey!1061 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))))

(declare-fun b!4511965 () Bool)

(assert (=> b!4511965 (= e!2810840 e!2810839)))

(declare-fun c!769704 () Bool)

(assert (=> b!4511965 (= c!769704 call!314207)))

(declare-fun b!4511966 () Bool)

(assert (=> b!4511966 false))

(declare-fun lt!1689996 () Unit!93482)

(declare-fun lt!1689997 () Unit!93482)

(assert (=> b!4511966 (= lt!1689996 lt!1689997)))

(assert (=> b!4511966 (containsKey!1736 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065))))))

(assert (=> b!4511966 (= lt!1689997 (lemmaInGetKeysListThenContainsKey!448 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun Unit!93756 () Unit!93482)

(assert (=> b!4511966 (= e!2810839 Unit!93756)))

(declare-fun b!4511967 () Bool)

(assert (=> b!4511967 (= e!2810837 (contains!13303 (keys!17562 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun d!1388016 () Bool)

(assert (=> d!1388016 e!2810841))

(declare-fun res!1876848 () Bool)

(assert (=> d!1388016 (=> res!1876848 e!2810841)))

(assert (=> d!1388016 (= res!1876848 e!2810842)))

(declare-fun res!1876850 () Bool)

(assert (=> d!1388016 (=> (not res!1876850) (not e!2810842))))

(declare-fun lt!1690002 () Bool)

(assert (=> d!1388016 (= res!1876850 (not lt!1690002))))

(declare-fun lt!1689998 () Bool)

(assert (=> d!1388016 (= lt!1690002 lt!1689998)))

(declare-fun lt!1690000 () Unit!93482)

(assert (=> d!1388016 (= lt!1690000 e!2810840)))

(declare-fun c!769702 () Bool)

(assert (=> d!1388016 (= c!769702 lt!1689998)))

(assert (=> d!1388016 (= lt!1689998 (containsKey!1736 (toList!4295 lt!1689426) (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388016 (= (contains!13299 lt!1689426 (_1!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1690002)))

(declare-fun bm!314202 () Bool)

(assert (=> bm!314202 (= call!314207 (contains!13303 e!2810838 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun c!769703 () Bool)

(assert (=> bm!314202 (= c!769703 c!769702)))

(assert (= (and d!1388016 c!769702) b!4511959))

(assert (= (and d!1388016 (not c!769702)) b!4511965))

(assert (= (and b!4511965 c!769704) b!4511966))

(assert (= (and b!4511965 (not c!769704)) b!4511961))

(assert (= (or b!4511959 b!4511965) bm!314202))

(assert (= (and bm!314202 c!769703) b!4511962))

(assert (= (and bm!314202 (not c!769703)) b!4511960))

(assert (= (and d!1388016 res!1876850) b!4511963))

(assert (= (and d!1388016 (not res!1876848)) b!4511964))

(assert (= (and b!4511964 res!1876849) b!4511967))

(declare-fun m!5252453 () Bool)

(assert (=> d!1388016 m!5252453))

(declare-fun m!5252455 () Bool)

(assert (=> b!4511967 m!5252455))

(assert (=> b!4511967 m!5252455))

(declare-fun m!5252457 () Bool)

(assert (=> b!4511967 m!5252457))

(assert (=> b!4511966 m!5252453))

(declare-fun m!5252459 () Bool)

(assert (=> b!4511966 m!5252459))

(declare-fun m!5252461 () Bool)

(assert (=> b!4511959 m!5252461))

(declare-fun m!5252463 () Bool)

(assert (=> b!4511959 m!5252463))

(assert (=> b!4511959 m!5252463))

(declare-fun m!5252465 () Bool)

(assert (=> b!4511959 m!5252465))

(declare-fun m!5252467 () Bool)

(assert (=> b!4511959 m!5252467))

(assert (=> b!4511960 m!5252455))

(declare-fun m!5252469 () Bool)

(assert (=> b!4511962 m!5252469))

(assert (=> b!4511964 m!5252463))

(assert (=> b!4511964 m!5252463))

(assert (=> b!4511964 m!5252465))

(assert (=> b!4511963 m!5252455))

(assert (=> b!4511963 m!5252455))

(assert (=> b!4511963 m!5252457))

(declare-fun m!5252477 () Bool)

(assert (=> bm!314202 m!5252477))

(assert (=> b!4511109 d!1388016))

(declare-fun bs!847886 () Bool)

(declare-fun d!1388018 () Bool)

(assert (= bs!847886 (and d!1388018 d!1387722)))

(declare-fun lambda!170777 () Int)

(assert (=> bs!847886 (= (= lt!1689441 lt!1689618) (= lambda!170777 lambda!170700))))

(declare-fun bs!847887 () Bool)

(assert (= bs!847887 (and d!1388018 b!4511891)))

(assert (=> bs!847887 (= (= lt!1689441 lt!1689934) (= lambda!170777 lambda!170758))))

(declare-fun bs!847888 () Bool)

(assert (= bs!847888 (and d!1388018 b!4511411)))

(assert (=> bs!847888 (= (= lt!1689441 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170777 lambda!170698))))

(declare-fun bs!847889 () Bool)

(assert (= bs!847889 (and d!1388018 b!4511291)))

(assert (=> bs!847889 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170777 lambda!170682))))

(declare-fun bs!847890 () Bool)

(assert (= bs!847890 (and d!1388018 b!4511287)))

(assert (=> bs!847890 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170777 lambda!170683))))

(declare-fun bs!847892 () Bool)

(assert (= bs!847892 (and d!1388018 b!4511303)))

(assert (=> bs!847892 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170777 lambda!170690))))

(declare-fun bs!847893 () Bool)

(assert (= bs!847893 (and d!1388018 d!1387954)))

(assert (=> bs!847893 (= (= lt!1689441 lt!1689877) (= lambda!170777 lambda!170749))))

(declare-fun bs!847894 () Bool)

(assert (= bs!847894 (and d!1388018 d!1387590)))

(assert (=> bs!847894 (= (= lt!1689441 lt!1689493) (= lambda!170777 lambda!170672))))

(declare-fun bs!847895 () Bool)

(assert (= bs!847895 (and d!1388018 b!4511918)))

(assert (=> bs!847895 (= (= lt!1689441 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170777 lambda!170761))))

(declare-fun bs!847896 () Bool)

(assert (= bs!847896 (and d!1388018 b!4511066)))

(assert (=> bs!847896 (= (= lt!1689441 lt!1689409) (= lambda!170777 lambda!170649))))

(declare-fun bs!847897 () Bool)

(assert (= bs!847897 (and d!1388018 b!4511109)))

(assert (=> bs!847897 (= (= lt!1689441 lt!1689048) (= lambda!170777 lambda!170653))))

(assert (=> bs!847888 (= (= lt!1689441 lt!1689629) (= lambda!170777 lambda!170699))))

(declare-fun bs!847898 () Bool)

(assert (= bs!847898 (and d!1388018 b!4511415)))

(assert (=> bs!847898 (= (= lt!1689441 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170777 lambda!170697))))

(declare-fun bs!847899 () Bool)

(assert (= bs!847899 (and d!1388018 d!1387654)))

(assert (=> bs!847899 (= (= lt!1689441 lt!1689536) (= lambda!170777 lambda!170685))))

(declare-fun bs!847900 () Bool)

(assert (= bs!847900 (and d!1388018 b!4511188)))

(assert (=> bs!847900 (= (= lt!1689441 lt!1689504) (= lambda!170777 lambda!170671))))

(declare-fun bs!847901 () Bool)

(assert (= bs!847901 (and d!1388018 b!4511895)))

(assert (=> bs!847901 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170777 lambda!170754))))

(declare-fun bs!847902 () Bool)

(assert (= bs!847902 (and d!1388018 b!4511307)))

(assert (=> bs!847902 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170777 lambda!170689))))

(declare-fun bs!847903 () Bool)

(assert (= bs!847903 (and d!1388018 b!4511833)))

(assert (=> bs!847903 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170777 lambda!170745))))

(assert (=> bs!847896 (= (= lt!1689441 lt!1689058) (= lambda!170777 lambda!170648))))

(declare-fun bs!847904 () Bool)

(assert (= bs!847904 (and d!1388018 d!1387668)))

(assert (=> bs!847904 (= (= lt!1689441 lt!1689561) (= lambda!170777 lambda!170692))))

(declare-fun bs!847906 () Bool)

(assert (= bs!847906 (and d!1388018 d!1387526)))

(assert (=> bs!847906 (= (= lt!1689441 lt!1689430) (= lambda!170777 lambda!170655))))

(declare-fun bs!847907 () Bool)

(assert (= bs!847907 (and d!1388018 d!1387530)))

(assert (=> bs!847907 (not (= lambda!170777 lambda!170658))))

(assert (=> bs!847900 (= (= lt!1689441 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170777 lambda!170670))))

(declare-fun bs!847908 () Bool)

(assert (= bs!847908 (and d!1388018 d!1387984)))

(assert (=> bs!847908 (= (= lt!1689441 lt!1689923) (= lambda!170777 lambda!170759))))

(assert (=> bs!847903 (= (= lt!1689441 lt!1689888) (= lambda!170777 lambda!170748))))

(assert (=> bs!847897 (= lambda!170777 lambda!170654)))

(declare-fun bs!847911 () Bool)

(assert (= bs!847911 (and d!1388018 d!1387458)))

(assert (=> bs!847911 (= (= lt!1689441 lt!1689398) (= lambda!170777 lambda!170650))))

(declare-fun bs!847913 () Bool)

(assert (= bs!847913 (and d!1388018 d!1387732)))

(assert (=> bs!847913 (= (= lt!1689441 lt!1689409) (= lambda!170777 lambda!170705))))

(declare-fun bs!847915 () Bool)

(assert (= bs!847915 (and d!1388018 b!4511070)))

(assert (=> bs!847915 (= (= lt!1689441 lt!1689058) (= lambda!170777 lambda!170647))))

(declare-fun bs!847917 () Bool)

(assert (= bs!847917 (and d!1388018 b!4511192)))

(assert (=> bs!847917 (= (= lt!1689441 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170777 lambda!170669))))

(declare-fun bs!847919 () Bool)

(assert (= bs!847919 (and d!1388018 d!1388010)))

(assert (=> bs!847919 (= (= lt!1689441 lt!1689950) (= lambda!170777 lambda!170768))))

(assert (=> bs!847890 (= (= lt!1689441 lt!1689547) (= lambda!170777 lambda!170684))))

(declare-fun bs!847920 () Bool)

(assert (= bs!847920 (and d!1388018 b!4511914)))

(assert (=> bs!847920 (= (= lt!1689441 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170777 lambda!170762))))

(declare-fun bs!847922 () Bool)

(assert (= bs!847922 (and d!1388018 b!4511113)))

(assert (=> bs!847922 (= (= lt!1689441 lt!1689048) (= lambda!170777 lambda!170652))))

(assert (=> bs!847887 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170777 lambda!170756))))

(assert (=> bs!847892 (= (= lt!1689441 lt!1689572) (= lambda!170777 lambda!170691))))

(declare-fun bs!847926 () Bool)

(assert (= bs!847926 (and d!1388018 b!4511837)))

(assert (=> bs!847926 (= (= lt!1689441 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170777 lambda!170744))))

(declare-fun bs!847927 () Bool)

(assert (= bs!847927 (and d!1388018 d!1387694)))

(assert (=> bs!847927 (= (= lt!1689441 lt!1689048) (= lambda!170777 lambda!170696))))

(assert (=> bs!847920 (= (= lt!1689441 lt!1689961) (= lambda!170777 lambda!170763))))

(assert (=> d!1388018 true))

(assert (=> d!1388018 (forall!10225 (toList!4295 lt!1689048) lambda!170777)))

(declare-fun lt!1690003 () Unit!93482)

(assert (=> d!1388018 (= lt!1690003 (choose!29336 lt!1689048 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> d!1388018 (forall!10225 (toList!4295 (+!1508 lt!1689048 (tuple2!51011 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))))) lambda!170777)))

(assert (=> d!1388018 (= (addForallContainsKeyThenBeforeAdding!322 lt!1689048 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065))) (_2!28799 (h!56435 (_2!28800 lt!1689065)))) lt!1690003)))

(declare-fun bs!847928 () Bool)

(assert (= bs!847928 d!1388018))

(declare-fun m!5252525 () Bool)

(assert (=> bs!847928 m!5252525))

(declare-fun m!5252527 () Bool)

(assert (=> bs!847928 m!5252527))

(declare-fun m!5252529 () Bool)

(assert (=> bs!847928 m!5252529))

(declare-fun m!5252533 () Bool)

(assert (=> bs!847928 m!5252533))

(assert (=> b!4511109 d!1388018))

(declare-fun d!1388036 () Bool)

(assert (=> d!1388036 (dynLambda!21140 lambda!170654 (h!56435 (_2!28800 lt!1689065)))))

(declare-fun lt!1690006 () Unit!93482)

(assert (=> d!1388036 (= lt!1690006 (choose!29337 (toList!4295 lt!1689426) lambda!170654 (h!56435 (_2!28800 lt!1689065))))))

(declare-fun e!2810852 () Bool)

(assert (=> d!1388036 e!2810852))

(declare-fun res!1876862 () Bool)

(assert (=> d!1388036 (=> (not res!1876862) (not e!2810852))))

(assert (=> d!1388036 (= res!1876862 (forall!10225 (toList!4295 lt!1689426) lambda!170654))))

(assert (=> d!1388036 (= (forallContained!2477 (toList!4295 lt!1689426) lambda!170654 (h!56435 (_2!28800 lt!1689065))) lt!1690006)))

(declare-fun b!4511979 () Bool)

(assert (=> b!4511979 (= e!2810852 (contains!13304 (toList!4295 lt!1689426) (h!56435 (_2!28800 lt!1689065))))))

(assert (= (and d!1388036 res!1876862) b!4511979))

(declare-fun b_lambda!153845 () Bool)

(assert (=> (not b_lambda!153845) (not d!1388036)))

(assert (=> d!1388036 m!5252431))

(declare-fun m!5252543 () Bool)

(assert (=> d!1388036 m!5252543))

(assert (=> d!1388036 m!5250909))

(declare-fun m!5252545 () Bool)

(assert (=> b!4511979 m!5252545))

(assert (=> b!4511109 d!1388036))

(assert (=> b!4511109 d!1387866))

(declare-fun d!1388042 () Bool)

(declare-fun res!1876865 () Bool)

(declare-fun e!2810855 () Bool)

(assert (=> d!1388042 (=> res!1876865 e!2810855)))

(assert (=> d!1388042 (= res!1876865 ((_ is Nil!50598) (toList!4295 lt!1689426)))))

(assert (=> d!1388042 (= (forall!10225 (toList!4295 lt!1689426) lambda!170654) e!2810855)))

(declare-fun b!4511982 () Bool)

(declare-fun e!2810856 () Bool)

(assert (=> b!4511982 (= e!2810855 e!2810856)))

(declare-fun res!1876866 () Bool)

(assert (=> b!4511982 (=> (not res!1876866) (not e!2810856))))

(assert (=> b!4511982 (= res!1876866 (dynLambda!21140 lambda!170654 (h!56435 (toList!4295 lt!1689426))))))

(declare-fun b!4511983 () Bool)

(assert (=> b!4511983 (= e!2810856 (forall!10225 (t!357684 (toList!4295 lt!1689426)) lambda!170654))))

(assert (= (and d!1388042 (not res!1876865)) b!4511982))

(assert (= (and b!4511982 res!1876866) b!4511983))

(declare-fun b_lambda!153849 () Bool)

(assert (=> (not b_lambda!153849) (not b!4511982)))

(declare-fun m!5252551 () Bool)

(assert (=> b!4511982 m!5252551))

(declare-fun m!5252553 () Bool)

(assert (=> b!4511983 m!5252553))

(assert (=> b!4511109 d!1388042))

(declare-fun d!1388046 () Bool)

(declare-fun res!1876869 () Bool)

(declare-fun e!2810859 () Bool)

(assert (=> d!1388046 (=> res!1876869 e!2810859)))

(assert (=> d!1388046 (= res!1876869 ((_ is Nil!50598) (t!357684 (_2!28800 lt!1689065))))))

(assert (=> d!1388046 (= (forall!10225 (t!357684 (_2!28800 lt!1689065)) lambda!170654) e!2810859)))

(declare-fun b!4511986 () Bool)

(declare-fun e!2810860 () Bool)

(assert (=> b!4511986 (= e!2810859 e!2810860)))

(declare-fun res!1876870 () Bool)

(assert (=> b!4511986 (=> (not res!1876870) (not e!2810860))))

(assert (=> b!4511986 (= res!1876870 (dynLambda!21140 lambda!170654 (h!56435 (t!357684 (_2!28800 lt!1689065)))))))

(declare-fun b!4511987 () Bool)

(assert (=> b!4511987 (= e!2810860 (forall!10225 (t!357684 (t!357684 (_2!28800 lt!1689065))) lambda!170654))))

(assert (= (and d!1388046 (not res!1876869)) b!4511986))

(assert (= (and b!4511986 res!1876870) b!4511987))

(declare-fun b_lambda!153851 () Bool)

(assert (=> (not b_lambda!153851) (not b!4511986)))

(declare-fun m!5252561 () Bool)

(assert (=> b!4511986 m!5252561))

(declare-fun m!5252563 () Bool)

(assert (=> b!4511987 m!5252563))

(assert (=> b!4511109 d!1388046))

(declare-fun bs!847930 () Bool)

(declare-fun b!4511992 () Bool)

(assert (= bs!847930 (and b!4511992 d!1387722)))

(declare-fun lambda!170780 () Int)

(assert (=> bs!847930 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689618) (= lambda!170780 lambda!170700))))

(declare-fun bs!847931 () Bool)

(assert (= bs!847931 (and b!4511992 b!4511891)))

(assert (=> bs!847931 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689934) (= lambda!170780 lambda!170758))))

(declare-fun bs!847932 () Bool)

(assert (= bs!847932 (and b!4511992 b!4511411)))

(assert (=> bs!847932 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170780 lambda!170698))))

(declare-fun bs!847933 () Bool)

(assert (= bs!847933 (and b!4511992 b!4511291)))

(assert (=> bs!847933 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170780 lambda!170682))))

(declare-fun bs!847934 () Bool)

(assert (= bs!847934 (and b!4511992 b!4511287)))

(assert (=> bs!847934 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170780 lambda!170683))))

(declare-fun bs!847935 () Bool)

(assert (= bs!847935 (and b!4511992 b!4511303)))

(assert (=> bs!847935 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170780 lambda!170690))))

(declare-fun bs!847936 () Bool)

(assert (= bs!847936 (and b!4511992 d!1387954)))

(assert (=> bs!847936 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689877) (= lambda!170780 lambda!170749))))

(declare-fun bs!847937 () Bool)

(assert (= bs!847937 (and b!4511992 d!1387590)))

(assert (=> bs!847937 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689493) (= lambda!170780 lambda!170672))))

(declare-fun bs!847938 () Bool)

(assert (= bs!847938 (and b!4511992 b!4511918)))

(assert (=> bs!847938 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170780 lambda!170761))))

(declare-fun bs!847939 () Bool)

(assert (= bs!847939 (and b!4511992 b!4511109)))

(assert (=> bs!847939 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170780 lambda!170653))))

(assert (=> bs!847932 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689629) (= lambda!170780 lambda!170699))))

(declare-fun bs!847941 () Bool)

(assert (= bs!847941 (and b!4511992 b!4511415)))

(assert (=> bs!847941 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170780 lambda!170697))))

(declare-fun bs!847942 () Bool)

(assert (= bs!847942 (and b!4511992 d!1387654)))

(assert (=> bs!847942 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689536) (= lambda!170780 lambda!170685))))

(declare-fun bs!847943 () Bool)

(assert (= bs!847943 (and b!4511992 b!4511188)))

(assert (=> bs!847943 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689504) (= lambda!170780 lambda!170671))))

(declare-fun bs!847944 () Bool)

(assert (= bs!847944 (and b!4511992 b!4511895)))

(assert (=> bs!847944 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170780 lambda!170754))))

(declare-fun bs!847945 () Bool)

(assert (= bs!847945 (and b!4511992 b!4511307)))

(assert (=> bs!847945 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170780 lambda!170689))))

(declare-fun bs!847946 () Bool)

(assert (= bs!847946 (and b!4511992 b!4511833)))

(assert (=> bs!847946 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170780 lambda!170745))))

(declare-fun bs!847947 () Bool)

(assert (= bs!847947 (and b!4511992 b!4511066)))

(assert (=> bs!847947 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689058) (= lambda!170780 lambda!170648))))

(declare-fun bs!847948 () Bool)

(assert (= bs!847948 (and b!4511992 d!1387668)))

(assert (=> bs!847948 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689561) (= lambda!170780 lambda!170692))))

(declare-fun bs!847950 () Bool)

(assert (= bs!847950 (and b!4511992 d!1387526)))

(assert (=> bs!847950 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689430) (= lambda!170780 lambda!170655))))

(declare-fun bs!847952 () Bool)

(assert (= bs!847952 (and b!4511992 d!1387530)))

(assert (=> bs!847952 (not (= lambda!170780 lambda!170658))))

(assert (=> bs!847943 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170780 lambda!170670))))

(declare-fun bs!847954 () Bool)

(assert (= bs!847954 (and b!4511992 d!1387984)))

(assert (=> bs!847954 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689923) (= lambda!170780 lambda!170759))))

(assert (=> bs!847946 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689888) (= lambda!170780 lambda!170748))))

(assert (=> bs!847939 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689441) (= lambda!170780 lambda!170654))))

(declare-fun bs!847956 () Bool)

(assert (= bs!847956 (and b!4511992 d!1387458)))

(assert (=> bs!847956 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689398) (= lambda!170780 lambda!170650))))

(declare-fun bs!847958 () Bool)

(assert (= bs!847958 (and b!4511992 d!1387732)))

(assert (=> bs!847958 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689409) (= lambda!170780 lambda!170705))))

(declare-fun bs!847960 () Bool)

(assert (= bs!847960 (and b!4511992 b!4511070)))

(assert (=> bs!847960 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689058) (= lambda!170780 lambda!170647))))

(declare-fun bs!847961 () Bool)

(assert (= bs!847961 (and b!4511992 d!1388018)))

(assert (=> bs!847961 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689441) (= lambda!170780 lambda!170777))))

(assert (=> bs!847947 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689409) (= lambda!170780 lambda!170649))))

(declare-fun bs!847964 () Bool)

(assert (= bs!847964 (and b!4511992 b!4511192)))

(assert (=> bs!847964 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170780 lambda!170669))))

(declare-fun bs!847966 () Bool)

(assert (= bs!847966 (and b!4511992 d!1388010)))

(assert (=> bs!847966 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689950) (= lambda!170780 lambda!170768))))

(assert (=> bs!847934 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689547) (= lambda!170780 lambda!170684))))

(declare-fun bs!847968 () Bool)

(assert (= bs!847968 (and b!4511992 b!4511914)))

(assert (=> bs!847968 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170780 lambda!170762))))

(declare-fun bs!847971 () Bool)

(assert (= bs!847971 (and b!4511992 b!4511113)))

(assert (=> bs!847971 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170780 lambda!170652))))

(assert (=> bs!847931 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170780 lambda!170756))))

(assert (=> bs!847935 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689572) (= lambda!170780 lambda!170691))))

(declare-fun bs!847974 () Bool)

(assert (= bs!847974 (and b!4511992 b!4511837)))

(assert (=> bs!847974 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170780 lambda!170744))))

(declare-fun bs!847976 () Bool)

(assert (= bs!847976 (and b!4511992 d!1387694)))

(assert (=> bs!847976 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170780 lambda!170696))))

(assert (=> bs!847968 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689961) (= lambda!170780 lambda!170763))))

(assert (=> b!4511992 true))

(declare-fun bs!847982 () Bool)

(declare-fun b!4511988 () Bool)

(assert (= bs!847982 (and b!4511988 d!1387722)))

(declare-fun lambda!170782 () Int)

(assert (=> bs!847982 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689618) (= lambda!170782 lambda!170700))))

(declare-fun bs!847983 () Bool)

(assert (= bs!847983 (and b!4511988 b!4511891)))

(assert (=> bs!847983 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689934) (= lambda!170782 lambda!170758))))

(declare-fun bs!847984 () Bool)

(assert (= bs!847984 (and b!4511988 b!4511411)))

(assert (=> bs!847984 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170782 lambda!170698))))

(declare-fun bs!847985 () Bool)

(assert (= bs!847985 (and b!4511988 b!4511291)))

(assert (=> bs!847985 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170782 lambda!170682))))

(declare-fun bs!847986 () Bool)

(assert (= bs!847986 (and b!4511988 b!4511287)))

(assert (=> bs!847986 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170782 lambda!170683))))

(declare-fun bs!847987 () Bool)

(assert (= bs!847987 (and b!4511988 b!4511303)))

(assert (=> bs!847987 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170782 lambda!170690))))

(declare-fun bs!847988 () Bool)

(assert (= bs!847988 (and b!4511988 d!1387954)))

(assert (=> bs!847988 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689877) (= lambda!170782 lambda!170749))))

(declare-fun bs!847990 () Bool)

(assert (= bs!847990 (and b!4511988 d!1387590)))

(assert (=> bs!847990 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689493) (= lambda!170782 lambda!170672))))

(declare-fun bs!847991 () Bool)

(assert (= bs!847991 (and b!4511988 b!4511918)))

(assert (=> bs!847991 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170782 lambda!170761))))

(declare-fun bs!847993 () Bool)

(assert (= bs!847993 (and b!4511988 b!4511109)))

(assert (=> bs!847993 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170782 lambda!170653))))

(assert (=> bs!847984 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689629) (= lambda!170782 lambda!170699))))

(declare-fun bs!847996 () Bool)

(assert (= bs!847996 (and b!4511988 b!4511415)))

(assert (=> bs!847996 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170782 lambda!170697))))

(declare-fun bs!847998 () Bool)

(assert (= bs!847998 (and b!4511988 b!4511188)))

(assert (=> bs!847998 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689504) (= lambda!170782 lambda!170671))))

(declare-fun bs!848000 () Bool)

(assert (= bs!848000 (and b!4511988 b!4511895)))

(assert (=> bs!848000 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170782 lambda!170754))))

(declare-fun bs!848002 () Bool)

(assert (= bs!848002 (and b!4511988 b!4511307)))

(assert (=> bs!848002 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170782 lambda!170689))))

(declare-fun bs!848003 () Bool)

(assert (= bs!848003 (and b!4511988 b!4511833)))

(assert (=> bs!848003 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170782 lambda!170745))))

(declare-fun bs!848005 () Bool)

(assert (= bs!848005 (and b!4511988 b!4511066)))

(assert (=> bs!848005 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689058) (= lambda!170782 lambda!170648))))

(declare-fun bs!848007 () Bool)

(assert (= bs!848007 (and b!4511988 d!1387668)))

(assert (=> bs!848007 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689561) (= lambda!170782 lambda!170692))))

(declare-fun bs!848009 () Bool)

(assert (= bs!848009 (and b!4511988 d!1387526)))

(assert (=> bs!848009 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689430) (= lambda!170782 lambda!170655))))

(declare-fun bs!848011 () Bool)

(assert (= bs!848011 (and b!4511988 d!1387530)))

(assert (=> bs!848011 (not (= lambda!170782 lambda!170658))))

(assert (=> bs!847998 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170782 lambda!170670))))

(declare-fun bs!848014 () Bool)

(assert (= bs!848014 (and b!4511988 d!1387984)))

(assert (=> bs!848014 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689923) (= lambda!170782 lambda!170759))))

(assert (=> bs!848003 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689888) (= lambda!170782 lambda!170748))))

(assert (=> bs!847993 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689441) (= lambda!170782 lambda!170654))))

(declare-fun bs!848018 () Bool)

(assert (= bs!848018 (and b!4511988 d!1387458)))

(assert (=> bs!848018 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689398) (= lambda!170782 lambda!170650))))

(declare-fun bs!848020 () Bool)

(assert (= bs!848020 (and b!4511988 d!1387732)))

(assert (=> bs!848020 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689409) (= lambda!170782 lambda!170705))))

(declare-fun bs!848021 () Bool)

(assert (= bs!848021 (and b!4511988 b!4511070)))

(assert (=> bs!848021 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689058) (= lambda!170782 lambda!170647))))

(declare-fun bs!848023 () Bool)

(assert (= bs!848023 (and b!4511988 d!1388018)))

(assert (=> bs!848023 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689441) (= lambda!170782 lambda!170777))))

(assert (=> bs!848005 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689409) (= lambda!170782 lambda!170649))))

(declare-fun bs!848026 () Bool)

(assert (= bs!848026 (and b!4511988 b!4511192)))

(assert (=> bs!848026 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170782 lambda!170669))))

(declare-fun bs!848027 () Bool)

(assert (= bs!848027 (and b!4511988 d!1388010)))

(assert (=> bs!848027 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689950) (= lambda!170782 lambda!170768))))

(declare-fun bs!848029 () Bool)

(assert (= bs!848029 (and b!4511988 b!4511992)))

(assert (=> bs!848029 (= lambda!170782 lambda!170780)))

(declare-fun bs!848030 () Bool)

(assert (= bs!848030 (and b!4511988 d!1387654)))

(assert (=> bs!848030 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689536) (= lambda!170782 lambda!170685))))

(assert (=> bs!847986 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689547) (= lambda!170782 lambda!170684))))

(declare-fun bs!848031 () Bool)

(assert (= bs!848031 (and b!4511988 b!4511914)))

(assert (=> bs!848031 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170782 lambda!170762))))

(declare-fun bs!848032 () Bool)

(assert (= bs!848032 (and b!4511988 b!4511113)))

(assert (=> bs!848032 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170782 lambda!170652))))

(assert (=> bs!847983 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170782 lambda!170756))))

(assert (=> bs!847987 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689572) (= lambda!170782 lambda!170691))))

(declare-fun bs!848033 () Bool)

(assert (= bs!848033 (and b!4511988 b!4511837)))

(assert (=> bs!848033 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170782 lambda!170744))))

(declare-fun bs!848034 () Bool)

(assert (= bs!848034 (and b!4511988 d!1387694)))

(assert (=> bs!848034 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689048) (= lambda!170782 lambda!170696))))

(assert (=> bs!848031 (= (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1689961) (= lambda!170782 lambda!170763))))

(assert (=> b!4511988 true))

(declare-fun lt!1690024 () ListMap!3557)

(declare-fun lambda!170785 () Int)

(assert (=> bs!847982 (= (= lt!1690024 lt!1689618) (= lambda!170785 lambda!170700))))

(assert (=> bs!847983 (= (= lt!1690024 lt!1689934) (= lambda!170785 lambda!170758))))

(assert (=> bs!847984 (= (= lt!1690024 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170785 lambda!170698))))

(assert (=> bs!847985 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170785 lambda!170682))))

(assert (=> bs!847986 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170785 lambda!170683))))

(assert (=> bs!847987 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170785 lambda!170690))))

(assert (=> bs!847988 (= (= lt!1690024 lt!1689877) (= lambda!170785 lambda!170749))))

(assert (=> bs!847990 (= (= lt!1690024 lt!1689493) (= lambda!170785 lambda!170672))))

(assert (=> bs!847991 (= (= lt!1690024 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170785 lambda!170761))))

(assert (=> bs!847993 (= (= lt!1690024 lt!1689048) (= lambda!170785 lambda!170653))))

(assert (=> bs!847984 (= (= lt!1690024 lt!1689629) (= lambda!170785 lambda!170699))))

(assert (=> bs!847996 (= (= lt!1690024 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170785 lambda!170697))))

(assert (=> bs!847998 (= (= lt!1690024 lt!1689504) (= lambda!170785 lambda!170671))))

(assert (=> b!4511988 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170785 lambda!170782))))

(assert (=> bs!848000 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170785 lambda!170754))))

(assert (=> bs!848002 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170785 lambda!170689))))

(assert (=> bs!848003 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170785 lambda!170745))))

(assert (=> bs!848005 (= (= lt!1690024 lt!1689058) (= lambda!170785 lambda!170648))))

(assert (=> bs!848007 (= (= lt!1690024 lt!1689561) (= lambda!170785 lambda!170692))))

(assert (=> bs!848009 (= (= lt!1690024 lt!1689430) (= lambda!170785 lambda!170655))))

(assert (=> bs!848011 (not (= lambda!170785 lambda!170658))))

(assert (=> bs!847998 (= (= lt!1690024 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170785 lambda!170670))))

(assert (=> bs!848014 (= (= lt!1690024 lt!1689923) (= lambda!170785 lambda!170759))))

(assert (=> bs!848003 (= (= lt!1690024 lt!1689888) (= lambda!170785 lambda!170748))))

(assert (=> bs!847993 (= (= lt!1690024 lt!1689441) (= lambda!170785 lambda!170654))))

(assert (=> bs!848018 (= (= lt!1690024 lt!1689398) (= lambda!170785 lambda!170650))))

(assert (=> bs!848020 (= (= lt!1690024 lt!1689409) (= lambda!170785 lambda!170705))))

(assert (=> bs!848021 (= (= lt!1690024 lt!1689058) (= lambda!170785 lambda!170647))))

(assert (=> bs!848023 (= (= lt!1690024 lt!1689441) (= lambda!170785 lambda!170777))))

(assert (=> bs!848005 (= (= lt!1690024 lt!1689409) (= lambda!170785 lambda!170649))))

(assert (=> bs!848026 (= (= lt!1690024 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170785 lambda!170669))))

(assert (=> bs!848027 (= (= lt!1690024 lt!1689950) (= lambda!170785 lambda!170768))))

(assert (=> bs!848029 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170785 lambda!170780))))

(assert (=> bs!848030 (= (= lt!1690024 lt!1689536) (= lambda!170785 lambda!170685))))

(assert (=> bs!847986 (= (= lt!1690024 lt!1689547) (= lambda!170785 lambda!170684))))

(assert (=> bs!848031 (= (= lt!1690024 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170785 lambda!170762))))

(assert (=> bs!848032 (= (= lt!1690024 lt!1689048) (= lambda!170785 lambda!170652))))

(assert (=> bs!847983 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170785 lambda!170756))))

(assert (=> bs!847987 (= (= lt!1690024 lt!1689572) (= lambda!170785 lambda!170691))))

(assert (=> bs!848033 (= (= lt!1690024 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170785 lambda!170744))))

(assert (=> bs!848034 (= (= lt!1690024 lt!1689048) (= lambda!170785 lambda!170696))))

(assert (=> bs!848031 (= (= lt!1690024 lt!1689961) (= lambda!170785 lambda!170763))))

(assert (=> b!4511988 true))

(declare-fun bs!848053 () Bool)

(declare-fun d!1388050 () Bool)

(assert (= bs!848053 (and d!1388050 d!1387722)))

(declare-fun lt!1690013 () ListMap!3557)

(declare-fun lambda!170787 () Int)

(assert (=> bs!848053 (= (= lt!1690013 lt!1689618) (= lambda!170787 lambda!170700))))

(declare-fun bs!848054 () Bool)

(assert (= bs!848054 (and d!1388050 b!4511891)))

(assert (=> bs!848054 (= (= lt!1690013 lt!1689934) (= lambda!170787 lambda!170758))))

(declare-fun bs!848056 () Bool)

(assert (= bs!848056 (and d!1388050 b!4511411)))

(assert (=> bs!848056 (= (= lt!1690013 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170787 lambda!170698))))

(declare-fun bs!848058 () Bool)

(assert (= bs!848058 (and d!1388050 b!4511291)))

(assert (=> bs!848058 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170787 lambda!170682))))

(declare-fun bs!848061 () Bool)

(assert (= bs!848061 (and d!1388050 b!4511287)))

(assert (=> bs!848061 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170787 lambda!170683))))

(declare-fun bs!848062 () Bool)

(assert (= bs!848062 (and d!1388050 b!4511303)))

(assert (=> bs!848062 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170787 lambda!170690))))

(declare-fun bs!848063 () Bool)

(assert (= bs!848063 (and d!1388050 d!1387954)))

(assert (=> bs!848063 (= (= lt!1690013 lt!1689877) (= lambda!170787 lambda!170749))))

(declare-fun bs!848064 () Bool)

(assert (= bs!848064 (and d!1388050 d!1387590)))

(assert (=> bs!848064 (= (= lt!1690013 lt!1689493) (= lambda!170787 lambda!170672))))

(declare-fun bs!848065 () Bool)

(assert (= bs!848065 (and d!1388050 b!4511918)))

(assert (=> bs!848065 (= (= lt!1690013 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170787 lambda!170761))))

(declare-fun bs!848066 () Bool)

(assert (= bs!848066 (and d!1388050 b!4511109)))

(assert (=> bs!848066 (= (= lt!1690013 lt!1689048) (= lambda!170787 lambda!170653))))

(assert (=> bs!848056 (= (= lt!1690013 lt!1689629) (= lambda!170787 lambda!170699))))

(declare-fun bs!848067 () Bool)

(assert (= bs!848067 (and d!1388050 b!4511415)))

(assert (=> bs!848067 (= (= lt!1690013 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170787 lambda!170697))))

(declare-fun bs!848068 () Bool)

(assert (= bs!848068 (and d!1388050 b!4511188)))

(assert (=> bs!848068 (= (= lt!1690013 lt!1689504) (= lambda!170787 lambda!170671))))

(declare-fun bs!848069 () Bool)

(assert (= bs!848069 (and d!1388050 b!4511988)))

(assert (=> bs!848069 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170787 lambda!170782))))

(assert (=> bs!848069 (= (= lt!1690013 lt!1690024) (= lambda!170787 lambda!170785))))

(declare-fun bs!848070 () Bool)

(assert (= bs!848070 (and d!1388050 b!4511895)))

(assert (=> bs!848070 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170787 lambda!170754))))

(declare-fun bs!848071 () Bool)

(assert (= bs!848071 (and d!1388050 b!4511307)))

(assert (=> bs!848071 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170787 lambda!170689))))

(declare-fun bs!848072 () Bool)

(assert (= bs!848072 (and d!1388050 b!4511833)))

(assert (=> bs!848072 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170787 lambda!170745))))

(declare-fun bs!848073 () Bool)

(assert (= bs!848073 (and d!1388050 b!4511066)))

(assert (=> bs!848073 (= (= lt!1690013 lt!1689058) (= lambda!170787 lambda!170648))))

(declare-fun bs!848074 () Bool)

(assert (= bs!848074 (and d!1388050 d!1387668)))

(assert (=> bs!848074 (= (= lt!1690013 lt!1689561) (= lambda!170787 lambda!170692))))

(declare-fun bs!848075 () Bool)

(assert (= bs!848075 (and d!1388050 d!1387526)))

(assert (=> bs!848075 (= (= lt!1690013 lt!1689430) (= lambda!170787 lambda!170655))))

(declare-fun bs!848076 () Bool)

(assert (= bs!848076 (and d!1388050 d!1387530)))

(assert (=> bs!848076 (not (= lambda!170787 lambda!170658))))

(assert (=> bs!848068 (= (= lt!1690013 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170787 lambda!170670))))

(declare-fun bs!848077 () Bool)

(assert (= bs!848077 (and d!1388050 d!1387984)))

(assert (=> bs!848077 (= (= lt!1690013 lt!1689923) (= lambda!170787 lambda!170759))))

(assert (=> bs!848072 (= (= lt!1690013 lt!1689888) (= lambda!170787 lambda!170748))))

(assert (=> bs!848066 (= (= lt!1690013 lt!1689441) (= lambda!170787 lambda!170654))))

(declare-fun bs!848078 () Bool)

(assert (= bs!848078 (and d!1388050 d!1387458)))

(assert (=> bs!848078 (= (= lt!1690013 lt!1689398) (= lambda!170787 lambda!170650))))

(declare-fun bs!848079 () Bool)

(assert (= bs!848079 (and d!1388050 d!1387732)))

(assert (=> bs!848079 (= (= lt!1690013 lt!1689409) (= lambda!170787 lambda!170705))))

(declare-fun bs!848080 () Bool)

(assert (= bs!848080 (and d!1388050 b!4511070)))

(assert (=> bs!848080 (= (= lt!1690013 lt!1689058) (= lambda!170787 lambda!170647))))

(declare-fun bs!848081 () Bool)

(assert (= bs!848081 (and d!1388050 d!1388018)))

(assert (=> bs!848081 (= (= lt!1690013 lt!1689441) (= lambda!170787 lambda!170777))))

(assert (=> bs!848073 (= (= lt!1690013 lt!1689409) (= lambda!170787 lambda!170649))))

(declare-fun bs!848082 () Bool)

(assert (= bs!848082 (and d!1388050 b!4511192)))

(assert (=> bs!848082 (= (= lt!1690013 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170787 lambda!170669))))

(declare-fun bs!848083 () Bool)

(assert (= bs!848083 (and d!1388050 d!1388010)))

(assert (=> bs!848083 (= (= lt!1690013 lt!1689950) (= lambda!170787 lambda!170768))))

(declare-fun bs!848084 () Bool)

(assert (= bs!848084 (and d!1388050 b!4511992)))

(assert (=> bs!848084 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170787 lambda!170780))))

(declare-fun bs!848085 () Bool)

(assert (= bs!848085 (and d!1388050 d!1387654)))

(assert (=> bs!848085 (= (= lt!1690013 lt!1689536) (= lambda!170787 lambda!170685))))

(assert (=> bs!848061 (= (= lt!1690013 lt!1689547) (= lambda!170787 lambda!170684))))

(declare-fun bs!848086 () Bool)

(assert (= bs!848086 (and d!1388050 b!4511914)))

(assert (=> bs!848086 (= (= lt!1690013 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170787 lambda!170762))))

(declare-fun bs!848087 () Bool)

(assert (= bs!848087 (and d!1388050 b!4511113)))

(assert (=> bs!848087 (= (= lt!1690013 lt!1689048) (= lambda!170787 lambda!170652))))

(assert (=> bs!848054 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170787 lambda!170756))))

(assert (=> bs!848062 (= (= lt!1690013 lt!1689572) (= lambda!170787 lambda!170691))))

(declare-fun bs!848090 () Bool)

(assert (= bs!848090 (and d!1388050 b!4511837)))

(assert (=> bs!848090 (= (= lt!1690013 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170787 lambda!170744))))

(declare-fun bs!848092 () Bool)

(assert (= bs!848092 (and d!1388050 d!1387694)))

(assert (=> bs!848092 (= (= lt!1690013 lt!1689048) (= lambda!170787 lambda!170696))))

(assert (=> bs!848086 (= (= lt!1690013 lt!1689961) (= lambda!170787 lambda!170763))))

(assert (=> d!1388050 true))

(declare-fun bm!314203 () Bool)

(declare-fun call!314208 () Unit!93482)

(assert (=> bm!314203 (= call!314208 (lemmaContainsAllItsOwnKeys!322 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))

(declare-fun bm!314204 () Bool)

(declare-fun call!314209 () Bool)

(declare-fun c!769705 () Bool)

(assert (=> bm!314204 (= call!314209 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (ite c!769705 lambda!170780 lambda!170785)))))

(declare-fun e!2810862 () ListMap!3557)

(assert (=> b!4511988 (= e!2810862 lt!1690024)))

(declare-fun lt!1690009 () ListMap!3557)

(assert (=> b!4511988 (= lt!1690009 (+!1508 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))))

(assert (=> b!4511988 (= lt!1690024 (addToMapMapFromBucket!671 (t!357684 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (+!1508 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))))

(declare-fun lt!1690021 () Unit!93482)

(assert (=> b!4511988 (= lt!1690021 call!314208)))

(declare-fun call!314210 () Bool)

(assert (=> b!4511988 call!314210))

(declare-fun lt!1690017 () Unit!93482)

(assert (=> b!4511988 (= lt!1690017 lt!1690021)))

(assert (=> b!4511988 (forall!10225 (toList!4295 lt!1690009) lambda!170785)))

(declare-fun lt!1690010 () Unit!93482)

(declare-fun Unit!93775 () Unit!93482)

(assert (=> b!4511988 (= lt!1690010 Unit!93775)))

(assert (=> b!4511988 (forall!10225 (t!357684 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) lambda!170785)))

(declare-fun lt!1690020 () Unit!93482)

(declare-fun Unit!93776 () Unit!93482)

(assert (=> b!4511988 (= lt!1690020 Unit!93776)))

(declare-fun lt!1690027 () Unit!93482)

(declare-fun Unit!93777 () Unit!93482)

(assert (=> b!4511988 (= lt!1690027 Unit!93777)))

(declare-fun lt!1690016 () Unit!93482)

(assert (=> b!4511988 (= lt!1690016 (forallContained!2477 (toList!4295 lt!1690009) lambda!170785 (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))))

(assert (=> b!4511988 (contains!13299 lt!1690009 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))))

(declare-fun lt!1690028 () Unit!93482)

(declare-fun Unit!93778 () Unit!93482)

(assert (=> b!4511988 (= lt!1690028 Unit!93778)))

(assert (=> b!4511988 (contains!13299 lt!1690024 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))))

(declare-fun lt!1690023 () Unit!93482)

(declare-fun Unit!93779 () Unit!93482)

(assert (=> b!4511988 (= lt!1690023 Unit!93779)))

(assert (=> b!4511988 (forall!10225 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lambda!170785)))

(declare-fun lt!1690018 () Unit!93482)

(declare-fun Unit!93780 () Unit!93482)

(assert (=> b!4511988 (= lt!1690018 Unit!93780)))

(assert (=> b!4511988 (forall!10225 (toList!4295 lt!1690009) lambda!170785)))

(declare-fun lt!1690026 () Unit!93482)

(declare-fun Unit!93781 () Unit!93482)

(assert (=> b!4511988 (= lt!1690026 Unit!93781)))

(declare-fun lt!1690012 () Unit!93482)

(declare-fun Unit!93782 () Unit!93482)

(assert (=> b!4511988 (= lt!1690012 Unit!93782)))

(declare-fun lt!1690015 () Unit!93482)

(assert (=> b!4511988 (= lt!1690015 (addForallContainsKeyThenBeforeAdding!322 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1690024 (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))) (_2!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))))

(assert (=> b!4511988 call!314209))

(declare-fun lt!1690008 () Unit!93482)

(assert (=> b!4511988 (= lt!1690008 lt!1690015)))

(assert (=> b!4511988 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) lambda!170785)))

(declare-fun lt!1690014 () Unit!93482)

(declare-fun Unit!93783 () Unit!93482)

(assert (=> b!4511988 (= lt!1690014 Unit!93783)))

(declare-fun res!1876871 () Bool)

(assert (=> b!4511988 (= res!1876871 (forall!10225 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lambda!170785))))

(declare-fun e!2810863 () Bool)

(assert (=> b!4511988 (=> (not res!1876871) (not e!2810863))))

(assert (=> b!4511988 e!2810863))

(declare-fun lt!1690025 () Unit!93482)

(declare-fun Unit!93784 () Unit!93482)

(assert (=> b!4511988 (= lt!1690025 Unit!93784)))

(declare-fun b!4511989 () Bool)

(declare-fun e!2810861 () Bool)

(assert (=> b!4511989 (= e!2810861 (invariantList!1001 (toList!4295 lt!1690013)))))

(declare-fun b!4511990 () Bool)

(declare-fun res!1876872 () Bool)

(assert (=> b!4511990 (=> (not res!1876872) (not e!2810861))))

(assert (=> b!4511990 (= res!1876872 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) lambda!170787))))

(declare-fun b!4511991 () Bool)

(assert (=> b!4511991 (= e!2810863 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) lambda!170785))))

(assert (=> b!4511992 (= e!2810862 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))

(declare-fun lt!1690019 () Unit!93482)

(assert (=> b!4511992 (= lt!1690019 call!314208)))

(assert (=> b!4511992 call!314210))

(declare-fun lt!1690022 () Unit!93482)

(assert (=> b!4511992 (= lt!1690022 lt!1690019)))

(assert (=> b!4511992 call!314209))

(declare-fun lt!1690011 () Unit!93482)

(declare-fun Unit!93785 () Unit!93482)

(assert (=> b!4511992 (= lt!1690011 Unit!93785)))

(assert (=> d!1388050 e!2810861))

(declare-fun res!1876873 () Bool)

(assert (=> d!1388050 (=> (not res!1876873) (not e!2810861))))

(assert (=> d!1388050 (= res!1876873 (forall!10225 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lambda!170787))))

(assert (=> d!1388050 (= lt!1690013 e!2810862)))

(assert (=> d!1388050 (= c!769705 ((_ is Nil!50598) (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))

(assert (=> d!1388050 (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))

(assert (=> d!1388050 (= (addToMapMapFromBucket!671 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) lt!1690013)))

(declare-fun bm!314205 () Bool)

(assert (=> bm!314205 (= call!314210 (forall!10225 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (ite c!769705 lambda!170780 lambda!170782)))))

(assert (= (and d!1388050 c!769705) b!4511992))

(assert (= (and d!1388050 (not c!769705)) b!4511988))

(assert (= (and b!4511988 res!1876871) b!4511991))

(assert (= (or b!4511992 b!4511988) bm!314205))

(assert (= (or b!4511992 b!4511988) bm!314204))

(assert (= (or b!4511992 b!4511988) bm!314203))

(assert (= (and d!1388050 res!1876873) b!4511990))

(assert (= (and b!4511990 res!1876872) b!4511989))

(declare-fun m!5252605 () Bool)

(assert (=> b!4511988 m!5252605))

(declare-fun m!5252607 () Bool)

(assert (=> b!4511988 m!5252607))

(declare-fun m!5252609 () Bool)

(assert (=> b!4511988 m!5252609))

(declare-fun m!5252611 () Bool)

(assert (=> b!4511988 m!5252611))

(assert (=> b!4511988 m!5250979))

(declare-fun m!5252613 () Bool)

(assert (=> b!4511988 m!5252613))

(declare-fun m!5252615 () Bool)

(assert (=> b!4511988 m!5252615))

(declare-fun m!5252617 () Bool)

(assert (=> b!4511988 m!5252617))

(declare-fun m!5252619 () Bool)

(assert (=> b!4511988 m!5252619))

(assert (=> b!4511988 m!5250979))

(assert (=> b!4511988 m!5252615))

(assert (=> b!4511988 m!5252619))

(declare-fun m!5252621 () Bool)

(assert (=> b!4511988 m!5252621))

(assert (=> b!4511988 m!5252621))

(declare-fun m!5252623 () Bool)

(assert (=> b!4511988 m!5252623))

(assert (=> b!4511991 m!5252605))

(declare-fun m!5252625 () Bool)

(assert (=> bm!314204 m!5252625))

(assert (=> bm!314203 m!5250979))

(declare-fun m!5252627 () Bool)

(assert (=> bm!314203 m!5252627))

(declare-fun m!5252631 () Bool)

(assert (=> b!4511990 m!5252631))

(declare-fun m!5252633 () Bool)

(assert (=> b!4511989 m!5252633))

(declare-fun m!5252637 () Bool)

(assert (=> bm!314205 m!5252637))

(declare-fun m!5252639 () Bool)

(assert (=> d!1388050 m!5252639))

(declare-fun m!5252641 () Bool)

(assert (=> d!1388050 m!5252641))

(assert (=> b!4511135 d!1388050))

(declare-fun bs!848106 () Bool)

(declare-fun d!1388062 () Bool)

(assert (= bs!848106 (and d!1388062 d!1387548)))

(declare-fun lambda!170789 () Int)

(assert (=> bs!848106 (= lambda!170789 lambda!170662)))

(declare-fun bs!848107 () Bool)

(assert (= bs!848107 (and d!1388062 d!1387564)))

(assert (=> bs!848107 (= lambda!170789 lambda!170667)))

(declare-fun bs!848108 () Bool)

(assert (= bs!848108 (and d!1388062 d!1387592)))

(assert (=> bs!848108 (= lambda!170789 lambda!170673)))

(declare-fun bs!848109 () Bool)

(assert (= bs!848109 (and d!1388062 d!1387406)))

(assert (=> bs!848109 (not (= lambda!170789 lambda!170553))))

(declare-fun bs!848110 () Bool)

(assert (= bs!848110 (and d!1388062 start!445924)))

(assert (=> bs!848110 (= lambda!170789 lambda!170537)))

(declare-fun bs!848111 () Bool)

(assert (= bs!848111 (and d!1388062 d!1387370)))

(assert (=> bs!848111 (= lambda!170789 lambda!170540)))

(declare-fun bs!848113 () Bool)

(assert (= bs!848113 (and d!1388062 d!1388004)))

(assert (=> bs!848113 (= lambda!170789 lambda!170760)))

(declare-fun bs!848114 () Bool)

(assert (= bs!848114 (and d!1388062 d!1387506)))

(assert (=> bs!848114 (= lambda!170789 lambda!170651)))

(declare-fun bs!848115 () Bool)

(assert (= bs!848115 (and d!1388062 d!1387556)))

(assert (=> bs!848115 (= lambda!170789 lambda!170666)))

(declare-fun bs!848116 () Bool)

(assert (= bs!848116 (and d!1388062 d!1387582)))

(assert (=> bs!848116 (= lambda!170789 lambda!170668)))

(declare-fun bs!848117 () Bool)

(assert (= bs!848117 (and d!1388062 d!1387428)))

(assert (=> bs!848117 (= lambda!170789 lambda!170561)))

(declare-fun bs!848118 () Bool)

(assert (= bs!848118 (and d!1388062 d!1387448)))

(assert (=> bs!848118 (= lambda!170789 lambda!170562)))

(declare-fun bs!848119 () Bool)

(assert (= bs!848119 (and d!1388062 d!1387550)))

(assert (=> bs!848119 (= lambda!170789 lambda!170665)))

(declare-fun bs!848120 () Bool)

(assert (= bs!848120 (and d!1388062 d!1387536)))

(assert (=> bs!848120 (= lambda!170789 lambda!170661)))

(declare-fun bs!848121 () Bool)

(assert (= bs!848121 (and d!1388062 d!1387656)))

(assert (=> bs!848121 (= lambda!170789 lambda!170686)))

(declare-fun bs!848122 () Bool)

(assert (= bs!848122 (and d!1388062 d!1387372)))

(assert (=> bs!848122 (= lambda!170789 lambda!170543)))

(declare-fun bs!848123 () Bool)

(assert (= bs!848123 (and d!1388062 d!1387670)))

(assert (=> bs!848123 (= lambda!170789 lambda!170693)))

(declare-fun bs!848124 () Bool)

(assert (= bs!848124 (and d!1388062 d!1387450)))

(assert (=> bs!848124 (= lambda!170789 lambda!170565)))

(declare-fun lt!1690051 () ListMap!3557)

(assert (=> d!1388062 (invariantList!1001 (toList!4295 lt!1690051))))

(declare-fun e!2810871 () ListMap!3557)

(assert (=> d!1388062 (= lt!1690051 e!2810871)))

(declare-fun c!769709 () Bool)

(assert (=> d!1388062 (= c!769709 ((_ is Cons!50599) (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))

(assert (=> d!1388062 (forall!10223 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))) lambda!170789)))

(assert (=> d!1388062 (= (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) lt!1690051)))

(declare-fun b!4512004 () Bool)

(assert (=> b!4512004 (= e!2810871 (addToMapMapFromBucket!671 (_2!28800 (h!56436 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (extractMap!1200 (t!357685 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065)))))))))

(declare-fun b!4512005 () Bool)

(assert (=> b!4512005 (= e!2810871 (ListMap!3558 Nil!50598))))

(assert (= (and d!1388062 c!769709) b!4512004))

(assert (= (and d!1388062 (not c!769709)) b!4512005))

(declare-fun m!5252651 () Bool)

(assert (=> d!1388062 m!5252651))

(declare-fun m!5252653 () Bool)

(assert (=> d!1388062 m!5252653))

(declare-fun m!5252655 () Bool)

(assert (=> b!4512004 m!5252655))

(assert (=> b!4512004 m!5252655))

(declare-fun m!5252657 () Bool)

(assert (=> b!4512004 m!5252657))

(assert (=> b!4511135 d!1388062))

(declare-fun d!1388070 () Bool)

(assert (=> d!1388070 (isDefined!8368 (getValueByKey!1061 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(declare-fun lt!1690052 () Unit!93482)

(assert (=> d!1388070 (= lt!1690052 (choose!29326 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(assert (=> d!1388070 (invariantList!1001 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1388070 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!965 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) lt!1690052)))

(declare-fun bs!848125 () Bool)

(assert (= bs!848125 d!1388070))

(assert (=> bs!848125 m!5250607))

(assert (=> bs!848125 m!5250607))

(assert (=> bs!848125 m!5250609))

(declare-fun m!5252659 () Bool)

(assert (=> bs!848125 m!5252659))

(assert (=> bs!848125 m!5252147))

(assert (=> b!4510966 d!1388070))

(assert (=> b!4510966 d!1387840))

(assert (=> b!4510966 d!1387842))

(declare-fun d!1388072 () Bool)

(assert (=> d!1388072 (contains!13303 (getKeysList!449 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287)))

(declare-fun lt!1690053 () Unit!93482)

(assert (=> d!1388072 (= lt!1690053 (choose!29327 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(assert (=> d!1388072 (invariantList!1001 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1388072 (= (lemmaInListThenGetKeysListContains!445 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) lt!1690053)))

(declare-fun bs!848126 () Bool)

(assert (= bs!848126 d!1388072))

(assert (=> bs!848126 m!5250613))

(assert (=> bs!848126 m!5250613))

(declare-fun m!5252661 () Bool)

(assert (=> bs!848126 m!5252661))

(declare-fun m!5252663 () Bool)

(assert (=> bs!848126 m!5252663))

(assert (=> bs!848126 m!5252147))

(assert (=> b!4510966 d!1388072))

(declare-fun d!1388074 () Bool)

(declare-fun e!2810875 () Bool)

(assert (=> d!1388074 e!2810875))

(declare-fun res!1876879 () Bool)

(assert (=> d!1388074 (=> res!1876879 e!2810875)))

(declare-fun lt!1690054 () Bool)

(assert (=> d!1388074 (= res!1876879 (not lt!1690054))))

(declare-fun lt!1690056 () Bool)

(assert (=> d!1388074 (= lt!1690054 lt!1690056)))

(declare-fun lt!1690057 () Unit!93482)

(declare-fun e!2810874 () Unit!93482)

(assert (=> d!1388074 (= lt!1690057 e!2810874)))

(declare-fun c!769712 () Bool)

(assert (=> d!1388074 (= c!769712 lt!1690056)))

(assert (=> d!1388074 (= lt!1690056 (containsKey!1735 (toList!4296 lt!1689466) (_1!28800 lt!1689065)))))

(assert (=> d!1388074 (= (contains!13300 lt!1689466 (_1!28800 lt!1689065)) lt!1690054)))

(declare-fun b!4512010 () Bool)

(declare-fun lt!1690055 () Unit!93482)

(assert (=> b!4512010 (= e!2810874 lt!1690055)))

(assert (=> b!4512010 (= lt!1690055 (lemmaContainsKeyImpliesGetValueByKeyDefined!964 (toList!4296 lt!1689466) (_1!28800 lt!1689065)))))

(assert (=> b!4512010 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689466) (_1!28800 lt!1689065)))))

(declare-fun b!4512011 () Bool)

(declare-fun Unit!93790 () Unit!93482)

(assert (=> b!4512011 (= e!2810874 Unit!93790)))

(declare-fun b!4512012 () Bool)

(assert (=> b!4512012 (= e!2810875 (isDefined!8367 (getValueByKey!1060 (toList!4296 lt!1689466) (_1!28800 lt!1689065))))))

(assert (= (and d!1388074 c!769712) b!4512010))

(assert (= (and d!1388074 (not c!769712)) b!4512011))

(assert (= (and d!1388074 (not res!1876879)) b!4512012))

(declare-fun m!5252665 () Bool)

(assert (=> d!1388074 m!5252665))

(declare-fun m!5252667 () Bool)

(assert (=> b!4512010 m!5252667))

(assert (=> b!4512010 m!5251003))

(assert (=> b!4512010 m!5251003))

(declare-fun m!5252669 () Bool)

(assert (=> b!4512010 m!5252669))

(assert (=> b!4512012 m!5251003))

(assert (=> b!4512012 m!5251003))

(assert (=> b!4512012 m!5252669))

(assert (=> d!1387552 d!1388074))

(declare-fun b!4512014 () Bool)

(declare-fun e!2810876 () Option!11080)

(declare-fun e!2810877 () Option!11080)

(assert (=> b!4512014 (= e!2810876 e!2810877)))

(declare-fun c!769714 () Bool)

(assert (=> b!4512014 (= c!769714 (and ((_ is Cons!50599) lt!1689465) (not (= (_1!28800 (h!56436 lt!1689465)) (_1!28800 lt!1689065)))))))

(declare-fun b!4512013 () Bool)

(assert (=> b!4512013 (= e!2810876 (Some!11079 (_2!28800 (h!56436 lt!1689465))))))

(declare-fun b!4512015 () Bool)

(assert (=> b!4512015 (= e!2810877 (getValueByKey!1060 (t!357685 lt!1689465) (_1!28800 lt!1689065)))))

(declare-fun d!1388076 () Bool)

(declare-fun c!769713 () Bool)

(assert (=> d!1388076 (= c!769713 (and ((_ is Cons!50599) lt!1689465) (= (_1!28800 (h!56436 lt!1689465)) (_1!28800 lt!1689065))))))

(assert (=> d!1388076 (= (getValueByKey!1060 lt!1689465 (_1!28800 lt!1689065)) e!2810876)))

(declare-fun b!4512016 () Bool)

(assert (=> b!4512016 (= e!2810877 None!11079)))

(assert (= (and d!1388076 c!769713) b!4512013))

(assert (= (and d!1388076 (not c!769713)) b!4512014))

(assert (= (and b!4512014 c!769714) b!4512015))

(assert (= (and b!4512014 (not c!769714)) b!4512016))

(declare-fun m!5252671 () Bool)

(assert (=> b!4512015 m!5252671))

(assert (=> d!1387552 d!1388076))

(declare-fun d!1388078 () Bool)

(assert (=> d!1388078 (= (getValueByKey!1060 lt!1689465 (_1!28800 lt!1689065)) (Some!11079 (_2!28800 lt!1689065)))))

(declare-fun lt!1690058 () Unit!93482)

(assert (=> d!1388078 (= lt!1690058 (choose!29332 lt!1689465 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(declare-fun e!2810878 () Bool)

(assert (=> d!1388078 e!2810878))

(declare-fun res!1876880 () Bool)

(assert (=> d!1388078 (=> (not res!1876880) (not e!2810878))))

(assert (=> d!1388078 (= res!1876880 (isStrictlySorted!415 lt!1689465))))

(assert (=> d!1388078 (= (lemmaContainsTupThenGetReturnValue!654 lt!1689465 (_1!28800 lt!1689065) (_2!28800 lt!1689065)) lt!1690058)))

(declare-fun b!4512017 () Bool)

(declare-fun res!1876881 () Bool)

(assert (=> b!4512017 (=> (not res!1876881) (not e!2810878))))

(assert (=> b!4512017 (= res!1876881 (containsKey!1735 lt!1689465 (_1!28800 lt!1689065)))))

(declare-fun b!4512018 () Bool)

(assert (=> b!4512018 (= e!2810878 (contains!13301 lt!1689465 (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065))))))

(assert (= (and d!1388078 res!1876880) b!4512017))

(assert (= (and b!4512017 res!1876881) b!4512018))

(assert (=> d!1388078 m!5250997))

(declare-fun m!5252673 () Bool)

(assert (=> d!1388078 m!5252673))

(declare-fun m!5252675 () Bool)

(assert (=> d!1388078 m!5252675))

(declare-fun m!5252677 () Bool)

(assert (=> b!4512017 m!5252677))

(declare-fun m!5252679 () Bool)

(assert (=> b!4512018 m!5252679))

(assert (=> d!1387552 d!1388078))

(declare-fun c!769717 () Bool)

(declare-fun e!2810881 () List!50723)

(declare-fun c!769718 () Bool)

(declare-fun b!4512019 () Bool)

(assert (=> b!4512019 (= e!2810881 (ite c!769717 (t!357685 (toList!4296 lt!1689057)) (ite c!769718 (Cons!50599 (h!56436 (toList!4296 lt!1689057)) (t!357685 (toList!4296 lt!1689057))) Nil!50599)))))

(declare-fun bm!314209 () Bool)

(declare-fun call!314214 () List!50723)

(declare-fun call!314216 () List!50723)

(assert (=> bm!314209 (= call!314214 call!314216)))

(declare-fun b!4512020 () Bool)

(declare-fun res!1876882 () Bool)

(declare-fun e!2810883 () Bool)

(assert (=> b!4512020 (=> (not res!1876882) (not e!2810883))))

(declare-fun lt!1690059 () List!50723)

(assert (=> b!4512020 (= res!1876882 (containsKey!1735 lt!1690059 (_1!28800 lt!1689065)))))

(declare-fun d!1388080 () Bool)

(assert (=> d!1388080 e!2810883))

(declare-fun res!1876883 () Bool)

(assert (=> d!1388080 (=> (not res!1876883) (not e!2810883))))

(assert (=> d!1388080 (= res!1876883 (isStrictlySorted!415 lt!1690059))))

(declare-fun e!2810882 () List!50723)

(assert (=> d!1388080 (= lt!1690059 e!2810882)))

(declare-fun c!769715 () Bool)

(assert (=> d!1388080 (= c!769715 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (bvslt (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689065))))))

(assert (=> d!1388080 (isStrictlySorted!415 (toList!4296 lt!1689057))))

(assert (=> d!1388080 (= (insertStrictlySorted!392 (toList!4296 lt!1689057) (_1!28800 lt!1689065) (_2!28800 lt!1689065)) lt!1690059)))

(declare-fun b!4512021 () Bool)

(declare-fun e!2810879 () List!50723)

(declare-fun call!314215 () List!50723)

(assert (=> b!4512021 (= e!2810879 call!314215)))

(declare-fun b!4512022 () Bool)

(declare-fun e!2810880 () List!50723)

(assert (=> b!4512022 (= e!2810880 call!314214)))

(declare-fun bm!314210 () Bool)

(assert (=> bm!314210 (= call!314215 call!314214)))

(declare-fun b!4512023 () Bool)

(assert (=> b!4512023 (= e!2810881 (insertStrictlySorted!392 (t!357685 (toList!4296 lt!1689057)) (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))

(declare-fun b!4512024 () Bool)

(assert (=> b!4512024 (= e!2810882 e!2810880)))

(assert (=> b!4512024 (= c!769717 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (= (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689065))))))

(declare-fun bm!314211 () Bool)

(assert (=> bm!314211 (= call!314216 ($colon$colon!919 e!2810881 (ite c!769715 (h!56436 (toList!4296 lt!1689057)) (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065)))))))

(declare-fun c!769716 () Bool)

(assert (=> bm!314211 (= c!769716 c!769715)))

(declare-fun b!4512025 () Bool)

(assert (=> b!4512025 (= e!2810879 call!314215)))

(declare-fun b!4512026 () Bool)

(assert (=> b!4512026 (= e!2810883 (contains!13301 lt!1690059 (tuple2!51013 (_1!28800 lt!1689065) (_2!28800 lt!1689065))))))

(declare-fun b!4512027 () Bool)

(assert (=> b!4512027 (= c!769718 (and ((_ is Cons!50599) (toList!4296 lt!1689057)) (bvsgt (_1!28800 (h!56436 (toList!4296 lt!1689057))) (_1!28800 lt!1689065))))))

(assert (=> b!4512027 (= e!2810880 e!2810879)))

(declare-fun b!4512028 () Bool)

(assert (=> b!4512028 (= e!2810882 call!314216)))

(assert (= (and d!1388080 c!769715) b!4512028))

(assert (= (and d!1388080 (not c!769715)) b!4512024))

(assert (= (and b!4512024 c!769717) b!4512022))

(assert (= (and b!4512024 (not c!769717)) b!4512027))

(assert (= (and b!4512027 c!769718) b!4512021))

(assert (= (and b!4512027 (not c!769718)) b!4512025))

(assert (= (or b!4512021 b!4512025) bm!314210))

(assert (= (or b!4512022 bm!314210) bm!314209))

(assert (= (or b!4512028 bm!314209) bm!314211))

(assert (= (and bm!314211 c!769716) b!4512023))

(assert (= (and bm!314211 (not c!769716)) b!4512019))

(assert (= (and d!1388080 res!1876883) b!4512020))

(assert (= (and b!4512020 res!1876882) b!4512026))

(declare-fun m!5252681 () Bool)

(assert (=> b!4512026 m!5252681))

(declare-fun m!5252683 () Bool)

(assert (=> bm!314211 m!5252683))

(declare-fun m!5252685 () Bool)

(assert (=> b!4512020 m!5252685))

(declare-fun m!5252687 () Bool)

(assert (=> d!1388080 m!5252687))

(assert (=> d!1388080 m!5251999))

(declare-fun m!5252689 () Bool)

(assert (=> b!4512023 m!5252689))

(assert (=> d!1387552 d!1388080))

(declare-fun bs!848127 () Bool)

(declare-fun b!4512033 () Bool)

(assert (= bs!848127 (and b!4512033 b!4511470)))

(declare-fun lambda!170790 () Int)

(assert (=> bs!848127 (= (= (t!357684 (toList!4295 lt!1689046)) (toList!4295 lt!1689454)) (= lambda!170790 lambda!170711))))

(declare-fun bs!848128 () Bool)

(assert (= bs!848128 (and b!4512033 b!4511295)))

(assert (=> bs!848128 (= (= (t!357684 (toList!4295 lt!1689046)) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170790 lambda!170687))))

(declare-fun bs!848129 () Bool)

(assert (= bs!848129 (and b!4512033 b!4511210)))

(assert (=> bs!848129 (= (= (t!357684 (toList!4295 lt!1689046)) (toList!4295 lt!1689045)) (= lambda!170790 lambda!170678))))

(declare-fun bs!848130 () Bool)

(assert (= bs!848130 (and b!4512033 b!4511804)))

(assert (=> bs!848130 (= (= (t!357684 (toList!4295 lt!1689046)) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170790 lambda!170739))))

(declare-fun bs!848131 () Bool)

(assert (= bs!848131 (and b!4512033 b!4511806)))

(assert (=> bs!848131 (= (= (t!357684 (toList!4295 lt!1689046)) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170790 lambda!170737))))

(declare-fun bs!848132 () Bool)

(assert (= bs!848132 (and b!4512033 b!4511809)))

(assert (=> bs!848132 (= (= (t!357684 (toList!4295 lt!1689046)) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170790 lambda!170738))))

(declare-fun bs!848133 () Bool)

(assert (= bs!848133 (and b!4512033 b!4511217)))

(assert (=> bs!848133 (= (= (t!357684 (toList!4295 lt!1689046)) (toList!4295 lt!1689046)) (= lambda!170790 lambda!170680))))

(assert (=> b!4512033 true))

(declare-fun bs!848134 () Bool)

(declare-fun b!4512036 () Bool)

(assert (= bs!848134 (and b!4512036 b!4511470)))

(declare-fun lambda!170791 () Int)

(assert (=> bs!848134 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (toList!4295 lt!1689454)) (= lambda!170791 lambda!170711))))

(declare-fun bs!848135 () Bool)

(assert (= bs!848135 (and b!4512036 b!4511295)))

(assert (=> bs!848135 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170791 lambda!170687))))

(declare-fun bs!848136 () Bool)

(assert (= bs!848136 (and b!4512036 b!4511210)))

(assert (=> bs!848136 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (toList!4295 lt!1689045)) (= lambda!170791 lambda!170678))))

(declare-fun bs!848137 () Bool)

(assert (= bs!848137 (and b!4512036 b!4511804)))

(assert (=> bs!848137 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170791 lambda!170739))))

(declare-fun bs!848138 () Bool)

(assert (= bs!848138 (and b!4512036 b!4511806)))

(assert (=> bs!848138 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170791 lambda!170737))))

(declare-fun bs!848139 () Bool)

(assert (= bs!848139 (and b!4512036 b!4511217)))

(assert (=> bs!848139 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (toList!4295 lt!1689046)) (= lambda!170791 lambda!170680))))

(declare-fun bs!848140 () Bool)

(assert (= bs!848140 (and b!4512036 b!4512033)))

(assert (=> bs!848140 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (t!357684 (toList!4295 lt!1689046))) (= lambda!170791 lambda!170790))))

(declare-fun bs!848141 () Bool)

(assert (= bs!848141 (and b!4512036 b!4511809)))

(assert (=> bs!848141 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046))) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170791 lambda!170738))))

(assert (=> b!4512036 true))

(declare-fun bs!848142 () Bool)

(declare-fun b!4512031 () Bool)

(assert (= bs!848142 (and b!4512031 b!4511470)))

(declare-fun lambda!170792 () Int)

(assert (=> bs!848142 (= (= (toList!4295 lt!1689046) (toList!4295 lt!1689454)) (= lambda!170792 lambda!170711))))

(declare-fun bs!848143 () Bool)

(assert (= bs!848143 (and b!4512031 b!4511295)))

(assert (=> bs!848143 (= (= (toList!4295 lt!1689046) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170792 lambda!170687))))

(declare-fun bs!848144 () Bool)

(assert (= bs!848144 (and b!4512031 b!4512036)))

(assert (=> bs!848144 (= (= (toList!4295 lt!1689046) (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046)))) (= lambda!170792 lambda!170791))))

(declare-fun bs!848145 () Bool)

(assert (= bs!848145 (and b!4512031 b!4511210)))

(assert (=> bs!848145 (= (= (toList!4295 lt!1689046) (toList!4295 lt!1689045)) (= lambda!170792 lambda!170678))))

(declare-fun bs!848146 () Bool)

(assert (= bs!848146 (and b!4512031 b!4511804)))

(assert (=> bs!848146 (= (= (toList!4295 lt!1689046) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170792 lambda!170739))))

(declare-fun bs!848147 () Bool)

(assert (= bs!848147 (and b!4512031 b!4511806)))

(assert (=> bs!848147 (= (= (toList!4295 lt!1689046) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170792 lambda!170737))))

(declare-fun bs!848148 () Bool)

(assert (= bs!848148 (and b!4512031 b!4511217)))

(assert (=> bs!848148 (= lambda!170792 lambda!170680)))

(declare-fun bs!848149 () Bool)

(assert (= bs!848149 (and b!4512031 b!4512033)))

(assert (=> bs!848149 (= (= (toList!4295 lt!1689046) (t!357684 (toList!4295 lt!1689046))) (= lambda!170792 lambda!170790))))

(declare-fun bs!848150 () Bool)

(assert (= bs!848150 (and b!4512031 b!4511809)))

(assert (=> bs!848150 (= (= (toList!4295 lt!1689046) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170792 lambda!170738))))

(assert (=> b!4512031 true))

(declare-fun bs!848151 () Bool)

(declare-fun b!4512029 () Bool)

(assert (= bs!848151 (and b!4512029 b!4511296)))

(declare-fun lambda!170793 () Int)

(assert (=> bs!848151 (= lambda!170793 lambda!170688)))

(declare-fun bs!848152 () Bool)

(assert (= bs!848152 (and b!4512029 b!4511802)))

(assert (=> bs!848152 (= lambda!170793 lambda!170740)))

(declare-fun bs!848153 () Bool)

(assert (= bs!848153 (and b!4512029 b!4511471)))

(assert (=> bs!848153 (= lambda!170793 lambda!170712)))

(declare-fun bs!848154 () Bool)

(assert (= bs!848154 (and b!4512029 b!4511218)))

(assert (=> bs!848154 (= lambda!170793 lambda!170681)))

(declare-fun bs!848155 () Bool)

(assert (= bs!848155 (and b!4512029 b!4511211)))

(assert (=> bs!848155 (= lambda!170793 lambda!170679)))

(declare-fun lt!1690063 () List!50725)

(declare-fun e!2810887 () Bool)

(assert (=> b!4512029 (= e!2810887 (= (content!8311 lt!1690063) (content!8311 (map!11122 (toList!4295 lt!1689046) lambda!170793))))))

(declare-fun b!4512030 () Bool)

(declare-fun res!1876885 () Bool)

(assert (=> b!4512030 (=> (not res!1876885) (not e!2810887))))

(assert (=> b!4512030 (= res!1876885 (= (length!334 lt!1690063) (length!335 (toList!4295 lt!1689046))))))

(declare-fun res!1876886 () Bool)

(assert (=> b!4512031 (=> (not res!1876886) (not e!2810887))))

(assert (=> b!4512031 (= res!1876886 (forall!10226 lt!1690063 lambda!170792))))

(declare-fun b!4512032 () Bool)

(assert (=> b!4512032 false))

(declare-fun e!2810886 () Unit!93482)

(declare-fun Unit!93792 () Unit!93482)

(assert (=> b!4512032 (= e!2810886 Unit!93792)))

(declare-fun b!4512034 () Bool)

(declare-fun e!2810884 () Unit!93482)

(declare-fun Unit!93793 () Unit!93482)

(assert (=> b!4512034 (= e!2810884 Unit!93793)))

(declare-fun b!4512035 () Bool)

(declare-fun e!2810885 () List!50725)

(assert (=> b!4512035 (= e!2810885 Nil!50601)))

(assert (=> b!4512036 (= e!2810885 (Cons!50601 (_1!28799 (h!56435 (toList!4295 lt!1689046))) (getKeysList!449 (t!357684 (toList!4295 lt!1689046)))))))

(declare-fun c!769721 () Bool)

(assert (=> b!4512036 (= c!769721 (containsKey!1736 (t!357684 (toList!4295 lt!1689046)) (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(declare-fun lt!1690060 () Unit!93482)

(assert (=> b!4512036 (= lt!1690060 e!2810886)))

(declare-fun c!769719 () Bool)

(assert (=> b!4512036 (= c!769719 (contains!13303 (getKeysList!449 (t!357684 (toList!4295 lt!1689046))) (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(declare-fun lt!1690062 () Unit!93482)

(assert (=> b!4512036 (= lt!1690062 e!2810884)))

(declare-fun lt!1690061 () List!50725)

(assert (=> b!4512036 (= lt!1690061 (getKeysList!449 (t!357684 (toList!4295 lt!1689046))))))

(declare-fun lt!1690066 () Unit!93482)

(assert (=> b!4512036 (= lt!1690066 (lemmaForallContainsAddHeadPreserves!161 (t!357684 (toList!4295 lt!1689046)) lt!1690061 (h!56435 (toList!4295 lt!1689046))))))

(assert (=> b!4512036 (forall!10226 lt!1690061 lambda!170791)))

(declare-fun lt!1690065 () Unit!93482)

(assert (=> b!4512036 (= lt!1690065 lt!1690066)))

(declare-fun b!4512037 () Bool)

(declare-fun Unit!93794 () Unit!93482)

(assert (=> b!4512037 (= e!2810886 Unit!93794)))

(assert (=> b!4512033 false))

(declare-fun lt!1690064 () Unit!93482)

(assert (=> b!4512033 (= lt!1690064 (forallContained!2479 (getKeysList!449 (t!357684 (toList!4295 lt!1689046))) lambda!170790 (_1!28799 (h!56435 (toList!4295 lt!1689046)))))))

(declare-fun Unit!93795 () Unit!93482)

(assert (=> b!4512033 (= e!2810884 Unit!93795)))

(declare-fun d!1388082 () Bool)

(assert (=> d!1388082 e!2810887))

(declare-fun res!1876884 () Bool)

(assert (=> d!1388082 (=> (not res!1876884) (not e!2810887))))

(assert (=> d!1388082 (= res!1876884 (noDuplicate!739 lt!1690063))))

(assert (=> d!1388082 (= lt!1690063 e!2810885)))

(declare-fun c!769720 () Bool)

(assert (=> d!1388082 (= c!769720 ((_ is Cons!50598) (toList!4295 lt!1689046)))))

(assert (=> d!1388082 (invariantList!1001 (toList!4295 lt!1689046))))

(assert (=> d!1388082 (= (getKeysList!449 (toList!4295 lt!1689046)) lt!1690063)))

(assert (= (and d!1388082 c!769720) b!4512036))

(assert (= (and d!1388082 (not c!769720)) b!4512035))

(assert (= (and b!4512036 c!769721) b!4512032))

(assert (= (and b!4512036 (not c!769721)) b!4512037))

(assert (= (and b!4512036 c!769719) b!4512033))

(assert (= (and b!4512036 (not c!769719)) b!4512034))

(assert (= (and d!1388082 res!1876884) b!4512030))

(assert (= (and b!4512030 res!1876885) b!4512031))

(assert (= (and b!4512031 res!1876886) b!4512029))

(assert (=> b!4512033 m!5251847))

(assert (=> b!4512033 m!5251847))

(declare-fun m!5252691 () Bool)

(assert (=> b!4512033 m!5252691))

(declare-fun m!5252693 () Bool)

(assert (=> b!4512031 m!5252693))

(declare-fun m!5252695 () Bool)

(assert (=> b!4512029 m!5252695))

(declare-fun m!5252697 () Bool)

(assert (=> b!4512029 m!5252697))

(assert (=> b!4512029 m!5252697))

(declare-fun m!5252699 () Bool)

(assert (=> b!4512029 m!5252699))

(assert (=> b!4512036 m!5251847))

(assert (=> b!4512036 m!5251847))

(assert (=> b!4512036 m!5251849))

(declare-fun m!5252701 () Bool)

(assert (=> b!4512036 m!5252701))

(declare-fun m!5252703 () Bool)

(assert (=> b!4512036 m!5252703))

(declare-fun m!5252705 () Bool)

(assert (=> b!4512036 m!5252705))

(declare-fun m!5252707 () Bool)

(assert (=> d!1388082 m!5252707))

(assert (=> d!1388082 m!5251223))

(declare-fun m!5252709 () Bool)

(assert (=> b!4512030 m!5252709))

(assert (=> b!4512030 m!5251179))

(assert (=> b!4510980 d!1388082))

(declare-fun bs!848156 () Bool)

(declare-fun b!4512042 () Bool)

(assert (= bs!848156 (and b!4512042 b!4511470)))

(declare-fun lambda!170794 () Int)

(assert (=> bs!848156 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 lt!1689454)) (= lambda!170794 lambda!170711))))

(declare-fun bs!848157 () Bool)

(assert (= bs!848157 (and b!4512042 b!4511295)))

(assert (=> bs!848157 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170794 lambda!170687))))

(declare-fun bs!848158 () Bool)

(assert (= bs!848158 (and b!4512042 b!4512036)))

(assert (=> bs!848158 (= (= (t!357684 (toList!4295 lt!1689045)) (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046)))) (= lambda!170794 lambda!170791))))

(declare-fun bs!848159 () Bool)

(assert (= bs!848159 (and b!4512042 b!4511210)))

(assert (=> bs!848159 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 lt!1689045)) (= lambda!170794 lambda!170678))))

(declare-fun bs!848160 () Bool)

(assert (= bs!848160 (and b!4512042 b!4511804)))

(assert (=> bs!848160 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170794 lambda!170739))))

(declare-fun bs!848161 () Bool)

(assert (= bs!848161 (and b!4512042 b!4511806)))

(assert (=> bs!848161 (= (= (t!357684 (toList!4295 lt!1689045)) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170794 lambda!170737))))

(declare-fun bs!848162 () Bool)

(assert (= bs!848162 (and b!4512042 b!4512031)))

(assert (=> bs!848162 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 lt!1689046)) (= lambda!170794 lambda!170792))))

(declare-fun bs!848163 () Bool)

(assert (= bs!848163 (and b!4512042 b!4511217)))

(assert (=> bs!848163 (= (= (t!357684 (toList!4295 lt!1689045)) (toList!4295 lt!1689046)) (= lambda!170794 lambda!170680))))

(declare-fun bs!848164 () Bool)

(assert (= bs!848164 (and b!4512042 b!4512033)))

(assert (=> bs!848164 (= (= (t!357684 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689046))) (= lambda!170794 lambda!170790))))

(declare-fun bs!848165 () Bool)

(assert (= bs!848165 (and b!4512042 b!4511809)))

(assert (=> bs!848165 (= (= (t!357684 (toList!4295 lt!1689045)) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170794 lambda!170738))))

(assert (=> b!4512042 true))

(declare-fun bs!848166 () Bool)

(declare-fun b!4512045 () Bool)

(assert (= bs!848166 (and b!4512045 b!4511470)))

(declare-fun lambda!170795 () Int)

(assert (=> bs!848166 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 lt!1689454)) (= lambda!170795 lambda!170711))))

(declare-fun bs!848167 () Bool)

(assert (= bs!848167 (and b!4512045 b!4511295)))

(assert (=> bs!848167 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170795 lambda!170687))))

(declare-fun bs!848168 () Bool)

(assert (= bs!848168 (and b!4512045 b!4511210)))

(assert (=> bs!848168 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 lt!1689045)) (= lambda!170795 lambda!170678))))

(declare-fun bs!848169 () Bool)

(assert (= bs!848169 (and b!4512045 b!4511804)))

(assert (=> bs!848169 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170795 lambda!170739))))

(declare-fun bs!848170 () Bool)

(assert (= bs!848170 (and b!4512045 b!4511806)))

(assert (=> bs!848170 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170795 lambda!170737))))

(declare-fun bs!848171 () Bool)

(assert (= bs!848171 (and b!4512045 b!4512031)))

(assert (=> bs!848171 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 lt!1689046)) (= lambda!170795 lambda!170792))))

(declare-fun bs!848172 () Bool)

(assert (= bs!848172 (and b!4512045 b!4511217)))

(assert (=> bs!848172 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (toList!4295 lt!1689046)) (= lambda!170795 lambda!170680))))

(declare-fun bs!848173 () Bool)

(assert (= bs!848173 (and b!4512045 b!4512036)))

(assert (=> bs!848173 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046)))) (= lambda!170795 lambda!170791))))

(declare-fun bs!848174 () Bool)

(assert (= bs!848174 (and b!4512045 b!4512042)))

(assert (=> bs!848174 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (t!357684 (toList!4295 lt!1689045))) (= lambda!170795 lambda!170794))))

(declare-fun bs!848175 () Bool)

(assert (= bs!848175 (and b!4512045 b!4512033)))

(assert (=> bs!848175 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (t!357684 (toList!4295 lt!1689046))) (= lambda!170795 lambda!170790))))

(declare-fun bs!848176 () Bool)

(assert (= bs!848176 (and b!4512045 b!4511809)))

(assert (=> bs!848176 (= (= (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045))) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170795 lambda!170738))))

(assert (=> b!4512045 true))

(declare-fun bs!848177 () Bool)

(declare-fun b!4512040 () Bool)

(assert (= bs!848177 (and b!4512040 b!4511470)))

(declare-fun lambda!170796 () Int)

(assert (=> bs!848177 (= (= (toList!4295 lt!1689045) (toList!4295 lt!1689454)) (= lambda!170796 lambda!170711))))

(declare-fun bs!848178 () Bool)

(assert (= bs!848178 (and b!4512040 b!4511295)))

(assert (=> bs!848178 (= (= (toList!4295 lt!1689045) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170796 lambda!170687))))

(declare-fun bs!848179 () Bool)

(assert (= bs!848179 (and b!4512040 b!4511210)))

(assert (=> bs!848179 (= lambda!170796 lambda!170678)))

(declare-fun bs!848180 () Bool)

(assert (= bs!848180 (and b!4512040 b!4511804)))

(assert (=> bs!848180 (= (= (toList!4295 lt!1689045) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= lambda!170796 lambda!170739))))

(declare-fun bs!848181 () Bool)

(assert (= bs!848181 (and b!4512040 b!4511806)))

(assert (=> bs!848181 (= (= (toList!4295 lt!1689045) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) (= lambda!170796 lambda!170737))))

(declare-fun bs!848182 () Bool)

(assert (= bs!848182 (and b!4512040 b!4512031)))

(assert (=> bs!848182 (= (= (toList!4295 lt!1689045) (toList!4295 lt!1689046)) (= lambda!170796 lambda!170792))))

(declare-fun bs!848183 () Bool)

(assert (= bs!848183 (and b!4512040 b!4512045)))

(assert (=> bs!848183 (= (= (toList!4295 lt!1689045) (Cons!50598 (h!56435 (toList!4295 lt!1689045)) (t!357684 (toList!4295 lt!1689045)))) (= lambda!170796 lambda!170795))))

(declare-fun bs!848184 () Bool)

(assert (= bs!848184 (and b!4512040 b!4511217)))

(assert (=> bs!848184 (= (= (toList!4295 lt!1689045) (toList!4295 lt!1689046)) (= lambda!170796 lambda!170680))))

(declare-fun bs!848185 () Bool)

(assert (= bs!848185 (and b!4512040 b!4512036)))

(assert (=> bs!848185 (= (= (toList!4295 lt!1689045) (Cons!50598 (h!56435 (toList!4295 lt!1689046)) (t!357684 (toList!4295 lt!1689046)))) (= lambda!170796 lambda!170791))))

(declare-fun bs!848186 () Bool)

(assert (= bs!848186 (and b!4512040 b!4512042)))

(assert (=> bs!848186 (= (= (toList!4295 lt!1689045) (t!357684 (toList!4295 lt!1689045))) (= lambda!170796 lambda!170794))))

(declare-fun bs!848187 () Bool)

(assert (= bs!848187 (and b!4512040 b!4512033)))

(assert (=> bs!848187 (= (= (toList!4295 lt!1689045) (t!357684 (toList!4295 lt!1689046))) (= lambda!170796 lambda!170790))))

(declare-fun bs!848188 () Bool)

(assert (= bs!848188 (and b!4512040 b!4511809)))

(assert (=> bs!848188 (= (= (toList!4295 lt!1689045) (Cons!50598 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))) (= lambda!170796 lambda!170738))))

(assert (=> b!4512040 true))

(declare-fun bs!848189 () Bool)

(declare-fun b!4512038 () Bool)

(assert (= bs!848189 (and b!4512038 b!4511296)))

(declare-fun lambda!170797 () Int)

(assert (=> bs!848189 (= lambda!170797 lambda!170688)))

(declare-fun bs!848190 () Bool)

(assert (= bs!848190 (and b!4512038 b!4511802)))

(assert (=> bs!848190 (= lambda!170797 lambda!170740)))

(declare-fun bs!848191 () Bool)

(assert (= bs!848191 (and b!4512038 b!4512029)))

(assert (=> bs!848191 (= lambda!170797 lambda!170793)))

(declare-fun bs!848192 () Bool)

(assert (= bs!848192 (and b!4512038 b!4511471)))

(assert (=> bs!848192 (= lambda!170797 lambda!170712)))

(declare-fun bs!848193 () Bool)

(assert (= bs!848193 (and b!4512038 b!4511218)))

(assert (=> bs!848193 (= lambda!170797 lambda!170681)))

(declare-fun bs!848194 () Bool)

(assert (= bs!848194 (and b!4512038 b!4511211)))

(assert (=> bs!848194 (= lambda!170797 lambda!170679)))

(declare-fun lt!1690070 () List!50725)

(declare-fun e!2810891 () Bool)

(assert (=> b!4512038 (= e!2810891 (= (content!8311 lt!1690070) (content!8311 (map!11122 (toList!4295 lt!1689045) lambda!170797))))))

(declare-fun b!4512039 () Bool)

(declare-fun res!1876888 () Bool)

(assert (=> b!4512039 (=> (not res!1876888) (not e!2810891))))

(assert (=> b!4512039 (= res!1876888 (= (length!334 lt!1690070) (length!335 (toList!4295 lt!1689045))))))

(declare-fun res!1876889 () Bool)

(assert (=> b!4512040 (=> (not res!1876889) (not e!2810891))))

(assert (=> b!4512040 (= res!1876889 (forall!10226 lt!1690070 lambda!170796))))

(declare-fun b!4512041 () Bool)

(assert (=> b!4512041 false))

(declare-fun e!2810890 () Unit!93482)

(declare-fun Unit!93796 () Unit!93482)

(assert (=> b!4512041 (= e!2810890 Unit!93796)))

(declare-fun b!4512043 () Bool)

(declare-fun e!2810888 () Unit!93482)

(declare-fun Unit!93797 () Unit!93482)

(assert (=> b!4512043 (= e!2810888 Unit!93797)))

(declare-fun b!4512044 () Bool)

(declare-fun e!2810889 () List!50725)

(assert (=> b!4512044 (= e!2810889 Nil!50601)))

(assert (=> b!4512045 (= e!2810889 (Cons!50601 (_1!28799 (h!56435 (toList!4295 lt!1689045))) (getKeysList!449 (t!357684 (toList!4295 lt!1689045)))))))

(declare-fun c!769724 () Bool)

(assert (=> b!4512045 (= c!769724 (containsKey!1736 (t!357684 (toList!4295 lt!1689045)) (_1!28799 (h!56435 (toList!4295 lt!1689045)))))))

(declare-fun lt!1690067 () Unit!93482)

(assert (=> b!4512045 (= lt!1690067 e!2810890)))

(declare-fun c!769722 () Bool)

(assert (=> b!4512045 (= c!769722 (contains!13303 (getKeysList!449 (t!357684 (toList!4295 lt!1689045))) (_1!28799 (h!56435 (toList!4295 lt!1689045)))))))

(declare-fun lt!1690069 () Unit!93482)

(assert (=> b!4512045 (= lt!1690069 e!2810888)))

(declare-fun lt!1690068 () List!50725)

(assert (=> b!4512045 (= lt!1690068 (getKeysList!449 (t!357684 (toList!4295 lt!1689045))))))

(declare-fun lt!1690073 () Unit!93482)

(assert (=> b!4512045 (= lt!1690073 (lemmaForallContainsAddHeadPreserves!161 (t!357684 (toList!4295 lt!1689045)) lt!1690068 (h!56435 (toList!4295 lt!1689045))))))

(assert (=> b!4512045 (forall!10226 lt!1690068 lambda!170795)))

(declare-fun lt!1690072 () Unit!93482)

(assert (=> b!4512045 (= lt!1690072 lt!1690073)))

(declare-fun b!4512046 () Bool)

(declare-fun Unit!93798 () Unit!93482)

(assert (=> b!4512046 (= e!2810890 Unit!93798)))

(assert (=> b!4512042 false))

(declare-fun lt!1690071 () Unit!93482)

(assert (=> b!4512042 (= lt!1690071 (forallContained!2479 (getKeysList!449 (t!357684 (toList!4295 lt!1689045))) lambda!170794 (_1!28799 (h!56435 (toList!4295 lt!1689045)))))))

(declare-fun Unit!93799 () Unit!93482)

(assert (=> b!4512042 (= e!2810888 Unit!93799)))

(declare-fun d!1388084 () Bool)

(assert (=> d!1388084 e!2810891))

(declare-fun res!1876887 () Bool)

(assert (=> d!1388084 (=> (not res!1876887) (not e!2810891))))

(assert (=> d!1388084 (= res!1876887 (noDuplicate!739 lt!1690070))))

(assert (=> d!1388084 (= lt!1690070 e!2810889)))

(declare-fun c!769723 () Bool)

(assert (=> d!1388084 (= c!769723 ((_ is Cons!50598) (toList!4295 lt!1689045)))))

(assert (=> d!1388084 (invariantList!1001 (toList!4295 lt!1689045))))

(assert (=> d!1388084 (= (getKeysList!449 (toList!4295 lt!1689045)) lt!1690070)))

(assert (= (and d!1388084 c!769723) b!4512045))

(assert (= (and d!1388084 (not c!769723)) b!4512044))

(assert (= (and b!4512045 c!769724) b!4512041))

(assert (= (and b!4512045 (not c!769724)) b!4512046))

(assert (= (and b!4512045 c!769722) b!4512042))

(assert (= (and b!4512045 (not c!769722)) b!4512043))

(assert (= (and d!1388084 res!1876887) b!4512039))

(assert (= (and b!4512039 res!1876888) b!4512040))

(assert (= (and b!4512040 res!1876889) b!4512038))

(declare-fun m!5252711 () Bool)

(assert (=> b!4512042 m!5252711))

(assert (=> b!4512042 m!5252711))

(declare-fun m!5252713 () Bool)

(assert (=> b!4512042 m!5252713))

(declare-fun m!5252715 () Bool)

(assert (=> b!4512040 m!5252715))

(declare-fun m!5252717 () Bool)

(assert (=> b!4512038 m!5252717))

(declare-fun m!5252719 () Bool)

(assert (=> b!4512038 m!5252719))

(assert (=> b!4512038 m!5252719))

(declare-fun m!5252721 () Bool)

(assert (=> b!4512038 m!5252721))

(assert (=> b!4512045 m!5252711))

(assert (=> b!4512045 m!5252711))

(declare-fun m!5252723 () Bool)

(assert (=> b!4512045 m!5252723))

(declare-fun m!5252725 () Bool)

(assert (=> b!4512045 m!5252725))

(declare-fun m!5252727 () Bool)

(assert (=> b!4512045 m!5252727))

(declare-fun m!5252729 () Bool)

(assert (=> b!4512045 m!5252729))

(declare-fun m!5252731 () Bool)

(assert (=> d!1388084 m!5252731))

(assert (=> d!1388084 m!5251211))

(declare-fun m!5252733 () Bool)

(assert (=> b!4512039 m!5252733))

(assert (=> b!4512039 m!5251161))

(assert (=> b!4511147 d!1388084))

(declare-fun d!1388088 () Bool)

(declare-fun res!1876890 () Bool)

(declare-fun e!2810893 () Bool)

(assert (=> d!1388088 (=> res!1876890 e!2810893)))

(assert (=> d!1388088 (= res!1876890 (and ((_ is Cons!50598) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) (= (_1!28799 (h!56435 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))) key!3287)))))

(assert (=> d!1388088 (= (containsKey!1736 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) e!2810893)))

(declare-fun b!4512049 () Bool)

(declare-fun e!2810894 () Bool)

(assert (=> b!4512049 (= e!2810893 e!2810894)))

(declare-fun res!1876891 () Bool)

(assert (=> b!4512049 (=> (not res!1876891) (not e!2810894))))

(assert (=> b!4512049 (= res!1876891 ((_ is Cons!50598) (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))))))

(declare-fun b!4512050 () Bool)

(assert (=> b!4512050 (= e!2810894 (containsKey!1736 (t!357684 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477))))) key!3287))))

(assert (= (and d!1388088 (not res!1876890)) b!4512049))

(assert (= (and b!4512049 res!1876891) b!4512050))

(declare-fun m!5252735 () Bool)

(assert (=> b!4512050 m!5252735))

(assert (=> d!1387446 d!1388088))

(declare-fun d!1388090 () Bool)

(assert (=> d!1388090 (= (invariantList!1001 (toList!4295 lt!1689201)) (noDuplicatedKeys!254 (toList!4295 lt!1689201)))))

(declare-fun bs!848209 () Bool)

(assert (= bs!848209 d!1388090))

(declare-fun m!5252737 () Bool)

(assert (=> bs!848209 m!5252737))

(assert (=> d!1387428 d!1388090))

(declare-fun d!1388092 () Bool)

(declare-fun res!1876892 () Bool)

(declare-fun e!2810895 () Bool)

(assert (=> d!1388092 (=> res!1876892 e!2810895)))

(assert (=> d!1388092 (= res!1876892 ((_ is Nil!50599) (toList!4296 lt!1689057)))))

(assert (=> d!1388092 (= (forall!10223 (toList!4296 lt!1689057) lambda!170561) e!2810895)))

(declare-fun b!4512051 () Bool)

(declare-fun e!2810896 () Bool)

(assert (=> b!4512051 (= e!2810895 e!2810896)))

(declare-fun res!1876893 () Bool)

(assert (=> b!4512051 (=> (not res!1876893) (not e!2810896))))

(assert (=> b!4512051 (= res!1876893 (dynLambda!21139 lambda!170561 (h!56436 (toList!4296 lt!1689057))))))

(declare-fun b!4512052 () Bool)

(assert (=> b!4512052 (= e!2810896 (forall!10223 (t!357685 (toList!4296 lt!1689057)) lambda!170561))))

(assert (= (and d!1388092 (not res!1876892)) b!4512051))

(assert (= (and b!4512051 res!1876893) b!4512052))

(declare-fun b_lambda!153857 () Bool)

(assert (=> (not b_lambda!153857) (not b!4512051)))

(declare-fun m!5252739 () Bool)

(assert (=> b!4512051 m!5252739))

(declare-fun m!5252741 () Bool)

(assert (=> b!4512052 m!5252741))

(assert (=> d!1387428 d!1388092))

(declare-fun d!1388094 () Bool)

(assert (=> d!1388094 (= (head!9382 (toList!4296 lm!1477)) (h!56436 (toList!4296 lm!1477)))))

(assert (=> d!1387546 d!1388094))

(assert (=> b!4510970 d!1387666))

(assert (=> b!4510970 d!1387658))

(declare-fun d!1388096 () Bool)

(declare-fun c!769726 () Bool)

(assert (=> d!1388096 (= c!769726 ((_ is Nil!50599) (t!357685 (toList!4296 lm!1477))))))

(declare-fun e!2810897 () (InoxSet tuple2!51012))

(assert (=> d!1388096 (= (content!8308 (t!357685 (toList!4296 lm!1477))) e!2810897)))

(declare-fun b!4512053 () Bool)

(assert (=> b!4512053 (= e!2810897 ((as const (Array tuple2!51012 Bool)) false))))

(declare-fun b!4512054 () Bool)

(assert (=> b!4512054 (= e!2810897 ((_ map or) (store ((as const (Array tuple2!51012 Bool)) false) (h!56436 (t!357685 (toList!4296 lm!1477))) true) (content!8308 (t!357685 (t!357685 (toList!4296 lm!1477))))))))

(assert (= (and d!1388096 c!769726) b!4512053))

(assert (= (and d!1388096 (not c!769726)) b!4512054))

(declare-fun m!5252751 () Bool)

(assert (=> b!4512054 m!5252751))

(assert (=> b!4512054 m!5252175))

(assert (=> d!1387412 d!1388096))

(declare-fun bs!848214 () Bool)

(declare-fun d!1388100 () Bool)

(assert (= bs!848214 (and d!1388100 d!1387722)))

(declare-fun lambda!170799 () Int)

(assert (=> bs!848214 (= (= lt!1689058 lt!1689618) (= lambda!170799 lambda!170700))))

(declare-fun bs!848215 () Bool)

(assert (= bs!848215 (and d!1388100 b!4511891)))

(assert (=> bs!848215 (= (= lt!1689058 lt!1689934) (= lambda!170799 lambda!170758))))

(declare-fun bs!848216 () Bool)

(assert (= bs!848216 (and d!1388100 b!4511411)))

(assert (=> bs!848216 (= (= lt!1689058 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170799 lambda!170698))))

(declare-fun bs!848217 () Bool)

(assert (= bs!848217 (and d!1388100 b!4511291)))

(assert (=> bs!848217 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170799 lambda!170682))))

(declare-fun bs!848218 () Bool)

(assert (= bs!848218 (and d!1388100 b!4511287)))

(assert (=> bs!848218 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689057)))) (= lambda!170799 lambda!170683))))

(declare-fun bs!848219 () Bool)

(assert (= bs!848219 (and d!1388100 b!4511303)))

(assert (=> bs!848219 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170799 lambda!170690))))

(declare-fun bs!848220 () Bool)

(assert (= bs!848220 (and d!1388100 d!1387954)))

(assert (=> bs!848220 (= (= lt!1689058 lt!1689877) (= lambda!170799 lambda!170749))))

(declare-fun bs!848221 () Bool)

(assert (= bs!848221 (and d!1388100 d!1387590)))

(assert (=> bs!848221 (= (= lt!1689058 lt!1689493) (= lambda!170799 lambda!170672))))

(declare-fun bs!848222 () Bool)

(assert (= bs!848222 (and d!1388100 b!4511918)))

(assert (=> bs!848222 (= (= lt!1689058 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170799 lambda!170761))))

(declare-fun bs!848223 () Bool)

(assert (= bs!848223 (and d!1388100 b!4511109)))

(assert (=> bs!848223 (= (= lt!1689058 lt!1689048) (= lambda!170799 lambda!170653))))

(assert (=> bs!848216 (= (= lt!1689058 lt!1689629) (= lambda!170799 lambda!170699))))

(declare-fun bs!848224 () Bool)

(assert (= bs!848224 (and d!1388100 b!4511415)))

(assert (=> bs!848224 (= (= lt!1689058 (+!1508 lt!1689058 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170799 lambda!170697))))

(declare-fun bs!848225 () Bool)

(assert (= bs!848225 (and d!1388100 b!4511188)))

(assert (=> bs!848225 (= (= lt!1689058 lt!1689504) (= lambda!170799 lambda!170671))))

(declare-fun bs!848226 () Bool)

(assert (= bs!848226 (and d!1388100 b!4511988)))

(assert (=> bs!848226 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170799 lambda!170782))))

(assert (=> bs!848226 (= (= lt!1689058 lt!1690024) (= lambda!170799 lambda!170785))))

(declare-fun bs!848227 () Bool)

(assert (= bs!848227 (and d!1388100 b!4511895)))

(assert (=> bs!848227 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170799 lambda!170754))))

(declare-fun bs!848228 () Bool)

(assert (= bs!848228 (and d!1388100 b!4511307)))

(assert (=> bs!848228 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689063)))) (= lambda!170799 lambda!170689))))

(declare-fun bs!848229 () Bool)

(assert (= bs!848229 (and d!1388100 b!4511833)))

(assert (=> bs!848229 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170799 lambda!170745))))

(declare-fun bs!848230 () Bool)

(assert (= bs!848230 (and d!1388100 b!4511066)))

(assert (=> bs!848230 (= lambda!170799 lambda!170648)))

(declare-fun bs!848231 () Bool)

(assert (= bs!848231 (and d!1388100 d!1387668)))

(assert (=> bs!848231 (= (= lt!1689058 lt!1689561) (= lambda!170799 lambda!170692))))

(declare-fun bs!848232 () Bool)

(assert (= bs!848232 (and d!1388100 d!1387526)))

(assert (=> bs!848232 (= (= lt!1689058 lt!1689430) (= lambda!170799 lambda!170655))))

(declare-fun bs!848233 () Bool)

(assert (= bs!848233 (and d!1388100 d!1387530)))

(assert (=> bs!848233 (not (= lambda!170799 lambda!170658))))

(assert (=> bs!848225 (= (= lt!1689058 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170799 lambda!170670))))

(declare-fun bs!848234 () Bool)

(assert (= bs!848234 (and d!1388100 d!1387984)))

(assert (=> bs!848234 (= (= lt!1689058 lt!1689923) (= lambda!170799 lambda!170759))))

(assert (=> bs!848229 (= (= lt!1689058 lt!1689888) (= lambda!170799 lambda!170748))))

(assert (=> bs!848223 (= (= lt!1689058 lt!1689441) (= lambda!170799 lambda!170654))))

(declare-fun bs!848235 () Bool)

(assert (= bs!848235 (and d!1388100 d!1387458)))

(assert (=> bs!848235 (= (= lt!1689058 lt!1689398) (= lambda!170799 lambda!170650))))

(declare-fun bs!848236 () Bool)

(assert (= bs!848236 (and d!1388100 d!1387732)))

(assert (=> bs!848236 (= (= lt!1689058 lt!1689409) (= lambda!170799 lambda!170705))))

(declare-fun bs!848237 () Bool)

(assert (= bs!848237 (and d!1388100 b!4511070)))

(assert (=> bs!848237 (= lambda!170799 lambda!170647)))

(declare-fun bs!848238 () Bool)

(assert (= bs!848238 (and d!1388100 d!1388018)))

(assert (=> bs!848238 (= (= lt!1689058 lt!1689441) (= lambda!170799 lambda!170777))))

(assert (=> bs!848230 (= (= lt!1689058 lt!1689409) (= lambda!170799 lambda!170649))))

(declare-fun bs!848239 () Bool)

(assert (= bs!848239 (and d!1388100 b!4511192)))

(assert (=> bs!848239 (= (= lt!1689058 (extractMap!1200 (t!357685 (t!357685 (toList!4296 lm!1477))))) (= lambda!170799 lambda!170669))))

(declare-fun bs!848240 () Bool)

(assert (= bs!848240 (and d!1388100 d!1388010)))

(assert (=> bs!848240 (= (= lt!1689058 lt!1689950) (= lambda!170799 lambda!170768))))

(declare-fun bs!848241 () Bool)

(assert (= bs!848241 (and d!1388100 b!4511992)))

(assert (=> bs!848241 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 (+!1506 lt!1689057 lt!1689065))))) (= lambda!170799 lambda!170780))))

(declare-fun bs!848242 () Bool)

(assert (= bs!848242 (and d!1388100 d!1387654)))

(assert (=> bs!848242 (= (= lt!1689058 lt!1689536) (= lambda!170799 lambda!170685))))

(declare-fun bs!848244 () Bool)

(assert (= bs!848244 (and d!1388100 d!1388050)))

(assert (=> bs!848244 (= (= lt!1689058 lt!1690013) (= lambda!170799 lambda!170787))))

(assert (=> bs!848218 (= (= lt!1689058 lt!1689547) (= lambda!170799 lambda!170684))))

(declare-fun bs!848245 () Bool)

(assert (= bs!848245 (and d!1388100 b!4511914)))

(assert (=> bs!848245 (= (= lt!1689058 (+!1508 lt!1689048 (h!56435 (_2!28800 lt!1689065)))) (= lambda!170799 lambda!170762))))

(declare-fun bs!848246 () Bool)

(assert (= bs!848246 (and d!1388100 b!4511113)))

(assert (=> bs!848246 (= (= lt!1689058 lt!1689048) (= lambda!170799 lambda!170652))))

(assert (=> bs!848215 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lt!1689051)))) (= lambda!170799 lambda!170756))))

(assert (=> bs!848219 (= (= lt!1689058 lt!1689572) (= lambda!170799 lambda!170691))))

(declare-fun bs!848247 () Bool)

(assert (= bs!848247 (and d!1388100 b!4511837)))

(assert (=> bs!848247 (= (= lt!1689058 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) (= lambda!170799 lambda!170744))))

(declare-fun bs!848248 () Bool)

(assert (= bs!848248 (and d!1388100 d!1387694)))

(assert (=> bs!848248 (= (= lt!1689058 lt!1689048) (= lambda!170799 lambda!170696))))

(assert (=> bs!848245 (= (= lt!1689058 lt!1689961) (= lambda!170799 lambda!170763))))

(assert (=> d!1388100 true))

(assert (=> d!1388100 (forall!10225 (toList!4295 lt!1689058) lambda!170799)))

(declare-fun lt!1690079 () Unit!93482)

(assert (=> d!1388100 (= lt!1690079 (choose!29333 lt!1689058))))

(assert (=> d!1388100 (= (lemmaContainsAllItsOwnKeys!322 lt!1689058) lt!1690079)))

(declare-fun bs!848249 () Bool)

(assert (= bs!848249 d!1388100))

(declare-fun m!5252805 () Bool)

(assert (=> bs!848249 m!5252805))

(declare-fun m!5252807 () Bool)

(assert (=> bs!848249 m!5252807))

(assert (=> bm!314114 d!1388100))

(declare-fun b!4512075 () Bool)

(declare-fun e!2810917 () Option!11080)

(declare-fun e!2810918 () Option!11080)

(assert (=> b!4512075 (= e!2810917 e!2810918)))

(declare-fun c!769728 () Bool)

(assert (=> b!4512075 (= c!769728 (and ((_ is Cons!50599) (toList!4296 lt!1689186)) (not (= (_1!28800 (h!56436 (toList!4296 lt!1689186))) (_1!28800 lt!1689059)))))))

(declare-fun b!4512074 () Bool)

(assert (=> b!4512074 (= e!2810917 (Some!11079 (_2!28800 (h!56436 (toList!4296 lt!1689186)))))))

(declare-fun b!4512076 () Bool)

(assert (=> b!4512076 (= e!2810918 (getValueByKey!1060 (t!357685 (toList!4296 lt!1689186)) (_1!28800 lt!1689059)))))

(declare-fun d!1388122 () Bool)

(declare-fun c!769727 () Bool)

(assert (=> d!1388122 (= c!769727 (and ((_ is Cons!50599) (toList!4296 lt!1689186)) (= (_1!28800 (h!56436 (toList!4296 lt!1689186))) (_1!28800 lt!1689059))))))

(assert (=> d!1388122 (= (getValueByKey!1060 (toList!4296 lt!1689186) (_1!28800 lt!1689059)) e!2810917)))

(declare-fun b!4512077 () Bool)

(assert (=> b!4512077 (= e!2810918 None!11079)))

(assert (= (and d!1388122 c!769727) b!4512074))

(assert (= (and d!1388122 (not c!769727)) b!4512075))

(assert (= (and b!4512075 c!769728) b!4512076))

(assert (= (and b!4512075 (not c!769728)) b!4512077))

(declare-fun m!5252811 () Bool)

(assert (=> b!4512076 m!5252811))

(assert (=> b!4510934 d!1388122))

(declare-fun d!1388126 () Bool)

(assert (=> d!1388126 (dynLambda!21139 lambda!170537 lt!1689062)))

(assert (=> d!1388126 true))

(declare-fun _$7!1813 () Unit!93482)

(assert (=> d!1388126 (= (choose!29315 (toList!4296 lm!1477) lambda!170537 lt!1689062) _$7!1813)))

(declare-fun b_lambda!153863 () Bool)

(assert (=> (not b_lambda!153863) (not d!1388126)))

(declare-fun bs!848250 () Bool)

(assert (= bs!848250 d!1388126))

(assert (=> bs!848250 m!5250461))

(assert (=> d!1387400 d!1388126))

(assert (=> d!1387400 d!1387510))

(assert (=> d!1387528 d!1387458))

(declare-fun d!1388130 () Bool)

(assert (=> d!1388130 (= (eq!601 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058) (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048)) (= (content!8309 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058))) (content!8309 (toList!4295 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048)))))))

(declare-fun bs!848251 () Bool)

(assert (= bs!848251 d!1388130))

(declare-fun m!5252829 () Bool)

(assert (=> bs!848251 m!5252829))

(assert (=> bs!848251 m!5250891))

(assert (=> d!1387528 d!1388130))

(assert (=> d!1387528 d!1387526))

(assert (=> d!1387528 d!1387744))

(declare-fun d!1388132 () Bool)

(assert (=> d!1388132 (eq!601 (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689058) (addToMapMapFromBucket!671 (_2!28800 lt!1689065) lt!1689048))))

(assert (=> d!1388132 true))

(declare-fun _$16!194 () Unit!93482)

(assert (=> d!1388132 (= (choose!29320 lt!1689058 lt!1689048 (_2!28800 lt!1689065)) _$16!194)))

(declare-fun bs!848252 () Bool)

(assert (= bs!848252 d!1388132))

(assert (=> bs!848252 m!5250267))

(assert (=> bs!848252 m!5250253))

(assert (=> bs!848252 m!5250267))

(assert (=> bs!848252 m!5250253))

(assert (=> bs!848252 m!5250927))

(assert (=> d!1387528 d!1388132))

(declare-fun d!1388134 () Bool)

(declare-fun res!1876916 () Bool)

(declare-fun e!2810924 () Bool)

(assert (=> d!1388134 (=> res!1876916 e!2810924)))

(assert (=> d!1388134 (= res!1876916 (not ((_ is Cons!50598) (t!357684 newBucket!178))))))

(assert (=> d!1388134 (= (noDuplicateKeys!1144 (t!357684 newBucket!178)) e!2810924)))

(declare-fun b!4512087 () Bool)

(declare-fun e!2810925 () Bool)

(assert (=> b!4512087 (= e!2810924 e!2810925)))

(declare-fun res!1876917 () Bool)

(assert (=> b!4512087 (=> (not res!1876917) (not e!2810925))))

(assert (=> b!4512087 (= res!1876917 (not (containsKey!1732 (t!357684 (t!357684 newBucket!178)) (_1!28799 (h!56435 (t!357684 newBucket!178))))))))

(declare-fun b!4512088 () Bool)

(assert (=> b!4512088 (= e!2810925 (noDuplicateKeys!1144 (t!357684 (t!357684 newBucket!178))))))

(assert (= (and d!1388134 (not res!1876916)) b!4512087))

(assert (= (and b!4512087 res!1876917) b!4512088))

(declare-fun m!5252831 () Bool)

(assert (=> b!4512087 m!5252831))

(declare-fun m!5252833 () Bool)

(assert (=> b!4512088 m!5252833))

(assert (=> b!4511160 d!1388134))

(declare-fun d!1388136 () Bool)

(declare-fun res!1876918 () Bool)

(declare-fun e!2810926 () Bool)

(assert (=> d!1388136 (=> res!1876918 e!2810926)))

(assert (=> d!1388136 (= res!1876918 (and ((_ is Cons!50598) (_2!28800 (h!56436 (toList!4296 lt!1689057)))) (= (_1!28799 (h!56435 (_2!28800 (h!56436 (toList!4296 lt!1689057))))) key!3287)))))

(assert (=> d!1388136 (= (containsKey!1732 (_2!28800 (h!56436 (toList!4296 lt!1689057))) key!3287) e!2810926)))

(declare-fun b!4512089 () Bool)

(declare-fun e!2810927 () Bool)

(assert (=> b!4512089 (= e!2810926 e!2810927)))

(declare-fun res!1876919 () Bool)

(assert (=> b!4512089 (=> (not res!1876919) (not e!2810927))))

(assert (=> b!4512089 (= res!1876919 ((_ is Cons!50598) (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(declare-fun b!4512090 () Bool)

(assert (=> b!4512090 (= e!2810927 (containsKey!1732 (t!357684 (_2!28800 (h!56436 (toList!4296 lt!1689057)))) key!3287))))

(assert (= (and d!1388136 (not res!1876918)) b!4512089))

(assert (= (and b!4512089 res!1876919) b!4512090))

(declare-fun m!5252835 () Bool)

(assert (=> b!4512090 m!5252835))

(assert (=> b!4511127 d!1388136))

(assert (=> b!4510973 d!1388088))

(declare-fun d!1388138 () Bool)

(assert (=> d!1388138 (containsKey!1736 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287)))

(declare-fun lt!1690092 () Unit!93482)

(assert (=> d!1388138 (= lt!1690092 (choose!29328 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287))))

(assert (=> d!1388138 (invariantList!1001 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))))))

(assert (=> d!1388138 (= (lemmaInGetKeysListThenContainsKey!448 (toList!4295 (extractMap!1200 (t!357685 (toList!4296 lm!1477)))) key!3287) lt!1690092)))

(declare-fun bs!848253 () Bool)

(assert (= bs!848253 d!1388138))

(assert (=> bs!848253 m!5250597))

(declare-fun m!5252837 () Bool)

(assert (=> bs!848253 m!5252837))

(assert (=> bs!848253 m!5252147))

(assert (=> b!4510973 d!1388138))

(declare-fun b!4512092 () Bool)

(declare-fun e!2810928 () Option!11080)

(declare-fun e!2810929 () Option!11080)

(assert (=> b!4512092 (= e!2810928 e!2810929)))

(declare-fun c!769733 () Bool)

(assert (=> b!4512092 (= c!769733 (and ((_ is Cons!50599) (toList!4296 lt!1689466)) (not (= (_1!28800 (h!56436 (toList!4296 lt!1689466))) (_1!28800 lt!1689065)))))))

(declare-fun b!4512091 () Bool)

(assert (=> b!4512091 (= e!2810928 (Some!11079 (_2!28800 (h!56436 (toList!4296 lt!1689466)))))))

(declare-fun b!4512093 () Bool)

(assert (=> b!4512093 (= e!2810929 (getValueByKey!1060 (t!357685 (toList!4296 lt!1689466)) (_1!28800 lt!1689065)))))

(declare-fun d!1388140 () Bool)

(declare-fun c!769732 () Bool)

(assert (=> d!1388140 (= c!769732 (and ((_ is Cons!50599) (toList!4296 lt!1689466)) (= (_1!28800 (h!56436 (toList!4296 lt!1689466))) (_1!28800 lt!1689065))))))

(assert (=> d!1388140 (= (getValueByKey!1060 (toList!4296 lt!1689466) (_1!28800 lt!1689065)) e!2810928)))

(declare-fun b!4512094 () Bool)

(assert (=> b!4512094 (= e!2810929 None!11079)))

(assert (= (and d!1388140 c!769732) b!4512091))

(assert (= (and d!1388140 (not c!769732)) b!4512092))

(assert (= (and b!4512092 c!769733) b!4512093))

(assert (= (and b!4512092 (not c!769733)) b!4512094))

(declare-fun m!5252839 () Bool)

(assert (=> b!4512093 m!5252839))

(assert (=> b!4511137 d!1388140))

(declare-fun d!1388142 () Bool)

(declare-fun lt!1690093 () Bool)

(assert (=> d!1388142 (= lt!1690093 (select (content!8308 (toList!4296 lt!1689458)) lt!1689059))))

(declare-fun e!2810930 () Bool)

(assert (=> d!1388142 (= lt!1690093 e!2810930)))

(declare-fun res!1876920 () Bool)

(assert (=> d!1388142 (=> (not res!1876920) (not e!2810930))))

(assert (=> d!1388142 (= res!1876920 ((_ is Cons!50599) (toList!4296 lt!1689458)))))

(assert (=> d!1388142 (= (contains!13301 (toList!4296 lt!1689458) lt!1689059) lt!1690093)))

(declare-fun b!4512095 () Bool)

(declare-fun e!2810931 () Bool)

(assert (=> b!4512095 (= e!2810930 e!2810931)))

(declare-fun res!1876921 () Bool)

(assert (=> b!4512095 (=> res!1876921 e!2810931)))

(assert (=> b!4512095 (= res!1876921 (= (h!56436 (toList!4296 lt!1689458)) lt!1689059))))

(declare-fun b!4512096 () Bool)

(assert (=> b!4512096 (= e!2810931 (contains!13301 (t!357685 (toList!4296 lt!1689458)) lt!1689059))))

(assert (= (and d!1388142 res!1876920) b!4512095))

(assert (= (and b!4512095 (not res!1876921)) b!4512096))

(declare-fun m!5252841 () Bool)

(assert (=> d!1388142 m!5252841))

(declare-fun m!5252843 () Bool)

(assert (=> d!1388142 m!5252843))

(declare-fun m!5252845 () Bool)

(assert (=> b!4512096 m!5252845))

(assert (=> b!4511134 d!1388142))

(declare-fun d!1388144 () Bool)

(declare-fun res!1876922 () Bool)

(declare-fun e!2810932 () Bool)

(assert (=> d!1388144 (=> res!1876922 e!2810932)))

(assert (=> d!1388144 (= res!1876922 ((_ is Nil!50598) (toList!4295 lt!1689058)))))

(assert (=> d!1388144 (= (forall!10225 (toList!4295 lt!1689058) lambda!170650) e!2810932)))

(declare-fun b!4512097 () Bool)

(declare-fun e!2810933 () Bool)

(assert (=> b!4512097 (= e!2810932 e!2810933)))

(declare-fun res!1876923 () Bool)

(assert (=> b!4512097 (=> (not res!1876923) (not e!2810933))))

(assert (=> b!4512097 (= res!1876923 (dynLambda!21140 lambda!170650 (h!56435 (toList!4295 lt!1689058))))))

(declare-fun b!4512098 () Bool)

(assert (=> b!4512098 (= e!2810933 (forall!10225 (t!357684 (toList!4295 lt!1689058)) lambda!170650))))

(assert (= (and d!1388144 (not res!1876922)) b!4512097))

(assert (= (and b!4512097 res!1876923) b!4512098))

(declare-fun b_lambda!153865 () Bool)

(assert (=> (not b_lambda!153865) (not b!4512097)))

(declare-fun m!5252847 () Bool)

(assert (=> b!4512097 m!5252847))

(declare-fun m!5252849 () Bool)

(assert (=> b!4512098 m!5252849))

(assert (=> b!4511068 d!1388144))

(declare-fun tp!1337828 () Bool)

(declare-fun e!2810934 () Bool)

(declare-fun b!4512099 () Bool)

(assert (=> b!4512099 (= e!2810934 (and tp_is_empty!27853 tp_is_empty!27855 tp!1337828))))

(assert (=> b!4511165 (= tp!1337823 e!2810934)))

(assert (= (and b!4511165 ((_ is Cons!50598) (_2!28800 (h!56436 (toList!4296 lm!1477))))) b!4512099))

(declare-fun b!4512100 () Bool)

(declare-fun e!2810935 () Bool)

(declare-fun tp!1337829 () Bool)

(declare-fun tp!1337830 () Bool)

(assert (=> b!4512100 (= e!2810935 (and tp!1337829 tp!1337830))))

(assert (=> b!4511165 (= tp!1337824 e!2810935)))

(assert (= (and b!4511165 ((_ is Cons!50599) (t!357685 (toList!4296 lm!1477)))) b!4512100))

(declare-fun e!2810936 () Bool)

(declare-fun tp!1337831 () Bool)

(declare-fun b!4512101 () Bool)

(assert (=> b!4512101 (= e!2810936 (and tp_is_empty!27853 tp_is_empty!27855 tp!1337831))))

(assert (=> b!4511170 (= tp!1337827 e!2810936)))

(assert (= (and b!4511170 ((_ is Cons!50598) (t!357684 (t!357684 newBucket!178)))) b!4512101))

(declare-fun b_lambda!153867 () Bool)

(assert (= b_lambda!153863 (or start!445924 b_lambda!153867)))

(assert (=> d!1388126 d!1387568))

(declare-fun b_lambda!153869 () Bool)

(assert (= b_lambda!153791 (or b!4511066 b_lambda!153869)))

(declare-fun bs!848254 () Bool)

(declare-fun d!1388146 () Bool)

(assert (= bs!848254 (and d!1388146 b!4511066)))

(assert (=> bs!848254 (= (dynLambda!21140 lambda!170649 (h!56435 (toList!4295 lt!1689394))) (contains!13299 lt!1689409 (_1!28799 (h!56435 (toList!4295 lt!1689394)))))))

(declare-fun m!5252851 () Bool)

(assert (=> bs!848254 m!5252851))

(assert (=> b!4511427 d!1388146))

(declare-fun b_lambda!153871 () Bool)

(assert (= b_lambda!153841 (or b!4511109 b_lambda!153871)))

(declare-fun bs!848255 () Bool)

(declare-fun d!1388148 () Bool)

(assert (= bs!848255 (and d!1388148 b!4511109)))

(assert (=> bs!848255 (= (dynLambda!21140 lambda!170654 (h!56435 (_2!28800 lt!1689065))) (contains!13299 lt!1689441 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> bs!848255 m!5250897))

(assert (=> b!4511948 d!1388148))

(declare-fun b_lambda!153873 () Bool)

(assert (= b_lambda!153851 (or b!4511109 b_lambda!153873)))

(declare-fun bs!848256 () Bool)

(declare-fun d!1388150 () Bool)

(assert (= bs!848256 (and d!1388150 b!4511109)))

(assert (=> bs!848256 (= (dynLambda!21140 lambda!170654 (h!56435 (t!357684 (_2!28800 lt!1689065)))) (contains!13299 lt!1689441 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(declare-fun m!5252853 () Bool)

(assert (=> bs!848256 m!5252853))

(assert (=> b!4511986 d!1388150))

(declare-fun b_lambda!153875 () Bool)

(assert (= b_lambda!153845 (or b!4511109 b_lambda!153875)))

(assert (=> d!1388036 d!1388148))

(declare-fun b_lambda!153877 () Bool)

(assert (= b_lambda!153797 (or d!1387458 b_lambda!153877)))

(declare-fun bs!848257 () Bool)

(declare-fun d!1388152 () Bool)

(assert (= bs!848257 (and d!1388152 d!1387458)))

(assert (=> bs!848257 (= (dynLambda!21140 lambda!170650 (h!56435 (_2!28800 lt!1689065))) (contains!13299 lt!1689398 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun m!5252855 () Bool)

(assert (=> bs!848257 m!5252855))

(assert (=> b!4511455 d!1388152))

(declare-fun b_lambda!153879 () Bool)

(assert (= b_lambda!153773 (or d!1387556 b_lambda!153879)))

(declare-fun bs!848258 () Bool)

(declare-fun d!1388154 () Bool)

(assert (= bs!848258 (and d!1388154 d!1387556)))

(assert (=> bs!848258 (= (dynLambda!21139 lambda!170666 (h!56436 (toList!4296 lt!1689063))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689063)))))))

(assert (=> bs!848258 m!5251367))

(assert (=> b!4511267 d!1388154))

(declare-fun b_lambda!153881 () Bool)

(assert (= b_lambda!153777 (or d!1387548 b_lambda!153881)))

(declare-fun bs!848259 () Bool)

(declare-fun d!1388156 () Bool)

(assert (= bs!848259 (and d!1388156 d!1387548)))

(assert (=> bs!848259 (= (dynLambda!21139 lambda!170662 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065)))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 (+!1506 lt!1689057 lt!1689065))))))))

(assert (=> bs!848259 m!5252641))

(assert (=> b!4511299 d!1388156))

(declare-fun b_lambda!153883 () Bool)

(assert (= b_lambda!153813 (or d!1387406 b_lambda!153883)))

(declare-fun bs!848260 () Bool)

(declare-fun d!1388158 () Bool)

(assert (= bs!848260 (and d!1388158 d!1387406)))

(assert (=> bs!848260 (= (dynLambda!21139 lambda!170553 (h!56436 (toList!4296 lm!1477))) (allKeysSameHash!998 (_2!28800 (h!56436 (toList!4296 lm!1477))) (_1!28800 (h!56436 (toList!4296 lm!1477))) hashF!1107))))

(declare-fun m!5252857 () Bool)

(assert (=> bs!848260 m!5252857))

(assert (=> b!4511674 d!1388158))

(declare-fun b_lambda!153885 () Bool)

(assert (= b_lambda!153795 (or b!4511066 b_lambda!153885)))

(declare-fun bs!848261 () Bool)

(declare-fun d!1388160 () Bool)

(assert (= bs!848261 (and d!1388160 b!4511066)))

(assert (=> bs!848261 (= (dynLambda!21140 lambda!170649 (h!56435 (_2!28800 lt!1689065))) (contains!13299 lt!1689409 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(assert (=> bs!848261 m!5250823))

(assert (=> d!1387740 d!1388160))

(declare-fun b_lambda!153887 () Bool)

(assert (= b_lambda!153805 (or d!1387450 b_lambda!153887)))

(declare-fun bs!848262 () Bool)

(declare-fun d!1388162 () Bool)

(assert (= bs!848262 (and d!1388162 d!1387450)))

(assert (=> bs!848262 (= (dynLambda!21139 lambda!170565 (h!56436 (toList!4296 lt!1689057))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(assert (=> bs!848262 m!5251293))

(assert (=> b!4511646 d!1388162))

(declare-fun b_lambda!153889 () Bool)

(assert (= b_lambda!153783 (or d!1387372 b_lambda!153889)))

(declare-fun bs!848263 () Bool)

(declare-fun d!1388164 () Bool)

(assert (= bs!848263 (and d!1388164 d!1387372)))

(assert (=> bs!848263 (= (dynLambda!21139 lambda!170543 (h!56436 (toList!4296 lm!1477))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(assert (=> bs!848263 m!5251055))

(assert (=> b!4511374 d!1388164))

(declare-fun b_lambda!153891 () Bool)

(assert (= b_lambda!153789 (or b!4511066 b_lambda!153891)))

(declare-fun bs!848264 () Bool)

(declare-fun d!1388166 () Bool)

(assert (= bs!848264 (and d!1388166 b!4511066)))

(assert (=> bs!848264 (= (dynLambda!21140 lambda!170649 (h!56435 (t!357684 (_2!28800 lt!1689065)))) (contains!13299 lt!1689409 (_1!28799 (h!56435 (t!357684 (_2!28800 lt!1689065))))))))

(declare-fun m!5252859 () Bool)

(assert (=> bs!848264 m!5252859))

(assert (=> b!4511416 d!1388166))

(declare-fun b_lambda!153893 () Bool)

(assert (= b_lambda!153793 (or b!4511066 b_lambda!153893)))

(assert (=> b!4511450 d!1388160))

(declare-fun b_lambda!153895 () Bool)

(assert (= b_lambda!153825 (or d!1387564 b_lambda!153895)))

(declare-fun bs!848265 () Bool)

(declare-fun d!1388168 () Bool)

(assert (= bs!848265 (and d!1388168 d!1387564)))

(assert (=> bs!848265 (= (dynLambda!21139 lambda!170667 (h!56436 (toList!4296 lm!1477))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(assert (=> bs!848265 m!5251055))

(assert (=> b!4511723 d!1388168))

(declare-fun b_lambda!153897 () Bool)

(assert (= b_lambda!153849 (or b!4511109 b_lambda!153897)))

(declare-fun bs!848266 () Bool)

(declare-fun d!1388170 () Bool)

(assert (= bs!848266 (and d!1388170 b!4511109)))

(assert (=> bs!848266 (= (dynLambda!21140 lambda!170654 (h!56435 (toList!4295 lt!1689426))) (contains!13299 lt!1689441 (_1!28799 (h!56435 (toList!4295 lt!1689426)))))))

(declare-fun m!5252861 () Bool)

(assert (=> bs!848266 m!5252861))

(assert (=> b!4511982 d!1388170))

(declare-fun b_lambda!153899 () Bool)

(assert (= b_lambda!153799 (or d!1387448 b_lambda!153899)))

(declare-fun bs!848267 () Bool)

(declare-fun d!1388172 () Bool)

(assert (= bs!848267 (and d!1388172 d!1387448)))

(assert (=> bs!848267 (= (dynLambda!21139 lambda!170562 (h!56436 (t!357685 (toList!4296 lm!1477)))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> bs!848267 m!5251139))

(assert (=> b!4511486 d!1388172))

(declare-fun b_lambda!153901 () Bool)

(assert (= b_lambda!153811 (or d!1387530 b_lambda!153901)))

(declare-fun bs!848268 () Bool)

(declare-fun d!1388174 () Bool)

(assert (= bs!848268 (and d!1388174 d!1387530)))

(assert (=> bs!848268 (= (dynLambda!21140 lambda!170658 (h!56435 newBucket!178)) (= (hash!2751 hashF!1107 (_1!28799 (h!56435 newBucket!178))) hash!344))))

(declare-fun m!5252863 () Bool)

(assert (=> bs!848268 m!5252863))

(assert (=> b!4511672 d!1388174))

(declare-fun b_lambda!153903 () Bool)

(assert (= b_lambda!153865 (or d!1387458 b_lambda!153903)))

(declare-fun bs!848269 () Bool)

(declare-fun d!1388176 () Bool)

(assert (= bs!848269 (and d!1388176 d!1387458)))

(assert (=> bs!848269 (= (dynLambda!21140 lambda!170650 (h!56435 (toList!4295 lt!1689058))) (contains!13299 lt!1689398 (_1!28799 (h!56435 (toList!4295 lt!1689058)))))))

(declare-fun m!5252865 () Bool)

(assert (=> bs!848269 m!5252865))

(assert (=> b!4512097 d!1388176))

(declare-fun b_lambda!153905 () Bool)

(assert (= b_lambda!153779 (or b!4511066 b_lambda!153905)))

(declare-fun bs!848270 () Bool)

(declare-fun d!1388178 () Bool)

(assert (= bs!848270 (and d!1388178 b!4511066)))

(assert (=> bs!848270 (= (dynLambda!21140 lambda!170649 (h!56435 (toList!4295 lt!1689058))) (contains!13299 lt!1689409 (_1!28799 (h!56435 (toList!4295 lt!1689058)))))))

(declare-fun m!5252867 () Bool)

(assert (=> bs!848270 m!5252867))

(assert (=> b!4511312 d!1388178))

(declare-fun b_lambda!153907 () Bool)

(assert (= b_lambda!153829 (or d!1387506 b_lambda!153907)))

(declare-fun bs!848271 () Bool)

(declare-fun d!1388180 () Bool)

(assert (= bs!848271 (and d!1388180 d!1387506)))

(assert (=> bs!848271 (= (dynLambda!21139 lambda!170651 (h!56436 (toList!4296 lt!1689051))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689051)))))))

(assert (=> bs!848271 m!5252377))

(assert (=> b!4511813 d!1388180))

(declare-fun b_lambda!153909 () Bool)

(assert (= b_lambda!153769 (or d!1387550 b_lambda!153909)))

(declare-fun bs!848272 () Bool)

(declare-fun d!1388182 () Bool)

(assert (= bs!848272 (and d!1388182 d!1387550)))

(assert (=> bs!848272 (= (dynLambda!21139 lambda!170665 (h!56436 (toList!4296 lt!1689057))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(assert (=> bs!848272 m!5251293))

(assert (=> b!4511171 d!1388182))

(declare-fun b_lambda!153911 () Bool)

(assert (= b_lambda!153857 (or d!1387428 b_lambda!153911)))

(declare-fun bs!848273 () Bool)

(declare-fun d!1388184 () Bool)

(assert (= bs!848273 (and d!1388184 d!1387428)))

(assert (=> bs!848273 (= (dynLambda!21139 lambda!170561 (h!56436 (toList!4296 lt!1689057))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(assert (=> bs!848273 m!5251293))

(assert (=> b!4512051 d!1388184))

(declare-fun b_lambda!153913 () Bool)

(assert (= b_lambda!153807 (or d!1387536 b_lambda!153913)))

(declare-fun bs!848274 () Bool)

(declare-fun d!1388186 () Bool)

(assert (= bs!848274 (and d!1388186 d!1387536)))

(assert (=> bs!848274 (= (dynLambda!21139 lambda!170661 (h!56436 (toList!4296 lt!1689057))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lt!1689057)))))))

(assert (=> bs!848274 m!5251293))

(assert (=> b!4511657 d!1388186))

(declare-fun b_lambda!153915 () Bool)

(assert (= b_lambda!153781 (or d!1387370 b_lambda!153915)))

(declare-fun bs!848275 () Bool)

(declare-fun d!1388188 () Bool)

(assert (= bs!848275 (and d!1388188 d!1387370)))

(assert (=> bs!848275 (= (dynLambda!21139 lambda!170540 (h!56436 (toList!4296 lm!1477))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (toList!4296 lm!1477)))))))

(assert (=> bs!848275 m!5251055))

(assert (=> b!4511323 d!1388188))

(declare-fun b_lambda!153917 () Bool)

(assert (= b_lambda!153831 (or d!1387526 b_lambda!153917)))

(declare-fun bs!848276 () Bool)

(declare-fun d!1388190 () Bool)

(assert (= bs!848276 (and d!1388190 d!1387526)))

(assert (=> bs!848276 (= (dynLambda!21140 lambda!170655 (h!56435 (_2!28800 lt!1689065))) (contains!13299 lt!1689430 (_1!28799 (h!56435 (_2!28800 lt!1689065)))))))

(declare-fun m!5252869 () Bool)

(assert (=> bs!848276 m!5252869))

(assert (=> b!4511821 d!1388190))

(declare-fun b_lambda!153919 () Bool)

(assert (= b_lambda!153815 (or b!4511109 b_lambda!153919)))

(declare-fun bs!848277 () Bool)

(declare-fun d!1388192 () Bool)

(assert (= bs!848277 (and d!1388192 b!4511109)))

(assert (=> bs!848277 (= (dynLambda!21140 lambda!170654 (h!56435 (toList!4295 lt!1689048))) (contains!13299 lt!1689441 (_1!28799 (h!56435 (toList!4295 lt!1689048)))))))

(declare-fun m!5252871 () Bool)

(assert (=> bs!848277 m!5252871))

(assert (=> b!4511677 d!1388192))

(declare-fun b_lambda!153921 () Bool)

(assert (= b_lambda!153785 (or start!445924 b_lambda!153921)))

(declare-fun bs!848278 () Bool)

(declare-fun d!1388194 () Bool)

(assert (= bs!848278 (and d!1388194 start!445924)))

(assert (=> bs!848278 (= (dynLambda!21139 lambda!170537 (h!56436 (t!357685 (toList!4296 lm!1477)))) (noDuplicateKeys!1144 (_2!28800 (h!56436 (t!357685 (toList!4296 lm!1477))))))))

(assert (=> bs!848278 m!5251139))

(assert (=> b!4511378 d!1388194))

(declare-fun b_lambda!153923 () Bool)

(assert (= b_lambda!153787 (or d!1387526 b_lambda!153923)))

(declare-fun bs!848279 () Bool)

(declare-fun d!1388196 () Bool)

(assert (= bs!848279 (and d!1388196 d!1387526)))

(assert (=> bs!848279 (= (dynLambda!21140 lambda!170655 (h!56435 (toList!4295 lt!1689048))) (contains!13299 lt!1689430 (_1!28799 (h!56435 (toList!4295 lt!1689048)))))))

(declare-fun m!5252873 () Bool)

(assert (=> bs!848279 m!5252873))

(assert (=> b!4511399 d!1388196))

(check-sat (not bs!848270) (not b!4511263) (not b!4511891) (not b!4511187) (not b_lambda!153921) (not d!1387892) (not bm!314129) (not d!1387698) (not d!1387878) (not b!4511652) (not d!1387672) (not d!1387710) (not bm!314146) (not b!4512039) (not bs!848279) (not b!4511814) (not b!4511671) (not b!4511592) (not d!1387770) (not b!4511962) (not d!1388070) (not b!4511190) (not bs!848260) (not b_lambda!153919) (not d!1387752) (not b!4511292) (not d!1387662) (not b!4511991) (not d!1388072) (not b!4511487) (not b!4511286) (not b!4511587) (not b!4511833) (not b!4512031) (not b!4511954) (not d!1388004) (not b!4511210) (not b!4511709) (not d!1387646) (not b!4511457) (not d!1387580) (not b!4511458) (not b!4511289) (not b!4512012) (not b!4511418) (not b!4511953) (not b!4511400) (not d!1387722) (not bs!848276) (not d!1387636) (not b!4512033) (not b!4512045) (not b!4511659) (not d!1387600) (not b!4511387) (not d!1387598) (not b!4511339) (not bm!314127) (not b!4511816) (not b!4511218) (not b!4511488) (not bm!314122) (not bs!848258) (not b_lambda!153875) (not bm!314189) (not b!4511328) (not b!4511288) (not bs!848257) (not d!1387686) (not b!4512050) (not b!4511493) (not bm!314123) (not b!4511495) (not b!4511306) (not bs!848254) (not bs!848259) (not b!4511313) (not bm!314142) (not bm!314205) (not bs!848265) (not d!1387904) (not b_lambda!153775) (not b!4511191) (not b!4511809) (not b!4511410) (not d!1387578) (not b!4511699) (not b!4511321) (not b!4511300) (not b!4511365) (not b!4512088) (not b!4511247) (not d!1387736) (not b!4511836) (not b!4511330) (not d!1387900) (not b!4512036) (not b!4511176) (not b!4511193) (not b!4511172) (not d!1387584) (not b!4511650) (not b!4511295) (not bm!314211) (not d!1387588) (not b!4511804) (not b!4511429) (not b_lambda!153901) (not b!4511436) (not b!4511390) (not b!4512018) tp_is_empty!27855 (not b!4511664) (not b!4511951) (not b_lambda!153893) (not b!4511189) (not d!1387632) (not b!4511675) (not b_lambda!153915) (not b!4511830) (not d!1388050) (not d!1387596) (not b!4511803) (not b!4511425) (not d!1387650) (not b!4512004) (not b!4511596) (not b!4511615) (not b!4511454) (not bs!848278) (not b_lambda!153809) (not b!4511314) (not b!4512020) (not b!4511385) (not b_lambda!153887) (not b!4511229) (not d!1388008) (not b!4511327) (not b!4511244) (not b_lambda!153871) (not bs!848272) (not d!1387776) (not b!4511437) (not d!1387692) (not bs!848273) (not b!4511892) (not b!4511616) (not b_lambda!153833) (not b!4511949) (not bs!848271) (not b_lambda!153765) (not d!1387670) (not b!4511598) (not b!4512023) (not bm!314195) (not d!1387604) (not bs!848261) (not b!4511806) (not bm!314202) (not bm!314128) (not b!4511667) (not d!1387760) (not b!4511324) (not d!1387576) (not d!1387804) (not b!4512096) (not b!4511688) (not d!1387658) (not d!1387712) (not b!4511266) (not b!4511468) (not d!1388018) (not bm!314203) (not d!1387666) (not b!4511376) (not bm!314204) (not d!1387602) (not b!4511824) (not b!4511423) (not b!4511434) (not b!4511426) (not bs!848266) (not b!4511433) (not b_lambda!153913) (not b!4511432) (not b!4511661) (not b!4511471) (not b!4512076) (not b_lambda!153881) (not d!1387668) (not b_lambda!153903) (not b!4511311) (not d!1387618) (not bm!314201) (not b!4511456) (not bm!314144) (not d!1387660) (not b!4511619) (not d!1387862) (not bm!314124) (not d!1387812) (not b!4511595) (not b!4511620) (not b!4511362) (not b_lambda!153917) (not b!4511414) (not b!4512026) (not b!4511284) (not b!4511726) (not b!4511375) (not b!4511451) (not d!1387766) (not d!1388100) (not b!4511589) (not d!1387678) (not bs!848277) (not d!1387628) (not b!4511382) (not d!1387774) (not b!4511912) (not b!4511678) (not b!4511368) (not d!1387954) (not d!1387838) (not b!4511411) (not b!4512038) (not b!4511618) (not bm!314198) (not d!1387908) (not b!4511296) (not b!4511196) (not b!4512087) (not d!1388142) (not d!1387696) (not b!4511379) (not b!4511373) (not bs!848268) (not bm!314130) (not b!4511658) (not bm!314126) (not b!4511302) (not b!4511988) (not b_lambda!153889) (not b!4511702) (not b!4511449) (not b!4511648) (not bm!314191) (not b!4511318) (not b!4511388) (not b!4511173) (not d!1388010) (not bs!848264) (not b_lambda!153897) (not d!1387614) (not b!4512101) (not b_lambda!153867) (not d!1387582) (not d!1387684) (not bm!314199) (not b!4511622) (not bs!848269) (not b!4511967) (not b!4511959) (not d!1387592) (not b!4511822) (not b!4511470) (not d!1387840) (not b_lambda!153907) (not b!4511623) (not b!4511274) (not b!4511421) (not bm!314173) (not b!4511308) (not b!4511287) (not b!4511174) (not d!1388130) (not d!1387620) (not d!1387626) (not bm!314171) (not b!4511710) (not b!4511655) (not b!4511294) (not b!4511917) (not b_lambda!153771) (not b!4511259) (not b!4511448) (not b!4511419) (not bm!314121) (not b!4511216) (not bm!314169) (not b_lambda!153879) (not d!1387726) (not b!4511955) (not b_lambda!153909) (not b!4511478) (not b!4511180) (not b!4511473) (not bm!314168) (not b!4511485) (not b_lambda!153905) (not b!4511469) (not b!4511298) (not bm!314145) (not b!4511913) (not b_lambda!153891) (not b!4511217) (not b!4511413) (not b!4511673) (not b!4511987) (not d!1387730) (not b!4511696) (not b!4511826) (not d!1388078) (not b!4511989) (not b!4512040) (not b!4511960) (not b!4512029) (not bm!314147) (not b!4511305) (not d!1387984) (not b!4511475) (not d!1388082) (not d!1387656) (not d!1387706) (not b!4511322) (not b!4511303) (not d!1388138) (not bs!848263) (not b!4511417) (not b!4511966) (not b_lambda!153895) (not b!4511492) (not b!4511802) (not b!4511689) (not b!4511215) (not b!4511681) (not b!4511333) (not b!4511481) (not b!4511371) (not b!4511202) (not b!4511317) (not b!4511964) (not bm!314196) (not d!1387836) (not bm!314200) (not d!1387574) (not b_lambda!153877) (not b!4511676) (not b!4511430) (not d!1387898) (not b!4511238) (not b!4511590) (not d!1387680) (not bm!314172) (not b!4511276) (not b!4511817) (not d!1388062) (not b!4511268) (not b_lambda!153767) (not b!4512099) (not d!1387844) (not b!4511983) (not b!4512030) (not b!4511428) (not b!4511188) (not b!4511236) (not b!4511818) (not b!4512042) (not bm!314143) (not b!4511315) (not b!4511910) (not d!1388080) (not d!1388090) (not b!4511979) (not b!4511402) (not b!4511916) (not d!1388014) (not bs!848255) (not b!4511834) (not b!4511583) (not b!4511828) (not b_lambda!153885) (not b!4511585) (not d!1387942) (not b!4511340) (not bm!314190) (not d!1388074) (not b!4511393) (not bs!848275) (not b!4511396) (not b!4511404) (not b!4511282) (not b!4511466) (not b!4511963) (not bs!848262) (not b!4512052) (not b_lambda!153911) (not b!4511211) (not b!4511914) (not b!4511835) (not d!1388036) (not b_lambda!153899) (not bs!848256) (not bm!314139) (not d!1387740) (not d!1387590) (not b!4511915) (not b!4511724) (not b!4511422) (not b!4511958) (not b_lambda!153883) (not b!4512054) (not d!1387690) (not d!1387874) (not b!4511684) (not b!4512100) (not b!4511491) (not bs!848267) (not bs!848274) (not b!4512017) (not b!4511679) (not b!4511412) (not b_lambda!153923) (not b!4511319) (not d!1387868) (not d!1388016) (not b!4511647) (not b!4511304) (not b!4511894) (not b!4511719) (not b!4511496) (not b!4511957) (not b!4511209) (not b_lambda!153873) (not b!4511990) (not bm!314167) (not bm!314170) (not bm!314125) (not d!1387732) (not b!4511489) (not d!1388132) (not b!4511950) (not bm!314197) (not b!4511175) tp_is_empty!27853 (not b!4511380) (not b!4511377) (not d!1388084) (not d!1387634) (not b!4512015) (not b_lambda!153869) (not d!1387928) (not bm!314151) (not b!4512010) (not b!4512090) (not b!4511893) (not d!1387654) (not b!4511290) (not bm!314179) (not d!1387624) (not d!1387694) (not b!4512098) (not b!4511599) (not b!4512093))
(check-sat)
