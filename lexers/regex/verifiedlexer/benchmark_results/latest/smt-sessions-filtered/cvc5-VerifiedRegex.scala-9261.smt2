; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491608 () Bool)

(assert start!491608)

(declare-fun b!4783927 () Bool)

(declare-fun e!2986829 () Bool)

(declare-fun e!2986827 () Bool)

(assert (=> b!4783927 (= e!2986829 e!2986827)))

(declare-fun res!2031740 () Bool)

(assert (=> b!4783927 (=> res!2031740 e!2986827)))

(declare-datatypes ((K!15592 0))(
  ( (K!15593 (val!20779 Int)) )
))
(declare-datatypes ((V!15838 0))(
  ( (V!15839 (val!20780 Int)) )
))
(declare-datatypes ((tuple2!56532 0))(
  ( (tuple2!56533 (_1!31560 K!15592) (_2!31560 V!15838)) )
))
(declare-datatypes ((Option!12961 0))(
  ( (None!12960) (Some!12960 (v!48195 tuple2!56532)) )
))
(declare-fun lt!1945856 () Option!12961)

(declare-fun v!11584 () V!15838)

(declare-fun get!18384 (Option!12961) tuple2!56532)

(assert (=> b!4783927 (= res!2031740 (not (= (_2!31560 (get!18384 lt!1945856)) v!11584)))))

(declare-fun isDefined!10104 (Option!12961) Bool)

(assert (=> b!4783927 (isDefined!10104 lt!1945856)))

(declare-datatypes ((List!54153 0))(
  ( (Nil!54029) (Cons!54029 (h!60449 tuple2!56532) (t!361603 List!54153)) )
))
(declare-fun lt!1945865 () List!54153)

(declare-fun key!6641 () K!15592)

(declare-fun getPair!813 (List!54153 K!15592) Option!12961)

(assert (=> b!4783927 (= lt!1945856 (getPair!813 lt!1945865 key!6641))))

(declare-datatypes ((tuple2!56534 0))(
  ( (tuple2!56535 (_1!31561 (_ BitVec 64)) (_2!31561 List!54153)) )
))
(declare-fun lt!1945855 () tuple2!56534)

(declare-datatypes ((List!54154 0))(
  ( (Nil!54030) (Cons!54030 (h!60450 tuple2!56534) (t!361604 List!54154)) )
))
(declare-datatypes ((ListLongMap!5183 0))(
  ( (ListLongMap!5184 (toList!6761 List!54154)) )
))
(declare-fun lt!1945864 () ListLongMap!5183)

(declare-fun lambda!228806 () Int)

(declare-datatypes ((Unit!139411 0))(
  ( (Unit!139412) )
))
(declare-fun lt!1945868 () Unit!139411)

(declare-fun forallContained!4085 (List!54154 Int tuple2!56534) Unit!139411)

(assert (=> b!4783927 (= lt!1945868 (forallContained!4085 (toList!6761 lt!1945864) lambda!228806 lt!1945855))))

(declare-fun lt!1945867 () Unit!139411)

(declare-datatypes ((Hashable!6841 0))(
  ( (HashableExt!6840 (__x!32864 Int)) )
))
(declare-fun hashF!1687 () Hashable!6841)

(declare-fun lemmaInGenMapThenGetPairDefined!587 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> b!4783927 (= lt!1945867 (lemmaInGenMapThenGetPairDefined!587 lt!1945864 key!6641 hashF!1687))))

(declare-fun lt!1945854 () Unit!139411)

(assert (=> b!4783927 (= lt!1945854 (forallContained!4085 (toList!6761 lt!1945864) lambda!228806 lt!1945855))))

(declare-fun contains!17581 (List!54154 tuple2!56534) Bool)

(assert (=> b!4783927 (contains!17581 (toList!6761 lt!1945864) lt!1945855)))

(declare-fun lt!1945860 () (_ BitVec 64))

(assert (=> b!4783927 (= lt!1945855 (tuple2!56535 lt!1945860 lt!1945865))))

(declare-fun lt!1945861 () Unit!139411)

(declare-fun lemmaGetValueImpliesTupleContained!620 (ListLongMap!5183 (_ BitVec 64) List!54153) Unit!139411)

(assert (=> b!4783927 (= lt!1945861 (lemmaGetValueImpliesTupleContained!620 lt!1945864 lt!1945860 lt!1945865))))

(declare-fun apply!12896 (ListLongMap!5183 (_ BitVec 64)) List!54153)

(assert (=> b!4783927 (= lt!1945865 (apply!12896 lt!1945864 lt!1945860))))

(declare-fun contains!17582 (ListLongMap!5183 (_ BitVec 64)) Bool)

(assert (=> b!4783927 (contains!17582 lt!1945864 lt!1945860)))

(declare-fun lt!1945875 () Unit!139411)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1037 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> b!4783927 (= lt!1945875 (lemmaInGenMapThenLongMapContainsHash!1037 lt!1945864 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6233 0))(
  ( (ListMap!6234 (toList!6762 List!54153)) )
))
(declare-fun contains!17583 (ListMap!6233 K!15592) Bool)

(declare-fun extractMap!2368 (List!54154) ListMap!6233)

(assert (=> b!4783927 (contains!17583 (extractMap!2368 (toList!6761 lt!1945864)) key!6641)))

(declare-fun lt!1945862 () Unit!139411)

(declare-fun lemmaListContainsThenExtractedMapContains!689 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> b!4783927 (= lt!1945862 (lemmaListContainsThenExtractedMapContains!689 lt!1945864 key!6641 hashF!1687))))

(declare-fun b!4783928 () Bool)

(declare-fun res!2031741 () Bool)

(assert (=> b!4783928 (=> res!2031741 e!2986829)))

(declare-fun allKeysSameHashInMap!2246 (ListLongMap!5183 Hashable!6841) Bool)

(assert (=> b!4783928 (= res!2031741 (not (allKeysSameHashInMap!2246 lt!1945864 hashF!1687)))))

(declare-fun res!2031739 () Bool)

(declare-fun e!2986828 () Bool)

(assert (=> start!491608 (=> (not res!2031739) (not e!2986828))))

(declare-fun lm!2709 () ListLongMap!5183)

(declare-fun forall!12141 (List!54154 Int) Bool)

(assert (=> start!491608 (= res!2031739 (forall!12141 (toList!6761 lm!2709) lambda!228806))))

(assert (=> start!491608 e!2986828))

(declare-fun e!2986830 () Bool)

(declare-fun inv!69619 (ListLongMap!5183) Bool)

(assert (=> start!491608 (and (inv!69619 lm!2709) e!2986830)))

(assert (=> start!491608 true))

(declare-fun tp_is_empty!33265 () Bool)

(assert (=> start!491608 tp_is_empty!33265))

(declare-fun tp_is_empty!33267 () Bool)

(assert (=> start!491608 tp_is_empty!33267))

(declare-fun b!4783929 () Bool)

(declare-fun e!2986831 () Bool)

(declare-fun e!2986832 () Bool)

(assert (=> b!4783929 (= e!2986831 e!2986832)))

(declare-fun res!2031742 () Bool)

(assert (=> b!4783929 (=> res!2031742 e!2986832)))

(declare-fun containsKey!3836 (List!54153 K!15592) Bool)

(assert (=> b!4783929 (= res!2031742 (containsKey!3836 (_2!31561 (h!60450 (toList!6761 lm!2709))) key!6641))))

(assert (=> b!4783929 (not (containsKey!3836 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709)))) key!6641))))

(declare-fun lt!1945874 () Unit!139411)

(declare-fun lemmaNotSameHashThenCannotContainKey!195 (ListLongMap!5183 K!15592 (_ BitVec 64) Hashable!6841) Unit!139411)

(assert (=> b!4783929 (= lt!1945874 (lemmaNotSameHashThenCannotContainKey!195 lm!2709 key!6641 (_1!31561 (h!60450 (toList!6761 lm!2709))) hashF!1687))))

(declare-fun b!4783930 () Bool)

(declare-fun res!2031738 () Bool)

(assert (=> b!4783930 (=> res!2031738 e!2986829)))

(declare-fun containsKeyBiggerList!497 (List!54154 K!15592) Bool)

(assert (=> b!4783930 (= res!2031738 (not (containsKeyBiggerList!497 (toList!6761 lt!1945864) key!6641)))))

(declare-fun b!4783931 () Bool)

(declare-fun tp!1357549 () Bool)

(assert (=> b!4783931 (= e!2986830 tp!1357549)))

(declare-fun b!4783932 () Bool)

(declare-fun res!2031737 () Bool)

(assert (=> b!4783932 (=> (not res!2031737) (not e!2986828))))

(assert (=> b!4783932 (= res!2031737 (allKeysSameHashInMap!2246 lm!2709 hashF!1687))))

(declare-fun b!4783933 () Bool)

(declare-fun res!2031743 () Bool)

(assert (=> b!4783933 (=> (not res!2031743) (not e!2986828))))

(assert (=> b!4783933 (= res!2031743 (containsKeyBiggerList!497 (toList!6761 lm!2709) key!6641))))

(declare-fun b!4783934 () Bool)

(declare-fun size!36361 (List!54154) Int)

(assert (=> b!4783934 (= e!2986827 (< (size!36361 (toList!6761 lt!1945864)) (size!36361 (toList!6761 lm!2709))))))

(declare-fun b!4783935 () Bool)

(declare-fun res!2031736 () Bool)

(assert (=> b!4783935 (=> res!2031736 e!2986831)))

(assert (=> b!4783935 (= res!2031736 (or (and (is-Cons!54030 (toList!6761 lm!2709)) (= (_1!31561 (h!60450 (toList!6761 lm!2709))) lt!1945860)) (not (is-Cons!54030 (toList!6761 lm!2709)))))))

(declare-fun b!4783936 () Bool)

(assert (=> b!4783936 (= e!2986832 e!2986829)))

(declare-fun res!2031735 () Bool)

(assert (=> b!4783936 (=> res!2031735 e!2986829)))

(assert (=> b!4783936 (= res!2031735 (not (forall!12141 (toList!6761 lt!1945864) lambda!228806)))))

(declare-fun tail!9202 (ListLongMap!5183) ListLongMap!5183)

(assert (=> b!4783936 (= lt!1945864 (tail!9202 lm!2709))))

(declare-fun tail!9203 (List!54154) List!54154)

(assert (=> b!4783936 (containsKeyBiggerList!497 (tail!9203 (toList!6761 lm!2709)) key!6641)))

(declare-fun lt!1945863 () Unit!139411)

