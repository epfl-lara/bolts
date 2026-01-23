; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503188 () Bool)

(assert start!503188)

(declare-fun b!4837825 () Bool)

(declare-fun e!3023372 () Bool)

(declare-fun tp!1363621 () Bool)

(assert (=> b!4837825 (= e!3023372 tp!1363621)))

(declare-fun b!4837827 () Bool)

(declare-fun res!2061930 () Bool)

(declare-fun e!3023371 () Bool)

(assert (=> b!4837827 (=> (not res!2061930) (not e!3023371))))

(declare-datatypes ((K!17037 0))(
  ( (K!17038 (val!21935 Int)) )
))
(declare-datatypes ((V!17283 0))(
  ( (V!17284 (val!21936 Int)) )
))
(declare-datatypes ((tuple2!58742 0))(
  ( (tuple2!58743 (_1!32665 K!17037) (_2!32665 V!17283)) )
))
(declare-datatypes ((List!55406 0))(
  ( (Nil!55282) (Cons!55282 (h!61717 tuple2!58742) (t!362902 List!55406)) )
))
(declare-datatypes ((tuple2!58744 0))(
  ( (tuple2!58745 (_1!32666 (_ BitVec 64)) (_2!32666 List!55406)) )
))
(declare-datatypes ((List!55407 0))(
  ( (Nil!55283) (Cons!55283 (h!61718 tuple2!58744) (t!362903 List!55407)) )
))
(declare-datatypes ((ListLongMap!6237 0))(
  ( (ListLongMap!6238 (toList!7697 List!55407)) )
))
(declare-fun lm!2671 () ListLongMap!6237)

(declare-datatypes ((ListMap!7051 0))(
  ( (ListMap!7052 (toList!7698 List!55406)) )
))
(declare-fun extractMap!2745 (List!55407) ListMap!7051)

(declare-fun addToMapMapFromBucket!1885 (List!55406 ListMap!7051) ListMap!7051)

(assert (=> b!4837827 (= res!2061930 (= (extractMap!2745 (toList!7697 lm!2671)) (addToMapMapFromBucket!1885 (_2!32666 (h!61718 (toList!7697 lm!2671))) (extractMap!2745 (t!362903 (toList!7697 lm!2671))))))))

(declare-fun b!4837828 () Bool)

(declare-fun res!2061927 () Bool)

(assert (=> b!4837828 (=> (not res!2061927) (not e!3023371))))

(assert (=> b!4837828 (= res!2061927 (is-Cons!55283 (toList!7697 lm!2671)))))

(declare-fun b!4837829 () Bool)

(declare-fun res!2061924 () Bool)

(assert (=> b!4837829 (=> (not res!2061924) (not e!3023371))))

(declare-fun e!3023370 () Bool)

(assert (=> b!4837829 (= res!2061924 e!3023370)))

(declare-fun res!2061928 () Bool)

(assert (=> b!4837829 (=> res!2061928 e!3023370)))

(assert (=> b!4837829 (= res!2061928 (not (is-Cons!55283 (toList!7697 lm!2671))))))

(declare-fun b!4837830 () Bool)

(declare-fun e!3023369 () Bool)

(assert (=> b!4837830 (= e!3023371 (not e!3023369))))

(declare-fun res!2061925 () Bool)

(assert (=> b!4837830 (=> res!2061925 e!3023369)))

(declare-fun key!6540 () K!17037)

(declare-fun containsKeyBiggerList!671 (List!55407 K!17037) Bool)

(assert (=> b!4837830 (= res!2061925 (not (containsKeyBiggerList!671 (t!362903 (toList!7697 lm!2671)) key!6540)))))

(declare-fun tail!9451 (List!55407) List!55407)

