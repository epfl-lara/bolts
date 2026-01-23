; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436900 () Bool)

(assert start!436900)

(declare-fun b!4457336 () Bool)

(declare-fun e!2775577 () Bool)

(declare-fun e!2775578 () Bool)

(assert (=> b!4457336 (= e!2775577 (not e!2775578))))

(declare-fun res!1847956 () Bool)

(assert (=> b!4457336 (=> res!1847956 e!2775578)))

(declare-datatypes ((K!11435 0))(
  ( (K!11436 (val!17419 Int)) )
))
(declare-datatypes ((V!11681 0))(
  ( (V!11682 (val!17420 Int)) )
))
(declare-datatypes ((tuple2!50158 0))(
  ( (tuple2!50159 (_1!28373 K!11435) (_2!28373 V!11681)) )
))
(declare-datatypes ((List!50177 0))(
  ( (Nil!50053) (Cons!50053 (h!55798 tuple2!50158) (t!357127 List!50177)) )
))
(declare-datatypes ((ListMap!3109 0))(
  ( (ListMap!3110 (toList!3871 List!50177)) )
))
(declare-fun lt!1648851 () ListMap!3109)

(declare-fun key!4412 () K!11435)

(declare-fun contains!12582 (ListMap!3109 K!11435) Bool)

(assert (=> b!4457336 (= res!1847956 (not (contains!12582 lt!1648851 key!4412)))))

(declare-fun lt!1648844 () ListMap!3109)

(assert (=> b!4457336 (contains!12582 lt!1648844 key!4412)))

(declare-fun lt!1648848 () ListMap!3109)

(declare-datatypes ((Unit!86284 0))(
  ( (Unit!86285) )
))
(declare-fun lt!1648846 () Unit!86284)

(declare-fun l!12858 () List!50177)

(declare-fun addStillContains!14 (ListMap!3109 K!11435 V!11681 K!11435) Unit!86284)

(assert (=> b!4457336 (= lt!1648846 (addStillContains!14 lt!1648848 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) key!4412))))

(declare-fun lt!1648849 () ListMap!3109)

(declare-fun eq!491 (ListMap!3109 ListMap!3109) Bool)

(assert (=> b!4457336 (eq!491 lt!1648849 lt!1648851)))

(declare-fun +!1307 (ListMap!3109 tuple2!50158) ListMap!3109)

(assert (=> b!4457336 (= lt!1648851 (+!1307 lt!1648848 (h!55798 l!12858)))))

(declare-fun lt!1648845 () ListMap!3109)

(declare-fun addToMapMapFromBucket!526 (List!50177 ListMap!3109) ListMap!3109)

(assert (=> b!4457336 (= lt!1648849 (addToMapMapFromBucket!526 (t!357127 l!12858) (+!1307 lt!1648845 (h!55798 l!12858))))))

(declare-fun lt!1648852 () ListMap!3109)

(assert (=> b!4457336 (eq!491 lt!1648852 lt!1648844)))

(assert (=> b!4457336 (= lt!1648844 (+!1307 lt!1648848 (h!55798 l!12858)))))

(assert (=> b!4457336 (= lt!1648852 (addToMapMapFromBucket!526 (t!357127 l!12858) (+!1307 lt!1648845 (h!55798 l!12858))))))

(declare-fun lt!1648843 () Unit!86284)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!238 (ListMap!3109 K!11435 V!11681 List!50177) Unit!86284)

(assert (=> b!4457336 (= lt!1648843 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!238 lt!1648845 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) (t!357127 l!12858)))))

(assert (=> b!4457336 (contains!12582 lt!1648848 key!4412)))

(assert (=> b!4457336 (= lt!1648848 (addToMapMapFromBucket!526 (t!357127 l!12858) lt!1648845))))

(declare-datatypes ((Hashable!5339 0))(
  ( (HashableExt!5338 (__x!31042 Int)) )
))
(declare-fun hashF!1313 () Hashable!5339)

(declare-datatypes ((tuple2!50160 0))(
  ( (tuple2!50161 (_1!28374 (_ BitVec 64)) (_2!28374 List!50177)) )
))
(declare-datatypes ((List!50178 0))(
  ( (Nil!50054) (Cons!50054 (h!55799 tuple2!50160) (t!357128 List!50178)) )
))
(declare-datatypes ((ListLongMap!2527 0))(
  ( (ListLongMap!2528 (toList!3872 List!50178)) )
))
(declare-fun lm!1853 () ListLongMap!2527)

(declare-fun lt!1648847 () Unit!86284)

(declare-fun lemmaAddToMapMaintainsContains!34 (ListLongMap!2527 K!11435 List!50177 Hashable!5339) Unit!86284)

(assert (=> b!4457336 (= lt!1648847 (lemmaAddToMapMaintainsContains!34 lm!1853 key!4412 (t!357127 l!12858) hashF!1313))))

(declare-fun b!4457337 () Bool)

(declare-fun res!1847959 () Bool)

(assert (=> b!4457337 (=> (not res!1847959) (not e!2775577))))

(get-info :version)

(assert (=> b!4457337 (= res!1847959 ((_ is Cons!50053) l!12858))))

(declare-fun res!1847954 () Bool)

(declare-fun e!2775579 () Bool)

(assert (=> start!436900 (=> (not res!1847954) (not e!2775579))))

(declare-fun lambda!160721 () Int)

(declare-fun forall!9861 (List!50178 Int) Bool)

(assert (=> start!436900 (= res!1847954 (forall!9861 (toList!3872 lm!1853) lambda!160721))))

(assert (=> start!436900 e!2775579))

(declare-fun e!2775580 () Bool)

(declare-fun inv!65621 (ListLongMap!2527) Bool)

(assert (=> start!436900 (and (inv!65621 lm!1853) e!2775580)))

(assert (=> start!436900 true))

(declare-fun e!2775581 () Bool)

(assert (=> start!436900 e!2775581))

(declare-fun tp_is_empty!26949 () Bool)

(assert (=> start!436900 tp_is_empty!26949))

(declare-fun b!4457338 () Bool)

(assert (=> b!4457338 (= e!2775579 e!2775577)))

(declare-fun res!1847955 () Bool)

(assert (=> b!4457338 (=> (not res!1847955) (not e!2775577))))

(assert (=> b!4457338 (= res!1847955 (contains!12582 lt!1648845 key!4412))))

(declare-fun extractMap!1000 (List!50178) ListMap!3109)

(assert (=> b!4457338 (= lt!1648845 (extractMap!1000 (toList!3872 lm!1853)))))

(declare-fun b!4457339 () Bool)

(declare-fun res!1847957 () Bool)

(assert (=> b!4457339 (=> (not res!1847957) (not e!2775579))))

(declare-fun allKeysSameHashInMap!1051 (ListLongMap!2527 Hashable!5339) Bool)

(assert (=> b!4457339 (= res!1847957 (allKeysSameHashInMap!1051 lm!1853 hashF!1313))))

(declare-fun b!4457340 () Bool)

(declare-fun tp!1335193 () Bool)

(assert (=> b!4457340 (= e!2775580 tp!1335193)))

(declare-fun tp_is_empty!26951 () Bool)

(declare-fun b!4457341 () Bool)

(declare-fun tp!1335192 () Bool)

(assert (=> b!4457341 (= e!2775581 (and tp_is_empty!26949 tp_is_empty!26951 tp!1335192))))

(declare-fun b!4457342 () Bool)

(declare-fun noDuplicateKeys!932 (List!50177) Bool)

(assert (=> b!4457342 (= e!2775578 (noDuplicateKeys!932 (t!357127 l!12858)))))

(assert (=> b!4457342 (contains!12582 lt!1648849 key!4412)))

(declare-fun lt!1648850 () Unit!86284)

(declare-fun lemmaEquivalentThenSameContains!124 (ListMap!3109 ListMap!3109 K!11435) Unit!86284)

(assert (=> b!4457342 (= lt!1648850 (lemmaEquivalentThenSameContains!124 lt!1648849 lt!1648851 key!4412))))

(declare-fun b!4457343 () Bool)

(declare-fun res!1847958 () Bool)

(assert (=> b!4457343 (=> (not res!1847958) (not e!2775579))))

(assert (=> b!4457343 (= res!1847958 (noDuplicateKeys!932 l!12858))))

(assert (= (and start!436900 res!1847954) b!4457339))

(assert (= (and b!4457339 res!1847957) b!4457343))

(assert (= (and b!4457343 res!1847958) b!4457338))

(assert (= (and b!4457338 res!1847955) b!4457337))

(assert (= (and b!4457337 res!1847959) b!4457336))

(assert (= (and b!4457336 (not res!1847956)) b!4457342))

(assert (= start!436900 b!4457340))

(assert (= (and start!436900 ((_ is Cons!50053) l!12858)) b!4457341))

(declare-fun m!5159759 () Bool)

(assert (=> b!4457339 m!5159759))

(declare-fun m!5159761 () Bool)

(assert (=> b!4457338 m!5159761))

(declare-fun m!5159763 () Bool)

(assert (=> b!4457338 m!5159763))

(declare-fun m!5159765 () Bool)

(assert (=> b!4457342 m!5159765))

(declare-fun m!5159767 () Bool)

(assert (=> b!4457342 m!5159767))

(declare-fun m!5159769 () Bool)

(assert (=> b!4457342 m!5159769))

(declare-fun m!5159771 () Bool)

(assert (=> b!4457336 m!5159771))

(declare-fun m!5159773 () Bool)

(assert (=> b!4457336 m!5159773))

(declare-fun m!5159775 () Bool)

(assert (=> b!4457336 m!5159775))

(declare-fun m!5159777 () Bool)

(assert (=> b!4457336 m!5159777))

(declare-fun m!5159779 () Bool)

(assert (=> b!4457336 m!5159779))

(declare-fun m!5159781 () Bool)

(assert (=> b!4457336 m!5159781))

(declare-fun m!5159783 () Bool)

(assert (=> b!4457336 m!5159783))

(declare-fun m!5159785 () Bool)

(assert (=> b!4457336 m!5159785))

(assert (=> b!4457336 m!5159783))

(declare-fun m!5159787 () Bool)

(assert (=> b!4457336 m!5159787))

(declare-fun m!5159789 () Bool)

(assert (=> b!4457336 m!5159789))

(declare-fun m!5159791 () Bool)

(assert (=> b!4457336 m!5159791))

(declare-fun m!5159793 () Bool)

(assert (=> b!4457336 m!5159793))

(declare-fun m!5159795 () Bool)

(assert (=> start!436900 m!5159795))

(declare-fun m!5159797 () Bool)

(assert (=> start!436900 m!5159797))

(declare-fun m!5159799 () Bool)

(assert (=> b!4457343 m!5159799))

(check-sat tp_is_empty!26951 (not b!4457338) (not b!4457342) (not b!4457341) (not b!4457339) (not b!4457340) (not b!4457336) tp_is_empty!26949 (not start!436900) (not b!4457343))
(check-sat)
(get-model)

(declare-fun b!4457428 () Bool)

(declare-fun e!2775641 () Unit!86284)

(declare-fun Unit!86305 () Unit!86284)

(assert (=> b!4457428 (= e!2775641 Unit!86305)))

(declare-fun b!4457429 () Bool)

(declare-fun e!2775642 () Bool)

(declare-datatypes ((List!50180 0))(
  ( (Nil!50056) (Cons!50056 (h!55801 K!11435) (t!357130 List!50180)) )
))
(declare-fun contains!12585 (List!50180 K!11435) Bool)

(declare-fun keys!17212 (ListMap!3109) List!50180)

(assert (=> b!4457429 (= e!2775642 (contains!12585 (keys!17212 lt!1648845) key!4412))))

(declare-fun b!4457430 () Bool)

(declare-fun e!2775640 () List!50180)

