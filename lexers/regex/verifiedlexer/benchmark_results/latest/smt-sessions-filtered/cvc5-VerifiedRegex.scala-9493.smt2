; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501854 () Bool)

(assert start!501854)

(declare-fun b!4830874 () Bool)

(declare-fun e!3018733 () Bool)

(declare-datatypes ((K!16752 0))(
  ( (K!16753 (val!21707 Int)) )
))
(declare-datatypes ((V!16998 0))(
  ( (V!16999 (val!21708 Int)) )
))
(declare-datatypes ((tuple2!58350 0))(
  ( (tuple2!58351 (_1!32469 K!16752) (_2!32469 V!16998)) )
))
(declare-datatypes ((List!55188 0))(
  ( (Nil!55064) (Cons!55064 (h!61498 tuple2!58350) (t!362684 List!55188)) )
))
(declare-datatypes ((ListMap!6923 0))(
  ( (ListMap!6924 (toList!7551 List!55188)) )
))
(declare-fun lt!1976902 () ListMap!6923)

(declare-fun key!5594 () K!16752)

(declare-fun contains!18874 (ListMap!6923 K!16752) Bool)

(assert (=> b!4830874 (= e!3018733 (contains!18874 lt!1976902 key!5594))))

(declare-fun b!4830875 () Bool)

(declare-fun res!2057568 () Bool)

(declare-fun e!3018731 () Bool)

(assert (=> b!4830875 (=> res!2057568 e!3018731)))

(declare-datatypes ((tuple2!58352 0))(
  ( (tuple2!58353 (_1!32470 (_ BitVec 64)) (_2!32470 List!55188)) )
))
(declare-datatypes ((List!55189 0))(
  ( (Nil!55065) (Cons!55065 (h!61499 tuple2!58352) (t!362685 List!55189)) )
))
(declare-datatypes ((ListLongMap!6073 0))(
  ( (ListLongMap!6074 (toList!7552 List!55189)) )
))
(declare-fun lt!1976900 () ListLongMap!6073)

(declare-datatypes ((Hashable!7305 0))(
  ( (HashableExt!7304 (__x!33580 Int)) )
))
(declare-fun hashF!1543 () Hashable!7305)

(declare-fun allKeysSameHashInMap!2621 (ListLongMap!6073 Hashable!7305) Bool)

(assert (=> b!4830875 (= res!2057568 (not (allKeysSameHashInMap!2621 lt!1976900 hashF!1543)))))

(declare-fun b!4830876 () Bool)

(declare-fun res!2057566 () Bool)

(declare-fun e!3018734 () Bool)

(assert (=> b!4830876 (=> (not res!2057566) (not e!3018734))))

(declare-fun lm!2325 () ListLongMap!6073)

(assert (=> b!4830876 (= res!2057566 (allKeysSameHashInMap!2621 lm!2325 hashF!1543))))

(declare-fun b!4830877 () Bool)

(declare-fun e!3018732 () Bool)

(assert (=> b!4830877 (= e!3018732 (not e!3018731))))

(declare-fun res!2057564 () Bool)

(assert (=> b!4830877 (=> res!2057564 e!3018731)))

(declare-fun lambda!238009 () Int)

(declare-fun forall!12675 (List!55189 Int) Bool)

(assert (=> b!4830877 (= res!2057564 (not (forall!12675 (toList!7552 lt!1976900) lambda!238009)))))

(declare-fun tail!9433 (ListLongMap!6073) ListLongMap!6073)

(assert (=> b!4830877 (= lt!1976900 (tail!9433 lm!2325))))

(declare-fun containsKey!4432 (List!55188 K!16752) Bool)

(declare-fun apply!13370 (ListLongMap!6073 (_ BitVec 64)) List!55188)

(assert (=> b!4830877 (not (containsKey!4432 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143787 0))(
  ( (Unit!143788) )
))
(declare-fun lt!1976901 () Unit!143787)

(declare-fun lemmaNotSameHashThenCannotContainKey!239 (ListLongMap!6073 K!16752 (_ BitVec 64) Hashable!7305) Unit!143787)

(assert (=> b!4830877 (= lt!1976901 (lemmaNotSameHashThenCannotContainKey!239 lm!2325 key!5594 (_1!32470 (h!61499 (toList!7552 lm!2325))) hashF!1543))))

(declare-fun addToMapMapFromBucket!1828 (List!55188 ListMap!6923) ListMap!6923)

(assert (=> b!4830877 (= (contains!18874 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902) key!5594) e!3018733)))

(declare-fun res!2057563 () Bool)

(assert (=> b!4830877 (=> res!2057563 e!3018733)))

(assert (=> b!4830877 (= res!2057563 (containsKey!4432 (_2!32470 (h!61499 (toList!7552 lm!2325))) key!5594))))

(declare-fun lt!1976899 () Unit!143787)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!51 (List!55188 ListMap!6923 K!16752) Unit!143787)

(assert (=> b!4830877 (= lt!1976899 (lemmaAddToMapFromBucketContainsIIFInAccOrL!51 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902 key!5594))))

(declare-fun extractMap!2713 (List!55189) ListMap!6923)

(assert (=> b!4830877 (= lt!1976902 (extractMap!2713 (t!362685 (toList!7552 lm!2325))))))

(declare-fun b!4830878 () Bool)

(assert (=> b!4830878 (= e!3018734 e!3018732)))

(declare-fun res!2057569 () Bool)

(assert (=> b!4830878 (=> (not res!2057569) (not e!3018732))))

(declare-fun lt!1976898 () (_ BitVec 64))

(declare-fun contains!18875 (ListLongMap!6073 (_ BitVec 64)) Bool)

(assert (=> b!4830878 (= res!2057569 (not (contains!18875 lm!2325 lt!1976898)))))

(declare-fun hash!5476 (Hashable!7305 K!16752) (_ BitVec 64))

(assert (=> b!4830878 (= lt!1976898 (hash!5476 hashF!1543 key!5594))))

(declare-fun b!4830879 () Bool)

(declare-fun e!3018735 () Bool)

(declare-fun tp!1362893 () Bool)

(assert (=> b!4830879 (= e!3018735 tp!1362893)))

(declare-fun b!4830880 () Bool)

(declare-fun res!2057565 () Bool)

(assert (=> b!4830880 (=> res!2057565 e!3018731)))

(assert (=> b!4830880 (= res!2057565 (contains!18875 lt!1976900 lt!1976898))))

(declare-fun res!2057567 () Bool)

(assert (=> start!501854 (=> (not res!2057567) (not e!3018734))))

(assert (=> start!501854 (= res!2057567 (forall!12675 (toList!7552 lm!2325) lambda!238009))))

(assert (=> start!501854 e!3018734))

(declare-fun inv!70653 (ListLongMap!6073) Bool)

(assert (=> start!501854 (and (inv!70653 lm!2325) e!3018735)))

(assert (=> start!501854 true))

(declare-fun tp_is_empty!34565 () Bool)

(assert (=> start!501854 tp_is_empty!34565))

(declare-fun b!4830881 () Bool)

(declare-fun size!36631 (List!55189) Int)

(assert (=> b!4830881 (= e!3018731 (< (size!36631 (toList!7552 lt!1976900)) (size!36631 (toList!7552 lm!2325))))))

(declare-fun b!4830882 () Bool)

(declare-fun res!2057562 () Bool)

(assert (=> b!4830882 (=> (not res!2057562) (not e!3018732))))

(assert (=> b!4830882 (= res!2057562 (is-Cons!55065 (toList!7552 lm!2325)))))

(assert (= (and start!501854 res!2057567) b!4830876))

(assert (= (and b!4830876 res!2057566) b!4830878))

(assert (= (and b!4830878 res!2057569) b!4830882))

(assert (= (and b!4830882 res!2057562) b!4830877))

(assert (= (and b!4830877 (not res!2057563)) b!4830874))

(assert (= (and b!4830877 (not res!2057564)) b!4830875))

(assert (= (and b!4830875 (not res!2057568)) b!4830880))

(assert (= (and b!4830880 (not res!2057565)) b!4830881))

(assert (= start!501854 b!4830879))

(declare-fun m!5824042 () Bool)

(assert (=> b!4830877 m!5824042))

(declare-fun m!5824044 () Bool)

(assert (=> b!4830877 m!5824044))

(declare-fun m!5824046 () Bool)

(assert (=> b!4830877 m!5824046))

(declare-fun m!5824048 () Bool)

(assert (=> b!4830877 m!5824048))

(declare-fun m!5824050 () Bool)

(assert (=> b!4830877 m!5824050))

(assert (=> b!4830877 m!5824050))

(declare-fun m!5824052 () Bool)

(assert (=> b!4830877 m!5824052))

(declare-fun m!5824054 () Bool)

(assert (=> b!4830877 m!5824054))

(declare-fun m!5824056 () Bool)

(assert (=> b!4830877 m!5824056))

(declare-fun m!5824058 () Bool)

(assert (=> b!4830877 m!5824058))

(declare-fun m!5824060 () Bool)

(assert (=> b!4830877 m!5824060))

(assert (=> b!4830877 m!5824054))

(declare-fun m!5824062 () Bool)

(assert (=> b!4830875 m!5824062))

(declare-fun m!5824064 () Bool)

(assert (=> b!4830880 m!5824064))

(declare-fun m!5824066 () Bool)

(assert (=> start!501854 m!5824066))

(declare-fun m!5824068 () Bool)

(assert (=> start!501854 m!5824068))

(declare-fun m!5824070 () Bool)

(assert (=> b!4830878 m!5824070))

(declare-fun m!5824072 () Bool)

(assert (=> b!4830878 m!5824072))

(declare-fun m!5824074 () Bool)

(assert (=> b!4830876 m!5824074))

(declare-fun m!5824076 () Bool)

(assert (=> b!4830881 m!5824076))

(declare-fun m!5824078 () Bool)

(assert (=> b!4830881 m!5824078))

(declare-fun m!5824080 () Bool)

(assert (=> b!4830874 m!5824080))

(push 1)

(assert tp_is_empty!34565)

(assert (not b!4830875))

(assert (not b!4830879))

(assert (not b!4830878))

(assert (not start!501854))

(assert (not b!4830877))

(assert (not b!4830874))

(assert (not b!4830880))

(assert (not b!4830876))

(assert (not b!4830881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1548668 () Bool)

(declare-fun e!3018755 () Bool)

(assert (=> d!1548668 e!3018755))

(declare-fun res!2057596 () Bool)

(assert (=> d!1548668 (=> res!2057596 e!3018755)))

(declare-fun lt!1976927 () Bool)

(assert (=> d!1548668 (= res!2057596 (not lt!1976927))))

(declare-fun lt!1976926 () Bool)

(assert (=> d!1548668 (= lt!1976927 lt!1976926)))

(declare-fun lt!1976929 () Unit!143787)

(declare-fun e!3018756 () Unit!143787)

(assert (=> d!1548668 (= lt!1976929 e!3018756)))

(declare-fun c!823136 () Bool)

(assert (=> d!1548668 (= c!823136 lt!1976926)))

(declare-fun containsKey!4434 (List!55189 (_ BitVec 64)) Bool)

(assert (=> d!1548668 (= lt!1976926 (containsKey!4434 (toList!7552 lm!2325) lt!1976898))))

(assert (=> d!1548668 (= (contains!18875 lm!2325 lt!1976898) lt!1976927)))

(declare-fun b!4830916 () Bool)

(declare-fun lt!1976928 () Unit!143787)

(assert (=> b!4830916 (= e!3018756 lt!1976928)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2437 (List!55189 (_ BitVec 64)) Unit!143787)

(assert (=> b!4830916 (= lt!1976928 (lemmaContainsKeyImpliesGetValueByKeyDefined!2437 (toList!7552 lm!2325) lt!1976898))))

(declare-datatypes ((Option!13525 0))(
  ( (None!13524) (Some!13524 (v!49219 List!55188)) )
))
(declare-fun isDefined!10640 (Option!13525) Bool)

(declare-fun getValueByKey!2652 (List!55189 (_ BitVec 64)) Option!13525)

(assert (=> b!4830916 (isDefined!10640 (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898))))

(declare-fun b!4830917 () Bool)

(declare-fun Unit!143791 () Unit!143787)

(assert (=> b!4830917 (= e!3018756 Unit!143791)))

(declare-fun b!4830918 () Bool)

(assert (=> b!4830918 (= e!3018755 (isDefined!10640 (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898)))))

(assert (= (and d!1548668 c!823136) b!4830916))

(assert (= (and d!1548668 (not c!823136)) b!4830917))

(assert (= (and d!1548668 (not res!2057596)) b!4830918))

(declare-fun m!5824122 () Bool)

(assert (=> d!1548668 m!5824122))

(declare-fun m!5824124 () Bool)

(assert (=> b!4830916 m!5824124))

(declare-fun m!5824126 () Bool)

(assert (=> b!4830916 m!5824126))

(assert (=> b!4830916 m!5824126))

(declare-fun m!5824128 () Bool)

(assert (=> b!4830916 m!5824128))

(assert (=> b!4830918 m!5824126))

(assert (=> b!4830918 m!5824126))

(assert (=> b!4830918 m!5824128))

(assert (=> b!4830878 d!1548668))

(declare-fun d!1548670 () Bool)

(declare-fun hash!5479 (Hashable!7305 K!16752) (_ BitVec 64))

(assert (=> d!1548670 (= (hash!5476 hashF!1543 key!5594) (hash!5479 hashF!1543 key!5594))))

(declare-fun bs!1166060 () Bool)

(assert (= bs!1166060 d!1548670))

(declare-fun m!5824130 () Bool)

(assert (=> bs!1166060 m!5824130))

(assert (=> b!4830878 d!1548670))

(declare-fun bs!1166061 () Bool)

(declare-fun d!1548672 () Bool)

(assert (= bs!1166061 (and d!1548672 start!501854)))

(declare-fun lambda!238017 () Int)

(assert (=> bs!1166061 (not (= lambda!238017 lambda!238009))))

(assert (=> d!1548672 true))

(assert (=> d!1548672 (= (allKeysSameHashInMap!2621 lm!2325 hashF!1543) (forall!12675 (toList!7552 lm!2325) lambda!238017))))

(declare-fun bs!1166062 () Bool)

(assert (= bs!1166062 d!1548672))

(declare-fun m!5824132 () Bool)

(assert (=> bs!1166062 m!5824132))

(assert (=> b!4830876 d!1548672))

(declare-fun e!3018759 () Bool)

(declare-fun d!1548674 () Bool)

(assert (=> d!1548674 (= (contains!18874 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902) key!5594) e!3018759)))

(declare-fun res!2057599 () Bool)

(assert (=> d!1548674 (=> res!2057599 e!3018759)))

(assert (=> d!1548674 (= res!2057599 (containsKey!4432 (_2!32470 (h!61499 (toList!7552 lm!2325))) key!5594))))

(declare-fun lt!1976932 () Unit!143787)

(declare-fun choose!35251 (List!55188 ListMap!6923 K!16752) Unit!143787)

(assert (=> d!1548674 (= lt!1976932 (choose!35251 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902 key!5594))))

(declare-fun noDuplicateKeys!2471 (List!55188) Bool)

(assert (=> d!1548674 (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lm!2325))))))

(assert (=> d!1548674 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!51 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902 key!5594) lt!1976932)))

(declare-fun b!4830923 () Bool)

(assert (=> b!4830923 (= e!3018759 (contains!18874 lt!1976902 key!5594))))

(assert (= (and d!1548674 (not res!2057599)) b!4830923))

(assert (=> d!1548674 m!5824048))

(assert (=> d!1548674 m!5824050))

(declare-fun m!5824134 () Bool)

(assert (=> d!1548674 m!5824134))

(assert (=> d!1548674 m!5824050))

(assert (=> d!1548674 m!5824052))

(declare-fun m!5824136 () Bool)

(assert (=> d!1548674 m!5824136))

(assert (=> b!4830923 m!5824080))

(assert (=> b!4830877 d!1548674))

(declare-fun d!1548678 () Bool)

(declare-fun res!2057604 () Bool)

(declare-fun e!3018764 () Bool)

(assert (=> d!1548678 (=> res!2057604 e!3018764)))

(assert (=> d!1548678 (= res!2057604 (and (is-Cons!55064 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325))))) (= (_1!32469 (h!61498 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))))) key!5594)))))

(assert (=> d!1548678 (= (containsKey!4432 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))) key!5594) e!3018764)))

(declare-fun b!4830930 () Bool)

(declare-fun e!3018765 () Bool)

(assert (=> b!4830930 (= e!3018764 e!3018765)))

(declare-fun res!2057605 () Bool)

(assert (=> b!4830930 (=> (not res!2057605) (not e!3018765))))

(assert (=> b!4830930 (= res!2057605 (is-Cons!55064 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun b!4830931 () Bool)

(assert (=> b!4830931 (= e!3018765 (containsKey!4432 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325))))) key!5594))))

(assert (= (and d!1548678 (not res!2057604)) b!4830930))

(assert (= (and b!4830930 res!2057605) b!4830931))

(declare-fun m!5824140 () Bool)

(assert (=> b!4830931 m!5824140))

(assert (=> b!4830877 d!1548678))

(declare-fun d!1548682 () Bool)

(declare-fun tail!9435 (List!55189) List!55189)

(assert (=> d!1548682 (= (tail!9433 lm!2325) (ListLongMap!6074 (tail!9435 (toList!7552 lm!2325))))))

(declare-fun bs!1166068 () Bool)

(assert (= bs!1166068 d!1548682))

(declare-fun m!5824144 () Bool)

(assert (=> bs!1166068 m!5824144))

(assert (=> b!4830877 d!1548682))

(declare-fun b!4830997 () Bool)

(assert (=> b!4830997 true))

(declare-fun bs!1166071 () Bool)

(declare-fun b!4830999 () Bool)

(assert (= bs!1166071 (and b!4830999 b!4830997)))

(declare-fun lambda!238051 () Int)

(declare-fun lambda!238050 () Int)

(assert (=> bs!1166071 (= lambda!238051 lambda!238050)))

(assert (=> b!4830999 true))

(declare-fun lambda!238052 () Int)

(declare-fun lt!1977026 () ListMap!6923)

(assert (=> bs!1166071 (= (= lt!1977026 lt!1976902) (= lambda!238052 lambda!238050))))

(assert (=> b!4830999 (= (= lt!1977026 lt!1976902) (= lambda!238052 lambda!238051))))

(assert (=> b!4830999 true))

(declare-fun bs!1166072 () Bool)

(declare-fun d!1548686 () Bool)

(assert (= bs!1166072 (and d!1548686 b!4830997)))

(declare-fun lt!1977022 () ListMap!6923)

(declare-fun lambda!238053 () Int)

(assert (=> bs!1166072 (= (= lt!1977022 lt!1976902) (= lambda!238053 lambda!238050))))

(declare-fun bs!1166073 () Bool)

(assert (= bs!1166073 (and d!1548686 b!4830999)))

(assert (=> bs!1166073 (= (= lt!1977022 lt!1976902) (= lambda!238053 lambda!238051))))

(assert (=> bs!1166073 (= (= lt!1977022 lt!1977026) (= lambda!238053 lambda!238052))))

(assert (=> d!1548686 true))

(declare-fun call!336668 () Bool)

(declare-fun bm!336663 () Bool)

(declare-fun c!823156 () Bool)

(declare-fun forall!12677 (List!55188 Int) Bool)

(assert (=> bm!336663 (= call!336668 (forall!12677 (ite c!823156 (toList!7551 lt!1976902) (_2!32470 (h!61499 (toList!7552 lm!2325)))) (ite c!823156 lambda!238050 lambda!238052)))))

(declare-fun e!3018808 () Bool)

(assert (=> d!1548686 e!3018808))

(declare-fun res!2057632 () Bool)

(assert (=> d!1548686 (=> (not res!2057632) (not e!3018808))))

(assert (=> d!1548686 (= res!2057632 (forall!12677 (_2!32470 (h!61499 (toList!7552 lm!2325))) lambda!238053))))

(declare-fun e!3018809 () ListMap!6923)

(assert (=> d!1548686 (= lt!1977022 e!3018809)))

(assert (=> d!1548686 (= c!823156 (is-Nil!55064 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> d!1548686 (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lm!2325))))))

(assert (=> d!1548686 (= (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902) lt!1977022)))

(declare-fun b!4830995 () Bool)

(declare-fun e!3018810 () Bool)

(assert (=> b!4830995 (= e!3018810 (forall!12677 (toList!7551 lt!1976902) lambda!238052))))

(declare-fun call!336669 () Bool)

(declare-fun bm!336664 () Bool)

(declare-fun lt!1977019 () ListMap!6923)

(assert (=> bm!336664 (= call!336669 (forall!12677 (ite c!823156 (toList!7551 lt!1976902) (toList!7551 lt!1977019)) (ite c!823156 lambda!238050 lambda!238052)))))

(declare-fun b!4830996 () Bool)

(declare-fun res!2057633 () Bool)

(assert (=> b!4830996 (=> (not res!2057633) (not e!3018808))))

(assert (=> b!4830996 (= res!2057633 (forall!12677 (toList!7551 lt!1976902) lambda!238053))))

(assert (=> b!4830997 (= e!3018809 lt!1976902)))

(declare-fun lt!1977033 () Unit!143787)

(declare-fun call!336670 () Unit!143787)

(assert (=> b!4830997 (= lt!1977033 call!336670)))

(assert (=> b!4830997 call!336668))

(declare-fun lt!1977028 () Unit!143787)

(assert (=> b!4830997 (= lt!1977028 lt!1977033)))

(assert (=> b!4830997 call!336669))

(declare-fun lt!1977031 () Unit!143787)

(declare-fun Unit!143792 () Unit!143787)

(assert (=> b!4830997 (= lt!1977031 Unit!143792)))

(declare-fun bm!336665 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1005 (ListMap!6923) Unit!143787)

(assert (=> bm!336665 (= call!336670 (lemmaContainsAllItsOwnKeys!1005 lt!1976902))))

(declare-fun b!4830998 () Bool)

(declare-fun invariantList!1827 (List!55188) Bool)

(assert (=> b!4830998 (= e!3018808 (invariantList!1827 (toList!7551 lt!1977022)))))

(assert (=> b!4830999 (= e!3018809 lt!1977026)))

(declare-fun +!2550 (ListMap!6923 tuple2!58350) ListMap!6923)

