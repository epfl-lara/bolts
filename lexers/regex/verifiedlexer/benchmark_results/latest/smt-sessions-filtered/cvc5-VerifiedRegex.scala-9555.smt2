; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503412 () Bool)

(assert start!503412)

(declare-fun b!4838939 () Bool)

(declare-fun res!2062584 () Bool)

(declare-fun e!3024110 () Bool)

(assert (=> b!4838939 (=> (not res!2062584) (not e!3024110))))

(declare-datatypes ((K!17062 0))(
  ( (K!17063 (val!21955 Int)) )
))
(declare-datatypes ((V!17308 0))(
  ( (V!17309 (val!21956 Int)) )
))
(declare-datatypes ((tuple2!58782 0))(
  ( (tuple2!58783 (_1!32685 K!17062) (_2!32685 V!17308)) )
))
(declare-datatypes ((List!55434 0))(
  ( (Nil!55310) (Cons!55310 (h!61745 tuple2!58782) (t!362930 List!55434)) )
))
(declare-datatypes ((tuple2!58784 0))(
  ( (tuple2!58785 (_1!32686 (_ BitVec 64)) (_2!32686 List!55434)) )
))
(declare-datatypes ((List!55435 0))(
  ( (Nil!55311) (Cons!55311 (h!61746 tuple2!58784) (t!362931 List!55435)) )
))
(declare-datatypes ((ListLongMap!6257 0))(
  ( (ListLongMap!6258 (toList!7717 List!55435)) )
))
(declare-fun lm!2671 () ListLongMap!6257)

(declare-fun key!6540 () K!17062)

(declare-fun containsKeyBiggerList!681 (List!55435 K!17062) Bool)

(assert (=> b!4838939 (= res!2062584 (containsKeyBiggerList!681 (toList!7717 lm!2671) key!6540))))

(declare-fun b!4838940 () Bool)

(declare-fun res!2062582 () Bool)

(assert (=> b!4838940 (=> (not res!2062582) (not e!3024110))))

(declare-fun e!3024112 () Bool)

(assert (=> b!4838940 (= res!2062582 e!3024112)))

(declare-fun res!2062586 () Bool)

(assert (=> b!4838940 (=> res!2062586 e!3024112)))

(assert (=> b!4838940 (= res!2062586 (not (is-Cons!55311 (toList!7717 lm!2671))))))

(declare-fun res!2062580 () Bool)

(assert (=> start!503412 (=> (not res!2062580) (not e!3024110))))

(declare-fun lambda!240414 () Int)

(declare-fun forall!12812 (List!55435 Int) Bool)

(assert (=> start!503412 (= res!2062580 (forall!12812 (toList!7717 lm!2671) lambda!240414))))

(assert (=> start!503412 e!3024110))

(declare-fun e!3024109 () Bool)

(declare-fun inv!70963 (ListLongMap!6257) Bool)

(assert (=> start!503412 (and (inv!70963 lm!2671) e!3024109)))

(assert (=> start!503412 true))

(declare-fun tp_is_empty!34897 () Bool)

(assert (=> start!503412 tp_is_empty!34897))

(declare-fun b!4838941 () Bool)

(declare-fun e!3024111 () Bool)

(declare-fun e!3024113 () Bool)

(assert (=> b!4838941 (= e!3024111 e!3024113)))

(declare-fun res!2062579 () Bool)

(assert (=> b!4838941 (=> res!2062579 e!3024113)))

(declare-datatypes ((ListMap!7071 0))(
  ( (ListMap!7072 (toList!7718 List!55434)) )
))
(declare-fun lt!1983620 () ListMap!7071)

(declare-fun contains!19069 (ListMap!7071 K!17062) Bool)

(assert (=> b!4838941 (= res!2062579 (not (contains!19069 lt!1983620 key!6540)))))

(declare-fun lt!1983624 () ListLongMap!6257)

(declare-fun extractMap!2755 (List!55435) ListMap!7071)

(assert (=> b!4838941 (contains!19069 (extractMap!2755 (toList!7717 lt!1983624)) key!6540)))

(declare-datatypes ((Hashable!7397 0))(
  ( (HashableExt!7396 (__x!33672 Int)) )
))
(declare-fun hashF!1662 () Hashable!7397)

(declare-datatypes ((Unit!144871 0))(
  ( (Unit!144872) )
))
(declare-fun lt!1983622 () Unit!144871)

(declare-fun lemmaListContainsThenExtractedMapContains!741 (ListLongMap!6257 K!17062 Hashable!7397) Unit!144871)

(assert (=> b!4838941 (= lt!1983622 (lemmaListContainsThenExtractedMapContains!741 lt!1983624 key!6540 hashF!1662))))

(declare-fun tail!9471 (ListLongMap!6257) ListLongMap!6257)

(assert (=> b!4838941 (= lt!1983624 (tail!9471 lm!2671))))

(declare-fun b!4838942 () Bool)

(declare-fun res!2062581 () Bool)

(assert (=> b!4838942 (=> (not res!2062581) (not e!3024110))))

(assert (=> b!4838942 (= res!2062581 (is-Cons!55311 (toList!7717 lm!2671)))))

(declare-fun b!4838943 () Bool)

(declare-fun e!3024114 () Bool)

(assert (=> b!4838943 (= e!3024110 e!3024114)))

(declare-fun res!2062587 () Bool)

(assert (=> b!4838943 (=> (not res!2062587) (not e!3024114))))

(declare-fun addToMapMapFromBucket!1895 (List!55434 ListMap!7071) ListMap!7071)

(assert (=> b!4838943 (= res!2062587 (= (extractMap!2755 (toList!7717 lm!2671)) (addToMapMapFromBucket!1895 (_2!32686 (h!61746 (toList!7717 lm!2671))) lt!1983620)))))

(assert (=> b!4838943 (= lt!1983620 (extractMap!2755 (t!362931 (toList!7717 lm!2671))))))

(declare-fun b!4838944 () Bool)

(declare-fun tp!1363699 () Bool)

(assert (=> b!4838944 (= e!3024109 tp!1363699)))

(declare-fun b!4838945 () Bool)

(assert (=> b!4838945 (= e!3024114 (not e!3024111))))

(declare-fun res!2062583 () Bool)

(assert (=> b!4838945 (=> res!2062583 e!3024111)))

(assert (=> b!4838945 (= res!2062583 (not (containsKeyBiggerList!681 (t!362931 (toList!7717 lm!2671)) key!6540)))))

(declare-fun tail!9472 (List!55435) List!55435)

(assert (=> b!4838945 (containsKeyBiggerList!681 (tail!9472 (toList!7717 lm!2671)) key!6540)))

(declare-fun lt!1983621 () Unit!144871)

(declare-fun lemmaInBiggerListButNotHeadThenTail!41 (ListLongMap!6257 K!17062 Hashable!7397) Unit!144871)

