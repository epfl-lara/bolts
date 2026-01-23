; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500512 () Bool)

(assert start!500512)

(declare-fun b!4824921 () Bool)

(declare-fun res!2054080 () Bool)

(declare-fun e!3014805 () Bool)

(assert (=> b!4824921 (=> res!2054080 e!3014805)))

(declare-datatypes ((V!16895 0))(
  ( (V!16896 (val!21625 Int)) )
))
(declare-datatypes ((K!16649 0))(
  ( (K!16650 (val!21626 Int)) )
))
(declare-datatypes ((tuple2!58186 0))(
  ( (tuple2!58187 (_1!32387 K!16649) (_2!32387 V!16895)) )
))
(declare-datatypes ((List!55090 0))(
  ( (Nil!54966) (Cons!54966 (h!61400 tuple2!58186) (t!362586 List!55090)) )
))
(declare-datatypes ((tuple2!58188 0))(
  ( (tuple2!58189 (_1!32388 (_ BitVec 64)) (_2!32388 List!55090)) )
))
(declare-datatypes ((List!55091 0))(
  ( (Nil!54967) (Cons!54967 (h!61401 tuple2!58188) (t!362587 List!55091)) )
))
(declare-datatypes ((ListLongMap!5991 0))(
  ( (ListLongMap!5992 (toList!7475 List!55091)) )
))
(declare-fun lt!1972474 () ListLongMap!5991)

(declare-datatypes ((Hashable!7264 0))(
  ( (HashableExt!7263 (__x!33539 Int)) )
))
(declare-fun hashF!1509 () Hashable!7264)

(declare-fun allKeysSameHashInMap!2580 (ListLongMap!5991 Hashable!7264) Bool)

(assert (=> b!4824921 (= res!2054080 (not (allKeysSameHashInMap!2580 lt!1972474 hashF!1509)))))

(declare-fun b!4824922 () Bool)

(declare-fun res!2054086 () Bool)

(assert (=> b!4824922 (=> res!2054086 e!3014805)))

(declare-fun key!5428 () K!16649)

(declare-fun lt!1972478 () (_ BitVec 64))

(declare-fun containsKey!4365 (List!55090 K!16649) Bool)

(declare-fun apply!13351 (ListLongMap!5991 (_ BitVec 64)) List!55090)

(assert (=> b!4824922 (= res!2054086 (containsKey!4365 (apply!13351 lt!1972474 lt!1972478) key!5428))))

(declare-fun b!4824923 () Bool)

(declare-fun res!2054082 () Bool)

(declare-fun e!3014804 () Bool)

(assert (=> b!4824923 (=> (not res!2054082) (not e!3014804))))

(declare-fun lm!2280 () ListLongMap!5991)

(assert (=> b!4824923 (= res!2054082 (not (containsKey!4365 (apply!13351 lm!2280 lt!1972478) key!5428)))))

(declare-fun b!4824924 () Bool)

(assert (=> b!4824924 (= e!3014804 (not e!3014805))))

(declare-fun res!2054081 () Bool)

(assert (=> b!4824924 (=> res!2054081 e!3014805)))

(declare-fun lambda!236476 () Int)

(declare-fun forall!12602 (List!55091 Int) Bool)

(assert (=> b!4824924 (= res!2054081 (not (forall!12602 (toList!7475 lt!1972474) lambda!236476)))))

(declare-fun tail!9408 (ListLongMap!5991) ListLongMap!5991)

(assert (=> b!4824924 (= lt!1972474 (tail!9408 lm!2280))))

(declare-datatypes ((ListMap!6853 0))(
  ( (ListMap!6854 (toList!7476 List!55090)) )
))
(declare-fun lt!1972475 () ListMap!6853)

(declare-fun e!3014806 () Bool)

(declare-fun contains!18772 (ListMap!6853 K!16649) Bool)

(declare-fun addToMapMapFromBucket!1796 (List!55090 ListMap!6853) ListMap!6853)

(assert (=> b!4824924 (= (contains!18772 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475) key!5428) e!3014806)))

(declare-fun res!2054084 () Bool)

(assert (=> b!4824924 (=> res!2054084 e!3014806)))

(assert (=> b!4824924 (= res!2054084 (containsKey!4365 (_2!32388 (h!61401 (toList!7475 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142923 0))(
  ( (Unit!142924) )
))
(declare-fun lt!1972477 () Unit!142923)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!22 (List!55090 ListMap!6853 K!16649) Unit!142923)

(assert (=> b!4824924 (= lt!1972477 (lemmaAddToMapFromBucketContainsIIFInAccOrL!22 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475 key!5428))))

(declare-fun extractMap!2678 (List!55091) ListMap!6853)

(assert (=> b!4824924 (= lt!1972475 (extractMap!2678 (t!362587 (toList!7475 lm!2280))))))

(assert (=> b!4824924 (not (containsKey!4365 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))) key!5428))))

(declare-fun lt!1972476 () Unit!142923)

(declare-fun lemmaNotSameHashThenCannotContainKey!222 (ListLongMap!5991 K!16649 (_ BitVec 64) Hashable!7264) Unit!142923)

(assert (=> b!4824924 (= lt!1972476 (lemmaNotSameHashThenCannotContainKey!222 lm!2280 key!5428 (_1!32388 (h!61401 (toList!7475 lm!2280))) hashF!1509))))

(declare-fun b!4824925 () Bool)

(declare-fun e!3014803 () Bool)

(assert (=> b!4824925 (= e!3014803 e!3014804)))

(declare-fun res!2054087 () Bool)

(assert (=> b!4824925 (=> (not res!2054087) (not e!3014804))))

(declare-fun contains!18773 (ListLongMap!5991 (_ BitVec 64)) Bool)

(assert (=> b!4824925 (= res!2054087 (contains!18773 lm!2280 lt!1972478))))

(declare-fun hash!5392 (Hashable!7264 K!16649) (_ BitVec 64))

(assert (=> b!4824925 (= lt!1972478 (hash!5392 hashF!1509 key!5428))))

(declare-fun b!4824926 () Bool)

(declare-fun res!2054085 () Bool)

(assert (=> b!4824926 (=> res!2054085 e!3014805)))

(assert (=> b!4824926 (= res!2054085 (not (contains!18773 lt!1972474 lt!1972478)))))

(declare-fun res!2054083 () Bool)

(assert (=> start!500512 (=> (not res!2054083) (not e!3014803))))

(assert (=> start!500512 (= res!2054083 (forall!12602 (toList!7475 lm!2280) lambda!236476))))

(assert (=> start!500512 e!3014803))

(declare-fun e!3014807 () Bool)

(declare-fun inv!70549 (ListLongMap!5991) Bool)

(assert (=> start!500512 (and (inv!70549 lm!2280) e!3014807)))

(assert (=> start!500512 true))

(declare-fun tp_is_empty!34451 () Bool)

(assert (=> start!500512 tp_is_empty!34451))

(declare-fun b!4824927 () Bool)

(declare-fun res!2054078 () Bool)

(assert (=> b!4824927 (=> (not res!2054078) (not e!3014803))))

(assert (=> b!4824927 (= res!2054078 (allKeysSameHashInMap!2580 lm!2280 hashF!1509))))

(declare-fun b!4824928 () Bool)

(declare-fun tp!1362558 () Bool)

(assert (=> b!4824928 (= e!3014807 tp!1362558)))

(declare-fun b!4824929 () Bool)

(declare-fun res!2054079 () Bool)

(assert (=> b!4824929 (=> (not res!2054079) (not e!3014804))))

(get-info :version)

(assert (=> b!4824929 (= res!2054079 (and (or (not ((_ is Cons!54967) (toList!7475 lm!2280))) (not (= (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478))) ((_ is Cons!54967) (toList!7475 lm!2280)) (not (= (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478))))))

(declare-fun b!4824930 () Bool)

(declare-fun size!36628 (List!55091) Int)

(assert (=> b!4824930 (= e!3014805 (< (size!36628 (toList!7475 lt!1972474)) (size!36628 (toList!7475 lm!2280))))))

(declare-fun b!4824931 () Bool)

(assert (=> b!4824931 (= e!3014806 (contains!18772 lt!1972475 key!5428))))

(assert (= (and start!500512 res!2054083) b!4824927))

(assert (= (and b!4824927 res!2054078) b!4824925))

(assert (= (and b!4824925 res!2054087) b!4824923))

(assert (= (and b!4824923 res!2054082) b!4824929))

(assert (= (and b!4824929 res!2054079) b!4824924))

(assert (= (and b!4824924 (not res!2054084)) b!4824931))

(assert (= (and b!4824924 (not res!2054081)) b!4824921))

(assert (= (and b!4824921 (not res!2054080)) b!4824926))

(assert (= (and b!4824926 (not res!2054085)) b!4824922))

(assert (= (and b!4824922 (not res!2054086)) b!4824930))

(assert (= start!500512 b!4824928))

(declare-fun m!5814800 () Bool)

(assert (=> start!500512 m!5814800))

(declare-fun m!5814802 () Bool)

(assert (=> start!500512 m!5814802))

(declare-fun m!5814804 () Bool)

(assert (=> b!4824921 m!5814804))

(declare-fun m!5814806 () Bool)

(assert (=> b!4824924 m!5814806))

(declare-fun m!5814808 () Bool)

(assert (=> b!4824924 m!5814808))

(declare-fun m!5814810 () Bool)

(assert (=> b!4824924 m!5814810))

(declare-fun m!5814812 () Bool)

(assert (=> b!4824924 m!5814812))

(declare-fun m!5814814 () Bool)

(assert (=> b!4824924 m!5814814))

(assert (=> b!4824924 m!5814812))

(assert (=> b!4824924 m!5814808))

(declare-fun m!5814816 () Bool)

(assert (=> b!4824924 m!5814816))

(declare-fun m!5814818 () Bool)

(assert (=> b!4824924 m!5814818))

(declare-fun m!5814820 () Bool)

(assert (=> b!4824924 m!5814820))

(declare-fun m!5814822 () Bool)

(assert (=> b!4824924 m!5814822))

(declare-fun m!5814824 () Bool)

(assert (=> b!4824924 m!5814824))

(declare-fun m!5814826 () Bool)

(assert (=> b!4824922 m!5814826))

(assert (=> b!4824922 m!5814826))

(declare-fun m!5814828 () Bool)

(assert (=> b!4824922 m!5814828))

(declare-fun m!5814830 () Bool)

(assert (=> b!4824927 m!5814830))

(declare-fun m!5814832 () Bool)

(assert (=> b!4824930 m!5814832))

(declare-fun m!5814834 () Bool)

(assert (=> b!4824930 m!5814834))

(declare-fun m!5814836 () Bool)

(assert (=> b!4824926 m!5814836))

(declare-fun m!5814838 () Bool)

(assert (=> b!4824923 m!5814838))

(assert (=> b!4824923 m!5814838))

(declare-fun m!5814840 () Bool)

(assert (=> b!4824923 m!5814840))

(declare-fun m!5814842 () Bool)

(assert (=> b!4824931 m!5814842))

(declare-fun m!5814844 () Bool)

(assert (=> b!4824925 m!5814844))

(declare-fun m!5814846 () Bool)

(assert (=> b!4824925 m!5814846))

(check-sat (not b!4824927) (not b!4824924) (not b!4824930) (not b!4824926) (not b!4824923) (not b!4824922) tp_is_empty!34451 (not b!4824928) (not b!4824921) (not start!500512) (not b!4824925) (not b!4824931))
(check-sat)
(get-model)

(declare-fun d!1545669 () Bool)

(declare-fun res!2054101 () Bool)

(declare-fun e!3014824 () Bool)

(assert (=> d!1545669 (=> res!2054101 e!3014824)))

(assert (=> d!1545669 (= res!2054101 ((_ is Nil!54967) (toList!7475 lm!2280)))))

(assert (=> d!1545669 (= (forall!12602 (toList!7475 lm!2280) lambda!236476) e!3014824)))

(declare-fun b!4824953 () Bool)

(declare-fun e!3014825 () Bool)

(assert (=> b!4824953 (= e!3014824 e!3014825)))

(declare-fun res!2054102 () Bool)

(assert (=> b!4824953 (=> (not res!2054102) (not e!3014825))))

(declare-fun dynLambda!22214 (Int tuple2!58188) Bool)

(assert (=> b!4824953 (= res!2054102 (dynLambda!22214 lambda!236476 (h!61401 (toList!7475 lm!2280))))))

(declare-fun b!4824954 () Bool)

(assert (=> b!4824954 (= e!3014825 (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236476))))

(assert (= (and d!1545669 (not res!2054101)) b!4824953))

(assert (= (and b!4824953 res!2054102) b!4824954))

(declare-fun b_lambda!189721 () Bool)

(assert (=> (not b_lambda!189721) (not b!4824953)))

(declare-fun m!5814866 () Bool)

(assert (=> b!4824953 m!5814866))

(declare-fun m!5814868 () Bool)

(assert (=> b!4824954 m!5814868))

(assert (=> start!500512 d!1545669))

(declare-fun d!1545671 () Bool)

(declare-fun isStrictlySorted!984 (List!55091) Bool)

(assert (=> d!1545671 (= (inv!70549 lm!2280) (isStrictlySorted!984 (toList!7475 lm!2280)))))

(declare-fun bs!1163534 () Bool)

(assert (= bs!1163534 d!1545671))

(declare-fun m!5814874 () Bool)

(assert (=> bs!1163534 m!5814874))

(assert (=> start!500512 d!1545671))

(declare-fun d!1545675 () Bool)

(declare-fun res!2054114 () Bool)

(declare-fun e!3014837 () Bool)

(assert (=> d!1545675 (=> res!2054114 e!3014837)))

(assert (=> d!1545675 (= res!2054114 (and ((_ is Cons!54966) (apply!13351 lm!2280 lt!1972478)) (= (_1!32387 (h!61400 (apply!13351 lm!2280 lt!1972478))) key!5428)))))

(assert (=> d!1545675 (= (containsKey!4365 (apply!13351 lm!2280 lt!1972478) key!5428) e!3014837)))

(declare-fun b!4824966 () Bool)

(declare-fun e!3014838 () Bool)

(assert (=> b!4824966 (= e!3014837 e!3014838)))

(declare-fun res!2054115 () Bool)

(assert (=> b!4824966 (=> (not res!2054115) (not e!3014838))))

(assert (=> b!4824966 (= res!2054115 ((_ is Cons!54966) (apply!13351 lm!2280 lt!1972478)))))

(declare-fun b!4824967 () Bool)

(assert (=> b!4824967 (= e!3014838 (containsKey!4365 (t!362586 (apply!13351 lm!2280 lt!1972478)) key!5428))))

(assert (= (and d!1545675 (not res!2054114)) b!4824966))

(assert (= (and b!4824966 res!2054115) b!4824967))

(declare-fun m!5814880 () Bool)

(assert (=> b!4824967 m!5814880))

(assert (=> b!4824923 d!1545675))

(declare-fun d!1545681 () Bool)

(declare-datatypes ((Option!13492 0))(
  ( (None!13491) (Some!13491 (v!49170 List!55090)) )
))
(declare-fun get!18821 (Option!13492) List!55090)

(declare-fun getValueByKey!2619 (List!55091 (_ BitVec 64)) Option!13492)

(assert (=> d!1545681 (= (apply!13351 lm!2280 lt!1972478) (get!18821 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478)))))

(declare-fun bs!1163535 () Bool)

(assert (= bs!1163535 d!1545681))

(declare-fun m!5814882 () Bool)

(assert (=> bs!1163535 m!5814882))

(assert (=> bs!1163535 m!5814882))

(declare-fun m!5814884 () Bool)

(assert (=> bs!1163535 m!5814884))

(assert (=> b!4824923 d!1545681))

(declare-fun d!1545683 () Bool)

(assert (=> d!1545683 (= (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))) (get!18821 (getValueByKey!2619 (toList!7475 lm!2280) (_1!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun bs!1163536 () Bool)

(assert (= bs!1163536 d!1545683))

(declare-fun m!5814886 () Bool)

(assert (=> bs!1163536 m!5814886))

(assert (=> bs!1163536 m!5814886))

(declare-fun m!5814888 () Bool)

(assert (=> bs!1163536 m!5814888))

(assert (=> b!4824924 d!1545683))

(declare-fun d!1545685 () Bool)

(declare-fun e!3014841 () Bool)

(assert (=> d!1545685 (= (contains!18772 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475) key!5428) e!3014841)))

(declare-fun res!2054118 () Bool)

(assert (=> d!1545685 (=> res!2054118 e!3014841)))

(assert (=> d!1545685 (= res!2054118 (containsKey!4365 (_2!32388 (h!61401 (toList!7475 lm!2280))) key!5428))))

(declare-fun lt!1972496 () Unit!142923)

(declare-fun choose!35110 (List!55090 ListMap!6853 K!16649) Unit!142923)

(assert (=> d!1545685 (= lt!1972496 (choose!35110 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475 key!5428))))

(declare-fun noDuplicateKeys!2450 (List!55090) Bool)

(assert (=> d!1545685 (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lm!2280))))))

(assert (=> d!1545685 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!22 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475 key!5428) lt!1972496)))

(declare-fun b!4824970 () Bool)

(assert (=> b!4824970 (= e!3014841 (contains!18772 lt!1972475 key!5428))))

(assert (= (and d!1545685 (not res!2054118)) b!4824970))

(declare-fun m!5814890 () Bool)

(assert (=> d!1545685 m!5814890))

(assert (=> d!1545685 m!5814810))

(assert (=> d!1545685 m!5814812))

(assert (=> d!1545685 m!5814812))

(assert (=> d!1545685 m!5814814))

(declare-fun m!5814892 () Bool)

(assert (=> d!1545685 m!5814892))

(assert (=> b!4824970 m!5814842))

(assert (=> b!4824924 d!1545685))

(declare-fun d!1545687 () Bool)

(declare-fun res!2054119 () Bool)

(declare-fun e!3014842 () Bool)

(assert (=> d!1545687 (=> res!2054119 e!3014842)))

(assert (=> d!1545687 (= res!2054119 (and ((_ is Cons!54966) (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280))))) (= (_1!32387 (h!61400 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))))) key!5428)))))

(assert (=> d!1545687 (= (containsKey!4365 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))) key!5428) e!3014842)))

(declare-fun b!4824971 () Bool)

(declare-fun e!3014843 () Bool)

(assert (=> b!4824971 (= e!3014842 e!3014843)))

(declare-fun res!2054120 () Bool)

(assert (=> b!4824971 (=> (not res!2054120) (not e!3014843))))

(assert (=> b!4824971 (= res!2054120 ((_ is Cons!54966) (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun b!4824972 () Bool)

(assert (=> b!4824972 (= e!3014843 (containsKey!4365 (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280))))) key!5428))))

(assert (= (and d!1545687 (not res!2054119)) b!4824971))

(assert (= (and b!4824971 res!2054120) b!4824972))

(declare-fun m!5814894 () Bool)

(assert (=> b!4824972 m!5814894))

(assert (=> b!4824924 d!1545687))

(declare-fun d!1545689 () Bool)

(declare-fun res!2054121 () Bool)

(declare-fun e!3014844 () Bool)

(assert (=> d!1545689 (=> res!2054121 e!3014844)))

(assert (=> d!1545689 (= res!2054121 (and ((_ is Cons!54966) (_2!32388 (h!61401 (toList!7475 lm!2280)))) (= (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) key!5428)))))

(assert (=> d!1545689 (= (containsKey!4365 (_2!32388 (h!61401 (toList!7475 lm!2280))) key!5428) e!3014844)))

(declare-fun b!4824973 () Bool)

(declare-fun e!3014845 () Bool)

(assert (=> b!4824973 (= e!3014844 e!3014845)))

(declare-fun res!2054122 () Bool)

(assert (=> b!4824973 (=> (not res!2054122) (not e!3014845))))

