; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!439834 () Bool)

(assert start!439834)

(declare-fun b!4473118 () Bool)

(declare-fun e!2785513 () Bool)

(declare-fun e!2785505 () Bool)

(assert (=> b!4473118 (= e!2785513 e!2785505)))

(declare-fun res!1856118 () Bool)

(assert (=> b!4473118 (=> res!1856118 e!2785505)))

(declare-datatypes ((K!11733 0))(
  ( (K!11734 (val!17657 Int)) )
))
(declare-datatypes ((V!11979 0))(
  ( (V!11980 (val!17658 Int)) )
))
(declare-datatypes ((tuple2!50582 0))(
  ( (tuple2!50583 (_1!28585 K!11733) (_2!28585 V!11979)) )
))
(declare-datatypes ((List!50444 0))(
  ( (Nil!50320) (Cons!50320 (h!56093 tuple2!50582) (t!357394 List!50444)) )
))
(declare-datatypes ((tuple2!50584 0))(
  ( (tuple2!50585 (_1!28586 (_ BitVec 64)) (_2!28586 List!50444)) )
))
(declare-datatypes ((List!50445 0))(
  ( (Nil!50321) (Cons!50321 (h!56094 tuple2!50584) (t!357395 List!50445)) )
))
(declare-datatypes ((ListLongMap!2713 0))(
  ( (ListLongMap!2714 (toList!4081 List!50445)) )
))
(declare-fun lm!1477 () ListLongMap!2713)

(declare-fun lt!1661099 () ListLongMap!2713)

(declare-fun tail!7526 (List!50445) List!50445)

(assert (=> b!4473118 (= res!1856118 (not (= (t!357395 (toList!4081 lm!1477)) (tail!7526 (toList!4081 lt!1661099)))))))

(declare-fun lt!1661092 () tuple2!50584)

(declare-fun +!1385 (ListLongMap!2713 tuple2!50584) ListLongMap!2713)

(assert (=> b!4473118 (= lt!1661099 (+!1385 lm!1477 lt!1661092))))

(declare-fun lt!1661085 () tuple2!50584)

(declare-fun key!3287 () K!11733)

(declare-datatypes ((ListMap!3343 0))(
  ( (ListMap!3344 (toList!4082 List!50444)) )
))
(declare-fun eq!530 (ListMap!3343 ListMap!3343) Bool)

(declare-fun extractMap!1093 (List!50445) ListMap!3343)

(declare-fun -!299 (ListMap!3343 K!11733) ListMap!3343)