(declare-fun getKeysList!331 (List!50177) List!50180)

(assert (=> b!4457430 (= e!2775640 (getKeysList!331 (toList!3871 lt!1648845)))))

(declare-fun bm!310238 () Bool)

(declare-fun call!310243 () Bool)

(assert (=> bm!310238 (= call!310243 (contains!12585 e!2775640 key!4412))))

(declare-fun c!758726 () Bool)

(declare-fun c!758725 () Bool)

(assert (=> bm!310238 (= c!758726 c!758725)))

(declare-fun b!4457431 () Bool)

(declare-fun e!2775643 () Bool)

(assert (=> b!4457431 (= e!2775643 (not (contains!12585 (keys!17212 lt!1648845) key!4412)))))

(declare-fun b!4457432 () Bool)

(declare-fun e!2775639 () Unit!86284)

(assert (=> b!4457432 (= e!2775639 e!2775641)))

(declare-fun c!758724 () Bool)

(assert (=> b!4457432 (= c!758724 call!310243)))

(declare-fun b!4457433 () Bool)

(declare-fun e!2775644 () Bool)

(assert (=> b!4457433 (= e!2775644 e!2775642)))

(declare-fun res!1847990 () Bool)

(assert (=> b!4457433 (=> (not res!1847990) (not e!2775642))))

(declare-datatypes ((Option!10863 0))(
  ( (None!10862) (Some!10862 (v!44120 V!11681)) )
))
(declare-fun isDefined!8151 (Option!10863) Bool)

(declare-fun getValueByKey!849 (List!50177 K!11435) Option!10863)

(assert (=> b!4457433 (= res!1847990 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648845) key!4412)))))

(declare-fun d!1359573 () Bool)

(assert (=> d!1359573 e!2775644))

(declare-fun res!1847992 () Bool)

(assert (=> d!1359573 (=> res!1847992 e!2775644)))

(assert (=> d!1359573 (= res!1847992 e!2775643)))

(declare-fun res!1847991 () Bool)

(assert (=> d!1359573 (=> (not res!1847991) (not e!2775643))))

(declare-fun lt!1648933 () Bool)

(assert (=> d!1359573 (= res!1847991 (not lt!1648933))))

(declare-fun lt!1648929 () Bool)

(assert (=> d!1359573 (= lt!1648933 lt!1648929)))

(declare-fun lt!1648932 () Unit!86284)

(assert (=> d!1359573 (= lt!1648932 e!2775639)))

(assert (=> d!1359573 (= c!758725 lt!1648929)))

(declare-fun containsKey!1341 (List!50177 K!11435) Bool)

(assert (=> d!1359573 (= lt!1648929 (containsKey!1341 (toList!3871 lt!1648845) key!4412))))

(assert (=> d!1359573 (= (contains!12582 lt!1648845 key!4412) lt!1648933)))

(declare-fun b!4457434 () Bool)

(declare-fun lt!1648926 () Unit!86284)

(assert (=> b!4457434 (= e!2775639 lt!1648926)))

(declare-fun lt!1648928 () Unit!86284)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!754 (List!50177 K!11435) Unit!86284)

(assert (=> b!4457434 (= lt!1648928 (lemmaContainsKeyImpliesGetValueByKeyDefined!754 (toList!3871 lt!1648845) key!4412))))

(assert (=> b!4457434 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648845) key!4412))))

(declare-fun lt!1648931 () Unit!86284)

(assert (=> b!4457434 (= lt!1648931 lt!1648928)))

(declare-fun lemmaInListThenGetKeysListContains!327 (List!50177 K!11435) Unit!86284)

(assert (=> b!4457434 (= lt!1648926 (lemmaInListThenGetKeysListContains!327 (toList!3871 lt!1648845) key!4412))))

(assert (=> b!4457434 call!310243))

(declare-fun b!4457435 () Bool)

(assert (=> b!4457435 (= e!2775640 (keys!17212 lt!1648845))))

(declare-fun b!4457436 () Bool)

(assert (=> b!4457436 false))

(declare-fun lt!1648927 () Unit!86284)

(declare-fun lt!1648930 () Unit!86284)

(assert (=> b!4457436 (= lt!1648927 lt!1648930)))

(assert (=> b!4457436 (containsKey!1341 (toList!3871 lt!1648845) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!329 (List!50177 K!11435) Unit!86284)

(assert (=> b!4457436 (= lt!1648930 (lemmaInGetKeysListThenContainsKey!329 (toList!3871 lt!1648845) key!4412))))

(declare-fun Unit!86306 () Unit!86284)

(assert (=> b!4457436 (= e!2775641 Unit!86306)))

(assert (= (and d!1359573 c!758725) b!4457434))

(assert (= (and d!1359573 (not c!758725)) b!4457432))

(assert (= (and b!4457432 c!758724) b!4457436))

(assert (= (and b!4457432 (not c!758724)) b!4457428))

(assert (= (or b!4457434 b!4457432) bm!310238))

(assert (= (and bm!310238 c!758726) b!4457430))

(assert (= (and bm!310238 (not c!758726)) b!4457435))

(assert (= (and d!1359573 res!1847991) b!4457431))

(assert (= (and d!1359573 (not res!1847992)) b!4457433))

(assert (= (and b!4457433 res!1847990) b!4457429))

(declare-fun m!5159907 () Bool)

(assert (=> b!4457435 m!5159907))

(declare-fun m!5159909 () Bool)

(assert (=> b!4457433 m!5159909))

(assert (=> b!4457433 m!5159909))

(declare-fun m!5159911 () Bool)

(assert (=> b!4457433 m!5159911))

(declare-fun m!5159913 () Bool)

(assert (=> b!4457430 m!5159913))

(assert (=> b!4457431 m!5159907))

(assert (=> b!4457431 m!5159907))

(declare-fun m!5159915 () Bool)

(assert (=> b!4457431 m!5159915))

(assert (=> b!4457429 m!5159907))

(assert (=> b!4457429 m!5159907))

(assert (=> b!4457429 m!5159915))

(declare-fun m!5159917 () Bool)

(assert (=> bm!310238 m!5159917))

(declare-fun m!5159919 () Bool)

(assert (=> b!4457434 m!5159919))

(assert (=> b!4457434 m!5159909))

(assert (=> b!4457434 m!5159909))

(assert (=> b!4457434 m!5159911))

(declare-fun m!5159921 () Bool)

(assert (=> b!4457434 m!5159921))

(declare-fun m!5159923 () Bool)

(assert (=> d!1359573 m!5159923))

(assert (=> b!4457436 m!5159923))

(declare-fun m!5159925 () Bool)

(assert (=> b!4457436 m!5159925))

(assert (=> b!4457338 d!1359573))

(declare-fun bs!791069 () Bool)

(declare-fun d!1359593 () Bool)

(assert (= bs!791069 (and d!1359593 start!436900)))

(declare-fun lambda!160730 () Int)

(assert (=> bs!791069 (= lambda!160730 lambda!160721)))

(declare-fun lt!1648936 () ListMap!3109)

(declare-fun invariantList!885 (List!50177) Bool)

(assert (=> d!1359593 (invariantList!885 (toList!3871 lt!1648936))))

(declare-fun e!2775647 () ListMap!3109)

(assert (=> d!1359593 (= lt!1648936 e!2775647)))

(declare-fun c!758729 () Bool)

(assert (=> d!1359593 (= c!758729 ((_ is Cons!50054) (toList!3872 lm!1853)))))

(assert (=> d!1359593 (forall!9861 (toList!3872 lm!1853) lambda!160730)))

(assert (=> d!1359593 (= (extractMap!1000 (toList!3872 lm!1853)) lt!1648936)))

(declare-fun b!4457441 () Bool)

(assert (=> b!4457441 (= e!2775647 (addToMapMapFromBucket!526 (_2!28374 (h!55799 (toList!3872 lm!1853))) (extractMap!1000 (t!357128 (toList!3872 lm!1853)))))))

(declare-fun b!4457442 () Bool)

(assert (=> b!4457442 (= e!2775647 (ListMap!3110 Nil!50053))))

(assert (= (and d!1359593 c!758729) b!4457441))

(assert (= (and d!1359593 (not c!758729)) b!4457442))

(declare-fun m!5159927 () Bool)

(assert (=> d!1359593 m!5159927))

(declare-fun m!5159929 () Bool)

(assert (=> d!1359593 m!5159929))

(declare-fun m!5159931 () Bool)

(assert (=> b!4457441 m!5159931))

(assert (=> b!4457441 m!5159931))

(declare-fun m!5159933 () Bool)

(assert (=> b!4457441 m!5159933))

(assert (=> b!4457338 d!1359593))

(declare-fun d!1359595 () Bool)

(declare-fun res!1847997 () Bool)

(declare-fun e!2775652 () Bool)

(assert (=> d!1359595 (=> res!1847997 e!2775652)))

(assert (=> d!1359595 (= res!1847997 (not ((_ is Cons!50053) l!12858)))))

(assert (=> d!1359595 (= (noDuplicateKeys!932 l!12858) e!2775652)))

(declare-fun b!4457447 () Bool)

(declare-fun e!2775653 () Bool)

(assert (=> b!4457447 (= e!2775652 e!2775653)))

(declare-fun res!1847998 () Bool)

(assert (=> b!4457447 (=> (not res!1847998) (not e!2775653))))

(declare-fun containsKey!1342 (List!50177 K!11435) Bool)

(assert (=> b!4457447 (= res!1847998 (not (containsKey!1342 (t!357127 l!12858) (_1!28373 (h!55798 l!12858)))))))

(declare-fun b!4457448 () Bool)

(assert (=> b!4457448 (= e!2775653 (noDuplicateKeys!932 (t!357127 l!12858)))))

(assert (= (and d!1359595 (not res!1847997)) b!4457447))

(assert (= (and b!4457447 res!1847998) b!4457448))

(declare-fun m!5159935 () Bool)

(assert (=> b!4457447 m!5159935))

(assert (=> b!4457448 m!5159765))

(assert (=> b!4457343 d!1359595))

(declare-fun d!1359597 () Bool)

(declare-fun res!1847999 () Bool)

(declare-fun e!2775654 () Bool)

(assert (=> d!1359597 (=> res!1847999 e!2775654)))

(assert (=> d!1359597 (= res!1847999 (not ((_ is Cons!50053) (t!357127 l!12858))))))

(assert (=> d!1359597 (= (noDuplicateKeys!932 (t!357127 l!12858)) e!2775654)))

(declare-fun b!4457449 () Bool)

(declare-fun e!2775655 () Bool)

(assert (=> b!4457449 (= e!2775654 e!2775655)))

(declare-fun res!1848000 () Bool)

(assert (=> b!4457449 (=> (not res!1848000) (not e!2775655))))

(assert (=> b!4457449 (= res!1848000 (not (containsKey!1342 (t!357127 (t!357127 l!12858)) (_1!28373 (h!55798 (t!357127 l!12858))))))))

(declare-fun b!4457450 () Bool)

(assert (=> b!4457450 (= e!2775655 (noDuplicateKeys!932 (t!357127 (t!357127 l!12858))))))

(assert (= (and d!1359597 (not res!1847999)) b!4457449))

(assert (= (and b!4457449 res!1848000) b!4457450))

(declare-fun m!5159937 () Bool)

(assert (=> b!4457449 m!5159937))

(declare-fun m!5159939 () Bool)

(assert (=> b!4457450 m!5159939))

(assert (=> b!4457342 d!1359597))

(declare-fun b!4457451 () Bool)

(declare-fun e!2775658 () Unit!86284)

(declare-fun Unit!86318 () Unit!86284)

(assert (=> b!4457451 (= e!2775658 Unit!86318)))

(declare-fun b!4457452 () Bool)

(declare-fun e!2775659 () Bool)

(assert (=> b!4457452 (= e!2775659 (contains!12585 (keys!17212 lt!1648849) key!4412))))

(declare-fun b!4457453 () Bool)

(declare-fun e!2775657 () List!50180)

(assert (=> b!4457453 (= e!2775657 (getKeysList!331 (toList!3871 lt!1648849)))))

(declare-fun bm!310239 () Bool)

(declare-fun call!310244 () Bool)

(assert (=> bm!310239 (= call!310244 (contains!12585 e!2775657 key!4412))))

(declare-fun c!758732 () Bool)

(declare-fun c!758731 () Bool)

(assert (=> bm!310239 (= c!758732 c!758731)))

(declare-fun b!4457454 () Bool)

(declare-fun e!2775660 () Bool)

(assert (=> b!4457454 (= e!2775660 (not (contains!12585 (keys!17212 lt!1648849) key!4412)))))

(declare-fun b!4457455 () Bool)

(declare-fun e!2775656 () Unit!86284)

(assert (=> b!4457455 (= e!2775656 e!2775658)))

(declare-fun c!758730 () Bool)

(assert (=> b!4457455 (= c!758730 call!310244)))

(declare-fun b!4457456 () Bool)

(declare-fun e!2775661 () Bool)

(assert (=> b!4457456 (= e!2775661 e!2775659)))

(declare-fun res!1848001 () Bool)

(assert (=> b!4457456 (=> (not res!1848001) (not e!2775659))))

(assert (=> b!4457456 (= res!1848001 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648849) key!4412)))))

