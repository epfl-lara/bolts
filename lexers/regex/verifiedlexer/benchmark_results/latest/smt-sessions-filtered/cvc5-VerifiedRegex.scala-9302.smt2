; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493400 () Bool)

(assert start!493400)

(declare-fun bs!1154672 () Bool)

(declare-fun b!4792094 () Bool)

(assert (= bs!1154672 (and b!4792094 start!493400)))

(declare-fun lambda!230481 () Int)

(declare-fun lambda!230480 () Int)

(assert (=> bs!1154672 (not (= lambda!230481 lambda!230480))))

(assert (=> b!4792094 true))

(assert (=> b!4792094 true))

(assert (=> b!4792094 true))

(declare-fun b!4792091 () Bool)

(declare-fun res!2036773 () Bool)

(declare-fun e!2992067 () Bool)

(assert (=> b!4792091 (=> res!2036773 e!2992067)))

(declare-datatypes ((K!15797 0))(
  ( (K!15798 (val!20943 Int)) )
))
(declare-datatypes ((V!16043 0))(
  ( (V!16044 (val!20944 Int)) )
))
(declare-datatypes ((tuple2!56860 0))(
  ( (tuple2!56861 (_1!31724 K!15797) (_2!31724 V!16043)) )
))
(declare-datatypes ((List!54342 0))(
  ( (Nil!54218) (Cons!54218 (h!60642 tuple2!56860) (t!361792 List!54342)) )
))
(declare-datatypes ((tuple2!56862 0))(
  ( (tuple2!56863 (_1!31725 (_ BitVec 64)) (_2!31725 List!54342)) )
))
(declare-datatypes ((List!54343 0))(
  ( (Nil!54219) (Cons!54219 (h!60643 tuple2!56862) (t!361793 List!54343)) )
))
(declare-datatypes ((ListLongMap!5347 0))(
  ( (ListLongMap!5348 (toList!6925 List!54343)) )
))
(declare-fun lm!2473 () ListLongMap!5347)

(declare-fun key!5896 () K!15797)

(declare-fun containsKey!3943 (List!54342 K!15797) Bool)

(assert (=> b!4792091 (= res!2036773 (not (containsKey!3943 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896)))))

(declare-fun b!4792092 () Bool)

(declare-fun e!2992070 () Bool)

(declare-fun tp!1358011 () Bool)

(assert (=> b!4792092 (= e!2992070 tp!1358011)))

(declare-fun forall!12248 (List!54343 Int) Bool)

(declare-fun tail!9264 (ListLongMap!5347) ListLongMap!5347)

(assert (=> b!4792094 (= e!2992067 (forall!12248 (toList!6925 (tail!9264 lm!2473)) lambda!230480))))

(declare-datatypes ((Unit!139927 0))(
  ( (Unit!139928) )
))
(declare-fun lt!1951027 () Unit!139927)

(declare-fun lambda!230482 () Int)

(declare-fun value!3111 () V!16043)

(declare-fun forallContained!4154 (List!54342 Int tuple2!56860) Unit!139927)

(assert (=> b!4792094 (= lt!1951027 (forallContained!4154 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482 (tuple2!56861 key!5896 value!3111)))))

(declare-fun lt!1951029 () Unit!139927)

(declare-fun forallContained!4155 (List!54343 Int tuple2!56862) Unit!139927)

