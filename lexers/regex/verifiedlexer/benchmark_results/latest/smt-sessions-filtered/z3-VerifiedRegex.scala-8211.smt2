; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424148 () Bool)

(assert start!424148)

(declare-fun b!4369298 () Bool)

(declare-fun res!1797889 () Bool)

(declare-fun e!2719370 () Bool)

(assert (=> b!4369298 (=> (not res!1797889) (not e!2719370))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4949 0))(
  ( (HashableExt!4948 (__x!30652 Int)) )
))
(declare-fun hashF!1247 () Hashable!4949)

(declare-datatypes ((K!10460 0))(
  ( (K!10461 (val!16639 Int)) )
))
(declare-fun key!3918 () K!10460)

(declare-fun hash!1710 (Hashable!4949 K!10460) (_ BitVec 64))

(assert (=> b!4369298 (= res!1797889 (= (hash!1710 hashF!1247 key!3918) hash!377))))

(declare-fun b!4369299 () Bool)

(declare-fun e!2719369 () Bool)

(declare-fun tp!1330895 () Bool)

(assert (=> b!4369299 (= e!2719369 tp!1330895)))

(declare-fun b!4369300 () Bool)

(declare-datatypes ((V!10706 0))(
  ( (V!10707 (val!16640 Int)) )
))
(declare-datatypes ((tuple2!48598 0))(
  ( (tuple2!48599 (_1!27593 K!10460) (_2!27593 V!10706)) )
))
(declare-datatypes ((List!49222 0))(
  ( (Nil!49098) (Cons!49098 (h!54681 tuple2!48598) (t!356144 List!49222)) )
))
(declare-datatypes ((tuple2!48600 0))(
  ( (tuple2!48601 (_1!27594 (_ BitVec 64)) (_2!27594 List!49222)) )
))
(declare-fun lt!1580764 () tuple2!48600)

(declare-fun e!2719373 () Bool)

(declare-datatypes ((List!49223 0))(
  ( (Nil!49099) (Cons!49099 (h!54682 tuple2!48600) (t!356145 List!49223)) )
))
(declare-datatypes ((ListLongMap!1747 0))(
  ( (ListLongMap!1748 (toList!3097 List!49223)) )
))
(declare-fun lm!1707 () ListLongMap!1747)

(declare-fun lt!1580762 () ListLongMap!1747)

(get-info :version)

(assert (=> b!4369300 (= e!2719373 (or (not ((_ is Cons!49099) (toList!3097 lm!1707))) (not (= (_1!27594 (h!54682 (toList!3097 lm!1707))) hash!377)) (= lt!1580762 (ListLongMap!1748 (Cons!49099 lt!1580764 (t!356145 (toList!3097 lm!1707)))))))))

(declare-fun b!4369301 () Bool)

(declare-fun res!1797892 () Bool)

(assert (=> b!4369301 (=> (not res!1797892) (not e!2719373))))

(declare-fun lambda!143415 () Int)

(declare-fun forall!9231 (List!49223 Int) Bool)

(assert (=> b!4369301 (= res!1797892 (forall!9231 (toList!3097 lt!1580762) lambda!143415))))

(declare-fun b!4369303 () Bool)

(declare-fun res!1797899 () Bool)

(assert (=> b!4369303 (=> (not res!1797899) (not e!2719370))))

(declare-fun newBucket!200 () List!49222)

(declare-fun allKeysSameHash!515 (List!49222 (_ BitVec 64) Hashable!4949) Bool)