(declare-fun d!1359599 () Bool)

(assert (=> d!1359599 e!2775661))

(declare-fun res!1848003 () Bool)

(assert (=> d!1359599 (=> res!1848003 e!2775661)))

(assert (=> d!1359599 (= res!1848003 e!2775660)))

(declare-fun res!1848002 () Bool)

(assert (=> d!1359599 (=> (not res!1848002) (not e!2775660))))

(declare-fun lt!1648944 () Bool)

(assert (=> d!1359599 (= res!1848002 (not lt!1648944))))

(declare-fun lt!1648940 () Bool)

(assert (=> d!1359599 (= lt!1648944 lt!1648940)))

(declare-fun lt!1648943 () Unit!86284)

(assert (=> d!1359599 (= lt!1648943 e!2775656)))

(assert (=> d!1359599 (= c!758731 lt!1648940)))

(assert (=> d!1359599 (= lt!1648940 (containsKey!1341 (toList!3871 lt!1648849) key!4412))))

(assert (=> d!1359599 (= (contains!12582 lt!1648849 key!4412) lt!1648944)))

(declare-fun b!4457457 () Bool)

(declare-fun lt!1648937 () Unit!86284)

(assert (=> b!4457457 (= e!2775656 lt!1648937)))

(declare-fun lt!1648939 () Unit!86284)

(assert (=> b!4457457 (= lt!1648939 (lemmaContainsKeyImpliesGetValueByKeyDefined!754 (toList!3871 lt!1648849) key!4412))))

(assert (=> b!4457457 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648849) key!4412))))

(declare-fun lt!1648942 () Unit!86284)

(assert (=> b!4457457 (= lt!1648942 lt!1648939)))

(assert (=> b!4457457 (= lt!1648937 (lemmaInListThenGetKeysListContains!327 (toList!3871 lt!1648849) key!4412))))

(assert (=> b!4457457 call!310244))

(declare-fun b!4457458 () Bool)

(assert (=> b!4457458 (= e!2775657 (keys!17212 lt!1648849))))

(declare-fun b!4457459 () Bool)

(assert (=> b!4457459 false))

(declare-fun lt!1648938 () Unit!86284)

(declare-fun lt!1648941 () Unit!86284)

(assert (=> b!4457459 (= lt!1648938 lt!1648941)))

(assert (=> b!4457459 (containsKey!1341 (toList!3871 lt!1648849) key!4412)))

(assert (=> b!4457459 (= lt!1648941 (lemmaInGetKeysListThenContainsKey!329 (toList!3871 lt!1648849) key!4412))))

(declare-fun Unit!86319 () Unit!86284)

(assert (=> b!4457459 (= e!2775658 Unit!86319)))

(assert (= (and d!1359599 c!758731) b!4457457))

(assert (= (and d!1359599 (not c!758731)) b!4457455))

(assert (= (and b!4457455 c!758730) b!4457459))

(assert (= (and b!4457455 (not c!758730)) b!4457451))

(assert (= (or b!4457457 b!4457455) bm!310239))

(assert (= (and bm!310239 c!758732) b!4457453))

(assert (= (and bm!310239 (not c!758732)) b!4457458))

(assert (= (and d!1359599 res!1848002) b!4457454))

(assert (= (and d!1359599 (not res!1848003)) b!4457456))

(assert (= (and b!4457456 res!1848001) b!4457452))

(declare-fun m!5159941 () Bool)

(assert (=> b!4457458 m!5159941))

(declare-fun m!5159943 () Bool)

(assert (=> b!4457456 m!5159943))

(assert (=> b!4457456 m!5159943))

(declare-fun m!5159945 () Bool)

(assert (=> b!4457456 m!5159945))

(declare-fun m!5159947 () Bool)

(assert (=> b!4457453 m!5159947))

(assert (=> b!4457454 m!5159941))

(assert (=> b!4457454 m!5159941))

(declare-fun m!5159949 () Bool)

(assert (=> b!4457454 m!5159949))

(assert (=> b!4457452 m!5159941))

(assert (=> b!4457452 m!5159941))

(assert (=> b!4457452 m!5159949))

(declare-fun m!5159951 () Bool)

(assert (=> bm!310239 m!5159951))

(declare-fun m!5159953 () Bool)

(assert (=> b!4457457 m!5159953))

(assert (=> b!4457457 m!5159943))

(assert (=> b!4457457 m!5159943))

(assert (=> b!4457457 m!5159945))

(declare-fun m!5159955 () Bool)

(assert (=> b!4457457 m!5159955))

(declare-fun m!5159957 () Bool)

(assert (=> d!1359599 m!5159957))

(assert (=> b!4457459 m!5159957))

(declare-fun m!5159959 () Bool)

(assert (=> b!4457459 m!5159959))

(assert (=> b!4457342 d!1359599))

(declare-fun d!1359601 () Bool)

(assert (=> d!1359601 (= (contains!12582 lt!1648849 key!4412) (contains!12582 lt!1648851 key!4412))))

(declare-fun lt!1648947 () Unit!86284)

(declare-fun choose!28396 (ListMap!3109 ListMap!3109 K!11435) Unit!86284)

(assert (=> d!1359601 (= lt!1648947 (choose!28396 lt!1648849 lt!1648851 key!4412))))

(assert (=> d!1359601 (eq!491 lt!1648849 lt!1648851)))

(assert (=> d!1359601 (= (lemmaEquivalentThenSameContains!124 lt!1648849 lt!1648851 key!4412) lt!1648947)))

(declare-fun bs!791070 () Bool)

(assert (= bs!791070 d!1359601))

(assert (=> bs!791070 m!5159767))

(assert (=> bs!791070 m!5159771))

(declare-fun m!5159961 () Bool)

(assert (=> bs!791070 m!5159961))

(assert (=> bs!791070 m!5159777))

(assert (=> b!4457342 d!1359601))

(declare-fun d!1359603 () Bool)

(declare-fun e!2775664 () Bool)

(assert (=> d!1359603 e!2775664))

(declare-fun res!1848009 () Bool)

(assert (=> d!1359603 (=> (not res!1848009) (not e!2775664))))

(declare-fun lt!1648959 () ListMap!3109)

(assert (=> d!1359603 (= res!1848009 (contains!12582 lt!1648959 (_1!28373 (h!55798 l!12858))))))

(declare-fun lt!1648958 () List!50177)

(assert (=> d!1359603 (= lt!1648959 (ListMap!3110 lt!1648958))))

(declare-fun lt!1648957 () Unit!86284)

(declare-fun lt!1648956 () Unit!86284)

(assert (=> d!1359603 (= lt!1648957 lt!1648956)))

(assert (=> d!1359603 (= (getValueByKey!849 lt!1648958 (_1!28373 (h!55798 l!12858))) (Some!10862 (_2!28373 (h!55798 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!554 (List!50177 K!11435 V!11681) Unit!86284)

(assert (=> d!1359603 (= lt!1648956 (lemmaContainsTupThenGetReturnValue!554 lt!1648958 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858))))))

(declare-fun insertNoDuplicatedKeys!248 (List!50177 K!11435 V!11681) List!50177)

(assert (=> d!1359603 (= lt!1648958 (insertNoDuplicatedKeys!248 (toList!3871 lt!1648848) (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858))))))

(assert (=> d!1359603 (= (+!1307 lt!1648848 (h!55798 l!12858)) lt!1648959)))

(declare-fun b!4457464 () Bool)

(declare-fun res!1848008 () Bool)

(assert (=> b!4457464 (=> (not res!1848008) (not e!2775664))))

(assert (=> b!4457464 (= res!1848008 (= (getValueByKey!849 (toList!3871 lt!1648959) (_1!28373 (h!55798 l!12858))) (Some!10862 (_2!28373 (h!55798 l!12858)))))))

(declare-fun b!4457465 () Bool)

(declare-fun contains!12586 (List!50177 tuple2!50158) Bool)

(assert (=> b!4457465 (= e!2775664 (contains!12586 (toList!3871 lt!1648959) (h!55798 l!12858)))))

(assert (= (and d!1359603 res!1848009) b!4457464))

(assert (= (and b!4457464 res!1848008) b!4457465))

(declare-fun m!5159963 () Bool)

(assert (=> d!1359603 m!5159963))

(declare-fun m!5159965 () Bool)

(assert (=> d!1359603 m!5159965))

(declare-fun m!5159967 () Bool)

(assert (=> d!1359603 m!5159967))

(declare-fun m!5159969 () Bool)

(assert (=> d!1359603 m!5159969))

(declare-fun m!5159971 () Bool)

(assert (=> b!4457464 m!5159971))

(declare-fun m!5159973 () Bool)

(assert (=> b!4457465 m!5159973))

(assert (=> b!4457336 d!1359603))

(declare-fun d!1359605 () Bool)

(declare-fun e!2775667 () Bool)

(assert (=> d!1359605 e!2775667))

(declare-fun res!1848011 () Bool)

(assert (=> d!1359605 (=> (not res!1848011) (not e!2775667))))

(declare-fun lt!1648969 () ListMap!3109)

(assert (=> d!1359605 (= res!1848011 (contains!12582 lt!1648969 (_1!28373 (h!55798 l!12858))))))

(declare-fun lt!1648968 () List!50177)

(assert (=> d!1359605 (= lt!1648969 (ListMap!3110 lt!1648968))))

(declare-fun lt!1648967 () Unit!86284)

(declare-fun lt!1648966 () Unit!86284)

(assert (=> d!1359605 (= lt!1648967 lt!1648966)))

(assert (=> d!1359605 (= (getValueByKey!849 lt!1648968 (_1!28373 (h!55798 l!12858))) (Some!10862 (_2!28373 (h!55798 l!12858))))))

(assert (=> d!1359605 (= lt!1648966 (lemmaContainsTupThenGetReturnValue!554 lt!1648968 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858))))))

(assert (=> d!1359605 (= lt!1648968 (insertNoDuplicatedKeys!248 (toList!3871 lt!1648845) (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858))))))

(assert (=> d!1359605 (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1648969)))

(declare-fun b!4457470 () Bool)

(declare-fun res!1848010 () Bool)

(assert (=> b!4457470 (=> (not res!1848010) (not e!2775667))))

(assert (=> b!4457470 (= res!1848010 (= (getValueByKey!849 (toList!3871 lt!1648969) (_1!28373 (h!55798 l!12858))) (Some!10862 (_2!28373 (h!55798 l!12858)))))))