(assert (=> b!4837830 (containsKeyBiggerList!671 (tail!9451 (toList!7697 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144735 0))(
  ( (Unit!144736) )
))
(declare-fun lt!1982656 () Unit!144735)

(declare-datatypes ((Hashable!7387 0))(
  ( (HashableExt!7386 (__x!33662 Int)) )
))
(declare-fun hashF!1662 () Hashable!7387)

(declare-fun lemmaInBiggerListButNotHeadThenTail!31 (ListLongMap!6237 K!17037 Hashable!7387) Unit!144735)

(assert (=> b!4837830 (= lt!1982656 (lemmaInBiggerListButNotHeadThenTail!31 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4837831 () Bool)

(declare-fun lambda!240004 () Int)

(declare-fun forall!12794 (List!55407 Int) Bool)

(assert (=> b!4837831 (= e!3023369 (forall!12794 (t!362903 (toList!7697 lm!2671)) lambda!240004))))

(declare-fun lt!1982658 () ListLongMap!6237)

(declare-fun contains!19051 (ListMap!7051 K!17037) Bool)

(assert (=> b!4837831 (contains!19051 (extractMap!2745 (toList!7697 lt!1982658)) key!6540)))

(declare-fun lt!1982657 () Unit!144735)

(declare-fun lemmaListContainsThenExtractedMapContains!731 (ListLongMap!6237 K!17037 Hashable!7387) Unit!144735)

(assert (=> b!4837831 (= lt!1982657 (lemmaListContainsThenExtractedMapContains!731 lt!1982658 key!6540 hashF!1662))))

(declare-fun tail!9452 (ListLongMap!6237) ListLongMap!6237)

(assert (=> b!4837831 (= lt!1982658 (tail!9452 lm!2671))))

(declare-fun res!2061926 () Bool)

(assert (=> start!503188 (=> (not res!2061926) (not e!3023371))))

(assert (=> start!503188 (= res!2061926 (forall!12794 (toList!7697 lm!2671) lambda!240004))))

(assert (=> start!503188 e!3023371))

(declare-fun inv!70938 (ListLongMap!6237) Bool)

(assert (=> start!503188 (and (inv!70938 lm!2671) e!3023372)))

(assert (=> start!503188 true))

(declare-fun tp_is_empty!34877 () Bool)

(assert (=> start!503188 tp_is_empty!34877))

(declare-fun b!4837826 () Bool)

(declare-fun res!2061929 () Bool)

(assert (=> b!4837826 (=> (not res!2061929) (not e!3023371))))

(declare-fun allKeysSameHashInMap!2703 (ListLongMap!6237 Hashable!7387) Bool)

(assert (=> b!4837826 (= res!2061929 (allKeysSameHashInMap!2703 lm!2671 hashF!1662))))

(declare-fun b!4837832 () Bool)

(declare-fun res!2061923 () Bool)

(assert (=> b!4837832 (=> (not res!2061923) (not e!3023371))))

(assert (=> b!4837832 (= res!2061923 (containsKeyBiggerList!671 (toList!7697 lm!2671) key!6540))))

(declare-fun b!4837833 () Bool)

(declare-fun containsKey!4539 (List!55406 K!17037) Bool)

(assert (=> b!4837833 (= e!3023370 (not (containsKey!4539 (_2!32666 (h!61718 (toList!7697 lm!2671))) key!6540)))))

(assert (= (and start!503188 res!2061926) b!4837826))

(assert (= (and b!4837826 res!2061929) b!4837832))

(assert (= (and b!4837832 res!2061923) b!4837829))

(assert (= (and b!4837829 (not res!2061928)) b!4837833))

(assert (= (and b!4837829 res!2061924) b!4837828))

(assert (= (and b!4837828 res!2061927) b!4837827))

(assert (= (and b!4837827 res!2061930) b!4837830))

(assert (= (and b!4837830 (not res!2061925)) b!4837831))

(assert (= start!503188 b!4837825))

(declare-fun m!5833208 () Bool)

(assert (=> b!4837832 m!5833208))

(declare-fun m!5833210 () Bool)

(assert (=> b!4837830 m!5833210))

(declare-fun m!5833212 () Bool)

(assert (=> b!4837830 m!5833212))

(assert (=> b!4837830 m!5833212))

(declare-fun m!5833214 () Bool)

(assert (=> b!4837830 m!5833214))

(declare-fun m!5833216 () Bool)

(assert (=> b!4837830 m!5833216))

(declare-fun m!5833218 () Bool)

(assert (=> b!4837833 m!5833218))

(declare-fun m!5833220 () Bool)

(assert (=> b!4837826 m!5833220))

(declare-fun m!5833222 () Bool)

(assert (=> start!503188 m!5833222))

(declare-fun m!5833224 () Bool)

(assert (=> start!503188 m!5833224))

(declare-fun m!5833226 () Bool)

(assert (=> b!4837827 m!5833226))

(declare-fun m!5833228 () Bool)

(assert (=> b!4837827 m!5833228))

(assert (=> b!4837827 m!5833228))

(declare-fun m!5833230 () Bool)

(assert (=> b!4837827 m!5833230))

(declare-fun m!5833232 () Bool)

(assert (=> b!4837831 m!5833232))

(declare-fun m!5833234 () Bool)

(assert (=> b!4837831 m!5833234))

(declare-fun m!5833236 () Bool)

(assert (=> b!4837831 m!5833236))

(assert (=> b!4837831 m!5833236))

(declare-fun m!5833238 () Bool)

(assert (=> b!4837831 m!5833238))

(declare-fun m!5833240 () Bool)

(assert (=> b!4837831 m!5833240))

(push 1)

(assert (not b!4837825))

(assert (not b!4837833))

(assert (not start!503188))

(assert tp_is_empty!34877)

(assert (not b!4837831))

(assert (not b!4837832))

(assert (not b!4837830))

(assert (not b!4837826))

(assert (not b!4837827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550889 () Bool)

(declare-fun res!2061966 () Bool)

(declare-fun e!3023396 () Bool)

(assert (=> d!1550889 (=> res!2061966 e!3023396)))

(declare-fun e!3023395 () Bool)

(assert (=> d!1550889 (= res!2061966 e!3023395)))

(declare-fun res!2061965 () Bool)

(assert (=> d!1550889 (=> (not res!2061965) (not e!3023395))))

(assert (=> d!1550889 (= res!2061965 (is-Cons!55283 (t!362903 (toList!7697 lm!2671))))))

(assert (=> d!1550889 (= (containsKeyBiggerList!671 (t!362903 (toList!7697 lm!2671)) key!6540) e!3023396)))

(declare-fun b!4837871 () Bool)

(assert (=> b!4837871 (= e!3023395 (containsKey!4539 (_2!32666 (h!61718 (t!362903 (toList!7697 lm!2671)))) key!6540))))

(declare-fun b!4837872 () Bool)

(declare-fun e!3023397 () Bool)

(assert (=> b!4837872 (= e!3023396 e!3023397)))

(declare-fun res!2061967 () Bool)

(assert (=> b!4837872 (=> (not res!2061967) (not e!3023397))))

(assert (=> b!4837872 (= res!2061967 (is-Cons!55283 (t!362903 (toList!7697 lm!2671))))))

(declare-fun b!4837873 () Bool)

(assert (=> b!4837873 (= e!3023397 (containsKeyBiggerList!671 (t!362903 (t!362903 (toList!7697 lm!2671))) key!6540))))

(assert (= (and d!1550889 res!2061965) b!4837871))

(assert (= (and d!1550889 (not res!2061966)) b!4837872))

(assert (= (and b!4837872 res!2061967) b!4837873))

(declare-fun m!5833276 () Bool)

(assert (=> b!4837871 m!5833276))

(declare-fun m!5833278 () Bool)

(assert (=> b!4837873 m!5833278))

(assert (=> b!4837830 d!1550889))

(declare-fun d!1550891 () Bool)

(declare-fun res!2061969 () Bool)

(declare-fun e!3023399 () Bool)

(assert (=> d!1550891 (=> res!2061969 e!3023399)))

(declare-fun e!3023398 () Bool)

(assert (=> d!1550891 (= res!2061969 e!3023398)))

(declare-fun res!2061968 () Bool)

(assert (=> d!1550891 (=> (not res!2061968) (not e!3023398))))

(assert (=> d!1550891 (= res!2061968 (is-Cons!55283 (tail!9451 (toList!7697 lm!2671))))))

(assert (=> d!1550891 (= (containsKeyBiggerList!671 (tail!9451 (toList!7697 lm!2671)) key!6540) e!3023399)))

(declare-fun b!4837874 () Bool)

(assert (=> b!4837874 (= e!3023398 (containsKey!4539 (_2!32666 (h!61718 (tail!9451 (toList!7697 lm!2671)))) key!6540))))

(declare-fun b!4837875 () Bool)

(declare-fun e!3023400 () Bool)

(assert (=> b!4837875 (= e!3023399 e!3023400)))

(declare-fun res!2061970 () Bool)

(assert (=> b!4837875 (=> (not res!2061970) (not e!3023400))))

(assert (=> b!4837875 (= res!2061970 (is-Cons!55283 (tail!9451 (toList!7697 lm!2671))))))

(declare-fun b!4837876 () Bool)

(assert (=> b!4837876 (= e!3023400 (containsKeyBiggerList!671 (t!362903 (tail!9451 (toList!7697 lm!2671))) key!6540))))

(assert (= (and d!1550891 res!2061968) b!4837874))

(assert (= (and d!1550891 (not res!2061969)) b!4837875))

(assert (= (and b!4837875 res!2061970) b!4837876))

(declare-fun m!5833280 () Bool)

(assert (=> b!4837874 m!5833280))

(declare-fun m!5833282 () Bool)

(assert (=> b!4837876 m!5833282))

(assert (=> b!4837830 d!1550891))

(declare-fun d!1550893 () Bool)

(assert (=> d!1550893 (= (tail!9451 (toList!7697 lm!2671)) (t!362903 (toList!7697 lm!2671)))))

(assert (=> b!4837830 d!1550893))

(declare-fun bs!1167829 () Bool)

(declare-fun d!1550895 () Bool)

(assert (= bs!1167829 (and d!1550895 start!503188)))

(declare-fun lambda!240012 () Int)

(assert (=> bs!1167829 (= lambda!240012 lambda!240004)))

(assert (=> d!1550895 (containsKeyBiggerList!671 (tail!9451 (toList!7697 lm!2671)) key!6540)))

(declare-fun lt!1982670 () Unit!144735)

(declare-fun choose!35339 (ListLongMap!6237 K!17037 Hashable!7387) Unit!144735)

(assert (=> d!1550895 (= lt!1982670 (choose!35339 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1550895 (forall!12794 (toList!7697 lm!2671) lambda!240012)))

(assert (=> d!1550895 (= (lemmaInBiggerListButNotHeadThenTail!31 lm!2671 key!6540 hashF!1662) lt!1982670)))

(declare-fun bs!1167830 () Bool)

(assert (= bs!1167830 d!1550895))

(assert (=> bs!1167830 m!5833212))

(assert (=> bs!1167830 m!5833212))

(assert (=> bs!1167830 m!5833214))

(declare-fun m!5833286 () Bool)

(assert (=> bs!1167830 m!5833286))

(declare-fun m!5833288 () Bool)

(assert (=> bs!1167830 m!5833288))

(assert (=> b!4837830 d!1550895))

(declare-fun d!1550899 () Bool)

(declare-fun res!2061977 () Bool)

(declare-fun e!3023407 () Bool)

(assert (=> d!1550899 (=> res!2061977 e!3023407)))

(assert (=> d!1550899 (= res!2061977 (is-Nil!55283 (toList!7697 lm!2671)))))

(assert (=> d!1550899 (= (forall!12794 (toList!7697 lm!2671) lambda!240004) e!3023407)))

(declare-fun b!4837883 () Bool)

(declare-fun e!3023408 () Bool)

(assert (=> b!4837883 (= e!3023407 e!3023408)))

(declare-fun res!2061978 () Bool)

(assert (=> b!4837883 (=> (not res!2061978) (not e!3023408))))

(declare-fun dynLambda!22276 (Int tuple2!58744) Bool)

(assert (=> b!4837883 (= res!2061978 (dynLambda!22276 lambda!240004 (h!61718 (toList!7697 lm!2671))))))

(declare-fun b!4837884 () Bool)

(assert (=> b!4837884 (= e!3023408 (forall!12794 (t!362903 (toList!7697 lm!2671)) lambda!240004))))

(assert (= (and d!1550899 (not res!2061977)) b!4837883))

(assert (= (and b!4837883 res!2061978) b!4837884))

(declare-fun b_lambda!191211 () Bool)

(assert (=> (not b_lambda!191211) (not b!4837883)))

(declare-fun m!5833290 () Bool)

(assert (=> b!4837883 m!5833290))

(assert (=> b!4837884 m!5833240))

(assert (=> start!503188 d!1550899))

(declare-fun d!1550901 () Bool)

(declare-fun isStrictlySorted!1025 (List!55407) Bool)

(assert (=> d!1550901 (= (inv!70938 lm!2671) (isStrictlySorted!1025 (toList!7697 lm!2671)))))

(declare-fun bs!1167831 () Bool)

(assert (= bs!1167831 d!1550901))

(declare-fun m!5833292 () Bool)

(assert (=> bs!1167831 m!5833292))

(assert (=> start!503188 d!1550901))

(declare-fun d!1550903 () Bool)

(declare-fun res!2061983 () Bool)

(declare-fun e!3023413 () Bool)

(assert (=> d!1550903 (=> res!2061983 e!3023413)))

(assert (=> d!1550903 (= res!2061983 (and (is-Cons!55282 (_2!32666 (h!61718 (toList!7697 lm!2671)))) (= (_1!32665 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))) key!6540)))))

(assert (=> d!1550903 (= (containsKey!4539 (_2!32666 (h!61718 (toList!7697 lm!2671))) key!6540) e!3023413)))

(declare-fun b!4837889 () Bool)

(declare-fun e!3023414 () Bool)

(assert (=> b!4837889 (= e!3023413 e!3023414)))

(declare-fun res!2061984 () Bool)

(assert (=> b!4837889 (=> (not res!2061984) (not e!3023414))))

(assert (=> b!4837889 (= res!2061984 (is-Cons!55282 (_2!32666 (h!61718 (toList!7697 lm!2671)))))))

(declare-fun b!4837890 () Bool)

(assert (=> b!4837890 (= e!3023414 (containsKey!4539 (t!362902 (_2!32666 (h!61718 (toList!7697 lm!2671)))) key!6540))))

(assert (= (and d!1550903 (not res!2061983)) b!4837889))

(assert (= (and b!4837889 res!2061984) b!4837890))

(declare-fun m!5833294 () Bool)

(assert (=> b!4837890 m!5833294))

(assert (=> b!4837833 d!1550903))

(declare-fun bs!1167832 () Bool)

(declare-fun d!1550905 () Bool)

(assert (= bs!1167832 (and d!1550905 start!503188)))

(declare-fun lambda!240015 () Int)

(assert (=> bs!1167832 (= lambda!240015 lambda!240004)))

(declare-fun bs!1167833 () Bool)

(assert (= bs!1167833 (and d!1550905 d!1550895)))

(assert (=> bs!1167833 (= lambda!240015 lambda!240012)))

(declare-fun lt!1982673 () ListMap!7051)

(declare-fun invariantList!1860 (List!55406) Bool)

(assert (=> d!1550905 (invariantList!1860 (toList!7698 lt!1982673))))

(declare-fun e!3023417 () ListMap!7051)

(assert (=> d!1550905 (= lt!1982673 e!3023417)))

(declare-fun c!823978 () Bool)

(assert (=> d!1550905 (= c!823978 (is-Cons!55283 (toList!7697 lm!2671)))))

(assert (=> d!1550905 (forall!12794 (toList!7697 lm!2671) lambda!240015)))

(assert (=> d!1550905 (= (extractMap!2745 (toList!7697 lm!2671)) lt!1982673)))

(declare-fun b!4837895 () Bool)

(assert (=> b!4837895 (= e!3023417 (addToMapMapFromBucket!1885 (_2!32666 (h!61718 (toList!7697 lm!2671))) (extractMap!2745 (t!362903 (toList!7697 lm!2671)))))))

(declare-fun b!4837896 () Bool)

(assert (=> b!4837896 (= e!3023417 (ListMap!7052 Nil!55282))))

(assert (= (and d!1550905 c!823978) b!4837895))

(assert (= (and d!1550905 (not c!823978)) b!4837896))

(declare-fun m!5833296 () Bool)

(assert (=> d!1550905 m!5833296))

(declare-fun m!5833298 () Bool)

(assert (=> d!1550905 m!5833298))

(assert (=> b!4837895 m!5833228))

(assert (=> b!4837895 m!5833228))

(assert (=> b!4837895 m!5833230))

(assert (=> b!4837827 d!1550905))

(declare-fun b!4837950 () Bool)

(assert (=> b!4837950 true))

(declare-fun bs!1167842 () Bool)

(declare-fun b!4837951 () Bool)

(assert (= bs!1167842 (and b!4837951 b!4837950)))

(declare-fun lambda!240052 () Int)

(declare-fun lambda!240051 () Int)

(assert (=> bs!1167842 (= lambda!240052 lambda!240051)))

(assert (=> b!4837951 true))

(declare-fun lt!1982754 () ListMap!7051)

(declare-fun lambda!240053 () Int)

(assert (=> bs!1167842 (= (= lt!1982754 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (= lambda!240053 lambda!240051))))

(assert (=> b!4837951 (= (= lt!1982754 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (= lambda!240053 lambda!240052))))

(assert (=> b!4837951 true))

(declare-fun bs!1167843 () Bool)

(declare-fun d!1550907 () Bool)

(assert (= bs!1167843 (and d!1550907 b!4837950)))

(declare-fun lt!1982753 () ListMap!7051)

(declare-fun lambda!240054 () Int)

(assert (=> bs!1167843 (= (= lt!1982753 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (= lambda!240054 lambda!240051))))

(declare-fun bs!1167844 () Bool)

(assert (= bs!1167844 (and d!1550907 b!4837951)))

(assert (=> bs!1167844 (= (= lt!1982753 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (= lambda!240054 lambda!240052))))

(assert (=> bs!1167844 (= (= lt!1982753 lt!1982754) (= lambda!240054 lambda!240053))))

(assert (=> d!1550907 true))

(declare-fun bm!337141 () Bool)

(declare-fun c!823994 () Bool)

(declare-fun call!337148 () Bool)

(declare-fun forall!12796 (List!55406 Int) Bool)

(assert (=> bm!337141 (= call!337148 (forall!12796 (ite c!823994 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (_2!32666 (h!61718 (toList!7697 lm!2671)))) (ite c!823994 lambda!240051 lambda!240053)))))

(declare-fun b!4837948 () Bool)

(declare-fun e!3023454 () Bool)

(assert (=> b!4837948 (= e!3023454 (invariantList!1860 (toList!7698 lt!1982753)))))

(assert (=> d!1550907 e!3023454))

(declare-fun res!2062008 () Bool)

(assert (=> d!1550907 (=> (not res!2062008) (not e!3023454))))

(assert (=> d!1550907 (= res!2062008 (forall!12796 (_2!32666 (h!61718 (toList!7697 lm!2671))) lambda!240054))))

(declare-fun e!3023452 () ListMap!7051)

(assert (=> d!1550907 (= lt!1982753 e!3023452)))

(assert (=> d!1550907 (= c!823994 (is-Nil!55282 (_2!32666 (h!61718 (toList!7697 lm!2671)))))))

(declare-fun noDuplicateKeys!2525 (List!55406) Bool)

(assert (=> d!1550907 (noDuplicateKeys!2525 (_2!32666 (h!61718 (toList!7697 lm!2671))))))

(assert (=> d!1550907 (= (addToMapMapFromBucket!1885 (_2!32666 (h!61718 (toList!7697 lm!2671))) (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lt!1982753)))

(declare-fun lt!1982759 () ListMap!7051)

(declare-fun bm!337142 () Bool)

(declare-fun call!337147 () Bool)

(assert (=> bm!337142 (= call!337147 (forall!12796 (ite c!823994 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) (toList!7698 lt!1982759)) (ite c!823994 lambda!240051 lambda!240053)))))

(declare-fun bm!337143 () Bool)

(declare-fun call!337146 () Unit!144735)

(declare-fun lemmaContainsAllItsOwnKeys!1034 (ListMap!7051) Unit!144735)

(assert (=> bm!337143 (= call!337146 (lemmaContainsAllItsOwnKeys!1034 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))))))

(declare-fun b!4837949 () Bool)

(declare-fun e!3023453 () Bool)

(assert (=> b!4837949 (= e!3023453 (forall!12796 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lambda!240053))))

(assert (=> b!4837950 (= e!3023452 (extractMap!2745 (t!362903 (toList!7697 lm!2671))))))

(declare-fun lt!1982766 () Unit!144735)

(assert (=> b!4837950 (= lt!1982766 call!337146)))

(assert (=> b!4837950 call!337147))

(declare-fun lt!1982756 () Unit!144735)

(assert (=> b!4837950 (= lt!1982756 lt!1982766)))

(assert (=> b!4837950 call!337148))

(declare-fun lt!1982764 () Unit!144735)

(declare-fun Unit!144739 () Unit!144735)

(assert (=> b!4837950 (= lt!1982764 Unit!144739)))

(assert (=> b!4837951 (= e!3023452 lt!1982754)))

(declare-fun +!2594 (ListMap!7051 tuple2!58742) ListMap!7051)

(assert (=> b!4837951 (= lt!1982759 (+!2594 (extractMap!2745 (t!362903 (toList!7697 lm!2671))) (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))))))

(assert (=> b!4837951 (= lt!1982754 (addToMapMapFromBucket!1885 (t!362902 (_2!32666 (h!61718 (toList!7697 lm!2671)))) (+!2594 (extractMap!2745 (t!362903 (toList!7697 lm!2671))) (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671)))))))))

(declare-fun lt!1982760 () Unit!144735)

(assert (=> b!4837951 (= lt!1982760 call!337146)))

(assert (=> b!4837951 (forall!12796 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lambda!240052)))

(declare-fun lt!1982762 () Unit!144735)

(assert (=> b!4837951 (= lt!1982762 lt!1982760)))

(assert (=> b!4837951 (forall!12796 (toList!7698 lt!1982759) lambda!240053)))

(declare-fun lt!1982755 () Unit!144735)

(declare-fun Unit!144740 () Unit!144735)

(assert (=> b!4837951 (= lt!1982755 Unit!144740)))

(assert (=> b!4837951 (forall!12796 (t!362902 (_2!32666 (h!61718 (toList!7697 lm!2671)))) lambda!240053)))

(declare-fun lt!1982751 () Unit!144735)

(declare-fun Unit!144741 () Unit!144735)

(assert (=> b!4837951 (= lt!1982751 Unit!144741)))

(declare-fun lt!1982765 () Unit!144735)

(declare-fun Unit!144742 () Unit!144735)

(assert (=> b!4837951 (= lt!1982765 Unit!144742)))

(declare-fun lt!1982761 () Unit!144735)

(declare-fun forallContained!4475 (List!55406 Int tuple2!58742) Unit!144735)

(assert (=> b!4837951 (= lt!1982761 (forallContained!4475 (toList!7698 lt!1982759) lambda!240053 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))))))

(assert (=> b!4837951 (contains!19051 lt!1982759 (_1!32665 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))))))

(declare-fun lt!1982757 () Unit!144735)

(declare-fun Unit!144743 () Unit!144735)

(assert (=> b!4837951 (= lt!1982757 Unit!144743)))

(assert (=> b!4837951 (contains!19051 lt!1982754 (_1!32665 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))))))