(assert (=> b!4369303 (= res!1797899 (allKeysSameHash!515 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4369304 () Bool)

(declare-fun res!1797891 () Bool)

(assert (=> b!4369304 (=> (not res!1797891) (not e!2719370))))

(declare-fun allKeysSameHashInMap!661 (ListLongMap!1747 Hashable!4949) Bool)

(assert (=> b!4369304 (= res!1797891 (allKeysSameHashInMap!661 lm!1707 hashF!1247))))

(declare-fun b!4369305 () Bool)

(declare-fun res!1797895 () Bool)

(declare-fun e!2719371 () Bool)

(assert (=> b!4369305 (=> res!1797895 e!2719371)))

(declare-fun noDuplicateKeys!557 (List!49222) Bool)

(assert (=> b!4369305 (= res!1797895 (not (noDuplicateKeys!557 newBucket!200)))))

(declare-fun b!4369306 () Bool)

(declare-fun res!1797893 () Bool)

(assert (=> b!4369306 (=> (not res!1797893) (not e!2719370))))

(declare-fun contains!11393 (ListLongMap!1747 (_ BitVec 64)) Bool)

(assert (=> b!4369306 (= res!1797893 (contains!11393 lm!1707 hash!377))))

(declare-fun b!4369307 () Bool)

(declare-fun res!1797890 () Bool)

(assert (=> b!4369307 (=> (not res!1797890) (not e!2719370))))

(declare-datatypes ((ListMap!2341 0))(
  ( (ListMap!2342 (toList!3098 List!49222)) )
))
(declare-fun contains!11394 (ListMap!2341 K!10460) Bool)

(declare-fun extractMap!616 (List!49223) ListMap!2341)

(assert (=> b!4369307 (= res!1797890 (contains!11394 (extractMap!616 (toList!3097 lm!1707)) key!3918))))

(declare-fun b!4369308 () Bool)

(declare-fun e!2719374 () Bool)

(assert (=> b!4369308 (= e!2719371 e!2719374)))

(declare-fun res!1797894 () Bool)

(assert (=> b!4369308 (=> res!1797894 e!2719374)))

(assert (=> b!4369308 (= res!1797894 (or (not ((_ is Cons!49099) (toList!3097 lm!1707))) (not (= (_1!27594 (h!54682 (toList!3097 lm!1707))) hash!377))))))

(assert (=> b!4369308 e!2719373))

(declare-fun res!1797898 () Bool)

(assert (=> b!4369308 (=> (not res!1797898) (not e!2719373))))

(assert (=> b!4369308 (= res!1797898 (forall!9231 (toList!3097 lt!1580762) lambda!143415))))

(declare-fun +!745 (ListLongMap!1747 tuple2!48600) ListLongMap!1747)

(assert (=> b!4369308 (= lt!1580762 (+!745 lm!1707 lt!1580764))))

(assert (=> b!4369308 (= lt!1580764 (tuple2!48601 hash!377 newBucket!200))))

(declare-datatypes ((Unit!73352 0))(
  ( (Unit!73353) )
))
(declare-fun lt!1580767 () Unit!73352)

(declare-fun addValidProp!203 (ListLongMap!1747 Int (_ BitVec 64) List!49222) Unit!73352)

(assert (=> b!4369308 (= lt!1580767 (addValidProp!203 lm!1707 lambda!143415 hash!377 newBucket!200))))

(assert (=> b!4369308 (forall!9231 (toList!3097 lm!1707) lambda!143415)))

(declare-fun lt!1580768 () tuple2!48598)

(declare-fun lt!1580758 () ListMap!2341)

(declare-fun b!4369302 () Bool)

(declare-fun lt!1580763 () ListMap!2341)

(declare-fun lt!1580769 () List!49222)

(declare-fun addToMapMapFromBucket!238 (List!49222 ListMap!2341) ListMap!2341)

(declare-fun +!746 (ListMap!2341 tuple2!48598) ListMap!2341)

(assert (=> b!4369302 (= e!2719374 (= lt!1580763 (addToMapMapFromBucket!238 lt!1580769 (+!746 lt!1580758 lt!1580768))))))

(declare-fun lt!1580766 () ListMap!2341)

(assert (=> b!4369302 (= lt!1580766 lt!1580763)))

(declare-fun lt!1580761 () List!49222)

(assert (=> b!4369302 (= lt!1580763 (addToMapMapFromBucket!238 lt!1580761 lt!1580758))))

(assert (=> b!4369302 (= lt!1580766 (addToMapMapFromBucket!238 newBucket!200 lt!1580758))))

(assert (=> b!4369302 (= lt!1580766 (extractMap!616 (toList!3097 lt!1580762)))))

(assert (=> b!4369302 (= lt!1580758 (extractMap!616 (t!356145 (toList!3097 lm!1707))))))

(declare-fun res!1797896 () Bool)

(assert (=> start!424148 (=> (not res!1797896) (not e!2719370))))

(assert (=> start!424148 (= res!1797896 (forall!9231 (toList!3097 lm!1707) lambda!143415))))

(assert (=> start!424148 e!2719370))

(declare-fun e!2719372 () Bool)

(assert (=> start!424148 e!2719372))

(assert (=> start!424148 true))

(declare-fun inv!64646 (ListLongMap!1747) Bool)

(assert (=> start!424148 (and (inv!64646 lm!1707) e!2719369)))

(declare-fun tp_is_empty!25465 () Bool)

(assert (=> start!424148 tp_is_empty!25465))

(declare-fun tp_is_empty!25467 () Bool)

(assert (=> start!424148 tp_is_empty!25467))

(declare-fun b!4369309 () Bool)

(assert (=> b!4369309 (= e!2719370 (not e!2719371))))

(declare-fun res!1797897 () Bool)

(assert (=> b!4369309 (=> res!1797897 e!2719371)))

(assert (=> b!4369309 (= res!1797897 (not (= newBucket!200 lt!1580761)))))

(assert (=> b!4369309 (= lt!1580761 (Cons!49098 lt!1580768 lt!1580769))))

(declare-fun lt!1580760 () List!49222)

(declare-fun removePairForKey!525 (List!49222 K!10460) List!49222)

(assert (=> b!4369309 (= lt!1580769 (removePairForKey!525 lt!1580760 key!3918))))

(declare-fun newValue!99 () V!10706)

(assert (=> b!4369309 (= lt!1580768 (tuple2!48599 key!3918 newValue!99))))

(declare-fun lt!1580759 () tuple2!48600)

(declare-fun lt!1580765 () Unit!73352)

(declare-fun forallContained!1869 (List!49223 Int tuple2!48600) Unit!73352)

(assert (=> b!4369309 (= lt!1580765 (forallContained!1869 (toList!3097 lm!1707) lambda!143415 lt!1580759))))

(declare-fun contains!11395 (List!49223 tuple2!48600) Bool)

(assert (=> b!4369309 (contains!11395 (toList!3097 lm!1707) lt!1580759)))

(assert (=> b!4369309 (= lt!1580759 (tuple2!48601 hash!377 lt!1580760))))

(declare-fun lt!1580770 () Unit!73352)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!402 (List!49223 (_ BitVec 64) List!49222) Unit!73352)

(assert (=> b!4369309 (= lt!1580770 (lemmaGetValueByKeyImpliesContainsTuple!402 (toList!3097 lm!1707) hash!377 lt!1580760))))

(declare-fun apply!11409 (ListLongMap!1747 (_ BitVec 64)) List!49222)

(assert (=> b!4369309 (= lt!1580760 (apply!11409 lm!1707 hash!377))))

(declare-fun tp!1330896 () Bool)

(declare-fun b!4369310 () Bool)

(assert (=> b!4369310 (= e!2719372 (and tp_is_empty!25465 tp_is_empty!25467 tp!1330896))))

(assert (= (and start!424148 res!1797896) b!4369304))

(assert (= (and b!4369304 res!1797891) b!4369298))

(assert (= (and b!4369298 res!1797889) b!4369303))

(assert (= (and b!4369303 res!1797899) b!4369307))

(assert (= (and b!4369307 res!1797890) b!4369306))

(assert (= (and b!4369306 res!1797893) b!4369309))

(assert (= (and b!4369309 (not res!1797897)) b!4369305))

(assert (= (and b!4369305 (not res!1797895)) b!4369308))

(assert (= (and b!4369308 res!1797898) b!4369301))

(assert (= (and b!4369301 res!1797892) b!4369300))

(assert (= (and b!4369308 (not res!1797894)) b!4369302))

(assert (= (and start!424148 ((_ is Cons!49098) newBucket!200)) b!4369310))

(assert (= start!424148 b!4369299))

(declare-fun m!4993067 () Bool)

(assert (=> b!4369298 m!4993067))

(declare-fun m!4993069 () Bool)

(assert (=> b!4369301 m!4993069))

(declare-fun m!4993071 () Bool)

(assert (=> b!4369303 m!4993071))

(assert (=> b!4369308 m!4993069))

(declare-fun m!4993073 () Bool)

(assert (=> b!4369308 m!4993073))

(declare-fun m!4993075 () Bool)

(assert (=> b!4369308 m!4993075))

(declare-fun m!4993077 () Bool)

(assert (=> b!4369308 m!4993077))

(declare-fun m!4993079 () Bool)

(assert (=> b!4369307 m!4993079))

(assert (=> b!4369307 m!4993079))

(declare-fun m!4993081 () Bool)

(assert (=> b!4369307 m!4993081))

(declare-fun m!4993083 () Bool)

(assert (=> b!4369304 m!4993083))

(declare-fun m!4993085 () Bool)

(assert (=> b!4369302 m!4993085))

(declare-fun m!4993087 () Bool)

(assert (=> b!4369302 m!4993087))

(declare-fun m!4993089 () Bool)

(assert (=> b!4369302 m!4993089))

(declare-fun m!4993091 () Bool)

(assert (=> b!4369302 m!4993091))

(declare-fun m!4993093 () Bool)

(assert (=> b!4369302 m!4993093))

(declare-fun m!4993095 () Bool)

(assert (=> b!4369302 m!4993095))

(assert (=> b!4369302 m!4993085))

(assert (=> start!424148 m!4993077))

(declare-fun m!4993097 () Bool)

(assert (=> start!424148 m!4993097))

(declare-fun m!4993099 () Bool)

(assert (=> b!4369309 m!4993099))

(declare-fun m!4993101 () Bool)

(assert (=> b!4369309 m!4993101))

(declare-fun m!4993103 () Bool)

(assert (=> b!4369309 m!4993103))

(declare-fun m!4993105 () Bool)

(assert (=> b!4369309 m!4993105))

(declare-fun m!4993107 () Bool)

(assert (=> b!4369309 m!4993107))

(declare-fun m!4993109 () Bool)

(assert (=> b!4369305 m!4993109))

(declare-fun m!4993111 () Bool)

(assert (=> b!4369306 m!4993111))

(check-sat (not b!4369306) (not b!4369301) (not b!4369302) (not start!424148) (not b!4369304) (not b!4369308) (not b!4369303) (not b!4369310) tp_is_empty!25467 (not b!4369299) (not b!4369298) (not b!4369307) (not b!4369305) tp_is_empty!25465 (not b!4369309))
(check-sat)
(get-model)

(declare-fun bs!637850 () Bool)

(declare-fun d!1293842 () Bool)

(assert (= bs!637850 (and d!1293842 start!424148)))

(declare-fun lambda!143418 () Int)

(assert (=> bs!637850 (not (= lambda!143418 lambda!143415))))

(assert (=> d!1293842 true))

(assert (=> d!1293842 (= (allKeysSameHashInMap!661 lm!1707 hashF!1247) (forall!9231 (toList!3097 lm!1707) lambda!143418))))

(declare-fun bs!637851 () Bool)

(assert (= bs!637851 d!1293842))

(declare-fun m!4993129 () Bool)

(assert (=> bs!637851 m!4993129))

(assert (=> b!4369304 d!1293842))

(declare-fun d!1293846 () Bool)

(declare-fun res!1797927 () Bool)

(declare-fun e!2719399 () Bool)

(assert (=> d!1293846 (=> res!1797927 e!2719399)))

(assert (=> d!1293846 (= res!1797927 (not ((_ is Cons!49098) newBucket!200)))))

(assert (=> d!1293846 (= (noDuplicateKeys!557 newBucket!200) e!2719399)))

(declare-fun b!4369341 () Bool)

(declare-fun e!2719400 () Bool)

(assert (=> b!4369341 (= e!2719399 e!2719400)))

(declare-fun res!1797928 () Bool)

(assert (=> b!4369341 (=> (not res!1797928) (not e!2719400))))

(declare-fun containsKey!805 (List!49222 K!10460) Bool)

(assert (=> b!4369341 (= res!1797928 (not (containsKey!805 (t!356144 newBucket!200) (_1!27593 (h!54681 newBucket!200)))))))

(declare-fun b!4369342 () Bool)

(assert (=> b!4369342 (= e!2719400 (noDuplicateKeys!557 (t!356144 newBucket!200)))))

(assert (= (and d!1293846 (not res!1797927)) b!4369341))

(assert (= (and b!4369341 res!1797928) b!4369342))

(declare-fun m!4993147 () Bool)

(assert (=> b!4369341 m!4993147))

(declare-fun m!4993149 () Bool)

(assert (=> b!4369342 m!4993149))

(assert (=> b!4369305 d!1293846))

(declare-fun d!1293854 () Bool)

(declare-fun res!1797933 () Bool)

(declare-fun e!2719405 () Bool)

(assert (=> d!1293854 (=> res!1797933 e!2719405)))

(assert (=> d!1293854 (= res!1797933 ((_ is Nil!49099) (toList!3097 lt!1580762)))))

(assert (=> d!1293854 (= (forall!9231 (toList!3097 lt!1580762) lambda!143415) e!2719405)))

(declare-fun b!4369347 () Bool)

(declare-fun e!2719406 () Bool)

(assert (=> b!4369347 (= e!2719405 e!2719406)))

(declare-fun res!1797934 () Bool)

(assert (=> b!4369347 (=> (not res!1797934) (not e!2719406))))

(declare-fun dynLambda!20687 (Int tuple2!48600) Bool)

(assert (=> b!4369347 (= res!1797934 (dynLambda!20687 lambda!143415 (h!54682 (toList!3097 lt!1580762))))))

(declare-fun b!4369348 () Bool)

(assert (=> b!4369348 (= e!2719406 (forall!9231 (t!356145 (toList!3097 lt!1580762)) lambda!143415))))

(assert (= (and d!1293854 (not res!1797933)) b!4369347))

(assert (= (and b!4369347 res!1797934) b!4369348))

(declare-fun b_lambda!132867 () Bool)

(assert (=> (not b_lambda!132867) (not b!4369347)))

(declare-fun m!4993151 () Bool)

(assert (=> b!4369347 m!4993151))

(declare-fun m!4993153 () Bool)

(assert (=> b!4369348 m!4993153))

(assert (=> b!4369301 d!1293854))

(declare-fun d!1293856 () Bool)

(assert (=> d!1293856 true))

(assert (=> d!1293856 true))

(declare-fun lambda!143421 () Int)

(declare-fun forall!9233 (List!49222 Int) Bool)

(assert (=> d!1293856 (= (allKeysSameHash!515 newBucket!200 hash!377 hashF!1247) (forall!9233 newBucket!200 lambda!143421))))

(declare-fun bs!637852 () Bool)

(assert (= bs!637852 d!1293856))

(declare-fun m!4993155 () Bool)

(assert (=> bs!637852 m!4993155))

(assert (=> b!4369303 d!1293856))

(declare-fun bs!637904 () Bool)

(declare-fun b!4369441 () Bool)

(assert (= bs!637904 (and b!4369441 d!1293856)))

(declare-fun lambda!143497 () Int)

(assert (=> bs!637904 (not (= lambda!143497 lambda!143421))))

(assert (=> b!4369441 true))

(declare-fun bs!637905 () Bool)

(declare-fun b!4369444 () Bool)

(assert (= bs!637905 (and b!4369444 d!1293856)))

(declare-fun lambda!143498 () Int)

(assert (=> bs!637905 (not (= lambda!143498 lambda!143421))))

(declare-fun bs!637906 () Bool)

(assert (= bs!637906 (and b!4369444 b!4369441)))

(assert (=> bs!637906 (= lambda!143498 lambda!143497)))

(assert (=> b!4369444 true))

(declare-fun lambda!143499 () Int)

(assert (=> bs!637905 (not (= lambda!143499 lambda!143421))))

(declare-fun lt!1580992 () ListMap!2341)

(assert (=> bs!637906 (= (= lt!1580992 lt!1580758) (= lambda!143499 lambda!143497))))

(assert (=> b!4369444 (= (= lt!1580992 lt!1580758) (= lambda!143499 lambda!143498))))

(assert (=> b!4369444 true))

(declare-fun bs!637907 () Bool)

(declare-fun d!1293858 () Bool)

(assert (= bs!637907 (and d!1293858 d!1293856)))

(declare-fun lambda!143500 () Int)

(assert (=> bs!637907 (not (= lambda!143500 lambda!143421))))

(declare-fun bs!637908 () Bool)

(assert (= bs!637908 (and d!1293858 b!4369441)))

(declare-fun lt!1580980 () ListMap!2341)

(assert (=> bs!637908 (= (= lt!1580980 lt!1580758) (= lambda!143500 lambda!143497))))

(declare-fun bs!637909 () Bool)

(assert (= bs!637909 (and d!1293858 b!4369444)))

(assert (=> bs!637909 (= (= lt!1580980 lt!1580758) (= lambda!143500 lambda!143498))))

(assert (=> bs!637909 (= (= lt!1580980 lt!1580992) (= lambda!143500 lambda!143499))))

(assert (=> d!1293858 true))

(declare-fun call!303683 () Bool)

(declare-fun c!742861 () Bool)

(declare-fun bm!303676 () Bool)

(assert (=> bm!303676 (= call!303683 (forall!9233 (toList!3098 lt!1580758) (ite c!742861 lambda!143497 lambda!143499)))))

(declare-fun call!303681 () Bool)

(declare-fun lt!1580983 () ListMap!2341)

(declare-fun bm!303677 () Bool)

(assert (=> bm!303677 (= call!303681 (forall!9233 (ite c!742861 (toList!3098 lt!1580758) (toList!3098 lt!1580983)) (ite c!742861 lambda!143497 lambda!143499)))))

(declare-fun e!2719460 () ListMap!2341)

(assert (=> b!4369441 (= e!2719460 lt!1580758)))

(declare-fun lt!1580982 () Unit!73352)

(declare-fun call!303682 () Unit!73352)

(assert (=> b!4369441 (= lt!1580982 call!303682)))

(assert (=> b!4369441 call!303683))

(declare-fun lt!1580993 () Unit!73352)

(assert (=> b!4369441 (= lt!1580993 lt!1580982)))

(assert (=> b!4369441 call!303681))

(declare-fun lt!1580990 () Unit!73352)

(declare-fun Unit!73376 () Unit!73352)

(assert (=> b!4369441 (= lt!1580990 Unit!73376)))

(declare-fun b!4369442 () Bool)

(declare-fun e!2719459 () Bool)

(assert (=> b!4369442 (= e!2719459 (forall!9233 (toList!3098 lt!1580758) lambda!143499))))

(declare-fun e!2719461 () Bool)

(assert (=> d!1293858 e!2719461))

(declare-fun res!1797978 () Bool)

(assert (=> d!1293858 (=> (not res!1797978) (not e!2719461))))

(assert (=> d!1293858 (= res!1797978 (forall!9233 newBucket!200 lambda!143500))))

(assert (=> d!1293858 (= lt!1580980 e!2719460)))

(assert (=> d!1293858 (= c!742861 ((_ is Nil!49098) newBucket!200))))

(assert (=> d!1293858 (noDuplicateKeys!557 newBucket!200)))

(assert (=> d!1293858 (= (addToMapMapFromBucket!238 newBucket!200 lt!1580758) lt!1580980)))

(declare-fun b!4369443 () Bool)

(declare-fun res!1797979 () Bool)

(assert (=> b!4369443 (=> (not res!1797979) (not e!2719461))))

(assert (=> b!4369443 (= res!1797979 (forall!9233 (toList!3098 lt!1580758) lambda!143500))))

(assert (=> b!4369444 (= e!2719460 lt!1580992)))

(assert (=> b!4369444 (= lt!1580983 (+!746 lt!1580758 (h!54681 newBucket!200)))))

(assert (=> b!4369444 (= lt!1580992 (addToMapMapFromBucket!238 (t!356144 newBucket!200) (+!746 lt!1580758 (h!54681 newBucket!200))))))

(declare-fun lt!1580981 () Unit!73352)

(assert (=> b!4369444 (= lt!1580981 call!303682)))

(assert (=> b!4369444 (forall!9233 (toList!3098 lt!1580758) lambda!143498)))

(declare-fun lt!1580977 () Unit!73352)

(assert (=> b!4369444 (= lt!1580977 lt!1580981)))

(assert (=> b!4369444 call!303681))

(declare-fun lt!1580987 () Unit!73352)

(declare-fun Unit!73377 () Unit!73352)

(assert (=> b!4369444 (= lt!1580987 Unit!73377)))

(assert (=> b!4369444 (forall!9233 (t!356144 newBucket!200) lambda!143499)))

(declare-fun lt!1580985 () Unit!73352)

(declare-fun Unit!73378 () Unit!73352)

(assert (=> b!4369444 (= lt!1580985 Unit!73378)))

(declare-fun lt!1580979 () Unit!73352)

(declare-fun Unit!73379 () Unit!73352)

(assert (=> b!4369444 (= lt!1580979 Unit!73379)))

(declare-fun lt!1580974 () Unit!73352)

(declare-fun forallContained!1871 (List!49222 Int tuple2!48598) Unit!73352)

(assert (=> b!4369444 (= lt!1580974 (forallContained!1871 (toList!3098 lt!1580983) lambda!143499 (h!54681 newBucket!200)))))

(assert (=> b!4369444 (contains!11394 lt!1580983 (_1!27593 (h!54681 newBucket!200)))))

(declare-fun lt!1580984 () Unit!73352)

(declare-fun Unit!73380 () Unit!73352)

(assert (=> b!4369444 (= lt!1580984 Unit!73380)))

(assert (=> b!4369444 (contains!11394 lt!1580992 (_1!27593 (h!54681 newBucket!200)))))

(declare-fun lt!1580991 () Unit!73352)

(declare-fun Unit!73381 () Unit!73352)

(assert (=> b!4369444 (= lt!1580991 Unit!73381)))

(assert (=> b!4369444 (forall!9233 newBucket!200 lambda!143499)))

(declare-fun lt!1580989 () Unit!73352)

(declare-fun Unit!73382 () Unit!73352)

(assert (=> b!4369444 (= lt!1580989 Unit!73382)))

(assert (=> b!4369444 (forall!9233 (toList!3098 lt!1580983) lambda!143499)))

(declare-fun lt!1580988 () Unit!73352)

(declare-fun Unit!73383 () Unit!73352)

(assert (=> b!4369444 (= lt!1580988 Unit!73383)))

(declare-fun lt!1580986 () Unit!73352)

(declare-fun Unit!73384 () Unit!73352)

(assert (=> b!4369444 (= lt!1580986 Unit!73384)))

(declare-fun lt!1580975 () Unit!73352)

(declare-fun addForallContainsKeyThenBeforeAdding!91 (ListMap!2341 ListMap!2341 K!10460 V!10706) Unit!73352)

(assert (=> b!4369444 (= lt!1580975 (addForallContainsKeyThenBeforeAdding!91 lt!1580758 lt!1580992 (_1!27593 (h!54681 newBucket!200)) (_2!27593 (h!54681 newBucket!200))))))

(assert (=> b!4369444 (forall!9233 (toList!3098 lt!1580758) lambda!143499)))

(declare-fun lt!1580973 () Unit!73352)

(assert (=> b!4369444 (= lt!1580973 lt!1580975)))

(assert (=> b!4369444 call!303683))

(declare-fun lt!1580978 () Unit!73352)

(declare-fun Unit!73385 () Unit!73352)

(assert (=> b!4369444 (= lt!1580978 Unit!73385)))

(declare-fun res!1797977 () Bool)

(assert (=> b!4369444 (= res!1797977 (forall!9233 newBucket!200 lambda!143499))))

(assert (=> b!4369444 (=> (not res!1797977) (not e!2719459))))

(assert (=> b!4369444 e!2719459))

(declare-fun lt!1580976 () Unit!73352)

(declare-fun Unit!73386 () Unit!73352)

(assert (=> b!4369444 (= lt!1580976 Unit!73386)))

(declare-fun bm!303678 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!91 (ListMap!2341) Unit!73352)

(assert (=> bm!303678 (= call!303682 (lemmaContainsAllItsOwnKeys!91 lt!1580758))))

(declare-fun b!4369445 () Bool)

(declare-fun invariantList!709 (List!49222) Bool)

(assert (=> b!4369445 (= e!2719461 (invariantList!709 (toList!3098 lt!1580980)))))

(assert (= (and d!1293858 c!742861) b!4369441))

(assert (= (and d!1293858 (not c!742861)) b!4369444))

(assert (= (and b!4369444 res!1797977) b!4369442))

(assert (= (or b!4369441 b!4369444) bm!303678))

(assert (= (or b!4369441 b!4369444) bm!303676))

(assert (= (or b!4369441 b!4369444) bm!303677))

(assert (= (and d!1293858 res!1797978) b!4369443))

(assert (= (and b!4369443 res!1797979) b!4369445))

(declare-fun m!4993319 () Bool)

(assert (=> b!4369443 m!4993319))

(declare-fun m!4993321 () Bool)

(assert (=> b!4369442 m!4993321))

(declare-fun m!4993323 () Bool)

(assert (=> bm!303676 m!4993323))

(declare-fun m!4993325 () Bool)

(assert (=> b!4369445 m!4993325))

(declare-fun m!4993327 () Bool)

(assert (=> bm!303677 m!4993327))

(declare-fun m!4993329 () Bool)

(assert (=> bm!303678 m!4993329))

(declare-fun m!4993331 () Bool)

(assert (=> d!1293858 m!4993331))

(assert (=> d!1293858 m!4993109))

(declare-fun m!4993333 () Bool)

(assert (=> b!4369444 m!4993333))

(declare-fun m!4993335 () Bool)

(assert (=> b!4369444 m!4993335))

(declare-fun m!4993337 () Bool)

(assert (=> b!4369444 m!4993337))

(declare-fun m!4993339 () Bool)

(assert (=> b!4369444 m!4993339))

(declare-fun m!4993341 () Bool)

(assert (=> b!4369444 m!4993341))

(assert (=> b!4369444 m!4993341))

(declare-fun m!4993343 () Bool)

(assert (=> b!4369444 m!4993343))

(declare-fun m!4993345 () Bool)

(assert (=> b!4369444 m!4993345))

(assert (=> b!4369444 m!4993333))

(declare-fun m!4993347 () Bool)

(assert (=> b!4369444 m!4993347))

(assert (=> b!4369444 m!4993321))

(declare-fun m!4993349 () Bool)

(assert (=> b!4369444 m!4993349))

(declare-fun m!4993351 () Bool)

(assert (=> b!4369444 m!4993351))

(assert (=> b!4369302 d!1293858))

(declare-fun d!1293888 () Bool)

(declare-fun e!2719483 () Bool)

(assert (=> d!1293888 e!2719483))

(declare-fun res!1797994 () Bool)

(assert (=> d!1293888 (=> (not res!1797994) (not e!2719483))))

(declare-fun lt!1581030 () ListMap!2341)

(assert (=> d!1293888 (= res!1797994 (contains!11394 lt!1581030 (_1!27593 lt!1580768)))))

(declare-fun lt!1581029 () List!49222)

(assert (=> d!1293888 (= lt!1581030 (ListMap!2342 lt!1581029))))

(declare-fun lt!1581028 () Unit!73352)

(declare-fun lt!1581027 () Unit!73352)

(assert (=> d!1293888 (= lt!1581028 lt!1581027)))

(declare-datatypes ((Option!10531 0))(
  ( (None!10530) (Some!10530 (v!43494 V!10706)) )
))
(declare-fun getValueByKey!517 (List!49222 K!10460) Option!10531)

(assert (=> d!1293888 (= (getValueByKey!517 lt!1581029 (_1!27593 lt!1580768)) (Some!10530 (_2!27593 lt!1580768)))))

(declare-fun lemmaContainsTupThenGetReturnValue!281 (List!49222 K!10460 V!10706) Unit!73352)

(assert (=> d!1293888 (= lt!1581027 (lemmaContainsTupThenGetReturnValue!281 lt!1581029 (_1!27593 lt!1580768) (_2!27593 lt!1580768)))))

(declare-fun insertNoDuplicatedKeys!127 (List!49222 K!10460 V!10706) List!49222)

(assert (=> d!1293888 (= lt!1581029 (insertNoDuplicatedKeys!127 (toList!3098 lt!1580758) (_1!27593 lt!1580768) (_2!27593 lt!1580768)))))

(assert (=> d!1293888 (= (+!746 lt!1580758 lt!1580768) lt!1581030)))

(declare-fun b!4369481 () Bool)

(declare-fun res!1797993 () Bool)

(assert (=> b!4369481 (=> (not res!1797993) (not e!2719483))))

(assert (=> b!4369481 (= res!1797993 (= (getValueByKey!517 (toList!3098 lt!1581030) (_1!27593 lt!1580768)) (Some!10530 (_2!27593 lt!1580768))))))

(declare-fun b!4369482 () Bool)

(declare-fun contains!11397 (List!49222 tuple2!48598) Bool)

(assert (=> b!4369482 (= e!2719483 (contains!11397 (toList!3098 lt!1581030) lt!1580768))))

(assert (= (and d!1293888 res!1797994) b!4369481))

(assert (= (and b!4369481 res!1797993) b!4369482))

(declare-fun m!4993379 () Bool)

(assert (=> d!1293888 m!4993379))

(declare-fun m!4993381 () Bool)

(assert (=> d!1293888 m!4993381))

(declare-fun m!4993383 () Bool)

(assert (=> d!1293888 m!4993383))

(declare-fun m!4993385 () Bool)

(assert (=> d!1293888 m!4993385))

(declare-fun m!4993387 () Bool)

(assert (=> b!4369481 m!4993387))

(declare-fun m!4993389 () Bool)

(assert (=> b!4369482 m!4993389))

(assert (=> b!4369302 d!1293888))

(declare-fun bs!637915 () Bool)

(declare-fun b!4369483 () Bool)

(assert (= bs!637915 (and b!4369483 d!1293858)))

(declare-fun lambda!143505 () Int)

(assert (=> bs!637915 (= (= lt!1580758 lt!1580980) (= lambda!143505 lambda!143500))))

(declare-fun bs!637917 () Bool)

(assert (= bs!637917 (and b!4369483 d!1293856)))

(assert (=> bs!637917 (not (= lambda!143505 lambda!143421))))

(declare-fun bs!637919 () Bool)

(assert (= bs!637919 (and b!4369483 b!4369441)))

(assert (=> bs!637919 (= lambda!143505 lambda!143497)))

(declare-fun bs!637921 () Bool)

(assert (= bs!637921 (and b!4369483 b!4369444)))

(assert (=> bs!637921 (= lambda!143505 lambda!143498)))

(assert (=> bs!637921 (= (= lt!1580758 lt!1580992) (= lambda!143505 lambda!143499))))

(assert (=> b!4369483 true))

(declare-fun bs!637923 () Bool)

(declare-fun b!4369486 () Bool)

(assert (= bs!637923 (and b!4369486 d!1293858)))

(declare-fun lambda!143506 () Int)

(assert (=> bs!637923 (= (= lt!1580758 lt!1580980) (= lambda!143506 lambda!143500))))

(declare-fun bs!637924 () Bool)

(assert (= bs!637924 (and b!4369486 d!1293856)))

(assert (=> bs!637924 (not (= lambda!143506 lambda!143421))))

(declare-fun bs!637925 () Bool)

(assert (= bs!637925 (and b!4369486 b!4369441)))

(assert (=> bs!637925 (= lambda!143506 lambda!143497)))

(declare-fun bs!637926 () Bool)

(assert (= bs!637926 (and b!4369486 b!4369483)))

(assert (=> bs!637926 (= lambda!143506 lambda!143505)))

(declare-fun bs!637927 () Bool)

(assert (= bs!637927 (and b!4369486 b!4369444)))

(assert (=> bs!637927 (= lambda!143506 lambda!143498)))

(assert (=> bs!637927 (= (= lt!1580758 lt!1580992) (= lambda!143506 lambda!143499))))

(assert (=> b!4369486 true))

(declare-fun lt!1581050 () ListMap!2341)

(declare-fun lambda!143507 () Int)

(assert (=> bs!637923 (= (= lt!1581050 lt!1580980) (= lambda!143507 lambda!143500))))

(assert (=> bs!637924 (not (= lambda!143507 lambda!143421))))

(assert (=> bs!637925 (= (= lt!1581050 lt!1580758) (= lambda!143507 lambda!143497))))

(assert (=> bs!637926 (= (= lt!1581050 lt!1580758) (= lambda!143507 lambda!143505))))

(assert (=> b!4369486 (= (= lt!1581050 lt!1580758) (= lambda!143507 lambda!143506))))

(assert (=> bs!637927 (= (= lt!1581050 lt!1580758) (= lambda!143507 lambda!143498))))

(assert (=> bs!637927 (= (= lt!1581050 lt!1580992) (= lambda!143507 lambda!143499))))

(assert (=> b!4369486 true))

(declare-fun bs!637932 () Bool)

(declare-fun d!1293896 () Bool)

(assert (= bs!637932 (and d!1293896 d!1293858)))

(declare-fun lambda!143508 () Int)

(declare-fun lt!1581038 () ListMap!2341)

(assert (=> bs!637932 (= (= lt!1581038 lt!1580980) (= lambda!143508 lambda!143500))))

(declare-fun bs!637933 () Bool)

(assert (= bs!637933 (and d!1293896 d!1293856)))

(assert (=> bs!637933 (not (= lambda!143508 lambda!143421))))

(declare-fun bs!637934 () Bool)

(assert (= bs!637934 (and d!1293896 b!4369441)))

(assert (=> bs!637934 (= (= lt!1581038 lt!1580758) (= lambda!143508 lambda!143497))))

(declare-fun bs!637935 () Bool)

(assert (= bs!637935 (and d!1293896 b!4369483)))

(assert (=> bs!637935 (= (= lt!1581038 lt!1580758) (= lambda!143508 lambda!143505))))

(declare-fun bs!637936 () Bool)

(assert (= bs!637936 (and d!1293896 b!4369486)))

(assert (=> bs!637936 (= (= lt!1581038 lt!1580758) (= lambda!143508 lambda!143506))))

(assert (=> bs!637936 (= (= lt!1581038 lt!1581050) (= lambda!143508 lambda!143507))))

(declare-fun bs!637937 () Bool)

(assert (= bs!637937 (and d!1293896 b!4369444)))

(assert (=> bs!637937 (= (= lt!1581038 lt!1580758) (= lambda!143508 lambda!143498))))

(assert (=> bs!637937 (= (= lt!1581038 lt!1580992) (= lambda!143508 lambda!143499))))

(assert (=> d!1293896 true))

(declare-fun bm!303682 () Bool)

(declare-fun call!303689 () Bool)

(declare-fun c!742872 () Bool)

(assert (=> bm!303682 (= call!303689 (forall!9233 (toList!3098 lt!1580758) (ite c!742872 lambda!143505 lambda!143507)))))

(declare-fun bm!303683 () Bool)

(declare-fun call!303687 () Bool)

(declare-fun lt!1581041 () ListMap!2341)

(assert (=> bm!303683 (= call!303687 (forall!9233 (ite c!742872 (toList!3098 lt!1580758) (toList!3098 lt!1581041)) (ite c!742872 lambda!143505 lambda!143507)))))

(declare-fun e!2719485 () ListMap!2341)

(assert (=> b!4369483 (= e!2719485 lt!1580758)))

(declare-fun lt!1581040 () Unit!73352)

(declare-fun call!303688 () Unit!73352)

(assert (=> b!4369483 (= lt!1581040 call!303688)))

(assert (=> b!4369483 call!303689))

(declare-fun lt!1581051 () Unit!73352)

(assert (=> b!4369483 (= lt!1581051 lt!1581040)))

(assert (=> b!4369483 call!303687))

(declare-fun lt!1581048 () Unit!73352)

(declare-fun Unit!73399 () Unit!73352)

(assert (=> b!4369483 (= lt!1581048 Unit!73399)))

(declare-fun b!4369484 () Bool)

(declare-fun e!2719484 () Bool)

(assert (=> b!4369484 (= e!2719484 (forall!9233 (toList!3098 lt!1580758) lambda!143507))))

(declare-fun e!2719486 () Bool)

(assert (=> d!1293896 e!2719486))

(declare-fun res!1797996 () Bool)

(assert (=> d!1293896 (=> (not res!1797996) (not e!2719486))))

(assert (=> d!1293896 (= res!1797996 (forall!9233 lt!1580761 lambda!143508))))

(assert (=> d!1293896 (= lt!1581038 e!2719485)))

(assert (=> d!1293896 (= c!742872 ((_ is Nil!49098) lt!1580761))))

(assert (=> d!1293896 (noDuplicateKeys!557 lt!1580761)))

(assert (=> d!1293896 (= (addToMapMapFromBucket!238 lt!1580761 lt!1580758) lt!1581038)))

(declare-fun b!4369485 () Bool)

(declare-fun res!1797997 () Bool)

(assert (=> b!4369485 (=> (not res!1797997) (not e!2719486))))

(assert (=> b!4369485 (= res!1797997 (forall!9233 (toList!3098 lt!1580758) lambda!143508))))

(assert (=> b!4369486 (= e!2719485 lt!1581050)))

(assert (=> b!4369486 (= lt!1581041 (+!746 lt!1580758 (h!54681 lt!1580761)))))

(assert (=> b!4369486 (= lt!1581050 (addToMapMapFromBucket!238 (t!356144 lt!1580761) (+!746 lt!1580758 (h!54681 lt!1580761))))))

(declare-fun lt!1581039 () Unit!73352)

(assert (=> b!4369486 (= lt!1581039 call!303688)))

(assert (=> b!4369486 (forall!9233 (toList!3098 lt!1580758) lambda!143506)))

(declare-fun lt!1581035 () Unit!73352)

(assert (=> b!4369486 (= lt!1581035 lt!1581039)))

(assert (=> b!4369486 call!303687))

(declare-fun lt!1581045 () Unit!73352)

(declare-fun Unit!73400 () Unit!73352)

(assert (=> b!4369486 (= lt!1581045 Unit!73400)))

(assert (=> b!4369486 (forall!9233 (t!356144 lt!1580761) lambda!143507)))

(declare-fun lt!1581043 () Unit!73352)

(declare-fun Unit!73401 () Unit!73352)

(assert (=> b!4369486 (= lt!1581043 Unit!73401)))

(declare-fun lt!1581037 () Unit!73352)

(declare-fun Unit!73402 () Unit!73352)

(assert (=> b!4369486 (= lt!1581037 Unit!73402)))

(declare-fun lt!1581032 () Unit!73352)

(assert (=> b!4369486 (= lt!1581032 (forallContained!1871 (toList!3098 lt!1581041) lambda!143507 (h!54681 lt!1580761)))))

(assert (=> b!4369486 (contains!11394 lt!1581041 (_1!27593 (h!54681 lt!1580761)))))

(declare-fun lt!1581042 () Unit!73352)

(declare-fun Unit!73403 () Unit!73352)

(assert (=> b!4369486 (= lt!1581042 Unit!73403)))

(assert (=> b!4369486 (contains!11394 lt!1581050 (_1!27593 (h!54681 lt!1580761)))))

(declare-fun lt!1581049 () Unit!73352)

(declare-fun Unit!73404 () Unit!73352)

(assert (=> b!4369486 (= lt!1581049 Unit!73404)))

(assert (=> b!4369486 (forall!9233 lt!1580761 lambda!143507)))

(declare-fun lt!1581047 () Unit!73352)

(declare-fun Unit!73405 () Unit!73352)

(assert (=> b!4369486 (= lt!1581047 Unit!73405)))

(assert (=> b!4369486 (forall!9233 (toList!3098 lt!1581041) lambda!143507)))

(declare-fun lt!1581046 () Unit!73352)

(declare-fun Unit!73406 () Unit!73352)

(assert (=> b!4369486 (= lt!1581046 Unit!73406)))

(declare-fun lt!1581044 () Unit!73352)

(declare-fun Unit!73407 () Unit!73352)

(assert (=> b!4369486 (= lt!1581044 Unit!73407)))

(declare-fun lt!1581033 () Unit!73352)

(assert (=> b!4369486 (= lt!1581033 (addForallContainsKeyThenBeforeAdding!91 lt!1580758 lt!1581050 (_1!27593 (h!54681 lt!1580761)) (_2!27593 (h!54681 lt!1580761))))))

(assert (=> b!4369486 (forall!9233 (toList!3098 lt!1580758) lambda!143507)))

(declare-fun lt!1581031 () Unit!73352)

(assert (=> b!4369486 (= lt!1581031 lt!1581033)))

(assert (=> b!4369486 call!303689))

(declare-fun lt!1581036 () Unit!73352)

(declare-fun Unit!73408 () Unit!73352)

(assert (=> b!4369486 (= lt!1581036 Unit!73408)))

(declare-fun res!1797995 () Bool)

(assert (=> b!4369486 (= res!1797995 (forall!9233 lt!1580761 lambda!143507))))

(assert (=> b!4369486 (=> (not res!1797995) (not e!2719484))))

(assert (=> b!4369486 e!2719484))

(declare-fun lt!1581034 () Unit!73352)

(declare-fun Unit!73409 () Unit!73352)

(assert (=> b!4369486 (= lt!1581034 Unit!73409)))

(declare-fun bm!303684 () Bool)

(assert (=> bm!303684 (= call!303688 (lemmaContainsAllItsOwnKeys!91 lt!1580758))))

(declare-fun b!4369487 () Bool)

(assert (=> b!4369487 (= e!2719486 (invariantList!709 (toList!3098 lt!1581038)))))

(assert (= (and d!1293896 c!742872) b!4369483))

(assert (= (and d!1293896 (not c!742872)) b!4369486))

(assert (= (and b!4369486 res!1797995) b!4369484))

(assert (= (or b!4369483 b!4369486) bm!303684))

(assert (= (or b!4369483 b!4369486) bm!303682))

(assert (= (or b!4369483 b!4369486) bm!303683))

(assert (= (and d!1293896 res!1797996) b!4369485))

(assert (= (and b!4369485 res!1797997) b!4369487))

(declare-fun m!4993401 () Bool)

(assert (=> b!4369485 m!4993401))

(declare-fun m!4993403 () Bool)

(assert (=> b!4369484 m!4993403))

(declare-fun m!4993405 () Bool)

(assert (=> bm!303682 m!4993405))

(declare-fun m!4993407 () Bool)

(assert (=> b!4369487 m!4993407))

(declare-fun m!4993409 () Bool)

(assert (=> bm!303683 m!4993409))

(assert (=> bm!303684 m!4993329))

(declare-fun m!4993411 () Bool)

(assert (=> d!1293896 m!4993411))

(declare-fun m!4993413 () Bool)

(assert (=> d!1293896 m!4993413))

(declare-fun m!4993415 () Bool)

(assert (=> b!4369486 m!4993415))

(declare-fun m!4993417 () Bool)

(assert (=> b!4369486 m!4993417))

(declare-fun m!4993419 () Bool)

(assert (=> b!4369486 m!4993419))

(declare-fun m!4993421 () Bool)

(assert (=> b!4369486 m!4993421))

(declare-fun m!4993423 () Bool)

(assert (=> b!4369486 m!4993423))

(assert (=> b!4369486 m!4993423))

(declare-fun m!4993425 () Bool)

(assert (=> b!4369486 m!4993425))

(declare-fun m!4993427 () Bool)

(assert (=> b!4369486 m!4993427))

(assert (=> b!4369486 m!4993415))

(declare-fun m!4993429 () Bool)

(assert (=> b!4369486 m!4993429))

(assert (=> b!4369486 m!4993403))

(declare-fun m!4993431 () Bool)

(assert (=> b!4369486 m!4993431))

(declare-fun m!4993433 () Bool)

(assert (=> b!4369486 m!4993433))

(assert (=> b!4369302 d!1293896))

(declare-fun bs!637938 () Bool)

(declare-fun b!4369500 () Bool)

(assert (= bs!637938 (and b!4369500 d!1293858)))

(declare-fun lambda!143509 () Int)

(assert (=> bs!637938 (= (= (+!746 lt!1580758 lt!1580768) lt!1580980) (= lambda!143509 lambda!143500))))

(declare-fun bs!637939 () Bool)

(assert (= bs!637939 (and b!4369500 d!1293896)))

(assert (=> bs!637939 (= (= (+!746 lt!1580758 lt!1580768) lt!1581038) (= lambda!143509 lambda!143508))))

(declare-fun bs!637940 () Bool)

(assert (= bs!637940 (and b!4369500 d!1293856)))

(assert (=> bs!637940 (not (= lambda!143509 lambda!143421))))

(declare-fun bs!637941 () Bool)

(assert (= bs!637941 (and b!4369500 b!4369441)))

(assert (=> bs!637941 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143509 lambda!143497))))