(declare-fun b!4457471 () Bool)

(assert (=> b!4457471 (= e!2775667 (contains!12586 (toList!3871 lt!1648969) (h!55798 l!12858)))))

(assert (= (and d!1359605 res!1848011) b!4457470))

(assert (= (and b!4457470 res!1848010) b!4457471))

(declare-fun m!5159975 () Bool)

(assert (=> d!1359605 m!5159975))

(declare-fun m!5159977 () Bool)

(assert (=> d!1359605 m!5159977))

(declare-fun m!5159979 () Bool)

(assert (=> d!1359605 m!5159979))

(declare-fun m!5159981 () Bool)

(assert (=> d!1359605 m!5159981))

(declare-fun m!5159983 () Bool)

(assert (=> b!4457470 m!5159983))

(declare-fun m!5159985 () Bool)

(assert (=> b!4457471 m!5159985))

(assert (=> b!4457336 d!1359605))

(declare-fun d!1359607 () Bool)

(assert (=> d!1359607 (eq!491 (addToMapMapFromBucket!526 (t!357127 l!12858) (+!1307 lt!1648845 (tuple2!50159 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858))))) (+!1307 (addToMapMapFromBucket!526 (t!357127 l!12858) lt!1648845) (tuple2!50159 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)))))))

(declare-fun lt!1649008 () Unit!86284)

(declare-fun choose!28397 (ListMap!3109 K!11435 V!11681 List!50177) Unit!86284)

(assert (=> d!1359607 (= lt!1649008 (choose!28397 lt!1648845 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) (t!357127 l!12858)))))

(assert (=> d!1359607 (not (containsKey!1342 (t!357127 l!12858) (_1!28373 (h!55798 l!12858))))))

(assert (=> d!1359607 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!238 lt!1648845 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) (t!357127 l!12858)) lt!1649008)))

(declare-fun bs!791071 () Bool)

(assert (= bs!791071 d!1359607))

(assert (=> bs!791071 m!5159779))

(declare-fun m!5159987 () Bool)

(assert (=> bs!791071 m!5159987))

(declare-fun m!5159989 () Bool)

(assert (=> bs!791071 m!5159989))

(assert (=> bs!791071 m!5159987))

(declare-fun m!5159991 () Bool)

(assert (=> bs!791071 m!5159991))

(assert (=> bs!791071 m!5159935))

(assert (=> bs!791071 m!5159779))

(declare-fun m!5159993 () Bool)

(assert (=> bs!791071 m!5159993))

(assert (=> bs!791071 m!5159989))

(assert (=> bs!791071 m!5159993))

(declare-fun m!5159995 () Bool)

(assert (=> bs!791071 m!5159995))

(assert (=> b!4457336 d!1359607))

(declare-fun b!4457485 () Bool)

(declare-fun e!2775677 () Unit!86284)

(declare-fun Unit!86322 () Unit!86284)

(assert (=> b!4457485 (= e!2775677 Unit!86322)))

(declare-fun b!4457486 () Bool)

(declare-fun e!2775678 () Bool)

(assert (=> b!4457486 (= e!2775678 (contains!12585 (keys!17212 lt!1648851) key!4412))))

(declare-fun b!4457487 () Bool)

(declare-fun e!2775676 () List!50180)

(assert (=> b!4457487 (= e!2775676 (getKeysList!331 (toList!3871 lt!1648851)))))

(declare-fun bm!310249 () Bool)

(declare-fun call!310254 () Bool)

(assert (=> bm!310249 (= call!310254 (contains!12585 e!2775676 key!4412))))

(declare-fun c!758738 () Bool)

(declare-fun c!758737 () Bool)

(assert (=> bm!310249 (= c!758738 c!758737)))

(declare-fun b!4457488 () Bool)

(declare-fun e!2775679 () Bool)

(assert (=> b!4457488 (= e!2775679 (not (contains!12585 (keys!17212 lt!1648851) key!4412)))))

(declare-fun b!4457489 () Bool)

(declare-fun e!2775675 () Unit!86284)

(assert (=> b!4457489 (= e!2775675 e!2775677)))

(declare-fun c!758736 () Bool)

(assert (=> b!4457489 (= c!758736 call!310254)))

(declare-fun b!4457490 () Bool)

(declare-fun e!2775680 () Bool)

(assert (=> b!4457490 (= e!2775680 e!2775678)))

(declare-fun res!1848021 () Bool)

(assert (=> b!4457490 (=> (not res!1848021) (not e!2775678))))

(assert (=> b!4457490 (= res!1848021 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648851) key!4412)))))

(declare-fun d!1359609 () Bool)

(assert (=> d!1359609 e!2775680))

(declare-fun res!1848023 () Bool)

(assert (=> d!1359609 (=> res!1848023 e!2775680)))

(assert (=> d!1359609 (= res!1848023 e!2775679)))

(declare-fun res!1848022 () Bool)

(assert (=> d!1359609 (=> (not res!1848022) (not e!2775679))))

(declare-fun lt!1649037 () Bool)

(assert (=> d!1359609 (= res!1848022 (not lt!1649037))))

(declare-fun lt!1649033 () Bool)

(assert (=> d!1359609 (= lt!1649037 lt!1649033)))

(declare-fun lt!1649036 () Unit!86284)

(assert (=> d!1359609 (= lt!1649036 e!2775675)))

(assert (=> d!1359609 (= c!758737 lt!1649033)))

(assert (=> d!1359609 (= lt!1649033 (containsKey!1341 (toList!3871 lt!1648851) key!4412))))

(assert (=> d!1359609 (= (contains!12582 lt!1648851 key!4412) lt!1649037)))

(declare-fun b!4457491 () Bool)

(declare-fun lt!1649030 () Unit!86284)

(assert (=> b!4457491 (= e!2775675 lt!1649030)))

(declare-fun lt!1649032 () Unit!86284)

(assert (=> b!4457491 (= lt!1649032 (lemmaContainsKeyImpliesGetValueByKeyDefined!754 (toList!3871 lt!1648851) key!4412))))

(assert (=> b!4457491 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648851) key!4412))))

(declare-fun lt!1649035 () Unit!86284)

(assert (=> b!4457491 (= lt!1649035 lt!1649032)))

(assert (=> b!4457491 (= lt!1649030 (lemmaInListThenGetKeysListContains!327 (toList!3871 lt!1648851) key!4412))))

(assert (=> b!4457491 call!310254))

(declare-fun b!4457492 () Bool)

(assert (=> b!4457492 (= e!2775676 (keys!17212 lt!1648851))))

(declare-fun b!4457493 () Bool)

(assert (=> b!4457493 false))

(declare-fun lt!1649031 () Unit!86284)

(declare-fun lt!1649034 () Unit!86284)

(assert (=> b!4457493 (= lt!1649031 lt!1649034)))

(assert (=> b!4457493 (containsKey!1341 (toList!3871 lt!1648851) key!4412)))

(assert (=> b!4457493 (= lt!1649034 (lemmaInGetKeysListThenContainsKey!329 (toList!3871 lt!1648851) key!4412))))

(declare-fun Unit!86323 () Unit!86284)

(assert (=> b!4457493 (= e!2775677 Unit!86323)))

(assert (= (and d!1359609 c!758737) b!4457491))

(assert (= (and d!1359609 (not c!758737)) b!4457489))

(assert (= (and b!4457489 c!758736) b!4457493))

(assert (= (and b!4457489 (not c!758736)) b!4457485))

(assert (= (or b!4457491 b!4457489) bm!310249))

(assert (= (and bm!310249 c!758738) b!4457487))

(assert (= (and bm!310249 (not c!758738)) b!4457492))

(assert (= (and d!1359609 res!1848022) b!4457488))

(assert (= (and d!1359609 (not res!1848023)) b!4457490))

(assert (= (and b!4457490 res!1848021) b!4457486))

(declare-fun m!5159997 () Bool)

(assert (=> b!4457492 m!5159997))

(declare-fun m!5159999 () Bool)

(assert (=> b!4457490 m!5159999))

(assert (=> b!4457490 m!5159999))

(declare-fun m!5160001 () Bool)

(assert (=> b!4457490 m!5160001))

(declare-fun m!5160003 () Bool)

(assert (=> b!4457487 m!5160003))

(assert (=> b!4457488 m!5159997))

(assert (=> b!4457488 m!5159997))

(declare-fun m!5160005 () Bool)

(assert (=> b!4457488 m!5160005))

(assert (=> b!4457486 m!5159997))

(assert (=> b!4457486 m!5159997))

(assert (=> b!4457486 m!5160005))

(declare-fun m!5160007 () Bool)

(assert (=> bm!310249 m!5160007))

(declare-fun m!5160009 () Bool)

(assert (=> b!4457491 m!5160009))

(assert (=> b!4457491 m!5159999))

(assert (=> b!4457491 m!5159999))

(assert (=> b!4457491 m!5160001))

(declare-fun m!5160011 () Bool)

(assert (=> b!4457491 m!5160011))

(declare-fun m!5160013 () Bool)

(assert (=> d!1359609 m!5160013))

(assert (=> b!4457493 m!5160013))

(declare-fun m!5160015 () Bool)

(assert (=> b!4457493 m!5160015))

(assert (=> b!4457336 d!1359609))

(declare-fun b!4457551 () Bool)

(assert (=> b!4457551 true))

(declare-fun bs!791096 () Bool)

(declare-fun b!4457547 () Bool)

(assert (= bs!791096 (and b!4457547 b!4457551)))

(declare-fun lambda!160799 () Int)

(declare-fun lambda!160798 () Int)

(assert (=> bs!791096 (= lambda!160799 lambda!160798)))

(assert (=> b!4457547 true))

(declare-fun lambda!160800 () Int)

(declare-fun lt!1649139 () ListMap!3109)

(assert (=> bs!791096 (= (= lt!1649139 lt!1648845) (= lambda!160800 lambda!160798))))

(assert (=> b!4457547 (= (= lt!1649139 lt!1648845) (= lambda!160800 lambda!160799))))

(assert (=> b!4457547 true))

(declare-fun bs!791097 () Bool)

(declare-fun d!1359611 () Bool)

(assert (= bs!791097 (and d!1359611 b!4457551)))

(declare-fun lt!1649133 () ListMap!3109)

(declare-fun lambda!160801 () Int)

(assert (=> bs!791097 (= (= lt!1649133 lt!1648845) (= lambda!160801 lambda!160798))))

(declare-fun bs!791098 () Bool)

(assert (= bs!791098 (and d!1359611 b!4457547)))

(assert (=> bs!791098 (= (= lt!1649133 lt!1648845) (= lambda!160801 lambda!160799))))

(assert (=> bs!791098 (= (= lt!1649133 lt!1649139) (= lambda!160801 lambda!160800))))

(assert (=> d!1359611 true))

(declare-fun c!758745 () Bool)

(declare-fun call!310265 () Bool)

(declare-fun bm!310260 () Bool)

(declare-fun forall!9863 (List!50177 Int) Bool)

(assert (=> bm!310260 (= call!310265 (forall!9863 (ite c!758745 (toList!3871 lt!1648845) (t!357127 (t!357127 l!12858))) (ite c!758745 lambda!160798 lambda!160800)))))

(declare-fun call!310267 () Bool)

(declare-fun bm!310261 () Bool)

(assert (=> bm!310261 (= call!310267 (forall!9863 (ite c!758745 (toList!3871 lt!1648845) (t!357127 l!12858)) (ite c!758745 lambda!160798 lambda!160800)))))

(declare-fun e!2775715 () ListMap!3109)

(assert (=> b!4457547 (= e!2775715 lt!1649139)))

(declare-fun lt!1649131 () ListMap!3109)

(assert (=> b!4457547 (= lt!1649131 (+!1307 lt!1648845 (h!55798 (t!357127 l!12858))))))