(declare-fun lt!1982750 () Unit!144735)

(declare-fun Unit!144744 () Unit!144735)

(assert (=> b!4837951 (= lt!1982750 Unit!144744)))

(assert (=> b!4837951 call!337148))

(declare-fun lt!1982747 () Unit!144735)

(declare-fun Unit!144745 () Unit!144735)

(assert (=> b!4837951 (= lt!1982747 Unit!144745)))

(assert (=> b!4837951 call!337147))

(declare-fun lt!1982749 () Unit!144735)

(declare-fun Unit!144746 () Unit!144735)

(assert (=> b!4837951 (= lt!1982749 Unit!144746)))

(declare-fun lt!1982752 () Unit!144735)

(declare-fun Unit!144747 () Unit!144735)

(assert (=> b!4837951 (= lt!1982752 Unit!144747)))

(declare-fun lt!1982767 () Unit!144735)

(declare-fun addForallContainsKeyThenBeforeAdding!1032 (ListMap!7051 ListMap!7051 K!17037 V!17283) Unit!144735)

(assert (=> b!4837951 (= lt!1982767 (addForallContainsKeyThenBeforeAdding!1032 (extractMap!2745 (t!362903 (toList!7697 lm!2671))) lt!1982754 (_1!32665 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671))))) (_2!32665 (h!61717 (_2!32666 (h!61718 (toList!7697 lm!2671)))))))))