(declare-fun bs!637942 () Bool)

(assert (= bs!637942 (and b!4369500 b!4369483)))

(assert (=> bs!637942 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143509 lambda!143505))))

(declare-fun bs!637943 () Bool)

(assert (= bs!637943 (and b!4369500 b!4369486)))

(assert (=> bs!637943 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143509 lambda!143506))))

(assert (=> bs!637943 (= (= (+!746 lt!1580758 lt!1580768) lt!1581050) (= lambda!143509 lambda!143507))))

(declare-fun bs!637944 () Bool)

(assert (= bs!637944 (and b!4369500 b!4369444)))

(assert (=> bs!637944 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143509 lambda!143498))))

(assert (=> bs!637944 (= (= (+!746 lt!1580758 lt!1580768) lt!1580992) (= lambda!143509 lambda!143499))))

(assert (=> b!4369500 true))

(declare-fun bs!637945 () Bool)

(declare-fun b!4369503 () Bool)

(assert (= bs!637945 (and b!4369503 d!1293858)))

(declare-fun lambda!143510 () Int)

(assert (=> bs!637945 (= (= (+!746 lt!1580758 lt!1580768) lt!1580980) (= lambda!143510 lambda!143500))))

(declare-fun bs!637946 () Bool)

(assert (= bs!637946 (and b!4369503 d!1293896)))

