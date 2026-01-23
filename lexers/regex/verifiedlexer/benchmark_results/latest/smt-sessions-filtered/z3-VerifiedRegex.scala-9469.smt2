; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500032 () Bool)

(assert start!500032)

(declare-fun b!4822830 () Bool)

(declare-fun e!3013381 () Bool)

(declare-fun tp!1362474 () Bool)

(assert (=> b!4822830 (= e!3013381 tp!1362474)))

(declare-fun b!4822831 () Bool)

(declare-fun res!2052851 () Bool)

(declare-fun e!3013383 () Bool)

(assert (=> b!4822831 (=> (not res!2052851) (not e!3013383))))

(declare-datatypes ((V!16880 0))(
  ( (V!16881 (val!21613 Int)) )
))
(declare-datatypes ((K!16634 0))(
  ( (K!16635 (val!21614 Int)) )
))
(declare-datatypes ((tuple2!58162 0))(
  ( (tuple2!58163 (_1!32375 K!16634) (_2!32375 V!16880)) )
))
(declare-datatypes ((List!55072 0))(
  ( (Nil!54948) (Cons!54948 (h!61382 tuple2!58162) (t!362568 List!55072)) )
))
(declare-datatypes ((tuple2!58164 0))(
  ( (tuple2!58165 (_1!32376 (_ BitVec 64)) (_2!32376 List!55072)) )
))
(declare-datatypes ((List!55073 0))(
  ( (Nil!54949) (Cons!54949 (h!61383 tuple2!58164) (t!362569 List!55073)) )
))
(declare-datatypes ((ListLongMap!5979 0))(
  ( (ListLongMap!5980 (toList!7463 List!55073)) )
))
(declare-fun lm!2280 () ListLongMap!5979)

(declare-fun lt!1970870 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4822831 (= res!2052851 (and (or (not ((_ is Cons!54949) (toList!7463 lm!2280))) (not (= (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870))) ((_ is Cons!54949) (toList!7463 lm!2280)) (not (= (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870))))))

(declare-fun b!4822832 () Bool)

(declare-fun res!2052849 () Bool)

(assert (=> b!4822832 (=> (not res!2052849) (not e!3013383))))

(declare-fun key!5428 () K!16634)

(declare-fun containsKey!4347 (List!55072 K!16634) Bool)

(declare-fun apply!13345 (ListLongMap!5979 (_ BitVec 64)) List!55072)

(assert (=> b!4822832 (= res!2052849 (not (containsKey!4347 (apply!13345 lm!2280 lt!1970870) key!5428)))))

(declare-fun b!4822833 () Bool)

(declare-fun e!3013384 () Bool)

(declare-fun lt!1970871 () ListLongMap!5979)

(declare-datatypes ((Hashable!7258 0))(
  ( (HashableExt!7257 (__x!33533 Int)) )
))
(declare-fun hashF!1509 () Hashable!7258)

(declare-fun allKeysSameHashInMap!2574 (ListLongMap!5979 Hashable!7258) Bool)

(assert (=> b!4822833 (= e!3013384 (allKeysSameHashInMap!2574 lt!1970871 hashF!1509))))

(declare-fun b!4822834 () Bool)

(assert (=> b!4822834 (= e!3013383 (not e!3013384))))

(declare-fun res!2052847 () Bool)

(assert (=> b!4822834 (=> res!2052847 e!3013384)))

(declare-fun lambda!235948 () Int)

(declare-fun forall!12584 (List!55073 Int) Bool)

(assert (=> b!4822834 (= res!2052847 (not (forall!12584 (toList!7463 lt!1970871) lambda!235948)))))

(declare-fun tail!9396 (ListLongMap!5979) ListLongMap!5979)

(assert (=> b!4822834 (= lt!1970871 (tail!9396 lm!2280))))

(declare-datatypes ((ListMap!6841 0))(
  ( (ListMap!6842 (toList!7464 List!55072)) )
))
(declare-fun lt!1970873 () ListMap!6841)

(declare-fun e!3013385 () Bool)

(declare-fun contains!18748 (ListMap!6841 K!16634) Bool)

(declare-fun addToMapMapFromBucket!1790 (List!55072 ListMap!6841) ListMap!6841)

(assert (=> b!4822834 (= (contains!18748 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873) key!5428) e!3013385)))

(declare-fun res!2052848 () Bool)

(assert (=> b!4822834 (=> res!2052848 e!3013385)))

(assert (=> b!4822834 (= res!2052848 (containsKey!4347 (_2!32376 (h!61383 (toList!7463 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142607 0))(
  ( (Unit!142608) )
))
(declare-fun lt!1970874 () Unit!142607)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!16 (List!55072 ListMap!6841 K!16634) Unit!142607)

(assert (=> b!4822834 (= lt!1970874 (lemmaAddToMapFromBucketContainsIIFInAccOrL!16 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873 key!5428))))

(declare-fun extractMap!2672 (List!55073) ListMap!6841)

(assert (=> b!4822834 (= lt!1970873 (extractMap!2672 (t!362569 (toList!7463 lm!2280))))))

(assert (=> b!4822834 (not (containsKey!4347 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))) key!5428))))

(declare-fun lt!1970872 () Unit!142607)

(declare-fun lemmaNotSameHashThenCannotContainKey!216 (ListLongMap!5979 K!16634 (_ BitVec 64) Hashable!7258) Unit!142607)

(assert (=> b!4822834 (= lt!1970872 (lemmaNotSameHashThenCannotContainKey!216 lm!2280 key!5428 (_1!32376 (h!61383 (toList!7463 lm!2280))) hashF!1509))))

(declare-fun b!4822835 () Bool)

(declare-fun res!2052846 () Bool)

(declare-fun e!3013382 () Bool)

(assert (=> b!4822835 (=> (not res!2052846) (not e!3013382))))

(assert (=> b!4822835 (= res!2052846 (allKeysSameHashInMap!2574 lm!2280 hashF!1509))))

(declare-fun res!2052850 () Bool)

(assert (=> start!500032 (=> (not res!2052850) (not e!3013382))))

(assert (=> start!500032 (= res!2052850 (forall!12584 (toList!7463 lm!2280) lambda!235948))))

(assert (=> start!500032 e!3013382))

(declare-fun inv!70534 (ListLongMap!5979) Bool)

(assert (=> start!500032 (and (inv!70534 lm!2280) e!3013381)))

(assert (=> start!500032 true))

(declare-fun tp_is_empty!34427 () Bool)

(assert (=> start!500032 tp_is_empty!34427))

(declare-fun b!4822836 () Bool)

(assert (=> b!4822836 (= e!3013385 (contains!18748 lt!1970873 key!5428))))

(declare-fun b!4822837 () Bool)

(assert (=> b!4822837 (= e!3013382 e!3013383)))

(declare-fun res!2052845 () Bool)

(assert (=> b!4822837 (=> (not res!2052845) (not e!3013383))))

(declare-fun contains!18749 (ListLongMap!5979 (_ BitVec 64)) Bool)

(assert (=> b!4822837 (= res!2052845 (contains!18749 lm!2280 lt!1970870))))

(declare-fun hash!5368 (Hashable!7258 K!16634) (_ BitVec 64))

(assert (=> b!4822837 (= lt!1970870 (hash!5368 hashF!1509 key!5428))))

(assert (= (and start!500032 res!2052850) b!4822835))

(assert (= (and b!4822835 res!2052846) b!4822837))

(assert (= (and b!4822837 res!2052845) b!4822832))

(assert (= (and b!4822832 res!2052849) b!4822831))

(assert (= (and b!4822831 res!2052851) b!4822834))

(assert (= (and b!4822834 (not res!2052848)) b!4822836))

(assert (= (and b!4822834 (not res!2052847)) b!4822833))

(assert (= start!500032 b!4822830))

(declare-fun m!5811398 () Bool)

(assert (=> b!4822835 m!5811398))

(declare-fun m!5811400 () Bool)

(assert (=> b!4822834 m!5811400))

(declare-fun m!5811402 () Bool)

(assert (=> b!4822834 m!5811402))

(declare-fun m!5811404 () Bool)

(assert (=> b!4822834 m!5811404))

(declare-fun m!5811406 () Bool)

(assert (=> b!4822834 m!5811406))

(assert (=> b!4822834 m!5811404))

(declare-fun m!5811408 () Bool)

(assert (=> b!4822834 m!5811408))

(declare-fun m!5811410 () Bool)

(assert (=> b!4822834 m!5811410))

(declare-fun m!5811412 () Bool)

(assert (=> b!4822834 m!5811412))

(declare-fun m!5811414 () Bool)

(assert (=> b!4822834 m!5811414))

(declare-fun m!5811416 () Bool)

(assert (=> b!4822834 m!5811416))

(declare-fun m!5811418 () Bool)

(assert (=> b!4822834 m!5811418))

(assert (=> b!4822834 m!5811410))

(declare-fun m!5811420 () Bool)

(assert (=> start!500032 m!5811420))

(declare-fun m!5811422 () Bool)

(assert (=> start!500032 m!5811422))

(declare-fun m!5811424 () Bool)

(assert (=> b!4822832 m!5811424))

(assert (=> b!4822832 m!5811424))

(declare-fun m!5811426 () Bool)

(assert (=> b!4822832 m!5811426))

(declare-fun m!5811428 () Bool)

(assert (=> b!4822836 m!5811428))

(declare-fun m!5811430 () Bool)

(assert (=> b!4822833 m!5811430))

(declare-fun m!5811432 () Bool)

(assert (=> b!4822837 m!5811432))

(declare-fun m!5811434 () Bool)

(assert (=> b!4822837 m!5811434))

(check-sat (not b!4822836) (not b!4822834) tp_is_empty!34427 (not start!500032) (not b!4822835) (not b!4822837) (not b!4822833) (not b!4822832) (not b!4822830))
(check-sat)
(get-model)

(declare-fun b!4822894 () Bool)

(declare-datatypes ((List!55075 0))(
  ( (Nil!54951) (Cons!54951 (h!61385 K!16634) (t!362571 List!55075)) )
))
(declare-fun e!3013422 () List!55075)

(declare-fun keys!20211 (ListMap!6841) List!55075)

(assert (=> b!4822894 (= e!3013422 (keys!20211 lt!1970873))))

(declare-fun bm!336199 () Bool)

(declare-fun call!336204 () Bool)

(declare-fun contains!18751 (List!55075 K!16634) Bool)

(assert (=> bm!336199 (= call!336204 (contains!18751 e!3013422 key!5428))))

(declare-fun c!821800 () Bool)

(declare-fun c!821799 () Bool)

(assert (=> bm!336199 (= c!821800 c!821799)))

(declare-fun b!4822895 () Bool)

(declare-fun e!3013426 () Unit!142607)

(declare-fun e!3013425 () Unit!142607)

(assert (=> b!4822895 (= e!3013426 e!3013425)))

(declare-fun c!821801 () Bool)

(assert (=> b!4822895 (= c!821801 call!336204)))

(declare-fun b!4822896 () Bool)

(declare-fun Unit!142625 () Unit!142607)

(assert (=> b!4822896 (= e!3013425 Unit!142625)))

(declare-fun b!4822897 () Bool)

(declare-fun e!3013423 () Bool)

(assert (=> b!4822897 (= e!3013423 (contains!18751 (keys!20211 lt!1970873) key!5428))))

(declare-fun b!4822898 () Bool)

(declare-fun getKeysList!1152 (List!55072) List!55075)

(assert (=> b!4822898 (= e!3013422 (getKeysList!1152 (toList!7464 lt!1970873)))))

(declare-fun b!4822899 () Bool)

(declare-fun e!3013424 () Bool)

(assert (=> b!4822899 (= e!3013424 (not (contains!18751 (keys!20211 lt!1970873) key!5428)))))

(declare-fun b!4822900 () Bool)

(assert (=> b!4822900 false))

(declare-fun lt!1970928 () Unit!142607)

(declare-fun lt!1970927 () Unit!142607)

(assert (=> b!4822900 (= lt!1970928 lt!1970927)))

(declare-fun containsKey!4350 (List!55072 K!16634) Bool)

(assert (=> b!4822900 (containsKey!4350 (toList!7464 lt!1970873) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1152 (List!55072 K!16634) Unit!142607)

(assert (=> b!4822900 (= lt!1970927 (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 lt!1970873) key!5428))))

(declare-fun Unit!142626 () Unit!142607)

(assert (=> b!4822900 (= e!3013425 Unit!142626)))

(declare-fun b!4822901 () Bool)

(declare-fun e!3013427 () Bool)

(assert (=> b!4822901 (= e!3013427 e!3013423)))

(declare-fun res!2052872 () Bool)

(assert (=> b!4822901 (=> (not res!2052872) (not e!3013423))))

(declare-datatypes ((Option!13480 0))(
  ( (None!13479) (Some!13479 (v!49152 V!16880)) )
))
(declare-fun isDefined!10595 (Option!13480) Bool)

(declare-fun getValueByKey!2607 (List!55072 K!16634) Option!13480)

(assert (=> b!4822901 (= res!2052872 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1970873) key!5428)))))

(declare-fun b!4822902 () Bool)

(declare-fun lt!1970932 () Unit!142607)

(assert (=> b!4822902 (= e!3013426 lt!1970932)))

(declare-fun lt!1970929 () Unit!142607)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (List!55072 K!16634) Unit!142607)

(assert (=> b!4822902 (= lt!1970929 (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 lt!1970873) key!5428))))

(assert (=> b!4822902 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1970873) key!5428))))

(declare-fun lt!1970933 () Unit!142607)

(assert (=> b!4822902 (= lt!1970933 lt!1970929)))

(declare-fun lemmaInListThenGetKeysListContains!1147 (List!55072 K!16634) Unit!142607)

(assert (=> b!4822902 (= lt!1970932 (lemmaInListThenGetKeysListContains!1147 (toList!7464 lt!1970873) key!5428))))

(assert (=> b!4822902 call!336204))

(declare-fun d!1544444 () Bool)

(assert (=> d!1544444 e!3013427))

(declare-fun res!2052871 () Bool)

(assert (=> d!1544444 (=> res!2052871 e!3013427)))

(assert (=> d!1544444 (= res!2052871 e!3013424)))

(declare-fun res!2052870 () Bool)

(assert (=> d!1544444 (=> (not res!2052870) (not e!3013424))))

(declare-fun lt!1970934 () Bool)

(assert (=> d!1544444 (= res!2052870 (not lt!1970934))))

(declare-fun lt!1970931 () Bool)

(assert (=> d!1544444 (= lt!1970934 lt!1970931)))

(declare-fun lt!1970930 () Unit!142607)

(assert (=> d!1544444 (= lt!1970930 e!3013426)))

(assert (=> d!1544444 (= c!821799 lt!1970931)))

(assert (=> d!1544444 (= lt!1970931 (containsKey!4350 (toList!7464 lt!1970873) key!5428))))

(assert (=> d!1544444 (= (contains!18748 lt!1970873 key!5428) lt!1970934)))

(assert (= (and d!1544444 c!821799) b!4822902))

(assert (= (and d!1544444 (not c!821799)) b!4822895))

(assert (= (and b!4822895 c!821801) b!4822900))

(assert (= (and b!4822895 (not c!821801)) b!4822896))

(assert (= (or b!4822902 b!4822895) bm!336199))

(assert (= (and bm!336199 c!821800) b!4822898))

(assert (= (and bm!336199 (not c!821800)) b!4822894))

(assert (= (and d!1544444 res!2052870) b!4822899))

(assert (= (and d!1544444 (not res!2052871)) b!4822901))

(assert (= (and b!4822901 res!2052872) b!4822897))

(declare-fun m!5811474 () Bool)

(assert (=> b!4822901 m!5811474))

(assert (=> b!4822901 m!5811474))

(declare-fun m!5811476 () Bool)

(assert (=> b!4822901 m!5811476))

(declare-fun m!5811478 () Bool)

(assert (=> b!4822900 m!5811478))

(declare-fun m!5811480 () Bool)

(assert (=> b!4822900 m!5811480))

(declare-fun m!5811482 () Bool)

(assert (=> b!4822902 m!5811482))

(assert (=> b!4822902 m!5811474))

(assert (=> b!4822902 m!5811474))

(assert (=> b!4822902 m!5811476))

(declare-fun m!5811484 () Bool)

(assert (=> b!4822902 m!5811484))

(declare-fun m!5811486 () Bool)

(assert (=> bm!336199 m!5811486))

(assert (=> d!1544444 m!5811478))

(declare-fun m!5811488 () Bool)

(assert (=> b!4822894 m!5811488))

(declare-fun m!5811490 () Bool)

(assert (=> b!4822898 m!5811490))

(assert (=> b!4822899 m!5811488))

(assert (=> b!4822899 m!5811488))

(declare-fun m!5811492 () Bool)

(assert (=> b!4822899 m!5811492))

(assert (=> b!4822897 m!5811488))

(assert (=> b!4822897 m!5811488))

(assert (=> b!4822897 m!5811492))

(assert (=> b!4822836 d!1544444))

(declare-fun bs!1162675 () Bool)

(declare-fun d!1544460 () Bool)

(assert (= bs!1162675 (and d!1544460 start!500032)))

(declare-fun lambda!235955 () Int)

(assert (=> bs!1162675 (not (= lambda!235955 lambda!235948))))

(assert (=> d!1544460 true))

(assert (=> d!1544460 (= (allKeysSameHashInMap!2574 lm!2280 hashF!1509) (forall!12584 (toList!7463 lm!2280) lambda!235955))))

(declare-fun bs!1162676 () Bool)

(assert (= bs!1162676 d!1544460))

(declare-fun m!5811494 () Bool)

(assert (=> bs!1162676 m!5811494))

(assert (=> b!4822835 d!1544460))

(declare-fun d!1544462 () Bool)

(declare-datatypes ((Option!13481 0))(
  ( (None!13480) (Some!13480 (v!49153 List!55072)) )
))
(declare-fun get!18812 (Option!13481) List!55072)

(declare-fun getValueByKey!2608 (List!55073 (_ BitVec 64)) Option!13481)

(assert (=> d!1544462 (= (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))) (get!18812 (getValueByKey!2608 (toList!7463 lm!2280) (_1!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun bs!1162677 () Bool)

(assert (= bs!1162677 d!1544462))

(declare-fun m!5811496 () Bool)

(assert (=> bs!1162677 m!5811496))

(assert (=> bs!1162677 m!5811496))

(declare-fun m!5811498 () Bool)

(assert (=> bs!1162677 m!5811498))

(assert (=> b!4822834 d!1544462))

(declare-fun d!1544464 () Bool)

(declare-fun res!2052877 () Bool)

(declare-fun e!3013432 () Bool)

(assert (=> d!1544464 (=> res!2052877 e!3013432)))

(assert (=> d!1544464 (= res!2052877 (and ((_ is Cons!54948) (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280))))) (= (_1!32375 (h!61382 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))))) key!5428)))))

(assert (=> d!1544464 (= (containsKey!4347 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))) key!5428) e!3013432)))

(declare-fun b!4822909 () Bool)

(declare-fun e!3013433 () Bool)

(assert (=> b!4822909 (= e!3013432 e!3013433)))

(declare-fun res!2052878 () Bool)

(assert (=> b!4822909 (=> (not res!2052878) (not e!3013433))))

(assert (=> b!4822909 (= res!2052878 ((_ is Cons!54948) (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun b!4822910 () Bool)

(assert (=> b!4822910 (= e!3013433 (containsKey!4347 (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280))))) key!5428))))

(assert (= (and d!1544464 (not res!2052877)) b!4822909))

(assert (= (and b!4822909 res!2052878) b!4822910))

(declare-fun m!5811500 () Bool)

(assert (=> b!4822910 m!5811500))

(assert (=> b!4822834 d!1544464))

(declare-fun b!4822980 () Bool)

(assert (=> b!4822980 true))

(declare-fun bs!1162694 () Bool)

(declare-fun b!4822981 () Bool)

(assert (= bs!1162694 (and b!4822981 b!4822980)))

(declare-fun lambda!236023 () Int)

(declare-fun lambda!236022 () Int)

(assert (=> bs!1162694 (= lambda!236023 lambda!236022)))

(assert (=> b!4822981 true))

(declare-fun lambda!236024 () Int)

(declare-fun lt!1971072 () ListMap!6841)

(assert (=> bs!1162694 (= (= lt!1971072 lt!1970873) (= lambda!236024 lambda!236022))))

(assert (=> b!4822981 (= (= lt!1971072 lt!1970873) (= lambda!236024 lambda!236023))))

(assert (=> b!4822981 true))

(declare-fun bs!1162695 () Bool)

(declare-fun d!1544466 () Bool)

(assert (= bs!1162695 (and d!1544466 b!4822980)))

(declare-fun lt!1971058 () ListMap!6841)

(declare-fun lambda!236025 () Int)

(assert (=> bs!1162695 (= (= lt!1971058 lt!1970873) (= lambda!236025 lambda!236022))))

(declare-fun bs!1162696 () Bool)

(assert (= bs!1162696 (and d!1544466 b!4822981)))

(assert (=> bs!1162696 (= (= lt!1971058 lt!1970873) (= lambda!236025 lambda!236023))))

(assert (=> bs!1162696 (= (= lt!1971058 lt!1971072) (= lambda!236025 lambda!236024))))

(assert (=> d!1544466 true))

(declare-fun bm!336216 () Bool)

(declare-fun call!336221 () Unit!142607)

(declare-fun lemmaContainsAllItsOwnKeys!984 (ListMap!6841) Unit!142607)

(assert (=> bm!336216 (= call!336221 (lemmaContainsAllItsOwnKeys!984 lt!1970873))))

(declare-fun e!3013484 () Bool)

(assert (=> d!1544466 e!3013484))

(declare-fun res!2052919 () Bool)

(assert (=> d!1544466 (=> (not res!2052919) (not e!3013484))))

(declare-fun forall!12586 (List!55072 Int) Bool)

(assert (=> d!1544466 (= res!2052919 (forall!12586 (_2!32376 (h!61383 (toList!7463 lm!2280))) lambda!236025))))

(declare-fun e!3013483 () ListMap!6841)

(assert (=> d!1544466 (= lt!1971058 e!3013483)))

(declare-fun c!821813 () Bool)