(declare-fun lemmaInBiggerListButNotHeadThenTail!21 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> b!4783936 (= lt!1945863 (lemmaInBiggerListButNotHeadThenTail!21 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4783937 () Bool)

(assert (=> b!4783937 (= e!2986828 (not e!2986831))))

(declare-fun res!2031744 () Bool)

(assert (=> b!4783937 (=> res!2031744 e!2986831)))

(declare-fun lt!1945866 () Option!12961)

(assert (=> b!4783937 (= res!2031744 (not (= (_2!31560 (get!18384 lt!1945866)) v!11584)))))

(assert (=> b!4783937 (isDefined!10104 lt!1945866)))

(declare-fun lt!1945869 () List!54153)

(assert (=> b!4783937 (= lt!1945866 (getPair!813 lt!1945869 key!6641))))

(declare-fun lt!1945858 () tuple2!56534)

(declare-fun lt!1945871 () Unit!139411)

(assert (=> b!4783937 (= lt!1945871 (forallContained!4085 (toList!6761 lm!2709) lambda!228806 lt!1945858))))

(declare-fun lt!1945857 () Unit!139411)

(assert (=> b!4783937 (= lt!1945857 (lemmaInGenMapThenGetPairDefined!587 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1945873 () Unit!139411)

(assert (=> b!4783937 (= lt!1945873 (forallContained!4085 (toList!6761 lm!2709) lambda!228806 lt!1945858))))

(assert (=> b!4783937 (contains!17581 (toList!6761 lm!2709) lt!1945858)))

(assert (=> b!4783937 (= lt!1945858 (tuple2!56535 lt!1945860 lt!1945869))))

(declare-fun lt!1945859 () Unit!139411)

(assert (=> b!4783937 (= lt!1945859 (lemmaGetValueImpliesTupleContained!620 lm!2709 lt!1945860 lt!1945869))))

(assert (=> b!4783937 (= lt!1945869 (apply!12896 lm!2709 lt!1945860))))

(assert (=> b!4783937 (contains!17582 lm!2709 lt!1945860)))

(declare-fun hash!4848 (Hashable!6841 K!15592) (_ BitVec 64))

(assert (=> b!4783937 (= lt!1945860 (hash!4848 hashF!1687 key!6641))))

(declare-fun lt!1945870 () Unit!139411)

(assert (=> b!4783937 (= lt!1945870 (lemmaInGenMapThenLongMapContainsHash!1037 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4783937 (contains!17583 (extractMap!2368 (toList!6761 lm!2709)) key!6641)))

(declare-fun lt!1945872 () Unit!139411)

(assert (=> b!4783937 (= lt!1945872 (lemmaListContainsThenExtractedMapContains!689 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!491608 res!2031739) b!4783932))

(assert (= (and b!4783932 res!2031737) b!4783933))

(assert (= (and b!4783933 res!2031743) b!4783937))

(assert (= (and b!4783937 (not res!2031744)) b!4783935))

(assert (= (and b!4783935 (not res!2031736)) b!4783929))

(assert (= (and b!4783929 (not res!2031742)) b!4783936))

(assert (= (and b!4783936 (not res!2031735)) b!4783928))

(assert (= (and b!4783928 (not res!2031741)) b!4783930))

(assert (= (and b!4783930 (not res!2031738)) b!4783927))

(assert (= (and b!4783927 (not res!2031740)) b!4783934))

(assert (= start!491608 b!4783931))

(declare-fun m!5762222 () Bool)

(assert (=> b!4783933 m!5762222))

(declare-fun m!5762224 () Bool)

(assert (=> b!4783932 m!5762224))

(declare-fun m!5762226 () Bool)

(assert (=> b!4783929 m!5762226))

(declare-fun m!5762228 () Bool)

(assert (=> b!4783929 m!5762228))

(assert (=> b!4783929 m!5762228))

(declare-fun m!5762230 () Bool)

(assert (=> b!4783929 m!5762230))

(declare-fun m!5762232 () Bool)

(assert (=> b!4783929 m!5762232))

(declare-fun m!5762234 () Bool)

(assert (=> b!4783930 m!5762234))

(declare-fun m!5762236 () Bool)

(assert (=> b!4783936 m!5762236))

(declare-fun m!5762238 () Bool)

(assert (=> b!4783936 m!5762238))

(assert (=> b!4783936 m!5762238))

(declare-fun m!5762240 () Bool)

(assert (=> b!4783936 m!5762240))

(declare-fun m!5762242 () Bool)

(assert (=> b!4783936 m!5762242))

(declare-fun m!5762244 () Bool)

(assert (=> b!4783936 m!5762244))

(declare-fun m!5762246 () Bool)

(assert (=> b!4783937 m!5762246))

(declare-fun m!5762248 () Bool)

(assert (=> b!4783937 m!5762248))

(declare-fun m!5762250 () Bool)

(assert (=> b!4783937 m!5762250))

(declare-fun m!5762252 () Bool)

(assert (=> b!4783937 m!5762252))

(declare-fun m!5762254 () Bool)

(assert (=> b!4783937 m!5762254))

(declare-fun m!5762256 () Bool)

(assert (=> b!4783937 m!5762256))

(assert (=> b!4783937 m!5762254))

(declare-fun m!5762258 () Bool)

(assert (=> b!4783937 m!5762258))

(declare-fun m!5762260 () Bool)

(assert (=> b!4783937 m!5762260))

(declare-fun m!5762262 () Bool)

(assert (=> b!4783937 m!5762262))

(declare-fun m!5762264 () Bool)

(assert (=> b!4783937 m!5762264))

(declare-fun m!5762266 () Bool)

(assert (=> b!4783937 m!5762266))

(declare-fun m!5762268 () Bool)

(assert (=> b!4783937 m!5762268))

(assert (=> b!4783937 m!5762258))

(declare-fun m!5762270 () Bool)

(assert (=> b!4783937 m!5762270))

(declare-fun m!5762272 () Bool)

(assert (=> b!4783937 m!5762272))

(declare-fun m!5762274 () Bool)

(assert (=> b!4783934 m!5762274))

(declare-fun m!5762276 () Bool)

(assert (=> b!4783934 m!5762276))

(declare-fun m!5762278 () Bool)

(assert (=> b!4783927 m!5762278))

(declare-fun m!5762280 () Bool)

(assert (=> b!4783927 m!5762280))

(declare-fun m!5762282 () Bool)

(assert (=> b!4783927 m!5762282))

(declare-fun m!5762284 () Bool)

(assert (=> b!4783927 m!5762284))

(declare-fun m!5762286 () Bool)

(assert (=> b!4783927 m!5762286))

(declare-fun m!5762288 () Bool)

(assert (=> b!4783927 m!5762288))

(declare-fun m!5762290 () Bool)

(assert (=> b!4783927 m!5762290))

(declare-fun m!5762292 () Bool)

(assert (=> b!4783927 m!5762292))

(declare-fun m!5762294 () Bool)

(assert (=> b!4783927 m!5762294))

(declare-fun m!5762296 () Bool)

(assert (=> b!4783927 m!5762296))

(declare-fun m!5762298 () Bool)

(assert (=> b!4783927 m!5762298))

(assert (=> b!4783927 m!5762298))

(declare-fun m!5762300 () Bool)

(assert (=> b!4783927 m!5762300))

(declare-fun m!5762302 () Bool)

(assert (=> b!4783927 m!5762302))

(assert (=> b!4783927 m!5762292))

(declare-fun m!5762304 () Bool)

(assert (=> b!4783928 m!5762304))

(declare-fun m!5762306 () Bool)

(assert (=> start!491608 m!5762306))

(declare-fun m!5762308 () Bool)

(assert (=> start!491608 m!5762308))

(push 1)

(assert (not b!4783937))

(assert (not b!4783928))

(assert (not b!4783933))

(assert (not b!4783931))

(assert (not b!4783930))

(assert (not b!4783927))

(assert tp_is_empty!33265)

(assert (not b!4783934))

(assert (not b!4783929))

(assert (not b!4783932))

(assert tp_is_empty!33267)

(assert (not start!491608))

(assert (not b!4783936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1530152 () Bool)

(declare-fun res!2031779 () Bool)

(declare-fun e!2986855 () Bool)

(assert (=> d!1530152 (=> res!2031779 e!2986855)))

(assert (=> d!1530152 (= res!2031779 (and (is-Cons!54029 (_2!31561 (h!60450 (toList!6761 lm!2709)))) (= (_1!31560 (h!60449 (_2!31561 (h!60450 (toList!6761 lm!2709))))) key!6641)))))

(assert (=> d!1530152 (= (containsKey!3836 (_2!31561 (h!60450 (toList!6761 lm!2709))) key!6641) e!2986855)))

(declare-fun b!4783975 () Bool)

(declare-fun e!2986856 () Bool)

(assert (=> b!4783975 (= e!2986855 e!2986856)))

(declare-fun res!2031780 () Bool)

(assert (=> b!4783975 (=> (not res!2031780) (not e!2986856))))

(assert (=> b!4783975 (= res!2031780 (is-Cons!54029 (_2!31561 (h!60450 (toList!6761 lm!2709)))))))

(declare-fun b!4783976 () Bool)

(assert (=> b!4783976 (= e!2986856 (containsKey!3836 (t!361603 (_2!31561 (h!60450 (toList!6761 lm!2709)))) key!6641))))

(assert (= (and d!1530152 (not res!2031779)) b!4783975))

(assert (= (and b!4783975 res!2031780) b!4783976))

(declare-fun m!5762398 () Bool)

(assert (=> b!4783976 m!5762398))

(assert (=> b!4783929 d!1530152))

(declare-fun d!1530154 () Bool)

(declare-fun res!2031781 () Bool)

(declare-fun e!2986857 () Bool)

(assert (=> d!1530154 (=> res!2031781 e!2986857)))

(assert (=> d!1530154 (= res!2031781 (and (is-Cons!54029 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709))))) (= (_1!31560 (h!60449 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709)))))) key!6641)))))

(assert (=> d!1530154 (= (containsKey!3836 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709)))) key!6641) e!2986857)))

(declare-fun b!4783977 () Bool)

(declare-fun e!2986858 () Bool)

(assert (=> b!4783977 (= e!2986857 e!2986858)))

(declare-fun res!2031782 () Bool)

(assert (=> b!4783977 (=> (not res!2031782) (not e!2986858))))

(assert (=> b!4783977 (= res!2031782 (is-Cons!54029 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709))))))))

(declare-fun b!4783978 () Bool)

(assert (=> b!4783978 (= e!2986858 (containsKey!3836 (t!361603 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709))))) key!6641))))

(assert (= (and d!1530154 (not res!2031781)) b!4783977))

(assert (= (and b!4783977 res!2031782) b!4783978))

(declare-fun m!5762400 () Bool)

(assert (=> b!4783978 m!5762400))

(assert (=> b!4783929 d!1530154))

(declare-fun d!1530156 () Bool)

(declare-datatypes ((Option!12963 0))(
  ( (None!12962) (Some!12962 (v!48200 List!54153)) )
))
(declare-fun get!18386 (Option!12963) List!54153)

(declare-fun getValueByKey!2296 (List!54154 (_ BitVec 64)) Option!12963)

(assert (=> d!1530156 (= (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709)))) (get!18386 (getValueByKey!2296 (toList!6761 lm!2709) (_1!31561 (h!60450 (toList!6761 lm!2709))))))))

(declare-fun bs!1152868 () Bool)

(assert (= bs!1152868 d!1530156))

(declare-fun m!5762402 () Bool)

(assert (=> bs!1152868 m!5762402))

(assert (=> bs!1152868 m!5762402))

(declare-fun m!5762404 () Bool)

(assert (=> bs!1152868 m!5762404))

(assert (=> b!4783929 d!1530156))

(declare-fun bs!1152869 () Bool)

(declare-fun d!1530158 () Bool)

(assert (= bs!1152869 (and d!1530158 start!491608)))

(declare-fun lambda!228822 () Int)

(assert (=> bs!1152869 (= lambda!228822 lambda!228806)))

(assert (=> d!1530158 (not (containsKey!3836 (apply!12896 lm!2709 (_1!31561 (h!60450 (toList!6761 lm!2709)))) key!6641))))

(declare-fun lt!1945944 () Unit!139411)

(declare-fun choose!34346 (ListLongMap!5183 K!15592 (_ BitVec 64) Hashable!6841) Unit!139411)

(assert (=> d!1530158 (= lt!1945944 (choose!34346 lm!2709 key!6641 (_1!31561 (h!60450 (toList!6761 lm!2709))) hashF!1687))))

(assert (=> d!1530158 (forall!12141 (toList!6761 lm!2709) lambda!228822)))

(assert (=> d!1530158 (= (lemmaNotSameHashThenCannotContainKey!195 lm!2709 key!6641 (_1!31561 (h!60450 (toList!6761 lm!2709))) hashF!1687) lt!1945944)))

(declare-fun bs!1152870 () Bool)

(assert (= bs!1152870 d!1530158))

(assert (=> bs!1152870 m!5762228))

(assert (=> bs!1152870 m!5762228))

(assert (=> bs!1152870 m!5762230))

(declare-fun m!5762406 () Bool)

(assert (=> bs!1152870 m!5762406))

(declare-fun m!5762408 () Bool)

(assert (=> bs!1152870 m!5762408))

(assert (=> b!4783929 d!1530158))

(declare-fun d!1530160 () Bool)

(declare-fun res!2031791 () Bool)

(declare-fun e!2986865 () Bool)

(assert (=> d!1530160 (=> res!2031791 e!2986865)))

(declare-fun e!2986867 () Bool)

(assert (=> d!1530160 (= res!2031791 e!2986867)))

(declare-fun res!2031789 () Bool)

(assert (=> d!1530160 (=> (not res!2031789) (not e!2986867))))

(assert (=> d!1530160 (= res!2031789 (is-Cons!54030 (toList!6761 lt!1945864)))))

(assert (=> d!1530160 (= (containsKeyBiggerList!497 (toList!6761 lt!1945864) key!6641) e!2986865)))

(declare-fun b!4783985 () Bool)

(assert (=> b!4783985 (= e!2986867 (containsKey!3836 (_2!31561 (h!60450 (toList!6761 lt!1945864))) key!6641))))

(declare-fun b!4783986 () Bool)

(declare-fun e!2986866 () Bool)

(assert (=> b!4783986 (= e!2986865 e!2986866)))

(declare-fun res!2031790 () Bool)

(assert (=> b!4783986 (=> (not res!2031790) (not e!2986866))))

(assert (=> b!4783986 (= res!2031790 (is-Cons!54030 (toList!6761 lt!1945864)))))

(declare-fun b!4783987 () Bool)

(assert (=> b!4783987 (= e!2986866 (containsKeyBiggerList!497 (t!361604 (toList!6761 lt!1945864)) key!6641))))

(assert (= (and d!1530160 res!2031789) b!4783985))

(assert (= (and d!1530160 (not res!2031791)) b!4783986))

(assert (= (and b!4783986 res!2031790) b!4783987))

(declare-fun m!5762410 () Bool)

(assert (=> b!4783985 m!5762410))

(declare-fun m!5762412 () Bool)

(assert (=> b!4783987 m!5762412))

(assert (=> b!4783930 d!1530160))

(declare-fun d!1530162 () Bool)

(declare-fun res!2031794 () Bool)

(declare-fun e!2986868 () Bool)

(assert (=> d!1530162 (=> res!2031794 e!2986868)))

(declare-fun e!2986870 () Bool)

(assert (=> d!1530162 (= res!2031794 e!2986870)))

(declare-fun res!2031792 () Bool)

(assert (=> d!1530162 (=> (not res!2031792) (not e!2986870))))

(assert (=> d!1530162 (= res!2031792 (is-Cons!54030 (toList!6761 lm!2709)))))

(assert (=> d!1530162 (= (containsKeyBiggerList!497 (toList!6761 lm!2709) key!6641) e!2986868)))

(declare-fun b!4783988 () Bool)

(assert (=> b!4783988 (= e!2986870 (containsKey!3836 (_2!31561 (h!60450 (toList!6761 lm!2709))) key!6641))))

(declare-fun b!4783989 () Bool)

(declare-fun e!2986869 () Bool)

(assert (=> b!4783989 (= e!2986868 e!2986869)))

(declare-fun res!2031793 () Bool)

(assert (=> b!4783989 (=> (not res!2031793) (not e!2986869))))

(assert (=> b!4783989 (= res!2031793 (is-Cons!54030 (toList!6761 lm!2709)))))

(declare-fun b!4783990 () Bool)

(assert (=> b!4783990 (= e!2986869 (containsKeyBiggerList!497 (t!361604 (toList!6761 lm!2709)) key!6641))))

(assert (= (and d!1530162 res!2031792) b!4783988))

(assert (= (and d!1530162 (not res!2031794)) b!4783989))

(assert (= (and b!4783989 res!2031793) b!4783990))

(assert (=> b!4783988 m!5762226))

(declare-fun m!5762414 () Bool)

(assert (=> b!4783990 m!5762414))

(assert (=> b!4783933 d!1530162))

(declare-fun bs!1152871 () Bool)

(declare-fun d!1530164 () Bool)

(assert (= bs!1152871 (and d!1530164 start!491608)))

(declare-fun lambda!228825 () Int)

(assert (=> bs!1152871 (not (= lambda!228825 lambda!228806))))

(declare-fun bs!1152872 () Bool)

(assert (= bs!1152872 (and d!1530164 d!1530158)))

(assert (=> bs!1152872 (not (= lambda!228825 lambda!228822))))

(assert (=> d!1530164 true))

(assert (=> d!1530164 (= (allKeysSameHashInMap!2246 lt!1945864 hashF!1687) (forall!12141 (toList!6761 lt!1945864) lambda!228825))))

(declare-fun bs!1152873 () Bool)

(assert (= bs!1152873 d!1530164))

(declare-fun m!5762416 () Bool)

(assert (=> bs!1152873 m!5762416))

(assert (=> b!4783928 d!1530164))

(declare-fun d!1530166 () Bool)

(declare-fun lt!1945947 () Int)

(assert (=> d!1530166 (>= lt!1945947 0)))

(declare-fun e!2986873 () Int)

(assert (=> d!1530166 (= lt!1945947 e!2986873)))

(declare-fun c!815520 () Bool)

(assert (=> d!1530166 (= c!815520 (is-Nil!54030 (toList!6761 lt!1945864)))))

(assert (=> d!1530166 (= (size!36361 (toList!6761 lt!1945864)) lt!1945947)))

(declare-fun b!4783997 () Bool)

(assert (=> b!4783997 (= e!2986873 0)))

(declare-fun b!4783998 () Bool)

(assert (=> b!4783998 (= e!2986873 (+ 1 (size!36361 (t!361604 (toList!6761 lt!1945864)))))))

(assert (= (and d!1530166 c!815520) b!4783997))

(assert (= (and d!1530166 (not c!815520)) b!4783998))

(declare-fun m!5762418 () Bool)