(assert (=> bs!637946 (= (= (+!746 lt!1580758 lt!1580768) lt!1581038) (= lambda!143510 lambda!143508))))

(declare-fun bs!637947 () Bool)

(assert (= bs!637947 (and b!4369503 d!1293856)))

(assert (=> bs!637947 (not (= lambda!143510 lambda!143421))))

(declare-fun bs!637948 () Bool)

(assert (= bs!637948 (and b!4369503 b!4369500)))

(assert (=> bs!637948 (= lambda!143510 lambda!143509)))

(declare-fun bs!637949 () Bool)

(assert (= bs!637949 (and b!4369503 b!4369441)))

(assert (=> bs!637949 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143510 lambda!143497))))

(declare-fun bs!637950 () Bool)

(assert (= bs!637950 (and b!4369503 b!4369483)))

(assert (=> bs!637950 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143510 lambda!143505))))

(declare-fun bs!637951 () Bool)

(assert (= bs!637951 (and b!4369503 b!4369486)))

(assert (=> bs!637951 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143510 lambda!143506))))

(assert (=> bs!637951 (= (= (+!746 lt!1580758 lt!1580768) lt!1581050) (= lambda!143510 lambda!143507))))

(declare-fun bs!637952 () Bool)

(assert (= bs!637952 (and b!4369503 b!4369444)))