(assert (=> d!1544466 (= c!821813 ((_ is Nil!54948) (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun noDuplicateKeys!2444 (List!55072) Bool)

(assert (=> d!1544466 (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lm!2280))))))

(assert (=> d!1544466 (= (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873) lt!1971058)))

(declare-fun b!4822979 () Bool)

(declare-fun invariantList!1805 (List!55072) Bool)

(assert (=> b!4822979 (= e!3013484 (invariantList!1805 (toList!7464 lt!1971058)))))

(declare-fun bm!336217 () Bool)

(declare-fun call!336223 () Bool)

(assert (=> bm!336217 (= call!336223 (forall!12586 (toList!7464 lt!1970873) (ite c!821813 lambda!236022 lambda!236024)))))

(assert (=> b!4822980 (= e!3013483 lt!1970873)))

(declare-fun lt!1971057 () Unit!142607)

(assert (=> b!4822980 (= lt!1971057 call!336221)))

(assert (=> b!4822980 call!336223))

(declare-fun lt!1971071 () Unit!142607)

(assert (=> b!4822980 (= lt!1971071 lt!1971057)))

(declare-fun call!336222 () Bool)

(assert (=> b!4822980 call!336222))

(declare-fun lt!1971069 () Unit!142607)

(declare-fun Unit!142627 () Unit!142607)

(assert (=> b!4822980 (= lt!1971069 Unit!142627)))

(assert (=> b!4822981 (= e!3013483 lt!1971072)))

(declare-fun lt!1971066 () ListMap!6841)

(declare-fun +!2529 (ListMap!6841 tuple2!58162) ListMap!6841)

(assert (=> b!4822981 (= lt!1971066 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> b!4822981 (= lt!1971072 (addToMapMapFromBucket!1790 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971067 () Unit!142607)

(assert (=> b!4822981 (= lt!1971067 call!336221)))

(assert (=> b!4822981 (forall!12586 (toList!7464 lt!1970873) lambda!236023)))

(declare-fun lt!1971063 () Unit!142607)

(assert (=> b!4822981 (= lt!1971063 lt!1971067)))

(assert (=> b!4822981 (forall!12586 (toList!7464 lt!1971066) lambda!236024)))

(declare-fun lt!1971077 () Unit!142607)

(declare-fun Unit!142628 () Unit!142607)

(assert (=> b!4822981 (= lt!1971077 Unit!142628)))

(assert (=> b!4822981 call!336222))

(declare-fun lt!1971059 () Unit!142607)

(declare-fun Unit!142629 () Unit!142607)

(assert (=> b!4822981 (= lt!1971059 Unit!142629)))

(declare-fun lt!1971074 () Unit!142607)

(declare-fun Unit!142630 () Unit!142607)

(assert (=> b!4822981 (= lt!1971074 Unit!142630)))

(declare-fun lt!1971068 () Unit!142607)

(declare-fun forallContained!4370 (List!55072 Int tuple2!58162) Unit!142607)

(assert (=> b!4822981 (= lt!1971068 (forallContained!4370 (toList!7464 lt!1971066) lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> b!4822981 (contains!18748 lt!1971066 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun lt!1971073 () Unit!142607)

(declare-fun Unit!142631 () Unit!142607)

(assert (=> b!4822981 (= lt!1971073 Unit!142631)))

(assert (=> b!4822981 (contains!18748 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun lt!1971060 () Unit!142607)

(declare-fun Unit!142632 () Unit!142607)

(assert (=> b!4822981 (= lt!1971060 Unit!142632)))

(assert (=> b!4822981 (forall!12586 (_2!32376 (h!61383 (toList!7463 lm!2280))) lambda!236024)))

(declare-fun lt!1971061 () Unit!142607)

(declare-fun Unit!142633 () Unit!142607)

(assert (=> b!4822981 (= lt!1971061 Unit!142633)))

(assert (=> b!4822981 (forall!12586 (toList!7464 lt!1971066) lambda!236024)))

(declare-fun lt!1971062 () Unit!142607)

(declare-fun Unit!142634 () Unit!142607)

(assert (=> b!4822981 (= lt!1971062 Unit!142634)))

(declare-fun lt!1971075 () Unit!142607)

(declare-fun Unit!142635 () Unit!142607)

(assert (=> b!4822981 (= lt!1971075 Unit!142635)))

(declare-fun lt!1971064 () Unit!142607)

(declare-fun addForallContainsKeyThenBeforeAdding!983 (ListMap!6841 ListMap!6841 K!16634 V!16880) Unit!142607)

(assert (=> b!4822981 (= lt!1971064 (addForallContainsKeyThenBeforeAdding!983 lt!1970873 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4822981 call!336223))

(declare-fun lt!1971076 () Unit!142607)

(assert (=> b!4822981 (= lt!1971076 lt!1971064)))

(assert (=> b!4822981 (forall!12586 (toList!7464 lt!1970873) lambda!236024)))

(declare-fun lt!1971070 () Unit!142607)

(declare-fun Unit!142636 () Unit!142607)

(assert (=> b!4822981 (= lt!1971070 Unit!142636)))

(declare-fun res!2052918 () Bool)

(assert (=> b!4822981 (= res!2052918 (forall!12586 (_2!32376 (h!61383 (toList!7463 lm!2280))) lambda!236024))))

(declare-fun e!3013482 () Bool)

(assert (=> b!4822981 (=> (not res!2052918) (not e!3013482))))

(assert (=> b!4822981 e!3013482))

(declare-fun lt!1971065 () Unit!142607)

(declare-fun Unit!142637 () Unit!142607)

(assert (=> b!4822981 (= lt!1971065 Unit!142637)))

(declare-fun bm!336218 () Bool)

(assert (=> bm!336218 (= call!336222 (forall!12586 (ite c!821813 (toList!7464 lt!1970873) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (ite c!821813 lambda!236022 lambda!236024)))))

(declare-fun b!4822982 () Bool)

(declare-fun res!2052920 () Bool)

(assert (=> b!4822982 (=> (not res!2052920) (not e!3013484))))

(assert (=> b!4822982 (= res!2052920 (forall!12586 (toList!7464 lt!1970873) lambda!236025))))

(declare-fun b!4822983 () Bool)

(assert (=> b!4822983 (= e!3013482 (forall!12586 (toList!7464 lt!1970873) lambda!236024))))

(assert (= (and d!1544466 c!821813) b!4822980))

(assert (= (and d!1544466 (not c!821813)) b!4822981))

(assert (= (and b!4822981 res!2052918) b!4822983))

(assert (= (or b!4822980 b!4822981) bm!336218))

(assert (= (or b!4822980 b!4822981) bm!336217))

(assert (= (or b!4822980 b!4822981) bm!336216))

(assert (= (and d!1544466 res!2052919) b!4822982))

(assert (= (and b!4822982 res!2052920) b!4822979))

(declare-fun m!5811594 () Bool)

(assert (=> bm!336217 m!5811594))

(declare-fun m!5811596 () Bool)

(assert (=> b!4822983 m!5811596))

(declare-fun m!5811598 () Bool)

(assert (=> b!4822981 m!5811598))

(declare-fun m!5811600 () Bool)

(assert (=> b!4822981 m!5811600))

(declare-fun m!5811602 () Bool)

(assert (=> b!4822981 m!5811602))

(declare-fun m!5811604 () Bool)

(assert (=> b!4822981 m!5811604))

(assert (=> b!4822981 m!5811600))

(declare-fun m!5811606 () Bool)

(assert (=> b!4822981 m!5811606))

(declare-fun m!5811608 () Bool)

(assert (=> b!4822981 m!5811608))

(declare-fun m!5811610 () Bool)

(assert (=> b!4822981 m!5811610))

(declare-fun m!5811612 () Bool)

(assert (=> b!4822981 m!5811612))

(assert (=> b!4822981 m!5811604))

(declare-fun m!5811614 () Bool)

(assert (=> b!4822981 m!5811614))

(assert (=> b!4822981 m!5811606))

(assert (=> b!4822981 m!5811596))

(declare-fun m!5811616 () Bool)

(assert (=> d!1544466 m!5811616))

(declare-fun m!5811618 () Bool)

(assert (=> d!1544466 m!5811618))

(declare-fun m!5811620 () Bool)

(assert (=> b!4822982 m!5811620))

(declare-fun m!5811622 () Bool)

(assert (=> bm!336218 m!5811622))

(declare-fun m!5811624 () Bool)

(assert (=> b!4822979 m!5811624))

(declare-fun m!5811626 () Bool)

(assert (=> bm!336216 m!5811626))

(assert (=> b!4822834 d!1544466))

(declare-fun bs!1162697 () Bool)

(declare-fun d!1544496 () Bool)

(assert (= bs!1162697 (and d!1544496 start!500032)))

(declare-fun lambda!236028 () Int)

(assert (=> bs!1162697 (= lambda!236028 lambda!235948)))

(declare-fun bs!1162698 () Bool)

(assert (= bs!1162698 (and d!1544496 d!1544460)))

(assert (=> bs!1162698 (not (= lambda!236028 lambda!235955))))

(assert (=> d!1544496 (not (containsKey!4347 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))) key!5428))))

(declare-fun lt!1971080 () Unit!142607)

(declare-fun choose!35050 (ListLongMap!5979 K!16634 (_ BitVec 64) Hashable!7258) Unit!142607)

(assert (=> d!1544496 (= lt!1971080 (choose!35050 lm!2280 key!5428 (_1!32376 (h!61383 (toList!7463 lm!2280))) hashF!1509))))

(assert (=> d!1544496 (forall!12584 (toList!7463 lm!2280) lambda!236028)))

(assert (=> d!1544496 (= (lemmaNotSameHashThenCannotContainKey!216 lm!2280 key!5428 (_1!32376 (h!61383 (toList!7463 lm!2280))) hashF!1509) lt!1971080)))

(declare-fun bs!1162699 () Bool)

(assert (= bs!1162699 d!1544496))

(assert (=> bs!1162699 m!5811404))

(assert (=> bs!1162699 m!5811404))

(assert (=> bs!1162699 m!5811408))

(declare-fun m!5811628 () Bool)

(assert (=> bs!1162699 m!5811628))

(declare-fun m!5811630 () Bool)

(assert (=> bs!1162699 m!5811630))

(assert (=> b!4822834 d!1544496))

(declare-fun d!1544498 () Bool)

(declare-fun e!3013487 () Bool)

(assert (=> d!1544498 (= (contains!18748 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873) key!5428) e!3013487)))

(declare-fun res!2052923 () Bool)

(assert (=> d!1544498 (=> res!2052923 e!3013487)))

(assert (=> d!1544498 (= res!2052923 (containsKey!4347 (_2!32376 (h!61383 (toList!7463 lm!2280))) key!5428))))

(declare-fun lt!1971083 () Unit!142607)

(declare-fun choose!35051 (List!55072 ListMap!6841 K!16634) Unit!142607)

(assert (=> d!1544498 (= lt!1971083 (choose!35051 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873 key!5428))))

(assert (=> d!1544498 (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lm!2280))))))

(assert (=> d!1544498 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!16 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873 key!5428) lt!1971083)))

(declare-fun b!4822988 () Bool)

(assert (=> b!4822988 (= e!3013487 (contains!18748 lt!1970873 key!5428))))

(assert (= (and d!1544498 (not res!2052923)) b!4822988))

(assert (=> d!1544498 m!5811618))

(assert (=> d!1544498 m!5811406))

(declare-fun m!5811632 () Bool)

(assert (=> d!1544498 m!5811632))

(assert (=> d!1544498 m!5811410))

(assert (=> d!1544498 m!5811410))

(assert (=> d!1544498 m!5811412))

(assert (=> b!4822988 m!5811428))

(assert (=> b!4822834 d!1544498))

(declare-fun b!4822989 () Bool)

(declare-fun e!3013488 () List!55075)

(assert (=> b!4822989 (= e!3013488 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))

(declare-fun bm!336219 () Bool)

(declare-fun call!336224 () Bool)

(assert (=> bm!336219 (= call!336224 (contains!18751 e!3013488 key!5428))))

(declare-fun c!821815 () Bool)

(declare-fun c!821814 () Bool)

(assert (=> bm!336219 (= c!821815 c!821814)))

(declare-fun b!4822990 () Bool)

(declare-fun e!3013492 () Unit!142607)

(declare-fun e!3013491 () Unit!142607)

(assert (=> b!4822990 (= e!3013492 e!3013491)))

(declare-fun c!821816 () Bool)

(assert (=> b!4822990 (= c!821816 call!336224)))

(declare-fun b!4822991 () Bool)

(declare-fun Unit!142638 () Unit!142607)

(assert (=> b!4822991 (= e!3013491 Unit!142638)))

(declare-fun b!4822992 () Bool)

(declare-fun e!3013489 () Bool)

(assert (=> b!4822992 (= e!3013489 (contains!18751 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(declare-fun b!4822993 () Bool)

(assert (=> b!4822993 (= e!3013488 (getKeysList!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))

(declare-fun b!4822994 () Bool)

(declare-fun e!3013490 () Bool)

(assert (=> b!4822994 (= e!3013490 (not (contains!18751 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428)))))

(declare-fun b!4822995 () Bool)

(assert (=> b!4822995 false))

(declare-fun lt!1971085 () Unit!142607)

(declare-fun lt!1971084 () Unit!142607)

(assert (=> b!4822995 (= lt!1971085 lt!1971084)))

(assert (=> b!4822995 (containsKey!4350 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428)))

(assert (=> b!4822995 (= lt!1971084 (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(declare-fun Unit!142639 () Unit!142607)

(assert (=> b!4822995 (= e!3013491 Unit!142639)))

(declare-fun b!4822996 () Bool)

(declare-fun e!3013493 () Bool)

(assert (=> b!4822996 (= e!3013493 e!3013489)))

(declare-fun res!2052926 () Bool)

(assert (=> b!4822996 (=> (not res!2052926) (not e!3013489))))

(assert (=> b!4822996 (= res!2052926 (isDefined!10595 (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428)))))

(declare-fun b!4822997 () Bool)

(declare-fun lt!1971089 () Unit!142607)

(assert (=> b!4822997 (= e!3013492 lt!1971089)))

(declare-fun lt!1971086 () Unit!142607)

(assert (=> b!4822997 (= lt!1971086 (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> b!4822997 (isDefined!10595 (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(declare-fun lt!1971090 () Unit!142607)

(assert (=> b!4822997 (= lt!1971090 lt!1971086)))

(assert (=> b!4822997 (= lt!1971089 (lemmaInListThenGetKeysListContains!1147 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> b!4822997 call!336224))

(declare-fun d!1544500 () Bool)

(assert (=> d!1544500 e!3013493))

(declare-fun res!2052925 () Bool)

(assert (=> d!1544500 (=> res!2052925 e!3013493)))

(assert (=> d!1544500 (= res!2052925 e!3013490)))

(declare-fun res!2052924 () Bool)

(assert (=> d!1544500 (=> (not res!2052924) (not e!3013490))))

(declare-fun lt!1971091 () Bool)

(assert (=> d!1544500 (= res!2052924 (not lt!1971091))))

(declare-fun lt!1971088 () Bool)

(assert (=> d!1544500 (= lt!1971091 lt!1971088)))

(declare-fun lt!1971087 () Unit!142607)

(assert (=> d!1544500 (= lt!1971087 e!3013492)))

(assert (=> d!1544500 (= c!821814 lt!1971088)))

(assert (=> d!1544500 (= lt!1971088 (containsKey!4350 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> d!1544500 (= (contains!18748 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873) key!5428) lt!1971091)))

(assert (= (and d!1544500 c!821814) b!4822997))

(assert (= (and d!1544500 (not c!821814)) b!4822990))

(assert (= (and b!4822990 c!821816) b!4822995))

(assert (= (and b!4822990 (not c!821816)) b!4822991))

(assert (= (or b!4822997 b!4822990) bm!336219))

(assert (= (and bm!336219 c!821815) b!4822993))

(assert (= (and bm!336219 (not c!821815)) b!4822989))

(assert (= (and d!1544500 res!2052924) b!4822994))

(assert (= (and d!1544500 (not res!2052925)) b!4822996))

(assert (= (and b!4822996 res!2052926) b!4822992))

(declare-fun m!5811634 () Bool)

(assert (=> b!4822996 m!5811634))

(assert (=> b!4822996 m!5811634))

(declare-fun m!5811636 () Bool)

(assert (=> b!4822996 m!5811636))

(declare-fun m!5811638 () Bool)

(assert (=> b!4822995 m!5811638))

(declare-fun m!5811640 () Bool)

(assert (=> b!4822995 m!5811640))

(declare-fun m!5811642 () Bool)

(assert (=> b!4822997 m!5811642))

(assert (=> b!4822997 m!5811634))

(assert (=> b!4822997 m!5811634))

(assert (=> b!4822997 m!5811636))

(declare-fun m!5811644 () Bool)

(assert (=> b!4822997 m!5811644))

(declare-fun m!5811646 () Bool)

(assert (=> bm!336219 m!5811646))

(assert (=> d!1544500 m!5811638))

(assert (=> b!4822989 m!5811410))

(declare-fun m!5811648 () Bool)

(assert (=> b!4822989 m!5811648))

(declare-fun m!5811650 () Bool)

(assert (=> b!4822993 m!5811650))

(assert (=> b!4822994 m!5811410))

(assert (=> b!4822994 m!5811648))

(assert (=> b!4822994 m!5811648))

(declare-fun m!5811652 () Bool)

(assert (=> b!4822994 m!5811652))

(assert (=> b!4822992 m!5811410))

(assert (=> b!4822992 m!5811648))

(assert (=> b!4822992 m!5811648))

(assert (=> b!4822992 m!5811652))

(assert (=> b!4822834 d!1544500))

(declare-fun bs!1162700 () Bool)

(declare-fun d!1544502 () Bool)

(assert (= bs!1162700 (and d!1544502 start!500032)))

(declare-fun lambda!236031 () Int)

(assert (=> bs!1162700 (= lambda!236031 lambda!235948)))

(declare-fun bs!1162701 () Bool)

(assert (= bs!1162701 (and d!1544502 d!1544460)))

(assert (=> bs!1162701 (not (= lambda!236031 lambda!235955))))

(declare-fun bs!1162702 () Bool)

(assert (= bs!1162702 (and d!1544502 d!1544496)))

(assert (=> bs!1162702 (= lambda!236031 lambda!236028)))

(declare-fun lt!1971094 () ListMap!6841)

(assert (=> d!1544502 (invariantList!1805 (toList!7464 lt!1971094))))

(declare-fun e!3013496 () ListMap!6841)

(assert (=> d!1544502 (= lt!1971094 e!3013496)))

(declare-fun c!821819 () Bool)

(assert (=> d!1544502 (= c!821819 ((_ is Cons!54949) (t!362569 (toList!7463 lm!2280))))))

(assert (=> d!1544502 (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!236031)))

(assert (=> d!1544502 (= (extractMap!2672 (t!362569 (toList!7463 lm!2280))) lt!1971094)))

(declare-fun b!4823002 () Bool)

(assert (=> b!4823002 (= e!3013496 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))))))

(declare-fun b!4823003 () Bool)

(assert (=> b!4823003 (= e!3013496 (ListMap!6842 Nil!54948))))

(assert (= (and d!1544502 c!821819) b!4823002))

(assert (= (and d!1544502 (not c!821819)) b!4823003))

(declare-fun m!5811654 () Bool)

(assert (=> d!1544502 m!5811654))

(declare-fun m!5811656 () Bool)

(assert (=> d!1544502 m!5811656))

(declare-fun m!5811658 () Bool)

(assert (=> b!4823002 m!5811658))

(assert (=> b!4823002 m!5811658))

(declare-fun m!5811660 () Bool)

(assert (=> b!4823002 m!5811660))

(assert (=> b!4822834 d!1544502))

(declare-fun d!1544504 () Bool)

(declare-fun tail!9398 (List!55073) List!55073)

(assert (=> d!1544504 (= (tail!9396 lm!2280) (ListLongMap!5980 (tail!9398 (toList!7463 lm!2280))))))

(declare-fun bs!1162703 () Bool)

(assert (= bs!1162703 d!1544504))

(declare-fun m!5811662 () Bool)

(assert (=> bs!1162703 m!5811662))

(assert (=> b!4822834 d!1544504))

(declare-fun d!1544506 () Bool)

(declare-fun res!2052927 () Bool)

(declare-fun e!3013497 () Bool)

(assert (=> d!1544506 (=> res!2052927 e!3013497)))

(assert (=> d!1544506 (= res!2052927 (and ((_ is Cons!54948) (_2!32376 (h!61383 (toList!7463 lm!2280)))) (= (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) key!5428)))))

(assert (=> d!1544506 (= (containsKey!4347 (_2!32376 (h!61383 (toList!7463 lm!2280))) key!5428) e!3013497)))

(declare-fun b!4823004 () Bool)

(declare-fun e!3013498 () Bool)

(assert (=> b!4823004 (= e!3013497 e!3013498)))

(declare-fun res!2052928 () Bool)

(assert (=> b!4823004 (=> (not res!2052928) (not e!3013498))))

(assert (=> b!4823004 (= res!2052928 ((_ is Cons!54948) (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun b!4823005 () Bool)

(assert (=> b!4823005 (= e!3013498 (containsKey!4347 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) key!5428))))

(assert (= (and d!1544506 (not res!2052927)) b!4823004))

(assert (= (and b!4823004 res!2052928) b!4823005))

(declare-fun m!5811664 () Bool)

(assert (=> b!4823005 m!5811664))

(assert (=> b!4822834 d!1544506))

(declare-fun d!1544508 () Bool)

(declare-fun res!2052933 () Bool)

(declare-fun e!3013503 () Bool)

(assert (=> d!1544508 (=> res!2052933 e!3013503)))

(assert (=> d!1544508 (= res!2052933 ((_ is Nil!54949) (toList!7463 lt!1970871)))))

(assert (=> d!1544508 (= (forall!12584 (toList!7463 lt!1970871) lambda!235948) e!3013503)))

(declare-fun b!4823010 () Bool)

(declare-fun e!3013504 () Bool)

(assert (=> b!4823010 (= e!3013503 e!3013504)))

(declare-fun res!2052934 () Bool)

(assert (=> b!4823010 (=> (not res!2052934) (not e!3013504))))

(declare-fun dynLambda!22202 (Int tuple2!58164) Bool)

(assert (=> b!4823010 (= res!2052934 (dynLambda!22202 lambda!235948 (h!61383 (toList!7463 lt!1970871))))))

(declare-fun b!4823011 () Bool)

(assert (=> b!4823011 (= e!3013504 (forall!12584 (t!362569 (toList!7463 lt!1970871)) lambda!235948))))

(assert (= (and d!1544508 (not res!2052933)) b!4823010))

(assert (= (and b!4823010 res!2052934) b!4823011))

(declare-fun b_lambda!189331 () Bool)

(assert (=> (not b_lambda!189331) (not b!4823010)))

(declare-fun m!5811666 () Bool)

(assert (=> b!4823010 m!5811666))

(declare-fun m!5811668 () Bool)

(assert (=> b!4823011 m!5811668))

(assert (=> b!4822834 d!1544508))

(declare-fun bs!1162704 () Bool)

(declare-fun d!1544510 () Bool)

(assert (= bs!1162704 (and d!1544510 start!500032)))

(declare-fun lambda!236032 () Int)

(assert (=> bs!1162704 (not (= lambda!236032 lambda!235948))))

(declare-fun bs!1162705 () Bool)

(assert (= bs!1162705 (and d!1544510 d!1544460)))

(assert (=> bs!1162705 (= lambda!236032 lambda!235955)))

(declare-fun bs!1162706 () Bool)

(assert (= bs!1162706 (and d!1544510 d!1544496)))

(assert (=> bs!1162706 (not (= lambda!236032 lambda!236028))))

(declare-fun bs!1162707 () Bool)

(assert (= bs!1162707 (and d!1544510 d!1544502)))

(assert (=> bs!1162707 (not (= lambda!236032 lambda!236031))))

(assert (=> d!1544510 true))

(assert (=> d!1544510 (= (allKeysSameHashInMap!2574 lt!1970871 hashF!1509) (forall!12584 (toList!7463 lt!1970871) lambda!236032))))

(declare-fun bs!1162708 () Bool)

(assert (= bs!1162708 d!1544510))

(declare-fun m!5811670 () Bool)

(assert (=> bs!1162708 m!5811670))

(assert (=> b!4822833 d!1544510))

(declare-fun d!1544512 () Bool)

(declare-fun res!2052935 () Bool)

(declare-fun e!3013505 () Bool)

(assert (=> d!1544512 (=> res!2052935 e!3013505)))

(assert (=> d!1544512 (= res!2052935 ((_ is Nil!54949) (toList!7463 lm!2280)))))

(assert (=> d!1544512 (= (forall!12584 (toList!7463 lm!2280) lambda!235948) e!3013505)))

(declare-fun b!4823012 () Bool)

(declare-fun e!3013506 () Bool)

(assert (=> b!4823012 (= e!3013505 e!3013506)))

(declare-fun res!2052936 () Bool)

(assert (=> b!4823012 (=> (not res!2052936) (not e!3013506))))

(assert (=> b!4823012 (= res!2052936 (dynLambda!22202 lambda!235948 (h!61383 (toList!7463 lm!2280))))))

(declare-fun b!4823013 () Bool)

(assert (=> b!4823013 (= e!3013506 (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!235948))))

(assert (= (and d!1544512 (not res!2052935)) b!4823012))

(assert (= (and b!4823012 res!2052936) b!4823013))

(declare-fun b_lambda!189333 () Bool)

(assert (=> (not b_lambda!189333) (not b!4823012)))

(declare-fun m!5811672 () Bool)

(assert (=> b!4823012 m!5811672))

(declare-fun m!5811674 () Bool)

(assert (=> b!4823013 m!5811674))

(assert (=> start!500032 d!1544512))

(declare-fun d!1544514 () Bool)

(declare-fun isStrictlySorted!978 (List!55073) Bool)

(assert (=> d!1544514 (= (inv!70534 lm!2280) (isStrictlySorted!978 (toList!7463 lm!2280)))))

(declare-fun bs!1162709 () Bool)

(assert (= bs!1162709 d!1544514))

(declare-fun m!5811676 () Bool)

(assert (=> bs!1162709 m!5811676))

(assert (=> start!500032 d!1544514))

(declare-fun d!1544516 () Bool)

(declare-fun res!2052937 () Bool)

(declare-fun e!3013507 () Bool)

(assert (=> d!1544516 (=> res!2052937 e!3013507)))

(assert (=> d!1544516 (= res!2052937 (and ((_ is Cons!54948) (apply!13345 lm!2280 lt!1970870)) (= (_1!32375 (h!61382 (apply!13345 lm!2280 lt!1970870))) key!5428)))))

(assert (=> d!1544516 (= (containsKey!4347 (apply!13345 lm!2280 lt!1970870) key!5428) e!3013507)))

(declare-fun b!4823014 () Bool)

(declare-fun e!3013508 () Bool)

(assert (=> b!4823014 (= e!3013507 e!3013508)))

(declare-fun res!2052938 () Bool)

(assert (=> b!4823014 (=> (not res!2052938) (not e!3013508))))

(assert (=> b!4823014 (= res!2052938 ((_ is Cons!54948) (apply!13345 lm!2280 lt!1970870)))))

(declare-fun b!4823015 () Bool)

(assert (=> b!4823015 (= e!3013508 (containsKey!4347 (t!362568 (apply!13345 lm!2280 lt!1970870)) key!5428))))

(assert (= (and d!1544516 (not res!2052937)) b!4823014))

(assert (= (and b!4823014 res!2052938) b!4823015))

(declare-fun m!5811678 () Bool)

(assert (=> b!4823015 m!5811678))

(assert (=> b!4822832 d!1544516))

(declare-fun d!1544518 () Bool)

(assert (=> d!1544518 (= (apply!13345 lm!2280 lt!1970870) (get!18812 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870)))))

(declare-fun bs!1162710 () Bool)

(assert (= bs!1162710 d!1544518))

(declare-fun m!5811680 () Bool)

(assert (=> bs!1162710 m!5811680))

(assert (=> bs!1162710 m!5811680))

(declare-fun m!5811682 () Bool)

(assert (=> bs!1162710 m!5811682))

(assert (=> b!4822832 d!1544518))

(declare-fun d!1544520 () Bool)

(declare-fun e!3013514 () Bool)

(assert (=> d!1544520 e!3013514))

(declare-fun res!2052941 () Bool)

(assert (=> d!1544520 (=> res!2052941 e!3013514)))

(declare-fun lt!1971103 () Bool)

(assert (=> d!1544520 (= res!2052941 (not lt!1971103))))

(declare-fun lt!1971106 () Bool)

(assert (=> d!1544520 (= lt!1971103 lt!1971106)))

(declare-fun lt!1971105 () Unit!142607)

(declare-fun e!3013513 () Unit!142607)

(assert (=> d!1544520 (= lt!1971105 e!3013513)))

(declare-fun c!821822 () Bool)

(assert (=> d!1544520 (= c!821822 lt!1971106)))

(declare-fun containsKey!4351 (List!55073 (_ BitVec 64)) Bool)

(assert (=> d!1544520 (= lt!1971106 (containsKey!4351 (toList!7463 lm!2280) lt!1970870))))

(assert (=> d!1544520 (= (contains!18749 lm!2280 lt!1970870) lt!1971103)))

(declare-fun b!4823022 () Bool)

(declare-fun lt!1971104 () Unit!142607)

(assert (=> b!4823022 (= e!3013513 lt!1971104)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2393 (List!55073 (_ BitVec 64)) Unit!142607)

(assert (=> b!4823022 (= lt!1971104 (lemmaContainsKeyImpliesGetValueByKeyDefined!2393 (toList!7463 lm!2280) lt!1970870))))

(declare-fun isDefined!10596 (Option!13481) Bool)

(assert (=> b!4823022 (isDefined!10596 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870))))

(declare-fun b!4823023 () Bool)

(declare-fun Unit!142640 () Unit!142607)

(assert (=> b!4823023 (= e!3013513 Unit!142640)))

(declare-fun b!4823024 () Bool)

(assert (=> b!4823024 (= e!3013514 (isDefined!10596 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870)))))

(assert (= (and d!1544520 c!821822) b!4823022))

(assert (= (and d!1544520 (not c!821822)) b!4823023))

(assert (= (and d!1544520 (not res!2052941)) b!4823024))

(declare-fun m!5811684 () Bool)

(assert (=> d!1544520 m!5811684))

(declare-fun m!5811686 () Bool)

(assert (=> b!4823022 m!5811686))

(assert (=> b!4823022 m!5811680))

(assert (=> b!4823022 m!5811680))

(declare-fun m!5811688 () Bool)

(assert (=> b!4823022 m!5811688))

(assert (=> b!4823024 m!5811680))

(assert (=> b!4823024 m!5811680))

(assert (=> b!4823024 m!5811688))

(assert (=> b!4822837 d!1544520))

(declare-fun d!1544522 () Bool)

(declare-fun hash!5372 (Hashable!7258 K!16634) (_ BitVec 64))

(assert (=> d!1544522 (= (hash!5368 hashF!1509 key!5428) (hash!5372 hashF!1509 key!5428))))

(declare-fun bs!1162711 () Bool)

(assert (= bs!1162711 d!1544522))

(declare-fun m!5811690 () Bool)

(assert (=> bs!1162711 m!5811690))

(assert (=> b!4822837 d!1544522))

(declare-fun b!4823029 () Bool)

(declare-fun e!3013517 () Bool)

(declare-fun tp!1362485 () Bool)

(declare-fun tp!1362486 () Bool)

(assert (=> b!4823029 (= e!3013517 (and tp!1362485 tp!1362486))))

(assert (=> b!4822830 (= tp!1362474 e!3013517)))

(assert (= (and b!4822830 ((_ is Cons!54949) (toList!7463 lm!2280))) b!4823029))

(declare-fun b_lambda!189335 () Bool)

(assert (= b_lambda!189333 (or start!500032 b_lambda!189335)))

(declare-fun bs!1162712 () Bool)

(declare-fun d!1544524 () Bool)

(assert (= bs!1162712 (and d!1544524 start!500032)))

(assert (=> bs!1162712 (= (dynLambda!22202 lambda!235948 (h!61383 (toList!7463 lm!2280))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(assert (=> bs!1162712 m!5811618))

(assert (=> b!4823012 d!1544524))

(declare-fun b_lambda!189337 () Bool)

(assert (= b_lambda!189331 (or start!500032 b_lambda!189337)))

(declare-fun bs!1162713 () Bool)

(declare-fun d!1544526 () Bool)

(assert (= bs!1162713 (and d!1544526 start!500032)))

(assert (=> bs!1162713 (= (dynLambda!22202 lambda!235948 (h!61383 (toList!7463 lt!1970871))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lt!1970871)))))))

(declare-fun m!5811692 () Bool)

(assert (=> bs!1162713 m!5811692))

(assert (=> b!4823010 d!1544526))

(check-sat (not b!4823013) (not b!4822996) (not b!4822982) (not b_lambda!189335) (not b!4823024) (not d!1544510) (not d!1544518) (not d!1544460) (not d!1544502) (not b!4822983) (not bm!336217) (not b!4822899) (not b!4822900) (not bs!1162713) (not d!1544520) (not d!1544514) tp_is_empty!34427 (not d!1544462) (not b!4822981) (not b!4823005) (not d!1544466) (not b!4822997) (not d!1544444) (not b!4822993) (not bs!1162712) (not b!4822988) (not b!4823011) (not b!4823022) (not bm!336219) (not d!1544496) (not b!4822989) (not b!4823029) (not b!4822897) (not b!4822898) (not b!4822902) (not d!1544504) (not bm!336216) (not b!4823002) (not bm!336199) (not b!4822979) (not b!4822894) (not d!1544500) (not b!4822995) (not b!4822910) (not bm!336218) (not b_lambda!189337) (not b!4823015) (not d!1544498) (not d!1544522) (not b!4822901) (not b!4822994) (not b!4822992))
(check-sat)
(get-model)

(declare-fun d!1544538 () Bool)

(declare-fun e!3013559 () Bool)

(assert (=> d!1544538 (= (contains!18748 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873) key!5428) e!3013559)))

(declare-fun res!2052985 () Bool)

(assert (=> d!1544538 (=> res!2052985 e!3013559)))

(assert (=> d!1544538 (= res!2052985 (containsKey!4347 (_2!32376 (h!61383 (toList!7463 lm!2280))) key!5428))))

(assert (=> d!1544538 true))

(declare-fun _$29!790 () Unit!142607)

(assert (=> d!1544538 (= (choose!35051 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873 key!5428) _$29!790)))

(declare-fun b!4823099 () Bool)

(assert (=> b!4823099 (= e!3013559 (contains!18748 lt!1970873 key!5428))))

(assert (= (and d!1544538 (not res!2052985)) b!4823099))

(assert (=> d!1544538 m!5811410))

(assert (=> d!1544538 m!5811410))

(assert (=> d!1544538 m!5811412))

(assert (=> d!1544538 m!5811406))

(assert (=> b!4823099 m!5811428))

(assert (=> d!1544498 d!1544538))

(assert (=> d!1544498 d!1544506))

(assert (=> d!1544498 d!1544466))

(assert (=> d!1544498 d!1544500))

(declare-fun d!1544552 () Bool)

(declare-fun res!2052990 () Bool)

(declare-fun e!3013564 () Bool)

(assert (=> d!1544552 (=> res!2052990 e!3013564)))

(assert (=> d!1544552 (= res!2052990 (not ((_ is Cons!54948) (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> d!1544552 (= (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lm!2280)))) e!3013564)))

(declare-fun b!4823104 () Bool)

(declare-fun e!3013565 () Bool)

(assert (=> b!4823104 (= e!3013564 e!3013565)))

(declare-fun res!2052991 () Bool)

(assert (=> b!4823104 (=> (not res!2052991) (not e!3013565))))

(assert (=> b!4823104 (= res!2052991 (not (containsKey!4347 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823105 () Bool)

(assert (=> b!4823105 (= e!3013565 (noDuplicateKeys!2444 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (= (and d!1544552 (not res!2052990)) b!4823104))

(assert (= (and b!4823104 res!2052991) b!4823105))

(declare-fun m!5811804 () Bool)

(assert (=> b!4823104 m!5811804))

(declare-fun m!5811806 () Bool)

(assert (=> b!4823105 m!5811806))

(assert (=> d!1544498 d!1544552))

(assert (=> d!1544496 d!1544464))

(assert (=> d!1544496 d!1544462))

(declare-fun d!1544556 () Bool)

(assert (=> d!1544556 (not (containsKey!4347 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))) key!5428))))

(assert (=> d!1544556 true))

(declare-fun _$39!415 () Unit!142607)

(assert (=> d!1544556 (= (choose!35050 lm!2280 key!5428 (_1!32376 (h!61383 (toList!7463 lm!2280))) hashF!1509) _$39!415)))

(declare-fun bs!1162748 () Bool)

(assert (= bs!1162748 d!1544556))

(assert (=> bs!1162748 m!5811404))

(assert (=> bs!1162748 m!5811404))

(assert (=> bs!1162748 m!5811408))

(assert (=> d!1544496 d!1544556))

(declare-fun d!1544560 () Bool)

(declare-fun res!2052992 () Bool)

(declare-fun e!3013566 () Bool)

(assert (=> d!1544560 (=> res!2052992 e!3013566)))

(assert (=> d!1544560 (= res!2052992 ((_ is Nil!54949) (toList!7463 lm!2280)))))

(assert (=> d!1544560 (= (forall!12584 (toList!7463 lm!2280) lambda!236028) e!3013566)))

(declare-fun b!4823106 () Bool)

(declare-fun e!3013567 () Bool)

(assert (=> b!4823106 (= e!3013566 e!3013567)))

(declare-fun res!2052993 () Bool)

(assert (=> b!4823106 (=> (not res!2052993) (not e!3013567))))

(assert (=> b!4823106 (= res!2052993 (dynLambda!22202 lambda!236028 (h!61383 (toList!7463 lm!2280))))))

(declare-fun b!4823109 () Bool)

(assert (=> b!4823109 (= e!3013567 (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!236028))))

(assert (= (and d!1544560 (not res!2052992)) b!4823106))

(assert (= (and b!4823106 res!2052993) b!4823109))

(declare-fun b_lambda!189339 () Bool)

(assert (=> (not b_lambda!189339) (not b!4823106)))

(declare-fun m!5811810 () Bool)

(assert (=> b!4823106 m!5811810))

(declare-fun m!5811812 () Bool)

(assert (=> b!4823109 m!5811812))

(assert (=> d!1544496 d!1544560))

(assert (=> b!4822988 d!1544444))

(declare-fun d!1544562 () Bool)

(declare-fun lt!1971167 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9813 (List!55075) (InoxSet K!16634))

(assert (=> d!1544562 (= lt!1971167 (select (content!9813 e!3013422) key!5428))))

(declare-fun e!3013579 () Bool)

(assert (=> d!1544562 (= lt!1971167 e!3013579)))

(declare-fun res!2052999 () Bool)

(assert (=> d!1544562 (=> (not res!2052999) (not e!3013579))))

(assert (=> d!1544562 (= res!2052999 ((_ is Cons!54951) e!3013422))))

(assert (=> d!1544562 (= (contains!18751 e!3013422 key!5428) lt!1971167)))

(declare-fun b!4823124 () Bool)

(declare-fun e!3013578 () Bool)

(assert (=> b!4823124 (= e!3013579 e!3013578)))

(declare-fun res!2052998 () Bool)

(assert (=> b!4823124 (=> res!2052998 e!3013578)))

(assert (=> b!4823124 (= res!2052998 (= (h!61385 e!3013422) key!5428))))

(declare-fun b!4823125 () Bool)

(assert (=> b!4823125 (= e!3013578 (contains!18751 (t!362571 e!3013422) key!5428))))

(assert (= (and d!1544562 res!2052999) b!4823124))

(assert (= (and b!4823124 (not res!2052998)) b!4823125))

(declare-fun m!5811816 () Bool)

(assert (=> d!1544562 m!5811816))

(declare-fun m!5811818 () Bool)

(assert (=> d!1544562 m!5811818))

(declare-fun m!5811820 () Bool)

(assert (=> b!4823125 m!5811820))

(assert (=> bm!336199 d!1544562))

(declare-fun d!1544566 () Bool)

(declare-fun choose!35052 (Hashable!7258 K!16634) (_ BitVec 64))

(assert (=> d!1544566 (= (hash!5372 hashF!1509 key!5428) (choose!35052 hashF!1509 key!5428))))

(declare-fun bs!1162749 () Bool)

(assert (= bs!1162749 d!1544566))

(declare-fun m!5811822 () Bool)

(assert (=> bs!1162749 m!5811822))

(assert (=> d!1544522 d!1544566))

(declare-fun b!4823147 () Bool)

(assert (=> b!4823147 true))

(declare-fun d!1544568 () Bool)

(declare-fun e!3013596 () Bool)

(assert (=> d!1544568 e!3013596))

(declare-fun res!2053022 () Bool)

(assert (=> d!1544568 (=> (not res!2053022) (not e!3013596))))

(declare-fun lt!1971174 () List!55075)

(declare-fun noDuplicate!954 (List!55075) Bool)

(assert (=> d!1544568 (= res!2053022 (noDuplicate!954 lt!1971174))))

(assert (=> d!1544568 (= lt!1971174 (getKeysList!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))

(assert (=> d!1544568 (= (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) lt!1971174)))

(declare-fun b!4823146 () Bool)

(declare-fun res!2053020 () Bool)

(assert (=> b!4823146 (=> (not res!2053020) (not e!3013596))))

(declare-fun length!764 (List!55075) Int)

(declare-fun length!765 (List!55072) Int)

(assert (=> b!4823146 (= res!2053020 (= (length!764 lt!1971174) (length!765 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))))

(declare-fun res!2053021 () Bool)

(assert (=> b!4823147 (=> (not res!2053021) (not e!3013596))))

(declare-fun lambda!236063 () Int)

(declare-fun forall!12588 (List!55075 Int) Bool)

(assert (=> b!4823147 (= res!2053021 (forall!12588 lt!1971174 lambda!236063))))

(declare-fun lambda!236064 () Int)

(declare-fun b!4823148 () Bool)

(declare-fun map!12569 (List!55072 Int) List!55075)

(assert (=> b!4823148 (= e!3013596 (= (content!9813 lt!1971174) (content!9813 (map!12569 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) lambda!236064))))))

(assert (= (and d!1544568 res!2053022) b!4823146))

(assert (= (and b!4823146 res!2053020) b!4823147))

(assert (= (and b!4823147 res!2053021) b!4823148))

(declare-fun m!5811842 () Bool)

(assert (=> d!1544568 m!5811842))

(assert (=> d!1544568 m!5811650))

(declare-fun m!5811844 () Bool)

(assert (=> b!4823146 m!5811844))

(declare-fun m!5811846 () Bool)

(assert (=> b!4823146 m!5811846))

(declare-fun m!5811848 () Bool)

(assert (=> b!4823147 m!5811848))

(declare-fun m!5811850 () Bool)

(assert (=> b!4823148 m!5811850))

(declare-fun m!5811852 () Bool)

(assert (=> b!4823148 m!5811852))

(assert (=> b!4823148 m!5811852))

(declare-fun m!5811854 () Bool)

(assert (=> b!4823148 m!5811854))

(assert (=> b!4822989 d!1544568))

(declare-fun d!1544582 () Bool)

(declare-fun res!2053029 () Bool)

(declare-fun e!3013603 () Bool)

(assert (=> d!1544582 (=> res!2053029 e!3013603)))

(assert (=> d!1544582 (= res!2053029 (and ((_ is Cons!54948) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (= (_1!32375 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) key!5428)))))

(assert (=> d!1544582 (= (containsKey!4347 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) key!5428) e!3013603)))

(declare-fun b!4823157 () Bool)

(declare-fun e!3013604 () Bool)

(assert (=> b!4823157 (= e!3013603 e!3013604)))

(declare-fun res!2053030 () Bool)

(assert (=> b!4823157 (=> (not res!2053030) (not e!3013604))))

(assert (=> b!4823157 (= res!2053030 ((_ is Cons!54948) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun b!4823158 () Bool)

(assert (=> b!4823158 (= e!3013604 (containsKey!4347 (t!362568 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))) key!5428))))

(assert (= (and d!1544582 (not res!2053029)) b!4823157))

(assert (= (and b!4823157 res!2053030) b!4823158))

(declare-fun m!5811860 () Bool)

(assert (=> b!4823158 m!5811860))

(assert (=> b!4823005 d!1544582))

(declare-fun d!1544586 () Bool)

(declare-fun isEmpty!29639 (Option!13480) Bool)

(assert (=> d!1544586 (= (isDefined!10595 (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428)) (not (isEmpty!29639 (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))))

(declare-fun bs!1162751 () Bool)

(assert (= bs!1162751 d!1544586))

(assert (=> bs!1162751 m!5811634))

(declare-fun m!5811862 () Bool)

(assert (=> bs!1162751 m!5811862))

(assert (=> b!4822996 d!1544586))

(declare-fun b!4823170 () Bool)

(declare-fun e!3013612 () Option!13480)

(assert (=> b!4823170 (= e!3013612 (Some!13479 (_2!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))))

(declare-fun b!4823172 () Bool)

(declare-fun e!3013613 () Option!13480)

(assert (=> b!4823172 (= e!3013613 (getValueByKey!2607 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428))))

(declare-fun c!821844 () Bool)

(declare-fun d!1544588 () Bool)

(assert (=> d!1544588 (= c!821844 (and ((_ is Cons!54948) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) key!5428)))))

(assert (=> d!1544588 (= (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) e!3013612)))

(declare-fun b!4823173 () Bool)

(assert (=> b!4823173 (= e!3013613 None!13479)))

(declare-fun b!4823171 () Bool)

(assert (=> b!4823171 (= e!3013612 e!3013613)))

(declare-fun c!821845 () Bool)

(assert (=> b!4823171 (= c!821845 (and ((_ is Cons!54948) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (not (= (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) key!5428))))))

(assert (= (and d!1544588 c!821844) b!4823170))

(assert (= (and d!1544588 (not c!821844)) b!4823171))

(assert (= (and b!4823171 c!821845) b!4823172))

(assert (= (and b!4823171 (not c!821845)) b!4823173))

(declare-fun m!5811868 () Bool)

(assert (=> b!4823172 m!5811868))

(assert (=> b!4822996 d!1544588))

(declare-fun d!1544594 () Bool)

(declare-fun res!2053038 () Bool)

(declare-fun e!3013622 () Bool)

(assert (=> d!1544594 (=> res!2053038 e!3013622)))

(assert (=> d!1544594 (= res!2053038 ((_ is Nil!54948) (ite c!821813 (toList!7464 lt!1970873) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> d!1544594 (= (forall!12586 (ite c!821813 (toList!7464 lt!1970873) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (ite c!821813 lambda!236022 lambda!236024)) e!3013622)))

(declare-fun b!4823186 () Bool)

(declare-fun e!3013623 () Bool)

(assert (=> b!4823186 (= e!3013622 e!3013623)))

(declare-fun res!2053039 () Bool)

(assert (=> b!4823186 (=> (not res!2053039) (not e!3013623))))

(declare-fun dynLambda!22203 (Int tuple2!58162) Bool)

(assert (=> b!4823186 (= res!2053039 (dynLambda!22203 (ite c!821813 lambda!236022 lambda!236024) (h!61382 (ite c!821813 (toList!7464 lt!1970873) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823187 () Bool)

(assert (=> b!4823187 (= e!3013623 (forall!12586 (t!362568 (ite c!821813 (toList!7464 lt!1970873) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (ite c!821813 lambda!236022 lambda!236024)))))

(assert (= (and d!1544594 (not res!2053038)) b!4823186))

(assert (= (and b!4823186 res!2053039) b!4823187))

(declare-fun b_lambda!189343 () Bool)

(assert (=> (not b_lambda!189343) (not b!4823186)))

(declare-fun m!5811870 () Bool)

(assert (=> b!4823186 m!5811870))

(declare-fun m!5811872 () Bool)

(assert (=> b!4823187 m!5811872))

(assert (=> bm!336218 d!1544594))

(declare-fun lt!1971178 () Bool)

(declare-fun d!1544596 () Bool)

(assert (=> d!1544596 (= lt!1971178 (select (content!9813 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428))))

(declare-fun e!3013625 () Bool)

(assert (=> d!1544596 (= lt!1971178 e!3013625)))

(declare-fun res!2053041 () Bool)

(assert (=> d!1544596 (=> (not res!2053041) (not e!3013625))))

(assert (=> d!1544596 (= res!2053041 ((_ is Cons!54951) (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))

(assert (=> d!1544596 (= (contains!18751 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) lt!1971178)))

(declare-fun b!4823188 () Bool)

(declare-fun e!3013624 () Bool)

(assert (=> b!4823188 (= e!3013625 e!3013624)))

(declare-fun res!2053040 () Bool)

(assert (=> b!4823188 (=> res!2053040 e!3013624)))

(assert (=> b!4823188 (= res!2053040 (= (h!61385 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428))))

(declare-fun b!4823189 () Bool)

(assert (=> b!4823189 (= e!3013624 (contains!18751 (t!362571 (keys!20211 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428))))

(assert (= (and d!1544596 res!2053041) b!4823188))

(assert (= (and b!4823188 (not res!2053040)) b!4823189))

(assert (=> d!1544596 m!5811648))

(declare-fun m!5811874 () Bool)

(assert (=> d!1544596 m!5811874))

(declare-fun m!5811876 () Bool)

(assert (=> d!1544596 m!5811876))

(declare-fun m!5811878 () Bool)

(assert (=> b!4823189 m!5811878))

(assert (=> b!4822994 d!1544596))

(assert (=> b!4822994 d!1544568))

(declare-fun d!1544598 () Bool)

(declare-fun res!2053042 () Bool)

(declare-fun e!3013628 () Bool)

(assert (=> d!1544598 (=> res!2053042 e!3013628)))

(assert (=> d!1544598 (= res!2053042 ((_ is Nil!54949) (t!362569 (toList!7463 lm!2280))))))

(assert (=> d!1544598 (= (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!235948) e!3013628)))

(declare-fun b!4823194 () Bool)

(declare-fun e!3013629 () Bool)

(assert (=> b!4823194 (= e!3013628 e!3013629)))

(declare-fun res!2053043 () Bool)

(assert (=> b!4823194 (=> (not res!2053043) (not e!3013629))))

(assert (=> b!4823194 (= res!2053043 (dynLambda!22202 lambda!235948 (h!61383 (t!362569 (toList!7463 lm!2280)))))))

(declare-fun b!4823195 () Bool)

(assert (=> b!4823195 (= e!3013629 (forall!12584 (t!362569 (t!362569 (toList!7463 lm!2280))) lambda!235948))))

(assert (= (and d!1544598 (not res!2053042)) b!4823194))

(assert (= (and b!4823194 res!2053043) b!4823195))

(declare-fun b_lambda!189345 () Bool)

(assert (=> (not b_lambda!189345) (not b!4823194)))

(declare-fun m!5811882 () Bool)

(assert (=> b!4823194 m!5811882))

(declare-fun m!5811884 () Bool)

(assert (=> b!4823195 m!5811884))

(assert (=> b!4823013 d!1544598))

(assert (=> b!4822992 d!1544596))

(assert (=> b!4822992 d!1544568))

(declare-fun d!1544602 () Bool)

(declare-fun noDuplicatedKeys!471 (List!55072) Bool)

(assert (=> d!1544602 (= (invariantList!1805 (toList!7464 lt!1971058)) (noDuplicatedKeys!471 (toList!7464 lt!1971058)))))

(declare-fun bs!1162753 () Bool)

(assert (= bs!1162753 d!1544602))

(declare-fun m!5811890 () Bool)

(assert (=> bs!1162753 m!5811890))

(assert (=> b!4822979 d!1544602))

(declare-fun d!1544608 () Bool)

(declare-fun res!2053054 () Bool)

(declare-fun e!3013642 () Bool)

(assert (=> d!1544608 (=> res!2053054 e!3013642)))

(assert (=> d!1544608 (= res!2053054 (or ((_ is Nil!54949) (toList!7463 lm!2280)) ((_ is Nil!54949) (t!362569 (toList!7463 lm!2280)))))))

(assert (=> d!1544608 (= (isStrictlySorted!978 (toList!7463 lm!2280)) e!3013642)))

(declare-fun b!4823210 () Bool)

(declare-fun e!3013643 () Bool)

(assert (=> b!4823210 (= e!3013642 e!3013643)))

(declare-fun res!2053055 () Bool)

(assert (=> b!4823210 (=> (not res!2053055) (not e!3013643))))

(assert (=> b!4823210 (= res!2053055 (bvslt (_1!32376 (h!61383 (toList!7463 lm!2280))) (_1!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))

(declare-fun b!4823211 () Bool)

(assert (=> b!4823211 (= e!3013643 (isStrictlySorted!978 (t!362569 (toList!7463 lm!2280))))))

(assert (= (and d!1544608 (not res!2053054)) b!4823210))

(assert (= (and b!4823210 res!2053055) b!4823211))

(declare-fun m!5811906 () Bool)

(assert (=> b!4823211 m!5811906))

(assert (=> d!1544514 d!1544608))

(declare-fun d!1544622 () Bool)

(declare-fun res!2053056 () Bool)

(declare-fun e!3013644 () Bool)

(assert (=> d!1544622 (=> res!2053056 e!3013644)))

(assert (=> d!1544622 (= res!2053056 (not ((_ is Cons!54948) (_2!32376 (h!61383 (toList!7463 lt!1970871))))))))

(assert (=> d!1544622 (= (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lt!1970871)))) e!3013644)))

(declare-fun b!4823212 () Bool)

(declare-fun e!3013645 () Bool)

(assert (=> b!4823212 (= e!3013644 e!3013645)))

(declare-fun res!2053057 () Bool)

(assert (=> b!4823212 (=> (not res!2053057) (not e!3013645))))

(assert (=> b!4823212 (= res!2053057 (not (containsKey!4347 (t!362568 (_2!32376 (h!61383 (toList!7463 lt!1970871)))) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lt!1970871))))))))))

(declare-fun b!4823213 () Bool)

(assert (=> b!4823213 (= e!3013645 (noDuplicateKeys!2444 (t!362568 (_2!32376 (h!61383 (toList!7463 lt!1970871))))))))

(assert (= (and d!1544622 (not res!2053056)) b!4823212))

(assert (= (and b!4823212 res!2053057) b!4823213))

(declare-fun m!5811912 () Bool)

(assert (=> b!4823212 m!5811912))

(declare-fun m!5811914 () Bool)

(assert (=> b!4823213 m!5811914))

(assert (=> bs!1162713 d!1544622))

(declare-fun d!1544626 () Bool)

(assert (=> d!1544626 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1970873) key!5428))))

(declare-fun lt!1971183 () Unit!142607)

(declare-fun choose!35056 (List!55072 K!16634) Unit!142607)

(assert (=> d!1544626 (= lt!1971183 (choose!35056 (toList!7464 lt!1970873) key!5428))))

(assert (=> d!1544626 (invariantList!1805 (toList!7464 lt!1970873))))

(assert (=> d!1544626 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 lt!1970873) key!5428) lt!1971183)))

(declare-fun bs!1162757 () Bool)

(assert (= bs!1162757 d!1544626))

(assert (=> bs!1162757 m!5811474))

(assert (=> bs!1162757 m!5811474))

(assert (=> bs!1162757 m!5811476))

(declare-fun m!5811916 () Bool)

(assert (=> bs!1162757 m!5811916))

(declare-fun m!5811918 () Bool)

(assert (=> bs!1162757 m!5811918))

(assert (=> b!4822902 d!1544626))

(declare-fun d!1544628 () Bool)

(assert (=> d!1544628 (= (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1970873) key!5428)) (not (isEmpty!29639 (getValueByKey!2607 (toList!7464 lt!1970873) key!5428))))))

(declare-fun bs!1162758 () Bool)

(assert (= bs!1162758 d!1544628))

(assert (=> bs!1162758 m!5811474))

(declare-fun m!5811920 () Bool)

(assert (=> bs!1162758 m!5811920))

(assert (=> b!4822902 d!1544628))

(declare-fun b!4823214 () Bool)

(declare-fun e!3013646 () Option!13480)

(assert (=> b!4823214 (= e!3013646 (Some!13479 (_2!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun b!4823216 () Bool)

(declare-fun e!3013647 () Option!13480)

(assert (=> b!4823216 (= e!3013647 (getValueByKey!2607 (t!362568 (toList!7464 lt!1970873)) key!5428))))

(declare-fun d!1544630 () Bool)

(declare-fun c!821854 () Bool)

(assert (=> d!1544630 (= c!821854 (and ((_ is Cons!54948) (toList!7464 lt!1970873)) (= (_1!32375 (h!61382 (toList!7464 lt!1970873))) key!5428)))))

(assert (=> d!1544630 (= (getValueByKey!2607 (toList!7464 lt!1970873) key!5428) e!3013646)))

(declare-fun b!4823217 () Bool)

(assert (=> b!4823217 (= e!3013647 None!13479)))

(declare-fun b!4823215 () Bool)

(assert (=> b!4823215 (= e!3013646 e!3013647)))

(declare-fun c!821855 () Bool)

(assert (=> b!4823215 (= c!821855 (and ((_ is Cons!54948) (toList!7464 lt!1970873)) (not (= (_1!32375 (h!61382 (toList!7464 lt!1970873))) key!5428))))))

(assert (= (and d!1544630 c!821854) b!4823214))

(assert (= (and d!1544630 (not c!821854)) b!4823215))

(assert (= (and b!4823215 c!821855) b!4823216))

(assert (= (and b!4823215 (not c!821855)) b!4823217))

(declare-fun m!5811922 () Bool)

(assert (=> b!4823216 m!5811922))

(assert (=> b!4822902 d!1544630))

(declare-fun d!1544632 () Bool)

(assert (=> d!1544632 (contains!18751 (getKeysList!1152 (toList!7464 lt!1970873)) key!5428)))

(declare-fun lt!1971186 () Unit!142607)

(declare-fun choose!35058 (List!55072 K!16634) Unit!142607)

(assert (=> d!1544632 (= lt!1971186 (choose!35058 (toList!7464 lt!1970873) key!5428))))

(assert (=> d!1544632 (invariantList!1805 (toList!7464 lt!1970873))))

(assert (=> d!1544632 (= (lemmaInListThenGetKeysListContains!1147 (toList!7464 lt!1970873) key!5428) lt!1971186)))

(declare-fun bs!1162759 () Bool)

(assert (= bs!1162759 d!1544632))

(assert (=> bs!1162759 m!5811490))

(assert (=> bs!1162759 m!5811490))

(declare-fun m!5811924 () Bool)

(assert (=> bs!1162759 m!5811924))

(declare-fun m!5811926 () Bool)

(assert (=> bs!1162759 m!5811926))

(assert (=> bs!1162759 m!5811918))

(assert (=> b!4822902 d!1544632))

(declare-fun d!1544634 () Bool)

(declare-fun res!2053062 () Bool)

(declare-fun e!3013652 () Bool)

(assert (=> d!1544634 (=> res!2053062 e!3013652)))

(assert (=> d!1544634 (= res!2053062 (and ((_ is Cons!54948) (toList!7464 lt!1970873)) (= (_1!32375 (h!61382 (toList!7464 lt!1970873))) key!5428)))))

(assert (=> d!1544634 (= (containsKey!4350 (toList!7464 lt!1970873) key!5428) e!3013652)))

(declare-fun b!4823222 () Bool)

(declare-fun e!3013654 () Bool)

(assert (=> b!4823222 (= e!3013652 e!3013654)))

(declare-fun res!2053063 () Bool)

(assert (=> b!4823222 (=> (not res!2053063) (not e!3013654))))

(assert (=> b!4823222 (= res!2053063 ((_ is Cons!54948) (toList!7464 lt!1970873)))))

(declare-fun b!4823223 () Bool)

(assert (=> b!4823223 (= e!3013654 (containsKey!4350 (t!362568 (toList!7464 lt!1970873)) key!5428))))

(assert (= (and d!1544634 (not res!2053062)) b!4823222))

(assert (= (and b!4823222 res!2053063) b!4823223))

(declare-fun m!5811928 () Bool)

(assert (=> b!4823223 m!5811928))

(assert (=> b!4822900 d!1544634))

(declare-fun d!1544636 () Bool)

(assert (=> d!1544636 (containsKey!4350 (toList!7464 lt!1970873) key!5428)))

(declare-fun lt!1971189 () Unit!142607)

(declare-fun choose!35059 (List!55072 K!16634) Unit!142607)

(assert (=> d!1544636 (= lt!1971189 (choose!35059 (toList!7464 lt!1970873) key!5428))))

(assert (=> d!1544636 (invariantList!1805 (toList!7464 lt!1970873))))

(assert (=> d!1544636 (= (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 lt!1970873) key!5428) lt!1971189)))

(declare-fun bs!1162761 () Bool)

(assert (= bs!1162761 d!1544636))

(assert (=> bs!1162761 m!5811478))

(declare-fun m!5811932 () Bool)

(assert (=> bs!1162761 m!5811932))

(assert (=> bs!1162761 m!5811918))

(assert (=> b!4822900 d!1544636))

(declare-fun bs!1162762 () Bool)

(declare-fun b!4823230 () Bool)

(assert (= bs!1162762 (and b!4823230 b!4822980)))

(declare-fun lambda!236065 () Int)

(assert (=> bs!1162762 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1970873) (= lambda!236065 lambda!236022))))

(declare-fun bs!1162763 () Bool)

(assert (= bs!1162763 (and b!4823230 b!4822981)))

(assert (=> bs!1162763 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1970873) (= lambda!236065 lambda!236023))))

(assert (=> bs!1162763 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971072) (= lambda!236065 lambda!236024))))

(declare-fun bs!1162764 () Bool)

(assert (= bs!1162764 (and b!4823230 d!1544466)))

(assert (=> bs!1162764 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971058) (= lambda!236065 lambda!236025))))

(assert (=> b!4823230 true))

(declare-fun bs!1162765 () Bool)

(declare-fun b!4823231 () Bool)

(assert (= bs!1162765 (and b!4823231 b!4822981)))

(declare-fun lambda!236066 () Int)

(assert (=> bs!1162765 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1970873) (= lambda!236066 lambda!236023))))

(declare-fun bs!1162767 () Bool)

(assert (= bs!1162767 (and b!4823231 b!4822980)))

(assert (=> bs!1162767 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1970873) (= lambda!236066 lambda!236022))))

(assert (=> bs!1162765 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971072) (= lambda!236066 lambda!236024))))

(declare-fun bs!1162768 () Bool)

(assert (= bs!1162768 (and b!4823231 b!4823230)))

(assert (=> bs!1162768 (= lambda!236066 lambda!236065)))

(declare-fun bs!1162769 () Bool)

(assert (= bs!1162769 (and b!4823231 d!1544466)))

(assert (=> bs!1162769 (= (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971058) (= lambda!236066 lambda!236025))))

(assert (=> b!4823231 true))

(declare-fun lt!1971205 () ListMap!6841)

(declare-fun lambda!236067 () Int)

(assert (=> bs!1162765 (= (= lt!1971205 lt!1970873) (= lambda!236067 lambda!236023))))

(assert (=> bs!1162767 (= (= lt!1971205 lt!1970873) (= lambda!236067 lambda!236022))))

(assert (=> bs!1162765 (= (= lt!1971205 lt!1971072) (= lambda!236067 lambda!236024))))

(assert (=> bs!1162768 (= (= lt!1971205 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236067 lambda!236065))))

(assert (=> b!4823231 (= (= lt!1971205 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236067 lambda!236066))))

(assert (=> bs!1162769 (= (= lt!1971205 lt!1971058) (= lambda!236067 lambda!236025))))

(assert (=> b!4823231 true))

(declare-fun bs!1162770 () Bool)

(declare-fun d!1544642 () Bool)

(assert (= bs!1162770 (and d!1544642 b!4823231)))

(declare-fun lt!1971191 () ListMap!6841)

(declare-fun lambda!236068 () Int)

(assert (=> bs!1162770 (= (= lt!1971191 lt!1971205) (= lambda!236068 lambda!236067))))

(declare-fun bs!1162771 () Bool)

(assert (= bs!1162771 (and d!1544642 b!4822981)))

(assert (=> bs!1162771 (= (= lt!1971191 lt!1970873) (= lambda!236068 lambda!236023))))

(declare-fun bs!1162772 () Bool)

(assert (= bs!1162772 (and d!1544642 b!4822980)))

(assert (=> bs!1162772 (= (= lt!1971191 lt!1970873) (= lambda!236068 lambda!236022))))

(assert (=> bs!1162771 (= (= lt!1971191 lt!1971072) (= lambda!236068 lambda!236024))))

(declare-fun bs!1162773 () Bool)

(assert (= bs!1162773 (and d!1544642 b!4823230)))

(assert (=> bs!1162773 (= (= lt!1971191 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236068 lambda!236065))))

(assert (=> bs!1162770 (= (= lt!1971191 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236068 lambda!236066))))

(declare-fun bs!1162774 () Bool)

(assert (= bs!1162774 (and d!1544642 d!1544466)))

(assert (=> bs!1162774 (= (= lt!1971191 lt!1971058) (= lambda!236068 lambda!236025))))

(assert (=> d!1544642 true))

(declare-fun bm!336223 () Bool)

(declare-fun call!336228 () Unit!142607)

(assert (=> bm!336223 (= call!336228 (lemmaContainsAllItsOwnKeys!984 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))))))

(declare-fun e!3013661 () Bool)

(assert (=> d!1544642 e!3013661))

(declare-fun res!2053070 () Bool)

(assert (=> d!1544642 (=> (not res!2053070) (not e!3013661))))

(assert (=> d!1544642 (= res!2053070 (forall!12586 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))) lambda!236068))))

(declare-fun e!3013660 () ListMap!6841)

(assert (=> d!1544642 (= lt!1971191 e!3013660)))

(declare-fun c!821856 () Bool)

(assert (=> d!1544642 (= c!821856 ((_ is Nil!54948) (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))

(assert (=> d!1544642 (noDuplicateKeys!2444 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))))

(assert (=> d!1544642 (= (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) lt!1971191)))

(declare-fun b!4823229 () Bool)

(assert (=> b!4823229 (= e!3013661 (invariantList!1805 (toList!7464 lt!1971191)))))

(declare-fun call!336230 () Bool)

(declare-fun bm!336224 () Bool)

(assert (=> bm!336224 (= call!336230 (forall!12586 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (ite c!821856 lambda!236065 lambda!236067)))))

(assert (=> b!4823230 (= e!3013660 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))))))

(declare-fun lt!1971190 () Unit!142607)

(assert (=> b!4823230 (= lt!1971190 call!336228)))

(assert (=> b!4823230 call!336230))

(declare-fun lt!1971204 () Unit!142607)

(assert (=> b!4823230 (= lt!1971204 lt!1971190)))

(declare-fun call!336229 () Bool)

(assert (=> b!4823230 call!336229))

(declare-fun lt!1971202 () Unit!142607)

(declare-fun Unit!142656 () Unit!142607)

(assert (=> b!4823230 (= lt!1971202 Unit!142656)))

(assert (=> b!4823231 (= e!3013660 lt!1971205)))

(declare-fun lt!1971199 () ListMap!6841)

(assert (=> b!4823231 (= lt!1971199 (+!2529 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))))))

(assert (=> b!4823231 (= lt!1971205 (addToMapMapFromBucket!1790 (t!362568 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))) (+!2529 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))))

(declare-fun lt!1971200 () Unit!142607)

(assert (=> b!4823231 (= lt!1971200 call!336228)))

(assert (=> b!4823231 (forall!12586 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) lambda!236066)))

(declare-fun lt!1971196 () Unit!142607)

(assert (=> b!4823231 (= lt!1971196 lt!1971200)))

(assert (=> b!4823231 (forall!12586 (toList!7464 lt!1971199) lambda!236067)))

(declare-fun lt!1971210 () Unit!142607)

(declare-fun Unit!142657 () Unit!142607)

(assert (=> b!4823231 (= lt!1971210 Unit!142657)))

(assert (=> b!4823231 call!336229))

(declare-fun lt!1971192 () Unit!142607)

(declare-fun Unit!142658 () Unit!142607)

(assert (=> b!4823231 (= lt!1971192 Unit!142658)))

(declare-fun lt!1971207 () Unit!142607)

(declare-fun Unit!142659 () Unit!142607)

(assert (=> b!4823231 (= lt!1971207 Unit!142659)))

(declare-fun lt!1971201 () Unit!142607)

(assert (=> b!4823231 (= lt!1971201 (forallContained!4370 (toList!7464 lt!1971199) lambda!236067 (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))))))

(assert (=> b!4823231 (contains!18748 lt!1971199 (_1!32375 (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971206 () Unit!142607)

(declare-fun Unit!142660 () Unit!142607)

(assert (=> b!4823231 (= lt!1971206 Unit!142660)))

(assert (=> b!4823231 (contains!18748 lt!1971205 (_1!32375 (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971193 () Unit!142607)

(declare-fun Unit!142661 () Unit!142607)

(assert (=> b!4823231 (= lt!1971193 Unit!142661)))

(assert (=> b!4823231 (forall!12586 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))) lambda!236067)))

(declare-fun lt!1971194 () Unit!142607)

(declare-fun Unit!142662 () Unit!142607)

(assert (=> b!4823231 (= lt!1971194 Unit!142662)))

(assert (=> b!4823231 (forall!12586 (toList!7464 lt!1971199) lambda!236067)))

(declare-fun lt!1971195 () Unit!142607)

(declare-fun Unit!142663 () Unit!142607)

(assert (=> b!4823231 (= lt!1971195 Unit!142663)))

(declare-fun lt!1971208 () Unit!142607)

(declare-fun Unit!142664 () Unit!142607)

(assert (=> b!4823231 (= lt!1971208 Unit!142664)))

(declare-fun lt!1971197 () Unit!142607)

(assert (=> b!4823231 (= lt!1971197 (addForallContainsKeyThenBeforeAdding!983 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971205 (_1!32375 (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))))

(assert (=> b!4823231 call!336230))

(declare-fun lt!1971209 () Unit!142607)

(assert (=> b!4823231 (= lt!1971209 lt!1971197)))

(assert (=> b!4823231 (forall!12586 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) lambda!236067)))

(declare-fun lt!1971203 () Unit!142607)

(declare-fun Unit!142665 () Unit!142607)

(assert (=> b!4823231 (= lt!1971203 Unit!142665)))

(declare-fun res!2053069 () Bool)

(assert (=> b!4823231 (= res!2053069 (forall!12586 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))) lambda!236067))))

(declare-fun e!3013659 () Bool)

(assert (=> b!4823231 (=> (not res!2053069) (not e!3013659))))

(assert (=> b!4823231 e!3013659))

(declare-fun lt!1971198 () Unit!142607)

(declare-fun Unit!142666 () Unit!142607)

(assert (=> b!4823231 (= lt!1971198 Unit!142666)))

(declare-fun bm!336225 () Bool)

(assert (=> bm!336225 (= call!336229 (forall!12586 (ite c!821856 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (t!362568 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280)))))) (ite c!821856 lambda!236065 lambda!236067)))))

(declare-fun b!4823232 () Bool)

(declare-fun res!2053071 () Bool)

(assert (=> b!4823232 (=> (not res!2053071) (not e!3013661))))

(assert (=> b!4823232 (= res!2053071 (forall!12586 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) lambda!236068))))

(declare-fun b!4823233 () Bool)

(assert (=> b!4823233 (= e!3013659 (forall!12586 (toList!7464 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) lambda!236067))))

(assert (= (and d!1544642 c!821856) b!4823230))

(assert (= (and d!1544642 (not c!821856)) b!4823231))

(assert (= (and b!4823231 res!2053069) b!4823233))

(assert (= (or b!4823230 b!4823231) bm!336225))

(assert (= (or b!4823230 b!4823231) bm!336224))

(assert (= (or b!4823230 b!4823231) bm!336223))

(assert (= (and d!1544642 res!2053070) b!4823232))

(assert (= (and b!4823232 res!2053071) b!4823229))

(declare-fun m!5811962 () Bool)

(assert (=> bm!336224 m!5811962))

(declare-fun m!5811964 () Bool)

(assert (=> b!4823233 m!5811964))

(declare-fun m!5811966 () Bool)

(assert (=> b!4823231 m!5811966))

(declare-fun m!5811968 () Bool)

(assert (=> b!4823231 m!5811968))

(assert (=> b!4823231 m!5811658))

(declare-fun m!5811970 () Bool)

(assert (=> b!4823231 m!5811970))

(declare-fun m!5811972 () Bool)

(assert (=> b!4823231 m!5811972))

(assert (=> b!4823231 m!5811968))

(declare-fun m!5811974 () Bool)

(assert (=> b!4823231 m!5811974))

(declare-fun m!5811976 () Bool)

(assert (=> b!4823231 m!5811976))

(declare-fun m!5811978 () Bool)

(assert (=> b!4823231 m!5811978))

(declare-fun m!5811980 () Bool)

(assert (=> b!4823231 m!5811980))

(assert (=> b!4823231 m!5811972))

(declare-fun m!5811982 () Bool)

(assert (=> b!4823231 m!5811982))

(assert (=> b!4823231 m!5811658))

(assert (=> b!4823231 m!5811974))

(assert (=> b!4823231 m!5811964))

(declare-fun m!5811984 () Bool)

(assert (=> d!1544642 m!5811984))

(declare-fun m!5811986 () Bool)

(assert (=> d!1544642 m!5811986))

(declare-fun m!5811988 () Bool)

(assert (=> b!4823232 m!5811988))

(declare-fun m!5811990 () Bool)

(assert (=> bm!336225 m!5811990))

(declare-fun m!5811992 () Bool)

(assert (=> b!4823229 m!5811992))

(assert (=> bm!336223 m!5811658))

(declare-fun m!5811994 () Bool)

(assert (=> bm!336223 m!5811994))

(assert (=> b!4823002 d!1544642))

(declare-fun bs!1162792 () Bool)

(declare-fun d!1544662 () Bool)

(assert (= bs!1162792 (and d!1544662 d!1544502)))

(declare-fun lambda!236073 () Int)

(assert (=> bs!1162792 (= lambda!236073 lambda!236031)))

(declare-fun bs!1162793 () Bool)

(assert (= bs!1162793 (and d!1544662 d!1544460)))

(assert (=> bs!1162793 (not (= lambda!236073 lambda!235955))))

(declare-fun bs!1162794 () Bool)

(assert (= bs!1162794 (and d!1544662 start!500032)))

(assert (=> bs!1162794 (= lambda!236073 lambda!235948)))

(declare-fun bs!1162795 () Bool)

(assert (= bs!1162795 (and d!1544662 d!1544496)))

(assert (=> bs!1162795 (= lambda!236073 lambda!236028)))

(declare-fun bs!1162796 () Bool)

(assert (= bs!1162796 (and d!1544662 d!1544510)))

(assert (=> bs!1162796 (not (= lambda!236073 lambda!236032))))

(declare-fun lt!1971219 () ListMap!6841)

(assert (=> d!1544662 (invariantList!1805 (toList!7464 lt!1971219))))

(declare-fun e!3013678 () ListMap!6841)

(assert (=> d!1544662 (= lt!1971219 e!3013678)))

(declare-fun c!821862 () Bool)

(assert (=> d!1544662 (= c!821862 ((_ is Cons!54949) (t!362569 (t!362569 (toList!7463 lm!2280)))))))

(assert (=> d!1544662 (forall!12584 (t!362569 (t!362569 (toList!7463 lm!2280))) lambda!236073)))

(assert (=> d!1544662 (= (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280)))) lt!1971219)))

(declare-fun b!4823257 () Bool)

(assert (=> b!4823257 (= e!3013678 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (t!362569 (t!362569 (toList!7463 lm!2280))))) (extractMap!2672 (t!362569 (t!362569 (t!362569 (toList!7463 lm!2280)))))))))

(declare-fun b!4823258 () Bool)

(assert (=> b!4823258 (= e!3013678 (ListMap!6842 Nil!54948))))

(assert (= (and d!1544662 c!821862) b!4823257))

(assert (= (and d!1544662 (not c!821862)) b!4823258))

(declare-fun m!5811996 () Bool)

(assert (=> d!1544662 m!5811996))

(declare-fun m!5812000 () Bool)

(assert (=> d!1544662 m!5812000))

(declare-fun m!5812002 () Bool)

(assert (=> b!4823257 m!5812002))

(assert (=> b!4823257 m!5812002))

(declare-fun m!5812006 () Bool)

(assert (=> b!4823257 m!5812006))

(assert (=> b!4823002 d!1544662))

(assert (=> d!1544444 d!1544634))

(declare-fun d!1544664 () Bool)

(declare-fun res!2053085 () Bool)

(declare-fun e!3013679 () Bool)

(assert (=> d!1544664 (=> res!2053085 e!3013679)))

(assert (=> d!1544664 (= res!2053085 ((_ is Nil!54948) (toList!7464 lt!1970873)))))

(assert (=> d!1544664 (= (forall!12586 (toList!7464 lt!1970873) lambda!236024) e!3013679)))

(declare-fun b!4823259 () Bool)

(declare-fun e!3013680 () Bool)

(assert (=> b!4823259 (= e!3013679 e!3013680)))

(declare-fun res!2053086 () Bool)

(assert (=> b!4823259 (=> (not res!2053086) (not e!3013680))))

(assert (=> b!4823259 (= res!2053086 (dynLambda!22203 lambda!236024 (h!61382 (toList!7464 lt!1970873))))))

(declare-fun b!4823260 () Bool)

(assert (=> b!4823260 (= e!3013680 (forall!12586 (t!362568 (toList!7464 lt!1970873)) lambda!236024))))

(assert (= (and d!1544664 (not res!2053085)) b!4823259))

(assert (= (and b!4823259 res!2053086) b!4823260))

(declare-fun b_lambda!189363 () Bool)

(assert (=> (not b_lambda!189363) (not b!4823259)))

(declare-fun m!5812026 () Bool)

(assert (=> b!4823259 m!5812026))

(declare-fun m!5812030 () Bool)

(assert (=> b!4823260 m!5812030))

(assert (=> b!4822983 d!1544664))

(declare-fun bs!1162833 () Bool)

(declare-fun b!4823303 () Bool)

(assert (= bs!1162833 (and b!4823303 b!4823147)))

(declare-fun lambda!236088 () Int)

(assert (=> bs!1162833 (= (= (t!362568 (toList!7464 lt!1970873)) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236088 lambda!236063))))

(assert (=> b!4823303 true))

(declare-fun bs!1162834 () Bool)

(declare-fun b!4823304 () Bool)

(assert (= bs!1162834 (and b!4823304 b!4823147)))

(declare-fun lambda!236089 () Int)

(assert (=> bs!1162834 (= (= (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873))) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236089 lambda!236063))))

(declare-fun bs!1162835 () Bool)

(assert (= bs!1162835 (and b!4823304 b!4823303)))

(assert (=> bs!1162835 (= (= (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873))) (t!362568 (toList!7464 lt!1970873))) (= lambda!236089 lambda!236088))))

(assert (=> b!4823304 true))

(declare-fun bs!1162836 () Bool)

(declare-fun b!4823297 () Bool)

(assert (= bs!1162836 (and b!4823297 b!4823147)))

(declare-fun lambda!236090 () Int)

(assert (=> bs!1162836 (= (= (toList!7464 lt!1970873) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236090 lambda!236063))))

(declare-fun bs!1162837 () Bool)

(assert (= bs!1162837 (and b!4823297 b!4823303)))

(assert (=> bs!1162837 (= (= (toList!7464 lt!1970873) (t!362568 (toList!7464 lt!1970873))) (= lambda!236090 lambda!236088))))

(declare-fun bs!1162838 () Bool)

(assert (= bs!1162838 (and b!4823297 b!4823304)))

(assert (=> bs!1162838 (= (= (toList!7464 lt!1970873) (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873)))) (= lambda!236090 lambda!236089))))

(assert (=> b!4823297 true))

(declare-fun bs!1162839 () Bool)

(declare-fun b!4823300 () Bool)

(assert (= bs!1162839 (and b!4823300 b!4823148)))

(declare-fun lambda!236091 () Int)

(assert (=> bs!1162839 (= lambda!236091 lambda!236064)))

(declare-fun b!4823296 () Bool)

(declare-fun res!2053108 () Bool)

(declare-fun e!3013705 () Bool)

(assert (=> b!4823296 (=> (not res!2053108) (not e!3013705))))

(declare-fun lt!1971262 () List!55075)

(assert (=> b!4823296 (= res!2053108 (= (length!764 lt!1971262) (length!765 (toList!7464 lt!1970873))))))

(declare-fun res!2053109 () Bool)

(assert (=> b!4823297 (=> (not res!2053109) (not e!3013705))))

(assert (=> b!4823297 (= res!2053109 (forall!12588 lt!1971262 lambda!236090))))

(declare-fun b!4823298 () Bool)

(declare-fun e!3013702 () List!55075)

(assert (=> b!4823298 (= e!3013702 Nil!54951)))

(declare-fun d!1544666 () Bool)

(assert (=> d!1544666 e!3013705))

(declare-fun res!2053110 () Bool)

(assert (=> d!1544666 (=> (not res!2053110) (not e!3013705))))

(assert (=> d!1544666 (= res!2053110 (noDuplicate!954 lt!1971262))))

(assert (=> d!1544666 (= lt!1971262 e!3013702)))

(declare-fun c!821870 () Bool)

(assert (=> d!1544666 (= c!821870 ((_ is Cons!54948) (toList!7464 lt!1970873)))))

(assert (=> d!1544666 (invariantList!1805 (toList!7464 lt!1970873))))

(assert (=> d!1544666 (= (getKeysList!1152 (toList!7464 lt!1970873)) lt!1971262)))

(declare-fun b!4823299 () Bool)

(declare-fun e!3013704 () Unit!142607)

(declare-fun Unit!142667 () Unit!142607)

(assert (=> b!4823299 (= e!3013704 Unit!142667)))

(assert (=> b!4823300 (= e!3013705 (= (content!9813 lt!1971262) (content!9813 (map!12569 (toList!7464 lt!1970873) lambda!236091))))))

(declare-fun b!4823301 () Bool)

(assert (=> b!4823301 false))

(declare-fun e!3013703 () Unit!142607)

(declare-fun Unit!142668 () Unit!142607)

(assert (=> b!4823301 (= e!3013703 Unit!142668)))

(declare-fun b!4823302 () Bool)

(declare-fun Unit!142669 () Unit!142607)

(assert (=> b!4823302 (= e!3013703 Unit!142669)))

(assert (=> b!4823303 false))

(declare-fun lt!1971266 () Unit!142607)

(declare-fun forallContained!4372 (List!55075 Int K!16634) Unit!142607)

(assert (=> b!4823303 (= lt!1971266 (forallContained!4372 (getKeysList!1152 (t!362568 (toList!7464 lt!1970873))) lambda!236088 (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun Unit!142670 () Unit!142607)

(assert (=> b!4823303 (= e!3013704 Unit!142670)))

(assert (=> b!4823304 (= e!3013702 (Cons!54951 (_1!32375 (h!61382 (toList!7464 lt!1970873))) (getKeysList!1152 (t!362568 (toList!7464 lt!1970873)))))))

(declare-fun c!821872 () Bool)

(assert (=> b!4823304 (= c!821872 (containsKey!4350 (t!362568 (toList!7464 lt!1970873)) (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun lt!1971263 () Unit!142607)

(assert (=> b!4823304 (= lt!1971263 e!3013703)))

(declare-fun c!821871 () Bool)

(assert (=> b!4823304 (= c!821871 (contains!18751 (getKeysList!1152 (t!362568 (toList!7464 lt!1970873))) (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun lt!1971261 () Unit!142607)

(assert (=> b!4823304 (= lt!1971261 e!3013704)))

(declare-fun lt!1971264 () List!55075)

(assert (=> b!4823304 (= lt!1971264 (getKeysList!1152 (t!362568 (toList!7464 lt!1970873))))))

(declare-fun lt!1971265 () Unit!142607)

(declare-fun lemmaForallContainsAddHeadPreserves!369 (List!55072 List!55075 tuple2!58162) Unit!142607)

(assert (=> b!4823304 (= lt!1971265 (lemmaForallContainsAddHeadPreserves!369 (t!362568 (toList!7464 lt!1970873)) lt!1971264 (h!61382 (toList!7464 lt!1970873))))))

(assert (=> b!4823304 (forall!12588 lt!1971264 lambda!236089)))

(declare-fun lt!1971267 () Unit!142607)

(assert (=> b!4823304 (= lt!1971267 lt!1971265)))

(assert (= (and d!1544666 c!821870) b!4823304))

(assert (= (and d!1544666 (not c!821870)) b!4823298))

(assert (= (and b!4823304 c!821872) b!4823301))

(assert (= (and b!4823304 (not c!821872)) b!4823302))

(assert (= (and b!4823304 c!821871) b!4823303))

(assert (= (and b!4823304 (not c!821871)) b!4823299))

(assert (= (and d!1544666 res!2053110) b!4823296))

(assert (= (and b!4823296 res!2053108) b!4823297))

(assert (= (and b!4823297 res!2053109) b!4823300))

(declare-fun m!5812102 () Bool)

(assert (=> b!4823297 m!5812102))

(declare-fun m!5812104 () Bool)

(assert (=> d!1544666 m!5812104))

(assert (=> d!1544666 m!5811918))

(declare-fun m!5812106 () Bool)

(assert (=> b!4823300 m!5812106))

(declare-fun m!5812108 () Bool)

(assert (=> b!4823300 m!5812108))

(assert (=> b!4823300 m!5812108))

(declare-fun m!5812110 () Bool)

(assert (=> b!4823300 m!5812110))

(declare-fun m!5812112 () Bool)

(assert (=> b!4823303 m!5812112))

(assert (=> b!4823303 m!5812112))

(declare-fun m!5812114 () Bool)

(assert (=> b!4823303 m!5812114))

(declare-fun m!5812116 () Bool)

(assert (=> b!4823296 m!5812116))

(declare-fun m!5812118 () Bool)

(assert (=> b!4823296 m!5812118))

(declare-fun m!5812120 () Bool)

(assert (=> b!4823304 m!5812120))

(declare-fun m!5812122 () Bool)

(assert (=> b!4823304 m!5812122))

(declare-fun m!5812124 () Bool)

(assert (=> b!4823304 m!5812124))

(assert (=> b!4823304 m!5812112))

(declare-fun m!5812126 () Bool)

(assert (=> b!4823304 m!5812126))

(assert (=> b!4823304 m!5812112))

(assert (=> b!4822898 d!1544666))

(declare-fun d!1544686 () Bool)

(assert (=> d!1544686 (= (invariantList!1805 (toList!7464 lt!1971094)) (noDuplicatedKeys!471 (toList!7464 lt!1971094)))))

(declare-fun bs!1162840 () Bool)

(assert (= bs!1162840 d!1544686))

(declare-fun m!5812128 () Bool)

(assert (=> bs!1162840 m!5812128))

(assert (=> d!1544502 d!1544686))

(declare-fun d!1544688 () Bool)

(declare-fun res!2053115 () Bool)

(declare-fun e!3013708 () Bool)

(assert (=> d!1544688 (=> res!2053115 e!3013708)))

(assert (=> d!1544688 (= res!2053115 ((_ is Nil!54949) (t!362569 (toList!7463 lm!2280))))))

(assert (=> d!1544688 (= (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!236031) e!3013708)))

(declare-fun b!4823311 () Bool)

(declare-fun e!3013709 () Bool)

(assert (=> b!4823311 (= e!3013708 e!3013709)))

(declare-fun res!2053116 () Bool)

(assert (=> b!4823311 (=> (not res!2053116) (not e!3013709))))

(assert (=> b!4823311 (= res!2053116 (dynLambda!22202 lambda!236031 (h!61383 (t!362569 (toList!7463 lm!2280)))))))

(declare-fun b!4823312 () Bool)

(assert (=> b!4823312 (= e!3013709 (forall!12584 (t!362569 (t!362569 (toList!7463 lm!2280))) lambda!236031))))

(assert (= (and d!1544688 (not res!2053115)) b!4823311))

(assert (= (and b!4823311 res!2053116) b!4823312))

(declare-fun b_lambda!189369 () Bool)

(assert (=> (not b_lambda!189369) (not b!4823311)))

(declare-fun m!5812130 () Bool)

(assert (=> b!4823311 m!5812130))

(declare-fun m!5812132 () Bool)

(assert (=> b!4823312 m!5812132))

(assert (=> d!1544502 d!1544688))

(declare-fun d!1544690 () Bool)

(assert (=> d!1544690 (= (get!18812 (getValueByKey!2608 (toList!7463 lm!2280) (_1!32376 (h!61383 (toList!7463 lm!2280))))) (v!49153 (getValueByKey!2608 (toList!7463 lm!2280) (_1!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> d!1544462 d!1544690))

(declare-fun b!4823338 () Bool)

(declare-fun e!3013727 () Option!13481)

(assert (=> b!4823338 (= e!3013727 (Some!13480 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun b!4823341 () Bool)

(declare-fun e!3013728 () Option!13481)

(assert (=> b!4823341 (= e!3013728 None!13480)))

(declare-fun b!4823339 () Bool)

(assert (=> b!4823339 (= e!3013727 e!3013728)))

(declare-fun c!821881 () Bool)

(assert (=> b!4823339 (= c!821881 (and ((_ is Cons!54949) (toList!7463 lm!2280)) (not (= (_1!32376 (h!61383 (toList!7463 lm!2280))) (_1!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun b!4823340 () Bool)

(assert (=> b!4823340 (= e!3013728 (getValueByKey!2608 (t!362569 (toList!7463 lm!2280)) (_1!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun d!1544692 () Bool)

(declare-fun c!821880 () Bool)

(assert (=> d!1544692 (= c!821880 (and ((_ is Cons!54949) (toList!7463 lm!2280)) (= (_1!32376 (h!61383 (toList!7463 lm!2280))) (_1!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> d!1544692 (= (getValueByKey!2608 (toList!7463 lm!2280) (_1!32376 (h!61383 (toList!7463 lm!2280)))) e!3013727)))

(assert (= (and d!1544692 c!821880) b!4823338))

(assert (= (and d!1544692 (not c!821880)) b!4823339))

(assert (= (and b!4823339 c!821881) b!4823340))

(assert (= (and b!4823339 (not c!821881)) b!4823341))

(declare-fun m!5812174 () Bool)

(assert (=> b!4823340 m!5812174))

(assert (=> d!1544462 d!1544692))

(declare-fun d!1544704 () Bool)

(declare-fun res!2053132 () Bool)

(declare-fun e!3013733 () Bool)

(assert (=> d!1544704 (=> res!2053132 e!3013733)))

(assert (=> d!1544704 (= res!2053132 (and ((_ is Cons!54949) (toList!7463 lm!2280)) (= (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870)))))

(assert (=> d!1544704 (= (containsKey!4351 (toList!7463 lm!2280) lt!1970870) e!3013733)))

(declare-fun b!4823346 () Bool)

(declare-fun e!3013734 () Bool)

(assert (=> b!4823346 (= e!3013733 e!3013734)))

(declare-fun res!2053133 () Bool)

(assert (=> b!4823346 (=> (not res!2053133) (not e!3013734))))

(assert (=> b!4823346 (= res!2053133 (and (or (not ((_ is Cons!54949) (toList!7463 lm!2280))) (bvsle (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870)) ((_ is Cons!54949) (toList!7463 lm!2280)) (bvslt (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870)))))

(declare-fun b!4823347 () Bool)

(assert (=> b!4823347 (= e!3013734 (containsKey!4351 (t!362569 (toList!7463 lm!2280)) lt!1970870))))

(assert (= (and d!1544704 (not res!2053132)) b!4823346))

(assert (= (and b!4823346 res!2053133) b!4823347))

(declare-fun m!5812176 () Bool)

(assert (=> b!4823347 m!5812176))

(assert (=> d!1544520 d!1544704))

(declare-fun d!1544706 () Bool)

(declare-fun res!2053134 () Bool)

(declare-fun e!3013735 () Bool)

(assert (=> d!1544706 (=> res!2053134 e!3013735)))

(assert (=> d!1544706 (= res!2053134 ((_ is Nil!54949) (t!362569 (toList!7463 lt!1970871))))))

(assert (=> d!1544706 (= (forall!12584 (t!362569 (toList!7463 lt!1970871)) lambda!235948) e!3013735)))

(declare-fun b!4823348 () Bool)

(declare-fun e!3013736 () Bool)

(assert (=> b!4823348 (= e!3013735 e!3013736)))

(declare-fun res!2053135 () Bool)

(assert (=> b!4823348 (=> (not res!2053135) (not e!3013736))))

(assert (=> b!4823348 (= res!2053135 (dynLambda!22202 lambda!235948 (h!61383 (t!362569 (toList!7463 lt!1970871)))))))

(declare-fun b!4823349 () Bool)

(assert (=> b!4823349 (= e!3013736 (forall!12584 (t!362569 (t!362569 (toList!7463 lt!1970871))) lambda!235948))))

(assert (= (and d!1544706 (not res!2053134)) b!4823348))

(assert (= (and b!4823348 res!2053135) b!4823349))

(declare-fun b_lambda!189377 () Bool)

(assert (=> (not b_lambda!189377) (not b!4823348)))

(declare-fun m!5812178 () Bool)

(assert (=> b!4823348 m!5812178))

(declare-fun m!5812180 () Bool)

(assert (=> b!4823349 m!5812180))

(assert (=> b!4823011 d!1544706))

(declare-fun bs!1162841 () Bool)

(declare-fun b!4823351 () Bool)

(assert (= bs!1162841 (and b!4823351 b!4823147)))

(declare-fun lambda!236092 () Int)

(assert (=> bs!1162841 (= (= (toList!7464 lt!1970873) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236092 lambda!236063))))

(declare-fun bs!1162842 () Bool)

(assert (= bs!1162842 (and b!4823351 b!4823303)))

(assert (=> bs!1162842 (= (= (toList!7464 lt!1970873) (t!362568 (toList!7464 lt!1970873))) (= lambda!236092 lambda!236088))))

(declare-fun bs!1162843 () Bool)

(assert (= bs!1162843 (and b!4823351 b!4823304)))

(assert (=> bs!1162843 (= (= (toList!7464 lt!1970873) (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873)))) (= lambda!236092 lambda!236089))))

(declare-fun bs!1162844 () Bool)

(assert (= bs!1162844 (and b!4823351 b!4823297)))

(assert (=> bs!1162844 (= lambda!236092 lambda!236090)))

(assert (=> b!4823351 true))

(declare-fun bs!1162845 () Bool)

(declare-fun b!4823352 () Bool)

(assert (= bs!1162845 (and b!4823352 b!4823148)))

(declare-fun lambda!236093 () Int)

(assert (=> bs!1162845 (= lambda!236093 lambda!236064)))

(declare-fun bs!1162846 () Bool)

(assert (= bs!1162846 (and b!4823352 b!4823300)))

(assert (=> bs!1162846 (= lambda!236093 lambda!236091)))

(declare-fun d!1544708 () Bool)

(declare-fun e!3013737 () Bool)

(assert (=> d!1544708 e!3013737))

(declare-fun res!2053138 () Bool)

(assert (=> d!1544708 (=> (not res!2053138) (not e!3013737))))

(declare-fun lt!1971288 () List!55075)

(assert (=> d!1544708 (= res!2053138 (noDuplicate!954 lt!1971288))))

(assert (=> d!1544708 (= lt!1971288 (getKeysList!1152 (toList!7464 lt!1970873)))))

(assert (=> d!1544708 (= (keys!20211 lt!1970873) lt!1971288)))

(declare-fun b!4823350 () Bool)

(declare-fun res!2053136 () Bool)

(assert (=> b!4823350 (=> (not res!2053136) (not e!3013737))))

(assert (=> b!4823350 (= res!2053136 (= (length!764 lt!1971288) (length!765 (toList!7464 lt!1970873))))))

(declare-fun res!2053137 () Bool)

(assert (=> b!4823351 (=> (not res!2053137) (not e!3013737))))

(assert (=> b!4823351 (= res!2053137 (forall!12588 lt!1971288 lambda!236092))))

(assert (=> b!4823352 (= e!3013737 (= (content!9813 lt!1971288) (content!9813 (map!12569 (toList!7464 lt!1970873) lambda!236093))))))

(assert (= (and d!1544708 res!2053138) b!4823350))

(assert (= (and b!4823350 res!2053136) b!4823351))

(assert (= (and b!4823351 res!2053137) b!4823352))

(declare-fun m!5812182 () Bool)

(assert (=> d!1544708 m!5812182))

(assert (=> d!1544708 m!5811490))

(declare-fun m!5812184 () Bool)

(assert (=> b!4823350 m!5812184))

(assert (=> b!4823350 m!5812118))

(declare-fun m!5812186 () Bool)

(assert (=> b!4823351 m!5812186))

(declare-fun m!5812188 () Bool)

(assert (=> b!4823352 m!5812188))

(declare-fun m!5812190 () Bool)

(assert (=> b!4823352 m!5812190))

(assert (=> b!4823352 m!5812190))

(declare-fun m!5812192 () Bool)

(assert (=> b!4823352 m!5812192))

(assert (=> b!4822894 d!1544708))

(declare-fun bs!1162857 () Bool)

(declare-fun d!1544710 () Bool)

(assert (= bs!1162857 (and d!1544710 b!4823231)))

(declare-fun lambda!236101 () Int)

(assert (=> bs!1162857 (= (= lt!1970873 lt!1971205) (= lambda!236101 lambda!236067))))

(declare-fun bs!1162859 () Bool)

(assert (= bs!1162859 (and d!1544710 b!4822981)))

(assert (=> bs!1162859 (= lambda!236101 lambda!236023)))

(assert (=> bs!1162859 (= (= lt!1970873 lt!1971072) (= lambda!236101 lambda!236024))))

(declare-fun bs!1162860 () Bool)

(assert (= bs!1162860 (and d!1544710 b!4823230)))

(assert (=> bs!1162860 (= (= lt!1970873 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236101 lambda!236065))))

(assert (=> bs!1162857 (= (= lt!1970873 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236101 lambda!236066))))

(declare-fun bs!1162861 () Bool)

(assert (= bs!1162861 (and d!1544710 d!1544466)))

(assert (=> bs!1162861 (= (= lt!1970873 lt!1971058) (= lambda!236101 lambda!236025))))

(declare-fun bs!1162862 () Bool)

(assert (= bs!1162862 (and d!1544710 d!1544642)))

(assert (=> bs!1162862 (= (= lt!1970873 lt!1971191) (= lambda!236101 lambda!236068))))

(declare-fun bs!1162863 () Bool)

(assert (= bs!1162863 (and d!1544710 b!4822980)))

(assert (=> bs!1162863 (= lambda!236101 lambda!236022)))

(assert (=> d!1544710 true))

(assert (=> d!1544710 (forall!12586 (toList!7464 lt!1970873) lambda!236101)))

(declare-fun lt!1971294 () Unit!142607)

(declare-fun choose!35061 (ListMap!6841) Unit!142607)

(assert (=> d!1544710 (= lt!1971294 (choose!35061 lt!1970873))))

(assert (=> d!1544710 (= (lemmaContainsAllItsOwnKeys!984 lt!1970873) lt!1971294)))

(declare-fun bs!1162864 () Bool)

(assert (= bs!1162864 d!1544710))

(declare-fun m!5812206 () Bool)

(assert (=> bs!1162864 m!5812206))

(declare-fun m!5812208 () Bool)

(assert (=> bs!1162864 m!5812208))

(assert (=> bm!336216 d!1544710))

(declare-fun d!1544716 () Bool)

(declare-fun lt!1971303 () Bool)

(assert (=> d!1544716 (= lt!1971303 (select (content!9813 e!3013488) key!5428))))

(declare-fun e!3013747 () Bool)

(assert (=> d!1544716 (= lt!1971303 e!3013747)))

(declare-fun res!2053145 () Bool)

(assert (=> d!1544716 (=> (not res!2053145) (not e!3013747))))

(assert (=> d!1544716 (= res!2053145 ((_ is Cons!54951) e!3013488))))

(assert (=> d!1544716 (= (contains!18751 e!3013488 key!5428) lt!1971303)))

(declare-fun b!4823365 () Bool)

(declare-fun e!3013746 () Bool)

(assert (=> b!4823365 (= e!3013747 e!3013746)))

(declare-fun res!2053144 () Bool)

(assert (=> b!4823365 (=> res!2053144 e!3013746)))

(assert (=> b!4823365 (= res!2053144 (= (h!61385 e!3013488) key!5428))))

(declare-fun b!4823366 () Bool)

(assert (=> b!4823366 (= e!3013746 (contains!18751 (t!362571 e!3013488) key!5428))))

(assert (= (and d!1544716 res!2053145) b!4823365))

(assert (= (and b!4823365 (not res!2053144)) b!4823366))

(declare-fun m!5812210 () Bool)

(assert (=> d!1544716 m!5812210))

(declare-fun m!5812212 () Bool)

(assert (=> d!1544716 m!5812212))

(declare-fun m!5812214 () Bool)

(assert (=> b!4823366 m!5812214))

(assert (=> bm!336219 d!1544716))

(declare-fun d!1544718 () Bool)

(declare-fun res!2053146 () Bool)

(declare-fun e!3013748 () Bool)

(assert (=> d!1544718 (=> res!2053146 e!3013748)))

(assert (=> d!1544718 (= res!2053146 (and ((_ is Cons!54948) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) key!5428)))))

(assert (=> d!1544718 (= (containsKey!4350 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) e!3013748)))

(declare-fun b!4823367 () Bool)

(declare-fun e!3013749 () Bool)

(assert (=> b!4823367 (= e!3013748 e!3013749)))

(declare-fun res!2053147 () Bool)

(assert (=> b!4823367 (=> (not res!2053147) (not e!3013749))))

(assert (=> b!4823367 (= res!2053147 ((_ is Cons!54948) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))

(declare-fun b!4823368 () Bool)

(assert (=> b!4823368 (= e!3013749 (containsKey!4350 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428))))

(assert (= (and d!1544718 (not res!2053146)) b!4823367))

(assert (= (and b!4823367 res!2053147) b!4823368))

(declare-fun m!5812216 () Bool)

(assert (=> b!4823368 m!5812216))

(assert (=> d!1544500 d!1544718))

(declare-fun d!1544720 () Bool)

(declare-fun res!2053148 () Bool)

(declare-fun e!3013750 () Bool)

(assert (=> d!1544720 (=> res!2053148 e!3013750)))

(assert (=> d!1544720 (= res!2053148 (and ((_ is Cons!54948) (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))))) (= (_1!32375 (h!61382 (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280))))))) key!5428)))))

(assert (=> d!1544720 (= (containsKey!4347 (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280))))) key!5428) e!3013750)))

(declare-fun b!4823369 () Bool)

(declare-fun e!3013751 () Bool)

(assert (=> b!4823369 (= e!3013750 e!3013751)))

(declare-fun res!2053149 () Bool)

(assert (=> b!4823369 (=> (not res!2053149) (not e!3013751))))

(assert (=> b!4823369 (= res!2053149 ((_ is Cons!54948) (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun b!4823370 () Bool)

(assert (=> b!4823370 (= e!3013751 (containsKey!4347 (t!362568 (t!362568 (apply!13345 lm!2280 (_1!32376 (h!61383 (toList!7463 lm!2280)))))) key!5428))))

(assert (= (and d!1544720 (not res!2053148)) b!4823369))

(assert (= (and b!4823369 res!2053149) b!4823370))

(declare-fun m!5812234 () Bool)

(assert (=> b!4823370 m!5812234))

(assert (=> b!4822910 d!1544720))

(declare-fun d!1544722 () Bool)

(declare-fun lt!1971304 () Bool)

(assert (=> d!1544722 (= lt!1971304 (select (content!9813 (keys!20211 lt!1970873)) key!5428))))

(declare-fun e!3013753 () Bool)

(assert (=> d!1544722 (= lt!1971304 e!3013753)))

(declare-fun res!2053151 () Bool)

(assert (=> d!1544722 (=> (not res!2053151) (not e!3013753))))

(assert (=> d!1544722 (= res!2053151 ((_ is Cons!54951) (keys!20211 lt!1970873)))))

(assert (=> d!1544722 (= (contains!18751 (keys!20211 lt!1970873) key!5428) lt!1971304)))

(declare-fun b!4823371 () Bool)

(declare-fun e!3013752 () Bool)

(assert (=> b!4823371 (= e!3013753 e!3013752)))

(declare-fun res!2053150 () Bool)

(assert (=> b!4823371 (=> res!2053150 e!3013752)))

(assert (=> b!4823371 (= res!2053150 (= (h!61385 (keys!20211 lt!1970873)) key!5428))))

(declare-fun b!4823372 () Bool)

(assert (=> b!4823372 (= e!3013752 (contains!18751 (t!362571 (keys!20211 lt!1970873)) key!5428))))

(assert (= (and d!1544722 res!2053151) b!4823371))

(assert (= (and b!4823371 (not res!2053150)) b!4823372))

(assert (=> d!1544722 m!5811488))

(declare-fun m!5812240 () Bool)

(assert (=> d!1544722 m!5812240))

(declare-fun m!5812242 () Bool)

(assert (=> d!1544722 m!5812242))

(declare-fun m!5812244 () Bool)

(assert (=> b!4823372 m!5812244))

(assert (=> b!4822897 d!1544722))

(assert (=> b!4822897 d!1544708))

(declare-fun d!1544726 () Bool)

(assert (=> d!1544726 (isDefined!10595 (getValueByKey!2607 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(declare-fun lt!1971305 () Unit!142607)

(assert (=> d!1544726 (= lt!1971305 (choose!35056 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> d!1544726 (invariantList!1805 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))

(assert (=> d!1544726 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) lt!1971305)))

(declare-fun bs!1162865 () Bool)

(assert (= bs!1162865 d!1544726))

(assert (=> bs!1162865 m!5811634))

(assert (=> bs!1162865 m!5811634))

(assert (=> bs!1162865 m!5811636))

(declare-fun m!5812246 () Bool)

(assert (=> bs!1162865 m!5812246))

(declare-fun m!5812248 () Bool)

(assert (=> bs!1162865 m!5812248))

(assert (=> b!4822997 d!1544726))

(assert (=> b!4822997 d!1544586))

(assert (=> b!4822997 d!1544588))

(declare-fun d!1544728 () Bool)

(assert (=> d!1544728 (contains!18751 (getKeysList!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) key!5428)))

(declare-fun lt!1971306 () Unit!142607)

(assert (=> d!1544728 (= lt!1971306 (choose!35058 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> d!1544728 (invariantList!1805 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))

(assert (=> d!1544728 (= (lemmaInListThenGetKeysListContains!1147 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) lt!1971306)))

(declare-fun bs!1162866 () Bool)

(assert (= bs!1162866 d!1544728))

(assert (=> bs!1162866 m!5811650))

(assert (=> bs!1162866 m!5811650))

(declare-fun m!5812250 () Bool)

(assert (=> bs!1162866 m!5812250))

(declare-fun m!5812252 () Bool)

(assert (=> bs!1162866 m!5812252))

(assert (=> bs!1162866 m!5812248))

(assert (=> b!4822997 d!1544728))

(declare-fun d!1544730 () Bool)

(declare-fun res!2053152 () Bool)

(declare-fun e!3013754 () Bool)

(assert (=> d!1544730 (=> res!2053152 e!3013754)))

(assert (=> d!1544730 (= res!2053152 ((_ is Nil!54948) (toList!7464 lt!1970873)))))

(assert (=> d!1544730 (= (forall!12586 (toList!7464 lt!1970873) lambda!236025) e!3013754)))

(declare-fun b!4823373 () Bool)

(declare-fun e!3013755 () Bool)

(assert (=> b!4823373 (= e!3013754 e!3013755)))

(declare-fun res!2053153 () Bool)

(assert (=> b!4823373 (=> (not res!2053153) (not e!3013755))))

(assert (=> b!4823373 (= res!2053153 (dynLambda!22203 lambda!236025 (h!61382 (toList!7464 lt!1970873))))))

(declare-fun b!4823374 () Bool)

(assert (=> b!4823374 (= e!3013755 (forall!12586 (t!362568 (toList!7464 lt!1970873)) lambda!236025))))

(assert (= (and d!1544730 (not res!2053152)) b!4823373))

(assert (= (and b!4823373 res!2053153) b!4823374))

(declare-fun b_lambda!189381 () Bool)

(assert (=> (not b_lambda!189381) (not b!4823373)))

(declare-fun m!5812254 () Bool)

(assert (=> b!4823373 m!5812254))

(declare-fun m!5812256 () Bool)

(assert (=> b!4823374 m!5812256))

(assert (=> b!4822982 d!1544730))

(declare-fun d!1544732 () Bool)

(declare-fun res!2053154 () Bool)

(declare-fun e!3013756 () Bool)

(assert (=> d!1544732 (=> res!2053154 e!3013756)))

(assert (=> d!1544732 (= res!2053154 (and ((_ is Cons!54948) (t!362568 (apply!13345 lm!2280 lt!1970870))) (= (_1!32375 (h!61382 (t!362568 (apply!13345 lm!2280 lt!1970870)))) key!5428)))))

(assert (=> d!1544732 (= (containsKey!4347 (t!362568 (apply!13345 lm!2280 lt!1970870)) key!5428) e!3013756)))

(declare-fun b!4823375 () Bool)

(declare-fun e!3013757 () Bool)

(assert (=> b!4823375 (= e!3013756 e!3013757)))

(declare-fun res!2053155 () Bool)

(assert (=> b!4823375 (=> (not res!2053155) (not e!3013757))))

(assert (=> b!4823375 (= res!2053155 ((_ is Cons!54948) (t!362568 (apply!13345 lm!2280 lt!1970870))))))

(declare-fun b!4823376 () Bool)

(assert (=> b!4823376 (= e!3013757 (containsKey!4347 (t!362568 (t!362568 (apply!13345 lm!2280 lt!1970870))) key!5428))))

(assert (= (and d!1544732 (not res!2053154)) b!4823375))

(assert (= (and b!4823375 res!2053155) b!4823376))

(declare-fun m!5812258 () Bool)

(assert (=> b!4823376 m!5812258))

(assert (=> b!4823015 d!1544732))

(assert (=> b!4822995 d!1544718))

(declare-fun d!1544734 () Bool)

(assert (=> d!1544734 (containsKey!4350 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428)))

(declare-fun lt!1971307 () Unit!142607)

(assert (=> d!1544734 (= lt!1971307 (choose!35059 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428))))

(assert (=> d!1544734 (invariantList!1805 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))

(assert (=> d!1544734 (= (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) key!5428) lt!1971307)))

(declare-fun bs!1162867 () Bool)

(assert (= bs!1162867 d!1544734))

(assert (=> bs!1162867 m!5811638))

(declare-fun m!5812260 () Bool)

(assert (=> bs!1162867 m!5812260))

(assert (=> bs!1162867 m!5812248))

(assert (=> b!4822995 d!1544734))

(declare-fun d!1544736 () Bool)

(assert (=> d!1544736 (dynLambda!22203 lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun lt!1971310 () Unit!142607)

(declare-fun choose!35062 (List!55072 Int tuple2!58162) Unit!142607)

(assert (=> d!1544736 (= lt!1971310 (choose!35062 (toList!7464 lt!1971066) lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun e!3013772 () Bool)

(assert (=> d!1544736 e!3013772))

(declare-fun res!2053166 () Bool)

(assert (=> d!1544736 (=> (not res!2053166) (not e!3013772))))

(assert (=> d!1544736 (= res!2053166 (forall!12586 (toList!7464 lt!1971066) lambda!236024))))

(assert (=> d!1544736 (= (forallContained!4370 (toList!7464 lt!1971066) lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971310)))

(declare-fun b!4823393 () Bool)

(declare-fun contains!18752 (List!55072 tuple2!58162) Bool)

(assert (=> b!4823393 (= e!3013772 (contains!18752 (toList!7464 lt!1971066) (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (= (and d!1544736 res!2053166) b!4823393))

(declare-fun b_lambda!189387 () Bool)

(assert (=> (not b_lambda!189387) (not d!1544736)))

(declare-fun m!5812270 () Bool)

(assert (=> d!1544736 m!5812270))

(declare-fun m!5812272 () Bool)

(assert (=> d!1544736 m!5812272))

(assert (=> d!1544736 m!5811600))

(declare-fun m!5812274 () Bool)

(assert (=> b!4823393 m!5812274))

(assert (=> b!4822981 d!1544736))

(assert (=> b!4822981 d!1544664))

(declare-fun d!1544742 () Bool)

(declare-fun res!2053167 () Bool)

(declare-fun e!3013773 () Bool)

(assert (=> d!1544742 (=> res!2053167 e!3013773)))

(assert (=> d!1544742 (= res!2053167 ((_ is Nil!54948) (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(assert (=> d!1544742 (= (forall!12586 (_2!32376 (h!61383 (toList!7463 lm!2280))) lambda!236024) e!3013773)))

(declare-fun b!4823394 () Bool)

(declare-fun e!3013774 () Bool)

(assert (=> b!4823394 (= e!3013773 e!3013774)))

(declare-fun res!2053168 () Bool)

(assert (=> b!4823394 (=> (not res!2053168) (not e!3013774))))

(assert (=> b!4823394 (= res!2053168 (dynLambda!22203 lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun b!4823395 () Bool)

(assert (=> b!4823395 (= e!3013774 (forall!12586 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) lambda!236024))))

(assert (= (and d!1544742 (not res!2053167)) b!4823394))

(assert (= (and b!4823394 res!2053168) b!4823395))

(declare-fun b_lambda!189415 () Bool)

(assert (=> (not b_lambda!189415) (not b!4823394)))

(assert (=> b!4823394 m!5812270))

(declare-fun m!5812280 () Bool)

(assert (=> b!4823395 m!5812280))

(assert (=> b!4822981 d!1544742))

(declare-fun d!1544750 () Bool)

(declare-fun e!3013777 () Bool)

(assert (=> d!1544750 e!3013777))

(declare-fun res!2053174 () Bool)

(assert (=> d!1544750 (=> (not res!2053174) (not e!3013777))))

(declare-fun lt!1971322 () ListMap!6841)

(assert (=> d!1544750 (= res!2053174 (contains!18748 lt!1971322 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971319 () List!55072)

(assert (=> d!1544750 (= lt!1971322 (ListMap!6842 lt!1971319))))

(declare-fun lt!1971321 () Unit!142607)

(declare-fun lt!1971320 () Unit!142607)

(assert (=> d!1544750 (= lt!1971321 lt!1971320)))

(assert (=> d!1544750 (= (getValueByKey!2607 lt!1971319 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (Some!13479 (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1212 (List!55072 K!16634 V!16880) Unit!142607)

(assert (=> d!1544750 (= lt!1971320 (lemmaContainsTupThenGetReturnValue!1212 lt!1971319 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!720 (List!55072 K!16634 V!16880) List!55072)

(assert (=> d!1544750 (= lt!1971319 (insertNoDuplicatedKeys!720 (toList!7464 lt!1970873) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> d!1544750 (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971322)))

(declare-fun b!4823400 () Bool)

(declare-fun res!2053173 () Bool)

(assert (=> b!4823400 (=> (not res!2053173) (not e!3013777))))

(assert (=> b!4823400 (= res!2053173 (= (getValueByKey!2607 (toList!7464 lt!1971322) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (Some!13479 (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823401 () Bool)

(assert (=> b!4823401 (= e!3013777 (contains!18752 (toList!7464 lt!1971322) (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (= (and d!1544750 res!2053174) b!4823400))

(assert (= (and b!4823400 res!2053173) b!4823401))

(declare-fun m!5812296 () Bool)

(assert (=> d!1544750 m!5812296))

(declare-fun m!5812298 () Bool)

(assert (=> d!1544750 m!5812298))

(declare-fun m!5812300 () Bool)

(assert (=> d!1544750 m!5812300))

(declare-fun m!5812302 () Bool)

(assert (=> d!1544750 m!5812302))

(declare-fun m!5812304 () Bool)

(assert (=> b!4823400 m!5812304))

(declare-fun m!5812306 () Bool)

(assert (=> b!4823401 m!5812306))

(assert (=> b!4822981 d!1544750))

(declare-fun d!1544772 () Bool)

(declare-fun res!2053175 () Bool)

(declare-fun e!3013778 () Bool)

(assert (=> d!1544772 (=> res!2053175 e!3013778)))

(assert (=> d!1544772 (= res!2053175 ((_ is Nil!54948) (toList!7464 lt!1971066)))))

(assert (=> d!1544772 (= (forall!12586 (toList!7464 lt!1971066) lambda!236024) e!3013778)))

(declare-fun b!4823402 () Bool)

(declare-fun e!3013779 () Bool)

(assert (=> b!4823402 (= e!3013778 e!3013779)))

(declare-fun res!2053176 () Bool)

(assert (=> b!4823402 (=> (not res!2053176) (not e!3013779))))

(assert (=> b!4823402 (= res!2053176 (dynLambda!22203 lambda!236024 (h!61382 (toList!7464 lt!1971066))))))

(declare-fun b!4823403 () Bool)

(assert (=> b!4823403 (= e!3013779 (forall!12586 (t!362568 (toList!7464 lt!1971066)) lambda!236024))))

(assert (= (and d!1544772 (not res!2053175)) b!4823402))

(assert (= (and b!4823402 res!2053176) b!4823403))

(declare-fun b_lambda!189417 () Bool)

(assert (=> (not b_lambda!189417) (not b!4823402)))

(declare-fun m!5812308 () Bool)

(assert (=> b!4823402 m!5812308))

(declare-fun m!5812310 () Bool)

(assert (=> b!4823403 m!5812310))

(assert (=> b!4822981 d!1544772))

(declare-fun bs!1162882 () Bool)

(declare-fun b!4823405 () Bool)

(assert (= bs!1162882 (and b!4823405 b!4823231)))

(declare-fun lambda!236102 () Int)

(assert (=> bs!1162882 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971205) (= lambda!236102 lambda!236067))))

(declare-fun bs!1162883 () Bool)

(assert (= bs!1162883 (and b!4823405 b!4822981)))

(assert (=> bs!1162883 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236102 lambda!236023))))

(declare-fun bs!1162884 () Bool)

(assert (= bs!1162884 (and b!4823405 d!1544710)))

(assert (=> bs!1162884 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236102 lambda!236101))))

(assert (=> bs!1162883 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971072) (= lambda!236102 lambda!236024))))

(declare-fun bs!1162885 () Bool)

(assert (= bs!1162885 (and b!4823405 b!4823230)))

(assert (=> bs!1162885 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236102 lambda!236065))))

(assert (=> bs!1162882 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236102 lambda!236066))))

(declare-fun bs!1162886 () Bool)

(assert (= bs!1162886 (and b!4823405 d!1544466)))

(assert (=> bs!1162886 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971058) (= lambda!236102 lambda!236025))))

(declare-fun bs!1162887 () Bool)

(assert (= bs!1162887 (and b!4823405 d!1544642)))

(assert (=> bs!1162887 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971191) (= lambda!236102 lambda!236068))))

(declare-fun bs!1162888 () Bool)

(assert (= bs!1162888 (and b!4823405 b!4822980)))

(assert (=> bs!1162888 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236102 lambda!236022))))

(assert (=> b!4823405 true))

(declare-fun bs!1162889 () Bool)

(declare-fun b!4823406 () Bool)

(assert (= bs!1162889 (and b!4823406 b!4823231)))

(declare-fun lambda!236103 () Int)

(assert (=> bs!1162889 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971205) (= lambda!236103 lambda!236067))))

(declare-fun bs!1162890 () Bool)

(assert (= bs!1162890 (and b!4823406 d!1544710)))

(assert (=> bs!1162890 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236103 lambda!236101))))

(declare-fun bs!1162891 () Bool)

(assert (= bs!1162891 (and b!4823406 b!4822981)))

(assert (=> bs!1162891 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971072) (= lambda!236103 lambda!236024))))

(declare-fun bs!1162892 () Bool)

(assert (= bs!1162892 (and b!4823406 b!4823230)))

(assert (=> bs!1162892 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236103 lambda!236065))))

(assert (=> bs!1162889 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236103 lambda!236066))))

(declare-fun bs!1162893 () Bool)

(assert (= bs!1162893 (and b!4823406 d!1544466)))

(assert (=> bs!1162893 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971058) (= lambda!236103 lambda!236025))))

(assert (=> bs!1162891 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236103 lambda!236023))))

(declare-fun bs!1162894 () Bool)

(assert (= bs!1162894 (and b!4823406 b!4823405)))

(assert (=> bs!1162894 (= lambda!236103 lambda!236102)))

(declare-fun bs!1162895 () Bool)

(assert (= bs!1162895 (and b!4823406 d!1544642)))

(assert (=> bs!1162895 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971191) (= lambda!236103 lambda!236068))))

(declare-fun bs!1162896 () Bool)

(assert (= bs!1162896 (and b!4823406 b!4822980)))

(assert (=> bs!1162896 (= (= (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1970873) (= lambda!236103 lambda!236022))))

(assert (=> b!4823406 true))

(declare-fun lt!1971338 () ListMap!6841)

(declare-fun lambda!236104 () Int)

(assert (=> b!4823406 (= (= lt!1971338 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236104 lambda!236103))))

(assert (=> bs!1162889 (= (= lt!1971338 lt!1971205) (= lambda!236104 lambda!236067))))

(assert (=> bs!1162890 (= (= lt!1971338 lt!1970873) (= lambda!236104 lambda!236101))))

(assert (=> bs!1162891 (= (= lt!1971338 lt!1971072) (= lambda!236104 lambda!236024))))

(assert (=> bs!1162892 (= (= lt!1971338 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236104 lambda!236065))))

(assert (=> bs!1162889 (= (= lt!1971338 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236104 lambda!236066))))

(assert (=> bs!1162893 (= (= lt!1971338 lt!1971058) (= lambda!236104 lambda!236025))))

(assert (=> bs!1162891 (= (= lt!1971338 lt!1970873) (= lambda!236104 lambda!236023))))

(assert (=> bs!1162894 (= (= lt!1971338 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236104 lambda!236102))))

(assert (=> bs!1162895 (= (= lt!1971338 lt!1971191) (= lambda!236104 lambda!236068))))

(assert (=> bs!1162896 (= (= lt!1971338 lt!1970873) (= lambda!236104 lambda!236022))))

(assert (=> b!4823406 true))

(declare-fun bs!1162897 () Bool)

(declare-fun d!1544774 () Bool)

(assert (= bs!1162897 (and d!1544774 b!4823406)))

(declare-fun lt!1971324 () ListMap!6841)

(declare-fun lambda!236105 () Int)

(assert (=> bs!1162897 (= (= lt!1971324 lt!1971338) (= lambda!236105 lambda!236104))))

(assert (=> bs!1162897 (= (= lt!1971324 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236105 lambda!236103))))

(declare-fun bs!1162898 () Bool)

(assert (= bs!1162898 (and d!1544774 b!4823231)))

(assert (=> bs!1162898 (= (= lt!1971324 lt!1971205) (= lambda!236105 lambda!236067))))

(declare-fun bs!1162899 () Bool)

(assert (= bs!1162899 (and d!1544774 d!1544710)))

(assert (=> bs!1162899 (= (= lt!1971324 lt!1970873) (= lambda!236105 lambda!236101))))

(declare-fun bs!1162900 () Bool)

(assert (= bs!1162900 (and d!1544774 b!4822981)))

(assert (=> bs!1162900 (= (= lt!1971324 lt!1971072) (= lambda!236105 lambda!236024))))

(declare-fun bs!1162901 () Bool)

(assert (= bs!1162901 (and d!1544774 b!4823230)))

(assert (=> bs!1162901 (= (= lt!1971324 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236105 lambda!236065))))

(assert (=> bs!1162898 (= (= lt!1971324 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236105 lambda!236066))))

(declare-fun bs!1162902 () Bool)

(assert (= bs!1162902 (and d!1544774 d!1544466)))

(assert (=> bs!1162902 (= (= lt!1971324 lt!1971058) (= lambda!236105 lambda!236025))))

(assert (=> bs!1162900 (= (= lt!1971324 lt!1970873) (= lambda!236105 lambda!236023))))

(declare-fun bs!1162903 () Bool)

(assert (= bs!1162903 (and d!1544774 b!4823405)))

(assert (=> bs!1162903 (= (= lt!1971324 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236105 lambda!236102))))

(declare-fun bs!1162904 () Bool)

(assert (= bs!1162904 (and d!1544774 d!1544642)))

(assert (=> bs!1162904 (= (= lt!1971324 lt!1971191) (= lambda!236105 lambda!236068))))

(declare-fun bs!1162905 () Bool)

(assert (= bs!1162905 (and d!1544774 b!4822980)))

(assert (=> bs!1162905 (= (= lt!1971324 lt!1970873) (= lambda!236105 lambda!236022))))

(assert (=> d!1544774 true))

(declare-fun bm!336231 () Bool)

(declare-fun call!336236 () Unit!142607)

(assert (=> bm!336231 (= call!336236 (lemmaContainsAllItsOwnKeys!984 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun e!3013782 () Bool)

(assert (=> d!1544774 e!3013782))

(declare-fun res!2053178 () Bool)

(assert (=> d!1544774 (=> (not res!2053178) (not e!3013782))))

(assert (=> d!1544774 (= res!2053178 (forall!12586 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) lambda!236105))))

(declare-fun e!3013781 () ListMap!6841)

(assert (=> d!1544774 (= lt!1971324 e!3013781)))

(declare-fun c!821885 () Bool)

(assert (=> d!1544774 (= c!821885 ((_ is Nil!54948) (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> d!1544774 (noDuplicateKeys!2444 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(assert (=> d!1544774 (= (addToMapMapFromBucket!1790 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lt!1971324)))

(declare-fun b!4823404 () Bool)

(assert (=> b!4823404 (= e!3013782 (invariantList!1805 (toList!7464 lt!1971324)))))

(declare-fun bm!336232 () Bool)

(declare-fun call!336238 () Bool)

(assert (=> bm!336232 (= call!336238 (forall!12586 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (ite c!821885 lambda!236102 lambda!236104)))))

(assert (=> b!4823405 (= e!3013781 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun lt!1971323 () Unit!142607)

(assert (=> b!4823405 (= lt!1971323 call!336236)))

(assert (=> b!4823405 call!336238))

(declare-fun lt!1971337 () Unit!142607)

(assert (=> b!4823405 (= lt!1971337 lt!1971323)))

(declare-fun call!336237 () Bool)

(assert (=> b!4823405 call!336237))

(declare-fun lt!1971335 () Unit!142607)

(declare-fun Unit!142675 () Unit!142607)

(assert (=> b!4823405 (= lt!1971335 Unit!142675)))

(assert (=> b!4823406 (= e!3013781 lt!1971338)))

(declare-fun lt!1971332 () ListMap!6841)

(assert (=> b!4823406 (= lt!1971332 (+!2529 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823406 (= lt!1971338 (addToMapMapFromBucket!1790 (t!362568 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (+!2529 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun lt!1971333 () Unit!142607)

(assert (=> b!4823406 (= lt!1971333 call!336236)))

(assert (=> b!4823406 (forall!12586 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lambda!236103)))

(declare-fun lt!1971329 () Unit!142607)

(assert (=> b!4823406 (= lt!1971329 lt!1971333)))

(assert (=> b!4823406 (forall!12586 (toList!7464 lt!1971332) lambda!236104)))

(declare-fun lt!1971343 () Unit!142607)

(declare-fun Unit!142676 () Unit!142607)

(assert (=> b!4823406 (= lt!1971343 Unit!142676)))

(assert (=> b!4823406 call!336237))

(declare-fun lt!1971325 () Unit!142607)

(declare-fun Unit!142677 () Unit!142607)

(assert (=> b!4823406 (= lt!1971325 Unit!142677)))

(declare-fun lt!1971340 () Unit!142607)

(declare-fun Unit!142678 () Unit!142607)

(assert (=> b!4823406 (= lt!1971340 Unit!142678)))

(declare-fun lt!1971334 () Unit!142607)

(assert (=> b!4823406 (= lt!1971334 (forallContained!4370 (toList!7464 lt!1971332) lambda!236104 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823406 (contains!18748 lt!1971332 (_1!32375 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971339 () Unit!142607)

(declare-fun Unit!142679 () Unit!142607)

(assert (=> b!4823406 (= lt!1971339 Unit!142679)))

(assert (=> b!4823406 (contains!18748 lt!1971338 (_1!32375 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971326 () Unit!142607)

(declare-fun Unit!142680 () Unit!142607)

(assert (=> b!4823406 (= lt!1971326 Unit!142680)))

(assert (=> b!4823406 (forall!12586 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) lambda!236104)))

(declare-fun lt!1971327 () Unit!142607)

(declare-fun Unit!142681 () Unit!142607)

(assert (=> b!4823406 (= lt!1971327 Unit!142681)))

(assert (=> b!4823406 (forall!12586 (toList!7464 lt!1971332) lambda!236104)))

(declare-fun lt!1971328 () Unit!142607)

(declare-fun Unit!142682 () Unit!142607)

(assert (=> b!4823406 (= lt!1971328 Unit!142682)))

(declare-fun lt!1971341 () Unit!142607)

(declare-fun Unit!142683 () Unit!142607)

(assert (=> b!4823406 (= lt!1971341 Unit!142683)))

(declare-fun lt!1971330 () Unit!142607)

(assert (=> b!4823406 (= lt!1971330 (addForallContainsKeyThenBeforeAdding!983 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) lt!1971338 (_1!32375 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (_2!32375 (h!61382 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(assert (=> b!4823406 call!336238))

(declare-fun lt!1971342 () Unit!142607)

(assert (=> b!4823406 (= lt!1971342 lt!1971330)))

(assert (=> b!4823406 (forall!12586 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lambda!236104)))

(declare-fun lt!1971336 () Unit!142607)

(declare-fun Unit!142684 () Unit!142607)

(assert (=> b!4823406 (= lt!1971336 Unit!142684)))

(declare-fun res!2053177 () Bool)

(assert (=> b!4823406 (= res!2053177 (forall!12586 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) lambda!236104))))

(declare-fun e!3013780 () Bool)

(assert (=> b!4823406 (=> (not res!2053177) (not e!3013780))))

(assert (=> b!4823406 e!3013780))

(declare-fun lt!1971331 () Unit!142607)

(declare-fun Unit!142685 () Unit!142607)

(assert (=> b!4823406 (= lt!1971331 Unit!142685)))

(declare-fun bm!336233 () Bool)

(assert (=> bm!336233 (= call!336237 (forall!12586 (ite c!821885 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (t!362568 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (ite c!821885 lambda!236102 lambda!236104)))))

(declare-fun b!4823407 () Bool)

(declare-fun res!2053179 () Bool)

(assert (=> b!4823407 (=> (not res!2053179) (not e!3013782))))

(assert (=> b!4823407 (= res!2053179 (forall!12586 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lambda!236105))))

(declare-fun b!4823408 () Bool)

(assert (=> b!4823408 (= e!3013780 (forall!12586 (toList!7464 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lambda!236104))))

(assert (= (and d!1544774 c!821885) b!4823405))

(assert (= (and d!1544774 (not c!821885)) b!4823406))

(assert (= (and b!4823406 res!2053177) b!4823408))

(assert (= (or b!4823405 b!4823406) bm!336233))

(assert (= (or b!4823405 b!4823406) bm!336232))

(assert (= (or b!4823405 b!4823406) bm!336231))

(assert (= (and d!1544774 res!2053178) b!4823407))

(assert (= (and b!4823407 res!2053179) b!4823404))

(declare-fun m!5812312 () Bool)

(assert (=> bm!336232 m!5812312))

(declare-fun m!5812314 () Bool)

(assert (=> b!4823408 m!5812314))

(declare-fun m!5812316 () Bool)

(assert (=> b!4823406 m!5812316))

(declare-fun m!5812318 () Bool)

(assert (=> b!4823406 m!5812318))

(assert (=> b!4823406 m!5811606))

(declare-fun m!5812320 () Bool)

(assert (=> b!4823406 m!5812320))

(declare-fun m!5812322 () Bool)

(assert (=> b!4823406 m!5812322))

(assert (=> b!4823406 m!5812318))

(declare-fun m!5812324 () Bool)

(assert (=> b!4823406 m!5812324))

(declare-fun m!5812326 () Bool)

(assert (=> b!4823406 m!5812326))

(declare-fun m!5812328 () Bool)

(assert (=> b!4823406 m!5812328))

(declare-fun m!5812330 () Bool)

(assert (=> b!4823406 m!5812330))

(assert (=> b!4823406 m!5812322))

(declare-fun m!5812332 () Bool)

(assert (=> b!4823406 m!5812332))

(assert (=> b!4823406 m!5811606))

(assert (=> b!4823406 m!5812324))

(assert (=> b!4823406 m!5812314))

(declare-fun m!5812334 () Bool)

(assert (=> d!1544774 m!5812334))

(assert (=> d!1544774 m!5811806))

(declare-fun m!5812336 () Bool)

(assert (=> b!4823407 m!5812336))

(declare-fun m!5812338 () Bool)

(assert (=> bm!336233 m!5812338))

(declare-fun m!5812340 () Bool)

(assert (=> b!4823404 m!5812340))

(assert (=> bm!336231 m!5811606))

(declare-fun m!5812342 () Bool)

(assert (=> bm!336231 m!5812342))

(assert (=> b!4822981 d!1544774))

(declare-fun d!1544776 () Bool)

(declare-fun res!2053180 () Bool)

(declare-fun e!3013783 () Bool)

(assert (=> d!1544776 (=> res!2053180 e!3013783)))

(assert (=> d!1544776 (= res!2053180 ((_ is Nil!54948) (toList!7464 lt!1970873)))))

(assert (=> d!1544776 (= (forall!12586 (toList!7464 lt!1970873) lambda!236023) e!3013783)))

(declare-fun b!4823409 () Bool)

(declare-fun e!3013784 () Bool)

(assert (=> b!4823409 (= e!3013783 e!3013784)))

(declare-fun res!2053181 () Bool)

(assert (=> b!4823409 (=> (not res!2053181) (not e!3013784))))

(assert (=> b!4823409 (= res!2053181 (dynLambda!22203 lambda!236023 (h!61382 (toList!7464 lt!1970873))))))

(declare-fun b!4823410 () Bool)

(assert (=> b!4823410 (= e!3013784 (forall!12586 (t!362568 (toList!7464 lt!1970873)) lambda!236023))))

(assert (= (and d!1544776 (not res!2053180)) b!4823409))

(assert (= (and b!4823409 res!2053181) b!4823410))

(declare-fun b_lambda!189419 () Bool)

(assert (=> (not b_lambda!189419) (not b!4823409)))

(declare-fun m!5812344 () Bool)

(assert (=> b!4823409 m!5812344))

(declare-fun m!5812346 () Bool)

(assert (=> b!4823410 m!5812346))

(assert (=> b!4822981 d!1544776))

(declare-fun b!4823411 () Bool)

(declare-fun e!3013785 () List!55075)

(assert (=> b!4823411 (= e!3013785 (keys!20211 lt!1971066))))

(declare-fun bm!336234 () Bool)

(declare-fun call!336239 () Bool)

(assert (=> bm!336234 (= call!336239 (contains!18751 e!3013785 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun c!821887 () Bool)

(declare-fun c!821886 () Bool)

(assert (=> bm!336234 (= c!821887 c!821886)))

(declare-fun b!4823412 () Bool)

(declare-fun e!3013789 () Unit!142607)

(declare-fun e!3013788 () Unit!142607)

(assert (=> b!4823412 (= e!3013789 e!3013788)))

(declare-fun c!821888 () Bool)

(assert (=> b!4823412 (= c!821888 call!336239)))

(declare-fun b!4823413 () Bool)

(declare-fun Unit!142695 () Unit!142607)

(assert (=> b!4823413 (= e!3013788 Unit!142695)))

(declare-fun b!4823414 () Bool)

(declare-fun e!3013786 () Bool)

(assert (=> b!4823414 (= e!3013786 (contains!18751 (keys!20211 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun b!4823415 () Bool)

(assert (=> b!4823415 (= e!3013785 (getKeysList!1152 (toList!7464 lt!1971066)))))

(declare-fun b!4823416 () Bool)

(declare-fun e!3013787 () Bool)

(assert (=> b!4823416 (= e!3013787 (not (contains!18751 (keys!20211 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823417 () Bool)

(assert (=> b!4823417 false))

(declare-fun lt!1971345 () Unit!142607)

(declare-fun lt!1971344 () Unit!142607)

(assert (=> b!4823417 (= lt!1971345 lt!1971344)))

(assert (=> b!4823417 (containsKey!4350 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> b!4823417 (= lt!1971344 (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun Unit!142698 () Unit!142607)

(assert (=> b!4823417 (= e!3013788 Unit!142698)))

(declare-fun b!4823418 () Bool)

(declare-fun e!3013790 () Bool)

(assert (=> b!4823418 (= e!3013790 e!3013786)))

(declare-fun res!2053184 () Bool)

(assert (=> b!4823418 (=> (not res!2053184) (not e!3013786))))

(assert (=> b!4823418 (= res!2053184 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823419 () Bool)

(declare-fun lt!1971349 () Unit!142607)

(assert (=> b!4823419 (= e!3013789 lt!1971349)))

(declare-fun lt!1971346 () Unit!142607)

(assert (=> b!4823419 (= lt!1971346 (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823419 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971350 () Unit!142607)

(assert (=> b!4823419 (= lt!1971350 lt!1971346)))

(assert (=> b!4823419 (= lt!1971349 (lemmaInListThenGetKeysListContains!1147 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823419 call!336239))

(declare-fun d!1544778 () Bool)

(assert (=> d!1544778 e!3013790))

(declare-fun res!2053183 () Bool)

(assert (=> d!1544778 (=> res!2053183 e!3013790)))

(assert (=> d!1544778 (= res!2053183 e!3013787)))

(declare-fun res!2053182 () Bool)

(assert (=> d!1544778 (=> (not res!2053182) (not e!3013787))))

(declare-fun lt!1971351 () Bool)

(assert (=> d!1544778 (= res!2053182 (not lt!1971351))))

(declare-fun lt!1971348 () Bool)

(assert (=> d!1544778 (= lt!1971351 lt!1971348)))

(declare-fun lt!1971347 () Unit!142607)

(assert (=> d!1544778 (= lt!1971347 e!3013789)))

(assert (=> d!1544778 (= c!821886 lt!1971348)))

(assert (=> d!1544778 (= lt!1971348 (containsKey!4350 (toList!7464 lt!1971066) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> d!1544778 (= (contains!18748 lt!1971066 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lt!1971351)))

(assert (= (and d!1544778 c!821886) b!4823419))

(assert (= (and d!1544778 (not c!821886)) b!4823412))

(assert (= (and b!4823412 c!821888) b!4823417))

(assert (= (and b!4823412 (not c!821888)) b!4823413))

(assert (= (or b!4823419 b!4823412) bm!336234))

(assert (= (and bm!336234 c!821887) b!4823415))

(assert (= (and bm!336234 (not c!821887)) b!4823411))

(assert (= (and d!1544778 res!2053182) b!4823416))

(assert (= (and d!1544778 (not res!2053183)) b!4823418))

(assert (= (and b!4823418 res!2053184) b!4823414))

(declare-fun m!5812348 () Bool)

(assert (=> b!4823418 m!5812348))

(assert (=> b!4823418 m!5812348))

(declare-fun m!5812350 () Bool)

(assert (=> b!4823418 m!5812350))

(declare-fun m!5812352 () Bool)

(assert (=> b!4823417 m!5812352))

(declare-fun m!5812354 () Bool)

(assert (=> b!4823417 m!5812354))

(declare-fun m!5812356 () Bool)

(assert (=> b!4823419 m!5812356))

(assert (=> b!4823419 m!5812348))

(assert (=> b!4823419 m!5812348))

(assert (=> b!4823419 m!5812350))

(declare-fun m!5812358 () Bool)

(assert (=> b!4823419 m!5812358))

(declare-fun m!5812360 () Bool)

(assert (=> bm!336234 m!5812360))

(assert (=> d!1544778 m!5812352))

(declare-fun m!5812362 () Bool)

(assert (=> b!4823411 m!5812362))

(declare-fun m!5812364 () Bool)

(assert (=> b!4823415 m!5812364))

(assert (=> b!4823416 m!5812362))

(assert (=> b!4823416 m!5812362))

(declare-fun m!5812366 () Bool)

(assert (=> b!4823416 m!5812366))

(assert (=> b!4823414 m!5812362))

(assert (=> b!4823414 m!5812362))

(assert (=> b!4823414 m!5812366))

(assert (=> b!4822981 d!1544778))

(declare-fun b!4823420 () Bool)

(declare-fun e!3013791 () List!55075)

(assert (=> b!4823420 (= e!3013791 (keys!20211 lt!1971072))))

(declare-fun bm!336235 () Bool)

(declare-fun call!336240 () Bool)

(assert (=> bm!336235 (= call!336240 (contains!18751 e!3013791 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun c!821890 () Bool)

(declare-fun c!821889 () Bool)

(assert (=> bm!336235 (= c!821890 c!821889)))

(declare-fun b!4823421 () Bool)

(declare-fun e!3013795 () Unit!142607)

(declare-fun e!3013794 () Unit!142607)

(assert (=> b!4823421 (= e!3013795 e!3013794)))

(declare-fun c!821891 () Bool)

(assert (=> b!4823421 (= c!821891 call!336240)))

(declare-fun b!4823422 () Bool)

(declare-fun Unit!142699 () Unit!142607)

(assert (=> b!4823422 (= e!3013794 Unit!142699)))

(declare-fun b!4823423 () Bool)

(declare-fun e!3013792 () Bool)

(assert (=> b!4823423 (= e!3013792 (contains!18751 (keys!20211 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun b!4823424 () Bool)

(assert (=> b!4823424 (= e!3013791 (getKeysList!1152 (toList!7464 lt!1971072)))))

(declare-fun b!4823425 () Bool)

(declare-fun e!3013793 () Bool)

(assert (=> b!4823425 (= e!3013793 (not (contains!18751 (keys!20211 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823426 () Bool)

(assert (=> b!4823426 false))

(declare-fun lt!1971353 () Unit!142607)

(declare-fun lt!1971352 () Unit!142607)

(assert (=> b!4823426 (= lt!1971353 lt!1971352)))

(assert (=> b!4823426 (containsKey!4350 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(assert (=> b!4823426 (= lt!1971352 (lemmaInGetKeysListThenContainsKey!1152 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun Unit!142700 () Unit!142607)

(assert (=> b!4823426 (= e!3013794 Unit!142700)))

(declare-fun b!4823427 () Bool)

(declare-fun e!3013796 () Bool)

(assert (=> b!4823427 (= e!3013796 e!3013792)))

(declare-fun res!2053187 () Bool)

(assert (=> b!4823427 (=> (not res!2053187) (not e!3013792))))

(assert (=> b!4823427 (= res!2053187 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))))

(declare-fun b!4823428 () Bool)

(declare-fun lt!1971357 () Unit!142607)

(assert (=> b!4823428 (= e!3013795 lt!1971357)))

(declare-fun lt!1971354 () Unit!142607)

(assert (=> b!4823428 (= lt!1971354 (lemmaContainsKeyImpliesGetValueByKeyDefined!2392 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823428 (isDefined!10595 (getValueByKey!2607 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun lt!1971358 () Unit!142607)

(assert (=> b!4823428 (= lt!1971358 lt!1971354)))

(assert (=> b!4823428 (= lt!1971357 (lemmaInListThenGetKeysListContains!1147 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> b!4823428 call!336240))

(declare-fun d!1544780 () Bool)

(assert (=> d!1544780 e!3013796))

(declare-fun res!2053186 () Bool)

(assert (=> d!1544780 (=> res!2053186 e!3013796)))

(assert (=> d!1544780 (= res!2053186 e!3013793)))

(declare-fun res!2053185 () Bool)

(assert (=> d!1544780 (=> (not res!2053185) (not e!3013793))))

(declare-fun lt!1971359 () Bool)

(assert (=> d!1544780 (= res!2053185 (not lt!1971359))))

(declare-fun lt!1971356 () Bool)

(assert (=> d!1544780 (= lt!1971359 lt!1971356)))

(declare-fun lt!1971355 () Unit!142607)

(assert (=> d!1544780 (= lt!1971355 e!3013795)))

(assert (=> d!1544780 (= c!821889 lt!1971356)))

(assert (=> d!1544780 (= lt!1971356 (containsKey!4350 (toList!7464 lt!1971072) (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> d!1544780 (= (contains!18748 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lt!1971359)))

(assert (= (and d!1544780 c!821889) b!4823428))

(assert (= (and d!1544780 (not c!821889)) b!4823421))

(assert (= (and b!4823421 c!821891) b!4823426))

(assert (= (and b!4823421 (not c!821891)) b!4823422))

(assert (= (or b!4823428 b!4823421) bm!336235))

(assert (= (and bm!336235 c!821890) b!4823424))

(assert (= (and bm!336235 (not c!821890)) b!4823420))

(assert (= (and d!1544780 res!2053185) b!4823425))

(assert (= (and d!1544780 (not res!2053186)) b!4823427))

(assert (= (and b!4823427 res!2053187) b!4823423))

(declare-fun m!5812368 () Bool)

(assert (=> b!4823427 m!5812368))

(assert (=> b!4823427 m!5812368))

(declare-fun m!5812370 () Bool)

(assert (=> b!4823427 m!5812370))

(declare-fun m!5812372 () Bool)

(assert (=> b!4823426 m!5812372))

(declare-fun m!5812374 () Bool)

(assert (=> b!4823426 m!5812374))

(declare-fun m!5812376 () Bool)

(assert (=> b!4823428 m!5812376))

(assert (=> b!4823428 m!5812368))

(assert (=> b!4823428 m!5812368))

(assert (=> b!4823428 m!5812370))

(declare-fun m!5812378 () Bool)

(assert (=> b!4823428 m!5812378))

(declare-fun m!5812380 () Bool)

(assert (=> bm!336235 m!5812380))

(assert (=> d!1544780 m!5812372))

(declare-fun m!5812382 () Bool)

(assert (=> b!4823420 m!5812382))

(declare-fun m!5812384 () Bool)

(assert (=> b!4823424 m!5812384))

(assert (=> b!4823425 m!5812382))

(assert (=> b!4823425 m!5812382))

(declare-fun m!5812386 () Bool)

(assert (=> b!4823425 m!5812386))

(assert (=> b!4823423 m!5812382))

(assert (=> b!4823423 m!5812382))

(assert (=> b!4823423 m!5812386))

(assert (=> b!4822981 d!1544780))

(declare-fun bs!1162906 () Bool)

(declare-fun d!1544782 () Bool)

(assert (= bs!1162906 (and d!1544782 b!4823406)))

(declare-fun lambda!236110 () Int)

(assert (=> bs!1162906 (= (= lt!1971072 lt!1971338) (= lambda!236110 lambda!236104))))

(assert (=> bs!1162906 (= (= lt!1971072 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236110 lambda!236103))))

(declare-fun bs!1162907 () Bool)

(assert (= bs!1162907 (and d!1544782 b!4823231)))

(assert (=> bs!1162907 (= (= lt!1971072 lt!1971205) (= lambda!236110 lambda!236067))))

(declare-fun bs!1162908 () Bool)

(assert (= bs!1162908 (and d!1544782 d!1544710)))

(assert (=> bs!1162908 (= (= lt!1971072 lt!1970873) (= lambda!236110 lambda!236101))))

(declare-fun bs!1162909 () Bool)

(assert (= bs!1162909 (and d!1544782 b!4822981)))

(assert (=> bs!1162909 (= lambda!236110 lambda!236024)))

(declare-fun bs!1162910 () Bool)

(assert (= bs!1162910 (and d!1544782 b!4823230)))

(assert (=> bs!1162910 (= (= lt!1971072 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236110 lambda!236065))))

(assert (=> bs!1162907 (= (= lt!1971072 (extractMap!2672 (t!362569 (t!362569 (toList!7463 lm!2280))))) (= lambda!236110 lambda!236066))))

(declare-fun bs!1162911 () Bool)

(assert (= bs!1162911 (and d!1544782 d!1544466)))

(assert (=> bs!1162911 (= (= lt!1971072 lt!1971058) (= lambda!236110 lambda!236025))))

(assert (=> bs!1162909 (= (= lt!1971072 lt!1970873) (= lambda!236110 lambda!236023))))

(declare-fun bs!1162912 () Bool)

(assert (= bs!1162912 (and d!1544782 d!1544774)))

(assert (=> bs!1162912 (= (= lt!1971072 lt!1971324) (= lambda!236110 lambda!236105))))

(declare-fun bs!1162913 () Bool)

(assert (= bs!1162913 (and d!1544782 b!4823405)))

(assert (=> bs!1162913 (= (= lt!1971072 (+!2529 lt!1970873 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) (= lambda!236110 lambda!236102))))

(declare-fun bs!1162914 () Bool)

(assert (= bs!1162914 (and d!1544782 d!1544642)))

(assert (=> bs!1162914 (= (= lt!1971072 lt!1971191) (= lambda!236110 lambda!236068))))

(declare-fun bs!1162915 () Bool)

(assert (= bs!1162915 (and d!1544782 b!4822980)))

(assert (=> bs!1162915 (= (= lt!1971072 lt!1970873) (= lambda!236110 lambda!236022))))

(assert (=> d!1544782 true))

(assert (=> d!1544782 (forall!12586 (toList!7464 lt!1970873) lambda!236110)))

(declare-fun lt!1971362 () Unit!142607)

(declare-fun choose!35065 (ListMap!6841 ListMap!6841 K!16634 V!16880) Unit!142607)

(assert (=> d!1544782 (= lt!1971362 (choose!35065 lt!1970873 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> d!1544782 (forall!12586 (toList!7464 (+!2529 lt!1970873 (tuple2!58163 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))) lambda!236110)))

(assert (=> d!1544782 (= (addForallContainsKeyThenBeforeAdding!983 lt!1970873 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (_2!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))) lt!1971362)))

(declare-fun bs!1162916 () Bool)

(assert (= bs!1162916 d!1544782))

(declare-fun m!5812388 () Bool)

(assert (=> bs!1162916 m!5812388))

(declare-fun m!5812390 () Bool)

(assert (=> bs!1162916 m!5812390))

(declare-fun m!5812392 () Bool)

(assert (=> bs!1162916 m!5812392))

(declare-fun m!5812394 () Bool)

(assert (=> bs!1162916 m!5812394))

(assert (=> b!4822981 d!1544782))

(declare-fun d!1544784 () Bool)

(assert (=> d!1544784 (= (tail!9398 (toList!7463 lm!2280)) (t!362569 (toList!7463 lm!2280)))))

(assert (=> d!1544504 d!1544784))

(declare-fun bs!1162917 () Bool)

(declare-fun b!4823437 () Bool)

(assert (= bs!1162917 (and b!4823437 b!4823304)))

(declare-fun lambda!236111 () Int)

(assert (=> bs!1162917 (= (= (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873)))) (= lambda!236111 lambda!236089))))

(declare-fun bs!1162918 () Bool)

(assert (= bs!1162918 (and b!4823437 b!4823297)))

(assert (=> bs!1162918 (= (= (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (toList!7464 lt!1970873)) (= lambda!236111 lambda!236090))))

(declare-fun bs!1162919 () Bool)

(assert (= bs!1162919 (and b!4823437 b!4823303)))

(assert (=> bs!1162919 (= (= (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 lt!1970873))) (= lambda!236111 lambda!236088))))

(declare-fun bs!1162920 () Bool)

(assert (= bs!1162920 (and b!4823437 b!4823147)))

(assert (=> bs!1162920 (= (= (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236111 lambda!236063))))

(declare-fun bs!1162921 () Bool)

(assert (= bs!1162921 (and b!4823437 b!4823351)))

(assert (=> bs!1162921 (= (= (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (toList!7464 lt!1970873)) (= lambda!236111 lambda!236092))))

(assert (=> b!4823437 true))

(declare-fun bs!1162922 () Bool)

(declare-fun b!4823438 () Bool)

(assert (= bs!1162922 (and b!4823438 b!4823437)))

(declare-fun lambda!236112 () Int)

(assert (=> bs!1162922 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (= lambda!236112 lambda!236111))))

(declare-fun bs!1162923 () Bool)

(assert (= bs!1162923 (and b!4823438 b!4823304)))

(assert (=> bs!1162923 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873)))) (= lambda!236112 lambda!236089))))

(declare-fun bs!1162924 () Bool)

(assert (= bs!1162924 (and b!4823438 b!4823297)))

(assert (=> bs!1162924 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (toList!7464 lt!1970873)) (= lambda!236112 lambda!236090))))

(declare-fun bs!1162925 () Bool)

(assert (= bs!1162925 (and b!4823438 b!4823303)))

(assert (=> bs!1162925 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (t!362568 (toList!7464 lt!1970873))) (= lambda!236112 lambda!236088))))

(declare-fun bs!1162926 () Bool)

(assert (= bs!1162926 (and b!4823438 b!4823147)))

(assert (=> bs!1162926 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (= lambda!236112 lambda!236063))))

(declare-fun bs!1162927 () Bool)

(assert (= bs!1162927 (and b!4823438 b!4823351)))

(assert (=> bs!1162927 (= (= (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (toList!7464 lt!1970873)) (= lambda!236112 lambda!236092))))

(assert (=> b!4823438 true))

(declare-fun bs!1162928 () Bool)

(declare-fun b!4823431 () Bool)

(assert (= bs!1162928 (and b!4823431 b!4823437)))

(declare-fun lambda!236113 () Int)

(assert (=> bs!1162928 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (= lambda!236113 lambda!236111))))

(declare-fun bs!1162929 () Bool)

(assert (= bs!1162929 (and b!4823431 b!4823304)))

(assert (=> bs!1162929 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (Cons!54948 (h!61382 (toList!7464 lt!1970873)) (t!362568 (toList!7464 lt!1970873)))) (= lambda!236113 lambda!236089))))

(declare-fun bs!1162930 () Bool)

(assert (= bs!1162930 (and b!4823431 b!4823297)))

(assert (=> bs!1162930 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (toList!7464 lt!1970873)) (= lambda!236113 lambda!236090))))

(declare-fun bs!1162931 () Bool)

(assert (= bs!1162931 (and b!4823431 b!4823438)))

(assert (=> bs!1162931 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (Cons!54948 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))) (= lambda!236113 lambda!236112))))

(declare-fun bs!1162932 () Bool)

(assert (= bs!1162932 (and b!4823431 b!4823303)))

(assert (=> bs!1162932 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (t!362568 (toList!7464 lt!1970873))) (= lambda!236113 lambda!236088))))

(declare-fun bs!1162933 () Bool)

(assert (= bs!1162933 (and b!4823431 b!4823147)))

(assert (=> bs!1162933 (= lambda!236113 lambda!236063)))

(declare-fun bs!1162934 () Bool)

(assert (= bs!1162934 (and b!4823431 b!4823351)))

(assert (=> bs!1162934 (= (= (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) (toList!7464 lt!1970873)) (= lambda!236113 lambda!236092))))

(assert (=> b!4823431 true))

(declare-fun bs!1162935 () Bool)

(declare-fun b!4823434 () Bool)

(assert (= bs!1162935 (and b!4823434 b!4823148)))

(declare-fun lambda!236114 () Int)

(assert (=> bs!1162935 (= lambda!236114 lambda!236064)))

(declare-fun bs!1162936 () Bool)

(assert (= bs!1162936 (and b!4823434 b!4823300)))

(assert (=> bs!1162936 (= lambda!236114 lambda!236091)))

(declare-fun bs!1162937 () Bool)

(assert (= bs!1162937 (and b!4823434 b!4823352)))

(assert (=> bs!1162937 (= lambda!236114 lambda!236093)))

(declare-fun b!4823430 () Bool)

(declare-fun res!2053188 () Bool)

(declare-fun e!3013800 () Bool)

(assert (=> b!4823430 (=> (not res!2053188) (not e!3013800))))

(declare-fun lt!1971364 () List!55075)

(assert (=> b!4823430 (= res!2053188 (= (length!764 lt!1971364) (length!765 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))))

(declare-fun res!2053189 () Bool)

(assert (=> b!4823431 (=> (not res!2053189) (not e!3013800))))

(assert (=> b!4823431 (= res!2053189 (forall!12588 lt!1971364 lambda!236113))))

(declare-fun b!4823432 () Bool)

(declare-fun e!3013797 () List!55075)

(assert (=> b!4823432 (= e!3013797 Nil!54951)))

(declare-fun d!1544786 () Bool)

(assert (=> d!1544786 e!3013800))

(declare-fun res!2053190 () Bool)

(assert (=> d!1544786 (=> (not res!2053190) (not e!3013800))))

(assert (=> d!1544786 (= res!2053190 (noDuplicate!954 lt!1971364))))

(assert (=> d!1544786 (= lt!1971364 e!3013797)))

(declare-fun c!821892 () Bool)

(assert (=> d!1544786 (= c!821892 ((_ is Cons!54948) (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))

(assert (=> d!1544786 (invariantList!1805 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))

(assert (=> d!1544786 (= (getKeysList!1152 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) lt!1971364)))

(declare-fun b!4823433 () Bool)

(declare-fun e!3013799 () Unit!142607)

(declare-fun Unit!142703 () Unit!142607)

(assert (=> b!4823433 (= e!3013799 Unit!142703)))

(assert (=> b!4823434 (= e!3013800 (= (content!9813 lt!1971364) (content!9813 (map!12569 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)) lambda!236114))))))

(declare-fun b!4823435 () Bool)

(assert (=> b!4823435 false))

(declare-fun e!3013798 () Unit!142607)

(declare-fun Unit!142704 () Unit!142607)

(assert (=> b!4823435 (= e!3013798 Unit!142704)))

(declare-fun b!4823436 () Bool)

(declare-fun Unit!142705 () Unit!142607)

(assert (=> b!4823436 (= e!3013798 Unit!142705)))

(assert (=> b!4823437 false))

(declare-fun lt!1971368 () Unit!142607)

(assert (=> b!4823437 (= lt!1971368 (forallContained!4372 (getKeysList!1152 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) lambda!236111 (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))))

(declare-fun Unit!142706 () Unit!142607)

(assert (=> b!4823437 (= e!3013799 Unit!142706)))

(assert (=> b!4823438 (= e!3013797 (Cons!54951 (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (getKeysList!1152 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))))

(declare-fun c!821894 () Bool)

(assert (=> b!4823438 (= c!821894 (containsKey!4350 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))))

(declare-fun lt!1971365 () Unit!142607)

(assert (=> b!4823438 (= lt!1971365 e!3013798)))

(declare-fun c!821893 () Bool)

(assert (=> b!4823438 (= c!821893 (contains!18751 (getKeysList!1152 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))) (_1!32375 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))))))))

(declare-fun lt!1971363 () Unit!142607)

(assert (=> b!4823438 (= lt!1971363 e!3013799)))

(declare-fun lt!1971366 () List!55075)

(assert (=> b!4823438 (= lt!1971366 (getKeysList!1152 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))))

(declare-fun lt!1971367 () Unit!142607)

(assert (=> b!4823438 (= lt!1971367 (lemmaForallContainsAddHeadPreserves!369 (t!362568 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873))) lt!1971366 (h!61382 (toList!7464 (addToMapMapFromBucket!1790 (_2!32376 (h!61383 (toList!7463 lm!2280))) lt!1970873)))))))

(assert (=> b!4823438 (forall!12588 lt!1971366 lambda!236112)))

(declare-fun lt!1971369 () Unit!142607)

(assert (=> b!4823438 (= lt!1971369 lt!1971367)))

(assert (= (and d!1544786 c!821892) b!4823438))

(assert (= (and d!1544786 (not c!821892)) b!4823432))

(assert (= (and b!4823438 c!821894) b!4823435))

(assert (= (and b!4823438 (not c!821894)) b!4823436))

(assert (= (and b!4823438 c!821893) b!4823437))

(assert (= (and b!4823438 (not c!821893)) b!4823433))

(assert (= (and d!1544786 res!2053190) b!4823430))

(assert (= (and b!4823430 res!2053188) b!4823431))

(assert (= (and b!4823431 res!2053189) b!4823434))

(declare-fun m!5812396 () Bool)

(assert (=> b!4823431 m!5812396))

(declare-fun m!5812398 () Bool)

(assert (=> d!1544786 m!5812398))

(assert (=> d!1544786 m!5812248))

(declare-fun m!5812400 () Bool)

(assert (=> b!4823434 m!5812400))

(declare-fun m!5812402 () Bool)

(assert (=> b!4823434 m!5812402))

(assert (=> b!4823434 m!5812402))

(declare-fun m!5812404 () Bool)

(assert (=> b!4823434 m!5812404))

(declare-fun m!5812406 () Bool)

(assert (=> b!4823437 m!5812406))

(assert (=> b!4823437 m!5812406))

(declare-fun m!5812408 () Bool)

(assert (=> b!4823437 m!5812408))

(declare-fun m!5812410 () Bool)

(assert (=> b!4823430 m!5812410))

(assert (=> b!4823430 m!5811846))

(declare-fun m!5812412 () Bool)

(assert (=> b!4823438 m!5812412))

(declare-fun m!5812414 () Bool)

(assert (=> b!4823438 m!5812414))

(declare-fun m!5812416 () Bool)

(assert (=> b!4823438 m!5812416))

(assert (=> b!4823438 m!5812406))

(declare-fun m!5812418 () Bool)

(assert (=> b!4823438 m!5812418))

(assert (=> b!4823438 m!5812406))

(assert (=> b!4822993 d!1544786))

(declare-fun d!1544788 () Bool)

(declare-fun res!2053191 () Bool)

(declare-fun e!3013801 () Bool)

(assert (=> d!1544788 (=> res!2053191 e!3013801)))

(assert (=> d!1544788 (= res!2053191 ((_ is Nil!54948) (toList!7464 lt!1970873)))))

(assert (=> d!1544788 (= (forall!12586 (toList!7464 lt!1970873) (ite c!821813 lambda!236022 lambda!236024)) e!3013801)))

(declare-fun b!4823439 () Bool)

(declare-fun e!3013802 () Bool)

(assert (=> b!4823439 (= e!3013801 e!3013802)))

(declare-fun res!2053192 () Bool)

(assert (=> b!4823439 (=> (not res!2053192) (not e!3013802))))

(assert (=> b!4823439 (= res!2053192 (dynLambda!22203 (ite c!821813 lambda!236022 lambda!236024) (h!61382 (toList!7464 lt!1970873))))))

(declare-fun b!4823440 () Bool)

(assert (=> b!4823440 (= e!3013802 (forall!12586 (t!362568 (toList!7464 lt!1970873)) (ite c!821813 lambda!236022 lambda!236024)))))

(assert (= (and d!1544788 (not res!2053191)) b!4823439))

(assert (= (and b!4823439 res!2053192) b!4823440))

(declare-fun b_lambda!189421 () Bool)

(assert (=> (not b_lambda!189421) (not b!4823439)))

(declare-fun m!5812420 () Bool)

(assert (=> b!4823439 m!5812420))

(declare-fun m!5812422 () Bool)

(assert (=> b!4823440 m!5812422))

(assert (=> bm!336217 d!1544788))

(declare-fun d!1544790 () Bool)

(declare-fun isEmpty!29642 (Option!13481) Bool)

(assert (=> d!1544790 (= (isDefined!10596 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870)) (not (isEmpty!29642 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870))))))

(declare-fun bs!1162938 () Bool)

(assert (= bs!1162938 d!1544790))

(assert (=> bs!1162938 m!5811680))

(declare-fun m!5812424 () Bool)

(assert (=> bs!1162938 m!5812424))

(assert (=> b!4823024 d!1544790))

(declare-fun b!4823441 () Bool)

(declare-fun e!3013803 () Option!13481)

(assert (=> b!4823441 (= e!3013803 (Some!13480 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(declare-fun b!4823444 () Bool)

(declare-fun e!3013804 () Option!13481)

(assert (=> b!4823444 (= e!3013804 None!13480)))

(declare-fun b!4823442 () Bool)

(assert (=> b!4823442 (= e!3013803 e!3013804)))

(declare-fun c!821896 () Bool)

(assert (=> b!4823442 (= c!821896 (and ((_ is Cons!54949) (toList!7463 lm!2280)) (not (= (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870))))))

(declare-fun b!4823443 () Bool)

(assert (=> b!4823443 (= e!3013804 (getValueByKey!2608 (t!362569 (toList!7463 lm!2280)) lt!1970870))))

(declare-fun d!1544792 () Bool)

(declare-fun c!821895 () Bool)

(assert (=> d!1544792 (= c!821895 (and ((_ is Cons!54949) (toList!7463 lm!2280)) (= (_1!32376 (h!61383 (toList!7463 lm!2280))) lt!1970870)))))

(assert (=> d!1544792 (= (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870) e!3013803)))

(assert (= (and d!1544792 c!821895) b!4823441))

(assert (= (and d!1544792 (not c!821895)) b!4823442))

(assert (= (and b!4823442 c!821896) b!4823443))

(assert (= (and b!4823442 (not c!821896)) b!4823444))

(declare-fun m!5812426 () Bool)

(assert (=> b!4823443 m!5812426))

(assert (=> b!4823024 d!1544792))

(declare-fun d!1544794 () Bool)

(declare-fun res!2053193 () Bool)

(declare-fun e!3013805 () Bool)

(assert (=> d!1544794 (=> res!2053193 e!3013805)))

(assert (=> d!1544794 (= res!2053193 ((_ is Nil!54949) (toList!7463 lm!2280)))))

(assert (=> d!1544794 (= (forall!12584 (toList!7463 lm!2280) lambda!235955) e!3013805)))

(declare-fun b!4823445 () Bool)

(declare-fun e!3013806 () Bool)

(assert (=> b!4823445 (= e!3013805 e!3013806)))

(declare-fun res!2053194 () Bool)

(assert (=> b!4823445 (=> (not res!2053194) (not e!3013806))))

(assert (=> b!4823445 (= res!2053194 (dynLambda!22202 lambda!235955 (h!61383 (toList!7463 lm!2280))))))

(declare-fun b!4823446 () Bool)

(assert (=> b!4823446 (= e!3013806 (forall!12584 (t!362569 (toList!7463 lm!2280)) lambda!235955))))

(assert (= (and d!1544794 (not res!2053193)) b!4823445))

(assert (= (and b!4823445 res!2053194) b!4823446))

(declare-fun b_lambda!189423 () Bool)

(assert (=> (not b_lambda!189423) (not b!4823445)))

(declare-fun m!5812428 () Bool)

(assert (=> b!4823445 m!5812428))

(declare-fun m!5812430 () Bool)

(assert (=> b!4823446 m!5812430))

(assert (=> d!1544460 d!1544794))

(declare-fun d!1544796 () Bool)

(declare-fun res!2053195 () Bool)

(declare-fun e!3013807 () Bool)

(assert (=> d!1544796 (=> res!2053195 e!3013807)))

(assert (=> d!1544796 (= res!2053195 ((_ is Nil!54948) (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(assert (=> d!1544796 (= (forall!12586 (_2!32376 (h!61383 (toList!7463 lm!2280))) lambda!236025) e!3013807)))

(declare-fun b!4823447 () Bool)

(declare-fun e!3013808 () Bool)

(assert (=> b!4823447 (= e!3013807 e!3013808)))

(declare-fun res!2053196 () Bool)

(assert (=> b!4823447 (=> (not res!2053196) (not e!3013808))))

(assert (=> b!4823447 (= res!2053196 (dynLambda!22203 lambda!236025 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))))))

(declare-fun b!4823448 () Bool)

(assert (=> b!4823448 (= e!3013808 (forall!12586 (t!362568 (_2!32376 (h!61383 (toList!7463 lm!2280)))) lambda!236025))))

(assert (= (and d!1544796 (not res!2053195)) b!4823447))

(assert (= (and b!4823447 res!2053196) b!4823448))

(declare-fun b_lambda!189425 () Bool)

(assert (=> (not b_lambda!189425) (not b!4823447)))

(declare-fun m!5812432 () Bool)

(assert (=> b!4823447 m!5812432))

(declare-fun m!5812434 () Bool)

(assert (=> b!4823448 m!5812434))

(assert (=> d!1544466 d!1544796))

(assert (=> d!1544466 d!1544552))

(assert (=> b!4822901 d!1544628))

(assert (=> b!4822901 d!1544630))

(declare-fun d!1544798 () Bool)

(assert (=> d!1544798 (isDefined!10596 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870))))

(declare-fun lt!1971372 () Unit!142607)

(declare-fun choose!35067 (List!55073 (_ BitVec 64)) Unit!142607)

(assert (=> d!1544798 (= lt!1971372 (choose!35067 (toList!7463 lm!2280) lt!1970870))))

(declare-fun e!3013811 () Bool)

(assert (=> d!1544798 e!3013811))

(declare-fun res!2053199 () Bool)

(assert (=> d!1544798 (=> (not res!2053199) (not e!3013811))))

(assert (=> d!1544798 (= res!2053199 (isStrictlySorted!978 (toList!7463 lm!2280)))))

(assert (=> d!1544798 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2393 (toList!7463 lm!2280) lt!1970870) lt!1971372)))

(declare-fun b!4823451 () Bool)

(assert (=> b!4823451 (= e!3013811 (containsKey!4351 (toList!7463 lm!2280) lt!1970870))))

(assert (= (and d!1544798 res!2053199) b!4823451))

(assert (=> d!1544798 m!5811680))

(assert (=> d!1544798 m!5811680))

(assert (=> d!1544798 m!5811688))

(declare-fun m!5812436 () Bool)

(assert (=> d!1544798 m!5812436))

(assert (=> d!1544798 m!5811676))

(assert (=> b!4823451 m!5811684))

(assert (=> b!4823022 d!1544798))

(assert (=> b!4823022 d!1544790))

(assert (=> b!4823022 d!1544792))

(declare-fun d!1544800 () Bool)

(declare-fun res!2053200 () Bool)

(declare-fun e!3013812 () Bool)

(assert (=> d!1544800 (=> res!2053200 e!3013812)))

(assert (=> d!1544800 (= res!2053200 ((_ is Nil!54949) (toList!7463 lt!1970871)))))

(assert (=> d!1544800 (= (forall!12584 (toList!7463 lt!1970871) lambda!236032) e!3013812)))

(declare-fun b!4823452 () Bool)

(declare-fun e!3013813 () Bool)

(assert (=> b!4823452 (= e!3013812 e!3013813)))

(declare-fun res!2053201 () Bool)

(assert (=> b!4823452 (=> (not res!2053201) (not e!3013813))))

(assert (=> b!4823452 (= res!2053201 (dynLambda!22202 lambda!236032 (h!61383 (toList!7463 lt!1970871))))))

(declare-fun b!4823453 () Bool)

(assert (=> b!4823453 (= e!3013813 (forall!12584 (t!362569 (toList!7463 lt!1970871)) lambda!236032))))

(assert (= (and d!1544800 (not res!2053200)) b!4823452))

(assert (= (and b!4823452 res!2053201) b!4823453))

(declare-fun b_lambda!189427 () Bool)

(assert (=> (not b_lambda!189427) (not b!4823452)))

(declare-fun m!5812438 () Bool)

(assert (=> b!4823452 m!5812438))

(declare-fun m!5812440 () Bool)

(assert (=> b!4823453 m!5812440))

(assert (=> d!1544510 d!1544800))

(assert (=> bs!1162712 d!1544552))

(declare-fun d!1544802 () Bool)

(assert (=> d!1544802 (= (get!18812 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870)) (v!49153 (getValueByKey!2608 (toList!7463 lm!2280) lt!1970870)))))

(assert (=> d!1544518 d!1544802))

(assert (=> d!1544518 d!1544792))

(assert (=> b!4822899 d!1544722))

(assert (=> b!4822899 d!1544708))

(declare-fun b!4823458 () Bool)

(declare-fun e!3013816 () Bool)

(declare-fun tp!1362494 () Bool)

(declare-fun tp_is_empty!34431 () Bool)

(assert (=> b!4823458 (= e!3013816 (and tp_is_empty!34427 tp_is_empty!34431 tp!1362494))))

(assert (=> b!4823029 (= tp!1362485 e!3013816)))

(assert (= (and b!4823029 ((_ is Cons!54948) (_2!32376 (h!61383 (toList!7463 lm!2280))))) b!4823458))

(declare-fun b!4823459 () Bool)

(declare-fun e!3013817 () Bool)

(declare-fun tp!1362495 () Bool)

(declare-fun tp!1362496 () Bool)

(assert (=> b!4823459 (= e!3013817 (and tp!1362495 tp!1362496))))

(assert (=> b!4823029 (= tp!1362486 e!3013817)))

(assert (= (and b!4823029 ((_ is Cons!54949) (t!362569 (toList!7463 lm!2280)))) b!4823459))

(declare-fun b_lambda!189429 () Bool)

(assert (= b_lambda!189381 (or d!1544466 b_lambda!189429)))

(declare-fun bs!1162939 () Bool)

(declare-fun d!1544804 () Bool)

(assert (= bs!1162939 (and d!1544804 d!1544466)))

(assert (=> bs!1162939 (= (dynLambda!22203 lambda!236025 (h!61382 (toList!7464 lt!1970873))) (contains!18748 lt!1971058 (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun m!5812442 () Bool)

(assert (=> bs!1162939 m!5812442))

(assert (=> b!4823373 d!1544804))

(declare-fun b_lambda!189431 () Bool)

(assert (= b_lambda!189417 (or b!4822981 b_lambda!189431)))

(declare-fun bs!1162940 () Bool)

(declare-fun d!1544806 () Bool)

(assert (= bs!1162940 (and d!1544806 b!4822981)))

(assert (=> bs!1162940 (= (dynLambda!22203 lambda!236024 (h!61382 (toList!7464 lt!1971066))) (contains!18748 lt!1971072 (_1!32375 (h!61382 (toList!7464 lt!1971066)))))))

(declare-fun m!5812444 () Bool)

(assert (=> bs!1162940 m!5812444))

(assert (=> b!4823402 d!1544806))

(declare-fun b_lambda!189433 () Bool)

(assert (= b_lambda!189363 (or b!4822981 b_lambda!189433)))

(declare-fun bs!1162941 () Bool)

(declare-fun d!1544808 () Bool)

(assert (= bs!1162941 (and d!1544808 b!4822981)))

(assert (=> bs!1162941 (= (dynLambda!22203 lambda!236024 (h!61382 (toList!7464 lt!1970873))) (contains!18748 lt!1971072 (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun m!5812446 () Bool)

(assert (=> bs!1162941 m!5812446))

(assert (=> b!4823259 d!1544808))

(declare-fun b_lambda!189435 () Bool)

(assert (= b_lambda!189423 (or d!1544460 b_lambda!189435)))

(declare-fun bs!1162942 () Bool)

(declare-fun d!1544810 () Bool)

(assert (= bs!1162942 (and d!1544810 d!1544460)))

(declare-fun allKeysSameHash!2000 (List!55072 (_ BitVec 64) Hashable!7258) Bool)

(assert (=> bs!1162942 (= (dynLambda!22202 lambda!235955 (h!61383 (toList!7463 lm!2280))) (allKeysSameHash!2000 (_2!32376 (h!61383 (toList!7463 lm!2280))) (_1!32376 (h!61383 (toList!7463 lm!2280))) hashF!1509))))

(declare-fun m!5812448 () Bool)

(assert (=> bs!1162942 m!5812448))

(assert (=> b!4823445 d!1544810))

(declare-fun b_lambda!189437 () Bool)

(assert (= b_lambda!189377 (or start!500032 b_lambda!189437)))

(declare-fun bs!1162943 () Bool)

(declare-fun d!1544812 () Bool)

(assert (= bs!1162943 (and d!1544812 start!500032)))

(assert (=> bs!1162943 (= (dynLambda!22202 lambda!235948 (h!61383 (t!362569 (toList!7463 lt!1970871)))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (t!362569 (toList!7463 lt!1970871))))))))

(declare-fun m!5812450 () Bool)

(assert (=> bs!1162943 m!5812450))

(assert (=> b!4823348 d!1544812))

(declare-fun b_lambda!189439 () Bool)

(assert (= b_lambda!189369 (or d!1544502 b_lambda!189439)))

(declare-fun bs!1162944 () Bool)

(declare-fun d!1544814 () Bool)

(assert (= bs!1162944 (and d!1544814 d!1544502)))

(assert (=> bs!1162944 (= (dynLambda!22202 lambda!236031 (h!61383 (t!362569 (toList!7463 lm!2280)))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))

(assert (=> bs!1162944 m!5811986))

(assert (=> b!4823311 d!1544814))

(declare-fun b_lambda!189441 () Bool)

(assert (= b_lambda!189387 (or b!4822981 b_lambda!189441)))

(declare-fun bs!1162945 () Bool)

(declare-fun d!1544816 () Bool)

(assert (= bs!1162945 (and d!1544816 b!4822981)))

(assert (=> bs!1162945 (= (dynLambda!22203 lambda!236024 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (contains!18748 lt!1971072 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(assert (=> bs!1162945 m!5811610))

(assert (=> d!1544736 d!1544816))

(declare-fun b_lambda!189443 () Bool)

(assert (= b_lambda!189427 (or d!1544510 b_lambda!189443)))

(declare-fun bs!1162946 () Bool)

(declare-fun d!1544818 () Bool)

(assert (= bs!1162946 (and d!1544818 d!1544510)))

(assert (=> bs!1162946 (= (dynLambda!22202 lambda!236032 (h!61383 (toList!7463 lt!1970871))) (allKeysSameHash!2000 (_2!32376 (h!61383 (toList!7463 lt!1970871))) (_1!32376 (h!61383 (toList!7463 lt!1970871))) hashF!1509))))

(declare-fun m!5812452 () Bool)

(assert (=> bs!1162946 m!5812452))

(assert (=> b!4823452 d!1544818))

(declare-fun b_lambda!189445 () Bool)

(assert (= b_lambda!189419 (or b!4822981 b_lambda!189445)))

(declare-fun bs!1162947 () Bool)

(declare-fun d!1544820 () Bool)

(assert (= bs!1162947 (and d!1544820 b!4822981)))

(assert (=> bs!1162947 (= (dynLambda!22203 lambda!236023 (h!61382 (toList!7464 lt!1970873))) (contains!18748 lt!1970873 (_1!32375 (h!61382 (toList!7464 lt!1970873)))))))

(declare-fun m!5812454 () Bool)

(assert (=> bs!1162947 m!5812454))

(assert (=> b!4823409 d!1544820))

(declare-fun b_lambda!189447 () Bool)

(assert (= b_lambda!189339 (or d!1544496 b_lambda!189447)))

(declare-fun bs!1162948 () Bool)

(declare-fun d!1544822 () Bool)

(assert (= bs!1162948 (and d!1544822 d!1544496)))

(assert (=> bs!1162948 (= (dynLambda!22202 lambda!236028 (h!61383 (toList!7463 lm!2280))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))

(assert (=> bs!1162948 m!5811618))

(assert (=> b!4823106 d!1544822))

(declare-fun b_lambda!189449 () Bool)

(assert (= b_lambda!189345 (or start!500032 b_lambda!189449)))

(declare-fun bs!1162949 () Bool)

(declare-fun d!1544824 () Bool)

(assert (= bs!1162949 (and d!1544824 start!500032)))

(assert (=> bs!1162949 (= (dynLambda!22202 lambda!235948 (h!61383 (t!362569 (toList!7463 lm!2280)))) (noDuplicateKeys!2444 (_2!32376 (h!61383 (t!362569 (toList!7463 lm!2280))))))))

(assert (=> bs!1162949 m!5811986))

(assert (=> b!4823194 d!1544824))

(declare-fun b_lambda!189451 () Bool)

(assert (= b_lambda!189415 (or b!4822981 b_lambda!189451)))

(assert (=> b!4823394 d!1544816))

(declare-fun b_lambda!189453 () Bool)

(assert (= b_lambda!189425 (or d!1544466 b_lambda!189453)))

(declare-fun bs!1162950 () Bool)

(declare-fun d!1544826 () Bool)

(assert (= bs!1162950 (and d!1544826 d!1544466)))

(assert (=> bs!1162950 (= (dynLambda!22203 lambda!236025 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280))))) (contains!18748 lt!1971058 (_1!32375 (h!61382 (_2!32376 (h!61383 (toList!7463 lm!2280)))))))))

(declare-fun m!5812456 () Bool)

(assert (=> bs!1162950 m!5812456))

(assert (=> b!4823447 d!1544826))

(check-sat (not b_lambda!189435) (not b!4823459) (not b!4823410) (not b!4823393) (not bm!336233) (not b!4823146) (not b_lambda!189453) (not b!4823195) (not b!4823376) (not b_lambda!189437) (not b!4823446) (not bm!336234) (not d!1544710) (not b!4823172) (not b!4823411) (not b!4823431) (not bs!1162947) (not bs!1162939) (not d!1544728) (not b!4823414) (not d!1544716) (not d!1544780) (not d!1544750) (not b!4823340) (not d!1544736) (not b_lambda!189431) (not b!4823430) (not d!1544562) tp_is_empty!34427 (not b!4823453) (not b!4823125) (not d!1544586) (not b!4823458) (not d!1544708) (not b_lambda!189443) (not b_lambda!189451) (not b!4823437) (not d!1544556) (not b!4823349) (not bm!336225) (not bm!336231) (not b!4823231) (not b!4823366) (not b!4823368) (not b!4823297) (not d!1544774) (not d!1544642) (not d!1544786) (not b!4823260) (not b!4823352) (not d!1544628) (not b!4823438) (not b!4823416) (not d!1544726) (not b!4823448) (not b_lambda!189335) (not b!4823109) (not b!4823211) (not bm!336235) (not b!4823406) (not b!4823424) (not d!1544778) (not d!1544790) (not b!4823403) (not b!4823189) (not d!1544596) (not d!1544798) (not b!4823415) (not b!4823434) (not b_lambda!189439) (not b_lambda!189445) (not b_lambda!189433) (not b!4823420) (not b!4823443) (not d!1544686) (not b!4823418) (not bs!1162948) (not bs!1162946) (not b!4823425) (not b!4823347) (not b!4823351) (not d!1544782) (not b!4823440) tp_is_empty!34431 (not b!4823428) (not b!4823350) (not b!4823426) (not b!4823374) (not d!1544568) (not b!4823372) (not bs!1162941) (not d!1544734) (not b!4823408) (not b!4823407) (not bm!336232) (not b!4823233) (not b!4823223) (not d!1544566) (not b!4823423) (not b!4823427) (not d!1544722) (not b!4823296) (not b_lambda!189447) (not b_lambda!189429) (not d!1544626) (not b!4823105) (not bs!1162945) (not b_lambda!189449) (not b!4823232) (not b!4823304) (not b!4823400) (not b!4823147) (not bm!336224) (not b!4823404) (not bs!1162950) (not b!4823104) (not bs!1162942) (not b!4823148) (not d!1544602) (not b!4823417) (not bm!336223) (not d!1544666) (not b!4823187) (not b!4823213) (not b_lambda!189421) (not b!4823257) (not bs!1162949) (not b!4823395) (not d!1544632) (not b_lambda!189337) (not b!4823099) (not bs!1162940) (not d!1544636) (not b!4823303) (not d!1544662) (not b!4823229) (not bs!1162944) (not b!4823401) (not b!4823158) (not b_lambda!189343) (not b!4823300) (not b_lambda!189441) (not b!4823419) (not b!4823451) (not b!4823212) (not bs!1162943) (not b!4823312) (not b!4823216) (not b!4823370) (not d!1544538))
(check-sat)
