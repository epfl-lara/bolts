; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457078 () Bool)

(assert start!457078)

(declare-fun b!4589957 () Bool)

(declare-fun res!1918721 () Bool)

(declare-fun e!2862677 () Bool)

(assert (=> b!4589957 (=> res!1918721 e!2862677)))

(declare-datatypes ((K!12353 0))(
  ( (K!12354 (val!18153 Int)) )
))
(declare-datatypes ((V!12599 0))(
  ( (V!12600 (val!18154 Int)) )
))
(declare-datatypes ((tuple2!51574 0))(
  ( (tuple2!51575 (_1!29081 K!12353) (_2!29081 V!12599)) )
))
(declare-datatypes ((List!51108 0))(
  ( (Nil!50984) (Cons!50984 (h!56927 tuple2!51574) (t!358102 List!51108)) )
))
(declare-fun newBucket!178 () List!51108)

(declare-fun noDuplicateKeys!1281 (List!51108) Bool)

(assert (=> b!4589957 (= res!1918721 (not (noDuplicateKeys!1281 newBucket!178)))))

(declare-fun b!4589958 () Bool)

(declare-fun e!2862678 () Bool)

(declare-fun e!2862680 () Bool)

(assert (=> b!4589958 (= e!2862678 e!2862680)))

(declare-fun res!1918720 () Bool)

(assert (=> b!4589958 (=> (not res!1918720) (not e!2862680))))

(declare-fun lt!1752630 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4589958 (= res!1918720 (= lt!1752630 hash!344))))

(declare-datatypes ((Hashable!5680 0))(
  ( (HashableExt!5679 (__x!31383 Int)) )
))
(declare-fun hashF!1107 () Hashable!5680)

(declare-fun key!3287 () K!12353)

(declare-fun hash!3150 (Hashable!5680 K!12353) (_ BitVec 64))

(assert (=> b!4589958 (= lt!1752630 (hash!3150 hashF!1107 key!3287))))

(declare-fun b!4589959 () Bool)

(declare-datatypes ((tuple2!51576 0))(
  ( (tuple2!51577 (_1!29082 (_ BitVec 64)) (_2!29082 List!51108)) )
))
(declare-datatypes ((List!51109 0))(
  ( (Nil!50985) (Cons!50985 (h!56928 tuple2!51576) (t!358103 List!51109)) )
))
(declare-datatypes ((ListLongMap!3209 0))(
  ( (ListLongMap!3210 (toList!4577 List!51109)) )
))
(declare-fun lm!1477 () ListLongMap!3209)

(declare-fun size!35955 (List!51109) Int)

(assert (=> b!4589959 (= e!2862677 (>= (size!35955 (toList!4577 lm!1477)) 0))))

(declare-fun b!4589960 () Bool)

(declare-fun res!1918723 () Bool)

(assert (=> b!4589960 (=> (not res!1918723) (not e!2862680))))

(declare-fun allKeysSameHash!1137 (List!51108 (_ BitVec 64) Hashable!5680) Bool)

