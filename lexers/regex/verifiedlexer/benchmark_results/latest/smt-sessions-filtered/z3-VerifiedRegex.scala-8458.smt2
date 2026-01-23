; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!438808 () Bool)

(assert start!438808)

(declare-fun b!4467930 () Bool)

(declare-fun res!1853528 () Bool)

(declare-fun e!2782191 () Bool)

(assert (=> b!4467930 (=> (not res!1853528) (not e!2782191))))

(declare-datatypes ((Hashable!5417 0))(
  ( (HashableExt!5416 (__x!31120 Int)) )
))
(declare-fun hashF!1107 () Hashable!5417)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!11695 0))(
  ( (K!11696 (val!17627 Int)) )
))
(declare-datatypes ((V!11941 0))(
  ( (V!11942 (val!17628 Int)) )
))
(declare-datatypes ((tuple2!50522 0))(
  ( (tuple2!50523 (_1!28555 K!11695) (_2!28555 V!11941)) )
))
(declare-datatypes ((List!50402 0))(
  ( (Nil!50278) (Cons!50278 (h!56039 tuple2!50522) (t!357352 List!50402)) )
))
(declare-fun newBucket!178 () List!50402)

(declare-fun allKeysSameHash!876 (List!50402 (_ BitVec 64) Hashable!5417) Bool)