(assert (=> b!4830999 (= lt!1977019 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> b!4830999 (= lt!1977026 (addToMapMapFromBucket!1828 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977034 () Unit!143787)

(assert (=> b!4830999 (= lt!1977034 call!336670)))

(assert (=> b!4830999 (forall!12677 (toList!7551 lt!1976902) lambda!238051)))

(declare-fun lt!1977038 () Unit!143787)

(assert (=> b!4830999 (= lt!1977038 lt!1977034)))

(assert (=> b!4830999 (forall!12677 (toList!7551 lt!1977019) lambda!238052)))

(declare-fun lt!1977020 () Unit!143787)

(declare-fun Unit!143793 () Unit!143787)

(assert (=> b!4830999 (= lt!1977020 Unit!143793)))

(assert (=> b!4830999 (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238052)))

(declare-fun lt!1977021 () Unit!143787)

(declare-fun Unit!143794 () Unit!143787)

(assert (=> b!4830999 (= lt!1977021 Unit!143794)))

(declare-fun lt!1977036 () Unit!143787)

(declare-fun Unit!143795 () Unit!143787)

(assert (=> b!4830999 (= lt!1977036 Unit!143795)))

(declare-fun lt!1977023 () Unit!143787)

(declare-fun forallContained!4412 (List!55188 Int tuple2!58350) Unit!143787)

(assert (=> b!4830999 (= lt!1977023 (forallContained!4412 (toList!7551 lt!1977019) lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> b!4830999 (contains!18874 lt!1977019 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun lt!1977027 () Unit!143787)

(declare-fun Unit!143796 () Unit!143787)

(assert (=> b!4830999 (= lt!1977027 Unit!143796)))

(assert (=> b!4830999 (contains!18874 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun lt!1977032 () Unit!143787)

(declare-fun Unit!143797 () Unit!143787)

(assert (=> b!4830999 (= lt!1977032 Unit!143797)))

(assert (=> b!4830999 call!336668))

(declare-fun lt!1977025 () Unit!143787)

(declare-fun Unit!143798 () Unit!143787)

(assert (=> b!4830999 (= lt!1977025 Unit!143798)))

(assert (=> b!4830999 call!336669))

(declare-fun lt!1977029 () Unit!143787)

(declare-fun Unit!143799 () Unit!143787)

(assert (=> b!4830999 (= lt!1977029 Unit!143799)))

(declare-fun lt!1977030 () Unit!143787)

(declare-fun Unit!143800 () Unit!143787)

(assert (=> b!4830999 (= lt!1977030 Unit!143800)))

(declare-fun lt!1977039 () Unit!143787)

(declare-fun addForallContainsKeyThenBeforeAdding!1004 (ListMap!6923 ListMap!6923 K!16752 V!16998) Unit!143787)

(assert (=> b!4830999 (= lt!1977039 (addForallContainsKeyThenBeforeAdding!1004 lt!1976902 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> b!4830999 (forall!12677 (toList!7551 lt!1976902) lambda!238052)))

(declare-fun lt!1977024 () Unit!143787)

(assert (=> b!4830999 (= lt!1977024 lt!1977039)))

(assert (=> b!4830999 (forall!12677 (toList!7551 lt!1976902) lambda!238052)))

(declare-fun lt!1977037 () Unit!143787)

(declare-fun Unit!143801 () Unit!143787)

(assert (=> b!4830999 (= lt!1977037 Unit!143801)))

(declare-fun res!2057631 () Bool)

(assert (=> b!4830999 (= res!2057631 (forall!12677 (_2!32470 (h!61499 (toList!7552 lm!2325))) lambda!238052))))

(assert (=> b!4830999 (=> (not res!2057631) (not e!3018810))))

(assert (=> b!4830999 e!3018810))

(declare-fun lt!1977035 () Unit!143787)

(declare-fun Unit!143802 () Unit!143787)

(assert (=> b!4830999 (= lt!1977035 Unit!143802)))

(assert (= (and d!1548686 c!823156) b!4830997))

(assert (= (and d!1548686 (not c!823156)) b!4830999))

(assert (= (and b!4830999 res!2057631) b!4830995))

(assert (= (or b!4830997 b!4830999) bm!336665))

(assert (= (or b!4830997 b!4830999) bm!336664))

(assert (= (or b!4830997 b!4830999) bm!336663))

(assert (= (and d!1548686 res!2057632) b!4830996))

(assert (= (and b!4830996 res!2057633) b!4830998))

(declare-fun m!5824194 () Bool)

(assert (=> d!1548686 m!5824194))

(assert (=> d!1548686 m!5824136))

(declare-fun m!5824196 () Bool)

(assert (=> b!4830995 m!5824196))

(declare-fun m!5824198 () Bool)

(assert (=> b!4830999 m!5824198))

(declare-fun m!5824200 () Bool)

(assert (=> b!4830999 m!5824200))

(declare-fun m!5824202 () Bool)

(assert (=> b!4830999 m!5824202))

(assert (=> b!4830999 m!5824196))

(declare-fun m!5824204 () Bool)

(assert (=> b!4830999 m!5824204))

(declare-fun m!5824206 () Bool)

(assert (=> b!4830999 m!5824206))

(declare-fun m!5824208 () Bool)

(assert (=> b!4830999 m!5824208))

(assert (=> b!4830999 m!5824196))

(declare-fun m!5824210 () Bool)

(assert (=> b!4830999 m!5824210))

(declare-fun m!5824212 () Bool)

(assert (=> b!4830999 m!5824212))

(assert (=> b!4830999 m!5824208))

(declare-fun m!5824214 () Bool)

(assert (=> b!4830999 m!5824214))

(declare-fun m!5824216 () Bool)

(assert (=> b!4830999 m!5824216))

(declare-fun m!5824218 () Bool)

(assert (=> bm!336664 m!5824218))

(declare-fun m!5824220 () Bool)

(assert (=> bm!336663 m!5824220))

(declare-fun m!5824222 () Bool)

(assert (=> b!4830996 m!5824222))

(declare-fun m!5824224 () Bool)

(assert (=> bm!336665 m!5824224))

(declare-fun m!5824226 () Bool)

(assert (=> b!4830998 m!5824226))

(assert (=> b!4830877 d!1548686))

(declare-fun d!1548704 () Bool)

(declare-fun res!2057636 () Bool)

(declare-fun e!3018813 () Bool)

(assert (=> d!1548704 (=> res!2057636 e!3018813)))

(assert (=> d!1548704 (= res!2057636 (and (is-Cons!55064 (_2!32470 (h!61499 (toList!7552 lm!2325)))) (= (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) key!5594)))))

(assert (=> d!1548704 (= (containsKey!4432 (_2!32470 (h!61499 (toList!7552 lm!2325))) key!5594) e!3018813)))

(declare-fun b!4831004 () Bool)

(declare-fun e!3018814 () Bool)

(assert (=> b!4831004 (= e!3018813 e!3018814)))

(declare-fun res!2057637 () Bool)

(assert (=> b!4831004 (=> (not res!2057637) (not e!3018814))))

(assert (=> b!4831004 (= res!2057637 (is-Cons!55064 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(declare-fun b!4831005 () Bool)

(assert (=> b!4831005 (= e!3018814 (containsKey!4432 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) key!5594))))

(assert (= (and d!1548704 (not res!2057636)) b!4831004))

(assert (= (and b!4831004 res!2057637) b!4831005))

(declare-fun m!5824228 () Bool)

(assert (=> b!4831005 m!5824228))

(assert (=> b!4830877 d!1548704))

(declare-fun d!1548706 () Bool)

(declare-fun res!2057644 () Bool)

(declare-fun e!3018821 () Bool)

(assert (=> d!1548706 (=> res!2057644 e!3018821)))

(assert (=> d!1548706 (= res!2057644 (is-Nil!55065 (toList!7552 lt!1976900)))))

(assert (=> d!1548706 (= (forall!12675 (toList!7552 lt!1976900) lambda!238009) e!3018821)))

(declare-fun b!4831013 () Bool)

(declare-fun e!3018823 () Bool)

(assert (=> b!4831013 (= e!3018821 e!3018823)))

(declare-fun res!2057646 () Bool)

(assert (=> b!4831013 (=> (not res!2057646) (not e!3018823))))

(declare-fun dynLambda!22246 (Int tuple2!58352) Bool)

(assert (=> b!4831013 (= res!2057646 (dynLambda!22246 lambda!238009 (h!61499 (toList!7552 lt!1976900))))))

(declare-fun b!4831014 () Bool)

(assert (=> b!4831014 (= e!3018823 (forall!12675 (t!362685 (toList!7552 lt!1976900)) lambda!238009))))

(assert (= (and d!1548706 (not res!2057644)) b!4831013))

(assert (= (and b!4831013 res!2057646) b!4831014))

(declare-fun b_lambda!190661 () Bool)

(assert (=> (not b_lambda!190661) (not b!4831013)))

(declare-fun m!5824234 () Bool)

(assert (=> b!4831013 m!5824234))

(declare-fun m!5824236 () Bool)

(assert (=> b!4831014 m!5824236))

(assert (=> b!4830877 d!1548706))

(declare-fun bs!1166074 () Bool)

(declare-fun d!1548710 () Bool)

(assert (= bs!1166074 (and d!1548710 start!501854)))

(declare-fun lambda!238056 () Int)

(assert (=> bs!1166074 (= lambda!238056 lambda!238009)))

(declare-fun bs!1166075 () Bool)

(assert (= bs!1166075 (and d!1548710 d!1548672)))

(assert (=> bs!1166075 (not (= lambda!238056 lambda!238017))))

(declare-fun lt!1977045 () ListMap!6923)

(assert (=> d!1548710 (invariantList!1827 (toList!7551 lt!1977045))))

(declare-fun e!3018826 () ListMap!6923)

(assert (=> d!1548710 (= lt!1977045 e!3018826)))

(declare-fun c!823159 () Bool)

(assert (=> d!1548710 (= c!823159 (is-Cons!55065 (t!362685 (toList!7552 lm!2325))))))

(assert (=> d!1548710 (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238056)))

(assert (=> d!1548710 (= (extractMap!2713 (t!362685 (toList!7552 lm!2325))) lt!1977045)))

(declare-fun b!4831019 () Bool)

(assert (=> b!4831019 (= e!3018826 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))))))

(declare-fun b!4831020 () Bool)

(assert (=> b!4831020 (= e!3018826 (ListMap!6924 Nil!55064))))

(assert (= (and d!1548710 c!823159) b!4831019))

(assert (= (and d!1548710 (not c!823159)) b!4831020))

(declare-fun m!5824242 () Bool)

(assert (=> d!1548710 m!5824242))

(declare-fun m!5824244 () Bool)

(assert (=> d!1548710 m!5824244))

(declare-fun m!5824246 () Bool)

(assert (=> b!4831019 m!5824246))

(assert (=> b!4831019 m!5824246))

(declare-fun m!5824248 () Bool)

(assert (=> b!4831019 m!5824248))

(assert (=> b!4830877 d!1548710))

(declare-fun bs!1166076 () Bool)

(declare-fun d!1548714 () Bool)

(assert (= bs!1166076 (and d!1548714 start!501854)))

(declare-fun lambda!238059 () Int)

(assert (=> bs!1166076 (= lambda!238059 lambda!238009)))

(declare-fun bs!1166077 () Bool)

(assert (= bs!1166077 (and d!1548714 d!1548672)))

(assert (=> bs!1166077 (not (= lambda!238059 lambda!238017))))

(declare-fun bs!1166078 () Bool)

(assert (= bs!1166078 (and d!1548714 d!1548710)))

(assert (=> bs!1166078 (= lambda!238059 lambda!238056)))

(assert (=> d!1548714 (not (containsKey!4432 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))) key!5594))))

(declare-fun lt!1977048 () Unit!143787)

(declare-fun choose!35252 (ListLongMap!6073 K!16752 (_ BitVec 64) Hashable!7305) Unit!143787)

(assert (=> d!1548714 (= lt!1977048 (choose!35252 lm!2325 key!5594 (_1!32470 (h!61499 (toList!7552 lm!2325))) hashF!1543))))

(assert (=> d!1548714 (forall!12675 (toList!7552 lm!2325) lambda!238059)))

(assert (=> d!1548714 (= (lemmaNotSameHashThenCannotContainKey!239 lm!2325 key!5594 (_1!32470 (h!61499 (toList!7552 lm!2325))) hashF!1543) lt!1977048)))

(declare-fun bs!1166079 () Bool)

(assert (= bs!1166079 d!1548714))

(assert (=> bs!1166079 m!5824054))

(assert (=> bs!1166079 m!5824054))

(assert (=> bs!1166079 m!5824056))

(declare-fun m!5824250 () Bool)

(assert (=> bs!1166079 m!5824250))

(declare-fun m!5824252 () Bool)

(assert (=> bs!1166079 m!5824252))

(assert (=> b!4830877 d!1548714))

(declare-fun d!1548716 () Bool)

(declare-fun e!3018840 () Bool)

(assert (=> d!1548716 e!3018840))

(declare-fun res!2057654 () Bool)

(assert (=> d!1548716 (=> res!2057654 e!3018840)))

(declare-fun e!3018841 () Bool)

(assert (=> d!1548716 (= res!2057654 e!3018841)))

(declare-fun res!2057653 () Bool)

(assert (=> d!1548716 (=> (not res!2057653) (not e!3018841))))

(declare-fun lt!1977066 () Bool)

(assert (=> d!1548716 (= res!2057653 (not lt!1977066))))

(declare-fun lt!1977071 () Bool)

(assert (=> d!1548716 (= lt!1977066 lt!1977071)))

(declare-fun lt!1977067 () Unit!143787)

(declare-fun e!3018839 () Unit!143787)

(assert (=> d!1548716 (= lt!1977067 e!3018839)))

(declare-fun c!823167 () Bool)

(assert (=> d!1548716 (= c!823167 lt!1977071)))

(declare-fun containsKey!4435 (List!55188 K!16752) Bool)

(assert (=> d!1548716 (= lt!1977071 (containsKey!4435 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(assert (=> d!1548716 (= (contains!18874 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902) key!5594) lt!1977066)))

(declare-fun b!4831039 () Bool)

(assert (=> b!4831039 false))

(declare-fun lt!1977068 () Unit!143787)

(declare-fun lt!1977065 () Unit!143787)

(assert (=> b!4831039 (= lt!1977068 lt!1977065)))

(assert (=> b!4831039 (containsKey!4435 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1173 (List!55188 K!16752) Unit!143787)

(assert (=> b!4831039 (= lt!1977065 (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(declare-fun e!3018843 () Unit!143787)

(declare-fun Unit!143803 () Unit!143787)

(assert (=> b!4831039 (= e!3018843 Unit!143803)))

(declare-fun e!3018844 () Bool)

(declare-fun b!4831040 () Bool)

(declare-datatypes ((List!55192 0))(
  ( (Nil!55068) (Cons!55068 (h!61502 K!16752) (t!362688 List!55192)) )
))
(declare-fun contains!18878 (List!55192 K!16752) Bool)

(declare-fun keys!20280 (ListMap!6923) List!55192)

(assert (=> b!4831040 (= e!3018844 (contains!18878 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(declare-fun b!4831041 () Bool)

(declare-fun e!3018842 () List!55192)

(assert (=> b!4831041 (= e!3018842 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))

(declare-fun b!4831042 () Bool)

(assert (=> b!4831042 (= e!3018841 (not (contains!18878 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594)))))

(declare-fun b!4831043 () Bool)

(declare-fun Unit!143804 () Unit!143787)

(assert (=> b!4831043 (= e!3018843 Unit!143804)))

(declare-fun b!4831044 () Bool)

(assert (=> b!4831044 (= e!3018840 e!3018844)))

(declare-fun res!2057655 () Bool)

(assert (=> b!4831044 (=> (not res!2057655) (not e!3018844))))

(declare-datatypes ((Option!13526 0))(
  ( (None!13525) (Some!13525 (v!49220 V!16998)) )
))
(declare-fun isDefined!10641 (Option!13526) Bool)

(declare-fun getValueByKey!2653 (List!55188 K!16752) Option!13526)

(assert (=> b!4831044 (= res!2057655 (isDefined!10641 (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594)))))

(declare-fun b!4831045 () Bool)

(declare-fun lt!1977069 () Unit!143787)

(assert (=> b!4831045 (= e!3018839 lt!1977069)))

(declare-fun lt!1977072 () Unit!143787)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (List!55188 K!16752) Unit!143787)

(assert (=> b!4831045 (= lt!1977072 (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(assert (=> b!4831045 (isDefined!10641 (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(declare-fun lt!1977070 () Unit!143787)

(assert (=> b!4831045 (= lt!1977070 lt!1977072)))

(declare-fun lemmaInListThenGetKeysListContains!1168 (List!55188 K!16752) Unit!143787)

(assert (=> b!4831045 (= lt!1977069 (lemmaInListThenGetKeysListContains!1168 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(declare-fun call!336673 () Bool)

(assert (=> b!4831045 call!336673))

(declare-fun b!4831046 () Bool)

(declare-fun getKeysList!1173 (List!55188) List!55192)

(assert (=> b!4831046 (= e!3018842 (getKeysList!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))

(declare-fun b!4831047 () Bool)

(assert (=> b!4831047 (= e!3018839 e!3018843)))

(declare-fun c!823166 () Bool)

(assert (=> b!4831047 (= c!823166 call!336673)))

(declare-fun bm!336668 () Bool)

(assert (=> bm!336668 (= call!336673 (contains!18878 e!3018842 key!5594))))

(declare-fun c!823168 () Bool)

(assert (=> bm!336668 (= c!823168 c!823167)))

(assert (= (and d!1548716 c!823167) b!4831045))

(assert (= (and d!1548716 (not c!823167)) b!4831047))

(assert (= (and b!4831047 c!823166) b!4831039))

(assert (= (and b!4831047 (not c!823166)) b!4831043))

(assert (= (or b!4831045 b!4831047) bm!336668))

(assert (= (and bm!336668 c!823168) b!4831046))

(assert (= (and bm!336668 (not c!823168)) b!4831041))

(assert (= (and d!1548716 res!2057653) b!4831042))

(assert (= (and d!1548716 (not res!2057654)) b!4831044))

(assert (= (and b!4831044 res!2057655) b!4831040))

(declare-fun m!5824254 () Bool)

(assert (=> b!4831039 m!5824254))

(declare-fun m!5824256 () Bool)

(assert (=> b!4831039 m!5824256))

(declare-fun m!5824258 () Bool)

(assert (=> bm!336668 m!5824258))

(assert (=> b!4831042 m!5824050))

(declare-fun m!5824260 () Bool)

(assert (=> b!4831042 m!5824260))

(assert (=> b!4831042 m!5824260))

(declare-fun m!5824262 () Bool)

(assert (=> b!4831042 m!5824262))

(declare-fun m!5824264 () Bool)

(assert (=> b!4831045 m!5824264))

(declare-fun m!5824266 () Bool)

(assert (=> b!4831045 m!5824266))

(assert (=> b!4831045 m!5824266))

(declare-fun m!5824268 () Bool)

(assert (=> b!4831045 m!5824268))

(declare-fun m!5824270 () Bool)

(assert (=> b!4831045 m!5824270))

(assert (=> b!4831044 m!5824266))

(assert (=> b!4831044 m!5824266))

(assert (=> b!4831044 m!5824268))

(assert (=> b!4831040 m!5824050))

(assert (=> b!4831040 m!5824260))

(assert (=> b!4831040 m!5824260))

(assert (=> b!4831040 m!5824262))

(assert (=> d!1548716 m!5824254))

(assert (=> b!4831041 m!5824050))

(assert (=> b!4831041 m!5824260))

(declare-fun m!5824272 () Bool)

(assert (=> b!4831046 m!5824272))

(assert (=> b!4830877 d!1548716))

(declare-fun d!1548718 () Bool)

(declare-fun get!18855 (Option!13525) List!55188)

(assert (=> d!1548718 (= (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))) (get!18855 (getValueByKey!2652 (toList!7552 lm!2325) (_1!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun bs!1166080 () Bool)

(assert (= bs!1166080 d!1548718))

(declare-fun m!5824274 () Bool)

(assert (=> bs!1166080 m!5824274))

(assert (=> bs!1166080 m!5824274))

(declare-fun m!5824276 () Bool)

(assert (=> bs!1166080 m!5824276))

(assert (=> b!4830877 d!1548718))

(declare-fun d!1548720 () Bool)

(declare-fun e!3018845 () Bool)

(assert (=> d!1548720 e!3018845))

(declare-fun res!2057656 () Bool)

(assert (=> d!1548720 (=> res!2057656 e!3018845)))

(declare-fun lt!1977074 () Bool)

(assert (=> d!1548720 (= res!2057656 (not lt!1977074))))

(declare-fun lt!1977073 () Bool)

(assert (=> d!1548720 (= lt!1977074 lt!1977073)))

(declare-fun lt!1977076 () Unit!143787)

(declare-fun e!3018846 () Unit!143787)

(assert (=> d!1548720 (= lt!1977076 e!3018846)))

(declare-fun c!823169 () Bool)

(assert (=> d!1548720 (= c!823169 lt!1977073)))

(assert (=> d!1548720 (= lt!1977073 (containsKey!4434 (toList!7552 lt!1976900) lt!1976898))))

(assert (=> d!1548720 (= (contains!18875 lt!1976900 lt!1976898) lt!1977074)))

(declare-fun b!4831048 () Bool)

(declare-fun lt!1977075 () Unit!143787)

(assert (=> b!4831048 (= e!3018846 lt!1977075)))

(assert (=> b!4831048 (= lt!1977075 (lemmaContainsKeyImpliesGetValueByKeyDefined!2437 (toList!7552 lt!1976900) lt!1976898))))

(assert (=> b!4831048 (isDefined!10640 (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898))))

(declare-fun b!4831049 () Bool)

(declare-fun Unit!143805 () Unit!143787)

(assert (=> b!4831049 (= e!3018846 Unit!143805)))

(declare-fun b!4831050 () Bool)

(assert (=> b!4831050 (= e!3018845 (isDefined!10640 (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898)))))

(assert (= (and d!1548720 c!823169) b!4831048))

(assert (= (and d!1548720 (not c!823169)) b!4831049))

(assert (= (and d!1548720 (not res!2057656)) b!4831050))

(declare-fun m!5824278 () Bool)

(assert (=> d!1548720 m!5824278))

(declare-fun m!5824280 () Bool)

(assert (=> b!4831048 m!5824280))

(declare-fun m!5824282 () Bool)

(assert (=> b!4831048 m!5824282))

(assert (=> b!4831048 m!5824282))

(declare-fun m!5824284 () Bool)

(assert (=> b!4831048 m!5824284))

(assert (=> b!4831050 m!5824282))

(assert (=> b!4831050 m!5824282))

(assert (=> b!4831050 m!5824284))

(assert (=> b!4830880 d!1548720))

(declare-fun d!1548722 () Bool)

(declare-fun res!2057657 () Bool)

(declare-fun e!3018847 () Bool)

(assert (=> d!1548722 (=> res!2057657 e!3018847)))

(assert (=> d!1548722 (= res!2057657 (is-Nil!55065 (toList!7552 lm!2325)))))

(assert (=> d!1548722 (= (forall!12675 (toList!7552 lm!2325) lambda!238009) e!3018847)))

(declare-fun b!4831051 () Bool)

(declare-fun e!3018848 () Bool)

(assert (=> b!4831051 (= e!3018847 e!3018848)))

(declare-fun res!2057658 () Bool)

(assert (=> b!4831051 (=> (not res!2057658) (not e!3018848))))

(assert (=> b!4831051 (= res!2057658 (dynLambda!22246 lambda!238009 (h!61499 (toList!7552 lm!2325))))))

(declare-fun b!4831052 () Bool)

(assert (=> b!4831052 (= e!3018848 (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238009))))

(assert (= (and d!1548722 (not res!2057657)) b!4831051))

(assert (= (and b!4831051 res!2057658) b!4831052))

(declare-fun b_lambda!190665 () Bool)

(assert (=> (not b_lambda!190665) (not b!4831051)))

(declare-fun m!5824286 () Bool)

(assert (=> b!4831051 m!5824286))

(declare-fun m!5824288 () Bool)

(assert (=> b!4831052 m!5824288))

(assert (=> start!501854 d!1548722))

(declare-fun d!1548724 () Bool)

(declare-fun isStrictlySorted!1002 (List!55189) Bool)

(assert (=> d!1548724 (= (inv!70653 lm!2325) (isStrictlySorted!1002 (toList!7552 lm!2325)))))

(declare-fun bs!1166081 () Bool)

(assert (= bs!1166081 d!1548724))

(declare-fun m!5824290 () Bool)

(assert (=> bs!1166081 m!5824290))

(assert (=> start!501854 d!1548724))

(declare-fun bs!1166082 () Bool)

(declare-fun d!1548726 () Bool)

(assert (= bs!1166082 (and d!1548726 start!501854)))

(declare-fun lambda!238060 () Int)

(assert (=> bs!1166082 (not (= lambda!238060 lambda!238009))))

(declare-fun bs!1166083 () Bool)

(assert (= bs!1166083 (and d!1548726 d!1548672)))

(assert (=> bs!1166083 (= lambda!238060 lambda!238017)))

(declare-fun bs!1166084 () Bool)

(assert (= bs!1166084 (and d!1548726 d!1548710)))

(assert (=> bs!1166084 (not (= lambda!238060 lambda!238056))))

(declare-fun bs!1166085 () Bool)

(assert (= bs!1166085 (and d!1548726 d!1548714)))

(assert (=> bs!1166085 (not (= lambda!238060 lambda!238059))))

(assert (=> d!1548726 true))

(assert (=> d!1548726 (= (allKeysSameHashInMap!2621 lt!1976900 hashF!1543) (forall!12675 (toList!7552 lt!1976900) lambda!238060))))

(declare-fun bs!1166086 () Bool)

(assert (= bs!1166086 d!1548726))

(declare-fun m!5824292 () Bool)

(assert (=> bs!1166086 m!5824292))

(assert (=> b!4830875 d!1548726))

(declare-fun d!1548728 () Bool)

(declare-fun lt!1977079 () Int)

(assert (=> d!1548728 (>= lt!1977079 0)))

(declare-fun e!3018851 () Int)

(assert (=> d!1548728 (= lt!1977079 e!3018851)))

(declare-fun c!823172 () Bool)

(assert (=> d!1548728 (= c!823172 (is-Nil!55065 (toList!7552 lt!1976900)))))

(assert (=> d!1548728 (= (size!36631 (toList!7552 lt!1976900)) lt!1977079)))

(declare-fun b!4831057 () Bool)

(assert (=> b!4831057 (= e!3018851 0)))

(declare-fun b!4831058 () Bool)

(assert (=> b!4831058 (= e!3018851 (+ 1 (size!36631 (t!362685 (toList!7552 lt!1976900)))))))

(assert (= (and d!1548728 c!823172) b!4831057))

(assert (= (and d!1548728 (not c!823172)) b!4831058))

(declare-fun m!5824294 () Bool)

(assert (=> b!4831058 m!5824294))

(assert (=> b!4830881 d!1548728))

(declare-fun d!1548730 () Bool)

(declare-fun lt!1977080 () Int)

(assert (=> d!1548730 (>= lt!1977080 0)))

(declare-fun e!3018852 () Int)

(assert (=> d!1548730 (= lt!1977080 e!3018852)))

(declare-fun c!823173 () Bool)

(assert (=> d!1548730 (= c!823173 (is-Nil!55065 (toList!7552 lm!2325)))))

(assert (=> d!1548730 (= (size!36631 (toList!7552 lm!2325)) lt!1977080)))

(declare-fun b!4831059 () Bool)

(assert (=> b!4831059 (= e!3018852 0)))

(declare-fun b!4831060 () Bool)

(assert (=> b!4831060 (= e!3018852 (+ 1 (size!36631 (t!362685 (toList!7552 lm!2325)))))))

(assert (= (and d!1548730 c!823173) b!4831059))

(assert (= (and d!1548730 (not c!823173)) b!4831060))

(declare-fun m!5824296 () Bool)

(assert (=> b!4831060 m!5824296))

(assert (=> b!4830881 d!1548730))

(declare-fun d!1548732 () Bool)

(declare-fun e!3018854 () Bool)

(assert (=> d!1548732 e!3018854))

(declare-fun res!2057660 () Bool)

(assert (=> d!1548732 (=> res!2057660 e!3018854)))

(declare-fun e!3018855 () Bool)

(assert (=> d!1548732 (= res!2057660 e!3018855)))

(declare-fun res!2057659 () Bool)

(assert (=> d!1548732 (=> (not res!2057659) (not e!3018855))))

(declare-fun lt!1977082 () Bool)

(assert (=> d!1548732 (= res!2057659 (not lt!1977082))))

(declare-fun lt!1977087 () Bool)

(assert (=> d!1548732 (= lt!1977082 lt!1977087)))

(declare-fun lt!1977083 () Unit!143787)

(declare-fun e!3018853 () Unit!143787)

(assert (=> d!1548732 (= lt!1977083 e!3018853)))

(declare-fun c!823175 () Bool)

(assert (=> d!1548732 (= c!823175 lt!1977087)))

(assert (=> d!1548732 (= lt!1977087 (containsKey!4435 (toList!7551 lt!1976902) key!5594))))

(assert (=> d!1548732 (= (contains!18874 lt!1976902 key!5594) lt!1977082)))

(declare-fun b!4831061 () Bool)

(assert (=> b!4831061 false))

(declare-fun lt!1977084 () Unit!143787)

(declare-fun lt!1977081 () Unit!143787)

(assert (=> b!4831061 (= lt!1977084 lt!1977081)))

(assert (=> b!4831061 (containsKey!4435 (toList!7551 lt!1976902) key!5594)))

(assert (=> b!4831061 (= lt!1977081 (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 lt!1976902) key!5594))))

(declare-fun e!3018857 () Unit!143787)

(declare-fun Unit!143806 () Unit!143787)

(assert (=> b!4831061 (= e!3018857 Unit!143806)))

(declare-fun b!4831062 () Bool)

(declare-fun e!3018858 () Bool)

(assert (=> b!4831062 (= e!3018858 (contains!18878 (keys!20280 lt!1976902) key!5594))))

(declare-fun b!4831063 () Bool)

(declare-fun e!3018856 () List!55192)

(assert (=> b!4831063 (= e!3018856 (keys!20280 lt!1976902))))

(declare-fun b!4831064 () Bool)

(assert (=> b!4831064 (= e!3018855 (not (contains!18878 (keys!20280 lt!1976902) key!5594)))))

(declare-fun b!4831065 () Bool)

(declare-fun Unit!143807 () Unit!143787)

(assert (=> b!4831065 (= e!3018857 Unit!143807)))

(declare-fun b!4831066 () Bool)

(assert (=> b!4831066 (= e!3018854 e!3018858)))

(declare-fun res!2057661 () Bool)

(assert (=> b!4831066 (=> (not res!2057661) (not e!3018858))))

(assert (=> b!4831066 (= res!2057661 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1976902) key!5594)))))

(declare-fun b!4831067 () Bool)

(declare-fun lt!1977085 () Unit!143787)

(assert (=> b!4831067 (= e!3018853 lt!1977085)))

(declare-fun lt!1977088 () Unit!143787)

(assert (=> b!4831067 (= lt!1977088 (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 lt!1976902) key!5594))))

(assert (=> b!4831067 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1976902) key!5594))))

(declare-fun lt!1977086 () Unit!143787)

(assert (=> b!4831067 (= lt!1977086 lt!1977088)))

(assert (=> b!4831067 (= lt!1977085 (lemmaInListThenGetKeysListContains!1168 (toList!7551 lt!1976902) key!5594))))

(declare-fun call!336674 () Bool)

(assert (=> b!4831067 call!336674))

(declare-fun b!4831068 () Bool)

(assert (=> b!4831068 (= e!3018856 (getKeysList!1173 (toList!7551 lt!1976902)))))

(declare-fun b!4831069 () Bool)

(assert (=> b!4831069 (= e!3018853 e!3018857)))

(declare-fun c!823174 () Bool)

(assert (=> b!4831069 (= c!823174 call!336674)))

(declare-fun bm!336669 () Bool)

(assert (=> bm!336669 (= call!336674 (contains!18878 e!3018856 key!5594))))

(declare-fun c!823176 () Bool)

(assert (=> bm!336669 (= c!823176 c!823175)))

(assert (= (and d!1548732 c!823175) b!4831067))

(assert (= (and d!1548732 (not c!823175)) b!4831069))

(assert (= (and b!4831069 c!823174) b!4831061))

(assert (= (and b!4831069 (not c!823174)) b!4831065))

(assert (= (or b!4831067 b!4831069) bm!336669))

(assert (= (and bm!336669 c!823176) b!4831068))

(assert (= (and bm!336669 (not c!823176)) b!4831063))

(assert (= (and d!1548732 res!2057659) b!4831064))

(assert (= (and d!1548732 (not res!2057660)) b!4831066))

(assert (= (and b!4831066 res!2057661) b!4831062))

(declare-fun m!5824298 () Bool)

(assert (=> b!4831061 m!5824298))

(declare-fun m!5824300 () Bool)

(assert (=> b!4831061 m!5824300))

(declare-fun m!5824302 () Bool)

(assert (=> bm!336669 m!5824302))

(declare-fun m!5824304 () Bool)

(assert (=> b!4831064 m!5824304))

(assert (=> b!4831064 m!5824304))

(declare-fun m!5824306 () Bool)

(assert (=> b!4831064 m!5824306))

(declare-fun m!5824308 () Bool)

(assert (=> b!4831067 m!5824308))

(declare-fun m!5824310 () Bool)

(assert (=> b!4831067 m!5824310))

(assert (=> b!4831067 m!5824310))

(declare-fun m!5824312 () Bool)

(assert (=> b!4831067 m!5824312))

(declare-fun m!5824314 () Bool)

(assert (=> b!4831067 m!5824314))

(assert (=> b!4831066 m!5824310))

(assert (=> b!4831066 m!5824310))

(assert (=> b!4831066 m!5824312))

(assert (=> b!4831062 m!5824304))

(assert (=> b!4831062 m!5824304))

(assert (=> b!4831062 m!5824306))

(assert (=> d!1548732 m!5824298))

(assert (=> b!4831063 m!5824304))

(declare-fun m!5824316 () Bool)

(assert (=> b!4831068 m!5824316))

(assert (=> b!4830874 d!1548732))

(declare-fun b!4831074 () Bool)

(declare-fun e!3018861 () Bool)

(declare-fun tp!1362901 () Bool)

(declare-fun tp!1362902 () Bool)

(assert (=> b!4831074 (= e!3018861 (and tp!1362901 tp!1362902))))

(assert (=> b!4830879 (= tp!1362893 e!3018861)))

(assert (= (and b!4830879 (is-Cons!55065 (toList!7552 lm!2325))) b!4831074))

(declare-fun b_lambda!190667 () Bool)

(assert (= b_lambda!190661 (or start!501854 b_lambda!190667)))

(declare-fun bs!1166087 () Bool)

(declare-fun d!1548734 () Bool)

(assert (= bs!1166087 (and d!1548734 start!501854)))

(assert (=> bs!1166087 (= (dynLambda!22246 lambda!238009 (h!61499 (toList!7552 lt!1976900))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lt!1976900)))))))

(declare-fun m!5824318 () Bool)

(assert (=> bs!1166087 m!5824318))

(assert (=> b!4831013 d!1548734))

(declare-fun b_lambda!190669 () Bool)

(assert (= b_lambda!190665 (or start!501854 b_lambda!190669)))

(declare-fun bs!1166088 () Bool)

(declare-fun d!1548736 () Bool)

(assert (= bs!1166088 (and d!1548736 start!501854)))

(assert (=> bs!1166088 (= (dynLambda!22246 lambda!238009 (h!61499 (toList!7552 lm!2325))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> bs!1166088 m!5824136))

(assert (=> b!4831051 d!1548736))

(push 1)

(assert (not d!1548710))

(assert (not b!4831050))

(assert (not bs!1166088))

(assert (not d!1548720))

(assert (not b!4830916))

(assert (not b!4830923))

(assert (not bm!336664))

(assert (not b!4831058))

(assert (not b!4831074))

(assert (not d!1548670))

(assert (not b!4830931))

(assert (not b_lambda!190669))

(assert tp_is_empty!34565)

(assert (not d!1548674))

(assert (not d!1548718))

(assert (not b!4831052))

(assert (not d!1548682))

(assert (not d!1548732))

(assert (not bm!336665))

(assert (not bm!336668))

(assert (not bm!336663))

(assert (not b!4831045))

(assert (not d!1548726))

(assert (not b!4831061))

(assert (not b!4831062))

(assert (not bm!336669))

(assert (not b!4831042))

(assert (not b!4830996))

(assert (not b!4831066))

(assert (not b!4830999))

(assert (not b!4831019))

(assert (not b!4831048))

(assert (not b!4830995))

(assert (not b!4831067))

(assert (not d!1548686))

(assert (not b!4831064))

(assert (not b!4831014))

(assert (not b!4831068))

(assert (not b!4831044))

(assert (not b!4831060))

(assert (not b!4830918))

(assert (not b!4831039))

(assert (not d!1548672))

(assert (not b!4831063))

(assert (not b!4831040))

(assert (not b_lambda!190667))

(assert (not b!4831041))

(assert (not bs!1166087))

(assert (not b!4831046))

(assert (not b!4830998))

(assert (not d!1548716))

(assert (not b!4831005))

(assert (not d!1548668))

(assert (not d!1548714))

(assert (not d!1548724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1548756 () Bool)

(declare-fun noDuplicatedKeys!493 (List!55188) Bool)

(assert (=> d!1548756 (= (invariantList!1827 (toList!7551 lt!1977022)) (noDuplicatedKeys!493 (toList!7551 lt!1977022)))))

(declare-fun bs!1166104 () Bool)

(assert (= bs!1166104 d!1548756))

(declare-fun m!5824396 () Bool)

(assert (=> bs!1166104 m!5824396))

(assert (=> b!4830998 d!1548756))

(declare-fun bs!1166105 () Bool)

(declare-fun b!4831122 () Bool)

(assert (= bs!1166105 (and b!4831122 b!4830997)))

(declare-fun lambda!238099 () Int)

(assert (=> bs!1166105 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1976902) (= lambda!238099 lambda!238050))))

(declare-fun bs!1166106 () Bool)

(assert (= bs!1166106 (and b!4831122 b!4830999)))

(assert (=> bs!1166106 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1976902) (= lambda!238099 lambda!238051))))

(assert (=> bs!1166106 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977026) (= lambda!238099 lambda!238052))))

(declare-fun bs!1166107 () Bool)

(assert (= bs!1166107 (and b!4831122 d!1548686)))

(assert (=> bs!1166107 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977022) (= lambda!238099 lambda!238053))))

(assert (=> b!4831122 true))

(declare-fun bs!1166108 () Bool)

(declare-fun b!4831124 () Bool)

(assert (= bs!1166108 (and b!4831124 b!4831122)))

(declare-fun lambda!238100 () Int)

(assert (=> bs!1166108 (= lambda!238100 lambda!238099)))

(declare-fun bs!1166109 () Bool)

(assert (= bs!1166109 (and b!4831124 d!1548686)))

(assert (=> bs!1166109 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977022) (= lambda!238100 lambda!238053))))

(declare-fun bs!1166110 () Bool)

(assert (= bs!1166110 (and b!4831124 b!4830999)))

(assert (=> bs!1166110 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1976902) (= lambda!238100 lambda!238051))))

(declare-fun bs!1166111 () Bool)

(assert (= bs!1166111 (and b!4831124 b!4830997)))

(assert (=> bs!1166111 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1976902) (= lambda!238100 lambda!238050))))

(assert (=> bs!1166110 (= (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977026) (= lambda!238100 lambda!238052))))

(assert (=> b!4831124 true))

(declare-fun lambda!238101 () Int)

(declare-fun lt!1977173 () ListMap!6923)

(assert (=> bs!1166109 (= (= lt!1977173 lt!1977022) (= lambda!238101 lambda!238053))))

(assert (=> bs!1166110 (= (= lt!1977173 lt!1976902) (= lambda!238101 lambda!238051))))

(assert (=> bs!1166108 (= (= lt!1977173 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238101 lambda!238099))))

(assert (=> b!4831124 (= (= lt!1977173 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238101 lambda!238100))))

(assert (=> bs!1166111 (= (= lt!1977173 lt!1976902) (= lambda!238101 lambda!238050))))

(assert (=> bs!1166110 (= (= lt!1977173 lt!1977026) (= lambda!238101 lambda!238052))))

(assert (=> b!4831124 true))

(declare-fun bs!1166112 () Bool)

(declare-fun d!1548758 () Bool)

(assert (= bs!1166112 (and d!1548758 b!4831124)))

(declare-fun lt!1977169 () ListMap!6923)

(declare-fun lambda!238102 () Int)

(assert (=> bs!1166112 (= (= lt!1977169 lt!1977173) (= lambda!238102 lambda!238101))))

(declare-fun bs!1166113 () Bool)

(assert (= bs!1166113 (and d!1548758 d!1548686)))

(assert (=> bs!1166113 (= (= lt!1977169 lt!1977022) (= lambda!238102 lambda!238053))))

(declare-fun bs!1166114 () Bool)

(assert (= bs!1166114 (and d!1548758 b!4830999)))

(assert (=> bs!1166114 (= (= lt!1977169 lt!1976902) (= lambda!238102 lambda!238051))))

(declare-fun bs!1166115 () Bool)

(assert (= bs!1166115 (and d!1548758 b!4831122)))

(assert (=> bs!1166115 (= (= lt!1977169 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238102 lambda!238099))))

(assert (=> bs!1166112 (= (= lt!1977169 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238102 lambda!238100))))

(declare-fun bs!1166116 () Bool)

(assert (= bs!1166116 (and d!1548758 b!4830997)))

(assert (=> bs!1166116 (= (= lt!1977169 lt!1976902) (= lambda!238102 lambda!238050))))

(assert (=> bs!1166114 (= (= lt!1977169 lt!1977026) (= lambda!238102 lambda!238052))))

(assert (=> d!1548758 true))

(declare-fun call!336685 () Bool)

(declare-fun bm!336680 () Bool)

(declare-fun c!823186 () Bool)

(assert (=> bm!336680 (= call!336685 (forall!12677 (ite c!823186 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))) (ite c!823186 lambda!238099 lambda!238101)))))

(declare-fun e!3018891 () Bool)

(assert (=> d!1548758 e!3018891))

(declare-fun res!2057683 () Bool)

(assert (=> d!1548758 (=> (not res!2057683) (not e!3018891))))

(assert (=> d!1548758 (= res!2057683 (forall!12677 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))) lambda!238102))))

(declare-fun e!3018892 () ListMap!6923)

(assert (=> d!1548758 (= lt!1977169 e!3018892)))

(assert (=> d!1548758 (= c!823186 (is-Nil!55064 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))

(assert (=> d!1548758 (noDuplicateKeys!2471 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))))

(assert (=> d!1548758 (= (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lt!1977169)))

(declare-fun b!4831120 () Bool)

(declare-fun e!3018893 () Bool)

(assert (=> b!4831120 (= e!3018893 (forall!12677 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lambda!238101))))

(declare-fun bm!336681 () Bool)

(declare-fun lt!1977166 () ListMap!6923)

(declare-fun call!336686 () Bool)

(assert (=> bm!336681 (= call!336686 (forall!12677 (ite c!823186 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (toList!7551 lt!1977166)) (ite c!823186 lambda!238099 lambda!238101)))))

(declare-fun b!4831121 () Bool)

(declare-fun res!2057684 () Bool)

(assert (=> b!4831121 (=> (not res!2057684) (not e!3018891))))

(assert (=> b!4831121 (= res!2057684 (forall!12677 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lambda!238102))))

(assert (=> b!4831122 (= e!3018892 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))))))

(declare-fun lt!1977180 () Unit!143787)

(declare-fun call!336687 () Unit!143787)

(assert (=> b!4831122 (= lt!1977180 call!336687)))

(assert (=> b!4831122 call!336685))

(declare-fun lt!1977175 () Unit!143787)

(assert (=> b!4831122 (= lt!1977175 lt!1977180)))

(assert (=> b!4831122 call!336686))

(declare-fun lt!1977178 () Unit!143787)

(declare-fun Unit!143825 () Unit!143787)

(assert (=> b!4831122 (= lt!1977178 Unit!143825)))

(declare-fun bm!336682 () Bool)

(assert (=> bm!336682 (= call!336687 (lemmaContainsAllItsOwnKeys!1005 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))))))

(declare-fun b!4831123 () Bool)

(assert (=> b!4831123 (= e!3018891 (invariantList!1827 (toList!7551 lt!1977169)))))

(assert (=> b!4831124 (= e!3018892 lt!1977173)))

(assert (=> b!4831124 (= lt!1977166 (+!2550 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))))))

(assert (=> b!4831124 (= lt!1977173 (addToMapMapFromBucket!1828 (t!362684 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))) (+!2550 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))))

(declare-fun lt!1977181 () Unit!143787)

(assert (=> b!4831124 (= lt!1977181 call!336687)))

(assert (=> b!4831124 (forall!12677 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lambda!238100)))

(declare-fun lt!1977185 () Unit!143787)

(assert (=> b!4831124 (= lt!1977185 lt!1977181)))

(assert (=> b!4831124 (forall!12677 (toList!7551 lt!1977166) lambda!238101)))

(declare-fun lt!1977167 () Unit!143787)

(declare-fun Unit!143826 () Unit!143787)

(assert (=> b!4831124 (= lt!1977167 Unit!143826)))

(assert (=> b!4831124 (forall!12677 (t!362684 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))) lambda!238101)))

(declare-fun lt!1977168 () Unit!143787)

(declare-fun Unit!143827 () Unit!143787)

(assert (=> b!4831124 (= lt!1977168 Unit!143827)))

(declare-fun lt!1977183 () Unit!143787)

(declare-fun Unit!143828 () Unit!143787)

(assert (=> b!4831124 (= lt!1977183 Unit!143828)))

(declare-fun lt!1977170 () Unit!143787)

(assert (=> b!4831124 (= lt!1977170 (forallContained!4412 (toList!7551 lt!1977166) lambda!238101 (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))))))

(assert (=> b!4831124 (contains!18874 lt!1977166 (_1!32469 (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977174 () Unit!143787)

(declare-fun Unit!143829 () Unit!143787)

(assert (=> b!4831124 (= lt!1977174 Unit!143829)))

(assert (=> b!4831124 (contains!18874 lt!1977173 (_1!32469 (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977179 () Unit!143787)

(declare-fun Unit!143830 () Unit!143787)

(assert (=> b!4831124 (= lt!1977179 Unit!143830)))

(assert (=> b!4831124 call!336685))

(declare-fun lt!1977172 () Unit!143787)

(declare-fun Unit!143831 () Unit!143787)

(assert (=> b!4831124 (= lt!1977172 Unit!143831)))

(assert (=> b!4831124 call!336686))

(declare-fun lt!1977176 () Unit!143787)

(declare-fun Unit!143832 () Unit!143787)

(assert (=> b!4831124 (= lt!1977176 Unit!143832)))

(declare-fun lt!1977177 () Unit!143787)

(declare-fun Unit!143833 () Unit!143787)

(assert (=> b!4831124 (= lt!1977177 Unit!143833)))

(declare-fun lt!1977186 () Unit!143787)

(assert (=> b!4831124 (= lt!1977186 (addForallContainsKeyThenBeforeAdding!1004 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977173 (_1!32469 (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))))

(assert (=> b!4831124 (forall!12677 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lambda!238101)))

(declare-fun lt!1977171 () Unit!143787)

(assert (=> b!4831124 (= lt!1977171 lt!1977186)))

(assert (=> b!4831124 (forall!12677 (toList!7551 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) lambda!238101)))

(declare-fun lt!1977184 () Unit!143787)

(declare-fun Unit!143834 () Unit!143787)

(assert (=> b!4831124 (= lt!1977184 Unit!143834)))

(declare-fun res!2057682 () Bool)

(assert (=> b!4831124 (= res!2057682 (forall!12677 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325)))) lambda!238101))))

(assert (=> b!4831124 (=> (not res!2057682) (not e!3018893))))

(assert (=> b!4831124 e!3018893))

(declare-fun lt!1977182 () Unit!143787)

(declare-fun Unit!143835 () Unit!143787)

(assert (=> b!4831124 (= lt!1977182 Unit!143835)))

(assert (= (and d!1548758 c!823186) b!4831122))

(assert (= (and d!1548758 (not c!823186)) b!4831124))

(assert (= (and b!4831124 res!2057682) b!4831120))

(assert (= (or b!4831122 b!4831124) bm!336682))

(assert (= (or b!4831122 b!4831124) bm!336681))

(assert (= (or b!4831122 b!4831124) bm!336680))

(assert (= (and d!1548758 res!2057683) b!4831121))

(assert (= (and b!4831121 res!2057684) b!4831123))

(declare-fun m!5824398 () Bool)

(assert (=> d!1548758 m!5824398))

(declare-fun m!5824400 () Bool)

(assert (=> d!1548758 m!5824400))

(declare-fun m!5824402 () Bool)

(assert (=> b!4831120 m!5824402))

(declare-fun m!5824404 () Bool)

(assert (=> b!4831124 m!5824404))

(declare-fun m!5824406 () Bool)

(assert (=> b!4831124 m!5824406))

(declare-fun m!5824408 () Bool)

(assert (=> b!4831124 m!5824408))

(assert (=> b!4831124 m!5824402))

(declare-fun m!5824410 () Bool)

(assert (=> b!4831124 m!5824410))

(assert (=> b!4831124 m!5824246))

(declare-fun m!5824412 () Bool)

(assert (=> b!4831124 m!5824412))

(assert (=> b!4831124 m!5824246))

(declare-fun m!5824414 () Bool)

(assert (=> b!4831124 m!5824414))

(assert (=> b!4831124 m!5824402))

(declare-fun m!5824416 () Bool)

(assert (=> b!4831124 m!5824416))

(declare-fun m!5824418 () Bool)

(assert (=> b!4831124 m!5824418))

(assert (=> b!4831124 m!5824414))

(declare-fun m!5824420 () Bool)

(assert (=> b!4831124 m!5824420))

(declare-fun m!5824422 () Bool)

(assert (=> b!4831124 m!5824422))

(declare-fun m!5824424 () Bool)

(assert (=> bm!336681 m!5824424))

(declare-fun m!5824426 () Bool)

(assert (=> bm!336680 m!5824426))

(declare-fun m!5824428 () Bool)

(assert (=> b!4831121 m!5824428))

(assert (=> bm!336682 m!5824246))

(declare-fun m!5824430 () Bool)

(assert (=> bm!336682 m!5824430))

(declare-fun m!5824432 () Bool)

(assert (=> b!4831123 m!5824432))

(assert (=> b!4831019 d!1548758))

(declare-fun bs!1166117 () Bool)

(declare-fun d!1548760 () Bool)

(assert (= bs!1166117 (and d!1548760 d!1548672)))

(declare-fun lambda!238103 () Int)

(assert (=> bs!1166117 (not (= lambda!238103 lambda!238017))))

(declare-fun bs!1166118 () Bool)

(assert (= bs!1166118 (and d!1548760 d!1548710)))

(assert (=> bs!1166118 (= lambda!238103 lambda!238056)))

(declare-fun bs!1166119 () Bool)

(assert (= bs!1166119 (and d!1548760 start!501854)))

(assert (=> bs!1166119 (= lambda!238103 lambda!238009)))

(declare-fun bs!1166120 () Bool)

(assert (= bs!1166120 (and d!1548760 d!1548714)))

(assert (=> bs!1166120 (= lambda!238103 lambda!238059)))

(declare-fun bs!1166121 () Bool)

(assert (= bs!1166121 (and d!1548760 d!1548726)))

(assert (=> bs!1166121 (not (= lambda!238103 lambda!238060))))

(declare-fun lt!1977187 () ListMap!6923)

(assert (=> d!1548760 (invariantList!1827 (toList!7551 lt!1977187))))

(declare-fun e!3018894 () ListMap!6923)

(assert (=> d!1548760 (= lt!1977187 e!3018894)))

(declare-fun c!823187 () Bool)

(assert (=> d!1548760 (= c!823187 (is-Cons!55065 (t!362685 (t!362685 (toList!7552 lm!2325)))))))

(assert (=> d!1548760 (forall!12675 (t!362685 (t!362685 (toList!7552 lm!2325))) lambda!238103)))

(assert (=> d!1548760 (= (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325)))) lt!1977187)))

(declare-fun b!4831125 () Bool)

(assert (=> b!4831125 (= e!3018894 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (t!362685 (t!362685 (toList!7552 lm!2325))))) (extractMap!2713 (t!362685 (t!362685 (t!362685 (toList!7552 lm!2325)))))))))

(declare-fun b!4831126 () Bool)

(assert (=> b!4831126 (= e!3018894 (ListMap!6924 Nil!55064))))

(assert (= (and d!1548760 c!823187) b!4831125))

(assert (= (and d!1548760 (not c!823187)) b!4831126))

(declare-fun m!5824434 () Bool)

(assert (=> d!1548760 m!5824434))

(declare-fun m!5824436 () Bool)

(assert (=> d!1548760 m!5824436))

(declare-fun m!5824438 () Bool)

(assert (=> b!4831125 m!5824438))

(assert (=> b!4831125 m!5824438))

(declare-fun m!5824440 () Bool)

(assert (=> b!4831125 m!5824440))

(assert (=> b!4831019 d!1548760))

(declare-fun d!1548762 () Bool)

(declare-fun lt!1977190 () Bool)

(declare-fun content!9834 (List!55192) (Set K!16752))

(assert (=> d!1548762 (= lt!1977190 (set.member key!5594 (content!9834 (keys!20280 lt!1976902))))))

(declare-fun e!3018900 () Bool)

(assert (=> d!1548762 (= lt!1977190 e!3018900)))

(declare-fun res!2057690 () Bool)

(assert (=> d!1548762 (=> (not res!2057690) (not e!3018900))))

(assert (=> d!1548762 (= res!2057690 (is-Cons!55068 (keys!20280 lt!1976902)))))

(assert (=> d!1548762 (= (contains!18878 (keys!20280 lt!1976902) key!5594) lt!1977190)))

(declare-fun b!4831131 () Bool)

(declare-fun e!3018899 () Bool)

(assert (=> b!4831131 (= e!3018900 e!3018899)))

(declare-fun res!2057689 () Bool)

(assert (=> b!4831131 (=> res!2057689 e!3018899)))

(assert (=> b!4831131 (= res!2057689 (= (h!61502 (keys!20280 lt!1976902)) key!5594))))

(declare-fun b!4831132 () Bool)

(assert (=> b!4831132 (= e!3018899 (contains!18878 (t!362688 (keys!20280 lt!1976902)) key!5594))))

(assert (= (and d!1548762 res!2057690) b!4831131))

(assert (= (and b!4831131 (not res!2057689)) b!4831132))

(assert (=> d!1548762 m!5824304))

(declare-fun m!5824442 () Bool)

(assert (=> d!1548762 m!5824442))

(declare-fun m!5824444 () Bool)

(assert (=> d!1548762 m!5824444))

(declare-fun m!5824446 () Bool)

(assert (=> b!4831132 m!5824446))

(assert (=> b!4831064 d!1548762))

(declare-fun b!4831140 () Bool)

(assert (=> b!4831140 true))

(declare-fun d!1548764 () Bool)

(declare-fun e!3018903 () Bool)

(assert (=> d!1548764 e!3018903))

(declare-fun res!2057698 () Bool)

(assert (=> d!1548764 (=> (not res!2057698) (not e!3018903))))

(declare-fun lt!1977193 () List!55192)

(declare-fun noDuplicate!975 (List!55192) Bool)

(assert (=> d!1548764 (= res!2057698 (noDuplicate!975 lt!1977193))))

(assert (=> d!1548764 (= lt!1977193 (getKeysList!1173 (toList!7551 lt!1976902)))))

(assert (=> d!1548764 (= (keys!20280 lt!1976902) lt!1977193)))

(declare-fun b!4831139 () Bool)

(declare-fun res!2057697 () Bool)

(assert (=> b!4831139 (=> (not res!2057697) (not e!3018903))))

(declare-fun length!806 (List!55192) Int)

(declare-fun length!807 (List!55188) Int)

(assert (=> b!4831139 (= res!2057697 (= (length!806 lt!1977193) (length!807 (toList!7551 lt!1976902))))))

(declare-fun res!2057699 () Bool)

(assert (=> b!4831140 (=> (not res!2057699) (not e!3018903))))

(declare-fun lambda!238108 () Int)

(declare-fun forall!12679 (List!55192 Int) Bool)

(assert (=> b!4831140 (= res!2057699 (forall!12679 lt!1977193 lambda!238108))))

(declare-fun lambda!238109 () Int)

(declare-fun b!4831141 () Bool)

(declare-fun map!12614 (List!55188 Int) List!55192)

(assert (=> b!4831141 (= e!3018903 (= (content!9834 lt!1977193) (content!9834 (map!12614 (toList!7551 lt!1976902) lambda!238109))))))

(assert (= (and d!1548764 res!2057698) b!4831139))

(assert (= (and b!4831139 res!2057697) b!4831140))

(assert (= (and b!4831140 res!2057699) b!4831141))

(declare-fun m!5824448 () Bool)

(assert (=> d!1548764 m!5824448))

(assert (=> d!1548764 m!5824316))

(declare-fun m!5824450 () Bool)

(assert (=> b!4831139 m!5824450))

(declare-fun m!5824452 () Bool)

(assert (=> b!4831139 m!5824452))

(declare-fun m!5824454 () Bool)

(assert (=> b!4831140 m!5824454))

(declare-fun m!5824456 () Bool)

(assert (=> b!4831141 m!5824456))

(declare-fun m!5824458 () Bool)

(assert (=> b!4831141 m!5824458))

(assert (=> b!4831141 m!5824458))

(declare-fun m!5824460 () Bool)

(assert (=> b!4831141 m!5824460))

(assert (=> b!4831064 d!1548764))

(declare-fun bs!1166122 () Bool)

(declare-fun b!4831145 () Bool)

(assert (= bs!1166122 (and b!4831145 b!4831140)))

(declare-fun lambda!238110 () Int)

(assert (=> bs!1166122 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (toList!7551 lt!1976902)) (= lambda!238110 lambda!238108))))

(assert (=> b!4831145 true))

(declare-fun bs!1166123 () Bool)

(declare-fun b!4831146 () Bool)

(assert (= bs!1166123 (and b!4831146 b!4831141)))

(declare-fun lambda!238111 () Int)

(assert (=> bs!1166123 (= lambda!238111 lambda!238109)))

(declare-fun d!1548766 () Bool)

(declare-fun e!3018904 () Bool)

(assert (=> d!1548766 e!3018904))

(declare-fun res!2057701 () Bool)

(assert (=> d!1548766 (=> (not res!2057701) (not e!3018904))))

(declare-fun lt!1977194 () List!55192)

(assert (=> d!1548766 (= res!2057701 (noDuplicate!975 lt!1977194))))

(assert (=> d!1548766 (= lt!1977194 (getKeysList!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))

(assert (=> d!1548766 (= (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) lt!1977194)))

(declare-fun b!4831144 () Bool)

(declare-fun res!2057700 () Bool)

(assert (=> b!4831144 (=> (not res!2057700) (not e!3018904))))

(assert (=> b!4831144 (= res!2057700 (= (length!806 lt!1977194) (length!807 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))))

(declare-fun res!2057702 () Bool)

(assert (=> b!4831145 (=> (not res!2057702) (not e!3018904))))

(assert (=> b!4831145 (= res!2057702 (forall!12679 lt!1977194 lambda!238110))))

(assert (=> b!4831146 (= e!3018904 (= (content!9834 lt!1977194) (content!9834 (map!12614 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) lambda!238111))))))

(assert (= (and d!1548766 res!2057701) b!4831144))

(assert (= (and b!4831144 res!2057700) b!4831145))

(assert (= (and b!4831145 res!2057702) b!4831146))

(declare-fun m!5824462 () Bool)

(assert (=> d!1548766 m!5824462))

(assert (=> d!1548766 m!5824272))

(declare-fun m!5824464 () Bool)

(assert (=> b!4831144 m!5824464))

(declare-fun m!5824466 () Bool)

(assert (=> b!4831144 m!5824466))

(declare-fun m!5824468 () Bool)

(assert (=> b!4831145 m!5824468))

(declare-fun m!5824470 () Bool)

(assert (=> b!4831146 m!5824470))

(declare-fun m!5824472 () Bool)

(assert (=> b!4831146 m!5824472))

(assert (=> b!4831146 m!5824472))

(declare-fun m!5824474 () Bool)

(assert (=> b!4831146 m!5824474))

(assert (=> b!4831041 d!1548766))

(declare-fun d!1548768 () Bool)

(declare-fun isEmpty!29686 (Option!13526) Bool)

(assert (=> d!1548768 (= (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1976902) key!5594)) (not (isEmpty!29686 (getValueByKey!2653 (toList!7551 lt!1976902) key!5594))))))

(declare-fun bs!1166124 () Bool)

(assert (= bs!1166124 d!1548768))

(assert (=> bs!1166124 m!5824310))

(declare-fun m!5824476 () Bool)

(assert (=> bs!1166124 m!5824476))

(assert (=> b!4831066 d!1548768))

(declare-fun b!4831158 () Bool)

(declare-fun e!3018910 () Option!13526)

(assert (=> b!4831158 (= e!3018910 None!13525)))

(declare-fun b!4831157 () Bool)

(assert (=> b!4831157 (= e!3018910 (getValueByKey!2653 (t!362684 (toList!7551 lt!1976902)) key!5594))))

(declare-fun b!4831155 () Bool)

(declare-fun e!3018909 () Option!13526)

(assert (=> b!4831155 (= e!3018909 (Some!13525 (_2!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun b!4831156 () Bool)

(assert (=> b!4831156 (= e!3018909 e!3018910)))

(declare-fun c!823193 () Bool)

(assert (=> b!4831156 (= c!823193 (and (is-Cons!55064 (toList!7551 lt!1976902)) (not (= (_1!32469 (h!61498 (toList!7551 lt!1976902))) key!5594))))))

(declare-fun d!1548770 () Bool)

(declare-fun c!823192 () Bool)

(assert (=> d!1548770 (= c!823192 (and (is-Cons!55064 (toList!7551 lt!1976902)) (= (_1!32469 (h!61498 (toList!7551 lt!1976902))) key!5594)))))

(assert (=> d!1548770 (= (getValueByKey!2653 (toList!7551 lt!1976902) key!5594) e!3018909)))

(assert (= (and d!1548770 c!823192) b!4831155))

(assert (= (and d!1548770 (not c!823192)) b!4831156))

(assert (= (and b!4831156 c!823193) b!4831157))

(assert (= (and b!4831156 (not c!823193)) b!4831158))

(declare-fun m!5824478 () Bool)

(assert (=> b!4831157 m!5824478))

(assert (=> b!4831066 d!1548770))

(declare-fun d!1548772 () Bool)

(declare-fun res!2057703 () Bool)

(declare-fun e!3018911 () Bool)

(assert (=> d!1548772 (=> res!2057703 e!3018911)))

(assert (=> d!1548772 (= res!2057703 (is-Nil!55065 (t!362685 (toList!7552 lm!2325))))))

(assert (=> d!1548772 (= (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238009) e!3018911)))

(declare-fun b!4831159 () Bool)

(declare-fun e!3018912 () Bool)

(assert (=> b!4831159 (= e!3018911 e!3018912)))

(declare-fun res!2057704 () Bool)

(assert (=> b!4831159 (=> (not res!2057704) (not e!3018912))))

(assert (=> b!4831159 (= res!2057704 (dynLambda!22246 lambda!238009 (h!61499 (t!362685 (toList!7552 lm!2325)))))))

(declare-fun b!4831160 () Bool)

(assert (=> b!4831160 (= e!3018912 (forall!12675 (t!362685 (t!362685 (toList!7552 lm!2325))) lambda!238009))))

(assert (= (and d!1548772 (not res!2057703)) b!4831159))

(assert (= (and b!4831159 res!2057704) b!4831160))

(declare-fun b_lambda!190675 () Bool)

(assert (=> (not b_lambda!190675) (not b!4831159)))

(declare-fun m!5824480 () Bool)

(assert (=> b!4831159 m!5824480))

(declare-fun m!5824482 () Bool)

(assert (=> b!4831160 m!5824482))

(assert (=> b!4831052 d!1548772))

(declare-fun d!1548774 () Bool)

(declare-fun res!2057705 () Bool)

(declare-fun e!3018913 () Bool)

(assert (=> d!1548774 (=> res!2057705 e!3018913)))

(assert (=> d!1548774 (= res!2057705 (is-Nil!55065 (t!362685 (toList!7552 lt!1976900))))))

(assert (=> d!1548774 (= (forall!12675 (t!362685 (toList!7552 lt!1976900)) lambda!238009) e!3018913)))

(declare-fun b!4831161 () Bool)

(declare-fun e!3018914 () Bool)

(assert (=> b!4831161 (= e!3018913 e!3018914)))

(declare-fun res!2057706 () Bool)

(assert (=> b!4831161 (=> (not res!2057706) (not e!3018914))))

(assert (=> b!4831161 (= res!2057706 (dynLambda!22246 lambda!238009 (h!61499 (t!362685 (toList!7552 lt!1976900)))))))

(declare-fun b!4831162 () Bool)

(assert (=> b!4831162 (= e!3018914 (forall!12675 (t!362685 (t!362685 (toList!7552 lt!1976900))) lambda!238009))))

(assert (= (and d!1548774 (not res!2057705)) b!4831161))

(assert (= (and b!4831161 res!2057706) b!4831162))

(declare-fun b_lambda!190677 () Bool)

(assert (=> (not b_lambda!190677) (not b!4831161)))

(declare-fun m!5824484 () Bool)

(assert (=> b!4831161 m!5824484))

(declare-fun m!5824486 () Bool)

(assert (=> b!4831162 m!5824486))

(assert (=> b!4831014 d!1548774))

(declare-fun d!1548776 () Bool)

(declare-fun lt!1977195 () Int)

(assert (=> d!1548776 (>= lt!1977195 0)))

(declare-fun e!3018915 () Int)

(assert (=> d!1548776 (= lt!1977195 e!3018915)))

(declare-fun c!823194 () Bool)

(assert (=> d!1548776 (= c!823194 (is-Nil!55065 (t!362685 (toList!7552 lt!1976900))))))

(assert (=> d!1548776 (= (size!36631 (t!362685 (toList!7552 lt!1976900))) lt!1977195)))

(declare-fun b!4831163 () Bool)

(assert (=> b!4831163 (= e!3018915 0)))

(declare-fun b!4831164 () Bool)

(assert (=> b!4831164 (= e!3018915 (+ 1 (size!36631 (t!362685 (t!362685 (toList!7552 lt!1976900))))))))

(assert (= (and d!1548776 c!823194) b!4831163))

(assert (= (and d!1548776 (not c!823194)) b!4831164))

(declare-fun m!5824488 () Bool)

(assert (=> b!4831164 m!5824488))

(assert (=> b!4831058 d!1548776))

(declare-fun bs!1166125 () Bool)

(declare-fun b!4831187 () Bool)

(assert (= bs!1166125 (and b!4831187 b!4831140)))

(declare-fun lambda!238120 () Int)

(assert (=> bs!1166125 (= (= (t!362684 (toList!7551 lt!1976902)) (toList!7551 lt!1976902)) (= lambda!238120 lambda!238108))))

(declare-fun bs!1166126 () Bool)

(assert (= bs!1166126 (and b!4831187 b!4831145)))

(assert (=> bs!1166126 (= (= (t!362684 (toList!7551 lt!1976902)) (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= lambda!238120 lambda!238110))))

(assert (=> b!4831187 true))

(declare-fun bs!1166127 () Bool)

(declare-fun b!4831185 () Bool)

(assert (= bs!1166127 (and b!4831185 b!4831140)))

(declare-fun lambda!238121 () Int)

(assert (=> bs!1166127 (= (= (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902))) (toList!7551 lt!1976902)) (= lambda!238121 lambda!238108))))

(declare-fun bs!1166128 () Bool)

(assert (= bs!1166128 (and b!4831185 b!4831145)))

(assert (=> bs!1166128 (= (= (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902))) (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= lambda!238121 lambda!238110))))

(declare-fun bs!1166129 () Bool)

(assert (= bs!1166129 (and b!4831185 b!4831187)))

(assert (=> bs!1166129 (= (= (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902))) (t!362684 (toList!7551 lt!1976902))) (= lambda!238121 lambda!238120))))

(assert (=> b!4831185 true))

(declare-fun bs!1166130 () Bool)

(declare-fun b!4831191 () Bool)

(assert (= bs!1166130 (and b!4831191 b!4831140)))

(declare-fun lambda!238122 () Int)

(assert (=> bs!1166130 (= lambda!238122 lambda!238108)))

(declare-fun bs!1166131 () Bool)

(assert (= bs!1166131 (and b!4831191 b!4831145)))

(assert (=> bs!1166131 (= (= (toList!7551 lt!1976902) (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= lambda!238122 lambda!238110))))

(declare-fun bs!1166132 () Bool)

(assert (= bs!1166132 (and b!4831191 b!4831187)))

(assert (=> bs!1166132 (= (= (toList!7551 lt!1976902) (t!362684 (toList!7551 lt!1976902))) (= lambda!238122 lambda!238120))))

(declare-fun bs!1166133 () Bool)

(assert (= bs!1166133 (and b!4831191 b!4831185)))

(assert (=> bs!1166133 (= (= (toList!7551 lt!1976902) (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902)))) (= lambda!238122 lambda!238121))))