(assert (=> b!4837951 (forall!12796 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lambda!240053)))

(declare-fun lt!1982763 () Unit!144735)

(assert (=> b!4837951 (= lt!1982763 lt!1982767)))

(assert (=> b!4837951 (forall!12796 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lambda!240053)))

(declare-fun lt!1982748 () Unit!144735)

(declare-fun Unit!144748 () Unit!144735)

(assert (=> b!4837951 (= lt!1982748 Unit!144748)))

(declare-fun res!2062006 () Bool)

(assert (=> b!4837951 (= res!2062006 (forall!12796 (_2!32666 (h!61718 (toList!7697 lm!2671))) lambda!240053))))

(assert (=> b!4837951 (=> (not res!2062006) (not e!3023453))))

(assert (=> b!4837951 e!3023453))

(declare-fun lt!1982758 () Unit!144735)

(declare-fun Unit!144749 () Unit!144735)

(assert (=> b!4837951 (= lt!1982758 Unit!144749)))

(declare-fun b!4837952 () Bool)

(declare-fun res!2062007 () Bool)

(assert (=> b!4837952 (=> (not res!2062007) (not e!3023454))))

(assert (=> b!4837952 (= res!2062007 (forall!12796 (toList!7698 (extractMap!2745 (t!362903 (toList!7697 lm!2671)))) lambda!240054))))