(assert (=> b!4467930 (= res!1853528 (allKeysSameHash!876 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4467931 () Bool)

(declare-fun res!1853529 () Bool)

(declare-fun e!2782196 () Bool)

(assert (=> b!4467931 (=> (not res!1853529) (not e!2782196))))

(declare-datatypes ((tuple2!50524 0))(
  ( (tuple2!50525 (_1!28556 (_ BitVec 64)) (_2!28556 List!50402)) )
))
(declare-datatypes ((List!50403 0))(
  ( (Nil!50279) (Cons!50279 (h!56040 tuple2!50524) (t!357353 List!50403)) )
))
(declare-datatypes ((ListLongMap!2683 0))(
  ( (ListLongMap!2684 (toList!4051 List!50403)) )
))
(declare-fun lm!1477 () ListLongMap!2683)

(declare-fun allKeysSameHashInMap!1129 (ListLongMap!2683 Hashable!5417) Bool)

(assert (=> b!4467931 (= res!1853529 (allKeysSameHashInMap!1129 lm!1477 hashF!1107))))

(declare-fun b!4467933 () Bool)

(declare-datatypes ((Unit!87567 0))(
  ( (Unit!87568) )
))
(declare-fun e!2782197 () Unit!87567)

(declare-fun Unit!87569 () Unit!87567)

(assert (=> b!4467933 (= e!2782197 Unit!87569)))

(declare-fun b!4467934 () Bool)

(declare-fun e!2782199 () Bool)

(declare-fun e!2782198 () Bool)

(assert (=> b!4467934 (= e!2782199 e!2782198)))

(declare-fun res!1853532 () Bool)

(assert (=> b!4467934 (=> res!1853532 e!2782198)))

(declare-fun lt!1657133 () Bool)

(assert (=> b!4467934 (= res!1853532 lt!1657133)))

(declare-fun lt!1657134 () Unit!87567)

(assert (=> b!4467934 (= lt!1657134 e!2782197)))

(declare-fun c!760564 () Bool)

(assert (=> b!4467934 (= c!760564 lt!1657133)))

(declare-fun key!3287 () K!11695)

(declare-fun containsKey!1462 (List!50402 K!11695) Bool)

(assert (=> b!4467934 (= lt!1657133 (not (containsKey!1462 (_2!28556 (h!56040 (toList!4051 lm!1477))) key!3287)))))

(declare-fun b!4467935 () Bool)

(declare-fun e!2782192 () Bool)

(declare-fun e!2782195 () Bool)

(assert (=> b!4467935 (= e!2782192 e!2782195)))

(declare-fun res!1853527 () Bool)

(assert (=> b!4467935 (=> res!1853527 e!2782195)))

(declare-fun lt!1657136 () ListLongMap!2683)

(declare-fun tail!7496 (List!50403) List!50403)

(assert (=> b!4467935 (= res!1853527 (not (= (t!357353 (toList!4051 lm!1477)) (tail!7496 (toList!4051 lt!1657136)))))))

(declare-fun lt!1657130 () tuple2!50524)

(declare-fun +!1364 (ListLongMap!2683 tuple2!50524) ListLongMap!2683)

(assert (=> b!4467935 (= lt!1657136 (+!1364 lm!1477 lt!1657130))))

(declare-datatypes ((ListMap!3313 0))(
  ( (ListMap!3314 (toList!4052 List!50402)) )
))
(declare-fun eq!515 (ListMap!3313 ListMap!3313) Bool)

(declare-fun extractMap!1078 (List!50403) ListMap!3313)

(declare-fun -!284 (ListMap!3313 K!11695) ListMap!3313)

(assert (=> b!4467935 (eq!515 (extractMap!1078 (Cons!50279 lt!1657130 Nil!50279)) (-!284 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) key!3287))))

(assert (=> b!4467935 (= lt!1657130 (tuple2!50525 hash!344 newBucket!178))))

(declare-fun lt!1657129 () Unit!87567)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!14 ((_ BitVec 64) List!50402 List!50402 K!11695 Hashable!5417) Unit!87567)

(assert (=> b!4467935 (= lt!1657129 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!14 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1657135 () List!50403)

(declare-fun contains!12825 (ListMap!3313 K!11695) Bool)

(assert (=> b!4467935 (contains!12825 (extractMap!1078 lt!1657135) key!3287)))

(declare-fun lt!1657138 () Unit!87567)

(declare-fun lemmaListContainsThenExtractedMapContains!18 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> b!4467935 (= lt!1657138 (lemmaListContainsThenExtractedMapContains!18 (ListLongMap!2684 lt!1657135) key!3287 hashF!1107))))

(declare-fun b!4467936 () Bool)

(declare-fun Unit!87570 () Unit!87567)

(assert (=> b!4467936 (= e!2782197 Unit!87570)))

(declare-fun lt!1657141 () Unit!87567)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!22 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> b!4467936 (= lt!1657141 (lemmaNotInItsHashBucketThenNotInMap!22 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4467936 false))

(declare-fun b!4467937 () Bool)

(declare-fun res!1853531 () Bool)

(assert (=> b!4467937 (=> res!1853531 e!2782199)))

(declare-fun noDuplicateKeys!1022 (List!50402) Bool)

(assert (=> b!4467937 (= res!1853531 (not (noDuplicateKeys!1022 newBucket!178)))))

(declare-fun b!4467938 () Bool)

(declare-fun res!1853525 () Bool)

(assert (=> b!4467938 (=> res!1853525 e!2782195)))

(declare-fun tail!7497 (ListLongMap!2683) ListLongMap!2683)

(assert (=> b!4467938 (= res!1853525 (not (= lt!1657136 (+!1364 (tail!7497 lm!1477) lt!1657130))))))

(declare-fun b!4467939 () Bool)

(assert (=> b!4467939 (= e!2782191 (not e!2782199))))

(declare-fun res!1853534 () Bool)

(assert (=> b!4467939 (=> res!1853534 e!2782199)))

(declare-fun lt!1657142 () List!50402)

(declare-fun removePairForKey!649 (List!50402 K!11695) List!50402)

(assert (=> b!4467939 (= res!1853534 (not (= newBucket!178 (removePairForKey!649 lt!1657142 key!3287))))))

(declare-fun lambda!163025 () Int)

(declare-fun lt!1657140 () Unit!87567)

(declare-fun lt!1657139 () tuple2!50524)

(declare-fun forallContained!2255 (List!50403 Int tuple2!50524) Unit!87567)

(assert (=> b!4467939 (= lt!1657140 (forallContained!2255 (toList!4051 lm!1477) lambda!163025 lt!1657139))))

(declare-fun contains!12826 (List!50403 tuple2!50524) Bool)

(assert (=> b!4467939 (contains!12826 (toList!4051 lm!1477) lt!1657139)))

(assert (=> b!4467939 (= lt!1657139 (tuple2!50525 hash!344 lt!1657142))))

(declare-fun lt!1657132 () Unit!87567)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!534 (List!50403 (_ BitVec 64) List!50402) Unit!87567)

(assert (=> b!4467939 (= lt!1657132 (lemmaGetValueByKeyImpliesContainsTuple!534 (toList!4051 lm!1477) hash!344 lt!1657142))))

(declare-fun apply!11759 (ListLongMap!2683 (_ BitVec 64)) List!50402)

(assert (=> b!4467939 (= lt!1657142 (apply!11759 lm!1477 hash!344))))

(declare-fun lt!1657131 () (_ BitVec 64))

(declare-fun contains!12827 (ListLongMap!2683 (_ BitVec 64)) Bool)

(assert (=> b!4467939 (contains!12827 lm!1477 lt!1657131)))

(declare-fun lt!1657137 () Unit!87567)

(declare-fun lemmaInGenMapThenLongMapContainsHash!96 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> b!4467939 (= lt!1657137 (lemmaInGenMapThenLongMapContainsHash!96 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4467940 () Bool)

(assert (=> b!4467940 (= e!2782196 e!2782191)))

(declare-fun res!1853530 () Bool)

(assert (=> b!4467940 (=> (not res!1853530) (not e!2782191))))

(assert (=> b!4467940 (= res!1853530 (= lt!1657131 hash!344))))

(declare-fun hash!2439 (Hashable!5417 K!11695) (_ BitVec 64))

(assert (=> b!4467940 (= lt!1657131 (hash!2439 hashF!1107 key!3287))))

(declare-fun b!4467941 () Bool)

(declare-fun e!2782193 () Bool)

(declare-fun tp!1336195 () Bool)

(assert (=> b!4467941 (= e!2782193 tp!1336195)))

(declare-fun res!1853524 () Bool)

(assert (=> start!438808 (=> (not res!1853524) (not e!2782196))))

(declare-fun forall!9984 (List!50403 Int) Bool)

(assert (=> start!438808 (= res!1853524 (forall!9984 (toList!4051 lm!1477) lambda!163025))))

(assert (=> start!438808 e!2782196))

(assert (=> start!438808 true))

(declare-fun inv!65879 (ListLongMap!2683) Bool)

(assert (=> start!438808 (and (inv!65879 lm!1477) e!2782193)))

(declare-fun tp_is_empty!27365 () Bool)

(assert (=> start!438808 tp_is_empty!27365))

(declare-fun e!2782194 () Bool)

(assert (=> start!438808 e!2782194))

(declare-fun b!4467932 () Bool)

(assert (=> b!4467932 (= e!2782195 (forall!9984 (t!357353 (toList!4051 lm!1477)) lambda!163025))))

(declare-fun b!4467942 () Bool)

(declare-fun res!1853526 () Bool)

(assert (=> b!4467942 (=> res!1853526 e!2782199)))

(get-info :version)

(assert (=> b!4467942 (= res!1853526 (or ((_ is Nil!50279) (toList!4051 lm!1477)) (not (= (_1!28556 (h!56040 (toList!4051 lm!1477))) hash!344))))))

(declare-fun b!4467943 () Bool)

(assert (=> b!4467943 (= e!2782198 e!2782192)))

(declare-fun res!1853533 () Bool)

(assert (=> b!4467943 (=> res!1853533 e!2782192)))

(declare-fun containsKeyBiggerList!22 (List!50403 K!11695) Bool)

(assert (=> b!4467943 (= res!1853533 (not (containsKeyBiggerList!22 lt!1657135 key!3287)))))

(assert (=> b!4467943 (= lt!1657135 (Cons!50279 (h!56040 (toList!4051 lm!1477)) Nil!50279))))

(declare-fun b!4467944 () Bool)

(declare-fun res!1853535 () Bool)

(assert (=> b!4467944 (=> (not res!1853535) (not e!2782196))))

(assert (=> b!4467944 (= res!1853535 (contains!12825 (extractMap!1078 (toList!4051 lm!1477)) key!3287))))

(declare-fun b!4467945 () Bool)

(declare-fun tp!1336194 () Bool)

(declare-fun tp_is_empty!27367 () Bool)

(assert (=> b!4467945 (= e!2782194 (and tp_is_empty!27365 tp_is_empty!27367 tp!1336194))))

(assert (= (and start!438808 res!1853524) b!4467931))

(assert (= (and b!4467931 res!1853529) b!4467944))

(assert (= (and b!4467944 res!1853535) b!4467940))

(assert (= (and b!4467940 res!1853530) b!4467930))

(assert (= (and b!4467930 res!1853528) b!4467939))

(assert (= (and b!4467939 (not res!1853534)) b!4467937))

(assert (= (and b!4467937 (not res!1853531)) b!4467942))

(assert (= (and b!4467942 (not res!1853526)) b!4467934))

(assert (= (and b!4467934 c!760564) b!4467936))

(assert (= (and b!4467934 (not c!760564)) b!4467933))

(assert (= (and b!4467934 (not res!1853532)) b!4467943))

(assert (= (and b!4467943 (not res!1853533)) b!4467935))

(assert (= (and b!4467935 (not res!1853527)) b!4467938))

(assert (= (and b!4467938 (not res!1853525)) b!4467932))

(assert (= start!438808 b!4467941))

(assert (= (and start!438808 ((_ is Cons!50278) newBucket!178)) b!4467945))

(declare-fun m!5173785 () Bool)

(assert (=> b!4467937 m!5173785))

(declare-fun m!5173787 () Bool)

(assert (=> b!4467932 m!5173787))

(declare-fun m!5173789 () Bool)

(assert (=> start!438808 m!5173789))

(declare-fun m!5173791 () Bool)

(assert (=> start!438808 m!5173791))

(declare-fun m!5173793 () Bool)

(assert (=> b!4467931 m!5173793))

(declare-fun m!5173795 () Bool)

(assert (=> b!4467938 m!5173795))

(assert (=> b!4467938 m!5173795))

(declare-fun m!5173797 () Bool)

(assert (=> b!4467938 m!5173797))

(declare-fun m!5173799 () Bool)

(assert (=> b!4467936 m!5173799))

(declare-fun m!5173801 () Bool)

(assert (=> b!4467930 m!5173801))

(declare-fun m!5173803 () Bool)

(assert (=> b!4467935 m!5173803))

(declare-fun m!5173805 () Bool)

(assert (=> b!4467935 m!5173805))

(declare-fun m!5173807 () Bool)

(assert (=> b!4467935 m!5173807))

(declare-fun m!5173809 () Bool)

(assert (=> b!4467935 m!5173809))

(assert (=> b!4467935 m!5173805))

(declare-fun m!5173811 () Bool)

(assert (=> b!4467935 m!5173811))

(declare-fun m!5173813 () Bool)

(assert (=> b!4467935 m!5173813))

(declare-fun m!5173815 () Bool)

(assert (=> b!4467935 m!5173815))

(declare-fun m!5173817 () Bool)

(assert (=> b!4467935 m!5173817))

(declare-fun m!5173819 () Bool)

(assert (=> b!4467935 m!5173819))

(assert (=> b!4467935 m!5173809))

(assert (=> b!4467935 m!5173817))

(assert (=> b!4467935 m!5173815))

(declare-fun m!5173821 () Bool)

(assert (=> b!4467935 m!5173821))

(declare-fun m!5173823 () Bool)

(assert (=> b!4467934 m!5173823))

(declare-fun m!5173825 () Bool)

(assert (=> b!4467939 m!5173825))

(declare-fun m!5173827 () Bool)

(assert (=> b!4467939 m!5173827))

(declare-fun m!5173829 () Bool)

(assert (=> b!4467939 m!5173829))

(declare-fun m!5173831 () Bool)

(assert (=> b!4467939 m!5173831))

(declare-fun m!5173833 () Bool)

(assert (=> b!4467939 m!5173833))

(declare-fun m!5173835 () Bool)

(assert (=> b!4467939 m!5173835))

(declare-fun m!5173837 () Bool)

(assert (=> b!4467939 m!5173837))

(declare-fun m!5173839 () Bool)

(assert (=> b!4467944 m!5173839))

(assert (=> b!4467944 m!5173839))

(declare-fun m!5173841 () Bool)

(assert (=> b!4467944 m!5173841))

(declare-fun m!5173843 () Bool)

(assert (=> b!4467940 m!5173843))

(declare-fun m!5173845 () Bool)

(assert (=> b!4467943 m!5173845))

(check-sat (not b!4467945) (not b!4467931) (not b!4467930) (not b!4467944) tp_is_empty!27367 (not b!4467938) (not b!4467940) (not b!4467941) (not b!4467934) (not b!4467932) tp_is_empty!27365 (not b!4467935) (not b!4467937) (not b!4467936) (not start!438808) (not b!4467943) (not b!4467939))
(check-sat)
(get-model)

(declare-fun d!1362857 () Bool)

(declare-fun hash!2443 (Hashable!5417 K!11695) (_ BitVec 64))

(assert (=> d!1362857 (= (hash!2439 hashF!1107 key!3287) (hash!2443 hashF!1107 key!3287))))

(declare-fun bs!794134 () Bool)

(assert (= bs!794134 d!1362857))

(declare-fun m!5173847 () Bool)

(assert (=> bs!794134 m!5173847))

(assert (=> b!4467940 d!1362857))

(declare-fun bs!794135 () Bool)

(declare-fun d!1362859 () Bool)

(assert (= bs!794135 (and d!1362859 start!438808)))

(declare-fun lambda!163028 () Int)

(assert (=> bs!794135 (= lambda!163028 lambda!163025)))

(assert (=> d!1362859 (contains!12827 lm!1477 (hash!2439 hashF!1107 key!3287))))

(declare-fun lt!1657145 () Unit!87567)

(declare-fun choose!28545 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> d!1362859 (= lt!1657145 (choose!28545 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1362859 (forall!9984 (toList!4051 lm!1477) lambda!163028)))

(assert (=> d!1362859 (= (lemmaInGenMapThenLongMapContainsHash!96 lm!1477 key!3287 hashF!1107) lt!1657145)))

(declare-fun bs!794136 () Bool)

(assert (= bs!794136 d!1362859))

(assert (=> bs!794136 m!5173843))

(assert (=> bs!794136 m!5173843))

(declare-fun m!5173849 () Bool)

(assert (=> bs!794136 m!5173849))

(declare-fun m!5173851 () Bool)

(assert (=> bs!794136 m!5173851))

(declare-fun m!5173853 () Bool)

(assert (=> bs!794136 m!5173853))

(assert (=> b!4467939 d!1362859))

(declare-fun d!1362861 () Bool)

(declare-fun dynLambda!21010 (Int tuple2!50524) Bool)

(assert (=> d!1362861 (dynLambda!21010 lambda!163025 lt!1657139)))

(declare-fun lt!1657148 () Unit!87567)

(declare-fun choose!28546 (List!50403 Int tuple2!50524) Unit!87567)

(assert (=> d!1362861 (= lt!1657148 (choose!28546 (toList!4051 lm!1477) lambda!163025 lt!1657139))))

(declare-fun e!2782202 () Bool)

(assert (=> d!1362861 e!2782202))

(declare-fun res!1853538 () Bool)

(assert (=> d!1362861 (=> (not res!1853538) (not e!2782202))))

(assert (=> d!1362861 (= res!1853538 (forall!9984 (toList!4051 lm!1477) lambda!163025))))

(assert (=> d!1362861 (= (forallContained!2255 (toList!4051 lm!1477) lambda!163025 lt!1657139) lt!1657148)))

(declare-fun b!4467948 () Bool)

(assert (=> b!4467948 (= e!2782202 (contains!12826 (toList!4051 lm!1477) lt!1657139))))

(assert (= (and d!1362861 res!1853538) b!4467948))

(declare-fun b_lambda!148277 () Bool)

(assert (=> (not b_lambda!148277) (not d!1362861)))

(declare-fun m!5173855 () Bool)

(assert (=> d!1362861 m!5173855))

(declare-fun m!5173857 () Bool)

(assert (=> d!1362861 m!5173857))

(assert (=> d!1362861 m!5173789))

(assert (=> b!4467948 m!5173837))

(assert (=> b!4467939 d!1362861))

(declare-fun d!1362863 () Bool)

(declare-fun lt!1657151 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8093 (List!50403) (InoxSet tuple2!50524))

(assert (=> d!1362863 (= lt!1657151 (select (content!8093 (toList!4051 lm!1477)) lt!1657139))))

(declare-fun e!2782207 () Bool)

(assert (=> d!1362863 (= lt!1657151 e!2782207)))

(declare-fun res!1853543 () Bool)

(assert (=> d!1362863 (=> (not res!1853543) (not e!2782207))))

(assert (=> d!1362863 (= res!1853543 ((_ is Cons!50279) (toList!4051 lm!1477)))))

(assert (=> d!1362863 (= (contains!12826 (toList!4051 lm!1477) lt!1657139) lt!1657151)))

(declare-fun b!4467953 () Bool)

(declare-fun e!2782208 () Bool)

(assert (=> b!4467953 (= e!2782207 e!2782208)))

(declare-fun res!1853544 () Bool)

(assert (=> b!4467953 (=> res!1853544 e!2782208)))

(assert (=> b!4467953 (= res!1853544 (= (h!56040 (toList!4051 lm!1477)) lt!1657139))))

(declare-fun b!4467954 () Bool)

(assert (=> b!4467954 (= e!2782208 (contains!12826 (t!357353 (toList!4051 lm!1477)) lt!1657139))))

(assert (= (and d!1362863 res!1853543) b!4467953))

(assert (= (and b!4467953 (not res!1853544)) b!4467954))

(declare-fun m!5173859 () Bool)

(assert (=> d!1362863 m!5173859))

(declare-fun m!5173861 () Bool)

(assert (=> d!1362863 m!5173861))

(declare-fun m!5173863 () Bool)

(assert (=> b!4467954 m!5173863))

(assert (=> b!4467939 d!1362863))

(declare-fun d!1362865 () Bool)

(declare-fun e!2782213 () Bool)

(assert (=> d!1362865 e!2782213))

(declare-fun res!1853547 () Bool)

(assert (=> d!1362865 (=> res!1853547 e!2782213)))

(declare-fun lt!1657162 () Bool)

(assert (=> d!1362865 (= res!1853547 (not lt!1657162))))

(declare-fun lt!1657163 () Bool)

(assert (=> d!1362865 (= lt!1657162 lt!1657163)))

(declare-fun lt!1657161 () Unit!87567)

(declare-fun e!2782214 () Unit!87567)

(assert (=> d!1362865 (= lt!1657161 e!2782214)))

(declare-fun c!760567 () Bool)

(assert (=> d!1362865 (= c!760567 lt!1657163)))

(declare-fun containsKey!1464 (List!50403 (_ BitVec 64)) Bool)

(assert (=> d!1362865 (= lt!1657163 (containsKey!1464 (toList!4051 lm!1477) lt!1657131))))

(assert (=> d!1362865 (= (contains!12827 lm!1477 lt!1657131) lt!1657162)))

(declare-fun b!4467961 () Bool)

(declare-fun lt!1657160 () Unit!87567)

(assert (=> b!4467961 (= e!2782214 lt!1657160)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!811 (List!50403 (_ BitVec 64)) Unit!87567)

(assert (=> b!4467961 (= lt!1657160 (lemmaContainsKeyImpliesGetValueByKeyDefined!811 (toList!4051 lm!1477) lt!1657131))))

(declare-datatypes ((Option!10922 0))(
  ( (None!10921) (Some!10921 (v!44231 List!50402)) )
))
(declare-fun isDefined!8208 (Option!10922) Bool)

(declare-fun getValueByKey!908 (List!50403 (_ BitVec 64)) Option!10922)

(assert (=> b!4467961 (isDefined!8208 (getValueByKey!908 (toList!4051 lm!1477) lt!1657131))))

(declare-fun b!4467962 () Bool)

(declare-fun Unit!87573 () Unit!87567)

(assert (=> b!4467962 (= e!2782214 Unit!87573)))

(declare-fun b!4467963 () Bool)

(assert (=> b!4467963 (= e!2782213 (isDefined!8208 (getValueByKey!908 (toList!4051 lm!1477) lt!1657131)))))

(assert (= (and d!1362865 c!760567) b!4467961))

(assert (= (and d!1362865 (not c!760567)) b!4467962))

(assert (= (and d!1362865 (not res!1853547)) b!4467963))

(declare-fun m!5173865 () Bool)

(assert (=> d!1362865 m!5173865))

(declare-fun m!5173867 () Bool)

(assert (=> b!4467961 m!5173867))

(declare-fun m!5173869 () Bool)

(assert (=> b!4467961 m!5173869))

(assert (=> b!4467961 m!5173869))

(declare-fun m!5173871 () Bool)

(assert (=> b!4467961 m!5173871))

(assert (=> b!4467963 m!5173869))

(assert (=> b!4467963 m!5173869))

(assert (=> b!4467963 m!5173871))

(assert (=> b!4467939 d!1362865))

(declare-fun d!1362867 () Bool)

(declare-fun lt!1657166 () List!50402)

(assert (=> d!1362867 (not (containsKey!1462 lt!1657166 key!3287))))

(declare-fun e!2782219 () List!50402)

(assert (=> d!1362867 (= lt!1657166 e!2782219)))

(declare-fun c!760572 () Bool)

(assert (=> d!1362867 (= c!760572 (and ((_ is Cons!50278) lt!1657142) (= (_1!28555 (h!56039 lt!1657142)) key!3287)))))

(assert (=> d!1362867 (noDuplicateKeys!1022 lt!1657142)))

(assert (=> d!1362867 (= (removePairForKey!649 lt!1657142 key!3287) lt!1657166)))

(declare-fun b!4467974 () Bool)

(declare-fun e!2782220 () List!50402)

(assert (=> b!4467974 (= e!2782220 (Cons!50278 (h!56039 lt!1657142) (removePairForKey!649 (t!357352 lt!1657142) key!3287)))))

(declare-fun b!4467973 () Bool)

(assert (=> b!4467973 (= e!2782219 e!2782220)))

(declare-fun c!760573 () Bool)

(assert (=> b!4467973 (= c!760573 ((_ is Cons!50278) lt!1657142))))

(declare-fun b!4467975 () Bool)

(assert (=> b!4467975 (= e!2782220 Nil!50278)))

(declare-fun b!4467972 () Bool)

(assert (=> b!4467972 (= e!2782219 (t!357352 lt!1657142))))

(assert (= (and d!1362867 c!760572) b!4467972))

(assert (= (and d!1362867 (not c!760572)) b!4467973))

(assert (= (and b!4467973 c!760573) b!4467974))

(assert (= (and b!4467973 (not c!760573)) b!4467975))

(declare-fun m!5173873 () Bool)

(assert (=> d!1362867 m!5173873))

(declare-fun m!5173875 () Bool)

(assert (=> d!1362867 m!5173875))

(declare-fun m!5173877 () Bool)

(assert (=> b!4467974 m!5173877))

(assert (=> b!4467939 d!1362867))

(declare-fun d!1362871 () Bool)

(assert (=> d!1362871 (contains!12826 (toList!4051 lm!1477) (tuple2!50525 hash!344 lt!1657142))))

(declare-fun lt!1657169 () Unit!87567)

(declare-fun choose!28549 (List!50403 (_ BitVec 64) List!50402) Unit!87567)

(assert (=> d!1362871 (= lt!1657169 (choose!28549 (toList!4051 lm!1477) hash!344 lt!1657142))))

(declare-fun e!2782223 () Bool)

(assert (=> d!1362871 e!2782223))

(declare-fun res!1853550 () Bool)

(assert (=> d!1362871 (=> (not res!1853550) (not e!2782223))))

(declare-fun isStrictlySorted!339 (List!50403) Bool)

(assert (=> d!1362871 (= res!1853550 (isStrictlySorted!339 (toList!4051 lm!1477)))))

(assert (=> d!1362871 (= (lemmaGetValueByKeyImpliesContainsTuple!534 (toList!4051 lm!1477) hash!344 lt!1657142) lt!1657169)))

(declare-fun b!4467978 () Bool)

(assert (=> b!4467978 (= e!2782223 (= (getValueByKey!908 (toList!4051 lm!1477) hash!344) (Some!10921 lt!1657142)))))

(assert (= (and d!1362871 res!1853550) b!4467978))

(declare-fun m!5173879 () Bool)

(assert (=> d!1362871 m!5173879))

(declare-fun m!5173881 () Bool)

(assert (=> d!1362871 m!5173881))

(declare-fun m!5173883 () Bool)

(assert (=> d!1362871 m!5173883))

(declare-fun m!5173885 () Bool)

(assert (=> b!4467978 m!5173885))

(assert (=> b!4467939 d!1362871))

(declare-fun d!1362873 () Bool)

(declare-fun get!16388 (Option!10922) List!50402)

(assert (=> d!1362873 (= (apply!11759 lm!1477 hash!344) (get!16388 (getValueByKey!908 (toList!4051 lm!1477) hash!344)))))

(declare-fun bs!794137 () Bool)

(assert (= bs!794137 d!1362873))

(assert (=> bs!794137 m!5173885))

(assert (=> bs!794137 m!5173885))

(declare-fun m!5173887 () Bool)

(assert (=> bs!794137 m!5173887))

(assert (=> b!4467939 d!1362873))

(declare-fun d!1362875 () Bool)

(declare-fun e!2782226 () Bool)

(assert (=> d!1362875 e!2782226))

(declare-fun res!1853555 () Bool)

(assert (=> d!1362875 (=> (not res!1853555) (not e!2782226))))

(declare-fun lt!1657182 () ListLongMap!2683)

(assert (=> d!1362875 (= res!1853555 (contains!12827 lt!1657182 (_1!28556 lt!1657130)))))

(declare-fun lt!1657183 () List!50403)

(assert (=> d!1362875 (= lt!1657182 (ListLongMap!2684 lt!1657183))))

(declare-fun lt!1657181 () Unit!87567)

(declare-fun lt!1657184 () Unit!87567)

(assert (=> d!1362875 (= lt!1657181 lt!1657184)))

(assert (=> d!1362875 (= (getValueByKey!908 lt!1657183 (_1!28556 lt!1657130)) (Some!10921 (_2!28556 lt!1657130)))))

(declare-fun lemmaContainsTupThenGetReturnValue!581 (List!50403 (_ BitVec 64) List!50402) Unit!87567)

(assert (=> d!1362875 (= lt!1657184 (lemmaContainsTupThenGetReturnValue!581 lt!1657183 (_1!28556 lt!1657130) (_2!28556 lt!1657130)))))

(declare-fun insertStrictlySorted!327 (List!50403 (_ BitVec 64) List!50402) List!50403)

(assert (=> d!1362875 (= lt!1657183 (insertStrictlySorted!327 (toList!4051 (tail!7497 lm!1477)) (_1!28556 lt!1657130) (_2!28556 lt!1657130)))))

(assert (=> d!1362875 (= (+!1364 (tail!7497 lm!1477) lt!1657130) lt!1657182)))

(declare-fun b!4467983 () Bool)

(declare-fun res!1853556 () Bool)

(assert (=> b!4467983 (=> (not res!1853556) (not e!2782226))))

(assert (=> b!4467983 (= res!1853556 (= (getValueByKey!908 (toList!4051 lt!1657182) (_1!28556 lt!1657130)) (Some!10921 (_2!28556 lt!1657130))))))

(declare-fun b!4467984 () Bool)

(assert (=> b!4467984 (= e!2782226 (contains!12826 (toList!4051 lt!1657182) lt!1657130))))

(assert (= (and d!1362875 res!1853555) b!4467983))

(assert (= (and b!4467983 res!1853556) b!4467984))

(declare-fun m!5173895 () Bool)

(assert (=> d!1362875 m!5173895))

(declare-fun m!5173897 () Bool)

(assert (=> d!1362875 m!5173897))

(declare-fun m!5173899 () Bool)

(assert (=> d!1362875 m!5173899))

(declare-fun m!5173901 () Bool)

(assert (=> d!1362875 m!5173901))

(declare-fun m!5173903 () Bool)

(assert (=> b!4467983 m!5173903))

(declare-fun m!5173905 () Bool)

(assert (=> b!4467984 m!5173905))

(assert (=> b!4467938 d!1362875))

(declare-fun d!1362881 () Bool)

(assert (=> d!1362881 (= (tail!7497 lm!1477) (ListLongMap!2684 (tail!7496 (toList!4051 lm!1477))))))

(declare-fun bs!794141 () Bool)

(assert (= bs!794141 d!1362881))

(declare-fun m!5173911 () Bool)

(assert (=> bs!794141 m!5173911))

(assert (=> b!4467938 d!1362881))

(declare-fun d!1362885 () Bool)

(declare-fun res!1853570 () Bool)

(declare-fun e!2782240 () Bool)

(assert (=> d!1362885 (=> res!1853570 e!2782240)))

(assert (=> d!1362885 (= res!1853570 (not ((_ is Cons!50278) newBucket!178)))))

(assert (=> d!1362885 (= (noDuplicateKeys!1022 newBucket!178) e!2782240)))

(declare-fun b!4467998 () Bool)

(declare-fun e!2782241 () Bool)

(assert (=> b!4467998 (= e!2782240 e!2782241)))

(declare-fun res!1853571 () Bool)

(assert (=> b!4467998 (=> (not res!1853571) (not e!2782241))))

(assert (=> b!4467998 (= res!1853571 (not (containsKey!1462 (t!357352 newBucket!178) (_1!28555 (h!56039 newBucket!178)))))))

(declare-fun b!4467999 () Bool)

(assert (=> b!4467999 (= e!2782241 (noDuplicateKeys!1022 (t!357352 newBucket!178)))))

(assert (= (and d!1362885 (not res!1853570)) b!4467998))

(assert (= (and b!4467998 res!1853571) b!4467999))

(declare-fun m!5173913 () Bool)

(assert (=> b!4467998 m!5173913))

(declare-fun m!5173915 () Bool)

(assert (=> b!4467999 m!5173915))

(assert (=> b!4467937 d!1362885))

(declare-fun bs!794144 () Bool)

(declare-fun d!1362887 () Bool)

(assert (= bs!794144 (and d!1362887 start!438808)))

(declare-fun lambda!163037 () Int)

(assert (=> bs!794144 (= lambda!163037 lambda!163025)))

(declare-fun bs!794145 () Bool)

(assert (= bs!794145 (and d!1362887 d!1362859)))

(assert (=> bs!794145 (= lambda!163037 lambda!163028)))

(assert (=> d!1362887 (not (contains!12825 (extractMap!1078 (toList!4051 lm!1477)) key!3287))))

(declare-fun lt!1657214 () Unit!87567)

(declare-fun choose!28552 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> d!1362887 (= lt!1657214 (choose!28552 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1362887 (forall!9984 (toList!4051 lm!1477) lambda!163037)))

(assert (=> d!1362887 (= (lemmaNotInItsHashBucketThenNotInMap!22 lm!1477 key!3287 hashF!1107) lt!1657214)))

(declare-fun bs!794146 () Bool)

(assert (= bs!794146 d!1362887))

(assert (=> bs!794146 m!5173839))

(assert (=> bs!794146 m!5173839))

(assert (=> bs!794146 m!5173841))

(declare-fun m!5173949 () Bool)

(assert (=> bs!794146 m!5173949))

(declare-fun m!5173951 () Bool)

(assert (=> bs!794146 m!5173951))

(assert (=> b!4467936 d!1362887))

(declare-fun bs!794153 () Bool)

(declare-fun d!1362897 () Bool)

(assert (= bs!794153 (and d!1362897 start!438808)))

(declare-fun lambda!163043 () Int)

(assert (=> bs!794153 (= lambda!163043 lambda!163025)))

(declare-fun bs!794154 () Bool)

(assert (= bs!794154 (and d!1362897 d!1362859)))

(assert (=> bs!794154 (= lambda!163043 lambda!163028)))

(declare-fun bs!794155 () Bool)

(assert (= bs!794155 (and d!1362897 d!1362887)))

(assert (=> bs!794155 (= lambda!163043 lambda!163037)))

(declare-fun lt!1657241 () ListMap!3313)

(declare-fun invariantList!925 (List!50402) Bool)

(assert (=> d!1362897 (invariantList!925 (toList!4052 lt!1657241))))

(declare-fun e!2782298 () ListMap!3313)

(assert (=> d!1362897 (= lt!1657241 e!2782298)))

(declare-fun c!760597 () Bool)

(assert (=> d!1362897 (= c!760597 ((_ is Cons!50279) (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)))))

(assert (=> d!1362897 (forall!9984 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279) lambda!163043)))

(assert (=> d!1362897 (= (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) lt!1657241)))

(declare-fun b!4468079 () Bool)

(declare-fun addToMapMapFromBucket!587 (List!50402 ListMap!3313) ListMap!3313)

(assert (=> b!4468079 (= e!2782298 (addToMapMapFromBucket!587 (_2!28556 (h!56040 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279))) (extractMap!1078 (t!357353 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)))))))

(declare-fun b!4468080 () Bool)

(assert (=> b!4468080 (= e!2782298 (ListMap!3314 Nil!50278))))

(assert (= (and d!1362897 c!760597) b!4468079))

(assert (= (and d!1362897 (not c!760597)) b!4468080))

(declare-fun m!5173989 () Bool)

(assert (=> d!1362897 m!5173989))

(declare-fun m!5173991 () Bool)

(assert (=> d!1362897 m!5173991))

(declare-fun m!5173993 () Bool)

(assert (=> b!4468079 m!5173993))

(assert (=> b!4468079 m!5173993))

(declare-fun m!5173995 () Bool)

(assert (=> b!4468079 m!5173995))

(assert (=> b!4467935 d!1362897))

(declare-fun bs!794166 () Bool)

(declare-fun d!1362913 () Bool)

(assert (= bs!794166 (and d!1362913 start!438808)))

(declare-fun lambda!163050 () Int)

(assert (=> bs!794166 (= lambda!163050 lambda!163025)))

(declare-fun bs!794167 () Bool)

(assert (= bs!794167 (and d!1362913 d!1362859)))

(assert (=> bs!794167 (= lambda!163050 lambda!163028)))

(declare-fun bs!794168 () Bool)

(assert (= bs!794168 (and d!1362913 d!1362887)))

(assert (=> bs!794168 (= lambda!163050 lambda!163037)))

(declare-fun bs!794169 () Bool)

(assert (= bs!794169 (and d!1362913 d!1362897)))

(assert (=> bs!794169 (= lambda!163050 lambda!163043)))

(assert (=> d!1362913 (contains!12825 (extractMap!1078 (toList!4051 (ListLongMap!2684 lt!1657135))) key!3287)))

(declare-fun lt!1657251 () Unit!87567)

(declare-fun choose!28553 (ListLongMap!2683 K!11695 Hashable!5417) Unit!87567)

(assert (=> d!1362913 (= lt!1657251 (choose!28553 (ListLongMap!2684 lt!1657135) key!3287 hashF!1107))))

(assert (=> d!1362913 (forall!9984 (toList!4051 (ListLongMap!2684 lt!1657135)) lambda!163050)))

(assert (=> d!1362913 (= (lemmaListContainsThenExtractedMapContains!18 (ListLongMap!2684 lt!1657135) key!3287 hashF!1107) lt!1657251)))

(declare-fun bs!794170 () Bool)

(assert (= bs!794170 d!1362913))

(declare-fun m!5174017 () Bool)

(assert (=> bs!794170 m!5174017))

(assert (=> bs!794170 m!5174017))

(declare-fun m!5174019 () Bool)

(assert (=> bs!794170 m!5174019))

(declare-fun m!5174021 () Bool)

(assert (=> bs!794170 m!5174021))

(declare-fun m!5174023 () Bool)

(assert (=> bs!794170 m!5174023))

(assert (=> b!4467935 d!1362913))

(declare-fun d!1362921 () Bool)

(declare-fun e!2782319 () Bool)

(assert (=> d!1362921 e!2782319))

(declare-fun res!1853622 () Bool)

(assert (=> d!1362921 (=> (not res!1853622) (not e!2782319))))

(declare-fun lt!1657279 () ListMap!3313)

(assert (=> d!1362921 (= res!1853622 (not (contains!12825 lt!1657279 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!61 (List!50402 K!11695) List!50402)

(assert (=> d!1362921 (= lt!1657279 (ListMap!3314 (removePresrvNoDuplicatedKeys!61 (toList!4052 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279))) key!3287)))))

(assert (=> d!1362921 (= (-!284 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) key!3287) lt!1657279)))

(declare-fun b!4468110 () Bool)

(declare-datatypes ((List!50405 0))(
  ( (Nil!50281) (Cons!50281 (h!56044 K!11695) (t!357355 List!50405)) )
))
(declare-fun content!8097 (List!50405) (InoxSet K!11695))

(declare-fun keys!17358 (ListMap!3313) List!50405)

(assert (=> b!4468110 (= e!2782319 (= ((_ map and) (content!8097 (keys!17358 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)))) ((_ map not) (store ((as const (Array K!11695 Bool)) false) key!3287 true))) (content!8097 (keys!17358 lt!1657279))))))

(assert (= (and d!1362921 res!1853622) b!4468110))

(declare-fun m!5174071 () Bool)

(assert (=> d!1362921 m!5174071))

(declare-fun m!5174073 () Bool)

(assert (=> d!1362921 m!5174073))

(declare-fun m!5174075 () Bool)

(assert (=> b!4468110 m!5174075))

(declare-fun m!5174077 () Bool)

(assert (=> b!4468110 m!5174077))

(declare-fun m!5174079 () Bool)

(assert (=> b!4468110 m!5174079))

(declare-fun m!5174081 () Bool)

(assert (=> b!4468110 m!5174081))

(assert (=> b!4468110 m!5174075))

(assert (=> b!4468110 m!5173809))

(assert (=> b!4468110 m!5174079))

(declare-fun m!5174089 () Bool)

(assert (=> b!4468110 m!5174089))

(assert (=> b!4467935 d!1362921))

(declare-fun d!1362935 () Bool)

(assert (=> d!1362935 (= (tail!7496 (toList!4051 lt!1657136)) (t!357353 (toList!4051 lt!1657136)))))

(assert (=> b!4467935 d!1362935))

(declare-fun d!1362939 () Bool)

(declare-fun content!8098 (List!50402) (InoxSet tuple2!50522))

(assert (=> d!1362939 (= (eq!515 (extractMap!1078 (Cons!50279 lt!1657130 Nil!50279)) (-!284 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) key!3287)) (= (content!8098 (toList!4052 (extractMap!1078 (Cons!50279 lt!1657130 Nil!50279)))) (content!8098 (toList!4052 (-!284 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) key!3287)))))))