(assert (=> b!4783998 m!5762418))

(assert (=> b!4783934 d!1530166))

(declare-fun d!1530168 () Bool)

(declare-fun lt!1945948 () Int)

(assert (=> d!1530168 (>= lt!1945948 0)))

(declare-fun e!2986874 () Int)

(assert (=> d!1530168 (= lt!1945948 e!2986874)))

(declare-fun c!815521 () Bool)

(assert (=> d!1530168 (= c!815521 (is-Nil!54030 (toList!6761 lm!2709)))))

(assert (=> d!1530168 (= (size!36361 (toList!6761 lm!2709)) lt!1945948)))

(declare-fun b!4783999 () Bool)

(assert (=> b!4783999 (= e!2986874 0)))

(declare-fun b!4784000 () Bool)

(assert (=> b!4784000 (= e!2986874 (+ 1 (size!36361 (t!361604 (toList!6761 lm!2709)))))))

(assert (= (and d!1530168 c!815521) b!4783999))

(assert (= (and d!1530168 (not c!815521)) b!4784000))

(declare-fun m!5762420 () Bool)

(assert (=> b!4784000 m!5762420))

(assert (=> b!4783934 d!1530168))

(declare-fun d!1530170 () Bool)

(declare-fun dynLambda!22022 (Int tuple2!56534) Bool)

(assert (=> d!1530170 (dynLambda!22022 lambda!228806 lt!1945858)))

(declare-fun lt!1945951 () Unit!139411)

(declare-fun choose!34347 (List!54154 Int tuple2!56534) Unit!139411)

(assert (=> d!1530170 (= lt!1945951 (choose!34347 (toList!6761 lm!2709) lambda!228806 lt!1945858))))

(declare-fun e!2986877 () Bool)

(assert (=> d!1530170 e!2986877))

(declare-fun res!2031797 () Bool)

(assert (=> d!1530170 (=> (not res!2031797) (not e!2986877))))

(assert (=> d!1530170 (= res!2031797 (forall!12141 (toList!6761 lm!2709) lambda!228806))))

(assert (=> d!1530170 (= (forallContained!4085 (toList!6761 lm!2709) lambda!228806 lt!1945858) lt!1945951)))

(declare-fun b!4784003 () Bool)

(assert (=> b!4784003 (= e!2986877 (contains!17581 (toList!6761 lm!2709) lt!1945858))))

(assert (= (and d!1530170 res!2031797) b!4784003))

(declare-fun b_lambda!186011 () Bool)

(assert (=> (not b_lambda!186011) (not d!1530170)))

(declare-fun m!5762422 () Bool)

(assert (=> d!1530170 m!5762422))

(declare-fun m!5762424 () Bool)

(assert (=> d!1530170 m!5762424))

(assert (=> d!1530170 m!5762306))

(assert (=> b!4784003 m!5762260))

(assert (=> b!4783937 d!1530170))

(declare-fun d!1530172 () Bool)

(declare-fun isEmpty!29373 (Option!12961) Bool)

(assert (=> d!1530172 (= (isDefined!10104 lt!1945866) (not (isEmpty!29373 lt!1945866)))))

(declare-fun bs!1152874 () Bool)

(assert (= bs!1152874 d!1530172))

(declare-fun m!5762426 () Bool)

(assert (=> bs!1152874 m!5762426))

(assert (=> b!4783937 d!1530172))

(declare-fun b!4784022 () Bool)

(declare-fun e!2986895 () Unit!139411)

(declare-fun lt!1945975 () Unit!139411)

(assert (=> b!4784022 (= e!2986895 lt!1945975)))

(declare-fun lt!1945974 () Unit!139411)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2089 (List!54153 K!15592) Unit!139411)