(assert (= (and d!1550907 c!823994) b!4837950))

(assert (= (and d!1550907 (not c!823994)) b!4837951))

(assert (= (and b!4837951 res!2062006) b!4837949))

(assert (= (or b!4837950 b!4837951) bm!337143))

(assert (= (or b!4837950 b!4837951) bm!337141))

(assert (= (or b!4837950 b!4837951) bm!337142))

(assert (= (and d!1550907 res!2062008) b!4837952))

(assert (= (and b!4837952 res!2062007) b!4837948))

(declare-fun m!5833340 () Bool)

(assert (=> b!4837949 m!5833340))

(declare-fun m!5833342 () Bool)

(assert (=> b!4837948 m!5833342))

(assert (=> bm!337143 m!5833228))

(declare-fun m!5833344 () Bool)

(assert (=> bm!337143 m!5833344))

(declare-fun m!5833346 () Bool)

(assert (=> b!4837952 m!5833346))

(declare-fun m!5833348 () Bool)

(assert (=> bm!337142 m!5833348))

(declare-fun m!5833350 () Bool)

(assert (=> d!1550907 m!5833350))

(declare-fun m!5833352 () Bool)

(assert (=> d!1550907 m!5833352))

(declare-fun m!5833354 () Bool)

(assert (=> bm!337141 m!5833354))

(assert (=> b!4837951 m!5833340))

(assert (=> b!4837951 m!5833340))

(declare-fun m!5833356 () Bool)

(assert (=> b!4837951 m!5833356))

(declare-fun m!5833358 () Bool)

(assert (=> b!4837951 m!5833358))

(declare-fun m!5833360 () Bool)

(assert (=> b!4837951 m!5833360))

(assert (=> b!4837951 m!5833228))

(declare-fun m!5833362 () Bool)

(assert (=> b!4837951 m!5833362))

(assert (=> b!4837951 m!5833228))

(assert (=> b!4837951 m!5833356))

(declare-fun m!5833364 () Bool)

(assert (=> b!4837951 m!5833364))

(declare-fun m!5833366 () Bool)

(assert (=> b!4837951 m!5833366))

(declare-fun m!5833368 () Bool)

(assert (=> b!4837951 m!5833368))

(declare-fun m!5833370 () Bool)

(assert (=> b!4837951 m!5833370))

(declare-fun m!5833372 () Bool)

(assert (=> b!4837951 m!5833372))

(declare-fun m!5833374 () Bool)

(assert (=> b!4837951 m!5833374))

(assert (=> b!4837827 d!1550907))

(declare-fun bs!1167845 () Bool)

(declare-fun d!1550921 () Bool)

(assert (= bs!1167845 (and d!1550921 start!503188)))

(declare-fun lambda!240055 () Int)

(assert (=> bs!1167845 (= lambda!240055 lambda!240004)))

(declare-fun bs!1167846 () Bool)

(assert (= bs!1167846 (and d!1550921 d!1550895)))

(assert (=> bs!1167846 (= lambda!240055 lambda!240012)))

(declare-fun bs!1167847 () Bool)

(assert (= bs!1167847 (and d!1550921 d!1550905)))

(assert (=> bs!1167847 (= lambda!240055 lambda!240015)))

(declare-fun lt!1982768 () ListMap!7051)

(assert (=> d!1550921 (invariantList!1860 (toList!7698 lt!1982768))))

(declare-fun e!3023455 () ListMap!7051)

(assert (=> d!1550921 (= lt!1982768 e!3023455)))

(declare-fun c!823995 () Bool)

(assert (=> d!1550921 (= c!823995 (is-Cons!55283 (t!362903 (toList!7697 lm!2671))))))

(assert (=> d!1550921 (forall!12794 (t!362903 (toList!7697 lm!2671)) lambda!240055)))

(assert (=> d!1550921 (= (extractMap!2745 (t!362903 (toList!7697 lm!2671))) lt!1982768)))

(declare-fun b!4837955 () Bool)

(assert (=> b!4837955 (= e!3023455 (addToMapMapFromBucket!1885 (_2!32666 (h!61718 (t!362903 (toList!7697 lm!2671)))) (extractMap!2745 (t!362903 (t!362903 (toList!7697 lm!2671))))))))

(declare-fun b!4837956 () Bool)

(assert (=> b!4837956 (= e!3023455 (ListMap!7052 Nil!55282))))

(assert (= (and d!1550921 c!823995) b!4837955))

(assert (= (and d!1550921 (not c!823995)) b!4837956))

(declare-fun m!5833376 () Bool)

(assert (=> d!1550921 m!5833376))

(declare-fun m!5833378 () Bool)

(assert (=> d!1550921 m!5833378))

(declare-fun m!5833380 () Bool)

(assert (=> b!4837955 m!5833380))

(assert (=> b!4837955 m!5833380))

(declare-fun m!5833382 () Bool)