(declare-fun bs!794185 () Bool)

(assert (= bs!794185 d!1362939))

(declare-fun m!5174105 () Bool)

(assert (=> bs!794185 m!5174105))

(declare-fun m!5174107 () Bool)

(assert (=> bs!794185 m!5174107))

(assert (=> b!4467935 d!1362939))

(declare-fun bs!794186 () Bool)

(declare-fun d!1362941 () Bool)

(assert (= bs!794186 (and d!1362941 d!1362859)))

(declare-fun lambda!163053 () Int)

(assert (=> bs!794186 (= lambda!163053 lambda!163028)))

(declare-fun bs!794187 () Bool)

(assert (= bs!794187 (and d!1362941 d!1362887)))

(assert (=> bs!794187 (= lambda!163053 lambda!163037)))

(declare-fun bs!794188 () Bool)

(assert (= bs!794188 (and d!1362941 start!438808)))

(assert (=> bs!794188 (= lambda!163053 lambda!163025)))

(declare-fun bs!794189 () Bool)

(assert (= bs!794189 (and d!1362941 d!1362913)))

(assert (=> bs!794189 (= lambda!163053 lambda!163050)))

(declare-fun bs!794190 () Bool)

(assert (= bs!794190 (and d!1362941 d!1362897)))

(assert (=> bs!794190 (= lambda!163053 lambda!163043)))