(assert (=> bs!637952 (= (= (+!746 lt!1580758 lt!1580768) lt!1580758) (= lambda!143510 lambda!143498))))

(assert (=> bs!637952 (= (= (+!746 lt!1580758 lt!1580768) lt!1580992) (= lambda!143510 lambda!143499))))

(assert (=> b!4369503 true))

(declare-fun lt!1581071 () ListMap!2341)

(declare-fun lambda!143511 () Int)

(assert (=> bs!637946 (= (= lt!1581071 lt!1581038) (= lambda!143511 lambda!143508))))

(assert (=> bs!637947 (not (= lambda!143511 lambda!143421))))

(assert (=> bs!637948 (= (= lt!1581071 (+!746 lt!1580758 lt!1580768)) (= lambda!143511 lambda!143509))))

(assert (=> bs!637949 (= (= lt!1581071 lt!1580758) (= lambda!143511 lambda!143497))))

(assert (=> bs!637950 (= (= lt!1581071 lt!1580758) (= lambda!143511 lambda!143505))))

(assert (=> bs!637951 (= (= lt!1581071 lt!1580758) (= lambda!143511 lambda!143506))))

(assert (=> bs!637951 (= (= lt!1581071 lt!1581050) (= lambda!143511 lambda!143507))))

(assert (=> bs!637952 (= (= lt!1581071 lt!1580758) (= lambda!143511 lambda!143498))))

(assert (=> bs!637952 (= (= lt!1581071 lt!1580992) (= lambda!143511 lambda!143499))))

(assert (=> b!4369503 (= (= lt!1581071 (+!746 lt!1580758 lt!1580768)) (= lambda!143511 lambda!143510))))

(assert (=> bs!637945 (= (= lt!1581071 lt!1580980) (= lambda!143511 lambda!143500))))

(assert (=> b!4369503 true))

(declare-fun bs!637953 () Bool)

(declare-fun d!1293906 () Bool)

(assert (= bs!637953 (and d!1293906 d!1293896)))

(declare-fun lambda!143512 () Int)

(declare-fun lt!1581059 () ListMap!2341)

(assert (=> bs!637953 (= (= lt!1581059 lt!1581038) (= lambda!143512 lambda!143508))))

(declare-fun bs!637954 () Bool)

(assert (= bs!637954 (and d!1293906 b!4369503)))

(assert (=> bs!637954 (= (= lt!1581059 lt!1581071) (= lambda!143512 lambda!143511))))

(declare-fun bs!637955 () Bool)

(assert (= bs!637955 (and d!1293906 d!1293856)))

(assert (=> bs!637955 (not (= lambda!143512 lambda!143421))))

(declare-fun bs!637956 () Bool)

(assert (= bs!637956 (and d!1293906 b!4369500)))

(assert (=> bs!637956 (= (= lt!1581059 (+!746 lt!1580758 lt!1580768)) (= lambda!143512 lambda!143509))))

(declare-fun bs!637957 () Bool)

(assert (= bs!637957 (and d!1293906 b!4369441)))

(assert (=> bs!637957 (= (= lt!1581059 lt!1580758) (= lambda!143512 lambda!143497))))

(declare-fun bs!637958 () Bool)

(assert (= bs!637958 (and d!1293906 b!4369483)))

(assert (=> bs!637958 (= (= lt!1581059 lt!1580758) (= lambda!143512 lambda!143505))))

(declare-fun bs!637959 () Bool)

(assert (= bs!637959 (and d!1293906 b!4369486)))

(assert (=> bs!637959 (= (= lt!1581059 lt!1580758) (= lambda!143512 lambda!143506))))

(assert (=> bs!637959 (= (= lt!1581059 lt!1581050) (= lambda!143512 lambda!143507))))

(declare-fun bs!637960 () Bool)

(assert (= bs!637960 (and d!1293906 b!4369444)))

(assert (=> bs!637960 (= (= lt!1581059 lt!1580758) (= lambda!143512 lambda!143498))))

(assert (=> bs!637960 (= (= lt!1581059 lt!1580992) (= lambda!143512 lambda!143499))))

(assert (=> bs!637954 (= (= lt!1581059 (+!746 lt!1580758 lt!1580768)) (= lambda!143512 lambda!143510))))

(declare-fun bs!637961 () Bool)

(assert (= bs!637961 (and d!1293906 d!1293858)))

(assert (=> bs!637961 (= (= lt!1581059 lt!1580980) (= lambda!143512 lambda!143500))))

(assert (=> d!1293906 true))

(declare-fun bm!303685 () Bool)

(declare-fun c!742873 () Bool)

(declare-fun call!303692 () Bool)

(assert (=> bm!303685 (= call!303692 (forall!9233 (toList!3098 (+!746 lt!1580758 lt!1580768)) (ite c!742873 lambda!143509 lambda!143511)))))

(declare-fun bm!303686 () Bool)

(declare-fun call!303690 () Bool)

(declare-fun lt!1581062 () ListMap!2341)

(assert (=> bm!303686 (= call!303690 (forall!9233 (ite c!742873 (toList!3098 (+!746 lt!1580758 lt!1580768)) (toList!3098 lt!1581062)) (ite c!742873 lambda!143509 lambda!143511)))))

(declare-fun e!2719494 () ListMap!2341)

(assert (=> b!4369500 (= e!2719494 (+!746 lt!1580758 lt!1580768))))

(declare-fun lt!1581061 () Unit!73352)

(declare-fun call!303691 () Unit!73352)

(assert (=> b!4369500 (= lt!1581061 call!303691)))

(assert (=> b!4369500 call!303692))

(declare-fun lt!1581072 () Unit!73352)

(assert (=> b!4369500 (= lt!1581072 lt!1581061)))

(assert (=> b!4369500 call!303690))

(declare-fun lt!1581069 () Unit!73352)

(declare-fun Unit!73412 () Unit!73352)

(assert (=> b!4369500 (= lt!1581069 Unit!73412)))

(declare-fun b!4369501 () Bool)

(declare-fun e!2719493 () Bool)

(assert (=> b!4369501 (= e!2719493 (forall!9233 (toList!3098 (+!746 lt!1580758 lt!1580768)) lambda!143511))))

(declare-fun e!2719495 () Bool)

(assert (=> d!1293906 e!2719495))

(declare-fun res!1797999 () Bool)

(assert (=> d!1293906 (=> (not res!1797999) (not e!2719495))))

(assert (=> d!1293906 (= res!1797999 (forall!9233 lt!1580769 lambda!143512))))

(assert (=> d!1293906 (= lt!1581059 e!2719494)))

(assert (=> d!1293906 (= c!742873 ((_ is Nil!49098) lt!1580769))))

(assert (=> d!1293906 (noDuplicateKeys!557 lt!1580769)))

(assert (=> d!1293906 (= (addToMapMapFromBucket!238 lt!1580769 (+!746 lt!1580758 lt!1580768)) lt!1581059)))

(declare-fun b!4369502 () Bool)

(declare-fun res!1798000 () Bool)

(assert (=> b!4369502 (=> (not res!1798000) (not e!2719495))))

(assert (=> b!4369502 (= res!1798000 (forall!9233 (toList!3098 (+!746 lt!1580758 lt!1580768)) lambda!143512))))

(assert (=> b!4369503 (= e!2719494 lt!1581071)))

(assert (=> b!4369503 (= lt!1581062 (+!746 (+!746 lt!1580758 lt!1580768) (h!54681 lt!1580769)))))

(assert (=> b!4369503 (= lt!1581071 (addToMapMapFromBucket!238 (t!356144 lt!1580769) (+!746 (+!746 lt!1580758 lt!1580768) (h!54681 lt!1580769))))))

(declare-fun lt!1581060 () Unit!73352)

(assert (=> b!4369503 (= lt!1581060 call!303691)))

(assert (=> b!4369503 (forall!9233 (toList!3098 (+!746 lt!1580758 lt!1580768)) lambda!143510)))

(declare-fun lt!1581056 () Unit!73352)

(assert (=> b!4369503 (= lt!1581056 lt!1581060)))

(assert (=> b!4369503 call!303690))

(declare-fun lt!1581066 () Unit!73352)

(declare-fun Unit!73413 () Unit!73352)

(assert (=> b!4369503 (= lt!1581066 Unit!73413)))

(assert (=> b!4369503 (forall!9233 (t!356144 lt!1580769) lambda!143511)))

(declare-fun lt!1581064 () Unit!73352)

(declare-fun Unit!73414 () Unit!73352)

(assert (=> b!4369503 (= lt!1581064 Unit!73414)))

(declare-fun lt!1581058 () Unit!73352)

(declare-fun Unit!73415 () Unit!73352)

(assert (=> b!4369503 (= lt!1581058 Unit!73415)))

(declare-fun lt!1581053 () Unit!73352)

(assert (=> b!4369503 (= lt!1581053 (forallContained!1871 (toList!3098 lt!1581062) lambda!143511 (h!54681 lt!1580769)))))

(assert (=> b!4369503 (contains!11394 lt!1581062 (_1!27593 (h!54681 lt!1580769)))))

(declare-fun lt!1581063 () Unit!73352)

(declare-fun Unit!73416 () Unit!73352)

(assert (=> b!4369503 (= lt!1581063 Unit!73416)))

(assert (=> b!4369503 (contains!11394 lt!1581071 (_1!27593 (h!54681 lt!1580769)))))

(declare-fun lt!1581070 () Unit!73352)

(declare-fun Unit!73417 () Unit!73352)

(assert (=> b!4369503 (= lt!1581070 Unit!73417)))

(assert (=> b!4369503 (forall!9233 lt!1580769 lambda!143511)))

(declare-fun lt!1581068 () Unit!73352)

(declare-fun Unit!73418 () Unit!73352)

(assert (=> b!4369503 (= lt!1581068 Unit!73418)))

(assert (=> b!4369503 (forall!9233 (toList!3098 lt!1581062) lambda!143511)))

(declare-fun lt!1581067 () Unit!73352)

(declare-fun Unit!73419 () Unit!73352)

(assert (=> b!4369503 (= lt!1581067 Unit!73419)))

(declare-fun lt!1581065 () Unit!73352)

(declare-fun Unit!73420 () Unit!73352)

(assert (=> b!4369503 (= lt!1581065 Unit!73420)))

(declare-fun lt!1581054 () Unit!73352)

(assert (=> b!4369503 (= lt!1581054 (addForallContainsKeyThenBeforeAdding!91 (+!746 lt!1580758 lt!1580768) lt!1581071 (_1!27593 (h!54681 lt!1580769)) (_2!27593 (h!54681 lt!1580769))))))

(assert (=> b!4369503 (forall!9233 (toList!3098 (+!746 lt!1580758 lt!1580768)) lambda!143511)))

(declare-fun lt!1581052 () Unit!73352)

(assert (=> b!4369503 (= lt!1581052 lt!1581054)))

(assert (=> b!4369503 call!303692))

(declare-fun lt!1581057 () Unit!73352)

(declare-fun Unit!73421 () Unit!73352)

(assert (=> b!4369503 (= lt!1581057 Unit!73421)))

(declare-fun res!1797998 () Bool)

(assert (=> b!4369503 (= res!1797998 (forall!9233 lt!1580769 lambda!143511))))

(assert (=> b!4369503 (=> (not res!1797998) (not e!2719493))))

(assert (=> b!4369503 e!2719493))

(declare-fun lt!1581055 () Unit!73352)

(declare-fun Unit!73422 () Unit!73352)

(assert (=> b!4369503 (= lt!1581055 Unit!73422)))

(declare-fun bm!303687 () Bool)

(assert (=> bm!303687 (= call!303691 (lemmaContainsAllItsOwnKeys!91 (+!746 lt!1580758 lt!1580768)))))

(declare-fun b!4369504 () Bool)

(assert (=> b!4369504 (= e!2719495 (invariantList!709 (toList!3098 lt!1581059)))))

(assert (= (and d!1293906 c!742873) b!4369500))

(assert (= (and d!1293906 (not c!742873)) b!4369503))

(assert (= (and b!4369503 res!1797998) b!4369501))

(assert (= (or b!4369500 b!4369503) bm!303687))

(assert (= (or b!4369500 b!4369503) bm!303685))

(assert (= (or b!4369500 b!4369503) bm!303686))

(assert (= (and d!1293906 res!1797999) b!4369502))

(assert (= (and b!4369502 res!1798000) b!4369504))

(declare-fun m!4993435 () Bool)

(assert (=> b!4369502 m!4993435))

(declare-fun m!4993437 () Bool)

(assert (=> b!4369501 m!4993437))

(declare-fun m!4993439 () Bool)

(assert (=> bm!303685 m!4993439))

(declare-fun m!4993441 () Bool)

(assert (=> b!4369504 m!4993441))

(declare-fun m!4993443 () Bool)

(assert (=> bm!303686 m!4993443))