(assert (=> b!4457547 (= lt!1649139 (addToMapMapFromBucket!526 (t!357127 (t!357127 l!12858)) (+!1307 lt!1648845 (h!55798 (t!357127 l!12858)))))))

(declare-fun lt!1649138 () Unit!86284)

(declare-fun call!310266 () Unit!86284)

(assert (=> b!4457547 (= lt!1649138 call!310266)))

(assert (=> b!4457547 (forall!9863 (toList!3871 lt!1648845) lambda!160799)))

(declare-fun lt!1649132 () Unit!86284)

(assert (=> b!4457547 (= lt!1649132 lt!1649138)))

(assert (=> b!4457547 (forall!9863 (toList!3871 lt!1649131) lambda!160800)))

(declare-fun lt!1649145 () Unit!86284)

(declare-fun Unit!86324 () Unit!86284)

(assert (=> b!4457547 (= lt!1649145 Unit!86324)))

(assert (=> b!4457547 call!310265))

(declare-fun lt!1649149 () Unit!86284)

(declare-fun Unit!86325 () Unit!86284)

(assert (=> b!4457547 (= lt!1649149 Unit!86325)))

(declare-fun lt!1649135 () Unit!86284)

(declare-fun Unit!86326 () Unit!86284)

(assert (=> b!4457547 (= lt!1649135 Unit!86326)))

(declare-fun lt!1649148 () Unit!86284)

(declare-fun forallContained!2186 (List!50177 Int tuple2!50158) Unit!86284)

(assert (=> b!4457547 (= lt!1649148 (forallContained!2186 (toList!3871 lt!1649131) lambda!160800 (h!55798 (t!357127 l!12858))))))

(assert (=> b!4457547 (contains!12582 lt!1649131 (_1!28373 (h!55798 (t!357127 l!12858))))))

(declare-fun lt!1649137 () Unit!86284)

(declare-fun Unit!86327 () Unit!86284)

(assert (=> b!4457547 (= lt!1649137 Unit!86327)))

(assert (=> b!4457547 (contains!12582 lt!1649139 (_1!28373 (h!55798 (t!357127 l!12858))))))

(declare-fun lt!1649142 () Unit!86284)

(declare-fun Unit!86328 () Unit!86284)

(assert (=> b!4457547 (= lt!1649142 Unit!86328)))

(assert (=> b!4457547 (forall!9863 (t!357127 l!12858) lambda!160800)))

(declare-fun lt!1649144 () Unit!86284)

(declare-fun Unit!86329 () Unit!86284)

(assert (=> b!4457547 (= lt!1649144 Unit!86329)))

(assert (=> b!4457547 (forall!9863 (toList!3871 lt!1649131) lambda!160800)))

(declare-fun lt!1649146 () Unit!86284)

(declare-fun Unit!86330 () Unit!86284)

(assert (=> b!4457547 (= lt!1649146 Unit!86330)))

(declare-fun lt!1649147 () Unit!86284)

(declare-fun Unit!86331 () Unit!86284)

(assert (=> b!4457547 (= lt!1649147 Unit!86331)))

(declare-fun lt!1649143 () Unit!86284)

(declare-fun addForallContainsKeyThenBeforeAdding!235 (ListMap!3109 ListMap!3109 K!11435 V!11681) Unit!86284)

(assert (=> b!4457547 (= lt!1649143 (addForallContainsKeyThenBeforeAdding!235 lt!1648845 lt!1649139 (_1!28373 (h!55798 (t!357127 l!12858))) (_2!28373 (h!55798 (t!357127 l!12858)))))))

(assert (=> b!4457547 (forall!9863 (toList!3871 lt!1648845) lambda!160800)))

(declare-fun lt!1649150 () Unit!86284)

(assert (=> b!4457547 (= lt!1649150 lt!1649143)))

(assert (=> b!4457547 (forall!9863 (toList!3871 lt!1648845) lambda!160800)))

(declare-fun lt!1649136 () Unit!86284)

(declare-fun Unit!86332 () Unit!86284)

(assert (=> b!4457547 (= lt!1649136 Unit!86332)))

(declare-fun res!1848053 () Bool)

(assert (=> b!4457547 (= res!1848053 call!310267)))

(declare-fun e!2775716 () Bool)

(assert (=> b!4457547 (=> (not res!1848053) (not e!2775716))))

(assert (=> b!4457547 e!2775716))

(declare-fun lt!1649151 () Unit!86284)

(declare-fun Unit!86333 () Unit!86284)

(assert (=> b!4457547 (= lt!1649151 Unit!86333)))

(declare-fun bm!310262 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!236 (ListMap!3109) Unit!86284)

(assert (=> bm!310262 (= call!310266 (lemmaContainsAllItsOwnKeys!236 lt!1648845))))

(declare-fun b!4457548 () Bool)

(assert (=> b!4457548 (= e!2775716 (forall!9863 (toList!3871 lt!1648845) lambda!160800))))

(declare-fun e!2775714 () Bool)

(assert (=> d!1359611 e!2775714))

(declare-fun res!1848052 () Bool)

(assert (=> d!1359611 (=> (not res!1848052) (not e!2775714))))

(assert (=> d!1359611 (= res!1848052 (forall!9863 (t!357127 l!12858) lambda!160801))))

(assert (=> d!1359611 (= lt!1649133 e!2775715)))

(assert (=> d!1359611 (= c!758745 ((_ is Nil!50053) (t!357127 l!12858)))))

(assert (=> d!1359611 (noDuplicateKeys!932 (t!357127 l!12858))))

(assert (=> d!1359611 (= (addToMapMapFromBucket!526 (t!357127 l!12858) lt!1648845) lt!1649133)))

(declare-fun b!4457549 () Bool)

(declare-fun res!1848054 () Bool)

(assert (=> b!4457549 (=> (not res!1848054) (not e!2775714))))

(assert (=> b!4457549 (= res!1848054 (forall!9863 (toList!3871 lt!1648845) lambda!160801))))

(declare-fun b!4457550 () Bool)

(assert (=> b!4457550 (= e!2775714 (invariantList!885 (toList!3871 lt!1649133)))))

(assert (=> b!4457551 (= e!2775715 lt!1648845)))

(declare-fun lt!1649141 () Unit!86284)

(assert (=> b!4457551 (= lt!1649141 call!310266)))

(assert (=> b!4457551 call!310265))

(declare-fun lt!1649140 () Unit!86284)

(assert (=> b!4457551 (= lt!1649140 lt!1649141)))

(assert (=> b!4457551 call!310267))

(declare-fun lt!1649134 () Unit!86284)

(declare-fun Unit!86334 () Unit!86284)

(assert (=> b!4457551 (= lt!1649134 Unit!86334)))

(assert (= (and d!1359611 c!758745) b!4457551))

(assert (= (and d!1359611 (not c!758745)) b!4457547))

(assert (= (and b!4457547 res!1848053) b!4457548))

(assert (= (or b!4457551 b!4457547) bm!310262))

(assert (= (or b!4457551 b!4457547) bm!310261))

(assert (= (or b!4457551 b!4457547) bm!310260))

(assert (= (and d!1359611 res!1848052) b!4457549))

(assert (= (and b!4457549 res!1848054) b!4457550))

(declare-fun m!5160161 () Bool)

(assert (=> d!1359611 m!5160161))

(assert (=> d!1359611 m!5159765))

(declare-fun m!5160163 () Bool)

(assert (=> b!4457547 m!5160163))

(declare-fun m!5160165 () Bool)

(assert (=> b!4457547 m!5160165))

(declare-fun m!5160167 () Bool)

(assert (=> b!4457547 m!5160167))

(declare-fun m!5160169 () Bool)

(assert (=> b!4457547 m!5160169))

(declare-fun m!5160171 () Bool)

(assert (=> b!4457547 m!5160171))

(declare-fun m!5160173 () Bool)

(assert (=> b!4457547 m!5160173))

(declare-fun m!5160175 () Bool)

(assert (=> b!4457547 m!5160175))

(declare-fun m!5160177 () Bool)

(assert (=> b!4457547 m!5160177))

(declare-fun m!5160179 () Bool)

(assert (=> b!4457547 m!5160179))

(assert (=> b!4457547 m!5160165))

(declare-fun m!5160181 () Bool)

(assert (=> b!4457547 m!5160181))

(assert (=> b!4457547 m!5160175))

(assert (=> b!4457547 m!5160167))

(declare-fun m!5160183 () Bool)

(assert (=> bm!310262 m!5160183))

(assert (=> b!4457548 m!5160167))

(declare-fun m!5160185 () Bool)

(assert (=> bm!310260 m!5160185))

(declare-fun m!5160187 () Bool)

(assert (=> b!4457550 m!5160187))

(declare-fun m!5160189 () Bool)

(assert (=> b!4457549 m!5160189))

(declare-fun m!5160191 () Bool)

(assert (=> bm!310261 m!5160191))

(assert (=> b!4457336 d!1359611))

(declare-fun b!4457554 () Bool)

(declare-fun e!2775719 () Unit!86284)

(declare-fun Unit!86335 () Unit!86284)

(assert (=> b!4457554 (= e!2775719 Unit!86335)))

(declare-fun b!4457555 () Bool)

(declare-fun e!2775720 () Bool)

(assert (=> b!4457555 (= e!2775720 (contains!12585 (keys!17212 lt!1648848) key!4412))))

(declare-fun b!4457556 () Bool)

(declare-fun e!2775718 () List!50180)

(assert (=> b!4457556 (= e!2775718 (getKeysList!331 (toList!3871 lt!1648848)))))

(declare-fun bm!310263 () Bool)

(declare-fun call!310268 () Bool)

(assert (=> bm!310263 (= call!310268 (contains!12585 e!2775718 key!4412))))

(declare-fun c!758748 () Bool)

(declare-fun c!758747 () Bool)

(assert (=> bm!310263 (= c!758748 c!758747)))

(declare-fun b!4457557 () Bool)

(declare-fun e!2775721 () Bool)

(assert (=> b!4457557 (= e!2775721 (not (contains!12585 (keys!17212 lt!1648848) key!4412)))))

(declare-fun b!4457558 () Bool)

(declare-fun e!2775717 () Unit!86284)

(assert (=> b!4457558 (= e!2775717 e!2775719)))

(declare-fun c!758746 () Bool)

(assert (=> b!4457558 (= c!758746 call!310268)))

(declare-fun b!4457559 () Bool)

(declare-fun e!2775722 () Bool)

(assert (=> b!4457559 (= e!2775722 e!2775720)))

(declare-fun res!1848055 () Bool)

(assert (=> b!4457559 (=> (not res!1848055) (not e!2775720))))

(assert (=> b!4457559 (= res!1848055 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648848) key!4412)))))

(declare-fun d!1359637 () Bool)

(assert (=> d!1359637 e!2775722))

(declare-fun res!1848057 () Bool)

(assert (=> d!1359637 (=> res!1848057 e!2775722)))

(assert (=> d!1359637 (= res!1848057 e!2775721)))

(declare-fun res!1848056 () Bool)

(assert (=> d!1359637 (=> (not res!1848056) (not e!2775721))))

(declare-fun lt!1649159 () Bool)

(assert (=> d!1359637 (= res!1848056 (not lt!1649159))))

(declare-fun lt!1649155 () Bool)

(assert (=> d!1359637 (= lt!1649159 lt!1649155)))

(declare-fun lt!1649158 () Unit!86284)

(assert (=> d!1359637 (= lt!1649158 e!2775717)))

(assert (=> d!1359637 (= c!758747 lt!1649155)))

(assert (=> d!1359637 (= lt!1649155 (containsKey!1341 (toList!3871 lt!1648848) key!4412))))

(assert (=> d!1359637 (= (contains!12582 lt!1648848 key!4412) lt!1649159)))

