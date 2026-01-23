; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!451626 () Bool)

(assert start!451626)

(declare-fun b!4546137 () Bool)

(declare-datatypes ((Unit!99525 0))(
  ( (Unit!99526) )
))
(declare-fun e!2833157 () Unit!99525)

(declare-fun Unit!99527 () Unit!99525)

(assert (=> b!4546137 (= e!2833157 Unit!99527)))

(declare-datatypes ((Hashable!5616 0))(
  ( (HashableExt!5615 (__x!31319 Int)) )
))
(declare-fun hashF!1107 () Hashable!5616)

(declare-datatypes ((K!12193 0))(
  ( (K!12194 (val!18025 Int)) )
))
(declare-datatypes ((V!12439 0))(
  ( (V!12440 (val!18026 Int)) )
))
(declare-datatypes ((tuple2!51318 0))(
  ( (tuple2!51319 (_1!28953 K!12193) (_2!28953 V!12439)) )
))
(declare-datatypes ((List!50931 0))(
  ( (Nil!50807) (Cons!50807 (h!56700 tuple2!51318) (t!357897 List!50931)) )
))
(declare-datatypes ((tuple2!51320 0))(
  ( (tuple2!51321 (_1!28954 (_ BitVec 64)) (_2!28954 List!50931)) )
))
(declare-datatypes ((List!50932 0))(
  ( (Nil!50808) (Cons!50808 (h!56701 tuple2!51320) (t!357898 List!50932)) )
))
(declare-datatypes ((ListLongMap!3081 0))(
  ( (ListLongMap!3082 (toList!4449 List!50932)) )
))
(declare-fun lm!1477 () ListLongMap!3081)

(declare-fun lt!1720036 () Unit!99525)

(declare-fun key!3287 () K!12193)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!209 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> b!4546137 (= lt!1720036 (lemmaNotInItsHashBucketThenNotInMap!209 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4546137 false))

(declare-fun res!1895566 () Bool)

(declare-fun e!2833159 () Bool)

(assert (=> start!451626 (=> (not res!1895566) (not e!2833159))))

(declare-fun lambda!177318 () Int)

(declare-fun forall!10382 (List!50932 Int) Bool)

(assert (=> start!451626 (= res!1895566 (forall!10382 (toList!4449 lm!1477) lambda!177318))))

(assert (=> start!451626 e!2833159))

(assert (=> start!451626 true))

(declare-fun e!2833158 () Bool)

(declare-fun inv!66378 (ListLongMap!3081) Bool)

(assert (=> start!451626 (and (inv!66378 lm!1477) e!2833158)))

(declare-fun tp_is_empty!28161 () Bool)

(assert (=> start!451626 tp_is_empty!28161))

(declare-fun e!2833160 () Bool)

(assert (=> start!451626 e!2833160))

(declare-fun b!4546138 () Bool)

(declare-fun e!2833152 () Bool)

(declare-fun e!2833153 () Bool)

(assert (=> b!4546138 (= e!2833152 e!2833153)))

(declare-fun res!1895565 () Bool)

(assert (=> b!4546138 (=> res!1895565 e!2833153)))

(declare-fun lt!1720041 () ListLongMap!3081)

(declare-fun tail!7823 (List!50932) List!50932)

(assert (=> b!4546138 (= res!1895565 (not (= (t!357898 (toList!4449 lm!1477)) (tail!7823 (toList!4449 lt!1720041)))))))

(declare-fun lt!1720038 () tuple2!51320)

(declare-fun +!1631 (ListLongMap!3081 tuple2!51320) ListLongMap!3081)

(assert (=> b!4546138 (= lt!1720041 (+!1631 lm!1477 lt!1720038))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((ListMap!3711 0))(
  ( (ListMap!3712 (toList!4450 List!50931)) )
))
(declare-fun eq!672 (ListMap!3711 ListMap!3711) Bool)

(declare-fun extractMap!1277 (List!50932) ListMap!3711)

(declare-fun -!441 (ListMap!3711 K!12193) ListMap!3711)

(assert (=> b!4546138 (eq!672 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)) (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))))

(declare-fun newBucket!178 () List!50931)

(assert (=> b!4546138 (= lt!1720038 (tuple2!51321 hash!344 newBucket!178))))

(declare-fun lt!1720033 () Unit!99525)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!61 ((_ BitVec 64) List!50931 List!50931 K!12193 Hashable!5616) Unit!99525)

(assert (=> b!4546138 (= lt!1720033 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!61 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1720035 () List!50932)

(declare-fun contains!13631 (ListMap!3711 K!12193) Bool)

(assert (=> b!4546138 (contains!13631 (extractMap!1277 lt!1720035) key!3287)))

(declare-fun lt!1720039 () Unit!99525)

(declare-fun lemmaListContainsThenExtractedMapContains!187 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> b!4546138 (= lt!1720039 (lemmaListContainsThenExtractedMapContains!187 (ListLongMap!3082 lt!1720035) key!3287 hashF!1107))))

(declare-fun b!4546139 () Bool)

(declare-fun res!1895570 () Bool)

(declare-fun e!2833154 () Bool)

(assert (=> b!4546139 (=> (not res!1895570) (not e!2833154))))

(declare-fun allKeysSameHash!1075 (List!50931 (_ BitVec 64) Hashable!5616) Bool)

(assert (=> b!4546139 (= res!1895570 (allKeysSameHash!1075 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4546140 () Bool)

(declare-fun Unit!99528 () Unit!99525)

(assert (=> b!4546140 (= e!2833157 Unit!99528)))

(declare-fun b!4546141 () Bool)

(declare-fun e!2833156 () Bool)

(assert (=> b!4546141 (= e!2833154 (not e!2833156))))

(declare-fun res!1895564 () Bool)

(assert (=> b!4546141 (=> res!1895564 e!2833156)))

(declare-fun lt!1720030 () List!50931)

(declare-fun removePairForKey!848 (List!50931 K!12193) List!50931)

(assert (=> b!4546141 (= res!1895564 (not (= newBucket!178 (removePairForKey!848 lt!1720030 key!3287))))))

(declare-fun lt!1720040 () Unit!99525)

(declare-fun lt!1720034 () tuple2!51320)

(declare-fun forallContained!2646 (List!50932 Int tuple2!51320) Unit!99525)

(assert (=> b!4546141 (= lt!1720040 (forallContained!2646 (toList!4449 lm!1477) lambda!177318 lt!1720034))))

(declare-fun contains!13632 (List!50932 tuple2!51320) Bool)

(assert (=> b!4546141 (contains!13632 (toList!4449 lm!1477) lt!1720034)))

(assert (=> b!4546141 (= lt!1720034 (tuple2!51321 hash!344 lt!1720030))))

(declare-fun lt!1720042 () Unit!99525)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!733 (List!50932 (_ BitVec 64) List!50931) Unit!99525)

(assert (=> b!4546141 (= lt!1720042 (lemmaGetValueByKeyImpliesContainsTuple!733 (toList!4449 lm!1477) hash!344 lt!1720030))))

(declare-fun apply!11958 (ListLongMap!3081 (_ BitVec 64)) List!50931)

(assert (=> b!4546141 (= lt!1720030 (apply!11958 lm!1477 hash!344))))

(declare-fun lt!1720032 () (_ BitVec 64))

(declare-fun contains!13633 (ListLongMap!3081 (_ BitVec 64)) Bool)

(assert (=> b!4546141 (contains!13633 lm!1477 lt!1720032)))

(declare-fun lt!1720037 () Unit!99525)

(declare-fun lemmaInGenMapThenLongMapContainsHash!295 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> b!4546141 (= lt!1720037 (lemmaInGenMapThenLongMapContainsHash!295 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4546142 () Bool)

(declare-fun e!2833155 () Bool)

(assert (=> b!4546142 (= e!2833156 e!2833155)))

(declare-fun res!1895561 () Bool)

(assert (=> b!4546142 (=> res!1895561 e!2833155)))

(declare-fun lt!1720031 () Bool)

(assert (=> b!4546142 (= res!1895561 lt!1720031)))

(declare-fun lt!1720029 () Unit!99525)

(assert (=> b!4546142 (= lt!1720029 e!2833157)))

(declare-fun c!776546 () Bool)

(assert (=> b!4546142 (= c!776546 lt!1720031)))

(declare-fun containsKey!1920 (List!50931 K!12193) Bool)

(assert (=> b!4546142 (= lt!1720031 (not (containsKey!1920 (_2!28954 (h!56701 (toList!4449 lm!1477))) key!3287)))))

(declare-fun b!4546143 () Bool)

(assert (=> b!4546143 (= e!2833159 e!2833154)))

(declare-fun res!1895571 () Bool)

(assert (=> b!4546143 (=> (not res!1895571) (not e!2833154))))

(assert (=> b!4546143 (= res!1895571 (= lt!1720032 hash!344))))

(declare-fun hash!2963 (Hashable!5616 K!12193) (_ BitVec 64))

(assert (=> b!4546143 (= lt!1720032 (hash!2963 hashF!1107 key!3287))))

(declare-fun b!4546144 () Bool)

(declare-fun res!1895569 () Bool)

(assert (=> b!4546144 (=> (not res!1895569) (not e!2833159))))

(assert (=> b!4546144 (= res!1895569 (contains!13631 (extractMap!1277 (toList!4449 lm!1477)) key!3287))))

(declare-fun b!4546145 () Bool)

(declare-fun tail!7824 (ListLongMap!3081) ListLongMap!3081)

(assert (=> b!4546145 (= e!2833153 (= lt!1720041 (+!1631 (tail!7824 lm!1477) lt!1720038)))))

(declare-fun b!4546146 () Bool)

(assert (=> b!4546146 (= e!2833155 e!2833152)))

(declare-fun res!1895563 () Bool)

(assert (=> b!4546146 (=> res!1895563 e!2833152)))

(declare-fun containsKeyBiggerList!199 (List!50932 K!12193) Bool)

(assert (=> b!4546146 (= res!1895563 (not (containsKeyBiggerList!199 lt!1720035 key!3287)))))

(assert (=> b!4546146 (= lt!1720035 (Cons!50808 (h!56701 (toList!4449 lm!1477)) Nil!50808))))

(declare-fun b!4546147 () Bool)

(declare-fun res!1895568 () Bool)

(assert (=> b!4546147 (=> res!1895568 e!2833156)))

(declare-fun noDuplicateKeys!1221 (List!50931) Bool)

(assert (=> b!4546147 (= res!1895568 (not (noDuplicateKeys!1221 newBucket!178)))))

(declare-fun tp_is_empty!28163 () Bool)

(declare-fun tp!1338889 () Bool)

(declare-fun b!4546148 () Bool)

(assert (=> b!4546148 (= e!2833160 (and tp_is_empty!28161 tp_is_empty!28163 tp!1338889))))

(declare-fun b!4546149 () Bool)

(declare-fun res!1895562 () Bool)

(assert (=> b!4546149 (=> (not res!1895562) (not e!2833159))))

(declare-fun allKeysSameHashInMap!1328 (ListLongMap!3081 Hashable!5616) Bool)

(assert (=> b!4546149 (= res!1895562 (allKeysSameHashInMap!1328 lm!1477 hashF!1107))))

(declare-fun b!4546150 () Bool)

(declare-fun res!1895567 () Bool)

(assert (=> b!4546150 (=> res!1895567 e!2833156)))

(assert (=> b!4546150 (= res!1895567 (or (is-Nil!50808 (toList!4449 lm!1477)) (not (= (_1!28954 (h!56701 (toList!4449 lm!1477))) hash!344))))))

(declare-fun b!4546151 () Bool)

(declare-fun tp!1338888 () Bool)

(assert (=> b!4546151 (= e!2833158 tp!1338888)))

(assert (= (and start!451626 res!1895566) b!4546149))

(assert (= (and b!4546149 res!1895562) b!4546144))

(assert (= (and b!4546144 res!1895569) b!4546143))

(assert (= (and b!4546143 res!1895571) b!4546139))

(assert (= (and b!4546139 res!1895570) b!4546141))

(assert (= (and b!4546141 (not res!1895564)) b!4546147))

(assert (= (and b!4546147 (not res!1895568)) b!4546150))

(assert (= (and b!4546150 (not res!1895567)) b!4546142))

(assert (= (and b!4546142 c!776546) b!4546137))

(assert (= (and b!4546142 (not c!776546)) b!4546140))

(assert (= (and b!4546142 (not res!1895561)) b!4546146))

(assert (= (and b!4546146 (not res!1895563)) b!4546138))

(assert (= (and b!4546138 (not res!1895565)) b!4546145))

(assert (= start!451626 b!4546151))

(assert (= (and start!451626 (is-Cons!50807 newBucket!178)) b!4546148))

(declare-fun m!5318019 () Bool)

(assert (=> start!451626 m!5318019))

(declare-fun m!5318021 () Bool)

(assert (=> start!451626 m!5318021))

(declare-fun m!5318023 () Bool)

(assert (=> b!4546149 m!5318023))

(declare-fun m!5318025 () Bool)

(assert (=> b!4546142 m!5318025))

(declare-fun m!5318027 () Bool)

(assert (=> b!4546145 m!5318027))

(assert (=> b!4546145 m!5318027))

(declare-fun m!5318029 () Bool)

(assert (=> b!4546145 m!5318029))

(declare-fun m!5318031 () Bool)

(assert (=> b!4546144 m!5318031))

(assert (=> b!4546144 m!5318031))

(declare-fun m!5318033 () Bool)

(assert (=> b!4546144 m!5318033))

(declare-fun m!5318035 () Bool)

(assert (=> b!4546138 m!5318035))

(declare-fun m!5318037 () Bool)

(assert (=> b!4546138 m!5318037))

(declare-fun m!5318039 () Bool)

(assert (=> b!4546138 m!5318039))

(declare-fun m!5318041 () Bool)

(assert (=> b!4546138 m!5318041))

(assert (=> b!4546138 m!5318037))

(declare-fun m!5318043 () Bool)

(assert (=> b!4546138 m!5318043))

(declare-fun m!5318045 () Bool)

(assert (=> b!4546138 m!5318045))

(declare-fun m!5318047 () Bool)

(assert (=> b!4546138 m!5318047))

(declare-fun m!5318049 () Bool)

(assert (=> b!4546138 m!5318049))

(declare-fun m!5318051 () Bool)

(assert (=> b!4546138 m!5318051))

(assert (=> b!4546138 m!5318049))

(assert (=> b!4546138 m!5318043))

(assert (=> b!4546138 m!5318051))

(declare-fun m!5318053 () Bool)

(assert (=> b!4546138 m!5318053))

(declare-fun m!5318055 () Bool)

(assert (=> b!4546139 m!5318055))

(declare-fun m!5318057 () Bool)

(assert (=> b!4546137 m!5318057))

(declare-fun m!5318059 () Bool)

(assert (=> b!4546146 m!5318059))

(declare-fun m!5318061 () Bool)

(assert (=> b!4546141 m!5318061))

(declare-fun m!5318063 () Bool)

(assert (=> b!4546141 m!5318063))

(declare-fun m!5318065 () Bool)

(assert (=> b!4546141 m!5318065))

(declare-fun m!5318067 () Bool)

(assert (=> b!4546141 m!5318067))

(declare-fun m!5318069 () Bool)

(assert (=> b!4546141 m!5318069))

(declare-fun m!5318071 () Bool)

(assert (=> b!4546141 m!5318071))

(declare-fun m!5318073 () Bool)

(assert (=> b!4546141 m!5318073))

(declare-fun m!5318075 () Bool)

(assert (=> b!4546143 m!5318075))

(declare-fun m!5318077 () Bool)

(assert (=> b!4546147 m!5318077))

(push 1)

(assert (not b!4546143))

(assert (not b!4546148))

(assert (not b!4546142))

(assert (not b!4546138))

(assert (not b!4546144))

(assert (not b!4546145))

(assert tp_is_empty!28161)

(assert (not b!4546141))

(assert (not b!4546146))

(assert (not b!4546139))

(assert (not b!4546147))

(assert tp_is_empty!28163)

(assert (not b!4546149))

(assert (not b!4546137))

(assert (not b!4546151))

(assert (not start!451626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1406661 () Bool)

(declare-fun e!2833190 () Bool)

(assert (=> d!1406661 e!2833190))

(declare-fun res!1895609 () Bool)

(assert (=> d!1406661 (=> (not res!1895609) (not e!2833190))))

(declare-fun lt!1720095 () ListLongMap!3081)

(assert (=> d!1406661 (= res!1895609 (contains!13633 lt!1720095 (_1!28954 lt!1720038)))))

(declare-fun lt!1720094 () List!50932)

(assert (=> d!1406661 (= lt!1720095 (ListLongMap!3082 lt!1720094))))

(declare-fun lt!1720096 () Unit!99525)

(declare-fun lt!1720093 () Unit!99525)

(assert (=> d!1406661 (= lt!1720096 lt!1720093)))

(declare-datatypes ((Option!11237 0))(
  ( (None!11236) (Some!11236 (v!44968 List!50931)) )
))
(declare-fun getValueByKey!1169 (List!50932 (_ BitVec 64)) Option!11237)

(assert (=> d!1406661 (= (getValueByKey!1169 lt!1720094 (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038)))))

(declare-fun lemmaContainsTupThenGetReturnValue!733 (List!50932 (_ BitVec 64) List!50931) Unit!99525)

(assert (=> d!1406661 (= lt!1720093 (lemmaContainsTupThenGetReturnValue!733 lt!1720094 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(declare-fun insertStrictlySorted!445 (List!50932 (_ BitVec 64) List!50931) List!50932)

(assert (=> d!1406661 (= lt!1720094 (insertStrictlySorted!445 (toList!4449 (tail!7824 lm!1477)) (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(assert (=> d!1406661 (= (+!1631 (tail!7824 lm!1477) lt!1720038) lt!1720095)))

(declare-fun b!4546201 () Bool)

(declare-fun res!1895610 () Bool)

(assert (=> b!4546201 (=> (not res!1895610) (not e!2833190))))

(assert (=> b!4546201 (= res!1895610 (= (getValueByKey!1169 (toList!4449 lt!1720095) (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038))))))

(declare-fun b!4546202 () Bool)

(assert (=> b!4546202 (= e!2833190 (contains!13632 (toList!4449 lt!1720095) lt!1720038))))

(assert (= (and d!1406661 res!1895609) b!4546201))

(assert (= (and b!4546201 res!1895610) b!4546202))

(declare-fun m!5318139 () Bool)

(assert (=> d!1406661 m!5318139))

(declare-fun m!5318141 () Bool)

(assert (=> d!1406661 m!5318141))

(declare-fun m!5318143 () Bool)

(assert (=> d!1406661 m!5318143))

(declare-fun m!5318145 () Bool)

(assert (=> d!1406661 m!5318145))

(declare-fun m!5318147 () Bool)

(assert (=> b!4546201 m!5318147))

(declare-fun m!5318149 () Bool)

(assert (=> b!4546202 m!5318149))

(assert (=> b!4546145 d!1406661))

(declare-fun d!1406665 () Bool)

(assert (=> d!1406665 (= (tail!7824 lm!1477) (ListLongMap!3082 (tail!7823 (toList!4449 lm!1477))))))

(declare-fun bs!884668 () Bool)

(assert (= bs!884668 d!1406665))

(declare-fun m!5318151 () Bool)

(assert (=> bs!884668 m!5318151))

(assert (=> b!4546145 d!1406665))

(declare-fun d!1406667 () Bool)

(declare-fun e!2833226 () Bool)

(assert (=> d!1406667 e!2833226))

(declare-fun res!1895628 () Bool)

(assert (=> d!1406667 (=> res!1895628 e!2833226)))

(declare-fun e!2833222 () Bool)

(assert (=> d!1406667 (= res!1895628 e!2833222)))

(declare-fun res!1895630 () Bool)

(assert (=> d!1406667 (=> (not res!1895630) (not e!2833222))))

(declare-fun lt!1720129 () Bool)

(assert (=> d!1406667 (= res!1895630 (not lt!1720129))))

(declare-fun lt!1720131 () Bool)

(assert (=> d!1406667 (= lt!1720129 lt!1720131)))

(declare-fun lt!1720134 () Unit!99525)

(declare-fun e!2833223 () Unit!99525)

(assert (=> d!1406667 (= lt!1720134 e!2833223)))

(declare-fun c!776564 () Bool)

(assert (=> d!1406667 (= c!776564 lt!1720131)))

(declare-fun containsKey!1922 (List!50931 K!12193) Bool)

(assert (=> d!1406667 (= lt!1720131 (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> d!1406667 (= (contains!13631 (extractMap!1277 (toList!4449 lm!1477)) key!3287) lt!1720129)))

(declare-fun bm!316997 () Bool)

(declare-fun call!317002 () Bool)

(declare-datatypes ((List!50935 0))(
  ( (Nil!50811) (Cons!50811 (h!56706 K!12193) (t!357901 List!50935)) )
))
(declare-fun e!2833224 () List!50935)

(declare-fun contains!13637 (List!50935 K!12193) Bool)

(assert (=> bm!316997 (= call!317002 (contains!13637 e!2833224 key!3287))))

(declare-fun c!776566 () Bool)

(assert (=> bm!316997 (= c!776566 c!776564)))

(declare-fun b!4546248 () Bool)

(declare-fun e!2833227 () Unit!99525)

(assert (=> b!4546248 (= e!2833223 e!2833227)))

(declare-fun c!776565 () Bool)

(assert (=> b!4546248 (= c!776565 call!317002)))

(declare-fun b!4546249 () Bool)

(declare-fun e!2833225 () Bool)

(assert (=> b!4546249 (= e!2833226 e!2833225)))

(declare-fun res!1895629 () Bool)

(assert (=> b!4546249 (=> (not res!1895629) (not e!2833225))))

(declare-datatypes ((Option!11238 0))(
  ( (None!11237) (Some!11237 (v!44969 V!12439)) )
))
(declare-fun isDefined!8509 (Option!11238) Bool)

(declare-fun getValueByKey!1170 (List!50931 K!12193) Option!11238)

(assert (=> b!4546249 (= res!1895629 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287)))))

(declare-fun b!4546250 () Bool)

(declare-fun keys!17696 (ListMap!3711) List!50935)

(assert (=> b!4546250 (= e!2833222 (not (contains!13637 (keys!17696 (extractMap!1277 (toList!4449 lm!1477))) key!3287)))))

(declare-fun b!4546251 () Bool)

(declare-fun lt!1720132 () Unit!99525)

(assert (=> b!4546251 (= e!2833223 lt!1720132)))

(declare-fun lt!1720133 () Unit!99525)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (List!50931 K!12193) Unit!99525)

(assert (=> b!4546251 (= lt!1720133 (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> b!4546251 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(declare-fun lt!1720127 () Unit!99525)

(assert (=> b!4546251 (= lt!1720127 lt!1720133)))

(declare-fun lemmaInListThenGetKeysListContains!499 (List!50931 K!12193) Unit!99525)

(assert (=> b!4546251 (= lt!1720132 (lemmaInListThenGetKeysListContains!499 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> b!4546251 call!317002))

(declare-fun b!4546252 () Bool)

(assert (=> b!4546252 (= e!2833225 (contains!13637 (keys!17696 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(declare-fun b!4546253 () Bool)

(assert (=> b!4546253 (= e!2833224 (keys!17696 (extractMap!1277 (toList!4449 lm!1477))))))

(declare-fun b!4546254 () Bool)

(assert (=> b!4546254 false))

(declare-fun lt!1720130 () Unit!99525)

(declare-fun lt!1720128 () Unit!99525)

(assert (=> b!4546254 (= lt!1720130 lt!1720128)))

(assert (=> b!4546254 (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!502 (List!50931 K!12193) Unit!99525)

(assert (=> b!4546254 (= lt!1720128 (lemmaInGetKeysListThenContainsKey!502 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(declare-fun Unit!99533 () Unit!99525)

(assert (=> b!4546254 (= e!2833227 Unit!99533)))

(declare-fun b!4546255 () Bool)

(declare-fun Unit!99534 () Unit!99525)

(assert (=> b!4546255 (= e!2833227 Unit!99534)))

(declare-fun b!4546256 () Bool)

(declare-fun getKeysList!503 (List!50931) List!50935)

(assert (=> b!4546256 (= e!2833224 (getKeysList!503 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))

(assert (= (and d!1406667 c!776564) b!4546251))

(assert (= (and d!1406667 (not c!776564)) b!4546248))

(assert (= (and b!4546248 c!776565) b!4546254))

(assert (= (and b!4546248 (not c!776565)) b!4546255))

(assert (= (or b!4546251 b!4546248) bm!316997))

(assert (= (and bm!316997 c!776566) b!4546256))

(assert (= (and bm!316997 (not c!776566)) b!4546253))

(assert (= (and d!1406667 res!1895630) b!4546250))

(assert (= (and d!1406667 (not res!1895628)) b!4546249))

(assert (= (and b!4546249 res!1895629) b!4546252))

(declare-fun m!5318181 () Bool)

(assert (=> b!4546249 m!5318181))

(assert (=> b!4546249 m!5318181))

(declare-fun m!5318183 () Bool)

(assert (=> b!4546249 m!5318183))

(declare-fun m!5318185 () Bool)

(assert (=> d!1406667 m!5318185))

(assert (=> b!4546250 m!5318031))

(declare-fun m!5318187 () Bool)

(assert (=> b!4546250 m!5318187))

(assert (=> b!4546250 m!5318187))

(declare-fun m!5318189 () Bool)

(assert (=> b!4546250 m!5318189))

(assert (=> b!4546252 m!5318031))

(assert (=> b!4546252 m!5318187))

(assert (=> b!4546252 m!5318187))

(assert (=> b!4546252 m!5318189))

(assert (=> b!4546253 m!5318031))

(assert (=> b!4546253 m!5318187))

(assert (=> b!4546254 m!5318185))

(declare-fun m!5318191 () Bool)

(assert (=> b!4546254 m!5318191))

(declare-fun m!5318193 () Bool)

(assert (=> b!4546256 m!5318193))

(declare-fun m!5318195 () Bool)

(assert (=> b!4546251 m!5318195))

(assert (=> b!4546251 m!5318181))

(assert (=> b!4546251 m!5318181))

(assert (=> b!4546251 m!5318183))

(declare-fun m!5318197 () Bool)

(assert (=> b!4546251 m!5318197))

(declare-fun m!5318199 () Bool)

(assert (=> bm!316997 m!5318199))

(assert (=> b!4546144 d!1406667))

(declare-fun bs!884672 () Bool)

(declare-fun d!1406679 () Bool)

(assert (= bs!884672 (and d!1406679 start!451626)))

(declare-fun lambda!177329 () Int)

(assert (=> bs!884672 (= lambda!177329 lambda!177318)))

(declare-fun lt!1720150 () ListMap!3711)

(declare-fun invariantList!1055 (List!50931) Bool)

(assert (=> d!1406679 (invariantList!1055 (toList!4450 lt!1720150))))

(declare-fun e!2833250 () ListMap!3711)

(assert (=> d!1406679 (= lt!1720150 e!2833250)))

(declare-fun c!776570 () Bool)

(assert (=> d!1406679 (= c!776570 (is-Cons!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406679 (forall!10382 (toList!4449 lm!1477) lambda!177329)))

(assert (=> d!1406679 (= (extractMap!1277 (toList!4449 lm!1477)) lt!1720150)))

(declare-fun b!4546282 () Bool)

(declare-fun addToMapMapFromBucket!741 (List!50931 ListMap!3711) ListMap!3711)

(assert (=> b!4546282 (= e!2833250 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))))))

(declare-fun b!4546283 () Bool)

(assert (=> b!4546283 (= e!2833250 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406679 c!776570) b!4546282))

(assert (= (and d!1406679 (not c!776570)) b!4546283))

(declare-fun m!5318221 () Bool)

(assert (=> d!1406679 m!5318221))

(declare-fun m!5318223 () Bool)

(assert (=> d!1406679 m!5318223))

(declare-fun m!5318225 () Bool)

(assert (=> b!4546282 m!5318225))

(assert (=> b!4546282 m!5318225))

(declare-fun m!5318227 () Bool)

(assert (=> b!4546282 m!5318227))

(assert (=> b!4546144 d!1406679))

(declare-fun d!1406689 () Bool)

(declare-fun hash!2967 (Hashable!5616 K!12193) (_ BitVec 64))

(assert (=> d!1406689 (= (hash!2963 hashF!1107 key!3287) (hash!2967 hashF!1107 key!3287))))

(declare-fun bs!884673 () Bool)

(assert (= bs!884673 d!1406689))

(declare-fun m!5318233 () Bool)

(assert (=> bs!884673 m!5318233))

(assert (=> b!4546143 d!1406689))

(declare-fun bs!884676 () Bool)

(declare-fun d!1406693 () Bool)

(assert (= bs!884676 (and d!1406693 start!451626)))

(declare-fun lambda!177335 () Int)

(assert (=> bs!884676 (= lambda!177335 lambda!177318)))

(declare-fun bs!884677 () Bool)

(assert (= bs!884677 (and d!1406693 d!1406679)))

(assert (=> bs!884677 (= lambda!177335 lambda!177329)))

(assert (=> d!1406693 (not (contains!13631 (extractMap!1277 (toList!4449 lm!1477)) key!3287))))

(declare-fun lt!1720153 () Unit!99525)

(declare-fun choose!30019 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> d!1406693 (= lt!1720153 (choose!30019 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1406693 (forall!10382 (toList!4449 lm!1477) lambda!177335)))

(assert (=> d!1406693 (= (lemmaNotInItsHashBucketThenNotInMap!209 lm!1477 key!3287 hashF!1107) lt!1720153)))

(declare-fun bs!884678 () Bool)

(assert (= bs!884678 d!1406693))

(assert (=> bs!884678 m!5318031))

(assert (=> bs!884678 m!5318031))

(assert (=> bs!884678 m!5318033))

(declare-fun m!5318237 () Bool)

(assert (=> bs!884678 m!5318237))

(declare-fun m!5318239 () Bool)

(assert (=> bs!884678 m!5318239))

(assert (=> b!4546137 d!1406693))

(declare-fun d!1406699 () Bool)

(declare-fun res!1895660 () Bool)

(declare-fun e!2833261 () Bool)

(assert (=> d!1406699 (=> res!1895660 e!2833261)))

(assert (=> d!1406699 (= res!1895660 (not (is-Cons!50807 newBucket!178)))))

(assert (=> d!1406699 (= (noDuplicateKeys!1221 newBucket!178) e!2833261)))

(declare-fun b!4546298 () Bool)

(declare-fun e!2833262 () Bool)

(assert (=> b!4546298 (= e!2833261 e!2833262)))

(declare-fun res!1895661 () Bool)

(assert (=> b!4546298 (=> (not res!1895661) (not e!2833262))))

(assert (=> b!4546298 (= res!1895661 (not (containsKey!1920 (t!357897 newBucket!178) (_1!28953 (h!56700 newBucket!178)))))))

(declare-fun b!4546299 () Bool)

(assert (=> b!4546299 (= e!2833262 (noDuplicateKeys!1221 (t!357897 newBucket!178)))))

(assert (= (and d!1406699 (not res!1895660)) b!4546298))

(assert (= (and b!4546298 res!1895661) b!4546299))

(declare-fun m!5318241 () Bool)

(assert (=> b!4546298 m!5318241))

(declare-fun m!5318243 () Bool)

(assert (=> b!4546299 m!5318243))

(assert (=> b!4546147 d!1406699))

(declare-fun d!1406701 () Bool)

(declare-fun res!1895669 () Bool)

(declare-fun e!2833269 () Bool)

(assert (=> d!1406701 (=> res!1895669 e!2833269)))

(declare-fun e!2833270 () Bool)

(assert (=> d!1406701 (= res!1895669 e!2833270)))

(declare-fun res!1895670 () Bool)

(assert (=> d!1406701 (=> (not res!1895670) (not e!2833270))))

(assert (=> d!1406701 (= res!1895670 (is-Cons!50808 lt!1720035))))

(assert (=> d!1406701 (= (containsKeyBiggerList!199 lt!1720035 key!3287) e!2833269)))

(declare-fun b!4546308 () Bool)

(assert (=> b!4546308 (= e!2833270 (containsKey!1920 (_2!28954 (h!56701 lt!1720035)) key!3287))))

(declare-fun b!4546309 () Bool)

(declare-fun e!2833271 () Bool)

(assert (=> b!4546309 (= e!2833269 e!2833271)))

(declare-fun res!1895668 () Bool)

(assert (=> b!4546309 (=> (not res!1895668) (not e!2833271))))

(assert (=> b!4546309 (= res!1895668 (is-Cons!50808 lt!1720035))))

(declare-fun b!4546311 () Bool)

(assert (=> b!4546311 (= e!2833271 (containsKeyBiggerList!199 (t!357898 lt!1720035) key!3287))))

(assert (= (and d!1406701 res!1895670) b!4546308))

(assert (= (and d!1406701 (not res!1895669)) b!4546309))

(assert (= (and b!4546309 res!1895668) b!4546311))

(declare-fun m!5318245 () Bool)

(assert (=> b!4546308 m!5318245))

(declare-fun m!5318247 () Bool)

(assert (=> b!4546311 m!5318247))

(assert (=> b!4546146 d!1406701))

(declare-fun d!1406703 () Bool)

(declare-fun res!1895681 () Bool)

(declare-fun e!2833288 () Bool)

(assert (=> d!1406703 (=> res!1895681 e!2833288)))

(assert (=> d!1406703 (= res!1895681 (is-Nil!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406703 (= (forall!10382 (toList!4449 lm!1477) lambda!177318) e!2833288)))

(declare-fun b!4546331 () Bool)

(declare-fun e!2833289 () Bool)

(assert (=> b!4546331 (= e!2833288 e!2833289)))

(declare-fun res!1895682 () Bool)

(assert (=> b!4546331 (=> (not res!1895682) (not e!2833289))))

(declare-fun dynLambda!21240 (Int tuple2!51320) Bool)

(assert (=> b!4546331 (= res!1895682 (dynLambda!21240 lambda!177318 (h!56701 (toList!4449 lm!1477))))))

(declare-fun b!4546332 () Bool)

(assert (=> b!4546332 (= e!2833289 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177318))))

(assert (= (and d!1406703 (not res!1895681)) b!4546331))

(assert (= (and b!4546331 res!1895682) b!4546332))

(declare-fun b_lambda!158923 () Bool)

(assert (=> (not b_lambda!158923) (not b!4546331)))

(declare-fun m!5318249 () Bool)

(assert (=> b!4546331 m!5318249))

(declare-fun m!5318251 () Bool)

(assert (=> b!4546332 m!5318251))

(assert (=> start!451626 d!1406703))

(declare-fun d!1406705 () Bool)

(declare-fun isStrictlySorted!469 (List!50932) Bool)

(assert (=> d!1406705 (= (inv!66378 lm!1477) (isStrictlySorted!469 (toList!4449 lm!1477)))))

(declare-fun bs!884679 () Bool)

(assert (= bs!884679 d!1406705))

(declare-fun m!5318253 () Bool)

(assert (=> bs!884679 m!5318253))

(assert (=> start!451626 d!1406705))

(declare-fun d!1406707 () Bool)

(assert (=> d!1406707 true))

(assert (=> d!1406707 true))

(declare-fun lambda!177338 () Int)

(declare-fun forall!10384 (List!50931 Int) Bool)

(assert (=> d!1406707 (= (allKeysSameHash!1075 newBucket!178 hash!344 hashF!1107) (forall!10384 newBucket!178 lambda!177338))))

(declare-fun bs!884680 () Bool)

(assert (= bs!884680 d!1406707))

(declare-fun m!5318267 () Bool)

(assert (=> bs!884680 m!5318267))

(assert (=> b!4546139 d!1406707))

(declare-fun bs!884681 () Bool)

(declare-fun d!1406709 () Bool)

(assert (= bs!884681 (and d!1406709 start!451626)))

(declare-fun lambda!177341 () Int)

(assert (=> bs!884681 (not (= lambda!177341 lambda!177318))))

(declare-fun bs!884682 () Bool)

(assert (= bs!884682 (and d!1406709 d!1406679)))

(assert (=> bs!884682 (not (= lambda!177341 lambda!177329))))

(declare-fun bs!884683 () Bool)

(assert (= bs!884683 (and d!1406709 d!1406693)))

(assert (=> bs!884683 (not (= lambda!177341 lambda!177335))))

(assert (=> d!1406709 true))

(assert (=> d!1406709 (= (allKeysSameHashInMap!1328 lm!1477 hashF!1107) (forall!10382 (toList!4449 lm!1477) lambda!177341))))

(declare-fun bs!884684 () Bool)

(assert (= bs!884684 d!1406709))

(declare-fun m!5318277 () Bool)

(assert (=> bs!884684 m!5318277))

(assert (=> b!4546149 d!1406709))

(declare-fun bs!884685 () Bool)

(declare-fun d!1406713 () Bool)

(assert (= bs!884685 (and d!1406713 start!451626)))

(declare-fun lambda!177342 () Int)

(assert (=> bs!884685 (= lambda!177342 lambda!177318)))

(declare-fun bs!884686 () Bool)

(assert (= bs!884686 (and d!1406713 d!1406679)))

(assert (=> bs!884686 (= lambda!177342 lambda!177329)))

(declare-fun bs!884687 () Bool)

(assert (= bs!884687 (and d!1406713 d!1406693)))

(assert (=> bs!884687 (= lambda!177342 lambda!177335)))

(declare-fun bs!884688 () Bool)

(assert (= bs!884688 (and d!1406713 d!1406709)))

(assert (=> bs!884688 (not (= lambda!177342 lambda!177341))))

(declare-fun lt!1720178 () ListMap!3711)

(assert (=> d!1406713 (invariantList!1055 (toList!4450 lt!1720178))))

(declare-fun e!2833296 () ListMap!3711)

(assert (=> d!1406713 (= lt!1720178 e!2833296)))

(declare-fun c!776580 () Bool)

(assert (=> d!1406713 (= c!776580 (is-Cons!50808 lt!1720035))))

(assert (=> d!1406713 (forall!10382 lt!1720035 lambda!177342)))

(assert (=> d!1406713 (= (extractMap!1277 lt!1720035) lt!1720178)))

(declare-fun b!4546348 () Bool)

(assert (=> b!4546348 (= e!2833296 (addToMapMapFromBucket!741 (_2!28954 (h!56701 lt!1720035)) (extractMap!1277 (t!357898 lt!1720035))))))

(declare-fun b!4546349 () Bool)

(assert (=> b!4546349 (= e!2833296 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406713 c!776580) b!4546348))

(assert (= (and d!1406713 (not c!776580)) b!4546349))

(declare-fun m!5318279 () Bool)

(assert (=> d!1406713 m!5318279))

(declare-fun m!5318281 () Bool)

(assert (=> d!1406713 m!5318281))

(declare-fun m!5318283 () Bool)

(assert (=> b!4546348 m!5318283))

(assert (=> b!4546348 m!5318283))

(declare-fun m!5318285 () Bool)

(assert (=> b!4546348 m!5318285))

(assert (=> b!4546138 d!1406713))

(declare-fun d!1406715 () Bool)

(declare-fun e!2833301 () Bool)

(assert (=> d!1406715 e!2833301))

(declare-fun res!1895686 () Bool)

(assert (=> d!1406715 (=> res!1895686 e!2833301)))

(declare-fun e!2833297 () Bool)

(assert (=> d!1406715 (= res!1895686 e!2833297)))

(declare-fun res!1895688 () Bool)

(assert (=> d!1406715 (=> (not res!1895688) (not e!2833297))))

(declare-fun lt!1720181 () Bool)

(assert (=> d!1406715 (= res!1895688 (not lt!1720181))))

(declare-fun lt!1720183 () Bool)

(assert (=> d!1406715 (= lt!1720181 lt!1720183)))

(declare-fun lt!1720186 () Unit!99525)

(declare-fun e!2833298 () Unit!99525)

(assert (=> d!1406715 (= lt!1720186 e!2833298)))

(declare-fun c!776581 () Bool)

(assert (=> d!1406715 (= c!776581 lt!1720183)))

(assert (=> d!1406715 (= lt!1720183 (containsKey!1922 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> d!1406715 (= (contains!13631 (extractMap!1277 lt!1720035) key!3287) lt!1720181)))

(declare-fun bm!317001 () Bool)

(declare-fun call!317006 () Bool)

(declare-fun e!2833299 () List!50935)

(assert (=> bm!317001 (= call!317006 (contains!13637 e!2833299 key!3287))))

(declare-fun c!776583 () Bool)

(assert (=> bm!317001 (= c!776583 c!776581)))

(declare-fun b!4546350 () Bool)

(declare-fun e!2833302 () Unit!99525)

(assert (=> b!4546350 (= e!2833298 e!2833302)))

(declare-fun c!776582 () Bool)

(assert (=> b!4546350 (= c!776582 call!317006)))

(declare-fun b!4546351 () Bool)

(declare-fun e!2833300 () Bool)

(assert (=> b!4546351 (= e!2833301 e!2833300)))

(declare-fun res!1895687 () Bool)

(assert (=> b!4546351 (=> (not res!1895687) (not e!2833300))))

(assert (=> b!4546351 (= res!1895687 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287)))))

(declare-fun b!4546352 () Bool)

(assert (=> b!4546352 (= e!2833297 (not (contains!13637 (keys!17696 (extractMap!1277 lt!1720035)) key!3287)))))

(declare-fun b!4546353 () Bool)

(declare-fun lt!1720184 () Unit!99525)

(assert (=> b!4546353 (= e!2833298 lt!1720184)))

(declare-fun lt!1720185 () Unit!99525)

(assert (=> b!4546353 (= lt!1720185 (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> b!4546353 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(declare-fun lt!1720179 () Unit!99525)

(assert (=> b!4546353 (= lt!1720179 lt!1720185)))

(assert (=> b!4546353 (= lt!1720184 (lemmaInListThenGetKeysListContains!499 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> b!4546353 call!317006))

(declare-fun b!4546354 () Bool)

(assert (=> b!4546354 (= e!2833300 (contains!13637 (keys!17696 (extractMap!1277 lt!1720035)) key!3287))))

(declare-fun b!4546355 () Bool)

(assert (=> b!4546355 (= e!2833299 (keys!17696 (extractMap!1277 lt!1720035)))))

(declare-fun b!4546356 () Bool)

(assert (=> b!4546356 false))

(declare-fun lt!1720182 () Unit!99525)

(declare-fun lt!1720180 () Unit!99525)

(assert (=> b!4546356 (= lt!1720182 lt!1720180)))

(assert (=> b!4546356 (containsKey!1922 (toList!4450 (extractMap!1277 lt!1720035)) key!3287)))

(assert (=> b!4546356 (= lt!1720180 (lemmaInGetKeysListThenContainsKey!502 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(declare-fun Unit!99536 () Unit!99525)

(assert (=> b!4546356 (= e!2833302 Unit!99536)))

(declare-fun b!4546357 () Bool)

(declare-fun Unit!99537 () Unit!99525)

(assert (=> b!4546357 (= e!2833302 Unit!99537)))

(declare-fun b!4546358 () Bool)

(assert (=> b!4546358 (= e!2833299 (getKeysList!503 (toList!4450 (extractMap!1277 lt!1720035))))))

(assert (= (and d!1406715 c!776581) b!4546353))

(assert (= (and d!1406715 (not c!776581)) b!4546350))

(assert (= (and b!4546350 c!776582) b!4546356))

(assert (= (and b!4546350 (not c!776582)) b!4546357))

(assert (= (or b!4546353 b!4546350) bm!317001))

(assert (= (and bm!317001 c!776583) b!4546358))

(assert (= (and bm!317001 (not c!776583)) b!4546355))

(assert (= (and d!1406715 res!1895688) b!4546352))

(assert (= (and d!1406715 (not res!1895686)) b!4546351))

(assert (= (and b!4546351 res!1895687) b!4546354))

(declare-fun m!5318287 () Bool)

(assert (=> b!4546351 m!5318287))

(assert (=> b!4546351 m!5318287))

(declare-fun m!5318289 () Bool)

(assert (=> b!4546351 m!5318289))

(declare-fun m!5318291 () Bool)

(assert (=> d!1406715 m!5318291))

(assert (=> b!4546352 m!5318051))

(declare-fun m!5318293 () Bool)

(assert (=> b!4546352 m!5318293))

(assert (=> b!4546352 m!5318293))

(declare-fun m!5318295 () Bool)

(assert (=> b!4546352 m!5318295))

(assert (=> b!4546354 m!5318051))

(assert (=> b!4546354 m!5318293))

(assert (=> b!4546354 m!5318293))

(assert (=> b!4546354 m!5318295))

(assert (=> b!4546355 m!5318051))

(assert (=> b!4546355 m!5318293))

(assert (=> b!4546356 m!5318291))

(declare-fun m!5318297 () Bool)

(assert (=> b!4546356 m!5318297))

(declare-fun m!5318299 () Bool)

(assert (=> b!4546358 m!5318299))

(declare-fun m!5318301 () Bool)

(assert (=> b!4546353 m!5318301))

(assert (=> b!4546353 m!5318287))

(assert (=> b!4546353 m!5318287))

(assert (=> b!4546353 m!5318289))

(declare-fun m!5318303 () Bool)

(assert (=> b!4546353 m!5318303))

(declare-fun m!5318305 () Bool)

(assert (=> bm!317001 m!5318305))

(assert (=> b!4546138 d!1406715))

(declare-fun d!1406717 () Bool)

(declare-fun e!2833308 () Bool)

(assert (=> d!1406717 e!2833308))

(declare-fun res!1895691 () Bool)

(assert (=> d!1406717 (=> (not res!1895691) (not e!2833308))))

(declare-fun lt!1720192 () ListMap!3711)

(assert (=> d!1406717 (= res!1895691 (not (contains!13631 lt!1720192 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!178 (List!50931 K!12193) List!50931)

(assert (=> d!1406717 (= lt!1720192 (ListMap!3712 (removePresrvNoDuplicatedKeys!178 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287)))))

(assert (=> d!1406717 (= (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287) lt!1720192)))

(declare-fun b!4546367 () Bool)

(declare-fun content!8470 (List!50935) (Set K!12193))

(assert (=> b!4546367 (= e!2833308 (= (set.minus (content!8470 (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (set.insert key!3287 (as set.empty (Set K!12193)))) (content!8470 (keys!17696 lt!1720192))))))

(assert (= (and d!1406717 res!1895691) b!4546367))

(declare-fun m!5318307 () Bool)

(assert (=> d!1406717 m!5318307))

(declare-fun m!5318309 () Bool)

(assert (=> d!1406717 m!5318309))

(declare-fun m!5318311 () Bool)

(assert (=> b!4546367 m!5318311))

(declare-fun m!5318313 () Bool)

(assert (=> b!4546367 m!5318313))

(declare-fun m!5318315 () Bool)

(assert (=> b!4546367 m!5318315))

(declare-fun m!5318317 () Bool)

(assert (=> b!4546367 m!5318317))

(assert (=> b!4546367 m!5318311))

(assert (=> b!4546367 m!5318049))

(assert (=> b!4546367 m!5318315))

(declare-fun m!5318319 () Bool)

(assert (=> b!4546367 m!5318319))

(assert (=> b!4546138 d!1406717))

(declare-fun d!1406719 () Bool)

(assert (=> d!1406719 (= (tail!7823 (toList!4449 lt!1720041)) (t!357898 (toList!4449 lt!1720041)))))

(assert (=> b!4546138 d!1406719))

(declare-fun bs!884692 () Bool)

(declare-fun d!1406723 () Bool)

(assert (= bs!884692 (and d!1406723 d!1406679)))

(declare-fun lambda!177348 () Int)

(assert (=> bs!884692 (= lambda!177348 lambda!177329)))

(declare-fun bs!884693 () Bool)

(assert (= bs!884693 (and d!1406723 d!1406709)))

(assert (=> bs!884693 (not (= lambda!177348 lambda!177341))))

(declare-fun bs!884694 () Bool)

(assert (= bs!884694 (and d!1406723 start!451626)))

(assert (=> bs!884694 (= lambda!177348 lambda!177318)))

(declare-fun bs!884695 () Bool)

(assert (= bs!884695 (and d!1406723 d!1406693)))

(assert (=> bs!884695 (= lambda!177348 lambda!177335)))

(declare-fun bs!884696 () Bool)

(assert (= bs!884696 (and d!1406723 d!1406713)))

(assert (=> bs!884696 (= lambda!177348 lambda!177342)))

(assert (=> d!1406723 (contains!13631 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035))) key!3287)))

(declare-fun lt!1720195 () Unit!99525)

(declare-fun choose!30022 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> d!1406723 (= lt!1720195 (choose!30022 (ListLongMap!3082 lt!1720035) key!3287 hashF!1107))))

(assert (=> d!1406723 (forall!10382 (toList!4449 (ListLongMap!3082 lt!1720035)) lambda!177348)))

(assert (=> d!1406723 (= (lemmaListContainsThenExtractedMapContains!187 (ListLongMap!3082 lt!1720035) key!3287 hashF!1107) lt!1720195)))

(declare-fun bs!884697 () Bool)

(assert (= bs!884697 d!1406723))

(declare-fun m!5318333 () Bool)

(assert (=> bs!884697 m!5318333))

(assert (=> bs!884697 m!5318333))

(declare-fun m!5318335 () Bool)

(assert (=> bs!884697 m!5318335))

(declare-fun m!5318337 () Bool)

(assert (=> bs!884697 m!5318337))

(declare-fun m!5318339 () Bool)

(assert (=> bs!884697 m!5318339))

(assert (=> b!4546138 d!1406723))

(declare-fun d!1406729 () Bool)

(declare-fun content!8471 (List!50931) (Set tuple2!51318))

(assert (=> d!1406729 (= (eq!672 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)) (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287)) (= (content!8471 (toList!4450 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)))) (content!8471 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287)))))))

(declare-fun bs!884698 () Bool)

(assert (= bs!884698 d!1406729))

(declare-fun m!5318341 () Bool)

(assert (=> bs!884698 m!5318341))

(declare-fun m!5318343 () Bool)

(assert (=> bs!884698 m!5318343))

(assert (=> b!4546138 d!1406729))

(declare-fun d!1406731 () Bool)

(declare-fun e!2833315 () Bool)

(assert (=> d!1406731 e!2833315))

(declare-fun res!1895698 () Bool)

(assert (=> d!1406731 (=> (not res!1895698) (not e!2833315))))

(declare-fun lt!1720200 () ListLongMap!3081)

(assert (=> d!1406731 (= res!1895698 (contains!13633 lt!1720200 (_1!28954 lt!1720038)))))

(declare-fun lt!1720199 () List!50932)

(assert (=> d!1406731 (= lt!1720200 (ListLongMap!3082 lt!1720199))))

(declare-fun lt!1720202 () Unit!99525)

(declare-fun lt!1720198 () Unit!99525)

(assert (=> d!1406731 (= lt!1720202 lt!1720198)))

(assert (=> d!1406731 (= (getValueByKey!1169 lt!1720199 (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038)))))

(assert (=> d!1406731 (= lt!1720198 (lemmaContainsTupThenGetReturnValue!733 lt!1720199 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(assert (=> d!1406731 (= lt!1720199 (insertStrictlySorted!445 (toList!4449 lm!1477) (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(assert (=> d!1406731 (= (+!1631 lm!1477 lt!1720038) lt!1720200)))

(declare-fun b!4546374 () Bool)

(declare-fun res!1895699 () Bool)

(assert (=> b!4546374 (=> (not res!1895699) (not e!2833315))))

(assert (=> b!4546374 (= res!1895699 (= (getValueByKey!1169 (toList!4449 lt!1720200) (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038))))))

(declare-fun b!4546375 () Bool)

(assert (=> b!4546375 (= e!2833315 (contains!13632 (toList!4449 lt!1720200) lt!1720038))))

(assert (= (and d!1406731 res!1895698) b!4546374))

(assert (= (and b!4546374 res!1895699) b!4546375))

(declare-fun m!5318345 () Bool)

(assert (=> d!1406731 m!5318345))

(declare-fun m!5318347 () Bool)

(assert (=> d!1406731 m!5318347))

(declare-fun m!5318349 () Bool)

(assert (=> d!1406731 m!5318349))

(declare-fun m!5318351 () Bool)

(assert (=> d!1406731 m!5318351))

(declare-fun m!5318353 () Bool)

(assert (=> b!4546374 m!5318353))

(declare-fun m!5318355 () Bool)

(assert (=> b!4546375 m!5318355))

(assert (=> b!4546138 d!1406731))

(declare-fun d!1406733 () Bool)

(assert (=> d!1406733 (eq!672 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)) (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))))

(declare-fun lt!1720219 () Unit!99525)

(declare-fun choose!30023 ((_ BitVec 64) List!50931 List!50931 K!12193 Hashable!5616) Unit!99525)

(assert (=> d!1406733 (= lt!1720219 (choose!30023 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1406733 (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477))))))

(assert (=> d!1406733 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!61 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1720219)))

(declare-fun bs!884720 () Bool)

(assert (= bs!884720 d!1406733))

(assert (=> bs!884720 m!5318049))

(declare-fun m!5318385 () Bool)

(assert (=> bs!884720 m!5318385))

(assert (=> bs!884720 m!5318049))

(assert (=> bs!884720 m!5318043))

(declare-fun m!5318393 () Bool)

(assert (=> bs!884720 m!5318393))

(declare-fun m!5318395 () Bool)

(assert (=> bs!884720 m!5318395))

(assert (=> bs!884720 m!5318385))

(assert (=> bs!884720 m!5318043))

(declare-fun m!5318399 () Bool)

(assert (=> bs!884720 m!5318399))

(assert (=> b!4546138 d!1406733))

(declare-fun bs!884725 () Bool)

(declare-fun d!1406747 () Bool)

(assert (= bs!884725 (and d!1406747 d!1406679)))

(declare-fun lambda!177358 () Int)

(assert (=> bs!884725 (= lambda!177358 lambda!177329)))

(declare-fun bs!884727 () Bool)

(assert (= bs!884727 (and d!1406747 d!1406709)))

(assert (=> bs!884727 (not (= lambda!177358 lambda!177341))))

(declare-fun bs!884729 () Bool)

(assert (= bs!884729 (and d!1406747 start!451626)))

(assert (=> bs!884729 (= lambda!177358 lambda!177318)))

(declare-fun bs!884731 () Bool)

(assert (= bs!884731 (and d!1406747 d!1406693)))

(assert (=> bs!884731 (= lambda!177358 lambda!177335)))

(declare-fun bs!884732 () Bool)

(assert (= bs!884732 (and d!1406747 d!1406713)))

(assert (=> bs!884732 (= lambda!177358 lambda!177342)))

(declare-fun bs!884733 () Bool)

(assert (= bs!884733 (and d!1406747 d!1406723)))

(assert (=> bs!884733 (= lambda!177358 lambda!177348)))

(declare-fun lt!1720221 () ListMap!3711)

(assert (=> d!1406747 (invariantList!1055 (toList!4450 lt!1720221))))

(declare-fun e!2833322 () ListMap!3711)

(assert (=> d!1406747 (= lt!1720221 e!2833322)))

(declare-fun c!776590 () Bool)

(assert (=> d!1406747 (= c!776590 (is-Cons!50808 (Cons!50808 lt!1720038 Nil!50808)))))

(assert (=> d!1406747 (forall!10382 (Cons!50808 lt!1720038 Nil!50808) lambda!177358)))

(assert (=> d!1406747 (= (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)) lt!1720221)))

(declare-fun b!4546390 () Bool)

(assert (=> b!4546390 (= e!2833322 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))))))

(declare-fun b!4546391 () Bool)

(assert (=> b!4546391 (= e!2833322 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406747 c!776590) b!4546390))

(assert (= (and d!1406747 (not c!776590)) b!4546391))

(declare-fun m!5318409 () Bool)

(assert (=> d!1406747 m!5318409))

(declare-fun m!5318411 () Bool)

(assert (=> d!1406747 m!5318411))

(declare-fun m!5318413 () Bool)

(assert (=> b!4546390 m!5318413))

(assert (=> b!4546390 m!5318413))

(declare-fun m!5318415 () Bool)

(assert (=> b!4546390 m!5318415))

(assert (=> b!4546138 d!1406747))

(declare-fun bs!884734 () Bool)

(declare-fun d!1406751 () Bool)

(assert (= bs!884734 (and d!1406751 d!1406679)))

(declare-fun lambda!177359 () Int)

(assert (=> bs!884734 (= lambda!177359 lambda!177329)))

(declare-fun bs!884735 () Bool)

(assert (= bs!884735 (and d!1406751 d!1406747)))

(assert (=> bs!884735 (= lambda!177359 lambda!177358)))

(declare-fun bs!884736 () Bool)

(assert (= bs!884736 (and d!1406751 d!1406709)))

(assert (=> bs!884736 (not (= lambda!177359 lambda!177341))))

(declare-fun bs!884737 () Bool)

(assert (= bs!884737 (and d!1406751 start!451626)))

(assert (=> bs!884737 (= lambda!177359 lambda!177318)))

(declare-fun bs!884738 () Bool)

(assert (= bs!884738 (and d!1406751 d!1406693)))

(assert (=> bs!884738 (= lambda!177359 lambda!177335)))

(declare-fun bs!884739 () Bool)

(assert (= bs!884739 (and d!1406751 d!1406713)))

(assert (=> bs!884739 (= lambda!177359 lambda!177342)))

(declare-fun bs!884740 () Bool)

(assert (= bs!884740 (and d!1406751 d!1406723)))

(assert (=> bs!884740 (= lambda!177359 lambda!177348)))

(declare-fun lt!1720222 () ListMap!3711)

(assert (=> d!1406751 (invariantList!1055 (toList!4450 lt!1720222))))

(declare-fun e!2833323 () ListMap!3711)

(assert (=> d!1406751 (= lt!1720222 e!2833323)))

(declare-fun c!776591 () Bool)

(assert (=> d!1406751 (= c!776591 (is-Cons!50808 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))

(assert (=> d!1406751 (forall!10382 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808) lambda!177359)))

(assert (=> d!1406751 (= (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) lt!1720222)))

(declare-fun b!4546392 () Bool)

(assert (=> b!4546392 (= e!2833323 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun b!4546393 () Bool)

(assert (=> b!4546393 (= e!2833323 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406751 c!776591) b!4546392))

(assert (= (and d!1406751 (not c!776591)) b!4546393))

(declare-fun m!5318417 () Bool)

(assert (=> d!1406751 m!5318417))

(declare-fun m!5318419 () Bool)

(assert (=> d!1406751 m!5318419))

(declare-fun m!5318421 () Bool)

(assert (=> b!4546392 m!5318421))

(assert (=> b!4546392 m!5318421))

(declare-fun m!5318423 () Bool)

(assert (=> b!4546392 m!5318423))

(assert (=> b!4546138 d!1406751))

(declare-fun d!1406753 () Bool)

(declare-fun res!1895710 () Bool)

(declare-fun e!2833328 () Bool)

(assert (=> d!1406753 (=> res!1895710 e!2833328)))

(assert (=> d!1406753 (= res!1895710 (and (is-Cons!50807 (_2!28954 (h!56701 (toList!4449 lm!1477)))) (= (_1!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))) key!3287)))))

(assert (=> d!1406753 (= (containsKey!1920 (_2!28954 (h!56701 (toList!4449 lm!1477))) key!3287) e!2833328)))

(declare-fun b!4546398 () Bool)

(declare-fun e!2833329 () Bool)

(assert (=> b!4546398 (= e!2833328 e!2833329)))

(declare-fun res!1895711 () Bool)

(assert (=> b!4546398 (=> (not res!1895711) (not e!2833329))))

(assert (=> b!4546398 (= res!1895711 (is-Cons!50807 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(declare-fun b!4546399 () Bool)

(assert (=> b!4546399 (= e!2833329 (containsKey!1920 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))) key!3287))))

(assert (= (and d!1406753 (not res!1895710)) b!4546398))

(assert (= (and b!4546398 res!1895711) b!4546399))

(declare-fun m!5318425 () Bool)

(assert (=> b!4546399 m!5318425))

(assert (=> b!4546142 d!1406753))

(declare-fun d!1406755 () Bool)

(assert (=> d!1406755 (dynLambda!21240 lambda!177318 lt!1720034)))

(declare-fun lt!1720227 () Unit!99525)

(declare-fun choose!30025 (List!50932 Int tuple2!51320) Unit!99525)

(assert (=> d!1406755 (= lt!1720227 (choose!30025 (toList!4449 lm!1477) lambda!177318 lt!1720034))))

(declare-fun e!2833334 () Bool)

(assert (=> d!1406755 e!2833334))

(declare-fun res!1895716 () Bool)

(assert (=> d!1406755 (=> (not res!1895716) (not e!2833334))))

(assert (=> d!1406755 (= res!1895716 (forall!10382 (toList!4449 lm!1477) lambda!177318))))

(assert (=> d!1406755 (= (forallContained!2646 (toList!4449 lm!1477) lambda!177318 lt!1720034) lt!1720227)))

(declare-fun b!4546404 () Bool)

(assert (=> b!4546404 (= e!2833334 (contains!13632 (toList!4449 lm!1477) lt!1720034))))

(assert (= (and d!1406755 res!1895716) b!4546404))

(declare-fun b_lambda!158925 () Bool)

(assert (=> (not b_lambda!158925) (not d!1406755)))

(declare-fun m!5318427 () Bool)

(assert (=> d!1406755 m!5318427))

(declare-fun m!5318429 () Bool)

(assert (=> d!1406755 m!5318429))

(assert (=> d!1406755 m!5318019))

(assert (=> b!4546404 m!5318067))

(assert (=> b!4546141 d!1406755))

(declare-fun bs!884741 () Bool)

(declare-fun d!1406757 () Bool)

(assert (= bs!884741 (and d!1406757 d!1406679)))

(declare-fun lambda!177362 () Int)

(assert (=> bs!884741 (= lambda!177362 lambda!177329)))

(declare-fun bs!884742 () Bool)

(assert (= bs!884742 (and d!1406757 d!1406709)))

(assert (=> bs!884742 (not (= lambda!177362 lambda!177341))))

(declare-fun bs!884743 () Bool)

(assert (= bs!884743 (and d!1406757 start!451626)))

(assert (=> bs!884743 (= lambda!177362 lambda!177318)))

(declare-fun bs!884744 () Bool)

(assert (= bs!884744 (and d!1406757 d!1406693)))

(assert (=> bs!884744 (= lambda!177362 lambda!177335)))

(declare-fun bs!884745 () Bool)

(assert (= bs!884745 (and d!1406757 d!1406713)))

(assert (=> bs!884745 (= lambda!177362 lambda!177342)))

(declare-fun bs!884746 () Bool)

(assert (= bs!884746 (and d!1406757 d!1406723)))

(assert (=> bs!884746 (= lambda!177362 lambda!177348)))

(declare-fun bs!884747 () Bool)

(assert (= bs!884747 (and d!1406757 d!1406747)))

(assert (=> bs!884747 (= lambda!177362 lambda!177358)))

(declare-fun bs!884748 () Bool)

(assert (= bs!884748 (and d!1406757 d!1406751)))

(assert (=> bs!884748 (= lambda!177362 lambda!177359)))

(assert (=> d!1406757 (contains!13633 lm!1477 (hash!2963 hashF!1107 key!3287))))

(declare-fun lt!1720231 () Unit!99525)

(declare-fun choose!30026 (ListLongMap!3081 K!12193 Hashable!5616) Unit!99525)

(assert (=> d!1406757 (= lt!1720231 (choose!30026 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1406757 (forall!10382 (toList!4449 lm!1477) lambda!177362)))

(assert (=> d!1406757 (= (lemmaInGenMapThenLongMapContainsHash!295 lm!1477 key!3287 hashF!1107) lt!1720231)))

(declare-fun bs!884749 () Bool)

(assert (= bs!884749 d!1406757))

(assert (=> bs!884749 m!5318075))

(assert (=> bs!884749 m!5318075))

(declare-fun m!5318445 () Bool)

(assert (=> bs!884749 m!5318445))

(declare-fun m!5318447 () Bool)

(assert (=> bs!884749 m!5318447))

(declare-fun m!5318449 () Bool)

(assert (=> bs!884749 m!5318449))

(assert (=> b!4546141 d!1406757))

(declare-fun d!1406761 () Bool)

(declare-fun e!2833341 () Bool)

(assert (=> d!1406761 e!2833341))

(declare-fun res!1895720 () Bool)

(assert (=> d!1406761 (=> res!1895720 e!2833341)))

(declare-fun lt!1720240 () Bool)

(assert (=> d!1406761 (= res!1895720 (not lt!1720240))))

(declare-fun lt!1720241 () Bool)

(assert (=> d!1406761 (= lt!1720240 lt!1720241)))

(declare-fun lt!1720243 () Unit!99525)

(declare-fun e!2833340 () Unit!99525)

(assert (=> d!1406761 (= lt!1720243 e!2833340)))

(declare-fun c!776594 () Bool)

(assert (=> d!1406761 (= c!776594 lt!1720241)))

(declare-fun containsKey!1925 (List!50932 (_ BitVec 64)) Bool)

(assert (=> d!1406761 (= lt!1720241 (containsKey!1925 (toList!4449 lm!1477) lt!1720032))))

(assert (=> d!1406761 (= (contains!13633 lm!1477 lt!1720032) lt!1720240)))

(declare-fun b!4546412 () Bool)

(declare-fun lt!1720242 () Unit!99525)

(assert (=> b!4546412 (= e!2833340 lt!1720242)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (List!50932 (_ BitVec 64)) Unit!99525)

(assert (=> b!4546412 (= lt!1720242 (lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (toList!4449 lm!1477) lt!1720032))))

(declare-fun isDefined!8512 (Option!11237) Bool)

(assert (=> b!4546412 (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032))))

(declare-fun b!4546413 () Bool)

(declare-fun Unit!99540 () Unit!99525)

(assert (=> b!4546413 (= e!2833340 Unit!99540)))

(declare-fun b!4546414 () Bool)

(assert (=> b!4546414 (= e!2833341 (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032)))))

(assert (= (and d!1406761 c!776594) b!4546412))

(assert (= (and d!1406761 (not c!776594)) b!4546413))

(assert (= (and d!1406761 (not res!1895720)) b!4546414))

(declare-fun m!5318451 () Bool)

(assert (=> d!1406761 m!5318451))

(declare-fun m!5318453 () Bool)

(assert (=> b!4546412 m!5318453))

(declare-fun m!5318455 () Bool)

(assert (=> b!4546412 m!5318455))

(assert (=> b!4546412 m!5318455))

(declare-fun m!5318457 () Bool)

(assert (=> b!4546412 m!5318457))

(assert (=> b!4546414 m!5318455))

(assert (=> b!4546414 m!5318455))

(assert (=> b!4546414 m!5318457))

(assert (=> b!4546141 d!1406761))

(declare-fun d!1406763 () Bool)

(declare-fun get!16725 (Option!11237) List!50931)

(assert (=> d!1406763 (= (apply!11958 lm!1477 hash!344) (get!16725 (getValueByKey!1169 (toList!4449 lm!1477) hash!344)))))

(declare-fun bs!884755 () Bool)

(assert (= bs!884755 d!1406763))

(declare-fun m!5318459 () Bool)

(assert (=> bs!884755 m!5318459))

(assert (=> bs!884755 m!5318459))

(declare-fun m!5318461 () Bool)

(assert (=> bs!884755 m!5318461))

(assert (=> b!4546141 d!1406763))

(declare-fun d!1406765 () Bool)

(assert (=> d!1406765 (contains!13632 (toList!4449 lm!1477) (tuple2!51321 hash!344 lt!1720030))))

(declare-fun lt!1720253 () Unit!99525)

(declare-fun choose!30027 (List!50932 (_ BitVec 64) List!50931) Unit!99525)

(assert (=> d!1406765 (= lt!1720253 (choose!30027 (toList!4449 lm!1477) hash!344 lt!1720030))))

(declare-fun e!2833345 () Bool)

(assert (=> d!1406765 e!2833345))

(declare-fun res!1895725 () Bool)

(assert (=> d!1406765 (=> (not res!1895725) (not e!2833345))))

(assert (=> d!1406765 (= res!1895725 (isStrictlySorted!469 (toList!4449 lm!1477)))))

(assert (=> d!1406765 (= (lemmaGetValueByKeyImpliesContainsTuple!733 (toList!4449 lm!1477) hash!344 lt!1720030) lt!1720253)))

(declare-fun b!4546419 () Bool)

(assert (=> b!4546419 (= e!2833345 (= (getValueByKey!1169 (toList!4449 lm!1477) hash!344) (Some!11236 lt!1720030)))))

(assert (= (and d!1406765 res!1895725) b!4546419))

(declare-fun m!5318483 () Bool)

(assert (=> d!1406765 m!5318483))

(declare-fun m!5318485 () Bool)

(assert (=> d!1406765 m!5318485))

(assert (=> d!1406765 m!5318253))

(assert (=> b!4546419 m!5318459))

(assert (=> b!4546141 d!1406765))

(declare-fun d!1406773 () Bool)

(declare-fun lt!1720256 () List!50931)

(assert (=> d!1406773 (not (containsKey!1920 lt!1720256 key!3287))))

(declare-fun e!2833350 () List!50931)

(assert (=> d!1406773 (= lt!1720256 e!2833350)))

(declare-fun c!776599 () Bool)

(assert (=> d!1406773 (= c!776599 (and (is-Cons!50807 lt!1720030) (= (_1!28953 (h!56700 lt!1720030)) key!3287)))))

(assert (=> d!1406773 (noDuplicateKeys!1221 lt!1720030)))

(assert (=> d!1406773 (= (removePairForKey!848 lt!1720030 key!3287) lt!1720256)))

(declare-fun b!4546430 () Bool)

(declare-fun e!2833351 () List!50931)

(assert (=> b!4546430 (= e!2833351 (Cons!50807 (h!56700 lt!1720030) (removePairForKey!848 (t!357897 lt!1720030) key!3287)))))

(declare-fun b!4546429 () Bool)

(assert (=> b!4546429 (= e!2833350 e!2833351)))

(declare-fun c!776600 () Bool)

(assert (=> b!4546429 (= c!776600 (is-Cons!50807 lt!1720030))))

(declare-fun b!4546428 () Bool)

(assert (=> b!4546428 (= e!2833350 (t!357897 lt!1720030))))

(declare-fun b!4546431 () Bool)

(assert (=> b!4546431 (= e!2833351 Nil!50807)))

(assert (= (and d!1406773 c!776599) b!4546428))

(assert (= (and d!1406773 (not c!776599)) b!4546429))

(assert (= (and b!4546429 c!776600) b!4546430))

(assert (= (and b!4546429 (not c!776600)) b!4546431))

(declare-fun m!5318487 () Bool)

(assert (=> d!1406773 m!5318487))

(declare-fun m!5318489 () Bool)

(assert (=> d!1406773 m!5318489))

(declare-fun m!5318491 () Bool)

(assert (=> b!4546430 m!5318491))

(assert (=> b!4546141 d!1406773))

(declare-fun d!1406775 () Bool)

(declare-fun lt!1720259 () Bool)

(declare-fun content!8473 (List!50932) (Set tuple2!51320))

(assert (=> d!1406775 (= lt!1720259 (set.member lt!1720034 (content!8473 (toList!4449 lm!1477))))))

(declare-fun e!2833357 () Bool)

(assert (=> d!1406775 (= lt!1720259 e!2833357)))

(declare-fun res!1895731 () Bool)

(assert (=> d!1406775 (=> (not res!1895731) (not e!2833357))))

(assert (=> d!1406775 (= res!1895731 (is-Cons!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406775 (= (contains!13632 (toList!4449 lm!1477) lt!1720034) lt!1720259)))

(declare-fun b!4546436 () Bool)

(declare-fun e!2833356 () Bool)

(assert (=> b!4546436 (= e!2833357 e!2833356)))

(declare-fun res!1895730 () Bool)

(assert (=> b!4546436 (=> res!1895730 e!2833356)))

(assert (=> b!4546436 (= res!1895730 (= (h!56701 (toList!4449 lm!1477)) lt!1720034))))

(declare-fun b!4546437 () Bool)

(assert (=> b!4546437 (= e!2833356 (contains!13632 (t!357898 (toList!4449 lm!1477)) lt!1720034))))

(assert (= (and d!1406775 res!1895731) b!4546436))

(assert (= (and b!4546436 (not res!1895730)) b!4546437))

(declare-fun m!5318493 () Bool)

(assert (=> d!1406775 m!5318493))

(declare-fun m!5318495 () Bool)

(assert (=> d!1406775 m!5318495))

(declare-fun m!5318497 () Bool)

(assert (=> b!4546437 m!5318497))

(assert (=> b!4546141 d!1406775))

(declare-fun e!2833360 () Bool)

(declare-fun b!4546442 () Bool)

(declare-fun tp!1338898 () Bool)

(assert (=> b!4546442 (= e!2833360 (and tp_is_empty!28161 tp_is_empty!28163 tp!1338898))))

(assert (=> b!4546148 (= tp!1338889 e!2833360)))

(assert (= (and b!4546148 (is-Cons!50807 (t!357897 newBucket!178))) b!4546442))

(declare-fun b!4546447 () Bool)

(declare-fun e!2833363 () Bool)

(declare-fun tp!1338903 () Bool)

(declare-fun tp!1338904 () Bool)

(assert (=> b!4546447 (= e!2833363 (and tp!1338903 tp!1338904))))

(assert (=> b!4546151 (= tp!1338888 e!2833363)))

(assert (= (and b!4546151 (is-Cons!50808 (toList!4449 lm!1477))) b!4546447))

(declare-fun b_lambda!158927 () Bool)

(assert (= b_lambda!158925 (or start!451626 b_lambda!158927)))

(declare-fun bs!884760 () Bool)

(declare-fun d!1406777 () Bool)

(assert (= bs!884760 (and d!1406777 start!451626)))

(assert (=> bs!884760 (= (dynLambda!21240 lambda!177318 lt!1720034) (noDuplicateKeys!1221 (_2!28954 lt!1720034)))))

(declare-fun m!5318499 () Bool)

(assert (=> bs!884760 m!5318499))

(assert (=> d!1406755 d!1406777))

(declare-fun b_lambda!158929 () Bool)

(assert (= b_lambda!158923 (or start!451626 b_lambda!158929)))

(declare-fun bs!884761 () Bool)

(declare-fun d!1406779 () Bool)

(assert (= bs!884761 (and d!1406779 start!451626)))

(assert (=> bs!884761 (= (dynLambda!21240 lambda!177318 (h!56701 (toList!4449 lm!1477))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(assert (=> bs!884761 m!5318395))

(assert (=> b!4546331 d!1406779))

(push 1)

(assert (not b!4546375))

(assert (not b!4546352))

(assert (not b_lambda!158929))

(assert (not b!4546430))

(assert (not d!1406661))

(assert (not d!1406689))

(assert (not d!1406773))

(assert (not b!4546201))

(assert (not d!1406757))

(assert (not d!1406763))

(assert (not b!4546356))

(assert (not d!1406705))

(assert (not d!1406731))

(assert (not b!4546332))

(assert (not b!4546254))

(assert (not d!1406707))

(assert (not b!4546256))

(assert (not b!4546447))

(assert (not bs!884761))

(assert (not d!1406729))

(assert (not b!4546392))

(assert (not b!4546367))

(assert (not b!4546250))

(assert (not b_lambda!158927))

(assert (not b!4546351))

(assert (not b!4546202))

(assert (not d!1406693))

(assert (not d!1406733))

(assert (not d!1406747))

(assert (not b!4546353))

(assert (not d!1406715))

(assert (not b!4546374))

(assert (not b!4546358))

(assert (not d!1406713))

(assert (not b!4546249))

(assert tp_is_empty!28163)

(assert (not b!4546437))

(assert (not b!4546390))

(assert (not b!4546354))

(assert (not b!4546251))

(assert (not b!4546252))

(assert (not b!4546414))

(assert (not d!1406667))

(assert (not d!1406775))

(assert (not b!4546404))

(assert (not b!4546412))

(assert (not d!1406765))

(assert (not b!4546355))

(assert (not d!1406679))

(assert (not b!4546311))

(assert (not b!4546253))

(assert (not bs!884760))

(assert (not b!4546299))

(assert (not b!4546442))

(assert (not b!4546419))

(assert (not b!4546298))

(assert (not d!1406755))

(assert (not b!4546282))

(assert (not d!1406665))

(assert tp_is_empty!28161)

(assert (not d!1406709))

(assert (not b!4546348))

(assert (not b!4546399))

(assert (not d!1406723))

(assert (not d!1406717))

(assert (not d!1406761))

(assert (not d!1406751))

(assert (not bm!316997))

(assert (not bm!317001))

(assert (not b!4546308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!884780 () Bool)

(declare-fun b!4546535 () Bool)

(assert (= bs!884780 (and b!4546535 d!1406707)))

(declare-fun lambda!177406 () Int)

(assert (=> bs!884780 (not (= lambda!177406 lambda!177338))))

(assert (=> b!4546535 true))

(declare-fun bs!884781 () Bool)

(declare-fun b!4546534 () Bool)

(assert (= bs!884781 (and b!4546534 d!1406707)))

(declare-fun lambda!177407 () Int)

(assert (=> bs!884781 (not (= lambda!177407 lambda!177338))))

(declare-fun bs!884782 () Bool)

(assert (= bs!884782 (and b!4546534 b!4546535)))

(assert (=> bs!884782 (= lambda!177407 lambda!177406)))

(assert (=> b!4546534 true))

(declare-fun lambda!177408 () Int)

(assert (=> bs!884781 (not (= lambda!177408 lambda!177338))))

(declare-fun lt!1720341 () ListMap!3711)

(assert (=> bs!884782 (= (= lt!1720341 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177408 lambda!177406))))

(assert (=> b!4546534 (= (= lt!1720341 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177408 lambda!177407))))

(assert (=> b!4546534 true))

(declare-fun bs!884783 () Bool)

(declare-fun d!1406789 () Bool)

(assert (= bs!884783 (and d!1406789 d!1406707)))

(declare-fun lambda!177409 () Int)

(assert (=> bs!884783 (not (= lambda!177409 lambda!177338))))

(declare-fun bs!884784 () Bool)

(assert (= bs!884784 (and d!1406789 b!4546535)))

(declare-fun lt!1720332 () ListMap!3711)

(assert (=> bs!884784 (= (= lt!1720332 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177409 lambda!177406))))

(declare-fun bs!884785 () Bool)

(assert (= bs!884785 (and d!1406789 b!4546534)))

(assert (=> bs!884785 (= (= lt!1720332 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177409 lambda!177407))))

(assert (=> bs!884785 (= (= lt!1720332 lt!1720341) (= lambda!177409 lambda!177408))))

(assert (=> d!1406789 true))

(declare-fun b!4546531 () Bool)

(declare-fun e!2833413 () Bool)

(assert (=> b!4546531 (= e!2833413 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177408))))

(declare-fun bm!317009 () Bool)

(declare-fun call!317016 () Unit!99525)

(declare-fun lemmaContainsAllItsOwnKeys!375 (ListMap!3711) Unit!99525)

(assert (=> bm!317009 (= call!317016 (lemmaContainsAllItsOwnKeys!375 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun b!4546532 () Bool)

(declare-fun e!2833412 () Bool)

(assert (=> b!4546532 (= e!2833412 (invariantList!1055 (toList!4450 lt!1720332)))))

(assert (=> d!1406789 e!2833412))

(declare-fun res!1895774 () Bool)

(assert (=> d!1406789 (=> (not res!1895774) (not e!2833412))))

(assert (=> d!1406789 (= res!1895774 (forall!10384 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lambda!177409))))

(declare-fun e!2833414 () ListMap!3711)

(assert (=> d!1406789 (= lt!1720332 e!2833414)))

(declare-fun c!776616 () Bool)

(assert (=> d!1406789 (= c!776616 (is-Nil!50807 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(assert (=> d!1406789 (noDuplicateKeys!1221 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))

(assert (=> d!1406789 (= (addToMapMapFromBucket!741 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lt!1720332)))

(declare-fun lt!1720343 () ListMap!3711)

(declare-fun bm!317010 () Bool)

(declare-fun call!317014 () Bool)

(assert (=> bm!317010 (= call!317014 (forall!10384 (ite c!776616 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (toList!4450 lt!1720343)) (ite c!776616 lambda!177406 lambda!177408)))))

(declare-fun bm!317011 () Bool)

(declare-fun call!317015 () Bool)

(assert (=> bm!317011 (= call!317015 (forall!10384 (ite c!776616 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (ite c!776616 lambda!177406 lambda!177408)))))

(declare-fun b!4546533 () Bool)

(declare-fun res!1895775 () Bool)

(assert (=> b!4546533 (=> (not res!1895775) (not e!2833412))))

(assert (=> b!4546533 (= res!1895775 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177409))))

(assert (=> b!4546534 (= e!2833414 lt!1720341)))

(declare-fun +!1633 (ListMap!3711 tuple2!51318) ListMap!3711)

(assert (=> b!4546534 (= lt!1720343 (+!1633 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(assert (=> b!4546534 (= lt!1720341 (addToMapMapFromBucket!741 (t!357897 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (+!1633 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(declare-fun lt!1720342 () Unit!99525)

(assert (=> b!4546534 (= lt!1720342 call!317016)))

(assert (=> b!4546534 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177407)))

(declare-fun lt!1720331 () Unit!99525)

(assert (=> b!4546534 (= lt!1720331 lt!1720342)))

(assert (=> b!4546534 (forall!10384 (toList!4450 lt!1720343) lambda!177408)))

(declare-fun lt!1720324 () Unit!99525)

(declare-fun Unit!99543 () Unit!99525)

(assert (=> b!4546534 (= lt!1720324 Unit!99543)))

(assert (=> b!4546534 (forall!10384 (t!357897 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177408)))

(declare-fun lt!1720323 () Unit!99525)

(declare-fun Unit!99544 () Unit!99525)

(assert (=> b!4546534 (= lt!1720323 Unit!99544)))

(declare-fun lt!1720327 () Unit!99525)

(declare-fun Unit!99545 () Unit!99525)

(assert (=> b!4546534 (= lt!1720327 Unit!99545)))

(declare-fun lt!1720329 () Unit!99525)

(declare-fun forallContained!2648 (List!50931 Int tuple2!51318) Unit!99525)

(assert (=> b!4546534 (= lt!1720329 (forallContained!2648 (toList!4450 lt!1720343) lambda!177408 (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(assert (=> b!4546534 (contains!13631 lt!1720343 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun lt!1720325 () Unit!99525)

(declare-fun Unit!99546 () Unit!99525)

(assert (=> b!4546534 (= lt!1720325 Unit!99546)))

(assert (=> b!4546534 (contains!13631 lt!1720341 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun lt!1720328 () Unit!99525)

(declare-fun Unit!99547 () Unit!99525)

(assert (=> b!4546534 (= lt!1720328 Unit!99547)))

(assert (=> b!4546534 (forall!10384 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lambda!177408)))

(declare-fun lt!1720334 () Unit!99525)

(declare-fun Unit!99548 () Unit!99525)

(assert (=> b!4546534 (= lt!1720334 Unit!99548)))

(assert (=> b!4546534 call!317014))

(declare-fun lt!1720338 () Unit!99525)

(declare-fun Unit!99549 () Unit!99525)

(assert (=> b!4546534 (= lt!1720338 Unit!99549)))

(declare-fun lt!1720333 () Unit!99525)

(declare-fun Unit!99550 () Unit!99525)

(assert (=> b!4546534 (= lt!1720333 Unit!99550)))

(declare-fun lt!1720335 () Unit!99525)

(declare-fun addForallContainsKeyThenBeforeAdding!375 (ListMap!3711 ListMap!3711 K!12193 V!12439) Unit!99525)

(assert (=> b!4546534 (= lt!1720335 (addForallContainsKeyThenBeforeAdding!375 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lt!1720341 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) (_2!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(assert (=> b!4546534 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177408)))

(declare-fun lt!1720340 () Unit!99525)

(assert (=> b!4546534 (= lt!1720340 lt!1720335)))

(assert (=> b!4546534 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lambda!177408)))

(declare-fun lt!1720336 () Unit!99525)

(declare-fun Unit!99551 () Unit!99525)

(assert (=> b!4546534 (= lt!1720336 Unit!99551)))

(declare-fun res!1895773 () Bool)

(assert (=> b!4546534 (= res!1895773 call!317015)))

(assert (=> b!4546534 (=> (not res!1895773) (not e!2833413))))

(assert (=> b!4546534 e!2833413))

(declare-fun lt!1720330 () Unit!99525)

(declare-fun Unit!99552 () Unit!99525)

(assert (=> b!4546534 (= lt!1720330 Unit!99552)))

(assert (=> b!4546535 (= e!2833414 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))

(declare-fun lt!1720337 () Unit!99525)

(assert (=> b!4546535 (= lt!1720337 call!317016)))

(assert (=> b!4546535 call!317014))

(declare-fun lt!1720339 () Unit!99525)

(assert (=> b!4546535 (= lt!1720339 lt!1720337)))

(assert (=> b!4546535 call!317015))

(declare-fun lt!1720326 () Unit!99525)

(declare-fun Unit!99553 () Unit!99525)

(assert (=> b!4546535 (= lt!1720326 Unit!99553)))

(assert (= (and d!1406789 c!776616) b!4546535))

(assert (= (and d!1406789 (not c!776616)) b!4546534))

(assert (= (and b!4546534 res!1895773) b!4546531))

(assert (= (or b!4546535 b!4546534) bm!317011))

(assert (= (or b!4546535 b!4546534) bm!317010))

(assert (= (or b!4546535 b!4546534) bm!317009))

(assert (= (and d!1406789 res!1895774) b!4546533))

(assert (= (and b!4546533 res!1895775) b!4546532))

(declare-fun m!5318633 () Bool)

(assert (=> bm!317011 m!5318633))

(declare-fun m!5318635 () Bool)

(assert (=> b!4546531 m!5318635))

(declare-fun m!5318637 () Bool)

(assert (=> b!4546534 m!5318637))

(declare-fun m!5318639 () Bool)

(assert (=> b!4546534 m!5318639))

(assert (=> b!4546534 m!5318421))

(declare-fun m!5318641 () Bool)

(assert (=> b!4546534 m!5318641))

(declare-fun m!5318643 () Bool)

(assert (=> b!4546534 m!5318643))

(declare-fun m!5318645 () Bool)

(assert (=> b!4546534 m!5318645))

(declare-fun m!5318647 () Bool)

(assert (=> b!4546534 m!5318647))

(declare-fun m!5318649 () Bool)

(assert (=> b!4546534 m!5318649))

(declare-fun m!5318651 () Bool)

(assert (=> b!4546534 m!5318651))

(declare-fun m!5318653 () Bool)

(assert (=> b!4546534 m!5318653))

(assert (=> b!4546534 m!5318635))

(declare-fun m!5318655 () Bool)

(assert (=> b!4546534 m!5318655))

(assert (=> b!4546534 m!5318421))

(assert (=> b!4546534 m!5318643))

(assert (=> b!4546534 m!5318635))

(declare-fun m!5318657 () Bool)

(assert (=> b!4546533 m!5318657))

(declare-fun m!5318659 () Bool)

(assert (=> d!1406789 m!5318659))

(declare-fun m!5318661 () Bool)

(assert (=> d!1406789 m!5318661))

(declare-fun m!5318663 () Bool)

(assert (=> bm!317010 m!5318663))

(declare-fun m!5318665 () Bool)

(assert (=> b!4546532 m!5318665))

(assert (=> bm!317009 m!5318421))

(declare-fun m!5318667 () Bool)

(assert (=> bm!317009 m!5318667))

(assert (=> b!4546392 d!1406789))

(declare-fun bs!884787 () Bool)

(declare-fun d!1406825 () Bool)

(assert (= bs!884787 (and d!1406825 d!1406679)))

(declare-fun lambda!177410 () Int)

(assert (=> bs!884787 (= lambda!177410 lambda!177329)))

(declare-fun bs!884788 () Bool)

(assert (= bs!884788 (and d!1406825 d!1406709)))

(assert (=> bs!884788 (not (= lambda!177410 lambda!177341))))

(declare-fun bs!884789 () Bool)

(assert (= bs!884789 (and d!1406825 start!451626)))

(assert (=> bs!884789 (= lambda!177410 lambda!177318)))

(declare-fun bs!884790 () Bool)

(assert (= bs!884790 (and d!1406825 d!1406757)))

(assert (=> bs!884790 (= lambda!177410 lambda!177362)))

(declare-fun bs!884791 () Bool)

(assert (= bs!884791 (and d!1406825 d!1406693)))

(assert (=> bs!884791 (= lambda!177410 lambda!177335)))

(declare-fun bs!884792 () Bool)

(assert (= bs!884792 (and d!1406825 d!1406713)))

(assert (=> bs!884792 (= lambda!177410 lambda!177342)))

(declare-fun bs!884793 () Bool)

(assert (= bs!884793 (and d!1406825 d!1406723)))

(assert (=> bs!884793 (= lambda!177410 lambda!177348)))

(declare-fun bs!884794 () Bool)

(assert (= bs!884794 (and d!1406825 d!1406747)))

(assert (=> bs!884794 (= lambda!177410 lambda!177358)))

(declare-fun bs!884795 () Bool)

(assert (= bs!884795 (and d!1406825 d!1406751)))

(assert (=> bs!884795 (= lambda!177410 lambda!177359)))

(declare-fun lt!1720344 () ListMap!3711)

(assert (=> d!1406825 (invariantList!1055 (toList!4450 lt!1720344))))

(declare-fun e!2833425 () ListMap!3711)

(assert (=> d!1406825 (= lt!1720344 e!2833425)))

(declare-fun c!776621 () Bool)

(assert (=> d!1406825 (= c!776621 (is-Cons!50808 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))

(assert (=> d!1406825 (forall!10382 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) lambda!177410)))

(assert (=> d!1406825 (= (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lt!1720344)))

(declare-fun b!4546552 () Bool)

(assert (=> b!4546552 (= e!2833425 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (extractMap!1277 (t!357898 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun b!4546553 () Bool)

(assert (=> b!4546553 (= e!2833425 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406825 c!776621) b!4546552))

(assert (= (and d!1406825 (not c!776621)) b!4546553))

(declare-fun m!5318671 () Bool)

(assert (=> d!1406825 m!5318671))

(declare-fun m!5318673 () Bool)

(assert (=> d!1406825 m!5318673))

(declare-fun m!5318675 () Bool)

(assert (=> b!4546552 m!5318675))

(assert (=> b!4546552 m!5318675))

(declare-fun m!5318677 () Bool)

(assert (=> b!4546552 m!5318677))

(assert (=> b!4546392 d!1406825))

(declare-fun b!4546587 () Bool)

(assert (=> b!4546587 true))

(declare-fun bs!884810 () Bool)

(declare-fun b!4546584 () Bool)

(assert (= bs!884810 (and b!4546584 b!4546587)))

(declare-fun lambda!177421 () Int)

(declare-fun lambda!177420 () Int)

(assert (=> bs!884810 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177421 lambda!177420))))

(assert (=> b!4546584 true))

(declare-fun bs!884811 () Bool)

(declare-fun b!4546586 () Bool)

(assert (= bs!884811 (and b!4546586 b!4546587)))

(declare-fun lambda!177422 () Int)

(assert (=> bs!884811 (= (= (toList!4450 (extractMap!1277 lt!1720035)) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177422 lambda!177420))))

(declare-fun bs!884812 () Bool)

(assert (= bs!884812 (and b!4546586 b!4546584)))

(assert (=> bs!884812 (= (= (toList!4450 (extractMap!1277 lt!1720035)) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177422 lambda!177421))))

(assert (=> b!4546586 true))

(declare-fun e!2833441 () List!50935)

(assert (=> b!4546584 (= e!2833441 (Cons!50811 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035)))) (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))))))

(declare-fun c!776634 () Bool)

(assert (=> b!4546584 (= c!776634 (containsKey!1922 (t!357897 (toList!4450 (extractMap!1277 lt!1720035))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))))))))

(declare-fun lt!1720366 () Unit!99525)

(declare-fun e!2833444 () Unit!99525)

(assert (=> b!4546584 (= lt!1720366 e!2833444)))

(declare-fun c!776633 () Bool)

(assert (=> b!4546584 (= c!776633 (contains!13637 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))))))))

(declare-fun lt!1720368 () Unit!99525)

(declare-fun e!2833443 () Unit!99525)

(assert (=> b!4546584 (= lt!1720368 e!2833443)))

(declare-fun lt!1720370 () List!50935)

(assert (=> b!4546584 (= lt!1720370 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))))))

(declare-fun lt!1720367 () Unit!99525)

(declare-fun lemmaForallContainsAddHeadPreserves!186 (List!50931 List!50935 tuple2!51318) Unit!99525)

(assert (=> b!4546584 (= lt!1720367 (lemmaForallContainsAddHeadPreserves!186 (t!357897 (toList!4450 (extractMap!1277 lt!1720035))) lt!1720370 (h!56700 (toList!4450 (extractMap!1277 lt!1720035)))))))

(declare-fun forall!10386 (List!50935 Int) Bool)

(assert (=> b!4546584 (forall!10386 lt!1720370 lambda!177421)))

(declare-fun lt!1720369 () Unit!99525)

(assert (=> b!4546584 (= lt!1720369 lt!1720367)))

(declare-fun b!4546585 () Bool)

(assert (=> b!4546585 (= e!2833441 Nil!50811)))

(declare-fun res!1895790 () Bool)

(declare-fun e!2833442 () Bool)

(assert (=> b!4546586 (=> (not res!1895790) (not e!2833442))))

(declare-fun lt!1720371 () List!50935)

(assert (=> b!4546586 (= res!1895790 (forall!10386 lt!1720371 lambda!177422))))

(assert (=> b!4546587 false))

(declare-fun lt!1720372 () Unit!99525)

(declare-fun forallContained!2649 (List!50935 Int K!12193) Unit!99525)

(assert (=> b!4546587 (= lt!1720372 (forallContained!2649 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) lambda!177420 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))))))))

(declare-fun Unit!99554 () Unit!99525)

(assert (=> b!4546587 (= e!2833443 Unit!99554)))

(declare-fun lambda!177423 () Int)

(declare-fun b!4546588 () Bool)

(declare-fun map!11187 (List!50931 Int) List!50935)

(assert (=> b!4546588 (= e!2833442 (= (content!8470 lt!1720371) (content!8470 (map!11187 (toList!4450 (extractMap!1277 lt!1720035)) lambda!177423))))))

(declare-fun d!1406829 () Bool)

(assert (=> d!1406829 e!2833442))

(declare-fun res!1895792 () Bool)

(assert (=> d!1406829 (=> (not res!1895792) (not e!2833442))))

(declare-fun noDuplicate!765 (List!50935) Bool)

(assert (=> d!1406829 (= res!1895792 (noDuplicate!765 lt!1720371))))

(assert (=> d!1406829 (= lt!1720371 e!2833441)))

(declare-fun c!776635 () Bool)

(assert (=> d!1406829 (= c!776635 (is-Cons!50807 (toList!4450 (extractMap!1277 lt!1720035))))))

(assert (=> d!1406829 (invariantList!1055 (toList!4450 (extractMap!1277 lt!1720035)))))

(assert (=> d!1406829 (= (getKeysList!503 (toList!4450 (extractMap!1277 lt!1720035))) lt!1720371)))

(declare-fun b!4546589 () Bool)

(assert (=> b!4546589 false))

(declare-fun Unit!99555 () Unit!99525)

(assert (=> b!4546589 (= e!2833444 Unit!99555)))

(declare-fun b!4546590 () Bool)

(declare-fun Unit!99556 () Unit!99525)

(assert (=> b!4546590 (= e!2833443 Unit!99556)))

(declare-fun b!4546591 () Bool)

(declare-fun res!1895791 () Bool)

(assert (=> b!4546591 (=> (not res!1895791) (not e!2833442))))

(declare-fun length!386 (List!50935) Int)

(declare-fun length!387 (List!50931) Int)

(assert (=> b!4546591 (= res!1895791 (= (length!386 lt!1720371) (length!387 (toList!4450 (extractMap!1277 lt!1720035)))))))

(declare-fun b!4546592 () Bool)

(declare-fun Unit!99557 () Unit!99525)

(assert (=> b!4546592 (= e!2833444 Unit!99557)))

(assert (= (and d!1406829 c!776635) b!4546584))

(assert (= (and d!1406829 (not c!776635)) b!4546585))

(assert (= (and b!4546584 c!776634) b!4546589))

(assert (= (and b!4546584 (not c!776634)) b!4546592))

(assert (= (and b!4546584 c!776633) b!4546587))

(assert (= (and b!4546584 (not c!776633)) b!4546590))

(assert (= (and d!1406829 res!1895792) b!4546591))

(assert (= (and b!4546591 res!1895791) b!4546586))

(assert (= (and b!4546586 res!1895790) b!4546588))

(declare-fun m!5318705 () Bool)

(assert (=> d!1406829 m!5318705))

(declare-fun m!5318707 () Bool)

(assert (=> d!1406829 m!5318707))

(declare-fun m!5318709 () Bool)

(assert (=> b!4546591 m!5318709))

(declare-fun m!5318711 () Bool)

(assert (=> b!4546591 m!5318711))

(declare-fun m!5318713 () Bool)

(assert (=> b!4546587 m!5318713))

(assert (=> b!4546587 m!5318713))

(declare-fun m!5318715 () Bool)

(assert (=> b!4546587 m!5318715))

(declare-fun m!5318717 () Bool)

(assert (=> b!4546584 m!5318717))

(declare-fun m!5318719 () Bool)

(assert (=> b!4546584 m!5318719))

(declare-fun m!5318721 () Bool)

(assert (=> b!4546584 m!5318721))

(assert (=> b!4546584 m!5318713))

(assert (=> b!4546584 m!5318713))

(declare-fun m!5318723 () Bool)

(assert (=> b!4546584 m!5318723))

(declare-fun m!5318725 () Bool)

(assert (=> b!4546588 m!5318725))

(declare-fun m!5318727 () Bool)

(assert (=> b!4546588 m!5318727))

(assert (=> b!4546588 m!5318727))

(declare-fun m!5318729 () Bool)

(assert (=> b!4546588 m!5318729))

(declare-fun m!5318731 () Bool)

(assert (=> b!4546586 m!5318731))

(assert (=> b!4546358 d!1406829))

(declare-fun d!1406847 () Bool)

(declare-fun noDuplicatedKeys!280 (List!50931) Bool)

(assert (=> d!1406847 (= (invariantList!1055 (toList!4450 lt!1720221)) (noDuplicatedKeys!280 (toList!4450 lt!1720221)))))

(declare-fun bs!884813 () Bool)

(assert (= bs!884813 d!1406847))

(declare-fun m!5318733 () Bool)

(assert (=> bs!884813 m!5318733))

(assert (=> d!1406747 d!1406847))

(declare-fun d!1406849 () Bool)

(declare-fun res!1895793 () Bool)

(declare-fun e!2833445 () Bool)

(assert (=> d!1406849 (=> res!1895793 e!2833445)))

(assert (=> d!1406849 (= res!1895793 (is-Nil!50808 (Cons!50808 lt!1720038 Nil!50808)))))

(assert (=> d!1406849 (= (forall!10382 (Cons!50808 lt!1720038 Nil!50808) lambda!177358) e!2833445)))

(declare-fun b!4546595 () Bool)

(declare-fun e!2833446 () Bool)

(assert (=> b!4546595 (= e!2833445 e!2833446)))

(declare-fun res!1895794 () Bool)

(assert (=> b!4546595 (=> (not res!1895794) (not e!2833446))))

(assert (=> b!4546595 (= res!1895794 (dynLambda!21240 lambda!177358 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))

(declare-fun b!4546596 () Bool)

(assert (=> b!4546596 (= e!2833446 (forall!10382 (t!357898 (Cons!50808 lt!1720038 Nil!50808)) lambda!177358))))

(assert (= (and d!1406849 (not res!1895793)) b!4546595))

(assert (= (and b!4546595 res!1895794) b!4546596))

(declare-fun b_lambda!158939 () Bool)

(assert (=> (not b_lambda!158939) (not b!4546595)))

(declare-fun m!5318735 () Bool)

(assert (=> b!4546595 m!5318735))

(declare-fun m!5318737 () Bool)

(assert (=> b!4546596 m!5318737))

(assert (=> d!1406747 d!1406849))

(declare-fun d!1406851 () Bool)

(declare-fun e!2833448 () Bool)

(assert (=> d!1406851 e!2833448))

(declare-fun res!1895795 () Bool)

(assert (=> d!1406851 (=> res!1895795 e!2833448)))

(declare-fun lt!1720373 () Bool)

(assert (=> d!1406851 (= res!1895795 (not lt!1720373))))

(declare-fun lt!1720374 () Bool)

(assert (=> d!1406851 (= lt!1720373 lt!1720374)))

(declare-fun lt!1720376 () Unit!99525)

(declare-fun e!2833447 () Unit!99525)

(assert (=> d!1406851 (= lt!1720376 e!2833447)))

(declare-fun c!776636 () Bool)

(assert (=> d!1406851 (= c!776636 lt!1720374)))

(assert (=> d!1406851 (= lt!1720374 (containsKey!1925 (toList!4449 lt!1720095) (_1!28954 lt!1720038)))))

(assert (=> d!1406851 (= (contains!13633 lt!1720095 (_1!28954 lt!1720038)) lt!1720373)))

(declare-fun b!4546597 () Bool)

(declare-fun lt!1720375 () Unit!99525)

(assert (=> b!4546597 (= e!2833447 lt!1720375)))

(assert (=> b!4546597 (= lt!1720375 (lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (toList!4449 lt!1720095) (_1!28954 lt!1720038)))))

(assert (=> b!4546597 (isDefined!8512 (getValueByKey!1169 (toList!4449 lt!1720095) (_1!28954 lt!1720038)))))

(declare-fun b!4546598 () Bool)

(declare-fun Unit!99558 () Unit!99525)

(assert (=> b!4546598 (= e!2833447 Unit!99558)))

(declare-fun b!4546599 () Bool)

(assert (=> b!4546599 (= e!2833448 (isDefined!8512 (getValueByKey!1169 (toList!4449 lt!1720095) (_1!28954 lt!1720038))))))

(assert (= (and d!1406851 c!776636) b!4546597))

(assert (= (and d!1406851 (not c!776636)) b!4546598))

(assert (= (and d!1406851 (not res!1895795)) b!4546599))

(declare-fun m!5318739 () Bool)

(assert (=> d!1406851 m!5318739))

(declare-fun m!5318741 () Bool)

(assert (=> b!4546597 m!5318741))

(assert (=> b!4546597 m!5318147))

(assert (=> b!4546597 m!5318147))

(declare-fun m!5318743 () Bool)

(assert (=> b!4546597 m!5318743))

(assert (=> b!4546599 m!5318147))

(assert (=> b!4546599 m!5318147))

(assert (=> b!4546599 m!5318743))

(assert (=> d!1406661 d!1406851))

(declare-fun b!4546611 () Bool)

(declare-fun e!2833454 () Option!11237)

(assert (=> b!4546611 (= e!2833454 None!11236)))

(declare-fun b!4546608 () Bool)

(declare-fun e!2833453 () Option!11237)

(assert (=> b!4546608 (= e!2833453 (Some!11236 (_2!28954 (h!56701 lt!1720094))))))

(declare-fun b!4546609 () Bool)

(assert (=> b!4546609 (= e!2833453 e!2833454)))

(declare-fun c!776642 () Bool)

(assert (=> b!4546609 (= c!776642 (and (is-Cons!50808 lt!1720094) (not (= (_1!28954 (h!56701 lt!1720094)) (_1!28954 lt!1720038)))))))

(declare-fun b!4546610 () Bool)

(assert (=> b!4546610 (= e!2833454 (getValueByKey!1169 (t!357898 lt!1720094) (_1!28954 lt!1720038)))))

(declare-fun d!1406853 () Bool)

(declare-fun c!776641 () Bool)

(assert (=> d!1406853 (= c!776641 (and (is-Cons!50808 lt!1720094) (= (_1!28954 (h!56701 lt!1720094)) (_1!28954 lt!1720038))))))

(assert (=> d!1406853 (= (getValueByKey!1169 lt!1720094 (_1!28954 lt!1720038)) e!2833453)))

(assert (= (and d!1406853 c!776641) b!4546608))

(assert (= (and d!1406853 (not c!776641)) b!4546609))

(assert (= (and b!4546609 c!776642) b!4546610))

(assert (= (and b!4546609 (not c!776642)) b!4546611))

(declare-fun m!5318745 () Bool)

(assert (=> b!4546610 m!5318745))

(assert (=> d!1406661 d!1406853))

(declare-fun d!1406855 () Bool)

(assert (=> d!1406855 (= (getValueByKey!1169 lt!1720094 (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038)))))

(declare-fun lt!1720379 () Unit!99525)

(declare-fun choose!30030 (List!50932 (_ BitVec 64) List!50931) Unit!99525)

(assert (=> d!1406855 (= lt!1720379 (choose!30030 lt!1720094 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(declare-fun e!2833457 () Bool)

(assert (=> d!1406855 e!2833457))

(declare-fun res!1895800 () Bool)

(assert (=> d!1406855 (=> (not res!1895800) (not e!2833457))))

(assert (=> d!1406855 (= res!1895800 (isStrictlySorted!469 lt!1720094))))

(assert (=> d!1406855 (= (lemmaContainsTupThenGetReturnValue!733 lt!1720094 (_1!28954 lt!1720038) (_2!28954 lt!1720038)) lt!1720379)))

(declare-fun b!4546616 () Bool)

(declare-fun res!1895801 () Bool)

(assert (=> b!4546616 (=> (not res!1895801) (not e!2833457))))

(assert (=> b!4546616 (= res!1895801 (containsKey!1925 lt!1720094 (_1!28954 lt!1720038)))))

(declare-fun b!4546617 () Bool)

(assert (=> b!4546617 (= e!2833457 (contains!13632 lt!1720094 (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038))))))

(assert (= (and d!1406855 res!1895800) b!4546616))

(assert (= (and b!4546616 res!1895801) b!4546617))

(assert (=> d!1406855 m!5318141))

(declare-fun m!5318747 () Bool)

(assert (=> d!1406855 m!5318747))

(declare-fun m!5318749 () Bool)

(assert (=> d!1406855 m!5318749))

(declare-fun m!5318751 () Bool)

(assert (=> b!4546616 m!5318751))

(declare-fun m!5318753 () Bool)

(assert (=> b!4546617 m!5318753))

(assert (=> d!1406661 d!1406855))

(declare-fun d!1406857 () Bool)

(declare-fun e!2833484 () Bool)

(assert (=> d!1406857 e!2833484))

(declare-fun res!1895816 () Bool)

(assert (=> d!1406857 (=> (not res!1895816) (not e!2833484))))

(declare-fun lt!1720403 () List!50932)

(assert (=> d!1406857 (= res!1895816 (isStrictlySorted!469 lt!1720403))))

(declare-fun e!2833480 () List!50932)

(assert (=> d!1406857 (= lt!1720403 e!2833480)))

(declare-fun c!776662 () Bool)

(assert (=> d!1406857 (= c!776662 (and (is-Cons!50808 (toList!4449 (tail!7824 lm!1477))) (bvslt (_1!28954 (h!56701 (toList!4449 (tail!7824 lm!1477)))) (_1!28954 lt!1720038))))))

(assert (=> d!1406857 (isStrictlySorted!469 (toList!4449 (tail!7824 lm!1477)))))

(assert (=> d!1406857 (= (insertStrictlySorted!445 (toList!4449 (tail!7824 lm!1477)) (_1!28954 lt!1720038) (_2!28954 lt!1720038)) lt!1720403)))

(declare-fun b!4546667 () Bool)

(declare-fun e!2833482 () List!50932)

(assert (=> b!4546667 (= e!2833480 e!2833482)))

(declare-fun c!776660 () Bool)

(assert (=> b!4546667 (= c!776660 (and (is-Cons!50808 (toList!4449 (tail!7824 lm!1477))) (= (_1!28954 (h!56701 (toList!4449 (tail!7824 lm!1477)))) (_1!28954 lt!1720038))))))

(declare-fun b!4546668 () Bool)

(declare-fun res!1895815 () Bool)

(assert (=> b!4546668 (=> (not res!1895815) (not e!2833484))))

(assert (=> b!4546668 (= res!1895815 (containsKey!1925 lt!1720403 (_1!28954 lt!1720038)))))

(declare-fun b!4546669 () Bool)

(declare-fun e!2833481 () List!50932)

(declare-fun call!317023 () List!50932)

(assert (=> b!4546669 (= e!2833481 call!317023)))

(declare-fun b!4546670 () Bool)

(assert (=> b!4546670 (= e!2833481 call!317023)))

(declare-fun b!4546671 () Bool)

(declare-fun c!776661 () Bool)

(assert (=> b!4546671 (= c!776661 (and (is-Cons!50808 (toList!4449 (tail!7824 lm!1477))) (bvsgt (_1!28954 (h!56701 (toList!4449 (tail!7824 lm!1477)))) (_1!28954 lt!1720038))))))

(assert (=> b!4546671 (= e!2833482 e!2833481)))

(declare-fun e!2833483 () List!50932)

(declare-fun b!4546672 () Bool)

(assert (=> b!4546672 (= e!2833483 (ite c!776660 (t!357898 (toList!4449 (tail!7824 lm!1477))) (ite c!776661 (Cons!50808 (h!56701 (toList!4449 (tail!7824 lm!1477))) (t!357898 (toList!4449 (tail!7824 lm!1477)))) Nil!50808)))))

(declare-fun b!4546673 () Bool)

(assert (=> b!4546673 (= e!2833484 (contains!13632 lt!1720403 (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038))))))

(declare-fun b!4546674 () Bool)

(declare-fun call!317024 () List!50932)

(assert (=> b!4546674 (= e!2833482 call!317024)))

(declare-fun bm!317018 () Bool)

(declare-fun call!317025 () List!50932)

(assert (=> bm!317018 (= call!317024 call!317025)))

(declare-fun bm!317019 () Bool)

(assert (=> bm!317019 (= call!317023 call!317024)))

(declare-fun bm!317020 () Bool)

(declare-fun $colon$colon!973 (List!50932 tuple2!51320) List!50932)

(assert (=> bm!317020 (= call!317025 ($colon$colon!973 e!2833483 (ite c!776662 (h!56701 (toList!4449 (tail!7824 lm!1477))) (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))))

(declare-fun c!776663 () Bool)

(assert (=> bm!317020 (= c!776663 c!776662)))

(declare-fun b!4546675 () Bool)

(assert (=> b!4546675 (= e!2833480 call!317025)))

(declare-fun b!4546676 () Bool)

(assert (=> b!4546676 (= e!2833483 (insertStrictlySorted!445 (t!357898 (toList!4449 (tail!7824 lm!1477))) (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(assert (= (and d!1406857 c!776662) b!4546675))

(assert (= (and d!1406857 (not c!776662)) b!4546667))

(assert (= (and b!4546667 c!776660) b!4546674))

(assert (= (and b!4546667 (not c!776660)) b!4546671))

(assert (= (and b!4546671 c!776661) b!4546670))

(assert (= (and b!4546671 (not c!776661)) b!4546669))

(assert (= (or b!4546670 b!4546669) bm!317019))

(assert (= (or b!4546674 bm!317019) bm!317018))

(assert (= (or b!4546675 bm!317018) bm!317020))

(assert (= (and bm!317020 c!776663) b!4546676))

(assert (= (and bm!317020 (not c!776663)) b!4546672))

(assert (= (and d!1406857 res!1895816) b!4546668))

(assert (= (and b!4546668 res!1895815) b!4546673))

(declare-fun m!5318777 () Bool)

(assert (=> b!4546676 m!5318777))

(declare-fun m!5318781 () Bool)

(assert (=> bm!317020 m!5318781))

(declare-fun m!5318783 () Bool)

(assert (=> b!4546668 m!5318783))

(declare-fun m!5318785 () Bool)

(assert (=> d!1406857 m!5318785))

(declare-fun m!5318787 () Bool)

(assert (=> d!1406857 m!5318787))

(declare-fun m!5318789 () Bool)

(assert (=> b!4546673 m!5318789))

(assert (=> d!1406661 d!1406857))

(declare-fun d!1406861 () Bool)

(declare-fun res!1895818 () Bool)

(declare-fun e!2833485 () Bool)

(assert (=> d!1406861 (=> res!1895818 e!2833485)))

(declare-fun e!2833486 () Bool)

(assert (=> d!1406861 (= res!1895818 e!2833486)))

(declare-fun res!1895819 () Bool)

(assert (=> d!1406861 (=> (not res!1895819) (not e!2833486))))

(assert (=> d!1406861 (= res!1895819 (is-Cons!50808 (t!357898 lt!1720035)))))

(assert (=> d!1406861 (= (containsKeyBiggerList!199 (t!357898 lt!1720035) key!3287) e!2833485)))

(declare-fun b!4546677 () Bool)

(assert (=> b!4546677 (= e!2833486 (containsKey!1920 (_2!28954 (h!56701 (t!357898 lt!1720035))) key!3287))))

(declare-fun b!4546678 () Bool)

(declare-fun e!2833487 () Bool)

(assert (=> b!4546678 (= e!2833485 e!2833487)))

(declare-fun res!1895817 () Bool)

(assert (=> b!4546678 (=> (not res!1895817) (not e!2833487))))

(assert (=> b!4546678 (= res!1895817 (is-Cons!50808 (t!357898 lt!1720035)))))

(declare-fun b!4546679 () Bool)

(assert (=> b!4546679 (= e!2833487 (containsKeyBiggerList!199 (t!357898 (t!357898 lt!1720035)) key!3287))))

(assert (= (and d!1406861 res!1895819) b!4546677))

(assert (= (and d!1406861 (not res!1895818)) b!4546678))

(assert (= (and b!4546678 res!1895817) b!4546679))

(declare-fun m!5318791 () Bool)

(assert (=> b!4546677 m!5318791))

(declare-fun m!5318793 () Bool)

(assert (=> b!4546679 m!5318793))

(assert (=> b!4546311 d!1406861))

(declare-fun d!1406863 () Bool)

(declare-fun lt!1720407 () Bool)

(assert (=> d!1406863 (= lt!1720407 (set.member key!3287 (content!8470 (keys!17696 (extractMap!1277 lt!1720035)))))))

(declare-fun e!2833497 () Bool)

(assert (=> d!1406863 (= lt!1720407 e!2833497)))

(declare-fun res!1895826 () Bool)

(assert (=> d!1406863 (=> (not res!1895826) (not e!2833497))))

(assert (=> d!1406863 (= res!1895826 (is-Cons!50811 (keys!17696 (extractMap!1277 lt!1720035))))))

(assert (=> d!1406863 (= (contains!13637 (keys!17696 (extractMap!1277 lt!1720035)) key!3287) lt!1720407)))

(declare-fun b!4546690 () Bool)

(declare-fun e!2833496 () Bool)

(assert (=> b!4546690 (= e!2833497 e!2833496)))

(declare-fun res!1895827 () Bool)

(assert (=> b!4546690 (=> res!1895827 e!2833496)))

(assert (=> b!4546690 (= res!1895827 (= (h!56706 (keys!17696 (extractMap!1277 lt!1720035))) key!3287))))

(declare-fun b!4546691 () Bool)

(assert (=> b!4546691 (= e!2833496 (contains!13637 (t!357901 (keys!17696 (extractMap!1277 lt!1720035))) key!3287))))

(assert (= (and d!1406863 res!1895826) b!4546690))

(assert (= (and b!4546690 (not res!1895827)) b!4546691))

(assert (=> d!1406863 m!5318293))

(declare-fun m!5318807 () Bool)

(assert (=> d!1406863 m!5318807))

(declare-fun m!5318809 () Bool)

(assert (=> d!1406863 m!5318809))

(declare-fun m!5318811 () Bool)

(assert (=> b!4546691 m!5318811))

(assert (=> b!4546354 d!1406863))

(declare-fun bs!884834 () Bool)

(declare-fun b!4546699 () Bool)

(assert (= bs!884834 (and b!4546699 b!4546587)))

(declare-fun lambda!177440 () Int)

(assert (=> bs!884834 (= (= (toList!4450 (extractMap!1277 lt!1720035)) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177440 lambda!177420))))

(declare-fun bs!884835 () Bool)

(assert (= bs!884835 (and b!4546699 b!4546584)))

(assert (=> bs!884835 (= (= (toList!4450 (extractMap!1277 lt!1720035)) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177440 lambda!177421))))

(declare-fun bs!884836 () Bool)

(assert (= bs!884836 (and b!4546699 b!4546586)))

(assert (=> bs!884836 (= lambda!177440 lambda!177422)))

(assert (=> b!4546699 true))

(declare-fun bs!884837 () Bool)

(declare-fun b!4546700 () Bool)

(assert (= bs!884837 (and b!4546700 b!4546588)))

(declare-fun lambda!177441 () Int)

(assert (=> bs!884837 (= lambda!177441 lambda!177423)))

(declare-fun d!1406871 () Bool)

(declare-fun e!2833500 () Bool)

(assert (=> d!1406871 e!2833500))

(declare-fun res!1895835 () Bool)

(assert (=> d!1406871 (=> (not res!1895835) (not e!2833500))))

(declare-fun lt!1720410 () List!50935)

(assert (=> d!1406871 (= res!1895835 (noDuplicate!765 lt!1720410))))

(assert (=> d!1406871 (= lt!1720410 (getKeysList!503 (toList!4450 (extractMap!1277 lt!1720035))))))

(assert (=> d!1406871 (= (keys!17696 (extractMap!1277 lt!1720035)) lt!1720410)))

(declare-fun b!4546698 () Bool)

(declare-fun res!1895836 () Bool)

(assert (=> b!4546698 (=> (not res!1895836) (not e!2833500))))

(assert (=> b!4546698 (= res!1895836 (= (length!386 lt!1720410) (length!387 (toList!4450 (extractMap!1277 lt!1720035)))))))

(declare-fun res!1895834 () Bool)

(assert (=> b!4546699 (=> (not res!1895834) (not e!2833500))))

(assert (=> b!4546699 (= res!1895834 (forall!10386 lt!1720410 lambda!177440))))

(assert (=> b!4546700 (= e!2833500 (= (content!8470 lt!1720410) (content!8470 (map!11187 (toList!4450 (extractMap!1277 lt!1720035)) lambda!177441))))))

(assert (= (and d!1406871 res!1895835) b!4546698))

(assert (= (and b!4546698 res!1895836) b!4546699))

(assert (= (and b!4546699 res!1895834) b!4546700))

(declare-fun m!5318813 () Bool)

(assert (=> d!1406871 m!5318813))

(assert (=> d!1406871 m!5318299))

(declare-fun m!5318815 () Bool)

(assert (=> b!4546698 m!5318815))

(assert (=> b!4546698 m!5318711))

(declare-fun m!5318817 () Bool)

(assert (=> b!4546699 m!5318817))

(declare-fun m!5318819 () Bool)

(assert (=> b!4546700 m!5318819))

(declare-fun m!5318821 () Bool)

(assert (=> b!4546700 m!5318821))

(assert (=> b!4546700 m!5318821))

(declare-fun m!5318823 () Bool)

(assert (=> b!4546700 m!5318823))

(assert (=> b!4546354 d!1406871))

(assert (=> d!1406733 d!1406751))

(declare-fun d!1406873 () Bool)

(assert (=> d!1406873 (eq!672 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)) (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))))

(assert (=> d!1406873 true))

(declare-fun _$18!234 () Unit!99525)

(assert (=> d!1406873 (= (choose!30023 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!234)))

(declare-fun bs!884838 () Bool)

(assert (= bs!884838 d!1406873))

(assert (=> bs!884838 m!5318385))

(assert (=> bs!884838 m!5318049))

(assert (=> bs!884838 m!5318049))

(assert (=> bs!884838 m!5318043))

(assert (=> bs!884838 m!5318385))

(assert (=> bs!884838 m!5318043))

(assert (=> bs!884838 m!5318399))

(assert (=> d!1406733 d!1406873))

(assert (=> d!1406733 d!1406717))

(declare-fun d!1406875 () Bool)

(declare-fun res!1895837 () Bool)

(declare-fun e!2833501 () Bool)

(assert (=> d!1406875 (=> res!1895837 e!2833501)))

(assert (=> d!1406875 (= res!1895837 (not (is-Cons!50807 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(assert (=> d!1406875 (= (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477)))) e!2833501)))

(declare-fun b!4546703 () Bool)

(declare-fun e!2833502 () Bool)

(assert (=> b!4546703 (= e!2833501 e!2833502)))

(declare-fun res!1895838 () Bool)

(assert (=> b!4546703 (=> (not res!1895838) (not e!2833502))))

(assert (=> b!4546703 (= res!1895838 (not (containsKey!1920 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))) (_1!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))))

(declare-fun b!4546704 () Bool)

(assert (=> b!4546704 (= e!2833502 (noDuplicateKeys!1221 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(assert (= (and d!1406875 (not res!1895837)) b!4546703))

(assert (= (and b!4546703 res!1895838) b!4546704))

(declare-fun m!5318825 () Bool)

(assert (=> b!4546703 m!5318825))

(declare-fun m!5318827 () Bool)

(assert (=> b!4546704 m!5318827))

(assert (=> d!1406733 d!1406875))

(declare-fun bs!884839 () Bool)

(declare-fun d!1406877 () Bool)

(assert (= bs!884839 (and d!1406877 d!1406679)))

(declare-fun lambda!177442 () Int)

(assert (=> bs!884839 (= lambda!177442 lambda!177329)))

(declare-fun bs!884840 () Bool)

(assert (= bs!884840 (and d!1406877 d!1406709)))

(assert (=> bs!884840 (not (= lambda!177442 lambda!177341))))

(declare-fun bs!884841 () Bool)

(assert (= bs!884841 (and d!1406877 start!451626)))

(assert (=> bs!884841 (= lambda!177442 lambda!177318)))

(declare-fun bs!884842 () Bool)

(assert (= bs!884842 (and d!1406877 d!1406757)))

(assert (=> bs!884842 (= lambda!177442 lambda!177362)))

(declare-fun bs!884843 () Bool)

(assert (= bs!884843 (and d!1406877 d!1406825)))

(assert (=> bs!884843 (= lambda!177442 lambda!177410)))

(declare-fun bs!884844 () Bool)

(assert (= bs!884844 (and d!1406877 d!1406693)))

(assert (=> bs!884844 (= lambda!177442 lambda!177335)))

(declare-fun bs!884845 () Bool)

(assert (= bs!884845 (and d!1406877 d!1406713)))

(assert (=> bs!884845 (= lambda!177442 lambda!177342)))

(declare-fun bs!884846 () Bool)

(assert (= bs!884846 (and d!1406877 d!1406723)))

(assert (=> bs!884846 (= lambda!177442 lambda!177348)))

(declare-fun bs!884847 () Bool)

(assert (= bs!884847 (and d!1406877 d!1406747)))

(assert (=> bs!884847 (= lambda!177442 lambda!177358)))

(declare-fun bs!884848 () Bool)

(assert (= bs!884848 (and d!1406877 d!1406751)))

(assert (=> bs!884848 (= lambda!177442 lambda!177359)))

(declare-fun lt!1720411 () ListMap!3711)

(assert (=> d!1406877 (invariantList!1055 (toList!4450 lt!1720411))))

(declare-fun e!2833503 () ListMap!3711)

(assert (=> d!1406877 (= lt!1720411 e!2833503)))

(declare-fun c!776666 () Bool)

(assert (=> d!1406877 (= c!776666 (is-Cons!50808 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)))))

(assert (=> d!1406877 (forall!10382 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808) lambda!177442)))

(assert (=> d!1406877 (= (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)) lt!1720411)))

(declare-fun b!4546705 () Bool)

(assert (=> b!4546705 (= e!2833503 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)))))))

(declare-fun b!4546706 () Bool)

(assert (=> b!4546706 (= e!2833503 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406877 c!776666) b!4546705))

(assert (= (and d!1406877 (not c!776666)) b!4546706))

(declare-fun m!5318829 () Bool)

(assert (=> d!1406877 m!5318829))

(declare-fun m!5318831 () Bool)

(assert (=> d!1406877 m!5318831))

(declare-fun m!5318833 () Bool)

(assert (=> b!4546705 m!5318833))

(assert (=> b!4546705 m!5318833))

(declare-fun m!5318835 () Bool)

(assert (=> b!4546705 m!5318835))

(assert (=> d!1406733 d!1406877))

(declare-fun d!1406879 () Bool)

(assert (=> d!1406879 (= (eq!672 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)) (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287)) (= (content!8471 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 newBucket!178) Nil!50808)))) (content!8471 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287)))))))

(declare-fun bs!884849 () Bool)

(assert (= bs!884849 d!1406879))

(declare-fun m!5318837 () Bool)

(assert (=> bs!884849 m!5318837))

(assert (=> bs!884849 m!5318343))

(assert (=> d!1406733 d!1406879))

(declare-fun d!1406881 () Bool)

(declare-fun c!776669 () Bool)

(assert (=> d!1406881 (= c!776669 (is-Nil!50807 (toList!4450 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)))))))

(declare-fun e!2833506 () (Set tuple2!51318))

(assert (=> d!1406881 (= (content!8471 (toList!4450 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)))) e!2833506)))

(declare-fun b!4546711 () Bool)

(assert (=> b!4546711 (= e!2833506 (as set.empty (Set tuple2!51318)))))

(declare-fun b!4546712 () Bool)

(assert (=> b!4546712 (= e!2833506 (set.union (set.insert (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)))) (as set.empty (Set tuple2!51318))) (content!8471 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 lt!1720038 Nil!50808)))))))))

(assert (= (and d!1406881 c!776669) b!4546711))

(assert (= (and d!1406881 (not c!776669)) b!4546712))

(declare-fun m!5318839 () Bool)

(assert (=> b!4546712 m!5318839))

(declare-fun m!5318841 () Bool)

(assert (=> b!4546712 m!5318841))

(assert (=> d!1406729 d!1406881))

(declare-fun c!776670 () Bool)

(declare-fun d!1406883 () Bool)

(assert (=> d!1406883 (= c!776670 (is-Nil!50807 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))))))

(declare-fun e!2833507 () (Set tuple2!51318))

(assert (=> d!1406883 (= (content!8471 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))) e!2833507)))

(declare-fun b!4546713 () Bool)

(assert (=> b!4546713 (= e!2833507 (as set.empty (Set tuple2!51318)))))

(declare-fun b!4546714 () Bool)

(assert (=> b!4546714 (= e!2833507 (set.union (set.insert (h!56700 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))) (as set.empty (Set tuple2!51318))) (content!8471 (t!357897 (toList!4450 (-!441 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) key!3287))))))))

(assert (= (and d!1406883 c!776670) b!4546713))

(assert (= (and d!1406883 (not c!776670)) b!4546714))

(declare-fun m!5318843 () Bool)

(assert (=> b!4546714 m!5318843))

(declare-fun m!5318845 () Bool)

(assert (=> b!4546714 m!5318845))

(assert (=> d!1406729 d!1406883))

(declare-fun d!1406885 () Bool)

(declare-fun e!2833509 () Bool)

(assert (=> d!1406885 e!2833509))

(declare-fun res!1895839 () Bool)

(assert (=> d!1406885 (=> res!1895839 e!2833509)))

(declare-fun lt!1720412 () Bool)

(assert (=> d!1406885 (= res!1895839 (not lt!1720412))))

(declare-fun lt!1720413 () Bool)

(assert (=> d!1406885 (= lt!1720412 lt!1720413)))

(declare-fun lt!1720415 () Unit!99525)

(declare-fun e!2833508 () Unit!99525)

(assert (=> d!1406885 (= lt!1720415 e!2833508)))

(declare-fun c!776671 () Bool)

(assert (=> d!1406885 (= c!776671 lt!1720413)))

(assert (=> d!1406885 (= lt!1720413 (containsKey!1925 (toList!4449 lm!1477) (hash!2963 hashF!1107 key!3287)))))

(assert (=> d!1406885 (= (contains!13633 lm!1477 (hash!2963 hashF!1107 key!3287)) lt!1720412)))

(declare-fun b!4546715 () Bool)

(declare-fun lt!1720414 () Unit!99525)

(assert (=> b!4546715 (= e!2833508 lt!1720414)))

(assert (=> b!4546715 (= lt!1720414 (lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (toList!4449 lm!1477) (hash!2963 hashF!1107 key!3287)))))

(assert (=> b!4546715 (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) (hash!2963 hashF!1107 key!3287)))))

(declare-fun b!4546716 () Bool)

(declare-fun Unit!99559 () Unit!99525)

(assert (=> b!4546716 (= e!2833508 Unit!99559)))

(declare-fun b!4546717 () Bool)

(assert (=> b!4546717 (= e!2833509 (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) (hash!2963 hashF!1107 key!3287))))))

(assert (= (and d!1406885 c!776671) b!4546715))

(assert (= (and d!1406885 (not c!776671)) b!4546716))

(assert (= (and d!1406885 (not res!1895839)) b!4546717))

(assert (=> d!1406885 m!5318075))

(declare-fun m!5318847 () Bool)

(assert (=> d!1406885 m!5318847))

(assert (=> b!4546715 m!5318075))

(declare-fun m!5318849 () Bool)

(assert (=> b!4546715 m!5318849))

(assert (=> b!4546715 m!5318075))

(declare-fun m!5318851 () Bool)

(assert (=> b!4546715 m!5318851))

(assert (=> b!4546715 m!5318851))

(declare-fun m!5318853 () Bool)

(assert (=> b!4546715 m!5318853))

(assert (=> b!4546717 m!5318075))

(assert (=> b!4546717 m!5318851))

(assert (=> b!4546717 m!5318851))

(assert (=> b!4546717 m!5318853))

(assert (=> d!1406757 d!1406885))

(assert (=> d!1406757 d!1406689))

(declare-fun d!1406887 () Bool)

(assert (=> d!1406887 (contains!13633 lm!1477 (hash!2963 hashF!1107 key!3287))))

(assert (=> d!1406887 true))

(declare-fun _$27!1287 () Unit!99525)

(assert (=> d!1406887 (= (choose!30026 lm!1477 key!3287 hashF!1107) _$27!1287)))

(declare-fun bs!884850 () Bool)

(assert (= bs!884850 d!1406887))

(assert (=> bs!884850 m!5318075))

(assert (=> bs!884850 m!5318075))

(assert (=> bs!884850 m!5318445))

(assert (=> d!1406757 d!1406887))

(declare-fun d!1406889 () Bool)

(declare-fun res!1895840 () Bool)

(declare-fun e!2833510 () Bool)

(assert (=> d!1406889 (=> res!1895840 e!2833510)))

(assert (=> d!1406889 (= res!1895840 (is-Nil!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406889 (= (forall!10382 (toList!4449 lm!1477) lambda!177362) e!2833510)))

(declare-fun b!4546718 () Bool)

(declare-fun e!2833511 () Bool)

(assert (=> b!4546718 (= e!2833510 e!2833511)))

(declare-fun res!1895841 () Bool)

(assert (=> b!4546718 (=> (not res!1895841) (not e!2833511))))

(assert (=> b!4546718 (= res!1895841 (dynLambda!21240 lambda!177362 (h!56701 (toList!4449 lm!1477))))))

(declare-fun b!4546719 () Bool)

(assert (=> b!4546719 (= e!2833511 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177362))))

(assert (= (and d!1406889 (not res!1895840)) b!4546718))

(assert (= (and b!4546718 res!1895841) b!4546719))

(declare-fun b_lambda!158943 () Bool)

(assert (=> (not b_lambda!158943) (not b!4546718)))

(declare-fun m!5318855 () Bool)

(assert (=> b!4546718 m!5318855))

(declare-fun m!5318857 () Bool)

(assert (=> b!4546719 m!5318857))

(assert (=> d!1406757 d!1406889))

(declare-fun d!1406891 () Bool)

(declare-fun lt!1720416 () Bool)

(assert (=> d!1406891 (= lt!1720416 (set.member lt!1720038 (content!8473 (toList!4449 lt!1720200))))))

(declare-fun e!2833513 () Bool)

(assert (=> d!1406891 (= lt!1720416 e!2833513)))

(declare-fun res!1895843 () Bool)

(assert (=> d!1406891 (=> (not res!1895843) (not e!2833513))))

(assert (=> d!1406891 (= res!1895843 (is-Cons!50808 (toList!4449 lt!1720200)))))

(assert (=> d!1406891 (= (contains!13632 (toList!4449 lt!1720200) lt!1720038) lt!1720416)))

(declare-fun b!4546720 () Bool)

(declare-fun e!2833512 () Bool)

(assert (=> b!4546720 (= e!2833513 e!2833512)))

(declare-fun res!1895842 () Bool)

(assert (=> b!4546720 (=> res!1895842 e!2833512)))

(assert (=> b!4546720 (= res!1895842 (= (h!56701 (toList!4449 lt!1720200)) lt!1720038))))

(declare-fun b!4546721 () Bool)

(assert (=> b!4546721 (= e!2833512 (contains!13632 (t!357898 (toList!4449 lt!1720200)) lt!1720038))))

(assert (= (and d!1406891 res!1895843) b!4546720))

(assert (= (and b!4546720 (not res!1895842)) b!4546721))

(declare-fun m!5318859 () Bool)

(assert (=> d!1406891 m!5318859))

(declare-fun m!5318861 () Bool)

(assert (=> d!1406891 m!5318861))

(declare-fun m!5318863 () Bool)

(assert (=> b!4546721 m!5318863))

(assert (=> b!4546375 d!1406891))

(declare-fun d!1406893 () Bool)

(declare-fun c!776674 () Bool)

(assert (=> d!1406893 (= c!776674 (is-Nil!50811 (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun e!2833516 () (Set K!12193))

(assert (=> d!1406893 (= (content!8470 (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) e!2833516)))

(declare-fun b!4546726 () Bool)

(assert (=> b!4546726 (= e!2833516 (as set.empty (Set K!12193)))))

(declare-fun b!4546727 () Bool)

(assert (=> b!4546727 (= e!2833516 (set.union (set.insert (h!56706 (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (as set.empty (Set K!12193))) (content!8470 (t!357901 (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(assert (= (and d!1406893 c!776674) b!4546726))

(assert (= (and d!1406893 (not c!776674)) b!4546727))

(declare-fun m!5318865 () Bool)

(assert (=> b!4546727 m!5318865))

(declare-fun m!5318867 () Bool)

(assert (=> b!4546727 m!5318867))

(assert (=> b!4546367 d!1406893))

(declare-fun bs!884851 () Bool)

(declare-fun b!4546729 () Bool)

(assert (= bs!884851 (and b!4546729 b!4546587)))

(declare-fun lambda!177443 () Int)

(assert (=> bs!884851 (= (= (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177443 lambda!177420))))

(declare-fun bs!884852 () Bool)

(assert (= bs!884852 (and b!4546729 b!4546584)))

(assert (=> bs!884852 (= (= (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177443 lambda!177421))))

(declare-fun bs!884853 () Bool)

(assert (= bs!884853 (and b!4546729 b!4546586)))

(assert (=> bs!884853 (= (= (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177443 lambda!177422))))

(declare-fun bs!884854 () Bool)

(assert (= bs!884854 (and b!4546729 b!4546699)))

(assert (=> bs!884854 (= (= (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177443 lambda!177440))))

(assert (=> b!4546729 true))

(declare-fun bs!884855 () Bool)

(declare-fun b!4546730 () Bool)

(assert (= bs!884855 (and b!4546730 b!4546588)))

(declare-fun lambda!177444 () Int)

(assert (=> bs!884855 (= lambda!177444 lambda!177423)))

(declare-fun bs!884856 () Bool)

(assert (= bs!884856 (and b!4546730 b!4546700)))

(assert (=> bs!884856 (= lambda!177444 lambda!177441)))

(declare-fun d!1406895 () Bool)

(declare-fun e!2833517 () Bool)

(assert (=> d!1406895 e!2833517))

(declare-fun res!1895845 () Bool)

(assert (=> d!1406895 (=> (not res!1895845) (not e!2833517))))

(declare-fun lt!1720417 () List!50935)

(assert (=> d!1406895 (= res!1895845 (noDuplicate!765 lt!1720417))))

(assert (=> d!1406895 (= lt!1720417 (getKeysList!503 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(assert (=> d!1406895 (= (keys!17696 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lt!1720417)))

(declare-fun b!4546728 () Bool)

(declare-fun res!1895846 () Bool)

(assert (=> b!4546728 (=> (not res!1895846) (not e!2833517))))

(assert (=> b!4546728 (= res!1895846 (= (length!386 lt!1720417) (length!387 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun res!1895844 () Bool)

(assert (=> b!4546729 (=> (not res!1895844) (not e!2833517))))

(assert (=> b!4546729 (= res!1895844 (forall!10386 lt!1720417 lambda!177443))))

(assert (=> b!4546730 (= e!2833517 (= (content!8470 lt!1720417) (content!8470 (map!11187 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) lambda!177444))))))

(assert (= (and d!1406895 res!1895845) b!4546728))

(assert (= (and b!4546728 res!1895846) b!4546729))

(assert (= (and b!4546729 res!1895844) b!4546730))

(declare-fun m!5318869 () Bool)

(assert (=> d!1406895 m!5318869))

(declare-fun m!5318871 () Bool)

(assert (=> d!1406895 m!5318871))

(declare-fun m!5318873 () Bool)

(assert (=> b!4546728 m!5318873))

(declare-fun m!5318875 () Bool)

(assert (=> b!4546728 m!5318875))

(declare-fun m!5318877 () Bool)

(assert (=> b!4546729 m!5318877))

(declare-fun m!5318879 () Bool)

(assert (=> b!4546730 m!5318879))

(declare-fun m!5318881 () Bool)

(assert (=> b!4546730 m!5318881))

(assert (=> b!4546730 m!5318881))

(declare-fun m!5318883 () Bool)

(assert (=> b!4546730 m!5318883))

(assert (=> b!4546367 d!1406895))

(declare-fun d!1406897 () Bool)

(declare-fun c!776675 () Bool)

(assert (=> d!1406897 (= c!776675 (is-Nil!50811 (keys!17696 lt!1720192)))))

(declare-fun e!2833518 () (Set K!12193))

(assert (=> d!1406897 (= (content!8470 (keys!17696 lt!1720192)) e!2833518)))

(declare-fun b!4546731 () Bool)

(assert (=> b!4546731 (= e!2833518 (as set.empty (Set K!12193)))))

(declare-fun b!4546732 () Bool)

(assert (=> b!4546732 (= e!2833518 (set.union (set.insert (h!56706 (keys!17696 lt!1720192)) (as set.empty (Set K!12193))) (content!8470 (t!357901 (keys!17696 lt!1720192)))))))

(assert (= (and d!1406897 c!776675) b!4546731))

(assert (= (and d!1406897 (not c!776675)) b!4546732))

(declare-fun m!5318885 () Bool)

(assert (=> b!4546732 m!5318885))

(declare-fun m!5318887 () Bool)

(assert (=> b!4546732 m!5318887))

(assert (=> b!4546367 d!1406897))

(declare-fun bs!884857 () Bool)

(declare-fun b!4546734 () Bool)

(assert (= bs!884857 (and b!4546734 b!4546699)))

(declare-fun lambda!177445 () Int)

(assert (=> bs!884857 (= (= (toList!4450 lt!1720192) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177445 lambda!177440))))

(declare-fun bs!884858 () Bool)

(assert (= bs!884858 (and b!4546734 b!4546587)))

(assert (=> bs!884858 (= (= (toList!4450 lt!1720192) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177445 lambda!177420))))

(declare-fun bs!884859 () Bool)

(assert (= bs!884859 (and b!4546734 b!4546584)))

(assert (=> bs!884859 (= (= (toList!4450 lt!1720192) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177445 lambda!177421))))

(declare-fun bs!884860 () Bool)

(assert (= bs!884860 (and b!4546734 b!4546586)))

(assert (=> bs!884860 (= (= (toList!4450 lt!1720192) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177445 lambda!177422))))

(declare-fun bs!884861 () Bool)

(assert (= bs!884861 (and b!4546734 b!4546729)))

(assert (=> bs!884861 (= (= (toList!4450 lt!1720192) (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177445 lambda!177443))))

(assert (=> b!4546734 true))

(declare-fun bs!884862 () Bool)

(declare-fun b!4546735 () Bool)

(assert (= bs!884862 (and b!4546735 b!4546588)))

(declare-fun lambda!177446 () Int)

(assert (=> bs!884862 (= lambda!177446 lambda!177423)))

(declare-fun bs!884863 () Bool)

(assert (= bs!884863 (and b!4546735 b!4546700)))

(assert (=> bs!884863 (= lambda!177446 lambda!177441)))

(declare-fun bs!884864 () Bool)

(assert (= bs!884864 (and b!4546735 b!4546730)))

(assert (=> bs!884864 (= lambda!177446 lambda!177444)))

(declare-fun d!1406899 () Bool)

(declare-fun e!2833519 () Bool)

(assert (=> d!1406899 e!2833519))

(declare-fun res!1895848 () Bool)

(assert (=> d!1406899 (=> (not res!1895848) (not e!2833519))))

(declare-fun lt!1720418 () List!50935)

(assert (=> d!1406899 (= res!1895848 (noDuplicate!765 lt!1720418))))

(assert (=> d!1406899 (= lt!1720418 (getKeysList!503 (toList!4450 lt!1720192)))))

(assert (=> d!1406899 (= (keys!17696 lt!1720192) lt!1720418)))

(declare-fun b!4546733 () Bool)

(declare-fun res!1895849 () Bool)

(assert (=> b!4546733 (=> (not res!1895849) (not e!2833519))))

(assert (=> b!4546733 (= res!1895849 (= (length!386 lt!1720418) (length!387 (toList!4450 lt!1720192))))))

(declare-fun res!1895847 () Bool)

(assert (=> b!4546734 (=> (not res!1895847) (not e!2833519))))

(assert (=> b!4546734 (= res!1895847 (forall!10386 lt!1720418 lambda!177445))))

(assert (=> b!4546735 (= e!2833519 (= (content!8470 lt!1720418) (content!8470 (map!11187 (toList!4450 lt!1720192) lambda!177446))))))

(assert (= (and d!1406899 res!1895848) b!4546733))

(assert (= (and b!4546733 res!1895849) b!4546734))

(assert (= (and b!4546734 res!1895847) b!4546735))

(declare-fun m!5318889 () Bool)

(assert (=> d!1406899 m!5318889))

(declare-fun m!5318891 () Bool)

(assert (=> d!1406899 m!5318891))

(declare-fun m!5318893 () Bool)

(assert (=> b!4546733 m!5318893))

(declare-fun m!5318895 () Bool)

(assert (=> b!4546733 m!5318895))

(declare-fun m!5318897 () Bool)

(assert (=> b!4546734 m!5318897))

(declare-fun m!5318899 () Bool)

(assert (=> b!4546735 m!5318899))

(declare-fun m!5318901 () Bool)

(assert (=> b!4546735 m!5318901))

(assert (=> b!4546735 m!5318901))

(declare-fun m!5318903 () Bool)

(assert (=> b!4546735 m!5318903))

(assert (=> b!4546367 d!1406899))

(declare-fun d!1406901 () Bool)

(declare-fun res!1895850 () Bool)

(declare-fun e!2833520 () Bool)

(assert (=> d!1406901 (=> res!1895850 e!2833520)))

(assert (=> d!1406901 (= res!1895850 (and (is-Cons!50807 lt!1720256) (= (_1!28953 (h!56700 lt!1720256)) key!3287)))))

(assert (=> d!1406901 (= (containsKey!1920 lt!1720256 key!3287) e!2833520)))

(declare-fun b!4546736 () Bool)

(declare-fun e!2833521 () Bool)

(assert (=> b!4546736 (= e!2833520 e!2833521)))

(declare-fun res!1895851 () Bool)

(assert (=> b!4546736 (=> (not res!1895851) (not e!2833521))))

(assert (=> b!4546736 (= res!1895851 (is-Cons!50807 lt!1720256))))

(declare-fun b!4546737 () Bool)

(assert (=> b!4546737 (= e!2833521 (containsKey!1920 (t!357897 lt!1720256) key!3287))))

(assert (= (and d!1406901 (not res!1895850)) b!4546736))

(assert (= (and b!4546736 res!1895851) b!4546737))

(declare-fun m!5318905 () Bool)

(assert (=> b!4546737 m!5318905))

(assert (=> d!1406773 d!1406901))

(declare-fun d!1406903 () Bool)

(declare-fun res!1895852 () Bool)

(declare-fun e!2833522 () Bool)

(assert (=> d!1406903 (=> res!1895852 e!2833522)))

(assert (=> d!1406903 (= res!1895852 (not (is-Cons!50807 lt!1720030)))))

(assert (=> d!1406903 (= (noDuplicateKeys!1221 lt!1720030) e!2833522)))

(declare-fun b!4546738 () Bool)

(declare-fun e!2833523 () Bool)

(assert (=> b!4546738 (= e!2833522 e!2833523)))

(declare-fun res!1895853 () Bool)

(assert (=> b!4546738 (=> (not res!1895853) (not e!2833523))))

(assert (=> b!4546738 (= res!1895853 (not (containsKey!1920 (t!357897 lt!1720030) (_1!28953 (h!56700 lt!1720030)))))))

(declare-fun b!4546739 () Bool)

(assert (=> b!4546739 (= e!2833523 (noDuplicateKeys!1221 (t!357897 lt!1720030)))))

(assert (= (and d!1406903 (not res!1895852)) b!4546738))

(assert (= (and b!4546738 res!1895853) b!4546739))

(declare-fun m!5318907 () Bool)

(assert (=> b!4546738 m!5318907))

(declare-fun m!5318909 () Bool)

(assert (=> b!4546739 m!5318909))

(assert (=> d!1406773 d!1406903))

(declare-fun d!1406905 () Bool)

(declare-fun res!1895858 () Bool)

(declare-fun e!2833528 () Bool)

(assert (=> d!1406905 (=> res!1895858 e!2833528)))

(assert (=> d!1406905 (= res!1895858 (and (is-Cons!50807 (toList!4450 (extractMap!1277 lt!1720035))) (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035)))) key!3287)))))

(assert (=> d!1406905 (= (containsKey!1922 (toList!4450 (extractMap!1277 lt!1720035)) key!3287) e!2833528)))

(declare-fun b!4546744 () Bool)

(declare-fun e!2833529 () Bool)

(assert (=> b!4546744 (= e!2833528 e!2833529)))

(declare-fun res!1895859 () Bool)

(assert (=> b!4546744 (=> (not res!1895859) (not e!2833529))))

(assert (=> b!4546744 (= res!1895859 (is-Cons!50807 (toList!4450 (extractMap!1277 lt!1720035))))))

(declare-fun b!4546745 () Bool)

(assert (=> b!4546745 (= e!2833529 (containsKey!1922 (t!357897 (toList!4450 (extractMap!1277 lt!1720035))) key!3287))))

(assert (= (and d!1406905 (not res!1895858)) b!4546744))

(assert (= (and b!4546744 res!1895859) b!4546745))

(declare-fun m!5318911 () Bool)

(assert (=> b!4546745 m!5318911))

(assert (=> b!4546356 d!1406905))

(declare-fun d!1406907 () Bool)

(assert (=> d!1406907 (containsKey!1922 (toList!4450 (extractMap!1277 lt!1720035)) key!3287)))

(declare-fun lt!1720421 () Unit!99525)

(declare-fun choose!30032 (List!50931 K!12193) Unit!99525)

(assert (=> d!1406907 (= lt!1720421 (choose!30032 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> d!1406907 (invariantList!1055 (toList!4450 (extractMap!1277 lt!1720035)))))

(assert (=> d!1406907 (= (lemmaInGetKeysListThenContainsKey!502 (toList!4450 (extractMap!1277 lt!1720035)) key!3287) lt!1720421)))

(declare-fun bs!884865 () Bool)

(assert (= bs!884865 d!1406907))

(assert (=> bs!884865 m!5318291))

(declare-fun m!5318913 () Bool)

(assert (=> bs!884865 m!5318913))

(assert (=> bs!884865 m!5318707))

(assert (=> b!4546356 d!1406907))

(declare-fun d!1406909 () Bool)

(assert (=> d!1406909 (= (invariantList!1055 (toList!4450 lt!1720222)) (noDuplicatedKeys!280 (toList!4450 lt!1720222)))))

(declare-fun bs!884866 () Bool)

(assert (= bs!884866 d!1406909))

(declare-fun m!5318915 () Bool)

(assert (=> bs!884866 m!5318915))

(assert (=> d!1406751 d!1406909))

(declare-fun d!1406911 () Bool)

(declare-fun res!1895860 () Bool)

(declare-fun e!2833530 () Bool)

(assert (=> d!1406911 (=> res!1895860 e!2833530)))

(assert (=> d!1406911 (= res!1895860 (is-Nil!50808 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))

(assert (=> d!1406911 (= (forall!10382 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808) lambda!177359) e!2833530)))

(declare-fun b!4546746 () Bool)

(declare-fun e!2833531 () Bool)

(assert (=> b!4546746 (= e!2833530 e!2833531)))

(declare-fun res!1895861 () Bool)

(assert (=> b!4546746 (=> (not res!1895861) (not e!2833531))))

(assert (=> b!4546746 (= res!1895861 (dynLambda!21240 lambda!177359 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))

(declare-fun b!4546747 () Bool)

(assert (=> b!4546747 (= e!2833531 (forall!10382 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)) lambda!177359))))

(assert (= (and d!1406911 (not res!1895860)) b!4546746))

(assert (= (and b!4546746 res!1895861) b!4546747))

(declare-fun b_lambda!158945 () Bool)

(assert (=> (not b_lambda!158945) (not b!4546746)))

(declare-fun m!5318917 () Bool)

(assert (=> b!4546746 m!5318917))

(declare-fun m!5318919 () Bool)

(assert (=> b!4546747 m!5318919))

(assert (=> d!1406751 d!1406911))

(assert (=> b!4546404 d!1406775))

(assert (=> d!1406715 d!1406905))

(declare-fun b!4546751 () Bool)

(declare-fun e!2833533 () Option!11237)

(assert (=> b!4546751 (= e!2833533 None!11236)))

(declare-fun b!4546748 () Bool)

(declare-fun e!2833532 () Option!11237)

(assert (=> b!4546748 (= e!2833532 (Some!11236 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(declare-fun b!4546749 () Bool)

(assert (=> b!4546749 (= e!2833532 e!2833533)))

(declare-fun c!776677 () Bool)

(assert (=> b!4546749 (= c!776677 (and (is-Cons!50808 (toList!4449 lm!1477)) (not (= (_1!28954 (h!56701 (toList!4449 lm!1477))) hash!344))))))

(declare-fun b!4546750 () Bool)

(assert (=> b!4546750 (= e!2833533 (getValueByKey!1169 (t!357898 (toList!4449 lm!1477)) hash!344))))

(declare-fun d!1406913 () Bool)

(declare-fun c!776676 () Bool)

(assert (=> d!1406913 (= c!776676 (and (is-Cons!50808 (toList!4449 lm!1477)) (= (_1!28954 (h!56701 (toList!4449 lm!1477))) hash!344)))))

(assert (=> d!1406913 (= (getValueByKey!1169 (toList!4449 lm!1477) hash!344) e!2833532)))

(assert (= (and d!1406913 c!776676) b!4546748))

(assert (= (and d!1406913 (not c!776676)) b!4546749))

(assert (= (and b!4546749 c!776677) b!4546750))

(assert (= (and b!4546749 (not c!776677)) b!4546751))

(declare-fun m!5318921 () Bool)

(assert (=> b!4546750 m!5318921))

(assert (=> b!4546419 d!1406913))

(declare-fun d!1406915 () Bool)

(declare-fun e!2833535 () Bool)

(assert (=> d!1406915 e!2833535))

(declare-fun res!1895862 () Bool)

(assert (=> d!1406915 (=> res!1895862 e!2833535)))

(declare-fun lt!1720422 () Bool)

(assert (=> d!1406915 (= res!1895862 (not lt!1720422))))

(declare-fun lt!1720423 () Bool)

(assert (=> d!1406915 (= lt!1720422 lt!1720423)))

(declare-fun lt!1720425 () Unit!99525)

(declare-fun e!2833534 () Unit!99525)

(assert (=> d!1406915 (= lt!1720425 e!2833534)))

(declare-fun c!776678 () Bool)

(assert (=> d!1406915 (= c!776678 lt!1720423)))

(assert (=> d!1406915 (= lt!1720423 (containsKey!1925 (toList!4449 lt!1720200) (_1!28954 lt!1720038)))))

(assert (=> d!1406915 (= (contains!13633 lt!1720200 (_1!28954 lt!1720038)) lt!1720422)))

(declare-fun b!4546752 () Bool)

(declare-fun lt!1720424 () Unit!99525)

(assert (=> b!4546752 (= e!2833534 lt!1720424)))

(assert (=> b!4546752 (= lt!1720424 (lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (toList!4449 lt!1720200) (_1!28954 lt!1720038)))))

(assert (=> b!4546752 (isDefined!8512 (getValueByKey!1169 (toList!4449 lt!1720200) (_1!28954 lt!1720038)))))

(declare-fun b!4546753 () Bool)

(declare-fun Unit!99560 () Unit!99525)

(assert (=> b!4546753 (= e!2833534 Unit!99560)))

(declare-fun b!4546754 () Bool)

(assert (=> b!4546754 (= e!2833535 (isDefined!8512 (getValueByKey!1169 (toList!4449 lt!1720200) (_1!28954 lt!1720038))))))

(assert (= (and d!1406915 c!776678) b!4546752))

(assert (= (and d!1406915 (not c!776678)) b!4546753))

(assert (= (and d!1406915 (not res!1895862)) b!4546754))

(declare-fun m!5318923 () Bool)

(assert (=> d!1406915 m!5318923))

(declare-fun m!5318925 () Bool)

(assert (=> b!4546752 m!5318925))

(assert (=> b!4546752 m!5318353))

(assert (=> b!4546752 m!5318353))

(declare-fun m!5318927 () Bool)

(assert (=> b!4546752 m!5318927))

(assert (=> b!4546754 m!5318353))

(assert (=> b!4546754 m!5318353))

(assert (=> b!4546754 m!5318927))

(assert (=> d!1406731 d!1406915))

(declare-fun b!4546758 () Bool)

(declare-fun e!2833537 () Option!11237)

(assert (=> b!4546758 (= e!2833537 None!11236)))

(declare-fun b!4546755 () Bool)

(declare-fun e!2833536 () Option!11237)

(assert (=> b!4546755 (= e!2833536 (Some!11236 (_2!28954 (h!56701 lt!1720199))))))

(declare-fun b!4546756 () Bool)

(assert (=> b!4546756 (= e!2833536 e!2833537)))

(declare-fun c!776680 () Bool)

(assert (=> b!4546756 (= c!776680 (and (is-Cons!50808 lt!1720199) (not (= (_1!28954 (h!56701 lt!1720199)) (_1!28954 lt!1720038)))))))

(declare-fun b!4546757 () Bool)

(assert (=> b!4546757 (= e!2833537 (getValueByKey!1169 (t!357898 lt!1720199) (_1!28954 lt!1720038)))))

(declare-fun d!1406917 () Bool)

(declare-fun c!776679 () Bool)

(assert (=> d!1406917 (= c!776679 (and (is-Cons!50808 lt!1720199) (= (_1!28954 (h!56701 lt!1720199)) (_1!28954 lt!1720038))))))

(assert (=> d!1406917 (= (getValueByKey!1169 lt!1720199 (_1!28954 lt!1720038)) e!2833536)))

(assert (= (and d!1406917 c!776679) b!4546755))

(assert (= (and d!1406917 (not c!776679)) b!4546756))

(assert (= (and b!4546756 c!776680) b!4546757))

(assert (= (and b!4546756 (not c!776680)) b!4546758))

(declare-fun m!5318929 () Bool)

(assert (=> b!4546757 m!5318929))

(assert (=> d!1406731 d!1406917))

(declare-fun d!1406919 () Bool)

(assert (=> d!1406919 (= (getValueByKey!1169 lt!1720199 (_1!28954 lt!1720038)) (Some!11236 (_2!28954 lt!1720038)))))

(declare-fun lt!1720426 () Unit!99525)

(assert (=> d!1406919 (= lt!1720426 (choose!30030 lt!1720199 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(declare-fun e!2833538 () Bool)

(assert (=> d!1406919 e!2833538))

(declare-fun res!1895863 () Bool)

(assert (=> d!1406919 (=> (not res!1895863) (not e!2833538))))

(assert (=> d!1406919 (= res!1895863 (isStrictlySorted!469 lt!1720199))))

(assert (=> d!1406919 (= (lemmaContainsTupThenGetReturnValue!733 lt!1720199 (_1!28954 lt!1720038) (_2!28954 lt!1720038)) lt!1720426)))

(declare-fun b!4546759 () Bool)

(declare-fun res!1895864 () Bool)

(assert (=> b!4546759 (=> (not res!1895864) (not e!2833538))))

(assert (=> b!4546759 (= res!1895864 (containsKey!1925 lt!1720199 (_1!28954 lt!1720038)))))

(declare-fun b!4546760 () Bool)

(assert (=> b!4546760 (= e!2833538 (contains!13632 lt!1720199 (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038))))))

(assert (= (and d!1406919 res!1895863) b!4546759))

(assert (= (and b!4546759 res!1895864) b!4546760))

(assert (=> d!1406919 m!5318347))

(declare-fun m!5318931 () Bool)

(assert (=> d!1406919 m!5318931))

(declare-fun m!5318933 () Bool)

(assert (=> d!1406919 m!5318933))

(declare-fun m!5318935 () Bool)

(assert (=> b!4546759 m!5318935))

(declare-fun m!5318937 () Bool)

(assert (=> b!4546760 m!5318937))

(assert (=> d!1406731 d!1406919))

(declare-fun d!1406921 () Bool)

(declare-fun e!2833543 () Bool)

(assert (=> d!1406921 e!2833543))

(declare-fun res!1895866 () Bool)

(assert (=> d!1406921 (=> (not res!1895866) (not e!2833543))))

(declare-fun lt!1720427 () List!50932)

(assert (=> d!1406921 (= res!1895866 (isStrictlySorted!469 lt!1720427))))

(declare-fun e!2833539 () List!50932)

(assert (=> d!1406921 (= lt!1720427 e!2833539)))

(declare-fun c!776683 () Bool)

(assert (=> d!1406921 (= c!776683 (and (is-Cons!50808 (toList!4449 lm!1477)) (bvslt (_1!28954 (h!56701 (toList!4449 lm!1477))) (_1!28954 lt!1720038))))))

(assert (=> d!1406921 (isStrictlySorted!469 (toList!4449 lm!1477))))

(assert (=> d!1406921 (= (insertStrictlySorted!445 (toList!4449 lm!1477) (_1!28954 lt!1720038) (_2!28954 lt!1720038)) lt!1720427)))

(declare-fun b!4546761 () Bool)

(declare-fun e!2833541 () List!50932)

(assert (=> b!4546761 (= e!2833539 e!2833541)))

(declare-fun c!776681 () Bool)

(assert (=> b!4546761 (= c!776681 (and (is-Cons!50808 (toList!4449 lm!1477)) (= (_1!28954 (h!56701 (toList!4449 lm!1477))) (_1!28954 lt!1720038))))))

(declare-fun b!4546762 () Bool)

(declare-fun res!1895865 () Bool)

(assert (=> b!4546762 (=> (not res!1895865) (not e!2833543))))

(assert (=> b!4546762 (= res!1895865 (containsKey!1925 lt!1720427 (_1!28954 lt!1720038)))))

(declare-fun b!4546763 () Bool)

(declare-fun e!2833540 () List!50932)

(declare-fun call!317026 () List!50932)

(assert (=> b!4546763 (= e!2833540 call!317026)))

(declare-fun b!4546764 () Bool)

(assert (=> b!4546764 (= e!2833540 call!317026)))

(declare-fun b!4546765 () Bool)

(declare-fun c!776682 () Bool)

(assert (=> b!4546765 (= c!776682 (and (is-Cons!50808 (toList!4449 lm!1477)) (bvsgt (_1!28954 (h!56701 (toList!4449 lm!1477))) (_1!28954 lt!1720038))))))

(assert (=> b!4546765 (= e!2833541 e!2833540)))

(declare-fun b!4546766 () Bool)

(declare-fun e!2833542 () List!50932)

(assert (=> b!4546766 (= e!2833542 (ite c!776681 (t!357898 (toList!4449 lm!1477)) (ite c!776682 (Cons!50808 (h!56701 (toList!4449 lm!1477)) (t!357898 (toList!4449 lm!1477))) Nil!50808)))))

(declare-fun b!4546767 () Bool)

(assert (=> b!4546767 (= e!2833543 (contains!13632 lt!1720427 (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038))))))

(declare-fun b!4546768 () Bool)

(declare-fun call!317027 () List!50932)

(assert (=> b!4546768 (= e!2833541 call!317027)))

(declare-fun bm!317021 () Bool)

(declare-fun call!317028 () List!50932)

(assert (=> bm!317021 (= call!317027 call!317028)))

(declare-fun bm!317022 () Bool)

(assert (=> bm!317022 (= call!317026 call!317027)))

(declare-fun bm!317023 () Bool)

(assert (=> bm!317023 (= call!317028 ($colon$colon!973 e!2833542 (ite c!776683 (h!56701 (toList!4449 lm!1477)) (tuple2!51321 (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))))

(declare-fun c!776684 () Bool)

(assert (=> bm!317023 (= c!776684 c!776683)))

(declare-fun b!4546769 () Bool)

(assert (=> b!4546769 (= e!2833539 call!317028)))

(declare-fun b!4546770 () Bool)

(assert (=> b!4546770 (= e!2833542 (insertStrictlySorted!445 (t!357898 (toList!4449 lm!1477)) (_1!28954 lt!1720038) (_2!28954 lt!1720038)))))

(assert (= (and d!1406921 c!776683) b!4546769))

(assert (= (and d!1406921 (not c!776683)) b!4546761))

(assert (= (and b!4546761 c!776681) b!4546768))

(assert (= (and b!4546761 (not c!776681)) b!4546765))

(assert (= (and b!4546765 c!776682) b!4546764))

(assert (= (and b!4546765 (not c!776682)) b!4546763))

(assert (= (or b!4546764 b!4546763) bm!317022))

(assert (= (or b!4546768 bm!317022) bm!317021))

(assert (= (or b!4546769 bm!317021) bm!317023))

(assert (= (and bm!317023 c!776684) b!4546770))

(assert (= (and bm!317023 (not c!776684)) b!4546766))

(assert (= (and d!1406921 res!1895866) b!4546762))

(assert (= (and b!4546762 res!1895865) b!4546767))

(declare-fun m!5318939 () Bool)

(assert (=> b!4546770 m!5318939))

(declare-fun m!5318941 () Bool)

(assert (=> bm!317023 m!5318941))

(declare-fun m!5318943 () Bool)

(assert (=> b!4546762 m!5318943))

(declare-fun m!5318945 () Bool)

(assert (=> d!1406921 m!5318945))

(assert (=> d!1406921 m!5318253))

(declare-fun m!5318947 () Bool)

(assert (=> b!4546767 m!5318947))

(assert (=> d!1406731 d!1406921))

(declare-fun d!1406923 () Bool)

(declare-fun lt!1720428 () Bool)

(assert (=> d!1406923 (= lt!1720428 (set.member key!3287 (content!8470 (keys!17696 (extractMap!1277 (toList!4449 lm!1477))))))))

(declare-fun e!2833545 () Bool)

(assert (=> d!1406923 (= lt!1720428 e!2833545)))

(declare-fun res!1895867 () Bool)

(assert (=> d!1406923 (=> (not res!1895867) (not e!2833545))))

(assert (=> d!1406923 (= res!1895867 (is-Cons!50811 (keys!17696 (extractMap!1277 (toList!4449 lm!1477)))))))

(assert (=> d!1406923 (= (contains!13637 (keys!17696 (extractMap!1277 (toList!4449 lm!1477))) key!3287) lt!1720428)))

(declare-fun b!4546771 () Bool)

(declare-fun e!2833544 () Bool)

(assert (=> b!4546771 (= e!2833545 e!2833544)))

(declare-fun res!1895868 () Bool)

(assert (=> b!4546771 (=> res!1895868 e!2833544)))

(assert (=> b!4546771 (= res!1895868 (= (h!56706 (keys!17696 (extractMap!1277 (toList!4449 lm!1477)))) key!3287))))

(declare-fun b!4546772 () Bool)

(assert (=> b!4546772 (= e!2833544 (contains!13637 (t!357901 (keys!17696 (extractMap!1277 (toList!4449 lm!1477)))) key!3287))))

(assert (= (and d!1406923 res!1895867) b!4546771))

(assert (= (and b!4546771 (not res!1895868)) b!4546772))

(assert (=> d!1406923 m!5318187))

(declare-fun m!5318949 () Bool)

(assert (=> d!1406923 m!5318949))

(declare-fun m!5318951 () Bool)

(assert (=> d!1406923 m!5318951))

(declare-fun m!5318953 () Bool)

(assert (=> b!4546772 m!5318953))

(assert (=> b!4546252 d!1406923))

(declare-fun bs!884867 () Bool)

(declare-fun b!4546774 () Bool)

(assert (= bs!884867 (and b!4546774 b!4546734)))

(declare-fun lambda!177447 () Int)

(assert (=> bs!884867 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 lt!1720192)) (= lambda!177447 lambda!177445))))

(declare-fun bs!884868 () Bool)

(assert (= bs!884868 (and b!4546774 b!4546699)))

(assert (=> bs!884868 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177447 lambda!177440))))

(declare-fun bs!884869 () Bool)

(assert (= bs!884869 (and b!4546774 b!4546587)))

(assert (=> bs!884869 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177447 lambda!177420))))

(declare-fun bs!884870 () Bool)

(assert (= bs!884870 (and b!4546774 b!4546584)))

(assert (=> bs!884870 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177447 lambda!177421))))

(declare-fun bs!884871 () Bool)

(assert (= bs!884871 (and b!4546774 b!4546586)))

(assert (=> bs!884871 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177447 lambda!177422))))

(declare-fun bs!884872 () Bool)

(assert (= bs!884872 (and b!4546774 b!4546729)))

(assert (=> bs!884872 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177447 lambda!177443))))

(assert (=> b!4546774 true))

(declare-fun bs!884873 () Bool)

(declare-fun b!4546775 () Bool)

(assert (= bs!884873 (and b!4546775 b!4546588)))

(declare-fun lambda!177448 () Int)

(assert (=> bs!884873 (= lambda!177448 lambda!177423)))

(declare-fun bs!884874 () Bool)

(assert (= bs!884874 (and b!4546775 b!4546700)))

(assert (=> bs!884874 (= lambda!177448 lambda!177441)))

(declare-fun bs!884875 () Bool)

(assert (= bs!884875 (and b!4546775 b!4546730)))

(assert (=> bs!884875 (= lambda!177448 lambda!177444)))

(declare-fun bs!884876 () Bool)

(assert (= bs!884876 (and b!4546775 b!4546735)))

(assert (=> bs!884876 (= lambda!177448 lambda!177446)))

(declare-fun d!1406925 () Bool)

(declare-fun e!2833546 () Bool)

(assert (=> d!1406925 e!2833546))

(declare-fun res!1895870 () Bool)

(assert (=> d!1406925 (=> (not res!1895870) (not e!2833546))))

(declare-fun lt!1720429 () List!50935)

(assert (=> d!1406925 (= res!1895870 (noDuplicate!765 lt!1720429))))

(assert (=> d!1406925 (= lt!1720429 (getKeysList!503 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))

(assert (=> d!1406925 (= (keys!17696 (extractMap!1277 (toList!4449 lm!1477))) lt!1720429)))

(declare-fun b!4546773 () Bool)

(declare-fun res!1895871 () Bool)

(assert (=> b!4546773 (=> (not res!1895871) (not e!2833546))))

(assert (=> b!4546773 (= res!1895871 (= (length!386 lt!1720429) (length!387 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))))

(declare-fun res!1895869 () Bool)

(assert (=> b!4546774 (=> (not res!1895869) (not e!2833546))))

(assert (=> b!4546774 (= res!1895869 (forall!10386 lt!1720429 lambda!177447))))

(assert (=> b!4546775 (= e!2833546 (= (content!8470 lt!1720429) (content!8470 (map!11187 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) lambda!177448))))))

(assert (= (and d!1406925 res!1895870) b!4546773))

(assert (= (and b!4546773 res!1895871) b!4546774))

(assert (= (and b!4546774 res!1895869) b!4546775))

(declare-fun m!5318955 () Bool)

(assert (=> d!1406925 m!5318955))

(assert (=> d!1406925 m!5318193))

(declare-fun m!5318957 () Bool)

(assert (=> b!4546773 m!5318957))

(declare-fun m!5318959 () Bool)

(assert (=> b!4546773 m!5318959))

(declare-fun m!5318961 () Bool)

(assert (=> b!4546774 m!5318961))

(declare-fun m!5318963 () Bool)

(assert (=> b!4546775 m!5318963))

(declare-fun m!5318965 () Bool)

(assert (=> b!4546775 m!5318965))

(assert (=> b!4546775 m!5318965))

(declare-fun m!5318967 () Bool)

(assert (=> b!4546775 m!5318967))

(assert (=> b!4546252 d!1406925))

(declare-fun b!4546779 () Bool)

(declare-fun e!2833548 () Option!11237)

(assert (=> b!4546779 (= e!2833548 None!11236)))

(declare-fun b!4546776 () Bool)

(declare-fun e!2833547 () Option!11237)

(assert (=> b!4546776 (= e!2833547 (Some!11236 (_2!28954 (h!56701 (toList!4449 lt!1720095)))))))

(declare-fun b!4546777 () Bool)

(assert (=> b!4546777 (= e!2833547 e!2833548)))

(declare-fun c!776686 () Bool)

(assert (=> b!4546777 (= c!776686 (and (is-Cons!50808 (toList!4449 lt!1720095)) (not (= (_1!28954 (h!56701 (toList!4449 lt!1720095))) (_1!28954 lt!1720038)))))))

(declare-fun b!4546778 () Bool)

(assert (=> b!4546778 (= e!2833548 (getValueByKey!1169 (t!357898 (toList!4449 lt!1720095)) (_1!28954 lt!1720038)))))

(declare-fun d!1406927 () Bool)

(declare-fun c!776685 () Bool)

(assert (=> d!1406927 (= c!776685 (and (is-Cons!50808 (toList!4449 lt!1720095)) (= (_1!28954 (h!56701 (toList!4449 lt!1720095))) (_1!28954 lt!1720038))))))

(assert (=> d!1406927 (= (getValueByKey!1169 (toList!4449 lt!1720095) (_1!28954 lt!1720038)) e!2833547)))

(assert (= (and d!1406927 c!776685) b!4546776))

(assert (= (and d!1406927 (not c!776685)) b!4546777))

(assert (= (and b!4546777 c!776686) b!4546778))

(assert (= (and b!4546777 (not c!776686)) b!4546779))

(declare-fun m!5318969 () Bool)

(assert (=> b!4546778 m!5318969))

(assert (=> b!4546201 d!1406927))

(assert (=> b!4546352 d!1406863))

(assert (=> b!4546352 d!1406871))

(declare-fun bs!884877 () Bool)

(declare-fun b!4546783 () Bool)

(assert (= bs!884877 (and b!4546783 b!4546774)))

(declare-fun lambda!177449 () Int)

(assert (=> bs!884877 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (= lambda!177449 lambda!177447))))

(declare-fun bs!884878 () Bool)

(assert (= bs!884878 (and b!4546783 b!4546734)))

(assert (=> bs!884878 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (toList!4450 lt!1720192)) (= lambda!177449 lambda!177445))))

(declare-fun bs!884879 () Bool)

(assert (= bs!884879 (and b!4546783 b!4546699)))

(assert (=> bs!884879 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177449 lambda!177440))))

(declare-fun bs!884880 () Bool)

(assert (= bs!884880 (and b!4546783 b!4546587)))

(assert (=> bs!884880 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177449 lambda!177420))))

(declare-fun bs!884881 () Bool)

(assert (= bs!884881 (and b!4546783 b!4546584)))

(assert (=> bs!884881 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177449 lambda!177421))))

(declare-fun bs!884882 () Bool)

(assert (= bs!884882 (and b!4546783 b!4546586)))

(assert (=> bs!884882 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177449 lambda!177422))))

(declare-fun bs!884883 () Bool)

(assert (= bs!884883 (and b!4546783 b!4546729)))

(assert (=> bs!884883 (= (= (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177449 lambda!177443))))

(assert (=> b!4546783 true))

(declare-fun bs!884884 () Bool)

(declare-fun b!4546780 () Bool)

(assert (= bs!884884 (and b!4546780 b!4546774)))

(declare-fun lambda!177450 () Int)

(assert (=> bs!884884 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (= lambda!177450 lambda!177447))))

(declare-fun bs!884885 () Bool)

(assert (= bs!884885 (and b!4546780 b!4546734)))

(assert (=> bs!884885 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (toList!4450 lt!1720192)) (= lambda!177450 lambda!177445))))

(declare-fun bs!884886 () Bool)

(assert (= bs!884886 (and b!4546780 b!4546699)))

(assert (=> bs!884886 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177450 lambda!177440))))

(declare-fun bs!884887 () Bool)

(assert (= bs!884887 (and b!4546780 b!4546587)))

(assert (=> bs!884887 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177450 lambda!177420))))

(declare-fun bs!884888 () Bool)

(assert (= bs!884888 (and b!4546780 b!4546584)))

(assert (=> bs!884888 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177450 lambda!177421))))

(declare-fun bs!884889 () Bool)

(assert (= bs!884889 (and b!4546780 b!4546586)))

(assert (=> bs!884889 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177450 lambda!177422))))

(declare-fun bs!884890 () Bool)

(assert (= bs!884890 (and b!4546780 b!4546783)))

(assert (=> bs!884890 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (= lambda!177450 lambda!177449))))

(declare-fun bs!884891 () Bool)

(assert (= bs!884891 (and b!4546780 b!4546729)))

(assert (=> bs!884891 (= (= (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177450 lambda!177443))))

(assert (=> b!4546780 true))

(declare-fun bs!884892 () Bool)

(declare-fun b!4546782 () Bool)

(assert (= bs!884892 (and b!4546782 b!4546774)))

(declare-fun lambda!177451 () Int)

(assert (=> bs!884892 (= lambda!177451 lambda!177447)))

(declare-fun bs!884893 () Bool)

(assert (= bs!884893 (and b!4546782 b!4546734)))

(assert (=> bs!884893 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 lt!1720192)) (= lambda!177451 lambda!177445))))

(declare-fun bs!884894 () Bool)

(assert (= bs!884894 (and b!4546782 b!4546699)))

(assert (=> bs!884894 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177451 lambda!177440))))

(declare-fun bs!884895 () Bool)

(assert (= bs!884895 (and b!4546782 b!4546587)))

(assert (=> bs!884895 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035)))) (= lambda!177451 lambda!177420))))

(declare-fun bs!884896 () Bool)

(assert (= bs!884896 (and b!4546782 b!4546584)))

(assert (=> bs!884896 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))) (t!357897 (toList!4450 (extractMap!1277 lt!1720035))))) (= lambda!177451 lambda!177421))))

(declare-fun bs!884897 () Bool)

(assert (= bs!884897 (and b!4546782 b!4546780)))

(assert (=> bs!884897 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (Cons!50807 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))) (= lambda!177451 lambda!177450))))

(declare-fun bs!884898 () Bool)

(assert (= bs!884898 (and b!4546782 b!4546586)))

(assert (=> bs!884898 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 lt!1720035))) (= lambda!177451 lambda!177422))))

(declare-fun bs!884899 () Bool)

(assert (= bs!884899 (and b!4546782 b!4546783)))

(assert (=> bs!884899 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (= lambda!177451 lambda!177449))))

(declare-fun bs!884900 () Bool)

(assert (= bs!884900 (and b!4546782 b!4546729)))

(assert (=> bs!884900 (= (= (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177451 lambda!177443))))

(assert (=> b!4546782 true))

(declare-fun bs!884901 () Bool)

(declare-fun b!4546784 () Bool)

(assert (= bs!884901 (and b!4546784 b!4546775)))

(declare-fun lambda!177452 () Int)

(assert (=> bs!884901 (= lambda!177452 lambda!177448)))

(declare-fun bs!884902 () Bool)

(assert (= bs!884902 (and b!4546784 b!4546730)))

(assert (=> bs!884902 (= lambda!177452 lambda!177444)))

(declare-fun bs!884903 () Bool)

(assert (= bs!884903 (and b!4546784 b!4546588)))

(assert (=> bs!884903 (= lambda!177452 lambda!177423)))

(declare-fun bs!884904 () Bool)

(assert (= bs!884904 (and b!4546784 b!4546735)))

(assert (=> bs!884904 (= lambda!177452 lambda!177446)))

(declare-fun bs!884905 () Bool)

(assert (= bs!884905 (and b!4546784 b!4546700)))

(assert (=> bs!884905 (= lambda!177452 lambda!177441)))

(declare-fun e!2833549 () List!50935)

(assert (=> b!4546780 (= e!2833549 (Cons!50811 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))))

(declare-fun c!776688 () Bool)

(assert (=> b!4546780 (= c!776688 (containsKey!1922 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))))

(declare-fun lt!1720430 () Unit!99525)

(declare-fun e!2833552 () Unit!99525)

(assert (=> b!4546780 (= lt!1720430 e!2833552)))

(declare-fun c!776687 () Bool)

(assert (=> b!4546780 (= c!776687 (contains!13637 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))))

(declare-fun lt!1720432 () Unit!99525)

(declare-fun e!2833551 () Unit!99525)

(assert (=> b!4546780 (= lt!1720432 e!2833551)))

(declare-fun lt!1720434 () List!50935)

(assert (=> b!4546780 (= lt!1720434 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))))

(declare-fun lt!1720431 () Unit!99525)

(assert (=> b!4546780 (= lt!1720431 (lemmaForallContainsAddHeadPreserves!186 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) lt!1720434 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))))

(assert (=> b!4546780 (forall!10386 lt!1720434 lambda!177450)))

(declare-fun lt!1720433 () Unit!99525)

(assert (=> b!4546780 (= lt!1720433 lt!1720431)))

(declare-fun b!4546781 () Bool)

(assert (=> b!4546781 (= e!2833549 Nil!50811)))

(declare-fun res!1895872 () Bool)

(declare-fun e!2833550 () Bool)

(assert (=> b!4546782 (=> (not res!1895872) (not e!2833550))))

(declare-fun lt!1720435 () List!50935)

(assert (=> b!4546782 (= res!1895872 (forall!10386 lt!1720435 lambda!177451))))

(assert (=> b!4546783 false))

(declare-fun lt!1720436 () Unit!99525)

(assert (=> b!4546783 (= lt!1720436 (forallContained!2649 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) lambda!177449 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))))

(declare-fun Unit!99568 () Unit!99525)

(assert (=> b!4546783 (= e!2833551 Unit!99568)))

(assert (=> b!4546784 (= e!2833550 (= (content!8470 lt!1720435) (content!8470 (map!11187 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) lambda!177452))))))

(declare-fun d!1406929 () Bool)

(assert (=> d!1406929 e!2833550))

(declare-fun res!1895874 () Bool)

(assert (=> d!1406929 (=> (not res!1895874) (not e!2833550))))

(assert (=> d!1406929 (= res!1895874 (noDuplicate!765 lt!1720435))))

(assert (=> d!1406929 (= lt!1720435 e!2833549)))

(declare-fun c!776689 () Bool)

(assert (=> d!1406929 (= c!776689 (is-Cons!50807 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))

(assert (=> d!1406929 (invariantList!1055 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))

(assert (=> d!1406929 (= (getKeysList!503 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) lt!1720435)))

(declare-fun b!4546785 () Bool)

(assert (=> b!4546785 false))

(declare-fun Unit!99572 () Unit!99525)

(assert (=> b!4546785 (= e!2833552 Unit!99572)))

(declare-fun b!4546786 () Bool)

(declare-fun Unit!99573 () Unit!99525)

(assert (=> b!4546786 (= e!2833551 Unit!99573)))

(declare-fun b!4546787 () Bool)

(declare-fun res!1895873 () Bool)

(assert (=> b!4546787 (=> (not res!1895873) (not e!2833550))))

(assert (=> b!4546787 (= res!1895873 (= (length!386 lt!1720435) (length!387 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))))

(declare-fun b!4546788 () Bool)

(declare-fun Unit!99576 () Unit!99525)

(assert (=> b!4546788 (= e!2833552 Unit!99576)))

(assert (= (and d!1406929 c!776689) b!4546780))

(assert (= (and d!1406929 (not c!776689)) b!4546781))

(assert (= (and b!4546780 c!776688) b!4546785))

(assert (= (and b!4546780 (not c!776688)) b!4546788))

(assert (= (and b!4546780 c!776687) b!4546783))

(assert (= (and b!4546780 (not c!776687)) b!4546786))

(assert (= (and d!1406929 res!1895874) b!4546787))

(assert (= (and b!4546787 res!1895873) b!4546782))

(assert (= (and b!4546782 res!1895872) b!4546784))

(declare-fun m!5318971 () Bool)

(assert (=> d!1406929 m!5318971))

(declare-fun m!5318973 () Bool)

(assert (=> d!1406929 m!5318973))

(declare-fun m!5318975 () Bool)

(assert (=> b!4546787 m!5318975))

(assert (=> b!4546787 m!5318959))

(declare-fun m!5318977 () Bool)

(assert (=> b!4546783 m!5318977))

(assert (=> b!4546783 m!5318977))

(declare-fun m!5318979 () Bool)

(assert (=> b!4546783 m!5318979))

(declare-fun m!5318981 () Bool)

(assert (=> b!4546780 m!5318981))

(declare-fun m!5318983 () Bool)

(assert (=> b!4546780 m!5318983))

(declare-fun m!5318985 () Bool)

(assert (=> b!4546780 m!5318985))

(assert (=> b!4546780 m!5318977))

(assert (=> b!4546780 m!5318977))

(declare-fun m!5318987 () Bool)

(assert (=> b!4546780 m!5318987))

(declare-fun m!5318989 () Bool)

(assert (=> b!4546784 m!5318989))

(declare-fun m!5318991 () Bool)

(assert (=> b!4546784 m!5318991))

(assert (=> b!4546784 m!5318991))

(declare-fun m!5318993 () Bool)

(assert (=> b!4546784 m!5318993))

(declare-fun m!5318995 () Bool)

(assert (=> b!4546782 m!5318995))

(assert (=> b!4546256 d!1406929))

(declare-fun d!1406931 () Bool)

(declare-fun res!1895875 () Bool)

(declare-fun e!2833553 () Bool)

(assert (=> d!1406931 (=> res!1895875 e!2833553)))

(assert (=> d!1406931 (= res!1895875 (and (is-Cons!50807 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) key!3287)))))

(assert (=> d!1406931 (= (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287) e!2833553)))

(declare-fun b!4546789 () Bool)

(declare-fun e!2833554 () Bool)

(assert (=> b!4546789 (= e!2833553 e!2833554)))

(declare-fun res!1895876 () Bool)

(assert (=> b!4546789 (=> (not res!1895876) (not e!2833554))))

(assert (=> b!4546789 (= res!1895876 (is-Cons!50807 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))

(declare-fun b!4546790 () Bool)

(assert (=> b!4546790 (= e!2833554 (containsKey!1922 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) key!3287))))

(assert (= (and d!1406931 (not res!1895875)) b!4546789))

(assert (= (and b!4546789 res!1895876) b!4546790))

(declare-fun m!5318997 () Bool)

(assert (=> b!4546790 m!5318997))

(assert (=> b!4546254 d!1406931))

(declare-fun d!1406933 () Bool)

(assert (=> d!1406933 (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287)))

(declare-fun lt!1720437 () Unit!99525)

(assert (=> d!1406933 (= lt!1720437 (choose!30032 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> d!1406933 (invariantList!1055 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))

(assert (=> d!1406933 (= (lemmaInGetKeysListThenContainsKey!502 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287) lt!1720437)))

(declare-fun bs!884906 () Bool)

(assert (= bs!884906 d!1406933))

(assert (=> bs!884906 m!5318185))

(declare-fun m!5318999 () Bool)

(assert (=> bs!884906 m!5318999))

(assert (=> bs!884906 m!5318973))

(assert (=> b!4546254 d!1406933))

(assert (=> d!1406693 d!1406667))

(assert (=> d!1406693 d!1406679))

(declare-fun d!1406935 () Bool)

(assert (=> d!1406935 (not (contains!13631 (extractMap!1277 (toList!4449 lm!1477)) key!3287))))

(assert (=> d!1406935 true))

(declare-fun _$26!431 () Unit!99525)

(assert (=> d!1406935 (= (choose!30019 lm!1477 key!3287 hashF!1107) _$26!431)))

(declare-fun bs!884907 () Bool)

(assert (= bs!884907 d!1406935))

(assert (=> bs!884907 m!5318031))

(assert (=> bs!884907 m!5318031))

(assert (=> bs!884907 m!5318033))

(assert (=> d!1406693 d!1406935))

(declare-fun d!1406937 () Bool)

(declare-fun res!1895877 () Bool)

(declare-fun e!2833555 () Bool)

(assert (=> d!1406937 (=> res!1895877 e!2833555)))

(assert (=> d!1406937 (= res!1895877 (is-Nil!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406937 (= (forall!10382 (toList!4449 lm!1477) lambda!177335) e!2833555)))

(declare-fun b!4546791 () Bool)

(declare-fun e!2833556 () Bool)

(assert (=> b!4546791 (= e!2833555 e!2833556)))

(declare-fun res!1895878 () Bool)

(assert (=> b!4546791 (=> (not res!1895878) (not e!2833556))))

(assert (=> b!4546791 (= res!1895878 (dynLambda!21240 lambda!177335 (h!56701 (toList!4449 lm!1477))))))

(declare-fun b!4546792 () Bool)

(assert (=> b!4546792 (= e!2833556 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177335))))

(assert (= (and d!1406937 (not res!1895877)) b!4546791))

(assert (= (and b!4546791 res!1895878) b!4546792))

(declare-fun b_lambda!158947 () Bool)

(assert (=> (not b_lambda!158947) (not b!4546791)))

(declare-fun m!5319001 () Bool)

(assert (=> b!4546791 m!5319001))

(declare-fun m!5319003 () Bool)

(assert (=> b!4546792 m!5319003))

(assert (=> d!1406693 d!1406937))

(declare-fun d!1406939 () Bool)

(declare-fun choose!30035 (Hashable!5616 K!12193) (_ BitVec 64))

(assert (=> d!1406939 (= (hash!2967 hashF!1107 key!3287) (choose!30035 hashF!1107 key!3287))))

(declare-fun bs!884908 () Bool)

(assert (= bs!884908 d!1406939))

(declare-fun m!5319005 () Bool)

(assert (=> bs!884908 m!5319005))

(assert (=> d!1406689 d!1406939))

(declare-fun d!1406941 () Bool)

(declare-fun res!1895883 () Bool)

(declare-fun e!2833561 () Bool)

(assert (=> d!1406941 (=> res!1895883 e!2833561)))

(assert (=> d!1406941 (= res!1895883 (is-Nil!50807 newBucket!178))))

(assert (=> d!1406941 (= (forall!10384 newBucket!178 lambda!177338) e!2833561)))

(declare-fun b!4546797 () Bool)

(declare-fun e!2833562 () Bool)

(assert (=> b!4546797 (= e!2833561 e!2833562)))

(declare-fun res!1895884 () Bool)

(assert (=> b!4546797 (=> (not res!1895884) (not e!2833562))))

(declare-fun dynLambda!21241 (Int tuple2!51318) Bool)

(assert (=> b!4546797 (= res!1895884 (dynLambda!21241 lambda!177338 (h!56700 newBucket!178)))))

(declare-fun b!4546798 () Bool)

(assert (=> b!4546798 (= e!2833562 (forall!10384 (t!357897 newBucket!178) lambda!177338))))

(assert (= (and d!1406941 (not res!1895883)) b!4546797))

(assert (= (and b!4546797 res!1895884) b!4546798))

(declare-fun b_lambda!158949 () Bool)

(assert (=> (not b_lambda!158949) (not b!4546797)))

(declare-fun m!5319007 () Bool)

(assert (=> b!4546797 m!5319007))

(declare-fun m!5319009 () Bool)

(assert (=> b!4546798 m!5319009))

(assert (=> d!1406707 d!1406941))

(declare-fun d!1406943 () Bool)

(declare-fun lt!1720438 () List!50931)

(assert (=> d!1406943 (not (containsKey!1920 lt!1720438 key!3287))))

(declare-fun e!2833563 () List!50931)

(assert (=> d!1406943 (= lt!1720438 e!2833563)))

(declare-fun c!776690 () Bool)

(assert (=> d!1406943 (= c!776690 (and (is-Cons!50807 (t!357897 lt!1720030)) (= (_1!28953 (h!56700 (t!357897 lt!1720030))) key!3287)))))

(assert (=> d!1406943 (noDuplicateKeys!1221 (t!357897 lt!1720030))))

(assert (=> d!1406943 (= (removePairForKey!848 (t!357897 lt!1720030) key!3287) lt!1720438)))

(declare-fun b!4546801 () Bool)

(declare-fun e!2833564 () List!50931)

(assert (=> b!4546801 (= e!2833564 (Cons!50807 (h!56700 (t!357897 lt!1720030)) (removePairForKey!848 (t!357897 (t!357897 lt!1720030)) key!3287)))))

(declare-fun b!4546800 () Bool)

(assert (=> b!4546800 (= e!2833563 e!2833564)))

(declare-fun c!776691 () Bool)

(assert (=> b!4546800 (= c!776691 (is-Cons!50807 (t!357897 lt!1720030)))))

(declare-fun b!4546799 () Bool)

(assert (=> b!4546799 (= e!2833563 (t!357897 (t!357897 lt!1720030)))))

(declare-fun b!4546802 () Bool)

(assert (=> b!4546802 (= e!2833564 Nil!50807)))

(assert (= (and d!1406943 c!776690) b!4546799))

(assert (= (and d!1406943 (not c!776690)) b!4546800))

(assert (= (and b!4546800 c!776691) b!4546801))

(assert (= (and b!4546800 (not c!776691)) b!4546802))

(declare-fun m!5319011 () Bool)

(assert (=> d!1406943 m!5319011))

(assert (=> d!1406943 m!5318909))

(declare-fun m!5319013 () Bool)

(assert (=> b!4546801 m!5319013))

(assert (=> b!4546430 d!1406943))

(assert (=> b!4546250 d!1406923))

(assert (=> b!4546250 d!1406925))

(declare-fun d!1406945 () Bool)

(declare-fun e!2833569 () Bool)

(assert (=> d!1406945 e!2833569))

(declare-fun res!1895885 () Bool)

(assert (=> d!1406945 (=> res!1895885 e!2833569)))

(declare-fun e!2833565 () Bool)

(assert (=> d!1406945 (= res!1895885 e!2833565)))

(declare-fun res!1895887 () Bool)

(assert (=> d!1406945 (=> (not res!1895887) (not e!2833565))))

(declare-fun lt!1720441 () Bool)

(assert (=> d!1406945 (= res!1895887 (not lt!1720441))))

(declare-fun lt!1720443 () Bool)

(assert (=> d!1406945 (= lt!1720441 lt!1720443)))

(declare-fun lt!1720446 () Unit!99525)

(declare-fun e!2833566 () Unit!99525)

(assert (=> d!1406945 (= lt!1720446 e!2833566)))

(declare-fun c!776692 () Bool)

(assert (=> d!1406945 (= c!776692 lt!1720443)))

(assert (=> d!1406945 (= lt!1720443 (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(assert (=> d!1406945 (= (contains!13631 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035))) key!3287) lt!1720441)))

(declare-fun bm!317024 () Bool)

(declare-fun call!317029 () Bool)

(declare-fun e!2833567 () List!50935)

(assert (=> bm!317024 (= call!317029 (contains!13637 e!2833567 key!3287))))

(declare-fun c!776694 () Bool)

(assert (=> bm!317024 (= c!776694 c!776692)))

(declare-fun b!4546803 () Bool)

(declare-fun e!2833570 () Unit!99525)

(assert (=> b!4546803 (= e!2833566 e!2833570)))

(declare-fun c!776693 () Bool)

(assert (=> b!4546803 (= c!776693 call!317029)))

(declare-fun b!4546804 () Bool)

(declare-fun e!2833568 () Bool)

(assert (=> b!4546804 (= e!2833569 e!2833568)))

(declare-fun res!1895886 () Bool)

(assert (=> b!4546804 (=> (not res!1895886) (not e!2833568))))

(assert (=> b!4546804 (= res!1895886 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287)))))

(declare-fun b!4546805 () Bool)

(assert (=> b!4546805 (= e!2833565 (not (contains!13637 (keys!17696 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287)))))

(declare-fun b!4546806 () Bool)

(declare-fun lt!1720444 () Unit!99525)

(assert (=> b!4546806 (= e!2833566 lt!1720444)))

(declare-fun lt!1720445 () Unit!99525)

(assert (=> b!4546806 (= lt!1720445 (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(assert (=> b!4546806 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(declare-fun lt!1720439 () Unit!99525)

(assert (=> b!4546806 (= lt!1720439 lt!1720445)))

(assert (=> b!4546806 (= lt!1720444 (lemmaInListThenGetKeysListContains!499 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(assert (=> b!4546806 call!317029))

(declare-fun b!4546807 () Bool)

(assert (=> b!4546807 (= e!2833568 (contains!13637 (keys!17696 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(declare-fun b!4546808 () Bool)

(assert (=> b!4546808 (= e!2833567 (keys!17696 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))))))

(declare-fun b!4546809 () Bool)

(assert (=> b!4546809 false))

(declare-fun lt!1720442 () Unit!99525)

(declare-fun lt!1720440 () Unit!99525)

(assert (=> b!4546809 (= lt!1720442 lt!1720440)))

(assert (=> b!4546809 (containsKey!1922 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287)))

(assert (=> b!4546809 (= lt!1720440 (lemmaInGetKeysListThenContainsKey!502 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035)))) key!3287))))

(declare-fun Unit!99580 () Unit!99525)

(assert (=> b!4546809 (= e!2833570 Unit!99580)))

(declare-fun b!4546810 () Bool)

(declare-fun Unit!99581 () Unit!99525)

(assert (=> b!4546810 (= e!2833570 Unit!99581)))

(declare-fun b!4546811 () Bool)

(assert (=> b!4546811 (= e!2833567 (getKeysList!503 (toList!4450 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035))))))))

(assert (= (and d!1406945 c!776692) b!4546806))

(assert (= (and d!1406945 (not c!776692)) b!4546803))

(assert (= (and b!4546803 c!776693) b!4546809))

(assert (= (and b!4546803 (not c!776693)) b!4546810))

(assert (= (or b!4546806 b!4546803) bm!317024))

(assert (= (and bm!317024 c!776694) b!4546811))

(assert (= (and bm!317024 (not c!776694)) b!4546808))

(assert (= (and d!1406945 res!1895887) b!4546805))

(assert (= (and d!1406945 (not res!1895885)) b!4546804))

(assert (= (and b!4546804 res!1895886) b!4546807))

(declare-fun m!5319015 () Bool)

(assert (=> b!4546804 m!5319015))

(assert (=> b!4546804 m!5319015))

(declare-fun m!5319017 () Bool)

(assert (=> b!4546804 m!5319017))

(declare-fun m!5319019 () Bool)

(assert (=> d!1406945 m!5319019))

(assert (=> b!4546805 m!5318333))

(declare-fun m!5319021 () Bool)

(assert (=> b!4546805 m!5319021))

(assert (=> b!4546805 m!5319021))

(declare-fun m!5319023 () Bool)

(assert (=> b!4546805 m!5319023))

(assert (=> b!4546807 m!5318333))

(assert (=> b!4546807 m!5319021))

(assert (=> b!4546807 m!5319021))

(assert (=> b!4546807 m!5319023))

(assert (=> b!4546808 m!5318333))

(assert (=> b!4546808 m!5319021))

(assert (=> b!4546809 m!5319019))

(declare-fun m!5319025 () Bool)

(assert (=> b!4546809 m!5319025))

(declare-fun m!5319027 () Bool)

(assert (=> b!4546811 m!5319027))

(declare-fun m!5319029 () Bool)

(assert (=> b!4546806 m!5319029))

(assert (=> b!4546806 m!5319015))

(assert (=> b!4546806 m!5319015))

(assert (=> b!4546806 m!5319017))

(declare-fun m!5319031 () Bool)

(assert (=> b!4546806 m!5319031))

(declare-fun m!5319033 () Bool)

(assert (=> bm!317024 m!5319033))

(assert (=> d!1406723 d!1406945))

(declare-fun bs!884909 () Bool)

(declare-fun d!1406947 () Bool)

(assert (= bs!884909 (and d!1406947 d!1406679)))

(declare-fun lambda!177453 () Int)

(assert (=> bs!884909 (= lambda!177453 lambda!177329)))

(declare-fun bs!884910 () Bool)

(assert (= bs!884910 (and d!1406947 d!1406709)))

(assert (=> bs!884910 (not (= lambda!177453 lambda!177341))))

(declare-fun bs!884911 () Bool)

(assert (= bs!884911 (and d!1406947 start!451626)))

(assert (=> bs!884911 (= lambda!177453 lambda!177318)))

(declare-fun bs!884912 () Bool)

(assert (= bs!884912 (and d!1406947 d!1406757)))

(assert (=> bs!884912 (= lambda!177453 lambda!177362)))

(declare-fun bs!884913 () Bool)

(assert (= bs!884913 (and d!1406947 d!1406825)))

(assert (=> bs!884913 (= lambda!177453 lambda!177410)))

(declare-fun bs!884914 () Bool)

(assert (= bs!884914 (and d!1406947 d!1406877)))

(assert (=> bs!884914 (= lambda!177453 lambda!177442)))

(declare-fun bs!884915 () Bool)

(assert (= bs!884915 (and d!1406947 d!1406693)))

(assert (=> bs!884915 (= lambda!177453 lambda!177335)))

(declare-fun bs!884916 () Bool)

(assert (= bs!884916 (and d!1406947 d!1406713)))

(assert (=> bs!884916 (= lambda!177453 lambda!177342)))

(declare-fun bs!884917 () Bool)

(assert (= bs!884917 (and d!1406947 d!1406723)))

(assert (=> bs!884917 (= lambda!177453 lambda!177348)))

(declare-fun bs!884918 () Bool)

(assert (= bs!884918 (and d!1406947 d!1406747)))

(assert (=> bs!884918 (= lambda!177453 lambda!177358)))

(declare-fun bs!884919 () Bool)

(assert (= bs!884919 (and d!1406947 d!1406751)))

(assert (=> bs!884919 (= lambda!177453 lambda!177359)))

(declare-fun lt!1720447 () ListMap!3711)

(assert (=> d!1406947 (invariantList!1055 (toList!4450 lt!1720447))))

(declare-fun e!2833571 () ListMap!3711)

(assert (=> d!1406947 (= lt!1720447 e!2833571)))

(declare-fun c!776695 () Bool)

(assert (=> d!1406947 (= c!776695 (is-Cons!50808 (toList!4449 (ListLongMap!3082 lt!1720035))))))

(assert (=> d!1406947 (forall!10382 (toList!4449 (ListLongMap!3082 lt!1720035)) lambda!177453)))

(assert (=> d!1406947 (= (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035))) lt!1720447)))

(declare-fun b!4546812 () Bool)

(assert (=> b!4546812 (= e!2833571 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (toList!4449 (ListLongMap!3082 lt!1720035)))) (extractMap!1277 (t!357898 (toList!4449 (ListLongMap!3082 lt!1720035))))))))

(declare-fun b!4546813 () Bool)

(assert (=> b!4546813 (= e!2833571 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406947 c!776695) b!4546812))

(assert (= (and d!1406947 (not c!776695)) b!4546813))

(declare-fun m!5319035 () Bool)

(assert (=> d!1406947 m!5319035))

(declare-fun m!5319037 () Bool)

(assert (=> d!1406947 m!5319037))

(declare-fun m!5319039 () Bool)

(assert (=> b!4546812 m!5319039))

(assert (=> b!4546812 m!5319039))

(declare-fun m!5319041 () Bool)

(assert (=> b!4546812 m!5319041))

(assert (=> d!1406723 d!1406947))

(declare-fun d!1406949 () Bool)

(assert (=> d!1406949 (contains!13631 (extractMap!1277 (toList!4449 (ListLongMap!3082 lt!1720035))) key!3287)))

(assert (=> d!1406949 true))

(declare-fun _$34!733 () Unit!99525)

(assert (=> d!1406949 (= (choose!30022 (ListLongMap!3082 lt!1720035) key!3287 hashF!1107) _$34!733)))

(declare-fun bs!884920 () Bool)

(assert (= bs!884920 d!1406949))

(assert (=> bs!884920 m!5318333))

(assert (=> bs!884920 m!5318333))

(assert (=> bs!884920 m!5318335))

(assert (=> d!1406723 d!1406949))

(declare-fun d!1406951 () Bool)

(declare-fun res!1895888 () Bool)

(declare-fun e!2833572 () Bool)

(assert (=> d!1406951 (=> res!1895888 e!2833572)))

(assert (=> d!1406951 (= res!1895888 (is-Nil!50808 (toList!4449 (ListLongMap!3082 lt!1720035))))))

(assert (=> d!1406951 (= (forall!10382 (toList!4449 (ListLongMap!3082 lt!1720035)) lambda!177348) e!2833572)))

(declare-fun b!4546814 () Bool)

(declare-fun e!2833573 () Bool)

(assert (=> b!4546814 (= e!2833572 e!2833573)))

(declare-fun res!1895889 () Bool)

(assert (=> b!4546814 (=> (not res!1895889) (not e!2833573))))

(assert (=> b!4546814 (= res!1895889 (dynLambda!21240 lambda!177348 (h!56701 (toList!4449 (ListLongMap!3082 lt!1720035)))))))

(declare-fun b!4546815 () Bool)

(assert (=> b!4546815 (= e!2833573 (forall!10382 (t!357898 (toList!4449 (ListLongMap!3082 lt!1720035))) lambda!177348))))

(assert (= (and d!1406951 (not res!1895888)) b!4546814))

(assert (= (and b!4546814 res!1895889) b!4546815))

(declare-fun b_lambda!158951 () Bool)

(assert (=> (not b_lambda!158951) (not b!4546814)))

(declare-fun m!5319043 () Bool)

(assert (=> b!4546814 m!5319043))

(declare-fun m!5319045 () Bool)

(assert (=> b!4546815 m!5319045))

(assert (=> d!1406723 d!1406951))

(declare-fun d!1406953 () Bool)

(declare-fun res!1895890 () Bool)

(declare-fun e!2833574 () Bool)

(assert (=> d!1406953 (=> res!1895890 e!2833574)))

(assert (=> d!1406953 (= res!1895890 (not (is-Cons!50807 (t!357897 newBucket!178))))))

(assert (=> d!1406953 (= (noDuplicateKeys!1221 (t!357897 newBucket!178)) e!2833574)))

(declare-fun b!4546816 () Bool)

(declare-fun e!2833575 () Bool)

(assert (=> b!4546816 (= e!2833574 e!2833575)))

(declare-fun res!1895891 () Bool)

(assert (=> b!4546816 (=> (not res!1895891) (not e!2833575))))

(assert (=> b!4546816 (= res!1895891 (not (containsKey!1920 (t!357897 (t!357897 newBucket!178)) (_1!28953 (h!56700 (t!357897 newBucket!178))))))))

(declare-fun b!4546817 () Bool)

(assert (=> b!4546817 (= e!2833575 (noDuplicateKeys!1221 (t!357897 (t!357897 newBucket!178))))))

(assert (= (and d!1406953 (not res!1895890)) b!4546816))

(assert (= (and b!4546816 res!1895891) b!4546817))

(declare-fun m!5319047 () Bool)

(assert (=> b!4546816 m!5319047))

(declare-fun m!5319049 () Bool)

(assert (=> b!4546817 m!5319049))

(assert (=> b!4546299 d!1406953))

(declare-fun bs!884921 () Bool)

(declare-fun b!4546822 () Bool)

(assert (= bs!884921 (and b!4546822 d!1406789)))

(declare-fun lambda!177454 () Int)

(assert (=> bs!884921 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720332) (= lambda!177454 lambda!177409))))

(declare-fun bs!884922 () Bool)

(assert (= bs!884922 (and b!4546822 b!4546534)))

(assert (=> bs!884922 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720341) (= lambda!177454 lambda!177408))))

(declare-fun bs!884923 () Bool)

(assert (= bs!884923 (and b!4546822 b!4546535)))

(assert (=> bs!884923 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177454 lambda!177406))))

(assert (=> bs!884922 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177454 lambda!177407))))

(declare-fun bs!884924 () Bool)

(assert (= bs!884924 (and b!4546822 d!1406707)))

(assert (=> bs!884924 (not (= lambda!177454 lambda!177338))))

(assert (=> b!4546822 true))

(declare-fun bs!884925 () Bool)

(declare-fun b!4546821 () Bool)

(assert (= bs!884925 (and b!4546821 d!1406789)))

(declare-fun lambda!177455 () Int)

(assert (=> bs!884925 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720332) (= lambda!177455 lambda!177409))))

(declare-fun bs!884926 () Bool)

(assert (= bs!884926 (and b!4546821 b!4546534)))

(assert (=> bs!884926 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720341) (= lambda!177455 lambda!177408))))

(declare-fun bs!884927 () Bool)

(assert (= bs!884927 (and b!4546821 b!4546535)))

(assert (=> bs!884927 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177455 lambda!177406))))

(declare-fun bs!884928 () Bool)

(assert (= bs!884928 (and b!4546821 b!4546822)))

(assert (=> bs!884928 (= lambda!177455 lambda!177454)))

(assert (=> bs!884926 (= (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177455 lambda!177407))))

(declare-fun bs!884929 () Bool)

(assert (= bs!884929 (and b!4546821 d!1406707)))

(assert (=> bs!884929 (not (= lambda!177455 lambda!177338))))

(assert (=> b!4546821 true))

(declare-fun lt!1720466 () ListMap!3711)

(declare-fun lambda!177456 () Int)

(assert (=> bs!884925 (= (= lt!1720466 lt!1720332) (= lambda!177456 lambda!177409))))

(assert (=> bs!884926 (= (= lt!1720466 lt!1720341) (= lambda!177456 lambda!177408))))

(assert (=> bs!884927 (= (= lt!1720466 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177456 lambda!177406))))

(assert (=> bs!884928 (= (= lt!1720466 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177456 lambda!177454))))

(assert (=> bs!884926 (= (= lt!1720466 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177456 lambda!177407))))

(assert (=> b!4546821 (= (= lt!1720466 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177456 lambda!177455))))

(assert (=> bs!884929 (not (= lambda!177456 lambda!177338))))

(assert (=> b!4546821 true))

(declare-fun bs!884930 () Bool)

(declare-fun d!1406955 () Bool)

(assert (= bs!884930 (and d!1406955 d!1406789)))

(declare-fun lt!1720457 () ListMap!3711)

(declare-fun lambda!177457 () Int)

(assert (=> bs!884930 (= (= lt!1720457 lt!1720332) (= lambda!177457 lambda!177409))))

(declare-fun bs!884931 () Bool)

(assert (= bs!884931 (and d!1406955 b!4546534)))

(assert (=> bs!884931 (= (= lt!1720457 lt!1720341) (= lambda!177457 lambda!177408))))

(declare-fun bs!884932 () Bool)

(assert (= bs!884932 (and d!1406955 b!4546535)))

(assert (=> bs!884932 (= (= lt!1720457 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177457 lambda!177406))))

(declare-fun bs!884933 () Bool)

(assert (= bs!884933 (and d!1406955 b!4546822)))

(assert (=> bs!884933 (= (= lt!1720457 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177457 lambda!177454))))

(declare-fun bs!884934 () Bool)

(assert (= bs!884934 (and d!1406955 b!4546821)))

(assert (=> bs!884934 (= (= lt!1720457 lt!1720466) (= lambda!177457 lambda!177456))))

(assert (=> bs!884931 (= (= lt!1720457 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177457 lambda!177407))))

(assert (=> bs!884934 (= (= lt!1720457 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177457 lambda!177455))))

(declare-fun bs!884935 () Bool)

(assert (= bs!884935 (and d!1406955 d!1406707)))

(assert (=> bs!884935 (not (= lambda!177457 lambda!177338))))

(assert (=> d!1406955 true))

(declare-fun b!4546818 () Bool)

(declare-fun e!2833577 () Bool)

(assert (=> b!4546818 (= e!2833577 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lambda!177456))))

(declare-fun bm!317025 () Bool)

(declare-fun call!317032 () Unit!99525)

(assert (=> bm!317025 (= call!317032 (lemmaContainsAllItsOwnKeys!375 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))))))

(declare-fun b!4546819 () Bool)

(declare-fun e!2833576 () Bool)

(assert (=> b!4546819 (= e!2833576 (invariantList!1055 (toList!4450 lt!1720457)))))

(assert (=> d!1406955 e!2833576))

(declare-fun res!1895893 () Bool)

(assert (=> d!1406955 (=> (not res!1895893) (not e!2833576))))

(assert (=> d!1406955 (= res!1895893 (forall!10384 (_2!28954 (h!56701 (toList!4449 lm!1477))) lambda!177457))))

(declare-fun e!2833578 () ListMap!3711)

(assert (=> d!1406955 (= lt!1720457 e!2833578)))

(declare-fun c!776696 () Bool)

(assert (=> d!1406955 (= c!776696 (is-Nil!50807 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(assert (=> d!1406955 (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477))))))

(assert (=> d!1406955 (= (addToMapMapFromBucket!741 (_2!28954 (h!56701 (toList!4449 lm!1477))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lt!1720457)))

(declare-fun call!317030 () Bool)

(declare-fun lt!1720468 () ListMap!3711)

(declare-fun bm!317026 () Bool)

(assert (=> bm!317026 (= call!317030 (forall!10384 (ite c!776696 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (toList!4450 lt!1720468)) (ite c!776696 lambda!177454 lambda!177456)))))

(declare-fun call!317031 () Bool)

(declare-fun bm!317027 () Bool)

(assert (=> bm!317027 (= call!317031 (forall!10384 (ite c!776696 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (_2!28954 (h!56701 (toList!4449 lm!1477)))) (ite c!776696 lambda!177454 lambda!177456)))))

(declare-fun b!4546820 () Bool)

(declare-fun res!1895894 () Bool)

(assert (=> b!4546820 (=> (not res!1895894) (not e!2833576))))

(assert (=> b!4546820 (= res!1895894 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lambda!177457))))

(assert (=> b!4546821 (= e!2833578 lt!1720466)))

(assert (=> b!4546821 (= lt!1720468 (+!1633 (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(assert (=> b!4546821 (= lt!1720466 (addToMapMapFromBucket!741 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))) (+!1633 (extractMap!1277 (t!357898 (toList!4449 lm!1477))) (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))))

(declare-fun lt!1720467 () Unit!99525)

(assert (=> b!4546821 (= lt!1720467 call!317032)))

(assert (=> b!4546821 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lambda!177455)))

(declare-fun lt!1720456 () Unit!99525)

(assert (=> b!4546821 (= lt!1720456 lt!1720467)))

(assert (=> b!4546821 (forall!10384 (toList!4450 lt!1720468) lambda!177456)))

(declare-fun lt!1720449 () Unit!99525)

(declare-fun Unit!99589 () Unit!99525)

(assert (=> b!4546821 (= lt!1720449 Unit!99589)))

(assert (=> b!4546821 (forall!10384 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))) lambda!177456)))

(declare-fun lt!1720448 () Unit!99525)

(declare-fun Unit!99590 () Unit!99525)

(assert (=> b!4546821 (= lt!1720448 Unit!99590)))

(declare-fun lt!1720452 () Unit!99525)

(declare-fun Unit!99591 () Unit!99525)

(assert (=> b!4546821 (= lt!1720452 Unit!99591)))

(declare-fun lt!1720454 () Unit!99525)

(assert (=> b!4546821 (= lt!1720454 (forallContained!2648 (toList!4450 lt!1720468) lambda!177456 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(assert (=> b!4546821 (contains!13631 lt!1720468 (_1!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(declare-fun lt!1720450 () Unit!99525)

(declare-fun Unit!99593 () Unit!99525)

(assert (=> b!4546821 (= lt!1720450 Unit!99593)))

(assert (=> b!4546821 (contains!13631 lt!1720466 (_1!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(declare-fun lt!1720453 () Unit!99525)

(declare-fun Unit!99594 () Unit!99525)

(assert (=> b!4546821 (= lt!1720453 Unit!99594)))

(assert (=> b!4546821 (forall!10384 (_2!28954 (h!56701 (toList!4449 lm!1477))) lambda!177456)))

(declare-fun lt!1720459 () Unit!99525)

(declare-fun Unit!99595 () Unit!99525)

(assert (=> b!4546821 (= lt!1720459 Unit!99595)))

(assert (=> b!4546821 call!317030))

(declare-fun lt!1720463 () Unit!99525)

(declare-fun Unit!99596 () Unit!99525)

(assert (=> b!4546821 (= lt!1720463 Unit!99596)))

(declare-fun lt!1720458 () Unit!99525)

(declare-fun Unit!99597 () Unit!99525)

(assert (=> b!4546821 (= lt!1720458 Unit!99597)))

(declare-fun lt!1720460 () Unit!99525)

(assert (=> b!4546821 (= lt!1720460 (addForallContainsKeyThenBeforeAdding!375 (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720466 (_1!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477))))) (_2!28953 (h!56700 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))))

(assert (=> b!4546821 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lambda!177456)))

(declare-fun lt!1720465 () Unit!99525)

(assert (=> b!4546821 (= lt!1720465 lt!1720460)))

(assert (=> b!4546821 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) lambda!177456)))

(declare-fun lt!1720461 () Unit!99525)

(declare-fun Unit!99599 () Unit!99525)

(assert (=> b!4546821 (= lt!1720461 Unit!99599)))

(declare-fun res!1895892 () Bool)

(assert (=> b!4546821 (= res!1895892 call!317031)))

(assert (=> b!4546821 (=> (not res!1895892) (not e!2833577))))

(assert (=> b!4546821 e!2833577))

(declare-fun lt!1720455 () Unit!99525)

(declare-fun Unit!99600 () Unit!99525)

(assert (=> b!4546821 (= lt!1720455 Unit!99600)))

(assert (=> b!4546822 (= e!2833578 (extractMap!1277 (t!357898 (toList!4449 lm!1477))))))

(declare-fun lt!1720462 () Unit!99525)

(assert (=> b!4546822 (= lt!1720462 call!317032)))

(assert (=> b!4546822 call!317030))

(declare-fun lt!1720464 () Unit!99525)

(assert (=> b!4546822 (= lt!1720464 lt!1720462)))

(assert (=> b!4546822 call!317031))

(declare-fun lt!1720451 () Unit!99525)

(declare-fun Unit!99601 () Unit!99525)

(assert (=> b!4546822 (= lt!1720451 Unit!99601)))

(assert (= (and d!1406955 c!776696) b!4546822))

(assert (= (and d!1406955 (not c!776696)) b!4546821))

(assert (= (and b!4546821 res!1895892) b!4546818))

(assert (= (or b!4546822 b!4546821) bm!317027))

(assert (= (or b!4546822 b!4546821) bm!317026))

(assert (= (or b!4546822 b!4546821) bm!317025))

(assert (= (and d!1406955 res!1895893) b!4546820))

(assert (= (and b!4546820 res!1895894) b!4546819))

(declare-fun m!5319051 () Bool)

(assert (=> bm!317027 m!5319051))

(declare-fun m!5319053 () Bool)

(assert (=> b!4546818 m!5319053))

(declare-fun m!5319055 () Bool)

(assert (=> b!4546821 m!5319055))

(declare-fun m!5319057 () Bool)

(assert (=> b!4546821 m!5319057))

(assert (=> b!4546821 m!5318225))

(declare-fun m!5319059 () Bool)

(assert (=> b!4546821 m!5319059))

(declare-fun m!5319061 () Bool)

(assert (=> b!4546821 m!5319061))

(declare-fun m!5319063 () Bool)

(assert (=> b!4546821 m!5319063))

(declare-fun m!5319065 () Bool)

(assert (=> b!4546821 m!5319065))

(declare-fun m!5319067 () Bool)

(assert (=> b!4546821 m!5319067))

(declare-fun m!5319069 () Bool)

(assert (=> b!4546821 m!5319069))

(declare-fun m!5319071 () Bool)

(assert (=> b!4546821 m!5319071))

(assert (=> b!4546821 m!5319053))

(declare-fun m!5319073 () Bool)

(assert (=> b!4546821 m!5319073))

(assert (=> b!4546821 m!5318225))

(assert (=> b!4546821 m!5319061))

(assert (=> b!4546821 m!5319053))

(declare-fun m!5319075 () Bool)

(assert (=> b!4546820 m!5319075))

(declare-fun m!5319077 () Bool)

(assert (=> d!1406955 m!5319077))

(assert (=> d!1406955 m!5318395))

(declare-fun m!5319079 () Bool)

(assert (=> bm!317026 m!5319079))

(declare-fun m!5319081 () Bool)

(assert (=> b!4546819 m!5319081))

(assert (=> bm!317025 m!5318225))

(declare-fun m!5319083 () Bool)

(assert (=> bm!317025 m!5319083))

(assert (=> b!4546282 d!1406955))

(declare-fun bs!884936 () Bool)

(declare-fun d!1406957 () Bool)

(assert (= bs!884936 (and d!1406957 d!1406947)))

(declare-fun lambda!177458 () Int)

(assert (=> bs!884936 (= lambda!177458 lambda!177453)))

(declare-fun bs!884937 () Bool)

(assert (= bs!884937 (and d!1406957 d!1406679)))

(assert (=> bs!884937 (= lambda!177458 lambda!177329)))

(declare-fun bs!884938 () Bool)

(assert (= bs!884938 (and d!1406957 d!1406709)))

(assert (=> bs!884938 (not (= lambda!177458 lambda!177341))))

(declare-fun bs!884939 () Bool)

(assert (= bs!884939 (and d!1406957 start!451626)))

(assert (=> bs!884939 (= lambda!177458 lambda!177318)))

(declare-fun bs!884940 () Bool)

(assert (= bs!884940 (and d!1406957 d!1406757)))

(assert (=> bs!884940 (= lambda!177458 lambda!177362)))

(declare-fun bs!884941 () Bool)

(assert (= bs!884941 (and d!1406957 d!1406825)))

(assert (=> bs!884941 (= lambda!177458 lambda!177410)))

(declare-fun bs!884942 () Bool)

(assert (= bs!884942 (and d!1406957 d!1406877)))

(assert (=> bs!884942 (= lambda!177458 lambda!177442)))

(declare-fun bs!884943 () Bool)

(assert (= bs!884943 (and d!1406957 d!1406693)))

(assert (=> bs!884943 (= lambda!177458 lambda!177335)))

(declare-fun bs!884944 () Bool)

(assert (= bs!884944 (and d!1406957 d!1406713)))

(assert (=> bs!884944 (= lambda!177458 lambda!177342)))

(declare-fun bs!884945 () Bool)

(assert (= bs!884945 (and d!1406957 d!1406723)))

(assert (=> bs!884945 (= lambda!177458 lambda!177348)))

(declare-fun bs!884946 () Bool)

(assert (= bs!884946 (and d!1406957 d!1406747)))

(assert (=> bs!884946 (= lambda!177458 lambda!177358)))

(declare-fun bs!884947 () Bool)

(assert (= bs!884947 (and d!1406957 d!1406751)))

(assert (=> bs!884947 (= lambda!177458 lambda!177359)))

(declare-fun lt!1720469 () ListMap!3711)

(assert (=> d!1406957 (invariantList!1055 (toList!4450 lt!1720469))))

(declare-fun e!2833579 () ListMap!3711)

(assert (=> d!1406957 (= lt!1720469 e!2833579)))

(declare-fun c!776697 () Bool)

(assert (=> d!1406957 (= c!776697 (is-Cons!50808 (t!357898 (toList!4449 lm!1477))))))

(assert (=> d!1406957 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177458)))

(assert (=> d!1406957 (= (extractMap!1277 (t!357898 (toList!4449 lm!1477))) lt!1720469)))

(declare-fun b!4546823 () Bool)

(assert (=> b!4546823 (= e!2833579 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (t!357898 (toList!4449 lm!1477)))) (extractMap!1277 (t!357898 (t!357898 (toList!4449 lm!1477))))))))

(declare-fun b!4546824 () Bool)

(assert (=> b!4546824 (= e!2833579 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406957 c!776697) b!4546823))

(assert (= (and d!1406957 (not c!776697)) b!4546824))

(declare-fun m!5319085 () Bool)

(assert (=> d!1406957 m!5319085))

(declare-fun m!5319087 () Bool)

(assert (=> d!1406957 m!5319087))

(declare-fun m!5319089 () Bool)

(assert (=> b!4546823 m!5319089))

(assert (=> b!4546823 m!5319089))

(declare-fun m!5319091 () Bool)

(assert (=> b!4546823 m!5319091))

(assert (=> b!4546282 d!1406957))

(declare-fun d!1406959 () Bool)

(assert (=> d!1406959 (= (get!16725 (getValueByKey!1169 (toList!4449 lm!1477) hash!344)) (v!44968 (getValueByKey!1169 (toList!4449 lm!1477) hash!344)))))

(assert (=> d!1406763 d!1406959))

(assert (=> d!1406763 d!1406913))

(declare-fun d!1406961 () Bool)

(declare-fun res!1895895 () Bool)

(declare-fun e!2833582 () Bool)

(assert (=> d!1406961 (=> res!1895895 e!2833582)))

(assert (=> d!1406961 (= res!1895895 (and (is-Cons!50807 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477))))) (= (_1!28953 (h!56700 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))))) key!3287)))))

(assert (=> d!1406961 (= (containsKey!1920 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477)))) key!3287) e!2833582)))

(declare-fun b!4546829 () Bool)

(declare-fun e!2833583 () Bool)

(assert (=> b!4546829 (= e!2833582 e!2833583)))

(declare-fun res!1895896 () Bool)

(assert (=> b!4546829 (=> (not res!1895896) (not e!2833583))))

(assert (=> b!4546829 (= res!1895896 (is-Cons!50807 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477))))))))

(declare-fun b!4546830 () Bool)

(assert (=> b!4546830 (= e!2833583 (containsKey!1920 (t!357897 (t!357897 (_2!28954 (h!56701 (toList!4449 lm!1477))))) key!3287))))

(assert (= (and d!1406961 (not res!1895895)) b!4546829))

(assert (= (and b!4546829 res!1895896) b!4546830))

(declare-fun m!5319093 () Bool)

(assert (=> b!4546830 m!5319093))

(assert (=> b!4546399 d!1406961))

(declare-fun d!1406963 () Bool)

(declare-fun e!2833588 () Bool)

(assert (=> d!1406963 e!2833588))

(declare-fun res!1895897 () Bool)

(assert (=> d!1406963 (=> res!1895897 e!2833588)))

(declare-fun e!2833584 () Bool)

(assert (=> d!1406963 (= res!1895897 e!2833584)))

(declare-fun res!1895899 () Bool)

(assert (=> d!1406963 (=> (not res!1895899) (not e!2833584))))

(declare-fun lt!1720480 () Bool)

(assert (=> d!1406963 (= res!1895899 (not lt!1720480))))

(declare-fun lt!1720482 () Bool)

(assert (=> d!1406963 (= lt!1720480 lt!1720482)))

(declare-fun lt!1720485 () Unit!99525)

(declare-fun e!2833585 () Unit!99525)

(assert (=> d!1406963 (= lt!1720485 e!2833585)))

(declare-fun c!776700 () Bool)

(assert (=> d!1406963 (= c!776700 lt!1720482)))

(assert (=> d!1406963 (= lt!1720482 (containsKey!1922 (toList!4450 lt!1720192) key!3287))))

(assert (=> d!1406963 (= (contains!13631 lt!1720192 key!3287) lt!1720480)))

(declare-fun bm!317028 () Bool)

(declare-fun call!317033 () Bool)

(declare-fun e!2833586 () List!50935)

(assert (=> bm!317028 (= call!317033 (contains!13637 e!2833586 key!3287))))

(declare-fun c!776702 () Bool)

(assert (=> bm!317028 (= c!776702 c!776700)))

(declare-fun b!4546831 () Bool)

(declare-fun e!2833589 () Unit!99525)

(assert (=> b!4546831 (= e!2833585 e!2833589)))

(declare-fun c!776701 () Bool)

(assert (=> b!4546831 (= c!776701 call!317033)))

(declare-fun b!4546832 () Bool)

(declare-fun e!2833587 () Bool)

(assert (=> b!4546832 (= e!2833588 e!2833587)))

(declare-fun res!1895898 () Bool)

(assert (=> b!4546832 (=> (not res!1895898) (not e!2833587))))

(assert (=> b!4546832 (= res!1895898 (isDefined!8509 (getValueByKey!1170 (toList!4450 lt!1720192) key!3287)))))

(declare-fun b!4546833 () Bool)

(assert (=> b!4546833 (= e!2833584 (not (contains!13637 (keys!17696 lt!1720192) key!3287)))))

(declare-fun b!4546834 () Bool)

(declare-fun lt!1720483 () Unit!99525)

(assert (=> b!4546834 (= e!2833585 lt!1720483)))

(declare-fun lt!1720484 () Unit!99525)

(assert (=> b!4546834 (= lt!1720484 (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 lt!1720192) key!3287))))

(assert (=> b!4546834 (isDefined!8509 (getValueByKey!1170 (toList!4450 lt!1720192) key!3287))))

(declare-fun lt!1720478 () Unit!99525)

(assert (=> b!4546834 (= lt!1720478 lt!1720484)))

(assert (=> b!4546834 (= lt!1720483 (lemmaInListThenGetKeysListContains!499 (toList!4450 lt!1720192) key!3287))))

(assert (=> b!4546834 call!317033))

(declare-fun b!4546835 () Bool)

(assert (=> b!4546835 (= e!2833587 (contains!13637 (keys!17696 lt!1720192) key!3287))))

(declare-fun b!4546836 () Bool)

(assert (=> b!4546836 (= e!2833586 (keys!17696 lt!1720192))))

(declare-fun b!4546837 () Bool)

(assert (=> b!4546837 false))

(declare-fun lt!1720481 () Unit!99525)

(declare-fun lt!1720479 () Unit!99525)

(assert (=> b!4546837 (= lt!1720481 lt!1720479)))

(assert (=> b!4546837 (containsKey!1922 (toList!4450 lt!1720192) key!3287)))

(assert (=> b!4546837 (= lt!1720479 (lemmaInGetKeysListThenContainsKey!502 (toList!4450 lt!1720192) key!3287))))

(declare-fun Unit!99603 () Unit!99525)

(assert (=> b!4546837 (= e!2833589 Unit!99603)))

(declare-fun b!4546838 () Bool)

(declare-fun Unit!99604 () Unit!99525)

(assert (=> b!4546838 (= e!2833589 Unit!99604)))

(declare-fun b!4546839 () Bool)

(assert (=> b!4546839 (= e!2833586 (getKeysList!503 (toList!4450 lt!1720192)))))

(assert (= (and d!1406963 c!776700) b!4546834))

(assert (= (and d!1406963 (not c!776700)) b!4546831))

(assert (= (and b!4546831 c!776701) b!4546837))

(assert (= (and b!4546831 (not c!776701)) b!4546838))

(assert (= (or b!4546834 b!4546831) bm!317028))

(assert (= (and bm!317028 c!776702) b!4546839))

(assert (= (and bm!317028 (not c!776702)) b!4546836))

(assert (= (and d!1406963 res!1895899) b!4546833))

(assert (= (and d!1406963 (not res!1895897)) b!4546832))

(assert (= (and b!4546832 res!1895898) b!4546835))

(declare-fun m!5319095 () Bool)

(assert (=> b!4546832 m!5319095))

(assert (=> b!4546832 m!5319095))

(declare-fun m!5319097 () Bool)

(assert (=> b!4546832 m!5319097))

(declare-fun m!5319099 () Bool)

(assert (=> d!1406963 m!5319099))

(assert (=> b!4546833 m!5318311))

(assert (=> b!4546833 m!5318311))

(declare-fun m!5319101 () Bool)

(assert (=> b!4546833 m!5319101))

(assert (=> b!4546835 m!5318311))

(assert (=> b!4546835 m!5318311))

(assert (=> b!4546835 m!5319101))

(assert (=> b!4546836 m!5318311))

(assert (=> b!4546837 m!5319099))

(declare-fun m!5319103 () Bool)

(assert (=> b!4546837 m!5319103))

(assert (=> b!4546839 m!5318891))

(declare-fun m!5319105 () Bool)

(assert (=> b!4546834 m!5319105))

(assert (=> b!4546834 m!5319095))

(assert (=> b!4546834 m!5319095))

(assert (=> b!4546834 m!5319097))

(declare-fun m!5319107 () Bool)

(assert (=> b!4546834 m!5319107))

(declare-fun m!5319109 () Bool)

(assert (=> bm!317028 m!5319109))

(assert (=> d!1406717 d!1406963))

(declare-fun d!1406965 () Bool)

(declare-fun e!2833644 () Bool)

(assert (=> d!1406965 e!2833644))

(declare-fun res!1895931 () Bool)

(assert (=> d!1406965 (=> (not res!1895931) (not e!2833644))))

(declare-fun lt!1720594 () List!50931)

(assert (=> d!1406965 (= res!1895931 (invariantList!1055 lt!1720594))))

(declare-fun e!2833636 () List!50931)

(assert (=> d!1406965 (= lt!1720594 e!2833636)))

(declare-fun c!776726 () Bool)

(assert (=> d!1406965 (= c!776726 (and (is-Cons!50807 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) key!3287)))))

(assert (=> d!1406965 (invariantList!1055 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))

(assert (=> d!1406965 (= (removePresrvNoDuplicatedKeys!178 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287) lt!1720594)))

(declare-fun bm!317051 () Bool)

(declare-fun call!317057 () (Set tuple2!51318))

(assert (=> bm!317051 (= call!317057 (content!8471 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun call!317056 () (Set tuple2!51318))

(declare-fun call!317059 () (Set tuple2!51318))

(declare-fun b!4546914 () Bool)

(declare-fun get!16727 (Option!11238) V!12439)

(assert (=> b!4546914 (= call!317056 (set.minus call!317059 (set.insert (tuple2!51319 key!3287 (get!16727 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))) (as set.empty (Set tuple2!51318)))))))

(declare-fun lt!1720596 () Unit!99525)

(declare-fun e!2833637 () Unit!99525)

(assert (=> b!4546914 (= lt!1720596 e!2833637)))

(declare-fun c!776725 () Bool)

(declare-fun contains!13640 (List!50931 tuple2!51318) Bool)

(assert (=> b!4546914 (= c!776725 (contains!13640 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (tuple2!51319 key!3287 (get!16727 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287)))))))

(declare-fun e!2833643 () Unit!99525)

(declare-fun Unit!99606 () Unit!99525)

(assert (=> b!4546914 (= e!2833643 Unit!99606)))

(declare-fun b!4546915 () Bool)

(declare-fun e!2833640 () Unit!99525)

(declare-fun Unit!99607 () Unit!99525)

(assert (=> b!4546915 (= e!2833640 Unit!99607)))

(declare-fun b!4546916 () Bool)

(declare-fun res!1895930 () Bool)

(assert (=> b!4546916 (=> (not res!1895930) (not e!2833644))))

(assert (=> b!4546916 (= res!1895930 (not (containsKey!1922 lt!1720594 key!3287)))))

(declare-fun b!4546917 () Bool)

(assert (=> b!4546917 (= e!2833636 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun c!776729 () Bool)

(declare-fun call!317058 () Bool)

(assert (=> b!4546917 (= c!776729 call!317058)))

(declare-fun lt!1720592 () Unit!99525)

(assert (=> b!4546917 (= lt!1720592 e!2833643)))

(declare-fun b!4546918 () Bool)

(declare-fun e!2833638 () List!50931)

(assert (=> b!4546918 (= e!2833636 e!2833638)))

(declare-fun c!776731 () Bool)

(assert (=> b!4546918 (= c!776731 (and (is-Cons!50807 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (not (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) key!3287))))))

(declare-fun bm!317052 () Bool)

(assert (=> bm!317052 (= call!317056 (content!8471 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun b!4546919 () Bool)

(declare-fun e!2833642 () Unit!99525)

(declare-fun Unit!99608 () Unit!99525)

(assert (=> b!4546919 (= e!2833642 Unit!99608)))

(declare-fun lt!1720591 () Unit!99525)

(assert (=> b!4546919 (= lt!1720591 (lemmaInGetKeysListThenContainsKey!502 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(assert (=> b!4546919 call!317058))

(declare-fun lt!1720587 () Unit!99525)

(assert (=> b!4546919 (= lt!1720587 lt!1720591)))

(assert (=> b!4546919 false))

(declare-fun b!4546920 () Bool)

(declare-fun e!2833641 () List!50931)

(assert (=> b!4546920 (= e!2833641 (removePresrvNoDuplicatedKeys!178 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) key!3287))))

(declare-fun call!317060 () Bool)

(declare-fun bm!317053 () Bool)

(declare-fun lt!1720598 () K!12193)

(assert (=> bm!317053 (= call!317060 (containsKey!1922 e!2833641 (ite c!776726 lt!1720598 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))))

(declare-fun c!776724 () Bool)

(assert (=> bm!317053 (= c!776724 c!776726)))

(declare-fun e!2833639 () Bool)

(declare-fun call!317061 () (Set tuple2!51318))

(declare-fun b!4546921 () Bool)

(assert (=> b!4546921 (= e!2833639 (= call!317061 (set.minus call!317057 (set.insert (tuple2!51319 key!3287 (get!16727 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))) (as set.empty (Set tuple2!51318))))))))

(assert (=> b!4546921 (containsKey!1922 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287)))

(declare-fun lt!1720599 () Unit!99525)

(assert (=> b!4546921 (= lt!1720599 (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))))

(assert (=> b!4546921 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))))

(declare-fun lt!1720586 () Unit!99525)

(assert (=> b!4546921 (= lt!1720586 lt!1720599)))

(declare-fun bm!317054 () Bool)

(assert (=> bm!317054 (= call!317059 (content!8471 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun b!4546922 () Bool)

(assert (=> b!4546922 (= e!2833644 e!2833639)))

(declare-fun c!776727 () Bool)

(assert (=> b!4546922 (= c!776727 (containsKey!1922 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))))

(declare-fun b!4546923 () Bool)

(declare-fun lt!1720593 () Unit!99525)

(assert (=> b!4546923 (= lt!1720593 e!2833640)))

(declare-fun c!776728 () Bool)

(assert (=> b!4546923 (= c!776728 call!317060)))

(declare-fun lt!1720589 () Unit!99525)

(assert (=> b!4546923 (= lt!1720589 e!2833642)))

(declare-fun c!776730 () Bool)

(assert (=> b!4546923 (= c!776730 (contains!13637 (getKeysList!503 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(declare-fun lt!1720588 () List!50931)

(declare-fun $colon$colon!975 (List!50931 tuple2!51318) List!50931)

(assert (=> b!4546923 (= lt!1720588 ($colon$colon!975 (removePresrvNoDuplicatedKeys!178 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) key!3287) (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(assert (=> b!4546923 (= e!2833638 lt!1720588)))

(declare-fun bm!317055 () Bool)

(assert (=> bm!317055 (= call!317061 (content!8471 lt!1720594))))

(declare-fun b!4546924 () Bool)

(assert (=> b!4546924 (= e!2833638 Nil!50807)))

(declare-fun b!4546925 () Bool)

(assert (=> b!4546925 (= e!2833641 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(declare-fun b!4546926 () Bool)

(declare-fun res!1895932 () Bool)

(assert (=> b!4546926 (=> (not res!1895932) (not e!2833644))))

(assert (=> b!4546926 (= res!1895932 (= (content!8470 (getKeysList!503 lt!1720594)) (set.minus (content!8470 (getKeysList!503 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) (set.insert key!3287 (as set.empty (Set K!12193))))))))

(declare-fun b!4546927 () Bool)

(declare-fun Unit!99609 () Unit!99525)

(assert (=> b!4546927 (= e!2833640 Unit!99609)))

(declare-fun lt!1720601 () List!50931)

(assert (=> b!4546927 (= lt!1720601 (removePresrvNoDuplicatedKeys!178 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) key!3287))))

(declare-fun lt!1720597 () Unit!99525)

(assert (=> b!4546927 (= lt!1720597 (lemmaInListThenGetKeysListContains!499 lt!1720601 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))))

(assert (=> b!4546927 (contains!13637 (getKeysList!503 lt!1720601) (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))

(declare-fun lt!1720590 () Unit!99525)

(assert (=> b!4546927 (= lt!1720590 lt!1720597)))

(assert (=> b!4546927 false))

(declare-fun b!4546928 () Bool)

(declare-fun Unit!99610 () Unit!99525)

(assert (=> b!4546928 (= e!2833642 Unit!99610)))

(declare-fun bm!317056 () Bool)

(assert (=> bm!317056 (= call!317058 (containsKey!1922 (ite c!776726 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))) (ite c!776726 key!3287 (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))))))))))

(declare-fun b!4546929 () Bool)

(declare-fun Unit!99611 () Unit!99525)

(assert (=> b!4546929 (= e!2833637 Unit!99611)))

(declare-fun lt!1720602 () V!12439)

(assert (=> b!4546929 (= lt!1720602 (get!16727 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287)))))

(assert (=> b!4546929 (= lt!1720598 key!3287)))

(declare-fun lt!1720600 () K!12193)

(assert (=> b!4546929 (= lt!1720600 key!3287)))

(declare-fun lt!1720595 () Unit!99525)

(declare-fun lemmaContainsTupleThenContainsKey!81 (List!50931 K!12193 V!12439) Unit!99525)

(assert (=> b!4546929 (= lt!1720595 (lemmaContainsTupleThenContainsKey!81 (t!357897 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) lt!1720598 (get!16727 (getValueByKey!1170 (toList!4450 (extractMap!1277 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) key!3287))))))

(assert (=> b!4546929 call!317060))

(declare-fun lt!1720603 () Unit!99525)

(assert (=> b!4546929 (= lt!1720603 lt!1720595)))

(assert (=> b!4546929 false))

(declare-fun b!4546930 () Bool)

(assert (=> b!4546930 (= e!2833639 (= call!317061 call!317057))))

(declare-fun b!4546931 () Bool)

(assert (=> b!4546931 (= call!317056 call!317059)))

(declare-fun Unit!99612 () Unit!99525)

(assert (=> b!4546931 (= e!2833643 Unit!99612)))

(declare-fun b!4546932 () Bool)

(declare-fun Unit!99613 () Unit!99525)

(assert (=> b!4546932 (= e!2833637 Unit!99613)))

(assert (= (and d!1406965 c!776726) b!4546917))

(assert (= (and d!1406965 (not c!776726)) b!4546918))

(assert (= (and b!4546917 c!776729) b!4546914))

(assert (= (and b!4546917 (not c!776729)) b!4546931))

(assert (= (and b!4546914 c!776725) b!4546929))

(assert (= (and b!4546914 (not c!776725)) b!4546932))

(assert (= (or b!4546914 b!4546931) bm!317052))

(assert (= (or b!4546914 b!4546931) bm!317054))

(assert (= (and b!4546918 c!776731) b!4546923))

(assert (= (and b!4546918 (not c!776731)) b!4546924))

(assert (= (and b!4546923 c!776730) b!4546919))

(assert (= (and b!4546923 (not c!776730)) b!4546928))

(assert (= (and b!4546923 c!776728) b!4546927))

(assert (= (and b!4546923 (not c!776728)) b!4546915))

(assert (= (or b!4546917 b!4546919) bm!317056))

(assert (= (or b!4546929 b!4546923) bm!317053))

(assert (= (and bm!317053 c!776724) b!4546925))

(assert (= (and bm!317053 (not c!776724)) b!4546920))

(assert (= (and d!1406965 res!1895931) b!4546916))

(assert (= (and b!4546916 res!1895930) b!4546926))

(assert (= (and b!4546926 res!1895932) b!4546922))

(assert (= (and b!4546922 c!776727) b!4546921))

(assert (= (and b!4546922 (not c!776727)) b!4546930))

(assert (= (or b!4546921 b!4546930) bm!317055))

(assert (= (or b!4546921 b!4546930) bm!317051))

(assert (=> b!4546926 m!5318871))

(declare-fun m!5319183 () Bool)

(assert (=> b!4546926 m!5319183))

(declare-fun m!5319185 () Bool)

(assert (=> b!4546926 m!5319185))

(assert (=> b!4546926 m!5318319))

(assert (=> b!4546926 m!5318871))

(assert (=> b!4546926 m!5319185))

(declare-fun m!5319187 () Bool)

(assert (=> b!4546926 m!5319187))

(declare-fun m!5319189 () Bool)

(assert (=> b!4546922 m!5319189))

(declare-fun m!5319191 () Bool)

(assert (=> bm!317052 m!5319191))

(declare-fun m!5319193 () Bool)

(assert (=> bm!317051 m!5319193))

(declare-fun m!5319195 () Bool)

(assert (=> b!4546929 m!5319195))

(assert (=> b!4546929 m!5319195))

(declare-fun m!5319197 () Bool)

(assert (=> b!4546929 m!5319197))

(assert (=> b!4546929 m!5319197))

(declare-fun m!5319199 () Bool)

(assert (=> b!4546929 m!5319199))

(declare-fun m!5319201 () Bool)

(assert (=> b!4546923 m!5319201))

(assert (=> b!4546923 m!5319201))

(declare-fun m!5319203 () Bool)

(assert (=> b!4546923 m!5319203))

(declare-fun m!5319205 () Bool)

(assert (=> b!4546923 m!5319205))

(assert (=> b!4546923 m!5319205))

(declare-fun m!5319207 () Bool)

(assert (=> b!4546923 m!5319207))

(assert (=> b!4546914 m!5319195))

(assert (=> b!4546914 m!5319195))

(assert (=> b!4546914 m!5319197))

(declare-fun m!5319209 () Bool)

(assert (=> b!4546914 m!5319209))

(declare-fun m!5319211 () Bool)

(assert (=> b!4546914 m!5319211))

(declare-fun m!5319213 () Bool)

(assert (=> b!4546919 m!5319213))

(declare-fun m!5319215 () Bool)

(assert (=> d!1406965 m!5319215))

(declare-fun m!5319217 () Bool)

(assert (=> d!1406965 m!5319217))

(declare-fun m!5319219 () Bool)

(assert (=> bm!317053 m!5319219))

(declare-fun m!5319221 () Bool)

(assert (=> bm!317055 m!5319221))

(assert (=> b!4546921 m!5319209))

(assert (=> b!4546921 m!5319195))

(declare-fun m!5319223 () Bool)

(assert (=> b!4546921 m!5319223))

(assert (=> b!4546921 m!5319189))

(assert (=> b!4546921 m!5319195))

(assert (=> b!4546921 m!5319197))

(declare-fun m!5319225 () Bool)

(assert (=> b!4546921 m!5319225))

(assert (=> b!4546921 m!5319195))

(declare-fun m!5319227 () Bool)

(assert (=> bm!317056 m!5319227))

(declare-fun m!5319229 () Bool)

(assert (=> b!4546916 m!5319229))

(assert (=> bm!317054 m!5319193))

(assert (=> b!4546927 m!5319205))

(declare-fun m!5319231 () Bool)

(assert (=> b!4546927 m!5319231))

(declare-fun m!5319233 () Bool)

(assert (=> b!4546927 m!5319233))

(assert (=> b!4546927 m!5319233))

(declare-fun m!5319235 () Bool)

(assert (=> b!4546927 m!5319235))

(assert (=> b!4546920 m!5319205))

(assert (=> d!1406717 d!1406965))

(declare-fun d!1406983 () Bool)

(declare-fun res!1895933 () Bool)

(declare-fun e!2833647 () Bool)

(assert (=> d!1406983 (=> res!1895933 e!2833647)))

(assert (=> d!1406983 (= res!1895933 (not (is-Cons!50807 (_2!28954 lt!1720034))))))

(assert (=> d!1406983 (= (noDuplicateKeys!1221 (_2!28954 lt!1720034)) e!2833647)))

(declare-fun b!4546933 () Bool)

(declare-fun e!2833648 () Bool)

(assert (=> b!4546933 (= e!2833647 e!2833648)))

(declare-fun res!1895934 () Bool)

(assert (=> b!4546933 (=> (not res!1895934) (not e!2833648))))

(assert (=> b!4546933 (= res!1895934 (not (containsKey!1920 (t!357897 (_2!28954 lt!1720034)) (_1!28953 (h!56700 (_2!28954 lt!1720034))))))))

(declare-fun b!4546934 () Bool)

(assert (=> b!4546934 (= e!2833648 (noDuplicateKeys!1221 (t!357897 (_2!28954 lt!1720034))))))

(assert (= (and d!1406983 (not res!1895933)) b!4546933))

(assert (= (and b!4546933 res!1895934) b!4546934))

(declare-fun m!5319237 () Bool)

(assert (=> b!4546933 m!5319237))

(declare-fun m!5319239 () Bool)

(assert (=> b!4546934 m!5319239))

(assert (=> bs!884760 d!1406983))

(declare-fun d!1406985 () Bool)

(assert (=> d!1406985 (dynLambda!21240 lambda!177318 lt!1720034)))

(assert (=> d!1406985 true))

(declare-fun _$7!1960 () Unit!99525)

(assert (=> d!1406985 (= (choose!30025 (toList!4449 lm!1477) lambda!177318 lt!1720034) _$7!1960)))

(declare-fun b_lambda!158957 () Bool)

(assert (=> (not b_lambda!158957) (not d!1406985)))

(declare-fun bs!884965 () Bool)

(assert (= bs!884965 d!1406985))

(assert (=> bs!884965 m!5318427))

(assert (=> d!1406755 d!1406985))

(assert (=> d!1406755 d!1406703))

(declare-fun d!1406987 () Bool)

(declare-fun res!1895935 () Bool)

(declare-fun e!2833649 () Bool)

(assert (=> d!1406987 (=> res!1895935 e!2833649)))

(assert (=> d!1406987 (= res!1895935 (is-Nil!50808 (toList!4449 lm!1477)))))

(assert (=> d!1406987 (= (forall!10382 (toList!4449 lm!1477) lambda!177341) e!2833649)))

(declare-fun b!4546935 () Bool)

(declare-fun e!2833650 () Bool)

(assert (=> b!4546935 (= e!2833649 e!2833650)))

(declare-fun res!1895936 () Bool)

(assert (=> b!4546935 (=> (not res!1895936) (not e!2833650))))

(assert (=> b!4546935 (= res!1895936 (dynLambda!21240 lambda!177341 (h!56701 (toList!4449 lm!1477))))))

(declare-fun b!4546936 () Bool)

(assert (=> b!4546936 (= e!2833650 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177341))))

(assert (= (and d!1406987 (not res!1895935)) b!4546935))

(assert (= (and b!4546935 res!1895936) b!4546936))

(declare-fun b_lambda!158959 () Bool)

(assert (=> (not b_lambda!158959) (not b!4546935)))

(declare-fun m!5319241 () Bool)

(assert (=> b!4546935 m!5319241))

(declare-fun m!5319243 () Bool)

(assert (=> b!4546936 m!5319243))

(assert (=> d!1406709 d!1406987))

(declare-fun bs!884966 () Bool)

(declare-fun b!4546941 () Bool)

(assert (= bs!884966 (and b!4546941 d!1406789)))

(declare-fun lambda!177492 () Int)

(assert (=> bs!884966 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720332) (= lambda!177492 lambda!177409))))

(declare-fun bs!884967 () Bool)

(assert (= bs!884967 (and b!4546941 b!4546534)))

(assert (=> bs!884967 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720341) (= lambda!177492 lambda!177408))))

(declare-fun bs!884968 () Bool)

(assert (= bs!884968 (and b!4546941 b!4546535)))

(assert (=> bs!884968 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177492 lambda!177406))))

(declare-fun bs!884969 () Bool)

(assert (= bs!884969 (and b!4546941 b!4546822)))

(assert (=> bs!884969 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177492 lambda!177454))))

(declare-fun bs!884970 () Bool)

(assert (= bs!884970 (and b!4546941 b!4546821)))

(assert (=> bs!884970 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720466) (= lambda!177492 lambda!177456))))

(assert (=> bs!884967 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177492 lambda!177407))))

(declare-fun bs!884971 () Bool)

(assert (= bs!884971 (and b!4546941 d!1406707)))

(assert (=> bs!884971 (not (= lambda!177492 lambda!177338))))

(declare-fun bs!884972 () Bool)

(assert (= bs!884972 (and b!4546941 d!1406955)))

(assert (=> bs!884972 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720457) (= lambda!177492 lambda!177457))))

(assert (=> bs!884970 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177492 lambda!177455))))

(assert (=> b!4546941 true))

(declare-fun bs!884973 () Bool)

(declare-fun b!4546940 () Bool)

(assert (= bs!884973 (and b!4546940 d!1406789)))

(declare-fun lambda!177493 () Int)

(assert (=> bs!884973 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720332) (= lambda!177493 lambda!177409))))

(declare-fun bs!884974 () Bool)

(assert (= bs!884974 (and b!4546940 b!4546941)))

(assert (=> bs!884974 (= lambda!177493 lambda!177492)))

(declare-fun bs!884975 () Bool)

(assert (= bs!884975 (and b!4546940 b!4546534)))

(assert (=> bs!884975 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720341) (= lambda!177493 lambda!177408))))

(declare-fun bs!884976 () Bool)

(assert (= bs!884976 (and b!4546940 b!4546535)))

(assert (=> bs!884976 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177493 lambda!177406))))

(declare-fun bs!884977 () Bool)

(assert (= bs!884977 (and b!4546940 b!4546822)))

(assert (=> bs!884977 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177493 lambda!177454))))

(declare-fun bs!884978 () Bool)

(assert (= bs!884978 (and b!4546940 b!4546821)))

(assert (=> bs!884978 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720466) (= lambda!177493 lambda!177456))))

(assert (=> bs!884975 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177493 lambda!177407))))

(declare-fun bs!884979 () Bool)

(assert (= bs!884979 (and b!4546940 d!1406707)))

(assert (=> bs!884979 (not (= lambda!177493 lambda!177338))))

(declare-fun bs!884980 () Bool)

(assert (= bs!884980 (and b!4546940 d!1406955)))

(assert (=> bs!884980 (= (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720457) (= lambda!177493 lambda!177457))))

(assert (=> bs!884978 (= (= (extractMap!1277 (t!357898 lt!1720035)) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177493 lambda!177455))))

(assert (=> b!4546940 true))

(declare-fun lt!1720622 () ListMap!3711)

(declare-fun lambda!177494 () Int)

(assert (=> bs!884973 (= (= lt!1720622 lt!1720332) (= lambda!177494 lambda!177409))))

(assert (=> bs!884974 (= (= lt!1720622 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177494 lambda!177492))))

(assert (=> bs!884975 (= (= lt!1720622 lt!1720341) (= lambda!177494 lambda!177408))))

(assert (=> bs!884976 (= (= lt!1720622 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177494 lambda!177406))))

(assert (=> bs!884977 (= (= lt!1720622 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177494 lambda!177454))))

(assert (=> bs!884975 (= (= lt!1720622 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177494 lambda!177407))))

(assert (=> bs!884979 (not (= lambda!177494 lambda!177338))))

(assert (=> bs!884978 (= (= lt!1720622 lt!1720466) (= lambda!177494 lambda!177456))))

(assert (=> b!4546940 (= (= lt!1720622 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177494 lambda!177493))))

(assert (=> bs!884980 (= (= lt!1720622 lt!1720457) (= lambda!177494 lambda!177457))))

(assert (=> bs!884978 (= (= lt!1720622 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177494 lambda!177455))))

(assert (=> b!4546940 true))

(declare-fun bs!884981 () Bool)

(declare-fun d!1406989 () Bool)

(assert (= bs!884981 (and d!1406989 b!4546940)))

(declare-fun lt!1720613 () ListMap!3711)

(declare-fun lambda!177495 () Int)

(assert (=> bs!884981 (= (= lt!1720613 lt!1720622) (= lambda!177495 lambda!177494))))

(declare-fun bs!884982 () Bool)

(assert (= bs!884982 (and d!1406989 d!1406789)))

(assert (=> bs!884982 (= (= lt!1720613 lt!1720332) (= lambda!177495 lambda!177409))))

(declare-fun bs!884983 () Bool)

(assert (= bs!884983 (and d!1406989 b!4546941)))

(assert (=> bs!884983 (= (= lt!1720613 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177495 lambda!177492))))

(declare-fun bs!884984 () Bool)

(assert (= bs!884984 (and d!1406989 b!4546534)))

(assert (=> bs!884984 (= (= lt!1720613 lt!1720341) (= lambda!177495 lambda!177408))))

(declare-fun bs!884985 () Bool)

(assert (= bs!884985 (and d!1406989 b!4546535)))

(assert (=> bs!884985 (= (= lt!1720613 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177495 lambda!177406))))

(declare-fun bs!884986 () Bool)

(assert (= bs!884986 (and d!1406989 b!4546822)))

(assert (=> bs!884986 (= (= lt!1720613 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177495 lambda!177454))))

(assert (=> bs!884984 (= (= lt!1720613 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177495 lambda!177407))))

(declare-fun bs!884987 () Bool)

(assert (= bs!884987 (and d!1406989 d!1406707)))

(assert (=> bs!884987 (not (= lambda!177495 lambda!177338))))

(declare-fun bs!884988 () Bool)

(assert (= bs!884988 (and d!1406989 b!4546821)))

(assert (=> bs!884988 (= (= lt!1720613 lt!1720466) (= lambda!177495 lambda!177456))))

(assert (=> bs!884981 (= (= lt!1720613 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177495 lambda!177493))))

(declare-fun bs!884989 () Bool)

(assert (= bs!884989 (and d!1406989 d!1406955)))

(assert (=> bs!884989 (= (= lt!1720613 lt!1720457) (= lambda!177495 lambda!177457))))

(assert (=> bs!884988 (= (= lt!1720613 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177495 lambda!177455))))

(assert (=> d!1406989 true))

(declare-fun b!4546937 () Bool)

(declare-fun e!2833652 () Bool)

(assert (=> b!4546937 (= e!2833652 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) lambda!177494))))

(declare-fun bm!317057 () Bool)

(declare-fun call!317064 () Unit!99525)

(assert (=> bm!317057 (= call!317064 (lemmaContainsAllItsOwnKeys!375 (extractMap!1277 (t!357898 lt!1720035))))))

(declare-fun b!4546938 () Bool)

(declare-fun e!2833651 () Bool)

(assert (=> b!4546938 (= e!2833651 (invariantList!1055 (toList!4450 lt!1720613)))))

(assert (=> d!1406989 e!2833651))

(declare-fun res!1895938 () Bool)

(assert (=> d!1406989 (=> (not res!1895938) (not e!2833651))))

(assert (=> d!1406989 (= res!1895938 (forall!10384 (_2!28954 (h!56701 lt!1720035)) lambda!177495))))

(declare-fun e!2833653 () ListMap!3711)

(assert (=> d!1406989 (= lt!1720613 e!2833653)))

(declare-fun c!776732 () Bool)

(assert (=> d!1406989 (= c!776732 (is-Nil!50807 (_2!28954 (h!56701 lt!1720035))))))

(assert (=> d!1406989 (noDuplicateKeys!1221 (_2!28954 (h!56701 lt!1720035)))))

(assert (=> d!1406989 (= (addToMapMapFromBucket!741 (_2!28954 (h!56701 lt!1720035)) (extractMap!1277 (t!357898 lt!1720035))) lt!1720613)))

(declare-fun lt!1720624 () ListMap!3711)

(declare-fun call!317062 () Bool)

(declare-fun bm!317058 () Bool)

(assert (=> bm!317058 (= call!317062 (forall!10384 (ite c!776732 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) (toList!4450 lt!1720624)) (ite c!776732 lambda!177492 lambda!177494)))))

(declare-fun bm!317059 () Bool)

(declare-fun call!317063 () Bool)

(assert (=> bm!317059 (= call!317063 (forall!10384 (ite c!776732 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) (_2!28954 (h!56701 lt!1720035))) (ite c!776732 lambda!177492 lambda!177494)))))

(declare-fun b!4546939 () Bool)

(declare-fun res!1895939 () Bool)

(assert (=> b!4546939 (=> (not res!1895939) (not e!2833651))))

(assert (=> b!4546939 (= res!1895939 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) lambda!177495))))

(assert (=> b!4546940 (= e!2833653 lt!1720622)))

(assert (=> b!4546940 (= lt!1720624 (+!1633 (extractMap!1277 (t!357898 lt!1720035)) (h!56700 (_2!28954 (h!56701 lt!1720035)))))))

(assert (=> b!4546940 (= lt!1720622 (addToMapMapFromBucket!741 (t!357897 (_2!28954 (h!56701 lt!1720035))) (+!1633 (extractMap!1277 (t!357898 lt!1720035)) (h!56700 (_2!28954 (h!56701 lt!1720035))))))))

(declare-fun lt!1720623 () Unit!99525)

(assert (=> b!4546940 (= lt!1720623 call!317064)))

(assert (=> b!4546940 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) lambda!177493)))

(declare-fun lt!1720612 () Unit!99525)

(assert (=> b!4546940 (= lt!1720612 lt!1720623)))

(assert (=> b!4546940 (forall!10384 (toList!4450 lt!1720624) lambda!177494)))

(declare-fun lt!1720605 () Unit!99525)

(declare-fun Unit!99616 () Unit!99525)

(assert (=> b!4546940 (= lt!1720605 Unit!99616)))

(assert (=> b!4546940 (forall!10384 (t!357897 (_2!28954 (h!56701 lt!1720035))) lambda!177494)))

(declare-fun lt!1720604 () Unit!99525)

(declare-fun Unit!99617 () Unit!99525)

(assert (=> b!4546940 (= lt!1720604 Unit!99617)))

(declare-fun lt!1720608 () Unit!99525)

(declare-fun Unit!99618 () Unit!99525)

(assert (=> b!4546940 (= lt!1720608 Unit!99618)))

(declare-fun lt!1720610 () Unit!99525)

(assert (=> b!4546940 (= lt!1720610 (forallContained!2648 (toList!4450 lt!1720624) lambda!177494 (h!56700 (_2!28954 (h!56701 lt!1720035)))))))

(assert (=> b!4546940 (contains!13631 lt!1720624 (_1!28953 (h!56700 (_2!28954 (h!56701 lt!1720035)))))))

(declare-fun lt!1720606 () Unit!99525)

(declare-fun Unit!99621 () Unit!99525)

(assert (=> b!4546940 (= lt!1720606 Unit!99621)))

(assert (=> b!4546940 (contains!13631 lt!1720622 (_1!28953 (h!56700 (_2!28954 (h!56701 lt!1720035)))))))

(declare-fun lt!1720609 () Unit!99525)

(declare-fun Unit!99623 () Unit!99525)

(assert (=> b!4546940 (= lt!1720609 Unit!99623)))

(assert (=> b!4546940 (forall!10384 (_2!28954 (h!56701 lt!1720035)) lambda!177494)))

(declare-fun lt!1720615 () Unit!99525)

(declare-fun Unit!99624 () Unit!99525)

(assert (=> b!4546940 (= lt!1720615 Unit!99624)))

(assert (=> b!4546940 call!317062))

(declare-fun lt!1720619 () Unit!99525)

(declare-fun Unit!99626 () Unit!99525)

(assert (=> b!4546940 (= lt!1720619 Unit!99626)))

(declare-fun lt!1720614 () Unit!99525)

(declare-fun Unit!99627 () Unit!99525)

(assert (=> b!4546940 (= lt!1720614 Unit!99627)))

(declare-fun lt!1720616 () Unit!99525)

(assert (=> b!4546940 (= lt!1720616 (addForallContainsKeyThenBeforeAdding!375 (extractMap!1277 (t!357898 lt!1720035)) lt!1720622 (_1!28953 (h!56700 (_2!28954 (h!56701 lt!1720035)))) (_2!28953 (h!56700 (_2!28954 (h!56701 lt!1720035))))))))

(assert (=> b!4546940 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) lambda!177494)))

(declare-fun lt!1720621 () Unit!99525)

(assert (=> b!4546940 (= lt!1720621 lt!1720616)))

(assert (=> b!4546940 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 lt!1720035))) lambda!177494)))

(declare-fun lt!1720617 () Unit!99525)

(declare-fun Unit!99630 () Unit!99525)

(assert (=> b!4546940 (= lt!1720617 Unit!99630)))

(declare-fun res!1895937 () Bool)

(assert (=> b!4546940 (= res!1895937 call!317063)))

(assert (=> b!4546940 (=> (not res!1895937) (not e!2833652))))

(assert (=> b!4546940 e!2833652))

(declare-fun lt!1720611 () Unit!99525)

(declare-fun Unit!99633 () Unit!99525)

(assert (=> b!4546940 (= lt!1720611 Unit!99633)))

(assert (=> b!4546941 (= e!2833653 (extractMap!1277 (t!357898 lt!1720035)))))

(declare-fun lt!1720618 () Unit!99525)

(assert (=> b!4546941 (= lt!1720618 call!317064)))

(assert (=> b!4546941 call!317062))

(declare-fun lt!1720620 () Unit!99525)

(assert (=> b!4546941 (= lt!1720620 lt!1720618)))

(assert (=> b!4546941 call!317063))

(declare-fun lt!1720607 () Unit!99525)

(declare-fun Unit!99634 () Unit!99525)

(assert (=> b!4546941 (= lt!1720607 Unit!99634)))

(assert (= (and d!1406989 c!776732) b!4546941))

(assert (= (and d!1406989 (not c!776732)) b!4546940))

(assert (= (and b!4546940 res!1895937) b!4546937))

(assert (= (or b!4546941 b!4546940) bm!317059))

(assert (= (or b!4546941 b!4546940) bm!317058))

(assert (= (or b!4546941 b!4546940) bm!317057))

(assert (= (and d!1406989 res!1895938) b!4546939))

(assert (= (and b!4546939 res!1895939) b!4546938))

(declare-fun m!5319245 () Bool)

(assert (=> bm!317059 m!5319245))

(declare-fun m!5319247 () Bool)

(assert (=> b!4546937 m!5319247))

(declare-fun m!5319249 () Bool)

(assert (=> b!4546940 m!5319249))

(declare-fun m!5319251 () Bool)

(assert (=> b!4546940 m!5319251))

(assert (=> b!4546940 m!5318283))

(declare-fun m!5319253 () Bool)

(assert (=> b!4546940 m!5319253))

(declare-fun m!5319255 () Bool)

(assert (=> b!4546940 m!5319255))

(declare-fun m!5319257 () Bool)

(assert (=> b!4546940 m!5319257))

(declare-fun m!5319259 () Bool)

(assert (=> b!4546940 m!5319259))

(declare-fun m!5319261 () Bool)

(assert (=> b!4546940 m!5319261))

(declare-fun m!5319263 () Bool)

(assert (=> b!4546940 m!5319263))

(declare-fun m!5319265 () Bool)

(assert (=> b!4546940 m!5319265))

(assert (=> b!4546940 m!5319247))

(declare-fun m!5319267 () Bool)

(assert (=> b!4546940 m!5319267))

(assert (=> b!4546940 m!5318283))

(assert (=> b!4546940 m!5319255))

(assert (=> b!4546940 m!5319247))

(declare-fun m!5319269 () Bool)

(assert (=> b!4546939 m!5319269))

(declare-fun m!5319271 () Bool)

(assert (=> d!1406989 m!5319271))

(declare-fun m!5319273 () Bool)

(assert (=> d!1406989 m!5319273))

(declare-fun m!5319275 () Bool)

(assert (=> bm!317058 m!5319275))

(declare-fun m!5319277 () Bool)

(assert (=> b!4546938 m!5319277))

(assert (=> bm!317057 m!5318283))

(declare-fun m!5319279 () Bool)

(assert (=> bm!317057 m!5319279))

(assert (=> b!4546348 d!1406989))

(declare-fun bs!884990 () Bool)

(declare-fun d!1406991 () Bool)

(assert (= bs!884990 (and d!1406991 d!1406947)))

(declare-fun lambda!177496 () Int)

(assert (=> bs!884990 (= lambda!177496 lambda!177453)))

(declare-fun bs!884991 () Bool)

(assert (= bs!884991 (and d!1406991 d!1406679)))

(assert (=> bs!884991 (= lambda!177496 lambda!177329)))

(declare-fun bs!884992 () Bool)

(assert (= bs!884992 (and d!1406991 d!1406709)))

(assert (=> bs!884992 (not (= lambda!177496 lambda!177341))))

(declare-fun bs!884993 () Bool)

(assert (= bs!884993 (and d!1406991 d!1406957)))

(assert (=> bs!884993 (= lambda!177496 lambda!177458)))

(declare-fun bs!884994 () Bool)

(assert (= bs!884994 (and d!1406991 start!451626)))

(assert (=> bs!884994 (= lambda!177496 lambda!177318)))

(declare-fun bs!884995 () Bool)

(assert (= bs!884995 (and d!1406991 d!1406757)))

(assert (=> bs!884995 (= lambda!177496 lambda!177362)))

(declare-fun bs!884996 () Bool)

(assert (= bs!884996 (and d!1406991 d!1406825)))

(assert (=> bs!884996 (= lambda!177496 lambda!177410)))

(declare-fun bs!884997 () Bool)

(assert (= bs!884997 (and d!1406991 d!1406877)))

(assert (=> bs!884997 (= lambda!177496 lambda!177442)))

(declare-fun bs!884998 () Bool)

(assert (= bs!884998 (and d!1406991 d!1406693)))

(assert (=> bs!884998 (= lambda!177496 lambda!177335)))

(declare-fun bs!884999 () Bool)

(assert (= bs!884999 (and d!1406991 d!1406713)))

(assert (=> bs!884999 (= lambda!177496 lambda!177342)))

(declare-fun bs!885000 () Bool)

(assert (= bs!885000 (and d!1406991 d!1406723)))

(assert (=> bs!885000 (= lambda!177496 lambda!177348)))

(declare-fun bs!885001 () Bool)

(assert (= bs!885001 (and d!1406991 d!1406747)))

(assert (=> bs!885001 (= lambda!177496 lambda!177358)))

(declare-fun bs!885002 () Bool)

(assert (= bs!885002 (and d!1406991 d!1406751)))

(assert (=> bs!885002 (= lambda!177496 lambda!177359)))

(declare-fun lt!1720627 () ListMap!3711)

(assert (=> d!1406991 (invariantList!1055 (toList!4450 lt!1720627))))

(declare-fun e!2833654 () ListMap!3711)

(assert (=> d!1406991 (= lt!1720627 e!2833654)))

(declare-fun c!776733 () Bool)

(assert (=> d!1406991 (= c!776733 (is-Cons!50808 (t!357898 lt!1720035)))))

(assert (=> d!1406991 (forall!10382 (t!357898 lt!1720035) lambda!177496)))

(assert (=> d!1406991 (= (extractMap!1277 (t!357898 lt!1720035)) lt!1720627)))

(declare-fun b!4546942 () Bool)

(assert (=> b!4546942 (= e!2833654 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (t!357898 lt!1720035))) (extractMap!1277 (t!357898 (t!357898 lt!1720035)))))))

(declare-fun b!4546943 () Bool)

(assert (=> b!4546943 (= e!2833654 (ListMap!3712 Nil!50807))))

(assert (= (and d!1406991 c!776733) b!4546942))

(assert (= (and d!1406991 (not c!776733)) b!4546943))

(declare-fun m!5319281 () Bool)

(assert (=> d!1406991 m!5319281))

(declare-fun m!5319283 () Bool)

(assert (=> d!1406991 m!5319283))

(declare-fun m!5319285 () Bool)

(assert (=> b!4546942 m!5319285))

(assert (=> b!4546942 m!5319285))

(declare-fun m!5319287 () Bool)

(assert (=> b!4546942 m!5319287))

(assert (=> b!4546348 d!1406991))

(assert (=> d!1406667 d!1406931))

(declare-fun d!1406993 () Bool)

(declare-fun lt!1720642 () Bool)

(assert (=> d!1406993 (= lt!1720642 (set.member lt!1720038 (content!8473 (toList!4449 lt!1720095))))))

(declare-fun e!2833662 () Bool)

(assert (=> d!1406993 (= lt!1720642 e!2833662)))

(declare-fun res!1895941 () Bool)

(assert (=> d!1406993 (=> (not res!1895941) (not e!2833662))))

(assert (=> d!1406993 (= res!1895941 (is-Cons!50808 (toList!4449 lt!1720095)))))

(assert (=> d!1406993 (= (contains!13632 (toList!4449 lt!1720095) lt!1720038) lt!1720642)))

(declare-fun b!4546956 () Bool)

(declare-fun e!2833661 () Bool)

(assert (=> b!4546956 (= e!2833662 e!2833661)))

(declare-fun res!1895940 () Bool)

(assert (=> b!4546956 (=> res!1895940 e!2833661)))

(assert (=> b!4546956 (= res!1895940 (= (h!56701 (toList!4449 lt!1720095)) lt!1720038))))

(declare-fun b!4546957 () Bool)

(assert (=> b!4546957 (= e!2833661 (contains!13632 (t!357898 (toList!4449 lt!1720095)) lt!1720038))))

(assert (= (and d!1406993 res!1895941) b!4546956))

(assert (= (and b!4546956 (not res!1895940)) b!4546957))

(declare-fun m!5319289 () Bool)

(assert (=> d!1406993 m!5319289))

(declare-fun m!5319291 () Bool)

(assert (=> d!1406993 m!5319291))

(declare-fun m!5319293 () Bool)

(assert (=> b!4546957 m!5319293))

(assert (=> b!4546202 d!1406993))

(declare-fun d!1406995 () Bool)

(assert (=> d!1406995 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(declare-fun lt!1720661 () Unit!99525)

(declare-fun choose!30038 (List!50931 K!12193) Unit!99525)

(assert (=> d!1406995 (= lt!1720661 (choose!30038 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> d!1406995 (invariantList!1055 (toList!4450 (extractMap!1277 lt!1720035)))))

(assert (=> d!1406995 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 lt!1720035)) key!3287) lt!1720661)))

(declare-fun bs!885003 () Bool)

(assert (= bs!885003 d!1406995))

(assert (=> bs!885003 m!5318287))

(assert (=> bs!885003 m!5318287))

(assert (=> bs!885003 m!5318289))

(declare-fun m!5319295 () Bool)

(assert (=> bs!885003 m!5319295))

(assert (=> bs!885003 m!5318707))

(assert (=> b!4546353 d!1406995))

(declare-fun d!1406997 () Bool)

(declare-fun isEmpty!28765 (Option!11238) Bool)

(assert (=> d!1406997 (= (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287)) (not (isEmpty!28765 (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))))

(declare-fun bs!885004 () Bool)

(assert (= bs!885004 d!1406997))

(assert (=> bs!885004 m!5318287))

(declare-fun m!5319297 () Bool)

(assert (=> bs!885004 m!5319297))

(assert (=> b!4546353 d!1406997))

(declare-fun b!4546992 () Bool)

(declare-fun e!2833679 () Option!11238)

(assert (=> b!4546992 (= e!2833679 (Some!11237 (_2!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035))))))))

(declare-fun b!4546994 () Bool)

(declare-fun e!2833680 () Option!11238)

(assert (=> b!4546994 (= e!2833680 (getValueByKey!1170 (t!357897 (toList!4450 (extractMap!1277 lt!1720035))) key!3287))))

(declare-fun d!1406999 () Bool)

(declare-fun c!776754 () Bool)

(assert (=> d!1406999 (= c!776754 (and (is-Cons!50807 (toList!4450 (extractMap!1277 lt!1720035))) (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035)))) key!3287)))))

(assert (=> d!1406999 (= (getValueByKey!1170 (toList!4450 (extractMap!1277 lt!1720035)) key!3287) e!2833679)))

(declare-fun b!4546995 () Bool)

(assert (=> b!4546995 (= e!2833680 None!11237)))

(declare-fun b!4546993 () Bool)

(assert (=> b!4546993 (= e!2833679 e!2833680)))

(declare-fun c!776755 () Bool)

(assert (=> b!4546993 (= c!776755 (and (is-Cons!50807 (toList!4450 (extractMap!1277 lt!1720035))) (not (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 lt!1720035)))) key!3287))))))

(assert (= (and d!1406999 c!776754) b!4546992))

(assert (= (and d!1406999 (not c!776754)) b!4546993))

(assert (= (and b!4546993 c!776755) b!4546994))

(assert (= (and b!4546993 (not c!776755)) b!4546995))

(declare-fun m!5319299 () Bool)

(assert (=> b!4546994 m!5319299))

(assert (=> b!4546353 d!1406999))

(declare-fun d!1407001 () Bool)

(assert (=> d!1407001 (contains!13637 (getKeysList!503 (toList!4450 (extractMap!1277 lt!1720035))) key!3287)))

(declare-fun lt!1720668 () Unit!99525)

(declare-fun choose!30039 (List!50931 K!12193) Unit!99525)

(assert (=> d!1407001 (= lt!1720668 (choose!30039 (toList!4450 (extractMap!1277 lt!1720035)) key!3287))))

(assert (=> d!1407001 (invariantList!1055 (toList!4450 (extractMap!1277 lt!1720035)))))

(assert (=> d!1407001 (= (lemmaInListThenGetKeysListContains!499 (toList!4450 (extractMap!1277 lt!1720035)) key!3287) lt!1720668)))

(declare-fun bs!885005 () Bool)

(assert (= bs!885005 d!1407001))

(assert (=> bs!885005 m!5318299))

(assert (=> bs!885005 m!5318299))

(declare-fun m!5319301 () Bool)

(assert (=> bs!885005 m!5319301))

(declare-fun m!5319303 () Bool)

(assert (=> bs!885005 m!5319303))

(assert (=> bs!885005 m!5318707))

(assert (=> b!4546353 d!1407001))

(assert (=> b!4546355 d!1406871))

(declare-fun d!1407003 () Bool)

(declare-fun lt!1720669 () Bool)

(assert (=> d!1407003 (= lt!1720669 (set.member (tuple2!51321 hash!344 lt!1720030) (content!8473 (toList!4449 lm!1477))))))

(declare-fun e!2833682 () Bool)

(assert (=> d!1407003 (= lt!1720669 e!2833682)))

(declare-fun res!1895949 () Bool)

(assert (=> d!1407003 (=> (not res!1895949) (not e!2833682))))

(assert (=> d!1407003 (= res!1895949 (is-Cons!50808 (toList!4449 lm!1477)))))

(assert (=> d!1407003 (= (contains!13632 (toList!4449 lm!1477) (tuple2!51321 hash!344 lt!1720030)) lt!1720669)))

(declare-fun b!4546996 () Bool)

(declare-fun e!2833681 () Bool)

(assert (=> b!4546996 (= e!2833682 e!2833681)))

(declare-fun res!1895948 () Bool)

(assert (=> b!4546996 (=> res!1895948 e!2833681)))

(assert (=> b!4546996 (= res!1895948 (= (h!56701 (toList!4449 lm!1477)) (tuple2!51321 hash!344 lt!1720030)))))

(declare-fun b!4546997 () Bool)

(assert (=> b!4546997 (= e!2833681 (contains!13632 (t!357898 (toList!4449 lm!1477)) (tuple2!51321 hash!344 lt!1720030)))))

(assert (= (and d!1407003 res!1895949) b!4546996))

(assert (= (and b!4546996 (not res!1895948)) b!4546997))

(assert (=> d!1407003 m!5318493))

(declare-fun m!5319305 () Bool)

(assert (=> d!1407003 m!5319305))

(declare-fun m!5319307 () Bool)

(assert (=> b!4546997 m!5319307))

(assert (=> d!1406765 d!1407003))

(declare-fun d!1407005 () Bool)

(assert (=> d!1407005 (contains!13632 (toList!4449 lm!1477) (tuple2!51321 hash!344 lt!1720030))))

(assert (=> d!1407005 true))

(declare-fun _$14!1247 () Unit!99525)

(assert (=> d!1407005 (= (choose!30027 (toList!4449 lm!1477) hash!344 lt!1720030) _$14!1247)))

(declare-fun bs!885006 () Bool)

(assert (= bs!885006 d!1407005))

(assert (=> bs!885006 m!5318483))

(assert (=> d!1406765 d!1407005))

(declare-fun d!1407007 () Bool)

(declare-fun res!1895954 () Bool)

(declare-fun e!2833687 () Bool)

(assert (=> d!1407007 (=> res!1895954 e!2833687)))

(assert (=> d!1407007 (= res!1895954 (or (is-Nil!50808 (toList!4449 lm!1477)) (is-Nil!50808 (t!357898 (toList!4449 lm!1477)))))))

(assert (=> d!1407007 (= (isStrictlySorted!469 (toList!4449 lm!1477)) e!2833687)))

(declare-fun b!4547002 () Bool)

(declare-fun e!2833688 () Bool)

(assert (=> b!4547002 (= e!2833687 e!2833688)))

(declare-fun res!1895955 () Bool)

(assert (=> b!4547002 (=> (not res!1895955) (not e!2833688))))

(assert (=> b!4547002 (= res!1895955 (bvslt (_1!28954 (h!56701 (toList!4449 lm!1477))) (_1!28954 (h!56701 (t!357898 (toList!4449 lm!1477))))))))

(declare-fun b!4547003 () Bool)

(assert (=> b!4547003 (= e!2833688 (isStrictlySorted!469 (t!357898 (toList!4449 lm!1477))))))

(assert (= (and d!1407007 (not res!1895954)) b!4547002))

(assert (= (and b!4547002 res!1895955) b!4547003))

(declare-fun m!5319309 () Bool)

(assert (=> b!4547003 m!5319309))

(assert (=> d!1406765 d!1407007))

(declare-fun d!1407009 () Bool)

(declare-fun lt!1720688 () Bool)

(assert (=> d!1407009 (= lt!1720688 (set.member lt!1720034 (content!8473 (t!357898 (toList!4449 lm!1477)))))))

(declare-fun e!2833699 () Bool)

(assert (=> d!1407009 (= lt!1720688 e!2833699)))

(declare-fun res!1895960 () Bool)

(assert (=> d!1407009 (=> (not res!1895960) (not e!2833699))))

(assert (=> d!1407009 (= res!1895960 (is-Cons!50808 (t!357898 (toList!4449 lm!1477))))))

(assert (=> d!1407009 (= (contains!13632 (t!357898 (toList!4449 lm!1477)) lt!1720034) lt!1720688)))

(declare-fun b!4547023 () Bool)

(declare-fun e!2833698 () Bool)

(assert (=> b!4547023 (= e!2833699 e!2833698)))

(declare-fun res!1895959 () Bool)

(assert (=> b!4547023 (=> res!1895959 e!2833698)))

(assert (=> b!4547023 (= res!1895959 (= (h!56701 (t!357898 (toList!4449 lm!1477))) lt!1720034))))

(declare-fun b!4547024 () Bool)

(assert (=> b!4547024 (= e!2833698 (contains!13632 (t!357898 (t!357898 (toList!4449 lm!1477))) lt!1720034))))

(assert (= (and d!1407009 res!1895960) b!4547023))

(assert (= (and b!4547023 (not res!1895959)) b!4547024))

(declare-fun m!5319311 () Bool)

(assert (=> d!1407009 m!5319311))

(declare-fun m!5319313 () Bool)

(assert (=> d!1407009 m!5319313))

(declare-fun m!5319315 () Bool)

(assert (=> b!4547024 m!5319315))

(assert (=> b!4546437 d!1407009))

(declare-fun b!4547028 () Bool)

(declare-fun e!2833701 () Option!11237)

(assert (=> b!4547028 (= e!2833701 None!11236)))

(declare-fun b!4547025 () Bool)

(declare-fun e!2833700 () Option!11237)

(assert (=> b!4547025 (= e!2833700 (Some!11236 (_2!28954 (h!56701 (toList!4449 lt!1720200)))))))

(declare-fun b!4547026 () Bool)

(assert (=> b!4547026 (= e!2833700 e!2833701)))

(declare-fun c!776765 () Bool)

(assert (=> b!4547026 (= c!776765 (and (is-Cons!50808 (toList!4449 lt!1720200)) (not (= (_1!28954 (h!56701 (toList!4449 lt!1720200))) (_1!28954 lt!1720038)))))))

(declare-fun b!4547027 () Bool)

(assert (=> b!4547027 (= e!2833701 (getValueByKey!1169 (t!357898 (toList!4449 lt!1720200)) (_1!28954 lt!1720038)))))

(declare-fun d!1407011 () Bool)

(declare-fun c!776764 () Bool)

(assert (=> d!1407011 (= c!776764 (and (is-Cons!50808 (toList!4449 lt!1720200)) (= (_1!28954 (h!56701 (toList!4449 lt!1720200))) (_1!28954 lt!1720038))))))

(assert (=> d!1407011 (= (getValueByKey!1169 (toList!4449 lt!1720200) (_1!28954 lt!1720038)) e!2833700)))

(assert (= (and d!1407011 c!776764) b!4547025))

(assert (= (and d!1407011 (not c!776764)) b!4547026))

(assert (= (and b!4547026 c!776765) b!4547027))

(assert (= (and b!4547026 (not c!776765)) b!4547028))

(declare-fun m!5319317 () Bool)

(assert (=> b!4547027 m!5319317))

(assert (=> b!4546374 d!1407011))

(assert (=> d!1406705 d!1407007))

(assert (=> b!4546253 d!1406925))

(declare-fun d!1407013 () Bool)

(declare-fun res!1895961 () Bool)

(declare-fun e!2833702 () Bool)

(assert (=> d!1407013 (=> res!1895961 e!2833702)))

(assert (=> d!1407013 (= res!1895961 (and (is-Cons!50807 (_2!28954 (h!56701 lt!1720035))) (= (_1!28953 (h!56700 (_2!28954 (h!56701 lt!1720035)))) key!3287)))))

(assert (=> d!1407013 (= (containsKey!1920 (_2!28954 (h!56701 lt!1720035)) key!3287) e!2833702)))

(declare-fun b!4547029 () Bool)

(declare-fun e!2833703 () Bool)

(assert (=> b!4547029 (= e!2833702 e!2833703)))

(declare-fun res!1895962 () Bool)

(assert (=> b!4547029 (=> (not res!1895962) (not e!2833703))))

(assert (=> b!4547029 (= res!1895962 (is-Cons!50807 (_2!28954 (h!56701 lt!1720035))))))

(declare-fun b!4547030 () Bool)

(assert (=> b!4547030 (= e!2833703 (containsKey!1920 (t!357897 (_2!28954 (h!56701 lt!1720035))) key!3287))))

(assert (= (and d!1407013 (not res!1895961)) b!4547029))

(assert (= (and b!4547029 res!1895962) b!4547030))

(declare-fun m!5319319 () Bool)

(assert (=> b!4547030 m!5319319))

(assert (=> b!4546308 d!1407013))

(declare-fun d!1407015 () Bool)

(declare-fun lt!1720689 () Bool)

(assert (=> d!1407015 (= lt!1720689 (set.member key!3287 (content!8470 e!2833299)))))

(declare-fun e!2833705 () Bool)

(assert (=> d!1407015 (= lt!1720689 e!2833705)))

(declare-fun res!1895963 () Bool)

(assert (=> d!1407015 (=> (not res!1895963) (not e!2833705))))

(assert (=> d!1407015 (= res!1895963 (is-Cons!50811 e!2833299))))

(assert (=> d!1407015 (= (contains!13637 e!2833299 key!3287) lt!1720689)))

(declare-fun b!4547031 () Bool)

(declare-fun e!2833704 () Bool)

(assert (=> b!4547031 (= e!2833705 e!2833704)))

(declare-fun res!1895964 () Bool)

(assert (=> b!4547031 (=> res!1895964 e!2833704)))

(assert (=> b!4547031 (= res!1895964 (= (h!56706 e!2833299) key!3287))))

(declare-fun b!4547032 () Bool)

(assert (=> b!4547032 (= e!2833704 (contains!13637 (t!357901 e!2833299) key!3287))))

(assert (= (and d!1407015 res!1895963) b!4547031))

(assert (= (and b!4547031 (not res!1895964)) b!4547032))

(declare-fun m!5319321 () Bool)

(assert (=> d!1407015 m!5319321))

(declare-fun m!5319323 () Bool)

(assert (=> d!1407015 m!5319323))

(declare-fun m!5319325 () Bool)

(assert (=> b!4547032 m!5319325))

(assert (=> bm!317001 d!1407015))

(declare-fun d!1407017 () Bool)

(declare-fun res!1895965 () Bool)

(declare-fun e!2833706 () Bool)

(assert (=> d!1407017 (=> res!1895965 e!2833706)))

(assert (=> d!1407017 (= res!1895965 (is-Nil!50808 (t!357898 (toList!4449 lm!1477))))))

(assert (=> d!1407017 (= (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177318) e!2833706)))

(declare-fun b!4547033 () Bool)

(declare-fun e!2833707 () Bool)

(assert (=> b!4547033 (= e!2833706 e!2833707)))

(declare-fun res!1895966 () Bool)

(assert (=> b!4547033 (=> (not res!1895966) (not e!2833707))))

(assert (=> b!4547033 (= res!1895966 (dynLambda!21240 lambda!177318 (h!56701 (t!357898 (toList!4449 lm!1477)))))))

(declare-fun b!4547034 () Bool)

(assert (=> b!4547034 (= e!2833707 (forall!10382 (t!357898 (t!357898 (toList!4449 lm!1477))) lambda!177318))))

(assert (= (and d!1407017 (not res!1895965)) b!4547033))

(assert (= (and b!4547033 res!1895966) b!4547034))

(declare-fun b_lambda!158961 () Bool)

(assert (=> (not b_lambda!158961) (not b!4547033)))

(declare-fun m!5319327 () Bool)

(assert (=> b!4547033 m!5319327))

(declare-fun m!5319329 () Bool)

(assert (=> b!4547034 m!5319329))

(assert (=> b!4546332 d!1407017))

(assert (=> b!4546351 d!1406997))

(assert (=> b!4546351 d!1406999))

(declare-fun d!1407019 () Bool)

(assert (=> d!1407019 (= (invariantList!1055 (toList!4450 lt!1720150)) (noDuplicatedKeys!280 (toList!4450 lt!1720150)))))

(declare-fun bs!885007 () Bool)

(assert (= bs!885007 d!1407019))

(declare-fun m!5319331 () Bool)

(assert (=> bs!885007 m!5319331))

(assert (=> d!1406679 d!1407019))

(declare-fun d!1407021 () Bool)

(declare-fun res!1895967 () Bool)

(declare-fun e!2833708 () Bool)

(assert (=> d!1407021 (=> res!1895967 e!2833708)))

(assert (=> d!1407021 (= res!1895967 (is-Nil!50808 (toList!4449 lm!1477)))))

(assert (=> d!1407021 (= (forall!10382 (toList!4449 lm!1477) lambda!177329) e!2833708)))

(declare-fun b!4547035 () Bool)

(declare-fun e!2833709 () Bool)

(assert (=> b!4547035 (= e!2833708 e!2833709)))

(declare-fun res!1895968 () Bool)

(assert (=> b!4547035 (=> (not res!1895968) (not e!2833709))))

(assert (=> b!4547035 (= res!1895968 (dynLambda!21240 lambda!177329 (h!56701 (toList!4449 lm!1477))))))

(declare-fun b!4547036 () Bool)

(assert (=> b!4547036 (= e!2833709 (forall!10382 (t!357898 (toList!4449 lm!1477)) lambda!177329))))

(assert (= (and d!1407021 (not res!1895967)) b!4547035))

(assert (= (and b!4547035 res!1895968) b!4547036))

(declare-fun b_lambda!158963 () Bool)

(assert (=> (not b_lambda!158963) (not b!4547035)))

(declare-fun m!5319333 () Bool)

(assert (=> b!4547035 m!5319333))

(declare-fun m!5319335 () Bool)

(assert (=> b!4547036 m!5319335))

(assert (=> d!1406679 d!1407021))

(declare-fun d!1407023 () Bool)

(declare-fun c!776768 () Bool)

(assert (=> d!1407023 (= c!776768 (is-Nil!50808 (toList!4449 lm!1477)))))

(declare-fun e!2833712 () (Set tuple2!51320))

(assert (=> d!1407023 (= (content!8473 (toList!4449 lm!1477)) e!2833712)))

(declare-fun b!4547041 () Bool)

(assert (=> b!4547041 (= e!2833712 (as set.empty (Set tuple2!51320)))))

(declare-fun b!4547042 () Bool)

(assert (=> b!4547042 (= e!2833712 (set.union (set.insert (h!56701 (toList!4449 lm!1477)) (as set.empty (Set tuple2!51320))) (content!8473 (t!357898 (toList!4449 lm!1477)))))))

(assert (= (and d!1407023 c!776768) b!4547041))

(assert (= (and d!1407023 (not c!776768)) b!4547042))

(declare-fun m!5319377 () Bool)

(assert (=> b!4547042 m!5319377))

(assert (=> b!4547042 m!5319311))

(assert (=> d!1406775 d!1407023))

(declare-fun d!1407025 () Bool)

(assert (=> d!1407025 (= (invariantList!1055 (toList!4450 lt!1720178)) (noDuplicatedKeys!280 (toList!4450 lt!1720178)))))

(declare-fun bs!885008 () Bool)

(assert (= bs!885008 d!1407025))

(declare-fun m!5319379 () Bool)

(assert (=> bs!885008 m!5319379))

(assert (=> d!1406713 d!1407025))

(declare-fun d!1407027 () Bool)

(declare-fun res!1895969 () Bool)

(declare-fun e!2833713 () Bool)

(assert (=> d!1407027 (=> res!1895969 e!2833713)))

(assert (=> d!1407027 (= res!1895969 (is-Nil!50808 lt!1720035))))

(assert (=> d!1407027 (= (forall!10382 lt!1720035 lambda!177342) e!2833713)))

(declare-fun b!4547043 () Bool)

(declare-fun e!2833714 () Bool)

(assert (=> b!4547043 (= e!2833713 e!2833714)))

(declare-fun res!1895970 () Bool)

(assert (=> b!4547043 (=> (not res!1895970) (not e!2833714))))

(assert (=> b!4547043 (= res!1895970 (dynLambda!21240 lambda!177342 (h!56701 lt!1720035)))))

(declare-fun b!4547044 () Bool)

(assert (=> b!4547044 (= e!2833714 (forall!10382 (t!357898 lt!1720035) lambda!177342))))

(assert (= (and d!1407027 (not res!1895969)) b!4547043))

(assert (= (and b!4547043 res!1895970) b!4547044))

(declare-fun b_lambda!158965 () Bool)

(assert (=> (not b_lambda!158965) (not b!4547043)))

(declare-fun m!5319391 () Bool)

(assert (=> b!4547043 m!5319391))

(declare-fun m!5319393 () Bool)

(assert (=> b!4547044 m!5319393))

(assert (=> d!1406713 d!1407027))

(declare-fun bs!885009 () Bool)

(declare-fun b!4547049 () Bool)

(assert (= bs!885009 (and b!4547049 b!4546940)))

(declare-fun lambda!177497 () Int)

(assert (=> bs!885009 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720622) (= lambda!177497 lambda!177494))))

(declare-fun bs!885010 () Bool)

(assert (= bs!885010 (and b!4547049 d!1406789)))

(assert (=> bs!885010 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720332) (= lambda!177497 lambda!177409))))

(declare-fun bs!885011 () Bool)

(assert (= bs!885011 (and b!4547049 b!4546941)))

(assert (=> bs!885011 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177497 lambda!177492))))

(declare-fun bs!885012 () Bool)

(assert (= bs!885012 (and b!4547049 b!4546534)))

(assert (=> bs!885012 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720341) (= lambda!177497 lambda!177408))))

(declare-fun bs!885013 () Bool)

(assert (= bs!885013 (and b!4547049 b!4546535)))

(assert (=> bs!885013 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177497 lambda!177406))))

(declare-fun bs!885014 () Bool)

(assert (= bs!885014 (and b!4547049 b!4546822)))

(assert (=> bs!885014 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177497 lambda!177454))))

(assert (=> bs!885012 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177497 lambda!177407))))

(declare-fun bs!885015 () Bool)

(assert (= bs!885015 (and b!4547049 d!1406989)))

(assert (=> bs!885015 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720613) (= lambda!177497 lambda!177495))))

(declare-fun bs!885017 () Bool)

(assert (= bs!885017 (and b!4547049 d!1406707)))

(assert (=> bs!885017 (not (= lambda!177497 lambda!177338))))

(declare-fun bs!885018 () Bool)

(assert (= bs!885018 (and b!4547049 b!4546821)))

(assert (=> bs!885018 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720466) (= lambda!177497 lambda!177456))))

(assert (=> bs!885009 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177497 lambda!177493))))

(declare-fun bs!885019 () Bool)

(assert (= bs!885019 (and b!4547049 d!1406955)))

(assert (=> bs!885019 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720457) (= lambda!177497 lambda!177457))))

(assert (=> bs!885018 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177497 lambda!177455))))

(assert (=> b!4547049 true))

(declare-fun bs!885020 () Bool)

(declare-fun b!4547048 () Bool)

(assert (= bs!885020 (and b!4547048 b!4546940)))

(declare-fun lambda!177498 () Int)

(assert (=> bs!885020 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720622) (= lambda!177498 lambda!177494))))

(declare-fun bs!885021 () Bool)

(assert (= bs!885021 (and b!4547048 d!1406789)))

(assert (=> bs!885021 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720332) (= lambda!177498 lambda!177409))))

(declare-fun bs!885022 () Bool)

(assert (= bs!885022 (and b!4547048 b!4546941)))

(assert (=> bs!885022 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177498 lambda!177492))))

(declare-fun bs!885023 () Bool)

(assert (= bs!885023 (and b!4547048 b!4546535)))

(assert (=> bs!885023 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177498 lambda!177406))))

(declare-fun bs!885024 () Bool)

(assert (= bs!885024 (and b!4547048 b!4546822)))

(assert (=> bs!885024 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177498 lambda!177454))))

(declare-fun bs!885025 () Bool)

(assert (= bs!885025 (and b!4547048 b!4546534)))

(assert (=> bs!885025 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177498 lambda!177407))))

(declare-fun bs!885026 () Bool)

(assert (= bs!885026 (and b!4547048 d!1406989)))

(assert (=> bs!885026 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720613) (= lambda!177498 lambda!177495))))

(declare-fun bs!885027 () Bool)

(assert (= bs!885027 (and b!4547048 d!1406707)))

(assert (=> bs!885027 (not (= lambda!177498 lambda!177338))))

(declare-fun bs!885028 () Bool)

(assert (= bs!885028 (and b!4547048 b!4547049)))

(assert (=> bs!885028 (= lambda!177498 lambda!177497)))

(assert (=> bs!885025 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720341) (= lambda!177498 lambda!177408))))

(declare-fun bs!885029 () Bool)

(assert (= bs!885029 (and b!4547048 b!4546821)))

(assert (=> bs!885029 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720466) (= lambda!177498 lambda!177456))))

(assert (=> bs!885020 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177498 lambda!177493))))

(declare-fun bs!885030 () Bool)

(assert (= bs!885030 (and b!4547048 d!1406955)))

(assert (=> bs!885030 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720457) (= lambda!177498 lambda!177457))))

(assert (=> bs!885029 (= (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177498 lambda!177455))))

(assert (=> b!4547048 true))

(declare-fun lambda!177499 () Int)

(declare-fun lt!1720708 () ListMap!3711)

(assert (=> bs!885020 (= (= lt!1720708 lt!1720622) (= lambda!177499 lambda!177494))))

(assert (=> b!4547048 (= (= lt!1720708 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (= lambda!177499 lambda!177498))))

(assert (=> bs!885021 (= (= lt!1720708 lt!1720332) (= lambda!177499 lambda!177409))))

(assert (=> bs!885022 (= (= lt!1720708 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177499 lambda!177492))))

(assert (=> bs!885023 (= (= lt!1720708 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177499 lambda!177406))))

(assert (=> bs!885024 (= (= lt!1720708 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177499 lambda!177454))))

(assert (=> bs!885025 (= (= lt!1720708 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177499 lambda!177407))))

(assert (=> bs!885026 (= (= lt!1720708 lt!1720613) (= lambda!177499 lambda!177495))))

(assert (=> bs!885027 (not (= lambda!177499 lambda!177338))))

(assert (=> bs!885028 (= (= lt!1720708 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (= lambda!177499 lambda!177497))))

(assert (=> bs!885025 (= (= lt!1720708 lt!1720341) (= lambda!177499 lambda!177408))))

(assert (=> bs!885029 (= (= lt!1720708 lt!1720466) (= lambda!177499 lambda!177456))))

(assert (=> bs!885020 (= (= lt!1720708 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177499 lambda!177493))))

(assert (=> bs!885030 (= (= lt!1720708 lt!1720457) (= lambda!177499 lambda!177457))))

(assert (=> bs!885029 (= (= lt!1720708 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177499 lambda!177455))))

(assert (=> b!4547048 true))

(declare-fun bs!885031 () Bool)

(declare-fun d!1407029 () Bool)

(assert (= bs!885031 (and d!1407029 b!4546940)))

(declare-fun lt!1720699 () ListMap!3711)

(declare-fun lambda!177500 () Int)

(assert (=> bs!885031 (= (= lt!1720699 lt!1720622) (= lambda!177500 lambda!177494))))

(declare-fun bs!885032 () Bool)

(assert (= bs!885032 (and d!1407029 b!4547048)))

(assert (=> bs!885032 (= (= lt!1720699 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (= lambda!177500 lambda!177498))))

(declare-fun bs!885033 () Bool)

(assert (= bs!885033 (and d!1407029 d!1406789)))

(assert (=> bs!885033 (= (= lt!1720699 lt!1720332) (= lambda!177500 lambda!177409))))

(declare-fun bs!885034 () Bool)

(assert (= bs!885034 (and d!1407029 b!4546941)))

(assert (=> bs!885034 (= (= lt!1720699 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177500 lambda!177492))))

(declare-fun bs!885035 () Bool)

(assert (= bs!885035 (and d!1407029 b!4546535)))

(assert (=> bs!885035 (= (= lt!1720699 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177500 lambda!177406))))

(declare-fun bs!885036 () Bool)

(assert (= bs!885036 (and d!1407029 b!4546822)))

(assert (=> bs!885036 (= (= lt!1720699 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177500 lambda!177454))))

(declare-fun bs!885037 () Bool)

(assert (= bs!885037 (and d!1407029 b!4546534)))

(assert (=> bs!885037 (= (= lt!1720699 (extractMap!1277 (t!357898 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))) (= lambda!177500 lambda!177407))))

(declare-fun bs!885038 () Bool)

(assert (= bs!885038 (and d!1407029 d!1406989)))

(assert (=> bs!885038 (= (= lt!1720699 lt!1720613) (= lambda!177500 lambda!177495))))

(assert (=> bs!885032 (= (= lt!1720699 lt!1720708) (= lambda!177500 lambda!177499))))

(declare-fun bs!885039 () Bool)

(assert (= bs!885039 (and d!1407029 d!1406707)))

(assert (=> bs!885039 (not (= lambda!177500 lambda!177338))))

(declare-fun bs!885040 () Bool)

(assert (= bs!885040 (and d!1407029 b!4547049)))

(assert (=> bs!885040 (= (= lt!1720699 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (= lambda!177500 lambda!177497))))

(assert (=> bs!885037 (= (= lt!1720699 lt!1720341) (= lambda!177500 lambda!177408))))

(declare-fun bs!885041 () Bool)

(assert (= bs!885041 (and d!1407029 b!4546821)))

(assert (=> bs!885041 (= (= lt!1720699 lt!1720466) (= lambda!177500 lambda!177456))))

(assert (=> bs!885031 (= (= lt!1720699 (extractMap!1277 (t!357898 lt!1720035))) (= lambda!177500 lambda!177493))))

(declare-fun bs!885042 () Bool)

(assert (= bs!885042 (and d!1407029 d!1406955)))

(assert (=> bs!885042 (= (= lt!1720699 lt!1720457) (= lambda!177500 lambda!177457))))

(assert (=> bs!885041 (= (= lt!1720699 (extractMap!1277 (t!357898 (toList!4449 lm!1477)))) (= lambda!177500 lambda!177455))))

(assert (=> d!1407029 true))

(declare-fun b!4547045 () Bool)

(declare-fun e!2833716 () Bool)

(assert (=> b!4547045 (= e!2833716 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177499))))

(declare-fun bm!317078 () Bool)

(declare-fun call!317085 () Unit!99525)

(assert (=> bm!317078 (= call!317085 (lemmaContainsAllItsOwnKeys!375 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))))))

(declare-fun b!4547046 () Bool)

(declare-fun e!2833715 () Bool)

(assert (=> b!4547046 (= e!2833715 (invariantList!1055 (toList!4450 lt!1720699)))))

(assert (=> d!1407029 e!2833715))

(declare-fun res!1895972 () Bool)

(assert (=> d!1407029 (=> (not res!1895972) (not e!2833715))))

(assert (=> d!1407029 (= res!1895972 (forall!10384 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))) lambda!177500))))

(declare-fun e!2833717 () ListMap!3711)

(assert (=> d!1407029 (= lt!1720699 e!2833717)))

(declare-fun c!776769 () Bool)

(assert (=> d!1407029 (= c!776769 (is-Nil!50807 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))))))

(assert (=> d!1407029 (noDuplicateKeys!1221 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))

(assert (=> d!1407029 (= (addToMapMapFromBucket!741 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))) (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lt!1720699)))

(declare-fun bm!317079 () Bool)

(declare-fun call!317083 () Bool)

(declare-fun lt!1720710 () ListMap!3711)

(assert (=> bm!317079 (= call!317083 (forall!10384 (ite c!776769 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (toList!4450 lt!1720710)) (ite c!776769 lambda!177497 lambda!177499)))))

(declare-fun call!317084 () Bool)

(declare-fun bm!317080 () Bool)

(assert (=> bm!317080 (= call!317084 (forall!10384 (ite c!776769 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))) (ite c!776769 lambda!177497 lambda!177499)))))

(declare-fun b!4547047 () Bool)

(declare-fun res!1895973 () Bool)

(assert (=> b!4547047 (=> (not res!1895973) (not e!2833715))))

(assert (=> b!4547047 (= res!1895973 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177500))))

(assert (=> b!4547048 (= e!2833717 lt!1720708)))

(assert (=> b!4547048 (= lt!1720710 (+!1633 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))))

(assert (=> b!4547048 (= lt!1720708 (addToMapMapFromBucket!741 (t!357897 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))) (+!1633 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))))))))

(declare-fun lt!1720709 () Unit!99525)

(assert (=> b!4547048 (= lt!1720709 call!317085)))

(assert (=> b!4547048 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177498)))

(declare-fun lt!1720698 () Unit!99525)

(assert (=> b!4547048 (= lt!1720698 lt!1720709)))

(assert (=> b!4547048 (forall!10384 (toList!4450 lt!1720710) lambda!177499)))

(declare-fun lt!1720691 () Unit!99525)

(declare-fun Unit!99641 () Unit!99525)

(assert (=> b!4547048 (= lt!1720691 Unit!99641)))

(assert (=> b!4547048 (forall!10384 (t!357897 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177499)))

(declare-fun lt!1720690 () Unit!99525)

(declare-fun Unit!99642 () Unit!99525)

(assert (=> b!4547048 (= lt!1720690 Unit!99642)))

(declare-fun lt!1720694 () Unit!99525)

(declare-fun Unit!99643 () Unit!99525)

(assert (=> b!4547048 (= lt!1720694 Unit!99643)))

(declare-fun lt!1720696 () Unit!99525)

(assert (=> b!4547048 (= lt!1720696 (forallContained!2648 (toList!4450 lt!1720710) lambda!177499 (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))))

(assert (=> b!4547048 (contains!13631 lt!1720710 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))))

(declare-fun lt!1720692 () Unit!99525)

(declare-fun Unit!99644 () Unit!99525)

(assert (=> b!4547048 (= lt!1720692 Unit!99644)))

(assert (=> b!4547048 (contains!13631 lt!1720708 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))))))

(declare-fun lt!1720695 () Unit!99525)

(declare-fun Unit!99645 () Unit!99525)

(assert (=> b!4547048 (= lt!1720695 Unit!99645)))

(assert (=> b!4547048 (forall!10384 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))) lambda!177499)))

(declare-fun lt!1720701 () Unit!99525)

(declare-fun Unit!99646 () Unit!99525)

(assert (=> b!4547048 (= lt!1720701 Unit!99646)))

(assert (=> b!4547048 call!317083))

(declare-fun lt!1720705 () Unit!99525)

(declare-fun Unit!99647 () Unit!99525)

(assert (=> b!4547048 (= lt!1720705 Unit!99647)))

(declare-fun lt!1720700 () Unit!99525)

(declare-fun Unit!99648 () Unit!99525)

(assert (=> b!4547048 (= lt!1720700 Unit!99648)))

(declare-fun lt!1720702 () Unit!99525)

(assert (=> b!4547048 (= lt!1720702 (addForallContainsKeyThenBeforeAdding!375 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720708 (_1!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808))))) (_2!28953 (h!56700 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))))))))

(assert (=> b!4547048 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177499)))

(declare-fun lt!1720707 () Unit!99525)

(assert (=> b!4547048 (= lt!1720707 lt!1720702)))

(assert (=> b!4547048 (forall!10384 (toList!4450 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) lambda!177499)))

(declare-fun lt!1720703 () Unit!99525)

(declare-fun Unit!99649 () Unit!99525)

(assert (=> b!4547048 (= lt!1720703 Unit!99649)))

(declare-fun res!1895971 () Bool)

(assert (=> b!4547048 (= res!1895971 call!317084)))

(assert (=> b!4547048 (=> (not res!1895971) (not e!2833716))))

(assert (=> b!4547048 e!2833716))

(declare-fun lt!1720697 () Unit!99525)

(declare-fun Unit!99650 () Unit!99525)

(assert (=> b!4547048 (= lt!1720697 Unit!99650)))

(assert (=> b!4547049 (= e!2833717 (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))))))

(declare-fun lt!1720704 () Unit!99525)

(assert (=> b!4547049 (= lt!1720704 call!317085)))

(assert (=> b!4547049 call!317083))

(declare-fun lt!1720706 () Unit!99525)

(assert (=> b!4547049 (= lt!1720706 lt!1720704)))

(assert (=> b!4547049 call!317084))

(declare-fun lt!1720693 () Unit!99525)

(declare-fun Unit!99651 () Unit!99525)

(assert (=> b!4547049 (= lt!1720693 Unit!99651)))

(assert (= (and d!1407029 c!776769) b!4547049))

(assert (= (and d!1407029 (not c!776769)) b!4547048))

(assert (= (and b!4547048 res!1895971) b!4547045))

(assert (= (or b!4547049 b!4547048) bm!317080))

(assert (= (or b!4547049 b!4547048) bm!317079))

(assert (= (or b!4547049 b!4547048) bm!317078))

(assert (= (and d!1407029 res!1895972) b!4547047))

(assert (= (and b!4547047 res!1895973) b!4547046))

(declare-fun m!5319423 () Bool)

(assert (=> bm!317080 m!5319423))

(declare-fun m!5319425 () Bool)

(assert (=> b!4547045 m!5319425))

(declare-fun m!5319427 () Bool)

(assert (=> b!4547048 m!5319427))

(declare-fun m!5319429 () Bool)

(assert (=> b!4547048 m!5319429))

(assert (=> b!4547048 m!5318413))

(declare-fun m!5319431 () Bool)

(assert (=> b!4547048 m!5319431))

(declare-fun m!5319433 () Bool)

(assert (=> b!4547048 m!5319433))

(declare-fun m!5319435 () Bool)

(assert (=> b!4547048 m!5319435))

(declare-fun m!5319437 () Bool)

(assert (=> b!4547048 m!5319437))

(declare-fun m!5319439 () Bool)

(assert (=> b!4547048 m!5319439))

(declare-fun m!5319441 () Bool)

(assert (=> b!4547048 m!5319441))

(declare-fun m!5319443 () Bool)

(assert (=> b!4547048 m!5319443))

(assert (=> b!4547048 m!5319425))

(declare-fun m!5319445 () Bool)

(assert (=> b!4547048 m!5319445))

(assert (=> b!4547048 m!5318413))

(assert (=> b!4547048 m!5319433))

(assert (=> b!4547048 m!5319425))

(declare-fun m!5319447 () Bool)

(assert (=> b!4547047 m!5319447))

(declare-fun m!5319449 () Bool)

(assert (=> d!1407029 m!5319449))

(declare-fun m!5319451 () Bool)

(assert (=> d!1407029 m!5319451))

(declare-fun m!5319453 () Bool)

(assert (=> bm!317079 m!5319453))

(declare-fun m!5319455 () Bool)

(assert (=> b!4547046 m!5319455))

(assert (=> bm!317078 m!5318413))

(declare-fun m!5319457 () Bool)

(assert (=> bm!317078 m!5319457))

(assert (=> b!4546390 d!1407029))

(declare-fun bs!885043 () Bool)

(declare-fun d!1407045 () Bool)

(assert (= bs!885043 (and d!1407045 d!1406947)))

(declare-fun lambda!177501 () Int)

(assert (=> bs!885043 (= lambda!177501 lambda!177453)))

(declare-fun bs!885044 () Bool)

(assert (= bs!885044 (and d!1407045 d!1406679)))

(assert (=> bs!885044 (= lambda!177501 lambda!177329)))

(declare-fun bs!885045 () Bool)

(assert (= bs!885045 (and d!1407045 d!1406991)))

(assert (=> bs!885045 (= lambda!177501 lambda!177496)))

(declare-fun bs!885046 () Bool)

(assert (= bs!885046 (and d!1407045 d!1406709)))

(assert (=> bs!885046 (not (= lambda!177501 lambda!177341))))

(declare-fun bs!885047 () Bool)

(assert (= bs!885047 (and d!1407045 d!1406957)))

(assert (=> bs!885047 (= lambda!177501 lambda!177458)))

(declare-fun bs!885048 () Bool)

(assert (= bs!885048 (and d!1407045 start!451626)))

(assert (=> bs!885048 (= lambda!177501 lambda!177318)))

(declare-fun bs!885049 () Bool)

(assert (= bs!885049 (and d!1407045 d!1406757)))

(assert (=> bs!885049 (= lambda!177501 lambda!177362)))

(declare-fun bs!885050 () Bool)

(assert (= bs!885050 (and d!1407045 d!1406825)))

(assert (=> bs!885050 (= lambda!177501 lambda!177410)))

(declare-fun bs!885051 () Bool)

(assert (= bs!885051 (and d!1407045 d!1406877)))

(assert (=> bs!885051 (= lambda!177501 lambda!177442)))

(declare-fun bs!885052 () Bool)

(assert (= bs!885052 (and d!1407045 d!1406693)))

(assert (=> bs!885052 (= lambda!177501 lambda!177335)))

(declare-fun bs!885053 () Bool)

(assert (= bs!885053 (and d!1407045 d!1406713)))

(assert (=> bs!885053 (= lambda!177501 lambda!177342)))

(declare-fun bs!885054 () Bool)

(assert (= bs!885054 (and d!1407045 d!1406723)))

(assert (=> bs!885054 (= lambda!177501 lambda!177348)))

(declare-fun bs!885055 () Bool)

(assert (= bs!885055 (and d!1407045 d!1406747)))

(assert (=> bs!885055 (= lambda!177501 lambda!177358)))

(declare-fun bs!885056 () Bool)

(assert (= bs!885056 (and d!1407045 d!1406751)))

(assert (=> bs!885056 (= lambda!177501 lambda!177359)))

(declare-fun lt!1720719 () ListMap!3711)

(assert (=> d!1407045 (invariantList!1055 (toList!4450 lt!1720719))))

(declare-fun e!2833729 () ListMap!3711)

(assert (=> d!1407045 (= lt!1720719 e!2833729)))

(declare-fun c!776775 () Bool)

(assert (=> d!1407045 (= c!776775 (is-Cons!50808 (t!357898 (Cons!50808 lt!1720038 Nil!50808))))))

(assert (=> d!1407045 (forall!10382 (t!357898 (Cons!50808 lt!1720038 Nil!50808)) lambda!177501)))

(assert (=> d!1407045 (= (extractMap!1277 (t!357898 (Cons!50808 lt!1720038 Nil!50808))) lt!1720719)))

(declare-fun b!4547069 () Bool)

(assert (=> b!4547069 (= e!2833729 (addToMapMapFromBucket!741 (_2!28954 (h!56701 (t!357898 (Cons!50808 lt!1720038 Nil!50808)))) (extractMap!1277 (t!357898 (t!357898 (Cons!50808 lt!1720038 Nil!50808))))))))

(declare-fun b!4547070 () Bool)

(assert (=> b!4547070 (= e!2833729 (ListMap!3712 Nil!50807))))

(assert (= (and d!1407045 c!776775) b!4547069))

(assert (= (and d!1407045 (not c!776775)) b!4547070))

(declare-fun m!5319459 () Bool)

(assert (=> d!1407045 m!5319459))

(declare-fun m!5319461 () Bool)

(assert (=> d!1407045 m!5319461))

(declare-fun m!5319463 () Bool)

(assert (=> b!4547069 m!5319463))

(assert (=> b!4547069 m!5319463))

(declare-fun m!5319465 () Bool)

(assert (=> b!4547069 m!5319465))

(assert (=> b!4546390 d!1407045))

(declare-fun d!1407047 () Bool)

(declare-fun isEmpty!28767 (Option!11237) Bool)

(assert (=> d!1407047 (= (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032)) (not (isEmpty!28767 (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032))))))

(declare-fun bs!885057 () Bool)

(assert (= bs!885057 d!1407047))

(assert (=> bs!885057 m!5318455))

(declare-fun m!5319467 () Bool)

(assert (=> bs!885057 m!5319467))

(assert (=> b!4546414 d!1407047))

(declare-fun b!4547074 () Bool)

(declare-fun e!2833731 () Option!11237)

(assert (=> b!4547074 (= e!2833731 None!11236)))

(declare-fun b!4547071 () Bool)

(declare-fun e!2833730 () Option!11237)

(assert (=> b!4547071 (= e!2833730 (Some!11236 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(declare-fun b!4547072 () Bool)

(assert (=> b!4547072 (= e!2833730 e!2833731)))

(declare-fun c!776777 () Bool)

(assert (=> b!4547072 (= c!776777 (and (is-Cons!50808 (toList!4449 lm!1477)) (not (= (_1!28954 (h!56701 (toList!4449 lm!1477))) lt!1720032))))))

(declare-fun b!4547073 () Bool)

(assert (=> b!4547073 (= e!2833731 (getValueByKey!1169 (t!357898 (toList!4449 lm!1477)) lt!1720032))))

(declare-fun d!1407049 () Bool)

(declare-fun c!776776 () Bool)

(assert (=> d!1407049 (= c!776776 (and (is-Cons!50808 (toList!4449 lm!1477)) (= (_1!28954 (h!56701 (toList!4449 lm!1477))) lt!1720032)))))

(assert (=> d!1407049 (= (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032) e!2833730)))

(assert (= (and d!1407049 c!776776) b!4547071))

(assert (= (and d!1407049 (not c!776776)) b!4547072))

(assert (= (and b!4547072 c!776777) b!4547073))

(assert (= (and b!4547072 (not c!776777)) b!4547074))

(declare-fun m!5319469 () Bool)

(assert (=> b!4547073 m!5319469))

(assert (=> b!4546414 d!1407049))

(declare-fun d!1407051 () Bool)

(declare-fun res!1895983 () Bool)

(declare-fun e!2833732 () Bool)

(assert (=> d!1407051 (=> res!1895983 e!2833732)))

(assert (=> d!1407051 (= res!1895983 (and (is-Cons!50807 (t!357897 newBucket!178)) (= (_1!28953 (h!56700 (t!357897 newBucket!178))) (_1!28953 (h!56700 newBucket!178)))))))

(assert (=> d!1407051 (= (containsKey!1920 (t!357897 newBucket!178) (_1!28953 (h!56700 newBucket!178))) e!2833732)))

(declare-fun b!4547075 () Bool)

(declare-fun e!2833733 () Bool)

(assert (=> b!4547075 (= e!2833732 e!2833733)))

(declare-fun res!1895984 () Bool)

(assert (=> b!4547075 (=> (not res!1895984) (not e!2833733))))

(assert (=> b!4547075 (= res!1895984 (is-Cons!50807 (t!357897 newBucket!178)))))

(declare-fun b!4547076 () Bool)

(assert (=> b!4547076 (= e!2833733 (containsKey!1920 (t!357897 (t!357897 newBucket!178)) (_1!28953 (h!56700 newBucket!178))))))

(assert (= (and d!1407051 (not res!1895983)) b!4547075))

(assert (= (and b!4547075 res!1895984) b!4547076))

(declare-fun m!5319471 () Bool)

(assert (=> b!4547076 m!5319471))

(assert (=> b!4546298 d!1407051))

(declare-fun d!1407053 () Bool)

(assert (=> d!1407053 (isDefined!8512 (getValueByKey!1169 (toList!4449 lm!1477) lt!1720032))))

(declare-fun lt!1720724 () Unit!99525)

(declare-fun choose!30041 (List!50932 (_ BitVec 64)) Unit!99525)

(assert (=> d!1407053 (= lt!1720724 (choose!30041 (toList!4449 lm!1477) lt!1720032))))

(declare-fun e!2833744 () Bool)

(assert (=> d!1407053 e!2833744))

(declare-fun res!1895987 () Bool)

(assert (=> d!1407053 (=> (not res!1895987) (not e!2833744))))

(assert (=> d!1407053 (= res!1895987 (isStrictlySorted!469 (toList!4449 lm!1477)))))

(assert (=> d!1407053 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1076 (toList!4449 lm!1477) lt!1720032) lt!1720724)))

(declare-fun b!4547095 () Bool)

(assert (=> b!4547095 (= e!2833744 (containsKey!1925 (toList!4449 lm!1477) lt!1720032))))

(assert (= (and d!1407053 res!1895987) b!4547095))

(assert (=> d!1407053 m!5318455))

(assert (=> d!1407053 m!5318455))

(assert (=> d!1407053 m!5318457))

(declare-fun m!5319473 () Bool)

(assert (=> d!1407053 m!5319473))

(assert (=> d!1407053 m!5318253))

(assert (=> b!4547095 m!5318451))

(assert (=> b!4546412 d!1407053))

(assert (=> b!4546412 d!1407047))

(assert (=> b!4546412 d!1407049))

(declare-fun d!1407055 () Bool)

(declare-fun lt!1720725 () Bool)

(assert (=> d!1407055 (= lt!1720725 (set.member key!3287 (content!8470 e!2833224)))))

(declare-fun e!2833748 () Bool)

(assert (=> d!1407055 (= lt!1720725 e!2833748)))

(declare-fun res!1895992 () Bool)

(assert (=> d!1407055 (=> (not res!1895992) (not e!2833748))))

(assert (=> d!1407055 (= res!1895992 (is-Cons!50811 e!2833224))))

(assert (=> d!1407055 (= (contains!13637 e!2833224 key!3287) lt!1720725)))

(declare-fun b!4547100 () Bool)

(declare-fun e!2833747 () Bool)

(assert (=> b!4547100 (= e!2833748 e!2833747)))

(declare-fun res!1895993 () Bool)

(assert (=> b!4547100 (=> res!1895993 e!2833747)))

(assert (=> b!4547100 (= res!1895993 (= (h!56706 e!2833224) key!3287))))

(declare-fun b!4547101 () Bool)

(assert (=> b!4547101 (= e!2833747 (contains!13637 (t!357901 e!2833224) key!3287))))

(assert (= (and d!1407055 res!1895992) b!4547100))

(assert (= (and b!4547100 (not res!1895993)) b!4547101))

(declare-fun m!5319475 () Bool)

(assert (=> d!1407055 m!5319475))

(declare-fun m!5319477 () Bool)

(assert (=> d!1407055 m!5319477))

(declare-fun m!5319479 () Bool)

(assert (=> b!4547101 m!5319479))

(assert (=> bm!316997 d!1407055))

(assert (=> bs!884761 d!1406875))

(declare-fun d!1407057 () Bool)

(declare-fun res!1895998 () Bool)

(declare-fun e!2833753 () Bool)

(assert (=> d!1407057 (=> res!1895998 e!2833753)))

(assert (=> d!1407057 (= res!1895998 (and (is-Cons!50808 (toList!4449 lm!1477)) (= (_1!28954 (h!56701 (toList!4449 lm!1477))) lt!1720032)))))

(assert (=> d!1407057 (= (containsKey!1925 (toList!4449 lm!1477) lt!1720032) e!2833753)))

(declare-fun b!4547106 () Bool)

(declare-fun e!2833754 () Bool)

(assert (=> b!4547106 (= e!2833753 e!2833754)))

(declare-fun res!1895999 () Bool)

(assert (=> b!4547106 (=> (not res!1895999) (not e!2833754))))

(assert (=> b!4547106 (= res!1895999 (and (or (not (is-Cons!50808 (toList!4449 lm!1477))) (bvsle (_1!28954 (h!56701 (toList!4449 lm!1477))) lt!1720032)) (is-Cons!50808 (toList!4449 lm!1477)) (bvslt (_1!28954 (h!56701 (toList!4449 lm!1477))) lt!1720032)))))

(declare-fun b!4547107 () Bool)

(assert (=> b!4547107 (= e!2833754 (containsKey!1925 (t!357898 (toList!4449 lm!1477)) lt!1720032))))

(assert (= (and d!1407057 (not res!1895998)) b!4547106))

(assert (= (and b!4547106 res!1895999) b!4547107))

(declare-fun m!5319481 () Bool)

(assert (=> b!4547107 m!5319481))

(assert (=> d!1406761 d!1407057))

(declare-fun d!1407059 () Bool)

(assert (=> d!1407059 (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(declare-fun lt!1720727 () Unit!99525)

(assert (=> d!1407059 (= lt!1720727 (choose!30038 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> d!1407059 (invariantList!1055 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))

(assert (=> d!1407059 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1073 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287) lt!1720727)))

(declare-fun bs!885058 () Bool)

(assert (= bs!885058 d!1407059))

(assert (=> bs!885058 m!5318181))

(assert (=> bs!885058 m!5318181))

(assert (=> bs!885058 m!5318183))

(declare-fun m!5319483 () Bool)

(assert (=> bs!885058 m!5319483))

(assert (=> bs!885058 m!5318973))

(assert (=> b!4546251 d!1407059))

(declare-fun d!1407061 () Bool)

(assert (=> d!1407061 (= (isDefined!8509 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287)) (not (isEmpty!28765 (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))))

(declare-fun bs!885059 () Bool)

(assert (= bs!885059 d!1407061))

(assert (=> bs!885059 m!5318181))

(declare-fun m!5319485 () Bool)

(assert (=> bs!885059 m!5319485))

(assert (=> b!4546251 d!1407061))

(declare-fun b!4547118 () Bool)

(declare-fun e!2833760 () Option!11238)

(assert (=> b!4547118 (= e!2833760 (Some!11237 (_2!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))))))))

(declare-fun b!4547120 () Bool)

(declare-fun e!2833761 () Option!11238)

(assert (=> b!4547120 (= e!2833761 (getValueByKey!1170 (t!357897 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) key!3287))))

(declare-fun d!1407063 () Bool)

(declare-fun c!776790 () Bool)

(assert (=> d!1407063 (= c!776790 (and (is-Cons!50807 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) key!3287)))))

(assert (=> d!1407063 (= (getValueByKey!1170 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287) e!2833760)))

(declare-fun b!4547121 () Bool)

(assert (=> b!4547121 (= e!2833761 None!11237)))

(declare-fun b!4547119 () Bool)

(assert (=> b!4547119 (= e!2833760 e!2833761)))

(declare-fun c!776791 () Bool)

(assert (=> b!4547119 (= c!776791 (and (is-Cons!50807 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) (not (= (_1!28953 (h!56700 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))) key!3287))))))

(assert (= (and d!1407063 c!776790) b!4547118))

(assert (= (and d!1407063 (not c!776790)) b!4547119))

(assert (= (and b!4547119 c!776791) b!4547120))

(assert (= (and b!4547119 (not c!776791)) b!4547121))

(declare-fun m!5319489 () Bool)

(assert (=> b!4547120 m!5319489))

(assert (=> b!4546251 d!1407063))

(declare-fun d!1407065 () Bool)

(assert (=> d!1407065 (contains!13637 (getKeysList!503 (toList!4450 (extractMap!1277 (toList!4449 lm!1477)))) key!3287)))

(declare-fun lt!1720728 () Unit!99525)

(assert (=> d!1407065 (= lt!1720728 (choose!30039 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287))))

(assert (=> d!1407065 (invariantList!1055 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))))))

(assert (=> d!1407065 (= (lemmaInListThenGetKeysListContains!499 (toList!4450 (extractMap!1277 (toList!4449 lm!1477))) key!3287) lt!1720728)))

(declare-fun bs!885060 () Bool)

(assert (= bs!885060 d!1407065))

(assert (=> bs!885060 m!5318193))

(assert (=> bs!885060 m!5318193))

(declare-fun m!5319499 () Bool)

(assert (=> bs!885060 m!5319499))

(declare-fun m!5319501 () Bool)

(assert (=> bs!885060 m!5319501))

(assert (=> bs!885060 m!5318973))

(assert (=> b!4546251 d!1407065))

(declare-fun d!1407069 () Bool)

(assert (=> d!1407069 (= (tail!7823 (toList!4449 lm!1477)) (t!357898 (toList!4449 lm!1477)))))

(assert (=> d!1406665 d!1407069))

(assert (=> b!4546249 d!1407061))

(assert (=> b!4546249 d!1407063))

(declare-fun e!2833762 () Bool)

(declare-fun b!4547122 () Bool)

(declare-fun tp!1338914 () Bool)

(assert (=> b!4547122 (= e!2833762 (and tp_is_empty!28161 tp_is_empty!28163 tp!1338914))))

(assert (=> b!4546447 (= tp!1338903 e!2833762)))

(assert (= (and b!4546447 (is-Cons!50807 (_2!28954 (h!56701 (toList!4449 lm!1477))))) b!4547122))

(declare-fun b!4547123 () Bool)

(declare-fun e!2833763 () Bool)

(declare-fun tp!1338915 () Bool)

(declare-fun tp!1338916 () Bool)

(assert (=> b!4547123 (= e!2833763 (and tp!1338915 tp!1338916))))

(assert (=> b!4546447 (= tp!1338904 e!2833763)))

(assert (= (and b!4546447 (is-Cons!50808 (t!357898 (toList!4449 lm!1477)))) b!4547123))

(declare-fun tp!1338917 () Bool)

(declare-fun e!2833764 () Bool)

(declare-fun b!4547124 () Bool)

(assert (=> b!4547124 (= e!2833764 (and tp_is_empty!28161 tp_is_empty!28163 tp!1338917))))

(assert (=> b!4546442 (= tp!1338898 e!2833764)))

(assert (= (and b!4546442 (is-Cons!50807 (t!357897 (t!357897 newBucket!178)))) b!4547124))

(declare-fun b_lambda!158969 () Bool)

(assert (= b_lambda!158963 (or d!1406679 b_lambda!158969)))

(declare-fun bs!885061 () Bool)

(declare-fun d!1407071 () Bool)

(assert (= bs!885061 (and d!1407071 d!1406679)))

(assert (=> bs!885061 (= (dynLambda!21240 lambda!177329 (h!56701 (toList!4449 lm!1477))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(assert (=> bs!885061 m!5318395))

(assert (=> b!4547035 d!1407071))

(declare-fun b_lambda!158971 () Bool)

(assert (= b_lambda!158959 (or d!1406709 b_lambda!158971)))

(declare-fun bs!885062 () Bool)

(declare-fun d!1407073 () Bool)

(assert (= bs!885062 (and d!1407073 d!1406709)))

(assert (=> bs!885062 (= (dynLambda!21240 lambda!177341 (h!56701 (toList!4449 lm!1477))) (allKeysSameHash!1075 (_2!28954 (h!56701 (toList!4449 lm!1477))) (_1!28954 (h!56701 (toList!4449 lm!1477))) hashF!1107))))

(declare-fun m!5319503 () Bool)

(assert (=> bs!885062 m!5319503))

(assert (=> b!4546935 d!1407073))

(declare-fun b_lambda!158973 () Bool)

(assert (= b_lambda!158945 (or d!1406751 b_lambda!158973)))

(declare-fun bs!885063 () Bool)

(declare-fun d!1407075 () Bool)

(assert (= bs!885063 (and d!1407075 d!1406751)))

(assert (=> bs!885063 (= (dynLambda!21240 lambda!177359 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (Cons!50808 (tuple2!51321 hash!344 (_2!28954 (h!56701 (toList!4449 lm!1477)))) Nil!50808)))))))

(assert (=> bs!885063 m!5318661))

(assert (=> b!4546746 d!1407075))

(declare-fun b_lambda!158975 () Bool)

(assert (= b_lambda!158951 (or d!1406723 b_lambda!158975)))

(declare-fun bs!885064 () Bool)

(declare-fun d!1407077 () Bool)

(assert (= bs!885064 (and d!1407077 d!1406723)))

(assert (=> bs!885064 (= (dynLambda!21240 lambda!177348 (h!56701 (toList!4449 (ListLongMap!3082 lt!1720035)))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 (ListLongMap!3082 lt!1720035))))))))

(declare-fun m!5319505 () Bool)

(assert (=> bs!885064 m!5319505))

(assert (=> b!4546814 d!1407077))

(declare-fun b_lambda!158977 () Bool)

(assert (= b_lambda!158939 (or d!1406747 b_lambda!158977)))

(declare-fun bs!885065 () Bool)

(declare-fun d!1407079 () Bool)

(assert (= bs!885065 (and d!1407079 d!1406747)))

(assert (=> bs!885065 (= (dynLambda!21240 lambda!177358 (h!56701 (Cons!50808 lt!1720038 Nil!50808))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (Cons!50808 lt!1720038 Nil!50808)))))))

(assert (=> bs!885065 m!5319451))

(assert (=> b!4546595 d!1407079))

(declare-fun b_lambda!158979 () Bool)

(assert (= b_lambda!158965 (or d!1406713 b_lambda!158979)))

(declare-fun bs!885066 () Bool)

(declare-fun d!1407081 () Bool)

(assert (= bs!885066 (and d!1407081 d!1406713)))

(assert (=> bs!885066 (= (dynLambda!21240 lambda!177342 (h!56701 lt!1720035)) (noDuplicateKeys!1221 (_2!28954 (h!56701 lt!1720035))))))

(assert (=> bs!885066 m!5319273))

(assert (=> b!4547043 d!1407081))

(declare-fun b_lambda!158981 () Bool)

(assert (= b_lambda!158943 (or d!1406757 b_lambda!158981)))

(declare-fun bs!885067 () Bool)

(declare-fun d!1407083 () Bool)

(assert (= bs!885067 (and d!1407083 d!1406757)))

(assert (=> bs!885067 (= (dynLambda!21240 lambda!177362 (h!56701 (toList!4449 lm!1477))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(assert (=> bs!885067 m!5318395))

(assert (=> b!4546718 d!1407083))

(declare-fun b_lambda!158983 () Bool)

(assert (= b_lambda!158947 (or d!1406693 b_lambda!158983)))

(declare-fun bs!885068 () Bool)

(declare-fun d!1407085 () Bool)

(assert (= bs!885068 (and d!1407085 d!1406693)))

(assert (=> bs!885068 (= (dynLambda!21240 lambda!177335 (h!56701 (toList!4449 lm!1477))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (toList!4449 lm!1477)))))))

(assert (=> bs!885068 m!5318395))

(assert (=> b!4546791 d!1407085))

(declare-fun b_lambda!158985 () Bool)

(assert (= b_lambda!158949 (or d!1406707 b_lambda!158985)))

(declare-fun bs!885069 () Bool)

(declare-fun d!1407087 () Bool)

(assert (= bs!885069 (and d!1407087 d!1406707)))

(assert (=> bs!885069 (= (dynLambda!21241 lambda!177338 (h!56700 newBucket!178)) (= (hash!2963 hashF!1107 (_1!28953 (h!56700 newBucket!178))) hash!344))))

(declare-fun m!5319511 () Bool)

(assert (=> bs!885069 m!5319511))

(assert (=> b!4546797 d!1407087))

(declare-fun b_lambda!158987 () Bool)

(assert (= b_lambda!158957 (or start!451626 b_lambda!158987)))

(assert (=> d!1406985 d!1406777))

(declare-fun b_lambda!158989 () Bool)

(assert (= b_lambda!158961 (or start!451626 b_lambda!158989)))

(declare-fun bs!885070 () Bool)

(declare-fun d!1407091 () Bool)

(assert (= bs!885070 (and d!1407091 start!451626)))

(assert (=> bs!885070 (= (dynLambda!21240 lambda!177318 (h!56701 (t!357898 (toList!4449 lm!1477)))) (noDuplicateKeys!1221 (_2!28954 (h!56701 (t!357898 (toList!4449 lm!1477))))))))

(declare-fun m!5319513 () Bool)

(assert (=> bs!885070 m!5319513))

(assert (=> b!4547033 d!1407091))

(push 1)

(assert (not d!1407055))

(assert (not b!4546738))

(assert (not b!4546737))

(assert (not b!4546597))

(assert (not d!1406847))

(assert (not b!4546942))

(assert (not b!4546833))

(assert (not d!1406957))

(assert (not bm!317023))

(assert (not b!4546798))

(assert (not b!4547045))

(assert (not b!4546759))

(assert (not bm!317028))

(assert (not bm!317025))

(assert (not b!4546532))

(assert (not d!1406947))

(assert (not b!4546936))

(assert (not d!1407029))

(assert (not b!4546752))

(assert (not d!1407061))

(assert (not d!1406907))

(assert (not b!4546821))

(assert (not bm!317009))

(assert (not b!4546729))

(assert (not b!4546922))

(assert (not b!4546534))

(assert (not b!4546820))

(assert (not d!1406939))

(assert (not b!4546818))

(assert (not b!4547027))

(assert (not b!4546531))

(assert (not b!4546835))

(assert (not d!1407059))

(assert (not b!4546809))

(assert (not b!4546801))

(assert (not d!1406863))

(assert (not b_lambda!158987))

(assert (not b_lambda!158975))

(assert (not bm!317020))

(assert (not b!4547032))

(assert (not b!4546732))

(assert (not b!4546819))

(assert (not b!4546703))

(assert (not b!4546705))

(assert (not bs!885070))

(assert (not d!1407003))

(assert (not bm!317026))

(assert (not b!4547042))

(assert (not d!1406955))

(assert (not b!4546699))

(assert (not b!4546586))

(assert (not b!4546610))

(assert (not b!4546812))

(assert (not b!4546805))

(assert (not bm!317058))

(assert (not bm!317056))

(assert (not d!1406993))

(assert (not b!4547069))

(assert (not bs!885069))

(assert (not b!4547101))

(assert (not b_lambda!158927))

(assert (not b!4546933))

(assert (not d!1406899))

(assert (not bm!317078))

(assert (not b!4546533))

(assert (not b!4546997))

(assert (not bs!885064))

(assert (not b!4546823))

(assert (not b!4546719))

(assert (not d!1406997))

(assert (not b!4546587))

(assert (not d!1406851))

(assert (not b!4546676))

(assert (not b!4546728))

(assert (not b!4546588))

(assert (not bs!885063))

(assert (not b!4546792))

(assert (not b!4546921))

(assert (not b!4546914))

(assert (not b!4546939))

(assert (not d!1406887))

(assert (not b_lambda!158983))

(assert (not d!1407025))

(assert (not d!1406915))

(assert (not b!4546784))

(assert (not b!4546837))

(assert (not d!1407009))

(assert (not b!4546760))

(assert (not b!4546673))

(assert (not d!1406925))

(assert (not b!4546700))

(assert (not b!4546773))

(assert tp_is_empty!28163)

(assert (not b!4546750))

(assert (not b!4546920))

(assert (not b!4547122))

(assert (not b!4546757))

(assert (not bm!317010))

(assert (not d!1406879))

(assert (not b!4546733))

(assert (not b_lambda!158929))

(assert (not b!4546839))

(assert (not d!1407019))

(assert (not b!4546704))

(assert (not b!4546715))

(assert (not b!4546552))

(assert (not b!4546734))

(assert (not b!4546916))

(assert (not d!1407005))

(assert (not b!4546774))

(assert (not b!4547073))

(assert (not bs!885066))

(assert (not b_lambda!158979))

(assert (not b!4546806))

(assert (not b!4546721))

(assert (not d!1406873))

(assert (not b!4546832))

(assert (not b!4546927))

(assert (not b_lambda!158989))

(assert (not bm!317079))

(assert (not b!4546957))

(assert (not b!4547048))

(assert (not d!1406857))

(assert (not bm!317052))

(assert (not b!4546923))

(assert (not b!4546919))

(assert (not b!4546698))

(assert (not b!4547124))

(assert (not d!1406943))

(assert (not b_lambda!158977))

(assert (not b!4546730))

(assert (not b!4546929))

(assert (not b!4546807))

(assert (not b!4546834))

(assert (not b_lambda!158969))

(assert (not d!1406829))

(assert (not b!4546815))

(assert (not b!4547107))

(assert (not b!4546668))

(assert (not b!4546926))

(assert (not d!1406891))

(assert (not b!4547024))

(assert (not b!4547123))

(assert (not b!4547030))

(assert (not b!4546934))

(assert (not d!1406963))

(assert (not b!4546596))

(assert (not d!1407045))

(assert (not bm!317057))

(assert (not b!4547076))

(assert (not d!1406825))

(assert (not bm!317027))

(assert (not b!4547047))

(assert (not b!4546599))

(assert (not b!4546616))

(assert (not d!1406855))

(assert (not b_lambda!158981))

(assert (not d!1406965))

(assert (not b!4547036))

(assert (not bs!885067))

(assert (not b!4546679))

(assert (not d!1407001))

(assert (not b!4546762))

(assert (not d!1406991))

(assert (not b!4546772))

(assert (not b!4546677))

(assert (not b!4546747))

(assert (not d!1406921))

(assert (not d!1406923))

(assert (not d!1406919))

(assert (not d!1407053))

(assert (not b!4546717))

(assert (not b!4546767))

(assert (not bm!317059))

(assert (not d!1406945))

(assert (not b!4547044))

(assert (not b!4546714))

(assert (not b!4546994))

(assert (not d!1406871))

(assert (not d!1406909))

(assert (not b!4546808))

(assert (not b_lambda!158971))

(assert (not b!4546735))

(assert (not d!1407015))

(assert (not bm!317054))

(assert (not b!4547120))

(assert (not b!4546691))

(assert (not d!1406885))

(assert tp_is_empty!28161)

(assert (not bm!317024))

(assert (not d!1406935))

(assert (not b_lambda!158985))

(assert (not b!4546938))

(assert (not b!4546739))

(assert (not b!4547095))

(assert (not b!4546836))

(assert (not b!4546783))

(assert (not b!4546804))

(assert (not b!4547034))

(assert (not bm!317011))

(assert (not b!4546940))

(assert (not d!1407065))

(assert (not b!4546754))

(assert (not bm!317055))

(assert (not b!4546790))

(assert (not d!1406895))

(assert (not b!4546770))

(assert (not b!4546712))

(assert (not b!4546617))

(assert (not b!4546787))

(assert (not d!1406789))

(assert (not b!4546591))

(assert (not b!4546830))

(assert (not b!4547003))

(assert (not b!4546816))

(assert (not b!4546745))

(assert (not b!4546727))

(assert (not b_lambda!158973))

(assert (not b!4546782))

(assert (not b!4547046))

(assert (not b!4546780))

(assert (not bs!885068))

(assert (not b!4546778))

(assert (not bm!317080))

(assert (not d!1406933))

(assert (not bm!317051))

(assert (not d!1406989))

(assert (not d!1406995))

(assert (not b!4546817))

(assert (not d!1406949))

(assert (not bm!317053))

(assert (not bs!885061))

(assert (not b!4546811))

(assert (not d!1407047))

(assert (not d!1406877))

(assert (not bs!885062))

(assert (not b!4546584))

(assert (not b!4546775))

(assert (not d!1406929))

(assert (not b!4546937))

(assert (not bs!885065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