(assert (=> b!4837955 m!5833382))

(assert (=> b!4837827 d!1550921))

(declare-fun d!1550923 () Bool)

(declare-fun res!2062010 () Bool)

(declare-fun e!3023457 () Bool)

(assert (=> d!1550923 (=> res!2062010 e!3023457)))

(declare-fun e!3023456 () Bool)

(assert (=> d!1550923 (= res!2062010 e!3023456)))

(declare-fun res!2062009 () Bool)

(assert (=> d!1550923 (=> (not res!2062009) (not e!3023456))))

(assert (=> d!1550923 (= res!2062009 (is-Cons!55283 (toList!7697 lm!2671)))))

(assert (=> d!1550923 (= (containsKeyBiggerList!671 (toList!7697 lm!2671) key!6540) e!3023457)))

(declare-fun b!4837957 () Bool)

(assert (=> b!4837957 (= e!3023456 (containsKey!4539 (_2!32666 (h!61718 (toList!7697 lm!2671))) key!6540))))

(declare-fun b!4837958 () Bool)

(declare-fun e!3023458 () Bool)

(assert (=> b!4837958 (= e!3023457 e!3023458)))

(declare-fun res!2062011 () Bool)

(assert (=> b!4837958 (=> (not res!2062011) (not e!3023458))))

(assert (=> b!4837958 (= res!2062011 (is-Cons!55283 (toList!7697 lm!2671)))))

(declare-fun b!4837959 () Bool)

(assert (=> b!4837959 (= e!3023458 (containsKeyBiggerList!671 (t!362903 (toList!7697 lm!2671)) key!6540))))

(assert (= (and d!1550923 res!2062009) b!4837957))

(assert (= (and d!1550923 (not res!2062010)) b!4837958))

(assert (= (and b!4837958 res!2062011) b!4837959))

(assert (=> b!4837957 m!5833218))

(assert (=> b!4837959 m!5833210))

(assert (=> b!4837832 d!1550923))

(declare-fun bs!1167848 () Bool)

(declare-fun d!1550925 () Bool)

(assert (= bs!1167848 (and d!1550925 start!503188)))

(declare-fun lambda!240058 () Int)

(assert (=> bs!1167848 (not (= lambda!240058 lambda!240004))))

(declare-fun bs!1167849 () Bool)

(assert (= bs!1167849 (and d!1550925 d!1550895)))

(assert (=> bs!1167849 (not (= lambda!240058 lambda!240012))))

(declare-fun bs!1167850 () Bool)

(assert (= bs!1167850 (and d!1550925 d!1550905)))

(assert (=> bs!1167850 (not (= lambda!240058 lambda!240015))))

(declare-fun bs!1167851 () Bool)

(assert (= bs!1167851 (and d!1550925 d!1550921)))

(assert (=> bs!1167851 (not (= lambda!240058 lambda!240055))))

(assert (=> d!1550925 true))

(assert (=> d!1550925 (= (allKeysSameHashInMap!2703 lm!2671 hashF!1662) (forall!12794 (toList!7697 lm!2671) lambda!240058))))

(declare-fun bs!1167852 () Bool)

(assert (= bs!1167852 d!1550925))

(declare-fun m!5833384 () Bool)

(assert (=> bs!1167852 m!5833384))

(assert (=> b!4837826 d!1550925))

(declare-fun bs!1167853 () Bool)

(declare-fun d!1550927 () Bool)

(assert (= bs!1167853 (and d!1550927 d!1550895)))

(declare-fun lambda!240061 () Int)

(assert (=> bs!1167853 (= lambda!240061 lambda!240012)))

(declare-fun bs!1167854 () Bool)

(assert (= bs!1167854 (and d!1550927 d!1550905)))

(assert (=> bs!1167854 (= lambda!240061 lambda!240015)))

(declare-fun bs!1167855 () Bool)

(assert (= bs!1167855 (and d!1550927 start!503188)))

(assert (=> bs!1167855 (= lambda!240061 lambda!240004)))

(declare-fun bs!1167856 () Bool)

(assert (= bs!1167856 (and d!1550927 d!1550925)))

(assert (=> bs!1167856 (not (= lambda!240061 lambda!240058))))

(declare-fun bs!1167857 () Bool)

(assert (= bs!1167857 (and d!1550927 d!1550921)))

(assert (=> bs!1167857 (= lambda!240061 lambda!240055)))

(assert (=> d!1550927 (contains!19051 (extractMap!2745 (toList!7697 lt!1982658)) key!6540)))

(declare-fun lt!1982771 () Unit!144735)

(declare-fun choose!35340 (ListLongMap!6237 K!17037 Hashable!7387) Unit!144735)

(assert (=> d!1550927 (= lt!1982771 (choose!35340 lt!1982658 key!6540 hashF!1662))))

(assert (=> d!1550927 (forall!12794 (toList!7697 lt!1982658) lambda!240061)))

(assert (=> d!1550927 (= (lemmaListContainsThenExtractedMapContains!731 lt!1982658 key!6540 hashF!1662) lt!1982771)))

(declare-fun bs!1167858 () Bool)

(assert (= bs!1167858 d!1550927))

(assert (=> bs!1167858 m!5833236))

(assert (=> bs!1167858 m!5833236))

(assert (=> bs!1167858 m!5833238))

(declare-fun m!5833386 () Bool)

(assert (=> bs!1167858 m!5833386))

(declare-fun m!5833388 () Bool)

(assert (=> bs!1167858 m!5833388))

(assert (=> b!4837831 d!1550927))

(declare-fun bs!1167859 () Bool)

(declare-fun d!1550929 () Bool)

(assert (= bs!1167859 (and d!1550929 d!1550895)))

(declare-fun lambda!240062 () Int)

(assert (=> bs!1167859 (= lambda!240062 lambda!240012)))

(declare-fun bs!1167860 () Bool)

(assert (= bs!1167860 (and d!1550929 d!1550927)))

(assert (=> bs!1167860 (= lambda!240062 lambda!240061)))

(declare-fun bs!1167861 () Bool)

(assert (= bs!1167861 (and d!1550929 d!1550905)))

(assert (=> bs!1167861 (= lambda!240062 lambda!240015)))

(declare-fun bs!1167862 () Bool)

(assert (= bs!1167862 (and d!1550929 start!503188)))

(assert (=> bs!1167862 (= lambda!240062 lambda!240004)))

(declare-fun bs!1167863 () Bool)

(assert (= bs!1167863 (and d!1550929 d!1550925)))

(assert (=> bs!1167863 (not (= lambda!240062 lambda!240058))))

(declare-fun bs!1167864 () Bool)

(assert (= bs!1167864 (and d!1550929 d!1550921)))

(assert (=> bs!1167864 (= lambda!240062 lambda!240055)))

(declare-fun lt!1982772 () ListMap!7051)

(assert (=> d!1550929 (invariantList!1860 (toList!7698 lt!1982772))))

(declare-fun e!3023459 () ListMap!7051)

(assert (=> d!1550929 (= lt!1982772 e!3023459)))

(declare-fun c!823996 () Bool)