(declare-fun b!4457560 () Bool)

(declare-fun lt!1649152 () Unit!86284)

(assert (=> b!4457560 (= e!2775717 lt!1649152)))

(declare-fun lt!1649154 () Unit!86284)

(assert (=> b!4457560 (= lt!1649154 (lemmaContainsKeyImpliesGetValueByKeyDefined!754 (toList!3871 lt!1648848) key!4412))))

(assert (=> b!4457560 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648848) key!4412))))

(declare-fun lt!1649157 () Unit!86284)

(assert (=> b!4457560 (= lt!1649157 lt!1649154)))

(assert (=> b!4457560 (= lt!1649152 (lemmaInListThenGetKeysListContains!327 (toList!3871 lt!1648848) key!4412))))

(assert (=> b!4457560 call!310268))

(declare-fun b!4457561 () Bool)

(assert (=> b!4457561 (= e!2775718 (keys!17212 lt!1648848))))

(declare-fun b!4457562 () Bool)

(assert (=> b!4457562 false))

(declare-fun lt!1649153 () Unit!86284)

(declare-fun lt!1649156 () Unit!86284)

(assert (=> b!4457562 (= lt!1649153 lt!1649156)))

(assert (=> b!4457562 (containsKey!1341 (toList!3871 lt!1648848) key!4412)))

(assert (=> b!4457562 (= lt!1649156 (lemmaInGetKeysListThenContainsKey!329 (toList!3871 lt!1648848) key!4412))))

(declare-fun Unit!86336 () Unit!86284)

(assert (=> b!4457562 (= e!2775719 Unit!86336)))

(assert (= (and d!1359637 c!758747) b!4457560))

(assert (= (and d!1359637 (not c!758747)) b!4457558))

(assert (= (and b!4457558 c!758746) b!4457562))

(assert (= (and b!4457558 (not c!758746)) b!4457554))

(assert (= (or b!4457560 b!4457558) bm!310263))

(assert (= (and bm!310263 c!758748) b!4457556))

(assert (= (and bm!310263 (not c!758748)) b!4457561))

(assert (= (and d!1359637 res!1848056) b!4457557))

(assert (= (and d!1359637 (not res!1848057)) b!4457559))

(assert (= (and b!4457559 res!1848055) b!4457555))

(declare-fun m!5160193 () Bool)

(assert (=> b!4457561 m!5160193))

(declare-fun m!5160195 () Bool)

(assert (=> b!4457559 m!5160195))

(assert (=> b!4457559 m!5160195))

(declare-fun m!5160197 () Bool)

(assert (=> b!4457559 m!5160197))

(declare-fun m!5160199 () Bool)

(assert (=> b!4457556 m!5160199))

(assert (=> b!4457557 m!5160193))

(assert (=> b!4457557 m!5160193))

(declare-fun m!5160201 () Bool)

(assert (=> b!4457557 m!5160201))

(assert (=> b!4457555 m!5160193))

(assert (=> b!4457555 m!5160193))

(assert (=> b!4457555 m!5160201))

(declare-fun m!5160203 () Bool)

(assert (=> bm!310263 m!5160203))

(declare-fun m!5160205 () Bool)

(assert (=> b!4457560 m!5160205))

(assert (=> b!4457560 m!5160195))

(assert (=> b!4457560 m!5160195))

(assert (=> b!4457560 m!5160197))

(declare-fun m!5160207 () Bool)

(assert (=> b!4457560 m!5160207))

(declare-fun m!5160209 () Bool)

(assert (=> d!1359637 m!5160209))

(assert (=> b!4457562 m!5160209))

(declare-fun m!5160211 () Bool)

(assert (=> b!4457562 m!5160211))

(assert (=> b!4457336 d!1359637))

(declare-fun d!1359639 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8051 (List!50177) (InoxSet tuple2!50158))

(assert (=> d!1359639 (= (eq!491 lt!1648852 lt!1648844) (= (content!8051 (toList!3871 lt!1648852)) (content!8051 (toList!3871 lt!1648844))))))

(declare-fun bs!791099 () Bool)

(assert (= bs!791099 d!1359639))

(declare-fun m!5160213 () Bool)

(assert (=> bs!791099 m!5160213))

(declare-fun m!5160215 () Bool)

(assert (=> bs!791099 m!5160215))

(assert (=> b!4457336 d!1359639))

(declare-fun bs!791100 () Bool)

(declare-fun b!4457567 () Bool)

(assert (= bs!791100 (and b!4457567 b!4457551)))

(declare-fun lambda!160802 () Int)

(assert (=> bs!791100 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1648845) (= lambda!160802 lambda!160798))))

(declare-fun bs!791101 () Bool)

(assert (= bs!791101 (and b!4457567 b!4457547)))

(assert (=> bs!791101 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1648845) (= lambda!160802 lambda!160799))))

(assert (=> bs!791101 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1649139) (= lambda!160802 lambda!160800))))

(declare-fun bs!791102 () Bool)

(assert (= bs!791102 (and b!4457567 d!1359611)))

(assert (=> bs!791102 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1649133) (= lambda!160802 lambda!160801))))

(assert (=> b!4457567 true))

(declare-fun bs!791103 () Bool)

(declare-fun b!4457563 () Bool)

(assert (= bs!791103 (and b!4457563 b!4457547)))

(declare-fun lambda!160803 () Int)

(assert (=> bs!791103 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1649139) (= lambda!160803 lambda!160800))))

(declare-fun bs!791104 () Bool)

(assert (= bs!791104 (and b!4457563 d!1359611)))

(assert (=> bs!791104 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1649133) (= lambda!160803 lambda!160801))))

(assert (=> bs!791103 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1648845) (= lambda!160803 lambda!160799))))

(declare-fun bs!791105 () Bool)

(assert (= bs!791105 (and b!4457563 b!4457551)))

(assert (=> bs!791105 (= (= (+!1307 lt!1648845 (h!55798 l!12858)) lt!1648845) (= lambda!160803 lambda!160798))))

(declare-fun bs!791106 () Bool)

(assert (= bs!791106 (and b!4457563 b!4457567)))

(assert (=> bs!791106 (= lambda!160803 lambda!160802)))

(assert (=> b!4457563 true))

(declare-fun lambda!160804 () Int)

(declare-fun lt!1649168 () ListMap!3109)

(assert (=> bs!791103 (= (= lt!1649168 lt!1649139) (= lambda!160804 lambda!160800))))

(assert (=> b!4457563 (= (= lt!1649168 (+!1307 lt!1648845 (h!55798 l!12858))) (= lambda!160804 lambda!160803))))

(assert (=> bs!791104 (= (= lt!1649168 lt!1649133) (= lambda!160804 lambda!160801))))

(assert (=> bs!791103 (= (= lt!1649168 lt!1648845) (= lambda!160804 lambda!160799))))

(assert (=> bs!791105 (= (= lt!1649168 lt!1648845) (= lambda!160804 lambda!160798))))

(assert (=> bs!791106 (= (= lt!1649168 (+!1307 lt!1648845 (h!55798 l!12858))) (= lambda!160804 lambda!160802))))

(assert (=> b!4457563 true))

(declare-fun bs!791107 () Bool)

(declare-fun d!1359641 () Bool)

(assert (= bs!791107 (and d!1359641 b!4457547)))

(declare-fun lt!1649162 () ListMap!3109)

(declare-fun lambda!160805 () Int)

(assert (=> bs!791107 (= (= lt!1649162 lt!1649139) (= lambda!160805 lambda!160800))))

(declare-fun bs!791108 () Bool)

(assert (= bs!791108 (and d!1359641 b!4457563)))

(assert (=> bs!791108 (= (= lt!1649162 lt!1649168) (= lambda!160805 lambda!160804))))

(assert (=> bs!791108 (= (= lt!1649162 (+!1307 lt!1648845 (h!55798 l!12858))) (= lambda!160805 lambda!160803))))

(declare-fun bs!791109 () Bool)

(assert (= bs!791109 (and d!1359641 d!1359611)))

(assert (=> bs!791109 (= (= lt!1649162 lt!1649133) (= lambda!160805 lambda!160801))))

(assert (=> bs!791107 (= (= lt!1649162 lt!1648845) (= lambda!160805 lambda!160799))))

(declare-fun bs!791110 () Bool)

(assert (= bs!791110 (and d!1359641 b!4457551)))

(assert (=> bs!791110 (= (= lt!1649162 lt!1648845) (= lambda!160805 lambda!160798))))

(declare-fun bs!791111 () Bool)

(assert (= bs!791111 (and d!1359641 b!4457567)))

(assert (=> bs!791111 (= (= lt!1649162 (+!1307 lt!1648845 (h!55798 l!12858))) (= lambda!160805 lambda!160802))))

(assert (=> d!1359641 true))

(declare-fun bm!310264 () Bool)

(declare-fun c!758749 () Bool)

(declare-fun call!310269 () Bool)

(assert (=> bm!310264 (= call!310269 (forall!9863 (ite c!758749 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) (t!357127 (t!357127 l!12858))) (ite c!758749 lambda!160802 lambda!160804)))))

(declare-fun call!310271 () Bool)

(declare-fun bm!310265 () Bool)

(assert (=> bm!310265 (= call!310271 (forall!9863 (ite c!758749 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) (t!357127 l!12858)) (ite c!758749 lambda!160802 lambda!160804)))))

(declare-fun e!2775724 () ListMap!3109)

(assert (=> b!4457563 (= e!2775724 lt!1649168)))

(declare-fun lt!1649160 () ListMap!3109)

(assert (=> b!4457563 (= lt!1649160 (+!1307 (+!1307 lt!1648845 (h!55798 l!12858)) (h!55798 (t!357127 l!12858))))))

(assert (=> b!4457563 (= lt!1649168 (addToMapMapFromBucket!526 (t!357127 (t!357127 l!12858)) (+!1307 (+!1307 lt!1648845 (h!55798 l!12858)) (h!55798 (t!357127 l!12858)))))))

(declare-fun lt!1649167 () Unit!86284)

(declare-fun call!310270 () Unit!86284)

(assert (=> b!4457563 (= lt!1649167 call!310270)))

(assert (=> b!4457563 (forall!9863 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) lambda!160803)))

(declare-fun lt!1649161 () Unit!86284)

(assert (=> b!4457563 (= lt!1649161 lt!1649167)))

(assert (=> b!4457563 (forall!9863 (toList!3871 lt!1649160) lambda!160804)))

(declare-fun lt!1649174 () Unit!86284)

(declare-fun Unit!86337 () Unit!86284)

(assert (=> b!4457563 (= lt!1649174 Unit!86337)))

(assert (=> b!4457563 call!310269))

(declare-fun lt!1649178 () Unit!86284)

(declare-fun Unit!86338 () Unit!86284)

(assert (=> b!4457563 (= lt!1649178 Unit!86338)))

(declare-fun lt!1649164 () Unit!86284)

(declare-fun Unit!86339 () Unit!86284)

(assert (=> b!4457563 (= lt!1649164 Unit!86339)))

(declare-fun lt!1649177 () Unit!86284)

(assert (=> b!4457563 (= lt!1649177 (forallContained!2186 (toList!3871 lt!1649160) lambda!160804 (h!55798 (t!357127 l!12858))))))

(assert (=> b!4457563 (contains!12582 lt!1649160 (_1!28373 (h!55798 (t!357127 l!12858))))))

(declare-fun lt!1649166 () Unit!86284)

(declare-fun Unit!86340 () Unit!86284)

(assert (=> b!4457563 (= lt!1649166 Unit!86340)))

(assert (=> b!4457563 (contains!12582 lt!1649168 (_1!28373 (h!55798 (t!357127 l!12858))))))

(declare-fun lt!1649171 () Unit!86284)

(declare-fun Unit!86341 () Unit!86284)