(assert (=> b!4838945 (= lt!1983621 (lemmaInBiggerListButNotHeadThenTail!41 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4838946 () Bool)

(declare-fun containsKey!4557 (List!55434 K!17062) Bool)

(assert (=> b!4838946 (= e!3024112 (not (containsKey!4557 (_2!32686 (h!61746 (toList!7717 lm!2671))) key!6540)))))

(declare-fun b!4838947 () Bool)

(assert (=> b!4838947 (= e!3024113 (forall!12812 (t!362931 (toList!7717 lm!2671)) lambda!240414))))

(declare-fun lt!1983625 () V!17308)

(declare-fun contains!19070 (List!55434 tuple2!58782) Bool)

(assert (=> b!4838947 (contains!19070 (toList!7718 lt!1983620) (tuple2!58783 key!6540 lt!1983625))))

(declare-fun lt!1983623 () Unit!144871)

(declare-fun lemmaGetValueImpliesTupleContained!724 (ListMap!7071 K!17062 V!17308) Unit!144871)

(assert (=> b!4838947 (= lt!1983623 (lemmaGetValueImpliesTupleContained!724 lt!1983620 key!6540 lt!1983625))))

(declare-datatypes ((Option!13600 0))(
  ( (None!13599) (Some!13599 (v!49321 V!17308)) )
))
(declare-fun get!18930 (Option!13600) V!17308)

(declare-fun getValueByKey!2698 (List!55434 K!17062) Option!13600)

(assert (=> b!4838947 (= lt!1983625 (get!18930 (getValueByKey!2698 (toList!7718 lt!1983620) key!6540)))))

(declare-fun b!4838948 () Bool)

(declare-fun res!2062585 () Bool)

(assert (=> b!4838948 (=> (not res!2062585) (not e!3024110))))

(declare-fun allKeysSameHashInMap!2713 (ListLongMap!6257 Hashable!7397) Bool)

(assert (=> b!4838948 (= res!2062585 (allKeysSameHashInMap!2713 lm!2671 hashF!1662))))

(assert (= (and start!503412 res!2062580) b!4838948))

(assert (= (and b!4838948 res!2062585) b!4838939))

(assert (= (and b!4838939 res!2062584) b!4838940))

(assert (= (and b!4838940 (not res!2062586)) b!4838946))

(assert (= (and b!4838940 res!2062582) b!4838942))

(assert (= (and b!4838942 res!2062581) b!4838943))

(assert (= (and b!4838943 res!2062587) b!4838945))

(assert (= (and b!4838945 (not res!2062583)) b!4838941))

(assert (= (and b!4838941 (not res!2062579)) b!4838947))

(assert (= start!503412 b!4838944))

(declare-fun m!5834536 () Bool)

(assert (=> start!503412 m!5834536))

(declare-fun m!5834538 () Bool)

(assert (=> start!503412 m!5834538))

(declare-fun m!5834540 () Bool)

(assert (=> b!4838945 m!5834540))

(declare-fun m!5834542 () Bool)

(assert (=> b!4838945 m!5834542))

(assert (=> b!4838945 m!5834542))

(declare-fun m!5834544 () Bool)

(assert (=> b!4838945 m!5834544))

(declare-fun m!5834546 () Bool)

(assert (=> b!4838945 m!5834546))

(declare-fun m!5834548 () Bool)

(assert (=> b!4838946 m!5834548))

(declare-fun m!5834550 () Bool)

(assert (=> b!4838948 m!5834550))

(declare-fun m!5834552 () Bool)

(assert (=> b!4838947 m!5834552))

(declare-fun m!5834554 () Bool)

(assert (=> b!4838947 m!5834554))

(assert (=> b!4838947 m!5834552))

(declare-fun m!5834556 () Bool)

(assert (=> b!4838947 m!5834556))

(declare-fun m!5834558 () Bool)

(assert (=> b!4838947 m!5834558))

(declare-fun m!5834560 () Bool)

(assert (=> b!4838947 m!5834560))

(declare-fun m!5834562 () Bool)

(assert (=> b!4838941 m!5834562))

(declare-fun m!5834564 () Bool)

(assert (=> b!4838941 m!5834564))

(declare-fun m!5834566 () Bool)

(assert (=> b!4838941 m!5834566))

(declare-fun m!5834568 () Bool)

(assert (=> b!4838941 m!5834568))

(assert (=> b!4838941 m!5834568))

(declare-fun m!5834570 () Bool)

(assert (=> b!4838941 m!5834570))

(declare-fun m!5834572 () Bool)

(assert (=> b!4838939 m!5834572))

(declare-fun m!5834574 () Bool)

(assert (=> b!4838943 m!5834574))

(declare-fun m!5834576 () Bool)

(assert (=> b!4838943 m!5834576))

(declare-fun m!5834578 () Bool)

(assert (=> b!4838943 m!5834578))

(push 1)

(assert tp_is_empty!34897)

(assert (not b!4838944))

(assert (not b!4838941))

(assert (not b!4838939))

(assert (not b!4838945))

(assert (not b!4838947))

(assert (not start!503412))

(assert (not b!4838943))

(assert (not b!4838946))

(assert (not b!4838948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1168087 () Bool)

(declare-fun d!1551212 () Bool)

(assert (= bs!1168087 (and d!1551212 start!503412)))

(declare-fun lambda!240422 () Int)

(assert (=> bs!1168087 (not (= lambda!240422 lambda!240414))))

(assert (=> d!1551212 true))

(assert (=> d!1551212 (= (allKeysSameHashInMap!2713 lm!2671 hashF!1662) (forall!12812 (toList!7717 lm!2671) lambda!240422))))

(declare-fun bs!1168088 () Bool)

(assert (= bs!1168088 d!1551212))

(declare-fun m!5834624 () Bool)

(assert (=> bs!1168088 m!5834624))

(assert (=> b!4838948 d!1551212))

(declare-fun d!1551214 () Bool)

(declare-fun res!2062619 () Bool)

(declare-fun e!3024137 () Bool)

(assert (=> d!1551214 (=> res!2062619 e!3024137)))

(assert (=> d!1551214 (= res!2062619 (is-Nil!55311 (t!362931 (toList!7717 lm!2671))))))

(assert (=> d!1551214 (= (forall!12812 (t!362931 (toList!7717 lm!2671)) lambda!240414) e!3024137)))

(declare-fun b!4838985 () Bool)

(declare-fun e!3024138 () Bool)

(assert (=> b!4838985 (= e!3024137 e!3024138)))

(declare-fun res!2062620 () Bool)

(assert (=> b!4838985 (=> (not res!2062620) (not e!3024138))))

(declare-fun dynLambda!22284 (Int tuple2!58784) Bool)

(assert (=> b!4838985 (= res!2062620 (dynLambda!22284 lambda!240414 (h!61746 (t!362931 (toList!7717 lm!2671)))))))

(declare-fun b!4838986 () Bool)

(assert (=> b!4838986 (= e!3024138 (forall!12812 (t!362931 (t!362931 (toList!7717 lm!2671))) lambda!240414))))

(assert (= (and d!1551214 (not res!2062619)) b!4838985))

(assert (= (and b!4838985 res!2062620) b!4838986))

(declare-fun b_lambda!191267 () Bool)

(assert (=> (not b_lambda!191267) (not b!4838985)))

(declare-fun m!5834626 () Bool)

(assert (=> b!4838985 m!5834626))

(declare-fun m!5834628 () Bool)

(assert (=> b!4838986 m!5834628))

(assert (=> b!4838947 d!1551214))

(declare-fun d!1551216 () Bool)

(declare-fun lt!1983646 () Bool)

(declare-fun content!9849 (List!55434) (Set tuple2!58782))

(assert (=> d!1551216 (= lt!1983646 (set.member (tuple2!58783 key!6540 lt!1983625) (content!9849 (toList!7718 lt!1983620))))))

(declare-fun e!3024144 () Bool)

(assert (=> d!1551216 (= lt!1983646 e!3024144)))

(declare-fun res!2062625 () Bool)

(assert (=> d!1551216 (=> (not res!2062625) (not e!3024144))))

(assert (=> d!1551216 (= res!2062625 (is-Cons!55310 (toList!7718 lt!1983620)))))

(assert (=> d!1551216 (= (contains!19070 (toList!7718 lt!1983620) (tuple2!58783 key!6540 lt!1983625)) lt!1983646)))

(declare-fun b!4838991 () Bool)

(declare-fun e!3024143 () Bool)

(assert (=> b!4838991 (= e!3024144 e!3024143)))

(declare-fun res!2062626 () Bool)

(assert (=> b!4838991 (=> res!2062626 e!3024143)))

(assert (=> b!4838991 (= res!2062626 (= (h!61745 (toList!7718 lt!1983620)) (tuple2!58783 key!6540 lt!1983625)))))

(declare-fun b!4838992 () Bool)

(assert (=> b!4838992 (= e!3024143 (contains!19070 (t!362930 (toList!7718 lt!1983620)) (tuple2!58783 key!6540 lt!1983625)))))

(assert (= (and d!1551216 res!2062625) b!4838991))

(assert (= (and b!4838991 (not res!2062626)) b!4838992))

(declare-fun m!5834630 () Bool)

(assert (=> d!1551216 m!5834630))

(declare-fun m!5834632 () Bool)

(assert (=> d!1551216 m!5834632))

(declare-fun m!5834634 () Bool)

(assert (=> b!4838992 m!5834634))

(assert (=> b!4838947 d!1551216))

(declare-fun b!4839003 () Bool)

(declare-fun e!3024150 () Option!13600)

(assert (=> b!4839003 (= e!3024150 (getValueByKey!2698 (t!362930 (toList!7718 lt!1983620)) key!6540))))

(declare-fun d!1551218 () Bool)

(declare-fun c!824158 () Bool)

(assert (=> d!1551218 (= c!824158 (and (is-Cons!55310 (toList!7718 lt!1983620)) (= (_1!32685 (h!61745 (toList!7718 lt!1983620))) key!6540)))))

(declare-fun e!3024149 () Option!13600)

(assert (=> d!1551218 (= (getValueByKey!2698 (toList!7718 lt!1983620) key!6540) e!3024149)))

(declare-fun b!4839002 () Bool)

(assert (=> b!4839002 (= e!3024149 e!3024150)))

(declare-fun c!824159 () Bool)

(assert (=> b!4839002 (= c!824159 (and (is-Cons!55310 (toList!7718 lt!1983620)) (not (= (_1!32685 (h!61745 (toList!7718 lt!1983620))) key!6540))))))

(declare-fun b!4839004 () Bool)

(assert (=> b!4839004 (= e!3024150 None!13599)))

(declare-fun b!4839001 () Bool)

(assert (=> b!4839001 (= e!3024149 (Some!13599 (_2!32685 (h!61745 (toList!7718 lt!1983620)))))))

(assert (= (and d!1551218 c!824158) b!4839001))

(assert (= (and d!1551218 (not c!824158)) b!4839002))

(assert (= (and b!4839002 c!824159) b!4839003))

(assert (= (and b!4839002 (not c!824159)) b!4839004))

(declare-fun m!5834636 () Bool)

(assert (=> b!4839003 m!5834636))

(assert (=> b!4838947 d!1551218))

(declare-fun d!1551220 () Bool)

(assert (=> d!1551220 (contains!19070 (toList!7718 lt!1983620) (tuple2!58783 key!6540 lt!1983625))))

(declare-fun lt!1983649 () Unit!144871)

(declare-fun choose!35354 (ListMap!7071 K!17062 V!17308) Unit!144871)

(assert (=> d!1551220 (= lt!1983649 (choose!35354 lt!1983620 key!6540 lt!1983625))))

(assert (=> d!1551220 (contains!19069 lt!1983620 key!6540)))

(assert (=> d!1551220 (= (lemmaGetValueImpliesTupleContained!724 lt!1983620 key!6540 lt!1983625) lt!1983649)))

(declare-fun bs!1168089 () Bool)

(assert (= bs!1168089 d!1551220))

(assert (=> bs!1168089 m!5834554))

(declare-fun m!5834638 () Bool)

(assert (=> bs!1168089 m!5834638))

(assert (=> bs!1168089 m!5834566))

(assert (=> b!4838947 d!1551220))

(declare-fun d!1551224 () Bool)

(assert (=> d!1551224 (= (get!18930 (getValueByKey!2698 (toList!7718 lt!1983620) key!6540)) (v!49321 (getValueByKey!2698 (toList!7718 lt!1983620) key!6540)))))

(assert (=> b!4838947 d!1551224))

(declare-fun bm!337236 () Bool)

(declare-fun call!337241 () Bool)

(declare-datatypes ((List!55438 0))(
  ( (Nil!55314) (Cons!55314 (h!61749 K!17062) (t!362934 List!55438)) )
))
(declare-fun e!3024177 () List!55438)

(declare-fun contains!19073 (List!55438 K!17062) Bool)

(assert (=> bm!337236 (= call!337241 (contains!19073 e!3024177 key!6540))))

(declare-fun c!824167 () Bool)

(declare-fun c!824168 () Bool)

(assert (=> bm!337236 (= c!824167 c!824168)))

(declare-fun b!4839036 () Bool)

(declare-fun e!3024178 () Unit!144871)

(declare-fun Unit!144875 () Unit!144871)

(assert (=> b!4839036 (= e!3024178 Unit!144875)))

(declare-fun b!4839037 () Bool)

(declare-fun e!3024180 () Unit!144871)

(assert (=> b!4839037 (= e!3024180 e!3024178)))

(declare-fun c!824166 () Bool)

(assert (=> b!4839037 (= c!824166 call!337241)))

(declare-fun b!4839038 () Bool)

(declare-fun e!3024176 () Bool)

(declare-fun keys!20434 (ListMap!7071) List!55438)

(assert (=> b!4839038 (= e!3024176 (contains!19073 (keys!20434 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(declare-fun b!4839039 () Bool)

(assert (=> b!4839039 false))

(declare-fun lt!1983672 () Unit!144871)

(declare-fun lt!1983670 () Unit!144871)

(assert (=> b!4839039 (= lt!1983672 lt!1983670)))

(declare-fun containsKey!4559 (List!55434 K!17062) Bool)

(assert (=> b!4839039 (containsKey!4559 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1203 (List!55434 K!17062) Unit!144871)

(assert (=> b!4839039 (= lt!1983670 (lemmaInGetKeysListThenContainsKey!1203 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(declare-fun Unit!144876 () Unit!144871)

(assert (=> b!4839039 (= e!3024178 Unit!144876)))

(declare-fun b!4839040 () Bool)

(declare-fun e!3024175 () Bool)

(assert (=> b!4839040 (= e!3024175 (not (contains!19073 (keys!20434 (extractMap!2755 (toList!7717 lt!1983624))) key!6540)))))

(declare-fun b!4839041 () Bool)

(assert (=> b!4839041 (= e!3024177 (keys!20434 (extractMap!2755 (toList!7717 lt!1983624))))))

(declare-fun b!4839042 () Bool)

(declare-fun lt!1983669 () Unit!144871)

(assert (=> b!4839042 (= e!3024180 lt!1983669)))

(declare-fun lt!1983671 () Unit!144871)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2476 (List!55434 K!17062) Unit!144871)

(assert (=> b!4839042 (= lt!1983671 (lemmaContainsKeyImpliesGetValueByKeyDefined!2476 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(declare-fun isDefined!10703 (Option!13600) Bool)

(assert (=> b!4839042 (isDefined!10703 (getValueByKey!2698 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(declare-fun lt!1983676 () Unit!144871)

(assert (=> b!4839042 (= lt!1983676 lt!1983671)))

(declare-fun lemmaInListThenGetKeysListContains!1198 (List!55434 K!17062) Unit!144871)

(assert (=> b!4839042 (= lt!1983669 (lemmaInListThenGetKeysListContains!1198 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(assert (=> b!4839042 call!337241))

(declare-fun b!4839043 () Bool)

(declare-fun getKeysList!1203 (List!55434) List!55438)

(assert (=> b!4839043 (= e!3024177 (getKeysList!1203 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624)))))))

(declare-fun b!4839044 () Bool)

(declare-fun e!3024179 () Bool)

(assert (=> b!4839044 (= e!3024179 e!3024176)))

(declare-fun res!2062645 () Bool)

(assert (=> b!4839044 (=> (not res!2062645) (not e!3024176))))

(assert (=> b!4839044 (= res!2062645 (isDefined!10703 (getValueByKey!2698 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540)))))

(declare-fun d!1551226 () Bool)

(assert (=> d!1551226 e!3024179))

(declare-fun res!2062646 () Bool)

(assert (=> d!1551226 (=> res!2062646 e!3024179)))

(assert (=> d!1551226 (= res!2062646 e!3024175)))

(declare-fun res!2062647 () Bool)

(assert (=> d!1551226 (=> (not res!2062647) (not e!3024175))))

(declare-fun lt!1983675 () Bool)

(assert (=> d!1551226 (= res!2062647 (not lt!1983675))))

(declare-fun lt!1983674 () Bool)

(assert (=> d!1551226 (= lt!1983675 lt!1983674)))

(declare-fun lt!1983673 () Unit!144871)

(assert (=> d!1551226 (= lt!1983673 e!3024180)))

(assert (=> d!1551226 (= c!824168 lt!1983674)))

(assert (=> d!1551226 (= lt!1983674 (containsKey!4559 (toList!7718 (extractMap!2755 (toList!7717 lt!1983624))) key!6540))))

(assert (=> d!1551226 (= (contains!19069 (extractMap!2755 (toList!7717 lt!1983624)) key!6540) lt!1983675)))

(assert (= (and d!1551226 c!824168) b!4839042))

(assert (= (and d!1551226 (not c!824168)) b!4839037))

(assert (= (and b!4839037 c!824166) b!4839039))

(assert (= (and b!4839037 (not c!824166)) b!4839036))

(assert (= (or b!4839042 b!4839037) bm!337236))

(assert (= (and bm!337236 c!824167) b!4839043))

(assert (= (and bm!337236 (not c!824167)) b!4839041))

(assert (= (and d!1551226 res!2062647) b!4839040))

(assert (= (and d!1551226 (not res!2062646)) b!4839044))

(assert (= (and b!4839044 res!2062645) b!4839038))

(declare-fun m!5834652 () Bool)

(assert (=> d!1551226 m!5834652))

(declare-fun m!5834654 () Bool)

(assert (=> bm!337236 m!5834654))

(assert (=> b!4839040 m!5834568))

(declare-fun m!5834656 () Bool)

(assert (=> b!4839040 m!5834656))

(assert (=> b!4839040 m!5834656))

(declare-fun m!5834658 () Bool)

(assert (=> b!4839040 m!5834658))

(declare-fun m!5834660 () Bool)

(assert (=> b!4839044 m!5834660))

(assert (=> b!4839044 m!5834660))

(declare-fun m!5834662 () Bool)

(assert (=> b!4839044 m!5834662))

(assert (=> b!4839039 m!5834652))

(declare-fun m!5834664 () Bool)

(assert (=> b!4839039 m!5834664))

(declare-fun m!5834666 () Bool)

(assert (=> b!4839043 m!5834666))

(declare-fun m!5834668 () Bool)

(assert (=> b!4839042 m!5834668))

(assert (=> b!4839042 m!5834660))

(assert (=> b!4839042 m!5834660))

(assert (=> b!4839042 m!5834662))

(declare-fun m!5834670 () Bool)

(assert (=> b!4839042 m!5834670))

(assert (=> b!4839038 m!5834568))

(assert (=> b!4839038 m!5834656))

(assert (=> b!4839038 m!5834656))

(assert (=> b!4839038 m!5834658))

(assert (=> b!4839041 m!5834568))

(assert (=> b!4839041 m!5834656))

(assert (=> b!4838941 d!1551226))

(declare-fun d!1551236 () Bool)

(assert (=> d!1551236 (= (tail!9471 lm!2671) (ListLongMap!6258 (tail!9472 (toList!7717 lm!2671))))))

(declare-fun bs!1168092 () Bool)

(assert (= bs!1168092 d!1551236))

(assert (=> bs!1168092 m!5834542))

(assert (=> b!4838941 d!1551236))

(declare-fun bs!1168096 () Bool)

(declare-fun d!1551238 () Bool)

(assert (= bs!1168096 (and d!1551238 start!503412)))

(declare-fun lambda!240431 () Int)

(assert (=> bs!1168096 (= lambda!240431 lambda!240414)))

(declare-fun bs!1168097 () Bool)

(assert (= bs!1168097 (and d!1551238 d!1551212)))

(assert (=> bs!1168097 (not (= lambda!240431 lambda!240422))))

(declare-fun lt!1983679 () ListMap!7071)

(declare-fun invariantList!1868 (List!55434) Bool)

(assert (=> d!1551238 (invariantList!1868 (toList!7718 lt!1983679))))

(declare-fun e!3024192 () ListMap!7071)

(assert (=> d!1551238 (= lt!1983679 e!3024192)))

(declare-fun c!824171 () Bool)

(assert (=> d!1551238 (= c!824171 (is-Cons!55311 (toList!7717 lt!1983624)))))

(assert (=> d!1551238 (forall!12812 (toList!7717 lt!1983624) lambda!240431)))

(assert (=> d!1551238 (= (extractMap!2755 (toList!7717 lt!1983624)) lt!1983679)))

(declare-fun b!4839060 () Bool)

(assert (=> b!4839060 (= e!3024192 (addToMapMapFromBucket!1895 (_2!32686 (h!61746 (toList!7717 lt!1983624))) (extractMap!2755 (t!362931 (toList!7717 lt!1983624)))))))

(declare-fun b!4839061 () Bool)

(assert (=> b!4839061 (= e!3024192 (ListMap!7072 Nil!55310))))

(assert (= (and d!1551238 c!824171) b!4839060))

(assert (= (and d!1551238 (not c!824171)) b!4839061))

(declare-fun m!5834676 () Bool)

(assert (=> d!1551238 m!5834676))

(declare-fun m!5834678 () Bool)

(assert (=> d!1551238 m!5834678))

(declare-fun m!5834680 () Bool)

(assert (=> b!4839060 m!5834680))

(assert (=> b!4839060 m!5834680))

(declare-fun m!5834682 () Bool)

(assert (=> b!4839060 m!5834682))

(assert (=> b!4838941 d!1551238))

(declare-fun bm!337237 () Bool)

(declare-fun call!337242 () Bool)

(declare-fun e!3024195 () List!55438)

(assert (=> bm!337237 (= call!337242 (contains!19073 e!3024195 key!6540))))

(declare-fun c!824173 () Bool)

(declare-fun c!824174 () Bool)

(assert (=> bm!337237 (= c!824173 c!824174)))

(declare-fun b!4839062 () Bool)

(declare-fun e!3024196 () Unit!144871)

(declare-fun Unit!144877 () Unit!144871)

(assert (=> b!4839062 (= e!3024196 Unit!144877)))

(declare-fun b!4839063 () Bool)

(declare-fun e!3024198 () Unit!144871)

(assert (=> b!4839063 (= e!3024198 e!3024196)))

(declare-fun c!824172 () Bool)

(assert (=> b!4839063 (= c!824172 call!337242)))

(declare-fun b!4839064 () Bool)

(declare-fun e!3024194 () Bool)

(assert (=> b!4839064 (= e!3024194 (contains!19073 (keys!20434 lt!1983620) key!6540))))

(declare-fun b!4839065 () Bool)

(assert (=> b!4839065 false))

(declare-fun lt!1983683 () Unit!144871)

(declare-fun lt!1983681 () Unit!144871)

(assert (=> b!4839065 (= lt!1983683 lt!1983681)))

(assert (=> b!4839065 (containsKey!4559 (toList!7718 lt!1983620) key!6540)))

(assert (=> b!4839065 (= lt!1983681 (lemmaInGetKeysListThenContainsKey!1203 (toList!7718 lt!1983620) key!6540))))

(declare-fun Unit!144878 () Unit!144871)

(assert (=> b!4839065 (= e!3024196 Unit!144878)))

(declare-fun b!4839066 () Bool)

(declare-fun e!3024193 () Bool)

(assert (=> b!4839066 (= e!3024193 (not (contains!19073 (keys!20434 lt!1983620) key!6540)))))

(declare-fun b!4839067 () Bool)

(assert (=> b!4839067 (= e!3024195 (keys!20434 lt!1983620))))

(declare-fun b!4839068 () Bool)

(declare-fun lt!1983680 () Unit!144871)

(assert (=> b!4839068 (= e!3024198 lt!1983680)))

(declare-fun lt!1983682 () Unit!144871)

(assert (=> b!4839068 (= lt!1983682 (lemmaContainsKeyImpliesGetValueByKeyDefined!2476 (toList!7718 lt!1983620) key!6540))))

(assert (=> b!4839068 (isDefined!10703 (getValueByKey!2698 (toList!7718 lt!1983620) key!6540))))

(declare-fun lt!1983687 () Unit!144871)

(assert (=> b!4839068 (= lt!1983687 lt!1983682)))

(assert (=> b!4839068 (= lt!1983680 (lemmaInListThenGetKeysListContains!1198 (toList!7718 lt!1983620) key!6540))))

(assert (=> b!4839068 call!337242))

(declare-fun b!4839069 () Bool)

(assert (=> b!4839069 (= e!3024195 (getKeysList!1203 (toList!7718 lt!1983620)))))

(declare-fun b!4839070 () Bool)

(declare-fun e!3024197 () Bool)

(assert (=> b!4839070 (= e!3024197 e!3024194)))

(declare-fun res!2062657 () Bool)

(assert (=> b!4839070 (=> (not res!2062657) (not e!3024194))))

(assert (=> b!4839070 (= res!2062657 (isDefined!10703 (getValueByKey!2698 (toList!7718 lt!1983620) key!6540)))))

(declare-fun d!1551246 () Bool)

(assert (=> d!1551246 e!3024197))

(declare-fun res!2062658 () Bool)

(assert (=> d!1551246 (=> res!2062658 e!3024197)))

(assert (=> d!1551246 (= res!2062658 e!3024193)))

(declare-fun res!2062659 () Bool)

(assert (=> d!1551246 (=> (not res!2062659) (not e!3024193))))

(declare-fun lt!1983686 () Bool)

(assert (=> d!1551246 (= res!2062659 (not lt!1983686))))

(declare-fun lt!1983685 () Bool)

(assert (=> d!1551246 (= lt!1983686 lt!1983685)))

(declare-fun lt!1983684 () Unit!144871)

(assert (=> d!1551246 (= lt!1983684 e!3024198)))

(assert (=> d!1551246 (= c!824174 lt!1983685)))

(assert (=> d!1551246 (= lt!1983685 (containsKey!4559 (toList!7718 lt!1983620) key!6540))))

(assert (=> d!1551246 (= (contains!19069 lt!1983620 key!6540) lt!1983686)))

(assert (= (and d!1551246 c!824174) b!4839068))

(assert (= (and d!1551246 (not c!824174)) b!4839063))

(assert (= (and b!4839063 c!824172) b!4839065))

(assert (= (and b!4839063 (not c!824172)) b!4839062))

(assert (= (or b!4839068 b!4839063) bm!337237))

(assert (= (and bm!337237 c!824173) b!4839069))

(assert (= (and bm!337237 (not c!824173)) b!4839067))

(assert (= (and d!1551246 res!2062659) b!4839066))

(assert (= (and d!1551246 (not res!2062658)) b!4839070))

(assert (= (and b!4839070 res!2062657) b!4839064))

(declare-fun m!5834684 () Bool)

(assert (=> d!1551246 m!5834684))

(declare-fun m!5834686 () Bool)

(assert (=> bm!337237 m!5834686))

(declare-fun m!5834688 () Bool)

(assert (=> b!4839066 m!5834688))

(assert (=> b!4839066 m!5834688))

(declare-fun m!5834690 () Bool)

(assert (=> b!4839066 m!5834690))

(assert (=> b!4839070 m!5834552))

(assert (=> b!4839070 m!5834552))

(declare-fun m!5834692 () Bool)

(assert (=> b!4839070 m!5834692))

(assert (=> b!4839065 m!5834684))

(declare-fun m!5834694 () Bool)

(assert (=> b!4839065 m!5834694))

(declare-fun m!5834696 () Bool)

(assert (=> b!4839069 m!5834696))

(declare-fun m!5834698 () Bool)

(assert (=> b!4839068 m!5834698))

(assert (=> b!4839068 m!5834552))

(assert (=> b!4839068 m!5834552))

(assert (=> b!4839068 m!5834692))

(declare-fun m!5834700 () Bool)

(assert (=> b!4839068 m!5834700))

(assert (=> b!4839064 m!5834688))

(assert (=> b!4839064 m!5834688))

(assert (=> b!4839064 m!5834690))

(assert (=> b!4839067 m!5834688))

(assert (=> b!4838941 d!1551246))

(declare-fun bs!1168098 () Bool)

(declare-fun d!1551248 () Bool)

(assert (= bs!1168098 (and d!1551248 start!503412)))

(declare-fun lambda!240434 () Int)

(assert (=> bs!1168098 (= lambda!240434 lambda!240414)))

(declare-fun bs!1168099 () Bool)

(assert (= bs!1168099 (and d!1551248 d!1551212)))

(assert (=> bs!1168099 (not (= lambda!240434 lambda!240422))))

(declare-fun bs!1168100 () Bool)

(assert (= bs!1168100 (and d!1551248 d!1551238)))

(assert (=> bs!1168100 (= lambda!240434 lambda!240431)))

(assert (=> d!1551248 (contains!19069 (extractMap!2755 (toList!7717 lt!1983624)) key!6540)))

(declare-fun lt!1983693 () Unit!144871)

(declare-fun choose!35355 (ListLongMap!6257 K!17062 Hashable!7397) Unit!144871)

(assert (=> d!1551248 (= lt!1983693 (choose!35355 lt!1983624 key!6540 hashF!1662))))

(assert (=> d!1551248 (forall!12812 (toList!7717 lt!1983624) lambda!240434)))

(assert (=> d!1551248 (= (lemmaListContainsThenExtractedMapContains!741 lt!1983624 key!6540 hashF!1662) lt!1983693)))

(declare-fun bs!1168101 () Bool)

(assert (= bs!1168101 d!1551248))

(assert (=> bs!1168101 m!5834568))

(assert (=> bs!1168101 m!5834568))

(assert (=> bs!1168101 m!5834570))

(declare-fun m!5834708 () Bool)

(assert (=> bs!1168101 m!5834708))

(declare-fun m!5834710 () Bool)

(assert (=> bs!1168101 m!5834710))

(assert (=> b!4838941 d!1551248))

(declare-fun d!1551254 () Bool)

(declare-fun res!2062676 () Bool)

(declare-fun e!3024215 () Bool)

(assert (=> d!1551254 (=> res!2062676 e!3024215)))

(assert (=> d!1551254 (= res!2062676 (and (is-Cons!55310 (_2!32686 (h!61746 (toList!7717 lm!2671)))) (= (_1!32685 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))) key!6540)))))

(assert (=> d!1551254 (= (containsKey!4557 (_2!32686 (h!61746 (toList!7717 lm!2671))) key!6540) e!3024215)))

(declare-fun b!4839087 () Bool)

(declare-fun e!3024216 () Bool)

(assert (=> b!4839087 (= e!3024215 e!3024216)))

(declare-fun res!2062677 () Bool)

(assert (=> b!4839087 (=> (not res!2062677) (not e!3024216))))

(assert (=> b!4839087 (= res!2062677 (is-Cons!55310 (_2!32686 (h!61746 (toList!7717 lm!2671)))))))

(declare-fun b!4839088 () Bool)

(assert (=> b!4839088 (= e!3024216 (containsKey!4557 (t!362930 (_2!32686 (h!61746 (toList!7717 lm!2671)))) key!6540))))

(assert (= (and d!1551254 (not res!2062676)) b!4839087))

(assert (= (and b!4839087 res!2062677) b!4839088))

(declare-fun m!5834716 () Bool)

(assert (=> b!4839088 m!5834716))

(assert (=> b!4838946 d!1551254))

(declare-fun d!1551258 () Bool)

(declare-fun res!2062684 () Bool)

(declare-fun e!3024223 () Bool)

(assert (=> d!1551258 (=> res!2062684 e!3024223)))

(declare-fun e!3024225 () Bool)

(assert (=> d!1551258 (= res!2062684 e!3024225)))

(declare-fun res!2062685 () Bool)

(assert (=> d!1551258 (=> (not res!2062685) (not e!3024225))))

(assert (=> d!1551258 (= res!2062685 (is-Cons!55311 (t!362931 (toList!7717 lm!2671))))))

(assert (=> d!1551258 (= (containsKeyBiggerList!681 (t!362931 (toList!7717 lm!2671)) key!6540) e!3024223)))

(declare-fun b!4839095 () Bool)

(assert (=> b!4839095 (= e!3024225 (containsKey!4557 (_2!32686 (h!61746 (t!362931 (toList!7717 lm!2671)))) key!6540))))

(declare-fun b!4839096 () Bool)

(declare-fun e!3024224 () Bool)

(assert (=> b!4839096 (= e!3024223 e!3024224)))

(declare-fun res!2062686 () Bool)

(assert (=> b!4839096 (=> (not res!2062686) (not e!3024224))))

(assert (=> b!4839096 (= res!2062686 (is-Cons!55311 (t!362931 (toList!7717 lm!2671))))))

(declare-fun b!4839097 () Bool)

(assert (=> b!4839097 (= e!3024224 (containsKeyBiggerList!681 (t!362931 (t!362931 (toList!7717 lm!2671))) key!6540))))

(assert (= (and d!1551258 res!2062685) b!4839095))

(assert (= (and d!1551258 (not res!2062684)) b!4839096))

(assert (= (and b!4839096 res!2062686) b!4839097))

(declare-fun m!5834718 () Bool)

(assert (=> b!4839095 m!5834718))

(declare-fun m!5834720 () Bool)

(assert (=> b!4839097 m!5834720))

(assert (=> b!4838945 d!1551258))

(declare-fun d!1551260 () Bool)

(declare-fun res!2062687 () Bool)

(declare-fun e!3024226 () Bool)

(assert (=> d!1551260 (=> res!2062687 e!3024226)))

(declare-fun e!3024228 () Bool)

(assert (=> d!1551260 (= res!2062687 e!3024228)))

(declare-fun res!2062688 () Bool)

(assert (=> d!1551260 (=> (not res!2062688) (not e!3024228))))

(assert (=> d!1551260 (= res!2062688 (is-Cons!55311 (tail!9472 (toList!7717 lm!2671))))))

(assert (=> d!1551260 (= (containsKeyBiggerList!681 (tail!9472 (toList!7717 lm!2671)) key!6540) e!3024226)))

(declare-fun b!4839098 () Bool)

(assert (=> b!4839098 (= e!3024228 (containsKey!4557 (_2!32686 (h!61746 (tail!9472 (toList!7717 lm!2671)))) key!6540))))

(declare-fun b!4839099 () Bool)

(declare-fun e!3024227 () Bool)

(assert (=> b!4839099 (= e!3024226 e!3024227)))

(declare-fun res!2062689 () Bool)

(assert (=> b!4839099 (=> (not res!2062689) (not e!3024227))))

(assert (=> b!4839099 (= res!2062689 (is-Cons!55311 (tail!9472 (toList!7717 lm!2671))))))

(declare-fun b!4839100 () Bool)

(assert (=> b!4839100 (= e!3024227 (containsKeyBiggerList!681 (t!362931 (tail!9472 (toList!7717 lm!2671))) key!6540))))

(assert (= (and d!1551260 res!2062688) b!4839098))

(assert (= (and d!1551260 (not res!2062687)) b!4839099))

(assert (= (and b!4839099 res!2062689) b!4839100))

(declare-fun m!5834722 () Bool)

(assert (=> b!4839098 m!5834722))

(declare-fun m!5834724 () Bool)

(assert (=> b!4839100 m!5834724))

(assert (=> b!4838945 d!1551260))

(declare-fun d!1551262 () Bool)

(assert (=> d!1551262 (= (tail!9472 (toList!7717 lm!2671)) (t!362931 (toList!7717 lm!2671)))))

(assert (=> b!4838945 d!1551262))

(declare-fun bs!1168102 () Bool)

(declare-fun d!1551264 () Bool)

(assert (= bs!1168102 (and d!1551264 start!503412)))

(declare-fun lambda!240437 () Int)

(assert (=> bs!1168102 (= lambda!240437 lambda!240414)))

(declare-fun bs!1168103 () Bool)

(assert (= bs!1168103 (and d!1551264 d!1551212)))

(assert (=> bs!1168103 (not (= lambda!240437 lambda!240422))))

(declare-fun bs!1168104 () Bool)

(assert (= bs!1168104 (and d!1551264 d!1551238)))

(assert (=> bs!1168104 (= lambda!240437 lambda!240431)))

(declare-fun bs!1168105 () Bool)

(assert (= bs!1168105 (and d!1551264 d!1551248)))

(assert (=> bs!1168105 (= lambda!240437 lambda!240434)))

(assert (=> d!1551264 (containsKeyBiggerList!681 (tail!9472 (toList!7717 lm!2671)) key!6540)))

(declare-fun lt!1983696 () Unit!144871)

(declare-fun choose!35356 (ListLongMap!6257 K!17062 Hashable!7397) Unit!144871)

(assert (=> d!1551264 (= lt!1983696 (choose!35356 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551264 (forall!12812 (toList!7717 lm!2671) lambda!240437)))

(assert (=> d!1551264 (= (lemmaInBiggerListButNotHeadThenTail!41 lm!2671 key!6540 hashF!1662) lt!1983696)))

(declare-fun bs!1168106 () Bool)

(assert (= bs!1168106 d!1551264))

(assert (=> bs!1168106 m!5834542))

(assert (=> bs!1168106 m!5834542))

(assert (=> bs!1168106 m!5834544))

(declare-fun m!5834726 () Bool)

(assert (=> bs!1168106 m!5834726))

(declare-fun m!5834728 () Bool)

(assert (=> bs!1168106 m!5834728))

(assert (=> b!4838945 d!1551264))

(declare-fun d!1551266 () Bool)

(declare-fun res!2062690 () Bool)

(declare-fun e!3024229 () Bool)

(assert (=> d!1551266 (=> res!2062690 e!3024229)))

(assert (=> d!1551266 (= res!2062690 (is-Nil!55311 (toList!7717 lm!2671)))))

(assert (=> d!1551266 (= (forall!12812 (toList!7717 lm!2671) lambda!240414) e!3024229)))

(declare-fun b!4839101 () Bool)

(declare-fun e!3024230 () Bool)

(assert (=> b!4839101 (= e!3024229 e!3024230)))

(declare-fun res!2062691 () Bool)

(assert (=> b!4839101 (=> (not res!2062691) (not e!3024230))))

(assert (=> b!4839101 (= res!2062691 (dynLambda!22284 lambda!240414 (h!61746 (toList!7717 lm!2671))))))

(declare-fun b!4839102 () Bool)

(assert (=> b!4839102 (= e!3024230 (forall!12812 (t!362931 (toList!7717 lm!2671)) lambda!240414))))

(assert (= (and d!1551266 (not res!2062690)) b!4839101))

(assert (= (and b!4839101 res!2062691) b!4839102))

(declare-fun b_lambda!191271 () Bool)

(assert (=> (not b_lambda!191271) (not b!4839101)))

(declare-fun m!5834730 () Bool)

(assert (=> b!4839101 m!5834730))

(assert (=> b!4839102 m!5834558))

(assert (=> start!503412 d!1551266))

(declare-fun d!1551268 () Bool)

(declare-fun isStrictlySorted!1032 (List!55435) Bool)

(assert (=> d!1551268 (= (inv!70963 lm!2671) (isStrictlySorted!1032 (toList!7717 lm!2671)))))

(declare-fun bs!1168107 () Bool)

(assert (= bs!1168107 d!1551268))

(declare-fun m!5834732 () Bool)

(assert (=> bs!1168107 m!5834732))

(assert (=> start!503412 d!1551268))

(declare-fun d!1551270 () Bool)

(declare-fun res!2062692 () Bool)

(declare-fun e!3024231 () Bool)

(assert (=> d!1551270 (=> res!2062692 e!3024231)))

(declare-fun e!3024233 () Bool)

(assert (=> d!1551270 (= res!2062692 e!3024233)))

(declare-fun res!2062693 () Bool)

(assert (=> d!1551270 (=> (not res!2062693) (not e!3024233))))

(assert (=> d!1551270 (= res!2062693 (is-Cons!55311 (toList!7717 lm!2671)))))

(assert (=> d!1551270 (= (containsKeyBiggerList!681 (toList!7717 lm!2671) key!6540) e!3024231)))

(declare-fun b!4839103 () Bool)

(assert (=> b!4839103 (= e!3024233 (containsKey!4557 (_2!32686 (h!61746 (toList!7717 lm!2671))) key!6540))))

(declare-fun b!4839104 () Bool)

(declare-fun e!3024232 () Bool)

(assert (=> b!4839104 (= e!3024231 e!3024232)))

(declare-fun res!2062694 () Bool)

(assert (=> b!4839104 (=> (not res!2062694) (not e!3024232))))

(assert (=> b!4839104 (= res!2062694 (is-Cons!55311 (toList!7717 lm!2671)))))

(declare-fun b!4839105 () Bool)

(assert (=> b!4839105 (= e!3024232 (containsKeyBiggerList!681 (t!362931 (toList!7717 lm!2671)) key!6540))))

(assert (= (and d!1551270 res!2062693) b!4839103))

(assert (= (and d!1551270 (not res!2062692)) b!4839104))

(assert (= (and b!4839104 res!2062694) b!4839105))

(assert (=> b!4839103 m!5834548))

(assert (=> b!4839105 m!5834540))

(assert (=> b!4838939 d!1551270))

(declare-fun bs!1168108 () Bool)

(declare-fun d!1551272 () Bool)

(assert (= bs!1168108 (and d!1551272 d!1551264)))

(declare-fun lambda!240438 () Int)

(assert (=> bs!1168108 (= lambda!240438 lambda!240437)))

(declare-fun bs!1168109 () Bool)

(assert (= bs!1168109 (and d!1551272 start!503412)))

(assert (=> bs!1168109 (= lambda!240438 lambda!240414)))

(declare-fun bs!1168110 () Bool)

(assert (= bs!1168110 (and d!1551272 d!1551238)))

(assert (=> bs!1168110 (= lambda!240438 lambda!240431)))

(declare-fun bs!1168111 () Bool)

(assert (= bs!1168111 (and d!1551272 d!1551248)))

(assert (=> bs!1168111 (= lambda!240438 lambda!240434)))

(declare-fun bs!1168112 () Bool)

(assert (= bs!1168112 (and d!1551272 d!1551212)))

(assert (=> bs!1168112 (not (= lambda!240438 lambda!240422))))

(declare-fun lt!1983699 () ListMap!7071)

(assert (=> d!1551272 (invariantList!1868 (toList!7718 lt!1983699))))

(declare-fun e!3024234 () ListMap!7071)

(assert (=> d!1551272 (= lt!1983699 e!3024234)))

(declare-fun c!824175 () Bool)

(assert (=> d!1551272 (= c!824175 (is-Cons!55311 (toList!7717 lm!2671)))))

(assert (=> d!1551272 (forall!12812 (toList!7717 lm!2671) lambda!240438)))

(assert (=> d!1551272 (= (extractMap!2755 (toList!7717 lm!2671)) lt!1983699)))

(declare-fun b!4839107 () Bool)

(assert (=> b!4839107 (= e!3024234 (addToMapMapFromBucket!1895 (_2!32686 (h!61746 (toList!7717 lm!2671))) (extractMap!2755 (t!362931 (toList!7717 lm!2671)))))))

(declare-fun b!4839108 () Bool)

(assert (=> b!4839108 (= e!3024234 (ListMap!7072 Nil!55310))))

(assert (= (and d!1551272 c!824175) b!4839107))

(assert (= (and d!1551272 (not c!824175)) b!4839108))

(declare-fun m!5834734 () Bool)

(assert (=> d!1551272 m!5834734))

(declare-fun m!5834736 () Bool)

(assert (=> d!1551272 m!5834736))

(assert (=> b!4839107 m!5834578))

(assert (=> b!4839107 m!5834578))

(declare-fun m!5834738 () Bool)

(assert (=> b!4839107 m!5834738))

(assert (=> b!4838943 d!1551272))

(declare-fun b!4839140 () Bool)

(assert (=> b!4839140 true))

(declare-fun bs!1168117 () Bool)

(declare-fun b!4839137 () Bool)

(assert (= bs!1168117 (and b!4839137 b!4839140)))

(declare-fun lambda!240471 () Int)

(declare-fun lambda!240470 () Int)

(assert (=> bs!1168117 (= lambda!240471 lambda!240470)))

(assert (=> b!4839137 true))

(declare-fun lambda!240472 () Int)

(declare-fun lt!1983762 () ListMap!7071)

(assert (=> bs!1168117 (= (= lt!1983762 lt!1983620) (= lambda!240472 lambda!240470))))

(assert (=> b!4839137 (= (= lt!1983762 lt!1983620) (= lambda!240472 lambda!240471))))

(assert (=> b!4839137 true))

(declare-fun bs!1168118 () Bool)

(declare-fun d!1551274 () Bool)

(assert (= bs!1168118 (and d!1551274 b!4839140)))

(declare-fun lt!1983765 () ListMap!7071)

(declare-fun lambda!240473 () Int)

(assert (=> bs!1168118 (= (= lt!1983765 lt!1983620) (= lambda!240473 lambda!240470))))

(declare-fun bs!1168119 () Bool)

(assert (= bs!1168119 (and d!1551274 b!4839137)))

(assert (=> bs!1168119 (= (= lt!1983765 lt!1983620) (= lambda!240473 lambda!240471))))

(assert (=> bs!1168119 (= (= lt!1983765 lt!1983762) (= lambda!240473 lambda!240472))))

(assert (=> d!1551274 true))

(declare-fun bm!337244 () Bool)

(declare-fun call!337250 () Bool)

(declare-fun c!824187 () Bool)

(declare-fun forall!12814 (List!55434 Int) Bool)

(assert (=> bm!337244 (= call!337250 (forall!12814 (toList!7718 lt!1983620) (ite c!824187 lambda!240470 lambda!240471)))))

(declare-fun e!3024251 () ListMap!7071)

(assert (=> b!4839137 (= e!3024251 lt!1983762)))

(declare-fun lt!1983748 () ListMap!7071)

(declare-fun +!2602 (ListMap!7071 tuple2!58782) ListMap!7071)

(assert (=> b!4839137 (= lt!1983748 (+!2602 lt!1983620 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))))))

(assert (=> b!4839137 (= lt!1983762 (addToMapMapFromBucket!1895 (t!362930 (_2!32686 (h!61746 (toList!7717 lm!2671)))) (+!2602 lt!1983620 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671)))))))))

(declare-fun lt!1983750 () Unit!144871)

(declare-fun call!337249 () Unit!144871)

(assert (=> b!4839137 (= lt!1983750 call!337249)))

(assert (=> b!4839137 call!337250))

(declare-fun lt!1983757 () Unit!144871)

(assert (=> b!4839137 (= lt!1983757 lt!1983750)))

(declare-fun call!337251 () Bool)

(assert (=> b!4839137 call!337251))

(declare-fun lt!1983760 () Unit!144871)

(declare-fun Unit!144879 () Unit!144871)

(assert (=> b!4839137 (= lt!1983760 Unit!144879)))

(assert (=> b!4839137 (forall!12814 (t!362930 (_2!32686 (h!61746 (toList!7717 lm!2671)))) lambda!240472)))

(declare-fun lt!1983754 () Unit!144871)

(declare-fun Unit!144880 () Unit!144871)

(assert (=> b!4839137 (= lt!1983754 Unit!144880)))

(declare-fun lt!1983766 () Unit!144871)

(declare-fun Unit!144881 () Unit!144871)

(assert (=> b!4839137 (= lt!1983766 Unit!144881)))

(declare-fun lt!1983751 () Unit!144871)

(declare-fun forallContained!4483 (List!55434 Int tuple2!58782) Unit!144871)

(assert (=> b!4839137 (= lt!1983751 (forallContained!4483 (toList!7718 lt!1983748) lambda!240472 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))))))

(assert (=> b!4839137 (contains!19069 lt!1983748 (_1!32685 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))))))

(declare-fun lt!1983758 () Unit!144871)

(declare-fun Unit!144882 () Unit!144871)

(assert (=> b!4839137 (= lt!1983758 Unit!144882)))

(assert (=> b!4839137 (contains!19069 lt!1983762 (_1!32685 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))))))

(declare-fun lt!1983756 () Unit!144871)

(declare-fun Unit!144883 () Unit!144871)

(assert (=> b!4839137 (= lt!1983756 Unit!144883)))

(assert (=> b!4839137 (forall!12814 (_2!32686 (h!61746 (toList!7717 lm!2671))) lambda!240472)))

(declare-fun lt!1983753 () Unit!144871)

(declare-fun Unit!144884 () Unit!144871)

(assert (=> b!4839137 (= lt!1983753 Unit!144884)))

(assert (=> b!4839137 (forall!12814 (toList!7718 lt!1983748) lambda!240472)))

(declare-fun lt!1983747 () Unit!144871)

(declare-fun Unit!144885 () Unit!144871)

(assert (=> b!4839137 (= lt!1983747 Unit!144885)))

(declare-fun lt!1983752 () Unit!144871)

(declare-fun Unit!144886 () Unit!144871)

(assert (=> b!4839137 (= lt!1983752 Unit!144886)))

(declare-fun lt!1983759 () Unit!144871)

(declare-fun addForallContainsKeyThenBeforeAdding!1040 (ListMap!7071 ListMap!7071 K!17062 V!17308) Unit!144871)

(assert (=> b!4839137 (= lt!1983759 (addForallContainsKeyThenBeforeAdding!1040 lt!1983620 lt!1983762 (_1!32685 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671))))) (_2!32685 (h!61745 (_2!32686 (h!61746 (toList!7717 lm!2671)))))))))

(assert (=> b!4839137 (forall!12814 (toList!7718 lt!1983620) lambda!240472)))

(declare-fun lt!1983764 () Unit!144871)

(assert (=> b!4839137 (= lt!1983764 lt!1983759)))

(assert (=> b!4839137 (forall!12814 (toList!7718 lt!1983620) lambda!240472)))

(declare-fun lt!1983763 () Unit!144871)

(declare-fun Unit!144887 () Unit!144871)

(assert (=> b!4839137 (= lt!1983763 Unit!144887)))

(declare-fun res!2062701 () Bool)

(assert (=> b!4839137 (= res!2062701 (forall!12814 (_2!32686 (h!61746 (toList!7717 lm!2671))) lambda!240472))))

(declare-fun e!3024252 () Bool)

(assert (=> b!4839137 (=> (not res!2062701) (not e!3024252))))

(assert (=> b!4839137 e!3024252))

(declare-fun lt!1983746 () Unit!144871)

(declare-fun Unit!144888 () Unit!144871)

(assert (=> b!4839137 (= lt!1983746 Unit!144888)))

(declare-fun bm!337245 () Bool)

(assert (=> bm!337245 (= call!337251 (forall!12814 (ite c!824187 (toList!7718 lt!1983620) (toList!7718 lt!1983748)) (ite c!824187 lambda!240470 lambda!240472)))))

(declare-fun b!4839138 () Bool)

(assert (=> b!4839138 (= e!3024252 (forall!12814 (toList!7718 lt!1983620) lambda!240472))))

(declare-fun bm!337246 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1042 (ListMap!7071) Unit!144871)

(assert (=> bm!337246 (= call!337249 (lemmaContainsAllItsOwnKeys!1042 lt!1983620))))

(declare-fun b!4839139 () Bool)

(declare-fun res!2062702 () Bool)

(declare-fun e!3024250 () Bool)

(assert (=> b!4839139 (=> (not res!2062702) (not e!3024250))))

(assert (=> b!4839139 (= res!2062702 (forall!12814 (toList!7718 lt!1983620) lambda!240473))))

(assert (=> d!1551274 e!3024250))

(declare-fun res!2062703 () Bool)

(assert (=> d!1551274 (=> (not res!2062703) (not e!3024250))))

(assert (=> d!1551274 (= res!2062703 (forall!12814 (_2!32686 (h!61746 (toList!7717 lm!2671))) lambda!240473))))

(assert (=> d!1551274 (= lt!1983765 e!3024251)))

(assert (=> d!1551274 (= c!824187 (is-Nil!55310 (_2!32686 (h!61746 (toList!7717 lm!2671)))))))

(declare-fun noDuplicateKeys!2533 (List!55434) Bool)

(assert (=> d!1551274 (noDuplicateKeys!2533 (_2!32686 (h!61746 (toList!7717 lm!2671))))))

(assert (=> d!1551274 (= (addToMapMapFromBucket!1895 (_2!32686 (h!61746 (toList!7717 lm!2671))) lt!1983620) lt!1983765)))

(assert (=> b!4839140 (= e!3024251 lt!1983620)))

(declare-fun lt!1983761 () Unit!144871)

(assert (=> b!4839140 (= lt!1983761 call!337249)))

(assert (=> b!4839140 call!337251))

(declare-fun lt!1983755 () Unit!144871)

(assert (=> b!4839140 (= lt!1983755 lt!1983761)))

(assert (=> b!4839140 call!337250))

(declare-fun lt!1983749 () Unit!144871)

(declare-fun Unit!144889 () Unit!144871)

(assert (=> b!4839140 (= lt!1983749 Unit!144889)))

(declare-fun b!4839141 () Bool)

(assert (=> b!4839141 (= e!3024250 (invariantList!1868 (toList!7718 lt!1983765)))))

(assert (= (and d!1551274 c!824187) b!4839140))

(assert (= (and d!1551274 (not c!824187)) b!4839137))

(assert (= (and b!4839137 res!2062701) b!4839138))

(assert (= (or b!4839140 b!4839137) bm!337246))

(assert (= (or b!4839140 b!4839137) bm!337245))

(assert (= (or b!4839140 b!4839137) bm!337244))

(assert (= (and d!1551274 res!2062703) b!4839139))

(assert (= (and b!4839139 res!2062702) b!4839141))

(declare-fun m!5834750 () Bool)

(assert (=> bm!337244 m!5834750))

(declare-fun m!5834752 () Bool)

(assert (=> b!4839141 m!5834752))

(declare-fun m!5834754 () Bool)

(assert (=> d!1551274 m!5834754))

(declare-fun m!5834756 () Bool)

(assert (=> d!1551274 m!5834756))

(declare-fun m!5834758 () Bool)

(assert (=> b!4839138 m!5834758))

(declare-fun m!5834760 () Bool)

(assert (=> bm!337246 m!5834760))

(declare-fun m!5834762 () Bool)

(assert (=> b!4839139 m!5834762))

(declare-fun m!5834764 () Bool)

(assert (=> bm!337245 m!5834764))

(declare-fun m!5834766 () Bool)

(assert (=> b!4839137 m!5834766))

(declare-fun m!5834768 () Bool)

(assert (=> b!4839137 m!5834768))

(declare-fun m!5834770 () Bool)

(assert (=> b!4839137 m!5834770))

(assert (=> b!4839137 m!5834758))

(declare-fun m!5834772 () Bool)

(assert (=> b!4839137 m!5834772))

(assert (=> b!4839137 m!5834758))

(assert (=> b!4839137 m!5834766))

(declare-fun m!5834774 () Bool)

(assert (=> b!4839137 m!5834774))

(declare-fun m!5834776 () Bool)

(assert (=> b!4839137 m!5834776))

(declare-fun m!5834778 () Bool)

(assert (=> b!4839137 m!5834778))

(assert (=> b!4839137 m!5834776))

(declare-fun m!5834780 () Bool)

(assert (=> b!4839137 m!5834780))

(declare-fun m!5834782 () Bool)

(assert (=> b!4839137 m!5834782))

(assert (=> b!4838943 d!1551274))

(declare-fun bs!1168120 () Bool)

(declare-fun d!1551282 () Bool)

(assert (= bs!1168120 (and d!1551282 d!1551264)))

(declare-fun lambda!240474 () Int)

(assert (=> bs!1168120 (= lambda!240474 lambda!240437)))

(declare-fun bs!1168121 () Bool)

(assert (= bs!1168121 (and d!1551282 d!1551272)))

(assert (=> bs!1168121 (= lambda!240474 lambda!240438)))

(declare-fun bs!1168122 () Bool)

(assert (= bs!1168122 (and d!1551282 start!503412)))

(assert (=> bs!1168122 (= lambda!240474 lambda!240414)))

(declare-fun bs!1168123 () Bool)

(assert (= bs!1168123 (and d!1551282 d!1551238)))

(assert (=> bs!1168123 (= lambda!240474 lambda!240431)))

(declare-fun bs!1168124 () Bool)

(assert (= bs!1168124 (and d!1551282 d!1551248)))

(assert (=> bs!1168124 (= lambda!240474 lambda!240434)))

(declare-fun bs!1168125 () Bool)

(assert (= bs!1168125 (and d!1551282 d!1551212)))

(assert (=> bs!1168125 (not (= lambda!240474 lambda!240422))))

(declare-fun lt!1983767 () ListMap!7071)

(assert (=> d!1551282 (invariantList!1868 (toList!7718 lt!1983767))))

(declare-fun e!3024253 () ListMap!7071)

(assert (=> d!1551282 (= lt!1983767 e!3024253)))

(declare-fun c!824188 () Bool)

(assert (=> d!1551282 (= c!824188 (is-Cons!55311 (t!362931 (toList!7717 lm!2671))))))

(assert (=> d!1551282 (forall!12812 (t!362931 (toList!7717 lm!2671)) lambda!240474)))

(assert (=> d!1551282 (= (extractMap!2755 (t!362931 (toList!7717 lm!2671))) lt!1983767)))

(declare-fun b!4839144 () Bool)

(assert (=> b!4839144 (= e!3024253 (addToMapMapFromBucket!1895 (_2!32686 (h!61746 (t!362931 (toList!7717 lm!2671)))) (extractMap!2755 (t!362931 (t!362931 (toList!7717 lm!2671))))))))

(declare-fun b!4839145 () Bool)

(assert (=> b!4839145 (= e!3024253 (ListMap!7072 Nil!55310))))

(assert (= (and d!1551282 c!824188) b!4839144))

(assert (= (and d!1551282 (not c!824188)) b!4839145))

(declare-fun m!5834784 () Bool)

(assert (=> d!1551282 m!5834784))

(declare-fun m!5834786 () Bool)

(assert (=> d!1551282 m!5834786))

(declare-fun m!5834788 () Bool)

(assert (=> b!4839144 m!5834788))

(assert (=> b!4839144 m!5834788))

(declare-fun m!5834790 () Bool)

(assert (=> b!4839144 m!5834790))

(assert (=> b!4838943 d!1551282))

(declare-fun b!4839150 () Bool)

(declare-fun e!3024256 () Bool)

(declare-fun tp!1363707 () Bool)

(declare-fun tp!1363708 () Bool)

(assert (=> b!4839150 (= e!3024256 (and tp!1363707 tp!1363708))))

(assert (=> b!4838944 (= tp!1363699 e!3024256)))

(assert (= (and b!4838944 (is-Cons!55311 (toList!7717 lm!2671))) b!4839150))

(declare-fun b_lambda!191273 () Bool)

(assert (= b_lambda!191267 (or start!503412 b_lambda!191273)))

(declare-fun bs!1168126 () Bool)

(declare-fun d!1551284 () Bool)

(assert (= bs!1168126 (and d!1551284 start!503412)))

(assert (=> bs!1168126 (= (dynLambda!22284 lambda!240414 (h!61746 (t!362931 (toList!7717 lm!2671)))) (noDuplicateKeys!2533 (_2!32686 (h!61746 (t!362931 (toList!7717 lm!2671))))))))

(declare-fun m!5834792 () Bool)

(assert (=> bs!1168126 m!5834792))

(assert (=> b!4838985 d!1551284))

(declare-fun b_lambda!191275 () Bool)

(assert (= b_lambda!191271 (or start!503412 b_lambda!191275)))

(declare-fun bs!1168127 () Bool)

(declare-fun d!1551286 () Bool)

(assert (= bs!1168127 (and d!1551286 start!503412)))

(assert (=> bs!1168127 (= (dynLambda!22284 lambda!240414 (h!61746 (toList!7717 lm!2671))) (noDuplicateKeys!2533 (_2!32686 (h!61746 (toList!7717 lm!2671)))))))

(assert (=> bs!1168127 m!5834756))

(assert (=> b!4839101 d!1551286))

(push 1)

(assert (not bm!337244))

(assert (not b!4839103))

(assert (not b!4838986))

(assert (not d!1551282))

(assert (not d!1551272))

(assert (not b!4839095))

(assert (not b!4839088))

(assert (not b!4839041))

(assert (not b!4839069))

(assert (not b!4839065))

(assert (not b!4839098))

(assert (not d!1551238))

(assert (not b!4839068))

(assert tp_is_empty!34897)

(assert (not b_lambda!191273))

(assert (not b!4839040))

(assert (not b!4839097))

(assert (not d!1551264))

(assert (not b!4839105))

(assert (not b!4839039))

(assert (not b!4839107))

(assert (not b!4839060))

(assert (not b!4839070))

(assert (not bm!337246))

(assert (not d!1551274))

(assert (not b!4838992))

(assert (not bs!1168126))

(assert (not bm!337237))

(assert (not d!1551246))

(assert (not b!4839138))

(assert (not b!4839139))

(assert (not b!4839137))

(assert (not d!1551220))

(assert (not d!1551248))

(assert (not d!1551216))

(assert (not b!4839042))

(assert (not b!4839100))

(assert (not b!4839044))

(assert (not d!1551268))

(assert (not bm!337245))

(assert (not b!4839043))

(assert (not b!4839141))

(assert (not d!1551212))

(assert (not bm!337236))

(assert (not b!4839144))

(assert (not b!4839038))

(assert (not d!1551236))

(assert (not b!4839067))

(assert (not b!4839066))

(assert (not b!4839003))

(assert (not d!1551226))

(assert (not b!4839064))

(assert (not b_lambda!191275))

(assert (not b!4839150))

(assert (not b!4839102))

(assert (not bs!1168127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