(assert (=> b!4589960 (= res!1918723 (allKeysSameHash!1137 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4589961 () Bool)

(declare-fun res!1918717 () Bool)

(assert (=> b!4589961 (=> (not res!1918717) (not e!2862678))))

(declare-fun allKeysSameHashInMap!1392 (ListLongMap!3209 Hashable!5680) Bool)

(assert (=> b!4589961 (= res!1918717 (allKeysSameHashInMap!1392 lm!1477 hashF!1107))))

(declare-fun res!1918718 () Bool)

(assert (=> start!457078 (=> (not res!1918718) (not e!2862678))))

(declare-fun lambda!184596 () Int)

(declare-fun forall!10527 (List!51109 Int) Bool)

(assert (=> start!457078 (= res!1918718 (forall!10527 (toList!4577 lm!1477) lambda!184596))))

(assert (=> start!457078 e!2862678))

(assert (=> start!457078 true))

(declare-fun e!2862679 () Bool)

(declare-fun inv!66538 (ListLongMap!3209) Bool)

(assert (=> start!457078 (and (inv!66538 lm!1477) e!2862679)))

(declare-fun tp_is_empty!28417 () Bool)

(assert (=> start!457078 tp_is_empty!28417))

(declare-fun e!2862676 () Bool)

(assert (=> start!457078 e!2862676))

(declare-fun b!4589962 () Bool)

(declare-fun tp!1339931 () Bool)

(assert (=> b!4589962 (= e!2862679 tp!1339931)))

(declare-fun b!4589963 () Bool)

(assert (=> b!4589963 (= e!2862680 (not e!2862677))))

(declare-fun res!1918722 () Bool)

(assert (=> b!4589963 (=> res!1918722 e!2862677)))

(declare-fun lt!1752626 () List!51108)

(declare-fun removePairForKey!906 (List!51108 K!12353) List!51108)

(assert (=> b!4589963 (= res!1918722 (not (= newBucket!178 (removePairForKey!906 lt!1752626 key!3287))))))

(declare-datatypes ((Unit!107378 0))(
  ( (Unit!107379) )
))
(declare-fun lt!1752629 () Unit!107378)

(declare-fun lt!1752627 () tuple2!51576)

(declare-fun forallContained!2786 (List!51109 Int tuple2!51576) Unit!107378)

(assert (=> b!4589963 (= lt!1752629 (forallContained!2786 (toList!4577 lm!1477) lambda!184596 lt!1752627))))

(declare-fun contains!13890 (List!51109 tuple2!51576) Bool)

(assert (=> b!4589963 (contains!13890 (toList!4577 lm!1477) lt!1752627)))

(assert (=> b!4589963 (= lt!1752627 (tuple2!51577 hash!344 lt!1752626))))

(declare-fun lt!1752628 () Unit!107378)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!791 (List!51109 (_ BitVec 64) List!51108) Unit!107378)

(assert (=> b!4589963 (= lt!1752628 (lemmaGetValueByKeyImpliesContainsTuple!791 (toList!4577 lm!1477) hash!344 lt!1752626))))

(declare-fun apply!12018 (ListLongMap!3209 (_ BitVec 64)) List!51108)

(assert (=> b!4589963 (= lt!1752626 (apply!12018 lm!1477 hash!344))))

(declare-fun contains!13891 (ListLongMap!3209 (_ BitVec 64)) Bool)

(assert (=> b!4589963 (contains!13891 lm!1477 lt!1752630)))

(declare-fun lt!1752625 () Unit!107378)

(declare-fun lemmaInGenMapThenLongMapContainsHash!355 (ListLongMap!3209 K!12353 Hashable!5680) Unit!107378)

(assert (=> b!4589963 (= lt!1752625 (lemmaInGenMapThenLongMapContainsHash!355 lm!1477 key!3287 hashF!1107))))

(declare-fun tp_is_empty!28419 () Bool)

(declare-fun b!4589964 () Bool)

(declare-fun tp!1339930 () Bool)

(assert (=> b!4589964 (= e!2862676 (and tp_is_empty!28417 tp_is_empty!28419 tp!1339930))))

(declare-fun b!4589965 () Bool)

(declare-fun res!1918719 () Bool)

(assert (=> b!4589965 (=> (not res!1918719) (not e!2862678))))

(declare-datatypes ((ListMap!3839 0))(
  ( (ListMap!3840 (toList!4578 List!51108)) )
))
(declare-fun contains!13892 (ListMap!3839 K!12353) Bool)

(declare-fun extractMap!1341 (List!51109) ListMap!3839)

(assert (=> b!4589965 (= res!1918719 (contains!13892 (extractMap!1341 (toList!4577 lm!1477)) key!3287))))

(assert (= (and start!457078 res!1918718) b!4589961))

(assert (= (and b!4589961 res!1918717) b!4589965))

(assert (= (and b!4589965 res!1918719) b!4589958))

(assert (= (and b!4589958 res!1918720) b!4589960))

(assert (= (and b!4589960 res!1918723) b!4589963))

(assert (= (and b!4589963 (not res!1918722)) b!4589957))

(assert (= (and b!4589957 (not res!1918721)) b!4589959))

(assert (= start!457078 b!4589962))

(assert (= (and start!457078 (is-Cons!50984 newBucket!178)) b!4589964))

(declare-fun m!5413259 () Bool)

(assert (=> b!4589960 m!5413259))

(declare-fun m!5413261 () Bool)

(assert (=> b!4589961 m!5413261))

(declare-fun m!5413263 () Bool)

(assert (=> start!457078 m!5413263))

(declare-fun m!5413265 () Bool)

(assert (=> start!457078 m!5413265))

(declare-fun m!5413267 () Bool)

(assert (=> b!4589959 m!5413267))

(declare-fun m!5413269 () Bool)

(assert (=> b!4589963 m!5413269))

(declare-fun m!5413271 () Bool)

(assert (=> b!4589963 m!5413271))

(declare-fun m!5413273 () Bool)

(assert (=> b!4589963 m!5413273))

(declare-fun m!5413275 () Bool)

(assert (=> b!4589963 m!5413275))

(declare-fun m!5413277 () Bool)

(assert (=> b!4589963 m!5413277))

(declare-fun m!5413279 () Bool)

(assert (=> b!4589963 m!5413279))

(declare-fun m!5413281 () Bool)

(assert (=> b!4589963 m!5413281))

(declare-fun m!5413283 () Bool)

(assert (=> b!4589965 m!5413283))

(assert (=> b!4589965 m!5413283))

(declare-fun m!5413285 () Bool)

(assert (=> b!4589965 m!5413285))

(declare-fun m!5413287 () Bool)

(assert (=> b!4589957 m!5413287))

(declare-fun m!5413289 () Bool)

(assert (=> b!4589958 m!5413289))

(push 1)

(assert tp_is_empty!28419)

(assert (not b!4589965))

(assert (not start!457078))

(assert (not b!4589958))

(assert (not b!4589963))

(assert tp_is_empty!28417)

(assert (not b!4589961))

(assert (not b!4589957))

(assert (not b!4589962))

(assert (not b!4589960))

(assert (not b!4589964))

(assert (not b!4589959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1443923 () Bool)

(assert (=> d!1443923 true))

(assert (=> d!1443923 true))

(declare-fun lambda!184604 () Int)

(declare-fun forall!10529 (List!51108 Int) Bool)

(assert (=> d!1443923 (= (allKeysSameHash!1137 newBucket!178 hash!344 hashF!1107) (forall!10529 newBucket!178 lambda!184604))))

(declare-fun bs!1007837 () Bool)

(assert (= bs!1007837 d!1443923))

(declare-fun m!5413323 () Bool)

(assert (=> bs!1007837 m!5413323))

(assert (=> b!4589960 d!1443923))

(declare-fun b!4590015 () Bool)

(declare-fun e!2862712 () Bool)

(declare-datatypes ((List!51112 0))(
  ( (Nil!50988) (Cons!50988 (h!56932 K!12353) (t!358106 List!51112)) )
))
(declare-fun contains!13896 (List!51112 K!12353) Bool)

(declare-fun keys!17825 (ListMap!3839) List!51112)

(assert (=> b!4590015 (= e!2862712 (contains!13896 (keys!17825 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(declare-fun b!4590016 () Bool)

(declare-fun e!2862710 () Unit!107378)

(declare-fun Unit!107382 () Unit!107378)

(assert (=> b!4590016 (= e!2862710 Unit!107382)))

(declare-fun b!4590017 () Bool)

(declare-fun e!2862711 () Unit!107378)

(assert (=> b!4590017 (= e!2862711 e!2862710)))

(declare-fun c!786080 () Bool)

(declare-fun call!320522 () Bool)

(assert (=> b!4590017 (= c!786080 call!320522)))

(declare-fun b!4590018 () Bool)

(assert (=> b!4590018 false))

(declare-fun lt!1752671 () Unit!107378)

(declare-fun lt!1752665 () Unit!107378)

(assert (=> b!4590018 (= lt!1752671 lt!1752665)))

(declare-fun containsKey!2079 (List!51108 K!12353) Bool)

(assert (=> b!4590018 (containsKey!2079 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!551 (List!51108 K!12353) Unit!107378)

(assert (=> b!4590018 (= lt!1752665 (lemmaInGetKeysListThenContainsKey!551 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(declare-fun Unit!107383 () Unit!107378)

(assert (=> b!4590018 (= e!2862710 Unit!107383)))

(declare-fun b!4590019 () Bool)

(declare-fun e!2862708 () Bool)

(assert (=> b!4590019 (= e!2862708 (not (contains!13896 (keys!17825 (extractMap!1341 (toList!4577 lm!1477))) key!3287)))))

(declare-fun b!4590020 () Bool)

(declare-fun e!2862709 () List!51112)

(assert (=> b!4590020 (= e!2862709 (keys!17825 (extractMap!1341 (toList!4577 lm!1477))))))

(declare-fun b!4590021 () Bool)

(declare-fun e!2862713 () Bool)

(assert (=> b!4590021 (= e!2862713 e!2862712)))

(declare-fun res!1918751 () Bool)

(assert (=> b!4590021 (=> (not res!1918751) (not e!2862712))))

(declare-datatypes ((Option!11348 0))(
  ( (None!11347) (Some!11347 (v!45251 V!12599)) )
))
(declare-fun isDefined!8616 (Option!11348) Bool)

(declare-fun getValueByKey!1268 (List!51108 K!12353) Option!11348)

(assert (=> b!4590021 (= res!1918751 (isDefined!8616 (getValueByKey!1268 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287)))))

(declare-fun b!4590022 () Bool)

(declare-fun getKeysList!552 (List!51108) List!51112)

(assert (=> b!4590022 (= e!2862709 (getKeysList!552 (toList!4578 (extractMap!1341 (toList!4577 lm!1477)))))))

(declare-fun b!4590023 () Bool)

(declare-fun lt!1752672 () Unit!107378)

(assert (=> b!4590023 (= e!2862711 lt!1752672)))

(declare-fun lt!1752669 () Unit!107378)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1172 (List!51108 K!12353) Unit!107378)

(assert (=> b!4590023 (= lt!1752669 (lemmaContainsKeyImpliesGetValueByKeyDefined!1172 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(assert (=> b!4590023 (isDefined!8616 (getValueByKey!1268 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(declare-fun lt!1752668 () Unit!107378)

(assert (=> b!4590023 (= lt!1752668 lt!1752669)))

(declare-fun lemmaInListThenGetKeysListContains!548 (List!51108 K!12353) Unit!107378)

(assert (=> b!4590023 (= lt!1752672 (lemmaInListThenGetKeysListContains!548 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(assert (=> b!4590023 call!320522))

(declare-fun bm!320517 () Bool)

(assert (=> bm!320517 (= call!320522 (contains!13896 e!2862709 key!3287))))

(declare-fun c!786079 () Bool)

(declare-fun c!786078 () Bool)

(assert (=> bm!320517 (= c!786079 c!786078)))

(declare-fun d!1443925 () Bool)

(assert (=> d!1443925 e!2862713))

(declare-fun res!1918753 () Bool)

(assert (=> d!1443925 (=> res!1918753 e!2862713)))

(assert (=> d!1443925 (= res!1918753 e!2862708)))

(declare-fun res!1918752 () Bool)

(assert (=> d!1443925 (=> (not res!1918752) (not e!2862708))))

(declare-fun lt!1752666 () Bool)

(assert (=> d!1443925 (= res!1918752 (not lt!1752666))))

(declare-fun lt!1752670 () Bool)

(assert (=> d!1443925 (= lt!1752666 lt!1752670)))

(declare-fun lt!1752667 () Unit!107378)

(assert (=> d!1443925 (= lt!1752667 e!2862711)))

(assert (=> d!1443925 (= c!786078 lt!1752670)))

(assert (=> d!1443925 (= lt!1752670 (containsKey!2079 (toList!4578 (extractMap!1341 (toList!4577 lm!1477))) key!3287))))

(assert (=> d!1443925 (= (contains!13892 (extractMap!1341 (toList!4577 lm!1477)) key!3287) lt!1752666)))

(assert (= (and d!1443925 c!786078) b!4590023))

(assert (= (and d!1443925 (not c!786078)) b!4590017))

(assert (= (and b!4590017 c!786080) b!4590018))

(assert (= (and b!4590017 (not c!786080)) b!4590016))

(assert (= (or b!4590023 b!4590017) bm!320517))

(assert (= (and bm!320517 c!786079) b!4590022))

(assert (= (and bm!320517 (not c!786079)) b!4590020))

(assert (= (and d!1443925 res!1918752) b!4590019))

(assert (= (and d!1443925 (not res!1918753)) b!4590021))

(assert (= (and b!4590021 res!1918751) b!4590015))

(declare-fun m!5413325 () Bool)

(assert (=> b!4590022 m!5413325))

(declare-fun m!5413327 () Bool)

(assert (=> d!1443925 m!5413327))

(assert (=> b!4590020 m!5413283))

(declare-fun m!5413329 () Bool)

(assert (=> b!4590020 m!5413329))

(declare-fun m!5413331 () Bool)

(assert (=> b!4590021 m!5413331))

(assert (=> b!4590021 m!5413331))

(declare-fun m!5413333 () Bool)

(assert (=> b!4590021 m!5413333))

(declare-fun m!5413335 () Bool)

(assert (=> bm!320517 m!5413335))

(assert (=> b!4590018 m!5413327))

(declare-fun m!5413337 () Bool)

(assert (=> b!4590018 m!5413337))

(declare-fun m!5413339 () Bool)

(assert (=> b!4590023 m!5413339))

(assert (=> b!4590023 m!5413331))

(assert (=> b!4590023 m!5413331))

(assert (=> b!4590023 m!5413333))

(declare-fun m!5413341 () Bool)

(assert (=> b!4590023 m!5413341))

(assert (=> b!4590019 m!5413283))

(assert (=> b!4590019 m!5413329))

(assert (=> b!4590019 m!5413329))

(declare-fun m!5413343 () Bool)

(assert (=> b!4590019 m!5413343))

(assert (=> b!4590015 m!5413283))

(assert (=> b!4590015 m!5413329))

(assert (=> b!4590015 m!5413329))

(assert (=> b!4590015 m!5413343))

(assert (=> b!4589965 d!1443925))

(declare-fun bs!1007838 () Bool)

(declare-fun d!1443929 () Bool)

(assert (= bs!1007838 (and d!1443929 start!457078)))

(declare-fun lambda!184607 () Int)

(assert (=> bs!1007838 (= lambda!184607 lambda!184596)))

(declare-fun lt!1752675 () ListMap!3839)

(declare-fun invariantList!1104 (List!51108) Bool)

(assert (=> d!1443929 (invariantList!1104 (toList!4578 lt!1752675))))

(declare-fun e!2862716 () ListMap!3839)

(assert (=> d!1443929 (= lt!1752675 e!2862716)))

(declare-fun c!786083 () Bool)

(assert (=> d!1443929 (= c!786083 (is-Cons!50985 (toList!4577 lm!1477)))))

(assert (=> d!1443929 (forall!10527 (toList!4577 lm!1477) lambda!184607)))

(assert (=> d!1443929 (= (extractMap!1341 (toList!4577 lm!1477)) lt!1752675)))

(declare-fun b!4590028 () Bool)

(declare-fun addToMapMapFromBucket!794 (List!51108 ListMap!3839) ListMap!3839)

(assert (=> b!4590028 (= e!2862716 (addToMapMapFromBucket!794 (_2!29082 (h!56928 (toList!4577 lm!1477))) (extractMap!1341 (t!358103 (toList!4577 lm!1477)))))))

(declare-fun b!4590029 () Bool)

(assert (=> b!4590029 (= e!2862716 (ListMap!3840 Nil!50984))))

(assert (= (and d!1443929 c!786083) b!4590028))

(assert (= (and d!1443929 (not c!786083)) b!4590029))

(declare-fun m!5413345 () Bool)

(assert (=> d!1443929 m!5413345))

(declare-fun m!5413347 () Bool)

(assert (=> d!1443929 m!5413347))

(declare-fun m!5413349 () Bool)

(assert (=> b!4590028 m!5413349))

(assert (=> b!4590028 m!5413349))

(declare-fun m!5413351 () Bool)

(assert (=> b!4590028 m!5413351))

(assert (=> b!4589965 d!1443929))

(declare-fun bs!1007839 () Bool)

(declare-fun d!1443931 () Bool)

(assert (= bs!1007839 (and d!1443931 start!457078)))

(declare-fun lambda!184610 () Int)

(assert (=> bs!1007839 (not (= lambda!184610 lambda!184596))))

(declare-fun bs!1007840 () Bool)

(assert (= bs!1007840 (and d!1443931 d!1443929)))

(assert (=> bs!1007840 (not (= lambda!184610 lambda!184607))))

(assert (=> d!1443931 true))

(assert (=> d!1443931 (= (allKeysSameHashInMap!1392 lm!1477 hashF!1107) (forall!10527 (toList!4577 lm!1477) lambda!184610))))

(declare-fun bs!1007841 () Bool)

(assert (= bs!1007841 d!1443931))

(declare-fun m!5413353 () Bool)

(assert (=> bs!1007841 m!5413353))

(assert (=> b!4589961 d!1443931))

(declare-fun d!1443933 () Bool)

(declare-fun res!1918758 () Bool)

(declare-fun e!2862721 () Bool)

(assert (=> d!1443933 (=> res!1918758 e!2862721)))

(assert (=> d!1443933 (= res!1918758 (not (is-Cons!50984 newBucket!178)))))

(assert (=> d!1443933 (= (noDuplicateKeys!1281 newBucket!178) e!2862721)))

(declare-fun b!4590036 () Bool)

(declare-fun e!2862722 () Bool)

(assert (=> b!4590036 (= e!2862721 e!2862722)))

(declare-fun res!1918759 () Bool)

(assert (=> b!4590036 (=> (not res!1918759) (not e!2862722))))

(declare-fun containsKey!2080 (List!51108 K!12353) Bool)

(assert (=> b!4590036 (= res!1918759 (not (containsKey!2080 (t!358102 newBucket!178) (_1!29081 (h!56927 newBucket!178)))))))

(declare-fun b!4590037 () Bool)

(assert (=> b!4590037 (= e!2862722 (noDuplicateKeys!1281 (t!358102 newBucket!178)))))

(assert (= (and d!1443933 (not res!1918758)) b!4590036))

(assert (= (and b!4590036 res!1918759) b!4590037))

(declare-fun m!5413355 () Bool)

(assert (=> b!4590036 m!5413355))

(declare-fun m!5413357 () Bool)

(assert (=> b!4590037 m!5413357))

(assert (=> b!4589957 d!1443933))

(declare-fun d!1443935 () Bool)

(declare-fun hash!3152 (Hashable!5680 K!12353) (_ BitVec 64))

(assert (=> d!1443935 (= (hash!3150 hashF!1107 key!3287) (hash!3152 hashF!1107 key!3287))))

(declare-fun bs!1007842 () Bool)

(assert (= bs!1007842 d!1443935))

(declare-fun m!5413359 () Bool)

(assert (=> bs!1007842 m!5413359))

(assert (=> b!4589958 d!1443935))

(declare-fun d!1443937 () Bool)

(declare-fun res!1918764 () Bool)

(declare-fun e!2862731 () Bool)

(assert (=> d!1443937 (=> res!1918764 e!2862731)))

(assert (=> d!1443937 (= res!1918764 (is-Nil!50985 (toList!4577 lm!1477)))))

(assert (=> d!1443937 (= (forall!10527 (toList!4577 lm!1477) lambda!184596) e!2862731)))

(declare-fun b!4590050 () Bool)

(declare-fun e!2862732 () Bool)

(assert (=> b!4590050 (= e!2862731 e!2862732)))

(declare-fun res!1918765 () Bool)

(assert (=> b!4590050 (=> (not res!1918765) (not e!2862732))))

(declare-fun dynLambda!21357 (Int tuple2!51576) Bool)

(assert (=> b!4590050 (= res!1918765 (dynLambda!21357 lambda!184596 (h!56928 (toList!4577 lm!1477))))))

(declare-fun b!4590051 () Bool)

(assert (=> b!4590051 (= e!2862732 (forall!10527 (t!358103 (toList!4577 lm!1477)) lambda!184596))))

(assert (= (and d!1443937 (not res!1918764)) b!4590050))

(assert (= (and b!4590050 res!1918765) b!4590051))

(declare-fun b_lambda!168401 () Bool)

(assert (=> (not b_lambda!168401) (not b!4590050)))

(declare-fun m!5413361 () Bool)

(assert (=> b!4590050 m!5413361))

(declare-fun m!5413363 () Bool)

(assert (=> b!4590051 m!5413363))

(assert (=> start!457078 d!1443937))

(declare-fun d!1443939 () Bool)

(declare-fun isStrictlySorted!519 (List!51109) Bool)

(assert (=> d!1443939 (= (inv!66538 lm!1477) (isStrictlySorted!519 (toList!4577 lm!1477)))))

(declare-fun bs!1007843 () Bool)

(assert (= bs!1007843 d!1443939))

(declare-fun m!5413365 () Bool)

(assert (=> bs!1007843 m!5413365))

(assert (=> start!457078 d!1443939))

(declare-fun d!1443941 () Bool)

(declare-fun lt!1752694 () List!51108)

(assert (=> d!1443941 (not (containsKey!2080 lt!1752694 key!3287))))

(declare-fun e!2862745 () List!51108)

(assert (=> d!1443941 (= lt!1752694 e!2862745)))

(declare-fun c!786095 () Bool)

(assert (=> d!1443941 (= c!786095 (and (is-Cons!50984 lt!1752626) (= (_1!29081 (h!56927 lt!1752626)) key!3287)))))

(assert (=> d!1443941 (noDuplicateKeys!1281 lt!1752626)))

(assert (=> d!1443941 (= (removePairForKey!906 lt!1752626 key!3287) lt!1752694)))

(declare-fun b!4590071 () Bool)

(declare-fun e!2862746 () List!51108)

(assert (=> b!4590071 (= e!2862745 e!2862746)))

(declare-fun c!786094 () Bool)

(assert (=> b!4590071 (= c!786094 (is-Cons!50984 lt!1752626))))

(declare-fun b!4590070 () Bool)

(assert (=> b!4590070 (= e!2862745 (t!358102 lt!1752626))))

(declare-fun b!4590073 () Bool)

(assert (=> b!4590073 (= e!2862746 Nil!50984)))

(declare-fun b!4590072 () Bool)

(assert (=> b!4590072 (= e!2862746 (Cons!50984 (h!56927 lt!1752626) (removePairForKey!906 (t!358102 lt!1752626) key!3287)))))

(assert (= (and d!1443941 c!786095) b!4590070))

(assert (= (and d!1443941 (not c!786095)) b!4590071))

(assert (= (and b!4590071 c!786094) b!4590072))

(assert (= (and b!4590071 (not c!786094)) b!4590073))

(declare-fun m!5413367 () Bool)

(assert (=> d!1443941 m!5413367))

(declare-fun m!5413369 () Bool)

(assert (=> d!1443941 m!5413369))

(declare-fun m!5413371 () Bool)

(assert (=> b!4590072 m!5413371))

(assert (=> b!4589963 d!1443941))

(declare-fun bs!1007844 () Bool)

(declare-fun d!1443943 () Bool)

(assert (= bs!1007844 (and d!1443943 start!457078)))

(declare-fun lambda!184613 () Int)

(assert (=> bs!1007844 (= lambda!184613 lambda!184596)))

(declare-fun bs!1007845 () Bool)

(assert (= bs!1007845 (and d!1443943 d!1443929)))

(assert (=> bs!1007845 (= lambda!184613 lambda!184607)))

(declare-fun bs!1007846 () Bool)

(assert (= bs!1007846 (and d!1443943 d!1443931)))

(assert (=> bs!1007846 (not (= lambda!184613 lambda!184610))))

(assert (=> d!1443943 (contains!13891 lm!1477 (hash!3150 hashF!1107 key!3287))))

(declare-fun lt!1752697 () Unit!107378)

(declare-fun choose!30631 (ListLongMap!3209 K!12353 Hashable!5680) Unit!107378)

(assert (=> d!1443943 (= lt!1752697 (choose!30631 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1443943 (forall!10527 (toList!4577 lm!1477) lambda!184613)))

(assert (=> d!1443943 (= (lemmaInGenMapThenLongMapContainsHash!355 lm!1477 key!3287 hashF!1107) lt!1752697)))

(declare-fun bs!1007847 () Bool)

(assert (= bs!1007847 d!1443943))

(assert (=> bs!1007847 m!5413289))

(assert (=> bs!1007847 m!5413289))

(declare-fun m!5413373 () Bool)

(assert (=> bs!1007847 m!5413373))

(declare-fun m!5413375 () Bool)

(assert (=> bs!1007847 m!5413375))

(declare-fun m!5413377 () Bool)

(assert (=> bs!1007847 m!5413377))

(assert (=> b!4589963 d!1443943))

(declare-fun d!1443945 () Bool)

(declare-fun lt!1752708 () Bool)

(declare-fun content!8603 (List!51109) (Set tuple2!51576))

(assert (=> d!1443945 (= lt!1752708 (set.member lt!1752627 (content!8603 (toList!4577 lm!1477))))))

(declare-fun e!2862758 () Bool)

(assert (=> d!1443945 (= lt!1752708 e!2862758)))

(declare-fun res!1918779 () Bool)

(assert (=> d!1443945 (=> (not res!1918779) (not e!2862758))))

(assert (=> d!1443945 (= res!1918779 (is-Cons!50985 (toList!4577 lm!1477)))))

(assert (=> d!1443945 (= (contains!13890 (toList!4577 lm!1477) lt!1752627) lt!1752708)))

(declare-fun b!4590087 () Bool)

(declare-fun e!2862757 () Bool)

(assert (=> b!4590087 (= e!2862758 e!2862757)))

(declare-fun res!1918780 () Bool)

(assert (=> b!4590087 (=> res!1918780 e!2862757)))

(assert (=> b!4590087 (= res!1918780 (= (h!56928 (toList!4577 lm!1477)) lt!1752627))))

(declare-fun b!4590088 () Bool)

(assert (=> b!4590088 (= e!2862757 (contains!13890 (t!358103 (toList!4577 lm!1477)) lt!1752627))))

(assert (= (and d!1443945 res!1918779) b!4590087))

(assert (= (and b!4590087 (not res!1918780)) b!4590088))

(declare-fun m!5413399 () Bool)

(assert (=> d!1443945 m!5413399))

(declare-fun m!5413401 () Bool)

(assert (=> d!1443945 m!5413401))

(declare-fun m!5413403 () Bool)

(assert (=> b!4590088 m!5413403))

(assert (=> b!4589963 d!1443945))

(declare-fun d!1443949 () Bool)

(declare-datatypes ((Option!11349 0))(
  ( (None!11348) (Some!11348 (v!45252 List!51108)) )
))
(declare-fun get!16840 (Option!11349) List!51108)

(declare-fun getValueByKey!1269 (List!51109 (_ BitVec 64)) Option!11349)

(assert (=> d!1443949 (= (apply!12018 lm!1477 hash!344) (get!16840 (getValueByKey!1269 (toList!4577 lm!1477) hash!344)))))

(declare-fun bs!1007848 () Bool)

(assert (= bs!1007848 d!1443949))

(declare-fun m!5413405 () Bool)

(assert (=> bs!1007848 m!5413405))

(assert (=> bs!1007848 m!5413405))

(declare-fun m!5413407 () Bool)

(assert (=> bs!1007848 m!5413407))

(assert (=> b!4589963 d!1443949))

(declare-fun d!1443951 () Bool)

(assert (=> d!1443951 (dynLambda!21357 lambda!184596 lt!1752627)))

(declare-fun lt!1752711 () Unit!107378)

(declare-fun choose!30632 (List!51109 Int tuple2!51576) Unit!107378)

(assert (=> d!1443951 (= lt!1752711 (choose!30632 (toList!4577 lm!1477) lambda!184596 lt!1752627))))

(declare-fun e!2862761 () Bool)

(assert (=> d!1443951 e!2862761))

(declare-fun res!1918783 () Bool)

(assert (=> d!1443951 (=> (not res!1918783) (not e!2862761))))

(assert (=> d!1443951 (= res!1918783 (forall!10527 (toList!4577 lm!1477) lambda!184596))))

(assert (=> d!1443951 (= (forallContained!2786 (toList!4577 lm!1477) lambda!184596 lt!1752627) lt!1752711)))

(declare-fun b!4590091 () Bool)

(assert (=> b!4590091 (= e!2862761 (contains!13890 (toList!4577 lm!1477) lt!1752627))))

(assert (= (and d!1443951 res!1918783) b!4590091))

(declare-fun b_lambda!168403 () Bool)

(assert (=> (not b_lambda!168403) (not d!1443951)))

(declare-fun m!5413409 () Bool)

(assert (=> d!1443951 m!5413409))

(declare-fun m!5413411 () Bool)

(assert (=> d!1443951 m!5413411))

(assert (=> d!1443951 m!5413263))

(assert (=> b!4590091 m!5413273))

(assert (=> b!4589963 d!1443951))

(declare-fun d!1443953 () Bool)

(declare-fun e!2862766 () Bool)

(assert (=> d!1443953 e!2862766))

(declare-fun res!1918786 () Bool)

(assert (=> d!1443953 (=> res!1918786 e!2862766)))

(declare-fun lt!1752721 () Bool)

(assert (=> d!1443953 (= res!1918786 (not lt!1752721))))

(declare-fun lt!1752722 () Bool)

(assert (=> d!1443953 (= lt!1752721 lt!1752722)))

(declare-fun lt!1752723 () Unit!107378)

(declare-fun e!2862767 () Unit!107378)

(assert (=> d!1443953 (= lt!1752723 e!2862767)))

(declare-fun c!786101 () Bool)

(assert (=> d!1443953 (= c!786101 lt!1752722)))

(declare-fun containsKey!2081 (List!51109 (_ BitVec 64)) Bool)

(assert (=> d!1443953 (= lt!1752722 (containsKey!2081 (toList!4577 lm!1477) lt!1752630))))

(assert (=> d!1443953 (= (contains!13891 lm!1477 lt!1752630) lt!1752721)))

(declare-fun b!4590098 () Bool)

(declare-fun lt!1752720 () Unit!107378)

(assert (=> b!4590098 (= e!2862767 lt!1752720)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1173 (List!51109 (_ BitVec 64)) Unit!107378)

(assert (=> b!4590098 (= lt!1752720 (lemmaContainsKeyImpliesGetValueByKeyDefined!1173 (toList!4577 lm!1477) lt!1752630))))

(declare-fun isDefined!8617 (Option!11349) Bool)

(assert (=> b!4590098 (isDefined!8617 (getValueByKey!1269 (toList!4577 lm!1477) lt!1752630))))

(declare-fun b!4590099 () Bool)

(declare-fun Unit!107384 () Unit!107378)

(assert (=> b!4590099 (= e!2862767 Unit!107384)))

(declare-fun b!4590100 () Bool)

(assert (=> b!4590100 (= e!2862766 (isDefined!8617 (getValueByKey!1269 (toList!4577 lm!1477) lt!1752630)))))

(assert (= (and d!1443953 c!786101) b!4590098))

(assert (= (and d!1443953 (not c!786101)) b!4590099))

(assert (= (and d!1443953 (not res!1918786)) b!4590100))

(declare-fun m!5413413 () Bool)

(assert (=> d!1443953 m!5413413))

(declare-fun m!5413415 () Bool)

(assert (=> b!4590098 m!5413415))

(declare-fun m!5413417 () Bool)

(assert (=> b!4590098 m!5413417))

(assert (=> b!4590098 m!5413417))

(declare-fun m!5413419 () Bool)

(assert (=> b!4590098 m!5413419))

(assert (=> b!4590100 m!5413417))

(assert (=> b!4590100 m!5413417))

(assert (=> b!4590100 m!5413419))

(assert (=> b!4589963 d!1443953))

(declare-fun d!1443955 () Bool)

(assert (=> d!1443955 (contains!13890 (toList!4577 lm!1477) (tuple2!51577 hash!344 lt!1752626))))

(declare-fun lt!1752726 () Unit!107378)

(declare-fun choose!30633 (List!51109 (_ BitVec 64) List!51108) Unit!107378)

(assert (=> d!1443955 (= lt!1752726 (choose!30633 (toList!4577 lm!1477) hash!344 lt!1752626))))

(declare-fun e!2862770 () Bool)

(assert (=> d!1443955 e!2862770))

(declare-fun res!1918789 () Bool)

(assert (=> d!1443955 (=> (not res!1918789) (not e!2862770))))

(assert (=> d!1443955 (= res!1918789 (isStrictlySorted!519 (toList!4577 lm!1477)))))

(assert (=> d!1443955 (= (lemmaGetValueByKeyImpliesContainsTuple!791 (toList!4577 lm!1477) hash!344 lt!1752626) lt!1752726)))

(declare-fun b!4590103 () Bool)

(assert (=> b!4590103 (= e!2862770 (= (getValueByKey!1269 (toList!4577 lm!1477) hash!344) (Some!11348 lt!1752626)))))

(assert (= (and d!1443955 res!1918789) b!4590103))

(declare-fun m!5413421 () Bool)

(assert (=> d!1443955 m!5413421))

(declare-fun m!5413423 () Bool)

(assert (=> d!1443955 m!5413423))

(assert (=> d!1443955 m!5413365))

(assert (=> b!4590103 m!5413405))

(assert (=> b!4589963 d!1443955))

(declare-fun d!1443957 () Bool)

(declare-fun lt!1752729 () Int)

(assert (=> d!1443957 (>= lt!1752729 0)))

(declare-fun e!2862773 () Int)

(assert (=> d!1443957 (= lt!1752729 e!2862773)))

(declare-fun c!786104 () Bool)

(assert (=> d!1443957 (= c!786104 (is-Nil!50985 (toList!4577 lm!1477)))))

(assert (=> d!1443957 (= (size!35955 (toList!4577 lm!1477)) lt!1752729)))

(declare-fun b!4590108 () Bool)

(assert (=> b!4590108 (= e!2862773 0)))

(declare-fun b!4590109 () Bool)

(assert (=> b!4590109 (= e!2862773 (+ 1 (size!35955 (t!358103 (toList!4577 lm!1477)))))))

(assert (= (and d!1443957 c!786104) b!4590108))

(assert (= (and d!1443957 (not c!786104)) b!4590109))

(declare-fun m!5413425 () Bool)

(assert (=> b!4590109 m!5413425))

(assert (=> b!4589959 d!1443957))

(declare-fun b!4590114 () Bool)

(declare-fun e!2862776 () Bool)

(declare-fun tp!1339942 () Bool)

(declare-fun tp!1339943 () Bool)

(assert (=> b!4590114 (= e!2862776 (and tp!1339942 tp!1339943))))

(assert (=> b!4589962 (= tp!1339931 e!2862776)))

(assert (= (and b!4589962 (is-Cons!50985 (toList!4577 lm!1477))) b!4590114))

(declare-fun e!2862779 () Bool)

(declare-fun b!4590119 () Bool)

(declare-fun tp!1339946 () Bool)

(assert (=> b!4590119 (= e!2862779 (and tp_is_empty!28417 tp_is_empty!28419 tp!1339946))))

(assert (=> b!4589964 (= tp!1339930 e!2862779)))

(assert (= (and b!4589964 (is-Cons!50984 (t!358102 newBucket!178))) b!4590119))

(declare-fun b_lambda!168405 () Bool)

(assert (= b_lambda!168403 (or start!457078 b_lambda!168405)))

(declare-fun bs!1007849 () Bool)

(declare-fun d!1443959 () Bool)

(assert (= bs!1007849 (and d!1443959 start!457078)))

(assert (=> bs!1007849 (= (dynLambda!21357 lambda!184596 lt!1752627) (noDuplicateKeys!1281 (_2!29082 lt!1752627)))))

(declare-fun m!5413427 () Bool)

(assert (=> bs!1007849 m!5413427))

(assert (=> d!1443951 d!1443959))

(declare-fun b_lambda!168407 () Bool)

(assert (= b_lambda!168401 (or start!457078 b_lambda!168407)))

(declare-fun bs!1007850 () Bool)

(declare-fun d!1443961 () Bool)

(assert (= bs!1007850 (and d!1443961 start!457078)))

(assert (=> bs!1007850 (= (dynLambda!21357 lambda!184596 (h!56928 (toList!4577 lm!1477))) (noDuplicateKeys!1281 (_2!29082 (h!56928 (toList!4577 lm!1477)))))))

(declare-fun m!5413429 () Bool)

(assert (=> bs!1007850 m!5413429))

(assert (=> b!4590050 d!1443961))

(push 1)

(assert (not b!4590019))

(assert (not b!4590037))

(assert (not b!4590051))

(assert (not d!1443943))

(assert (not b!4590100))

(assert (not d!1443955))

(assert (not d!1443931))

(assert (not d!1443941))

(assert (not d!1443939))

(assert (not d!1443923))

(assert (not bm!320517))

(assert (not d!1443925))

(assert tp_is_empty!28419)

(assert (not b!4590015))

(assert (not b!4590021))

(assert (not b!4590109))

(assert (not b!4590022))

(assert (not b!4590114))

(assert (not b_lambda!168407))

(assert (not d!1443929))

(assert (not bs!1007849))

(assert (not b!4590088))

(assert (not d!1443945))

(assert tp_is_empty!28417)

(assert (not b!4590098))

(assert (not d!1443935))

(assert (not b!4590023))

(assert (not b!4590020))

(assert (not b!4590119))

(assert (not b!4590036))

(assert (not b!4590103))

(assert (not b_lambda!168405))

(assert (not b!4590072))

(assert (not b!4590091))

(assert (not bs!1007850))

(assert (not d!1443953))

(assert (not d!1443949))

(assert (not b!4590018))

(assert (not b!4590028))

(assert (not d!1443951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