(assert (=> b!4457563 (= lt!1649171 Unit!86341)))

(assert (=> b!4457563 (forall!9863 (t!357127 l!12858) lambda!160804)))

(declare-fun lt!1649173 () Unit!86284)

(declare-fun Unit!86342 () Unit!86284)

(assert (=> b!4457563 (= lt!1649173 Unit!86342)))

(assert (=> b!4457563 (forall!9863 (toList!3871 lt!1649160) lambda!160804)))

(declare-fun lt!1649175 () Unit!86284)

(declare-fun Unit!86343 () Unit!86284)

(assert (=> b!4457563 (= lt!1649175 Unit!86343)))

(declare-fun lt!1649176 () Unit!86284)

(declare-fun Unit!86344 () Unit!86284)

(assert (=> b!4457563 (= lt!1649176 Unit!86344)))

(declare-fun lt!1649172 () Unit!86284)

(assert (=> b!4457563 (= lt!1649172 (addForallContainsKeyThenBeforeAdding!235 (+!1307 lt!1648845 (h!55798 l!12858)) lt!1649168 (_1!28373 (h!55798 (t!357127 l!12858))) (_2!28373 (h!55798 (t!357127 l!12858)))))))

(assert (=> b!4457563 (forall!9863 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) lambda!160804)))

(declare-fun lt!1649179 () Unit!86284)

(assert (=> b!4457563 (= lt!1649179 lt!1649172)))

(assert (=> b!4457563 (forall!9863 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) lambda!160804)))

(declare-fun lt!1649165 () Unit!86284)

(declare-fun Unit!86345 () Unit!86284)

(assert (=> b!4457563 (= lt!1649165 Unit!86345)))

(declare-fun res!1848059 () Bool)

(assert (=> b!4457563 (= res!1848059 call!310271)))

(declare-fun e!2775725 () Bool)

(assert (=> b!4457563 (=> (not res!1848059) (not e!2775725))))

(assert (=> b!4457563 e!2775725))

(declare-fun lt!1649180 () Unit!86284)

(declare-fun Unit!86346 () Unit!86284)

(assert (=> b!4457563 (= lt!1649180 Unit!86346)))

(declare-fun bm!310266 () Bool)

(assert (=> bm!310266 (= call!310270 (lemmaContainsAllItsOwnKeys!236 (+!1307 lt!1648845 (h!55798 l!12858))))))

(declare-fun b!4457564 () Bool)

(assert (=> b!4457564 (= e!2775725 (forall!9863 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) lambda!160804))))

(declare-fun e!2775723 () Bool)

(assert (=> d!1359641 e!2775723))

(declare-fun res!1848058 () Bool)

(assert (=> d!1359641 (=> (not res!1848058) (not e!2775723))))

(assert (=> d!1359641 (= res!1848058 (forall!9863 (t!357127 l!12858) lambda!160805))))

(assert (=> d!1359641 (= lt!1649162 e!2775724)))

(assert (=> d!1359641 (= c!758749 ((_ is Nil!50053) (t!357127 l!12858)))))

(assert (=> d!1359641 (noDuplicateKeys!932 (t!357127 l!12858))))

(assert (=> d!1359641 (= (addToMapMapFromBucket!526 (t!357127 l!12858) (+!1307 lt!1648845 (h!55798 l!12858))) lt!1649162)))

(declare-fun b!4457565 () Bool)

(declare-fun res!1848060 () Bool)

(assert (=> b!4457565 (=> (not res!1848060) (not e!2775723))))

(assert (=> b!4457565 (= res!1848060 (forall!9863 (toList!3871 (+!1307 lt!1648845 (h!55798 l!12858))) lambda!160805))))

(declare-fun b!4457566 () Bool)

(assert (=> b!4457566 (= e!2775723 (invariantList!885 (toList!3871 lt!1649162)))))

(assert (=> b!4457567 (= e!2775724 (+!1307 lt!1648845 (h!55798 l!12858)))))

(declare-fun lt!1649170 () Unit!86284)

(assert (=> b!4457567 (= lt!1649170 call!310270)))

(assert (=> b!4457567 call!310269))

(declare-fun lt!1649169 () Unit!86284)

(assert (=> b!4457567 (= lt!1649169 lt!1649170)))

(assert (=> b!4457567 call!310271))

(declare-fun lt!1649163 () Unit!86284)

(declare-fun Unit!86347 () Unit!86284)

(assert (=> b!4457567 (= lt!1649163 Unit!86347)))

(assert (= (and d!1359641 c!758749) b!4457567))

(assert (= (and d!1359641 (not c!758749)) b!4457563))

(assert (= (and b!4457563 res!1848059) b!4457564))

(assert (= (or b!4457567 b!4457563) bm!310266))

(assert (= (or b!4457567 b!4457563) bm!310265))

(assert (= (or b!4457567 b!4457563) bm!310264))

(assert (= (and d!1359641 res!1848058) b!4457565))

(assert (= (and b!4457565 res!1848060) b!4457566))

(declare-fun m!5160217 () Bool)

(assert (=> d!1359641 m!5160217))

(assert (=> d!1359641 m!5159765))

(declare-fun m!5160219 () Bool)

(assert (=> b!4457563 m!5160219))

(assert (=> b!4457563 m!5159783))

(declare-fun m!5160221 () Bool)

(assert (=> b!4457563 m!5160221))

(declare-fun m!5160223 () Bool)

(assert (=> b!4457563 m!5160223))

(declare-fun m!5160225 () Bool)

(assert (=> b!4457563 m!5160225))

(assert (=> b!4457563 m!5159783))

(declare-fun m!5160227 () Bool)

(assert (=> b!4457563 m!5160227))

(declare-fun m!5160229 () Bool)

(assert (=> b!4457563 m!5160229))

(declare-fun m!5160231 () Bool)

(assert (=> b!4457563 m!5160231))

(declare-fun m!5160233 () Bool)

(assert (=> b!4457563 m!5160233))

(declare-fun m!5160235 () Bool)

(assert (=> b!4457563 m!5160235))

(assert (=> b!4457563 m!5160221))

(declare-fun m!5160237 () Bool)

(assert (=> b!4457563 m!5160237))

(assert (=> b!4457563 m!5160231))

(assert (=> b!4457563 m!5160223))

(assert (=> bm!310266 m!5159783))

(declare-fun m!5160239 () Bool)

(assert (=> bm!310266 m!5160239))

(assert (=> b!4457564 m!5160223))

(declare-fun m!5160241 () Bool)

(assert (=> bm!310264 m!5160241))

(declare-fun m!5160243 () Bool)

(assert (=> b!4457566 m!5160243))

(declare-fun m!5160245 () Bool)

(assert (=> b!4457565 m!5160245))

(declare-fun m!5160247 () Bool)

(assert (=> bm!310265 m!5160247))

(assert (=> b!4457336 d!1359641))

(declare-fun d!1359643 () Bool)

(assert (=> d!1359643 (= (eq!491 lt!1648849 lt!1648851) (= (content!8051 (toList!3871 lt!1648849)) (content!8051 (toList!3871 lt!1648851))))))

(declare-fun bs!791112 () Bool)

(assert (= bs!791112 d!1359643))

(declare-fun m!5160249 () Bool)

(assert (=> bs!791112 m!5160249))

(declare-fun m!5160251 () Bool)

(assert (=> bs!791112 m!5160251))

(assert (=> b!4457336 d!1359643))

(declare-fun d!1359645 () Bool)

(assert (=> d!1359645 (contains!12582 (+!1307 lt!1648848 (tuple2!50159 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)))) key!4412)))

(declare-fun lt!1649183 () Unit!86284)

(declare-fun choose!28399 (ListMap!3109 K!11435 V!11681 K!11435) Unit!86284)

(assert (=> d!1359645 (= lt!1649183 (choose!28399 lt!1648848 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) key!4412))))

(assert (=> d!1359645 (contains!12582 lt!1648848 key!4412)))

(assert (=> d!1359645 (= (addStillContains!14 lt!1648848 (_1!28373 (h!55798 l!12858)) (_2!28373 (h!55798 l!12858)) key!4412) lt!1649183)))

(declare-fun bs!791113 () Bool)

(assert (= bs!791113 d!1359645))

(declare-fun m!5160253 () Bool)

(assert (=> bs!791113 m!5160253))

(assert (=> bs!791113 m!5160253))

(declare-fun m!5160255 () Bool)

(assert (=> bs!791113 m!5160255))

(declare-fun m!5160257 () Bool)

(assert (=> bs!791113 m!5160257))

(assert (=> bs!791113 m!5159791))

(assert (=> b!4457336 d!1359645))

(declare-fun b!4457569 () Bool)

(declare-fun e!2775728 () Unit!86284)

(declare-fun Unit!86348 () Unit!86284)

(assert (=> b!4457569 (= e!2775728 Unit!86348)))

(declare-fun b!4457570 () Bool)

(declare-fun e!2775729 () Bool)

(assert (=> b!4457570 (= e!2775729 (contains!12585 (keys!17212 lt!1648844) key!4412))))

(declare-fun b!4457571 () Bool)

(declare-fun e!2775727 () List!50180)

(assert (=> b!4457571 (= e!2775727 (getKeysList!331 (toList!3871 lt!1648844)))))

(declare-fun bm!310267 () Bool)

(declare-fun call!310272 () Bool)

(assert (=> bm!310267 (= call!310272 (contains!12585 e!2775727 key!4412))))

(declare-fun c!758752 () Bool)

(declare-fun c!758751 () Bool)

(assert (=> bm!310267 (= c!758752 c!758751)))

(declare-fun b!4457572 () Bool)

(declare-fun e!2775730 () Bool)

(assert (=> b!4457572 (= e!2775730 (not (contains!12585 (keys!17212 lt!1648844) key!4412)))))

(declare-fun b!4457573 () Bool)

(declare-fun e!2775726 () Unit!86284)

(assert (=> b!4457573 (= e!2775726 e!2775728)))

(declare-fun c!758750 () Bool)

(assert (=> b!4457573 (= c!758750 call!310272)))

(declare-fun b!4457574 () Bool)

(declare-fun e!2775731 () Bool)

(assert (=> b!4457574 (= e!2775731 e!2775729)))

(declare-fun res!1848061 () Bool)

(assert (=> b!4457574 (=> (not res!1848061) (not e!2775729))))

(assert (=> b!4457574 (= res!1848061 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648844) key!4412)))))

(declare-fun d!1359647 () Bool)

(assert (=> d!1359647 e!2775731))

(declare-fun res!1848063 () Bool)

(assert (=> d!1359647 (=> res!1848063 e!2775731)))

(assert (=> d!1359647 (= res!1848063 e!2775730)))

(declare-fun res!1848062 () Bool)

(assert (=> d!1359647 (=> (not res!1848062) (not e!2775730))))

(declare-fun lt!1649191 () Bool)

(assert (=> d!1359647 (= res!1848062 (not lt!1649191))))

(declare-fun lt!1649187 () Bool)

(assert (=> d!1359647 (= lt!1649191 lt!1649187)))

(declare-fun lt!1649190 () Unit!86284)

(assert (=> d!1359647 (= lt!1649190 e!2775726)))

(assert (=> d!1359647 (= c!758751 lt!1649187)))

(assert (=> d!1359647 (= lt!1649187 (containsKey!1341 (toList!3871 lt!1648844) key!4412))))

(assert (=> d!1359647 (= (contains!12582 lt!1648844 key!4412) lt!1649191)))

(declare-fun b!4457575 () Bool)

(declare-fun lt!1649184 () Unit!86284)

(assert (=> b!4457575 (= e!2775726 lt!1649184)))

(declare-fun lt!1649186 () Unit!86284)

(assert (=> b!4457575 (= lt!1649186 (lemmaContainsKeyImpliesGetValueByKeyDefined!754 (toList!3871 lt!1648844) key!4412))))

