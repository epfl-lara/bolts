; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488596 () Bool)

(assert start!488596)

(declare-fun b!4772059 () Bool)

(declare-fun e!2979026 () Bool)

(declare-fun e!2979028 () Bool)

(assert (=> b!4772059 (= e!2979026 e!2979028)))

(declare-fun res!2024278 () Bool)

(assert (=> b!4772059 (=> res!2024278 e!2979028)))

(declare-datatypes ((K!15192 0))(
  ( (K!15193 (val!20459 Int)) )
))
(declare-datatypes ((V!15438 0))(
  ( (V!15439 (val!20460 Int)) )
))
(declare-datatypes ((tuple2!55892 0))(
  ( (tuple2!55893 (_1!31240 K!15192) (_2!31240 V!15438)) )
))
(declare-datatypes ((List!53795 0))(
  ( (Nil!53671) (Cons!53671 (h!60083 tuple2!55892) (t!361245 List!53795)) )
))
(declare-datatypes ((tuple2!55894 0))(
  ( (tuple2!55895 (_1!31241 (_ BitVec 64)) (_2!31241 List!53795)) )
))
(declare-datatypes ((List!53796 0))(
  ( (Nil!53672) (Cons!53672 (h!60084 tuple2!55894) (t!361246 List!53796)) )
))
(declare-datatypes ((ListLongMap!4863 0))(
  ( (ListLongMap!4864 (toList!6449 List!53796)) )
))
(declare-fun lm!1309 () ListLongMap!4863)

(declare-fun lambda!225488 () Int)

(declare-fun forall!11945 (List!53796 Int) Bool)

(assert (=> b!4772059 (= res!2024278 (not (forall!11945 (toList!6449 lm!1309) lambda!225488)))))

(declare-fun key!2872 () K!15192)

(declare-fun v!9615 () V!15438)

(declare-fun getValue!21 (List!53796 K!15192) V!15438)

(assert (=> b!4772059 (= (getValue!21 (toList!6449 lm!1309) key!2872) v!9615)))

(declare-datatypes ((Hashable!6681 0))(
  ( (HashableExt!6680 (__x!32704 Int)) )
))
(declare-fun hashF!980 () Hashable!6681)

(declare-datatypes ((Unit!138566 0))(
  ( (Unit!138567) )
))
(declare-fun lt!1935038 () Unit!138566)

(declare-fun lemmaGetValueEquivToGetPair!21 (ListLongMap!4863 K!15192 V!15438 Hashable!6681) Unit!138566)