(assert (=> b!4473118 (eq!530 (extractMap!1093 (Cons!50321 lt!1661092 Nil!50321)) (-!299 (extractMap!1093 (Cons!50321 lt!1661085 Nil!50321)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4473118 (= lt!1661085 (tuple2!50585 hash!344 (_2!28586 (h!56094 (toList!4081 lm!1477)))))))

(declare-fun newBucket!178 () List!50444)

(assert (=> b!4473118 (= lt!1661092 (tuple2!50585 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5432 0))(
  ( (HashableExt!5431 (__x!31135 Int)) )
))
(declare-fun hashF!1107 () Hashable!5432)

(declare-datatypes ((Unit!88263 0))(
  ( (Unit!88264) )
))
(declare-fun lt!1661083 () Unit!88263)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!29 ((_ BitVec 64) List!50444 List!50444 K!11733 Hashable!5432) Unit!88263)

(assert (=> b!4473118 (= lt!1661083 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!29 hash!344 (_2!28586 (h!56094 (toList!4081 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1661102 () List!50445)

(declare-fun contains!12888 (ListMap!3343 K!11733) Bool)

(assert (=> b!4473118 (contains!12888 (extractMap!1093 lt!1661102) key!3287)))

(declare-fun lt!1661086 () Unit!88263)

(declare-fun lemmaListContainsThenExtractedMapContains!33 (ListLongMap!2713 K!11733 Hashable!5432) Unit!88263)

(assert (=> b!4473118 (= lt!1661086 (lemmaListContainsThenExtractedMapContains!33 (ListLongMap!2714 lt!1661102) key!3287 hashF!1107))))

(declare-fun b!4473119 () Bool)

(declare-fun e!2785508 () Bool)

(declare-fun tp!1336416 () Bool)

(assert (=> b!4473119 (= e!2785508 tp!1336416)))

(declare-fun b!4473120 () Bool)

(declare-fun res!1856127 () Bool)

(declare-fun e!2785506 () Bool)

(assert (=> b!4473120 (=> res!1856127 e!2785506)))

(declare-fun noDuplicateKeys!1037 (List!50444) Bool)

(assert (=> b!4473120 (= res!1856127 (not (noDuplicateKeys!1037 newBucket!178)))))

(declare-fun b!4473121 () Bool)

(declare-fun res!1856134 () Bool)

(declare-fun e!2785510 () Bool)

(assert (=> b!4473121 (=> res!1856134 e!2785510)))

(declare-fun head!9311 (List!50445) tuple2!50584)

(assert (=> b!4473121 (= res!1856134 (not (= (head!9311 (toList!4081 lm!1477)) lt!1661085)))))

(declare-fun b!4473122 () Bool)

(declare-fun res!1856126 () Bool)

(assert (=> b!4473122 (=> res!1856126 e!2785510)))

(declare-fun lambda!163946 () Int)

(declare-fun forall!10017 (List!50445 Int) Bool)

(assert (=> b!4473122 (= res!1856126 (not (forall!10017 (toList!4081 lm!1477) lambda!163946)))))

(declare-fun res!1856125 () Bool)

(declare-fun e!2785503 () Bool)

(assert (=> start!439834 (=> (not res!1856125) (not e!2785503))))

(assert (=> start!439834 (= res!1856125 (forall!10017 (toList!4081 lm!1477) lambda!163946))))

(assert (=> start!439834 e!2785503))

(assert (=> start!439834 true))

(declare-fun inv!65918 (ListLongMap!2713) Bool)

(assert (=> start!439834 (and (inv!65918 lm!1477) e!2785508)))

(declare-fun tp_is_empty!27425 () Bool)

(assert (=> start!439834 tp_is_empty!27425))

(declare-fun e!2785501 () Bool)

(assert (=> start!439834 e!2785501))

(declare-fun b!4473123 () Bool)

(declare-fun res!1856137 () Bool)

(assert (=> b!4473123 (=> res!1856137 e!2785510)))

(declare-fun removePairForKey!664 (List!50444 K!11733) List!50444)

(assert (=> b!4473123 (= res!1856137 (not (= (removePairForKey!664 (_2!28586 (h!56094 (toList!4081 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4473124 () Bool)

(declare-fun e!2785511 () Bool)

(assert (=> b!4473124 (= e!2785505 e!2785511)))

(declare-fun res!1856120 () Bool)

(assert (=> b!4473124 (=> res!1856120 e!2785511)))

(declare-fun lt!1661095 () ListLongMap!2713)

(assert (=> b!4473124 (= res!1856120 (not (= lt!1661099 (+!1385 lt!1661095 lt!1661092))))))

(declare-fun tail!7527 (ListLongMap!2713) ListLongMap!2713)

(assert (=> b!4473124 (= lt!1661095 (tail!7527 lm!1477))))

(declare-fun b!4473125 () Bool)

(assert (=> b!4473125 (= e!2785510 (forall!10017 (toList!4081 lm!1477) lambda!163946))))

(declare-fun b!4473126 () Bool)

(declare-fun e!2785504 () Unit!88263)

(declare-fun Unit!88265 () Unit!88263)

(assert (=> b!4473126 (= e!2785504 Unit!88265)))

(declare-fun lt!1661084 () Unit!88263)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!37 (ListLongMap!2713 K!11733 Hashable!5432) Unit!88263)

(assert (=> b!4473126 (= lt!1661084 (lemmaNotInItsHashBucketThenNotInMap!37 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4473126 false))

(declare-fun b!4473127 () Bool)

(declare-fun e!2785500 () Bool)

(assert (=> b!4473127 (= e!2785511 e!2785500)))

(declare-fun res!1856128 () Bool)

(assert (=> b!4473127 (=> res!1856128 e!2785500)))

(declare-fun lt!1661100 () ListMap!3343)

(assert (=> b!4473127 (= res!1856128 (not (= lt!1661100 (extractMap!1093 (t!357395 (toList!4081 lm!1477))))))))

(assert (=> b!4473127 (= lt!1661100 (extractMap!1093 (toList!4081 lt!1661095)))))

(declare-fun b!4473128 () Bool)

(declare-fun e!2785507 () Unit!88263)

(declare-fun Unit!88266 () Unit!88263)

(assert (=> b!4473128 (= e!2785507 Unit!88266)))

(declare-fun b!4473129 () Bool)

(declare-fun e!2785512 () Bool)

(assert (=> b!4473129 (= e!2785503 e!2785512)))

(declare-fun res!1856121 () Bool)

(assert (=> b!4473129 (=> (not res!1856121) (not e!2785512))))

(declare-fun lt!1661093 () (_ BitVec 64))

(assert (=> b!4473129 (= res!1856121 (= lt!1661093 hash!344))))

(declare-fun hash!2484 (Hashable!5432 K!11733) (_ BitVec 64))

(assert (=> b!4473129 (= lt!1661093 (hash!2484 hashF!1107 key!3287))))

(declare-fun b!4473130 () Bool)

(assert (=> b!4473130 (= e!2785512 (not e!2785506))))

(declare-fun res!1856132 () Bool)

(assert (=> b!4473130 (=> res!1856132 e!2785506)))

(declare-fun lt!1661098 () List!50444)

(assert (=> b!4473130 (= res!1856132 (not (= newBucket!178 (removePairForKey!664 lt!1661098 key!3287))))))

(declare-fun lt!1661097 () tuple2!50584)

(declare-fun lt!1661091 () Unit!88263)

(declare-fun forallContained!2282 (List!50445 Int tuple2!50584) Unit!88263)

(assert (=> b!4473130 (= lt!1661091 (forallContained!2282 (toList!4081 lm!1477) lambda!163946 lt!1661097))))

(declare-fun contains!12889 (List!50445 tuple2!50584) Bool)

(assert (=> b!4473130 (contains!12889 (toList!4081 lm!1477) lt!1661097)))

(assert (=> b!4473130 (= lt!1661097 (tuple2!50585 hash!344 lt!1661098))))

(declare-fun lt!1661094 () Unit!88263)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!549 (List!50445 (_ BitVec 64) List!50444) Unit!88263)

(assert (=> b!4473130 (= lt!1661094 (lemmaGetValueByKeyImpliesContainsTuple!549 (toList!4081 lm!1477) hash!344 lt!1661098))))

(declare-fun apply!11774 (ListLongMap!2713 (_ BitVec 64)) List!50444)

(assert (=> b!4473130 (= lt!1661098 (apply!11774 lm!1477 hash!344))))

(declare-fun contains!12890 (ListLongMap!2713 (_ BitVec 64)) Bool)

(assert (=> b!4473130 (contains!12890 lm!1477 lt!1661093)))

(declare-fun lt!1661101 () Unit!88263)

(declare-fun lemmaInGenMapThenLongMapContainsHash!111 (ListLongMap!2713 K!11733 Hashable!5432) Unit!88263)

(assert (=> b!4473130 (= lt!1661101 (lemmaInGenMapThenLongMapContainsHash!111 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4473131 () Bool)

(declare-fun res!1856122 () Bool)

(assert (=> b!4473131 (=> (not res!1856122) (not e!2785503))))

(assert (=> b!4473131 (= res!1856122 (contains!12888 (extractMap!1093 (toList!4081 lm!1477)) key!3287))))

(declare-fun b!4473132 () Bool)

(declare-fun Unit!88267 () Unit!88263)

(assert (=> b!4473132 (= e!2785504 Unit!88267)))

(declare-fun b!4473133 () Bool)

(declare-fun e!2785509 () Bool)

(assert (=> b!4473133 (= e!2785509 e!2785513)))

(declare-fun res!1856124 () Bool)

(assert (=> b!4473133 (=> res!1856124 e!2785513)))

(declare-fun containsKeyBiggerList!37 (List!50445 K!11733) Bool)

(assert (=> b!4473133 (= res!1856124 (not (containsKeyBiggerList!37 lt!1661102 key!3287)))))

(assert (=> b!4473133 (= lt!1661102 (Cons!50321 (h!56094 (toList!4081 lm!1477)) Nil!50321))))

(declare-fun b!4473134 () Bool)

(declare-fun res!1856136 () Bool)

(assert (=> b!4473134 (=> res!1856136 e!2785506)))

(assert (=> b!4473134 (= res!1856136 (or (is-Nil!50321 (toList!4081 lm!1477)) (not (= (_1!28586 (h!56094 (toList!4081 lm!1477))) hash!344))))))

(declare-fun b!4473135 () Bool)

(declare-fun res!1856135 () Bool)

(assert (=> b!4473135 (=> (not res!1856135) (not e!2785512))))

(declare-fun allKeysSameHash!891 (List!50444 (_ BitVec 64) Hashable!5432) Bool)

(assert (=> b!4473135 (= res!1856135 (allKeysSameHash!891 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4473136 () Bool)

(declare-fun res!1856131 () Bool)

(assert (=> b!4473136 (=> (not res!1856131) (not e!2785503))))

(declare-fun allKeysSameHashInMap!1144 (ListLongMap!2713 Hashable!5432) Bool)

(assert (=> b!4473136 (= res!1856131 (allKeysSameHashInMap!1144 lm!1477 hashF!1107))))

(declare-fun b!4473137 () Bool)

(declare-fun Unit!88268 () Unit!88263)

(assert (=> b!4473137 (= e!2785507 Unit!88268)))

(declare-fun lt!1661090 () Unit!88263)

(assert (=> b!4473137 (= lt!1661090 (lemmaInGenMapThenLongMapContainsHash!111 lt!1661095 key!3287 hashF!1107))))

(declare-fun res!1856129 () Bool)

(assert (=> b!4473137 (= res!1856129 (contains!12890 lt!1661095 lt!1661093))))

(declare-fun e!2785502 () Bool)

(assert (=> b!4473137 (=> (not res!1856129) (not e!2785502))))

(assert (=> b!4473137 e!2785502))

(declare-fun b!4473138 () Bool)

(declare-fun res!1856123 () Bool)

(assert (=> b!4473138 (=> res!1856123 e!2785510)))

(assert (=> b!4473138 (= res!1856123 (not (noDuplicateKeys!1037 (_2!28586 (h!56094 (toList!4081 lm!1477))))))))

(declare-fun b!4473139 () Bool)

(assert (=> b!4473139 (= e!2785500 e!2785510)))

(declare-fun res!1856133 () Bool)

(assert (=> b!4473139 (=> res!1856133 e!2785510)))

(declare-fun lt!1661089 () Bool)

(assert (=> b!4473139 (= res!1856133 lt!1661089)))

(declare-fun lt!1661096 () Unit!88263)

(assert (=> b!4473139 (= lt!1661096 e!2785507)))

(declare-fun c!761693 () Bool)

(assert (=> b!4473139 (= c!761693 lt!1661089)))

(assert (=> b!4473139 (= lt!1661089 (contains!12888 lt!1661100 key!3287))))

(declare-fun tp_is_empty!27427 () Bool)

(declare-fun tp!1336417 () Bool)

(declare-fun b!4473140 () Bool)

(assert (=> b!4473140 (= e!2785501 (and tp_is_empty!27425 tp_is_empty!27427 tp!1336417))))

(declare-fun b!4473141 () Bool)

(assert (=> b!4473141 (= e!2785506 e!2785509)))

(declare-fun res!1856119 () Bool)

(assert (=> b!4473141 (=> res!1856119 e!2785509)))

(declare-fun lt!1661087 () Bool)

(assert (=> b!4473141 (= res!1856119 lt!1661087)))

(declare-fun lt!1661088 () Unit!88263)

(assert (=> b!4473141 (= lt!1661088 e!2785504)))

(declare-fun c!761694 () Bool)

(assert (=> b!4473141 (= c!761694 lt!1661087)))

(declare-fun containsKey!1501 (List!50444 K!11733) Bool)

(assert (=> b!4473141 (= lt!1661087 (not (containsKey!1501 (_2!28586 (h!56094 (toList!4081 lm!1477))) key!3287)))))

(declare-fun b!4473142 () Bool)

(declare-fun res!1856130 () Bool)

(assert (=> b!4473142 (=> res!1856130 e!2785510)))

(assert (=> b!4473142 (= res!1856130 (not (allKeysSameHash!891 (_2!28586 (h!56094 (toList!4081 lm!1477))) hash!344 hashF!1107)))))

(declare-fun b!4473143 () Bool)

(assert (=> b!4473143 (= e!2785502 false)))

(assert (= (and start!439834 res!1856125) b!4473136))

(assert (= (and b!4473136 res!1856131) b!4473131))

(assert (= (and b!4473131 res!1856122) b!4473129))

(assert (= (and b!4473129 res!1856121) b!4473135))

(assert (= (and b!4473135 res!1856135) b!4473130))

(assert (= (and b!4473130 (not res!1856132)) b!4473120))

(assert (= (and b!4473120 (not res!1856127)) b!4473134))

(assert (= (and b!4473134 (not res!1856136)) b!4473141))

(assert (= (and b!4473141 c!761694) b!4473126))

(assert (= (and b!4473141 (not c!761694)) b!4473132))

(assert (= (and b!4473141 (not res!1856119)) b!4473133))

(assert (= (and b!4473133 (not res!1856124)) b!4473118))

(assert (= (and b!4473118 (not res!1856118)) b!4473124))

(assert (= (and b!4473124 (not res!1856120)) b!4473127))

(assert (= (and b!4473127 (not res!1856128)) b!4473139))

(assert (= (and b!4473139 c!761693) b!4473137))

(assert (= (and b!4473139 (not c!761693)) b!4473128))

(assert (= (and b!4473137 res!1856129) b!4473143))

(assert (= (and b!4473139 (not res!1856133)) b!4473122))

(assert (= (and b!4473122 (not res!1856126)) b!4473138))

(assert (= (and b!4473138 (not res!1856123)) b!4473123))

(assert (= (and b!4473123 (not res!1856137)) b!4473142))

(assert (= (and b!4473142 (not res!1856130)) b!4473121))

(assert (= (and b!4473121 (not res!1856134)) b!4473125))

(assert (= start!439834 b!4473119))

(assert (= (and start!439834 (is-Cons!50320 newBucket!178)) b!4473140))

(declare-fun m!5182277 () Bool)

(assert (=> b!4473121 m!5182277))

(declare-fun m!5182279 () Bool)

(assert (=> b!4473118 m!5182279))

(declare-fun m!5182281 () Bool)

(assert (=> b!4473118 m!5182281))

(declare-fun m!5182283 () Bool)

(assert (=> b!4473118 m!5182283))

(declare-fun m!5182285 () Bool)

(assert (=> b!4473118 m!5182285))

(assert (=> b!4473118 m!5182281))

(declare-fun m!5182287 () Bool)

(assert (=> b!4473118 m!5182287))

(declare-fun m!5182289 () Bool)

(assert (=> b!4473118 m!5182289))

(assert (=> b!4473118 m!5182287))

(declare-fun m!5182291 () Bool)

(assert (=> b!4473118 m!5182291))

(declare-fun m!5182293 () Bool)

(assert (=> b!4473118 m!5182293))

(declare-fun m!5182295 () Bool)

(assert (=> b!4473118 m!5182295))

(assert (=> b!4473118 m!5182285))

(declare-fun m!5182297 () Bool)

(assert (=> b!4473118 m!5182297))

(assert (=> b!4473118 m!5182279))

(declare-fun m!5182299 () Bool)

(assert (=> b!4473122 m!5182299))

(declare-fun m!5182301 () Bool)

(assert (=> b!4473142 m!5182301))

(declare-fun m!5182303 () Bool)

(assert (=> b!4473127 m!5182303))

(declare-fun m!5182305 () Bool)

(assert (=> b!4473127 m!5182305))

(declare-fun m!5182307 () Bool)

(assert (=> b!4473120 m!5182307))

(declare-fun m!5182309 () Bool)

(assert (=> b!4473133 m!5182309))

(declare-fun m!5182311 () Bool)

(assert (=> b!4473141 m!5182311))

(declare-fun m!5182313 () Bool)

(assert (=> b!4473130 m!5182313))

(declare-fun m!5182315 () Bool)

(assert (=> b!4473130 m!5182315))

(declare-fun m!5182317 () Bool)

(assert (=> b!4473130 m!5182317))

(declare-fun m!5182319 () Bool)

(assert (=> b!4473130 m!5182319))

(declare-fun m!5182321 () Bool)

(assert (=> b!4473130 m!5182321))

(declare-fun m!5182323 () Bool)

(assert (=> b!4473130 m!5182323))

(declare-fun m!5182325 () Bool)

(assert (=> b!4473130 m!5182325))

(declare-fun m!5182327 () Bool)

(assert (=> b!4473129 m!5182327))

(declare-fun m!5182329 () Bool)

(assert (=> b!4473137 m!5182329))

(declare-fun m!5182331 () Bool)

(assert (=> b!4473137 m!5182331))

(declare-fun m!5182333 () Bool)

(assert (=> b!4473135 m!5182333))

(declare-fun m!5182335 () Bool)

(assert (=> b!4473123 m!5182335))

(declare-fun m!5182337 () Bool)

(assert (=> b!4473131 m!5182337))

(assert (=> b!4473131 m!5182337))

(declare-fun m!5182339 () Bool)

(assert (=> b!4473131 m!5182339))

(assert (=> start!439834 m!5182299))

(declare-fun m!5182341 () Bool)

(assert (=> start!439834 m!5182341))

(assert (=> b!4473125 m!5182299))

(declare-fun m!5182343 () Bool)

(assert (=> b!4473126 m!5182343))

(declare-fun m!5182345 () Bool)

(assert (=> b!4473124 m!5182345))

(declare-fun m!5182347 () Bool)

(assert (=> b!4473124 m!5182347))

(declare-fun m!5182349 () Bool)

(assert (=> b!4473139 m!5182349))

(declare-fun m!5182351 () Bool)

(assert (=> b!4473136 m!5182351))

(declare-fun m!5182353 () Bool)

(assert (=> b!4473138 m!5182353))

(push 1)

(assert (not b!4473137))

(assert (not b!4473138))

(assert (not b!4473125))

(assert (not b!4473124))

(assert (not b!4473131))

(assert (not b!4473142))

(assert (not b!4473133))

(assert (not b!4473123))

(assert (not b!4473130))

(assert (not b!4473140))

(assert (not b!4473136))

(assert (not b!4473120))

(assert tp_is_empty!27425)

(assert (not b!4473127))

(assert (not b!4473141))

(assert (not b!4473119))

(assert tp_is_empty!27427)

(assert (not b!4473129))

(assert (not b!4473121))

(assert (not start!439834))

(assert (not b!4473135))

(assert (not b!4473122))

(assert (not b!4473118))

(assert (not b!4473126))

(assert (not b!4473139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