(declare-fun lt!1657280 () ListMap!3313)

(assert (=> d!1362941 (invariantList!925 (toList!4052 lt!1657280))))

(declare-fun e!2782320 () ListMap!3313)

(assert (=> d!1362941 (= lt!1657280 e!2782320)))

(declare-fun c!760604 () Bool)

(assert (=> d!1362941 (= c!760604 ((_ is Cons!50279) lt!1657135))))

(assert (=> d!1362941 (forall!9984 lt!1657135 lambda!163053)))

(assert (=> d!1362941 (= (extractMap!1078 lt!1657135) lt!1657280)))

(declare-fun b!4468111 () Bool)

(assert (=> b!4468111 (= e!2782320 (addToMapMapFromBucket!587 (_2!28556 (h!56040 lt!1657135)) (extractMap!1078 (t!357353 lt!1657135))))))

(declare-fun b!4468112 () Bool)

(assert (=> b!4468112 (= e!2782320 (ListMap!3314 Nil!50278))))

(assert (= (and d!1362941 c!760604) b!4468111))

(assert (= (and d!1362941 (not c!760604)) b!4468112))

(declare-fun m!5174109 () Bool)

(assert (=> d!1362941 m!5174109))

(declare-fun m!5174111 () Bool)

(assert (=> d!1362941 m!5174111))