(assert (=> b!4457575 (isDefined!8151 (getValueByKey!849 (toList!3871 lt!1648844) key!4412))))

(declare-fun lt!1649189 () Unit!86284)

(assert (=> b!4457575 (= lt!1649189 lt!1649186)))

(assert (=> b!4457575 (= lt!1649184 (lemmaInListThenGetKeysListContains!327 (toList!3871 lt!1648844) key!4412))))

(assert (=> b!4457575 call!310272))

(declare-fun b!4457576 () Bool)

(assert (=> b!4457576 (= e!2775727 (keys!17212 lt!1648844))))

(declare-fun b!4457577 () Bool)

(assert (=> b!4457577 false))

(declare-fun lt!1649185 () Unit!86284)

(declare-fun lt!1649188 () Unit!86284)

(assert (=> b!4457577 (= lt!1649185 lt!1649188)))

(assert (=> b!4457577 (containsKey!1341 (toList!3871 lt!1648844) key!4412)))

(assert (=> b!4457577 (= lt!1649188 (lemmaInGetKeysListThenContainsKey!329 (toList!3871 lt!1648844) key!4412))))

(declare-fun Unit!86349 () Unit!86284)

(assert (=> b!4457577 (= e!2775728 Unit!86349)))

(assert (= (and d!1359647 c!758751) b!4457575))

(assert (= (and d!1359647 (not c!758751)) b!4457573))

(assert (= (and b!4457573 c!758750) b!4457577))

(assert (= (and b!4457573 (not c!758750)) b!4457569))

(assert (= (or b!4457575 b!4457573) bm!310267))

(assert (= (and bm!310267 c!758752) b!4457571))

(assert (= (and bm!310267 (not c!758752)) b!4457576))

(assert (= (and d!1359647 res!1848062) b!4457572))

(assert (= (and d!1359647 (not res!1848063)) b!4457574))

(assert (= (and b!4457574 res!1848061) b!4457570))

(declare-fun m!5160259 () Bool)

(assert (=> b!4457576 m!5160259))

(declare-fun m!5160261 () Bool)

(assert (=> b!4457574 m!5160261))

(assert (=> b!4457574 m!5160261))

(declare-fun m!5160263 () Bool)

(assert (=> b!4457574 m!5160263))

(declare-fun m!5160265 () Bool)

(assert (=> b!4457571 m!5160265))

(assert (=> b!4457572 m!5160259))

(assert (=> b!4457572 m!5160259))

(declare-fun m!5160267 () Bool)

(assert (=> b!4457572 m!5160267))

(assert (=> b!4457570 m!5160259))

(assert (=> b!4457570 m!5160259))

(assert (=> b!4457570 m!5160267))

(declare-fun m!5160269 () Bool)

(assert (=> bm!310267 m!5160269))

(declare-fun m!5160271 () Bool)

(assert (=> b!4457575 m!5160271))

(assert (=> b!4457575 m!5160261))

(assert (=> b!4457575 m!5160261))

(assert (=> b!4457575 m!5160263))

(declare-fun m!5160273 () Bool)

(assert (=> b!4457575 m!5160273))

(declare-fun m!5160275 () Bool)

(assert (=> d!1359647 m!5160275))

(assert (=> b!4457577 m!5160275))

(declare-fun m!5160277 () Bool)

(assert (=> b!4457577 m!5160277))

(assert (=> b!4457336 d!1359647))

(declare-fun bs!791114 () Bool)

(declare-fun d!1359649 () Bool)

(assert (= bs!791114 (and d!1359649 start!436900)))

(declare-fun lambda!160808 () Int)

(assert (=> bs!791114 (= lambda!160808 lambda!160721)))

(declare-fun bs!791115 () Bool)

(assert (= bs!791115 (and d!1359649 d!1359593)))

(assert (=> bs!791115 (= lambda!160808 lambda!160730)))

(assert (=> d!1359649 (contains!12582 (addToMapMapFromBucket!526 (t!357127 l!12858) (extractMap!1000 (toList!3872 lm!1853))) key!4412)))

(declare-fun lt!1649194 () Unit!86284)

(declare-fun choose!28400 (ListLongMap!2527 K!11435 List!50177 Hashable!5339) Unit!86284)

(assert (=> d!1359649 (= lt!1649194 (choose!28400 lm!1853 key!4412 (t!357127 l!12858) hashF!1313))))

(assert (=> d!1359649 (forall!9861 (toList!3872 lm!1853) lambda!160808)))

(assert (=> d!1359649 (= (lemmaAddToMapMaintainsContains!34 lm!1853 key!4412 (t!357127 l!12858) hashF!1313) lt!1649194)))

(declare-fun bs!791116 () Bool)

(assert (= bs!791116 d!1359649))

(assert (=> bs!791116 m!5159763))

(declare-fun m!5160279 () Bool)

(assert (=> bs!791116 m!5160279))

(declare-fun m!5160281 () Bool)

(assert (=> bs!791116 m!5160281))

(assert (=> bs!791116 m!5160279))

(declare-fun m!5160283 () Bool)

(assert (=> bs!791116 m!5160283))

(declare-fun m!5160285 () Bool)

(assert (=> bs!791116 m!5160285))

(assert (=> bs!791116 m!5159763))

(assert (=> b!4457336 d!1359649))

(declare-fun d!1359651 () Bool)

(declare-fun res!1848068 () Bool)

(declare-fun e!2775736 () Bool)

(assert (=> d!1359651 (=> res!1848068 e!2775736)))

(assert (=> d!1359651 (= res!1848068 ((_ is Nil!50054) (toList!3872 lm!1853)))))

(assert (=> d!1359651 (= (forall!9861 (toList!3872 lm!1853) lambda!160721) e!2775736)))

(declare-fun b!4457582 () Bool)

(declare-fun e!2775737 () Bool)

(assert (=> b!4457582 (= e!2775736 e!2775737)))

(declare-fun res!1848069 () Bool)

(assert (=> b!4457582 (=> (not res!1848069) (not e!2775737))))

(declare-fun dynLambda!20977 (Int tuple2!50160) Bool)

(assert (=> b!4457582 (= res!1848069 (dynLambda!20977 lambda!160721 (h!55799 (toList!3872 lm!1853))))))

(declare-fun b!4457583 () Bool)

(assert (=> b!4457583 (= e!2775737 (forall!9861 (t!357128 (toList!3872 lm!1853)) lambda!160721))))

(assert (= (and d!1359651 (not res!1848068)) b!4457582))

(assert (= (and b!4457582 res!1848069) b!4457583))

(declare-fun b_lambda!147697 () Bool)

(assert (=> (not b_lambda!147697) (not b!4457582)))

(declare-fun m!5160287 () Bool)

(assert (=> b!4457582 m!5160287))

(declare-fun m!5160289 () Bool)

(assert (=> b!4457583 m!5160289))

(assert (=> start!436900 d!1359651))

(declare-fun d!1359653 () Bool)

(declare-fun isStrictlySorted!314 (List!50178) Bool)

(assert (=> d!1359653 (= (inv!65621 lm!1853) (isStrictlySorted!314 (toList!3872 lm!1853)))))

(declare-fun bs!791117 () Bool)

(assert (= bs!791117 d!1359653))

(declare-fun m!5160291 () Bool)

(assert (=> bs!791117 m!5160291))

(assert (=> start!436900 d!1359653))

(declare-fun bs!791118 () Bool)

(declare-fun d!1359655 () Bool)

(assert (= bs!791118 (and d!1359655 start!436900)))

(declare-fun lambda!160811 () Int)

(assert (=> bs!791118 (not (= lambda!160811 lambda!160721))))

(declare-fun bs!791119 () Bool)

(assert (= bs!791119 (and d!1359655 d!1359593)))

(assert (=> bs!791119 (not (= lambda!160811 lambda!160730))))

(declare-fun bs!791120 () Bool)

(assert (= bs!791120 (and d!1359655 d!1359649)))

(assert (=> bs!791120 (not (= lambda!160811 lambda!160808))))

(assert (=> d!1359655 true))

(assert (=> d!1359655 (= (allKeysSameHashInMap!1051 lm!1853 hashF!1313) (forall!9861 (toList!3872 lm!1853) lambda!160811))))

(declare-fun bs!791121 () Bool)

(assert (= bs!791121 d!1359655))

(declare-fun m!5160293 () Bool)

(assert (=> bs!791121 m!5160293))

(assert (=> b!4457339 d!1359655))

(declare-fun e!2775740 () Bool)

(declare-fun b!4457590 () Bool)

(declare-fun tp!1335205 () Bool)

(assert (=> b!4457590 (= e!2775740 (and tp_is_empty!26949 tp_is_empty!26951 tp!1335205))))

(assert (=> b!4457341 (= tp!1335192 e!2775740)))

(assert (= (and b!4457341 ((_ is Cons!50053) (t!357127 l!12858))) b!4457590))

(declare-fun b!4457595 () Bool)

(declare-fun e!2775743 () Bool)

(declare-fun tp!1335210 () Bool)

(declare-fun tp!1335211 () Bool)

(assert (=> b!4457595 (= e!2775743 (and tp!1335210 tp!1335211))))

(assert (=> b!4457340 (= tp!1335193 e!2775743)))

(assert (= (and b!4457340 ((_ is Cons!50054) (toList!3872 lm!1853))) b!4457595))

(declare-fun b_lambda!147699 () Bool)

(assert (= b_lambda!147697 (or start!436900 b_lambda!147699)))

(declare-fun bs!791122 () Bool)

(declare-fun d!1359657 () Bool)

(assert (= bs!791122 (and d!1359657 start!436900)))

(assert (=> bs!791122 (= (dynLambda!20977 lambda!160721 (h!55799 (toList!3872 lm!1853))) (noDuplicateKeys!932 (_2!28374 (h!55799 (toList!3872 lm!1853)))))))

(declare-fun m!5160295 () Bool)

(assert (=> bs!791122 m!5160295))

(assert (=> b!4457582 d!1359657))

(check-sat (not bm!310260) (not b!4457577) (not b!4457470) (not b!4457595) (not d!1359605) (not b!4457559) (not b!4457448) (not b!4457487) (not b!4457549) (not b!4457583) (not b!4457556) (not bm!310263) (not b_lambda!147699) (not b!4457572) (not b!4457555) (not bm!310238) (not d!1359601) (not bm!310261) (not b!4457452) (not b!4457576) (not d!1359653) tp_is_empty!26951 (not b!4457570) (not b!4457493) (not b!4457560) (not d!1359593) (not b!4457430) (not d!1359645) (not bm!310265) (not b!4457574) (not bm!310264) (not b!4457488) (not d!1359609) (not b!4457557) (not d!1359639) (not d!1359641) (not b!4457562) (not b!4457441) (not b!4457486) (not b!4457550) (not b!4457563) (not b!4457490) (not b!4457457) (not bm!310267) (not b!4457436) (not d!1359655) (not b!4457561) (not b!4457575) (not b!4457449) (not b!4457459) (not bm!310239) (not bm!310249) (not b!4457434) (not d!1359637) (not b!4457464) (not bm!310266) (not d!1359599) (not b!4457492) (not b!4457447) (not b!4457431) (not d!1359573) (not d!1359643) (not b!4457454) (not b!4457429) (not b!4457564) (not b!4457450) (not b!4457456) (not d!1359603) (not d!1359607) (not b!4457565) (not b!4457458) (not d!1359611) (not b!4457590) (not bm!310262) (not b!4457435) (not b!4457471) (not b!4457566) (not b!4457465) (not bs!791122) (not b!4457491) (not b!4457453) (not b!4457571) (not d!1359647) (not b!4457547) tp_is_empty!26949 (not b!4457548) (not d!1359649) (not b!4457433))
(check-sat)