(assert (=> d!1550929 (= c!823996 (is-Cons!55283 (toList!7697 lt!1982658)))))

(assert (=> d!1550929 (forall!12794 (toList!7697 lt!1982658) lambda!240062)))

(assert (=> d!1550929 (= (extractMap!2745 (toList!7697 lt!1982658)) lt!1982772)))

(declare-fun b!4837962 () Bool)

(assert (=> b!4837962 (= e!3023459 (addToMapMapFromBucket!1885 (_2!32666 (h!61718 (toList!7697 lt!1982658))) (extractMap!2745 (t!362903 (toList!7697 lt!1982658)))))))

(declare-fun b!4837963 () Bool)

(assert (=> b!4837963 (= e!3023459 (ListMap!7052 Nil!55282))))

(assert (= (and d!1550929 c!823996) b!4837962))

(assert (= (and d!1550929 (not c!823996)) b!4837963))

(declare-fun m!5833390 () Bool)

(assert (=> d!1550929 m!5833390))

(declare-fun m!5833392 () Bool)

(assert (=> d!1550929 m!5833392))

(declare-fun m!5833394 () Bool)

(assert (=> b!4837962 m!5833394))

(assert (=> b!4837962 m!5833394))

(declare-fun m!5833396 () Bool)

(assert (=> b!4837962 m!5833396))

(assert (=> b!4837831 d!1550929))

(declare-fun d!1550931 () Bool)

(assert (=> d!1550931 (= (tail!9452 lm!2671) (ListLongMap!6238 (tail!9451 (toList!7697 lm!2671))))))

(declare-fun bs!1167865 () Bool)

(assert (= bs!1167865 d!1550931))

(assert (=> bs!1167865 m!5833212))

(assert (=> b!4837831 d!1550931))

(declare-fun d!1550933 () Bool)

(declare-fun e!3023476 () Bool)

(assert (=> d!1550933 e!3023476))

(declare-fun res!2062019 () Bool)

(assert (=> d!1550933 (=> res!2062019 e!3023476)))

(declare-fun e!3023474 () Bool)

(assert (=> d!1550933 (= res!2062019 e!3023474)))

(declare-fun res!2062018 () Bool)

(assert (=> d!1550933 (=> (not res!2062018) (not e!3023474))))

(declare-fun lt!1982796 () Bool)

(assert (=> d!1550933 (= res!2062018 (not lt!1982796))))

(declare-fun lt!1982795 () Bool)

(assert (=> d!1550933 (= lt!1982796 lt!1982795)))

(declare-fun lt!1982793 () Unit!144735)

(declare-fun e!3023472 () Unit!144735)

(assert (=> d!1550933 (= lt!1982793 e!3023472)))

(declare-fun c!824005 () Bool)

(assert (=> d!1550933 (= c!824005 lt!1982795)))

(declare-fun containsKey!4541 (List!55406 K!17037) Bool)