(assert (=> b!4831191 true))

(declare-fun bs!1166134 () Bool)

(declare-fun b!4831183 () Bool)

(assert (= bs!1166134 (and b!4831183 b!4831141)))

(declare-fun lambda!238123 () Int)

(assert (=> bs!1166134 (= lambda!238123 lambda!238109)))

(declare-fun bs!1166135 () Bool)

(assert (= bs!1166135 (and b!4831183 b!4831146)))

(assert (=> bs!1166135 (= lambda!238123 lambda!238111)))

(declare-fun lt!1977215 () List!55192)

(declare-fun e!3018926 () Bool)

(assert (=> b!4831183 (= e!3018926 (= (content!9834 lt!1977215) (content!9834 (map!12614 (toList!7551 lt!1976902) lambda!238123))))))

(declare-fun b!4831184 () Bool)

(declare-fun e!3018924 () List!55192)

(assert (=> b!4831184 (= e!3018924 Nil!55068)))

(assert (=> b!4831185 (= e!3018924 (Cons!55068 (_1!32469 (h!61498 (toList!7551 lt!1976902))) (getKeysList!1173 (t!362684 (toList!7551 lt!1976902)))))))

(declare-fun c!823203 () Bool)

(assert (=> b!4831185 (= c!823203 (containsKey!4435 (t!362684 (toList!7551 lt!1976902)) (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun lt!1977211 () Unit!143787)

(declare-fun e!3018925 () Unit!143787)

(assert (=> b!4831185 (= lt!1977211 e!3018925)))

(declare-fun c!823202 () Bool)

(assert (=> b!4831185 (= c!823202 (contains!18878 (getKeysList!1173 (t!362684 (toList!7551 lt!1976902))) (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun lt!1977216 () Unit!143787)

(declare-fun e!3018927 () Unit!143787)

(assert (=> b!4831185 (= lt!1977216 e!3018927)))

(declare-fun lt!1977210 () List!55192)

(assert (=> b!4831185 (= lt!1977210 (getKeysList!1173 (t!362684 (toList!7551 lt!1976902))))))

(declare-fun lt!1977213 () Unit!143787)

(declare-fun lemmaForallContainsAddHeadPreserves!389 (List!55188 List!55192 tuple2!58350) Unit!143787)

(assert (=> b!4831185 (= lt!1977213 (lemmaForallContainsAddHeadPreserves!389 (t!362684 (toList!7551 lt!1976902)) lt!1977210 (h!61498 (toList!7551 lt!1976902))))))

(assert (=> b!4831185 (forall!12679 lt!1977210 lambda!238121)))

(declare-fun lt!1977214 () Unit!143787)

(assert (=> b!4831185 (= lt!1977214 lt!1977213)))

(declare-fun b!4831186 () Bool)

(declare-fun Unit!143836 () Unit!143787)

(assert (=> b!4831186 (= e!3018927 Unit!143836)))

(assert (=> b!4831187 false))

(declare-fun lt!1977212 () Unit!143787)

(declare-fun forallContained!4414 (List!55192 Int K!16752) Unit!143787)

(assert (=> b!4831187 (= lt!1977212 (forallContained!4414 (getKeysList!1173 (t!362684 (toList!7551 lt!1976902))) lambda!238120 (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun Unit!143837 () Unit!143787)

(assert (=> b!4831187 (= e!3018927 Unit!143837)))

(declare-fun b!4831189 () Bool)

(assert (=> b!4831189 false))

(declare-fun Unit!143838 () Unit!143787)

(assert (=> b!4831189 (= e!3018925 Unit!143838)))

(declare-fun b!4831190 () Bool)

(declare-fun Unit!143839 () Unit!143787)

(assert (=> b!4831190 (= e!3018925 Unit!143839)))

(declare-fun res!2057713 () Bool)

(assert (=> b!4831191 (=> (not res!2057713) (not e!3018926))))

(assert (=> b!4831191 (= res!2057713 (forall!12679 lt!1977215 lambda!238122))))

(declare-fun b!4831188 () Bool)

(declare-fun res!2057715 () Bool)

(assert (=> b!4831188 (=> (not res!2057715) (not e!3018926))))

(assert (=> b!4831188 (= res!2057715 (= (length!806 lt!1977215) (length!807 (toList!7551 lt!1976902))))))

(declare-fun d!1548778 () Bool)

(assert (=> d!1548778 e!3018926))

(declare-fun res!2057714 () Bool)

(assert (=> d!1548778 (=> (not res!2057714) (not e!3018926))))

(assert (=> d!1548778 (= res!2057714 (noDuplicate!975 lt!1977215))))

(assert (=> d!1548778 (= lt!1977215 e!3018924)))

(declare-fun c!823201 () Bool)

(assert (=> d!1548778 (= c!823201 (is-Cons!55064 (toList!7551 lt!1976902)))))

(assert (=> d!1548778 (invariantList!1827 (toList!7551 lt!1976902))))

(assert (=> d!1548778 (= (getKeysList!1173 (toList!7551 lt!1976902)) lt!1977215)))

(assert (= (and d!1548778 c!823201) b!4831185))

(assert (= (and d!1548778 (not c!823201)) b!4831184))

(assert (= (and b!4831185 c!823203) b!4831189))

(assert (= (and b!4831185 (not c!823203)) b!4831190))

(assert (= (and b!4831185 c!823202) b!4831187))

(assert (= (and b!4831185 (not c!823202)) b!4831186))

(assert (= (and d!1548778 res!2057714) b!4831188))

(assert (= (and b!4831188 res!2057715) b!4831191))

(assert (= (and b!4831191 res!2057713) b!4831183))

(declare-fun m!5824490 () Bool)

(assert (=> b!4831183 m!5824490))

(declare-fun m!5824492 () Bool)

(assert (=> b!4831183 m!5824492))

(assert (=> b!4831183 m!5824492))

(declare-fun m!5824494 () Bool)

(assert (=> b!4831183 m!5824494))

(declare-fun m!5824496 () Bool)

(assert (=> d!1548778 m!5824496))

(declare-fun m!5824498 () Bool)

(assert (=> d!1548778 m!5824498))

(declare-fun m!5824500 () Bool)

(assert (=> b!4831191 m!5824500))

(declare-fun m!5824502 () Bool)

(assert (=> b!4831188 m!5824502))

(assert (=> b!4831188 m!5824452))

(declare-fun m!5824504 () Bool)

(assert (=> b!4831187 m!5824504))

(assert (=> b!4831187 m!5824504))

(declare-fun m!5824506 () Bool)

(assert (=> b!4831187 m!5824506))

(assert (=> b!4831185 m!5824504))

(declare-fun m!5824508 () Bool)

(assert (=> b!4831185 m!5824508))

(declare-fun m!5824510 () Bool)

(assert (=> b!4831185 m!5824510))

(declare-fun m!5824512 () Bool)

(assert (=> b!4831185 m!5824512))

(declare-fun m!5824514 () Bool)

(assert (=> b!4831185 m!5824514))

(assert (=> b!4831185 m!5824504))

(assert (=> b!4831068 d!1548778))

(declare-fun d!1548780 () Bool)

(assert (=> d!1548780 (isDefined!10641 (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(declare-fun lt!1977219 () Unit!143787)

(declare-fun choose!35255 (List!55188 K!16752) Unit!143787)

(assert (=> d!1548780 (= lt!1977219 (choose!35255 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(assert (=> d!1548780 (invariantList!1827 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))

(assert (=> d!1548780 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) lt!1977219)))

(declare-fun bs!1166136 () Bool)

(assert (= bs!1166136 d!1548780))

(assert (=> bs!1166136 m!5824266))

(assert (=> bs!1166136 m!5824266))

(assert (=> bs!1166136 m!5824268))

(declare-fun m!5824516 () Bool)

(assert (=> bs!1166136 m!5824516))

(declare-fun m!5824518 () Bool)

(assert (=> bs!1166136 m!5824518))

(assert (=> b!4831045 d!1548780))

(declare-fun d!1548782 () Bool)

(assert (=> d!1548782 (= (isDefined!10641 (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594)) (not (isEmpty!29686 (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))))

(declare-fun bs!1166137 () Bool)

(assert (= bs!1166137 d!1548782))

(assert (=> bs!1166137 m!5824266))

(declare-fun m!5824520 () Bool)

(assert (=> bs!1166137 m!5824520))

(assert (=> b!4831045 d!1548782))

(declare-fun b!4831197 () Bool)

(declare-fun e!3018929 () Option!13526)

(assert (=> b!4831197 (= e!3018929 None!13525)))

(declare-fun b!4831196 () Bool)

(assert (=> b!4831196 (= e!3018929 (getValueByKey!2653 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) key!5594))))

(declare-fun b!4831194 () Bool)

(declare-fun e!3018928 () Option!13526)

(assert (=> b!4831194 (= e!3018928 (Some!13525 (_2!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))))

(declare-fun b!4831195 () Bool)

(assert (=> b!4831195 (= e!3018928 e!3018929)))

(declare-fun c!823205 () Bool)

(assert (=> b!4831195 (= c!823205 (and (is-Cons!55064 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (not (= (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) key!5594))))))

(declare-fun d!1548784 () Bool)

(declare-fun c!823204 () Bool)

(assert (=> d!1548784 (= c!823204 (and (is-Cons!55064 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) key!5594)))))

(assert (=> d!1548784 (= (getValueByKey!2653 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) e!3018928)))

(assert (= (and d!1548784 c!823204) b!4831194))

(assert (= (and d!1548784 (not c!823204)) b!4831195))

(assert (= (and b!4831195 c!823205) b!4831196))

(assert (= (and b!4831195 (not c!823205)) b!4831197))

(declare-fun m!5824522 () Bool)

(assert (=> b!4831196 m!5824522))

(assert (=> b!4831045 d!1548784))

(declare-fun d!1548786 () Bool)

(assert (=> d!1548786 (contains!18878 (getKeysList!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) key!5594)))

(declare-fun lt!1977222 () Unit!143787)

(declare-fun choose!35256 (List!55188 K!16752) Unit!143787)

(assert (=> d!1548786 (= lt!1977222 (choose!35256 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(assert (=> d!1548786 (invariantList!1827 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))

(assert (=> d!1548786 (= (lemmaInListThenGetKeysListContains!1168 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) lt!1977222)))

(declare-fun bs!1166138 () Bool)

(assert (= bs!1166138 d!1548786))

(assert (=> bs!1166138 m!5824272))

(assert (=> bs!1166138 m!5824272))

(declare-fun m!5824524 () Bool)

(assert (=> bs!1166138 m!5824524))

(declare-fun m!5824526 () Bool)

(assert (=> bs!1166138 m!5824526))

(assert (=> bs!1166138 m!5824518))

(assert (=> b!4831045 d!1548786))

(declare-fun d!1548788 () Bool)

(declare-fun res!2057720 () Bool)

(declare-fun e!3018934 () Bool)

(assert (=> d!1548788 (=> res!2057720 e!3018934)))

(assert (=> d!1548788 (= res!2057720 (and (is-Cons!55064 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) key!5594)))))

(assert (=> d!1548788 (= (containsKey!4435 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) e!3018934)))

(declare-fun b!4831202 () Bool)

(declare-fun e!3018935 () Bool)

(assert (=> b!4831202 (= e!3018934 e!3018935)))

(declare-fun res!2057721 () Bool)

(assert (=> b!4831202 (=> (not res!2057721) (not e!3018935))))

(assert (=> b!4831202 (= res!2057721 (is-Cons!55064 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))

(declare-fun b!4831203 () Bool)

(assert (=> b!4831203 (= e!3018935 (containsKey!4435 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) key!5594))))

(assert (= (and d!1548788 (not res!2057720)) b!4831202))

(assert (= (and b!4831202 res!2057721) b!4831203))

(declare-fun m!5824528 () Bool)

(assert (=> b!4831203 m!5824528))

(assert (=> d!1548716 d!1548788))

(declare-fun d!1548790 () Bool)

(declare-fun res!2057726 () Bool)

(declare-fun e!3018940 () Bool)

(assert (=> d!1548790 (=> res!2057726 e!3018940)))

(assert (=> d!1548790 (= res!2057726 (is-Nil!55064 (ite c!823156 (toList!7551 lt!1976902) (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548790 (= (forall!12677 (ite c!823156 (toList!7551 lt!1976902) (_2!32470 (h!61499 (toList!7552 lm!2325)))) (ite c!823156 lambda!238050 lambda!238052)) e!3018940)))

(declare-fun b!4831208 () Bool)

(declare-fun e!3018941 () Bool)

(assert (=> b!4831208 (= e!3018940 e!3018941)))

(declare-fun res!2057727 () Bool)

(assert (=> b!4831208 (=> (not res!2057727) (not e!3018941))))

(declare-fun dynLambda!22248 (Int tuple2!58350) Bool)

(assert (=> b!4831208 (= res!2057727 (dynLambda!22248 (ite c!823156 lambda!238050 lambda!238052) (h!61498 (ite c!823156 (toList!7551 lt!1976902) (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831209 () Bool)

(assert (=> b!4831209 (= e!3018941 (forall!12677 (t!362684 (ite c!823156 (toList!7551 lt!1976902) (_2!32470 (h!61499 (toList!7552 lm!2325))))) (ite c!823156 lambda!238050 lambda!238052)))))

(assert (= (and d!1548790 (not res!2057726)) b!4831208))

(assert (= (and b!4831208 res!2057727) b!4831209))

(declare-fun b_lambda!190679 () Bool)

(assert (=> (not b_lambda!190679) (not b!4831208)))

(declare-fun m!5824530 () Bool)

(assert (=> b!4831208 m!5824530))

(declare-fun m!5824532 () Bool)

(assert (=> b!4831209 m!5824532))

(assert (=> bm!336663 d!1548790))

(declare-fun d!1548792 () Bool)

(declare-fun res!2057728 () Bool)

(declare-fun e!3018942 () Bool)

(assert (=> d!1548792 (=> res!2057728 e!3018942)))

(assert (=> d!1548792 (= res!2057728 (is-Nil!55064 (ite c!823156 (toList!7551 lt!1976902) (toList!7551 lt!1977019))))))

(assert (=> d!1548792 (= (forall!12677 (ite c!823156 (toList!7551 lt!1976902) (toList!7551 lt!1977019)) (ite c!823156 lambda!238050 lambda!238052)) e!3018942)))

(declare-fun b!4831210 () Bool)

(declare-fun e!3018943 () Bool)

(assert (=> b!4831210 (= e!3018942 e!3018943)))

(declare-fun res!2057729 () Bool)

(assert (=> b!4831210 (=> (not res!2057729) (not e!3018943))))

(assert (=> b!4831210 (= res!2057729 (dynLambda!22248 (ite c!823156 lambda!238050 lambda!238052) (h!61498 (ite c!823156 (toList!7551 lt!1976902) (toList!7551 lt!1977019)))))))

(declare-fun b!4831211 () Bool)

(assert (=> b!4831211 (= e!3018943 (forall!12677 (t!362684 (ite c!823156 (toList!7551 lt!1976902) (toList!7551 lt!1977019))) (ite c!823156 lambda!238050 lambda!238052)))))

(assert (= (and d!1548792 (not res!2057728)) b!4831210))

(assert (= (and b!4831210 res!2057729) b!4831211))

(declare-fun b_lambda!190681 () Bool)

(assert (=> (not b_lambda!190681) (not b!4831210)))

(declare-fun m!5824534 () Bool)

(assert (=> b!4831210 m!5824534))

(declare-fun m!5824536 () Bool)

(assert (=> b!4831211 m!5824536))

(assert (=> bm!336664 d!1548792))

(declare-fun d!1548794 () Bool)

(declare-fun res!2057730 () Bool)

(declare-fun e!3018944 () Bool)

(assert (=> d!1548794 (=> res!2057730 e!3018944)))

(assert (=> d!1548794 (= res!2057730 (and (is-Cons!55064 (toList!7551 lt!1976902)) (= (_1!32469 (h!61498 (toList!7551 lt!1976902))) key!5594)))))

(assert (=> d!1548794 (= (containsKey!4435 (toList!7551 lt!1976902) key!5594) e!3018944)))

(declare-fun b!4831212 () Bool)

(declare-fun e!3018945 () Bool)

(assert (=> b!4831212 (= e!3018944 e!3018945)))

(declare-fun res!2057731 () Bool)

(assert (=> b!4831212 (=> (not res!2057731) (not e!3018945))))

(assert (=> b!4831212 (= res!2057731 (is-Cons!55064 (toList!7551 lt!1976902)))))

(declare-fun b!4831213 () Bool)

(assert (=> b!4831213 (= e!3018945 (containsKey!4435 (t!362684 (toList!7551 lt!1976902)) key!5594))))

(assert (= (and d!1548794 (not res!2057730)) b!4831212))

(assert (= (and b!4831212 res!2057731) b!4831213))

(declare-fun m!5824538 () Bool)

(assert (=> b!4831213 m!5824538))

(assert (=> d!1548732 d!1548794))

(assert (=> b!4831062 d!1548762))

(assert (=> b!4831062 d!1548764))

(assert (=> b!4831039 d!1548788))

(declare-fun d!1548796 () Bool)

(assert (=> d!1548796 (containsKey!4435 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594)))

(declare-fun lt!1977225 () Unit!143787)

(declare-fun choose!35257 (List!55188 K!16752) Unit!143787)

(assert (=> d!1548796 (= lt!1977225 (choose!35257 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594))))

(assert (=> d!1548796 (invariantList!1827 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))

(assert (=> d!1548796 (= (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) lt!1977225)))

(declare-fun bs!1166139 () Bool)

(assert (= bs!1166139 d!1548796))

(assert (=> bs!1166139 m!5824254))

(declare-fun m!5824540 () Bool)

(assert (=> bs!1166139 m!5824540))

(assert (=> bs!1166139 m!5824518))

(assert (=> b!4831039 d!1548796))

(declare-fun d!1548798 () Bool)

(declare-fun res!2057736 () Bool)

(declare-fun e!3018950 () Bool)

(assert (=> d!1548798 (=> res!2057736 e!3018950)))

(assert (=> d!1548798 (= res!2057736 (and (is-Cons!55065 (toList!7552 lt!1976900)) (= (_1!32470 (h!61499 (toList!7552 lt!1976900))) lt!1976898)))))

(assert (=> d!1548798 (= (containsKey!4434 (toList!7552 lt!1976900) lt!1976898) e!3018950)))

(declare-fun b!4831218 () Bool)

(declare-fun e!3018951 () Bool)

(assert (=> b!4831218 (= e!3018950 e!3018951)))

(declare-fun res!2057737 () Bool)

(assert (=> b!4831218 (=> (not res!2057737) (not e!3018951))))

(assert (=> b!4831218 (= res!2057737 (and (or (not (is-Cons!55065 (toList!7552 lt!1976900))) (bvsle (_1!32470 (h!61499 (toList!7552 lt!1976900))) lt!1976898)) (is-Cons!55065 (toList!7552 lt!1976900)) (bvslt (_1!32470 (h!61499 (toList!7552 lt!1976900))) lt!1976898)))))

(declare-fun b!4831219 () Bool)

(assert (=> b!4831219 (= e!3018951 (containsKey!4434 (t!362685 (toList!7552 lt!1976900)) lt!1976898))))

(assert (= (and d!1548798 (not res!2057736)) b!4831218))

(assert (= (and b!4831218 res!2057737) b!4831219))

(declare-fun m!5824542 () Bool)

(assert (=> b!4831219 m!5824542))

(assert (=> d!1548720 d!1548798))

(declare-fun d!1548800 () Bool)

(declare-fun res!2057742 () Bool)

(declare-fun e!3018956 () Bool)

(assert (=> d!1548800 (=> res!2057742 e!3018956)))

(assert (=> d!1548800 (= res!2057742 (not (is-Cons!55064 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548800 (= (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lm!2325)))) e!3018956)))

(declare-fun b!4831224 () Bool)

(declare-fun e!3018957 () Bool)

(assert (=> b!4831224 (= e!3018956 e!3018957)))

(declare-fun res!2057743 () Bool)

(assert (=> b!4831224 (=> (not res!2057743) (not e!3018957))))

(assert (=> b!4831224 (= res!2057743 (not (containsKey!4432 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831225 () Bool)

(assert (=> b!4831225 (= e!3018957 (noDuplicateKeys!2471 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (= (and d!1548800 (not res!2057742)) b!4831224))

(assert (= (and b!4831224 res!2057743) b!4831225))

(declare-fun m!5824544 () Bool)

(assert (=> b!4831224 m!5824544))

(declare-fun m!5824546 () Bool)

(assert (=> b!4831225 m!5824546))

(assert (=> d!1548674 d!1548800))

(declare-fun e!3018960 () Bool)

(declare-fun d!1548802 () Bool)

(assert (=> d!1548802 (= (contains!18874 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902) key!5594) e!3018960)))

(declare-fun res!2057746 () Bool)

(assert (=> d!1548802 (=> res!2057746 e!3018960)))

(assert (=> d!1548802 (= res!2057746 (containsKey!4432 (_2!32470 (h!61499 (toList!7552 lm!2325))) key!5594))))

(assert (=> d!1548802 true))

(declare-fun _$29!850 () Unit!143787)

(assert (=> d!1548802 (= (choose!35251 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902 key!5594) _$29!850)))

(declare-fun b!4831228 () Bool)

(assert (=> b!4831228 (= e!3018960 (contains!18874 lt!1976902 key!5594))))

(assert (= (and d!1548802 (not res!2057746)) b!4831228))

(assert (=> d!1548802 m!5824050))

(assert (=> d!1548802 m!5824050))

(assert (=> d!1548802 m!5824052))

(assert (=> d!1548802 m!5824048))

(assert (=> b!4831228 m!5824080))

(assert (=> d!1548674 d!1548802))

(assert (=> d!1548674 d!1548686))

(assert (=> d!1548674 d!1548716))

(assert (=> d!1548674 d!1548704))

(declare-fun d!1548804 () Bool)

(declare-fun res!2057747 () Bool)

(declare-fun e!3018961 () Bool)

(assert (=> d!1548804 (=> res!2057747 e!3018961)))

(assert (=> d!1548804 (= res!2057747 (and (is-Cons!55065 (toList!7552 lm!2325)) (= (_1!32470 (h!61499 (toList!7552 lm!2325))) lt!1976898)))))

(assert (=> d!1548804 (= (containsKey!4434 (toList!7552 lm!2325) lt!1976898) e!3018961)))

(declare-fun b!4831229 () Bool)

(declare-fun e!3018962 () Bool)

(assert (=> b!4831229 (= e!3018961 e!3018962)))

(declare-fun res!2057748 () Bool)

(assert (=> b!4831229 (=> (not res!2057748) (not e!3018962))))

(assert (=> b!4831229 (= res!2057748 (and (or (not (is-Cons!55065 (toList!7552 lm!2325))) (bvsle (_1!32470 (h!61499 (toList!7552 lm!2325))) lt!1976898)) (is-Cons!55065 (toList!7552 lm!2325)) (bvslt (_1!32470 (h!61499 (toList!7552 lm!2325))) lt!1976898)))))

(declare-fun b!4831230 () Bool)

(assert (=> b!4831230 (= e!3018962 (containsKey!4434 (t!362685 (toList!7552 lm!2325)) lt!1976898))))

(assert (= (and d!1548804 (not res!2057747)) b!4831229))

(assert (= (and b!4831229 res!2057748) b!4831230))

(declare-fun m!5824548 () Bool)

(assert (=> b!4831230 m!5824548))

(assert (=> d!1548668 d!1548804))

(declare-fun d!1548806 () Bool)

(declare-fun res!2057753 () Bool)

(declare-fun e!3018967 () Bool)

(assert (=> d!1548806 (=> res!2057753 e!3018967)))

(assert (=> d!1548806 (= res!2057753 (or (is-Nil!55065 (toList!7552 lm!2325)) (is-Nil!55065 (t!362685 (toList!7552 lm!2325)))))))

(assert (=> d!1548806 (= (isStrictlySorted!1002 (toList!7552 lm!2325)) e!3018967)))

(declare-fun b!4831235 () Bool)

(declare-fun e!3018968 () Bool)

(assert (=> b!4831235 (= e!3018967 e!3018968)))

(declare-fun res!2057754 () Bool)

(assert (=> b!4831235 (=> (not res!2057754) (not e!3018968))))

(assert (=> b!4831235 (= res!2057754 (bvslt (_1!32470 (h!61499 (toList!7552 lm!2325))) (_1!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))

(declare-fun b!4831236 () Bool)

(assert (=> b!4831236 (= e!3018968 (isStrictlySorted!1002 (t!362685 (toList!7552 lm!2325))))))

(assert (= (and d!1548806 (not res!2057753)) b!4831235))

(assert (= (and b!4831235 res!2057754) b!4831236))

(declare-fun m!5824550 () Bool)

(assert (=> b!4831236 m!5824550))

(assert (=> d!1548724 d!1548806))

(declare-fun d!1548808 () Bool)

(assert (=> d!1548808 (= (invariantList!1827 (toList!7551 lt!1977045)) (noDuplicatedKeys!493 (toList!7551 lt!1977045)))))

(declare-fun bs!1166140 () Bool)

(assert (= bs!1166140 d!1548808))

(declare-fun m!5824552 () Bool)

(assert (=> bs!1166140 m!5824552))

(assert (=> d!1548710 d!1548808))

(declare-fun d!1548810 () Bool)

(declare-fun res!2057755 () Bool)

(declare-fun e!3018969 () Bool)

(assert (=> d!1548810 (=> res!2057755 e!3018969)))

(assert (=> d!1548810 (= res!2057755 (is-Nil!55065 (t!362685 (toList!7552 lm!2325))))))

(assert (=> d!1548810 (= (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238056) e!3018969)))

(declare-fun b!4831237 () Bool)

(declare-fun e!3018970 () Bool)

(assert (=> b!4831237 (= e!3018969 e!3018970)))

(declare-fun res!2057756 () Bool)

(assert (=> b!4831237 (=> (not res!2057756) (not e!3018970))))

(assert (=> b!4831237 (= res!2057756 (dynLambda!22246 lambda!238056 (h!61499 (t!362685 (toList!7552 lm!2325)))))))

(declare-fun b!4831238 () Bool)

(assert (=> b!4831238 (= e!3018970 (forall!12675 (t!362685 (t!362685 (toList!7552 lm!2325))) lambda!238056))))

(assert (= (and d!1548810 (not res!2057755)) b!4831237))

(assert (= (and b!4831237 res!2057756) b!4831238))

(declare-fun b_lambda!190683 () Bool)

(assert (=> (not b_lambda!190683) (not b!4831237)))

(declare-fun m!5824554 () Bool)

(assert (=> b!4831237 m!5824554))

(declare-fun m!5824556 () Bool)

(assert (=> b!4831238 m!5824556))

(assert (=> d!1548710 d!1548810))

(declare-fun d!1548812 () Bool)

(declare-fun res!2057757 () Bool)

(declare-fun e!3018971 () Bool)

(assert (=> d!1548812 (=> res!2057757 e!3018971)))

(assert (=> d!1548812 (= res!2057757 (and (is-Cons!55064 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))))) (= (_1!32469 (h!61498 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325))))))) key!5594)))))

(assert (=> d!1548812 (= (containsKey!4432 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325))))) key!5594) e!3018971)))

(declare-fun b!4831239 () Bool)

(declare-fun e!3018972 () Bool)

(assert (=> b!4831239 (= e!3018971 e!3018972)))

(declare-fun res!2057758 () Bool)

(assert (=> b!4831239 (=> (not res!2057758) (not e!3018972))))

(assert (=> b!4831239 (= res!2057758 (is-Cons!55064 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831240 () Bool)

(assert (=> b!4831240 (= e!3018972 (containsKey!4432 (t!362684 (t!362684 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))))) key!5594))))

(assert (= (and d!1548812 (not res!2057757)) b!4831239))

(assert (= (and b!4831239 res!2057758) b!4831240))

(declare-fun m!5824558 () Bool)

(assert (=> b!4831240 m!5824558))

(assert (=> b!4830931 d!1548812))

(assert (=> d!1548714 d!1548678))

(assert (=> d!1548714 d!1548718))

(declare-fun d!1548814 () Bool)

(assert (=> d!1548814 (not (containsKey!4432 (apply!13370 lm!2325 (_1!32470 (h!61499 (toList!7552 lm!2325)))) key!5594))))

(assert (=> d!1548814 true))

(declare-fun _$39!469 () Unit!143787)

(assert (=> d!1548814 (= (choose!35252 lm!2325 key!5594 (_1!32470 (h!61499 (toList!7552 lm!2325))) hashF!1543) _$39!469)))

(declare-fun bs!1166141 () Bool)

(assert (= bs!1166141 d!1548814))

(assert (=> bs!1166141 m!5824054))

(assert (=> bs!1166141 m!5824054))

(assert (=> bs!1166141 m!5824056))

(assert (=> d!1548714 d!1548814))

(declare-fun d!1548816 () Bool)

(declare-fun res!2057759 () Bool)

(declare-fun e!3018973 () Bool)

(assert (=> d!1548816 (=> res!2057759 e!3018973)))

(assert (=> d!1548816 (= res!2057759 (is-Nil!55065 (toList!7552 lm!2325)))))

(assert (=> d!1548816 (= (forall!12675 (toList!7552 lm!2325) lambda!238059) e!3018973)))

(declare-fun b!4831241 () Bool)

(declare-fun e!3018974 () Bool)

(assert (=> b!4831241 (= e!3018973 e!3018974)))

(declare-fun res!2057760 () Bool)

(assert (=> b!4831241 (=> (not res!2057760) (not e!3018974))))

(assert (=> b!4831241 (= res!2057760 (dynLambda!22246 lambda!238059 (h!61499 (toList!7552 lm!2325))))))

(declare-fun b!4831242 () Bool)

(assert (=> b!4831242 (= e!3018974 (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238059))))

(assert (= (and d!1548816 (not res!2057759)) b!4831241))

(assert (= (and b!4831241 res!2057760) b!4831242))

(declare-fun b_lambda!190685 () Bool)

(assert (=> (not b_lambda!190685) (not b!4831241)))

(declare-fun m!5824560 () Bool)

(assert (=> b!4831241 m!5824560))

(declare-fun m!5824562 () Bool)

(assert (=> b!4831242 m!5824562))

(assert (=> d!1548714 d!1548816))

(assert (=> bs!1166088 d!1548800))

(declare-fun d!1548818 () Bool)

(declare-fun lt!1977226 () Bool)

(assert (=> d!1548818 (= lt!1977226 (set.member key!5594 (content!9834 e!3018856)))))

(declare-fun e!3018976 () Bool)

(assert (=> d!1548818 (= lt!1977226 e!3018976)))

(declare-fun res!2057762 () Bool)

(assert (=> d!1548818 (=> (not res!2057762) (not e!3018976))))

(assert (=> d!1548818 (= res!2057762 (is-Cons!55068 e!3018856))))

(assert (=> d!1548818 (= (contains!18878 e!3018856 key!5594) lt!1977226)))

(declare-fun b!4831243 () Bool)

(declare-fun e!3018975 () Bool)

(assert (=> b!4831243 (= e!3018976 e!3018975)))

(declare-fun res!2057761 () Bool)

(assert (=> b!4831243 (=> res!2057761 e!3018975)))

(assert (=> b!4831243 (= res!2057761 (= (h!61502 e!3018856) key!5594))))

(declare-fun b!4831244 () Bool)

(assert (=> b!4831244 (= e!3018975 (contains!18878 (t!362688 e!3018856) key!5594))))

(assert (= (and d!1548818 res!2057762) b!4831243))

(assert (= (and b!4831243 (not res!2057761)) b!4831244))

(declare-fun m!5824564 () Bool)

(assert (=> d!1548818 m!5824564))

(declare-fun m!5824566 () Bool)

(assert (=> d!1548818 m!5824566))

(declare-fun m!5824568 () Bool)

(assert (=> b!4831244 m!5824568))

(assert (=> bm!336669 d!1548818))

(declare-fun d!1548820 () Bool)

(declare-fun res!2057763 () Bool)

(declare-fun e!3018977 () Bool)

(assert (=> d!1548820 (=> res!2057763 e!3018977)))

(assert (=> d!1548820 (= res!2057763 (and (is-Cons!55064 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (= (_1!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) key!5594)))))

(assert (=> d!1548820 (= (containsKey!4432 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) key!5594) e!3018977)))

(declare-fun b!4831245 () Bool)

(declare-fun e!3018978 () Bool)

(assert (=> b!4831245 (= e!3018977 e!3018978)))

(declare-fun res!2057764 () Bool)

(assert (=> b!4831245 (=> (not res!2057764) (not e!3018978))))

(assert (=> b!4831245 (= res!2057764 (is-Cons!55064 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun b!4831246 () Bool)

(assert (=> b!4831246 (= e!3018978 (containsKey!4432 (t!362684 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) key!5594))))

(assert (= (and d!1548820 (not res!2057763)) b!4831245))

(assert (= (and b!4831245 res!2057764) b!4831246))

(declare-fun m!5824570 () Bool)

(assert (=> b!4831246 m!5824570))

(assert (=> b!4831005 d!1548820))

(declare-fun d!1548822 () Bool)

(assert (=> d!1548822 (= (get!18855 (getValueByKey!2652 (toList!7552 lm!2325) (_1!32470 (h!61499 (toList!7552 lm!2325))))) (v!49219 (getValueByKey!2652 (toList!7552 lm!2325) (_1!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548718 d!1548822))

(declare-fun b!4831258 () Bool)

(declare-fun e!3018984 () Option!13525)

(assert (=> b!4831258 (= e!3018984 None!13524)))

(declare-fun b!4831257 () Bool)

(assert (=> b!4831257 (= e!3018984 (getValueByKey!2652 (t!362685 (toList!7552 lm!2325)) (_1!32470 (h!61499 (toList!7552 lm!2325)))))))

(declare-fun b!4831255 () Bool)

(declare-fun e!3018983 () Option!13525)

(assert (=> b!4831255 (= e!3018983 (Some!13524 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(declare-fun b!4831256 () Bool)

(assert (=> b!4831256 (= e!3018983 e!3018984)))

(declare-fun c!823211 () Bool)

(assert (=> b!4831256 (= c!823211 (and (is-Cons!55065 (toList!7552 lm!2325)) (not (= (_1!32470 (h!61499 (toList!7552 lm!2325))) (_1!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun d!1548824 () Bool)

(declare-fun c!823210 () Bool)

(assert (=> d!1548824 (= c!823210 (and (is-Cons!55065 (toList!7552 lm!2325)) (= (_1!32470 (h!61499 (toList!7552 lm!2325))) (_1!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548824 (= (getValueByKey!2652 (toList!7552 lm!2325) (_1!32470 (h!61499 (toList!7552 lm!2325)))) e!3018983)))

(assert (= (and d!1548824 c!823210) b!4831255))

(assert (= (and d!1548824 (not c!823210)) b!4831256))

(assert (= (and b!4831256 c!823211) b!4831257))

(assert (= (and b!4831256 (not c!823211)) b!4831258))

(declare-fun m!5824572 () Bool)

(assert (=> b!4831257 m!5824572))

(assert (=> d!1548718 d!1548824))

(declare-fun d!1548826 () Bool)

(declare-fun e!3018986 () Bool)

(assert (=> d!1548826 e!3018986))

(declare-fun res!2057766 () Bool)

(assert (=> d!1548826 (=> res!2057766 e!3018986)))

(declare-fun e!3018987 () Bool)

(assert (=> d!1548826 (= res!2057766 e!3018987)))

(declare-fun res!2057765 () Bool)

(assert (=> d!1548826 (=> (not res!2057765) (not e!3018987))))

(declare-fun lt!1977228 () Bool)

(assert (=> d!1548826 (= res!2057765 (not lt!1977228))))

(declare-fun lt!1977233 () Bool)

(assert (=> d!1548826 (= lt!1977228 lt!1977233)))

(declare-fun lt!1977229 () Unit!143787)

(declare-fun e!3018985 () Unit!143787)

(assert (=> d!1548826 (= lt!1977229 e!3018985)))

(declare-fun c!823213 () Bool)

(assert (=> d!1548826 (= c!823213 lt!1977233)))

(assert (=> d!1548826 (= lt!1977233 (containsKey!4435 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> d!1548826 (= (contains!18874 lt!1977019 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lt!1977228)))

(declare-fun b!4831259 () Bool)

(assert (=> b!4831259 false))

(declare-fun lt!1977230 () Unit!143787)

(declare-fun lt!1977227 () Unit!143787)

(assert (=> b!4831259 (= lt!1977230 lt!1977227)))

(assert (=> b!4831259 (containsKey!4435 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> b!4831259 (= lt!1977227 (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun e!3018989 () Unit!143787)

(declare-fun Unit!143840 () Unit!143787)

(assert (=> b!4831259 (= e!3018989 Unit!143840)))

(declare-fun b!4831260 () Bool)

(declare-fun e!3018990 () Bool)

(assert (=> b!4831260 (= e!3018990 (contains!18878 (keys!20280 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831261 () Bool)

(declare-fun e!3018988 () List!55192)

(assert (=> b!4831261 (= e!3018988 (keys!20280 lt!1977019))))

(declare-fun b!4831262 () Bool)

(assert (=> b!4831262 (= e!3018987 (not (contains!18878 (keys!20280 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831263 () Bool)

(declare-fun Unit!143841 () Unit!143787)

(assert (=> b!4831263 (= e!3018989 Unit!143841)))

(declare-fun b!4831264 () Bool)

(assert (=> b!4831264 (= e!3018986 e!3018990)))

(declare-fun res!2057767 () Bool)

(assert (=> b!4831264 (=> (not res!2057767) (not e!3018990))))

(assert (=> b!4831264 (= res!2057767 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831265 () Bool)

(declare-fun lt!1977231 () Unit!143787)

(assert (=> b!4831265 (= e!3018985 lt!1977231)))

(declare-fun lt!1977234 () Unit!143787)

(assert (=> b!4831265 (= lt!1977234 (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> b!4831265 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977232 () Unit!143787)

(assert (=> b!4831265 (= lt!1977232 lt!1977234)))

(assert (=> b!4831265 (= lt!1977231 (lemmaInListThenGetKeysListContains!1168 (toList!7551 lt!1977019) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun call!336688 () Bool)

(assert (=> b!4831265 call!336688))

(declare-fun b!4831266 () Bool)

(assert (=> b!4831266 (= e!3018988 (getKeysList!1173 (toList!7551 lt!1977019)))))

(declare-fun b!4831267 () Bool)

(assert (=> b!4831267 (= e!3018985 e!3018989)))

(declare-fun c!823212 () Bool)

(assert (=> b!4831267 (= c!823212 call!336688)))

(declare-fun bm!336683 () Bool)

(assert (=> bm!336683 (= call!336688 (contains!18878 e!3018988 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun c!823214 () Bool)

(assert (=> bm!336683 (= c!823214 c!823213)))

(assert (= (and d!1548826 c!823213) b!4831265))

(assert (= (and d!1548826 (not c!823213)) b!4831267))

(assert (= (and b!4831267 c!823212) b!4831259))

(assert (= (and b!4831267 (not c!823212)) b!4831263))

(assert (= (or b!4831265 b!4831267) bm!336683))

(assert (= (and bm!336683 c!823214) b!4831266))

(assert (= (and bm!336683 (not c!823214)) b!4831261))

(assert (= (and d!1548826 res!2057765) b!4831262))

(assert (= (and d!1548826 (not res!2057766)) b!4831264))

(assert (= (and b!4831264 res!2057767) b!4831260))

(declare-fun m!5824574 () Bool)

(assert (=> b!4831259 m!5824574))

(declare-fun m!5824576 () Bool)

(assert (=> b!4831259 m!5824576))

(declare-fun m!5824578 () Bool)

(assert (=> bm!336683 m!5824578))

(declare-fun m!5824580 () Bool)

(assert (=> b!4831262 m!5824580))

(assert (=> b!4831262 m!5824580))

(declare-fun m!5824582 () Bool)

(assert (=> b!4831262 m!5824582))

(declare-fun m!5824584 () Bool)

(assert (=> b!4831265 m!5824584))

(declare-fun m!5824586 () Bool)

(assert (=> b!4831265 m!5824586))

(assert (=> b!4831265 m!5824586))

(declare-fun m!5824588 () Bool)

(assert (=> b!4831265 m!5824588))

(declare-fun m!5824590 () Bool)

(assert (=> b!4831265 m!5824590))

(assert (=> b!4831264 m!5824586))

(assert (=> b!4831264 m!5824586))

(assert (=> b!4831264 m!5824588))

(assert (=> b!4831260 m!5824580))

(assert (=> b!4831260 m!5824580))

(assert (=> b!4831260 m!5824582))

(assert (=> d!1548826 m!5824574))

(assert (=> b!4831261 m!5824580))

(declare-fun m!5824592 () Bool)

(assert (=> b!4831266 m!5824592))

(assert (=> b!4830999 d!1548826))

(declare-fun bs!1166142 () Bool)

(declare-fun b!4831270 () Bool)

(assert (= bs!1166142 (and b!4831270 b!4831124)))

(declare-fun lambda!238124 () Int)

(assert (=> bs!1166142 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977173) (= lambda!238124 lambda!238101))))

(declare-fun bs!1166143 () Bool)

(assert (= bs!1166143 (and b!4831270 d!1548758)))

(assert (=> bs!1166143 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977169) (= lambda!238124 lambda!238102))))

(declare-fun bs!1166144 () Bool)

(assert (= bs!1166144 (and b!4831270 d!1548686)))

(assert (=> bs!1166144 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977022) (= lambda!238124 lambda!238053))))

(declare-fun bs!1166145 () Bool)

(assert (= bs!1166145 (and b!4831270 b!4830999)))

(assert (=> bs!1166145 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1976902) (= lambda!238124 lambda!238051))))

(declare-fun bs!1166146 () Bool)

(assert (= bs!1166146 (and b!4831270 b!4831122)))

(assert (=> bs!1166146 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238124 lambda!238099))))

(assert (=> bs!1166142 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238124 lambda!238100))))

(declare-fun bs!1166147 () Bool)

(assert (= bs!1166147 (and b!4831270 b!4830997)))

(assert (=> bs!1166147 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1976902) (= lambda!238124 lambda!238050))))

(assert (=> bs!1166145 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977026) (= lambda!238124 lambda!238052))))

(assert (=> b!4831270 true))

(declare-fun bs!1166148 () Bool)

(declare-fun b!4831272 () Bool)

(assert (= bs!1166148 (and b!4831272 b!4831124)))

(declare-fun lambda!238125 () Int)

(assert (=> bs!1166148 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977173) (= lambda!238125 lambda!238101))))

(declare-fun bs!1166149 () Bool)

(assert (= bs!1166149 (and b!4831272 d!1548758)))

(assert (=> bs!1166149 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977169) (= lambda!238125 lambda!238102))))

(declare-fun bs!1166150 () Bool)

(assert (= bs!1166150 (and b!4831272 b!4831270)))

(assert (=> bs!1166150 (= lambda!238125 lambda!238124)))

(declare-fun bs!1166151 () Bool)

(assert (= bs!1166151 (and b!4831272 d!1548686)))

(assert (=> bs!1166151 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977022) (= lambda!238125 lambda!238053))))

(declare-fun bs!1166152 () Bool)

(assert (= bs!1166152 (and b!4831272 b!4830999)))

(assert (=> bs!1166152 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1976902) (= lambda!238125 lambda!238051))))

(declare-fun bs!1166153 () Bool)

(assert (= bs!1166153 (and b!4831272 b!4831122)))

(assert (=> bs!1166153 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238125 lambda!238099))))

(assert (=> bs!1166148 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238125 lambda!238100))))

(declare-fun bs!1166154 () Bool)

(assert (= bs!1166154 (and b!4831272 b!4830997)))

(assert (=> bs!1166154 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1976902) (= lambda!238125 lambda!238050))))

(assert (=> bs!1166152 (= (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977026) (= lambda!238125 lambda!238052))))

(assert (=> b!4831272 true))

(declare-fun lt!1977242 () ListMap!6923)

(declare-fun lambda!238126 () Int)

(assert (=> bs!1166148 (= (= lt!1977242 lt!1977173) (= lambda!238126 lambda!238101))))

(assert (=> bs!1166149 (= (= lt!1977242 lt!1977169) (= lambda!238126 lambda!238102))))

(assert (=> bs!1166150 (= (= lt!1977242 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238126 lambda!238124))))

(assert (=> b!4831272 (= (= lt!1977242 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238126 lambda!238125))))

(assert (=> bs!1166151 (= (= lt!1977242 lt!1977022) (= lambda!238126 lambda!238053))))

(assert (=> bs!1166152 (= (= lt!1977242 lt!1976902) (= lambda!238126 lambda!238051))))

(assert (=> bs!1166153 (= (= lt!1977242 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238126 lambda!238099))))

(assert (=> bs!1166148 (= (= lt!1977242 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238126 lambda!238100))))

(assert (=> bs!1166154 (= (= lt!1977242 lt!1976902) (= lambda!238126 lambda!238050))))

(assert (=> bs!1166152 (= (= lt!1977242 lt!1977026) (= lambda!238126 lambda!238052))))

(assert (=> b!4831272 true))

(declare-fun bs!1166155 () Bool)

(declare-fun d!1548828 () Bool)

(assert (= bs!1166155 (and d!1548828 b!4831124)))

(declare-fun lt!1977238 () ListMap!6923)

(declare-fun lambda!238127 () Int)

(assert (=> bs!1166155 (= (= lt!1977238 lt!1977173) (= lambda!238127 lambda!238101))))

(declare-fun bs!1166156 () Bool)

(assert (= bs!1166156 (and d!1548828 d!1548758)))

(assert (=> bs!1166156 (= (= lt!1977238 lt!1977169) (= lambda!238127 lambda!238102))))

(declare-fun bs!1166157 () Bool)

(assert (= bs!1166157 (and d!1548828 b!4831270)))

(assert (=> bs!1166157 (= (= lt!1977238 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238127 lambda!238124))))

(declare-fun bs!1166158 () Bool)

(assert (= bs!1166158 (and d!1548828 b!4831272)))

(assert (=> bs!1166158 (= (= lt!1977238 lt!1977242) (= lambda!238127 lambda!238126))))

(assert (=> bs!1166158 (= (= lt!1977238 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238127 lambda!238125))))

(declare-fun bs!1166159 () Bool)

(assert (= bs!1166159 (and d!1548828 d!1548686)))

(assert (=> bs!1166159 (= (= lt!1977238 lt!1977022) (= lambda!238127 lambda!238053))))

(declare-fun bs!1166160 () Bool)

(assert (= bs!1166160 (and d!1548828 b!4830999)))

(assert (=> bs!1166160 (= (= lt!1977238 lt!1976902) (= lambda!238127 lambda!238051))))

(declare-fun bs!1166161 () Bool)

(assert (= bs!1166161 (and d!1548828 b!4831122)))

(assert (=> bs!1166161 (= (= lt!1977238 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238127 lambda!238099))))

(assert (=> bs!1166155 (= (= lt!1977238 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238127 lambda!238100))))

(declare-fun bs!1166162 () Bool)

(assert (= bs!1166162 (and d!1548828 b!4830997)))

(assert (=> bs!1166162 (= (= lt!1977238 lt!1976902) (= lambda!238127 lambda!238050))))

(assert (=> bs!1166160 (= (= lt!1977238 lt!1977026) (= lambda!238127 lambda!238052))))

(assert (=> d!1548828 true))

(declare-fun c!823215 () Bool)

(declare-fun call!336689 () Bool)

(declare-fun bm!336684 () Bool)

(assert (=> bm!336684 (= call!336689 (forall!12677 (ite c!823215 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (ite c!823215 lambda!238124 lambda!238126)))))

(declare-fun e!3018991 () Bool)

(assert (=> d!1548828 e!3018991))

(declare-fun res!2057769 () Bool)

(assert (=> d!1548828 (=> (not res!2057769) (not e!3018991))))

(assert (=> d!1548828 (= res!2057769 (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238127))))

(declare-fun e!3018992 () ListMap!6923)

(assert (=> d!1548828 (= lt!1977238 e!3018992)))

(assert (=> d!1548828 (= c!823215 (is-Nil!55064 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548828 (noDuplicateKeys!2471 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> d!1548828 (= (addToMapMapFromBucket!1828 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lt!1977238)))

(declare-fun b!4831268 () Bool)

(declare-fun e!3018993 () Bool)

(assert (=> b!4831268 (= e!3018993 (forall!12677 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lambda!238126))))

(declare-fun call!336690 () Bool)

(declare-fun lt!1977235 () ListMap!6923)

(declare-fun bm!336685 () Bool)

(assert (=> bm!336685 (= call!336690 (forall!12677 (ite c!823215 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (toList!7551 lt!1977235)) (ite c!823215 lambda!238124 lambda!238126)))))

(declare-fun b!4831269 () Bool)

(declare-fun res!2057770 () Bool)

(assert (=> b!4831269 (=> (not res!2057770) (not e!3018991))))

(assert (=> b!4831269 (= res!2057770 (forall!12677 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lambda!238127))))

(assert (=> b!4831270 (= e!3018992 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun lt!1977249 () Unit!143787)

(declare-fun call!336691 () Unit!143787)

(assert (=> b!4831270 (= lt!1977249 call!336691)))

(assert (=> b!4831270 call!336689))

(declare-fun lt!1977244 () Unit!143787)

(assert (=> b!4831270 (= lt!1977244 lt!1977249)))

(assert (=> b!4831270 call!336690))

(declare-fun lt!1977247 () Unit!143787)

(declare-fun Unit!143842 () Unit!143787)

(assert (=> b!4831270 (= lt!1977247 Unit!143842)))

(declare-fun bm!336686 () Bool)

(assert (=> bm!336686 (= call!336691 (lemmaContainsAllItsOwnKeys!1005 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831271 () Bool)

(assert (=> b!4831271 (= e!3018991 (invariantList!1827 (toList!7551 lt!1977238)))))

(assert (=> b!4831272 (= e!3018992 lt!1977242)))

(assert (=> b!4831272 (= lt!1977235 (+!2550 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> b!4831272 (= lt!1977242 (addToMapMapFromBucket!1828 (t!362684 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (+!2550 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun lt!1977250 () Unit!143787)

(assert (=> b!4831272 (= lt!1977250 call!336691)))

(assert (=> b!4831272 (forall!12677 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lambda!238125)))

(declare-fun lt!1977254 () Unit!143787)

(assert (=> b!4831272 (= lt!1977254 lt!1977250)))

(assert (=> b!4831272 (forall!12677 (toList!7551 lt!1977235) lambda!238126)))

(declare-fun lt!1977236 () Unit!143787)

(declare-fun Unit!143843 () Unit!143787)

(assert (=> b!4831272 (= lt!1977236 Unit!143843)))

(assert (=> b!4831272 (forall!12677 (t!362684 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lambda!238126)))

(declare-fun lt!1977237 () Unit!143787)

(declare-fun Unit!143844 () Unit!143787)

(assert (=> b!4831272 (= lt!1977237 Unit!143844)))

(declare-fun lt!1977252 () Unit!143787)

(declare-fun Unit!143845 () Unit!143787)

(assert (=> b!4831272 (= lt!1977252 Unit!143845)))

(declare-fun lt!1977239 () Unit!143787)

(assert (=> b!4831272 (= lt!1977239 (forallContained!4412 (toList!7551 lt!1977235) lambda!238126 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> b!4831272 (contains!18874 lt!1977235 (_1!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977243 () Unit!143787)

(declare-fun Unit!143846 () Unit!143787)

(assert (=> b!4831272 (= lt!1977243 Unit!143846)))

(assert (=> b!4831272 (contains!18874 lt!1977242 (_1!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977248 () Unit!143787)

(declare-fun Unit!143847 () Unit!143787)

(assert (=> b!4831272 (= lt!1977248 Unit!143847)))

(assert (=> b!4831272 call!336689))

(declare-fun lt!1977241 () Unit!143787)

(declare-fun Unit!143848 () Unit!143787)

(assert (=> b!4831272 (= lt!1977241 Unit!143848)))

(assert (=> b!4831272 call!336690))

(declare-fun lt!1977245 () Unit!143787)

(declare-fun Unit!143849 () Unit!143787)

(assert (=> b!4831272 (= lt!1977245 Unit!143849)))

(declare-fun lt!1977246 () Unit!143787)

(declare-fun Unit!143850 () Unit!143787)

(assert (=> b!4831272 (= lt!1977246 Unit!143850)))

(declare-fun lt!1977255 () Unit!143787)

(assert (=> b!4831272 (= lt!1977255 (addForallContainsKeyThenBeforeAdding!1004 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977242 (_1!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (_2!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(assert (=> b!4831272 (forall!12677 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lambda!238126)))

(declare-fun lt!1977240 () Unit!143787)

(assert (=> b!4831272 (= lt!1977240 lt!1977255)))

(assert (=> b!4831272 (forall!12677 (toList!7551 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lambda!238126)))

(declare-fun lt!1977253 () Unit!143787)

(declare-fun Unit!143851 () Unit!143787)

(assert (=> b!4831272 (= lt!1977253 Unit!143851)))

(declare-fun res!2057768 () Bool)

(assert (=> b!4831272 (= res!2057768 (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238126))))

(assert (=> b!4831272 (=> (not res!2057768) (not e!3018993))))

(assert (=> b!4831272 e!3018993))

(declare-fun lt!1977251 () Unit!143787)

(declare-fun Unit!143852 () Unit!143787)

(assert (=> b!4831272 (= lt!1977251 Unit!143852)))

(assert (= (and d!1548828 c!823215) b!4831270))

(assert (= (and d!1548828 (not c!823215)) b!4831272))

(assert (= (and b!4831272 res!2057768) b!4831268))

(assert (= (or b!4831270 b!4831272) bm!336686))

(assert (= (or b!4831270 b!4831272) bm!336685))

(assert (= (or b!4831270 b!4831272) bm!336684))

(assert (= (and d!1548828 res!2057769) b!4831269))

(assert (= (and b!4831269 res!2057770) b!4831271))

(declare-fun m!5824594 () Bool)

(assert (=> d!1548828 m!5824594))

(assert (=> d!1548828 m!5824546))

(declare-fun m!5824596 () Bool)

(assert (=> b!4831268 m!5824596))

(declare-fun m!5824598 () Bool)

(assert (=> b!4831272 m!5824598))

(declare-fun m!5824600 () Bool)

(assert (=> b!4831272 m!5824600))

(declare-fun m!5824602 () Bool)

(assert (=> b!4831272 m!5824602))

(assert (=> b!4831272 m!5824596))

(declare-fun m!5824604 () Bool)

(assert (=> b!4831272 m!5824604))

(assert (=> b!4831272 m!5824208))

(declare-fun m!5824606 () Bool)

(assert (=> b!4831272 m!5824606))

(assert (=> b!4831272 m!5824208))

(declare-fun m!5824608 () Bool)

(assert (=> b!4831272 m!5824608))

(assert (=> b!4831272 m!5824596))

(declare-fun m!5824610 () Bool)

(assert (=> b!4831272 m!5824610))

(declare-fun m!5824612 () Bool)

(assert (=> b!4831272 m!5824612))

(assert (=> b!4831272 m!5824608))

(declare-fun m!5824614 () Bool)

(assert (=> b!4831272 m!5824614))

(declare-fun m!5824616 () Bool)

(assert (=> b!4831272 m!5824616))

(declare-fun m!5824618 () Bool)

(assert (=> bm!336685 m!5824618))

(declare-fun m!5824620 () Bool)

(assert (=> bm!336684 m!5824620))

(declare-fun m!5824622 () Bool)

(assert (=> b!4831269 m!5824622))

(assert (=> bm!336686 m!5824208))

(declare-fun m!5824624 () Bool)

(assert (=> bm!336686 m!5824624))

(declare-fun m!5824626 () Bool)

(assert (=> b!4831271 m!5824626))

(assert (=> b!4830999 d!1548828))

(declare-fun d!1548830 () Bool)

(declare-fun res!2057771 () Bool)

(declare-fun e!3018994 () Bool)

(assert (=> d!1548830 (=> res!2057771 e!3018994)))

(assert (=> d!1548830 (= res!2057771 (is-Nil!55064 (toList!7551 lt!1976902)))))

(assert (=> d!1548830 (= (forall!12677 (toList!7551 lt!1976902) lambda!238051) e!3018994)))

(declare-fun b!4831273 () Bool)

(declare-fun e!3018995 () Bool)

(assert (=> b!4831273 (= e!3018994 e!3018995)))

(declare-fun res!2057772 () Bool)

(assert (=> b!4831273 (=> (not res!2057772) (not e!3018995))))

(assert (=> b!4831273 (= res!2057772 (dynLambda!22248 lambda!238051 (h!61498 (toList!7551 lt!1976902))))))

(declare-fun b!4831274 () Bool)

(assert (=> b!4831274 (= e!3018995 (forall!12677 (t!362684 (toList!7551 lt!1976902)) lambda!238051))))

(assert (= (and d!1548830 (not res!2057771)) b!4831273))

(assert (= (and b!4831273 res!2057772) b!4831274))

(declare-fun b_lambda!190687 () Bool)

(assert (=> (not b_lambda!190687) (not b!4831273)))

(declare-fun m!5824628 () Bool)

(assert (=> b!4831273 m!5824628))

(declare-fun m!5824630 () Bool)

(assert (=> b!4831274 m!5824630))

(assert (=> b!4830999 d!1548830))

(declare-fun d!1548832 () Bool)

(declare-fun res!2057773 () Bool)

(declare-fun e!3018996 () Bool)

(assert (=> d!1548832 (=> res!2057773 e!3018996)))

(assert (=> d!1548832 (= res!2057773 (is-Nil!55064 (toList!7551 lt!1976902)))))

(assert (=> d!1548832 (= (forall!12677 (toList!7551 lt!1976902) lambda!238052) e!3018996)))

(declare-fun b!4831275 () Bool)

(declare-fun e!3018997 () Bool)

(assert (=> b!4831275 (= e!3018996 e!3018997)))

(declare-fun res!2057774 () Bool)

(assert (=> b!4831275 (=> (not res!2057774) (not e!3018997))))

(assert (=> b!4831275 (= res!2057774 (dynLambda!22248 lambda!238052 (h!61498 (toList!7551 lt!1976902))))))

(declare-fun b!4831276 () Bool)

(assert (=> b!4831276 (= e!3018997 (forall!12677 (t!362684 (toList!7551 lt!1976902)) lambda!238052))))

(assert (= (and d!1548832 (not res!2057773)) b!4831275))

(assert (= (and b!4831275 res!2057774) b!4831276))

(declare-fun b_lambda!190689 () Bool)

(assert (=> (not b_lambda!190689) (not b!4831275)))

(declare-fun m!5824632 () Bool)

(assert (=> b!4831275 m!5824632))

(declare-fun m!5824634 () Bool)

(assert (=> b!4831276 m!5824634))

(assert (=> b!4830999 d!1548832))

(declare-fun d!1548834 () Bool)

(declare-fun res!2057775 () Bool)

(declare-fun e!3018998 () Bool)

(assert (=> d!1548834 (=> res!2057775 e!3018998)))

(assert (=> d!1548834 (= res!2057775 (is-Nil!55064 (toList!7551 lt!1977019)))))

(assert (=> d!1548834 (= (forall!12677 (toList!7551 lt!1977019) lambda!238052) e!3018998)))

(declare-fun b!4831277 () Bool)

(declare-fun e!3018999 () Bool)

(assert (=> b!4831277 (= e!3018998 e!3018999)))

(declare-fun res!2057776 () Bool)

(assert (=> b!4831277 (=> (not res!2057776) (not e!3018999))))

(assert (=> b!4831277 (= res!2057776 (dynLambda!22248 lambda!238052 (h!61498 (toList!7551 lt!1977019))))))

(declare-fun b!4831278 () Bool)

(assert (=> b!4831278 (= e!3018999 (forall!12677 (t!362684 (toList!7551 lt!1977019)) lambda!238052))))

(assert (= (and d!1548834 (not res!2057775)) b!4831277))

(assert (= (and b!4831277 res!2057776) b!4831278))

(declare-fun b_lambda!190691 () Bool)

(assert (=> (not b_lambda!190691) (not b!4831277)))

(declare-fun m!5824636 () Bool)

(assert (=> b!4831277 m!5824636))

(declare-fun m!5824638 () Bool)

(assert (=> b!4831278 m!5824638))

(assert (=> b!4830999 d!1548834))

(declare-fun d!1548836 () Bool)

(declare-fun e!3019001 () Bool)

(assert (=> d!1548836 e!3019001))

(declare-fun res!2057778 () Bool)

(assert (=> d!1548836 (=> res!2057778 e!3019001)))

(declare-fun e!3019002 () Bool)

(assert (=> d!1548836 (= res!2057778 e!3019002)))

(declare-fun res!2057777 () Bool)

(assert (=> d!1548836 (=> (not res!2057777) (not e!3019002))))

(declare-fun lt!1977257 () Bool)

(assert (=> d!1548836 (= res!2057777 (not lt!1977257))))

(declare-fun lt!1977262 () Bool)

(assert (=> d!1548836 (= lt!1977257 lt!1977262)))

(declare-fun lt!1977258 () Unit!143787)

(declare-fun e!3019000 () Unit!143787)

(assert (=> d!1548836 (= lt!1977258 e!3019000)))

(declare-fun c!823217 () Bool)

(assert (=> d!1548836 (= c!823217 lt!1977262)))

(assert (=> d!1548836 (= lt!1977262 (containsKey!4435 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> d!1548836 (= (contains!18874 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lt!1977257)))

(declare-fun b!4831279 () Bool)

(assert (=> b!4831279 false))

(declare-fun lt!1977259 () Unit!143787)

(declare-fun lt!1977256 () Unit!143787)

(assert (=> b!4831279 (= lt!1977259 lt!1977256)))

(assert (=> b!4831279 (containsKey!4435 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> b!4831279 (= lt!1977256 (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun e!3019004 () Unit!143787)

(declare-fun Unit!143853 () Unit!143787)

(assert (=> b!4831279 (= e!3019004 Unit!143853)))

(declare-fun b!4831280 () Bool)

(declare-fun e!3019005 () Bool)

(assert (=> b!4831280 (= e!3019005 (contains!18878 (keys!20280 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831281 () Bool)

(declare-fun e!3019003 () List!55192)

(assert (=> b!4831281 (= e!3019003 (keys!20280 lt!1977026))))

(declare-fun b!4831282 () Bool)

(assert (=> b!4831282 (= e!3019002 (not (contains!18878 (keys!20280 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831283 () Bool)

(declare-fun Unit!143854 () Unit!143787)

(assert (=> b!4831283 (= e!3019004 Unit!143854)))

(declare-fun b!4831284 () Bool)

(assert (=> b!4831284 (= e!3019001 e!3019005)))

(declare-fun res!2057779 () Bool)

(assert (=> b!4831284 (=> (not res!2057779) (not e!3019005))))

(assert (=> b!4831284 (= res!2057779 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831285 () Bool)

(declare-fun lt!1977260 () Unit!143787)

(assert (=> b!4831285 (= e!3019000 lt!1977260)))

(declare-fun lt!1977263 () Unit!143787)

(assert (=> b!4831285 (= lt!1977263 (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> b!4831285 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977261 () Unit!143787)

(assert (=> b!4831285 (= lt!1977261 lt!1977263)))

(assert (=> b!4831285 (= lt!1977260 (lemmaInListThenGetKeysListContains!1168 (toList!7551 lt!1977026) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun call!336692 () Bool)

(assert (=> b!4831285 call!336692))

(declare-fun b!4831286 () Bool)

(assert (=> b!4831286 (= e!3019003 (getKeysList!1173 (toList!7551 lt!1977026)))))

(declare-fun b!4831287 () Bool)

(assert (=> b!4831287 (= e!3019000 e!3019004)))

(declare-fun c!823216 () Bool)

(assert (=> b!4831287 (= c!823216 call!336692)))

(declare-fun bm!336687 () Bool)

(assert (=> bm!336687 (= call!336692 (contains!18878 e!3019003 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun c!823218 () Bool)

(assert (=> bm!336687 (= c!823218 c!823217)))

(assert (= (and d!1548836 c!823217) b!4831285))

(assert (= (and d!1548836 (not c!823217)) b!4831287))

(assert (= (and b!4831287 c!823216) b!4831279))

(assert (= (and b!4831287 (not c!823216)) b!4831283))

(assert (= (or b!4831285 b!4831287) bm!336687))

(assert (= (and bm!336687 c!823218) b!4831286))

(assert (= (and bm!336687 (not c!823218)) b!4831281))

(assert (= (and d!1548836 res!2057777) b!4831282))

(assert (= (and d!1548836 (not res!2057778)) b!4831284))

(assert (= (and b!4831284 res!2057779) b!4831280))

(declare-fun m!5824640 () Bool)

(assert (=> b!4831279 m!5824640))

(declare-fun m!5824642 () Bool)

(assert (=> b!4831279 m!5824642))

(declare-fun m!5824644 () Bool)

(assert (=> bm!336687 m!5824644))

(declare-fun m!5824646 () Bool)

(assert (=> b!4831282 m!5824646))

(assert (=> b!4831282 m!5824646))

(declare-fun m!5824648 () Bool)

(assert (=> b!4831282 m!5824648))

(declare-fun m!5824650 () Bool)

(assert (=> b!4831285 m!5824650))

(declare-fun m!5824652 () Bool)

(assert (=> b!4831285 m!5824652))

(assert (=> b!4831285 m!5824652))

(declare-fun m!5824654 () Bool)

(assert (=> b!4831285 m!5824654))

(declare-fun m!5824656 () Bool)

(assert (=> b!4831285 m!5824656))

(assert (=> b!4831284 m!5824652))

(assert (=> b!4831284 m!5824652))

(assert (=> b!4831284 m!5824654))

(assert (=> b!4831280 m!5824646))

(assert (=> b!4831280 m!5824646))

(assert (=> b!4831280 m!5824648))

(assert (=> d!1548836 m!5824640))

(assert (=> b!4831281 m!5824646))

(declare-fun m!5824658 () Bool)

(assert (=> b!4831286 m!5824658))

(assert (=> b!4830999 d!1548836))

(declare-fun d!1548838 () Bool)

(declare-fun res!2057780 () Bool)

(declare-fun e!3019006 () Bool)

(assert (=> d!1548838 (=> res!2057780 e!3019006)))

(assert (=> d!1548838 (= res!2057780 (is-Nil!55064 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (=> d!1548838 (= (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238052) e!3019006)))

(declare-fun b!4831288 () Bool)

(declare-fun e!3019007 () Bool)

(assert (=> b!4831288 (= e!3019006 e!3019007)))

(declare-fun res!2057781 () Bool)

(assert (=> b!4831288 (=> (not res!2057781) (not e!3019007))))

(assert (=> b!4831288 (= res!2057781 (dynLambda!22248 lambda!238052 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun b!4831289 () Bool)

(assert (=> b!4831289 (= e!3019007 (forall!12677 (t!362684 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lambda!238052))))

(assert (= (and d!1548838 (not res!2057780)) b!4831288))

(assert (= (and b!4831288 res!2057781) b!4831289))

(declare-fun b_lambda!190693 () Bool)

(assert (=> (not b_lambda!190693) (not b!4831288)))

(declare-fun m!5824660 () Bool)

(assert (=> b!4831288 m!5824660))

(declare-fun m!5824662 () Bool)

(assert (=> b!4831289 m!5824662))

(assert (=> b!4830999 d!1548838))

(declare-fun bs!1166163 () Bool)

(declare-fun d!1548840 () Bool)

(assert (= bs!1166163 (and d!1548840 b!4831124)))

(declare-fun lambda!238132 () Int)

(assert (=> bs!1166163 (= (= lt!1977026 lt!1977173) (= lambda!238132 lambda!238101))))

(declare-fun bs!1166164 () Bool)

(assert (= bs!1166164 (and d!1548840 d!1548828)))

(assert (=> bs!1166164 (= (= lt!1977026 lt!1977238) (= lambda!238132 lambda!238127))))

(declare-fun bs!1166165 () Bool)

(assert (= bs!1166165 (and d!1548840 d!1548758)))

(assert (=> bs!1166165 (= (= lt!1977026 lt!1977169) (= lambda!238132 lambda!238102))))

(declare-fun bs!1166166 () Bool)

(assert (= bs!1166166 (and d!1548840 b!4831270)))

(assert (=> bs!1166166 (= (= lt!1977026 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238132 lambda!238124))))

(declare-fun bs!1166167 () Bool)

(assert (= bs!1166167 (and d!1548840 b!4831272)))

(assert (=> bs!1166167 (= (= lt!1977026 lt!1977242) (= lambda!238132 lambda!238126))))

(assert (=> bs!1166167 (= (= lt!1977026 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238132 lambda!238125))))

(declare-fun bs!1166168 () Bool)

(assert (= bs!1166168 (and d!1548840 d!1548686)))

(assert (=> bs!1166168 (= (= lt!1977026 lt!1977022) (= lambda!238132 lambda!238053))))

(declare-fun bs!1166169 () Bool)

(assert (= bs!1166169 (and d!1548840 b!4830999)))

(assert (=> bs!1166169 (= (= lt!1977026 lt!1976902) (= lambda!238132 lambda!238051))))

(declare-fun bs!1166170 () Bool)

(assert (= bs!1166170 (and d!1548840 b!4831122)))

(assert (=> bs!1166170 (= (= lt!1977026 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238132 lambda!238099))))

(assert (=> bs!1166163 (= (= lt!1977026 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238132 lambda!238100))))

(declare-fun bs!1166171 () Bool)

(assert (= bs!1166171 (and d!1548840 b!4830997)))

(assert (=> bs!1166171 (= (= lt!1977026 lt!1976902) (= lambda!238132 lambda!238050))))

(assert (=> bs!1166169 (= lambda!238132 lambda!238052)))

(assert (=> d!1548840 true))

(assert (=> d!1548840 (forall!12677 (toList!7551 lt!1976902) lambda!238132)))

(declare-fun lt!1977266 () Unit!143787)

(declare-fun choose!35260 (ListMap!6923 ListMap!6923 K!16752 V!16998) Unit!143787)

(assert (=> d!1548840 (= lt!1977266 (choose!35260 lt!1976902 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> d!1548840 (forall!12677 (toList!7551 (+!2550 lt!1976902 (tuple2!58351 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))) lambda!238132)))

(assert (=> d!1548840 (= (addForallContainsKeyThenBeforeAdding!1004 lt!1976902 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) lt!1977266)))

(declare-fun bs!1166172 () Bool)

(assert (= bs!1166172 d!1548840))

(declare-fun m!5824664 () Bool)

(assert (=> bs!1166172 m!5824664))

(declare-fun m!5824666 () Bool)

(assert (=> bs!1166172 m!5824666))

(declare-fun m!5824668 () Bool)

(assert (=> bs!1166172 m!5824668))

(declare-fun m!5824670 () Bool)

(assert (=> bs!1166172 m!5824670))

(assert (=> b!4830999 d!1548840))

(declare-fun d!1548842 () Bool)

(declare-fun e!3019010 () Bool)

(assert (=> d!1548842 e!3019010))

(declare-fun res!2057787 () Bool)

(assert (=> d!1548842 (=> (not res!2057787) (not e!3019010))))

(declare-fun lt!1977276 () ListMap!6923)

(assert (=> d!1548842 (= res!2057787 (contains!18874 lt!1977276 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lt!1977277 () List!55188)

(assert (=> d!1548842 (= lt!1977276 (ListMap!6924 lt!1977277))))

(declare-fun lt!1977278 () Unit!143787)

(declare-fun lt!1977275 () Unit!143787)

(assert (=> d!1548842 (= lt!1977278 lt!1977275)))

(assert (=> d!1548842 (= (getValueByKey!2653 lt!1977277 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (Some!13525 (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1232 (List!55188 K!16752 V!16998) Unit!143787)

(assert (=> d!1548842 (= lt!1977275 (lemmaContainsTupThenGetReturnValue!1232 lt!1977277 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!740 (List!55188 K!16752 V!16998) List!55188)

(assert (=> d!1548842 (= lt!1977277 (insertNoDuplicatedKeys!740 (toList!7551 lt!1976902) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> d!1548842 (= (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977276)))

(declare-fun b!4831295 () Bool)

(declare-fun res!2057786 () Bool)

(assert (=> b!4831295 (=> (not res!2057786) (not e!3019010))))

(assert (=> b!4831295 (= res!2057786 (= (getValueByKey!2653 (toList!7551 lt!1977276) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (Some!13525 (_2!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun b!4831296 () Bool)

(declare-fun contains!18880 (List!55188 tuple2!58350) Bool)

(assert (=> b!4831296 (= e!3019010 (contains!18880 (toList!7551 lt!1977276) (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (= (and d!1548842 res!2057787) b!4831295))

(assert (= (and b!4831295 res!2057786) b!4831296))

(declare-fun m!5824672 () Bool)

(assert (=> d!1548842 m!5824672))

(declare-fun m!5824674 () Bool)

(assert (=> d!1548842 m!5824674))

(declare-fun m!5824676 () Bool)

(assert (=> d!1548842 m!5824676))

(declare-fun m!5824678 () Bool)

(assert (=> d!1548842 m!5824678))

(declare-fun m!5824680 () Bool)

(assert (=> b!4831295 m!5824680))

(declare-fun m!5824682 () Bool)

(assert (=> b!4831296 m!5824682))

(assert (=> b!4830999 d!1548842))

(declare-fun d!1548844 () Bool)

(declare-fun res!2057788 () Bool)

(declare-fun e!3019011 () Bool)

(assert (=> d!1548844 (=> res!2057788 e!3019011)))

(assert (=> d!1548844 (= res!2057788 (is-Nil!55064 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> d!1548844 (= (forall!12677 (_2!32470 (h!61499 (toList!7552 lm!2325))) lambda!238052) e!3019011)))

(declare-fun b!4831297 () Bool)

(declare-fun e!3019012 () Bool)

(assert (=> b!4831297 (= e!3019011 e!3019012)))

(declare-fun res!2057789 () Bool)

(assert (=> b!4831297 (=> (not res!2057789) (not e!3019012))))

(assert (=> b!4831297 (= res!2057789 (dynLambda!22248 lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun b!4831298 () Bool)

(assert (=> b!4831298 (= e!3019012 (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238052))))

(assert (= (and d!1548844 (not res!2057788)) b!4831297))

(assert (= (and b!4831297 res!2057789) b!4831298))

(declare-fun b_lambda!190695 () Bool)

(assert (=> (not b_lambda!190695) (not b!4831297)))

(declare-fun m!5824684 () Bool)

(assert (=> b!4831297 m!5824684))

(assert (=> b!4831298 m!5824216))

(assert (=> b!4830999 d!1548844))

(declare-fun d!1548846 () Bool)

(assert (=> d!1548846 (dynLambda!22248 lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(declare-fun lt!1977281 () Unit!143787)

(declare-fun choose!35261 (List!55188 Int tuple2!58350) Unit!143787)

(assert (=> d!1548846 (= lt!1977281 (choose!35261 (toList!7551 lt!1977019) lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun e!3019015 () Bool)

(assert (=> d!1548846 e!3019015))

(declare-fun res!2057792 () Bool)

(assert (=> d!1548846 (=> (not res!2057792) (not e!3019015))))

(assert (=> d!1548846 (= res!2057792 (forall!12677 (toList!7551 lt!1977019) lambda!238052))))

(assert (=> d!1548846 (= (forallContained!4412 (toList!7551 lt!1977019) lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) lt!1977281)))

(declare-fun b!4831301 () Bool)

(assert (=> b!4831301 (= e!3019015 (contains!18880 (toList!7551 lt!1977019) (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(assert (= (and d!1548846 res!2057792) b!4831301))

(declare-fun b_lambda!190697 () Bool)

(assert (=> (not b_lambda!190697) (not d!1548846)))

(assert (=> d!1548846 m!5824684))

(declare-fun m!5824686 () Bool)

(assert (=> d!1548846 m!5824686))

(assert (=> d!1548846 m!5824212))

(declare-fun m!5824688 () Bool)

(assert (=> b!4831301 m!5824688))

(assert (=> b!4830999 d!1548846))

(declare-fun d!1548848 () Bool)

(declare-fun lt!1977282 () Bool)

(assert (=> d!1548848 (= lt!1977282 (set.member key!5594 (content!9834 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))))

(declare-fun e!3019017 () Bool)

(assert (=> d!1548848 (= lt!1977282 e!3019017)))

(declare-fun res!2057794 () Bool)

(assert (=> d!1548848 (=> (not res!2057794) (not e!3019017))))

(assert (=> d!1548848 (= res!2057794 (is-Cons!55068 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))

(assert (=> d!1548848 (= (contains!18878 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) key!5594) lt!1977282)))

(declare-fun b!4831302 () Bool)

(declare-fun e!3019016 () Bool)

(assert (=> b!4831302 (= e!3019017 e!3019016)))

(declare-fun res!2057793 () Bool)

(assert (=> b!4831302 (=> res!2057793 e!3019016)))

(assert (=> b!4831302 (= res!2057793 (= (h!61502 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) key!5594))))

(declare-fun b!4831303 () Bool)

(assert (=> b!4831303 (= e!3019016 (contains!18878 (t!362688 (keys!20280 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) key!5594))))

(assert (= (and d!1548848 res!2057794) b!4831302))

(assert (= (and b!4831302 (not res!2057793)) b!4831303))

(assert (=> d!1548848 m!5824260))

(declare-fun m!5824690 () Bool)

(assert (=> d!1548848 m!5824690))

(declare-fun m!5824692 () Bool)

(assert (=> d!1548848 m!5824692))

(declare-fun m!5824694 () Bool)

(assert (=> b!4831303 m!5824694))

(assert (=> b!4831042 d!1548848))

(assert (=> b!4831042 d!1548766))

(assert (=> b!4831044 d!1548782))

(assert (=> b!4831044 d!1548784))

(declare-fun d!1548850 () Bool)

(assert (=> d!1548850 (isDefined!10641 (getValueByKey!2653 (toList!7551 lt!1976902) key!5594))))

(declare-fun lt!1977283 () Unit!143787)

(assert (=> d!1548850 (= lt!1977283 (choose!35255 (toList!7551 lt!1976902) key!5594))))

(assert (=> d!1548850 (invariantList!1827 (toList!7551 lt!1976902))))

(assert (=> d!1548850 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2438 (toList!7551 lt!1976902) key!5594) lt!1977283)))

(declare-fun bs!1166173 () Bool)

(assert (= bs!1166173 d!1548850))

(assert (=> bs!1166173 m!5824310))

(assert (=> bs!1166173 m!5824310))

(assert (=> bs!1166173 m!5824312))

(declare-fun m!5824696 () Bool)

(assert (=> bs!1166173 m!5824696))

(assert (=> bs!1166173 m!5824498))

(assert (=> b!4831067 d!1548850))

(assert (=> b!4831067 d!1548768))

(assert (=> b!4831067 d!1548770))

(declare-fun d!1548852 () Bool)

(assert (=> d!1548852 (contains!18878 (getKeysList!1173 (toList!7551 lt!1976902)) key!5594)))

(declare-fun lt!1977284 () Unit!143787)

(assert (=> d!1548852 (= lt!1977284 (choose!35256 (toList!7551 lt!1976902) key!5594))))

(assert (=> d!1548852 (invariantList!1827 (toList!7551 lt!1976902))))

(assert (=> d!1548852 (= (lemmaInListThenGetKeysListContains!1168 (toList!7551 lt!1976902) key!5594) lt!1977284)))

(declare-fun bs!1166174 () Bool)

(assert (= bs!1166174 d!1548852))

(assert (=> bs!1166174 m!5824316))

(assert (=> bs!1166174 m!5824316))

(declare-fun m!5824698 () Bool)

(assert (=> bs!1166174 m!5824698))

(declare-fun m!5824700 () Bool)

(assert (=> bs!1166174 m!5824700))

(assert (=> bs!1166174 m!5824498))

(assert (=> b!4831067 d!1548852))

(assert (=> b!4830995 d!1548832))

(declare-fun d!1548854 () Bool)

(assert (=> d!1548854 (isDefined!10640 (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898))))

(declare-fun lt!1977287 () Unit!143787)

(declare-fun choose!35262 (List!55189 (_ BitVec 64)) Unit!143787)

(assert (=> d!1548854 (= lt!1977287 (choose!35262 (toList!7552 lm!2325) lt!1976898))))

(declare-fun e!3019020 () Bool)

(assert (=> d!1548854 e!3019020))

(declare-fun res!2057797 () Bool)

(assert (=> d!1548854 (=> (not res!2057797) (not e!3019020))))

(assert (=> d!1548854 (= res!2057797 (isStrictlySorted!1002 (toList!7552 lm!2325)))))

(assert (=> d!1548854 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2437 (toList!7552 lm!2325) lt!1976898) lt!1977287)))

(declare-fun b!4831306 () Bool)

(assert (=> b!4831306 (= e!3019020 (containsKey!4434 (toList!7552 lm!2325) lt!1976898))))

(assert (= (and d!1548854 res!2057797) b!4831306))

(assert (=> d!1548854 m!5824126))

(assert (=> d!1548854 m!5824126))

(assert (=> d!1548854 m!5824128))

(declare-fun m!5824702 () Bool)

(assert (=> d!1548854 m!5824702))

(assert (=> d!1548854 m!5824290))

(assert (=> b!4831306 m!5824122))

(assert (=> b!4830916 d!1548854))

(declare-fun d!1548856 () Bool)

(declare-fun isEmpty!29688 (Option!13525) Bool)

(assert (=> d!1548856 (= (isDefined!10640 (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898)) (not (isEmpty!29688 (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898))))))

(declare-fun bs!1166175 () Bool)

(assert (= bs!1166175 d!1548856))

(assert (=> bs!1166175 m!5824126))

(declare-fun m!5824704 () Bool)

(assert (=> bs!1166175 m!5824704))

(assert (=> b!4830916 d!1548856))

(declare-fun b!4831310 () Bool)

(declare-fun e!3019022 () Option!13525)

(assert (=> b!4831310 (= e!3019022 None!13524)))

(declare-fun b!4831309 () Bool)

(assert (=> b!4831309 (= e!3019022 (getValueByKey!2652 (t!362685 (toList!7552 lm!2325)) lt!1976898))))

(declare-fun b!4831307 () Bool)

(declare-fun e!3019021 () Option!13525)

(assert (=> b!4831307 (= e!3019021 (Some!13524 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(declare-fun b!4831308 () Bool)

(assert (=> b!4831308 (= e!3019021 e!3019022)))

(declare-fun c!823220 () Bool)

(assert (=> b!4831308 (= c!823220 (and (is-Cons!55065 (toList!7552 lm!2325)) (not (= (_1!32470 (h!61499 (toList!7552 lm!2325))) lt!1976898))))))

(declare-fun d!1548858 () Bool)

(declare-fun c!823219 () Bool)

(assert (=> d!1548858 (= c!823219 (and (is-Cons!55065 (toList!7552 lm!2325)) (= (_1!32470 (h!61499 (toList!7552 lm!2325))) lt!1976898)))))

(assert (=> d!1548858 (= (getValueByKey!2652 (toList!7552 lm!2325) lt!1976898) e!3019021)))

(assert (= (and d!1548858 c!823219) b!4831307))

(assert (= (and d!1548858 (not c!823219)) b!4831308))

(assert (= (and b!4831308 c!823220) b!4831309))

(assert (= (and b!4831308 (not c!823220)) b!4831310))

(declare-fun m!5824706 () Bool)

(assert (=> b!4831309 m!5824706))

(assert (=> b!4830916 d!1548858))

(declare-fun d!1548860 () Bool)

(declare-fun res!2057798 () Bool)

(declare-fun e!3019023 () Bool)

(assert (=> d!1548860 (=> res!2057798 e!3019023)))

(assert (=> d!1548860 (= res!2057798 (is-Nil!55065 (toList!7552 lm!2325)))))

(assert (=> d!1548860 (= (forall!12675 (toList!7552 lm!2325) lambda!238017) e!3019023)))

(declare-fun b!4831311 () Bool)

(declare-fun e!3019024 () Bool)

(assert (=> b!4831311 (= e!3019023 e!3019024)))

(declare-fun res!2057799 () Bool)

(assert (=> b!4831311 (=> (not res!2057799) (not e!3019024))))

(assert (=> b!4831311 (= res!2057799 (dynLambda!22246 lambda!238017 (h!61499 (toList!7552 lm!2325))))))

(declare-fun b!4831312 () Bool)

(assert (=> b!4831312 (= e!3019024 (forall!12675 (t!362685 (toList!7552 lm!2325)) lambda!238017))))

(assert (= (and d!1548860 (not res!2057798)) b!4831311))

(assert (= (and b!4831311 res!2057799) b!4831312))

(declare-fun b_lambda!190699 () Bool)

(assert (=> (not b_lambda!190699) (not b!4831311)))

(declare-fun m!5824708 () Bool)

(assert (=> b!4831311 m!5824708))

(declare-fun m!5824710 () Bool)

(assert (=> b!4831312 m!5824710))

(assert (=> d!1548672 d!1548860))

(assert (=> b!4830918 d!1548856))

(assert (=> b!4830918 d!1548858))

(declare-fun d!1548862 () Bool)

(assert (=> d!1548862 (= (tail!9435 (toList!7552 lm!2325)) (t!362685 (toList!7552 lm!2325)))))

(assert (=> d!1548682 d!1548862))

(assert (=> b!4831061 d!1548794))

(declare-fun d!1548864 () Bool)

(assert (=> d!1548864 (containsKey!4435 (toList!7551 lt!1976902) key!5594)))

(declare-fun lt!1977288 () Unit!143787)

(assert (=> d!1548864 (= lt!1977288 (choose!35257 (toList!7551 lt!1976902) key!5594))))

(assert (=> d!1548864 (invariantList!1827 (toList!7551 lt!1976902))))

(assert (=> d!1548864 (= (lemmaInGetKeysListThenContainsKey!1173 (toList!7551 lt!1976902) key!5594) lt!1977288)))

(declare-fun bs!1166176 () Bool)

(assert (= bs!1166176 d!1548864))

(assert (=> bs!1166176 m!5824298))

(declare-fun m!5824712 () Bool)

(assert (=> bs!1166176 m!5824712))

(assert (=> bs!1166176 m!5824498))

(assert (=> b!4831061 d!1548864))

(declare-fun d!1548866 () Bool)

(declare-fun res!2057800 () Bool)

(declare-fun e!3019025 () Bool)

(assert (=> d!1548866 (=> res!2057800 e!3019025)))

(assert (=> d!1548866 (= res!2057800 (is-Nil!55065 (toList!7552 lt!1976900)))))

(assert (=> d!1548866 (= (forall!12675 (toList!7552 lt!1976900) lambda!238060) e!3019025)))

(declare-fun b!4831313 () Bool)

(declare-fun e!3019026 () Bool)

(assert (=> b!4831313 (= e!3019025 e!3019026)))

(declare-fun res!2057801 () Bool)

(assert (=> b!4831313 (=> (not res!2057801) (not e!3019026))))

(assert (=> b!4831313 (= res!2057801 (dynLambda!22246 lambda!238060 (h!61499 (toList!7552 lt!1976900))))))

(declare-fun b!4831314 () Bool)

(assert (=> b!4831314 (= e!3019026 (forall!12675 (t!362685 (toList!7552 lt!1976900)) lambda!238060))))

(assert (= (and d!1548866 (not res!2057800)) b!4831313))

(assert (= (and b!4831313 res!2057801) b!4831314))

(declare-fun b_lambda!190701 () Bool)

(assert (=> (not b_lambda!190701) (not b!4831313)))

(declare-fun m!5824714 () Bool)

(assert (=> b!4831313 m!5824714))

(declare-fun m!5824716 () Bool)

(assert (=> b!4831314 m!5824716))

(assert (=> d!1548726 d!1548866))

(declare-fun d!1548868 () Bool)

(declare-fun res!2057802 () Bool)

(declare-fun e!3019027 () Bool)

(assert (=> d!1548868 (=> res!2057802 e!3019027)))

(assert (=> d!1548868 (= res!2057802 (is-Nil!55064 (toList!7551 lt!1976902)))))

(assert (=> d!1548868 (= (forall!12677 (toList!7551 lt!1976902) lambda!238053) e!3019027)))

(declare-fun b!4831315 () Bool)

(declare-fun e!3019028 () Bool)

(assert (=> b!4831315 (= e!3019027 e!3019028)))

(declare-fun res!2057803 () Bool)

(assert (=> b!4831315 (=> (not res!2057803) (not e!3019028))))

(assert (=> b!4831315 (= res!2057803 (dynLambda!22248 lambda!238053 (h!61498 (toList!7551 lt!1976902))))))

(declare-fun b!4831316 () Bool)

(assert (=> b!4831316 (= e!3019028 (forall!12677 (t!362684 (toList!7551 lt!1976902)) lambda!238053))))

(assert (= (and d!1548868 (not res!2057802)) b!4831315))

(assert (= (and b!4831315 res!2057803) b!4831316))

(declare-fun b_lambda!190703 () Bool)

(assert (=> (not b_lambda!190703) (not b!4831315)))

(declare-fun m!5824718 () Bool)

(assert (=> b!4831315 m!5824718))

(declare-fun m!5824720 () Bool)

(assert (=> b!4831316 m!5824720))

(assert (=> b!4830996 d!1548868))

(declare-fun bs!1166177 () Bool)

(declare-fun d!1548870 () Bool)

(assert (= bs!1166177 (and d!1548870 b!4831124)))

(declare-fun lambda!238135 () Int)

(assert (=> bs!1166177 (= (= lt!1976902 lt!1977173) (= lambda!238135 lambda!238101))))

(declare-fun bs!1166178 () Bool)

(assert (= bs!1166178 (and d!1548870 d!1548840)))

(assert (=> bs!1166178 (= (= lt!1976902 lt!1977026) (= lambda!238135 lambda!238132))))

(declare-fun bs!1166179 () Bool)

(assert (= bs!1166179 (and d!1548870 d!1548828)))

(assert (=> bs!1166179 (= (= lt!1976902 lt!1977238) (= lambda!238135 lambda!238127))))

(declare-fun bs!1166180 () Bool)

(assert (= bs!1166180 (and d!1548870 d!1548758)))

(assert (=> bs!1166180 (= (= lt!1976902 lt!1977169) (= lambda!238135 lambda!238102))))

(declare-fun bs!1166181 () Bool)

(assert (= bs!1166181 (and d!1548870 b!4831270)))

(assert (=> bs!1166181 (= (= lt!1976902 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238135 lambda!238124))))

(declare-fun bs!1166182 () Bool)

(assert (= bs!1166182 (and d!1548870 b!4831272)))

(assert (=> bs!1166182 (= (= lt!1976902 lt!1977242) (= lambda!238135 lambda!238126))))

(assert (=> bs!1166182 (= (= lt!1976902 (+!2550 lt!1976902 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (= lambda!238135 lambda!238125))))

(declare-fun bs!1166183 () Bool)

(assert (= bs!1166183 (and d!1548870 d!1548686)))

(assert (=> bs!1166183 (= (= lt!1976902 lt!1977022) (= lambda!238135 lambda!238053))))

(declare-fun bs!1166184 () Bool)

(assert (= bs!1166184 (and d!1548870 b!4830999)))

(assert (=> bs!1166184 (= lambda!238135 lambda!238051)))

(declare-fun bs!1166185 () Bool)

(assert (= bs!1166185 (and d!1548870 b!4831122)))

(assert (=> bs!1166185 (= (= lt!1976902 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238135 lambda!238099))))

(assert (=> bs!1166177 (= (= lt!1976902 (extractMap!2713 (t!362685 (t!362685 (toList!7552 lm!2325))))) (= lambda!238135 lambda!238100))))

(declare-fun bs!1166186 () Bool)

(assert (= bs!1166186 (and d!1548870 b!4830997)))

(assert (=> bs!1166186 (= lambda!238135 lambda!238050)))

(assert (=> bs!1166184 (= (= lt!1976902 lt!1977026) (= lambda!238135 lambda!238052))))

(assert (=> d!1548870 true))

(assert (=> d!1548870 (forall!12677 (toList!7551 lt!1976902) lambda!238135)))

(declare-fun lt!1977291 () Unit!143787)

(declare-fun choose!35263 (ListMap!6923) Unit!143787)

(assert (=> d!1548870 (= lt!1977291 (choose!35263 lt!1976902))))

(assert (=> d!1548870 (= (lemmaContainsAllItsOwnKeys!1005 lt!1976902) lt!1977291)))

(declare-fun bs!1166187 () Bool)

(assert (= bs!1166187 d!1548870))

(declare-fun m!5824722 () Bool)

(assert (=> bs!1166187 m!5824722))

(declare-fun m!5824724 () Bool)

(assert (=> bs!1166187 m!5824724))

(assert (=> bm!336665 d!1548870))

(assert (=> b!4831040 d!1548848))

(assert (=> b!4831040 d!1548766))

(assert (=> b!4831063 d!1548764))

(declare-fun d!1548872 () Bool)

(declare-fun res!2057804 () Bool)

(declare-fun e!3019029 () Bool)

(assert (=> d!1548872 (=> res!2057804 e!3019029)))

(assert (=> d!1548872 (= res!2057804 (is-Nil!55064 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> d!1548872 (= (forall!12677 (_2!32470 (h!61499 (toList!7552 lm!2325))) lambda!238053) e!3019029)))

(declare-fun b!4831317 () Bool)

(declare-fun e!3019030 () Bool)

(assert (=> b!4831317 (= e!3019029 e!3019030)))

(declare-fun res!2057805 () Bool)

(assert (=> b!4831317 (=> (not res!2057805) (not e!3019030))))

(assert (=> b!4831317 (= res!2057805 (dynLambda!22248 lambda!238053 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))

(declare-fun b!4831318 () Bool)

(assert (=> b!4831318 (= e!3019030 (forall!12677 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))) lambda!238053))))

(assert (= (and d!1548872 (not res!2057804)) b!4831317))

(assert (= (and b!4831317 res!2057805) b!4831318))

(declare-fun b_lambda!190705 () Bool)

(assert (=> (not b_lambda!190705) (not b!4831317)))

(declare-fun m!5824726 () Bool)

(assert (=> b!4831317 m!5824726))

(declare-fun m!5824728 () Bool)

(assert (=> b!4831318 m!5824728))

(assert (=> d!1548686 d!1548872))

(assert (=> d!1548686 d!1548800))

(declare-fun d!1548874 () Bool)

(declare-fun lt!1977292 () Int)

(assert (=> d!1548874 (>= lt!1977292 0)))

(declare-fun e!3019031 () Int)

(assert (=> d!1548874 (= lt!1977292 e!3019031)))

(declare-fun c!823221 () Bool)

(assert (=> d!1548874 (= c!823221 (is-Nil!55065 (t!362685 (toList!7552 lm!2325))))))

(assert (=> d!1548874 (= (size!36631 (t!362685 (toList!7552 lm!2325))) lt!1977292)))

(declare-fun b!4831319 () Bool)

(assert (=> b!4831319 (= e!3019031 0)))

(declare-fun b!4831320 () Bool)

(assert (=> b!4831320 (= e!3019031 (+ 1 (size!36631 (t!362685 (t!362685 (toList!7552 lm!2325))))))))

(assert (= (and d!1548874 c!823221) b!4831319))

(assert (= (and d!1548874 (not c!823221)) b!4831320))

(declare-fun m!5824730 () Bool)

(assert (=> b!4831320 m!5824730))

(assert (=> b!4831060 d!1548874))

(declare-fun bs!1166188 () Bool)

(declare-fun b!4831325 () Bool)

(assert (= bs!1166188 (and b!4831325 b!4831185)))

(declare-fun lambda!238136 () Int)

(assert (=> bs!1166188 (= (= (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902)))) (= lambda!238136 lambda!238121))))

(declare-fun bs!1166189 () Bool)

(assert (= bs!1166189 (and b!4831325 b!4831145)))

(assert (=> bs!1166189 (= (= (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= lambda!238136 lambda!238110))))

(declare-fun bs!1166190 () Bool)

(assert (= bs!1166190 (and b!4831325 b!4831191)))

(assert (=> bs!1166190 (= (= (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (toList!7551 lt!1976902)) (= lambda!238136 lambda!238122))))

(declare-fun bs!1166191 () Bool)

(assert (= bs!1166191 (and b!4831325 b!4831140)))

(assert (=> bs!1166191 (= (= (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (toList!7551 lt!1976902)) (= lambda!238136 lambda!238108))))

(declare-fun bs!1166192 () Bool)

(assert (= bs!1166192 (and b!4831325 b!4831187)))

(assert (=> bs!1166192 (= (= (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 lt!1976902))) (= lambda!238136 lambda!238120))))

(assert (=> b!4831325 true))

(declare-fun bs!1166193 () Bool)

(declare-fun b!4831323 () Bool)

(assert (= bs!1166193 (and b!4831323 b!4831185)))

(declare-fun lambda!238137 () Int)

(assert (=> bs!1166193 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902)))) (= lambda!238137 lambda!238121))))

(declare-fun bs!1166194 () Bool)

(assert (= bs!1166194 (and b!4831323 b!4831145)))

(assert (=> bs!1166194 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (= lambda!238137 lambda!238110))))

(declare-fun bs!1166195 () Bool)

(assert (= bs!1166195 (and b!4831323 b!4831191)))

(assert (=> bs!1166195 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (toList!7551 lt!1976902)) (= lambda!238137 lambda!238122))))

(declare-fun bs!1166196 () Bool)

(assert (= bs!1166196 (and b!4831323 b!4831140)))

(assert (=> bs!1166196 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (toList!7551 lt!1976902)) (= lambda!238137 lambda!238108))))

(declare-fun bs!1166197 () Bool)

(assert (= bs!1166197 (and b!4831323 b!4831325)))

(assert (=> bs!1166197 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (= lambda!238137 lambda!238136))))

(declare-fun bs!1166198 () Bool)

(assert (= bs!1166198 (and b!4831323 b!4831187)))

(assert (=> bs!1166198 (= (= (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (t!362684 (toList!7551 lt!1976902))) (= lambda!238137 lambda!238120))))

(assert (=> b!4831323 true))

(declare-fun bs!1166199 () Bool)

(declare-fun b!4831329 () Bool)

(assert (= bs!1166199 (and b!4831329 b!4831323)))

(declare-fun lambda!238138 () Int)

(assert (=> bs!1166199 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (Cons!55064 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))) (= lambda!238138 lambda!238137))))

(declare-fun bs!1166200 () Bool)

(assert (= bs!1166200 (and b!4831329 b!4831185)))

(assert (=> bs!1166200 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (Cons!55064 (h!61498 (toList!7551 lt!1976902)) (t!362684 (toList!7551 lt!1976902)))) (= lambda!238138 lambda!238121))))

(declare-fun bs!1166201 () Bool)

(assert (= bs!1166201 (and b!4831329 b!4831145)))

(assert (=> bs!1166201 (= lambda!238138 lambda!238110)))

(declare-fun bs!1166202 () Bool)

(assert (= bs!1166202 (and b!4831329 b!4831191)))

(assert (=> bs!1166202 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (toList!7551 lt!1976902)) (= lambda!238138 lambda!238122))))

(declare-fun bs!1166203 () Bool)

(assert (= bs!1166203 (and b!4831329 b!4831140)))

(assert (=> bs!1166203 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (toList!7551 lt!1976902)) (= lambda!238138 lambda!238108))))

(declare-fun bs!1166204 () Bool)

(assert (= bs!1166204 (and b!4831329 b!4831325)))

(assert (=> bs!1166204 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (= lambda!238138 lambda!238136))))

(declare-fun bs!1166205 () Bool)

(assert (= bs!1166205 (and b!4831329 b!4831187)))

(assert (=> bs!1166205 (= (= (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) (t!362684 (toList!7551 lt!1976902))) (= lambda!238138 lambda!238120))))

(assert (=> b!4831329 true))

(declare-fun bs!1166206 () Bool)

(declare-fun b!4831321 () Bool)

(assert (= bs!1166206 (and b!4831321 b!4831141)))

(declare-fun lambda!238139 () Int)

(assert (=> bs!1166206 (= lambda!238139 lambda!238109)))

(declare-fun bs!1166207 () Bool)

(assert (= bs!1166207 (and b!4831321 b!4831146)))

(assert (=> bs!1166207 (= lambda!238139 lambda!238111)))

(declare-fun bs!1166208 () Bool)

(assert (= bs!1166208 (and b!4831321 b!4831183)))

(assert (=> bs!1166208 (= lambda!238139 lambda!238123)))

(declare-fun e!3019034 () Bool)

(declare-fun lt!1977298 () List!55192)

(assert (=> b!4831321 (= e!3019034 (= (content!9834 lt!1977298) (content!9834 (map!12614 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)) lambda!238139))))))

(declare-fun b!4831322 () Bool)

(declare-fun e!3019032 () List!55192)

(assert (=> b!4831322 (= e!3019032 Nil!55068)))

(assert (=> b!4831323 (= e!3019032 (Cons!55068 (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (getKeysList!1173 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))))

(declare-fun c!823224 () Bool)

(assert (=> b!4831323 (= c!823224 (containsKey!4435 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))))

(declare-fun lt!1977294 () Unit!143787)

(declare-fun e!3019033 () Unit!143787)

(assert (=> b!4831323 (= lt!1977294 e!3019033)))

(declare-fun c!823223 () Bool)

(assert (=> b!4831323 (= c!823223 (contains!18878 (getKeysList!1173 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))))

(declare-fun lt!1977299 () Unit!143787)

(declare-fun e!3019035 () Unit!143787)

(assert (=> b!4831323 (= lt!1977299 e!3019035)))

(declare-fun lt!1977293 () List!55192)

(assert (=> b!4831323 (= lt!1977293 (getKeysList!1173 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))))

(declare-fun lt!1977296 () Unit!143787)

(assert (=> b!4831323 (= lt!1977296 (lemmaForallContainsAddHeadPreserves!389 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) lt!1977293 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))))

(assert (=> b!4831323 (forall!12679 lt!1977293 lambda!238137)))

(declare-fun lt!1977297 () Unit!143787)

(assert (=> b!4831323 (= lt!1977297 lt!1977296)))

(declare-fun b!4831324 () Bool)

(declare-fun Unit!143870 () Unit!143787)

(assert (=> b!4831324 (= e!3019035 Unit!143870)))

(assert (=> b!4831325 false))

(declare-fun lt!1977295 () Unit!143787)

(assert (=> b!4831325 (= lt!1977295 (forallContained!4414 (getKeysList!1173 (t!362684 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))) lambda!238136 (_1!32469 (h!61498 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))))

(declare-fun Unit!143871 () Unit!143787)

(assert (=> b!4831325 (= e!3019035 Unit!143871)))

(declare-fun b!4831327 () Bool)

(assert (=> b!4831327 false))

(declare-fun Unit!143872 () Unit!143787)

(assert (=> b!4831327 (= e!3019033 Unit!143872)))

(declare-fun b!4831328 () Bool)

(declare-fun Unit!143873 () Unit!143787)

(assert (=> b!4831328 (= e!3019033 Unit!143873)))

(declare-fun res!2057806 () Bool)

(assert (=> b!4831329 (=> (not res!2057806) (not e!3019034))))

(assert (=> b!4831329 (= res!2057806 (forall!12679 lt!1977298 lambda!238138))))

(declare-fun b!4831326 () Bool)

(declare-fun res!2057808 () Bool)

(assert (=> b!4831326 (=> (not res!2057808) (not e!3019034))))

(assert (=> b!4831326 (= res!2057808 (= (length!806 lt!1977298) (length!807 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))))

(declare-fun d!1548876 () Bool)

(assert (=> d!1548876 e!3019034))

(declare-fun res!2057807 () Bool)

(assert (=> d!1548876 (=> (not res!2057807) (not e!3019034))))

(assert (=> d!1548876 (= res!2057807 (noDuplicate!975 lt!1977298))))

(assert (=> d!1548876 (= lt!1977298 e!3019032)))

(declare-fun c!823222 () Bool)

(assert (=> d!1548876 (= c!823222 (is-Cons!55064 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))))))

(assert (=> d!1548876 (invariantList!1827 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902)))))

(assert (=> d!1548876 (= (getKeysList!1173 (toList!7551 (addToMapMapFromBucket!1828 (_2!32470 (h!61499 (toList!7552 lm!2325))) lt!1976902))) lt!1977298)))

(assert (= (and d!1548876 c!823222) b!4831323))

(assert (= (and d!1548876 (not c!823222)) b!4831322))

(assert (= (and b!4831323 c!823224) b!4831327))

(assert (= (and b!4831323 (not c!823224)) b!4831328))

(assert (= (and b!4831323 c!823223) b!4831325))

(assert (= (and b!4831323 (not c!823223)) b!4831324))

(assert (= (and d!1548876 res!2057807) b!4831326))

(assert (= (and b!4831326 res!2057808) b!4831329))

(assert (= (and b!4831329 res!2057806) b!4831321))

(declare-fun m!5824732 () Bool)

(assert (=> b!4831321 m!5824732))

(declare-fun m!5824734 () Bool)

(assert (=> b!4831321 m!5824734))

(assert (=> b!4831321 m!5824734))

(declare-fun m!5824736 () Bool)

(assert (=> b!4831321 m!5824736))

(declare-fun m!5824738 () Bool)

(assert (=> d!1548876 m!5824738))

(assert (=> d!1548876 m!5824518))

(declare-fun m!5824740 () Bool)

(assert (=> b!4831329 m!5824740))

(declare-fun m!5824742 () Bool)

(assert (=> b!4831326 m!5824742))

(assert (=> b!4831326 m!5824466))

(declare-fun m!5824744 () Bool)

(assert (=> b!4831325 m!5824744))

(assert (=> b!4831325 m!5824744))

(declare-fun m!5824746 () Bool)

(assert (=> b!4831325 m!5824746))

(assert (=> b!4831323 m!5824744))

(declare-fun m!5824748 () Bool)

(assert (=> b!4831323 m!5824748))

(declare-fun m!5824750 () Bool)

(assert (=> b!4831323 m!5824750))

(declare-fun m!5824752 () Bool)

(assert (=> b!4831323 m!5824752))

(declare-fun m!5824754 () Bool)

(assert (=> b!4831323 m!5824754))

(assert (=> b!4831323 m!5824744))

(assert (=> b!4831046 d!1548876))

(declare-fun d!1548878 () Bool)

(declare-fun lt!1977300 () Bool)

(assert (=> d!1548878 (= lt!1977300 (set.member key!5594 (content!9834 e!3018842)))))

(declare-fun e!3019037 () Bool)

(assert (=> d!1548878 (= lt!1977300 e!3019037)))

(declare-fun res!2057810 () Bool)

(assert (=> d!1548878 (=> (not res!2057810) (not e!3019037))))

(assert (=> d!1548878 (= res!2057810 (is-Cons!55068 e!3018842))))

(assert (=> d!1548878 (= (contains!18878 e!3018842 key!5594) lt!1977300)))

(declare-fun b!4831330 () Bool)

(declare-fun e!3019036 () Bool)

(assert (=> b!4831330 (= e!3019037 e!3019036)))

(declare-fun res!2057809 () Bool)

(assert (=> b!4831330 (=> res!2057809 e!3019036)))

(assert (=> b!4831330 (= res!2057809 (= (h!61502 e!3018842) key!5594))))

(declare-fun b!4831331 () Bool)

(assert (=> b!4831331 (= e!3019036 (contains!18878 (t!362688 e!3018842) key!5594))))

(assert (= (and d!1548878 res!2057810) b!4831330))

(assert (= (and b!4831330 (not res!2057809)) b!4831331))

(declare-fun m!5824756 () Bool)

(assert (=> d!1548878 m!5824756))

(declare-fun m!5824758 () Bool)

(assert (=> d!1548878 m!5824758))

(declare-fun m!5824760 () Bool)

(assert (=> b!4831331 m!5824760))

(assert (=> bm!336668 d!1548878))

(declare-fun d!1548880 () Bool)

(declare-fun choose!35266 (Hashable!7305 K!16752) (_ BitVec 64))

(assert (=> d!1548880 (= (hash!5479 hashF!1543 key!5594) (choose!35266 hashF!1543 key!5594))))

(declare-fun bs!1166209 () Bool)

(assert (= bs!1166209 d!1548880))

(declare-fun m!5824762 () Bool)

(assert (=> bs!1166209 m!5824762))

(assert (=> d!1548670 d!1548880))

(declare-fun d!1548882 () Bool)

(assert (=> d!1548882 (isDefined!10640 (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898))))

(declare-fun lt!1977301 () Unit!143787)

(assert (=> d!1548882 (= lt!1977301 (choose!35262 (toList!7552 lt!1976900) lt!1976898))))

(declare-fun e!3019038 () Bool)

(assert (=> d!1548882 e!3019038))

(declare-fun res!2057811 () Bool)

(assert (=> d!1548882 (=> (not res!2057811) (not e!3019038))))

(assert (=> d!1548882 (= res!2057811 (isStrictlySorted!1002 (toList!7552 lt!1976900)))))

(assert (=> d!1548882 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2437 (toList!7552 lt!1976900) lt!1976898) lt!1977301)))

(declare-fun b!4831332 () Bool)

(assert (=> b!4831332 (= e!3019038 (containsKey!4434 (toList!7552 lt!1976900) lt!1976898))))

(assert (= (and d!1548882 res!2057811) b!4831332))

(assert (=> d!1548882 m!5824282))

(assert (=> d!1548882 m!5824282))

(assert (=> d!1548882 m!5824284))

(declare-fun m!5824764 () Bool)

(assert (=> d!1548882 m!5824764))

(declare-fun m!5824766 () Bool)

(assert (=> d!1548882 m!5824766))

(assert (=> b!4831332 m!5824278))

(assert (=> b!4831048 d!1548882))

(declare-fun d!1548884 () Bool)

(assert (=> d!1548884 (= (isDefined!10640 (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898)) (not (isEmpty!29688 (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898))))))

(declare-fun bs!1166210 () Bool)

(assert (= bs!1166210 d!1548884))

(assert (=> bs!1166210 m!5824282))

(declare-fun m!5824768 () Bool)

(assert (=> bs!1166210 m!5824768))

(assert (=> b!4831048 d!1548884))

(declare-fun b!4831336 () Bool)

(declare-fun e!3019040 () Option!13525)

(assert (=> b!4831336 (= e!3019040 None!13524)))

(declare-fun b!4831335 () Bool)

(assert (=> b!4831335 (= e!3019040 (getValueByKey!2652 (t!362685 (toList!7552 lt!1976900)) lt!1976898))))

(declare-fun b!4831333 () Bool)

(declare-fun e!3019039 () Option!13525)

(assert (=> b!4831333 (= e!3019039 (Some!13524 (_2!32470 (h!61499 (toList!7552 lt!1976900)))))))

(declare-fun b!4831334 () Bool)

(assert (=> b!4831334 (= e!3019039 e!3019040)))

(declare-fun c!823226 () Bool)

(assert (=> b!4831334 (= c!823226 (and (is-Cons!55065 (toList!7552 lt!1976900)) (not (= (_1!32470 (h!61499 (toList!7552 lt!1976900))) lt!1976898))))))

(declare-fun d!1548886 () Bool)

(declare-fun c!823225 () Bool)

(assert (=> d!1548886 (= c!823225 (and (is-Cons!55065 (toList!7552 lt!1976900)) (= (_1!32470 (h!61499 (toList!7552 lt!1976900))) lt!1976898)))))

(assert (=> d!1548886 (= (getValueByKey!2652 (toList!7552 lt!1976900) lt!1976898) e!3019039)))

(assert (= (and d!1548886 c!823225) b!4831333))

(assert (= (and d!1548886 (not c!823225)) b!4831334))

(assert (= (and b!4831334 c!823226) b!4831335))

(assert (= (and b!4831334 (not c!823226)) b!4831336))

(declare-fun m!5824770 () Bool)

(assert (=> b!4831335 m!5824770))

(assert (=> b!4831048 d!1548886))

(assert (=> b!4831050 d!1548884))

(assert (=> b!4831050 d!1548886))

(declare-fun d!1548888 () Bool)

(declare-fun res!2057812 () Bool)

(declare-fun e!3019041 () Bool)

(assert (=> d!1548888 (=> res!2057812 e!3019041)))

(assert (=> d!1548888 (= res!2057812 (not (is-Cons!55064 (_2!32470 (h!61499 (toList!7552 lt!1976900))))))))

(assert (=> d!1548888 (= (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lt!1976900)))) e!3019041)))

(declare-fun b!4831337 () Bool)

(declare-fun e!3019042 () Bool)

(assert (=> b!4831337 (= e!3019041 e!3019042)))

(declare-fun res!2057813 () Bool)

(assert (=> b!4831337 (=> (not res!2057813) (not e!3019042))))

(assert (=> b!4831337 (= res!2057813 (not (containsKey!4432 (t!362684 (_2!32470 (h!61499 (toList!7552 lt!1976900)))) (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lt!1976900))))))))))

(declare-fun b!4831338 () Bool)

(assert (=> b!4831338 (= e!3019042 (noDuplicateKeys!2471 (t!362684 (_2!32470 (h!61499 (toList!7552 lt!1976900))))))))

(assert (= (and d!1548888 (not res!2057812)) b!4831337))

(assert (= (and b!4831337 res!2057813) b!4831338))

(declare-fun m!5824772 () Bool)

(assert (=> b!4831337 m!5824772))

(declare-fun m!5824774 () Bool)

(assert (=> b!4831338 m!5824774))

(assert (=> bs!1166087 d!1548888))

(assert (=> b!4830923 d!1548732))

(declare-fun b!4831343 () Bool)

(declare-fun e!3019045 () Bool)

(declare-fun tp!1362911 () Bool)

(declare-fun tp_is_empty!34569 () Bool)

(assert (=> b!4831343 (= e!3019045 (and tp_is_empty!34565 tp_is_empty!34569 tp!1362911))))

(assert (=> b!4831074 (= tp!1362901 e!3019045)))

(assert (= (and b!4831074 (is-Cons!55064 (_2!32470 (h!61499 (toList!7552 lm!2325))))) b!4831343))

(declare-fun b!4831344 () Bool)

(declare-fun e!3019046 () Bool)

(declare-fun tp!1362912 () Bool)

(declare-fun tp!1362913 () Bool)

(assert (=> b!4831344 (= e!3019046 (and tp!1362912 tp!1362913))))

(assert (=> b!4831074 (= tp!1362902 e!3019046)))

(assert (= (and b!4831074 (is-Cons!55065 (t!362685 (toList!7552 lm!2325)))) b!4831344))

(declare-fun b_lambda!190707 () Bool)

(assert (= b_lambda!190687 (or b!4830999 b_lambda!190707)))

(declare-fun bs!1166211 () Bool)

(declare-fun d!1548890 () Bool)

(assert (= bs!1166211 (and d!1548890 b!4830999)))

(assert (=> bs!1166211 (= (dynLambda!22248 lambda!238051 (h!61498 (toList!7551 lt!1976902))) (contains!18874 lt!1976902 (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun m!5824776 () Bool)

(assert (=> bs!1166211 m!5824776))

(assert (=> b!4831273 d!1548890))

(declare-fun b_lambda!190709 () Bool)

(assert (= b_lambda!190697 (or b!4830999 b_lambda!190709)))

(declare-fun bs!1166212 () Bool)

(declare-fun d!1548892 () Bool)

(assert (= bs!1166212 (and d!1548892 b!4830999)))

(assert (=> bs!1166212 (= (dynLambda!22248 lambda!238052 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (contains!18874 lt!1977026 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(assert (=> bs!1166212 m!5824204))

(assert (=> d!1548846 d!1548892))

(declare-fun b_lambda!190711 () Bool)

(assert (= b_lambda!190701 (or d!1548726 b_lambda!190711)))

(declare-fun bs!1166213 () Bool)

(declare-fun d!1548894 () Bool)

(assert (= bs!1166213 (and d!1548894 d!1548726)))

(declare-fun allKeysSameHash!2018 (List!55188 (_ BitVec 64) Hashable!7305) Bool)

(assert (=> bs!1166213 (= (dynLambda!22246 lambda!238060 (h!61499 (toList!7552 lt!1976900))) (allKeysSameHash!2018 (_2!32470 (h!61499 (toList!7552 lt!1976900))) (_1!32470 (h!61499 (toList!7552 lt!1976900))) hashF!1543))))

(declare-fun m!5824778 () Bool)

(assert (=> bs!1166213 m!5824778))

(assert (=> b!4831313 d!1548894))

(declare-fun b_lambda!190713 () Bool)

(assert (= b_lambda!190683 (or d!1548710 b_lambda!190713)))

(declare-fun bs!1166214 () Bool)

(declare-fun d!1548896 () Bool)

(assert (= bs!1166214 (and d!1548896 d!1548710)))

(assert (=> bs!1166214 (= (dynLambda!22246 lambda!238056 (h!61499 (t!362685 (toList!7552 lm!2325)))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))

(assert (=> bs!1166214 m!5824400))

(assert (=> b!4831237 d!1548896))

(declare-fun b_lambda!190715 () Bool)

(assert (= b_lambda!190675 (or start!501854 b_lambda!190715)))

(declare-fun bs!1166215 () Bool)

(declare-fun d!1548898 () Bool)

(assert (= bs!1166215 (and d!1548898 start!501854)))

(assert (=> bs!1166215 (= (dynLambda!22246 lambda!238009 (h!61499 (t!362685 (toList!7552 lm!2325)))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (t!362685 (toList!7552 lm!2325))))))))

(assert (=> bs!1166215 m!5824400))

(assert (=> b!4831159 d!1548898))

(declare-fun b_lambda!190717 () Bool)

(assert (= b_lambda!190695 (or b!4830999 b_lambda!190717)))

(assert (=> b!4831297 d!1548892))

(declare-fun b_lambda!190719 () Bool)

(assert (= b_lambda!190685 (or d!1548714 b_lambda!190719)))

(declare-fun bs!1166216 () Bool)

(declare-fun d!1548900 () Bool)

(assert (= bs!1166216 (and d!1548900 d!1548714)))

(assert (=> bs!1166216 (= (dynLambda!22246 lambda!238059 (h!61499 (toList!7552 lm!2325))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))

(assert (=> bs!1166216 m!5824136))

(assert (=> b!4831241 d!1548900))

(declare-fun b_lambda!190721 () Bool)

(assert (= b_lambda!190691 (or b!4830999 b_lambda!190721)))

(declare-fun bs!1166217 () Bool)

(declare-fun d!1548902 () Bool)

(assert (= bs!1166217 (and d!1548902 b!4830999)))

(assert (=> bs!1166217 (= (dynLambda!22248 lambda!238052 (h!61498 (toList!7551 lt!1977019))) (contains!18874 lt!1977026 (_1!32469 (h!61498 (toList!7551 lt!1977019)))))))

(declare-fun m!5824780 () Bool)

(assert (=> bs!1166217 m!5824780))

(assert (=> b!4831277 d!1548902))

(declare-fun b_lambda!190723 () Bool)

(assert (= b_lambda!190689 (or b!4830999 b_lambda!190723)))

(declare-fun bs!1166218 () Bool)

(declare-fun d!1548904 () Bool)

(assert (= bs!1166218 (and d!1548904 b!4830999)))

(assert (=> bs!1166218 (= (dynLambda!22248 lambda!238052 (h!61498 (toList!7551 lt!1976902))) (contains!18874 lt!1977026 (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun m!5824782 () Bool)

(assert (=> bs!1166218 m!5824782))

(assert (=> b!4831275 d!1548904))

(declare-fun b_lambda!190725 () Bool)

(assert (= b_lambda!190705 (or d!1548686 b_lambda!190725)))

(declare-fun bs!1166219 () Bool)

(declare-fun d!1548906 () Bool)

(assert (= bs!1166219 (and d!1548906 d!1548686)))

(assert (=> bs!1166219 (= (dynLambda!22248 lambda!238053 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325))))) (contains!18874 lt!1977022 (_1!32469 (h!61498 (_2!32470 (h!61499 (toList!7552 lm!2325)))))))))

(declare-fun m!5824784 () Bool)

(assert (=> bs!1166219 m!5824784))

(assert (=> b!4831317 d!1548906))

(declare-fun b_lambda!190727 () Bool)

(assert (= b_lambda!190677 (or start!501854 b_lambda!190727)))

(declare-fun bs!1166220 () Bool)

(declare-fun d!1548908 () Bool)

(assert (= bs!1166220 (and d!1548908 start!501854)))

(assert (=> bs!1166220 (= (dynLambda!22246 lambda!238009 (h!61499 (t!362685 (toList!7552 lt!1976900)))) (noDuplicateKeys!2471 (_2!32470 (h!61499 (t!362685 (toList!7552 lt!1976900))))))))

(declare-fun m!5824786 () Bool)

(assert (=> bs!1166220 m!5824786))

(assert (=> b!4831161 d!1548908))

(declare-fun b_lambda!190729 () Bool)

(assert (= b_lambda!190693 (or b!4830999 b_lambda!190729)))

(declare-fun bs!1166221 () Bool)

(declare-fun d!1548910 () Bool)

(assert (= bs!1166221 (and d!1548910 b!4830999)))

(assert (=> bs!1166221 (= (dynLambda!22248 lambda!238052 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325)))))) (contains!18874 lt!1977026 (_1!32469 (h!61498 (t!362684 (_2!32470 (h!61499 (toList!7552 lm!2325))))))))))

(declare-fun m!5824788 () Bool)

(assert (=> bs!1166221 m!5824788))

(assert (=> b!4831288 d!1548910))

(declare-fun b_lambda!190731 () Bool)

(assert (= b_lambda!190699 (or d!1548672 b_lambda!190731)))

(declare-fun bs!1166222 () Bool)

(declare-fun d!1548912 () Bool)

(assert (= bs!1166222 (and d!1548912 d!1548672)))

(assert (=> bs!1166222 (= (dynLambda!22246 lambda!238017 (h!61499 (toList!7552 lm!2325))) (allKeysSameHash!2018 (_2!32470 (h!61499 (toList!7552 lm!2325))) (_1!32470 (h!61499 (toList!7552 lm!2325))) hashF!1543))))

(declare-fun m!5824790 () Bool)

(assert (=> bs!1166222 m!5824790))

(assert (=> b!4831311 d!1548912))

(declare-fun b_lambda!190733 () Bool)

(assert (= b_lambda!190703 (or d!1548686 b_lambda!190733)))

(declare-fun bs!1166223 () Bool)

(declare-fun d!1548914 () Bool)

(assert (= bs!1166223 (and d!1548914 d!1548686)))

(assert (=> bs!1166223 (= (dynLambda!22248 lambda!238053 (h!61498 (toList!7551 lt!1976902))) (contains!18874 lt!1977022 (_1!32469 (h!61498 (toList!7551 lt!1976902)))))))

(declare-fun m!5824792 () Bool)

(assert (=> bs!1166223 m!5824792))

(assert (=> b!4831315 d!1548914))

(push 1)

(assert (not b!4831268))

(assert (not b!4831306))

(assert (not b_lambda!190669))

(assert (not b_lambda!190711))

(assert (not b!4831280))

(assert (not b!4831314))

(assert (not d!1548756))

(assert (not b!4831281))

(assert tp_is_empty!34565)

(assert (not b_lambda!190725))

(assert (not b!4831203))

(assert (not bs!1166223))

(assert (not b!4831282))

(assert (not bs!1166216))

(assert (not d!1548878))

(assert (not bm!336683))

(assert (not b!4831124))

(assert (not bs!1166220))

(assert (not b!4831196))

(assert (not b!4831301))

(assert (not b!4831303))

(assert (not b!4831257))

(assert (not b_lambda!190715))

(assert (not bs!1166221))

(assert (not b!4831286))

(assert (not d!1548864))

(assert (not d!1548846))

(assert (not d!1548880))

(assert (not b_lambda!190729))

(assert (not b!4831321))

(assert (not b!4831344))

(assert (not b!4831264))

(assert (not d!1548854))

(assert (not bs!1166211))

(assert (not b!4831338))

(assert (not b!4831329))

(assert (not d!1548882))

(assert (not d!1548786))

(assert (not b!4831296))

(assert (not b_lambda!190727))

(assert (not b!4831285))

(assert (not bs!1166218))

(assert (not b!4831337))

(assert (not d!1548762))

(assert (not b!4831125))

(assert (not d!1548780))

(assert (not d!1548870))

(assert (not d!1548768))

(assert (not b!4831298))

(assert (not d!1548760))

(assert (not b!4831332))

(assert (not b!4831191))

(assert (not b!4831209))

(assert (not bm!336680))

(assert (not b_lambda!190719))

(assert (not b!4831146))

(assert (not b!4831164))

(assert (not b_lambda!190731))

(assert (not b!4831269))

(assert (not bs!1166215))

(assert (not b!4831187))

(assert (not b_lambda!190681))

(assert (not d!1548802))

(assert (not b!4831123))

(assert (not d!1548796))

(assert (not bs!1166219))

(assert (not b!4831335))

(assert (not b!4831228))

(assert (not b_lambda!190733))

(assert (not b!4831219))

(assert (not b!4831224))

(assert (not d!1548842))

(assert (not b!4831139))

(assert (not bm!336684))

(assert (not d!1548766))

(assert (not b!4831284))

(assert (not b_lambda!190723))

(assert (not b_lambda!190679))

(assert (not bm!336687))

(assert (not d!1548884))

(assert (not bs!1166212))

(assert (not b!4831271))

(assert (not b!4831289))

(assert (not b!4831242))

(assert (not d!1548814))

(assert (not b_lambda!190717))

(assert (not bm!336682))

(assert (not bs!1166217))

(assert (not b_lambda!190721))

(assert (not b!4831326))

(assert (not b!4831279))

(assert (not d!1548828))

(assert (not b!4831274))

(assert (not b!4831272))

(assert (not d!1548836))

(assert (not b!4831145))

(assert (not bm!336681))

(assert (not b!4831225))

(assert (not b!4831262))

(assert (not d!1548852))

(assert (not b!4831185))

(assert (not b!4831266))

(assert (not b!4831141))

(assert (not bs!1166214))

(assert (not b!4831121))

(assert (not d!1548818))

(assert (not b!4831309))

(assert (not b!4831316))

(assert (not b_lambda!190667))

(assert (not b_lambda!190707))

(assert (not b!4831157))

(assert (not d!1548848))

(assert (not b!4831140))

(assert (not d!1548778))

(assert (not b!4831260))

(assert (not b!4831240))

(assert (not b!4831276))

(assert (not b!4831331))

(assert (not b!4831343))

(assert (not d!1548826))

(assert (not bm!336685))

(assert (not b!4831238))

(assert (not b!4831278))

(assert (not b!4831188))

(assert (not d!1548764))

(assert (not b!4831132))

(assert (not b!4831265))

(assert (not bs!1166222))

(assert (not bs!1166213))

(assert tp_is_empty!34569)

(assert (not d!1548782))

(assert (not b!4831295))

(assert (not b!4831246))

(assert (not d!1548808))

(assert (not b!4831160))

(assert (not bm!336686))

(assert (not b!4831323))

(assert (not b!4831211))

(assert (not d!1548876))

(assert (not b!4831230))

(assert (not b!4831120))

(assert (not d!1548840))

(assert (not b!4831259))

(assert (not b!4831325))

(assert (not b!4831162))

(assert (not b!4831244))

(assert (not b!4831144))

(assert (not d!1548856))

(assert (not b_lambda!190713))

(assert (not b!4831312))

(assert (not b!4831320))

(assert (not b!4831183))

(assert (not b!4831213))

(assert (not b!4831318))

(assert (not b!4831236))

(assert (not b_lambda!190709))

(assert (not b!4831261))

(assert (not d!1548850))

(assert (not d!1548758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