(assert (=> b!4784022 (= lt!1945974 (lemmaContainsKeyImpliesGetValueByKeyDefined!2089 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(declare-datatypes ((Option!12964 0))(
  ( (None!12963) (Some!12963 (v!48201 V!15838)) )
))
(declare-fun isDefined!10106 (Option!12964) Bool)

(declare-fun getValueByKey!2297 (List!54153 K!15592) Option!12964)

(assert (=> b!4784022 (isDefined!10106 (getValueByKey!2297 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(declare-fun lt!1945971 () Unit!139411)

(assert (=> b!4784022 (= lt!1945971 lt!1945974)))

(declare-fun lemmaInListThenGetKeysListContains!1043 (List!54153 K!15592) Unit!139411)

(assert (=> b!4784022 (= lt!1945975 (lemmaInListThenGetKeysListContains!1043 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(declare-fun call!334807 () Bool)

(assert (=> b!4784022 call!334807))

(declare-fun b!4784023 () Bool)

(declare-fun e!2986893 () Unit!139411)

(declare-fun Unit!139415 () Unit!139411)

(assert (=> b!4784023 (= e!2986893 Unit!139415)))

(declare-fun b!4784024 () Bool)

(declare-fun e!2986894 () Bool)

(declare-datatypes ((List!54157 0))(
  ( (Nil!54033) (Cons!54033 (h!60453 K!15592) (t!361607 List!54157)) )
))
(declare-fun contains!17587 (List!54157 K!15592) Bool)

(declare-fun keys!19689 (ListMap!6233) List!54157)

(assert (=> b!4784024 (= e!2986894 (not (contains!17587 (keys!19689 (extractMap!2368 (toList!6761 lm!2709))) key!6641)))))

(declare-fun b!4784025 () Bool)

(declare-fun e!2986892 () Bool)

(declare-fun e!2986891 () Bool)

(assert (=> b!4784025 (= e!2986892 e!2986891)))

(declare-fun res!2031805 () Bool)

(assert (=> b!4784025 (=> (not res!2031805) (not e!2986891))))

(assert (=> b!4784025 (= res!2031805 (isDefined!10106 (getValueByKey!2297 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641)))))

(declare-fun b!4784026 () Bool)

(assert (=> b!4784026 (= e!2986891 (contains!17587 (keys!19689 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(declare-fun b!4784027 () Bool)

(assert (=> b!4784027 (= e!2986895 e!2986893)))

(declare-fun c!815528 () Bool)

(assert (=> b!4784027 (= c!815528 call!334807)))

(declare-fun bm!334802 () Bool)

(declare-fun e!2986890 () List!54157)

(assert (=> bm!334802 (= call!334807 (contains!17587 e!2986890 key!6641))))

(declare-fun c!815530 () Bool)

(declare-fun c!815529 () Bool)

(assert (=> bm!334802 (= c!815530 c!815529)))

(declare-fun b!4784028 () Bool)

(assert (=> b!4784028 false))

(declare-fun lt!1945973 () Unit!139411)

(declare-fun lt!1945977 () Unit!139411)

(assert (=> b!4784028 (= lt!1945973 lt!1945977)))

(declare-fun containsKey!3838 (List!54153 K!15592) Bool)

(assert (=> b!4784028 (containsKey!3838 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1048 (List!54153 K!15592) Unit!139411)

(assert (=> b!4784028 (= lt!1945977 (lemmaInGetKeysListThenContainsKey!1048 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(declare-fun Unit!139416 () Unit!139411)

(assert (=> b!4784028 (= e!2986893 Unit!139416)))

(declare-fun d!1530174 () Bool)

(assert (=> d!1530174 e!2986892))

(declare-fun res!2031804 () Bool)

(assert (=> d!1530174 (=> res!2031804 e!2986892)))

(assert (=> d!1530174 (= res!2031804 e!2986894)))

(declare-fun res!2031806 () Bool)

(assert (=> d!1530174 (=> (not res!2031806) (not e!2986894))))

(declare-fun lt!1945978 () Bool)

(assert (=> d!1530174 (= res!2031806 (not lt!1945978))))

(declare-fun lt!1945976 () Bool)

(assert (=> d!1530174 (= lt!1945978 lt!1945976)))

(declare-fun lt!1945972 () Unit!139411)

(assert (=> d!1530174 (= lt!1945972 e!2986895)))

(assert (=> d!1530174 (= c!815529 lt!1945976)))

(assert (=> d!1530174 (= lt!1945976 (containsKey!3838 (toList!6762 (extractMap!2368 (toList!6761 lm!2709))) key!6641))))

(assert (=> d!1530174 (= (contains!17583 (extractMap!2368 (toList!6761 lm!2709)) key!6641) lt!1945978)))

(declare-fun b!4784029 () Bool)

(declare-fun getKeysList!1048 (List!54153) List!54157)

(assert (=> b!4784029 (= e!2986890 (getKeysList!1048 (toList!6762 (extractMap!2368 (toList!6761 lm!2709)))))))

(declare-fun b!4784030 () Bool)

(assert (=> b!4784030 (= e!2986890 (keys!19689 (extractMap!2368 (toList!6761 lm!2709))))))

(assert (= (and d!1530174 c!815529) b!4784022))

(assert (= (and d!1530174 (not c!815529)) b!4784027))

(assert (= (and b!4784027 c!815528) b!4784028))

(assert (= (and b!4784027 (not c!815528)) b!4784023))

(assert (= (or b!4784022 b!4784027) bm!334802))

(assert (= (and bm!334802 c!815530) b!4784029))

(assert (= (and bm!334802 (not c!815530)) b!4784030))

(assert (= (and d!1530174 res!2031806) b!4784024))

(assert (= (and d!1530174 (not res!2031804)) b!4784025))

(assert (= (and b!4784025 res!2031805) b!4784026))

(declare-fun m!5762432 () Bool)

(assert (=> b!4784029 m!5762432))

(assert (=> b!4784026 m!5762258))

(declare-fun m!5762434 () Bool)

(assert (=> b!4784026 m!5762434))

(assert (=> b!4784026 m!5762434))

(declare-fun m!5762436 () Bool)

(assert (=> b!4784026 m!5762436))

(declare-fun m!5762438 () Bool)

(assert (=> b!4784025 m!5762438))

(assert (=> b!4784025 m!5762438))

(declare-fun m!5762440 () Bool)

(assert (=> b!4784025 m!5762440))

(assert (=> b!4784030 m!5762258))

(assert (=> b!4784030 m!5762434))

(declare-fun m!5762442 () Bool)

(assert (=> b!4784028 m!5762442))

(declare-fun m!5762444 () Bool)

(assert (=> b!4784028 m!5762444))

(declare-fun m!5762446 () Bool)

(assert (=> b!4784022 m!5762446))

(assert (=> b!4784022 m!5762438))

(assert (=> b!4784022 m!5762438))

(assert (=> b!4784022 m!5762440))

(declare-fun m!5762448 () Bool)

(assert (=> b!4784022 m!5762448))

(assert (=> d!1530174 m!5762442))

(assert (=> b!4784024 m!5762258))

(assert (=> b!4784024 m!5762434))

(assert (=> b!4784024 m!5762434))

(assert (=> b!4784024 m!5762436))

(declare-fun m!5762450 () Bool)

(assert (=> bm!334802 m!5762450))

(assert (=> b!4783937 d!1530174))

(declare-fun d!1530180 () Bool)

(assert (=> d!1530180 (contains!17581 (toList!6761 lm!2709) (tuple2!56535 lt!1945860 lt!1945869))))

(declare-fun lt!1945981 () Unit!139411)

(declare-fun choose!34348 (ListLongMap!5183 (_ BitVec 64) List!54153) Unit!139411)

(assert (=> d!1530180 (= lt!1945981 (choose!34348 lm!2709 lt!1945860 lt!1945869))))

(assert (=> d!1530180 (contains!17582 lm!2709 lt!1945860)))

(assert (=> d!1530180 (= (lemmaGetValueImpliesTupleContained!620 lm!2709 lt!1945860 lt!1945869) lt!1945981)))

(declare-fun bs!1152877 () Bool)

(assert (= bs!1152877 d!1530180))

(declare-fun m!5762452 () Bool)

(assert (=> bs!1152877 m!5762452))

(declare-fun m!5762456 () Bool)

(assert (=> bs!1152877 m!5762456))

(assert (=> bs!1152877 m!5762266))

(assert (=> b!4783937 d!1530180))

(declare-fun bs!1152879 () Bool)

(declare-fun d!1530182 () Bool)

(assert (= bs!1152879 (and d!1530182 start!491608)))

(declare-fun lambda!228835 () Int)

(assert (=> bs!1152879 (= lambda!228835 lambda!228806)))

(declare-fun bs!1152880 () Bool)

(assert (= bs!1152880 (and d!1530182 d!1530158)))

(assert (=> bs!1152880 (= lambda!228835 lambda!228822)))

(declare-fun bs!1152881 () Bool)

(assert (= bs!1152881 (and d!1530182 d!1530164)))

(assert (=> bs!1152881 (not (= lambda!228835 lambda!228825))))

(declare-fun e!2986921 () Bool)

(declare-fun b!4784066 () Bool)

(assert (=> b!4784066 (= e!2986921 (isDefined!10104 (getPair!813 (apply!12896 lm!2709 (hash!4848 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1946012 () Unit!139411)

(assert (=> b!4784066 (= lt!1946012 (forallContained!4085 (toList!6761 lm!2709) lambda!228835 (tuple2!56535 (hash!4848 hashF!1687 key!6641) (apply!12896 lm!2709 (hash!4848 hashF!1687 key!6641)))))))

(declare-fun lt!1946010 () Unit!139411)

(declare-fun lt!1946013 () Unit!139411)

(assert (=> b!4784066 (= lt!1946010 lt!1946013)))

(declare-fun lt!1946011 () (_ BitVec 64))

(declare-fun lt!1946015 () List!54153)

(assert (=> b!4784066 (contains!17581 (toList!6761 lm!2709) (tuple2!56535 lt!1946011 lt!1946015))))

(assert (=> b!4784066 (= lt!1946013 (lemmaGetValueImpliesTupleContained!620 lm!2709 lt!1946011 lt!1946015))))

(declare-fun e!2986922 () Bool)

(assert (=> b!4784066 e!2986922))

(declare-fun res!2031834 () Bool)

(assert (=> b!4784066 (=> (not res!2031834) (not e!2986922))))

(assert (=> b!4784066 (= res!2031834 (contains!17582 lm!2709 lt!1946011))))

(assert (=> b!4784066 (= lt!1946015 (apply!12896 lm!2709 (hash!4848 hashF!1687 key!6641)))))

(assert (=> b!4784066 (= lt!1946011 (hash!4848 hashF!1687 key!6641))))

(declare-fun lt!1946014 () Unit!139411)

(declare-fun lt!1946016 () Unit!139411)

(assert (=> b!4784066 (= lt!1946014 lt!1946016)))

(assert (=> b!4784066 (contains!17582 lm!2709 (hash!4848 hashF!1687 key!6641))))

(assert (=> b!4784066 (= lt!1946016 (lemmaInGenMapThenLongMapContainsHash!1037 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4784065 () Bool)

(declare-fun res!2031835 () Bool)

(assert (=> b!4784065 (=> (not res!2031835) (not e!2986921))))

(assert (=> b!4784065 (= res!2031835 (contains!17583 (extractMap!2368 (toList!6761 lm!2709)) key!6641))))

(assert (=> d!1530182 e!2986921))

(declare-fun res!2031836 () Bool)

(assert (=> d!1530182 (=> (not res!2031836) (not e!2986921))))

(assert (=> d!1530182 (= res!2031836 (forall!12141 (toList!6761 lm!2709) lambda!228835))))

(declare-fun lt!1946017 () Unit!139411)

(declare-fun choose!34349 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> d!1530182 (= lt!1946017 (choose!34349 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530182 (forall!12141 (toList!6761 lm!2709) lambda!228835)))

(assert (=> d!1530182 (= (lemmaInGenMapThenGetPairDefined!587 lm!2709 key!6641 hashF!1687) lt!1946017)))

(declare-fun b!4784064 () Bool)

(declare-fun res!2031833 () Bool)

(assert (=> b!4784064 (=> (not res!2031833) (not e!2986921))))

(assert (=> b!4784064 (= res!2031833 (allKeysSameHashInMap!2246 lm!2709 hashF!1687))))

(declare-fun b!4784067 () Bool)

(assert (=> b!4784067 (= e!2986922 (= (getValueByKey!2296 (toList!6761 lm!2709) lt!1946011) (Some!12962 lt!1946015)))))

(assert (= (and d!1530182 res!2031836) b!4784064))

(assert (= (and b!4784064 res!2031833) b!4784065))

(assert (= (and b!4784065 res!2031835) b!4784066))

(assert (= (and b!4784066 res!2031834) b!4784067))

(assert (=> b!4784064 m!5762224))

(assert (=> b!4784065 m!5762258))

(assert (=> b!4784065 m!5762258))

(assert (=> b!4784065 m!5762270))

(declare-fun m!5762472 () Bool)

(assert (=> d!1530182 m!5762472))

(declare-fun m!5762474 () Bool)

(assert (=> d!1530182 m!5762474))

(assert (=> d!1530182 m!5762472))

(declare-fun m!5762476 () Bool)

(assert (=> b!4784067 m!5762476))

(declare-fun m!5762478 () Bool)

(assert (=> b!4784066 m!5762478))

(declare-fun m!5762480 () Bool)

(assert (=> b!4784066 m!5762480))

(assert (=> b!4784066 m!5762268))

(assert (=> b!4784066 m!5762252))

(declare-fun m!5762482 () Bool)

(assert (=> b!4784066 m!5762482))

(assert (=> b!4784066 m!5762482))

(declare-fun m!5762484 () Bool)

(assert (=> b!4784066 m!5762484))

(declare-fun m!5762486 () Bool)

(assert (=> b!4784066 m!5762486))

(assert (=> b!4784066 m!5762252))

(declare-fun m!5762488 () Bool)

(assert (=> b!4784066 m!5762488))

(assert (=> b!4784066 m!5762252))

(declare-fun m!5762490 () Bool)

(assert (=> b!4784066 m!5762490))

(assert (=> b!4784066 m!5762484))

(declare-fun m!5762492 () Bool)

(assert (=> b!4784066 m!5762492))

(assert (=> b!4783937 d!1530182))

(declare-fun d!1530194 () Bool)

(declare-fun e!2986927 () Bool)

(assert (=> d!1530194 e!2986927))

(declare-fun res!2031839 () Bool)

(assert (=> d!1530194 (=> res!2031839 e!2986927)))

(declare-fun lt!1946026 () Bool)

(assert (=> d!1530194 (= res!2031839 (not lt!1946026))))

(declare-fun lt!1946029 () Bool)

(assert (=> d!1530194 (= lt!1946026 lt!1946029)))

(declare-fun lt!1946028 () Unit!139411)

(declare-fun e!2986928 () Unit!139411)

(assert (=> d!1530194 (= lt!1946028 e!2986928)))

(declare-fun c!815536 () Bool)

(assert (=> d!1530194 (= c!815536 lt!1946029)))

(declare-fun containsKey!3839 (List!54154 (_ BitVec 64)) Bool)

(assert (=> d!1530194 (= lt!1946029 (containsKey!3839 (toList!6761 lm!2709) lt!1945860))))

(assert (=> d!1530194 (= (contains!17582 lm!2709 lt!1945860) lt!1946026)))

(declare-fun b!4784074 () Bool)

(declare-fun lt!1946027 () Unit!139411)

(assert (=> b!4784074 (= e!2986928 lt!1946027)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2090 (List!54154 (_ BitVec 64)) Unit!139411)

(assert (=> b!4784074 (= lt!1946027 (lemmaContainsKeyImpliesGetValueByKeyDefined!2090 (toList!6761 lm!2709) lt!1945860))))

(declare-fun isDefined!10107 (Option!12963) Bool)

(assert (=> b!4784074 (isDefined!10107 (getValueByKey!2296 (toList!6761 lm!2709) lt!1945860))))

(declare-fun b!4784075 () Bool)

(declare-fun Unit!139417 () Unit!139411)

(assert (=> b!4784075 (= e!2986928 Unit!139417)))

(declare-fun b!4784076 () Bool)

(assert (=> b!4784076 (= e!2986927 (isDefined!10107 (getValueByKey!2296 (toList!6761 lm!2709) lt!1945860)))))

(assert (= (and d!1530194 c!815536) b!4784074))

(assert (= (and d!1530194 (not c!815536)) b!4784075))

(assert (= (and d!1530194 (not res!2031839)) b!4784076))

(declare-fun m!5762494 () Bool)

(assert (=> d!1530194 m!5762494))

(declare-fun m!5762496 () Bool)

(assert (=> b!4784074 m!5762496))

(declare-fun m!5762498 () Bool)

(assert (=> b!4784074 m!5762498))

(assert (=> b!4784074 m!5762498))

(declare-fun m!5762500 () Bool)

(assert (=> b!4784074 m!5762500))

(assert (=> b!4784076 m!5762498))

(assert (=> b!4784076 m!5762498))

(assert (=> b!4784076 m!5762500))

(assert (=> b!4783937 d!1530194))

(declare-fun d!1530196 () Bool)

(declare-fun hash!4851 (Hashable!6841 K!15592) (_ BitVec 64))

(assert (=> d!1530196 (= (hash!4848 hashF!1687 key!6641) (hash!4851 hashF!1687 key!6641))))

(declare-fun bs!1152882 () Bool)

(assert (= bs!1152882 d!1530196))

(declare-fun m!5762502 () Bool)

(assert (=> bs!1152882 m!5762502))

(assert (=> b!4783937 d!1530196))

(declare-fun d!1530198 () Bool)

(assert (=> d!1530198 (= (apply!12896 lm!2709 lt!1945860) (get!18386 (getValueByKey!2296 (toList!6761 lm!2709) lt!1945860)))))

(declare-fun bs!1152883 () Bool)

(assert (= bs!1152883 d!1530198))

(assert (=> bs!1152883 m!5762498))

(assert (=> bs!1152883 m!5762498))

(declare-fun m!5762504 () Bool)

(assert (=> bs!1152883 m!5762504))

(assert (=> b!4783937 d!1530198))

(declare-fun b!4784093 () Bool)

(declare-fun e!2986939 () Option!12961)

(assert (=> b!4784093 (= e!2986939 (Some!12960 (h!60449 lt!1945869)))))

(declare-fun b!4784094 () Bool)

(declare-fun e!2986940 () Option!12961)

(assert (=> b!4784094 (= e!2986939 e!2986940)))

(declare-fun c!815541 () Bool)

(assert (=> b!4784094 (= c!815541 (is-Cons!54029 lt!1945869))))

(declare-fun b!4784095 () Bool)

(assert (=> b!4784095 (= e!2986940 (getPair!813 (t!361603 lt!1945869) key!6641))))

(declare-fun d!1530200 () Bool)

(declare-fun e!2986942 () Bool)

(assert (=> d!1530200 e!2986942))

(declare-fun res!2031848 () Bool)

(assert (=> d!1530200 (=> res!2031848 e!2986942)))

(declare-fun e!2986941 () Bool)

(assert (=> d!1530200 (= res!2031848 e!2986941)))

(declare-fun res!2031849 () Bool)

(assert (=> d!1530200 (=> (not res!2031849) (not e!2986941))))

(declare-fun lt!1946032 () Option!12961)

(assert (=> d!1530200 (= res!2031849 (isEmpty!29373 lt!1946032))))

(assert (=> d!1530200 (= lt!1946032 e!2986939)))

(declare-fun c!815542 () Bool)

(assert (=> d!1530200 (= c!815542 (and (is-Cons!54029 lt!1945869) (= (_1!31560 (h!60449 lt!1945869)) key!6641)))))

(declare-fun noDuplicateKeys!2300 (List!54153) Bool)

(assert (=> d!1530200 (noDuplicateKeys!2300 lt!1945869)))

(assert (=> d!1530200 (= (getPair!813 lt!1945869 key!6641) lt!1946032)))

(declare-fun b!4784096 () Bool)

(declare-fun res!2031850 () Bool)

(declare-fun e!2986943 () Bool)

(assert (=> b!4784096 (=> (not res!2031850) (not e!2986943))))

(assert (=> b!4784096 (= res!2031850 (= (_1!31560 (get!18384 lt!1946032)) key!6641))))

(declare-fun b!4784097 () Bool)

(assert (=> b!4784097 (= e!2986942 e!2986943)))

(declare-fun res!2031851 () Bool)

(assert (=> b!4784097 (=> (not res!2031851) (not e!2986943))))

(assert (=> b!4784097 (= res!2031851 (isDefined!10104 lt!1946032))))

(declare-fun b!4784098 () Bool)

(assert (=> b!4784098 (= e!2986941 (not (containsKey!3836 lt!1945869 key!6641)))))

(declare-fun b!4784099 () Bool)

(declare-fun contains!17588 (List!54153 tuple2!56532) Bool)

(assert (=> b!4784099 (= e!2986943 (contains!17588 lt!1945869 (get!18384 lt!1946032)))))

(declare-fun b!4784100 () Bool)

(assert (=> b!4784100 (= e!2986940 None!12960)))

(assert (= (and d!1530200 c!815542) b!4784093))

(assert (= (and d!1530200 (not c!815542)) b!4784094))

(assert (= (and b!4784094 c!815541) b!4784095))

(assert (= (and b!4784094 (not c!815541)) b!4784100))

(assert (= (and d!1530200 res!2031849) b!4784098))

(assert (= (and d!1530200 (not res!2031848)) b!4784097))

(assert (= (and b!4784097 res!2031851) b!4784096))

(assert (= (and b!4784096 res!2031850) b!4784099))

(declare-fun m!5762506 () Bool)

(assert (=> b!4784097 m!5762506))

(declare-fun m!5762508 () Bool)

(assert (=> b!4784096 m!5762508))

(declare-fun m!5762510 () Bool)

(assert (=> d!1530200 m!5762510))

(declare-fun m!5762512 () Bool)

(assert (=> d!1530200 m!5762512))

(declare-fun m!5762514 () Bool)

(assert (=> b!4784098 m!5762514))

(assert (=> b!4784099 m!5762508))

(assert (=> b!4784099 m!5762508))

(declare-fun m!5762516 () Bool)

(assert (=> b!4784099 m!5762516))

(declare-fun m!5762518 () Bool)

(assert (=> b!4784095 m!5762518))

(assert (=> b!4783937 d!1530200))

(declare-fun d!1530202 () Bool)

(declare-fun lt!1946038 () Bool)

(declare-fun content!9664 (List!54154) (Set tuple2!56534))

(assert (=> d!1530202 (= lt!1946038 (set.member lt!1945858 (content!9664 (toList!6761 lm!2709))))))

(declare-fun e!2986948 () Bool)

(assert (=> d!1530202 (= lt!1946038 e!2986948)))

(declare-fun res!2031856 () Bool)

(assert (=> d!1530202 (=> (not res!2031856) (not e!2986948))))

(assert (=> d!1530202 (= res!2031856 (is-Cons!54030 (toList!6761 lm!2709)))))

(assert (=> d!1530202 (= (contains!17581 (toList!6761 lm!2709) lt!1945858) lt!1946038)))

(declare-fun b!4784105 () Bool)

(declare-fun e!2986949 () Bool)

(assert (=> b!4784105 (= e!2986948 e!2986949)))

(declare-fun res!2031857 () Bool)

(assert (=> b!4784105 (=> res!2031857 e!2986949)))

(assert (=> b!4784105 (= res!2031857 (= (h!60450 (toList!6761 lm!2709)) lt!1945858))))

(declare-fun b!4784106 () Bool)

(assert (=> b!4784106 (= e!2986949 (contains!17581 (t!361604 (toList!6761 lm!2709)) lt!1945858))))

(assert (= (and d!1530202 res!2031856) b!4784105))

(assert (= (and b!4784105 (not res!2031857)) b!4784106))

(declare-fun m!5762520 () Bool)

(assert (=> d!1530202 m!5762520))

(declare-fun m!5762522 () Bool)

(assert (=> d!1530202 m!5762522))

(declare-fun m!5762524 () Bool)

(assert (=> b!4784106 m!5762524))

(assert (=> b!4783937 d!1530202))

(declare-fun bs!1152888 () Bool)

(declare-fun d!1530204 () Bool)

(assert (= bs!1152888 (and d!1530204 start!491608)))

(declare-fun lambda!228841 () Int)

(assert (=> bs!1152888 (= lambda!228841 lambda!228806)))

(declare-fun bs!1152889 () Bool)

(assert (= bs!1152889 (and d!1530204 d!1530158)))

(assert (=> bs!1152889 (= lambda!228841 lambda!228822)))

(declare-fun bs!1152890 () Bool)

(assert (= bs!1152890 (and d!1530204 d!1530164)))

(assert (=> bs!1152890 (not (= lambda!228841 lambda!228825))))

(declare-fun bs!1152891 () Bool)

(assert (= bs!1152891 (and d!1530204 d!1530182)))

(assert (=> bs!1152891 (= lambda!228841 lambda!228835)))

(declare-fun lt!1946044 () ListMap!6233)

(declare-fun invariantList!1702 (List!54153) Bool)

(assert (=> d!1530204 (invariantList!1702 (toList!6762 lt!1946044))))

(declare-fun e!2986955 () ListMap!6233)

(assert (=> d!1530204 (= lt!1946044 e!2986955)))

(declare-fun c!815545 () Bool)

(assert (=> d!1530204 (= c!815545 (is-Cons!54030 (toList!6761 lm!2709)))))

(assert (=> d!1530204 (forall!12141 (toList!6761 lm!2709) lambda!228841)))

(assert (=> d!1530204 (= (extractMap!2368 (toList!6761 lm!2709)) lt!1946044)))

(declare-fun b!4784114 () Bool)

(declare-fun addToMapMapFromBucket!1667 (List!54153 ListMap!6233) ListMap!6233)

(assert (=> b!4784114 (= e!2986955 (addToMapMapFromBucket!1667 (_2!31561 (h!60450 (toList!6761 lm!2709))) (extractMap!2368 (t!361604 (toList!6761 lm!2709)))))))

(declare-fun b!4784115 () Bool)

(assert (=> b!4784115 (= e!2986955 (ListMap!6234 Nil!54029))))

(assert (= (and d!1530204 c!815545) b!4784114))

(assert (= (and d!1530204 (not c!815545)) b!4784115))

(declare-fun m!5762536 () Bool)

(assert (=> d!1530204 m!5762536))

(declare-fun m!5762538 () Bool)

(assert (=> d!1530204 m!5762538))

(declare-fun m!5762540 () Bool)

(assert (=> b!4784114 m!5762540))

(assert (=> b!4784114 m!5762540))

(declare-fun m!5762542 () Bool)

(assert (=> b!4784114 m!5762542))

(assert (=> b!4783937 d!1530204))

(declare-fun bs!1152892 () Bool)

(declare-fun d!1530214 () Bool)

(assert (= bs!1152892 (and d!1530214 d!1530158)))

(declare-fun lambda!228844 () Int)

(assert (=> bs!1152892 (= lambda!228844 lambda!228822)))

(declare-fun bs!1152893 () Bool)

(assert (= bs!1152893 (and d!1530214 start!491608)))

(assert (=> bs!1152893 (= lambda!228844 lambda!228806)))

(declare-fun bs!1152894 () Bool)

(assert (= bs!1152894 (and d!1530214 d!1530164)))

(assert (=> bs!1152894 (not (= lambda!228844 lambda!228825))))

(declare-fun bs!1152895 () Bool)

(assert (= bs!1152895 (and d!1530214 d!1530204)))

(assert (=> bs!1152895 (= lambda!228844 lambda!228841)))

(declare-fun bs!1152896 () Bool)

(assert (= bs!1152896 (and d!1530214 d!1530182)))

(assert (=> bs!1152896 (= lambda!228844 lambda!228835)))

(assert (=> d!1530214 (contains!17582 lm!2709 (hash!4848 hashF!1687 key!6641))))

(declare-fun lt!1946047 () Unit!139411)

(declare-fun choose!34350 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> d!1530214 (= lt!1946047 (choose!34350 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530214 (forall!12141 (toList!6761 lm!2709) lambda!228844)))

(assert (=> d!1530214 (= (lemmaInGenMapThenLongMapContainsHash!1037 lm!2709 key!6641 hashF!1687) lt!1946047)))

(declare-fun bs!1152897 () Bool)

(assert (= bs!1152897 d!1530214))

(assert (=> bs!1152897 m!5762252))

(assert (=> bs!1152897 m!5762252))

(assert (=> bs!1152897 m!5762488))

(declare-fun m!5762544 () Bool)

(assert (=> bs!1152897 m!5762544))

(declare-fun m!5762546 () Bool)

(assert (=> bs!1152897 m!5762546))

(assert (=> b!4783937 d!1530214))

(declare-fun bs!1152898 () Bool)

(declare-fun d!1530216 () Bool)

(assert (= bs!1152898 (and d!1530216 d!1530158)))

(declare-fun lambda!228847 () Int)

(assert (=> bs!1152898 (= lambda!228847 lambda!228822)))

(declare-fun bs!1152899 () Bool)

(assert (= bs!1152899 (and d!1530216 d!1530214)))

(assert (=> bs!1152899 (= lambda!228847 lambda!228844)))

(declare-fun bs!1152900 () Bool)

(assert (= bs!1152900 (and d!1530216 start!491608)))

(assert (=> bs!1152900 (= lambda!228847 lambda!228806)))

(declare-fun bs!1152901 () Bool)

(assert (= bs!1152901 (and d!1530216 d!1530164)))

(assert (=> bs!1152901 (not (= lambda!228847 lambda!228825))))

(declare-fun bs!1152902 () Bool)

(assert (= bs!1152902 (and d!1530216 d!1530204)))

(assert (=> bs!1152902 (= lambda!228847 lambda!228841)))

(declare-fun bs!1152903 () Bool)

(assert (= bs!1152903 (and d!1530216 d!1530182)))

(assert (=> bs!1152903 (= lambda!228847 lambda!228835)))

(assert (=> d!1530216 (contains!17583 (extractMap!2368 (toList!6761 lm!2709)) key!6641)))

(declare-fun lt!1946050 () Unit!139411)

(declare-fun choose!34351 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> d!1530216 (= lt!1946050 (choose!34351 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530216 (forall!12141 (toList!6761 lm!2709) lambda!228847)))

(assert (=> d!1530216 (= (lemmaListContainsThenExtractedMapContains!689 lm!2709 key!6641 hashF!1687) lt!1946050)))

(declare-fun bs!1152904 () Bool)

(assert (= bs!1152904 d!1530216))

(assert (=> bs!1152904 m!5762258))

(assert (=> bs!1152904 m!5762258))

(assert (=> bs!1152904 m!5762270))

(declare-fun m!5762548 () Bool)

(assert (=> bs!1152904 m!5762548))

(declare-fun m!5762550 () Bool)

(assert (=> bs!1152904 m!5762550))

(assert (=> b!4783937 d!1530216))

(declare-fun d!1530218 () Bool)

(assert (=> d!1530218 (= (get!18384 lt!1945866) (v!48195 lt!1945866))))

(assert (=> b!4783937 d!1530218))

(declare-fun bs!1152905 () Bool)

(declare-fun d!1530220 () Bool)

(assert (= bs!1152905 (and d!1530220 d!1530158)))

(declare-fun lambda!228848 () Int)

(assert (=> bs!1152905 (not (= lambda!228848 lambda!228822))))

(declare-fun bs!1152906 () Bool)

(assert (= bs!1152906 (and d!1530220 d!1530214)))

(assert (=> bs!1152906 (not (= lambda!228848 lambda!228844))))

(declare-fun bs!1152907 () Bool)

(assert (= bs!1152907 (and d!1530220 start!491608)))

(assert (=> bs!1152907 (not (= lambda!228848 lambda!228806))))

(declare-fun bs!1152908 () Bool)

(assert (= bs!1152908 (and d!1530220 d!1530204)))

(assert (=> bs!1152908 (not (= lambda!228848 lambda!228841))))

(declare-fun bs!1152909 () Bool)

(assert (= bs!1152909 (and d!1530220 d!1530182)))

(assert (=> bs!1152909 (not (= lambda!228848 lambda!228835))))

(declare-fun bs!1152910 () Bool)

(assert (= bs!1152910 (and d!1530220 d!1530216)))

(assert (=> bs!1152910 (not (= lambda!228848 lambda!228847))))

(declare-fun bs!1152911 () Bool)

(assert (= bs!1152911 (and d!1530220 d!1530164)))

(assert (=> bs!1152911 (= lambda!228848 lambda!228825)))

(assert (=> d!1530220 true))

(assert (=> d!1530220 (= (allKeysSameHashInMap!2246 lm!2709 hashF!1687) (forall!12141 (toList!6761 lm!2709) lambda!228848))))

(declare-fun bs!1152912 () Bool)

(assert (= bs!1152912 d!1530220))

(declare-fun m!5762552 () Bool)

(assert (=> bs!1152912 m!5762552))

(assert (=> b!4783932 d!1530220))

(declare-fun b!4784116 () Bool)

(declare-fun e!2986956 () Option!12961)

(assert (=> b!4784116 (= e!2986956 (Some!12960 (h!60449 lt!1945865)))))

(declare-fun b!4784117 () Bool)

(declare-fun e!2986957 () Option!12961)

(assert (=> b!4784117 (= e!2986956 e!2986957)))

(declare-fun c!815546 () Bool)

(assert (=> b!4784117 (= c!815546 (is-Cons!54029 lt!1945865))))

(declare-fun b!4784118 () Bool)

(assert (=> b!4784118 (= e!2986957 (getPair!813 (t!361603 lt!1945865) key!6641))))

(declare-fun d!1530222 () Bool)

(declare-fun e!2986959 () Bool)

(assert (=> d!1530222 e!2986959))

(declare-fun res!2031861 () Bool)

(assert (=> d!1530222 (=> res!2031861 e!2986959)))

(declare-fun e!2986958 () Bool)

(assert (=> d!1530222 (= res!2031861 e!2986958)))

(declare-fun res!2031862 () Bool)

(assert (=> d!1530222 (=> (not res!2031862) (not e!2986958))))

(declare-fun lt!1946051 () Option!12961)

(assert (=> d!1530222 (= res!2031862 (isEmpty!29373 lt!1946051))))

(assert (=> d!1530222 (= lt!1946051 e!2986956)))

(declare-fun c!815547 () Bool)

(assert (=> d!1530222 (= c!815547 (and (is-Cons!54029 lt!1945865) (= (_1!31560 (h!60449 lt!1945865)) key!6641)))))

(assert (=> d!1530222 (noDuplicateKeys!2300 lt!1945865)))

(assert (=> d!1530222 (= (getPair!813 lt!1945865 key!6641) lt!1946051)))

(declare-fun b!4784119 () Bool)

(declare-fun res!2031863 () Bool)

(declare-fun e!2986960 () Bool)

(assert (=> b!4784119 (=> (not res!2031863) (not e!2986960))))

(assert (=> b!4784119 (= res!2031863 (= (_1!31560 (get!18384 lt!1946051)) key!6641))))

(declare-fun b!4784120 () Bool)

(assert (=> b!4784120 (= e!2986959 e!2986960)))

(declare-fun res!2031864 () Bool)

(assert (=> b!4784120 (=> (not res!2031864) (not e!2986960))))

(assert (=> b!4784120 (= res!2031864 (isDefined!10104 lt!1946051))))

(declare-fun b!4784121 () Bool)

(assert (=> b!4784121 (= e!2986958 (not (containsKey!3836 lt!1945865 key!6641)))))

(declare-fun b!4784122 () Bool)

(assert (=> b!4784122 (= e!2986960 (contains!17588 lt!1945865 (get!18384 lt!1946051)))))

(declare-fun b!4784123 () Bool)

(assert (=> b!4784123 (= e!2986957 None!12960)))

(assert (= (and d!1530222 c!815547) b!4784116))

(assert (= (and d!1530222 (not c!815547)) b!4784117))

(assert (= (and b!4784117 c!815546) b!4784118))

(assert (= (and b!4784117 (not c!815546)) b!4784123))

(assert (= (and d!1530222 res!2031862) b!4784121))

(assert (= (and d!1530222 (not res!2031861)) b!4784120))

(assert (= (and b!4784120 res!2031864) b!4784119))

(assert (= (and b!4784119 res!2031863) b!4784122))

(declare-fun m!5762554 () Bool)

(assert (=> b!4784120 m!5762554))

(declare-fun m!5762556 () Bool)

(assert (=> b!4784119 m!5762556))

(declare-fun m!5762558 () Bool)

(assert (=> d!1530222 m!5762558))

(declare-fun m!5762560 () Bool)

(assert (=> d!1530222 m!5762560))

(declare-fun m!5762562 () Bool)

(assert (=> b!4784121 m!5762562))

(assert (=> b!4784122 m!5762556))

(assert (=> b!4784122 m!5762556))

(declare-fun m!5762564 () Bool)

(assert (=> b!4784122 m!5762564))

(declare-fun m!5762566 () Bool)

(assert (=> b!4784118 m!5762566))

(assert (=> b!4783927 d!1530222))

(declare-fun bs!1152913 () Bool)

(declare-fun d!1530224 () Bool)

(assert (= bs!1152913 (and d!1530224 d!1530158)))

(declare-fun lambda!228849 () Int)

(assert (=> bs!1152913 (= lambda!228849 lambda!228822)))

(declare-fun bs!1152914 () Bool)

(assert (= bs!1152914 (and d!1530224 d!1530214)))

(assert (=> bs!1152914 (= lambda!228849 lambda!228844)))

(declare-fun bs!1152915 () Bool)

(assert (= bs!1152915 (and d!1530224 start!491608)))

(assert (=> bs!1152915 (= lambda!228849 lambda!228806)))

(declare-fun bs!1152916 () Bool)

(assert (= bs!1152916 (and d!1530224 d!1530204)))

(assert (=> bs!1152916 (= lambda!228849 lambda!228841)))

(declare-fun bs!1152917 () Bool)

(assert (= bs!1152917 (and d!1530224 d!1530220)))

(assert (=> bs!1152917 (not (= lambda!228849 lambda!228848))))

(declare-fun bs!1152918 () Bool)

(assert (= bs!1152918 (and d!1530224 d!1530182)))

(assert (=> bs!1152918 (= lambda!228849 lambda!228835)))

(declare-fun bs!1152919 () Bool)

(assert (= bs!1152919 (and d!1530224 d!1530216)))

(assert (=> bs!1152919 (= lambda!228849 lambda!228847)))

(declare-fun bs!1152920 () Bool)

(assert (= bs!1152920 (and d!1530224 d!1530164)))

(assert (=> bs!1152920 (not (= lambda!228849 lambda!228825))))

(assert (=> d!1530224 (contains!17582 lt!1945864 (hash!4848 hashF!1687 key!6641))))

(declare-fun lt!1946052 () Unit!139411)

(assert (=> d!1530224 (= lt!1946052 (choose!34350 lt!1945864 key!6641 hashF!1687))))

(assert (=> d!1530224 (forall!12141 (toList!6761 lt!1945864) lambda!228849)))

(assert (=> d!1530224 (= (lemmaInGenMapThenLongMapContainsHash!1037 lt!1945864 key!6641 hashF!1687) lt!1946052)))

(declare-fun bs!1152921 () Bool)

(assert (= bs!1152921 d!1530224))

(assert (=> bs!1152921 m!5762252))

(assert (=> bs!1152921 m!5762252))

(declare-fun m!5762568 () Bool)

(assert (=> bs!1152921 m!5762568))

(declare-fun m!5762570 () Bool)

(assert (=> bs!1152921 m!5762570))

(declare-fun m!5762572 () Bool)

(assert (=> bs!1152921 m!5762572))

(assert (=> b!4783927 d!1530224))

(declare-fun bs!1152922 () Bool)

(declare-fun d!1530226 () Bool)

(assert (= bs!1152922 (and d!1530226 d!1530158)))

(declare-fun lambda!228850 () Int)

(assert (=> bs!1152922 (= lambda!228850 lambda!228822)))

(declare-fun bs!1152923 () Bool)

(assert (= bs!1152923 (and d!1530226 d!1530214)))

(assert (=> bs!1152923 (= lambda!228850 lambda!228844)))

(declare-fun bs!1152924 () Bool)

(assert (= bs!1152924 (and d!1530226 d!1530224)))

(assert (=> bs!1152924 (= lambda!228850 lambda!228849)))

(declare-fun bs!1152925 () Bool)

(assert (= bs!1152925 (and d!1530226 start!491608)))

(assert (=> bs!1152925 (= lambda!228850 lambda!228806)))

(declare-fun bs!1152926 () Bool)

(assert (= bs!1152926 (and d!1530226 d!1530204)))

(assert (=> bs!1152926 (= lambda!228850 lambda!228841)))

(declare-fun bs!1152927 () Bool)

(assert (= bs!1152927 (and d!1530226 d!1530220)))

(assert (=> bs!1152927 (not (= lambda!228850 lambda!228848))))

(declare-fun bs!1152928 () Bool)

(assert (= bs!1152928 (and d!1530226 d!1530182)))

(assert (=> bs!1152928 (= lambda!228850 lambda!228835)))

(declare-fun bs!1152929 () Bool)

(assert (= bs!1152929 (and d!1530226 d!1530216)))

(assert (=> bs!1152929 (= lambda!228850 lambda!228847)))

(declare-fun bs!1152930 () Bool)

(assert (= bs!1152930 (and d!1530226 d!1530164)))

(assert (=> bs!1152930 (not (= lambda!228850 lambda!228825))))

(assert (=> d!1530226 (contains!17583 (extractMap!2368 (toList!6761 lt!1945864)) key!6641)))

(declare-fun lt!1946053 () Unit!139411)

(assert (=> d!1530226 (= lt!1946053 (choose!34351 lt!1945864 key!6641 hashF!1687))))

(assert (=> d!1530226 (forall!12141 (toList!6761 lt!1945864) lambda!228850)))

(assert (=> d!1530226 (= (lemmaListContainsThenExtractedMapContains!689 lt!1945864 key!6641 hashF!1687) lt!1946053)))

(declare-fun bs!1152931 () Bool)

(assert (= bs!1152931 d!1530226))

(assert (=> bs!1152931 m!5762292))

(assert (=> bs!1152931 m!5762292))

(assert (=> bs!1152931 m!5762294))

(declare-fun m!5762574 () Bool)

(assert (=> bs!1152931 m!5762574))

(declare-fun m!5762576 () Bool)

(assert (=> bs!1152931 m!5762576))

(assert (=> b!4783927 d!1530226))

(declare-fun d!1530228 () Bool)

(declare-fun lt!1946054 () Bool)

(assert (=> d!1530228 (= lt!1946054 (set.member lt!1945855 (content!9664 (toList!6761 lt!1945864))))))

(declare-fun e!2986961 () Bool)

(assert (=> d!1530228 (= lt!1946054 e!2986961)))

(declare-fun res!2031865 () Bool)

(assert (=> d!1530228 (=> (not res!2031865) (not e!2986961))))

(assert (=> d!1530228 (= res!2031865 (is-Cons!54030 (toList!6761 lt!1945864)))))

(assert (=> d!1530228 (= (contains!17581 (toList!6761 lt!1945864) lt!1945855) lt!1946054)))

(declare-fun b!4784124 () Bool)

(declare-fun e!2986962 () Bool)

(assert (=> b!4784124 (= e!2986961 e!2986962)))

(declare-fun res!2031866 () Bool)

(assert (=> b!4784124 (=> res!2031866 e!2986962)))

(assert (=> b!4784124 (= res!2031866 (= (h!60450 (toList!6761 lt!1945864)) lt!1945855))))

(declare-fun b!4784125 () Bool)

(assert (=> b!4784125 (= e!2986962 (contains!17581 (t!361604 (toList!6761 lt!1945864)) lt!1945855))))

(assert (= (and d!1530228 res!2031865) b!4784124))

(assert (= (and b!4784124 (not res!2031866)) b!4784125))

(declare-fun m!5762578 () Bool)

(assert (=> d!1530228 m!5762578))

(declare-fun m!5762580 () Bool)

(assert (=> d!1530228 m!5762580))

(declare-fun m!5762582 () Bool)

(assert (=> b!4784125 m!5762582))

(assert (=> b!4783927 d!1530228))

(declare-fun d!1530230 () Bool)

(assert (=> d!1530230 (= (get!18384 lt!1945856) (v!48195 lt!1945856))))

(assert (=> b!4783927 d!1530230))

(declare-fun d!1530232 () Bool)

(declare-fun e!2986963 () Bool)

(assert (=> d!1530232 e!2986963))

(declare-fun res!2031867 () Bool)

(assert (=> d!1530232 (=> res!2031867 e!2986963)))

(declare-fun lt!1946055 () Bool)

(assert (=> d!1530232 (= res!2031867 (not lt!1946055))))

(declare-fun lt!1946058 () Bool)

(assert (=> d!1530232 (= lt!1946055 lt!1946058)))

(declare-fun lt!1946057 () Unit!139411)

(declare-fun e!2986964 () Unit!139411)

(assert (=> d!1530232 (= lt!1946057 e!2986964)))

(declare-fun c!815548 () Bool)

(assert (=> d!1530232 (= c!815548 lt!1946058)))

(assert (=> d!1530232 (= lt!1946058 (containsKey!3839 (toList!6761 lt!1945864) lt!1945860))))

(assert (=> d!1530232 (= (contains!17582 lt!1945864 lt!1945860) lt!1946055)))

(declare-fun b!4784126 () Bool)

(declare-fun lt!1946056 () Unit!139411)

(assert (=> b!4784126 (= e!2986964 lt!1946056)))

(assert (=> b!4784126 (= lt!1946056 (lemmaContainsKeyImpliesGetValueByKeyDefined!2090 (toList!6761 lt!1945864) lt!1945860))))

(assert (=> b!4784126 (isDefined!10107 (getValueByKey!2296 (toList!6761 lt!1945864) lt!1945860))))

(declare-fun b!4784127 () Bool)

(declare-fun Unit!139418 () Unit!139411)

(assert (=> b!4784127 (= e!2986964 Unit!139418)))

(declare-fun b!4784128 () Bool)

(assert (=> b!4784128 (= e!2986963 (isDefined!10107 (getValueByKey!2296 (toList!6761 lt!1945864) lt!1945860)))))

(assert (= (and d!1530232 c!815548) b!4784126))

(assert (= (and d!1530232 (not c!815548)) b!4784127))

(assert (= (and d!1530232 (not res!2031867)) b!4784128))

(declare-fun m!5762584 () Bool)

(assert (=> d!1530232 m!5762584))

(declare-fun m!5762586 () Bool)

(assert (=> b!4784126 m!5762586))

(declare-fun m!5762588 () Bool)

(assert (=> b!4784126 m!5762588))

(assert (=> b!4784126 m!5762588))

(declare-fun m!5762590 () Bool)

(assert (=> b!4784126 m!5762590))

(assert (=> b!4784128 m!5762588))

(assert (=> b!4784128 m!5762588))

(assert (=> b!4784128 m!5762590))

(assert (=> b!4783927 d!1530232))

(declare-fun d!1530234 () Bool)

(assert (=> d!1530234 (= (isDefined!10104 lt!1945856) (not (isEmpty!29373 lt!1945856)))))

(declare-fun bs!1152932 () Bool)

(assert (= bs!1152932 d!1530234))

(declare-fun m!5762592 () Bool)

(assert (=> bs!1152932 m!5762592))

(assert (=> b!4783927 d!1530234))

(declare-fun bs!1152933 () Bool)

(declare-fun d!1530236 () Bool)

(assert (= bs!1152933 (and d!1530236 d!1530158)))

(declare-fun lambda!228851 () Int)

(assert (=> bs!1152933 (= lambda!228851 lambda!228822)))

(declare-fun bs!1152934 () Bool)

(assert (= bs!1152934 (and d!1530236 d!1530214)))

(assert (=> bs!1152934 (= lambda!228851 lambda!228844)))

(declare-fun bs!1152935 () Bool)

(assert (= bs!1152935 (and d!1530236 d!1530224)))

(assert (=> bs!1152935 (= lambda!228851 lambda!228849)))

(declare-fun bs!1152936 () Bool)

(assert (= bs!1152936 (and d!1530236 start!491608)))

(assert (=> bs!1152936 (= lambda!228851 lambda!228806)))

(declare-fun bs!1152937 () Bool)

(assert (= bs!1152937 (and d!1530236 d!1530204)))

(assert (=> bs!1152937 (= lambda!228851 lambda!228841)))

(declare-fun bs!1152938 () Bool)

(assert (= bs!1152938 (and d!1530236 d!1530220)))

(assert (=> bs!1152938 (not (= lambda!228851 lambda!228848))))

(declare-fun bs!1152939 () Bool)

(assert (= bs!1152939 (and d!1530236 d!1530182)))

(assert (=> bs!1152939 (= lambda!228851 lambda!228835)))

(declare-fun bs!1152940 () Bool)

(assert (= bs!1152940 (and d!1530236 d!1530216)))

(assert (=> bs!1152940 (= lambda!228851 lambda!228847)))

(declare-fun bs!1152941 () Bool)

(assert (= bs!1152941 (and d!1530236 d!1530164)))

(assert (=> bs!1152941 (not (= lambda!228851 lambda!228825))))

(declare-fun bs!1152942 () Bool)

(assert (= bs!1152942 (and d!1530236 d!1530226)))

(assert (=> bs!1152942 (= lambda!228851 lambda!228850)))

(declare-fun e!2986965 () Bool)

(declare-fun b!4784131 () Bool)

(assert (=> b!4784131 (= e!2986965 (isDefined!10104 (getPair!813 (apply!12896 lt!1945864 (hash!4848 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1946061 () Unit!139411)

(assert (=> b!4784131 (= lt!1946061 (forallContained!4085 (toList!6761 lt!1945864) lambda!228851 (tuple2!56535 (hash!4848 hashF!1687 key!6641) (apply!12896 lt!1945864 (hash!4848 hashF!1687 key!6641)))))))

(declare-fun lt!1946059 () Unit!139411)

(declare-fun lt!1946062 () Unit!139411)

(assert (=> b!4784131 (= lt!1946059 lt!1946062)))

(declare-fun lt!1946060 () (_ BitVec 64))

(declare-fun lt!1946064 () List!54153)

(assert (=> b!4784131 (contains!17581 (toList!6761 lt!1945864) (tuple2!56535 lt!1946060 lt!1946064))))

(assert (=> b!4784131 (= lt!1946062 (lemmaGetValueImpliesTupleContained!620 lt!1945864 lt!1946060 lt!1946064))))

(declare-fun e!2986966 () Bool)

(assert (=> b!4784131 e!2986966))

(declare-fun res!2031869 () Bool)

(assert (=> b!4784131 (=> (not res!2031869) (not e!2986966))))

(assert (=> b!4784131 (= res!2031869 (contains!17582 lt!1945864 lt!1946060))))

(assert (=> b!4784131 (= lt!1946064 (apply!12896 lt!1945864 (hash!4848 hashF!1687 key!6641)))))

(assert (=> b!4784131 (= lt!1946060 (hash!4848 hashF!1687 key!6641))))

(declare-fun lt!1946063 () Unit!139411)

(declare-fun lt!1946065 () Unit!139411)

(assert (=> b!4784131 (= lt!1946063 lt!1946065)))

(assert (=> b!4784131 (contains!17582 lt!1945864 (hash!4848 hashF!1687 key!6641))))

(assert (=> b!4784131 (= lt!1946065 (lemmaInGenMapThenLongMapContainsHash!1037 lt!1945864 key!6641 hashF!1687))))

(declare-fun b!4784130 () Bool)

(declare-fun res!2031870 () Bool)

(assert (=> b!4784130 (=> (not res!2031870) (not e!2986965))))

(assert (=> b!4784130 (= res!2031870 (contains!17583 (extractMap!2368 (toList!6761 lt!1945864)) key!6641))))

(assert (=> d!1530236 e!2986965))

(declare-fun res!2031871 () Bool)

(assert (=> d!1530236 (=> (not res!2031871) (not e!2986965))))

(assert (=> d!1530236 (= res!2031871 (forall!12141 (toList!6761 lt!1945864) lambda!228851))))

(declare-fun lt!1946066 () Unit!139411)

(assert (=> d!1530236 (= lt!1946066 (choose!34349 lt!1945864 key!6641 hashF!1687))))

(assert (=> d!1530236 (forall!12141 (toList!6761 lt!1945864) lambda!228851)))

(assert (=> d!1530236 (= (lemmaInGenMapThenGetPairDefined!587 lt!1945864 key!6641 hashF!1687) lt!1946066)))

(declare-fun b!4784129 () Bool)

(declare-fun res!2031868 () Bool)

(assert (=> b!4784129 (=> (not res!2031868) (not e!2986965))))

(assert (=> b!4784129 (= res!2031868 (allKeysSameHashInMap!2246 lt!1945864 hashF!1687))))

(declare-fun b!4784132 () Bool)

(assert (=> b!4784132 (= e!2986966 (= (getValueByKey!2296 (toList!6761 lt!1945864) lt!1946060) (Some!12962 lt!1946064)))))

(assert (= (and d!1530236 res!2031871) b!4784129))

(assert (= (and b!4784129 res!2031868) b!4784130))

(assert (= (and b!4784130 res!2031870) b!4784131))

(assert (= (and b!4784131 res!2031869) b!4784132))

(assert (=> b!4784129 m!5762304))

(assert (=> b!4784130 m!5762292))

(assert (=> b!4784130 m!5762292))

(assert (=> b!4784130 m!5762294))

(declare-fun m!5762594 () Bool)

(assert (=> d!1530236 m!5762594))

(declare-fun m!5762596 () Bool)

(assert (=> d!1530236 m!5762596))

(assert (=> d!1530236 m!5762594))

(declare-fun m!5762598 () Bool)

(assert (=> b!4784132 m!5762598))

(declare-fun m!5762600 () Bool)

(assert (=> b!4784131 m!5762600))

(declare-fun m!5762602 () Bool)

(assert (=> b!4784131 m!5762602))

(assert (=> b!4784131 m!5762282))

(assert (=> b!4784131 m!5762252))

(declare-fun m!5762604 () Bool)

(assert (=> b!4784131 m!5762604))

(assert (=> b!4784131 m!5762604))

(declare-fun m!5762606 () Bool)

(assert (=> b!4784131 m!5762606))

(declare-fun m!5762608 () Bool)

(assert (=> b!4784131 m!5762608))

(assert (=> b!4784131 m!5762252))

(assert (=> b!4784131 m!5762568))

(assert (=> b!4784131 m!5762252))

(declare-fun m!5762610 () Bool)

(assert (=> b!4784131 m!5762610))

(assert (=> b!4784131 m!5762606))

(declare-fun m!5762612 () Bool)

(assert (=> b!4784131 m!5762612))

(assert (=> b!4783927 d!1530236))

(declare-fun d!1530238 () Bool)

(assert (=> d!1530238 (dynLambda!22022 lambda!228806 lt!1945855)))

(declare-fun lt!1946067 () Unit!139411)

(assert (=> d!1530238 (= lt!1946067 (choose!34347 (toList!6761 lt!1945864) lambda!228806 lt!1945855))))

(declare-fun e!2986967 () Bool)

(assert (=> d!1530238 e!2986967))

(declare-fun res!2031872 () Bool)

(assert (=> d!1530238 (=> (not res!2031872) (not e!2986967))))

(assert (=> d!1530238 (= res!2031872 (forall!12141 (toList!6761 lt!1945864) lambda!228806))))

(assert (=> d!1530238 (= (forallContained!4085 (toList!6761 lt!1945864) lambda!228806 lt!1945855) lt!1946067)))

(declare-fun b!4784133 () Bool)

(assert (=> b!4784133 (= e!2986967 (contains!17581 (toList!6761 lt!1945864) lt!1945855))))

(assert (= (and d!1530238 res!2031872) b!4784133))

(declare-fun b_lambda!186017 () Bool)

(assert (=> (not b_lambda!186017) (not d!1530238)))

(declare-fun m!5762614 () Bool)

(assert (=> d!1530238 m!5762614))

(declare-fun m!5762616 () Bool)

(assert (=> d!1530238 m!5762616))

(assert (=> d!1530238 m!5762236))

(assert (=> b!4784133 m!5762296))

(assert (=> b!4783927 d!1530238))

(declare-fun d!1530240 () Bool)

(assert (=> d!1530240 (= (apply!12896 lt!1945864 lt!1945860) (get!18386 (getValueByKey!2296 (toList!6761 lt!1945864) lt!1945860)))))

(declare-fun bs!1152943 () Bool)

(assert (= bs!1152943 d!1530240))

(assert (=> bs!1152943 m!5762588))

(assert (=> bs!1152943 m!5762588))

(declare-fun m!5762618 () Bool)

(assert (=> bs!1152943 m!5762618))

(assert (=> b!4783927 d!1530240))

(declare-fun b!4784134 () Bool)

(declare-fun e!2986973 () Unit!139411)

(declare-fun lt!1946072 () Unit!139411)

(assert (=> b!4784134 (= e!2986973 lt!1946072)))

(declare-fun lt!1946071 () Unit!139411)

(assert (=> b!4784134 (= lt!1946071 (lemmaContainsKeyImpliesGetValueByKeyDefined!2089 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(assert (=> b!4784134 (isDefined!10106 (getValueByKey!2297 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(declare-fun lt!1946068 () Unit!139411)

(assert (=> b!4784134 (= lt!1946068 lt!1946071)))

(assert (=> b!4784134 (= lt!1946072 (lemmaInListThenGetKeysListContains!1043 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(declare-fun call!334808 () Bool)

(assert (=> b!4784134 call!334808))

(declare-fun b!4784135 () Bool)

(declare-fun e!2986971 () Unit!139411)

(declare-fun Unit!139419 () Unit!139411)

(assert (=> b!4784135 (= e!2986971 Unit!139419)))

(declare-fun b!4784136 () Bool)

(declare-fun e!2986972 () Bool)

(assert (=> b!4784136 (= e!2986972 (not (contains!17587 (keys!19689 (extractMap!2368 (toList!6761 lt!1945864))) key!6641)))))

(declare-fun b!4784137 () Bool)

(declare-fun e!2986970 () Bool)

(declare-fun e!2986969 () Bool)

(assert (=> b!4784137 (= e!2986970 e!2986969)))

(declare-fun res!2031874 () Bool)

(assert (=> b!4784137 (=> (not res!2031874) (not e!2986969))))

(assert (=> b!4784137 (= res!2031874 (isDefined!10106 (getValueByKey!2297 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641)))))

(declare-fun b!4784138 () Bool)

(assert (=> b!4784138 (= e!2986969 (contains!17587 (keys!19689 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(declare-fun b!4784139 () Bool)

(assert (=> b!4784139 (= e!2986973 e!2986971)))

(declare-fun c!815549 () Bool)

(assert (=> b!4784139 (= c!815549 call!334808)))

(declare-fun bm!334803 () Bool)

(declare-fun e!2986968 () List!54157)

(assert (=> bm!334803 (= call!334808 (contains!17587 e!2986968 key!6641))))

(declare-fun c!815551 () Bool)

(declare-fun c!815550 () Bool)

(assert (=> bm!334803 (= c!815551 c!815550)))

(declare-fun b!4784140 () Bool)

(assert (=> b!4784140 false))

(declare-fun lt!1946070 () Unit!139411)

(declare-fun lt!1946074 () Unit!139411)

(assert (=> b!4784140 (= lt!1946070 lt!1946074)))

(assert (=> b!4784140 (containsKey!3838 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641)))

(assert (=> b!4784140 (= lt!1946074 (lemmaInGetKeysListThenContainsKey!1048 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(declare-fun Unit!139420 () Unit!139411)

(assert (=> b!4784140 (= e!2986971 Unit!139420)))

(declare-fun d!1530242 () Bool)

(assert (=> d!1530242 e!2986970))

(declare-fun res!2031873 () Bool)

(assert (=> d!1530242 (=> res!2031873 e!2986970)))

(assert (=> d!1530242 (= res!2031873 e!2986972)))

(declare-fun res!2031875 () Bool)

(assert (=> d!1530242 (=> (not res!2031875) (not e!2986972))))

(declare-fun lt!1946075 () Bool)

(assert (=> d!1530242 (= res!2031875 (not lt!1946075))))

(declare-fun lt!1946073 () Bool)

(assert (=> d!1530242 (= lt!1946075 lt!1946073)))

(declare-fun lt!1946069 () Unit!139411)

(assert (=> d!1530242 (= lt!1946069 e!2986973)))

(assert (=> d!1530242 (= c!815550 lt!1946073)))

(assert (=> d!1530242 (= lt!1946073 (containsKey!3838 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864))) key!6641))))

(assert (=> d!1530242 (= (contains!17583 (extractMap!2368 (toList!6761 lt!1945864)) key!6641) lt!1946075)))

(declare-fun b!4784141 () Bool)

(assert (=> b!4784141 (= e!2986968 (getKeysList!1048 (toList!6762 (extractMap!2368 (toList!6761 lt!1945864)))))))

(declare-fun b!4784142 () Bool)

(assert (=> b!4784142 (= e!2986968 (keys!19689 (extractMap!2368 (toList!6761 lt!1945864))))))

(assert (= (and d!1530242 c!815550) b!4784134))

(assert (= (and d!1530242 (not c!815550)) b!4784139))

(assert (= (and b!4784139 c!815549) b!4784140))

(assert (= (and b!4784139 (not c!815549)) b!4784135))

(assert (= (or b!4784134 b!4784139) bm!334803))

(assert (= (and bm!334803 c!815551) b!4784141))

(assert (= (and bm!334803 (not c!815551)) b!4784142))

(assert (= (and d!1530242 res!2031875) b!4784136))

(assert (= (and d!1530242 (not res!2031873)) b!4784137))

(assert (= (and b!4784137 res!2031874) b!4784138))

(declare-fun m!5762620 () Bool)

(assert (=> b!4784141 m!5762620))

(assert (=> b!4784138 m!5762292))

(declare-fun m!5762622 () Bool)

(assert (=> b!4784138 m!5762622))

(assert (=> b!4784138 m!5762622))

(declare-fun m!5762624 () Bool)

(assert (=> b!4784138 m!5762624))

(declare-fun m!5762626 () Bool)

(assert (=> b!4784137 m!5762626))

(assert (=> b!4784137 m!5762626))

(declare-fun m!5762628 () Bool)

(assert (=> b!4784137 m!5762628))

(assert (=> b!4784142 m!5762292))

(assert (=> b!4784142 m!5762622))

(declare-fun m!5762630 () Bool)

(assert (=> b!4784140 m!5762630))

(declare-fun m!5762632 () Bool)

(assert (=> b!4784140 m!5762632))

(declare-fun m!5762634 () Bool)

(assert (=> b!4784134 m!5762634))

(assert (=> b!4784134 m!5762626))

(assert (=> b!4784134 m!5762626))

(assert (=> b!4784134 m!5762628))

(declare-fun m!5762636 () Bool)

(assert (=> b!4784134 m!5762636))

(assert (=> d!1530242 m!5762630))

(assert (=> b!4784136 m!5762292))

(assert (=> b!4784136 m!5762622))

(assert (=> b!4784136 m!5762622))

(assert (=> b!4784136 m!5762624))

(declare-fun m!5762638 () Bool)

(assert (=> bm!334803 m!5762638))

(assert (=> b!4783927 d!1530242))

(declare-fun d!1530244 () Bool)

(assert (=> d!1530244 (contains!17581 (toList!6761 lt!1945864) (tuple2!56535 lt!1945860 lt!1945865))))

(declare-fun lt!1946076 () Unit!139411)

(assert (=> d!1530244 (= lt!1946076 (choose!34348 lt!1945864 lt!1945860 lt!1945865))))

(assert (=> d!1530244 (contains!17582 lt!1945864 lt!1945860)))

(assert (=> d!1530244 (= (lemmaGetValueImpliesTupleContained!620 lt!1945864 lt!1945860 lt!1945865) lt!1946076)))

(declare-fun bs!1152944 () Bool)

(assert (= bs!1152944 d!1530244))

(declare-fun m!5762640 () Bool)

(assert (=> bs!1152944 m!5762640))

(declare-fun m!5762642 () Bool)

(assert (=> bs!1152944 m!5762642))

(assert (=> bs!1152944 m!5762278))

(assert (=> b!4783927 d!1530244))

(declare-fun bs!1152945 () Bool)

(declare-fun d!1530246 () Bool)

(assert (= bs!1152945 (and d!1530246 d!1530158)))

(declare-fun lambda!228852 () Int)

(assert (=> bs!1152945 (= lambda!228852 lambda!228822)))

(declare-fun bs!1152946 () Bool)

(assert (= bs!1152946 (and d!1530246 d!1530214)))

(assert (=> bs!1152946 (= lambda!228852 lambda!228844)))

(declare-fun bs!1152947 () Bool)

(assert (= bs!1152947 (and d!1530246 d!1530224)))

(assert (=> bs!1152947 (= lambda!228852 lambda!228849)))

(declare-fun bs!1152948 () Bool)

(assert (= bs!1152948 (and d!1530246 start!491608)))

(assert (=> bs!1152948 (= lambda!228852 lambda!228806)))

(declare-fun bs!1152949 () Bool)

(assert (= bs!1152949 (and d!1530246 d!1530236)))

(assert (=> bs!1152949 (= lambda!228852 lambda!228851)))

(declare-fun bs!1152950 () Bool)

(assert (= bs!1152950 (and d!1530246 d!1530204)))

(assert (=> bs!1152950 (= lambda!228852 lambda!228841)))

(declare-fun bs!1152951 () Bool)

(assert (= bs!1152951 (and d!1530246 d!1530220)))

(assert (=> bs!1152951 (not (= lambda!228852 lambda!228848))))

(declare-fun bs!1152952 () Bool)

(assert (= bs!1152952 (and d!1530246 d!1530182)))

(assert (=> bs!1152952 (= lambda!228852 lambda!228835)))

(declare-fun bs!1152953 () Bool)

(assert (= bs!1152953 (and d!1530246 d!1530216)))

(assert (=> bs!1152953 (= lambda!228852 lambda!228847)))

(declare-fun bs!1152954 () Bool)

(assert (= bs!1152954 (and d!1530246 d!1530164)))

(assert (=> bs!1152954 (not (= lambda!228852 lambda!228825))))

(declare-fun bs!1152955 () Bool)

(assert (= bs!1152955 (and d!1530246 d!1530226)))

(assert (=> bs!1152955 (= lambda!228852 lambda!228850)))

(declare-fun lt!1946077 () ListMap!6233)

(assert (=> d!1530246 (invariantList!1702 (toList!6762 lt!1946077))))

(declare-fun e!2986974 () ListMap!6233)

(assert (=> d!1530246 (= lt!1946077 e!2986974)))

(declare-fun c!815552 () Bool)

(assert (=> d!1530246 (= c!815552 (is-Cons!54030 (toList!6761 lt!1945864)))))

(assert (=> d!1530246 (forall!12141 (toList!6761 lt!1945864) lambda!228852)))

(assert (=> d!1530246 (= (extractMap!2368 (toList!6761 lt!1945864)) lt!1946077)))

(declare-fun b!4784143 () Bool)

(assert (=> b!4784143 (= e!2986974 (addToMapMapFromBucket!1667 (_2!31561 (h!60450 (toList!6761 lt!1945864))) (extractMap!2368 (t!361604 (toList!6761 lt!1945864)))))))

(declare-fun b!4784144 () Bool)

(assert (=> b!4784144 (= e!2986974 (ListMap!6234 Nil!54029))))

(assert (= (and d!1530246 c!815552) b!4784143))

(assert (= (and d!1530246 (not c!815552)) b!4784144))

(declare-fun m!5762644 () Bool)

(assert (=> d!1530246 m!5762644))

(declare-fun m!5762646 () Bool)

(assert (=> d!1530246 m!5762646))

(declare-fun m!5762648 () Bool)

(assert (=> b!4784143 m!5762648))

(assert (=> b!4784143 m!5762648))

(declare-fun m!5762650 () Bool)

(assert (=> b!4784143 m!5762650))

(assert (=> b!4783927 d!1530246))

(declare-fun bs!1152956 () Bool)

(declare-fun d!1530248 () Bool)

(assert (= bs!1152956 (and d!1530248 d!1530158)))

(declare-fun lambda!228855 () Int)

(assert (=> bs!1152956 (= lambda!228855 lambda!228822)))

(declare-fun bs!1152957 () Bool)

(assert (= bs!1152957 (and d!1530248 d!1530214)))

(assert (=> bs!1152957 (= lambda!228855 lambda!228844)))

(declare-fun bs!1152958 () Bool)

(assert (= bs!1152958 (and d!1530248 d!1530224)))

(assert (=> bs!1152958 (= lambda!228855 lambda!228849)))

(declare-fun bs!1152959 () Bool)

(assert (= bs!1152959 (and d!1530248 start!491608)))

(assert (=> bs!1152959 (= lambda!228855 lambda!228806)))

(declare-fun bs!1152960 () Bool)

(assert (= bs!1152960 (and d!1530248 d!1530236)))

(assert (=> bs!1152960 (= lambda!228855 lambda!228851)))

(declare-fun bs!1152961 () Bool)

(assert (= bs!1152961 (and d!1530248 d!1530204)))

(assert (=> bs!1152961 (= lambda!228855 lambda!228841)))

(declare-fun bs!1152962 () Bool)

(assert (= bs!1152962 (and d!1530248 d!1530246)))

(assert (=> bs!1152962 (= lambda!228855 lambda!228852)))

(declare-fun bs!1152963 () Bool)

(assert (= bs!1152963 (and d!1530248 d!1530220)))

(assert (=> bs!1152963 (not (= lambda!228855 lambda!228848))))

(declare-fun bs!1152964 () Bool)

(assert (= bs!1152964 (and d!1530248 d!1530182)))

(assert (=> bs!1152964 (= lambda!228855 lambda!228835)))

(declare-fun bs!1152965 () Bool)

(assert (= bs!1152965 (and d!1530248 d!1530216)))

(assert (=> bs!1152965 (= lambda!228855 lambda!228847)))

(declare-fun bs!1152966 () Bool)

(assert (= bs!1152966 (and d!1530248 d!1530164)))

(assert (=> bs!1152966 (not (= lambda!228855 lambda!228825))))

(declare-fun bs!1152967 () Bool)

(assert (= bs!1152967 (and d!1530248 d!1530226)))

(assert (=> bs!1152967 (= lambda!228855 lambda!228850)))

(assert (=> d!1530248 (containsKeyBiggerList!497 (tail!9203 (toList!6761 lm!2709)) key!6641)))

(declare-fun lt!1946080 () Unit!139411)

(declare-fun choose!34353 (ListLongMap!5183 K!15592 Hashable!6841) Unit!139411)

(assert (=> d!1530248 (= lt!1946080 (choose!34353 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530248 (forall!12141 (toList!6761 lm!2709) lambda!228855)))

(assert (=> d!1530248 (= (lemmaInBiggerListButNotHeadThenTail!21 lm!2709 key!6641 hashF!1687) lt!1946080)))

(declare-fun bs!1152968 () Bool)

(assert (= bs!1152968 d!1530248))

(assert (=> bs!1152968 m!5762238))

(assert (=> bs!1152968 m!5762238))

(assert (=> bs!1152968 m!5762240))

(declare-fun m!5762652 () Bool)

(assert (=> bs!1152968 m!5762652))

(declare-fun m!5762654 () Bool)

(assert (=> bs!1152968 m!5762654))

(assert (=> b!4783936 d!1530248))

(declare-fun d!1530250 () Bool)

(declare-fun res!2031880 () Bool)

(declare-fun e!2986979 () Bool)

(assert (=> d!1530250 (=> res!2031880 e!2986979)))

(assert (=> d!1530250 (= res!2031880 (is-Nil!54030 (toList!6761 lt!1945864)))))

(assert (=> d!1530250 (= (forall!12141 (toList!6761 lt!1945864) lambda!228806) e!2986979)))

(declare-fun b!4784149 () Bool)

(declare-fun e!2986980 () Bool)

(assert (=> b!4784149 (= e!2986979 e!2986980)))

(declare-fun res!2031881 () Bool)

(assert (=> b!4784149 (=> (not res!2031881) (not e!2986980))))

(assert (=> b!4784149 (= res!2031881 (dynLambda!22022 lambda!228806 (h!60450 (toList!6761 lt!1945864))))))

(declare-fun b!4784150 () Bool)

(assert (=> b!4784150 (= e!2986980 (forall!12141 (t!361604 (toList!6761 lt!1945864)) lambda!228806))))

(assert (= (and d!1530250 (not res!2031880)) b!4784149))

(assert (= (and b!4784149 res!2031881) b!4784150))

(declare-fun b_lambda!186019 () Bool)

(assert (=> (not b_lambda!186019) (not b!4784149)))

(declare-fun m!5762656 () Bool)

(assert (=> b!4784149 m!5762656))

(declare-fun m!5762658 () Bool)

(assert (=> b!4784150 m!5762658))

(assert (=> b!4783936 d!1530250))

(declare-fun d!1530252 () Bool)

(assert (=> d!1530252 (= (tail!9203 (toList!6761 lm!2709)) (t!361604 (toList!6761 lm!2709)))))

(assert (=> b!4783936 d!1530252))

(declare-fun d!1530254 () Bool)

(assert (=> d!1530254 (= (tail!9202 lm!2709) (ListLongMap!5184 (tail!9203 (toList!6761 lm!2709))))))

(declare-fun bs!1152969 () Bool)

(assert (= bs!1152969 d!1530254))

(assert (=> bs!1152969 m!5762238))

(assert (=> b!4783936 d!1530254))

(declare-fun d!1530256 () Bool)

(declare-fun res!2031884 () Bool)

(declare-fun e!2986981 () Bool)

(assert (=> d!1530256 (=> res!2031884 e!2986981)))

(declare-fun e!2986983 () Bool)

(assert (=> d!1530256 (= res!2031884 e!2986983)))

(declare-fun res!2031882 () Bool)

(assert (=> d!1530256 (=> (not res!2031882) (not e!2986983))))

(assert (=> d!1530256 (= res!2031882 (is-Cons!54030 (tail!9203 (toList!6761 lm!2709))))))

(assert (=> d!1530256 (= (containsKeyBiggerList!497 (tail!9203 (toList!6761 lm!2709)) key!6641) e!2986981)))

(declare-fun b!4784151 () Bool)

(assert (=> b!4784151 (= e!2986983 (containsKey!3836 (_2!31561 (h!60450 (tail!9203 (toList!6761 lm!2709)))) key!6641))))

(declare-fun b!4784152 () Bool)

(declare-fun e!2986982 () Bool)

(assert (=> b!4784152 (= e!2986981 e!2986982)))

(declare-fun res!2031883 () Bool)

(assert (=> b!4784152 (=> (not res!2031883) (not e!2986982))))

(assert (=> b!4784152 (= res!2031883 (is-Cons!54030 (tail!9203 (toList!6761 lm!2709))))))

(declare-fun b!4784153 () Bool)

(assert (=> b!4784153 (= e!2986982 (containsKeyBiggerList!497 (t!361604 (tail!9203 (toList!6761 lm!2709))) key!6641))))

(assert (= (and d!1530256 res!2031882) b!4784151))

(assert (= (and d!1530256 (not res!2031884)) b!4784152))

(assert (= (and b!4784152 res!2031883) b!4784153))

(declare-fun m!5762660 () Bool)

(assert (=> b!4784151 m!5762660))

(declare-fun m!5762662 () Bool)

(assert (=> b!4784153 m!5762662))

(assert (=> b!4783936 d!1530256))

(declare-fun d!1530258 () Bool)

(declare-fun res!2031885 () Bool)

(declare-fun e!2986984 () Bool)

(assert (=> d!1530258 (=> res!2031885 e!2986984)))

(assert (=> d!1530258 (= res!2031885 (is-Nil!54030 (toList!6761 lm!2709)))))

(assert (=> d!1530258 (= (forall!12141 (toList!6761 lm!2709) lambda!228806) e!2986984)))

(declare-fun b!4784154 () Bool)

(declare-fun e!2986985 () Bool)

(assert (=> b!4784154 (= e!2986984 e!2986985)))

(declare-fun res!2031886 () Bool)

(assert (=> b!4784154 (=> (not res!2031886) (not e!2986985))))

(assert (=> b!4784154 (= res!2031886 (dynLambda!22022 lambda!228806 (h!60450 (toList!6761 lm!2709))))))

(declare-fun b!4784155 () Bool)

(assert (=> b!4784155 (= e!2986985 (forall!12141 (t!361604 (toList!6761 lm!2709)) lambda!228806))))

(assert (= (and d!1530258 (not res!2031885)) b!4784154))

(assert (= (and b!4784154 res!2031886) b!4784155))

(declare-fun b_lambda!186021 () Bool)

(assert (=> (not b_lambda!186021) (not b!4784154)))

(declare-fun m!5762664 () Bool)

(assert (=> b!4784154 m!5762664))

(declare-fun m!5762666 () Bool)

(assert (=> b!4784155 m!5762666))

(assert (=> start!491608 d!1530258))

(declare-fun d!1530260 () Bool)

(declare-fun isStrictlySorted!854 (List!54154) Bool)

(assert (=> d!1530260 (= (inv!69619 lm!2709) (isStrictlySorted!854 (toList!6761 lm!2709)))))

(declare-fun bs!1152970 () Bool)

(assert (= bs!1152970 d!1530260))

(declare-fun m!5762668 () Bool)

(assert (=> bs!1152970 m!5762668))

(assert (=> start!491608 d!1530260))

(declare-fun b!4784160 () Bool)

(declare-fun e!2986988 () Bool)

(declare-fun tp!1357557 () Bool)

(declare-fun tp!1357558 () Bool)

(assert (=> b!4784160 (= e!2986988 (and tp!1357557 tp!1357558))))

(assert (=> b!4783931 (= tp!1357549 e!2986988)))

(assert (= (and b!4783931 (is-Cons!54030 (toList!6761 lm!2709))) b!4784160))

(declare-fun b_lambda!186023 () Bool)

(assert (= b_lambda!186017 (or start!491608 b_lambda!186023)))

(declare-fun bs!1152971 () Bool)

(declare-fun d!1530262 () Bool)

(assert (= bs!1152971 (and d!1530262 start!491608)))

(assert (=> bs!1152971 (= (dynLambda!22022 lambda!228806 lt!1945855) (noDuplicateKeys!2300 (_2!31561 lt!1945855)))))

(declare-fun m!5762670 () Bool)

(assert (=> bs!1152971 m!5762670))

(assert (=> d!1530238 d!1530262))

(declare-fun b_lambda!186025 () Bool)

(assert (= b_lambda!186011 (or start!491608 b_lambda!186025)))

(declare-fun bs!1152972 () Bool)

(declare-fun d!1530264 () Bool)

(assert (= bs!1152972 (and d!1530264 start!491608)))

(assert (=> bs!1152972 (= (dynLambda!22022 lambda!228806 lt!1945858) (noDuplicateKeys!2300 (_2!31561 lt!1945858)))))

(declare-fun m!5762672 () Bool)

(assert (=> bs!1152972 m!5762672))

(assert (=> d!1530170 d!1530264))

(declare-fun b_lambda!186027 () Bool)

(assert (= b_lambda!186019 (or start!491608 b_lambda!186027)))

(declare-fun bs!1152973 () Bool)

(declare-fun d!1530266 () Bool)

(assert (= bs!1152973 (and d!1530266 start!491608)))

(assert (=> bs!1152973 (= (dynLambda!22022 lambda!228806 (h!60450 (toList!6761 lt!1945864))) (noDuplicateKeys!2300 (_2!31561 (h!60450 (toList!6761 lt!1945864)))))))

(declare-fun m!5762674 () Bool)

(assert (=> bs!1152973 m!5762674))

(assert (=> b!4784149 d!1530266))

(declare-fun b_lambda!186029 () Bool)

(assert (= b_lambda!186021 (or start!491608 b_lambda!186029)))

(declare-fun bs!1152974 () Bool)

(declare-fun d!1530268 () Bool)

(assert (= bs!1152974 (and d!1530268 start!491608)))

(assert (=> bs!1152974 (= (dynLambda!22022 lambda!228806 (h!60450 (toList!6761 lm!2709))) (noDuplicateKeys!2300 (_2!31561 (h!60450 (toList!6761 lm!2709)))))))

(declare-fun m!5762676 () Bool)

(assert (=> bs!1152974 m!5762676))

(assert (=> b!4784154 d!1530268))

(push 1)

(assert (not d!1530244))

(assert (not b!4784126))

(assert (not d!1530156))

(assert (not b!4784025))

(assert (not b!4784066))

(assert (not d!1530194))

(assert (not b_lambda!186025))

(assert (not b!4784099))

(assert (not b!4784074))

(assert (not d!1530226))

(assert (not b!4784022))

(assert (not b!4784134))

(assert (not d!1530182))

(assert (not b!4784122))

(assert (not d!1530246))

(assert (not b!4784096))

(assert (not b_lambda!186029))

(assert (not b!4783988))

(assert (not b!4784095))

(assert (not b!4784129))

(assert tp_is_empty!33267)

(assert (not b!4784125))

(assert (not d!1530242))

(assert (not d!1530174))

(assert (not b!4784065))

(assert (not b!4784140))

(assert (not b!4784143))

(assert (not b!4784064))

(assert (not d!1530238))

(assert (not b!4784121))

(assert (not b!4784000))

(assert (not d!1530240))

(assert (not b!4784026))

(assert (not b!4783978))

(assert (not d!1530204))

(assert (not b!4784153))

(assert (not b!4784150))

(assert (not d!1530224))

(assert (not bs!1152971))

(assert (not d!1530202))

(assert (not b!4783998))

(assert (not b!4784114))

(assert (not b!4784003))

(assert (not d!1530172))

(assert (not d!1530158))

(assert (not b!4784120))

(assert (not b!4784130))

(assert (not d!1530234))

(assert (not bs!1152974))

(assert (not b!4784128))

(assert (not d!1530254))

(assert (not b!4784142))

(assert (not d!1530220))

(assert (not d!1530232))

(assert (not b!4783987))

(assert (not d!1530164))

(assert (not d!1530170))

(assert (not d!1530228))

(assert (not d!1530214))

(assert (not b!4784136))

(assert (not b!4783990))

(assert (not d!1530216))

(assert (not b!4784029))

(assert (not b!4783985))

(assert (not b!4783976))

(assert (not d!1530198))

(assert (not b!4784132))

(assert (not b!4784024))

(assert (not b!4784131))

(assert (not bm!334802))

(assert (not d!1530260))

(assert (not b!4784098))

(assert (not b!4784138))

(assert (not bs!1152973))

(assert (not d!1530248))

(assert tp_is_empty!33265)

(assert (not d!1530236))

(assert (not b!4784137))

(assert (not b!4784067))

(assert (not b!4784106))

(assert (not b!4784118))

(assert (not b!4784028))

(assert (not bm!334803))

(assert (not d!1530196))

(assert (not b!4784076))

(assert (not b!4784151))

(assert (not b!4784097))

(assert (not b!4784119))

(assert (not b!4784160))

(assert (not bs!1152972))

(assert (not d!1530180))

(assert (not b!4784155))

(assert (not b!4784133))

(assert (not b_lambda!186023))

(assert (not b_lambda!186027))

(assert (not b!4784141))

(assert (not d!1530222))

(assert (not b!4784030))

(assert (not d!1530200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