(assert (=> b!4772059 (= lt!1935038 (lemmaGetValueEquivToGetPair!21 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!355 (List!53796 K!15192) Bool)

(assert (=> b!4772059 (containsKeyBiggerList!355 (toList!6449 lm!1309) key!2872)))

(declare-fun lt!1935050 () Unit!138566)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!213 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> b!4772059 (= lt!1935050 (lemmaInLongMapThenContainsKeyBiggerList!213 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772060 () Bool)

(declare-fun res!2024281 () Bool)

(declare-fun e!2979025 () Bool)

(assert (=> b!4772060 (=> (not res!2024281) (not e!2979025))))

(declare-fun allKeysSameHashInMap!2086 (ListLongMap!4863 Hashable!6681) Bool)

(assert (=> b!4772060 (= res!2024281 (allKeysSameHashInMap!2086 lm!1309 hashF!980))))

(declare-fun b!4772061 () Bool)

(declare-fun lt!1935043 () List!53795)

(declare-fun noDuplicateKeys!2266 (List!53795) Bool)

(assert (=> b!4772061 (= e!2979028 (noDuplicateKeys!2266 lt!1935043))))

(declare-fun lt!1935040 () tuple2!55894)

(declare-fun lt!1935045 () Unit!138566)

(declare-fun forallContained!3926 (List!53796 Int tuple2!55894) Unit!138566)

(assert (=> b!4772061 (= lt!1935045 (forallContained!3926 (toList!6449 lm!1309) lambda!225488 lt!1935040))))

(declare-fun lt!1935042 () Unit!138566)

(assert (=> b!4772061 (= lt!1935042 (forallContained!3926 (toList!6449 lm!1309) lambda!225488 lt!1935040))))

(declare-datatypes ((ListMap!5929 0))(
  ( (ListMap!5930 (toList!6450 List!53795)) )
))
(declare-fun lt!1935041 () ListMap!5929)

(declare-fun apply!12742 (ListMap!5929 K!15192) V!15438)

(assert (=> b!4772061 (= (apply!12742 lt!1935041 key!2872) v!9615)))

(declare-fun lt!1935051 () Unit!138566)

(declare-fun lemmaExtractMapPreservesMapping!17 (ListLongMap!4863 K!15192 V!15438 Hashable!6681) Unit!138566)

(assert (=> b!4772061 (= lt!1935051 (lemmaExtractMapPreservesMapping!17 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1935049 () Unit!138566)

(declare-fun lemmaInGenericMapThenInLongMap!233 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> b!4772061 (= lt!1935049 (lemmaInGenericMapThenInLongMap!233 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772062 () Bool)

(declare-fun e!2979029 () Bool)

(assert (=> b!4772062 (= e!2979029 (not e!2979026))))

(declare-fun res!2024279 () Bool)

(assert (=> b!4772062 (=> res!2024279 e!2979026)))

(declare-datatypes ((Option!12776 0))(
  ( (None!12775) (Some!12775 (v!47902 tuple2!55892)) )
))
(declare-fun lt!1935044 () Option!12776)

(declare-fun get!18157 (Option!12776) tuple2!55892)

(assert (=> b!4772062 (= res!2024279 (not (= (_2!31240 (get!18157 lt!1935044)) v!9615)))))

(declare-fun isDefined!9922 (Option!12776) Bool)

(assert (=> b!4772062 (isDefined!9922 lt!1935044)))

(declare-fun getPair!701 (List!53795 K!15192) Option!12776)

(assert (=> b!4772062 (= lt!1935044 (getPair!701 lt!1935043 key!2872))))

(declare-fun lt!1935036 () Unit!138566)

(assert (=> b!4772062 (= lt!1935036 (forallContained!3926 (toList!6449 lm!1309) lambda!225488 lt!1935040))))

(declare-fun lt!1935047 () Unit!138566)

(declare-fun lemmaInGenMapThenGetPairDefined!475 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> b!4772062 (= lt!1935047 (lemmaInGenMapThenGetPairDefined!475 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1935039 () Unit!138566)

(assert (=> b!4772062 (= lt!1935039 (forallContained!3926 (toList!6449 lm!1309) lambda!225488 lt!1935040))))

(declare-fun contains!17091 (List!53796 tuple2!55894) Bool)

(assert (=> b!4772062 (contains!17091 (toList!6449 lm!1309) lt!1935040)))

(declare-fun lt!1935046 () (_ BitVec 64))

(assert (=> b!4772062 (= lt!1935040 (tuple2!55895 lt!1935046 lt!1935043))))

(declare-fun lt!1935037 () Unit!138566)

(declare-fun lemmaGetValueImpliesTupleContained!492 (ListLongMap!4863 (_ BitVec 64) List!53795) Unit!138566)

(assert (=> b!4772062 (= lt!1935037 (lemmaGetValueImpliesTupleContained!492 lm!1309 lt!1935046 lt!1935043))))

(declare-fun apply!12743 (ListLongMap!4863 (_ BitVec 64)) List!53795)

(assert (=> b!4772062 (= lt!1935043 (apply!12743 lm!1309 lt!1935046))))

(declare-fun contains!17092 (ListLongMap!4863 (_ BitVec 64)) Bool)

(assert (=> b!4772062 (contains!17092 lm!1309 lt!1935046)))

(declare-fun hash!4656 (Hashable!6681 K!15192) (_ BitVec 64))

(assert (=> b!4772062 (= lt!1935046 (hash!4656 hashF!980 key!2872))))

(declare-fun lt!1935048 () Unit!138566)

(declare-fun lemmaInGenMapThenLongMapContainsHash!897 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> b!4772062 (= lt!1935048 (lemmaInGenMapThenLongMapContainsHash!897 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772063 () Bool)

(declare-fun e!2979027 () Bool)

(declare-fun tp!1356735 () Bool)

(assert (=> b!4772063 (= e!2979027 tp!1356735)))

(declare-fun b!4772064 () Bool)

(assert (=> b!4772064 (= e!2979025 e!2979029)))

(declare-fun res!2024277 () Bool)

(assert (=> b!4772064 (=> (not res!2024277) (not e!2979029))))

(declare-fun contains!17093 (ListMap!5929 K!15192) Bool)

(assert (=> b!4772064 (= res!2024277 (contains!17093 lt!1935041 key!2872))))

(declare-fun extractMap!2216 (List!53796) ListMap!5929)

(assert (=> b!4772064 (= lt!1935041 (extractMap!2216 (toList!6449 lm!1309)))))

(declare-fun res!2024280 () Bool)

(assert (=> start!488596 (=> (not res!2024280) (not e!2979025))))

(assert (=> start!488596 (= res!2024280 (forall!11945 (toList!6449 lm!1309) lambda!225488))))

(assert (=> start!488596 e!2979025))

(declare-fun inv!69219 (ListLongMap!4863) Bool)

(assert (=> start!488596 (and (inv!69219 lm!1309) e!2979027)))

(assert (=> start!488596 true))

(declare-fun tp_is_empty!32721 () Bool)

(assert (=> start!488596 tp_is_empty!32721))

(declare-fun tp_is_empty!32723 () Bool)

(assert (=> start!488596 tp_is_empty!32723))

(assert (= (and start!488596 res!2024280) b!4772060))

(assert (= (and b!4772060 res!2024281) b!4772064))

(assert (= (and b!4772064 res!2024277) b!4772062))

(assert (= (and b!4772062 (not res!2024279)) b!4772059))

(assert (= (and b!4772059 (not res!2024278)) b!4772061))

(assert (= start!488596 b!4772063))

(declare-fun m!5744732 () Bool)

(assert (=> start!488596 m!5744732))

(declare-fun m!5744734 () Bool)

(assert (=> start!488596 m!5744734))

(declare-fun m!5744736 () Bool)

(assert (=> b!4772060 m!5744736))

(declare-fun m!5744738 () Bool)

(assert (=> b!4772064 m!5744738))

(declare-fun m!5744740 () Bool)

(assert (=> b!4772064 m!5744740))

(declare-fun m!5744742 () Bool)

(assert (=> b!4772061 m!5744742))

(declare-fun m!5744744 () Bool)

(assert (=> b!4772061 m!5744744))

(assert (=> b!4772061 m!5744744))

(declare-fun m!5744746 () Bool)

(assert (=> b!4772061 m!5744746))

(declare-fun m!5744748 () Bool)

(assert (=> b!4772061 m!5744748))

(declare-fun m!5744750 () Bool)

(assert (=> b!4772061 m!5744750))

(declare-fun m!5744752 () Bool)

(assert (=> b!4772062 m!5744752))

(declare-fun m!5744754 () Bool)

(assert (=> b!4772062 m!5744754))

(declare-fun m!5744756 () Bool)

(assert (=> b!4772062 m!5744756))

(declare-fun m!5744758 () Bool)

(assert (=> b!4772062 m!5744758))

(declare-fun m!5744760 () Bool)

(assert (=> b!4772062 m!5744760))

(declare-fun m!5744762 () Bool)

(assert (=> b!4772062 m!5744762))

(assert (=> b!4772062 m!5744744))

(declare-fun m!5744764 () Bool)

(assert (=> b!4772062 m!5744764))

(assert (=> b!4772062 m!5744744))

(declare-fun m!5744766 () Bool)

(assert (=> b!4772062 m!5744766))

(declare-fun m!5744768 () Bool)

(assert (=> b!4772062 m!5744768))

(declare-fun m!5744770 () Bool)

(assert (=> b!4772062 m!5744770))

(assert (=> b!4772059 m!5744732))

(declare-fun m!5744772 () Bool)

(assert (=> b!4772059 m!5744772))

(declare-fun m!5744774 () Bool)

(assert (=> b!4772059 m!5744774))

(declare-fun m!5744776 () Bool)

(assert (=> b!4772059 m!5744776))

(declare-fun m!5744778 () Bool)

(assert (=> b!4772059 m!5744778))

(push 1)

(assert (not b!4772060))

(assert tp_is_empty!32723)

(assert (not start!488596))

(assert (not b!4772064))

(assert (not b!4772059))

(assert (not b!4772062))

(assert tp_is_empty!32721)

(assert (not b!4772063))

(assert (not b!4772061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4772101 () Bool)

(assert (=> b!4772101 false))

(declare-fun lt!1935117 () Unit!138566)

(declare-fun lt!1935119 () Unit!138566)

(assert (=> b!4772101 (= lt!1935117 lt!1935119)))

(declare-fun containsKey!3692 (List!53795 K!15192) Bool)

(assert (=> b!4772101 (containsKey!3692 (toList!6450 lt!1935041) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1010 (List!53795 K!15192) Unit!138566)

(assert (=> b!4772101 (= lt!1935119 (lemmaInGetKeysListThenContainsKey!1010 (toList!6450 lt!1935041) key!2872))))

(declare-fun e!2979059 () Unit!138566)

(declare-fun Unit!138570 () Unit!138566)

(assert (=> b!4772101 (= e!2979059 Unit!138570)))

(declare-fun b!4772102 () Bool)

(declare-fun e!2979062 () Bool)

(declare-datatypes ((List!53799 0))(
  ( (Nil!53675) (Cons!53675 (h!60087 K!15192) (t!361249 List!53799)) )
))
(declare-fun contains!17097 (List!53799 K!15192) Bool)

(declare-fun keys!19487 (ListMap!5929) List!53799)

(assert (=> b!4772102 (= e!2979062 (contains!17097 (keys!19487 lt!1935041) key!2872))))

(declare-fun b!4772103 () Bool)

(declare-fun e!2979060 () Unit!138566)

(assert (=> b!4772103 (= e!2979060 e!2979059)))

(declare-fun c!813866 () Bool)

(declare-fun call!334491 () Bool)

(assert (=> b!4772103 (= c!813866 call!334491)))

(declare-fun b!4772104 () Bool)

(declare-fun e!2979057 () List!53799)

(assert (=> b!4772104 (= e!2979057 (keys!19487 lt!1935041))))

(declare-fun b!4772105 () Bool)

(declare-fun Unit!138571 () Unit!138566)

(assert (=> b!4772105 (= e!2979059 Unit!138571)))

(declare-fun b!4772106 () Bool)

(declare-fun getKeysList!1011 (List!53795) List!53799)

(assert (=> b!4772106 (= e!2979057 (getKeysList!1011 (toList!6450 lt!1935041)))))

(declare-fun b!4772107 () Bool)

(declare-fun e!2979061 () Bool)

(assert (=> b!4772107 (= e!2979061 (not (contains!17097 (keys!19487 lt!1935041) key!2872)))))

(declare-fun bm!334486 () Bool)

(assert (=> bm!334486 (= call!334491 (contains!17097 e!2979057 key!2872))))

(declare-fun c!813864 () Bool)

(declare-fun c!813865 () Bool)

(assert (=> bm!334486 (= c!813864 c!813865)))

(declare-fun d!1524944 () Bool)

(declare-fun e!2979058 () Bool)

(assert (=> d!1524944 e!2979058))

(declare-fun res!2024304 () Bool)

(assert (=> d!1524944 (=> res!2024304 e!2979058)))

(assert (=> d!1524944 (= res!2024304 e!2979061)))

(declare-fun res!2024303 () Bool)

(assert (=> d!1524944 (=> (not res!2024303) (not e!2979061))))

(declare-fun lt!1935121 () Bool)

(assert (=> d!1524944 (= res!2024303 (not lt!1935121))))

(declare-fun lt!1935123 () Bool)

(assert (=> d!1524944 (= lt!1935121 lt!1935123)))

(declare-fun lt!1935120 () Unit!138566)

(assert (=> d!1524944 (= lt!1935120 e!2979060)))

(assert (=> d!1524944 (= c!813865 lt!1935123)))

(assert (=> d!1524944 (= lt!1935123 (containsKey!3692 (toList!6450 lt!1935041) key!2872))))

(assert (=> d!1524944 (= (contains!17093 lt!1935041 key!2872) lt!1935121)))

(declare-fun b!4772108 () Bool)

(declare-fun lt!1935116 () Unit!138566)

(assert (=> b!4772108 (= e!2979060 lt!1935116)))

(declare-fun lt!1935118 () Unit!138566)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2019 (List!53795 K!15192) Unit!138566)

(assert (=> b!4772108 (= lt!1935118 (lemmaContainsKeyImpliesGetValueByKeyDefined!2019 (toList!6450 lt!1935041) key!2872))))

(declare-datatypes ((Option!12778 0))(
  ( (None!12777) (Some!12777 (v!47908 V!15438)) )
))
(declare-fun isDefined!9924 (Option!12778) Bool)

(declare-fun getValueByKey!2223 (List!53795 K!15192) Option!12778)

(assert (=> b!4772108 (isDefined!9924 (getValueByKey!2223 (toList!6450 lt!1935041) key!2872))))

(declare-fun lt!1935122 () Unit!138566)

(assert (=> b!4772108 (= lt!1935122 lt!1935118)))

(declare-fun lemmaInListThenGetKeysListContains!1006 (List!53795 K!15192) Unit!138566)

(assert (=> b!4772108 (= lt!1935116 (lemmaInListThenGetKeysListContains!1006 (toList!6450 lt!1935041) key!2872))))

(assert (=> b!4772108 call!334491))

(declare-fun b!4772109 () Bool)

(assert (=> b!4772109 (= e!2979058 e!2979062)))

(declare-fun res!2024305 () Bool)

(assert (=> b!4772109 (=> (not res!2024305) (not e!2979062))))

(assert (=> b!4772109 (= res!2024305 (isDefined!9924 (getValueByKey!2223 (toList!6450 lt!1935041) key!2872)))))

(assert (= (and d!1524944 c!813865) b!4772108))

(assert (= (and d!1524944 (not c!813865)) b!4772103))

(assert (= (and b!4772103 c!813866) b!4772101))

(assert (= (and b!4772103 (not c!813866)) b!4772105))

(assert (= (or b!4772108 b!4772103) bm!334486))

(assert (= (and bm!334486 c!813864) b!4772106))

(assert (= (and bm!334486 (not c!813864)) b!4772104))

(assert (= (and d!1524944 res!2024303) b!4772107))

(assert (= (and d!1524944 (not res!2024304)) b!4772109))

(assert (= (and b!4772109 res!2024305) b!4772102))

(declare-fun m!5744828 () Bool)

(assert (=> b!4772106 m!5744828))

(declare-fun m!5744830 () Bool)

(assert (=> b!4772108 m!5744830))

(declare-fun m!5744832 () Bool)

(assert (=> b!4772108 m!5744832))

(assert (=> b!4772108 m!5744832))

(declare-fun m!5744834 () Bool)

(assert (=> b!4772108 m!5744834))

(declare-fun m!5744836 () Bool)

(assert (=> b!4772108 m!5744836))

(declare-fun m!5744838 () Bool)

(assert (=> d!1524944 m!5744838))

(declare-fun m!5744840 () Bool)

(assert (=> b!4772107 m!5744840))

(assert (=> b!4772107 m!5744840))

(declare-fun m!5744842 () Bool)

(assert (=> b!4772107 m!5744842))

(assert (=> b!4772101 m!5744838))

(declare-fun m!5744844 () Bool)

(assert (=> b!4772101 m!5744844))

(declare-fun m!5744846 () Bool)

(assert (=> bm!334486 m!5744846))

(assert (=> b!4772102 m!5744840))

(assert (=> b!4772102 m!5744840))

(assert (=> b!4772102 m!5744842))

(assert (=> b!4772104 m!5744840))

(assert (=> b!4772109 m!5744832))

(assert (=> b!4772109 m!5744832))

(assert (=> b!4772109 m!5744834))

(assert (=> b!4772064 d!1524944))

(declare-fun bs!1149632 () Bool)

(declare-fun d!1524948 () Bool)

(assert (= bs!1149632 (and d!1524948 start!488596)))

(declare-fun lambda!225506 () Int)

(assert (=> bs!1149632 (= lambda!225506 lambda!225488)))

(declare-fun lt!1935128 () ListMap!5929)

(declare-fun invariantList!1669 (List!53795) Bool)

(assert (=> d!1524948 (invariantList!1669 (toList!6450 lt!1935128))))

(declare-fun e!2979067 () ListMap!5929)

(assert (=> d!1524948 (= lt!1935128 e!2979067)))

(declare-fun c!813869 () Bool)

(assert (=> d!1524948 (= c!813869 (is-Cons!53672 (toList!6449 lm!1309)))))

(assert (=> d!1524948 (forall!11945 (toList!6449 lm!1309) lambda!225506)))

(assert (=> d!1524948 (= (extractMap!2216 (toList!6449 lm!1309)) lt!1935128)))

(declare-fun b!4772116 () Bool)

(declare-fun addToMapMapFromBucket!1634 (List!53795 ListMap!5929) ListMap!5929)

(assert (=> b!4772116 (= e!2979067 (addToMapMapFromBucket!1634 (_2!31241 (h!60084 (toList!6449 lm!1309))) (extractMap!2216 (t!361246 (toList!6449 lm!1309)))))))

(declare-fun b!4772117 () Bool)

(assert (=> b!4772117 (= e!2979067 (ListMap!5930 Nil!53671))))

(assert (= (and d!1524948 c!813869) b!4772116))

(assert (= (and d!1524948 (not c!813869)) b!4772117))

(declare-fun m!5744848 () Bool)

(assert (=> d!1524948 m!5744848))

(declare-fun m!5744850 () Bool)

(assert (=> d!1524948 m!5744850))

(declare-fun m!5744852 () Bool)

(assert (=> b!4772116 m!5744852))

(assert (=> b!4772116 m!5744852))

(declare-fun m!5744854 () Bool)

(assert (=> b!4772116 m!5744854))

(assert (=> b!4772064 d!1524948))

(declare-fun bs!1149633 () Bool)

(declare-fun d!1524950 () Bool)

(assert (= bs!1149633 (and d!1524950 start!488596)))

(declare-fun lambda!225509 () Int)

(assert (=> bs!1149633 (not (= lambda!225509 lambda!225488))))

(declare-fun bs!1149635 () Bool)

(assert (= bs!1149635 (and d!1524950 d!1524948)))

(assert (=> bs!1149635 (not (= lambda!225509 lambda!225506))))

(assert (=> d!1524950 true))

(assert (=> d!1524950 (= (allKeysSameHashInMap!2086 lm!1309 hashF!980) (forall!11945 (toList!6449 lm!1309) lambda!225509))))

(declare-fun bs!1149636 () Bool)

(assert (= bs!1149636 d!1524950))

(declare-fun m!5744856 () Bool)

(assert (=> bs!1149636 m!5744856))

(assert (=> b!4772060 d!1524950))

(declare-fun d!1524952 () Bool)

(declare-fun res!2024317 () Bool)

(declare-fun e!2979076 () Bool)

(assert (=> d!1524952 (=> res!2024317 e!2979076)))

(declare-fun e!2979075 () Bool)

(assert (=> d!1524952 (= res!2024317 e!2979075)))

(declare-fun res!2024316 () Bool)

(assert (=> d!1524952 (=> (not res!2024316) (not e!2979075))))

(assert (=> d!1524952 (= res!2024316 (is-Cons!53672 (toList!6449 lm!1309)))))

(assert (=> d!1524952 (= (containsKeyBiggerList!355 (toList!6449 lm!1309) key!2872) e!2979076)))

(declare-fun b!4772127 () Bool)

(declare-fun containsKey!3693 (List!53795 K!15192) Bool)

(assert (=> b!4772127 (= e!2979075 (containsKey!3693 (_2!31241 (h!60084 (toList!6449 lm!1309))) key!2872))))

(declare-fun b!4772128 () Bool)

(declare-fun e!2979077 () Bool)

(assert (=> b!4772128 (= e!2979076 e!2979077)))

(declare-fun res!2024315 () Bool)

(assert (=> b!4772128 (=> (not res!2024315) (not e!2979077))))

(assert (=> b!4772128 (= res!2024315 (is-Cons!53672 (toList!6449 lm!1309)))))

(declare-fun b!4772129 () Bool)

(assert (=> b!4772129 (= e!2979077 (containsKeyBiggerList!355 (t!361246 (toList!6449 lm!1309)) key!2872))))

(assert (= (and d!1524952 res!2024316) b!4772127))

(assert (= (and d!1524952 (not res!2024317)) b!4772128))

(assert (= (and b!4772128 res!2024315) b!4772129))

(declare-fun m!5744870 () Bool)

(assert (=> b!4772127 m!5744870))

(declare-fun m!5744872 () Bool)

(assert (=> b!4772129 m!5744872))

(assert (=> b!4772059 d!1524952))

(declare-fun d!1524956 () Bool)

(declare-fun res!2024322 () Bool)

(declare-fun e!2979082 () Bool)

(assert (=> d!1524956 (=> res!2024322 e!2979082)))

(assert (=> d!1524956 (= res!2024322 (is-Nil!53672 (toList!6449 lm!1309)))))

(assert (=> d!1524956 (= (forall!11945 (toList!6449 lm!1309) lambda!225488) e!2979082)))

(declare-fun b!4772134 () Bool)

(declare-fun e!2979083 () Bool)

(assert (=> b!4772134 (= e!2979082 e!2979083)))

(declare-fun res!2024323 () Bool)

(assert (=> b!4772134 (=> (not res!2024323) (not e!2979083))))

(declare-fun dynLambda!21973 (Int tuple2!55894) Bool)

(assert (=> b!4772134 (= res!2024323 (dynLambda!21973 lambda!225488 (h!60084 (toList!6449 lm!1309))))))

(declare-fun b!4772135 () Bool)

(assert (=> b!4772135 (= e!2979083 (forall!11945 (t!361246 (toList!6449 lm!1309)) lambda!225488))))

(assert (= (and d!1524956 (not res!2024322)) b!4772134))

(assert (= (and b!4772134 res!2024323) b!4772135))

(declare-fun b_lambda!184651 () Bool)

(assert (=> (not b_lambda!184651) (not b!4772134)))

(declare-fun m!5744877 () Bool)

(assert (=> b!4772134 m!5744877))

(declare-fun m!5744880 () Bool)

(assert (=> b!4772135 m!5744880))

(assert (=> b!4772059 d!1524956))

(declare-fun d!1524958 () Bool)

(declare-fun c!813872 () Bool)

(declare-fun e!2979089 () Bool)

(assert (=> d!1524958 (= c!813872 e!2979089)))

(declare-fun res!2024326 () Bool)

(assert (=> d!1524958 (=> (not res!2024326) (not e!2979089))))

(assert (=> d!1524958 (= res!2024326 (is-Cons!53672 (toList!6449 lm!1309)))))

(declare-fun e!2979088 () V!15438)

(assert (=> d!1524958 (= (getValue!21 (toList!6449 lm!1309) key!2872) e!2979088)))

(declare-fun b!4772144 () Bool)

(assert (=> b!4772144 (= e!2979089 (containsKey!3693 (_2!31241 (h!60084 (toList!6449 lm!1309))) key!2872))))

(declare-fun b!4772142 () Bool)

(assert (=> b!4772142 (= e!2979088 (_2!31240 (get!18157 (getPair!701 (_2!31241 (h!60084 (toList!6449 lm!1309))) key!2872))))))

(declare-fun b!4772143 () Bool)

(assert (=> b!4772143 (= e!2979088 (getValue!21 (t!361246 (toList!6449 lm!1309)) key!2872))))

(assert (= (and d!1524958 res!2024326) b!4772144))

(assert (= (and d!1524958 c!813872) b!4772142))

(assert (= (and d!1524958 (not c!813872)) b!4772143))

(assert (=> b!4772144 m!5744870))

(declare-fun m!5744882 () Bool)

(assert (=> b!4772142 m!5744882))

(assert (=> b!4772142 m!5744882))

(declare-fun m!5744884 () Bool)

(assert (=> b!4772142 m!5744884))

(declare-fun m!5744886 () Bool)

(assert (=> b!4772143 m!5744886))

(assert (=> b!4772059 d!1524958))

(declare-fun bs!1149638 () Bool)

(declare-fun d!1524962 () Bool)

(assert (= bs!1149638 (and d!1524962 start!488596)))

(declare-fun lambda!225513 () Int)

(assert (=> bs!1149638 (= lambda!225513 lambda!225488)))

(declare-fun bs!1149639 () Bool)

(assert (= bs!1149639 (and d!1524962 d!1524948)))

(assert (=> bs!1149639 (= lambda!225513 lambda!225506)))

(declare-fun bs!1149640 () Bool)

(assert (= bs!1149640 (and d!1524962 d!1524950)))

(assert (=> bs!1149640 (not (= lambda!225513 lambda!225509))))

(assert (=> d!1524962 (= (getValue!21 (toList!6449 lm!1309) key!2872) v!9615)))

(declare-fun lt!1935135 () Unit!138566)

(declare-fun choose!34041 (ListLongMap!4863 K!15192 V!15438 Hashable!6681) Unit!138566)

(assert (=> d!1524962 (= lt!1935135 (choose!34041 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1524962 (forall!11945 (toList!6449 lm!1309) lambda!225513)))

(assert (=> d!1524962 (= (lemmaGetValueEquivToGetPair!21 lm!1309 key!2872 v!9615 hashF!980) lt!1935135)))

(declare-fun bs!1149641 () Bool)

(assert (= bs!1149641 d!1524962))

(assert (=> bs!1149641 m!5744774))

(declare-fun m!5744892 () Bool)

(assert (=> bs!1149641 m!5744892))

(declare-fun m!5744894 () Bool)

(assert (=> bs!1149641 m!5744894))

(assert (=> b!4772059 d!1524962))

(declare-fun bs!1149642 () Bool)

(declare-fun d!1524966 () Bool)

(assert (= bs!1149642 (and d!1524966 start!488596)))

(declare-fun lambda!225516 () Int)

(assert (=> bs!1149642 (= lambda!225516 lambda!225488)))

(declare-fun bs!1149643 () Bool)

(assert (= bs!1149643 (and d!1524966 d!1524948)))

(assert (=> bs!1149643 (= lambda!225516 lambda!225506)))

(declare-fun bs!1149644 () Bool)

(assert (= bs!1149644 (and d!1524966 d!1524950)))

(assert (=> bs!1149644 (not (= lambda!225516 lambda!225509))))

(declare-fun bs!1149645 () Bool)

(assert (= bs!1149645 (and d!1524966 d!1524962)))

(assert (=> bs!1149645 (= lambda!225516 lambda!225513)))

(assert (=> d!1524966 (containsKeyBiggerList!355 (toList!6449 lm!1309) key!2872)))

(declare-fun lt!1935138 () Unit!138566)

(declare-fun choose!34042 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> d!1524966 (= lt!1935138 (choose!34042 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524966 (forall!11945 (toList!6449 lm!1309) lambda!225516)))

(assert (=> d!1524966 (= (lemmaInLongMapThenContainsKeyBiggerList!213 lm!1309 key!2872 hashF!980) lt!1935138)))

(declare-fun bs!1149646 () Bool)

(assert (= bs!1149646 d!1524966))

(assert (=> bs!1149646 m!5744778))

(declare-fun m!5744896 () Bool)

(assert (=> bs!1149646 m!5744896))

(declare-fun m!5744898 () Bool)

(assert (=> bs!1149646 m!5744898))

(assert (=> b!4772059 d!1524966))

(declare-fun d!1524968 () Bool)

(declare-fun res!2024340 () Bool)

(declare-fun e!2979103 () Bool)

(assert (=> d!1524968 (=> res!2024340 e!2979103)))

(assert (=> d!1524968 (= res!2024340 (not (is-Cons!53671 lt!1935043)))))

(assert (=> d!1524968 (= (noDuplicateKeys!2266 lt!1935043) e!2979103)))

(declare-fun b!4772158 () Bool)

(declare-fun e!2979104 () Bool)

(assert (=> b!4772158 (= e!2979103 e!2979104)))

(declare-fun res!2024341 () Bool)

(assert (=> b!4772158 (=> (not res!2024341) (not e!2979104))))

(assert (=> b!4772158 (= res!2024341 (not (containsKey!3693 (t!361245 lt!1935043) (_1!31240 (h!60083 lt!1935043)))))))

(declare-fun b!4772159 () Bool)

(assert (=> b!4772159 (= e!2979104 (noDuplicateKeys!2266 (t!361245 lt!1935043)))))

(assert (= (and d!1524968 (not res!2024340)) b!4772158))

(assert (= (and b!4772158 res!2024341) b!4772159))

(declare-fun m!5744904 () Bool)

(assert (=> b!4772158 m!5744904))

(declare-fun m!5744906 () Bool)

(assert (=> b!4772159 m!5744906))

(assert (=> b!4772061 d!1524968))

(declare-fun bs!1149647 () Bool)

(declare-fun d!1524972 () Bool)

(assert (= bs!1149647 (and d!1524972 d!1524948)))

(declare-fun lambda!225519 () Int)

(assert (=> bs!1149647 (= lambda!225519 lambda!225506)))

(declare-fun bs!1149648 () Bool)

(assert (= bs!1149648 (and d!1524972 d!1524950)))

(assert (=> bs!1149648 (not (= lambda!225519 lambda!225509))))

(declare-fun bs!1149649 () Bool)

(assert (= bs!1149649 (and d!1524972 start!488596)))

(assert (=> bs!1149649 (= lambda!225519 lambda!225488)))

(declare-fun bs!1149650 () Bool)

(assert (= bs!1149650 (and d!1524972 d!1524966)))

(assert (=> bs!1149650 (= lambda!225519 lambda!225516)))

(declare-fun bs!1149651 () Bool)

(assert (= bs!1149651 (and d!1524972 d!1524962)))

(assert (=> bs!1149651 (= lambda!225519 lambda!225513)))

(declare-fun e!2979107 () Bool)

(assert (=> d!1524972 e!2979107))

(declare-fun res!2024344 () Bool)

(assert (=> d!1524972 (=> (not res!2024344) (not e!2979107))))

(assert (=> d!1524972 (= res!2024344 (contains!17092 lm!1309 (hash!4656 hashF!980 key!2872)))))

(declare-fun lt!1935141 () Unit!138566)

(declare-fun choose!34043 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> d!1524972 (= lt!1935141 (choose!34043 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524972 (forall!11945 (toList!6449 lm!1309) lambda!225519)))

(assert (=> d!1524972 (= (lemmaInGenericMapThenInLongMap!233 lm!1309 key!2872 hashF!980) lt!1935141)))

(declare-fun b!4772162 () Bool)

(assert (=> b!4772162 (= e!2979107 (isDefined!9922 (getPair!701 (apply!12743 lm!1309 (hash!4656 hashF!980 key!2872)) key!2872)))))

(assert (= (and d!1524972 res!2024344) b!4772162))

(assert (=> d!1524972 m!5744758))

(assert (=> d!1524972 m!5744758))

(declare-fun m!5744908 () Bool)

(assert (=> d!1524972 m!5744908))

(declare-fun m!5744910 () Bool)

(assert (=> d!1524972 m!5744910))

(declare-fun m!5744912 () Bool)

(assert (=> d!1524972 m!5744912))

(assert (=> b!4772162 m!5744758))

(assert (=> b!4772162 m!5744758))

(declare-fun m!5744914 () Bool)

(assert (=> b!4772162 m!5744914))

(assert (=> b!4772162 m!5744914))

(declare-fun m!5744916 () Bool)

(assert (=> b!4772162 m!5744916))

(assert (=> b!4772162 m!5744916))

(declare-fun m!5744918 () Bool)

(assert (=> b!4772162 m!5744918))

(assert (=> b!4772061 d!1524972))

(declare-fun d!1524974 () Bool)

(declare-fun get!18159 (Option!12778) V!15438)

(assert (=> d!1524974 (= (apply!12742 lt!1935041 key!2872) (get!18159 (getValueByKey!2223 (toList!6450 lt!1935041) key!2872)))))

(declare-fun bs!1149652 () Bool)

(assert (= bs!1149652 d!1524974))

(assert (=> bs!1149652 m!5744832))

(assert (=> bs!1149652 m!5744832))

(declare-fun m!5744920 () Bool)

(assert (=> bs!1149652 m!5744920))

(assert (=> b!4772061 d!1524974))

(declare-fun bs!1149653 () Bool)

(declare-fun d!1524976 () Bool)

(assert (= bs!1149653 (and d!1524976 d!1524972)))

(declare-fun lambda!225522 () Int)

(assert (=> bs!1149653 (= lambda!225522 lambda!225519)))

(declare-fun bs!1149654 () Bool)

(assert (= bs!1149654 (and d!1524976 d!1524948)))

(assert (=> bs!1149654 (= lambda!225522 lambda!225506)))

(declare-fun bs!1149655 () Bool)

(assert (= bs!1149655 (and d!1524976 d!1524950)))

(assert (=> bs!1149655 (not (= lambda!225522 lambda!225509))))

(declare-fun bs!1149656 () Bool)

(assert (= bs!1149656 (and d!1524976 start!488596)))

(assert (=> bs!1149656 (= lambda!225522 lambda!225488)))

(declare-fun bs!1149657 () Bool)

(assert (= bs!1149657 (and d!1524976 d!1524966)))

(assert (=> bs!1149657 (= lambda!225522 lambda!225516)))

(declare-fun bs!1149658 () Bool)

(assert (= bs!1149658 (and d!1524976 d!1524962)))

(assert (=> bs!1149658 (= lambda!225522 lambda!225513)))

(assert (=> d!1524976 (= (apply!12742 (extractMap!2216 (toList!6449 lm!1309)) key!2872) v!9615)))

(declare-fun lt!1935144 () Unit!138566)

(declare-fun choose!34044 (ListLongMap!4863 K!15192 V!15438 Hashable!6681) Unit!138566)

(assert (=> d!1524976 (= lt!1935144 (choose!34044 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1524976 (forall!11945 (toList!6449 lm!1309) lambda!225522)))

(assert (=> d!1524976 (= (lemmaExtractMapPreservesMapping!17 lm!1309 key!2872 v!9615 hashF!980) lt!1935144)))

(declare-fun bs!1149659 () Bool)

(assert (= bs!1149659 d!1524976))

(assert (=> bs!1149659 m!5744740))

(assert (=> bs!1149659 m!5744740))

(declare-fun m!5744922 () Bool)

(assert (=> bs!1149659 m!5744922))

(declare-fun m!5744924 () Bool)

(assert (=> bs!1149659 m!5744924))

(declare-fun m!5744926 () Bool)

(assert (=> bs!1149659 m!5744926))

(assert (=> b!4772061 d!1524976))

(declare-fun d!1524978 () Bool)

(assert (=> d!1524978 (dynLambda!21973 lambda!225488 lt!1935040)))

(declare-fun lt!1935147 () Unit!138566)

(declare-fun choose!34045 (List!53796 Int tuple2!55894) Unit!138566)

(assert (=> d!1524978 (= lt!1935147 (choose!34045 (toList!6449 lm!1309) lambda!225488 lt!1935040))))

(declare-fun e!2979110 () Bool)

(assert (=> d!1524978 e!2979110))

(declare-fun res!2024347 () Bool)

(assert (=> d!1524978 (=> (not res!2024347) (not e!2979110))))

(assert (=> d!1524978 (= res!2024347 (forall!11945 (toList!6449 lm!1309) lambda!225488))))

(assert (=> d!1524978 (= (forallContained!3926 (toList!6449 lm!1309) lambda!225488 lt!1935040) lt!1935147)))

(declare-fun b!4772165 () Bool)

(assert (=> b!4772165 (= e!2979110 (contains!17091 (toList!6449 lm!1309) lt!1935040))))

(assert (= (and d!1524978 res!2024347) b!4772165))

(declare-fun b_lambda!184655 () Bool)

(assert (=> (not b_lambda!184655) (not d!1524978)))

(declare-fun m!5744928 () Bool)

(assert (=> d!1524978 m!5744928))

(declare-fun m!5744930 () Bool)

(assert (=> d!1524978 m!5744930))

(assert (=> d!1524978 m!5744732))

(assert (=> b!4772165 m!5744762))

(assert (=> b!4772061 d!1524978))

(assert (=> start!488596 d!1524956))

(declare-fun d!1524980 () Bool)

(declare-fun isStrictlySorted!821 (List!53796) Bool)

(assert (=> d!1524980 (= (inv!69219 lm!1309) (isStrictlySorted!821 (toList!6449 lm!1309)))))

(declare-fun bs!1149660 () Bool)

(assert (= bs!1149660 d!1524980))

(declare-fun m!5744932 () Bool)

(assert (=> bs!1149660 m!5744932))

(assert (=> start!488596 d!1524980))

(declare-fun d!1524982 () Bool)

(assert (=> d!1524982 (= (get!18157 lt!1935044) (v!47902 lt!1935044))))

(assert (=> b!4772062 d!1524982))

(declare-fun bs!1149661 () Bool)

(declare-fun d!1524984 () Bool)

(assert (= bs!1149661 (and d!1524984 d!1524972)))

(declare-fun lambda!225527 () Int)

(assert (=> bs!1149661 (= lambda!225527 lambda!225519)))

(declare-fun bs!1149662 () Bool)

(assert (= bs!1149662 (and d!1524984 d!1524948)))

(assert (=> bs!1149662 (= lambda!225527 lambda!225506)))

(declare-fun bs!1149663 () Bool)

(assert (= bs!1149663 (and d!1524984 d!1524950)))

(assert (=> bs!1149663 (not (= lambda!225527 lambda!225509))))

(declare-fun bs!1149664 () Bool)

(assert (= bs!1149664 (and d!1524984 d!1524976)))

(assert (=> bs!1149664 (= lambda!225527 lambda!225522)))

(declare-fun bs!1149665 () Bool)

(assert (= bs!1149665 (and d!1524984 start!488596)))

(assert (=> bs!1149665 (= lambda!225527 lambda!225488)))

(declare-fun bs!1149666 () Bool)

(assert (= bs!1149666 (and d!1524984 d!1524966)))

(assert (=> bs!1149666 (= lambda!225527 lambda!225516)))

(declare-fun bs!1149667 () Bool)

(assert (= bs!1149667 (and d!1524984 d!1524962)))

(assert (=> bs!1149667 (= lambda!225527 lambda!225513)))

(assert (=> d!1524984 (contains!17092 lm!1309 (hash!4656 hashF!980 key!2872))))

(declare-fun lt!1935152 () Unit!138566)

(declare-fun choose!34046 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> d!1524984 (= lt!1935152 (choose!34046 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524984 (forall!11945 (toList!6449 lm!1309) lambda!225527)))

(assert (=> d!1524984 (= (lemmaInGenMapThenLongMapContainsHash!897 lm!1309 key!2872 hashF!980) lt!1935152)))

(declare-fun bs!1149669 () Bool)

(assert (= bs!1149669 d!1524984))

(assert (=> bs!1149669 m!5744758))

(assert (=> bs!1149669 m!5744758))

(assert (=> bs!1149669 m!5744908))

(declare-fun m!5744934 () Bool)

(assert (=> bs!1149669 m!5744934))

(declare-fun m!5744936 () Bool)

(assert (=> bs!1149669 m!5744936))

(assert (=> b!4772062 d!1524984))

(declare-fun d!1524986 () Bool)

(declare-fun isEmpty!29303 (Option!12776) Bool)

(assert (=> d!1524986 (= (isDefined!9922 lt!1935044) (not (isEmpty!29303 lt!1935044)))))

(declare-fun bs!1149671 () Bool)

(assert (= bs!1149671 d!1524986))

(declare-fun m!5744938 () Bool)

(assert (=> bs!1149671 m!5744938))

(assert (=> b!4772062 d!1524986))

(declare-fun d!1524988 () Bool)

(declare-fun lt!1935156 () Bool)

(declare-fun content!9603 (List!53796) (Set tuple2!55894))

(assert (=> d!1524988 (= lt!1935156 (set.member lt!1935040 (content!9603 (toList!6449 lm!1309))))))

(declare-fun e!2979116 () Bool)

(assert (=> d!1524988 (= lt!1935156 e!2979116)))

(declare-fun res!2024353 () Bool)

(assert (=> d!1524988 (=> (not res!2024353) (not e!2979116))))

(assert (=> d!1524988 (= res!2024353 (is-Cons!53672 (toList!6449 lm!1309)))))

(assert (=> d!1524988 (= (contains!17091 (toList!6449 lm!1309) lt!1935040) lt!1935156)))

(declare-fun b!4772170 () Bool)

(declare-fun e!2979115 () Bool)

(assert (=> b!4772170 (= e!2979116 e!2979115)))

(declare-fun res!2024352 () Bool)

(assert (=> b!4772170 (=> res!2024352 e!2979115)))

(assert (=> b!4772170 (= res!2024352 (= (h!60084 (toList!6449 lm!1309)) lt!1935040))))

(declare-fun b!4772171 () Bool)

(assert (=> b!4772171 (= e!2979115 (contains!17091 (t!361246 (toList!6449 lm!1309)) lt!1935040))))

(assert (= (and d!1524988 res!2024353) b!4772170))

(assert (= (and b!4772170 (not res!2024352)) b!4772171))

(declare-fun m!5744946 () Bool)

(assert (=> d!1524988 m!5744946))

(declare-fun m!5744948 () Bool)

(assert (=> d!1524988 m!5744948))

(declare-fun m!5744950 () Bool)

(assert (=> b!4772171 m!5744950))

(assert (=> b!4772062 d!1524988))

(declare-fun b!4772200 () Bool)

(declare-fun e!2979140 () Option!12776)

(assert (=> b!4772200 (= e!2979140 None!12775)))

(declare-fun b!4772201 () Bool)

(declare-fun e!2979139 () Bool)

(assert (=> b!4772201 (= e!2979139 (not (containsKey!3693 lt!1935043 key!2872)))))

(declare-fun b!4772202 () Bool)

(declare-fun e!2979143 () Bool)

(declare-fun e!2979142 () Bool)

(assert (=> b!4772202 (= e!2979143 e!2979142)))

(declare-fun res!2024374 () Bool)

(assert (=> b!4772202 (=> (not res!2024374) (not e!2979142))))

(declare-fun lt!1935159 () Option!12776)

(assert (=> b!4772202 (= res!2024374 (isDefined!9922 lt!1935159))))

(declare-fun b!4772203 () Bool)

(declare-fun e!2979141 () Option!12776)

(assert (=> b!4772203 (= e!2979141 (Some!12775 (h!60083 lt!1935043)))))

(declare-fun b!4772204 () Bool)

(declare-fun contains!17098 (List!53795 tuple2!55892) Bool)

(assert (=> b!4772204 (= e!2979142 (contains!17098 lt!1935043 (get!18157 lt!1935159)))))

(declare-fun b!4772205 () Bool)

(declare-fun res!2024377 () Bool)

(assert (=> b!4772205 (=> (not res!2024377) (not e!2979142))))

(assert (=> b!4772205 (= res!2024377 (= (_1!31240 (get!18157 lt!1935159)) key!2872))))

(declare-fun b!4772206 () Bool)

(assert (=> b!4772206 (= e!2979141 e!2979140)))

(declare-fun c!813878 () Bool)

(assert (=> b!4772206 (= c!813878 (is-Cons!53671 lt!1935043))))

(declare-fun d!1524992 () Bool)

(assert (=> d!1524992 e!2979143))

(declare-fun res!2024376 () Bool)

(assert (=> d!1524992 (=> res!2024376 e!2979143)))

(assert (=> d!1524992 (= res!2024376 e!2979139)))

(declare-fun res!2024375 () Bool)

(assert (=> d!1524992 (=> (not res!2024375) (not e!2979139))))

(assert (=> d!1524992 (= res!2024375 (isEmpty!29303 lt!1935159))))

(assert (=> d!1524992 (= lt!1935159 e!2979141)))

(declare-fun c!813877 () Bool)

(assert (=> d!1524992 (= c!813877 (and (is-Cons!53671 lt!1935043) (= (_1!31240 (h!60083 lt!1935043)) key!2872)))))

(assert (=> d!1524992 (noDuplicateKeys!2266 lt!1935043)))

(assert (=> d!1524992 (= (getPair!701 lt!1935043 key!2872) lt!1935159)))

(declare-fun b!4772207 () Bool)

(assert (=> b!4772207 (= e!2979140 (getPair!701 (t!361245 lt!1935043) key!2872))))

(assert (= (and d!1524992 c!813877) b!4772203))

(assert (= (and d!1524992 (not c!813877)) b!4772206))

(assert (= (and b!4772206 c!813878) b!4772207))

(assert (= (and b!4772206 (not c!813878)) b!4772200))

(assert (= (and d!1524992 res!2024375) b!4772201))

(assert (= (and d!1524992 (not res!2024376)) b!4772202))

(assert (= (and b!4772202 res!2024374) b!4772205))

(assert (= (and b!4772205 res!2024377) b!4772204))

(declare-fun m!5744956 () Bool)

(assert (=> b!4772201 m!5744956))

(declare-fun m!5744958 () Bool)

(assert (=> b!4772205 m!5744958))

(declare-fun m!5744960 () Bool)

(assert (=> b!4772202 m!5744960))

(declare-fun m!5744962 () Bool)

(assert (=> b!4772207 m!5744962))

(declare-fun m!5744964 () Bool)

(assert (=> d!1524992 m!5744964))

(assert (=> d!1524992 m!5744742))

(assert (=> b!4772204 m!5744958))

(assert (=> b!4772204 m!5744958))

(declare-fun m!5744966 () Bool)

(assert (=> b!4772204 m!5744966))

(assert (=> b!4772062 d!1524992))

(declare-fun d!1524996 () Bool)

(declare-fun hash!4658 (Hashable!6681 K!15192) (_ BitVec 64))

(assert (=> d!1524996 (= (hash!4656 hashF!980 key!2872) (hash!4658 hashF!980 key!2872))))

(declare-fun bs!1149673 () Bool)

(assert (= bs!1149673 d!1524996))

(declare-fun m!5744968 () Bool)

(assert (=> bs!1149673 m!5744968))

(assert (=> b!4772062 d!1524996))

(declare-fun bs!1149684 () Bool)

(declare-fun d!1524998 () Bool)

(assert (= bs!1149684 (and d!1524998 d!1524972)))

(declare-fun lambda!225541 () Int)

(assert (=> bs!1149684 (= lambda!225541 lambda!225519)))

(declare-fun bs!1149685 () Bool)

(assert (= bs!1149685 (and d!1524998 d!1524984)))

(assert (=> bs!1149685 (= lambda!225541 lambda!225527)))

(declare-fun bs!1149686 () Bool)

(assert (= bs!1149686 (and d!1524998 d!1524948)))

(assert (=> bs!1149686 (= lambda!225541 lambda!225506)))

(declare-fun bs!1149687 () Bool)

(assert (= bs!1149687 (and d!1524998 d!1524950)))

(assert (=> bs!1149687 (not (= lambda!225541 lambda!225509))))

(declare-fun bs!1149688 () Bool)

(assert (= bs!1149688 (and d!1524998 d!1524976)))

(assert (=> bs!1149688 (= lambda!225541 lambda!225522)))

(declare-fun bs!1149689 () Bool)

(assert (= bs!1149689 (and d!1524998 start!488596)))

(assert (=> bs!1149689 (= lambda!225541 lambda!225488)))

(declare-fun bs!1149690 () Bool)

(assert (= bs!1149690 (and d!1524998 d!1524966)))

(assert (=> bs!1149690 (= lambda!225541 lambda!225516)))

(declare-fun bs!1149691 () Bool)

(assert (= bs!1149691 (and d!1524998 d!1524962)))

(assert (=> bs!1149691 (= lambda!225541 lambda!225513)))

(declare-fun e!2979158 () Bool)

(assert (=> d!1524998 e!2979158))

(declare-fun res!2024395 () Bool)

(assert (=> d!1524998 (=> (not res!2024395) (not e!2979158))))

(assert (=> d!1524998 (= res!2024395 (forall!11945 (toList!6449 lm!1309) lambda!225541))))

(declare-fun lt!1935185 () Unit!138566)

(declare-fun choose!34047 (ListLongMap!4863 K!15192 Hashable!6681) Unit!138566)

(assert (=> d!1524998 (= lt!1935185 (choose!34047 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524998 (forall!11945 (toList!6449 lm!1309) lambda!225541)))

(assert (=> d!1524998 (= (lemmaInGenMapThenGetPairDefined!475 lm!1309 key!2872 hashF!980) lt!1935185)))

(declare-fun b!4772230 () Bool)

(assert (=> b!4772230 (= e!2979158 (isDefined!9922 (getPair!701 (apply!12743 lm!1309 (hash!4656 hashF!980 key!2872)) key!2872)))))

(declare-fun lt!1935189 () Unit!138566)

(assert (=> b!4772230 (= lt!1935189 (forallContained!3926 (toList!6449 lm!1309) lambda!225541 (tuple2!55895 (hash!4656 hashF!980 key!2872) (apply!12743 lm!1309 (hash!4656 hashF!980 key!2872)))))))

(declare-fun lt!1935182 () Unit!138566)

(declare-fun lt!1935188 () Unit!138566)

(assert (=> b!4772230 (= lt!1935182 lt!1935188)))

(declare-fun lt!1935186 () (_ BitVec 64))

(declare-fun lt!1935184 () List!53795)

(assert (=> b!4772230 (contains!17091 (toList!6449 lm!1309) (tuple2!55895 lt!1935186 lt!1935184))))

(assert (=> b!4772230 (= lt!1935188 (lemmaGetValueImpliesTupleContained!492 lm!1309 lt!1935186 lt!1935184))))

(declare-fun e!2979157 () Bool)

(assert (=> b!4772230 e!2979157))

(declare-fun res!2024392 () Bool)

(assert (=> b!4772230 (=> (not res!2024392) (not e!2979157))))

(assert (=> b!4772230 (= res!2024392 (contains!17092 lm!1309 lt!1935186))))

(assert (=> b!4772230 (= lt!1935184 (apply!12743 lm!1309 (hash!4656 hashF!980 key!2872)))))

(assert (=> b!4772230 (= lt!1935186 (hash!4656 hashF!980 key!2872))))

(declare-fun lt!1935187 () Unit!138566)

(declare-fun lt!1935183 () Unit!138566)

(assert (=> b!4772230 (= lt!1935187 lt!1935183)))

(assert (=> b!4772230 (contains!17092 lm!1309 (hash!4656 hashF!980 key!2872))))

(assert (=> b!4772230 (= lt!1935183 (lemmaInGenMapThenLongMapContainsHash!897 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772229 () Bool)

(declare-fun res!2024394 () Bool)

(assert (=> b!4772229 (=> (not res!2024394) (not e!2979158))))

(assert (=> b!4772229 (= res!2024394 (contains!17093 (extractMap!2216 (toList!6449 lm!1309)) key!2872))))

(declare-fun b!4772228 () Bool)

(declare-fun res!2024393 () Bool)

(assert (=> b!4772228 (=> (not res!2024393) (not e!2979158))))

(assert (=> b!4772228 (= res!2024393 (allKeysSameHashInMap!2086 lm!1309 hashF!980))))

(declare-fun b!4772231 () Bool)

(declare-datatypes ((Option!12779 0))(
  ( (None!12778) (Some!12778 (v!47911 List!53795)) )
))
(declare-fun getValueByKey!2224 (List!53796 (_ BitVec 64)) Option!12779)

(assert (=> b!4772231 (= e!2979157 (= (getValueByKey!2224 (toList!6449 lm!1309) lt!1935186) (Some!12778 lt!1935184)))))

(assert (= (and d!1524998 res!2024395) b!4772228))

(assert (= (and b!4772228 res!2024393) b!4772229))

(assert (= (and b!4772229 res!2024394) b!4772230))

(assert (= (and b!4772230 res!2024392) b!4772231))

(assert (=> b!4772228 m!5744736))

(declare-fun m!5744990 () Bool)

(assert (=> d!1524998 m!5744990))

(declare-fun m!5744992 () Bool)

(assert (=> d!1524998 m!5744992))

(assert (=> d!1524998 m!5744990))

(assert (=> b!4772229 m!5744740))

(assert (=> b!4772229 m!5744740))

(declare-fun m!5744994 () Bool)

(assert (=> b!4772229 m!5744994))

(declare-fun m!5744996 () Bool)

(assert (=> b!4772230 m!5744996))

(declare-fun m!5744998 () Bool)

(assert (=> b!4772230 m!5744998))

(declare-fun m!5745000 () Bool)

(assert (=> b!4772230 m!5745000))

(assert (=> b!4772230 m!5744916))

(assert (=> b!4772230 m!5744918))

(assert (=> b!4772230 m!5744758))

(assert (=> b!4772230 m!5744908))

(declare-fun m!5745002 () Bool)

(assert (=> b!4772230 m!5745002))

(assert (=> b!4772230 m!5744758))

(assert (=> b!4772230 m!5744914))

(assert (=> b!4772230 m!5744914))

(assert (=> b!4772230 m!5744916))

(assert (=> b!4772230 m!5744756))

(assert (=> b!4772230 m!5744758))

(declare-fun m!5745004 () Bool)

(assert (=> b!4772231 m!5745004))

(assert (=> b!4772062 d!1524998))

(declare-fun d!1525010 () Bool)

(assert (=> d!1525010 (contains!17091 (toList!6449 lm!1309) (tuple2!55895 lt!1935046 lt!1935043))))

(declare-fun lt!1935192 () Unit!138566)

(declare-fun choose!34048 (ListLongMap!4863 (_ BitVec 64) List!53795) Unit!138566)

(assert (=> d!1525010 (= lt!1935192 (choose!34048 lm!1309 lt!1935046 lt!1935043))))

(assert (=> d!1525010 (contains!17092 lm!1309 lt!1935046)))

(assert (=> d!1525010 (= (lemmaGetValueImpliesTupleContained!492 lm!1309 lt!1935046 lt!1935043) lt!1935192)))

(declare-fun bs!1149698 () Bool)

(assert (= bs!1149698 d!1525010))

(declare-fun m!5745008 () Bool)

(assert (=> bs!1149698 m!5745008))

(declare-fun m!5745010 () Bool)

(assert (=> bs!1149698 m!5745010))

(assert (=> bs!1149698 m!5744770))

(assert (=> b!4772062 d!1525010))

(declare-fun d!1525014 () Bool)

(declare-fun e!2979163 () Bool)

(assert (=> d!1525014 e!2979163))

(declare-fun res!2024398 () Bool)

(assert (=> d!1525014 (=> res!2024398 e!2979163)))

(declare-fun lt!1935201 () Bool)

(assert (=> d!1525014 (= res!2024398 (not lt!1935201))))

(declare-fun lt!1935203 () Bool)

(assert (=> d!1525014 (= lt!1935201 lt!1935203)))

(declare-fun lt!1935204 () Unit!138566)

(declare-fun e!2979164 () Unit!138566)

(assert (=> d!1525014 (= lt!1935204 e!2979164)))

(declare-fun c!813884 () Bool)

(assert (=> d!1525014 (= c!813884 lt!1935203)))

(declare-fun containsKey!3694 (List!53796 (_ BitVec 64)) Bool)

(assert (=> d!1525014 (= lt!1935203 (containsKey!3694 (toList!6449 lm!1309) lt!1935046))))

(assert (=> d!1525014 (= (contains!17092 lm!1309 lt!1935046) lt!1935201)))

(declare-fun b!4772241 () Bool)

(declare-fun lt!1935202 () Unit!138566)

(assert (=> b!4772241 (= e!2979164 lt!1935202)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2020 (List!53796 (_ BitVec 64)) Unit!138566)

(assert (=> b!4772241 (= lt!1935202 (lemmaContainsKeyImpliesGetValueByKeyDefined!2020 (toList!6449 lm!1309) lt!1935046))))

(declare-fun isDefined!9925 (Option!12779) Bool)

(assert (=> b!4772241 (isDefined!9925 (getValueByKey!2224 (toList!6449 lm!1309) lt!1935046))))

(declare-fun b!4772242 () Bool)

(declare-fun Unit!138572 () Unit!138566)

(assert (=> b!4772242 (= e!2979164 Unit!138572)))

(declare-fun b!4772243 () Bool)

(assert (=> b!4772243 (= e!2979163 (isDefined!9925 (getValueByKey!2224 (toList!6449 lm!1309) lt!1935046)))))

(assert (= (and d!1525014 c!813884) b!4772241))

(assert (= (and d!1525014 (not c!813884)) b!4772242))

(assert (= (and d!1525014 (not res!2024398)) b!4772243))

(declare-fun m!5745012 () Bool)

(assert (=> d!1525014 m!5745012))

(declare-fun m!5745014 () Bool)

(assert (=> b!4772241 m!5745014))

(declare-fun m!5745016 () Bool)

(assert (=> b!4772241 m!5745016))

(assert (=> b!4772241 m!5745016))

(declare-fun m!5745018 () Bool)

(assert (=> b!4772241 m!5745018))

(assert (=> b!4772243 m!5745016))

(assert (=> b!4772243 m!5745016))

(assert (=> b!4772243 m!5745018))

(assert (=> b!4772062 d!1525014))

(assert (=> b!4772062 d!1524978))

(declare-fun d!1525016 () Bool)

(declare-fun get!18160 (Option!12779) List!53795)

(assert (=> d!1525016 (= (apply!12743 lm!1309 lt!1935046) (get!18160 (getValueByKey!2224 (toList!6449 lm!1309) lt!1935046)))))

(declare-fun bs!1149699 () Bool)

(assert (= bs!1149699 d!1525016))

(assert (=> bs!1149699 m!5745016))

(assert (=> bs!1149699 m!5745016))

(declare-fun m!5745020 () Bool)

(assert (=> bs!1149699 m!5745020))

(assert (=> b!4772062 d!1525016))

(declare-fun b!4772248 () Bool)

(declare-fun e!2979167 () Bool)

(declare-fun tp!1356743 () Bool)

(declare-fun tp!1356744 () Bool)

(assert (=> b!4772248 (= e!2979167 (and tp!1356743 tp!1356744))))

(assert (=> b!4772063 (= tp!1356735 e!2979167)))

(assert (= (and b!4772063 (is-Cons!53672 (toList!6449 lm!1309))) b!4772248))

(declare-fun b_lambda!184659 () Bool)

(assert (= b_lambda!184655 (or start!488596 b_lambda!184659)))

(declare-fun bs!1149700 () Bool)

(declare-fun d!1525018 () Bool)

(assert (= bs!1149700 (and d!1525018 start!488596)))

(assert (=> bs!1149700 (= (dynLambda!21973 lambda!225488 lt!1935040) (noDuplicateKeys!2266 (_2!31241 lt!1935040)))))

(declare-fun m!5745022 () Bool)

(assert (=> bs!1149700 m!5745022))

(assert (=> d!1524978 d!1525018))

(declare-fun b_lambda!184661 () Bool)

(assert (= b_lambda!184651 (or start!488596 b_lambda!184661)))

(declare-fun bs!1149701 () Bool)

(declare-fun d!1525020 () Bool)

(assert (= bs!1149701 (and d!1525020 start!488596)))

(assert (=> bs!1149701 (= (dynLambda!21973 lambda!225488 (h!60084 (toList!6449 lm!1309))) (noDuplicateKeys!2266 (_2!31241 (h!60084 (toList!6449 lm!1309)))))))

(declare-fun m!5745024 () Bool)

(assert (=> bs!1149701 m!5745024))

(assert (=> b!4772134 d!1525020))

(push 1)

(assert (not b!4772201))

(assert (not d!1524992))

(assert (not b!4772205))

(assert (not d!1524998))

(assert (not b!4772109))

(assert (not b!4772204))

(assert (not d!1525014))

(assert (not b!4772162))

(assert (not d!1524984))

(assert (not b!4772231))

(assert (not b!4772108))

(assert (not d!1524944))

(assert (not b!4772230))

(assert (not b!4772248))

(assert (not d!1524962))

(assert tp_is_empty!32723)

(assert (not d!1524978))

(assert (not b!4772102))

(assert (not bs!1149701))

(assert (not b!4772106))

(assert (not b!4772143))

(assert (not b!4772135))

(assert (not b!4772142))

(assert (not d!1525016))

(assert (not b!4772159))

(assert (not d!1524966))

(assert (not d!1524976))

(assert (not b!4772104))

(assert (not b!4772243))

(assert (not b_lambda!184659))

(assert (not d!1524950))

(assert (not b!4772107))

(assert (not b!4772127))

(assert (not d!1524988))

(assert (not b!4772101))

(assert (not b!4772202))

(assert (not b!4772158))

(assert (not d!1524986))

(assert (not b!4772207))

(assert (not b!4772165))

(assert (not b!4772116))

(assert (not b!4772241))

(assert (not b!4772229))

(assert (not bm!334486))

(assert (not b!4772171))

(assert (not d!1524974))

(assert tp_is_empty!32721)

(assert (not b!4772129))

(assert (not bs!1149700))

(assert (not d!1524996))

(assert (not d!1524972))

(assert (not d!1524980))

(assert (not b!4772144))

(assert (not b!4772228))

(assert (not d!1525010))

(assert (not d!1524948))

(assert (not b_lambda!184661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