(assert (=> bm!303687 m!4993085))

(declare-fun m!4993445 () Bool)

(assert (=> bm!303687 m!4993445))

(declare-fun m!4993447 () Bool)

(assert (=> d!1293906 m!4993447))

(declare-fun m!4993449 () Bool)

(assert (=> d!1293906 m!4993449))

(assert (=> b!4369503 m!4993085))

(declare-fun m!4993451 () Bool)

(assert (=> b!4369503 m!4993451))

(assert (=> b!4369503 m!4993085))

(declare-fun m!4993453 () Bool)

(assert (=> b!4369503 m!4993453))

(declare-fun m!4993455 () Bool)

(assert (=> b!4369503 m!4993455))

(declare-fun m!4993457 () Bool)

(assert (=> b!4369503 m!4993457))

(declare-fun m!4993459 () Bool)

(assert (=> b!4369503 m!4993459))

(assert (=> b!4369503 m!4993459))

(declare-fun m!4993461 () Bool)

(assert (=> b!4369503 m!4993461))

(declare-fun m!4993463 () Bool)

(assert (=> b!4369503 m!4993463))

(assert (=> b!4369503 m!4993451))

(declare-fun m!4993465 () Bool)

(assert (=> b!4369503 m!4993465))

(assert (=> b!4369503 m!4993437))

(declare-fun m!4993467 () Bool)

(assert (=> b!4369503 m!4993467))

(declare-fun m!4993469 () Bool)

(assert (=> b!4369503 m!4993469))

(assert (=> b!4369302 d!1293906))

(declare-fun bs!637962 () Bool)

(declare-fun d!1293908 () Bool)

(assert (= bs!637962 (and d!1293908 start!424148)))

(declare-fun lambda!143515 () Int)

(assert (=> bs!637962 (= lambda!143515 lambda!143415)))

(declare-fun bs!637963 () Bool)

(assert (= bs!637963 (and d!1293908 d!1293842)))

(assert (=> bs!637963 (not (= lambda!143515 lambda!143418))))

(declare-fun lt!1581075 () ListMap!2341)

(assert (=> d!1293908 (invariantList!709 (toList!3098 lt!1581075))))

(declare-fun e!2719498 () ListMap!2341)

(assert (=> d!1293908 (= lt!1581075 e!2719498)))

(declare-fun c!742876 () Bool)

(assert (=> d!1293908 (= c!742876 ((_ is Cons!49099) (t!356145 (toList!3097 lm!1707))))))

(assert (=> d!1293908 (forall!9231 (t!356145 (toList!3097 lm!1707)) lambda!143515)))

(assert (=> d!1293908 (= (extractMap!616 (t!356145 (toList!3097 lm!1707))) lt!1581075)))

(declare-fun b!4369509 () Bool)

(assert (=> b!4369509 (= e!2719498 (addToMapMapFromBucket!238 (_2!27594 (h!54682 (t!356145 (toList!3097 lm!1707)))) (extractMap!616 (t!356145 (t!356145 (toList!3097 lm!1707))))))))

(declare-fun b!4369510 () Bool)

(assert (=> b!4369510 (= e!2719498 (ListMap!2342 Nil!49098))))

(assert (= (and d!1293908 c!742876) b!4369509))

(assert (= (and d!1293908 (not c!742876)) b!4369510))

(declare-fun m!4993471 () Bool)

(assert (=> d!1293908 m!4993471))

(declare-fun m!4993473 () Bool)

(assert (=> d!1293908 m!4993473))

(declare-fun m!4993475 () Bool)

(assert (=> b!4369509 m!4993475))

(assert (=> b!4369509 m!4993475))

(declare-fun m!4993477 () Bool)

(assert (=> b!4369509 m!4993477))

(assert (=> b!4369302 d!1293908))

(declare-fun bs!637964 () Bool)

(declare-fun d!1293910 () Bool)

(assert (= bs!637964 (and d!1293910 start!424148)))

(declare-fun lambda!143516 () Int)

(assert (=> bs!637964 (= lambda!143516 lambda!143415)))

(declare-fun bs!637965 () Bool)

(assert (= bs!637965 (and d!1293910 d!1293842)))

(assert (=> bs!637965 (not (= lambda!143516 lambda!143418))))

(declare-fun bs!637966 () Bool)

(assert (= bs!637966 (and d!1293910 d!1293908)))

(assert (=> bs!637966 (= lambda!143516 lambda!143515)))

(declare-fun lt!1581076 () ListMap!2341)

(assert (=> d!1293910 (invariantList!709 (toList!3098 lt!1581076))))

(declare-fun e!2719499 () ListMap!2341)

(assert (=> d!1293910 (= lt!1581076 e!2719499)))

(declare-fun c!742877 () Bool)

(assert (=> d!1293910 (= c!742877 ((_ is Cons!49099) (toList!3097 lt!1580762)))))

(assert (=> d!1293910 (forall!9231 (toList!3097 lt!1580762) lambda!143516)))

(assert (=> d!1293910 (= (extractMap!616 (toList!3097 lt!1580762)) lt!1581076)))

(declare-fun b!4369511 () Bool)

(assert (=> b!4369511 (= e!2719499 (addToMapMapFromBucket!238 (_2!27594 (h!54682 (toList!3097 lt!1580762))) (extractMap!616 (t!356145 (toList!3097 lt!1580762)))))))

(declare-fun b!4369512 () Bool)

(assert (=> b!4369512 (= e!2719499 (ListMap!2342 Nil!49098))))

(assert (= (and d!1293910 c!742877) b!4369511))

(assert (= (and d!1293910 (not c!742877)) b!4369512))

(declare-fun m!4993479 () Bool)

(assert (=> d!1293910 m!4993479))

(declare-fun m!4993481 () Bool)

(assert (=> d!1293910 m!4993481))

(declare-fun m!4993483 () Bool)

(assert (=> b!4369511 m!4993483))

(assert (=> b!4369511 m!4993483))

(declare-fun m!4993485 () Bool)

(assert (=> b!4369511 m!4993485))

(assert (=> b!4369302 d!1293910))

(declare-fun d!1293912 () Bool)

(declare-fun hash!1712 (Hashable!4949 K!10460) (_ BitVec 64))

(assert (=> d!1293912 (= (hash!1710 hashF!1247 key!3918) (hash!1712 hashF!1247 key!3918))))

(declare-fun bs!637967 () Bool)

(assert (= bs!637967 d!1293912))

(declare-fun m!4993487 () Bool)

(assert (=> bs!637967 m!4993487))

(assert (=> b!4369298 d!1293912))

(declare-fun d!1293914 () Bool)

(declare-datatypes ((Option!10532 0))(
  ( (None!10531) (Some!10531 (v!43495 List!49222)) )
))
(declare-fun get!15960 (Option!10532) List!49222)

(declare-fun getValueByKey!518 (List!49223 (_ BitVec 64)) Option!10532)

(assert (=> d!1293914 (= (apply!11409 lm!1707 hash!377) (get!15960 (getValueByKey!518 (toList!3097 lm!1707) hash!377)))))

(declare-fun bs!637968 () Bool)

(assert (= bs!637968 d!1293914))

(declare-fun m!4993489 () Bool)

(assert (=> bs!637968 m!4993489))

(assert (=> bs!637968 m!4993489))

(declare-fun m!4993491 () Bool)

(assert (=> bs!637968 m!4993491))

(assert (=> b!4369309 d!1293914))

(declare-fun d!1293916 () Bool)

(assert (=> d!1293916 (contains!11395 (toList!3097 lm!1707) (tuple2!48601 hash!377 lt!1580760))))

(declare-fun lt!1581079 () Unit!73352)

(declare-fun choose!27196 (List!49223 (_ BitVec 64) List!49222) Unit!73352)

(assert (=> d!1293916 (= lt!1581079 (choose!27196 (toList!3097 lm!1707) hash!377 lt!1580760))))

(declare-fun e!2719502 () Bool)

(assert (=> d!1293916 e!2719502))

(declare-fun res!1798003 () Bool)

(assert (=> d!1293916 (=> (not res!1798003) (not e!2719502))))

(declare-fun isStrictlySorted!136 (List!49223) Bool)

(assert (=> d!1293916 (= res!1798003 (isStrictlySorted!136 (toList!3097 lm!1707)))))

(assert (=> d!1293916 (= (lemmaGetValueByKeyImpliesContainsTuple!402 (toList!3097 lm!1707) hash!377 lt!1580760) lt!1581079)))

(declare-fun b!4369515 () Bool)

(assert (=> b!4369515 (= e!2719502 (= (getValueByKey!518 (toList!3097 lm!1707) hash!377) (Some!10531 lt!1580760)))))

(assert (= (and d!1293916 res!1798003) b!4369515))

(declare-fun m!4993493 () Bool)

(assert (=> d!1293916 m!4993493))

(declare-fun m!4993495 () Bool)

(assert (=> d!1293916 m!4993495))

(declare-fun m!4993497 () Bool)

(assert (=> d!1293916 m!4993497))

(assert (=> b!4369515 m!4993489))

(assert (=> b!4369309 d!1293916))

(declare-fun d!1293918 () Bool)

(declare-fun lt!1581082 () List!49222)

(assert (=> d!1293918 (not (containsKey!805 lt!1581082 key!3918))))

(declare-fun e!2719507 () List!49222)

(assert (=> d!1293918 (= lt!1581082 e!2719507)))

(declare-fun c!742882 () Bool)

(assert (=> d!1293918 (= c!742882 (and ((_ is Cons!49098) lt!1580760) (= (_1!27593 (h!54681 lt!1580760)) key!3918)))))

(assert (=> d!1293918 (noDuplicateKeys!557 lt!1580760)))

(assert (=> d!1293918 (= (removePairForKey!525 lt!1580760 key!3918) lt!1581082)))

(declare-fun b!4369527 () Bool)

(declare-fun e!2719508 () List!49222)

(assert (=> b!4369527 (= e!2719508 Nil!49098)))

(declare-fun b!4369526 () Bool)

(assert (=> b!4369526 (= e!2719508 (Cons!49098 (h!54681 lt!1580760) (removePairForKey!525 (t!356144 lt!1580760) key!3918)))))

(declare-fun b!4369524 () Bool)

(assert (=> b!4369524 (= e!2719507 (t!356144 lt!1580760))))

(declare-fun b!4369525 () Bool)

(assert (=> b!4369525 (= e!2719507 e!2719508)))

(declare-fun c!742883 () Bool)

(assert (=> b!4369525 (= c!742883 ((_ is Cons!49098) lt!1580760))))

(assert (= (and d!1293918 c!742882) b!4369524))

(assert (= (and d!1293918 (not c!742882)) b!4369525))

(assert (= (and b!4369525 c!742883) b!4369526))

(assert (= (and b!4369525 (not c!742883)) b!4369527))

(declare-fun m!4993499 () Bool)

(assert (=> d!1293918 m!4993499))

(declare-fun m!4993501 () Bool)

(assert (=> d!1293918 m!4993501))

(declare-fun m!4993503 () Bool)

(assert (=> b!4369526 m!4993503))

(assert (=> b!4369309 d!1293918))

(declare-fun d!1293920 () Bool)

(declare-fun lt!1581085 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7784 (List!49223) (InoxSet tuple2!48600))

(assert (=> d!1293920 (= lt!1581085 (select (content!7784 (toList!3097 lm!1707)) lt!1580759))))

(declare-fun e!2719513 () Bool)

(assert (=> d!1293920 (= lt!1581085 e!2719513)))

(declare-fun res!1798008 () Bool)

(assert (=> d!1293920 (=> (not res!1798008) (not e!2719513))))

(assert (=> d!1293920 (= res!1798008 ((_ is Cons!49099) (toList!3097 lm!1707)))))

(assert (=> d!1293920 (= (contains!11395 (toList!3097 lm!1707) lt!1580759) lt!1581085)))

(declare-fun b!4369532 () Bool)

(declare-fun e!2719514 () Bool)

(assert (=> b!4369532 (= e!2719513 e!2719514)))

(declare-fun res!1798009 () Bool)

(assert (=> b!4369532 (=> res!1798009 e!2719514)))

(assert (=> b!4369532 (= res!1798009 (= (h!54682 (toList!3097 lm!1707)) lt!1580759))))

(declare-fun b!4369533 () Bool)

(assert (=> b!4369533 (= e!2719514 (contains!11395 (t!356145 (toList!3097 lm!1707)) lt!1580759))))

(assert (= (and d!1293920 res!1798008) b!4369532))

(assert (= (and b!4369532 (not res!1798009)) b!4369533))

(declare-fun m!4993505 () Bool)

(assert (=> d!1293920 m!4993505))

(declare-fun m!4993507 () Bool)

(assert (=> d!1293920 m!4993507))

(declare-fun m!4993509 () Bool)

(assert (=> b!4369533 m!4993509))

(assert (=> b!4369309 d!1293920))

(declare-fun d!1293922 () Bool)