(assert (=> d!1550933 (= lt!1982795 (containsKey!4541 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(assert (=> d!1550933 (= (contains!19051 (extractMap!2745 (toList!7697 lt!1982658)) key!6540) lt!1982796)))

(declare-fun b!4837982 () Bool)

(declare-fun e!3023477 () Bool)

(assert (=> b!4837982 (= e!3023476 e!3023477)))

(declare-fun res!2062020 () Bool)

(assert (=> b!4837982 (=> (not res!2062020) (not e!3023477))))

(declare-datatypes ((Option!13590 0))(
  ( (None!13589) (Some!13589 (v!49311 V!17283)) )
))
(declare-fun isDefined!10695 (Option!13590) Bool)

(declare-fun getValueByKey!2688 (List!55406 K!17037) Option!13590)

(assert (=> b!4837982 (= res!2062020 (isDefined!10695 (getValueByKey!2688 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540)))))

(declare-fun b!4837983 () Bool)

(declare-datatypes ((List!55410 0))(
  ( (Nil!55286) (Cons!55286 (h!61721 K!17037) (t!362906 List!55410)) )
))
(declare-fun contains!19053 (List!55410 K!17037) Bool)

(declare-fun keys!20416 (ListMap!7051) List!55410)

(assert (=> b!4837983 (= e!3023474 (not (contains!19053 (keys!20416 (extractMap!2745 (toList!7697 lt!1982658))) key!6540)))))

(declare-fun b!4837984 () Bool)

(declare-fun e!3023475 () Unit!144735)

(assert (=> b!4837984 (= e!3023472 e!3023475)))

(declare-fun c!824003 () Bool)

(declare-fun call!337151 () Bool)

(assert (=> b!4837984 (= c!824003 call!337151)))

(declare-fun b!4837985 () Bool)

(declare-fun lt!1982792 () Unit!144735)

(assert (=> b!4837985 (= e!3023472 lt!1982792)))

(declare-fun lt!1982789 () Unit!144735)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2468 (List!55406 K!17037) Unit!144735)

(assert (=> b!4837985 (= lt!1982789 (lemmaContainsKeyImpliesGetValueByKeyDefined!2468 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(assert (=> b!4837985 (isDefined!10695 (getValueByKey!2688 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(declare-fun lt!1982794 () Unit!144735)

(assert (=> b!4837985 (= lt!1982794 lt!1982789)))

(declare-fun lemmaInListThenGetKeysListContains!1190 (List!55406 K!17037) Unit!144735)

(assert (=> b!4837985 (= lt!1982792 (lemmaInListThenGetKeysListContains!1190 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(assert (=> b!4837985 call!337151))

(declare-fun b!4837986 () Bool)

(declare-fun Unit!144750 () Unit!144735)

(assert (=> b!4837986 (= e!3023475 Unit!144750)))

(declare-fun bm!337146 () Bool)

(declare-fun e!3023473 () List!55410)

(assert (=> bm!337146 (= call!337151 (contains!19053 e!3023473 key!6540))))

(declare-fun c!824004 () Bool)

(assert (=> bm!337146 (= c!824004 c!824005)))

(declare-fun b!4837987 () Bool)

(assert (=> b!4837987 (= e!3023473 (keys!20416 (extractMap!2745 (toList!7697 lt!1982658))))))

(declare-fun b!4837988 () Bool)

(assert (=> b!4837988 false))

(declare-fun lt!1982790 () Unit!144735)

(declare-fun lt!1982791 () Unit!144735)

(assert (=> b!4837988 (= lt!1982790 lt!1982791)))

(assert (=> b!4837988 (containsKey!4541 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1195 (List!55406 K!17037) Unit!144735)

(assert (=> b!4837988 (= lt!1982791 (lemmaInGetKeysListThenContainsKey!1195 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(declare-fun Unit!144751 () Unit!144735)

(assert (=> b!4837988 (= e!3023475 Unit!144751)))

(declare-fun b!4837989 () Bool)

(declare-fun getKeysList!1195 (List!55406) List!55410)

(assert (=> b!4837989 (= e!3023473 (getKeysList!1195 (toList!7698 (extractMap!2745 (toList!7697 lt!1982658)))))))

(declare-fun b!4837990 () Bool)

(assert (=> b!4837990 (= e!3023477 (contains!19053 (keys!20416 (extractMap!2745 (toList!7697 lt!1982658))) key!6540))))

(assert (= (and d!1550933 c!824005) b!4837985))

(assert (= (and d!1550933 (not c!824005)) b!4837984))

(assert (= (and b!4837984 c!824003) b!4837988))

(assert (= (and b!4837984 (not c!824003)) b!4837986))

(assert (= (or b!4837985 b!4837984) bm!337146))

(assert (= (and bm!337146 c!824004) b!4837989))

(assert (= (and bm!337146 (not c!824004)) b!4837987))

(assert (= (and d!1550933 res!2062018) b!4837983))

(assert (= (and d!1550933 (not res!2062019)) b!4837982))

(assert (= (and b!4837982 res!2062020) b!4837990))

(assert (=> b!4837983 m!5833236))

(declare-fun m!5833398 () Bool)

(assert (=> b!4837983 m!5833398))

(assert (=> b!4837983 m!5833398))

(declare-fun m!5833400 () Bool)

(assert (=> b!4837983 m!5833400))

(declare-fun m!5833402 () Bool)

(assert (=> bm!337146 m!5833402))

(declare-fun m!5833404 () Bool)

(assert (=> b!4837988 m!5833404))

(declare-fun m!5833406 () Bool)

(assert (=> b!4837988 m!5833406))

(assert (=> b!4837987 m!5833236))

(assert (=> b!4837987 m!5833398))

(declare-fun m!5833408 () Bool)

(assert (=> b!4837989 m!5833408))

(assert (=> d!1550933 m!5833404))

(declare-fun m!5833410 () Bool)

(assert (=> b!4837982 m!5833410))

(assert (=> b!4837982 m!5833410))

(declare-fun m!5833412 () Bool)

(assert (=> b!4837982 m!5833412))

(declare-fun m!5833414 () Bool)

(assert (=> b!4837985 m!5833414))

(assert (=> b!4837985 m!5833410))

(assert (=> b!4837985 m!5833410))

(assert (=> b!4837985 m!5833412))

(declare-fun m!5833416 () Bool)

(assert (=> b!4837985 m!5833416))

(assert (=> b!4837990 m!5833236))

(assert (=> b!4837990 m!5833398))

(assert (=> b!4837990 m!5833398))

(assert (=> b!4837990 m!5833400))

(assert (=> b!4837831 d!1550933))

(declare-fun d!1550935 () Bool)

(declare-fun res!2062021 () Bool)

(declare-fun e!3023478 () Bool)

(assert (=> d!1550935 (=> res!2062021 e!3023478)))

(assert (=> d!1550935 (= res!2062021 (is-Nil!55283 (t!362903 (toList!7697 lm!2671))))))

(assert (=> d!1550935 (= (forall!12794 (t!362903 (toList!7697 lm!2671)) lambda!240004) e!3023478)))

(declare-fun b!4837991 () Bool)

(declare-fun e!3023479 () Bool)

(assert (=> b!4837991 (= e!3023478 e!3023479)))

(declare-fun res!2062022 () Bool)

(assert (=> b!4837991 (=> (not res!2062022) (not e!3023479))))

(assert (=> b!4837991 (= res!2062022 (dynLambda!22276 lambda!240004 (h!61718 (t!362903 (toList!7697 lm!2671)))))))

(declare-fun b!4837992 () Bool)

(assert (=> b!4837992 (= e!3023479 (forall!12794 (t!362903 (t!362903 (toList!7697 lm!2671))) lambda!240004))))

(assert (= (and d!1550935 (not res!2062021)) b!4837991))

(assert (= (and b!4837991 res!2062022) b!4837992))

(declare-fun b_lambda!191215 () Bool)

(assert (=> (not b_lambda!191215) (not b!4837991)))

(declare-fun m!5833418 () Bool)

(assert (=> b!4837991 m!5833418))

(declare-fun m!5833420 () Bool)

(assert (=> b!4837992 m!5833420))

(assert (=> b!4837831 d!1550935))

(declare-fun b!4837997 () Bool)

(declare-fun e!3023482 () Bool)

(declare-fun tp!1363629 () Bool)

(declare-fun tp!1363630 () Bool)

(assert (=> b!4837997 (= e!3023482 (and tp!1363629 tp!1363630))))

(assert (=> b!4837825 (= tp!1363621 e!3023482)))

(assert (= (and b!4837825 (is-Cons!55283 (toList!7697 lm!2671))) b!4837997))

(declare-fun b_lambda!191217 () Bool)

(assert (= b_lambda!191211 (or start!503188 b_lambda!191217)))

(declare-fun bs!1167866 () Bool)

(declare-fun d!1550937 () Bool)

(assert (= bs!1167866 (and d!1550937 start!503188)))

(assert (=> bs!1167866 (= (dynLambda!22276 lambda!240004 (h!61718 (toList!7697 lm!2671))) (noDuplicateKeys!2525 (_2!32666 (h!61718 (toList!7697 lm!2671)))))))

(assert (=> bs!1167866 m!5833352))

(assert (=> b!4837883 d!1550937))

(declare-fun b_lambda!191219 () Bool)

(assert (= b_lambda!191215 (or start!503188 b_lambda!191219)))

(declare-fun bs!1167867 () Bool)

(declare-fun d!1550939 () Bool)

(assert (= bs!1167867 (and d!1550939 start!503188)))

(assert (=> bs!1167867 (= (dynLambda!22276 lambda!240004 (h!61718 (t!362903 (toList!7697 lm!2671)))) (noDuplicateKeys!2525 (_2!32666 (h!61718 (t!362903 (toList!7697 lm!2671))))))))

(declare-fun m!5833422 () Bool)

(assert (=> bs!1167867 m!5833422))

(assert (=> b!4837991 d!1550939))

(push 1)

(assert (not b!4837873))

(assert (not b!4837988))

(assert (not b!4837890))

(assert (not bm!337142))

(assert (not d!1550929))

(assert (not d!1550905))

(assert (not bm!337141))

(assert (not d!1550901))

(assert (not b_lambda!191217))

(assert (not b!4837952))

(assert (not b!4837955))

(assert (not b!4837987))

(assert (not d!1550921))

(assert (not bs!1167866))

(assert (not b_lambda!191219))

(assert (not d!1550931))

(assert (not bm!337146))

(assert (not b!4837895))

(assert (not d!1550907))

(assert (not b!4837884))

(assert (not bs!1167867))

(assert (not d!1550925))

(assert (not d!1550927))

(assert (not b!4837985))

(assert (not b!4837951))

(assert (not b!4837876))

(assert (not b!4837962))

(assert tp_is_empty!34877)

(assert (not b!4837948))

(assert (not b!4837992))

(assert (not b!4837989))

(assert (not b!4837997))

(assert (not b!4837959))

(assert (not b!4837949))

(assert (not b!4837990))

(assert (not b!4837957))

(assert (not bm!337143))

(assert (not d!1550895))

(assert (not b!4837982))

(assert (not b!4837874))

(assert (not b!4837983))

(assert (not d!1550933))

(assert (not b!4837871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