(assert (=> b!4792094 (= lt!1951029 (forallContained!4155 (toList!6925 lm!2473) lambda!230481 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792095 () Bool)

(declare-fun e!2992069 () Bool)

(assert (=> b!4792095 (= e!2992069 (not e!2992067))))

(declare-fun res!2036775 () Bool)

(assert (=> b!4792095 (=> res!2036775 e!2992067)))

(declare-fun getValue!111 (List!54343 K!15797) V!16043)

(assert (=> b!4792095 (= res!2036775 (not (= (getValue!111 (toList!6925 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!565 (List!54343 K!15797) Bool)

(assert (=> b!4792095 (containsKeyBiggerList!565 (toList!6925 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6923 0))(
  ( (HashableExt!6922 (__x!32946 Int)) )
))
(declare-fun hashF!1559 () Hashable!6923)

(declare-fun lt!1951030 () Unit!139927)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!305 (ListLongMap!5347 K!15797 Hashable!6923) Unit!139927)

(assert (=> b!4792095 (= lt!1951030 (lemmaInLongMapThenContainsKeyBiggerList!305 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2992068 () Bool)

(assert (=> b!4792095 e!2992068))

(declare-fun res!2036778 () Bool)

(assert (=> b!4792095 (=> (not res!2036778) (not e!2992068))))

(declare-fun lt!1951028 () (_ BitVec 64))

(declare-fun contains!17829 (ListLongMap!5347 (_ BitVec 64)) Bool)

(assert (=> b!4792095 (= res!2036778 (contains!17829 lm!2473 lt!1951028))))

(declare-fun hash!4956 (Hashable!6923 K!15797) (_ BitVec 64))

(assert (=> b!4792095 (= lt!1951028 (hash!4956 hashF!1559 key!5896))))

(declare-fun lt!1951026 () Unit!139927)

(declare-fun lemmaInGenericMapThenInLongMap!327 (ListLongMap!5347 K!15797 Hashable!6923) Unit!139927)

(assert (=> b!4792095 (= lt!1951026 (lemmaInGenericMapThenInLongMap!327 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4792096 () Bool)

(declare-datatypes ((Option!13092 0))(
  ( (None!13091) (Some!13091 (v!48370 tuple2!56860)) )
))
(declare-fun isDefined!10234 (Option!13092) Bool)

(declare-fun getPair!895 (List!54342 K!15797) Option!13092)

(declare-fun apply!12992 (ListLongMap!5347 (_ BitVec 64)) List!54342)

(assert (=> b!4792096 (= e!2992068 (isDefined!10234 (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896)))))

(declare-fun b!4792097 () Bool)

(declare-fun res!2036774 () Bool)

(assert (=> b!4792097 (=> (not res!2036774) (not e!2992069))))

(declare-fun allKeysSameHashInMap!2328 (ListLongMap!5347 Hashable!6923) Bool)

(assert (=> b!4792097 (= res!2036774 (allKeysSameHashInMap!2328 lm!2473 hashF!1559))))

(declare-fun b!4792098 () Bool)

(declare-fun res!2036779 () Bool)

(assert (=> b!4792098 (=> (not res!2036779) (not e!2992069))))

(declare-datatypes ((ListMap!6397 0))(
  ( (ListMap!6398 (toList!6926 List!54342)) )
))
(declare-fun contains!17830 (ListMap!6397 K!15797) Bool)

(declare-fun extractMap!2450 (List!54343) ListMap!6397)

(assert (=> b!4792098 (= res!2036779 (contains!17830 (extractMap!2450 (toList!6925 lm!2473)) key!5896))))

(declare-fun res!2036777 () Bool)

(assert (=> start!493400 (=> (not res!2036777) (not e!2992069))))

(assert (=> start!493400 (= res!2036777 (forall!12248 (toList!6925 lm!2473) lambda!230480))))

(assert (=> start!493400 e!2992069))

(declare-fun inv!69824 (ListLongMap!5347) Bool)

(assert (=> start!493400 (and (inv!69824 lm!2473) e!2992070)))

(assert (=> start!493400 true))

(declare-fun tp_is_empty!33553 () Bool)

(assert (=> start!493400 tp_is_empty!33553))

(declare-fun tp_is_empty!33555 () Bool)

(assert (=> start!493400 tp_is_empty!33555))

(declare-fun b!4792093 () Bool)

(declare-fun res!2036776 () Bool)

(assert (=> b!4792093 (=> res!2036776 e!2992067)))

(assert (=> b!4792093 (= res!2036776 (not (is-Cons!54219 (toList!6925 lm!2473))))))

(assert (= (and start!493400 res!2036777) b!4792097))

(assert (= (and b!4792097 res!2036774) b!4792098))

(assert (= (and b!4792098 res!2036779) b!4792095))

(assert (= (and b!4792095 res!2036778) b!4792096))

(assert (= (and b!4792095 (not res!2036775)) b!4792093))

(assert (= (and b!4792093 (not res!2036776)) b!4792091))

(assert (= (and b!4792091 (not res!2036773)) b!4792094))

(assert (= start!493400 b!4792092))

(declare-fun m!5772762 () Bool)

(assert (=> b!4792091 m!5772762))

(declare-fun m!5772764 () Bool)

(assert (=> b!4792095 m!5772764))

(declare-fun m!5772766 () Bool)

(assert (=> b!4792095 m!5772766))

(declare-fun m!5772768 () Bool)

(assert (=> b!4792095 m!5772768))

(declare-fun m!5772770 () Bool)

(assert (=> b!4792095 m!5772770))

(declare-fun m!5772772 () Bool)

(assert (=> b!4792095 m!5772772))

(declare-fun m!5772774 () Bool)

(assert (=> b!4792095 m!5772774))

(declare-fun m!5772776 () Bool)

(assert (=> b!4792097 m!5772776))

(declare-fun m!5772778 () Bool)

(assert (=> b!4792094 m!5772778))

(declare-fun m!5772780 () Bool)

(assert (=> b!4792094 m!5772780))

(declare-fun m!5772782 () Bool)

(assert (=> b!4792094 m!5772782))

(declare-fun m!5772784 () Bool)

(assert (=> b!4792094 m!5772784))

(declare-fun m!5772786 () Bool)

(assert (=> start!493400 m!5772786))

(declare-fun m!5772788 () Bool)

(assert (=> start!493400 m!5772788))

(declare-fun m!5772790 () Bool)

(assert (=> b!4792096 m!5772790))

(assert (=> b!4792096 m!5772790))

(declare-fun m!5772792 () Bool)

(assert (=> b!4792096 m!5772792))

(assert (=> b!4792096 m!5772792))

(declare-fun m!5772794 () Bool)

(assert (=> b!4792096 m!5772794))

(declare-fun m!5772796 () Bool)

(assert (=> b!4792098 m!5772796))

(assert (=> b!4792098 m!5772796))

(declare-fun m!5772798 () Bool)

(assert (=> b!4792098 m!5772798))

(push 1)

(assert (not start!493400))

(assert (not b!4792091))

(assert (not b!4792097))

(assert tp_is_empty!33553)

(assert (not b!4792096))

(assert (not b!4792095))

(assert tp_is_empty!33555)

(assert (not b!4792098))

(assert (not b!4792094))

(assert (not b!4792092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1533017 () Bool)

(declare-fun res!2036805 () Bool)

(declare-fun e!2992087 () Bool)

(assert (=> d!1533017 (=> res!2036805 e!2992087)))

(assert (=> d!1533017 (= res!2036805 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533017 (= (forall!12248 (toList!6925 lm!2473) lambda!230480) e!2992087)))

(declare-fun b!4792139 () Bool)

(declare-fun e!2992088 () Bool)

(assert (=> b!4792139 (= e!2992087 e!2992088)))

(declare-fun res!2036806 () Bool)

(assert (=> b!4792139 (=> (not res!2036806) (not e!2992088))))

(declare-fun dynLambda!22053 (Int tuple2!56862) Bool)

(assert (=> b!4792139 (= res!2036806 (dynLambda!22053 lambda!230480 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792140 () Bool)

(assert (=> b!4792140 (= e!2992088 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230480))))

(assert (= (and d!1533017 (not res!2036805)) b!4792139))

(assert (= (and b!4792139 res!2036806) b!4792140))

(declare-fun b_lambda!186579 () Bool)

(assert (=> (not b_lambda!186579) (not b!4792139)))

(declare-fun m!5772838 () Bool)

(assert (=> b!4792139 m!5772838))

(declare-fun m!5772840 () Bool)

(assert (=> b!4792140 m!5772840))

(assert (=> start!493400 d!1533017))

(declare-fun d!1533019 () Bool)

(declare-fun isStrictlySorted!875 (List!54343) Bool)

(assert (=> d!1533019 (= (inv!69824 lm!2473) (isStrictlySorted!875 (toList!6925 lm!2473)))))

(declare-fun bs!1154674 () Bool)

(assert (= bs!1154674 d!1533019))

(declare-fun m!5772842 () Bool)

(assert (=> bs!1154674 m!5772842))

(assert (=> start!493400 d!1533019))

(declare-fun d!1533021 () Bool)

(declare-fun res!2036807 () Bool)

(declare-fun e!2992089 () Bool)

(assert (=> d!1533021 (=> res!2036807 e!2992089)))

(assert (=> d!1533021 (= res!2036807 (is-Nil!54219 (toList!6925 (tail!9264 lm!2473))))))

(assert (=> d!1533021 (= (forall!12248 (toList!6925 (tail!9264 lm!2473)) lambda!230480) e!2992089)))

(declare-fun b!4792141 () Bool)

(declare-fun e!2992090 () Bool)

(assert (=> b!4792141 (= e!2992089 e!2992090)))

(declare-fun res!2036808 () Bool)

(assert (=> b!4792141 (=> (not res!2036808) (not e!2992090))))

(assert (=> b!4792141 (= res!2036808 (dynLambda!22053 lambda!230480 (h!60643 (toList!6925 (tail!9264 lm!2473)))))))

(declare-fun b!4792142 () Bool)

(assert (=> b!4792142 (= e!2992090 (forall!12248 (t!361793 (toList!6925 (tail!9264 lm!2473))) lambda!230480))))

(assert (= (and d!1533021 (not res!2036807)) b!4792141))

(assert (= (and b!4792141 res!2036808) b!4792142))

(declare-fun b_lambda!186581 () Bool)

(assert (=> (not b_lambda!186581) (not b!4792141)))

(declare-fun m!5772844 () Bool)

(assert (=> b!4792141 m!5772844))

(declare-fun m!5772846 () Bool)

(assert (=> b!4792142 m!5772846))

(assert (=> b!4792094 d!1533021))

(declare-fun d!1533023 () Bool)

(declare-fun tail!9266 (List!54343) List!54343)

(assert (=> d!1533023 (= (tail!9264 lm!2473) (ListLongMap!5348 (tail!9266 (toList!6925 lm!2473))))))

(declare-fun bs!1154675 () Bool)

(assert (= bs!1154675 d!1533023))

(declare-fun m!5772848 () Bool)

(assert (=> bs!1154675 m!5772848))

(assert (=> b!4792094 d!1533023))

(declare-fun d!1533025 () Bool)

(declare-fun dynLambda!22054 (Int tuple2!56860) Bool)

(assert (=> d!1533025 (dynLambda!22054 lambda!230482 (tuple2!56861 key!5896 value!3111))))

(declare-fun lt!1951048 () Unit!139927)

(declare-fun choose!34498 (List!54342 Int tuple2!56860) Unit!139927)

(assert (=> d!1533025 (= lt!1951048 (choose!34498 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482 (tuple2!56861 key!5896 value!3111)))))

(declare-fun e!2992093 () Bool)

(assert (=> d!1533025 e!2992093))

(declare-fun res!2036811 () Bool)

(assert (=> d!1533025 (=> (not res!2036811) (not e!2992093))))

(declare-fun forall!12250 (List!54342 Int) Bool)

(assert (=> d!1533025 (= res!2036811 (forall!12250 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482))))

(assert (=> d!1533025 (= (forallContained!4154 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482 (tuple2!56861 key!5896 value!3111)) lt!1951048)))

(declare-fun b!4792145 () Bool)

(declare-fun contains!17833 (List!54342 tuple2!56860) Bool)

(assert (=> b!4792145 (= e!2992093 (contains!17833 (_2!31725 (h!60643 (toList!6925 lm!2473))) (tuple2!56861 key!5896 value!3111)))))

(assert (= (and d!1533025 res!2036811) b!4792145))

(declare-fun b_lambda!186583 () Bool)

(assert (=> (not b_lambda!186583) (not d!1533025)))

(declare-fun m!5772850 () Bool)

(assert (=> d!1533025 m!5772850))

(declare-fun m!5772852 () Bool)

(assert (=> d!1533025 m!5772852))

(declare-fun m!5772854 () Bool)

(assert (=> d!1533025 m!5772854))

(declare-fun m!5772856 () Bool)

(assert (=> b!4792145 m!5772856))

(assert (=> b!4792094 d!1533025))

(declare-fun d!1533027 () Bool)

(assert (=> d!1533027 (dynLambda!22053 lambda!230481 (h!60643 (toList!6925 lm!2473)))))

(declare-fun lt!1951051 () Unit!139927)

(declare-fun choose!34499 (List!54343 Int tuple2!56862) Unit!139927)

(assert (=> d!1533027 (= lt!1951051 (choose!34499 (toList!6925 lm!2473) lambda!230481 (h!60643 (toList!6925 lm!2473))))))

(declare-fun e!2992100 () Bool)

(assert (=> d!1533027 e!2992100))

(declare-fun res!2036818 () Bool)

(assert (=> d!1533027 (=> (not res!2036818) (not e!2992100))))

(assert (=> d!1533027 (= res!2036818 (forall!12248 (toList!6925 lm!2473) lambda!230481))))

(assert (=> d!1533027 (= (forallContained!4155 (toList!6925 lm!2473) lambda!230481 (h!60643 (toList!6925 lm!2473))) lt!1951051)))

(declare-fun b!4792152 () Bool)

(declare-fun contains!17834 (List!54343 tuple2!56862) Bool)

(assert (=> b!4792152 (= e!2992100 (contains!17834 (toList!6925 lm!2473) (h!60643 (toList!6925 lm!2473))))))

(assert (= (and d!1533027 res!2036818) b!4792152))

(declare-fun b_lambda!186585 () Bool)

(assert (=> (not b_lambda!186585) (not d!1533027)))

(declare-fun m!5772858 () Bool)

(assert (=> d!1533027 m!5772858))

(declare-fun m!5772860 () Bool)

(assert (=> d!1533027 m!5772860))

(declare-fun m!5772862 () Bool)

(assert (=> d!1533027 m!5772862))

(declare-fun m!5772864 () Bool)

(assert (=> b!4792152 m!5772864))

(assert (=> b!4792094 d!1533027))

(declare-fun b!4792203 () Bool)

(declare-datatypes ((List!54346 0))(
  ( (Nil!54222) (Cons!54222 (h!60646 K!15797) (t!361796 List!54346)) )
))
(declare-fun e!2992140 () List!54346)

(declare-fun keys!19796 (ListMap!6397) List!54346)

(assert (=> b!4792203 (= e!2992140 (keys!19796 (extractMap!2450 (toList!6925 lm!2473))))))

(declare-fun b!4792204 () Bool)

(assert (=> b!4792204 false))

(declare-fun lt!1951077 () Unit!139927)

(declare-fun lt!1951076 () Unit!139927)

(assert (=> b!4792204 (= lt!1951077 lt!1951076)))

(declare-fun containsKey!3945 (List!54342 K!15797) Bool)

(assert (=> b!4792204 (containsKey!3945 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1073 (List!54342 K!15797) Unit!139927)

(assert (=> b!4792204 (= lt!1951076 (lemmaInGetKeysListThenContainsKey!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(declare-fun e!2992138 () Unit!139927)

(declare-fun Unit!139931 () Unit!139927)

(assert (=> b!4792204 (= e!2992138 Unit!139931)))

(declare-fun b!4792205 () Bool)

(declare-fun getKeysList!1073 (List!54342) List!54346)

(assert (=> b!4792205 (= e!2992140 (getKeysList!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))

(declare-fun b!4792206 () Bool)

(declare-fun e!2992141 () Bool)

(declare-fun contains!17835 (List!54346 K!15797) Bool)

(assert (=> b!4792206 (= e!2992141 (not (contains!17835 (keys!19796 (extractMap!2450 (toList!6925 lm!2473))) key!5896)))))

(declare-fun b!4792207 () Bool)

(declare-fun e!2992137 () Bool)

(assert (=> b!4792207 (= e!2992137 (contains!17835 (keys!19796 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(declare-fun b!4792208 () Bool)

(declare-fun e!2992136 () Unit!139927)

(assert (=> b!4792208 (= e!2992136 e!2992138)))

(declare-fun c!816759 () Bool)

(declare-fun call!335019 () Bool)

(assert (=> b!4792208 (= c!816759 call!335019)))

(declare-fun d!1533031 () Bool)

(declare-fun e!2992139 () Bool)

(assert (=> d!1533031 e!2992139))

(declare-fun res!2036845 () Bool)

(assert (=> d!1533031 (=> res!2036845 e!2992139)))

(assert (=> d!1533031 (= res!2036845 e!2992141)))

(declare-fun res!2036847 () Bool)

(assert (=> d!1533031 (=> (not res!2036847) (not e!2992141))))

(declare-fun lt!1951071 () Bool)

(assert (=> d!1533031 (= res!2036847 (not lt!1951071))))

(declare-fun lt!1951072 () Bool)

(assert (=> d!1533031 (= lt!1951071 lt!1951072)))

(declare-fun lt!1951074 () Unit!139927)

(assert (=> d!1533031 (= lt!1951074 e!2992136)))

(declare-fun c!816760 () Bool)

(assert (=> d!1533031 (= c!816760 lt!1951072)))

(assert (=> d!1533031 (= lt!1951072 (containsKey!3945 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(assert (=> d!1533031 (= (contains!17830 (extractMap!2450 (toList!6925 lm!2473)) key!5896) lt!1951071)))

(declare-fun bm!335014 () Bool)

(assert (=> bm!335014 (= call!335019 (contains!17835 e!2992140 key!5896))))

(declare-fun c!816758 () Bool)

(assert (=> bm!335014 (= c!816758 c!816760)))

(declare-fun b!4792209 () Bool)

(declare-fun lt!1951075 () Unit!139927)

(assert (=> b!4792209 (= e!2992136 lt!1951075)))

(declare-fun lt!1951073 () Unit!139927)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2137 (List!54342 K!15797) Unit!139927)

(assert (=> b!4792209 (= lt!1951073 (lemmaContainsKeyImpliesGetValueByKeyDefined!2137 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(declare-datatypes ((Option!13094 0))(
  ( (None!13093) (Some!13093 (v!48372 V!16043)) )
))
(declare-fun isDefined!10236 (Option!13094) Bool)

(declare-fun getValueByKey!2345 (List!54342 K!15797) Option!13094)

(assert (=> b!4792209 (isDefined!10236 (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(declare-fun lt!1951078 () Unit!139927)

(assert (=> b!4792209 (= lt!1951078 lt!1951073)))

(declare-fun lemmaInListThenGetKeysListContains!1068 (List!54342 K!15797) Unit!139927)

(assert (=> b!4792209 (= lt!1951075 (lemmaInListThenGetKeysListContains!1068 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(assert (=> b!4792209 call!335019))

(declare-fun b!4792210 () Bool)

(declare-fun Unit!139932 () Unit!139927)

(assert (=> b!4792210 (= e!2992138 Unit!139932)))

(declare-fun b!4792211 () Bool)

(assert (=> b!4792211 (= e!2992139 e!2992137)))

(declare-fun res!2036846 () Bool)

(assert (=> b!4792211 (=> (not res!2036846) (not e!2992137))))

(assert (=> b!4792211 (= res!2036846 (isDefined!10236 (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896)))))

(assert (= (and d!1533031 c!816760) b!4792209))

(assert (= (and d!1533031 (not c!816760)) b!4792208))

(assert (= (and b!4792208 c!816759) b!4792204))

(assert (= (and b!4792208 (not c!816759)) b!4792210))

(assert (= (or b!4792209 b!4792208) bm!335014))

(assert (= (and bm!335014 c!816758) b!4792205))

(assert (= (and bm!335014 (not c!816758)) b!4792203))

(assert (= (and d!1533031 res!2036847) b!4792206))

(assert (= (and d!1533031 (not res!2036845)) b!4792211))

(assert (= (and b!4792211 res!2036846) b!4792207))

(declare-fun m!5772896 () Bool)

(assert (=> b!4792211 m!5772896))

(assert (=> b!4792211 m!5772896))

(declare-fun m!5772898 () Bool)

(assert (=> b!4792211 m!5772898))

(declare-fun m!5772900 () Bool)

(assert (=> b!4792209 m!5772900))

(assert (=> b!4792209 m!5772896))

(assert (=> b!4792209 m!5772896))

(assert (=> b!4792209 m!5772898))

(declare-fun m!5772902 () Bool)

(assert (=> b!4792209 m!5772902))

(assert (=> b!4792207 m!5772796))

(declare-fun m!5772904 () Bool)

(assert (=> b!4792207 m!5772904))

(assert (=> b!4792207 m!5772904))

(declare-fun m!5772906 () Bool)

(assert (=> b!4792207 m!5772906))

(declare-fun m!5772908 () Bool)

(assert (=> b!4792205 m!5772908))

(declare-fun m!5772910 () Bool)

(assert (=> bm!335014 m!5772910))

(declare-fun m!5772912 () Bool)

(assert (=> d!1533031 m!5772912))

(assert (=> b!4792206 m!5772796))

(assert (=> b!4792206 m!5772904))

(assert (=> b!4792206 m!5772904))

(assert (=> b!4792206 m!5772906))

(assert (=> b!4792204 m!5772912))

(declare-fun m!5772914 () Bool)

(assert (=> b!4792204 m!5772914))

(assert (=> b!4792203 m!5772796))

(assert (=> b!4792203 m!5772904))

(assert (=> b!4792098 d!1533031))

(declare-fun bs!1154682 () Bool)

(declare-fun d!1533047 () Bool)

(assert (= bs!1154682 (and d!1533047 start!493400)))

(declare-fun lambda!230499 () Int)

(assert (=> bs!1154682 (= lambda!230499 lambda!230480)))

(declare-fun bs!1154683 () Bool)

(assert (= bs!1154683 (and d!1533047 b!4792094)))

(assert (=> bs!1154683 (not (= lambda!230499 lambda!230481))))

(declare-fun lt!1951097 () ListMap!6397)

(declare-fun invariantList!1727 (List!54342) Bool)

(assert (=> d!1533047 (invariantList!1727 (toList!6926 lt!1951097))))

(declare-fun e!2992148 () ListMap!6397)

(assert (=> d!1533047 (= lt!1951097 e!2992148)))

(declare-fun c!816767 () Bool)

(assert (=> d!1533047 (= c!816767 (is-Cons!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533047 (forall!12248 (toList!6925 lm!2473) lambda!230499)))

(assert (=> d!1533047 (= (extractMap!2450 (toList!6925 lm!2473)) lt!1951097)))

(declare-fun b!4792224 () Bool)

(declare-fun addToMapMapFromBucket!1704 (List!54342 ListMap!6397) ListMap!6397)

(assert (=> b!4792224 (= e!2992148 (addToMapMapFromBucket!1704 (_2!31725 (h!60643 (toList!6925 lm!2473))) (extractMap!2450 (t!361793 (toList!6925 lm!2473)))))))

(declare-fun b!4792225 () Bool)

(assert (=> b!4792225 (= e!2992148 (ListMap!6398 Nil!54218))))

(assert (= (and d!1533047 c!816767) b!4792224))

(assert (= (and d!1533047 (not c!816767)) b!4792225))

(declare-fun m!5772916 () Bool)

(assert (=> d!1533047 m!5772916))

(declare-fun m!5772918 () Bool)

(assert (=> d!1533047 m!5772918))

(declare-fun m!5772920 () Bool)

(assert (=> b!4792224 m!5772920))

(assert (=> b!4792224 m!5772920))

(declare-fun m!5772922 () Bool)

(assert (=> b!4792224 m!5772922))

(assert (=> b!4792098 d!1533047))

(declare-fun d!1533049 () Bool)

(declare-fun isEmpty!29443 (Option!13092) Bool)

(assert (=> d!1533049 (= (isDefined!10234 (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896)) (not (isEmpty!29443 (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896))))))

(declare-fun bs!1154684 () Bool)

(assert (= bs!1154684 d!1533049))

(assert (=> bs!1154684 m!5772792))

(declare-fun m!5772924 () Bool)

(assert (=> bs!1154684 m!5772924))

(assert (=> b!4792096 d!1533049))

(declare-fun b!4792261 () Bool)

(declare-fun e!2992174 () Option!13092)

(assert (=> b!4792261 (= e!2992174 (Some!13091 (h!60642 (apply!12992 lm!2473 lt!1951028))))))

(declare-fun b!4792262 () Bool)

(declare-fun res!2036868 () Bool)

(declare-fun e!2992176 () Bool)

(assert (=> b!4792262 (=> (not res!2036868) (not e!2992176))))

(declare-fun lt!1951108 () Option!13092)

(declare-fun get!18477 (Option!13092) tuple2!56860)

(assert (=> b!4792262 (= res!2036868 (= (_1!31724 (get!18477 lt!1951108)) key!5896))))

(declare-fun b!4792263 () Bool)

(assert (=> b!4792263 (= e!2992176 (contains!17833 (apply!12992 lm!2473 lt!1951028) (get!18477 lt!1951108)))))

(declare-fun b!4792264 () Bool)

(declare-fun e!2992177 () Option!13092)

(assert (=> b!4792264 (= e!2992177 (getPair!895 (t!361792 (apply!12992 lm!2473 lt!1951028)) key!5896))))

(declare-fun e!2992175 () Bool)

(declare-fun b!4792265 () Bool)

(assert (=> b!4792265 (= e!2992175 (not (containsKey!3943 (apply!12992 lm!2473 lt!1951028) key!5896)))))

(declare-fun b!4792266 () Bool)

(declare-fun e!2992173 () Bool)

(assert (=> b!4792266 (= e!2992173 e!2992176)))

(declare-fun res!2036865 () Bool)

(assert (=> b!4792266 (=> (not res!2036865) (not e!2992176))))

(assert (=> b!4792266 (= res!2036865 (isDefined!10234 lt!1951108))))

(declare-fun d!1533051 () Bool)

(assert (=> d!1533051 e!2992173))

(declare-fun res!2036866 () Bool)

(assert (=> d!1533051 (=> res!2036866 e!2992173)))

(assert (=> d!1533051 (= res!2036866 e!2992175)))

(declare-fun res!2036867 () Bool)

(assert (=> d!1533051 (=> (not res!2036867) (not e!2992175))))

(assert (=> d!1533051 (= res!2036867 (isEmpty!29443 lt!1951108))))

(assert (=> d!1533051 (= lt!1951108 e!2992174)))

(declare-fun c!816777 () Bool)

(assert (=> d!1533051 (= c!816777 (and (is-Cons!54218 (apply!12992 lm!2473 lt!1951028)) (= (_1!31724 (h!60642 (apply!12992 lm!2473 lt!1951028))) key!5896)))))

(declare-fun noDuplicateKeys!2337 (List!54342) Bool)

(assert (=> d!1533051 (noDuplicateKeys!2337 (apply!12992 lm!2473 lt!1951028))))

(assert (=> d!1533051 (= (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896) lt!1951108)))

(declare-fun b!4792267 () Bool)

(assert (=> b!4792267 (= e!2992174 e!2992177)))

(declare-fun c!816778 () Bool)

(assert (=> b!4792267 (= c!816778 (is-Cons!54218 (apply!12992 lm!2473 lt!1951028)))))

(declare-fun b!4792268 () Bool)

(assert (=> b!4792268 (= e!2992177 None!13091)))

(assert (= (and d!1533051 c!816777) b!4792261))

(assert (= (and d!1533051 (not c!816777)) b!4792267))

(assert (= (and b!4792267 c!816778) b!4792264))

(assert (= (and b!4792267 (not c!816778)) b!4792268))

(assert (= (and d!1533051 res!2036867) b!4792265))

(assert (= (and d!1533051 (not res!2036866)) b!4792266))

(assert (= (and b!4792266 res!2036865) b!4792262))

(assert (= (and b!4792262 res!2036868) b!4792263))

(declare-fun m!5772946 () Bool)

(assert (=> b!4792264 m!5772946))

(declare-fun m!5772948 () Bool)

(assert (=> b!4792263 m!5772948))

(assert (=> b!4792263 m!5772790))

(assert (=> b!4792263 m!5772948))

(declare-fun m!5772950 () Bool)

(assert (=> b!4792263 m!5772950))

(assert (=> b!4792262 m!5772948))

(declare-fun m!5772952 () Bool)

(assert (=> d!1533051 m!5772952))

(assert (=> d!1533051 m!5772790))

(declare-fun m!5772954 () Bool)

(assert (=> d!1533051 m!5772954))

(declare-fun m!5772956 () Bool)

(assert (=> b!4792266 m!5772956))

(assert (=> b!4792265 m!5772790))

(declare-fun m!5772958 () Bool)

(assert (=> b!4792265 m!5772958))

(assert (=> b!4792096 d!1533051))

(declare-fun d!1533055 () Bool)

(declare-datatypes ((Option!13096 0))(
  ( (None!13095) (Some!13095 (v!48374 List!54342)) )
))
(declare-fun get!18479 (Option!13096) List!54342)

(declare-fun getValueByKey!2347 (List!54343 (_ BitVec 64)) Option!13096)

(assert (=> d!1533055 (= (apply!12992 lm!2473 lt!1951028) (get!18479 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028)))))

(declare-fun bs!1154685 () Bool)

(assert (= bs!1154685 d!1533055))

(declare-fun m!5772960 () Bool)

(assert (=> bs!1154685 m!5772960))

(assert (=> bs!1154685 m!5772960))

(declare-fun m!5772962 () Bool)

(assert (=> bs!1154685 m!5772962))

(assert (=> b!4792096 d!1533055))

(declare-fun d!1533057 () Bool)

(declare-fun res!2036873 () Bool)

(declare-fun e!2992182 () Bool)

(assert (=> d!1533057 (=> res!2036873 e!2992182)))

(assert (=> d!1533057 (= res!2036873 (and (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (= (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))) key!5896)))))

(assert (=> d!1533057 (= (containsKey!3943 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896) e!2992182)))

(declare-fun b!4792273 () Bool)

(declare-fun e!2992183 () Bool)

(assert (=> b!4792273 (= e!2992182 e!2992183)))

(declare-fun res!2036874 () Bool)

(assert (=> b!4792273 (=> (not res!2036874) (not e!2992183))))

(assert (=> b!4792273 (= res!2036874 (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(declare-fun b!4792274 () Bool)

(assert (=> b!4792274 (= e!2992183 (containsKey!3943 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) key!5896))))

(assert (= (and d!1533057 (not res!2036873)) b!4792273))

(assert (= (and b!4792273 res!2036874) b!4792274))

(declare-fun m!5772964 () Bool)

(assert (=> b!4792274 m!5772964))

(assert (=> b!4792091 d!1533057))

(declare-fun bs!1154686 () Bool)

(declare-fun d!1533059 () Bool)

(assert (= bs!1154686 (and d!1533059 start!493400)))

(declare-fun lambda!230502 () Int)

(assert (=> bs!1154686 (not (= lambda!230502 lambda!230480))))

(declare-fun bs!1154687 () Bool)

(assert (= bs!1154687 (and d!1533059 b!4792094)))

(assert (=> bs!1154687 (= lambda!230502 lambda!230481)))

(declare-fun bs!1154688 () Bool)

(assert (= bs!1154688 (and d!1533059 d!1533047)))

(assert (=> bs!1154688 (not (= lambda!230502 lambda!230499))))

(assert (=> d!1533059 true))

(assert (=> d!1533059 (= (allKeysSameHashInMap!2328 lm!2473 hashF!1559) (forall!12248 (toList!6925 lm!2473) lambda!230502))))

(declare-fun bs!1154689 () Bool)

(assert (= bs!1154689 d!1533059))

(declare-fun m!5772966 () Bool)

(assert (=> bs!1154689 m!5772966))

(assert (=> b!4792097 d!1533059))

(declare-fun d!1533061 () Bool)

(declare-fun e!2992191 () Bool)

(assert (=> d!1533061 e!2992191))

(declare-fun res!2036877 () Bool)

(assert (=> d!1533061 (=> res!2036877 e!2992191)))

(declare-fun lt!1951121 () Bool)

(assert (=> d!1533061 (= res!2036877 (not lt!1951121))))

(declare-fun lt!1951123 () Bool)

(assert (=> d!1533061 (= lt!1951121 lt!1951123)))

(declare-fun lt!1951120 () Unit!139927)

(declare-fun e!2992192 () Unit!139927)

(assert (=> d!1533061 (= lt!1951120 e!2992192)))

(declare-fun c!816784 () Bool)

(assert (=> d!1533061 (= c!816784 lt!1951123)))

(declare-fun containsKey!3947 (List!54343 (_ BitVec 64)) Bool)

(assert (=> d!1533061 (= lt!1951123 (containsKey!3947 (toList!6925 lm!2473) lt!1951028))))

(assert (=> d!1533061 (= (contains!17829 lm!2473 lt!1951028) lt!1951121)))

(declare-fun b!4792287 () Bool)

(declare-fun lt!1951122 () Unit!139927)

(assert (=> b!4792287 (= e!2992192 lt!1951122)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2139 (List!54343 (_ BitVec 64)) Unit!139927)

(assert (=> b!4792287 (= lt!1951122 (lemmaContainsKeyImpliesGetValueByKeyDefined!2139 (toList!6925 lm!2473) lt!1951028))))

(declare-fun isDefined!10238 (Option!13096) Bool)

(assert (=> b!4792287 (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028))))

(declare-fun b!4792288 () Bool)

(declare-fun Unit!139935 () Unit!139927)

(assert (=> b!4792288 (= e!2992192 Unit!139935)))

(declare-fun b!4792289 () Bool)

(assert (=> b!4792289 (= e!2992191 (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028)))))

(assert (= (and d!1533061 c!816784) b!4792287))

(assert (= (and d!1533061 (not c!816784)) b!4792288))

(assert (= (and d!1533061 (not res!2036877)) b!4792289))

(declare-fun m!5772976 () Bool)

(assert (=> d!1533061 m!5772976))

(declare-fun m!5772978 () Bool)

(assert (=> b!4792287 m!5772978))

(assert (=> b!4792287 m!5772960))

(assert (=> b!4792287 m!5772960))

(declare-fun m!5772980 () Bool)

(assert (=> b!4792287 m!5772980))

(assert (=> b!4792289 m!5772960))

(assert (=> b!4792289 m!5772960))

(assert (=> b!4792289 m!5772980))

(assert (=> b!4792095 d!1533061))

(declare-fun d!1533065 () Bool)

(declare-fun res!2036888 () Bool)

(declare-fun e!2992205 () Bool)

(assert (=> d!1533065 (=> res!2036888 e!2992205)))

(declare-fun e!2992203 () Bool)

(assert (=> d!1533065 (= res!2036888 e!2992203)))

(declare-fun res!2036886 () Bool)

(assert (=> d!1533065 (=> (not res!2036886) (not e!2992203))))

(assert (=> d!1533065 (= res!2036886 (is-Cons!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533065 (= (containsKeyBiggerList!565 (toList!6925 lm!2473) key!5896) e!2992205)))

(declare-fun b!4792302 () Bool)

(assert (=> b!4792302 (= e!2992203 (containsKey!3943 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896))))

(declare-fun b!4792303 () Bool)

(declare-fun e!2992204 () Bool)

(assert (=> b!4792303 (= e!2992205 e!2992204)))

(declare-fun res!2036887 () Bool)

(assert (=> b!4792303 (=> (not res!2036887) (not e!2992204))))

(assert (=> b!4792303 (= res!2036887 (is-Cons!54219 (toList!6925 lm!2473)))))

(declare-fun b!4792304 () Bool)

(assert (=> b!4792304 (= e!2992204 (containsKeyBiggerList!565 (t!361793 (toList!6925 lm!2473)) key!5896))))

(assert (= (and d!1533065 res!2036886) b!4792302))

(assert (= (and d!1533065 (not res!2036888)) b!4792303))

(assert (= (and b!4792303 res!2036887) b!4792304))

(assert (=> b!4792302 m!5772762))

(declare-fun m!5772982 () Bool)

(assert (=> b!4792304 m!5772982))

(assert (=> b!4792095 d!1533065))

(declare-fun bs!1154693 () Bool)

(declare-fun d!1533067 () Bool)

(assert (= bs!1154693 (and d!1533067 start!493400)))

(declare-fun lambda!230508 () Int)

(assert (=> bs!1154693 (= lambda!230508 lambda!230480)))

(declare-fun bs!1154694 () Bool)

(assert (= bs!1154694 (and d!1533067 b!4792094)))

(assert (=> bs!1154694 (not (= lambda!230508 lambda!230481))))

(declare-fun bs!1154695 () Bool)

(assert (= bs!1154695 (and d!1533067 d!1533047)))

(assert (=> bs!1154695 (= lambda!230508 lambda!230499)))

(declare-fun bs!1154696 () Bool)

(assert (= bs!1154696 (and d!1533067 d!1533059)))

(assert (=> bs!1154696 (not (= lambda!230508 lambda!230502))))

(assert (=> d!1533067 (containsKeyBiggerList!565 (toList!6925 lm!2473) key!5896)))

(declare-fun lt!1951138 () Unit!139927)

(declare-fun choose!34500 (ListLongMap!5347 K!15797 Hashable!6923) Unit!139927)

(assert (=> d!1533067 (= lt!1951138 (choose!34500 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533067 (forall!12248 (toList!6925 lm!2473) lambda!230508)))

(assert (=> d!1533067 (= (lemmaInLongMapThenContainsKeyBiggerList!305 lm!2473 key!5896 hashF!1559) lt!1951138)))

(declare-fun bs!1154697 () Bool)

(assert (= bs!1154697 d!1533067))

(assert (=> bs!1154697 m!5772764))

(declare-fun m!5772992 () Bool)

(assert (=> bs!1154697 m!5772992))

(declare-fun m!5772994 () Bool)

(assert (=> bs!1154697 m!5772994))

(assert (=> b!4792095 d!1533067))

(declare-fun bs!1154703 () Bool)

(declare-fun d!1533073 () Bool)

(assert (= bs!1154703 (and d!1533073 b!4792094)))

(declare-fun lambda!230514 () Int)

(assert (=> bs!1154703 (not (= lambda!230514 lambda!230481))))

(declare-fun bs!1154704 () Bool)

(assert (= bs!1154704 (and d!1533073 d!1533047)))

(assert (=> bs!1154704 (= lambda!230514 lambda!230499)))

(declare-fun bs!1154705 () Bool)

(assert (= bs!1154705 (and d!1533073 start!493400)))

(assert (=> bs!1154705 (= lambda!230514 lambda!230480)))

(declare-fun bs!1154706 () Bool)

(assert (= bs!1154706 (and d!1533073 d!1533059)))

(assert (=> bs!1154706 (not (= lambda!230514 lambda!230502))))

(declare-fun bs!1154707 () Bool)

(assert (= bs!1154707 (and d!1533073 d!1533067)))

(assert (=> bs!1154707 (= lambda!230514 lambda!230508)))

(declare-fun e!2992219 () Bool)

(assert (=> d!1533073 e!2992219))

(declare-fun res!2036901 () Bool)

(assert (=> d!1533073 (=> (not res!2036901) (not e!2992219))))

(assert (=> d!1533073 (= res!2036901 (contains!17829 lm!2473 (hash!4956 hashF!1559 key!5896)))))

(declare-fun lt!1951144 () Unit!139927)

(declare-fun choose!34501 (ListLongMap!5347 K!15797 Hashable!6923) Unit!139927)

(assert (=> d!1533073 (= lt!1951144 (choose!34501 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1533073 (forall!12248 (toList!6925 lm!2473) lambda!230514)))

(assert (=> d!1533073 (= (lemmaInGenericMapThenInLongMap!327 lm!2473 key!5896 hashF!1559) lt!1951144)))

(declare-fun b!4792319 () Bool)

(assert (=> b!4792319 (= e!2992219 (isDefined!10234 (getPair!895 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1533073 res!2036901) b!4792319))

(assert (=> d!1533073 m!5772768))

(assert (=> d!1533073 m!5772768))

(declare-fun m!5773000 () Bool)

(assert (=> d!1533073 m!5773000))

(declare-fun m!5773002 () Bool)

(assert (=> d!1533073 m!5773002))

(declare-fun m!5773004 () Bool)

(assert (=> d!1533073 m!5773004))

(assert (=> b!4792319 m!5772768))

(assert (=> b!4792319 m!5772768))

(declare-fun m!5773006 () Bool)

(assert (=> b!4792319 m!5773006))

(assert (=> b!4792319 m!5773006))

(declare-fun m!5773008 () Bool)

(assert (=> b!4792319 m!5773008))

(assert (=> b!4792319 m!5773008))

(declare-fun m!5773010 () Bool)

(assert (=> b!4792319 m!5773010))

(assert (=> b!4792095 d!1533073))

(declare-fun d!1533077 () Bool)

(declare-fun c!816790 () Bool)

(declare-fun e!2992228 () Bool)

(assert (=> d!1533077 (= c!816790 e!2992228)))

(declare-fun res!2036907 () Bool)

(assert (=> d!1533077 (=> (not res!2036907) (not e!2992228))))

(assert (=> d!1533077 (= res!2036907 (is-Cons!54219 (toList!6925 lm!2473)))))

(declare-fun e!2992227 () V!16043)

(assert (=> d!1533077 (= (getValue!111 (toList!6925 lm!2473) key!5896) e!2992227)))

(declare-fun b!4792331 () Bool)

(assert (=> b!4792331 (= e!2992228 (containsKey!3943 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896))))

(declare-fun b!4792329 () Bool)

(assert (=> b!4792329 (= e!2992227 (_2!31724 (get!18477 (getPair!895 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896))))))

(declare-fun b!4792330 () Bool)

(assert (=> b!4792330 (= e!2992227 (getValue!111 (t!361793 (toList!6925 lm!2473)) key!5896))))

(assert (= (and d!1533077 res!2036907) b!4792331))

(assert (= (and d!1533077 c!816790) b!4792329))

(assert (= (and d!1533077 (not c!816790)) b!4792330))

(assert (=> b!4792331 m!5772762))

(declare-fun m!5773024 () Bool)

(assert (=> b!4792329 m!5773024))

(assert (=> b!4792329 m!5773024))

(declare-fun m!5773026 () Bool)

(assert (=> b!4792329 m!5773026))

(declare-fun m!5773028 () Bool)

(assert (=> b!4792330 m!5773028))

(assert (=> b!4792095 d!1533077))

(declare-fun d!1533081 () Bool)

(declare-fun hash!4958 (Hashable!6923 K!15797) (_ BitVec 64))

(assert (=> d!1533081 (= (hash!4956 hashF!1559 key!5896) (hash!4958 hashF!1559 key!5896))))

(declare-fun bs!1154713 () Bool)

(assert (= bs!1154713 d!1533081))

(declare-fun m!5773030 () Bool)

(assert (=> bs!1154713 m!5773030))

(assert (=> b!4792095 d!1533081))

(declare-fun b!4792336 () Bool)

(declare-fun e!2992231 () Bool)

(declare-fun tp!1358019 () Bool)

(declare-fun tp!1358020 () Bool)

(assert (=> b!4792336 (= e!2992231 (and tp!1358019 tp!1358020))))

(assert (=> b!4792092 (= tp!1358011 e!2992231)))

(assert (= (and b!4792092 (is-Cons!54219 (toList!6925 lm!2473))) b!4792336))

(declare-fun b_lambda!186589 () Bool)

(assert (= b_lambda!186585 (or b!4792094 b_lambda!186589)))

(declare-fun bs!1154714 () Bool)

(declare-fun d!1533083 () Bool)

(assert (= bs!1154714 (and d!1533083 b!4792094)))

(declare-fun allKeysSameHash!1955 (List!54342 (_ BitVec 64) Hashable!6923) Bool)

(assert (=> bs!1154714 (= (dynLambda!22053 lambda!230481 (h!60643 (toList!6925 lm!2473))) (allKeysSameHash!1955 (_2!31725 (h!60643 (toList!6925 lm!2473))) (_1!31725 (h!60643 (toList!6925 lm!2473))) hashF!1559))))

(declare-fun m!5773032 () Bool)

(assert (=> bs!1154714 m!5773032))

(assert (=> d!1533027 d!1533083))

(declare-fun b_lambda!186591 () Bool)

(assert (= b_lambda!186581 (or start!493400 b_lambda!186591)))

(declare-fun bs!1154715 () Bool)

(declare-fun d!1533085 () Bool)

(assert (= bs!1154715 (and d!1533085 start!493400)))

(assert (=> bs!1154715 (= (dynLambda!22053 lambda!230480 (h!60643 (toList!6925 (tail!9264 lm!2473)))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473))))))))

(declare-fun m!5773034 () Bool)

(assert (=> bs!1154715 m!5773034))

(assert (=> b!4792141 d!1533085))

(declare-fun b_lambda!186593 () Bool)

(assert (= b_lambda!186579 (or start!493400 b_lambda!186593)))

(declare-fun bs!1154716 () Bool)

(declare-fun d!1533087 () Bool)

(assert (= bs!1154716 (and d!1533087 start!493400)))

(assert (=> bs!1154716 (= (dynLambda!22053 lambda!230480 (h!60643 (toList!6925 lm!2473))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(declare-fun m!5773036 () Bool)

(assert (=> bs!1154716 m!5773036))

(assert (=> b!4792139 d!1533087))

(declare-fun b_lambda!186595 () Bool)

(assert (= b_lambda!186583 (or b!4792094 b_lambda!186595)))

(declare-fun bs!1154717 () Bool)

(declare-fun d!1533089 () Bool)

(assert (= bs!1154717 (and d!1533089 b!4792094)))

(assert (=> bs!1154717 (= (dynLambda!22054 lambda!230482 (tuple2!56861 key!5896 value!3111)) (= (hash!4956 hashF!1559 (_1!31724 (tuple2!56861 key!5896 value!3111))) (_1!31725 (h!60643 (toList!6925 lm!2473)))))))

(declare-fun m!5773038 () Bool)

(assert (=> bs!1154717 m!5773038))

(assert (=> d!1533025 d!1533089))

(push 1)

(assert (not b!4792204))

(assert (not bs!1154715))

(assert (not d!1533067))

(assert (not d!1533059))

(assert (not d!1533047))

(assert tp_is_empty!33553)

(assert (not d!1533051))

(assert (not b!4792302))

(assert (not b!4792274))

(assert (not b!4792329))

(assert (not b!4792207))

(assert (not b!4792319))

(assert (not d!1533025))

(assert (not b!4792211))

(assert (not b_lambda!186591))

(assert (not b!4792331))

(assert (not b_lambda!186589))

(assert (not d!1533049))

(assert (not b!4792330))

(assert (not b!4792145))

(assert (not bm!335014))

(assert (not b!4792262))

(assert (not b!4792205))

(assert (not b!4792209))

(assert (not b_lambda!186593))

(assert (not b!4792264))

(assert (not b!4792152))

(assert (not b!4792266))

(assert (not b!4792142))

(assert (not bs!1154714))

(assert (not d!1533023))

(assert tp_is_empty!33555)

(assert (not b!4792336))

(assert (not b!4792289))

(assert (not b!4792140))

(assert (not d!1533055))

(assert (not d!1533019))

(assert (not d!1533073))

(assert (not b!4792287))

(assert (not b!4792224))

(assert (not d!1533061))

(assert (not bs!1154716))

(assert (not bs!1154717))

(assert (not d!1533027))

(assert (not b!4792203))

(assert (not d!1533031))

(assert (not b!4792265))

(assert (not b!4792263))

(assert (not b!4792206))

(assert (not b!4792304))

(assert (not d!1533081))

(assert (not b_lambda!186595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1533109 () Bool)

(declare-fun res!2036919 () Bool)

(declare-fun e!2992249 () Bool)

(assert (=> d!1533109 (=> res!2036919 e!2992249)))

(assert (=> d!1533109 (= res!2036919 (is-Nil!54219 (t!361793 (toList!6925 lm!2473))))))

(assert (=> d!1533109 (= (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230480) e!2992249)))

(declare-fun b!4792359 () Bool)

(declare-fun e!2992250 () Bool)

(assert (=> b!4792359 (= e!2992249 e!2992250)))

(declare-fun res!2036920 () Bool)

(assert (=> b!4792359 (=> (not res!2036920) (not e!2992250))))

(assert (=> b!4792359 (= res!2036920 (dynLambda!22053 lambda!230480 (h!60643 (t!361793 (toList!6925 lm!2473)))))))

(declare-fun b!4792360 () Bool)

(assert (=> b!4792360 (= e!2992250 (forall!12248 (t!361793 (t!361793 (toList!6925 lm!2473))) lambda!230480))))

(assert (= (and d!1533109 (not res!2036919)) b!4792359))

(assert (= (and b!4792359 res!2036920) b!4792360))

(declare-fun b_lambda!186611 () Bool)

(assert (=> (not b_lambda!186611) (not b!4792359)))

(declare-fun m!5773078 () Bool)

(assert (=> b!4792359 m!5773078))

(declare-fun m!5773080 () Bool)

(assert (=> b!4792360 m!5773080))

(assert (=> b!4792140 d!1533109))

(declare-fun d!1533111 () Bool)

(assert (=> d!1533111 (= (isDefined!10234 (getPair!895 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29443 (getPair!895 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1154724 () Bool)

(assert (= bs!1154724 d!1533111))

(assert (=> bs!1154724 m!5773008))

(declare-fun m!5773082 () Bool)

(assert (=> bs!1154724 m!5773082))

(assert (=> b!4792319 d!1533111))

(declare-fun b!4792361 () Bool)

(declare-fun e!2992252 () Option!13092)

(assert (=> b!4792361 (= e!2992252 (Some!13091 (h!60642 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)))))))

(declare-fun b!4792362 () Bool)

(declare-fun res!2036924 () Bool)

(declare-fun e!2992254 () Bool)

(assert (=> b!4792362 (=> (not res!2036924) (not e!2992254))))

(declare-fun lt!1951154 () Option!13092)

(assert (=> b!4792362 (= res!2036924 (= (_1!31724 (get!18477 lt!1951154)) key!5896))))

(declare-fun b!4792363 () Bool)

(assert (=> b!4792363 (= e!2992254 (contains!17833 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) (get!18477 lt!1951154)))))

(declare-fun e!2992255 () Option!13092)

(declare-fun b!4792364 () Bool)

(assert (=> b!4792364 (= e!2992255 (getPair!895 (t!361792 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896))) key!5896))))

(declare-fun e!2992253 () Bool)

(declare-fun b!4792365 () Bool)

(assert (=> b!4792365 (= e!2992253 (not (containsKey!3943 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4792366 () Bool)

(declare-fun e!2992251 () Bool)

(assert (=> b!4792366 (= e!2992251 e!2992254)))

(declare-fun res!2036921 () Bool)

(assert (=> b!4792366 (=> (not res!2036921) (not e!2992254))))

(assert (=> b!4792366 (= res!2036921 (isDefined!10234 lt!1951154))))

(declare-fun d!1533113 () Bool)

(assert (=> d!1533113 e!2992251))

(declare-fun res!2036922 () Bool)

(assert (=> d!1533113 (=> res!2036922 e!2992251)))

(assert (=> d!1533113 (= res!2036922 e!2992253)))

(declare-fun res!2036923 () Bool)

(assert (=> d!1533113 (=> (not res!2036923) (not e!2992253))))

(assert (=> d!1533113 (= res!2036923 (isEmpty!29443 lt!1951154))))

(assert (=> d!1533113 (= lt!1951154 e!2992252)))

(declare-fun c!816794 () Bool)

(assert (=> d!1533113 (= c!816794 (and (is-Cons!54218 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896))) (= (_1!31724 (h!60642 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1533113 (noDuplicateKeys!2337 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)))))

(assert (=> d!1533113 (= (getPair!895 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896) lt!1951154)))

(declare-fun b!4792367 () Bool)

(assert (=> b!4792367 (= e!2992252 e!2992255)))

(declare-fun c!816795 () Bool)

(assert (=> b!4792367 (= c!816795 (is-Cons!54218 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896))))))

(declare-fun b!4792368 () Bool)

(assert (=> b!4792368 (= e!2992255 None!13091)))

(assert (= (and d!1533113 c!816794) b!4792361))

(assert (= (and d!1533113 (not c!816794)) b!4792367))

(assert (= (and b!4792367 c!816795) b!4792364))

(assert (= (and b!4792367 (not c!816795)) b!4792368))

(assert (= (and d!1533113 res!2036923) b!4792365))

(assert (= (and d!1533113 (not res!2036922)) b!4792366))

(assert (= (and b!4792366 res!2036921) b!4792362))

(assert (= (and b!4792362 res!2036924) b!4792363))

(declare-fun m!5773084 () Bool)

(assert (=> b!4792364 m!5773084))

(declare-fun m!5773086 () Bool)

(assert (=> b!4792363 m!5773086))

(assert (=> b!4792363 m!5773006))

(assert (=> b!4792363 m!5773086))

(declare-fun m!5773088 () Bool)

(assert (=> b!4792363 m!5773088))

(assert (=> b!4792362 m!5773086))

(declare-fun m!5773090 () Bool)

(assert (=> d!1533113 m!5773090))

(assert (=> d!1533113 m!5773006))

(declare-fun m!5773092 () Bool)

(assert (=> d!1533113 m!5773092))

(declare-fun m!5773094 () Bool)

(assert (=> b!4792366 m!5773094))

(assert (=> b!4792365 m!5773006))

(declare-fun m!5773096 () Bool)

(assert (=> b!4792365 m!5773096))

(assert (=> b!4792319 d!1533113))

(declare-fun d!1533115 () Bool)

(assert (=> d!1533115 (= (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) (get!18479 (getValueByKey!2347 (toList!6925 lm!2473) (hash!4956 hashF!1559 key!5896))))))

(declare-fun bs!1154725 () Bool)

(assert (= bs!1154725 d!1533115))

(assert (=> bs!1154725 m!5772768))

(declare-fun m!5773098 () Bool)

(assert (=> bs!1154725 m!5773098))

(assert (=> bs!1154725 m!5773098))

(declare-fun m!5773100 () Bool)

(assert (=> bs!1154725 m!5773100))

(assert (=> b!4792319 d!1533115))

(assert (=> b!4792319 d!1533081))

(declare-fun d!1533117 () Bool)

(declare-fun isEmpty!29444 (Option!13096) Bool)

(assert (=> d!1533117 (= (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028)) (not (isEmpty!29444 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028))))))

(declare-fun bs!1154726 () Bool)

(assert (= bs!1154726 d!1533117))

(assert (=> bs!1154726 m!5772960))

(declare-fun m!5773102 () Bool)

(assert (=> bs!1154726 m!5773102))

(assert (=> b!4792289 d!1533117))

(declare-fun b!4792379 () Bool)

(declare-fun e!2992261 () Option!13096)

(assert (=> b!4792379 (= e!2992261 (getValueByKey!2347 (t!361793 (toList!6925 lm!2473)) lt!1951028))))

(declare-fun d!1533119 () Bool)

(declare-fun c!816800 () Bool)

(assert (=> d!1533119 (= c!816800 (and (is-Cons!54219 (toList!6925 lm!2473)) (= (_1!31725 (h!60643 (toList!6925 lm!2473))) lt!1951028)))))

(declare-fun e!2992260 () Option!13096)

(assert (=> d!1533119 (= (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028) e!2992260)))

(declare-fun b!4792380 () Bool)

(assert (=> b!4792380 (= e!2992261 None!13095)))

(declare-fun b!4792378 () Bool)

(assert (=> b!4792378 (= e!2992260 e!2992261)))

(declare-fun c!816801 () Bool)

(assert (=> b!4792378 (= c!816801 (and (is-Cons!54219 (toList!6925 lm!2473)) (not (= (_1!31725 (h!60643 (toList!6925 lm!2473))) lt!1951028))))))

(declare-fun b!4792377 () Bool)

(assert (=> b!4792377 (= e!2992260 (Some!13095 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (= (and d!1533119 c!816800) b!4792377))

(assert (= (and d!1533119 (not c!816800)) b!4792378))

(assert (= (and b!4792378 c!816801) b!4792379))

(assert (= (and b!4792378 (not c!816801)) b!4792380))

(declare-fun m!5773104 () Bool)

(assert (=> b!4792379 m!5773104))

(assert (=> b!4792289 d!1533119))

(declare-fun lt!1951157 () Bool)

(declare-fun d!1533121 () Bool)

(declare-fun content!9699 (List!54342) (Set tuple2!56860))

(assert (=> d!1533121 (= lt!1951157 (set.member (get!18477 lt!1951108) (content!9699 (apply!12992 lm!2473 lt!1951028))))))

(declare-fun e!2992266 () Bool)

(assert (=> d!1533121 (= lt!1951157 e!2992266)))

(declare-fun res!2036929 () Bool)

(assert (=> d!1533121 (=> (not res!2036929) (not e!2992266))))

(assert (=> d!1533121 (= res!2036929 (is-Cons!54218 (apply!12992 lm!2473 lt!1951028)))))

(assert (=> d!1533121 (= (contains!17833 (apply!12992 lm!2473 lt!1951028) (get!18477 lt!1951108)) lt!1951157)))

(declare-fun b!4792385 () Bool)

(declare-fun e!2992267 () Bool)

(assert (=> b!4792385 (= e!2992266 e!2992267)))

(declare-fun res!2036930 () Bool)

(assert (=> b!4792385 (=> res!2036930 e!2992267)))

(assert (=> b!4792385 (= res!2036930 (= (h!60642 (apply!12992 lm!2473 lt!1951028)) (get!18477 lt!1951108)))))

(declare-fun b!4792386 () Bool)

(assert (=> b!4792386 (= e!2992267 (contains!17833 (t!361792 (apply!12992 lm!2473 lt!1951028)) (get!18477 lt!1951108)))))

(assert (= (and d!1533121 res!2036929) b!4792385))

(assert (= (and b!4792385 (not res!2036930)) b!4792386))

(assert (=> d!1533121 m!5772790))

(declare-fun m!5773106 () Bool)

(assert (=> d!1533121 m!5773106))

(assert (=> d!1533121 m!5772948))

(declare-fun m!5773108 () Bool)

(assert (=> d!1533121 m!5773108))

(assert (=> b!4792386 m!5772948))

(declare-fun m!5773110 () Bool)

(assert (=> b!4792386 m!5773110))

(assert (=> b!4792263 d!1533121))

(declare-fun d!1533123 () Bool)

(assert (=> d!1533123 (= (get!18477 lt!1951108) (v!48370 lt!1951108))))

(assert (=> b!4792263 d!1533123))

(assert (=> b!4792302 d!1533057))

(declare-fun d!1533125 () Bool)

(assert (=> d!1533125 (= (get!18479 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028)) (v!48374 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028)))))

(assert (=> d!1533055 d!1533125))

(assert (=> d!1533055 d!1533119))

(declare-fun d!1533127 () Bool)

(declare-fun res!2036931 () Bool)

(declare-fun e!2992268 () Bool)

(assert (=> d!1533127 (=> res!2036931 e!2992268)))

(assert (=> d!1533127 (= res!2036931 (and (is-Cons!54218 (apply!12992 lm!2473 lt!1951028)) (= (_1!31724 (h!60642 (apply!12992 lm!2473 lt!1951028))) key!5896)))))

(assert (=> d!1533127 (= (containsKey!3943 (apply!12992 lm!2473 lt!1951028) key!5896) e!2992268)))

(declare-fun b!4792387 () Bool)

(declare-fun e!2992269 () Bool)

(assert (=> b!4792387 (= e!2992268 e!2992269)))

(declare-fun res!2036932 () Bool)

(assert (=> b!4792387 (=> (not res!2036932) (not e!2992269))))

(assert (=> b!4792387 (= res!2036932 (is-Cons!54218 (apply!12992 lm!2473 lt!1951028)))))

(declare-fun b!4792388 () Bool)

(assert (=> b!4792388 (= e!2992269 (containsKey!3943 (t!361792 (apply!12992 lm!2473 lt!1951028)) key!5896))))

(assert (= (and d!1533127 (not res!2036931)) b!4792387))

(assert (= (and b!4792387 res!2036932) b!4792388))

(declare-fun m!5773112 () Bool)

(assert (=> b!4792388 m!5773112))

(assert (=> b!4792265 d!1533127))

(declare-fun d!1533129 () Bool)

(declare-fun res!2036935 () Bool)

(declare-fun e!2992272 () Bool)

(assert (=> d!1533129 (=> res!2036935 e!2992272)))

(declare-fun e!2992270 () Bool)

(assert (=> d!1533129 (= res!2036935 e!2992270)))

(declare-fun res!2036933 () Bool)

(assert (=> d!1533129 (=> (not res!2036933) (not e!2992270))))

(assert (=> d!1533129 (= res!2036933 (is-Cons!54219 (t!361793 (toList!6925 lm!2473))))))

(assert (=> d!1533129 (= (containsKeyBiggerList!565 (t!361793 (toList!6925 lm!2473)) key!5896) e!2992272)))

(declare-fun b!4792389 () Bool)

(assert (=> b!4792389 (= e!2992270 (containsKey!3943 (_2!31725 (h!60643 (t!361793 (toList!6925 lm!2473)))) key!5896))))

(declare-fun b!4792390 () Bool)

(declare-fun e!2992271 () Bool)

(assert (=> b!4792390 (= e!2992272 e!2992271)))

(declare-fun res!2036934 () Bool)

(assert (=> b!4792390 (=> (not res!2036934) (not e!2992271))))

(assert (=> b!4792390 (= res!2036934 (is-Cons!54219 (t!361793 (toList!6925 lm!2473))))))

(declare-fun b!4792391 () Bool)

(assert (=> b!4792391 (= e!2992271 (containsKeyBiggerList!565 (t!361793 (t!361793 (toList!6925 lm!2473))) key!5896))))

(assert (= (and d!1533129 res!2036933) b!4792389))

(assert (= (and d!1533129 (not res!2036935)) b!4792390))

(assert (= (and b!4792390 res!2036934) b!4792391))

(declare-fun m!5773114 () Bool)

(assert (=> b!4792389 m!5773114))

(declare-fun m!5773116 () Bool)

(assert (=> b!4792391 m!5773116))

(assert (=> b!4792304 d!1533129))

(declare-fun b!4792392 () Bool)

(declare-fun e!2992274 () Option!13092)

(assert (=> b!4792392 (= e!2992274 (Some!13091 (h!60642 (t!361792 (apply!12992 lm!2473 lt!1951028)))))))

(declare-fun b!4792393 () Bool)

(declare-fun res!2036939 () Bool)

(declare-fun e!2992276 () Bool)

(assert (=> b!4792393 (=> (not res!2036939) (not e!2992276))))

(declare-fun lt!1951158 () Option!13092)

(assert (=> b!4792393 (= res!2036939 (= (_1!31724 (get!18477 lt!1951158)) key!5896))))

(declare-fun b!4792394 () Bool)

(assert (=> b!4792394 (= e!2992276 (contains!17833 (t!361792 (apply!12992 lm!2473 lt!1951028)) (get!18477 lt!1951158)))))

(declare-fun b!4792395 () Bool)

(declare-fun e!2992277 () Option!13092)

(assert (=> b!4792395 (= e!2992277 (getPair!895 (t!361792 (t!361792 (apply!12992 lm!2473 lt!1951028))) key!5896))))

(declare-fun b!4792396 () Bool)

(declare-fun e!2992275 () Bool)

(assert (=> b!4792396 (= e!2992275 (not (containsKey!3943 (t!361792 (apply!12992 lm!2473 lt!1951028)) key!5896)))))

(declare-fun b!4792397 () Bool)

(declare-fun e!2992273 () Bool)

(assert (=> b!4792397 (= e!2992273 e!2992276)))

(declare-fun res!2036936 () Bool)

(assert (=> b!4792397 (=> (not res!2036936) (not e!2992276))))

(assert (=> b!4792397 (= res!2036936 (isDefined!10234 lt!1951158))))

(declare-fun d!1533131 () Bool)

(assert (=> d!1533131 e!2992273))

(declare-fun res!2036937 () Bool)

(assert (=> d!1533131 (=> res!2036937 e!2992273)))

(assert (=> d!1533131 (= res!2036937 e!2992275)))

(declare-fun res!2036938 () Bool)

(assert (=> d!1533131 (=> (not res!2036938) (not e!2992275))))

(assert (=> d!1533131 (= res!2036938 (isEmpty!29443 lt!1951158))))

(assert (=> d!1533131 (= lt!1951158 e!2992274)))

(declare-fun c!816802 () Bool)

(assert (=> d!1533131 (= c!816802 (and (is-Cons!54218 (t!361792 (apply!12992 lm!2473 lt!1951028))) (= (_1!31724 (h!60642 (t!361792 (apply!12992 lm!2473 lt!1951028)))) key!5896)))))

(assert (=> d!1533131 (noDuplicateKeys!2337 (t!361792 (apply!12992 lm!2473 lt!1951028)))))

(assert (=> d!1533131 (= (getPair!895 (t!361792 (apply!12992 lm!2473 lt!1951028)) key!5896) lt!1951158)))

(declare-fun b!4792398 () Bool)

(assert (=> b!4792398 (= e!2992274 e!2992277)))

(declare-fun c!816803 () Bool)

(assert (=> b!4792398 (= c!816803 (is-Cons!54218 (t!361792 (apply!12992 lm!2473 lt!1951028))))))

(declare-fun b!4792399 () Bool)

(assert (=> b!4792399 (= e!2992277 None!13091)))

(assert (= (and d!1533131 c!816802) b!4792392))

(assert (= (and d!1533131 (not c!816802)) b!4792398))

(assert (= (and b!4792398 c!816803) b!4792395))

(assert (= (and b!4792398 (not c!816803)) b!4792399))

(assert (= (and d!1533131 res!2036938) b!4792396))

(assert (= (and d!1533131 (not res!2036937)) b!4792397))

(assert (= (and b!4792397 res!2036936) b!4792393))

(assert (= (and b!4792393 res!2036939) b!4792394))

(declare-fun m!5773118 () Bool)

(assert (=> b!4792395 m!5773118))

(declare-fun m!5773120 () Bool)

(assert (=> b!4792394 m!5773120))

(assert (=> b!4792394 m!5773120))

(declare-fun m!5773122 () Bool)

(assert (=> b!4792394 m!5773122))

(assert (=> b!4792393 m!5773120))

(declare-fun m!5773124 () Bool)

(assert (=> d!1533131 m!5773124))

(declare-fun m!5773126 () Bool)

(assert (=> d!1533131 m!5773126))

(declare-fun m!5773128 () Bool)

(assert (=> b!4792397 m!5773128))

(assert (=> b!4792396 m!5773112))

(assert (=> b!4792264 d!1533131))

(declare-fun bs!1154727 () Bool)

(declare-fun d!1533133 () Bool)

(assert (= bs!1154727 (and d!1533133 b!4792094)))

(declare-fun lambda!230520 () Int)

(assert (=> bs!1154727 (= lambda!230520 lambda!230482)))

(assert (=> d!1533133 true))

(assert (=> d!1533133 true))

(assert (=> d!1533133 (= (allKeysSameHash!1955 (_2!31725 (h!60643 (toList!6925 lm!2473))) (_1!31725 (h!60643 (toList!6925 lm!2473))) hashF!1559) (forall!12250 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230520))))

(declare-fun bs!1154728 () Bool)

(assert (= bs!1154728 d!1533133))

(declare-fun m!5773130 () Bool)

(assert (=> bs!1154728 m!5773130))

(assert (=> bs!1154714 d!1533133))

(assert (=> b!4792262 d!1533123))

(declare-fun d!1533135 () Bool)

(assert (=> d!1533135 (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) lt!1951028))))

(declare-fun lt!1951161 () Unit!139927)

(declare-fun choose!34506 (List!54343 (_ BitVec 64)) Unit!139927)

(assert (=> d!1533135 (= lt!1951161 (choose!34506 (toList!6925 lm!2473) lt!1951028))))

(declare-fun e!2992280 () Bool)

(assert (=> d!1533135 e!2992280))

(declare-fun res!2036942 () Bool)

(assert (=> d!1533135 (=> (not res!2036942) (not e!2992280))))

(assert (=> d!1533135 (= res!2036942 (isStrictlySorted!875 (toList!6925 lm!2473)))))

(assert (=> d!1533135 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2139 (toList!6925 lm!2473) lt!1951028) lt!1951161)))

(declare-fun b!4792404 () Bool)

(assert (=> b!4792404 (= e!2992280 (containsKey!3947 (toList!6925 lm!2473) lt!1951028))))

(assert (= (and d!1533135 res!2036942) b!4792404))

(assert (=> d!1533135 m!5772960))

(assert (=> d!1533135 m!5772960))

(assert (=> d!1533135 m!5772980))

(declare-fun m!5773132 () Bool)

(assert (=> d!1533135 m!5773132))

(assert (=> d!1533135 m!5772842))

(assert (=> b!4792404 m!5772976))

(assert (=> b!4792287 d!1533135))

(assert (=> b!4792287 d!1533117))

(assert (=> b!4792287 d!1533119))

(declare-fun d!1533137 () Bool)

(declare-fun e!2992281 () Bool)

(assert (=> d!1533137 e!2992281))

(declare-fun res!2036943 () Bool)

(assert (=> d!1533137 (=> res!2036943 e!2992281)))

(declare-fun lt!1951163 () Bool)

(assert (=> d!1533137 (= res!2036943 (not lt!1951163))))

(declare-fun lt!1951165 () Bool)

(assert (=> d!1533137 (= lt!1951163 lt!1951165)))

(declare-fun lt!1951162 () Unit!139927)

(declare-fun e!2992282 () Unit!139927)

(assert (=> d!1533137 (= lt!1951162 e!2992282)))

(declare-fun c!816804 () Bool)

(assert (=> d!1533137 (= c!816804 lt!1951165)))

(assert (=> d!1533137 (= lt!1951165 (containsKey!3947 (toList!6925 lm!2473) (hash!4956 hashF!1559 key!5896)))))

(assert (=> d!1533137 (= (contains!17829 lm!2473 (hash!4956 hashF!1559 key!5896)) lt!1951163)))

(declare-fun b!4792405 () Bool)

(declare-fun lt!1951164 () Unit!139927)

(assert (=> b!4792405 (= e!2992282 lt!1951164)))

(assert (=> b!4792405 (= lt!1951164 (lemmaContainsKeyImpliesGetValueByKeyDefined!2139 (toList!6925 lm!2473) (hash!4956 hashF!1559 key!5896)))))

(assert (=> b!4792405 (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) (hash!4956 hashF!1559 key!5896)))))

(declare-fun b!4792406 () Bool)

(declare-fun Unit!139937 () Unit!139927)

(assert (=> b!4792406 (= e!2992282 Unit!139937)))

(declare-fun b!4792407 () Bool)

(assert (=> b!4792407 (= e!2992281 (isDefined!10238 (getValueByKey!2347 (toList!6925 lm!2473) (hash!4956 hashF!1559 key!5896))))))

(assert (= (and d!1533137 c!816804) b!4792405))

(assert (= (and d!1533137 (not c!816804)) b!4792406))

(assert (= (and d!1533137 (not res!2036943)) b!4792407))

(assert (=> d!1533137 m!5772768))

(declare-fun m!5773134 () Bool)

(assert (=> d!1533137 m!5773134))

(assert (=> b!4792405 m!5772768))

(declare-fun m!5773136 () Bool)

(assert (=> b!4792405 m!5773136))

(assert (=> b!4792405 m!5772768))

(assert (=> b!4792405 m!5773098))

(assert (=> b!4792405 m!5773098))

(declare-fun m!5773138 () Bool)

(assert (=> b!4792405 m!5773138))

(assert (=> b!4792407 m!5772768))

(assert (=> b!4792407 m!5773098))

(assert (=> b!4792407 m!5773098))

(assert (=> b!4792407 m!5773138))

(assert (=> d!1533073 d!1533137))

(assert (=> d!1533073 d!1533081))

(declare-fun d!1533139 () Bool)

(declare-fun e!2992285 () Bool)

(assert (=> d!1533139 e!2992285))

(declare-fun res!2036946 () Bool)

(assert (=> d!1533139 (=> (not res!2036946) (not e!2992285))))

(assert (=> d!1533139 (= res!2036946 (contains!17829 lm!2473 (hash!4956 hashF!1559 key!5896)))))

(assert (=> d!1533139 true))

(declare-fun _$5!205 () Unit!139927)

(assert (=> d!1533139 (= (choose!34501 lm!2473 key!5896 hashF!1559) _$5!205)))

(declare-fun b!4792410 () Bool)

(assert (=> b!4792410 (= e!2992285 (isDefined!10234 (getPair!895 (apply!12992 lm!2473 (hash!4956 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1533139 res!2036946) b!4792410))

(assert (=> d!1533139 m!5772768))

(assert (=> d!1533139 m!5772768))

(assert (=> d!1533139 m!5773000))

(assert (=> b!4792410 m!5772768))

(assert (=> b!4792410 m!5772768))

(assert (=> b!4792410 m!5773006))

(assert (=> b!4792410 m!5773006))

(assert (=> b!4792410 m!5773008))

(assert (=> b!4792410 m!5773008))

(assert (=> b!4792410 m!5773010))

(assert (=> d!1533073 d!1533139))

(declare-fun d!1533141 () Bool)

(declare-fun res!2036947 () Bool)

(declare-fun e!2992286 () Bool)

(assert (=> d!1533141 (=> res!2036947 e!2992286)))

(assert (=> d!1533141 (= res!2036947 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533141 (= (forall!12248 (toList!6925 lm!2473) lambda!230514) e!2992286)))

(declare-fun b!4792411 () Bool)

(declare-fun e!2992287 () Bool)

(assert (=> b!4792411 (= e!2992286 e!2992287)))

(declare-fun res!2036948 () Bool)

(assert (=> b!4792411 (=> (not res!2036948) (not e!2992287))))

(assert (=> b!4792411 (= res!2036948 (dynLambda!22053 lambda!230514 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792412 () Bool)

(assert (=> b!4792412 (= e!2992287 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230514))))

(assert (= (and d!1533141 (not res!2036947)) b!4792411))

(assert (= (and b!4792411 res!2036948) b!4792412))

(declare-fun b_lambda!186613 () Bool)

(assert (=> (not b_lambda!186613) (not b!4792411)))

(declare-fun m!5773140 () Bool)

(assert (=> b!4792411 m!5773140))

(declare-fun m!5773142 () Bool)

(assert (=> b!4792412 m!5773142))

(assert (=> d!1533073 d!1533141))

(declare-fun d!1533143 () Bool)

(assert (=> d!1533143 (dynLambda!22054 lambda!230482 (tuple2!56861 key!5896 value!3111))))

(assert (=> d!1533143 true))

(declare-fun _$7!2383 () Unit!139927)

(assert (=> d!1533143 (= (choose!34498 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482 (tuple2!56861 key!5896 value!3111)) _$7!2383)))

(declare-fun b_lambda!186615 () Bool)

(assert (=> (not b_lambda!186615) (not d!1533143)))

(declare-fun bs!1154729 () Bool)

(assert (= bs!1154729 d!1533143))

(assert (=> bs!1154729 m!5772850))

(assert (=> d!1533025 d!1533143))

(declare-fun d!1533145 () Bool)

(declare-fun res!2036953 () Bool)

(declare-fun e!2992292 () Bool)

(assert (=> d!1533145 (=> res!2036953 e!2992292)))

(assert (=> d!1533145 (= res!2036953 (is-Nil!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> d!1533145 (= (forall!12250 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230482) e!2992292)))

(declare-fun b!4792417 () Bool)

(declare-fun e!2992293 () Bool)

(assert (=> b!4792417 (= e!2992292 e!2992293)))

(declare-fun res!2036954 () Bool)

(assert (=> b!4792417 (=> (not res!2036954) (not e!2992293))))

(assert (=> b!4792417 (= res!2036954 (dynLambda!22054 lambda!230482 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun b!4792418 () Bool)

(assert (=> b!4792418 (= e!2992293 (forall!12250 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) lambda!230482))))

(assert (= (and d!1533145 (not res!2036953)) b!4792417))

(assert (= (and b!4792417 res!2036954) b!4792418))

(declare-fun b_lambda!186617 () Bool)

(assert (=> (not b_lambda!186617) (not b!4792417)))

(declare-fun m!5773144 () Bool)

(assert (=> b!4792417 m!5773144))

(declare-fun m!5773146 () Bool)

(assert (=> b!4792418 m!5773146))

(assert (=> d!1533025 d!1533145))

(declare-fun bs!1154746 () Bool)

(declare-fun b!4792570 () Bool)

(assert (= bs!1154746 (and b!4792570 b!4792094)))

(declare-fun lambda!230570 () Int)

(assert (=> bs!1154746 (not (= lambda!230570 lambda!230482))))

(declare-fun bs!1154747 () Bool)

(assert (= bs!1154747 (and b!4792570 d!1533133)))

(assert (=> bs!1154747 (not (= lambda!230570 lambda!230520))))

(assert (=> b!4792570 true))

(declare-fun bs!1154748 () Bool)

(declare-fun b!4792569 () Bool)

(assert (= bs!1154748 (and b!4792569 b!4792094)))

(declare-fun lambda!230571 () Int)

(assert (=> bs!1154748 (not (= lambda!230571 lambda!230482))))

(declare-fun bs!1154749 () Bool)

(assert (= bs!1154749 (and b!4792569 d!1533133)))

(assert (=> bs!1154749 (not (= lambda!230571 lambda!230520))))

(declare-fun bs!1154750 () Bool)

(assert (= bs!1154750 (and b!4792569 b!4792570)))

(assert (=> bs!1154750 (= lambda!230571 lambda!230570)))

(assert (=> b!4792569 true))

(declare-fun lambda!230572 () Int)

(assert (=> bs!1154748 (not (= lambda!230572 lambda!230482))))

(assert (=> bs!1154749 (not (= lambda!230572 lambda!230520))))

(declare-fun lt!1951250 () ListMap!6397)

(assert (=> bs!1154750 (= (= lt!1951250 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (= lambda!230572 lambda!230570))))

(assert (=> b!4792569 (= (= lt!1951250 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (= lambda!230572 lambda!230571))))

(assert (=> b!4792569 true))

(declare-fun bs!1154751 () Bool)

(declare-fun d!1533147 () Bool)

(assert (= bs!1154751 (and d!1533147 d!1533133)))

(declare-fun lambda!230573 () Int)

(assert (=> bs!1154751 (not (= lambda!230573 lambda!230520))))

(declare-fun bs!1154752 () Bool)

(assert (= bs!1154752 (and d!1533147 b!4792094)))

(assert (=> bs!1154752 (not (= lambda!230573 lambda!230482))))

(declare-fun bs!1154753 () Bool)

(assert (= bs!1154753 (and d!1533147 b!4792570)))

(declare-fun lt!1951251 () ListMap!6397)

(assert (=> bs!1154753 (= (= lt!1951251 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (= lambda!230573 lambda!230570))))

(declare-fun bs!1154754 () Bool)

(assert (= bs!1154754 (and d!1533147 b!4792569)))

(assert (=> bs!1154754 (= (= lt!1951251 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (= lambda!230573 lambda!230571))))

(assert (=> bs!1154754 (= (= lt!1951251 lt!1951250) (= lambda!230573 lambda!230572))))

(assert (=> d!1533147 true))

(declare-fun e!2992393 () ListMap!6397)

(assert (=> b!4792569 (= e!2992393 lt!1951250)))

(declare-fun lt!1951249 () ListMap!6397)

(declare-fun +!2483 (ListMap!6397 tuple2!56860) ListMap!6397)

(assert (=> b!4792569 (= lt!1951249 (+!2483 (extractMap!2450 (t!361793 (toList!6925 lm!2473))) (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(assert (=> b!4792569 (= lt!1951250 (addToMapMapFromBucket!1704 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (+!2483 (extractMap!2450 (t!361793 (toList!6925 lm!2473))) (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))))

(declare-fun lt!1951257 () Unit!139927)

(declare-fun call!335030 () Unit!139927)

(assert (=> b!4792569 (= lt!1951257 call!335030)))

(assert (=> b!4792569 (forall!12250 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) lambda!230571)))

(declare-fun lt!1951265 () Unit!139927)

(assert (=> b!4792569 (= lt!1951265 lt!1951257)))

(assert (=> b!4792569 (forall!12250 (toList!6926 lt!1951249) lambda!230572)))

(declare-fun lt!1951268 () Unit!139927)

(declare-fun Unit!139938 () Unit!139927)

(assert (=> b!4792569 (= lt!1951268 Unit!139938)))

(assert (=> b!4792569 (forall!12250 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) lambda!230572)))

(declare-fun lt!1951258 () Unit!139927)

(declare-fun Unit!139939 () Unit!139927)

(assert (=> b!4792569 (= lt!1951258 Unit!139939)))

(declare-fun lt!1951253 () Unit!139927)

(declare-fun Unit!139940 () Unit!139927)

(assert (=> b!4792569 (= lt!1951253 Unit!139940)))

(declare-fun lt!1951259 () Unit!139927)

(assert (=> b!4792569 (= lt!1951259 (forallContained!4154 (toList!6926 lt!1951249) lambda!230572 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(assert (=> b!4792569 (contains!17830 lt!1951249 (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun lt!1951260 () Unit!139927)

(declare-fun Unit!139941 () Unit!139927)

(assert (=> b!4792569 (= lt!1951260 Unit!139941)))

(assert (=> b!4792569 (contains!17830 lt!1951250 (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun lt!1951256 () Unit!139927)

(declare-fun Unit!139942 () Unit!139927)

(assert (=> b!4792569 (= lt!1951256 Unit!139942)))

(declare-fun call!335029 () Bool)

(assert (=> b!4792569 call!335029))

(declare-fun lt!1951255 () Unit!139927)

(declare-fun Unit!139943 () Unit!139927)

(assert (=> b!4792569 (= lt!1951255 Unit!139943)))

(assert (=> b!4792569 (forall!12250 (toList!6926 lt!1951249) lambda!230572)))

(declare-fun lt!1951254 () Unit!139927)

(declare-fun Unit!139944 () Unit!139927)

(assert (=> b!4792569 (= lt!1951254 Unit!139944)))

(declare-fun lt!1951263 () Unit!139927)

(declare-fun Unit!139945 () Unit!139927)

(assert (=> b!4792569 (= lt!1951263 Unit!139945)))

(declare-fun lt!1951261 () Unit!139927)

(declare-fun addForallContainsKeyThenBeforeAdding!938 (ListMap!6397 ListMap!6397 K!15797 V!16043) Unit!139927)

(assert (=> b!4792569 (= lt!1951261 (addForallContainsKeyThenBeforeAdding!938 (extractMap!2450 (t!361793 (toList!6925 lm!2473))) lt!1951250 (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))) (_2!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))))

(assert (=> b!4792569 (forall!12250 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) lambda!230572)))

(declare-fun lt!1951252 () Unit!139927)

(assert (=> b!4792569 (= lt!1951252 lt!1951261)))

(declare-fun call!335031 () Bool)

(assert (=> b!4792569 call!335031))

(declare-fun lt!1951267 () Unit!139927)

(declare-fun Unit!139946 () Unit!139927)

(assert (=> b!4792569 (= lt!1951267 Unit!139946)))

(declare-fun res!2037043 () Bool)

(assert (=> b!4792569 (= res!2037043 (forall!12250 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230572))))

(declare-fun e!2992395 () Bool)

(assert (=> b!4792569 (=> (not res!2037043) (not e!2992395))))

(assert (=> b!4792569 e!2992395))

(declare-fun lt!1951262 () Unit!139927)

(declare-fun Unit!139947 () Unit!139927)

(assert (=> b!4792569 (= lt!1951262 Unit!139947)))

(declare-fun e!2992394 () Bool)

(assert (=> d!1533147 e!2992394))

(declare-fun res!2037041 () Bool)

(assert (=> d!1533147 (=> (not res!2037041) (not e!2992394))))

(assert (=> d!1533147 (= res!2037041 (forall!12250 (_2!31725 (h!60643 (toList!6925 lm!2473))) lambda!230573))))

(assert (=> d!1533147 (= lt!1951251 e!2992393)))

(declare-fun c!816834 () Bool)

(assert (=> d!1533147 (= c!816834 (is-Nil!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> d!1533147 (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473))))))

(assert (=> d!1533147 (= (addToMapMapFromBucket!1704 (_2!31725 (h!60643 (toList!6925 lm!2473))) (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) lt!1951251)))

(declare-fun bm!335024 () Bool)

(assert (=> bm!335024 (= call!335029 (forall!12250 (ite c!816834 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (_2!31725 (h!60643 (toList!6925 lm!2473)))) (ite c!816834 lambda!230570 lambda!230572)))))

(declare-fun bm!335025 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!939 (ListMap!6397) Unit!139927)

(assert (=> bm!335025 (= call!335030 (lemmaContainsAllItsOwnKeys!939 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))))))

(assert (=> b!4792570 (= e!2992393 (extractMap!2450 (t!361793 (toList!6925 lm!2473))))))

(declare-fun lt!1951248 () Unit!139927)

(assert (=> b!4792570 (= lt!1951248 call!335030)))

(assert (=> b!4792570 call!335031))

(declare-fun lt!1951264 () Unit!139927)

(assert (=> b!4792570 (= lt!1951264 lt!1951248)))

(assert (=> b!4792570 call!335029))

(declare-fun lt!1951266 () Unit!139927)

(declare-fun Unit!139949 () Unit!139927)

(assert (=> b!4792570 (= lt!1951266 Unit!139949)))

(declare-fun b!4792571 () Bool)

(assert (=> b!4792571 (= e!2992395 (forall!12250 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) lambda!230572))))

(declare-fun bm!335026 () Bool)

(assert (=> bm!335026 (= call!335031 (forall!12250 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) (ite c!816834 lambda!230570 lambda!230572)))))

(declare-fun b!4792572 () Bool)

(declare-fun res!2037042 () Bool)

(assert (=> b!4792572 (=> (not res!2037042) (not e!2992394))))

(assert (=> b!4792572 (= res!2037042 (forall!12250 (toList!6926 (extractMap!2450 (t!361793 (toList!6925 lm!2473)))) lambda!230573))))

(declare-fun b!4792573 () Bool)

(assert (=> b!4792573 (= e!2992394 (invariantList!1727 (toList!6926 lt!1951251)))))

(assert (= (and d!1533147 c!816834) b!4792570))

(assert (= (and d!1533147 (not c!816834)) b!4792569))

(assert (= (and b!4792569 res!2037043) b!4792571))

(assert (= (or b!4792570 b!4792569) bm!335026))

(assert (= (or b!4792570 b!4792569) bm!335024))

(assert (= (or b!4792570 b!4792569) bm!335025))

(assert (= (and d!1533147 res!2037041) b!4792572))

(assert (= (and b!4792572 res!2037042) b!4792573))

(declare-fun m!5773290 () Bool)

(assert (=> bm!335024 m!5773290))

(declare-fun m!5773292 () Bool)

(assert (=> d!1533147 m!5773292))

(assert (=> d!1533147 m!5773036))

(declare-fun m!5773294 () Bool)

(assert (=> b!4792572 m!5773294))

(assert (=> bm!335025 m!5772920))

(declare-fun m!5773296 () Bool)

(assert (=> bm!335025 m!5773296))

(declare-fun m!5773298 () Bool)

(assert (=> b!4792571 m!5773298))

(declare-fun m!5773300 () Bool)

(assert (=> bm!335026 m!5773300))

(declare-fun m!5773302 () Bool)

(assert (=> b!4792569 m!5773302))

(declare-fun m!5773304 () Bool)

(assert (=> b!4792569 m!5773304))

(declare-fun m!5773306 () Bool)

(assert (=> b!4792569 m!5773306))

(assert (=> b!4792569 m!5773298))

(declare-fun m!5773308 () Bool)

(assert (=> b!4792569 m!5773308))

(declare-fun m!5773310 () Bool)

(assert (=> b!4792569 m!5773310))

(declare-fun m!5773312 () Bool)

(assert (=> b!4792569 m!5773312))

(declare-fun m!5773314 () Bool)

(assert (=> b!4792569 m!5773314))

(declare-fun m!5773316 () Bool)

(assert (=> b!4792569 m!5773316))

(assert (=> b!4792569 m!5772920))

(assert (=> b!4792569 m!5773312))

(declare-fun m!5773318 () Bool)

(assert (=> b!4792569 m!5773318))

(assert (=> b!4792569 m!5772920))

(declare-fun m!5773320 () Bool)

(assert (=> b!4792569 m!5773320))

(assert (=> b!4792569 m!5773316))

(declare-fun m!5773322 () Bool)

(assert (=> b!4792573 m!5773322))

(assert (=> b!4792224 d!1533147))

(declare-fun bs!1154755 () Bool)

(declare-fun d!1533213 () Bool)

(assert (= bs!1154755 (and d!1533213 d!1533047)))

(declare-fun lambda!230574 () Int)

(assert (=> bs!1154755 (= lambda!230574 lambda!230499)))

(declare-fun bs!1154756 () Bool)

(assert (= bs!1154756 (and d!1533213 start!493400)))

(assert (=> bs!1154756 (= lambda!230574 lambda!230480)))

(declare-fun bs!1154757 () Bool)

(assert (= bs!1154757 (and d!1533213 d!1533059)))

(assert (=> bs!1154757 (not (= lambda!230574 lambda!230502))))

(declare-fun bs!1154758 () Bool)

(assert (= bs!1154758 (and d!1533213 d!1533067)))

(assert (=> bs!1154758 (= lambda!230574 lambda!230508)))

(declare-fun bs!1154759 () Bool)

(assert (= bs!1154759 (and d!1533213 d!1533073)))

(assert (=> bs!1154759 (= lambda!230574 lambda!230514)))

(declare-fun bs!1154760 () Bool)

(assert (= bs!1154760 (and d!1533213 b!4792094)))

(assert (=> bs!1154760 (not (= lambda!230574 lambda!230481))))

(declare-fun lt!1951269 () ListMap!6397)

(assert (=> d!1533213 (invariantList!1727 (toList!6926 lt!1951269))))

(declare-fun e!2992396 () ListMap!6397)

(assert (=> d!1533213 (= lt!1951269 e!2992396)))

(declare-fun c!816835 () Bool)

(assert (=> d!1533213 (= c!816835 (is-Cons!54219 (t!361793 (toList!6925 lm!2473))))))

(assert (=> d!1533213 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230574)))

(assert (=> d!1533213 (= (extractMap!2450 (t!361793 (toList!6925 lm!2473))) lt!1951269)))

(declare-fun b!4792576 () Bool)

(assert (=> b!4792576 (= e!2992396 (addToMapMapFromBucket!1704 (_2!31725 (h!60643 (t!361793 (toList!6925 lm!2473)))) (extractMap!2450 (t!361793 (t!361793 (toList!6925 lm!2473))))))))

(declare-fun b!4792577 () Bool)

(assert (=> b!4792577 (= e!2992396 (ListMap!6398 Nil!54218))))

(assert (= (and d!1533213 c!816835) b!4792576))

(assert (= (and d!1533213 (not c!816835)) b!4792577))

(declare-fun m!5773324 () Bool)

(assert (=> d!1533213 m!5773324))

(declare-fun m!5773326 () Bool)

(assert (=> d!1533213 m!5773326))

(declare-fun m!5773328 () Bool)

(assert (=> b!4792576 m!5773328))

(assert (=> b!4792576 m!5773328))

(declare-fun m!5773330 () Bool)

(assert (=> b!4792576 m!5773330))

(assert (=> b!4792224 d!1533213))

(assert (=> d!1533067 d!1533065))

(declare-fun d!1533215 () Bool)

(assert (=> d!1533215 (containsKeyBiggerList!565 (toList!6925 lm!2473) key!5896)))

(assert (=> d!1533215 true))

(declare-fun _$33!826 () Unit!139927)

(assert (=> d!1533215 (= (choose!34500 lm!2473 key!5896 hashF!1559) _$33!826)))

(declare-fun bs!1154761 () Bool)

(assert (= bs!1154761 d!1533215))

(assert (=> bs!1154761 m!5772764))

(assert (=> d!1533067 d!1533215))

(declare-fun d!1533217 () Bool)

(declare-fun res!2037044 () Bool)

(declare-fun e!2992397 () Bool)

(assert (=> d!1533217 (=> res!2037044 e!2992397)))

(assert (=> d!1533217 (= res!2037044 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533217 (= (forall!12248 (toList!6925 lm!2473) lambda!230508) e!2992397)))

(declare-fun b!4792578 () Bool)

(declare-fun e!2992398 () Bool)

(assert (=> b!4792578 (= e!2992397 e!2992398)))

(declare-fun res!2037045 () Bool)

(assert (=> b!4792578 (=> (not res!2037045) (not e!2992398))))

(assert (=> b!4792578 (= res!2037045 (dynLambda!22053 lambda!230508 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792579 () Bool)

(assert (=> b!4792579 (= e!2992398 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230508))))

(assert (= (and d!1533217 (not res!2037044)) b!4792578))

(assert (= (and b!4792578 res!2037045) b!4792579))

(declare-fun b_lambda!186631 () Bool)

(assert (=> (not b_lambda!186631) (not b!4792578)))

(declare-fun m!5773332 () Bool)

(assert (=> b!4792578 m!5773332))

(declare-fun m!5773334 () Bool)

(assert (=> b!4792579 m!5773334))

(assert (=> d!1533067 d!1533217))

(declare-fun d!1533219 () Bool)

(declare-fun lt!1951272 () Bool)

(declare-fun content!9701 (List!54346) (Set K!15797))

(assert (=> d!1533219 (= lt!1951272 (set.member key!5896 (content!9701 (keys!19796 (extractMap!2450 (toList!6925 lm!2473))))))))

(declare-fun e!2992403 () Bool)

(assert (=> d!1533219 (= lt!1951272 e!2992403)))

(declare-fun res!2037050 () Bool)

(assert (=> d!1533219 (=> (not res!2037050) (not e!2992403))))

(assert (=> d!1533219 (= res!2037050 (is-Cons!54222 (keys!19796 (extractMap!2450 (toList!6925 lm!2473)))))))

(assert (=> d!1533219 (= (contains!17835 (keys!19796 (extractMap!2450 (toList!6925 lm!2473))) key!5896) lt!1951272)))

(declare-fun b!4792584 () Bool)

(declare-fun e!2992404 () Bool)

(assert (=> b!4792584 (= e!2992403 e!2992404)))

(declare-fun res!2037051 () Bool)

(assert (=> b!4792584 (=> res!2037051 e!2992404)))

(assert (=> b!4792584 (= res!2037051 (= (h!60646 (keys!19796 (extractMap!2450 (toList!6925 lm!2473)))) key!5896))))

(declare-fun b!4792585 () Bool)

(assert (=> b!4792585 (= e!2992404 (contains!17835 (t!361796 (keys!19796 (extractMap!2450 (toList!6925 lm!2473)))) key!5896))))

(assert (= (and d!1533219 res!2037050) b!4792584))

(assert (= (and b!4792584 (not res!2037051)) b!4792585))

(assert (=> d!1533219 m!5772904))

(declare-fun m!5773336 () Bool)

(assert (=> d!1533219 m!5773336))

(declare-fun m!5773338 () Bool)

(assert (=> d!1533219 m!5773338))

(declare-fun m!5773340 () Bool)

(assert (=> b!4792585 m!5773340))

(assert (=> b!4792207 d!1533219))

(declare-fun b!4792593 () Bool)

(assert (=> b!4792593 true))

(declare-fun d!1533221 () Bool)

(declare-fun e!2992407 () Bool)

(assert (=> d!1533221 e!2992407))

(declare-fun res!2037059 () Bool)

(assert (=> d!1533221 (=> (not res!2037059) (not e!2992407))))

(declare-fun lt!1951275 () List!54346)

(declare-fun noDuplicate!917 (List!54346) Bool)

(assert (=> d!1533221 (= res!2037059 (noDuplicate!917 lt!1951275))))

(assert (=> d!1533221 (= lt!1951275 (getKeysList!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))

(assert (=> d!1533221 (= (keys!19796 (extractMap!2450 (toList!6925 lm!2473))) lt!1951275)))

(declare-fun b!4792592 () Bool)

(declare-fun res!2037060 () Bool)

(assert (=> b!4792592 (=> (not res!2037060) (not e!2992407))))

(declare-fun length!690 (List!54346) Int)

(declare-fun length!691 (List!54342) Int)

(assert (=> b!4792592 (= res!2037060 (= (length!690 lt!1951275) (length!691 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))))

(declare-fun res!2037058 () Bool)

(assert (=> b!4792593 (=> (not res!2037058) (not e!2992407))))

(declare-fun lambda!230579 () Int)

(declare-fun forall!12253 (List!54346 Int) Bool)

(assert (=> b!4792593 (= res!2037058 (forall!12253 lt!1951275 lambda!230579))))

(declare-fun b!4792594 () Bool)

(declare-fun lambda!230580 () Int)

(declare-fun map!12240 (List!54342 Int) List!54346)

(assert (=> b!4792594 (= e!2992407 (= (content!9701 lt!1951275) (content!9701 (map!12240 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) lambda!230580))))))

(assert (= (and d!1533221 res!2037059) b!4792592))

(assert (= (and b!4792592 res!2037060) b!4792593))

(assert (= (and b!4792593 res!2037058) b!4792594))

(declare-fun m!5773342 () Bool)

(assert (=> d!1533221 m!5773342))

(assert (=> d!1533221 m!5772908))

(declare-fun m!5773344 () Bool)

(assert (=> b!4792592 m!5773344))

(declare-fun m!5773346 () Bool)

(assert (=> b!4792592 m!5773346))

(declare-fun m!5773348 () Bool)

(assert (=> b!4792593 m!5773348))

(declare-fun m!5773350 () Bool)

(assert (=> b!4792594 m!5773350))

(declare-fun m!5773352 () Bool)

(assert (=> b!4792594 m!5773352))

(assert (=> b!4792594 m!5773352))

(declare-fun m!5773354 () Bool)

(assert (=> b!4792594 m!5773354))

(assert (=> b!4792207 d!1533221))

(declare-fun bs!1154762 () Bool)

(declare-fun b!4792623 () Bool)

(assert (= bs!1154762 (and b!4792623 b!4792593)))

(declare-fun lambda!230589 () Int)

(assert (=> bs!1154762 (= (= (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (= lambda!230589 lambda!230579))))

(assert (=> b!4792623 true))

(declare-fun bs!1154763 () Bool)

(declare-fun b!4792619 () Bool)

(assert (= bs!1154763 (and b!4792619 b!4792593)))

(declare-fun lambda!230590 () Int)

(assert (=> bs!1154763 (= (= (Cons!54218 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (= lambda!230590 lambda!230579))))

(declare-fun bs!1154764 () Bool)

(assert (= bs!1154764 (and b!4792619 b!4792623)))

(assert (=> bs!1154764 (= (= (Cons!54218 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (= lambda!230590 lambda!230589))))

(assert (=> b!4792619 true))

(declare-fun bs!1154765 () Bool)

(declare-fun b!4792617 () Bool)

(assert (= bs!1154765 (and b!4792617 b!4792593)))

(declare-fun lambda!230591 () Int)

(assert (=> bs!1154765 (= lambda!230591 lambda!230579)))

(declare-fun bs!1154766 () Bool)

(assert (= bs!1154766 (and b!4792617 b!4792623)))

(assert (=> bs!1154766 (= (= (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (= lambda!230591 lambda!230589))))

(declare-fun bs!1154767 () Bool)

(assert (= bs!1154767 (and b!4792617 b!4792619)))

(assert (=> bs!1154767 (= (= (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) (Cons!54218 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))) (= lambda!230591 lambda!230590))))

(assert (=> b!4792617 true))

(declare-fun bs!1154768 () Bool)

(declare-fun b!4792615 () Bool)

(assert (= bs!1154768 (and b!4792615 b!4792594)))

(declare-fun lambda!230592 () Int)

(assert (=> bs!1154768 (= lambda!230592 lambda!230580)))

(declare-fun e!2992419 () Bool)

(declare-fun lt!1951296 () List!54346)

(assert (=> b!4792615 (= e!2992419 (= (content!9701 lt!1951296) (content!9701 (map!12240 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) lambda!230592))))))

(declare-fun res!2037068 () Bool)

(assert (=> b!4792617 (=> (not res!2037068) (not e!2992419))))

(assert (=> b!4792617 (= res!2037068 (forall!12253 lt!1951296 lambda!230591))))

(declare-fun b!4792618 () Bool)

(declare-fun e!2992416 () List!54346)

(assert (=> b!4792618 (= e!2992416 Nil!54222)))

(assert (=> b!4792619 (= e!2992416 (Cons!54222 (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (getKeysList!1073 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))))

(declare-fun c!816843 () Bool)

(assert (=> b!4792619 (= c!816843 (containsKey!3945 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))))

(declare-fun lt!1951290 () Unit!139927)

(declare-fun e!2992417 () Unit!139927)

(assert (=> b!4792619 (= lt!1951290 e!2992417)))

(declare-fun c!816844 () Bool)

(assert (=> b!4792619 (= c!816844 (contains!17835 (getKeysList!1073 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))))

(declare-fun lt!1951295 () Unit!139927)

(declare-fun e!2992418 () Unit!139927)

(assert (=> b!4792619 (= lt!1951295 e!2992418)))

(declare-fun lt!1951294 () List!54346)

(assert (=> b!4792619 (= lt!1951294 (getKeysList!1073 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))))

(declare-fun lt!1951293 () Unit!139927)

(declare-fun lemmaForallContainsAddHeadPreserves!332 (List!54342 List!54346 tuple2!56860) Unit!139927)

(assert (=> b!4792619 (= lt!1951293 (lemmaForallContainsAddHeadPreserves!332 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) lt!1951294 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))))

(assert (=> b!4792619 (forall!12253 lt!1951294 lambda!230590)))

(declare-fun lt!1951291 () Unit!139927)

(assert (=> b!4792619 (= lt!1951291 lt!1951293)))

(declare-fun b!4792620 () Bool)

(assert (=> b!4792620 false))

(declare-fun Unit!139954 () Unit!139927)

(assert (=> b!4792620 (= e!2992417 Unit!139954)))

(declare-fun d!1533223 () Bool)

(assert (=> d!1533223 e!2992419))

(declare-fun res!2037069 () Bool)

(assert (=> d!1533223 (=> (not res!2037069) (not e!2992419))))

(assert (=> d!1533223 (= res!2037069 (noDuplicate!917 lt!1951296))))

(assert (=> d!1533223 (= lt!1951296 e!2992416)))

(declare-fun c!816842 () Bool)

(assert (=> d!1533223 (= c!816842 (is-Cons!54218 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))

(assert (=> d!1533223 (invariantList!1727 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))

(assert (=> d!1533223 (= (getKeysList!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) lt!1951296)))

(declare-fun b!4792616 () Bool)

(declare-fun Unit!139955 () Unit!139927)

(assert (=> b!4792616 (= e!2992418 Unit!139955)))

(declare-fun b!4792621 () Bool)

(declare-fun res!2037067 () Bool)

(assert (=> b!4792621 (=> (not res!2037067) (not e!2992419))))

(assert (=> b!4792621 (= res!2037067 (= (length!690 lt!1951296) (length!691 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))))

(declare-fun b!4792622 () Bool)

(declare-fun Unit!139956 () Unit!139927)

(assert (=> b!4792622 (= e!2992417 Unit!139956)))

(assert (=> b!4792623 false))

(declare-fun lt!1951292 () Unit!139927)

(declare-fun forallContained!4159 (List!54346 Int K!15797) Unit!139927)

(assert (=> b!4792623 (= lt!1951292 (forallContained!4159 (getKeysList!1073 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) lambda!230589 (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))))

(declare-fun Unit!139957 () Unit!139927)

(assert (=> b!4792623 (= e!2992418 Unit!139957)))

(assert (= (and d!1533223 c!816842) b!4792619))

(assert (= (and d!1533223 (not c!816842)) b!4792618))

(assert (= (and b!4792619 c!816843) b!4792620))

(assert (= (and b!4792619 (not c!816843)) b!4792622))

(assert (= (and b!4792619 c!816844) b!4792623))

(assert (= (and b!4792619 (not c!816844)) b!4792616))

(assert (= (and d!1533223 res!2037069) b!4792621))

(assert (= (and b!4792621 res!2037067) b!4792617))

(assert (= (and b!4792617 res!2037068) b!4792615))

(declare-fun m!5773356 () Bool)

(assert (=> b!4792617 m!5773356))

(declare-fun m!5773358 () Bool)

(assert (=> b!4792623 m!5773358))

(assert (=> b!4792623 m!5773358))

(declare-fun m!5773360 () Bool)

(assert (=> b!4792623 m!5773360))

(declare-fun m!5773362 () Bool)

(assert (=> b!4792615 m!5773362))

(declare-fun m!5773364 () Bool)

(assert (=> b!4792615 m!5773364))

(assert (=> b!4792615 m!5773364))

(declare-fun m!5773366 () Bool)

(assert (=> b!4792615 m!5773366))

(assert (=> b!4792619 m!5773358))

(declare-fun m!5773368 () Bool)

(assert (=> b!4792619 m!5773368))

(declare-fun m!5773370 () Bool)

(assert (=> b!4792619 m!5773370))

(declare-fun m!5773372 () Bool)

(assert (=> b!4792619 m!5773372))

(declare-fun m!5773374 () Bool)

(assert (=> b!4792619 m!5773374))

(assert (=> b!4792619 m!5773358))

(declare-fun m!5773376 () Bool)

(assert (=> b!4792621 m!5773376))

(assert (=> b!4792621 m!5773346))

(declare-fun m!5773378 () Bool)

(assert (=> d!1533223 m!5773378))

(declare-fun m!5773380 () Bool)

(assert (=> d!1533223 m!5773380))

(assert (=> b!4792205 d!1533223))

(declare-fun d!1533225 () Bool)

(assert (=> d!1533225 (= (get!18477 (getPair!895 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896)) (v!48370 (getPair!895 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896)))))

(assert (=> b!4792329 d!1533225))

(declare-fun b!4792626 () Bool)

(declare-fun e!2992421 () Option!13092)

(assert (=> b!4792626 (= e!2992421 (Some!13091 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun b!4792627 () Bool)

(declare-fun res!2037073 () Bool)

(declare-fun e!2992423 () Bool)

(assert (=> b!4792627 (=> (not res!2037073) (not e!2992423))))

(declare-fun lt!1951297 () Option!13092)

(assert (=> b!4792627 (= res!2037073 (= (_1!31724 (get!18477 lt!1951297)) key!5896))))

(declare-fun b!4792628 () Bool)

(assert (=> b!4792628 (= e!2992423 (contains!17833 (_2!31725 (h!60643 (toList!6925 lm!2473))) (get!18477 lt!1951297)))))

(declare-fun b!4792629 () Bool)

(declare-fun e!2992424 () Option!13092)

(assert (=> b!4792629 (= e!2992424 (getPair!895 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) key!5896))))

(declare-fun b!4792630 () Bool)

(declare-fun e!2992422 () Bool)

(assert (=> b!4792630 (= e!2992422 (not (containsKey!3943 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896)))))

(declare-fun b!4792631 () Bool)

(declare-fun e!2992420 () Bool)

(assert (=> b!4792631 (= e!2992420 e!2992423)))

(declare-fun res!2037070 () Bool)

(assert (=> b!4792631 (=> (not res!2037070) (not e!2992423))))

(assert (=> b!4792631 (= res!2037070 (isDefined!10234 lt!1951297))))

(declare-fun d!1533227 () Bool)

(assert (=> d!1533227 e!2992420))

(declare-fun res!2037071 () Bool)

(assert (=> d!1533227 (=> res!2037071 e!2992420)))

(assert (=> d!1533227 (= res!2037071 e!2992422)))

(declare-fun res!2037072 () Bool)

(assert (=> d!1533227 (=> (not res!2037072) (not e!2992422))))

(assert (=> d!1533227 (= res!2037072 (isEmpty!29443 lt!1951297))))

(assert (=> d!1533227 (= lt!1951297 e!2992421)))

(declare-fun c!816845 () Bool)

(assert (=> d!1533227 (= c!816845 (and (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (= (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))) key!5896)))))

(assert (=> d!1533227 (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473))))))

(assert (=> d!1533227 (= (getPair!895 (_2!31725 (h!60643 (toList!6925 lm!2473))) key!5896) lt!1951297)))

(declare-fun b!4792632 () Bool)

(assert (=> b!4792632 (= e!2992421 e!2992424)))

(declare-fun c!816846 () Bool)

(assert (=> b!4792632 (= c!816846 (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(declare-fun b!4792633 () Bool)

(assert (=> b!4792633 (= e!2992424 None!13091)))

(assert (= (and d!1533227 c!816845) b!4792626))

(assert (= (and d!1533227 (not c!816845)) b!4792632))

(assert (= (and b!4792632 c!816846) b!4792629))

(assert (= (and b!4792632 (not c!816846)) b!4792633))

(assert (= (and d!1533227 res!2037072) b!4792630))

(assert (= (and d!1533227 (not res!2037071)) b!4792631))

(assert (= (and b!4792631 res!2037070) b!4792627))

(assert (= (and b!4792627 res!2037073) b!4792628))

(declare-fun m!5773382 () Bool)

(assert (=> b!4792629 m!5773382))

(declare-fun m!5773384 () Bool)

(assert (=> b!4792628 m!5773384))

(assert (=> b!4792628 m!5773384))

(declare-fun m!5773386 () Bool)

(assert (=> b!4792628 m!5773386))

(assert (=> b!4792627 m!5773384))

(declare-fun m!5773388 () Bool)

(assert (=> d!1533227 m!5773388))

(assert (=> d!1533227 m!5773036))

(declare-fun m!5773390 () Bool)

(assert (=> b!4792631 m!5773390))

(assert (=> b!4792630 m!5772762))

(assert (=> b!4792329 d!1533227))

(assert (=> b!4792206 d!1533219))

(assert (=> b!4792206 d!1533221))

(declare-fun d!1533229 () Bool)

(declare-fun res!2037078 () Bool)

(declare-fun e!2992429 () Bool)

(assert (=> d!1533229 (=> res!2037078 e!2992429)))

(assert (=> d!1533229 (= res!2037078 (and (is-Cons!54218 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (= (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) key!5896)))))

(assert (=> d!1533229 (= (containsKey!3945 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896) e!2992429)))

(declare-fun b!4792638 () Bool)

(declare-fun e!2992430 () Bool)

(assert (=> b!4792638 (= e!2992429 e!2992430)))

(declare-fun res!2037079 () Bool)

(assert (=> b!4792638 (=> (not res!2037079) (not e!2992430))))

(assert (=> b!4792638 (= res!2037079 (is-Cons!54218 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))

(declare-fun b!4792639 () Bool)

(assert (=> b!4792639 (= e!2992430 (containsKey!3945 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) key!5896))))

(assert (= (and d!1533229 (not res!2037078)) b!4792638))

(assert (= (and b!4792638 res!2037079) b!4792639))

(declare-fun m!5773392 () Bool)

(assert (=> b!4792639 m!5773392))

(assert (=> b!4792204 d!1533229))

(declare-fun d!1533231 () Bool)

(assert (=> d!1533231 (containsKey!3945 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896)))

(declare-fun lt!1951300 () Unit!139927)

(declare-fun choose!34509 (List!54342 K!15797) Unit!139927)

(assert (=> d!1533231 (= lt!1951300 (choose!34509 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(assert (=> d!1533231 (invariantList!1727 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))

(assert (=> d!1533231 (= (lemmaInGetKeysListThenContainsKey!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896) lt!1951300)))

(declare-fun bs!1154769 () Bool)

(assert (= bs!1154769 d!1533231))

(assert (=> bs!1154769 m!5772912))

(declare-fun m!5773394 () Bool)

(assert (=> bs!1154769 m!5773394))

(assert (=> bs!1154769 m!5773380))

(assert (=> b!4792204 d!1533231))

(declare-fun d!1533233 () Bool)

(assert (=> d!1533233 (= (isDefined!10234 lt!1951108) (not (isEmpty!29443 lt!1951108)))))

(declare-fun bs!1154770 () Bool)

(assert (= bs!1154770 d!1533233))

(assert (=> bs!1154770 m!5772952))

(assert (=> b!4792266 d!1533233))

(declare-fun d!1533235 () Bool)

(assert (=> d!1533235 (dynLambda!22053 lambda!230481 (h!60643 (toList!6925 lm!2473)))))

(assert (=> d!1533235 true))

(declare-fun _$7!2389 () Unit!139927)

(assert (=> d!1533235 (= (choose!34499 (toList!6925 lm!2473) lambda!230481 (h!60643 (toList!6925 lm!2473))) _$7!2389)))

(declare-fun b_lambda!186633 () Bool)

(assert (=> (not b_lambda!186633) (not d!1533235)))

(declare-fun bs!1154771 () Bool)

(assert (= bs!1154771 d!1533235))

(assert (=> bs!1154771 m!5772858))

(assert (=> d!1533027 d!1533235))

(declare-fun d!1533237 () Bool)

(declare-fun res!2037080 () Bool)

(declare-fun e!2992431 () Bool)

(assert (=> d!1533237 (=> res!2037080 e!2992431)))

(assert (=> d!1533237 (= res!2037080 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533237 (= (forall!12248 (toList!6925 lm!2473) lambda!230481) e!2992431)))

(declare-fun b!4792640 () Bool)

(declare-fun e!2992432 () Bool)

(assert (=> b!4792640 (= e!2992431 e!2992432)))

(declare-fun res!2037081 () Bool)

(assert (=> b!4792640 (=> (not res!2037081) (not e!2992432))))

(assert (=> b!4792640 (= res!2037081 (dynLambda!22053 lambda!230481 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792641 () Bool)

(assert (=> b!4792641 (= e!2992432 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230481))))

(assert (= (and d!1533237 (not res!2037080)) b!4792640))

(assert (= (and b!4792640 res!2037081) b!4792641))

(declare-fun b_lambda!186635 () Bool)

(assert (=> (not b_lambda!186635) (not b!4792640)))

(assert (=> b!4792640 m!5772858))

(declare-fun m!5773396 () Bool)

(assert (=> b!4792641 m!5773396))

(assert (=> d!1533027 d!1533237))

(declare-fun d!1533239 () Bool)

(declare-fun res!2037086 () Bool)

(declare-fun e!2992437 () Bool)

(assert (=> d!1533239 (=> res!2037086 e!2992437)))

(assert (=> d!1533239 (= res!2037086 (not (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473)))))))))

(assert (=> d!1533239 (= (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473))))) e!2992437)))

(declare-fun b!4792646 () Bool)

(declare-fun e!2992438 () Bool)

(assert (=> b!4792646 (= e!2992437 e!2992438)))

(declare-fun res!2037087 () Bool)

(assert (=> b!4792646 (=> (not res!2037087) (not e!2992438))))

(assert (=> b!4792646 (= res!2037087 (not (containsKey!3943 (t!361792 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473))))) (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473)))))))))))

(declare-fun b!4792647 () Bool)

(assert (=> b!4792647 (= e!2992438 (noDuplicateKeys!2337 (t!361792 (_2!31725 (h!60643 (toList!6925 (tail!9264 lm!2473)))))))))

(assert (= (and d!1533239 (not res!2037086)) b!4792646))

(assert (= (and b!4792646 res!2037087) b!4792647))

(declare-fun m!5773398 () Bool)

(assert (=> b!4792646 m!5773398))

(declare-fun m!5773400 () Bool)

(assert (=> b!4792647 m!5773400))

(assert (=> bs!1154715 d!1533239))

(assert (=> b!4792203 d!1533221))

(declare-fun d!1533241 () Bool)

(declare-fun res!2037088 () Bool)

(declare-fun e!2992439 () Bool)

(assert (=> d!1533241 (=> res!2037088 e!2992439)))

(assert (=> d!1533241 (= res!2037088 (and (is-Cons!54218 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473))))) (= (_1!31724 (h!60642 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))))) key!5896)))))

(assert (=> d!1533241 (= (containsKey!3943 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) key!5896) e!2992439)))

(declare-fun b!4792648 () Bool)

(declare-fun e!2992440 () Bool)

(assert (=> b!4792648 (= e!2992439 e!2992440)))

(declare-fun res!2037089 () Bool)

(assert (=> b!4792648 (=> (not res!2037089) (not e!2992440))))

(assert (=> b!4792648 (= res!2037089 (is-Cons!54218 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun b!4792649 () Bool)

(assert (=> b!4792649 (= e!2992440 (containsKey!3943 (t!361792 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473))))) key!5896))))

(assert (= (and d!1533241 (not res!2037088)) b!4792648))

(assert (= (and b!4792648 res!2037089) b!4792649))

(declare-fun m!5773402 () Bool)

(assert (=> b!4792649 m!5773402))

(assert (=> b!4792274 d!1533241))

(declare-fun d!1533243 () Bool)

(declare-fun isEmpty!29446 (Option!13094) Bool)

(assert (=> d!1533243 (= (isDefined!10236 (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896)) (not (isEmpty!29446 (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))))

(declare-fun bs!1154772 () Bool)

(assert (= bs!1154772 d!1533243))

(assert (=> bs!1154772 m!5772896))

(declare-fun m!5773404 () Bool)

(assert (=> bs!1154772 m!5773404))

(assert (=> b!4792211 d!1533243))

(declare-fun b!4792664 () Bool)

(declare-fun e!2992448 () Option!13094)

(assert (=> b!4792664 (= e!2992448 (getValueByKey!2345 (t!361792 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) key!5896))))

(declare-fun b!4792663 () Bool)

(declare-fun e!2992447 () Option!13094)

(assert (=> b!4792663 (= e!2992447 e!2992448)))

(declare-fun c!816854 () Bool)

(assert (=> b!4792663 (= c!816854 (and (is-Cons!54218 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (not (= (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) key!5896))))))

(declare-fun b!4792662 () Bool)

(assert (=> b!4792662 (= e!2992447 (Some!13093 (_2!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))))))))

(declare-fun b!4792665 () Bool)

(assert (=> b!4792665 (= e!2992448 None!13093)))

(declare-fun d!1533245 () Bool)

(declare-fun c!816853 () Bool)

(assert (=> d!1533245 (= c!816853 (and (is-Cons!54218 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) (= (_1!31724 (h!60642 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))) key!5896)))))

(assert (=> d!1533245 (= (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896) e!2992447)))

(assert (= (and d!1533245 c!816853) b!4792662))

(assert (= (and d!1533245 (not c!816853)) b!4792663))

(assert (= (and b!4792663 c!816854) b!4792664))

(assert (= (and b!4792663 (not c!816854)) b!4792665))

(declare-fun m!5773406 () Bool)

(assert (=> b!4792664 m!5773406))

(assert (=> b!4792211 d!1533245))

(declare-fun d!1533247 () Bool)

(declare-fun lt!1951309 () Bool)

(assert (=> d!1533247 (= lt!1951309 (set.member (tuple2!56861 key!5896 value!3111) (content!9699 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(declare-fun e!2992449 () Bool)

(assert (=> d!1533247 (= lt!1951309 e!2992449)))

(declare-fun res!2037090 () Bool)

(assert (=> d!1533247 (=> (not res!2037090) (not e!2992449))))

(assert (=> d!1533247 (= res!2037090 (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> d!1533247 (= (contains!17833 (_2!31725 (h!60643 (toList!6925 lm!2473))) (tuple2!56861 key!5896 value!3111)) lt!1951309)))

(declare-fun b!4792666 () Bool)

(declare-fun e!2992450 () Bool)

(assert (=> b!4792666 (= e!2992449 e!2992450)))

(declare-fun res!2037091 () Bool)

(assert (=> b!4792666 (=> res!2037091 e!2992450)))

(assert (=> b!4792666 (= res!2037091 (= (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (tuple2!56861 key!5896 value!3111)))))

(declare-fun b!4792667 () Bool)

(assert (=> b!4792667 (= e!2992450 (contains!17833 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (tuple2!56861 key!5896 value!3111)))))

(assert (= (and d!1533247 res!2037090) b!4792666))

(assert (= (and b!4792666 (not res!2037091)) b!4792667))

(declare-fun m!5773408 () Bool)

(assert (=> d!1533247 m!5773408))

(declare-fun m!5773410 () Bool)

(assert (=> d!1533247 m!5773410))

(declare-fun m!5773412 () Bool)

(assert (=> b!4792667 m!5773412))

(assert (=> b!4792145 d!1533247))

(declare-fun d!1533249 () Bool)

(declare-fun noDuplicatedKeys!436 (List!54342) Bool)

(assert (=> d!1533249 (= (invariantList!1727 (toList!6926 lt!1951097)) (noDuplicatedKeys!436 (toList!6926 lt!1951097)))))

(declare-fun bs!1154773 () Bool)

(assert (= bs!1154773 d!1533249))

(declare-fun m!5773414 () Bool)

(assert (=> bs!1154773 m!5773414))

(assert (=> d!1533047 d!1533249))

(declare-fun d!1533251 () Bool)

(declare-fun res!2037092 () Bool)

(declare-fun e!2992451 () Bool)

(assert (=> d!1533251 (=> res!2037092 e!2992451)))

(assert (=> d!1533251 (= res!2037092 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533251 (= (forall!12248 (toList!6925 lm!2473) lambda!230499) e!2992451)))

(declare-fun b!4792668 () Bool)

(declare-fun e!2992452 () Bool)

(assert (=> b!4792668 (= e!2992451 e!2992452)))

(declare-fun res!2037093 () Bool)

(assert (=> b!4792668 (=> (not res!2037093) (not e!2992452))))

(assert (=> b!4792668 (= res!2037093 (dynLambda!22053 lambda!230499 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792669 () Bool)

(assert (=> b!4792669 (= e!2992452 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230499))))

(assert (= (and d!1533251 (not res!2037092)) b!4792668))

(assert (= (and b!4792668 res!2037093) b!4792669))

(declare-fun b_lambda!186637 () Bool)

(assert (=> (not b_lambda!186637) (not b!4792668)))

(declare-fun m!5773416 () Bool)

(assert (=> b!4792668 m!5773416))

(declare-fun m!5773418 () Bool)

(assert (=> b!4792669 m!5773418))

(assert (=> d!1533047 d!1533251))

(declare-fun d!1533253 () Bool)

(declare-fun lt!1951318 () Bool)

(assert (=> d!1533253 (= lt!1951318 (set.member key!5896 (content!9701 e!2992140)))))

(declare-fun e!2992453 () Bool)

(assert (=> d!1533253 (= lt!1951318 e!2992453)))

(declare-fun res!2037094 () Bool)

(assert (=> d!1533253 (=> (not res!2037094) (not e!2992453))))

(assert (=> d!1533253 (= res!2037094 (is-Cons!54222 e!2992140))))

(assert (=> d!1533253 (= (contains!17835 e!2992140 key!5896) lt!1951318)))

(declare-fun b!4792670 () Bool)

(declare-fun e!2992454 () Bool)

(assert (=> b!4792670 (= e!2992453 e!2992454)))

(declare-fun res!2037095 () Bool)

(assert (=> b!4792670 (=> res!2037095 e!2992454)))

(assert (=> b!4792670 (= res!2037095 (= (h!60646 e!2992140) key!5896))))

(declare-fun b!4792671 () Bool)

(assert (=> b!4792671 (= e!2992454 (contains!17835 (t!361796 e!2992140) key!5896))))

(assert (= (and d!1533253 res!2037094) b!4792670))

(assert (= (and b!4792670 (not res!2037095)) b!4792671))

(declare-fun m!5773420 () Bool)

(assert (=> d!1533253 m!5773420))

(declare-fun m!5773422 () Bool)

(assert (=> d!1533253 m!5773422))

(declare-fun m!5773424 () Bool)

(assert (=> b!4792671 m!5773424))

(assert (=> bm!335014 d!1533253))

(assert (=> b!4792331 d!1533057))

(declare-fun d!1533255 () Bool)

(declare-fun res!2037096 () Bool)

(declare-fun e!2992455 () Bool)

(assert (=> d!1533255 (=> res!2037096 e!2992455)))

(assert (=> d!1533255 (= res!2037096 (is-Nil!54219 (t!361793 (toList!6925 (tail!9264 lm!2473)))))))

(assert (=> d!1533255 (= (forall!12248 (t!361793 (toList!6925 (tail!9264 lm!2473))) lambda!230480) e!2992455)))

(declare-fun b!4792672 () Bool)

(declare-fun e!2992456 () Bool)

(assert (=> b!4792672 (= e!2992455 e!2992456)))

(declare-fun res!2037097 () Bool)

(assert (=> b!4792672 (=> (not res!2037097) (not e!2992456))))

(assert (=> b!4792672 (= res!2037097 (dynLambda!22053 lambda!230480 (h!60643 (t!361793 (toList!6925 (tail!9264 lm!2473))))))))

(declare-fun b!4792673 () Bool)

(assert (=> b!4792673 (= e!2992456 (forall!12248 (t!361793 (t!361793 (toList!6925 (tail!9264 lm!2473)))) lambda!230480))))

(assert (= (and d!1533255 (not res!2037096)) b!4792672))

(assert (= (and b!4792672 res!2037097) b!4792673))

(declare-fun b_lambda!186639 () Bool)

(assert (=> (not b_lambda!186639) (not b!4792672)))

(declare-fun m!5773426 () Bool)

(assert (=> b!4792672 m!5773426))

(declare-fun m!5773428 () Bool)

(assert (=> b!4792673 m!5773428))

(assert (=> b!4792142 d!1533255))

(declare-fun d!1533257 () Bool)

(assert (=> d!1533257 (isDefined!10236 (getValueByKey!2345 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(declare-fun lt!1951329 () Unit!139927)

(declare-fun choose!34510 (List!54342 K!15797) Unit!139927)

(assert (=> d!1533257 (= lt!1951329 (choose!34510 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(assert (=> d!1533257 (invariantList!1727 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))

(assert (=> d!1533257 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2137 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896) lt!1951329)))

(declare-fun bs!1154774 () Bool)

(assert (= bs!1154774 d!1533257))

(assert (=> bs!1154774 m!5772896))

(assert (=> bs!1154774 m!5772896))

(assert (=> bs!1154774 m!5772898))

(declare-fun m!5773430 () Bool)

(assert (=> bs!1154774 m!5773430))

(assert (=> bs!1154774 m!5773380))

(assert (=> b!4792209 d!1533257))

(assert (=> b!4792209 d!1533243))

(assert (=> b!4792209 d!1533245))

(declare-fun d!1533259 () Bool)

(assert (=> d!1533259 (contains!17835 (getKeysList!1073 (toList!6926 (extractMap!2450 (toList!6925 lm!2473)))) key!5896)))

(declare-fun lt!1951346 () Unit!139927)

(declare-fun choose!34511 (List!54342 K!15797) Unit!139927)

(assert (=> d!1533259 (= lt!1951346 (choose!34511 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896))))

(assert (=> d!1533259 (invariantList!1727 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))))))

(assert (=> d!1533259 (= (lemmaInListThenGetKeysListContains!1068 (toList!6926 (extractMap!2450 (toList!6925 lm!2473))) key!5896) lt!1951346)))

(declare-fun bs!1154775 () Bool)

(assert (= bs!1154775 d!1533259))

(assert (=> bs!1154775 m!5772908))

(assert (=> bs!1154775 m!5772908))

(declare-fun m!5773432 () Bool)

(assert (=> bs!1154775 m!5773432))

(declare-fun m!5773434 () Bool)

(assert (=> bs!1154775 m!5773434))

(assert (=> bs!1154775 m!5773380))

(assert (=> b!4792209 d!1533259))

(declare-fun d!1533261 () Bool)

(declare-fun c!816855 () Bool)

(declare-fun e!2992458 () Bool)

(assert (=> d!1533261 (= c!816855 e!2992458)))

(declare-fun res!2037098 () Bool)

(assert (=> d!1533261 (=> (not res!2037098) (not e!2992458))))

(assert (=> d!1533261 (= res!2037098 (is-Cons!54219 (t!361793 (toList!6925 lm!2473))))))

(declare-fun e!2992457 () V!16043)

(assert (=> d!1533261 (= (getValue!111 (t!361793 (toList!6925 lm!2473)) key!5896) e!2992457)))

(declare-fun b!4792676 () Bool)

(assert (=> b!4792676 (= e!2992458 (containsKey!3943 (_2!31725 (h!60643 (t!361793 (toList!6925 lm!2473)))) key!5896))))

(declare-fun b!4792674 () Bool)

(assert (=> b!4792674 (= e!2992457 (_2!31724 (get!18477 (getPair!895 (_2!31725 (h!60643 (t!361793 (toList!6925 lm!2473)))) key!5896))))))

(declare-fun b!4792675 () Bool)

(assert (=> b!4792675 (= e!2992457 (getValue!111 (t!361793 (t!361793 (toList!6925 lm!2473))) key!5896))))

(assert (= (and d!1533261 res!2037098) b!4792676))

(assert (= (and d!1533261 c!816855) b!4792674))

(assert (= (and d!1533261 (not c!816855)) b!4792675))

(assert (=> b!4792676 m!5773114))

(declare-fun m!5773436 () Bool)

(assert (=> b!4792674 m!5773436))

(assert (=> b!4792674 m!5773436))

(declare-fun m!5773438 () Bool)

(assert (=> b!4792674 m!5773438))

(declare-fun m!5773440 () Bool)

(assert (=> b!4792675 m!5773440))

(assert (=> b!4792330 d!1533261))

(declare-fun d!1533263 () Bool)

(assert (=> d!1533263 (= (isEmpty!29443 (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896)) (not (is-Some!13091 (getPair!895 (apply!12992 lm!2473 lt!1951028) key!5896))))))

(assert (=> d!1533049 d!1533263))

(declare-fun d!1533265 () Bool)

(declare-fun choose!34512 (Hashable!6923 K!15797) (_ BitVec 64))

(assert (=> d!1533265 (= (hash!4958 hashF!1559 key!5896) (choose!34512 hashF!1559 key!5896))))

(declare-fun bs!1154776 () Bool)

(assert (= bs!1154776 d!1533265))

(declare-fun m!5773442 () Bool)

(assert (=> bs!1154776 m!5773442))

(assert (=> d!1533081 d!1533265))

(declare-fun d!1533267 () Bool)

(declare-fun res!2037101 () Bool)

(declare-fun e!2992461 () Bool)

(assert (=> d!1533267 (=> res!2037101 e!2992461)))

(assert (=> d!1533267 (= res!2037101 (not (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(assert (=> d!1533267 (= (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473)))) e!2992461)))

(declare-fun b!4792679 () Bool)

(declare-fun e!2992462 () Bool)

(assert (=> b!4792679 (= e!2992461 e!2992462)))

(declare-fun res!2037102 () Bool)

(assert (=> b!4792679 (=> (not res!2037102) (not e!2992462))))

(assert (=> b!4792679 (= res!2037102 (not (containsKey!3943 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473)))) (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))))

(declare-fun b!4792680 () Bool)

(assert (=> b!4792680 (= e!2992462 (noDuplicateKeys!2337 (t!361792 (_2!31725 (h!60643 (toList!6925 lm!2473))))))))

(assert (= (and d!1533267 (not res!2037101)) b!4792679))

(assert (= (and b!4792679 res!2037102) b!4792680))

(declare-fun m!5773444 () Bool)

(assert (=> b!4792679 m!5773444))

(declare-fun m!5773446 () Bool)

(assert (=> b!4792680 m!5773446))

(assert (=> bs!1154716 d!1533267))

(declare-fun d!1533269 () Bool)

(assert (=> d!1533269 (= (tail!9266 (toList!6925 lm!2473)) (t!361793 (toList!6925 lm!2473)))))

(assert (=> d!1533023 d!1533269))

(declare-fun d!1533271 () Bool)

(assert (=> d!1533271 (= (isEmpty!29443 lt!1951108) (not (is-Some!13091 lt!1951108)))))

(assert (=> d!1533051 d!1533271))

(declare-fun d!1533273 () Bool)

(declare-fun res!2037103 () Bool)

(declare-fun e!2992463 () Bool)

(assert (=> d!1533273 (=> res!2037103 e!2992463)))

(assert (=> d!1533273 (= res!2037103 (not (is-Cons!54218 (apply!12992 lm!2473 lt!1951028))))))

(assert (=> d!1533273 (= (noDuplicateKeys!2337 (apply!12992 lm!2473 lt!1951028)) e!2992463)))

(declare-fun b!4792681 () Bool)

(declare-fun e!2992464 () Bool)

(assert (=> b!4792681 (= e!2992463 e!2992464)))

(declare-fun res!2037104 () Bool)

(assert (=> b!4792681 (=> (not res!2037104) (not e!2992464))))

(assert (=> b!4792681 (= res!2037104 (not (containsKey!3943 (t!361792 (apply!12992 lm!2473 lt!1951028)) (_1!31724 (h!60642 (apply!12992 lm!2473 lt!1951028))))))))

(declare-fun b!4792682 () Bool)

(assert (=> b!4792682 (= e!2992464 (noDuplicateKeys!2337 (t!361792 (apply!12992 lm!2473 lt!1951028))))))

(assert (= (and d!1533273 (not res!2037103)) b!4792681))

(assert (= (and b!4792681 res!2037104) b!4792682))

(declare-fun m!5773448 () Bool)

(assert (=> b!4792681 m!5773448))

(assert (=> b!4792682 m!5773126))

(assert (=> d!1533051 d!1533273))

(declare-fun d!1533275 () Bool)

(declare-fun lt!1951353 () Bool)

(declare-fun content!9702 (List!54343) (Set tuple2!56862))

(assert (=> d!1533275 (= lt!1951353 (set.member (h!60643 (toList!6925 lm!2473)) (content!9702 (toList!6925 lm!2473))))))

(declare-fun e!2992472 () Bool)

(assert (=> d!1533275 (= lt!1951353 e!2992472)))

(declare-fun res!2037114 () Bool)

(assert (=> d!1533275 (=> (not res!2037114) (not e!2992472))))

(assert (=> d!1533275 (= res!2037114 (is-Cons!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533275 (= (contains!17834 (toList!6925 lm!2473) (h!60643 (toList!6925 lm!2473))) lt!1951353)))

(declare-fun b!4792689 () Bool)

(declare-fun e!2992471 () Bool)

(assert (=> b!4792689 (= e!2992472 e!2992471)))

(declare-fun res!2037113 () Bool)

(assert (=> b!4792689 (=> res!2037113 e!2992471)))

(assert (=> b!4792689 (= res!2037113 (= (h!60643 (toList!6925 lm!2473)) (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792690 () Bool)

(assert (=> b!4792690 (= e!2992471 (contains!17834 (t!361793 (toList!6925 lm!2473)) (h!60643 (toList!6925 lm!2473))))))

(assert (= (and d!1533275 res!2037114) b!4792689))

(assert (= (and b!4792689 (not res!2037113)) b!4792690))

(declare-fun m!5773450 () Bool)

(assert (=> d!1533275 m!5773450))

(declare-fun m!5773452 () Bool)

(assert (=> d!1533275 m!5773452))

(declare-fun m!5773454 () Bool)

(assert (=> b!4792690 m!5773454))

(assert (=> b!4792152 d!1533275))

(declare-fun d!1533277 () Bool)

(declare-fun res!2037119 () Bool)

(declare-fun e!2992477 () Bool)

(assert (=> d!1533277 (=> res!2037119 e!2992477)))

(assert (=> d!1533277 (= res!2037119 (and (is-Cons!54219 (toList!6925 lm!2473)) (= (_1!31725 (h!60643 (toList!6925 lm!2473))) lt!1951028)))))

(assert (=> d!1533277 (= (containsKey!3947 (toList!6925 lm!2473) lt!1951028) e!2992477)))

(declare-fun b!4792697 () Bool)

(declare-fun e!2992478 () Bool)

(assert (=> b!4792697 (= e!2992477 e!2992478)))

(declare-fun res!2037120 () Bool)

(assert (=> b!4792697 (=> (not res!2037120) (not e!2992478))))

(assert (=> b!4792697 (= res!2037120 (and (or (not (is-Cons!54219 (toList!6925 lm!2473))) (bvsle (_1!31725 (h!60643 (toList!6925 lm!2473))) lt!1951028)) (is-Cons!54219 (toList!6925 lm!2473)) (bvslt (_1!31725 (h!60643 (toList!6925 lm!2473))) lt!1951028)))))

(declare-fun b!4792698 () Bool)

(assert (=> b!4792698 (= e!2992478 (containsKey!3947 (t!361793 (toList!6925 lm!2473)) lt!1951028))))

(assert (= (and d!1533277 (not res!2037119)) b!4792697))

(assert (= (and b!4792697 res!2037120) b!4792698))

(declare-fun m!5773456 () Bool)

(assert (=> b!4792698 m!5773456))

(assert (=> d!1533061 d!1533277))

(declare-fun d!1533279 () Bool)

(declare-fun res!2037125 () Bool)

(declare-fun e!2992483 () Bool)

(assert (=> d!1533279 (=> res!2037125 e!2992483)))

(assert (=> d!1533279 (= res!2037125 (or (is-Nil!54219 (toList!6925 lm!2473)) (is-Nil!54219 (t!361793 (toList!6925 lm!2473)))))))

(assert (=> d!1533279 (= (isStrictlySorted!875 (toList!6925 lm!2473)) e!2992483)))

(declare-fun b!4792703 () Bool)

(declare-fun e!2992484 () Bool)

(assert (=> b!4792703 (= e!2992483 e!2992484)))

(declare-fun res!2037126 () Bool)

(assert (=> b!4792703 (=> (not res!2037126) (not e!2992484))))

(assert (=> b!4792703 (= res!2037126 (bvslt (_1!31725 (h!60643 (toList!6925 lm!2473))) (_1!31725 (h!60643 (t!361793 (toList!6925 lm!2473))))))))

(declare-fun b!4792704 () Bool)

(assert (=> b!4792704 (= e!2992484 (isStrictlySorted!875 (t!361793 (toList!6925 lm!2473))))))

(assert (= (and d!1533279 (not res!2037125)) b!4792703))

(assert (= (and b!4792703 res!2037126) b!4792704))

(declare-fun m!5773458 () Bool)

(assert (=> b!4792704 m!5773458))

(assert (=> d!1533019 d!1533279))

(assert (=> d!1533031 d!1533229))

(declare-fun d!1533281 () Bool)

(declare-fun res!2037130 () Bool)

(declare-fun e!2992488 () Bool)

(assert (=> d!1533281 (=> res!2037130 e!2992488)))

(assert (=> d!1533281 (= res!2037130 (is-Nil!54219 (toList!6925 lm!2473)))))

(assert (=> d!1533281 (= (forall!12248 (toList!6925 lm!2473) lambda!230502) e!2992488)))

(declare-fun b!4792710 () Bool)

(declare-fun e!2992489 () Bool)

(assert (=> b!4792710 (= e!2992488 e!2992489)))

(declare-fun res!2037131 () Bool)

(assert (=> b!4792710 (=> (not res!2037131) (not e!2992489))))

(assert (=> b!4792710 (= res!2037131 (dynLambda!22053 lambda!230502 (h!60643 (toList!6925 lm!2473))))))

(declare-fun b!4792711 () Bool)

(assert (=> b!4792711 (= e!2992489 (forall!12248 (t!361793 (toList!6925 lm!2473)) lambda!230502))))

(assert (= (and d!1533281 (not res!2037130)) b!4792710))

(assert (= (and b!4792710 res!2037131) b!4792711))

(declare-fun b_lambda!186641 () Bool)

(assert (=> (not b_lambda!186641) (not b!4792710)))

(declare-fun m!5773460 () Bool)

(assert (=> b!4792710 m!5773460))

(declare-fun m!5773462 () Bool)

(assert (=> b!4792711 m!5773462))

(assert (=> d!1533059 d!1533281))

(declare-fun d!1533283 () Bool)

(assert (=> d!1533283 (= (hash!4956 hashF!1559 (_1!31724 (tuple2!56861 key!5896 value!3111))) (hash!4958 hashF!1559 (_1!31724 (tuple2!56861 key!5896 value!3111))))))

(declare-fun bs!1154778 () Bool)

(assert (= bs!1154778 d!1533283))

(declare-fun m!5773464 () Bool)

(assert (=> bs!1154778 m!5773464))

(assert (=> bs!1154717 d!1533283))

(declare-fun tp!1358029 () Bool)

(declare-fun b!4792718 () Bool)

(declare-fun e!2992492 () Bool)

(assert (=> b!4792718 (= e!2992492 (and tp_is_empty!33553 tp_is_empty!33555 tp!1358029))))

(assert (=> b!4792336 (= tp!1358019 e!2992492)))

(assert (= (and b!4792336 (is-Cons!54218 (_2!31725 (h!60643 (toList!6925 lm!2473))))) b!4792718))

(declare-fun b!4792719 () Bool)

(declare-fun e!2992493 () Bool)

(declare-fun tp!1358030 () Bool)

(declare-fun tp!1358031 () Bool)

(assert (=> b!4792719 (= e!2992493 (and tp!1358030 tp!1358031))))

(assert (=> b!4792336 (= tp!1358020 e!2992493)))

(assert (= (and b!4792336 (is-Cons!54219 (t!361793 (toList!6925 lm!2473)))) b!4792719))

(declare-fun b_lambda!186643 () Bool)

(assert (= b_lambda!186641 (or d!1533059 b_lambda!186643)))

(declare-fun bs!1154783 () Bool)

(declare-fun d!1533285 () Bool)

(assert (= bs!1154783 (and d!1533285 d!1533059)))

(assert (=> bs!1154783 (= (dynLambda!22053 lambda!230502 (h!60643 (toList!6925 lm!2473))) (allKeysSameHash!1955 (_2!31725 (h!60643 (toList!6925 lm!2473))) (_1!31725 (h!60643 (toList!6925 lm!2473))) hashF!1559))))

(assert (=> bs!1154783 m!5773032))

(assert (=> b!4792710 d!1533285))

(declare-fun b_lambda!186645 () Bool)

(assert (= b_lambda!186639 (or start!493400 b_lambda!186645)))

(declare-fun bs!1154784 () Bool)

(declare-fun d!1533287 () Bool)

(assert (= bs!1154784 (and d!1533287 start!493400)))

(assert (=> bs!1154784 (= (dynLambda!22053 lambda!230480 (h!60643 (t!361793 (toList!6925 (tail!9264 lm!2473))))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (t!361793 (toList!6925 (tail!9264 lm!2473)))))))))

(declare-fun m!5773466 () Bool)

(assert (=> bs!1154784 m!5773466))

(assert (=> b!4792672 d!1533287))

(declare-fun b_lambda!186647 () Bool)

(assert (= b_lambda!186613 (or d!1533073 b_lambda!186647)))

(declare-fun bs!1154785 () Bool)

(declare-fun d!1533289 () Bool)

(assert (= bs!1154785 (and d!1533289 d!1533073)))

(assert (=> bs!1154785 (= (dynLambda!22053 lambda!230514 (h!60643 (toList!6925 lm!2473))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> bs!1154785 m!5773036))

(assert (=> b!4792411 d!1533289))

(declare-fun b_lambda!186649 () Bool)

(assert (= b_lambda!186615 (or b!4792094 b_lambda!186649)))

(assert (=> d!1533143 d!1533089))

(declare-fun b_lambda!186651 () Bool)

(assert (= b_lambda!186631 (or d!1533067 b_lambda!186651)))

(declare-fun bs!1154786 () Bool)

(declare-fun d!1533291 () Bool)

(assert (= bs!1154786 (and d!1533291 d!1533067)))

(assert (=> bs!1154786 (= (dynLambda!22053 lambda!230508 (h!60643 (toList!6925 lm!2473))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> bs!1154786 m!5773036))

(assert (=> b!4792578 d!1533291))

(declare-fun b_lambda!186653 () Bool)

(assert (= b_lambda!186633 (or b!4792094 b_lambda!186653)))

(assert (=> d!1533235 d!1533083))

(declare-fun b_lambda!186655 () Bool)

(assert (= b_lambda!186617 (or b!4792094 b_lambda!186655)))

(declare-fun bs!1154787 () Bool)

(declare-fun d!1533293 () Bool)

(assert (= bs!1154787 (and d!1533293 b!4792094)))

(assert (=> bs!1154787 (= (dynLambda!22054 lambda!230482 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473))))) (= (hash!4956 hashF!1559 (_1!31724 (h!60642 (_2!31725 (h!60643 (toList!6925 lm!2473)))))) (_1!31725 (h!60643 (toList!6925 lm!2473)))))))

(declare-fun m!5773468 () Bool)

(assert (=> bs!1154787 m!5773468))

(assert (=> b!4792417 d!1533293))

(declare-fun b_lambda!186657 () Bool)

(assert (= b_lambda!186637 (or d!1533047 b_lambda!186657)))

(declare-fun bs!1154788 () Bool)

(declare-fun d!1533295 () Bool)

(assert (= bs!1154788 (and d!1533295 d!1533047)))

(assert (=> bs!1154788 (= (dynLambda!22053 lambda!230499 (h!60643 (toList!6925 lm!2473))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (toList!6925 lm!2473)))))))

(assert (=> bs!1154788 m!5773036))

(assert (=> b!4792668 d!1533295))

(declare-fun b_lambda!186659 () Bool)

(assert (= b_lambda!186611 (or start!493400 b_lambda!186659)))

(declare-fun bs!1154789 () Bool)

(declare-fun d!1533297 () Bool)

(assert (= bs!1154789 (and d!1533297 start!493400)))

(assert (=> bs!1154789 (= (dynLambda!22053 lambda!230480 (h!60643 (t!361793 (toList!6925 lm!2473)))) (noDuplicateKeys!2337 (_2!31725 (h!60643 (t!361793 (toList!6925 lm!2473))))))))

(declare-fun m!5773470 () Bool)

(assert (=> bs!1154789 m!5773470))

(assert (=> b!4792359 d!1533297))

(declare-fun b_lambda!186661 () Bool)

(assert (= b_lambda!186635 (or b!4792094 b_lambda!186661)))

(assert (=> b!4792640 d!1533083))

(push 1)

(assert (not b!4792405))

(assert (not d!1533113))

(assert (not d!1533253))

(assert (not b!4792623))

(assert (not b!4792667))

(assert (not bm!335024))

(assert (not d!1533117))

(assert (not bs!1154786))

(assert (not b!4792585))

(assert (not b!4792388))

(assert (not b!4792576))

(assert (not d!1533139))

(assert (not b!4792621))

(assert (not bm!335026))

(assert (not d!1533131))

(assert (not d!1533223))

(assert (not d!1533227))

(assert (not b!4792572))

(assert (not b!4792379))

(assert (not b!4792646))

(assert (not b_lambda!186591))

(assert (not b!4792698))

(assert (not b!4792391))

(assert (not b_lambda!186647))

(assert (not b!4792404))

(assert (not b_lambda!186589))

(assert (not bs!1154788))

(assert (not d!1533121))

(assert (not d!1533231))

(assert (not b!4792389))

(assert (not d!1533135))

(assert (not b!4792673))

(assert (not d!1533249))

(assert (not b!4792690))

(assert (not b!4792617))

(assert (not b_lambda!186657))

(assert (not b!4792393))

(assert (not b_lambda!186643))

(assert (not b!4792594))

(assert (not d!1533133))

(assert (not b!4792704))

(assert (not d!1533247))

(assert (not b!4792681))

(assert (not b!4792669))

(assert (not b!4792615))

(assert tp_is_empty!33553)

(assert (not b!4792410))

(assert (not d!1533147))

(assert (not d!1533275))

(assert (not bs!1154784))

(assert (not b_lambda!186655))

(assert (not bs!1154785))

(assert (not b_lambda!186645))

(assert (not d!1533221))

(assert (not b!4792647))

(assert (not b!4792671))

(assert (not b!4792682))

(assert (not bs!1154787))

(assert (not b_lambda!186651))

(assert (not b_lambda!186653))

(assert (not b!4792386))

(assert (not b!4792365))

(assert (not b!4792675))

(assert (not b!4792711))

(assert (not bs!1154789))

(assert (not d!1533111))

(assert (not b!4792676))

(assert (not b_lambda!186661))

(assert (not b_lambda!186593))

(assert (not b!4792630))

(assert (not b!4792639))

(assert (not b!4792631))

(assert (not b!4792412))

(assert (not b!4792593))

(assert (not b!4792679))

(assert (not b!4792628))

(assert (not b!4792592))

(assert (not b!4792573))

(assert (not d!1533283))

(assert (not b!4792680))

(assert (not bm!335025))

(assert (not b!4792674))

(assert (not d!1533137))

(assert (not b!4792397))

(assert (not b!4792718))

(assert (not b!4792362))

(assert (not d!1533213))

(assert (not b_lambda!186649))

(assert tp_is_empty!33555)

(assert (not bs!1154783))

(assert (not b!4792363))

(assert (not b!4792366))

(assert (not b!4792569))

(assert (not d!1533265))

(assert (not b!4792394))

(assert (not b!4792629))

(assert (not b!4792579))

(assert (not d!1533219))

(assert (not b_lambda!186659))

(assert (not b!4792407))

(assert (not b!4792649))

(assert (not d!1533257))

(assert (not b!4792664))

(assert (not b!4792627))

(assert (not d!1533259))

(assert (not b!4792396))

(assert (not b!4792641))

(assert (not b!4792418))

(assert (not d!1533215))

(assert (not b!4792571))

(assert (not b!4792364))

(assert (not d!1533233))

(assert (not b!4792395))

(assert (not b!4792360))

(assert (not b!4792619))

(assert (not b!4792719))

(assert (not b_lambda!186595))

(assert (not d!1533115))

(assert (not d!1533243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