(declare-fun m!5174113 () Bool)

(assert (=> b!4468111 m!5174113))

(assert (=> b!4468111 m!5174113))

(declare-fun m!5174115 () Bool)

(assert (=> b!4468111 m!5174115))

(assert (=> b!4467935 d!1362941))

(declare-fun d!1362943 () Bool)

(assert (=> d!1362943 (eq!515 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 newBucket!178) Nil!50279)) (-!284 (extractMap!1078 (Cons!50279 (tuple2!50525 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477)))) Nil!50279)) key!3287))))

(declare-fun lt!1657290 () Unit!87567)

(declare-fun choose!28554 ((_ BitVec 64) List!50402 List!50402 K!11695 Hashable!5417) Unit!87567)

(assert (=> d!1362943 (= lt!1657290 (choose!28554 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1362943 (noDuplicateKeys!1022 (_2!28556 (h!56040 (toList!4051 lm!1477))))))

(assert (=> d!1362943 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!14 hash!344 (_2!28556 (h!56040 (toList!4051 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1657290)))

(declare-fun bs!794194 () Bool)

(assert (= bs!794194 d!1362943))

(assert (=> bs!794194 m!5173809))

(assert (=> bs!794194 m!5173817))

(assert (=> bs!794194 m!5173809))

(declare-fun m!5174149 () Bool)

(assert (=> bs!794194 m!5174149))

(assert (=> bs!794194 m!5173817))

(declare-fun m!5174151 () Bool)

(assert (=> bs!794194 m!5174151))

(declare-fun m!5174153 () Bool)

(assert (=> bs!794194 m!5174153))

(declare-fun m!5174155 () Bool)

(assert (=> bs!794194 m!5174155))

(assert (=> bs!794194 m!5174149))

(assert (=> b!4467935 d!1362943))

(declare-fun bs!794195 () Bool)

(declare-fun d!1362957 () Bool)

(assert (= bs!794195 (and d!1362957 d!1362859)))

(declare-fun lambda!163059 () Int)

(assert (=> bs!794195 (= lambda!163059 lambda!163028)))

(declare-fun bs!794196 () Bool)

(assert (= bs!794196 (and d!1362957 d!1362887)))

(assert (=> bs!794196 (= lambda!163059 lambda!163037)))

(declare-fun bs!794197 () Bool)

(assert (= bs!794197 (and d!1362957 d!1362941)))

(assert (=> bs!794197 (= lambda!163059 lambda!163053)))

(declare-fun bs!794198 () Bool)

(assert (= bs!794198 (and d!1362957 start!438808)))

(assert (=> bs!794198 (= lambda!163059 lambda!163025)))

(declare-fun bs!794199 () Bool)

(assert (= bs!794199 (and d!1362957 d!1362913)))

(assert (=> bs!794199 (= lambda!163059 lambda!163050)))

(declare-fun bs!794200 () Bool)

(assert (= bs!794200 (and d!1362957 d!1362897)))

(assert (=> bs!794200 (= lambda!163059 lambda!163043)))

(declare-fun lt!1657291 () ListMap!3313)

(assert (=> d!1362957 (invariantList!925 (toList!4052 lt!1657291))))

(declare-fun e!2782330 () ListMap!3313)

(assert (=> d!1362957 (= lt!1657291 e!2782330)))

(declare-fun c!760605 () Bool)

(assert (=> d!1362957 (= c!760605 ((_ is Cons!50279) (Cons!50279 lt!1657130 Nil!50279)))))

(assert (=> d!1362957 (forall!9984 (Cons!50279 lt!1657130 Nil!50279) lambda!163059)))

(assert (=> d!1362957 (= (extractMap!1078 (Cons!50279 lt!1657130 Nil!50279)) lt!1657291)))

(declare-fun b!4468127 () Bool)

(assert (=> b!4468127 (= e!2782330 (addToMapMapFromBucket!587 (_2!28556 (h!56040 (Cons!50279 lt!1657130 Nil!50279))) (extractMap!1078 (t!357353 (Cons!50279 lt!1657130 Nil!50279)))))))

(declare-fun b!4468128 () Bool)

(assert (=> b!4468128 (= e!2782330 (ListMap!3314 Nil!50278))))

(assert (= (and d!1362957 c!760605) b!4468127))

(assert (= (and d!1362957 (not c!760605)) b!4468128))

(declare-fun m!5174157 () Bool)

(assert (=> d!1362957 m!5174157))

(declare-fun m!5174159 () Bool)

(assert (=> d!1362957 m!5174159))

(declare-fun m!5174161 () Bool)

(assert (=> b!4468127 m!5174161))

(assert (=> b!4468127 m!5174161))

(declare-fun m!5174163 () Bool)

(assert (=> b!4468127 m!5174163))

(assert (=> b!4467935 d!1362957))

(declare-fun b!4468159 () Bool)

(assert (=> b!4468159 false))

(declare-fun lt!1657312 () Unit!87567)

(declare-fun lt!1657310 () Unit!87567)

(assert (=> b!4468159 (= lt!1657312 lt!1657310)))

(declare-fun containsKey!1466 (List!50402 K!11695) Bool)

(assert (=> b!4468159 (containsKey!1466 (toList!4052 (extractMap!1078 lt!1657135)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!372 (List!50402 K!11695) Unit!87567)

(assert (=> b!4468159 (= lt!1657310 (lemmaInGetKeysListThenContainsKey!372 (toList!4052 (extractMap!1078 lt!1657135)) key!3287))))

(declare-fun e!2782353 () Unit!87567)

(declare-fun Unit!87575 () Unit!87567)

(assert (=> b!4468159 (= e!2782353 Unit!87575)))

(declare-fun b!4468160 () Bool)

(declare-fun e!2782354 () List!50405)

(declare-fun getKeysList!373 (List!50402) List!50405)

(assert (=> b!4468160 (= e!2782354 (getKeysList!373 (toList!4052 (extractMap!1078 lt!1657135))))))

(declare-fun b!4468161 () Bool)

(declare-fun e!2782349 () Unit!87567)

(declare-fun lt!1657313 () Unit!87567)

(assert (=> b!4468161 (= e!2782349 lt!1657313)))

(declare-fun lt!1657315 () Unit!87567)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!813 (List!50402 K!11695) Unit!87567)

(assert (=> b!4468161 (= lt!1657315 (lemmaContainsKeyImpliesGetValueByKeyDefined!813 (toList!4052 (extractMap!1078 lt!1657135)) key!3287))))

(declare-datatypes ((Option!10923 0))(
  ( (None!10922) (Some!10922 (v!44232 V!11941)) )
))
(declare-fun isDefined!8210 (Option!10923) Bool)

(declare-fun getValueByKey!909 (List!50402 K!11695) Option!10923)

(assert (=> b!4468161 (isDefined!8210 (getValueByKey!909 (toList!4052 (extractMap!1078 lt!1657135)) key!3287))))

(declare-fun lt!1657311 () Unit!87567)

(assert (=> b!4468161 (= lt!1657311 lt!1657315)))

(declare-fun lemmaInListThenGetKeysListContains!369 (List!50402 K!11695) Unit!87567)

(assert (=> b!4468161 (= lt!1657313 (lemmaInListThenGetKeysListContains!369 (toList!4052 (extractMap!1078 lt!1657135)) key!3287))))

(declare-fun call!311085 () Bool)

(assert (=> b!4468161 call!311085))

(declare-fun b!4468162 () Bool)

(declare-fun e!2782352 () Bool)

(declare-fun contains!12829 (List!50405 K!11695) Bool)

(assert (=> b!4468162 (= e!2782352 (not (contains!12829 (keys!17358 (extractMap!1078 lt!1657135)) key!3287)))))

(declare-fun b!4468163 () Bool)

(assert (=> b!4468163 (= e!2782354 (keys!17358 (extractMap!1078 lt!1657135)))))

(declare-fun bm!311080 () Bool)

(assert (=> bm!311080 (= call!311085 (contains!12829 e!2782354 key!3287))))

(declare-fun c!760612 () Bool)

(declare-fun c!760613 () Bool)

(assert (=> bm!311080 (= c!760612 c!760613)))

(declare-fun b!4468165 () Bool)

(assert (=> b!4468165 (= e!2782349 e!2782353)))

(declare-fun c!760614 () Bool)

(assert (=> b!4468165 (= c!760614 call!311085)))

(declare-fun b!4468166 () Bool)

(declare-fun e!2782350 () Bool)

(declare-fun e!2782351 () Bool)

(assert (=> b!4468166 (= e!2782350 e!2782351)))

(declare-fun res!1853641 () Bool)

(assert (=> b!4468166 (=> (not res!1853641) (not e!2782351))))

(assert (=> b!4468166 (= res!1853641 (isDefined!8210 (getValueByKey!909 (toList!4052 (extractMap!1078 lt!1657135)) key!3287)))))

(declare-fun b!4468167 () Bool)

(declare-fun Unit!87578 () Unit!87567)

(assert (=> b!4468167 (= e!2782353 Unit!87578)))

(declare-fun d!1362959 () Bool)

(assert (=> d!1362959 e!2782350))

(declare-fun res!1853640 () Bool)

(assert (=> d!1362959 (=> res!1853640 e!2782350)))

(assert (=> d!1362959 (= res!1853640 e!2782352)))

(declare-fun res!1853639 () Bool)

(assert (=> d!1362959 (=> (not res!1853639) (not e!2782352))))

(declare-fun lt!1657309 () Bool)

(assert (=> d!1362959 (= res!1853639 (not lt!1657309))))

(declare-fun lt!1657308 () Bool)

(assert (=> d!1362959 (= lt!1657309 lt!1657308)))

(declare-fun lt!1657314 () Unit!87567)

(assert (=> d!1362959 (= lt!1657314 e!2782349)))

(assert (=> d!1362959 (= c!760613 lt!1657308)))

(assert (=> d!1362959 (= lt!1657308 (containsKey!1466 (toList!4052 (extractMap!1078 lt!1657135)) key!3287))))

(assert (=> d!1362959 (= (contains!12825 (extractMap!1078 lt!1657135) key!3287) lt!1657309)))

(declare-fun b!4468164 () Bool)

(assert (=> b!4468164 (= e!2782351 (contains!12829 (keys!17358 (extractMap!1078 lt!1657135)) key!3287))))

(assert (= (and d!1362959 c!760613) b!4468161))

(assert (= (and d!1362959 (not c!760613)) b!4468165))

(assert (= (and b!4468165 c!760614) b!4468159))

(assert (= (and b!4468165 (not c!760614)) b!4468167))

(assert (= (or b!4468161 b!4468165) bm!311080))

(assert (= (and bm!311080 c!760612) b!4468160))

(assert (= (and bm!311080 (not c!760612)) b!4468163))

(assert (= (and d!1362959 res!1853639) b!4468162))

(assert (= (and d!1362959 (not res!1853640)) b!4468166))

(assert (= (and b!4468166 res!1853641) b!4468164))

(assert (=> b!4468164 m!5173805))

(declare-fun m!5174171 () Bool)

(assert (=> b!4468164 m!5174171))

(assert (=> b!4468164 m!5174171))

(declare-fun m!5174173 () Bool)

(assert (=> b!4468164 m!5174173))

(assert (=> b!4468163 m!5173805))

(assert (=> b!4468163 m!5174171))

(assert (=> b!4468162 m!5173805))

(assert (=> b!4468162 m!5174171))

(assert (=> b!4468162 m!5174171))

(assert (=> b!4468162 m!5174173))

(declare-fun m!5174175 () Bool)

(assert (=> b!4468159 m!5174175))

(declare-fun m!5174177 () Bool)

(assert (=> b!4468159 m!5174177))

(declare-fun m!5174179 () Bool)

(assert (=> b!4468160 m!5174179))

(declare-fun m!5174181 () Bool)

(assert (=> b!4468166 m!5174181))

(assert (=> b!4468166 m!5174181))

(declare-fun m!5174183 () Bool)

(assert (=> b!4468166 m!5174183))

(declare-fun m!5174185 () Bool)

(assert (=> bm!311080 m!5174185))

(declare-fun m!5174187 () Bool)

(assert (=> b!4468161 m!5174187))

(assert (=> b!4468161 m!5174181))

(assert (=> b!4468161 m!5174181))

(assert (=> b!4468161 m!5174183))

(declare-fun m!5174189 () Bool)

(assert (=> b!4468161 m!5174189))

(assert (=> d!1362959 m!5174175))

(assert (=> b!4467935 d!1362959))

(declare-fun d!1362967 () Bool)

(declare-fun e!2782355 () Bool)

(assert (=> d!1362967 e!2782355))

(declare-fun res!1853642 () Bool)

(assert (=> d!1362967 (=> (not res!1853642) (not e!2782355))))

(declare-fun lt!1657317 () ListLongMap!2683)

(assert (=> d!1362967 (= res!1853642 (contains!12827 lt!1657317 (_1!28556 lt!1657130)))))

(declare-fun lt!1657318 () List!50403)

(assert (=> d!1362967 (= lt!1657317 (ListLongMap!2684 lt!1657318))))

(declare-fun lt!1657316 () Unit!87567)

(declare-fun lt!1657319 () Unit!87567)

(assert (=> d!1362967 (= lt!1657316 lt!1657319)))

(assert (=> d!1362967 (= (getValueByKey!908 lt!1657318 (_1!28556 lt!1657130)) (Some!10921 (_2!28556 lt!1657130)))))

(assert (=> d!1362967 (= lt!1657319 (lemmaContainsTupThenGetReturnValue!581 lt!1657318 (_1!28556 lt!1657130) (_2!28556 lt!1657130)))))

(assert (=> d!1362967 (= lt!1657318 (insertStrictlySorted!327 (toList!4051 lm!1477) (_1!28556 lt!1657130) (_2!28556 lt!1657130)))))

(assert (=> d!1362967 (= (+!1364 lm!1477 lt!1657130) lt!1657317)))

(declare-fun b!4468168 () Bool)

(declare-fun res!1853643 () Bool)

(assert (=> b!4468168 (=> (not res!1853643) (not e!2782355))))

(assert (=> b!4468168 (= res!1853643 (= (getValueByKey!908 (toList!4051 lt!1657317) (_1!28556 lt!1657130)) (Some!10921 (_2!28556 lt!1657130))))))

(declare-fun b!4468169 () Bool)

(assert (=> b!4468169 (= e!2782355 (contains!12826 (toList!4051 lt!1657317) lt!1657130))))

(assert (= (and d!1362967 res!1853642) b!4468168))

(assert (= (and b!4468168 res!1853643) b!4468169))

(declare-fun m!5174191 () Bool)

(assert (=> d!1362967 m!5174191))

(declare-fun m!5174193 () Bool)

(assert (=> d!1362967 m!5174193))

(declare-fun m!5174195 () Bool)

(assert (=> d!1362967 m!5174195))

(declare-fun m!5174197 () Bool)

(assert (=> d!1362967 m!5174197))

(declare-fun m!5174199 () Bool)

(assert (=> b!4468168 m!5174199))

(declare-fun m!5174201 () Bool)

(assert (=> b!4468169 m!5174201))

(assert (=> b!4467935 d!1362967))

(declare-fun d!1362969 () Bool)

(declare-fun res!1853648 () Bool)

(declare-fun e!2782360 () Bool)

(assert (=> d!1362969 (=> res!1853648 e!2782360)))

(assert (=> d!1362969 (= res!1853648 (and ((_ is Cons!50278) (_2!28556 (h!56040 (toList!4051 lm!1477)))) (= (_1!28555 (h!56039 (_2!28556 (h!56040 (toList!4051 lm!1477))))) key!3287)))))

(assert (=> d!1362969 (= (containsKey!1462 (_2!28556 (h!56040 (toList!4051 lm!1477))) key!3287) e!2782360)))

(declare-fun b!4468174 () Bool)

(declare-fun e!2782361 () Bool)

(assert (=> b!4468174 (= e!2782360 e!2782361)))

(declare-fun res!1853649 () Bool)

(assert (=> b!4468174 (=> (not res!1853649) (not e!2782361))))

(assert (=> b!4468174 (= res!1853649 ((_ is Cons!50278) (_2!28556 (h!56040 (toList!4051 lm!1477)))))))

(declare-fun b!4468175 () Bool)

(assert (=> b!4468175 (= e!2782361 (containsKey!1462 (t!357352 (_2!28556 (h!56040 (toList!4051 lm!1477)))) key!3287))))

(assert (= (and d!1362969 (not res!1853648)) b!4468174))

(assert (= (and b!4468174 res!1853649) b!4468175))

(declare-fun m!5174203 () Bool)

(assert (=> b!4468175 m!5174203))

(assert (=> b!4467934 d!1362969))

(declare-fun b!4468176 () Bool)

(assert (=> b!4468176 false))

(declare-fun lt!1657324 () Unit!87567)

(declare-fun lt!1657322 () Unit!87567)

(assert (=> b!4468176 (= lt!1657324 lt!1657322)))

(assert (=> b!4468176 (containsKey!1466 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287)))

(assert (=> b!4468176 (= lt!1657322 (lemmaInGetKeysListThenContainsKey!372 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(declare-fun e!2782366 () Unit!87567)

(declare-fun Unit!87579 () Unit!87567)

(assert (=> b!4468176 (= e!2782366 Unit!87579)))

(declare-fun b!4468177 () Bool)

(declare-fun e!2782367 () List!50405)

(assert (=> b!4468177 (= e!2782367 (getKeysList!373 (toList!4052 (extractMap!1078 (toList!4051 lm!1477)))))))

(declare-fun b!4468178 () Bool)

(declare-fun e!2782362 () Unit!87567)

(declare-fun lt!1657325 () Unit!87567)

(assert (=> b!4468178 (= e!2782362 lt!1657325)))

(declare-fun lt!1657327 () Unit!87567)

(assert (=> b!4468178 (= lt!1657327 (lemmaContainsKeyImpliesGetValueByKeyDefined!813 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(assert (=> b!4468178 (isDefined!8210 (getValueByKey!909 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(declare-fun lt!1657323 () Unit!87567)

(assert (=> b!4468178 (= lt!1657323 lt!1657327)))

(assert (=> b!4468178 (= lt!1657325 (lemmaInListThenGetKeysListContains!369 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(declare-fun call!311086 () Bool)

(assert (=> b!4468178 call!311086))

(declare-fun b!4468179 () Bool)

(declare-fun e!2782365 () Bool)

(assert (=> b!4468179 (= e!2782365 (not (contains!12829 (keys!17358 (extractMap!1078 (toList!4051 lm!1477))) key!3287)))))

(declare-fun b!4468180 () Bool)

(assert (=> b!4468180 (= e!2782367 (keys!17358 (extractMap!1078 (toList!4051 lm!1477))))))

(declare-fun bm!311081 () Bool)

(assert (=> bm!311081 (= call!311086 (contains!12829 e!2782367 key!3287))))

(declare-fun c!760615 () Bool)

(declare-fun c!760616 () Bool)

(assert (=> bm!311081 (= c!760615 c!760616)))

(declare-fun b!4468182 () Bool)

(assert (=> b!4468182 (= e!2782362 e!2782366)))

(declare-fun c!760617 () Bool)

(assert (=> b!4468182 (= c!760617 call!311086)))

(declare-fun b!4468183 () Bool)

(declare-fun e!2782363 () Bool)

(declare-fun e!2782364 () Bool)

(assert (=> b!4468183 (= e!2782363 e!2782364)))

(declare-fun res!1853652 () Bool)

(assert (=> b!4468183 (=> (not res!1853652) (not e!2782364))))

(assert (=> b!4468183 (= res!1853652 (isDefined!8210 (getValueByKey!909 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287)))))

(declare-fun b!4468184 () Bool)

(declare-fun Unit!87580 () Unit!87567)

(assert (=> b!4468184 (= e!2782366 Unit!87580)))

(declare-fun d!1362971 () Bool)

(assert (=> d!1362971 e!2782363))

(declare-fun res!1853651 () Bool)

(assert (=> d!1362971 (=> res!1853651 e!2782363)))

(assert (=> d!1362971 (= res!1853651 e!2782365)))

(declare-fun res!1853650 () Bool)

(assert (=> d!1362971 (=> (not res!1853650) (not e!2782365))))

(declare-fun lt!1657321 () Bool)

(assert (=> d!1362971 (= res!1853650 (not lt!1657321))))

(declare-fun lt!1657320 () Bool)

(assert (=> d!1362971 (= lt!1657321 lt!1657320)))

(declare-fun lt!1657326 () Unit!87567)

(assert (=> d!1362971 (= lt!1657326 e!2782362)))

(assert (=> d!1362971 (= c!760616 lt!1657320)))

(assert (=> d!1362971 (= lt!1657320 (containsKey!1466 (toList!4052 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(assert (=> d!1362971 (= (contains!12825 (extractMap!1078 (toList!4051 lm!1477)) key!3287) lt!1657321)))

(declare-fun b!4468181 () Bool)

(assert (=> b!4468181 (= e!2782364 (contains!12829 (keys!17358 (extractMap!1078 (toList!4051 lm!1477))) key!3287))))

(assert (= (and d!1362971 c!760616) b!4468178))

(assert (= (and d!1362971 (not c!760616)) b!4468182))

(assert (= (and b!4468182 c!760617) b!4468176))

(assert (= (and b!4468182 (not c!760617)) b!4468184))

(assert (= (or b!4468178 b!4468182) bm!311081))

(assert (= (and bm!311081 c!760615) b!4468177))

(assert (= (and bm!311081 (not c!760615)) b!4468180))

(assert (= (and d!1362971 res!1853650) b!4468179))

(assert (= (and d!1362971 (not res!1853651)) b!4468183))

(assert (= (and b!4468183 res!1853652) b!4468181))

(assert (=> b!4468181 m!5173839))

(declare-fun m!5174205 () Bool)

(assert (=> b!4468181 m!5174205))

(assert (=> b!4468181 m!5174205))

(declare-fun m!5174207 () Bool)

(assert (=> b!4468181 m!5174207))

(assert (=> b!4468180 m!5173839))

(assert (=> b!4468180 m!5174205))

(assert (=> b!4468179 m!5173839))

(assert (=> b!4468179 m!5174205))

(assert (=> b!4468179 m!5174205))

(assert (=> b!4468179 m!5174207))

(declare-fun m!5174209 () Bool)

(assert (=> b!4468176 m!5174209))

(declare-fun m!5174211 () Bool)

(assert (=> b!4468176 m!5174211))

(declare-fun m!5174213 () Bool)

(assert (=> b!4468177 m!5174213))

(declare-fun m!5174215 () Bool)

(assert (=> b!4468183 m!5174215))

(assert (=> b!4468183 m!5174215))

(declare-fun m!5174217 () Bool)

(assert (=> b!4468183 m!5174217))

(declare-fun m!5174219 () Bool)

(assert (=> bm!311081 m!5174219))

(declare-fun m!5174221 () Bool)

(assert (=> b!4468178 m!5174221))

(assert (=> b!4468178 m!5174215))

(assert (=> b!4468178 m!5174215))

(assert (=> b!4468178 m!5174217))

(declare-fun m!5174223 () Bool)

(assert (=> b!4468178 m!5174223))

(assert (=> d!1362971 m!5174209))

(assert (=> b!4467944 d!1362971))

(declare-fun bs!794213 () Bool)

(declare-fun d!1362973 () Bool)

(assert (= bs!794213 (and d!1362973 d!1362859)))

(declare-fun lambda!163061 () Int)

(assert (=> bs!794213 (= lambda!163061 lambda!163028)))

(declare-fun bs!794214 () Bool)

(assert (= bs!794214 (and d!1362973 d!1362887)))

(assert (=> bs!794214 (= lambda!163061 lambda!163037)))

(declare-fun bs!794215 () Bool)

(assert (= bs!794215 (and d!1362973 d!1362941)))

(assert (=> bs!794215 (= lambda!163061 lambda!163053)))

(declare-fun bs!794216 () Bool)

(assert (= bs!794216 (and d!1362973 start!438808)))

(assert (=> bs!794216 (= lambda!163061 lambda!163025)))

(declare-fun bs!794217 () Bool)

(assert (= bs!794217 (and d!1362973 d!1362913)))

(assert (=> bs!794217 (= lambda!163061 lambda!163050)))

(declare-fun bs!794218 () Bool)

(assert (= bs!794218 (and d!1362973 d!1362957)))

(assert (=> bs!794218 (= lambda!163061 lambda!163059)))

(declare-fun bs!794219 () Bool)

(assert (= bs!794219 (and d!1362973 d!1362897)))

(assert (=> bs!794219 (= lambda!163061 lambda!163043)))

(declare-fun lt!1657328 () ListMap!3313)

(assert (=> d!1362973 (invariantList!925 (toList!4052 lt!1657328))))

(declare-fun e!2782368 () ListMap!3313)

(assert (=> d!1362973 (= lt!1657328 e!2782368)))

(declare-fun c!760618 () Bool)

(assert (=> d!1362973 (= c!760618 ((_ is Cons!50279) (toList!4051 lm!1477)))))

(assert (=> d!1362973 (forall!9984 (toList!4051 lm!1477) lambda!163061)))

(assert (=> d!1362973 (= (extractMap!1078 (toList!4051 lm!1477)) lt!1657328)))

(declare-fun b!4468185 () Bool)

(assert (=> b!4468185 (= e!2782368 (addToMapMapFromBucket!587 (_2!28556 (h!56040 (toList!4051 lm!1477))) (extractMap!1078 (t!357353 (toList!4051 lm!1477)))))))

(declare-fun b!4468186 () Bool)

(assert (=> b!4468186 (= e!2782368 (ListMap!3314 Nil!50278))))

(assert (= (and d!1362973 c!760618) b!4468185))

(assert (= (and d!1362973 (not c!760618)) b!4468186))

(declare-fun m!5174225 () Bool)

(assert (=> d!1362973 m!5174225))

(declare-fun m!5174227 () Bool)

(assert (=> d!1362973 m!5174227))

(declare-fun m!5174229 () Bool)

(assert (=> b!4468185 m!5174229))

(assert (=> b!4468185 m!5174229))

(declare-fun m!5174231 () Bool)

(assert (=> b!4468185 m!5174231))

(assert (=> b!4467944 d!1362973))

(declare-fun d!1362975 () Bool)

(declare-fun res!1853657 () Bool)

(declare-fun e!2782373 () Bool)

(assert (=> d!1362975 (=> res!1853657 e!2782373)))

(assert (=> d!1362975 (= res!1853657 ((_ is Nil!50279) (toList!4051 lm!1477)))))

(assert (=> d!1362975 (= (forall!9984 (toList!4051 lm!1477) lambda!163025) e!2782373)))

(declare-fun b!4468191 () Bool)

(declare-fun e!2782374 () Bool)

(assert (=> b!4468191 (= e!2782373 e!2782374)))

(declare-fun res!1853658 () Bool)

(assert (=> b!4468191 (=> (not res!1853658) (not e!2782374))))

(assert (=> b!4468191 (= res!1853658 (dynLambda!21010 lambda!163025 (h!56040 (toList!4051 lm!1477))))))

(declare-fun b!4468192 () Bool)

(assert (=> b!4468192 (= e!2782374 (forall!9984 (t!357353 (toList!4051 lm!1477)) lambda!163025))))

(assert (= (and d!1362975 (not res!1853657)) b!4468191))

(assert (= (and b!4468191 res!1853658) b!4468192))

(declare-fun b_lambda!148291 () Bool)

(assert (=> (not b_lambda!148291) (not b!4468191)))

(declare-fun m!5174233 () Bool)

(assert (=> b!4468191 m!5174233))

(assert (=> b!4468192 m!5173787))

(assert (=> start!438808 d!1362975))

(declare-fun d!1362977 () Bool)

(assert (=> d!1362977 (= (inv!65879 lm!1477) (isStrictlySorted!339 (toList!4051 lm!1477)))))

(declare-fun bs!794220 () Bool)

(assert (= bs!794220 d!1362977))

(assert (=> bs!794220 m!5173883))

(assert (=> start!438808 d!1362977))

(declare-fun d!1362979 () Bool)

(declare-fun res!1853659 () Bool)

(declare-fun e!2782375 () Bool)

(assert (=> d!1362979 (=> res!1853659 e!2782375)))

(assert (=> d!1362979 (= res!1853659 ((_ is Nil!50279) (t!357353 (toList!4051 lm!1477))))))

(assert (=> d!1362979 (= (forall!9984 (t!357353 (toList!4051 lm!1477)) lambda!163025) e!2782375)))

(declare-fun b!4468193 () Bool)

(declare-fun e!2782376 () Bool)

(assert (=> b!4468193 (= e!2782375 e!2782376)))

(declare-fun res!1853660 () Bool)

(assert (=> b!4468193 (=> (not res!1853660) (not e!2782376))))

(assert (=> b!4468193 (= res!1853660 (dynLambda!21010 lambda!163025 (h!56040 (t!357353 (toList!4051 lm!1477)))))))

(declare-fun b!4468194 () Bool)

(assert (=> b!4468194 (= e!2782376 (forall!9984 (t!357353 (t!357353 (toList!4051 lm!1477))) lambda!163025))))

(assert (= (and d!1362979 (not res!1853659)) b!4468193))

(assert (= (and b!4468193 res!1853660) b!4468194))

(declare-fun b_lambda!148293 () Bool)

(assert (=> (not b_lambda!148293) (not b!4468193)))

(declare-fun m!5174235 () Bool)

(assert (=> b!4468193 m!5174235))

(declare-fun m!5174237 () Bool)

(assert (=> b!4468194 m!5174237))

(assert (=> b!4467932 d!1362979))

(declare-fun d!1362981 () Bool)

(declare-fun res!1853669 () Bool)

(declare-fun e!2782384 () Bool)

(assert (=> d!1362981 (=> res!1853669 e!2782384)))

(declare-fun e!2782385 () Bool)

(assert (=> d!1362981 (= res!1853669 e!2782385)))

(declare-fun res!1853668 () Bool)

(assert (=> d!1362981 (=> (not res!1853668) (not e!2782385))))

(assert (=> d!1362981 (= res!1853668 ((_ is Cons!50279) lt!1657135))))

(assert (=> d!1362981 (= (containsKeyBiggerList!22 lt!1657135 key!3287) e!2782384)))

(declare-fun b!4468201 () Bool)

(assert (=> b!4468201 (= e!2782385 (containsKey!1462 (_2!28556 (h!56040 lt!1657135)) key!3287))))

(declare-fun b!4468202 () Bool)

(declare-fun e!2782383 () Bool)

(assert (=> b!4468202 (= e!2782384 e!2782383)))

(declare-fun res!1853667 () Bool)

(assert (=> b!4468202 (=> (not res!1853667) (not e!2782383))))

(assert (=> b!4468202 (= res!1853667 ((_ is Cons!50279) lt!1657135))))

(declare-fun b!4468203 () Bool)

(assert (=> b!4468203 (= e!2782383 (containsKeyBiggerList!22 (t!357353 lt!1657135) key!3287))))

(assert (= (and d!1362981 res!1853668) b!4468201))

(assert (= (and d!1362981 (not res!1853669)) b!4468202))

(assert (= (and b!4468202 res!1853667) b!4468203))

(declare-fun m!5174239 () Bool)

(assert (=> b!4468201 m!5174239))

(declare-fun m!5174241 () Bool)

(assert (=> b!4468203 m!5174241))

(assert (=> b!4467943 d!1362981))

(declare-fun bs!794221 () Bool)

(declare-fun d!1362983 () Bool)

(assert (= bs!794221 (and d!1362983 d!1362859)))

(declare-fun lambda!163064 () Int)

(assert (=> bs!794221 (not (= lambda!163064 lambda!163028))))

(declare-fun bs!794222 () Bool)

(assert (= bs!794222 (and d!1362983 d!1362887)))

(assert (=> bs!794222 (not (= lambda!163064 lambda!163037))))

(declare-fun bs!794223 () Bool)

(assert (= bs!794223 (and d!1362983 d!1362973)))

(assert (=> bs!794223 (not (= lambda!163064 lambda!163061))))

(declare-fun bs!794224 () Bool)

(assert (= bs!794224 (and d!1362983 d!1362941)))

(assert (=> bs!794224 (not (= lambda!163064 lambda!163053))))

(declare-fun bs!794225 () Bool)

(assert (= bs!794225 (and d!1362983 start!438808)))

(assert (=> bs!794225 (not (= lambda!163064 lambda!163025))))

(declare-fun bs!794226 () Bool)

(assert (= bs!794226 (and d!1362983 d!1362913)))

(assert (=> bs!794226 (not (= lambda!163064 lambda!163050))))

(declare-fun bs!794227 () Bool)

(assert (= bs!794227 (and d!1362983 d!1362957)))

(assert (=> bs!794227 (not (= lambda!163064 lambda!163059))))

(declare-fun bs!794228 () Bool)

(assert (= bs!794228 (and d!1362983 d!1362897)))

(assert (=> bs!794228 (not (= lambda!163064 lambda!163043))))

(assert (=> d!1362983 true))

(assert (=> d!1362983 (= (allKeysSameHashInMap!1129 lm!1477 hashF!1107) (forall!9984 (toList!4051 lm!1477) lambda!163064))))

(declare-fun bs!794229 () Bool)

(assert (= bs!794229 d!1362983))

(declare-fun m!5174243 () Bool)

(assert (=> bs!794229 m!5174243))

(assert (=> b!4467931 d!1362983))

(declare-fun d!1362985 () Bool)

(assert (=> d!1362985 true))

(assert (=> d!1362985 true))

(declare-fun lambda!163067 () Int)

(declare-fun forall!9986 (List!50402 Int) Bool)

(assert (=> d!1362985 (= (allKeysSameHash!876 newBucket!178 hash!344 hashF!1107) (forall!9986 newBucket!178 lambda!163067))))

(declare-fun bs!794230 () Bool)

(assert (= bs!794230 d!1362985))

(declare-fun m!5174245 () Bool)

(assert (=> bs!794230 m!5174245))

(assert (=> b!4467930 d!1362985))

(declare-fun e!2782388 () Bool)

(declare-fun b!4468214 () Bool)

(declare-fun tp!1336207 () Bool)

(assert (=> b!4468214 (= e!2782388 (and tp_is_empty!27365 tp_is_empty!27367 tp!1336207))))

(assert (=> b!4467945 (= tp!1336194 e!2782388)))

(assert (= (and b!4467945 ((_ is Cons!50278) (t!357352 newBucket!178))) b!4468214))

(declare-fun b!4468219 () Bool)

(declare-fun e!2782391 () Bool)

(declare-fun tp!1336212 () Bool)

(declare-fun tp!1336213 () Bool)

(assert (=> b!4468219 (= e!2782391 (and tp!1336212 tp!1336213))))

(assert (=> b!4467941 (= tp!1336195 e!2782391)))

(assert (= (and b!4467941 ((_ is Cons!50279) (toList!4051 lm!1477))) b!4468219))

(declare-fun b_lambda!148295 () Bool)

(assert (= b_lambda!148291 (or start!438808 b_lambda!148295)))

(declare-fun bs!794231 () Bool)

(declare-fun d!1362987 () Bool)

(assert (= bs!794231 (and d!1362987 start!438808)))

(assert (=> bs!794231 (= (dynLambda!21010 lambda!163025 (h!56040 (toList!4051 lm!1477))) (noDuplicateKeys!1022 (_2!28556 (h!56040 (toList!4051 lm!1477)))))))

(assert (=> bs!794231 m!5174153))

(assert (=> b!4468191 d!1362987))

(declare-fun b_lambda!148297 () Bool)

(assert (= b_lambda!148277 (or start!438808 b_lambda!148297)))

(declare-fun bs!794232 () Bool)

(declare-fun d!1362989 () Bool)

(assert (= bs!794232 (and d!1362989 start!438808)))

(assert (=> bs!794232 (= (dynLambda!21010 lambda!163025 lt!1657139) (noDuplicateKeys!1022 (_2!28556 lt!1657139)))))

(declare-fun m!5174247 () Bool)

(assert (=> bs!794232 m!5174247))

(assert (=> d!1362861 d!1362989))

(declare-fun b_lambda!148299 () Bool)

(assert (= b_lambda!148293 (or start!438808 b_lambda!148299)))

(declare-fun bs!794233 () Bool)

(declare-fun d!1362991 () Bool)

(assert (= bs!794233 (and d!1362991 start!438808)))

(assert (=> bs!794233 (= (dynLambda!21010 lambda!163025 (h!56040 (t!357353 (toList!4051 lm!1477)))) (noDuplicateKeys!1022 (_2!28556 (h!56040 (t!357353 (toList!4051 lm!1477))))))))

(declare-fun m!5174249 () Bool)

(assert (=> bs!794233 m!5174249))

(assert (=> b!4468193 d!1362991))

(check-sat (not b_lambda!148299) (not bs!794231) (not b!4467984) (not d!1362871) (not b!4468214) (not b!4468176) (not b!4467961) (not b!4468163) (not d!1362897) (not b!4468203) (not b!4468164) (not b!4468175) (not d!1362865) (not b!4467954) (not b!4468166) (not d!1362921) (not b!4468111) (not b!4467998) (not d!1362887) (not b!4468162) (not d!1362959) (not b!4467974) (not b!4468110) (not d!1362873) (not d!1362913) (not d!1362875) (not d!1362985) (not b!4468169) (not b_lambda!148297) (not b!4467948) (not d!1362857) (not b!4468160) (not b!4468201) (not b!4467963) (not b!4468161) (not b!4467978) (not b!4468180) (not d!1362967) tp_is_empty!27367 (not d!1362983) tp_is_empty!27365 (not bs!794232) (not b!4468192) (not b!4468179) (not d!1362971) (not d!1362867) (not d!1362859) (not b!4467983) (not b!4468178) (not b!4468183) (not d!1362881) (not b!4468194) (not b_lambda!148295) (not d!1362863) (not d!1362977) (not d!1362943) (not d!1362957) (not b!4468159) (not b!4468181) (not d!1362973) (not d!1362861) (not b!4468185) (not b!4468219) (not b!4468079) (not bm!311081) (not d!1362941) (not bm!311080) (not bs!794233) (not b!4467999) (not b!4468177) (not b!4468168) (not d!1362939) (not b!4468127))
(check-sat)