(assert (=> d!1293922 (dynLambda!20687 lambda!143415 lt!1580759)))

(declare-fun lt!1581088 () Unit!73352)

(declare-fun choose!27197 (List!49223 Int tuple2!48600) Unit!73352)

(assert (=> d!1293922 (= lt!1581088 (choose!27197 (toList!3097 lm!1707) lambda!143415 lt!1580759))))

(declare-fun e!2719517 () Bool)

(assert (=> d!1293922 e!2719517))

(declare-fun res!1798012 () Bool)

(assert (=> d!1293922 (=> (not res!1798012) (not e!2719517))))

(assert (=> d!1293922 (= res!1798012 (forall!9231 (toList!3097 lm!1707) lambda!143415))))

(assert (=> d!1293922 (= (forallContained!1869 (toList!3097 lm!1707) lambda!143415 lt!1580759) lt!1581088)))

(declare-fun b!4369536 () Bool)

(assert (=> b!4369536 (= e!2719517 (contains!11395 (toList!3097 lm!1707) lt!1580759))))

(assert (= (and d!1293922 res!1798012) b!4369536))

(declare-fun b_lambda!132879 () Bool)

(assert (=> (not b_lambda!132879) (not d!1293922)))

(declare-fun m!4993511 () Bool)

(assert (=> d!1293922 m!4993511))

(declare-fun m!4993513 () Bool)

(assert (=> d!1293922 m!4993513))

(assert (=> d!1293922 m!4993077))

(assert (=> b!4369536 m!4993103))

(assert (=> b!4369309 d!1293922))

(declare-fun d!1293924 () Bool)

(declare-fun e!2719532 () Bool)

(assert (=> d!1293924 e!2719532))

(declare-fun res!1798021 () Bool)

(assert (=> d!1293924 (=> res!1798021 e!2719532)))

(declare-fun e!2719531 () Bool)

(assert (=> d!1293924 (= res!1798021 e!2719531)))

(declare-fun res!1798020 () Bool)

(assert (=> d!1293924 (=> (not res!1798020) (not e!2719531))))

(declare-fun lt!1581108 () Bool)

(assert (=> d!1293924 (= res!1798020 (not lt!1581108))))

(declare-fun lt!1581112 () Bool)

(assert (=> d!1293924 (= lt!1581108 lt!1581112)))

(declare-fun lt!1581110 () Unit!73352)

(declare-fun e!2719534 () Unit!73352)

(assert (=> d!1293924 (= lt!1581110 e!2719534)))

(declare-fun c!742892 () Bool)

(assert (=> d!1293924 (= c!742892 lt!1581112)))

(declare-fun containsKey!808 (List!49222 K!10460) Bool)