(assert (=> b!4824973 (= res!2054122 ((_ is Cons!54966) (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(declare-fun b!4824974 () Bool)

(assert (=> b!4824974 (= e!3014845 (containsKey!4365 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) key!5428))))

(assert (= (and d!1545689 (not res!2054121)) b!4824973))

(assert (= (and b!4824973 res!2054122) b!4824974))

(declare-fun m!5814896 () Bool)

(assert (=> b!4824974 m!5814896))

(assert (=> b!4824924 d!1545689))

(declare-fun bs!1163537 () Bool)

(declare-fun d!1545691 () Bool)

(assert (= bs!1163537 (and d!1545691 start!500512)))

(declare-fun lambda!236482 () Int)

(assert (=> bs!1163537 (= lambda!236482 lambda!236476)))

(assert (=> d!1545691 (not (containsKey!4365 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))) key!5428))))

(declare-fun lt!1972499 () Unit!142923)

(declare-fun choose!35111 (ListLongMap!5991 K!16649 (_ BitVec 64) Hashable!7264) Unit!142923)

(assert (=> d!1545691 (= lt!1972499 (choose!35111 lm!2280 key!5428 (_1!32388 (h!61401 (toList!7475 lm!2280))) hashF!1509))))

(assert (=> d!1545691 (forall!12602 (toList!7475 lm!2280) lambda!236482)))

(assert (=> d!1545691 (= (lemmaNotSameHashThenCannotContainKey!222 lm!2280 key!5428 (_1!32388 (h!61401 (toList!7475 lm!2280))) hashF!1509) lt!1972499)))

(declare-fun bs!1163538 () Bool)

(assert (= bs!1163538 d!1545691))

(assert (=> bs!1163538 m!5814808))

(assert (=> bs!1163538 m!5814808))

(assert (=> bs!1163538 m!5814816))

(declare-fun m!5814898 () Bool)

(assert (=> bs!1163538 m!5814898))

(declare-fun m!5814900 () Bool)

(assert (=> bs!1163538 m!5814900))

(assert (=> b!4824924 d!1545691))

(declare-fun bm!336322 () Bool)

(declare-fun call!336327 () Bool)

(declare-datatypes ((List!55093 0))(
  ( (Nil!54969) (Cons!54969 (h!61403 K!16649) (t!362589 List!55093)) )
))
(declare-fun e!3014862 () List!55093)

(declare-fun contains!18775 (List!55093 K!16649) Bool)

(assert (=> bm!336322 (= call!336327 (contains!18775 e!3014862 key!5428))))

(declare-fun c!822153 () Bool)

(declare-fun c!822154 () Bool)

(assert (=> bm!336322 (= c!822153 c!822154)))

(declare-fun b!4824997 () Bool)

(declare-fun e!3014860 () Bool)

(declare-fun keys!20223 (ListMap!6853) List!55093)

(assert (=> b!4824997 (= e!3014860 (not (contains!18775 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428)))))

(declare-fun b!4824998 () Bool)

(assert (=> b!4824998 false))

(declare-fun lt!1972554 () Unit!142923)

(declare-fun lt!1972558 () Unit!142923)

(assert (=> b!4824998 (= lt!1972554 lt!1972558)))

(declare-fun containsKey!4368 (List!55090 K!16649) Bool)

(assert (=> b!4824998 (containsKey!4368 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1158 (List!55090 K!16649) Unit!142923)

(assert (=> b!4824998 (= lt!1972558 (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(declare-fun e!3014864 () Unit!142923)

(declare-fun Unit!142942 () Unit!142923)

(assert (=> b!4824998 (= e!3014864 Unit!142942)))

(declare-fun d!1545693 () Bool)

(declare-fun e!3014865 () Bool)

(assert (=> d!1545693 e!3014865))

(declare-fun res!2054130 () Bool)

(assert (=> d!1545693 (=> res!2054130 e!3014865)))

(assert (=> d!1545693 (= res!2054130 e!3014860)))

(declare-fun res!2054129 () Bool)

(assert (=> d!1545693 (=> (not res!2054129) (not e!3014860))))

(declare-fun lt!1972555 () Bool)

(assert (=> d!1545693 (= res!2054129 (not lt!1972555))))

(declare-fun lt!1972557 () Bool)

(assert (=> d!1545693 (= lt!1972555 lt!1972557)))

(declare-fun lt!1972561 () Unit!142923)

(declare-fun e!3014863 () Unit!142923)

(assert (=> d!1545693 (= lt!1972561 e!3014863)))

(assert (=> d!1545693 (= c!822154 lt!1972557)))

(assert (=> d!1545693 (= lt!1972557 (containsKey!4368 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> d!1545693 (= (contains!18772 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475) key!5428) lt!1972555)))

(declare-fun b!4824999 () Bool)

(declare-fun e!3014861 () Bool)

(assert (=> b!4824999 (= e!3014865 e!3014861)))

(declare-fun res!2054131 () Bool)

(assert (=> b!4824999 (=> (not res!2054131) (not e!3014861))))

(declare-datatypes ((Option!13493 0))(
  ( (None!13492) (Some!13492 (v!49171 V!16895)) )
))
(declare-fun isDefined!10607 (Option!13493) Bool)

(declare-fun getValueByKey!2620 (List!55090 K!16649) Option!13493)

(assert (=> b!4824999 (= res!2054131 (isDefined!10607 (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428)))))

(declare-fun b!4825000 () Bool)

(declare-fun Unit!142943 () Unit!142923)

(assert (=> b!4825000 (= e!3014864 Unit!142943)))

(declare-fun b!4825001 () Bool)

(assert (=> b!4825001 (= e!3014862 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))

(declare-fun b!4825002 () Bool)

(assert (=> b!4825002 (= e!3014861 (contains!18775 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(declare-fun b!4825003 () Bool)

(declare-fun lt!1972559 () Unit!142923)

(assert (=> b!4825003 (= e!3014863 lt!1972559)))

(declare-fun lt!1972556 () Unit!142923)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (List!55090 K!16649) Unit!142923)

(assert (=> b!4825003 (= lt!1972556 (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> b!4825003 (isDefined!10607 (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(declare-fun lt!1972560 () Unit!142923)

(assert (=> b!4825003 (= lt!1972560 lt!1972556)))

(declare-fun lemmaInListThenGetKeysListContains!1153 (List!55090 K!16649) Unit!142923)

(assert (=> b!4825003 (= lt!1972559 (lemmaInListThenGetKeysListContains!1153 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> b!4825003 call!336327))

(declare-fun b!4825004 () Bool)

(assert (=> b!4825004 (= e!3014863 e!3014864)))

(declare-fun c!822152 () Bool)

(assert (=> b!4825004 (= c!822152 call!336327)))

(declare-fun b!4825005 () Bool)

(declare-fun getKeysList!1158 (List!55090) List!55093)

(assert (=> b!4825005 (= e!3014862 (getKeysList!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))

(assert (= (and d!1545693 c!822154) b!4825003))

(assert (= (and d!1545693 (not c!822154)) b!4825004))

(assert (= (and b!4825004 c!822152) b!4824998))

(assert (= (and b!4825004 (not c!822152)) b!4825000))

(assert (= (or b!4825003 b!4825004) bm!336322))

(assert (= (and bm!336322 c!822153) b!4825005))

(assert (= (and bm!336322 (not c!822153)) b!4825001))

(assert (= (and d!1545693 res!2054129) b!4824997))

(assert (= (and d!1545693 (not res!2054130)) b!4824999))

(assert (= (and b!4824999 res!2054131) b!4825002))

(declare-fun m!5814902 () Bool)

(assert (=> d!1545693 m!5814902))

(declare-fun m!5814904 () Bool)

(assert (=> b!4824999 m!5814904))

(assert (=> b!4824999 m!5814904))

(declare-fun m!5814906 () Bool)

(assert (=> b!4824999 m!5814906))

(assert (=> b!4824997 m!5814812))

(declare-fun m!5814908 () Bool)

(assert (=> b!4824997 m!5814908))

(assert (=> b!4824997 m!5814908))

(declare-fun m!5814910 () Bool)

(assert (=> b!4824997 m!5814910))

(declare-fun m!5814912 () Bool)

(assert (=> bm!336322 m!5814912))

(assert (=> b!4825001 m!5814812))

(assert (=> b!4825001 m!5814908))

(assert (=> b!4824998 m!5814902))

(declare-fun m!5814914 () Bool)

(assert (=> b!4824998 m!5814914))

(declare-fun m!5814916 () Bool)

(assert (=> b!4825003 m!5814916))

(assert (=> b!4825003 m!5814904))

(assert (=> b!4825003 m!5814904))

(assert (=> b!4825003 m!5814906))

(declare-fun m!5814918 () Bool)

(assert (=> b!4825003 m!5814918))

(assert (=> b!4825002 m!5814812))

(assert (=> b!4825002 m!5814908))

(assert (=> b!4825002 m!5814908))

(assert (=> b!4825002 m!5814910))

(declare-fun m!5814920 () Bool)

(assert (=> b!4825005 m!5814920))

(assert (=> b!4824924 d!1545693))

(declare-fun b!4825098 () Bool)

(assert (=> b!4825098 true))

(declare-fun bs!1163559 () Bool)

(declare-fun b!4825099 () Bool)

(assert (= bs!1163559 (and b!4825099 b!4825098)))

(declare-fun lambda!236551 () Int)

(declare-fun lambda!236550 () Int)

(assert (=> bs!1163559 (= lambda!236551 lambda!236550)))

(assert (=> b!4825099 true))

(declare-fun lambda!236552 () Int)

(declare-fun lt!1972682 () ListMap!6853)

(assert (=> bs!1163559 (= (= lt!1972682 lt!1972475) (= lambda!236552 lambda!236550))))

(assert (=> b!4825099 (= (= lt!1972682 lt!1972475) (= lambda!236552 lambda!236551))))

(assert (=> b!4825099 true))

(declare-fun bs!1163560 () Bool)

(declare-fun d!1545695 () Bool)

(assert (= bs!1163560 (and d!1545695 b!4825098)))

(declare-fun lambda!236553 () Int)

(declare-fun lt!1972695 () ListMap!6853)

(assert (=> bs!1163560 (= (= lt!1972695 lt!1972475) (= lambda!236553 lambda!236550))))

(declare-fun bs!1163561 () Bool)

(assert (= bs!1163561 (and d!1545695 b!4825099)))

(assert (=> bs!1163561 (= (= lt!1972695 lt!1972475) (= lambda!236553 lambda!236551))))

(assert (=> bs!1163561 (= (= lt!1972695 lt!1972682) (= lambda!236553 lambda!236552))))

(assert (=> d!1545695 true))

(declare-fun bm!336342 () Bool)

(declare-fun call!336349 () Bool)

(declare-fun c!822178 () Bool)

(declare-fun forall!12604 (List!55090 Int) Bool)

(assert (=> bm!336342 (= call!336349 (forall!12604 (toList!7476 lt!1972475) (ite c!822178 lambda!236550 lambda!236552)))))

(declare-fun bm!336343 () Bool)

(declare-fun call!336348 () Bool)

(assert (=> bm!336343 (= call!336348 (forall!12604 (toList!7476 lt!1972475) (ite c!822178 lambda!236550 lambda!236551)))))

(declare-fun e!3014925 () ListMap!6853)

(assert (=> b!4825098 (= e!3014925 lt!1972475)))

(declare-fun lt!1972678 () Unit!142923)

(declare-fun call!336347 () Unit!142923)

(assert (=> b!4825098 (= lt!1972678 call!336347)))

(assert (=> b!4825098 call!336348))

(declare-fun lt!1972687 () Unit!142923)

(assert (=> b!4825098 (= lt!1972687 lt!1972678)))

(assert (=> b!4825098 call!336349))

(declare-fun lt!1972685 () Unit!142923)

(declare-fun Unit!142944 () Unit!142923)

(assert (=> b!4825098 (= lt!1972685 Unit!142944)))

(assert (=> b!4825099 (= e!3014925 lt!1972682)))

(declare-fun lt!1972691 () ListMap!6853)

(declare-fun +!2535 (ListMap!6853 tuple2!58186) ListMap!6853)

(assert (=> b!4825099 (= lt!1972691 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> b!4825099 (= lt!1972682 (addToMapMapFromBucket!1796 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972690 () Unit!142923)

(assert (=> b!4825099 (= lt!1972690 call!336347)))

(assert (=> b!4825099 call!336348))

(declare-fun lt!1972683 () Unit!142923)

(assert (=> b!4825099 (= lt!1972683 lt!1972690)))

(assert (=> b!4825099 (forall!12604 (toList!7476 lt!1972691) lambda!236552)))

(declare-fun lt!1972676 () Unit!142923)

(declare-fun Unit!142945 () Unit!142923)

(assert (=> b!4825099 (= lt!1972676 Unit!142945)))

(assert (=> b!4825099 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236552)))

(declare-fun lt!1972692 () Unit!142923)

(declare-fun Unit!142946 () Unit!142923)

(assert (=> b!4825099 (= lt!1972692 Unit!142946)))

(declare-fun lt!1972684 () Unit!142923)

(declare-fun Unit!142947 () Unit!142923)

(assert (=> b!4825099 (= lt!1972684 Unit!142947)))

(declare-fun lt!1972677 () Unit!142923)

(declare-fun forallContained!4382 (List!55090 Int tuple2!58186) Unit!142923)

(assert (=> b!4825099 (= lt!1972677 (forallContained!4382 (toList!7476 lt!1972691) lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> b!4825099 (contains!18772 lt!1972691 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun lt!1972686 () Unit!142923)

(declare-fun Unit!142948 () Unit!142923)

(assert (=> b!4825099 (= lt!1972686 Unit!142948)))

(assert (=> b!4825099 (contains!18772 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun lt!1972679 () Unit!142923)

(declare-fun Unit!142949 () Unit!142923)

(assert (=> b!4825099 (= lt!1972679 Unit!142949)))

(assert (=> b!4825099 (forall!12604 (_2!32388 (h!61401 (toList!7475 lm!2280))) lambda!236552)))

(declare-fun lt!1972681 () Unit!142923)

(declare-fun Unit!142950 () Unit!142923)

(assert (=> b!4825099 (= lt!1972681 Unit!142950)))

(assert (=> b!4825099 (forall!12604 (toList!7476 lt!1972691) lambda!236552)))

(declare-fun lt!1972680 () Unit!142923)

(declare-fun Unit!142951 () Unit!142923)

(assert (=> b!4825099 (= lt!1972680 Unit!142951)))

(declare-fun lt!1972688 () Unit!142923)

(declare-fun Unit!142952 () Unit!142923)

(assert (=> b!4825099 (= lt!1972688 Unit!142952)))

(declare-fun lt!1972675 () Unit!142923)

(declare-fun addForallContainsKeyThenBeforeAdding!989 (ListMap!6853 ListMap!6853 K!16649 V!16895) Unit!142923)

(assert (=> b!4825099 (= lt!1972675 (addForallContainsKeyThenBeforeAdding!989 lt!1972475 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825099 (forall!12604 (toList!7476 lt!1972475) lambda!236552)))

(declare-fun lt!1972689 () Unit!142923)

(assert (=> b!4825099 (= lt!1972689 lt!1972675)))

(assert (=> b!4825099 call!336349))

(declare-fun lt!1972693 () Unit!142923)

(declare-fun Unit!142953 () Unit!142923)

(assert (=> b!4825099 (= lt!1972693 Unit!142953)))

(declare-fun res!2054172 () Bool)

(assert (=> b!4825099 (= res!2054172 (forall!12604 (_2!32388 (h!61401 (toList!7475 lm!2280))) lambda!236552))))

(declare-fun e!3014927 () Bool)

(assert (=> b!4825099 (=> (not res!2054172) (not e!3014927))))

(assert (=> b!4825099 e!3014927))

(declare-fun lt!1972694 () Unit!142923)

(declare-fun Unit!142954 () Unit!142923)

(assert (=> b!4825099 (= lt!1972694 Unit!142954)))

(declare-fun bm!336344 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!990 (ListMap!6853) Unit!142923)

(assert (=> bm!336344 (= call!336347 (lemmaContainsAllItsOwnKeys!990 lt!1972475))))

(declare-fun b!4825097 () Bool)

(assert (=> b!4825097 (= e!3014927 (forall!12604 (toList!7476 lt!1972475) lambda!236552))))

(declare-fun e!3014926 () Bool)

(assert (=> d!1545695 e!3014926))

(declare-fun res!2054170 () Bool)

(assert (=> d!1545695 (=> (not res!2054170) (not e!3014926))))

(assert (=> d!1545695 (= res!2054170 (forall!12604 (_2!32388 (h!61401 (toList!7475 lm!2280))) lambda!236553))))

(assert (=> d!1545695 (= lt!1972695 e!3014925)))

(assert (=> d!1545695 (= c!822178 ((_ is Nil!54966) (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> d!1545695 (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lm!2280))))))

(assert (=> d!1545695 (= (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475) lt!1972695)))

(declare-fun b!4825100 () Bool)

(declare-fun res!2054171 () Bool)

(assert (=> b!4825100 (=> (not res!2054171) (not e!3014926))))

(assert (=> b!4825100 (= res!2054171 (forall!12604 (toList!7476 lt!1972475) lambda!236553))))

(declare-fun b!4825101 () Bool)

(declare-fun invariantList!1811 (List!55090) Bool)

(assert (=> b!4825101 (= e!3014926 (invariantList!1811 (toList!7476 lt!1972695)))))

(assert (= (and d!1545695 c!822178) b!4825098))

(assert (= (and d!1545695 (not c!822178)) b!4825099))

(assert (= (and b!4825099 res!2054172) b!4825097))

(assert (= (or b!4825098 b!4825099) bm!336342))

(assert (= (or b!4825098 b!4825099) bm!336343))

(assert (= (or b!4825098 b!4825099) bm!336344))

(assert (= (and d!1545695 res!2054170) b!4825100))

(assert (= (and b!4825100 res!2054171) b!4825101))

(declare-fun m!5815040 () Bool)

(assert (=> bm!336343 m!5815040))

(declare-fun m!5815042 () Bool)

(assert (=> b!4825097 m!5815042))

(declare-fun m!5815044 () Bool)

(assert (=> d!1545695 m!5815044))

(assert (=> d!1545695 m!5814890))

(declare-fun m!5815046 () Bool)

(assert (=> bm!336342 m!5815046))

(declare-fun m!5815048 () Bool)

(assert (=> b!4825101 m!5815048))

(declare-fun m!5815050 () Bool)

(assert (=> b!4825099 m!5815050))

(declare-fun m!5815052 () Bool)

(assert (=> b!4825099 m!5815052))

(declare-fun m!5815054 () Bool)

(assert (=> b!4825099 m!5815054))

(declare-fun m!5815056 () Bool)

(assert (=> b!4825099 m!5815056))

(declare-fun m!5815058 () Bool)

(assert (=> b!4825099 m!5815058))

(declare-fun m!5815060 () Bool)

(assert (=> b!4825099 m!5815060))

(assert (=> b!4825099 m!5815060))

(assert (=> b!4825099 m!5815042))

(assert (=> b!4825099 m!5815054))

(assert (=> b!4825099 m!5815050))

(declare-fun m!5815062 () Bool)

(assert (=> b!4825099 m!5815062))

(declare-fun m!5815064 () Bool)

(assert (=> b!4825099 m!5815064))

(declare-fun m!5815066 () Bool)

(assert (=> b!4825099 m!5815066))

(declare-fun m!5815068 () Bool)

(assert (=> b!4825100 m!5815068))

(declare-fun m!5815070 () Bool)

(assert (=> bm!336344 m!5815070))

(assert (=> b!4824924 d!1545695))

(declare-fun d!1545731 () Bool)

(declare-fun res!2054173 () Bool)

(declare-fun e!3014928 () Bool)

(assert (=> d!1545731 (=> res!2054173 e!3014928)))

(assert (=> d!1545731 (= res!2054173 ((_ is Nil!54967) (toList!7475 lt!1972474)))))

(assert (=> d!1545731 (= (forall!12602 (toList!7475 lt!1972474) lambda!236476) e!3014928)))

(declare-fun b!4825104 () Bool)

(declare-fun e!3014929 () Bool)

(assert (=> b!4825104 (= e!3014928 e!3014929)))

(declare-fun res!2054174 () Bool)

(assert (=> b!4825104 (=> (not res!2054174) (not e!3014929))))

(assert (=> b!4825104 (= res!2054174 (dynLambda!22214 lambda!236476 (h!61401 (toList!7475 lt!1972474))))))

(declare-fun b!4825105 () Bool)

(assert (=> b!4825105 (= e!3014929 (forall!12602 (t!362587 (toList!7475 lt!1972474)) lambda!236476))))

(assert (= (and d!1545731 (not res!2054173)) b!4825104))

(assert (= (and b!4825104 res!2054174) b!4825105))

(declare-fun b_lambda!189731 () Bool)

(assert (=> (not b_lambda!189731) (not b!4825104)))

(declare-fun m!5815072 () Bool)

(assert (=> b!4825104 m!5815072))

(declare-fun m!5815074 () Bool)

(assert (=> b!4825105 m!5815074))

(assert (=> b!4824924 d!1545731))

(declare-fun bs!1163562 () Bool)

(declare-fun d!1545733 () Bool)

(assert (= bs!1163562 (and d!1545733 start!500512)))

(declare-fun lambda!236556 () Int)

(assert (=> bs!1163562 (= lambda!236556 lambda!236476)))

(declare-fun bs!1163563 () Bool)

(assert (= bs!1163563 (and d!1545733 d!1545691)))

(assert (=> bs!1163563 (= lambda!236556 lambda!236482)))

(declare-fun lt!1972698 () ListMap!6853)

(assert (=> d!1545733 (invariantList!1811 (toList!7476 lt!1972698))))

(declare-fun e!3014932 () ListMap!6853)

(assert (=> d!1545733 (= lt!1972698 e!3014932)))

(declare-fun c!822181 () Bool)

(assert (=> d!1545733 (= c!822181 ((_ is Cons!54967) (t!362587 (toList!7475 lm!2280))))))

(assert (=> d!1545733 (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236556)))

(assert (=> d!1545733 (= (extractMap!2678 (t!362587 (toList!7475 lm!2280))) lt!1972698)))

(declare-fun b!4825110 () Bool)

(assert (=> b!4825110 (= e!3014932 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))) (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))))))

(declare-fun b!4825111 () Bool)

(assert (=> b!4825111 (= e!3014932 (ListMap!6854 Nil!54966))))

(assert (= (and d!1545733 c!822181) b!4825110))

(assert (= (and d!1545733 (not c!822181)) b!4825111))

(declare-fun m!5815076 () Bool)

(assert (=> d!1545733 m!5815076))

(declare-fun m!5815078 () Bool)

(assert (=> d!1545733 m!5815078))

(declare-fun m!5815080 () Bool)

(assert (=> b!4825110 m!5815080))

(assert (=> b!4825110 m!5815080))

(declare-fun m!5815082 () Bool)

(assert (=> b!4825110 m!5815082))

(assert (=> b!4824924 d!1545733))

(declare-fun d!1545735 () Bool)

(declare-fun tail!9410 (List!55091) List!55091)

(assert (=> d!1545735 (= (tail!9408 lm!2280) (ListLongMap!5992 (tail!9410 (toList!7475 lm!2280))))))

(declare-fun bs!1163564 () Bool)

(assert (= bs!1163564 d!1545735))

(declare-fun m!5815084 () Bool)

(assert (=> bs!1163564 m!5815084))

(assert (=> b!4824924 d!1545735))

(declare-fun d!1545737 () Bool)

(declare-fun lt!1972701 () Int)

(assert (=> d!1545737 (>= lt!1972701 0)))

(declare-fun e!3014935 () Int)

(assert (=> d!1545737 (= lt!1972701 e!3014935)))

(declare-fun c!822184 () Bool)

(assert (=> d!1545737 (= c!822184 ((_ is Nil!54967) (toList!7475 lt!1972474)))))

(assert (=> d!1545737 (= (size!36628 (toList!7475 lt!1972474)) lt!1972701)))

(declare-fun b!4825116 () Bool)

(assert (=> b!4825116 (= e!3014935 0)))

(declare-fun b!4825117 () Bool)

(assert (=> b!4825117 (= e!3014935 (+ 1 (size!36628 (t!362587 (toList!7475 lt!1972474)))))))

(assert (= (and d!1545737 c!822184) b!4825116))

(assert (= (and d!1545737 (not c!822184)) b!4825117))

(declare-fun m!5815086 () Bool)

(assert (=> b!4825117 m!5815086))

(assert (=> b!4824930 d!1545737))

(declare-fun d!1545739 () Bool)

(declare-fun lt!1972702 () Int)

(assert (=> d!1545739 (>= lt!1972702 0)))

(declare-fun e!3014936 () Int)

(assert (=> d!1545739 (= lt!1972702 e!3014936)))

(declare-fun c!822185 () Bool)

(assert (=> d!1545739 (= c!822185 ((_ is Nil!54967) (toList!7475 lm!2280)))))

(assert (=> d!1545739 (= (size!36628 (toList!7475 lm!2280)) lt!1972702)))

(declare-fun b!4825118 () Bool)

(assert (=> b!4825118 (= e!3014936 0)))

(declare-fun b!4825119 () Bool)

(assert (=> b!4825119 (= e!3014936 (+ 1 (size!36628 (t!362587 (toList!7475 lm!2280)))))))

(assert (= (and d!1545739 c!822185) b!4825118))

(assert (= (and d!1545739 (not c!822185)) b!4825119))

(declare-fun m!5815088 () Bool)

(assert (=> b!4825119 m!5815088))

(assert (=> b!4824930 d!1545739))

(declare-fun d!1545741 () Bool)

(declare-fun e!3014942 () Bool)

(assert (=> d!1545741 e!3014942))

(declare-fun res!2054177 () Bool)

(assert (=> d!1545741 (=> res!2054177 e!3014942)))

(declare-fun lt!1972712 () Bool)

(assert (=> d!1545741 (= res!2054177 (not lt!1972712))))

(declare-fun lt!1972711 () Bool)

(assert (=> d!1545741 (= lt!1972712 lt!1972711)))

(declare-fun lt!1972714 () Unit!142923)

(declare-fun e!3014941 () Unit!142923)

(assert (=> d!1545741 (= lt!1972714 e!3014941)))

(declare-fun c!822188 () Bool)

(assert (=> d!1545741 (= c!822188 lt!1972711)))

(declare-fun containsKey!4369 (List!55091 (_ BitVec 64)) Bool)

(assert (=> d!1545741 (= lt!1972711 (containsKey!4369 (toList!7475 lm!2280) lt!1972478))))

(assert (=> d!1545741 (= (contains!18773 lm!2280 lt!1972478) lt!1972712)))

(declare-fun b!4825126 () Bool)

(declare-fun lt!1972713 () Unit!142923)

(assert (=> b!4825126 (= e!3014941 lt!1972713)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2405 (List!55091 (_ BitVec 64)) Unit!142923)

(assert (=> b!4825126 (= lt!1972713 (lemmaContainsKeyImpliesGetValueByKeyDefined!2405 (toList!7475 lm!2280) lt!1972478))))

(declare-fun isDefined!10608 (Option!13492) Bool)

(assert (=> b!4825126 (isDefined!10608 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478))))

(declare-fun b!4825127 () Bool)

(declare-fun Unit!142955 () Unit!142923)

(assert (=> b!4825127 (= e!3014941 Unit!142955)))

(declare-fun b!4825128 () Bool)

(assert (=> b!4825128 (= e!3014942 (isDefined!10608 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478)))))

(assert (= (and d!1545741 c!822188) b!4825126))

(assert (= (and d!1545741 (not c!822188)) b!4825127))

(assert (= (and d!1545741 (not res!2054177)) b!4825128))

(declare-fun m!5815090 () Bool)

(assert (=> d!1545741 m!5815090))

(declare-fun m!5815092 () Bool)

(assert (=> b!4825126 m!5815092))

(assert (=> b!4825126 m!5814882))

(assert (=> b!4825126 m!5814882))

(declare-fun m!5815094 () Bool)

(assert (=> b!4825126 m!5815094))

(assert (=> b!4825128 m!5814882))

(assert (=> b!4825128 m!5814882))

(assert (=> b!4825128 m!5815094))

(assert (=> b!4824925 d!1545741))

(declare-fun d!1545743 () Bool)

(declare-fun hash!5396 (Hashable!7264 K!16649) (_ BitVec 64))

(assert (=> d!1545743 (= (hash!5392 hashF!1509 key!5428) (hash!5396 hashF!1509 key!5428))))

(declare-fun bs!1163565 () Bool)

(assert (= bs!1163565 d!1545743))

(declare-fun m!5815096 () Bool)

(assert (=> bs!1163565 m!5815096))

(assert (=> b!4824925 d!1545743))

(declare-fun bm!336345 () Bool)

(declare-fun call!336350 () Bool)

(declare-fun e!3014945 () List!55093)

(assert (=> bm!336345 (= call!336350 (contains!18775 e!3014945 key!5428))))

(declare-fun c!822190 () Bool)

(declare-fun c!822191 () Bool)

(assert (=> bm!336345 (= c!822190 c!822191)))

(declare-fun b!4825129 () Bool)

(declare-fun e!3014943 () Bool)

(assert (=> b!4825129 (= e!3014943 (not (contains!18775 (keys!20223 lt!1972475) key!5428)))))

(declare-fun b!4825130 () Bool)

(assert (=> b!4825130 false))

(declare-fun lt!1972715 () Unit!142923)

(declare-fun lt!1972719 () Unit!142923)

(assert (=> b!4825130 (= lt!1972715 lt!1972719)))

(assert (=> b!4825130 (containsKey!4368 (toList!7476 lt!1972475) key!5428)))

(assert (=> b!4825130 (= lt!1972719 (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 lt!1972475) key!5428))))

(declare-fun e!3014947 () Unit!142923)

(declare-fun Unit!142956 () Unit!142923)

(assert (=> b!4825130 (= e!3014947 Unit!142956)))

(declare-fun d!1545745 () Bool)

(declare-fun e!3014948 () Bool)

(assert (=> d!1545745 e!3014948))

(declare-fun res!2054179 () Bool)

(assert (=> d!1545745 (=> res!2054179 e!3014948)))

(assert (=> d!1545745 (= res!2054179 e!3014943)))

(declare-fun res!2054178 () Bool)

(assert (=> d!1545745 (=> (not res!2054178) (not e!3014943))))

(declare-fun lt!1972716 () Bool)

(assert (=> d!1545745 (= res!2054178 (not lt!1972716))))

(declare-fun lt!1972718 () Bool)

(assert (=> d!1545745 (= lt!1972716 lt!1972718)))

(declare-fun lt!1972722 () Unit!142923)

(declare-fun e!3014946 () Unit!142923)

(assert (=> d!1545745 (= lt!1972722 e!3014946)))

(assert (=> d!1545745 (= c!822191 lt!1972718)))

(assert (=> d!1545745 (= lt!1972718 (containsKey!4368 (toList!7476 lt!1972475) key!5428))))

(assert (=> d!1545745 (= (contains!18772 lt!1972475 key!5428) lt!1972716)))

(declare-fun b!4825131 () Bool)

(declare-fun e!3014944 () Bool)

(assert (=> b!4825131 (= e!3014948 e!3014944)))

(declare-fun res!2054180 () Bool)

(assert (=> b!4825131 (=> (not res!2054180) (not e!3014944))))

(assert (=> b!4825131 (= res!2054180 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972475) key!5428)))))

(declare-fun b!4825132 () Bool)

(declare-fun Unit!142957 () Unit!142923)

(assert (=> b!4825132 (= e!3014947 Unit!142957)))

(declare-fun b!4825133 () Bool)

(assert (=> b!4825133 (= e!3014945 (keys!20223 lt!1972475))))

(declare-fun b!4825134 () Bool)

(assert (=> b!4825134 (= e!3014944 (contains!18775 (keys!20223 lt!1972475) key!5428))))

(declare-fun b!4825135 () Bool)

(declare-fun lt!1972720 () Unit!142923)

(assert (=> b!4825135 (= e!3014946 lt!1972720)))

(declare-fun lt!1972717 () Unit!142923)

(assert (=> b!4825135 (= lt!1972717 (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 lt!1972475) key!5428))))

(assert (=> b!4825135 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972475) key!5428))))

(declare-fun lt!1972721 () Unit!142923)

(assert (=> b!4825135 (= lt!1972721 lt!1972717)))

(assert (=> b!4825135 (= lt!1972720 (lemmaInListThenGetKeysListContains!1153 (toList!7476 lt!1972475) key!5428))))

(assert (=> b!4825135 call!336350))

(declare-fun b!4825136 () Bool)

(assert (=> b!4825136 (= e!3014946 e!3014947)))

(declare-fun c!822189 () Bool)

(assert (=> b!4825136 (= c!822189 call!336350)))

(declare-fun b!4825137 () Bool)

(assert (=> b!4825137 (= e!3014945 (getKeysList!1158 (toList!7476 lt!1972475)))))

(assert (= (and d!1545745 c!822191) b!4825135))

(assert (= (and d!1545745 (not c!822191)) b!4825136))

(assert (= (and b!4825136 c!822189) b!4825130))

(assert (= (and b!4825136 (not c!822189)) b!4825132))

(assert (= (or b!4825135 b!4825136) bm!336345))

(assert (= (and bm!336345 c!822190) b!4825137))

(assert (= (and bm!336345 (not c!822190)) b!4825133))

(assert (= (and d!1545745 res!2054178) b!4825129))

(assert (= (and d!1545745 (not res!2054179)) b!4825131))

(assert (= (and b!4825131 res!2054180) b!4825134))

(declare-fun m!5815098 () Bool)

(assert (=> d!1545745 m!5815098))

(declare-fun m!5815100 () Bool)

(assert (=> b!4825131 m!5815100))

(assert (=> b!4825131 m!5815100))

(declare-fun m!5815102 () Bool)

(assert (=> b!4825131 m!5815102))

(declare-fun m!5815104 () Bool)

(assert (=> b!4825129 m!5815104))

(assert (=> b!4825129 m!5815104))

(declare-fun m!5815106 () Bool)

(assert (=> b!4825129 m!5815106))

(declare-fun m!5815108 () Bool)

(assert (=> bm!336345 m!5815108))

(assert (=> b!4825133 m!5815104))

(assert (=> b!4825130 m!5815098))

(declare-fun m!5815110 () Bool)

(assert (=> b!4825130 m!5815110))

(declare-fun m!5815112 () Bool)

(assert (=> b!4825135 m!5815112))

(assert (=> b!4825135 m!5815100))

(assert (=> b!4825135 m!5815100))

(assert (=> b!4825135 m!5815102))

(declare-fun m!5815114 () Bool)

(assert (=> b!4825135 m!5815114))

(assert (=> b!4825134 m!5815104))

(assert (=> b!4825134 m!5815104))

(assert (=> b!4825134 m!5815106))

(declare-fun m!5815116 () Bool)

(assert (=> b!4825137 m!5815116))

(assert (=> b!4824931 d!1545745))

(declare-fun d!1545747 () Bool)

(declare-fun e!3014950 () Bool)

(assert (=> d!1545747 e!3014950))

(declare-fun res!2054181 () Bool)

(assert (=> d!1545747 (=> res!2054181 e!3014950)))

(declare-fun lt!1972724 () Bool)

(assert (=> d!1545747 (= res!2054181 (not lt!1972724))))

(declare-fun lt!1972723 () Bool)

(assert (=> d!1545747 (= lt!1972724 lt!1972723)))

(declare-fun lt!1972726 () Unit!142923)

(declare-fun e!3014949 () Unit!142923)

(assert (=> d!1545747 (= lt!1972726 e!3014949)))

(declare-fun c!822192 () Bool)

(assert (=> d!1545747 (= c!822192 lt!1972723)))

(assert (=> d!1545747 (= lt!1972723 (containsKey!4369 (toList!7475 lt!1972474) lt!1972478))))

(assert (=> d!1545747 (= (contains!18773 lt!1972474 lt!1972478) lt!1972724)))

(declare-fun b!4825138 () Bool)

(declare-fun lt!1972725 () Unit!142923)

(assert (=> b!4825138 (= e!3014949 lt!1972725)))

(assert (=> b!4825138 (= lt!1972725 (lemmaContainsKeyImpliesGetValueByKeyDefined!2405 (toList!7475 lt!1972474) lt!1972478))))

(assert (=> b!4825138 (isDefined!10608 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478))))

(declare-fun b!4825139 () Bool)

(declare-fun Unit!142958 () Unit!142923)

(assert (=> b!4825139 (= e!3014949 Unit!142958)))

(declare-fun b!4825140 () Bool)

(assert (=> b!4825140 (= e!3014950 (isDefined!10608 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478)))))

(assert (= (and d!1545747 c!822192) b!4825138))

(assert (= (and d!1545747 (not c!822192)) b!4825139))

(assert (= (and d!1545747 (not res!2054181)) b!4825140))

(declare-fun m!5815118 () Bool)

(assert (=> d!1545747 m!5815118))

(declare-fun m!5815120 () Bool)

(assert (=> b!4825138 m!5815120))

(declare-fun m!5815122 () Bool)

(assert (=> b!4825138 m!5815122))

(assert (=> b!4825138 m!5815122))

(declare-fun m!5815124 () Bool)

(assert (=> b!4825138 m!5815124))

(assert (=> b!4825140 m!5815122))

(assert (=> b!4825140 m!5815122))

(assert (=> b!4825140 m!5815124))

(assert (=> b!4824926 d!1545747))

(declare-fun bs!1163566 () Bool)

(declare-fun d!1545749 () Bool)

(assert (= bs!1163566 (and d!1545749 start!500512)))

(declare-fun lambda!236559 () Int)

(assert (=> bs!1163566 (not (= lambda!236559 lambda!236476))))

(declare-fun bs!1163567 () Bool)

(assert (= bs!1163567 (and d!1545749 d!1545691)))

(assert (=> bs!1163567 (not (= lambda!236559 lambda!236482))))

(declare-fun bs!1163568 () Bool)

(assert (= bs!1163568 (and d!1545749 d!1545733)))

(assert (=> bs!1163568 (not (= lambda!236559 lambda!236556))))

(assert (=> d!1545749 true))

(assert (=> d!1545749 (= (allKeysSameHashInMap!2580 lt!1972474 hashF!1509) (forall!12602 (toList!7475 lt!1972474) lambda!236559))))

(declare-fun bs!1163569 () Bool)

(assert (= bs!1163569 d!1545749))

(declare-fun m!5815126 () Bool)

(assert (=> bs!1163569 m!5815126))

(assert (=> b!4824921 d!1545749))

(declare-fun bs!1163570 () Bool)

(declare-fun d!1545751 () Bool)

(assert (= bs!1163570 (and d!1545751 start!500512)))

(declare-fun lambda!236560 () Int)

(assert (=> bs!1163570 (not (= lambda!236560 lambda!236476))))

(declare-fun bs!1163571 () Bool)

(assert (= bs!1163571 (and d!1545751 d!1545691)))

(assert (=> bs!1163571 (not (= lambda!236560 lambda!236482))))

(declare-fun bs!1163572 () Bool)

(assert (= bs!1163572 (and d!1545751 d!1545733)))

(assert (=> bs!1163572 (not (= lambda!236560 lambda!236556))))

(declare-fun bs!1163573 () Bool)

(assert (= bs!1163573 (and d!1545751 d!1545749)))

(assert (=> bs!1163573 (= lambda!236560 lambda!236559)))

(assert (=> d!1545751 true))

(assert (=> d!1545751 (= (allKeysSameHashInMap!2580 lm!2280 hashF!1509) (forall!12602 (toList!7475 lm!2280) lambda!236560))))

(declare-fun bs!1163574 () Bool)

(assert (= bs!1163574 d!1545751))

(declare-fun m!5815128 () Bool)

(assert (=> bs!1163574 m!5815128))

(assert (=> b!4824927 d!1545751))

(declare-fun d!1545753 () Bool)

(declare-fun res!2054182 () Bool)

(declare-fun e!3014951 () Bool)

(assert (=> d!1545753 (=> res!2054182 e!3014951)))

(assert (=> d!1545753 (= res!2054182 (and ((_ is Cons!54966) (apply!13351 lt!1972474 lt!1972478)) (= (_1!32387 (h!61400 (apply!13351 lt!1972474 lt!1972478))) key!5428)))))

(assert (=> d!1545753 (= (containsKey!4365 (apply!13351 lt!1972474 lt!1972478) key!5428) e!3014951)))

(declare-fun b!4825143 () Bool)

(declare-fun e!3014952 () Bool)

(assert (=> b!4825143 (= e!3014951 e!3014952)))

(declare-fun res!2054183 () Bool)

(assert (=> b!4825143 (=> (not res!2054183) (not e!3014952))))

(assert (=> b!4825143 (= res!2054183 ((_ is Cons!54966) (apply!13351 lt!1972474 lt!1972478)))))

(declare-fun b!4825144 () Bool)

(assert (=> b!4825144 (= e!3014952 (containsKey!4365 (t!362586 (apply!13351 lt!1972474 lt!1972478)) key!5428))))

(assert (= (and d!1545753 (not res!2054182)) b!4825143))

(assert (= (and b!4825143 res!2054183) b!4825144))

(declare-fun m!5815130 () Bool)

(assert (=> b!4825144 m!5815130))

(assert (=> b!4824922 d!1545753))

(declare-fun d!1545755 () Bool)

(assert (=> d!1545755 (= (apply!13351 lt!1972474 lt!1972478) (get!18821 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478)))))

(declare-fun bs!1163575 () Bool)

(assert (= bs!1163575 d!1545755))

(assert (=> bs!1163575 m!5815122))

(assert (=> bs!1163575 m!5815122))

(declare-fun m!5815132 () Bool)

(assert (=> bs!1163575 m!5815132))

(assert (=> b!4824922 d!1545755))

(declare-fun b!4825149 () Bool)

(declare-fun e!3014955 () Bool)

(declare-fun tp!1362569 () Bool)

(declare-fun tp!1362570 () Bool)

(assert (=> b!4825149 (= e!3014955 (and tp!1362569 tp!1362570))))

(assert (=> b!4824928 (= tp!1362558 e!3014955)))

(assert (= (and b!4824928 ((_ is Cons!54967) (toList!7475 lm!2280))) b!4825149))

(declare-fun b_lambda!189733 () Bool)

(assert (= b_lambda!189721 (or start!500512 b_lambda!189733)))

(declare-fun bs!1163576 () Bool)

(declare-fun d!1545757 () Bool)

(assert (= bs!1163576 (and d!1545757 start!500512)))

(assert (=> bs!1163576 (= (dynLambda!22214 lambda!236476 (h!61401 (toList!7475 lm!2280))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> bs!1163576 m!5814890))

(assert (=> b!4824953 d!1545757))

(declare-fun b_lambda!189735 () Bool)

(assert (= b_lambda!189731 (or start!500512 b_lambda!189735)))

(declare-fun bs!1163577 () Bool)

(declare-fun d!1545759 () Bool)

(assert (= bs!1163577 (and d!1545759 start!500512)))

(assert (=> bs!1163577 (= (dynLambda!22214 lambda!236476 (h!61401 (toList!7475 lt!1972474))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lt!1972474)))))))

(declare-fun m!5815134 () Bool)

(assert (=> bs!1163577 m!5815134))

(assert (=> b!4825104 d!1545759))

(check-sat (not bm!336343) (not d!1545741) (not b!4825105) (not b!4825002) (not d!1545743) (not b!4825135) (not bs!1163577) (not d!1545685) (not d!1545751) (not bm!336322) (not d!1545691) (not b!4825134) (not b!4824972) (not bm!336345) (not d!1545671) (not b!4824974) (not b_lambda!189733) (not d!1545745) (not bs!1163576) (not d!1545681) (not b!4825138) (not b!4824970) (not d!1545735) (not b!4825130) (not b!4825129) (not d!1545755) (not b!4824997) (not b!4825133) (not b!4824954) (not b!4825099) (not b!4824967) (not b!4824998) (not d!1545733) (not b!4825117) (not b!4825137) (not b!4825140) tp_is_empty!34451 (not d!1545695) (not b_lambda!189735) (not b!4825126) (not b!4825131) (not b!4825001) (not b!4825097) (not d!1545749) (not b!4825100) (not d!1545747) (not d!1545693) (not b!4825101) (not b!4825128) (not b!4825144) (not b!4825119) (not bm!336342) (not b!4825110) (not d!1545683) (not b!4825003) (not bm!336344) (not b!4825005) (not b!4825149) (not b!4824999))
(check-sat)
(get-model)

(assert (=> d!1545691 d!1545687))

(assert (=> d!1545691 d!1545683))

(declare-fun d!1545863 () Bool)

(assert (=> d!1545863 (not (containsKey!4365 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))) key!5428))))

(assert (=> d!1545863 true))

(declare-fun _$39!436 () Unit!142923)

(assert (=> d!1545863 (= (choose!35111 lm!2280 key!5428 (_1!32388 (h!61401 (toList!7475 lm!2280))) hashF!1509) _$39!436)))

(declare-fun bs!1163607 () Bool)

(assert (= bs!1163607 d!1545863))

(assert (=> bs!1163607 m!5814808))

(assert (=> bs!1163607 m!5814808))

(assert (=> bs!1163607 m!5814816))

(assert (=> d!1545691 d!1545863))

(declare-fun d!1545865 () Bool)

(declare-fun res!2054271 () Bool)

(declare-fun e!3015068 () Bool)

(assert (=> d!1545865 (=> res!2054271 e!3015068)))

(assert (=> d!1545865 (= res!2054271 ((_ is Nil!54967) (toList!7475 lm!2280)))))

(assert (=> d!1545865 (= (forall!12602 (toList!7475 lm!2280) lambda!236482) e!3015068)))

(declare-fun b!4825309 () Bool)

(declare-fun e!3015069 () Bool)

(assert (=> b!4825309 (= e!3015068 e!3015069)))

(declare-fun res!2054272 () Bool)

(assert (=> b!4825309 (=> (not res!2054272) (not e!3015069))))

(assert (=> b!4825309 (= res!2054272 (dynLambda!22214 lambda!236482 (h!61401 (toList!7475 lm!2280))))))

(declare-fun b!4825310 () Bool)

(assert (=> b!4825310 (= e!3015069 (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236482))))

(assert (= (and d!1545865 (not res!2054271)) b!4825309))

(assert (= (and b!4825309 res!2054272) b!4825310))

(declare-fun b_lambda!189755 () Bool)

(assert (=> (not b_lambda!189755) (not b!4825309)))

(declare-fun m!5815342 () Bool)

(assert (=> b!4825309 m!5815342))

(declare-fun m!5815344 () Bool)

(assert (=> b!4825310 m!5815344))

(assert (=> d!1545691 d!1545865))

(declare-fun d!1545869 () Bool)

(declare-fun lt!1972806 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9819 (List!55093) (InoxSet K!16649))

(assert (=> d!1545869 (= lt!1972806 (select (content!9819 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428))))

(declare-fun e!3015086 () Bool)

(assert (=> d!1545869 (= lt!1972806 e!3015086)))

(declare-fun res!2054287 () Bool)

(assert (=> d!1545869 (=> (not res!2054287) (not e!3015086))))

(assert (=> d!1545869 (= res!2054287 ((_ is Cons!54969) (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))

(assert (=> d!1545869 (= (contains!18775 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) lt!1972806)))

(declare-fun b!4825330 () Bool)

(declare-fun e!3015085 () Bool)

(assert (=> b!4825330 (= e!3015086 e!3015085)))

(declare-fun res!2054286 () Bool)

(assert (=> b!4825330 (=> res!2054286 e!3015085)))

(assert (=> b!4825330 (= res!2054286 (= (h!61403 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428))))

(declare-fun b!4825331 () Bool)

(assert (=> b!4825331 (= e!3015085 (contains!18775 (t!362589 (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428))))

(assert (= (and d!1545869 res!2054287) b!4825330))

(assert (= (and b!4825330 (not res!2054286)) b!4825331))

(assert (=> d!1545869 m!5814908))

(declare-fun m!5815374 () Bool)

(assert (=> d!1545869 m!5815374))

(declare-fun m!5815376 () Bool)

(assert (=> d!1545869 m!5815376))

(declare-fun m!5815378 () Bool)

(assert (=> b!4825331 m!5815378))

(assert (=> b!4825002 d!1545869))

(declare-fun b!4825340 () Bool)

(assert (=> b!4825340 true))

(declare-fun d!1545877 () Bool)

(declare-fun e!3015089 () Bool)

(assert (=> d!1545877 e!3015089))

(declare-fun res!2054295 () Bool)

(assert (=> d!1545877 (=> (not res!2054295) (not e!3015089))))

(declare-fun lt!1972812 () List!55093)

(declare-fun noDuplicate!960 (List!55093) Bool)

(assert (=> d!1545877 (= res!2054295 (noDuplicate!960 lt!1972812))))

(assert (=> d!1545877 (= lt!1972812 (getKeysList!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))

(assert (=> d!1545877 (= (keys!20223 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) lt!1972812)))

(declare-fun b!4825339 () Bool)

(declare-fun res!2054296 () Bool)

(assert (=> b!4825339 (=> (not res!2054296) (not e!3015089))))

(declare-fun length!776 (List!55093) Int)

(declare-fun length!777 (List!55090) Int)

(assert (=> b!4825339 (= res!2054296 (= (length!776 lt!1972812) (length!777 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))))

(declare-fun res!2054294 () Bool)

(assert (=> b!4825340 (=> (not res!2054294) (not e!3015089))))

(declare-fun lambda!236586 () Int)

(declare-fun forall!12606 (List!55093 Int) Bool)

(assert (=> b!4825340 (= res!2054294 (forall!12606 lt!1972812 lambda!236586))))

(declare-fun b!4825341 () Bool)

(declare-fun lambda!236587 () Int)

(declare-fun map!12578 (List!55090 Int) List!55093)

(assert (=> b!4825341 (= e!3015089 (= (content!9819 lt!1972812) (content!9819 (map!12578 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) lambda!236587))))))

(assert (= (and d!1545877 res!2054295) b!4825339))

(assert (= (and b!4825339 res!2054296) b!4825340))

(assert (= (and b!4825340 res!2054294) b!4825341))

(declare-fun m!5815388 () Bool)

(assert (=> d!1545877 m!5815388))

(assert (=> d!1545877 m!5814920))

(declare-fun m!5815390 () Bool)

(assert (=> b!4825339 m!5815390))

(declare-fun m!5815392 () Bool)

(assert (=> b!4825339 m!5815392))

(declare-fun m!5815394 () Bool)

(assert (=> b!4825340 m!5815394))

(declare-fun m!5815396 () Bool)

(assert (=> b!4825341 m!5815396))

(declare-fun m!5815398 () Bool)

(assert (=> b!4825341 m!5815398))

(assert (=> b!4825341 m!5815398))

(declare-fun m!5815400 () Bool)

(assert (=> b!4825341 m!5815400))

(assert (=> b!4825002 d!1545877))

(declare-fun d!1545881 () Bool)

(declare-fun lt!1972813 () Bool)

(assert (=> d!1545881 (= lt!1972813 (select (content!9819 e!3014945) key!5428))))

(declare-fun e!3015093 () Bool)

(assert (=> d!1545881 (= lt!1972813 e!3015093)))

(declare-fun res!2054300 () Bool)

(assert (=> d!1545881 (=> (not res!2054300) (not e!3015093))))

(assert (=> d!1545881 (= res!2054300 ((_ is Cons!54969) e!3014945))))

(assert (=> d!1545881 (= (contains!18775 e!3014945 key!5428) lt!1972813)))

(declare-fun b!4825346 () Bool)

(declare-fun e!3015092 () Bool)

(assert (=> b!4825346 (= e!3015093 e!3015092)))

(declare-fun res!2054299 () Bool)

(assert (=> b!4825346 (=> res!2054299 e!3015092)))

(assert (=> b!4825346 (= res!2054299 (= (h!61403 e!3014945) key!5428))))

(declare-fun b!4825347 () Bool)

(assert (=> b!4825347 (= e!3015092 (contains!18775 (t!362589 e!3014945) key!5428))))

(assert (= (and d!1545881 res!2054300) b!4825346))

(assert (= (and b!4825346 (not res!2054299)) b!4825347))

(declare-fun m!5815406 () Bool)

(assert (=> d!1545881 m!5815406))

(declare-fun m!5815408 () Bool)

(assert (=> d!1545881 m!5815408))

(declare-fun m!5815410 () Bool)

(assert (=> b!4825347 m!5815410))

(assert (=> bm!336345 d!1545881))

(declare-fun d!1545885 () Bool)

(declare-fun isEmpty!29653 (Option!13492) Bool)

(assert (=> d!1545885 (= (isDefined!10608 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478)) (not (isEmpty!29653 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478))))))

(declare-fun bs!1163615 () Bool)

(assert (= bs!1163615 d!1545885))

(assert (=> bs!1163615 m!5815122))

(declare-fun m!5815412 () Bool)

(assert (=> bs!1163615 m!5815412))

(assert (=> b!4825140 d!1545885))

(declare-fun b!4825361 () Bool)

(declare-fun e!3015101 () Option!13492)

(assert (=> b!4825361 (= e!3015101 (Some!13491 (_2!32388 (h!61401 (toList!7475 lt!1972474)))))))

(declare-fun b!4825362 () Bool)

(declare-fun e!3015102 () Option!13492)

(assert (=> b!4825362 (= e!3015101 e!3015102)))

(declare-fun c!822237 () Bool)

(assert (=> b!4825362 (= c!822237 (and ((_ is Cons!54967) (toList!7475 lt!1972474)) (not (= (_1!32388 (h!61401 (toList!7475 lt!1972474))) lt!1972478))))))

(declare-fun b!4825364 () Bool)

(assert (=> b!4825364 (= e!3015102 None!13491)))

(declare-fun b!4825363 () Bool)

(assert (=> b!4825363 (= e!3015102 (getValueByKey!2619 (t!362587 (toList!7475 lt!1972474)) lt!1972478))))

(declare-fun d!1545887 () Bool)

(declare-fun c!822236 () Bool)

(assert (=> d!1545887 (= c!822236 (and ((_ is Cons!54967) (toList!7475 lt!1972474)) (= (_1!32388 (h!61401 (toList!7475 lt!1972474))) lt!1972478)))))

(assert (=> d!1545887 (= (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478) e!3015101)))

(assert (= (and d!1545887 c!822236) b!4825361))

(assert (= (and d!1545887 (not c!822236)) b!4825362))

(assert (= (and b!4825362 c!822237) b!4825363))

(assert (= (and b!4825362 (not c!822237)) b!4825364))

(declare-fun m!5815414 () Bool)

(assert (=> b!4825363 m!5815414))

(assert (=> b!4825140 d!1545887))

(declare-fun d!1545889 () Bool)

(assert (=> d!1545889 (= (get!18821 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478)) (v!49170 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478)))))

(assert (=> d!1545681 d!1545889))

(declare-fun b!4825365 () Bool)

(declare-fun e!3015103 () Option!13492)

(assert (=> b!4825365 (= e!3015103 (Some!13491 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(declare-fun b!4825366 () Bool)

(declare-fun e!3015104 () Option!13492)

(assert (=> b!4825366 (= e!3015103 e!3015104)))

(declare-fun c!822239 () Bool)

(assert (=> b!4825366 (= c!822239 (and ((_ is Cons!54967) (toList!7475 lm!2280)) (not (= (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478))))))

(declare-fun b!4825368 () Bool)

(assert (=> b!4825368 (= e!3015104 None!13491)))

(declare-fun b!4825367 () Bool)

(assert (=> b!4825367 (= e!3015104 (getValueByKey!2619 (t!362587 (toList!7475 lm!2280)) lt!1972478))))

(declare-fun d!1545891 () Bool)

(declare-fun c!822238 () Bool)

(assert (=> d!1545891 (= c!822238 (and ((_ is Cons!54967) (toList!7475 lm!2280)) (= (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478)))))

(assert (=> d!1545891 (= (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478) e!3015103)))

(assert (= (and d!1545891 c!822238) b!4825365))

(assert (= (and d!1545891 (not c!822238)) b!4825366))

(assert (= (and b!4825366 c!822239) b!4825367))

(assert (= (and b!4825366 (not c!822239)) b!4825368))

(declare-fun m!5815416 () Bool)

(assert (=> b!4825367 m!5815416))

(assert (=> d!1545681 d!1545891))

(declare-fun d!1545893 () Bool)

(assert (=> d!1545893 (isDefined!10608 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478))))

(declare-fun lt!1972837 () Unit!142923)

(declare-fun choose!35115 (List!55091 (_ BitVec 64)) Unit!142923)

(assert (=> d!1545893 (= lt!1972837 (choose!35115 (toList!7475 lt!1972474) lt!1972478))))

(declare-fun e!3015109 () Bool)

(assert (=> d!1545893 e!3015109))

(declare-fun res!2054308 () Bool)

(assert (=> d!1545893 (=> (not res!2054308) (not e!3015109))))

(assert (=> d!1545893 (= res!2054308 (isStrictlySorted!984 (toList!7475 lt!1972474)))))

(assert (=> d!1545893 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2405 (toList!7475 lt!1972474) lt!1972478) lt!1972837)))

(declare-fun b!4825373 () Bool)

(assert (=> b!4825373 (= e!3015109 (containsKey!4369 (toList!7475 lt!1972474) lt!1972478))))

(assert (= (and d!1545893 res!2054308) b!4825373))

(assert (=> d!1545893 m!5815122))

(assert (=> d!1545893 m!5815122))

(assert (=> d!1545893 m!5815124))

(declare-fun m!5815454 () Bool)

(assert (=> d!1545893 m!5815454))

(declare-fun m!5815456 () Bool)

(assert (=> d!1545893 m!5815456))

(assert (=> b!4825373 m!5815118))

(assert (=> b!4825138 d!1545893))

(assert (=> b!4825138 d!1545885))

(assert (=> b!4825138 d!1545887))

(declare-fun d!1545899 () Bool)

(declare-fun res!2054315 () Bool)

(declare-fun e!3015116 () Bool)

(assert (=> d!1545899 (=> res!2054315 e!3015116)))

(assert (=> d!1545899 (= res!2054315 (and ((_ is Cons!54966) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) key!5428)))))

(assert (=> d!1545899 (= (containsKey!4368 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) e!3015116)))

(declare-fun b!4825380 () Bool)

(declare-fun e!3015117 () Bool)

(assert (=> b!4825380 (= e!3015116 e!3015117)))

(declare-fun res!2054316 () Bool)

(assert (=> b!4825380 (=> (not res!2054316) (not e!3015117))))

(assert (=> b!4825380 (= res!2054316 ((_ is Cons!54966) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))

(declare-fun b!4825381 () Bool)

(assert (=> b!4825381 (= e!3015117 (containsKey!4368 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428))))

(assert (= (and d!1545899 (not res!2054315)) b!4825380))

(assert (= (and b!4825380 res!2054316) b!4825381))

(declare-fun m!5815458 () Bool)

(assert (=> b!4825381 m!5815458))

(assert (=> b!4824998 d!1545899))

(declare-fun d!1545901 () Bool)

(assert (=> d!1545901 (containsKey!4368 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428)))

(declare-fun lt!1972843 () Unit!142923)

(declare-fun choose!35116 (List!55090 K!16649) Unit!142923)

(assert (=> d!1545901 (= lt!1972843 (choose!35116 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> d!1545901 (invariantList!1811 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))

(assert (=> d!1545901 (= (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) lt!1972843)))

(declare-fun bs!1163628 () Bool)

(assert (= bs!1163628 d!1545901))

(assert (=> bs!1163628 m!5814902))

(declare-fun m!5815464 () Bool)

(assert (=> bs!1163628 m!5815464))

(declare-fun m!5815466 () Bool)

(assert (=> bs!1163628 m!5815466))

(assert (=> b!4824998 d!1545901))

(declare-fun d!1545905 () Bool)

(declare-fun noDuplicatedKeys!477 (List!55090) Bool)

(assert (=> d!1545905 (= (invariantList!1811 (toList!7476 lt!1972698)) (noDuplicatedKeys!477 (toList!7476 lt!1972698)))))

(declare-fun bs!1163629 () Bool)

(assert (= bs!1163629 d!1545905))

(declare-fun m!5815468 () Bool)

(assert (=> bs!1163629 m!5815468))

(assert (=> d!1545733 d!1545905))

(declare-fun d!1545907 () Bool)

(declare-fun res!2054318 () Bool)

(declare-fun e!3015119 () Bool)

(assert (=> d!1545907 (=> res!2054318 e!3015119)))

(assert (=> d!1545907 (= res!2054318 ((_ is Nil!54967) (t!362587 (toList!7475 lm!2280))))))

(assert (=> d!1545907 (= (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236556) e!3015119)))

(declare-fun b!4825383 () Bool)

(declare-fun e!3015120 () Bool)

(assert (=> b!4825383 (= e!3015119 e!3015120)))

(declare-fun res!2054319 () Bool)

(assert (=> b!4825383 (=> (not res!2054319) (not e!3015120))))

(assert (=> b!4825383 (= res!2054319 (dynLambda!22214 lambda!236556 (h!61401 (t!362587 (toList!7475 lm!2280)))))))

(declare-fun b!4825384 () Bool)

(assert (=> b!4825384 (= e!3015120 (forall!12602 (t!362587 (t!362587 (toList!7475 lm!2280))) lambda!236556))))

(assert (= (and d!1545907 (not res!2054318)) b!4825383))

(assert (= (and b!4825383 res!2054319) b!4825384))

(declare-fun b_lambda!189767 () Bool)

(assert (=> (not b_lambda!189767) (not b!4825383)))

(declare-fun m!5815470 () Bool)

(assert (=> b!4825383 m!5815470))

(declare-fun m!5815472 () Bool)

(assert (=> b!4825384 m!5815472))

(assert (=> d!1545733 d!1545907))

(declare-fun d!1545909 () Bool)

(declare-fun res!2054330 () Bool)

(declare-fun e!3015127 () Bool)

(assert (=> d!1545909 (=> res!2054330 e!3015127)))

(assert (=> d!1545909 (= res!2054330 (not ((_ is Cons!54966) (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> d!1545909 (= (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lm!2280)))) e!3015127)))

(declare-fun b!4825395 () Bool)

(declare-fun e!3015128 () Bool)

(assert (=> b!4825395 (= e!3015127 e!3015128)))

(declare-fun res!2054331 () Bool)

(assert (=> b!4825395 (=> (not res!2054331) (not e!3015128))))

(assert (=> b!4825395 (= res!2054331 (not (containsKey!4365 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825396 () Bool)

(assert (=> b!4825396 (= e!3015128 (noDuplicateKeys!2450 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (= (and d!1545909 (not res!2054330)) b!4825395))

(assert (= (and b!4825395 res!2054331) b!4825396))

(declare-fun m!5815474 () Bool)

(assert (=> b!4825395 m!5815474))

(declare-fun m!5815476 () Bool)

(assert (=> b!4825396 m!5815476))

(assert (=> bs!1163576 d!1545909))

(declare-fun d!1545911 () Bool)

(declare-fun lt!1972846 () Bool)

(assert (=> d!1545911 (= lt!1972846 (select (content!9819 e!3014862) key!5428))))

(declare-fun e!3015130 () Bool)

(assert (=> d!1545911 (= lt!1972846 e!3015130)))

(declare-fun res!2054333 () Bool)

(assert (=> d!1545911 (=> (not res!2054333) (not e!3015130))))

(assert (=> d!1545911 (= res!2054333 ((_ is Cons!54969) e!3014862))))

(assert (=> d!1545911 (= (contains!18775 e!3014862 key!5428) lt!1972846)))

(declare-fun b!4825397 () Bool)

(declare-fun e!3015129 () Bool)

(assert (=> b!4825397 (= e!3015130 e!3015129)))

(declare-fun res!2054332 () Bool)

(assert (=> b!4825397 (=> res!2054332 e!3015129)))

(assert (=> b!4825397 (= res!2054332 (= (h!61403 e!3014862) key!5428))))

(declare-fun b!4825398 () Bool)

(assert (=> b!4825398 (= e!3015129 (contains!18775 (t!362589 e!3014862) key!5428))))

(assert (= (and d!1545911 res!2054333) b!4825397))

(assert (= (and b!4825397 (not res!2054332)) b!4825398))

(declare-fun m!5815478 () Bool)

(assert (=> d!1545911 m!5815478))

(declare-fun m!5815480 () Bool)

(assert (=> d!1545911 m!5815480))

(declare-fun m!5815482 () Bool)

(assert (=> b!4825398 m!5815482))

(assert (=> bm!336322 d!1545911))

(declare-fun d!1545913 () Bool)

(declare-fun res!2054341 () Bool)

(declare-fun e!3015136 () Bool)

(assert (=> d!1545913 (=> res!2054341 e!3015136)))

(assert (=> d!1545913 (= res!2054341 ((_ is Nil!54966) (toList!7476 lt!1972475)))))

(assert (=> d!1545913 (= (forall!12604 (toList!7476 lt!1972475) lambda!236553) e!3015136)))

(declare-fun b!4825408 () Bool)

(declare-fun e!3015137 () Bool)

(assert (=> b!4825408 (= e!3015136 e!3015137)))

(declare-fun res!2054342 () Bool)

(assert (=> b!4825408 (=> (not res!2054342) (not e!3015137))))

(declare-fun dynLambda!22216 (Int tuple2!58186) Bool)

(assert (=> b!4825408 (= res!2054342 (dynLambda!22216 lambda!236553 (h!61400 (toList!7476 lt!1972475))))))

(declare-fun b!4825409 () Bool)

(assert (=> b!4825409 (= e!3015137 (forall!12604 (t!362586 (toList!7476 lt!1972475)) lambda!236553))))

(assert (= (and d!1545913 (not res!2054341)) b!4825408))

(assert (= (and b!4825408 res!2054342) b!4825409))

(declare-fun b_lambda!189769 () Bool)

(assert (=> (not b_lambda!189769) (not b!4825408)))

(declare-fun m!5815484 () Bool)

(assert (=> b!4825408 m!5815484))

(declare-fun m!5815486 () Bool)

(assert (=> b!4825409 m!5815486))

(assert (=> b!4825100 d!1545913))

(declare-fun d!1545915 () Bool)

(declare-fun res!2054343 () Bool)

(declare-fun e!3015138 () Bool)

(assert (=> d!1545915 (=> res!2054343 e!3015138)))

(assert (=> d!1545915 (= res!2054343 ((_ is Nil!54966) (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> d!1545915 (= (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236552) e!3015138)))

(declare-fun b!4825410 () Bool)

(declare-fun e!3015139 () Bool)

(assert (=> b!4825410 (= e!3015138 e!3015139)))

(declare-fun res!2054344 () Bool)

(assert (=> b!4825410 (=> (not res!2054344) (not e!3015139))))

(assert (=> b!4825410 (= res!2054344 (dynLambda!22216 lambda!236552 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825411 () Bool)

(assert (=> b!4825411 (= e!3015139 (forall!12604 (t!362586 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lambda!236552))))

(assert (= (and d!1545915 (not res!2054343)) b!4825410))

(assert (= (and b!4825410 res!2054344) b!4825411))

(declare-fun b_lambda!189771 () Bool)

(assert (=> (not b_lambda!189771) (not b!4825410)))

(declare-fun m!5815494 () Bool)

(assert (=> b!4825410 m!5815494))

(declare-fun m!5815498 () Bool)

(assert (=> b!4825411 m!5815498))

(assert (=> b!4825099 d!1545915))

(declare-fun d!1545917 () Bool)

(declare-fun e!3015146 () Bool)

(assert (=> d!1545917 e!3015146))

(declare-fun res!2054355 () Bool)

(assert (=> d!1545917 (=> (not res!2054355) (not e!3015146))))

(declare-fun lt!1972865 () ListMap!6853)

(assert (=> d!1545917 (= res!2054355 (contains!18772 lt!1972865 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972864 () List!55090)

(assert (=> d!1545917 (= lt!1972865 (ListMap!6854 lt!1972864))))

(declare-fun lt!1972863 () Unit!142923)

(declare-fun lt!1972862 () Unit!142923)

(assert (=> d!1545917 (= lt!1972863 lt!1972862)))

(assert (=> d!1545917 (= (getValueByKey!2620 lt!1972864 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (Some!13492 (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1218 (List!55090 K!16649 V!16895) Unit!142923)

(assert (=> d!1545917 (= lt!1972862 (lemmaContainsTupThenGetReturnValue!1218 lt!1972864 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!726 (List!55090 K!16649 V!16895) List!55090)

(assert (=> d!1545917 (= lt!1972864 (insertNoDuplicatedKeys!726 (toList!7476 lt!1972475) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> d!1545917 (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972865)))

(declare-fun b!4825422 () Bool)

(declare-fun res!2054356 () Bool)

(assert (=> b!4825422 (=> (not res!2054356) (not e!3015146))))

(assert (=> b!4825422 (= res!2054356 (= (getValueByKey!2620 (toList!7476 lt!1972865) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (Some!13492 (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825423 () Bool)

(declare-fun contains!18776 (List!55090 tuple2!58186) Bool)

(assert (=> b!4825423 (= e!3015146 (contains!18776 (toList!7476 lt!1972865) (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (= (and d!1545917 res!2054355) b!4825422))

(assert (= (and b!4825422 res!2054356) b!4825423))

(declare-fun m!5815530 () Bool)

(assert (=> d!1545917 m!5815530))

(declare-fun m!5815532 () Bool)

(assert (=> d!1545917 m!5815532))

(declare-fun m!5815534 () Bool)

(assert (=> d!1545917 m!5815534))

(declare-fun m!5815536 () Bool)

(assert (=> d!1545917 m!5815536))

(declare-fun m!5815538 () Bool)

(assert (=> b!4825422 m!5815538))

(declare-fun m!5815540 () Bool)

(assert (=> b!4825423 m!5815540))

(assert (=> b!4825099 d!1545917))

(declare-fun d!1545931 () Bool)

(assert (=> d!1545931 (dynLambda!22216 lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(declare-fun lt!1972869 () Unit!142923)

(declare-fun choose!35118 (List!55090 Int tuple2!58186) Unit!142923)

(assert (=> d!1545931 (= lt!1972869 (choose!35118 (toList!7476 lt!1972691) lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun e!3015159 () Bool)

(assert (=> d!1545931 e!3015159))

(declare-fun res!2054369 () Bool)

(assert (=> d!1545931 (=> (not res!2054369) (not e!3015159))))

(assert (=> d!1545931 (= res!2054369 (forall!12604 (toList!7476 lt!1972691) lambda!236552))))

(assert (=> d!1545931 (= (forallContained!4382 (toList!7476 lt!1972691) lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972869)))

(declare-fun b!4825436 () Bool)

(assert (=> b!4825436 (= e!3015159 (contains!18776 (toList!7476 lt!1972691) (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (= (and d!1545931 res!2054369) b!4825436))

(declare-fun b_lambda!189775 () Bool)

(assert (=> (not b_lambda!189775) (not d!1545931)))

(declare-fun m!5815552 () Bool)

(assert (=> d!1545931 m!5815552))

(declare-fun m!5815556 () Bool)

(assert (=> d!1545931 m!5815556))

(assert (=> d!1545931 m!5815060))

(declare-fun m!5815558 () Bool)

(assert (=> b!4825436 m!5815558))

(assert (=> b!4825099 d!1545931))

(declare-fun d!1545939 () Bool)

(declare-fun res!2054371 () Bool)

(declare-fun e!3015160 () Bool)

(assert (=> d!1545939 (=> res!2054371 e!3015160)))

(assert (=> d!1545939 (= res!2054371 ((_ is Nil!54966) (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> d!1545939 (= (forall!12604 (_2!32388 (h!61401 (toList!7475 lm!2280))) lambda!236552) e!3015160)))

(declare-fun b!4825437 () Bool)

(declare-fun e!3015161 () Bool)

(assert (=> b!4825437 (= e!3015160 e!3015161)))

(declare-fun res!2054372 () Bool)

(assert (=> b!4825437 (=> (not res!2054372) (not e!3015161))))

(assert (=> b!4825437 (= res!2054372 (dynLambda!22216 lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun b!4825438 () Bool)

(assert (=> b!4825438 (= e!3015161 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236552))))

(assert (= (and d!1545939 (not res!2054371)) b!4825437))

(assert (= (and b!4825437 res!2054372) b!4825438))

(declare-fun b_lambda!189777 () Bool)

(assert (=> (not b_lambda!189777) (not b!4825437)))

(assert (=> b!4825437 m!5815552))

(assert (=> b!4825438 m!5815058))

(assert (=> b!4825099 d!1545939))

(declare-fun bm!336354 () Bool)

(declare-fun call!336359 () Bool)

(declare-fun e!3015167 () List!55093)

(assert (=> bm!336354 (= call!336359 (contains!18775 e!3015167 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun c!822242 () Bool)

(declare-fun c!822243 () Bool)

(assert (=> bm!336354 (= c!822242 c!822243)))

(declare-fun b!4825444 () Bool)

(declare-fun e!3015165 () Bool)

(assert (=> b!4825444 (= e!3015165 (not (contains!18775 (keys!20223 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825445 () Bool)

(assert (=> b!4825445 false))

(declare-fun lt!1972891 () Unit!142923)

(declare-fun lt!1972895 () Unit!142923)

(assert (=> b!4825445 (= lt!1972891 lt!1972895)))

(assert (=> b!4825445 (containsKey!4368 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> b!4825445 (= lt!1972895 (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun e!3015169 () Unit!142923)

(declare-fun Unit!142967 () Unit!142923)

(assert (=> b!4825445 (= e!3015169 Unit!142967)))

(declare-fun d!1545941 () Bool)

(declare-fun e!3015170 () Bool)

(assert (=> d!1545941 e!3015170))

(declare-fun res!2054376 () Bool)

(assert (=> d!1545941 (=> res!2054376 e!3015170)))

(assert (=> d!1545941 (= res!2054376 e!3015165)))

(declare-fun res!2054375 () Bool)

(assert (=> d!1545941 (=> (not res!2054375) (not e!3015165))))

(declare-fun lt!1972892 () Bool)

(assert (=> d!1545941 (= res!2054375 (not lt!1972892))))

(declare-fun lt!1972894 () Bool)

(assert (=> d!1545941 (= lt!1972892 lt!1972894)))

(declare-fun lt!1972898 () Unit!142923)

(declare-fun e!3015168 () Unit!142923)

(assert (=> d!1545941 (= lt!1972898 e!3015168)))

(assert (=> d!1545941 (= c!822243 lt!1972894)))

(assert (=> d!1545941 (= lt!1972894 (containsKey!4368 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> d!1545941 (= (contains!18772 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lt!1972892)))

(declare-fun b!4825446 () Bool)

(declare-fun e!3015166 () Bool)

(assert (=> b!4825446 (= e!3015170 e!3015166)))

(declare-fun res!2054377 () Bool)

(assert (=> b!4825446 (=> (not res!2054377) (not e!3015166))))

(assert (=> b!4825446 (= res!2054377 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825447 () Bool)

(declare-fun Unit!142968 () Unit!142923)

(assert (=> b!4825447 (= e!3015169 Unit!142968)))

(declare-fun b!4825448 () Bool)

(assert (=> b!4825448 (= e!3015167 (keys!20223 lt!1972682))))

(declare-fun b!4825449 () Bool)

(assert (=> b!4825449 (= e!3015166 (contains!18775 (keys!20223 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825450 () Bool)

(declare-fun lt!1972896 () Unit!142923)

(assert (=> b!4825450 (= e!3015168 lt!1972896)))

(declare-fun lt!1972893 () Unit!142923)

(assert (=> b!4825450 (= lt!1972893 (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825450 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972897 () Unit!142923)

(assert (=> b!4825450 (= lt!1972897 lt!1972893)))

(assert (=> b!4825450 (= lt!1972896 (lemmaInListThenGetKeysListContains!1153 (toList!7476 lt!1972682) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825450 call!336359))

(declare-fun b!4825451 () Bool)

(assert (=> b!4825451 (= e!3015168 e!3015169)))

(declare-fun c!822241 () Bool)

(assert (=> b!4825451 (= c!822241 call!336359)))

(declare-fun b!4825452 () Bool)

(assert (=> b!4825452 (= e!3015167 (getKeysList!1158 (toList!7476 lt!1972682)))))

(assert (= (and d!1545941 c!822243) b!4825450))

(assert (= (and d!1545941 (not c!822243)) b!4825451))

(assert (= (and b!4825451 c!822241) b!4825445))

(assert (= (and b!4825451 (not c!822241)) b!4825447))

(assert (= (or b!4825450 b!4825451) bm!336354))

(assert (= (and bm!336354 c!822242) b!4825452))

(assert (= (and bm!336354 (not c!822242)) b!4825448))

(assert (= (and d!1545941 res!2054375) b!4825444))

(assert (= (and d!1545941 (not res!2054376)) b!4825446))

(assert (= (and b!4825446 res!2054377) b!4825449))

(declare-fun m!5815560 () Bool)

(assert (=> d!1545941 m!5815560))

(declare-fun m!5815562 () Bool)

(assert (=> b!4825446 m!5815562))

(assert (=> b!4825446 m!5815562))

(declare-fun m!5815564 () Bool)

(assert (=> b!4825446 m!5815564))

(declare-fun m!5815566 () Bool)

(assert (=> b!4825444 m!5815566))

(assert (=> b!4825444 m!5815566))

(declare-fun m!5815568 () Bool)

(assert (=> b!4825444 m!5815568))

(declare-fun m!5815570 () Bool)

(assert (=> bm!336354 m!5815570))

(assert (=> b!4825448 m!5815566))

(assert (=> b!4825445 m!5815560))

(declare-fun m!5815572 () Bool)

(assert (=> b!4825445 m!5815572))

(declare-fun m!5815574 () Bool)

(assert (=> b!4825450 m!5815574))

(assert (=> b!4825450 m!5815562))

(assert (=> b!4825450 m!5815562))

(assert (=> b!4825450 m!5815564))

(declare-fun m!5815576 () Bool)

(assert (=> b!4825450 m!5815576))

(assert (=> b!4825449 m!5815566))

(assert (=> b!4825449 m!5815566))

(assert (=> b!4825449 m!5815568))

(declare-fun m!5815578 () Bool)

(assert (=> b!4825452 m!5815578))

(assert (=> b!4825099 d!1545941))

(declare-fun bs!1163689 () Bool)

(declare-fun d!1545943 () Bool)

(assert (= bs!1163689 (and d!1545943 b!4825098)))

(declare-fun lambda!236612 () Int)

(assert (=> bs!1163689 (= (= lt!1972682 lt!1972475) (= lambda!236612 lambda!236550))))

(declare-fun bs!1163690 () Bool)

(assert (= bs!1163690 (and d!1545943 b!4825099)))

(assert (=> bs!1163690 (= (= lt!1972682 lt!1972475) (= lambda!236612 lambda!236551))))

(assert (=> bs!1163690 (= lambda!236612 lambda!236552)))

(declare-fun bs!1163691 () Bool)

(assert (= bs!1163691 (and d!1545943 d!1545695)))

(assert (=> bs!1163691 (= (= lt!1972682 lt!1972695) (= lambda!236612 lambda!236553))))

(assert (=> d!1545943 true))

(assert (=> d!1545943 (forall!12604 (toList!7476 lt!1972475) lambda!236612)))

(declare-fun lt!1972902 () Unit!142923)

(declare-fun choose!35120 (ListMap!6853 ListMap!6853 K!16649 V!16895) Unit!142923)

(assert (=> d!1545943 (= lt!1972902 (choose!35120 lt!1972475 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> d!1545943 (forall!12604 (toList!7476 (+!2535 lt!1972475 (tuple2!58187 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))) lambda!236612)))

(assert (=> d!1545943 (= (addForallContainsKeyThenBeforeAdding!989 lt!1972475 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lt!1972902)))

(declare-fun bs!1163694 () Bool)

(assert (= bs!1163694 d!1545943))

(declare-fun m!5815624 () Bool)

(assert (=> bs!1163694 m!5815624))

(declare-fun m!5815628 () Bool)

(assert (=> bs!1163694 m!5815628))

(declare-fun m!5815630 () Bool)

(assert (=> bs!1163694 m!5815630))

(declare-fun m!5815632 () Bool)

(assert (=> bs!1163694 m!5815632))

(assert (=> b!4825099 d!1545943))

(declare-fun bm!336355 () Bool)

(declare-fun call!336360 () Bool)

(declare-fun e!3015178 () List!55093)

(assert (=> bm!336355 (= call!336360 (contains!18775 e!3015178 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun c!822246 () Bool)

(declare-fun c!822247 () Bool)

(assert (=> bm!336355 (= c!822246 c!822247)))

(declare-fun b!4825462 () Bool)

(declare-fun e!3015176 () Bool)

(assert (=> b!4825462 (= e!3015176 (not (contains!18775 (keys!20223 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825463 () Bool)

(assert (=> b!4825463 false))

(declare-fun lt!1972903 () Unit!142923)

(declare-fun lt!1972907 () Unit!142923)

(assert (=> b!4825463 (= lt!1972903 lt!1972907)))

(assert (=> b!4825463 (containsKey!4368 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> b!4825463 (= lt!1972907 (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun e!3015180 () Unit!142923)

(declare-fun Unit!142971 () Unit!142923)

(assert (=> b!4825463 (= e!3015180 Unit!142971)))

(declare-fun d!1545953 () Bool)

(declare-fun e!3015181 () Bool)

(assert (=> d!1545953 e!3015181))

(declare-fun res!2054379 () Bool)

(assert (=> d!1545953 (=> res!2054379 e!3015181)))

(assert (=> d!1545953 (= res!2054379 e!3015176)))

(declare-fun res!2054378 () Bool)

(assert (=> d!1545953 (=> (not res!2054378) (not e!3015176))))

(declare-fun lt!1972904 () Bool)

(assert (=> d!1545953 (= res!2054378 (not lt!1972904))))

(declare-fun lt!1972906 () Bool)

(assert (=> d!1545953 (= lt!1972904 lt!1972906)))

(declare-fun lt!1972910 () Unit!142923)

(declare-fun e!3015179 () Unit!142923)

(assert (=> d!1545953 (= lt!1972910 e!3015179)))

(assert (=> d!1545953 (= c!822247 lt!1972906)))

(assert (=> d!1545953 (= lt!1972906 (containsKey!4368 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> d!1545953 (= (contains!18772 lt!1972691 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lt!1972904)))

(declare-fun b!4825464 () Bool)

(declare-fun e!3015177 () Bool)

(assert (=> b!4825464 (= e!3015181 e!3015177)))

(declare-fun res!2054380 () Bool)

(assert (=> b!4825464 (=> (not res!2054380) (not e!3015177))))

(assert (=> b!4825464 (= res!2054380 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun b!4825465 () Bool)

(declare-fun Unit!142972 () Unit!142923)

(assert (=> b!4825465 (= e!3015180 Unit!142972)))

(declare-fun b!4825466 () Bool)

(assert (=> b!4825466 (= e!3015178 (keys!20223 lt!1972691))))

(declare-fun b!4825467 () Bool)

(assert (=> b!4825467 (= e!3015177 (contains!18775 (keys!20223 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825468 () Bool)

(declare-fun lt!1972908 () Unit!142923)

(assert (=> b!4825468 (= e!3015179 lt!1972908)))

(declare-fun lt!1972905 () Unit!142923)

(assert (=> b!4825468 (= lt!1972905 (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825468 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972909 () Unit!142923)

(assert (=> b!4825468 (= lt!1972909 lt!1972905)))

(assert (=> b!4825468 (= lt!1972908 (lemmaInListThenGetKeysListContains!1153 (toList!7476 lt!1972691) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825468 call!336360))

(declare-fun b!4825469 () Bool)

(assert (=> b!4825469 (= e!3015179 e!3015180)))

(declare-fun c!822245 () Bool)

(assert (=> b!4825469 (= c!822245 call!336360)))

(declare-fun b!4825470 () Bool)

(assert (=> b!4825470 (= e!3015178 (getKeysList!1158 (toList!7476 lt!1972691)))))

(assert (= (and d!1545953 c!822247) b!4825468))

(assert (= (and d!1545953 (not c!822247)) b!4825469))

(assert (= (and b!4825469 c!822245) b!4825463))

(assert (= (and b!4825469 (not c!822245)) b!4825465))

(assert (= (or b!4825468 b!4825469) bm!336355))

(assert (= (and bm!336355 c!822246) b!4825470))

(assert (= (and bm!336355 (not c!822246)) b!4825466))

(assert (= (and d!1545953 res!2054378) b!4825462))

(assert (= (and d!1545953 (not res!2054379)) b!4825464))

(assert (= (and b!4825464 res!2054380) b!4825467))

(declare-fun m!5815646 () Bool)

(assert (=> d!1545953 m!5815646))

(declare-fun m!5815648 () Bool)

(assert (=> b!4825464 m!5815648))

(assert (=> b!4825464 m!5815648))

(declare-fun m!5815650 () Bool)

(assert (=> b!4825464 m!5815650))

(declare-fun m!5815652 () Bool)

(assert (=> b!4825462 m!5815652))

(assert (=> b!4825462 m!5815652))

(declare-fun m!5815654 () Bool)

(assert (=> b!4825462 m!5815654))

(declare-fun m!5815656 () Bool)

(assert (=> bm!336355 m!5815656))

(assert (=> b!4825466 m!5815652))

(assert (=> b!4825463 m!5815646))

(declare-fun m!5815658 () Bool)

(assert (=> b!4825463 m!5815658))

(declare-fun m!5815660 () Bool)

(assert (=> b!4825468 m!5815660))

(assert (=> b!4825468 m!5815648))

(assert (=> b!4825468 m!5815648))

(assert (=> b!4825468 m!5815650))

(declare-fun m!5815662 () Bool)

(assert (=> b!4825468 m!5815662))

(assert (=> b!4825467 m!5815652))

(assert (=> b!4825467 m!5815652))

(assert (=> b!4825467 m!5815654))

(declare-fun m!5815664 () Bool)

(assert (=> b!4825470 m!5815664))

(assert (=> b!4825099 d!1545953))

(declare-fun d!1545973 () Bool)

(declare-fun res!2054381 () Bool)

(declare-fun e!3015182 () Bool)

(assert (=> d!1545973 (=> res!2054381 e!3015182)))

(assert (=> d!1545973 (= res!2054381 ((_ is Nil!54966) (toList!7476 lt!1972475)))))

(assert (=> d!1545973 (= (forall!12604 (toList!7476 lt!1972475) lambda!236552) e!3015182)))

(declare-fun b!4825471 () Bool)

(declare-fun e!3015183 () Bool)

(assert (=> b!4825471 (= e!3015182 e!3015183)))

(declare-fun res!2054382 () Bool)

(assert (=> b!4825471 (=> (not res!2054382) (not e!3015183))))

(assert (=> b!4825471 (= res!2054382 (dynLambda!22216 lambda!236552 (h!61400 (toList!7476 lt!1972475))))))

(declare-fun b!4825472 () Bool)

(assert (=> b!4825472 (= e!3015183 (forall!12604 (t!362586 (toList!7476 lt!1972475)) lambda!236552))))

(assert (= (and d!1545973 (not res!2054381)) b!4825471))

(assert (= (and b!4825471 res!2054382) b!4825472))

(declare-fun b_lambda!189805 () Bool)

(assert (=> (not b_lambda!189805) (not b!4825471)))

(declare-fun m!5815666 () Bool)

(assert (=> b!4825471 m!5815666))

(declare-fun m!5815668 () Bool)

(assert (=> b!4825472 m!5815668))

(assert (=> b!4825099 d!1545973))

(declare-fun d!1545975 () Bool)

(declare-fun res!2054383 () Bool)

(declare-fun e!3015184 () Bool)

(assert (=> d!1545975 (=> res!2054383 e!3015184)))

(assert (=> d!1545975 (= res!2054383 ((_ is Nil!54966) (toList!7476 lt!1972691)))))

(assert (=> d!1545975 (= (forall!12604 (toList!7476 lt!1972691) lambda!236552) e!3015184)))

(declare-fun b!4825473 () Bool)

(declare-fun e!3015185 () Bool)

(assert (=> b!4825473 (= e!3015184 e!3015185)))

(declare-fun res!2054384 () Bool)

(assert (=> b!4825473 (=> (not res!2054384) (not e!3015185))))

(assert (=> b!4825473 (= res!2054384 (dynLambda!22216 lambda!236552 (h!61400 (toList!7476 lt!1972691))))))

(declare-fun b!4825474 () Bool)

(assert (=> b!4825474 (= e!3015185 (forall!12604 (t!362586 (toList!7476 lt!1972691)) lambda!236552))))

(assert (= (and d!1545975 (not res!2054383)) b!4825473))

(assert (= (and b!4825473 res!2054384) b!4825474))

(declare-fun b_lambda!189807 () Bool)

(assert (=> (not b_lambda!189807) (not b!4825473)))

(declare-fun m!5815670 () Bool)

(assert (=> b!4825473 m!5815670))

(declare-fun m!5815672 () Bool)

(assert (=> b!4825474 m!5815672))

(assert (=> b!4825099 d!1545975))

(declare-fun bs!1163705 () Bool)

(declare-fun b!4825476 () Bool)

(assert (= bs!1163705 (and b!4825476 b!4825098)))

(declare-fun lambda!236613 () Int)

(assert (=> bs!1163705 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972475) (= lambda!236613 lambda!236550))))

(declare-fun bs!1163706 () Bool)

(assert (= bs!1163706 (and b!4825476 b!4825099)))

(assert (=> bs!1163706 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972475) (= lambda!236613 lambda!236551))))

(declare-fun bs!1163707 () Bool)

(assert (= bs!1163707 (and b!4825476 d!1545695)))

(assert (=> bs!1163707 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972695) (= lambda!236613 lambda!236553))))

(declare-fun bs!1163708 () Bool)

(assert (= bs!1163708 (and b!4825476 d!1545943)))

(assert (=> bs!1163708 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972682) (= lambda!236613 lambda!236612))))

(assert (=> bs!1163706 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972682) (= lambda!236613 lambda!236552))))

(assert (=> b!4825476 true))

(declare-fun bs!1163709 () Bool)

(declare-fun b!4825477 () Bool)

(assert (= bs!1163709 (and b!4825477 b!4825098)))

(declare-fun lambda!236614 () Int)

(assert (=> bs!1163709 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972475) (= lambda!236614 lambda!236550))))

(declare-fun bs!1163710 () Bool)

(assert (= bs!1163710 (and b!4825477 b!4825476)))

(assert (=> bs!1163710 (= lambda!236614 lambda!236613)))

(declare-fun bs!1163711 () Bool)

(assert (= bs!1163711 (and b!4825477 b!4825099)))

(assert (=> bs!1163711 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972475) (= lambda!236614 lambda!236551))))

(declare-fun bs!1163712 () Bool)

(assert (= bs!1163712 (and b!4825477 d!1545695)))

(assert (=> bs!1163712 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972695) (= lambda!236614 lambda!236553))))

(declare-fun bs!1163713 () Bool)

(assert (= bs!1163713 (and b!4825477 d!1545943)))

(assert (=> bs!1163713 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972682) (= lambda!236614 lambda!236612))))

(assert (=> bs!1163711 (= (= (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972682) (= lambda!236614 lambda!236552))))

(assert (=> b!4825477 true))

(declare-fun lambda!236615 () Int)

(declare-fun lt!1972918 () ListMap!6853)

(assert (=> bs!1163709 (= (= lt!1972918 lt!1972475) (= lambda!236615 lambda!236550))))

(assert (=> bs!1163710 (= (= lt!1972918 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236615 lambda!236613))))

(assert (=> bs!1163711 (= (= lt!1972918 lt!1972475) (= lambda!236615 lambda!236551))))

(assert (=> bs!1163712 (= (= lt!1972918 lt!1972695) (= lambda!236615 lambda!236553))))

(assert (=> bs!1163713 (= (= lt!1972918 lt!1972682) (= lambda!236615 lambda!236612))))

(assert (=> bs!1163711 (= (= lt!1972918 lt!1972682) (= lambda!236615 lambda!236552))))

(assert (=> b!4825477 (= (= lt!1972918 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236615 lambda!236614))))

(assert (=> b!4825477 true))

(declare-fun bs!1163714 () Bool)

(declare-fun d!1545977 () Bool)

(assert (= bs!1163714 (and d!1545977 b!4825098)))

(declare-fun lambda!236616 () Int)

(declare-fun lt!1972931 () ListMap!6853)

(assert (=> bs!1163714 (= (= lt!1972931 lt!1972475) (= lambda!236616 lambda!236550))))

(declare-fun bs!1163715 () Bool)

(assert (= bs!1163715 (and d!1545977 b!4825476)))

(assert (=> bs!1163715 (= (= lt!1972931 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236616 lambda!236613))))

(declare-fun bs!1163716 () Bool)

(assert (= bs!1163716 (and d!1545977 b!4825477)))

(assert (=> bs!1163716 (= (= lt!1972931 lt!1972918) (= lambda!236616 lambda!236615))))

(declare-fun bs!1163717 () Bool)

(assert (= bs!1163717 (and d!1545977 b!4825099)))

(assert (=> bs!1163717 (= (= lt!1972931 lt!1972475) (= lambda!236616 lambda!236551))))

(declare-fun bs!1163718 () Bool)

(assert (= bs!1163718 (and d!1545977 d!1545695)))

(assert (=> bs!1163718 (= (= lt!1972931 lt!1972695) (= lambda!236616 lambda!236553))))

(declare-fun bs!1163719 () Bool)

(assert (= bs!1163719 (and d!1545977 d!1545943)))

(assert (=> bs!1163719 (= (= lt!1972931 lt!1972682) (= lambda!236616 lambda!236612))))

(assert (=> bs!1163717 (= (= lt!1972931 lt!1972682) (= lambda!236616 lambda!236552))))

(assert (=> bs!1163716 (= (= lt!1972931 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236616 lambda!236614))))

(assert (=> d!1545977 true))

(declare-fun c!822248 () Bool)

(declare-fun call!336363 () Bool)

(declare-fun bm!336356 () Bool)

(assert (=> bm!336356 (= call!336363 (forall!12604 (toList!7476 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (ite c!822248 lambda!236613 lambda!236615)))))

(declare-fun bm!336357 () Bool)

(declare-fun call!336362 () Bool)

(assert (=> bm!336357 (= call!336362 (forall!12604 (toList!7476 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (ite c!822248 lambda!236613 lambda!236614)))))

(declare-fun e!3015186 () ListMap!6853)

(assert (=> b!4825476 (= e!3015186 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun lt!1972914 () Unit!142923)

(declare-fun call!336361 () Unit!142923)

(assert (=> b!4825476 (= lt!1972914 call!336361)))

(assert (=> b!4825476 call!336362))

(declare-fun lt!1972923 () Unit!142923)

(assert (=> b!4825476 (= lt!1972923 lt!1972914)))

(assert (=> b!4825476 call!336363))

(declare-fun lt!1972921 () Unit!142923)

(declare-fun Unit!142975 () Unit!142923)

(assert (=> b!4825476 (= lt!1972921 Unit!142975)))

(assert (=> b!4825477 (= e!3015186 lt!1972918)))

(declare-fun lt!1972927 () ListMap!6853)

(assert (=> b!4825477 (= lt!1972927 (+!2535 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825477 (= lt!1972918 (addToMapMapFromBucket!1796 (t!362586 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (+!2535 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun lt!1972926 () Unit!142923)

(assert (=> b!4825477 (= lt!1972926 call!336361)))

(assert (=> b!4825477 call!336362))

(declare-fun lt!1972919 () Unit!142923)

(assert (=> b!4825477 (= lt!1972919 lt!1972926)))

(assert (=> b!4825477 (forall!12604 (toList!7476 lt!1972927) lambda!236615)))

(declare-fun lt!1972912 () Unit!142923)

(declare-fun Unit!142976 () Unit!142923)

(assert (=> b!4825477 (= lt!1972912 Unit!142976)))

(assert (=> b!4825477 (forall!12604 (t!362586 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lambda!236615)))

(declare-fun lt!1972928 () Unit!142923)

(declare-fun Unit!142977 () Unit!142923)

(assert (=> b!4825477 (= lt!1972928 Unit!142977)))

(declare-fun lt!1972920 () Unit!142923)

(declare-fun Unit!142978 () Unit!142923)

(assert (=> b!4825477 (= lt!1972920 Unit!142978)))

(declare-fun lt!1972913 () Unit!142923)

(assert (=> b!4825477 (= lt!1972913 (forallContained!4382 (toList!7476 lt!1972927) lambda!236615 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> b!4825477 (contains!18772 lt!1972927 (_1!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972922 () Unit!142923)

(declare-fun Unit!142979 () Unit!142923)

(assert (=> b!4825477 (= lt!1972922 Unit!142979)))

(assert (=> b!4825477 (contains!18772 lt!1972918 (_1!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972915 () Unit!142923)

(declare-fun Unit!142980 () Unit!142923)

(assert (=> b!4825477 (= lt!1972915 Unit!142980)))

(assert (=> b!4825477 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236615)))

(declare-fun lt!1972917 () Unit!142923)

(declare-fun Unit!142981 () Unit!142923)

(assert (=> b!4825477 (= lt!1972917 Unit!142981)))

(assert (=> b!4825477 (forall!12604 (toList!7476 lt!1972927) lambda!236615)))

(declare-fun lt!1972916 () Unit!142923)

(declare-fun Unit!142982 () Unit!142923)

(assert (=> b!4825477 (= lt!1972916 Unit!142982)))

(declare-fun lt!1972924 () Unit!142923)

(declare-fun Unit!142983 () Unit!142923)

(assert (=> b!4825477 (= lt!1972924 Unit!142983)))

(declare-fun lt!1972911 () Unit!142923)

(assert (=> b!4825477 (= lt!1972911 (addForallContainsKeyThenBeforeAdding!989 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) lt!1972918 (_1!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (_2!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(assert (=> b!4825477 (forall!12604 (toList!7476 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lambda!236615)))

(declare-fun lt!1972925 () Unit!142923)

(assert (=> b!4825477 (= lt!1972925 lt!1972911)))

(assert (=> b!4825477 call!336363))

(declare-fun lt!1972929 () Unit!142923)

(declare-fun Unit!142984 () Unit!142923)

(assert (=> b!4825477 (= lt!1972929 Unit!142984)))

(declare-fun res!2054387 () Bool)

(assert (=> b!4825477 (= res!2054387 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236615))))

(declare-fun e!3015188 () Bool)

(assert (=> b!4825477 (=> (not res!2054387) (not e!3015188))))

(assert (=> b!4825477 e!3015188))

(declare-fun lt!1972930 () Unit!142923)

(declare-fun Unit!142985 () Unit!142923)

(assert (=> b!4825477 (= lt!1972930 Unit!142985)))

(declare-fun bm!336358 () Bool)

(assert (=> bm!336358 (= call!336361 (lemmaContainsAllItsOwnKeys!990 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825475 () Bool)

(assert (=> b!4825475 (= e!3015188 (forall!12604 (toList!7476 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lambda!236615))))

(declare-fun e!3015187 () Bool)

(assert (=> d!1545977 e!3015187))

(declare-fun res!2054385 () Bool)

(assert (=> d!1545977 (=> (not res!2054385) (not e!3015187))))

(assert (=> d!1545977 (= res!2054385 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236616))))

(assert (=> d!1545977 (= lt!1972931 e!3015186)))

(assert (=> d!1545977 (= c!822248 ((_ is Nil!54966) (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> d!1545977 (noDuplicateKeys!2450 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> d!1545977 (= (addToMapMapFromBucket!1796 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lt!1972931)))

(declare-fun b!4825478 () Bool)

(declare-fun res!2054386 () Bool)

(assert (=> b!4825478 (=> (not res!2054386) (not e!3015187))))

(assert (=> b!4825478 (= res!2054386 (forall!12604 (toList!7476 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) lambda!236616))))

(declare-fun b!4825479 () Bool)

(assert (=> b!4825479 (= e!3015187 (invariantList!1811 (toList!7476 lt!1972931)))))

(assert (= (and d!1545977 c!822248) b!4825476))

(assert (= (and d!1545977 (not c!822248)) b!4825477))

(assert (= (and b!4825477 res!2054387) b!4825475))

(assert (= (or b!4825476 b!4825477) bm!336356))

(assert (= (or b!4825476 b!4825477) bm!336357))

(assert (= (or b!4825476 b!4825477) bm!336358))

(assert (= (and d!1545977 res!2054385) b!4825478))

(assert (= (and b!4825478 res!2054386) b!4825479))

(declare-fun m!5815674 () Bool)

(assert (=> bm!336357 m!5815674))

(declare-fun m!5815676 () Bool)

(assert (=> b!4825475 m!5815676))

(declare-fun m!5815678 () Bool)

(assert (=> d!1545977 m!5815678))

(assert (=> d!1545977 m!5815476))

(declare-fun m!5815680 () Bool)

(assert (=> bm!336356 m!5815680))

(declare-fun m!5815682 () Bool)

(assert (=> b!4825479 m!5815682))

(declare-fun m!5815684 () Bool)

(assert (=> b!4825477 m!5815684))

(assert (=> b!4825477 m!5815054))

(declare-fun m!5815686 () Bool)

(assert (=> b!4825477 m!5815686))

(declare-fun m!5815688 () Bool)

(assert (=> b!4825477 m!5815688))

(declare-fun m!5815690 () Bool)

(assert (=> b!4825477 m!5815690))

(declare-fun m!5815692 () Bool)

(assert (=> b!4825477 m!5815692))

(declare-fun m!5815694 () Bool)

(assert (=> b!4825477 m!5815694))

(assert (=> b!4825477 m!5815694))

(assert (=> b!4825477 m!5815676))

(assert (=> b!4825477 m!5815054))

(assert (=> b!4825477 m!5815688))

(assert (=> b!4825477 m!5815684))

(declare-fun m!5815696 () Bool)

(assert (=> b!4825477 m!5815696))

(declare-fun m!5815698 () Bool)

(assert (=> b!4825477 m!5815698))

(declare-fun m!5815700 () Bool)

(assert (=> b!4825477 m!5815700))

(declare-fun m!5815702 () Bool)

(assert (=> b!4825478 m!5815702))

(assert (=> bm!336358 m!5815054))

(declare-fun m!5815704 () Bool)

(assert (=> bm!336358 m!5815704))

(assert (=> b!4825099 d!1545977))

(declare-fun d!1545979 () Bool)

(declare-fun res!2054388 () Bool)

(declare-fun e!3015189 () Bool)

(assert (=> d!1545979 (=> res!2054388 e!3015189)))

(assert (=> d!1545979 (= res!2054388 ((_ is Nil!54967) (toList!7475 lm!2280)))))

(assert (=> d!1545979 (= (forall!12602 (toList!7475 lm!2280) lambda!236560) e!3015189)))

(declare-fun b!4825480 () Bool)

(declare-fun e!3015190 () Bool)

(assert (=> b!4825480 (= e!3015189 e!3015190)))

(declare-fun res!2054389 () Bool)

(assert (=> b!4825480 (=> (not res!2054389) (not e!3015190))))

(assert (=> b!4825480 (= res!2054389 (dynLambda!22214 lambda!236560 (h!61401 (toList!7475 lm!2280))))))

(declare-fun b!4825481 () Bool)

(assert (=> b!4825481 (= e!3015190 (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236560))))

(assert (= (and d!1545979 (not res!2054388)) b!4825480))

(assert (= (and b!4825480 res!2054389) b!4825481))

(declare-fun b_lambda!189809 () Bool)

(assert (=> (not b_lambda!189809) (not b!4825480)))

(declare-fun m!5815706 () Bool)

(assert (=> b!4825480 m!5815706))

(declare-fun m!5815708 () Bool)

(assert (=> b!4825481 m!5815708))

(assert (=> d!1545751 d!1545979))

(declare-fun d!1545981 () Bool)

(declare-fun choose!35122 (Hashable!7264 K!16649) (_ BitVec 64))

(assert (=> d!1545981 (= (hash!5396 hashF!1509 key!5428) (choose!35122 hashF!1509 key!5428))))

(declare-fun bs!1163720 () Bool)

(assert (= bs!1163720 d!1545981))

(declare-fun m!5815710 () Bool)

(assert (=> bs!1163720 m!5815710))

(assert (=> d!1545743 d!1545981))

(declare-fun d!1545983 () Bool)

(declare-fun res!2054390 () Bool)

(declare-fun e!3015191 () Bool)

(assert (=> d!1545983 (=> res!2054390 e!3015191)))

(assert (=> d!1545983 (= res!2054390 ((_ is Nil!54966) (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> d!1545983 (= (forall!12604 (_2!32388 (h!61401 (toList!7475 lm!2280))) lambda!236553) e!3015191)))

(declare-fun b!4825482 () Bool)

(declare-fun e!3015192 () Bool)

(assert (=> b!4825482 (= e!3015191 e!3015192)))

(declare-fun res!2054391 () Bool)

(assert (=> b!4825482 (=> (not res!2054391) (not e!3015192))))

(assert (=> b!4825482 (= res!2054391 (dynLambda!22216 lambda!236553 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun b!4825483 () Bool)

(assert (=> b!4825483 (= e!3015192 (forall!12604 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) lambda!236553))))

(assert (= (and d!1545983 (not res!2054390)) b!4825482))

(assert (= (and b!4825482 res!2054391) b!4825483))

(declare-fun b_lambda!189811 () Bool)

(assert (=> (not b_lambda!189811) (not b!4825482)))

(declare-fun m!5815712 () Bool)

(assert (=> b!4825482 m!5815712))

(declare-fun m!5815714 () Bool)

(assert (=> b!4825483 m!5815714))

(assert (=> d!1545695 d!1545983))

(assert (=> d!1545695 d!1545909))

(declare-fun d!1545985 () Bool)

(declare-fun res!2054392 () Bool)

(declare-fun e!3015193 () Bool)

(assert (=> d!1545985 (=> res!2054392 e!3015193)))

(assert (=> d!1545985 (= res!2054392 ((_ is Nil!54966) (toList!7476 lt!1972475)))))

(assert (=> d!1545985 (= (forall!12604 (toList!7476 lt!1972475) (ite c!822178 lambda!236550 lambda!236551)) e!3015193)))

(declare-fun b!4825484 () Bool)

(declare-fun e!3015194 () Bool)

(assert (=> b!4825484 (= e!3015193 e!3015194)))

(declare-fun res!2054393 () Bool)

(assert (=> b!4825484 (=> (not res!2054393) (not e!3015194))))

(assert (=> b!4825484 (= res!2054393 (dynLambda!22216 (ite c!822178 lambda!236550 lambda!236551) (h!61400 (toList!7476 lt!1972475))))))

(declare-fun b!4825485 () Bool)

(assert (=> b!4825485 (= e!3015194 (forall!12604 (t!362586 (toList!7476 lt!1972475)) (ite c!822178 lambda!236550 lambda!236551)))))

(assert (= (and d!1545985 (not res!2054392)) b!4825484))

(assert (= (and b!4825484 res!2054393) b!4825485))

(declare-fun b_lambda!189813 () Bool)

(assert (=> (not b_lambda!189813) (not b!4825484)))

(declare-fun m!5815716 () Bool)

(assert (=> b!4825484 m!5815716))

(declare-fun m!5815718 () Bool)

(assert (=> b!4825485 m!5815718))

(assert (=> bm!336343 d!1545985))

(declare-fun d!1545987 () Bool)

(declare-fun res!2054394 () Bool)

(declare-fun e!3015195 () Bool)

(assert (=> d!1545987 (=> res!2054394 e!3015195)))

(assert (=> d!1545987 (= res!2054394 ((_ is Nil!54967) (t!362587 (toList!7475 lt!1972474))))))

(assert (=> d!1545987 (= (forall!12602 (t!362587 (toList!7475 lt!1972474)) lambda!236476) e!3015195)))

(declare-fun b!4825486 () Bool)

(declare-fun e!3015196 () Bool)

(assert (=> b!4825486 (= e!3015195 e!3015196)))

(declare-fun res!2054395 () Bool)

(assert (=> b!4825486 (=> (not res!2054395) (not e!3015196))))

(assert (=> b!4825486 (= res!2054395 (dynLambda!22214 lambda!236476 (h!61401 (t!362587 (toList!7475 lt!1972474)))))))

(declare-fun b!4825487 () Bool)

(assert (=> b!4825487 (= e!3015196 (forall!12602 (t!362587 (t!362587 (toList!7475 lt!1972474))) lambda!236476))))

(assert (= (and d!1545987 (not res!2054394)) b!4825486))

(assert (= (and b!4825486 res!2054395) b!4825487))

(declare-fun b_lambda!189815 () Bool)

(assert (=> (not b_lambda!189815) (not b!4825486)))

(declare-fun m!5815720 () Bool)

(assert (=> b!4825486 m!5815720))

(declare-fun m!5815722 () Bool)

(assert (=> b!4825487 m!5815722))

(assert (=> b!4825105 d!1545987))

(assert (=> b!4825097 d!1545973))

(declare-fun bs!1163721 () Bool)

(declare-fun b!4825510 () Bool)

(assert (= bs!1163721 (and b!4825510 b!4825340)))

(declare-fun lambda!236625 () Int)

(assert (=> bs!1163721 (= (= (t!362586 (toList!7476 lt!1972475)) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236625 lambda!236586))))

(assert (=> b!4825510 true))

(declare-fun bs!1163722 () Bool)

(declare-fun b!4825506 () Bool)

(assert (= bs!1163722 (and b!4825506 b!4825340)))

(declare-fun lambda!236626 () Int)

(assert (=> bs!1163722 (= (= (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475))) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236626 lambda!236586))))

(declare-fun bs!1163723 () Bool)

(assert (= bs!1163723 (and b!4825506 b!4825510)))

(assert (=> bs!1163723 (= (= (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475))) (t!362586 (toList!7476 lt!1972475))) (= lambda!236626 lambda!236625))))

(assert (=> b!4825506 true))

(declare-fun bs!1163724 () Bool)

(declare-fun b!4825511 () Bool)

(assert (= bs!1163724 (and b!4825511 b!4825340)))

(declare-fun lambda!236627 () Int)

(assert (=> bs!1163724 (= (= (toList!7476 lt!1972475) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236627 lambda!236586))))

(declare-fun bs!1163725 () Bool)

(assert (= bs!1163725 (and b!4825511 b!4825510)))

(assert (=> bs!1163725 (= (= (toList!7476 lt!1972475) (t!362586 (toList!7476 lt!1972475))) (= lambda!236627 lambda!236625))))

(declare-fun bs!1163726 () Bool)

(assert (= bs!1163726 (and b!4825511 b!4825506)))

(assert (=> bs!1163726 (= (= (toList!7476 lt!1972475) (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475)))) (= lambda!236627 lambda!236626))))

(assert (=> b!4825511 true))

(declare-fun bs!1163727 () Bool)

(declare-fun b!4825509 () Bool)

(assert (= bs!1163727 (and b!4825509 b!4825341)))

(declare-fun lambda!236628 () Int)

(assert (=> bs!1163727 (= lambda!236628 lambda!236587)))

(declare-fun e!3015206 () List!55093)

(assert (=> b!4825506 (= e!3015206 (Cons!54969 (_1!32387 (h!61400 (toList!7476 lt!1972475))) (getKeysList!1158 (t!362586 (toList!7476 lt!1972475)))))))

(declare-fun c!822257 () Bool)

(assert (=> b!4825506 (= c!822257 (containsKey!4368 (t!362586 (toList!7476 lt!1972475)) (_1!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun lt!1972947 () Unit!142923)

(declare-fun e!3015208 () Unit!142923)

(assert (=> b!4825506 (= lt!1972947 e!3015208)))

(declare-fun c!822256 () Bool)

(assert (=> b!4825506 (= c!822256 (contains!18775 (getKeysList!1158 (t!362586 (toList!7476 lt!1972475))) (_1!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun lt!1972951 () Unit!142923)

(declare-fun e!3015205 () Unit!142923)

(assert (=> b!4825506 (= lt!1972951 e!3015205)))

(declare-fun lt!1972948 () List!55093)

(assert (=> b!4825506 (= lt!1972948 (getKeysList!1158 (t!362586 (toList!7476 lt!1972475))))))

(declare-fun lt!1972952 () Unit!142923)

(declare-fun lemmaForallContainsAddHeadPreserves!375 (List!55090 List!55093 tuple2!58186) Unit!142923)

(assert (=> b!4825506 (= lt!1972952 (lemmaForallContainsAddHeadPreserves!375 (t!362586 (toList!7476 lt!1972475)) lt!1972948 (h!61400 (toList!7476 lt!1972475))))))

(assert (=> b!4825506 (forall!12606 lt!1972948 lambda!236626)))

(declare-fun lt!1972950 () Unit!142923)

(assert (=> b!4825506 (= lt!1972950 lt!1972952)))

(declare-fun b!4825507 () Bool)

(declare-fun Unit!142996 () Unit!142923)

(assert (=> b!4825507 (= e!3015205 Unit!142996)))

(declare-fun b!4825508 () Bool)

(declare-fun res!2054402 () Bool)

(declare-fun e!3015207 () Bool)

(assert (=> b!4825508 (=> (not res!2054402) (not e!3015207))))

(declare-fun lt!1972949 () List!55093)

(assert (=> b!4825508 (= res!2054402 (= (length!776 lt!1972949) (length!777 (toList!7476 lt!1972475))))))

(assert (=> b!4825510 false))

(declare-fun lt!1972946 () Unit!142923)

(declare-fun forallContained!4384 (List!55093 Int K!16649) Unit!142923)

(assert (=> b!4825510 (= lt!1972946 (forallContained!4384 (getKeysList!1158 (t!362586 (toList!7476 lt!1972475))) lambda!236625 (_1!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun Unit!142998 () Unit!142923)

(assert (=> b!4825510 (= e!3015205 Unit!142998)))

(declare-fun res!2054404 () Bool)

(assert (=> b!4825511 (=> (not res!2054404) (not e!3015207))))

(assert (=> b!4825511 (= res!2054404 (forall!12606 lt!1972949 lambda!236627))))

(declare-fun b!4825512 () Bool)

(assert (=> b!4825512 false))

(declare-fun Unit!142999 () Unit!142923)

(assert (=> b!4825512 (= e!3015208 Unit!142999)))

(declare-fun b!4825513 () Bool)

(declare-fun Unit!143000 () Unit!142923)

(assert (=> b!4825513 (= e!3015208 Unit!143000)))

(declare-fun b!4825514 () Bool)

(assert (=> b!4825514 (= e!3015206 Nil!54969)))

(assert (=> b!4825509 (= e!3015207 (= (content!9819 lt!1972949) (content!9819 (map!12578 (toList!7476 lt!1972475) lambda!236628))))))

(declare-fun d!1545989 () Bool)

(assert (=> d!1545989 e!3015207))

(declare-fun res!2054403 () Bool)

(assert (=> d!1545989 (=> (not res!2054403) (not e!3015207))))

(assert (=> d!1545989 (= res!2054403 (noDuplicate!960 lt!1972949))))

(assert (=> d!1545989 (= lt!1972949 e!3015206)))

(declare-fun c!822255 () Bool)

(assert (=> d!1545989 (= c!822255 ((_ is Cons!54966) (toList!7476 lt!1972475)))))

(assert (=> d!1545989 (invariantList!1811 (toList!7476 lt!1972475))))

(assert (=> d!1545989 (= (getKeysList!1158 (toList!7476 lt!1972475)) lt!1972949)))

(assert (= (and d!1545989 c!822255) b!4825506))

(assert (= (and d!1545989 (not c!822255)) b!4825514))

(assert (= (and b!4825506 c!822257) b!4825512))

(assert (= (and b!4825506 (not c!822257)) b!4825513))

(assert (= (and b!4825506 c!822256) b!4825510))

(assert (= (and b!4825506 (not c!822256)) b!4825507))

(assert (= (and d!1545989 res!2054403) b!4825508))

(assert (= (and b!4825508 res!2054402) b!4825511))

(assert (= (and b!4825511 res!2054404) b!4825509))

(declare-fun m!5815724 () Bool)

(assert (=> b!4825509 m!5815724))

(declare-fun m!5815726 () Bool)

(assert (=> b!4825509 m!5815726))

(assert (=> b!4825509 m!5815726))

(declare-fun m!5815728 () Bool)

(assert (=> b!4825509 m!5815728))

(declare-fun m!5815730 () Bool)

(assert (=> b!4825511 m!5815730))

(declare-fun m!5815732 () Bool)

(assert (=> b!4825506 m!5815732))

(declare-fun m!5815734 () Bool)

(assert (=> b!4825506 m!5815734))

(declare-fun m!5815736 () Bool)

(assert (=> b!4825506 m!5815736))

(declare-fun m!5815738 () Bool)

(assert (=> b!4825506 m!5815738))

(assert (=> b!4825506 m!5815738))

(declare-fun m!5815740 () Bool)

(assert (=> b!4825506 m!5815740))

(assert (=> b!4825510 m!5815738))

(assert (=> b!4825510 m!5815738))

(declare-fun m!5815742 () Bool)

(assert (=> b!4825510 m!5815742))

(declare-fun m!5815744 () Bool)

(assert (=> b!4825508 m!5815744))

(declare-fun m!5815746 () Bool)

(assert (=> b!4825508 m!5815746))

(declare-fun m!5815748 () Bool)

(assert (=> d!1545989 m!5815748))

(declare-fun m!5815750 () Bool)

(assert (=> d!1545989 m!5815750))

(assert (=> b!4825137 d!1545989))

(declare-fun d!1545991 () Bool)

(assert (=> d!1545991 (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972475) key!5428))))

(declare-fun lt!1972955 () Unit!142923)

(declare-fun choose!35123 (List!55090 K!16649) Unit!142923)

(assert (=> d!1545991 (= lt!1972955 (choose!35123 (toList!7476 lt!1972475) key!5428))))

(assert (=> d!1545991 (invariantList!1811 (toList!7476 lt!1972475))))

(assert (=> d!1545991 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 lt!1972475) key!5428) lt!1972955)))

(declare-fun bs!1163728 () Bool)

(assert (= bs!1163728 d!1545991))

(assert (=> bs!1163728 m!5815100))

(assert (=> bs!1163728 m!5815100))

(assert (=> bs!1163728 m!5815102))

(declare-fun m!5815752 () Bool)

(assert (=> bs!1163728 m!5815752))

(assert (=> bs!1163728 m!5815750))

(assert (=> b!4825135 d!1545991))

(declare-fun d!1545993 () Bool)

(declare-fun isEmpty!29654 (Option!13493) Bool)

(assert (=> d!1545993 (= (isDefined!10607 (getValueByKey!2620 (toList!7476 lt!1972475) key!5428)) (not (isEmpty!29654 (getValueByKey!2620 (toList!7476 lt!1972475) key!5428))))))

(declare-fun bs!1163729 () Bool)

(assert (= bs!1163729 d!1545993))

(assert (=> bs!1163729 m!5815100))

(declare-fun m!5815754 () Bool)

(assert (=> bs!1163729 m!5815754))

(assert (=> b!4825135 d!1545993))

(declare-fun b!4825526 () Bool)

(declare-fun e!3015213 () Option!13493)

(declare-fun e!3015214 () Option!13493)

(assert (=> b!4825526 (= e!3015213 e!3015214)))

(declare-fun c!822263 () Bool)

(assert (=> b!4825526 (= c!822263 (and ((_ is Cons!54966) (toList!7476 lt!1972475)) (not (= (_1!32387 (h!61400 (toList!7476 lt!1972475))) key!5428))))))

(declare-fun b!4825528 () Bool)

(assert (=> b!4825528 (= e!3015214 None!13492)))

(declare-fun b!4825525 () Bool)

(assert (=> b!4825525 (= e!3015213 (Some!13492 (_2!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun b!4825527 () Bool)

(assert (=> b!4825527 (= e!3015214 (getValueByKey!2620 (t!362586 (toList!7476 lt!1972475)) key!5428))))

(declare-fun d!1545995 () Bool)

(declare-fun c!822262 () Bool)

(assert (=> d!1545995 (= c!822262 (and ((_ is Cons!54966) (toList!7476 lt!1972475)) (= (_1!32387 (h!61400 (toList!7476 lt!1972475))) key!5428)))))

(assert (=> d!1545995 (= (getValueByKey!2620 (toList!7476 lt!1972475) key!5428) e!3015213)))

(assert (= (and d!1545995 c!822262) b!4825525))

(assert (= (and d!1545995 (not c!822262)) b!4825526))

(assert (= (and b!4825526 c!822263) b!4825527))

(assert (= (and b!4825526 (not c!822263)) b!4825528))

(declare-fun m!5815756 () Bool)

(assert (=> b!4825527 m!5815756))

(assert (=> b!4825135 d!1545995))

(declare-fun d!1545997 () Bool)

(assert (=> d!1545997 (contains!18775 (getKeysList!1158 (toList!7476 lt!1972475)) key!5428)))

(declare-fun lt!1972958 () Unit!142923)

(declare-fun choose!35125 (List!55090 K!16649) Unit!142923)

(assert (=> d!1545997 (= lt!1972958 (choose!35125 (toList!7476 lt!1972475) key!5428))))

(assert (=> d!1545997 (invariantList!1811 (toList!7476 lt!1972475))))

(assert (=> d!1545997 (= (lemmaInListThenGetKeysListContains!1153 (toList!7476 lt!1972475) key!5428) lt!1972958)))

(declare-fun bs!1163730 () Bool)

(assert (= bs!1163730 d!1545997))

(assert (=> bs!1163730 m!5815116))

(assert (=> bs!1163730 m!5815116))

(declare-fun m!5815758 () Bool)

(assert (=> bs!1163730 m!5815758))

(declare-fun m!5815760 () Bool)

(assert (=> bs!1163730 m!5815760))

(assert (=> bs!1163730 m!5815750))

(assert (=> b!4825135 d!1545997))

(assert (=> b!4824970 d!1545745))

(declare-fun bs!1163731 () Bool)

(declare-fun b!4825530 () Bool)

(assert (= bs!1163731 (and b!4825530 b!4825340)))

(declare-fun lambda!236629 () Int)

(assert (=> bs!1163731 (= (= (toList!7476 lt!1972475) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236629 lambda!236586))))

(declare-fun bs!1163732 () Bool)

(assert (= bs!1163732 (and b!4825530 b!4825510)))

(assert (=> bs!1163732 (= (= (toList!7476 lt!1972475) (t!362586 (toList!7476 lt!1972475))) (= lambda!236629 lambda!236625))))

(declare-fun bs!1163733 () Bool)

(assert (= bs!1163733 (and b!4825530 b!4825506)))

(assert (=> bs!1163733 (= (= (toList!7476 lt!1972475) (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475)))) (= lambda!236629 lambda!236626))))

(declare-fun bs!1163734 () Bool)

(assert (= bs!1163734 (and b!4825530 b!4825511)))

(assert (=> bs!1163734 (= lambda!236629 lambda!236627)))

(assert (=> b!4825530 true))

(declare-fun bs!1163735 () Bool)

(declare-fun b!4825531 () Bool)

(assert (= bs!1163735 (and b!4825531 b!4825341)))

(declare-fun lambda!236630 () Int)

(assert (=> bs!1163735 (= lambda!236630 lambda!236587)))

(declare-fun bs!1163736 () Bool)

(assert (= bs!1163736 (and b!4825531 b!4825509)))

(assert (=> bs!1163736 (= lambda!236630 lambda!236628)))

(declare-fun d!1545999 () Bool)

(declare-fun e!3015215 () Bool)

(assert (=> d!1545999 e!3015215))

(declare-fun res!2054406 () Bool)

(assert (=> d!1545999 (=> (not res!2054406) (not e!3015215))))

(declare-fun lt!1972959 () List!55093)

(assert (=> d!1545999 (= res!2054406 (noDuplicate!960 lt!1972959))))

(assert (=> d!1545999 (= lt!1972959 (getKeysList!1158 (toList!7476 lt!1972475)))))

(assert (=> d!1545999 (= (keys!20223 lt!1972475) lt!1972959)))

(declare-fun b!4825529 () Bool)

(declare-fun res!2054407 () Bool)

(assert (=> b!4825529 (=> (not res!2054407) (not e!3015215))))

(assert (=> b!4825529 (= res!2054407 (= (length!776 lt!1972959) (length!777 (toList!7476 lt!1972475))))))

(declare-fun res!2054405 () Bool)

(assert (=> b!4825530 (=> (not res!2054405) (not e!3015215))))

(assert (=> b!4825530 (= res!2054405 (forall!12606 lt!1972959 lambda!236629))))

(assert (=> b!4825531 (= e!3015215 (= (content!9819 lt!1972959) (content!9819 (map!12578 (toList!7476 lt!1972475) lambda!236630))))))

(assert (= (and d!1545999 res!2054406) b!4825529))

(assert (= (and b!4825529 res!2054407) b!4825530))

(assert (= (and b!4825530 res!2054405) b!4825531))

(declare-fun m!5815762 () Bool)

(assert (=> d!1545999 m!5815762))

(assert (=> d!1545999 m!5815116))

(declare-fun m!5815764 () Bool)

(assert (=> b!4825529 m!5815764))

(assert (=> b!4825529 m!5815746))

(declare-fun m!5815766 () Bool)

(assert (=> b!4825530 m!5815766))

(declare-fun m!5815768 () Bool)

(assert (=> b!4825531 m!5815768))

(declare-fun m!5815770 () Bool)

(assert (=> b!4825531 m!5815770))

(assert (=> b!4825531 m!5815770))

(declare-fun m!5815772 () Bool)

(assert (=> b!4825531 m!5815772))

(assert (=> b!4825133 d!1545999))

(declare-fun d!1546001 () Bool)

(assert (=> d!1546001 (= (isDefined!10608 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478)) (not (isEmpty!29653 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478))))))

(declare-fun bs!1163737 () Bool)

(assert (= bs!1163737 d!1546001))

(assert (=> bs!1163737 m!5814882))

(declare-fun m!5815774 () Bool)

(assert (=> bs!1163737 m!5815774))

(assert (=> b!4825128 d!1546001))

(assert (=> b!4825128 d!1545891))

(declare-fun bs!1163738 () Bool)

(declare-fun b!4825536 () Bool)

(assert (= bs!1163738 (and b!4825536 b!4825506)))

(declare-fun lambda!236631 () Int)

(assert (=> bs!1163738 (= (= (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475)))) (= lambda!236631 lambda!236626))))

(declare-fun bs!1163739 () Bool)

(assert (= bs!1163739 (and b!4825536 b!4825511)))

(assert (=> bs!1163739 (= (= (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (toList!7476 lt!1972475)) (= lambda!236631 lambda!236627))))

(declare-fun bs!1163740 () Bool)

(assert (= bs!1163740 (and b!4825536 b!4825340)))

(assert (=> bs!1163740 (= (= (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236631 lambda!236586))))

(declare-fun bs!1163741 () Bool)

(assert (= bs!1163741 (and b!4825536 b!4825510)))

(assert (=> bs!1163741 (= (= (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 lt!1972475))) (= lambda!236631 lambda!236625))))

(declare-fun bs!1163742 () Bool)

(assert (= bs!1163742 (and b!4825536 b!4825530)))

(assert (=> bs!1163742 (= (= (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (toList!7476 lt!1972475)) (= lambda!236631 lambda!236629))))

(assert (=> b!4825536 true))

(declare-fun bs!1163743 () Bool)

(declare-fun b!4825532 () Bool)

(assert (= bs!1163743 (and b!4825532 b!4825536)))

(declare-fun lambda!236632 () Int)

(assert (=> bs!1163743 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (= lambda!236632 lambda!236631))))

(declare-fun bs!1163744 () Bool)

(assert (= bs!1163744 (and b!4825532 b!4825506)))

(assert (=> bs!1163744 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475)))) (= lambda!236632 lambda!236626))))

(declare-fun bs!1163745 () Bool)

(assert (= bs!1163745 (and b!4825532 b!4825511)))

(assert (=> bs!1163745 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (toList!7476 lt!1972475)) (= lambda!236632 lambda!236627))))

(declare-fun bs!1163746 () Bool)

(assert (= bs!1163746 (and b!4825532 b!4825340)))

(assert (=> bs!1163746 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= lambda!236632 lambda!236586))))

(declare-fun bs!1163747 () Bool)

(assert (= bs!1163747 (and b!4825532 b!4825510)))

(assert (=> bs!1163747 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (t!362586 (toList!7476 lt!1972475))) (= lambda!236632 lambda!236625))))

(declare-fun bs!1163748 () Bool)

(assert (= bs!1163748 (and b!4825532 b!4825530)))

(assert (=> bs!1163748 (= (= (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (toList!7476 lt!1972475)) (= lambda!236632 lambda!236629))))

(assert (=> b!4825532 true))

(declare-fun bs!1163749 () Bool)

(declare-fun b!4825537 () Bool)

(assert (= bs!1163749 (and b!4825537 b!4825536)))

(declare-fun lambda!236633 () Int)

(assert (=> bs!1163749 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (= lambda!236633 lambda!236631))))

(declare-fun bs!1163750 () Bool)

(assert (= bs!1163750 (and b!4825537 b!4825506)))

(assert (=> bs!1163750 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (Cons!54966 (h!61400 (toList!7476 lt!1972475)) (t!362586 (toList!7476 lt!1972475)))) (= lambda!236633 lambda!236626))))

(declare-fun bs!1163751 () Bool)

(assert (= bs!1163751 (and b!4825537 b!4825511)))

(assert (=> bs!1163751 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (toList!7476 lt!1972475)) (= lambda!236633 lambda!236627))))

(declare-fun bs!1163752 () Bool)

(assert (= bs!1163752 (and b!4825537 b!4825532)))

(assert (=> bs!1163752 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (Cons!54966 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))) (= lambda!236633 lambda!236632))))

(declare-fun bs!1163753 () Bool)

(assert (= bs!1163753 (and b!4825537 b!4825340)))

(assert (=> bs!1163753 (= lambda!236633 lambda!236586)))

(declare-fun bs!1163754 () Bool)

(assert (= bs!1163754 (and b!4825537 b!4825510)))

(assert (=> bs!1163754 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (t!362586 (toList!7476 lt!1972475))) (= lambda!236633 lambda!236625))))

(declare-fun bs!1163755 () Bool)

(assert (= bs!1163755 (and b!4825537 b!4825530)))

(assert (=> bs!1163755 (= (= (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) (toList!7476 lt!1972475)) (= lambda!236633 lambda!236629))))

(assert (=> b!4825537 true))

(declare-fun bs!1163756 () Bool)

(declare-fun b!4825535 () Bool)

(assert (= bs!1163756 (and b!4825535 b!4825341)))

(declare-fun lambda!236634 () Int)

(assert (=> bs!1163756 (= lambda!236634 lambda!236587)))

(declare-fun bs!1163757 () Bool)

(assert (= bs!1163757 (and b!4825535 b!4825509)))

(assert (=> bs!1163757 (= lambda!236634 lambda!236628)))

(declare-fun bs!1163758 () Bool)

(assert (= bs!1163758 (and b!4825535 b!4825531)))

(assert (=> bs!1163758 (= lambda!236634 lambda!236630)))

(declare-fun e!3015217 () List!55093)

(assert (=> b!4825532 (= e!3015217 (Cons!54969 (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (getKeysList!1158 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))))

(declare-fun c!822266 () Bool)

(assert (=> b!4825532 (= c!822266 (containsKey!4368 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))))

(declare-fun lt!1972961 () Unit!142923)

(declare-fun e!3015219 () Unit!142923)

(assert (=> b!4825532 (= lt!1972961 e!3015219)))

(declare-fun c!822265 () Bool)

(assert (=> b!4825532 (= c!822265 (contains!18775 (getKeysList!1158 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))))

(declare-fun lt!1972965 () Unit!142923)

(declare-fun e!3015216 () Unit!142923)

(assert (=> b!4825532 (= lt!1972965 e!3015216)))

(declare-fun lt!1972962 () List!55093)

(assert (=> b!4825532 (= lt!1972962 (getKeysList!1158 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))))

(declare-fun lt!1972966 () Unit!142923)

(assert (=> b!4825532 (= lt!1972966 (lemmaForallContainsAddHeadPreserves!375 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) lt!1972962 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))))

(assert (=> b!4825532 (forall!12606 lt!1972962 lambda!236632)))

(declare-fun lt!1972964 () Unit!142923)

(assert (=> b!4825532 (= lt!1972964 lt!1972966)))

(declare-fun b!4825533 () Bool)

(declare-fun Unit!143001 () Unit!142923)

(assert (=> b!4825533 (= e!3015216 Unit!143001)))

(declare-fun b!4825534 () Bool)

(declare-fun res!2054408 () Bool)

(declare-fun e!3015218 () Bool)

(assert (=> b!4825534 (=> (not res!2054408) (not e!3015218))))

(declare-fun lt!1972963 () List!55093)

(assert (=> b!4825534 (= res!2054408 (= (length!776 lt!1972963) (length!777 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))))

(assert (=> b!4825536 false))

(declare-fun lt!1972960 () Unit!142923)

(assert (=> b!4825536 (= lt!1972960 (forallContained!4384 (getKeysList!1158 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) lambda!236631 (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))))

(declare-fun Unit!143002 () Unit!142923)

(assert (=> b!4825536 (= e!3015216 Unit!143002)))

(declare-fun res!2054410 () Bool)

(assert (=> b!4825537 (=> (not res!2054410) (not e!3015218))))

(assert (=> b!4825537 (= res!2054410 (forall!12606 lt!1972963 lambda!236633))))

(declare-fun b!4825538 () Bool)

(assert (=> b!4825538 false))

(declare-fun Unit!143003 () Unit!142923)

(assert (=> b!4825538 (= e!3015219 Unit!143003)))

(declare-fun b!4825539 () Bool)

(declare-fun Unit!143004 () Unit!142923)

(assert (=> b!4825539 (= e!3015219 Unit!143004)))

(declare-fun b!4825540 () Bool)

(assert (=> b!4825540 (= e!3015217 Nil!54969)))

(assert (=> b!4825535 (= e!3015218 (= (content!9819 lt!1972963) (content!9819 (map!12578 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) lambda!236634))))))

(declare-fun d!1546003 () Bool)

(assert (=> d!1546003 e!3015218))

(declare-fun res!2054409 () Bool)

(assert (=> d!1546003 (=> (not res!2054409) (not e!3015218))))

(assert (=> d!1546003 (= res!2054409 (noDuplicate!960 lt!1972963))))

(assert (=> d!1546003 (= lt!1972963 e!3015217)))

(declare-fun c!822264 () Bool)

(assert (=> d!1546003 (= c!822264 ((_ is Cons!54966) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))

(assert (=> d!1546003 (invariantList!1811 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))

(assert (=> d!1546003 (= (getKeysList!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) lt!1972963)))

(assert (= (and d!1546003 c!822264) b!4825532))

(assert (= (and d!1546003 (not c!822264)) b!4825540))

(assert (= (and b!4825532 c!822266) b!4825538))

(assert (= (and b!4825532 (not c!822266)) b!4825539))

(assert (= (and b!4825532 c!822265) b!4825536))

(assert (= (and b!4825532 (not c!822265)) b!4825533))

(assert (= (and d!1546003 res!2054409) b!4825534))

(assert (= (and b!4825534 res!2054408) b!4825537))

(assert (= (and b!4825537 res!2054410) b!4825535))

(declare-fun m!5815776 () Bool)

(assert (=> b!4825535 m!5815776))

(declare-fun m!5815778 () Bool)

(assert (=> b!4825535 m!5815778))

(assert (=> b!4825535 m!5815778))

(declare-fun m!5815780 () Bool)

(assert (=> b!4825535 m!5815780))

(declare-fun m!5815782 () Bool)

(assert (=> b!4825537 m!5815782))

(declare-fun m!5815784 () Bool)

(assert (=> b!4825532 m!5815784))

(declare-fun m!5815786 () Bool)

(assert (=> b!4825532 m!5815786))

(declare-fun m!5815788 () Bool)

(assert (=> b!4825532 m!5815788))

(declare-fun m!5815790 () Bool)

(assert (=> b!4825532 m!5815790))

(assert (=> b!4825532 m!5815790))

(declare-fun m!5815792 () Bool)

(assert (=> b!4825532 m!5815792))

(assert (=> b!4825536 m!5815790))

(assert (=> b!4825536 m!5815790))

(declare-fun m!5815794 () Bool)

(assert (=> b!4825536 m!5815794))

(declare-fun m!5815796 () Bool)

(assert (=> b!4825534 m!5815796))

(assert (=> b!4825534 m!5815392))

(declare-fun m!5815798 () Bool)

(assert (=> d!1546003 m!5815798))

(assert (=> d!1546003 m!5815466))

(assert (=> b!4825005 d!1546003))

(assert (=> b!4825131 d!1545993))

(assert (=> b!4825131 d!1545995))

(declare-fun d!1546005 () Bool)

(assert (=> d!1546005 (isDefined!10608 (getValueByKey!2619 (toList!7475 lm!2280) lt!1972478))))

(declare-fun lt!1972967 () Unit!142923)

(assert (=> d!1546005 (= lt!1972967 (choose!35115 (toList!7475 lm!2280) lt!1972478))))

(declare-fun e!3015220 () Bool)

(assert (=> d!1546005 e!3015220))

(declare-fun res!2054411 () Bool)

(assert (=> d!1546005 (=> (not res!2054411) (not e!3015220))))

(assert (=> d!1546005 (= res!2054411 (isStrictlySorted!984 (toList!7475 lm!2280)))))

(assert (=> d!1546005 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2405 (toList!7475 lm!2280) lt!1972478) lt!1972967)))

(declare-fun b!4825541 () Bool)

(assert (=> b!4825541 (= e!3015220 (containsKey!4369 (toList!7475 lm!2280) lt!1972478))))

(assert (= (and d!1546005 res!2054411) b!4825541))

(assert (=> d!1546005 m!5814882))

(assert (=> d!1546005 m!5814882))

(assert (=> d!1546005 m!5815094))

(declare-fun m!5815800 () Bool)

(assert (=> d!1546005 m!5815800))

(assert (=> d!1546005 m!5814874))

(assert (=> b!4825541 m!5815090))

(assert (=> b!4825126 d!1546005))

(assert (=> b!4825126 d!1546001))

(assert (=> b!4825126 d!1545891))

(declare-fun d!1546007 () Bool)

(assert (=> d!1546007 (isDefined!10607 (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(declare-fun lt!1972968 () Unit!142923)

(assert (=> d!1546007 (= lt!1972968 (choose!35123 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> d!1546007 (invariantList!1811 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))

(assert (=> d!1546007 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2404 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) lt!1972968)))

(declare-fun bs!1163759 () Bool)

(assert (= bs!1163759 d!1546007))

(assert (=> bs!1163759 m!5814904))

(assert (=> bs!1163759 m!5814904))

(assert (=> bs!1163759 m!5814906))

(declare-fun m!5815802 () Bool)

(assert (=> bs!1163759 m!5815802))

(assert (=> bs!1163759 m!5815466))

(assert (=> b!4825003 d!1546007))

(declare-fun d!1546009 () Bool)

(assert (=> d!1546009 (= (isDefined!10607 (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428)) (not (isEmpty!29654 (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))))

(declare-fun bs!1163760 () Bool)

(assert (= bs!1163760 d!1546009))

(assert (=> bs!1163760 m!5814904))

(declare-fun m!5815804 () Bool)

(assert (=> bs!1163760 m!5815804))

(assert (=> b!4825003 d!1546009))

(declare-fun b!4825543 () Bool)

(declare-fun e!3015221 () Option!13493)

(declare-fun e!3015222 () Option!13493)

(assert (=> b!4825543 (= e!3015221 e!3015222)))

(declare-fun c!822268 () Bool)

(assert (=> b!4825543 (= c!822268 (and ((_ is Cons!54966) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (not (= (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) key!5428))))))

(declare-fun b!4825545 () Bool)

(assert (=> b!4825545 (= e!3015222 None!13492)))

(declare-fun b!4825542 () Bool)

(assert (=> b!4825542 (= e!3015221 (Some!13492 (_2!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))))))))

(declare-fun b!4825544 () Bool)

(assert (=> b!4825544 (= e!3015222 (getValueByKey!2620 (t!362586 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428))))

(declare-fun d!1546011 () Bool)

(declare-fun c!822267 () Bool)

(assert (=> d!1546011 (= c!822267 (and ((_ is Cons!54966) (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) (= (_1!32387 (h!61400 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))) key!5428)))))

(assert (=> d!1546011 (= (getValueByKey!2620 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) e!3015221)))

(assert (= (and d!1546011 c!822267) b!4825542))

(assert (= (and d!1546011 (not c!822267)) b!4825543))

(assert (= (and b!4825543 c!822268) b!4825544))

(assert (= (and b!4825543 (not c!822268)) b!4825545))

(declare-fun m!5815806 () Bool)

(assert (=> b!4825544 m!5815806))

(assert (=> b!4825003 d!1546011))

(declare-fun d!1546013 () Bool)

(assert (=> d!1546013 (contains!18775 (getKeysList!1158 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475))) key!5428)))

(declare-fun lt!1972969 () Unit!142923)

(assert (=> d!1546013 (= lt!1972969 (choose!35125 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428))))

(assert (=> d!1546013 (invariantList!1811 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)))))

(assert (=> d!1546013 (= (lemmaInListThenGetKeysListContains!1153 (toList!7476 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475)) key!5428) lt!1972969)))

(declare-fun bs!1163761 () Bool)

(assert (= bs!1163761 d!1546013))

(assert (=> bs!1163761 m!5814920))

(assert (=> bs!1163761 m!5814920))

(declare-fun m!5815808 () Bool)

(assert (=> bs!1163761 m!5815808))

(declare-fun m!5815810 () Bool)

(assert (=> bs!1163761 m!5815810))

(assert (=> bs!1163761 m!5815466))

(assert (=> b!4825003 d!1546013))

(declare-fun d!1546015 () Bool)

(declare-fun e!3015225 () Bool)

(assert (=> d!1546015 (= (contains!18772 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475) key!5428) e!3015225)))

(declare-fun res!2054414 () Bool)

(assert (=> d!1546015 (=> res!2054414 e!3015225)))

(assert (=> d!1546015 (= res!2054414 (containsKey!4365 (_2!32388 (h!61401 (toList!7475 lm!2280))) key!5428))))

(assert (=> d!1546015 true))

(declare-fun _$29!811 () Unit!142923)

(assert (=> d!1546015 (= (choose!35110 (_2!32388 (h!61401 (toList!7475 lm!2280))) lt!1972475 key!5428) _$29!811)))

(declare-fun b!4825548 () Bool)

(assert (=> b!4825548 (= e!3015225 (contains!18772 lt!1972475 key!5428))))

(assert (= (and d!1546015 (not res!2054414)) b!4825548))

(assert (=> d!1546015 m!5814812))

(assert (=> d!1546015 m!5814812))

(assert (=> d!1546015 m!5814814))

(assert (=> d!1546015 m!5814810))

(assert (=> b!4825548 m!5814842))

(assert (=> d!1545685 d!1546015))

(assert (=> d!1545685 d!1545689))

(assert (=> d!1545685 d!1545693))

(assert (=> d!1545685 d!1545909))

(assert (=> d!1545685 d!1545695))

(declare-fun d!1546017 () Bool)

(declare-fun lt!1972970 () Bool)

(assert (=> d!1546017 (= lt!1972970 (select (content!9819 (keys!20223 lt!1972475)) key!5428))))

(declare-fun e!3015227 () Bool)

(assert (=> d!1546017 (= lt!1972970 e!3015227)))

(declare-fun res!2054416 () Bool)

(assert (=> d!1546017 (=> (not res!2054416) (not e!3015227))))

(assert (=> d!1546017 (= res!2054416 ((_ is Cons!54969) (keys!20223 lt!1972475)))))

(assert (=> d!1546017 (= (contains!18775 (keys!20223 lt!1972475) key!5428) lt!1972970)))

(declare-fun b!4825549 () Bool)

(declare-fun e!3015226 () Bool)

(assert (=> b!4825549 (= e!3015227 e!3015226)))

(declare-fun res!2054415 () Bool)

(assert (=> b!4825549 (=> res!2054415 e!3015226)))

(assert (=> b!4825549 (= res!2054415 (= (h!61403 (keys!20223 lt!1972475)) key!5428))))

(declare-fun b!4825550 () Bool)

(assert (=> b!4825550 (= e!3015226 (contains!18775 (t!362589 (keys!20223 lt!1972475)) key!5428))))

(assert (= (and d!1546017 res!2054416) b!4825549))

(assert (= (and b!4825549 (not res!2054415)) b!4825550))

(assert (=> d!1546017 m!5815104))

(declare-fun m!5815812 () Bool)

(assert (=> d!1546017 m!5815812))

(declare-fun m!5815814 () Bool)

(assert (=> d!1546017 m!5815814))

(declare-fun m!5815816 () Bool)

(assert (=> b!4825550 m!5815816))

(assert (=> b!4825129 d!1546017))

(assert (=> b!4825129 d!1545999))

(assert (=> d!1545693 d!1545899))

(declare-fun d!1546019 () Bool)

(declare-fun res!2054417 () Bool)

(declare-fun e!3015228 () Bool)

(assert (=> d!1546019 (=> res!2054417 e!3015228)))

(assert (=> d!1546019 (= res!2054417 (and ((_ is Cons!54966) (toList!7476 lt!1972475)) (= (_1!32387 (h!61400 (toList!7476 lt!1972475))) key!5428)))))

(assert (=> d!1546019 (= (containsKey!4368 (toList!7476 lt!1972475) key!5428) e!3015228)))

(declare-fun b!4825551 () Bool)

(declare-fun e!3015229 () Bool)

(assert (=> b!4825551 (= e!3015228 e!3015229)))

(declare-fun res!2054418 () Bool)

(assert (=> b!4825551 (=> (not res!2054418) (not e!3015229))))

(assert (=> b!4825551 (= res!2054418 ((_ is Cons!54966) (toList!7476 lt!1972475)))))

(declare-fun b!4825552 () Bool)

(assert (=> b!4825552 (= e!3015229 (containsKey!4368 (t!362586 (toList!7476 lt!1972475)) key!5428))))

(assert (= (and d!1546019 (not res!2054417)) b!4825551))

(assert (= (and b!4825551 res!2054418) b!4825552))

(declare-fun m!5815818 () Bool)

(assert (=> b!4825552 m!5815818))

(assert (=> d!1545745 d!1546019))

(assert (=> b!4825001 d!1545877))

(declare-fun d!1546021 () Bool)

(declare-fun res!2054419 () Bool)

(declare-fun e!3015230 () Bool)

(assert (=> d!1546021 (=> res!2054419 e!3015230)))

(assert (=> d!1546021 (= res!2054419 (not ((_ is Cons!54966) (_2!32388 (h!61401 (toList!7475 lt!1972474))))))))

(assert (=> d!1546021 (= (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lt!1972474)))) e!3015230)))

(declare-fun b!4825553 () Bool)

(declare-fun e!3015231 () Bool)

(assert (=> b!4825553 (= e!3015230 e!3015231)))

(declare-fun res!2054420 () Bool)

(assert (=> b!4825553 (=> (not res!2054420) (not e!3015231))))

(assert (=> b!4825553 (= res!2054420 (not (containsKey!4365 (t!362586 (_2!32388 (h!61401 (toList!7475 lt!1972474)))) (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lt!1972474))))))))))

(declare-fun b!4825554 () Bool)

(assert (=> b!4825554 (= e!3015231 (noDuplicateKeys!2450 (t!362586 (_2!32388 (h!61401 (toList!7475 lt!1972474))))))))

(assert (= (and d!1546021 (not res!2054419)) b!4825553))

(assert (= (and b!4825553 res!2054420) b!4825554))

(declare-fun m!5815820 () Bool)

(assert (=> b!4825553 m!5815820))

(declare-fun m!5815822 () Bool)

(assert (=> b!4825554 m!5815822))

(assert (=> bs!1163577 d!1546021))

(declare-fun d!1546023 () Bool)

(declare-fun res!2054421 () Bool)

(declare-fun e!3015232 () Bool)

(assert (=> d!1546023 (=> res!2054421 e!3015232)))

(assert (=> d!1546023 (= res!2054421 ((_ is Nil!54967) (t!362587 (toList!7475 lm!2280))))))

(assert (=> d!1546023 (= (forall!12602 (t!362587 (toList!7475 lm!2280)) lambda!236476) e!3015232)))

(declare-fun b!4825555 () Bool)

(declare-fun e!3015233 () Bool)

(assert (=> b!4825555 (= e!3015232 e!3015233)))

(declare-fun res!2054422 () Bool)

(assert (=> b!4825555 (=> (not res!2054422) (not e!3015233))))

(assert (=> b!4825555 (= res!2054422 (dynLambda!22214 lambda!236476 (h!61401 (t!362587 (toList!7475 lm!2280)))))))

(declare-fun b!4825556 () Bool)

(assert (=> b!4825556 (= e!3015233 (forall!12602 (t!362587 (t!362587 (toList!7475 lm!2280))) lambda!236476))))

(assert (= (and d!1546023 (not res!2054421)) b!4825555))

(assert (= (and b!4825555 res!2054422) b!4825556))

(declare-fun b_lambda!189817 () Bool)

(assert (=> (not b_lambda!189817) (not b!4825555)))

(declare-fun m!5815824 () Bool)

(assert (=> b!4825555 m!5815824))

(declare-fun m!5815826 () Bool)

(assert (=> b!4825556 m!5815826))

(assert (=> b!4824954 d!1546023))

(assert (=> b!4824999 d!1546009))

(assert (=> b!4824999 d!1546011))

(declare-fun bs!1163762 () Bool)

(declare-fun b!4825558 () Bool)

(assert (= bs!1163762 (and b!4825558 b!4825098)))

(declare-fun lambda!236635 () Int)

(assert (=> bs!1163762 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972475) (= lambda!236635 lambda!236550))))

(declare-fun bs!1163763 () Bool)

(assert (= bs!1163763 (and b!4825558 b!4825476)))

(assert (=> bs!1163763 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236635 lambda!236613))))

(declare-fun bs!1163764 () Bool)

(assert (= bs!1163764 (and b!4825558 b!4825477)))

(assert (=> bs!1163764 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972918) (= lambda!236635 lambda!236615))))

(declare-fun bs!1163765 () Bool)

(assert (= bs!1163765 (and b!4825558 b!4825099)))

(assert (=> bs!1163765 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972475) (= lambda!236635 lambda!236551))))

(declare-fun bs!1163766 () Bool)

(assert (= bs!1163766 (and b!4825558 d!1545977)))

(assert (=> bs!1163766 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972931) (= lambda!236635 lambda!236616))))

(declare-fun bs!1163767 () Bool)

(assert (= bs!1163767 (and b!4825558 d!1545695)))

(assert (=> bs!1163767 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972695) (= lambda!236635 lambda!236553))))

(declare-fun bs!1163768 () Bool)

(assert (= bs!1163768 (and b!4825558 d!1545943)))

(assert (=> bs!1163768 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972682) (= lambda!236635 lambda!236612))))

(assert (=> bs!1163765 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972682) (= lambda!236635 lambda!236552))))

(assert (=> bs!1163764 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236635 lambda!236614))))

(assert (=> b!4825558 true))

(declare-fun bs!1163769 () Bool)

(declare-fun b!4825559 () Bool)

(assert (= bs!1163769 (and b!4825559 b!4825098)))

(declare-fun lambda!236636 () Int)

(assert (=> bs!1163769 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972475) (= lambda!236636 lambda!236550))))

(declare-fun bs!1163770 () Bool)

(assert (= bs!1163770 (and b!4825559 b!4825476)))

(assert (=> bs!1163770 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236636 lambda!236613))))

(declare-fun bs!1163771 () Bool)

(assert (= bs!1163771 (and b!4825559 b!4825477)))

(assert (=> bs!1163771 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972918) (= lambda!236636 lambda!236615))))

(declare-fun bs!1163772 () Bool)

(assert (= bs!1163772 (and b!4825559 b!4825099)))

(assert (=> bs!1163772 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972475) (= lambda!236636 lambda!236551))))

(declare-fun bs!1163773 () Bool)

(assert (= bs!1163773 (and b!4825559 d!1545977)))

(assert (=> bs!1163773 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972931) (= lambda!236636 lambda!236616))))

(declare-fun bs!1163774 () Bool)

(assert (= bs!1163774 (and b!4825559 b!4825558)))

(assert (=> bs!1163774 (= lambda!236636 lambda!236635)))

(declare-fun bs!1163775 () Bool)

(assert (= bs!1163775 (and b!4825559 d!1545695)))

(assert (=> bs!1163775 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972695) (= lambda!236636 lambda!236553))))

(declare-fun bs!1163776 () Bool)

(assert (= bs!1163776 (and b!4825559 d!1545943)))

(assert (=> bs!1163776 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972682) (= lambda!236636 lambda!236612))))

(assert (=> bs!1163772 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972682) (= lambda!236636 lambda!236552))))

(assert (=> bs!1163771 (= (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236636 lambda!236614))))

(assert (=> b!4825559 true))

(declare-fun lambda!236637 () Int)

(declare-fun lt!1972978 () ListMap!6853)

(assert (=> bs!1163769 (= (= lt!1972978 lt!1972475) (= lambda!236637 lambda!236550))))

(assert (=> bs!1163770 (= (= lt!1972978 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236637 lambda!236613))))

(assert (=> bs!1163771 (= (= lt!1972978 lt!1972918) (= lambda!236637 lambda!236615))))

(assert (=> bs!1163772 (= (= lt!1972978 lt!1972475) (= lambda!236637 lambda!236551))))

(assert (=> b!4825559 (= (= lt!1972978 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236637 lambda!236636))))

(assert (=> bs!1163773 (= (= lt!1972978 lt!1972931) (= lambda!236637 lambda!236616))))

(assert (=> bs!1163774 (= (= lt!1972978 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236637 lambda!236635))))

(assert (=> bs!1163775 (= (= lt!1972978 lt!1972695) (= lambda!236637 lambda!236553))))

(assert (=> bs!1163776 (= (= lt!1972978 lt!1972682) (= lambda!236637 lambda!236612))))

(assert (=> bs!1163772 (= (= lt!1972978 lt!1972682) (= lambda!236637 lambda!236552))))

(assert (=> bs!1163771 (= (= lt!1972978 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236637 lambda!236614))))

(assert (=> b!4825559 true))

(declare-fun bs!1163777 () Bool)

(declare-fun d!1546025 () Bool)

(assert (= bs!1163777 (and d!1546025 b!4825098)))

(declare-fun lambda!236638 () Int)

(declare-fun lt!1972991 () ListMap!6853)

(assert (=> bs!1163777 (= (= lt!1972991 lt!1972475) (= lambda!236638 lambda!236550))))

(declare-fun bs!1163778 () Bool)

(assert (= bs!1163778 (and d!1546025 b!4825476)))

(assert (=> bs!1163778 (= (= lt!1972991 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236638 lambda!236613))))

(declare-fun bs!1163779 () Bool)

(assert (= bs!1163779 (and d!1546025 b!4825099)))

(assert (=> bs!1163779 (= (= lt!1972991 lt!1972475) (= lambda!236638 lambda!236551))))

(declare-fun bs!1163780 () Bool)

(assert (= bs!1163780 (and d!1546025 b!4825559)))

(assert (=> bs!1163780 (= (= lt!1972991 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236638 lambda!236636))))

(declare-fun bs!1163781 () Bool)

(assert (= bs!1163781 (and d!1546025 d!1545977)))

(assert (=> bs!1163781 (= (= lt!1972991 lt!1972931) (= lambda!236638 lambda!236616))))

(declare-fun bs!1163782 () Bool)

(assert (= bs!1163782 (and d!1546025 b!4825558)))

(assert (=> bs!1163782 (= (= lt!1972991 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236638 lambda!236635))))

(declare-fun bs!1163783 () Bool)

(assert (= bs!1163783 (and d!1546025 d!1545695)))

(assert (=> bs!1163783 (= (= lt!1972991 lt!1972695) (= lambda!236638 lambda!236553))))

(declare-fun bs!1163784 () Bool)

(assert (= bs!1163784 (and d!1546025 d!1545943)))

(assert (=> bs!1163784 (= (= lt!1972991 lt!1972682) (= lambda!236638 lambda!236612))))

(assert (=> bs!1163780 (= (= lt!1972991 lt!1972978) (= lambda!236638 lambda!236637))))

(declare-fun bs!1163785 () Bool)

(assert (= bs!1163785 (and d!1546025 b!4825477)))

(assert (=> bs!1163785 (= (= lt!1972991 lt!1972918) (= lambda!236638 lambda!236615))))

(assert (=> bs!1163779 (= (= lt!1972991 lt!1972682) (= lambda!236638 lambda!236552))))

(assert (=> bs!1163785 (= (= lt!1972991 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236638 lambda!236614))))

(assert (=> d!1546025 true))

(declare-fun call!336366 () Bool)

(declare-fun bm!336359 () Bool)

(declare-fun c!822269 () Bool)

(assert (=> bm!336359 (= call!336366 (forall!12604 (toList!7476 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (ite c!822269 lambda!236635 lambda!236637)))))

(declare-fun call!336365 () Bool)

(declare-fun bm!336360 () Bool)

(assert (=> bm!336360 (= call!336365 (forall!12604 (toList!7476 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (ite c!822269 lambda!236635 lambda!236636)))))

(declare-fun e!3015234 () ListMap!6853)

(assert (=> b!4825558 (= e!3015234 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))))))

(declare-fun lt!1972974 () Unit!142923)

(declare-fun call!336364 () Unit!142923)

(assert (=> b!4825558 (= lt!1972974 call!336364)))

(assert (=> b!4825558 call!336365))

(declare-fun lt!1972983 () Unit!142923)

(assert (=> b!4825558 (= lt!1972983 lt!1972974)))

(assert (=> b!4825558 call!336366))

(declare-fun lt!1972981 () Unit!142923)

(declare-fun Unit!143016 () Unit!142923)

(assert (=> b!4825558 (= lt!1972981 Unit!143016)))

(assert (=> b!4825559 (= e!3015234 lt!1972978)))

(declare-fun lt!1972987 () ListMap!6853)

(assert (=> b!4825559 (= lt!1972987 (+!2535 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))))))

(assert (=> b!4825559 (= lt!1972978 (addToMapMapFromBucket!1796 (t!362586 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))) (+!2535 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))))

(declare-fun lt!1972986 () Unit!142923)

(assert (=> b!4825559 (= lt!1972986 call!336364)))

(assert (=> b!4825559 call!336365))

(declare-fun lt!1972979 () Unit!142923)

(assert (=> b!4825559 (= lt!1972979 lt!1972986)))

(assert (=> b!4825559 (forall!12604 (toList!7476 lt!1972987) lambda!236637)))

(declare-fun lt!1972972 () Unit!142923)

(declare-fun Unit!143017 () Unit!142923)

(assert (=> b!4825559 (= lt!1972972 Unit!143017)))

(assert (=> b!4825559 (forall!12604 (t!362586 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))) lambda!236637)))

(declare-fun lt!1972988 () Unit!142923)

(declare-fun Unit!143018 () Unit!142923)

(assert (=> b!4825559 (= lt!1972988 Unit!143018)))

(declare-fun lt!1972980 () Unit!142923)

(declare-fun Unit!143019 () Unit!142923)

(assert (=> b!4825559 (= lt!1972980 Unit!143019)))

(declare-fun lt!1972973 () Unit!142923)

(assert (=> b!4825559 (= lt!1972973 (forallContained!4382 (toList!7476 lt!1972987) lambda!236637 (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))))))

(assert (=> b!4825559 (contains!18772 lt!1972987 (_1!32387 (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972982 () Unit!142923)

(declare-fun Unit!143020 () Unit!142923)

(assert (=> b!4825559 (= lt!1972982 Unit!143020)))

(assert (=> b!4825559 (contains!18772 lt!1972978 (_1!32387 (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))))))

(declare-fun lt!1972975 () Unit!142923)

(declare-fun Unit!143021 () Unit!142923)

(assert (=> b!4825559 (= lt!1972975 Unit!143021)))

(assert (=> b!4825559 (forall!12604 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))) lambda!236637)))

(declare-fun lt!1972977 () Unit!142923)

(declare-fun Unit!143022 () Unit!142923)

(assert (=> b!4825559 (= lt!1972977 Unit!143022)))

(assert (=> b!4825559 (forall!12604 (toList!7476 lt!1972987) lambda!236637)))

(declare-fun lt!1972976 () Unit!142923)

(declare-fun Unit!143023 () Unit!142923)

(assert (=> b!4825559 (= lt!1972976 Unit!143023)))

(declare-fun lt!1972984 () Unit!142923)

(declare-fun Unit!143024 () Unit!142923)

(assert (=> b!4825559 (= lt!1972984 Unit!143024)))

(declare-fun lt!1972971 () Unit!142923)

(assert (=> b!4825559 (= lt!1972971 (addForallContainsKeyThenBeforeAdding!989 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972978 (_1!32387 (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))) (_2!32387 (h!61400 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))))

(assert (=> b!4825559 (forall!12604 (toList!7476 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) lambda!236637)))

(declare-fun lt!1972985 () Unit!142923)

(assert (=> b!4825559 (= lt!1972985 lt!1972971)))

(assert (=> b!4825559 call!336366))

(declare-fun lt!1972989 () Unit!142923)

(declare-fun Unit!143025 () Unit!142923)

(assert (=> b!4825559 (= lt!1972989 Unit!143025)))

(declare-fun res!2054425 () Bool)

(assert (=> b!4825559 (= res!2054425 (forall!12604 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))) lambda!236637))))

(declare-fun e!3015236 () Bool)

(assert (=> b!4825559 (=> (not res!2054425) (not e!3015236))))

(assert (=> b!4825559 e!3015236))

(declare-fun lt!1972990 () Unit!142923)

(declare-fun Unit!143026 () Unit!142923)

(assert (=> b!4825559 (= lt!1972990 Unit!143026)))

(declare-fun bm!336361 () Bool)

(assert (=> bm!336361 (= call!336364 (lemmaContainsAllItsOwnKeys!990 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))))))

(declare-fun b!4825557 () Bool)

(assert (=> b!4825557 (= e!3015236 (forall!12604 (toList!7476 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) lambda!236637))))

(declare-fun e!3015235 () Bool)

(assert (=> d!1546025 e!3015235))

(declare-fun res!2054423 () Bool)

(assert (=> d!1546025 (=> (not res!2054423) (not e!3015235))))

(assert (=> d!1546025 (= res!2054423 (forall!12604 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))) lambda!236638))))

(assert (=> d!1546025 (= lt!1972991 e!3015234)))

(assert (=> d!1546025 (= c!822269 ((_ is Nil!54966) (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))

(assert (=> d!1546025 (noDuplicateKeys!2450 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))))))

(assert (=> d!1546025 (= (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280)))) (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) lt!1972991)))

(declare-fun b!4825560 () Bool)

(declare-fun res!2054424 () Bool)

(assert (=> b!4825560 (=> (not res!2054424) (not e!3015235))))

(assert (=> b!4825560 (= res!2054424 (forall!12604 (toList!7476 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) lambda!236638))))

(declare-fun b!4825561 () Bool)

(assert (=> b!4825561 (= e!3015235 (invariantList!1811 (toList!7476 lt!1972991)))))

(assert (= (and d!1546025 c!822269) b!4825558))

(assert (= (and d!1546025 (not c!822269)) b!4825559))

(assert (= (and b!4825559 res!2054425) b!4825557))

(assert (= (or b!4825558 b!4825559) bm!336359))

(assert (= (or b!4825558 b!4825559) bm!336360))

(assert (= (or b!4825558 b!4825559) bm!336361))

(assert (= (and d!1546025 res!2054423) b!4825560))

(assert (= (and b!4825560 res!2054424) b!4825561))

(declare-fun m!5815828 () Bool)

(assert (=> bm!336360 m!5815828))

(declare-fun m!5815830 () Bool)

(assert (=> b!4825557 m!5815830))

(declare-fun m!5815832 () Bool)

(assert (=> d!1546025 m!5815832))

(declare-fun m!5815834 () Bool)

(assert (=> d!1546025 m!5815834))

(declare-fun m!5815836 () Bool)

(assert (=> bm!336359 m!5815836))

(declare-fun m!5815838 () Bool)

(assert (=> b!4825561 m!5815838))

(declare-fun m!5815840 () Bool)

(assert (=> b!4825559 m!5815840))

(assert (=> b!4825559 m!5815080))

(declare-fun m!5815842 () Bool)

(assert (=> b!4825559 m!5815842))

(declare-fun m!5815844 () Bool)

(assert (=> b!4825559 m!5815844))

(declare-fun m!5815846 () Bool)

(assert (=> b!4825559 m!5815846))

(declare-fun m!5815848 () Bool)

(assert (=> b!4825559 m!5815848))

(declare-fun m!5815850 () Bool)

(assert (=> b!4825559 m!5815850))

(assert (=> b!4825559 m!5815850))

(assert (=> b!4825559 m!5815830))

(assert (=> b!4825559 m!5815080))

(assert (=> b!4825559 m!5815844))

(assert (=> b!4825559 m!5815840))

(declare-fun m!5815852 () Bool)

(assert (=> b!4825559 m!5815852))

(declare-fun m!5815854 () Bool)

(assert (=> b!4825559 m!5815854))

(declare-fun m!5815856 () Bool)

(assert (=> b!4825559 m!5815856))

(declare-fun m!5815858 () Bool)

(assert (=> b!4825560 m!5815858))

(assert (=> bm!336361 m!5815080))

(declare-fun m!5815860 () Bool)

(assert (=> bm!336361 m!5815860))

(assert (=> b!4825110 d!1546025))

(declare-fun bs!1163786 () Bool)

(declare-fun d!1546027 () Bool)

(assert (= bs!1163786 (and d!1546027 start!500512)))

(declare-fun lambda!236639 () Int)

(assert (=> bs!1163786 (= lambda!236639 lambda!236476)))

(declare-fun bs!1163787 () Bool)

(assert (= bs!1163787 (and d!1546027 d!1545751)))

(assert (=> bs!1163787 (not (= lambda!236639 lambda!236560))))

(declare-fun bs!1163788 () Bool)

(assert (= bs!1163788 (and d!1546027 d!1545749)))

(assert (=> bs!1163788 (not (= lambda!236639 lambda!236559))))

(declare-fun bs!1163789 () Bool)

(assert (= bs!1163789 (and d!1546027 d!1545733)))

(assert (=> bs!1163789 (= lambda!236639 lambda!236556)))

(declare-fun bs!1163790 () Bool)

(assert (= bs!1163790 (and d!1546027 d!1545691)))

(assert (=> bs!1163790 (= lambda!236639 lambda!236482)))

(declare-fun lt!1972992 () ListMap!6853)

(assert (=> d!1546027 (invariantList!1811 (toList!7476 lt!1972992))))

(declare-fun e!3015237 () ListMap!6853)

(assert (=> d!1546027 (= lt!1972992 e!3015237)))

(declare-fun c!822270 () Bool)

(assert (=> d!1546027 (= c!822270 ((_ is Cons!54967) (t!362587 (t!362587 (toList!7475 lm!2280)))))))

(assert (=> d!1546027 (forall!12602 (t!362587 (t!362587 (toList!7475 lm!2280))) lambda!236639)))

(assert (=> d!1546027 (= (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280)))) lt!1972992)))

(declare-fun b!4825562 () Bool)

(assert (=> b!4825562 (= e!3015237 (addToMapMapFromBucket!1796 (_2!32388 (h!61401 (t!362587 (t!362587 (toList!7475 lm!2280))))) (extractMap!2678 (t!362587 (t!362587 (t!362587 (toList!7475 lm!2280)))))))))

(declare-fun b!4825563 () Bool)

(assert (=> b!4825563 (= e!3015237 (ListMap!6854 Nil!54966))))

(assert (= (and d!1546027 c!822270) b!4825562))

(assert (= (and d!1546027 (not c!822270)) b!4825563))

(declare-fun m!5815862 () Bool)

(assert (=> d!1546027 m!5815862))

(declare-fun m!5815864 () Bool)

(assert (=> d!1546027 m!5815864))

(declare-fun m!5815866 () Bool)

(assert (=> b!4825562 m!5815866))

(assert (=> b!4825562 m!5815866))

(declare-fun m!5815868 () Bool)

(assert (=> b!4825562 m!5815868))

(assert (=> b!4825110 d!1546027))

(declare-fun d!1546029 () Bool)

(declare-fun lt!1972993 () Int)

(assert (=> d!1546029 (>= lt!1972993 0)))

(declare-fun e!3015238 () Int)

(assert (=> d!1546029 (= lt!1972993 e!3015238)))

(declare-fun c!822271 () Bool)

(assert (=> d!1546029 (= c!822271 ((_ is Nil!54967) (t!362587 (toList!7475 lt!1972474))))))

(assert (=> d!1546029 (= (size!36628 (t!362587 (toList!7475 lt!1972474))) lt!1972993)))

(declare-fun b!4825564 () Bool)

(assert (=> b!4825564 (= e!3015238 0)))

(declare-fun b!4825565 () Bool)

(assert (=> b!4825565 (= e!3015238 (+ 1 (size!36628 (t!362587 (t!362587 (toList!7475 lt!1972474))))))))

(assert (= (and d!1546029 c!822271) b!4825564))

(assert (= (and d!1546029 (not c!822271)) b!4825565))

(declare-fun m!5815870 () Bool)

(assert (=> b!4825565 m!5815870))

(assert (=> b!4825117 d!1546029))

(assert (=> b!4824997 d!1545869))

(assert (=> b!4824997 d!1545877))

(declare-fun d!1546031 () Bool)

(assert (=> d!1546031 (= (invariantList!1811 (toList!7476 lt!1972695)) (noDuplicatedKeys!477 (toList!7476 lt!1972695)))))

(declare-fun bs!1163791 () Bool)

(assert (= bs!1163791 d!1546031))

(declare-fun m!5815872 () Bool)

(assert (=> bs!1163791 m!5815872))

(assert (=> b!4825101 d!1546031))

(declare-fun d!1546033 () Bool)

(declare-fun res!2054426 () Bool)

(declare-fun e!3015239 () Bool)

(assert (=> d!1546033 (=> res!2054426 e!3015239)))

(assert (=> d!1546033 (= res!2054426 (and ((_ is Cons!54966) (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))))) (= (_1!32387 (h!61400 (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280))))))) key!5428)))))

(assert (=> d!1546033 (= (containsKey!4365 (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280))))) key!5428) e!3015239)))

(declare-fun b!4825566 () Bool)

(declare-fun e!3015240 () Bool)

(assert (=> b!4825566 (= e!3015239 e!3015240)))

(declare-fun res!2054427 () Bool)

(assert (=> b!4825566 (=> (not res!2054427) (not e!3015240))))

(assert (=> b!4825566 (= res!2054427 ((_ is Cons!54966) (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825567 () Bool)

(assert (=> b!4825567 (= e!3015240 (containsKey!4365 (t!362586 (t!362586 (apply!13351 lm!2280 (_1!32388 (h!61401 (toList!7475 lm!2280)))))) key!5428))))

(assert (= (and d!1546033 (not res!2054426)) b!4825566))

(assert (= (and b!4825566 res!2054427) b!4825567))

(declare-fun m!5815874 () Bool)

(assert (=> b!4825567 m!5815874))

(assert (=> b!4824972 d!1546033))

(declare-fun bs!1163792 () Bool)

(declare-fun d!1546035 () Bool)

(assert (= bs!1163792 (and d!1546035 b!4825098)))

(declare-fun lambda!236642 () Int)

(assert (=> bs!1163792 (= lambda!236642 lambda!236550)))

(declare-fun bs!1163793 () Bool)

(assert (= bs!1163793 (and d!1546035 b!4825476)))

(assert (=> bs!1163793 (= (= lt!1972475 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236642 lambda!236613))))

(declare-fun bs!1163794 () Bool)

(assert (= bs!1163794 (and d!1546035 b!4825099)))

(assert (=> bs!1163794 (= lambda!236642 lambda!236551)))

(declare-fun bs!1163795 () Bool)

(assert (= bs!1163795 (and d!1546035 b!4825559)))

(assert (=> bs!1163795 (= (= lt!1972475 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236642 lambda!236636))))

(declare-fun bs!1163796 () Bool)

(assert (= bs!1163796 (and d!1546035 d!1545977)))

(assert (=> bs!1163796 (= (= lt!1972475 lt!1972931) (= lambda!236642 lambda!236616))))

(declare-fun bs!1163797 () Bool)

(assert (= bs!1163797 (and d!1546035 b!4825558)))

(assert (=> bs!1163797 (= (= lt!1972475 (extractMap!2678 (t!362587 (t!362587 (toList!7475 lm!2280))))) (= lambda!236642 lambda!236635))))

(declare-fun bs!1163798 () Bool)

(assert (= bs!1163798 (and d!1546035 d!1545695)))

(assert (=> bs!1163798 (= (= lt!1972475 lt!1972695) (= lambda!236642 lambda!236553))))

(declare-fun bs!1163799 () Bool)

(assert (= bs!1163799 (and d!1546035 d!1545943)))

(assert (=> bs!1163799 (= (= lt!1972475 lt!1972682) (= lambda!236642 lambda!236612))))

(declare-fun bs!1163800 () Bool)

(assert (= bs!1163800 (and d!1546035 d!1546025)))

(assert (=> bs!1163800 (= (= lt!1972475 lt!1972991) (= lambda!236642 lambda!236638))))

(assert (=> bs!1163795 (= (= lt!1972475 lt!1972978) (= lambda!236642 lambda!236637))))

(declare-fun bs!1163801 () Bool)

(assert (= bs!1163801 (and d!1546035 b!4825477)))

(assert (=> bs!1163801 (= (= lt!1972475 lt!1972918) (= lambda!236642 lambda!236615))))

(assert (=> bs!1163794 (= (= lt!1972475 lt!1972682) (= lambda!236642 lambda!236552))))

(assert (=> bs!1163801 (= (= lt!1972475 (+!2535 lt!1972475 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (= lambda!236642 lambda!236614))))

(assert (=> d!1546035 true))

(assert (=> d!1546035 (forall!12604 (toList!7476 lt!1972475) lambda!236642)))

(declare-fun lt!1972996 () Unit!142923)

(declare-fun choose!35127 (ListMap!6853) Unit!142923)

(assert (=> d!1546035 (= lt!1972996 (choose!35127 lt!1972475))))

(assert (=> d!1546035 (= (lemmaContainsAllItsOwnKeys!990 lt!1972475) lt!1972996)))

(declare-fun bs!1163802 () Bool)

(assert (= bs!1163802 d!1546035))

(declare-fun m!5815876 () Bool)

(assert (=> bs!1163802 m!5815876))

(declare-fun m!5815878 () Bool)

(assert (=> bs!1163802 m!5815878))

(assert (=> bm!336344 d!1546035))

(declare-fun d!1546037 () Bool)

(assert (=> d!1546037 (= (tail!9410 (toList!7475 lm!2280)) (t!362587 (toList!7475 lm!2280)))))

(assert (=> d!1545735 d!1546037))

(declare-fun d!1546039 () Bool)

(assert (=> d!1546039 (= (get!18821 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478)) (v!49170 (getValueByKey!2619 (toList!7475 lt!1972474) lt!1972478)))))

(assert (=> d!1545755 d!1546039))

(assert (=> d!1545755 d!1545887))

(declare-fun d!1546041 () Bool)

(declare-fun res!2054432 () Bool)

(declare-fun e!3015245 () Bool)

(assert (=> d!1546041 (=> res!2054432 e!3015245)))

(assert (=> d!1546041 (= res!2054432 (or ((_ is Nil!54967) (toList!7475 lm!2280)) ((_ is Nil!54967) (t!362587 (toList!7475 lm!2280)))))))

(assert (=> d!1546041 (= (isStrictlySorted!984 (toList!7475 lm!2280)) e!3015245)))

(declare-fun b!4825572 () Bool)

(declare-fun e!3015246 () Bool)

(assert (=> b!4825572 (= e!3015245 e!3015246)))

(declare-fun res!2054433 () Bool)

(assert (=> b!4825572 (=> (not res!2054433) (not e!3015246))))

(assert (=> b!4825572 (= res!2054433 (bvslt (_1!32388 (h!61401 (toList!7475 lm!2280))) (_1!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))

(declare-fun b!4825573 () Bool)

(assert (=> b!4825573 (= e!3015246 (isStrictlySorted!984 (t!362587 (toList!7475 lm!2280))))))

(assert (= (and d!1546041 (not res!2054432)) b!4825572))

(assert (= (and b!4825572 res!2054433) b!4825573))

(declare-fun m!5815880 () Bool)

(assert (=> b!4825573 m!5815880))

(assert (=> d!1545671 d!1546041))

(declare-fun d!1546043 () Bool)

(declare-fun res!2054434 () Bool)

(declare-fun e!3015247 () Bool)

(assert (=> d!1546043 (=> res!2054434 e!3015247)))

(assert (=> d!1546043 (= res!2054434 ((_ is Nil!54966) (toList!7476 lt!1972475)))))

(assert (=> d!1546043 (= (forall!12604 (toList!7476 lt!1972475) (ite c!822178 lambda!236550 lambda!236552)) e!3015247)))

(declare-fun b!4825574 () Bool)

(declare-fun e!3015248 () Bool)

(assert (=> b!4825574 (= e!3015247 e!3015248)))

(declare-fun res!2054435 () Bool)

(assert (=> b!4825574 (=> (not res!2054435) (not e!3015248))))

(assert (=> b!4825574 (= res!2054435 (dynLambda!22216 (ite c!822178 lambda!236550 lambda!236552) (h!61400 (toList!7476 lt!1972475))))))

(declare-fun b!4825575 () Bool)

(assert (=> b!4825575 (= e!3015248 (forall!12604 (t!362586 (toList!7476 lt!1972475)) (ite c!822178 lambda!236550 lambda!236552)))))

(assert (= (and d!1546043 (not res!2054434)) b!4825574))

(assert (= (and b!4825574 res!2054435) b!4825575))

(declare-fun b_lambda!189819 () Bool)

(assert (=> (not b_lambda!189819) (not b!4825574)))

(declare-fun m!5815882 () Bool)

(assert (=> b!4825574 m!5815882))

(declare-fun m!5815884 () Bool)

(assert (=> b!4825575 m!5815884))

(assert (=> bm!336342 d!1546043))

(declare-fun d!1546045 () Bool)

(declare-fun res!2054436 () Bool)

(declare-fun e!3015249 () Bool)

(assert (=> d!1546045 (=> res!2054436 e!3015249)))

(assert (=> d!1546045 (= res!2054436 ((_ is Nil!54967) (toList!7475 lt!1972474)))))

(assert (=> d!1546045 (= (forall!12602 (toList!7475 lt!1972474) lambda!236559) e!3015249)))

(declare-fun b!4825576 () Bool)

(declare-fun e!3015250 () Bool)

(assert (=> b!4825576 (= e!3015249 e!3015250)))

(declare-fun res!2054437 () Bool)

(assert (=> b!4825576 (=> (not res!2054437) (not e!3015250))))

(assert (=> b!4825576 (= res!2054437 (dynLambda!22214 lambda!236559 (h!61401 (toList!7475 lt!1972474))))))

(declare-fun b!4825577 () Bool)

(assert (=> b!4825577 (= e!3015250 (forall!12602 (t!362587 (toList!7475 lt!1972474)) lambda!236559))))

(assert (= (and d!1546045 (not res!2054436)) b!4825576))

(assert (= (and b!4825576 res!2054437) b!4825577))

(declare-fun b_lambda!189821 () Bool)

(assert (=> (not b_lambda!189821) (not b!4825576)))

(declare-fun m!5815886 () Bool)

(assert (=> b!4825576 m!5815886))

(declare-fun m!5815888 () Bool)

(assert (=> b!4825577 m!5815888))

(assert (=> d!1545749 d!1546045))

(declare-fun d!1546047 () Bool)

(declare-fun res!2054442 () Bool)

(declare-fun e!3015255 () Bool)

(assert (=> d!1546047 (=> res!2054442 e!3015255)))

(assert (=> d!1546047 (= res!2054442 (and ((_ is Cons!54967) (toList!7475 lm!2280)) (= (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478)))))

(assert (=> d!1546047 (= (containsKey!4369 (toList!7475 lm!2280) lt!1972478) e!3015255)))

(declare-fun b!4825582 () Bool)

(declare-fun e!3015256 () Bool)

(assert (=> b!4825582 (= e!3015255 e!3015256)))

(declare-fun res!2054443 () Bool)

(assert (=> b!4825582 (=> (not res!2054443) (not e!3015256))))

(assert (=> b!4825582 (= res!2054443 (and (or (not ((_ is Cons!54967) (toList!7475 lm!2280))) (bvsle (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478)) ((_ is Cons!54967) (toList!7475 lm!2280)) (bvslt (_1!32388 (h!61401 (toList!7475 lm!2280))) lt!1972478)))))

(declare-fun b!4825583 () Bool)

(assert (=> b!4825583 (= e!3015256 (containsKey!4369 (t!362587 (toList!7475 lm!2280)) lt!1972478))))

(assert (= (and d!1546047 (not res!2054442)) b!4825582))

(assert (= (and b!4825582 res!2054443) b!4825583))

(declare-fun m!5815890 () Bool)

(assert (=> b!4825583 m!5815890))

(assert (=> d!1545741 d!1546047))

(declare-fun d!1546049 () Bool)

(declare-fun res!2054444 () Bool)

(declare-fun e!3015257 () Bool)

(assert (=> d!1546049 (=> res!2054444 e!3015257)))

(assert (=> d!1546049 (= res!2054444 (and ((_ is Cons!54967) (toList!7475 lt!1972474)) (= (_1!32388 (h!61401 (toList!7475 lt!1972474))) lt!1972478)))))

(assert (=> d!1546049 (= (containsKey!4369 (toList!7475 lt!1972474) lt!1972478) e!3015257)))

(declare-fun b!4825584 () Bool)

(declare-fun e!3015258 () Bool)

(assert (=> b!4825584 (= e!3015257 e!3015258)))

(declare-fun res!2054445 () Bool)

(assert (=> b!4825584 (=> (not res!2054445) (not e!3015258))))

(assert (=> b!4825584 (= res!2054445 (and (or (not ((_ is Cons!54967) (toList!7475 lt!1972474))) (bvsle (_1!32388 (h!61401 (toList!7475 lt!1972474))) lt!1972478)) ((_ is Cons!54967) (toList!7475 lt!1972474)) (bvslt (_1!32388 (h!61401 (toList!7475 lt!1972474))) lt!1972478)))))

(declare-fun b!4825585 () Bool)

(assert (=> b!4825585 (= e!3015258 (containsKey!4369 (t!362587 (toList!7475 lt!1972474)) lt!1972478))))

(assert (= (and d!1546049 (not res!2054444)) b!4825584))

(assert (= (and b!4825584 res!2054445) b!4825585))

(declare-fun m!5815892 () Bool)

(assert (=> b!4825585 m!5815892))

(assert (=> d!1545747 d!1546049))

(declare-fun d!1546051 () Bool)

(assert (=> d!1546051 (= (get!18821 (getValueByKey!2619 (toList!7475 lm!2280) (_1!32388 (h!61401 (toList!7475 lm!2280))))) (v!49170 (getValueByKey!2619 (toList!7475 lm!2280) (_1!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> d!1545683 d!1546051))

(declare-fun b!4825586 () Bool)

(declare-fun e!3015259 () Option!13492)

(assert (=> b!4825586 (= e!3015259 (Some!13491 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(declare-fun b!4825587 () Bool)

(declare-fun e!3015260 () Option!13492)

(assert (=> b!4825587 (= e!3015259 e!3015260)))

(declare-fun c!822273 () Bool)

(assert (=> b!4825587 (= c!822273 (and ((_ is Cons!54967) (toList!7475 lm!2280)) (not (= (_1!32388 (h!61401 (toList!7475 lm!2280))) (_1!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun b!4825589 () Bool)

(assert (=> b!4825589 (= e!3015260 None!13491)))

(declare-fun b!4825588 () Bool)

(assert (=> b!4825588 (= e!3015260 (getValueByKey!2619 (t!362587 (toList!7475 lm!2280)) (_1!32388 (h!61401 (toList!7475 lm!2280)))))))

(declare-fun d!1546053 () Bool)

(declare-fun c!822272 () Bool)

(assert (=> d!1546053 (= c!822272 (and ((_ is Cons!54967) (toList!7475 lm!2280)) (= (_1!32388 (h!61401 (toList!7475 lm!2280))) (_1!32388 (h!61401 (toList!7475 lm!2280))))))))

(assert (=> d!1546053 (= (getValueByKey!2619 (toList!7475 lm!2280) (_1!32388 (h!61401 (toList!7475 lm!2280)))) e!3015259)))

(assert (= (and d!1546053 c!822272) b!4825586))

(assert (= (and d!1546053 (not c!822272)) b!4825587))

(assert (= (and b!4825587 c!822273) b!4825588))

(assert (= (and b!4825587 (not c!822273)) b!4825589))

(declare-fun m!5815894 () Bool)

(assert (=> b!4825588 m!5815894))

(assert (=> d!1545683 d!1546053))

(declare-fun d!1546055 () Bool)

(declare-fun res!2054446 () Bool)

(declare-fun e!3015261 () Bool)

(assert (=> d!1546055 (=> res!2054446 e!3015261)))

(assert (=> d!1546055 (= res!2054446 (and ((_ is Cons!54966) (t!362586 (apply!13351 lt!1972474 lt!1972478))) (= (_1!32387 (h!61400 (t!362586 (apply!13351 lt!1972474 lt!1972478)))) key!5428)))))

(assert (=> d!1546055 (= (containsKey!4365 (t!362586 (apply!13351 lt!1972474 lt!1972478)) key!5428) e!3015261)))

(declare-fun b!4825590 () Bool)

(declare-fun e!3015262 () Bool)

(assert (=> b!4825590 (= e!3015261 e!3015262)))

(declare-fun res!2054447 () Bool)

(assert (=> b!4825590 (=> (not res!2054447) (not e!3015262))))

(assert (=> b!4825590 (= res!2054447 ((_ is Cons!54966) (t!362586 (apply!13351 lt!1972474 lt!1972478))))))

(declare-fun b!4825591 () Bool)

(assert (=> b!4825591 (= e!3015262 (containsKey!4365 (t!362586 (t!362586 (apply!13351 lt!1972474 lt!1972478))) key!5428))))

(assert (= (and d!1546055 (not res!2054446)) b!4825590))

(assert (= (and b!4825590 res!2054447) b!4825591))

(declare-fun m!5815896 () Bool)

(assert (=> b!4825591 m!5815896))

(assert (=> b!4825144 d!1546055))

(assert (=> b!4825134 d!1546017))

(assert (=> b!4825134 d!1545999))

(declare-fun d!1546057 () Bool)

(declare-fun lt!1972997 () Int)

(assert (=> d!1546057 (>= lt!1972997 0)))

(declare-fun e!3015263 () Int)

(assert (=> d!1546057 (= lt!1972997 e!3015263)))

(declare-fun c!822274 () Bool)

(assert (=> d!1546057 (= c!822274 ((_ is Nil!54967) (t!362587 (toList!7475 lm!2280))))))

(assert (=> d!1546057 (= (size!36628 (t!362587 (toList!7475 lm!2280))) lt!1972997)))

(declare-fun b!4825592 () Bool)

(assert (=> b!4825592 (= e!3015263 0)))

(declare-fun b!4825593 () Bool)

(assert (=> b!4825593 (= e!3015263 (+ 1 (size!36628 (t!362587 (t!362587 (toList!7475 lm!2280))))))))

(assert (= (and d!1546057 c!822274) b!4825592))

(assert (= (and d!1546057 (not c!822274)) b!4825593))

(declare-fun m!5815898 () Bool)

(assert (=> b!4825593 m!5815898))

(assert (=> b!4825119 d!1546057))

(declare-fun d!1546059 () Bool)

(declare-fun res!2054448 () Bool)

(declare-fun e!3015264 () Bool)

(assert (=> d!1546059 (=> res!2054448 e!3015264)))

(assert (=> d!1546059 (= res!2054448 (and ((_ is Cons!54966) (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (= (_1!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) key!5428)))))

(assert (=> d!1546059 (= (containsKey!4365 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))) key!5428) e!3015264)))

(declare-fun b!4825594 () Bool)

(declare-fun e!3015265 () Bool)

(assert (=> b!4825594 (= e!3015264 e!3015265)))

(declare-fun res!2054449 () Bool)

(assert (=> b!4825594 (=> (not res!2054449) (not e!3015265))))

(assert (=> b!4825594 (= res!2054449 ((_ is Cons!54966) (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))

(declare-fun b!4825595 () Bool)

(assert (=> b!4825595 (= e!3015265 (containsKey!4365 (t!362586 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))) key!5428))))

(assert (= (and d!1546059 (not res!2054448)) b!4825594))

(assert (= (and b!4825594 res!2054449) b!4825595))

(declare-fun m!5815900 () Bool)

(assert (=> b!4825595 m!5815900))

(assert (=> b!4824974 d!1546059))

(assert (=> b!4825130 d!1546019))

(declare-fun d!1546061 () Bool)

(assert (=> d!1546061 (containsKey!4368 (toList!7476 lt!1972475) key!5428)))

(declare-fun lt!1972998 () Unit!142923)

(assert (=> d!1546061 (= lt!1972998 (choose!35116 (toList!7476 lt!1972475) key!5428))))

(assert (=> d!1546061 (invariantList!1811 (toList!7476 lt!1972475))))

(assert (=> d!1546061 (= (lemmaInGetKeysListThenContainsKey!1158 (toList!7476 lt!1972475) key!5428) lt!1972998)))

(declare-fun bs!1163803 () Bool)

(assert (= bs!1163803 d!1546061))

(assert (=> bs!1163803 m!5815098))

(declare-fun m!5815902 () Bool)

(assert (=> bs!1163803 m!5815902))

(assert (=> bs!1163803 m!5815750))

(assert (=> b!4825130 d!1546061))

(declare-fun d!1546063 () Bool)

(declare-fun res!2054450 () Bool)

(declare-fun e!3015266 () Bool)

(assert (=> d!1546063 (=> res!2054450 e!3015266)))

(assert (=> d!1546063 (= res!2054450 (and ((_ is Cons!54966) (t!362586 (apply!13351 lm!2280 lt!1972478))) (= (_1!32387 (h!61400 (t!362586 (apply!13351 lm!2280 lt!1972478)))) key!5428)))))

(assert (=> d!1546063 (= (containsKey!4365 (t!362586 (apply!13351 lm!2280 lt!1972478)) key!5428) e!3015266)))

(declare-fun b!4825596 () Bool)

(declare-fun e!3015267 () Bool)

(assert (=> b!4825596 (= e!3015266 e!3015267)))

(declare-fun res!2054451 () Bool)

(assert (=> b!4825596 (=> (not res!2054451) (not e!3015267))))

(assert (=> b!4825596 (= res!2054451 ((_ is Cons!54966) (t!362586 (apply!13351 lm!2280 lt!1972478))))))

(declare-fun b!4825597 () Bool)

(assert (=> b!4825597 (= e!3015267 (containsKey!4365 (t!362586 (t!362586 (apply!13351 lm!2280 lt!1972478))) key!5428))))

(assert (= (and d!1546063 (not res!2054450)) b!4825596))

(assert (= (and b!4825596 res!2054451) b!4825597))

(declare-fun m!5815904 () Bool)

(assert (=> b!4825597 m!5815904))

(assert (=> b!4824967 d!1546063))

(declare-fun tp_is_empty!34455 () Bool)

(declare-fun tp!1362578 () Bool)

(declare-fun b!4825602 () Bool)

(declare-fun e!3015270 () Bool)

(assert (=> b!4825602 (= e!3015270 (and tp_is_empty!34451 tp_is_empty!34455 tp!1362578))))

(assert (=> b!4825149 (= tp!1362569 e!3015270)))

(assert (= (and b!4825149 ((_ is Cons!54966) (_2!32388 (h!61401 (toList!7475 lm!2280))))) b!4825602))

(declare-fun b!4825603 () Bool)

(declare-fun e!3015271 () Bool)

(declare-fun tp!1362579 () Bool)

(declare-fun tp!1362580 () Bool)

(assert (=> b!4825603 (= e!3015271 (and tp!1362579 tp!1362580))))

(assert (=> b!4825149 (= tp!1362570 e!3015271)))

(assert (= (and b!4825149 ((_ is Cons!54967) (t!362587 (toList!7475 lm!2280)))) b!4825603))

(declare-fun b_lambda!189823 () Bool)

(assert (= b_lambda!189821 (or d!1545749 b_lambda!189823)))

(declare-fun bs!1163804 () Bool)

(declare-fun d!1546065 () Bool)

(assert (= bs!1163804 (and d!1546065 d!1545749)))

(declare-fun allKeysSameHash!2006 (List!55090 (_ BitVec 64) Hashable!7264) Bool)

(assert (=> bs!1163804 (= (dynLambda!22214 lambda!236559 (h!61401 (toList!7475 lt!1972474))) (allKeysSameHash!2006 (_2!32388 (h!61401 (toList!7475 lt!1972474))) (_1!32388 (h!61401 (toList!7475 lt!1972474))) hashF!1509))))

(declare-fun m!5815906 () Bool)

(assert (=> bs!1163804 m!5815906))

(assert (=> b!4825576 d!1546065))

(declare-fun b_lambda!189825 () Bool)

(assert (= b_lambda!189777 (or b!4825099 b_lambda!189825)))

(declare-fun bs!1163805 () Bool)

(declare-fun d!1546067 () Bool)

(assert (= bs!1163805 (and d!1546067 b!4825099)))

(assert (=> bs!1163805 (= (dynLambda!22216 lambda!236552 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (contains!18772 lt!1972682 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(assert (=> bs!1163805 m!5815064))

(assert (=> b!4825437 d!1546067))

(declare-fun b_lambda!189827 () Bool)

(assert (= b_lambda!189809 (or d!1545751 b_lambda!189827)))

(declare-fun bs!1163806 () Bool)

(declare-fun d!1546069 () Bool)

(assert (= bs!1163806 (and d!1546069 d!1545751)))

(assert (=> bs!1163806 (= (dynLambda!22214 lambda!236560 (h!61401 (toList!7475 lm!2280))) (allKeysSameHash!2006 (_2!32388 (h!61401 (toList!7475 lm!2280))) (_1!32388 (h!61401 (toList!7475 lm!2280))) hashF!1509))))

(declare-fun m!5815908 () Bool)

(assert (=> bs!1163806 m!5815908))

(assert (=> b!4825480 d!1546069))

(declare-fun b_lambda!189829 () Bool)

(assert (= b_lambda!189767 (or d!1545733 b_lambda!189829)))

(declare-fun bs!1163807 () Bool)

(declare-fun d!1546071 () Bool)

(assert (= bs!1163807 (and d!1546071 d!1545733)))

(assert (=> bs!1163807 (= (dynLambda!22214 lambda!236556 (h!61401 (t!362587 (toList!7475 lm!2280)))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))

(assert (=> bs!1163807 m!5815834))

(assert (=> b!4825383 d!1546071))

(declare-fun b_lambda!189831 () Bool)

(assert (= b_lambda!189807 (or b!4825099 b_lambda!189831)))

(declare-fun bs!1163808 () Bool)

(declare-fun d!1546073 () Bool)

(assert (= bs!1163808 (and d!1546073 b!4825099)))

(assert (=> bs!1163808 (= (dynLambda!22216 lambda!236552 (h!61400 (toList!7476 lt!1972691))) (contains!18772 lt!1972682 (_1!32387 (h!61400 (toList!7476 lt!1972691)))))))

(declare-fun m!5815910 () Bool)

(assert (=> bs!1163808 m!5815910))

(assert (=> b!4825473 d!1546073))

(declare-fun b_lambda!189833 () Bool)

(assert (= b_lambda!189805 (or b!4825099 b_lambda!189833)))

(declare-fun bs!1163809 () Bool)

(declare-fun d!1546075 () Bool)

(assert (= bs!1163809 (and d!1546075 b!4825099)))

(assert (=> bs!1163809 (= (dynLambda!22216 lambda!236552 (h!61400 (toList!7476 lt!1972475))) (contains!18772 lt!1972682 (_1!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun m!5815912 () Bool)

(assert (=> bs!1163809 m!5815912))

(assert (=> b!4825471 d!1546075))

(declare-fun b_lambda!189835 () Bool)

(assert (= b_lambda!189775 (or b!4825099 b_lambda!189835)))

(assert (=> d!1545931 d!1546067))

(declare-fun b_lambda!189837 () Bool)

(assert (= b_lambda!189815 (or start!500512 b_lambda!189837)))

(declare-fun bs!1163810 () Bool)

(declare-fun d!1546077 () Bool)

(assert (= bs!1163810 (and d!1546077 start!500512)))

(assert (=> bs!1163810 (= (dynLambda!22214 lambda!236476 (h!61401 (t!362587 (toList!7475 lt!1972474)))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (t!362587 (toList!7475 lt!1972474))))))))

(declare-fun m!5815914 () Bool)

(assert (=> bs!1163810 m!5815914))

(assert (=> b!4825486 d!1546077))

(declare-fun b_lambda!189839 () Bool)

(assert (= b_lambda!189771 (or b!4825099 b_lambda!189839)))

(declare-fun bs!1163811 () Bool)

(declare-fun d!1546079 () Bool)

(assert (= bs!1163811 (and d!1546079 b!4825099)))

(assert (=> bs!1163811 (= (dynLambda!22216 lambda!236552 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280)))))) (contains!18772 lt!1972682 (_1!32387 (h!61400 (t!362586 (_2!32388 (h!61401 (toList!7475 lm!2280))))))))))

(declare-fun m!5815916 () Bool)

(assert (=> bs!1163811 m!5815916))

(assert (=> b!4825410 d!1546079))

(declare-fun b_lambda!189841 () Bool)

(assert (= b_lambda!189811 (or d!1545695 b_lambda!189841)))

(declare-fun bs!1163812 () Bool)

(declare-fun d!1546081 () Bool)

(assert (= bs!1163812 (and d!1546081 d!1545695)))

(assert (=> bs!1163812 (= (dynLambda!22216 lambda!236553 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280))))) (contains!18772 lt!1972695 (_1!32387 (h!61400 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))))

(declare-fun m!5815918 () Bool)

(assert (=> bs!1163812 m!5815918))

(assert (=> b!4825482 d!1546081))

(declare-fun b_lambda!189843 () Bool)

(assert (= b_lambda!189769 (or d!1545695 b_lambda!189843)))

(declare-fun bs!1163813 () Bool)

(declare-fun d!1546083 () Bool)

(assert (= bs!1163813 (and d!1546083 d!1545695)))

(assert (=> bs!1163813 (= (dynLambda!22216 lambda!236553 (h!61400 (toList!7476 lt!1972475))) (contains!18772 lt!1972695 (_1!32387 (h!61400 (toList!7476 lt!1972475)))))))

(declare-fun m!5815920 () Bool)

(assert (=> bs!1163813 m!5815920))

(assert (=> b!4825408 d!1546083))

(declare-fun b_lambda!189845 () Bool)

(assert (= b_lambda!189817 (or start!500512 b_lambda!189845)))

(declare-fun bs!1163814 () Bool)

(declare-fun d!1546085 () Bool)

(assert (= bs!1163814 (and d!1546085 start!500512)))

(assert (=> bs!1163814 (= (dynLambda!22214 lambda!236476 (h!61401 (t!362587 (toList!7475 lm!2280)))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (t!362587 (toList!7475 lm!2280))))))))

(assert (=> bs!1163814 m!5815834))

(assert (=> b!4825555 d!1546085))

(declare-fun b_lambda!189847 () Bool)

(assert (= b_lambda!189755 (or d!1545691 b_lambda!189847)))

(declare-fun bs!1163815 () Bool)

(declare-fun d!1546087 () Bool)

(assert (= bs!1163815 (and d!1546087 d!1545691)))

(assert (=> bs!1163815 (= (dynLambda!22214 lambda!236482 (h!61401 (toList!7475 lm!2280))) (noDuplicateKeys!2450 (_2!32388 (h!61401 (toList!7475 lm!2280)))))))

(assert (=> bs!1163815 m!5814890))

(assert (=> b!4825309 d!1546087))

(check-sat (not bm!336358) (not b!4825595) (not bm!336354) (not b!4825536) (not b!4825531) (not b!4825541) (not b!4825593) (not b_lambda!189827) (not b!4825511) (not b_lambda!189843) (not bs!1163815) (not d!1546003) (not b!4825577) (not b_lambda!189837) (not b!4825509) (not bs!1163808) (not b!4825485) (not b!4825560) (not d!1545885) (not b!4825552) (not d!1545877) (not b_lambda!189733) (not b!4825554) (not d!1545991) (not b!4825464) (not d!1546061) (not b!4825436) (not d!1546013) (not b!4825444) tp_is_empty!34455 (not bs!1163806) (not b_lambda!189831) (not d!1545989) (not b_lambda!189813) (not b!4825562) (not b!4825462) (not b!4825530) (not b!4825363) (not b!4825373) (not b!4825559) (not b!4825340) (not b!4825395) (not d!1545993) (not b!4825553) (not b!4825310) (not b_lambda!189829) (not b!4825381) (not b!4825550) (not b!4825591) (not b!4825452) (not b!4825561) (not b!4825527) (not b!4825384) (not b!4825409) (not d!1546005) (not b!4825483) (not d!1545901) (not b!4825603) (not d!1545863) (not b!4825583) (not d!1546007) (not d!1545869) (not b!4825477) (not b!4825544) (not d!1545981) (not b_lambda!189839) (not bm!336356) (not d!1545931) (not bm!336360) (not d!1546009) (not d!1545943) (not b!4825341) (not d!1546027) (not b!4825479) (not b!4825575) (not b!4825556) (not b!4825367) (not bm!336361) (not b_lambda!189825) (not b!4825466) (not d!1546017) (not bs!1163811) (not d!1545893) (not b!4825510) (not b!4825537) (not b!4825534) (not b!4825448) (not b!4825588) (not b!4825450) (not b_lambda!189833) (not b_lambda!189841) tp_is_empty!34451 (not b!4825423) (not b!4825331) (not b_lambda!189845) (not b!4825535) (not b!4825463) (not b!4825548) (not d!1546031) (not b!4825347) (not b!4825422) (not b!4825557) (not b_lambda!189735) (not b!4825445) (not b!4825602) (not bs!1163804) (not d!1545977) (not b_lambda!189823) (not b!4825585) (not bs!1163813) (not d!1546015) (not bm!336357) (not bs!1163812) (not d!1546001) (not b!4825446) (not b!4825396) (not bs!1163809) (not b_lambda!189819) (not d!1545997) (not d!1545999) (not d!1546035) (not bm!336355) (not b!4825470) (not b_lambda!189847) (not bs!1163805) (not b!4825468) (not b!4825411) (not d!1545911) (not d!1545953) (not b!4825398) (not b!4825508) (not b_lambda!189835) (not bs!1163807) (not b!4825567) (not b!4825529) (not d!1546025) (not b!4825506) (not b!4825449) (not d!1545917) (not b!4825472) (not b!4825532) (not bs!1163810) (not b!4825573) (not b!4825438) (not b!4825481) (not bm!336359) (not b!4825339) (not b!4825487) (not b!4825478) (not b!4825565) (not bs!1163814) (not b!4825474) (not b!4825597) (not d!1545881) (not b!4825475) (not d!1545941) (not d!1545905) (not b!4825467))
(check-sat)