(assert (=> d!1293924 (= lt!1581112 (containsKey!808 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(assert (=> d!1293924 (= (contains!11394 (extractMap!616 (toList!3097 lm!1707)) key!3918) lt!1581108)))

(declare-fun b!4369555 () Bool)

(declare-fun e!2719533 () Unit!73352)

(declare-fun Unit!73423 () Unit!73352)

(assert (=> b!4369555 (= e!2719533 Unit!73423)))

(declare-fun b!4369556 () Bool)

(declare-datatypes ((List!49225 0))(
  ( (Nil!49101) (Cons!49101 (h!54686 K!10460) (t!356147 List!49225)) )
))
(declare-fun e!2719530 () List!49225)

(declare-fun getKeysList!157 (List!49222) List!49225)

(assert (=> b!4369556 (= e!2719530 (getKeysList!157 (toList!3098 (extractMap!616 (toList!3097 lm!1707)))))))

(declare-fun b!4369557 () Bool)

(declare-fun e!2719535 () Bool)

(declare-fun contains!11399 (List!49225 K!10460) Bool)

(declare-fun keys!16631 (ListMap!2341) List!49225)

(assert (=> b!4369557 (= e!2719535 (contains!11399 (keys!16631 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(declare-fun bm!303690 () Bool)

(declare-fun call!303695 () Bool)

(assert (=> bm!303690 (= call!303695 (contains!11399 e!2719530 key!3918))))

(declare-fun c!742891 () Bool)

(assert (=> bm!303690 (= c!742891 c!742892)))

(declare-fun b!4369558 () Bool)

(declare-fun lt!1581107 () Unit!73352)

(assert (=> b!4369558 (= e!2719534 lt!1581107)))

(declare-fun lt!1581109 () Unit!73352)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!428 (List!49222 K!10460) Unit!73352)

(assert (=> b!4369558 (= lt!1581109 (lemmaContainsKeyImpliesGetValueByKeyDefined!428 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(declare-fun isDefined!7825 (Option!10531) Bool)

(assert (=> b!4369558 (isDefined!7825 (getValueByKey!517 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(declare-fun lt!1581106 () Unit!73352)

(assert (=> b!4369558 (= lt!1581106 lt!1581109)))

(declare-fun lemmaInListThenGetKeysListContains!154 (List!49222 K!10460) Unit!73352)

(assert (=> b!4369558 (= lt!1581107 (lemmaInListThenGetKeysListContains!154 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(assert (=> b!4369558 call!303695))

(declare-fun b!4369559 () Bool)

(assert (=> b!4369559 false))

(declare-fun lt!1581105 () Unit!73352)

(declare-fun lt!1581111 () Unit!73352)

(assert (=> b!4369559 (= lt!1581105 lt!1581111)))

(assert (=> b!4369559 (containsKey!808 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!155 (List!49222 K!10460) Unit!73352)

(assert (=> b!4369559 (= lt!1581111 (lemmaInGetKeysListThenContainsKey!155 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918))))

(declare-fun Unit!73424 () Unit!73352)

(assert (=> b!4369559 (= e!2719533 Unit!73424)))

(declare-fun b!4369560 () Bool)

(assert (=> b!4369560 (= e!2719530 (keys!16631 (extractMap!616 (toList!3097 lm!1707))))))

(declare-fun b!4369561 () Bool)

(assert (=> b!4369561 (= e!2719532 e!2719535)))

(declare-fun res!1798019 () Bool)

(assert (=> b!4369561 (=> (not res!1798019) (not e!2719535))))

(assert (=> b!4369561 (= res!1798019 (isDefined!7825 (getValueByKey!517 (toList!3098 (extractMap!616 (toList!3097 lm!1707))) key!3918)))))

(declare-fun b!4369562 () Bool)

(assert (=> b!4369562 (= e!2719534 e!2719533)))

(declare-fun c!742890 () Bool)

(assert (=> b!4369562 (= c!742890 call!303695)))

(declare-fun b!4369563 () Bool)

(assert (=> b!4369563 (= e!2719531 (not (contains!11399 (keys!16631 (extractMap!616 (toList!3097 lm!1707))) key!3918)))))

(assert (= (and d!1293924 c!742892) b!4369558))

(assert (= (and d!1293924 (not c!742892)) b!4369562))

(assert (= (and b!4369562 c!742890) b!4369559))

(assert (= (and b!4369562 (not c!742890)) b!4369555))

(assert (= (or b!4369558 b!4369562) bm!303690))

(assert (= (and bm!303690 c!742891) b!4369556))

(assert (= (and bm!303690 (not c!742891)) b!4369560))

(assert (= (and d!1293924 res!1798020) b!4369563))

(assert (= (and d!1293924 (not res!1798021)) b!4369561))

(assert (= (and b!4369561 res!1798019) b!4369557))

(declare-fun m!4993515 () Bool)

(assert (=> d!1293924 m!4993515))

(assert (=> b!4369559 m!4993515))

(declare-fun m!4993517 () Bool)

(assert (=> b!4369559 m!4993517))

(declare-fun m!4993519 () Bool)

(assert (=> b!4369556 m!4993519))

(assert (=> b!4369557 m!4993079))

(declare-fun m!4993521 () Bool)

(assert (=> b!4369557 m!4993521))

(assert (=> b!4369557 m!4993521))

(declare-fun m!4993523 () Bool)

(assert (=> b!4369557 m!4993523))

(assert (=> b!4369563 m!4993079))

(assert (=> b!4369563 m!4993521))

(assert (=> b!4369563 m!4993521))

(assert (=> b!4369563 m!4993523))

(declare-fun m!4993525 () Bool)

(assert (=> b!4369561 m!4993525))

(assert (=> b!4369561 m!4993525))

(declare-fun m!4993527 () Bool)

(assert (=> b!4369561 m!4993527))

(declare-fun m!4993529 () Bool)

(assert (=> b!4369558 m!4993529))

(assert (=> b!4369558 m!4993525))

(assert (=> b!4369558 m!4993525))

(assert (=> b!4369558 m!4993527))

(declare-fun m!4993531 () Bool)

(assert (=> b!4369558 m!4993531))

(assert (=> b!4369560 m!4993079))

(assert (=> b!4369560 m!4993521))

(declare-fun m!4993533 () Bool)

(assert (=> bm!303690 m!4993533))

(assert (=> b!4369307 d!1293924))

(declare-fun bs!637969 () Bool)

(declare-fun d!1293926 () Bool)

(assert (= bs!637969 (and d!1293926 start!424148)))

(declare-fun lambda!143517 () Int)

(assert (=> bs!637969 (= lambda!143517 lambda!143415)))

(declare-fun bs!637970 () Bool)

(assert (= bs!637970 (and d!1293926 d!1293842)))

(assert (=> bs!637970 (not (= lambda!143517 lambda!143418))))

(declare-fun bs!637971 () Bool)

(assert (= bs!637971 (and d!1293926 d!1293908)))

(assert (=> bs!637971 (= lambda!143517 lambda!143515)))

(declare-fun bs!637972 () Bool)

(assert (= bs!637972 (and d!1293926 d!1293910)))

(assert (=> bs!637972 (= lambda!143517 lambda!143516)))

(declare-fun lt!1581113 () ListMap!2341)

(assert (=> d!1293926 (invariantList!709 (toList!3098 lt!1581113))))

(declare-fun e!2719536 () ListMap!2341)

(assert (=> d!1293926 (= lt!1581113 e!2719536)))

(declare-fun c!742893 () Bool)

(assert (=> d!1293926 (= c!742893 ((_ is Cons!49099) (toList!3097 lm!1707)))))

(assert (=> d!1293926 (forall!9231 (toList!3097 lm!1707) lambda!143517)))

(assert (=> d!1293926 (= (extractMap!616 (toList!3097 lm!1707)) lt!1581113)))

(declare-fun b!4369564 () Bool)

(assert (=> b!4369564 (= e!2719536 (addToMapMapFromBucket!238 (_2!27594 (h!54682 (toList!3097 lm!1707))) (extractMap!616 (t!356145 (toList!3097 lm!1707)))))))

(declare-fun b!4369565 () Bool)

(assert (=> b!4369565 (= e!2719536 (ListMap!2342 Nil!49098))))

(assert (= (and d!1293926 c!742893) b!4369564))

(assert (= (and d!1293926 (not c!742893)) b!4369565))

(declare-fun m!4993535 () Bool)

(assert (=> d!1293926 m!4993535))

(declare-fun m!4993537 () Bool)

(assert (=> d!1293926 m!4993537))

(assert (=> b!4369564 m!4993089))

(assert (=> b!4369564 m!4993089))

(declare-fun m!4993539 () Bool)

(assert (=> b!4369564 m!4993539))

(assert (=> b!4369307 d!1293926))

(declare-fun d!1293928 () Bool)

(declare-fun e!2719542 () Bool)

(assert (=> d!1293928 e!2719542))

(declare-fun res!1798024 () Bool)

(assert (=> d!1293928 (=> res!1798024 e!2719542)))

(declare-fun lt!1581125 () Bool)

(assert (=> d!1293928 (= res!1798024 (not lt!1581125))))

(declare-fun lt!1581123 () Bool)

(assert (=> d!1293928 (= lt!1581125 lt!1581123)))

(declare-fun lt!1581124 () Unit!73352)

(declare-fun e!2719541 () Unit!73352)

(assert (=> d!1293928 (= lt!1581124 e!2719541)))

(declare-fun c!742896 () Bool)

(assert (=> d!1293928 (= c!742896 lt!1581123)))

(declare-fun containsKey!809 (List!49223 (_ BitVec 64)) Bool)

(assert (=> d!1293928 (= lt!1581123 (containsKey!809 (toList!3097 lm!1707) hash!377))))

(assert (=> d!1293928 (= (contains!11393 lm!1707 hash!377) lt!1581125)))

(declare-fun b!4369572 () Bool)

(declare-fun lt!1581122 () Unit!73352)

(assert (=> b!4369572 (= e!2719541 lt!1581122)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!429 (List!49223 (_ BitVec 64)) Unit!73352)

(assert (=> b!4369572 (= lt!1581122 (lemmaContainsKeyImpliesGetValueByKeyDefined!429 (toList!3097 lm!1707) hash!377))))

(declare-fun isDefined!7826 (Option!10532) Bool)

(assert (=> b!4369572 (isDefined!7826 (getValueByKey!518 (toList!3097 lm!1707) hash!377))))

(declare-fun b!4369573 () Bool)

(declare-fun Unit!73425 () Unit!73352)

(assert (=> b!4369573 (= e!2719541 Unit!73425)))

(declare-fun b!4369574 () Bool)

(assert (=> b!4369574 (= e!2719542 (isDefined!7826 (getValueByKey!518 (toList!3097 lm!1707) hash!377)))))

(assert (= (and d!1293928 c!742896) b!4369572))

(assert (= (and d!1293928 (not c!742896)) b!4369573))

(assert (= (and d!1293928 (not res!1798024)) b!4369574))

(declare-fun m!4993541 () Bool)

(assert (=> d!1293928 m!4993541))

(declare-fun m!4993543 () Bool)

(assert (=> b!4369572 m!4993543))

(assert (=> b!4369572 m!4993489))

(assert (=> b!4369572 m!4993489))

(declare-fun m!4993545 () Bool)

(assert (=> b!4369572 m!4993545))

(assert (=> b!4369574 m!4993489))

(assert (=> b!4369574 m!4993489))

(assert (=> b!4369574 m!4993545))

(assert (=> b!4369306 d!1293928))

(declare-fun d!1293930 () Bool)

(declare-fun res!1798025 () Bool)

(declare-fun e!2719543 () Bool)

(assert (=> d!1293930 (=> res!1798025 e!2719543)))

(assert (=> d!1293930 (= res!1798025 ((_ is Nil!49099) (toList!3097 lm!1707)))))

(assert (=> d!1293930 (= (forall!9231 (toList!3097 lm!1707) lambda!143415) e!2719543)))

(declare-fun b!4369575 () Bool)

(declare-fun e!2719544 () Bool)

(assert (=> b!4369575 (= e!2719543 e!2719544)))

(declare-fun res!1798026 () Bool)

(assert (=> b!4369575 (=> (not res!1798026) (not e!2719544))))

(assert (=> b!4369575 (= res!1798026 (dynLambda!20687 lambda!143415 (h!54682 (toList!3097 lm!1707))))))

(declare-fun b!4369576 () Bool)

(assert (=> b!4369576 (= e!2719544 (forall!9231 (t!356145 (toList!3097 lm!1707)) lambda!143415))))

(assert (= (and d!1293930 (not res!1798025)) b!4369575))

(assert (= (and b!4369575 res!1798026) b!4369576))

(declare-fun b_lambda!132881 () Bool)

(assert (=> (not b_lambda!132881) (not b!4369575)))

(declare-fun m!4993547 () Bool)

(assert (=> b!4369575 m!4993547))

(declare-fun m!4993549 () Bool)

(assert (=> b!4369576 m!4993549))

(assert (=> start!424148 d!1293930))

(declare-fun d!1293932 () Bool)

(assert (=> d!1293932 (= (inv!64646 lm!1707) (isStrictlySorted!136 (toList!3097 lm!1707)))))

(declare-fun bs!637973 () Bool)

(assert (= bs!637973 d!1293932))

(assert (=> bs!637973 m!4993497))

(assert (=> start!424148 d!1293932))

(assert (=> b!4369308 d!1293854))

(declare-fun d!1293934 () Bool)

(declare-fun e!2719547 () Bool)

(assert (=> d!1293934 e!2719547))

(declare-fun res!1798031 () Bool)

(assert (=> d!1293934 (=> (not res!1798031) (not e!2719547))))

(declare-fun lt!1581134 () ListLongMap!1747)

(assert (=> d!1293934 (= res!1798031 (contains!11393 lt!1581134 (_1!27594 lt!1580764)))))

(declare-fun lt!1581136 () List!49223)

(assert (=> d!1293934 (= lt!1581134 (ListLongMap!1748 lt!1581136))))

(declare-fun lt!1581137 () Unit!73352)

(declare-fun lt!1581135 () Unit!73352)

(assert (=> d!1293934 (= lt!1581137 lt!1581135)))

(assert (=> d!1293934 (= (getValueByKey!518 lt!1581136 (_1!27594 lt!1580764)) (Some!10531 (_2!27594 lt!1580764)))))

(declare-fun lemmaContainsTupThenGetReturnValue!282 (List!49223 (_ BitVec 64) List!49222) Unit!73352)

(assert (=> d!1293934 (= lt!1581135 (lemmaContainsTupThenGetReturnValue!282 lt!1581136 (_1!27594 lt!1580764) (_2!27594 lt!1580764)))))

(declare-fun insertStrictlySorted!163 (List!49223 (_ BitVec 64) List!49222) List!49223)

(assert (=> d!1293934 (= lt!1581136 (insertStrictlySorted!163 (toList!3097 lm!1707) (_1!27594 lt!1580764) (_2!27594 lt!1580764)))))

(assert (=> d!1293934 (= (+!745 lm!1707 lt!1580764) lt!1581134)))

(declare-fun b!4369581 () Bool)

(declare-fun res!1798032 () Bool)

(assert (=> b!4369581 (=> (not res!1798032) (not e!2719547))))

(assert (=> b!4369581 (= res!1798032 (= (getValueByKey!518 (toList!3097 lt!1581134) (_1!27594 lt!1580764)) (Some!10531 (_2!27594 lt!1580764))))))

(declare-fun b!4369582 () Bool)

(assert (=> b!4369582 (= e!2719547 (contains!11395 (toList!3097 lt!1581134) lt!1580764))))

(assert (= (and d!1293934 res!1798031) b!4369581))

(assert (= (and b!4369581 res!1798032) b!4369582))

(declare-fun m!4993551 () Bool)

(assert (=> d!1293934 m!4993551))

(declare-fun m!4993553 () Bool)

(assert (=> d!1293934 m!4993553))

(declare-fun m!4993555 () Bool)

(assert (=> d!1293934 m!4993555))

(declare-fun m!4993557 () Bool)

(assert (=> d!1293934 m!4993557))

(declare-fun m!4993559 () Bool)

(assert (=> b!4369581 m!4993559))

(declare-fun m!4993561 () Bool)

(assert (=> b!4369582 m!4993561))

(assert (=> b!4369308 d!1293934))

(declare-fun d!1293936 () Bool)

(assert (=> d!1293936 (forall!9231 (toList!3097 (+!745 lm!1707 (tuple2!48601 hash!377 newBucket!200))) lambda!143415)))

(declare-fun lt!1581140 () Unit!73352)

(declare-fun choose!27198 (ListLongMap!1747 Int (_ BitVec 64) List!49222) Unit!73352)

(assert (=> d!1293936 (= lt!1581140 (choose!27198 lm!1707 lambda!143415 hash!377 newBucket!200))))

(declare-fun e!2719550 () Bool)

(assert (=> d!1293936 e!2719550))

(declare-fun res!1798035 () Bool)

(assert (=> d!1293936 (=> (not res!1798035) (not e!2719550))))

(assert (=> d!1293936 (= res!1798035 (forall!9231 (toList!3097 lm!1707) lambda!143415))))

(assert (=> d!1293936 (= (addValidProp!203 lm!1707 lambda!143415 hash!377 newBucket!200) lt!1581140)))

(declare-fun b!4369586 () Bool)

(assert (=> b!4369586 (= e!2719550 (dynLambda!20687 lambda!143415 (tuple2!48601 hash!377 newBucket!200)))))

(assert (= (and d!1293936 res!1798035) b!4369586))

(declare-fun b_lambda!132883 () Bool)

(assert (=> (not b_lambda!132883) (not b!4369586)))

(declare-fun m!4993563 () Bool)

(assert (=> d!1293936 m!4993563))

(declare-fun m!4993565 () Bool)

(assert (=> d!1293936 m!4993565))

(declare-fun m!4993567 () Bool)

(assert (=> d!1293936 m!4993567))

(assert (=> d!1293936 m!4993077))

(declare-fun m!4993569 () Bool)

(assert (=> b!4369586 m!4993569))

(assert (=> b!4369308 d!1293936))

(assert (=> b!4369308 d!1293930))

(declare-fun b!4369591 () Bool)

(declare-fun e!2719553 () Bool)

(declare-fun tp!1330910 () Bool)

(declare-fun tp!1330911 () Bool)

(assert (=> b!4369591 (= e!2719553 (and tp!1330910 tp!1330911))))

(assert (=> b!4369299 (= tp!1330895 e!2719553)))

(assert (= (and b!4369299 ((_ is Cons!49099) (toList!3097 lm!1707))) b!4369591))

(declare-fun b!4369596 () Bool)

(declare-fun tp!1330914 () Bool)

(declare-fun e!2719556 () Bool)

(assert (=> b!4369596 (= e!2719556 (and tp_is_empty!25465 tp_is_empty!25467 tp!1330914))))

(assert (=> b!4369310 (= tp!1330896 e!2719556)))

(assert (= (and b!4369310 ((_ is Cons!49098) (t!356144 newBucket!200))) b!4369596))

(declare-fun b_lambda!132885 () Bool)

(assert (= b_lambda!132867 (or start!424148 b_lambda!132885)))

(declare-fun bs!637974 () Bool)

(declare-fun d!1293938 () Bool)

(assert (= bs!637974 (and d!1293938 start!424148)))

(assert (=> bs!637974 (= (dynLambda!20687 lambda!143415 (h!54682 (toList!3097 lt!1580762))) (noDuplicateKeys!557 (_2!27594 (h!54682 (toList!3097 lt!1580762)))))))

(declare-fun m!4993571 () Bool)

(assert (=> bs!637974 m!4993571))

(assert (=> b!4369347 d!1293938))

(declare-fun b_lambda!132887 () Bool)

(assert (= b_lambda!132883 (or start!424148 b_lambda!132887)))

(declare-fun bs!637975 () Bool)

(declare-fun d!1293940 () Bool)

(assert (= bs!637975 (and d!1293940 start!424148)))

(assert (=> bs!637975 (= (dynLambda!20687 lambda!143415 (tuple2!48601 hash!377 newBucket!200)) (noDuplicateKeys!557 (_2!27594 (tuple2!48601 hash!377 newBucket!200))))))

(declare-fun m!4993573 () Bool)

(assert (=> bs!637975 m!4993573))

(assert (=> b!4369586 d!1293940))

(declare-fun b_lambda!132889 () Bool)

(assert (= b_lambda!132879 (or start!424148 b_lambda!132889)))

(declare-fun bs!637976 () Bool)

(declare-fun d!1293942 () Bool)

(assert (= bs!637976 (and d!1293942 start!424148)))

(assert (=> bs!637976 (= (dynLambda!20687 lambda!143415 lt!1580759) (noDuplicateKeys!557 (_2!27594 lt!1580759)))))

(declare-fun m!4993575 () Bool)

(assert (=> bs!637976 m!4993575))

(assert (=> d!1293922 d!1293942))

(declare-fun b_lambda!132891 () Bool)

(assert (= b_lambda!132881 (or start!424148 b_lambda!132891)))

(declare-fun bs!637977 () Bool)

(declare-fun d!1293944 () Bool)

(assert (= bs!637977 (and d!1293944 start!424148)))

(assert (=> bs!637977 (= (dynLambda!20687 lambda!143415 (h!54682 (toList!3097 lm!1707))) (noDuplicateKeys!557 (_2!27594 (h!54682 (toList!3097 lm!1707)))))))

(declare-fun m!4993577 () Bool)

(assert (=> bs!637977 m!4993577))

(assert (=> b!4369575 d!1293944))

(check-sat (not bm!303676) (not d!1293912) (not bm!303677) (not b!4369526) (not b!4369536) (not b!4369487) (not bm!303685) (not d!1293928) (not bm!303678) (not b!4369533) (not b!4369574) (not b!4369556) (not bs!637976) (not b!4369443) (not d!1293926) (not bm!303686) (not b!4369445) (not b!4369557) tp_is_empty!25465 (not b_lambda!132889) (not b!4369581) (not d!1293908) (not d!1293936) (not b_lambda!132885) (not d!1293910) (not b!4369502) (not d!1293856) (not b!4369503) (not b!4369341) (not bm!303690) (not d!1293914) (not b!4369558) (not b!4369559) (not bm!303683) (not b!4369561) (not b!4369596) (not b_lambda!132891) (not bm!303682) (not b_lambda!132887) (not b!4369564) (not b!4369501) (not d!1293858) (not d!1293888) (not d!1293922) (not d!1293842) (not bs!637975) (not b!4369572) (not b!4369486) (not b!4369482) (not b!4369481) (not b!4369342) (not d!1293920) (not b!4369560) (not b!4369582) (not b!4369515) (not d!1293924) (not bm!303687) (not b!4369591) (not d!1293896) (not b!4369348) (not b!4369444) tp_is_empty!25467 (not d!1293906) (not d!1293918) (not b!4369576) (not d!1293934) (not bs!637974) (not b!4369511) (not b!4369442) (not b!4369563) (not b!4369504) (not b!4369509) (not b!4369484) (not b!4369485) (not d!1293932) (not d!1293916) (not bs!637977) (not bm!303684))
(check-sat)
